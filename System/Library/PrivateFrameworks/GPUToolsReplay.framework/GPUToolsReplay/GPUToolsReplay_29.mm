uint64_t UpdateVisibleFunctionTable(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v9);
  v26 = 0u;
  *&v27 = 0;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  LODWORD(v26) = 83;
  *(&v27 + 1) = -1;
  WORD5(v32) = 2;
  v31 = 0xFFFFFFFFFFFFFFFFLL;
  v39 = **(a3 + 112);
  v38 = apr_palloc(newpool, 8 * v39);
  bzero(v38, 8 * v39);
  v10 = *(a1 + 24);
  v41 = *(a3 + 8);
  v11 = *(*(*find_entry(v10, &v41, 8uLL, 0) + 32) + 32);
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = atomic_load((v11 + 4));
      v14 = v12 + (v13 >> 6) - 1;
      if (v14 > 0)
      {
        break;
      }

      v11 = *(v11 + 40);
      v12 = v14;
      if (!v11)
      {
        v12 = v14;
        goto LABEL_8;
      }
    }

    v14 = 0;
LABEL_8:
    v15 = v12 | (v14 << 32);
  }

  else
  {
    v15 = 0;
  }

  while (v11)
  {
    v16 = v11 + 64 + ((HIDWORD(v15) - v15) << 6);
    if ((*(v16 + 15) & 8) == 0 || *v16 >= *(a1 + 40))
    {
      break;
    }

    GTMTLSMVisibleFunctionTableStateful_processTraceFuncWithMap(&v26, *(a1 + 32), v16);
    v17 = atomic_load((v11 + 4));
    v18 = v15 + (v17 >> 6);
    v19 = (HIDWORD(v15) + 1);
    v15 = (v19 << 32) | v15;
    if (v19 == v18 - 1)
    {
      v15 = (v19 << 32) | v19;
      v11 = *(v11 + 40);
    }
  }

  if (v39)
  {
    for (i = 0; v39 > i; ++i)
    {
      v21 = *(v38 + i);
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{v21, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37}];
      v23 = [v8 objectForKeyedSubscript:v22];
      if (v23)
      {
      }

      else
      {
        v23 = [*(a1 + 8) functionHandleForKey:v21];

        if (!v23)
        {
          v24 = 0;
          goto LABEL_21;
        }
      }

      [v7 setFunction:v23 atIndex:i];
    }
  }

  v24 = 1;
LABEL_21:
  apr_pool_destroy(newpool);

  return v24;
}

uint64_t UpdateIntersectionFunctionTable(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v14);
  bzero(v40, 0x3A8uLL);
  v40[0] = 60;
  v43 = 2;
  v41 = -1;
  v42 = -1;
  v45 = *(*(a3 + 112) + 8);
  v15 = 16 * v45;
  v44 = apr_palloc(newpool, 16 * v45);
  bzero(v44, v15);
  v16 = *(a1 + 24);
  v48 = *(a3 + 8);
  v17 = *(*(*find_entry(v16, &v48, 8uLL, 0) + 32) + 32);
  if (v17)
  {
    v18 = 0;
    while (1)
    {
      v19 = atomic_load((v17 + 4));
      v20 = v18 + (v19 >> 6) - 1;
      if (v20 > 0)
      {
        break;
      }

      v17 = *(v17 + 40);
      v18 = v20;
      if (!v17)
      {
        v18 = v20;
        goto LABEL_8;
      }
    }

    v20 = 0;
LABEL_8:
    v21 = v18 | (v20 << 32);
  }

  else
  {
    v21 = 0;
  }

  while (v17)
  {
    v22 = v17 + 64 + ((HIDWORD(v21) - v21) << 6);
    if ((*(v22 + 15) & 8) == 0 || *v22 >= *(a1 + 40))
    {
      break;
    }

    GTMTLSMIntersectionFunctionTableStateful_processTraceFuncWithMap(v40, *(a1 + 32), v22, a6);
    v23 = atomic_load((v17 + 4));
    v24 = v21 + (v23 >> 6);
    v25 = (HIDWORD(v21) + 1);
    v21 = (v25 << 32) | v21;
    if (v25 == v24 - 1)
    {
      v21 = (v25 << 32) | v25;
      v17 = *(v17 + 40);
    }
  }

  if (v45)
  {
    v26 = 0;
    for (i = 0; i < v45; ++i)
    {
      v28 = *&v44[v26];
      switch(v28)
      {
        case 3:
          [v11 setOpaqueCurveIntersectionFunctionWithSignature:*&v44[v26 + 8] atIndex:i];
          break;
        case 2:
          [v11 setOpaqueTriangleIntersectionFunctionWithSignature:*&v44[v26 + 8] atIndex:i];
          break;
        case 1:
          v29 = *&v44[v26 + 8];
          if (v29)
          {
            v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v44[v26 + 8]];
            v31 = [v12 objectForKeyedSubscript:v30];
            if (v31)
            {
            }

            else
            {
              v31 = [*(a1 + 8) functionHandleForKey:v29];

              if (!v31)
              {
LABEL_40:
                v38 = 0;
                goto LABEL_41;
              }
            }

            [v11 setFunction:v31 atIndex:i];
          }

          break;
      }

      v26 += 16;
    }
  }

  v32 = 0;
  v33 = &v46;
  do
  {
    v34 = *(v33 - 4);
    if (v34 == 2)
    {
      v36 = *(v33 - 1);
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36];
      v35 = [v13 objectForKeyedSubscript:v37];
      if (v35)
      {
      }

      else
      {
        v35 = [*(a1 + 8) visibleFunctionTableForKey:v36];

        if (!v35)
        {
          goto LABEL_40;
        }
      }

      [v11 setVisibleFunctionTable:v35 atBufferIndex:v32];
      goto LABEL_37;
    }

    if (v34 == 1 && *(v33 - 1))
    {
      v35 = [*(a1 + 8) bufferForKey:?];
      if (!v35)
      {
        goto LABEL_40;
      }

      [v11 setBuffer:v35 offset:*v33 atIndex:v32];
LABEL_37:
    }

    ++v32;
    v33 += 3;
  }

  while (v32 != 31);
  v38 = 1;
LABEL_41:
  apr_pool_destroy(newpool);

  return v38;
}

id _GTMTLSMLibraryDisplayLabel(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  if (v4 && *v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v5 = @"MTLLibrary";
  }

  v12 = *(a1 + 8);
  entry = find_entry(a2, &v12, 8uLL, 0);
  if (*entry && (v7 = *(*entry + 32)) != 0)
  {
    v8 = atomic_load((v7 + 56));
    v9 = v7 + (~(v8 >> 2) & 8);
  }

  else
  {
    v9 = 8;
  }

  v10 = [(__CFString *)v5 stringByAppendingFormat:@" 0x%llx", *v9];

  return v10;
}

uint64_t GTResourceTrackerGetResourceType(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  entry = find_entry(a2, &v6, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v3 = *(*entry + 32);
  if (!v3 || !*v3)
  {
    return 0;
  }

  v4 = *(v3[4] + 72);

  return GTFenum_getConstructorType(v4);
}

apr_pool_t **GTResourceTrackerUsingResource(apr_pool_t **result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v17 = a3;
  if (a3)
  {
    v8 = result;
    result = find_entry(result, &v17, 8uLL, 0);
    if (!*result || !*(*result + 4))
    {
      v9 = apr_palloc(*v8, 0x10uLL);
      *v9 = v17;
      apr_hash_set(v8, v9, 8, v9);
      v18.i64[0] = v17;
      v10 = *find_entry(a4, &v18, 8uLL, 0);
      if (v10 && (v11 = *(v10 + 32)) != 0)
      {
        v12 = *(v11 + 32);
        if (v12)
        {
          v13 = v12 + 64;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      result = GTFenum_getConstructorType(*(v13 + 8));
      v9[2] = result;
      if (a2 <= 49)
      {
        if (a2 != 16)
        {
          if (a2 != 22)
          {
            return result;
          }

          v18 = 0u;
          v19 = 0;
          v25 = 0u;
          *&v26 = 0;
          v27 = 0u;
          v28 = 0u;
          v23 = 0u;
          v21 = 0u;
          v22 = 0u;
          v18.i32[0] = 22;
          v20 = -1;
          WORD5(v25) = 2;
          v24 = 0xFFFFFFFFFFFFFFFFLL;
          *&v29 = 0;
          *(&v26 + 1) = -1;
          GTMTLSMBuffer_processTraceFuncWithMap(v18.i8, a5, v13);
LABEL_19:
          v14 = v22;
LABEL_23:
          v15 = v8;
          v16 = 50;
          return GTResourceTrackerUsingResource(v15, v16, v14, a4, a5);
        }

        v18 = 0u;
        v19 = 0;
        *&v32 = 0;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v21 = 0u;
        v22 = 0u;
        v18.i32[0] = 16;
        v20 = -1;
        WORD5(v25) = 2;
        v24 = 0xFFFFFFFFFFFFFFFFLL;
        result = GTMTLSMAccelerationStructure_processTraceFuncWithMap(v18.i8, a5, v13);
        if (v22)
        {
          result = GTResourceTrackerUsingResource(v8, 50, v22, a4, a5);
        }

        v14 = *(&v28 + 1);
        if (*(&v28 + 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (a2 != 50)
        {
          if (a2 != 80)
          {
            if (a2 != 101)
            {
              return result;
            }

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
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v21 = 0u;
            v22 = 0u;
            v18 = 0u;
            v19 = 0;
            v18.i32[0] = 101;
            v20 = -1;
            WORD5(v25) = 2;
            v24 = 0xFFFFFFFFFFFFFFFFLL;
            result = GTMTLSMTensor_processTraceFuncWithMap(v18.i8, a5, v13);
            v14 = v27;
            if (!v27)
            {
              return result;
            }

            goto LABEL_31;
          }

          v18 = 0u;
          v19 = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v21 = 0u;
          v22 = 0u;
          v18.i32[0] = 80;
          v20 = -1;
          WORD5(v25) = 2;
          v24 = 0xFFFFFFFFFFFFFFFFLL;
          *&v33 = 0xFFFFFFFFLL;
          GTMTLSMTexture_processTraceFuncWithMap(&v18, a5, v13);
          v14 = *(&v28 + 1);
          if (*(&v28 + 1))
          {
            v15 = v8;
            v16 = 80;
            return GTResourceTrackerUsingResource(v15, v16, v14, a4, a5);
          }

          v14 = v28;
          if (v28)
          {
LABEL_31:
            v15 = v8;
            v16 = 22;
            return GTResourceTrackerUsingResource(v15, v16, v14, a4, a5);
          }

          goto LABEL_19;
        }

        v18 = 0u;
        v19 = 0;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v18.i32[0] = 50;
        v20 = -1;
        WORD4(v24) = 2;
        result = GTMTLSMHeap_processTraceFuncWithMap(v18.i8, a5, v13);
        if (v22 && *(v22 + 20) != 2)
        {
          v14 = v18.i64[1];
          goto LABEL_23;
        }
      }
    }
  }

  return result;
}

void *tracker_resource_get(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v23 = a3;
  GTResourceTrackerUsingResource(a1[3], a2, a3, *a1, a1[1]);
  ParentResource = GetParentResource(a1, v5);
  if (ParentResource != v5)
  {
    find_entry(*a1, &ParentResource, 8uLL, 0);
    v5 = ParentResource;
    v23 = ParentResource;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = a1[5];
  entry = find_entry(v7, &v23, 8uLL, 0);
  if (!*entry || (v9 = *(*entry + 32)) == 0)
  {
    v24 = v23;
    v10 = a1[1];
    v11 = a1[2];
    v12 = *find_entry(*a1, &v24, 8uLL, 0);
    if (v12)
    {
      v13 = *(v12 + 32);
      if (v13)
      {
        v14 = v13[4];
        if (v14)
        {
          if ((*(v14 + 79) & 8) != 0)
          {
            v15 = v14 + 64;
            goto LABEL_14;
          }
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
LABEL_14:
    v16 = apr_palloc(v11, 0x38uLL);
    v9 = v16;
    if (v16)
    {
      v16[6] = 0;
      *(v16 + 1) = 0u;
      *(v16 + 2) = 0u;
      *v16 = 0u;
    }

    *v16 = v13[1];
    v16[1] = v24;
    ConstructorType = GTFenum_getConstructorType(*(v15 + 8));
    v9[3] = -1;
    *(v9 + 10) = ConstructorType;
    v9[2] = a4;
    v9[4] = -1;
    if (ConstructorType <= 59)
    {
      if (ConstructorType != 16)
      {
        if (ConstructorType == 22)
        {
          v25 = 0u;
          v26 = 0;
          v32 = 0u;
          v34 = 0u;
          v35 = 0u;
          *&v33 = 0;
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
          v25.i32[0] = 22;
          v27 = -1;
          WORD5(v32) = 2;
          v31 = 0xFFFFFFFFFFFFFFFFLL;
          *&v36 = 0;
          *(&v33 + 1) = -1;
          GTMTLSMBuffer_processTraceFuncWithMap(v25.i8, v10, v15);
          if ((GTFenum_isSharedResourceConstructor(*(v15 + 8)) & 1) == 0)
          {
            if ((BYTE8(v32) & 0xE0) != 0)
            {
              goto LABEL_44;
            }

            v20 = atomic_load(v13 + 7);
            v18 = (v20 >> 1) & 1;
LABEL_43:
            *(v9 + 48) = v18;
            goto LABEL_44;
          }
        }

        else
        {
          if (ConstructorType != 50)
          {
            goto LABEL_44;
          }

          if (*(a1 + 56) != 1)
          {
            goto LABEL_44;
          }

          v25 = 0u;
          v26 = 0;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v25.i32[0] = 50;
          v27 = -1;
          WORD4(v31) = 2;
          GTMTLSMHeap_processTraceFuncWithMap(v25.i8, v10, v15);
          if (!v29)
          {
            goto LABEL_44;
          }

          v19 = *(v29 + 16);
          if ((GTFenum_isSharedResourceConstructor(*(v15 + 8)) & 1) == 0 && (v19 & 0xE0) != 0)
          {
            goto LABEL_44;
          }
        }

LABEL_39:
        LOBYTE(v18) = 1;
        goto LABEL_43;
      }
    }

    else
    {
      if (ConstructorType <= 82)
      {
        if (ConstructorType != 60)
        {
          if (ConstructorType == 80)
          {
            v25 = 0u;
            v26 = 0;
            v32 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v33 = 0u;
            v29 = 0u;
            v30 = 0u;
            v28 = 0u;
            v25.i32[0] = 80;
            v27 = -1;
            WORD5(v32) = 2;
            v31 = 0xFFFFFFFFFFFFFFFFLL;
            *&v40 = 0xFFFFFFFFLL;
            GTMTLSMTexture_processTraceFuncWithMap(&v25, v10, v15);
            if (v33 && (*(v33 + 36) & 0xF0) == 0x30)
            {
              v9[3] = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (GTFenum_isSharedResourceConstructor(*(v15 + 8)))
            {
              LOBYTE(v18) = (*(v15 + 15) & 2) == 0;
            }

            else
            {
              LOBYTE(v18) = 0;
            }

            goto LABEL_43;
          }

LABEL_44:
          apr_hash_set(v7, v9 + 1, 8, v9);
          return v9;
        }

        *v9 = v13[2];
        goto LABEL_39;
      }

      if (ConstructorType != 83)
      {
        if (ConstructorType == 101)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v33 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v26 = 0;
          v28 = 0u;
          v25 = 0u;
          v25.i32[0] = 101;
          v27 = -1;
          WORD5(v32) = 2;
          v31 = 0xFFFFFFFFFFFFFFFFLL;
          GTMTLSMTensor_processTraceFuncWithMap(v25.i8, v10, v15);
        }

        goto LABEL_44;
      }
    }

    *v9 = v13[2];
    goto LABEL_44;
  }

  return v9;
}

uint64_t GetParentResource(uint64_t *a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v22 = a2;
  if (!a2)
  {
    return v22;
  }

  v3 = *find_entry(*a1, &v22, 8uLL, 0);
  if (v3 && (v4 = *(v3 + 32)) != 0)
  {
    v5 = *(v4 + 32);
    v6 = v5 ? v5 + 64 : 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 8);
  if (GTFenum_isSharedResourceConstructor(v7))
  {
    return v22;
  }

  ConstructorType = GTFenum_getConstructorType(v7);
  switch(ConstructorType)
  {
    case 16:
      if (*(a1 + 56) != 1)
      {
        return v22;
      }

      v23 = 0u;
      v24 = 0;
      *&v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      v23.i32[0] = 16;
      v25 = -1;
      WORD5(v30) = 2;
      v29 = 0xFFFFFFFFFFFFFFFFLL;
      GTMTLSMAccelerationStructure_processTraceFuncWithMap(v23.i8, a1[1], v6);
LABEL_30:
      v10 = v27;
      if (v27)
      {
        return GetParentResource(a1, v10);
      }

      return v22;
    case 22:
      if (*(a1 + 56) != 1)
      {
        return v22;
      }

      v23 = 0u;
      v24 = 0;
      v30 = 0u;
      *&v31 = 0;
      *&v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v28 = 0u;
      v26 = 0u;
      v27 = 0u;
      v23.i32[0] = 22;
      v25 = -1;
      WORD5(v30) = 2;
      v29 = 0xFFFFFFFFFFFFFFFFLL;
      *(&v31 + 1) = -1;
      GTMTLSMBuffer_processTraceFuncWithMap(v23.i8, a1[1], v6);
      goto LABEL_30;
    case 80:
      v23 = 0u;
      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v26 = 0u;
      v27 = 0u;
      v23.i32[0] = 80;
      v25 = -1;
      WORD5(v30) = 2;
      v29 = 0xFFFFFFFFFFFFFFFFLL;
      v38 = 0xFFFFFFFFLL;
      GTMTLSMTexture_processTraceFuncWithMap(&v23, a1[1], v6);
      v10 = *(&v33 + 1);
      if (*(&v33 + 1))
      {
        return GetParentResource(a1, v10);
      }

      v10 = v33;
      if (v33)
      {
        return GetParentResource(a1, v10);
      }

      if (*(a1 + 56) == 1 && v27)
      {
        entry = find_entry(*a1, &v27, 8uLL, 0);
        if (*entry && (v12 = *(*entry + 32)) != 0 && (v13 = *(v12 + 32)) != 0 && (*(v13 + 79) & 8) != 0)
        {
          v14 = (v13 + 64);
        }

        else
        {
          v14 = 0;
        }

        v15 = 0u;
        v16 = 0;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        LODWORD(v15) = 50;
        v17 = -1;
        WORD4(v21) = 2;
        GTMTLSMHeap_processTraceFuncWithMap(&v15, a1[1], v14);
        if (v19)
        {
          if (*(v19 + 20) != 2)
          {
            v10 = v27;
            return GetParentResource(a1, v10);
          }
        }
      }

      break;
  }

  return v22;
}

void *GTResourceTrackerResourceRead(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v8 = tracker_resource_get(a1, a2, a3, a4);
  v9 = v8;
  if (v8)
  {
    v10 = v8[3];
    if (v10 < 0)
    {
      v10 = a4;
    }

    v8[3] = v10;
    if (*(v8 + 48) == 1)
    {
      v11 = tracker_resource_get(a1, a2, a3, a4);
      if (v11)
      {
        v11[4] = a4;
      }
    }
  }

  return v9;
}

uint64_t *GTResourceTrackerResourceUsage(uint64_t *result, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
  if ((a5 & 2) != 0)
  {
    result = tracker_resource_get(result, a2, a3, a4);
    if (result)
    {
      result[4] = a4;
    }
  }

  if ((a5 & 5) != 0)
  {

    return GTResourceTrackerResourceRead(v9, a2, a3, a4);
  }

  return result;
}

apr_pool_t **GTResourceTrackerUsingResourceArray(apr_pool_t **result, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v8 = a4;
    v11 = result;
    do
    {
      v12 = *a3;
      if (*a3)
      {
        if (a2)
        {
          ResourceType = a2;
        }

        else
        {
          ResourceType = GTResourceTrackerGetResourceType(*a3, a5);
          v12 = *a3;
        }

        result = GTResourceTrackerUsingResource(v11, ResourceType, v12, a5, a6);
      }

      ++a3;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t *GTResourceTrackerResourceReadMTLArray(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2)
  {
    v6 = result;
    do
    {
      v8 = *v3++;
      v7 = v8;
      if (v8)
      {
        result = GTResourceTrackerResourceRead(v6, 16, v7, a3);
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t *GTResourceTrackerResourceWriteArray(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v7 = result;
    do
    {
      v9 = *a2++;
      v8 = v9;
      if (v9)
      {
        result = tracker_resource_get(v7, 80, v8, a4);
        if (result)
        {
          result[4] = a4;
        }
      }

      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t *GTResourceTrackerResourceUsageArray(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a3)
  {
    v7 = a3;
    v9 = result;
    do
    {
      result = *a2;
      if (*a2)
      {
        ResourceType = GTResourceTrackerGetResourceType(result, *v9);
        result = GTResourceTrackerResourceUsage(v9, ResourceType, *a2, a4, a5);
      }

      ++a2;
      --v7;
    }

    while (v7);
  }

  return result;
}

void GTResourceTrackerUsingResourceHeap(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  if (!a2)
  {
    return;
  }

  if (*(a1 + 56) == 1)
  {
    entry = find_entry(*a1, &v21, 8uLL, 0);
    if (*entry && (v6 = *(*entry + 32)) != 0 && (v7 = *(v6 + 32)) != 0 && (*(v7 + 79) & 8) != 0)
    {
      v8 = (v7 + 64);
    }

    else
    {
      v8 = 0;
    }

    v14 = 0u;
    v15 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    LODWORD(v14) = 50;
    v16 = -1;
    WORD4(v20) = 2;
    GTMTLSMHeap_processTraceFuncWithMap(&v14, a1[1], v8);
    if (v18 && *(v18 + 20) != 2)
    {
      v13 = tracker_resource_get(a1, 50, v21, a3);
      if (v13)
      {
        v13[4] = a3;
      }

      goto LABEL_13;
    }

    v9 = a1[3];
    v10 = v21;
  }

  else
  {
    v10 = a2;
    v9 = a1[3];
  }

  GTResourceTrackerUsingResource(v9, 50, v10, *a1, a1[1]);
LABEL_13:
  v11 = find_entry(a1[4], &v21, 8uLL, 0);
  if (!*v11 || !*(*v11 + 32))
  {
    v12 = apr_palloc(*a1[4], 0x10uLL);
    *v12 = v21;
    v12[1] = a3;
    apr_hash_set(a1[4], v12, 8, v12);
  }
}

uint64_t IsHeapResourceMadeAliasable(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v18 = a2;
  v4 = *(*(*find_entry(a1, &v18, 8uLL, 0) + 32) + 32);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = atomic_load((v4 + 4));
      v7 = v5 + (v6 >> 6) - 1;
      if (v7 > 0)
      {
        break;
      }

      v4 = *(v4 + 40);
      v5 = v7;
      if (!v4)
      {
        v5 = v7;
LABEL_8:
        v8 = v5 | (v7 << 32);
        goto LABEL_9;
      }
    }

    v7 = 0;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:
  while (v4)
  {
    v9 = v4 + 64 + ((HIDWORD(v8) - v8) << 6);
    if ((*(v9 + 15) & 8) == 0)
    {
      break;
    }

    v10 = *v9;
    if (*v9 > a3)
    {
      break;
    }

    v11 = *(v9 + 8);
    v13 = v11 == -16122 || v11 == -16114 || v11 == -15651;
    if (v13 || (GTFenum_isDestructor(v11) & 1) != 0)
    {
      return v10;
    }

    v14 = atomic_load((v4 + 4));
    v15 = v8 + (v14 >> 6);
    v16 = (HIDWORD(v8) + 1);
    v8 = (v16 << 32) | v8;
    if (v16 == v15 - 1)
    {
      v8 = (v16 << 32) | v16;
      v4 = *(v4 + 40);
    }
  }

  return -1;
}

void *GTResourceTrackerMakeWithDescriptor(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = apr_palloc(v2, 0x40uLL);
  *v3 = *a1;
  v3[2] = v2;
  v3[3] = apr_hash_make(v2);
  v3[4] = apr_hash_make(v2);
  v3[5] = apr_hash_make(v2);
  v3[6] = apr_hash_make(v2);
  *(v3 + 56) = *(a1 + 24);
  return v3;
}

void GTResourceTrackerProcessFunction()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v192 = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 8);
  ConstructorType = GTFenum_getConstructorType(v4);
  if (GTFenum_isMTLCommandEncoder(ConstructorType))
  {
    bzero(&v162, 0x2BA0uLL);
    GTMTLSMCommandEncoder_processTraceFunc(&v162, v2, *(v3 + 8));
    if (v162 <= 64)
    {
      if (v162 != 17 && v162 != 21)
      {
        if (v162 != 28)
        {
          return;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (v162 <= 73)
      {
        if (v162 != 65)
        {
          if (v162 != 70)
          {
            return;
          }

          v6 = *v3;
          *&v168 = v163;
          v7 = *find_entry(v6, &v168, 8uLL, 0);
          if (v7 && (v8 = *(v7 + 32)) != 0 && (v9 = *(v8 + 32)) != 0 && (*(v9 + 79) & 8) != 0)
          {
            v10 = v9 + 64;
          }

          else
          {
            v10 = 0;
          }

          bzero(&v168, 0x2BA0uLL);
          GTMTLSMCommandEncoder_processTraceFunc(&v168, v10, *(v3 + 8));
          bzero(&v164, 0x2BA0uLL);
          v159 = 0;
          v160 = 0;
          if (*(v10 + 8) != -16286)
          {
            v60 = *(&v172 + 1);
            v61 = renderCommandEncoder_processStreamWithDescriptor(v3, *(&v172 + 1), &v168);
            v159 = v191;
            LOWORD(v160) = v191[615];
            goto LABEL_176;
          }

          v11 = *v3;
          v161 = *(&v171 + 1);
          v12 = *find_entry(v11, &v161, 8uLL, 0);
          if (v12)
          {
            v13 = *(v12 + 32);
            if (v13)
            {
              v14 = *(v13 + 32);
              if (v14)
              {
                if ((*(v14 + 79) & 8) != 0)
                {
                  v15 = (v14 + 64);
LABEL_161:
                  GTMTLSMCommandEncoder_processTraceFunc(&v164, v15, *(v3 + 8));
                  v125 = *(v13 + 32);
                  if (v125)
                  {
                    v126 = 0;
                    while (1)
                    {
                      v127 = atomic_load((v125 + 4));
                      v128 = v126 + (v127 >> 6) - 1;
                      if (v128 > 1)
                      {
                        break;
                      }

                      v125 = *(v125 + 40);
                      v126 = v128;
                      if (!v125)
                      {
                        v126 = v128;
                        goto LABEL_168;
                      }
                    }

                    v128 = 1;
LABEL_168:
                    v129 = v126 | (v128 << 32);
                  }

                  else
                  {
                    v129 = 0;
                  }

                  while (v125)
                  {
                    v130 = v125 + 64 + ((HIDWORD(v129) - v129) << 6);
                    if ((*(v130 + 15) & 8) == 0)
                    {
                      break;
                    }

                    v131 = GTFenum_getConstructorType(*(v130 + 8));
                    if (!GTFenum_isMTLCommandEncoder(v131))
                    {
                      GTMTLSMCommandEncoder_processTraceFunc(&v164, (v125 + 64 + ((HIDWORD(v129) - v129) << 6)), *(v3 + 8));
                    }

                    v132 = atomic_load((v125 + 4));
                    v133 = v129 + (v132 >> 6);
                    v134 = (HIDWORD(v129) + 1);
                    v129 = (v134 << 32) | v129;
                    if (v134 == v133 - 1)
                    {
                      v129 = (v134 << 32) | v134;
                      v125 = *(v125 + 40);
                    }
                  }

                  v60 = v166;
                  v159 = v167;
                  LOWORD(v160) = v167[64];
                  v61 = renderCommandEncoder_processStreamWithDescriptor(v3, v166, &v168);
LABEL_176:
                  RenderEncoderWithDescriptor(v3, v60);
                  if (v168 == 70)
                  {
                    v112 = &v159;
                    v113 = v3;
                    v114 = v60;
                    v111 = v61;
LABEL_178:
                    RenderEncoderEndEncoding(v113, v114, v112, v111);
                  }

                  return;
                }
              }
            }
          }

          else
          {
            v13 = 0;
          }

          v15 = 0;
          goto LABEL_161;
        }

        v43 = *v3;
        *&v168 = v163;
        v44 = *find_entry(v43, &v168, 8uLL, 0);
        if (v44)
        {
          v45 = *(v44 + 32);
          bzero(&v168, 0x2BA0uLL);
          if (v45)
          {
            v46 = *(v45 + 32);
            if (v46)
            {
              if ((*(v46 + 79) & 8) != 0)
              {
                v47 = (v46 + 64);
                goto LABEL_89;
              }
            }
          }
        }

        else
        {
          bzero(&v168, 0x2BA0uLL);
          v45 = 0;
        }

        v47 = 0;
LABEL_89:
        GTMTLSMCommandEncoder_processTraceFunc(&v168, v47, *(v3 + 8));
        v75 = *(&v172 + 1);
        RenderEncoderWithDescriptor(v3, *(&v172 + 1));
        v76 = *(v45 + 32);
        if (v76)
        {
          v77 = 0;
          while (1)
          {
            v78 = atomic_load((v76 + 4));
            v79 = v77 + (v78 >> 6) - 1;
            if (v79 > 1)
            {
              break;
            }

            v76 = *(v76 + 40);
            v77 = v79;
            if (!v76)
            {
              v77 = v79;
LABEL_137:
              v80 = v77 | (v79 << 32);
              goto LABEL_138;
            }
          }

          v79 = 1;
          goto LABEL_137;
        }

        v80 = 0;
LABEL_138:
        while (v76)
        {
          v105 = v76 + 64;
          v106 = v76 + 64 + ((HIDWORD(v80) - v80) << 6);
          if ((*(v106 + 15) & 8) == 0)
          {
            break;
          }

          if (GTFenum_isEndEncoding(*(v106 + 8)))
          {
            v164 = &v173;
            LOWORD(v165) = v181;
            *(&v165 + 2) = 0;
            HIWORD(v165) = 0;
            v111 = *v106;
            v112 = &v164;
            v113 = v3;
            v114 = v75;
            goto LABEL_178;
          }

          GTResourceTrackerProcessResourceUse(v3, v105 + ((HIDWORD(v80) - v80) << 6), *v106);
          v107 = GTFenum_getConstructorType(*(v106 + 8));
          if (GTFenum_isMTLCommandEncoder(v107))
          {
            bzero(&v164, 0x2BA0uLL);
            GTMTLSMCommandEncoder_processTraceFunc(&v164, (v105 + ((HIDWORD(v80) - v80) << 6)), *(v3 + 8));
            renderCommandEncoder_processStreamWithDescriptor(v3, v75, &v164);
          }

          else
          {
            GTMTLSMCommandEncoder_processTraceFunc(&v168, (v105 + ((HIDWORD(v80) - v80) << 6)), *(v3 + 8));
          }

          v108 = atomic_load((v76 + 4));
          v109 = v80 + (v108 >> 6);
          v110 = (HIDWORD(v80) + 1);
          v80 = (v110 << 32) | v80;
          if (v110 == v109 - 1)
          {
            v80 = (v110 << 32) | v110;
            v76 = *(v76 + 40);
          }
        }

        return;
      }

      if (v162 != 74)
      {
        if (v162 != 82)
        {
          return;
        }

LABEL_43:
        computeCommandEncoder_processStream();
        return;
      }
    }

    defaultCommandEncoder_processStream();
    return;
  }

  if ((ConstructorType - 95) > 0xA || ((0x409u >> (ConstructorType - 95)) & 1) == 0)
  {
    if ((v4 + 20474) > 0x36 || ((0x40000020020001uLL >> (v4 - 6)) & 1) == 0)
    {
      v31 = *v2;

      GTResourceTrackerProcessResourceUse(v3, v2, v31);
      return;
    }

    v22 = GTTraceFunc_targetContext(v2, *(v3 + 8));
    ReceiverType = GTFenum_getReceiverType(*(v2 + 8));
    if (ReceiverType > 102)
    {
      if (ReceiverType != 103)
      {
        if (ReceiverType != 104)
        {
          return;
        }

        v24 = *v2;
        v48 = *v3;
        *&v168 = v22;
        v49 = *(*find_entry(v48, &v168, 8uLL, 0) + 32);
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        v172 = 0u;
        v173 = 0u;
        v169 = 0;
        v171 = 0u;
        v168 = 0u;
        LODWORD(v168) = 104;
        v170 = -1;
        v50 = *(v49 + 32);
        if (v50)
        {
          v51 = 0;
          while (1)
          {
            v52 = atomic_load((v50 + 4));
            v53 = v51 + (v52 >> 6) - 1;
            if (v53 > 0)
            {
              break;
            }

            v50 = *(v50 + 40);
            v51 = v53;
            if (!v50)
            {
              v51 = v53;
              goto LABEL_192;
            }
          }

          v53 = 0;
LABEL_192:
          v136 = v51 | (v53 << 32);
        }

        else
        {
          v136 = 0;
        }

        while (v50)
        {
          v144 = v50 + 64 + ((HIDWORD(v136) - v136) << 6);
          if ((*(v144 + 15) & 8) == 0 || *v144 > v24)
          {
            break;
          }

          GTMTLFXSMTemporalDenoisedScaler_processTraceFuncWithMap(&v168, *(v3 + 8), v144);
          v145 = atomic_load((v50 + 4));
          v146 = v136 + (v145 >> 6);
          v147 = (HIDWORD(v136) + 1);
          v136 = (v147 << 32) | v136;
          if (v147 == v146 - 1)
          {
            v136 = (v147 << 32) | v147;
            v50 = *(v50 + 40);
          }
        }

        GTResourceTrackerUsingResource(*(v3 + 24), 104, v22, *v3, *(v3 + 8));
        GTResourceTrackerResourceRead(v3, 80, v173, v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v173 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, v174, v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v174 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, v175, v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v175 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, v176, v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v176 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v177 + 1), v24);
        GTResourceTrackerResourceRead(v3, 80, *(&v178 + 1), v24);
        v148 = v178;
        goto LABEL_216;
      }

      v24 = *v2;
      v68 = *v3;
      *&v168 = v22;
      v69 = *(*find_entry(v68, &v168, 8uLL, 0) + 32);
      v168 = 0u;
      v169 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v171 = 0u;
      LODWORD(v168) = 103;
      *&v178 = 0;
      v170 = -1;
      v70 = *(v69 + 32);
      if (v70)
      {
        v71 = 0;
        while (1)
        {
          v72 = atomic_load((v70 + 4));
          v73 = v71 + (v72 >> 6) - 1;
          if (v73 > 0)
          {
            break;
          }

          v70 = *(v70 + 40);
          v71 = v73;
          if (!v70)
          {
            v71 = v73;
            goto LABEL_208;
          }
        }

        v73 = 0;
LABEL_208:
        v138 = v71 | (v73 << 32);
      }

      else
      {
        v138 = 0;
      }

      while (v70)
      {
        v153 = v70 + 64 + ((HIDWORD(v138) - v138) << 6);
        if ((*(v153 + 15) & 8) == 0 || *v153 > v24)
        {
          break;
        }

        GTMTLFXSMFrameInterpolator_processTraceFuncWithMap(&v168, *(v3 + 8), v153);
        v154 = atomic_load((v70 + 4));
        v155 = v138 + (v154 >> 6);
        v156 = (HIDWORD(v138) + 1);
        v138 = (v156 << 32) | v138;
        if (v156 == v155 - 1)
        {
          v138 = (v156 << 32) | v156;
          v70 = *(v70 + 40);
        }
      }

      GTResourceTrackerUsingResource(*(v3 + 24), 103, v22, *v3, *(v3 + 8));
      GTResourceTrackerUsingResource(*(v3 + 24), 40, *(v172 + 32), *v3, *(v3 + 8));
      GTResourceTrackerResourceRead(v3, 80, v173, v24);
      GTResourceTrackerResourceRead(v3, 80, *(&v173 + 1), v24);
      GTResourceTrackerResourceRead(v3, 80, v174, v24);
      v143 = *(&v174 + 1);
    }

    else
    {
      if (ReceiverType == 39)
      {
        v24 = *v2;
        v62 = *v3;
        *&v168 = v22;
        v63 = *(*find_entry(v62, &v168, 8uLL, 0) + 32);
        v168 = 0u;
        v169 = 0;
        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        LODWORD(v168) = 39;
        v170 = -1;
        v64 = *(v63 + 32);
        if (v64)
        {
          v65 = 0;
          while (1)
          {
            v66 = atomic_load((v64 + 4));
            v67 = v65 + (v66 >> 6) - 1;
            if (v67 > 0)
            {
              break;
            }

            v64 = *(v64 + 40);
            v65 = v67;
            if (!v64)
            {
              v65 = v67;
              goto LABEL_200;
            }
          }

          v67 = 0;
LABEL_200:
          v137 = v65 | (v67 << 32);
        }

        else
        {
          v137 = 0;
        }

        while (v64)
        {
          v149 = v64 + 64 + ((HIDWORD(v137) - v137) << 6);
          if ((*(v149 + 15) & 8) == 0 || *v149 > v24)
          {
            break;
          }

          GTMTLFXSMSpatialScaler_processTraceFuncWithMap(&v168, *(v3 + 8), v149);
          v150 = atomic_load((v64 + 4));
          v151 = v137 + (v150 >> 6);
          v152 = (HIDWORD(v137) + 1);
          v137 = (v152 << 32) | v137;
          if (v152 == v151 - 1)
          {
            v137 = (v152 << 32) | v152;
            v64 = *(v64 + 40);
          }
        }

        GTResourceTrackerUsingResource(*(v3 + 24), 39, v22, *v3, *(v3 + 8));
        GTResourceTrackerResourceRead(v3, 80, v173, v24);
        v148 = *(&v173 + 1);
        goto LABEL_216;
      }

      if (ReceiverType != 40)
      {
        return;
      }

      v24 = *v2;
      v25 = *v3;
      *&v168 = v22;
      v26 = *(*find_entry(v25, &v168, 8uLL, 0) + 32);
      v168 = 0u;
      v169 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v171 = 0u;
      LODWORD(v168) = 40;
      *&v178 = 0;
      v170 = -1;
      v27 = *(v26 + 32);
      if (v27)
      {
        v28 = 0;
        while (1)
        {
          v29 = atomic_load((v27 + 4));
          v30 = v28 + (v29 >> 6) - 1;
          if (v30 > 0)
          {
            break;
          }

          v27 = *(v27 + 40);
          v28 = v30;
          if (!v27)
          {
            v28 = v30;
            goto LABEL_184;
          }
        }

        v30 = 0;
LABEL_184:
        v135 = v28 | (v30 << 32);
      }

      else
      {
        v135 = 0;
      }

      while (v27)
      {
        v139 = v27 + 64 + ((HIDWORD(v135) - v135) << 6);
        if ((*(v139 + 15) & 8) == 0 || *v139 > v24)
        {
          break;
        }

        GTMTLFXSMTemporalScaler_processTraceFuncWithMap(&v168, *(v3 + 8), v139);
        v140 = atomic_load((v27 + 4));
        v141 = v135 + (v140 >> 6);
        v142 = (HIDWORD(v135) + 1);
        v135 = (v142 << 32) | v135;
        if (v142 == v141 - 1)
        {
          v135 = (v142 << 32) | v142;
          v27 = *(v27 + 40);
        }
      }

      GTResourceTrackerUsingResource(*(v3 + 24), 40, v22, *v3, *(v3 + 8));
      GTResourceTrackerResourceRead(v3, 80, v173, v24);
      GTResourceTrackerResourceRead(v3, 80, *(&v173 + 1), v24);
      GTResourceTrackerResourceRead(v3, 80, v174, v24);
      GTResourceTrackerResourceRead(v3, 80, *(&v174 + 1), v24);
      v143 = *(&v175 + 1);
    }

    GTResourceTrackerResourceRead(v3, 80, v143, v24);
    v148 = v175;
LABEL_216:
    v157 = tracker_resource_get(v3, 80, v148, v24);
    if (v157)
    {
      v157[4] = v24;
    }

    GTResourceTrackerUsingResource(*(v3 + 24), 41, *(&v172 + 1), *v3, *(v3 + 8));
    return;
  }

  bzero(&v164, 0x790uLL);
  GTMTL4SMCommandEncoder_processTraceFunc(&v164, v2, *(v3 + 8));
  switch(v164)
  {
    case 'i':
      v54 = v165;
      bzero(&v168, 0x790uLL);
      v55 = *v3;
      v162 = v54;
      v56 = *(*(*find_entry(v55, &v162, 8uLL, 0) + 32) + 32);
      if (v56)
      {
        v57 = 0;
        while (1)
        {
          v58 = atomic_load((v56 + 4));
          v59 = v57 + (v58 >> 6) - 1;
          if (v59 > 0)
          {
            break;
          }

          v56 = *(v56 + 40);
          v57 = v59;
          if (!v56)
          {
            v57 = v59;
            goto LABEL_148;
          }
        }

        v59 = 0;
LABEL_148:
        v81 = v57 | (v59 << 32);
      }

      else
      {
        v81 = 0;
      }

      while (v56)
      {
        v115 = v56 + 64;
        v116 = v56 + 64 + ((HIDWORD(v81) - v81) << 6);
        if ((*(v116 + 15) & 8) == 0)
        {
          break;
        }

        GTResourceTrackerProcessResourceUse(v3, v115 + ((HIDWORD(v81) - v81) << 6), *v116);
        GTMTL4SMCommandEncoder_processTraceFunc(&v168, (v115 + ((HIDWORD(v81) - v81) << 6)), *(v3 + 8));
        v117 = atomic_load((v56 + 4));
        v118 = v81 + (v117 >> 6);
        v119 = (HIDWORD(v81) + 1);
        v81 = (v119 << 32) | v81;
        if (v119 == v118 - 1)
        {
          v81 = (v119 << 32) | v119;
          v56 = *(v56 + 40);
        }
      }

      break;
    case 'b':
      v32 = *v3;
      *&v168 = v165;
      v33 = *find_entry(v32, &v168, 8uLL, 0);
      if (v33 && (v34 = *(v33 + 32)) != 0 && (v35 = *(v34 + 32)) != 0 && (*(v35 + 79) & 8) != 0)
      {
        v36 = (v35 + 64);
      }

      else
      {
        v36 = 0;
      }

      bzero(&v168, 0x790uLL);
      GTMTL4SMCommandEncoder_processTraceFunc(&v168, v36, *(v3 + 8));
      v37 = *v3;
      v38 = *(&v172 + 1);
      v162 = *(&v168 + 1);
      v39 = *(*(*find_entry(v37, &v162, 8uLL, 0) + 32) + 32);
      if (v39)
      {
        v40 = 0;
        while (1)
        {
          v41 = atomic_load((v39 + 4));
          v42 = v40 + (v41 >> 6) - 1;
          if (v42 > 1)
          {
            break;
          }

          v39 = *(v39 + 40);
          v40 = v42;
          if (!v39)
          {
            v40 = v42;
            goto LABEL_98;
          }
        }

        v42 = 1;
LABEL_98:
        v74 = v40 | (v42 << 32);
      }

      else
      {
        v74 = 0;
      }

LABEL_99:
      v158 = v39 + 64;
      while (v39)
      {
        v83 = v158 + ((HIDWORD(v74) - v74) << 6);
        if ((*(v83 + 15) & 8) == 0)
        {
          break;
        }

        v84 = *(v83 + 8);
        if (v84 == -15104 || v84 == -14892 || v84 == -15047)
        {
          v97 = *v83;
          goto LABEL_122;
        }

        GTResourceTrackerProcessResourceUse(v3, v158 + ((HIDWORD(v74) - v74) << 6), *v83);
        GTMTL4SMCommandEncoder_processTraceFunc(&v168, v83, *(v3 + 8));
        if ((*(v83 + 8) + 15059) <= 0xB)
        {
          v87 = v168;
          v88 = v190[496];
          v89 = v38;
          v90 = 8;
          v91 = *v83;
          do
          {
            RenderEncoderLoadAttachment(v3, v89, v91);
            v89 += 64;
            --v90;
          }

          while (v90);
          RenderEncoderLoadAttachment(v3, v38 + 512, v91);
          RenderEncoderLoadAttachment(v3, v38 + 560, v91);
          if (v87 == 70)
          {
            if (v88)
            {
              v92 = *(v38 + 608);
              if (v92)
              {
                v93 = tracker_resource_get(v3, 22, v92, v91);
                if (v93)
                {
                  v93[4] = v91;
                }
              }
            }
          }

          GTResourceTrackerUsingResource(*(v3 + 24), 68, *(v38 + 600), *v3, *(v3 + 8));
        }

        v94 = atomic_load((v39 + 4));
        v95 = v74 + (v94 >> 6);
        v96 = (HIDWORD(v74) + 1);
        v74 = (v96 << 32) | v74;
        if (v96 == v95 - 1)
        {
          v74 = (v96 << 32) | v96;
          v39 = *(v39 + 40);
          goto LABEL_99;
        }
      }

      v97 = -1;
LABEL_122:
      v98 = (v38 + 8);
      v99 = 8;
      do
      {
        GTResourceTrackerUsingResource(*(v3 + 24), 80, *v98, *v3, *(v3 + 8));
        GTResourceTrackerUsingResource(*(v3 + 24), 80, *(v98 - 1), *v3, *(v3 + 8));
        v98 += 8;
        --v99;
      }

      while (v99);
      GTResourceTrackerUsingResource(*(v3 + 24), 80, *(v38 + 520), *v3, *(v3 + 8));
      GTResourceTrackerUsingResource(*(v3 + 24), 80, *(v38 + 512), *v3, *(v3 + 8));
      GTResourceTrackerUsingResource(*(v3 + 24), 80, *(v38 + 568), *v3, *(v3 + 8));
      GTResourceTrackerUsingResource(*(v3 + 24), 80, *(v38 + 560), *v3, *(v3 + 8));
      GTResourceTrackerUsingResource(*(v3 + 24), 22, *(v38 + 608), *v3, *(v3 + 8));
      GTResourceTrackerUsingResource(*(v3 + 24), 68, *(v38 + 600), *v3, *(v3 + 8));
      if (v168 == 98)
      {
        v100 = 0;
        v101 = v38;
        do
        {
          v102 = *(v101 + 27);
          if (v102 == 4)
          {
            v102 = *&v190[v100];
          }

          RenderEncoderStoreAttachment(v3, v101, v102, v97);
          v100 += 8;
          v101 += 64;
        }

        while (v100 != 64);
        if (*(v38 + 539) == 4)
        {
          v103 = v190[497];
        }

        else
        {
          v103 = *(v38 + 539);
        }

        RenderEncoderStoreAttachment(v3, (v38 + 512), v103, v97);
        if (*(v38 + 587) == 4)
        {
          v104 = v190[498];
        }

        else
        {
          v104 = *(v38 + 587);
        }

        RenderEncoderStoreAttachment(v3, (v38 + 560), v104, v97);
      }

      break;
    case '_':
      v16 = v165;
      bzero(&v168, 0x790uLL);
      v17 = *v3;
      v162 = v16;
      v18 = *(*(*find_entry(v17, &v162, 8uLL, 0) + 32) + 32);
      if (v18)
      {
        v19 = 0;
        while (1)
        {
          v20 = atomic_load((v18 + 4));
          v21 = v19 + (v20 >> 6) - 1;
          if (v21 > 0)
          {
            break;
          }

          v18 = *(v18 + 40);
          v19 = v21;
          if (!v18)
          {
            v19 = v21;
            goto LABEL_154;
          }
        }

        v21 = 0;
LABEL_154:
        v82 = v19 | (v21 << 32);
      }

      else
      {
        v82 = 0;
      }

      while (v18)
      {
        v120 = v18 + 64;
        v121 = v18 + 64 + ((HIDWORD(v82) - v82) << 6);
        if ((*(v121 + 15) & 8) == 0)
        {
          break;
        }

        GTResourceTrackerProcessResourceUse(v3, v120 + ((HIDWORD(v82) - v82) << 6), *v121);
        GTMTL4SMCommandEncoder_processTraceFunc(&v168, (v120 + ((HIDWORD(v82) - v82) << 6)), *(v3 + 8));
        v122 = atomic_load((v18 + 4));
        v123 = v82 + (v122 >> 6);
        v124 = (HIDWORD(v82) + 1);
        v82 = (v124 << 32) | v82;
        if (v124 == v123 - 1)
        {
          v82 = (v124 << 32) | v124;
          v18 = *(v18 + 40);
        }
      }

      break;
  }
}

void defaultCommandEncoder_processStream()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v27 = *MEMORY[0x277D85DE8];
  bzero(v25, 0x2BA0uLL);
  v4 = *v3;
  v24 = v2;
  v5 = *(*(*find_entry(v4, &v24, 8uLL, 0) + 32) + 32);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = atomic_load((v5 + 4));
      v8 = v6 + (v7 >> 6) - 1;
      if (v8 > 0)
      {
        break;
      }

      v5 = *(v5 + 40);
      v6 = v8;
      if (!v5)
      {
        v6 = v8;
        goto LABEL_8;
      }
    }

    v8 = 0;
LABEL_8:
    v9 = v6 | (v8 << 32);
  }

  else
  {
    v9 = 0;
  }

  while (v5)
  {
    v10 = v5 + 64;
    v11 = v5 + 64 + ((HIDWORD(v9) - v9) << 6);
    if ((*(v11 + 15) & 8) == 0)
    {
      break;
    }

    GTResourceTrackerProcessResourceUse(v3, v10 + ((HIDWORD(v9) - v9) << 6), *v11);
    GTMTLSMCommandEncoder_processTraceFunc(v25, (v10 + ((HIDWORD(v9) - v9) << 6)), *(v3 + 8));
    v12 = atomic_load((v5 + 4));
    v13 = v9 + (v12 >> 6);
    v14 = (HIDWORD(v9) + 1);
    v9 = (v14 << 32) | v9;
    if (v14 == v13 - 1)
    {
      v9 = (v14 << 32) | v14;
      v5 = *(v5 + 40);
    }
  }

  switch(v25[0])
  {
    case 0x11:
      v21 = v26;
      if (v26)
      {
        for (i = 8; i != 104; i += 24)
        {
          v23 = *(v21 + i);
          if (v23)
          {
            GTResourceTrackerUsingResource(*(v3 + 24), 31, v23, *v3, *(v3 + 8));
          }
        }
      }

      break;
    case 0x15:
      v18 = v26;
      if (v26)
      {
        for (j = 8; j != 104; j += 24)
        {
          v20 = *(v18 + j);
          if (v20)
          {
            GTResourceTrackerUsingResource(*(v3 + 24), 31, v20, *v3, *(v3 + 8));
          }
        }
      }

      break;
    case 0x4A:
      v15 = v26;
      if (v26)
      {
        for (k = 8; k != 104; k += 24)
        {
          v17 = *(v15 + k);
          if (v17)
          {
            GTResourceTrackerUsingResource(*(v3 + 24), 31, v17, *v3, *(v3 + 8));
          }
        }
      }

      break;
  }
}

void *computeCommandEncoder_processStream()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v22 = *MEMORY[0x277D85DE8];
  bzero(v20, 0x2BA0uLL);
  v4 = *v3;
  v19 = v2;
  result = find_entry(v4, &v19, 8uLL, 0);
  v6 = *(*(*result + 32) + 32);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = atomic_load((v6 + 4));
      v9 = v7 + (v8 >> 6) - 1;
      if (v9 > 0)
      {
        break;
      }

      v6 = *(v6 + 40);
      v7 = v9;
      if (!v6)
      {
        v7 = v9;
        goto LABEL_8;
      }
    }

    v9 = 0;
LABEL_8:
    v10 = v7 | (v9 << 32);
  }

  else
  {
    v10 = 0;
  }

  while (v6)
  {
    v11 = v6 + 64;
    v12 = v6 + 64 + ((HIDWORD(v10) - v10) << 6);
    if ((*(v12 + 15) & 8) == 0)
    {
      break;
    }

    GTResourceTrackerProcessResourceUse(v3, v11 + ((HIDWORD(v10) - v10) << 6), *v12);
    GTMTLSMCommandEncoder_processTraceFunc(v20, (v11 + ((HIDWORD(v10) - v10) << 6)), *(v3 + 8));
    result = ResourceTracker_processCommandEncoder(v3, *(v12 + 8), v20, *v12);
    v13 = atomic_load((v6 + 4));
    v14 = v10 + (v13 >> 6);
    v15 = (HIDWORD(v10) + 1);
    v10 = (v15 << 32) | v10;
    if (v15 == v14 - 1)
    {
      v10 = (v15 << 32) | v15;
      v6 = *(v6 + 40);
    }
  }

  if (v20[0] == 28)
  {
    v16 = v21;
    if (v21)
    {
      for (i = 8; i != 104; i += 24)
      {
        v18 = *(v16 + i);
        if (v18)
        {
          result = GTResourceTrackerUsingResource(*(v3 + 24), 31, v18, *v3, *(v3 + 8));
        }
      }
    }
  }

  return result;
}

uint64_t renderCommandEncoder_processStreamWithDescriptor(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v26 = *(a3 + 8);
  v7 = *(*(*find_entry(v6, &v26, 8uLL, 0) + 32) + 32);
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = atomic_load((v7 + 4));
      v10 = v8 + (v9 >> 6) - 1;
      if (v10 > 1)
      {
        break;
      }

      v7 = *(v7 + 40);
      v8 = v10;
      if (!v7)
      {
        v8 = v10;
        goto LABEL_8;
      }
    }

    v10 = 1;
LABEL_8:
    v11 = v8 | (v10 << 32);
  }

  else
  {
    v11 = 0;
  }

LABEL_9:
  v12 = v7 + 64;
  while (v7)
  {
    v13 = v12 + ((HIDWORD(v11) - v11) << 6);
    if ((*(v13 + 15) & 8) == 0)
    {
      break;
    }

    isEndEncoding = GTFenum_isEndEncoding(*(v13 + 8));
    v15 = *v13;
    if (isEndEncoding)
    {
      return v15;
    }

    GTResourceTrackerProcessResourceUse(a1, v12 + ((HIDWORD(v11) - v11) << 6), v15);
    GTMTLSMCommandEncoder_processTraceFunc(a3, (v12 + ((HIDWORD(v11) - v11) << 6)), a1[1]);
    ResourceTracker_processCommandEncoder(a1, *(v13 + 8), a3, *v13);
    if (GTFenum_isDrawCall(*(v13 + 8)))
    {
      v16 = *a3 != 70 || *(a3 + 11157) == 0;
      v17 = *v13;
      v18 = a2;
      v19 = 8;
      do
      {
        RenderEncoderLoadAttachment(a1, v18, v17);
        v18 += 64;
        --v19;
      }

      while (v19);
      RenderEncoderLoadAttachment(a1, a2 + 672, v17);
      RenderEncoderLoadAttachment(a1, a2 + 720, v17);
      if (!v16)
      {
        v20 = *(a2 + 792);
        if (v20)
        {
          v21 = tracker_resource_get(a1, 22, v20, v17);
          if (v21)
          {
            v21[4] = v17;
          }
        }
      }

      GTResourceTrackerUsingResource(a1[3], 68, *(a2 + 784), *a1, a1[1]);
      v12 = v7 + 64;
    }

    v22 = atomic_load((v7 + 4));
    v23 = v11 + (v22 >> 6);
    v24 = (HIDWORD(v11) + 1);
    v11 = (v24 << 32) | v11;
    if (v24 == v23 - 1)
    {
      v11 = (v24 << 32) | v24;
      v7 = *(v7 + 40);
      goto LABEL_9;
    }
  }

  return -1;
}

apr_pool_t **RenderEncoderWithDescriptor(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 + 1;
  v5 = 8;
  do
  {
    GTResourceTrackerUsingResource(a1[3], 80, *v4, *a1, a1[1]);
    GTResourceTrackerUsingResource(a1[3], 80, *(v4 - 1), *a1, a1[1]);
    v4 += 8;
    --v5;
  }

  while (v5);
  GTResourceTrackerUsingResource(a1[3], 80, a2[85], *a1, a1[1]);
  GTResourceTrackerUsingResource(a1[3], 80, a2[84], *a1, a1[1]);
  GTResourceTrackerUsingResource(a1[3], 80, a2[91], *a1, a1[1]);
  GTResourceTrackerUsingResource(a1[3], 80, a2[90], *a1, a1[1]);
  GTResourceTrackerUsingResource(a1[3], 22, a2[99], *a1, a1[1]);
  result = GTResourceTrackerUsingResource(a1[3], 68, a2[98], *a1, a1[1]);
  v7 = 0;
  v8 = a2 + 66;
  do
  {
    v9 = v8[v7];
    if (v9)
    {
      result = GTResourceTrackerUsingResource(a1[3], 31, v9, *a1, a1[1]);
    }

    v7 += 5;
  }

  while (v7 != 20);
  return result;
}

uint64_t *RenderEncoderEndEncoding(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = a2;
  do
  {
    v10 = *(v9 + 27);
    if (v10 == 4)
    {
      v10 = *(*a3 + v8);
    }

    RenderEncoderStoreAttachment(a1, v9, v10, a4);
    v8 += 8;
    v9 += 64;
  }

  while (v8 != 64);
  v11 = *(a2 + 699);
  if (v11 == 4)
  {
    v11 = *(a3 + 8);
  }

  RenderEncoderStoreAttachment(a1, (a2 + 672), v11, a4);
  v12 = *(a2 + 747);
  if (v12 == 4)
  {
    v12 = *(a3 + 9);
  }

  return RenderEncoderStoreAttachment(a1, (a2 + 720), v12, a4);
}

uint64_t *RenderEncoderLoadAttachment(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    return result;
  }

  v6 = result;
  v7 = *(a2 + 25);
  if (v7 == 2)
  {
    goto LABEL_5;
  }

  if (v7 != 1)
  {
    if (*(a2 + 25))
    {
      return result;
    }

LABEL_5:

    return GTResourceTrackerResourceRead(result, 80, v4, 0x7FFFFFFFFFFFFFFFLL);
  }

  GTResourceTrackerResourceRead(result, 80, v4, a3);
  v8 = *v6;
  v9 = *(a2 + 8);
  result = find_entry(v8, &v9, 8uLL, 0);
  if (*(*(*(*result + 32) + 32) + 72) == -16294)
  {
    result = tracker_resource_get(v6, 80, *(a2 + 8), a3);
    *(result + 48) = 1;
  }

  return result;
}

uint64_t *RenderEncoderStoreAttachment(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  if (v5)
  {
    v7 = result;
    if (a3 <= 1)
    {
      if (a3 >= 2)
      {
        return result;
      }

      goto LABEL_12;
    }

    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 != 5)
        {
          return result;
        }

        goto LABEL_12;
      }

      v9 = tracker_resource_get(result, 80, v5, a4);
      if (v9)
      {
        v9[4] = a4;
      }
    }

    v5 = *a2;
LABEL_12:
    result = tracker_resource_get(v7, 80, v5, a4);
    if (result)
    {
      result[4] = a4;
    }
  }

  return result;
}

uint64_t *ResourceTracker_processCommandEncoder(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  result = GTFenum_isDrawCall(a2);
  if (result)
  {
    if (*a3 != 70)
    {
      return result;
    }

    v9 = *a1;
    v24.i64[0] = *(a3 + 8600);
    v10 = *find_entry(v9, &v24, 8uLL, 0);
    if (v10)
    {
      v11 = *(v10 + 32);
    }

    else
    {
      v11 = 0;
    }

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v32 = 0u;
    memset(v33, 0, sizeof(v33));
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    memset(v27, 0, sizeof(v27));
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    GTMTLSMRenderPipelineState_resourceAccess(&v24, v11, a1[1]);
    v24 = vandq_s8(v24, vdupq_n_s64(~*(a3 + 64)));
    BufferAccess(a1, a3 + 80, &v24, a4);
    TextureAccess(a1, a3 + 824, &v25, a4);
    *(v27 + 8) = vandq_s8(*(v27 + 8), vdupq_n_s64(~*(a3 + 1976)));
    BufferAccess(a1, a3 + 1984, &v27[0].i64[1], a4);
    TextureAccess(a1, a3 + 2480, &v27[1].i64[1], a4);
    v30 = vandq_s8(v30, vdupq_n_s64(~*(a3 + 3632)));
    BufferAccess(a1, a3 + 3640, &v30, a4);
    TextureAccess(a1, a3 + 4136, &v31, a4);
    *(v33 + 8) = vandq_s8(*(v33 + 8), vdupq_n_s64(~*(a3 + 5288)));
    BufferAccess(a1, a3 + 5296, v33 + 1, a4);
    v16 = a3 + 5792;
    v17 = (&v33[1] + 8);
    return TextureAccess(a1, v16, v17, a4);
  }

  if (v6 <= -15298)
  {
    if (v6 != -16137)
    {
      v12 = -15486;
      goto LABEL_10;
    }

LABEL_11:
    v13 = *a1;
    v24.i64[0] = *(a3 + 8600);
    v14 = *find_entry(v13, &v24, 8uLL, 0);
    if (v14)
    {
      v15 = *(v14 + 32);
    }

    else
    {
      v15 = 0;
    }

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v32 = 0u;
    memset(v33, 0, sizeof(v33));
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    memset(v27, 0, sizeof(v27));
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    GTMTLSMRenderPipelineState_resourceAccess(&v24, v15, a1[1]);
    v36 = vandq_s8(v36, vdupq_n_s64(~*(a3 + 6944)));
    BufferAccess(a1, a3 + 6952, &v36, a4);
    v16 = a3 + 7448;
    v17 = &v37;
    return TextureAccess(a1, v16, v17, a4);
  }

  if (v6 == -15059)
  {
    goto LABEL_11;
  }

  v12 = -15297;
LABEL_10:
  if (v6 == v12)
  {
    goto LABEL_11;
  }

  result = GTFenum_isComputeCall(v6);
  if (!result)
  {
    return result;
  }

  v18 = *a1;
  v24.i64[0] = *(a3 + 64);
  v19 = *find_entry(v18, &v24, 8uLL, 0);
  if (v19)
  {
    v19 = *(v19 + 32);
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v20 = a1[1];
  v24 = 0u;
  *&v25 = 0;
  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30.i64[0] = 0;
  v28 = 0u;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v24.i32[0] = 29;
  *(&v25 + 1) = -1;
  v30.i64[1] = -1;
  if (v19 && (v21 = *(v19 + 32)) != 0 && (*(v21 + 79) & 8) != 0)
  {
    v22 = (v21 + 64);
  }

  else
  {
    v22 = 0;
  }

  GTMTLSMComputePipelineState_processTraceFuncWithMap(v24.i8, v20, v22);
  v40 = v32;
  v41 = v33[0];
  v23 = vandq_s8(v32, vdupq_n_s64(~*(a3 + 72)));
  v43 = v34;
  v42 = v33[1];
  v40 = v23;
  BufferAccess(a1, a3 + 88, &v40, a4);
  v16 = a3 + 832;
  v17 = &v41;
  return TextureAccess(a1, v16, v17, a4);
}

uint64_t *BufferAccess(uint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = result;
  v8 = 0;
  do
  {
    v9 = *a3 >> v8;
    if (!v9)
    {
      break;
    }

    v10 = v8 + __clz(__rbit64(v9));
    result = GTResourceTrackerResourceRead(v7, 22, *(a2 + 8 * v10), a4);
    v8 = v10 + 1;
  }

  while (v10 < 63);
  v11 = 0;
  do
  {
    v12 = a3[1] >> v11;
    if (!v12)
    {
      break;
    }

    v13 = v11 + __clz(__rbit64(v12));
    result = tracker_resource_get(v7, 22, *(a2 + 8 * v13), a4);
    if (result)
    {
      result[4] = a4;
    }

    v11 = v13 + 1;
  }

  while (v13 < 63);
  return result;
}

uint64_t *TextureAccess(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = 0;
    v11 = v9;
    v12 = (a3 + 16 * v8);
    v13 = a2 + (v8 << 9);
    do
    {
      v14 = *v12 >> v10;
      if (!v14)
      {
        break;
      }

      v15 = v10 + __clz(__rbit64(v14));
      result = GTResourceTrackerResourceRead(v7, 80, *(v13 + 8 * v15), a4);
      v10 = v15 + 1;
    }

    while (v15 < 63);
    v16 = 0;
    do
    {
      v17 = v12[1] >> v16;
      if (!v17)
      {
        break;
      }

      v18 = v16 + __clz(__rbit64(v17));
      result = tracker_resource_get(v7, 80, *(v13 + 8 * v18), a4);
      if (result)
      {
        result[4] = a4;
      }

      v16 = v18 + 1;
    }

    while (v18 < 63);
    v9 = 0;
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  return result;
}

void GTResourceTrackerProcessCommandBuffer(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v11 = a2;
  v3 = *(*(*find_entry(v2, &v11, 8uLL, 0) + 32) + 32);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = atomic_load((v3 + 4));
      v6 = v4 + (v5 >> 6) - 1;
      if (v6 > 0)
      {
        break;
      }

      v3 = *(v3 + 40);
      v4 = v6;
      if (!v3)
      {
        v4 = v6;
        goto LABEL_8;
      }
    }

    v6 = 0;
LABEL_8:
    v7 = v4 | (v6 << 32);
  }

  else
  {
    v7 = 0;
  }

  while (v3 && (*(v3 + 64 + ((HIDWORD(v7) - v7) << 6) + 15) & 8) != 0)
  {
    GTResourceTrackerProcessFunction();
    v8 = atomic_load((v3 + 4));
    v9 = v7 + (v8 >> 6);
    v10 = (HIDWORD(v7) + 1);
    v7 = (v10 << 32) | v7;
    if (v10 == v9 - 1)
    {
      v7 = (v10 << 32) | v10;
      v3 = *(v3 + 40);
    }
  }
}

void GTResourceTrackerUsingResidencySet(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  GTResourceTrackerUsingResource(*(a1 + 24), 72, a2, *a1, *(a1 + 8));
  entry = find_entry(*(a1 + 48), &v5, 8uLL, 0);
  if (!*entry || !*(*entry + 32))
  {
    v4 = apr_palloc(**(a1 + 48), 8uLL);
    *v4 = v5;
    apr_hash_set(*(a1 + 48), v4, 8, v4);
  }
}

uint64_t *GTResourceTrackerUsingAccelerationStructureDescriptor(uint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 96);
  if (v8 == 3)
  {
    if (a3)
    {
      v42 = *result;
      v52 = *(a2 + 16);
      entry = find_entry(v42, &v52, 8uLL, 0);
      if (*entry && *(*entry + 32))
      {
        GTResourceTrackerResourceRead(v7, 22, *(a2 + 16), a4);
      }

      v44 = *v7;
      v52 = *a2;
      v45 = find_entry(v44, &v52, 8uLL, 0);
      if (*v45 && *(*v45 + 32))
      {
        GTResourceTrackerResourceRead(v7, 22, *a2, a4);
      }

      v46 = *v7;
      v52 = *(a2 + 32);
      v47 = find_entry(v46, &v52, 8uLL, 0);
      if (*v47 && *(*v47 + 32))
      {
        GTResourceTrackerResourceRead(v7, 22, *(a2 + 32), a4);
      }

      v48 = *v7;
      v52 = *(a2 + 48);
      result = find_entry(v48, &v52, 8uLL, 0);
      if (!*result || !*(*result + 32))
      {
        return result;
      }
    }

    else
    {
      GTResourceTrackerResourceRead(result, 22, *(a2 + 16), a4);
      GTResourceTrackerResourceRead(v7, 22, *a2, a4);
      GTResourceTrackerResourceRead(v7, 22, *(a2 + 32), a4);
    }

    v51 = *(a2 + 48);

    return GTResourceTrackerResourceRead(v7, 22, v51, a4);
  }

  if (v8 == 2)
  {
    if (a3)
    {
      v39 = *result;
      v52 = *(a2 + 8);
      v40 = find_entry(v39, &v52, 8uLL, 0);
      if (*v40 && *(*v40 + 32))
      {
        GTResourceTrackerResourceRead(v7, 22, *(a2 + 8), a4);
      }

      v41 = *v7;
      v52 = *(a2 + 48);
      result = find_entry(v41, &v52, 8uLL, 0);
      if (!*result || !*(*result + 32))
      {
        goto LABEL_104;
      }
    }

    else
    {
      GTResourceTrackerResourceRead(result, 22, *(a2 + 8), a4);
    }

    result = GTResourceTrackerResourceRead(v7, 22, *(a2 + 48), a4);
LABEL_104:
    if (*(a2 + 40))
    {
      v49 = 0;
      do
      {
        if (!a3 || (v50 = *v7, v52 = *(*(a2 + 32) + 8 * v49), result = find_entry(v50, &v52, 8uLL, 0), *result) && *(*result + 32))
        {
          result = GTResourceTrackerResourceRead(v7, 16, *(*(a2 + 32) + 8 * v49), a4);
        }

        ++v49;
      }

      while (*(a2 + 40) > v49);
    }

    return result;
  }

  if (v8 == 1 && *(a2 + 8))
  {
    for (i = 0; *(a2 + 8) > i; ++i)
    {
      v10 = *a2 + 152 * i;
      if (!a3 || (v11 = *v7, v52 = *(v10 + 112), result = find_entry(v11, &v52, 8uLL, 0), *result) && *(*result + 32))
      {
        result = GTResourceTrackerResourceRead(v7, 22, *(v10 + 112), a4);
      }

      v12 = *(v10 + 146);
      if (v12 > 3)
      {
        switch(v12)
        {
          case 4u:
            if (*(v10 + 8))
            {
              v30 = 0;
              v31 = 0;
              do
              {
                if (!a3 || (v32 = *v7, v52 = *(*v10 + v30), result = find_entry(v32, &v52, 8uLL, 0), *result) && *(*result + 32))
                {
                  result = GTResourceTrackerResourceRead(v7, 22, *(*v10 + v30), a4);
                }

                ++v31;
                v30 += 16;
              }

              while (*(v10 + 8) > v31);
            }

            break;
          case 5u:
            if (a3)
            {
              v34 = *v7;
              v52 = *v10;
              v35 = find_entry(v34, &v52, 8uLL, 0);
              if (*v35 && *(*v35 + 32))
              {
                GTResourceTrackerResourceRead(v7, 22, *v10, a4);
              }

              v36 = *v7;
              v52 = *(v10 + 48);
              v37 = find_entry(v36, &v52, 8uLL, 0);
              if (*v37 && *(*v37 + 32))
              {
                GTResourceTrackerResourceRead(v7, 22, *(v10 + 48), a4);
              }

              goto LABEL_71;
            }

            GTResourceTrackerResourceRead(v7, 22, *v10, a4);
            GTResourceTrackerResourceRead(v7, 22, *(v10 + 48), a4);
LABEL_78:
            v10 += 32;
            goto LABEL_79;
          case 6u:
            if (*(v10 + 8))
            {
              v17 = 0;
              v18 = 0;
              do
              {
                if (!a3 || (v19 = *v7, v52 = *(*v10 + v17), v20 = find_entry(v19, &v52, 8uLL, 0), *v20) && *(*v20 + 32))
                {
                  GTResourceTrackerResourceRead(v7, 22, *(*v10 + v17), a4);
                }

                ++v18;
                v17 += 16;
              }

              while (*(v10 + 8) > v18);
            }

            if (*(v10 + 56))
            {
              v21 = 0;
              v22 = 0;
              do
              {
                if (!a3 || (v23 = *v7, v52 = *(*(v10 + 48) + v21), v24 = find_entry(v23, &v52, 8uLL, 0), *v24) && *(*v24 + 32))
                {
                  GTResourceTrackerResourceRead(v7, 22, *(*(v10 + 48) + v21), a4);
                }

                ++v22;
                v21 += 16;
              }

              while (*(v10 + 56) > v22);
            }

            if (a3)
            {
LABEL_71:
              v38 = *v7;
              v52 = *(v10 + 32);
              result = find_entry(v38, &v52, 8uLL, 0);
              if (!*result || !*(*result + 32))
              {
                break;
              }
            }

            goto LABEL_78;
        }
      }

      else
      {
        switch(v12)
        {
          case 1u:
            if (!a3)
            {
              GTResourceTrackerResourceRead(v7, 22, *(v10 + 40), a4);
              goto LABEL_75;
            }

            v25 = *v7;
            v52 = *(v10 + 40);
            v26 = find_entry(v25, &v52, 8uLL, 0);
            if (*v26 && *(*v26 + 32))
            {
              GTResourceTrackerResourceRead(v7, 22, *(v10 + 40), a4);
            }

            goto LABEL_46;
          case 2u:
            if (a3)
            {
              v33 = *v7;
              v52 = *v10;
              result = find_entry(v33, &v52, 8uLL, 0);
              if (!*result || !*(*result + 32))
              {
                break;
              }
            }

            goto LABEL_79;
          case 3u:
            if (*(v10 + 48))
            {
              v13 = 0;
              v14 = 0;
              do
              {
                if (!a3 || (v15 = *v7, v52 = *(*(v10 + 40) + v13), v16 = find_entry(v15, &v52, 8uLL, 0), *v16) && *(*v16 + 32))
                {
                  GTResourceTrackerResourceRead(v7, 22, *(*(v10 + 40) + v13), a4);
                }

                ++v14;
                v13 += 16;
              }

              while (*(v10 + 48) > v14);
            }

            if ((a3 & 1) == 0)
            {
LABEL_75:
              GTResourceTrackerResourceRead(v7, 22, *v10, a4);
              goto LABEL_76;
            }

LABEL_46:
            v27 = *v7;
            v52 = *v10;
            v28 = find_entry(v27, &v52, 8uLL, 0);
            if (*v28 && *(*v28 + 32))
            {
              GTResourceTrackerResourceRead(v7, 22, *v10, a4);
            }

            v29 = *v7;
            v52 = *(v10 + 16);
            result = find_entry(v29, &v52, 8uLL, 0);
            if (!*result || !*(*result + 32))
            {
              break;
            }

LABEL_76:
            v10 += 16;
LABEL_79:
            result = GTResourceTrackerResourceRead(v7, 22, *v10, a4);
            break;
        }
      }
    }
  }

  return result;
}

apr_pool_t **GTResourceTrackerUsingFrameInterpolator(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *&v11 = a2;
  entry = find_entry(v3, &v11, 8uLL, 0);
  if (*entry)
  {
    v5 = *(*entry + 32);
    v11 = 0u;
    v12 = 0;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    LODWORD(v11) = 103;
    v13 = -1;
    v6 = a1[1];
    if (v5 && (v7 = *(v5 + 32)) != 0 && (*(v7 + 79) & 8) != 0)
    {
      v8 = (v7 + 64);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v11 = 0u;
    v12 = 0;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    LODWORD(v11) = 103;
    v13 = -1;
    v6 = a1[1];
  }

  GTMTLFXSMFrameInterpolator_processTraceFuncWithMap(&v11, v6, v8);
  v9 = v15;
  result = GTResourceTrackerGetResourceType(*(v15 + 32), *a1);
  if ((result | 0x40) == 0x68)
  {
    return GTResourceTrackerUsingResource(a1[3], result, *(v9 + 32), *a1, a1[1]);
  }

  return result;
}

apr_pool_t **GTResourceTrackerUsingMTL4FrameInterpolator(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *&v11 = a2;
  entry = find_entry(v3, &v11, 8uLL, 0);
  if (*entry)
  {
    v5 = *(*entry + 32);
    v11 = 0u;
    v12 = 0;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    LODWORD(v11) = 107;
    v13 = -1;
    v6 = a1[1];
    if (v5 && (v7 = *(v5 + 32)) != 0 && (*(v7 + 79) & 8) != 0)
    {
      v8 = (v7 + 64);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v11 = 0u;
    v12 = 0;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    LODWORD(v11) = 107;
    v13 = -1;
    v6 = a1[1];
  }

  GTMTL4FXSMFrameInterpolator_processTraceFuncWithMap(&v11, v6, v8);
  v9 = *(&v15 + 1);
  result = GTResourceTrackerGetResourceType(*(*(&v15 + 1) + 32), *a1);
  if ((result - 109) <= 1)
  {
    return GTResourceTrackerUsingResource(a1[3], result, *(v9 + 32), *a1, a1[1]);
  }

  return result;
}

void GTResourceTrackerProcessResourceUse(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if (v6 <= -15820)
  {
    if (v6 <= -16280)
    {
      if (v6 <= -16383)
      {
        switch(v6)
        {
          case -20480:
          case -20473:
          case -20471:
          case -20470:
          case -20464:
          case -20456:
          case -20455:
          case -20454:
          case -20452:
          case -20448:
          case -20444:
          case -20442:
          case -20441:
          case -20440:
          case -20434:
          case -20431:
          case -20428:
          case -20426:
          case -20425:
          case -20424:
          case -20419:
          case -20417:
          case -20414:
          case -20409:
          case -20405:
          case -20397:
          case -20396:
          case -20394:
          case -20393:
          case -20392:
          case -20386:
          case -20383:
          case -20378:
          case -20376:
          case -20375:
          case -20374:
          case -20369:
          case -20367:
          case -20366:
          case -20360:
          case -20354:
          case -20348:
          case -20317:
          case -20314:
            goto LABEL_25;
          case -20479:
          case -20469:
          case -20439:
          case -20404:
          case -20391:
          case -20365:
            goto LABEL_252;
          case -20476:
          case -20461:
          case -20449:
          case -20430:
          case -20411:
          case -20401:
          case -20382:
          case -20357:
          case -20337:
          case -20328:
            goto LABEL_234;
          case -20474:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 39;
            goto LABEL_554;
          case -20457:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 40;
            goto LABEL_554;
          case -20445:
            v218 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            GTResourceTrackerUsingResource(a1[3], 103, *v218, *a1, a1[1]);
            v219 = *v218;

            GTResourceTrackerUsingFrameInterpolator(a1, v219);
            break;
          case -20420:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 104;
            goto LABEL_554;
          case -20406:
            v216 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            GTResourceTrackerUsingResource(a1[3], 107, *v216, *a1, a1[1]);
            v217 = *v216;

            GTResourceTrackerUsingMTL4FrameInterpolator(a1, v217);
            break;
          case -20398:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 108;
            goto LABEL_554;
          case -20370:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 110;
            goto LABEL_554;
          case -20351:
            v42 = *GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v43 = *a1;
            v44 = a1[1];
            v45 = a1[3];
            ResourceType = 109;
            goto LABEL_554;
          default:
            return;
        }

        return;
      }

      if (v6 > -16338)
      {
        if (v6 > -16334)
        {
          if (v6 <= -16332)
          {
            if (v6 == -16333)
            {
              v364 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v365 = a1[3];
              v366 = GTTraceFunc_argumentBytesWithMap(a2, v364[24], a1[1]);
              v367 = *(v364 + 2);
              if (v367)
              {
                v368 = v366;
                v370 = *a1;
                v369 = a1[1];
                do
                {
                  v372 = *v368++;
                  v371 = v372;
                  if (v372)
                  {
                    GTResourceTrackerUsingResource(v365, 80, v371, v370, v369);
                  }

                  --v367;
                }

                while (v367);
              }

              return;
            }
          }

          else
          {
            if (v6 == -16331)
            {
              v373 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v374 = a1[3];
              v375 = GTTraceFunc_argumentBytesWithMap(a2, v373[24], a1[1]);
              v376 = *(v373 + 2);
              if (v376)
              {
                v377 = v375;
                v379 = *a1;
                v378 = a1[1];
                do
                {
                  v381 = *v377++;
                  v380 = v381;
                  if (v381)
                  {
                    GTResourceTrackerUsingResource(v374, 75, v380, v379, v378);
                  }

                  --v376;
                }

                while (v376);
              }

              return;
            }

            if (v6 != -16330)
            {
              if (v6 == -16329)
              {
                v31 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
                v32 = a1[3];
                v33 = GTTraceFunc_argumentBytesWithMap(a2, v31[24], a1[1]);
                v34 = *(v31 + 2);
                if (v34)
                {
                  v35 = v33;
                  v37 = *a1;
                  v36 = a1[1];
                  do
                  {
                    v39 = *v35++;
                    v38 = v39;
                    if (v39)
                    {
                      GTResourceTrackerUsingResource(v32, 75, v38, v37, v36);
                    }

                    --v34;
                  }

                  while (v34);
                }
              }

              return;
            }
          }

LABEL_242:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
LABEL_243:
          ResourceType = 75;
          goto LABEL_554;
        }

        if (v6 > -16336)
        {
          if (v6 == -16335)
          {
            v355 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v356 = a1[3];
            v357 = GTTraceFunc_argumentBytesWithMap(a2, v355[24], a1[1]);
            v358 = *(v355 + 2);
            if (v358)
            {
              v359 = v357;
              v361 = *a1;
              v360 = a1[1];
              do
              {
                v363 = *v359++;
                v362 = v363;
                if (v363)
                {
                  GTResourceTrackerUsingResource(v356, 22, v362, v361, v360);
                }

                --v358;
              }

              while (v358);
            }

            return;
          }

LABEL_230:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 80;
LABEL_554:

          GTResourceTrackerUsingResource(v45, ResourceType, v42, v43, v44);
          return;
        }

        if (v6 == -16337)
        {
LABEL_316:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 29;
          goto LABEL_554;
        }

        v49 = -16336;
        goto LABEL_281;
      }

      if (v6 > -16379)
      {
        if (v6 <= -16360)
        {
          if (v6 == -16378)
          {
LABEL_219:
            v48 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
            goto LABEL_638;
          }

          v77 = -16377;
          goto LABEL_209;
        }

        if (v6 != -16359 && v6 != -16358)
        {
          return;
        }

LABEL_240:
        v97 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v98 = a1[3];
        v42 = *(v97 + 1);
        goto LABEL_331;
      }

      if (v6 <= -16381)
      {
        if (v6 == -16382)
        {
LABEL_218:
          v92 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v93 = v92[1];
LABEL_609:
          GTResourceTrackerResourceRead(a1, 80, v93, a3);
          v48 = v92[10];
        }

        else
        {
LABEL_110:
          v50 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v51 = v50[1];
          v52 = a1;
          v53 = 22;
LABEL_111:
          GTResourceTrackerResourceRead(v52, v53, v51, a3);
          v48 = v50[8];
        }

        goto LABEL_235;
      }

      if (v6 == -16380)
      {
LABEL_236:
        v96 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        GTResourceTrackerResourceRead(a1, 80, *(v96 + 1), a3);
        goto LABEL_237;
      }

      v24 = -16379;
      goto LABEL_233;
    }

    if (v6 <= -16088)
    {
      switch(v6)
      {
        case -16279:
          goto LABEL_192;
        case -16278:
        case -16263:
          goto LABEL_282;
        case -16277:
          v10 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v11 = a1[3];
          v12 = GTTraceFunc_argumentBytesWithMap(a2, v10[24], a1[1]);
          v13 = *(v10 + 2);
          if (v13)
          {
            v14 = v12;
            v16 = *a1;
            v15 = a1[1];
            do
            {
              v18 = *v14++;
              v17 = v18;
              if (v18)
              {
                GTResourceTrackerUsingResource(v11, 22, v17, v16, v15);
              }

              --v13;
            }

            while (v13);
          }

          return;
        case -16276:
        case -16261:
          goto LABEL_230;
        case -16275:
          v154 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v155 = a1[3];
          v156 = GTTraceFunc_argumentBytesWithMap(a2, v154[24], a1[1]);
          v157 = *(v154 + 2);
          if (v157)
          {
            v158 = v156;
            v160 = *a1;
            v159 = a1[1];
            do
            {
              v162 = *v158++;
              v161 = v162;
              if (v162)
              {
                GTResourceTrackerUsingResource(v155, 80, v161, v160, v159);
              }

              --v157;
            }

            while (v157);
          }

          return;
        case -16274:
        case -16272:
        case -16259:
        case -16257:
          goto LABEL_242;
        case -16273:
          v199 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v200 = a1[3];
          v201 = GTTraceFunc_argumentBytesWithMap(a2, v199[24], a1[1]);
          v202 = *(v199 + 2);
          if (v202)
          {
            v203 = v201;
            v205 = *a1;
            v204 = a1[1];
            do
            {
              v207 = *v203++;
              v206 = v207;
              if (v207)
              {
                GTResourceTrackerUsingResource(v200, 75, v206, v205, v204);
              }

              --v202;
            }

            while (v202);
          }

          return;
        case -16271:
          v172 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v173 = a1[3];
          v174 = GTTraceFunc_argumentBytesWithMap(a2, v172[24], a1[1]);
          v175 = *(v172 + 2);
          if (v175)
          {
            v176 = v174;
            v178 = *a1;
            v177 = a1[1];
            do
            {
              v180 = *v176++;
              v179 = v180;
              if (v180)
              {
                GTResourceTrackerUsingResource(v173, 75, v179, v178, v177);
              }

              --v175;
            }

            while (v175);
          }

          return;
        case -16270:
        case -16269:
        case -16268:
        case -16267:
        case -16266:
        case -16265:
        case -16264:
        case -16255:
        case -16253:
        case -16252:
        case -16251:
        case -16250:
        case -16247:
        case -16246:
        case -16245:
        case -16244:
        case -16243:
        case -16242:
        case -16241:
        case -16240:
        case -16239:
        case -16238:
        case -16237:
        case -16236:
        case -16235:
        case -16234:
        case -16233:
        case -16232:
        case -16231:
        case -16230:
        case -16229:
        case -16228:
        case -16227:
        case -16226:
        case -16225:
        case -16224:
        case -16223:
        case -16222:
        case -16221:
        case -16219:
        case -16218:
          return;
        case -16262:
          v163 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v164 = a1[3];
          v165 = GTTraceFunc_argumentBytesWithMap(a2, v163[24], a1[1]);
          v166 = *(v163 + 2);
          if (v166)
          {
            v167 = v165;
            v169 = *a1;
            v168 = a1[1];
            do
            {
              v171 = *v167++;
              v170 = v171;
              if (v171)
              {
                GTResourceTrackerUsingResource(v164, 22, v170, v169, v168);
              }

              --v166;
            }

            while (v166);
          }

          return;
        case -16260:
          v190 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v191 = a1[3];
          v192 = GTTraceFunc_argumentBytesWithMap(a2, v190[24], a1[1]);
          v193 = *(v190 + 2);
          if (v193)
          {
            v194 = v192;
            v196 = *a1;
            v195 = a1[1];
            do
            {
              v198 = *v194++;
              v197 = v198;
              if (v198)
              {
                GTResourceTrackerUsingResource(v191, 80, v197, v196, v195);
              }

              --v193;
            }

            while (v193);
          }

          return;
        case -16258:
          v145 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v146 = a1[3];
          v147 = GTTraceFunc_argumentBytesWithMap(a2, v145[24], a1[1]);
          v148 = *(v145 + 2);
          if (v148)
          {
            v149 = v147;
            v151 = *a1;
            v150 = a1[1];
            do
            {
              v153 = *v149++;
              v152 = v153;
              if (v153)
              {
                GTResourceTrackerUsingResource(v146, 75, v152, v151, v150);
              }

              --v148;
            }

            while (v148);
          }

          return;
        case -16256:
          v181 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v182 = a1[3];
          v183 = GTTraceFunc_argumentBytesWithMap(a2, v181[24], a1[1]);
          v184 = *(v181 + 2);
          if (v184)
          {
            v185 = v183;
            v187 = *a1;
            v186 = a1[1];
            do
            {
              v189 = *v185++;
              v188 = v189;
              if (v189)
              {
                GTResourceTrackerUsingResource(v182, 75, v188, v187, v186);
              }

              --v184;
            }

            while (v184);
          }

          return;
        case -16254:
          goto LABEL_315;
        case -16249:
        case -16248:
        case -16217:
LABEL_60:
          v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 4);
          goto LABEL_682;
        case -16220:
          goto LABEL_158;
        case -16216:
          v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 2);
          goto LABEL_682;
        case -16215:
          v143 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v144 = v143[3];
LABEL_643:
          GTResourceTrackerResourceRead(a1, 22, v144, a3);
LABEL_644:
          v19 = v143[5];
          goto LABEL_682;
        case -16214:
          v208 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 80, *(v208 + 1), *a1, a1[1]);
          v45 = a1[3];
          v42 = *(v208 + 3);
          v43 = *a1;
          v44 = a1[1];
          goto LABEL_243;
        case -16213:
          goto LABEL_290;
        case -16212:
          goto LABEL_234;
        case -16211:
          goto LABEL_218;
        case -16210:
          goto LABEL_110;
        case -16209:
          goto LABEL_236;
        default:
          switch(v6)
          {
            case -16156:
            case -16155:
              goto LABEL_25;
            case -16148:
              goto LABEL_158;
            case -16147:
              goto LABEL_60;
            case -16146:
              v480 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v481 = v480[2];
LABEL_607:
              GTResourceTrackerResourceRead(a1, 22, v481, a3);
              v19 = v480[4];
              goto LABEL_682;
            case -16145:
              v478 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v479 = v478[4];
              goto LABEL_680;
            case -16144:
              v478 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              GTResourceTrackerResourceRead(a1, 22, v478[2], a3);
              v479 = v478[4];
LABEL_680:
              GTResourceTrackerResourceRead(a1, 22, v479, a3);
LABEL_681:
              v19 = v478[6];
              goto LABEL_682;
            case -16142:
              goto LABEL_282;
            case -16140:
              goto LABEL_230;
            case -16139:
            case -16138:
              goto LABEL_242;
            case -16133:
              goto LABEL_240;
            case -16131:
            case -16130:
            case -16129:
            case -16126:
            case -16125:
            case -16124:
              goto LABEL_252;
            default:
              return;
          }
      }
    }

    if (v6 > -15991)
    {
      if (v6 > -15959)
      {
        if (v6 <= -15887)
        {
          if (v6 > -15898)
          {
            if (v6 == -15897)
            {
              v428 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v429 = a1[3];
              v430 = GTTraceFunc_argumentBytesWithMap(a2, v428[16], a1[1]);
              v431 = *(v428 + 1);
              if (v431)
              {
                v432 = v430;
                v434 = *a1;
                v433 = a1[1];
                do
                {
                  v436 = *v432++;
                  v435 = v436;
                  if (v436)
                  {
                    GTResourceTrackerUsingResource(v429, 73, v435, v434, v433);
                  }

                  --v431;
                }

                while (v431);
              }

              return;
            }

            if (v6 == -15888)
            {
              v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
              v43 = *a1;
              v44 = a1[1];
              v45 = a1[3];
              ResourceType = 64;
              goto LABEL_554;
            }

            if (v6 != -15887)
            {
              return;
            }

            v69 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            GTResourceTrackerResourceRead(a1, 80, v69[1], a3);
            v70 = v69[2];
            v71 = a1;
            v72 = 80;
            goto LABEL_211;
          }

          if (v6 != -15958)
          {
            if (v6 == -15898)
            {
              v115 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v116 = a1[3];
              v117 = GTTraceFunc_argumentBytesWithMap(a2, v115[16], a1[1]);
              v118 = *(v115 + 1);
              if (v118)
              {
                v119 = v117;
                v121 = *a1;
                v120 = a1[1];
                do
                {
                  v123 = *v119++;
                  v122 = v123;
                  if (v123)
                  {
                    GTResourceTrackerUsingResource(v116, 73, v122, v121, v120);
                  }

                  --v118;
                }

                while (v118);
              }
            }

            return;
          }

          goto LABEL_325;
        }

        if (v6 > -15878)
        {
          if (v6 != -15877)
          {
            if (v6 != -15821)
            {
              if (v6 == -15820)
              {
                v83 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
                v84 = GTTraceFunc_argumentBytesWithMap(a2, v83[24], a1[1]);
                v85 = *(v83 + 1);
                if (v85)
                {
                  v86 = v84;
                  do
                  {
                    v87 = *v86++;
                    GTResourceTrackerUsingResourceHeap(a1, v87, a3);
                    --v85;
                  }

                  while (v85);
                }
              }

              return;
            }

            goto LABEL_302;
          }

LABEL_317:
          v129 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 80, *(v129 + 1), a3);
          v48 = *(v129 + 2);
        }

        else
        {
          if (v6 == -15886 || v6 == -15885)
          {
            goto LABEL_252;
          }

          if (v6 != -15878)
          {
            return;
          }

LABEL_95:
          v47 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 80, *(v47 + 1), a3);
          v48 = *(v47 + 4);
        }

LABEL_235:
        v55 = a1;
        v56 = 80;
        goto LABEL_639;
      }

      if (v6 > -15965)
      {
        if (v6 <= -15962)
        {
          if (v6 != -15963)
          {
            v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
            v20 = a1;
            v21 = 57;
LABEL_683:

            GTResourceTrackerResourceRead(v20, v21, v19, a3);
            return;
          }

          goto LABEL_323;
        }

        if (v6 == -15961)
        {
LABEL_323:
          v130 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 57, *(v130 + 1), a3);
LABEL_324:
          v19 = *(v130 + 2);
          goto LABEL_682;
        }

        if (v6 != -15960)
        {
          v82 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 57, *(v82 + 1), a3);
          v48 = *(v82 + 4);
LABEL_326:
          v55 = a1;
          v56 = 57;
          goto LABEL_639;
        }

LABEL_325:
        v48 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
        goto LABEL_326;
      }

      if (v6 > -15977)
      {
        if (v6 != -15976)
        {
          if (v6 == -15967)
          {
            goto LABEL_290;
          }

          v68 = -15966;
LABEL_301:
          if (v6 != v68)
          {
            return;
          }

          goto LABEL_302;
        }

        goto LABEL_234;
      }

      if (v6 == -15990)
      {
        goto LABEL_290;
      }

      if (v6 != -15977)
      {
        return;
      }

      v96 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v112 = tracker_resource_get(a1, 80, *(v96 + 1), a3);
      if (v112)
      {
        v112[4] = a3;
      }

LABEL_237:
      v48 = *(v96 + 10);
      goto LABEL_638;
    }

    if (v6 <= -16043)
    {
      if (v6 <= -16048)
      {
        if (v6 <= -16086)
        {
          if (v6 == -16087)
          {
            v410 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v411 = a1[3];
            v412 = GTTraceFunc_argumentBytesWithMap(a2, v410[24], a1[1]);
            v413 = *(v410 + 2);
            if (v413)
            {
              v414 = v412;
              v416 = *a1;
              v415 = a1[1];
              do
              {
                v418 = *v414++;
                v417 = v418;
                if (v418)
                {
                  GTResourceTrackerUsingResource(v411, 22, v417, v416, v415);
                }

                --v413;
              }

              while (v413);
            }
          }

          else
          {
            v99 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v100 = a1[3];
            v101 = GTTraceFunc_argumentBytesWithMap(a2, v99[24], a1[1]);
            v102 = *(v99 + 2);
            if (v102)
            {
              v103 = v101;
              v105 = *a1;
              v104 = a1[1];
              do
              {
                v107 = *v103++;
                v106 = v107;
                if (v107)
                {
                  GTResourceTrackerUsingResource(v100, 80, v106, v105, v104);
                }

                --v102;
              }

              while (v102);
            }
          }

          return;
        }

        if (v6 == -16085)
        {
          v398 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v399 = a1[3];
          v400 = GTTraceFunc_argumentBytesWithMap(a2, v398[24], a1[1]);
          v401 = *(v398 + 2);
          if (v401)
          {
            v402 = v400;
            v404 = *a1;
            v403 = a1[1];
            do
            {
              v406 = *v402++;
              v405 = v406;
              if (v406)
              {
                GTResourceTrackerUsingResource(v399, 75, v405, v404, v403);
              }

              --v401;
            }

            while (v401);
          }

          return;
        }

        if (v6 == -16084)
        {
          v384 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v385 = a1[3];
          v386 = GTTraceFunc_argumentBytesWithMap(a2, v384[24], a1[1]);
          v387 = *(v384 + 2);
          if (v387)
          {
            v388 = v386;
            v390 = *a1;
            v389 = a1[1];
            do
            {
              v392 = *v388++;
              v391 = v392;
              if (v392)
              {
                GTResourceTrackerUsingResource(v385, 75, v391, v390, v389);
              }

              --v387;
            }

            while (v387);
          }

          return;
        }

        if (v6 != -16079)
        {
          return;
        }

        goto LABEL_158;
      }

      if (v6 > -16046)
      {
        if (v6 != -16045)
        {
          if (v6 == -16044)
          {
            v393 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v394 = GTTraceFunc_argumentBytesWithMap(a2, v393[16], a1[1]);
            v395 = *(v393 + 1);
            if (v395)
            {
              v396 = v394;
              do
              {
                v397 = *v396++;
                GTResourceTrackerUsingResourceHeap(a1, v397, a3);
                --v395;
              }

              while (v395);
            }

            return;
          }

          goto LABEL_276;
        }

        goto LABEL_302;
      }

      if (v6 == -16047)
      {
        goto LABEL_276;
      }
    }

    else
    {
      if (v6 > -16004)
      {
        if (v6 > -15994)
        {
          if (v6 != -15993 && v6 != -15992)
          {
            v88 = -15991;
            goto LABEL_266;
          }

          goto LABEL_234;
        }

        if (v6 != -16003)
        {
          if (v6 == -15995)
          {
LABEL_234:
            v48 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
            goto LABEL_235;
          }

          v24 = -15994;
LABEL_233:
          if (v6 != v24)
          {
            return;
          }

          goto LABEL_234;
        }

        v73 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v74 = a1[3];
        v75 = v73[32];
LABEL_574:
        v451 = GTTraceFunc_argumentBytesWithMap(a2, v75, a1[1]);
        v452 = *(v73 + 1);
        v453 = *a1;
        v454 = a1[1];

        GTResourceTrackerUsingResourceArray(v74, 0, v451, v452, v453, v454);
        return;
      }

      if (v6 > -16041)
      {
        if (v6 == -16040)
        {
          v446 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v447 = GTTraceFunc_argumentBytesWithMap(a2, v446[16], a1[1]);
          v448 = *(v446 + 1);
          if (v448)
          {
            v449 = v447;
            do
            {
              v450 = *v449++;
              GTResourceTrackerUsingResourceHeap(a1, v450, a3);
              --v448;
            }

            while (v448);
          }

          return;
        }

        if (v6 != -16017)
        {
          if (v6 != -16008)
          {
            return;
          }

          v73 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v74 = a1[3];
          v75 = v73[16];
          goto LABEL_574;
        }

LABEL_158:
        v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
LABEL_682:
        v20 = a1;
        v21 = 22;
        goto LABEL_683;
      }

      if (v6 != -16042)
      {
        v68 = -16041;
        goto LABEL_301;
      }
    }

LABEL_305:
    v57 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
    v58 = v57[24];
LABEL_306:
    v125 = GTTraceFunc_argumentBytesWithMap(a2, v58, a1[1]);
    v126 = *(v57 + 1);
    v127 = *(v57 + 4);

    GTResourceTrackerResourceUsageArray(a1, v125, v126, a3, v127);
    return;
  }

  if (v6 > -15340)
  {
    if (v6 <= -14888)
    {
      if (v6 > -15120)
      {
        if (v6 <= -15042)
        {
          switch(v6)
          {
            case -15119:
            case -15118:
              goto LABEL_110;
            case -15117:
              goto LABEL_210;
            case -15115:
            case -15114:
              goto LABEL_236;
            case -15113:
              goto LABEL_218;
            case -15112:
              goto LABEL_95;
            case -15111:
              goto LABEL_317;
            case -15100:
              goto LABEL_219;
            case -15096:
            case -15094:
            case -15093:
            case -15092:
            case -15091:
              goto LABEL_234;
            case -15086:
              goto LABEL_246;
            case -15085:
              goto LABEL_316;
            case -15082:
            case -15081:
              goto LABEL_252;
            default:
              return;
          }

          return;
        }

        if (v6 <= -15018)
        {
          if (v6 != -15041)
          {
            if (v6 == -15035)
            {
LABEL_315:
              v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
              v43 = *a1;
              v44 = a1[1];
              v45 = a1[3];
              ResourceType = 34;
            }

            else
            {
              if (v6 != -15030)
              {
                return;
              }

LABEL_192:
              v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
              v43 = *a1;
              v44 = a1[1];
              v45 = a1[3];
              ResourceType = 71;
            }

            goto LABEL_554;
          }

          goto LABEL_246;
        }

        if (v6 <= -14894)
        {
          if (v6 != -15017)
          {
            v59 = -15016;
LABEL_251:
            if (v6 != v59)
            {
              return;
            }
          }

LABEL_252:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 41;
          goto LABEL_554;
        }

        if (v6 != -14893)
        {
          if (v6 != -14888)
          {
            return;
          }

LABEL_246:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 88;
          goto LABEL_554;
        }

LABEL_302:
        v124 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);

        GTResourceTrackerUsingResourceHeap(a1, v124, a3);
        return;
      }

      if (v6 > -15283)
      {
        if (v6 <= -15218)
        {
          if (v6 > -15274)
          {
            if (v6 == -15273)
            {
              v419 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
              v420 = a1[3];
              v421 = GTTraceFunc_argumentBytesWithMap(a2, v419[24], a1[1]);
              v422 = *(v419 + 2);
              if (v422)
              {
                v423 = v421;
                v425 = *a1;
                v424 = a1[1];
                do
                {
                  v427 = *v423++;
                  v426 = v427;
                  if (v427)
                  {
                    GTResourceTrackerUsingResource(v420, 22, v426, v425, v424);
                  }

                  --v422;
                }

                while (v422);
              }

              return;
            }

            if (v6 != -15254)
            {
              if (v6 == -15253)
              {
                v25 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
                v26 = GTTraceFunc_argumentBytesWithMap(a2, v25[16], a1[1]);
                v27 = *(v25 + 1);
                if (v27)
                {
                  v28 = v26;
                  do
                  {
                    v30 = *v28++;
                    v29 = v30;
                    if (v30)
                    {
                      GTResourceTrackerUsingResidencySet(a1, v29);
                    }

                    --v27;
                  }

                  while (v27);
                }
              }

              return;
            }

            goto LABEL_320;
          }

          if (v6 == -15282)
          {
            v437 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
            v438 = a1[3];
            v439 = GTTraceFunc_argumentBytesWithMap(a2, v437[24], a1[1]);
            v440 = *(v437 + 2);
            if (v440)
            {
              v441 = v439;
              v443 = *a1;
              v442 = a1[1];
              do
              {
                v445 = *v441++;
                v444 = v445;
                if (v445)
                {
                  GTResourceTrackerUsingResource(v438, 22, v444, v443, v442);
                }

                --v440;
              }

              while (v440);
            }

            return;
          }

          v49 = -15275;
LABEL_281:
          if (v6 != v49)
          {
            return;
          }

LABEL_282:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 22;
          goto LABEL_554;
        }

        if (v6 > -15173)
        {
          if (v6 != -15172)
          {
            if (v6 != -15163)
            {
              if (v6 == -15162)
              {
                v62 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
                v63 = GTTraceFunc_argumentBytesWithMap(a2, v62[16], a1[1]);
                v64 = *(v62 + 1);
                if (v64)
                {
                  v65 = v63;
                  do
                  {
                    v67 = *v65++;
                    v66 = v67;
                    if (v67)
                    {
                      GTResourceTrackerUsingResidencySet(a1, v66);
                    }

                    --v64;
                  }

                  while (v64);
                }
              }

              return;
            }

LABEL_320:
            v132 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);

            GTResourceTrackerUsingResidencySet(a1, v132);
            return;
          }

LABEL_285:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 2);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 90;
          goto LABEL_554;
        }

        if (v6 != -15217)
        {
          if (v6 != -15173)
          {
            return;
          }

          goto LABEL_285;
        }

LABEL_290:
        v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v114 = a1[3];
        ResourceType = GTResourceTrackerGetResourceType(*(v113 + 1), *a1);
        v42 = *(v113 + 1);
        v43 = *a1;
        v44 = a1[1];
        v45 = v114;
        goto LABEL_554;
      }

      if (v6 > -15309)
      {
        if (v6 > -15288)
        {
          if (v6 == -15287)
          {
            goto LABEL_314;
          }

          if (v6 == -15285)
          {
            goto LABEL_290;
          }

          v49 = -15284;
          goto LABEL_281;
        }

        if (v6 == -15308)
        {
          goto LABEL_290;
        }

        if (v6 != -15294)
        {
          return;
        }

        v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 2);
        v43 = *a1;
        v44 = a1[1];
        v45 = a1[3];
LABEL_540:
        ResourceType = 53;
        goto LABEL_554;
      }

      if (v6 <= -15311)
      {
        if (v6 == -15339)
        {
          goto LABEL_290;
        }

        if (v6 != -15311)
        {
          return;
        }

        v79 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v80 = tracker_resource_get(a1, 22, *(v79 + 1), a3);
        if (v80)
        {
          *(v80 + 48) = 1;
        }

        v81 = tracker_resource_get(a1, 22, *(v79 + 1), a3);
        if (v81)
        {
          v81[4] = a3;
        }

        v45 = a1[3];
        v42 = *(v79 + 4);
        goto LABEL_539;
      }

      if (v6 == -15310)
      {
        v407 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v408 = tracker_resource_get(a1, 80, *(v407 + 1), a3);
        if (v408)
        {
          *(v408 + 48) = 1;
        }

        v409 = tracker_resource_get(a1, 80, *(v407 + 1), a3);
        if (v409)
        {
          v409[4] = a3;
        }

        v45 = a1[3];
        v42 = *(v407 + 12);
LABEL_539:
        v43 = *a1;
        v44 = a1[1];
        goto LABEL_540;
      }

      v88 = -15309;
LABEL_266:
      if (v6 != v88)
      {
        return;
      }

      goto LABEL_290;
    }

    if (v6 > -7158)
    {
      switch(v6)
      {
        case -6142:
          v529 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 7, *v529, *a1, a1[1]);
          v530 = GTTraceFunc_argumentBytesWithMap(a2, v529[40], a1[1]);
          v531 = *(v529 + 6);
          if (v531)
          {
            v532 = v530;
            do
            {
              v534 = *v532++;
              v533 = v534;
              if (v534)
              {
                GTResourceTrackerResourceRead(a1, 80, v533, a3);
              }

              --v531;
            }

            while (v531);
          }

          v535 = GTTraceFunc_argumentBytesWithMap(a2, v529[64], a1[1]);
          GTResourceTrackerResourceWriteArray(a1, v535, *(v529 + 9), a3);
          v19 = *(v529 + 13);
          goto LABEL_682;
        case -6141:
        case -6139:
        case -6138:
        case -6134:
        case -6133:
        case -6131:
        case -6129:
        case -6128:
        case -6127:
        case -6124:
        case -6123:
        case -6122:
        case -6120:
        case -6119:
        case -6116:
        case -6111:
        case -6110:
        case -6109:
          return;
        case -6140:
          v536 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 11, *v536, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v536[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v536[11], a3);
          v537 = tracker_resource_get(a1, 22, v536[15], a3);
          if (v537)
          {
            v537[4] = a3;
          }

          v19 = v536[19];
          goto LABEL_682;
        case -6137:
          v515 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 11, *v515, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v515[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v515[11], a3);
          v48 = v515[15];
          goto LABEL_638;
        case -6136:
          v143 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 5, *v143, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v143[3], a3);
          v144 = v143[4];
          goto LABEL_643;
        case -6135:
          v509 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v510 = a1[3];
          v511 = *v509;
          v512 = *a1;
          v513 = a1[1];
          v514 = 8;
          goto LABEL_646;
        case -6132:
          v507 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 10, *v507, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v507[11], a3);
          GTResourceTrackerResourceRead(a1, 22, v507[16], a3);
          v48 = v507[21];
          goto LABEL_638;
        case -6130:
          v508 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 10, *v508, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v508[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v508[11], a3);
          v48 = v508[16];
          goto LABEL_638;
        case -6126:
          v509 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v510 = a1[3];
          v511 = *v509;
          v512 = *a1;
          v513 = a1[1];
          v514 = 7;
LABEL_646:
          GTResourceTrackerUsingResource(v510, v514, v511, v512, v513);
          GTResourceTrackerResourceRead(a1, 80, v509[5], a3);
          v48 = v509[7];
          goto LABEL_235;
        case -6125:
          v92 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 4, *v92, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 80, v92[6], a3);
          v93 = v92[8];
          goto LABEL_609;
        case -6121:
          v483 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 7, *v483, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 80, v483[5], a3);
          v19 = v483[7];
          goto LABEL_26;
        case -6118:
          v488 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 4, *v488, *a1, a1[1]);
          v489 = GTTraceFunc_argumentBytesWithMap(a2, v488[48], a1[1]);
          v490 = *(v488 + 7);
          if (v490)
          {
            v491 = v489;
            do
            {
              v493 = *v491++;
              v492 = v493;
              if (v493)
              {
                GTResourceTrackerResourceRead(a1, 80, v492, a3);
              }

              --v490;
            }

            while (v490);
          }

          v494 = GTTraceFunc_argumentBytesWithMap(a2, v488[72], a1[1]);
          v495 = *(v488 + 10);
          if (v495)
          {
            v496 = v494;
            do
            {
              v498 = *v496++;
              v497 = v498;
              if (v498)
              {
                GTResourceTrackerResourceRead(a1, 80, v497, a3);
              }

              --v495;
            }

            while (v495);
          }

          v499 = GTTraceFunc_argumentBytesWithMap(a2, v488[96], a1[1]);
          GTResourceTrackerResourceWriteArray(a1, v499, *(v488 + 13), a3);
          goto LABEL_661;
        case -6117:
          v50 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 8, *v50, *a1, a1[1]);
          v51 = v50[6];
          v52 = a1;
          v53 = 80;
          goto LABEL_111;
        case -6115:
          v500 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 8, *v500, *a1, a1[1]);
          v501 = GTTraceFunc_argumentBytesWithMap(a2, v500[48], a1[1]);
          v502 = *(v500 + 7);
          if (v502)
          {
            v503 = v501;
            do
            {
              v505 = *v503++;
              v504 = v505;
              if (v505)
              {
                GTResourceTrackerResourceRead(a1, 80, v504, a3);
              }

              --v502;
            }

            while (v502);
          }

          v506 = GTTraceFunc_argumentBytesWithMap(a2, v500[72], a1[1]);
          GTResourceTrackerResourceWriteArray(a1, v506, *(v500 + 10), a3);
          v19 = *(v500 + 12);
          goto LABEL_682;
        case -6114:
          v488 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 6, *v488, *a1, a1[1]);
          v517 = GTTraceFunc_argumentBytesWithMap(a2, v488[48], a1[1]);
          v518 = *(v488 + 7);
          if (v518)
          {
            v519 = v517;
            do
            {
              v521 = *v519++;
              v520 = v521;
              if (v521)
              {
                GTResourceTrackerResourceRead(a1, 80, v520, a3);
              }

              --v518;
            }

            while (v518);
          }

          v522 = GTTraceFunc_argumentBytesWithMap(a2, v488[72], a1[1]);
          v523 = *(v488 + 10);
          if (v523)
          {
            v524 = v522;
            do
            {
              v526 = *v524++;
              v525 = v526;
              if (v526)
              {
                GTResourceTrackerResourceRead(a1, 80, v525, a3);
              }

              --v523;
            }

            while (v523);
          }

          GTResourceTrackerResourceRead(a1, 22, *(v488 + 12), a3);
          v527 = tracker_resource_get(a1, 22, *(v488 + 12), a3);
          if (v527)
          {
            v527[4] = a3;
          }

          GTResourceTrackerResourceRead(a1, 22, *(v488 + 13), a3);
          v528 = tracker_resource_get(a1, 22, *(v488 + 13), a3);
          if (v528)
          {
            v528[4] = a3;
          }

LABEL_661:
          v19 = *(v488 + 15);
          goto LABEL_682;
        case -6113:
          v480 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 6, *v480, *a1, a1[1]);
          v481 = v480[3];
          goto LABEL_607;
        case -6112:
          v143 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 5, *v143, *a1, a1[1]);
          v538 = tracker_resource_get(a1, 22, v143[3], a3);
          if (v538)
          {
            v538[4] = a3;
          }

          v539 = tracker_resource_get(a1, 22, v143[4], a3);
          if (v539)
          {
            v539[4] = a3;
          }

          goto LABEL_644;
        case -6108:
          v478 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 5, *v478, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v478[3], a3);
          v479 = v478[5];
          goto LABEL_680;
        case -6107:
          v143 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 6, *v143, *a1, a1[1]);
          v144 = v143[3];
          goto LABEL_643;
        case -6106:
          v478 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 5, *v478, *a1, a1[1]);
          v540 = tracker_resource_get(a1, 22, v478[3], a3);
          if (v540)
          {
            v540[4] = a3;
          }

          v541 = tracker_resource_get(a1, 22, v478[5], a3);
          if (v541)
          {
            v541[4] = a3;
          }

          goto LABEL_681;
        case -6105:
        case -6101:
          v22 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 10, *v22, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v22[11], a3);
          GTResourceTrackerResourceRead(a1, 22, v22[16], a3);
          v23 = tracker_resource_get(a1, 22, v22[21], a3);
          if (v23)
          {
            v23[4] = a3;
          }

          v19 = v22[26];
          goto LABEL_682;
        case -6104:
          v482 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 9, *v482, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v482[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v482[11], a3);
          GTResourceTrackerResourceRead(a1, 22, v482[16], a3);
          v48 = v482[20];
          goto LABEL_638;
        case -6103:
          v486 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 9, *v486, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v486[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v486[11], a3);
          GTResourceTrackerResourceRead(a1, 22, v486[16], a3);
          v487 = tracker_resource_get(a1, 22, v486[20], a3);
          if (v487)
          {
            v487[4] = a3;
          }

          v19 = v486[33];
          goto LABEL_682;
        case -6102:
        case -6100:
          v134 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v135 = a1[3];
          v136 = *v134;
          v137 = *a1;
          v138 = a1[1];
          v139 = 14;
          goto LABEL_334;
        case -6099:
        case -6098:
          v134 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v135 = a1[3];
          v136 = *v134;
          v137 = *a1;
          v138 = a1[1];
          v139 = 13;
LABEL_334:
          GTResourceTrackerUsingResource(v135, v139, v136, v137, v138);
          GTResourceTrackerResourceRead(a1, 22, v134[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v134[8], a3);
          GTResourceTrackerResourceRead(a1, 22, v134[10], a3);
          v140 = tracker_resource_get(a1, 22, v134[12], a3);
          if (v140)
          {
            v140[4] = a3;
          }

          v19 = v134[15];
          goto LABEL_682;
        case -6097:
          v484 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerUsingResource(a1[3], 12, *v484, *a1, a1[1]);
          GTResourceTrackerResourceRead(a1, 22, v484[6], a3);
          GTResourceTrackerResourceRead(a1, 22, v484[8], a3);
          v485 = tracker_resource_get(a1, 22, v484[10], a3);
          if (v485)
          {
            v485[4] = a3;
          }

          v19 = v484[12];
          goto LABEL_682;
        default:
          if (v6 == -7157)
          {
            goto LABEL_330;
          }

          v95 = -7156;
          goto LABEL_329;
      }
    }

    if (v6 <= -14829)
    {
      if (v6 <= -14833)
      {
        if (v6 == -14887)
        {
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 106;
          goto LABEL_554;
        }

        if (v6 == -14886)
        {
          goto LABEL_252;
        }

        v59 = -14885;
        goto LABEL_251;
      }

      if (v6 <= -14831)
      {
        if (v6 != -14832)
        {
          v41 = -14831;
          goto LABEL_222;
        }

LABEL_188:
        v48 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
LABEL_224:
        v55 = a1;
        v56 = 16;
        goto LABEL_639;
      }

      if (v6 != -14830)
      {
        v41 = -14829;
LABEL_222:
        if (v6 != v41)
        {
          return;
        }

        goto LABEL_223;
      }

      goto LABEL_223;
    }

    if (v6 <= -14813)
    {
      if (v6 != -14828)
      {
        if (v6 != -14827 && v6 != -14826)
        {
          return;
        }

        goto LABEL_188;
      }

LABEL_223:
      v94 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 16, *(v94 + 1), a3);
      v48 = *(v94 + 2);
      goto LABEL_224;
    }

    if (v6 <= -10155)
    {
      if (v6 != -14812 && v6 != -14804)
      {
        return;
      }

      v54 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 101, *(v54 + 1), a3);
      v48 = *(v54 + 36);
      v55 = a1;
      v56 = 101;
      goto LABEL_639;
    }

    if (v6 == -10154)
    {
      v141 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 16, *(v141 + 1), a3);
      v142 = GTTraceFunc_argumentBytesWithMap(a2, v141[16], a1[1]);
      if (!v142)
      {
        return;
      }

      goto LABEL_594;
    }

    v95 = -7158;
LABEL_329:
    if (v6 != v95)
    {
      return;
    }

LABEL_330:
    v133 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
    v98 = a1[3];
    v42 = *v133;
LABEL_331:
    v43 = *a1;
    v44 = a1[1];
    v45 = v98;
    ResourceType = 2;
    goto LABEL_554;
  }

  if (v6 > -15475)
  {
    if (v6 <= -15367)
    {
      switch(v6)
      {
        case -15474:
          goto LABEL_219;
        case -15473:
        case -15472:
        case -15471:
        case -15470:
        case -15469:
          goto LABEL_234;
        case -15466:
          goto LABEL_215;
        case -15465:
          goto LABEL_318;
        case -15459:
        case -15454:
        case -15449:
LABEL_29:
          v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v20 = a1;
          v21 = 16;
          goto LABEL_683;
        case -15458:
        case -15453:
        case -15448:
          goto LABEL_89;
        case -15457:
          v292 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v293 = a1[3];
          v294 = GTTraceFunc_argumentBytesWithMap(a2, v292[24], a1[1]);
          v295 = *(v292 + 2);
          if (v295)
          {
            v296 = v294;
            v298 = *a1;
            v297 = a1[1];
            do
            {
              v300 = *v296++;
              v299 = v300;
              if (v300)
              {
                GTResourceTrackerUsingResource(v293, 60, v299, v298, v297);
              }

              --v295;
            }

            while (v295);
          }

          break;
        case -15456:
        case -15451:
        case -15446:
          goto LABEL_310;
        case -15455:
          v283 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v284 = a1[3];
          v285 = GTTraceFunc_argumentBytesWithMap(a2, v283[24], a1[1]);
          v286 = *(v283 + 2);
          if (v286)
          {
            v287 = v285;
            v289 = *a1;
            v288 = a1[1];
            do
            {
              v291 = *v287++;
              v290 = v291;
              if (v291)
              {
                GTResourceTrackerUsingResource(v284, 83, v290, v289, v288);
              }

              --v286;
            }

            while (v286);
          }

          break;
        case -15452:
          v319 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v320 = a1[3];
          v321 = GTTraceFunc_argumentBytesWithMap(a2, v319[24], a1[1]);
          v322 = *(v319 + 2);
          if (v322)
          {
            v323 = v321;
            v325 = *a1;
            v324 = a1[1];
            do
            {
              v327 = *v323++;
              v326 = v327;
              if (v327)
              {
                GTResourceTrackerUsingResource(v320, 60, v326, v325, v324);
              }

              --v322;
            }

            while (v322);
          }

          break;
        case -15450:
          v310 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v311 = a1[3];
          v312 = GTTraceFunc_argumentBytesWithMap(a2, v310[24], a1[1]);
          v313 = *(v310 + 2);
          if (v313)
          {
            v314 = v312;
            v316 = *a1;
            v315 = a1[1];
            do
            {
              v318 = *v314++;
              v317 = v318;
              if (v318)
              {
                GTResourceTrackerUsingResource(v311, 83, v317, v316, v315);
              }

              --v313;
            }

            while (v313);
          }

          break;
        case -15447:
          v301 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v302 = a1[3];
          v303 = GTTraceFunc_argumentBytesWithMap(a2, v301[24], a1[1]);
          v304 = *(v301 + 2);
          if (v304)
          {
            v305 = v303;
            v307 = *a1;
            v306 = a1[1];
            do
            {
              v309 = *v305++;
              v308 = v309;
              if (v309)
              {
                GTResourceTrackerUsingResource(v302, 60, v308, v307, v306);
              }

              --v304;
            }

            while (v304);
          }

          break;
        case -15445:
          v220 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v221 = a1[3];
          v222 = GTTraceFunc_argumentBytesWithMap(a2, v220[24], a1[1]);
          v223 = *(v220 + 2);
          if (v223)
          {
            v224 = v222;
            v226 = *a1;
            v225 = a1[1];
            do
            {
              v228 = *v224++;
              v227 = v228;
              if (v228)
              {
                GTResourceTrackerUsingResource(v221, 83, v227, v226, v225);
              }

              --v223;
            }

            while (v223);
          }

          break;
        case -15415:
          goto LABEL_158;
        case -15401:
        case -15391:
          goto LABEL_282;
        case -15399:
          v238 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v239 = a1[3];
          v240 = GTTraceFunc_argumentBytesWithMap(a2, v238[24], a1[1]);
          v241 = *(v238 + 2);
          if (v241)
          {
            v242 = v240;
            v244 = *a1;
            v243 = a1[1];
            do
            {
              v246 = *v242++;
              v245 = v246;
              if (v246)
              {
                GTResourceTrackerUsingResource(v239, 22, v245, v244, v243);
              }

              --v241;
            }

            while (v241);
          }

          break;
        case -15397:
        case -15396:
        case -15387:
        case -15386:
          goto LABEL_242;
        case -15395:
          v274 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v275 = a1[3];
          v276 = GTTraceFunc_argumentBytesWithMap(a2, v274[24], a1[1]);
          v277 = *(v274 + 2);
          if (v277)
          {
            v278 = v276;
            v280 = *a1;
            v279 = a1[1];
            do
            {
              v282 = *v278++;
              v281 = v282;
              if (v282)
              {
                GTResourceTrackerUsingResource(v275, 75, v281, v280, v279);
              }

              --v277;
            }

            while (v277);
          }

          break;
        case -15394:
          v328 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v329 = a1[3];
          v330 = GTTraceFunc_argumentBytesWithMap(a2, v328[24], a1[1]);
          v331 = *(v328 + 2);
          if (v331)
          {
            v332 = v330;
            v334 = *a1;
            v333 = a1[1];
            do
            {
              v336 = *v332++;
              v335 = v336;
              if (v336)
              {
                GTResourceTrackerUsingResource(v329, 75, v335, v334, v333);
              }

              --v331;
            }

            while (v331);
          }

          break;
        case -15393:
        case -15383:
          goto LABEL_230;
        case -15392:
          v265 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v266 = a1[3];
          v267 = GTTraceFunc_argumentBytesWithMap(a2, v265[24], a1[1]);
          v268 = *(v265 + 2);
          if (v268)
          {
            v269 = v267;
            v271 = *a1;
            v270 = a1[1];
            do
            {
              v273 = *v269++;
              v272 = v273;
              if (v273)
              {
                GTResourceTrackerUsingResource(v266, 80, v272, v271, v270);
              }

              --v268;
            }

            while (v268);
          }

          break;
        case -15389:
          v247 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v248 = a1[3];
          v249 = GTTraceFunc_argumentBytesWithMap(a2, v247[24], a1[1]);
          v250 = *(v247 + 2);
          if (v250)
          {
            v251 = v249;
            v253 = *a1;
            v252 = a1[1];
            do
            {
              v255 = *v251++;
              v254 = v255;
              if (v255)
              {
                GTResourceTrackerUsingResource(v248, 22, v254, v253, v252);
              }

              --v250;
            }

            while (v250);
          }

          break;
        case -15385:
          v337 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v338 = a1[3];
          v339 = GTTraceFunc_argumentBytesWithMap(a2, v337[24], a1[1]);
          v340 = *(v337 + 2);
          if (v340)
          {
            v341 = v339;
            v343 = *a1;
            v342 = a1[1];
            do
            {
              v345 = *v341++;
              v344 = v345;
              if (v345)
              {
                GTResourceTrackerUsingResource(v338, 75, v344, v343, v342);
              }

              --v340;
            }

            while (v340);
          }

          break;
        case -15384:
          v229 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v230 = a1[3];
          v231 = GTTraceFunc_argumentBytesWithMap(a2, v229[24], a1[1]);
          v232 = *(v229 + 2);
          if (v232)
          {
            v233 = v231;
            v235 = *a1;
            v234 = a1[1];
            do
            {
              v237 = *v233++;
              v236 = v237;
              if (v237)
              {
                GTResourceTrackerUsingResource(v230, 75, v236, v235, v234);
              }

              --v232;
            }

            while (v232);
          }

          break;
        case -15382:
          v256 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v257 = a1[3];
          v258 = GTTraceFunc_argumentBytesWithMap(a2, v256[24], a1[1]);
          v259 = *(v256 + 2);
          if (v259)
          {
            v260 = v258;
            v262 = *a1;
            v261 = a1[1];
            do
            {
              v264 = *v260++;
              v263 = v264;
              if (v264)
              {
                GTResourceTrackerUsingResource(v257, 80, v263, v262, v261);
              }

              --v259;
            }

            while (v259);
          }

          break;
        default:
          return;
      }

      return;
    }

    if (v6 <= -15343)
    {
      if (v6 != -15366)
      {
        v76 = -15365;
        goto LABEL_313;
      }

      v474 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 16, *(v474 + 1), a3);
      v475 = tracker_resource_get(a1, 16, *(v474 + 2), a3);
      if (v475)
      {
        v475[4] = a3;
      }

      GTResourceTrackerUsingResource(a1[3], 22, *(v474 + 3), *a1, a1[1]);
      v9 = v474[48];
LABEL_593:
      v142 = GTTraceFunc_argumentBytesWithMap(a2, v9, a1[1]);
LABEL_594:

      GTResourceTrackerUsingAccelerationStructureDescriptor(a1, v142, 0, a3);
      return;
    }

    if (v6 == -15342)
    {
      v476 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v477 = tracker_resource_get(a1, 22, *(v476 + 1), a3);
      if (v477)
      {
        *(v477 + 48) = 1;
      }

      v48 = *(v476 + 1);
      goto LABEL_638;
    }

    v88 = -15340;
    goto LABEL_266;
  }

  if (v6 <= -15648)
  {
    if (v6 > -15757)
    {
      if (v6 > -15750)
      {
        if (v6 > -15727)
        {
          if (v6 != -15726 && v6 != -15723)
          {
            v40 = -15722;
            goto LABEL_255;
          }

LABEL_25:
          v19 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
LABEL_26:
          v20 = a1;
          v21 = 80;
          goto LABEL_683;
        }

        if (v6 != -15749)
        {
          v40 = -15728;
LABEL_255:
          if (v6 != v40)
          {
            return;
          }

          goto LABEL_25;
        }

        goto LABEL_290;
      }

      if (v6 > -15755)
      {
        if (v6 == -15754)
        {
LABEL_263:
          v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
          v43 = *a1;
          v44 = a1[1];
          v45 = a1[3];
          ResourceType = 31;
          goto LABEL_554;
        }

        v78 = -15750;
LABEL_262:
        if (v6 != v78)
        {
          return;
        }

        goto LABEL_263;
      }

      if (v6 != -15756)
      {
        v78 = -15755;
        goto LABEL_262;
      }

      v383 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerUsingResource(a1[3], 31, *(v383 + 1), *a1, a1[1]);
LABEL_533:
      v48 = *(v383 + 4);
      goto LABEL_638;
    }

    if (v6 > -15785)
    {
      if (v6 <= -15783)
      {
        if (v6 == -15784)
        {
          v382 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 80, *(v382 + 1), a3);
          v19 = *(v382 + 3);
          goto LABEL_682;
        }

        v40 = -15783;
        goto LABEL_255;
      }

      if (v6 == -15782)
      {
        goto LABEL_25;
      }

      v59 = -15781;
    }

    else
    {
      if (v6 <= -15793)
      {
        if (v6 != -15819)
        {
          if (v6 != -15818)
          {
            return;
          }

          v57 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          v58 = v57[32];
          goto LABEL_306;
        }

LABEL_276:
        v108 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v109 = GTResourceTrackerGetResourceType(*(v108 + 1), *a1);
        v110 = *(v108 + 1);
        v111 = *(v108 + 4);

        GTResourceTrackerResourceUsage(a1, v109, v110, a3, v111);
        return;
      }

      if (v6 == -15792)
      {
        v383 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        GTResourceTrackerResourceRead(a1, 80, *(v383 + 1), a3);
        goto LABEL_533;
      }

      v59 = -15785;
    }

    goto LABEL_251;
  }

  if (v6 <= -15598)
  {
    switch(v6)
    {
      case -15647:
        v7 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v8 = tracker_resource_get(a1, 16, *(v7 + 1), a3);
        if (v8)
        {
          v8[4] = a3;
        }

        GTResourceTrackerUsingResource(a1[3], 22, *(v7 + 2), *a1, a1[1]);
        v9 = v7[32];
        goto LABEL_593;
      case -15646:
      case -15645:
        goto LABEL_223;
      case -15644:
      case -15643:
      case -15642:
      case -15641:
      case -15640:
      case -15639:
      case -15636:
      case -15628:
      case -15627:
      case -15626:
      case -15625:
      case -15624:
        return;
      case -15638:
        v209 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        GTResourceTrackerResourceRead(a1, 16, *(v209 + 1), a3);
        v210 = tracker_resource_get(a1, 16, *(v209 + 2), a3);
        if (v210)
        {
          v210[4] = a3;
        }

        GTResourceTrackerUsingResource(a1[3], 22, *(v209 + 3), *a1, a1[1]);
        v9 = v209[40];
        goto LABEL_593;
      case -15637:
        goto LABEL_263;
      case -15635:
      case -15630:
        goto LABEL_252;
      case -15634:
        goto LABEL_302;
      case -15633:
        v211 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v212 = GTTraceFunc_argumentBytesWithMap(a2, v211[16], a1[1]);
        v213 = *(v211 + 1);
        if (v213)
        {
          v214 = v212;
          do
          {
            v215 = *v214++;
            GTResourceTrackerUsingResourceHeap(a1, v215, a3);
            --v213;
          }

          while (v213);
        }

        return;
      case -15632:
        goto LABEL_276;
      case -15631:
        goto LABEL_305;
      case -15629:
        goto LABEL_314;
      case -15623:
        goto LABEL_29;
      default:
        if (v6 != -15598)
        {
          return;
        }

        v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
        v43 = *a1;
        v44 = a1[1];
        v45 = a1[3];
        ResourceType = 44;
        break;
    }

    goto LABEL_554;
  }

  if (v6 > -15581)
  {
    if (v6 > -15524)
    {
      if (v6 <= -15522)
      {
        if (v6 != -15523)
        {
          v60 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
          GTResourceTrackerResourceRead(a1, 16, *(v60 + 1), a3);
          v61 = GTTraceFunc_argumentBytesWithMap(a2, v60[32], a1[1]);
          GTResourceTrackerResourceReadMTLArray(a1, v61, a3);
          v48 = *(v60 + 2);
LABEL_638:
          v55 = a1;
          v56 = 22;
LABEL_639:
          v516 = tracker_resource_get(v55, v56, v48, a3);
          if (v516)
          {
            v516[4] = a3;
          }

          return;
        }

LABEL_318:
        v130 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
        v131 = tracker_resource_get(a1, 16, *(v130 + 1), a3);
        if (v131)
        {
          v131[4] = a3;
        }

        goto LABEL_324;
      }

      if (v6 != -15521)
      {
        v76 = -15502;
LABEL_313:
        if (v6 != v76)
        {
          return;
        }
      }

LABEL_314:
      v128 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      GTResourceTrackerResourceRead(a1, 16, *(v128 + 1), a3);
      v48 = *(v128 + 2);
      goto LABEL_638;
    }

    if (v6 == -15580)
    {
      v465 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v466 = a1[3];
      v467 = GTTraceFunc_argumentBytesWithMap(a2, v465[24], a1[1]);
      v468 = *(v465 + 2);
      if (v468)
      {
        v469 = v467;
        v471 = *a1;
        v470 = a1[1];
        do
        {
          v473 = *v469++;
          v472 = v473;
          if (v473)
          {
            GTResourceTrackerUsingResource(v466, 83, v472, v471, v470);
          }

          --v468;
        }

        while (v468);
      }

      return;
    }

    if (v6 != -15552)
    {
      if (v6 != -15524)
      {
        return;
      }

LABEL_215:
      v89 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v90 = tracker_resource_get(a1, 16, *(v89 + 1), a3);
      if (v90)
      {
        v90[4] = a3;
      }

      v91 = GTTraceFunc_argumentBytesWithMap(a2, v89[32], a1[1]);
      GTResourceTrackerResourceReadMTLArray(a1, v91, a3);
      v19 = *(v89 + 2);
      goto LABEL_682;
    }

    v455 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
    GTResourceTrackerResourceRead(a1, 16, *v455, a3);
    v9 = v455[8];
    goto LABEL_593;
  }

  if (v6 <= -15589)
  {
    if (v6 == -15597)
    {
      v456 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
      v457 = a1[3];
      v458 = GTTraceFunc_argumentBytesWithMap(a2, v456[24], a1[1]);
      v459 = *(v456 + 2);
      if (v459)
      {
        v460 = v458;
        v462 = *a1;
        v461 = a1[1];
        do
        {
          v464 = *v460++;
          v463 = v464;
          if (v464)
          {
            GTResourceTrackerUsingResource(v457, 44, v463, v462, v461);
          }

          --v459;
        }

        while (v459);
      }

      return;
    }

    if (v6 == -15592)
    {
      goto LABEL_210;
    }

    v77 = -15591;
LABEL_209:
    if (v6 != v77)
    {
      return;
    }

LABEL_210:
    v69 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
    v70 = v69[1];
    v71 = a1;
    v72 = 22;
LABEL_211:
    GTResourceTrackerResourceRead(v71, v72, v70, a3);
    v48 = v69[3];
    goto LABEL_638;
  }

  if (v6 <= -15583)
  {
    if (v6 != -15588)
    {
      if (v6 != -15583)
      {
        return;
      }

LABEL_89:
      v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
      v43 = *a1;
      v44 = a1[1];
      v45 = a1[3];
      ResourceType = 60;
      goto LABEL_554;
    }

    goto LABEL_314;
  }

  if (v6 != -15582)
  {
LABEL_310:
    v42 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]) + 1);
    v43 = *a1;
    v44 = a1[1];
    v45 = a1[3];
    ResourceType = 83;
    goto LABEL_554;
  }

  v346 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a1[1]);
  v347 = a1[3];
  v348 = GTTraceFunc_argumentBytesWithMap(a2, v346[24], a1[1]);
  v349 = *(v346 + 2);
  if (v349)
  {
    v350 = v348;
    v352 = *a1;
    v351 = a1[1];
    do
    {
      v354 = *v350++;
      v353 = v354;
      if (v354)
      {
        GTResourceTrackerUsingResource(v347, 60, v353, v352, v351);
      }

      --v349;
    }

    while (v349);
  }
}

uint64_t GTTraceDump_getCommandBufferCommitIndex(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  entry = find_entry(a1, &v5, 8uLL, 0);
  if (*entry && (v3 = *(*entry + 32)) != 0)
  {
    return *v3;
  }

  else
  {
    return -1;
  }
}

void GTTraceDump_setCommandBufferInfo(apr_pool_t **a1, uint64_t a2, _OWORD *a3)
{
  v6 = *a1;
  v7 = apr_palloc(*a1, 8uLL);
  *v7 = a2;
  if (a3)
  {
    v8 = apr_palloc(v6, 0x10uLL);
    *v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  apr_hash_set(a1, v7, 8, v8);
}

void GatherCommandQueueResidencySetsUpToIndex(apr_pool_t **a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = atomic_load((v6 + 4));
      v9 = v7 + (v8 >> 6) - 1;
      if (v9 > 0)
      {
        break;
      }

      v6 = *(v6 + 40);
      v7 = v9;
      if (!v6)
      {
        v7 = v9;
        goto LABEL_8;
      }
    }

    v9 = 0;
LABEL_8:
    v10 = v7 | (v9 << 32);
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  while (v6)
  {
    v12 = v6 + 64 + ((HIDWORD(v10) - v10) << 6);
    if ((*(v12 + 15) & 8) == 0 || *v12 >= a4)
    {
      break;
    }

    v13 = *(v12 + 8);
    v14 = v13 + 15161;
    v15 = v13 + 15252;
    v16 = v14 >= 2 && v15 > 1;
    if (!v16 && *(v12 + 15) < 0)
    {
      v11 = *v12;
    }

    v17 = atomic_load((v6 + 4));
    v18 = (HIDWORD(v10) + 1);
    v19 = v10 + (v17 >> 6) - 1;
    v10 = (v18 << 32) | v10;
    if (v18 == v19)
    {
      v10 = (v18 << 32) | v18;
      v6 = *(v6 + 40);
    }
  }

  v20 = *(a2 + 32);
  if (v20)
  {
    v21 = 0;
    while (1)
    {
      v22 = atomic_load((v20 + 4));
      v23 = v21 + (v22 >> 6) - 1;
      if (v23 > 0)
      {
        break;
      }

      v20 = *(v20 + 40);
      v21 = v23;
      if (!v20)
      {
        v21 = v23;
LABEL_28:
        v24 = v21 | (v23 << 32);
        goto LABEL_29;
      }
    }

    v23 = 0;
    goto LABEL_28;
  }

  v24 = 0;
LABEL_29:
  while (v20)
  {
    v25 = v20 + 64;
    v26 = v20 + 64 + ((HIDWORD(v24) - v24) << 6);
    if ((*(v26 + 15) & 8) == 0)
    {
      break;
    }

    if (*v26 < v11)
    {
      goto LABEL_77;
    }

    if (*v26 >= a4)
    {
      if (*(v26 + 15) < 0)
      {
        return;
      }
    }

    else
    {
      v27 = *(v26 + 8);
      if (v27 > -15162)
      {
        if (v27 > -15152)
        {
          if (v27 == -15150)
          {
            goto LABEL_60;
          }

          if (v27 != -15151)
          {
            goto LABEL_77;
          }
        }

        else if (v27 != -15161)
        {
          v28 = -15160;
          goto LABEL_44;
        }
      }

      else if (v27 > -15251)
      {
        if (v27 != -15250)
        {
          v28 = -15249;
LABEL_44:
          if (v27 != v28)
          {
            goto LABEL_77;
          }

LABEL_60:
          v38 = GTTraceFunc_argumentBytesWithMap((v25 + ((HIDWORD(v24) - v24) << 6)), *(v26 + 13), a3);
          v39 = GTTraceFunc_argumentBytesWithMap((v25 + ((HIDWORD(v24) - v24) << 6)), v38[16], a3);
          v40 = *(v26 + 8);
          if ((v40 + 15252) < 2 || (v40 + 15161) < 2 || a5 == 2)
          {
            if (*(v38 + 1))
            {
              v43 = 0;
              v44 = 0;
              do
              {
                v45 = *find_entry(a1, &v39[v43], 8uLL, 0);
                if (!v45 || !*(v45 + 32))
                {
                  if (v39)
                  {
                    v46 = apr_palloc(*a1, 8uLL);
                    *v46 = *&v39[8 * v44];
                  }

                  else
                  {
                    v46 = 0;
                  }

                  apr_hash_set(a1, v46, 8, v46);
                }

                ++v44;
                v43 += 8;
              }

              while (*(v38 + 1) > v44);
            }
          }

          else if (((v40 + 15151) < 2 || (v40 + 15250) <= 1) && !a5 && *(v38 + 1))
          {
            v50 = 0;
            do
            {
              apr_hash_set(a1, v39, 8, 0);
              ++v50;
              v39 += 8;
            }

            while (*(v38 + 1) > v50);
          }

          goto LABEL_77;
        }
      }

      else if (v27 != -15252)
      {
        v28 = -15251;
        goto LABEL_44;
      }

      v29 = GTTraceFunc_argumentBytesWithMap((v25 + ((HIDWORD(v24) - v24) << 6)), *(v26 + 13), a3);
      v30 = v29;
      v31 = *(v26 + 8);
      if ((v31 + 15252) < 2 || (v31 + 15161) < 2 || a5 == 2)
      {
        v34 = *find_entry(a1, v29 + 8, 8uLL, 0);
        if (v34 && *(v34 + 32))
        {
          goto LABEL_77;
        }

        v35 = apr_palloc(*a1, 8uLL);
        *v35 = *(v30 + 1);
        v36 = a1;
        v37 = v35;
      }

      else
      {
        if ((v31 + 15151) >= 2 && (v31 + 15250) > 1 || a5)
        {
          goto LABEL_77;
        }

        v35 = v29 + 8;
        v36 = a1;
        v37 = 0;
      }

      apr_hash_set(v36, v35, 8, v37);
    }

LABEL_77:
    v47 = atomic_load((v20 + 4));
    v48 = v24 + (v47 >> 6);
    v49 = (HIDWORD(v24) + 1);
    v24 = (v49 << 32) | v24;
    if (v49 == v48 - 1)
    {
      v24 = (v49 << 32) | v49;
      v20 = *(v20 + 40);
    }
  }
}

void AccelerationStructureViewerServer::Renderer::requestQueryRays(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v85 = *MEMORY[0x277D85DE8];
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__9206;
  v82 = __Block_byref_object_dispose__9207;
  v83 = [*(a1 + 24) newBufferWithBytes:a4 length:48 * a5 options:0];
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__9206;
  v76 = __Block_byref_object_dispose__9207;
  v77 = [*(a1 + 24) newBufferWithLength:416 * a5 options:0];
  std::mutex::lock((a1 + 48));
  v70 = *(a1 + 16992);
  v71 = *(a1 + 17008);
  v56 = *(a1 + 17016);
  memcpy(__dst, (a1 + 17024), sizeof(__dst));
  v9 = *(a1 + 17576);
  std::mutex::unlock((a1 + 48));
  v10 = AccelerationStructureViewerServer::Renderer::reserveUniformBufferIndex(a1, v9);
  if (v10 != 3)
  {
    v14 = v10;
    v15 = [*(a1 + 17608 + 8 * v10) contents];
    *v15 = v70;
    *(v15 + 16) = v71;
    *(v15 + 24) = v56;
    memcpy((v15 + 32), __dst, 0x1B0uLL);
    v16 = *(a1 + 17640);
    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = v56 | (HIDWORD(v56) << 32);
    v18 = a1 + 17640;
    do
    {
      v19 = *(v16 + 32);
      v20 = v19 >= v17;
      v21 = v19 < v17;
      if (v20)
      {
        v18 = v16;
      }

      v16 = *(v16 + 8 * v21);
    }

    while (v16);
    if (v18 == a1 + 17640)
    {
LABEL_15:
      v24 = 0;
    }

    else
    {
      v22 = *(v18 + 32);
      v23 = v18 + 40;
      if (v17 >= v22)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }
    }

    v25 = *(a1 + 8);
    Intersector = AccelerationStructureViewerServer::Renderer::getIntersector(a1, 4, v24);
    if (*(Intersector + 32))
    {
      v27 = *(a1 + 16840);
      if (v27)
      {
        (*(*v27 + 48))(v27, a1, a2, a3, 0, 0);
      }

      v28 = v79[5];
      v79[5] = 0;

      v29 = v73[5];
      v73[5] = 0;

      v30 = a1;
      v31 = v14;
LABEL_48:
      AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v30, v31, v9);
      goto LABEL_49;
    }

    v32 = Intersector;
    v54 = v9;
    v55 = a2;
    v57 = a3;
    v33 = [*(a1 + 17568) commandBufferWithDescriptor:*(a1 + 17552)];
    [v33 setLabel:@"ASVS Metal Intersector"];
    v53 = v33;
    v34 = [v33 computeCommandEncoder];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASVS Metal Intersector '%@'", &stru_2860BD438];
    [v34 setLabel:v35];

    [v34 setComputePipelineState:v32[1]];
    [v34 setBuffer:*(a1 + 17608 + 8 * v14) offset:0 atIndex:1];
    v36 = *(a1 + 17736);
    if (v36)
    {
      [v34 setAccelerationStructure:v36 atBufferIndex:2];
    }

    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    v65 = 0u;
    v37 = *(a1 + 17744);
    v38 = [v37 countByEnumeratingWithState:&v65 objects:v84 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v66;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v66 != v40)
          {
            objc_enumerationMutation(v37);
          }

          [v34 useResource:*(*(&v65 + 1) + 8 * i) usage:1];
        }

        v39 = [v37 countByEnumeratingWithState:&v65 objects:v84 count:16];
      }

      while (v39);
    }

    v42 = v32[3];
    if (v42)
    {
      [v34 setIntersectionFunctionTable:v42 atBufferIndex:3];
    }

    else
    {
      v43 = v32[2];
      if (!v43)
      {
LABEL_34:
        v52 = v32;
        [v34 setBuffer:v79[5] offset:0 atIndex:4];
        [v34 setBuffer:v73[5] offset:0 atIndex:5];
        [v34 setBuffer:*(a1 + 17752) offset:0 atIndex:6];
        v44 = v25[23];
        if (v25[24] != v44)
        {
          v45 = 0;
          v46 = 0;
          do
          {
            [v34 useResource:*(v44 + v45 + 24) usage:1];
            [v34 useResource:*(v44 + v45 + 40) usage:1];
            [v34 useResource:*(v44 + v45 + 56) usage:1];
            v47 = *(v44 + v45 + 72);
            if (v47)
            {
              [v34 useResource:v47 usage:1];
            }

            v48 = *(v44 + v45 + 88);
            if (v48)
            {
              [v34 useResource:v48 usage:1];
            }

            v49 = *(v44 + v45 + 104);
            if (v49)
            {
              [v34 useResource:v49 usage:1];
            }

            v50 = *(v44 + v45 + 152);
            if (v50)
            {
              [v34 useResource:v50 usage:1];
            }

            v51 = *(v44 + v45 + 168);
            if (v51)
            {
              [v34 useResource:v51 usage:1];
            }

            ++v46;
            v44 = v25[23];
            v45 += 184;
          }

          while (v46 < 0xD37A6F4DE9BD37A7 * ((v25[24] - v44) >> 3));
        }

        [v34 waitForFence:*(a1 + 17528)];
        v63 = a5;
        v64 = vdupq_n_s64(1uLL);
        v61 = [v52[1] maxTotalThreadsPerThreadgroup];
        v62 = v64;
        [v34 dispatchThreads:&v63 threadsPerThreadgroup:&v61];
        [v34 updateFence:*(a1 + 17528)];
        [v34 endEncoding];

        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = ___ZN33AccelerationStructureViewerServer8Renderer16requestQueryRaysE15ASVQueryRayTypeyP6ASVRayj_block_invoke;
        v58[3] = &unk_2796590A8;
        v58[6] = a1;
        v58[7] = v57;
        v59 = v55;
        v60 = a5;
        v58[4] = &v72;
        v58[5] = &v78;
        [v53 addCompletedHandler:v58];
        [v53 commit];

        v30 = a1;
        v31 = v14;
        v9 = v54;
        goto LABEL_48;
      }

      [v34 setVisibleFunctionTable:v43 atBufferIndex:3];
    }

    (*(*v25 + 104))(v25, v34);
    goto LABEL_34;
  }

  v11 = *(a1 + 16840);
  if (v11)
  {
    (*(*v11 + 48))(v11, a1, a2, a3, 0, 0);
  }

  v12 = v79[5];
  v79[5] = 0;

  v13 = v73[5];
  v73[5] = 0;

LABEL_49:
  _Block_object_dispose(&v72, 8);

  _Block_object_dispose(&v78, 8);
}

uint64_t __Block_byref_object_copy__9206(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t AccelerationStructureViewerServer::Renderer::reserveUniformBufferIndex(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  std::mutex::lock((a1 + 48));
  v4 = 0;
  v5 = a1 + 17520;
  while ((*(v5 + v4) & 1) != 0)
  {
    if (++v4 == 3)
    {
      dispatch_semaphore_signal(v3);
      LOBYTE(v4) = -1;
      goto LABEL_6;
    }
  }

  *(v5 + v4) = 1;
LABEL_6:
  std::mutex::unlock((a1 + 48));

  return v4;
}

uint64_t AccelerationStructureViewerServer::Renderer::getIntersector(uint64_t a1, int a2, unint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 48));
  v6 = *(a1 + 17696);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = (a1 + 17696);
  do
  {
    v8 = *(v6 + 8);
    if (v8 >= a2)
    {
      if (v8 <= a2)
      {
        v9 = v6[5];
        v10 = v9 >= a3;
        v11 = v9 < a3;
        if (v10)
        {
          v7 = v6;
        }

        v6 += v11;
      }

      else
      {
        v7 = v6;
      }
    }

    else
    {
      ++v6;
    }

    v6 = *v6;
  }

  while (v6);
  if (v7 == (a1 + 17696) || (v12 = *(v7 + 8), v12 > a2) || v12 >= a2 && v7[5] > a3)
  {
LABEL_14:
    operator new();
  }

  v13 = v7[6];
  std::mutex::unlock((a1 + 48));
  return v13;
}

void AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(uint64_t a1, unsigned int a2, void *a3)
{
  if (a2 != 3)
  {
    dsema = a3;
    std::mutex::lock((a1 + 48));
    *(a1 + a2 + 17520) = 0;
    std::mutex::unlock((a1 + 48));
    dispatch_semaphore_signal(dsema);
  }
}

void ___ZN33AccelerationStructureViewerServer8Renderer16requestQueryRaysE15ASVQueryRayTypeyP6ASVRayj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN33AccelerationStructureViewerServer8Renderer16requestQueryRaysE15ASVQueryRayTypeyP6ASVRayj_block_invoke_2;
  block[3] = &unk_279659080;
  v4 = *(a1 + 56);
  v8 = v2;
  v9 = v4;
  v5 = *(a1 + 68);
  v10 = *(a1 + 64);
  v11 = v5;
  v7 = *(a1 + 32);
  dispatch_async(v3, block);
}

void ___ZN33AccelerationStructureViewerServer8Renderer16requestQueryRaysE15ASVQueryRayTypeyP6ASVRayj_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 16840);
  if (v3)
  {
    (*(*v3 + 48))(v3, v2, *(a1 + 64), *(a1 + 56), [*(*(*(a1 + 32) + 8) + 40) contents], *(a1 + 68));
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

id **std::unique_ptr<AccelerationStructureViewerServer::Intersector>::~unique_ptr[abi:nn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x2530332C0](v2, 0x1080C40EC4B14DALL);
  }

  return a1;
}

BOOL AccelerationStructureViewerServer::Renderer::requestSample()
{
  v0 = MEMORY[0x28223BE20]();
  v192 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = objc_autoreleasePoolPush();
  v145 = 0;
  v146 = &v145;
  v147 = 0x3032000000;
  v148 = __Block_byref_object_copy__9206;
  v149 = __Block_byref_object_dispose__9207;
  v150 = 0;
  std::mutex::lock((v0 + 48));
  if (!*(v0 + 17712))
  {
    if (!*(v0 + 17752))
    {
      goto LABEL_34;
    }

    if (*(v0 + 16840))
    {
      v36 = atomic_load((v0 + 40));
      v37 = atomic_load((v0 + 32));
      if (v36 >= v37 + 32)
      {
        goto LABEL_34;
      }
    }
  }

  v4 = 120;
  while (*(v0 + v4) >= *(v0 + 17512))
  {
    v4 += 8;
    if (v4 == 376)
    {
      atomic_store(0, (v0 + 17544));
      break;
    }
  }

  if (*(v0 + 16996) && *(v0 + 16840))
  {
    objc_storeStrong(v146 + 5, *(v0 + 17576));
    std::mutex::unlock((v0 + 48));
    v5 = AccelerationStructureViewerServer::Renderer::reserveUniformBufferIndex(v0, v146[5]);
    if (v5 != 3)
    {
      v6 = v5;
      Current = CFAbsoluteTimeGetCurrent();
      std::mutex::lock((v0 + 48));
      v127 = *(v0 + 112);
      v115 = *(v0 + 16840);
      v113 = *(v0 + 16849);
      v114 = *(v0 + 17504);
      v8 = *(v0 + 16852);
      v138 = *(v0 + 16856);
      v134 = *(v0 + 16880);
      v135 = *(v0 + 16864);
      v132 = *(v0 + 16912);
      v133 = *(v0 + 16896);
      v125 = *(v0 + 16944);
      v126 = *(v0 + 16928);
      v130 = *(v0 + 16976);
      v131 = *(v0 + 16960);
      v118 = *(v0 + 16992);
      v9 = *(v0 + 16996);
      v10 = *(v0 + 16997);
      *&v191[15] = *(v0 + 17012);
      *v191 = v10;
      v128 = *(v0 + 17016);
      v11 = *(v0 + 17024);
      v117 = *(v0 + 17025);
      v119 = *(v0 + 17033);
      v121 = *(v0 + 17034);
      v122 = *(v0 + 17035);
      v116 = *(v0 + 17036);
      v12 = *(v0 + 17040);
      v123 = *(v0 + 17045);
      v124 = *(v0 + 17044);
      memcpy(v190, (v0 + 17046), sizeof(v190));
      memcpy(v144, (v0 + 8632), sizeof(v144));
      memcpy(__dst, (v0 + 440), sizeof(__dst));
      std::mutex::unlock((v0 + 48));
      v13 = v9 - 1;
      v14 = v9 - 1 + v138.i32[0];
      if (v14 < v9)
      {
        goto LABEL_78;
      }

      v15 = v13 + v138.i32[1];
      if (v13 + v138.i32[1] < v9)
      {
        goto LABEL_78;
      }

      v16 = *(v0 + 17584 + 8 * v6);
      if (!v16)
      {
        goto LABEL_78;
      }

      v112 = v11;
      v17 = [v16 contents];
      if (!v17)
      {
        goto LABEL_78;
      }

      v19 = v17;
      v111 = v14 / v9;
      v17[1].i32[0] = v8;
      *v18.i32 = v9;
      v20 = vdup_lane_s32(v18, 0);
      v110 = v15 / v9;
      v17[2] = vdiv_f32(v20, vcvt_f32_u32(v138));
      ++v17->i32[0];
      v21 = CFAbsoluteTimeGetCurrent();
      v22 = 0;
      v23 = v9 * v9;
      v24 = v19->i32[0] % (v9 * v9);
      if (v9 * v9 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v23;
      }

      v26 = 1.79769313e308;
      do
      {
        if (v21 - *&v144[v22] > 1.0 && __dst[v22] < v26)
        {
          v26 = __dst[v22];
          LOWORD(v24) = v22;
        }

        ++v22;
      }

      while (v25 != v22);
      v27 = v24;
      do
      {
        if (v21 - *&v144[v24] >= 1.0)
        {
          break;
        }

        v24 = (v24 + 1) % v23;
      }

      while (v24 != v27);
      v28 = v24;
      v19->i32[1] = v24;
      *v19[8].f32 = v126;
      *v19[10].f32 = v125;
      *v19[12].f32 = v131;
      *v19[14].f32 = v130;
      v193.columns[1] = v134;
      v193.columns[0] = v135;
      v193.columns[3] = v132;
      v193.columns[2] = v133;
      v194 = __invert_f4(v193);
      v29 = 0;
      *v19[24].f32 = v194;
      v30 = *v19[8].f32;
      v31 = *v19[10].f32;
      v32 = *v19[12].f32;
      v33 = *v19[14].f32;
      v151 = v135;
      v152 = v134;
      v153 = v133;
      v154 = v132;
      do
      {
        *&v172[v29] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v151 + v29))), v31, *&v151.f32[v29 / 4], 1), v32, *(&v151 + v29), 2), v33, *(&v151 + v29), 3);
        v29 += 16;
      }

      while (v29 != 64);
      v195 = *v172;
      *v19[16].f32 = *v172;
      *v19[18].f32 = v195.columns[1];
      *v19[20].f32 = v195.columns[2];
      *v19[22].f32 = v195.columns[3];
      *v19[32].f32 = __invert_f4(v195);
      v34 = vdivq_f32(v130, v131);
      v19[3].i32[0] = v34.i32[2];
      v19[3].f32[1] = vmuls_lane_f32(v131.f32[2], v34, 2) / (v131.f32[2] + 1.0);
      if (v9 <= 7)
      {
        v35 = v138;
        if (v9 == 2)
        {
          v40 = v24;
          v41 = &ASVDither2x2;
        }

        else
        {
          if (v9 != 4)
          {
            goto LABEL_44;
          }

          v40 = v24;
          v41 = &ASVDither4x4;
        }
      }

      else
      {
        v35 = v138;
        if (v9 == 8)
        {
          v40 = v24;
          v41 = &ASVDither8x8;
        }

        else
        {
          if (v9 != 16)
          {
            if (v9 == 32)
            {
              v28 = ASVDither32x32[v24];
            }

LABEL_44:
            v42.f32[0] = (v28 % v9);
            v42.f32[1] = (v28 / v9);
            v19[4] = v20;
            v19[5] = v42;
            v43.i64[0] = v35.u32[0];
            v43.i64[1] = v35.u32[1];
            __asm { FMOV            V1.2D, #1.0 }

            v19[6] = vcvt_f32_f64(vdivq_f64(_Q1, vcvtq_f64_u64(v43)));
            v49 = [*(v0 + 17608 + 8 * v6) contents];
            *v49 = v118;
            *(v49 + 4) = v9;
            *(v49 + 5) = *v191;
            *(v49 + 20) = *&v191[15];
            *(v49 + 24) = v128;
            *(v49 + 32) = v112;
            *(v49 + 33) = v117;
            *(v49 + 41) = v119;
            *(v49 + 42) = v121;
            *(v49 + 43) = v122;
            *(v49 + 44) = v116;
            *(v49 + 48) = v12;
            *(v49 + 52) = v124;
            *(v49 + 53) = v123;
            memcpy((v49 + 54), v190, 0x19AuLL);
            v50 = *(v0 + 17640);
            if (v50)
            {
              v51 = v128 | (HIDWORD(v128) << 32);
              v52 = v0 + 17640;
              do
              {
                v53 = *(v50 + 32);
                _CF = v53 >= v51;
                v54 = v53 < v51;
                if (_CF)
                {
                  v52 = v50;
                }

                v50 = *(v50 + 8 * v54);
              }

              while (v50);
              v55 = v127;
              if (v52 == v0 + 17640)
              {
                v58 = 0;
              }

              else
              {
                v56 = *(v52 + 32);
                v57 = v52 + 40;
                if (v51 >= v56)
                {
                  v58 = v57;
                }

                else
                {
                  v58 = 0;
                }
              }
            }

            else
            {
              v58 = 0;
              v55 = v127;
            }

            if (v55 < 3)
            {
              if (*(v0 + 17536))
              {
LABEL_61:
                v120 = (v0 + 17536);
                if ((v112 & 1) == 0)
                {
                  v129 = 1;
                  v59 = 3;
                  goto LABEL_72;
                }

                Intersector = AccelerationStructureViewerServer::Renderer::getIntersector(v0, 2, v58);
                v61 = v0 + 17656;
                v62 = v0;
                v63 = 3;
LABEL_67:
                v64 = AccelerationStructureViewerServer::Renderer::getIntersector(v62, v63, v61);
                if (!v64)
                {
                  goto LABEL_78;
                }

                v65 = v64;
                v129 = 1;
LABEL_73:
                if (Intersector)
                {
                  if (*(Intersector + 32))
                  {
                    if (v115 && (v114 & 1) == 0)
                    {
                      (*(*v115 + 80))();
                      std::mutex::lock((v0 + 48));
                      *(v0 + 17504) = 1;
                      std::mutex::unlock((v0 + 48));
                    }

                    goto LABEL_78;
                  }

                  if (v114 && v115)
                  {
                    (*(*v115 + 88))(v115, v0);
                    std::mutex::lock((v0 + 48));
                    *(v0 + 17504) = 0;
                    std::mutex::unlock((v0 + 48));
                    goto LABEL_83;
                  }

                  if (*(Intersector + 8))
                  {
LABEL_83:
                    v172[0] = 0;
                    v186 = 0u;
                    v187 = 0u;
                    v188 = 0u;
                    v189 = 0;
                    v66 = v124;
                    if (v124 <= 1)
                    {
                      v66 = 1;
                    }

                    v172[16] = v66;
                    v67 = v123;
                    if (v123 <= 1)
                    {
                      v67 = 1;
                    }

                    v172[17] = v67;
                    memcpy(&v172[24], &v190[2], 0x198uLL);
                    *&v172[4] = v12;
                    v172[1] = v112 & 1;
                    *&v172[8] = atomic_fetch_add((v0 + 40), 1uLL);
                    v173 = v9;
                    v174 = v113;
                    v175 = v24;
                    v176 = v8;
                    v177 = v138;
                    v178 = v135;
                    v179 = v134;
                    v180 = v133;
                    v181 = v132;
                    v182 = v126;
                    v183 = v125;
                    v184 = v131;
                    v185 = v130;
                    v68 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:70 width:v111 height:v110 mipmapped:0];
                    [v68 setPixelFormat:55];
                    [v68 setStorageMode:2];
                    [v68 setUsage:3];
                    v69 = [*(v0 + 24) newTextureWithDescriptor:v68];
                    v70 = *(&v186 + 1);
                    *(&v186 + 1) = v69;

                    [*(&v186 + 1) setLabel:@"ASVBVH-PreviousDepth"];
                    if (v129)
                    {
                      if (v122)
                      {
                        v71 = 113;
                      }

                      else
                      {
                        v71 = 123;
                      }

                      [v68 setPixelFormat:v71];
                      [v68 setUsage:3];
                      [v68 setStorageMode:2];
                      v72 = [*(v0 + 24) newTextureWithDescriptor:v68];
                      v73 = v187;
                      *&v187 = v72;

                      [v187 setLabel:@"ASVBVH-Traversals"];
                    }

                    else
                    {
                      v74 = v187;
                      *&v187 = 0;
                    }

                    if (v127 < 0xB)
                    {
                      [v68 setPixelFormat:123];
                      [v68 setStorageMode:2];
                      [v68 setUsage:3];
                      v80 = [*(v0 + 24) newTextureWithDescriptor:v68];
                      v81 = *(&v187 + 1);
                      *(&v187 + 1) = v80;

                      [*(&v187 + 1) setLabel:@"ASVBVH-Hit"];
                      if (v127 >= 3 && (v121 & 1) != 0)
                      {
                        [v68 setPixelFormat:123];
                        [v68 setStorageMode:2];
                        [v68 setUsage:3];
                        v82 = [*(v0 + 24) newTextureWithDescriptor:v68];
                        v83 = v188;
                        *&v188 = v82;

                        [v188 setLabel:@"ASVBVH-Data"];
                      }

                      else
                      {
                        v84 = v188;
                        *&v188 = 0;
                      }
                    }

                    else
                    {
                      if (v172[16] != 1)
                      {
                        if (v122)
                        {
                          v75 = 125;
                        }

                        else
                        {
                          v75 = 90;
                        }

                        [v68 setPixelFormat:v75];
                        [v68 setStorageMode:2];
                        [v68 setUsage:3];
                        v76 = [*(v0 + 24) newTextureWithDescriptor:v68];
                        v77 = *(&v188 + 1);
                        *(&v188 + 1) = v76;

                        [*(&v188 + 1) setLabel:@"ASVBVH-Material"];
                      }

                      if (v172[17] != 1)
                      {
                        [v68 setPixelFormat:13];
                        [v68 setStorageMode:2];
                        [v68 setUsage:3];
                        v78 = [*(v0 + 24) newTextureWithDescriptor:v68];
                        v79 = v189;
                        v189 = v78;

                        [v189 setLabel:@"ASVBVH-SelectionMask"];
                      }
                    }

                    std::mutex::lock((v0 + 48));
                    *(v0 + 2 * (v172[8] & 0x1F) + 376) = v24;
                    *(v0 + 8632 + 8 * v24) = CFAbsoluteTimeGetCurrent();
                    std::mutex::unlock((v0 + 48));
                    if ((*Intersector - 2) >= 4)
                    {
                      if (*Intersector >= 2u)
                      {
                        v38 = 0;
LABEL_150:

                        AccelerationStructureViewer::Sample::~Sample(v172);
                        goto LABEL_36;
                      }

                      v87 = *(v0 + 8);
                      v88 = [v2 commandBufferWithDescriptor:*(v0 + 17552)];
                      [v88 setLabel:@"ASVS Generic Intersector"];
                      v139 = v88;
                      v89 = [v88 computeCommandEncoder];
                      v90 = MEMORY[0x277CCACA8];
                      [*(Intersector + 8) label];
                      v92 = v91 = Intersector;
                      v93 = [v90 stringWithFormat:@"ASV BVH HeatMap '%@'", v92];
                      [v89 setLabel:v93];

                      [v89 setComputePipelineState:*(v91 + 8)];
                      [v89 setTexture:*(&v186 + 1) atIndex:1];
                      [v89 setTexture:v187 atIndex:2];
                      [v89 setTexture:*(&v187 + 1) atIndex:3];
                      [v89 setTexture:v188 atIndex:4];
                      [v89 setTexture:*(&v188 + 1) atIndex:5];
                      [v89 setTexture:v189 atIndex:6];
                      [v89 setBuffer:*(v0 + 17584 + 8 * v6) offset:0 atIndex:0];
                      [v89 setBuffer:*(v0 + 17608 + 8 * v6) offset:0 atIndex:1];
                      v94 = *(v0 + 17736);
                      if (v94)
                      {
                        [v89 setAccelerationStructure:v94 atBufferIndex:3];
                      }

                      v136 = v68;
                      v95 = *(v91 + 16);
                      if (v95)
                      {
                        [v89 setVisibleFunctionTable:v95 atBufferIndex:4];
                        (*(*v87 + 104))(v87, v89);
                      }

                      [v89 setBuffer:*(v0 + 17752) offset:0 atIndex:5];
                      v96 = v87[23];
                      if (v87[24] != v96)
                      {
                        v97 = 0;
                        v98 = 0;
                        do
                        {
                          [v89 useResource:*(v96 + v97 + 24) usage:1];
                          [v89 useResource:*(v96 + v97 + 40) usage:1];
                          [v89 useResource:*(v96 + v97 + 56) usage:1];
                          v99 = *(v96 + v97 + 72);
                          if (v99)
                          {
                            [v89 useResource:v99 usage:1];
                          }

                          v100 = *(v96 + v97 + 88);
                          if (v100)
                          {
                            [v89 useResource:v100 usage:1];
                          }

                          v101 = *(v96 + v97 + 104);
                          if (v101)
                          {
                            [v89 useResource:v101 usage:1];
                          }

                          v102 = *(v96 + v97 + 152);
                          if (v102)
                          {
                            [v89 useResource:v102 usage:1];
                          }

                          v103 = *(v96 + v97 + 168);
                          if (v103)
                          {
                            [v89 useResource:v103 usage:1];
                          }

                          ++v98;
                          v96 = v87[23];
                          v97 += 184;
                        }

                        while (v98 < 0xD37A6F4DE9BD37A7 * ((v87[24] - v96) >> 3));
                      }

                      v151.i64[0] = v111;
                      v151.i64[1] = v110;
                      v38 = 1;
                      v152.i64[0] = 1;
                      v141 = vdupq_n_s64(8uLL);
                      v142 = 1;
                      [v89 dispatchThreads:&v151 threadsPerThreadgroup:&v141];
                      [v89 endEncoding];

                      AccelerationStructureViewer::Sample::Sample(v155, v172);
                      v85 = v139;
                      AccelerationStructureViewerServer::Renderer::commitSample(v0, v6, v155, v139, v146[5], Current);
                      AccelerationStructureViewer::Sample::~Sample(v155);
                      v68 = v136;
LABEL_149:

                      goto LABEL_150;
                    }

                    v85 = [v2 commandBufferWithDescriptor:*(v0 + 17552)];
                    [v85 setLabel:@"ASVS Metal Intersector"];
                    if (*(v0 + 17536))
                    {
                      if (v112)
                      {
                        AccelerationStructureViewer::Sample::Sample(v171, v172);
                        v86 = AccelerationStructureViewerServer::Renderer::metalIntersectorPass(v0, v6, v171, v85, v65, v49, 0, 0);
                        AccelerationStructureViewer::Sample::~Sample(v171);
                        if (!v86)
                        {
                          AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v0, v6, v146[5]);
                          v38 = 0;
                          goto LABEL_149;
                        }
                      }

                      else
                      {
                        v86 = 0;
                      }

                      AccelerationStructureViewer::Sample::Sample(v170, v172);
                      v140 = v85;
                      v108 = AccelerationStructureViewerServer::Renderer::metalIntersectorPass(v0, v6, v170, v85, Intersector, v49, 1, 1);
                      AccelerationStructureViewer::Sample::~Sample(v170);
                      v38 = v108 != 0;
                      if (v108)
                      {
                        if (*Intersector == 3 || (v112 & 1) != 0)
                        {
                          v137 = v68;
                          if ((v112 & 1) == 0)
                          {
                            v109 = v108;

                            v86 = v109;
                          }

                          v159[0] = MEMORY[0x277D85DD0];
                          v159[1] = 3321888768;
                          v159[2] = ___ZN33AccelerationStructureViewerServer8Renderer13requestSampleEPU26objcproto15MTLCommandQueue11objc_object_block_invoke;
                          v159[3] = &unk_2860BC520;
                          v165 = v0;
                          AccelerationStructureViewer::Sample::Sample(v160, v172);
                          v161 = v2;
                          v86 = v86;
                          v162 = v86;
                          v168 = v6;
                          v166 = v49;
                          v163 = v108;
                          v167 = Current;
                          v164 = &v145;
                          [v140 addCompletedHandler:v159];
                          [v140 commit];

                          AccelerationStructureViewer::Sample::~Sample(v160);
                          v68 = v137;
                        }

                        else
                        {
                          if (v86 != v108)
                          {
                            AccelerationStructureViewerServer::Profiler::finishSkipFrame(*v120, v108);
                          }

                          AccelerationStructureViewer::Sample::Sample(v169, v172);
                          AccelerationStructureViewerServer::Renderer::commitSample(v0, v6, v169, v140, v146[5], Current);
                          AccelerationStructureViewer::Sample::~Sample(v169);
                        }
                      }

                      else
                      {
                        AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v0, v6, v146[5]);
                      }

                      v85 = v140;
                      goto LABEL_149;
                    }

                    AccelerationStructureViewer::Sample::Sample(v158, v172);
                    v104 = Intersector;
                    v105 = v85;
                    v106 = AccelerationStructureViewerServer::Renderer::metalIntersectorPass(v0, v6, v158, v85, v104, v49, 1, v129 & v112 ^ 1);
                    AccelerationStructureViewer::Sample::~Sample(v158);
                    if (v106)
                    {
                      if ((v129 & v112) == 0)
                      {
LABEL_133:
                        AccelerationStructureViewer::Sample::Sample(v156, v172);
                        AccelerationStructureViewerServer::Renderer::commitSample(v0, v6, v156, v105, v146[5], Current);
                        AccelerationStructureViewer::Sample::~Sample(v156);
                        v38 = 1;
LABEL_144:

                        v85 = v105;
                        goto LABEL_149;
                      }

                      AccelerationStructureViewer::Sample::Sample(v157, v172);
                      v107 = AccelerationStructureViewerServer::Renderer::metalIntersectorPass(v0, v6, v157, v105, v65, v49, 0, 1);
                      AccelerationStructureViewer::Sample::~Sample(v157);
                      if (v107)
                      {

                        goto LABEL_133;
                      }
                    }

                    AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v0, v6, v146[5]);
                    v38 = 0;
                    goto LABEL_144;
                  }
                }

LABEL_78:
                AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v0, v6, v146[5]);
                goto LABEL_35;
              }
            }

            else
            {
              if (*(v0 + 17536))
              {
                if ((v119 & 1) == 0)
                {
                  v120 = (v0 + 17536);
                  v129 = 0;
                  v59 = 2;
LABEL_72:
                  Intersector = AccelerationStructureViewerServer::Renderer::getIntersector(v0, v59, v58);
                  v65 = 0;
                  goto LABEL_73;
                }

                goto LABEL_61;
              }

              if ((v119 & 1) == 0)
              {
                v120 = (v0 + 17536);
                v129 = 0;
                goto LABEL_71;
              }
            }

            v120 = (v0 + 17536);
            if (v112)
            {
              Intersector = AccelerationStructureViewerServer::Renderer::getIntersector(v0, 2, v58);
              v61 = v0 + 17656;
              v62 = v0;
              v63 = 5;
              goto LABEL_67;
            }

            v129 = 1;
LABEL_71:
            v59 = 5;
            goto LABEL_72;
          }

          v40 = v24;
          v41 = &ASVDither16x16;
        }
      }

      v28 = v41[v40];
      goto LABEL_44;
    }
  }

  else
  {
LABEL_34:
    std::mutex::unlock((v0 + 48));
  }

LABEL_35:
  v38 = 0;
LABEL_36:
  _Block_object_dispose(&v145, 8);

  objc_autoreleasePoolPop(v3);
  return v38;
}

void *AccelerationStructureViewer::Sample::Sample(void *a1, uint64_t a2)
{
  memcpy(a1, a2, 0x240uLL);
  v4 = *(a2 + 600);
  if (v4)
  {
    if (v4 == a2 + 576)
    {
      a1[75] = a1 + 72;
      (*(**(a2 + 600) + 24))(*(a2 + 600));
    }

    else
    {
      a1[75] = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    a1[75] = 0;
  }

  a1[76] = *(a2 + 608);
  a1[77] = *(a2 + 616);
  a1[78] = *(a2 + 624);
  a1[79] = *(a2 + 632);
  a1[80] = *(a2 + 640);
  a1[81] = *(a2 + 648);
  return a1;
}

void AccelerationStructureViewerServer::Renderer::metalIntersectorPass(void *a1, unsigned int a2, uint64_t a3, void *a4, uint64_t a5, _DWORD *a6, int a7, int a8)
{
  v135[7] = *MEMORY[0x277D85DE8];
  v14 = a4;
  v113 = a1[1];
  v15 = [v14 computeCommandEncoder];
  v16 = MEMORY[0x277CCACA8];
  v17 = [*(a5 + 8) label];
  v18 = [v16 stringWithFormat:@"ASVS Metal Intersector '%@'", v17];
  [v15 setLabel:v18];

  v116 = a3;
  v117 = v14;
  v115 = a2;
  if (*a5 == 3)
  {
    [*(a5 + 8) maxTotalThreadsPerThreadgroup];
    v19 = a1[2192];
    v110 = a2;
    v107 = v15;
    v20 = (3 * *(a3 + 440) * *(a3 + 444)) / *(v19 + 8);
    a6[2] = [*(a3 + 608) width];
    a6[3] = [*(a3 + 608) height];
    v21 = [*(a3 + 608) width];
    a6[4] = [*(a3 + 608) height] * v21;
    a6[5] = v20;
    v22 = 4 * *(v19 + 8) * v20;
    v108 = v19 + 112;
    v23 = *(v19 + 112 + 8 * a2);
    if (!v23 || [v23 length] < v22)
    {
      v24 = [*v19 newBufferWithLength:v22 options:0];
      v25 = *(v108 + 8 * a2);
      *(v108 + 8 * a2) = v24;
    }

    std::mutex::lock((v19 + 320));
    if (*(v19 + 432))
    {
      ++*(v19 + 436);
      std::mutex::unlock((v19 + 320));
      v133 = 0;
      memset(v132.__cv_.__opaque, 0, sizeof(v132.__cv_.__opaque));
      v132.__cv_.__sig = 1018212795;
      v134 = 0u;
      memset(v135, 0, 24);
      operator new();
    }

    v36 = *v19;
    v37 = *(v19 + 760);
    *(v19 + 760) = 0;

    v38 = *(v19 + 752);
    *(v19 + 752) = 0;

    GRCReleaseAllCounterSourceGroup();
    context = objc_autoreleasePoolPush();
    v39 = GRCCopyAllCounterSourceGroup();
    v40 = *(v19 + 752);
    *(v19 + 752) = v39;

    v41 = *(v19 + 752);
    if (!v41 || ![v41 count])
    {
      goto LABEL_80;
    }

    v104 = [*(v19 + 752) firstObject];
    v42 = [v104 sourceList];
    v43 = *(v19 + 760);
    *(v19 + 760) = v42;

    v44 = *(v19 + 760);
    if (!v44 || ![v44 count])
    {
LABEL_79:

LABEL_80:
      objc_autoreleasePoolPop(context);
LABEL_81:

      NSLog(&cfstr_UnableToStartS.isa);
      v97 = *(v108 + 8 * v110);
      *(v108 + 8 * v110) = 0;

      std::mutex::unlock((v19 + 320));
      [v107 endEncoding];
      v95 = 0;
      goto LABEL_82;
    }

    v103 = v36;
    obj = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    location = (v19 + 760);
    v45 = *(v19 + 760);
    v46 = [v45 countByEnumeratingWithState:&v122 objects:&v132 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v123;
      while (2)
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v123 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v122 + 1) + 8 * i);
          if (![v50 ringBufferNum])
          {
            v96 = v45;
            goto LABEL_76;
          }

          v51 = [v50 name];
          v52 = [v51 containsString:@"APS_USC"];

          if (v52)
          {
            [obj addObject:v50];
            *(v19 + 848) = [obj count] - 1;
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v122 objects:&v132 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }
    }

    v14 = v117;
    if ([obj count])
    {
      objc_storeStrong(location, obj);
      *(v19 + 768) = [v104 sampleMarker];
      v130[0] = @"RingBufferSizeInKB";
      v130[1] = @"SyncDrainMode";
      v131[0] = &unk_2860D69C8;
      v131[1] = &unk_2860D69E0;
      v130[2] = @"SystemTimePeriod";
      v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v19 + 808)];
      v130[3] = @"ProfileControl";
      v131[2] = v53;
      v131[3] = &unk_2860D6358;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:4];
      v55 = *(v19 + 824);
      *(v19 + 824) = v54;

      v56 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      v57 = *(v19 + 832);
      *(v19 + 832) = v56;

      v58 = *(v19 + 832);
      v59 = MEMORY[0x277D0AF30];
      v128[0] = @"TileTracing";
      v128[1] = @"ESLInstTracing";
      v129[0] = &unk_2860D69F8;
      v129[1] = &unk_2860D69F8;
      v128[2] = @"CountPeriod";
      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v19 + 812)];
      v129[2] = v60;
      v128[3] = @"PulsePeriod";
      v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v19 + 816)];
      v129[3] = v61;
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:4];
      v63 = [v59 selectWithName:@"KickTracing" options:v62];
      [v58 addObject:v63];

      agxps_load_counter_obfuscation_map("/AppleInternal/Library/AGX/AGXRawCounterMapping.csv");
      v64 = agxps_counter_deobfuscate_name("_bc236dcf3744edf6bcf329ae47088528b35ea5e0beac601cf6781545eb2327cc");
      v65 = agxps_counter_deobfuscate_name("_dc9d2c02b3df41ad60f6512a3823b2d0f9b735ae9c41650c4396bac13a7a3c5e");
      v66 = [MEMORY[0x277CBEB18] arrayWithCapacity:20];
      v67 = *(v19 + 840);
      *(v19 + 840) = v66;

      v68 = 0;
      v127[0] = v64;
      v127[1] = v65;
      do
      {
        v69 = *(v19 + 840);
        v70 = MEMORY[0x277D0AF28];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:v127[v68]];
        v72 = [v70 selectWithName:v71 options:0];
        [v69 addObject:v72];

        ++v68;
      }

      while (v68 != 2);
      [v104 setOptions:&unk_2860D6380];
      v73 = [*(v19 + 760) objectAtIndexedSubscript:*(v19 + 848)];
      if ([v73 requestTriggers:*(v19 + 832) firstErrorIndex:0])
      {
        v127[0] = 0;
        v14 = v117;
        if ([v73 requestCounters:*(v19 + 840) firstErrorIndex:v127])
        {
          [v73 setOptions:*(v19 + 824)];
          if ([v73 setEnabled:1])
          {

            v36 = v103;
            if ([*location count])
            {
              [*(v19 + 760) objectAtIndexedSubscript:0];

              objc_autoreleasePoolPop(context);
              if (AccelerationStructureViewerServer::Profiler::startAPSStreaming(*(v19 + 752)))
              {
                *(v19 + 608) = *(v19 + 600);
                std::vector<AccelerationStructureViewerServer::APSUSCChunkCollector>::resize((v19 + 600), *(v19 + 8));
                atomic_store(0, (v19 + 776));
                atomic_store(0, (v19 + 784));
                *(v19 + 432) = 1;
                v74 = [*(v19 + 760) objectAtIndexedSubscript:0];
                operator new();
              }

              goto LABEL_81;
            }

            goto LABEL_78;
          }

          v96 = v73;
          v101 = [v73 name];
          NSLog(&cfstr_FailErrorWhile_5.isa, v101);
        }

        else
        {
          v96 = v73;
          v100 = v127[0];
          v101 = [*(v19 + 840) objectAtIndexedSubscript:v127[0]];
          NSLog(&cfstr_FailErrorWhile_4.isa, v100, v101);
        }
      }

      else
      {
        v96 = v73;
        v99 = [v73 name];
        NSLog(&cfstr_FailErrorWhile.isa, v99);

LABEL_76:
        v14 = v117;
      }

      v36 = v103;
    }

LABEL_78:

    goto LABEL_79;
  }

  v26 = [*(a3 + 608) width];
  v111 = [*(a3 + 608) height];
  v112 = [*(a5 + 8) threadExecutionWidth];
  v27 = [*(a5 + 8) maxTotalThreadsPerThreadgroup];
  v28 = [*(a5 + 8) threadExecutionWidth];
  v29 = a1[2192];
  v109 = v27 / v28;
  v30 = a1;
  if (v29)
  {
    v31 = v15;
    std::mutex::lock((v29 + 320));
    v32 = v113;
    if (*(v29 + 432) == 1 && !*(v29 + 436))
    {
      AccelerationStructureViewerServer::Profiler::stopAPSStreaming(v29, *v29);
    }

    else
    {
      LODWORD(v132.__cv_.__sig) = [v31 globalTraceObjectID];
      std::mutex::lock((v29 + 624));
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((v29 + 688), v132.__cv_.__sig, &v132);
      std::mutex::unlock((v29 + 624));
    }

    std::mutex::unlock((v29 + 320));

    a3 = v116;
    v33 = a7;
    v34 = a8;
    v35 = v26;
  }

  else
  {
    v33 = a7;
    v34 = a8;
    v35 = v26;
    v32 = v113;
  }

  if (a1[2192])
  {
    [v15 waitForFence:a1[2191]];
  }

  if (v33)
  {
    [v15 setTexture:*(a3 + 608) atIndex:1];
    [v15 setTexture:*(a3 + 624) atIndex:3];
    [v15 setTexture:*(a3 + 632) atIndex:4];
    [v15 setTexture:*(a3 + 640) atIndex:5];
    v75 = *(a3 + 648);
  }

  else
  {
    [v15 setTexture:0 atIndex:1];
    [v15 setTexture:0 atIndex:3];
    [v15 setTexture:0 atIndex:4];
    [v15 setTexture:0 atIndex:5];
    v75 = 0;
  }

  [v15 setTexture:v75 atIndex:6];
  if (v34)
  {
    v76 = *(a3 + 616);
  }

  else
  {
    v76 = 0;
  }

  v77 = a5;
  [v15 setTexture:v76 atIndex:2];
  v78 = &v30[v115];
  [v15 setBuffer:v78[2198] offset:0 atIndex:0];
  [v15 setBuffer:v78[2201] offset:0 atIndex:1];
  v79 = v30[2217];
  if (v79)
  {
    [v15 setAccelerationStructure:v79 atBufferIndex:2];
  }

  [v15 setBuffer:v30[2219] offset:0 atIndex:9];
  v80 = *(v32 + 184);
  if (*(v32 + 192) != v80)
  {
    v81 = 0;
    v82 = 0;
    do
    {
      [v15 useResource:*(v80 + v81 + 24) usage:1];
      [v15 useResource:*(v80 + v81 + 40) usage:1];
      [v15 useResource:*(v80 + v81 + 56) usage:1];
      v83 = *(v80 + v81 + 72);
      if (v83)
      {
        [v15 useResource:v83 usage:1];
      }

      v84 = *(v80 + v81 + 88);
      if (v84)
      {
        [v15 useResource:v84 usage:1];
      }

      v85 = *(v80 + v81 + 104);
      if (v85)
      {
        [v15 useResource:v85 usage:1];
      }

      v86 = *(v80 + v81 + 152);
      if (v86)
      {
        [v15 useResource:v86 usage:1];
      }

      v87 = *(v80 + v81 + 168);
      if (v87)
      {
        [v15 useResource:v87 usage:1];
      }

      ++v82;
      v80 = *(v32 + 184);
      v81 += 184;
    }

    while (v82 < 0xD37A6F4DE9BD37A7 * ((*(v32 + 192) - v80) >> 3));
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v88 = v30[2218];
  v89 = [v88 countByEnumeratingWithState:&v118 objects:v126 count:16];
  if (v89)
  {
    v90 = v89;
    v91 = *v119;
    do
    {
      for (j = 0; j != v90; ++j)
      {
        if (*v119 != v91)
        {
          objc_enumerationMutation(v88);
        }

        [v15 useResource:*(*(&v118 + 1) + 8 * j) usage:1];
      }

      v90 = [v88 countByEnumeratingWithState:&v118 objects:v126 count:16];
    }

    while (v90);
  }

  v93 = *(v77 + 24);
  if (v93)
  {
    [v15 setIntersectionFunctionTable:v93 atBufferIndex:3];
    if (*(v77 + 24))
    {
      (*(*v30[1] + 104))(v30[1], v15);
    }
  }

  v94 = v30[2192];
  if (v94)
  {
    [v15 setBuffer:*(v94 + 16) offset:0 atIndex:7];
  }

  [v15 setComputePipelineState:*(v77 + 8)];
  v132.__cv_.__sig = v35;
  *v132.__cv_.__opaque = v111;
  *&v132.__cv_.__opaque[8] = 1;
  *&v122 = v112;
  *(&v122 + 1) = v109;
  *&v123 = 1;
  [v15 dispatchThreads:&v132 threadsPerThreadgroup:&v122];
  if (v30[2192])
  {
    [v15 updateFence:v30[2191]];
  }

  [v15 endEncoding];
  v95 = v15;
  v14 = v117;
LABEL_82:

  v98 = v95;
}

void AccelerationStructureViewerServer::Renderer::commitSample(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6)
{
  v9 = a2;
  v25[11] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9206;
  v18 = __Block_byref_object_dispose__9207;
  v12 = a5;
  v19 = v12;
  if (v11)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3321888768;
    v20[2] = ___ZN33AccelerationStructureViewerServer8Renderer12commitSampleEhN27AccelerationStructureViewer6SampleEdPU27objcproto16MTLCommandBuffer11objc_objectPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke;
    v20[3] = &unk_2860BC590;
    v22[11] = a1;
    v23 = v9;
    AccelerationStructureViewer::Sample::Sample(v21, a3);
    v22[12] = *&a6;
    v22[10] = &v14;
    [v11 addCompletedHandler:v20];
    [v11 commit];

    v13 = v22;
  }

  else
  {
    AccelerationStructureViewer::Sample::Sample(v24, a3);
    AccelerationStructureViewerServer::Renderer::completeSample(a1, v9, v24, v15[5], a6);

    v13 = v25;
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v13);
  _Block_object_dispose(&v14, 8);
}

uint64_t ___ZN33AccelerationStructureViewerServer8Renderer13requestSampleEPU26objcproto15MTLCommandQueue11objc_object_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 720);
  v3 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = ___ZN33AccelerationStructureViewerServer8Renderer13requestSampleEPU26objcproto15MTLCommandQueue11objc_object_block_invoke_2;
  v9[3] = &unk_2860BC4E8;
  v14 = v2;
  AccelerationStructureViewer::Sample::Sample(v10, a1 + 32);
  v4 = *(a1 + 688);
  v5 = *(a1 + 696);
  v17 = *(a1 + 744);
  v15 = *(a1 + 728);
  *&v6 = *(a1 + 704);
  *(&v6 + 1) = *(a1 + 712);
  v16 = *(a1 + 736);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v12 = v7;
  v13 = v6;
  dispatch_async(v3, v9);

  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v11);
}

uint64_t __destroy_helper_block_a16_32c42_ZTSN27AccelerationStructureViewer6SampleE(id *a1)
{

  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 76));
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ___ZN33AccelerationStructureViewerServer8Renderer13requestSampleEPU26objcproto15MTLCommandQueue11objc_object_block_invoke_2(uint64_t a1)
{
  v156 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 720);
  AccelerationStructureViewer::Sample::Sample(v149, a1 + 32);
  v3 = v2[2192];
  v4 = *(a1 + 696);
  v5 = *(a1 + 744);
  v128 = *(a1 + 728);
  v6 = *(a1 + 688);
  v7 = v4;
  std::mutex::lock((v3 + 320));
  --*(v3 + 436);
  std::mutex::unlock((v3 + 320));
  v8 = [v7 globalTraceObjectID];
  __lk.__m_ = (v3 + 624);
  __lk.__owns_ = 1;
  std::mutex::lock((v3 + 624));
  v9 = *(v3 + 736);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = (v3 + 736);
  v11 = v3 + 736;
  do
  {
    v12 = *(v9 + 32);
    v13 = v12 >= v8;
    v14 = v12 < v8;
    if (v13)
    {
      v11 = v9;
    }

    v9 = *(v9 + 8 * v14);
  }

  while (v9);
  if (v11 == v10 || *(v11 + 32) > v8)
  {
LABEL_9:
    NSLog(&cfstr_MissingRayColl.isa);
    v15 = 0;
    goto LABEL_10;
  }

  v124 = v7;
  v138 = 0;
  v139 = &v138;
  v140 = 0x4012000000;
  v141 = __Block_byref_object_copy__9845;
  v142 = __Block_byref_object_dispose__9846;
  v143 = &unk_24DB95716;
  v144 = *(v11 + 40);
  v18 = *(v11 + 48);
  v145 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v125 = v6;
  v123 = v2;
  mach_timebase_info(&info);
  v121 = mach_absolute_time();
  v20 = v139[6];
  v19 = v139[7];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v122 = v19;
  v21 = 0;
  v22 = 0;
LABEL_20:
  v126 = v22;
  v23 = v139[6];
  v24.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 500000000;
  while (*(v3 + 432) == 1)
  {
    if (*(v20 + 89))
    {
      break;
    }

    v25 = atomic_load((v20 + 48));
    if (v25 >= *(v20 + 56))
    {
      break;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v24.__d_.__rep_)
    {
      goto LABEL_39;
    }

    v26 = v5;
    v27.__d_.__rep_ = v24.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v27.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v28.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (v28.__d_.__rep_)
      {
        if (v28.__d_.__rep_ < 1)
        {
          if (v28.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
          {
            goto LABEL_33;
          }

          v29 = 0x8000000000000000;
        }

        else
        {
          if (v28.__d_.__rep_ > 0x20C49BA5E353F7)
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_34;
          }

LABEL_33:
          v29 = 1000 * v28.__d_.__rep_;
LABEL_34:
          if (v29 > (v27.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
          {
            v30.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_37:
            std::condition_variable::__do_timed_wait(v23, &__lk, v30);
            std::chrono::steady_clock::now();
            goto LABEL_38;
          }
        }
      }

      else
      {
        v29 = 0;
      }

      v30.__d_.__rep_ = v29 + v27.__d_.__rep_;
      goto LABEL_37;
    }

LABEL_38:
    v5 = v26;
    if (std::chrono::steady_clock::now().__d_.__rep_ >= v24.__d_.__rep_)
    {
LABEL_39:
      if (*(v3 + 432) == 1 && (*(v20 + 89) & 1) == 0)
      {
        v31 = atomic_load((v20 + 48));
        if (v31 < *(v20 + 56))
        {
          v22 = atomic_load((v20 + 48));
          if (v126 && v22 == v126)
          {
            if (*(v3 + 32) == 1)
            {
              NSLog(&cfstr_NoNewRaysLlu.isa, v126);
            }

            *(v139[6] + 89) = 1;
          }

          else
          {
            if (++v21 != 10)
            {
              goto LABEL_20;
            }

            if (*(v3 + 32) == 1)
            {
              NSLog(&cfstr_TimedOut.isa);
            }

            *(v139[6] + 89) = 1;
          }
        }
      }

      break;
    }
  }

  v32 = *v10;
  if (!*v10)
  {
    goto LABEL_61;
  }

  v33 = (v3 + 736);
  v34 = *v10;
  do
  {
    v35 = *(v34 + 8);
    v13 = v35 >= v8;
    v36 = v35 < v8;
    if (v13)
    {
      v33 = v34;
    }

    v34 = v34[v36];
  }

  while (v34);
  if (v33 == v10 || *(v33 + 8) > v8)
  {
LABEL_61:
    NSLog(&cfstr_MissingRayColl_0.isa);
    goto LABEL_62;
  }

  v57 = v33[1];
  if (v57)
  {
    do
    {
      v58 = v57;
      v57 = *v57;
    }

    while (v57);
  }

  else
  {
    v80 = v33;
    do
    {
      v58 = v80[2];
      v104 = *v58 == v80;
      v80 = v58;
    }

    while (!v104);
  }

  if (*(v3 + 728) == v33)
  {
    *(v3 + 728) = v58;
  }

  --*(v3 + 744);
  v81 = *v33;
  v82 = v33;
  if (*v33)
  {
    v83 = v33[1];
    if (v83)
    {
      do
      {
        v82 = v83;
        v83 = *v83;
      }

      while (v83);
      goto LABEL_122;
    }

    v82 = v33;
LABEL_125:
    v85 = 0;
    v84 = v82[2];
    v81[2] = v84;
  }

  else
  {
LABEL_122:
    v81 = v82[1];
    if (v81)
    {
      goto LABEL_125;
    }

    v84 = v82[2];
    v85 = 1;
  }

  v86 = *v84;
  if (*v84 == v82)
  {
    *v84 = v81;
    if (v82 == v32)
    {
      v86 = 0;
      v32 = v81;
    }

    else
    {
      v86 = v84[1];
    }
  }

  else
  {
    v84[1] = v81;
  }

  v87 = *(v82 + 24);
  if (v82 != v33)
  {
    v88 = v33[2];
    v82[2] = v88;
    v88[*v88 != v33] = v82;
    v89 = *v33;
    *v82 = *v33;
    v89[2] = v82;
    v90 = v33[1];
    v82[1] = v90;
    if (v90)
    {
      *(v90 + 2) = v82;
    }

    *(v82 + 24) = *(v33 + 24);
    if (v32 == v33)
    {
      v32 = v82;
    }
  }

  if (!v32 || !v87)
  {
    goto LABEL_189;
  }

  if (!v85)
  {
    *(v81 + 24) = 1;
    goto LABEL_189;
  }

  while (2)
  {
    v91 = v86[2];
    v92 = *v91;
    if (*v91 != v86)
    {
      if ((v86[3] & 1) == 0)
      {
        *(v86 + 24) = 1;
        *(v91 + 24) = 0;
        v93 = v91[1];
        v94 = *v93;
        v91[1] = *v93;
        if (v94)
        {
          *(v94 + 16) = v91;
        }

        v95 = v91[2];
        v93[2] = v95;
        v95[*v95 != v91] = v93;
        *v93 = v91;
        v91[2] = v93;
        if (v32 == *v86)
        {
          v32 = v86;
        }

        v86 = *(*v86 + 1);
      }

      v96 = *v86;
      if (*v86 && *(v96 + 24) != 1)
      {
        v97 = v86[1];
        if (v97 && (v97[3] & 1) == 0)
        {
LABEL_175:
          v96 = v86;
        }

        else
        {
          *(v96 + 24) = 1;
          *(v86 + 24) = 0;
          v105 = v96[1];
          *v86 = v105;
          if (v105)
          {
            v105[2] = v86;
          }

          v106 = v86[2];
          v96[2] = v106;
          v106[*v106 != v86] = v96;
          v96[1] = v86;
          v86[2] = v96;
          v97 = v86;
        }

        v107 = v96[2];
        *(v96 + 24) = *(v107 + 24);
        *(v107 + 24) = 1;
        *(v97 + 24) = 1;
        v108 = *(v107 + 8);
        v109 = *v108;
        *(v107 + 8) = *v108;
        if (v109)
        {
          *(v109 + 16) = v107;
        }

        v110 = *(v107 + 16);
        v108[2] = v110;
        v110[*v110 != v107] = v108;
        *v108 = v107;
        goto LABEL_188;
      }

      v97 = v86[1];
      if (v97 && *(v97 + 24) != 1)
      {
        goto LABEL_175;
      }

      *(v86 + 24) = 0;
      v98 = v86[2];
      if (v98 == v32 || (v98[3] & 1) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_167;
    }

    if ((v86[3] & 1) == 0)
    {
      *(v86 + 24) = 1;
      *(v91 + 24) = 0;
      v99 = *(v92 + 8);
      *v91 = v99;
      if (v99)
      {
        *(v99 + 16) = v91;
      }

      v100 = v91[2];
      *(v92 + 16) = v100;
      v100[*v100 != v91] = v92;
      *(v92 + 8) = v91;
      v91[2] = v92;
      v101 = v86[1];
      if (v32 == v101)
      {
        v32 = v86;
      }

      v86 = *v101;
    }

    v102 = *v86;
    if (*v86 && *(v102 + 24) != 1)
    {
      goto LABEL_184;
    }

    v103 = v86[1];
    if (!v103 || *(v103 + 24) == 1)
    {
      *(v86 + 24) = 0;
      v98 = v86[2];
      v104 = *(v98 + 24) != 1 || v98 == v32;
      if (v104)
      {
LABEL_169:
        *(v98 + 24) = 1;
        goto LABEL_189;
      }

LABEL_167:
      v86 = *(v98[2] + (*v98[2] == v98));
      continue;
    }

    break;
  }

  if (v102 && (v102[3] & 1) == 0)
  {
LABEL_184:
    v103 = v86;
    goto LABEL_185;
  }

  *(v103 + 24) = 1;
  *(v86 + 24) = 0;
  v111 = *v103;
  v86[1] = *v103;
  if (v111)
  {
    *(v111 + 16) = v86;
  }

  v112 = v86[2];
  v103[2] = v112;
  v112[*v112 != v86] = v103;
  *v103 = v86;
  v86[2] = v103;
  v102 = v86;
LABEL_185:
  v107 = v103[2];
  *(v103 + 24) = *(v107 + 24);
  *(v107 + 24) = 1;
  *(v102 + 24) = 1;
  v108 = *v107;
  v113 = *(*v107 + 8);
  *v107 = v113;
  if (v113)
  {
    *(v113 + 16) = v107;
  }

  v114 = *(v107 + 16);
  v108[2] = v114;
  v114[*v114 != v107] = v108;
  v108[1] = v107;
LABEL_188:
  *(v107 + 16) = v108;
LABEL_189:
  v115 = v33[6];
  if (v115)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v115);
  }

  operator delete(v33);
LABEL_62:
  v37 = mach_absolute_time();
  v38 = (v3 + 776);
  if (atomic_load((v3 + 776)))
  {
    v40 = v37;
    atomic_fetch_add((v3 + 784), *(v139[6] + 56));
    v41 = mach_absolute_time();
    v42 = atomic_load((v3 + 784));
    v43 = atomic_load(v38);
    numer = info.numer;
    denom = info.denom;
    v46 = atomic_load((v3 + 792));
    v48 = info.numer;
    v47 = info.denom;
    atomic_store(v40, (v3 + 792));
    v49 = v139;
    atomic_store(*(v139[6] + 56), (v3 + 800));
    if (*(v3 + 32) == 1)
    {
      v50 = ((v41 - v43) * numer / denom) / 1000000000.0;
      v51 = ((v40 - v121) * numer / denom) / 1000000000.0;
      v52 = ((v40 - v46) * v48 / v47) / 1000000000.0;
      if (*(v3 + 584) == *(v3 + 576))
      {
        v54 = 0;
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 40;
        do
        {
          std::mutex::lock((*(v3 + 552) + v53));
          v54 += *(*(v3 + 576) + v56);
          std::mutex::unlock((*(v3 + 552) + v53));
          ++v55;
          v53 += 64;
          v56 += 48;
        }

        while (v55 < 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 584) - *(v3 + 576)) >> 4));
        v49 = v139;
      }

      NSLog(&cfstr_RaysLluTimeFFR.isa, *(v49[6] + 56), *&v52, *(v49[6] + 56) / v52, v42, *&v50, v42 / v50, *&v51, v54);
      if (*(v3 + 584) != *(v3 + 576))
      {
        v59 = 0;
        v60 = 0;
        do
        {
          v61 = [*(v3 + 64 + 8 * v5) contents];
          v62 = *(*(v139[6] + 64) + v59) + 1;
          if (v62 != *(v61 + 4 * v60 + 4))
          {
            NSLog(&cfstr_WarningUscZuEx.isa, v60, *(v61 + 4 * v60 + 4), v62);
          }

          ++v60;
          v59 += 32;
        }

        while (v60 < 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 584) - *(v3 + 576)) >> 4));
      }
    }
  }

  else
  {
    atomic_store(mach_absolute_time(), v38);
    atomic_store(0, (v3 + 784));
  }

  v63 = v139[6];
  if (*(v63 + 89) != 1)
  {
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
      __lk.__owns_ = 0;
      v15 = [v125 commandBufferWithDescriptor:*(v3 + 24)];
      [v15 setLabel:@"AtomicHeatMap"];
      v73 = [v15 computeCommandEncoderWithDispatchType:1];
      [v73 setLabel:@"AtomicHeatMap"];
      [v73 setComputePipelineState:*(v3 + 48)];
      [v73 setTexture:v151 atIndex:0];
      if (*(v139[6] + 72) != *(v139[6] + 64))
      {
        v74 = 0;
        v75 = 0;
        do
        {
          [v73 setBuffer:*(v3 + 112 + 8 * v5) offset:v74 * *(v128 + 20) atIndex:0];
          [v73 setBuffer:*(*(v139[6] + 64) + 8 * v74 + 16) offset:0 atIndex:1];
          v136 = *(*(v139[6] + 64) + 8 * v74) - 1;
          [v73 setBytes:&v136 length:8 atIndex:2];
          v76 = v139[6];
          v77 = *(v76 + 64);
          v78 = *(v77 + 8 * v74);
          if (v78 >= 2 && v78 < *(v77 + 8 * v74 + 8))
          {
            v129 = v78 - 1;
            v127 = vdupq_n_s64(1uLL);
            v130 = v127;
            v134 = [*(v3 + 48) maxTotalThreadsPerThreadgroup];
            v135 = v127;
            [v73 dispatchThreads:&v129 threadsPerThreadgroup:&v134];
            v76 = v139[6];
            v77 = *(v76 + 64);
          }

          ++v75;
          v79 = (*(v76 + 72) - v77) >> 5;
          if (v79 >= 0x64)
          {
            v79 = 100;
          }

          v74 += 4;
        }

        while (v75 < v79);
      }

      [v73 endEncoding];
      v129 = MEMORY[0x277D85DD0];
      v130.i64[0] = 3221225472;
      v130.i64[1] = ___ZN33AccelerationStructureViewerServer8Profiler11finishFrameEPU26objcproto15MTLCommandQueue11objc_objectPU35objcproto24MTLComputeCommandEncoder11objc_objectmP18ASVSRenderSettingsPN27AccelerationStructureViewer6SampleE_block_invoke;
      v131 = &unk_279659190;
      v132 = &v138;
      v133 = v3;
      [v15 addCompletedHandler:&v129];

      v2 = v123;
      goto LABEL_106;
    }

    goto LABEL_192;
  }

  v64 = atomic_load((v63 + 48));
  v65 = v139;
  v66 = v139[7];
  v67 = *(v139[6] + 56);
  v139[6] = 0;
  v65[7] = 0;
  v2 = v123;
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v66);
  }

  v7 = v124;
  if (!__lk.__owns_)
  {
LABEL_192:
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    AccelerationStructureViewerServer::Renderer::completeSample(v116, v117, v118, v119, v120);
    return;
  }

  std::mutex::unlock(__lk.__m_);
  __lk.__owns_ = 0;
  if (*(v3 + 32) == 1)
  {
    NSLog(&cfstr_CollectorIsDam.isa, v64, v67);
  }

  if (v64 + 1 > 1)
  {
    v15 = 0;
    goto LABEL_108;
  }

  if (*(v3 + 584) == *(v3 + 576))
  {
LABEL_89:
    if (*(v3 + 32) == 1)
    {
      NSLog(&cfstr_CollectorIsVer.isa);
    }

    std::mutex::lock((v3 + 320));
    v7 = v124;
    v72 = v122;
    if (*(v3 + 432) == 1 && !*(v3 + 436))
    {
      AccelerationStructureViewerServer::Profiler::stopAPSStreaming(v3, *v3);
    }

    std::mutex::unlock((v3 + 320));
    v15 = 0;
    if (v122)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
    v70 = 40;
    while (1)
    {
      std::mutex::lock((*(v3 + 552) + v68));
      v71 = *(*(v3 + 576) + v70);
      std::mutex::unlock((*(v3 + 552) + v68));
      if (v71)
      {
        break;
      }

      ++v69;
      v68 += 64;
      v70 += 48;
      if (v69 >= 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 584) - *(v3 + 576)) >> 4))
      {
        goto LABEL_89;
      }
    }

    v15 = 0;
LABEL_106:
    v7 = v124;
LABEL_108:
    v72 = v122;
    if (v122)
    {
LABEL_109:
      std::__shared_weak_count::__release_shared[abi:nn200100](v72);
    }
  }

  _Block_object_dispose(&v138, 8);
  if (v145)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v145);
  }

  v6 = v125;
LABEL_10:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  v16 = *(a1 + 704);
  if (*(a1 + 696) != v16)
  {
    AccelerationStructureViewerServer::Profiler::finishSkipFrame(v2[2192], v16);
  }

  v17 = *(a1 + 744);
  AccelerationStructureViewer::Sample::Sample(v147, v149);
  AccelerationStructureViewerServer::Renderer::commitSample(v2, v17, v147, v15, *(*(*(a1 + 712) + 8) + 40), *(a1 + 736));

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v148);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v150);
}

void AccelerationStructureViewerServer::Renderer::completeSample(void *a1, char a2, uint64_t a3, void *a4, double a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__9206;
  v12[4] = __Block_byref_object_dispose__9207;
  v13 = v9;
  v10 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN33AccelerationStructureViewerServer8Renderer14completeSampleEhN27AccelerationStructureViewer6SampleEdPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke;
  block[3] = &unk_2860BC558;
  v16[11] = a1;
  v17 = a2;
  v16[10] = v12;
  v11 = v9;
  AccelerationStructureViewer::Sample::Sample(v15, a3);
  v16[12] = *&a5;
  dispatch_async(v10, block);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v16);
  _Block_object_dispose(v12, 8);
}

uint64_t ___ZN33AccelerationStructureViewerServer8Renderer12commitSampleEhN27AccelerationStructureViewer6SampleEdPU27objcproto16MTLCommandBuffer11objc_objectPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 696);
  v3 = *(a1 + 712);
  AccelerationStructureViewer::Sample::Sample(v5, a1 + 32);
  AccelerationStructureViewerServer::Renderer::completeSample(v2, v3, v5, *(*(*(a1 + 688) + 8) + 40), *(a1 + 704));

  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v6);
}

void ___ZN33AccelerationStructureViewerServer8Renderer14completeSampleEhN27AccelerationStructureViewer6SampleEdPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke(uint64_t a1)
{
  v20[11] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 696);
  if (*(v2 + 16840))
  {
    *(v2 + 8 * (*(a1 + 40) & 0x1FLL) + 120) = CFAbsoluteTimeGetCurrent();
    v3 = *(v2 + 16840);
    AccelerationStructureViewer::Sample::Sample(v19, a1 + 32);
    (*(*v3 + 40))(v3, v2, v19);

    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v20);
    std::mutex::lock((v2 + 48));
    Current = CFAbsoluteTimeGetCurrent();
    if (*(v2 + 16832))
    {
      goto LABEL_26;
    }

    v5 = Current - *(a1 + 704);
    v6 = 1.0 / v5;
    v7 = *(v2 + 16824);
    v8 = 1.0 / v7;
    if (v6 < 30.0 || v8 < 30.0)
    {
      v10 = *(v2 + 16996);
      LOBYTE(v11) = 2 * v10;
    }

    else
    {
      if (v6 <= 180.0 || v8 <= 180.0)
      {
        *(v2 + 16992) = 0;
        v16 = (v2 + 16996);
        LOBYTE(v11) = *(v2 + 16996);
LABEL_21:
        if (v11 > 0x10u)
        {
          v18 = 16;
LABEL_25:
          *v16 = v18;
          goto LABEL_26;
        }

        if (v11 <= 7u)
        {
          v18 = 8;
          goto LABEL_25;
        }

LABEL_26:
        std::mutex::unlock((v2 + 48));
        AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v2, *(a1 + 712), *(*(*(a1 + 688) + 8) + 40));
        return;
      }

      v10 = *(v2 + 16996);
      v11 = v10 >> 1;
    }

    v17 = *(v2 + 16992) + 1;
    *(v2 + 16992) = v17;
    v16 = (v2 + 16996);
    if (v17 <= 4 * v10)
    {
      LOBYTE(v11) = v10;
    }

    else
    {
      *(v2 + 16996) = v11;
      *(v2 + 16992) = 0;
    }

    goto LABEL_21;
  }

  v12 = *(a1 + 712);
  v13 = *(*(*(a1 + 688) + 8) + 40);
  v14 = *(a1 + 696);

  AccelerationStructureViewerServer::Renderer::releaseUniformBufferIndex(v14, v12, v13);
}

void AccelerationStructureViewerServer::Renderer::acknowledge(AccelerationStructureViewerServer::Renderer *this, unint64_t a2, char a3)
{
  std::mutex::lock((this + 48));
  v6 = this + 376;
  v7 = a2 & 0x1F;
  v8 = *(this + v7 + 188);
  if (v8 > 0x3FF)
  {
    if (a3)
    {
      goto LABEL_14;
    }

    Current = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    v9 = this + 8 * v8;
    *(v9 + 1079) = 0;
    *&v6[2 * v7] = 1024;
    if (a3)
    {
      goto LABEL_14;
    }

    Current = CFAbsoluteTimeGetCurrent();
    *(v9 + 55) = Current;
  }

  v11 = atomic_load(this + 4);
  if (v11 < a2)
  {
    v12 = 0;
    do
    {
      v13 = *&v6[2 * (v11 & 0x1F)];
      if (v13 <= 0x3FF)
      {
        *(this + v13 + 1079) = 0;
        *&v6[2 * (v11 & 0x1F)] = 1024;
      }

      if (a2 - 1 == v11)
      {
        break;
      }

      ++v11;
    }

    while (v12++ < 0x1F);
    *(this + 2103) = (Current - *(this + v7 + 15)) * 0.5;
    atomic_store(a2, this + 4);
  }

LABEL_14:

  std::mutex::unlock((this + 48));
}

void AccelerationStructureViewerServer::Renderer::capture(AccelerationStructureViewerServer::Renderer *this, uint64_t a2)
{
  v2 = a2;
  NSLog(&cfstr_RequestingCapt.isa, a2);
  std::mutex::lock((this + 48));
  *(this + 2214) = v2;

  std::mutex::unlock((this + 48));
}

void AccelerationStructureViewerServer::Renderer::requestGBVH(AccelerationStructureViewerServer::Renderer *this, uint64_t a2)
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = NSTemporaryDirectory();
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  v9 = [v6 stringWithFormat:@"%@.mtlas", v8];
  v10 = [v5 stringByAppendingPathComponent:v9];

  v11 = *(this + 1);
  std::mutex::lock((this + 48));
  memcpy(__dst, this + 16992, sizeof(__dst));
  v12 = *(this + 1058);
  v13 = *(this + 1060);
  v22[6] = *(this + 1059);
  v22[7] = v13;
  v22[8] = *(this + 1061);
  v14 = *(this + 1054);
  v15 = *(this + 1056);
  v22[2] = *(this + 1055);
  v22[3] = v15;
  v22[4] = *(this + 1057);
  v22[5] = v12;
  v22[0] = *(this + 1053);
  v22[1] = v14;
  std::mutex::unlock((this + 48));
  v20 = 0;
  LOBYTE(v7) = writeAccelerationStructureToGBVH5Path(v11, v22, __dst, v10, &v20);
  v16 = v20;
  if (v7)
  {
    v19 = v16;
    v17 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v10 options:2 error:&v19];
    v18 = v19;

    (*(**(this + 2105) + 32))(*(this + 2105), a2, v17, v18);
    [v4 removeItemAtPath:v10 error:0];

    v16 = v18;
  }

  else
  {
    [v4 removeItemAtPath:v10 error:0];
    (*(**(this + 2105) + 32))(*(this + 2105), a2, 0, v16);
  }
}

BOOL AccelerationStructureViewerServer::Renderer::writeGBVHToFile(AccelerationStructureViewerServer::Renderer *this, NSString *a2)
{
  v2 = *(this + 1);
  v4 = 0;
  return writeAccelerationStructureToGBVH5Path(v2, 0, 0, a2, &v4);
}

void AccelerationStructureViewerServer::Renderer::setVersion(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xD)
  {
    v3 = 13;
  }

  else
  {
    v3 = a2;
  }

  std::mutex::lock((a1 + 48));
  *(a1 + 112) = v3;
  v4 = *(a1 + 16840);
  std::mutex::unlock((a1 + 48));
  if (v4)
  {
    (*(*v4 + 72))(v4, v3);
  }

  NSLog(&cfstr_AsvserverToUse.isa, v3);
}

void AccelerationStructureViewerServer::Renderer::setIntersectionHints(uint64_t a1, const void *a2)
{
  std::mutex::lock((a1 + 48));
  *(a1 + 17505) = 1;
  memcpy((a1 + 17016), a2, 0x1B8uLL);

  std::mutex::unlock((a1 + 48));
}

void AccelerationStructureViewerServer::Renderer::setTransform(uint64_t a1, float32x4_t *a2)
{
  v4 = a1 + 0x4000;
  std::mutex::lock((a1 + 48));
  *(v4 + 1121) = 1;
  v5 = (a1 + 16848);
  if (memcmp(a2, (a1 + 16848), 0x90uLL))
  {
    if (a2->u8[0] != v5->u8[0] || a2->u16[1] != *(v4 + 466) || ((v6 = a2->f32[1], v7 = *(v4 + 468), v8 = v7 + -0.001, v9 = v7 + 0.001, v6 >= v8) ? (v10 = v6 > v9) : (v10 = 1), v10 || a2->i32[2] != *(v4 + 472) || a2->i32[3] != *(v4 + 476) || (v11.i64[0] = 0x3400000034000000, v11.i64[1] = 0x3400000034000000, (vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v11, vabdq_f32(a2[2], *(a1 + 16880))), vcgeq_f32(v11, vabdq_f32(a2[1], *(a1 + 16864)))), vandq_s8(vcgeq_f32(v11, vabdq_f32(a2[3], *(a1 + 16896))), vcgeq_f32(v11, vabdq_f32(a2[4], *(a1 + 16912)))))) & 0x80000000) == 0) || (vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v11, vabdq_f32(a2[6], *(a1 + 16944))), vcgeq_f32(v11, vabdq_f32(a2[5], *(a1 + 16928)))), vandq_s8(vcgeq_f32(v11, vabdq_f32(a2[7], *(a1 + 16960))), vcgeq_f32(v11, vabdq_f32(a2[8], *(a1 + 16976)))))) & 0x80000000) == 0))
    {
      *(a1 + 17512) = CFAbsoluteTimeGetCurrent();
      atomic_store(1u, (v4 + 1160));
    }
  }

  *v5 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[4];
  *(a1 + 16896) = a2[3];
  *(a1 + 16912) = v14;
  *(a1 + 16864) = v12;
  *(a1 + 16880) = v13;
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[8];
  *(a1 + 16960) = a2[7];
  *(a1 + 16976) = v17;
  *(a1 + 16928) = v15;
  *(a1 + 16944) = v16;
  v18 = v5->i8[0];
  if (v5->i8[0])
  {
    *(v4 + 612) = v18;
    v18 = 1;
  }

  *(v4 + 448) = v18;
  v19 = *(v4 + 1122);
  v20 = *(a1 + 16840);
  *(v4 + 1122) = 0;
  v21 = *(a1 + 17472);
  v23 = *(a1 + 17456);
  v24 = v21;
  v25 = *(a1 + 17488);
  std::mutex::unlock((a1 + 48));
  if (v19 == 1)
  {
    if (v20)
    {
      v22[1] = v24;
      v22[2] = v25;
      v22[0] = v23;
      (*(*v20 + 24))(v20, a1, v22);
    }
  }
}

void AccelerationStructureViewerServer::Renderer::setResolver(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 48));
  *(a1 + 16840) = a2;

  std::mutex::unlock((a1 + 48));
}

void AccelerationStructureViewerServer::Renderer::~Renderer(AccelerationStructureViewerServer::Renderer *this)
{
  AccelerationStructureViewerServer::Renderer::~Renderer(this);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BC470;
  v2 = *(this + 2197);
  v3 = *(this + 2197);
  *(this + 2197) = 0;

  v4 = 3;
  do
  {
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    --v4;
  }

  while (v4);
  std::mutex::lock((this + 48));
  std::__tree<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>>>::destroy(*(this + 2205));
  *(this + 2204) = this + 17640;
  *(this + 17640) = 0u;
  std::__tree<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::__map_value_compare<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::less<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>>,true>,std::allocator<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>>>::destroy(*(this + 2212));
  *(this + 2211) = this + 17696;
  *(this + 1106) = 0u;
  if (*(this + 2192))
  {
    std::unique_ptr<AccelerationStructureViewerServer::Profiler>::reset[abi:nn200100](this + 2192, 0);
  }

  std::mutex::unlock((this + 48));
  v5 = 3;
  do
  {
    dispatch_semaphore_signal(v2);
    --v5;
  }

  while (v5);

  std::__tree<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::__map_value_compare<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>,std::less<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>>,true>,std::allocator<std::__value_type<std::pair<AccelerationStructureViewerServer::IntersectorType,AccelerationStructureViewer::IntersectionFunctionTable *>,std::unique_ptr<AccelerationStructureViewerServer::Intersector>>>>::destroy(*(this + 2212));
  std::__tree<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,AccelerationStructureViewer::IntersectionFunctionTable>>>::destroy(*(this + 2205));
  for (i = 0; i != -24; i -= 8)
  {
  }

  for (j = 0; j != -24; j -= 8)
  {
  }

  std::unique_ptr<AccelerationStructureViewerServer::Profiler>::reset[abi:nn200100](this + 2192, 0);
  std::mutex::~mutex((this + 48));
}