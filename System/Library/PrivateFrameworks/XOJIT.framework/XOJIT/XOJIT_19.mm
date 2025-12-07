BOOL llvm::object::IRObjectFile::is64Bit(llvm::object::IRObjectFile *this)
{
  v1 = **(this + 6);
  v4 = *(v1 + 208);
  v2 = v1 + 208;
  v3 = v4;
  v5 = *(v2 + 23);
  if (v5 >= 0)
  {
    v3 = v2;
  }

  v6 = *(v2 + 8);
  if (v5 >= 0)
  {
    v6 = v5;
  }

  v10 = 261;
  v9[0] = v3;
  v9[1] = v6;
  llvm::Triple::Triple(&__p, v9);
  v7 = v13;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  return getArchPointerBitWidth(v7) == 64;
}

uint64_t llvm::SpecificBumpPtrAllocator<std::pair<std::string,unsigned int>>::DestroyAll(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(a1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(a1 + 24) - 8))
      {
        v8 = *a1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      for (i = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32; i <= v8; i += 32)
      {
        if (*(i - 9) < 0)
        {
          operator delete(*(i - 32));
        }
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = *(a1 + 64);
    v12 = &v11[2 * v10];
    do
    {
      v13 = *v11 + v11[1];
      for (j = ((*v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 32; j <= v13; j += 32)
      {
        if (*(j - 9) < 0)
        {
          operator delete(*(j - 32));
        }
      }

      v11 += 2;
    }

    while (v11 != v12);
  }

  return llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(a1);
}

void std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::Module>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::Expected<llvm::BitcodeFileContents>::~Expected(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *a1;
  if (v2)
  {
    *a1 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (v3)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

char *_GLOBAL__sub_I_IRSymtab_cpp()
{
  v0 = llvm::cl::Option::Option(&qword_2815AA0A0, 0, 0);
  byte_2815AA120 = 0;
  qword_2815AA128 = &unk_2883EAB68;
  unk_2815AA130 = 0;
  qword_2815AA0A0 = &unk_2883EAB00;
  qword_2815AA138 = &unk_2883EA848;
  qword_2815AA140 = &unk_2883EAB88;
  qword_2815AA158 = &qword_2815AA140;
  llvm::cl::Option::setArgStr(v0, "disable-bitcode-version-upgrade", 0x1FuLL);
  word_2815AA0AA = word_2815AA0AA & 0xFF9F | 0x20;
  qword_2815AA0C0 = "Disable automatic bitcode upgrade for version mismatch";
  unk_2815AA0C8 = 54;
  llvm::cl::Option::addArgument(&qword_2815AA0A0, v1);
  __cxa_atexit(llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::~opt, &qword_2815AA0A0, &dword_274E5C000);
  result = getenv("LLVM_OVERRIDE_PRODUCER");
  if (result)
  {
    v3 = result;
  }

  _MergedGlobals_36 = v3;
  return result;
}

uint64_t llvm::object::MachOObjectFile::MachOObjectFile(uint64_t a1, __int128 *a2, int a3, int a4, void *a5, int a6, unsigned int a7)
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v7 = a2[1];
  if (a4)
  {
    v9 = 19;
  }

  else
  {
    v9 = 17;
  }

  if (a4)
  {
    v10 = 20;
  }

  else
  {
    v10 = 18;
  }

  if (a3)
  {
    v10 = v9;
  }

  *(a1 + 8) = v10;
  *(a1 + 16) = v8;
  *(a1 + 32) = v7;
  *a1 = &unk_2883EEF40;
  *(a1 + 80) = a1 + 96;
  *(a1 + 104) = a1 + 120;
  *(a1 + 88) = 0x100000000;
  *(a1 + 112) = 0x100000000;
  *(a1 + 128) = a1 + 144;
  *(a1 + 208) = a1 + 224;
  *(a1 + 136) = 0x400000000;
  *(a1 + 216) = 0x100000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x100000000;
  *(a1 + 352) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  if ((v10 - 19) > 1)
  {
    if (v12 > 0x1B)
    {
      if (v12 >= 28)
      {
        v28 = *v11;
        v27 = *(v11 + 4);
        v18 = *(v11 + 8);
        v19 = *(v11 + 24);
        if (v10 == 18)
        {
          v28 = bswap32(v28);
          v27 = bswap32(v27);
          v18 = vrev32q_s8(v18);
          v19 = bswap32(v19);
        }

        v29 = v28 | (v27 << 32);
        v21 = 28;
        v22 = 72;
        *(a1 + 48) = v29;
        v23 = 68;
        v24 = 64;
        v25 = 60;
        v26 = 56;
        goto LABEL_27;
      }

      v14 = "Structure read out-of-range";
    }

    else
    {
      v14 = "the mach header extends past the end of the file";
    }

    v32[0] = v14;
    LOWORD(v33) = 259;
    malformedError(&__s, v32);
  }

  if (v12 <= 0x1F)
  {
    v13 = "the mach header extends past the end of the file";
    goto LABEL_16;
  }

  if (v12 < 32)
  {
    v13 = "Structure read out-of-range";
LABEL_16:
    v32[0] = v13;
    LOWORD(v33) = 259;
    malformedError(&__s, v32);
  }

  v16 = *v11;
  v15 = *(v11 + 4);
  v17 = *(v11 + 8);
  v18 = *(v11 + 12);
  v19 = *(v11 + 28);
  if (!a3 && a4)
  {
    v16 = bswap32(v16);
    v15 = bswap32(v15);
    v17 = bswap32(v17);
    v18 = vrev32q_s8(v18);
    v19 = bswap32(v19);
  }

  v20 = v16 | (v15 << 32);
  v21 = 32;
  v22 = 76;
  *(a1 + 48) = v20;
  *(a1 + 56) = v17;
  v23 = 72;
  v24 = 68;
  v25 = 64;
  v26 = 60;
LABEL_27:
  *(a1 + v26) = v18.i32[0];
  *(a1 + v25) = v18.i32[1];
  *(a1 + v24) = v18.i32[2];
  *(a1 + v23) = v18.i32[3];
  *(a1 + v22) = v19;
  if (!*a5)
  {
    if (v21 + *(a1 + 68) > *(a1 + 24))
    {
      v32[0] = "load commands extend past the end of the file";
      LOWORD(v33) = 259;
      malformedError(&__s, v32);
    }

    if (a6)
    {
      if (*(a1 + 52) != a6)
      {
        *&__s = "universal header architecture: ";
        *&v35 = a7;
        LOWORD(v36) = 2051;
        v32[0] = &__s;
        v32[2] = "'s cputype does not match object file's mach header";
        LOWORD(v33) = 770;
        malformedError(v31, v32);
      }
    }

    v30[0] = v30;
    v30[1] = v30;
    v30[2] = 0;
    operator new();
  }

  return a1;
}

void malformedError(const llvm::Twine *a1, uint64_t *a2)
{
  v2 = *(a2 + 32);
  if (v2 == 1)
  {
    v5 = "truncated or malformed object (";
    v8[0] = "truncated or malformed object (";
    v9 = 259;
    v3 = 3;
  }

  else
  {
    if (!*(a2 + 32))
    {
      v3 = 0;
      v9 = 256;
      v4 = 1;
      goto LABEL_9;
    }

    v6 = *a2;
    v7 = a2[1];
    v3 = 2;
    if (*(a2 + 33) != 1)
    {
      LOBYTE(v2) = 2;
      v6 = a2;
    }

    v8[0] = "truncated or malformed object (";
    v8[2] = v6;
    v8[3] = v7;
    LOBYTE(v9) = 3;
    HIBYTE(v9) = v2;
    v5 = v8;
  }

  v10 = v5;
  v11 = ")";
  v4 = 3;
LABEL_9:
  v12 = v3;
  v13 = v4;
  operator new();
}

const llvm::Twine *checkLinkeditDataCommand(llvm::Twine *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, const char *a6, uint64_t *a7, const char *a8)
{
  if (*(a3 + 12) <= 0xFu)
  {
    v58[0] = "load command ";
    v59 = a4;
    v60 = 2051;
    *&v61 = v58;
    *&v62 = " ";
    LOWORD(v63) = 770;
    if (*a6)
    {
      v10 = &v61;
      *&v64 = &v61;
      *&v65 = a6;
      LOWORD(v66) = 770;
      v11 = 2;
      v12 = &v64;
    }

    else
    {
      v64 = v61;
      v65 = v62;
      v66 = v63;
      v11 = v63;
      v10 = *(&v64 + 1);
      v12 = &v64;
      if (BYTE1(v66) == 1)
      {
        v12 = v64;
      }

      else
      {
        v11 = 2;
      }
    }

    v67[0] = v12;
    v67[1] = v10;
    v68 = " cmdsize too small";
    LOBYTE(v69) = v11;
    HIBYTE(v69) = 3;
    goto LABEL_19;
  }

  if (*a5)
  {
    v14 = *a6;
    if (*a6)
    {
      *&v65 = a6;
      v15 = 3;
      v16 = 2;
    }

    else
    {
      v15 = 1;
      v16 = 3;
    }

    *&v64 = "more than one ";
    LOBYTE(v66) = 3;
    BYTE1(v66) = v15;
    v28 = v14 == 0;
    v22 = &v64;
    if (v28)
    {
      v22 = "more than one ";
    }

    v67[0] = v22;
    v68 = " command";
    LOBYTE(v69) = v16;
    HIBYTE(v69) = 3;
    goto LABEL_19;
  }

  v18 = *a3;
  v20 = *(a2 + 16);
  v19 = *(a2 + 24);
  v21 = *a3 < v20 || *a3 + 16 > v20 + v19;
  if (v21)
  {
    v67[0] = "Structure read out-of-range";
    v69 = 259;
    malformedError(&v64, v67);
  }

  v23 = v18[1];
  v24 = v18[2];
  v25 = v18[3];
  v26 = *(a2 + 8);
  v21 = v26 > 0x14;
  v27 = (1 << v26) & 0x155800;
  v28 = v21 || v27 == 0;
  v29 = bswap32(v23);
  v30 = bswap32(v24);
  v31 = bswap32(v25);
  if (v28)
  {
    v32 = v25;
  }

  else
  {
    v32 = v31;
  }

  if (v28)
  {
    v33 = v24;
  }

  else
  {
    v33 = v30;
  }

  if (v28)
  {
    v34 = v23;
  }

  else
  {
    v34 = v29;
  }

  if (v34 != 16)
  {
    v38 = *a6;
    v39 = " command ";
    if (*a6)
    {
      *&v62 = " command ";
      v40 = 3;
      v41 = 2;
      v39 = a6;
    }

    else
    {
      v40 = 1;
      v41 = 3;
    }

    *&v61 = v39;
    LOBYTE(v63) = 3;
    BYTE1(v63) = v40;
    v28 = v38 == 0;
    v43 = &v61;
    if (v28)
    {
      v43 = v39;
    }

    *&v64 = v43;
    *&v65 = a4;
    LOBYTE(v66) = v41;
    BYTE1(v66) = 8;
    v44 = " has incorrect cmdsize";
    goto LABEL_56;
  }

  if (v19 < v33)
  {
    v35 = *a6;
    if (*a6)
    {
      v59 = a6;
      v36 = 3;
      v37 = 2;
    }

    else
    {
      v36 = 1;
      v37 = 3;
    }

    v58[0] = "dataoff field of ";
    LOBYTE(v60) = 3;
    HIBYTE(v60) = v36;
    v28 = v35 == 0;
    v46 = v58;
    if (v28)
    {
      v46 = "dataoff field of ";
    }

    *&v61 = v46;
    *&v62 = " command ";
    LOBYTE(v63) = v37;
    BYTE1(v63) = 3;
    *&v64 = &v61;
    *&v65 = a4;
    LOWORD(v66) = 2050;
    v44 = " extends past the end of the file";
LABEL_56:
    v67[0] = &v64;
    v68 = v44;
    v69 = 770;
    goto LABEL_19;
  }

  if (v33 + v32 > v19)
  {
    v56 = "dataoff field plus datasize field of ";
    v57 = 259;
    v42 = 1;
    v55 = 1;
    if (*a6)
    {
      v53 = a6;
      v42 = 3;
    }

    v54 = v42;
    llvm::operator+(&v56, &v53, v58);
    v51 = " command ";
    v52 = 259;
    llvm::operator+(v58, &v51, &v61);
    v50 = 264;
    LODWORD(v49[0]) = a4;
    llvm::operator+(&v61, v49, &v64);
    v47 = " extends past the end of the file";
    v48 = 259;
    llvm::operator+(&v64, &v47, v67);
LABEL_19:
    malformedError(a1, v67);
  }

  result = checkOverlappingElement(a1, a7, v33, v32, a8);
  if (!*a1)
  {
    *a5 = *a3;
  }

  return result;
}

const llvm::Twine *checkDyldInfoCommand(llvm::Twine *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, const char *a6, uint64_t *a7)
{
  if (*(a3 + 12) <= 0x2Fu)
  {
    v72[0] = "load command ";
    v73 = a4;
    v74 = 2051;
    *&v75 = v72;
    *&v76 = " ";
    LOWORD(v77) = 770;
    if (*a6)
    {
      v9 = &v75;
      *&v78 = &v75;
      *&v79 = a6;
      LOWORD(v80) = 770;
      v10 = 2;
      v11 = &v78;
    }

    else
    {
      v78 = v75;
      v79 = v76;
      v80 = v77;
      v10 = v77;
      v9 = *(&v78 + 1);
      v11 = &v78;
      if (BYTE1(v80) == 1)
      {
        v11 = v78;
      }

      else
      {
        v10 = 2;
      }
    }

    v81[0] = v11;
    v81[1] = v9;
    v82 = " cmdsize too small";
    LOBYTE(v83) = v10;
    HIBYTE(v83) = 3;
    goto LABEL_7;
  }

  if (*a5)
  {
    v81[0] = "more than one LC_DYLD_INFO and or LC_DYLD_INFO_ONLY command";
    v83 = 259;
    goto LABEL_7;
  }

  v14 = *a3;
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  if (*a3 < v15 || *a3 + 48 > v15 + v16)
  {
    v81[0] = "Structure read out-of-range";
    v83 = 259;
    malformedError(&v78, v81);
  }

  v60 = a1;
  v20 = v14[1];
  v19 = v14[2];
  v21 = v14[3];
  v22 = v14[4];
  v23 = v14[5];
  v24 = v14[6];
  v26 = v14[7];
  v25 = v14[8];
  v28 = v14[9];
  v27 = v14[10];
  v29 = v14[11];
  v30 = *(a2 + 8);
  if (v30 <= 0x14)
  {
    v31 = ((1 << v30) & 0x155800) == 0;
    v32 = bswap32(v20);
    v33 = bswap32(v19);
    v34 = bswap32(v21);
    v35 = bswap32(v22);
    v36 = bswap32(v23);
    v37 = bswap32(v24);
    v38 = bswap32(v26);
    v39 = bswap32(v25);
    v40 = bswap32(v28);
    v41 = bswap32(v27);
    v42 = bswap32(v29);
    if (!v31)
    {
      v29 = v42;
      v27 = v41;
      v28 = v40;
      v25 = v39;
      v26 = v38;
      v24 = v37;
      v23 = v36;
      v22 = v35;
      v21 = v34;
      v19 = v33;
      v20 = v32;
    }
  }

  if (v20 != 48)
  {
    v46 = *a6;
    v47 = " command ";
    if (*a6)
    {
      *&v76 = " command ";
      v48 = 3;
      v49 = 2;
      v47 = a6;
    }

    else
    {
      v48 = 1;
      v49 = 3;
    }

    a1 = v60;
    *&v75 = v47;
    LOBYTE(v77) = 3;
    BYTE1(v77) = v48;
    v31 = v46 == 0;
    v52 = &v75;
    if (v31)
    {
      v52 = v47;
    }

    *&v78 = v52;
    *&v79 = a4;
    LOBYTE(v80) = v49;
    BYTE1(v80) = 8;
    v53 = " has incorrect cmdsize";
    goto LABEL_44;
  }

  if (v16 < v19)
  {
    v43 = *a6;
    if (*a6)
    {
      v73 = a6;
      v44 = 3;
      v45 = 2;
    }

    else
    {
      v44 = 1;
      v45 = 3;
    }

    a1 = v60;
    v72[0] = "rebase_off field of ";
    LOBYTE(v74) = 3;
    HIBYTE(v74) = v44;
    v31 = v43 == 0;
    v55 = v72;
    if (v31)
    {
      v55 = "rebase_off field of ";
    }

    *&v75 = v55;
    *&v76 = " command ";
    LOBYTE(v77) = v45;
    BYTE1(v77) = 3;
    *&v78 = &v75;
    *&v79 = a4;
    LOWORD(v80) = 2050;
    v53 = " extends past the end of the file";
LABEL_44:
    v81[0] = &v78;
    v82 = v53;
    v83 = 770;
    goto LABEL_7;
  }

  if (v19 + v21 > v16)
  {
    v50 = "rebase_off field plus rebase_size field of ";
LABEL_30:
    v70 = v50;
    v71 = 259;
    v51 = 1;
    v69 = 1;
    if (*a6)
    {
      v67 = a6;
      v51 = 3;
    }

    v68 = v51;
    llvm::operator+(&v70, &v67, v72);
    v65 = " command ";
    v66 = 259;
    llvm::operator+(v72, &v65, &v75);
    v64 = 264;
    LODWORD(v63[0]) = a4;
    llvm::operator+(&v75, v63, &v78);
    v61 = " extends past the end of the file";
    v62 = 259;
    llvm::operator+(&v78, &v61, v81);
    a1 = v60;
LABEL_7:
    malformedError(a1, v81);
  }

  v58 = v28;
  v59 = v25;
  v56 = v29;
  v57 = v27;
  result = checkOverlappingElement(v60, a7, v19, v21, "dyld rebase info");
  if (!*v60)
  {
    if (v16 < v22)
    {
      v50 = "bind_off field of ";
      goto LABEL_30;
    }

    if (v22 + v23 > v16)
    {
      v50 = "bind_off field plus bind_size field of ";
      goto LABEL_30;
    }

    result = checkOverlappingElement(v60, a7, v22, v23, "dyld bind info");
    if (!*v60)
    {
      if (v16 < v24)
      {
        v50 = "weak_bind_off field of ";
        goto LABEL_30;
      }

      if (v24 + v26 > v16)
      {
        v50 = "weak_bind_off field plus weak_bind_size field of ";
        goto LABEL_30;
      }

      result = checkOverlappingElement(v60, a7, v24, v26, "dyld weak bind info");
      if (!*v60)
      {
        if (v16 < v59)
        {
          v50 = "lazy_bind_off field of ";
          goto LABEL_30;
        }

        if (v59 + v58 > v16)
        {
          v50 = "lazy_bind_off field plus lazy_bind_size field of ";
          goto LABEL_30;
        }

        result = checkOverlappingElement(v60, a7, v59, v58, "dyld lazy bind info");
        if (!*v60)
        {
          if (v16 < v57)
          {
            v50 = "export_off field of ";
            goto LABEL_30;
          }

          if (v57 + v56 > v16)
          {
            v50 = "export_off field plus export_size field of ";
            goto LABEL_30;
          }

          result = checkOverlappingElement(v60, a7, v57, v56, "dyld export info");
          if (!*v60)
          {
            *a5 = *a3;
          }
        }
      }
    }
  }

  return result;
}

const llvm::Twine *checkDylibCommand(const llvm::Twine *result, uint64_t a2, unint64_t *a3, unsigned int a4, _BYTE *a5)
{
  if (*(a3 + 3) <= 0x17u)
  {
    v29[0] = "load command ";
    v30 = a4;
    v31 = 2051;
    *&v32 = v29;
    *&v33 = " ";
    LOWORD(v34) = 770;
    if (*a5)
    {
      v5 = &v32;
      *&v35 = &v32;
      *&v36 = a5;
      LOWORD(v37) = 770;
      v6 = 2;
      v7 = &v35;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      v6 = v34;
      v5 = *(&v35 + 1);
      v7 = &v35;
      if (BYTE1(v37) == 1)
      {
        v7 = v35;
      }

      else
      {
        v6 = 2;
      }
    }

    v38 = v7;
    v39 = v5;
    v8 = " cmdsize too small";
    goto LABEL_5;
  }

  v9 = *a3;
  v10 = *(a2 + 16);
  v11 = *a3 < v10 || *a3 + 24 > v10 + *(a2 + 24);
  if (v11)
  {
    v38 = "Structure read out-of-range";
    v41 = 259;
    malformedError(&v35, &v38);
  }

  v12 = *(v9 + 4);
  v13 = *(v9 + 8);
  v14 = *(a2 + 8);
  v11 = v14 > 0x14;
  v15 = (1 << v14) & 0x155800;
  v16 = v11 || v15 == 0;
  v17 = bswap32(v12);
  v18 = bswap32(v13);
  if (!v16)
  {
    v13 = v18;
    v12 = v17;
  }

  if (v13 <= 0x17)
  {
    v29[0] = "load command ";
    v30 = a4;
    v31 = 2051;
    *&v32 = v29;
    *&v33 = " ";
    LOWORD(v34) = 770;
    if (*a5)
    {
      v19 = &v32;
      *&v35 = &v32;
      *&v36 = a5;
      LOWORD(v37) = 770;
      v6 = 2;
      v20 = &v35;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      v6 = v34;
      v19 = *(&v35 + 1);
      v20 = &v35;
      if (BYTE1(v37) == 1)
      {
        v20 = v35;
      }

      else
      {
        v6 = 2;
      }
    }

    v38 = v20;
    v39 = v19;
    v8 = " name.offset field too small, not past the end of the dylib_command struct";
    goto LABEL_5;
  }

  v21 = v12 >= v13;
  v22 = v12 - v13;
  if (v22 == 0 || !v21)
  {
    v29[0] = "load command ";
    v30 = a4;
    v31 = 2051;
    *&v32 = v29;
    *&v33 = " ";
    LOWORD(v34) = 770;
    if (*a5)
    {
      v27 = &v32;
      *&v35 = &v32;
      *&v36 = a5;
      LOWORD(v37) = 770;
      v6 = 2;
      v28 = &v35;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      v6 = v34;
      v27 = *(&v35 + 1);
      v28 = &v35;
      if (BYTE1(v37) == 1)
      {
        v28 = v35;
      }

      else
      {
        v6 = 2;
      }
    }

    v38 = v28;
    v39 = v27;
    v8 = " name.offset field extends past the end of the load command";
    goto LABEL_5;
  }

  v23 = (v9 + v13);
  while (*v23++)
  {
    if (!--v22)
    {
      v29[0] = "load command ";
      v30 = a4;
      v31 = 2051;
      *&v32 = v29;
      *&v33 = " ";
      LOWORD(v34) = 770;
      if (*a5)
      {
        v25 = &v32;
        *&v35 = &v32;
        *&v36 = a5;
        LOWORD(v37) = 770;
        v6 = 2;
        v26 = &v35;
      }

      else
      {
        v35 = v32;
        v36 = v33;
        v37 = v34;
        v6 = v34;
        v25 = *(&v35 + 1);
        v26 = &v35;
        if (BYTE1(v37) == 1)
        {
          v26 = v35;
        }

        else
        {
          v6 = 2;
        }
      }

      v38 = v26;
      v39 = v25;
      v8 = " library name extends past the end of the load command";
LABEL_5:
      v40 = v8;
      LOBYTE(v41) = v6;
      HIBYTE(v41) = 3;
      malformedError(result, &v38);
    }
  }

  *result = 0;
  return result;
}

const llvm::Twine *checkDyldCommand(const llvm::Twine *result, uint64_t a2, unint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6)
{
  if (a4 <= 0xB)
  {
    v29[0] = "load command ";
    v30 = a5;
    v31 = 2051;
    *&v32 = v29;
    *&v33 = " ";
    LOWORD(v34) = 770;
    if (*a6)
    {
      v6 = &v32;
      *&v35 = &v32;
      *&v36 = a6;
      LOWORD(v37) = 770;
      v7 = 2;
      v8 = &v35;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      v7 = v34;
      v6 = *(&v35 + 1);
      v8 = &v35;
      if (BYTE1(v37) == 1)
      {
        v8 = v35;
      }

      else
      {
        v7 = 2;
      }
    }

    v38 = v8;
    v39 = v6;
    v9 = " cmdsize too small";
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  v11 = v10 > a3 || a3 + 12 > v10 + *(a2 + 24);
  if (v11)
  {
    v38 = "Structure read out-of-range";
    v41 = 259;
    goto LABEL_12;
  }

  v12 = *(a3 + 4);
  v13 = *(a3 + 8);
  v14 = *(a2 + 8);
  v11 = v14 > 0x14;
  v15 = (1 << v14) & 0x155800;
  v16 = v11 || v15 == 0;
  v17 = bswap32(v12);
  v18 = bswap32(v13);
  if (!v16)
  {
    v13 = v18;
    v12 = v17;
  }

  if (v13 <= 0xB)
  {
    v29[0] = "load command ";
    v30 = a5;
    v31 = 2051;
    *&v32 = v29;
    *&v33 = " ";
    LOWORD(v34) = 770;
    if (*a6)
    {
      v19 = &v32;
      *&v35 = &v32;
      *&v36 = a6;
      LOWORD(v37) = 770;
      v7 = 2;
      v20 = &v35;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      v7 = v34;
      v19 = *(&v35 + 1);
      v20 = &v35;
      if (BYTE1(v37) == 1)
      {
        v20 = v35;
      }

      else
      {
        v7 = 2;
      }
    }

    v38 = v20;
    v39 = v19;
    v9 = " name.offset field too small, not past the end of the dylinker_command struct";
    goto LABEL_5;
  }

  v21 = v12 >= v13;
  v22 = v12 - v13;
  if (v22 == 0 || !v21)
  {
    v29[0] = "load command ";
    v30 = a5;
    v31 = 2051;
    *&v32 = v29;
    *&v33 = " ";
    LOWORD(v34) = 770;
    if (*a6)
    {
      v27 = &v32;
      *&v35 = &v32;
      *&v36 = a6;
      LOWORD(v37) = 770;
      v7 = 2;
      v28 = &v35;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v37 = v34;
      v7 = v34;
      v27 = *(&v35 + 1);
      v28 = &v35;
      if (BYTE1(v37) == 1)
      {
        v28 = v35;
      }

      else
      {
        v7 = 2;
      }
    }

    v38 = v28;
    v39 = v27;
    v9 = " name.offset field extends past the end of the load command";
    goto LABEL_5;
  }

  v23 = (a3 + v13);
  while (*v23++)
  {
    if (!--v22)
    {
      v29[0] = "load command ";
      v30 = a5;
      v31 = 2051;
      *&v32 = v29;
      *&v33 = " ";
      LOWORD(v34) = 770;
      if (*a6)
      {
        v25 = &v32;
        *&v35 = &v32;
        *&v36 = a6;
        LOWORD(v37) = 770;
        v7 = 2;
        v26 = &v35;
      }

      else
      {
        v35 = v32;
        v36 = v33;
        v37 = v34;
        v7 = v34;
        v25 = *(&v35 + 1);
        v26 = &v35;
        if (BYTE1(v37) == 1)
        {
          v26 = v35;
        }

        else
        {
          v7 = 2;
        }
      }

      v38 = v26;
      v39 = v25;
      v9 = " dyld name extends past the end of the load command";
LABEL_5:
      v40 = v9;
      LOBYTE(v41) = v7;
      HIBYTE(v41) = 3;
LABEL_12:
      malformedError(result, &v38);
    }
  }

  *result = 0;
  return result;
}

const llvm::Twine *checkVersCommand(const llvm::Twine *result, uint64_t a2, int a3, unsigned int a4, void *a5, _BYTE *a6)
{
  if (a3 != 16)
  {
    v9[0] = "load command ";
    v9[2] = a4;
    v10 = 2051;
    *&v11 = v9;
    *&v12 = " ";
    LOWORD(v13) = 770;
    if (*a6)
    {
      v6 = &v11;
      *&v14 = &v11;
      *&v15 = a6;
      LOWORD(v16) = 770;
      v7 = 2;
      v8 = &v14;
    }

    else
    {
      v14 = v11;
      v15 = v12;
      v16 = v13;
      v7 = v13;
      v6 = *(&v11 + 1);
      v8 = &v14;
      if (BYTE1(v13) == 1)
      {
        v8 = v14;
      }

      else
      {
        v7 = 2;
      }
    }

    v17[0] = v8;
    v17[1] = v6;
    v17[2] = " has incorrect cmdsize";
    LOBYTE(v18) = v7;
    HIBYTE(v18) = 3;
LABEL_7:
    malformedError(result, v17);
  }

  if (*a5)
  {
    v17[0] = "more than one LC_VERSION_MIN_MACOSX, LC_VERSION_MIN_IPHONEOS, LC_VERSION_MIN_TVOS or LC_VERSION_MIN_WATCHOS command";
    v18 = 259;
    goto LABEL_7;
  }

  *a5 = a2;
  *result = 0;
  return result;
}

int8x16_t getStruct<llvm::MachO::encryption_info_command>(int8x16_t *a1, uint64_t a2, int8x16_t *a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3[1].u64 + 4 > v3 + *(a2 + 24);
  if (v4)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1, a3);
  }

  result = *a3;
  *a1 = *a3;
  a1[1].i32[0] = a3[1].i32[0];
  v6 = *(a2 + 8);
  v4 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  if (!v4 && v7 != 0)
  {
    result = vrev32q_s8(*a1);
    *a1 = result;
    a1[1].i32[0] = bswap32(a1[1].u32[0]);
  }

  return result;
}

const llvm::Twine *checkEncryptCommand(const llvm::Twine *result, unint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5, uint64_t a6, void *a7, _BYTE *a8)
{
  if (*a7)
  {
    v24[0] = "more than one LC_ENCRYPTION_INFO and or LC_ENCRYPTION_INFO_64 command";
    v8 = 259;
    goto LABEL_17;
  }

  if (a2 < a5)
  {
    v9 = *a8;
    if (*a8)
    {
      v16 = a8;
      v10 = 3;
      v11 = 2;
    }

    else
    {
      v10 = 1;
      v11 = 3;
    }

    v12 = "cryptoff field of ";
LABEL_14:
    v15 = v12;
    v17 = 3;
    v18 = v10;
    v13 = v9 == 0;
    v14 = &v15;
    if (v13)
    {
      v14 = v12;
    }

    v19[0] = v14;
    v19[2] = " command ";
    v20 = v11;
    v21 = 3;
    v22[0] = v19;
    v22[2] = a4;
    v23 = 2050;
    v24[0] = v22;
    v24[2] = " extends past the end of the file";
    v8 = 770;
LABEL_17:
    v25 = v8;
    malformedError(result, v24);
  }

  if (a6 + a5 > a2)
  {
    v9 = *a8;
    if (*a8)
    {
      v16 = a8;
      v10 = 3;
      v11 = 2;
    }

    else
    {
      v10 = 1;
      v11 = 3;
    }

    v12 = "cryptoff field plus cryptsize field of ";
    goto LABEL_14;
  }

  *a7 = a3;
  *result = 0;
  return result;
}

double getStruct<llvm::MachO::encryption_info_command_64>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3 + 24 > v3 + *(a2 + 24);
  if (v4)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1, a3);
  }

  v5 = *a3;
  *a1 = *a3;
  *(a1 + 16) = *(a3 + 2);
  v6 = *(a2 + 8);
  v4 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  if (!v4 && v7 != 0)
  {
    *a1 = vrev32q_s8(*a1);
    *&v5 = vrev32_s8(*(a1 + 16));
    *(a1 + 16) = v5;
  }

  return *&v5;
}

const llvm::Twine *checkLinkerOptCommand(const llvm::Twine *result, uint64_t a2, unint64_t a3, unsigned int a4, unsigned int a5)
{
  v6 = result;
  if (a4 <= 0xB)
  {
    v33[0] = "load command ";
    v34 = a5;
    v35 = 2051;
    v36 = v33;
    v37 = " LC_LINKER_OPTION cmdsize too small";
    v7 = 770;
    goto LABEL_6;
  }

  v8 = *(a2 + 16);
  if (v8 > a3 || (v9 = (a3 + 12), a3 + 12 > v8 + *(a2 + 24)))
  {
    v36 = "Structure read out-of-range";
    v7 = 259;
    goto LABEL_6;
  }

  v10 = *(a3 + 4);
  v11 = *(a3 + 8);
  v12 = *(a2 + 8);
  v13 = v12 > 0x14;
  v14 = (1 << v12) & 0x155800;
  v15 = v13 || v14 == 0;
  v16 = bswap32(v10);
  v17 = bswap32(v11);
  if (v15)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  if (!v15)
  {
    v10 = v16;
  }

  LODWORD(v19) = 0;
  v20 = v10 - 12;
  if (v10 != 12)
  {
    while (1)
    {
      if (!*v9)
      {
        do
        {
          v21 = v20;
          v22 = *++v9;
          --v20;
          if (v22)
          {
            v23 = 1;
          }

          else
          {
            v23 = v21 == 1;
          }
        }

        while (!v23);
        if (v21 == 1)
        {
          goto LABEL_28;
        }
      }

      v19 = (v19 + 1);
      result = memchr(v9, 0, v20);
      if (!result)
      {
        break;
      }

      v24 = result - v9;
      if (result - v9 == -1)
      {
        break;
      }

      if (v20 < v24)
      {
        v24 = v20;
      }

      v25 = v24 + 1;
      v9 += v25;
      v20 -= v25;
      if (!v20)
      {
        goto LABEL_28;
      }
    }

    v27[0] = "load command ";
    v28 = a5;
    v29 = 2051;
    v30[0] = v27;
    v31 = " LC_LINKER_OPTION string #";
    v7 = 770;
    v32 = 770;
    v33[0] = v30;
    v34 = v19;
    v35 = 2050;
    v26 = " is not NULL terminated";
    goto LABEL_32;
  }

LABEL_28:
  if (v18 != v19)
  {
    v27[0] = "load command ";
    v28 = a5;
    v29 = 2051;
    v30[0] = v27;
    v31 = " LC_LINKER_OPTION string count ";
    v7 = 770;
    v32 = 770;
    v33[0] = v30;
    v34 = v18;
    v35 = 2050;
    v26 = " does not match number of strings";
LABEL_32:
    v36 = v33;
    v37 = v26;
LABEL_6:
    v38 = v7;
    malformedError(v6, &v36);
  }

  *v6 = 0;
  return result;
}

uint64_t getStruct<llvm::MachO::sub_framework_command>(uint64_t a1, unint64_t a2, BOOL a3)
{
  v3 = *(a1 + 16);
  v4 = v3 > a2 || a2 + 12 > v3 + *(a1 + 24);
  if (v4)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1, a3);
  }

  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  v4 = v6 > 0x14;
  v7 = (1 << v6) & 0x155800;
  v8 = v4 || v7 == 0;
  v9 = bswap32(v5);
  if (v8)
  {
    return v5;
  }

  else
  {
    return v9;
  }
}

const llvm::Twine *checkSubCommand(const llvm::Twine *result, uint64_t a2, unsigned int a3, unsigned int a4, _BYTE *a5, _BYTE *a6, unsigned int a7, _BYTE *a8)
{
  if (a7 <= 0xB)
  {
    v29[0] = "load command ";
    v29[2] = a4;
    v30 = 2051;
    v8 = " ";
    *&v31 = v29;
    *&v32 = " ";
    LOWORD(v33) = 770;
    if (*a5)
    {
      v9 = &v31;
      *&v34 = &v31;
      *&v35 = a5;
      LOWORD(v36) = 770;
      v10 = 2;
      v11 = &v34;
    }

    else
    {
      v34 = v31;
      v35 = v32;
      v36 = v33;
      v10 = v33;
      if (v33 == 1)
      {
        *&v37 = " ";
        LOWORD(v39) = 259;
        if (*a8)
        {
          v12 = 3;
          goto LABEL_6;
        }

LABEL_30:
        v40 = v37;
        v41 = v38;
        v42 = v39;
        v12 = v39;
        goto LABEL_31;
      }

      v9 = *(&v34 + 1);
      v11 = &v34;
      if (BYTE1(v36) == 1)
      {
        v11 = v34;
      }

      else
      {
        v10 = 2;
      }
    }

    *&v37 = v11;
    *(&v37 + 1) = v9;
    *&v38 = " ";
    LOBYTE(v39) = v10;
    BYTE1(v39) = 3;
    if (*a8)
    {
      v12 = 2;
      v8 = &v37;
LABEL_6:
      *&v40 = v8;
      *&v41 = a8;
      LOBYTE(v42) = v12;
      BYTE1(v42) = 3;
LABEL_31:
      v25 = v40;
      if (BYTE1(v42) != 1)
      {
        v12 = 2;
        v25 = &v40;
      }

      *&v43 = v25;
      *(&v43 + 1) = *(&v40 + 1);
      *&v44 = ".offset field too small, not past the end of the ";
      LOBYTE(v45) = v12;
      BYTE1(v45) = 3;
      if (*a6)
      {
        *&v46 = &v43;
        *&v47 = a6;
        LOBYTE(v48) = 2;
        goto LABEL_58;
      }

      v46 = v43;
      v47 = v44;
      v48 = v45;
LABEL_59:
      malformedError(result, &v46);
    }

    goto LABEL_30;
  }

  v13 = a3 - a7;
  if (a3 <= a7)
  {
    *&v31 = "load command ";
    *&v32 = a4;
    LOWORD(v33) = 2051;
    v21 = " ";
    *&v34 = &v31;
    *&v35 = " ";
    LOWORD(v36) = 770;
    if (*a5)
    {
      v22 = &v34;
      *&v37 = &v34;
      *&v38 = a5;
      LOWORD(v39) = 770;
      v23 = 2;
      v24 = &v37;
    }

    else
    {
      v37 = v34;
      v38 = v35;
      v39 = v36;
      v23 = v36;
      if (v36 == 1)
      {
        *&v40 = " ";
        LOWORD(v42) = 259;
        if (*a8)
        {
          v20 = 3;
          goto LABEL_20;
        }

LABEL_43:
        v43 = v40;
        v44 = v41;
        v45 = v42;
        v20 = v42;
        goto LABEL_44;
      }

      v22 = *(&v37 + 1);
      v24 = &v37;
      if (BYTE1(v39) == 1)
      {
        v24 = v37;
      }

      else
      {
        v23 = 2;
      }
    }

    *&v40 = v24;
    *(&v40 + 1) = v22;
    *&v41 = " ";
    LOBYTE(v42) = v23;
    BYTE1(v42) = 3;
    if (*a8)
    {
      v20 = 2;
      v21 = &v40;
LABEL_20:
      *&v43 = v21;
      *&v44 = a8;
      LOBYTE(v45) = v20;
      BYTE1(v45) = 3;
LABEL_44:
      if (BYTE1(v45) != 1)
      {
        v20 = 2;
      }

      v26 = &v43;
      if (BYTE1(v45) == 1)
      {
        v26 = v43;
      }

      *&v46 = v26;
      *(&v46 + 1) = *(&v43 + 1);
      v27 = ".offset field extends past the end of the load command";
      goto LABEL_57;
    }

    goto LABEL_43;
  }

  v14 = (a2 + a7);
  while (*v14++)
  {
    if (!--v13)
    {
      *&v31 = "load command ";
      *&v32 = a4;
      LOWORD(v33) = 2051;
      v16 = " ";
      *&v34 = &v31;
      *&v35 = " ";
      LOWORD(v36) = 770;
      if (*a5)
      {
        v17 = &v34;
        *&v37 = &v34;
        *&v38 = a5;
        LOWORD(v39) = 770;
        v18 = 2;
        v19 = &v37;
        goto LABEL_13;
      }

      v37 = v34;
      v38 = v35;
      v39 = v36;
      v18 = v36;
      if (v36 == 1)
      {
        *&v40 = " ";
        LOWORD(v42) = 259;
        if (!*a8)
        {
          goto LABEL_51;
        }

        v20 = 3;
LABEL_15:
        *&v43 = v16;
        *&v44 = a8;
        LOBYTE(v45) = v20;
        BYTE1(v45) = 3;
      }

      else
      {
        v17 = *(&v37 + 1);
        v19 = &v37;
        if (BYTE1(v39) == 1)
        {
          v19 = v37;
        }

        else
        {
          v18 = 2;
        }

LABEL_13:
        *&v40 = v19;
        *(&v40 + 1) = v17;
        *&v41 = " ";
        LOBYTE(v42) = v18;
        BYTE1(v42) = 3;
        if (*a8)
        {
          v20 = 2;
          v16 = &v40;
          goto LABEL_15;
        }

LABEL_51:
        v43 = v40;
        v44 = v41;
        v45 = v42;
        v20 = v42;
      }

      if (BYTE1(v45) != 1)
      {
        v20 = 2;
      }

      v28 = &v43;
      if (BYTE1(v45) == 1)
      {
        v28 = v43;
      }

      *&v46 = v28;
      *(&v46 + 1) = *(&v43 + 1);
      v27 = " name extends past the end of the load command";
LABEL_57:
      *&v47 = v27;
      LOBYTE(v48) = v20;
LABEL_58:
      BYTE1(v48) = 3;
      goto LABEL_59;
    }
  }

  *result = 0;
  return result;
}

unint64_t checkThreadCommand(llvm::Twine *a1, uint64_t a2, unint64_t a3, unsigned int a4, unsigned int a5, _BYTE *a6)
{
  if (a4 <= 7)
  {
    *&v68 = "load command ";
    *&v69 = a5;
    LOWORD(v70) = 2051;
    v8 = *a6;
    if (*a6)
    {
      *&v71 = &v68;
      *&v72 = a6;
      LOWORD(v73) = 770;
      v9 = 2;
      v10 = &v71;
    }

    else
    {
      v71 = v68;
      v72 = v69;
      v73 = v70;
      v9 = v70;
      v8 = *(&v71 + 1);
      v10 = &v71;
      if (BYTE1(v73) == 1)
      {
        v10 = v71;
      }

      else
      {
        v9 = 2;
      }
    }

    v74 = v10;
    v75 = v8;
    v11 = " cmdsize too small";
    goto LABEL_5;
  }

  v12 = *(a2 + 16);
  if (v12 > a3 || (v13 = (a3 + 8), a3 + 8 > v12 + *(a2 + 24)))
  {
    v74 = "Structure read out-of-range";
    v77 = 259;
    goto LABEL_9;
  }

  v14 = *(a3 + 4);
  v15 = *(a2 + 8);
  v16 = v15 > 0x14 || ((1 << v15) & 0x155800) == 0;
  v17 = bswap32(v14);
  if (v16)
  {
    result = v14;
  }

  else
  {
    result = v17;
  }

  if (result >= 9)
  {
    v19 = 0;
    v20 = *(a2 + 52);
    result = a3 + result;
    do
    {
      if ((v13 + 1) > result)
      {
        v65[0] = "load command ";
        v66 = a5;
        v67 = 2051;
        v25 = "flavor in ";
LABEL_85:
        *&v68 = v65;
        *&v69 = v25;
        v26 = 770;
        LOWORD(v70) = 770;
        if (*a6)
        {
          *&v71 = &v68;
          *&v72 = a6;
          LOWORD(v73) = 770;
          v9 = 2;
          v27 = &v71;
        }

        else
        {
          v71 = v68;
          v72 = v69;
          v73 = v70;
          v9 = v70;
          v26 = *(&v71 + 1);
          v27 = &v71;
          if (BYTE1(v73) == 1)
          {
            v27 = v71;
          }

          else
          {
            v9 = 2;
          }
        }

        v74 = v27;
        v75 = v26;
        v11 = " extends past end of command";
        goto LABEL_5;
      }

      LODWORD(v21) = *v13;
      v22 = bswap32(*v13);
      if (((1 << v15) & 0x155800) == 0)
      {
        v22 = *v13;
      }

      if (v15 <= 0x14)
      {
        v21 = v22;
      }

      else
      {
        v21 = v21;
      }

      if ((v13 + 2) > result)
      {
        v65[0] = "load command ";
        v66 = a5;
        v67 = 2051;
        v25 = " count in ";
        goto LABEL_85;
      }

      v23 = v13[1];
      v24 = bswap32(v23);
      if (((1 << v15) & 0x155800) == 0)
      {
        v24 = v13[1];
      }

      if (v15 <= 0x14)
      {
        v23 = v24;
      }

      if (v20 > 16777222)
      {
        if (v20 == 16777223)
        {
          if (v21 <= 6)
          {
            if (v21 == 4)
            {
              if (v23 != 42)
              {
                v56[0] = "load command ";
                v58 = 259;
                v55 = 264;
                LODWORD(v53[0]) = a5;
                llvm::operator+(v56, v53, v59);
                v51[0] = " count not x86_THREAD_STATE64_COUNT for flavor number ";
                v52 = 259;
                llvm::operator+(v59, v51, v62);
                v50 = 264;
                LODWORD(v49[0]) = v19;
                llvm::operator+(v62, v49, v65);
                v37 = " which is a x86_THREAD_STATE64 flavor in ";
LABEL_121:
                v47 = v37;
                v48 = 259;
                llvm::operator+(v65, &v47, &v68);
                v38 = 1;
                v46 = 1;
                if (*a6)
                {
                  v44[0] = a6;
                  v38 = 3;
                }

                v45 = v38;
                llvm::operator+(&v68, v44, &v71);
                v42 = " command";
                v43 = 259;
                v39 = &v42;
                goto LABEL_127;
              }

              v13 += 44;
              if (v13 > result)
              {
                v62[0] = "load command ";
                v64 = 259;
                v61 = 264;
                LODWORD(v59[0]) = a5;
                llvm::operator+(v62, v59, v65);
                v40 = " x86_THREAD_STATE64 extends past end of command in ";
                goto LABEL_124;
              }
            }

            else
            {
              if (v21 != 6)
              {
                goto LABEL_89;
              }

              if (v23 != 4)
              {
                v56[0] = "load command ";
                v58 = 259;
                v55 = 264;
                LODWORD(v53[0]) = a5;
                llvm::operator+(v56, v53, v59);
                v51[0] = " count not x86_EXCEPTION_STATE64_COUNT for flavor number ";
                v52 = 259;
                llvm::operator+(v59, v51, v62);
                v50 = 264;
                LODWORD(v49[0]) = v19;
                llvm::operator+(v62, v49, v65);
                v37 = " which is a x86_EXCEPTION_STATE64 flavor in ";
                goto LABEL_121;
              }

              v13 += 6;
              if (v13 > result)
              {
                v62[0] = "load command ";
                v64 = 259;
                v61 = 264;
                LODWORD(v59[0]) = a5;
                llvm::operator+(v62, v59, v65);
                v40 = " x86_EXCEPTION_STATE64 extends past end of command in ";
                goto LABEL_124;
              }
            }
          }

          else
          {
            switch(v21)
            {
              case 9:
                if (v23 != 6)
                {
                  v56[0] = "load command ";
                  v58 = 259;
                  v55 = 264;
                  LODWORD(v53[0]) = a5;
                  llvm::operator+(v56, v53, v59);
                  v51[0] = " count not x86_EXCEPTION_STATE_COUNT for flavor number ";
                  v52 = 259;
                  llvm::operator+(v59, v51, v62);
                  v50 = 264;
                  LODWORD(v49[0]) = v19;
                  llvm::operator+(v62, v49, v65);
                  v37 = " which is a x86_EXCEPTION_STATE flavor in ";
                  goto LABEL_121;
                }

                v13 += 8;
                if (v13 > result)
                {
                  v62[0] = "load command ";
                  v64 = 259;
                  v61 = 264;
                  LODWORD(v59[0]) = a5;
                  llvm::operator+(v62, v59, v65);
                  v40 = " x86_EXCEPTION_STATE extends past end of command in ";
LABEL_124:
                  v56[0] = v40;
                  v58 = 259;
                  llvm::operator+(v65, v56, &v68);
                  v41 = 1;
                  HIBYTE(v55) = 1;
                  if (*a6)
                  {
                    v53[0] = a6;
                    v41 = 3;
                  }

                  LOBYTE(v55) = v41;
                  llvm::operator+(&v68, v53, &v71);
                  v51[0] = " command";
                  v52 = 259;
                  v39 = v51;
LABEL_127:
                  llvm::operator+(&v71, v39, &v74);
                  goto LABEL_9;
                }

                break;
              case 8:
                if (v23 != 133)
                {
                  v56[0] = "load command ";
                  v58 = 259;
                  v55 = 264;
                  LODWORD(v53[0]) = a5;
                  llvm::operator+(v56, v53, v59);
                  v51[0] = " count not x86_FLOAT_STATE_COUNT for flavor number ";
                  v52 = 259;
                  llvm::operator+(v59, v51, v62);
                  v50 = 264;
                  LODWORD(v49[0]) = v19;
                  llvm::operator+(v62, v49, v65);
                  v37 = " which is a x86_FLOAT_STATE flavor in ";
                  goto LABEL_121;
                }

                v13 += 135;
                if (v13 > result)
                {
                  v62[0] = "load command ";
                  v64 = 259;
                  v61 = 264;
                  LODWORD(v59[0]) = a5;
                  llvm::operator+(v62, v59, v65);
                  v40 = " x86_FLOAT_STATE extends past end of command in ";
                  goto LABEL_124;
                }

                break;
              case 7:
                if (v23 != 44)
                {
                  v56[0] = "load command ";
                  v58 = 259;
                  v55 = 264;
                  LODWORD(v53[0]) = a5;
                  llvm::operator+(v56, v53, v59);
                  v51[0] = " count not x86_THREAD_STATE_COUNT for flavor number ";
                  v52 = 259;
                  llvm::operator+(v59, v51, v62);
                  v50 = 264;
                  LODWORD(v49[0]) = v19;
                  llvm::operator+(v62, v49, v65);
                  v37 = " which is a x86_THREAD_STATE flavor in ";
                  goto LABEL_121;
                }

                v13 += 46;
                if (v13 > result)
                {
                  v62[0] = "load command ";
                  v64 = 259;
                  v61 = 264;
                  LODWORD(v59[0]) = a5;
                  llvm::operator+(v62, v59, v65);
                  v40 = " x86_THREAD_STATE extends past end of command in ";
                  goto LABEL_124;
                }

                break;
              default:
                goto LABEL_89;
            }
          }
        }

        else
        {
          if (v20 != 16777228 && v20 != 33554444)
          {
LABEL_93:
            v59[0] = "unknown cputype (";
            v60 = v20;
            v61 = 2051;
            v62[0] = v59;
            v63 = ") load command ";
            v29 = 770;
            v64 = 770;
            v65[0] = v62;
            v66 = a5;
            v67 = 2050;
            *&v68 = v65;
            *&v69 = " for ";
            LOWORD(v70) = 770;
            if (*a6)
            {
              *&v71 = &v68;
              *&v72 = a6;
              LOWORD(v73) = 770;
              v9 = 2;
              v30 = &v71;
            }

            else
            {
              v71 = v68;
              v72 = v69;
              v73 = v70;
              v9 = v70;
              v29 = *(&v71 + 1);
              v30 = &v71;
              if (BYTE1(v73) == 1)
              {
                v30 = v71;
              }

              else
              {
                v9 = 2;
              }
            }

            v74 = v30;
            v75 = v29;
            v11 = " command can't be checked";
            goto LABEL_5;
          }

          if (v21 == 7)
          {
            if (v23 != 4)
            {
              v59[0] = "load command ";
              v60 = a5;
              v61 = 2051;
              v62[0] = v59;
              v63 = " count not ARM_EXCEPTION_STATE64_COUNT for flavor number ";
              v32 = 770;
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v28 = " which is a ARM_EXCEPTION_STATE64 flavor in ";
              goto LABEL_101;
            }

            v13 += 6;
            if (v13 > result)
            {
              v65[0] = "load command ";
              v66 = a5;
              v67 = 2051;
              v35 = " ARM_EXCEPTION_STATE64 extends past end of command in ";
LABEL_107:
              *&v68 = v65;
              *&v69 = v35;
              v32 = 770;
LABEL_108:
              LOWORD(v70) = 770;
              if (*a6)
              {
LABEL_109:
                *&v71 = &v68;
                *&v72 = a6;
                LOWORD(v73) = 770;
                v9 = 2;
                v36 = &v71;
                goto LABEL_110;
              }

              v71 = v68;
              v72 = v69;
              v73 = v70;
              v9 = v70;
              v32 = *(&v68 + 1);
              v34 = v68;
              v33 = BYTE1(v70);
LABEL_112:
              v16 = v33 == 1;
              v36 = &v71;
              if (v16)
              {
                v36 = v34;
              }

              else
              {
                v9 = 2;
              }

LABEL_110:
              v74 = v36;
              v75 = v32;
              v11 = " command";
LABEL_5:
              v76 = v11;
              LOBYTE(v77) = v9;
              HIBYTE(v77) = 3;
LABEL_9:
              malformedError(a1, &v74);
            }
          }

          else
          {
            if (v21 != 6)
            {
              goto LABEL_89;
            }

            if (v23 != 68)
            {
              v59[0] = "load command ";
              v60 = a5;
              v61 = 2051;
              v62[0] = v59;
              v63 = " count not ARM_THREAD_STATE64_COUNT for flavor number ";
              v32 = 770;
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v28 = " which is a ARM_THREAD_STATE64 flavor in ";
              goto LABEL_101;
            }

            v13 += 70;
            if (v13 > result)
            {
              v65[0] = "load command ";
              v66 = a5;
              v67 = 2051;
              v35 = " ARM_THREAD_STATE64 extends past end of command in ";
              goto LABEL_107;
            }
          }
        }
      }

      else
      {
        switch(v20)
        {
          case 7:
            if (v21 != 1)
            {
              v53[0] = "load command ";
              v54 = a5;
              v55 = 2051;
              v56[0] = v53;
              v57 = " unknown flavor (";
              v32 = 770;
              v58 = 770;
              v59[0] = v56;
              v60 = v21;
              v61 = 2050;
              v62[0] = v59;
              v63 = ") for flavor number ";
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v31 = " in ";
LABEL_103:
              *&v68 = v65;
              *&v69 = v31;
              goto LABEL_105;
            }

            if (v23 != 16)
            {
              v59[0] = "load command ";
              v60 = a5;
              v61 = 2051;
              v62[0] = v59;
              v63 = " count not x86_THREAD_STATE32_COUNT for flavor number ";
              v32 = 770;
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v31 = " which is a x86_THREAD_STATE32 flavor in ";
              goto LABEL_103;
            }

            v13 += 18;
            if (v13 > result)
            {
              v65[0] = "load command ";
              v66 = a5;
              v67 = 2051;
              *&v68 = v65;
              *&v69 = " x86_THREAD_STATE32 extends past end of command in ";
              v32 = 770;
LABEL_105:
              LOWORD(v70) = 770;
              if (*a6)
              {
                goto LABEL_109;
              }

              v71 = v68;
              v72 = v69;
              v73 = v70;
              v9 = v70;
              v33 = BYTE1(v70);
              v32 = *(&v68 + 1);
              v34 = v68;
              goto LABEL_112;
            }

            break;
          case 0xC:
            if (v21 != 1)
            {
              goto LABEL_89;
            }

            if (v23 != 17)
            {
              v59[0] = "load command ";
              v60 = a5;
              v61 = 2051;
              v62[0] = v59;
              v63 = " count not ARM_THREAD_STATE_COUNT for flavor number ";
              v32 = 770;
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v28 = " which is a ARM_THREAD_STATE flavor in ";
LABEL_101:
              *&v68 = v65;
              *&v69 = v28;
              goto LABEL_108;
            }

            v13 += 19;
            if (v13 > result)
            {
              v65[0] = "load command ";
              v66 = a5;
              v67 = 2051;
              v35 = " ARM_THREAD_STATE extends past end of command in ";
              goto LABEL_107;
            }

            break;
          case 0x12:
            if (v21 != 1)
            {
LABEL_89:
              v53[0] = "load command ";
              v54 = a5;
              v55 = 2051;
              v56[0] = v53;
              v57 = " unknown flavor (";
              v32 = 770;
              v58 = 770;
              v59[0] = v56;
              v60 = v21;
              v61 = 2050;
              v62[0] = v59;
              v63 = ") for flavor number ";
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v28 = " in ";
              goto LABEL_101;
            }

            if (v23 != 40)
            {
              v59[0] = "load command ";
              v60 = a5;
              v61 = 2051;
              v62[0] = v59;
              v63 = " count not PPC_THREAD_STATE_COUNT for flavor number ";
              v32 = 770;
              v64 = 770;
              v65[0] = v62;
              v66 = v19;
              v67 = 2050;
              v28 = " which is a PPC_THREAD_STATE flavor in ";
              goto LABEL_101;
            }

            v13 += 42;
            if (v13 > result)
            {
              v65[0] = "load command ";
              v66 = a5;
              v67 = 2051;
              v35 = " PPC_THREAD_STATE extends past end of command in ";
              goto LABEL_107;
            }

            break;
          default:
            goto LABEL_93;
        }
      }

      ++v19;
    }

    while (v13 < result);
  }

  *a1 = 0;
  return result;
}

const llvm::Twine *checkTwoLevelHintsCommand(llvm::Twine *a1, uint64_t a2, unint64_t *a3, unsigned int a4, unint64_t *a5, uint64_t *a6)
{
  if (*(a3 + 3) != 16)
  {
    v26 = "load command ";
    v27 = a4;
    v28 = 2051;
    v9 = " LC_TWOLEVEL_HINTS has incorrect cmdsize";
LABEL_5:
    v29[0] = &v26;
    v29[2] = v9;
    v10 = 770;
    goto LABEL_13;
  }

  if (*a5)
  {
    v8 = "more than one LC_TWOLEVEL_HINTS command";
LABEL_12:
    v29[0] = v8;
    v10 = 259;
LABEL_13:
    v30 = v10;
    malformedError(a1, v29);
  }

  v12 = *a3;
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *a3 < v14 || *a3 + 16 > v14 + v13;
  if (v15)
  {
    v8 = "Structure read out-of-range";
    goto LABEL_12;
  }

  v17 = *(v12 + 8);
  v16 = *(v12 + 12);
  v18 = *(a2 + 8);
  v15 = v18 > 0x14;
  v19 = (1 << v18) & 0x155800;
  v20 = v15 || v19 == 0;
  v21 = bswap32(v17);
  v22 = bswap32(v16);
  if (v20)
  {
    v23 = v17;
  }

  else
  {
    v16 = v22;
    v23 = v21;
  }

  if (v13 < v23)
  {
    v24 = "offset field of LC_TWOLEVEL_HINTS command ";
LABEL_25:
    v26 = v24;
    v27 = a4;
    v28 = 2051;
    v9 = " extends past the end of the file";
    goto LABEL_5;
  }

  if (v23 + 4 * v16 > v13)
  {
    v24 = "offset field plus nhints times sizeof(struct twolevel_hint) field of LC_TWOLEVEL_HINTS command ";
    goto LABEL_25;
  }

  result = checkOverlappingElement(a1, a6, v23, 4 * v16, "two level hints");
  if (!*a1)
  {
    *a5 = *a3;
  }

  return result;
}

uint64_t getStruct<llvm::MachO::version_min_command>(uint64_t a1, _DWORD *a2, BOOL a3)
{
  v3 = *(a1 + 16);
  v4 = v3 > a2 || (a2 + 4) > v3 + *(a1 + 24);
  if (v4)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1, a3);
  }

  LODWORD(v5) = *a2;
  LODWORD(v6) = a2[1];
  v7 = *(a1 + 8);
  v4 = v7 > 0x14;
  v8 = (1 << v7) & 0x155800;
  v9 = v4 || v8 == 0;
  v10 = bswap32(v5);
  v11 = bswap32(v6);
  if (v9)
  {
    v5 = v5;
  }

  else
  {
    v5 = v10;
  }

  if (v9)
  {
    v6 = v6;
  }

  else
  {
    v6 = v11;
  }

  return v5 | (v6 << 32);
}

double getStruct<llvm::MachO::symtab_command>@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, BOOL a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = v4 > a2 || a2 + 24 > v4 + *(a1 + 24);
  if (v5)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1, a3);
  }

  v6 = *a2;
  *a4 = *a2;
  *(a4 + 16) = *(a2 + 2);
  v7 = *(a1 + 8);
  v5 = v7 > 0x14;
  v8 = (1 << v7) & 0x155800;
  if (!v5 && v8 != 0)
  {
    *a4 = vrev32q_s8(*a4);
    *&v6 = vrev32_s8(*(a4 + 16));
    *(a4 + 16) = v6;
  }

  return *&v6;
}

int8x16_t getStruct<llvm::MachO::dysymtab_command>@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, BOOL a3@<W2>, int8x16_t *a4@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 > a2 || &a2[5] > v4 + *(a1 + 24))
  {
    llvm::report_fatal_error("Malformed MachO file.", 1, a3);
  }

  v6 = a2[3];
  a4[2] = a2[2];
  a4[3] = v6;
  a4[4] = a2[4];
  result = a2[1];
  *a4 = *a2;
  a4[1] = result;
  v8 = *(a1 + 8);
  if (v8 <= 0x14 && ((1 << v8) & 0x155800) != 0)
  {
    v9 = vrev32q_s8(a4[1]);
    *a4 = vrev32q_s8(*a4);
    a4[1] = v9;
    v10 = vrev32q_s8(a4[3]);
    a4[2] = vrev32q_s8(a4[2]);
    a4[3] = v10;
    result = vrev32q_s8(a4[4]);
    a4[4] = result;
  }

  return result;
}

unint64_t llvm::object::MachOObjectFile::getSymbol64TableEntry(uint64_t a1, unint64_t *a2, BOOL a3)
{
  v3 = *(a1 + 16);
  v4 = v3 > a2 || (a2 + 2) > v3 + *(a1 + 24);
  if (v4)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1, a3);
  }

  v5 = *a2;
  v6 = HIWORD(*a2);
  v7 = *(a1 + 8);
  v4 = v7 > 0x14;
  v8 = (1 << v7) & 0x155800;
  v9 = v4 || v8 == 0;
  v10 = bswap32(v5);
  v11 = __rev16(v6);
  if (v9)
  {
    v12 = v5;
  }

  else
  {
    v12 = v10;
  }

  if (v9)
  {
    v6 = v6;
  }

  else
  {
    v6 = v11;
  }

  return v5 & 0xFFFF00000000 | (v6 << 48) | v12;
}

unint64_t llvm::object::MachOObjectFile::getSymbolTableEntry(uint64_t a1, unint64_t *a2, BOOL a3)
{
  v3 = *(a1 + 16);
  v4 = v3 > a2 || a2 + 12 > v3 + *(a1 + 24);
  if (v4)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1, a3);
  }

  v5 = *a2;
  v6 = HIWORD(*a2);
  v7 = *(a1 + 8);
  v4 = v7 > 0x14;
  v8 = (1 << v7) & 0x155800;
  v9 = v4 || v8 == 0;
  v10 = bswap32(v5);
  v11 = __rev16(v6);
  if (v9)
  {
    v12 = v5;
  }

  else
  {
    v12 = v10;
  }

  if (v9)
  {
    v6 = v6;
  }

  else
  {
    v6 = v11;
  }

  return v5 & 0xFFFF00000000 | (v6 << 48) | v12;
}

uint64_t llvm::object::MachOObjectFile::moveSymbolNext(uint64_t a1, void *a2)
{
  result = (*(*a1 + 64))(a1);
  v4 = 12;
  if (result)
  {
    v4 = 16;
  }

  *a2 += v4;
  return result;
}

unint64_t llvm::object::MachOObjectFile::getSymbolName@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, BOOL a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a1[34];
  if (v8)
  {
    v23[0] = 0;
    v23[1] = 0;
    p_SymbolIndex = 0;
    getStruct<llvm::MachO::symtab_command>(a1, v8, a3, v23);
    v9 = p_SymbolIndex;
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[2];
  if (a1[3] >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = a1[3];
  }

  result = getSymbolTableEntryBase(a1, a2, a3);
  if (result)
  {
    v14 = v11 + v10;
    v15 = (v11 + v10 + result);
    v16 = a1[2];
    if (v15 < v16 || v15 >= v16 + a1[3])
    {
      v19[0] = "bad string index: ";
      v19[2] = result;
      v20 = 2051;
      v21[0] = v19;
      v21[2] = " for symbol at index ";
      v22 = 770;
      SymbolIndex = llvm::object::MachOObjectFile::getSymbolIndex(a1, a2, v13);
      v23[0] = v21;
      p_SymbolIndex = &SymbolIndex;
      v25 = 3074;
      malformedError(a4, v23);
    }

    if (v14)
    {
      result = strlen(v15);
    }

    else
    {
      result = 0;
    }

    *(a4 + 16) &= ~1u;
    *a4 = v15;
    *(a4 + 8) = result;
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) &= ~1u;
  }

  return result;
}

unint64_t getSymbolTableEntryBase(uint64_t a1, unint64_t *a2, BOOL a3)
{
  v3 = *(a1 + 16);
  v4 = v3 > a2 || (a2 + 1) > v3 + *(a1 + 24);
  if (v4)
  {
    llvm::report_fatal_error("Malformed MachO file.", 1, a3);
  }

  v5 = *a2;
  v6 = HIWORD(*a2);
  v7 = *(a1 + 8);
  v4 = v7 > 0x14;
  v8 = (1 << v7) & 0x155800;
  v9 = v4 || v8 == 0;
  LODWORD(v10) = bswap32(v5);
  v11 = __rev16(v6);
  if (v9)
  {
    v10 = v5;
  }

  else
  {
    v10 = v10;
  }

  if (v9)
  {
    v6 = v6;
  }

  else
  {
    v6 = v11;
  }

  return v5 & 0xFFFF00000000 | (v6 << 48) | v10;
}

unint64_t llvm::object::MachOObjectFile::getSymbolIndex(void *a1, uint64_t a2, BOOL a3)
{
  v4 = a1[34];
  if (!v4 || (v10 = 0, v11 = 0, v12 = 0, v6 = getStruct<llvm::MachO::symtab_command>(a1, v4, a3, &v10), !a1[34]))
  {
    llvm::report_fatal_error("getSymbolIndex() called with no symbol table symbol", 1, a3);
  }

  v7 = (*(*a1 + 64))(a1, v6);
  v8 = 12;
  if (v7)
  {
    v8 = 16;
  }

  return (a2 - (a1[2] + v11)) / v8;
}

uint64_t getSectionFlags(void *a1, unsigned int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), v4, &v6);
    return v10;
  }

  else
  {
    LODWORD(v10) = 0;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), v4, &v6);
    return DWORD2(v9);
  }
}

uint64_t llvm::object::MachOObjectFile::getNValue(uint64_t a1, unint64_t *a2)
{
  if ((*(*a1 + 64))(a1))
  {
    llvm::object::MachOObjectFile::getSymbol64TableEntry(a1, a2, v4);
    return v5;
  }

  else
  {
    llvm::object::MachOObjectFile::getSymbolTableEntry(a1, a2, v4);
    return v7;
  }
}

uint64_t llvm::object::MachOObjectFile::getSymbolAlignment(uint64_t a1, unint64_t *a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(v6);
  if ((v6[0] & 0x10) != 0)
  {
    return (1 << ((getSymbolTableEntryBase(a1, a2, v4) >> 56) & 0xF));
  }

  else
  {
    return 0;
  }
}

unint64_t llvm::object::MachOObjectFile::getSymbolType@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, BOOL a3@<W2>, uint64_t a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  result = getSymbolTableEntryBase(a1, a2, a3);
  if ((result & 0xE000000000) != 0)
  {
    *(a4 + 8) &= ~1u;
    v8 = 3;
LABEL_3:
    *a4 = v8;
    return result;
  }

  if ((BYTE4(result) & 0xE) != 0xE)
  {
    if ((result & 0xE00000000) == 0)
    {
      *(a4 + 8) &= ~1u;
      *a4 = 0;
      return result;
    }

    *(a4 + 8) &= ~1u;
    v8 = 1;
    goto LABEL_3;
  }

  result = (*(*a1 + 128))(v15, a1, a2);
  if (v16)
  {
    v9 = v15[0];
    v15[0] = 0;
    *(a4 + 8) |= 1u;
    *a4 = v9;
  }

  else
  {
    v10 = v15[0];
    v11 = v15[1];
    result = (*(*a1 + 360))(a1);
    if (v11 == v12 && v10 == result)
    {
      *(a4 + 8) &= ~1u;
      v14 = 1;
    }

    else
    {
      result = (*(*v11 + 208))(v11, v10);
      if ((result & 1) != 0 || (result = (*(*v11 + 216))(v11, v10), result))
      {
        *(a4 + 8) &= ~1u;
        v14 = 2;
      }

      else
      {
        *(a4 + 8) &= ~1u;
        v14 = 5;
      }
    }

    *a4 = v14;
  }

  if (v16)
  {
    result = v15[0];
    v15[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

unint64_t llvm::object::MachOObjectFile::getSymbolFlags@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, BOOL a3@<W2>, uint64_t a4@<X8>)
{
  result = getSymbolTableEntryBase(a1, a2, a3);
  v8 = result;
  v9 = HIDWORD(result);
  v10 = BYTE4(result) & 0xE;
  if ((result & 0xE000000000) != 0)
  {
    v11 = (32 * ((BYTE4(result) & 0xE) == 10)) | 0x80;
  }

  else
  {
    v11 = 32 * ((BYTE4(result) & 0xE) == 10);
  }

  if ((result & 0x100000000) != 0)
  {
    if ((result & 0xE00000000) != 0)
    {
      v13 = v11 | 2;
    }

    else
    {
      result = llvm::object::MachOObjectFile::getNValue(a1, a2);
      v13 = v11 | 3;
      if (result)
      {
        v13 = v11 | 0x12;
      }
    }

    v14 = v13 | 0x40;
    v15 = v13 | 0x200;
    if ((v9 & 0x10) != 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v12 = v11 & 0xFFFFFDFF | (((HIDWORD(result) >> 4) & 1) << 9);
  }

  v16 = v12 | 4;
  if ((v8 & 0xC0000000000000) == 0)
  {
    v16 = v12;
  }

  v17 = v16 | (32 * HIWORD(v8)) & 0x100;
  if (v10 == 2)
  {
    v17 |= 8u;
  }

  *(a4 + 8) &= ~1u;
  *a4 = v17;
  return result;
}

unint64_t llvm::object::MachOObjectFile::getSymbolSection@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, BOOL a3@<W2>, uint64_t a4@<X8>)
{
  result = getSymbolTableEntryBase(a1, a2, a3);
  if (BYTE5(result))
  {
    v9 = BYTE5(result) - 1;
    if (*(a1 + 88) <= v9)
    {
      v12[0] = "bad section index: ";
      v12[2] = BYTE5(result);
      v13 = 2307;
      v14[0] = v12;
      v14[2] = " for symbol at index ";
      v15 = 770;
      SymbolIndex = llvm::object::MachOObjectFile::getSymbolIndex(a1, a2, v8);
      v16[0] = v14;
      v16[2] = &SymbolIndex;
      v17 = 3074;
      malformedError(a4, v16);
    }

    *(a4 + 16) &= ~1u;
    *a4 = v9;
    *(a4 + 8) = a1;
  }

  else
  {
    result = (*(*a1 + 360))(a1);
    *(a4 + 16) &= ~1u;
    *a4 = result;
    *(a4 + 8) = v10;
  }

  return result;
}

size_t llvm::object::MachOObjectFile::getSectionName@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(*(a1 + 80) + 8 * a2);
  if (*(v4 + 15))
  {
    result = 16;
  }

  else
  {
    result = strlen(*(*(a1 + 80) + 8 * a2));
  }

  *(a3 + 16) &= ~1u;
  *a3 = v4;
  *(a3 + 8) = result;
  return result;
}

uint64_t llvm::object::MachOObjectFile::getSectionAddress(void *a1, unsigned int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), v4, v6);
    return v7;
  }

  else
  {
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), v4, v6);
    return v7;
  }
}

unint64_t llvm::object::MachOObjectFile::getSectionSize(void *a1, unsigned int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), v4, &v11);
    result = *(&v13 + 1);
    v6 = v14;
    v7 = v15;
  }

  else
  {
    LODWORD(v15) = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), v4, &v11);
    result = DWORD1(v13);
    v6 = DWORD2(v13);
    v7 = BYTE8(v14);
  }

  if (v7 != 1 && v7 != 12)
  {
    v9 = a1[3];
    v10 = v9 - v6;
    if (v10 >= result)
    {
      v10 = result;
    }

    if (v9 >= v6)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void llvm::object::MachOObjectFile::getSectionContents(void *a1@<X0>, uint64_t a2@<X8>, unsigned int a3@<W1>)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a3), v6, &v12);
    LODWORD(v7) = v15;
    v8 = *(&v14 + 1);
  }

  else
  {
    LODWORD(v16) = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a3), v6, &v12);
    v8 = DWORD1(v14);
    LODWORD(v7) = DWORD2(v14);
  }

  v9 = a1[3];
  if (v9 >= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = a1[3];
  }

  v10 = v9 - v7;
  if (v10 < v8)
  {
    v8 = v10;
  }

  v11 = v7 + a1[2];
  *(a2 + 16) &= ~1u;
  *a2 = v11;
  *(a2 + 8) = v8;
}

uint64_t llvm::object::MachOObjectFile::getSectionAlignment(void *a1, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), v4, &v7);
    v5 = BYTE4(v10);
  }

  else
  {
    LODWORD(v11) = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), v4, &v7);
    v5 = BYTE12(v9);
  }

  return 1 << v5;
}

BOOL llvm::object::MachOObjectFile::isSectionData(void *a1, unsigned int a2)
{
  SectionFlags = getSectionFlags(a1, a2);
  v4 = SectionFlags != 1 && SectionFlags != 12;
  return SectionFlags >= 0 && v4;
}

BOOL llvm::object::MachOObjectFile::isSectionBSS(void *a1, unsigned int a2)
{
  SectionFlags = getSectionFlags(a1, a2);
  v4 = SectionFlags == 1 || SectionFlags == 12;
  return SectionFlags >= 0 && v4;
}

uint64_t llvm::object::MachOObjectFile::isDebugSection(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  (*(*a1 + 144))(&v8);
  if (v10)
  {
    v7 = v8;
    v8 = 0;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v7);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    if (v10)
    {
      result = v8;
      v8 = 0;
      if (!result)
      {
        return result;
      }

      (*(*result + 8))(result);
    }

    return 0;
  }

  if (v9 < 7)
  {
    return 0;
  }

  if (*v8 == 1701076831 && *(v8 + 3) == 1735746149)
  {
    return 1;
  }

  if (v9 == 7)
  {
    return *v8 == 1885429599 && *(v8 + 3) == 1701605488;
  }

  if (*v8 == 0x67756265647A5F5FLL)
  {
    return 1;
  }

  if (*v8 == 1885429599 && *(v8 + 3) == 1701605488)
  {
    return 1;
  }

  if (v9 != 11)
  {
    return 0;
  }

  if (*v8 == 0x6E695F6264675F5FLL && *(v8 + 3) == 0x7865646E695F6264)
  {
    return 1;
  }

  return *v8 == 0x5F74666977735F5FLL && *(v8 + 3) == 0x7473615F74666977;
}

uint64_t llvm::object::MachOObjectFile::isSectionBitcode(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1[10] + 8 * a2);
  if (*(v4 + 31))
  {
    v5 = 0;
  }

  else
  {
    v5 = strlen((v4 + 16)) == 6;
  }

  (*(*a1 + 144))(v14, a1, a2);
  v7 = v15;
  if (v15)
  {
    v8 = v14[0];
    v14[0] = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  else
  {
    v6 = v5 && (*(v4 + 16) == 1280073567 ? (v9 = *(v4 + 20) == 19798) : (v9 = 0), v9 ? (v10 = 0) : (v10 = 1), !v10 ? (v11 = v14[1] == 9) : (v11 = 0), v11) && *v14[0] == 0x646F637469625F5FLL && *(v14[0] + 8) == 101;
  }

  return v6 & ~v7 & 1;
}

BOOL llvm::object::MachOObjectFile::isSectionStripped(void *a1, unsigned int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), v4, v7);
    v5 = v9;
  }

  else
  {
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), v4, v7);
    v5 = v8;
  }

  return v5 == 0;
}

unint64_t llvm::object::MachOObjectFile::section_rel_end(void *a1, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 64))(a1))
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    getStruct<llvm::MachO::section_64>(a1, *(a1[10] + 8 * a2), v4, &v7);
    v5 = HIDWORD(v10);
  }

  else
  {
    LODWORD(v11) = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    getStruct<llvm::MachO::section>(a1, *(a1[10] + 8 * a2), v4, &v7);
    v5 = DWORD1(v10);
  }

  return a2 | (v5 << 32);
}

uint64_t llvm::object::MachOObjectFile::getRelocationOffset(uint64_t a1, unint64_t a2, _BOOL8 a3)
{
  Relocation = llvm::object::MachOObjectFile::getRelocation(a1, a2, a3);
  v5 = Relocation >= 0 || *(a1 + 52) == 16777223;
  v6 = Relocation & 0xFFFFFF;
  if (v5)
  {
    return Relocation;
  }

  return v6;
}

uint64_t llvm::object::MachOObjectFile::getRelocation(uint64_t a1, unint64_t a2, _BOOL8 a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 60) == 1)
  {
    if ((*(*a1 + 64))(a1, a2, a3))
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      getStruct<llvm::MachO::section_64>(a1, *(*(a1 + 80) + 8 * a2), v5, &v21);
      v6 = DWORD2(v24);
    }

    else
    {
      LODWORD(v25) = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      getStruct<llvm::MachO::section>(a1, *(*(a1 + 80) + 8 * a2), v5, &v21);
      v6 = v24;
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v7 = *(a1 + 280);
    if (v7)
    {
      getStruct<llvm::MachO::dysymtab_command>(a1, v7, a3, &v21);
      v6 = v25;
      v8 = DWORD2(v25);
    }

    else
    {
      v8 = 0;
      v6 = 0;
    }

    if (a2)
    {
      v6 = v8;
    }
  }

  v9 = *(a1 + 16);
  v10 = (v9 + v6 + 8 * HIDWORD(a2));
  if (v10 < v9 || (v10 + 2) > v9 + *(a1 + 24))
  {
    llvm::report_fatal_error("Malformed MachO file.", 1, a3);
  }

  v12 = *v10;
  v13 = v10[1];
  v14 = *(a1 + 8);
  v15 = bswap32(v12);
  v16 = bswap32(v13);
  if (((1 << v14) & 0x155800) == 0)
  {
    v15 = v12;
    v16 = v13;
  }

  v17 = v14 > 0x14;
  if (v14 <= 0x14)
  {
    v18 = v15;
  }

  else
  {
    v18 = v12;
  }

  if (v17)
  {
    v19 = v13;
  }

  else
  {
    v19 = v16;
  }

  return v18 | (v19 << 32);
}

uint64_t llvm::object::MachOObjectFile::getRelocationSymbol(uint64_t a1, unint64_t a2, _BOOL8 a3)
{
  Relocation = llvm::object::MachOObjectFile::getRelocation(a1, a2, a3);
  if (*(a1 + 52) != 16777223 && Relocation < 0)
  {
    return (*(*a1 + 56))(a1);
  }

  v8 = *(a1 + 8);
  v9 = v8 > 0x14 || ((1 << v8) & 0x155800) == 0;
  v10 = v9 ? HIDWORD(Relocation) & 0xFFFFFF : HIDWORD(Relocation) >> 8;
  v11 = v8 - 11;
  v12 = v11 > 9 ? 0x8000000 : dword_2750C78D0[v11];
  if ((v12 & HIDWORD(Relocation)) == 0)
  {
    return (*(*a1 + 56))(a1);
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v13 = *(a1 + 272);
  if (v13)
  {
    v6.n128_f64[0] = getStruct<llvm::MachO::symtab_command>(a1, v13, v5, &v17);
    v14 = v18;
  }

  else
  {
    v14 = 0;
  }

  if ((*(*a1 + 64))(a1, v6))
  {
    v16 = 16;
  }

  else
  {
    v16 = 12;
  }

  return *(a1 + 16) + (v14 + v16 * v10);
}

uint64_t llvm::object::MachOObjectFile::getRelocationType(uint64_t a1, unint64_t a2, _BOOL8 a3)
{
  Relocation = llvm::object::MachOObjectFile::getRelocation(a1, a2, a3);
  if (*(a1 + 52) == 16777223 || (Relocation & 0x80000000) == 0)
  {
    v6 = *(a1 + 8);
    v7 = v6 > 0x14;
    v8 = (1 << v6) & 0x155800;
    v9 = v7 || v8 == 0;
    v5 = HIDWORD(Relocation) >> 28;
    if (!v9)
    {
      return BYTE4(Relocation) & 0xF;
    }
  }

  else
  {
    return BYTE3(Relocation) & 0xF;
  }

  return v5;
}

void *llvm::object::MachOObjectFile::getRelocationTypeName(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*a1 + 320))(a1, a2);
  v6 = (*(*a1 + 392))(a1);
  v7 = 0;
  if (v6 <= 4)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    if (v6 == 1)
    {
      if (v5 <= 9)
      {
        v9 = llvm::object::MachOObjectFile::getRelocationTypeName(llvm::object::DataRefImpl,llvm::SmallVectorImpl<char> &)const::Table;
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v8 = 0;
    if (v6 != 3)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  if (v6 > 36)
  {
    if (v6 == 38)
    {
      if (v5 <= 9)
      {
        v9 = llvm::object::MachOObjectFile::getRelocationTypeName(llvm::object::DataRefImpl,llvm::SmallVectorImpl<char> &)const::Table;
        goto LABEL_21;
      }
    }

    else
    {
      v8 = 0;
      if (v6 != 37)
      {
        goto LABEL_22;
      }

      if (v5 <= 5)
      {
        v9 = llvm::object::MachOObjectFile::getRelocationTypeName(llvm::object::DataRefImpl,llvm::SmallVectorImpl<char> &)const::Table;
        goto LABEL_21;
      }
    }

    goto LABEL_19;
  }

  if (v6 == 5)
  {
LABEL_10:
    if (v5 <= 0xB)
    {
      v9 = llvm::object::MachOObjectFile::getRelocationTypeName(llvm::object::DataRefImpl,llvm::SmallVectorImpl<char> &)const::Table;
      goto LABEL_21;
    }

LABEL_19:
    v8 = "Unknown";
    v7 = 7;
    goto LABEL_22;
  }

  v8 = 0;
  if (v6 != 21)
  {
    goto LABEL_22;
  }

  if (v5 > 0xF)
  {
    goto LABEL_19;
  }

  v9 = llvm::object::MachOObjectFile::getRelocationTypeName(llvm::object::DataRefImpl,llvm::SmallVectorImpl<char> &)const::Table;
LABEL_21:
  v8 = v9[v5];
  v7 = strlen(v8);
LABEL_22:

  return llvm::SmallVectorImpl<char>::append<char const*,void>(a3, v8, &v8[v7]);
}

uint64_t llvm::object::MachOObjectFile::symbol_begin(llvm::object::MachOObjectFile *this, uint64_t a2, BOOL a3)
{
  v4 = *(this + 34);
  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  getStruct<llvm::MachO::symtab_command>(this, v4, a3, &v8);
  if (!*(this + 34) || HIDWORD(v9) == 0)
  {
    return 0;
  }

  else
  {
    return llvm::object::MachOObjectFile::getSymbolByIndex(this, 0, v5);
  }
}

uint64_t llvm::object::MachOObjectFile::getSymbolByIndex(llvm::object::MachOObjectFile *this, unsigned int a2, BOOL a3)
{
  v4 = *(this + 34);
  if (!v4 || ((v10 = 0, v11 = 0, v12 = 0, v6.n128_f64[0] = getStruct<llvm::MachO::symtab_command>(this, v4, a3, &v10), *(this + 34)) ? (v7 = HIDWORD(v11) > a2) : (v7 = 0), !v7))
  {
    llvm::report_fatal_error("Requested symbol index is out of range.", 1, a3);
  }

  if ((*(*this + 64))(this, v6))
  {
    v8 = 16;
  }

  else
  {
    v8 = 12;
  }

  return *(this + 2) + v11 + v8 * a2;
}

uint64_t llvm::object::MachOObjectFile::symbol_end(llvm::object::MachOObjectFile *this, uint64_t a2, BOOL a3)
{
  v4 = *(this + 34);
  if (!v4)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v5.n128_f64[0] = getStruct<llvm::MachO::symtab_command>(this, v4, a3, &v11);
  v6 = HIDWORD(v12);
  if (!*(this + 34) || HIDWORD(v12) == 0)
  {
    return 0;
  }

  if ((*(*this + 64))(this, v5))
  {
    v10 = 16;
  }

  else
  {
    v10 = 12;
  }

  return *(this + 2) + (v12 + v10 * v6);
}

uint64_t llvm::object::MachOObjectFile::getBytesInAddress(llvm::object::MachOObjectFile *this)
{
  if ((*(*this + 64))(this))
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

const char *llvm::object::MachOObjectFile::getFileFormatName(llvm::object::MachOObjectFile *this)
{
  v1 = *(this + 13);
  if (((*(*this + 64))(this) & 1) == 0)
  {
    if (v1 > 17)
    {
      if (v1 == 18)
      {
        return "Mach-O 32-bit ppc";
      }

      if (v1 == 33554444)
      {
        return "Mach-O arm64 (ILP32)";
      }
    }

    else
    {
      if (v1 == 7)
      {
        return "Mach-O 32-bit i386";
      }

      if (v1 == 12)
      {
        return "Mach-O arm";
      }
    }

    return "Mach-O 32-bit unknown";
  }

  if (v1 > 16777233)
  {
    if (v1 == 16777234)
    {
      return "Mach-O 64-bit ppc64";
    }

    if (v1 != 33554444)
    {
      return "Mach-O 64-bit unknown";
    }

    return "Mach-O arm64 (ILP32)";
  }

  if (v1 != 16777223)
  {
    if (v1 == 16777228)
    {
      return "Mach-O arm64";
    }

    return "Mach-O 64-bit unknown";
  }

  return "Mach-O 64-bit x86-64";
}

uint64_t llvm::object::MachOObjectFile::getArch(llvm::object::MachOObjectFile *this)
{
  if (this <= 16777222)
  {
    if (this == 7)
    {
      return 37;
    }

    if (this != 12)
    {
      if (this == 18)
      {
        return 21;
      }

      return 0;
    }

    return 1;
  }

  else if (this > 16777233)
  {
    if (this != 16777234)
    {
      if (this == 33554444)
      {
        return 5;
      }

      return 0;
    }

    return 23;
  }

  else
  {
    if (this != 16777223)
    {
      if (this == 16777228)
      {
        return 3;
      }

      return 0;
    }

    return 38;
  }
}

{
  return llvm::object::MachOObjectFile::getArch(*(this + 13));
}

llvm::Triple *llvm::object::MachOObjectFile::getArchTriple@<X0>(uint64_t *__return_ptr a1@<X8>, llvm::Triple *this@<X0>, const char **a3@<X3>, int a4@<W1>, void *a5@<X2>)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (this <= 16777222)
  {
    if (this == 7)
    {
      if ((a4 & 0xFFFFFF) == 3)
      {
        if (a3)
        {
          *a3 = "i386";
        }

        v5 = "i386-apple-darwin";
        goto LABEL_106;
      }
    }

    else if (this == 12)
    {
      v6 = a4 & 0xFFFFFF;
      if ((a4 & 0xFFFFFFu) > 0xA)
      {
        if ((a4 & 0xFFFFFFu) <= 0xD)
        {
          if (v6 == 11)
          {
            if (a5)
            {
              *a5 = "cortex-a7";
            }

            if (a3)
            {
              *a3 = "armv7s";
            }

            v5 = "armv7s-apple-darwin";
            goto LABEL_106;
          }

          if (v6 == 12)
          {
            if (a5)
            {
              *a5 = "cortex-a7";
            }

            if (a3)
            {
              *a3 = "armv7k";
            }

            v5 = "armv7k-apple-darwin";
            goto LABEL_106;
          }
        }

        else
        {
          switch(v6)
          {
            case 14:
              if (a5)
              {
                *a5 = "cortex-m0";
              }

              if (a3)
              {
                *a3 = "armv6m";
              }

              v5 = "armv6m-apple-darwin";
              goto LABEL_106;
            case 15:
              if (a5)
              {
                *a5 = "cortex-m3";
              }

              if (a3)
              {
                *a3 = "armv7m";
              }

              v5 = "thumbv7m-apple-darwin";
              goto LABEL_106;
            case 16:
              if (a5)
              {
                *a5 = "cortex-m4";
              }

              if (a3)
              {
                *a3 = "armv7em";
              }

              v5 = "thumbv7em-apple-darwin";
              goto LABEL_106;
          }
        }
      }

      else if ((a4 & 0xFFFFFFu) <= 6)
      {
        if (v6 == 5)
        {
          if (a3)
          {
            *a3 = "armv4t";
          }

          v5 = "armv4t-apple-darwin";
          goto LABEL_106;
        }

        if (v6 == 6)
        {
          if (a3)
          {
            *a3 = "armv6";
          }

          v5 = "armv6-apple-darwin";
          goto LABEL_106;
        }
      }

      else
      {
        switch(v6)
        {
          case 7:
            if (a3)
            {
              *a3 = "armv5e";
            }

            v5 = "armv5e-apple-darwin";
            goto LABEL_106;
          case 8:
            if (a3)
            {
              *a3 = "xscale";
            }

            v5 = "xscale-apple-darwin";
            goto LABEL_106;
          case 9:
            if (a3)
            {
              *a3 = "armv7";
            }

            v5 = "armv7-apple-darwin";
            goto LABEL_106;
        }
      }
    }

    else if (this == 18 && (a4 & 0xFFFFFF) == 0)
    {
      if (a3)
      {
        *a3 = "ppc";
      }

      v5 = "ppc-apple-darwin";
      goto LABEL_106;
    }

    goto LABEL_41;
  }

  if (this > 16777233)
  {
    if (this == 16777234)
    {
      if ((a4 & 0xFFFFFF) == 0)
      {
        if (a3)
        {
          *a3 = "ppc64";
        }

        v5 = "ppc64-apple-darwin";
        goto LABEL_106;
      }
    }

    else if (this == 33554444 && (a4 & 0xFFFFFF) == 1)
    {
      if (a5)
      {
        *a5 = "apple-s4";
      }

      if (a3)
      {
        *a3 = "arm64_32";
      }

      v5 = "arm64_32-apple-darwin";
      goto LABEL_106;
    }

    goto LABEL_41;
  }

  if (this == 16777223)
  {
    if ((a4 & 0xFFFFFF) == 8)
    {
      if (a3)
      {
        *a3 = "x86_64h";
      }

      v5 = "x86_64h-apple-darwin";
      goto LABEL_106;
    }

    if ((a4 & 0xFFFFFF) == 3)
    {
      if (a3)
      {
        *a3 = "x86_64";
      }

      v5 = "x86_64-apple-darwin";
      goto LABEL_106;
    }

    goto LABEL_41;
  }

  if (this != 16777228)
  {
    goto LABEL_41;
  }

  if ((a4 & 0xFFFFFF) == 2)
  {
    if (a5)
    {
      *a5 = "apple-a12";
    }

    if (a3)
    {
      *a3 = "arm64e";
    }

    v5 = "arm64e-apple-darwin";
    goto LABEL_106;
  }

  if ((a4 & 0xFFFFFF) != 0)
  {
LABEL_41:
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    return this;
  }

  if (a5)
  {
    *a5 = "cyclone";
  }

  if (a3)
  {
    *a3 = "arm64";
  }

  v5 = "arm64-apple-darwin";
LABEL_106:
  v7 = v5;
  v8 = 259;
  return llvm::Triple::Triple(a1, &v7);
}

int8x16_t getStruct<llvm::MachO::section>@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, BOOL a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 > a2 || a2 + 68 > v4 + *(a1 + 24))
  {
    llvm::report_fatal_error("Malformed MachO file.", 1, a3);
  }

  v6 = *(a2 + 48);
  *(a4 + 32) = *(a2 + 32);
  *(a4 + 48) = v6;
  *(a4 + 64) = *(a2 + 64);
  result = *(a2 + 16);
  *a4 = *a2;
  *(a4 + 16) = result;
  v8 = *(a1 + 8);
  if (v8 <= 0x14 && ((1 << v8) & 0x155800) != 0)
  {
    result = vrev32q_s8(*(a4 + 32));
    v9 = vrev32q_s8(*(a4 + 48));
    *(a4 + 32) = result;
    *(a4 + 48) = v9;
    *(a4 + 64) = bswap32(*(a4 + 64));
  }

  return result;
}

double getStruct<llvm::MachO::section_64>@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, BOOL a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 > a2 || (a2 + 5) > v4 + *(a1 + 24))
  {
    llvm::report_fatal_error("Malformed MachO file.", 1, a3);
  }

  v6 = a2[3];
  *(a4 + 32) = a2[2];
  *(a4 + 48) = v6;
  *(a4 + 64) = a2[4];
  v7 = a2[1];
  *a4 = *a2;
  *(a4 + 16) = v7;
  v8 = *(a1 + 8);
  if (v8 <= 0x14 && ((1 << v8) & 0x155800) != 0)
  {
    v9 = vrev32q_s8(*(a4 + 48));
    *(a4 + 32) = vrev64q_s8(*(a4 + 32));
    *(a4 + 48) = v9;
    *&v7 = vrev32_s8(*(a4 + 64));
    *(a4 + 64) = v7;
    *(a4 + 72) = bswap32(*(a4 + 72));
  }

  return *&v7;
}

uint64_t getStructOrErr<llvm::MachO::section_64>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3 + 80 > v3 + *(a2 + 24);
  if (v4)
  {
    v14 = "Structure read out-of-range";
    v15 = 259;
    malformedError(&v16, &v14);
  }

  v6 = *(a3 + 32);
  v5 = *(a3 + 48);
  v7 = *(a3 + 64);
  v9 = *(a3 + 72);
  v8 = *(a3 + 76);
  v10 = *(a2 + 8);
  v4 = v10 > 0x14;
  v11 = (1 << v10) & 0x155800;
  if (!v4 && v11 != 0)
  {
    v6 = vrev64q_s8(v6);
    v5 = vrev32q_s8(v5);
    v7 = vrev32_s8(v7);
    v9 = bswap32(v9);
  }

  *(result + 80) &= ~1u;
  v13 = *(a3 + 16);
  *result = *a3;
  *(result + 16) = v13;
  *(result + 32) = v6;
  *(result + 48) = v5;
  *(result + 64) = v7;
  *(result + 72) = v9;
  *(result + 76) = v8;
  return result;
}

uint64_t getStructOrErr<llvm::MachO::section>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3 + 68 > v3 + *(a2 + 24);
  if (v4)
  {
    v12 = "Structure read out-of-range";
    v13 = 259;
    malformedError(&v14, &v12);
  }

  v5 = *(a3 + 32);
  v6 = *(a3 + 48);
  v7 = *(a3 + 64);
  v8 = *(a2 + 8);
  v4 = v8 > 0x14;
  v9 = (1 << v8) & 0x155800;
  if (!v4 && v9 != 0)
  {
    v5 = vrev32q_s8(v5);
    v6 = vrev32q_s8(v6);
    v7 = bswap32(v7);
  }

  *(result + 72) &= ~1u;
  v11 = *(a3 + 16);
  *result = *a3;
  *(result + 16) = v11;
  *(result + 32) = v5;
  *(result + 48) = v6;
  *(result + 64) = v7;
  return result;
}

void llvm::object::ObjectFile::createMachOObjectFile(__int128 *a1)
{
  v4 = *(a1 + 1);
  if (v4 >= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = *(a1 + 1);
  }

  if (v4 < 4 || (v6 = *a1, memcmp(*a1, "\xFE\xED\xFA\xCE", v5)) && memcmp(v6, &str_348, v5) && memcmp(v6, &str_349, v5) && memcmp(v6, &str_350, v5))
  {
    llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
  }

  llvm::object::MachOObjectFile::create();
}

const char *llvm::object::MachOObjectFile::mapDebugSectionName(uint64_t a1, void *a2, uint64_t a3)
{
  result = a2;
  if (a3 == 14 && *a2 == 0x74735F6775626564 && *(a2 + 6) == 0x7366666F5F727473)
  {
    return "debug_str_offsets";
  }

  return result;
}

uint64_t llvm::object::MachOObjectFile::mapReflectionSectionNameToEnumValue(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 == 14)
  {
    if (*a2 == 0x3574666977735F5FLL && *(a2 + 6) == 0x6F746F72705F3574)
    {
      return 6;
    }

    return 10;
  }

  if (a3 == 15)
  {
    if (*a2 == 0x3574666977735F5FLL && *(a2 + 7) == 0x736F746F72705F35)
    {
      return 7;
    }

    if (*a2 ^ 0x3574666977735F5FLL | *(a2 + 7) ^ 0x6D756E65706D5F35)
    {
      return 10;
    }

    return 9;
  }

  if (a3 != 16)
  {
    return 10;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x646D646C6569665FLL)
  {
    return 0;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x7974636F7373615FLL)
  {
    return 1;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x6E69746C6975625FLL)
  {
    return 2;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x657275747061635FLL)
  {
    return 3;
  }

  if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x666572657079745FLL)
  {
    return 4;
  }

  if (*a2 != 0x3574666977735F5FLL || a2[1] != 0x7274736C6665725FLL)
  {
    if (*a2 == 0x3574666977735F5FLL && a2[1] == 0x73636E756663615FLL)
    {
      return 8;
    }

    return 10;
  }

  return 5;
}

void llvm::object::MachOObjectFile::~MachOObjectFile(llvm::object::MachOObjectFile *this)
{
  llvm::object::MachOObjectFile::~MachOObjectFile(this);

  JUMPOUT(0x277C69E40);
}

{
  *this = &unk_2883EEF40;
  v2 = *(this + 33);
  *(this + 33) = 0;
  if (v2)
  {
    if (*v2 != v2 + 2)
    {
      free(*v2);
    }

    MEMORY[0x277C69E40](v2, 0x1080C40E09A0471);
  }

  v3 = *(this + 29);
  if (v3 != this + 248)
  {
    free(v3);
  }

  v4 = *(this + 26);
  if (v4 != this + 224)
  {
    free(v4);
  }

  v5 = *(this + 16);
  if (v5 != this + 144)
  {
    free(v5);
  }

  v6 = *(this + 13);
  if (v6 != this + 120)
  {
    free(v6);
  }

  v7 = *(this + 10);
  if (v7 != this + 96)
  {
    free(v7);
  }
}

void llvm::object::MachOObjectFile::getFeatures(uint64_t a1@<X8>)
{
  memset(&v2, 0, sizeof(v2));
  llvm::SubtargetFeatures::Split(&v2, "", 0);
  *(a1 + 24) &= ~1u;
  *a1 = v2;
  memset(&v2, 0, sizeof(v2));
  v3 = &v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
}

uint64_t getLoadCommandInfo(uint64_t result, const char *a2, _DWORD *a3, unsigned int a4)
{
  v4 = *(a2 + 2);
  if (v4 > a3 || (v5 = v4 + *(a2 + 3), (a3 + 2) > v5))
  {
    v19[0] = "Structure read out-of-range";
    v21 = 259;
    malformedError(result, v19);
  }

  LODWORD(v7) = *a3;
  LODWORD(v6) = a3[1];
  v8 = *(a2 + 2);
  v9 = v8 >= 0x14;
  v11 = v8 == 20;
  v10 = (1 << v8) & 0x155800;
  v11 = !v11 && v9 || v10 == 0;
  v12 = bswap32(v7);
  v13 = bswap32(v6);
  if (v11)
  {
    v6 = v6;
  }

  else
  {
    v6 = v13;
  }

  if (v11)
  {
    v7 = v7;
  }

  else
  {
    v7 = v12;
  }

  if (a3 + v6 > v5)
  {
    v15[0] = "load command ";
    v16 = a4;
    v17 = 2051;
    v19[0] = v15;
    v20 = " extends past end of file";
    v21 = 770;
    malformedError(&v18, v19);
  }

  if (v6 <= 7)
  {
    v15[0] = "load command ";
    v16 = a4;
    v17 = 2051;
    v19[0] = v15;
    v20 = " with size less than 8 bytes";
    v21 = 770;
    malformedError(&v14, v19);
  }

  *(result + 16) &= ~1u;
  *result = a3;
  *(result + 8) = v7 | (v6 << 32);
  return result;
}

const llvm::Twine *checkOverlappingElement(const llvm::Twine *result, uint64_t *a2, unint64_t a3, uint64_t a4, const char *a5)
{
  v47 = a4;
  v48 = a3;
  if (a4)
  {
    v5 = a5;
    v6 = a2[1];
    if (v6 == a2)
    {
LABEL_13:
      operator new();
    }

    v7 = a4 + a3;
    v8 = v6[2];
    while ((v8 > a3 || v6[3] + v8 <= a3) && (v7 <= v8 || v7 >= v6[3] + v8) && (v8 < a3 || v7 < v6[3] + v8))
    {
      v6 = v6[1];
      if (v6 == a2)
      {
        goto LABEL_13;
      }

      v8 = v6[2];
      if (v7 <= v8)
      {
        operator new();
      }
    }

    v9 = *a5;
    v10 = " at offset ";
    if (*a5)
    {
      v21[2] = " at offset ";
      v11 = 3;
      v12 = 2;
    }

    else
    {
      v11 = 1;
      v12 = 3;
      v5 = " at offset ";
    }

    v21[0] = v5;
    v22 = 3;
    v23 = v11;
    v13 = v9 == 0;
    v14 = v21;
    if (v13)
    {
      v14 = v5;
    }

    v24[0] = v14;
    v24[2] = &v48;
    v25 = v12;
    v26 = 12;
    v27[0] = v24;
    v27[2] = " with a size of ";
    v15 = 770;
    v28 = 770;
    v29[0] = v27;
    v29[2] = &v47;
    v30 = 3074;
    *&v31 = v29;
    *&v32 = ", overlaps ";
    LOWORD(v33) = 770;
    v16 = v6[4];
    if (*v16)
    {
      *&v34 = &v31;
      *&v35 = v16;
      LOWORD(v36) = 770;
      v17 = 2;
      v18 = &v34;
    }

    else
    {
      v34 = v31;
      v35 = v32;
      v36 = v33;
      v17 = v33;
      if (v33 == 1)
      {
        v37[0] = " at offset ";
        v20 = 1;
        v17 = 3;
        v19 = 3;
LABEL_23:
        v38 = v17;
        v39 = v20;
        v40[0] = v10;
        v40[2] = v6 + 2;
        v41[0] = v19;
        v41[1] = 12;
        v42[0] = v40;
        v42[2] = " with a size of ";
        v43 = 770;
        v44[0] = v42;
        v44[2] = (v6 + 3);
        v45 = 2;
        v46 = 12;
        malformedError(result, v44);
      }

      v15 = *(&v34 + 1);
      v18 = &v34;
      if (BYTE1(v36) == 1)
      {
        v18 = v34;
      }

      else
      {
        v17 = 2;
      }
    }

    v37[1] = v15;
    v37[2] = " at offset ";
    v19 = 2;
    v10 = v37;
    v20 = 3;
    v37[0] = v18;
    goto LABEL_23;
  }

  *result = 0;
  return result;
}

uint64_t getStructOrErr<llvm::MachO::segment_command_64>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3 + 72 > v3 + *(a2 + 24);
  if (v4)
  {
    v12 = "Structure read out-of-range";
    v13 = 259;
    malformedError(&v14, &v12);
  }

  v5 = *a3;
  v6 = *(a3 + 24);
  v7 = *(a3 + 40);
  v8 = *(a3 + 56);
  v9 = *(a2 + 8);
  v4 = v9 > 0x14;
  v10 = (1 << v9) & 0x155800;
  if (!v4 && v10 != 0)
  {
    v5 = vrev32_s8(v5);
    v6 = vrev64q_s8(v6);
    v7 = vrev64q_s8(v7);
    v8 = vrev32q_s8(v8);
  }

  *(result + 72) &= ~1u;
  *result = v5;
  *(result + 8) = *(a3 + 8);
  *(result + 24) = v6;
  *(result + 40) = v7;
  *(result + 56) = v8;
  return result;
}

uint64_t getStructOrErr<llvm::MachO::segment_command>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = v3 > a3 || a3 + 56 > v3 + *(a2 + 24);
  if (v4)
  {
    v11 = "Structure read out-of-range";
    v12 = 259;
    malformedError(&v13, &v11);
  }

  v5 = *a3;
  v6 = *(a3 + 24);
  v7 = *(a3 + 40);
  v8 = *(a2 + 8);
  v4 = v8 > 0x14;
  v9 = (1 << v8) & 0x155800;
  if (!v4 && v9 != 0)
  {
    v5 = vrev32_s8(v5);
    v6 = vrev32q_s8(v6);
    v7 = vrev32q_s8(v7);
  }

  *(result + 56) &= ~1u;
  *result = v5;
  *(result + 8) = *(a3 + 8);
  *(result + 24) = v6;
  *(result + 40) = v7;
  return result;
}

double llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (a2 && *(a2 + 52) > a3)
  {
    v3 = *(a2 + 16) + 8;
    if (*(a2 + 48) == -889275714)
    {
      v4 = (v3 + 20 * a3);
      v5 = bswap32(v4[1].u32[0]);
      v6 = vrev32q_s8(*v4);
      *(a1 + 12) = v6;
      *(a1 + 28) = v5;
    }

    else
    {
      v7 = v3 + 32 * a3;
      *v6.i8 = vrev32_s8(*(v7 + 24));
      v8 = vrev64q_s8(*(v7 + 8));
      *(a1 + 32) = vrev32_s8(*v7);
      *(a1 + 40) = v8;
      *(a1 + 56) = v6.i64[0];
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return *v6.i64;
}

void llvm::object::MachOUniversalBinary::ObjectForArch::getAsObjectFile(llvm::object::MachOUniversalBinary::ObjectForArch *this, void a2, BOOL a3)
{
  v3 = *this;
  if (*this)
  {
    v4 = *(v3 + 24);
    if (*(v3 + 48) == -889275714)
    {
      v5 = *(this + 5);
      v6 = *(this + 6);
    }

    else
    {
      v5 = *(this + 5);
      v6 = *(this + 6);
    }

    if (v4 < v5)
    {
      v5 = *(v3 + 24);
    }

    v7 = v4 - v5;
    if (v7 >= v6)
    {
      v7 = v6;
    }

    *&v8[0] = v5 + *(v3 + 16);
    *(&v8[0] + 1) = v7;
    v8[1] = *(v3 + 32);
    llvm::object::ObjectFile::createMachOObjectFile(v8);
  }

  llvm::report_fatal_error("MachOUniversalBinary::ObjectForArch::getAsObjectFile() called when Parent is a nullptr", 1, a3);
}

uint64_t llvm::object::MachOUniversalBinary::MachOUniversalBinary(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v6 = *a2;
  v5 = a2[1];
  *(a1 + 8) = 1;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *a1 = &unk_2883EF110;
  *(a1 + 48) = 0;
  v7 = *(a1 + 24);
  if (v7 <= 7)
  {
    LODWORD(v74) = 2;
    llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
  }

  v8 = __rev32(**(a1 + 16));
  *(a1 + 48) = v8;
  if (!HIDWORD(v8))
  {
    v9 = "contains zero architecture types";
    goto LABEL_70;
  }

  if (v8 == -889275713)
  {
    v10 = (32 * HIDWORD(v8)) | 8;
  }

  else
  {
    if (v8 != -889275714)
    {
      v9 = "bad magic number";
LABEL_70:
      v119[0] = v9;
      v123 = 259;
      malformedError(&v74, v119);
    }

    v10 = 20 * HIDWORD(v8) + 8;
  }

  if (v7 < v10)
  {
    v11 = "";
    if (v8 != -889275714)
    {
      v11 = "_64";
    }

    v12 = *v11;
    if (*v11)
    {
      v76 = v11;
      v13 = 3;
      v14 = 2;
    }

    else
    {
      v13 = 1;
      v14 = 3;
    }

    v74 = "fat_arch";
    v78[0] = 3;
    v78[1] = v13;
    v45 = v12 == 0;
    v46 = &v74;
    if (v45)
    {
      v46 = "fat_arch";
    }

    v119[0] = v46;
    v120 = " structs would extend past the end of the file";
    LOBYTE(v123) = v14;
    HIBYTE(v123) = 3;
    malformedError(v116, v119);
  }

  v15 = 0;
  v16 = v10;
  do
  {
    llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(v119, a1, v15);
    v17 = *(v119[0] + 48);
    v18 = HIDWORD(v120);
    v19 = v121;
    v20 = v125;
    if (v17 == -889275714)
    {
      v21 = HIDWORD(v120);
    }

    else
    {
      v21 = v125;
    }

    if (v17 != -889275714)
    {
      v19 = v126;
    }

    if (v19 + v21 > v7)
    {
      v107[0] = "offset plus size of cputype (";
      v109 = 259;
      v45 = v17 == -889275714;
      v47 = 32;
      if (v45)
      {
        v47 = 12;
      }

      v48 = *(v119 + v47);
      v106 = 264;
      LODWORD(v105[0]) = v48;
      llvm::operator+(v107, v105, v110);
      v103[0] = ") cpusubtype (";
      v104 = 259;
      llvm::operator+(v110, v103, v113);
      v49 = 36;
      if (*(v119[0] + 48) == -889275714)
      {
        v49 = 16;
      }

      v50 = *(v119 + v49) & 0xFFFFFF;
      v102 = 264;
      LODWORD(v101[0]) = v50;
      llvm::operator+(v113, v101, v116);
      v99[0] = ") extends past the end of the file";
      v100 = 259;
      llvm::operator+(v116, v99, &v74);
      malformedError(v96, &v74);
    }

    if (v17 == -889275714)
    {
      v22 = v122;
    }

    else
    {
      v22 = v127;
    }

    if (v22 >= 0x10)
    {
      v99[0] = "align (2^";
      v100 = 259;
      v97 = 264;
      LODWORD(v96[0]) = v22;
      llvm::operator+(v99, v96, v101);
      v94[0] = ") too large for cputype (";
      v95 = 259;
      llvm::operator+(v101, v94, v103);
      v51 = 32;
      if (*(v119[0] + 48) == -889275714)
      {
        v51 = 12;
      }

      v52 = *(v119 + v51);
      v93 = 264;
      LODWORD(v92[0]) = v52;
      llvm::operator+(v103, v92, v105);
      v90[0] = ") cpusubtype (";
      v91 = 259;
      llvm::operator+(v105, v90, v107);
      v53 = 36;
      if (*(v119[0] + 48) == -889275714)
      {
        v53 = 16;
      }

      v54 = *(v119 + v53) & 0xFFFFFF;
      v89 = 264;
      LODWORD(v88[0]) = v54;
      llvm::operator+(v107, v88, v110);
      v86[0] = ") (maximum 2^";
      v87 = 259;
      llvm::operator+(v110, v86, v113);
      v85 = 264;
      v55 = 15;
LABEL_103:
      LODWORD(v84[0]) = v55;
      llvm::operator+(v113, v84, v116);
      v82[0] = ")";
      v83 = 259;
      llvm::operator+(v116, v82, &v74);
      malformedError(&v98, &v74);
    }

    if (v17 == -889275714)
    {
      if ((~(-1 << v122) & HIDWORD(v120)) == 0)
      {
        v20 = HIDWORD(v120);
        goto LABEL_29;
      }

      v99[0] = "offset: ";
      v100 = 259;
      goto LABEL_95;
    }

    if ((v125 & ~(-1 << v127)) != 0)
    {
      v99[0] = "offset: ";
      v100 = 259;
      v18 = v125;
LABEL_95:
      v81 = v18;
      v97 = 268;
      v96[0] = &v81;
      llvm::operator+(v99, v96, v101);
      v94[0] = " for cputype (";
      v95 = 259;
      llvm::operator+(v101, v94, v103);
      v61 = 32;
      if (*(v119[0] + 48) == -889275714)
      {
        v61 = 12;
      }

      v62 = *(v119 + v61);
      v93 = 264;
      LODWORD(v92[0]) = v62;
      llvm::operator+(v103, v92, v105);
      v90[0] = ") cpusubtype (";
      v91 = 259;
      llvm::operator+(v105, v90, v107);
      v63 = 36;
      if (*(v119[0] + 48) == -889275714)
      {
        v63 = 16;
      }

      v64 = *(v119 + v63) & 0xFFFFFF;
      v89 = 264;
      LODWORD(v88[0]) = v64;
      llvm::operator+(v107, v88, v110);
      v86[0] = ") not aligned on it's alignment (2^";
      v87 = 259;
      llvm::operator+(v110, v86, v113);
      if (*(v119[0] + 48) == -889275714)
      {
        v65 = &v122;
      }

      else
      {
        v65 = &v127;
      }

      v55 = *v65;
      v85 = 264;
      goto LABEL_103;
    }

LABEL_29:
    if (v20 < v16)
    {
      v103[0] = "cputype (";
      v104 = 259;
      v45 = v17 == -889275714;
      v56 = 32;
      if (v45)
      {
        v56 = 12;
      }

      v57 = *(v119 + v56);
      v102 = 264;
      LODWORD(v101[0]) = v57;
      llvm::operator+(v103, v101, v105);
      v99[0] = ") cpusubtype (";
      v100 = 259;
      llvm::operator+(v105, v99, v107);
      v58 = 36;
      if (*(v119[0] + 48) == -889275714)
      {
        v58 = 16;
      }

      v59 = *(v119 + v58) & 0xFFFFFF;
      v97 = 264;
      LODWORD(v96[0]) = v59;
      llvm::operator+(v107, v96, v110);
      v94[0] = ") offset ";
      v95 = 259;
      llvm::operator+(v110, v94, v113);
      if (*(v119[0] + 48) == -889275714)
      {
        v60 = HIDWORD(v120);
      }

      else
      {
        v60 = v125;
      }

      v86[0] = v60;
      v93 = 268;
      v92[0] = v86;
      llvm::operator+(v113, v92, v116);
      v90[0] = " overlaps universal headers";
      v91 = 259;
      llvm::operator+(v116, v90, &v74);
      malformedError(v88, &v74);
    }

    ++v15;
    v23 = *(a1 + 52);
  }

  while (v15 < v23);
  if (v23)
  {
    v24 = 0;
    do
    {
      llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(v119, a1, v24++);
      v25 = *(a1 + 52);
      if (v24 < v25)
      {
        v26 = v119[0];
        v27 = HIDWORD(v120);
        v70 = v124;
        v71 = v120;
        v28 = v121;
        v69 = v24;
        v29 = v125;
        v30 = v126;
        do
        {
          llvm::object::MachOUniversalBinary::ObjectForArch::ObjectForArch(&v74, a1, v24);
          v31 = *(v26 + 48);
          v32 = 32;
          if (v31 == -889275714)
          {
            v32 = 12;
          }

          v33 = *(v119 + v32);
          v34 = *(v74 + 12);
          v35 = &v75;
          if (v34 != -889275714)
          {
            v35 = v78;
          }

          v36 = *v35;
          if (v33 == v36)
          {
            v37 = v71;
            if (v31 != -889275714)
            {
              v37 = v70;
            }

            v38 = 36;
            if (v34 == -889275714)
            {
              v38 = 16;
            }

            if (((v37 ^ *(&v74 + v38)) & 0xFFFFFF) == 0)
            {
              v107[0] = "contains two of the same architecture (cputype (";
              v108 = v33;
              v109 = 2051;
              v110[0] = v107;
              v111 = ") cpusubtype (";
              v112 = 770;
              v113[0] = v110;
              v114 = (v37 & 0xFFFFFF);
              v115 = 2050;
              v116[0] = v113;
              v117 = "))";
              v118 = 770;
              malformedError(v105, v116);
            }
          }

          if (v31 == -889275714)
          {
            v39 = v27;
          }

          else
          {
            v39 = v29;
          }

          v40 = HIDWORD(v76);
          if (v34 != -889275714)
          {
            v40 = v79;
          }

          if (v39 >= v40)
          {
            v41 = v77;
            if (v34 != -889275714)
            {
              v41 = v80;
            }

            if (v39 < v41 + v40)
            {
              if (v31 == -889275714)
              {
                v42 = v28;
              }

              else
              {
                v42 = v30;
              }

LABEL_108:
              v84[0] = "cputype (";
              v84[2] = v33;
              v85 = 2051;
              v86[0] = v84;
              v86[2] = ") cpusubtype (";
              v87 = 770;
              v45 = v31 == -889275714;
              v66 = v71;
              if (!v45)
              {
                v66 = v70;
              }

              v88[0] = v86;
              v88[2] = v66 & 0xFFFFFF;
              v89 = 2050;
              v90[0] = v88;
              v90[2] = ") at offset ";
              v91 = 770;
              v98 = v39;
              v92[0] = v90;
              v92[2] = &v98;
              v93 = 3074;
              v94[0] = v92;
              v94[2] = " with a size of ";
              v95 = 770;
              v81 = v42;
              v96[0] = v94;
              v96[2] = &v81;
              v97 = 3074;
              v99[0] = v96;
              v99[2] = ", overlaps cputype (";
              v100 = 770;
              v101[0] = v99;
              v101[2] = v36;
              v102 = 2050;
              v103[0] = v101;
              v103[2] = ") cpusubtype (";
              v104 = 770;
              v45 = v34 == -889275714;
              v67 = 36;
              if (v45)
              {
                v67 = 16;
              }

              v68 = *(&v74 + v67) & 0xFFFFFF;
              v105[0] = v103;
              v105[2] = v68;
              v106 = 2050;
              v107[0] = v105;
              v108 = ") at offset ";
              v109 = 770;
              v72 = v41;
              v73 = v40;
              v110[0] = v107;
              v111 = &v73;
              v112 = 3074;
              v113[0] = v110;
              v114 = " with a size of ";
              v115 = 770;
              v116[0] = v113;
              v117 = &v72;
              v118 = 3074;
              malformedError(v82, v116);
            }
          }

          if (v31 == -889275714)
          {
            v42 = v28;
          }

          else
          {
            v42 = v30;
          }

          v43 = v42 + v39;
          if (v42 + v39 > v40)
          {
            v41 = v77;
            if (v34 != -889275714)
            {
              v41 = v80;
            }

            if (v43 < v41 + v40)
            {
              goto LABEL_108;
            }
          }

          if (v39 <= v40)
          {
            v41 = v77;
            if (v34 != -889275714)
            {
              v41 = v80;
            }

            if (v43 >= v41 + v40)
            {
              goto LABEL_108;
            }
          }

          ++v24;
          v25 = *(a1 + 52);
        }

        while (v24 < v25);
        v24 = v69;
      }
    }

    while (v24 < v25);
  }

  *a3 = 0;
  return a1;
}

void malformedError(uint64_t *a1, llvm::Twine *a2)
{
  llvm::Twine::str(a2, &v6);
  v2 = std::string::insert(&v6, 0, "truncated or malformed fat file (");
  v3 = v2->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v9, ")");
  v5 = v4->__r_.__value_.__r.__words[2];
  *__p = *&v4->__r_.__value_.__l.__data_;
  v8 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  operator new();
}

uint64_t llvm::object::MinidumpFile::getDataSlice(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 + a4 > a3)
  {
    operator new();
  }

  result = a2 + a4;
  *(a1 + 16) &= ~1u;
  *(a1 + 8) = a5;
  *a1 = a2 + a4;
  return result;
}

uint64_t llvm::object::MinidumpFile::create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  if (v3 < 0x20)
  {
    operator new();
  }

  v4 = *a1;
  if (**a1 != 1347241037)
  {
    operator new();
  }

  if (*(v4 + 2) != 42899)
  {
    operator new();
  }

  v5 = v4[2];
  v6 = 12 * v5;
  result = llvm::object::MinidumpFile::getDataSlice(&v23, v4, v3, v4[3], 12 * v5);
  v8 = v23;
  if (v24)
  {
    *(a2 + 8) |= 1u;
    *a2 = v8;
    return result;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (!v5)
  {
LABEL_29:
    operator new();
  }

  v9 = 0;
  v10 = 0;
  v17 = *(a2 + 8);
  v11 = v23 + 1;
  while (1)
  {
    v12 = *(v11 - 1);
    llvm::object::MinidumpFile::getDataSlice(&v21, v4, v3, v11[1], *v11);
    if (v22)
    {
      break;
    }

    if (v12)
    {
      if (v12 >= 0xFFFFFFFE)
      {
        operator new();
      }

LABEL_16:
      v23 = 0;
      v13 = v20;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>,llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>::LookupBucketFor<llvm::minidump::StreamType>(v9, v20, v12, &v23))
      {
        operator new();
      }

      if (4 * v19 + 4 >= 3 * v13)
      {
        v15 = 2 * v13;
      }

      else
      {
        if (v13 + ~v19 - HIDWORD(v19) > v13 >> 3)
        {
LABEL_19:
          v14 = v23;
          LODWORD(v19) = v19 + 1;
          if (*v23 != -1)
          {
            --HIDWORD(v19);
          }

          *v23 = v12;
          *(v14 + 1) = v10;
          goto LABEL_22;
        }

        v15 = v13;
      }

      llvm::DenseMap<llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>::grow(&v18, v15);
      v23 = 0;
      v9 = v18;
      llvm::DenseMapBase<llvm::DenseMap<llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>,llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>::LookupBucketFor<llvm::minidump::StreamType>(v18, v20, v12, &v23);
      goto LABEL_19;
    }

    if (*v11)
    {
      goto LABEL_16;
    }

LABEL_22:
    ++v10;
    v11 += 3;
    v6 -= 12;
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  v16 = v21;
  *(a2 + 8) = v17 | 1;
  *a2 = v16;
  return MEMORY[0x277C69E30](v18, 8);
}

void llvm::object::MinidumpFile::~MinidumpFile(llvm::object::MinidumpFile *this)
{
  *this = &unk_2883EF140;
  MEMORY[0x277C69E30](*(this + 9), 8);
}

{
  *this = &unk_2883EF140;
  MEMORY[0x277C69E30](*(this + 9), 8);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>,llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>::LookupBucketFor<llvm::minidump::StreamType>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 3) + 4;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vdupq_n_s64(v11);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1210)));
        if (vuzp1_s16(v18, *v15.i8).u8[0])
        {
          *(v16 - 8) = -1;
        }

        if (vuzp1_s16(v18, *&v15).i8[2])
        {
          *(v16 - 4) = -1;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2750C1830)))).i32[1])
        {
          *v16 = -1;
          *(v16 + 4) = -1;
        }

        v11 += 4;
        v16 += 64;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v19 = 16 * v3;
      v20 = v4;
      do
      {
        v21 = *v20;
        if (*v20 <= 0xFFFFFFFD)
        {
          v32 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>,llvm::minidump::StreamType,unsigned long,llvm::DenseMapInfo<llvm::minidump::StreamType,void>,llvm::detail::DenseMapPair<llvm::minidump::StreamType,unsigned long>>::LookupBucketFor<llvm::minidump::StreamType>(*a1, *(a1 + 16), v21, &v32);
          v22 = v32;
          *v32 = *v20;
          *(v22 + 1) = *(v20 + 8);
          ++*(a1 + 8);
        }

        v20 += 16;
        v19 -= 16;
      }

      while (v19);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
    v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
    v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 3) + 4;
    v28 = vdupq_n_s64(v26);
    v29 = result + 32;
    do
    {
      v30 = vdupq_n_s64(v24);
      v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_2750C1210)));
      if (vuzp1_s16(v31, *v28.i8).u8[0])
      {
        *(v29 - 8) = -1;
      }

      if (vuzp1_s16(v31, *&v28).i8[2])
      {
        *(v29 - 4) = -1;
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_2750C1830)))).i32[1])
      {
        *v29 = -1;
        *(v29 + 4) = -1;
      }

      v24 += 4;
      v29 += 64;
    }

    while (v27 != v24);
  }

  return result;
}

void llvm::ModuleSymbolTable::addModule(llvm::ModuleSymbolTable *this, llvm::Module *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (!*this)
  {
    *this = a2;
  }

  v4 = *(a2 + 4);
  v5 = vdupq_n_s64(a2);
  v14 = vaddq_s64(v5, xmmword_2750C3F90);
  v13 = vaddq_s64(v5, xmmword_2750C3FA0);
  v6 = a2 + 24;
  v7 = *(a2 + 2);
  v8 = a2 + 8;
  v9 = *(a2 + 6);
  v10 = a2 + 40;
  v11 = *(a2 + 8);
  v12 = a2 + 56;
  v16 = v4;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  v20.i64[0] = a2 + 24;
  v20.i64[1] = a2 + 8;
  v21.i64[0] = a2 + 40;
  v21.i64[1] = a2 + 56;
  while (v4 != v6 || v7 != v8 || v9 != v10 || v11 != v12 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v20, v13), vceqq_s64(v21, v14)))) & 1) == 0)
  {
    v22[0] = llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::get<0ul,1ul,2ul,3ul>(&v16);
    std::vector<llvm::PointerUnion<llvm::GlobalValue *,std::pair<std::string,unsigned int> *>>::push_back[abi:nn200100](this + 104, v22);
    llvm::concat_iterator<llvm::GlobalValue,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,false>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,false>>::increment<0ul,1ul,2ul,3ul>(&v16);
    v4 = v16;
    v7 = v17;
    v9 = v18;
    v11 = v19;
  }

  v15 = this;
  v16 = llvm::function_ref<void ()(llvm::StringRef,llvm::object::BasicSymbolRef::Flags)>::callback_fn<llvm::ModuleSymbolTable::addModule(llvm::Module *)::$_0>;
  v17 = &v15;
  v22[0] = &v16;
  initializeRecordStreamer(a2, llvm::function_ref<void ()(llvm::RecordStreamer &)>::callback_fn<llvm::ModuleSymbolTable::CollectAsmSymbols(llvm::Module const&,llvm::function_ref<void ()(llvm::StringRef,llvm::object::BasicSymbolRef::Flags)>)::$_0>, v22);
}

void std::vector<llvm::PointerUnion<llvm::GlobalValue *,std::pair<std::string,unsigned int> *>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void initializeRecordStreamer(uint64_t a1, void (*a2)(uint64_t, std::string *), uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 111);
  if (v3 >= 0)
  {
    v4 = a1 + 88;
  }

  else
  {
    v4 = *(a1 + 88);
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 111);
  }

  else
  {
    v5 = *(a1 + 96);
  }

  if (v5)
  {
    v52[0] = 0;
    v52[1] = 0;
    v53 = 0;
    v66 = 260;
    *&v64 = a1 + 208;
    llvm::Triple::Triple(v50, &v64);
    v7 = llvm::TargetRegistry::lookupTarget(v50, v52);
    v8 = v7;
    if (v51 >= 0)
    {
      v9 = v50;
    }

    else
    {
      v9 = v50[0];
    }

    if (v51 >= 0)
    {
      v10 = v51;
    }

    else
    {
      v10 = v50[1];
    }

    MCRegInfo = llvm::Target::createMCRegInfo(v7, v9, v10);
    if (MCRegInfo)
    {
      v12 = MCRegInfo;
      v39[0] = 2048;
      v41 = 2;
      if (v51 >= 0)
      {
        v13 = v50;
      }

      else
      {
        v13 = v50[0];
      }

      if (v51 >= 0)
      {
        v14 = v51;
      }

      else
      {
        v14 = v50[1];
      }

      v40 = 2;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      memset(v49, 0, sizeof(v49));
      MCAsmInfo = llvm::Target::createMCAsmInfo(v8, MCRegInfo, v13, v14, v39);
      if (MCAsmInfo)
      {
        v16 = MCAsmInfo;
        if (v51 >= 0)
        {
          v17 = v50;
        }

        else
        {
          v17 = v50[0];
        }

        if (v51 >= 0)
        {
          v18 = v51;
        }

        else
        {
          v18 = v50[1];
        }

        MCSubtargetInfo = llvm::Target::createMCSubtargetInfo(v8, v17, v18, "", 0, "", 0);
        if (MCSubtargetInfo)
        {
          v20 = MCSubtargetInfo;
          v21 = v8[8];
          if (v21 && v21())
          {
            v66 = 261;
            *&v64 = "";
            *(&v64 + 1) = 0;
            __str.__r_.__value_.__r.__words[0] = &v64;
            v22 = operator new(24, &__str);
            *v22 = &unk_2883EB078;
            *(v22 + 1) = v4;
            *(v22 + 2) = v4 + v5;
            v38 = 0;
            memset(v37, 0, sizeof(v37));
            v65 = 0;
            v64 = v22;
            std::vector<llvm::SourceMgr::SrcBuffer>::push_back[abi:nn200100](v37, &v64);
            llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v64);
            llvm::MCContext::MCContext(&v64, v50, v16, v12, v20, v37, 0, 1, 0, 0);
            v23 = v8[7];
            if (v23)
            {
              v24 = v23(&v64, 0, 0);
              ModuleFlag = llvm::Module::getModuleFlag(a1, "SDK Version", 0xBuLL);
              *(v24 + 872) = getSDKVersionMD(ModuleFlag);
              *(v24 + 880) = v26;
              v67 = v24;
              v27 = llvm::Module::getModuleFlag(a1, "darwin.target_variant.triple", 0x1CuLL);
              if (v27 && **(v27 + 8))
              {
                v28 = llvm::Module::getModuleFlag(a1, "darwin.target_variant.triple", 0x1CuLL);
                if (v28)
                {
                  v29 = *(v28 + 8);
                  v32 = *v29;
                  v31 = v29 + 3;
                  v30 = v32;
                }

                else
                {
                  v30 = 0;
                  v31 = &str_35;
                }

                v36 = 261;
                v35[0] = v31;
                v35[1] = v30;
                llvm::Triple::Triple(&__str, v35);
                v33 = (v24 + 888);
                if (*(v24 + 936) == 1)
                {
                  std::string::operator=(v33, &__str);
                  *(v24 + 912) = v55;
                  *(v24 + 928) = v56;
                }

                else
                {
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(v33, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    *&v33->__r_.__value_.__l.__data_ = *&__str.__r_.__value_.__l.__data_;
                    *(v24 + 904) = *(&__str.__r_.__value_.__l + 2);
                  }

                  *(v24 + 912) = v55;
                  *(v24 + 928) = v56;
                  *(v24 + 936) = 1;
                }

                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }

              llvm::MCStreamer::MCStreamer(&__str, &v64);
              __str.__r_.__value_.__r.__words[0] = &unk_2883EF190;
              v57 = a1;
              v59 = 0;
              v58 = 0;
              v62 = 0;
              v60 = 0x1000000000;
              v61 = 0;
              v63 = 0;
              v34 = v8[26];
              if (v34)
              {
                v34(&__str);
              }

              llvm::createMCAsmParser(v37, &v64, &__str, v16, 0);
            }

            operator new();
          }

          (*(*v20 + 8))(v20);
        }

        (*(*v16 + 8))(v16);
      }

      *&v64 = &v49[8];
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v64);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(*(&v46 + 1));
      }

      if (SBYTE7(v46) < 0)
      {
        operator delete(v45);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(*(&v43 + 1));
      }

      if (SBYTE7(v43) < 0)
      {
        operator delete(v42);
      }

      MEMORY[0x277C69E30](*(v12 + 184), 4);
      MEMORY[0x277C69E30](*(v12 + 160), 4);
      MEMORY[0x277C69E40](v12, 0x10F0C4031312594);
    }

    if (v51 < 0)
    {
      operator delete(v50[0]);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[0]);
    }
  }
}

void llvm::ModuleSymbolTable::printSymbolName(uint64_t a1, llvm::raw_ostream *this, uint64_t a3)
{
  v4 = a3 & 0xFFFFFFFFFFFFFFF8;
  if ((a3 & 4) != 0)
  {
    v7 = *(v4 + 23);
    if (v7 >= 0)
    {
      v8 = (a3 & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v8 = *v4;
    }

    if (v7 >= 0)
    {
      v9 = *(v4 + 23);
    }

    else
    {
      v9 = *(v4 + 8);
    }

    llvm::raw_ostream::write(this, v8, v9);
  }

  else
  {
    if ((*(v4 + 32) & 0x300) == 0x100)
    {
      v6 = *(this + 4);
      if ((*(this + 3) - v6) > 5)
      {
        *(v6 + 4) = 24432;
        *v6 = 1835622239;
        *(this + 4) += 6;
      }

      else
      {
        llvm::raw_ostream::write(this, "__imp_", 6uLL);
      }
    }

    llvm::Mangler::getNameWithPrefix((a1 + 128), this, v4, 0);
  }
}

uint64_t llvm::ModuleSymbolTable::getSymbolFlags(uint64_t a1, uint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFFFFFFFFF8);
  if ((a2 & 4) != 0)
  {
    return *(v2 + 6);
  }

  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if ((v3 & 0xF) == 1)
  {
    v5 = 1;
    goto LABEL_15;
  }

  if (*(v2 + 16))
  {
    if (v4 == 3 && (*(v2 + 5) & 0x7FFFFFF) == 0)
    {
      v5 = 1;
      v4 = 3;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if ((v3 & 0x1000000) != 0 || v2[9] != (v2 + 9))
  {
LABEL_12:
    if ((v3 & 0x30) == 0x10)
    {
      v5 = ((v3 & 0xFu) - 7 > 1) << 9;
    }

    else
    {
      v5 = 0;
    }

LABEL_15:
    v7 = v2 == 0;
    if (v2)
    {
      if (v4 == 3)
      {
        v7 = 0;
        if (v2[10])
        {
          v5 |= 0x400u;
        }
      }
    }

    goto LABEL_19;
  }

  v7 = v2 == 0;
  v5 = 1;
LABEL_19:
  v22[0] = 0;
  v22[1] = 0;
  v23 = 0;
  v8 = findBaseObject<llvm::GlobalValue::getAliaseeObject(void)::$_0>(v2, v22);
  MEMORY[0x277C69E30](v22[0], 8);
  if (v8 && (*(v8 + 16) | 2) == 2)
  {
    v5 |= 0x800u;
  }

  if (*(v2 + 16) == 1)
  {
    v9 = v5 | 0x20;
  }

  else
  {
    v9 = v5;
  }

  v10 = *(v2 + 8);
  v11 = v10 & 0xF;
  if (v11 == 8)
  {
    v9 |= 0x80u;
  }

  if ((v11 - 7) >= 2)
  {
    v9 |= 2u;
  }

  if (v11 == 10)
  {
    v6 = v9 | 0x10;
  }

  else
  {
    v6 = v9;
  }

  if ((v10 & 0xE) == 2 || (v10 & 0xE) == 4 || llvm::GlobalValue::hasExternalWeakLinkage(v2))
  {
    v6 = v6 | 4;
  }

  if ((*(v2 + 23) & 0x10) != 0)
  {
    ValueName = llvm::Value::getValueName(v2);
    if (*ValueName >= 5uLL && *(ValueName + 16) == 1836477548 && *(ValueName + 20) == 46)
    {
      return v6 | 0x80;
    }
  }

  v14 = *(v2 + 16) != 3 || v7;
  if ((v14 & 1) == 0 && (*(v2 + 34) & 0x80) != 0)
  {
    v15 = ***v2;
    v22[0] = v2;
    v16 = llvm::DenseMapBase<llvm::DenseMap<llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>,llvm::GlobalValue const*,llvm::StringRef,llvm::DenseMapInfo<llvm::GlobalValue const*,void>,llvm::detail::DenseMapPair<llvm::GlobalValue const*,llvm::StringRef>>::FindAndConstruct((v15 + 2552), v22);
    if (v16[2] == 13)
    {
      v17 = v16[1];
      v18 = 0x6C6C766D2E6D6574;
      v19 = bswap64(*v17);
      if (v19 == 0x6C6C766D2E6D6574 && (v18 = 0x6D65746164617461, v19 = bswap64(*(v17 + 5)), v19 == 0x6D65746164617461))
      {
        v20 = 0;
      }

      else if (v19 < v18)
      {
        v20 = -1;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        return v6;
      }

      else
      {
        return v6 | 0x80;
      }
    }
  }

  return v6;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>,llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*a1 + 16);
    do
    {
      if ((*(v3 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 1);
        if (v4)
        {
          *v3 = v4;
          operator delete(v4);
        }
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

void llvm::function_ref<void ()(llvm::StringRef,llvm::object::BasicSymbolRef::Flags)>::callback_fn<llvm::ModuleSymbolTable::addModule(llvm::Module *)::$_0>(uint64_t *a1, const void *a2, size_t a3, int a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((*a1 + 8), 32, 3);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v9 = v8;
  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v11) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  *v9 = __dst;
  *(v9 + 16) = v11;
  *(v9 + 24) = a4;
  v12[0] = v9 | 4;
  std::vector<llvm::PointerUnion<llvm::GlobalValue *,std::pair<std::string,unsigned int> *>>::push_back[abi:nn200100](v7 + 104, v12);
}

void llvm::function_ref<void ()(llvm::RecordStreamer &)>::callback_fn<llvm::ModuleSymbolTable::CollectAsmSymbols(llvm::Module const&,llvm::function_ref<void ()(llvm::StringRef,llvm::object::BasicSymbolRef::Flags)>)::$_0>(uint64_t a1, uint64_t a2)
{
  llvm::RecordStreamer::flushSymverDirectives(a2);
  v4 = *(a2 + 312);
  v5 = *(a2 + 320);
  if (v5)
  {
      ;
    }
  }

  else
  {
    i = *(a2 + 312);
  }

  v8 = (v4 + 8 * v5);
  if (i != v8)
  {
    v9 = *i;
    do
    {
      v10 = *(v9 + 8) - 1;
      if (v10 > 5)
      {
        v11 = 2048;
      }

      else
      {
        v11 = dword_2750C78F8[v10];
      }

      (**a1)(*(*a1 + 8), v9 + 16, *v9, v11);
      do
      {
        v12 = i[1];
        ++i;
        v9 = v12;
        if (v12)
        {
          v13 = v9 == -8;
        }

        else
        {
          v13 = 1;
        }
      }

      while (v13);
    }

    while (i != v8);
  }
}

void *llvm::object::ObjectFile::getSymbolValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 40))(&v8);
  if (v9)
  {
    v7 = v8;
    if (v8)
    {
      *(a3 + 8) |= 1u;
      *a3 = v7;
      return result;
    }
  }

  else
  {
    if (v8)
    {
      *(a3 + 8) &= ~1u;
      *a3 = 0;
      return result;
    }

    if ((v8 & 0x10) != 0)
    {
      result = llvm::object::ObjectFile::getCommonSymbolSize(a1, a2);
      goto LABEL_9;
    }
  }

  result = (*(*a1 + 96))(a1, a2);
LABEL_9:
  *(a3 + 8) &= ~1u;
  *a3 = result;
  return result;
}

llvm::raw_ostream *llvm::object::ObjectFile::printSymbolName@<X0>(uint64_t a1@<X0>, llvm::raw_ostream *a2@<X1>, const void **a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  result = (*(*a1 + 80))(v7);
  if (v8)
  {
    *a3 = v7[0];
  }

  else
  {
    result = llvm::raw_ostream::operator<<(a2, v7[0], v7[1]);
    v6 = v8;
    *a3 = 0;
    if (v6)
    {
      result = v7[0];
      v7[0] = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t llvm::object::ObjectFile::isSectionBitcode(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  (*(*a1 + 144))(v4);
  if (v5)
  {
    v3 = v4[0];
    v4[0] = 0;
    llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    if (v5)
    {
      result = v4[0];
      v4[0] = 0;
      if (!result)
      {
        return result;
      }

      (*(*result + 8))(result);
    }

    return 0;
  }

  if (v4[1] != 7)
  {
    return 0;
  }

  return *v4[0] == 1986817070 && *(v4[0] + 3) == 1667394934;
}

uint64_t llvm::object::ObjectFile::hasDebugInfo(llvm::object::ObjectFile *this)
{
  v2 = (*(*this + 352))(this);
  v4 = v3;
  v5 = (*(*this + 360))(this);
  v13 = v2;
  v14 = v4;
  if (v4 == v6 && v2 == v5)
  {
    return 0;
  }

  v8 = v5;
  v9 = v6;
  do
  {
    v10 = (*(*v4 + 264))(v4, v2);
    if (v10)
    {
      break;
    }

    (*(*v14 + 136))(v14, &v13);
    v2 = v13;
    v4 = v14;
  }

  while (v14 != v9 || v13 != v8);
  return v10;
}

uint64_t llvm::object::ObjectFile::getRelocatedSection@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) &= ~1u;
  *a3 = a2;
  *(a3 + 8) = result;
  return result;
}

double llvm::object::ObjectFile::makeTriple@<D0>(uint64_t *__return_ptr a1@<X8>, llvm::object::ObjectFile *this@<X0>)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v4 = (*(*this + 392))(this);
  v5 = v4;
  ArchName = llvm::Triple::getArchName(v4, v4, 0);
  llvm::Triple::setArchName(a1, ArchName, v7);
  if ((v5 - 1) <= 1)
  {
    (*(*this + 416))(this, a1);
  }

  v9 = *(this + 2);
  if ((v9 - 17) <= 3)
  {
    v10 = a1;
    v11 = 5;
LABEL_5:

    return llvm::Triple::setObjectFormat(v10, v11);
  }

  if (v9 != 10)
  {
    if ((v9 - 11) > 1)
    {
      return result;
    }

    llvm::Triple::setOSName(a1, &str_85_0, 3);
    v10 = a1;
    v11 = 8;
    goto LABEL_5;
  }

  if ((*(*this + 392))(this) == 35)
  {
    v12 = "thumbv7-windows";
    v13 = 259;
    return llvm::Triple::setTriple(a1, &v12);
  }

  return result;
}

void llvm::object::ObjectFile::createObjectFile(llvm::object *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v15 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    a1 = llvm::identify_magic(*a1, *(a1 + 1));
    a2 = a1;
  }

  switch(a2)
  {
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      v8 = v5[1];
      v13 = *v5;
      v14 = v8;
      llvm::object::ObjectFile::createELFObjectFile(&v13, a3, a4);
      return;
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
      v7 = v5[1];
      v13 = *v5;
      v14 = v7;
      llvm::object::ObjectFile::createMachOObjectFile(&v13);
    case 24:
    case 25:
    case 26:
      v9 = v5[1];
      v13 = *v5;
      v14 = v9;
      llvm::object::COFFObjectFile::create();
    case 28:
      v11 = v5[1];
      v13 = *v5;
      v14 = v11;
      goto LABEL_10;
    case 29:
      v10 = v5[1];
      v13 = *v5;
      v14 = v10;
LABEL_10:
      llvm::object::ObjectFile::createXCOFFObjectFile();
    case 30:
      v12 = v5[1];
      v13 = *v5;
      v14 = v12;
      llvm::object::ObjectFile::createWasmObjectFile();
    default:
      *&v16.__val_ = llvm::object::object_category(a1);
      llvm::errorCodeToError(2, v16, a4);
      *(a4 + 8) |= 1u;
      return;
  }
}

uint64_t llvm::object::OffloadBinary::create@<X0>(llvm::object *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  if (v3 > 0x47)
  {
    v6 = llvm::identify_magic(*a1, v3);
    if (v6 == 34)
    {
      v7 = *a1;
      if ((*a1 & 7) != 0)
      {
        *&v18.__val_ = llvm::object::object_category(v6);
        llvm::errorCodeToError(3, v18, &v14);
        *(a2 + 8) |= 1u;
        result = v14;
      }

      else if (*(v7 + 4) == 1)
      {
        v8 = *(v7 + 8);
        v9 = *(a1 + 1);
        if (v8 <= v9 && (v10 = *(v7 + 16), v10 <= v8 - 40) && *(v7 + 24) <= v8 - 32)
        {
          if (*(v7 + v10 + 24) <= v9 && *(v7 + v10 + 8) <= v9)
          {
            operator new();
          }

          *&v22.__val_ = llvm::object::object_category(v6);
          llvm::errorCodeToError(4, v22, &v11);
          *(a2 + 8) |= 1u;
          result = v11;
        }

        else
        {
          *&v20.__val_ = llvm::object::object_category(v6);
          llvm::errorCodeToError(4, v20, &v12);
          *(a2 + 8) |= 1u;
          result = v12;
        }
      }

      else
      {
        *&v21.__val_ = llvm::object::object_category(v6);
        llvm::errorCodeToError(3, v21, &v13);
        *(a2 + 8) |= 1u;
        result = v13;
      }
    }

    else
    {
      *&v19.__val_ = llvm::object::object_category(v6);
      llvm::errorCodeToError(3, v19, &v15);
      *(a2 + 8) |= 1u;
      result = v15;
    }
  }

  else
  {
    *&v17.__val_ = llvm::object::object_category(a1);
    llvm::errorCodeToError(3, v17, &v16);
    *(a2 + 8) |= 1u;
    result = v16;
  }

  *a2 = result;
  return result;
}

uint64_t llvm::object::OffloadBinary::OffloadBinary(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v5 = a2[1];
  *(a1 + 8) = 8;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *a1 = &unk_2883EF168;
  *(a1 + 48) = 0;
  v35 = a1 + 48;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = (a1 + 72);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v8 = *a2;
  *(a1 + 96) = *a2;
  *(a1 + 104) = a3;
  *(a1 + 112) = a4;
  v9 = *(a4 + 16);
  if (v9)
  {
    v10 = (*(a4 + 8) + v8 + 8);
    v36 = (a1 + 72);
    while (1)
    {
      v11 = *(a1 + 96);
      v12 = *(v10 - 1);
      v13 = v11 + v12;
      if (v11)
      {
        v14 = strlen((v11 + v12));
        v15 = &(*v10)[v11];
        v16 = strlen(v15);
      }

      else
      {
        v14 = 0;
        v16 = 0;
        v15 = *v10;
      }

      *&v38 = v13;
      *(&v38 + 1) = v14;
      v39 = 0;
      v40 = 0;
      v17 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(*(a1 + 48), *(a1 + 64), &v38, &v40);
      v18 = v40;
      if ((v17 & 1) == 0)
      {
        break;
      }

      v19 = *(v40 + 16);
      v20 = *v7;
LABEL_27:
      v33 = &v20[32 * v19];
      *(v33 + 2) = v15;
      *(v33 + 3) = v16;
      v10 += 2;
      if (!--v9)
      {
        return a1;
      }
    }

    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    if (4 * v21 + 4 >= 3 * v22)
    {
      v22 *= 2;
    }

    else if (v22 + ~v21 - *(a1 + 60) > v22 >> 3)
    {
LABEL_10:
      ++*(a1 + 56);
      if (*v18 != -1)
      {
        --*(a1 + 60);
      }

      *v18 = v38;
      *(v18 + 16) = 0;
      v23 = *(a1 + 80);
      v24 = *(a1 + 88);
      if (v23 >= v24)
      {
        v37 = v16;
        v26 = *v7;
        v27 = v23 - v26;
        v28 = (v23 - v26) >> 5;
        v29 = v28 + 1;
        if ((v28 + 1) >> 59)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v30 = v24 - v26;
        if (v30 >> 4 > v29)
        {
          v29 = v30 >> 4;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFE0)
        {
          v31 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          if (!(v31 >> 59))
          {
            operator new();
          }

          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v32 = (32 * v28);
        *v32 = v13;
        v32[1] = v14;
        v32[2] = 0;
        v32[3] = 0;
        v25 = 32 * v28 + 32;
        memcpy(0, v26, v27);
        *(a1 + 72) = 0;
        *(a1 + 80) = v25;
        *(a1 + 88) = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v7 = v36;
        v16 = v37;
      }

      else
      {
        *v23 = v13;
        *(v23 + 1) = v14;
        v25 = (v23 + 32);
        *(v23 + 2) = 0;
        *(v23 + 3) = 0;
      }

      *(a1 + 80) = v25;
      v20 = *(a1 + 72);
      v19 = ((v25 - v20) >> 5) - 1;
      *(v18 + 16) = v19;
      goto LABEL_27;
    }

    llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::grow(v35, v22);
    v40 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(*(a1 + 48), *(a1 + 64), &v38, &v40);
    v18 = v40;
    goto LABEL_10;
  }

  return a1;
}

void llvm::object::OffloadBinary::~OffloadBinary(llvm::object::OffloadBinary *this)
{
  *this = &unk_2883EF168;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  MEMORY[0x277C69E30](*(this + 6), 8);
}

{
  *this = &unk_2883EF168;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  MEMORY[0x277C69E30](*(this + 6), 8);

  JUMPOUT(0x277C69E40);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<unsigned long long const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 24 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -1)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -2;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = a1 + 24 * v8;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
        v11 = v17;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a4 = v9;
  return result;
}

_OWORD *llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10;
      do
      {
        *result = xmmword_2750C1220;
        result = (result + 24);
        v11 -= 24;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = v4;
      do
      {
        if (*v13 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>,llvm::StringRef,unsigned int,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,unsigned int>>::LookupBucketFor<llvm::StringRef>(*a1, *(a1 + 16), v13, &v17);
          v14 = v17;
          *v17 = *v13;
          *(v14 + 4) = *(v13 + 16);
          ++*(a1 + 8);
        }

        v13 += 24;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 24 * v15;
    do
    {
      *result = xmmword_2750C1220;
      result = (result + 24);
      v16 -= 24;
    }

    while (v16);
  }

  return result;
}

uint64_t *llvm::RecordStreamer::markDefined(llvm::RecordStreamer *this, const llvm::MCSymbol *a2)
{
  if ((*a2 & 4) != 0)
  {
    v4 = *(a2 - 1);
    v5 = *v4;
    v2 = v4 + 2;
    v3 = v5;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  result = llvm::StringMap<llvm::RecordStreamer::State,llvm::MallocAllocator>::try_emplace<>((this + 312), v2, v3);
  v7 = *(*result + 8);
  if (v7 <= 6 && ((0x6Fu >> v7) & 1) != 0)
  {
    *(*result + 8) = dword_2750C7910[v7];
  }

  return result;
}

uint64_t *llvm::RecordStreamer::markUsed(llvm::RecordStreamer *this, const llvm::MCSymbol *a2)
{
  if ((*a2 & 4) != 0)
  {
    v4 = *(a2 - 1);
    v5 = *v4;
    v2 = v4 + 2;
    v3 = v5;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  result = llvm::StringMap<llvm::RecordStreamer::State,llvm::MallocAllocator>::try_emplace<>((this + 312), v2, v3);
  v7 = *(*result + 8);
  if (v7 == 5 || v7 == 0)
  {
    *(*result + 8) = 5;
  }

  return result;
}

uint64_t *llvm::RecordStreamer::emitLabel(llvm::RecordStreamer *a1, llvm::MCSymbol *a2)
{
  llvm::MCStreamer::emitLabel(a1, a2, 0);

  return llvm::RecordStreamer::markDefined(a1, a2);
}

uint64_t llvm::RecordStreamer::emitAssignment(llvm::RecordStreamer *a1, const llvm::MCSymbol *a2, const llvm::MCExpr *a3)
{
  llvm::RecordStreamer::markDefined(a1, a2);

  return llvm::MCStreamer::emitAssignment(a1, a2, a3);
}

uint64_t llvm::RecordStreamer::emitSymbolAttribute(llvm::RecordStreamer *this, llvm::MCSymbol *a2, int a3)
{
  switch(a3)
  {
    case 24:
      goto LABEL_4;
    case 16:
LABEL_18:
      llvm::RecordStreamer::markUsed(this, a2);
      return 1;
    case 9:
LABEL_4:
      if ((*a2 & 4) != 0)
      {
        v8 = *(a2 - 1);
        v9 = *v8;
        v6 = v8 + 2;
        v7 = v9;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v10 = llvm::StringMap<llvm::RecordStreamer::State,llvm::MallocAllocator>::try_emplace<>((this + 312), v6, v7);
      v11 = *(*v10 + 8);
      if (v11 <= 5)
      {
        v12 = 1 << v11;
        if ((v12 & 0x23) != 0)
        {
          if (a3 == 24)
          {
            v13 = 6;
          }

          else
          {
            v13 = 1;
          }
        }

        else
        {
          if ((v12 & 0xC) == 0)
          {
            goto LABEL_17;
          }

          if (a3 == 24)
          {
            v13 = 4;
          }

          else
          {
            v13 = 3;
          }
        }

        *(*v10 + 8) = v13;
      }

LABEL_17:
      if (a3 == 16)
      {
        goto LABEL_18;
      }

      break;
  }

  return 1;
}

void llvm::RecordStreamer::emitELFSymverDirective(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  v9 = v25;
  if (v8)
  {
    goto LABEL_7;
  }

  v10 = *(a1 + 344);
  v11 = *(a1 + 352);
  if (4 * v10 + 4 >= 3 * v11)
  {
    v11 *= 2;
    goto LABEL_21;
  }

  if (v11 + ~v10 - *(a1 + 348) <= v11 >> 3)
  {
LABEL_21:
    llvm::DenseMap<llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>::grow(a1 + 336, v11);
    v25 = 0;
    v9 = v25;
  }

  ++*(a1 + 344);
  if (*v9 != -4096)
  {
    --*(a1 + 348);
  }

  *v9 = a2;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0;
LABEL_7:
  v13 = v9[2];
  v12 = v9[3];
  if (v13 >= v12)
  {
    v15 = v9[1];
    v16 = (v13 - v15) >> 4;
    v17 = v16 + 1;
    if ((v16 + 1) >> 60)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v18 = v12 - v15;
    if (v18 >> 3 > v17)
    {
      v17 = v18 >> 3;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF0)
    {
      v19 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>((v9 + 1), v19);
    }

    v20 = (16 * v16);
    *v20 = a3;
    v20[1] = a4;
    v14 = 16 * v16 + 16;
    v21 = v9[1];
    v22 = v9[2] - v21;
    v23 = (16 * v16 - v22);
    memcpy(v23, v21, v22);
    v24 = v9[1];
    v9[1] = v23;
    v9[2] = v14;
    v9[3] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v13 = a3;
    v13[1] = a4;
    v14 = (v13 + 2);
  }

  v9[2] = v14;
}

void llvm::RecordStreamer::flushSymverDirectives(llvm::RecordStreamer *this)
{
  v1 = 0;
  v118[8] = *MEMORY[0x277D85DE8];
  v106 = 0;
  v107 = 0;
  v108 = 0x1000000000;
  v104[0] = 0;
  v104[1] = 0;
  v105 = 0;
  v116 = v118;
  v117 = xmmword_2750C1860;
  v2 = *(this + 38);
  v3 = v2[4];
  v4 = v2[2];
  v5 = v2[6];
  v6 = v2[8];
  v7 = vdupq_n_s64(v2);
  v88 = vaddq_s64(v7, xmmword_2750C3F90);
  v87 = vaddq_s64(v7, xmmword_2750C3FA0);
  v8 = v2 + 3;
  v9 = v2 + 1;
  v10 = v2 + 5;
  v99.n128_u64[0] = v3;
  v99.n128_u64[1] = v4;
  v100 = v5;
  v101 = v6;
  v102.i64[0] = (v2 + 3);
  v102.i64[1] = (v2 + 1);
  v103.i64[0] = (v2 + 5);
  v103.i64[1] = (v2 + 7);
  v90 = v2 + 7;
  v83 = v2 + 5;
  v85 = v2 + 3;
  while (v3 != v8 || v4 != v9 || v5 != v10 || v6 != v90 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v102, v87), vceqq_s64(v103, v88)))) & 1) == 0)
  {
    v11 = 0;
    v115 = 0;
    v113 = 0;
    v111 = 0;
    *&v110 = 0;
    v109 = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<0ul>;
    *(&v110 + 1) = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<1ul>;
    v112 = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<2ul>;
    v114 = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<3ul>;
    do
    {
      v12 = *(&v109 + v11);
      v13 = *(&v109 + v11 + 8);
      v14 = (v99.n128_u64 + (v13 >> 1));
      if (v13)
      {
        v12 = *(*v14 + v12);
      }

      v15 = v12(v14);
      v11 += 16;
    }

    while (!v15);
    v16 = v15;
    if ((*(v15 + 23) & 0x10) != 0)
    {
      *&v117 = 0;
      v17 = *llvm::Value::getValueName(v15) + 1;
      if (*(&v117 + 1) < v17)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v116, v118, v17, 1);
      }

      llvm::Mangler::getNameWithPrefix(v104, &v116, v16, 0);
      v19 = v116;
      v18 = v117;
      v20 = llvm::StringMapImpl::LookupBucketFor(&v106, v116, v117);
      v1 = v106;
      v21 = v20;
      v22 = v106[v20];
      if (v22 == -8)
      {
        LODWORD(v108) = v108 - 1;
      }

      else if (v22)
      {
LABEL_27:
        *(v22 + 8) = v16;
        goto LABEL_28;
      }

      v23 = v9;
      v24 = operator new(v18 + 17, 8uLL);
      v26 = v24;
      v27 = (v24 + 2);
      if (v18)
      {
        memcpy(v24 + 2, v19, v18);
      }

      v27[v18] = 0;
      *v26 = v18;
      v26[1] = 0;
      v1[v21] = v26;
      ++HIDWORD(v107);
      v28 = llvm::StringMapImpl::RehashTable(&v106, v21, v25);
      v1 = v106;
      v29 = v28;
      v9 = v23;
      v10 = v83;
      v8 = v85;
      while (1)
      {
        v22 = v106[v29];
        v30 = !v22 || v22 == -8;
        if (!v30)
        {
          break;
        }

        ++v29;
      }

      goto LABEL_27;
    }

LABEL_28:
    v31 = 0;
    v115 = 0;
    v113 = 0;
    v111 = 0;
    *&v110 = 0;
    v109 = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<0ul>;
    *(&v110 + 1) = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<1ul>;
    v112 = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<2ul>;
    v114 = llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<3ul>;
    do
    {
      v32 = *(&v109 + v31);
      v33 = *(&v109 + v31 + 8);
      v34 = (v99.n128_u64 + (v33 >> 1));
      if (v33)
      {
        v32 = *(*v34 + v32);
      }

      if (v32(v34))
      {
        break;
      }

      v30 = v31 == 48;
      v31 += 16;
    }

    while (!v30);
    v4 = v99.n128_u64[1];
    v3 = v99.n128_u64[0];
    v5 = v100;
    v6 = v101;
  }

  v35 = this;
  if (*(this + 86))
  {
    v36 = *(this + 88);
    if (v36)
    {
      v37 = 32 * v36;
      v38 = *(this + 42);
      while ((*v38 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v38 += 4;
        v37 -= 32;
        if (!v37)
        {
          goto LABEL_111;
        }
      }
    }

    else
    {
      v38 = *(this + 42);
    }

    v39 = *(this + 42) + 32 * v36;
    if (v38 != v39)
    {
      v40 = &v111;
      v81 = v107;
      v84 = v39;
LABEL_44:
      v41 = *v38;
      if ((**v38 & 4) != 0)
      {
        v44 = *(v41 - 1);
        v45 = *v44;
        v42 = v44 + 2;
        v43 = v45;
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

      Key = llvm::StringMapImpl::FindKey(v35 + 39, v42, v43);
      v89 = v41;
      if (Key == -1 || Key == *(v35 + 80))
      {
        v47 = 0;
        goto LABEL_50;
      }

      v47 = *(*(*(v35 + 39) + 8 * Key) + 8);
      v58 = v47 - 1;
      if ((v47 - 1) >= 6 || ((0x2Du >> v58) & 1) == 0)
      {
LABEL_50:
        v48 = 0;
        v91 = (v47 - 2) < 3;
        v49 = 1;
        goto LABEL_51;
      }

      v48 = dword_2750C792C[v58];
      if ((v47 - 2) < 3)
      {
        goto LABEL_75;
      }

      v91 = 0;
      v49 = 0;
LABEL_51:
      if ((*v41 & 4) != 0)
      {
        v52 = *(v41 - 1);
        v53 = *v52;
        v50 = v52 + 2;
        v51 = v53;
      }

      else
      {
        v50 = 0;
        v51 = 0;
      }

      v54 = llvm::ValueSymbolTable::lookup(*(*(v35 + 38) + 112), v50, v51);
      if (!v54)
      {
        if ((*v41 & 4) != 0)
        {
          v59 = *(v41 - 1);
          v60 = *v59;
          v56 = v59 + 2;
          v57 = v60;
        }

        else
        {
          v56 = 0;
          v57 = 0;
        }

        v61 = llvm::StringMapImpl::FindKey(&v106, v56, v57);
        if (v61 == -1 || v61 == v81 || (v54 = *(v1[v61] + 8)) == 0)
        {
LABEL_89:
          v66 = v38[1];
          v67 = v38[2];
          if (v66 != v67)
          {
            v68 = "@";
            if (v91)
            {
              v68 = "@@";
            }

            v86 = v68;
            do
            {
              v98 = *v66;
              llvm::StringRef::split(&v98, "@@@", 3uLL, &v95);
              v69 = v40;
              v109 = v40;
              v110 = xmmword_2750C1290;
              if (v97 && *v96 != 64)
              {
                v94 = 773;
                v92 = v95;
                v93 = v86;
                v99.n128_u64[0] = &v92;
                v100 = v96;
                v101 = v97;
                v102.i16[0] = 1282;
                v98.n128_u64[0] = llvm::Twine::toStringRef(&v99, &v109);
                v98.n128_u64[1] = v70;
              }

              v71 = *(v35 + 1);
              v102.i16[0] = 261;
              v99 = v98;
              Symbol = llvm::MCContext::getOrCreateSymbol(v71, &v99);
              v73 = *(this + 1);
              v74 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v73 + 184), 24, 3);
              v75 = v74;
              v76 = *(v73 + 144);
              v35 = this;
              if (*(v76 + 18))
              {
                v77 = 0x10000;
              }

              else
              {
                v77 = 0;
              }

              *v74 = 2;
              *(v74 + 1) = v77 | (*(v74 + 4) << 24);
              *(v74 + 8) = 0;
              *(v74 + 16) = v89;
              if (v91)
              {
                llvm::RecordStreamer::markDefined(this, Symbol);
              }

              llvm::MCStreamer::emitAssignment(this, Symbol, v75);
              if (v48)
              {
                (*(*this + 296))(this, Symbol, v48);
              }

              v40 = v69;
              if (v109 != v69)
              {
                free(v109);
              }

              ++v66;
            }

            while (v66 != v67);
          }

          for (v38 += 4; v38 != v84; v38 += 4)
          {
            if ((*v38 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              if (v38 != v84)
              {
                goto LABEL_44;
              }

              goto LABEL_111;
            }
          }

          goto LABEL_111;
        }
      }

      if (v49)
      {
        v55 = *(v54 + 32) & 0xF;
        if (v55)
        {
          if ((v55 - 7) >= 2)
          {
            v62 = v55 - 2;
            if (v62 > 8)
            {
              v48 = 0;
            }

            else
            {
              v48 = dword_2750C7944[v62];
            }
          }

          else
          {
            v48 = 17;
          }
        }

        else
        {
          v48 = 9;
        }
      }

      if (v91)
      {
LABEL_75:
        v63 = 1;
LABEL_88:
        v91 = v63;
        goto LABEL_89;
      }

      if ((*(v54 + 32) & 0xF) == 1)
      {
        v91 = 0;
        goto LABEL_89;
      }

      if (*(v54 + 16))
      {
        if (*(v54 + 16) == 3)
        {
          v64 = (*(v54 + 20) & 0x7FFFFFF) == 0;
LABEL_84:
          v65 = v64;
LABEL_87:
          v63 = v65 ^ 1;
          goto LABEL_88;
        }
      }

      else if (*(v54 + 72) == v54 + 72)
      {
        v64 = (*(v54 + 32) & 0x1000000) == 0;
        goto LABEL_84;
      }

      v65 = 0;
      goto LABEL_87;
    }
  }

LABEL_111:
  if (v116 != v118)
  {
    free(v116);
  }

  MEMORY[0x277C69E30](v104[0], 8);
  if (HIDWORD(v107))
  {
    v78 = v107;
    if (v107)
    {
      v79 = v1;
      do
      {
        if (*v79 != -8 && *v79 != 0)
        {
          MEMORY[0x277C69E30]();
        }

        ++v79;
        --v78;
      }

      while (v78);
    }
  }

  free(v1);
}

void llvm::RecordStreamer::~RecordStreamer(llvm::RecordStreamer *this)
{
  *this = &unk_2883EF190;
  llvm::DenseMapBase<llvm::DenseMap<llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>,llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>::destroyAll(this + 84);
  MEMORY[0x277C69E30](*(this + 42), 8);
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(this + 312);

  llvm::MCStreamer::~MCStreamer(this);
}

{
  *this = &unk_2883EF190;
  llvm::DenseMapBase<llvm::DenseMap<llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>,llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>::destroyAll(this + 84);
  MEMORY[0x277C69E30](*(this + 42), 8);
  llvm::StringMap<std::atomic<unsigned long>,llvm::MallocAllocator>::~StringMap(this + 312);
  llvm::MCStreamer::~MCStreamer(this);

  JUMPOUT(0x277C69E40);
}

uint64_t *llvm::StringMap<llvm::RecordStreamer::State,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, uint64_t *a2, size_t a3)
{
  v6 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3);
  i = (*a1 + 8 * v6);
  v8 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v8)
  {
    while (!v8 || v8 == -8)
    {
      v9 = i[1];
      ++i;
      v8 = v9;
    }

    return i;
  }

  v11 = operator new(a3 + 17, 8uLL);
  v13 = v11;
  v14 = v11 + 16;
  if (a3)
  {
    memcpy(v11 + 16, a2, a3);
  }

  v14[a3] = 0;
  *v13 = a3;
  *(v13 + 2) = 0;
  *i = v13;
  ++*(a1 + 3);
    ;
  }

  return i;
}

char *llvm::DenseMap<llvm::MCSymbol const*,std::vector<llvm::StringRef>,llvm::DenseMapInfo<llvm::MCSymbol const*,void>,llvm::detail::DenseMapPair<llvm::MCSymbol const*,std::vector<llvm::StringRef>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 64;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 32 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          v21 = v30;
          *v30 = *v19;
          v21[1] = 0;
          v21[2] = 0;
          v21[3] = 0;
          *(v21 + 1) = *(v19 + 8);
          v21[3] = *(v19 + 24);
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          ++*(a1 + 8);
        }

        v19 += 32;
        v18 -= 32;
      }

      while (v18);
    }

    JUMPOUT(0x277C69E30);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0x7FFFFFFFFFFFFFFLL;
    v25 = v24 & 0x7FFFFFFFFFFFFFFLL;
    v26 = (v24 & 0x7FFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 32;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_2750C1210)));
      if (v29.i8[0])
      {
        *(v28 - 4) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 64;
    }

    while (v26 != v23);
  }

  return result;
}

BOOL llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  if (*a1 != v2)
  {
    *a1 = *(v1 + 8);
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 40);
  if (v1 != v2)
  {
    *(a1 + 8) = *(v1 + 8);
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<2ul>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 48);
  if (v1 != v2)
  {
    *(a1 + 16) = *(v1 + 8);
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::incrementHelper<3ul>(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 56);
  if (v1 != v2)
  {
    *(a1 + 24) = *(v1 + 8);
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[4] || *a1 == 0)
  {
    return 0;
  }

  else
  {
    return *a1 - 56;
  }
}

uint64_t llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == *(a1 + 40) || v1 == 0)
  {
    return 0;
  }

  else
  {
    return v1 - 56;
  }
}

uint64_t llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<2ul>(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == *(a1 + 48) || v1 == 0)
  {
    return 0;
  }

  else
  {
    return v1 - 48;
  }
}

uint64_t llvm::concat_iterator<llvm::GlobalValue const,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalVariable,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalAlias,false,false,void>,false,true>,llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::GlobalIFunc,false,false,void>,false,true>>::getHelper<3ul>(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == *(a1 + 56) || v1 == 0)
  {
    return 0;
  }

  else
  {
    return v1 - 56;
  }
}

uint64_t *llvm::object::SymbolicFile::createSymbolicFile@<X0>(llvm::object *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = a1;
  v31 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    a1 = llvm::identify_magic(*a1, *(a1 + 1));
    a2 = a1;
  }

  if (a2 > 0x1E)
  {
LABEL_20:
    *&v32.__val_ = llvm::object::object_category(a1);
    result = llvm::errorCodeToError(2, v32, a5);
    *(a5 + 8) |= 1u;
    return result;
  }

  if (((1 << a2) & 0x772FFFF8) == 0)
  {
    if (a2 == 1 && a3)
    {
      v18 = *(v7 + 1);
      v26 = *v7;
      v27 = v18;
      llvm::object::IRObjectFile::create(&v26, v23);
      *(a5 + 8) = *(a5 + 8) & 0xFE | v23[0].n128_u8[8] & 1;
      v19 = v23[0].n128_u64[0];
      v23[0].n128_u64[0] = 0;
      *a5 = v19;
      return llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(v23);
    }

    goto LABEL_20;
  }

  if (((1 << a2) & 0x742FFDE8) != 0)
  {
    v9 = *(v7 + 1);
    v26 = *v7;
    v27 = v9;
    llvm::object::ObjectFile::createObjectFile(&v26, a2, a4, v23);
    *(a5 + 8) = *(a5 + 8) & 0xFE | v23[0].n128_u8[8] & 1;
    v10 = v23[0].n128_u64[0];
    v23[0].n128_u64[0] = 0;
    *a5 = v10;
    v11 = v23;
  }

  else
  {
    if (((1 << a2) & 0x1000210) == 0)
    {
      operator new();
    }

    v13 = *(v7 + 1);
    v26 = *v7;
    v27 = v13;
    llvm::object::ObjectFile::createObjectFile(&v26, a2, a4, &v29);
    if (!a3 || (v30 & 1) != 0)
    {
      *(a5 + 8) = *(a5 + 8) & 0xFE | v30 & 1;
      v17 = v29;
      v29 = 0;
      *a5 = v17;
    }

    else
    {
      llvm::object::IRObjectFile::findBitcodeInObject(v29, v14, &v26);
      if (v28)
      {
        v15 = v26.n128_u64[0];
        v26.n128_u64[0] = 0;
        v23[0].n128_u64[0] = v15;
        llvm::handleAllErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v23);
        if (v23[0].n128_u64[0])
        {
          (*(*v23[0].n128_u64[0] + 8))(v23[0].n128_u64[0]);
        }

        *(a5 + 8) = *(a5 + 8) & 0xFE | v30 & 1;
        v16 = v29;
        v29 = 0;
        *a5 = v16;
      }

      else
      {
        v20 = *(v7 + 1);
        v23[0] = v26;
        v23[1] = v20;
        llvm::object::IRObjectFile::create(v23, &v24);
        *(a5 + 8) = *(a5 + 8) & 0xFE | v25 & 1;
        v21 = v24;
        v24 = 0;
        *a5 = v21;
        llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(&v24);
      }

      if (v28)
      {
        v22 = v26.n128_u64[0];
        v26.n128_u64[0] = 0;
        if (v22)
        {
          (*(*v22 + 8))(v22);
        }
      }
    }

    v11 = &v29;
  }

  return llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(v11);
}

llvm::raw_ostream *llvm::object::COFFImportFile::printSymbolName@<X0>(llvm::raw_ostream *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (!a3)
  {
    v7 = *(this + 4);
    if ((*(this + 3) - v7) > 5)
    {
      *(v7 + 4) = 24432;
      *v7 = 1835622239;
      *(this + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(this, "__imp_", 6uLL);
    }
  }

  v8 = *(a2 + 16);
  v9 = strlen((v8 + 20));
  result = llvm::raw_ostream::operator<<(this, (v8 + 20), v9);
  *a4 = 0;
  return result;
}

uint64_t llvm::object::COFFImportFile::symbol_end(llvm::object::COFFImportFile *this)
{
  if ((*(*(this + 2) + 18) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

BOOL llvm::SmallSet<llvm::MachO::PlatformType,3u,std::less<llvm::MachO::PlatformType>>::count(uint64_t a1, int *a2)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *a2;
      result = 1;
      do
      {
        v5 = *(v2 + 7);
        if (v3 >= v5)
        {
          if (v5 >= v3)
          {
            return result;
          }

          ++v2;
        }

        v2 = *v2;
      }

      while (v2);
    }

    return 0;
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    v8 = *a1 + 4 * v7;
    if (v7)
    {
      v9 = 4 * v7;
      while (*v6 != *a2)
      {
        ++v6;
        v9 -= 4;
        if (!v9)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v6 = v8;
    }

    return v6 != v8;
  }
}

uint64_t llvm::MachO::SymbolSet::symbols@<X0>(uint64_t this@<X0>, int64x2_t *a2@<X8>)
{
  v3 = *(this + 96);
  v4 = *(this + 112);
  if (*(this + 104))
  {
    v5 = this;
    v8.i64[0] = *(this + 96);
    v8.i64[1] = v3 + 32 * v4;
    this = llvm::DenseMapIterator<llvm::SymbolsMapKey,llvm::MachO::Symbol *,llvm::DenseMapInfo<llvm::SymbolsMapKey,void>,llvm::detail::DenseMapPair<llvm::SymbolsMapKey,llvm::MachO::Symbol *>,true>::AdvancePastEmptyBuckets(&v8);
    v6 = v8;
    v3 = *(v5 + 96);
    v4 = *(v5 + 112);
  }

  else
  {
    v6 = vdupq_n_s64(v3 + 32 * v4);
  }

  *a2 = v6;
  v7 = v3 + 32 * v4;
  a2[1].i64[0] = v7;
  a2[1].i64[1] = v7;
  return this;
}

uint64_t llvm::object::TapiUniversal::TapiUniversal(uint64_t a1, __int128 *a2, llvm::MachO::InterfaceFile **a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  *(a1 + 8) = 4;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = 0u;
  v7 = (a1 + 48);
  *a1 = &unk_2883EF708;
  *(a1 + 64) = 0u;
  v8 = a2[1];
  v74[0] = *a2;
  v74[1] = v8;
  llvm::MachO::TextAPIReader::get(v74, &v75);
  v9 = v75;
  v75 = 0;
  if ((v76 & 1) == 0)
  {
    std::unique_ptr<llvm::MachO::InterfaceFile>::reset[abi:nn200100](v7, v9);
    v10 = *v7;
    v11 = *(*v7 + 287);
    if (v11 >= 0)
    {
      v12 = *v7 + 264;
    }

    else
    {
      v12 = *(*v7 + 33);
    }

    if (v11 >= 0)
    {
      v13 = *(*v7 + 287);
    }

    else
    {
      v13 = *(*v7 + 34);
    }

    v14 = *(v10 + 26);
    if (v14)
    {
      LODWORD(v15) = 0;
      v16 = *(v10 + 12);
      v17 = 24 * v14;
      do
      {
        v18 = *v16;
        v16 += 24;
        v19 = 1 << v18;
        if (v18 == 16)
        {
          v20 = 0;
        }

        else
        {
          v20 = v19;
        }

        v15 = v20 | v15;
        v17 -= 24;
      }

      while (v17);
      if (v15)
      {
        LODWORD(v21) = 0;
LABEL_66:
        v58 = *(a1 + 64);
LABEL_67:
        v59 = *(a1 + 72);
        if (v58 >= v59)
        {
          v60 = *(a1 + 56);
          v61 = 0xAAAAAAAAAAAAAAABLL * ((v58 - v60) >> 3);
          v62 = v61 + 1;
          if (v61 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_86:
            std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
          }

          v63 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v60) >> 3);
          if (2 * v63 > v62)
          {
            v62 = 2 * v63;
          }

          if (v63 >= 0x555555555555555)
          {
            v64 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v64 = v62;
          }

          if (v64)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::StringRef,BOOL>>>(v64);
          }

          v65 = 8 * ((v58 - v60) >> 3);
          *v65 = v12;
          *(v65 + 8) = v13;
          *(v65 + 16) = v21;
          v58 = v65 + 24;
          v66 = *(a1 + 56);
          v67 = *(a1 + 64) - v66;
          v68 = 24 * v61 - v67;
          memcpy((v65 - v67), v66, v67);
          v69 = *(a1 + 56);
          *(a1 + 56) = v68;
          *(a1 + 64) = v58;
          *(a1 + 72) = 0;
          if (v69)
          {
            operator delete(v69);
          }
        }

        else
        {
          *v58 = v12;
          *(v58 + 8) = v13;
          *(v58 + 16) = v21;
          v58 += 24;
        }

        *(a1 + 64) = v58;
        v70 = v21;
        if ((v21 & 0xFFFFFFE0) != 0)
        {
          v71 = v21;
        }

        else
        {
          v71 = 31;
        }

        while (v71 != v70)
        {
          LODWORD(v21) = v70 + 1;
          v72 = v15 >> v70++;
          if ((v72 & 2) != 0)
          {
            if (v21 != -1)
            {
              goto LABEL_67;
            }

            break;
          }
        }

LABEL_22:
        v25 = *(*v7 + 47);
        v24 = *(*v7 + 48);
        if (v25 == v24)
        {
          goto LABEL_65;
        }

        v73 = *(*v7 + 48);
        while (1)
        {
          v26 = *v25;
          v27 = *(*v25 + 287);
          v28 = *(*v25 + 272);
          if (v27 >= 0)
          {
            v29 = *v25 + 264;
          }

          else
          {
            v29 = *(*v25 + 264);
          }

          if (v27 >= 0)
          {
            v28 = *(*v25 + 287);
          }

          v30 = *(v26 + 104);
          if (!v30)
          {
            break;
          }

          LODWORD(v31) = 0;
          v32 = *(v26 + 96);
          v33 = 24 * v30;
          do
          {
            v34 = *v32;
            v32 += 24;
            v35 = 1 << v34;
            if (v34 == 16)
            {
              v36 = 0;
            }

            else
            {
              v36 = v35;
            }

            v31 = v36 | v31;
            v33 -= 24;
          }

          while (v33);
          if ((v31 & 1) == 0)
          {
            goto LABEL_38;
          }

          LODWORD(v37) = 0;
LABEL_44:
          v40 = *(a1 + 64);
          do
          {
            v41 = *(a1 + 72);
            if (v40 >= v41)
            {
              v42 = *(a1 + 56);
              v43 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v42) >> 3);
              v44 = v43 + 1;
              if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_86;
              }

              v45 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v42) >> 3);
              if (2 * v45 > v44)
              {
                v44 = 2 * v45;
              }

              if (v45 >= 0x555555555555555)
              {
                v46 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v46 = v44;
              }

              if (v46)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<llvm::StringRef,BOOL>>>(v46);
              }

              v47 = 8 * ((v40 - v42) >> 3);
              v48 = v29;
              *v47 = v29;
              *(v47 + 8) = v28;
              v49 = v28;
              *(v47 + 16) = v37;
              v40 = v47 + 24;
              v50 = *(a1 + 56);
              v51 = *(a1 + 64) - v50;
              v52 = 24 * v43 - v51;
              memcpy((v47 - v51), v50, v51);
              v53 = *(a1 + 56);
              *(a1 + 56) = v52;
              *(a1 + 64) = v40;
              *(a1 + 72) = 0;
              if (v53)
              {
                operator delete(v53);
              }

              v24 = v73;
              v29 = v48;
              v28 = v49;
            }

            else
            {
              *v40 = v29;
              *(v40 + 8) = v28;
              *(v40 + 16) = v37;
              v40 += 24;
            }

            *(a1 + 64) = v40;
            v54 = v37;
            if ((v37 & 0xFFFFFFE0) != 0)
            {
              v55 = v37;
            }

            else
            {
              v55 = 31;
            }

            do
            {
              if (v55 == v54)
              {
                goto LABEL_42;
              }

              LODWORD(v37) = v54 + 1;
              v56 = v31 >> v54++;
            }

            while ((v56 & 2) == 0);
          }

          while (v37 != -1);
LABEL_42:
          v25 += 2;
          if (v25 == v24)
          {
            goto LABEL_65;
          }
        }

        v31 = 0;
LABEL_38:
        v38 = 0;
        while (v38 != 31)
        {
          v37 = v38 + 1;
          v39 = v31 >> v38++;
          if ((v39 & 2) != 0)
          {
            if (v37 != 0xFFFFFFFFLL)
            {
              goto LABEL_44;
            }

            goto LABEL_42;
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
      v15 = 0;
    }

    v22 = 0;
    while (v22 != 31)
    {
      v21 = v22 + 1;
      v23 = v15 >> v22++;
      if ((v23 & 2) != 0)
      {
        if (v21 != 0xFFFFFFFFLL)
        {
          goto LABEL_66;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_22;
  }

  *a3 = v9;
LABEL_65:
  llvm::Expected<std::unique_ptr<llvm::MachO::InterfaceFile>>::~Expected(&v75);
  return a1;
}

void llvm::object::TapiUniversal::~TapiUniversal(llvm::object::TapiUniversal *this)
{
  *this = &unk_2883EF708;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  std::unique_ptr<llvm::MachO::InterfaceFile>::reset[abi:nn200100](this + 6, 0);
}

{
  llvm::object::TapiUniversal::~TapiUniversal(this);

  JUMPOUT(0x277C69E40);
}

llvm::MachO::InterfaceFile *std::unique_ptr<llvm::MachO::InterfaceFile>::reset[abi:nn200100](llvm::MachO::InterfaceFile **a1, llvm::MachO::InterfaceFile *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    llvm::MachO::InterfaceFile::~InterfaceFile(result);

    JUMPOUT(0x277C69E40);
  }

  return result;
}

uint64_t llvm::object::WasmObjectFile::WasmObjectFile(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v378 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  *(a1 + 8) = 21;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *(a1 + 72) = 0;
  v7 = (a1 + 72);
  *a1 = &unk_2883EF730;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 504) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 576) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 584) = -1;
  *(a1 + 588) = 0;
  *(a1 + 590) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 692) = 0u;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8 >= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  if (v8 < 4 || memcmp(v9, &unk_2750C7968, v10))
  {
    operator new();
  }

  v366 = v9;
  v368 = v9 + v8;
  if (v8 <= 7)
  {
    operator new();
  }

  v14 = v9[1];
  *(a1 + 64) = v14;
  if (v14 != 1)
  {
    *v375 = "invalid version number: ";
    *&v375[16] = v14;
    *&v375[32] = 2051;
    operator new();
  }

  v372[0] = 0;
  v372[1] = 0;
  v373 = 0;
  if (v8 == 8)
  {
    return a1;
  }

  v15 = (v9 + 2);
  v353 = (a1 + 280);
  v354 = (a1 + 512);
  v356 = v7;
  v360 = a3;
  v352 = (a1 + 448);
  do
  {
    HIDWORD(v362) = 0;
    *&v363 = 0;
    v364 = 0u;
    memset(__p, 0, sizeof(__p));
    DWORD2(v363) = -1;
    *(&v362 + 4) = (v15 - v366);
    v17 = *v15;
    v16 = *v15;
    v367 = v15 + 1;
    LODWORD(v362) = v17;
    Varuint32 = readVaruint32(&v366, v11, v12);
    if (!Varuint32)
    {
      operator new();
    }

    LODWORD(v21) = Varuint32;
    v22 = v367;
    v23 = &v367[Varuint32];
    if (v23 > v368)
    {
      operator new();
    }

    v24 = 0;
    v25 = v16;
    String = 0;
    switch(v16)
    {
      case 0:
        *v375 = v367;
        *&v375[8] = v367;
        *&v375[16] = v23;
        String = readString(v375, v19, v20);
        *(&v362 + 1) = String;
        *&v363 = v19;
        v22 += (*&v375[8] - *v375);
        v21 = (v21 - (*&v375[8] - *v375));
        if (v19 == 8)
        {
          if (*String == 0x302E6B6E696C7964)
          {
            v25 = 14;
            v24 = 8;
            goto LABEL_36;
          }

          v24 = 8;
        }

        else
        {
          v24 = v19;
          if (v19 == 7)
          {
            if (*String == 1802398060 && *(String + 3) == 1735289195)
            {
              v25 = 15;
              v24 = 7;
              goto LABEL_36;
            }

            v24 = 7;
          }

          else if (v19 == 6)
          {
            if (*String == 1768716644 && *(String + 4) == 27502)
            {
              v25 = 14;
              v24 = 6;
              goto LABEL_36;
            }

            v24 = 6;
          }

          else if (v19 < 6)
          {
            if (v19 != 4)
            {
              goto LABEL_409;
            }

            if (*String != 1701667182)
            {
              v24 = 4;
              goto LABEL_409;
            }

            v25 = 17;
            v24 = 4;
            goto LABEL_36;
          }
        }

        if (*String == 1869374834 && *(String + 4) == 11875)
        {
          v25 = 16;
        }

        else if (v24 == 15)
        {
          if (*String != 0x665F746567726174 || *(String + 7) != 0x7365727574616566)
          {
            v24 = 15;
LABEL_409:
            v357 = String;
            *&v364 = v22;
            *(&v364 + 1) = v21;
            v367 = &v22[v21];
            *v360 = 0;
            v370 = v22;
            v371 = &v22[v21];
            v369 = v22;
LABEL_410:
            llvm::object::WasmObjectFile::parseCustomSection(&v361, a1, v357, v24, &v369);
            goto LABEL_411;
          }

          v25 = 19;
          v24 = 15;
        }

        else
        {
          if (v24 != 9)
          {
            goto LABEL_409;
          }

          if (*String != 0x72656375646F7270 || *(String + 8) != 115)
          {
            v24 = 9;
            goto LABEL_409;
          }

          v25 = 18;
          v24 = 9;
        }

LABEL_36:
        v357 = String;
        v28 = 0;
        *v375 = &v375[16];
        *&v375[8] = 0x1400000000;
        memset(v377, 0, 20);
        LODWORD(v29) = v25;
        while (1)
        {
          v30 = llvm::object::WasmSectionOrderChecker::DisallowedPredecessors[20 * v29];
          v31 = v28;
          if (v30)
          {
            v32 = &llvm::object::WasmSectionOrderChecker::DisallowedPredecessors[20 * v29 + 1];
            do
            {
              if ((v377[v30] & 1) == 0)
              {
                v33 = v30;
                llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v375, v30);
                v377[v33] = 1;
              }

              v34 = *v32++;
              v30 = v34;
            }

            while (v34);
            v31 = *&v375[8];
          }

          if (!v31)
          {
            break;
          }

          v35 = *v375;
          v29 = *(*v375 + 4 * v31 - 4);
          v28 = v31 - 1;
          *&v375[8] = v31 - 1;
          if (*(v372 + v29))
          {
            goto LABEL_47;
          }
        }

        *(v372 + v25) = 1;
        v35 = *v375;
LABEL_47:
        if (v35 != &v375[16])
        {
          free(v35);
        }

        if (v31)
        {
          llvm::to_string<unsigned int>(&v362, v374);
          v349 = std::string::insert(v374, 0, "out of order section type: ");
          v350 = v349->__r_.__value_.__r.__words[2];
          *v377 = *&v349->__r_.__value_.__l.__data_;
          *&v377[16] = v350;
          v349->__r_.__value_.__l.__size_ = 0;
          v349->__r_.__value_.__r.__words[2] = 0;
          v349->__r_.__value_.__r.__words[0] = 0;
          operator new();
        }

LABEL_50:
        *&v364 = v22;
        *(&v364 + 1) = v21;
        v367 = &v22[v21];
        *v360 = 0;
        v370 = v22;
        v371 = &v22[v21];
        v369 = v22;
        switch(v16)
        {
          case 0:
            goto LABEL_410;
          case 1:
            v38 = readVaruint32(&v369, v19, v20);
            if (v38 > ((*(a1 + 296) - *(a1 + 280)) >> 6))
            {
              *&v375[32] = a1 + 280;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmSignature>>(v38);
            }

            while (2)
            {
              if (!v38)
              {
                if (v370 == v371)
                {
                  goto LABEL_374;
                }

                *v375 = 3;
                v150 = "type section ended prematurely";
LABEL_373:
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, v150, v375);
              }

              *v375 = &v375[16];
              *&v375[8] = 0x100000000;
              *&v375[24] = &v375[40];
              *&v375[32] = 0x400000000;
              *&v375[56] = 0;
              v39 = v370;
              if (v370 != v371)
              {
                ++v370;
                if (*v39 != 96)
                {
                  *v377 = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, "invalid signature type", v377);
                }

                v40 = readVaruint32(&v369, v36, v37);
                v42 = v40;
                if (*&v375[36] < v40)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v375[24], &v375[40], v40, 4);
                  goto LABEL_60;
                }

                if (v40)
                {
LABEL_60:
                  while (1)
                  {
                    v43 = v370;
                    if (v370 == v371)
                    {
                      break;
                    }

                    --v42;
                    ++v370;
                    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(&v375[24], *v43);
                    if (!v42)
                    {
                      goto LABEL_62;
                    }
                  }
                }

                else
                {
LABEL_62:
                  v44 = readVaruint32(&v369, v41, v37);
                  if (!v44)
                  {
LABEL_66:
                    v48 = *(a1 + 288);
                    v47 = *(a1 + 296);
                    if (v48 >= v47)
                    {
                      v50 = (v48 - *v353) >> 6;
                      if ((v50 + 1) >> 58)
                      {
                        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                      }

                      v51 = v47 - *v353;
                      v52 = v51 >> 5;
                      if (v51 >> 5 <= (v50 + 1))
                      {
                        v52 = v50 + 1;
                      }

                      if (v51 >= 0x7FFFFFFFFFFFFFC0)
                      {
                        v53 = 0x3FFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v53 = v52;
                      }

                      *&v377[32] = a1 + 280;
                      if (v53)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmSignature>>(v53);
                      }

                      v54 = v50 << 6;
                      std::allocator_traits<std::allocator<llvm::wasm::WasmSignature>>::construct[abi:nn200100]<llvm::wasm::WasmSignature,llvm::wasm::WasmSignature,0>(v54, v375);
                      v49 = v54 + 64;
                      v55 = *(a1 + 280);
                      v56 = *(a1 + 288);
                      v57 = v54 + v55 - v56;
                      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::wasm::WasmSignature>,llvm::wasm::WasmSignature*>(v55, v56, v57);
                      v58 = *(a1 + 280);
                      *(a1 + 280) = v57;
                      *(a1 + 288) = v49;
                      v59 = *(a1 + 296);
                      *(a1 + 296) = 0;
                      *&v377[16] = v58;
                      *&v377[24] = v59;
                      *v377 = v58;
                      *&v377[8] = v58;
                      std::__split_buffer<llvm::wasm::WasmSignature>::~__split_buffer(v377);
                    }

                    else
                    {
                      std::allocator_traits<std::allocator<llvm::wasm::WasmSignature>>::construct[abi:nn200100]<llvm::wasm::WasmSignature,llvm::wasm::WasmSignature,0>(*(a1 + 288), v375);
                      v49 = v48 + 64;
                    }

                    *(a1 + 288) = v49;
                    if (*&v375[24] != &v375[40])
                    {
                      free(*&v375[24]);
                    }

                    if (*v375 != &v375[16])
                    {
                      free(*v375);
                    }

                    --v38;
                    continue;
                  }

                  v45 = v44;
                  while (1)
                  {
                    v46 = v370;
                    if (v370 == v371)
                    {
                      break;
                    }

                    --v45;
                    ++v370;
                    llvm::SmallVectorTemplateBase<unsigned int,true>::push_back(v375, *v46);
                    if (!v45)
                    {
                      goto LABEL_66;
                    }
                  }
                }
              }

              goto LABEL_464;
            }

          case 2:
            v151 = readVaruint32(&v369, v19, v20);
            v154 = v151;
            if (0x8E38E38E38E38E39 * ((*(a1 + 416) - *(a1 + 400)) >> 3) < v151)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmImport>>(v151);
            }

            if (!v151)
            {
              goto LABEL_222;
            }

            v358 = 0;
            v351 = (*(a1 + 288) - *(a1 + 280)) >> 6;
            break;
          case 3:
            v190 = readVaruint32(&v369, v19, v20);
            if (v190 > ((*(a1 + 528) - *(a1 + 512)) >> 7))
            {
              *&v375[32] = a1 + 512;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmFunction>>(v190);
            }

            if (!v190)
            {
              goto LABEL_241;
            }

            v191 = (*(a1 + 288) - *(a1 + 280)) >> 6;
            while (1)
            {
              v192 = readVaruint32(&v369, v188, v189);
              if (v192 >= v191)
              {
                break;
              }

              memset(v377, 0, 24);
              memset(&v374[7], 0, 32);
              v193 = v192 << 32;
              v194 = *(a1 + 520);
              v195 = *(a1 + 528);
              if (v194 >= v195)
              {
                v198 = (v194 - *v354) >> 7;
                v199 = v198 + 1;
                if ((v198 + 1) >> 57)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v200 = v195 - *v354;
                if (v200 >> 6 > v199)
                {
                  v199 = v200 >> 6;
                }

                if (v200 >= 0x7FFFFFFFFFFFFF80)
                {
                  v201 = 0x1FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v201 = v199;
                }

                *&v375[32] = a1 + 512;
                if (v201)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmFunction>>(v201);
                }

                v202 = v198 << 7;
                *v202 = v193;
                *(v202 + 8) = 0;
                *(v202 + 16) = 0;
                *(v202 + 24) = 0;
                *(v202 + 32) = *&v377[8];
                *(v202 + 48) = *&v377[24];
                *(v202 + 64) = 0;
                *(v202 + 80) = 0;
                *(v202 + 81) = *v374;
                *(v202 + 97) = *&v374[16];
                *(v202 + 112) = *&v374[31];
                v197 = (v198 << 7) + 128;
                v203 = *(a1 + 520);
                v204 = *(a1 + 512);
                v205 = v202 + v204 - v203;
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::wasm::WasmFunction>,llvm::wasm::WasmFunction*>(v204, v203, v205);
                v206 = *(a1 + 512);
                *(a1 + 512) = v205;
                *(a1 + 520) = v197;
                v207 = *(a1 + 528);
                *(a1 + 528) = 0;
                *&v375[16] = v206;
                *&v375[24] = v207;
                *v375 = v206;
                *&v375[8] = v206;
                std::__split_buffer<llvm::wasm::WasmFunction>::~__split_buffer(v375);
              }

              else
              {
                *v194 = v193;
                *(v194 + 8) = 0;
                *(v194 + 16) = 0;
                *(v194 + 24) = 0;
                *(v194 + 32) = *&v377[8];
                *(v194 + 48) = *&v377[24];
                v196 = *&v374[16];
                *(v194 + 81) = *v374;
                *(v194 + 64) = 0;
                *(v194 + 80) = 0;
                *(v194 + 97) = v196;
                *(v194 + 112) = *&v374[31];
                v197 = v194 + 128;
              }

              *(a1 + 520) = v197;
              if (!--v190)
              {
LABEL_241:
                if (v370 != v371)
                {
                  *v375 = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, "function section ended prematurely", v375);
                }

                goto LABEL_374;
              }
            }

LABEL_368:
            *v375 = 3;
            v323 = "invalid function type";
            goto LABEL_369;
          case 4:
            *(a1 + 704) = 954437177 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
            v87 = readVaruint32(&v369, v19, v20);
            v88 = v87;
            if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 320) - *(a1 + 304)) >> 3) < v87)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmTable>>(v87);
            }

            if (!v87)
            {
              goto LABEL_127;
            }

            while (1)
            {
              v89 = v370;
              if (v370 == v371)
              {
                goto LABEL_464;
              }

              ++v370;
              v377[0] = *v89;
              readLimits(&v377[8], &v369, v37);
              *&v375[4] = *v377;
              *&v375[20] = *&v377[16];
              v91 = *(a1 + 304);
              v90 = *(a1 + 312);
              v92 = (v90 - v91) >> 3;
              v93 = 0x6DB6DB6DB6DB6DB7 * v92;
              v94 = *(a1 + 676) - 1227133513 * v92;
              v95 = *(a1 + 320);
              if (v90 >= v95)
              {
                v97 = v93 + 1;
                if ((v93 + 1) > 0x492492492492492)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v98 = 0x6DB6DB6DB6DB6DB7 * ((v95 - v91) >> 3);
                if (2 * v98 > v97)
                {
                  v97 = 2 * v98;
                }

                if (v98 >= 0x249249249249249)
                {
                  v99 = 0x492492492492492;
                }

                else
                {
                  v99 = v97;
                }

                if (v99)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmTable>>(v99);
                }

                v100 = 8 * v92;
                *v100 = v94;
                *(v100 + 4) = *v375;
                *(v100 + 20) = *&v375[16];
                *(v100 + 36) = *&v375[32];
                *(v100 + 40) = 0;
                *(v100 + 48) = 0;
                v96 = 8 * v92 + 56;
                v101 = *(a1 + 304);
                v102 = *(a1 + 312) - v101;
                v103 = (8 * v92 - v102);
                memcpy(v103, v101, v102);
                v104 = *(a1 + 304);
                *(a1 + 304) = v103;
                *(a1 + 312) = v96;
                *(a1 + 320) = 0;
                if (v104)
                {
                  operator delete(v104);
                }
              }

              else
              {
                *v90 = v94;
                *(v90 + 4) = *v375;
                *(v90 + 20) = *&v375[16];
                *(v90 + 36) = *&v375[32];
                *(v90 + 40) = 0;
                *(v90 + 48) = 0;
                v96 = v90 + 56;
              }

              *(a1 + 312) = v96;
              if (*(v96 - 48) - 111 >= 2)
              {
                *v377 = 3;
                v324 = v377;
                goto LABEL_376;
              }

              if (!--v88)
              {
LABEL_127:
                if (v370 != v371)
                {
                  *v375 = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[32],llvm::object::object_error>();
                }

                goto LABEL_374;
              }
            }

          case 5:
            v238 = readVaruint32(&v369, v19, v20);
            v240 = v238;
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 344) - *(a1 + 328)) >> 3) < v238)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmLimits>>(v238);
            }

            if (v238)
            {
              do
              {
                memset(v375, 0, 24);
                readLimits(v375, &v369, v239);
                if ((v375[0] & 4) != 0)
                {
                  *(a1 + 590) = 1;
                }

                v242 = *(a1 + 336);
                v241 = *(a1 + 344);
                if (v242 >= v241)
                {
                  v244 = *(a1 + 328);
                  v245 = 0xAAAAAAAAAAAAAAABLL * ((v242 - v244) >> 3);
                  v246 = v245 + 1;
                  if (v245 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                  }

                  v247 = 0xAAAAAAAAAAAAAAABLL * ((v241 - v244) >> 3);
                  if (2 * v247 > v246)
                  {
                    v246 = 2 * v247;
                  }

                  if (v247 >= 0x555555555555555)
                  {
                    v248 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v248 = v246;
                  }

                  if (v248)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmLimits>>(v248);
                  }

                  v249 = 24 * v245;
                  *v249 = *v375;
                  *(v249 + 16) = *&v375[16];
                  v243 = 24 * v245 + 24;
                  v250 = *(a1 + 328);
                  v251 = *(a1 + 336) - v250;
                  v252 = v249 - v251;
                  memcpy((v249 - v251), v250, v251);
                  v253 = *(a1 + 328);
                  *(a1 + 328) = v252;
                  *(a1 + 336) = v243;
                  *(a1 + 344) = 0;
                  if (v253)
                  {
                    operator delete(v253);
                  }
                }

                else
                {
                  *v242 = *v375;
                  *(v242 + 16) = *&v375[16];
                  v243 = v242 + 24;
                }

                *(a1 + 336) = v243;
                --v240;
              }

              while (v240);
            }

            if (v370 == v371)
            {
              goto LABEL_374;
            }

            *v375 = 3;
            v187 = "memory section ended prematurely";
            goto LABEL_337;
          case 6:
            *(a1 + 700) = 954437177 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
            v277 = readVaruint32(&v369, v19, v20);
            if (v277 > ((*(a1 + 368) - *(a1 + 352)) >> 6))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmGlobal>>(v277);
            }

            if (!v277)
            {
              goto LABEL_335;
            }

            v278 = *(a1 + 360);
            do
            {
              memset(&v375[32], 0, 32);
              *v375 = *(a1 + 672) + ((v278 - *(a1 + 352)) >> 6);
              v279 = v370;
              if (v370 == v371)
              {
                goto LABEL_464;
              }

              ++v370;
              v375[4] = *v279;
              v375[5] = readVaruint1(&v369, v276, v37);
              readInitExpr(&v361, &v375[8], &v369);
              v68 = v361;
              if (v361)
              {
                goto LABEL_459;
              }

              v280 = *(a1 + 360);
              v281 = *(a1 + 368);
              if (v280 >= v281)
              {
                v282 = *(a1 + 352);
                v283 = (v280 - v282) >> 6;
                v284 = v283 + 1;
                if ((v283 + 1) >> 58)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v285 = v281 - v282;
                if (v285 >> 5 > v284)
                {
                  v284 = v285 >> 5;
                }

                if (v285 >= 0x7FFFFFFFFFFFFFC0)
                {
                  v286 = 0x3FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v286 = v284;
                }

                if (v286)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmGlobal>>(v286);
                }

                v287 = (v283 << 6);
                *v287 = *v375;
                v287[1] = *&v375[16];
                v287[2] = *&v375[32];
                v287[3] = *&v375[48];
                v278 = (v283 << 6) + 64;
                v288 = *(a1 + 352);
                v289 = *(a1 + 360) - v288;
                v290 = v287 - v289;
                memcpy(v287 - v289, v288, v289);
                v291 = *(a1 + 352);
                *(a1 + 352) = v290;
                *(a1 + 360) = v278;
                *(a1 + 368) = 0;
                if (v291)
                {
                  operator delete(v291);
                }
              }

              else
              {
                *v280 = *v375;
                v280[1] = *&v375[16];
                v280[2] = *&v375[32];
                v280[3] = *&v375[48];
                v278 = (v280 + 4);
              }

              *(a1 + 360) = v278;
              --v277;
            }

            while (v277);
LABEL_335:
            if (v370 == v371)
            {
              goto LABEL_374;
            }

            *v375 = 3;
            v187 = "global section ended prematurely";
            goto LABEL_337;
          case 7:
            v208 = readVaruint32(&v369, v19, v20);
            v211 = v208;
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 440) - *(a1 + 424)) >> 3) < v208)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmExport>>(v208);
            }

            if (!v208)
            {
              goto LABEL_272;
            }

            while (1)
            {
              v212 = readString(&v369, v209, v210);
              v214 = v370;
              if (v370 == v371)
              {
                goto LABEL_464;
              }

              v215 = v212;
              v216 = v213;
              ++v370;
              v217 = *v214;
              v218 = readVaruint32(&v369, v213, v37);
              v219 = v218;
              if (v217 > 2)
              {
                if (v217 == 3)
                {
                  if (*(a1 + 672) + ((*(a1 + 360) - *(a1 + 352)) >> 6) <= v218)
                  {
                    *v375 = 3;
                    v323 = "invalid global export";
LABEL_369:
                    llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, v323, v375);
                  }
                }

                else
                {
                  if (v217 != 4)
                  {
LABEL_445:
                    *v375 = 3;
                    v322 = "unexpected export kind";
                    goto LABEL_367;
                  }

                  if (*(a1 + 684) - 0x5555555555555555 * ((*(a1 + 384) - *(a1 + 376)) >> 3) <= v218)
                  {
                    operator new();
                  }
                }
              }

              else if ((v217 - 1) >= 2)
              {
                if (v217)
                {
                  goto LABEL_445;
                }

                v220 = *(a1 + 680);
                if (v218 < v220 || (v221 = *(a1 + 512), v220 + ((*(a1 + 520) - v221) >> 7) <= v218))
                {
                  *v375 = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, "invalid function export", v375);
                }

                v222 = v221 + ((v218 - v220) << 7);
                *(v222 + 64) = v215;
                v223 = v222 + 64;
                v224 = *(v223 + 16);
                *(v223 + 8) = v216;
                if ((v224 & 1) == 0)
                {
                  *(v223 + 16) = 1;
                }
              }

              v225 = *(a1 + 432);
              v226 = *(a1 + 440);
              if (v225 >= v226)
              {
                v228 = *(a1 + 424);
                v229 = 0xAAAAAAAAAAAAAAABLL * ((v225 - v228) >> 3);
                v230 = v229 + 1;
                if (v229 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v231 = 0xAAAAAAAAAAAAAAABLL * ((v226 - v228) >> 3);
                if (2 * v231 > v230)
                {
                  v230 = 2 * v231;
                }

                if (v231 >= 0x555555555555555)
                {
                  v232 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v232 = v230;
                }

                if (v232)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmExport>>(v232);
                }

                v233 = 24 * v229;
                *v233 = v215;
                *(v233 + 8) = v216;
                *(v233 + 16) = v217;
                *(v233 + 20) = v219;
                v227 = 24 * v229 + 24;
                v234 = *(a1 + 424);
                v235 = *(a1 + 432) - v234;
                v236 = 24 * v229 - v235;
                memcpy((v233 - v235), v234, v235);
                v237 = *(a1 + 424);
                *(a1 + 424) = v236;
                *(a1 + 432) = v227;
                *(a1 + 440) = 0;
                if (v237)
                {
                  operator delete(v237);
                }
              }

              else
              {
                *v225 = v215;
                *(v225 + 8) = v216;
                *(v225 + 16) = v217;
                v227 = v225 + 24;
                *(v225 + 20) = v218;
              }

              *(a1 + 432) = v227;
              if (!--v211)
              {
LABEL_272:
                if (v370 == v371)
                {
                  goto LABEL_374;
                }

                *v375 = 3;
                v187 = "export section ended prematurely";
LABEL_337:
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, v187, v375);
              }
            }

          case 8:
            v321 = readVaruint32(&v369, v19, v20);
            *(a1 + 584) = v321;
            if (*(a1 + 680) + ((*(a1 + 520) - *(a1 + 512)) >> 7) > v321)
            {
              goto LABEL_374;
            }

            *v375 = 3;
            v322 = "invalid start function";
            goto LABEL_367;
          case 9:
            v106 = readVaruint32(&v369, v19, v20);
            v109 = v106;
            if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 464) - *(a1 + 448)) >> 4) < v106)
            {
              *&v375[32] = a1 + 448;
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmElemSegment>>(v106);
            }

            if (!v106)
            {
              goto LABEL_182;
            }

            while (1)
            {
              memset(&v375[40], 0, 40);
              v110 = readVaruint32(&v369, v107, v108);
              *v375 = v110;
              if (v110 >= 8)
              {
                *v377 = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, "Unsupported flags for element segment", v377);
              }

              if ((v110 & 2) != 0)
              {
                v112 = readVaruint32(&v369, v111, v37);
              }

              else
              {
                v112 = 0;
              }

              *&v375[4] = v112;
              if (*(a1 + 676) + 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 312) - *(a1 + 304)) >> 3) <= v112)
              {
                operator new();
              }

              v113 = v375[0];
              if (v375[0])
              {
                v375[16] = 0;
                v375[24] = 65;
                *&v375[32] = 0;
              }

              else
              {
                readInitExpr(&v361, &v375[16], &v369);
                if (v361)
                {
                  if (*&v375[56])
                  {
                    *&v375[64] = *&v375[56];
                    operator delete(*&v375[56]);
                  }

LABEL_411:
                  v329 = v361;
                  *v360 = v361;
                  if (!v329)
                  {
                    goto LABEL_412;
                  }

LABEL_460:
                  if (__p[0])
                  {
                    __p[1] = __p[0];
                    operator delete(__p[0]);
                  }

                  return a1;
                }

                v113 = v375[0];
              }

              if ((v113 & 3) != 0)
              {
                v114 = v370;
                if (v370 == v371)
                {
                  goto LABEL_464;
                }

                ++v370;
                v115 = *v114;
                v375[8] = v115;
                if ((v113 & 4) != 0)
                {
                  if ((v115 - 113) <= 0xFFFFFFFD)
                  {
                    *v377 = 3;
                    llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, "invalid reference type", v377);
                  }

LABEL_441:
                  operator new();
                }

                if (v115)
                {
                  *v377 = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, "invalid elemtype", v377);
                }

                v375[8] = 112;
              }

              else
              {
                v375[8] = 112;
                if ((v113 & 4) != 0)
                {
                  goto LABEL_441;
                }
              }

              v116 = readVaruint32(&v369, v111, v37);
              if (v116)
              {
                v117 = v116;
                do
                {
                  v118 = readVaruint32(&v369, v107, v108);
                  v119 = *&v375[64];
                  if (*&v375[64] >= *&v375[72])
                  {
                    v121 = *&v375[56];
                    v122 = *&v375[64] - *&v375[56];
                    v123 = (*&v375[64] - *&v375[56]) >> 2;
                    v124 = v123 + 1;
                    if ((v123 + 1) >> 62)
                    {
                      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                    }

                    v125 = *&v375[72] - *&v375[56];
                    if ((*&v375[72] - *&v375[56]) >> 1 > v124)
                    {
                      v124 = v125 >> 1;
                    }

                    v126 = v125 >= 0x7FFFFFFFFFFFFFFCLL;
                    v127 = 0x3FFFFFFFFFFFFFFFLL;
                    if (!v126)
                    {
                      v127 = v124;
                    }

                    if (v127)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(&v375[56], v127);
                    }

                    v128 = (4 * v123);
                    v129 = &v128[-((*&v375[64] - *&v375[56]) >> 2)];
                    *v128 = v118;
                    v120 = v128 + 1;
                    memcpy(v129, v121, v122);
                    v130 = *&v375[56];
                    *&v375[56] = v129;
                    *&v375[64] = v120;
                    *&v375[72] = 0;
                    if (v130)
                    {
                      operator delete(v130);
                    }
                  }

                  else
                  {
                    **&v375[64] = v118;
                    v120 = (v119 + 4);
                  }

                  *&v375[64] = v120;
                  --v117;
                }

                while (v117);
              }

              v132 = *(a1 + 456);
              v131 = *(a1 + 464);
              if (v132 >= v131)
              {
                v137 = 0xCCCCCCCCCCCCCCCDLL * ((v132 - *v352) >> 4);
                v138 = v137 + 1;
                if (v137 + 1 > 0x333333333333333)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v139 = 0xCCCCCCCCCCCCCCCDLL * ((v131 - *v352) >> 4);
                if (2 * v139 > v138)
                {
                  v138 = 2 * v139;
                }

                if (v139 >= 0x199999999999999)
                {
                  v140 = 0x333333333333333;
                }

                else
                {
                  v140 = v138;
                }

                *&v377[32] = a1 + 448;
                if (v140)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmElemSegment>>(v140);
                }

                v141 = 80 * v137;
                v142 = *v375;
                v143 = *&v375[16];
                v144 = *&v375[32];
                *(v141 + 48) = *&v375[48];
                *(v141 + 16) = v143;
                *(v141 + 32) = v144;
                *(v141 + 56) = 0;
                *v141 = v142;
                *(v141 + 64) = 0;
                *(v141 + 72) = 0;
                if (*&v375[64] != *&v375[56])
                {
                  std::vector<unsigned int>::__vallocate[abi:nn200100]((v141 + 56), (*&v375[64] - *&v375[56]) >> 2);
                }

                v136 = v141 + 80;
                v145 = *(a1 + 448);
                v146 = *(a1 + 456);
                v147 = v141 + v145 - v146;
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::wasm::WasmElemSegment>,llvm::wasm::WasmElemSegment*>(v145, v146, v147);
                v148 = *(a1 + 448);
                *(a1 + 448) = v147;
                *(a1 + 456) = v141 + 80;
                v149 = *(a1 + 464);
                *(a1 + 464) = 0;
                *&v377[16] = v148;
                *&v377[24] = v149;
                *v377 = v148;
                *&v377[8] = v148;
                std::__split_buffer<llvm::wasm::WasmElemSegment>::~__split_buffer(v377);
              }

              else
              {
                v133 = *v375;
                v134 = *&v375[16];
                v135 = *&v375[32];
                *(v132 + 48) = *&v375[48];
                *(v132 + 16) = v134;
                *(v132 + 32) = v135;
                *(v132 + 56) = 0;
                *v132 = v133;
                *(v132 + 64) = 0;
                *(v132 + 72) = 0;
                if (*&v375[64] != *&v375[56])
                {
                  std::vector<unsigned int>::__vallocate[abi:nn200100]((v132 + 56), (*&v375[64] - *&v375[56]) >> 2);
                }

                v136 = v132 + 80;
              }

              *(a1 + 456) = v136;
              if (*&v375[56])
              {
                *&v375[64] = *&v375[56];
                operator delete(*&v375[56]);
              }

              if (!--v109)
              {
LABEL_182:
                if (v370 == v371)
                {
                  goto LABEL_374;
                }

                *v375 = 3;
                v150 = "elem section ended prematurely";
                goto LABEL_373;
              }
            }

          case 10:
            *(a1 + 688) = 954437177 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
            v292 = readVaruint32(&v369, v19, v20);
            if (v292 != (*(a1 + 520) - *(a1 + 512)) >> 7)
            {
              *v375 = 3;
              v322 = "invalid function count";
              goto LABEL_367;
            }

            v294 = v370;
            if (!v292)
            {
              goto LABEL_359;
            }

            v295 = 0;
            v355 = v292;
            while (1)
            {
              v296 = *(a1 + 512) + (v295 << 7);
              v297 = readVaruint32(&v369, v293, v37);
              v298 = v370 + v297;
              *(v296 + 56) = v370 - v294;
              *v296 = *(a1 + 680) + v295;
              v359 = v298;
              *(v296 + 48) = v294 - v369;
              *(v296 + 52) = v298 - v294;
              v301 = readVaruint32(&v369, v299, v300);
              if (v301 > ((*(v296 + 24) - *(v296 + 8)) >> 3))
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmLocalDecl>>(v301);
              }

              if (v301)
              {
                break;
              }

LABEL_358:
              v319 = v370;
              v320 = (v359 - v370);
              *(v296 + 32) = v370;
              *(v296 + 40) = v320;
              *(v296 + 120) = -1;
              v294 = &v319[v320];
              v370 = &v319[v320];
              if (++v295 == v355)
              {
LABEL_359:
                if (v294 == v371)
                {
                  goto LABEL_374;
                }

                *v375 = 3;
                v150 = "code section ended prematurely";
                goto LABEL_373;
              }
            }

            while (1)
            {
              v302 = readVaruint32(&v369, v293, v37);
              v303 = v370;
              if (v370 == v371)
              {
                break;
              }

              v304 = v302;
              ++v370;
              v305 = *v303;
              v307 = *(v296 + 16);
              v306 = *(v296 + 24);
              if (v307 >= v306)
              {
                v309 = *(v296 + 8);
                v310 = (v307 - v309) >> 3;
                if ((v310 + 1) >> 61)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v311 = v306 - v309;
                v312 = v311 >> 2;
                if (v311 >> 2 <= (v310 + 1))
                {
                  v312 = v310 + 1;
                }

                if (v311 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v313 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v313 = v312;
                }

                if (v313)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmLocalDecl>>(v313);
                }

                v314 = (8 * v310);
                *v314 = v305 | (v304 << 32);
                v308 = 8 * v310 + 8;
                v315 = *(v296 + 8);
                v316 = *(v296 + 16) - v315;
                v317 = v314 - v316;
                memcpy(v314 - v316, v315, v316);
                v318 = *(v296 + 8);
                *(v296 + 8) = v317;
                *(v296 + 16) = v308;
                *(v296 + 24) = 0;
                if (v318)
                {
                  operator delete(v318);
                }
              }

              else
              {
                *v307 = v305 | (v302 << 32);
                v308 = (v307 + 1);
              }

              *(v296 + 16) = v308;
              if (!--v301)
              {
                goto LABEL_358;
              }
            }

LABEL_464:
            llvm::report_fatal_error("EOF while reading uint8", 1, v37);
          case 11:
            *(a1 + 692) = 954437177 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
            v62 = readVaruint32(&v369, v19, v20);
            if (*(a1 + 504) == 1 && *(a1 + 496) != v62)
            {
              operator new();
            }

            if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 488) - *(a1 + 472)) >> 3) < v62)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::WasmSegment>>(v62);
            }

            if (v62)
            {
              do
              {
                memset(&v375[40], 0, 48);
                v63 = readVaruint32(&v369, v60, v61);
                v66 = v63;
                *&v375[8] = v63;
                if ((v63 & 2) != 0)
                {
                  v67 = readVaruint32(&v369, v64, v65);
                }

                else
                {
                  v67 = 0;
                }

                *&v375[12] = v67;
                if (v66)
                {
                  v375[16] = 0;
                  v375[24] = 65;
                  *&v375[32] = 0;
                }

                else
                {
                  readInitExpr(&v361, &v375[16], &v369);
                  v68 = v361;
                  if (v361)
                  {
LABEL_459:
                    *v360 = v68;
                    goto LABEL_460;
                  }
                }

                v69 = readVaruint32(&v369, v64, v65);
                v71 = v370;
                v70 = v371;
                if (v371 - v370 < v69)
                {
                  operator new();
                }

                v72 = v69;
                *&v375[56] = v370;
                *&v375[64] = v69;
                *&v375[88] = 0;
                LODWORD(v376) = -1;
                *v375 = v370 - v369;
                v370 += v69;
                v73 = *(a1 + 480);
                v74 = *(a1 + 488);
                if (v73 >= v74)
                {
                  v76 = *(a1 + 472);
                  v77 = 0x4EC4EC4EC4EC4EC5 * ((v73 - v76) >> 3);
                  v78 = v77 + 1;
                  if ((v77 + 1) > 0x276276276276276)
                  {
                    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                  }

                  v79 = 0x4EC4EC4EC4EC4EC5 * ((v74 - v76) >> 3);
                  if (2 * v79 > v78)
                  {
                    v78 = 2 * v79;
                  }

                  if (v79 >= 0x13B13B13B13B13BLL)
                  {
                    v80 = 0x276276276276276;
                  }

                  else
                  {
                    v80 = v78;
                  }

                  if (v80)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::object::WasmSegment>>(v80);
                  }

                  v81 = 104 * v77;
                  *(v81 + 48) = *&v375[48];
                  *(v81 + 64) = *&v375[64];
                  *(v81 + 80) = *&v375[80];
                  *(v81 + 96) = v376;
                  *v81 = *v375;
                  *(v81 + 16) = *&v375[16];
                  *(v81 + 32) = *&v375[32];
                  v75 = 104 * v77 + 104;
                  v82 = *(a1 + 472);
                  v83 = *(a1 + 480) - v82;
                  v84 = 104 * v77 - v83;
                  memcpy((v81 - v83), v82, v83);
                  v85 = *(a1 + 472);
                  *(a1 + 472) = v84;
                  *(a1 + 480) = v75;
                  *(a1 + 488) = 0;
                  if (v85)
                  {
                    operator delete(v85);
                  }
                }

                else
                {
                  *(v73 + 48) = *&v375[48];
                  *(v73 + 64) = *&v375[64];
                  *(v73 + 80) = *&v375[80];
                  *(v73 + 96) = v376;
                  *v73 = *v375;
                  *(v73 + 16) = *&v375[16];
                  *(v73 + 32) = *&v375[32];
                  v75 = v73 + 104;
                }

                *(a1 + 480) = v75;
                --v62;
              }

              while (v62);
              v86 = &v71[v72];
            }

            else
            {
              v86 = v370;
              v70 = v371;
            }

            if (v86 == v70)
            {
              goto LABEL_374;
            }

            *v375 = 3;
            v150 = "data section ended prematurely";
            goto LABEL_373;
          case 12:
            v105 = readVaruint32(&v369, v19, v20);
            if ((*(a1 + 504) & 1) == 0)
            {
              *(a1 + 504) = 1;
            }

            *(a1 + 496) = v105;
            goto LABEL_374;
          case 13:
            *(a1 + 696) = 954437177 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
            v254 = readVaruint32(&v369, v19, v20);
            v256 = v254;
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 392) - *(a1 + 376)) >> 3) < v254)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmTag>>(v254);
            }

            if (!v254)
            {
              goto LABEL_314;
            }

            v257 = (*(a1 + 288) - *(a1 + 280)) >> 6;
            while (1)
            {
              v258 = v370;
              if (v370 == v371)
              {
                goto LABEL_464;
              }

              ++v370;
              if (*v258)
              {
                operator new();
              }

              v259 = readVaruint32(&v369, v255, v37);
              if (v259 >= v257)
              {
LABEL_377:
                *v375 = 3;
                llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, "invalid tag type", v375);
              }

              v260 = v259;
              v262 = *(a1 + 376);
              v261 = *(a1 + 384);
              v263 = (v261 - v262) >> 3;
              v264 = 0xAAAAAAAAAAAAAAABLL * v263;
              v265 = *(a1 + 684) - 1431655765 * v263;
              v266 = *(a1 + 392);
              if (v261 >= v266)
              {
                v268 = v264 + 1;
                if (v264 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
                }

                v269 = 0xAAAAAAAAAAAAAAABLL * ((v266 - v262) >> 3);
                if (2 * v269 > v268)
                {
                  v268 = 2 * v269;
                }

                if (v269 >= 0x555555555555555)
                {
                  v270 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v270 = v268;
                }

                if (v270)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmTag>>(v270);
                }

                v271 = 8 * v263;
                *v271 = v265;
                *(v271 + 4) = v260;
                *(v271 + 8) = 0;
                *(v271 + 16) = 0;
                v267 = 8 * v263 + 24;
                v272 = *(a1 + 376);
                v273 = *(a1 + 384) - v272;
                v274 = (8 * v263 - v273);
                memcpy(v274, v272, v273);
                v275 = *(a1 + 376);
                *(a1 + 376) = v274;
                *(a1 + 384) = v267;
                *(a1 + 392) = 0;
                if (v275)
                {
                  operator delete(v275);
                }
              }

              else
              {
                *v261 = v265;
                *(v261 + 4) = v259;
                v267 = v261 + 24;
                *(v261 + 8) = 0;
                *(v261 + 16) = 0;
              }

              *(a1 + 384) = v267;
              if (!--v256)
              {
LABEL_314:
                if (v370 != v371)
                {
                  *v375 = 3;
                  llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, "tag section ended prematurely", v375);
                }

                goto LABEL_374;
              }
            }

          default:
            *v375 = "invalid section type: ";
            *&v375[16] = v16;
            *&v375[32] = 2051;
            operator new();
        }

        return result;
      case 1:
        goto LABEL_36;
      case 2:
        v24 = 0;
        String = 0;
        v25 = 2;
        goto LABEL_36;
      case 3:
        v24 = 0;
        String = 0;
        v25 = 3;
        goto LABEL_36;
      case 4:
        v24 = 0;
        String = 0;
        v25 = 4;
        goto LABEL_36;
      case 5:
        v24 = 0;
        String = 0;
        v25 = 5;
        goto LABEL_36;
      case 6:
        v24 = 0;
        String = 0;
        v25 = 7;
        goto LABEL_36;
      case 7:
        v24 = 0;
        String = 0;
        v25 = 8;
        goto LABEL_36;
      case 8:
        v24 = 0;
        String = 0;
        v25 = 9;
        goto LABEL_36;
      case 9:
        v24 = 0;
        String = 0;
        v25 = 10;
        goto LABEL_36;
      case 10:
        v24 = 0;
        String = 0;
        v25 = 12;
        goto LABEL_36;
      case 11:
        v24 = 0;
        String = 0;
        v25 = 13;
        goto LABEL_36;
      case 12:
        v24 = 0;
        String = 0;
        v25 = 11;
        goto LABEL_36;
      case 13:
        v24 = 0;
        String = 0;
        v25 = 6;
        goto LABEL_36;
      default:
        v357 = 0;
        goto LABEL_50;
    }

    do
    {
      v155 = readString(&v369, v152, v153);
      v157 = v156;
      v159 = readString(&v369, v156, v158);
      v161 = v370;
      v162 = v371;
      if (v370 == v371)
      {
        goto LABEL_464;
      }

      v163 = v159;
      v164 = v160;
      v165 = ++v370;
      v166 = *v161;
      if (v166 <= 1)
      {
        if (*v161)
        {
          if (v166 != 1)
          {
LABEL_446:
            *v375 = 3;
            v322 = "unexpected import kind";
LABEL_367:
            llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, v322, v375);
          }

          if (v165 == v371)
          {
            goto LABEL_464;
          }

          v370 = v161 + 2;
          v375[0] = v161[1];
          readLimits(&v375[8], &v369, v37);
          v168 = *v375;
          v169 = v375[0];
          *v377 = *&v375[4];
          *&v377[12] = *&v375[16];
          ++*(a1 + 676);
          if ((v169 - 111) >= 2)
          {
            *v375 = 3;
            v324 = v375;
LABEL_376:
            llvm::make_error<llvm::object::GenericBinaryError,char const(&)[33],llvm::object::object_error>(&v361, "invalid table element type", v324);
          }

          Varuint1 = BYTE1(v168);
          v171 = HIWORD(v168);
          goto LABEL_206;
        }

        ++*(a1 + 680);
        v167 = readVaruint32(&v369, v160, v37);
        if (v167 >= v351)
        {
          goto LABEL_368;
        }

LABEL_205:
        v169 = v167;
        Varuint1 = BYTE1(v167);
        v171 = HIWORD(v167);
LABEL_206:
        v358 = v171;
        goto LABEL_207;
      }

      switch(v166)
      {
        case 2u:
          readLimits(v375, &v369, v37);
          v169 = v375[0];
          Varuint1 = v375[1];
          v358 = HIWORD(*v375);
          *v377 = *&v375[4];
          *&v377[16] = *&v375[20];
          if ((v375[0] & 4) != 0)
          {
            *(a1 + 590) = 1;
          }

          break;
        case 3u:
          ++*(a1 + 672);
          if (v165 == v162)
          {
            goto LABEL_464;
          }

          v370 = v161 + 2;
          v169 = v161[1];
          Varuint1 = readVaruint1(&v369, v160, v37);
          break;
        case 4u:
          ++*(a1 + 684);
          if (v165 == v162)
          {
            goto LABEL_464;
          }

          v370 = v161 + 2;
          if (v161[1])
          {
            operator new();
          }

          v167 = readVaruint32(&v369, v160, v37);
          if (v167 >= v351)
          {
            goto LABEL_377;
          }

          goto LABEL_205;
        default:
          goto LABEL_446;
      }

LABEL_207:
      v172 = *(a1 + 408);
      v173 = *(a1 + 416);
      if (v172 >= v173)
      {
        v175 = v157;
        v176 = v169;
        v177 = *(a1 + 400);
        v178 = 0x8E38E38E38E38E39 * ((v172 - v177) >> 3);
        v179 = v178 + 1;
        if (v178 + 1 > 0x38E38E38E38E38ELL)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v180 = 0x8E38E38E38E38E39 * ((v173 - v177) >> 3);
        if (2 * v180 > v179)
        {
          v179 = 2 * v180;
        }

        if (v180 >= 0x1C71C71C71C71C7)
        {
          v181 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v181 = v179;
        }

        if (v181)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::wasm::WasmImport>>(v181);
        }

        v182 = 72 * v178;
        *v182 = v155;
        *(v182 + 8) = v175;
        *(v182 + 16) = v163;
        *(v182 + 24) = v164;
        *(v182 + 32) = v166;
        *(v182 + 40) = (v358 << 16) | (Varuint1 << 8) | v176;
        *(v182 + 44) = *v377;
        *(v182 + 56) = *&v377[12];
        v174 = 72 * v178 + 72;
        v183 = *(a1 + 400);
        v184 = *(a1 + 408) - v183;
        v185 = 72 * v178 - v184;
        memcpy((v182 - v184), v183, v184);
        v186 = *(a1 + 400);
        *(a1 + 400) = v185;
        *(a1 + 408) = v174;
        *(a1 + 416) = 0;
        if (v186)
        {
          operator delete(v186);
        }
      }

      else
      {
        *v172 = v155;
        *(v172 + 8) = v157;
        *(v172 + 16) = v163;
        *(v172 + 24) = v164;
        *(v172 + 32) = v166;
        *(v172 + 40) = (v358 << 16) | (Varuint1 << 8) | v169;
        *(v172 + 44) = *v377;
        *(v172 + 56) = *&v377[12];
        v174 = v172 + 72;
      }

      *(a1 + 408) = v174;
      --v154;
    }

    while (v154);
LABEL_222:
    if (v370 != v371)
    {
      *v375 = 3;
      v187 = "import section ended prematurely";
      goto LABEL_337;
    }

LABEL_374:
    *v360 = 0;
LABEL_412:
    v331 = *(a1 + 80);
    v330 = *(a1 + 88);
    if (v331 >= v330)
    {
      v335 = 0x8E38E38E38E38E39 * ((v331 - *v356) >> 3);
      v336 = v335 + 1;
      if (v335 + 1 > 0x38E38E38E38E38ELL)
      {
        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v337 = 0x8E38E38E38E38E39 * ((v330 - *v356) >> 3);
      if (2 * v337 > v336)
      {
        v336 = 2 * v337;
      }

      if (v337 >= 0x1C71C71C71C71C7)
      {
        v338 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v338 = v336;
      }

      if (v338)
      {
        if (v338 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
      }

      v339 = 72 * v335;
      v340 = v363;
      *v339 = v362;
      *(v339 + 16) = v340;
      *(v339 + 32) = v364;
      std::vector<llvm::wasm::WasmRelocation>::vector[abi:nn200100]((72 * v335 + 48), __p);
      v341 = *(a1 + 72);
      v342 = *(a1 + 80);
      v343 = (v339 + v341 - v342);
      if (v342 != v341)
      {
        v344 = *(a1 + 72);
        v345 = (v339 + v341 - v342);
        do
        {
          v346 = *v344;
          v347 = v344[2];
          *(v345 + 1) = v344[1];
          *(v345 + 2) = v347;
          *v345 = v346;
          *(v345 + 7) = 0;
          *(v345 + 8) = 0;
          *(v345 + 6) = 0;
          *(v345 + 3) = v344[3];
          *(v345 + 8) = *(v344 + 8);
          *(v344 + 6) = 0;
          *(v344 + 7) = 0;
          *(v344 + 8) = 0;
          v344 = (v344 + 72);
          v345 += 72;
        }

        while (v344 != v342);
        do
        {
          v348 = *(v341 + 6);
          if (v348)
          {
            *(v341 + 7) = v348;
            operator delete(v348);
          }

          v341 += 72;
        }

        while (v341 != v342);
        v341 = *v356;
      }

      v334 = v339 + 72;
      *(a1 + 72) = v343;
      *(a1 + 80) = v339 + 72;
      *(a1 + 88) = 0;
      if (v341)
      {
        operator delete(v341);
      }
    }

    else
    {
      v332 = v362;
      v333 = v364;
      *(v331 + 16) = v363;
      *(v331 + 32) = v333;
      *v331 = v332;
      std::vector<llvm::wasm::WasmRelocation>::vector[abi:nn200100]((v331 + 48), __p);
      v334 = v331 + 72;
    }

    *(a1 + 80) = v334;
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    v15 = v367;
  }

  while (v367 < v368);
  return a1;
}