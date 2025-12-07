__CFString *MREExceptionTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"MREExceptionManual";
  }

  else
  {
    return off_29EE849E8[a1 - 1];
  }
}

unint64_t *sub_297E25A38(unint64_t *result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (result)
  {
    v4 = result;
    *&v5 = a2;
    *(&v5 + 1) = a3;
    v6 = *(a4 + 2);
    v7 = *a4;
    v8 = *(a4 + 24);
    v9 = 0;
    result = sub_297E25A98(result[1], &v5);
    v4[1] = result;
  }

  return result;
}

unint64_t *sub_297E25A98(unint64_t *a1, __int128 *a2)
{
  v3 = a1;
  v42 = a1;
  if (!a1)
  {
    v6 = &v42;
LABEL_19:
    v17 = malloc_type_malloc(0x40uLL, 0x1020040D3BB1902uLL);
    v18 = a2[2];
    v19 = *(a2 + 6);
    v20 = *a2;
    *(v17 + 16) = a2[1];
    *(v17 + 32) = v18;
    *v17 = v20;
    *(v17 + 48) = v19;
    *(v17 + 56) = v3;
LABEL_20:
    *v6 = v17;
    return v42;
  }

  v4 = *a2;
  v5 = *(a2 + 1) + *a2;
  v6 = &v42;
  while (1)
  {
    v7 = *v3;
    if (v5 <= *v3)
    {
      goto LABEL_19;
    }

    v8 = v3[1];
    v9 = v8 + v7;
    if (v4 < v8 + v7)
    {
      break;
    }

    v6 = (v3 + 7);
    v3 = v3[7];
LABEL_16:
    if (!v3)
    {
      goto LABEL_19;
    }
  }

  if (v9 >= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8 + v7;
  }

  if (v7 <= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = *v3;
  }

  v12 = v10 - v11;
  if (!v12)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_49:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_50:
    _os_assert_log();
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (v12 < v8)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    if (sub_297E25F54(v3, v4, v5, &v38))
    {
      v13 = malloc_type_malloc(0x40uLL, 0x1020040D3BB1902uLL);
      v14 = v41;
      v16 = v38;
      v15 = v39;
      v13[2] = v40;
      v13[3] = v14;
      *v13 = v16;
      v13[1] = v15;
      *(v13 + 7) = v3[7];
      v3[7] = v13;
    }

    goto LABEL_16;
  }

  v22 = *(a2 + 1);
  if (v12 < v22)
  {
    v23 = a2[1];
    v38 = *a2;
    v39 = v23;
    v24 = a2[3];
    v40 = a2[2];
    v41 = v24;
    memset(v37, 0, sizeof(v37));
    if (!sub_297E25F54(&v38, v7, v9, v37) || sub_297E25A98(v3, v37) == v3)
    {
      v17 = sub_297E25A98(v3, &v38);
      goto LABEL_20;
    }

    goto LABEL_50;
  }

  if (v22 != v8)
  {
    goto LABEL_49;
  }

  v26 = v3[4];
  v25 = v3[5];
  v27 = v3[2];
  v28 = v3[3];
  v30 = *(a2 + 3);
  v29 = *(a2 + 4);
  if (v26 + v28 + v25 + v27 > v8)
  {
    v31 = *(a2 + 5);
    v32 = *(a2 + 2);
    goto LABEL_30;
  }

  v31 = *(a2 + 5);
  v32 = *(a2 + 2);
  if (v29 + v30 + v31 + v32 > v8)
  {
LABEL_30:
    v8 = -1;
  }

  v33 = v3[6];
  if (v33 <= *(a2 + 6))
  {
    v33 = *(a2 + 6);
  }

  if (v28 <= v30)
  {
    v28 = *(a2 + 3);
  }

  v34 = v8 - v28;
  if (v26 <= v29)
  {
    v26 = *(a2 + 4);
  }

  if (v34 < v26)
  {
    v26 = v34;
  }

  v35 = v34 - v26;
  if (v25 <= v31)
  {
    v25 = v31;
  }

  if (v35 < v25)
  {
    v25 = v35;
  }

  v3[3] = v28;
  v3[4] = v26;
  v3[5] = v25;
  v3[6] = v33;
  v36 = v35 - v25;
  if (v27 <= v32)
  {
    v27 = v32;
  }

  if (v36 >= v27)
  {
    v36 = v27;
  }

  v3[2] = v36;
  return v42;
}

uint64_t sub_297E25D0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v3 = *(a1 + 8);
    v7 = v4;
    for (i = v4[1]; i; i = *(i + 56))
    {
      v3 = sub_297E25A98(v3, i);
    }

    *(a1 + 8) = v3;
    v4 = v7;
  }

  return MEMORY[0x2A1C71028](v3, v4);
}

void sub_297E25D78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v11 = v3;
    v4 = [v3 subrangeList];
    if (v4)
    {
      sub_297E25D0C(a1, v4);
    }

    else
    {
      v5 = [v11 dirtySize];
      v6 = [v11 swappedSize];
      v7 = [v11 cleanSize];
      v8 = [v11 reclaimableSize];
      v9 = [v11 wiredSize];
      v10 = v9;
      if (v5 || v6 || v7 || v8 || v9)
      {
        *&v12 = [v11 offset];
        *(&v12 + 1) = [v11 size];
        v13 = v7;
        v14 = v5;
        v15 = v6;
        v16 = v8;
        v17 = v10;
        v18 = 0;
        *(a1 + 8) = sub_297E25A98(*(a1 + 8), &v12);
      }
    }

    v3 = v11;
  }
}

double sub_297E25E80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    *(a2 + 40) = 0;
    v2 = 0uLL;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      do
      {
        v6 += *(v3 + 24);
        v5 += *(v3 + 16);
        v4 += *(v3 + 32);
        v2 = vaddq_s64(*(v3 + 40), v2);
        v3 = *(v3 + 56);
      }

      while (v3);
      *(a2 + 8) = v4;
      *(a2 + 16) = v5;
      *(a2 + 24) = v2;
    }

    else
    {
      v6 = 0;
    }

    *a2 = v6;
  }

  else
  {
    v2.i64[0] = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return *v2.i64;
}

uint64_t sub_297E25F54(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (a4)
  {
    v5 = a1[1];
    if (*a1 >= a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = a2;
    }

    *a4 = v6;
    v7 = v6 - *a1;
    a1[1] = v7;
    a4[1] = v5 - v7;
    v8 = *(a1 + 1);
    v24 = *a1;
    v25 = v8;
    v9 = *(a1 + 3);
    v26 = *(a1 + 2);
    v27 = v9;
    v10 = a1[1];
    v11 = a1[2];
    if (a1[3] >= v10)
    {
      v12 = a1[1];
    }

    else
    {
      v12 = a1[3];
    }

    if (a1[4] >= v10 - v12)
    {
      v13 = v10 - v12;
    }

    else
    {
      v13 = a1[4];
    }

    v14 = v10 - v12 - v13;
    if (a1[5] >= v14)
    {
      v15 = v10 - v12 - v13;
    }

    else
    {
      v15 = a1[5];
    }

    a1[4] = v13;
    a1[5] = v15;
    v16 = v14 - v15;
    if (v11 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v11;
    }

    a1[2] = v17;
    a1[3] = v12;
    if (a1[6] >= v10)
    {
      v18 = v10;
    }

    else
    {
      v18 = a1[6];
    }

    a1[6] = v18;
    v19 = memcmp(a1, &v24, 0x40uLL);
    if (v19)
    {
      v20 = v25;
      v21 = *(&v25 + 1) - v12;
      v22 = *(&v26 + 1) - v15;
      a4[4] = v26 - v13;
      a4[5] = v22;
      a4[2] = v20 - v17;
      a4[3] = v21;
      a4[6] = v27 - v18;
    }

    return v19 != 0;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

id sub_297E26068(void *a1)
{
  v37 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v4 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v5 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = sub_297E2635C;
  v31[3] = &unk_29EE84888;
  v6 = v2;
  v32 = v6;
  v7 = v3;
  v33 = v7;
  v8 = v4;
  v34 = v8;
  v9 = v5;
  v35 = v9;
  v26 = v1;
  [v1 enumerateObjectsUsingBlock:v31];
  v25 = v6;
  v10 = [v6 keysSortedByValueUsingComparator:&unk_2A1E8F910];
  v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [v7 objectForKeyedSubscript:v17];

        if (v18)
        {
          v19 = [v7 objectForKeyedSubscript:v17];
          [v11 addObject:v19];
        }

        v20 = [v8 objectForKeyedSubscript:v17];

        if (v20)
        {
          v21 = [v8 objectForKeyedSubscript:v17];
          [v11 addObject:v21];
        }

        v22 = [v9 objectForKeyedSubscript:v17];

        if (v22)
        {
          v23 = [v9 objectForKeyedSubscript:v17];
          [v11 addObject:v23];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v14);
  }

  return v11;
}

void sub_297E2635C(id *a1, void *a2)
{
  v13 = a2;
  v3 = sub_297E3CFE0(v13);
  if (v3)
  {
    v4 = [a1[4] objectForKeyedSubscript:v3];
    v5 = [v4 unsignedIntValue];

    v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v5 + 1];
    [a1[4] setObject:v6 forKeyedSubscript:v3];

    if ([v13 hasSuffix:@".memgraph"])
    {
      if ([v13 containsString:qword_2A13A5728])
      {
        v9 = a1[5];
        v8 = a1 + 5;
        v7 = v9;
      }

      else
      {
        v11 = a1[6];
        v8 = a1 + 6;
        v7 = v11;
      }
    }

    else
    {
      if (![v13 hasSuffix:@".lite_diag"])
      {
        goto LABEL_10;
      }

      v10 = a1[7];
      v8 = a1 + 7;
      v7 = v10;
    }

    v12 = [v7 objectForKeyedSubscript:v3];

    if (!v12)
    {
      [*v8 setObject:v13 forKeyedSubscript:v3];
    }
  }

LABEL_10:
}

uint64_t sub_297E26480(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 unsignedIntValue];
  if (v6 <= [v5 unsignedIntValue])
  {
    v8 = [v4 unsignedIntValue];
    v7 = v8 < [v5 unsignedIntValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t sub_297E2675C(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = [a3 localizedDescription];
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_fault_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "CacheEnumerator error for %@ at volume %@: %@\n", &v9, 0x20u);
  }

  return 1;
}

id sub_297E273F4(void *a1, unint64_t a2, unint64_t *a3)
{
  v16 = a3;
  v23 = *MEMORY[0x29EDCA608];
  v4 = a1;
  v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    v11 = *MEMORY[0x29EDB8D38];
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v18 + 1) + 8 * v12);
      v14 = [MEMORY[0x29EDB8E70] fileURLWithPath:{v13, v16}];
      [v5 addObject:v13];
      v17 = 0;
      [v14 getResourceValue:&v17 forKey:v11 error:0];
      v9 += [v17 unsignedLongLongValue];

      if (v9 > a2)
      {
        break;
      }

      if (v8 == ++v12)
      {
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (v16)
  {
    *v16 = v9;
  }

  return v5;
}

id sub_297E27598(void *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v13 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v2 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:-86400.0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = *MEMORY[0x29EDB8D30];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [MEMORY[0x29EDB8E70] fileURLWithPath:v9];
        v14 = 0;
        [v10 getResourceValue:&v14 forKey:v7 error:0];
        v11 = v14;
        if (v11 && ([v2 compare:v11] == -1 || !objc_msgSend(v2, "compare:", v11)))
        {
          [v13 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v13;
}

id sub_297E2775C(void *a1, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([v4 containsObject:{v11, v13}] & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

uint64_t sub_297E278A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_12;
  }

  v9 = 0;
  kcd_addr_begin = 0;
  v4 = MEMORY[0x29EDCA6B0];
  if (task_map_corpse_info_64(*MEMORY[0x29EDCA6B0], a1, &kcd_addr_begin, &v9))
  {
LABEL_11:
    a1 = 0;
    goto LABEL_12;
  }

  v5 = kcd_addr_begin;
  v6 = v9 + kcd_addr_begin;
  v7 = kcd_addr_begin + 16;
  if (kcd_addr_begin + 16 > v9 + kcd_addr_begin || v7 + *(kcd_addr_begin + 4) > v6 || *kcd_addr_begin != -559025833)
  {
    MEMORY[0x29C27BB50](*v4, kcd_addr_begin);
    goto LABEL_11;
  }

  do
  {
    if (v7 + v5[1] > v6)
    {
      break;
    }

    if (*v5 == -242132755)
    {
      break;
    }

    v3[2](v3, v5, v6);
    v5 = (v7 + v5[1]);
    v7 = (v5 + 4);
  }

  while ((v5 + 4) <= v6);
  MEMORY[0x29C27BB50](*v4, kcd_addr_begin, v9);
  a1 = 1;
LABEL_12:

  return a1;
}

id sub_297E279C8(uint64_t a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ [%d]", *(a1 + 64), *(a1 + 28)];
    v1 = vars8;
  }

  return a1;
}

id sub_297E27F50(int a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (proc_pidpath(a1, buffer, 0x400u) < 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:buffer];
  }

  return v1;
}

void *sub_297E27FE0(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  size = 0;
  *v4 = 0xE00000001;
  v5 = 1;
  v6 = a1;
  if (sysctl(v4, 4u, 0, &size, 0, 0) < 0)
  {
    return 0;
  }

  v1 = malloc_type_malloc(size, 0x8D6DA7C2uLL);
  if (v1 && sysctl(v4, 4u, v1, &size, 0, 0) < 0)
  {
    free(v1);
    return 0;
  }

  return v1;
}

id sub_297E280B0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x29EDB8DB0]) initWithTimeIntervalSince1970:a1];
  v4 = [v3 dateByAddingTimeInterval:a2 / 1000000.0];

  return v4;
}

id sub_297E28120(unint64_t a1)
{
  if (a1 >= 2)
  {
    v2 = xpc_coalition_copy_info();
    v3 = v2;
    if (v2 && MEMORY[0x29C27BC30](v2) == MEMORY[0x29EDCAA00])
    {
      v1 = v3;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

__CFString *sub_297E28198(int a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    Copy = 0;
    goto LABEL_16;
  }

  if (a1 != 1)
  {
    Copy = MREBundleStringForUnbundledProcess;
    goto LABEL_16;
  }

  v7 = [objc_alloc(MEMORY[0x29EDB8E70]) initFileURLWithPath:v5];
  if (!v7)
  {
LABEL_14:
    Copy = 0;
    goto LABEL_15;
  }

  v8 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle();
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  Identifier = CFBundleGetIdentifier(v8);
  if (!Identifier)
  {
    CFRelease(v9);
    goto LABEL_11;
  }

  Copy = CFStringCreateCopy(0, Identifier);
  CFRelease(v9);
  if (!Copy)
  {
LABEL_11:
    if (v6)
    {
      Copy = xpc_dictionary_get_string(v6, *MEMORY[0x29EDCA9A8]);
      if (Copy)
      {
        Copy = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:Copy];
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:

  return Copy;
}

char *sub_297E282C8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = 0;
    goto LABEL_7;
  }

  string = xpc_dictionary_get_string(v1, *MEMORY[0x29EDCA9A0]);
  if (string)
  {
    v4 = string;
  }

  else
  {
    v4 = xpc_dictionary_get_string(v2, *MEMORY[0x29EDCA9A8]);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v4 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:v4];
LABEL_7:

  return v4;
}

BOOL sub_297E28364(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x29EDC6DB0]) initWithTask:a1];

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = "isMSLEnabledForTask";
      v10 = 1024;
      v11 = a2;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s - the target process (pid%i %@) has MallocStackLogging enabled", &v8, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = "isMSLEnabledForTask";
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_debug_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s - the target process  (pid%i %@) has MallocStackLogging disabled", &v8, 0x1Cu);
  }

  return v6 != 0;
}

void sub_297E284D4(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *a2;
    if ((*a2 & 0xFFFFFFF0) == 0x20)
    {
      v3 = 17;
    }

    switch(v3)
    {
      case 2053:
        *(v2 + 28) = *(a2 + 16);
        break;
      case 2054:
        *(v2 + 32) = *(a2 + 16);
        break;
      case 2055:
      case 2056:
      case 2057:
      case 2058:
      case 2060:
      case 2061:
      case 2064:
      case 2065:
      case 2066:
      case 2067:
      case 2068:
      case 2070:
      case 2071:
      case 2072:
      case 2075:
      case 2076:
      case 2077:
        return;
      case 2059:
        v6 = sub_297E280B0(*(a2 + 16), *(a2 + 24));
        v7 = *(v2 + 184);
        *(v2 + 184) = v6;

        MEMORY[0x2A1C71028](v6, v7);
        break;
      case 2062:
        v8 = *(a2 + 4);
        v9 = *(a2 + 8) & 0xF;
        v10 = v8 >= v9;
        v11 = v8 - v9;
        if (!v10)
        {
          v11 = 0;
        }

        if (v11 >= 8)
        {
          v12 = *(a2 + 16);
          *(v2 + 200) = v12;
          *(v2 + 104) = v12;
        }

        break;
      case 2063:
        __strlcpy_chk();
        v13 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:v19];
        v14 = *(v2 + 72);
        *(v2 + 72) = v13;

        v15 = *(v2 + 72);
        if (v15)
        {
          v16 = [v15 lastPathComponent];
          v17 = *(v2 + 64);
          *(v2 + 64) = v16;
        }

        break;
      case 2069:
        v18 = *(a2 + 16);
        *(v2 + 40) = v18;
        *(v2 + 16) = (v18 & 4) != 0;
        break;
      case 2073:
        *(v2 + 36) = *(a2 + 16);
        break;
      case 2074:
        *(v2 + 208) = *(a2 + 16);
        break;
      case 2078:
        *(v2 + 232) = *(a2 + 16);
        break;
      case 2079:
        *(v2 + 240) = *(a2 + 16);
        break;
      case 2080:
        *(v2 + 288) = *(a2 + 16);
        break;
      case 2081:
        *(v2 + 248) = *(a2 + 16);
        break;
      case 2082:
        *(v2 + 256) = *(a2 + 16);
        break;
      case 2083:
        *(v2 + 264) = *(a2 + 16);
        break;
      case 2084:
        *(v2 + 272) = *(a2 + 16);
        break;
      case 2085:
        *(v2 + 280) = *(a2 + 16);
        break;
      case 2086:
        *(v2 + 216) = *(a2 + 16);
        break;
      case 2087:
        *(v2 + 224) = *(a2 + 16);
        break;
      case 2088:
        *(v2 + 304) = *(a2 + 16);
        break;
      case 2089:
        *(v2 + 312) = *(a2 + 16);
        break;
      case 2090:
        *(v2 + 296) = *(a2 + 16);
        break;
      default:
        if (v3 == 17)
        {
          v4 = *(a2 + 8);
          if (HIDWORD(v4) == 2075 && v4 != 0)
          {
            *(v2 + 176) = *(a2 + 16);
          }
        }

        break;
    }
  }
}

uint64_t sub_297E28A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CSIsNull();
  if (result)
  {
    v5 = *(a1 + 32);
    *v5 = CSSymbolicatorGetSymbolOwnerWithUUIDAtTime();
    v5[1] = v6;
    result = CSIsNull();
    if ((result & 1) == 0)
    {

      return CSRetain();
    }
  }

  return result;
}

void sub_297E28AB0(uint64_t a1, void *a2)
{
  CSRelease();

  free(a2);
}

uint64_t sub_297E29CD0(uint64_t a1, void *a2, void *a3)
{
  v4 = qword_2A13A5568;
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:qword_2A13A5568];

  v8 = [v6 unsignedLongLongValue];
  if (v8 >= [v7 unsignedLongLongValue])
  {
    v10 = [v6 unsignedLongLongValue];
    if (v10 <= [v7 unsignedLongLongValue])
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void sub_297E2B7DC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 248), 8);
  _Unwind_Resume(a1);
}

void sub_297E2B808(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v40 = v6;
    [MEMORY[0x29EDB8DE8] array];
    v42 = v41 = v5;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v44;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v44 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v43 + 1) + 8 * i);
          v13 = [v12 processIDs];
          v14 = [MEMORY[0x29EDBA070] numberWithInt:*(*(a1 + 32) + 28)];
          v15 = [v13 containsObject:v14];

          if (v15)
          {
            v16 = v12;
            objc_opt_self();
            v17 = [MEMORY[0x29EDB8E00] dictionary];
            v18 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(v16, "surfaceID")}];
            [v17 setObject:v18 forKeyedSubscript:qword_2A13A5550];

            v19 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v16, "length")}];
            [v17 setObject:v19 forKeyedSubscript:qword_2A13A5568];

            v20 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v16, "dirtyLength")}];
            [v17 setObject:v20 forKeyedSubscript:qword_2A13A5570];

            v21 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v16, "residentLength")}];
            [v17 setObject:v21 forKeyedSubscript:qword_2A13A5578];

            v22 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v16, "wired")}];
            [v17 setObject:v22 forKeyedSubscript:qword_2A13A5580];

            v23 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v16, "purgeable")}];
            [v17 setObject:v23 forKeyedSubscript:qword_2A13A5588];

            v24 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v16, "cachedCopy")}];
            [v17 setObject:v24 forKeyedSubscript:qword_2A13A5590];

            v25 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v16, "memoryPool")}];
            [v17 setObject:v25 forKeyedSubscript:qword_2A13A5560];

            v26 = [v16 formattedDescriptions];

            [v17 setObject:v26 forKeyedSubscript:qword_2A13A5558];
            [v42 addObject:v17];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v9);
    }

    v27 = *(a1 + 32);
    v28 = *(v27 + 160);
    *(v27 + 160) = v42;
    v29 = v42;

    dispatch_semaphore_signal(*(a1 + 40));
    v6 = v40;
    v5 = v41;
  }

  else
  {
    if (v6 && [v6 count])
    {
      v30 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v31 = v6;
      v32 = [v31 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v48;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v48 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = [*(*(&v47 + 1) + 8 * j) description];
            [v30 addObject:v36];
          }

          v33 = [v31 countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v33);
      }

      v37 = *(a1 + 32);
      v38 = *(v37 + 168);
      *(v37 + 168) = v30;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v39 = sub_297E279C8(*(a1 + 32));
      *buf = 138412546;
      v53 = v39;
      v54 = 2112;
      v55 = v6;
      _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Didn't get any IOAccel memory info for %@ (this is not necessarily an error). Errors: %@", buf, 0x16u);
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }
}

id sub_297E2BEF0(void *a1, void *a2, void *a3, void *a4)
{
  v90[1] = *MEMORY[0x29EDCA608];
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v88.receiver = a1;
    v88.super_class = MemoryResourceException;
    v10 = objc_msgSendSuper2(&v88, sel_init);
    if (v10)
    {
      v11 = v10;
      v12 = [v8 objectForKeyedSubscript:qword_2A13A53C0];
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([v12 unsignedIntegerValue] < 2)
        {
          *(v11 + 17) = [v12 integerValue];
          v20 = [v8 objectForKeyedSubscript:qword_2A13A53D8];
          v21 = *(v11 + 8);
          *(v11 + 8) = v20;

          v22 = *(v11 + 8);
          objc_opt_class();
          if (!v22 || (objc_opt_isKindOfClass() & 1) != 0)
          {
            v23 = [v8 objectForKeyedSubscript:qword_2A13A53E0];
            v24 = *(v11 + 9);
            *(v11 + 9) = v23;

            v25 = *(v11 + 9);
            objc_opt_class();
            if (!v25 || (objc_opt_isKindOfClass() & 1) != 0)
            {
              v26 = [v8 objectForKeyedSubscript:qword_2A13A53E8];
              v27 = *(v11 + 10);
              *(v11 + 10) = v26;

              v28 = *(v11 + 10);
              objc_opt_class();
              if (!v28 || (objc_opt_isKindOfClass() & 1) != 0)
              {
                v29 = [v8 objectForKeyedSubscript:qword_2A13A53F0];
                v30 = *(v11 + 11);
                *(v11 + 11) = v29;

                v31 = *(v11 + 11);
                objc_opt_class();
                if (!v31 || (objc_opt_isKindOfClass() & 1) != 0)
                {
                  v14 = [v8 objectForKeyedSubscript:qword_2A13A53C8];
                  objc_opt_class();
                  if (!v14 || (objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v19 = 0;
                    v18 = v14;
                    v14 = v12;
                    goto LABEL_82;
                  }

                  *(v11 + 7) = [v14 integerValue];
                  v18 = [v8 objectForKeyedSubscript:qword_2A13A53D0];
                  objc_opt_class();
                  if (v18 && (objc_opt_isKindOfClass() & 1) != 0)
                  {
                    *(v11 + 8) = [v18 integerValue];
                    v17 = [v8 objectForKeyedSubscript:qword_2A13A5430];
                    objc_opt_class();
                    if (v17 && (objc_opt_isKindOfClass() & 1) != 0)
                    {
                      *(v11 + 9) = [v17 unsignedIntegerValue];
                      v87 = [v8 objectForKeyedSubscript:qword_2A13A53F8];
                      objc_opt_class();
                      v32 = v87;
                      if (v87)
                      {
                        isKindOfClass = objc_opt_isKindOfClass();
                        v32 = v87;
                        if (isKindOfClass)
                        {
                          *(v11 + 12) = [v87 integerValue];
                          v34 = [v8 objectForKeyedSubscript:qword_2A13A5400];
                          v35 = *(v11 + 42);
                          *(v11 + 42) = v34;

                          v85 = *(v11 + 42);
                          objc_opt_class();
                          if (!v85 || (v36 = objc_opt_isKindOfClass(), v32 = v87, (v36 & 1) != 0))
                          {
                            v86 = [v8 objectForKeyedSubscript:qword_2A13A5408];
                            objc_opt_class();
                            v37 = v86;
                            if (v86)
                            {
                              v38 = objc_opt_isKindOfClass();
                              v37 = v86;
                              if (v38)
                              {
                                *(v11 + 13) = [v86 unsignedLongLongValue];
                                v39 = [v8 objectForKeyedSubscript:qword_2A13A5410];
                                v40 = *(v11 + 15);
                                *(v11 + 15) = v39;

                                v83 = *(v11 + 15);
                                objc_opt_class();
                                if (!v83 || (v41 = objc_opt_isKindOfClass(), v37 = v86, (v41 & 1) != 0))
                                {
                                  v42 = [v8 objectForKeyedSubscript:qword_2A13A5418];
                                  v43 = *(v11 + 16);
                                  *(v11 + 16) = v42;

                                  v44 = *(v11 + 16);
                                  objc_opt_class();
                                  if (!v44 || (v45 = objc_opt_isKindOfClass(), v37 = v86, (v45 & 1) != 0))
                                  {
                                    v46 = [v8 objectForKeyedSubscript:qword_2A13A5420];
                                    objc_opt_class();
                                    v84 = v46;
                                    if (v46 && (objc_opt_isKindOfClass() & 1) != 0)
                                    {
                                      *(v11 + 14) = [v46 longLongValue];
                                      v47 = [v8 objectForKeyedSubscript:qword_2A13A5428];
                                      objc_opt_class();
                                      v82 = v47;
                                      if (v47)
                                      {
                                        if (objc_opt_isKindOfClass())
                                        {
                                          *(v11 + 16) = objc_msgSend_BOOLValue(v47);
                                          v48 = [v8 objectForKeyedSubscript:qword_2A13A5438];
                                          v49 = *(v11 + 7);
                                          *(v11 + 7) = v48;

                                          v50 = *(v11 + 7);
                                          objc_opt_class();
                                          if (!v50 || (objc_opt_isKindOfClass() & 1) != 0)
                                          {
                                            v51 = [v8 objectForKeyedSubscript:qword_2A13A5440];
                                            v52 = *(v11 + 40);
                                            *(v11 + 40) = v51;

                                            v53 = *(v11 + 40);
                                            objc_opt_class();
                                            if (!v53 || (objc_opt_isKindOfClass() & 1) != 0)
                                            {
                                              v54 = [v8 objectForKeyedSubscript:qword_2A13A5450];
                                              v55 = *(v11 + 18);
                                              *(v11 + 18) = v54;

                                              v56 = *(v11 + 18);
                                              objc_opt_class();
                                              if (!v56 || (objc_opt_isKindOfClass() & 1) != 0)
                                              {
                                                v57 = [v8 objectForKeyedSubscript:qword_2A13A5458];
                                                objc_opt_class();
                                                v81 = v57;
                                                if (!v57 || (objc_opt_isKindOfClass() & 1) != 0)
                                                {
                                                  *(v11 + 27) = [v57 unsignedLongLongValue];
                                                  v58 = [v8 objectForKeyedSubscript:qword_2A13A5460];

                                                  objc_opt_class();
                                                  v81 = v58;
                                                  if (!v58 || (objc_opt_isKindOfClass() & 1) != 0)
                                                  {
                                                    *(v11 + 28) = [v58 unsignedLongLongValue];
                                                    v59 = [v8 objectForKeyedSubscript:qword_2A13A5468];

                                                    objc_opt_class();
                                                    v81 = v59;
                                                    if (!v59 || (objc_opt_isKindOfClass() & 1) != 0)
                                                    {
                                                      *(v11 + 29) = [v59 unsignedLongLongValue];
                                                      v60 = [v8 objectForKeyedSubscript:qword_2A13A5470];

                                                      objc_opt_class();
                                                      v81 = v60;
                                                      if (!v60 || (objc_opt_isKindOfClass() & 1) != 0)
                                                      {
                                                        *(v11 + 30) = [v60 unsignedLongLongValue];
                                                        v61 = [v8 objectForKeyedSubscript:qword_2A13A5478];

                                                        objc_opt_class();
                                                        v81 = v61;
                                                        if (!v61 || (objc_opt_isKindOfClass() & 1) != 0)
                                                        {
                                                          *(v11 + 31) = [v61 unsignedLongLongValue];
                                                          v62 = [v8 objectForKeyedSubscript:qword_2A13A5480];

                                                          objc_opt_class();
                                                          v81 = v62;
                                                          if (!v62 || (objc_opt_isKindOfClass() & 1) != 0)
                                                          {
                                                            *(v11 + 32) = [v62 unsignedLongLongValue];
                                                            v63 = [v8 objectForKeyedSubscript:qword_2A13A5488];

                                                            objc_opt_class();
                                                            v81 = v63;
                                                            if (!v63 || (objc_opt_isKindOfClass() & 1) != 0)
                                                            {
                                                              *(v11 + 33) = [v63 unsignedLongLongValue];
                                                              v64 = [v8 objectForKeyedSubscript:qword_2A13A5490];

                                                              objc_opt_class();
                                                              v81 = v64;
                                                              if (!v64 || (objc_opt_isKindOfClass() & 1) != 0)
                                                              {
                                                                *(v11 + 34) = [v64 unsignedLongLongValue];
                                                                v65 = [v8 objectForKeyedSubscript:qword_2A13A54A0];

                                                                objc_opt_class();
                                                                v81 = v65;
                                                                if (!v65 || (objc_opt_isKindOfClass() & 1) != 0)
                                                                {
                                                                  *(v11 + 36) = [v65 unsignedLongLongValue];
                                                                  v66 = [v8 objectForKeyedSubscript:qword_2A13A5498];

                                                                  objc_opt_class();
                                                                  v81 = v66;
                                                                  if (!v66 || (objc_opt_isKindOfClass() & 1) != 0)
                                                                  {
                                                                    *(v11 + 35) = [v66 unsignedLongLongValue];
                                                                    v67 = [v8 objectForKeyedSubscript:qword_2A13A54A8];

                                                                    objc_opt_class();
                                                                    v81 = v67;
                                                                    if (!v67 || (objc_opt_isKindOfClass() & 1) != 0)
                                                                    {
                                                                      *(v11 + 37) = [v67 unsignedLongLongValue];
                                                                      v68 = [v8 objectForKeyedSubscript:qword_2A13A54B0];

                                                                      objc_opt_class();
                                                                      v81 = v68;
                                                                      if (!v68 || (objc_opt_isKindOfClass() & 1) != 0)
                                                                      {
                                                                        *(v11 + 38) = [v68 unsignedLongLongValue];
                                                                        v69 = [v8 objectForKeyedSubscript:qword_2A13A54B8];

                                                                        objc_opt_class();
                                                                        v81 = v69;
                                                                        if (!v69 || (objc_opt_isKindOfClass() & 1) != 0)
                                                                        {
                                                                          *(v11 + 39) = [v69 unsignedLongLongValue];
                                                                          v70 = [v8 objectForKeyedSubscript:qword_2A13A54C0];
                                                                          v71 = *(v11 + 19);
                                                                          *(v11 + 19) = v70;

                                                                          v72 = *(v11 + 19);
                                                                          objc_opt_class();
                                                                          if (!v72 || (objc_opt_isKindOfClass() & 1) != 0)
                                                                          {
                                                                            v73 = [v8 objectForKeyedSubscript:qword_2A13A54C8];
                                                                            v74 = *(v11 + 20);
                                                                            *(v11 + 20) = v73;

                                                                            v75 = *(v11 + 20);
                                                                            objc_opt_class();
                                                                            if (!v75 || (objc_opt_isKindOfClass() & 1) != 0)
                                                                            {
                                                                              v76 = [v8 objectForKeyedSubscript:qword_2A13A54D0];
                                                                              v77 = *(v11 + 21);
                                                                              *(v11 + 21) = v76;

                                                                              v78 = *(v11 + 21);
                                                                              objc_opt_class();
                                                                              if (!v78 || (objc_opt_isKindOfClass() & 1) != 0)
                                                                              {
                                                                                objc_storeStrong(v11 + 6, a3);
                                                                                *(v11 + 5) = 0;
                                                                                objc_storeStrong(v11 + 41, a2);

                                                                                goto LABEL_11;
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    v37 = v86;
                                  }
                                }
                              }
                            }

                            v32 = v87;
                          }
                        }
                      }
                    }
                  }

                  v17 = v18;
                  v18 = v14;
                  v14 = v12;
LABEL_10:
                  v12 = v11;
                  v11 = 0;
LABEL_11:
                  v19 = v11;

                  v11 = v12;
LABEL_82:

                  goto LABEL_83;
                }
              }
            }
          }

          v14 = 0;
LABEL_81:
          v19 = 0;
          v18 = v12;
          goto LABEL_82;
        }

        [MEMORY[0x29EDBA0F8] stringWithFormat:@"Diagnostic metadata version %@ is newer than the MRE log version %d", v12, 1];
      }

      else
      {
        [MEMORY[0x29EDBA0F8] stringWithFormat:@"Invalid metadata version %@. Expected non-nil number", v12, v80];
      }
      v13 = ;
      v14 = v13;
      if (a4)
      {
        v15 = MEMORY[0x29EDB9FA0];
        v16 = MREErrorDomain;
        v89 = *MEMORY[0x29EDB9ED8];
        v90[0] = v13;
        v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v90 forKeys:&v89 count:1];
        *a4 = [v15 errorWithDomain:v16 code:18 userInfo:v17];
        v18 = v12;
        goto LABEL_10;
      }

      goto LABEL_81;
    }
  }

  v19 = 0;
LABEL_83:

  return v19;
}

unint64_t sub_297E2D314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Name = CSRegionGetName();
  if (!strncmp(Name, "__TEXT", 6uLL) || (result = strcmp(Name, "MACH_HEADER"), !result))
  {
    result = CSRegionGetRange();
    v7 = *(*(a1 + 32) + 8);
    if (*(v7 + 24) - 1 >= result)
    {
      *(v7 + 24) = result;
    }

    v8 = v6 + result - 1;
    v9 = *(*(a1 + 40) + 8);
    if (v8 > *(v9 + 24))
    {
      *(v9 + 24) = v8;
    }
  }

  return result;
}

void sub_297E2D3C4()
{
  v14 = *MEMORY[0x29EDCA608];
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = MobileGestalt_copy_hwModelDescriptionForPowerPerf_obj();
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        objc_storeStrong(&qword_2A18A6008, v2);
LABEL_10:

        goto LABEL_11;
      }

      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }

      LOWORD(v12) = 0;
      v5 = MEMORY[0x29EDCA988];
      v6 = "Got an empty hwModel string from MobileGestalt";
      v7 = 2;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_10;
      }

      v4 = *__error();
      v12 = 67109120;
      v13 = v4;
      v5 = MEMORY[0x29EDCA988];
      v6 = "Failed to get hwModel from MobileGestalt: %{darwin.errno}d";
      v7 = 8;
    }

    _os_log_fault_impl(&dword_297E24000, v5, OS_LOG_TYPE_FAULT, v6, &v12, v7);
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
  {
    v3 = *__error();
    v12 = 67109120;
    v13 = v3;
    _os_log_fault_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "Failed to get current device from MobileGestalt: %{darwin.errno}d", &v12, 8u);
  }

LABEL_11:

  if (!qword_2A18A6008)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Looking up kMGQHWModelStr", &v12, 2u);
    }

    v8 = MGGetStringAnswer();
    v9 = qword_2A18A6008;
    qword_2A18A6008 = v8;
  }

  v10 = _CFCopySupplementalVersionDictionary();
  v11 = qword_2A18A6010;
  qword_2A18A6010 = v10;
}

void sub_297E2D5C8()
{
  mach_service = xpc_connection_create_mach_service("com.apple.ReportMemoryException", 0, 2uLL);
  v1 = qword_2A18A6020;
  qword_2A18A6020 = mach_service;

  if (qword_2A18A6020)
  {
    xpc_connection_set_event_handler(qword_2A18A6020, &unk_2A1E8F9B0);
    v2 = qword_2A18A6020;

    xpc_connection_resume(v2);
  }
}

void sub_297E2D63C(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = a2;
  v3 = MEMORY[0x29C27BC30]();
  v4 = v2 != MEMORY[0x29EDCA9B8] && v3 == MEMORY[0x29EDCAA18];
  if (v4 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x29EDCA9C8]);
    v6 = 136315138;
    v7 = string;
    _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Got xpc error message: %s\n", &v6, 0xCu);
  }
}

void ReportMemoryExceptionFromTask(uint64_t a1, char a2, const char *a3, void *a4, void *a5)
{
  v44 = *MEMORY[0x29EDCA608];
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if ((a1 - 1) >= 0xFFFFFFFE)
  {
    if (v10)
    {
      v14 = [MEMORY[0x29EDB9FA0] errorWithDomain:MREErrorDomain code:9 userInfo:0];
      (v11)[2](v11, v14);
    }

    goto LABEL_31;
  }

  object_addr = 0;
  object_type = 0;
  if (mach_port_kernel_object(*MEMORY[0x29EDCA6B0], a1, &object_type, &object_addr))
  {
    v12 = 0;
  }

  else
  {
    v12 = object_type == 2;
  }

  if (!v12)
  {
    if (v11)
    {
      v13 = [MEMORY[0x29EDB9FA0] errorWithDomain:MREErrorDomain code:9 userInfo:0];
      (v11)[2](v11, v13);
LABEL_30:

      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_297E2E008;
  v38 = sub_297E2E018;
  v39 = 0;
  if (a3)
  {
    goto LABEL_13;
  }

  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 3221225472;
  v33[2] = sub_297E2E020;
  v33[3] = &unk_29EE84AA0;
  v33[4] = &v34;
  if ((sub_297E278A4(a1, v33) & 1) == 0)
  {
    x = 0;
    if (pid_for_task(a1, &x))
    {
      goto LABEL_20;
    }

    if ((proc_pidpath(x, buf, 0x400u) - 1) <= 0x3FE)
    {
      v22 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:buf];
      v23 = v35[5];
      v35[5] = v22;
    }
  }

  a3 = [v35[5] UTF8String];
  if (a3)
  {
LABEL_13:
    v15 = strncmp(a3, "/usr/libexec/ReportMemoryException", 0x400uLL) == 0;
    _Block_object_dispose(&v34, 8);

    if (!v15)
    {
      if (SMJobIsEnabled())
      {
        if (qword_2A18A6028 != -1)
        {
          dispatch_once(&qword_2A18A6028, &unk_2A1E8F990);
        }

        v16 = qword_2A18A6020;
        if (v16)
        {
          v17 = v16;
          v24[0] = MEMORY[0x29EDCA5F8];
          v24[1] = 3221225472;
          v24[2] = sub_297E2DC50;
          v24[3] = &unk_29EE84A78;
          v27 = v11;
          v28 = a1;
          v29 = a2;
          v13 = v17;
          v25 = v13;
          v26 = v9;
          v18 = MEMORY[0x29C27B7F0](v24);
          v18[2](v18, 0);

          v19 = v27;
        }

        else
        {
          if (!v11)
          {
            v13 = 0;
            goto LABEL_30;
          }

          v19 = [MEMORY[0x29EDB9FA0] errorWithDomain:MREErrorDomain code:7 userInfo:0];
          (v11)[2](v11, v19);
          v13 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = @"RME is disabled. To re-enable use 'ReportMemoryExceptionTool --enable'";
          _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%@. Aborting.", buf, 0xCu);
        }

        if (!v11)
        {
          goto LABEL_31;
        }

        v20 = MEMORY[0x29EDB9FA0];
        v21 = MREErrorDomain;
        v40 = *MEMORY[0x29EDB9ED8];
        v41 = @"RME is disabled. To re-enable use 'ReportMemoryExceptionTool --enable'";
        v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v19 = [v20 errorWithDomain:v21 code:17 userInfo:v13];
        (v11)[2](v11, v19);
      }

      goto LABEL_30;
    }

    goto LABEL_21;
  }

LABEL_20:
  _Block_object_dispose(&v34, 8);

LABEL_21:
  if (v11)
  {
    v13 = [MEMORY[0x29EDB9FA0] errorWithDomain:MREErrorDomain code:10 userInfo:0];
    (v11)[2](v11, v13);
    goto LABEL_30;
  }

LABEL_31:
}

void sub_297E2DC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_297E2DC50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    if (v5)
    {
      v19 = 0;
      if (MEMORY[0x29C27B4C0](*MEMORY[0x29EDCA6B0], *(a1 + 56), 0, &v19) != 15)
      {
        xpc_dictionary_set_int64(v5, "MessageType", 2);
        xpc_dictionary_set_mach_send();
        xpc_dictionary_set_BOOL(v5, "WithMemgraph", *(a1 + 60));
        v11 = *(a1 + 48);
        if (!v11)
        {
          xpc_connection_send_message(*(a1 + 32), v5);
          goto LABEL_14;
        }

        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        if (v12)
        {
          handler[0] = MEMORY[0x29EDCA5F8];
          handler[1] = 3221225472;
          handler[2] = sub_297E2DEA8;
          handler[3] = &unk_29EE84A50;
          v17 = v11;
          xpc_connection_send_message_with_reply(v13, v5, v12, handler);

          goto LABEL_14;
        }

        v10 = xpc_connection_send_message_with_reply_sync(*(a1 + 32), v5);
        v14 = *(a1 + 48);
        v15 = sub_297E2DF08(v10);
        (*(v14 + 16))(v14, v15);

        goto LABEL_13;
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Timed out on authenticating. Skipping sending corpse to RME for analysis.", buf, 2u);
      }

      v6 = *(a1 + 48);
      if (!v6)
      {
        goto LABEL_14;
      }

      v7 = MEMORY[0x29EDB9FA0];
      v8 = MREErrorDomain;
      v9 = 15;
    }

    else
    {
      v6 = *(a1 + 48);
      if (!v6)
      {
LABEL_14:

        goto LABEL_15;
      }

      v7 = MEMORY[0x29EDB9FA0];
      v8 = MREErrorDomain;
      v9 = 6;
    }

    v10 = [v7 errorWithDomain:v8 code:v9 userInfo:0];
    (*(v6 + 16))(v6, v10);
LABEL_13:

    goto LABEL_14;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

LABEL_15:
}

void sub_297E2DEA8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_297E2DF08(a2);
  (*(v2 + 16))(v2, v3);
}

char *sub_297E2DF08(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && MEMORY[0x29C27BC30](v1) == MEMORY[0x29EDCAA00])
  {
    string = xpc_dictionary_get_string(v2, "ErrorDomain");
    if (string)
    {
      int64 = xpc_dictionary_get_int64(v2, "ErrorCode");
      v6 = MEMORY[0x29EDB9FA0];
      v7 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:string];
      string = [v6 errorWithDomain:v7 code:int64 userInfo:0];
    }
  }

  else
  {
    string = [MEMORY[0x29EDB9FA0] errorWithDomain:MREErrorDomain code:7 userInfo:0];
  }

  return string;
}

uint64_t sub_297E2E008(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_297E2E020(uint64_t a1, _DWORD *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*a2 == 2063)
  {
    __strlcpy_chk();
    v3 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:v6];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void *sub_297E2E0BC(void *a1, mach_port_name_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned int a6)
{
  v18 = *MEMORY[0x29EDCA608];
  v11 = a4;
  if (a1)
  {
    v12 = mach_port_mod_refs(*MEMORY[0x29EDCA6B0], a2, 0, 1);
    if (v12)
    {
      mach_error("initWithCorpse:mach_port_mod_refs", v12);

      a1 = 0;
    }

    else
    {
      *(a1 + 24) = a2;
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      HIDWORD(v16[0]) = a3;
      LODWORD(v16[0]) = a6 & 0x4000 | (16 * ((a6 >> 2) & 1)) & 0xFFFFDF7F | (a6 >> 9) & 1 | (((a6 >> 1) & 1) << 7) & 0xFFFFDFFF | HIWORD(a6) & 0x100 | (((a6 >> 8) & 1) << 13);
      *(a1 + 13) = (a6 & 0x20000) != 0;
      v13 = [a1 initWithBsdInfo:v16];
      a1 = v13;
      if (v13)
      {
        [v13 setName:v11];
        v14 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ [%d] (corpse)", v11, a3];
        [a1 setDisplayString:v14];

        [a1 _setIdleExitStatusFromDirtyFlags:a5];
      }
    }
  }

  return a1;
}

__CFString *sub_297E2E5B4(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = a2 + 64;
  if (*(a2 + 64))
  {
    v4 = 32;
LABEL_5:
    v7 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%.*s", v4, v3];
    goto LABEL_6;
  }

  v6 = *(a2 + 48);
  v5 = a2 + 48;
  if (v6)
  {
    v4 = 16;
    v3 = v5;
    goto LABEL_5;
  }

  v7 = @"Unknown";
LABEL_6:

  return v7;
}

void *sub_297E2E948(void *a1)
{
  *a1 = 0;
  v2 = proc_listallpids(0, 0);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = 4 * (v2 + 20);
  v4 = malloc_type_malloc(4 * (v2 + 20), 0x100004052888210uLL);
  v5 = proc_listallpids(v4, v3);
  if ((v5 & 0x80000000) != 0)
  {
    v14 = v4;
LABEL_15:
    free(v14);
    return 0;
  }

  v6 = v5;
  v7 = malloc_type_malloc(136 * v5, 0x1000040B5CA6940uLL);
  v8 = v7;
  if (!v6)
  {
    free(v4);
    goto LABEL_14;
  }

  v9 = 0;
  v10 = 0;
  v11 = 4 * v6;
  v12 = v7;
  do
  {
    v13 = *&v4[v9];
    if (proc_pidinfo(v13, 3, 0, v12, 136) != 136)
    {
      if (v13)
      {
        goto LABEL_9;
      }

      v12[16] = 0;
      *(v12 + 4) = xmmword_297E40790;
      *(v12 + 5) = unk_297E407A0;
      *(v12 + 6) = xmmword_297E407B0;
      *(v12 + 7) = unk_297E407C0;
      *v12 = xmmword_297E40750;
      *(v12 + 1) = unk_297E40760;
      *(v12 + 2) = xmmword_297E40770;
      *(v12 + 3) = unk_297E40780;
    }

    ++v10;
    v12 += 17;
LABEL_9:
    v9 += 4;
  }

  while (v11 != v9);
  free(v4);
  if (!v10)
  {
LABEL_14:
    v14 = v8;
    goto LABEL_15;
  }

  *a1 = v10;
  return v8;
}

void sub_297E2FDE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v52 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_297E2FECC(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = a2;
  if (a1 && (*(a1 + 184) & 1) == 0)
  {
    v4 = __error();
    strerror_r(*v4, __strerrbuf, 0x100uLL);
    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ - %s", v3, __strerrbuf];
    v6 = *MEMORY[0x29EDCA610];
    v7 = [a1 displayString];
    fprintf(v6, "%s: %s\n", [v7 UTF8String], objc_msgSend(v5, "UTF8String"));

    [*(a1 + 40) addObject:v5];
  }
}

void sub_297E3051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_297E30554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a3;
    v7 = 0;
    v30 = a4;
    v31 = a5 - 1;
    do
    {
      if (v7 | a4 || (*(a1 + 80) & 1) != 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(a1 + 81);
      }

      v9 = 0;
      if (v31 == a4 && v5 == 1)
      {
        v9 = *(a1 + 82);
      }

      v10 = *(a2 + 4 * v7);
      v11 = *(a1 + 64);
      v12 = *(*(a1 + 48) + 8);
      v33 = *(*(a1 + 56) + 8);
      v13 = *(a1 + 32);
      v14 = v13;
      v34 = v9;
      if (v8)
      {
        v15 = [v13 start];
        v16 = [v14 size];
        v11 = v11 - v15 + (v15 & -v11);
      }

      else
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_15;
        }

        v17 = [v13 end];
        v16 = [v14 size];
        v11 = v11 - ((v11 + v17 - 1) & -v11) + v17;
      }

      if (v16 < v11)
      {
        v11 = [v14 size];
      }

LABEL_15:
      v18 = (v10 & 0x81) == 1 || (v10 & 8) != 0;
      if (v18 || (v12 = v33, (v10 & 0x10) != 0))
      {
        *(v12 + 24) += v11;
      }

      if ((v8 & 1) == 0 || !*(*(a1 + 40) + 176))
      {
        goto LABEL_34;
      }

      v19 = [*(a1 + 32) start];
      if (v19 != [*(*(a1 + 40) + 176) end])
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
        return;
      }

      v35 = 0;
      v36 = 0;
      v20 = *(a1 + 64);
      v21 = *(*(a1 + 40) + 176);
      v22 = [v21 end];
      v23 = [v21 size];
      v24 = v20 - ((v20 + v22 - 1) & -v20) + v22;
      if (v23 < v24)
      {
        v24 = [v21 size];
      }

      if (v18)
      {
        v25 = &v36;
LABEL_32:
        *v25 = v24;
        v26 = v35;
        v27 = v36;
        goto LABEL_33;
      }

      if ((v10 & 0x10) != 0)
      {
        v25 = &v35;
        goto LABEL_32;
      }

      v26 = 0;
      v27 = 0;
LABEL_33:

      [*(*(a1 + 40) + 176) setDirtySize:{objc_msgSend(*(*(a1 + 40) + 176), "dirtySize") + v27}];
      [*(*(a1 + 40) + 176) setSwappedSize:{objc_msgSend(*(*(a1 + 40) + 176), "swappedSize") + v26}];
      v28 = *(a1 + 40);
      v29 = *(v28 + 176);
      *(v28 + 176) = 0;

LABEL_34:
      if (v34)
      {
        *(*(a1 + 40) + 160) = *(a1 + 72) - *(a1 + 64);
        *(*(a1 + 40) + 168) = v10;
      }

      ++v7;
      --v5;
      a4 = v30;
    }

    while (v5);
  }
}

uint64_t sub_297E30808(uint64_t a1, mach_vm_offset_t a2, unint64_t a3, void *a4)
{
  dispositions_count[1] = *MEMORY[0x29EDCA608];
  v7 = a4;
  if (a1)
  {
    v8 = [a1 pageSize];
    if (a3 >= 0x1000)
    {
      v9 = 4096;
    }

    else
    {
      v9 = a3;
    }

    if (a3 + 4095 >= 0x1000)
    {
      v10 = v8;
      v11 = 0;
      v12 = (a3 + 4095) >> 12;
      v20[0] = v20;
      v20[1] = v7 + 16;
      v13 = v8 << 12;
      while (1)
      {
        v14 = a3 >= v9 ? v9 : a3;
        dispositions_count[0] = v14;
        v15 = a1;
        v16 = *(a1 + 96);
        v17 = v10;
        v18 = mach_vm_page_range_query(v16, a2, v14 * v10, v20 - ((4 * v9 + 15) & 0xFFF0), dispositions_count);
        if (v18)
        {
          break;
        }

        (*(v7 + 2))(v7, v20 - ((4 * v9 + 15) & 0xFFF0), dispositions_count[0], v11++, v12);
        a2 += v13;
        a3 -= 4096;
        v10 = v17;
        a1 = v15;
        if (v12 == v11)
        {
          a1 = 1;
          goto LABEL_15;
        }
      }

      sub_297E30E28(v15, v18, @"mach_vm_page_range_query");
      a1 = 0;
    }

    else
    {
      a1 = 1;
    }
  }

LABEL_15:

  return a1;
}

void sub_297E30E28(_BYTE *a1, mach_error_t a2, void *a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if (a1 && (a1[184] & 1) == 0)
  {
    a1[184] = 1;
    v6 = "";
    if ([a1 _isAlive])
    {
      memset(buffer, 0, sizeof(buffer));
      if (proc_pidinfo([a1 pid], 13, 1uLL, buffer, 64) == 64)
      {
        v7 = 0;
      }

      else
      {
        v7 = *__error();
      }

      v10 = v7 == 0;
      v11 = HIDWORD(buffer[0]) == 5;
      v8 = v10 && v11;
      v12 = !v10 || !v11;
      v13 = " (zombie)";
      if (v12)
      {
        v13 = "";
      }

      v9 = v7 == 3;
      if (v7 == 3)
      {
        v6 = " (process exited)";
      }

      else
      {
        v6 = v13;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v14 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ - %s%s", v5, mach_error_string(a2), v6];
    v15 = &OBJC_IVAR___FPProcess__warnings;
    if (!v8 && !v9)
    {
      v16 = *MEMORY[0x29EDCA610];
      v17 = [a1 displayString];
      fprintf(v16, "%s: bailing out due to error: %s\n", [v17 UTF8String], objc_msgSend(v14, "UTF8String"));

      v15 = &OBJC_IVAR___FPProcess__errors;
    }

    [*&a1[*v15] addObject:v14];
  }
}

void sub_297E311A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *sub_297E311C8(void *result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 - 1 == a4)
  {
    v5 = a3 + 1;
  }

  else
  {
    v5 = a3;
  }

  if (v5)
  {
    v8 = result;
    for (i = 0; v5 != i; ++i)
    {
      if (i >= a3)
      {
        v11 = 0;
      }

      else
      {
        v10 = *(a2 + 4 * i);
        if ((v10 & 0x10) != 0)
        {
          v11 = 2;
        }

        else if ((*(v8 + 16) & v10) != 0)
        {
          v11 = 1;
        }

        else
        {
          v17 = (*(v8 + 17) & v10) == 0;
          v12 = 4 * (v10 & 1);
          if (v17)
          {
            v11 = v12;
          }

          else
          {
            v11 = 3;
          }
        }
      }

      v13 = *(v8 + 5);
      v14 = *(v13 + 8);
      v15 = *(v14 + 24);
      if (v15 != v11)
      {
        v16 = *(v8 + 6);
        v17 = !v15 || *(*(v16 + 8) + 40) == 0;
        if (!v17)
        {
          v23 = 0u;
          v24 = 0u;
          v22 = 0u;
          v18 = *(*(v13 + 8) + 24);
          if (v18 > 2)
          {
            if (v18 == 3)
            {
              *(&v23 + 1) = *(*(v16 + 8) + 40);
            }

            else if (v18 == 4)
            {
              *&v23 = *(*(v16 + 8) + 40);
            }
          }

          else
          {
            switch(v18)
            {
              case 1:
                *&v22 = *(*(v16 + 8) + 40);
                break;
              case 2:
                *(&v22 + 1) = *(*(v16 + 8) + 40);
                break;
              case 0:
                result = _os_crash();
                __break(1u);
                return result;
            }
          }

          v19 = *(v16 + 8);
          if (*(v8 + 72) == 1)
          {
            *&v24 = *(v19 + 40);
            v19 = *(v16 + 8);
          }

          result = [*(v8 + 4) addSubrange:*(v19 + 32) memoryTotal:{*(v19 + 40), &v22}];
          v20 = *(*(v8 + 6) + 8);
          *(v20 + 32) += *(v20 + 40);
          *(v20 + 40) = 0;
          v14 = *(*(v8 + 5) + 8);
        }
      }

      *(v14 + 24) = v11;
      if (*(*(*(v8 + 5) + 8) + 24))
      {
        v21 = 40;
      }

      else
      {
        v21 = 32;
      }

      *(*(*(v8 + 6) + 8) + v21) += *(v8 + 7);
    }
  }

  return result;
}

uint64_t sub_297E313BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_297E313D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6, void *a7, int a8)
{
  v15 = a6;
  v16 = a7;
  v17 = *(a1 + 80);
  v18 = &a2[a3];
  if (v17 >= &a2[a3] || *(a1 + 88) + v17 <= a2)
  {
    v78 = v15;
    v20 = objc_alloc_init(FPMemoryRegion);
    [(FPMemoryRegion *)v20 setStart:a2];
    [(FPMemoryRegion *)v20 setSize:a3];
    [(FPMemoryRegion *)v20 setUser_tag:*(a4 + 20)];
    [(FPMemoryRegion *)v20 setObject_id:*(a4 + 68)];
    [(FPMemoryRegion *)v20 setShare_mode:*(a4 + 47)];
    [(FPMemoryRegion *)v20 setOffset:*(a4 + 12)];
    [(FPMemoryRegion *)v20 setInSharedCache:0];
    [(FPMemoryRegion *)v20 setWired:*(a4 + 60) != 0];
    if (a5 == 2)
    {
      [(FPMemoryRegion *)v20 setDirtySize:0];
      v23 = v20;
      v22 = a3;
    }

    else
    {
      if (a5 != 1)
      {
        if (*(a4 + 46) || (*(a1 + 97) & 1) != 0)
        {
          v51 = *(a4 + 36);
        }

        else
        {
          v51 = *(a4 + 24) - *(a4 + 64);
        }

        -[FPMemoryRegion setDirtySize:](v20, "setDirtySize:", [*(a1 + 32) pageSize] * v51);
        -[FPMemoryRegion setReclaimableSize:](v20, "setReclaimableSize:", [*(a1 + 32) pageSize] * *(a4 + 64));
        -[FPMemoryRegion setSwappedSize:](v20, "setSwappedSize:", [*(a1 + 32) pageSize] * *(a4 + 32));
        v52 = *(a4 + 24);
        v53 = *(a4 + 64) + v51;
        if (*(a1 + 97) == 1 && v52 < v53)
        {
          v54 = 0;
        }

        else
        {
          v54 = [*(a1 + 32) pageSize] * (v52 - v53);
        }

        [(FPMemoryRegion *)v20 setCleanSize:v54];
        if (*(a4 + 20) == -1)
        {
          if (*(*(a1 + 32) + 152))
          {
LABEL_118:

            v24 = 0;
LABEL_119:
            v15 = v78;
            goto LABEL_120;
          }

          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v20);
          if (!*(a4 + 68))
          {
            [(FPMemoryRegion *)v20 setObject_id:*(a4 + 56)];
          }
        }

LABEL_68:
        v55 = sub_297E3B318(*(a1 + 48), a2, &a2[a3]);
        [(FPMemoryRegion *)v20 setSegment:1];
        if (a8)
        {
          [(FPMemoryRegion *)v20 setVerbose:1];
        }

        if (v55)
        {
          v56 = *(v55 + 32);
          [(FPMemoryRegion *)v20 setName:v56];

          v57 = *(v55 + 40);
          [(FPMemoryRegion *)v20 setDetailedName:v57];

          [(FPMemoryRegion *)v20 setSegment:*(v55 + 8)];
          goto LABEL_110;
        }

        if (v16)
        {
          [(FPMemoryRegion *)v20 setName:v16];
          goto LABEL_110;
        }

        if ((v78 || *(a4 + 46)) && *(a4 + 20) != 88)
        {
          [(FPMemoryRegion *)v20 setName:@"mapped file"];
          [(FPMemoryRegion *)v20 setDetailedName:v78];
          goto LABEL_110;
        }

        if (a2 == 0xFC0000000 && a3 == 0x40000000)
        {
          v58 = @"commpage (reserved)";
LABEL_90:
          [(FPMemoryRegion *)v20 setName:v58];
          [(FPMemoryRegion *)v20 setVerbose:1];
          goto LABEL_110;
        }

        if (a2 == 0x1000000000 && a3 == 0x6000000000)
        {
          v58 = @"GPU Carveout (reserved)";
          goto LABEL_90;
        }

        v59 = [FPMemoryRegion categoryNameForTag:*(a4 + 20)];
        [(FPMemoryRegion *)v20 setName:v59];

        if (*(a1 + 98) == 1)
        {
          v60 = *(a4 + 20);
          if (v60 == 100 || v60 == 88)
          {
            if (v78)
            {
              [(FPMemoryRegion *)v20 setExtendedInfo:v78];
            }

            else if (v60 != 100 || *(a1 + 99) == 1)
            {
              v61 = [*(a1 + 32) extendedInfoForRegionType:? at:? extendedInfoProvider:?];
              [(FPMemoryRegion *)v20 setExtendedInfo:v61];
            }
          }
        }

        if (*(a1 + 100) != 1)
        {
          goto LABEL_110;
        }

        v62 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*(a4 + 68)];
        v63 = [*(*(a1 + 32) + 152) objectForKeyedSubscript:v62];
        v64 = *(*(a1 + 32) + 152);
        if (v63)
        {
          v81 = v62;
          [v64 removeObjectForKey:v62];
          [(FPMemoryRegion *)v20 setOwnedExclusivelyByParentProcess:1];
          v87 = 0;
          v88 = 0;
          v85 = 0;
          v86 = 0;
          v84 = 0;
          memset(v83, 0, sizeof(v83));
          [v63 getBytes:v83 length:56];
          sub_297E31EE4(v83, &v88, &v87, &v86, &v85);
          v65 = [FPMemoryRegion vmLedgerNameForTag:(v84 >> 1) & 7];
          if (v65)
          {
            v66 = objc_alloc(MEMORY[0x29EDBA0F8]);
            v67 = [(FPMemoryRegion *)v20 name];
            v68 = [v66 initWithFormat:@"%@ (%@)", v67, v65];
            [(FPMemoryRegion *)v20 setName:v68];
          }

          v69 = v87;
          v70 = v88;
          v71 = v85;
          v72 = v86;
        }

        else
        {
          if (v64 || a5 == 3 || *(a4 + 20) == 87 || !*(a4 + 24))
          {
            goto LABEL_109;
          }

          v81 = v62;
          [0 removeObjectForKey:v62];
          [(FPMemoryRegion *)v20 setOwnedExclusivelyByParentProcess:1];
          v74 = [(FPMemoryRegion *)v20 dirtySize];
          v70 = [(FPMemoryRegion *)v20 cleanSize]+ v74;
          v69 = [(FPMemoryRegion *)v20 swappedSize];
          v71 = 0;
          v72 = 0;
        }

        *(*(*(a1 + 72) + 8) + 24) += v70 + v69;
        [(FPMemoryRegion *)v20 setDirtySize:v70];
        [(FPMemoryRegion *)v20 setCleanSize:v72];
        [(FPMemoryRegion *)v20 setSwappedSize:v69];
        [(FPMemoryRegion *)v20 setReclaimableSize:v71];
        v62 = v81;
LABEL_109:

LABEL_110:
        if (*(a1 + 97) == 1 && (*(a1 + 101) & 1) == 0 && (*(a1 + 96) & 1) == 0 && -[FPMemoryRegion eligibleForSubrangesUsingPageSize:](v20, "eligibleForSubrangesUsingPageSize:", [*(a1 + 32) pageSize]))
        {
          [*(a1 + 32) _addSubrangesForRegion:v20 purgeState:a5];
        }

        if (v20 != *(*(*(a1 + 64) + 8) + 40))
        {
          [*(a1 + 40) addObject:v20];
        }

        goto LABEL_118;
      }

      [(FPMemoryRegion *)v20 setDirtySize:0];
      v21 = *(a4 + 24);
      v22 = [*(a1 + 32) pageSize] * v21;
      v23 = v20;
    }

    [(FPMemoryRegion *)v23 setReclaimableSize:v22];
    [(FPMemoryRegion *)v20 setSwappedSize:0];
    [(FPMemoryRegion *)v20 setCleanSize:0];
    goto LABEL_68;
  }

  if (*(a1 + 96))
  {
    v24 = 0;
    goto LABEL_120;
  }

  v78 = v15;
  v25 = *(a1 + 32);
  v26 = *(a1 + 48);
  v82 = *(a1 + 40);
  v27 = v26;
  v28 = v27;
  if (!v25)
  {

    v24 = 1;
    goto LABEL_119;
  }

  v77 = v16;
  v29 = [*(v25 + 24) alignment];
  v30 = [v25 pageSize];
  v31 = 0;
  v32 = *(v25 + 176);
  *(v25 + 176) = 0;

  v80 = v28;
  v33 = sub_297E3B318(v28, a2, v18);
  if (v18 <= a2)
  {
LABEL_84:

    v24 = 0;
    goto LABEL_85;
  }

  v34 = 0;
  v79 = v29 - 1;
  v75 = -v29;
  v76 = v30 - 1;
  v35 = a2;
  while (1)
  {
    v36 = v33;
    if (v33 && v35 >= v33->_dirtySize)
    {
      goto LABEL_39;
    }

    v33 = objc_alloc_init(FPMemoryRegion);
    [(FPMemoryRegion *)v33 setStart:v35];
    dirtySize = v18;
    if (v36)
    {
      if (v36->_dirtySize >= v18)
      {
        dirtySize = v18;
      }

      else
      {
        dirtySize = v36->_dirtySize;
      }
    }

    [(FPMemoryRegion *)v33 setEnd:dirtySize];
    [(FPMemoryRegion *)v33 setUser_tag:*(a4 + 20)];
    [(FPMemoryRegion *)v33 setObject_id:*(a4 + 68)];
    [(FPMemoryRegion *)v33 setShare_mode:*(a4 + 47)];
    [(FPMemoryRegion *)v33 setOffset:*(a4 + 12) - a2 + [(FPMemoryRegion *)v33 start]];
    [(FPMemoryRegion *)v33 setInSharedCache:1];
    [(FPMemoryRegion *)v33 setName:@"unused dyld shared cache area"];
    [(FPMemoryRegion *)v33 setUnusedSharedCacheRegion:1];
    [(FPMemoryRegion *)v33 setWired:*(a4 + 60) != 0];
    if (v34)
    {
      v38 = v34[8];
      if (v38 == 2)
      {
        if (!v36)
        {
          [(FPMemoryRegion *)v33 setSegment:2];
          goto LABEL_37;
        }
      }

      else if (!v36 || v38 != 4)
      {
        goto LABEL_33;
      }
    }

    else if (!v36)
    {
      [(FPMemoryRegion *)v33 setSegment:0];
LABEL_35:
      if (((-[FPMemoryRegion end](v33, "end") | v35) & v76) != 0 && ![v25 _populateMemoryRegionWithPageQueries:v33 regionInfo:a4])
      {
        goto LABEL_92;
      }

      goto LABEL_37;
    }

    v38 = *(v36 + 8);
    if (v38 == 4 || v38 == 2)
    {
      if (v34)
      {
        v39 = v34;
      }

      else
      {
        v39 = v36;
      }

      v38 = v39[8];
    }

LABEL_33:
    [(FPMemoryRegion *)v33 setSegment:v38];
    if (v38 != 2 && v38 != 4)
    {
      goto LABEL_35;
    }

LABEL_37:
    [v82 addObject:v33];
    v35 = [(FPMemoryRegion *)v33 end];

    if (!v36 || v35 >= v18)
    {
      v33 = v36;
      v31 = v34;
      goto LABEL_84;
    }

LABEL_39:
    v40 = objc_alloc_init(FPMemoryRegion);
    v41 = v40;
    if (v36->_dirtySize <= v35)
    {
      v42 = v35;
    }

    else
    {
      v42 = v36->_dirtySize;
    }

    [(FPMemoryRegion *)v40 setStart:v42];
    swappedSize = v36->_swappedSize;
    if (swappedSize + v36->_dirtySize >= v18)
    {
      v44 = v18;
    }

    else
    {
      v44 = (swappedSize + v36->_dirtySize);
    }

    [(FPMemoryRegion *)v41 setEnd:v44];
    v33 = sub_297E3B318(v80, [(FPMemoryRegion *)v41 end], v18);
    if (v36 != v33)
    {
      v45 = [(FPMemoryRegion *)v41 start];
      v46 = v33 ? v33->_dirtySize : 0;
      if (((v46 | v45) & v79) == 0)
      {
        [(FPMemoryRegion *)v41 setEnd:([(FPMemoryRegion *)v41 end]+ v79) & v75];
      }
    }

    [(FPMemoryRegion *)v41 setUser_tag:*(a4 + 20)];
    [(FPMemoryRegion *)v41 setObject_id:*(a4 + 68)];
    [(FPMemoryRegion *)v41 setShare_mode:*(a4 + 47)];
    [(FPMemoryRegion *)v41 setOffset:*(a4 + 12) - a2 + [(FPMemoryRegion *)v41 start]];
    [(FPMemoryRegion *)v41 setInSharedCache:1];
    v47 = v36->_cleanSize;
    [(FPMemoryRegion *)v41 setName:v47];

    v48 = v36->_reclaimableSize;
    [(FPMemoryRegion *)v41 setDetailedName:v48];

    v49 = *(v36 + 8);
    [(FPMemoryRegion *)v41 setSegment:*(v36 + 8)];
    [(FPMemoryRegion *)v41 setWired:*(a4 + 60) != 0];
    if (v49 == 2 || v49 == 4)
    {
      v50 = *(v25 + 176);
      if (v50)
      {
        *(v25 + 176) = 0;
      }

      goto LABEL_55;
    }

    if (([v25 _populateMemoryRegionWithPageQueries:v41 regionInfo:a4] & 1) == 0)
    {
      break;
    }

LABEL_55:
    [v82 addObject:v41];
    v35 = [(FPMemoryRegion *)v41 end];
    v31 = v36;

    v34 = v31;
    if (v35 >= v18)
    {
      goto LABEL_84;
    }
  }

LABEL_92:
  v24 = 1;
LABEL_85:
  v16 = v77;
  v15 = v78;
LABEL_120:

  return v24;
}

uint64_t sub_297E31EE4(uint64_t result, void *a2, void *a3, void *a4, void *a5)
{
  v8 = *(result + 48);
  if (v8)
  {
    v14 = *(result + 48);
    v12 = *(result + 16);
    v13[0] = *result;
    v13[1] = v12;
    v13[2] = *(result + 32);
    LOBYTE(v14) = v14 & 0xFE;
    result = sub_297E31EE4(v13, a2, a3, a4, a5);
    *a4 = *a3 + *a2;
    *a2 = 0;
    *a3 = 0;
  }

  else
  {
    if (*(result + 8) && ((v9 = (v8 >> 4) & 3, v9 != 3) ? (v10 = v9 == 0) : (v10 = 1), v10))
    {
      v11 = 0;
      *a2 = *(result + 16);
      *a3 = *(result + 40);
    }

    else
    {
      *a2 = *(result + 24);
      *a3 = 0;
      v11 = *(result + 16) - *(result + 24);
    }

    *a5 = v11;
    *a4 = 0;
  }

  return result;
}

void sub_297E324B8(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_297E313BC;
  v7[4] = sub_297E313CC;
  v8 = 0;
  if ((dyld_image_for_each_segment_info() & 1) == 0 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Unable to iterate over image segments"];
    v5 = *MEMORY[0x29EDCA610];
    v6 = [*(a1 + 32) displayString];
    fprintf(v5, "%s: %s\n", [v6 UTF8String], objc_msgSend(v4, "UTF8String"));

    [*(*(a1 + 32) + 40) addObject:v4];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  _Block_object_dispose(v7, 8);

  objc_autoreleasePoolPop(v3);
}

void sub_297E32650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_297E3266C(void *a1, char *__s, unint64_t a3, unint64_t a4)
{
  v52 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v6 = strlen(__s);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      explicit = atomic_load_explicit((&unk_2A18AA0F8 + v7), memory_order_acquire);
      v11 = explicit;

      if (explicit)
      {
        v8 = v11;
      }

      else
      {
        if (!v9)
        {
          v9 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:__s length:v6 encoding:4];
        }

        v8 = 0;
        atomic_compare_exchange_strong((&unk_2A18AA0F8 + v7), &v8, v9);
        if (!v8)
        {
          v14 = v15 = v9;
          v8 = v9;
          goto LABEL_18;
        }

        v12 = v8;
      }

      if ([(__CFString *)v8 length]== v6)
      {
        v13 = v51;
        if (([(__CFString *)v8 getCString:v51 maxLength:32 encoding:4]& 1) == 0)
        {
          v13 = [(__CFString *)v8 UTF8String];
        }

        if (!strncmp(v13, __s, v6))
        {
          v8 = v8;

          v9 = v8;
          goto LABEL_19;
        }
      }

      v7 += 8;
    }

    while (v7 != 128);
    if (v9)
    {
      goto LABEL_19;
    }

    v14 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:__s length:v6 encoding:4];
LABEL_18:
    v9 = v14;
LABEL_19:
    v16 = a3;

    v17 = [*(a1[4] + 24) containsAddress:a3];
    if (v17 && [(__CFString *)v9 isEqualToString:@"__LINKEDIT"])
    {
      v18 = *(*(a1[5] + 8) + 40);
      v19 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:a3];
      LOBYTE(v18) = [v18 containsObject:v19];

      if (v18)
      {
LABEL_55:

        return;
      }

      v20 = *(*(a1[5] + 8) + 40);
      v21 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:a3];
      [v20 addObject:v21];

      v22 = @"dyld shared cache";
    }

    else
    {
      v23 = *(*(a1[6] + 8) + 40);
      if (!v23)
      {
        file_path = dyld_image_get_file_path();
        if (file_path || (file_path = dyld_image_get_installname()) != 0)
        {
          v25 = file_path;
          if (v17)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = ((a3 >> 16) ^ (a3 >> 8) ^ (a3 >> 24) ^ a3) % 0x7FF;
            do
            {
              v30 = atomic_load_explicit(&qword_2A18A6100[v29], memory_order_acquire);
              v31 = v30;

              if (v30)
              {
                v26 = v31;
              }

              else
              {
                if (!v28)
                {
                  v28 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:v25];
                }

                v26 = 0;
                atomic_compare_exchange_strong(&qword_2A18A6100[v29], &v26, v28);
                if (!v26)
                {
                  v36 = v42 = v28;
                  v26 = v28;
                  goto LABEL_45;
                }

                v32 = v26;
              }

              v33 = v51;
              if (([v26 getCString:v51 maxLength:1025 encoding:4] & 1) == 0)
              {
                v33 = [v26 UTF8String];
              }

              if (!strcmp(v33, v25))
              {
                v26 = v26;

                v28 = v26;
                goto LABEL_46;
              }

              v34 = ((v29 + 1) * 0x20040080100201uLL) >> 64;
              v29 = v29 + 1 - 2047 * ((v34 + ((v29 + 1 - v34) >> 1)) >> 10);
            }

            while (v27++ < 0x11);
            if (v28)
            {
              goto LABEL_46;
            }

            v36 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:v25];
LABEL_45:
            v28 = v36;
LABEL_46:
            v16 = a3;

            v43 = *(a1[6] + 8);
            v37 = *(v43 + 40);
            *(v43 + 40) = v28;
          }

          else
          {
            v37 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:file_path];
            v38 = [v37 stringByResolvingSymlinksInPath];
            v39 = *(a1[6] + 8);
            v40 = *(v39 + 40);
            *(v39 + 40) = v38;
          }
        }

        else
        {
          v41 = *(a1[6] + 8);
          v37 = *(v41 + 40);
          *(v41 + 40) = @"unknown dylib";
        }

        v23 = *(*(a1[6] + 8) + 40);
      }

      v22 = v23;
    }

    v44 = objc_alloc_init(FPImage);
    v45 = v44;
    if (v44)
    {
      v44->_start = v16;
      v44->_size = a4;
      if (v9)
      {
        v46 = v9;
      }

      else
      {
        v46 = @"unknown";
      }

      sub_297E3B18C(v44, v46);
      objc_setProperty_nonatomic_copy(v45, v47, v22, 40);
    }

    else
    {
      if (v9)
      {
        v48 = v9;
      }

      else
      {
        v48 = @"unknown";
      }

      sub_297E3B18C(0, v48);
    }

    [*(a1[4] + 144) addObject:v45];

    goto LABEL_55;
  }
}

uint64_t sub_297E32B5C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = v4[2];
    if (v5)
    {
LABEL_3:
      v7 = v5[2];
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_4:
  if (v6 >= v7)
  {
    if (v4)
    {
      v9 = v4[2];
      if (v5)
      {
LABEL_8:
        v10 = v5[2];
LABEL_9:
        v8 = v9 > v10;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v10 = 0;
    goto LABEL_9;
  }

  v8 = -1;
LABEL_10:

  return v8;
}

uint64_t sub_297E32DE4(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x29EDBA070] numberWithLongLong:a2];
  v3 = [v2 stringValue];
  v4 = [v3 UTF8String];

  return v4;
}

const char *sub_297E32E44(uint64_t a1, int a2)
{
  v2 = "-";
  v3 = "N";
  if (a2 == 3)
  {
    v3 = "Y";
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void sub_297E3398C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (!v5)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
      return;
    }

    sub_297E33A08(a1, v7, v5);
  }
}

void sub_297E33A08(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (a1)
  {
    if (*(a1 + 8))
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
      return;
    }

    [*(a1 + 16) addObject:v13];
    v6 = [v13 object_id];
    if (v5 && v6 && !+[FPFootprint isSharingAnalysisDisabled](FPFootprint, "isSharingAnalysisDisabled") && (*(a1 + 64) || [v13 eligibleForProcessView]))
    {
      v7 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v5, "pid")}];
      v8 = *(a1 + 64);
      if (!v8)
      {
        v9 = objc_alloc_init(MEMORY[0x29EDB8E00]);
        v10 = *(a1 + 64);
        *(a1 + 64) = v9;

        v8 = *(a1 + 64);
      }

      v11 = [v8 objectForKeyedSubscript:v7];
      if (!v11)
      {
        v12 = *(a1 + 64);
        v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
        [v12 setObject:v11 forKeyedSubscript:v7];
      }

      [v11 addObject:v13];
    }
  }
}

void sub_297E33BFC(uint64_t a1, int a2)
{
  v86 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    return;
  }

  if (*(a1 + 8))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if ([*(a1 + 16) count] < 2)
  {
    v3 = [*(a1 + 16) firstObject];
    if ([(FPRangeList *)v3 object_id])
    {
      v12 = [(FPRangeList *)v3 cleanSize];
      v10 = [(FPRangeList *)v3 dirtySize];
      v13 = [(FPRangeList *)v3 reclaimableSize];
      v11 = [(FPRangeList *)v3 swappedSize];
      v51 = [(FPRangeList *)v3 wiredSize];
    }

    else
    {
      v51 = 0;
      v13 = 0;
      v12 = 0;
      v11 = 0;
      v10 = 0;
    }
  }

  else
  {
    v3 = objc_alloc_init(FPRangeList);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v4 = *(a1 + 16);
    v5 = [v4 countByEnumeratingWithState:&v76 objects:v85 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v77;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v77 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v76 + 1) + 8 * i);
          if ([v9 object_id])
          {
            sub_297E25D78(v3, v9);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v76 objects:v85 count:16];
      }

      while (v6);
    }

    sub_297E25E80(v3, v75);
    v10 = v75[0];
    v11 = v75[1];
    v12 = v75[2];
    v13 = v75[3];
    v51 = v75[4];
  }

  if (a2)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v14 = *(a1 + 16);
    v15 = [v14 countByEnumeratingWithState:&v71 objects:v84 count:16];
    if (!v15)
    {

      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      *(a1 + 56) = v51;
      goto LABEL_67;
    }

    v16 = v15;
    v49 = v13;
    v50 = v12;
    v17 = *v72;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v72 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v71 + 1) + 8 * j);
        *(a1 + 24) += [v19 dirtySize];
        *(a1 + 32) += [v19 swappedSize];
      }

      v16 = [v14 countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v16);
    goto LABEL_47;
  }

  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  if (*(a1 + 64) && +[FPFootprint breakDownPhysFootprint])
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v14 = [*(a1 + 64) objectEnumerator];
    v54 = [v14 countByEnumeratingWithState:&v67 objects:v83 count:16];
    if (v54)
    {
      v49 = v13;
      v50 = v12;
      v53 = *v68;
      do
      {
        for (k = 0; k != v54; ++k)
        {
          if (*v68 != v53)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v67 + 1) + 8 * k);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v22 = v21;
          v23 = [v22 countByEnumeratingWithState:&v63 objects:v82 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = 0;
            v26 = 0;
            v27 = *v64;
            do
            {
              for (m = 0; m != v24; ++m)
              {
                if (*v64 != v27)
                {
                  objc_enumerationMutation(v22);
                }

                v29 = *(*(&v63 + 1) + 8 * m);
                v25 += [v29 dirtySize];
                v26 += [v29 swappedSize];
              }

              v24 = [v22 countByEnumeratingWithState:&v63 objects:v82 count:16];
            }

            while (v24);

            if (v25 > *(a1 + 24))
            {
              *(a1 + 24) = v25;
            }

            if (v26 > *(a1 + 32))
            {
              *(a1 + 32) = v26;
            }
          }

          else
          {
          }
        }

        v54 = [v14 countByEnumeratingWithState:&v67 objects:v83 count:16];
      }

      while (v54);
LABEL_47:

      *(a1 + 40) = v50;
      v30 = (a1 + 40);
      *(a1 + 48) = v49;
      v31 = (a1 + 48);
      *(a1 + 56) = v51;
      v32 = (a1 + 56);
      if (a2)
      {
        goto LABEL_67;
      }

      goto LABEL_52;
    }
  }

  *(a1 + 40) = v12;
  v30 = (a1 + 40);
  *(a1 + 48) = v13;
  v31 = (a1 + 48);
  *(a1 + 56) = v51;
  v32 = (a1 + 56);
LABEL_52:
  if ([*(a1 + 64) count] >= 2)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v33 = [*(a1 + 64) objectEnumerator];
    v34 = [v33 countByEnumeratingWithState:&v59 objects:v81 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v60;
LABEL_55:
      v37 = 0;
      while (1)
      {
        if (*v60 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v59 + 1) + 8 * v37);
        if ([v38 count] > 1)
        {
          goto LABEL_68;
        }

        v39 = [v38 firstObject];
        if ([v39 dirtySize] != *(a1 + 24) || objc_msgSend(v39, "swappedSize") != *(a1 + 32) || objc_msgSend(v39, "cleanSize") != *v30 || objc_msgSend(v39, "reclaimableSize") != *v31 || objc_msgSend(v39, "wiredSize") != *v32)
        {

          goto LABEL_68;
        }

        if (v35 == ++v37)
        {
          v35 = [v33 countByEnumeratingWithState:&v59 objects:v81 count:16];
          if (v35)
          {
            goto LABEL_55;
          }

          break;
        }
      }
    }

    *(a1 + 8) |= 2u;
  }

LABEL_67:
  v33 = *(a1 + 64);
  *(a1 + 64) = 0;
LABEL_68:

  if ((a2 & 1) == 0 && [a1 containsFakeRegion])
  {
    v40 = sub_297E342D0(a1);
    if (([v40 isFake] & 1) == 0)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v41 = *(a1 + 16);
      v42 = [v41 countByEnumeratingWithState:&v55 objects:v80 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v56;
        do
        {
          for (n = 0; n != v43; ++n)
          {
            if (*v56 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v55 + 1) + 8 * n);
            if ([v46 isFake])
            {
              v47 = [v40 name];
              [v46 setName:v47];

              v48 = [v40 detailedName];
              [v46 setDetailedName:v48];
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v55 objects:v80 count:16];
        }

        while (v43);
      }
    }
  }

  *(a1 + 8) |= 1u;
}

id sub_297E342D0(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v2 = [*(a1 + 16) firstObject];
    v3 = [v2 inSharedCache];
    if ((v3 & 1) != 0 || *(a1 + 12) != -1)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v4 = *(a1 + 16);
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v12 + 1) + 8 * i);
            if (v3)
            {
              if (([v9 unusedSharedCacheRegion] & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            else if (![v9 isFake])
            {
LABEL_17:
              v10 = v9;

              goto LABEL_18;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }

    v10 = v2;
LABEL_18:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_297E34F40()
{
  for (i = 0; i != 16; ++i)
  {
    v1 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"app-specific tag %d", i + 1];
    v2 = &unk_2A18A6030 + 8 * i;
    v3 = *(v2 + 4);
    *(v2 + 4) = v1;
  }
}

uint64_t sub_297E355D4()
{
  v0 = [MEMORY[0x29EDBA028] weakToStrongObjectsMapTable];
  v1 = qword_2A18A6040;
  qword_2A18A6040 = v0;

  return MEMORY[0x2A1C71028](v0, v1);
}

id sub_297E35F18(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v16 = v3;
  if (a1)
  {
    v4 = v3;
    v19 = [MEMORY[0x29EDB8E00] dictionary];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [v4 objectEnumerator];
    v20 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v20)
    {
      v18 = *v22;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v21 + 1) + 8 * i);
          v25[0] = @"dirty";
          v7 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v6, "totalSwappedSize") + objc_msgSend(v6, "totalDirtySize")}];
          v26[0] = v7;
          v25[1] = @"swapped";
          v8 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v6, "totalSwappedSize")}];
          v26[1] = v8;
          v25[2] = @"clean";
          v9 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v6, "totalCleanSize")}];
          v26[2] = v9;
          v25[3] = @"reclaimable";
          v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v6, "totalReclaimableSize")}];
          v26[3] = v10;
          v25[4] = @"wired";
          v11 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v6, "totalWiredSize")}];
          v26[4] = v11;
          v25[5] = @"regions";
          v12 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(v6, "totalRegions")}];
          v26[5] = v12;
          v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v26 forKeys:v25 count:6];

          v14 = [v6 fullName];
          [v19 setObject:v13 forKeyedSubscript:v14];
        }

        v20 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_297E36CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_297E36CF8(uint64_t a1)
{
  objc_opt_self();
  v1 = qword_2A18AA188;
  if (!qword_2A18AA188)
  {
    v2 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v3 = qword_2A18AA188;
    qword_2A18AA188 = v2;

    v1 = qword_2A18AA188;
  }

  return v1;
}

uint64_t sub_297E36D50(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    return dyld_shared_cache_for_file();
  }

  return result;
}

uint64_t sub_297E36DDC(uint64_t a1, uint64_t a2)
{
  result = dyld_shared_cache_get_base_address();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_297E36E10(uint64_t a1)
{
  objc_opt_self();
  os_unfair_lock_lock(&unk_2A18AA180);
  v1 = qword_2A18AA188;
  qword_2A18AA188 = 0;

  os_unfair_lock_unlock(&unk_2A18AA180);
}

void sub_297E37154(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1 && *(a1 + 136) == 1)
  {
    os_map_64_foreach();
    os_map_64_destroy();
    os_map_64_foreach();
    os_map_64_destroy();
    os_map_64_foreach();
    os_map_64_destroy();
    v2 = *(a1 + 128);
    if (v2)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v3 = [v2 objectEnumerator];
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v11;
        do
        {
          v7 = 0;
          do
          {
            if (*v11 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = [*(*(&v10 + 1) + 8 * v7) pointerValue];
            os_map_64_foreach();
            os_map_64_destroy();
            free(v8);
            ++v7;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v5);
      }

      v9 = *(a1 + 128);
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 128) = 0;

    *(a1 + 136) = 0;
  }
}

void sub_297E375A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_297E375B8(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 152) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
    [v3 gatherData:*(a1 + 56) extendedInfoProvider:*(a1 + 32)];
  }
}

double sub_297E37F6C(uint64_t a1, uint64_t a2)
{
  os_map_64_init();
  v3 = objc_autoreleasePoolPush();
  os_map_64_foreach();
  objc_autoreleasePoolPop(v3);
  os_map_64_destroy();
  result = 0.0;
  *a1 = 0uLL;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_297E3803C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 finalizeObject])
  {
    v4 = v3;
    os_map_64_insert();
  }

  return 1;
}

void sub_297E380A4(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = a2;
  objc_opt_self();
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        *a3 += [v10 totalDirtySize];
        *(a3 + 8) += [v10 totalSwappedSize];
        *(a3 + 16) += [v10 totalCleanSize];
        *(a3 + 24) += [v10 totalReclaimableSize];
        *(a3 + 32) += [v10 totalWiredSize];
        v11 = [v10 totalRegions];

        *(a3 + 40) += v11;
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

id sub_297E39B8C(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x29EDBA0A8] predicateWithFormat:@"hiddenFromDisplay == NO"];
    v3 = [v1 processes];
    v1 = [v3 filteredArrayUsingPredicate:v2];
  }

  return v1;
}

id sub_297E39C10(uint64_t a1, void *a2, void *a3, unsigned __int8 *a4, uint64_t a5)
{
  v30 = *MEMORY[0x29EDCA608];
  v9 = a2;
  v24 = a3;
  if (a1)
  {
    v21 = a4;
    v10 = [MEMORY[0x29EDB8E00] dictionary];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v9;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          if (a5)
          {
            [v16 name];
          }

          else
          {
            [v16 fullName];
          }
          v17 = ;
          v18 = [v10 objectForKeyedSubscript:v17];
          if (!v18)
          {
            v18 = [[FPMemoryCategory alloc] initSummary:a5];
            [v10 setObject:v18 forKeyedSubscript:v17];
          }

          v19 = [v16 viewForProcess:v24];
          [v18 addMemoryObject:v19];
          if (v13 == 2 || v19 == v16)
          {
            if (!v13)
            {
              v13 = [v16 couldHaveProcessView];
            }
          }

          else
          {
            v13 = 2;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    if (v21)
    {
      *v21 = v13;
    }

    v9 = v22;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_297E39E48(void *a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDB8E20]);
    v5 = [MEMORY[0x29EDB8E00] dictionary];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = sub_297E39B8C(a1);
    v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v19)
    {
      v18 = *v27;
      do
      {
        v6 = 0;
        do
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = v6;
          v7 = *(*(&v26 + 1) + 8 * v6);
          context = objc_autoreleasePoolPush();
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v8 = [v7 memoryRegions];
          v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v23;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v23 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = [*(*(&v22 + 1) + 8 * i) memoryObject];
                if (([v4 containsObject:v13] & 1) == 0)
                {
                  [v4 addObject:v13];
                  if (a2)
                  {
                    [v13 name];
                  }

                  else
                  {
                    [v13 fullName];
                  }
                  v14 = ;
                  v15 = [v5 objectForKeyedSubscript:v14];
                  if (!v15)
                  {
                    v15 = [[FPMemoryCategory alloc] initSummary:a2];
                    [v5 setObject:v15 forKeyedSubscript:v14];
                  }

                  [v15 addMemoryObject:v13];
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v10);
          }

          objc_autoreleasePoolPop(context);
          v6 = v21 + 1;
        }

        while (v21 + 1 != v19);
        v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_297E3A0E8(uint64_t a1, id *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    while (1)
    {
      v6 = *a2;
      v7 = [v6 memoryObject];
      v8 = v7;
      if (*(a1 + 72) != 1)
      {
        break;
      }

      if ([v7 ownerPid] != -1)
      {
        v9 = *(a1 + 32);
        v10 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v8, "ownerPid")}];
        if (([v9 containsObject:v10] & 1) == 0)
        {
          goto LABEL_13;
        }

        v11 = [v8 containsFakeRegion];

        if (v11)
        {
          break;
        }
      }

LABEL_14:

      ++a2;
      if (!--v3)
      {
        return;
      }
    }

    if (*(a1 + 40) && [v6 inSharedCache] && (objc_msgSend(v6, "privateSharedCacheRegion") & 1) == 0)
    {
      sub_297E3BC44(*(a1 + 48), v8);
      goto LABEL_14;
    }

    v10 = [MEMORY[0x29EDBA168] valueWithNonretainedObject:v8];
    v12 = [*(a1 + 56) objectForKeyedSubscript:v10];
    if (!v12)
    {
      v12 = objc_alloc_init(FPProcessGroupMinimal);
      [*(a1 + 56) setObject:v12 forKeyedSubscript:v10];
    }

    [(FPProcessGroupMinimal *)v12 addProcess:*(a1 + 64)];

LABEL_13:
    goto LABEL_14;
  }
}

uint64_t sub_297E3A264(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  LODWORD(a2) = [a2 pid];
  v5 = [v4 pid];

  if (a2 > v5)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_297E3A2BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  v8 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v5, "pid")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = *(*(a1 + 32) + 16);
  v11 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v6, "pid")}];
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = [v12 compare:v9];
  if (!v13)
  {
    v14 = [v5 pid];
    if (v14 > [v6 pid])
    {
      v13 = -1;
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

void sub_297E3AD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_297E3ADAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_297E3ADC4(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    v10 = *MEMORY[0x29EDC5598];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        v13 = [v12 domain];
        if (![v13 isEqualToString:v10])
        {

LABEL_12:
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v12);
          goto LABEL_13;
        }

        v14 = [v12 code];

        if (v14 != 1)
        {
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  v24 = v6;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v27 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v27)
  {
    v26 = *v33;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * j);
        v17 = [v16 processIDs];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v29;
          do
          {
            for (k = 0; k != v19; ++k)
            {
              if (*v29 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v28 + 1) + 8 * k);
              v23 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v22];
              if (!v23)
              {
                v23 = [MEMORY[0x29EDB8DE8] array];
                [*(*(*(a1 + 48) + 8) + 40) setObject:v23 forKeyedSubscript:v22];
              }

              [v23 addObject:v16];
            }

            v19 = [v17 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v19);
        }
      }

      v27 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v27);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_297E3B18C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9 = v3;
    v5 = [v3 copy];
    v6 = *(a1 + 32);
    *(a1 + 32) = v5;

    v3 = [v9 hasPrefix:@"__TEXT"];
    if (v3 & 1) != 0 || (v3 = [v9 hasPrefix:@"__OBJC_RO"], (v3))
    {
      v7 = 2;
LABEL_5:
      v4 = v9;
LABEL_6:
      *(a1 + 8) = v7;
      goto LABEL_7;
    }

    v3 = [v9 hasPrefix:@"__LINKEDIT"];
    if (v3)
    {
      v7 = 4;
      goto LABEL_5;
    }

    v3 = [v9 hasPrefix:@"__"];
    v4 = v9;
    if (v3)
    {
      v7 = 3;
      goto LABEL_6;
    }
  }

LABEL_7:

  return MEMORY[0x2A1C71028](v3, v4);
}

id *sub_297E3B29C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = FPImageEnumerator;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      v5[2] = 0;
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void *sub_297E3B318(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1)
  {
    while (1)
    {
      v6 = *(a1 + 16);
      if (v6 >= [*(a1 + 8) count])
      {
        break;
      }

      v7 = [*(a1 + 8) objectAtIndexedSubscript:*(a1 + 16)];
      v8 = v7;
      if (v7)
      {
        v9 = v7[2];
        v10 = v7[3] + v9;
        if (v9 <= a2 && v10 > a2)
        {
LABEL_16:
          v12 = v7;
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      if (v9 < a3 && v10 >= a3 || v9 >= a2 && v10 <= a3)
      {
        goto LABEL_16;
      }

      if (v9 >= a2)
      {
        v12 = 0;
        goto LABEL_18;
      }

      ++*(a1 + 16);
    }
  }

  v12 = 0;
LABEL_19:

  return v12;
}

void *sub_297E3B408(int a1)
{
  if (qword_2A13A57B8 != -1)
  {
    dispatch_once(&qword_2A13A57B8, &unk_2A1E8FAB0);
  }

  v1 = 0;
  if ((qword_2A13A5718 & 0x8000000000000000) == 0 && (qword_2A13A5798 & 0x8000000000000000) == 0)
  {
    v1 = malloc_type_malloc(88 * qword_2A13A5718, 0x1000040931E79F6uLL);
    v3 = qword_2A13A5718;
    if ((ledger() & 0x80000000) != 0 || v3 < qword_2A13A5718)
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_297E3B4DC(unsigned int a1, uint64_t a2)
{
  if (qword_2A13A57B8 != -1)
  {
    dispatch_once(&qword_2A13A57B8, &unk_2A1E8FAB0);
  }

  if (qword_2A13A5718 < 0)
  {
    return -1;
  }

  if (a1 >= 5)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v4 = qword_2A13A5790[a1];
  if ((v4 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  if (v4 >= qword_2A13A5718)
  {
LABEL_12:
    _os_assert_log();
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = a2 + 88 * v4;
  if (LOBYTE((&off_29EE85628)[3 * a1 + 2]))
  {
    v5 += 48;
  }

  return *v5;
}

void sub_297E3B5AC()
{
  v0 = 0;
  v1 = 40;
  do
  {
    v2 = 2 * v1;
    v8 = 2 * v1;
    v0 = malloc_type_realloc(v0, 192 * v1, 0x1000040565EDBD2uLL);
    if ((ledger() & 0x80000000) != 0)
    {
      free(v0);
      perror("Unable to retrieve ledger template info");
      return;
    }

    v1 = v2;
  }

  while (v2 == v8);
  qword_2A13A5718 = v8;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *qword_2A13A5790 = v3;
  unk_2A13A57A0 = v3;
  qword_2A13A57B0 = -1;
  if (v8 >= 1)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = 0;
      v7 = &off_29EE85628;
      do
      {
        if (!strcmp(*v7, v0 + 96 * v4))
        {
          qword_2A13A5790[v6] = v4;
          ++v5;
        }

        ++v6;
        v7 += 3;
      }

      while (v6 != 5);
      ++v4;
      if (v5 == 5)
      {
        break;
      }

      if (v4 == v8)
      {
        goto LABEL_14;
      }
    }

    qword_2A13A5718 = v4;
  }

LABEL_14:
  free(v0);
}

void *sub_297E3B8D0(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = FPProcessGroupMinimal;
  v3 = objc_msgSendSuper2(&v7, sel_init);
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDB8E20]);
    v5 = v3[1];
    v3[1] = v4;

    v3[2] = a2;
  }

  return v3;
}

FPProcessGroup *sub_297E3BA18(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(FPProcessGroup);
    v2->super._hashValue = *(a1 + 16);
    objc_storeStrong(&v2->super._processes, *(a1 + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_297E3BC44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x29EDB8E20]);
      v7 = *(a1 + 32);
      *(a1 + 32) = v6;

      v5 = *(a1 + 32);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x2A1C71028](v3, v4);
}

void sub_297E3BCEC(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (a1)
  {
    if (!a3)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
      return;
    }

    *(a1 + 24) = a3;
    v7 = v6;
    objc_storeStrong((a1 + 40), a2);
    v6 = v7;
  }
}

id sub_297E3BD78(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      if (!--*(a1 + 24))
      {
        v3 = *(a1 + 40);
        *(a1 + 40) = 0;
      }

      v4 = v2;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_297E3BEBC()
{
  v0 = sub_297E3BF14(0);
  v1 = [v0 objectForKeyedSubscript:qword_2A13A5720];

  return v1;
}

id sub_297E3BF14(__CFString *a1)
{
  v1 = @"/Library/Managed Preferences/mobile/com.apple.ReportMemoryException.plist";
  if (a1)
  {
    v1 = a1;
  }

  v2 = v1;
  v3 = [MEMORY[0x29EDB9FB8] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];
  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v74 = v5;

  v6 = 0;
  if (v4)
  {
    v6 = [MEMORY[0x29EDB8DC0] dictionaryWithContentsOfFile:v2];
  }

  v7 = +[RMECacheEnumerator getEPLProfilePath];
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x29EDB9FB8] defaultManager];
    if ([v9 fileExistsAtPath:v8])
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v73 = v8;
      v11 = [MEMORY[0x29EDB8DC0] dictionaryWithContentsOfFile:v11];
    }

    else
    {
      v73 = 0;
    }
  }

  else
  {
    v73 = 0;
    v11 = 0;
  }

  v72 = v6;
  v71 = v11;
  v12 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v14 = has_internal_diagnostics;
  if (has_internal_diagnostics)
  {
    v15 = 50;
  }

  else
  {
    v15 = 0;
  }

  v16 = (has_internal_diagnostics & 1) != 0;
  if (has_internal_diagnostics)
  {
    v17 = 120;
  }

  else
  {
    v17 = 0;
  }

  if (has_internal_diagnostics)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  if (has_internal_diagnostics)
  {
    v19 = 10;
  }

  else
  {
    v19 = 0;
  }

  if (has_internal_diagnostics)
  {
    v20 = 12;
  }

  else
  {
    v20 = 0;
  }

  v21 = [MEMORY[0x29EDBA070] numberWithInteger:v15];
  [v12 setObject:v21 forKeyedSubscript:@"FullDiagLimit"];

  v22 = [MEMORY[0x29EDBA070] numberWithInteger:v16];
  [v12 setObject:v22 forKeyedSubscript:@"GCoreDiagLimit"];

  v23 = [MEMORY[0x29EDBA070] numberWithInteger:v17];
  [v12 setObject:v23 forKeyedSubscript:@"LiteDiagLimit"];

  v24 = [MEMORY[0x29EDBA070] numberWithInteger:v16];
  [v12 setObject:v24 forKeyedSubscript:@"PerProcessLimit"];

  v25 = [MEMORY[0x29EDBA070] numberWithInteger:v20];
  [v12 setObject:v25 forKeyedSubscript:@"LitePerProcessLimit"];

  v26 = [MEMORY[0x29EDBA070] numberWithInteger:v18];
  [v12 setObject:v26 forKeyedSubscript:@"PerCriticalProcessLimit"];

  v27 = [MEMORY[0x29EDBA070] numberWithInteger:v19];
  [v12 setObject:v27 forKeyedSubscript:@"MSLFullDiagLimit"];

  v28 = [MEMORY[0x29EDBA070] numberWithInteger:v19];
  [v12 setObject:v28 forKeyedSubscript:@"ThresholdFullDiagLimit"];

  v29 = [MEMORY[0x29EDB8E00] dictionary];
  [v12 setObject:v29 forKeyedSubscript:@"ProcessSpecificFullDiagQuotas"];

  v30 = [MEMORY[0x29EDBA070] numberWithBool:v14 ^ 1u];
  [v12 setObject:v30 forKeyedSubscript:@"AllowAllProcessesInSysdiagnose"];

  v31 = [objc_alloc(MEMORY[0x29EDB8E20]) initWithArray:&unk_2A1E95168];
  if ([v31 count])
  {
    v32 = [v31 mutableCopy];
  }

  else
  {
    v32 = objc_alloc_init(MEMORY[0x29EDB8E20]);
  }

  v33 = v32;
  [v12 setObject:v32 forKeyedSubscript:@"ProcessesAllowedInSysdiagnose"];

  v34 = [MEMORY[0x29EDB8E20] set];
  if (os_variant_has_internal_diagnostics())
  {
    [v34 addObject:@"mediaserverd"];
    [v34 addObject:@"cameracaptured"];
  }

  if (os_variant_has_internal_diagnostics())
  {
    [v34 addObject:@"backboardd"];
  }

  [v12 setObject:v34 forKeyedSubscript:@"LargeExemptedProcesses"];

  [v12 setObject:v31 forKeyedSubscript:qword_2A13A5720];
  v35 = [MEMORY[0x29EDBA070] numberWithBool:0];
  [v12 setObject:v35 forKeyedSubscript:@"CollectIOAccelMemInfo"];

  v36 = [MEMORY[0x29EDBA070] numberWithBool:0];
  [v12 setObject:v36 forKeyedSubscript:@"BoostCriticalProcessCollection"];

  v37 = [MEMORY[0x29EDB8DE8] array];
  [v12 setObject:v37 forKeyedSubscript:@"FullContentExecNamesList"];

  v38 = objc_alloc(MEMORY[0x29EDB8E00]);
  v39 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v40 = [v38 initWithObjectsAndKeys:{v39, @"ExecNameList", 0}];
  v41 = MREExceptionTypeToString(2);
  [v12 setObject:v40 forKeyedSubscript:v41];

  v42 = objc_alloc(MEMORY[0x29EDB8E00]);
  v43 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v44 = [v42 initWithObjectsAndKeys:{v43, @"ExecNameList", 0}];
  v45 = MREExceptionTypeToString(3);
  [v12 setObject:v44 forKeyedSubscript:v45];

  v46 = objc_alloc(MEMORY[0x29EDB8E00]);
  v47 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v48 = [v46 initWithObjectsAndKeys:{v47, @"ExecNameList", 0}];
  v49 = MREExceptionTypeToString(4);
  [v12 setObject:v48 forKeyedSubscript:v49];

  v50 = objc_alloc(MEMORY[0x29EDB8E00]);
  v51 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v52 = [v50 initWithObjectsAndKeys:{v51, @"ExecNameList", 0}];
  v53 = MREExceptionTypeToString(5);
  [v12 setObject:v52 forKeyedSubscript:v53];

  v54 = objc_alloc(MEMORY[0x29EDB8E00]);
  v55 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v56 = [v54 initWithObjectsAndKeys:{v55, @"ExecNameList", 0}];
  v57 = MREExceptionTypeToString(1);
  [v12 setObject:v56 forKeyedSubscript:v57];

  v58 = objc_alloc(MEMORY[0x29EDB8E00]);
  v59 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v60 = [v58 initWithObjectsAndKeys:{v59, @"ExecNameList", 0}];
  v61 = MREExceptionTypeToString(6);
  [v12 setObject:v60 forKeyedSubscript:v61];

  v62 = objc_alloc(MEMORY[0x29EDB8E00]);
  v63 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v64 = [v62 initWithObjectsAndKeys:{v63, @"ExecNameList", 0}];
  v65 = MREExceptionTypeToString(7);
  [v12 setObject:v64 forKeyedSubscript:v65];

  v66 = objc_alloc(MEMORY[0x29EDB8E00]);
  v67 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v68 = [v66 initWithObjectsAndKeys:{v67, @"ExecNameList", 0}];
  v69 = MREExceptionTypeToString(0);
  [v12 setObject:v68 forKeyedSubscript:v69];

  if (v71)
  {
    sub_297E3C744(v12, v71);
  }

  if (v72)
  {
    sub_297E3C744(v12, v72);
  }

  return v12;
}

uint64_t sub_297E3C6F4(void *a1)
{
  v1 = a1;
  v2 = sub_297E3BEBC();
  v3 = [v2 containsObject:v1];

  return v3;
}

void sub_297E3C744(void *a1, void *a2)
{
  v69 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v4 = a2;
  v5 = 0x29EDB8000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKeyedSubscript:@"ExpirationDate"];
    if (!v6)
    {
LABEL_5:
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v10 = [v3 allKeys];
      v11 = [v10 countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (!v11)
      {
        goto LABEL_79;
      }

      v12 = v11;
      v13 = *v59;
      v47 = v10;
      while (1)
      {
        v14 = 0;
        do
        {
          if (*v59 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v58 + 1) + 8 * v14);
          if (([(__CFString *)v15 isEqualToString:@"FullDiagLimit"]& 1) != 0 || ([(__CFString *)v15 isEqualToString:@"GCoreDiagLimit"]& 1) != 0 || ([(__CFString *)v15 isEqualToString:@"MSLFullDiagLimit"]& 1) != 0 || ([(__CFString *)v15 isEqualToString:@"ThresholdFullDiagLimit"]& 1) != 0 || ([(__CFString *)v15 isEqualToString:@"LiteDiagLimit"]& 1) != 0 || ([(__CFString *)v15 isEqualToString:@"PerProcessLimit"]& 1) != 0 || ([(__CFString *)v15 isEqualToString:@"LitePerProcessLimit"]& 1) != 0 || ([(__CFString *)v15 isEqualToString:@"PerCriticalProcessLimit"]& 1) != 0 || [(__CFString *)v15 isEqualToString:@"AllowAllProcessesInSysdiagnose"])
          {
            v16 = [v4 objectForKeyedSubscript:v15];
            if (v16)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v16 integerValue] + 1) <= 0x2711)
              {
                v17 = v3;
                v18 = v16;
                v19 = v15;
LABEL_23:
                [v17 setObject:v18 forKeyedSubscript:v19];
              }
            }
          }

          else if ([(__CFString *)v15 isEqualToString:@"ProcessSpecificFullDiagQuotas"])
          {
            v16 = [v4 objectForKeyedSubscript:v15];
            if (v16)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = [v3 objectForKeyedSubscript:v15];
                sub_297E3D6AC(v20, v16);
              }
            }
          }

          else if (([(__CFString *)v15 isEqualToString:@"LargeExemptedProcesses"]& 1) != 0 || ([(__CFString *)v15 isEqualToString:@"FullContentExecNamesList"]& 1) != 0 || [(__CFString *)v15 isEqualToString:qword_2A13A5720])
          {
            v16 = [v4 objectForKeyedSubscript:v15];
            if (v16)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v44 = v6;
                v46 = v3;
                v56 = 0u;
                v57 = 0u;
                v54 = 0u;
                v55 = 0u;
                v16 = v16;
                v21 = [v16 countByEnumeratingWithState:&v54 objects:v67 count:16];
                if (v21)
                {
                  v22 = v21;
                  v48 = *v55;
                  do
                  {
                    for (i = 0; i != v22; ++i)
                    {
                      if (*v55 != v48)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v24 = *(*(&v54 + 1) + 8 * i);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        if (!-[__CFString isEqualToString:](v15, "isEqualToString:", @"FullContentExecNamesList") || os_variant_has_internal_diagnostics() && ([v24 isEqualToString:@"mediaserverd"] & 1) != 0)
                        {
                          v25 = [v46 objectForKeyedSubscript:v15];
                          [v25 addObject:v24];

                          v10 = v47;
                          if ([(__CFString *)v15 isEqualToString:qword_2A13A5720])
                          {
                            v26 = [v46 objectForKeyedSubscript:@"ProcessesAllowedInSysdiagnose"];
                            [v26 addObject:v24];

                            v10 = v47;
                          }
                        }

                        else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          v64 = v24;
                          v65 = 2112;
                          v66 = @"FullContentExecNamesList";
                          _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Ignoring process %@ for %@ key, since it isn't know to have received privacy approval for collecting fullContent memgraphs for this OS configuration.", buf, 0x16u);
                        }
                      }
                    }

                    v22 = [v16 countByEnumeratingWithState:&v54 objects:v67 count:16];
                  }

                  while (v22);
                }

LABEL_50:

                v3 = v46;
                v6 = v44;
                v5 = 0x29EDB8000;
              }
            }
          }

          else if ([(__CFString *)v15 isEqualToString:@"ProcessesAllowedInSysdiagnose"])
          {
            v16 = [v4 objectForKeyedSubscript:v15];
            if (v16)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v44 = v6;
                v46 = v3;
                v52 = 0u;
                v53 = 0u;
                v50 = 0u;
                v51 = 0u;
                v16 = v16;
                v27 = [v16 countByEnumeratingWithState:&v50 objects:v62 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v51;
                  do
                  {
                    for (j = 0; j != v28; ++j)
                    {
                      if (*v51 != v29)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v31 = *(*(&v50 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v32 = [v46 objectForKeyedSubscript:@"ProcessesAllowedInSysdiagnose"];
                        [v32 addObject:v31];

                        v10 = v47;
                      }
                    }

                    v28 = [v16 countByEnumeratingWithState:&v50 objects:v62 count:16];
                  }

                  while (v28);
                }

                goto LABEL_50;
              }
            }
          }

          else
          {
            if (![(__CFString *)v15 isEqualToString:@"CollectIOAccelMemInfo"])
            {
              v33 = [(__CFString *)v15 isEqualToString:@"BoostCriticalProcessCollection"];
              v34 = [v4 objectForKeyedSubscript:v15];
              v16 = v34;
              if (v33)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v3 setObject:v16 forKeyedSubscript:@"BoostCriticalProcessCollection"];
                }

                goto LABEL_77;
              }

              if (v34)
              {
                v45 = v6;
                v35 = [v3 objectForKeyedSubscript:v15];
                v36 = [v16 objectForKeyedSubscript:@"PerProcessLimit"];
                if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  if (([v36 integerValue] + 1) <= 0x2711)
                  {
                    [v35 setObject:v36 forKeyedSubscript:@"PerProcessLimit"];
                    goto LABEL_75;
                  }
                }

                else
                {
LABEL_75:
                  [v35 objectForKeyedSubscript:@"ExecNameList"];
                  v37 = v49 = v35;
                  [v16 objectForKeyedSubscript:@"ExecNameList"];
                  v38 = v5;
                  v40 = v39 = v3;
                  sub_297E3D6AC(v37, v40);

                  v3 = v39;
                  v5 = v38;

                  v35 = v49;
                }

                v6 = v45;
              }

LABEL_77:
              v10 = v47;
              goto LABEL_24;
            }

            v16 = [v4 objectForKeyedSubscript:v15];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v3;
              v18 = v16;
              v19 = @"CollectIOAccelMemInfo";
              goto LABEL_23;
            }
          }

LABEL_24:

          ++v14;
        }

        while (v14 != v12);
        v41 = [v10 countByEnumeratingWithState:&v58 objects:v68 count:16];
        v12 = v41;
        if (!v41)
        {
LABEL_79:

          goto LABEL_83;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x29EDB8DB0] date];
      v8 = [v6 compare:v7];

      v9 = v8 == -1;
      v5 = 0x29EDB8000uLL;
      if (!v9)
      {
        goto LABEL_5;
      }

      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      *buf = 0;
      v42 = MEMORY[0x29EDCA988];
      v43 = "The input preferences have expired. Skipping.";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
LABEL_83:

        goto LABEL_84;
      }

      *buf = 0;
      v42 = MEMORY[0x29EDCA988];
      v43 = "The input preferences are malformed. Skipping.";
    }

    _os_log_error_impl(&dword_297E24000, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
    goto LABEL_83;
  }

LABEL_84:
}

id sub_297E3CFE0(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"_"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:".memgraph"];
  v5 = [v1 hasSuffix:v4];

  if (v5)
  {
    v6 = 34;
  }

  else
  {
    v7 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:".lite_diag"];
    v8 = [v1 hasSuffix:v7];

    if (!v8)
    {
      goto LABEL_10;
    }

    v6 = 35;
  }

  v9 = v3 + 1;
  if ([v1 containsString:qword_2A13A5728])
  {
    v9 += [qword_2A13A5728 length];
  }

  v10 = v9 + v6;
  v11 = [v1 length];
  if (v11 > v10)
  {
    v12 = [v1 substringWithRange:{v9, v11 - v10}];
    goto LABEL_11;
  }

LABEL_10:
  v12 = 0;
LABEL_11:

  return v12;
}

id sub_297E3D10C(char a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x29EDCA608];
  v44 = a2;
  v4 = a3;
  v5 = [MEMORY[0x29EDB8DE8] array];
  v6 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:-3600.0];
  v7 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v42 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v8 = [v4 nextValidURL];
  v39 = v4;
  v41 = v6;
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x29EDB8D30];
    v45 = *MEMORY[0x29EDB8D60];
    while (1)
    {
      v11 = objc_autoreleasePoolPush();
      v57 = 0;
      [v9 getResourceValue:&v57 forKey:v10 error:0];
      v12 = v57;
      if (v12)
      {
        break;
      }

LABEL_25:

      objc_autoreleasePoolPop(v11);
      v22 = [v4 nextValidURL];

      v9 = v22;
      if (!v22)
      {
        goto LABEL_26;
      }
    }

    v56 = 0;
    [v9 getResourceValue:&v56 forKey:v45 error:0];
    v13 = v56;
    if (!v13 || (a1 & 1) == 0 && [v12 compare:v6] != -1 && objc_msgSend(v12, "compare:", v6))
    {
LABEL_24:

      goto LABEL_25;
    }

    if (!v44 || [v13 hasSuffix:@".lite_diag"])
    {
      [v42 addObject:v9];
      goto LABEL_24;
    }

    v14 = sub_297E3CFE0(v13);
    if (!v14)
    {
      goto LABEL_24;
    }

    v40 = v14;
    v15 = v44;
    v16 = [v15 objectForKeyedSubscript:@"AllowAllProcessesInSysdiagnose"];
    v17 = v16;
    if (v16 && objc_msgSend_BOOLValue(v16))
    {

      v18 = v40;
      v4 = v39;
    }

    else
    {
      v19 = [v15 objectForKeyedSubscript:@"ProcessesAllowedInSysdiagnose"];
      v37 = v15;
      v18 = v40;
      v38 = [v19 containsObject:v40];

      v4 = v39;
      v6 = v41;
      if (!v38)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    v20 = [v7 objectForKeyedSubscript:v18];
    if (v20)
    {
      v55 = 0;
      [v9 getResourceValue:&v55 forKey:v10 error:0];
      v21 = v55;
      v54 = 0;
      [v20 getResourceValue:&v54 forKey:v10 error:0];
      if ([v54 compare:v21] == -1)
      {
        [v42 addObject:?];
        [v7 setObject:v9 forKeyedSubscript:v40];
      }

      else
      {
        [v42 addObject:v9];
      }
    }

    else
    {
      [v7 setObject:v9 forKeyedSubscript:v18];
    }

    v18 = v40;
    v6 = v41;
    goto LABEL_23;
  }

LABEL_26:
  [v42 sortUsingComparator:&unk_2A1E8FAF0];
  v23 = [v7 keysSortedByValueUsingComparator:&unk_2A1E8FAF0];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v51;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v51 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [v7 objectForKeyedSubscript:*(*(&v50 + 1) + 8 * i)];
        v29 = [v28 path];
        [v5 addObject:v29];
      }

      v25 = [v23 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v25);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v30 = v42;
  v31 = [v30 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v47;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v46 + 1) + 8 * j) path];
        [v5 addObject:v35];
      }

      v32 = [v30 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v32);
  }

  return v5;
}

uint64_t sub_297E3D610(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = *MEMORY[0x29EDB8D30];
  v5 = a3;
  [a2 getResourceValue:&v10 forKey:v4 error:0];
  v9 = 0;
  v6 = v10;
  [v5 getResourceValue:&v9 forKey:v4 error:0];

  v7 = [v9 compare:v6];
  return v7;
}

void sub_297E3D6AC(void *a1, void *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v11 = a1;
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v4 = [v3 allKeys];
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          v8 = 0;
          do
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v12 + 1) + 8 * v8);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v3 objectForKeyedSubscript:v9];
              if (v10)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 integerValue] + 1) <= 0x2711)
                {
                  [v11 setObject:v10 forKeyedSubscript:v9];
                }
              }
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }
    }
  }
}

FPAuxData *sub_297E3D86C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [v7 fp_isContainer];
    if (v9 != [v8 fp_isContainer])
    {
      __assert_rtn("[NSDictionary(FPAuxData) fp_mergeAuxDatum:withDatum:forceAggregate:]", "FPAuxData.m", 18, "!datum2 || datum1.fp_isContainer == datum2.fp_isContainer");
    }
  }

  if ([v7 fp_isContainer])
  {
    v10 = [v7 fp_mergeWithData:v8 forceAggregate:a5];
LABEL_10:
    v11 = v10;
    goto LABEL_11;
  }

  if ((a5 & 1) != 0 || [v7 shouldAggregate])
  {
    if (v8)
    {
      v10 = -[FPAuxData initWithValue:shouldAggregate:]([FPAuxData alloc], "initWithValue:shouldAggregate:", [v8 value] + objc_msgSend(v7, "value"), objc_msgSend(v7, "shouldAggregate"));
    }

    else
    {
      v10 = v7;
    }

    goto LABEL_10;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

id sub_297E3D9A0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = *MEMORY[0x29EDCA608];
  v27 = a3;
  if (v27 || !a4)
  {
    v7 = [MEMORY[0x29EDB8E00] dictionary];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = a1;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          v14 = [v8 objectForKeyedSubscript:v13];
          v15 = [v27 objectForKeyedSubscript:v13];
          v16 = [v8 fp_mergeAuxDatum:v14 withDatum:v15 forceAggregate:a4];
          [v7 setObject:v16 forKeyedSubscript:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v10);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v27;
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v28 + 1) + 8 * j);
          v23 = [v8 objectForKeyedSubscript:v22];

          if (!v23)
          {
            v24 = [v17 objectForKeyedSubscript:v22];
            v25 = [v8 fp_mergeAuxDatum:v24 withDatum:0 forceAggregate:a4];
            [v7 setObject:v25 forKeyedSubscript:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v19);
    }

    if ([v7 count])
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

id sub_297E3DC54(void *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDB8E00] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:{v8, v12}];
        v10 = [v9 fp_jsonRepresentation];
        [v2 setObject:v10 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_297E3E030()
{
  v18 = *MEMORY[0x29EDCA608];
  v14 = 1;
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%s/MemoryLimitViolations", v0];
    if ([v2 hasPrefix:@"/private"])
    {
      v3 = [v2 substringFromIndex:{objc_msgSend(@"/private", "length")}];

      v2 = v3;
    }

    v4 = [v2 UTF8String];
    if (!v4)
    {
      goto LABEL_21;
    }

    v5 = v4;
    memset(&v17, 0, sizeof(v17));
    v6 = stat(v4, &v17);
    if (v6)
    {
      if (v6 != -1)
      {
LABEL_21:
        free(v1);
        goto LABEL_22;
      }

      if (mkpath_np(v5, 0x1C0u))
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v16 = v5;
          _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Unable to create container at %s", buf, 0xCu);
        }

        goto LABEL_21;
      }
    }

    v7 = [MEMORY[0x29EDB8E70] fileURLWithPath:v2];
    v8 = v7;
    if (v7)
    {
      v9 = *MEMORY[0x29EDB8D48];
      v13 = 0;
      v10 = [v7 setResourceValue:MEMORY[0x29EDB8EB0] forKey:v9 error:&v13];
      v11 = v13;
      v12 = v11;
      if (v10 && !v11)
      {

        objc_storeStrong(&qword_2A18A60E0, v2);
        goto LABEL_21;
      }
    }

    else
    {
      v12 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = v5;
      _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Unable to exclude the container from backups: %s", buf, 0xCu);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v17.st_dev = 134217984;
    *&v17.st_mode = v14;
    _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Error fetching container: %llu", &v17, 0xCu);
  }

  v2 = qword_2A18A60E0;
  qword_2A18A60E0 = 0;
LABEL_22:
}

void sub_297E3E344()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%s/epl_preferences.plist", v0];
    v3 = qword_2A18A60F0;
    qword_2A18A60F0 = v2;

    free(v1);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v6 = 1;
      _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Error fetching container: %llu", buf, 0xCu);
    }

    v4 = qword_2A18A60F0;
    qword_2A18A60F0 = 0;
  }
}