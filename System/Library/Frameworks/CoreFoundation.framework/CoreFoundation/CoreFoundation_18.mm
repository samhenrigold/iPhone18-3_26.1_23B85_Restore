uint64_t __CFStorageGetCapacity(uint64_t a1)
{
  NodeCapacity = __CFStorageGetNodeCapacity(a1 + 144);
  v3 = *(a1 + 24);
  if (v3 == -1)
  {
    return NodeCapacity / *(a1 + 16);
  }

  else
  {
    return NodeCapacity >> v3;
  }
}

uint64_t __CFStorageGetNodeCapacity(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = 0;
    while (*(v1 + 13) != 1)
    {
      NodeCapacity = __CFStorageGetNodeCapacity(*(v1 + 16));
      v4 = __CFStorageGetNodeCapacity(*(v1 + 24));
      v1 = *(v1 + 32);
      v2 += NodeCapacity + v4;
      if (!v1)
      {
        goto LABEL_7;
      }
    }

    v5 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
LABEL_7:
    v5 = 0;
  }

  return v5 + v2;
}

uint64_t __CFStorageEqual(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v3 = *(a1 + 24);
  if (v3 == -1)
  {
    v4 = v2 / *(a1 + 16);
  }

  else
  {
    v4 = v2 >> v3;
  }

  v5 = *(a2 + 144);
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    v7 = v5 / *(a2 + 16);
  }

  else
  {
    v7 = v5 >> v6;
  }

  if (v4 != v7)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  if (v8 != *(a2 + 16))
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  ValueAtIndex = 0;
  v15 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  while (v13 < v4)
  {
    if (v13 >= v11 + v12)
    {
      ValueAtIndex = CFStorageGetValueAtIndex(a1, v13, &v25);
      v10 = v23;
      v9 = v24;
    }

    v16 = v9 + v10;
    if (v13 >= v9 + v10)
    {
      v15 = CFStorageGetValueAtIndex(a2, v13, &v23);
      v10 = v23;
      v9 = v24;
      v16 = v24 + v23;
    }

    v12 = v25;
    v11 = v26;
    if (v16 >= v26 + v25)
    {
      v17 = v26 + v25;
    }

    else
    {
      v17 = v16;
    }

    v18 = (v17 - v13) * v8;
    v19 = memcmp(ValueAtIndex, v15, v18);
    ValueAtIndex += v18;
    v15 += v18;
    v13 = v17;
    if (v19)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t __CFStorageHash(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = *(a1 + 24);
  if (v2 == -1)
  {
    return v1 / *(a1 + 16);
  }

  else
  {
    return v1 >> v2;
  }
}

__CFString *__CFStorageCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(a1 + 144);
  v5 = *(a1 + 24);
  if (v5 == -1)
  {
    v8 = *(a1 + 16);
    v6 = v4 / v8;
    v7 = __CFStorageGetNodeCapacity(a1 + 144) / v8;
  }

  else
  {
    v6 = v4 >> v5;
    v7 = __CFStorageGetNodeCapacity(a1 + 144) >> v5;
  }

  CFStringAppendFormat(Mutable, 0, @"<CFStorage %p [%p]>[count = %lu, capacity = %lu]\n", a1, v2, v6, v7);
  __CFStorageDescribeNode((a1 + 144), Mutable, 0);
  return Mutable;
}

unint64_t *CFStorageCreateWithSubrange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50[3] = *MEMORY[0x1E69E9840];
  v6 = CFGetAllocator(a1);
  v13 = CFStorageCreate(v6, *(a1 + 16), v7, v8, v9, v10, v11, v12);
  if (a3 >= 1)
  {
    v14 = *(a1 + 24);
    if (v14 == -1)
    {
      v17 = *(a1 + 16);
      v15 = v17 * a2;
      v16 = v17 * a3;
    }

    else
    {
      v15 = a2 << v14;
      v16 = a3 << v14;
    }

    v18 = a1 + 144;
    if (*(a1 + 157))
    {
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v20 = v15;
      do
      {
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v50[0] = v21;
        v50[1] = v22;
        v23 = *(v18 + 32);
        v50[2] = v23;
        if (v22)
        {
          v22 = *v22;
        }

        if (v23)
        {
          v23 = *v23;
        }

        v24 = *v21;
        v49[0] = 0;
        v49[1] = v24;
        v25 = v22 + v24;
        v49[2] = v22 + v24;
        v26 = v20 & ~(v20 >> 63);
        v27 = v20 + v16;
        if (v24 >= v20 + v16)
        {
          v28 = v20 + v16;
        }

        else
        {
          v28 = v24;
        }

        if (v24 <= v20)
        {
          v24 = v20;
        }

        if (v25 >= v27)
        {
          v29 = v20 + v16;
        }

        else
        {
          v29 = v25;
        }

        if (v25 <= v20)
        {
          v30 = v20;
        }

        else
        {
          v30 = v25;
        }

        v31 = &v25[v23];
        if (v31 >= v27)
        {
          v31 = (v20 + v16);
        }

        if (v28 <= v26)
        {
          v32 = v29 > v24;
        }

        else
        {
          v32 = (v29 > v24) + 1;
        }

        if (v31 <= v30)
        {
          v33 = v32;
        }

        else
        {
          v33 = v32 + 1;
        }

        if (v33 != 1)
        {
          break;
        }

        v34 = v29 > v24 ? 1 : 2;
        v35 = v28 <= v26 ? v34 : 0;
        v18 = v50[v35];
        v36 = v49[v35];
        v20 -= v36;
        v19 += v36;
      }

      while (*(v18 + 13) != 1);
    }

    if (*(v18 + 13) == 1)
    {
      CFStorageInsertValues(v13, 0, a3);
      v37 = *(v18 + 24);
      if (v37)
      {
        CFStorageReplaceValues(v13, 0, a3, (v37 + v15 - v19));
      }
    }

    else
    {
      v38 = *v18;
      *(v13 + 157) = 0;
      v13[18] = v38;
      v39 = (v18 + 16);
      v13[21] = 0;
      v13[22] = 0;
      v13[20] = 0;
      v40 = 20;
      do
      {
        v41 = *v39;
        if (!*v39)
        {
          break;
        }

        *(v41 + 12) = 1;
        if (*(v41 + 8))
        {
          atomic_fetch_add_explicit((v41 + 8), 1u, memory_order_relaxed);
        }

        v13[v40++] = v41;
        ++v39;
      }

      while (v40 != 23);
      v42 = *(v13 + 6);
      if (v42 == -1)
      {
        v45 = v13[2];
        v43 = v19 / v45;
        v44 = v38 / v45;
      }

      else
      {
        v43 = v19 >> v42;
        v44 = v38 >> v42;
      }

      v46 = a2 - v43;
      v47 = v43 - (a2 + a3);
      if (v47 + v44 >= 1)
      {
        CFStorageDeleteValues(v13, -v47, v47 + v44);
      }

      if (v46 >= 1)
      {
        CFStorageDeleteValues(v13, 0, v46);
      }
    }
  }

  return v13;
}

char *CFStorageReplaceValues(char *result, uint64_t a2, uint64_t a3, char *a4)
{
  v37[1] = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v5 = a3;
    v7 = result;
    do
    {
      os_unfair_lock_lock_with_options();
      v9 = *(v7 + 13);
      v8 = *(v7 + 14);
      v10 = *(v7 + 15);
      os_unfair_lock_unlock(v7 + 32);
      if (!v9 || (*(v9 + 12) & 1) != 0)
      {
        goto LABEL_5;
      }

      if (!*(v9 + 24))
      {
        v20 = CFGetAllocator(v7);
        v21 = *v9;
        if (*v9 <= *MEMORY[0x1E69E9AC8] / 2)
        {
          v30 = v21 + 63;
          v29 = v21 < -63;
          v31 = v21 + 126;
          if (!v29)
          {
            v31 = v30;
          }

          v23 = v31 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = (v21 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
          if (*(v7 + 17) >= v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = *(v7 + 17);
          }
        }

        if (v23 > *(v9 + 16))
        {
          pthread_mutex_lock((v7 + 32));
          if (v23 > *(v9 + 16))
          {
            *(v9 + 24) = __CFSafelyReallocateWithAllocatorTyped(v20, *(v9 + 24), v23, 864523722, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            *(v9 + 16) = v23;
          }

          pthread_mutex_unlock((v7 + 32));
        }
      }

      if ((v32 = a2 - v8, a2 >= v8) && v10 + v8 > a2 && ((v25 = *(v7 + 6), v25 != -1) ? (v33 = v32 << v25) : (v33 = *(v7 + 2) * v32), (v34 = *(v9 + 24)) != 0))
      {
        Byte = (v34 + v33);
      }

      else
      {
LABEL_5:
        v36 = 0;
        v37[0] = 0;
        v35 = 0;
        v11 = *(v7 + 6);
        if (v11 == -1)
        {
          v12 = *(v7 + 2) * a2;
        }

        else
        {
          v12 = a2 << v11;
        }

        Byte = __CFStorageFindByte(v7, (v7 + 144), v12, 0, v37, &v35, 1);
        v14 = v37[0];
        v15 = v35;
        if (v37[0])
        {
          v16 = *v37[0];
          v17 = *(v7 + 6);
          if (v17 == -1)
          {
            v24 = *(v7 + 2);
            v18 = v35 / v24;
            v19 = v16 / v24;
          }

          else
          {
            v18 = v35 >> v17;
            v19 = v16 >> v17;
          }
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }

        os_unfair_lock_lock_with_options();
        *(v7 + 13) = v14;
        *(v7 + 14) = v18;
        *(v7 + 15) = v19;
        os_unfair_lock_unlock(v7 + 32);
        v25 = *(v7 + 6);
        if (v25 == -1)
        {
          v26 = *(v7 + 2);
          v8 = v15 / v26;
          v10 = v36 / v26;
        }

        else
        {
          v8 = v15 >> v25;
          v10 = v36 >> v25;
        }
      }

      if (v5 >= v8 - a2 + v10)
      {
        v27 = v8 - a2 + v10;
      }

      else
      {
        v27 = v5;
      }

      if (v25 == 0xFFFFFFFFLL)
      {
        v28 = *(v7 + 2) * v27;
      }

      else
      {
        v28 = v27 << v25;
      }

      result = memmove(Byte, a4, v28);
      a4 += v28;
      a2 += v27;
      v29 = v5 <= v27;
      v5 -= v27;
    }

    while (!v29);
  }

  return result;
}

uint64_t CFStorageGetCount(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = *(a1 + 24);
  if (v2 == -1)
  {
    return v1 / *(a1 + 16);
  }

  else
  {
    return v1 >> v2;
  }
}

uint64_t CFStorageGetConstValueAtIndex(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v37[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v6 = *(a1 + 104);
  v7 = *(a1 + 112);
  v8 = *(a1 + 120);
  os_unfair_lock_unlock((a1 + 128));
  if (!v6)
  {
    goto LABEL_26;
  }

  if (!v6[3])
  {
    v9 = CFGetAllocator(a1);
    v10 = *v6;
    if (*v6 <= *MEMORY[0x1E69E9AC8] / 2)
    {
      v13 = v10 + 63;
      v16 = v10 < -63;
      v14 = v10 + 126;
      if (!v16)
      {
        v14 = v13;
      }

      v12 = v14 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v11 = (v10 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      if (*(a1 + 136) >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = *(a1 + 136);
      }
    }

    if (v12 > v6[2])
    {
      pthread_mutex_lock((a1 + 32));
      if (v12 > v6[2])
      {
        v6[3] = __CFSafelyReallocateWithAllocatorTyped(v9, v6[3], v12, 864523722, 0);
        if (__CFOASafe == 1)
        {
          __CFSetLastAllocationEventName();
        }

        v6[2] = v12;
      }

      pthread_mutex_unlock((a1 + 32));
    }
  }

  v15 = a2 - v7;
  v16 = a2 < v7 || v8 + v7 <= a2;
  if (v16)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    *a3 = v7;
    a3[1] = v8;
  }

  v17 = v6[3];
  v18 = *(a1 + 24);
  if (v18 == -1)
  {
    v19 = *(a1 + 16) * v15;
    if (v17)
    {
      return v17 + v19;
    }

LABEL_26:
    v36 = 0;
    v37[0] = 0;
    v35 = 0;
    v21 = *(a1 + 24);
    if (v21 == -1)
    {
      v22 = *(a1 + 16) * a2;
    }

    else
    {
      v22 = a2 << v21;
    }

    Byte = __CFStorageFindByte(a1, a1 + 144, v22, 0, v37, &v35, 0);
    v23 = v37[0];
    v24 = v35;
    if (v37[0])
    {
      v25 = *v37[0];
      v26 = *(a1 + 24);
      if (v26 == -1)
      {
        v29 = *(a1 + 16);
        v27 = v35 / v29;
        v28 = v25 / v29;
      }

      else
      {
        v27 = v35 >> v26;
        v28 = v25 >> v26;
      }
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    os_unfair_lock_lock_with_options();
    *(a1 + 104) = v23;
    *(a1 + 112) = v27;
    *(a1 + 120) = v28;
    os_unfair_lock_unlock((a1 + 128));
    v30 = *(a1 + 24);
    if (v30 == -1)
    {
      v34 = *(a1 + 16);
      v31 = v24 / v34;
      v32 = v36 / v34;
      if (!a3)
      {
        return Byte;
      }
    }

    else
    {
      v31 = v24 >> v30;
      v32 = v36 >> v30;
      if (!a3)
      {
        return Byte;
      }
    }

    *a3 = v31;
    a3[1] = v32;
    return Byte;
  }

  v19 = v15 << v18;
  if (!v17)
  {
    goto LABEL_26;
  }

  return v17 + v19;
}

uint64_t __CFStorageCreateNode(int a1, uint64_t a2, char a3, uint64_t a4)
{
  Typed = CFAllocatorAllocateTyped(a1, 0x28uLL, 0x1032040801AFE6DuLL);
  if (__CFOASafe == 1)
  {
    __CFSetLastAllocationEventName();
  }

  *(Typed + 8) = 1;
  *(Typed + 12) = *(a2 + 96);
  *(Typed + 13) = a3;
  *Typed = a4;
  if ((a3 & 1) == 0)
  {
    *(Typed + 32) = 0;
  }

  *(Typed + 16) = 0;
  *(Typed + 24) = 0;
  return Typed;
}

uint64_t _CFStorageFastEnumeration(uint64_t a1, unint64_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (v3)
  {
    v4 = a2[3];
  }

  else
  {
    v5 = *(a1 + 144);
    v6 = *(a1 + 24);
    if (v6 == -1)
    {
      v4 = v5 / *(a1 + 16);
    }

    else
    {
      v4 = v5 >> v6;
    }

    a2[3] = v4;
  }

  if (v3 >= v4)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  ValueAtIndex = CFStorageGetValueAtIndex(a1, v3, &v9);
  result = v10;
  *a2 += v10;
  a2[1] = ValueAtIndex;
  return result;
}

uint64_t CFStorageApplyFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[7] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __CFStorageApplyFunction_block_invoke;
  v10[3] = &__block_descriptor_tmp_10;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = v8;
  return CFStorageApplyBlock(a1, a2, a3, 0, v10);
}

uint64_t CFStorageApplyBlock(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  if (a3)
  {
    v6 = *(result + 24);
    if (v6 == -1)
    {
      v9 = *(result + 16);
      v7 = v9 * a2;
      v8 = v9 * a3;
    }

    else
    {
      v7 = a2 << v6;
      v8 = a3 << v6;
    }

    if (((a3 >= 0x100000) & a4) != 0)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    return __CFStorageEnumerateNodesInByteRangeWithBlock(result, result + 144, 0, v7, v8, v10, a5);
  }

  return result;
}

uint64_t __CFStorageApplyFunction_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v6 = result;
    do
    {
      --v4;
      result = (*(v6 + 32))(a2, *(v6 + 40), a3);
      a2 += *(v6 + 48);
    }

    while (v4);
  }

  return result;
}

uint64_t __CFStorageEnumerateNodesInByteRangeWithBlock(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1;
  v74[3] = *MEMORY[0x1E69E9840];
  v71 = 0;
  if (*(a2 + 13) == 1)
  {
    if (a5 >= *a2 - a4)
    {
      v10 = *a2 - a4;
    }

    else
    {
      v10 = a5;
    }

    if (!*(a2 + 24))
    {
      v11 = a3;
      v12 = a7;
      v13 = CFGetAllocator(a1);
      v14 = *a2;
      if (*a2 <= *MEMORY[0x1E69E9AC8] / 2)
      {
        v55 = v14 + 63;
        v27 = v14 < -63;
        v56 = v14 + 126;
        if (!v27)
        {
          v56 = v55;
        }

        v16 = v56 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = (v14 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        if (*(v9 + 17) >= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = *(v9 + 17);
        }
      }

      a7 = v12;
      a3 = v11;
      if (v16 > *(a2 + 16))
      {
        pthread_mutex_lock((v9 + 32));
        if (v16 > *(a2 + 16))
        {
          *(a2 + 24) = __CFSafelyReallocateWithAllocatorTyped(v13, *(a2 + 24), v16, 864523722, 0);
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          *(a2 + 16) = v16;
        }

        pthread_mutex_unlock((v9 + 32));
        a7 = v12;
        a3 = v11;
      }
    }

    v57 = a4 + a3;
    v58 = *(v9 + 6);
    if (v58 == -1)
    {
      v61 = *(v9 + 2);
      v59 = v57 / v61;
      v60 = v10 / v61;
    }

    else
    {
      v59 = v57 >> v58;
      v60 = v10 >> v58;
    }

    (*(a7 + 16))(a7, *(a2 + 24) + a4, v59, v60, &v71, a6);
    v48 = v71;
    return v48 & 1;
  }

  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v74[0] = v17;
  v74[1] = v18;
  v19 = *(a2 + 32);
  v74[2] = v19;
  v20 = *v17;
  if (v18)
  {
    v21 = *v18;
    if (v19)
    {
LABEL_12:
      v22 = *v19;
      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  v22 = 0;
LABEL_15:
  v73[0] = 0;
  v73[1] = v20;
  v23 = v21 + v20;
  v73[2] = v21 + v20;
  v24 = a4 & ~(a4 >> 63);
  v25 = a4 + a5;
  if (v20 >= a4 + a5)
  {
    v26 = a4 + a5;
  }

  else
  {
    v26 = v20;
  }

  v27 = v26 <= v24;
  v28 = v26 - v24;
  if (v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  if (v27)
  {
    v30 = 0;
  }

  else
  {
    v30 = a4 & ~(a4 >> 63);
  }

  v72[0] = v30;
  v72[1] = v29;
  if (v20 <= a4)
  {
    v31 = a4;
  }

  else
  {
    v31 = v20;
  }

  if (v23 >= v25)
  {
    v32 = v25;
  }

  else
  {
    v32 = v23;
  }

  v33 = v32 <= v31;
  v34 = v32 - v31;
  if (v33)
  {
    v35 = 0;
  }

  else
  {
    v35 = v31;
  }

  if (v33)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  v72[2] = v35;
  v72[3] = v36;
  if (v23 <= a4)
  {
    v37 = a4;
  }

  else
  {
    v37 = v23;
  }

  v38 = v22 + v23;
  if (v38 >= v25)
  {
    v38 = v25;
  }

  v39 = v38 <= v37;
  v40 = v38 - v37;
  if (v39)
  {
    v41 = 0;
  }

  else
  {
    v41 = v37;
  }

  if (v39)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  v72[4] = v41;
  v72[5] = v42;
  v43 = v36 != 0;
  if (v29)
  {
    ++v43;
  }

  if (v42)
  {
    v44 = v43 + 1;
  }

  else
  {
    v44 = v43;
  }

  if (v44 <= 1)
  {
    v45 = a6;
  }

  else
  {
    v45 = a6 - 1;
  }

  if (v44 < 2 || v45 < 0)
  {
    if (v29 < 1)
    {
      if (v36 < 1)
      {
        if (v42 < 1)
        {
          v48 = 0;
          return v48 & 1;
        }

        goto LABEL_85;
      }
    }

    else
    {
      v63 = a3;
      v64 = a7;
      v49 = __CFStorageEnumerateNodesInByteRangeWithBlock(a1, v17, a3, v30, v29, v45, a7);
      v50 = (v36 > 0) | v49;
      if (v36 < 1)
      {
        a3 = v63;
        a7 = v64;
        goto LABEL_83;
      }

      a3 = v63;
      a7 = v64;
      if (v49)
      {
        goto LABEL_83;
      }
    }

    v51 = v35 - v20;
    v65 = v41;
    v52 = v9;
    v53 = a3;
    v54 = a7;
    v50 = __CFStorageEnumerateNodesInByteRangeWithBlock(v52, v18, v20 + a3, v51, v36, v45, a7);
    a3 = v53;
    v9 = v52;
    v41 = v65;
    a7 = v54;
LABEL_83:
    v48 = (v42 > 0) | v50;
    if (v42 < 1 || (v50 & 1) != 0)
    {
      return v48 & 1;
    }

LABEL_85:
    v48 = __CFStorageEnumerateNodesInByteRangeWithBlock(v9, v19, v23 + a3, v41 - v23, v42, v45, a7);
    return v48 & 1;
  }

  v46 = 1;
  if (v18)
  {
    v46 = 2;
  }

  if (v19)
  {
    v47 = v46 + 1;
  }

  else
  {
    v47 = v46;
  }

  v67 = 0;
  v68 = &v67;
  v69 = 0x2000000000;
  v70 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ____CFStorageEnumerateNodesInByteRangeWithBlock_block_invoke;
  block[3] = &unk_1E6D82C68;
  block[6] = v72;
  block[7] = v9;
  block[8] = v74;
  block[9] = a3;
  block[10] = v73;
  block[11] = a6 - 1;
  block[4] = a7;
  block[5] = &v67;
  dispatch_apply(v47, 0, block);
  v48 = *(v68 + 24);
  _Block_object_dispose(&v67, 8);
  return v48 & 1;
}

void __CFStorageDescribeNode(uint64_t *a1, __CFString *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v6 = a3;
    do
    {
      SystemEncoding = CFStringGetSystemEncoding();
      CFStringAppendCString(a2, "  ", SystemEncoding);
      --v6;
    }

    while (v6);
  }

  v8 = *a1;
  if (*(a1 + 13) == 1)
  {
    v9 = "no";
    if (*(a1 + 12))
    {
      v9 = "yes";
    }

    CFStringAppendFormat(a2, 0, @"Leaf %ld/%ld (%p) refcount: %u frozen: %s\n", v8, a1[2], a1, *(a1 + 2), v9);
  }

  else
  {
    v10 = "no";
    if (*(a1 + 12))
    {
      v10 = "yes";
    }

    CFStringAppendFormat(a2, 0, @"Node %ld (%p) refcount: %u frozen: %s\n", v8, a1, *(a1 + 2), v10);
    v11 = 0;
    v12 = a1 + 2;
    do
    {
      v13 = v12[v11];
      if (v13)
      {
        __CFStorageDescribeNode(v13, a2, a3 + 1);
      }

      ++v11;
    }

    while (v11 != 3);
  }
}

void __CFStorageDeallocateNode(const void *a1, uint64_t a2)
{
  v4 = CFGetAllocator(a1);
  v5 = v4;
  if (*(a2 + 13) == 1)
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      CFAllocatorDeallocate(v4, v6);
    }
  }

  else
  {
    v7 = *(a2 + 16);
    if (v7 && *(v7 + 8) && atomic_fetch_add_explicit((v7 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      __CFStorageDeallocateNode(a1, v7);
    }

    v8 = *(a2 + 24);
    if (v8 && *(v8 + 8) && atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      __CFStorageDeallocateNode(a1, v8);
    }

    v9 = *(a2 + 32);
    if (v9 && *(v9 + 8) && atomic_fetch_add_explicit((v9 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      __CFStorageDeallocateNode(a1, v9);
    }
  }

  CFAllocatorDeallocate(v5, a2);
}

uint64_t __CFStorageInsertFrozen(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v11 = a1;
  v81 = *MEMORY[0x1E69E9840];
  if (*(a3 + 13) == 1)
  {
    v13 = *a3 + a5;
    v14 = *(a2 + 136);
    v15 = v13 - v14;
    if (v13 > v14)
    {
      if (*a3 == a4)
      {
        Node = __CFStorageCreateNode(a1, a2, 1, a5);
        v17 = Node;
        if (!Node)
        {
          v20 = 0;
          v21 = 0;
          goto LABEL_115;
        }

        v18 = *Node;
        v19 = *(a2 + 24);
        if (v19 != -1)
        {
          v20 = a6 >> v19;
          v21 = v18 >> v19;
LABEL_115:
          os_unfair_lock_lock_with_options();
          *(a2 + 104) = v17;
          *(a2 + 112) = v20;
          *(a2 + 120) = v21;
          os_unfair_lock_unlock((a2 + 128));
          return v9;
        }

        v72 = *(a2 + 16);
        v20 = a6 / v72;
LABEL_114:
        v21 = v18 / v72;
        goto LABEL_115;
      }

      if (a4)
      {
        v34 = __CFStorageCreateNode(a1, a2, 1, v14);
        v35 = v11;
        v17 = v34;
        v78 = v35;
        v36 = __CFStorageCreateNode(v35, a2, 1, v13 - v14);
        v37 = *MEMORY[0x1E69E9AC8];
        v38 = *MEMORY[0x1E69E9AC8] / 2;
        if (v38 >= v14)
        {
          v58 = v14 + 63;
          if (v14 < -63)
          {
            v58 = v14 + 126;
          }

          v40 = v58 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v39 = (v14 + v37 - 1) & -v37;
          if (*(a2 + 136) >= v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = *(a2 + 136);
          }
        }

        if (v40 > v17[2])
        {
          pthread_mutex_lock((a2 + 32));
          if (v40 > v17[2])
          {
            v17[3] = __CFSafelyReallocateWithAllocatorTyped(v78, v17[3], v40, 864523722, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            v17[2] = v40;
          }

          pthread_mutex_unlock((a2 + 32));
          v37 = *MEMORY[0x1E69E9AC8];
          v38 = *MEMORY[0x1E69E9AC8] / 2;
        }

        if (v38 >= v15)
        {
          v61 = v15 + 63;
          if (v15 < -63)
          {
            v61 = v15 + 126;
          }

          v60 = v61 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v59 = (v15 + v37 - 1) & -v37;
          if (*(a2 + 136) >= v59)
          {
            v60 = v59;
          }

          else
          {
            v60 = *(a2 + 136);
          }
        }

        if (v60 > *(v36 + 16))
        {
          pthread_mutex_lock((a2 + 32));
          if (v60 > *(v36 + 16))
          {
            *(v36 + 24) = __CFSafelyReallocateWithAllocatorTyped(v78, *(v36 + 24), v60, 864523722, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            *(v36 + 16) = v60;
          }

          pthread_mutex_unlock((a2 + 32));
        }

        memmove(v17[3], *(v9 + 24), a4);
        v62 = a4;
        v63 = a5 + a4;
        v64 = (a5 + a4) & ~((a5 + a4) >> 63);
        v65 = *v9 + a5;
        if (v14 >= v65)
        {
          v66 = *v9 + a5;
        }

        else
        {
          v66 = v14;
        }

        if (v66 <= v64)
        {
          v67 = 0;
        }

        else
        {
          v67 = v66 - v64;
        }

        if (v67 >= 1)
        {
          if (v66 <= v64)
          {
            v64 = 0;
          }

          memmove((v17[3] + v64), (*(v9 + 24) + v64 - a5), v67);
        }

        if (v14 <= v63)
        {
          v68 = v63;
        }

        else
        {
          v68 = v14;
        }

        if (v13 >= v65)
        {
          v69 = v65;
        }

        else
        {
          v69 = v13;
        }

        if (v69 <= v68)
        {
          v70 = 0;
        }

        else
        {
          v70 = v69 - v68;
        }

        if (v70 >= 1)
        {
          if (v69 <= v68)
          {
            v68 = 0;
          }

          memmove((*(v36 + 24) + v68 - v14), (*(v9 + 24) + v68 - a5), v70);
        }

        v53 = a6 - v62;
        v54 = *v17;
        v55 = *(a2 + 24);
        if (v55 != -1)
        {
          goto LABEL_107;
        }

        goto LABEL_109;
      }

      if (*(a3 + 8))
      {
        atomic_fetch_add_explicit((a3 + 8), 1u, memory_order_relaxed);
      }

      v56 = __CFStorageCreateNode(a1, a2, 1, a5);
      v17 = v56;
      if (v56)
      {
        v18 = *v56;
        v57 = *(a2 + 24);
        if (v57 == -1)
        {
          v72 = *(a2 + 16);
          v20 = a6 / v72;
          v9 = v56;
          goto LABEL_114;
        }

        v20 = a6 >> v57;
        v21 = v18 >> v57;
LABEL_108:
        v9 = v17;
        goto LABEL_115;
      }

      v20 = 0;
      v21 = 0;
LABEL_112:
      v9 = 0;
      goto LABEL_115;
    }

    v29 = a1;
    v30 = __CFStorageCreateNode(a1, a2, 1, *a3 + a5);
    v17 = v30;
    v31 = *(v9 + 24);
    if (v31)
    {
      if (v13 <= *MEMORY[0x1E69E9AC8] / 2)
      {
        v52 = v13 + 63;
        if (v13 < -63)
        {
          v52 = v13 + 126;
        }

        v33 = v52 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = (v13 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        if (*(a2 + 136) >= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = *(a2 + 136);
        }
      }

      if (v33 > *(v30 + 16))
      {
        pthread_mutex_lock((a2 + 32));
        if (v33 > v17[2])
        {
          v17[3] = __CFSafelyReallocateWithAllocatorTyped(v29, v17[3], v33, 864523722, 0);
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          v17[2] = v33;
        }

        pthread_mutex_unlock((a2 + 32));
        v31 = *(v9 + 24);
      }

      memmove(v17[3], v31, a4);
      memmove((v17[3] + a4 + a5), (*(v9 + 24) + a4), *v9 - a4);
    }

    else if (!v30)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_112;
    }

    v53 = a6 - a4;
    v54 = *v17;
    v55 = *(a2 + 24);
    if (v55 != -1)
    {
LABEL_107:
      v20 = v53 >> v55;
      v21 = v54 >> v55;
      goto LABEL_108;
    }

LABEL_109:
    v71 = *(a2 + 16);
    v20 = v53 / v71;
    v9 = v17;
    v21 = v54 / v71;
    goto LABEL_115;
  }

  v22 = &v79;
  v23 = &v79 + 8;
  v24 = __CFStorageCreateNode(a1, a2, 0, 0);
  v25 = a4 - 1;
  v26 = *(v9 + 16);
  v27 = *v26;
  if (*v26 >= a4)
  {
    v74 = 1;
  }

  else
  {
    v25 -= v27;
    v26 = *(v9 + 24);
    v28 = v25 - *v26;
    if (v25 >= *v26)
    {
      v74 = 0;
      v23 = &v80 + 8;
      v26 = *(v9 + 32);
      v22 = &v80;
      v25 = v28;
    }

    else
    {
      v74 = 1;
      v22 = &v79 + 1;
      v23 = &v80;
    }
  }

  v76 = a5;
  inserted = __CFStorageInsertFrozen(a1, a2, v26, v25 + 1, a5, a6);
  v42 = inserted;
  v44 = v43;
  v45 = 0;
  v79 = 0u;
  v80 = 0u;
  do
  {
    v46 = *(v9 + v45 + 16);
    if (v46)
    {
      if (*(v46 + 8))
      {
        atomic_fetch_add_explicit((v46 + 8), 1u, memory_order_relaxed);
      }

      *(v46 + 12) = 1;
    }

    *(&v79 + v45) = v46;
    v45 += 8;
  }

  while (v45 != 24);
  v47 = *v22;
  if (*v22 != inserted)
  {
    if (*(v47 + 8) && atomic_fetch_add_explicit((v47 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      __CFStorageDeallocateNode(a2, v47);
    }

    *v22 = v42;
  }

  if (v44)
  {
    if (v74)
    {
      *(&v80 + 1) = v80;
      if (v27 >= a4)
      {
        *&v80 = *(&v79 + 1);
      }
    }

    *v23 = v44;
  }

  v48 = v79;
  *(v24 + 16) = v79;
  v49 = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    v50 = __CFStorageCreateNode(a1, a2, 0, 0);
    v51 = v80;
    v50[2] = v80;
    v50[3] = v49;
    *v24 = **(&v48 + 1) + *v48;
    *v50 = *v49 + *v51;
  }

  else
  {
    *(v24 + 32) = v80;
    *v24 = *v9 + v76;
  }

  return v24;
}

uint64_t __CFStorageDeleteFrozen(uint64_t a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5)
{
  __src[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 13) == 1)
  {
    v10 = *a3 - a5;
    if (*a3 != a5)
    {
      Node = __CFStorageCreateNode(a1, a2, 1, *a3 - a5);
      v12 = Node;
      if (a3[3])
      {
        if (v10 <= *MEMORY[0x1E69E9AC8] / 2)
        {
          v27 = v10 + 63;
          if (v10 < -63)
          {
            v27 = v10 + 126;
          }

          v14 = v27 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = (v10 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
          if (*(a2 + 136) >= v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = *(a2 + 136);
          }
        }

        v28 = a4 + a5;
        v29 = *a3;
        if (v14 > *(Node + 16))
        {
          pthread_mutex_lock((a2 + 32));
          if (v14 > *(v12 + 16))
          {
            *(v12 + 24) = __CFSafelyReallocateWithAllocatorTyped(a1, *(v12 + 24), v14, 864523722, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            *(v12 + 16) = v14;
          }

          pthread_mutex_unlock((a2 + 32));
        }

        if (a4 >= 1)
        {
          memmove(*(v12 + 24), a3[3], a4);
        }

        if (v29 - v28 >= 1)
        {
          memmove((*(v12 + 24) + a4), (a3[3] + v28), v29 - v28);
        }
      }

      return v12;
    }

    return 0;
  }

  if (a5 == *a3)
  {
    return 0;
  }

  v16 = 0;
  v17 = 0;
  memset(__src, 0, 24);
  v18 = a4 + a5;
  for (i = 2; i != 5; ++i)
  {
    v20 = a3[i];
    if (!v20)
    {
      break;
    }

    v21 = *v20;
    v22 = a4 <= v17 ? v17 : a4;
    v23 = v21 + v17;
    v24 = v18 >= v21 + v17 ? v21 + v17 : v18;
    if (v24 <= v22)
    {
      if (*(v20 + 8))
      {
        atomic_fetch_add_explicit((v20 + 8), 1u, memory_order_relaxed);
      }

      __src[v16++] = v20;
      *(v20 + 12) = 1;
    }

    else
    {
      v25 = __CFStorageDeleteFrozen(a1, a2, v20, v22 - v17, v24 - v22);
      if (v25)
      {
        __src[v16++] = v25;
      }
    }

    v17 = v23;
  }

  if (v16 == 1)
  {
    return __src[0];
  }

  v26 = __CFStorageCreateNode(a1, a2, 0, 0);
  v12 = v26;
  if (v16)
  {
    memcpy((v26 + 16), __src, 8 * v16);
  }

  *v12 = *a3 - a5;
  return v12;
}

uint64_t _CFStreamGetInfoPointer(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

CFStringRef __CFStreamCopyDescription(void *cf)
{
  v2 = cf[6];
  v3 = v2[3];
  if (v3)
  {
    if (*v2)
    {
      v4 = (v3)(cf, cf[5]);
    }

    else
    {
      v4 = v3(cf[5]);
    }
  }

  else
  {
    v5 = CFGetAllocator(cf);
    v4 = CFStringCreateWithFormat(v5, 0, @"info = %p", cf[5]);
  }

  v6 = v4;
  v7 = CFGetTypeID(cf);
  v8 = CFGetAllocator(cf);
  if (v7 == 38)
  {
    v9 = CFStringCreateWithFormat(v8, 0, @"<CFReadStream %p>{%@}", cf, v6);
  }

  else
  {
    v9 = CFStringCreateWithFormat(v8, 0, @"<CFWriteStream %p>{%@}", cf, v6);
  }

  v10 = v9;
  CFRelease(v6);
  return v10;
}

CFStreamStatus CFWriteStreamGetStatus(CFWriteStreamRef stream)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {

    return [(__CFWriteStream *)stream streamStatus];
  }

  else
  {

    return _CFStreamGetStatus(stream);
  }
}

CFStreamError CFReadStreamGetError(CFReadStreamRef stream)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {

    StreamError = [(__CFReadStream *)stream _cfStreamError];
  }

  else
  {

    StreamError = _CFStreamGetStreamError(stream);
  }

  result.error = v3;
  result.domain = StreamError;
  return result;
}

__CFError *_CFStreamGetStreamError(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    if (**(a1 + 48) > 1)
    {
      return _CFStreamErrorFromError(result);
    }

    else
    {
      return *result;
    }
  }

  return result;
}

CFStreamError CFWriteStreamGetError(CFWriteStreamRef stream)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {

    StreamError = [(__CFWriteStream *)stream _cfStreamError];
  }

  else
  {

    StreamError = _CFStreamGetStreamError(stream);
  }

  result.error = v3;
  result.domain = StreamError;
  return result;
}

CFErrorRef CFReadStreamCopyError(CFReadStreamRef stream)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    v2 = [(__CFReadStream *)stream streamError];

    return v2;
  }

  else
  {

    return _CFStreamCopyError(stream);
  }
}

CFErrorRef _CFStreamCopyError(void *cf)
{
  result = cf[3];
  if (result)
  {
    if (*cf[6] > 1)
    {
      CFRetain(result);
      return cf[3];
    }

    else
    {
      v3 = CFGetAllocator(cf);
      v4 = cf[3];

      return _CFStreamCreateErrorFromStreamError(v3, v4);
    }
  }

  return result;
}

CFErrorRef CFWriteStreamCopyError(CFWriteStreamRef stream)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    v2 = [(__CFWriteStream *)stream streamError];

    return v2;
  }

  else
  {

    return _CFStreamCopyError(stream);
  }
}

uint64_t waitForOpen(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  _CFStreamScheduleWithRunLoop(a1, Current, @"_kCFStreamBlockingOpenMode");
  while ((*(a1 + 16) & 0x1FLL) == 1)
  {
    CFRunLoopRunInMode(@"_kCFStreamBlockingOpenMode", 1.0e20, 1u);
  }

  return _CFStreamUnscheduleFromRunLoop(a1, Current, @"_kCFStreamBlockingOpenMode");
}

const UInt8 *__cdecl CFReadStreamGetBuffer(CFReadStreamRef stream, CFIndex maxBytesToRead, CFIndex *numBytesRead)
{
  v27 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    *&v25 = 0;
    if ([(__CFReadStream *)stream getBuffer:&v25 length:numBytesRead])
    {
      return v25;
    }

    else
    {
      return 0;
    }
  }

  Status = _CFStreamGetStatus(stream);
  v8 = *(stream + 6);
  if (Status == 1)
  {
    *(stream + 2) |= 0x40uLL;
    waitForOpen(stream);
    *(stream + 2) &= ~0x40uLL;
    Status = _CFStreamGetStatus(stream);
  }

  if ((Status - 2) >= 2)
  {
    if (Status != 5)
    {
      v6 = 0;
      *numBytesRead = -1;
      return v6;
    }

    goto LABEL_13;
  }

  v9 = v8[7];
  if (!v9)
  {
LABEL_13:
    v6 = 0;
    *numBytesRead = 0;
    return v6;
  }

  v26 = 0;
  v10 = *(stream + 4);
  if (v10)
  {
    v11 = *(v10 + 72);
    v12 = (stream + 16);
    v13 = *(stream + 2) | 0x40;
    *(stream + 2) = v13;
    if ((v11 & 2) != 0)
    {
      *(v10 + 72) = v11 & 0xFFFFFFFFFFFFFFFDLL;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v12 = (stream + 16);
    v13 = *(stream + 2) | 0x40;
    *(stream + 2) = v13;
  }

  if ((v13 & 0x1E) != 6)
  {
    *v12 = v13 & 0xFFFFFFE0 | 3;
  }

  if (*v8 > 1)
  {
    v6 = v9(stream, maxBytesToRead, numBytesRead, stream + 24, &v26, *(stream + 5));
  }

  else
  {
    v25 = 0uLL;
    v6 = v9(stream, maxBytesToRead, numBytesRead, &v25, &v26, *(stream + 5));
    if (DWORD2(v25))
    {
      Typed = *(stream + 3);
      if (!Typed)
      {
        v16 = CFGetAllocator(stream);
        Typed = CFAllocatorAllocateTyped(v16, 0x10uLL, 0x1000040D9A13B51uLL);
        *(stream + 3) = Typed;
      }

      *Typed = v25;
    }
  }

  if (*(stream + 3))
  {
    *numBytesRead = -1;
    if ((*v12 & 0x1F) != 7)
    {
      *v12 = *v12 & 0xFFFFFFE0 | 7;
    }

    v17 = *(stream + 4);
    if (v17 && (*(v17 + 48) & 8) != 0)
    {
      pthread_mutex_lock((stream + 56));
      v18 = *(stream + 4);
      if (v18 && (v19 = *(v18 + 56)) != 0)
      {
        CFRetain(*(v18 + 56));
        pthread_mutex_unlock((stream + 56));
        *(*(stream + 4) + 72) |= 8uLL;
        CFRunLoopSourceSignal(v19);
        CFRelease(v19);
        _wakeUpRunLoop(stream);
      }

      else
      {
        pthread_mutex_unlock((stream + 56));
      }
    }

    v6 = 0;
  }

  else if (v26)
  {
    if ((*v12 & 0x1E) != 6)
    {
      *v12 = *v12 & 0xFFFFFFE0 | 5;
    }

    v20 = *(stream + 4);
    if (v20 && (*(v20 + 48) & 0x10) != 0)
    {
      pthread_mutex_lock((stream + 56));
      v21 = *(stream + 4);
      if (v21 && (v22 = *(v21 + 56)) != 0)
      {
        CFRetain(*(v21 + 56));
        pthread_mutex_unlock((stream + 56));
        *(*(stream + 4) + 72) |= 0x10uLL;
        CFRunLoopSourceSignal(v22);
        CFRelease(v22);
        _wakeUpRunLoop(stream);
      }

      else
      {
        pthread_mutex_unlock((stream + 56));
      }
    }
  }

  else
  {
    v23 = v14 ^ 1;
    if (v6)
    {
      v23 = 1;
    }

    if ((v23 & 1) == 0)
    {
      *(*(stream + 4) + 72) |= 2uLL;
    }

    if ((*v12 & 0x1E) != 6)
    {
      *v12 = *v12 & 0xFFFFFFE0 | 2;
    }
  }

  *v12 &= ~0x40uLL;
  return v6;
}

Boolean CFWriteStreamCanAcceptBytes(CFWriteStreamRef stream)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    return [(__CFWriteStream *)stream hasSpaceAvailable];
  }

  Status = _CFStreamGetStatus(stream);
  if (Status != 4 && Status != 2)
  {
    return 0;
  }

  v5 = *(stream + 6);
  v6 = v5[10];
  if (!v6)
  {
    return 1;
  }

  *(stream + 2) |= 0x40uLL;
  if (*v5 > 1)
  {
    v2 = v6(stream, stream + 24, *(stream + 5));
    if (*(stream + 3))
    {
      v7 = *(stream + 2);
      if ((v7 & 0x1F) != 7)
      {
        *(stream + 2) = v7 & 0xFFFFFFE0 | 7;
      }

      v8 = *(stream + 4);
      if (v8 && (*(v8 + 48) & 8) != 0)
      {
        pthread_mutex_lock((stream + 56));
        v9 = *(stream + 4);
        if (v9 && (v10 = *(v9 + 56)) != 0)
        {
          CFRetain(*(v9 + 56));
          pthread_mutex_unlock((stream + 56));
          *(*(stream + 4) + 72) |= 8uLL;
          CFRunLoopSourceSignal(v10);
          CFRelease(v10);
          _wakeUpRunLoop(stream);
        }

        else
        {
          pthread_mutex_unlock((stream + 56));
        }
      }
    }
  }

  else
  {
    v2 = (v6)(stream, *(stream + 5));
  }

  *(stream + 2) &= ~0x40uLL;
  return v2;
}

uint64_t _CFStreamCopyProperty(void *a1, uint64_t a2)
{
  v2 = *(a1[6] + 96);
  if (!v2)
  {
    return 0;
  }

  a1[2] |= 0x40uLL;
  result = v2(a1, a2, a1[5]);
  a1[2] &= ~0x40uLL;
  return result;
}

uint64_t _CFStreamSetProperty(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[6] + 104);
  if (!v3)
  {
    return 0;
  }

  a1[2] |= 0x40uLL;
  result = v3(a1, a2, a3, a1[5]);
  a1[2] &= ~0x40uLL;
  return result;
}

Boolean CFWriteStreamSetProperty(CFWriteStreamRef stream, CFStreamPropertyKey propertyName, CFTypeRef propertyValue)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    return [(__CFWriteStream *)stream setProperty:propertyValue forKey:propertyName];
  }

  v7 = *(*(stream + 6) + 104);
  if (!v7)
  {
    return 0;
  }

  *(stream + 2) |= 0x40uLL;
  result = v7(stream, propertyName, propertyValue, *(stream + 5));
  *(stream + 2) &= ~0x40uLL;
  return result;
}

double _CFReadStreamInitialize(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 56) = 850045857;
    result = 0.0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0;
  }

  return result;
}

double _CFWriteStreamInitialize(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 56) = 850045857;
    result = 0.0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0;
  }

  return result;
}

uint64_t _CFReadStreamGetClient(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t _CFWriteStreamGetClient(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

void CFWriteStreamScheduleWithRunLoop(CFWriteStreamRef stream, CFRunLoopRef runLoop, CFRunLoopMode runLoopMode)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    if (objc_opt_respondsToSelector())
    {

      [(__CFWriteStream *)stream _scheduleInCFRunLoop:runLoop forMode:runLoopMode];
    }

    else
    {
      v6 = _CFRunLoopGet2(runLoop);

      [(__CFWriteStream *)stream scheduleInRunLoop:v6 forMode:runLoopMode];
    }
  }

  else
  {

    _CFStreamScheduleWithRunLoop(stream, runLoop, runLoopMode);
  }
}

void CFReadStreamUnscheduleFromRunLoop(CFReadStreamRef stream, CFRunLoopRef runLoop, CFRunLoopMode runLoopMode)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    if (objc_opt_respondsToSelector())
    {

      [(__CFReadStream *)stream _unscheduleFromCFRunLoop:runLoop forMode:runLoopMode];
    }

    else
    {
      v6 = _CFRunLoopGet2(runLoop);

      [(__CFReadStream *)stream removeFromRunLoop:v6 forMode:runLoopMode];
    }
  }

  else
  {

    _CFStreamUnscheduleFromRunLoop(stream, runLoop, runLoopMode);
  }
}

void CFWriteStreamUnscheduleFromRunLoop(CFWriteStreamRef stream, CFRunLoopRef runLoop, CFRunLoopMode runLoopMode)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    if (objc_opt_respondsToSelector())
    {

      [(__CFWriteStream *)stream _unscheduleFromCFRunLoop:runLoop forMode:runLoopMode];
    }

    else
    {
      v6 = _CFRunLoopGet2(runLoop);

      [(__CFWriteStream *)stream removeFromRunLoop:v6 forMode:runLoopMode];
    }
  }

  else
  {

    _CFStreamUnscheduleFromRunLoop(stream, runLoop, runLoopMode);
  }
}

uint64_t _CFReadStreamClearEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *(v2 + 72) &= ~a2;
  }

  return result;
}

uint64_t CFWriteStreamGetInfoPointer(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t _CFStringGetInputIdentifierFormatterMappingFromDescriptor(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___CFStringGetInputIdentifierFormatterMappingFromDescriptor_block_invoke;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = a1;
  if (_CFStringGetInputIdentifierFormatterMappingFromDescriptor_loc_formatting_family_info_init != -1)
  {
    dispatch_once(&_CFStringGetInputIdentifierFormatterMappingFromDescriptor_loc_formatting_family_info_init, v2);
  }

  return _CFStringGetInputIdentifierFormatterMappingFromDescriptor_localizedStringFormattingFamilyInfo;
}

BOOL __CFStringCopyCharSetWithPattern(const __CFString *a1, unint64_t **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  HIDWORD(v12) = 0;
  Length = CFStringGetLength(a1);
  if (CFStringGetCharactersPtr(a1))
  {
    v9 = uset_openPattern();
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v5, v6);
    v14.location = 0;
    v14.length = Length;
    CFStringGetCharacters(a1, v14, (&v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v9 = uset_openPattern();
  }

  if (SHIDWORD(v12) > 0)
  {
    return 0;
  }

  *a2 = _CFCreateCharacterSetFromUSet(v9, v7, v8);
  uset_close();
  return *a2 != 0;
}

void *_CFStringGetRelevantLocaleInfoFromLocaleSummary(const __CFDictionary *a1, const __CFLocale *a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  value = 0;
  Count = CFDictionaryGetCount(a1);
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    return value;
  }

  if (Count >> 60)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
    v20 = [NSException exceptionWithName:@"NSGenericException" reason:v19 userInfo:0];
    CFRelease(v19);
    objc_exception_throw(v20);
  }

  v8 = Mutable;
  if (Count <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = Count;
  }

  v10 = MEMORY[0x1EEE9AC00](v9, v6, v7);
  v12 = (&v21 - v11);
  v21 = 0;
  if (Count >= 0x101)
  {
    v12 = _CFCreateArrayStorage(v10, 0, &v21);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  CFDictionaryGetKeysAndValues(a1, v12, 0);
  for (; Count; --Count)
  {
    CFArrayAppendValue(v8, *v12++);
  }

  values[0] = CFLocaleGetIdentifier(a2);
  v14 = CFArrayCreate(&__kCFAllocatorSystemDefault, values, 1, &kCFTypeArrayCallBacks);
  v15 = CFBundleCopyLocalizationsForPreferences(v8, v14);
  v16 = CFBundleCopyPreferredLocalizationsFromArray(v15);
  if (CFArrayGetCount(v16) > 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
    free(v13);
    if (!CFDictionaryGetValueIfPresent(a1, ValueAtIndex, &value))
    {
      value = CFDictionaryGetValue(a1, @"default");
    }

    if (!v16)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  free(v13);
  if (v16)
  {
LABEL_17:
    CFRelease(v16);
  }

LABEL_18:
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(v8);
  if (v14)
  {
    CFRelease(v14);
  }

  return value;
}

uint64_t _CFStringContentsInCharacterSet(const __CFString *a1, const __CFCharacterSet *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 1;
  if (a1)
  {
    if (a2)
    {
      MutableCopy = CFCharacterSetCreateMutableCopy(0, a2);
      if (MutableCopy)
      {
        v5 = MutableCopy;
        CFCharacterSetInvert(MutableCopy);
        CFCharacterSetRemoveCharactersInString(v5, @" ");
        v8 = xmmword_183306FB0;
        v10.length = CFStringGetLength(a1);
        v10.location = 0;
        if (CFStringFindCharacterFromSet(a1, v5, v10, 0, &v8))
        {
          v6 = 0;
        }

        else
        {
          v6 = v8.location == -1;
        }

        v2 = v6;
        CFRelease(v5);
      }
    }
  }

  return v2;
}

uint64_t _CFStringConditionalFormattingMeetsCondition(const __CFString *a1, CFLocaleRef locale)
{
  v6 = *MEMORY[0x1E69E9840];
  result = CFLocaleGetValue(locale, @"kCFLocaleLanguageCodeKey");
  if (result)
  {
    result = CFEqual(result, @"fi");
    if (result)
    {
      Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
      v5 = xmmword_183306FB0;
      v7.length = CFStringGetLength(a1);
      v7.location = 0;
      return CFStringFindCharacterFromSet(a1, Predefined, v7, 0, &v5) != 0;
    }
  }

  return result;
}

CFTypeRef _CFStringCopyVocativeCaseOfGivenName(const __CFString *a1, CFLocaleRef locale)
{
  Value = CFLocaleGetValue(locale, @"kCFLocaleLanguageCodeKey");
  if (!Value)
  {
    goto LABEL_18;
  }

  v5 = Value;
  if (CFEqual(Value, @"cs"))
  {

    return _CFStringCopyVocativeCaseOfGivenName_cs(a1, locale);
  }

  if (CFEqual(v5, @"el"))
  {

    return _CFStringCopyVocativeCaseOfGivenName_el(a1, locale);
  }

  if (CFEqual(v5, @"uk"))
  {

    return _CFStringCopyVocativeCaseOfGivenName_uk(a1, locale);
  }

  if (CFEqual(v5, @"lt"))
  {

    return _CFStringCopyVocativeCaseOfGivenName_lt(a1, locale);
  }

  else
  {
LABEL_18:

    return CFRetain(a1);
  }
}

CFTypeRef _CFStringCopyVocativeCaseOfGivenName_cs(CFStringRef theString, const __CFLocale *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, theString);
  if (MutableCopy)
  {
    v7 = MutableCopy;
    CFStringLowercase(MutableCopy, a2);
    Count = CFArrayGetCount(&off_1EF1B9E10);
    v65.location = 0;
    v65.length = Count;
    v9 = CFArrayBSearchValues(&off_1EF1B9E10, v65, v7, CFStringCompare, 0);
    if (v9 < Count)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(&off_1EF1B9E10, v9);
      if (CFStringCompare(v7, ValueAtIndex, 0) == kCFCompareEqualTo)
      {
        v26 = theString;
        goto LABEL_24;
      }
    }

    if (CFStringCompare(v7, @"seth", 0) == kCFCompareEqualTo)
    {
      Length = CFStringGetLength(v7);
      CFStringReplaceAll(v7, theString);
      v24 = Length - 1;
      v18 = CFStringGetLength(v7);
      v19.location = v18 - v24;
      if (v18 >= v24)
      {
        v19.length = v24;
        CFStringReplace(v7, v19, @"ethe");
LABEL_23:
        v26 = v7;
LABEL_24:
        v27 = CFRetain(v26);
        CFRelease(v7);
        if (v27)
        {
          return v27;
        }

        return CFRetain(theString);
      }

      goto LABEL_57;
    }

    if (CFStringHasSuffix(v7, @"a"))
    {
      CFStringReplaceAll(v7, theString);
      v18 = CFStringGetLength(v7);
      if (v18 > 0)
      {
        v20.location = v18 - 1;
        v21 = @"o";
LABEL_8:
        v22 = v7;
        v20.length = 1;
LABEL_22:
        CFStringReplace(v22, v20, v21);
        goto LABEL_23;
      }

      goto LABEL_57;
    }

    v58 = @"uk";
    v59 = 0;
    v56 = @"ík";
    v57 = @"ck";
    v54 = @"g";
    v55 = @"ik";
    if (__CFStringHasOneOfSuffixes(v7, v11, v12, v13, v14, v15, v16, v17, @"h"))
    {
      CFStringReplaceAll(v7, theString);
      chars = 117;
      p_chars = &chars;
LABEL_13:
      CFStringAppendCharacters(v7, p_chars, 1);
      goto LABEL_23;
    }

    if (CFStringHasSuffix(v7, @"nec"))
    {
      CFStringReplaceAll(v7, theString);
      v18 = CFStringGetLength(v7);
      if (v18 > 1)
      {
        v20.location = v18 - 2;
        v21 = @"če";
LABEL_21:
        v22 = v7;
        v20.length = 2;
        goto LABEL_22;
      }
    }

    else if (CFStringHasSuffix(v7, @"ius"))
    {
      CFStringReplaceAll(v7, theString);
      v18 = CFStringGetLength(v7);
      if (v18 > 1)
      {
        v20.location = v18 - 2;
        v21 = @"e";
        goto LABEL_21;
      }
    }

    else
    {
      if (CFStringHasSuffix(v7, @"uce"))
      {
        CFStringReplaceAll(v7, theString);
        v18 = CFStringGetLength(v7);
        if (v18 > 0)
        {
          v20.location = v18 - 1;
          v21 = @"i";
          goto LABEL_8;
        }

        goto LABEL_57;
      }

      v58 = @"xel";
      v59 = 0;
      v56 = @"rel";
      v57 = @"bel";
      if (!__CFStringHasOneOfSuffixes(v7, v29, v30, v31, v32, v33, v34, v35, @"vel"))
      {
        if (CFStringHasSuffix(v7, @"les"))
        {
          CFStringReplaceAll(v7, theString);
          v66.location = CFStringGetLength(v7) - 1;
          v66.length = 1;
          CFStringDelete(v7, v66);
          goto LABEL_23;
        }

        v58 = @"oř";
        v59 = 0;
        v56 = @"c";
        v57 = @"lix";
        v54 = @"j";
        v55 = @"ex";
        v52 = @"ž";
        v53 = @"el";
        v51 = @"z";
        if (__CFStringHasOneOfSuffixes(v7, v36, v37, v38, v39, v40, v41, v42, @"s"))
        {
          CFStringReplaceAll(v7, theString);
          v62 = 105;
          p_chars = &v62;
          goto LABEL_13;
        }

        if (CFStringHasSuffix(v7, @"děk"))
        {
          CFStringReplaceAll(v7, theString);
          v18 = CFStringGetLength(v7);
          if (v18 <= 2)
          {
            goto LABEL_57;
          }

          v20.location = v18 - 3;
          v21 = @"ďku";
        }

        else
        {
          if (!CFStringHasSuffix(v7, @"něk"))
          {
            if (CFStringHasSuffix(v7, @"ek"))
            {
              CFStringReplaceAll(v7, theString);
              v18 = CFStringGetLength(v7);
              if (v18 > 1)
              {
                v20.location = v18 - 2;
                v21 = @"ku";
                goto LABEL_21;
              }
            }

            else if (CFStringHasSuffix(v7, @"ter"))
            {
              CFStringReplaceAll(v7, theString);
              v18 = CFStringGetLength(v7);
              if (v18 > 1)
              {
                v20.location = v18 - 2;
                v21 = @"ře";
                goto LABEL_21;
              }
            }

            else
            {
              if (!CFStringHasSuffix(v7, @"tr"))
              {
                v59 = @"b";
                v60 = 0;
                v57 = @"p";
                v58 = @"f";
                v55 = @"m";
                v56 = @"l";
                v53 = @"n";
                v54 = @"v";
                v51 = @"d";
                v52 = @"t";
                if (!__CFStringHasOneOfSuffixes(v7, v43, v44, v45, v46, v47, v48, v49, @"h"))
                {
                  CFRelease(v7);
                  return CFRetain(theString);
                }

                CFStringReplaceAll(v7, theString);
                v61 = 101;
                p_chars = &v61;
                goto LABEL_13;
              }

              CFStringReplaceAll(v7, theString);
              v18 = CFStringGetLength(v7);
              if (v18 > 0)
              {
                v20.location = v18 - 1;
                v21 = @"ře";
                goto LABEL_8;
              }
            }

            goto LABEL_57;
          }

          CFStringReplaceAll(v7, theString);
          v18 = CFStringGetLength(v7);
          if (v18 <= 2)
          {
            goto LABEL_57;
          }

          v20.location = v18 - 3;
          v21 = @"ňku";
        }

        v22 = v7;
        v20.length = 3;
        goto LABEL_22;
      }

      CFStringReplaceAll(v7, theString);
      v18 = CFStringGetLength(v7);
      if (v18 > 1)
      {
        v20.location = v18 - 2;
        v21 = @"le";
        goto LABEL_21;
      }
    }

LABEL_57:
    MEMORY[0x1EEE9AC00](v18, v19.location, v19.length);
    v50 = &v51;
    __strlcpy_chk();
    __strlcat_chk();
    goto LABEL_58;
  }

  MEMORY[0x1EEE9AC00](0, v5, v6);
  v50 = &v53;
  __strlcpy_chk();
  __strlcat_chk();
LABEL_58:
  result = __strlcat_chk();
  qword_1EA849A30 = v50;
  __break(1u);
  return result;
}

CFTypeRef _CFStringCopyVocativeCaseOfGivenName_el(CFStringRef theString1, const __CFLocale *a2)
{
  v4 = 0;
  v37 = *MEMORY[0x1E69E9840];
  do
  {
    if (CFStringCompare(theString1, *(&_CFStringCopyVocativeCaseOfGivenName_el_keys + v4), 0) == kCFCompareEqualTo)
    {
      theString1 = *(&_CFStringCopyVocativeCaseOfGivenName_el_values + v4);
      goto LABEL_29;
    }

    v4 += 8;
  }

  while (v4 != 96);
  MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, theString1);
  if (!MutableCopy)
  {
    MEMORY[0x1EEE9AC00](0, v6, v7);
    v32 = v34;
    __strlcpy_chk();
    __strlcat_chk();
    goto LABEL_35;
  }

  v8 = MutableCopy;
  CFStringLowercase(MutableCopy, a2);
  v35 = @"άς";
  v36 = 0;
  v34[3] = @"ής";
  v34[4] = @"ας";
  if (__CFStringHasOneOfSuffixes(v8, v9, v10, v11, v12, v13, v14, v15, @"ης"))
  {
    goto LABEL_6;
  }

  if (CFStringHasSuffix(v8, @"ιος"))
  {
LABEL_10:
    CFStringReplaceAll(v8, theString1);
    Length = CFStringGetLength(v8);
    if (Length > 1)
    {
      v19.location = Length - 2;
      v20 = @"ε";
      goto LABEL_15;
    }

LABEL_34:
    MEMORY[0x1EEE9AC00](Length, v17, v18);
    v32 = &v33;
    __strlcpy_chk();
    __strlcat_chk();
LABEL_35:
    result = __strlcat_chk();
    qword_1EA849A30 = v32;
    __break(1u);
    return result;
  }

  if (CFStringHasSuffix(v8, @"ός"))
  {
    CFStringReplaceAll(v8, theString1);
    Length = CFStringGetLength(v8);
    if (Length <= 1)
    {
      goto LABEL_34;
    }

    v19.location = Length - 2;
    v20 = @"έ";
LABEL_15:
    v19.length = 2;
    CFStringReplace(v8, v19, v20);
    goto LABEL_16;
  }

  if (CFStringHasSuffix(v8, @"ος"))
  {
    v30 = __CFStringApproximateSyllableCount_el_GR(v8);
    if (v30 == 2)
    {
LABEL_6:
      CFStringReplaceAll(v8, theString1);
      Length = CFStringGetLength(v8);
      if (Length <= 0)
      {
        goto LABEL_34;
      }

      v39.location = Length - 1;
      v39.length = 1;
      CFStringDelete(v8, v39);
      goto LABEL_16;
    }

    if (v30 >= 3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v35 = @"ών";
    v36 = 0;
    if (__CFStringHasOneOfSuffixes(v8, v23, v24, v25, v26, v27, v28, v29, @"ων"))
    {
      v31 = __CFStringApproximateSyllableCount_el_GR(v8);
      switch(v31)
      {
        case 4:
          goto LABEL_26;
        case 3:
          CFStringReplaceAll(v8, theString1);
          CFStringAppend(v8, @"τα");
LABEL_16:
          v21 = CFRetain(v8);
          CFRelease(v8);
          if (v21)
          {
            return v21;
          }

          goto LABEL_29;
        case 2:
LABEL_26:
          CFStringReplaceAll(v8, theString1);
          Length = CFStringGetLength(v8);
          if (Length <= 1)
          {
            goto LABEL_34;
          }

          v19.location = Length - 2;
          v20 = @"ονα";
          goto LABEL_15;
      }
    }
  }

  CFRelease(v8);
LABEL_29:

  return CFRetain(theString1);
}

CFTypeRef _CFStringCopyVocativeCaseOfGivenName_uk(CFStringRef theString, const __CFLocale *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, theString);
  if (MutableCopy)
  {
    v7 = MutableCopy;
    CFStringLowercase(MutableCopy, a2);
    if (CFStringCompare(v7, @"фредрік", 0))
    {
      if (CFStringCompare(v7, @"зорян", 0))
      {
        if (CFStringCompare(v7, @"зиновій", 0))
        {
          if (CFStringCompare(v7, @"младен", 0))
          {
            v73 = @"ма";
            v74 = 0;
            v72 = @"на";
            if (__CFStringHasOneOfSuffixes(v7, v8, v9, v10, v11, v12, v13, v14, @"ва"))
            {
              goto LABEL_7;
            }

            v73 = @"лля";
            v74 = 0;
            v72 = @"оя";
            if (__CFStringHasOneOfSuffixes(v7, v15, v16, v17, v18, v19, v20, v21, @"ія"))
            {
LABEL_22:
              CFStringReplaceAll(v7, theString);
              Length = CFStringGetLength(v7);
              if (Length > 0)
              {
                v24.location = Length - 1;
                v25 = @"є";
                goto LABEL_30;
              }

              goto LABEL_53;
            }

            v73 = @"по";
            v74 = 0;
            v71 = @"ро";
            v72 = @"хіль";
            v70 = @"ися";
            if (__CFStringHasOneOfSuffixes(v7, v34, v35, v36, v37, v38, v39, v40, @"ло"))
            {
              CFStringReplaceAll(v7, theString);
              Length = CFStringGetLength(v7);
              if (Length > 0)
              {
                v24.location = Length - 1;
                v25 = @"е";
                goto LABEL_30;
              }

              goto LABEL_53;
            }

            v72 = @"ся";
            v73 = 0;
            v70 = @"ая";
            v71 = @"тя";
            v68 = @"ль";
            v69 = @"ня";
            v66 = @"ь";
            v67 = @"ля";
            if (__CFStringHasOneOfSuffixes(v7, v41, v42, v43, v44, v45, v46, v47, @"й"))
            {
              CFStringReplaceAll(v7, theString);
              Length = CFStringGetLength(v7);
              if (Length > 0)
              {
                v24.location = Length - 1;
                v25 = @"ю";
                goto LABEL_30;
              }

              goto LABEL_53;
            }

            if (CFStringHasSuffix(v7, @"я"))
            {
              goto LABEL_22;
            }

            v72 = @"г";
            v73 = 0;
            if (__CFStringHasOneOfSuffixes(v7, v49, v50, v51, v52, v53, v54, v55, @"к"))
            {
              CFStringReplaceAll(v7, theString);
              chars = 1091;
              p_chars = &chars;
              goto LABEL_35;
            }

            if (CFStringHasSuffix(v7, @"ко"))
            {
              CFStringReplaceAll(v7, theString);
              Length = CFStringGetLength(v7);
              if (Length > 0)
              {
                v24.location = Length - 1;
                v25 = @"у";
                goto LABEL_30;
              }

              goto LABEL_53;
            }

            if (CFStringHasSuffix(v7, @"ір"))
            {
              CFStringReplaceAll(v7, theString);
              Length = CFStringGetLength(v7);
              if (Length > 1)
              {
                v24.location = Length - 2;
                v25 = @"оре";
LABEL_45:
                v48 = v7;
                v24.length = 2;
                goto LABEL_31;
              }
            }

            else
            {
              if (!CFStringHasSuffix(v7, @"ів"))
              {
                if (CFStringHasSuffix(v7, @"а"))
                {
LABEL_7:
                  CFStringReplaceAll(v7, theString);
                  Length = CFStringGetLength(v7);
                  if (Length > 0)
                  {
                    v24.location = Length - 1;
                    v25 = @"о";
LABEL_30:
                    v48 = v7;
                    v24.length = 1;
LABEL_31:
                    CFStringReplace(v48, v24, v25);
                    goto LABEL_18;
                  }

                  goto LABEL_53;
                }

                if (CFStringHasSuffix(v7, @"шан"))
                {
                  CFStringReplaceAll(v7, theString);
                  v76 = 1086;
                  p_chars = &v76;
                }

                else
                {
                  v72 = @"ц";
                  v73 = 0;
                  v70 = @"б";
                  v71 = @"ш";
                  v68 = @"д";
                  v69 = @"ф";
                  v66 = @"л";
                  v67 = @"п";
                  v65 = @"с";
                  if (!__CFStringHasOneOfSuffixes(v7, v57, v58, v59, v60, v61, v62, v63, @"н"))
                  {
                    CFRelease(v7);
                    return CFRetain(theString);
                  }

                  CFStringReplaceAll(v7, theString);
                  v75 = 1077;
                  p_chars = &v75;
                }

LABEL_35:
                CFStringAppendCharacters(v7, p_chars, 1);
LABEL_18:
                v32 = CFRetain(v7);
                CFRelease(v7);
                if (v32)
                {
                  return v32;
                }

                return CFRetain(theString);
              }

              CFStringReplaceAll(v7, theString);
              Length = CFStringGetLength(v7);
              if (Length > 1)
              {
                v24.location = Length - 2;
                v25 = @"ове";
                goto LABEL_45;
              }
            }

LABEL_53:
            MEMORY[0x1EEE9AC00](Length, v23.location, v23.length);
            v64 = &v65;
            __strlcpy_chk();
            __strlcat_chk();
            goto LABEL_54;
          }

          v31 = CFStringGetLength(v7);
          CFStringReplaceAll(v7, theString);
          v27 = v31 - 1;
          Length = CFStringGetLength(v7);
          v23.location = Length - v27;
          if (Length < v27)
          {
            goto LABEL_53;
          }

          v28 = @"ладлене";
        }

        else
        {
          v30 = CFStringGetLength(v7);
          CFStringReplaceAll(v7, theString);
          v27 = v30 - 1;
          Length = CFStringGetLength(v7);
          v23.location = Length - v27;
          if (Length < v27)
          {
            goto LABEL_53;
          }

          v28 = @"іновію";
        }
      }

      else
      {
        v29 = CFStringGetLength(v7);
        CFStringReplaceAll(v7, theString);
        v27 = v29 - 1;
        Length = CFStringGetLength(v7);
        v23.location = Length - v27;
        if (Length < v27)
        {
          goto LABEL_53;
        }

        v28 = @"оране";
      }
    }

    else
    {
      v26 = CFStringGetLength(v7);
      CFStringReplaceAll(v7, theString);
      v27 = v26 - 1;
      Length = CFStringGetLength(v7);
      v23.location = Length - v27;
      if (Length < v27)
      {
        goto LABEL_53;
      }

      v28 = @"редеріку";
    }

    v23.length = v27;
    CFStringReplace(v7, v23, v28);
    goto LABEL_18;
  }

  MEMORY[0x1EEE9AC00](0, v5, v6);
  v64 = &v67;
  __strlcpy_chk();
  __strlcat_chk();
LABEL_54:
  result = __strlcat_chk();
  qword_1EA849A30 = v64;
  __break(1u);
  return result;
}

CFTypeRef _CFStringCopyVocativeCaseOfGivenName_lt(CFStringRef theString, const __CFLocale *a2)
{
  v18[9] = *MEMORY[0x1E69E9840];
  MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, theString);
  if (!MutableCopy)
  {
    MEMORY[0x1EEE9AC00](0, v5, v6);
    v16 = v18;
    __strlcpy_chk();
    __strlcat_chk();
LABEL_27:
    result = __strlcat_chk();
    qword_1EA849A30 = v16;
    __break(1u);
    return result;
  }

  v7 = MutableCopy;
  CFStringLowercase(MutableCopy, a2);
  if (CFStringHasSuffix(v7, @"jas"))
  {
    CFStringReplaceAll(v7, theString);
    Length = CFStringGetLength(v7);
    if (Length > 0)
    {
      v11.location = Length - 1;
      v12 = @"u";
LABEL_8:
      v13 = v7;
      v11.length = 1;
LABEL_9:
      CFStringReplace(v13, v11, v12);
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (CFStringHasSuffix(v7, @"as"))
  {
    CFStringReplaceAll(v7, theString);
    Length = CFStringGetLength(v7);
    if (Length > 0)
    {
      v11.location = Length - 1;
      v12 = @"i";
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  if (CFStringHasSuffix(v7, @"us"))
  {
    CFStringReplaceAll(v7, theString);
    Length = CFStringGetLength(v7);
    if (Length > 1)
    {
      v11.location = Length - 2;
      v12 = @"au";
      v13 = v7;
      v11.length = 2;
      goto LABEL_9;
    }

LABEL_26:
    MEMORY[0x1EEE9AC00](Length, v9, v10);
    v16 = &v17;
    __strlcpy_chk();
    __strlcat_chk();
    goto LABEL_27;
  }

  if (CFStringHasSuffix(v7, @"is") || CFStringHasSuffix(v7, @"ys"))
  {
    CFStringReplaceAll(v7, theString);
    v20.location = CFStringGetLength(v7) - 1;
    v20.length = 1;
    CFStringDelete(v7, v20);
LABEL_10:
    v14 = CFRetain(v7);
    CFRelease(v7);
    if (v14)
    {
      return v14;
    }

    goto LABEL_22;
  }

  if (CFStringHasSuffix(v7, @"ė"))
  {
    CFStringReplaceAll(v7, theString);
    Length = CFStringGetLength(v7);
    if (Length > 0)
    {
      v11.location = Length - 1;
      v12 = @"e";
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  CFRelease(v7);
LABEL_22:

  return CFRetain(theString);
}

BOOL __CFStringHasOneOfSuffixes(CFStringRef theString, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = &a9;
  do
  {
    v10 = v13++;
    v11 = *v10;
  }

  while (*v10 && !CFStringHasSuffix(theString, *v10));
  return v11 != 0;
}

uint64_t __CFStringApproximateSyllableCount_el_GR(const __CFString *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  theString = a1;
  v32 = 0;
  Length = CFStringGetLength(a1);
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v30 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  memset(v28, 0, sizeof(v28));
  v34 = 0;
  v35 = 0;
  v31 = CStringPtr;
  v4 = Length;
  if (Length >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      if (v30)
      {
        v8 = v30[v32 + v5];
      }

      else if (v31)
      {
        v8 = v31[v32 + v5];
      }

      else
      {
        v9 = v35 > v5 && v7 <= v5;
        if (!v9)
        {
          v10 = v5 - 4;
          if (v5 < 4)
          {
            v10 = 0;
          }

          if (v10 + 64 < v4)
          {
            v4 = v10 + 64;
          }

          v34 = v10;
          v35 = v4;
          v37.length = v4 - v10;
          v37.location = v32 + v10;
          CFStringGetCharacters(theString, v37, v28);
          v7 = v34;
        }

        v8 = *(v28 + v5 - v7);
      }

      if (v8 > 0x3B8u)
      {
        if (v8 > 0x3C8u)
        {
          if (v8 - 972 >= 3 && v8 != 969)
          {
            goto LABEL_58;
          }

          goto LABEL_31;
        }

        switch(v8)
        {
          case 0x3B9u:
            v11 = v5 + 1;
            v14 = Length;
            if (Length > (v5 + 1))
            {
              if (v30)
              {
                v15 = v30[v32 + v11];
              }

              else if (v31)
              {
                v15 = v31[v32 + v11];
              }

              else
              {
                if (v35 <= v11 || v7 > v11)
                {
                  v19 = v5 - 3;
                  if (v5 < 3)
                  {
                    v19 = 0;
                  }

                  if (v19 + 64 < Length)
                  {
                    v14 = v19 + 64;
                  }

                  v34 = v19;
                  v35 = v14;
                  v39.length = v14 - v19;
                  v39.location = v32 + v19;
                  CFStringGetCharacters(theString, v39, v28);
                  v7 = v34;
                }

                v15 = *(v28 + v11 - v7);
              }

              v20 = v15 - 940;
              v9 = v20 > 0x22;
              v21 = (1 << v20) & 0x420000021;
              if (!v9 && v21 != 0)
              {
                goto LABEL_57;
              }
            }

LABEL_56:
            v11 = v5;
            goto LABEL_57;
          case 0x3BFu:
            v11 = v5 + 1;
            v16 = Length;
            if (Length > (v5 + 1))
            {
              if (v30)
              {
                v17 = v30[v32 + v11];
              }

              else if (v31)
              {
                v17 = v31[v32 + v11];
              }

              else
              {
                if (v35 <= v11 || v7 > v11)
                {
                  v23 = v5 - 3;
                  if (v5 < 3)
                  {
                    v23 = 0;
                  }

                  if (v23 + 64 < Length)
                  {
                    v16 = v23 + 64;
                  }

                  v34 = v23;
                  v35 = v16;
                  v40.length = v16 - v23;
                  v40.location = v32 + v23;
                  CFStringGetCharacters(theString, v40, v28);
                  v7 = v34;
                }

                v17 = *(v28 + v11 - v7);
              }

              v24 = v17 - 943;
              v9 = v24 > 0x1E;
              v25 = (1 << v24) & 0x40400401;
              if (!v9 && v25 != 0)
              {
                goto LABEL_57;
              }
            }

            goto LABEL_56;
          case 0x3C5u:
            goto LABEL_35;
        }
      }

      else
      {
        if (v8 <= 0x3B0u)
        {
          if (v8 - 940 >= 4)
          {
            if (!v8)
            {
              return v6;
            }

            goto LABEL_58;
          }

LABEL_31:
          ++v6;
          goto LABEL_58;
        }

        if (v8 == 945 || v8 == 949)
        {
LABEL_35:
          v11 = v5 + 1;
          v12 = Length;
          if (Length <= (v5 + 1))
          {
            goto LABEL_56;
          }

          if (v30)
          {
            v13 = v30[v32 + v11];
          }

          else if (v31)
          {
            v13 = v31[v32 + v11];
          }

          else
          {
            if (v35 <= v11 || v7 > v11)
            {
              v18 = v5 - 3;
              if (v5 < 3)
              {
                v18 = 0;
              }

              if (v18 + 64 < Length)
              {
                v12 = v18 + 64;
              }

              v34 = v18;
              v35 = v12;
              v38.length = v12 - v18;
              v38.location = v32 + v18;
              CFStringGetCharacters(theString, v38, v28);
              v7 = v34;
            }

            v13 = *(v28 + v11 - v7);
          }

          if (v13 != 953 && v13 != 943)
          {
            goto LABEL_56;
          }

LABEL_57:
          ++v6;
          v5 = v11;
          goto LABEL_58;
        }

        if (v8 == 951)
        {
          goto LABEL_31;
        }
      }

LABEL_58:
      ++v5;
      v4 = Length;
      if (Length <= v5)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t boundPairReadOpenComplete(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 4))
  {
    CFReadStreamSignalEvent(a1, 1uLL, 0, a4, a5, a6, a7, a8);
    if (boundPairReadCanRead(v10, a3))
    {
      CFReadStreamSignalEvent(a1, 2uLL, 0, v11, v12, v13, v14, v15);
    }

    _wakeReadStreamScheduledRunLoops(a1);
  }

  return 1;
}

__CFDictionary *boundPairReadSetProperty(uint64_t a1, const __CFString *a2, const void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = CFStringCompare(@"_kCFStreamPropertyHTTPTrailer", a2, 1uLL);
  result = 0;
  if (a4)
  {
    if (v7 == kCFCompareEqualTo)
    {
      result = *(a4 + 40);
      if (result || (result = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (*(a4 + 40) = result) != 0))
      {
        if (a3)
        {
          CFDictionarySetValue(result, a2, a3);
        }

        else
        {
          CFDictionaryRemoveValue(result, a2);
        }

        return 1;
      }
    }
  }

  return result;
}

void boundPairReadUnschedule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 4);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      *(a4 + 4) = v6;
    }
  }
}

uint64_t boundPairWriteOpenComplete(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 52))
  {
    CFWriteStreamSignalEvent(a1, 1uLL, 0, a4, a5, a6, a7, a8);
    CFWriteStreamSignalEvent(a1, 4uLL, 0, v9, v10, v11, v12, v13);
    _wakeWriteStreamScheduledRunLoops(a1);
  }

  return 1;
}

uint64_t _NSIndirectTaggedPointerStringIsEqualToTaggedPointer(unint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return isEqualToTaggedPointer_0(a1, a2);
  }
}

uint64_t (**__CFStringEncodingGetSimplifiedChineseConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingIsDecomposableCharacter)
  {
    __CFStringEncodingIsDecomposableCharacter = a2(1);
    __CFStringEncodingDecomposeCharacter = a2(2);
    __CFStringEncodingIsValidCombiningCharacterForLatin1_1 = a2(3);
    __CFStringEncodingPrecomposeLatinCharacter_3 = a2(4);
  }

  v4 = __CFConverterEUC_CN;
  v5 = __CFConverterMacSimplifiedChinese;
  if (a1 != 25)
  {
    v5 = 0;
  }

  if (a1 != 2352)
  {
    v4 = v5;
  }

  if (a1 == 2565)
  {
    return __CFConverterGB_HZ;
  }

  else
  {
    return v4;
  }
}

uint64_t __CFToEUC_CN(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a2 >= 0x80)
  {
    v5 = __CFToGB2312(a2);
    if (v5 == 65533)
    {
      return 0;
    }

    LOBYTE(a2) = v5 | 0x80;
    *a3++ = (v5 | 0x8080) >> 8;
    result = 2;
  }

  else
  {
    result = 1;
  }

  *a3 = a2;
  return result;
}

uint64_t __CFFromEUC_CN(uint64_t a1, char *a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = *a2;
  if (*a2 < 0)
  {
    result = 0;
    if (a3 >= 2 && (v4 - 255) >= 0xFFFFFFA2)
    {
      v6 = a2[1] & 0x7F | ((v4 & 0x7F) << 8);
      if ((v6 - 30594) < 0xA99Fu)
      {
        goto LABEL_13;
      }

      v7 = &__CFFromGB2312CharMap;
      v8 = (&__CFFromGB2312CharMap + 15906);
      while (1)
      {
        v9 = &v7[33 * ((0xF83E0F83E0F83E1 * (v8 - v7)) >> 1)];
        v10 = *v9;
        if (v10 <= v6)
        {
          if (v10 + 32 > v6)
          {
            v11 = v9[v6 - v10 + 1];
            if (v11)
            {
              *a4 = v11;
              if (v11 != 65533)
              {
                return 2;
              }

              return 0;
            }

LABEL_13:
            *a4 = -3;
            return 0;
          }

          v7 = v9 + 33;
        }

        else
        {
          v8 = v9 - 33;
        }

        if (v7 > v8)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    *a4 = v4;
    return 1;
  }

  return result;
}

uint64_t __CFToEUC_CNLen(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  for (result = 0; a3; --a3)
  {
    v4 = *a2++;
    if (v4 < 0x80)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    result += v5;
  }

  return result;
}

uint64_t __CFFromEUC_CNLen(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = a3 == 1 || *a2 >= 0;
    v6 = !v5;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    a2 += v7;
    if (v6)
    {
      v8 = -2;
    }

    else
    {
      v8 = -1;
    }

    ++result;
    v9 = __OFADD__(v8, a3);
    a3 += v8;
  }

  while (!((a3 < 0) ^ v9 | (a3 == 0)));
  return result;
}

uint64_t __CFToEUC_CNPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = *a2;
  if (v9 <= 0x7F)
  {
    v10 = __CFStringEncodingPrecomposeLatinCharacter_3(a2, a3, 0);
    goto LABEL_3;
  }

  result = 0;
  v14 = a2[1];
  if (v14 <= 0x3098)
  {
    if (v14 == 774)
    {
      if ((v9 & 0xFFFFFFDF) != 0x418)
      {
        return 0;
      }

      v10 = v9 | 1;
    }

    else
    {
      if (v14 != 776)
      {
        return result;
      }

      if (v9 == 1077)
      {
        v15 = 1105;
      }

      else
      {
        v15 = -3;
      }

      if (v9 == 1045)
      {
        v10 = 1025;
      }

      else
      {
        v10 = v15;
      }
    }

    goto LABEL_23;
  }

  if (v14 != 12441)
  {
    if (v14 != 12442)
    {
      return result;
    }

    v10 = v9 + 2;
    goto LABEL_3;
  }

  if (v9 != 12454)
  {
    v10 = v9 + 1;
LABEL_3:
    if (v10 < 0x80u)
    {
      v11 = &v24;
      goto LABEL_5;
    }

LABEL_23:
    if ((v10 + 15) < 0xB3u)
    {
      return 0;
    }

    v16 = v10;
    goto LABEL_25;
  }

  v16 = 12532;
  v10 = 12532;
LABEL_25:
  v17 = &__CFToGB2312CharMap;
  v18 = (&__CFToGB2312CharMap + 36516);
  while (1)
  {
    v19 = &v17[17 * ((0xF0F0F0F0F0F0F0F1 * (v18 - v17)) >> 1)];
    v20 = *v19;
    if (v20 <= v10)
    {
      break;
    }

    v18 = v19 - 17;
LABEL_30:
    if (v17 > v18)
    {
      return 0;
    }
  }

  if (v20 + 16 <= v16)
  {
    v17 = v19 + 17;
    goto LABEL_30;
  }

  v21 = v19[v16 - v20 + 1];
  if (v21)
  {
    v22 = v21 == 65533;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    return 0;
  }

  LOBYTE(v10) = v21 | 0x80;
  v24 = (v21 | 0x8080) >> 8;
  v11 = &v23;
LABEL_5:
  *v11 = v10;
  v12 = v24;
  if (!v24)
  {
    return 0;
  }

  result = 2;
  *a6 = 2;
  if (a5)
  {
    if (a5 >= 2)
    {
      *a4 = v12;
      a4[1] = v23;
      return 2;
    }

    return 0;
  }

  return result;
}

uint64_t __CFIsValidCombiningCharSimplifiedChinese(uint64_t a1)
{
  if ((a1 - 774) <= 0x32 && ((1 << (a1 - 6)) & 0x4000000000005) != 0 || (a1 - 12441) < 2)
  {
    return 1;
  }

  else
  {
    return __CFStringEncodingIsValidCombiningCharacterForLatin1_1(a1);
  }
}

uint64_t __CFToGB2312(unsigned int a1)
{
  if ((a1 + 15) < 0xB3u)
  {
    return -3;
  }

  v1 = &__CFToGB2312CharMap;
  v2 = (&__CFToGB2312CharMap + 36516);
  while (1)
  {
    v3 = &v1[17 * ((0xF0F0F0F0F0F0F0F1 * (v2 - v1)) >> 1)];
    v4 = *v3;
    if (v4 <= a1)
    {
      break;
    }

    v2 = v3 - 17;
LABEL_7:
    if (v1 > v2)
    {
      return -3;
    }
  }

  if (v4 + 16 <= a1)
  {
    v1 = v3 + 17;
    goto LABEL_7;
  }

  v5 = v3[a1 - v4 + 1];
  if (!v5)
  {
    return -3;
  }

  return v5;
}

uint64_t __CFToMacSimplifiedChinese(char a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t *a6)
{
  v61[1] = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    v19 = 0;
    v12 = 0;
    goto LABEL_171;
  }

  v11 = 0;
  v12 = 0;
  v59 = a3 + 1;
  v13 = &__CFToMacSimplifiedChineseMap;
  while (1)
  {
    if (!a5 || v11 < a5)
    {
      goto LABEL_15;
    }

    if ((a1 & 0x10) == 0)
    {
      goto LABEL_170;
    }

    v14 = *a2;
    if ((v14 - 774) <= 0x32 && ((1 << (v14 - 6)) & 0x4000000000005) != 0 || (v14 - 12441) < 2)
    {
      goto LABEL_16;
    }

    v17 = v13;
    IsValidCombiningCharacterForLatin1_1 = __CFStringEncodingIsValidCombiningCharacterForLatin1_1(*a2);
    v13 = v17;
    if ((IsValidCombiningCharacterForLatin1_1 & 1) == 0)
    {
      v14 = *a2;
      if ((v14 & 0xFFF0) != 0xF870)
      {
        goto LABEL_170;
      }
    }

    else
    {
LABEL_15:
      v14 = *a2;
      if (v14 < 0x80)
      {
        goto LABEL_18;
      }
    }

LABEL_16:
    if (a1 < 0 && (v14 - 131) <= 0x1Cu)
    {
LABEL_18:
      v19 = v11 + 1;
      if (a5)
      {
        *a4++ = v14;
      }

      goto LABEL_55;
    }

    if (v12 + 1 < a3 && v14 == 252)
    {
      if (a2[1] == -1921)
      {
        v19 = v11 + 1;
        if (a5)
        {
          *a4++ = 0x80;
        }

        ++a2;
        ++v12;
        goto LABEL_55;
      }

      goto LABEL_27;
    }

    if ((v14 + 443) < 0x25Bu)
    {
      break;
    }

LABEL_27:
    v20 = v13 + 78;
    v21 = v13;
    while (1)
    {
      v22 = &v21[2 * ((v20 - v21) >> 3)];
      v23 = *v22;
      if (v23 <= v14)
      {
        break;
      }

      v20 = v22 - 2;
LABEL_32:
      if (v21 > v20)
      {
        goto LABEL_33;
      }
    }

    if (v23 < v14)
    {
      v21 = v22 + 2;
      goto LABEL_32;
    }

    v28 = v22[1];
    if (v28 > 0xFF)
    {
      v19 = v11 + 2;
      if (a5)
      {
        if (v19 > a5)
        {
          goto LABEL_170;
        }

        *a4 = BYTE1(v28);
        goto LABEL_98;
      }
    }

    else
    {
      v19 = v11 + 1;
      if (a5)
      {
        *a4++ = v28;
      }
    }

LABEL_55:
    ++a2;
    ++v12;
    v11 = v19;
    if (v12 >= a3)
    {
      goto LABEL_171;
    }
  }

LABEL_33:
  if ((v14 + 15) < 0xB3u)
  {
    goto LABEL_51;
  }

  v24 = &__CFToGB2312CharMap;
  v25 = (&__CFToGB2312CharMap + 36516);
  while (2)
  {
    v26 = &v24[17 * ((0xF0F0F0F0F0F0F0F1 * (v25 - v24)) >> 1)];
    v27 = *v26;
    if (v27 > v14)
    {
      v25 = v26 - 17;
      goto LABEL_39;
    }

    if (v27 + 16 <= v14)
    {
      v24 = v26 + 17;
LABEL_39:
      if (v24 > v25)
      {
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  LOWORD(v28) = v26[(v14 - v27) + 1];
  if (v28)
  {
    v29 = v26[(v14 - v27) + 1] == 65533;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v19 = v11 + 2;
    if (a5)
    {
      if (v19 > a5)
      {
        goto LABEL_170;
      }

      *a4 = BYTE1(v28) | 0x80;
      LOBYTE(v28) = v28 | 0x80;
LABEL_98:
      a4[1] = v28;
      a4 += 2;
    }

    goto LABEL_55;
  }

LABEL_51:
  if ((a1 & 8) != 0 || v12 < 1)
  {
    goto LABEL_170;
  }

  if ((a1 & 0x10) == 0)
  {
LABEL_54:
    v19 = v11;
    goto LABEL_55;
  }

  if (v14 > 823)
  {
    if ((v14 - 12441) >= 2 && v14 != 824)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (v14 == 768)
    {
      if (*(a2 - 1) == 110)
      {
        if (a5)
        {
          if (v11 >= a5)
          {
            goto LABEL_170;
          }

          v30 = -16472;
          goto LABEL_137;
        }

LABEL_138:
        v19 = v11 + 1;
        goto LABEL_55;
      }

      goto LABEL_72;
    }

    if (v14 != 774 && v14 != 776)
    {
LABEL_72:
      v58 = a4;
      v31 = v13;
      v32 = __CFStringEncodingIsValidCombiningCharacterForLatin1_1(v14);
      v13 = v31;
      a4 = v58;
      if (!v32)
      {
        if (v14 == 63615)
        {
          if (*(a2 - 1) != 252)
          {
            goto LABEL_170;
          }

          v19 = v11 - 1;
          if (a5)
          {
            *(v58 - 2) = 0x80;
          }

          a4 = v58 - 1;
          goto LABEL_55;
        }

        if (v14 != 63614)
        {
          goto LABEL_170;
        }

        v44 = *(a2 - 1);
        if (v44 > 0xFF00)
        {
          if (*(a2 - 1) <= 0xFF19u)
          {
            if (v44 == 65281)
            {
              v45 = -34;
            }

            else
            {
              if (v44 != 65292)
              {
                goto LABEL_170;
              }

              v45 = -39;
            }
          }

          else
          {
            switch(v44)
            {
              case 0xFF1Au:
                v45 = -36;
                break;
              case 0xFF1Bu:
                v45 = -35;
                break;
              case 0xFF1Fu:
                v45 = -33;
                break;
              default:
                goto LABEL_170;
            }
          }
        }

        else if (*(a2 - 1) <= 0x3001u)
        {
          if (v44 == 8943)
          {
            v45 = -13;
          }

          else
          {
            if (v44 != 12289)
            {
              goto LABEL_170;
            }

            v45 = -37;
          }
        }

        else
        {
          switch(v44)
          {
            case 0x3002u:
              v45 = -38;
              break;
            case 0x3016u:
              v45 = -20;
              break;
            case 0x3017u:
              v45 = -19;
              break;
            default:
              goto LABEL_170;
          }
        }

        if (a5)
        {
          *(v58 - 2) = -90;
          *(v58 - 1) = v45;
        }

        goto LABEL_54;
      }
    }
  }

  v61[0] = 2;
  v33 = a2 - 1;
  v34 = *(a2 - 1);
  if (v34 < 0x80)
  {
    v35 = a4;
    v36 = v13;
    v37 = __CFStringEncodingPrecomposeLatinCharacter_3(a2 - 1, v59 - v12, v61);
    v33 = a2 - 1;
    v13 = v36;
    a4 = v35;
    v38 = v61[0] - 2;
    if (v61[0] <= 2)
    {
      v39 = 0;
    }

    else
    {
      v39 = v61[0] - 2;
    }

    goto LABEL_77;
  }

  v40 = *a2;
  if (v40 > 0x3098)
  {
    if (v40 == 12441)
    {
      v38 = 0;
      v39 = 0;
      if (v34 == 12454)
      {
        v37 = 12532;
      }

      else
      {
        v37 = v34 + 1;
      }

LABEL_77:
      v12 += v39;
      if (v37 != 252 || a3 - v12 < 2)
      {
        goto LABEL_111;
      }

      if (a2[1] == -1921)
      {
        if (a5)
        {
          *(a4 - 1) = 0x80;
        }

        ++v12;
        goto LABEL_54;
      }

      v37 = 252;
LABEL_112:
      v47 = v13 + 78;
      v48 = v13;
      while (1)
      {
        v49 = &v48[2 * ((v47 - v48) >> 3)];
        v50 = *v49;
        if (v50 <= v37)
        {
          if (v50 >= v37)
          {
            if (a5)
            {
              if (v11 >= a5)
              {
                goto LABEL_170;
              }

              v30 = __rev16(v49[1]);
LABEL_137:
              *(a4++ - 1) = v30;
            }

            goto LABEL_138;
          }

          v48 = v49 + 2;
        }

        else
        {
          v47 = v49 - 2;
        }

        if (v48 > v47)
        {
          goto LABEL_118;
        }
      }
    }

    if (v40 == 12442)
    {
      v38 = 0;
      v39 = 0;
      v37 = v34 + 2;
      goto LABEL_77;
    }

    goto LABEL_172;
  }

  if (v40 == 774)
  {
    v38 = 0;
    v46 = v34 & 0xFFFFFFDF;
    v43 = v34 | 1;
    v42 = v46 == 1048;
    v41 = -3;
    goto LABEL_108;
  }

  if (v40 != 776)
  {
LABEL_172:
    v38 = 0;
    goto LABEL_173;
  }

  v38 = 0;
  if (v34 == 1077)
  {
    v41 = 1105;
  }

  else
  {
    v41 = -3;
  }

  v42 = v34 == 1045;
  v43 = 1025;
LABEL_108:
  if (v42)
  {
    v37 = v43;
  }

  else
  {
    v37 = v41;
  }

LABEL_111:
  if ((v37 + 443) >= 0x25Bu)
  {
    goto LABEL_112;
  }

LABEL_118:
  if ((v37 + 15) < 0xB3u)
  {
    goto LABEL_173;
  }

  v51 = &__CFToGB2312CharMap;
  v52 = (&__CFToGB2312CharMap + 36516);
  while (1)
  {
    v53 = &v51[17 * ((0xF0F0F0F0F0F0F0F1 * (v52 - v51)) >> 1)];
    v54 = *v53;
    if (v54 <= v37)
    {
      break;
    }

    v52 = v53 - 17;
LABEL_124:
    if (v51 > v52)
    {
      goto LABEL_173;
    }
  }

  if (v54 + 16 <= v37)
  {
    v51 = v53 + 17;
    goto LABEL_124;
  }

  v55 = v53[v37 - v54 + 1];
  if (!v55 || v55 == 65533)
  {
LABEL_173:
    v12 -= v38;
    *a6 = v11;
    return v12;
  }

  if (!a5)
  {
LABEL_147:
    if (*v33 >= 0x80u)
    {
      v19 = v11;
    }

    else
    {
      v19 = v11 + 1;
    }

    goto LABEL_55;
  }

  if (*v33 > 0x7Fu)
  {
    *(a4 - 2) = HIBYTE(v55) | 0x80;
    *(a4 - 1) = v55 | 0x80;
    goto LABEL_147;
  }

  if (v11 < a5)
  {
    *(a4 - 1) = HIBYTE(v55) | 0x80;
    *a4 = v55 | 0x80;
    goto LABEL_147;
  }

LABEL_170:
  v19 = v11;
LABEL_171:
  *a6 = v19;
  return v12;
}

uint64_t __CFFromMacSimplifiedChinese(uint64_t a1, char *a2, uint64_t a3, __int16 *a4, uint64_t a5, uint64_t *a6)
{
  v57 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (a3 < 1)
  {
    return 0;
  }

  v9 = a3;
  v12 = 0;
  v13 = 0;
  v14 = a1 & 0xC0;
  if ((a1 & 0x200) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  if ((a1 & 0x200) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = &unk_1EA849000;
  while (2)
  {
    if (a5 && v12 >= a5)
    {
      return v13;
    }

    v18 = *a2;
    if ((*a2 & 0x80000000) == 0 || v18 == 160 || (a1 & 0x80) != 0 && (v18 - 131) <= 0x1C)
    {
      goto LABEL_15;
    }

    if (v18 == 128)
    {
      if (v14)
      {
        if (!a5)
        {
          v21 = a4;
          v23 = v15;
          goto LABEL_58;
        }

        if (v12 + v15 > a5)
        {
          return v13;
        }

        *a4 = 50856053;
        v21 = a4 + 2;
        if ((a1 & 0x200) != 0)
        {
          v23 = 2;
          goto LABEL_58;
        }

        v22 = 3;
        v23 = 3;
      }

      else
      {
        if (!a5)
        {
          v21 = a4;
          v23 = v16;
          goto LABEL_58;
        }

        if (v12 + v16 > a5)
        {
          return v13;
        }

        *a4 = 252;
        v21 = a4 + 1;
        if ((a1 & 0x200) != 0)
        {
          v23 = 1;
          goto LABEL_58;
        }

        v22 = 2;
        v23 = 2;
      }

      *v21 = -1921;
      v21 = &a4[v22];
LABEL_58:
      v12 += v23;
      a4 = v21;
LABEL_18:
      v19 = 1;
      goto LABEL_19;
    }

    if ((v18 - 253) <= 0xFFFFFF85)
    {
      if (*a2 > 0xFCu)
      {
        if (v18 == 253)
        {
          LOWORD(v18) = 169;
        }

        else if (v18 == 254)
        {
          LOWORD(v18) = 8482;
        }

        else
        {
          LOWORD(v18) = 8230;
        }

        goto LABEL_15;
      }

      if (v18 == 129)
      {
        if ((a1 & 0x200) == 0)
        {
          LOWORD(v18) = -1920;
          goto LABEL_15;
        }
      }

      else if (v18 == 130 && (a1 & 0x200) == 0)
      {
        LOWORD(v18) = -1919;
LABEL_15:
        if (a5)
        {
          *a4++ = v18;
        }

        ++v12;
        goto LABEL_18;
      }

      v19 = 1;
      goto LABEL_20;
    }

    if (v9 == 1)
    {
      return v13;
    }

    v24 = a2[1];
    if (v18 == 163)
    {
      if (v24 == 164)
      {
        v25 = 165;
        goto LABEL_112;
      }

      if (v24 == 254)
      {
        v25 = 8254;
        goto LABEL_112;
      }
    }

    else if (v18 == 161)
    {
      if (a2[1] <= 0xABu)
      {
        switch(v24)
        {
          case 164:
            v25 = 183;
            goto LABEL_112;
          case 170:
            v25 = 8212;
            goto LABEL_112;
          case 171:
            v25 = 12316;
            goto LABEL_112;
        }
      }

      else
      {
        if (a2[1] <= 0xE8u)
        {
          if (v24 != 172)
          {
            if (v24 == 173)
            {
              v25 = 8943;
              goto LABEL_112;
            }

            goto LABEL_72;
          }

          v25 = 8214;
LABEL_112:
          if (a5)
          {
            *a4++ = v25;
          }

          goto LABEL_114;
        }

        if (v24 == 233)
        {
          v25 = 162;
          goto LABEL_112;
        }

        if (v24 == 234)
        {
          v25 = 163;
          goto LABEL_112;
        }
      }
    }

LABEL_72:
    v26 = v24 & 0x7F | ((v18 & 0x7F) << 8);
    if (((v24 & 0x7F | ((v18 & 0x7F) << 8)) - 30594) < 0xA99Fu)
    {
      break;
    }

    v27 = &__CFFromGB2312CharMap;
    v28 = (&__CFFromGB2312CharMap + 15906);
    while (1)
    {
      v29 = &v27[33 * ((0xF83E0F83E0F83E1 * (v28 - v27)) >> 1)];
      v30 = *v29;
      if (v30 <= v26)
      {
        break;
      }

      v28 = v29 - 33;
LABEL_78:
      if (v27 > v28)
      {
        goto LABEL_85;
      }
    }

    if (v30 + 32 <= v26)
    {
      v27 = v29 + 33;
      goto LABEL_78;
    }

    v31 = v29[v26 - v30 + 1];
    if (v31 != 65533 && v31 != 0)
    {
      if (v14)
      {
        v55 = v16;
        v46 = v15;
        v47 = (*(v17 + 434))(v31, (a1 >> 7) & 1, 252, 63615, 50856053, 4294936702, 43423, __CFFromMacSimplifiedChineseMapA8);
        v17 = &unk_1EA849000;
        v16 = v55;
        v15 = v46;
        if (v47)
        {
          v48 = __CFStringEncodingDecomposeCharacter(a1, v31, v56, 63615, 50856053, 4294936702, 43423, __CFFromMacSimplifiedChineseMapA8);
          v49 = *a6;
          v12 = *a6 + v48;
          *a6 = v12;
          if (!a5)
          {
            v19 = 2;
            v15 = v46;
            v16 = v55;
            v17 = &unk_1EA849000;
            goto LABEL_20;
          }

          if (v12 > a5)
          {
            *a6 = v49;
            return v13;
          }

          v15 = v46;
          v16 = v55;
          v17 = &unk_1EA849000;
          if (v48 < 1)
          {
            v19 = 2;
          }

          else
          {
            v50 = v48 + 1;
            v51 = v56;
            do
            {
              v52 = *v51++;
              *a4++ = v52;
              --v50;
            }

            while (v50 > 1);
            v19 = 2;
          }

LABEL_20:
          v13 += v19;
          a2 += v19;
          v20 = v9 <= v19;
          v9 -= v19;
          if (v20)
          {
            return v13;
          }

          continue;
        }
      }

      if (a5)
      {
        *a4++ = v31;
      }

      v12 = *a6;
LABEL_114:
      ++v12;
      goto LABEL_115;
    }

    break;
  }

LABEL_85:
  if (v18 == 168)
  {
    if ((v24 + 69) > 5u)
    {
      return v13;
    }

    v39 = __CFFromMacSimplifiedChineseMapA8[v24 - 187];
    if (v14)
    {
      v54 = v16;
      v40 = v15;
      if ((*(v17 + 434))(__CFFromMacSimplifiedChineseMapA8[v24 - 187], (a1 >> 7) & 1, 252, 63615, 50856053, 4294936702, 43423, __CFFromMacSimplifiedChineseMapA8))
      {
        __CFStringEncodingDecomposeCharacter(a1, v39, v56, v41, v42, v43, v44, v45);
        v12 = *a6 + 2;
        if (!a5)
        {
          v19 = 2;
          v15 = v40;
          v16 = v54;
          v17 = &unk_1EA849000;
          goto LABEL_19;
        }

        v16 = v54;
        v17 = &unk_1EA849000;
        if (v12 <= a5)
        {
          v15 = v40;
          *a4 = v56[0];
          a4[1] = v56[1];
          a4 += 2;
          v19 = 2;
          goto LABEL_19;
        }

        return v13;
      }

      v12 = *a6;
      v15 = v40;
      v16 = v54;
      v17 = &unk_1EA849000;
    }

    if (!a5)
    {
      goto LABEL_114;
    }

    if (v12 < a5)
    {
      *a4++ = v39;
      goto LABEL_114;
    }
  }

  else if (v18 == 166 && (v24 + 39) <= 0x1Cu)
  {
    v33 = v24 - 217;
    v34 = 0x418007FuLL >> v33;
    v35 = ((a1 & 0x200) == 0) & (0x418007FuLL >> v33);
    if (v35)
    {
      v36 = 2;
    }

    else
    {
      v36 = 1;
    }

    v12 += v36;
    if (!a5)
    {
      goto LABEL_115;
    }

    if (v12 <= a5)
    {
      v37 = __CFFromMacSimplifiedChineseMapA6[v33];
      v38 = HIWORD(v37);
      if ((v34 & 1) == 0)
      {
        LOWORD(v38) = v37;
      }

      *a4 = v38;
      if (v35)
      {
        a4[1] = v37;
        a4 += 2;
      }

      else
      {
        ++a4;
      }

LABEL_115:
      v19 = 2;
LABEL_19:
      *a6 = v12;
      goto LABEL_20;
    }
  }

  return v13;
}

uint64_t __CFFromMacSimplifiedChineseLen(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  result = 0;
  do
  {
    if ((*a2 & 0x80) == 0 || (*a2 - 129 <= 0x1F ? (v4 = ((1 << (*a2 + 127)) & 0x80000003) == 0) : (v4 = 1), v4 ? (v5 = a3 == 1) : (v5 = 1), v5 || *a2 >= 0xFDu))
    {
      ++a2;
      --a3;
    }

    else
    {
      v6 = *a2;
      v7 = a3 - 1;
      if (v6 == 128)
      {
        v8 = a2 + 1;
      }

      else
      {
        v8 = a2 + 2;
      }

      if (v6 == 128)
      {
        v9 = result + 1;
      }

      else
      {
        v7 = a3 - 2;
        v9 = result;
      }

      if (v6 == 161)
      {
        a2 += 2;
      }

      else
      {
        a2 = v8;
      }

      if (v6 == 161)
      {
        a3 -= 2;
      }

      else
      {
        a3 = v7;
      }

      if (v6 == 161)
      {
        ++result;
      }

      else
      {
        result = v9;
      }
    }

    ++result;
  }

  while (a3 > 0);
  return result;
}

uint64_t __CFToGB_HZ(uint64_t a1, unsigned __int16 *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t *a6)
{
  v6 = a6;
  v72[1] = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    v10 = 0;
    v15 = a2;
    goto LABEL_136;
  }

  v10 = 0;
  v11 = &a2[a3];
  if (a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v67 = v12;
  v13 = 0x8EA4u;
  v14 = 1;
  v15 = a2;
  while (2)
  {
    if (a5 && v10 >= a5)
    {
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_112;
      }

      v16 = *v15;
      if ((v16 - 774) <= 0x32 && ((1 << (v16 - 6)) & 0x4000000000005) != 0 || (v16 - 12441) < 2)
      {
        goto LABEL_38;
      }

      v19 = v11;
      v68 = v10;
      v20 = v14;
      v21 = a1;
      v22 = a5;
      IsValidCombiningCharacterForLatin1_1 = __CFStringEncodingIsValidCombiningCharacterForLatin1_1(v16);
      a5 = v22;
      a1 = v21;
      v14 = v20;
      v10 = v68;
      v11 = v19;
      v13 = 36516;
      if (!IsValidCombiningCharacterForLatin1_1)
      {
        goto LABEL_112;
      }
    }

    v16 = *v15;
    if (v16 <= 0x7F)
    {
      v24 = v10 + 2;
      if (v14)
      {
        v24 = v10;
        v25 = 0;
      }

      else
      {
        v25 = "~}";
      }

      v26 = "~";
      if ((v14 & 1) == 0)
      {
        v26 = "~}~";
      }

      if (v16 == 126)
      {
        v27 = v24 + 1;
      }

      else
      {
        v27 = v24;
      }

      if (v16 == 126)
      {
        v28 = v26;
      }

      else
      {
        v28 = v25;
      }

      v10 = v27 + 1;
      if (a5)
      {
        if (v27 >= a5)
        {
          if (((v16 != 126) & v14) != 0)
          {
            v65 = -1;
          }

          else
          {
            v65 = ~strlen(v28);
          }

          v6 = a6;
          v10 += v65;
          goto LABEL_136;
        }

        if (((v16 != 126) & v14) == 0)
        {
          v29 = *v28;
          if (*v28)
          {
            v30 = (v28 + 1);
            do
            {
              *a4++ = v29;
              v31 = *v30++;
              v29 = v31;
            }

            while (v31);
          }
        }

        *a4++ = v16;
      }

      v14 = 1;
      goto LABEL_108;
    }

LABEL_38:
    if ((v16 + 15) < 0xB3u)
    {
      break;
    }

    v32 = (&__CFToGB2312CharMap + v13);
    v33 = &__CFToGB2312CharMap;
    while (1)
    {
      v34 = &v33[17 * ((0xF0F0F0F0F0F0F0F1 * (v32 - v33)) >> 1)];
      v35 = *v34;
      if (v35 <= v16)
      {
        break;
      }

      v32 = v34 - 17;
LABEL_44:
      if (v33 > v32)
      {
        goto LABEL_51;
      }
    }

    if (v35 + 16 <= v16)
    {
      v33 = v34 + 17;
      goto LABEL_44;
    }

    v36 = v34[(v16 - v35) + 1];
    if (v36)
    {
      v37 = v34[(v16 - v35) + 1] == 65533;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      v58 = v10 + 2;
      if ((v14 & 1) == 0)
      {
        v58 = v10;
      }

      v10 = v58 + 2;
      if (!a5)
      {
        v14 = 0;
        goto LABEL_108;
      }

      if (v10 > a5)
      {
        v66 = -2;
        if (v14)
        {
          v66 = -4;
        }

        v59 = v10 + v66;
        v10 += v66 + 2;
        v6 = a6;
LABEL_114:
        if (v10 <= a5)
        {
          *a4 = 32126;
        }

        else
        {
          if (v15 > a2)
          {
            for (--v15; ; --v15)
            {
              v60 = *v15;
              if (((v60 - 774) > 0x32 || ((1 << (v60 - 6)) & 0x4000000000005) == 0) && (v60 - 12441) >= 2)
              {
                if (__CFStringEncodingIsValidCombiningCharacterForLatin1_1(v60))
                {
                  v63 = v15 > a2;
                }

                else
                {
                  v63 = 0;
                }

                if (!v63)
                {
                  break;
                }
              }

              else if (v15 <= a2)
              {
                break;
              }
            }
          }

          if (v15 <= a2 || *(v15 - 1) > 0x7Fu)
          {
            *(a4 - 1) = 32126;
            v10 = v59;
          }

          else
          {
            v10 = v59 - 4;
          }
        }

        goto LABEL_136;
      }

      if (v14)
      {
        *a4 = 31614;
        a4 += 2;
      }

      v14 = 0;
      *a4 = HIBYTE(v36) & 0x7F;
      a4[1] = v36 & 0x7F;
      a4 += 2;
LABEL_108:
      if (++v15 >= v11)
      {
LABEL_112:
        v6 = a6;
        if (v14)
        {
          goto LABEL_136;
        }

        v59 = v10;
        v10 += 2;
        if (!a5)
        {
          goto LABEL_136;
        }

        goto LABEL_114;
      }

      continue;
    }

    break;
  }

LABEL_51:
  if ((a1 & 8) != 0 || v15 <= a2)
  {
    goto LABEL_112;
  }

  if ((a1 & 0x10) == 0)
  {
    goto LABEL_108;
  }

  v72[0] = 0;
  if (((v16 - 774) > 0x32 || ((1 << (v16 - 6)) & 0x4000000000005) == 0) && (v16 - 12441) >= 2)
  {
    v38 = v11;
    v69 = v10;
    v39 = v14;
    v40 = a1;
    v41 = a5;
    v42 = __CFStringEncodingIsValidCombiningCharacterForLatin1_1(v16);
    a5 = v41;
    a1 = v40;
    v14 = v39;
    v10 = v69;
    v11 = v38;
    v13 = 36516;
    if (!v42)
    {
      goto LABEL_112;
    }
  }

  v43 = *(v15 - 1);
  if (v43 <= 0x7F)
  {
    v70 = v11;
    v44 = v14;
    v45 = a1;
    v46 = a5;
    v47 = __CFStringEncodingPrecomposeLatinCharacter_3(v15 - 1, (v11 - (v15 - 1)) >> 1, v72);
    a5 = v46;
    a1 = v45;
    v14 = v44;
    v11 = v70;
    v13 = 0x8EA4u;
    goto LABEL_60;
  }

  v53 = *v15;
  if (v53 <= 0x3098)
  {
    if (v53 == 774)
    {
      if ((v43 & 0xFFFFFFDF) != 0x418)
      {
        goto LABEL_112;
      }

      v47 = v43 | 1;
    }

    else
    {
      if (v53 != 776)
      {
        goto LABEL_112;
      }

      if (v43 == 1077)
      {
        v54 = 1105;
      }

      else
      {
        v54 = -3;
      }

      if (v43 == 1045)
      {
        v47 = 1025;
      }

      else
      {
        v47 = v54;
      }
    }

    goto LABEL_61;
  }

  if (v53 == 12441)
  {
    if (v43 != 12454)
    {
      v47 = v43 + 1;
      goto LABEL_60;
    }

    v48 = 12532;
    v47 = 12532;
  }

  else
  {
    if (v53 != 12442)
    {
      goto LABEL_112;
    }

    v47 = v43 + 2;
LABEL_60:
    if (!v47)
    {
      goto LABEL_112;
    }

LABEL_61:
    if ((v47 + 15) < 0xB3u)
    {
      goto LABEL_112;
    }

    v48 = v47;
  }

  v49 = (&__CFToGB2312CharMap + v13);
  v50 = &__CFToGB2312CharMap;
  while (2)
  {
    v51 = &v50[17 * ((0xF0F0F0F0F0F0F0F1 * (v49 - v50)) >> 1)];
    v52 = *v51;
    if (v52 > v47)
    {
      v49 = v51 - 17;
      goto LABEL_68;
    }

    if (v52 + 16 <= v48)
    {
      v50 = v51 + 17;
LABEL_68:
      if (v50 > v49)
      {
        goto LABEL_112;
      }

      continue;
    }

    break;
  }

  v55 = v51[v48 - v52 + 1];
  if (v55)
  {
    v56 = v55 == 65533;
  }

  else
  {
    v56 = 1;
  }

  if (v56)
  {
    goto LABEL_112;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_90;
  }

  if (v15 - 2 >= a2 && *(v15 - 2) >= 0x80u)
  {
    --v10;
    a4 += v67;
LABEL_90:
    v57 = v10;
    if (!a5)
    {
LABEL_107:
      v10 = v57;
      goto LABEL_108;
    }

LABEL_106:
    *(a4 - 2) = HIBYTE(v55) & 0x7F;
    *(a4 - 1) = v55 & 0x7F;
    goto LABEL_107;
  }

  v57 = v10 + 3;
  if (!a5)
  {
    goto LABEL_107;
  }

  if (v57 <= a5)
  {
    *(a4 - 1) = 31614;
    a4 += 3;
    goto LABEL_106;
  }

  v6 = a6;
LABEL_136:
  *v6 = v10;
  return v15 - a2;
}

_BYTE *__CFFromGB_HZ(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = &a2[a3];
  if (a3 < 1)
  {
    v12 = 0;
    v14 = 1;
    v22 = a2;
    if (a5)
    {
      goto LABEL_75;
    }

    goto LABEL_80;
  }

  v12 = 0;
  v13 = a1 & 0xC0;
  v14 = 1;
  v15 = 0x3E22u;
  v16 = &unk_1EA849000;
  v17 = a2;
LABEL_3:
  v18 = v14;
  if (a5)
  {
    v19 = v12 < a5;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  v21 = v17;
  while (1)
  {
    if (!v20)
    {
      v14 = v18;
      v22 = v17;
      if (a5)
      {
        goto LABEL_75;
      }

      goto LABEL_80;
    }

    v22 = v21 + 1;
    v23 = *v21;
    if ((v14 & 1) == 0)
    {
      break;
    }

    if (v23 != 126)
    {
      ++v12;
      if (a5)
      {
        *a4++ = v23;
      }

LABEL_52:
      v17 = v22;
      if (v22 >= v9)
      {
        goto LABEL_74;
      }

      goto LABEL_3;
    }

    if (v22 >= v9)
    {
      goto LABEL_71;
    }

    v22 = v21 + 2;
    v24 = v21[1];
    if (v24 == 10)
    {
      v21 += 2;
LABEL_25:
      v14 = 1;
      goto LABEL_26;
    }

    if (v24 != 123)
    {
      if (v24 != 126)
      {
LABEL_71:
        v14 = 1;
        goto LABEL_73;
      }

      if (a5)
      {
        *a4++ = 126;
      }

      ++v12;
      goto LABEL_52;
    }

    v14 = 0;
    v21 += 2;
LABEL_26:
    if (v21 >= v9)
    {
      goto LABEL_73;
    }
  }

  if (v23 == 126)
  {
    if (v22 >= v9)
    {
      if ((a1 & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if ((a1 & 1) == 0 && *v22 != 125)
    {
      goto LABEL_72;
    }

    v21 += 2;
    goto LABEL_25;
  }

  if (v22 >= v9)
  {
    goto LABEL_48;
  }

  v25 = *v22 & 0x7F | ((v23 & 0x7F) << 8);
  if ((v25 - 30594) < 0xA99Fu)
  {
    goto LABEL_48;
  }

  v26 = (&__CFFromGB2312CharMap + v15);
  v27 = &__CFFromGB2312CharMap;
  while (2)
  {
    v28 = &v27[33 * ((0xF83E0F83E0F83E1 * (v26 - v27)) >> 1)];
    v29 = *v28;
    if (v29 > v25)
    {
      v26 = v28 - 33;
      goto LABEL_35;
    }

    if (v29 + 32 <= v25)
    {
      v27 = v28 + 33;
LABEL_35:
      if (v27 > v26)
      {
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  v30 = v28[v25 - v29 + 1];
  if (v30)
  {
    v31 = v30 == 65533;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
LABEL_48:
    if ((a1 & 1) == 0)
    {
      v14 = 0;
      if (a5)
      {
        goto LABEL_75;
      }

      goto LABEL_80;
    }

    if (a5)
    {
      *a4++ = 63;
    }

    ++v12;
    v22 = v21 + 2;
    goto LABEL_52;
  }

  if (!v13 || (v38 = v30, v32 = (*(v16 + 434))(v30, (a1 >> 7) & 1, 0xF83E0F83E0F83E1, 66, 65533), v30 = v38, v16 = &unk_1EA849000, v15 = 15906, !v32))
  {
    if (a5)
    {
      *a4++ = v30;
    }

    v34 = v12 + 1;
LABEL_65:
    v22 = v21 + 2;
    v12 = v34;
    goto LABEL_52;
  }

  v33 = __CFStringEncodingDecomposeCharacter(a1, v38, v39, 66, 65533, 0x1EA849000, 63, &__CFFromGB2312CharMap);
  v34 = v12 + v33;
  if (!a5)
  {
    v15 = 15906;
    v16 = &unk_1EA849000;
    goto LABEL_65;
  }

  if (v34 <= a5)
  {
    v15 = 15906;
    v16 = &unk_1EA849000;
    if (v33)
    {
      v35 = v39;
      do
      {
        --v33;
        v36 = *v35++;
        *a4++ = v36;
      }

      while (v33);
    }

    goto LABEL_65;
  }

LABEL_72:
  v14 = 0;
LABEL_73:
  v22 = v21;
LABEL_74:
  if (a5)
  {
LABEL_75:
    if ((v14 & 1) == 0 && v12 == a5 && v9 - v22 == 2 && *v22 == 126)
    {
      v22 += 2 * (v22[1] == 125);
    }
  }

LABEL_80:
  *a6 = v12;
  return (v22 - a2);
}

uint64_t _CFBytesInASCII(int8x16_t *a1, unint64_t a2)
{
  while (a2 > 0x1F)
  {
    v3 = *a1;
    v2 = a1[1];
    a1 += 2;
    v4 = vorrq_s8(v3, v2);
    a2 -= 32;
    if ((*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) & 0x8080808080808080) != 0)
    {
      return 0;
    }
  }

  while (a2 > 0xF)
  {
    v6 = a1->i64[0];
    v7 = a1->i64[1];
    ++a1;
    a2 -= 16;
    if (((v7 | v6) & 0x8080808080808080) != 0)
    {
      return 0;
    }
  }

  while (a2 > 7)
  {
    v8 = a1->i64[0];
    a1 = (a1 + 8);
    a2 -= 8;
    if ((v8 & 0x8080808080808080) != 0)
    {
      return 0;
    }
  }

  while (a2 > 3)
  {
    v9 = a1->i32[0];
    a1 = (a1 + 4);
    a2 -= 4;
    if ((v9 & 0x80808080) != 0)
    {
      return 0;
    }
  }

  v10 = 0;
  while (a2 != v10)
  {
    v11 = a1->i8[v10++];
    if (v11 < 0)
    {
      return 0;
    }
  }

  return 1;
}

CFTypeRef _CFStringCreateWithBytesNoCopy(__objc2_class **a1, int8x16_t *a2, int64_t a3, unint64_t a4, int a5, __objc2_class **a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v8 = 19;
  }

  else
  {
    v8 = 18;
  }

  return __CFStringCreateImmutableFunnel3(a1, a2, a3, a4, v8, a6, 0, a8);
}

CFStringRef __CFStringMakeConstantString(const char *cStr)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!constantStringTable)
  {
    keyCallBacks = *byte_1EF066758;
    *&valueCallBacks.version = *&kCFTypeDictionaryValueCallBacks.version;
    *&valueCallBacks.release = *&kCFTypeDictionaryValueCallBacks.release;
    valueCallBacks.equal = 0;
    v2 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &keyCallBacks, &valueCallBacks);
    _CFDictionarySetCapacity(v2, 2500);
    os_unfair_lock_lock_with_options();
    if (!constantStringTable)
    {
      constantStringTable = v2;
    }

    os_unfair_lock_unlock(&_CFSTRLock);
    if (constantStringTable != v2)
    {
      CFRelease(v2);
    }
  }

  os_unfair_lock_lock_with_options();
  Value = CFDictionaryGetValue(constantStringTable, cStr);
  os_unfair_lock_unlock(&_CFSTRLock);
  if (!Value)
  {
    v4 = cStr;
    while (1)
    {
      v5 = *v4;
      if (!*v4)
      {
        break;
      }

      ++v4;
      if (v5 < 0)
      {
        Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
        v13 = *cStr;
        if (*cStr)
        {
          v14 = cStr + 1;
          do
          {
            if (v13 < 0)
            {
              CFStringAppendFormat(Mutable, 0, @"\\%3o", v13);
            }

            else
            {
              CFStringAppendFormat(Mutable, 0, @"%1c", v13);
            }

            v15 = *v14++;
            v13 = v15;
          }

          while (v15);
        }

        CFLog(4, @"WARNING: @%@ has non-7 bit chars, interpreting using MacOS Roman encoding for now, but this will change. Please eliminate usages of non-7 bit chars (including escaped characters above \\177 octal) in @.", v6, v7, v8, v9, v10, v11, Mutable);
        CFRelease(Mutable);
        break;
      }
    }

    v16 = strlen(cStr);
    ImmutableFunnel3 = __CFStringCreateImmutableFunnel3(&__kCFAllocatorSystemDefault, cStr, v16, 0, 8, 0xFFFFFFFFFFFFFFFFLL, 0, v17);
    if (!ImmutableFunnel3)
    {
      __CFStringMakeConstantString_cold_1(0, v19, v20, v21, v22, v23, v24, v25);
    }

    v26 = ImmutableFunnel3;
    v27 = CF_IS_OBJC(7uLL, ImmutableFunnel3);
    if (v27)
    {
      goto LABEL_27;
    }

    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }

    v28 = atomic_load(v26 + 1);
    if ((v28 & 0x10) != 0 || ((v29 = atomic_load(v26 + 1), v30 = v26 + 2, (v29 & 0x60) == 0) ? (v32 = atomic_load(v26 + 1), v31 = &v30[(v32 & 5) != 4]) : (v31 = *v30), v33 = atomic_load(v26 + 1), !v31))
    {
LABEL_27:
      v35 = strlen(cStr);
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, v35 + 1, 0x100004077774924uLL);
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      strlcpy(Typed, cStr, v35 + 1);
    }

    else
    {
      Typed = v31 + ((v33 >> 2) & 1);
    }

    os_unfair_lock_lock_with_options();
    Count = CFDictionaryGetCount(constantStringTable);
    CFDictionaryAddValue(constantStringTable, Typed, v26);
    if (CFDictionaryGetCount(constantStringTable) == Count)
    {
      Value = CFDictionaryGetValue(constantStringTable, Typed);
    }

    else
    {
      Value = v26;
      if (!v27)
      {
        Value = v26;
        if (!__CFRuntimeIsImmortal(v26))
        {
          __CFRuntimeSetImmortal(v26);
          Value = v26;
        }
      }
    }

    os_unfair_lock_unlock(&_CFSTRLock);
    CFRelease(v26);
  }

  return Value;
}

CFTypeRef __cStrCopyDescription(int8x16_t *__s)
{
  v2 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v2 = __CFStringComputeEightBitStringEncoding();
  }

  v3 = strlen(__s->i8);

  return __CFStringCreateImmutableFunnel3(&__kCFAllocatorSystemDefault, __s, v3, v2, 24, &__kCFAllocatorNull, 0, v4);
}

uint64_t __cStrHash(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1);
  if (v2 > 4)
  {
    v6 = v1[1] + *v1 + (*v1 << 8);
    v7 = v6 + v1[v2 - 2] + (v6 << 8);
    v4 = v7 + v1[v2 - 1] + (v7 << 8);
  }

  else if (v2)
  {
    v3 = v2;
    v4 = 0;
    do
    {
      v5 = *v1++;
      v4 = 257 * v4 + v5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return (v4 << (v2 & 0x1F)) + v4;
}

Boolean CFStringGetPascalString(CFStringRef theString, StringPtr buffer, CFIndex bufferSize, CFStringEncoding encoding)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = bufferSize - 1;
  if (bufferSize < 1)
  {
    return 0;
  }

  v5 = *&encoding;
  v26[0] = 0;
  if (CF_IS_OBJC(7uLL, theString))
  {
    Length = CFStringGetLength(theString);
    if (Length <= 255)
    {
      goto LABEL_50;
    }

    return 0;
  }

  v10 = atomic_load(&theString->info);
  p_data = &theString->data;
  if ((v10 & 0x60) != 0)
  {
    v12 = *p_data;
  }

  else
  {
    v13 = atomic_load(&theString->info);
    v12 = &p_data[(v13 & 5) != 4];
  }

  v14 = atomic_load(&theString->info);
  if ((v14 & 5) == 4)
  {
    Length = *v12;
  }

  else
  {
    v15 = atomic_load(&theString->info);
    v16 = (v15 & 0x60) == 0;
    v17 = 24;
    if (v16)
    {
      v17 = 16;
    }

    Length = *(&theString->isa + v17);
    if (Length > 255)
    {
      return 0;
    }
  }

  v18 = atomic_load(&theString->info);
  if ((v18 & 0x10) != 0)
  {
    goto LABEL_50;
  }

  v19 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v19 = __CFStringComputeEightBitStringEncoding();
  }

  if (v19 != v5)
  {
    v22 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v22 = __CFStringComputeEightBitStringEncoding();
    }

    if (v22 != 1536)
    {
      goto LABEL_50;
    }

    if (BYTE1(v5) <= 7u)
    {
      if (BYTE1(v5) <= 1u)
      {
        if (!BYTE1(v5))
        {
          if (v5 <= 0x22 && ((1 << v5) & 0x600000032) != 0 || v5 == 152)
          {
            goto LABEL_50;
          }

          goto LABEL_17;
        }

        if (v5 == 134217984)
        {
          goto LABEL_17;
        }

LABEL_50:
        v27.location = 0;
        v27.length = Length;
        v25 = __CFStringEncodeByteStream(theString, v27, 0, v5, 0, (buffer + 1), v4, v26);
        result = 0;
        v16 = v25 == Length;
        LOBYTE(Length) = 0;
        if (v16)
        {
          result = 1;
          LOBYTE(Length) = v26[0];
        }

        goto LABEL_53;
      }

      if (BYTE1(v5) == 2)
      {
        if (v5 != 518)
        {
          goto LABEL_17;
        }

        goto LABEL_50;
      }

      if (BYTE1(v5) == 6)
      {
        if (v5 == 1536)
        {
          goto LABEL_17;
        }

        goto LABEL_50;
      }

LABEL_39:
      if ((v5 & 0xFF00u) <= 0xC00)
      {
        goto LABEL_17;
      }

      goto LABEL_50;
    }

    if (BYTE1(v5) > 0xAu)
    {
      if (BYTE1(v5) != 11)
      {
        if (BYTE1(v5) == 12)
        {
          goto LABEL_50;
        }

        goto LABEL_39;
      }

      if ((v5 - 3059) > 0xC)
      {
        goto LABEL_17;
      }

      v23 = 1 << (v5 + 13);
      v24 = 4099;
    }

    else
    {
      if (BYTE1(v5) == 8)
      {
        goto LABEL_50;
      }

      if (BYTE1(v5) != 10)
      {
        goto LABEL_39;
      }

      if ((v5 - 2561) > 0xF)
      {
        goto LABEL_17;
      }

      v23 = 1 << (v5 - 1);
      v24 = 32785;
    }

    if ((v23 & v24) != 0)
    {
      goto LABEL_50;
    }
  }

LABEL_17:
  if (Length >= bufferSize)
  {
    return 0;
  }

  v20 = atomic_load(&theString->info);
  memmove(buffer + 1, &v12[(v20 >> 2) & 1], Length);
  result = 1;
LABEL_53:
  *buffer = Length;
  return result;
}

uint64_t _CFStringCompareForHFS(__CFString *a1, __CFString *a2, __int16 a3)
{
  v144 = *MEMORY[0x1E69E9840];
  CharactersPtr = CFStringGetCharactersPtr(a1);
  v6 = CFStringGetCharactersPtr(a2);
  if (CharactersPtr)
  {
    CStringPtrInternal = 0;
  }

  else
  {
    v8 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v8 = __CFStringComputeEightBitStringEncoding();
    }

    CStringPtrInternal = _CFStringGetCStringPtrInternal(a1, v8, 1, 1);
  }

  v111 = CStringPtrInternal;
  if (v6)
  {
    v112 = 0;
  }

  else
  {
    v9 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v9 = __CFStringComputeEightBitStringEncoding();
    }

    v112 = _CFStringGetCStringPtrInternal(a2, v9, 1, 1);
    CStringPtrInternal = v111;
  }

  if ((a3 & 0x10) == 0 || CStringPtrInternal && v112)
  {
    BitmapPtrForPlane = 0;
    v107 = 0;
    v10 = 1;
  }

  else
  {
    BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(0x65u, 0);
    if (BitmapPtrForPlane)
    {
      v107 = CFUniCharGetBitmapPtrForPlane(8u, 0);
      v10 = 0;
    }

    else
    {
      BitmapPtrForPlane = 0;
      v107 = 0;
      v10 = 1;
    }

    CStringPtrInternal = v111;
  }

  v11 = CharactersPtr | CStringPtrInternal;
  Length = CFStringGetLength(a1);
  v12 = CFStringGetLength(a2);
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  *theString = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  *buffer = 0u;
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  *v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  *v120 = 0u;
  if (((v10 ^ 1) & 1) != 0 || !v11)
  {
    theString[0] = a1;
    *(&v141 + 1) = 0;
    *&v142 = Length;
    v13 = CFStringGetCharactersPtr(a1);
    v14 = 0;
    theString[1] = v13;
    if (!v13)
    {
      v14 = _CFStringGetCStringPtrInternal(a1, 0x600u, 1, 1);
    }

    v143 = 0;
    *&v141 = v14;
    *(&v142 + 1) = 0;
  }

  v15 = v112;
  if (v6 | v112)
  {
    v16 = v10 ^ 1;
  }

  else
  {
    v16 = 1;
  }

  if (v16 == 1)
  {
    v128[0] = a2;
    *(&v129 + 1) = 0;
    *&v130 = v12;
    v17 = CFStringGetCharactersPtr(a2);
    v18 = 0;
    v128[1] = v17;
    if (!v17)
    {
      v18 = _CFStringGetCStringPtrInternal(a2, 0x600u, 1, 1);
    }

    v131 = 0;
    *&v129 = v18;
    *(&v130 + 1) = 0;
    v15 = v112;
  }

  v19 = Length;
  v20 = Length > 0;
  v21 = v12 > 0;
  if (Length < 1)
  {
    v22 = v111;
    goto LABEL_190;
  }

  v108 = v10;
  v22 = v111;
  if (v12 < 1)
  {
LABEL_190:
    if (v20 || v21)
    {
      if (v21)
      {
        return -1;
      }

      else
      {
        return 1;
      }
    }

    if ((a3 & 0x200) == 0)
    {
      return 0;
    }

    v84 = 0;
    v85 = 0;
    if (v19 >= v12)
    {
      v86 = v12;
    }

    else
    {
      v86 = v19;
    }

    v87 = 64;
    p_vtable = __NSCFString.vtable;
    while (1)
    {
      if (v85 >= 4)
      {
        v89 = 4;
      }

      else
      {
        v89 = v85;
      }

      v90 = -v89;
      v91 = v89 + v84;
      v92 = v87 - v89;
      if (CharactersPtr)
      {
        v93 = CharactersPtr[v85];
        if (v6)
        {
          goto LABEL_216;
        }

        goto LABEL_219;
      }

      if (v22)
      {
        v93 = *(p_vtable[67] + v22[v85]);
        if (v6)
        {
          goto LABEL_216;
        }

        goto LABEL_219;
      }

      v94 = v142;
      if (v142 <= v85)
      {
        v93 = 0;
        if (v6)
        {
          goto LABEL_216;
        }
      }

      else
      {
        if (theString[1])
        {
          v95 = theString[1] + *(&v141 + 1);
          goto LABEL_213;
        }

        if (!v141)
        {
          if (v143 <= v85 || (v100 = *(&v142 + 1), *(&v142 + 1) > v85))
          {
            v101 = v85 + v90 + 64;
            if (v101 >= v142)
            {
              v101 = v142;
            }

            *(&v142 + 1) = v85 + v90;
            v143 = v101;
            if (v142 >= v92)
            {
              v94 = v92;
            }

            v149.location = v85 + v90 + *(&v141 + 1);
            v149.length = v94 + v91;
            v102 = p_vtable;
            CFStringGetCharacters(theString[0], v149, buffer);
            p_vtable = v102;
            v22 = v111;
            v15 = v112;
            v100 = *(&v142 + 1);
          }

          v95 = &buffer[-v100];
LABEL_213:
          v93 = v95[v85];
          if (v6)
          {
            goto LABEL_216;
          }

          goto LABEL_219;
        }

        v93 = *(v141 + *(&v141 + 1) + v85);
        if (v6)
        {
LABEL_216:
          v96 = v6[v85];
          goto LABEL_226;
        }
      }

LABEL_219:
      if (v15)
      {
        v96 = *(p_vtable[67] + v15[v85]);
      }

      else
      {
        v97 = v130;
        if (v130 <= v85)
        {
          v96 = 0;
        }

        else
        {
          if (v128[1])
          {
            v98 = v128[1] + *(&v129 + 1);
          }

          else
          {
            if (v129)
            {
              v96 = *(v129 + *(&v129 + 1) + v85);
              goto LABEL_226;
            }

            if (v131 <= v85 || (v103 = *(&v130 + 1), *(&v130 + 1) > v85))
            {
              v104 = v85 + v90 + 64;
              if (v104 >= v130)
              {
                v104 = v130;
              }

              *(&v130 + 1) = v85 + v90;
              v131 = v104;
              if (v130 >= v92)
              {
                v97 = v92;
              }

              v150.location = v85 + v90 + *(&v129 + 1);
              v150.length = v97 + v91;
              v105 = p_vtable;
              CFStringGetCharacters(v128[0], v150, v120);
              p_vtable = v105;
              v22 = v111;
              v15 = v112;
              v103 = *(&v130 + 1);
            }

            v98 = &v120[-v103];
          }

          v96 = v98[v85];
        }
      }

LABEL_226:
      v99 = v93 >= v96;
      if (v93 != v96)
      {
        goto LABEL_249;
      }

      ++v85;
      --v84;
      ++v87;
      if (v85 >= v86)
      {
        return 0;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v25 = __NSCFString.vtable;
  while (2)
  {
    v26 = -v23;
    v27 = v23 + 64;
    do
    {
      if (v23 >= 4)
      {
        v28 = 4;
      }

      else
      {
        v28 = v23;
      }

      if (CharactersPtr)
      {
        v29 = CharactersPtr[v23];
        goto LABEL_48;
      }

      if (v22)
      {
        v29 = *(v25[67] + v22[v23]);
        goto LABEL_48;
      }

      if (v23 < 0 || (v30 = v142, v142 <= v23))
      {
        v29 = 0;
      }

      else
      {
        if (theString[1])
        {
          v31 = theString[1] + *(&v141 + 1);
LABEL_46:
          v29 = v31[v23];
          goto LABEL_48;
        }

        if (!v141)
        {
          if (v143 <= v23 || (v33 = *(&v142 + 1), *(&v142 + 1) > v23))
          {
            v34 = -v28;
            v35 = v28 + v26;
            v36 = v27 - v28;
            v37 = v23 + v34;
            v38 = v37 + 64;
            if (v37 + 64 >= v142)
            {
              v38 = v142;
            }

            *(&v142 + 1) = v37;
            v143 = v38;
            if (v142 >= v36)
            {
              v30 = v36;
            }

            v145.location = v37 + *(&v141 + 1);
            v145.length = v30 + v35;
            CFStringGetCharacters(theString[0], v145, buffer);
            v25 = (__NSCFString + 24);
            v19 = Length;
            v22 = v111;
            v15 = v112;
            v33 = *(&v142 + 1);
          }

          v31 = &buffer[-v33];
          goto LABEL_46;
        }

        v29 = *(v141 + *(&v141 + 1) + v23);
      }

LABEL_48:
      v32 = v29;
      if (__CFHFSLowerTable[HIBYTE(v29)])
      {
        v29 = __CFHFSLowerTable[__CFHFSLowerTable[HIBYTE(v29)] + v29];
      }

      if (++v23 >= v19)
      {
        break;
      }

      --v26;
      ++v27;
    }

    while (!v29);
    v39 = v29;
    v40 = v23 - 1;
    v41 = -v24;
    v42 = v24 + 64;
    do
    {
      if (v24 >= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v24;
      }

      if (v6)
      {
        v44 = v6[v24];
        goto LABEL_77;
      }

      if (v15)
      {
        v44 = *(v25[67] + v15[v24]);
        goto LABEL_77;
      }

      if (v24 < 0 || (v45 = v130, v130 <= v24))
      {
        v44 = 0;
      }

      else
      {
        if (v128[1])
        {
          v46 = v128[1] + *(&v129 + 1);
LABEL_75:
          v44 = v46[v24];
          goto LABEL_77;
        }

        if (!v129)
        {
          if (v131 <= v24 || (v48 = *(&v130 + 1), *(&v130 + 1) > v24))
          {
            v49 = -v43;
            v50 = v43 + v41;
            v51 = v42 - v43;
            v52 = v24 + v49;
            v53 = v52 + 64;
            if (v52 + 64 >= v130)
            {
              v53 = v130;
            }

            *(&v130 + 1) = v52;
            v131 = v53;
            v114 = v40;
            if (v130 >= v51)
            {
              v45 = v51;
            }

            v146.location = v52 + *(&v129 + 1);
            v146.length = v45 + v50;
            v106 = v39;
            CFStringGetCharacters(v128[0], v146, v120);
            v39 = v106;
            v40 = v114;
            v25 = (__NSCFString + 24);
            v19 = Length;
            v22 = v111;
            v15 = v112;
            v48 = *(&v130 + 1);
          }

          v46 = &v120[-v48];
          goto LABEL_75;
        }

        v44 = *(v129 + *(&v129 + 1) + v24);
      }

LABEL_77:
      v47 = v44;
      if (__CFHFSLowerTable[HIBYTE(v44)])
      {
        v44 = __CFHFSLowerTable[__CFHFSLowerTable[HIBYTE(v44)] + v44];
      }

      if (++v24 >= v12)
      {
        break;
      }

      --v41;
      ++v42;
    }

    while (!v44);
    if (a3)
    {
      v54 = v39;
    }

    else
    {
      v54 = v32;
    }

    if (a3)
    {
      v55 = v44;
    }

    else
    {
      v55 = v47;
    }

    if (v54 == v55)
    {
      goto LABEL_156;
    }

    v56 = v108;
    if ((v55 | v54) < 0x80)
    {
      v56 = 1;
    }

    if ((v56 & 1) == 0)
    {
      if (v23 < v19 && (v54 & 0xFC00) == 0xD800)
      {
        if (CharactersPtr)
        {
          v57 = CharactersPtr[v23];
          goto LABEL_108;
        }

        if (v22)
        {
          v57 = *(v25[67] + v22[v23]);
          goto LABEL_108;
        }

        if (v40 >= -1)
        {
          v73 = v142;
          if (v142 > v23)
          {
            if (theString[1])
            {
              v74 = theString[1] + *(&v141 + 1);
            }

            else
            {
              if (v141)
              {
                v57 = *(v141 + *(&v141 + 1) + v23);
                goto LABEL_108;
              }

              if (v143 <= v23 || (v77 = *(&v142 + 1), *(&v142 + 1) > v23))
              {
                v78 = v23 - 4;
                if (v23 < 4)
                {
                  v78 = 0;
                }

                v79 = v54;
                if (v78 + 64 < v142)
                {
                  v73 = v78 + 64;
                }

                *(&v142 + 1) = v78;
                v143 = v73;
                v80 = v40;
                v147.length = v73 - v78;
                v147.location = *(&v141 + 1) + v78;
                CFStringGetCharacters(theString[0], v147, buffer);
                v54 = v79;
                v40 = v80;
                v25 = (__NSCFString + 24);
                v15 = v112;
                v77 = *(&v142 + 1);
              }

              v74 = &buffer[-v77];
            }

            v57 = v74[v23];
LABEL_108:
            if (v57 >> 10 == 55)
            {
              v54 = (v54 << 10) - 56613888 + v57;
            }
          }
        }
      }

      v115 = v54;
      if (v24 < v12 && (v55 & 0xFC00) == 0xD800)
      {
        v58 = v40;
        if (v6)
        {
          v59 = v6[v24];
          goto LABEL_117;
        }

        if (v15)
        {
          v59 = *(v25[67] + v15[v24]);
          goto LABEL_117;
        }

        if (v24 - 1 >= -1)
        {
          v75 = v130;
          if (v130 > v24)
          {
            if (v128[1])
            {
              v76 = v128[1] + *(&v129 + 1);
            }

            else
            {
              if (v129)
              {
                v59 = *(v129 + *(&v129 + 1) + v24);
                goto LABEL_117;
              }

              if (v131 <= v24 || (v81 = *(&v130 + 1), *(&v130 + 1) > v24))
              {
                v82 = v24 - 4;
                if (v24 < 4)
                {
                  v82 = 0;
                }

                if (v82 + 64 < v130)
                {
                  v75 = v82 + 64;
                }

                *(&v130 + 1) = v82;
                v131 = v75;
                v148.length = v75 - v82;
                v148.location = *(&v129 + 1) + v82;
                CFStringGetCharacters(v128[0], v148, v120);
                v54 = v115;
                v81 = *(&v130 + 1);
              }

              v76 = &v120[-v81];
            }

            v59 = v76[v24];
LABEL_117:
            if (v59 >> 10 == 55)
            {
              v55 = (v55 << 10) - 56613888 + v59;
            }
          }
        }
      }

      else
      {
        v58 = v40;
      }

      v60 = BitmapPtrForPlane;
      if (v54 >= 0x10000)
      {
        v60 = CFUniCharGetBitmapPtrForPlane(0x65u, HIWORD(v54));
        v54 = v115;
      }

      if (v60 && ((*(v60 + (v54 >> 3)) >> (v54 & 7)) & 1) != 0)
      {
        goto LABEL_135;
      }

      v61 = BitmapPtrForPlane;
      if (v55 >= 0x10000)
      {
        v61 = CFUniCharGetBitmapPtrForPlane(0x65u, HIWORD(v55));
        v54 = v115;
      }

      if (v61 && ((*(v61 + (v55 >> 3)) >> (v55 & 7)) & 1) != 0)
      {
        goto LABEL_135;
      }

      v62 = v107;
      if (v54 >= 0x10000)
      {
        v62 = CFUniCharGetBitmapPtrForPlane(8u, HIWORD(v54));
        v54 = v115;
      }

      if (v62 && ((*(v62 + (v54 >> 3)) >> (v54 & 7)) & 1) != 0)
      {
        v63 = v107;
        if (v55 >= 0x10000)
        {
          v63 = CFUniCharGetBitmapPtrForPlane(8u, HIWORD(v55));
          v54 = v115;
        }

        if (v63 && ((*(v63 + (v55 >> 3)) >> (v55 & 7)) & 1) != 0)
        {
LABEL_135:
          v116 = 0;
          v117 = 0;
          v64 = __CFStringFoldCharacterClusterAtIndex(v54, buffer, v58, 16, 0, __s1, &v117, 0);
          v65 = v55;
          v66 = v64;
          v67 = v65;
          v68 = __CFStringFoldCharacterClusterAtIndex(v65, v120, v24 - 1, 16, 0, __s2, &v116, 0);
          v69 = v68;
          if (v66 && v66 == v68)
          {
            v70 = memcmp(__s1, __s2, 4 * v66);
            v54 = v115;
            if (!v70)
            {
LABEL_145:
              if (v54 < 0x10000)
              {
                v71 = 1;
              }

              else
              {
                v71 = 2;
              }

              if (v66)
              {
                v71 = v117;
              }

              v23 = v71 + v23 - 1;
              if (v67 < 0x10000)
              {
                v72 = 1;
              }

              else
              {
                v72 = 2;
              }

              if (v69)
              {
                v72 = v116;
              }

              v24 = v72 + v24 - 1;
              v22 = v111;
              v15 = v112;
              v19 = Length;
              v25 = (__NSCFString + 24);
LABEL_156:
              v21 = v24 < v12;
              v20 = v23 < v19;
              if (v23 >= v19 || v24 >= v12)
              {
                goto LABEL_190;
              }

              continue;
            }
          }

          else
          {
            v54 = v115;
            if (!v66 && v68 == 1 && v115 == __s2[0])
            {
              goto LABEL_145;
            }
          }

          if (!v69 && v66 == 1 && v67 == __s1[0])
          {
            goto LABEL_145;
          }

          v55 = v67;
        }
      }
    }

    break;
  }

  v99 = v54 >= v55;
LABEL_249:
  if (v99)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

BOOL _CFStringIsJoiningPulliAtIndex(char *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a3 >= a2 || a3 + a4 <= a2)
  {
    return 0;
  }

  v5 = a2 - 1;
  if (a3 + a4 - (a2 - 1) >= 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = a3 + a4 - (a2 - 1);
  }

  v21[0] = 0;
  if (*(__src + 17))
  {
    __memmove_chk();
  }

  else
  {
    v11 = *(__src + 21);
    if (v11 < a2 && (v12 = *(__src + 22), v12 >= a2))
    {
      v15 = v12 - v5;
      if (v6 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v6;
      }

      __memmove_chk();
      v14 = v21 + v16;
      v5 += v16;
      v6 -= v16;
    }

    else
    {
      v13 = v6 + v5 - v11;
      if (v6 + v5 <= v11)
      {
        v14 = v21;
      }

      else
      {
        v14 = v21;
        if (v6 + v5 < *(__src + 22))
        {
          v6 = v11 - v5;
          memmove(v21 + 2 * (v11 - v5), __src, 2 * v13);
        }
      }
    }

    if (v6 >= 1)
    {
      v17 = *(__src + 18);
      v18.location = *(__src + 19) + v5;
      if (v17)
      {
        v19 = (v17 + v18.location);
        do
        {
          v20 = *v19++;
          *v14++ = v20;
          --v6;
        }

        while (v6);
      }

      else
      {
        v18.length = v6;
        CFStringGetCharacters(*(__src + 16), v18, v14);
      }
    }
  }

  return LODWORD(v21[0]) == 197987221 && WORD2(v21[0]) == 2999 || v21[0] == 0xBC00BB00BCD0BB6 || v21[0] == 0xBC00BB00BCD0BB8;
}

CFStringEncoding CFStringGetSmallestEncoding(CFStringRef theString)
{
  if (CF_IS_OBJC(7uLL, theString))
  {

    return [(__CFString *)theString _smallestEncodingInCFStringEncoding];
  }

  p_info = &theString->info;
  v4 = atomic_load(&theString->info);
  if ((v4 & 0x10) == 0)
  {
    v5 = __CFDefaultEightBitStringEncoding;
    goto LABEL_18;
  }

  v6 = atomic_load(p_info);
  v7 = v6 & 5;
  v8 = atomic_load(p_info);
  v9 = v8 & 0x60;
  if (v7 == 4)
  {
    p_data = &theString->data;
    if (v9)
    {
      v11 = *p_data;
    }

    else
    {
      v13 = atomic_load(&theString->info);
      v11 = &p_data[(v13 & 5) != 4];
    }

    length = *v11;
  }

  else if ((v8 & 0x60) != 0)
  {
    length = theString->length;
  }

  else
  {
    length = theString->data;
  }

  v14 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v14 = __CFStringComputeEightBitStringEncoding();
  }

  v18.location = 0;
  v18.length = length;
  v15 = __CFStringEncodeByteStream(theString, v18, 0, v14, 0, 0, 0x7FFFFFFFFFFFFFFFLL, 0);
  v5 = __CFDefaultEightBitStringEncoding;
  if (v15 != length)
  {
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v5 = __CFStringComputeEightBitStringEncoding();
    }

    if (__CFDefaultSystemEncoding)
    {
      if (!v5)
      {
        return 256;
      }
    }

    else
    {
      CFStringGetSystemEncoding();
      if (v5 == __CFDefaultSystemEncoding - 1)
      {
        return 256;
      }

      if ((__CFDefaultSystemEncoding & 1) == 0)
      {
        CFStringGetSystemEncoding();
        v16 = __CFDefaultSystemEncoding - 1;
LABEL_31:
        v19.location = 0;
        v19.length = length;
        if (__CFStringEncodeByteStream(theString, v19, 0, v16, 0, 0, 0x7FFFFFFFFFFFFFFFLL, 0) == length)
        {
          if (__CFDefaultSystemEncoding)
          {
            return 0;
          }

          CFStringGetSystemEncoding();
          return __CFDefaultSystemEncoding - 1;
        }

        return 256;
      }
    }

    v16 = 0;
    goto LABEL_31;
  }

LABEL_18:
  if (v5 != -1)
  {
    return v5;
  }

  return __CFStringComputeEightBitStringEncoding();
}

void CFStringAppendPascalString(CFMutableStringRef theString, ConstStr255Param pStr, CFStringEncoding encoding)
{
  v4 = atomic_load(&theString->info);
  if (v4)
  {
    v13 = *&encoding;
    v16 = *pStr;
    v14 = (pStr + 1);
    v15 = v16;

    __CFStringAppendBytes(theString, v14, v15, v13);
  }

  else
  {
    v5 = _CFOSLog(theString, pStr);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      CFStringAppendPascalString_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

void CFShowStr(CFStringRef str)
{
  if (!str)
  {
    v2 = *MEMORY[0x1E69E9858];
    v3 = "(null)\n";
    v4 = 7;
    goto LABEL_5;
  }

  if (CF_IS_OBJC(7uLL, str))
  {
    v2 = *MEMORY[0x1E69E9858];
    v3 = "This is an NSString, not CFString\n";
    v4 = 34;
LABEL_5:

    fwrite(v3, v4, 1uLL, v2);
    return;
  }

  v5 = CFGetAllocator(str);
  v6 = MEMORY[0x1E69E9858];
  v7 = atomic_load(&str->info);
  v8 = v7 & 5;
  v9 = atomic_load(&str->info);
  v10 = v9 & 0x60;
  if (v8 == 4)
  {
    p_data = &str->data;
    if (v10)
    {
      length = *p_data;
    }

    else
    {
      v13 = atomic_load(&str->info);
      length = &p_data[(v13 & 5) != 4];
    }

    LODWORD(length) = *length;
  }

  else if ((v9 & 0x60) != 0)
  {
    length = str->length;
  }

  else
  {
    length = str->data;
  }

  v14 = atomic_load(&str->info);
  fprintf(*MEMORY[0x1E69E9858], "\nLength %d\nIsEightBit %d\n", length, ((v14 >> 4) & 1) == 0);
  v15 = *v6;
  v16 = atomic_load(&str->info);
  v17 = atomic_load(&str->info);
  v18 = atomic_load(&str->info);
  fprintf(v15, "HasLengthByte %d\nHasNullByte %d\nInlineContents %d\n", (v16 >> 2) & 1, (v17 >> 3) & 1, (v18 & 0x60) == 0);
  fwrite("Allocator ", 0xAuLL, 1uLL, *v6);
  v19 = *v6;
  if (v5 == &__kCFAllocatorSystemDefault)
  {
    fwrite("SystemDefault\n", 0xEuLL, 1uLL, v19);
  }

  else
  {
    fprintf(v19, "%p\n", v5);
  }

  v20 = *v6;
  p_info = &str->info;
  v22 = atomic_load(&str->info);
  fprintf(v20, "Mutable %d\n", v22 & 1);
  v23 = atomic_load(&str->info);
  if ((v23 & 1) != 0 || (v24 = atomic_load(p_info), (~v24 & 0x60) != 0))
  {
    v29 = atomic_load(p_info);
    if (v29)
    {
      v30 = atomic_load(&str->info);
      if ((~v30 & 0x60) == 0)
      {
        fprintf(*v6, "ExternalContentsAllocator %p\n");
      }
    }
  }

  else
  {
    v25 = atomic_load(&str->info);
    v26 = (v25 & 5) == 4;
    v27 = 32;
    if (v26)
    {
      v27 = 24;
    }

    v28 = *v6;
    if (*(&str->isa + v27))
    {
      atomic_load(&str->info);
      fprintf(v28, "ContentsDeallocatorFunc %p\n");
    }

    else
    {
      fwrite("ContentsDeallocatorFunc None\n", 0x1DuLL, 1uLL, v28);
    }
  }

  v31 = atomic_load(&str->info);
  if (v31)
  {
    v32 = "Fixed";
    info = str[1].info;
    if ((info & 2) == 0)
    {
      v32 = "Desired";
    }

    fprintf(*v6, "CurrentCapacity %d\n%sCapacity %d\n", str[1].isa, v32, info >> 4);
  }

  v34 = atomic_load(&str->info);
  v35 = &str->data;
  if ((v34 & 0x60) != 0)
  {
    v36 = *v35;
  }

  else
  {
    v37 = atomic_load(&str->info);
    v36 = &v35[(v37 & 5) != 4];
  }

  fprintf(*v6, "Contents %p\n", v36);
}

CFArrayRef CFStringCopyStatisticalWritingDirections(__CFString *a1)
{
  v97 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  if (Length)
  {
    v3 = Length;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    *buffer = 0u;
    v73 = 0u;
    theString = a1;
    v83 = 0;
    v84 = Length;
    CharactersPtr = CFStringGetCharactersPtr(a1);
    CStringPtrInternal = 0;
    v81 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtrInternal = _CFStringGetCStringPtrInternal(a1, 0x600u, 1, 1);
    }

    v85 = 0;
    v86 = 0;
    v82 = CStringPtrInternal;
    *theArray = 0u;
    *v69 = 0u;
    v67 = 0xFFFFLL;
    memset(v60, 0, sizeof(v60));
    v61 = notFoundRange;
    v62 = notFoundRange;
    v63 = 0u;
    v64 = 0u;
    v65 = 0xFE00000000;
    v66 = -1;
    LOBYTE(theArray[1]) = -1;
    v69[0] = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    theArray[0] = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, 0);
    v6 = atomic_load(sUseOuterDirectionalOverride);
    LOBYTE(v69[1]) = v6 & 1;
    BYTE1(v69[1]) = _os_feature_enabled_impl();
    BYTE2(v69[1]) = _os_feature_enabled_impl();
    BYTE3(v69[1]) = _os_feature_enabled_impl();
    if (v3 >= 1)
    {
      v7 = 0;
      v8 = 0;
      v55 = v3;
      while (v7)
      {
        ++v8;
        v9 = MEMORY[0x1865E3980](v7);
        if (v7 != 10)
        {
          goto LABEL_8;
        }

        v14 = 0;
LABEL_220:
        v7 = v14;
        if (v8 >= v3)
        {
          goto LABEL_233;
        }
      }

      values = 0;
      v88 = 0;
      LODWORD(v7) = __CFStringGetLongCharacterFromInlineBuffer(buffer, v3, v8, &values);
      v8 = values + v88;
      v9 = MEMORY[0x1865E3980]();
LABEL_8:
      v10 = 1;
      if (v7 < 0x10000)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if ((v7 - 1776) >= 0xA)
      {
        v12 = 2;
      }

      else
      {
        v12 = 5;
      }

      if (v9 == 2)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9;
      }

      if (v13 <= 15)
      {
        if (v13 <= 9)
        {
          if (v13 != 7)
          {
            if (v13 == 8)
            {
LABEL_105:
              v14 = 0;
              v24 = 0;
              goto LABEL_161;
            }

            if (v13 != 9)
            {
LABEL_62:
              if (u_hasBinaryProperty(v7, UCHAR_IDEOGRAPHIC))
              {
                if (*(&v63 + 1))
                {
                  v14 = 0;
                  v24 = 0;
                  v8 -= v11;
                  v10 = 1;
                  v26 = 1;
                  v18 = 1;
                  v11 = 0;
                  goto LABEL_163;
                }

                *(&v63 + 1) = v11;
                if (v13)
                {
                  if ((v13 == 13 || v13 == 1) && v67 != 1)
                  {
                    if (v67 == 255)
                    {
                      v10 = 1;
                      LOBYTE(v67) = 1;
                      if (BYTE1(v67) != 255)
                      {
                        v14 = 0;
                        v24 = 0;
                        BYTE1(v67) = 1;
                        goto LABEL_161;
                      }

                      goto LABEL_105;
                    }

                    goto LABEL_148;
                  }
                }

                else
                {
                  v14 = v67;
                  if (!v67)
                  {
                    goto LABEL_59;
                  }

                  if (v67 != 255)
                  {
LABEL_148:
                    v14 = 0;
                    v24 = 0;
                    v10 = 1;
                    v60[2] = 1;
                    goto LABEL_161;
                  }

                  LOBYTE(v67) = 0;
                  if (BYTE1(v67) != 255)
                  {
                    v14 = 0;
                    v24 = 0;
                    BYTE1(v67) = 0;
                    goto LABEL_160;
                  }
                }

LABEL_58:
                v14 = 0;
LABEL_59:
                v24 = 0;
                goto LABEL_160;
              }

              goto LABEL_65;
            }

            v14 = 0;
            v10 = 1;
            if (v7 > 8198)
            {
              v25 = v7 - 7;
              if ((v7 - 8199) > 0x28)
              {
                goto LABEL_143;
              }

              if (((1 << v25) & 0x10000000003) != 0)
              {
                goto LABEL_62;
              }

              if (((1 << v25) & 0x600000000) == 0)
              {
LABEL_143:
                v24 = 0;
                goto LABEL_161;
              }
            }

            else if ((v7 - 10) >= 4 && v7 != 133)
            {
              if (v7 != 160)
              {
                goto LABEL_143;
              }

              goto LABEL_62;
            }
          }

          v14 = 0;
          v24 = 1;
          if (v7 == 13 && v8 < v3)
          {
            v34 = v84;
            if (v84 <= v8)
            {
              v14 = 0;
            }

            else
            {
              if (v81)
              {
                v35 = v81[v83 + v8];
              }

              else if (v82)
              {
                v35 = v82[v83 + v8];
              }

              else
              {
                if (v86 <= v8 || (v37 = v85, v85 > v8))
                {
                  v38 = v8 - 4;
                  if (v8 < 4)
                  {
                    v38 = 0;
                  }

                  if (v38 + 64 < v84)
                  {
                    v34 = v38 + 64;
                  }

                  v85 = v38;
                  v86 = v34;
                  v99.length = v34 - v38;
                  v99.location = v83 + v38;
                  CFStringGetCharacters(theString, v99, buffer);
                  v37 = v85;
                }

                v35 = buffer[v8 - v37];
              }

              v14 = v35;
              if (v35 == 10)
              {
                ++v8;
                v24 = 1;
                v10 = 1;
                v11 = 2;
                goto LABEL_161;
              }
            }

            v24 = 1;
          }

LABEL_160:
          v10 = 1;
LABEL_161:
          v26 = 1;
LABEL_162:
          v18 = 1;
LABEL_163:
          if (!*(&v64 + 1))
          {
            LODWORD(v65) = v7;
          }

          *(&v64 + 1) += v11;
          if (v8 == v3)
          {
            if (v61 != -1)
            {
              v61 = notFoundRange;
            }

            v10 = 1;
            v24 = 1;
          }

          else
          {
            if (v61 == -1)
            {
              v26 = 0;
            }

            if (v26)
            {
              v61 = notFoundRange;
              if ((v18 & 1) == 0)
              {
                goto LABEL_178;
              }
            }

            else if (!v18)
            {
              goto LABEL_178;
            }
          }

          if (v62 != -1)
          {
            v62 = notFoundRange;
            v66 = -1;
            if ((v10 & 1) == 0)
            {
              goto LABEL_219;
            }

            goto LABEL_179;
          }

LABEL_178:
          if (!v10)
          {
LABEL_219:
            v8 -= v14 == 10;
            goto LABEL_220;
          }

LABEL_179:
          if (v67 == 1)
          {
            ++*&v60[40];
          }

          else
          {
            if (!v67)
            {
              ++*&v60[32];
LABEL_186:
              if (BYTE4(v65) != 254)
              {
                goto LABEL_192;
              }

              v39 = 0;
              goto LABEL_191;
            }

            if (BYTE1(v67) != 1)
            {
              if (BYTE1(v67))
              {
                if (*(&v63 + 1) < 1)
                {
                  goto LABEL_195;
                }

                ++*&v60[48];
LABEL_193:
                if (v60[2] == 1)
                {
                  v60[1] = 1;
                }

LABEL_195:
                if (!v24)
                {
LABEL_218:
                  v63 = v8;
                  LOWORD(v67) = -1;
                  v60[2] = 0;
                  goto LABEL_219;
                }

                v40 = *&v60[8] == 0 && *&v60[32] == 0;
                if (*&v60[40] | *&v60[16])
                {
                  v41 = (*&v60[16] + *&v60[40]) / (*&v60[8] + *&v60[32] + *&v60[16] + *&v60[40]) < 0.4;
                }

                else
                {
                  v41 = 1;
                }

                if (v65 != 8206)
                {
                  if (v65 == 8207)
                  {
LABEL_204:
                    LOBYTE(v42) = 1;
LABEL_215:
                    valuePtr = v42;
                    v59 = v8;
                    v58 = v14;
                    if (appendParagraphRangeInfo_onceToken != -1)
                    {
                      CFStringCopyStatisticalWritingDirections_cold_1();
                    }

                    v43 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v64);
                    v44 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v64 + 8);
                    v57 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberSInt8Type, &valuePtr);
                    v70 = v60[1];
                    v45 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberIntType, &v70);
                    v46 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v60[8]);
                    v47 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v60[16]);
                    v48 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v60[24]);
                    v49 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v60[32]);
                    v50 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v60[40]);
                    cf = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v60[48]);
                    values = v43;
                    v88 = v44;
                    v89 = v57;
                    v90 = v45;
                    v91 = v46;
                    v92 = v47;
                    v93 = v48;
                    v94 = v49;
                    v95 = v50;
                    v96 = cf;
                    v51 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, appendParagraphRangeInfo_sArrayOfStatisticalWritingDirectionParagraphKeys, &values, 10, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    CFRelease(v43);
                    CFRelease(v44);
                    CFRelease(v57);
                    CFRelease(v45);
                    CFRelease(v46);
                    CFRelease(v47);
                    CFRelease(v48);
                    CFRelease(v49);
                    CFRelease(v50);
                    CFRelease(cf);
                    CFArrayAppendValue(v69[0], v51);
                    CFRelease(v51);
                    v8 = v59;
                    memset(&v60[8], 0, 48);
                    v64 = v59;
                    LODWORD(v65) = 0;
                    BYTE4(v65) = -2;
                    v60[1] = 0;
                    v3 = v55;
                    v14 = v58;
                    goto LABEL_218;
                  }

                  if (BYTE4(v65))
                  {
                    if (BYTE4(v65) == 1 && (BYTE2(v69[1]) & 1) == 0)
                    {
                      goto LABEL_204;
                    }

LABEL_212:
                    v42 = v40 << 31 >> 31;
                    if (!v41)
                    {
                      LOBYTE(v42) = 1;
                    }

                    goto LABEL_215;
                  }

                  if (BYTE1(v69[1]) == 1)
                  {
                    goto LABEL_212;
                  }
                }

                LOBYTE(v42) = 0;
                goto LABEL_215;
              }

              ++*&v60[8];
              goto LABEL_186;
            }

            ++*&v60[16];
          }

          if (BYTE4(v65) != 254)
          {
            goto LABEL_192;
          }

          v39 = 1;
LABEL_191:
          BYTE4(v65) = v39;
LABEL_192:
          if (*(&v63 + 1) < 1)
          {
            goto LABEL_195;
          }

          goto LABEL_193;
        }

        if ((v13 - 11) < 2 || (v13 - 14) < 2)
        {
          v20 = *(&v63 + 1);
          v16 = *(&v63 + 1) != 0;
          CFArrayAppendValue(theArray[0], v7);
          if (LOBYTE(v69[1]) == 1 && CFArrayGetCount(theArray[0]) != 1)
          {
            goto LABEL_73;
          }

          if (v7 <= 8236)
          {
            if (v7 != 8234)
            {
              if (v7 != 8235)
              {
                goto LABEL_73;
              }

              goto LABEL_126;
            }

LABEL_53:
            v19 = LOBYTE(theArray[1]) != 0;
            LOWORD(theArray[1]) = 0;
            v18 = 1;
            if (!v20)
            {
              goto LABEL_77;
            }

            goto LABEL_127;
          }

          if (v7 != 8238)
          {
            if (v7 == 8237)
            {
              goto LABEL_53;
            }

LABEL_73:
            v10 = 1;
            if (v16)
            {
              goto LABEL_74;
            }

            v19 = 0;
            goto LABEL_76;
          }

LABEL_126:
          v19 = LOBYTE(theArray[1]) != 1;
          v18 = 1;
          LOWORD(theArray[1]) = 1;
          if (!v20)
          {
            goto LABEL_77;
          }

          goto LABEL_127;
        }

        if (v13 != 10)
        {
          goto LABEL_62;
        }

LABEL_56:
        if (u_charType(v7) == 19 && *(&v63 + 1))
        {
          goto LABEL_58;
        }

LABEL_65:
        v19 = 0;
        v18 = 0;
        goto LABEL_77;
      }

      if (v13 <= 18)
      {
        if (v13 != 16)
        {
          if (v13 != 18)
          {
            goto LABEL_62;
          }

          goto LABEL_56;
        }
      }

      else
      {
        if ((v13 - 19) < 3)
        {
          v15 = *(&v63 + 1);
          v16 = *(&v63 + 1) != 0;
          CFArrayAppendValue(theArray[0], v7);
          if (LOBYTE(v69[1]) == 1 && CFArrayGetCount(theArray[0]) != 1)
          {
            goto LABEL_73;
          }

          v17 = BYTE1(theArray[1]);
          LOWORD(theArray[1]) = 511;
          v18 = 1;
          if (v15)
          {
LABEL_127:
            v14 = 0;
            v24 = 0;
            v10 = 1;
            v26 = 1;
            goto LABEL_163;
          }

          goto LABEL_32;
        }

        if (v13 != 22)
        {
          goto LABEL_62;
        }
      }

      v20 = *(&v63 + 1);
      v16 = *(&v63 + 1) != 0;
      Count = CFArrayGetCount(theArray[0]);
      if (!Count)
      {
        goto LABEL_73;
      }

      v22 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], Count - 1);
      if (v13 == 16)
      {
        if (ValueAtIndex - 8234 > 4 || ValueAtIndex == 8236)
        {
          goto LABEL_73;
        }
      }

      else if (ValueAtIndex - 8294 >= 3)
      {
        goto LABEL_73;
      }

      CFArrayRemoveValueAtIndex(theArray[0], v22 - 1);
      if (v22 == 1)
      {
        LOWORD(theArray[1]) = 255;
        v10 = 1;
        if (v20)
        {
LABEL_74:
          v14 = 0;
          v24 = 0;
          v26 = 1;
          v18 = 1;
          goto LABEL_163;
        }

        v19 = 1;
LABEL_76:
        v18 = 1;
        goto LABEL_77;
      }

      if (LOBYTE(v69[1]) == 1 && CFArrayGetCount(theArray[0]))
      {
        goto LABEL_73;
      }

      v33 = CFArrayGetValueAtIndex(theArray[0], v22 - 2);
      if (v33 > 8236)
      {
        if (v33 == 8238)
        {
          goto LABEL_126;
        }

        if (v33 == 8237)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v33 == 8234)
        {
          goto LABEL_53;
        }

        if (v33 == 8235)
        {
          goto LABEL_126;
        }
      }

      v17 = BYTE1(theArray[1]);
      LOWORD(theArray[1]) = 511;
      v18 = 1;
      if (v20)
      {
        goto LABEL_127;
      }

LABEL_32:
      v19 = v17 ^ 1;
LABEL_77:
      *(&v63 + 1) += v11;
      if (!CFArrayGetCount(theArray[0]) && (v19 & 1) == 0)
      {
        v14 = 0;
        v24 = 0;
        v10 = 0;
        v26 = v18;
        switch(v13)
        {
          case 0:
            v14 = v67;
            if (!v67)
            {
              goto LABEL_136;
            }

            if (v67 != 255)
            {
              goto LABEL_140;
            }

            LOBYTE(v67) = 0;
            if (BYTE1(v67) == 255)
            {
              goto LABEL_135;
            }

            v14 = 0;
            v24 = 0;
            v10 = 0;
            BYTE1(v67) = 0;
            goto LABEL_161;
          case 1:
          case 13:
            if (v67 == 1)
            {
              goto LABEL_135;
            }

            if (v67 == 255)
            {
              v26 = 1;
              LOBYTE(v67) = 1;
              v14 = 0;
              v24 = 0;
              v10 = 0;
              if (BYTE1(v67) != 255)
              {
                BYTE1(v67) = 1;
              }
            }

            else
            {
LABEL_140:
              v14 = 0;
              v24 = 0;
              v10 = 0;
              v26 = 1;
              v60[2] = 1;
            }

            goto LABEL_162;
          case 2:
          case 5:
            v36 = v62;
            v26 = v18;
            if (v62 == -1)
            {
              v36 = v61;
              if (v61 == -1)
              {
                v36 = v8 - v11;
                *&v62 = v8 - v11;
                v26 = v18;
              }

              else
              {
                *&v62 = v61;
                *(&v62 + 1) = *(&v61 + 1) + v11;
                v26 = 1;
              }
            }

            v14 = 0;
            v52 = v36 + *(&v62 + 1) + v11 - 1;
            *(&v62 + 1) += v11;
            v66 = v52;
            if (v13 == 5 && BYTE1(v67) == 255)
            {
              v14 = 0;
              v24 = 0;
              v10 = 0;
              if (BYTE3(v69[1]) == 1)
              {
                BYTE1(v67) = 1;
              }
            }

            else
            {
              v24 = 0;
              v10 = 0;
            }

            goto LABEL_163;
          case 3:
            if (v62 != -1)
            {
              goto LABEL_142;
            }

            if (v61 != -1)
            {
              goto LABEL_223;
            }

            goto LABEL_231;
          case 4:
            if (v62 != -1)
            {
              goto LABEL_142;
            }

            if (v61 == -1)
            {
              goto LABEL_96;
            }

LABEL_223:
            v14 = 0;
            v24 = 0;
            v10 = 0;
            *(&v61 + 1) += v11;
            goto LABEL_97;
          case 6:
            if (v62 == -1)
            {
              if (v61 != -1)
              {
                v14 = 0;
                v24 = 0;
                v10 = 0;
                v26 = 1;
                goto LABEL_163;
              }

LABEL_231:
              v14 = 0;
              v24 = 0;
              v10 = 0;
              *&v61 = v8 - v11;
              *(&v61 + 1) += v11;
            }

            else
            {
LABEL_142:
              v14 = 0;
              v24 = 0;
              v10 = 0;
              *(&v62 + 1) += v11;
            }

            break;
          case 9:
          case 11:
          case 12:
          case 14:
          case 15:
          case 16:
          case 19:
          case 20:
          case 21:
          case 22:
            goto LABEL_163;
          default:
LABEL_135:
            v14 = 0;
LABEL_136:
            v24 = 0;
            v10 = 0;
            goto LABEL_161;
        }

        goto LABEL_97;
      }

      if (LOBYTE(theArray[1]) == 255)
      {
        if (BYTE1(theArray[1]) == 1)
        {
          v14 = 0;
          v24 = 0;
          v10 = 0;
          v60[2] = v67 != 255;
          LOWORD(v67) = -1;
          goto LABEL_97;
        }
      }

      else if (LOBYTE(theArray[1]) == 1)
      {
        v60[2] = v67 != 1;
        if (v67 == 255)
        {
          LOBYTE(v67) = 1;
          if (BYTE1(v67) != 255)
          {
            v14 = 0;
            v24 = 0;
            v10 = 0;
            BYTE1(v67) = 1;
            goto LABEL_97;
          }
        }
      }

      else if (LOBYTE(theArray[1]))
      {
        CFLog(2, @"Unknown value for considerWordDirectionality: %d", v27, v28, v29, v30, v31, v32, SLOBYTE(theArray[1]));
      }

      else
      {
        v60[2] = v67 != 0;
        if (v67 == 255)
        {
          LOBYTE(v67) = 0;
          if (BYTE1(v67) != 255)
          {
            v14 = 0;
            v24 = 0;
            v10 = 0;
            BYTE1(v67) = 0;
LABEL_97:
            v26 = v18;
            goto LABEL_163;
          }
        }
      }

LABEL_96:
      v14 = 0;
      v24 = 0;
      v10 = 0;
      goto LABEL_97;
    }

LABEL_233:
    v53 = CFRetain(v69[0]);
    CFRelease(v69[0]);
    v69[0] = 0;
    CFRelease(theArray[0]);
    return v53;
  }

  else
  {

    return CFArrayCreate(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeArrayCallBacks);
  }
}

uint64_t _objc_getTaggedPointerTag_0(uint64_t a1)
{
  v1 = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ a1;
  do
  {
    if ((v3 & 7) == *(MEMORY[0x1E69E5900] + v1))
    {
      break;
    }

    ++v1;
  }

  while (v1 != 7);
  v4 = v1 | v3;
  v5 = v1 & 7;
  v6 = (v4 >> 55) + 8;
  if (v5 == 7)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t __CFShouldUseIsolatesForAppendingValueWithStatisticalWritingDirections(__CFString *theString, __CFString *a2, _BYTE *a3, BOOL *a4, char a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, __CFString *a10, CFLocaleRef locale)
{
  if ((*a3 & 1) == 0)
  {
    Identifier = CFLocaleGetIdentifier(locale);
    *a4 = CFLocaleGetLanguageCharacterDirection(Identifier) == kCFLocaleLanguageDirectionRightToLeft;
    *a3 = 1;
  }

  HasStrongOrWeakRTL = *a4;
  if ((HasStrongOrWeakRTL & 1) == 0 && (a5 & 1) == 0)
  {
    Length = CFStringGetLength(theString);
    HasStrongOrWeakRTL = _CFStringHasStrongOrWeakRTL(theString, 0, Length);
  }

  if (!a6 && (HasStrongOrWeakRTL & 1) == 0)
  {
    v22 = CFStringGetLength(a2);
    if (v22)
    {
      if ((_CFStringHasStrongOrWeakRTL(a2, 0, v22) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 1;
    }
  }

  if (HasStrongOrWeakRTL)
  {
    return 1;
  }

LABEL_10:
  v23 = *(a7 + 32 * a8 + 8) + *(a7 + 32 * a8 + 4);
  if (a9 <= v23)
  {
    return 0;
  }

  return _CFStringHasStrongOrWeakRTL(a10, v23, a9 - v23);
}

uint64_t __CFShouldUseIsolatesForAppendingValue(__CFString *a1, const __CFString *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, __CFString *a7)
{
  Length = CFStringGetLength(a1);
  if (_CFStringHasStrongOrWeakRTL(a1, 0, Length))
  {
    return 1;
  }

  v16 = CFStringGetLength(a2);
  if (!v16)
  {
    a3 = *(a4 + 32 * a5 + 8) + *(a4 + 32 * a5 + 4);
    v17 = a6 - a3;
    if (a6 > a3)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v17 = v16 - a3;
  if (v16 <= a3)
  {
    return 0;
  }

  a7 = a2;
LABEL_7:

  return _CFStringHasStrongOrWeakRTL(a7, a3, v17);
}

void __CFAppendFormattedValueWithStatisticalWritingDirections(__CFString *appendedString, CFMutableStringRef theString, int a3, int a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a4 && !a3)
  {
    if (_os_feature_enabled_impl())
    {
      v6 = CFStringCopyStatisticalWritingDirections(appendedString);
      Count = CFArrayGetCount(v6);
      if (Count)
      {
        v8 = Count;
        if (Count >= 1)
        {
          for (i = 0; v8 != i; ++i)
          {
            if (CFArrayGetCount(v6) > i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
              v11 = ValueAtIndex;
              valuePtr = 0;
              v18[0] = 0;
              if (v8 >= 2)
              {
                Value = CFDictionaryGetValue(ValueAtIndex, @"Location");
                if (!Value)
                {
                  continue;
                }

                CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
                v13 = CFDictionaryGetValue(v11, @"Length");
                if (!v13)
                {
                  continue;
                }

                CFNumberGetValue(v13, kCFNumberCFIndexType, v18);
              }

              v16 = 0;
              v14 = CFDictionaryGetValue(v11, @"WritingDirection");
              if (v14)
              {
                CFNumberGetValue(v14, kCFNumberSInt8Type, &v16);
                v15 = v16;
                if (v16 != 255)
                {
                  goto LABEL_16;
                }
              }
            }
          }
        }

        v15 = -1;
LABEL_16:
        __CFAppendDirectionalIsolate(v15, theString);
        goto LABEL_22;
      }
    }

    else
    {
      v6 = 0;
    }

    LOWORD(valuePtr) = 8296;
    CFStringAppendCharacters(theString, &valuePtr, 1);
LABEL_22:
    CFStringAppend(theString, appendedString);
    LOWORD(valuePtr) = 8297;
    CFStringAppendCharacters(theString, &valuePtr, 1);
    if (v6)
    {
      CFRelease(v6);
    }

    return;
  }

  CFStringAppend(theString, appendedString);
}

void __CFAppendFormattedValue(CFStringRef appendedString, CFMutableStringRef theString, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    chars = 8296;
    CFStringAppendCharacters(theString, &chars, 1);
    CFStringAppend(theString, appendedString);
    v6 = 8297;
    CFStringAppendCharacters(theString, &v6, 1);
  }

  else
  {

    CFStringAppend(theString, appendedString);
  }
}

uint64_t _CFStringHasStrongOrWeakRTL(__CFString *a1, uint64_t a2, int64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (a3 && CFStringGetFastestEncoding(a1) != 1536)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      *buffer = 0u;
      v34 = 0u;
      theString = a1;
      v44 = a2;
      v45 = a3;
      CharactersPtr = CFStringGetCharactersPtr(a1);
      v6 = CharactersPtr ? 0 : _CFStringGetCStringPtrInternal(a1, 0x600u, 1, 1);
      v46 = 0;
      v47 = 0;
      v43 = v6;
      v25 = _os_feature_enabled_impl();
      if (a3 >= 1)
      {
        v26 = v25;
        v27 = 0;
        do
        {
          v31 = 0;
          v32 = 0;
          LongCharacterFromInlineBuffer = __CFStringGetLongCharacterFromInlineBuffer(buffer, a3, v27, &v31);
          v29 = MEMORY[0x1865E3980]();
          if (v29 > 4)
          {
            if (v29 == 5)
            {
              if (v26)
              {
                return 1;
              }
            }

            else if (v29 == 13)
            {
              return 1;
            }
          }

          else if (v29 == 2)
          {
            if ((LongCharacterFromInlineBuffer - 1776) < 0xA)
            {
              v30 = v26;
            }

            else
            {
              v30 = 0;
            }

            if (v30)
            {
              return 1;
            }
          }

          else if (v29 == 1)
          {
            return 1;
          }

          v27 = v32 + v31;
        }

        while (v32 + v31 < a3);
      }
    }

    return 0;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *buffer = 0u;
  v34 = 0u;
  BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(0x66u, 0);
  theString = a1;
  v44 = a2;
  v45 = a3;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    CStringPtrInternal = 0;
  }

  else
  {
    CStringPtrInternal = _CFStringGetCStringPtrInternal(a1, 0x600u, 1, 1);
  }

  v46 = 0;
  v47 = 0;
  v43 = CStringPtrInternal;
  if (a3 < 1)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    if (v9 < 0 || (v10 = v45, v45 <= v9))
    {
      LOWORD(v12) = 0;
      goto LABEL_16;
    }

    if (CharactersPtr)
    {
      v11 = CharactersPtr[v44 + v9];
    }

    else if (v43)
    {
      v11 = v43[v44 + v9];
    }

    else
    {
      if (v47 <= v9 || (v18 = v46, v46 > v9))
      {
        v19 = v9 - 4;
        if (v9 < 4)
        {
          v19 = 0;
        }

        if (v19 + 64 < v45)
        {
          v10 = v19 + 64;
        }

        v46 = v19;
        v47 = v10;
        v49.length = v10 - v19;
        v49.location = v44 + v19;
        CFStringGetCharacters(theString, v49, buffer);
        v18 = v46;
      }

      v11 = buffer[v9 - v18];
    }

    v12 = v11;
    if (v11 >> 10 == 54)
    {
      break;
    }

LABEL_16:
    v13 = BitmapPtrForPlane;
    if (BitmapPtrForPlane)
    {
      goto LABEL_17;
    }

LABEL_49:
    v17 = v9 + 1;
LABEL_50:
    v9 = v17;
    if (v17 >= a3)
    {
      return 0;
    }
  }

  v17 = v9 + 1;
  v20 = v45;
  if (v45 <= v9 + 1)
  {
    goto LABEL_50;
  }

  if (CharactersPtr)
  {
    v21 = CharactersPtr[v44 + v17];
  }

  else if (v43)
  {
    v21 = v43[v44 + v17];
  }

  else
  {
    if (v47 <= v17 || (v22 = v46, v46 > v17))
    {
      v23 = v9 - 3;
      if (v9 < 3)
      {
        v23 = 0;
      }

      if (v23 + 64 < v45)
      {
        v20 = v23 + 64;
      }

      v46 = v23;
      v47 = v20;
      v50.length = v20 - v23;
      v50.location = v44 + v23;
      CFStringGetCharacters(theString, v50, buffer);
      v22 = v46;
    }

    v21 = buffer[v17 - v22];
  }

  if (v21 >> 10 != 55)
  {
    goto LABEL_50;
  }

  v12 = (v12 << 10) + v21 - 56613888;
  v24 = HIWORD(v12) & 0x1F;
  if (!v24)
  {
    ++v9;
    goto LABEL_16;
  }

  v13 = CFUniCharGetBitmapPtrForPlane(0x66u, v24);
  ++v9;
  if (!v13)
  {
    goto LABEL_49;
  }

LABEL_17:
  v14 = *(v13 + (v12 >> 3));
  result = 1;
  v16 = (1 << (v12 & 7)) & v14;
  if (v16)
  {
    v17 = v9;
  }

  else
  {
    v17 = v9 + 1;
  }

  if (!v16)
  {
    goto LABEL_50;
  }

  return result;
}

void __CFAppendDirectionalIsolate(int a1, CFMutableStringRef theString)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    v5 = 8295;
    p_chars = &v5;
  }

  else if (a1)
  {
    chars = 8296;
    p_chars = &chars;
  }

  else
  {
    v6 = 8294;
    p_chars = &v6;
  }

  CFStringAppendCharacters(theString, p_chars, 1);
}

double __appendParagraphRangeInfo_block_invoke()
{
  v0 = malloc_type_calloc(0xAuLL, 8uLL, 0x80040B8603338uLL);
  appendParagraphRangeInfo_sArrayOfStatisticalWritingDirectionParagraphKeys = v0;
  v0[2] = xmmword_1E6D82E30;
  v0[3] = *&off_1E6D82E40;
  v0[4] = xmmword_1E6D82E50;
  result = COERCE_DOUBLE(@"WritingDirection");
  *v0 = xmmword_1E6D82E10;
  v0[1] = *&off_1E6D82E20;
  return result;
}

uint64_t (**__CFStringEncodingGetKoreanConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingIsDecomposableCharacter_0)
  {
    __CFStringEncodingIsDecomposableCharacter_0 = a2(1);
    __CFStringEncodingDecomposeCharacter_0 = a2(2);
  }

  if (a1 > 2111)
  {
    if (a1 != 2112)
    {
      if (a1 == 2368)
      {
        return __CFConverterEUC_KR;
      }

      return 0;
    }

    return &__CFConverterISO_2022_KR;
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 == 1058)
      {
        return __CFConverterDOSKorean;
      }

      return 0;
    }

    return __CFConverterMacKorean;
  }
}

uint64_t __CFToDOSKorean(char a1, unsigned __int16 *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t *a6)
{
  if (a3 < 1)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_96;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0xF73Eu;
  v48 = 1;
  do
  {
    if (a5 && v11 >= a5)
    {
      if ((a1 & 0x10) == 0)
      {
        break;
      }

      v14 = *a2;
      v15 = v14 - 774 > 0x32 || ((1 << (v14 - 6)) & 0x4000000000005) == 0;
      if (v15 && v14 - 12441 >= 2)
      {
        break;
      }
    }

    else
    {
      v14 = *a2;
      if (v14 <= 0x7F)
      {
        if (a5)
        {
          *a4++ = v14;
        }

        ++v11;
        ++a2;
        ++v12;
        v48 = 1;
        continue;
      }
    }

    if (v14 - 4352 > 0xFE)
    {
LABEL_34:
      if (v14 < 0xA1)
      {
        goto LABEL_54;
      }
    }

    else if (a3 - v12 >= 2 && v14 <= 0x13)
    {
      v17 = a2[1] - 4449;
      if (v17 <= 0x15)
      {
        if ((a3 - v12) < 3)
        {
          v18 = 0;
        }

        else
        {
          v18 = a2[2] - 4519;
          if (v18 > 0x1Cu)
          {
            v18 = 0;
          }
        }

        v19 = &KSX1001_from_uni;
        v20 = (&KSX1001_from_uni + v13);
        v21 = (v18 + 28 * (v17 + 21 * v14) - 21504);
        while (1)
        {
          v22 = &v19[33 * ((0xF83E0F83E0F83E1 * (v20 - v19)) >> 1)];
          v23 = *v22;
          if (v23 <= v21)
          {
            if (v23 + 32 > v21)
            {
              v37 = v22[v21 - v23 + 1];
              if (v37)
              {
                v45 = v18 <= 0;
                v38 = 2;
                if (!v45)
                {
                  v38 = 3;
                }

                goto LABEL_71;
              }

              goto LABEL_34;
            }

            v19 = v22 + 33;
          }

          else
          {
            v20 = v22 - 33;
          }

          if (v19 > v20)
          {
            goto LABEL_34;
          }
        }
      }
    }

    v24 = &KSX1001_from_uni;
    v25 = (&KSX1001_from_uni + v13);
    while (1)
    {
      v26 = &v24[33 * ((0xF83E0F83E0F83E1 * (v25 - v24)) >> 1)];
      v27 = *v26;
      if (v27 <= v14)
      {
        break;
      }

      v25 = v26 - 33;
LABEL_40:
      if (v24 > v25)
      {
        goto LABEL_41;
      }
    }

    if (v27 + 32 <= v14)
    {
      v24 = v26 + 33;
      goto LABEL_40;
    }

    v36 = &v26[v14 - v27];
    v37 = v36[1];
    if (v36[1])
    {
      v38 = 1;
LABEL_71:
      if (v37 != 65533)
      {
        if (a5)
        {
          if (v11 + 2 > a5)
          {
            break;
          }

          *a4 = BYTE1(v37);
          a4[1] = v37;
          a4 += 2;
        }

        v48 = 0;
        v12 += v38;
        v11 += 2;
        a2 += v38;
        continue;
      }
    }

LABEL_41:
    if ((v14 + 0x2000) <= 0xBBu)
    {
      if (a5)
      {
        if (v11 + 2 > a5)
        {
          break;
        }

        if (v14 >= 0xE05E)
        {
          v28 = -2;
        }

        else
        {
          v28 = -55;
        }

        *a4 = v28;
        if (v14 >= 0xE05E)
        {
          v29 = 67;
        }

        else
        {
          v29 = -95;
        }

        a4[1] = v29 + v14;
        a4 += 2;
      }

      v48 = 0;
      ++a2;
      ++v12;
      v11 += 2;
      continue;
    }

    if ((v14 - 4447) <= 1u)
    {
      ++a2;
      ++v12;
      continue;
    }

LABEL_54:
    if ((a1 & 8) != 0 || v12 < 1)
    {
      break;
    }

    if ((a1 & 0x10) == 0)
    {
      continue;
    }

    if ((v14 - 774 > 0x32 || ((1 << (v14 - 6)) & 0x4000000000005) == 0) && v14 - 12441 >= 2)
    {
      break;
    }

    v30 = a6;
    v31 = __CFPrecomposeCharKorean(a2 - 1);
    if (!v31)
    {
      a6 = v30;
      break;
    }

    a6 = v30;
    if (v31 < 0xA1)
    {
      break;
    }

    v13 = 0xF73Eu;
    v32 = &KSX1001_from_uni;
    v33 = (&KSX1001_from_uni + v13);
LABEL_63:
    v34 = &v32[33 * ((0xF83E0F83E0F83E1 * (v33 - v32)) >> 1)];
    v35 = *v34;
    if (v35 > v31)
    {
      v33 = v34 - 33;
      goto LABEL_67;
    }

    if (v35 + 32 <= v31)
    {
      v32 = v34 + 33;
LABEL_67:
      if (v32 > v33)
      {
        break;
      }

      goto LABEL_63;
    }

    v39 = &v34[v31 - v35];
    v40 = v39[1];
    if (v39[1])
    {
      v41 = v40 == 65533;
    }

    else
    {
      v41 = 1;
    }

    if (v41)
    {
      break;
    }

    if (v48)
    {
      v42 = v11 + 1;
    }

    else
    {
      v42 = v11;
    }

    if (!a5)
    {
      goto LABEL_92;
    }

    if (v42 > a5)
    {
      v47 = v42 - 1;
      if (v48)
      {
        v11 = v47;
      }

      break;
    }

    v43 = -2;
    if (v48)
    {
      v43 = -1;
    }

    v44 = &a4[v43];
    *v44 = __rev16(v40);
    a4 = v44 + 2;
LABEL_92:
    v48 = 0;
    ++a2;
    ++v12;
    v11 = v42;
  }

  while (v12 < a3);
LABEL_96:
  *a6 = v11;
  return v12;
}