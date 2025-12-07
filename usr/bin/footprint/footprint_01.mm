uint64_t sub_1000194D4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = a1[14];
    v8 = a1[15];
    v9 = v7 == 1;
    if (v7 == 1)
    {
      v10 = 11;
    }

    else
    {
      v10 = 14;
    }

    if (v9)
    {
      v11 = 7;
    }

    else
    {
      v11 = 11;
    }

    if (v9)
    {
      v12 = 11;
    }

    else
    {
      v12 = 14;
    }

    if (v9)
    {
      v13 = 13;
    }

    else
    {
      v13 = 14;
    }

    if ((v8 & 2) != 0)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    if ((v8 & 2) != 0)
    {
      v15 = "---";
    }

    else
    {
      v15 = "";
    }

    if (v8)
    {
      v16 = "---";
    }

    else
    {
      v10 = 0;
      v16 = "";
    }

    v40 = v5;
    sub_1000182F4(a1, v5, 1, "%*s%*s%*s%*s%*s %10s    %s\n", v11, "---", v14, v15, v12, "---", v13, "---", v10, v16, "---", "---");
    if (a1[14] == 1)
    {
      v17 = 7;
    }

    else
    {
      v17 = 11;
    }

    v39 = v17;
    v18 = sub_100018EC4(a1, *(a2 + 8) + *a2);
    v38 = [v18 UTF8String];
    v19 = a1[15];
    if ((v19 & 2) != 0)
    {
      if (a1[14] == 1)
      {
        v20 = 11;
      }

      else
      {
        v20 = 14;
      }

      v37 = v20;
      v33 = sub_100018EC4(a1, *(a2 + 8));
      v36 = [v33 UTF8String];
    }

    else
    {
      v36 = "";
      v37 = 0;
    }

    if (a1[14] == 1)
    {
      v21 = 11;
    }

    else
    {
      v21 = 14;
    }

    v35 = v21;
    v22 = sub_100018EC4(a1, *(a2 + 16));
    v23 = [v22 UTF8String];
    if (a1[14] == 1)
    {
      v24 = 13;
    }

    else
    {
      v24 = 14;
    }

    v25 = sub_100018EC4(a1, *(a2 + 24));
    v26 = [v25 UTF8String];
    v27 = v26;
    if (a1[15])
    {
      v34 = v18;
      v28 = v19;
      v19 = a1[14];
      v29 = sub_100018EC4(a1, *(a2 + 32));
      v30 = [v29 UTF8String];
      v9 = v19 == 1;
      LOBYTE(v19) = v28;
      v31 = 14;
      if (v9)
      {
        v31 = 11;
      }

      v18 = v34;
      sub_1000182F4(a1, v40, 1, "%*s%*s%*s%*s%*s %10d    %s%*s\n", v39, v38, v37, v36, v35, v23, v24, v27, v31, v30, *(a2 + 40), "TOTAL", 0, "");
    }

    else
    {
      sub_1000182F4(a1, v40, 1, "%*s%*s%*s%*s%*s %10d    %s%*s\n", v39, v38, v37, v36, v35, v23, v24, v26, 0, "", *(a2 + 40), "TOTAL", 0, "");
    }

    if ((v19 & 2) != 0)
    {
    }

    v6 = v40;
  }

  return _objc_release_x1(v5, v6);
}

void sub_100019D50(uint64_t a1, char *__format, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v18 = &a9;
    if (!*(a1 + 64))
    {
      vfprintf(*(a1 + 136), __format, v18);
      return;
    }

    v11 = v17;
    v12 = vsnprintf(v17, 0xC8uLL, __format, v18);
    if ((v12 & 0x80000000) == 0)
    {
      if (v12 < 0xC9)
      {
LABEL_8:
        v16 = [[NSString alloc] initWithCString:v11 encoding:4];
LABEL_11:
        sub_10001B560(a1, 0, 2, v16);

        return;
      }

      v13 = 200;
      while (1)
      {
        v14 = v13 + 200;
        v11 = &v18 - ((v13 + 215) & 0xFFFFFFFFFFFFFFF0);
        v15 = vsnprintf(v11, v13 + 200, __format, v18);
        if ((v15 & 0x80000000) != 0)
        {
          break;
        }

        v13 = v14;
        if (v14 >= v15)
        {
          goto LABEL_8;
        }
      }
    }

    v16 = 0;
    goto LABEL_11;
  }
}

void sub_10001A8FC(void *a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v7 allKeys];
  v10 = [v9 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

  v11 = v7;
  obj = v10;
  v25 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v25)
  {
    v12 = *v27;
    v23 = a3;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v11 objectForKeyedSubscript:v14];
        for (j = a3; j; --j)
        {
          sub_1000182F4(a1, v8, 1, "    ");
        }

        if ([v15 fp_isContainer])
        {
          sub_1000182F4(a1, v8, 1, "%s:\n", [v14 UTF8String]);
          sub_10001A8FC(a1, v15, a3 + 1, v8);
        }

        else
        {
          v17 = v12;
          v18 = v11;
          v19 = v15;
          if ([v19 supportsFormattedValue])
          {
            sub_1000182F4(a1, v8, 1, "%s: %s\n", [v14 UTF8String], objc_msgSend(v19, "formattedValue"));
          }

          else
          {
            v20 = [v19 value];
            v21 = [v14 UTF8String];
            v22 = sub_100018EC4(a1, v20);
            sub_1000182F4(a1, v8, 1, "%s: %s\n", v21, [v22 UTF8String]);
          }

          v11 = v18;
          v12 = v17;
          a3 = v23;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v25);
  }
}

void sub_10001AB94(uint64_t a1, id *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    while (1)
    {
      v6 = *a2;
      v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
      v8 = v7;
      v9 = *(a1 + 40);
      if ((*(v9 + 56) & 1) != 0 || !v7)
      {
        goto LABEL_7;
      }

      if (([*(v7 + 24) verbose] & 1) == 0)
      {
        break;
      }

LABEL_38:

      ++a2;
      if (!--v3)
      {
        return;
      }
    }

    v9 = *(a1 + 40);
LABEL_7:
    v10 = sub_10001BC4C(v8);
    v11 = sub_100018968(v9, v10);

    v50 = v11;
    v49 = [v11 UTF8String];
    v51 = sub_10001BBF0(v8);
    if (!v51)
    {
      v51 = v6;
    }

    v12 = *(a1 + 40);
    if (v12[14] == 1)
    {
      v13 = 7;
    }

    else
    {
      v13 = 11;
    }

    v44 = v13;
    v45 = *(a1 + 48);
    v14 = sub_100018EC4(v12, [v8 totalDirtySize] + objc_msgSend(v8, "totalSwappedSize"));
    v15 = [v14 UTF8String];
    v16 = *(a1 + 40);
    v47 = v14;
    v48 = v6;
    v46 = v12;
    v42 = v15;
    v43 = v16[15];
    if ((v43 & 2) != 0)
    {
      if (v16[14] == 1)
      {
        v17 = 11;
      }

      else
      {
        v17 = 14;
      }

      v41 = v17;
      v34 = sub_100018EC4(v16, [v8 totalSwappedSize]);
      v40 = [v34 UTF8String];
      v16 = *(a1 + 40);
    }

    else
    {
      v40 = "";
      v41 = 0;
    }

    if (v16[14] == 1)
    {
      v18 = 11;
    }

    else
    {
      v18 = 14;
    }

    v39 = v18;
    v19 = sub_100018EC4(v16, [v8 totalCleanSize]);
    v20 = [v19 UTF8String];
    v21 = *(a1 + 40);
    if (v21[14] == 1)
    {
      v22 = 13;
    }

    else
    {
      v22 = 14;
    }

    v37 = v22;
    v38 = v20;
    v23 = sub_100018EC4(v21, [v8 totalReclaimableSize]);
    v24 = [v23 UTF8String];
    v25 = *(a1 + 40);
    v26 = v25[15];
    v36 = v24;
    if (v26)
    {
      if (v25[14] == 1)
      {
        v28 = 11;
      }

      else
      {
        v28 = 14;
      }

      v35 = v28;
      v33 = sub_100018EC4(v25, [v8 totalWiredSize]);
      v27 = [v33 UTF8String];
    }

    else
    {
      v35 = 0;
      v27 = "";
    }

    v29 = [v8 totalRegions];
    v30 = [v51 UTF8String];
    v31 = v49;
    if (v49)
    {
      v31 = [v50 length] + 1;
      v32 = v49;
    }

    else
    {
      v32 = "";
    }

    sub_1000182F4(v46, v45, 1, "%*s%*s%*s%*s%*s %10d    %s%*s\n", v44, v42, v41, v40, v39, v38, v37, v36, v35, v27, v29, v30, v31, v32);
    if (v26)
    {
    }

    if ((v43 & 2) != 0)
    {
    }

    v6 = v48;
    goto LABEL_38;
  }
}

int64_t sub_10001B3BC(id a1, FPMemoryCategory *a2, FPMemoryCategory *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(FPMemoryCategory *)v4 totalDirtySize];
  v7 = &v6[[(FPMemoryCategory *)v4 totalSwappedSize]];
  v8 = [(FPMemoryCategory *)v5 totalDirtySize];
  if (v7 > &v8[[(FPMemoryCategory *)v5 totalSwappedSize]])
  {
    goto LABEL_2;
  }

  v10 = [(FPMemoryCategory *)v4 totalDirtySize];
  v11 = &v10[[(FPMemoryCategory *)v4 totalSwappedSize]];
  v12 = [(FPMemoryCategory *)v5 totalDirtySize];
  if (v11 < &v12[[(FPMemoryCategory *)v5 totalSwappedSize]])
  {
LABEL_4:
    v9 = 1;
    goto LABEL_5;
  }

  v14 = [(FPMemoryCategory *)v4 totalReclaimableSize];
  if (v14 <= [(FPMemoryCategory *)v5 totalReclaimableSize])
  {
    v15 = [(FPMemoryCategory *)v4 totalReclaimableSize];
    if (v15 >= [(FPMemoryCategory *)v5 totalReclaimableSize])
    {
      v16 = [(FPMemoryCategory *)v4 totalCleanSize];
      if (v16 <= [(FPMemoryCategory *)v5 totalCleanSize])
      {
        v17 = [(FPMemoryCategory *)v4 totalCleanSize];
        v9 = v17 < [(FPMemoryCategory *)v5 totalCleanSize];
        goto LABEL_5;
      }

      goto LABEL_2;
    }

    goto LABEL_4;
  }

LABEL_2:
  v9 = -1;
LABEL_5:

  return v9;
}

uint64_t sub_10001B4F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a3;
  v8 = v6(a2, v5);
  v9 = (*(a1 + 32))(v7, *(a1 + 40));

  if (v8 > v9)
  {
    return -1;
  }

  else
  {
    return v8 < v9;
  }
}

void sub_10001B560(void *a1, void *a2, int a3, void *a4)
{
  v25 = a2;
  v7 = a4;
  if (!v7)
  {
    goto LABEL_16;
  }

  if (a3 == 2)
  {
    v15 = a1[13];
LABEL_11:
    [v15 appendString:v7];
    goto LABEL_16;
  }

  if (a3 != 1)
  {
    v15 = a1[12];
    goto LABEL_11;
  }

  v8 = a1[11];
  v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 pid]);
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v10 = objc_alloc_init(NSMutableArray);
    v11 = a1[11];
    v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 pid]);
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  v13 = [v10 lastObject];
  v14 = v13;
  if (v13 && ![v13 hasSuffix:@"\n"])
  {
    v16 = [v14 stringByAppendingString:v7];
    [v10 setObject:v16 atIndexedSubscript:{objc_msgSend(v10, "count") - 1}];
  }

  else
  {
    [v10 addObject:v7];
  }

  v17 = [v7 length];
  v18 = a1[9];
  v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 pid]);
  v20 = [v18 objectForKeyedSubscript:v19];
  v21 = [v20 integerValue];

  if (v17 > v21)
  {
    v22 = [NSNumber numberWithUnsignedInteger:v17];
    v23 = a1[9];
    v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 pid]);
    [v23 setObject:v22 forKeyedSubscript:v24];
  }

LABEL_16:
}

void *sub_10001B844(int a1)
{
  if (qword_100038668 != -1)
  {
    dispatch_once(&qword_100038668, &stru_100029FD8);
  }

  v1 = 0;
  if ((qword_1000344F0 & 0x8000000000000000) == 0 && (qword_100038648 & 0x8000000000000000) == 0)
  {
    v1 = malloc_type_malloc(88 * qword_1000344F0, 0x1000040931E79F6uLL);
    v3 = qword_1000344F0;
    if ((ledger() & 0x80000000) != 0 || v3 < qword_1000344F0)
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_10001B918(unsigned int a1, uint64_t a2)
{
  if (qword_100038668 != -1)
  {
    dispatch_once(&qword_100038668, &stru_100029FD8);
  }

  if (qword_1000344F0 < 0)
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

  v4 = qword_100038640[a1];
  if ((v4 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  if (v4 >= qword_1000344F0)
  {
LABEL_12:
    _os_assert_log();
    result = _os_crash();
    __break(1u);
    return result;
  }

  v5 = a2 + 88 * v4;
  if (LOBYTE((&off_100029F60)[3 * a1 + 2]))
  {
    v5 += 48;
  }

  return *v5;
}

void sub_10001B9E8(id a1)
{
  v1 = 0;
  v2 = 40;
  do
  {
    v3 = 2 * v2;
    v9 = 2 * v2;
    v1 = malloc_type_realloc(v1, 192 * v2, 0x1000040565EDBD2uLL);
    if ((ledger() & 0x80000000) != 0)
    {
      free(v1);
      perror("Unable to retrieve ledger template info");
      return;
    }

    v2 = v3;
  }

  while (v3 == v9);
  qword_1000344F0 = v9;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *qword_100038640 = v4;
  *algn_100038650 = v4;
  qword_100038660 = -1;
  if (v9 >= 1)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = 0;
      v8 = &off_100029F60;
      do
      {
        if (!strcmp(*v8, v1 + 96 * v5))
        {
          qword_100038640[v7] = v5;
          ++v6;
        }

        ++v7;
        v8 += 3;
      }

      while (v7 != 5);
      ++v5;
      if (v6 == 5)
      {
        break;
      }

      if (v5 == v9)
      {
        goto LABEL_14;
      }
    }

    qword_1000344F0 = v5;
  }

LABEL_14:
  free(v1);
}

double sub_10001BB90(void *a1, char a2)
{
  if (a1)
  {
    v5.receiver = a1;
    v5.super_class = FPMemoryCategory;
    v3 = objc_msgSendSuper2(&v5, "init");
    if (v3)
    {
      v3[8] = a2;
      result = 0.0;
      *(v3 + 2) = 0u;
      *(v3 + 3) = 0u;
      *(v3 + 8) = 0;
    }
  }

  return result;
}

id *sub_10001BBF0(id *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = [a1[3] name];
      v5 = v2[2];
      v2[2] = v4;

      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

id sub_10001BC4C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      a1 = 0;

      return a1;
    }

    a1 = [*(a1 + 24) detailedName];
  }

  return a1;
}

id sub_10001BC9C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8) == 1)
    {
      sub_10001BBF0(a1);
    }

    else
    {
      [*(a1 + 24) fullName];
    }
    a1 = ;
    v1 = vars8;
  }

  return a1;
}

id *sub_10001BCE8(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[3] auxData];
    v3 = v2;
    if (*(v1 + 8) == 1)
    {
      v1 = v2;
    }

    else
    {
      v1 = [v1[3] detailedAuxData];
      if (v3)
      {
        v4 = [v3 fp_mergeWithData:v1 forceAggregate:1];

        v1 = v4;
      }
    }
  }

  return v1;
}

id sub_10001BD88(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 24) auxDataName];
    v3 = v2;
    if (*(a1 + 8) == 1)
    {
      v4 = v2;
    }

    else
    {
      v5 = [*(a1 + 24) detailedAuxDataName];
      if ([v5 length])
      {
        v6 = [[NSString alloc] initWithFormat:@"%@ %@", v3, v5];
      }

      else
      {
        v6 = v3;
      }

      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10001BE48(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v7 = v4;
    if (!*(a1 + 24))
    {
      objc_storeStrong((a1 + 24), a2);
      v5 = v7;
    }

    *(a1 + 32) += [v5 dirtySize];
    *(a1 + 40) += [v7 swappedSize];
    *(a1 + 48) += [v7 cleanSize];
    *(a1 + 56) += [v7 reclaimableSize];
    *(a1 + 64) += [v7 wiredSize];
    v4 = [v7 totalRegions];
    v5 = v7;
    *(a1 + 12) += v4;
  }

  return _objc_release_x1(v4, v5);
}