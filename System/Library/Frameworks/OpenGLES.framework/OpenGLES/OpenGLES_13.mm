uint64_t componentCountForSet(char a1)
{
  if ((a1 & 8) != 0)
  {
    return 4;
  }

  if ((a1 & 4) != 0)
  {
    return 3;
  }

  if ((a1 & 2) != 0)
  {
    return 2;
  }

  if ((a1 & 1) == 0)
  {
    abort();
  }

  return 1;
}

void *propagateCopyBindings(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  ElementType = *a2;
  if (glpTypeGetKind(*a2) == 3)
  {
    ElementType = glpBankTypeGetElementType(ElementType);
  }

  glpABIGetTypeSize(0, ElementType, 0);
  glpTypeSizeGetSize();
  v8 = v7;
  v9 = v7;
  v10 = glpLinkerPoolAlloc(a1);
  v11 = glpLinkerPoolAlloc(a1);
  glpTypeGetAppleVec4Types(ElementType, v10, 1, 0, 0, v11, 0, 0, 0);
  v12 = glpLinkerPoolAlloc(a1);
  *v12 = a2;
  v12[1] = 0;
  *(v12 + 2) = 0;
  if (v8)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      Equals = BitSetGetEquals(a2[15], v13);
      v16 = BitSetGetEquals(*(*a3 + 120), v13);
      if (Equals)
      {
        if (glpPrimitiveTypeGetScalarCount(v10[v13]))
        {
          v17 = 0;
          do
          {
            v18 = *(v12 + 2);
            v12[v18 + 2] = *(a3 + 16 + 8 * (v14 + v17++));
            *(v12 + 2) = v18 + 1;
          }

          while (v17 < glpPrimitiveTypeGetScalarCount(v10[v13]));
          v14 += v17;
        }
      }

      else if (v16)
      {
        v14 += glpPrimitiveTypeGetScalarCount(v10[v13]);
      }

      ++v13;
    }

    while (v13 != v9);
  }

  return v12;
}

uint64_t compareVariableObjectsLocationFirstNameSecond(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 8);
  if (v4)
  {
    v5 = glpLayoutObjectFind(v4, 26) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v3[1];
  if (v6)
  {
    if (glpLayoutObjectFind(v6, 26))
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  result = (v7 + v5);
  if (!(v7 + v5))
  {
    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    v11 = v3[2];
    v12 = v3[3];

    return glpStringsCompare(v9, v10, v11, v12);
  }

  return result;
}

uint64_t outputForInput(uint64_t a1, _BYTE *a2, size_t __n)
{
  v3 = __n;
  v13[1] = *MEMORY[0x277D85DE8];
  if ((__n & 0xFFFFFFFC) != 0 && *a2 == 36 && a2[1] == 105 && a2[2] == 98 && a2[3] == 36)
  {
    v6 = __n;
    MEMORY[0x28223BE20](a1);
    v7 = v13 - ((v3 + 15) & 0x1FFFFFFF0);
    bzero(v7, v3);
    memcpy(v13 - ((v6 + 15) & 0x1FFFFFFF0), a2, v3);
    v7[4] = 111;
    if (v3)
    {
      v8 = v3 >> 5;
      v9 = ~(v3 >> 5);
      LODWORD(v10) = v3;
      do
      {
        v10 = (32 * v10 + (v10 >> 2) + v7[v3 - 1]) ^ v10;
        v3 += v9;
      }

      while (v3 > v8);
      v11 = v10 << 32;
    }

    else
    {
      v11 = 0;
    }

    return glpStringHashGet(a1, v13 - ((v6 + 15) & 0x1FFFFFFF0), v11 | v6);
  }

  else
  {

    return glpStringHashGet(a1, a2, __n);
  }
}

uint64_t topLevelLookUpObjectTypeFromStringHash(uint64_t a1, const char *a2, size_t a3)
{
  v3 = glpStringHashGet(a1, a2, a3);
  if (v3)
  {
    return *v3;
  }

  else
  {
    return -1;
  }
}

uint64_t glpMakeLog(void *a1)
{
  v2 = (a1[1])(*a1, 48, "Log");
  *v2 = a1;
  *(v2 + 8) = 0;
  *(v2 + 16) = glpMakeStringBuffer(a1);
  *(v2 + 24) = 0;
  return v2;
}

uint64_t glpDestroyLog(uint64_t **a1)
{
  glpDestroyStringBuffer(a1[2]);
  v2 = (*a1)[3];
  v3 = **a1;

  return v2(v3, a1);
}

double glpLogMessage(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, ...)
{
  va_start(va, a4);
  if (*(a1 + 24))
  {
    ++*(a1 + 4 * a2 + 28);
  }

  else
  {
    if (!a2)
    {
      *(a1 + 8) = 1;
    }

    v6 = *(a3 + 16);
    v7 = *(a1 + 16);
    logLevelToString(a2);
    if (v6 == -1)
    {
      glpStringBufferAppendFormat(v7, "%s: ");
    }

    else
    {
      glpStringBufferAppendFormat(v7, "%s: %.*s:%u: ");
    }

    glpStringBufferAppendFormatv(*(a1 + 16), a4, va);
    glpStringBufferAppendCString(*(a1 + 16), "\n");
  }

  return result;
}

char *logLevelToString(unsigned int a1)
{
  if (a1 >= 4)
  {
    abort();
  }

  return off_278B49758[a1];
}

uint64_t glpLogSuppress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 28) = 0;
  v4 = a1 + 28;
  *(a1 + 36) = 0;
  *(a1 + 24) = 1;
  (*(a2 + 16))(a2);
  *(v4 - 4) = 0;
  v5 = *(a3 + 16);

  return v5(a3, v4);
}

void *glpLogSerialize(uint64_t a1, _DWORD *a2)
{
  String = glpStringBufferGetString(*(a1 + 16));
  v6 = v5;
  *a2++ = *(a1 + 8);
  result = memcpy(a2, String, v5);
  *(a2 + v6) = 0;
  return result;
}

uint64_t glpMakeNameTable(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v6 = glpCompilerPoolAlloc(a1);
  *(v6 + 264) = a1;
  glpCompilerGetAllocator();
  glpInitDeserialContext(v6, v7, v7, 0, 0);
  glpCompilerGetAllocator();
  v9 = v8;
  StringHash = glpMakeStringHash(v8);
  v11 = (v9[1])(*v9, 40, "Name List Node");
  *(v11 + 16) = 0;
  *v11 = StringHash;
  *(v11 + 8) = glpMakeIntHash(v9);
  *(v11 + 36) = 0;
  *(v11 + 24) = 0;
  *(v6 + 272) = v11;
  *(v6 + 280) = v11;
  glpCompilerGetAllocator();
  v13 = v12;
  glpCompilerGetAllocator();
  v15 = glpMakeStringHash(v14);
  v16 = (v13[1])(*v13, 40, "Name List Node");
  *(v16 + 16) = 0;
  *v16 = v15;
  *(v16 + 8) = glpMakeIntHash(v13);
  *(v16 + 36) = 0;
  *(v16 + 24) = 0;
  *(*(v6 + 280) + 16) = v16;
  glpCompilerGetAllocator();
  *(v6 + 456) = 10;
  *(v6 + 464) = (*(v17 + 8))(*v17, 80, "Vector Storage (GLPHashTable *)");
  *(v6 + 288) = 0;
  *(v6 + 292) = a2;
  glpNameTableSetGLSLVersion(v6, v3);
  *(v6 + 472) = 0;
  return v6;
}

uint64_t glpNameTableSetGLSLVersion(uint64_t a1, int a2)
{
  *(a1 + 296) = a2;
  memset_pattern16((a1 + 300), &unk_23A29C840, 0x98uLL);
  *(a1 + 288) = 0;
  glpDestroyIntHash(*(*(a1 + 272) + 8));
  glpCompilerGetAllocator();
  result = glpMakeIntHash(v4);
  *(*(a1 + 272) + 8) = result;
  v6 = *(a1 + 292);
  if (v6 == 4)
  {
    v10 = *(a1 + 264);
    v8 = 8;
  }

  else
  {
    if (v6)
    {
      return result;
    }

    v7 = glpCompilerPoolAlloc(*(a1 + 264));
    v8 = 16;
    *v7 = 16;
    glpIntHashPut(*(*(a1 + 272) + 8), 1, v7, v9);
    v10 = *(a1 + 264);
  }

  v11 = glpCompilerPoolAlloc(v10);
  *v11 = v8;
  glpIntHashPut(*(*(a1 + 272) + 8), 5, v11, v12);
  v13 = glpCompilerPoolAlloc(*(a1 + 264));
  *v13 = 4;
  glpIntHashPut(*(*(a1 + 272) + 8), 17, v13, v14);
  v15 = glpCompilerPoolAlloc(*(a1 + 264));
  *v15 = 4;
  result = glpIntHashPut(*(*(a1 + 272) + 8), 19, v15, v16);
  if (!a2)
  {
    v17 = glpCompilerPoolAlloc(*(a1 + 264));
    *v17 = 4;
    v19 = *(*(a1 + 272) + 8);

    return glpIntHashPut(v19, 21, v17, v18);
  }

  return result;
}

uint64_t glpDestroyNameTable(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 16);
      glpDestroyStringHash(*v2);
      glpCompilerGetAllocator();
      (*(v4 + 24))(*v4, v2);
      v2 = v3;
    }

    while (v3);
  }

  glpCompilerGetAllocator();
  v6 = v5[3];
  v7 = *v5;

  return v6(v7, a1);
}

uint64_t glpNameTablePutPrecision(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = glpCompilerPoolAlloc(*(a1 + 264));
  *v6 = a3;
  v8 = *(*(a1 + 272) + 8);

  return glpIntHashPut(v8, a2, v6, v7);
}

uint64_t glpNameTableSetGLSLExtensionBehavior(uint64_t result, unsigned int a2, int a3)
{
  *(result + 4 * a2 + 300) = a3;
  *(result + 288) = 0;
  if (a2 == 19 && a3 != 3)
  {
    *(result + 448) = 3;
  }

  return result;
}

BOOL glpNameTableGet(uint64_t a1, char *a2, size_t a3, char a4, uint64_t a5)
{
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 0x40000000;
  v84 = __glpNameTableGet_block_invoke;
  v85 = &unk_278B49780;
  v86 = a5;
  v6 = *(a1 + 272);
  if (v6)
  {
    v7 = 0;
    v8 = *(*(a1 + 280) + 16);
    v9 = a4 & 2;
    do
    {
      v10 = *(v6 + 36);
      v11 = *(a1 + 280);
      v12 = glpStringHashGet(*v6, a2, a3);
      if (v12)
      {
        v13 = v10 != 0;
        if (v6 == v11)
        {
          v13 = 2;
        }

        if (v6 == v8)
        {
          v14 = 3;
        }

        else
        {
          v14 = v13;
        }

        v15 = (v84)(v83, v14, v12);
        if (v15 | v9)
        {
          return v15 != 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if (v12)
      {
        v16 = v6 == v8;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v7 = 1;
      }

      v6 = *(v6 + 16);
    }

    while (v6);
    if (v7)
    {
      return 0;
    }
  }

  if (*(a1 + 288))
  {
    goto LABEL_79;
  }

  v17 = *(a1 + 296);
  if (v17 > 4)
  {
    if (v17 > 6)
    {
      if (v17 != 7 && v17 != 8)
      {
        abort();
      }

      goto LABEL_92;
    }

    if (v17 != 6)
    {
      abort();
    }

    v17 = 1;
  }

  else
  {
    if (v17 > 0)
    {
      if (v17 <= 2 && v17 != 1)
      {
        abort();
      }

      goto LABEL_92;
    }

    if (v17)
    {
      goto LABEL_92;
    }
  }

  v19 = v17;
  if (!builtInsArchives[v17])
  {
    pthread_mutex_lock(&mutex);
    if (builtInsArchives[v19])
    {
LABEL_35:
      pthread_mutex_unlock(&mutex);
      goto LABEL_36;
    }

    glpInitPoolAllocator(0x20000, 0x20000, &poolAllocators[4 * v19]);
    v88 = 0;
    v87 = 0;
    if (!glpGetBIArchiveData(v19, &v87, &v88))
    {
      aborting_due_to_builtin_read_failure_suggesting_corrupt_os_installation();
    }

    v20 = glpOpenArchive(&poolAllocators[4 * v19], v88, v87);
    builtInsArchives[v19] = v20;
    if (!v20)
    {
      aborting_due_to_invalid_builtin_contents_suggesting_corrupt_os_installation();
    }

    v21 = malloc_type_calloc(*(&GLP_BI_INDEX_COUNT + v19), 8uLL, 0x1A32276BuLL);
    if (v21)
    {
      nameTableSets[v19] = v21;
      glpLockPoolAllocator(&poolAllocators[4 * v19]);
      goto LABEL_35;
    }

LABEL_92:
    abort();
  }

LABEL_36:
  v22 = *(a1 + 280);
  v23 = *(v22 + 16);
  if (v23)
  {
    do
    {
      v24 = *(v23 + 16);
      glpDestroyStringHash(*v23);
      glpCompilerGetAllocator();
      (*(v25 + 24))(*v25, v23);
      v23 = v24;
    }

    while (v24);
    v22 = *(a1 + 280);
  }

  *(v22 + 16) = 0;
  glpCompilerGetAllocator();
  v27 = v26;
  glpCompilerGetAllocator();
  StringHash = glpMakeStringHash(v28);
  v30 = (v27[1])(*v27, 40, "Name List Node");
  *(v30 + 16) = 0;
  *v30 = StringHash;
  *(v30 + 8) = glpMakeIntHash(v27);
  *(v30 + 36) = 0;
  *(v30 + 24) = 0;
  *(*(a1 + 280) + 16) = v30;
  glpCompilerGetAllocator();
  (*(v31 + 24))(*v31, *(a1 + 464));
  glpCompilerGetAllocator();
  *(a1 + 456) = 10;
  *(a1 + 464) = (*(v32 + 8))(*v32, 80, "Vector Storage (GLPHashTable *)");
  v33 = *(&GLP_BI_INDEX_COUNT + v19);
  if (v33)
  {
    v34 = 0;
    v35 = GLP_BI_INDEX[v19];
    v36 = a1 + 300;
    v79 = v35;
    v80 = &poolAllocators[4 * v19];
    v37 = v35 + 27;
    v38 = v35 + 3;
    v39 = v35 + 8;
    v76 = *(&GLP_BI_INDEX_COUNT + v19);
    v77 = v19;
    do
    {
      v40 = &v35[30 * v34];
      v41 = *(v40 + 5);
      if (v41)
      {
        v42 = v37;
        while (1)
        {
          v43 = *v42;
          v42 = (v42 + 4);
          if (v43 == *(a1 + 292))
          {
            break;
          }

          if (!--v41)
          {
            goto LABEL_77;
          }
        }

        v44 = *(v40 + 3);
        if (v44)
        {
          v45 = v38;
          while (1)
          {
            v46 = *v45;
            v45 = (v45 + 4);
            if (v46 == *(a1 + 296))
            {
              break;
            }

            if (!--v44)
            {
              goto LABEL_50;
            }
          }
        }

        else
        {
LABEL_50:
          v47 = *(v40 + 4);
          v48 = v39;
          if (!v47)
          {
            goto LABEL_77;
          }

          while (1)
          {
            v49 = *v48;
            v48 = (v48 + 4);
            if (*(v36 + 4 * v49) != 3)
            {
              break;
            }

            if (!--v47)
            {
              goto LABEL_77;
            }
          }
        }

        pthread_mutex_lock(&mutex);
        if (!*(nameTableSets[v19] + 8 * v34))
        {
          glpUnlockPoolAllocator(v80);
          v50 = *v40;
          v51 = nameTableSets[v19];
          v78 = builtInsArchives[v19];
          v52 = strlen(*v40);
          if (v52)
          {
            v53 = v52;
            LODWORD(v54) = v52;
            do
            {
              v54 = (32 * v54 + (v54 >> 2) + v50[v53 - 1]) ^ v54;
              v53 += ~(v52 >> 5);
            }

            while (v53 > v52 >> 5);
            v55 = v54 << 32;
          }

          else
          {
            v55 = 0;
          }

          v88 = 0;
          v87 = 0;
          if (!glpArchiveFileGetEntryNamed(v78, v50, v55 | v52, &v88, &v87) || !glpDeserializeNames(v80, v87, v88, (v51 + 8 * v34)))
          {
            goto LABEL_92;
          }

          v56 = *v40;
          v57 = strlen(*v40);
          if (v57)
          {
            v58 = v57;
            LODWORD(v59) = v57;
            do
            {
              v59 = (32 * v59 + (v59 >> 2) + v56[v58 - 1]) ^ v59;
              v58 += ~(v57 >> 5);
            }

            while (v58 > v57 >> 5);
            v60 = v59 << 32;
          }

          else
          {
            v60 = 0;
          }

          glpArchiveFileFinishEntryNamed(builtInsArchives[v19], v56, v60 | v57);
          glpLockPoolAllocator(v80);
        }

        pthread_mutex_unlock(&mutex);
        v61 = *(nameTableSets[v19] + 8 * v34);
        v62 = *(a1 + 460);
        v63 = *(a1 + 456);
        if (v62 + 1 <= v63)
        {
          v69 = *(a1 + 464);
          v72 = *(a1 + 460);
        }

        else
        {
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = 2 * v63;
          if (v64 <= v62 + 1)
          {
            v65 = v62 + 1;
          }

          else
          {
            v65 = v64;
          }

          glpCompilerGetAllocator();
          v66 = v61;
          v68 = v67;
          v69 = (v67[1])(*v67, 8 * v65, "Vector Storage (GLPHashTable *, growth)");
          memcpy(v69, *(a1 + 464), 8 * *(a1 + 460));
          v70 = v68[3];
          v71 = *v68;
          v61 = v66;
          v70(v71, *(a1 + 464));
          *(a1 + 456) = v65;
          v33 = v76;
          v19 = v77;
          *(a1 + 464) = v69;
          v72 = *(a1 + 460);
        }

        memmove(&v69[8 * v62 + 8], &v69[8 * v62], 8 * (v72 - v62));
        *(*(a1 + 464) + 8 * v62) = v61;
        ++*(a1 + 460);
        v36 = a1 + 300;
        v35 = v79;
      }

LABEL_77:
      ++v34;
      v37 += 30;
      v38 += 30;
      v39 += 30;
    }

    while (v34 != v33);
  }

  *(a1 + 288) = 1;
LABEL_79:
  v73 = *(a1 + 460);
  if (!v73)
  {
    return 0;
  }

  v74 = 0;
  while (1)
  {
    v75 = getAndRemapBuiltinFromScope(a1, *(*(a1 + 464) + 8 * v74), a2, a3, v74, v73, 6);
    if (v75)
    {
      if ((v84)(v83, 3, v75))
      {
        break;
      }
    }

    if (v73 == ++v74)
    {
      return 0;
    }
  }

  return 1;
}

BOOL __glpNameTableGet_block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v11 = 0;
  v5 = *a3;
  if (v5 == 9)
  {
    v6 = *(a3 + 1);
    (*(*(a1 + 32) + 16))();
    v7 = *(a1 + 32);
    v8 = *(v6 + 8);
    v5 = *v8;
    v9 = *(v8 + 1);
  }

  else
  {
    v7 = *(a1 + 32);
    v9 = *(a3 + 1);
  }

  (*(v7 + 16))(v7, v5, v9, a2, &v11);
  return v11 != 0;
}

uint64_t getAndRemapBuiltinFromScope(uint64_t a1, uint64_t a2, char *a3, size_t __n, int a5, unsigned int a6, char a7)
{
  v23 = **(*(a1 + 280) + 16);
  v11 = glpStringHashGet(a2, a3, __n);
  if (!v11)
  {
    return 0;
  }

  glpReInitDeserialContext(a1, (v11 + 1), *v11);
  v24 = 0;
  deserialize_GLPNameTableEntry(a1, &v24);
  v13 = v24;
  if (*v24 == 13)
  {
    v14 = *(v24 + 8);
    v15 = *(v14 + 4);
    if (v15)
    {
      v16 = 0;
      v13 = 0;
      v17 = 24 * v15;
      do
      {
        v18 = *(v14 + 8);
        if ((a7 & 2) != 0)
        {
          remap(a1, a3, __n, a5, a6, *(v18 + v16), **(v18 + v16), *(*(v18 + v16) + 8));
        }

        if (glpStringsEqual(*(v18 + v16 + 8), *(v18 + v16 + 16), a3, __n))
        {
          v13 = *(v18 + v16);
        }

        if ((a7 & 4) != 0)
        {
          glpStringHashPut(v23, *(v18 + v16 + 8), *(v18 + v16 + 16), v19, *(v18 + v16));
        }

        v16 += 24;
      }

      while (v17 != v16);
      return v13;
    }

    return 0;
  }

  if ((a7 & 2) != 0)
  {
    remap(a1, a3, __n, a5, a6, v24, *v24, *(v24 + 8));
    v13 = v24;
  }

  if ((a7 & 4) != 0)
  {
    glpStringHashPut(v23, a3, __n, v12, v13);
    return v24;
  }

  return v13;
}

uint64_t glpNameTablePut(uint64_t a1, const char *a2, size_t a3, int a4, uint64_t a5)
{
  v10 = *(a1 + 272);
  v11 = glpStringHashGet(*v10, a2, a3);
  if (v11 && *(a1 + 296) == 1)
  {
    v12 = v11;
    v13 = glpCompilerPoolAlloc(*(a1 + 264));
    v14 = glpCompilerPoolAlloc(*(a1 + 264));
    *v14 = *v12;
    *(v14 + 8) = *(v12 + 8);
    *v13 = v14;
    result = glpCompilerPoolAlloc(*(a1 + 264));
    *result = a4;
    *(result + 8) = a5;
    v13[1] = result;
    *v12 = 9;
    *(v12 + 8) = v13;
  }

  else
  {
    v16 = glpCompilerPoolAlloc(*(a1 + 264));
    *v16 = a4;
    *(v16 + 8) = a5;
    v18 = *v10;

    return glpStringHashPut(v18, a2, a3, v17, v16);
  }

  return result;
}

uint64_t glpNameTablePush(uint64_t a1, uint64_t a2)
{
  glpCompilerGetAllocator();

  return nameTablePush(v4, (a1 + 272), a2, 0);
}

uint64_t nameTablePush(void *a1, uint64_t *a2, uint64_t a3, char a4)
{
  StringHash = glpMakeStringHash(a1);
  v9 = (a1[1])(*a1, 40, "Name List Node");
  *(v9 + 16) = 0;
  *v9 = StringHash;
  result = glpMakeIntHash(a1);
  *(v9 + 8) = result;
  *(v9 + 36) = a4;
  *(v9 + 24) = a3;
  *(v9 + 16) = *a2;
  *a2 = v9;
  return result;
}

uint64_t glpNameTablePushForFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  glpCompilerGetAllocator();
  result = nameTablePush(v6, (a1 + 272), a2, 1);
  *(a1 + 472) = a3;
  return result;
}

uint64_t glpNameTablePop(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (*(v2 + 36))
  {
    *(a1 + 472) = 0;
  }

  glpDestroyStringHash(*v2);
  v3 = *(v2 + 16);
  glpCompilerGetAllocator();
  result = (*(v4 + 24))(*v4, v2);
  *(a1 + 272) = v3;
  return result;
}

uint64_t glpNameTableGetPrecision(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 272);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v4 = v2[2];
    if (*v2)
    {
      v5 = glpIntHashGet(v2[1], a2);
      if (v5)
      {
        break;
      }
    }

    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return *v5;
}

void *remap(uint64_t a1, char *a2, size_t a3, int a4, unsigned int a5, uint64_t a6, int a7, void *a8)
{
  *a6 = a7;
  v10 = *(a1 + 264);
  if (a7 == 4)
  {
    result = glpCompilerRemapObject(v10, 4, a8, 0, 1);
    v16 = result;
    v17 = (a4 + 1);
    if (v17 >= a5)
    {
      v19 = result;
    }

    else
    {
      do
      {
        result = getAndRemapBuiltinFromScope(a1, *(*(a1 + 464) + 8 * v17), a2, a3, v17, a5, 0);
        if (result && (v18 = result[1]) != 0)
        {
          do
          {
            v19 = glpCompilerPoolAlloc(*(a1 + 264));
            result = glpCompilerRemapObject(*(a1 + 264), 10, *v18, 0, 1);
            *v19 = result;
            v19[1] = v16;
            v18 = *(v18 + 8);
            v16 = v19;
          }

          while (v18);
        }

        else
        {
          v19 = v16;
        }

        ++v17;
        v16 = v19;
      }

      while (v17 != a5);
    }
  }

  else
  {
    result = glpCompilerRemapObject(v10, a7, a8, 0, 1);
    v19 = result;
  }

  *(a6 + 8) = v19;
  return result;
}

unsigned int *FinishType(unsigned int *result)
{
  v1 = result[5];
  if (v1 >= 4)
  {
    if (v1 == 4)
    {
      v3 = *result;
      v2 = result[1];
      result[2] = *result;
      result[3] = v2;
      result[4] = 8;
      if (v3 >= 3)
      {
        result[2] = 2;
        result[3] = 2 * v2;
      }
    }
  }

  else
  {
    *(result + 1) = *result;
    result[4] = 4;
  }

  return result;
}

double InitReg(unsigned __int16 *a1, int a2, uint64_t a3)
{
  *(a3 + 40) = a2;
  result = 0.0;
  *(a3 + 44) = xmmword_23A29C850;
  *(a3 + 60) = 3;
  *(a3 + 64) = *a1;
  *(a3 + 72) = 0;
  return result;
}

double AddArray(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == 2)
  {
    v6 = (*(a2 + 4) << 16) | (*(a3 + 4) << 48);
    PPStreamAddParamBindingArray(a1, &v6);
  }

  else if (*a2 == 1)
  {
    v6 = (*(a2 + 4) << 16) | (*(a3 + 4) << 48);
    PPStreamAddTempUsageArray(a1, &v6);
  }

  *(a2 + 40) = xmmword_23A29C860;
  *&result = 0x300000002;
  *(a2 + 56) = 0x300000002;
  *(a2 + 64) = *a1;
  *(a2 + 72) = 0;
  return result;
}

char *AddBinding(char *result, uint64_t a2, uint64_t a3, int a4, __int128 *a5, uint64_t a6)
{
  if (*(a5 + 3))
  {
    v11 = result;
    v12 = 0;
    v13 = 0;
    do
    {
      NextIndex = 0;
      v15 = *(a5 + 2);
      v16 = v15 - 1;
      v17 = *a5 <= v15 || (v12 & 1) == 0;
      v18 = *a5 + ~v15;
      if (v17)
      {
        v18 = v16;
      }

      if (a4 <= 2)
      {
        if (a4)
        {
          if (a4 == 1)
          {
            v33 = ((v18 & 3) << 6) | (8 * (*(a5 + 20) & 7)) | *(a5 + 6) & 7 | ((*(a5 + 7) & 1u) << 8);
            NextIndex = PPStreamChunkListGetNextIndex(v11[4]);
            DWORD2(v33) = NextIndex;
            result = PPStreamAddTempUsage(v11, &v33);
          }

          else if (a4 == 2)
          {
            v19 = *(a6 + 8 * v12) & 0xFFFFFFFFFFFFFF3FLL | ((v18 & 3) << 6);
            *(a6 + 8 * v12) = v19;
            v20 = v19 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a5 + 5) & 7));
            *(a6 + 8 * v12) = v20;
            v21 = v20 & 0xFFFFFFFFFFFFFFF8 | *(a5 + 6) & 7;
            *(a6 + 8 * v12) = v21;
            v33 = v21;
            NextIndex = PPStreamChunkListGetNextIndex(v11[7]);
            DWORD2(v33) = NextIndex;
            result = PPStreamAddParamBinding(v11, &v33);
            if ((v33 & 0x1F00) == 0x400)
            {
              v13 = 2;
            }
          }
        }

        else
        {
          v25 = *(a6 + 8 * v12) & 0xFFFFFFFFFFFFFF3FLL | ((v18 & 3) << 6);
          *(a6 + 8 * v12) = v25;
          v26 = v25 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a5 + 5) & 7));
          *(a6 + 8 * v12) = v26;
          v27 = v26 & 0xFFFFFFFFFFFFFFF8 | *(a5 + 6) & 7;
          *(a6 + 8 * v12) = v27;
          v33 = v27;
          NextIndex = PPStreamChunkListGetNextIndex(v11[6]);
          DWORD2(v33) = NextIndex;
          result = PPStreamAddAttribBinding(v11, &v33);
        }

        goto LABEL_22;
      }

      switch(a4)
      {
        case 3:
          goto LABEL_18;
        case 4:
          LODWORD(v33) = 0;
          NextIndex = PPStreamChunkListGetNextIndex(v11[5]);
          LODWORD(v33) = NextIndex;
          result = PPStreamAddAddressUsage(v11, &v33);
          break;
        case 5:
LABEL_18:
          v22 = *(a6 + 8 * v12) & 0xFFFFFFFFFFFFFF3FLL | ((v18 & 3) << 6);
          *(a6 + 8 * v12) = v22;
          v23 = v22 & 0xFFFFFFFFFFFFFFC7 | (8 * (*(a5 + 5) & 7));
          *(a6 + 8 * v12) = v23;
          v24 = v23 & 0xFFFFFFFFFFFFFFF8 | *(a5 + 6) & 7;
          *(a6 + 8 * v12) = v24;
          v33 = v24;
          NextIndex = PPStreamChunkListGetNextIndex(v11[8]);
          DWORD2(v33) = NextIndex;
          result = PPStreamAddOutputBinding(v11, &v33);
          break;
      }

LABEL_22:
      v28 = a5[1];
      v33 = *a5;
      v34 = v28;
      v29 = *v11;
      if (!v12)
      {
        *a2 = a4;
        *(a2 + 4) = NextIndex;
        v30 = v34;
        *(a2 + 8) = v33;
        *(a2 + 24) = v30;
        *(a2 + 40) = v13;
        *(a2 + 44) = xmmword_23A29C850;
        *(a2 + 60) = 3;
        *(a2 + 64) = v29;
        *(a2 + 72) = 0;
        *(a2 + 68) = 0;
      }

      v31 = *(a5 + 3);
      if (v12 == v31 - 1)
      {
        *a3 = a4;
        *(a3 + 4) = NextIndex;
        v32 = v34;
        *(a3 + 8) = v33;
        *(a3 + 24) = v32;
        *(a3 + 40) = v13;
        *(a3 + 44) = xmmword_23A29C850;
        *(a3 + 60) = 3;
        *(a3 + 64) = v29;
        *(a3 + 72) = 0;
        *(a3 + 68) = 0;
        v31 = *(a5 + 3);
      }

      ++v12;
    }

    while (v12 < v31);
  }

  return result;
}

char *AddConstant(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 0;
  v10 = 8 * *(a4 + 12);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFF0);
  bzero(v11, v10);
  bzero(v11, v10);
  if (*(a4 + 12))
  {
    v12 = 0;
    do
    {
      v13 = *&v11[8 * v12] & 0xFFFFFFFFFFFFE0FFLL | 0x600;
      *&v11[8 * v12] = v13;
      *&v11[8 * v12] = v13 & 0xFFFF0000FFFFFFFFLL | (PPStreamChunkListGetNextIndex(*(a1 + 128)) << 32);
      v16 = 0;
      v17 = 0;
      __memcpy_chk();
      PPStreamAddConstant(a1, &v16);
      ++v12;
      a5 += 16;
    }

    while (v12 < *(a4 + 12));
  }

  return AddBinding(a1, a2, a3, 2, a4, v11);
}

char *AddOpv(uint64_t a1, unsigned __int8 a2, _DWORD *a3, _DWORD *a4, uint64_t *a5, unint64_t *a6)
{
  v7 = a1;
  v110 = *MEMORY[0x277D85DE8];
  v8 = *(*(a1 + 104) + 8);
  if (v8)
  {
    v9 = (v8 + 3);
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = 8 * (v8[3] & 7);
  }

  else
  {
    v10 = 0;
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v93 = 0u;
  if (a4)
  {
    if (a4[17])
    {
      ++a4[19];
    }

    if (a5)
    {
      v11 = *a5;
    }

    else
    {
      v73 = a4[2];
      v11 = 1912602624;
      if (v73 > 2)
      {
        if (v73 == 3)
        {
          v11 = 1913061376;
        }

        else if (v73 == 4)
        {
          v11 = 1913094144;
        }
      }

      else if (v73 == 1)
      {
        v11 = 1912864768;
      }

      else if (v73 == 2)
      {
        v11 = 1912995840;
      }
    }

    if (a4[10] == 1)
    {
      v12 = v11 | 0x100000000;
    }

    else
    {
      v12 = v11;
    }

    v13.i64[0] = 0x100000001;
    v13.i64[1] = 0x100000001;
    v14 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v12), xmmword_23A29C870), v13)) - 1;
    *(&v93 + 1) = v12 & 0xFFFFFF878FFFLL | ((a4[2] << 21) + 6291456) & 0x600000 | ((a4[3] << 19) + 1572864) & 0x180000 | ((*a4 & 7) << 12) | (a4[1] << 48);
  }

  else
  {
    v14 = -1;
  }

  v15 = *a6;
  v16 = a6[1];
  v17 = *a6 != 0;
  v18 = *a6 | v16;
  if (*a6 == 0)
  {
    v32 = 1;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      if (v17)
      {
        if (*(v15 + 68))
        {
          ++*(v15 + 72);
        }

        if (v16)
        {
          v22 = *v16;
        }

        else
        {
          *(&v94 + v19) = 0;
          v24 = (*(v15 + 48) & 3) << 9;
          *(&v94 + v19) = v24;
          v25 = v24 & 0xFFFFE7FF | ((*(v15 + 52) & 3u) << 11);
          *(&v94 + v19) = v25;
          v26 = v25 & 0xFFFF9FFF | ((*(v15 + 56) & 3u) << 13);
          *(&v94 + v19) = v26;
          v22 = v26 & 0xFFFE7FFF | ((*(v15 + 60) & 3u) << 15);
        }

        *(&v94 + v19) = v22;
        v27 = v22 & 0xFFFFFFFFFFE7FFFFLL | ((*(v15 + 8) << 19) + 1572864) & 0x180000;
        *(&v94 + v19) = v27;
        v28 = v27 & 0xFFFFFFFFFFF9FFFFLL | ((*(v15 + 12) << 17) + 393216) & 0x60000;
        *(&v94 + v19) = v28;
        v29 = v28 & 0xFFFFFFFFFFFFFE3FLL | ((*v15 & 7) << 6);
        *(&v94 + v19) = v29;
        v30 = v29 & 0xFFFFFFFFFFFFLL | (*(v15 + 4) << 48);
        *(&v94 + v19) = v30;
        v23 = v30 & 0xFFFFFFFFFFFFFFEFLL | (16 * (*(v15 + 44) & 1));
      }

      else
      {
        v23 = *v16;
        v20 = 1;
      }

      *(&v94 + v19) = v23;
      v19 = (v21 + 1);
      v31 = &a6[2 * v19];
      v15 = *v31;
      v16 = v31[1];
      v17 = *v31 != 0;
      v21 = v19;
    }

    while (v15 | v16);
    v32 = v20 == 0;
    v18 = v19 & 7;
  }

  v33 = a4 + 2;
  if (a3)
  {
    v33 = a3;
    v34 = -1;
  }

  else
  {
    v34 = v14;
  }

  if (a4)
  {
    v35 = v33;
  }

  else
  {
    v35 = a3;
  }

  if (a4)
  {
    v36 = v34;
  }

  else
  {
    v36 = -1;
  }

  if (v35 && v36 == -1)
  {
    v36 = *v35 - 1;
  }

  if (v32)
  {
    v37 = (a4 != 0) << 32;
  }

  else
  {
    v37 = ((a4 != 0) << 32) | 0x28000;
  }

  v38 = v37 | v10 & 0xFFFFC03F | (a2 << 6) | v18;
  *&v93 = v38;
  if (v35)
  {
    v38 = ((v36 & 3) << 36) | (((v35[1] - 1) & 3) << 34) | ((v35[5] & 7) << 38) | v38 & 0x17FC7FFFFLL | ((v35[6] & 7) << 19);
    *&v93 = v38;
  }

  v39 = 0;
  while (1)
  {
    if ((v38 & 0x3FC0) != 0 || !v9)
    {
      if ((v38 & 0x3FC0) != 0x1B40)
      {
        goto LABEL_125;
      }

      if (!v9)
      {
        goto LABEL_125;
      }

      v40 = *v9;
      if ((*v9 & 0x3FC0) != 0x1B40)
      {
        goto LABEL_125;
      }

LABEL_64:
      v45 = 1;
      goto LABEL_65;
    }

    v40 = *v9;
    v41 = *v9 & 0x3FC0;
    if (v41)
    {
      v42 = v41 == 6976;
    }

    else
    {
      v42 = 1;
    }

    if (!v42)
    {
      goto LABEL_125;
    }

    v43 = (v40 >> 6);
    if (v43 != 109 && v43 != 0)
    {
      goto LABEL_64;
    }

    v45 = *(*a6 + 68) == 0;
LABEL_65:
    v46 = v9[1];
    v47 = DWORD2(v93);
    v48 = (DWORD2(v93) >> 18) & 1;
    v49 = (((DWORD2(v93) & 0x40000) == 0) & (v46 >> 18)) == 0 && ((v46 >> 17) & ~(DWORD2(v93) >> 17) & 1) == 0 && (WORD1(v46) & ~HIWORD(DWORD2(v93)) & 1) == 0 && ((v46 >> 15) & ~(DWORD2(v93) >> 15) & 1) == 0;
    v50 = 0;
    v51 = v9[2];
    v52 = v94;
    v53 = ((v94 ^ v51) & 0x30) == 0;
    if (!((v94 ^ v46) >> 48) && (((v94 >> 6) ^ (v46 >> 12)) & 7) == 0)
    {
      v50 = ((v94 ^ HIDWORD(v46)) & 1) == 0 && (((v46 >> 33) ^ (v94 >> 1)) & 1) == 0 && (((v46 >> 34) ^ (v94 >> 2)) & 3) == 0 && ((v94 << 32) ^ (v46 << 20)) >> 56 == 0;
    }

    v54 = v40 ^ v38;
    v55 = (v40 ^ v38) & 0xFFFFC9CE00380000;
    if ((v38 & 0xC00000000) != 0)
    {
      v53 = 0;
      v49 = v49 && (v54 & 0x3000000000) == 0;
      v56 = 0;
    }

    else
    {
      if (v49)
      {
        v49 = ((v38 >> 36) & 3) >= ((v40 >> 36) & 3);
      }

      if ((v54 & 0x3000000000) != 0)
      {
        v45 = 1;
      }

      if (v45 || *(*a6 + 72) != 1)
      {
        v56 = 0;
      }

      else
      {
        v57 = v7;
        v58 = 0;
        v59.i64[0] = 0x300000003;
        v59.i64[1] = 0x300000003;
        v106 = vandq_s8(vshlq_u32(vdupq_n_s32(v94), xmmword_23A29BE90), v59);
        do
        {
          v60 = v106.i32[v58];
          if (v60 == 3)
          {
            v61 = (v46 >> 15) & 1;
          }

          else
          {
            v61 = 1;
          }

          if (v60 == 2)
          {
            v61 = WORD1(v46) & 1;
          }

          if (v60 == 1)
          {
            v62 = (v46 >> 17) & 1;
          }

          else
          {
            v62 = 1;
          }

          if (!v60)
          {
            v62 = (v46 >> 18) & 1;
          }

          if (v60 <= 1)
          {
            v56 = v62;
          }

          else
          {
            v56 = v61;
          }

          if (v58 >= ((v38 >> 36) & 3))
          {
            break;
          }

          ++v58;
        }

        while (v56);
        if (v55)
        {
          v56 = 0;
        }

        v7 = v57;
      }
    }

    v63 = (*(&v93 + 1) ^ v46) & 0xFFFF0FFF00007000;
    if (v63 | v55)
    {
      v49 = 0;
    }

    if (v50)
    {
      v49 = v56;
    }

    if (!v49)
    {
      break;
    }

    if (v39)
    {
      PPStreamChunkListRemoveChunk(*(v7 + 104), v39);
      v40 = *v9;
      v38 = v93;
    }

    v64 = v38 & 0xFFFFFFFFFFFFFFC7 | (8 * ((v40 >> 3) & 7));
    *&v93 = v64;
    LODWORD(v97) = *(v9 + 16);
    if ((v50 & v56 & 1) == 0)
    {
      v71 = v96;
      v70 = v97;
      *(v9 + 2) = v95;
      *(v9 + 3) = v71;
      *(v9 + 4) = v70;
      v72 = v94;
      *v9 = v93;
      *(v9 + 1) = v72;
      return v8;
    }

    v38 = v64 & 0xFFFFFFFFFFFFC03FLL | ((*v9 >> 6) << 6);
    v65 = v9[2];
    *&v93 = v38;
    *&v94 = v65;
    v67 = v96;
    v66 = v97;
    *(v9 + 2) = v95;
    *(v9 + 3) = v67;
    *(v9 + 4) = v66;
    v68 = v94;
    *v9 = v93;
    *(v9 + 1) = v68;
    v39 = v8;
    v8 = *v8;
    if (v8)
    {
      v9 = (v8 + 3);
    }

    else
    {
      v9 = 0;
    }
  }

  v69 = !v53;
  if (v63 | (v94 ^ v51) & 0xFFFF0000FF0001CFLL | v55)
  {
    v69 = 1;
  }

  if ((v69 & 1) != 0 || v50)
  {
LABEL_125:
    if (!v39)
    {
      return PPStreamAddOperation(v7, &v93, 0);
    }

    return v39;
  }

  if (v39)
  {
    PPStreamChunkListRemoveChunk(*(v7 + 104), v39);
    v47 = DWORD2(v93);
    v52 = v94;
    LODWORD(v46) = *(v9 + 2);
    v51 = v9[2];
    v48 = (DWORD2(v93) >> 18) & 1;
  }

  v74 = 0;
  v103 = v48;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v75 = vdupq_n_s32(v47);
  v104 = vand_s8(vshl_u32(*v75.i8, 0xFFFFFFF0FFFFFFEFLL), 0x100000001);
  v105 = (v47 >> 15) & 1;
  v76.i64[0] = 0x300000003;
  v76.i64[1] = 0x300000003;
  v101 = vandq_s8(vshlq_u32(vdupq_n_s32(v52), xmmword_23A29BE90), v76);
  v102 = vandq_s8(vshlq_u32(v75, xmmword_23A29BEA0), v76);
  v77 = vdupq_n_s32(v46);
  LODWORD(v100) = (v46 >> 18) & 1;
  *(&v100 + 4) = vand_s8(vshl_u32(*v77.i8, 0xFFFFFFF0FFFFFFEFLL), 0x100000001);
  HIDWORD(v100) = (v46 >> 15) & 1;
  v98 = vandq_s8(vshlq_u32(vdupq_n_s32(v51), xmmword_23A29BE90), v76);
  v99 = vandq_s8(vshlq_u32(v77, xmmword_23A29BEA0), v76);
  while (2)
  {
    if (*(&v103 + v74 * 4))
    {
      v78 = &v101;
      v79 = &v102;
      goto LABEL_140;
    }

    if (*(&v100 + v74 * 4))
    {
      v78 = &v98;
      v79 = &v99;
LABEL_140:
      v106.i32[4 * v78->u32[v79->u32[v74]] + v74] = 1;
    }

    if (++v74 != 4)
    {
      continue;
    }

    break;
  }

  v80 = 0;
  v81 = 0;
  v82 = 0;
  v100 = 0uLL;
  v98 = xmmword_23A29C2D0;
  v99 = xmmword_23A29C2D0;
  v83 = v9[2] & 0xFFFFFFFFFFE7FFFFLL;
  v84 = vandq_s8(*v9, xmmword_23A29C880);
  v85 = v84.u64[1];
  v9[2] = v83;
  *v9 = v84;
  v86 = &v106;
  do
  {
    v87 = 0;
    v88 = 0;
    do
    {
      if (v86->i32[v87])
      {
        v89 = (v85 >> 21) & 3;
        if (v87 > v89)
        {
          v89 = v87;
        }

        v85 = v85 & 0xFFFFFFFFFF9FFFFFLL | (v89 << 21);
        v90 = (v83 >> 19) & 3;
        if (v82 > v90)
        {
          LOBYTE(v90) = v82;
        }

        v83 = v83 & 0xFFFFFFFFFFE7FFFFLL | ((v90 & 3) << 19);
        v88 = 1;
        *(&v100 + v87) = 1;
        ++v81;
        v9[1] = v85;
        v9[2] = v83;
        v99.i32[v87] = v82;
        v98.i32[v82] = v80;
      }

      ++v87;
    }

    while (v87 != 4);
    if (v88)
    {
      ++v82;
    }

    ++v80;
    ++v86;
  }

  while (v80 != 4);
  v91 = v83 & 0xFFFFFFFFFFFE01FFLL | ((v98.i8[0] & 3) << 9) & 0x7FF | ((v98.i8[4] & 3) << 11) & 0x1FFF | ((v98.i8[8] & 3) << 13) & 0x7FFF | ((v98.i8[12] & 3) << 15);
  v9[1] = v85 & 0xFFFFFFFF80787FFFLL | ((v100 & 1) << 18) & 0xFFFFFFFFF87FFFFFLL | ((BYTE4(v100) & 1) << 17) & 0xFFFFFFFFF87FFFFFLL | ((BYTE8(v100) & 1) << 16) & 0xFFFFFFFFF87FFFFFLL | ((BYTE12(v100) & 1u) << 15) | ((v99.i8[0] & 3) << 23) & 0xF9FFFFFF | ((v99.i8[4] & 3) << 25) | ((v99.i8[8] & 3) << 27) | ((v99.i8[12] & 3) << 29);
  v9[2] = v91;
  *v9 = v84.i64[0] | (((v81 - 1) & 3) << 36);
  return v8;
}

char *AddOp(uint64_t a1, unsigned __int8 a2, _DWORD *a3, _DWORD *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v17 = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  v15 = &a9;
  do
  {
    v10 = v15;
    v11 = *v15;
    v15 += 2;
    v12 = v10[1];
    v13 = &v16[v9];
    *v13 = v11;
    v13[1] = v12;
    ++v9;
  }

  while (v11 | v12);
  return AddOpv(a1, a2, a3, a4, a5, v16);
}

char *SrcSwizzle(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, uint64_t a5, uint32x4_t *a6, uint64_t a7, uint64_t a8)
{
  v8 = vandq_s8(vshlq_u32(*a6, xmmword_23A29C890), xmmword_23A29C8A0);
  *v8.i8 = vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  v30 = (v8.i32[0] | v8.i32[1]);
  v9 = a3[3];
  v27 = a3[2];
  v28 = v9;
  v29 = a3[4];
  v10 = a3[1];
  v25 = *a3;
  v26 = v10;
  if (a5)
  {
    DWORD2(v25) = a4;
    if (HIDWORD(v26) >= 4)
    {
      if (HIDWORD(v26) == 4)
      {
        *&v26 = __PAIR64__(HIDWORD(v25), a4);
        DWORD2(v26) = 8;
        if (a4 >= 3)
        {
          LODWORD(v26) = 2;
          DWORD1(v26) = 2 * HIDWORD(v25);
        }
      }
    }

    else
    {
      *&v26 = __PAIR64__(HIDWORD(v25), a4);
      DWORD2(v26) = 4;
    }

    return AddOp(a1, 0x39u, 0, a2, 0, a6, a7, a8, &v25);
  }

  else
  {
    v11 = *(a2 + 8);
    DWORD2(v25) = v11;
    if (HIDWORD(v26) >= 4)
    {
      if (HIDWORD(v26) == 4)
      {
        *&v26 = __PAIR64__(HIDWORD(v25), v11);
        DWORD2(v26) = 8;
        if (v11 >= 3)
        {
          LODWORD(v26) = 2;
          DWORD1(v26) = 2 * HIDWORD(v25);
        }
      }
    }

    else
    {
      *&v26 = __PAIR64__(HIDWORD(v25), v11);
      DWORD2(v26) = 4;
    }

    v13 = v29;
    *(a2 + 48) = v28;
    *(a2 + 64) = v13;
    v14 = v27;
    *(a2 + 16) = v26;
    *(a2 + 32) = v14;
    *a2 = v25;
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    v17 = a6->i32[0];
    v18 = a6->i32[1];
    if (a6->i32[0] > 1)
    {
      v19 = *(a2 + 56);
      if (v17 != 2)
      {
        LODWORD(v19) = 0;
        if (v17 == 3)
        {
          v19 = HIDWORD(v16);
        }
      }
    }

    else
    {
      v19 = *(a2 + 48);
      if (v17)
      {
        LODWORD(v19) = 0;
        if (v17 == 1)
        {
          v19 = HIDWORD(v15);
        }
      }
    }

    v20 = a6->i32[2];
    if (v18 > 1)
    {
      v21 = *(a2 + 56);
      if (v18 != 2)
      {
        LODWORD(v21) = 0;
        if (v18 == 3)
        {
          v21 = HIDWORD(v16);
        }
      }
    }

    else
    {
      v21 = *(a2 + 48);
      if (v18)
      {
        LODWORD(v21) = 0;
        if (v18 == 1)
        {
          v21 = HIDWORD(v15);
        }
      }
    }

    v22 = a6->i32[3];
    if (v20 > 1)
    {
      v23 = *(a2 + 56);
      if (v20 != 2)
      {
        LODWORD(v23) = 0;
        if (v20 == 3)
        {
          v23 = HIDWORD(v16);
        }
      }
    }

    else
    {
      v23 = *(a2 + 48);
      if (v20)
      {
        LODWORD(v23) = 0;
        if (v20 == 1)
        {
          v23 = HIDWORD(v15);
        }
      }
    }

    if (v22 > 1)
    {
      v24 = *(a2 + 56);
      if (v22 != 2)
      {
        LODWORD(v24) = 0;
        if (v22 == 3)
        {
          v24 = HIDWORD(v16);
        }
      }
    }

    else
    {
      v24 = *(a2 + 48);
      if (v22)
      {
        LODWORD(v24) = 0;
        if (v22 == 1)
        {
          v24 = HIDWORD(v15);
        }
      }
    }

    *(a2 + 48) = v19 | (v21 << 32);
    *(a2 + 56) = v23 | (v24 << 32);
    return *(*(a1 + 104) + 8);
  }
}

char *DstSwizzleMask(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint32x4_t *a5, uint32x4_t *a6, uint64_t a7, uint64_t a8)
{
  v8 = vorrq_s8(vandq_s8(vshlq_u32(*a5, xmmword_23A29C8B0), xmmword_23A29C8E0), vandq_s8(vshlq_u32(*a6, xmmword_23A29C8C0), xmmword_23A29C8D0));
  *v8.i8 = vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  v10 = (v8.i32[0] | v8.i32[1]);
  if (a4)
  {
    return AddOp(a1, 0x6Eu, 0, a2, &v10, a6, a7, a8, a3);
  }

  else
  {
    return AddOp(a1, 0, 0, a2, &v10, a6, a7, a8, a3);
  }
}

char *SetAddressRegister(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  *&v10 = 0x100000001;
  *(&v10 + 1) = 0x100000001;
  v17 = v10;
  v18 = xmmword_23A29C8F0;
  v11 = **(a1 + 5);
  if (v11)
  {
    *(v14 + 8) = v17;
    v12 = *(v11 + 24);
    LODWORD(v14[0]) = 4;
    DWORD1(v14[0]) = v12;
    *(&v14[1] + 8) = v18;
    *(&v14[2] + 8) = xmmword_23A29BDD0;
    *(&v14[3] + 1) = 0x300000002;
    v15 = *a1;
  }

  else
  {
    AddBinding(a1, v14, v16, 4, &v17, 0);
  }

  return AddOp(a1, 0x48u, 0, v14, 0, a6, a7, a8, a2);
}

char *Load(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  v12 = *(a3 + 40);
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      if (v12 != 4)
      {
        return result;
      }

      *v18 = 116737;
    }

    return AddOp(a1, 0x98u, 0, a2, 0, a6, a7, a8, a4);
  }

  else if (v12 == 1)
  {
    SetAddressRegister(a1, a4, a3, a4, a5, a6, a7, a8);
    v13 = *(a3 + 16);
    *v18 = *a3;
    *&v18[16] = v13;
    v14 = *(a3 + 48);
    *&v18[32] = *(a3 + 32);
    v19 = v14;
    v20 = *(a3 + 64);
    *&v18[24] = *(a2 + 24);
    *&v18[8] = *(a2 + 8);
    return AddOp(a1, 0, 0, a2, 0, v15, v16, v17, v18);
  }

  else if (v12 == 2)
  {
    return AddOp(a1, 0x7Au, 0, a2, 0, a6, a7, a8, a4);
  }

  return result;
}

char *glpPrimitiveTypeToString(unsigned int a1)
{
  if (a1 >= 0x4F)
  {
    abort();
  }

  return off_278B497A0[a1];
}

uint64_t glpGetVectorType(int a1, int a2)
{
  if ((a2 - 5) <= 0xFFFFFFFB)
  {
    goto LABEL_14;
  }

  if (a1 <= 8)
  {
    if (a1 == 1)
    {
      v2 = &GLP_VECTOR_TYPES;
      return v2[a2 - 1];
    }

    if (a1 == 5)
    {
      v2 = &unk_23A29C928;
      return v2[a2 - 1];
    }

LABEL_14:
    abort();
  }

  if (a1 == 9)
  {
    v2 = &unk_23A29C938;
    return v2[a2 - 1];
  }

  if (a1 == 36)
  {
    v2 = &unk_23A29C948;
    return v2[a2 - 1];
  }

  if (a1 != 62)
  {
    goto LABEL_14;
  }

  v2 = &unk_23A29C918;
  return v2[a2 - 1];
}

uint64_t glpPrimitiveTypeGetGLType(unsigned int a1)
{
  if (a1 >= 0x4F)
  {
    abort();
  }

  return dword_23A29C9A0[a1];
}

uint64_t glpPrimitiveTypeGetCategory(unsigned int a1)
{
  if (a1 >= 0x4F)
  {
    abort();
  }

  return dword_23A29CADC[a1];
}

uint64_t glpPrimitiveVectorGetLength(uint64_t a1)
{
  v1 = a1;
  result = 2;
  switch(v1)
  {
    case 2:
    case 6:
    case 10:
    case 37:
    case 63:
      return result;
    case 3:
    case 4:
      result = a1;
      break;
    case 7:
    case 11:
    case 38:
    case 64:
      result = 3;
      break;
    case 8:
    case 12:
    case 39:
    case 65:
      result = 4;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveVectorGetElementType(int a1)
{
  result = 1;
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
      return result;
    case 6:
    case 7:
    case 8:
      result = 5;
      break;
    case 10:
    case 11:
    case 12:
      result = 9;
      break;
    case 37:
    case 38:
    case 39:
      result = 36;
      break;
    case 63:
    case 64:
    case 65:
      result = 62;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetColumns(int a1)
{
  result = 2;
  switch(a1)
  {
    case 13:
    case 22:
    case 23:
    case 66:
    case 69:
    case 70:
      return result;
    case 14:
    case 24:
    case 25:
    case 67:
    case 71:
    case 72:
      result = 3;
      break;
    case 15:
    case 26:
    case 27:
    case 68:
    case 73:
    case 74:
      result = 4;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetRows(int a1)
{
  result = 2;
  switch(a1)
  {
    case 13:
    case 24:
    case 26:
    case 66:
    case 71:
    case 73:
      return result;
    case 14:
    case 22:
    case 27:
    case 67:
    case 69:
    case 74:
      result = 3;
      break;
    case 15:
    case 23:
    case 25:
    case 68:
    case 70:
    case 72:
      result = 4;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetColumnType(int a1)
{
  result = 2;
  switch(a1)
  {
    case 13:
    case 24:
    case 26:
      return result;
    case 14:
    case 22:
    case 27:
      result = 3;
      break;
    case 15:
    case 23:
    case 25:
      result = 4;
      break;
    case 66:
    case 71:
    case 73:
      result = 63;
      break;
    case 67:
    case 69:
    case 74:
      result = 64;
      break;
    case 68:
    case 70:
    case 72:
      result = 65;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetRowType(int a1)
{
  result = 2;
  switch(a1)
  {
    case 13:
    case 22:
    case 23:
      return result;
    case 14:
    case 24:
    case 25:
      result = 3;
      break;
    case 15:
    case 26:
    case 27:
      result = 4;
      break;
    case 66:
    case 69:
    case 70:
      result = 63;
      break;
    case 67:
    case 71:
    case 72:
      result = 64;
      break;
    case 68:
    case 73:
    case 74:
      result = 65;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveMatrixGetElementType(int a1)
{
  result = 1;
  switch(a1)
  {
    case 13:
    case 14:
    case 15:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
      return result;
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
      result = 62;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveSamplerGetPPTextarget(int a1)
{
  result = 4;
  switch(a1)
  {
    case 16:
    case 40:
    case 48:
      return result;
    case 17:
    case 41:
    case 49:
      result = 3;
      break;
    case 18:
    case 42:
    case 50:
      result = 1;
      break;
    case 19:
    case 43:
    case 51:
      result = 0;
      break;
    case 20:
      result = 7;
      break;
    case 21:
      result = 6;
      break;
    case 28:
    case 44:
    case 52:
      result = 2;
      break;
    case 29:
      result = 5;
      break;
    case 30:
    case 45:
    case 53:
      result = 9;
      break;
    case 31:
    case 46:
    case 54:
      result = 10;
      break;
    case 32:
    case 47:
    case 55:
      result = 13;
      break;
    case 33:
      result = 11;
      break;
    case 34:
      result = 12;
      break;
    case 35:
      result = 8;
      break;
    case 56:
    case 58:
    case 60:
      result = 14;
      break;
    case 57:
    case 59:
    case 61:
      result = 15;
      break;
    case 75:
    case 77:
    case 78:
      result = 16;
      break;
    case 76:
      result = 17;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveSamplerGetPPDatatype(int a1)
{
  result = 0;
  switch(a1)
  {
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 56:
    case 57:
    case 75:
    case 76:
      return result;
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 58:
    case 59:
    case 77:
      result = 2;
      break;
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 60:
    case 61:
    case 78:
      result = 3;
      break;
    default:
      abort();
  }

  return result;
}

uint64_t glpPrimitiveTypeGetScalarType(uint64_t a1)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category <= 1)
  {
    if (Category == 1)
    {
      return a1;
    }

    goto LABEL_12;
  }

  if (Category != 2)
  {
    if (Category == 3)
    {

      return glpPrimitiveMatrixGetElementType(a1);
    }

LABEL_12:
    abort();
  }

  return glpPrimitiveVectorGetElementType(a1);
}

uint64_t glpPrimitiveTypeReplaceScalarType(uint64_t a1, uint64_t a2)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category <= 1)
  {
    if (Category == 1)
    {
      return a2;
    }

    goto LABEL_8;
  }

  if (Category != 2)
  {
    if (Category != 3)
    {
      abort();
    }

    Columns = glpPrimitiveMatrixGetColumns(a1);
    Rows = glpPrimitiveMatrixGetRows(a1);
    if (a2 == 1)
    {
      v7 = &GLP_MATRIX_TYPES;
      return v7[3 * (Columns - 2) + Rows - 2];
    }

    if (a2 == 62)
    {
      v7 = &unk_23A29C97C;
      return v7[3 * (Columns - 2) + Rows - 2];
    }

LABEL_8:
    abort();
  }

  Length = glpPrimitiveVectorGetLength(a1);

  return glpGetVectorType(a2, Length);
}

uint64_t glpPrimitiveTypeGetScalarCount(uint64_t a1)
{
  result = glpPrimitiveTypeGetCategory(a1);
  if (result <= 1)
  {
    if (result != 1)
    {
      abort();
    }
  }

  else if (result == 2)
  {

    return glpPrimitiveVectorGetLength(a1);
  }

  else
  {
    if (result != 3)
    {
      abort();
    }

    Columns = glpPrimitiveMatrixGetColumns(a1);
    return glpPrimitiveMatrixGetRows(a1) * Columns;
  }

  return result;
}

uint64_t glpPrimitiveTypeGetBytesPerComponent(uint64_t a1)
{
  ScalarType = glpPrimitiveTypeGetScalarType(a1);
  if (ScalarType > 0x3E)
  {
    goto LABEL_7;
  }

  if (((1 << ScalarType) & 0x1000000222) == 0)
  {
    if (ScalarType == 62)
    {
      return 8;
    }

LABEL_7:
    abort();
  }

  return 4;
}

uint64_t glpPrimitiveTypeGetMaxComponentsPerVec4(uint64_t a1)
{
  ScalarType = glpPrimitiveTypeGetScalarType(a1);
  if (ScalarType > 0x3E)
  {
    goto LABEL_7;
  }

  if (((1 << ScalarType) & 0x1000000222) == 0)
  {
    if (ScalarType == 62)
    {
      v2 = 8;
      return 0x10 / v2;
    }

LABEL_7:
    abort();
  }

  v2 = 4;
  return 0x10 / v2;
}

uint64_t glpPrimitiveTypeGetNumVec4s(uint64_t a1)
{
  ColumnType = a1;
  Category = glpPrimitiveTypeGetCategory(a1);
  if ((Category - 1) >= 2)
  {
    if (Category != 3)
    {
      abort();
    }

    Columns = glpPrimitiveMatrixGetColumns(ColumnType);
    ColumnType = glpPrimitiveMatrixGetColumnType(ColumnType);
  }

  else
  {
    Columns = 1;
  }

  ScalarCount = glpPrimitiveTypeGetScalarCount(ColumnType);
  MaxComponentsPerVec4 = glpPrimitiveTypeGetMaxComponentsPerVec4(ColumnType);
  return Columns * ((ScalarCount + MaxComponentsPerVec4 - 1) / MaxComponentsPerVec4);
}

char *glpQualifierName(unsigned int a1)
{
  if (a1 >= 0x19)
  {
    abort();
  }

  return off_278B49A18[a1];
}

uint64_t glpMakeExpectedSignatureFromCall(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = glpCallNodeGetArgCount(a2);
  v6 = v5;
  v7 = v5;
  v8 = 8 * v5;
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFF0);
  bzero(v9, v8);
  MEMORY[0x28223BE20](v10);
  bzero(v9, v8);
  if (v6)
  {
    v11 = 0;
    do
    {
      v12 = glpCallNodeGetArg(a2, v11);
      *(a3 + 8 * v11) = glpASTNodeGetSaType(v12);
      *&v9[8 * v11] = 0;
      *&v9[8 * v11++] = 0;
    }

    while (v7 != v11);
  }

  glpCompilerGetAllocator();
  v14 = v13;
  PrimitiveType = glpGetPrimitiveType(0);
  return glpMakeFunctionType(v14, PrimitiveType, v7, a3, v9, v9);
}

uint64_t glpLookUpAndAnalyzeCall(uint64_t a1, uint64_t a2, char *a3, size_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  NameTable = glpCompilerGetNameTable(a1);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 0x40000000;
  v34[2] = __glpLookUpAndAnalyzeCall_block_invoke;
  v34[3] = &unk_278B49AE8;
  v34[4] = &v39;
  v34[5] = &v35;
  v34[6] = NameTable;
  v34[7] = a1;
  glpNameTableGet(NameTable, a3, a4, 0, v34);
  if (v36[3])
  {
    if (*(v40 + 6) == 4)
    {
      glpCompilerGetAllocator();
      v16 = glpAggregateTypeMangleName(a5, a3, a4, v15);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 0x40000000;
      v33[2] = __glpLookUpAndAnalyzeCall_block_invoke_2;
      v33[3] = &unk_278B49B10;
      v33[4] = &v35;
      if (glpNameTableGet(NameTable, v16, v17, 0, v33))
      {
        *(v40 + 6) = 5;
      }
    }
  }

  v18 = v36;
  v19 = v36[3];
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = *(v40 + 6);
  if (v20 != 5)
  {
    *a7 = 0;
    if (v20 <= 3)
    {
      if (v20 >= 4)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    if (v20 > 7)
    {
      if (v20 == 8)
      {
LABEL_15:
        InfoLog = glpCompilerGetInfoLog(a1);
        *&v27 = glpASTNodeGetLocation(a2, v32).n128_u64[0];
        glpLogMessage(InfoLog, 0, v32, "Call to non-function '%.*s'", v27);
        goto LABEL_16;
      }

      if ((v20 - 10) >= 4 && v20 != 9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v20 == 4)
      {
        if (glpAnalyzeCallToOverload(a1, v18[3], a2))
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }

      if (v20 == 7)
      {
        v29 = v18[3];
        *a7 = v29;
        FunctionObject = glpSubroutineTypeGetFunctionObject(*(v29 + 16));
        if (glpAnalyzeCallToFunction(a1, FunctionObject, a2))
        {
          goto LABEL_9;
        }

        glpSubroutineTypeGetName(*(*a7 + 16));
        v30 = glpCompilerGetInfoLog(a1);
        *&v31 = glpASTNodeGetLocation(a2, v32).n128_u64[0];
        glpLogMessage(v30, 0, v32, "Arguments of call to subroutine uniform '%.*s' cannot be converted to match its type ('%.*s')", v31);
LABEL_16:
        v23 = 0;
        goto LABEL_17;
      }
    }

    abort();
  }

  if ((*(v19 + 9) & 0x80) != 0)
  {
LABEL_11:
    if (!glpOperatorAsFunctionError(a1, a3, a4, a6, a2))
    {
      v24 = glpCompilerGetInfoLog(a1);
      *&v25 = glpASTNodeGetLocation(a2, v32).n128_u64[0];
      glpLogMessage(v24, 0, v32, "Call to undeclared function '%.*s'", v25);
    }

    goto LABEL_16;
  }

  *a7 = 0;
  FunctionObject = v18[3];
LABEL_9:
  ReturnType = glpFunctionTypeGetReturnType(*FunctionObject);
  glpASTNodeSetSaType(a2, ReturnType);
  glpFunctionCallNodeSetExtra(a2, FunctionObject);
LABEL_10:
  v23 = 1;
LABEL_17:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  return v23;
}

void *__glpLookUpAndAnalyzeCall_block_invoke(void *result, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = result;
  if (a2 == 7 || a2 == 4)
  {
    *(*(result[4] + 8) + 24) = a2;
    *(*(result[5] + 8) + 24) = a3;
LABEL_4:
    *a5 = 1;
    return result;
  }

  result = glpNameTableGetGLSLVersion(result[6]);
  if (result != 1)
  {
    result = glpCompilerGetIOSVersion(v6[7]);
    if (result >= 9)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t __glpLookUpAndAnalyzeCall_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *a5 = 1;
  return result;
}

unint64_t glpCalculateCallPrecision(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (a3[1] >> 6) & 0x20 | (((a3[1] & 0x1800) != 0) << 6);
  v6 = glpCallNodeGetArgCount(a2);
  v7 = v5;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v7 = v5;
    v10 = v6;
    do
    {
      v11 = glpCallNodeGetArg(a2, v8);
      v12 = *(a3[10] + 8 * v8);
      SaFlags = glpASTNodeGetSaFlags(v11);
      v14 = glpASTNodeGetSaFlags(v11);
      v15 = v14 & 0x1F;
      if (v14 & 0x1F) != 0 && v15 != 31 && v15 > v9 && (*(v12 + 48))
      {
        v9 = v14 & 0x1F;
      }

      v7 &= SaFlags;
      ++v8;
    }

    while (v10 != v8);
    if (v9)
    {
LABEL_12:
      if (!v5)
      {
        return v9;
      }

      goto LABEL_13;
    }
  }

  v16 = a3[9];
  if (v16)
  {
    v9 = *(v16 + 48) & 0x1FLL;
    goto LABEL_12;
  }

  v9 = 0;
  if (!v5)
  {
    return v9;
  }

LABEL_13:
  if (v9)
  {
    v17 = 0;
  }

  else
  {
    v17 = v9;
  }

  v18 = glpASTNodeGetSaFlags(a2);
  glpASTNodeSetSaFlags(a2, v17 | v18 | v7);
  return v9;
}

uint64_t glpHandleArgumentConversions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 72);
  if (v8)
  {
    DoesTypeRequirePrecision = glpCompilerDoesTypeRequirePrecision(a1, *v8);
    v10 = (a4 & 1) != 0 ? 0 : a4;
    if (!DoesTypeRequirePrecision)
    {
      a4 = v10;
    }
  }

  if (!*(a3 + 88))
  {
    return 1;
  }

  v11 = 0;
  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = a4;
  }

  while (1)
  {
    Expr = glpCallNodeGetArg(a2, v11);
    if (glpIsTypeConversionNode(Expr))
    {
      Expr = glpUnaryOperatorNodeGetExpr(Expr);
    }

    v14 = *(*(*(a3 + 80) + 8 * v11) + 48);
    if ((v14 & 0x800000) != 0)
    {
      if ((glpASTNodeGetSaFlags(Expr) & 0x60) == 0)
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        *&v35 = glpASTNodeGetLocation(a2, v46).n128_u64[0];
        glpLogMessage(InfoLog, 0, v46, "Argument %d to function '%.*s' must be a constant expression", v35);
        return 0;
      }

      v14 = *(*(*(a3 + 80) + 8 * v11) + 48);
    }

    if ((v14 & 0x1000000) != 0)
    {
      if (!glpIsLValueNode(Expr) || (*(glpLValueNodeGetVariableExtra(Expr) + 51) & 0x20) == 0)
      {
        v32 = glpCompilerGetInfoLog(a1);
        *&v33 = glpASTNodeGetLocation(a2, v46).n128_u64[0];
        glpLogMessage(v32, 0, v46, "Argument %d to function '%.*s' must be a reference to a stage in variable", v33);
        return 0;
      }

      Offset = glpDerefNodeGetOffset(Expr);
      if (Offset)
      {
        v16 = Offset;
        OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
        VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v16);
        if (OffsetExpr)
        {
          if (!glpIsConstantNode(OffsetExpr))
          {
            break;
          }
        }

        if (VectorElementExpr && !glpIsConstantNode(VectorElementExpr))
        {
          break;
        }
      }
    }

    if ((*(*(*(a3 + 80) + 8 * v11) + 51) & 4) != 0)
    {
      v19 = glpCommaResult(Expr);
      if (glpASTNodeGetKind(v19) != 81)
      {
        v36 = glpCompilerGetInfoLog(a1);
        *&v37 = glpASTNodeGetLocation(a2, v46).n128_u64[0];
        glpLogMessage(v36, 0, v46, "'out' or 'inout' argument %d to function '%.*s' must be an lvalue", v37);
        return 0;
      }

      if ((glpASTNodeGetSaFlags(v19) & 0x360) != 0)
      {
        v38 = glpCompilerGetInfoLog(a1);
        *&v39 = glpASTNodeGetLocation(a2, v46).n128_u64[0];
        glpLogMessage(v38, 0, v46, "'out' or 'inout' argument %d to function '%.*s' must be writable", v39);
        return 0;
      }
    }

    SaType = glpASTNodeGetSaType(Expr);
    if (glpCompilerDoesTypeRequirePrecision(a1, SaType))
    {
      v21 = *(*(*(a3 + 80) + 8 * v11) + 48);
      if ((v21 & 2) != 0)
      {
        DefaultPrecisionForType = glpASTNodeGetSaFlags(Expr) & 0x1F;
      }

      else
      {
        if (v21)
        {
          DefaultPrecisionForType = v12;
        }

        else
        {
          DefaultPrecisionForType = *(*(*(a3 + 80) + 8 * v11) + 48) & 0x1DLL;
        }

        if ((v21 & 1) != 0 && !a4)
        {
          DefaultPrecisionForType = v12;
          if ((glpASTNodeGetSaFlags(Expr) & 1) == 0)
          {
            v23 = glpASTNodeGetSaType(Expr);
            DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, v23);
            if (!DefaultPrecisionForType)
            {
              v42 = glpASTNodeGetSaType(Expr);
              glpCompilerGetAllocator();
              glpTypeHumanReadableDescription(v42, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v43);
              v44 = glpCompilerGetInfoLog(a1);
              *&v45 = glpASTNodeGetLocation(a2, v46).n128_u64[0];
              glpLogMessage(v44, 0, v46, "Expression of type '%.*s' - precision can not be inferred and no default precision available", v45);
              return 0;
            }
          }
        }
      }

      SaFlags = glpASTNodeGetSaFlags(Expr);
      v25 = glpASTNodeGetSaType(Expr);
      if (!glpTypeGetKind(v25) && DefaultPrecisionForType && DefaultPrecisionForType != (SaFlags & 0x1F))
      {
        if ((SaFlags & 0x1F) != 0x1FLL && (SaFlags & 0x1F) != 0)
        {
          glpCompilerGetAllocator();
          v27 = v26;
          glpASTNodeGetLocation(a2, v46);
          glpMakeTypeConversionNode(v27, v46, **(*(a3 + 80) + 8 * v11), DefaultPrecisionForType);
          v29 = v28;
          glpUnaryOperatorNodeSetExpr(v28, Expr);
          v30 = glpSANode(a1, v29);
          glpCallNodeSetArg(a2, v11, v30);
        }

        else
        {
          glpPushdownPrecision(a1, Expr, DefaultPrecisionForType);
        }
      }
    }

    if (++v11 >= *(a3 + 88))
    {
      return 1;
    }
  }

  v40 = glpCompilerGetInfoLog(a1);
  *&v41 = glpASTNodeGetLocation(a2, v46).n128_u64[0];
  glpLogMessage(v40, 0, v46, "Argument %d to function '%.*s' must be a direct reference to a stage in variable", v41);
  return 0;
}

uint64_t glpLowerCallToBodilessPPStreamOp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SaType = glpASTNodeGetSaType(a2);
  if (glpTypeGetKind(SaType))
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    *&v8 = glpASTNodeGetLocation(a2, v74).n128_u64[0];
    glpLogMessage(InfoLog, 0, v74, "return of ppstreamop is not a primitive type", v8);
    return glpSAFailed();
  }

  else
  {
    v10 = glpASTNodeGetSaType(a2);
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v10);
    glpCompilerGetAllocator();
    v13 = v12;
    glpASTNodeGetLocation(a2, v74);
    glpMakeUndeterminedCallNode(v13, v74);
    v15 = v14;
    glpCompilerGetAllocator();
    v17 = v16;
    glpASTNodeGetLocation(a2, v74);
    glpMakeVariableIdentifierNode(v17, v74, "$ppstreamop", 0xF8DF7DAF0000000BLL);
    glpUndeterminedCallNodeSetCallee(v15, v18);
    glpCompilerGetAllocator();
    v20 = v19;
    glpCompilerGetAllocator();
    v22 = v21;
    glpASTNodeGetLocation(a2, v74);
    v23 = glpGetPrimitiveType(5u);
    glpCompilerGetAllocator();
    v25 = v24;
    v26 = glpGetPrimitiveType(5u);
    MutableValue = glpMakeMutableValue(v25, v26, 1, v27, v28, v29, v30, v31, 2);
    glpMakeConstantNode(v22, v74, v23, MutableValue);
    glpCallNodeAddArg(v20, v15, v33);
    glpCompilerGetAllocator();
    v35 = v34;
    glpCompilerGetAllocator();
    v37 = v36;
    glpASTNodeGetLocation(a2, v74);
    v38 = glpGetPrimitiveType(5u);
    glpCompilerGetAllocator();
    v40 = v39;
    v41 = glpGetPrimitiveType(5u);
    v47 = glpMakeMutableValue(v40, v41, 1, v42, v43, v44, v45, v46, PrimitiveType);
    glpMakeConstantNode(v37, v74, v38, v47);
    glpCallNodeAddArg(v35, v15, v48);
    glpCompilerGetAllocator();
    v50 = v49;
    glpCompilerGetAllocator();
    v52 = v51;
    glpASTNodeGetLocation(a2, v74);
    v53 = glpGetPrimitiveType(5u);
    glpCompilerGetAllocator();
    v55 = v54;
    v56 = glpGetPrimitiveType(5u);
    v62 = glpMakeMutableValue(v55, v56, 1, v57, v58, v59, v60, v61, *(a3 + 92));
    glpMakeConstantNode(v52, v74, v53, v62);
    glpCallNodeAddArg(v50, v15, v63);
    v64 = glpCallNodeGetArgCount(a2);
    if (v64)
    {
      v65 = v64;
      for (i = 0; i != v65; ++i)
      {
        glpCompilerGetAllocator();
        v68 = v67;
        v69 = glpCallNodeGetArg(a2, i);
        glpCallNodeAddArg(v68, v15, v69);
      }
    }

    SaFlags = glpASTNodeGetSaFlags(a2);
    v71 = glpSANode(a1, v15);
    v9 = v71;
    if ((v71 + 1) >= 2)
    {
      v72 = glpASTNodeGetSaFlags(v71);
      glpASTNodeSetSaFlags(v9, SaFlags & 0xFFFFFFFFFFFFFFE0 | v72 & 0x1F);
    }
  }

  return v9;
}

uint64_t glpHandleSpecialOperatorFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (glpStringsEqual("$OP_pos", 0xA31C9B1600000007, *(a3 + 24), *(a3 + 32)))
  {

    return glpCallNodeGetArg(a2, 0);
  }

  else
  {
    if (!glpStringsEqual("$OP_neg", 0x34DF279C00000007uLL, *(a3 + 24), *(a3 + 32)))
    {
      abort();
    }

    glpCompilerGetAllocator();
    v7 = v6;
    glpASTNodeGetLocation(a2, v13);
    glpMakeNegateNode(v7, v13);
    v9 = v8;
    v10 = glpCallNodeGetArg(a2, 0);
    glpUnaryOperatorNodeSetExpr(v9, v10);
    SaType = glpASTNodeGetSaType(v10);
    glpASTNodeSetSaType(v9, SaType);
    SaFlags = glpASTNodeGetSaFlags(v10);
    glpASTNodeSetSaFlags(v9, SaFlags);
    return v9;
  }
}

char *glpSALowerCallArgsToAssignment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a4;
  v98 = *MEMORY[0x277D85DE8];
  v7 = glpCallNodeGetArgCount(a2);
  v89 = a3;
  v8 = *(a3 + 80);
  v96 = 0uLL;
  v97 = 0;
  glpASTNodeGetLocation(a2, &v96);
  glpCompilerGetAllocator();
  v94 = v96;
  v95 = v97;
  glpMakeCommaExprNode(v9, &v94, 0);
  v92 = v10;
  v90 = &v88;
  MEMORY[0x28223BE20](v10);
  v12 = (&v88 - v11);
  bzero(&v88 - v11, v13);
  if (v7)
  {
    v14 = 0;
    v15 = v7;
    v16 = v12;
    do
    {
      *v16 = 0;
      v17 = glpCallNodeGetArg(a2, v14);
      if ((*(v8[v14] + 51) & 2) != 0)
      {
        v18 = v17;
        if (glpIsConstantNode(v17) || glpIsLValueNode(v18) && ((Offset = glpDerefNodeGetOffset(v18)) == 0 || ((v20 = Offset, OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset), VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v20), !OffsetExpr) || glpIsConstantNode(OffsetExpr)) && (!VectorElementExpr || glpIsConstantNode(VectorElementExpr))))
        {
          *v16 = v18;
        }

        else
        {
          v94.n128_u64[0] = 0;
          SaType = glpASTNodeGetSaType(v18);
          SaFlags = glpASTNodeGetSaFlags(v18);
          glpMakeTemporary(a1, SaType, SaFlags & 0x1F, v18, &v94, v16);
          glpCompilerGetAllocator();
          glpCommaExprNodeAddExpr(v25, v92, v94.n128_i64[0]);
        }
      }

      ++v14;
      ++v16;
    }

    while (v15 != v14);
    v26 = v15;
    v27 = v8;
    do
    {
      if ((*(*v27 + 51) & 2) != 0)
      {
        glpCompilerGetAllocator();
        v28 = *v27;
        v95 = v97;
        v94 = v96;
        glpMakeLValueNode(v29, &v94, v28[2], v28[3], v28);
        v31 = v30;
        glpASTNodeSetSaType(v30, **v27);
        glpASTNodeSetSaFlags(v31, (*v27)[6] & 0x1F);
        glpCompilerGetAllocator();
        v33 = v32;
        v34 = *v12;
        v94 = v96;
        v95 = v97;
        AssignFragment = glpMakeAssignFragment(a1, &v94, v31, v34);
        glpCommaExprNodeAddExpr(v33, v92, AssignFragment);
      }

      ++v27;
      ++v12;
      --v26;
    }

    while (v26);
    v36 = glpASTNodeGetSaFlags(a2);
    v37 = v91;
    glpASTNodeSetSaFlags(v91, v36 & 0x1F);
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v38, v92, v37);
    for (i = 0; i != v15; ++i)
    {
      v40 = glpCallNodeGetArg(a2, i);
      if ((*(v8[i] + 51) & 4) != 0)
      {
        Expr = v40;
        glpCompilerGetAllocator();
        v42 = v8[i];
        v95 = v97;
        v94 = v96;
        glpMakeLValueNode(v43, &v94, *(v42 + 16), *(v42 + 24), v42);
        v45 = v44;
        glpASTNodeSetSaType(v44, *v8[i]);
        glpASTNodeSetSaFlags(v45, v8[i][6] & 0x1F);
        if (glpIsTypeConversionNode(Expr))
        {
          Expr = glpUnaryOperatorNodeGetExpr(Expr);
          glpCompilerGetAllocator();
          v47 = v46;
          v48 = glpASTNodeGetSaType(Expr);
          v49 = glpASTNodeGetSaFlags(Expr);
          v94 = v96;
          v95 = v97;
          glpMakeTypeConversionNode(v47, &v94, v48, v49 & 0x1F);
          v51 = v50;
          glpUnaryOperatorNodeSetExpr(v50, v45);
          v45 = glpSANode(a1, v51);
        }

        v94 = v96;
        v95 = v97;
        v52 = glpMakeAssignFragment(a1, &v94, Expr, v45);
        glpCompilerGetAllocator();
        glpCommaExprNodeAddExpr(v53, v92, v52);
      }
    }
  }

  else
  {
    v54 = glpASTNodeGetSaFlags(a2);
    v55 = v91;
    glpASTNodeSetSaFlags(v91, v54 & 0x1F);
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v56, v92, v55);
  }

  v57 = v89;
  if (!*(v89 + 72))
  {
    goto LABEL_33;
  }

  glpCompilerGetAllocator();
  v58 = *(v57 + 72);
  v95 = v97;
  v94 = v96;
  glpMakeLValueNode(v59, &v94, *(v58 + 16), *(v58 + 24), v58);
  v61 = v60;
  glpASTNodeSetSaType(v60, **(v57 + 72));
  glpASTNodeSetSaFlags(v61, *(*(v57 + 72) + 48) & 0x80000037FLL);
  v62 = glpCompilerNewTempName(a1);
  v64 = v63;
  v93 = 0;
  glpCompilerGetAllocator();
  v94 = v96;
  v95 = v97;
  TypedVariableFragment = glpMakeTypedVariableFragment(v65, &v94, v62, v64, &v93, v61);
  v67 = v93;
  v68 = glpASTNodeGetSaFlags(v61);
  glpASTNodeSetSaFlags(v67, v68 & 0x1F);
  glpASTNodeSetSaType(v93, **(v57 + 72));
  v69 = glpSANode(a1, TypedVariableFragment);
  v70 = v69;
  if ((v69 + 1) > 1)
  {
    v71 = glpASTNodeGetSaFlags(v69);
    glpASTNodeSetSaFlags(v70, v71 & 0xFFFFFFFF7FFFFFFFLL);
    Extra = glpVariableDeclarationNodeGetExtra(v70);
    *(Extra + 48) &= ~0x80000000uLL;
    glpCompilerGetAllocator();
    v73 = v92;
    glpCommaExprNodeAddExpr(v74, v92, v70);
    glpCompilerGetAllocator();
    v94 = v96;
    v95 = v97;
    glpMakeVariableIdentifierNode(v75, &v94, v62, v64);
    v77 = glpSANode(a1, v76);
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v78, v73, v77);
    PrimitiveType = glpGetPrimitiveType(0);
    glpASTNodeSetSaType(a2, PrimitiveType);
    if (glpCompilerDoesTrackPrecision(a1) && (glpASTNodeGetSaFlags(v91) & 0x1F) == 0)
    {
      v80 = v91;
      v81 = glpASTNodeGetSaFlags(v91);
      v82 = glpASTNodeGetSaFlags(v70);
      glpASTNodeSetSaFlags(v80, v82 & 0x1F | v81);
    }
  }

  else
  {
    v62 = glpSAFailed();
  }

  if ((v70 + 1) >= 2)
  {
LABEL_33:
    v83 = glpASTNodeGetSaFlags(a2);
    v84 = glpASTNodeGetSaType(a2);
    glpASTNodeSetSaType(v91, v84);
    v85 = glpSANode(a1, v92);
    v62 = v85;
    if ((v85 + 1) >= 2)
    {
      v86 = glpASTNodeGetSaFlags(v85);
      glpASTNodeSetSaFlags(v62, v86 & 0x1F | v83);
    }
  }

  return v62;
}

uint64_t glpInlineFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = *MEMORY[0x277D85DE8];
  if ((*(a3 + 10) & 4) != 0)
  {
    glpCompilerSetRequiresOutputPoints(a1, 1);
  }

  if (a4)
  {
    a4 = 0;
  }

  v102 = 0uLL;
  v103 = 0;
  glpASTNodeGetLocation(a2, &v102);
  v97[0] = a4;
  v97[1] = 0;
  v92[0] = a4;
  v97[2] = a1;
  glpCompilerGetAllocator();
  PointerHash = glpMakePointerHash(v8);
  v98 = PointerHash;
  glpCompilerGetAllocator();
  v99 = glpMakePointerHash(v10);
  v100 = v102;
  v101 = v103;
  glpCompilerGetAllocator();
  v95 = v102;
  v96 = v103;
  glpMakeCommaExprNode(v11, &v95, 0);
  v92[1] = v92;
  v93 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v92 - ((v13 + 15) & 0xFFFFFFFF0);
  bzero(v14, v13);
  if (*(a3 + 88))
  {
    v15 = 0;
    v16 = v14;
    while (1)
    {
      *v16 = 0;
      v17 = glpCallNodeGetArg(a2, v15);
      if (!glpIsLValueNode(v17))
      {
        break;
      }

      Offset = glpDerefNodeGetOffset(v17);
      if (Offset)
      {
        v20 = Offset;
        OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
        VectorElementExpr = glpOffsetNodeGetVectorElementExpr(v20);
        if (OffsetExpr)
        {
          if (!glpIsConstantNode(OffsetExpr))
          {
            break;
          }
        }

        if (VectorElementExpr && !glpIsConstantNode(VectorElementExpr))
        {
          break;
        }
      }

      v23 = *(*(a3 + 80) + 8 * v15);
      v24 = PointerHash;
      v25 = v17;
LABEL_25:
      glpPointerHashPut(v24, v23, v25, v19);
      ++v15;
      ++v16;
      if (v15 >= *(a3 + 88))
      {
        goto LABEL_26;
      }
    }

    if (glpIsConstantNode(v17))
    {
      if ((glpASTNodeGetSaFlags(v17) & 2) != 0)
      {
        SaType = glpASTNodeGetSaType(v17);
        DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, SaType);
      }

      else
      {
        DefaultPrecisionForType = glpASTNodeGetSaFlags(v17) & 0x1F;
      }

      glpASTNodeSetSaFlags(v17, DefaultPrecisionForType | 0x60);
      glpASTNodeGetSaFlags(v17);
      Value = glpConstantNodeGetValue(v17);
      v94 = 0;
      v27 = *(*(a3 + 80) + 8 * v15);
      v28 = *v27;
      if (Value)
      {
        v31 = 96;
LABEL_22:
        SaFlags = glpASTNodeGetSaFlags(v17);
        Temporary = glpMakeTemporary(a1, v28, SaFlags & 0x1F | v31, v17 & ((*(*(*(a3 + 80) + 8 * v15) + 48) << 38) >> 63), &v94, v16);
        if (v94)
        {
          glpCompilerGetAllocator();
          glpCommaExprNodeAddExpr(v34, v93, v94);
        }

        glpCompilerGetAllocator();
        v36 = v35;
        glpASTNodeGetLocation(a2, &v95);
        glpMakeLValueNode(v36, &v95, Temporary[2], Temporary[3], Temporary);
        v38 = v37;
        glpASTNodeSetSaType(v37, **(*(a3 + 80) + 8 * v15));
        glpASTNodeSetSaFlags(v38, Temporary[6]);
        PointerHash = v98;
        v23 = *(*(a3 + 80) + 8 * v15);
        v24 = v98;
        v25 = v38;
        goto LABEL_25;
      }
    }

    else
    {
      v94 = 0;
      v27 = *(*(a3 + 80) + 8 * v15);
      v28 = *v27;
    }

    v31 = (v27[6] >> 17) & 0x100;
    goto LABEL_22;
  }

LABEL_26:
  if (*(a3 + 72))
  {
    v39 = glpCompilerNewTempName(a1);
    v41 = v40;
    v94 = 0;
    glpCompilerGetAllocator();
    v43 = v42;
    glpASTNodeGetLocation(a2, &v95);
    TypedVariableFragment = glpMakeTypedVariableFragment(v43, &v95, v39, v41, &v94, 0);
    if (*(*(a3 + 72) + 48))
    {
      v45 = v92[0];
    }

    else
    {
      v45 = *(*(a3 + 72) + 48) & 0x1FLL;
    }

    glpASTNodeSetSaFlags(v94, v45);
    glpASTNodeSetSaType(v94, **(a3 + 72));
    v46 = glpSANode(a1, TypedVariableFragment);
    glpCompilerGetAllocator();
    v47 = v93;
    glpCommaExprNodeAddExpr(v48, v93, v46);
    v49 = glpASTNodeGetSaFlags(v46);
    glpASTNodeSetSaFlags(v46, v49 & 0xFFFFFFFF7FFFFF7FLL);
    Extra = glpVariableDeclarationNodeGetExtra(v46);
    *(Extra + 48) &= 0xFFFFFFFF7FFFFF7FLL;
    v51 = glpVariableDeclarationNodeGetExtra(v46);
    glpCompilerGetAllocator();
    v53 = v52;
    glpASTNodeGetLocation(a2, &v95);
    glpMakeLValueNode(v53, &v95, v51[2], v51[3], v51);
    v55 = v54;
    glpASTNodeSetSaType(v54, *v51);
    glpASTNodeSetSaFlags(v55, v51[6]);
    glpPointerHashPut(PointerHash, *(a3 + 72), v55, v56);
    glpCompilerGetAllocator();
    v58 = (*(v57 + 8))(*v57, 16, "String: $return_value_inline");
    glpCompilerGetAllocator();
    StringBuffer = glpMakeStringBuffer(v59);
    glpStringBufferAppendCString(StringBuffer, "$return_value_inline$");
    glpStringBufferAppendString(StringBuffer, *(a3 + 40), *(a3 + 48));
    *v58 = glpStringBufferGetString(StringBuffer);
    v58[1] = v61;
    glpPointerHashPut(v99, *(a3 + 72), v58, v62);
    if ((*(a3 + 9) & 0x18) != 0)
    {
      glpCompilerGetAllocator();
      v51[13] = glpMakeMutableValue(v63, **(a3 + 72), 0, v64, v65, v66, v67, v68, v92[0]);
    }
  }

  else
  {
    v51 = 0;
    v47 = v93;
  }

  glpCompilerGetAllocator();
  v70 = v69;
  glpCompilerGetAllocator();
  v72 = v71;
  Body = glpFunctionDefinitionNodeGetBody(*(a3 + 64));
  v74 = glpDeepCopyASTNode(v72, Body, saInliningNodeReplacement, v97);
  glpCommaExprNodeAddExpr(v70, v47, v74);
  v75 = *(a3 + 88);
  if (v75)
  {
    for (i = 0; i < v75; ++i)
    {
      if ((*(*(*(a3 + 80) + 8 * i) + 51) & 4) != 0 && *&v14[8 * i])
      {
        Expr = glpCallNodeGetArg(a2, i);
        if (!glpIsLValueNode(Expr))
        {
          Expr = glpUnaryOperatorNodeGetExpr(Expr);
        }

        glpCompilerGetAllocator();
        v79 = v78;
        v80 = *&v14[8 * i];
        v95 = v102;
        v96 = v103;
        AssignFragment = glpMakeAssignFragment(a1, &v95, Expr, v80);
        v47 = v93;
        glpCommaExprNodeAddExpr(v79, v93, AssignFragment);
        v75 = *(a3 + 88);
      }
    }
  }

  if (v51)
  {
    v82 = v51[13];
    if (v82)
    {
      v51[8] = v82;
      v51[13] = 0;
      glpCommaExprNodeClearExprs(v47);
    }

    glpCompilerGetAllocator();
    v96 = v103;
    v95 = v102;
    glpMakeLValueNode(v83, &v95, v51[2], v51[3], v51);
    v85 = v84;
    glpASTNodeSetSaType(v84, *v51);
    glpASTNodeSetSaFlags(v85, v51[6] & 0x80000037FLL);
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v86, v47, v85);
  }

  v87 = glpASTNodeGetSaFlags(a2);
  v88 = glpSANode(a1, v47);
  v89 = v88;
  if ((v88 + 1) >= 2)
  {
    v90 = glpASTNodeGetSaFlags(v88);
    glpASTNodeSetSaFlags(v89, v90 & 0x1F | v87);
  }

  return v89;
}

uint64_t saInliningNodeReplacement(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  Kind = glpASTNodeGetKind(a3);
  if (Kind > 74)
  {
    if (Kind > 80)
    {
      if (Kind == 81)
      {
        VariableExtra = glpLValueNodeGetVariableExtra(v3);
        v26 = glpPointerHashGet(*(a1 + 24), VariableExtra);
        if (v26)
        {
          v27 = v26;
          v28 = glpLValueNodeGetVariableExtra(v26);
          glpLValueNodeSetVariableExtra(v3, v28);
          SaFlags = glpASTNodeGetSaFlags(v3);
          v30 = glpASTNodeGetSaFlags(v27);
          glpASTNodeSetSaFlags(v3, SaFlags & 0xFFFFFFFFFFFFFFE0 | v30 & 0x1F);
        }

        else if ((*(VariableExtra + 50) & 0x8040) != 0)
        {
          v27 = 0;
        }

        else
        {
          v36 = (a2[1])(*a2, 160, "Variable Object (SA inlining)");
          v37 = *(VariableExtra + 16);
          *v36 = *VariableExtra;
          *(v36 + 16) = v37;
          v38 = *(VariableExtra + 80);
          v40 = *(VariableExtra + 32);
          v39 = *(VariableExtra + 48);
          *(v36 + 64) = *(VariableExtra + 64);
          *(v36 + 80) = v38;
          *(v36 + 32) = v40;
          *(v36 + 48) = v39;
          v41 = *(VariableExtra + 144);
          v43 = *(VariableExtra + 96);
          v42 = *(VariableExtra + 112);
          *(v36 + 128) = *(VariableExtra + 128);
          *(v36 + 144) = v41;
          *(v36 + 96) = v43;
          *(v36 + 112) = v42;
          glpASTNodeGetLocation(v3, &v62);
          glpMakeLValueNode(a2, &v62, *(v36 + 16), *(v36 + 24), v36);
          v27 = v44;
          glpASTNodeSetSaType(v44, *v36);
          glpASTNodeSetSaFlags(v27, *(v36 + 48));
          glpPointerHashPut(*(a1 + 24), VariableExtra, v27, v45);
          glpLValueNodeSetVariableExtra(v3, v36);
        }

        if (glpASTNodeGetSaFlags(v3))
        {
          v46 = glpASTNodeGetSaFlags(v3);
          glpASTNodeSetSaFlags(v3, v46 & 0xFFFFFFFFFFFFFFE0 | *a1);
        }

        v47 = glpPointerHashGet(*(a1 + 32), VariableExtra);
        if (v47)
        {
          glpLValueNodeSetVariableName(v3, *v47, v47[1]);
        }

        if (v27 && glpIsDerefNode(v27) && glpDerefNodeGetOffset(v27))
        {
          Offset = glpDerefNodeGetOffset(v27);
          v49 = glpDerefNodeGetOffset(v3);
          if (!v49)
          {
            glpAddOffsetIfNeeded(a2, v3);
            v49 = glpDerefNodeGetOffset(v3);
          }

          glpOffsetNodeGetOffsetExpr(v49);
          glpOffsetNodeGetSwizzle(v49);
          glpOffsetNodeGetVectorElementExpr(v49);
          if (glpOffsetNodeGetOffsetExpr(Offset))
          {
            glpOffsetNodeGetOffsetExpr(Offset);
            if (v49 && glpOffsetNodeGetOffsetExpr(v49))
            {
              v50 = *(a1 + 16);
              glpASTNodeGetLocation(v3, &v62);
              OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
              v52 = glpOffsetNodeGetOffsetExpr(v49);
              AddFragment = glpMakeAddFragment(v50, &v62, OffsetExpr, v52);
            }

            else
            {
              AddFragment = glpOffsetNodeGetOffsetExpr(Offset);
            }

            glpOffsetNodeSetOffsetExpr(v49, AddFragment);
          }

          if (glpOffsetNodeGetBankIndex(Offset))
          {
            BankIndex = glpOffsetNodeGetBankIndex(Offset);
            glpOffsetNodeSetBankIndex(v49, BankIndex);
          }

          Swizzle = glpOffsetNodeGetSwizzle(Offset);
          v56 = glpOffsetNodeGetSwizzle(v49);
          if (Swizzle)
          {
            if (v56)
            {
              v57 = v56 & 7;
              if ((v56 & 7) != 0)
              {
                v58 = 0;
                v59 = 2 * v57;
                do
                {
                  v57 = (((Swizzle >> (2 * ((v56 >> (v58 + 3)) & 3) + 3)) & 3) << (v58 + 3)) | v57 & ~(24 << v58);
                  v58 += 2;
                }

                while (v59 != v58);
              }
            }

            else
            {
              v57 = Swizzle;
            }
          }

          else
          {
            v57 = v56;
          }

          glpOffsetNodeSetSwizzle(v49, v57);
          if (glpOffsetNodeGetVectorElementExpr(Offset))
          {
            VectorElementExpr = glpOffsetNodeGetVectorElementExpr(Offset);
            glpOffsetNodeSetVectorElementExpr(v49, VectorElementExpr);
          }

          if (glpOffsetNodeGetPreSwizzlePrimitiveType(Offset))
          {
            PreSwizzlePrimitiveType = glpOffsetNodeGetPreSwizzlePrimitiveType(Offset);
            glpOffsetNodeSetPreSwizzlePrimitiveType(v49, PreSwizzlePrimitiveType);
          }
        }

        goto LABEL_37;
      }

      if (Kind == 84)
      {
        v3 = glpSAInlinePPStreamOpFixup(*(a1 + 16), v3);
        goto LABEL_37;
      }
    }

    else
    {
      if (Kind == 75)
      {
        v24 = 0;
        *(a1 + 8) = 1;
        return v24;
      }

      if (Kind == 80)
      {
        Extra = glpOffsetNodeGetExtra(v3);
        v8 = (a2[1])(*a2, 32, "Offest Object (SA inlining)");
        v9 = Extra[1];
        *v8 = *Extra;
        v8[1] = v9;
        glpOffsetNodeSetExtra(v3, v8);
        goto LABEL_37;
      }
    }

LABEL_30:
    if ((glpASTNodeGetSaFlags(v3) & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_36:
    v31 = glpASTNodeGetSaFlags(v3);
    glpASTNodeSetSaFlags(v3, v31 & 0xFFFFFFFFFFFFFFE0 | *a1);
    goto LABEL_37;
  }

  if (Kind)
  {
    if (Kind == 3)
    {
      if ((glpASTNodeGetSaFlags(v3) & 0x1F) != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (Kind == 46)
    {
      v10 = glpVariableDeclarationNodeGetExtra(v3);
      v11 = *(a1 + 24);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 0x40000000;
      v64[2] = __saInliningNodeReplacement_block_invoke;
      v64[3] = &__block_descriptor_tmp_6;
      v64[4] = a2;
      v64[5] = v10;
      v64[6] = v3;
      v12 = glpPointerHashCache_b(v11, v10, v64);
      v13 = glpLValueNodeGetVariableExtra(v12);
      glpVariableDeclarationNodeSetExtra(v3, v13);
      v14 = *(v13 + 48);
      if (v14)
      {
        *(v13 + 48) = *a1 | v14 & 0xFFFFFFFFFFFFFFE0;
        v15 = glpASTNodeGetSaFlags(v3);
        glpASTNodeSetSaFlags(v3, v15 & 0xFFFFFFFFFFFFFFE0 | *a1);
      }

      v16 = glpPointerHashGet(*(a1 + 32), v10);
      if (v16)
      {
        glpVariableDeclarationNodeSetName(v3, *v16, v16[1]);
      }

      Initializer = glpVariableDeclarationNodeGetInitializer(v3);
      if (Initializer)
      {
        v18 = Initializer;
        if (glpIsAssignNode(Initializer) && (*(v13 + 49) & 2) != 0)
        {
          Lhs = glpBinaryOperatorNodeGetLhs(v18);
          Rhs = glpBinaryOperatorNodeGetRhs(v18);
          if (glpIsLValueNode(Lhs) && glpIsConstantNode(Rhs) && glpLValueNodeGetVariableExtra(Lhs) == v13)
          {
            v21 = glpDerefNodeGetOffset(Lhs);
            if (!v21 || (v22 = v21, !glpOffsetNodeGetOffsetExpr(v21)) && !glpOffsetNodeGetSwizzle(v22) && !glpOffsetNodeGetVectorElementExpr(v22))
            {
              v23 = glpLValueNodeGetVariableExtra(Lhs);
              *(v23 + 64) = glpConstantNodeGetValue(Rhs);
              glpVariableDeclarationNodeSetInitializer(v3, 0);
            }
          }
        }
      }

      goto LABEL_37;
    }

    goto LABEL_30;
  }

  if (glpTypeConversionNodeGetToPrecision(v3) & 1) != 0 || (glpASTNodeGetSaFlags(v3))
  {
    glpTypeConversionNodeSetToPrecision(v3, *a1);
    goto LABEL_36;
  }

LABEL_37:
  if (!v3)
  {
    return 0;
  }

  v32 = glpASTNodeGetSaFlags(v3);
  glpASTNodeSetSaFlags(v3, v32 & 0xFFFFFFFFFFFFFF1FLL);
  ValueHash = glpCompilerGetValueHash(*(a1 + 16));
  v34 = glpConstantFold(a2, ValueHash, v3);
  v24 = v34;
  if (v34)
  {
    v62 = *(a1 + 40);
    v63 = *(a1 + 56);
    glpASTNodeSetLocation(v34, &v62);
  }

  return v24;
}

uint64_t __saInliningNodeReplacement_block_invoke(void *a1)
{
  v2 = (*(a1[4] + 8))(*a1[4], 160, "VariableObject (SA inlining)");
  v3 = a1[5];
  v4 = v3[1];
  *v2 = *v3;
  *(v2 + 16) = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  *(v2 + 64) = v3[4];
  *(v2 + 80) = v7;
  *(v2 + 32) = v5;
  *(v2 + 48) = v6;
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[9];
  *(v2 + 128) = v3[8];
  *(v2 + 144) = v10;
  *(v2 + 96) = v8;
  *(v2 + 112) = v9;
  v11 = a1[4];
  glpASTNodeGetLocation(a1[6], v15);
  glpMakeLValueNode(v11, v15, *(v2 + 16), *(v2 + 24), v2);
  v13 = v12;
  glpASTNodeSetSaType(v12, *v2);
  glpASTNodeSetSaFlags(v13, *(v2 + 48));
  return v13;
}

char *glpQualifierKindToString(unsigned int a1)
{
  if (a1 >= 7)
  {
    abort();
  }

  return off_278B49B50[a1];
}

uint64_t glpQualifierKindOfNode(uint64_t a1)
{
  Kind = glpASTNodeGetKind(a1);
  if (Kind == 61)
  {
    return 5;
  }

  if (Kind == 60)
  {
    return 0;
  }

  if (Kind != 59 || (Qualifier = glpKeywordQualifierNodeGetQualifier(a1), Qualifier >= 0x19))
  {
    abort();
  }

  return dword_23A29CC20[Qualifier];
}

uint64_t glpParseQualifiers(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v11 = a2;
  v12 = a1;
  if (!a3)
  {
    *a6 = 0;
    *a7 = 0;
LABEL_5:
    v15 = a4;
    v14 = 0;
    goto LABEL_6;
  }

  v13 = a3;
  if (glpIsKeywordQualifierNode(a3))
  {
    *a6 = 0;
    *a7 = 0;
    v14 = (1 << glpKeywordQualifierNodeGetQualifier(v13));
    a1 = v12;
    a2 = v11;
    a3 = v13;
    v15 = a4;
LABEL_6:

    return qualifierMaskToSAFlags(a1, a2, a3, v15, v14, a5);
  }

  if (glpIsLayoutQualifierNode(v13))
  {
    *a7 = 0;
    result = qualifierMaskToSAFlags(v12, v11, v13, a4, 0, a5);
    if (!result)
    {
      return result;
    }

    v17 = parseLayout(v12, v11, v13, a4, a6) == 0;
    return !v17;
  }

  if (glpIsSubroutineTypeListNode(v13))
  {
    *a6 = 0;
    *a7 = glpSANode(v12, v13);
    result = qualifierMaskToSAFlags(v12, v11, v13, a4 | 0x180000, 0, a5);
    if (!result)
    {
      return result;
    }

    v17 = *a7 == -1;
    return !v17;
  }

  if (!glpIsQualifierListNode(v13))
  {
LABEL_63:
    abort();
  }

  *a6 = 0;
  *a7 = 0;
  QualifierCount = glpQualifierListNodeGetQualifierCount(v13);
  if (!QualifierCount)
  {
    a1 = v12;
    a2 = v11;
    a3 = v13;
    goto LABEL_5;
  }

  v42 = a5;
  v44 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    Qualifier = glpQualifierListNodeGetQualifier(v13, v18);
    v21 = Qualifier;
    if (v19)
    {
      if (!glpIsKeywordQualifierNode(Qualifier))
      {
        goto LABEL_49;
      }

      v22 = glpKeywordQualifierNodeGetQualifier(v21);
      if (v22 > 0x12 || ((1 << v22) & 0x46000) == 0)
      {
        goto LABEL_49;
      }
    }

    v23 = glpQualifierKindOfNode(v21);
    if (glpIsKeywordQualifierNode(v21) && glpKeywordQualifierNodeGetQualifier(v21) == 4)
    {
      NameTable = glpCompilerGetNameTable(v12);
      if (glpNameTableIsExtensionEnabled(NameTable, 0xEu))
      {
        v23 = 4;
      }
    }

    if (v23 < HIDWORD(v44))
    {
      v25 = glpCompilerGetNameTable(v12);
      if (glpNameTableGetGLSLVersion(v25) <= 9)
      {
        if (glpIsKeywordQualifierNode(v21))
        {
          v33 = glpKeywordQualifierNodeGetQualifier(v21);
          glpQualifierName(v33);
        }

        InfoLog = glpCompilerGetInfoLog(v12);
        glpASTNodeGetLocation(v21, v45);
        v40 = glpQualifierKindToString(v23);
        glpQualifierKindToString(HIDWORD(v44));
        glpLogMessage(InfoLog, 0, v45, "%s qualifier %s%s%smust precede %s qualifiers", v41, v40);
        return 0;
      }
    }

    if (glpIsKeywordQualifierNode(v21))
    {
      HIDWORD(v44) = v23;
      v26 = glpKeywordQualifierNodeGetQualifier(v21);
      v27 = 1 << v26;
      if (((1 << v26) & v44) != 0)
      {
        v28 = glpCompilerGetNameTable(v12);
        if (glpNameTableGetGLSLVersion(v28) < 0xA)
        {
          v34 = glpCompilerGetInfoLog(v12);
          glpASTNodeGetLocation(v21, v45);
          glpQualifierName(v26);
          glpLogMessage(v34, 0, v45, "Duplicate qualifier '%s'", v35);
          return 0;
        }
      }

      if (v26 - 6 > 2)
      {
        v19 = 0;
      }

      else
      {
        v29 = glpCompilerGetNameTable(v12);
        v19 = !glpNameTableIsExtensionEnabled(v29, 0xEu);
      }

      LODWORD(v44) = v27 | v44;
    }

    else if (glpIsLayoutQualifierNode(v21))
    {
      v19 = 0;
    }

    else
    {
      if (!glpIsSubroutineTypeListNode(v21) || *a7)
      {
        goto LABEL_63;
      }

      v30 = glpSANode(v12, v21);
      *a7 = v30;
      if (v30 == -1)
      {
        return 0;
      }

      v19 = 0;
      a4 |= 0x180000uLL;
    }

    ++v18;
  }

  while (QualifierCount != v18);
  if (v19)
  {
LABEL_49:
    v31 = glpCompilerGetInfoLog(v12);
    *&v32 = glpASTNodeGetLocation(v13, v45).n128_u64[0];
    glpLogMessage(v31, 0, v45, "'centroid', 'sample' and 'patch' must be directly followed by 'in', 'out' or 'varying'", v32);
    return 0;
  }

  result = qualifierMaskToSAFlags(v12, v11, v13, a4, v44, v42);
  if (result)
  {
    for (i = 0; i != QualifierCount; ++i)
    {
      v37 = glpQualifierListNodeGetQualifier(v13, i);
      if (glpIsLayoutQualifierNode(v37))
      {
        if (!*a6)
        {
          glpCompilerGetAllocator();
          *a6 = glpMakeLayoutObject(v38);
        }

        result = parseLayout(v12, v11, v37, *v42, a6);
        if (!result)
        {
          break;
        }
      }

      result = 1;
    }
  }

  return result;
}

uint64_t qualifierMaskToSAFlags(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6)
{
  *a6 = a4;
  v9 = a5 & 0x1F80000;
  if (a2 > 0xC)
  {
    goto LABEL_17;
  }

  v11 = a5;
  if (((1 << a2) & 0x772) != 0)
  {
    if ((a5 & 0x1F80000) < 0x200000)
    {
      if (!v9 || v9 == 0x80000)
      {
        goto LABEL_21;
      }

      if (v9 == 0x100000)
      {
        v12 = 2;
        goto LABEL_20;
      }
    }

    else if ((a5 & 0x1F80000) >= 0x800000)
    {
      if (v9 == 0x800000)
      {
        v12 = 8;
        goto LABEL_20;
      }

      if (v9 == 0x1000000)
      {
        v12 = 16;
        goto LABEL_20;
      }
    }

    else
    {
      if (v9 == 0x200000)
      {
        v12 = 1;
        goto LABEL_20;
      }

      if (v9 == 0x400000)
      {
        v12 = 4;
LABEL_20:
        *a6 = v12 | a4;
        goto LABEL_21;
      }
    }

LABEL_17:
    glpCompilerGetAllocator();
    StringBuffer = glpMakeStringBuffer(v16);
    qualifierMaskToStringBuffer(StringBuffer, v9);
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a3, v86);
    glpStringBufferGetCString(StringBuffer);
    qualifierContextToString(a2);
    glpLogMessage(InfoLog, 0, v86, "Invalid precision qualifiers '%s' in %s context");
    return 0;
  }

  if (v9)
  {
    glpCompilerGetAllocator();
    v14 = glpMakeStringBuffer(v13);
    qualifierMaskToStringBuffer(v14, v9);
    v15 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a3, v86);
    glpStringBufferGetCString(v14);
    qualifierContextToString(a2);
    glpLogMessage(v15, 0, v86, "Precision qualifiers '%s' not allowed in %s context");
    return 0;
  }

LABEL_21:
  v19 = a5 & 0x7E000;
  NameTable = glpCompilerGetNameTable(a1);
  GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
  Language = glpNameTableGetLanguage(NameTable);
  v23 = glpNameTableIsExtensionEnabled(NameTable, 0xEu) || glpNameTableIsExtensionEnabled(NameTable, 0x23u);
  IsExtensionEnabled = glpNameTableIsExtensionEnabled(NameTable, 2u);
  v25 = (glpCompilerAllOutputsAreInvariant(a1) != 0) << 40;
  v26 = (a2 != 2) << 31;
  v27 = *a6;
  if (a2 == 7 && !Language)
  {
    v28 = (v27 & 0x120000000) != 0;
    v29 = (*a6 & 0x60000000) == 0;
    v30 = 1;
    goto LABEL_30;
  }

  v30 = (v27 & 0x140000000) != 0;
  if (a2 == 7 && Language == 4)
  {
    v29 = (*a6 & 0x60000000) == 0;
    v28 = 1;
    goto LABEL_30;
  }

  v28 = (v27 & 0x120000000) != 0;
  v29 = (*a6 & 0x60000000) == 0;
  if (a2 <= 4)
  {
    if (a2 <= 2 && a2)
    {
      if (a2 != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_58;
    }

LABEL_71:
    if (!v19)
    {
      goto LABEL_94;
    }

    glpCompilerGetAllocator();
    v36 = glpMakeStringBuffer(v35);
    qualifierMaskToStringBuffer(v36, v11 & 0x7E000);
    v37 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a3, v86);
    glpStringBufferGetCString(v36);
    qualifierContextToString(a2);
    glpLogMessage(v37, 0, v86, "Storage qualifiers '%s' not allowed in %s context");
    return 0;
  }

  if (a2 > 0xC)
  {
LABEL_51:
    v33 = v19 >> 13;
    if (v19 >> 13 < 2)
    {
      v34 = v27 | 0x2000000;
      goto LABEL_93;
    }

    if (v33 == 2)
    {
      v34 = v27 | 0x4000000;
      goto LABEL_93;
    }

    if (v33 != 4)
    {
      goto LABEL_103;
    }

    v34 = v27 | 0x6000000;
    goto LABEL_93;
  }

  if (((1 << a2) & 0x1940) != 0)
  {
    goto LABEL_71;
  }

  if (((1 << a2) & 0x600) == 0)
  {
    if (a2 != 7)
    {
      goto LABEL_51;
    }

LABEL_30:
    if ((v11 & 0x7E000u) >= 0x10000)
    {
      if ((v11 & 0x7E000u) >= 0x40000)
      {
        if (v19 != 0x40000)
        {
          goto LABEL_33;
        }

LABEL_61:
        if (GLSLVersion > 2)
        {
          goto LABEL_103;
        }

        if (Language != 3 && Language)
        {
          if (Language == 4)
          {
            goto LABEL_79;
          }

          goto LABEL_103;
        }

LABEL_92:
        v34 = v27 | v26 | v25 | 0x40000000;
        goto LABEL_93;
      }

      goto LABEL_66;
    }

    v32 = v19 == 0x4000;
    if ((v11 & 0x7E000u) < 0x4000)
    {
      if (v19)
      {
LABEL_42:
        if (v19 == 0x2000 && GLSLVersion >= 3 && !v30)
        {
          goto LABEL_79;
        }

        goto LABEL_103;
      }

      v40 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a3, v86);
      qualifierContextToString(a2);
      glpLogMessage(v40, 0, v86, "Storage qualifier required in %s context");
      return 0;
    }

    goto LABEL_86;
  }

LABEL_58:
  if ((v11 & 0x7E000u) >= 0x10000)
  {
    if ((v11 & 0x7E000u) >= 0x40000)
    {
      if (v19 != 0x40000)
      {
LABEL_33:
        if (v19 != 270336)
        {
          if (v19 != 278528)
          {
            goto LABEL_103;
          }

          v31 = v23 && Language == 4;
          if (Language == 3)
          {
            v31 = 1;
          }

          if (GLSLVersion > 2 || !v31)
          {
            goto LABEL_103;
          }

          goto LABEL_92;
        }

        if (GLSLVersion <= 2 && Language == 3)
        {
LABEL_79:
          v39 = 2684354816;
          if (a2 == 2)
          {
            v39 = 0x20000000;
          }

          v34 = v27 | v39;
          goto LABEL_93;
        }

LABEL_103:
        glpCompilerGetAllocator();
        v46 = glpMakeStringBuffer(v45);
        qualifierMaskToStringBuffer(v46, v11 & 0x7E000);
        v47 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a3, v86);
        glpStringBufferGetCString(v46);
        qualifierContextToString(a2);
        glpLogMessage(v47, 0, v86, "Invalid storage qualifiers '%s' in %s context");
        return 0;
      }

      goto LABEL_61;
    }

LABEL_66:
    if (v19 == 0x10000)
    {
      if (v29)
      {
        v38 = 0x180000100;
        if (a2 == 2)
        {
          v38 = 0x100000000;
        }

        v34 = v38 | ((a2 == 7) << 35) | v27;
        goto LABEL_93;
      }
    }

    else if (v19 == 0x20000 && GLSLVersion <= 2 && !Language)
    {
      goto LABEL_79;
    }

    goto LABEL_103;
  }

  v32 = v19 == 0x4000;
  if ((v11 & 0x7E000u) >= 0x4000)
  {
LABEL_86:
    if (v32)
    {
      if (GLSLVersion < 3 || v28)
      {
        goto LABEL_103;
      }

      goto LABEL_92;
    }

    if (v19 != 0x8000 || !IsExtensionEnabled)
    {
      goto LABEL_103;
    }

    v34 = v27 | v26 | v25 | 0x60000000;
    goto LABEL_93;
  }

  if (v19)
  {
    goto LABEL_42;
  }

  v34 = v27 | v26;
LABEL_93:
  *a6 = v34;
LABEL_94:
  v41 = v11 & 0x1FE0;
  v42 = glpCompilerGetNameTable(a1);
  v43 = glpNameTableGetLanguage(v42);
  if (a2 <= 3)
  {
    if ((a2 - 2) >= 2 && a2)
    {
      if ((glpCompilerGetOptions(a1) & 1) == 0)
      {
        goto LABEL_113;
      }

      v59 = *a6;
      if (a3)
      {
        if (!glpIsVariableDeclarationNode(a3) || !glpVariableDeclarationNodeGetInitializer(a3) || (v59 & 0x160000000) != 0)
        {
          goto LABEL_113;
        }

        v59 = *a6;
      }

      else if ((v59 & 0x160000000) != 0)
      {
        goto LABEL_113;
      }

      v51 = v59 | 0x60;
      goto LABEL_171;
    }

LABEL_106:
    if ((v11 & 0x1FE0) != 0)
    {
      glpCompilerGetAllocator();
      v49 = glpMakeStringBuffer(v48);
      qualifierMaskToStringBuffer(v49, v11 & 0x1FE0);
      v50 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a3, v86);
      glpStringBufferGetCString(v49);
      qualifierContextToString(a2);
      glpLogMessage(v50, 0, v86, "Auxiliary storage qualifiers '%s' not allowed in %s context");
      return 0;
    }

    goto LABEL_172;
  }

  if (a2 <= 0xC)
  {
    if (((1 << a2) & 0x1980) == 0)
    {
      if (((1 << a2) & 0x600) == 0)
      {
        if (a2 == 6)
        {
          if ((v11 & 0x1FE0) != 0)
          {
            if (v41 != 2048)
            {
              if (v41 == 32)
              {
                v44 = *a6;
LABEL_127:
                v51 = v44 | 0x60;
                goto LABEL_171;
              }

LABEL_209:
              glpCompilerGetAllocator();
              v84 = glpMakeStringBuffer(v83);
              qualifierMaskToStringBuffer(v84, v11 & 0x1FE0);
              v85 = glpCompilerGetInfoLog(a1);
              glpASTNodeGetLocation(a3, v86);
              glpStringBufferGetCString(v84);
              qualifierContextToString(a2);
              glpLogMessage(v85, 0, v86, "Invalid auxiliary storage qualifiers '%s' in %s context");
              return 0;
            }

            v44 = *a6;
LABEL_170:
            v51 = v44 | 0x100;
            goto LABEL_171;
          }

          goto LABEL_172;
        }

        goto LABEL_108;
      }

LABEL_113:
      v44 = *a6;
      v52 = (*a6 >> 29) & 1;
      if (v43)
      {
        v53 = 0;
      }

      else
      {
        v53 = (*a6 & 0x20000000) != 0;
      }

      v54 = (v44 & 0x60000000) == 0 || v53;
      v55 = (v44 >> 30) & 1;
      v56 = v43 == 4 && (*a6 & 0x40000000) != 0;
      v57 = v54 | v56;
      if ((v11 & 0x1FE0u) > 0xFF)
      {
        if ((v11 & 0x1FE0u) <= 0x3FF)
        {
          if (v41 == 256)
          {
            if ((v57 & 1) == 0)
            {
              v51 = v44 | 0x40000000000;
              goto LABEL_171;
            }
          }

          else if (v41 == 512 && (v44 & 0x100000000) != 0)
          {
            v51 = v44 | 0xC00000000;
            goto LABEL_171;
          }

          goto LABEL_209;
        }

        if (v41 == 1024)
        {
          if ((v44 & 0x100000000) != 0)
          {
            v51 = v44 | 0x200000000;
            goto LABEL_171;
          }

          goto LABEL_209;
        }

        if (v41 != 2048 || (v44 & 0x160000000) != 0)
        {
          goto LABEL_209;
        }

        goto LABEL_170;
      }

      if ((v11 & 0x1FE0u) > 0x3F)
      {
        if (v41 == 64)
        {
          if ((v57 & 1) == 0)
          {
            v51 = v44 | 0x4000000000;
            goto LABEL_171;
          }
        }

        else if (v41 == 128 && a2 == 1)
        {
          if (v43 != 1)
          {
            LOBYTE(v55) = 0;
          }

          if (v43 != 2)
          {
            LODWORD(v52) = 0;
          }

          if ((v55 & 1) != 0 || v52)
          {
            v51 = v44 | 0x20000000000;
            goto LABEL_171;
          }
        }

        goto LABEL_209;
      }

      if ((v11 & 0x1FE0) != 0)
      {
        if (v41 == 32 && (v44 & 0x160000000) == 0)
        {
          goto LABEL_127;
        }

        goto LABEL_209;
      }

      goto LABEL_172;
    }

    goto LABEL_106;
  }

LABEL_108:
  if (a2 != 4)
  {
    v44 = *a6;
    v58 = *a6 & 0x6000000;
    if ((v11 & 0x1FE0u) > 0x7FF)
    {
      if (v41 == 4096)
      {
        if (v58 == 0x2000000)
        {
          v51 = v44 | 0x200;
          goto LABEL_171;
        }

        goto LABEL_209;
      }

      if (v41 != 2048)
      {
        goto LABEL_209;
      }
    }

    else
    {
      if ((v11 & 0x1FE0) == 0)
      {
        goto LABEL_172;
      }

      if (v41 != 32)
      {
        goto LABEL_209;
      }
    }

    if (v58 != 0x2000000)
    {
      goto LABEL_209;
    }

    goto LABEL_170;
  }

  if ((v11 & 0x1FE0) != 0)
  {
    if (v41 == 1024)
    {
      v51 = *a6 | 0x180000;
LABEL_171:
      *a6 = v51;
      goto LABEL_172;
    }

    goto LABEL_209;
  }

LABEL_172:
  result = parseInterpolationQualifiers(a1, a2, a3, v11, a6);
  if (result)
  {
    result = parseInterpolationQualifiers(a1, a2, a3, v11, a6);
    if (result)
    {
      v61 = glpCompilerGetNameTable(a1);
      v62 = glpNameTableGetGLSLVersion(v61);
      v63 = glpNameTableGetLanguage(v61);
      if (((1 << a2) & 0x1FD) != 0)
      {
        if ((v11 & 2) != 0)
        {
          glpCompilerGetAllocator();
          v65 = glpMakeStringBuffer(v64);
          v66 = v65;
          v67 = v11 & 2;
LABEL_206:
          qualifierMaskToStringBuffer(v65, v67);
          v82 = glpCompilerGetInfoLog(a1);
          glpASTNodeGetLocation(a3, v86);
          glpStringBufferGetCString(v66);
          qualifierContextToString(a2);
          glpLogMessage(v82, 0, v86, "Qualifiers '%s' not allowed in %s context");
          return 0;
        }
      }

      else
      {
        v68 = *a6;
        v69 = v62 > 9 || v62 == 6;
        v70 = 0x8000000000;
        if (v69)
        {
          v70 = 0x10000000000;
        }

        if ((v68 & 0x10000000) != 0)
        {
          if ((v11 & 2) == 0)
          {
            goto LABEL_200;
          }
        }

        else
        {
          if ((v11 & 2) == 0)
          {
            goto LABEL_200;
          }

          v71 = v63 != 0;
          v72 = (*a6 & 0x20000000) == 0;
          if ((v68 & 0x20000000) == 0)
          {
            v71 = 1;
          }

          if ((v68 & 0x60000000) == 0)
          {
            v71 = 0;
          }

          v73 = (v68 >> 30) & 1;
          if (v63 != 4)
          {
            LODWORD(v73) = 0;
          }

          v74 = v71 & ~v73;
          if (v62 != 6)
          {
            v72 = 1;
          }

          v75 = v74 & v72;
          if (v62 == 2)
          {
            v76 = 0;
          }

          else
          {
            v76 = v73;
          }

          if ((v75 & 1) == 0 && !v76)
          {
            glpCompilerGetAllocator();
            v78 = glpMakeStringBuffer(v77);
            qualifierMaskToStringBuffer(v78, v11 & 2);
            v79 = glpCompilerGetInfoLog(a1);
            glpASTNodeGetLocation(a3, v86);
            glpStringBufferGetCString(v78);
            qualifierContextToString(a2);
            glpLogMessage(v79, 0, v86, "Invalid qualifiers '%s' in %s context");
            return 0;
          }
        }

        *a6 = v68 | v70;
      }

LABEL_200:
      v80 = v11 & 1;
      if (((1 << a2) & 0x1E72) != 0)
      {
        if (v80)
        {
          *a6 |= 0x80000000000uLL;
        }
      }

      else if (v80)
      {
        glpCompilerGetAllocator();
        v65 = glpMakeStringBuffer(v81);
        v66 = v65;
        v67 = v80;
        goto LABEL_206;
      }

      return 1;
    }
  }

  return result;
}

uint64_t parseLayout(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v33 = 0uLL;
  v34 = 0;
  glpASTNodeGetLocation(a3, &v33);
  LayoutPairCount = glpLayoutQualifierNodeGetLayoutPairCount(a3);
  if (!LayoutPairCount)
  {
    return 1;
  }

  v10 = LayoutPairCount;
  v11 = 0;
  while (1)
  {
    LayoutPair = glpLayoutQualifierNodeGetLayoutPair(a3, v11);
    Identifier = glpLayoutPairNodeGetIdentifier(LayoutPair);
    v15 = v14;
    v32 = 0;
    glpCompilerGetAllocator();
    v17 = glpLowerCaseCopyOfString(v16, Identifier, v15);
    if (!glpLayoutQualifierFromString(v17, v18, &v32))
    {
      break;
    }

    ValueKind = glpLayoutPairNodeGetValueKind(LayoutPair);
    if (ValueKind)
    {
      if (ValueKind != 1)
      {
        abort();
      }

      glpCompilerGetAllocator();
      v21 = v20;
      v22 = *a5;
      v23 = v32;
      Value = glpLayoutPairNodeGetValue(LayoutPair);
      v30 = v33;
      v31 = v34;
      if (!glpLayoutObjectAppendInteger(v21, a1, &v30, a2, a4, v22, v23, Value))
      {
        return 0;
      }
    }

    else
    {
      glpCompilerGetAllocator();
      v25 = *a5;
      v30 = v33;
      v31 = v34;
      if (!glpLayoutObjectAppend(v26, a1, &v30, a2, a4, v25, v32))
      {
        return 0;
      }
    }

    if (v10 == ++v11)
    {
      return 1;
    }
  }

  InfoLog = glpCompilerGetInfoLog(a1);
  v30 = v33;
  v31 = v34;
  glpLogMessage(InfoLog, 0, &v30, "Unknown identifier '%.*s' in layout", v15, Identifier);
  return 0;
}

uint64_t parseInterpolationQualifiers(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = a2;
  v9 = a4 & 0x1C;
  NameTable = glpCompilerGetNameTable(a1);
  Language = glpNameTableGetLanguage(NameTable);
  if (v7 > 0xC)
  {
    goto LABEL_31;
  }

  if (((1 << v7) & 0x19FD) == 0)
  {
    v15 = *a5;
    v17 = (*a5 & 0x20000000) == 0 || Language != 0;
    if ((v15 & 0x40000000) != 0 && Language == 4)
    {
      v17 = 0;
    }

    if ((v15 & 0x60000000) == 0)
    {
      v17 = 0;
    }

    v19 = v9 >> 2;
    if (v9 >> 2 <= 1)
    {
      if (!v19 || v19 == 1 && v17)
      {
        return 1;
      }

LABEL_31:
      glpCompilerGetAllocator();
      StringBuffer = glpMakeStringBuffer(v22);
      qualifierMaskToStringBuffer(StringBuffer, v9);
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a3, v25);
      glpStringBufferGetCString(StringBuffer);
      qualifierContextToString(v7);
      glpLogMessage(InfoLog, 0, v25, "Invalid interpolation qualifiers '%s' in %s context");
      return 0;
    }

    if (v19 == 2)
    {
      if (!v17)
      {
        goto LABEL_31;
      }

      v20 = v15 | 0x1000000000;
    }

    else
    {
      if (v19 != 4 || !v17)
      {
        goto LABEL_31;
      }

      v20 = v15 | 0x2000000000;
    }

    *a5 = v20;
    return 1;
  }

  if (!v9)
  {
    return 1;
  }

  glpCompilerGetAllocator();
  v13 = glpMakeStringBuffer(v12);
  qualifierMaskToStringBuffer(v13, v9);
  v14 = glpCompilerGetInfoLog(a1);
  glpASTNodeGetLocation(a3, v25);
  glpStringBufferGetCString(v13);
  qualifierContextToString(v7);
  glpLogMessage(v14, 0, v25, "Interpolation qualifiers '%s' not allowed in %s context");
  return 0;
}

uint64_t *qualifierMaskToStringBuffer(uint64_t *result, int a2)
{
  v3 = result;
  if ((a2 & 1) == 0)
  {
    if ((a2 & 2) == 0)
    {
      if ((a2 & 4) == 0)
      {
        if ((a2 & 8) == 0)
        {
          if ((a2 & 0x10) == 0)
          {
            if ((a2 & 0x20) == 0)
            {
              if ((a2 & 0x40) == 0)
              {
                if ((a2 & 0x80) == 0)
                {
                  if ((a2 & 0x100) == 0)
                  {
                    if ((a2 & 0x200) == 0)
                    {
                      if ((a2 & 0x400) == 0)
                      {
                        if ((a2 & 0x800) == 0)
                        {
                          if ((a2 & 0x1000) == 0)
                          {
                            if ((a2 & 0x2000) == 0)
                            {
                              if ((a2 & 0x4000) == 0)
                              {
                                if ((a2 & 0x8000) == 0)
                                {
                                  if ((a2 & 0x10000) == 0)
                                  {
                                    if ((a2 & 0x20000) == 0)
                                    {
                                      if ((a2 & 0x40000) == 0)
                                      {
                                        if ((a2 & 0x80000) == 0)
                                        {
                                          if ((a2 & 0x100000) == 0)
                                          {
                                            if ((a2 & 0x200000) == 0)
                                            {
                                              if ((a2 & 0x400000) == 0)
                                              {
                                                if ((a2 & 0x800000) == 0)
                                                {
                                                  if ((a2 & 0x1000000) == 0)
                                                  {
                                                    return result;
                                                  }

                                                  goto LABEL_99;
                                                }

                                                goto LABEL_97;
                                              }

LABEL_95:
                                              result = glpStringBufferAppendCString(v3, "lowp");
                                              if ((a2 & 0x800000) != 0)
                                              {
                                                goto LABEL_96;
                                              }

                                              goto LABEL_50;
                                            }

LABEL_93:
                                            result = glpStringBufferAppendCString(v3, "$argp");
                                            if ((a2 & 0x400000) != 0)
                                            {
                                              goto LABEL_94;
                                            }

                                            goto LABEL_49;
                                          }

LABEL_91:
                                          result = glpStringBufferAppendCString(v3, "$anyp");
                                          if ((a2 & 0x200000) != 0)
                                          {
                                            goto LABEL_92;
                                          }

                                          goto LABEL_48;
                                        }

LABEL_89:
                                        result = glpStringBufferAppendCString(v3, "$nop");
                                        if ((a2 & 0x100000) != 0)
                                        {
                                          goto LABEL_90;
                                        }

                                        goto LABEL_47;
                                      }

LABEL_87:
                                      result = glpStringBufferAppendCString(v3, "varying");
                                      if ((a2 & 0x80000) != 0)
                                      {
                                        goto LABEL_88;
                                      }

                                      goto LABEL_46;
                                    }

LABEL_85:
                                    result = glpStringBufferAppendCString(v3, "attribute");
                                    if ((a2 & 0x40000) != 0)
                                    {
                                      goto LABEL_86;
                                    }

                                    goto LABEL_45;
                                  }

LABEL_83:
                                  result = glpStringBufferAppendCString(v3, "uniform");
                                  if ((a2 & 0x20000) != 0)
                                  {
                                    goto LABEL_84;
                                  }

                                  goto LABEL_44;
                                }

LABEL_81:
                                result = glpStringBufferAppendCString(v3, "inout");
                                if ((a2 & 0x10000) != 0)
                                {
                                  goto LABEL_82;
                                }

                                goto LABEL_43;
                              }

LABEL_79:
                              result = glpStringBufferAppendCString(v3, "out");
                              if ((a2 & 0x8000) != 0)
                              {
                                goto LABEL_80;
                              }

                              goto LABEL_42;
                            }

LABEL_77:
                            result = glpStringBufferAppendCString(v3, "in");
                            if ((a2 & 0x4000) != 0)
                            {
                              goto LABEL_78;
                            }

                            goto LABEL_41;
                          }

LABEL_75:
                          result = glpStringBufferAppendCString(v3, "$foldable");
                          if ((a2 & 0x2000) != 0)
                          {
                            goto LABEL_76;
                          }

                          goto LABEL_40;
                        }

LABEL_73:
                        result = glpStringBufferAppendCString(v3, "$readonly");
                        if ((a2 & 0x1000) != 0)
                        {
                          goto LABEL_74;
                        }

                        goto LABEL_39;
                      }

LABEL_71:
                      result = glpStringBufferAppendCString(v3, "subroutine");
                      if ((a2 & 0x800) != 0)
                      {
                        goto LABEL_72;
                      }

                      goto LABEL_38;
                    }

LABEL_69:
                    result = glpStringBufferAppendCString(v3, "bindable");
                    if ((a2 & 0x400) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_37;
                  }

LABEL_67:
                  result = glpStringBufferAppendCString(v3, "sample");
                  if ((a2 & 0x200) != 0)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_36;
                }

LABEL_65:
                result = glpStringBufferAppendCString(v3, "patch");
                if ((a2 & 0x100) != 0)
                {
                  goto LABEL_66;
                }

                goto LABEL_35;
              }

LABEL_63:
              result = glpStringBufferAppendCString(v3, "centroid");
              if ((a2 & 0x80) != 0)
              {
                goto LABEL_64;
              }

              goto LABEL_34;
            }

LABEL_61:
            result = glpStringBufferAppendCString(v3, "const");
            if ((a2 & 0x40) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_33;
          }

LABEL_59:
          result = glpStringBufferAppendCString(v3, "noperspective");
          if ((a2 & 0x20) != 0)
          {
            goto LABEL_60;
          }

          goto LABEL_32;
        }

LABEL_57:
        result = glpStringBufferAppendCString(v3, "flat");
        if ((a2 & 0x10) != 0)
        {
          goto LABEL_58;
        }

        goto LABEL_31;
      }

LABEL_55:
      result = glpStringBufferAppendCString(v3, "smooth");
      if ((a2 & 8) != 0)
      {
        goto LABEL_56;
      }

      goto LABEL_30;
    }

LABEL_53:
    result = glpStringBufferAppendCString(v3, "invariant");
    if ((a2 & 4) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_29;
  }

  result = glpStringBufferAppendCString(result, "precise");
  if ((a2 & 2) != 0)
  {
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_53;
  }

  if ((a2 & 4) != 0)
  {
LABEL_54:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_55;
  }

LABEL_29:
  if ((a2 & 8) != 0)
  {
LABEL_56:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_57;
  }

LABEL_30:
  if ((a2 & 0x10) != 0)
  {
LABEL_58:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_59;
  }

LABEL_31:
  if ((a2 & 0x20) != 0)
  {
LABEL_60:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_61;
  }

LABEL_32:
  if ((a2 & 0x40) != 0)
  {
LABEL_62:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_63;
  }

LABEL_33:
  if ((a2 & 0x80) != 0)
  {
LABEL_64:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_65;
  }

LABEL_34:
  if ((a2 & 0x100) != 0)
  {
LABEL_66:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_67;
  }

LABEL_35:
  if ((a2 & 0x200) != 0)
  {
LABEL_68:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_69;
  }

LABEL_36:
  if ((a2 & 0x400) != 0)
  {
LABEL_70:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_71;
  }

LABEL_37:
  if ((a2 & 0x800) != 0)
  {
LABEL_72:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_73;
  }

LABEL_38:
  if ((a2 & 0x1000) != 0)
  {
LABEL_74:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_75;
  }

LABEL_39:
  if ((a2 & 0x2000) != 0)
  {
LABEL_76:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_77;
  }

LABEL_40:
  if ((a2 & 0x4000) != 0)
  {
LABEL_78:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_79;
  }

LABEL_41:
  if ((a2 & 0x8000) != 0)
  {
LABEL_80:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_81;
  }

LABEL_42:
  if ((a2 & 0x10000) != 0)
  {
LABEL_82:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_83;
  }

LABEL_43:
  if ((a2 & 0x20000) != 0)
  {
LABEL_84:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_85;
  }

LABEL_44:
  if ((a2 & 0x40000) != 0)
  {
LABEL_86:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_87;
  }

LABEL_45:
  if ((a2 & 0x80000) != 0)
  {
LABEL_88:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_89;
  }

LABEL_46:
  if ((a2 & 0x100000) != 0)
  {
LABEL_90:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_91;
  }

LABEL_47:
  if ((a2 & 0x200000) != 0)
  {
LABEL_92:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_93;
  }

LABEL_48:
  if ((a2 & 0x400000) != 0)
  {
LABEL_94:
    glpStringBufferAppendCString(v3, " ");
    goto LABEL_95;
  }

LABEL_49:
  if ((a2 & 0x800000) != 0)
  {
LABEL_96:
    glpStringBufferAppendCString(v3, " ");
LABEL_97:
    result = glpStringBufferAppendCString(v3, "mediump");
    if ((a2 & 0x1000000) == 0)
    {
      return result;
    }

    goto LABEL_98;
  }

LABEL_50:
  if ((a2 & 0x1000000) == 0)
  {
    return result;
  }

LABEL_98:
  glpStringBufferAppendCString(v3, " ");
LABEL_99:

  return glpStringBufferAppendCString(v3, "highp");
}

char *qualifierContextToString(int a1)
{
  if ((a1 - 1) >= 0xC)
  {
    abort();
  }

  return off_278B49B88[a1 - 1];
}

uint64_t glpMakeLValueForVariableObject(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  glpCompilerGetAllocator();
  v11 = *a2;
  v12 = *(a2 + 2);
  glpMakeLValueNode(v6, &v11, a3[2], a3[3], a3);
  v8 = v7;
  glpASTNodeSetSaType(v7, *a3);
  glpASTNodeSetSaFlags(v8, a3[6] & 0x80000037FLL);
  if (a3[11])
  {
    glpCompilerGetAllocator();
    glpAddOffsetIfNeeded(v9, v8);
    v11 = *a2;
    v12 = *(a2 + 2);
    glpEnsureOffsetsExist(a1, &v11, v8);
  }

  return v8;
}

uint64_t glpAddOffsetIfNeeded(uint64_t a1, uint64_t a2)
{
  result = glpDerefNodeGetOffset(a2);
  if (!result)
  {
    glpASTNodeGetLocation(a2, v7);
    OffsetNode = glpMakeOffsetNode(a1, v7);
    glpMakeOffsetObject(a1);
    glpOffsetNodeSetExtra(OffsetNode, v6);
    return glpDerefNodeSetOffset(a2, OffsetNode);
  }

  return result;
}

uint64_t glpEnsureOffsetsExist(uint64_t a1, __int128 *a2, uint64_t a3)
{
  SaType = glpASTNodeGetSaType(a3);
  result = glpTypeGetKind(SaType);
  if (result != 3)
  {
    Offset = glpDerefNodeGetOffset(a3);
    result = glpOffsetNodeGetOffsetExpr(Offset);
    if (!result)
    {
      PrimitiveType = glpGetPrimitiveType(5u);
      IntConstant = glpCompilerGetIntConstant(a1, 0);
      v12 = *a2;
      v13 = *(a2 + 2);
      ConstantValueFragment = glpMakeConstantValueFragment(a1, &v12, PrimitiveType, IntConstant);
      return glpOffsetNodeSetOffsetExpr(Offset, ConstantValueFragment);
    }
  }

  return result;
}

uint64_t glpCheckIBDeref(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 + 1) >= 2)
  {
    ImmediateSAContext = glpCompilerGetImmediateSAContext(a1);
    if (glpIsIBPartialDerefNode(v2))
    {
      Ib = glpIBPartialDerefNodeGetIb(v2);
      Kind = glpTypeGetKind(*(Ib + 64));
      if (Kind == 1)
      {
        goto LABEL_20;
      }

      if (Kind != 3)
      {
        return v2;
      }

      if (glpIBPartialDerefNodeGetBankIndex(v2))
      {
LABEL_20:
        if (glpIsFieldAccessNode(ImmediateSAContext))
        {
          return v2;
        }

        InfoLog = glpCompilerGetInfoLog(a1);
        *&v9 = glpASTNodeGetLocation(v2, v22).n128_u64[0];
        glpLogMessage(InfoLog, 0, v22, "You must access a specific variable of the interface block '%.*s'", v9);
      }

      else
      {
        if (glpIsArrayAccessNode(ImmediateSAContext))
        {
          return v2;
        }

        v18 = glpCompilerGetInfoLog(a1);
        *&v19 = glpASTNodeGetLocation(v2, v22).n128_u64[0];
        glpLogMessage(v18, 0, v22, "You must access an element of the interface block '%.*s'", v19);
      }

      return -1;
    }

    if (glpIsLValueNode(v2) && *(glpLValueNodeGetVariableExtra(v2) + 88) && *(*(glpLValueNodeGetVariableExtra(v2) + 88) + 8) && !glpIsFieldAccessNode(ImmediateSAContext) && !glpIsArrayAccessNode(ImmediateSAContext))
    {
      v20 = 0;
      v21 = 0;
      SaType = glpASTNodeGetSaType(v2);
      SaFlags = glpASTNodeGetSaFlags(v2);
      glpMakeTemporary(a1, SaType, SaFlags & 0x80000037FLL, v2, &v21, &v20);
      glpCompilerGetAllocator();
      v13 = v12;
      glpASTNodeGetLocation(v2, v22);
      glpMakeCommaExprNode(v13, v22, 0);
      v15 = v14;
      glpCompilerGetAllocator();
      glpCommaExprNodeAddExpr(v16, v15, v21);
      glpCompilerGetAllocator();
      glpCommaExprNodeAddExpr(v17, v15, v20);
      return glpSANode(a1, v15);
    }
  }

  return v2;
}

uint64_t glpSAFieldAccessInternal(uint64_t a1, uint64_t a2)
{
  Structure = glpFieldAccessNodeGetStructure(a2);
  SaType = glpASTNodeGetSaType(Structure);
  Field = glpFieldAccessNodeGetField(a2);
  v8 = v7;
  v88[0] = Field;
  v88[1] = v7;
  if (!glpIsIBPartialDerefNode(Structure))
  {
LABEL_15:
    Kind = glpTypeGetKind(SaType);
    if (Kind == 1)
    {
      FieldIndex = glpStructTypeGetFieldIndex(SaType, Field, v8);
      if (FieldIndex != -1)
      {
        v43 = FieldIndex;
        v86 = 0;
        v44 = glpEnsureDeref(a1, Structure, &v86);
        glpASTNodeGetLocation(v44, &v87);
        glpEnsureOffsetsExist(a1, &v87, v44);
        SaFlags = glpASTNodeGetSaFlags(v44);
        Offset = glpDerefNodeGetOffset(v44);
        OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
        if (glpIsLValueNode(v44) && *(glpLValueNodeGetVariableExtra(v44) + 8) && (v48 = glpLValueNodeGetVariableExtra(v44), glpLayoutObjectFind(*(v48 + 8), 28)))
        {
          VariableExtra = glpLValueNodeGetVariableExtra(v44);
          if (glpTypeGetKind(*VariableExtra) == 2)
          {
            glpASTNodeGetLocation(a2, &v87);
            glpASTNodeGetLocation(a2, &v85);
            PrimitiveType = glpGetPrimitiveType(5u);
            v51 = glpABIGetStructTypeRangeOfField(0, SaType, SaFlags, v43);
            IntConstant = glpCompilerGetIntConstant(a1, v51);
            ConstantValueFragment = glpMakeConstantValueFragment(a1, &v85, PrimitiveType, IntConstant);
            v54 = glpABIGetArrayStrideForElementType(0, SaType, SaFlags);
            v55 = glpCompilerGetIntConstant(a1, v54);
            ArrayIndexOffsetFragment = glpMakeArrayIndexOffsetFragment(a1, &v87, ConstantValueFragment, OffsetExpr, v55);
          }

          else
          {
            glpASTNodeGetLocation(a2, &v87);
            v74 = glpABIGetStructTypeRangeOfField(0, SaType, SaFlags, v43);
            v75 = glpCompilerGetIntConstant(a1, v74);
            ArrayIndexOffsetFragment = glpMakeFieldOffsetFragment(a1, &v87, OffsetExpr, v75);
          }

          v76 = ArrayIndexOffsetFragment;
          v77 = glpDerefNodeGetOffset(v44);
          glpOffsetNodeSetOffsetExpr(v77, v76);
          glpCompilerGetAllocator();
          v79 = v78;
          v80 = v86;
          ElementType = glpAggregateTypeGetElementType(SaType, v43);
          v73 = glpHandleGetterSetter(a1, v44, ElementType, OffsetExpr, 0, "getter", 6, v88);
          v71 = v79;
          v72 = v80;
        }

        else
        {
          if (glpIsLValueNode(v44) && *(glpLValueNodeGetVariableExtra(v44) + 88))
          {
            v61 = *(*(glpLValueNodeGetVariableExtra(v44) + 88) + 8);
          }

          else
          {
            v61 = 0;
          }

          glpASTNodeGetLocation(a2, &v87);
          v64 = glpABIGetStructTypeRangeOfField(v61, SaType, SaFlags, v43);
          v65 = glpCompilerGetIntConstant(a1, v64);
          FieldOffsetFragment = glpMakeFieldOffsetFragment(a1, &v87, OffsetExpr, v65);
          v67 = glpDerefNodeGetOffset(v44);
          glpOffsetNodeSetOffsetExpr(v67, FieldOffsetFragment);
          v68 = glpAggregateTypeGetElementType(SaType, v43);
          glpASTNodeSetSaType(v44, v68);
          v69 = glpASTNodeGetSaFlags(v44);
          ElementFlags = glpAggregateTypeGetElementFlags(SaType, v43);
          glpASTNodeSetSaFlags(v44, ElementFlags & 0x41F | v69);
          glpCompilerGetAllocator();
          v72 = v86;
          v73 = v44;
        }

        return glpMangleSideEffectsWithNewResult(v71, v72, v73);
      }

      InfoLog = glpCompilerGetInfoLog(a1);
      *&v63 = glpASTNodeGetLocation(a2, &v87).n128_u64[0];
      glpLogMessage(InfoLog, 0, &v87, "Structure has no field named %.*s", v63);
    }

    else if (Kind)
    {
      v57 = glpCompilerGetInfoLog(a1);
      *&v58 = glpASTNodeGetLocation(a2, &v87).n128_u64[0];
      glpLogMessage(v57, 0, &v87, "Field access or swizzle of non-struct non-vector", v58);
    }

    else
    {
      v31 = glpPrimitiveTypeGetPrimitiveType(SaType);
      if (glpPrimitiveTypeGetCategory(v31) == 2)
      {
        v85.n128_u32[0] = 0;
        glpASTNodeGetLocation(a2, &v87);
        Length = glpPrimitiveVectorGetLength(v31);
        if (glpValidateSwizzle(a1, Field, v8, &v87, Length, &v85))
        {
          v87.n128_u64[0] = 0;
          v33 = glpEnsureDeref(a1, Structure, &v87);
          v34 = glpDerefNodeGetOffset(v33);
          if (!glpOffsetNodeGetSwizzle(v34))
          {
            v35 = glpDerefNodeGetOffset(v33);
            glpOffsetNodeSetPreSwizzlePrimitiveType(v35, v31);
          }

          v36 = glpDerefNodeGetOffset(v33);
          v37 = glpDerefNodeGetOffset(v33);
          Swizzle = glpOffsetNodeGetSwizzle(v37);
          if (Swizzle)
          {
            if (v85.n128_u32[0])
            {
              v39 = v85.n128_u8[0] & 7;
              if ((v85.n128_u8[0] & 7) != 0)
              {
                v40 = 0;
                v41 = 2 * v39;
                do
                {
                  v39 = (((Swizzle >> (2 * ((v85.n128_u32[0] >> (v40 + 3)) & 3) + 3)) & 3) << (v40 + 3)) | v39 & ~(24 << v40);
                  v40 += 2;
                }

                while (v41 != v40);
              }
            }

            else
            {
              v39 = Swizzle;
            }
          }

          else
          {
            v39 = v85.n128_u32[0];
          }

          glpOffsetNodeSetSwizzle(v36, v39);
          v82 = glpPrimitiveVectorGetElementType(v31);
          VectorType = glpGetVectorType(v82, v8);
          v84 = glpGetPrimitiveType(VectorType);
          glpASTNodeSetSaType(v33, v84);
          glpCompilerGetAllocator();
          v72 = v87.n128_u64[0];
          v73 = v33;
          return glpMangleSideEffectsWithNewResult(v71, v72, v73);
        }

        glpASTNodeSetSaType(a2, 0);
      }

      else
      {
        v59 = glpCompilerGetInfoLog(a1);
        glpASTNodeGetLocation(a2, &v87);
        glpPrimitiveTypeToString(v31);
        glpLogMessage(v59, 0, &v87, "Swizzle of non-vector primitive %s", v60);
      }
    }

    return -1;
  }

  Ib = glpIBPartialDerefNodeGetIb(Structure);
  if (glpTypeGetKind(SaType) == 1)
  {
    v10 = glpStructTypeGetFieldIndex(SaType, Field, v8);
    if (v10 != -1)
    {
      v11 = v10;
      Representation = glpInterfaceBlockObjectGetRepresentation(Ib);
      if (Representation > 1)
      {
        if (Representation == 2)
        {
          glpASTNodeGetLocation(Structure, &v87);
          LValueForVariableObject = glpMakeLValueForVariableObject(a1, &v87, **(Ib + 72));
          glpCompilerGetAllocator();
          v26 = v25;
          glpASTNodeGetLocation(Structure, &v87);
          glpMakeArrayAccessNode(v26, &v87);
          v28 = v27;
          glpArrayAccessNodeSetArray(v27, LValueForVariableObject);
          BankIndex = glpIBPartialDerefNodeGetBankIndex(Structure);
          glpArrayAccessNodeSetElement(v28, BankIndex);
          result = glpSANode(a1, v28);
          Structure = result;
          if (result == -1)
          {
            return result;
          }
        }

        else if (Representation == 3)
        {
          glpASTNodeGetLocation(Structure, &v87);
          v18 = glpMakeLValueForVariableObject(a1, &v87, *(*(Ib + 72) + 8 * v11));
          glpCompilerGetAllocator();
          v20 = v19;
          glpASTNodeGetLocation(Structure, &v87);
          glpMakeArrayAccessNode(v20, &v87);
          v22 = v21;
          glpArrayAccessNodeSetArray(v21, v18);
          v23 = glpIBPartialDerefNodeGetBankIndex(Structure);
          glpArrayAccessNodeSetElement(v22, v23);
          return glpSANode(a1, v22);
        }
      }

      else if (Representation)
      {
        if (Representation == 1)
        {
          glpASTNodeGetLocation(Structure, &v87);
          return glpMakeLValueForVariableObject(a1, &v87, *(*(Ib + 72) + 8 * v11));
        }
      }

      else
      {
        glpASTNodeGetLocation(Structure, &v87);
        Structure = glpMakeLValueForVariableObject(a1, &v87, **(Ib + 72));
      }

      goto LABEL_15;
    }

    v16 = glpCompilerGetInfoLog(a1);
    *&v17 = glpASTNodeGetLocation(a2, &v87).n128_u64[0];
    glpLogMessage(v16, 0, &v87, "Interface block '%.*s' has no variable named '%.*s'", v17);
  }

  else
  {
    v14 = glpCompilerGetInfoLog(a1);
    *&v15 = glpASTNodeGetLocation(a2, &v87).n128_u64[0];
    glpLogMessage(v14, 0, &v87, "You must access an element of the interface block '%.*s'", v15);
  }

  return -1;
}

uint64_t glpValidateSwizzle(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4, unsigned int a5, int *a6)
{
  if (a3 < 5)
  {
    *a6 = a3;
    if (!a3)
    {
      return 1;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a3;
    while (1)
    {
      v13 = *(a2 + v10);
      v14 = v13 - 97;
      if ((v13 - 97) >= 0x1A || ((0x3CF8043u >> v14) & 1) == 0)
      {
        InfoLog = glpCompilerGetInfoLog(a1);
        v20 = *a4;
        v21 = *(a4 + 2);
        glpLogMessage(InfoLog, 0, &v20, "Invalid character '%c' in swizzle");
        return 0;
      }

      v15 = dword_23A29CCF0[(v13 - 97)];
      if (v10)
      {
        if ((v13 - 97) >= 0x1Au || ((0x3CF8043u >> v14) & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v11 != dword_23A29CD58[(v13 - 97)])
        {
          v19 = glpCompilerGetInfoLog(a1);
          v20 = *a4;
          v21 = *(a4 + 2);
          glpLogMessage(v19, 0, &v20, "Inconsistent component characters in swizzle '%.*s'");
          return 0;
        }
      }

      else
      {
        if ((v13 - 97) >= 0x1Au || ((0x3CF8043u >> v14) & 1) == 0)
        {
LABEL_22:
          abort();
        }

        v11 = dword_23A29CD58[(v13 - 97)];
      }

      if (v15 >= a5)
      {
        break;
      }

      v12 = v12 & ~(24 << v9) | (v15 << (v9 + 3));
      *a6 = v12;
      ++v10;
      v9 += 2;
      if ((a3 & 7) == v10)
      {
        return 1;
      }
    }

    v18 = glpCompilerGetInfoLog(a1);
    v20 = *a4;
    v21 = *(a4 + 2);
    glpLogMessage(v18, 0, &v20, "Swizzle component '%c' indexes beyond end of input vector (length %u)");
  }

  else
  {
    v8 = glpCompilerGetInfoLog(a1);
    v20 = *a4;
    v21 = *(a4 + 2);
    glpLogMessage(v8, 0, &v20, "Swizzle '%.*s' has more than 4 result components");
  }

  return 0;
}

uint64_t glpEnsureDeref(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = 0;
  if (glpIsDerefNode(a2))
  {
    v15 = a2;
  }

  else
  {
    glpHandleSideEffectsForExpr(a1, a2, &v15, a3);
    if (glpIsConstantNode(v15))
    {
      glpCompilerGetAllocator();
      v7 = v6;
      glpASTNodeGetLocation(v15, &v14);
      glpMakeRValueNode(v7, &v14);
      v9 = v8;
      glpRValueNodeSetBase(v8, v15);
      SaType = glpASTNodeGetSaType(v15);
      glpASTNodeSetSaType(v9, SaType);
      SaFlags = glpASTNodeGetSaFlags(v15);
      glpASTNodeSetSaFlags(v9, SaFlags);
      v15 = v9;
    }
  }

  glpCompilerGetAllocator();
  glpAddOffsetIfNeeded(v12, v15);
  return v15;
}

uint64_t glpHandleGetterSetter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, int a7, uint64_t a8)
{
  VariableName = glpLValueNodeGetVariableName(a2);
  v17 = v16;
  glpCompilerGetAllocator();
  StringBuffer = glpMakeStringBuffer(v18);
  glpStringBufferAppendFormat(StringBuffer, "$%.*s_%.*s", v17, VariableName, a7, a6);
  if (a8)
  {
    glpStringBufferAppendFormat(StringBuffer, "_%.*s", *(a8 + 8), *a8);
  }

  glpCompilerGetAllocator();
  v21 = v20;
  glpASTNodeGetLocation(a2, v39);
  String = glpStringBufferGetString(StringBuffer);
  glpMakeFunctionCallNode(v21, v39, String, v23);
  v25 = v24;
  glpCompilerGetAllocator();
  glpCallNodeAddArg(v26, v25, a4);
  if (a5)
  {
    glpCompilerGetAllocator();
    glpCallNodeAddArg(v27, v25, a5);
  }

  glpCompilerGetAllocator();
  v29 = v28;
  glpASTNodeGetLocation(a2, v39);
  glpMakeCommaExprNode(v29, v39, 0);
  v31 = v30;
  glpASTNodeSetSaType(a2, a3);
  glpCompilerGetAllocator();
  glpCommaExprNodeAddExpr(v32, v31, a2);
  v33 = glpSANode(a1, v25);
  glpASTNodeSetSaType(v33, a3);
  SaFlags = glpASTNodeGetSaFlags(v33);
  glpASTNodeSetSaFlags(v33, SaFlags & 0x1F | 0x100);
  glpCompilerGetAllocator();
  glpCommaExprNodeAddExpr(v35, v31, v33);
  glpASTNodeSetSaType(v31, a3);
  v36 = glpASTNodeGetSaFlags(v33);
  glpASTNodeSetSaFlags(v31, v36 & 0x1F | 0x100);
  return v31;
}

uint64_t glpPrecisionQualifierFromSaFlags(char a1)
{
  v1 = a1 & 0x1F;
  if (v1 == 8)
  {
    v2 = 23;
  }

  else
  {
    v2 = 19;
  }

  if (v1 == 16)
  {
    v3 = 24;
  }

  else
  {
    v3 = v2;
  }

  if (v1 == 4)
  {
    return 22;
  }

  else
  {
    return v3;
  }
}

uint64_t glpGetMostBasicPrimitiveType(unsigned int *a1)
{
  Kind = glpTypeGetKind(a1);
  if (Kind)
  {
    if (Kind == 2)
    {
      ElementType = glpArrayTypeGetElementType(a1);
      glpTypeGetKind(ElementType);
    }

    return 0;
  }

  PrimitiveType = glpPrimitiveTypeGetPrimitiveType(a1);
  v4 = PrimitiveType;
  if (!PrimitiveType || (glpPrimitiveTypeGetCategory(PrimitiveType) & 0xFFFFFFFE) != 2)
  {
    return v4;
  }

  return glpPrimitiveTypeGetScalarType(v4);
}

uint64_t glpGetDefaultPrecisionForType(uint64_t a1, unsigned int *a2)
{
  MostBasicPrimitiveType = glpGetMostBasicPrimitiveType(a2);
  if (MostBasicPrimitiveType == 36)
  {
    v4 = 5;
  }

  else
  {
    v4 = MostBasicPrimitiveType;
  }

  if (!v4)
  {
    return 0;
  }

  NameTable = glpCompilerGetNameTable(a1);

  return glpNameTableGetPrecision(NameTable, v4);
}

void glpSAValidateConstPrecisionConversion(uint64_t a1, uint64_t a2, char a3)
{
  Type = glpConstantNodeGetType(a2);
  Value = glpConstantNodeGetValue(a2);
  if (!glpTypeGetKind(Type))
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(Type);
    Category = glpPrimitiveTypeGetCategory(PrimitiveType);
    Columns = Category;
    if (Category == 1)
    {
      Rows = 1;
    }

    else
    {
      if (Category == 3)
      {
        Rows = glpPrimitiveMatrixGetRows(PrimitiveType);
        Columns = glpPrimitiveMatrixGetColumns(PrimitiveType);
      }

      else
      {
        if (Category != 2)
        {
          return;
        }

        Rows = glpPrimitiveVectorGetLength(PrimitiveType);
        Columns = 1;
      }

      LODWORD(PrimitiveType) = glpPrimitiveTypeGetScalarType(PrimitiveType);
    }

    NameTable = glpCompilerGetNameTable(a1);
    GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    glpPopulatePrecisionWidths(GLSLVersion, &v38);
    if (PrimitiveType == 36)
    {
      if ((a3 & 0x1F) == 4 && Columns)
      {
        v27 = 0;
        v28 = ~(-1 << SBYTE4(v39));
        v29 = Columns;
        do
        {
          if (Rows)
          {
            v30 = Rows;
            v31 = Value;
            do
            {
              v32 = *v31++;
              if (v32 > v28)
              {
                InfoLog = glpCompilerGetInfoLog(a1);
                glpASTNodeGetLocation(a2, v37);
                glpLogMessage(InfoLog, 1, v37, "Overflow in implicit constant conversion, minimum range for lowp unsigned int is [0,%d]", v28);
              }

              --v30;
            }

            while (v30);
          }

          ++v27;
          Value += 16;
        }

        while (v27 != v29);
      }
    }

    else
    {
      v36 = Value;
      if (PrimitiveType == 5)
      {
        if ((a3 & 0x1F) == 4 && Columns)
        {
          v19 = 0;
          v20 = 1 << (BYTE4(v39) - 1);
          v34 = Columns;
          do
          {
            if (Rows)
            {
              v21 = Rows;
              v22 = v36;
              do
              {
                v24 = *v22++;
                v23 = v24;
                if (v24 >= v20 || v23 < -v20)
                {
                  v26 = glpCompilerGetInfoLog(a1);
                  glpASTNodeGetLocation(a2, v37);
                  glpLogMessage(v26, 1, v37, "Overflow in implicit constant conversion, minimum range for lowp int is [%d,%d]", -v20, v20 - 1);
                }

                --v21;
              }

              while (v21);
            }

            ++v19;
            v36 += 4;
          }

          while (v19 != v34);
        }
      }

      else if (PrimitiveType == 1 && (a3 & 0x1F) == 4 && Columns)
      {
        v13 = 0;
        v14 = Columns;
        do
        {
          if (Rows)
          {
            v15 = Rows;
            v16 = v36;
            do
            {
              if (fabsf(*v16) >= 2.0)
              {
                v17 = glpCompilerGetInfoLog(a1);
                *&v18 = glpASTNodeGetLocation(a2, v37).n128_u64[0];
                glpLogMessage(v17, 1, v37, "Overflow in implicit constant conversion, minimum range for lowp float is (-2,2)", v18);
              }

              ++v16;
              --v15;
            }

            while (v15);
          }

          ++v13;
          v36 += 4;
        }

        while (v13 != v14);
      }
    }
  }
}

uint64_t glpCheckArrayIndex(uint64_t a1, __int128 *a2, uint64_t a3, int a4, int a5, unsigned int a6, unsigned int *a7)
{
  v11 = a3;
  SaType = glpASTNodeGetSaType(a3);
  if (glpTypeGetKind(SaType) || glpPrimitiveTypeGetPrimitiveType(SaType) != 5 && glpPrimitiveTypeGetPrimitiveType(SaType) != 36)
  {
    glpCompilerGetAllocator();
    glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v15);
    InfoLog = glpCompilerGetInfoLog(a1);
    v39 = *a2;
    v40 = *(a2 + 2);
    glpLogMessage(InfoLog, 0, &v39, "Index expression has type '%.*s' but should have integral type");
    return -1;
  }

  if (glpCompilerDoesTypeRequirePrecision(a1, SaType) && (glpASTNodeGetSaFlags(v11) & 0x1F) == 0)
  {
    DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, SaType);
    if (!DefaultPrecisionForType)
    {
      glpCompilerGetAllocator();
      glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v36);
      v37 = glpCompilerGetInfoLog(a1);
      v39 = *a2;
      v40 = *(a2 + 2);
      glpLogMessage(v37, 0, &v39, "Array index of type '%.*s' - precision can not be inferred and no default precision available");
      return -1;
    }

    glpPushdownPrecision(a1, v11, DefaultPrecisionForType);
  }

  if (glpPrimitiveTypeGetPrimitiveType(SaType) == 36)
  {
    PrimitiveType = glpGetPrimitiveType(5u);
    SaFlags = glpASTNodeGetSaFlags(v11);
    v21 = glpConvert(a1, v11, PrimitiveType, SaFlags & 0x1F);
    v22 = glpSANode(a1, v21);
    if ((v22 + 1) >= 2)
    {
      v11 = v22;
      goto LABEL_14;
    }

    return -1;
  }

LABEL_14:
  IsConstantNode = glpIsConstantNode(v11);
  if (IsConstantNode)
  {
    Value = glpConstantNodeGetValue(v11);
    Type = glpConstantNodeGetType(v11);
    if (!glpValueIsUsableAsSize(Type, Value))
    {
      v35 = glpCompilerGetInfoLog(a1);
      v39 = *a2;
      v40 = *(a2 + 2);
      glpLogMessage(v35, 0, &v39, "Index expression is negative");
      return -1;
    }

    *a7 = glpValueGetAsSize(Type, Value);
  }

  NameTable = glpCompilerGetNameTable(a1);
  GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
  v28 = glpASTNodeGetSaFlags(v11);
  if (GLSLVersion == 1)
  {
    if ((v28 & 0x20) != 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    if (!a4)
    {
      if (!a5 && a6 == -1)
      {
        v38 = glpCompilerGetInfoLog(a1);
        v39 = *a2;
        v40 = *(a2 + 2);
        glpLogMessage(v38, 0, &v39, "Indirect index into implicitly-sized array");
        return -1;
      }

      return v11;
    }

LABEL_25:
    v34 = glpCompilerGetInfoLog(a1);
    v39 = *a2;
    v40 = *(a2 + 2);
    glpLogMessage(v34, 0, &v39, "Index expression must be constant");
    return -1;
  }

  if ((v28 & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  glpCompilerGetAllocator();
  v30 = v29;
  ValueHash = glpCompilerGetValueHash(a1);
  v32 = glpConstantFold(v30, ValueHash, v11);
  if (!IsConstantNode)
  {
    goto LABEL_25;
  }

  v11 = v32;
  if (a6 != -1 && *a7 >= a6)
  {
    v33 = glpCompilerGetInfoLog(a1);
    v39 = *a2;
    v40 = *(a2 + 2);
    glpLogMessage(v33, 0, &v39, "Index %u beyond bounds (size %u)");
    return -1;
  }

  return v11;
}

uint64_t glpConvert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  glpCompilerGetAllocator();
  v9 = v8;
  glpASTNodeGetLocation(a2, v13);
  glpMakeTypeConversionNode(v9, v13, a3, a4);
  v11 = v10;
  glpUnaryOperatorNodeSetExpr(v10, a2);
  return glpSANode(a1, v11);
}

uint64_t glpIndirectVectorElement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  Array = glpArrayAccessNodeGetArray(a2);
  v7 = glpEnsureDeref(a1, Array, &v20);
  Element = glpArrayAccessNodeGetElement(a2);
  v19 = 0;
  glpASTNodeGetLocation(a2, &v18);
  Length = glpPrimitiveVectorGetLength(a3);
  result = glpCheckArrayIndex(a1, &v18, Element, 0, 0, Length, &v19);
  if (result != -1)
  {
    v11 = result;
    Offset = glpDerefNodeGetOffset(v7);
    glpOffsetNodeSetVectorElementExpr(Offset, v11);
    v13 = glpDerefNodeGetOffset(v7);
    if (!glpOffsetNodeGetPreSwizzlePrimitiveType(v13))
    {
      v14 = glpDerefNodeGetOffset(v7);
      glpOffsetNodeSetPreSwizzlePrimitiveType(v14, a3);
    }

    ElementType = glpPrimitiveVectorGetElementType(a3);
    PrimitiveType = glpGetPrimitiveType(ElementType);
    glpASTNodeSetSaType(v7, PrimitiveType);
    glpCompilerGetAllocator();
    return glpMangleSideEffectsWithNewResult(v17, v20, v7);
  }

  return result;
}

uint64_t glpIndirectMatrixColumn(uint64_t a1, uint64_t a2, int a3)
{
  ColumnType = glpPrimitiveMatrixGetColumnType(a3);
  PrimitiveType = glpGetPrimitiveType(ColumnType);

  return glpIndirectArrayElement(a1, a2, PrimitiveType);
}

uint64_t glpIndirectArrayElement(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  glpASTNodeGetLocation(a2, &v52);
  Array = glpArrayAccessNodeGetArray(a2);
  Element = glpArrayAccessNodeGetElement(a2);
  v57 = 0;
  v8 = glpEnsureDeref(a1, Array, &v57);
  glpASTNodeGetLocation(v8, &v55);
  glpEnsureOffsetsExist(a1, &v55, v8);
  SaType = glpASTNodeGetSaType(v8);
  Kind = glpTypeGetKind(SaType);
  if (Kind)
  {
    if (Kind == 3)
    {
      ElementCount = glpBankTypeGetElementCount(SaType);
    }

    else
    {
      if (Kind != 2)
      {
        abort();
      }

      ElementCount = glpArrayTypeGetElementCount(SaType);
    }
  }

  else
  {
    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
    ElementCount = glpPrimitiveMatrixGetColumns(PrimitiveType);
  }

  v13 = ElementCount;
  v15 = glpTypeGetKind(SaType) == 3 && glpIsLValueNode(v8) && (v14 = *(glpLValueNodeGetVariableExtra(v8) + 8)) != 0 && glpLayoutObjectFind(v14, 84) != 0;
  v54 = 0;
  v55 = v52;
  v56 = v53;
  result = glpCheckArrayIndex(a1, &v55, Element, 0, v15, v13, &v54);
  if (result != -1)
  {
    v17 = result;
    NameTable = glpCompilerGetNameTable(a1);
    if (glpNameTableGetGLSLVersion(NameTable) == 6 && (glpASTNodeGetSaFlags(v17) & 0x60) == 0 && glpTypeGetSamplerCount(a3))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v55 = v52;
      v56 = v53;
      glpLogMessage(InfoLog, 0, &v55, "Dynamic indexing of sampler types is not allowed");
      return -1;
    }

    if (glpIsLValueNode(v8) && glpIsConstantNode(v17) && glpTypeGetKind(SaType) == 2 && !glpTypeIsSized(SaType))
    {
      VariableExtra = glpLValueNodeGetVariableExtra(v8);
      IndexLevel = glpLValueNodeGetIndexLevel(v8);
      v21 = v54;
      v22 = glpCompilerGetInfoLog(a1);
      v55 = v52;
      v56 = v53;
      if (!glpVariableObjectExtendImplicitArraySize(VariableExtra, IndexLevel, v21 + 1, v22, &v55))
      {
        return -1;
      }
    }

    if (glpIsLValueNode(v8) && *(glpLValueNodeGetVariableExtra(v8) + 8) && ((v23 = glpLValueNodeGetVariableExtra(v8), glpLayoutObjectFind(*(v23 + 8), 28)) || (v24 = glpLValueNodeGetVariableExtra(v8), glpLayoutObjectFind(*(v24 + 8), 29))))
    {
      ImmediateSAContext = glpCompilerGetImmediateSAContext(a1);
      if (!glpIsAssignNode(ImmediateSAContext) || (Lhs = glpBinaryOperatorNodeGetLhs(ImmediateSAContext), !glpIsArrayAccessNode(Lhs)) || (v27 = glpBinaryOperatorNodeGetLhs(ImmediateSAContext), v28 = v17, glpArrayAccessNodeGetArray(v27) != v8))
      {
        v28 = v17;
        if (glpTypeGetKind(SaType) == 2)
        {
          v28 = v17;
          if (!glpTypeGetKind(a3))
          {
            glpCompilerGetAllocator();
            v30 = v29;
            v31 = v57;
            v32 = glpHandleGetterSetter(a1, v8, a3, v17, 0, "getter", 6, 0);
            v33 = v30;
            v34 = v31;
            return glpMangleSideEffectsWithNewResult(v33, v34, v32);
          }
        }
      }
    }

    else
    {
      if (glpTypeGetKind(SaType) == 3)
      {
        Offset = glpDerefNodeGetOffset(v8);
        glpOffsetNodeSetBankIndex(Offset, v17);
        OffsetExpr = glpOffsetNodeGetOffsetExpr(Offset);
      }

      else
      {
        if (glpIsLValueNode(v8))
        {
          v37 = glpLValueNodeGetVariableExtra(v8);
          ABI = glpVariableObjectGetABI(v37);
        }

        else
        {
          ABI = 0;
        }

        SaFlags = glpASTNodeGetSaFlags(v8);
        v41 = glpABIGetArrayStrideForElementType(ABI, a3, SaFlags);
        if ((SaFlags & 0x400) != 0 && !glpTypeGetKind(SaType))
        {
          v42 = glpPrimitiveTypeGetPrimitiveType(SaType);
          v43 = glpDerefNodeGetOffset(v8);
          v44 = glpABIGetMatrixStride(ABI, v42, SaFlags);
          glpOffsetNodeSetCompStride(v43, v44);
          v41 = 4;
        }

        glpASTNodeGetLocation(v8, &v55);
        v45 = glpDerefNodeGetOffset(v8);
        v46 = glpOffsetNodeGetOffsetExpr(v45);
        IntConstant = glpCompilerGetIntConstant(a1, v41);
        OffsetExpr = glpMakeArrayIndexOffsetFragment(a1, &v55, v46, v17, IntConstant);
      }

      v28 = OffsetExpr;
    }

    v48 = glpDerefNodeGetOffset(v8);
    glpOffsetNodeSetOffsetExpr(v48, v28);
    if (glpIsLValueNode(v8))
    {
      v49 = glpLValueNodeGetIndexLevel(v8);
      glpLValueNodeSetIndexLevel(v8, v49 + 1);
    }

    glpASTNodeSetSaType(v8, a3);
    v50 = glpASTNodeGetSaFlags(v8);
    v51 = glpASTNodeGetSaFlags(v17);
    glpASTNodeSetSaFlags(v8, (v51 | 0x51F) & v50);
    glpCompilerGetAllocator();
    v34 = v57;
    v32 = v8;
    return glpMangleSideEffectsWithNewResult(v33, v34, v32);
  }

  return result;
}

uint64_t glpAnalyzeCallToOverload(uint64_t a1, const char **a2, uint64_t a3)
{
  v121 = *MEMORY[0x277D85DE8];
  glpCompilerGetAllocator();
  v118 = (*(v6 + 8))(*v6, 16, "Vector Storage (GLPType *)");
  v115 = a1;
  ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
  if (!a2)
  {
    v20 = glpCallNodeGetArgCount(a3);
    LODWORD(v21) = v20;
LABEL_86:
    v62 = v21;
    MEMORY[0x28223BE20](v20);
    v64 = (&v112 - v63);
    bzero(&v112 - v63, v65);
    if (v21)
    {
      v66 = 0;
      do
      {
        v67 = glpCallNodeGetArg(a3, v66);
        v64[v66++] = glpASTNodeGetSaType(v67);
      }

      while (v21 != v66);
    }

    v68 = glpFunctionCallNodeGetName(a3);
    v70 = v69;
    if (!glpOperatorAsFunctionError(v115, v68, v69, v64, a3))
    {
      v116 = v70;
      v117 = v68;
      v118 = &v112;
      glpCompilerGetAllocator();
      StringBuffer = glpMakeStringBuffer(v71);
      if (v21)
      {
        v73 = 1;
        v21 = v21;
        do
        {
          v74 = *v64;
          glpCompilerGetAllocator();
          v76 = glpTypeHumanReadableDescription(v74, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v75);
          glpStringBufferAppendString(StringBuffer, v76, v77);
          if (v73 < v62)
          {
            glpStringBufferAppendCString(StringBuffer, ", ");
          }

          ++v64;
          ++v73;
          --v21;
        }

        while (v21);
      }

      InfoLog = glpCompilerGetInfoLog(v115);
      glpASTNodeGetLocation(a3, &v120);
      CString = glpStringBufferGetCString(StringBuffer);
      glpLogMessage(InfoLog, 0, &v120, "No matching function for call to %.*s(%s)", v116, v117, CString);
    }

    return 0;
  }

  LODWORD(v8) = 0;
  v9 = &PROMOTIONS + 2 * ImplicitConversionPolicy;
  v10 = *v9;
  v11 = *(v9 + 2);
  v12 = 2;
  do
  {
    v13 = a2[1];
    if (_canCall(*a2, a3, v10, v11))
    {
      v14 = *a2;
      if (v8 + 1 <= v12)
      {
        v8 = v8;
        v19 = v118;
      }

      else
      {
        v117 = *a2;
        if (v12 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v12;
        }

        v16 = 2 * v15;
        if (v16 <= v8 + 1)
        {
          v12 = v8 + 1;
        }

        else
        {
          v12 = v16;
        }

        glpCompilerGetAllocator();
        v18 = v17;
        v19 = (*(v17 + 8))(*v17, 8 * v12, "Vector Storage (GLPType *, growth)");
        v8 = v8;
        memcpy(v19, v118, 8 * v8);
        (*(v18 + 24))(*v18, v118);
        v14 = v117;
      }

      v118 = v19;
      v19[v8] = v14;
      LODWORD(v8) = v8 + 1;
    }

    a2 = v13;
  }

  while (v13);
  v20 = glpCallNodeGetArgCount(a3);
  LODWORD(v21) = v20;
  if (!v8)
  {
    goto LABEL_86;
  }

  v112 = v20;
  v22 = 0;
  v8 = v8;
  v23 = v118;
  v113 = v8;
LABEL_17:
  v24 = 0;
  v25 = v23[v22];
  v114 = v22;
  do
  {
    if (v22 == v24)
    {
      goto LABEL_79;
    }

    v26 = v23[v24];
    v20 = glpCallNodeGetArgCount(a3);
    if (!v20)
    {
      v51 = 0;
      v50 = 1;
      goto LABEL_76;
    }

    LODWORD(v117) = 0;
    LODWORD(v116) = 0;
    v27 = 0;
    do
    {
      v28 = glpCallNodeGetArg(a3, v27);
      SaType = glpASTNodeGetSaType(v28);
      if (glpTypeGetKind(SaType))
      {
        goto LABEL_73;
      }

      PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
      ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
      ElementType = glpAggregateTypeGetElementType(v25, v27);
      v33 = glpPrimitiveTypeGetPrimitiveType(ElementType);
      v34 = glpPrimitiveTypeGetScalarType(v33);
      v35 = glpAggregateTypeGetElementType(v26, v27);
      v36 = glpPrimitiveTypeGetPrimitiveType(v35);
      v37 = glpPrimitiveTypeGetScalarType(v36);
      ElementFlags = glpAggregateTypeGetElementFlags(v25, v27);
      if ((ElementFlags & 0x4000000) != 0)
      {
        v39 = ScalarType;
      }

      else
      {
        v39 = v34;
      }

      if ((ElementFlags & 0x4000000) != 0)
      {
        v40 = v34;
      }

      else
      {
        v40 = ScalarType;
      }

      v41 = glpAggregateTypeGetElementFlags(v26, v27);
      if ((v41 & 0x4000000) != 0)
      {
        v42 = ScalarType;
      }

      else
      {
        v42 = v37;
      }

      if ((v41 & 0x4000000) != 0)
      {
        v43 = v37;
      }

      else
      {
        v43 = ScalarType;
      }

      LOBYTE(v44) = ScalarType == v37;
      if (ScalarType == v34 || ScalarType == v37)
      {
        if (ScalarType != v34)
        {
          goto LABEL_72;
        }

LABEL_56:
        if (!v44)
        {
          goto LABEL_64;
        }

        goto LABEL_73;
      }

      v46 = v40 == 1 && v39 == 62;
      v44 = v43 == 1 && v42 == 62;
      if (v46 || v44)
      {
        if (!v46)
        {
          goto LABEL_72;
        }

        goto LABEL_56;
      }

      v48 = (v40 == 36 || v40 == 5) && v39 == 1;
      if (v43 == 36 || v43 == 5)
      {
        if (v42 != 62)
        {
          v48 = 0;
        }

        if (v48)
        {
LABEL_64:
          LODWORD(v116) = 1;
          goto LABEL_73;
        }

        v49 = v42 == 1;
      }

      else
      {
        v49 = 0;
      }

      if (v40 == 5 || v40 == 36)
      {
        if (v39 != 62)
        {
          v49 = 0;
        }

        if (v49)
        {
LABEL_72:
          LODWORD(v117) = 1;
        }
      }

LABEL_73:
      ++v27;
      v20 = glpCallNodeGetArgCount(a3);
    }

    while (v27 < v20);
    v50 = v117 == 0;
    v51 = v116 != 0;
    v23 = v118;
    v8 = v113;
    v22 = v114;
LABEL_76:
    if (!v50 && !v51 || !v51 || !v50)
    {
      if (++v22 == v8)
      {
        goto LABEL_97;
      }

      goto LABEL_17;
    }

LABEL_79:
    ++v24;
  }

  while (v24 != v8);
  if (v25)
  {
    _makeConversions(v115, v25, a3);
    ReturnType = glpFunctionTypeGetReturnType(v25);
    glpASTNodeSetSaType(a3, ReturnType);
    v53 = glpFunctionCallNodeGetName(a3);
    v55 = v54;
    glpCompilerGetAllocator();
    v57 = glpAggregateTypeMangleName(v25, v53, v55, v56);
    v59 = v58;
    NameTable = glpCompilerGetNameTable(v115);
    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 0x40000000;
    v119[2] = __glpAnalyzeCallToOverload_block_invoke;
    v119[3] = &__block_descriptor_tmp_7;
    v119[4] = a3;
    glpNameTableGet(NameTable, v57, v59, 0, v119);
    return 1;
  }

LABEL_97:
  v80 = v112;
  v81 = v112;
  MEMORY[0x28223BE20](v20);
  v83 = (&v112 - v82);
  bzero(&v112 - v82, v84);
  if (v80)
  {
    for (i = 0; i != v80; v83[i++] = glpASTNodeGetSaType(v86))
    {
      v86 = glpCallNodeGetArg(a3, i);
    }
  }

  v87 = glpFunctionCallNodeGetName(a3);
  v89 = v88;
  if (!glpOperatorAsFunctionError(v115, v87, v88, v83, a3))
  {
    v116 = &v112;
    v117 = v87;
    v90 = v8;
    glpCompilerGetAllocator();
    v92 = glpMakeStringBuffer(v91);
    if (v112)
    {
      v93 = 1;
      v94 = v81;
      do
      {
        v95 = *v83;
        glpCompilerGetAllocator();
        v97 = glpTypeHumanReadableDescription(v95, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v96);
        glpStringBufferAppendString(v92, v97, v98);
        if (v93 < v81)
        {
          glpStringBufferAppendCString(v92, ", ");
        }

        ++v83;
        ++v93;
        --v94;
      }

      while (v94);
    }

    glpCompilerGetAllocator();
    v100 = glpMakeStringBuffer(v99);
    v101 = 1;
    v102 = v90;
    v103 = v118;
    do
    {
      glpStringBufferAppendCString(v100, "    ");
      v104 = v103;
      v105 = *v103;
      glpCompilerGetAllocator();
      v107 = glpTypeHumanReadableDescription(v105, v117, v89, v106);
      glpStringBufferAppendString(v100, v107, v108);
      if (v101 < v90)
      {
        glpStringBufferAppendCString(v100, "\n");
      }

      v103 = v104 + 1;
      ++v101;
      --v102;
    }

    while (v102);
    v109 = glpCompilerGetInfoLog(v115);
    glpASTNodeGetLocation(a3, &v120);
    v110 = glpStringBufferGetCString(v92);
    v111 = glpStringBufferGetCString(v100);
    glpLogMessage(v109, 0, &v120, "Ambiguous call to function %.*s(%s).   Candidates are:\n%s", v89, v117, v110, v111);
  }

  return 0;
}

BOOL _canCall(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = glpCallNodeGetArgCount(a2);
  if (v8 != glpAggregateTypeGetElementCount(a1))
  {
    return 0;
  }

  if (v8)
  {
    v9 = 0;
    v10 = (a3 + 4);
    do
    {
      v11 = glpCallNodeGetArg(a2, v9);
      SaType = glpASTNodeGetSaType(v11);
      ElementType = glpAggregateTypeGetElementType(a1, v9);
      ElementFlags = glpAggregateTypeGetElementFlags(a1, v9);
      if (!glpTypesEqual(SaType, ElementType))
      {
        if ((~ElementFlags & 0x6000000) == 0 || glpTypeGetKind(SaType) || glpTypeGetKind(ElementType))
        {
          return 0;
        }

        PrimitiveType = glpPrimitiveTypeGetPrimitiveType(SaType);
        v16 = glpPrimitiveTypeGetPrimitiveType(ElementType);
        result = _primitiveStructuresMatch(PrimitiveType, v16);
        if (!result)
        {
          return result;
        }

        ScalarType = glpPrimitiveTypeGetScalarType(PrimitiveType);
        v19 = glpPrimitiveTypeGetScalarType(v16);
        if ((ElementFlags & 0x4000000) != 0)
        {
          if (!a4)
          {
            return 0;
          }

          v22 = v10;
          v23 = a4;
          while (*(v22 - 1) != v19 || *v22 != ScalarType)
          {
            v22 += 2;
            if (!--v23)
            {
              return 0;
            }
          }
        }

        else
        {
          if (!a4)
          {
            return 0;
          }

          v20 = v10;
          v21 = a4;
          while (*(v20 - 1) != ScalarType || *v20 != v19)
          {
            v20 += 2;
            if (!--v21)
            {
              return 0;
            }
          }
        }
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return 1;
}

uint64_t glpOperatorAsFunctionError(uint64_t a1, const char *a2, int a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = a3;
  }

  if (strncmp("$OP_", a2, v8))
  {
    return 0;
  }

  v10 = glpCallNodeGetArgCount(a5);
  v11 = *a4;
  if (v10 == 2)
  {
    v12 = a4[1];
    glpCompilerGetAllocator();
    glpTypeHumanReadableDescription(v11, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v13);
    glpCompilerGetAllocator();
    glpTypeHumanReadableDescription(v12, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v14);
    v21 = 0;
    *__s2 = 0;
    __strncpy_chk();
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a5, v19);
    v18 = glpBinaryOperatorStringToSymbol(__s2);
    glpLogMessage(InfoLog, 0, v19, "'%s' does not operate on '%.*s' and '%.*s'", v18);
  }

  else
  {
    glpCompilerGetAllocator();
    glpTypeHumanReadableDescription(v11, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v16);
    v21 = 0;
    *__s2 = 0;
    __strncpy_chk();
    v17 = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a5, v19);
    glpUnaryOperatorStringToSymbol(__s2);
    glpLogMessage(v17, 0, v19, "'%s' does not operate on '%.*s'");
  }

  return 1;
}

uint64_t _makeConversions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = glpCallNodeGetArgCount(a3);
  if (result)
  {
    v6 = result;
    for (i = 0; i != v6; ++i)
    {
      v8 = glpCallNodeGetArg(a3, i);
      SaType = glpASTNodeGetSaType(v8);
      v10 = glpASTNodeGetSaFlags(v8) & 0x1F;
      ElementType = glpAggregateTypeGetElementType(a2, i);
      ElementFlags = glpAggregateTypeGetElementFlags(a2, i);
      v13 = ElementFlags & 0x1F;
      result = glpTypesEqual(SaType, ElementType);
      if (!result || v10 != v13)
      {
        if ((ElementFlags & 0x2000000) != 0)
        {
          v8 = glpConvert(a1, v8, ElementType, v13);
        }

        if ((ElementFlags & 0x4000000) != 0)
        {
          v8 = glpConvert(a1, v8, SaType, v10);
        }

        result = glpCallNodeSetArg(a3, i, v8);
      }
    }
  }

  return result;
}

uint64_t __glpAnalyzeCallToOverload_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  result = glpFunctionCallNodeSetExtra(*(a1 + 32), a3);
  *a5 = 1;
  return result;
}

uint64_t glpAnalyzeCallToFunction(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
  if (_canCall(*a2, a3, *(&PROMOTIONS + 2 * ImplicitConversionPolicy), *(&PROMOTIONS + 4 * ImplicitConversionPolicy + 2)))
  {
    _makeConversions(a1, *a2, a3);
    ReturnType = glpFunctionTypeGetReturnType(*a2);
    glpASTNodeSetSaType(a3, ReturnType);
    glpFunctionCallNodeSetExtra(a3, a2);
    return 1;
  }

  else
  {
    v9 = glpFunctionCallNodeGetName(a3);
    v11 = v10;
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a3, v13);
    glpLogMessage(InfoLog, 0, v13, "Cannot call '%.*s'", v11, v9);
    return 0;
  }
}

uint64_t glpAnalyzeCallToSubroutineArray(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  ImplicitConversionPolicy = glpCompilerGetImplicitConversionPolicy(a1);
  if (_canCall(*a2, a3, *(&PROMOTIONS + 2 * ImplicitConversionPolicy), *(&PROMOTIONS + 4 * ImplicitConversionPolicy + 2)))
  {
    _makeConversions(a1, *a2, a3);
    ReturnType = glpFunctionTypeGetReturnType(*a2);
    glpASTNodeSetSaType(a3, ReturnType);
    return 1;
  }

  else
  {
    v9 = glpSubroutineArrayCallNodeGetName(a3);
    v11 = v10;
    InfoLog = glpCompilerGetInfoLog(a1);
    glpASTNodeGetLocation(a3, v13);
    glpLogMessage(InfoLog, 0, v13, "Cannot call subroutine array '%.*s'", v11, v9);
    return 0;
  }
}

BOOL glpCanConvert(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = _primitiveStructuresMatch(a1, a2);
  if (result)
  {
    ScalarType = glpPrimitiveTypeGetScalarType(a1);
    v8 = glpPrimitiveTypeGetScalarType(a2);
    v9 = &PROMOTIONS + 2 * a3;
    v10 = *(v9 + 2);
    if (v10)
    {
      for (i = (*v9 + 4); *(i - 1) != ScalarType || *i != v8; i += 2)
      {
        if (!--v10)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _primitiveStructuresMatch(uint64_t a1, uint64_t a2)
{
  Category = glpPrimitiveTypeGetCategory(a1);
  if (Category != glpPrimitiveTypeGetCategory(a2))
  {
    return 0;
  }

  if (Category <= 1)
  {
    if (Category)
    {
      if (Category == 1)
      {
        return 1;
      }

LABEL_18:
      abort();
    }

    return 0;
  }

  if (Category == 4)
  {
    return a1 == a2;
  }

  if (Category == 3)
  {
    Columns = glpPrimitiveMatrixGetColumns(a1);
    if (Columns == glpPrimitiveMatrixGetColumns(a2))
    {
      Rows = glpPrimitiveMatrixGetRows(a1);
      Length = glpPrimitiveMatrixGetRows(a2);
      return Rows == Length;
    }

    return 0;
  }

  if (Category != 2)
  {
    goto LABEL_18;
  }

  Rows = glpPrimitiveVectorGetLength(a1);
  Length = glpPrimitiveVectorGetLength(a2);
  return Rows == Length;
}

uint64_t glpEvaluateArraySize(uint64_t a1, __int128 *a2, uint64_t a3, int *a4)
{
  NameTable = glpCompilerGetNameTable(a1);
  GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
  Language = glpNameTableGetLanguage(NameTable);
  if (!a3)
  {
    v23 = 1;
LABEL_20:
    if (GLSLVersion < 3 && Language == 3 && a3 == 0)
    {
      result = 3;
    }

    else
    {
      result = v23;
    }

    AsSize = -1;
    goto LABEL_30;
  }

  SaFlags = glpASTNodeGetSaFlags(a3);
  if ((GLSLVersion != 1 || (SaFlags & 0x20) == 0) && (GLSLVersion == 1 || (SaFlags & 0x40) == 0))
  {
    if (!glpIsLValueNode(a3) || (VariableExtra = glpLValueNodeGetVariableExtra(a3), !glpStringsEqual("gl_VerticesIn", 0x6B1263A0000000DuLL, *(VariableExtra + 16), *(VariableExtra + 24))))
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      v29 = *a2;
      v30 = *(a2 + 2);
      glpLogMessage(InfoLog, 0, &v29, "Array size must be a constant");
      return 0;
    }

    v23 = 3;
    goto LABEL_20;
  }

  glpCompilerGetAllocator();
  v13 = v12;
  ValueHash = glpCompilerGetValueHash(a1);
  v15 = glpConstantFold(v13, ValueHash, a3);
  result = glpIsConstantNode(v15);
  if (!result)
  {
    return result;
  }

  Value = glpConstantNodeGetValue(v15);
  Type = glpConstantNodeGetType(v15);
  if (!glpValueIsUsableAsSize(Type, Value))
  {
    v27 = glpCompilerGetInfoLog(a1);
    v29 = *a2;
    v30 = *(a2 + 2);
    glpLogMessage(v27, 0, &v29, "Array size must be an integer constant expression");
    return 0;
  }

  AsSize = glpValueGetAsSize(Type, Value);
  if (GLSLVersion < 3 && Language == 3 && v15 == 0)
  {
    result = 3;
  }

  else
  {
    result = 2;
  }

  if (AsSize)
  {
LABEL_30:
    *a4 = AsSize;
    return result;
  }

  v22 = glpCompilerGetInfoLog(a1);
  v29 = *a2;
  v30 = *(a2 + 2);
  glpLogMessage(v22, 0, &v29, "Array size must be greater than zero");
  return 0;
}

uint64_t glpEvaluateTypeNode(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, unsigned int **a7, unint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  *a7 = glpASTNodeGetSaType(a5);
  if (glpIsQualifiedTypeNode(a5))
  {
    Qualifiers = glpQualifiedTypeNodeGetQualifiers(a5);
  }

  else
  {
    Qualifiers = 0;
  }

  result = glpParseQualifiers(a1, a3, Qualifiers, a6, a8, a9, a10);
  if (!result)
  {
    return result;
  }

  if (glpTypeGetKind(*a7) == 5 && (*(a8 + 4) & 1) == 0)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    v148 = *a2;
    v149 = *(a2 + 16);
    glpLogMessage(InfoLog, 0, &v148, "Only subroutine uniforms may have subroutine types");
    return 0;
  }

  v137 = a4;
  v21 = *a7;
  for (i = *a7; glpTypeGetKind(i) == 2; v21 = i)
  {
    i = glpArrayTypeGetElementType(v21);
  }

  if ((*a8 & 0x1F) != 0)
  {
    if (glpTypeGetKind(v21))
    {
      v23 = *a7;
      glpCompilerGetAllocator();
      v25 = glpTypeHumanReadableDescription(v23, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v24);
      v27 = v26;
      v28 = glpCompilerGetInfoLog(a1);
      v29 = *a8 & 0x1F;
      if (v29 == 8)
      {
        v30 = 23;
      }

      else
      {
        v30 = 19;
      }

      if (v29 == 16)
      {
        v31 = 24;
      }

      else
      {
        v31 = v30;
      }

      if (v29 == 4)
      {
        v32 = 22;
      }

      else
      {
        v32 = v31;
      }

      v33 = glpQualifierName(v32);
      v148 = *a2;
      v149 = *(a2 + 16);
      v122 = v27;
      v123 = v25;
      v121 = v33;
      v34 = "'%s' : precision qualifier not allowed for type %.*s";
LABEL_23:
      v35 = v28;
LABEL_173:
      glpLogMessage(v35, 0, &v148, v34, v121, v122, v123, v124);
      return 0;
    }

    PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v21);
    if ((glpPrimitiveTypeGetCategory(PrimitiveType) & 0xFFFFFFFB) != 0)
    {
      LODWORD(PrimitiveType) = glpPrimitiveTypeGetScalarType(PrimitiveType);
    }

    if (PrimitiveType == 9 || !PrimitiveType)
    {
      v135 = a2;
      v37 = *a7;
      glpCompilerGetAllocator();
      v39 = glpTypeHumanReadableDescription(v37, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v38);
      v41 = v40;
      v133 = glpCompilerGetInfoLog(a1);
      v42 = *a8 & 0x1F;
      switch(v42)
      {
        case 4:
          v43 = 22;
          break;
        case 16:
          v43 = 24;
          break;
        case 8:
          v43 = 23;
          break;
        default:
          v43 = 19;
          break;
      }

      v44 = glpQualifierName(v43);
      v148 = *v135;
      v149 = *(v135 + 16);
      glpLogMessage(v133, 0, &v148, "'%s' : precision qualifier not allowed for type %.*s", v44, v41, v39);
      return 0;
    }
  }

  if (!glpCompilerDoesTrackPrecision(a1))
  {
    *a8 &= 0xFFFFFFFFFFFFFFE0;
  }

  DoesTrackPrecision = glpCompilerDoesTrackPrecision(a1);
  if (v137)
  {
    if (DoesTrackPrecision && (*a8 & 0x1F) == 0 && !glpTypeGetKind(v21))
    {
      MostBasicPrimitiveType = glpGetMostBasicPrimitiveType(v21);
      Category = glpPrimitiveTypeGetCategory(MostBasicPrimitiveType);
      if (Category)
      {
        if (Category != 4)
        {
          LODWORD(MostBasicPrimitiveType) = glpPrimitiveTypeGetScalarType(MostBasicPrimitiveType);
        }

        DefaultPrecisionForType = glpGetDefaultPrecisionForType(a1, v21);
        if (!DefaultPrecisionForType && MostBasicPrimitiveType != 9)
        {
          v80 = *a7;
          glpCompilerGetAllocator();
          glpTypeHumanReadableDescription(v80, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v81);
          v82 = glpCompilerGetInfoLog(a1);
          v148 = *a2;
          v149 = *(a2 + 16);
          glpLogMessage(v82, 0, &v148, "'%.*s' : declaration must include a precision qualifier for type");
          return 0;
        }

        if (MostBasicPrimitiveType != 9)
        {
          *a8 |= DefaultPrecisionForType;
        }
      }
    }
  }

  if ((glpASTNodeGetSaFlags(a5) & 0x8000000) != 0)
  {
    if (!*a9)
    {
      glpCompilerGetAllocator();
      *a9 = glpMakeLayoutObject(v46);
    }

    glpCompilerGetAllocator();
    v47 = *a9;
    *&v148 = "-1";
    *(&v148 + 1) = 0xEDA00000002;
    v149 = 0xFFFFFFFFLL;
    glpLayoutObjectAppend(v48, 0, &v148, 0, 0, v47, 84);
  }

  if ((*(a8 + 3) & 0x60) == 0)
  {
    Kind = glpTypeGetKind(*a7);
    ElementType = *a7;
    if (Kind == 2)
    {
      ElementType = glpArrayTypeGetElementType(ElementType);
    }

    if (glpTypeGetKind(ElementType) == 2)
    {
      v55 = glpCompilerGetInfoLog(a1);
      v148 = *a2;
      v149 = *(a2 + 16);
      glpLogMessage(v55, 0, &v148, "Multi-dimensional array types not supported");
      return 0;
    }

    if ((~*a8 & 0x300000000) == 0 && glpTypeGetKind(*a7) != 5)
    {
      if (glpTypeGetKind(*a7) != 2 || (v73 = glpArrayTypeGetElementType(*a7), glpTypeGetKind(v73) != 5))
      {
        v74 = *a7;
        glpCompilerGetAllocator();
        glpTypeHumanReadableDescription(v74, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v75);
        v76 = glpCompilerGetInfoLog(a1);
        v148 = *a2;
        v149 = *(a2 + 16);
        glpLogMessage(v76, 0, &v148, "subroutine uniform may not have non-subroutine type '%.*s'");
        return 0;
      }
    }

    goto LABEL_159;
  }

  NameTable = glpCompilerGetNameTable(a1);
  GLSLVersion = glpNameTableGetGLSLVersion(NameTable);
  Language = glpNameTableGetLanguage(NameTable);
  IsExtensionEnabled = glpNameTableIsExtensionEnabled(NameTable, 0x23u);
  v134 = GLSLVersion;
  v136 = a2;
  v52 = GLSLVersion > 2 || glpNameTableIsExtensionEnabled(NameTable, 0xEu);
  v126 = v52;
  v56 = *a8;
  v57 = (*a8 >> 29) & 1;
  if (Language)
  {
    v58 = 0;
  }

  else
  {
    v58 = (*a8 >> 29) & 1;
  }

  v131 = v58;
  if (Language != 4)
  {
    LODWORD(v57) = 0;
  }

  v128 = v57;
  v59 = glpTypeGetKind(*a7);
  v60 = *a7;
  if (v59 == 2)
  {
    v60 = glpArrayTypeGetElementType(*a7);
  }

  v130 = glpTypeGetKind(v60);
  if (v130 == 2)
  {
    v60 = glpArrayTypeGetElementType(v60);
  }

  v125 = Language;
  v127 = v59;
  v129 = Language == 4;
  if (glpTypeGetKind(v60))
  {
    v61 = 0;
  }

  else
  {
    v61 = glpPrimitiveTypeGetPrimitiveType(v60);
  }

  v62 = glpPrimitiveTypeGetCategory(v61);
  v63 = glpPrimitiveTypeGetCategory(v61);
  v64 = v63;
  if (!v62)
  {
    v65 = 1;
    goto LABEL_70;
  }

  v63 = glpPrimitiveTypeGetCategory(v61);
  if (v64 == 4)
  {
    v62 = 0;
    v65 = 1;
LABEL_70:
    v66 = 1;
    v67 = v131;
    v68 = IsExtensionEnabled;
    goto LABEL_91;
  }

  v69 = v63;
  ScalarType = glpPrimitiveTypeGetScalarType(v61);
  v71 = ScalarType;
  v68 = IsExtensionEnabled;
  if (ScalarType == 9 && !IsExtensionEnabled)
  {
    goto LABEL_77;
  }

  v72 = v126;
  if (IsExtensionEnabled)
  {
    v72 = 1;
  }

  if ((v72 & 1) != 0 || ScalarType == 1)
  {
    v83 = glpPrimitiveTypeGetScalarType(ScalarType);
    v68 = IsExtensionEnabled;
    v66 = v83 != 62;
    v65 = v71 != 1;
    v62 = 1;
  }

  else
  {
LABEL_77:
    v62 = 0;
    v65 = 1;
    v66 = 1;
  }

  v67 = v131;
  v63 = v69;
LABEL_91:
  v84 = *a8;
  if ((*a8 & 0x1000000000) != 0)
  {
    v86 = 1;
    if (!v67)
    {
      goto LABEL_96;
    }

LABEL_106:
    if (v130 == 2)
    {
      v62 = 0;
    }

    a2 = v136;
    if (v134 <= 4)
    {
      goto LABEL_109;
    }

LABEL_158:
    if (v62)
    {
      goto LABEL_159;
    }

LABEL_167:
    v115 = *a7;
    glpCompilerGetAllocator();
    glpTypeHumanReadableDescription(v115, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v116);
    v117 = glpCompilerGetInfoLog(a1);
    v118 = glpCompilerGetNameTable(a1);
    v119 = glpNameTableGetLanguage(v118);
    glpLanguageToString(v119);
    v148 = *a2;
    v149 = *(a2 + 16);
    glpLogMessage(v117, 0, &v148, "%.*s can't be an %s in the %s shader");
    return 0;
  }

  v85 = ((v134 < 5) | v128) & v65 ^ 1;
  if (v68)
  {
    v86 = 1;
  }

  else
  {
    v86 = v85;
  }

  if (v67)
  {
    goto LABEL_106;
  }

LABEL_96:
  if ((*&v129 & (v56 >> 30)) != 0)
  {
    if (v63 == 3)
    {
      v87 = 0;
    }

    else
    {
      v87 = v62;
    }

    if (v130 == 2)
    {
      v87 = 0;
    }

    v62 = v87 & v66;
    a2 = v136;
    if (v134 > 2 || v68)
    {
      goto LABEL_158;
    }

LABEL_109:
    if (v127 == 2)
    {
      v62 = 0;
    }

    goto LABEL_158;
  }

  a2 = v136;
  if ((a3 - 9) >= 2 && (v84 & 0x20000000000) == 0)
  {
    if (*a9)
    {
      v88 = v68;
      v89 = glpLayoutObjectFind(*a9, 83);
      v68 = v88;
      if (v89)
      {
        goto LABEL_124;
      }

      v84 = *a8;
    }

    if ((v84 & 0x20000000) != 0)
    {
      v90 = v68;
      v91 = glpBankForInputsInLanguage(v125);
      v68 = v90;
      if (v91)
      {
        goto LABEL_122;
      }

      v84 = *a8;
    }

    if ((v84 & 0x40000000) != 0)
    {
      v92 = v68;
      v93 = glpBankForOutputsInLanguage(v125);
      v68 = v92;
      if (v93)
      {
LABEL_122:
        v94 = v68;
        if ((*(a8 + 3) & 0x20) != 0)
        {
          v95 = glpBankForInputsInLanguage(v125);
        }

        else
        {
          v95 = glpBankForOutputsInLanguage(v125);
        }

        v101 = v95;
        if (v127 != 2)
        {
          v102 = glpCompilerGetInfoLog(a1);
          glpLanguageToString(v125);
          v148 = *v136;
          v149 = *(v136 + 16);
          glpLogMessage(v102, 0, &v148, "%s in the %s shader must be arrays");
          return 0;
        }

        if (glpTypeGetKind(v60) != 1)
        {
          goto LABEL_144;
        }

        *&v148 = 0;
        *(&v148 + 1) = &v148;
        v149 = 0x2000000000;
        v150 = 1;
        v144 = 0;
        v145 = &v144;
        v146 = 0x2000000000;
        v147 = 0;
        v103 = *a7;
        v142[0] = MEMORY[0x277D85DD0];
        v142[1] = 0x40000000;
        v142[2] = __glpEvaluateTypeNode_block_invoke;
        v142[3] = &unk_278B49C50;
        v143 = v94;
        v142[4] = &v148;
        v142[5] = &v144;
        glpEachPrimitiveComponentOfType(v103, v142);
        if (*(*(&v148 + 1) + 24))
        {
          _Block_object_dispose(&v144, 8);
          _Block_object_dispose(&v148, 8);
          v62 = 1;
LABEL_144:
          v104 = glpArrayTypeGetElementType(*a7);
          LODWORD(v105) = glpArrayTypeGetElementCount(*a7);
          ImpliedBankSize = glpCompilerGetImpliedBankSize(a1, v101);
          if (v105 == -1)
          {
            v105 = ImpliedBankSize;
          }

          else
          {
            v105 = v105;
          }

          if (ImpliedBankSize != -1)
          {
            v107 = ImpliedBankSize;
            if (v105 != ImpliedBankSize)
            {
              v28 = glpCompilerGetInfoLog(a1);
              if ((*a8 & 0x20000000) != 0)
              {
                v108 = "input";
              }

              else
              {
                v108 = "output";
              }

              v109 = glpLanguageToString(v125);
              v148 = *v136;
              v149 = *(v136 + 16);
              v123 = v109;
              v124 = v107;
              v121 = v105;
              v122 = v108;
              v34 = "Declared size (%u) of %s array in the %s shader is incompatible with earlier declarations (expected %u)";
              goto LABEL_23;
            }
          }

          glpCompilerGetAllocator();
          *a7 = glpMakeBankType(v113, v101, v104, v105);
          goto LABEL_158;
        }

LABEL_153:
        v110 = glpCompilerGetInfoLog(a1);
        if ((*a8 & 0x20000000) != 0)
        {
          v111 = "Input";
        }

        else
        {
          v111 = "Output";
        }

        v112 = v145[3];
        v140 = *v136;
        v141 = *(v136 + 16);
        glpLogMessage(v110, 0, &v140, "%s variables may not contain %s", v111, v112);
        _Block_object_dispose(&v144, 8);
        _Block_object_dispose(&v148, 8);
        return 0;
      }
    }
  }

LABEL_124:
  if (v130 == 2)
  {
    v96 = 0;
  }

  else
  {
    v96 = v62;
  }

  v62 = v96 & v86;
  if (v134 < 5)
  {
    goto LABEL_158;
  }

  if ((v62 & 1) == 0)
  {
    v97 = v68;
    v98 = glpTypeGetKind(*a7);
    v68 = v97;
    if (v98 != 1)
    {
      if (v127 != 2)
      {
        goto LABEL_167;
      }

      if (v130 == 2)
      {
        goto LABEL_167;
      }

      v100 = glpTypeGetKind(v60);
      v68 = v97;
      if (v100 != 1)
      {
        goto LABEL_167;
      }
    }
  }

  *&v148 = 0;
  *(&v148 + 1) = &v148;
  v149 = 0x2000000000;
  v150 = 1;
  v144 = 0;
  v145 = &v144;
  v146 = 0x2000000000;
  v147 = 0;
  v99 = *a7;
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 0x40000000;
  v138[2] = __glpEvaluateTypeNode_block_invoke_2;
  v138[3] = &unk_278B49C78;
  v139 = v68;
  v138[4] = &v148;
  v138[5] = &v144;
  glpEachPrimitiveComponentOfType(v99, v138);
  if (!*(*(&v148 + 1) + 24))
  {
    goto LABEL_153;
  }

  _Block_object_dispose(&v144, 8);
  _Block_object_dispose(&v148, 8);
LABEL_159:
  if (!glpTypeGetKind(*a7) && !glpPrimitiveTypeGetPrimitiveType(*a7))
  {
    if ((*a8 & 0xFFFFFFFFFFE7FFFFLL) != 0)
    {
      v120 = glpCompilerGetInfoLog(a1);
      v148 = *a2;
      v149 = *(a2 + 16);
      glpLogMessage(v120, 0, &v148, "void may not be qualified");
      return 0;
    }

    if (a3 != 4)
    {
      v35 = glpCompilerGetInfoLog(a1);
      v148 = *a2;
      v149 = *(a2 + 16);
      v34 = "void not allowed except as return type";
      goto LABEL_173;
    }
  }

  result = 1;
  if (a3 != 8 && v137 && (*a8 & 0x900000000) != 0x100000000 && (*a8 & 0x6000000) != 0x2000000)
  {
    if (!glpTypeGetSamplerCount(*a7))
    {
      return 1;
    }

    v114 = glpCompilerGetInfoLog(a1);
    v148 = *a2;
    v149 = *(a2 + 16);
    glpLogMessage(v114, 0, &v148, "Samplers not allowed except in non-buffer uniforms and in-parameters");
    return 0;
  }

  return result;
}

uint64_t __glpEvaluateTypeNode_block_invoke(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = glpPrimitiveTypeGetCategory(a2);
  if ((result - 1) >= 3)
  {
    if (result == 4)
    {
      v7 = "samplers";
      goto LABEL_9;
    }

    if (!result)
    {
      abort();
    }
  }

  else if (!*(a1 + 48))
  {
    result = glpPrimitiveTypeGetScalarType(a2);
    if (result == 9)
    {
      v7 = "BOOLs";
LABEL_9:
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *(*(*(a1 + 40) + 8) + 24) = v7;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t __glpEvaluateTypeNode_block_invoke_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = glpPrimitiveTypeGetCategory(a2);
  if ((result - 1) >= 3)
  {
    if (result == 4)
    {
      v7 = "samplers";
      goto LABEL_9;
    }

    if (!result)
    {
      abort();
    }
  }

  else if (!*(a1 + 48))
  {
    result = glpPrimitiveTypeGetScalarType(a2);
    if (result == 9)
    {
      v7 = "BOOLs";
LABEL_9:
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *(*(*(a1 + 40) + 8) + 24) = v7;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t glpCheckName(uint64_t a1, uint64_t a2, const char *a3, unsigned int a4)
{
  NameTable = glpCompilerGetNameTable(a1);
  if (!glpNameTableIsExtensionEnabled(NameTable, 0x23u) && a4 >= 3)
  {
    v9 = *a3;
    if (v9 == 103)
    {
      v9 = *(a3 + 1);
      if (v9 == 108)
      {
        v9 = *(a3 + 2);
        v10 = 95;
      }

      else
      {
        v10 = 108;
      }
    }

    else
    {
      v10 = 103;
    }

    if (v10 == v9)
    {
      InfoLog = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, v13);
      glpLogMessage(InfoLog, 0, v13, "Identifier name '%.*s' cannot start with 'gl_'", a4, a3);
      return -1;
    }
  }

  return a2;
}

BOOL glpHandleVariableRedeclaration(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t *a7, unsigned int *a8, unsigned int *a9, uint64_t a10, void **a11, unsigned int **a12, unint64_t *a13, void **a14)
{
  if (a7)
  {
    v18 = glpLayoutObjectFind(a7, 81) != 0;
    if (glpLayoutObjectFind(a7, 82))
    {
      NameTable = glpCompilerGetNameTable(a1);
      if (glpNameTableGetGLSLVersion(NameTable) > 8 || glpNameTableIsExtensionEnabled(NameTable, 0x15u) || glpNameTableIsExtensionEnabled(NameTable, 1u))
      {
        v18 = 1;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  v93 = v18;
  glpCompilerGetAllocator();
  glpTypeHumanReadableDescription(a5, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v20);
  glpCompilerGetAllocator();
  v94 = glpTypeHumanReadableDescription(a9, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v21);
  v23 = v22;
  Kind = glpTypeGetKind(a5);
  if (Kind != glpTypeGetKind(a9))
  {
    goto LABEL_31;
  }

  v25 = a5;
  if (Kind == 3)
  {
    ElementCount = glpBankTypeGetElementCount(a5);
    v33 = glpBankTypeGetElementCount(a9);
    if (ElementCount != -1 && v33 != -1 && ElementCount != v33)
    {
      goto LABEL_31;
    }

    ElementType = glpBankTypeGetElementType(a5);
    v35 = glpBankTypeGetElementType(a9);
    v88 = ElementType;
    v36 = glpTypeGetKind(ElementType);
    v89 = v35;
    if (v36 != glpTypeGetKind(v35))
    {
      goto LABEL_31;
    }

    if (v36 == 2)
    {
      v37 = glpArrayTypeGetElementCount(v88);
      v38 = glpArrayTypeGetElementCount(v35);
      if (v37 != -1 && v38 != -1 && v37 != v38)
      {
        goto LABEL_31;
      }

      v39 = glpArrayTypeGetElementType(v88);
      v31 = glpArrayTypeGetElementType(v89);
      v25 = v39;
    }

    else
    {
      v25 = v88;
      v31 = v35;
    }
  }

  else if (Kind == 2)
  {
    v26 = glpArrayTypeGetElementCount(a5);
    v27 = glpArrayTypeGetElementCount(a9);
    if (v26 != -1 && v27 != -1 && v26 != v27)
    {
      goto LABEL_31;
    }

    v28 = glpArrayTypeGetElementType(a5);
    v29 = glpArrayTypeGetElementType(a9);
    v30 = glpTypeGetKind(v28);
    if (v30 != glpTypeGetKind(v29))
    {
      goto LABEL_31;
    }

    v25 = v28;
    v31 = v29;
  }

  else
  {
    v31 = a9;
  }

  if (!glpTypesEqual(v25, v31))
  {
LABEL_31:
    InfoLog = glpCompilerGetInfoLog(a1);
    v95 = *a2;
    v96 = *(a2 + 2);
    glpLogMessage(InfoLog, 0, &v95, "Type (%.*s) of redeclaration of '%.*s' is incompatible with type (%.*s) of previous declaration", v23, v94);
    return 0;
  }

  if (glpTypeGetKind(a5) != 2 && glpTypeGetKind(a5) != 3)
  {
    if (!v93)
    {
      v53 = glpCompilerGetInfoLog(a1);
      v95 = *a2;
      v96 = *(a2 + 2);
      glpLogMessage(v53, 0, &v95, "Regular non-array variable '%.*s' may not be redeclared");
      return 0;
    }

    if (!glpTypesEqual(a5, a9))
    {
      v48 = glpCompilerGetInfoLog(a1);
      v95 = *a2;
      v96 = *(a2 + 2);
      glpLogMessage(v48, 0, &v95, "Type (%.*s) of redeclaration of '%.*s' differs from type (%.*s) of previous declaration", v23, v94);
      return 0;
    }

    goto LABEL_88;
  }

  if (glpTypeGetKind(a5) == 2)
  {
    v40 = 1;
  }

  else
  {
    v43 = glpBankTypeGetElementType(a5);
    v40 = glpTypeGetKind(v43) != 2;
  }

  v44 = _elementCount(a5);
  v45 = _elementCount(a9);
  if (v45 == -1 && v44 != -1)
  {
    goto LABEL_36;
  }

  if (!v40)
  {
    v90 = v45;
    v49 = _elementType(a5);
    v50 = _elementType(a9);
    v51 = _elementCount(v49);
    v52 = _elementCount(v50);
    if (v52 == -1 && v51 != -1)
    {
LABEL_36:
      v46 = glpCompilerGetInfoLog(a1);
      v95 = *a2;
      v96 = *(a2 + 2);
      glpLogMessage(v46, 0, &v95, "Type (%.*s) of redeclaration of '%.*s' is less specific than type (%.*s) of previous declaration", v23, v94);
      return 0;
    }

    if (v44 != -1 || v90 == -1)
    {
      if (v51 != -1 || v52 == -1)
      {
        if ((v90 & v44 & v51 & v52) != 0xFFFFFFFF)
        {
          v70 = glpCompilerGetInfoLog(a1);
          v95 = *a2;
          v96 = *(a2 + 2);
          glpLogMessage(v70, 0, &v95, "Size in type (%.*s) of redeclaration of sized array '%.*s' adds nothing to size in type (%.*s) of previous declaration", v23, v94);
          return 0;
        }

        goto LABEL_100;
      }

      if (v44 == -1 || v44 == v90)
      {
LABEL_82:
        if (*a8 > v90)
        {
          v69 = glpCompilerGetInfoLog(a1);
          v95 = *a2;
          v96 = *(a2 + 2);
          glpLogMessage(v69, 0, &v95, "Outer size in type (%.*s) of redeclaration of implicitly-sized array '%.*s' is less than the implicit size (%u)", v23);
          return 0;
        }

        if (a8[1] > v52)
        {
          v77 = glpCompilerGetInfoLog(a1);
          v95 = *a2;
          v96 = *(a2 + 2);
          glpLogMessage(v77, 0, &v95, "Inner size in type (%.*s) of redeclaration of implicitly-sized array '%.*s' is less than the implicit size (%u)", v23);
          return 0;
        }

LABEL_100:
        v78 = glpBankTypeGetElementType(a5);
        v79 = glpBankTypeGetElementType(a9);
        glpCompilerGetAllocator();
        v81 = v80;
        v82 = glpArrayTypeGetElementType(v78);
        v83 = glpArrayTypeGetElementCount(v78);
        v84 = glpArrayTypeGetElementCount(v79);
        if (v83 == -1)
        {
          v85 = v84;
        }

        else
        {
          v85 = v83;
        }

        MaxElementCount = glpArrayTypeGetMaxElementCount(v78);
        ArrayType = glpMakeArrayType(v81, v82, v85, MaxElementCount);
        if (glpArrayTypeGetMaxElementCount(ArrayType) != -1)
        {
          v87 = glpArrayTypeGetElementCount(ArrayType);
          if (v87 > glpArrayTypeGetMaxElementCount(ArrayType))
          {
LABEL_79:
            v63 = glpCompilerGetInfoLog(a1);
            v95 = *a2;
            v96 = *(a2 + 2);
            glpLogMessage(v63, 0, &v95, "Redeclaration of special array '%.*s' exceeds maximum allowed size");
            return 0;
          }
        }

        goto LABEL_59;
      }
    }

    else if (v51 == -1 || v51 == v52)
    {
      goto LABEL_82;
    }

    v61 = glpCompilerGetInfoLog(a1);
    v95 = *a2;
    v96 = *(a2 + 2);
    glpLogMessage(v61, 0, &v95, "Size in type (%.*s) of redeclaration of sized array '%.*s' doesn't match size in type (%.*s) of previous declaration", v23, v94);
    return 0;
  }

  if (v44 == -1)
  {
    if (v45 != -1 && *a8 > v45)
    {
      v54 = glpCompilerGetInfoLog(a1);
      v95 = *a2;
      v96 = *(a2 + 2);
      glpLogMessage(v54, 0, &v95, "Size in type (%.*s) of redeclaration of implicitly-sized array '%.*s' is less than the implicit size (%u)", v23);
      return 0;
    }
  }

  else
  {
    if (!v93)
    {
      v60 = glpCompilerGetInfoLog(a1);
      v95 = *a2;
      v96 = *(a2 + 2);
      glpLogMessage(v60, 0, &v95, "Redeclaration of sized array '%.*s' not allowed");
      return 0;
    }

    if (v44 != v45)
    {
      v47 = glpCompilerGetInfoLog(a1);
      v95 = *a2;
      v96 = *(a2 + 2);
      glpLogMessage(v47, 0, &v95, "Redeclaration of redeclarable sized array '%.*s' would alter size");
      return 0;
    }
  }

  ArrayType = _elementType(a5);
LABEL_59:
  v56 = _elementCount(a5);
  v57 = _elementCount(a9);
  if (v56 == -1)
  {
    v58 = v57;
  }

  else
  {
    v58 = v56;
  }

  if (glpTypeGetKind(a5) == 3)
  {
    v59 = -1;
  }

  else
  {
    v59 = glpArrayTypeGetMaxElementCount(a5);
  }

  if (glpTypeGetKind(a9) == 3)
  {
    v62 = -1;
  }

  else
  {
    v62 = glpArrayTypeGetMaxElementCount(a9);
  }

  if (v59 == -1)
  {
    v59 = v62;
  }

  if (v59 != -1 && v58 != -1 && v58 > v59)
  {
    goto LABEL_79;
  }

  v64 = glpTypeGetKind(a5);
  glpCompilerGetAllocator();
  v66 = v65;
  if (v64 == 3)
  {
    Bank = glpBankTypeGetBank(a5);
    BankType = glpMakeBankType(v66, Bank, ArrayType, v58);
  }

  else
  {
    BankType = glpMakeArrayType(v65, ArrayType, v58, v59);
  }

  a5 = BankType;
LABEL_88:
  *a12 = a5;
  if (a7)
  {
    glpCompilerGetAllocator();
    v72 = glpCopyLayoutObject(v71, a7);
    *a14 = v72;
    if (a11)
    {
      glpCompilerGetAllocator();
      v73 = *a14;
      v95 = *a2;
      v96 = *(a2 + 2);
      result = glpLayoutObjectAppendMany(v74, a1, &v95, v73, a11);
      if (!result)
      {
        return result;
      }

      goto LABEL_94;
    }
  }

  else
  {
    if (!a11)
    {
LABEL_94:
      v72 = *a14;
      goto LABEL_95;
    }

    glpCompilerGetAllocator();
    v72 = glpCopyLayoutObject(v75, a11);
    *a14 = v72;
  }

LABEL_95:
  if (v72)
  {
    glpCompilerGetAllocator();
    glpLayoutObjectRemove(v76, *a14, 82);
  }

  *a13 = a6 & 0xFFFFFFFFFFFFFFE0 | a10;
  return 1;
}

uint64_t _elementCount(unsigned int *a1)
{
  Kind = glpTypeGetKind(a1);
  if (Kind == 3)
  {

    return glpBankTypeGetElementCount(a1);
  }

  else
  {
    if (Kind != 2)
    {
      abort();
    }

    return glpArrayTypeGetElementCount(a1);
  }
}

uint64_t _elementType(unsigned int *a1)
{
  Kind = glpTypeGetKind(a1);
  if (Kind == 3)
  {

    return glpBankTypeGetElementType(a1);
  }

  else
  {
    if (Kind != 2)
    {
      abort();
    }

    return glpArrayTypeGetElementType(a1);
  }
}

uint64_t glpFlattenCommaTree(uint64_t a1, uint64_t a2)
{
  glpCompilerGetAllocator();
  v4 = v3;
  glpASTNodeGetLocation(a2, v8);
  glpMakeCommaExprNode(v4, v8, 0);
  v6 = v5;
  flattenCommaTreeInto(a2, v5, v4);
  return v6;
}

void *flattenCommaTreeInto(uint64_t a1, uint64_t a2, void *a3)
{
  if (glpASTNodeGetKind(a1) == 43)
  {
    result = glpCommaExprNodeGetExprCount(a1);
    if (result)
    {
      v7 = result;
      for (i = 0; i != v7; ++i)
      {
        Expr = glpCommaExprNodeGetExpr(a1, i);
        result = flattenCommaTreeInto(Expr, a2, a3);
      }
    }
  }

  else
  {

    return glpCommaExprNodeAddExpr(a3, a2, a1);
  }

  return result;
}

uint64_t glpCommaResult(uint64_t Expr)
{
  while (1)
  {
    v1 = Expr;
    if (glpASTNodeGetKind(Expr) != 43)
    {
      break;
    }

    ExprCount = glpCommaExprNodeGetExprCount(v1);
    Expr = glpCommaExprNodeGetExpr(v1, ExprCount - 1);
  }

  return v1;
}

uint64_t glpSASpecialAssert(uint64_t a1, uint64_t a2)
{
  if (glpCallNodeGetArgCount(a2) <= 1)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    *&v5 = glpASTNodeGetLocation(a2, &v55).n128_u64[0];
    glpLogMessage(InfoLog, 0, &v55, "$assert requires at least 2 arguments", v5);
    return -1;
  }

  v6 = glpCallNodeGetArg(a2, 0);
  if (glpASTNodeGetKind(v6) != 1)
  {
    v15 = glpCompilerGetInfoLog(a1);
    *&v16 = glpASTNodeGetLocation(a2, &v55).n128_u64[0];
    glpLogMessage(v15, 0, &v55, "first argument to $assert must be an identifier", v16);
    return -1;
  }

  Name = glpVariableIdentifierNodeGetName(v6);
  v8 = Name;
  v10 = v9;
  if (v9 >= 8)
  {
    if (!strncmp(Name, "type_is_", 8uLL))
    {
      v20 = v8 + 8;
      v21 = (v10 - 8);
      if (v10 == 8)
      {
        v24 = 0;
      }

      else
      {
        v22 = v10 - 9;
        LODWORD(v23) = v10 - 8;
        do
        {
          v23 = (32 * v23 + (v23 >> 2) + v20[v22]) ^ v23;
          v22 += ~(v21 >> 5);
        }

        while (v22 + 1 > v21 >> 5);
        v24 = v23 << 32;
      }

      v27 = glpPrimitiveTypeFromString(v20, v24 | v21);
      PrimitiveType = glpGetPrimitiveType(v27);
      v29 = glpCallNodeGetArg(a2, 1u);
      v30 = glpSANode(a1, v29);
      if (v30 == -1)
      {
        v34 = glpCompilerGetInfoLog(a1);
        *&v35 = glpASTNodeGetLocation(a2, &v55).n128_u64[0];
        glpLogMessage(v34, 0, &v55, "$assert type_is: expected %.*s but got SA failure", v35);
        return -1;
      }

      SaType = glpASTNodeGetSaType(v30);
      if (!glpTypesEqual(PrimitiveType, SaType))
      {
        glpCompilerGetAllocator();
        glpTypeHumanReadableDescription(SaType, "<<BUG: unexpected function type>>", 0x92C8B9C800000021, v37);
        v38 = glpCompilerGetInfoLog(a1);
        *&v39 = glpASTNodeGetLocation(a2, &v55).n128_u64[0];
        glpLogMessage(v38, 0, &v55, "$assert type_is: expected %.*s but got %.*s", v39);
        return -1;
      }

LABEL_24:
      glpASTNodeGetLocation(a2, &v55);
      v32 = glpGetPrimitiveType(5u);
      IntConstant = glpCompilerGetIntConstant(a1, 1);
      return glpMakeConstantValueFragment(a1, &v55, v32, IntConstant);
    }

    if (v10 < 0xD || strncmp(v8, "precision_is_", 0xDuLL))
    {
      goto LABEL_8;
    }

    if (v10 < 0x11)
    {
      if (v10 != 16)
      {
        goto LABEL_48;
      }

      goto LABEL_33;
    }

    v36 = 4;
    if (!strncmp(v8 + 13, "lowp", 4uLL))
    {
      goto LABEL_37;
    }

    if (v10 < 0x14)
    {
      if (v10 == 17)
      {
LABEL_33:
        if (v8[13] == 110 && v8[14] == 111 && v8[15] == 112)
        {
          v36 = 0;
          goto LABEL_37;
        }

LABEL_48:
        abort();
      }
    }

    else if (!strncmp(v8 + 13, "mediump", 7uLL))
    {
      v36 = 8;
      goto LABEL_37;
    }

    if (!strncmp(v8 + 13, "highp", 5uLL))
    {
      v36 = 16;
    }

    else
    {
      if (strncmp(v8 + 13, "_argp", 5uLL))
      {
        if (!strncmp(v8 + 13, "_anyp", 5uLL))
        {
          v36 = 2;
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      v36 = 1;
    }

LABEL_37:
    v40 = glpCallNodeGetArg(a2, 1u);
    v41 = glpSANode(a1, v40);
    if (v41 == -1)
    {
      glpCompilerGetAllocator();
      StringBuffer = glpMakeStringBuffer(v49);
      _formatPrecisionToStringBuffer(StringBuffer, v36);
      v51 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v55);
      glpStringBufferGetCString(StringBuffer);
      glpLogMessage(v51, 0, &v55, "$assert precision_is: expected %s but got SA failure", v52);
      return -1;
    }

    v42 = glpASTNodeGetSaFlags(v41) & 0x1F;
    if (v42 != v36)
    {
      glpCompilerGetAllocator();
      v44 = glpMakeStringBuffer(v43);
      _formatPrecisionToStringBuffer(v44, v36);
      glpCompilerGetAllocator();
      v46 = glpMakeStringBuffer(v45);
      _formatPrecisionToStringBuffer(v46, v42);
      v47 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v55);
      glpStringBufferGetCString(v44);
      glpStringBufferGetCString(v46);
      glpLogMessage(v47, 0, &v55, "$assert precision_is: expected %s but got %s", v48);
      return -1;
    }

    goto LABEL_24;
  }

LABEL_8:
  if (!glpStringsEqual("sa_failed", 0xBA70AE8500000009, v8, v10))
  {
    v17 = glpCompilerGetInfoLog(a1);
    *&v18 = glpASTNodeGetLocation(a2, &v55).n128_u64[0];
    glpLogMessage(v17, 0, &v55, "$assert unknown assertion kind: %.*s", v18);
    return -1;
  }

  v55.n128_u64[0] = 0;
  v55.n128_u64[1] = &v55;
  v56 = 0x2000000000;
  v57 = 0;
  v11 = glpCompilerGetInfoLog(a1);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 0x40000000;
  v54[2] = __glpSASpecialAssert_block_invoke;
  v54[3] = &unk_278B49CA0;
  v54[4] = &v55;
  v54[5] = a1;
  v54[6] = a2;
  glpLogSuppress(v11, v54, &__block_literal_global_2);
  if (*(v55.n128_u64[1] + 24) == -1)
  {
    glpASTNodeGetLocation(a2, v53);
    v25 = glpGetPrimitiveType(5u);
    v26 = glpCompilerGetIntConstant(a1, 1);
    ConstantValueFragment = glpMakeConstantValueFragment(a1, v53, v25, v26);
  }

  else
  {
    v12 = glpCompilerGetInfoLog(a1);
    *&v13 = glpASTNodeGetLocation(a2, v53).n128_u64[0];
    glpLogMessage(v12, 0, v53, "$assert sa_failed: expected this code to fail SA, but it passed", v13);
    ConstantValueFragment = -1;
  }

  _Block_object_dispose(&v55, 8);
  return ConstantValueFragment;
}

uint64_t *_formatPrecisionToStringBuffer(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 0:
        v4 = "nop";
        goto LABEL_35;
      case 1:
        v4 = "$argp";
        goto LABEL_35;
      case 2:
        v4 = "$anyp";
        goto LABEL_35;
    }

    goto LABEL_14;
  }

  if (a2 > 15)
  {
    if (a2 == 16)
    {
LABEL_34:
      v4 = "highp";
      goto LABEL_35;
    }

    if (a2 == 31)
    {
      v4 = "allp";
      goto LABEL_35;
    }

LABEL_14:
    if ((a2 & 2) != 0)
    {
      result = glpStringBufferAppendCString(result, "$anyp");
      if ((v2 & 1) == 0)
      {
        if ((v2 & 4) != 0)
        {
LABEL_29:
          glpStringBufferAppendCString(v3, "|");
          goto LABEL_30;
        }

LABEL_24:
        if ((v2 & 8) != 0)
        {
LABEL_31:
          glpStringBufferAppendCString(v3, "|");
LABEL_32:
          result = glpStringBufferAppendCString(v3, "mediump");
          if ((v2 & 0x10) == 0)
          {
            return result;
          }

          goto LABEL_33;
        }

LABEL_25:
        if ((v2 & 0x10) == 0)
        {
          return result;
        }

LABEL_33:
        glpStringBufferAppendCString(v3, "|");
        goto LABEL_34;
      }

      glpStringBufferAppendCString(v3, "|");
    }

    else if ((a2 & 1) == 0)
    {
      if ((a2 & 4) == 0)
      {
        if ((a2 & 8) == 0)
        {
          if ((a2 & 0x10) == 0)
          {
            return result;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }

LABEL_30:
      result = glpStringBufferAppendCString(v3, "lowp");
      if ((v2 & 8) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }

    result = glpStringBufferAppendCString(v3, "$argp");
    if ((v2 & 4) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  if (a2 == 4)
  {
    v4 = "lowp";
    goto LABEL_35;
  }

  if (a2 != 8)
  {
    goto LABEL_14;
  }

  v4 = "mediump";
LABEL_35:

  return glpStringBufferAppendCString(v3, v4);
}

uint64_t __glpSASpecialAssert_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = glpCallNodeGetArg(a1[6], 1u);
  result = glpSANode(v2, v3);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t glpApplySizeToBanks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  TopLevelNode = glpCompilerGetTopLevelNode(a1);
  if (glpTopLevelNodeGetDefCount(TopLevelNode))
  {
    v7 = 0;
    v45 = a2;
    do
    {
      Def = glpTopLevelNodeGetDef(TopLevelNode, v7);
      if ((Def + 1) >= 2)
      {
        v9 = Def;
        Kind = glpASTNodeGetKind(Def);
        if ((Kind - 46) >= 2)
        {
          if (Kind == 57)
          {
            Extra = glpInterfaceBlockNodeGetExtra(v9);
            if (Extra)
            {
              v25 = Extra;
              if (*(Extra + 40) == a2)
              {
                v26 = *(Extra + 64);
                Bank = glpBankTypeGetBank(v26);
                v43 = v26;
                v44 = a3;
                if (glpBankTypeGetElementCount(v26) == -1)
                {
                  VariableObjectCount = glpInterfaceBlockObjectGetVariableObjectCount(v25);
                  if (VariableObjectCount)
                  {
                    v29 = 0;
                    v30 = 8 * VariableObjectCount;
                    do
                    {
                      v31 = *(*(v25 + 72) + v29);
                      glpCompilerGetAllocator();
                      v33 = v32;
                      ElementType = glpBankTypeGetElementType(*v31);
                      *v31 = glpMakeBankType(v33, Bank, ElementType, v44);
                      v29 += 8;
                    }

                    while (v30 != v29);
                  }
                }

                else if (glpBankTypeGetElementCount(v26) != a3)
                {
                  InfoLog = glpCompilerGetInfoLog(v5);
                  glpASTNodeGetLocation(v9, v46);
                  v39 = *v25;
                  v40 = *(v25 + 8);
                  ElementCount = glpBankTypeGetElementCount(v43);
                  glpLogMessage(InfoLog, 0, v46, "Size of interface block array '%.*s' should have been %u but was %u", v40, v39, a3, ElementCount);
                  return 0;
                }

                glpCompilerGetAllocator();
                v36 = v35;
                v37 = glpBankTypeGetElementType(v43);
                a3 = v44;
                *(v25 + 64) = glpMakeBankType(v36, Bank, v37, v44);
              }
            }
          }
        }

        else
        {
          for (i = 0; ; ++i)
          {
            v12 = glpASTNodeGetKind(v9) == 47 ? glpVariableDeclarationGroupNodeGetDeclarationCount(v9) : 1;
            if (i >= v12)
            {
              break;
            }

            Declaration = v9;
            if (glpASTNodeGetKind(v9) == 47)
            {
              Declaration = glpVariableDeclarationGroupNodeGetDeclaration(v9, i);
            }

            SaType = glpASTNodeGetSaType(Declaration);
            if ((glpASTNodeGetSaFlags(Declaration) & a2) != 0 && SaType && glpTypeGetKind(SaType) == 3 && glpBankTypeGetElementCount(SaType) == -1)
            {
              glpCompilerGetAllocator();
              v15 = TopLevelNode;
              v16 = v5;
              v17 = a3;
              v19 = v18;
              v20 = glpBankTypeGetBank(SaType);
              v21 = glpBankTypeGetElementType(SaType);
              v22 = v19;
              a3 = v17;
              v5 = v16;
              TopLevelNode = v15;
              a2 = v45;
              BankType = glpMakeBankType(v22, v20, v21, a3);
              glpASTNodeSetSaType(Declaration, BankType);
              *glpVariableDeclarationNodeGetExtra(Declaration) = BankType;
            }
          }
        }
      }

      ++v7;
    }

    while (v7 < glpTopLevelNodeGetDefCount(TopLevelNode));
  }

  return 1;
}

uint64_t glpSAPreIncrementOrDecrement(uint64_t a1, uint64_t a2, int a3)
{
  v20 = 0;
  v21 = 0;
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  glpHandleSideEffectsForExpr(a1, Expr, &v21, &v20);
  if (a3)
  {
    v7 = glpMakeIncrementFragment;
  }

  else
  {
    v7 = glpMakeDecrementFragment;
  }

  glpASTNodeGetLocation(a2, v19);
  v8 = v21;
  v9 = glpDuplicateDerefOrConstant(a1, v21);
  v10 = v7(a1, v19, v8, v9);
  if (v20 && glpIsCommaExprNode(v20))
  {
    ExprCount = glpCommaExprNodeGetExprCount(v20);
    glpCommaExprNodeSetExpr(v20, ExprCount - 1, v10);
    glpASTNodeSetSaType(v20, 0);
    v12 = v20;
  }

  else
  {
    glpCompilerGetAllocator();
    v14 = v13;
    glpASTNodeGetLocation(a2, v19);
    glpMakeCommaExprNode(v14, v19, 0);
    v12 = v15;
    if (v20)
    {
      glpCompilerGetAllocator();
      glpCommaExprNodeAddExpr(v16, v12, v20);
    }

    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v17, v12, v10);
  }

  return glpSANode(a1, v12);
}

uint64_t glpSAPostIncrementOrDecrement(uint64_t a1, uint64_t a2, int a3)
{
  v32 = 0;
  v33 = 0;
  Expr = glpUnaryOperatorNodeGetExpr(a2);
  glpHandleSideEffectsForExpr(a1, Expr, &v33, &v32);
  v30 = 0;
  v31 = 0;
  SaType = glpASTNodeGetSaType(v33);
  SaFlags = glpASTNodeGetSaFlags(v33);
  v9 = glpDuplicateDerefOrConstant(a1, v33);
  glpMakeTemporary(a1, SaType, SaFlags & 0x1F, v9, &v31, &v30);
  if (a3)
  {
    v10 = glpMakeIncrementFragment;
  }

  else
  {
    v10 = glpMakeDecrementFragment;
  }

  glpASTNodeGetLocation(a2, v29);
  v11 = v33;
  v12 = glpDuplicateDerefOrConstant(a1, v33);
  v13 = v10(a1, v29, v11, v12);
  glpCompilerGetAllocator();
  v15 = v14;
  glpASTNodeGetLocation(a2, v29);
  glpMakeCommaExprNode(v15, v29, 0);
  v17 = v16;
  if (v32)
  {
    if (glpIsCommaExprNode(v32))
    {
      ExprCount = glpCommaExprNodeGetExprCount(v32);
      if (ExprCount)
      {
        v19 = ExprCount;
        for (i = 0; i != v19; ++i)
        {
          glpCompilerGetAllocator();
          v22 = v21;
          v23 = glpCommaExprNodeGetExpr(v32, i);
          glpCommaExprNodeAddExpr(v22, v17, v23);
        }
      }
    }

    else
    {
      glpCompilerGetAllocator();
      glpCommaExprNodeAddExpr(v24, v17, v32);
    }
  }

  if (v31)
  {
    glpCompilerGetAllocator();
    glpCommaExprNodeAddExpr(v25, v17, v31);
  }

  glpCompilerGetAllocator();
  glpCommaExprNodeAddExpr(v26, v17, v13);
  glpCompilerGetAllocator();
  glpCommaExprNodeAddExpr(v27, v17, v30);
  return glpSANode(a1, v17);
}

uint64_t glpSABuiltinPPStreamOp(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = glpCallNodeGetArgCount(a2);
  if (v4 <= 2)
  {
    InfoLog = glpCompilerGetInfoLog(a1);
    *&v6 = glpASTNodeGetLocation(a2, &v62).n128_u64[0];
    glpLogMessage(InfoLog, 0, &v62, "too few arguments to $ppstreamop.", v6);
    return glpSAFailed();
  }

  v7 = v4;
  v8 = glpCallNodeGetArg(a2, 0);
  SaType = glpASTNodeGetSaType(v8);
  if (!glpIsConstantNode(v8) || (Value = glpConstantNodeGetValue(v8), !glpValueIsUsableAsSize(SaType, Value)))
  {
    v24 = glpCompilerGetInfoLog(a1);
    *&v25 = glpASTNodeGetLocation(a2, &v62).n128_u64[0];
    glpLogMessage(v24, 0, &v62, "argsToIgnore for $ppstreamop must be an integer constant.", v25);
    return glpSAFailed();
  }

  v11 = glpConstantNodeGetValue(v8);
  AsSize = glpValueGetAsSize(SaType, v11);
  if (AsSize >= v7 || (AsSize - 2) >= 3)
  {
    v26 = glpCompilerGetInfoLog(a1);
    *&v27 = glpASTNodeGetLocation(a2, &v62).n128_u64[0];
    glpLogMessage(v26, 0, &v62, "argsToIgnore for $ppstreamop not valid, must be 2, 3 or 4 and less than call args.", v27);
    return glpSAFailed();
  }

  v13 = AsSize;
  MEMORY[0x28223BE20](AsSize);
  v15 = (&v59 - ((v14 + 15) & 0x7FFFFFFF0));
  bzero(v15, v14);
  v16 = 0;
  do
  {
    v17 = glpCallNodeGetArg(a2, v16 + 1);
    v18 = glpASTNodeGetSaType(v17);
    if (!glpIsConstantNode(v17) || (v19 = glpConstantNodeGetValue(v17), !glpValueIsUsableAsSize(v18, v19)))
    {
      v30 = glpCompilerGetInfoLog(a1);
      glpASTNodeGetLocation(a2, &v62);
      glpLogMessage(v30, 0, &v62, "Argument %u to $ppstreamop must be an integer constant.", v16 + 2);
      return glpSAFailed();
    }

    v20 = glpConstantNodeGetValue(v17);
    v15[v16++] = glpValueGetAsSize(v18, v20);
  }

  while (v13 != v16);
  v21 = *v15;
  if (*v15 >= 0x4F)
  {
    v22 = glpCompilerGetInfoLog(a1);
    *&v23 = glpASTNodeGetLocation(a2, &v62).n128_u64[0];
    glpLogMessage(v22, 0, &v62, "returnPrimitiveType of $ppstreamop must represent a primitive type.", v23);
    return glpSAFailed();
  }

  v31 = v16 + 1;
  if (v13 < 2)
  {
    v35 = 0;
    v61 = 0;
    v36 = 0;
    v37 = v21;
  }

  else
  {
    v32 = v15[1];
    if (v32 >= 0xAF)
    {
      v33 = glpCompilerGetInfoLog(a1);
      *&v34 = glpASTNodeGetLocation(a2, &v62).n128_u64[0];
      glpLogMessage(v33, 0, &v62, "opcode of $ppstreamop must represent an opcode.", v34);
      return glpSAFailed();
    }

    if (v13 == 2)
    {
      v35 = 0;
      v61 = 0;
      v37 = v21;
    }

    else
    {
      v47 = v15[2];
      if (v47 >= 0x4F)
      {
        v48 = glpCompilerGetInfoLog(a1);
        *&v49 = glpASTNodeGetLocation(a2, &v62).n128_u64[0];
        glpLogMessage(v48, 0, &v62, "opPrimitiveType of $ppstreamop must represent a primitive type.", v49);
        return glpSAFailed();
      }

      if (v13 >= 4)
      {
        v35 = v15[3];
        if (v35 >= 2)
        {
          v50 = glpCompilerGetInfoLog(a1);
          *&v51 = glpASTNodeGetLocation(a2, &v62).n128_u64[0];
          glpLogMessage(v50, 0, &v62, "has_offset of $ppstreamop must be 0 or 1.", v51);
          return glpSAFailed();
        }

        if (v31 >= v7)
        {
          v55 = glpCompilerGetInfoLog(a1);
          *&v56 = glpASTNodeGetLocation(a2, &v62).n128_u64[0];
          glpLogMessage(v55, 0, &v62, "texture op last arg is missing, it must be a sampler", v56);
          return glpSAFailed();
        }

        v60 = v15[1];
        v52 = glpCallNodeGetArg(a2, v7 - 1);
        v53 = glpASTNodeGetSaType(v52);
        if (glpTypeGetKind(v53) || (PrimitiveType = glpPrimitiveTypeGetPrimitiveType(v53), glpPrimitiveTypeGetCategory(PrimitiveType) != 4))
        {
          v57 = glpCompilerGetInfoLog(a1);
          *&v58 = glpASTNodeGetLocation(a2, &v62).n128_u64[0];
          glpLogMessage(v57, 0, &v62, "texture op last arg is not a sampler, it must be a sampler", v58);
          return glpSAFailed();
        }

        v61 = 1;
        v37 = v47;
        v36 = v60;
        goto LABEL_27;
      }

      v35 = 0;
      v61 = 0;
      v37 = v47;
    }

    v36 = v32;
  }

LABEL_27:
  glpCompilerGetAllocator();
  v39 = v38;
  glpASTNodeGetLocation(a2, &v62);
  glpMakePPStreamOpNode(v39, &v62, v21, v36, v37, v61, v35);
  v28 = v40;
  if (v31 < v7)
  {
    do
    {
      glpCompilerGetAllocator();
      v42 = v41;
      v43 = glpCallNodeGetArg(a2, v31);
      glpCallNodeAddArg(v42, v28, v43);
      ++v31;
    }

    while (v7 != v31);
  }

  v44 = glpGetPrimitiveType(v21);
  glpASTNodeSetSaType(v28, v44);
  if (glpCompilerDoesTrackPrecision(a1))
  {
    PrecisionFlagsFromArgs = getPrecisionFlagsFromArgs(v28);
    v46 = v28;
  }

  else
  {
    v46 = v28;
    PrecisionFlagsFromArgs = 0;
  }

  glpASTNodeSetSaFlags(v46, PrecisionFlagsFromArgs);
  return v28;
}