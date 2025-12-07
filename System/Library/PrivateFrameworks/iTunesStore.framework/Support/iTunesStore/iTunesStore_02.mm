void sub_10008EEB8(uint64_t a1)
{
  if (*a1)
  {
    v2 = (*(a1 + 16) - 6989 * (a1 ^ 0xA42C)) == 2630;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 12) + 1785193651 * (a1 ^ 0xF621A42C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10008EF6C@<X0>(int a1@<W8>)
{
  v5 = (a1 + 910854755) & 0xC9B57FB1;
  *v1 = (v2 + v5 - 2945) ^ v9;
  v6 = 2 * (v5 ^ 0xAD3);
  v12 = v10;
  v11 = v5 - ((((&v11 | 0x20E8A5DC) ^ 0xFFFFFFFE) - (~&v11 | 0xDF175A23)) ^ 0x39BFF633) * v4 - 717;
  (*(v3 + 8 * (v5 ^ 0x5E1)))(&v11);
  v11 = v6 - ((&v11 - 1878942147 - 2 * (&v11 & 0x90019E3D)) ^ 0x76A9322D) * v4 + 1552;
  v12 = v8;
  (*(v3 + 8 * (v6 ^ 0xCC4)))(&v11);
  return 0;
}

uint64_t sub_10008F21C()
{
  v5 = 1785193651 * ((((v3 - 192) | 0x77B21175) + (~(v3 - 192) | 0x884DEE8A)) ^ 0x8193B558);
  *(v3 - 192) = v1;
  *(v3 - 184) = v5 + v2 + 1105;
  *(v3 - 180) = v0 - v5 - 1802651705;
  v6 = (*(v4 + 8 * (v2 ^ 0xB67)))(v3 - 192);
  return (STACK[0x230])(v6);
}

uint64_t sub_10008F320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((38 * (v6 != (((v2 + v4 + 1264) | 0x68u) ^ 0x578))) ^ (v2 + v4 + 101))))();
}

uint64_t sub_10008F430(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *v6 = veorq_s8(*v8, xmmword_1002BE3C0);
  STACK[0x460] += 32;
  STACK[0x468] = a1;
  STACK[0x470] = a1;
  return (*(v9 + 8 * (((((v7 - 1852209632) & 0x6E667DF1) - 3339) * (v6 != a1)) ^ v7)))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10008F494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  LOBYTE(STACK[0x3F7]) = (v62 & 0x20) == 0;
  if ((v62 & 0x20) != 0)
  {
    v64 = 5;
  }

  else
  {
    v64 = 2;
  }

  LODWORD(STACK[0x414]) = v64;
  if (a8 <= -568992600)
  {
    if (a8 <= -1288193304)
    {
      if (a8 > -1762794139)
      {
        if (a8 > -1710786180)
        {
          if (a8 == -1710786179)
          {
            goto LABEL_54;
          }

          v68 = -1615123701;
        }

        else
        {
          if (a8 == -1762794138)
          {
            goto LABEL_54;
          }

          v68 = -1710786182;
        }

        goto LABEL_53;
      }

      if (a8 == -1950969267 || a8 == -1816919732)
      {
        goto LABEL_54;
      }

      v65 = -1797747877;
LABEL_41:
      v69 = a62;
      if (a8 == v65)
      {
        goto LABEL_42;
      }

      goto LABEL_10;
    }

    if (a8 <= -1156510251)
    {
      if (a8 == -1288193303 || a8 == -1217254596)
      {
        goto LABEL_54;
      }

      v68 = -1197833688;
      goto LABEL_53;
    }

    if (a8 > -730657143)
    {
      if (a8 == -730657142)
      {
        goto LABEL_54;
      }

      v68 = -649326129;
      goto LABEL_53;
    }

    if (a8 != -1156510250)
    {
      v68 = -1134443296;
      goto LABEL_53;
    }

LABEL_42:
    *&STACK[0x1790] = xmmword_1002BE330;
    return (*(v63 + 8 * (((((a62 - 1047) ^ 0xD0A) + 241) * ((v62 & 0x20) == 0)) ^ (a62 - 1287))))(a1, a2, a3, a4, a5, a6, a7);
  }

  if (a8 <= -195800036)
  {
    if (a8 > -308959714)
    {
      if (a8 > -200415463)
      {
        if (a8 == -200415462)
        {
          goto LABEL_54;
        }

        v68 = -198362357;
      }

      else
      {
        if (a8 == -308959713)
        {
          goto LABEL_54;
        }

        v68 = -222567236;
      }

      goto LABEL_53;
    }

    if (a8 == -568992599)
    {
      goto LABEL_54;
    }

    if (a8 != -542718102)
    {
      v65 = -456149908;
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if (a8 > 501090893)
  {
    if (a8 > 820506049)
    {
      if (a8 == 820506050)
      {
        goto LABEL_54;
      }

      v68 = 2033636393;
      goto LABEL_53;
    }

    if (a8 == 501090894)
    {
      goto LABEL_54;
    }

    v65 = 585038713;
    goto LABEL_41;
  }

  if (a8 <= -45684800)
  {
    if (a8 != -195800035)
    {
      v65 = -68345520;
      goto LABEL_41;
    }

LABEL_54:
    *&STACK[0x1790] = xmmword_1002BE320;
    return (*(v63 + 8 * ((7 * ((v62 >> 5) & 1)) | (a62 - 1294))))(a1, a2, a3, a4, a5, a6, a7);
  }

  if (a8 == -45684799)
  {
    goto LABEL_54;
  }

  v68 = 265443612;
LABEL_53:
  v69 = a62;
  if (a8 == v68)
  {
    goto LABEL_54;
  }

LABEL_10:
  if (((v69 ^ 0x58E) & v62) != 0)
  {
    v66 = 6;
  }

  else
  {
    v66 = 2;
  }

  if ((v62 & 2) != 0)
  {
    v66 = 1;
  }

  LODWORD(STACK[0x2AC]) = v66;
  return sub_10007D480();
}

uint64_t sub_10008F80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v30 = ((v29 - 922434491 - 2 * ((v29 - 144) & 0xC904C4D5)) ^ 0x1806E9AA) * v24;
  *(v27 + 8) = &a24;
  *(v29 - 144) = (v25 + 1214) ^ v30;
  *(v29 - 140) = v30 ^ 0x307A01A;
  v31 = (*(v26 + 8 * (v25 + 2270)))(v29 - 144, a2, a3, a4, a5, a6, a7, a8);
  return (*(v26 + 8 * (((2 * (v25 + 1197) - 5051) * (v28 == 0)) ^ (v25 - 794))))(v31);
}

uint64_t sub_10008F944(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = *(v11 + 48 * v9 + 36);
  v14 = v12 != a3 && v12 + a5 < ((v8 + 336857138) | 0xC8AB7020) + a8;
  return (*(v10 + 8 * ((760 * v14) ^ v8)))(a1, a2);
}

_BYTE *sub_10008FB70(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

uint64_t sub_10008FD80(uint64_t a1)
{
  [DownloadDatabaseSchema createSchemaInDatabase:*(a1 + 32)];
  [DownloadDatabaseSchema createFunctionsInDatabase:*(a1 + 32)];
  return 1;
}

void sub_100090068(uint64_t a1)
{
  v3 = objc_alloc_init(NSFileManager);
  v2 = [*(a1 + 32) stringByDeletingLastPathComponent];
  [v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];
}

uint64_t sub_10009016C(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = qword_100383D98;
  qword_100383D98 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100090278(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[Daemon daemon];
  [v1 releaseKeepAliveAssertion:@"com.apple.itunesstored.DownloadsDatabase"];
}

void sub_1000903A0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[Daemon daemon];
  [v1 releaseKeepAliveAssertion:@"com.apple.itunesstored.DownloadsDatabase"];
}

void sub_1000907D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000907EC(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_100090A3C(uint64_t a1)
{
  v2 = [*(a1 + 32) _newSessionDescription];
  v3 = [[DownloadsSession alloc] initWithSessionDescriptor:v2];
  (*(*(a1 + 40) + 16))();

  return 1;
}

void sub_1000912F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100091310(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) = (*(*(a1 + 48) + 16))();
  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    v4 = 0;
    return v4 & 1;
  }

  v2 = [*(a1 + 32) changeset];
  if (([v2 downloadChangeTypes] & 0x20) != 0)
  {
    v3 = [v2 restorableDownloadIDs];
  }

  else
  {
    v3 = 0;
  }

  v5 = [v2 policyChangedDownloadIDs];
  if ([v5 count])
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = v10;
      v36 = 138412546;
      v37 = v10;
      v38 = 2048;
      v39 = [v5 count];
      v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 1, "%@: Reloading for %ld download policy change(s)", &v36, 22);

      if (!v12)
      {
LABEL_19:

        v13 = [*(*(a1 + 40) + 40) restartDownloadsWithIdentifiers:v5];
        v14 = [v13 mutableCopy];

        goto LABEL_21;
      }

      v9 = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      v32 = v9;
      SSFileLog();
    }

    goto LABEL_19;
  }

  v14 = 0;
LABEL_21:
  v15 = [v2 pipelineRestarts];
  v16 = [v15 mutableCopy];

  if ([v14 count])
  {
    [v16 minusOrderedSet:v14];
  }

  if (![v16 count])
  {
    goto LABEL_37;
  }

  v17 = +[SSLogConfig sharedDaemonConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  v18 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    v19 = v18 | 2;
  }

  else
  {
    v19 = v18;
  }

  v20 = [v17 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v19;
  }

  else
  {
    v21 = v19 & 2;
  }

  if (!v21)
  {
    goto LABEL_35;
  }

  v22 = v2;
  v23 = v5;
  v24 = v3;
  v25 = objc_opt_class();
  v35 = v25;
  v26 = [v16 count];
  v36 = 138412546;
  v37 = v25;
  v3 = v24;
  v5 = v23;
  v2 = v22;
  v38 = 2048;
  v39 = v26;
  LODWORD(v34) = 22;
  v27 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v20, 0, "%@: Restarting %ld download(s) by request", &v36, v34);

  if (v27)
  {
    v20 = [NSString stringWithCString:v27 encoding:4];
    free(v27);
    v33 = v20;
    SSFileLog();
LABEL_35:
  }

  v28 = [*(*(a1 + 40) + 40) restartDownloadsWithIdentifiers:v16];
  [v14 unionOrderedSet:v28];

LABEL_37:
  if ([v14 count] || objc_msgSend(v3, "count"))
  {
    v29 = [v2 pipelineAdditions];
    v30 = [v29 mutableCopy];

    if ([v14 count])
    {
      [v30 minusOrderedSet:v14];
    }

    if ([v3 count])
    {
      [v30 minusOrderedSet:v3];
    }
  }

  else
  {
    v30 = [v2 pipelineAdditions];
  }

  if ([v30 count])
  {
    [*(*(a1 + 40) + 40) addDownloadsWithIdentifiers:v30];
  }

  v4 = *(*(*(a1 + 56) + 8) + 24);
  return v4 & 1;
}

id *sub_100091C80(id *result, uint64_t a2, void *a3)
{
  if (*a3)
  {
    return [result[4] addObject:?];
  }

  return result;
}

void sub_10009364C(uint64_t a1, uint64_t a2)
{
  v3 = [[NSNumber alloc] initWithLongLong:a2];
  [*(a1 + 32) addObject:v3];
}

void sub_100093C24(uint64_t a1, id a2, void *a3)
{
  if (*a3)
  {
    v5 = [*(a1 + 32) objectForKey:?];
    if (v5)
    {
      if ([v5 longLongValue] != a2)
      {
        v6 = [[NSNumber alloc] initWithLongLong:a2];
        [*(a1 + 40) addObject:v6];
      }
    }
  }
}

void sub_100093E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100093E9C(uint64_t a1, uint64_t a2)
{
  v6 = [[DownloadEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v4 = [*(a1 + 40) _resetDownload:? withValues:? isUserIntiated:?];
  if (v4)
  {
    v5 = [[NSNumber alloc] initWithLongLong:a2];
    [*(a1 + 48) addObject:v5];
  }

  *(*(*(a1 + 56) + 8) + 24) |= v4;
}

void sub_100094948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10009498C(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  result = *a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

void sub_100094F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100094F88(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  result = *a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a5 = 1;
  return result;
}

void sub_100097D18(uint64_t a1)
{
  v14 = [*(a1 + 32) _dictionary];
  v2 = [objc_msgSend(v14 objectForKey:{@"assetOrdering", "mutableCopy"}];
  if (!v2)
  {
    v2 = objc_alloc_init(NSMutableArray);
  }

  v15 = a1;
  v3 = [*(a1 + 40) manifestItemDictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v2;
  v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 count];
        if (v9 == [v3 count])
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (!v10)
          {
            goto LABEL_22;
          }

          v11 = v10;
          v12 = *v18;
LABEL_11:
          v13 = 0;
          while (1)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v8);
            }

            if (![objc_msgSend(v8 objectForKey:{*(*(&v17 + 1) + 8 * v13)), "isEqual:", objc_msgSend(v3, "objectForKey:", *(*(&v17 + 1) + 8 * v13))}])
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
              if (v11)
              {
                goto LABEL_11;
              }

              goto LABEL_22;
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  if (v3)
  {
    [obj addObject:v3];
    [v14 setObject:obj forKey:@"assetOrdering"];
    [*(v15 + 32) _writeToFile];
  }

LABEL_22:
}

id sub_1000980B8(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "_dictionary")];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [[PurchaseManifestItem alloc] initWithManifestItemDictionary:*(*(&v9 + 1) + 8 * v6)];
        if (v7)
        {
          v8 = v7;
          [*(a1 + 40) addObject:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_100098254(uint64_t a1)
{
  v39 = [*(a1 + 32) _dictionary];
  v1 = [objc_msgSend(v39 objectForKey:{@"assetOrdering", "mutableCopy"}];
  if (!v1)
  {
    v1 = objc_alloc_init(NSMutableArray);
  }

  v2 = objc_alloc_init(NSMutableSet);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v3 = [v1 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v53;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v53 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [[PurchaseManifestItem alloc] initWithManifestItemDictionary:*(*(&v52 + 1) + 8 * i)];
        v8 = [(PurchaseManifestItem *)v7 relativeMetadataPath];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v4 = [v1 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v4);
  }

  v47 = [*(*(a1 + 32) + 24) stringByDeletingLastPathComponent];
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (v13)
  {
    v14 = objc_opt_class();
    v57 = 138412546;
    v58 = v14;
    v59 = 2112;
    v60 = v47;
    v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v12, 1, "%@: Rebuilding manifest for path: %@", &v57, 22);
    if (v15)
    {
      v16 = v15;
      v17 = [NSString stringWithCString:v15 encoding:4];
      free(v16);
      v37 = v17;
      SSFileLog();
    }
  }

  v38 = objc_alloc_init(NSFileManager);
  v18 = [v38 contentsOfDirectoryAtPath:v47 error:0];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v49;
    v46 = SSDownloadMetadataKeyAdditionalInfo;
    v43 = SSDownloadMetadataKeyArtworkFileName;
    v42 = SSDownloadMetadataKeyMediaFileName;
    v41 = SSDownloadMetadataKeyXMLFeedFileName;
    v44 = v18;
    v45 = v1;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v48 + 1) + 8 * j);
        if ([objc_msgSend(v23 pathExtension] && (objc_msgSend(v2, "containsObject:", v23) & 1) == 0)
        {
          v24 = -[StoreDownload initWithContentsOfFile:]([StoreDownload alloc], "initWithContentsOfFile:", [v47 stringByAppendingPathComponent:v23]);
          v25 = [(StoreDownload *)v24 valueForMetadataKey:v46];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = objc_alloc_init(PurchaseManifestItem);
            [(PurchaseManifestItem *)v26 setRelativeMetadataPath:v23];
            v27 = [v25 objectForKey:v43];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(PurchaseManifestItem *)v26 setRelativeArtworkPath:v27];
            }

            v28 = [v25 objectForKey:v42];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(PurchaseManifestItem *)v26 setRelativeMediaAssetPath:v28];
            }

            v29 = [v25 objectForKey:v41];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(PurchaseManifestItem *)v26 setRelativeFeedAssetPath:v29];
            }

            v30 = +[SSLogConfig sharedDaemonConfig];
            if (!v30)
            {
              v30 = +[SSLogConfig sharedConfig];
            }

            LODWORD(v31) = [v30 shouldLog];
            if ([v30 shouldLogToDisk])
            {
              LODWORD(v31) = v31 | 2;
            }

            v32 = [v30 OSLogObject];
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v31 = v31;
            }

            else
            {
              v31 &= 2u;
            }

            if (v31)
            {
              v33 = objc_opt_class();
              v57 = 138412546;
              v58 = v33;
              v59 = 2112;
              v60 = v23;
              v37 = &v57;
              v34 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, v32, 1, "%@: Adding file to purchase manifest: %@");
              if (v34)
              {
                v35 = v34;
                v36 = [NSString stringWithCString:v34 encoding:4];
                free(v35);
                v37 = v36;
                SSFileLog();
              }
            }

            [v2 addObject:{v23, v37}];
            v1 = v45;
            [v45 addObject:{-[PurchaseManifestItem manifestItemDictionary](v26, "manifestItemDictionary")}];

            v18 = v44;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v20);
  }

  [v39 setObject:v1 forKey:@"assetOrdering"];
  [*(a1 + 32) _writeToFile];
}

void sub_100099090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10009913C(uint64_t a1)
{
  v32 = [*(a1 + 32) _dictionary];
  v2 = [v32 objectForKey:@"assetOrdering"];
  v3 = [v2 count];
  if (v3 >= 1)
  {
    v4 = v3;
    v33 = v2;
    do
    {
      v5 = v4--;
      v6 = [v2 objectAtIndex:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 objectForKey:@"relativeMediaAssetPath"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([*(a1 + 40) containsObject:v7])
          {
            v8 = +[SSLogConfig sharedDaemonConfig];
            if (!v8)
            {
              v8 = +[SSLogConfig sharedConfig];
            }

            v9 = [v8 shouldLog];
            if ([v8 shouldLogToDisk])
            {
              LODWORD(v10) = v9 | 2;
            }

            else
            {
              LODWORD(v10) = v9;
            }

            v11 = [v8 OSLogObject];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v10 = v10;
            }

            else
            {
              v10 &= 2u;
            }

            if (v10)
            {
              v12 = objc_opt_class();
              v34 = 138412546;
              v35 = v12;
              v36 = 2112;
              v37 = v7;
              LODWORD(v31) = 22;
              v13 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v11, 1, "%@: Removing item from purchase manifest: %@", &v34, v31);
              if (v13)
              {
                v14 = v13;
                v15 = [NSString stringWithCString:v13 encoding:4];
                free(v14);
                v30 = v15;
                SSFileLog();
              }
            }

            [*(a1 + 48) addObject:{objc_msgSend(*(a1 + 56), "stringByAppendingPathComponent:", v7, v30)}];
            for (i = 0; i != 3; ++i)
            {
              v17 = [v6 objectForKey:off_100327398[i]];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [*(a1 + 64) addObject:{objc_msgSend(*(a1 + 56), "stringByAppendingPathComponent:", v17)}];
              }
            }

            v2 = v33;
            [v33 removeObjectAtIndex:v4];
          }
        }
      }
    }

    while (v5 > 1);
  }

  if (v2)
  {
    [v32 setObject:v2 forKey:@"assetOrdering"];
  }

  v18 = [*(a1 + 48) count];
  if (v18 != [*(a1 + 40) count])
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      LODWORD(v21) = v20 | 2;
    }

    else
    {
      LODWORD(v21) = v20;
    }

    v22 = [v19 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v24 = [*(a1 + 40) count];
      v25 = [*(a1 + 48) count];
      v34 = 138412546;
      v35 = v23;
      v36 = 2048;
      v37 = (v24 - v25);
      LODWORD(v31) = 22;
      v26 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v22, 0, "%@: Missing %lu paths from manifest", &v34, v31);
      if (v26)
      {
        v27 = v26;
        v28 = [NSString stringWithCString:v26 encoding:4];
        free(v27);
        v30 = v28;
        SSFileLog();
      }
    }

    *(*(*(a1 + 72) + 8) + 40) = [NSError errorWithDomain:SSErrorDomain code:600 userInfo:0];
  }

  result = [*(a1 + 32) _writeToFile];
  if ((result & 1) == 0)
  {
    return [*(a1 + 48) removeAllObjects];
  }

  return result;
}

void sub_1000995F8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if (SSXPCConnectionHasEntitlement())
  {
    int64 = xpc_dictionary_get_int64(*(a1 + 40), "1");
    v4 = xpc_dictionary_get_int64(*(a1 + 40), "2");
    v5 = [*(a1 + 48) _sharedManifestWithManifestType:int64];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 purchaseManifestItems];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v8)
      {
        goto LABEL_22;
      }

      v9 = v8;
      v10 = *v17;
      while (1)
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = 0;
          v13 = *(*(&v16 + 1) + 8 * v11);
          if (v4 > 1)
          {
            if (v4 == 2)
            {
              v14 = [v13 relativeMetadataPath];
            }

            else
            {
              if (v4 != 3)
              {
                goto LABEL_18;
              }

              v14 = [v13 relativeFeedAssetPath];
            }
          }

          else if (v4)
          {
            if (v4 != 1)
            {
              goto LABEL_18;
            }

            v14 = [v13 relativeMediaAssetPath];
          }

          else
          {
            v14 = [v13 relativeArtworkPath];
          }

          v12 = v14;
LABEL_18:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v2 addObject:v12];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (!v9)
        {
LABEL_22:
          [objc_msgSend(v6 "path")];
          break;
        }
      }
    }
  }

  reply = xpc_dictionary_create_reply(*(a1 + 40));
  SSXPCDictionarySetCFObject();
  SSXPCDictionarySetCFObject();
  xpc_connection_send_message(*(a1 + 32), reply);
  xpc_release(reply);
}

void sub_100099908(uint64_t a1)
{
  if (SSXPCConnectionHasEntitlement())
  {
    [objc_msgSend(*(a1 + 48) _sharedManifestWithManifestType:{xpc_dictionary_get_int64(*(a1 + 40), "1")), "rebuildManifest"}];
  }

  reply = xpc_dictionary_create_reply(*(a1 + 40));
  xpc_connection_send_message(*(a1 + 32), reply);

  xpc_release(reply);
}

void sub_1000999FC(uint64_t a1)
{
  v9 = 0;
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSIsDaemon())
  {
    v2 = SSXPCDictionaryCopyCFObject();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [[NSMutableSet alloc] initWithObjects:{v2, 0, v9}];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_11;
      }

      v3 = [[NSMutableSet alloc] initWithArray:v2];
    }

    v4 = v3;
    if (v3)
    {
      v5 = [objc_msgSend(*(a1 + 48) _sharedManifestWithManifestType:{xpc_dictionary_get_int64(*(a1 + 40), "1")), "removeItemsWithAssetPaths:error:", v3, &v9}];
      v6 = [v5 count];
      v7 = v6 == [v4 count];
      if (!v7)
      {
        [v4 minusSet:v5];
        [v4 allObjects];
      }

      goto LABEL_14;
    }

LABEL_11:
    v7 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v7 = 0;
  v9 = [NSError errorWithDomain:SSErrorDomain code:107 userInfo:0];
LABEL_15:
  reply = xpc_dictionary_create_reply(*(a1 + 40));
  xpc_dictionary_set_BOOL(reply, "0", v7);
  SSXPCDictionarySetCFObject();
  SSXPCDictionarySetCFObject();
  xpc_connection_send_message(*(a1 + 32), reply);
  xpc_release(reply);
}

id sub_100099CA0(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  return [+[Daemon daemon](Daemon "daemon")];
}

id sub_10009B0FC(uint64_t a1, void *a2)
{
  result = [objc_msgSend(objc_msgSend(a2 "iCloudIdentifier")];
  if (result)
  {
    v5 = [a2 iTunesIdentifier];
    v6 = *(a1 + 40);

    return [v5 isEqualToNumber:v6];
  }

  return result;
}

id sub_10009B160(uint64_t a1, void *a2)
{
  v3 = [a2 iTunesIdentifier];
  v4 = *(a1 + 32);

  return [v3 isEqualToNumber:v4];
}

int64_t sub_10009B19C(id a1, id a2, id a3)
{
  if ([a2 firstName] || (result = objc_msgSend(a3, "firstName")) != 0)
  {
    if (([a2 isMe] & 1) != 0 || !objc_msgSend(a3, "firstName"))
    {
      return -1;
    }

    else if (([a3 isMe] & 1) != 0 || !objc_msgSend(a2, "firstName"))
    {
      return 1;
    }

    else
    {
      v6 = [a2 firstName];
      v7 = [a3 firstName];

      return [v6 localizedCaseInsensitiveCompare:v7];
    }
  }

  return result;
}

uint64_t sub_10009BFB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009C094(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 32);
  v4 = (v2 + 32);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

void sub_10009D8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, ...)
{
  va_start(va, a20);
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009D908(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009D920(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v6 || *(*(*(a1 + 48) + 8) + 40))
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v14 = a1;
      v15 = v6;
      v16 = WeakRetained;
      v17 = v7;
      v18 = objc_opt_class();
      v50 = v18;
      v19 = [v17 localizedDescription];
      v51 = 138412546;
      v52 = v18;
      v7 = v17;
      WeakRetained = v16;
      v6 = v15;
      a1 = v14;
      v53 = 2112;
      v54 = v19;
      v20 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v12, 0, "%@: Failed to retrieve conditions: %@", &v51, 22);

      if (v20)
      {
        v21 = [NSString stringWithCString:v20 encoding:4];
        free(v20);
        SSFileLog();
      }
    }

    else
    {
    }

    v22 = (*(*(a1 + 48) + 8) + 40);
    v23 = a3;
LABEL_16:
    objc_storeStrong(v22, v23);
    goto LABEL_17;
  }

  if ([v6 isUserAccepted])
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v25 |= 2u;
    }

    v26 = [v24 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = v25;
    }

    else
    {
      v27 = v25 & 2;
    }

    if (v27)
    {
      v51 = 138412290;
      v52 = objc_opt_class();
      v28 = v52;
      v29 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, v26, 2, "%@: Terms and conditions are valid.", &v51, 12);

      if (v29)
      {
        v30 = [NSString stringWithCString:v29 encoding:4];
        free(v29);
        SSFileLog();
      }
    }

    else
    {
    }

    *(*(a1 + 32) + 129) = 1;
    *(*(a1 + 32) + 128) = 1;
  }

  else
  {
    v31 = [v6 currentText];
    v32 = [v31 length];

    v33 = +[SSLogConfig sharedDaemonConfig];
    v34 = v33;
    if (v32)
    {
      if (!v33)
      {
        v34 = +[SSLogConfig sharedConfig];
      }

      v35 = [v34 shouldLog];
      if ([v34 shouldLogToDisk])
      {
        v35 |= 2u;
      }

      v36 = [v34 OSLogObject];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = v35;
      }

      else
      {
        v37 = v35 & 2;
      }

      if (v37)
      {
        v51 = 138412290;
        v52 = objc_opt_class();
        v38 = v52;
        v39 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &_mh_execute_header, v36, 2, "%@: Terms and conditions are being copied.", &v51, 12);

        if (v39)
        {
          v40 = [NSString stringWithCString:v39 encoding:4];
          free(v39);
          SSFileLog();
        }
      }

      else
      {
      }

      v22 = (*(a1 + 32) + 120);
      v23 = a2;
      goto LABEL_16;
    }

    if (!v33)
    {
      v34 = +[SSLogConfig sharedConfig];
    }

    v41 = [v34 shouldLog];
    if ([v34 shouldLogToDisk])
    {
      v41 |= 2u;
    }

    v42 = [v34 OSLogObject];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v41;
    }

    else
    {
      v43 = v41 & 2;
    }

    if (v43)
    {
      v51 = 138412290;
      v52 = objc_opt_class();
      v44 = v52;
      v45 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &_mh_execute_header, v42, 0, "%@: Terms and conditions are empty.", &v51, 12);

      if (v45)
      {
        v46 = [NSString stringWithCString:v45 encoding:4];
        free(v45);
        SSFileLog();
      }
    }

    else
    {
    }

    v47 = SSError();
    v48 = *(*(a1 + 48) + 8);
    v49 = *(v48 + 40);
    *(v48 + 40) = v47;
  }

LABEL_17:
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10009E518(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      LODWORD(v8) = v7 | 2;
    }

    else
    {
      LODWORD(v8) = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v8;
    }

    else
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = *(*(a1 + 32) + 120);
      v12 = v10;
      v13 = [v11 currentVersionIdentifier];
      v14 = [v5 localizedDescription];
      v16 = 138412802;
      v17 = v10;
      v18 = 2048;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v15 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 0, "%@: Server-side acceptance of [%lld] failed with error: %@", &v16, 32);

      if (!v15)
      {
LABEL_15:

        goto LABEL_16;
      }

      v9 = [NSString stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
}

void sub_10009EE20(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = v6 | 2;
    }

    else
    {
      LODWORD(v7) = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v12 = 138412290;
      v13 = objc_opt_class();
      v10 = v13;
      v11 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v8, 0, "%@: Could not display terms sheet", &v12, 12);

      if (!v11)
      {
LABEL_15:

        dispatch_semaphore_signal(*(*(a1 + 32) + 112));
        goto LABEL_16;
      }

      v8 = [NSString stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog();
    }

    goto LABEL_15;
  }

  [*(a1 + 32) lock];
  objc_storeStrong((*(a1 + 32) + 104), a2);
  [*(*(a1 + 32) + 104) setDelegate:?];
  [*(a1 + 32) unlock];
LABEL_16:
}

NSURL *__cdecl sub_10009F230(id a1, SSURLBagContext *a2)
{
  v2 = a2;
  v3 = +[ISURLBagCache sharedCache];
  v4 = [v3 URLBagForContext:v2];

  v5 = [v4 valueForKey:@"automatic-downloads2"];
  if (!v5)
  {
    v5 = [v4 valueForKey:@"automatic-downloads"];
  }

  v6 = [v5 objectForKey:@"downloads-url"];
  if (v6)
  {
    v7 = [NSURL URLWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1000A2E10(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = [v7 logKey];
  v11 = 138543618;
  v12 = v6;
  v13 = 2114;
  v14 = v9;
  v10 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 0, "%{public}@: [%{public}@] Engagement tasks completed asyncronously", &v11, 22);

  if (v10)
  {
    v5 = [NSString stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog();
LABEL_12:
  }
}

void sub_1000A68B4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKey:v7];
  }
}

void sub_1000A84B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) finishWithError:a3];
  }

  else
  {
    v7 = [v5 request];

    v8 = +[AMSLogConfig sharedConfig];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v10 = [v9 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = AMSLogKey();
        *buf = 138543618;
        v26 = v11;
        v27 = 2114;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling engagement request asyncronously ", buf, 0x16u);
      }

      v13 = +[AMSSystemEngagementTask createBagForSubProfile];
      v14 = [AMSSystemEngagementTask alloc];
      v15 = [v6 request];
      v16 = [v14 initWithRequest:v15 bag:v13];

      v17 = [v16 present];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000A8770;
      v23[3] = &unk_100327680;
      v22 = *(a1 + 32);
      v18 = v22.i64[0];
      v24 = vextq_s8(v22, v22, 8uLL);
      [v17 addFinishBlock:v23];
    }

    else
    {
      if (!v8)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v9 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = AMSLogKey();
        *buf = 138543618;
        v26 = v20;
        v27 = 2114;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No engagement request provided.", buf, 0x16u);
      }

      [*(a1 + 32) finishWithSuccess];
    }
  }
}

void sub_1000A8770(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Engagement completed successfully", &v9, 0x16u);
    }
  }

  [*(a1 + 40) finishWithSuccess:v4 == 0 error:v4];
}

void sub_1000A88A0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[AMSLogConfig sharedConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = v6;
    v8 = &stru_10033CC30;
    v9 = 138543874;
    v10 = v5;
    if (v2)
    {
      v8 = v2;
    }

    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Engagement failed. %{public}@", &v9, 0x20u);
  }
}

void sub_1000A9C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A9D8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A9DA4(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = a5;
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (v13)
  {
    v14 = a1[4];
    *v37 = 138543362;
    *&v37[4] = v14;
    v15 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v12, 0, "%{public}@: [ASN] DisplayPaymentSheetOperation did complete", v37, 12);

    if (!v15)
    {
      goto LABEL_13;
    }

    v12 = [NSString stringWithCString:v15 encoding:4];
    free(v15);
    v35 = v12;
    SSFileLog();
  }

LABEL_13:
  if (v8)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a5);
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (!v20)
    {
      goto LABEL_48;
    }

    v21 = a1[4];
    *v37 = 138543618;
    *&v37[4] = v21;
    *&v37[12] = 2112;
    *&v37[14] = v8;
    LODWORD(v36) = 22;
    v22 = "%{public}@: [ASN] Payment sheet authorized failed with error: %@";
    goto LABEL_45;
  }

  if ((a4 & 1) == 0)
  {
    v28 = SSError();
    v29 = *(a1[5] + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v31 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v32 = v31 | 2;
    }

    else
    {
      v32 = v31;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = v32;
    }

    else
    {
      v20 = v32 & 2;
    }

    if (!v20)
    {
      goto LABEL_48;
    }

    v33 = a1[4];
    *v37 = 138543618;
    *&v37[4] = v33;
    *&v37[12] = 2114;
    *&v37[14] = 0;
    LODWORD(v36) = 22;
    v22 = "%{public}@: [ASN] Payment sheet authorization failed with error: %{public}@";
LABEL_45:
    v27 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 16, v22, v37, v36, *v37, *&v37[8]);
    goto LABEL_46;
  }

  *(*(a1[6] + 8) + 24) = a4;
  v16 = +[SSLogConfig sharedDaemonConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  v23 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v24 = v23 | 2;
  }

  else
  {
    v24 = v23;
  }

  v19 = [v16 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 & 2;
  }

  if (!v25)
  {
    goto LABEL_48;
  }

  v26 = a1[4];
  *v37 = 138543362;
  *&v37[4] = v26;
  LODWORD(v36) = 12;
  v27 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, v19, 0, "%{public}@: [ASN] Payment sheet did authorize payment with A/S/N", v37, v36, *v37, *&v37[8]);
LABEL_46:
  v34 = v27;

  if (v34)
  {
    v19 = [NSString stringWithCString:v34 encoding:4];
    free(v34);
    SSFileLog();
LABEL_48:
  }
}

void sub_1000AA208(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 actionType] == 3)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000AA284(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v9 = [v3 buttons];
    v5 = [v4 selectedButtonIndex];

    v6 = [v9 objectAtIndex:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_1000AB900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AB924(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5 && !v6)
    {
      v9 = OBJC_IVAR___ISOperation__lock;
      [*(WeakRetained + OBJC_IVAR___ISOperation__lock) lock];
      v10 = [v5 copy];
      v11 = v8[41];
      v8[41] = v10;

      [*(v8 + v9) unlock];
      goto LABEL_31;
    }

    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      v28 = 138543362;
      v29 = v6;
      v17 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, v15, 16, "PurchaseOperation: Failed to score device: %{public}@", &v28, 12);

      if (!v17)
      {
        goto LABEL_17;
      }

      v15 = [NSString stringWithCString:v17 encoding:4];
      free(v17);
      v26 = v15;
      SSFileLog();
    }

LABEL_17:
    v18 = [*(*(a1 + 32) + 176) context];
    v19 = [v18 serverEndpoint];

    if (v19 != 2)
    {
      goto LABEL_31;
    }

    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    v21 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v20 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 2;
    }

    if (v24)
    {
      LOWORD(v28) = 0;
      LODWORD(v27) = 2;
      v25 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, v23, 16, "PurchaseOperation: Attempting to restart a v1 device score", &v28, v27);

      if (!v25)
      {
LABEL_30:

        [v8 _scoreDeviceRetryFailedV2Score];
        goto LABEL_31;
      }

      v23 = [NSString stringWithCString:v25 encoding:4];
      free(v25);
      SSFileLog();
    }

    goto LABEL_30;
  }

LABEL_31:
}

void sub_1000ABE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000ABE94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5 && !v6)
    {
      v9 = OBJC_IVAR___ISOperation__lock;
      [*(WeakRetained + OBJC_IVAR___ISOperation__lock) lock];
      v10 = [v5 copy];
      v11 = v8[41];
      v8[41] = v10;

      [*(v8 + v9) unlock];
      goto LABEL_18;
    }

    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      v18 = 138543362;
      v19 = v6;
      v17 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, v15, 16, "PurchaseOperation: Failed to score device on retry: %{public}@", &v18, 12);

      if (!v17)
      {
LABEL_17:

        goto LABEL_18;
      }

      v15 = [NSString stringWithCString:v17 encoding:4];
      free(v17);
      SSFileLog();
    }

    goto LABEL_17;
  }

LABEL_18:
}

void sub_1000AC4A0(id a1)
{
  v1 = arc4random();

  srand48(v1);
}

void sub_1000AD348(uint64_t a1)
{
  if (!*(*(a1 + 32) + 136))
  {
    *(*(a1 + 32) + 136) = objc_alloc_init(NSMutableSet);
  }

  v2 = [*(a1 + 40) copy];
  [*(*(a1 + 32) + 136) addObject:v2];
}

void sub_1000AD4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000AD4E0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 136) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_1000AD604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000AD61C(uint64_t a1)
{
  result = *(*(a1 + 32) + 144);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_1000AD814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000AD82C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 136) copy];
  v2 = *(*(a1 + 32) + 136);

  return [v2 removeAllObjects];
}

void *sub_1000ADAB4(void *result)
{
  v1 = *(result[4] + 144);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 144) = result;
  }

  return result;
}

void sub_1000ADDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000ADDC8(uint64_t a1)
{
  v2 = [NSString alloc];
  v4.receiver = *(a1 + 32);
  v4.super_class = DownloadHandlerClient;
  result = [v2 initWithFormat:@"%@: Blocks: %d, Ignores: (%@)", objc_msgSendSuper2(&v4, "description"), *(*(a1 + 32) + 161), *(*(a1 + 32) + 144)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id sub_1000AEBF0(uint64_t a1, float a2)
{
  v3 = OBJC_IVAR___ISOperation__progress;
  [*(*(a1 + 32) + OBJC_IVAR___ISOperation__progress) setCurrentValue:(a2 * 100.0)];
  [*(*(a1 + 32) + v3) snapshot];
  v4 = *(a1 + 32);

  return [v4 sendProgressToDelegate];
}

id sub_1000B1270(uint64_t a1, uint64_t a2)
{
  result = [*(*(a1 + 32) + 8) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      v5 = SSSQLiteCopyFoundationValueForStatementColumn();
      [*(a1 + 40) addObject:v5];

      result = [*(*(a1 + 32) + 8) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

void sub_1000B15F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained batterySaverWatcherDidChangeState:*(a1 + 32)];
}

void sub_1000B1778(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000B1794(uint64_t a1, int a2)
{
  if (*(*(a1 + 32) + 24) == a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _updateStatus];
  }
}

id sub_1000B17E8(uint64_t a1)
{
  result = [*(a1 + 32) _getState];
  *(*(a1 + 32) + 8) = result != 0;
  return result;
}

CFDataRef sub_1000B18E8(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v15 = 0;
  v4 = sub_1000B33F4();
  sub_10004CD24(v4, a1, 0, a2, &v16, &v15);
  if (!v5)
  {
    return sub_1000B1A94(v16, v15);
  }

  v6 = v5;
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (v11)
  {
    v17 = 136315394;
    v18 = "AOU264455_9";
    v19 = 2048;
    v20 = v6;
    v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 16, "%s: Failed with error: %ld", &v17, 22);
    if (v12)
    {
      v13 = v12;
      [NSString stringWithCString:v12 encoding:4];
      free(v13);
      SSFileLog();
    }
  }

  result = v16;
  if (v16)
  {
    sub_10007374C(v16);
    return 0;
  }

  return result;
}

CFDataRef sub_1000B1A94(const UInt8 *a1, unsigned int a2)
{
  *&v7.reallocate = unk_100327918;
  v7.preferredSize = 0;
  memset(&v7, 0, 48);
  v4 = CFAllocatorCreate(0, &v7);
  v5 = CFDataCreateWithBytesNoCopy(0, a1, a2, v4);
  CFRelease(v4);
  return v5;
}

CFDataRef sub_1000B1B1C(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = 0;
  HIDWORD(v28) = 0;
  v30 = 0;
  memset(v35, 0, sizeof(v35));
  v6 = sub_1000B25D8(v35);
  if (a3)
  {
    if (v6)
    {
      v7 = sub_1000199F0(0, v35, [a3 UTF8String], &v30);
      if (v7)
      {
        v8 = v7;
        v9 = +[SSLogConfig sharedDaemonConfig];
        if (!v9)
        {
          v9 = +[SSLogConfig sharedConfig];
        }

        v10 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v11 = v10 | 2;
        }

        else
        {
          v11 = v10;
        }

        v12 = [v9 OSLogObject];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = v11;
        }

        else
        {
          v13 = v11 & 2;
        }

        if (v13)
        {
          v31 = 136315394;
          v32 = "AOU264455_107";
          v33 = 2048;
          v34 = v8;
          LODWORD(v28) = 22;
          v14 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v12, 16, "%s: Failed with error: %ld", &v31, v28);
          if (v14)
          {
            v15 = v14;
            v16 = [NSString stringWithCString:v14 encoding:4];
            free(v15);
            v27 = v16;
            SSFileLog();
          }
        }
      }
    }
  }

  sub_10004CD24(v30, a1, 0, a2, &v29, &v28 + 4);
  if (!v17)
  {
    return sub_1000B1A94(v29, HIDWORD(v28));
  }

  v18 = v17;
  v19 = +[SSLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  v20 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v21 = v20 | 2;
  }

  else
  {
    v21 = v20;
  }

  v22 = [v19 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = v21;
  }

  else
  {
    v23 = v21 & 2;
  }

  if (v23)
  {
    LODWORD(v35[0]) = 136315394;
    *(v35 + 4) = "AOU264455_7";
    WORD2(v35[1]) = 2048;
    *(&v35[1] + 6) = v18;
    LODWORD(v28) = 22;
    v24 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, v22, 16, "%s: Failed with error: %ld", v35, v28);
    if (v24)
    {
      v25 = v24;
      [NSString stringWithCString:v24 encoding:4];
      free(v25);
      SSFileLog();
    }
  }

  result = v29;
  if (v29)
  {
    sub_10007374C(v29);
    return 0;
  }

  return result;
}

id sub_1000B1E14()
{
  v19 = 0;
  v18 = 0;
  v0 = sub_1000B33F4();
  sub_10004D8FC(v0, &v19, &v18);
  if (!v1)
  {
    v9 = [NSData alloc];
    v10 = [v9 initWithBytes:v19 length:v18];
    goto LABEL_27;
  }

  v2 = v1;
  if (v1 == -42022)
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (!v7)
    {
      goto LABEL_26;
    }

    v20 = 136315394;
    v21 = "AOU264455_1";
    v22 = 2048;
    v23 = -42022;
    v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v6, 0, "%s: Ignoring invalid signature error: %ld", &v20, 22);
  }

  else
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    if (!v15)
    {
      goto LABEL_26;
    }

    v20 = 136315394;
    v21 = "AOU264455_1";
    v22 = 2048;
    v23 = v2;
    v8 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v14, 0, "%s: Failed with error: %ld", &v20, 22);
  }

  if (v8)
  {
    v16 = v8;
    [NSString stringWithCString:v8 encoding:4];
    free(v16);
    SSFileLog();
  }

LABEL_26:
  v10 = 0;
LABEL_27:
  if (v19)
  {
    sub_10007374C(v19);
  }

  return v10;
}

uint64_t sub_1000B208C(void *a1, void *a2)
{
  memset(v30, 0, sizeof(v30));
  v24 = 0;
  v25 = 0;
  v4 = sub_1000B33F4();
  sub_10007AAB4(v4, 0, 0, 0, &v25, &v24, v30, &v24 + 4);
  if (!v5)
  {
    v13 = objc_alloc_init(NSMutableArray);
    if (HIDWORD(v24))
    {
      v14 = 0;
      do
      {
        v15 = [[NSNumber alloc] initWithUnsignedInteger:*(v30 + v14)];
        [v13 addObject:v15];

        ++v14;
      }

      while (v14 < HIDWORD(v24));
    }

    v16 = [NSData alloc];
    v12 = [v16 initWithBytes:v25 length:v24];
    goto LABEL_20;
  }

  v6 = v5;
  if (v5 == -42022)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v26 = 136315394;
      v27 = "AOU264455_2";
      v28 = 2048;
      v29 = -42022;
      v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 0, "%s: Ignoring invalid signature error: %ld", &v26, 22);
      if (!v12)
      {
LABEL_15:
        v13 = 0;
LABEL_20:
        v17 = 1;
        goto LABEL_34;
      }

      [NSString stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog();
    }

    v12 = 0;
    goto LABEL_15;
  }

  v18 = +[SSLogConfig sharedDaemonConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  v19 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v20 = v19 | 2;
  }

  else
  {
    v20 = v19;
  }

  v21 = [v18 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 & 2;
  }

  if (!v22)
  {
    goto LABEL_32;
  }

  v26 = 136315394;
  v27 = "AOU264455_2";
  v28 = 2048;
  v29 = v6;
  v12 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, v21, 0, "%s: Failed with error: %ld", &v26, 22);
  if (v12)
  {
    [NSString stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
LABEL_32:
    v12 = 0;
  }

  v13 = 0;
  v17 = 0;
LABEL_34:
  if (v25)
  {
    sub_10007374C(v25);
  }

  if (a1)
  {
    *a1 = v13;
  }

  if (a2)
  {
    *a2 = v12;
  }

  return v17;
}

ISFairPlayRentalInfo *sub_1000B23FC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v8 = 0;
      v9 = 0;
      v5 = sub_1000B33F4();
      sub_100087594(v5, a1, a2, &v8);
      v2 = 0;
      if (!v6)
      {
        v2 = objc_alloc_init(ISFairPlayRentalInfo);
        [(ISFairPlayRentalInfo *)v2 setPlaybackDuration:HIDWORD(v9)];
        [(ISFairPlayRentalInfo *)v2 setPlaybackStartTime:v9];
        [(ISFairPlayRentalInfo *)v2 setRentalDuration:HIDWORD(v8)];
        [(ISFairPlayRentalInfo *)v2 setRentalStartTime:v8];
      }
    }
  }

  return v2;
}

CFDataRef sub_1000B249C(uint64_t a1, _BYTE *a2, NSError **a3)
{
  memset(v14, 0, sizeof(v14));
  v6 = sub_1000B25D8(v14);
  v7 = 0;
  result = 0;
  if (v6)
  {
    v13 = 0;
    v12 = 0;
    v9 = sub_1000B33F4();
    sub_10008E930(v9, a1, v14, 52428801, 0, &v13, &v12);
    v11 = v10;
    if (v10 != -42052)
    {
      if (!v10)
      {
        result = sub_1000B1A94(v13, v12);
LABEL_9:
        v7 = 0;
        goto LABEL_10;
      }

LABEL_14:
      v7 = [NSError errorWithDomain:@"FairPlayErrorDomain" code:v11 userInfo:0];
      result = 0;
      if (!a3)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (v12)
    {
      result = sub_1000B1A94(v13, v12);
      if (!a2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = 0;
      if (!a2)
      {
LABEL_8:
        if (result)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

    *a2 = 1;
    goto LABEL_8;
  }

LABEL_10:
  if (!a3)
  {
    return result;
  }

LABEL_11:
  if (!result)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1000B25D8(uint64_t a1)
{
  if (qword_100383DF0 != -1)
  {
    sub_100271FBC();
  }

  if (a1 && byte_100383DF8)
  {
    v2 = xmmword_100383DD8;
    *(a1 + 16) = qword_100383DE8;
    *a1 = v2;
  }

  else
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      v11 = 136315394;
      v12 = "AOU264455_104";
      v13 = 2048;
      v14 = -1;
      v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v6, 16, "%s: Failed with error: %ld", &v11, 22);
      if (v8)
      {
        v9 = v8;
        [NSString stringWithCString:v8 encoding:4];
        free(v9);
        SSFileLog();
      }
    }
  }

  return byte_100383DF8;
}

BOOL sub_1000B277C(void *a1, void *a2)
{
  sub_1000B33F4();
  [a1 bytes];
  [a1 length];
  sub_100029F04();
  if (a2)
  {
    *a2 = 0;
  }

  return v4 == 0;
}

uint64_t sub_1000B282C(uint64_t a1, void *a2, void *a3)
{
  v5 = malloc_type_malloc([a2 length], 0x100004077774924uLL);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v11 = [a2 length];
  [a2 getBytes:v6 length:v11];
  sub_100024314();
  if (v7 || (v8 = 1, v10 = [[NSData alloc] initWithBytesNoCopy:v6 length:v11 freeWhenDone:1], (*a3 = v10) == 0))
  {
    free(v6);
    return 0;
  }

  return v8;
}

void sub_1000B2914(void *a1, unint64_t a2, void *a3)
{
  if ([a1 length])
  {
    if (a2 <= 5)
    {
      v6 = dword_1002A8E50[a2];
      v8 = 0;
      sub_100036640([a1 bytes], objc_msgSend(a1, "length"), v6, &v8);
      if (a3)
      {
        if (!v7)
        {
          *a3 = v8;
        }
      }
    }
  }
}

BOOL sub_1000B29AC(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  sub_1000B33F4();
  [a1 bytes];
  [a1 length];
  sub_10003B880();
  v3 = v2 == 0;
  if (v2)
  {
    v4 = v2;
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v13 = 136315394;
      v14 = "AOU264455_4";
      v15 = 2048;
      v16 = v4;
      v10 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v8, 16, "%s: Failed with error: %ld", &v13, 22);
      if (v10)
      {
        v11 = v10;
        [NSString stringWithCString:v10 encoding:4];
        free(v11);
        SSFileLog();
      }
    }
  }

  return v3;
}

BOOL sub_1000B2C3C(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = sub_1000B33F4();
  sub_100043D44(v2, [a1 bytes], objc_msgSend(a1, "length"), 0, 0, 0);
  return v3 == 0;
}

BOOL sub_1000B2CB8(void *a1, void *a2)
{
  v8 = 0;
  v4 = sub_1000B33F4();
  sub_100043D44(v4, [a1 bytes], objc_msgSend(a1, "length"), objc_msgSend(a2, "bytes"), objc_msgSend(a2, "length"), &v8);
  v6 = v5;
  if (!v5)
  {
    sub_10007374C(v8);
  }

  return v6 == 0;
}

BOOL sub_1000B2D94(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  sub_1000B33F4();
  [a1 bytes];
  [a1 length];
  sub_1000275A0();
  return v2 == 0;
}

uint64_t sub_1000B33F4()
{
  HIDWORD(v11) = 0;
  memset(v16, 0, sizeof(v16));
  if (sub_1000B25D8(v16))
  {
    v0 = [(NSString *)NSHomeDirectory() stringByAppendingPathComponent:@"Media/iTunes_Control/iTunes/"];
    if (v0)
    {
      v1 = sub_1000199F0(0, v16, [(NSString *)v0 UTF8String], &v11 + 4);
      if (v1)
      {
        v2 = v1;
        v3 = +[SSLogConfig sharedDaemonConfig];
        if (!v3)
        {
          v3 = +[SSLogConfig sharedConfig];
        }

        v4 = [v3 shouldLog];
        if ([v3 shouldLogToDisk])
        {
          v5 = v4 | 2;
        }

        else
        {
          v5 = v4;
        }

        v6 = [v3 OSLogObject];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = v5;
        }

        else
        {
          v7 = v5 & 2;
        }

        if (v7)
        {
          v12 = 136315394;
          v13 = "AOU264455_102";
          v14 = 2048;
          v15 = v2;
          LODWORD(v11) = 22;
          v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v6, 16, "%s: Failed with error: %ld", &v12, v11);
          if (v8)
          {
            v9 = v8;
            [NSString stringWithCString:v8 encoding:4];
            free(v9);
            SSFileLog();
          }
        }
      }
    }
  }

  return HIDWORD(v11);
}

void sub_1000B359C(id a1)
{
  SSVFairPlayGetHardwareInfo();
  if ((xmmword_100383DD8 - 1) <= 0x13)
  {
    byte_100383DF8 = 1;
  }
}

id *sub_1000B39A8(id *result, uint64_t a2, void *a3)
{
  if (*a3)
  {
    return [result[4] addObject:?];
  }

  return result;
}

void sub_1000B3B78(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v4 = [[NSURL alloc] initWithString:*a3];
    if (v4)
    {
      v5 = v4;
      v6 = [*(a1 + 32) cookiesForURL:v4];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(a1 + 40) addObject:*(*(&v11 + 1) + 8 * v10)];
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

void sub_1000B4208(uint64_t a1, uint64_t a2)
{
  v3 = [[DownloadAssetEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  [*(a1 + 40) addObject:v3];
}

void sub_1000B5898(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_1000B5FB4(uint64_t a1, uint64_t a2)
{
  v3 = [[DownloadAssetEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  [(DownloadAssetEntity *)v3 setValue:0 forProperty:*(a1 + 40)];
}

void sub_1000B9A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B9A8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B9AA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    v5 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000B9BB4;
    v9[3] = &unk_100327E30;
    v9[4] = WeakRetained;
    v8 = *(a1 + 40);
    v6 = v8;
    v10 = v8;
    [v4 scoreWithScoreRequest:v5 completionHandler:v9];
  }

  else
  {
    v7 = SSError();
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000B9BB4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (!v14)
    {
      goto LABEL_27;
    }

    LODWORD(v35) = 138543362;
    *(&v35 + 4) = v9;
    v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, v13, 16, "DeviceScorer: Failed to score device with error: %{public}@", &v35, 12, v35);
  }

  else
  {
    v16 = [*(a1 + 32) context];
    v17 = [v16 serverEndpoint];

    if (v17 == 2)
    {
      v18 = [[NSString alloc] initWithData:v8 encoding:4];
    }

    else
    {
      v18 = [DeviceScorer _hexEncodingForData:v8];
    }

    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v21 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v13 = [v10 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 2;
    }

    if (!v23)
    {
      goto LABEL_27;
    }

    v24 = *(*(*(a1 + 48) + 8) + 40);
    LODWORD(v35) = 138412290;
    *(&v35 + 4) = v24;
    v15 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, v13, 0, "DeviceScorer: Device scoring completed with score: %@", &v35, 12, v35);
  }

  v25 = v15;

  if (!v25)
  {
    goto LABEL_28;
  }

  v13 = [NSString stringWithCString:v25 encoding:4];
  free(v25);
  v33 = v13;
  SSFileLog();
LABEL_27:

LABEL_28:
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    goto LABEL_42;
  }

  v26 = +[SSLogConfig sharedDaemonConfig];
  if (!v26)
  {
    v26 = +[SSLogConfig sharedConfig];
  }

  v27 = [v26 shouldLog];
  if ([v26 shouldLogToDisk])
  {
    v28 = v27 | 2;
  }

  else
  {
    v28 = v27;
  }

  v29 = [v26 OSLogObject];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 & 2;
  }

  if (!v30)
  {
    goto LABEL_40;
  }

  LOWORD(v35) = 0;
  LODWORD(v34) = 2;
  v31 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, v29, 16, "DeviceScorer: Failed to score device", &v35, v34);

  if (v31)
  {
    v29 = [NSString stringWithCString:v31 encoding:4];
    free(v31);
    SSFileLog();
LABEL_40:
  }

LABEL_42:
  v32 = *(a1 + 40);
  if (v32)
  {
    (*(v32 + 16))(v32, *(*(*(a1 + 48) + 8) + 40), v9);
  }
}

void sub_1000BB3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BB48C(id a1)
{
  v1 = arc4random();

  srand48(v1);
}

id sub_1000BBFEC(uint64_t a1)
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383E48 = result;
  return result;
}

void sub_1000BC680(uint64_t a1)
{
  v2 = [*(a1 + 32) bagType];
  v3 = [*(a1 + 40) _clients];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v24 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v23 + 1) + 8 * v7);
      if (((v2 == 1) ^ [v8 isSandboxed]) & 1) == 0 && (objc_msgSend(objc_msgSend(v8, "clientIdentifier"), "isEqualToString:", *(a1 + 48)))
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v9 = v8;
    if (v9)
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  v10 = v2 == 1;
  v11 = [*(a1 + 40) _beginManagedContextSession];
  v12 = [[MicroPaymentClient alloc] initWithEntity:[MicroPaymentClient insertIntoManagedObjectContext:"entityForContext:" entityForContext:v11], v11];
  [(MicroPaymentClient *)v12 setIdentifier:*(a1 + 48)];
  [(MicroPaymentClient *)v12 setSandboxed:[NSNumber numberWithBool:v10]];
  if (sub_1000CE00C(v11))
  {
    v9 = [[StoreKitClient alloc] initWithMicroPaymentClientID:[(MicroPaymentClient *)v12 objectID]];
    [*(*(a1 + 40) + 32) addObject:v9];
  }

  else
  {
    v9 = 0;
  }

  +[NSThread endManagedContextSession];
  if (v9)
  {
LABEL_16:
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      LODWORD(v15) = v14 | 2;
    }

    else
    {
      LODWORD(v15) = v14;
    }

    v16 = [v13 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v18 = *(a1 + 48);
      v27 = 138412546;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      v19 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v16, 1, "%@: Checking queue for client: %@", &v27, 22);
      if (v19)
      {
        v20 = v19;
        v21 = [NSString stringWithCString:v19 encoding:4];
        free(v20);
        v22 = v21;
        SSFileLog();
      }
    }

    -[StoreKitClient refreshFromServerWithReason:accountIdentifier:](v9, "refreshFromServerWithReason:accountIdentifier:", 2, [*(a1 + 32) userIdentifier]);
  }
}

id sub_1000BCA10(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = [*(a1 + 40) count];
    v21 = 138412546;
    v22 = v6;
    v23 = 2048;
    v24 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 0, "%@: Failing %lu downloads", &v21, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v18 = v10;
      SSFileLog();
    }
  }

  v11 = [*(a1 + 32) _beginManagedContextSession];
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000BCC78;
  v20[3] = &unk_100327EC0;
  v20[4] = v12;
  [v13 _enumerateDownloadsForIdentifiers:v14 context:v11 usingBlock:v20];
  if ([v12 count])
  {
    v15 = +[DownloadsDatabase downloadsDatabase];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000BCD30;
    v19[3] = &unk_100327EE8;
    v16 = *(a1 + 32);
    v19[4] = v12;
    v19[5] = v16;
    [v15 readUsingTransactionBlock:v19];
  }

  sub_1000CE00C(v11);
  return +[NSThread endManagedContextSession];
}

void sub_1000BCC78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_msgSend(a3 "payment")];
  if (v5)
  {
    v6 = [v5 objectID];
    v7 = [*(a1 + 32) objectForKey:v6];
    if (!v7)
    {
      v8 = objc_alloc_init(NSMutableArray);
      [*(a1 + 32) setObject:v8 forKey:v6];
      v7 = v8;
    }

    v9 = v7;
    [v7 addObject:a3];
  }
}

id sub_1000BCD30(uint64_t a1, void *a2)
{
  v25 = [a2 database];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 32);
  result = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  v21 = result;
  if (result)
  {
    v19 = *v31;
    v20 = a1;
    do
    {
      v4 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v4;
        v5 = *(*(&v30 + 1) + 8 * v4);
        v6 = objc_alloc_init(NSMutableArray);
        v22 = v5;
        v7 = [*(a1 + 32) objectForKey:v5];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v24 = v7;
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v27;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v27 != v10)
              {
                objc_enumerationMutation(v24);
              }

              v12 = *(*(&v26 + 1) + 8 * i);
              v13 = objc_autoreleasePoolPush();
              v14 = [v12 downloadID];
              v15 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v14 longLongValue], v25);
              ObjectWithArchivedData = [(DownloadEntity *)v15 valueForProperty:@"download_state.download_error"];
              [v12 setError:ObjectWithArchivedData];
              [v12 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 2)}];
              v17 = objc_alloc_init(sub_1001FA210());
              if (ObjectWithArchivedData)
              {
                objc_opt_class();
                ObjectWithArchivedData = SSCodingCreateObjectWithArchivedData();
              }

              [v17 setDownloadID:v14];
              [v17 setDownloadState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 4)}];
              [v17 setError:sub_1000D2580(ObjectWithArchivedData)];
              [v17 setProgress:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", 0.0)}];
              [v17 setTimeRemaining:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", -1.0)}];
              [v6 addObject:v17];

              objc_autoreleasePoolPop(v13);
            }

            v9 = [v24 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v9);
        }

        a1 = v20;
        [objc_msgSend(*(v20 + 40) _clientForObjectID:{v22), "sendDownloadChangesets:", v6}];

        v4 = v23 + 1;
      }

      while ((v23 + 1) != v21);
      result = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      v21 = result;
    }

    while (result);
  }

  return result;
}

void sub_1000BD0A0(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = [*(a1 + 40) count];
    v35 = 138412546;
    v36 = v6;
    v37 = 2048;
    v38 = v7;
    v8 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 1, "%@: Finishing %lu downloads", &v35, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v29 = v10;
      SSFileLog();
    }
  }

  v11 = [*(a1 + 32) _beginManagedContextSession];
  v12 = objc_alloc_init(NSMutableOrderedSet);
  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = objc_alloc_init(NSMutableOrderedSet);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000BD4C8;
  v34[3] = &unk_100327F10;
  v34[4] = v14;
  v34[5] = v13;
  v34[6] = v12;
  [v15 _enumerateDownloadsForIdentifiers:v16 context:v11 usingBlock:v34];
  if ([v13 count])
  {
    v17 = +[DownloadsDatabase downloadsDatabase];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000BD5C0;
    v33[3] = &unk_100327EE8;
    v18 = *(a1 + 32);
    v33[4] = v13;
    v33[5] = v18;
    [v17 readUsingTransactionBlock:v33];
  }

  sub_1000CE00C(v11);
  +[NSThread endManagedContextSession];
  if ([v12 count] || objc_msgSend(v14, "count"))
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      LODWORD(v21) = v20 | 2;
    }

    else
    {
      LODWORD(v21) = v20;
    }

    v22 = [v19 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v24 = [v12 count];
      v25 = [v14 count];
      v35 = 138412802;
      v36 = v23;
      v37 = 2048;
      v38 = v24;
      v39 = 2048;
      v40 = v25;
      LODWORD(v31) = 32;
      v26 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v22, 1, "%@: Deleting %lu downloads and checking %lu downloads after migrating properties", &v35, v31);
      if (v26)
      {
        v27 = v26;
        v28 = [NSString stringWithCString:v26 encoding:4];
        free(v27);
        v30 = v28;
        SSFileLog();
      }
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000BD924;
    v32[3] = &unk_100327F38;
    v32[4] = v12;
    v32[5] = v14;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase downloadsDatabase];
  }
}

void sub_1000BD4C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_msgSend(a3 "payment")];
  if (a3)
  {
    if (v6)
    {
      v7 = [v6 objectID];
      v8 = [*(a1 + 40) objectForKey:v7];
      if (!v8)
      {
        v10 = objc_alloc_init(NSMutableArray);
        [*(a1 + 40) setObject:v10 forKey:v7];
        v8 = v10;
      }

      v11 = v8;
      [v8 addObject:a3];
      [*(a1 + 48) addObject:a2];
    }
  }

  else
  {
    v9 = *(a1 + 32);

    [v9 addObject:a2];
  }
}

id sub_1000BD5C0(uint64_t a1, void *a2)
{
  v31 = [a2 database];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  result = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  v26 = result;
  if (result)
  {
    v24 = *v38;
    v30 = SSDownloadAssetTypeMedia;
    v25 = a1;
    do
    {
      v4 = 0;
      do
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v4;
        v5 = *(*(&v37 + 1) + 8 * v4);
        v32 = objc_alloc_init(NSMutableArray);
        v27 = v5;
        v6 = [*(a1 + 32) objectForKey:v5];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v29 = v6;
        v7 = [v6 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v34;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v34 != v9)
              {
                objc_enumerationMutation(v29);
              }

              v11 = *(*(&v33 + 1) + 8 * i);
              v12 = objc_autoreleasePoolPush();
              v13 = [v11 downloadID];
              v14 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v13 longLongValue], v31);
              v15 = sub_1001F80E0([(DownloadEntity *)v14 valueForProperty:@"download_state.phase"]);
              [v11 setState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v15)}];
              v16 = [-[DownloadEntity anyAssetForAssetType:](v14 anyAssetForAssetType:{v30), "valueForProperty:", @"destination_url"}];
              [v11 setLocalURL:v16];
              v17 = sub_1001F7A68(v15);
              v18 = objc_alloc_init(sub_1001FA210());
              [v18 setDownloadID:v13];
              [v18 setDownloadState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v17)}];
              if (v17 == 3)
              {
                v20 = 0.0;
                v21 = 1.0;
                if (v16)
                {
                  v22 = [[NSURL alloc] initWithString:v16];
                  [v18 setContentURL:v22];
                }
              }

              else
              {
                v20 = -1.0;
                v21 = 0.0;
              }

              *&v19 = v21;
              [v18 setProgress:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v19)}];
              [v18 setTimeRemaining:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v20)}];
              [v32 addObject:v18];

              objc_autoreleasePoolPop(v12);
            }

            v8 = [v29 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v8);
        }

        a1 = v25;
        [objc_msgSend(*(v25 + 40) _clientForObjectID:{v27), "sendDownloadChangesets:", v32}];

        v4 = v28 + 1;
      }

      while ((v28 + 1) != v26);
      result = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      v26 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1000BD924(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [*(*(&v22 + 1) + 8 * i) longLongValue], v3);
        [(DownloadEntity *)v9 deleteFromDatabase];
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    v14 = SSDownloadKindInAppContent;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [*(*(&v18 + 1) + 8 * j) longLongValue], v3);
        if ([(NSString *)[(DownloadEntity *)v16 downloadKind] isEqualToString:v14])
        {
          [(DownloadEntity *)v16 deleteFromDatabase];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  return 1;
}

id sub_1000BDC1C(uint64_t a1)
{
  v2 = [*(a1 + 32) _beginManagedContextSession];
  v3 = objc_alloc_init(NSFetchRequest);
  [v3 setEntity:{+[MicroPaymentDownload downloadEntityFromContext:](MicroPaymentDownload, "downloadEntityFromContext:", v2)}];
  [v3 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"downloadID=%lld", *(a1 + 64))}];
  v4 = [[NSArray alloc] initWithObjects:{@"downloadID", @"payment", 0}];
  [v3 setPropertiesToFetch:v4];

  v5 = [v2 executeFetchRequest:v3 error:0];
  if ([v5 count] == 1)
  {
    v6 = [*(a1 + 32) _clientForPayment:{objc_msgSend(objc_msgSend(v5, "objectAtIndex:", 0), "payment")}];
    if (v6)
    {
      v7 = v6;
      v8 = objc_alloc_init(sub_1001FA210());
      v9 = *(a1 + 40);
      if (v9)
      {
        v10 = sub_1001F80E0(v9);
        [v8 setDownloadState:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", sub_1001F7A68(v10))}];
      }

      [v8 setDownloadID:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", *(a1 + 64))}];
      [v8 setProgress:*(a1 + 48)];
      [v8 setTimeRemaining:*(a1 + 56)];
      [v7 sendDownloadChangesets:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", v8)}];
    }
  }

  return +[NSThread endManagedContextSession];
}

void *sub_1000BE05C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[2])
  {
    return [result _startFirstReadyPayment];
  }

  return result;
}

id sub_1000BE150(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "payments")];
  if (result)
  {
    v3 = result;
    v4 = [*(a1 + 40) _beginManagedContextSession];
    v5 = objc_alloc_init(NSFetchRequest);
    [v5 setEntity:{+[MicroPayment paymentEntityFromContext:](MicroPayment, "paymentEntityFromContext:", v4)}];
    [v5 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"productIdentifier=%@", v3)}];
    [v5 setPropertiesToFetch:&off_10034CC80];
    v6 = [v4 executeFetchRequest:v5 error:0];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [objc_msgSend(v11 "state")];
          if (v12 == 8 || v12 == 1)
          {
            v14 = [*(a1 + 40) _clientForPayment:v11];
            v15 = +[SSLogConfig sharedDaemonConfig];
            if (!v15)
            {
              v15 = +[SSLogConfig sharedConfig];
            }

            v16 = [v15 shouldLog];
            if ([v15 shouldLogToDisk])
            {
              LODWORD(v17) = v16 | 2;
            }

            else
            {
              LODWORD(v17) = v16;
            }

            v18 = [v15 OSLogObject];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v17 = v17;
            }

            else
            {
              v17 &= 2u;
            }

            if (v17)
            {
              v19 = objc_opt_class();
              v28 = 138412546;
              v29 = v19;
              v30 = 2112;
              v31 = v11;
              v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v18, 1, "%@: Updating payment after unexpected purchase response: %@", &v28, 22);
              if (v20)
              {
                v21 = v20;
                v22 = [NSString stringWithCString:v20 encoding:4];
                free(v21);
                v23 = v22;
                SSFileLog();
              }
            }

            [v14 updatePaymentWithObjectID:objc_msgSend(v11 purchaseResponse:{"objectID", v23), *(a1 + 32)}];
            goto LABEL_26;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:

    return +[NSThread endManagedContextSession];
  }

  return result;
}

void sub_1000BE498(uint64_t a1)
{
  v5 = [*(a1 + 32) _newPaymentQueueClientWithMessage:*(a1 + 40) connection:*(a1 + 48) parameter:"3"];
  v2 = objc_alloc(sub_1001FA24C());
  v3 = [v2 initWithXPCEncoding:{xpc_dictionary_get_value(*(a1 + 40), "1")}];
  v4 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", xpc_dictionary_get_BOOL(*(a1 + 40), "4")), @"StoreKitClientPaymentOptionGrandfatherRequestData", 0}];
  if (xpc_dictionary_get_BOOL(*(a1 + 40), "2"))
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"StoreKitClientPaymentOptionSupportsDeferredPayment"];
  }

  if ([objc_msgSend(*(a1 + 32) _clientForConnection:*(a1 + 48) paymentQueueClient:{v5), "addPaymentTransaction:withOptions:", v3, v4}])
  {
    [*(a1 + 32) _startFirstReadyPayment];
  }
}

void sub_1000BE644(uint64_t a1)
{
  objc_opt_class();
  v2 = SSXPCDictionaryCopyCFObjectWithClass();
  objc_opt_class();
  v3 = SSXPCDictionaryCopyCFObjectWithClass();
  objc_opt_class();
  v4 = SSXPCDictionaryCopyCFObjectWithClass();
  objc_opt_class();
  v5 = SSXPCDictionaryCopyCFObjectWithClass();
  [*(a1 + 40) addPurchaseIntentWithProductIdentifier:v3 productName:v5 appBundleId:v2 appName:v4];

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  xpc_connection_send_message(*(a1 + 48), reply);

  xpc_release(reply);
}

void sub_1000BE7CC(uint64_t a1)
{
  v3 = [*(a1 + 32) _copyDownloadsIDsFromMessage:*(a1 + 40) key:"1"];
  if ([v3 count])
  {
    v2 = [*(a1 + 32) _newPaymentQueueClientWithMessage:*(a1 + 40) connection:*(a1 + 48) parameter:"2"];
    [objc_msgSend(*(a1 + 32) _clientForConnection:*(a1 + 48) paymentQueueClient:{v2), "cancelDownloadsWithIDs:", v3}];
  }
}

void sub_1000BE9E8(uint64_t a1)
{
  v2 = [*(a1 + 32) _newPaymentQueueClientWithMessage:*(a1 + 40) connection:*(a1 + 48) parameter:"2"];
  v3 = [*(a1 + 32) _clientForConnection:*(a1 + 48) paymentQueueClient:v2];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = v5 | 2;
  }

  else
  {
    LODWORD(v6) = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = [v3 clientIdentifier];
    v8 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 0, "[%{public}@]: Client entered foreground: %{public}@", &v12, 22);
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4];
      free(v9);
      v11 = v10;
      SSFileLog();
    }
  }

  [*(a1 + 32) _sendPurchaseIntentsForApp:objc_msgSend(v3 storeKitClient:"clientIdentifier" force:{v11), v3, 0}];
}

void sub_1000BEC1C(uint64_t a1)
{
  if ((SSXPCConnectionHasEntitlement() & 1) != 0 || SSXPCConnectionHasEntitlement())
  {
    objc_opt_class();
    v1 = SSXPCDictionaryCopyCFObjectWithClass();
    objc_opt_class();
    v2 = SSXPCDictionaryCopyCFObjectWithClass();
    [StoreKitClientIdentity forceSandboxForBundleIdentifier:v1 untilDate:v2];
  }
}

void sub_1000BED70(uint64_t a1)
{
  v2 = [*(a1 + 32) _newPaymentQueueClientWithMessage:*(a1 + 40) connection:*(a1 + 48) parameter:"2"];
  if ([objc_msgSend(*(a1 + 32) _clientForConnection:*(a1 + 48)) paymentQueueClient:{"finishPaymentWithMessage:", *(a1 + 40)}])
  {
    [*(a1 + 32) _startFirstReadyPayment];
  }
}

id sub_1000BEE58(uint64_t a1)
{
  [ISLoadURLBagOperation incrementNetworkCounterForBagContext:[SSURLBagContext contextWithBagType:0]];
  v2 = [*(a1 + 32) _newPaymentQueueClientWithMessage:*(a1 + 40) connection:*(a1 + 48) parameter:"2"];
  v3 = [*(a1 + 32) _clientForConnection:*(a1 + 48) paymentQueueClient:v2];
  if (xpc_dictionary_get_int64(*(a1 + 40), "1") == 1)
  {
    [v3 refreshFromServerWithReason:3];
  }

  reply = xpc_dictionary_create_reply(*(a1 + 40));
  sub_1001FA20C(reply, "0", [v3 openTransactions]);
  xpc_connection_send_message(*(a1 + 48), reply);
  xpc_release(reply);

  v5 = [SSURLBagContext contextWithBagType:0];

  return [ISLoadURLBagOperation decrementNetworkCounterForBagContext:v5];
}

void sub_1000BF074(uint64_t a1)
{
  v3 = [*(a1 + 32) _copyDownloadsIDsFromMessage:*(a1 + 40) key:"1"];
  if ([v3 count])
  {
    v2 = [*(a1 + 32) _newPaymentQueueClientWithMessage:*(a1 + 40) connection:*(a1 + 48) parameter:"2"];
    [objc_msgSend(*(a1 + 32) _clientForConnection:*(a1 + 48) paymentQueueClient:{v2), "pauseDownloadsWithIDs:", v3}];
  }
}

void sub_1000BF1BC(uint64_t a1)
{
  value = xpc_dictionary_get_value(*(a1 + 32), "1");
  if (value && (v3 = value, xpc_get_type(value) == &_xpc_type_endpoint) && (v6 = xpc_connection_create_from_endpoint(v3)) != 0)
  {
    v7 = v6;
    v8 = [*(a1 + 40) _newPaymentQueueClientWithMessage:*(a1 + 32) connection:*(a1 + 48) parameter:"2"];
    v9 = [*(a1 + 40) _clientForConnection:*(a1 + 48) paymentQueueClient:v8];
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v12) = v11 | 2;
    }

    else
    {
      LODWORD(v12) = v11;
    }

    v13 = [v10 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = [v9 clientIdentifier];
      v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v13, 0, "[%{public}@]: Client registered: %{public}@", &v18, 22);
      if (v14)
      {
        v15 = v14;
        [NSString stringWithCString:v14 encoding:4];
        free(v15);
        SSFileLog();
      }
    }

    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = [v9 XPCClient];
    [v17 setOutputConnectionWithConnection:v7];
    [objc_msgSend(v17 "outputConnection")];
    xpc_release(v16);
    [v9 createMicroPaymentClientIfNecessary];
    [v9 refreshFromServerWithReason:0];
    v4 = [v9 openTransactions];
    [*(a1 + 40) _sendPurchaseIntentsForApp:objc_msgSend(v9 storeKitClient:"clientIdentifier") force:{v9, 0}];

    xpc_release(v7);
  }

  else
  {
    v4 = 0;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  sub_1001FA20C(reply, "0", v4);
  xpc_connection_send_message(*(a1 + 48), reply);
  xpc_release(reply);
}

void sub_1000BF4CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v5 = sub_1001FA208(v2, "1", v3);
  v4 = [*(a1 + 40) _newPaymentQueueClientWithMessage:*(a1 + 32) connection:*(a1 + 48) parameter:"2"];
  [objc_msgSend(*(a1 + 40) _clientForConnection:*(a1 + 48) paymentQueueClient:{v4), "restoreCompletedTransactionsWithApplicationUsername:", v5}];
}

void sub_1000BF5D0(uint64_t a1)
{
  v3 = [*(a1 + 32) _copyDownloadsIDsFromMessage:*(a1 + 40) key:"1"];
  if ([v3 count])
  {
    v2 = [*(a1 + 32) _newPaymentQueueClientWithMessage:*(a1 + 40) connection:*(a1 + 48) parameter:"2"];
    [objc_msgSend(*(a1 + 32) _clientForConnection:*(a1 + 48) paymentQueueClient:{v2), "resumeDownloadsWithIDs:", v3}];
  }
}

void sub_1000BF6D0(uint64_t a1)
{
  v3 = [*(a1 + 32) _copyDownloadsIDsFromMessage:*(a1 + 40) key:"1"];
  if ([v3 count])
  {
    v2 = [*(a1 + 32) _newPaymentQueueClientWithMessage:*(a1 + 40) connection:*(a1 + 48) parameter:"2"];
    [objc_msgSend(*(a1 + 32) _clientForConnection:*(a1 + 48) paymentQueueClient:{v2), "startDownloadsWithIDs:", v3}];
  }
}

void sub_1000BF81C(uint64_t a1)
{
  objc_opt_class();
  v2 = SSXPCDictionaryCopyCFObjectWithClass();
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 40) _beginManagedContextSession];
    v5 = objc_alloc_init(NSFetchRequest);
    [v5 setEntity:{+[MicroPayment paymentEntityFromContext:](MicroPayment, "paymentEntityFromContext:", v4)}];
    [v5 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"state=%@ AND askPermissionRequestIdentifier=%@", &off_10034BCB8, v3)}];
    v73 = 0;
    v6 = [v4 executeFetchRequest:v5 error:&v73];
    v7 = &CFDictionaryGetValue_ptr;
    if (v6)
    {
      v8 = v6;
      v60 = v5;
      v61 = v4;
      v62 = v3;
      v59 = objc_alloc_init(NSMutableSet);
      int64 = xpc_dictionary_get_int64(*(a1 + 32), "2");
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v69 objects:v76 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v70;
        v12 = int64 - 1;
        do
        {
          v13 = 0;
          v64 = v10;
          do
          {
            if (*v70 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v69 + 1) + 8 * v13);
            v15 = [*(a1 + 40) _clientForPayment:{v14, v56}];
            if (v12 >= 2)
            {
              if (!int64)
              {
                v28 = [v7[412] sharedDaemonConfig];
                if (!v28)
                {
                  v28 = [v7[412] sharedConfig];
                }

                v29 = [v28 shouldLog];
                if ([v28 shouldLogToDisk])
                {
                  LODWORD(v30) = v29 | 2;
                }

                else
                {
                  LODWORD(v30) = v29;
                }

                v31 = [v28 OSLogObject];
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = v30;
                }

                else
                {
                  v30 &= 2u;
                }

                if (v30)
                {
                  v32 = objc_opt_class();
                  v77 = 138412546;
                  v78 = v32;
                  v79 = 2112;
                  v80 = v62;
                  LODWORD(v58) = 22;
                  v33 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, v31, 0, "%@: Invalid status for requestID: %@", &v77, v58);
                  if (v33)
                  {
                    v34 = v33;
                    v35 = [NSString stringWithCString:v33 encoding:4];
                    free(v34);
                    v56 = v35;
                    SSFileLog();
                  }
                }
              }
            }

            else
            {
              v16 = v15;
              v17 = v11;
              v18 = v8;
              v19 = [v7[412] sharedDaemonConfig];
              if (!v19)
              {
                v19 = [v7[412] sharedConfig];
              }

              v20 = v7;
              LODWORD(v21) = [v19 shouldLog];
              if ([v19 shouldLogToDisk])
              {
                LODWORD(v21) = v21 | 2;
              }

              v22 = [v19 OSLogObject];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                v21 = v21;
              }

              else
              {
                v21 &= 2u;
              }

              if (v21)
              {
                v23 = objc_opt_class();
                v77 = 138412546;
                v78 = v23;
                v79 = 2112;
                v80 = v14;
                LODWORD(v58) = 22;
                v24 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v22, 1, "%@: Fail payment after request deny: %@", &v77, v58);
                if (v24)
                {
                  v25 = v24;
                  v26 = [NSString stringWithCString:v24 encoding:4];
                  free(v25);
                  v56 = v26;
                  SSFileLog();
                }
              }

              v27 = [v14 objectID];
              [v14 setFailedWithError:0];
              v7 = v20;
              v8 = v18;
              v11 = v17;
              v12 = int64 - 1;
              v10 = v64;
              if (v27)
              {
                v75 = v27;
                [v16 sendPaymentsUpdatedWithObjectIDs:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v75, 1)}];
              }
            }

            v13 = v13 + 1;
          }

          while (v10 != v13);
          v10 = [v8 countByEnumeratingWithState:&v69 objects:v76 count:16];
        }

        while (v10);
      }

      v4 = v61;
      v3 = v62;
      v5 = v60;
      if ([v59 count])
      {
        v36 = [v7[412] sharedDaemonConfig];
        if (!v36)
        {
          v36 = [v7[412] sharedConfig];
        }

        v37 = [v36 shouldLog];
        if ([v36 shouldLogToDisk])
        {
          LODWORD(v38) = v37 | 2;
        }

        else
        {
          LODWORD(v38) = v37;
        }

        v39 = [v36 OSLogObject];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v38 = v38;
        }

        else
        {
          v38 &= 2u;
        }

        if (v38)
        {
          v40 = objc_opt_class();
          v41 = [v59 count];
          v77 = 138412546;
          v78 = v40;
          v79 = 2048;
          v80 = v41;
          LODWORD(v58) = 22;
          v42 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, v39, 1, "%@: Refresh %ld queues after payment approval", &v77, v58);
          if (v42)
          {
            v43 = v42;
            v44 = [NSString stringWithCString:v42 encoding:4];
            free(v43);
            v57 = v44;
            SSFileLog();
          }
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v45 = [v59 countByEnumeratingWithState:&v65 objects:v74 count:{16, v57}];
        if (v45)
        {
          v46 = v45;
          v47 = *v66;
          do
          {
            for (i = 0; i != v46; i = i + 1)
            {
              if (*v66 != v47)
              {
                objc_enumerationMutation(v59);
              }

              [*(*(&v65 + 1) + 8 * i) refreshFromServerWithReason:2];
            }

            v46 = [v59 countByEnumeratingWithState:&v65 objects:v74 count:16];
          }

          while (v46);
        }
      }
    }

    else
    {
      v49 = +[SSLogConfig sharedDaemonConfig];
      if (!v49)
      {
        v49 = +[SSLogConfig sharedConfig];
      }

      v50 = [v49 shouldLog];
      if ([v49 shouldLogToDisk])
      {
        LODWORD(v51) = v50 | 2;
      }

      else
      {
        LODWORD(v51) = v50;
      }

      v52 = [v49 OSLogObject];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v51 = v51;
      }

      else
      {
        v51 &= 2u;
      }

      if (v51)
      {
        v53 = objc_opt_class();
        v77 = 138412802;
        v78 = v53;
        v79 = 2112;
        v80 = v3;
        v81 = 2112;
        v82 = v73;
        LODWORD(v58) = 32;
        v54 = _os_log_send_and_compose_impl(v51, 0, 0, 0, &_mh_execute_header, v52, 0, "%@: Could not update deferred payment: %@, error: %@", &v77, v58);
        if (v54)
        {
          v55 = v54;
          [NSString stringWithCString:v54 encoding:4];
          free(v55);
          SSFileLog();
        }
      }
    }

    sub_1000CE00C(v4);
    +[NSThread endManagedContextSession];
  }
}

void sub_1000BFFCC(uint64_t a1)
{
  v2 = [[XPCClient alloc] initWithInputConnection:*(a1 + 32)];
  if (!v2)
  {
    goto LABEL_98;
  }

  v83 = 0;
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:-[XPCClient clientIdentifier](v2 allowPlaceholder:"clientIdentifier") error:{1, &v83}];
  v4 = [v3 typeForInstallMachinery];
  v5 = [v4 isEqualToString:LSSystemApplicationType];

  v6 = [(XPCClient *)v2 isBetaApp];
  v7 = [(XPCClient *)v2 isAdHocCodeSigned];
  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    LODWORD(v10) = v9 | 2;
  }

  else
  {
    LODWORD(v10) = v9;
  }

  v11 = [v8 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v10;
  }

  else
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v12 = objc_opt_class();
    v13 = @"NO";
    if (v6)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    *v86 = 138544130;
    *&v86[4] = v12;
    if (v7)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v87 = 2114;
    if (v5)
    {
      v13 = @"YES";
    }

    v88 = v14;
    v89 = 2114;
    v90 = v15;
    v91 = 2114;
    v92 = v13;
    v16 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v11, 0, "[%{public}@]: isBeta: %{public}@, AdHoc: %{public}@, System: %{public}@", COERCE_DOUBLE(138544130), v86, 42);
    if (v16)
    {
      v17 = v16;
      v18 = [NSString stringWithCString:v16 encoding:4];
      free(v17);
      v72 = v18;
      SSFileLog();
    }
  }

  if (!(v5 & 1 | ((v6 & 1) == 0)))
  {
    v36 = &CFDictionaryGetValue_ptr;
    v37 = +[SSLogConfig sharedDaemonConfig];
    if (!v37)
    {
      v37 = +[SSLogConfig sharedConfig];
    }

    v38 = [v37 shouldLog];
    if ([v37 shouldLogToDisk])
    {
      LODWORD(v39) = v38 | 2;
    }

    else
    {
      LODWORD(v39) = v38;
    }

    v40 = [v37 OSLogObject];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v39;
    }

    else
    {
      v39 &= 2u;
    }

    if (!v39)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  v19 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"UseSandboxReviewPromptModeForSystemApps"]& v5;
  v20 = [(XPCClient *)v2 isAppleSigned];
  if (v5)
  {
    v21 = v20 ^ 1 | v19;
  }

  else
  {
    v21 = v20 ^ 1 | v7;
  }

  v22 = [*(a1 + 40) _inAppReviewEnabled];
  v23 = [*(a1 + 40) _isAppStoreInstallationAllowed];
  v24 = +[SSLogConfig sharedDaemonConfig];
  if (!v24)
  {
    v24 = +[SSLogConfig sharedConfig];
  }

  v25 = [v24 shouldLog];
  if ([v24 shouldLogToDisk])
  {
    LODWORD(v26) = v25 | 2;
  }

  else
  {
    LODWORD(v26) = v25;
  }

  v27 = [v24 OSLogObject];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v26 = v26;
  }

  else
  {
    v26 &= 2u;
  }

  if (v26)
  {
    v28 = objc_opt_class();
    *v86 = 138544642;
    v29 = @"YES";
    if (v19)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    *&v86[4] = v28;
    if (v21)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    v87 = 2114;
    if (!v22)
    {
      v29 = @"NO";
    }

    v88 = @"NO";
    v89 = 2114;
    v90 = v30;
    v91 = 2114;
    v92 = v31;
    v93 = 2114;
    v94 = v29;
    v95 = 1024;
    v96 = v23;
    LODWORD(v74) = 58;
    v32 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, v27, 0, "[%{public}@]: Seed: %{public}@, Override: %{public}@, Sandboxed: %{public}@, Enabled: %{public}@, App installation allowed: %{BOOL}d", v86, v74);
    if (v32)
    {
      v33 = v32;
      v34 = [NSString stringWithCString:v32 encoding:4];
      free(v33);
      v73 = v34;
      SSFileLog();
    }
  }

  if ((v21 & 1) == 0)
  {
    v36 = &CFDictionaryGetValue_ptr;
    if ((v22 & v23) == 1)
    {
      v44 = [*(a1 + 40) _inAppReviewRequestConstants];
      v45 = [objc_msgSend(v44 objectForKey:{@"inAppReviewRequestLimitWindow", "integerValue"}];
      v46 = [objc_msgSend(v44 objectForKey:{@"inAppReviewRequiredDaysAfterReview", "integerValue"}];
      v77 = [objc_msgSend(v44 objectForKey:{@"inAppReviewRequestsPerWindow", "integerValue"}];
      v78 = [objc_msgSend(v44 objectForKey:{@"inAppReviewRequireNewVersionAfterReview", "BOOLValue"}];
      v47 = [*(a1 + 40) _beginManagedContextSession];
      v48 = [InAppReviewRequest entityForContext:v47];
      v49 = objc_alloc_init(NSFetchRequest);
      v75 = v48;
      [v49 setEntity:v48];
      [v49 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"bundleIdentifier = %@", -[XPCClient clientIdentifier](v2, "clientIdentifier"))}];
      v85 = [NSSortDescriptor sortDescriptorWithKey:@"date" ascending:0];
      [v49 setSortDescriptors:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v85, 1)}];
      *v86 = 0;
      v76 = v47;
      v50 = [v47 executeFetchRequest:v49 error:v86];

      v51 = [NSDate dateWithTimeIntervalSinceNow:(-86400 * v45)];
      v52 = [NSDate dateWithTimeIntervalSinceNow:(-86400 * v46)];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v53 = v50;
      v54 = [v50 countByEnumeratingWithState:&v79 objects:v84 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = 0;
        v57 = *v80;
        while (2)
        {
          for (i = 0; i != v55; i = i + 1)
          {
            if (*v80 != v57)
            {
              objc_enumerationMutation(v53);
            }

            v59 = *(*(&v79 + 1) + 8 * i);
            if ([objc_msgSend(v59 "date")] == 1 && (++v56, v56 >= v77) || objc_msgSend(objc_msgSend(v59, "date"), "compare:", v52) == 1 && (objc_msgSend(v59, "rated") & 1) != 0 || (objc_msgSend(v59, "rated") & v78) == 1 && (objc_msgSend(objc_msgSend(v59, "bundleVersion"), "isEqualToString:", -[XPCClient clientVersion](v2, "clientVersion")) & 1) != 0)
            {
              v35 = 0;
              v36 = &CFDictionaryGetValue_ptr;
              goto LABEL_84;
            }
          }

          v55 = [v53 countByEnumeratingWithState:&v79 objects:v84 count:16];
          v36 = &CFDictionaryGetValue_ptr;
          if (v55)
          {
            continue;
          }

          break;
        }
      }

      v60 = [[InAppReviewRequest alloc] initWithEntity:v75 insertIntoManagedObjectContext:v76];
      [(InAppReviewRequest *)v60 setBundleIdentifier:[(XPCClient *)v2 clientIdentifier]];
      [(InAppReviewRequest *)v60 setBundleVersion:[(XPCClient *)v2 clientVersion]];
      [(InAppReviewRequest *)v60 setDate:+[NSDate date]];
      v35 = [(InAppReviewRequest *)v60 valueHash];
      sub_1000CE00C(v76);

      goto LABEL_84;
    }

    v61 = +[SSLogConfig sharedDaemonConfig];
    if (!v61)
    {
      v61 = +[SSLogConfig sharedConfig];
    }

    v62 = [v61 shouldLog];
    if ([v61 shouldLogToDisk])
    {
      LODWORD(v39) = v62 | 2;
    }

    else
    {
      LODWORD(v39) = v62;
    }

    v40 = [v61 OSLogObject];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v39;
    }

    else
    {
      v39 &= 2u;
    }

    if (!v39)
    {
      goto LABEL_57;
    }

LABEL_55:
    v41 = objc_opt_class();
    *v86 = 138543362;
    *&v86[4] = v41;
    LODWORD(v74) = 12;
    v42 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, v40, 0, "[%{public}@]: Review request denied.", v86, v74);
    v35 = v42;
    if (!v42)
    {
      goto LABEL_84;
    }

    v43 = [NSString stringWithCString:v42 encoding:4];
    free(v35);
    v73 = v43;
    SSFileLog();
LABEL_57:
    v35 = 0;
    goto LABEL_84;
  }

  v35 = SSXPCInAppReviewSandboxToken;
  v36 = &CFDictionaryGetValue_ptr;
LABEL_84:
  v63 = [v36[412] sharedDaemonConfig];
  if (!v63)
  {
    v63 = [v36[412] sharedConfig];
  }

  v64 = [v63 shouldLog];
  if ([v63 shouldLogToDisk])
  {
    LODWORD(v65) = v64 | 2;
  }

  else
  {
    LODWORD(v65) = v64;
  }

  v66 = [v63 OSLogObject];
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v65 = v65;
  }

  else
  {
    v65 &= 2u;
  }

  if (v65)
  {
    v67 = objc_opt_class();
    v68 = @"NO";
    if (v35)
    {
      v68 = @"YES";
    }

    *v86 = 138543618;
    *&v86[4] = v67;
    v87 = 2114;
    v88 = v68;
    LODWORD(v74) = 22;
    v69 = _os_log_send_and_compose_impl(v65, 0, 0, 0, &_mh_execute_header, v66, 0, "[%{public}@]: Token: %{public}@.", v86, v74);
    if (v69)
    {
      v70 = v69;
      [NSString stringWithCString:v69 encoding:4];
      free(v70);
      SSFileLog();
    }
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  xpc_dictionary_set_int64(reply, "0", 1011);
  SSXPCDictionarySetCFObject();
  xpc_connection_send_message(*(a1 + 32), reply);
  xpc_release(reply);
LABEL_98:
}

intptr_t sub_1000C0B1C(uint64_t a1)
{
  if ([*(a1 + 32) success])
  {
    v2 = [*(a1 + 32) URLBag];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v7 = sub_1000C0C0C;
    v8 = &unk_100327F88;
    v3 = *(a1 + 40);
    v9 = v2;
    v10 = v3;
    v4 = [v2 valueForKey:{@"inAppReviewRequestLimitWindow", _NSConcreteStackBlock, 3221225472}];
    if (v4)
    {
      [v10 setObject:v4 forKey:@"inAppReviewRequestLimitWindow"];
    }

    v7(v6, @"inAppReviewRequestsPerWindow");
    v7(v6, @"inAppReviewRequiredDaysAfterReview");
    v7(v6, @"inAppReviewRequireNewVersionAfterReview");
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

id sub_1000C0C0C(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) valueForKey:a2];
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 40);

    return [v6 setObject:v5 forKey:a2];
  }

  return result;
}

void sub_1000C0CD8(uint64_t a1)
{
  v2 = [[XPCClient alloc] initWithInputConnection:*(a1 + 32)];
  objc_opt_class();
  v3 = SSXPCDictionaryCopyCFObjectWithClass();
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [*(a1 + 48) _beginManagedContextSession];
    v7 = [InAppReviewRequest entityForContext:v6];
    v8 = objc_alloc_init(NSFetchRequest);
    [v8 setEntity:v7];
    [v8 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"bundleIdentifier = %@", -[XPCClient clientIdentifier](v2, "clientIdentifier"))}];
    v21 = [NSSortDescriptor sortDescriptorWithKey:@"date" ascending:0];
    [v8 setSortDescriptors:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v21, 1)}];
    v19 = 0;
    v9 = [v6 executeFetchRequest:v8 error:&v19];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          if ([objc_msgSend(v14 "valueHash")])
          {
            [v14 setRated:1];
            sub_1000CE00C(v6);
            goto LABEL_15;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_15:
}

void sub_1000C0FB8(uint64_t a1)
{
  v2 = [[XPCClient alloc] initWithInputConnection:*(a1 + 32)];
  if (v2)
  {
    v3 = [*(a1 + 40) _beginManagedContextSession];
    v4 = [InAppReviewRequest entityForContext:v3];
    v5 = objc_alloc_init(NSFetchRequest);
    [v5 setEntity:v4];
    v15 = 0;
    v6 = [v3 executeFetchRequest:v5 error:&v15];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v3 deleteObject:*(*(&v11 + 1) + 8 * v10)];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }

    if ([v3 hasChanges])
    {
      sub_1000CE00C(v3);
    }
  }
}

id sub_1000C1234(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(*(a1 + 32) + 32);
  result = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v19;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        if ([v7 XPCClient] == *(a1 + 40))
        {
          v8 = +[SSLogConfig sharedDaemonConfig];
          if (!v8)
          {
            v8 = +[SSLogConfig sharedConfig];
          }

          v9 = [v8 shouldLog];
          if ([v8 shouldLogToDisk])
          {
            LODWORD(v10) = v9 | 2;
          }

          else
          {
            LODWORD(v10) = v9;
          }

          v11 = [v8 OSLogObject];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v10 = v10;
          }

          else
          {
            v10 &= 2u;
          }

          if (v10)
          {
            v12 = objc_opt_class();
            v13 = *(a1 + 40);
            v22 = 138412546;
            v23 = v12;
            v24 = 2112;
            v25 = v13;
            v14 = _os_log_send_and_compose_impl(v10, 0, 0, 0, &_mh_execute_header, v11, 1, "%@: Client disconnected: %@", &v22, 22);
            if (v14)
            {
              v15 = v14;
              v16 = [NSString stringWithCString:v14 encoding:4];
              free(v15);
              v17 = v16;
              SSFileLog();
            }
          }

          return [v7 setXPCClient:{0, v17}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *sub_1000C14DC(void *result)
{
  if (*(result[4] + 48) == 1)
  {
    v2 = result;
    v3 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v3 removeObserver:v2[4] name:ISNetworkTypeChangedNotification object:0];
    *(v2[4] + 48) = 0;
    v4 = v2[4];

    return [v4 _startFirstReadyPayment];
  }

  return result;
}

id sub_1000C1658(uint64_t a1)
{
  v1 = [*(a1 + 32) _clients];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) firstReadyPaymentID];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1000C229C(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_int64)
  {
    v5 = [[NSNumber alloc] initWithLongLong:xpc_int64_get_value(object)];
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

id sub_1000C23B4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[Daemon daemon];

  return [v1 releaseKeepAliveAssertion:@"com.apple.itunesstored.MicroPaymentQueue"];
}

void *sub_1000C264C(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[1];
  if (!v3 || v3 == *(a1 + 40))
  {
    [result _setActivePaymentID:0];
    result = [*(a1 + 32) _startFirstReadyPayment];
  }

  if ((*(a1 + 48) & 1) == 0 && (*(*(a1 + 32) + 48) & 1) == 0)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    result = [(NSNotificationCenter *)v4 addObserver:*(a1 + 32) selector:"_networkTypeChanged:" name:ISNetworkTypeChangedNotification object:0];
    *(*(a1 + 32) + 48) = 1;
  }

  return result;
}

void sub_1000C2954(uint64_t a1, void *a2)
{
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = v5 | 2;
  }

  else
  {
    LODWORD(v6) = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = *(a1 + 40);
    v40 = 138543874;
    v41 = v8;
    v42 = 2114;
    v43 = v9;
    v44 = 2114;
    v45 = a2;
    v10 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 0, "[%{public}@]: Tring to send purchase intents for client: %{public}@, got intents: %{public}@", &v40, 32);
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4];
      free(v11);
      v32 = v12;
      SSFileLog();
    }
  }

  if (a2 && [a2 count])
  {
    v13 = objc_opt_new();
    v14 = [NSDate dateWithTimeIntervalSinceNow:-900.0];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = [a2 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(a2);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          [objc_msgSend(v19 timestamp];
          if ([[NSDate compare:"compare:" dateWithTimeIntervalSince1970:?]
          {
            [v13 addObject:v19];
          }
        }

        v16 = [a2 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v16);
    }

    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    v21 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      LODWORD(v22) = v21 | 2;
    }

    else
    {
      LODWORD(v22) = v21;
    }

    v23 = [v20 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v22;
    }

    else
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v25 = *(a1 + 40);
      v40 = 138543874;
      v41 = v24;
      v42 = 2114;
      v43 = v25;
      v44 = 2114;
      v45 = a2;
      LODWORD(v34) = 32;
      v26 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, v23, 0, "[%{public}@]: Sending purchase intents for client: %{public}@, intents within time limit: %{public}@", &v40, v34);
      if (v26)
      {
        v27 = v26;
        v28 = [NSString stringWithCString:v26 encoding:4];
        free(v27);
        v33 = v28;
        SSFileLog();
      }
    }

    [*(a1 + 56) sendPurchaseIntents:v13 forApp:{*(a1 + 40), v33}];

    [+[PurchaseActionsManager sharedInstance](PurchaseActionsManager deletePurchaseIntentsForApp:"deletePurchaseIntentsForApp:", *(a1 + 40)];
  }

  v31 = *(a1 + 48);
  v30 = (a1 + 48);
  v29 = v31;
  if (v31)
  {
    dispatch_semaphore_signal(v29);
    dispatch_release(*v30);
  }
}

id sub_1000C3028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) object];
  v7 = *(a1 + 40);

  return [v6 _finishPaymentOperationForPaymentID:v7 result:a2 error:a3];
}

uint64_t sub_1000C84C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[SKDownload alloc] initWithXPCEncoding:v4];

  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

void *sub_1000C9A64()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    memset(length, 0, sizeof(length));
    sub_100049898([v0 UTF8String], objc_msgSend(v0, "length"), length);
    if (v2)
    {
      CFRelease(v1);
    }

    else
    {
      v3 = CFDataCreate(0, length + 4, LODWORD(length[0]));
      CFRelease(v1);
      if (v3)
      {
        v1 = sub_1000C9B54(0, v3);
        CFRelease(v3);
        return v1;
      }
    }

    return 0;
  }

  return v1;
}

void *sub_1000C9B54(int a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x1060040F76DDFE0uLL);
  if (a2 && CFDataGetLength(a2))
  {
    *v4 = a1;
    v4[1] = CFRetain(a2);
    *(v4 + 4) = sub_1000CA4BC();
  }

  else
  {
    free(v4);
    return 0;
  }

  return v4;
}

void sub_1000C9BDC(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[1];
      if (v3)
      {
        CFRelease(v3);
      }

      free(v2);
    }

    *a1 = 0;
  }
}

BOOL sub_1000C9C24(int a1, CFReadStreamRef stream, CFDataRef theData, CFDataRef *a4, const __CFData *a5, void *a6)
{
  if (a6)
  {
    v31 = a6;
    v12 = a6;
  }

  else
  {
    v12 = sub_1000C9A64();
    v31 = v12;
    if (!v12)
    {
      return v12;
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (stream)
  {
    CFReadStreamOpen(stream);
    if (!theData)
    {
      if (!CFReadStreamHasBytesAvailable(stream))
      {
LABEL_44:
        v26 = 0;
        goto LABEL_58;
      }

      memset(&c, 0, sizeof(c));
      CC_SHA1_Init(&c);
      goto LABEL_23;
    }

    if (!CFDataGetLength(theData) && !CFReadStreamHasBytesAvailable(stream))
    {
      goto LABEL_44;
    }

LABEL_14:
    if (CFDataGetLength(theData))
    {
      if (CFDataGetLength(theData) != 20)
      {
        v27 = -50;
        *(v12 + 20) = -50;
        v28 = "";
        goto LABEL_53;
      }

      v33.location = 0;
      v33.length = 20;
      CFDataGetBytes(theData, v33, buffer);
LABEL_36:
      if (a1 == 1)
      {
        v16 = *(v12 + 16);
        if (!v16)
        {
          v16 = sub_1000CA4BC();
          *(v12 + 16) = v16;
        }

        sub_1000CA540(v16);
        v17 = __chkstk_darwin();
        v19 = &c - ((v18 + 15) & 0x1FFFFFFF0);
        c.h0 = v17;
        v20 = *(v12 + 16);
        v21 = *v12;
        BytePtr = CFDataGetBytePtr(*(v12 + 8));
        v23 = *(v12 + 8);
        if (v23)
        {
          Length = CFDataGetLength(v23);
        }

        else
        {
          Length = 0;
        }

        sub_100035894(v20, v21, BytePtr, Length, buffer, 20, v19, &c);
        if (!v27)
        {
          v26 = CFDataCreate(0, v19, c.h0);
          if (!stream)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

LABEL_51:
        *(v12 + 20) = v27;
        v28 = ". missing entitlement?";
        if (v27 != -42180)
        {
          v28 = "";
        }

LABEL_53:
        fprintf(__stderrp, "cfdcb statusError = %d%s\n", v27, v28);
        v12 = 0;
        if (!a4)
        {
          goto LABEL_62;
        }

LABEL_54:
        v26 = 0;
LABEL_61:
        *a4 = v26;
        goto LABEL_62;
      }

      CFDataGetBytePtr(*(v12 + 8));
      v25 = *(v12 + 8);
      if (v25)
      {
        CFDataGetLength(v25);
        if (!a5)
        {
          goto LABEL_50;
        }
      }

      else if (!a5)
      {
LABEL_50:
        sub_100055AA8();
        if (!v27)
        {
          v26 = 0;
          if (!stream)
          {
LABEL_59:
            *(v12 + 20) = 0;
            if (!a4)
            {
              if (v26)
              {
                CFRelease(v26);
              }

              v12 = 1;
              goto LABEL_62;
            }

            v12 = 1;
            goto LABEL_61;
          }

LABEL_58:
          CFReadStreamClose(stream);
          goto LABEL_59;
        }

        goto LABEL_51;
      }

      CFDataGetBytePtr(a5);
      CFDataGetLength(a5);
      goto LABEL_50;
    }

    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    if (!stream)
    {
LABEL_25:
      if (CFReadStreamGetStatus(stream) != kCFStreamStatusAtEnd)
      {
        v14 = 0;
        do
        {
          if (!v14)
          {
            v14 = malloc_type_malloc(0x1000uLL, 0x7FCB058EuLL);
          }

          v15 = CFReadStreamRead(stream, v14, 4096);
          if (v15 >= 1)
          {
            if (v15 > 0x10000)
            {
              sub_100272128();
            }

            CC_SHA1_Update(&c, v14, v15);
          }
        }

        while (CFReadStreamGetStatus(stream) != kCFStreamStatusAtEnd);
        if (v14)
        {
          free(v14);
        }
      }

      CC_SHA1_Final(buffer, &c);
      goto LABEL_36;
    }

LABEL_23:
    v13 = CFReadStreamCopyProperty(stream, kCFStreamPropertyFileCurrentOffset);
    if (v13)
    {
      CFRelease(v13);
    }

    goto LABEL_25;
  }

  if (theData && CFDataGetLength(theData))
  {
    if (!CFDataGetLength(theData))
    {
      *(v12 + 20) = 0;
      v12 = 1;
      if (!a4)
      {
LABEL_62:
        if (v31 != a6)
        {
          sub_1000C9BDC(&v31);
        }

        return v12;
      }

      goto LABEL_54;
    }

    goto LABEL_14;
  }

  if (v12 != a6)
  {
    sub_1000C9BDC(&v31);
  }

  return a5 == 0;
}

id sub_1000CA05C(const __CFData *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!CFDataGetLength(a1))
  {
    return 0;
  }

  if (!CFDataGetLength(a1))
  {
    return 0;
  }

  v4 = sub_1000CA3E4(a1, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!CFDataGetLength(v4))
  {
    CFRelease(v5);
    return 0;
  }

  valuePtr = sub_1000CA4BC();
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *keys = *off_1003280A8;
  v17 = *&off_1003280B8;
  values[0] = v5;
  values[1] = v6;
  values[2] = a1;
  values[3] = 0;
  v7 = CFDictionaryCreate(0, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v7)
  {
    v8 = v7;
    v9 = CFWriteStreamCreateWithAllocatedBuffers(kCFAllocatorDefault, kCFAllocatorDefault);
    if (v9)
    {
      v10 = v9;
      if (CFWriteStreamOpen(v9))
      {
        if (CFPropertyListWrite(v8, v10, kCFPropertyListBinaryFormat_v1_0, 0, 0) < 1)
        {
          v11 = 0;
        }

        else
        {
          v11 = CFWriteStreamCopyProperty(v10, kCFStreamPropertyDataWritten);
        }

        CFWriteStreamClose(v10);
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v10);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v11 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(v5);
  if (!v11)
  {
    return 0;
  }

  if (CFDataGetLength(v11))
  {
    v12 = [v11 writeToFile:a2 options:1 error:0];
  }

  else
  {
    v12 = 0;
  }

  CFRelease(v11);
  return v12;
}

const __CFDictionary *sub_1000CA250(uint64_t a1)
{
  v1 = [[NSData alloc] initWithContentsOfFile:a1 options:0 error:0];
  if (v1)
  {
    v2 = v1;
    if (CFDataGetLength(v1))
    {
      v3 = CFPropertyListCreateWithData(0, v2, 0, 0, 0);
      v4 = v3;
      if (!v3)
      {
LABEL_15:
        CFRelease(v2);
        return v4;
      }

      Value = CFDictionaryGetValue(v3, @"cbk");
      v6 = CFDictionaryGetValue(v4, @"data");
      if (Value)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        CFRelease(v4);
      }

      else
      {
        v8 = CFRetain(v6);
        v9 = CFRetain(Value);
        CFRelease(v4);
        if (v8)
        {
          BytePtr = CFDataGetBytePtr(v8);
          Length = CFDataGetLength(v8);
          v12 = CFReadStreamCreateWithBytesNoCopy(0, BytePtr, Length, kCFAllocatorNull);
          v14 = sub_1000C9A64();
          if (sub_1000C9C24(2, v12, 0, 0, v9, v14))
          {
            v4 = CFRetain(v8);
          }

          else
          {
            v4 = 0;
          }

          sub_1000C9BDC(&v14);
          if (v12)
          {
            CFRelease(v12);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          CFRelease(v8);
          goto LABEL_15;
        }
      }
    }

    v4 = 0;
    goto LABEL_15;
  }

  return 0;
}

CFTypeRef sub_1000CA3E4(CFDataRef theData, void *a2)
{
  v4 = a2;
  if (!a2)
  {
    v4 = sub_1000C9A64();
  }

  cf = 0;
  v10 = v4;
  BytePtr = CFDataGetBytePtr(theData);
  if (theData)
  {
    Length = CFDataGetLength(theData);
  }

  else
  {
    Length = 0;
  }

  v7 = CFReadStreamCreateWithBytesNoCopy(0, BytePtr, Length, kCFAllocatorNull);
  if (!sub_1000C9C24(1, v7, 0, &cf, 0, v4))
  {
    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v4 != a2)
  {
    sub_1000C9BDC(&v10);
  }

  return cf;
}

uint64_t sub_1000CA4BC()
{
  result = dword_100382A78;
  if (dword_100382A78 == -1)
  {
    valuePtr = 0;
    v1 = MCCopyCheckpointValue();
    if (v1)
    {
      v2 = v1;
      CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
      if (valuePtr < 5)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }

      dword_100382A78 = v3;
      CFRelease(v2);
      return dword_100382A78;
    }

    else
    {
      result = 2;
      dword_100382A78 = 2;
    }
  }

  return result;
}

uint64_t sub_1000CA540(int a1)
{
  if ((a1 - 1) < 3)
  {
    return dword_1002A8E80[a1 - 1];
  }

  fprintf(__stderrp, "ERROR: INVALID version number: %d\n", a1);
  return 46;
}

void sub_1000CABFC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsKey:v6] & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

uint64_t sub_1000CBF04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v5 = [[SKProduct alloc] initWithXPCEncoding:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [(SKProduct *)v5 _localeIdentifier];
      if (v7)
      {
        v8 = [*(a1 + 32) objectForKey:v7];
        if (!v8)
        {
          v8 = [[NSLocale alloc] initWithLocaleIdentifier:v7];
          if (v8)
          {
            [*(a1 + 32) setObject:v8 forKey:v7];
          }
        }

        [(SKProduct *)v6 _setPriceLocale:v8];
        [(SKProduct *)v6 _setLocaleIdentifier:0];
      }

      [*(a1 + 40) addObject:v6];
    }
  }

  return 1;
}

uint64_t sub_1000CC3E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[SKProductDiscount alloc] initWithXPCEncoding:v4];

  [*(a1 + 32) addObject:v5];
  return 1;
}

void sub_1000CDD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CDDB4(void *a1, void *a2)
{
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:a1[4] forKey:@"bundle_id"];
  [v4 setObject:+[NSNumber numberWithLongLong:](NSNumber forKey:{"numberWithLongLong:", a1[7]), @"download_id"}];
  [v4 setObject:a1[5] forKey:@"expected_phase"];
  [v4 setObject:&off_10034BD48 forKey:@"retry_count"];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", v5), @"time_updated"}];
  v6 = -[ApplicationWorkspaceState initWithPropertyValues:inDatabase:]([ApplicationWorkspaceState alloc], "initWithPropertyValues:inDatabase:", v4, [a2 database]);
  *(*(a1[6] + 8) + 24) = v6 != 0;

  return *(*(a1[6] + 8) + 24);
}

uint64_t sub_1000CDEFC(uint64_t a1)
{
  pthread_mutex_lock(&stru_100382A80);
  if (!qword_100383E58[a1])
  {
    v2 = [[PersistentStoreConfiguration alloc] initWithStoreType:a1];
    qword_100383E58[a1] = [[PersistentStore alloc] initWithConfiguration:v2 error:0];
  }

  pthread_mutex_unlock(&stru_100382A80);
  return qword_100383E58[a1];
}

uint64_t sub_1000CE00C(void *a1)
{
  v39 = 0;
  v32 = [a1 save:&v39];
  if ((v32 & 1) == 0)
  {
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 2;
    }

    if (v6)
    {
      v40 = 134218242;
      v41 = a1;
      v42 = 2112;
      v43 = v39;
      v7 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v5, 0, "Could not save modal context: %p: %@", &v40, 22);
      if (v7)
      {
        v8 = v7;
        v9 = [NSString stringWithCString:v7 encoding:4];
        free(v8);
        v29 = v9;
        SSFileLog();
      }
    }

    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [objc_msgSend(v39 userInfo];
    v10 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
    v11 = &CFDictionaryGetValue_ptr;
    if (v10)
    {
      v12 = v10;
      v34 = *v36;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v36 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          v15 = [v14 userInfo];
          v16 = [v11[412] sharedDaemonConfig];
          if (!v16)
          {
            v16 = [v11[412] sharedConfig];
          }

          v17 = [v16 shouldLog];
          if ([v16 shouldLogToDisk])
          {
            v18 = v17 | 2;
          }

          else
          {
            v18 = v17;
          }

          v19 = [v16 OSLogObject];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v18;
          }

          else
          {
            v20 = v18 & 2;
          }

          if (v20)
          {
            v21 = [v14 code];
            v22 = [v15 objectForKey:NSValidationKeyErrorKey];
            v23 = [v15 objectForKey:NSValidationValueErrorKey];
            v24 = [v15 objectForKey:NSValidationObjectErrorKey];
            v40 = 134218754;
            v41 = v21;
            v42 = 2112;
            v43 = v22;
            v44 = 2112;
            v45 = v23;
            v11 = &CFDictionaryGetValue_ptr;
            v46 = 2112;
            v47 = v24;
            LODWORD(v31) = 42;
            v25 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 0, "-- %ld, %@, %@, %@", &v40, v31);
            if (v25)
            {
              v26 = v25;
              v27 = [NSString stringWithCString:v25 encoding:4];
              free(v26);
              v30 = v27;
              SSFileLog();
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v12);
    }
  }

  return v32;
}

void sub_1000CE630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CE660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _disconnect];
}

void sub_1000CE6A0(uint64_t a1, void *a2, void *a3)
{
  xdict = a2;
  v5 = a3;
  if (xpc_dictionary_get_int64(xdict, "0") != -1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _handleMessage:xdict connection:v5];
  }
}

uint64_t sub_1000CE874(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000CE88C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return _objc_release_x1(WeakRetained, v4);
}

void sub_1000CEA94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (objc_opt_respondsToSelector())
  {
    v3 = *(*(a1 + 32) + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000CEB54;
    v6[3] = &unk_100327238;
    v4 = WeakRetained;
    v5 = *(a1 + 32);
    v7 = v4;
    v8 = v5;
    dispatch_async(v3, v6);
  }
}

void sub_1000CEC2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (objc_opt_respondsToSelector())
  {
    v3 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CECFC;
    block[3] = &unk_1003281A0;
    v4 = WeakRetained;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v4;
    v9 = v5;
    v10 = v6;
    dispatch_async(v3, block);
  }
}

void sub_1000CFEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CFF90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000CFFA8(void *a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  if (v15)
  {
    v16 = a1[4];
    *v43 = 138543362;
    *&v43[4] = v16;
    v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v14, 0, "%{public}@: [PW] DisplayPaymentSheetOperation did complete", v43, 12);

    if (!v17)
    {
      goto LABEL_13;
    }

    v14 = [NSString stringWithCString:v17 encoding:4];
    free(v17);
    v41 = v14;
    SSFileLog();
  }

LABEL_13:
  if (v10)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a5);
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (!v22)
    {
      goto LABEL_50;
    }

    v23 = a1[4];
    *v43 = 138543618;
    *&v43[4] = v23;
    *&v43[12] = 2112;
    *&v43[14] = v10;
    LODWORD(v42) = 22;
    v24 = "%{public}@: [PW] Payment sheet authorized failed with error: %@";
    goto LABEL_24;
  }

  if ((a4 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 1;
    v30 = ISError();
    v31 = *(a1[5] + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v33 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v34 = v33 | 2;
    }

    else
    {
      v34 = v33;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v34;
    }

    else
    {
      v22 = v34 & 2;
    }

    if (!v22)
    {
      goto LABEL_50;
    }

    v35 = a1[4];
    *v43 = 138543362;
    *&v43[4] = v35;
    LODWORD(v42) = 12;
    v24 = "%{public}@: [PW] Payment sheet did cancel";
LABEL_47:
    v25 = v21;
    v26 = 0;
    goto LABEL_48;
  }

  if (v9)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v27 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v28;
    }

    else
    {
      v22 = v28 & 2;
    }

    if (!v22)
    {
      goto LABEL_50;
    }

    v29 = a1[4];
    *v43 = 138543362;
    *&v43[4] = v29;
    LODWORD(v42) = 12;
    v24 = "%{public}@: [PW] Payment sheet did authorize payment with password";
    goto LABEL_47;
  }

  v18 = +[SSLogConfig sharedDaemonConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  v38 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v39 = v38 | 2;
  }

  else
  {
    v39 = v38;
  }

  v21 = [v18 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = v39;
  }

  else
  {
    v22 = v39 & 2;
  }

  if (!v22)
  {
    goto LABEL_50;
  }

  v40 = a1[4];
  *v43 = 138543362;
  *&v43[4] = v40;
  LODWORD(v42) = 12;
  v24 = "%{public}@: [PW] Payment sheet encountered an unknown error";
LABEL_24:
  v25 = v21;
  v26 = 16;
LABEL_48:
  v36 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, v25, v26, v24, v43, v42, *v43, *&v43[8]);

  if (!v36)
  {
    goto LABEL_51;
  }

  v21 = [NSString stringWithCString:v36 encoding:4];
  free(v36);
  SSFileLog();
LABEL_50:

LABEL_51:
  if (v9)
  {
    v37 = a4;
  }

  else
  {
    v37 = 0;
  }

  *(*(a1[8] + 8) + 24) = v37;
}

uint64_t sub_1000D0700(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100383E68;
  qword_100383E68 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1000D0B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak(&a21);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a31);
  objc_destroyWeak((v31 - 168));
  _Unwind_Resume(a1);
}

id sub_1000D0BF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _purgeable:v5 urgency:a2];

  v8 = v7;
  return v8;
}

id sub_1000D0C64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _purge:v5 urgency:a2];

  v8 = v7;
  return v8;
}

void sub_1000D0CD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelPurge];
}

id sub_1000D0D10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _purge:v5 urgency:a2];

  v8 = v7;
  return v8;
}

uint64_t sub_1000D20B0(uint64_t a1, uint64_t a2)
{
  if (qword_100383E88 != -1)
  {
    sub_10027217C();
  }

  return qword_100383E80;
}

void sub_1000D2328(uint64_t a1, void *a2)
{
  v5 = [*(a1 + 32) copyProductsResponse];
  sub_1001FA20C(a2, "1", v5);
  [*(a1 + 32) error];
  v4 = sub_1001FA200();
  sub_1001FA20C(a2, "2", v4);
}

uint64_t sub_1000D242C(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_set_int64(xdict, "0", 20003);
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_1000D2518(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_set_int64(xdict, "0", 20003);
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void *sub_1000D2580(void *a1)
{
  if (a1)
  {
    v2 = [a1 domain];
    if (![v2 isEqualToString:ISErrorDomain])
    {
      v4 = [a1 domain];
      if (![v4 isEqualToString:SSServerErrorDomain])
      {
        return a1;
      }
    }

    [a1 code];
    sub_1001FA1F0();
  }

  else
  {
    sub_1001FA1F0();
  }

  return ISErrorWithDomain();
}

void sub_1000D2680(id a1)
{
  qword_100383E80 = objc_alloc_init(ISOperationQueue);
  [qword_100383E80 setMaxConcurrentOperationCount:3];
  [qword_100383E80 setAdjustsMaxConcurrentOperationCount:0];
  v1 = +[Daemon daemon];
  v2 = qword_100383E80;

  [v1 addKeepAliveOperationQueue:v2];
}

void sub_1000D4640(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D4764;
    block[3] = &unk_100328288;
    v19 = v7;
    v13 = v11;
    v14 = *(a1 + 32);
    v20 = v13;
    v21 = v14;
    v15 = v8;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v25 = v9;
    dispatch_async(v12, block);
  }
}

id sub_1000D4764(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      LODWORD(v6) = v5 | 2;
    }

    else
    {
      LODWORD(v6) = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v6;
    }

    else
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 72);
      v10 = *(a1 + 80);
      v14 = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v11 = v8;
      v12 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 0, "%@: Preparation failed for upload: %@, error: %@", &v14, 32);

      if (!v12)
      {
LABEL_17:

        return [*(a1 + 40) _failUploadWithDatabaseID:*(a1 + 72) error:*(a1 + 80)];
      }

      v7 = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog();
    }

    goto LABEL_17;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _addUploadTaskWithRequest:v3 configuration:? URLRequest:?];
}

void sub_1000D49C4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = v7 | 2;
  }

  else
  {
    LODWORD(v8) = v7;
  }

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = objc_opt_class();
  v11 = v10;
  v14 = 138412802;
  v15 = v10;
  v16 = 2048;
  v17 = [v4 taskIdentifier];
  v18 = 2112;
  v19 = v5;
  v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 1, "%@: Canceling task: %lu, to cancel upload: %@", &v14, 32);

  if (v12)
  {
    v9 = [NSString stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
LABEL_12:
  }

  v13 = [[NSNumber alloc] initWithInteger:0];
  objc_setAssociatedObject(v4, "com.apple.itunesstored.upload.stop-reason", v13, 1);
  [v4 cancel];
}

void sub_1000D4D38(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = v7 | 2;
  }

  else
  {
    LODWORD(v8) = v7;
  }

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = objc_opt_class();
  v11 = v10;
  v14 = 138412802;
  v15 = v10;
  v16 = 2048;
  v17 = [v4 taskIdentifier];
  v18 = 2112;
  v19 = v5;
  v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 1, "%@: Canceling task: %lu, to pause upload: %@", &v14, 32);

  if (v12)
  {
    v9 = [NSString stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
LABEL_12:
  }

  v13 = [[NSNumber alloc] initWithInteger:1];
  objc_setAssociatedObject(v4, "com.apple.itunesstored.upload.stop-reason", v13, 1);
  [v4 cancel];
}

void sub_1000D5418(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = [*(a1 + 40) error];
  }

  v3 = objc_getAssociatedObject(*(a1 + 48), "com.apple.itunesstored.upload.stop-reason");
  if (!v3)
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    v14 = v13;
    if (v2)
    {
      if (!v13)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      v15 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v16 = v15 | 2;
      }

      else
      {
        v16 = v15;
      }

      v17 = [v14 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v16;
      }

      else
      {
        v18 = v16 & 2;
      }

      if (v18)
      {
        v19 = objc_opt_class();
        v20 = *(a1 + 64);
        v21 = *(a1 + 72);
        v35 = v19;
        v22 = [v21 configuration];
        v23 = [v22 identifier];
        v37 = 138413058;
        v38 = v19;
        v39 = 2112;
        v40 = v20;
        v41 = 2112;
        v42 = v23;
        v43 = 2112;
        v44 = v2;
        v24 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, v17, 0, "%@: Upload: %@ failed in session: %@ with error: %@", &v37, 42);

        if (!v24)
        {
LABEL_32:

          [*(a1 + 56) _failUploadWithDatabaseID:*(a1 + 64) error:v2];
          goto LABEL_33;
        }

        v17 = [NSString stringWithCString:v24 encoding:4];
        free(v24);
        SSFileLog();
      }

      goto LABEL_32;
    }

    if (!v13)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    v25 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    v27 = [v14 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 2;
    }

    if (v28)
    {
      v29 = objc_opt_class();
      v30 = *(a1 + 64);
      v31 = *(a1 + 72);
      v36 = v29;
      v32 = [v31 configuration];
      v33 = [v32 identifier];
      v37 = 138412802;
      v38 = v29;
      v39 = 2112;
      v40 = v30;
      v41 = 2112;
      v42 = v33;
      v34 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, v27, 1, "%@: Upload: %@ finished in session: %@", &v37, 32);

      if (!v34)
      {
        goto LABEL_46;
      }

      v27 = [NSString stringWithCString:v34 encoding:4];
      free(v34);
      SSFileLog();
    }

LABEL_46:
    [*(a1 + 56) _cleanupForDatabaseID:*(a1 + 64)];
    v12 = [*(a1 + 56) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v12 uploadSessionController:*(a1 + 56) uploadDidFinishWithDatabaseID:objc_msgSend(*(a1 + 64) response:{"longLongValue"), *(a1 + 40)}];
    }

    goto LABEL_18;
  }

  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = v5 | 2;
  }

  else
  {
    LODWORD(v6) = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = *(a1 + 64);
    v37 = 138412546;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    v10 = v8;
    v11 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 1, "%@: Task did stop for upload: %@", &v37, 22);

    if (!v11)
    {
      goto LABEL_16;
    }

    v7 = [NSString stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog();
  }

LABEL_16:
  [*(a1 + 56) _cleanupForDatabaseID:*(a1 + 64)];
  v12 = [*(a1 + 56) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v12 uploadSessionController:*(a1 + 56) taskDidStopWithDatabaseID:{objc_msgSend(*(a1 + 64), "longLongValue")}];
  }

LABEL_18:

LABEL_33:
}

void sub_1000D5A14(uint64_t a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000D5C90;
  v26 = sub_1000D5CA0;
  v27 = 0;
  v2 = [*(a1 + 32) longLongValue];
  v3 = *(*(a1 + 40) + 32);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000D5CA8;
  v21[3] = &unk_100328328;
  v21[4] = &v22;
  v21[5] = v2;
  [v3 enumerateObjectsUsingBlock:v21];
  v4 = v23[5];
  if (!v4)
  {
    v5 = objc_alloc_init(DirectUploadProgress);
    v6 = v23[5];
    v23[5] = v5;

    [v23[5] setUploadDatabaseIdentifier:v2];
    v7 = *(*(a1 + 40) + 32);
    if (!v7)
    {
      v8 = objc_alloc_init(NSMutableArray);
      v9 = *(a1 + 40);
      v10 = *(v9 + 32);
      *(v9 + 32) = v8;

      v7 = *(*(a1 + 40) + 32);
    }

    [v7 addObject:v23[5]];
    v4 = v23[5];
  }

  [v4 setCountOfBytesExpectedToSend:*(a1 + 48)];
  [v23[5] setCountOfBytesSent:*(a1 + 56)];
  v11 = *(a1 + 40);
  if (!*(v11 + 40))
  {
    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v11 + 16));
    v13 = *(a1 + 40);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(*(a1 + 40) + 40);
    v16 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v15, v16, 0, 0);
    objc_initWeak(&location, *(a1 + 40));
    v17 = *(*(a1 + 40) + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000D5D28;
    v18[3] = &unk_100328150;
    objc_copyWeak(&v19, &location);
    dispatch_source_set_event_handler(v17, v18);
    dispatch_resume(*(*(a1 + 40) + 40));
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v22, 8);
}

void sub_1000D5C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D5C90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000D5CA8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 uploadDatabaseIdentifier] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000D5D28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _flushProgress];
}

void sub_1000D5E5C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 uploadSessionController:*(a1 + 32) uploadDidBeginTransferWithDatabaseID:{objc_msgSend(*(a1 + 40), "longLongValue")}];
  }
}

void sub_1000D6404(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v21 = v7;
  v27[0] = v21;
  v20 = v8;
  v27[1] = v20;
  v10 = 0;
  v19 = v9;
  v27[2] = v19;
  do
  {
    v11 = v27[v10];
    if (v11)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          v16 = 0;
          do
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = objc_getAssociatedObject(*(*(&v22 + 1) + 8 * v16), "com.apple.itunesstored.upload.id");
            if (v17 && [*(a1 + 32) containsObject:v17])
            {
              (*(*(a1 + 40) + 16))();
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v14);
      }
    }

    ++v10;
  }

  while (v10 != 3);
  for (i = 2; i != -1; --i)
  {
  }
}

void sub_1000D7490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D74DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000D74F4(uint64_t a1, int a2, void *a3, void *a4)
{
  v12 = a3;
  v8 = a4;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
  v11 = v8;

  *(*(*(a1 + 56) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1000D7C04(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100383E90;
  qword_100383E90 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1000D7D04(id *a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1000D8008;
  v33 = sub_1000D8018;
  v34 = 0;
  v3 = [a1[4] clientIdentifier];
  if (v3)
  {
    v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{v3, @"source_app", 0}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1[5] _database];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000D8020;
  v21[3] = &unk_1003283F0;
  v22 = a1[6];
  v6 = v3;
  v23 = v6;
  v7 = v5;
  v24 = v7;
  v8 = v4;
  v25 = v8;
  v9 = v2;
  v10 = a1[5];
  v26 = v9;
  v27 = v10;
  v28 = &v29;
  [v7 performTransactionWithBlock:v21];
  if ([v9 count])
  {
    v11 = [a1[5] _sessionController];
    [v11 addUploadTasksWithRequests:v9];
  }

  if (v30[5])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = *(a1[5] + 3);
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v35 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [*(*(&v17 + 1) + 8 * i) outputConnection];
          [v16 sendMessage:v30[5]];
        }

        v13 = [v12 countByEnumeratingWithState:&v17 objects:v35 count:16];
      }

      while (v13);
    }
  }

  _Block_object_dispose(&v29, 8);
}

void sub_1000D7FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D8008(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000D8020(uint64_t a1)
{
  v2 = [MediaSocialPostEntity newEntityValuesWithMediaSocialPost:*(a1 + 32)];
  v3 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  [v2 setObject:v3 forKey:@"creation_time"];

  v4 = [*(a1 + 32) sourceApplicationIdentifier];
  v5 = v4;
  if (v4 || (v5 = *(a1 + 40)) != 0)
  {
    [v2 setObject:v5 forKey:@"source_app"];
  }

  v6 = [[MediaSocialPostEntity alloc] initWithPropertyValues:v2 inDatabase:*(a1 + 48)];
  v7 = [*(a1 + 32) contentItems];
  v8 = [(MediaSocialPostEntity *)v6 insertEntitiesForContentItems:v7];

  v9 = [*(a1 + 32) externalServiceDestinations];
  v10 = [(MediaSocialPostEntity *)v6 insertEntitiesForExternalDestinations:v9];

  v11 = objc_alloc_init(NSMutableArray);
  v12 = [*(a1 + 32) attachments];
  v33 = v6;
  v13 = [(MediaSocialPostEntity *)v6 insertEntitiesForAttachments:v12 withProperties:*(a1 + 56)];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000D840C;
  v34[3] = &unk_1003283C8;
  v35 = *(a1 + 32);
  v36 = *(a1 + 64);
  v14 = v11;
  v37 = v14;
  v32 = v13;
  [v13 enumerateObjectsUsingBlock:v34];
  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  v16 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v15 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 & 2;
  }

  if (v19)
  {
    v20 = v2;
    v21 = objc_opt_class();
    v22 = v21;
    v23 = [(MediaSocialPostEntity *)v33 persistentID];
    v24 = [v32 count];
    v38 = 138412802;
    v39 = v21;
    v2 = v20;
    v40 = 2048;
    v41 = v23;
    v42 = 2048;
    v43 = v24;
    v25 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, v18, 1, "%@: Inserted media social post: %lld, with %ld uploads", &v38, 32);

    if (!v25)
    {
      goto LABEL_16;
    }

    v18 = [NSString stringWithCString:v25 encoding:4];
    free(v25);
    SSFileLog();
  }

LABEL_16:
  v26 = [v14 count];
  v27 = *(a1 + 72);
  if (v26)
  {
    if ([v27[3] count])
    {
      v28 = [*(a1 + 72) _newAddUploadsMessageWithDatabase:*(a1 + 48) hydratedUploadIDs:v14];
      v29 = *(*(a1 + 80) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;
    }
  }

  else
  {
    [v27 _enqueueNextReadyMediaSocialPostOperationWithDatabase:*(a1 + 48)];
  }

  return 1;
}

void sub_1000D840C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [DirectUploadRequest alloc];
  v5 = [a1[4] accountIdentifier];
  v9 = [(DirectUploadRequest *)v4 initWithEntity:v3 accountIdentifier:v5];

  [a1[5] addObject:v9];
  v6 = [NSNumber alloc];
  v7 = [v3 persistentID];

  v8 = [v6 initWithLongLong:v7];
  [a1[6] addObject:v8];
}

void sub_1000D860C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000D8630(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[5];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D86CC;
    block[3] = &unk_100327110;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void sub_1000D86D4(uint64_t a1)
{
  v2 = [*(a1 + 32) _databaseIfExists];
  v3 = v2;
  if (v2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000D8778;
    v4[3] = &unk_100328440;
    v4[4] = *(a1 + 32);
    v5 = v2;
    [v5 performTransactionWithBlock:v4];
  }
}

uint64_t sub_1000D8778(uint64_t a1)
{
  v2 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:2];
  [*(a1 + 32) _cleanupPendingUploads:v2 database:*(a1 + 40)];
  v3 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:1];
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:0];
  v8[0] = v3;
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:v5];

  [*(a1 + 32) _resumeUploadsWithPredicate:v6 clientIdentifier:0 resetFailureCount:0 error:0];
  [*(a1 + 32) _enqueueNextReadyMediaSocialPostOperationWithDatabase:*(a1 + 40)];

  return 1;
}

void sub_1000D89E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:6];
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:4];
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:3];
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:1];
  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:0];
  v24[0] = v4;
  v24[1] = v5;
  v24[2] = v6;
  v24[3] = v7;
  v24[4] = v8;
  v9 = [NSArray arrayWithObjects:v24 count:5];
  v10 = [SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:v9];

  v11 = xpc_dictionary_get_value(*(a1 + 32), "1");
  v12 = v11;
  if (v11 && xpc_get_type(v11) == &_xpc_type_array)
  {
    v20 = [*(a1 + 56) _copyPersistentIdentifiersArrayWithXPCArray:v12];
    [SSSQLiteContainsPredicate containsPredicateWithProperty:SSSQLEntityPropertyPersistentID values:v20];
    v13 = v21 = v4;
    v23[0] = v10;
    v23[1] = v13;
    v14 = [NSArray arrayWithObjects:v23 count:2];
    v19 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v14];

    v4 = v21;
    v10 = v19;
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v22 = 0;
  v17 = [v15 _cancelUploadsWithPredicate:v10 clientIdentifier:v16 error:{&v22, v19}];
  v18 = v22;
  SSXPCDictionarySetObject();
  xpc_dictionary_set_BOOL(v3, "2", v17);
}

void sub_1000D8D48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [*(a1 + 32) _databaseIfExists];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000D8E58;
  v12 = &unk_1003284B8;
  v6 = *(a1 + 32);
  v16 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v7 = v4;
  v15 = v7;
  v8 = v5;
  [v8 performTransactionWithBlock:&v9];
  if ([v7 count])
  {
    SSXPCDictionarySetObject();
  }
}

uint64_t sub_1000D8E58(uint64_t a1)
{
  v2 = [*(a1 + 56) _orderedUploadQueryWithDatabase:*(a1 + 32) predicate:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D8F10;
  v5[3] = &unk_100328490;
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 _enumerateSSVDirectUploadsWithQuery:v2 block:v5];

  return 1;
}

void sub_1000D9104(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:1];
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:0];
  v20[0] = v4;
  v20[1] = v5;
  v6 = [NSArray arrayWithObjects:v20 count:2];
  v7 = [SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];

  v8 = xpc_dictionary_get_value(*(a1 + 32), "1");
  v9 = v8;
  if (v8 && xpc_get_type(v8) == &_xpc_type_array)
  {
    v10 = [*(a1 + 56) _copyPersistentIdentifiersArrayWithXPCArray:v9];
    v11 = [SSSQLiteContainsPredicate containsPredicateWithProperty:SSSQLEntityPropertyPersistentID values:v10];
    v19[0] = v7;
    v19[1] = v11;
    v12 = [NSArray arrayWithObjects:v19 count:2];
    v13 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

    v7 = v13;
  }

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v18 = 0;
  v16 = [v14 _pauseUploadsWithPredicate:v7 clientIdentifier:v15 error:&v18];
  v17 = v18;
  SSXPCDictionarySetObject();
  xpc_dictionary_set_BOOL(v3, "2", v16);
}

void sub_1000D9570(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:4];
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:3];
  v20[0] = v4;
  v20[1] = v5;
  v6 = [NSArray arrayWithObjects:v20 count:2];
  v7 = [SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];

  v8 = xpc_dictionary_get_value(*(a1 + 32), "1");
  v9 = v8;
  if (v8 && xpc_get_type(v8) == &_xpc_type_array)
  {
    v10 = [*(a1 + 56) _copyPersistentIdentifiersArrayWithXPCArray:v9];
    v11 = [SSSQLiteContainsPredicate containsPredicateWithProperty:SSSQLEntityPropertyPersistentID values:v10];
    v19[0] = v7;
    v19[1] = v11;
    v12 = [NSArray arrayWithObjects:v19 count:2];
    v13 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

    v7 = v13;
  }

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v18 = 0;
  v16 = [v14 _resumeUploadsWithPredicate:v7 clientIdentifier:v15 resetFailureCount:1 error:&v18];
  v17 = v18;
  SSXPCDictionarySetObject();
  xpc_dictionary_set_BOOL(v3, "2", v16);
}

uint64_t sub_1000D98C4(uint64_t a1)
{
  v1 = [[DirectUploadEntity alloc] initWithPersistentID:*(a1 + 40) inDatabase:*(a1 + 32)];
  [(DirectUploadEntity *)v1 setValue:&off_10034BD60 forProperty:@"state"];

  return 1;
}

void sub_1000D9B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D9BC8(uint64_t a1)
{
  v2 = [[DirectUploadEntity alloc] initWithPersistentID:*(a1 + 72) inDatabase:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [(DirectUploadEntity *)v2 setFailedWithError:*(a1 + 40)];
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = v6 | 2;
    }

    else
    {
      LODWORD(v7) = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 72);
      v19 = 138412802;
      v20 = v9;
      v21 = 2048;
      v22 = v4;
      v23 = 2048;
      v24 = v10;
      v11 = v9;
      v12 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v8, 0, "%@: Failure count is now: %ld for upload: %lld", &v19, 32);

      if (!v12)
      {
        goto LABEL_14;
      }

      v8 = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog();
    }

LABEL_14:
    if (*(a1 + 80) == 1)
    {
      v13 = [(DirectUploadEntity *)v3 postEntity];
      v14 = [v13 valueForProperty:@"account_id"];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    else if (v4 > 2)
    {
      v17 = [*(a1 + 48) _errorCoordinator];
      [v17 addDialogForUpload:v3];
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  return 1;
}

uint64_t sub_1000D9FC4(uint64_t a1)
{
  v2 = [[DirectUploadEntity alloc] initWithPersistentID:*(a1 + 56) inDatabase:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    [(DirectUploadEntity *)v2 setProcessingWithResponse:*(a1 + 40)];
    [*(a1 + 48) _enqueueNextReadyMediaSocialPostOperationWithDatabase:*(a1 + 32)];
  }

  return 1;
}

void sub_1000DA390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA3A8(uint64_t a1)
{
  v31 = [SSSQLiteComparisonPredicate predicateWithProperty:@"account_id" equalToValue:*(a1 + 32)];
  v2 = [MediaSocialPostEntity queryWithDatabase:*(a1 + 40) predicate:v31];
  v3 = [SSSQLiteComparisonPredicate predicateWithProperty:@"error_code" equalToLongLong:139];
  v4 = [SSSQLiteContainsPredicate containsPredicateWithProperty:@"post_id" query:v2 queryProperty:SSSQLEntityPropertyPersistentID];
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:4];
  v43[0] = v3;
  v43[1] = v5;
  v43[2] = v4;
  v6 = [NSArray arrayWithObjects:v43 count:3];
  v7 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

  if (![*(a1 + 48) isEqual:*(a1 + 32)])
  {
    if ([*(a1 + 64) authenticateResponseType] == 2)
    {
      v15 = +[SSLogConfig sharedDaemonConfig];
      if (!v15)
      {
        v15 = +[SSLogConfig sharedConfig];
      }

      v16 = [v15 shouldLog];
      if ([v15 shouldLogToDisk])
      {
        v17 = v16 | 2;
      }

      else
      {
        v17 = v16;
      }

      v18 = [v15 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v17;
      }

      else
      {
        v19 = v17 & 2;
      }

      if (v19)
      {
        LODWORD(v38) = 138412290;
        *(&v38 + 4) = objc_opt_class();
        v20 = *(&v38 + 4);
        v21 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, v18, 0, "%@: Canceling uploads after canceled authentication", &v38, 12);

        if (!v21)
        {
LABEL_28:

          [*(a1 + 56) _cancelUploadsWithPredicate:v7 clientIdentifier:0 error:0];
          goto LABEL_35;
        }

        v18 = [NSString stringWithCString:v21 encoding:4];
        free(v21);
        SSFileLog();
      }

      goto LABEL_28;
    }

    v22 = [*(a1 + 64) error];
    v23 = objc_alloc_init(NSMutableArray);
    *&v38 = 0;
    *(&v38 + 1) = &v38;
    v39 = 0x3032000000;
    v40 = sub_1000D8008;
    v41 = sub_1000D8018;
    v42 = 0;
    v24 = [DirectUploadEntity queryWithDatabase:*(a1 + 40) predicate:v7];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000DA964;
    v32[3] = &unk_100328558;
    v33 = *(a1 + 40);
    v25 = v22;
    v26 = *(a1 + 72);
    v34 = v25;
    v36 = v26;
    v37 = &v38;
    v27 = v23;
    v35 = v27;
    [v24 enumeratePersistentIDsUsingBlock:v32];
    v28 = [v27 count];
    if (v28 == 1)
    {
      v29 = [*(a1 + 56) _errorCoordinator];
      [v29 addDialogForUpload:*(*(&v38 + 1) + 40)];
    }

    else
    {
      if (v28 < 2)
      {
LABEL_34:

        _Block_object_dispose(&v38, 8);
        goto LABEL_35;
      }

      v29 = [*(a1 + 56) _errorCoordinator];
      [v29 addDialogForUploadIdentifiers:v27];
    }

    goto LABEL_34;
  }

  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 2;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  LODWORD(v38) = 138412290;
  *(&v38 + 4) = objc_opt_class();
  v13 = *(&v38 + 4);
  v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v11, 1, "%@: Resuming uploads after authentication", &v38, 12);

  if (v14)
  {
    v11 = [NSString stringWithCString:v14 encoding:4];
    free(v14);
    SSFileLog();
LABEL_13:
  }

  [*(a1 + 56) _resumeUploadsWithPredicate:v7 clientIdentifier:0 resetFailureCount:1 error:0];
LABEL_35:

  return 1;
}

void sub_1000DA940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DA964(uint64_t a1, uint64_t a2)
{
  obj = [[DirectUploadEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  if ([(DirectUploadEntity *)obj setFailedWithError:*(a1 + 40)]> 2)
  {
    v4 = *(*(a1 + 64) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, obj);
    }

    v7 = [[NSNumber alloc] initWithLongLong:a2];
    [*(a1 + 48) addObject:v7];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

uint64_t sub_1000DAB94(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v3)
  {
    v4 = v3;
    v43 = *v50;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v50 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v49 + 1) + 8 * i);
        v7 = +[SSLogConfig sharedDaemonConfig];
        if (!v7)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v8 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          v9 = v8 | 2;
        }

        else
        {
          v9 = v8;
        }

        v10 = [v7 OSLogObject];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = v9;
        }

        else
        {
          v11 = v9 & 2;
        }

        if (v11)
        {
          v12 = objc_opt_class();
          v54 = 138412546;
          v55 = v12;
          v56 = 2112;
          v57 = v6;
          v13 = v12;
          LODWORD(v39) = 22;
          v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 1, "%@: Deleting post after error dialog: %@", &v54, v39);

          if (!v14)
          {
            goto LABEL_18;
          }

          v10 = [NSString stringWithCString:v14 encoding:4];
          free(v14);
          v38 = v10;
          SSFileLog();
        }

LABEL_18:
        v15 = -[MediaSocialPostEntity initWithPersistentID:inDatabase:]([MediaSocialPostEntity alloc], "initWithPersistentID:inDatabase:", [v6 longLongValue], *(a1 + 48));
        v16 = [(MediaSocialPostEntity *)v15 allUploadPersistentIdentifiers];
        [v2 addObjectsFromArray:v16];

        [(MediaSocialPostEntity *)v15 deleteFromDatabase];
      }

      v4 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v4);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v40 = *(a1 + 56);
  v44 = [v40 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v44)
  {
    v42 = *v46;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(v40);
        }

        v18 = *(*(&v45 + 1) + 8 * j);
        v19 = -[DirectUploadEntity initWithPersistentID:inDatabase:]([DirectUploadEntity alloc], "initWithPersistentID:inDatabase:", [v18 longLongValue], *(a1 + 48));
        v20 = [(DirectUploadEntity *)v19 valueForProperty:@"post_id"];
        v21 = [v20 longLongValue];
        v22 = +[SSLogConfig sharedDaemonConfig];
        v23 = v22;
        if (v21)
        {
          if (!v22)
          {
            v23 = +[SSLogConfig sharedConfig];
          }

          v24 = [v23 shouldLog];
          if ([v23 shouldLogToDisk])
          {
            v24 |= 2u;
          }

          v25 = [v23 OSLogObject];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = v24;
          }

          else
          {
            v26 = v24 & 2;
          }

          if (v26)
          {
            v27 = objc_opt_class();
            v54 = 138412546;
            v55 = v27;
            v56 = 2112;
            v57 = v20;
            v28 = v27;
            LODWORD(v39) = 22;
            v29 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, v25, 1, "%@: Deleting post after error dialog: %@", &v54, v39);

            if (v29)
            {
              v25 = [NSString stringWithCString:v29 encoding:4];
              free(v29);
              v38 = v25;
              SSFileLog();
              goto LABEL_36;
            }
          }

          else
          {
LABEL_36:
          }

          v30 = -[MediaSocialPostEntity initWithPersistentID:inDatabase:]([MediaSocialPostEntity alloc], "initWithPersistentID:inDatabase:", [v20 longLongValue], *(a1 + 48));
          v31 = [(MediaSocialPostEntity *)v30 allUploadPersistentIdentifiers];
          [v2 addObjectsFromArray:v31];

          [(MediaSocialPostEntity *)v30 deleteFromDatabase];
          goto LABEL_50;
        }

        if (!v22)
        {
          v23 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v32) = [v23 shouldLog];
        if ([v23 shouldLogToDisk])
        {
          LODWORD(v32) = v32 | 2;
        }

        v33 = [v23 OSLogObject];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v32 = v32;
        }

        else
        {
          v32 &= 2u;
        }

        if (!v32)
        {
          goto LABEL_48;
        }

        v34 = objc_opt_class();
        v54 = 138412546;
        v55 = v34;
        v56 = 2112;
        v57 = v20;
        v35 = v34;
        LODWORD(v39) = 22;
        v36 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &_mh_execute_header, v33, 1, "%@: Deleting upload after error dialog: %@", &v54, v39);

        if (v36)
        {
          v33 = [NSString stringWithCString:v36 encoding:4];
          free(v36);
          v38 = v33;
          SSFileLog();
LABEL_48:
        }

        [v2 addObject:v18];
        [(DirectUploadEntity *)v19 deleteFromDatabase];
LABEL_50:
      }

      v44 = [v40 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v44);
  }

  [*(a1 + 40) _sendRemoveUploadsMessageWithUploadIdentifiers:v2];
  [*(a1 + 40) _enqueueNextReadyMediaSocialPostOperationWithDatabase:*(a1 + 48)];

  return 1;
}

uint64_t sub_1000DB20C(uint64_t a1)
{
  v1 = a1;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v2)
  {
    v3 = v2;
    v31 = *v33;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v33 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v5 = v1;
        v6 = *(*(&v32 + 1) + 8 * i);
        v7 = +[SSLogConfig sharedDaemonConfig];
        if (!v7)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v8 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          v9 = v8 | 2;
        }

        else
        {
          v9 = v8;
        }

        v10 = [v7 OSLogObject];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = v9;
        }

        else
        {
          v11 = v9 & 2;
        }

        if (v11)
        {
          v12 = objc_opt_class();
          v36 = 138412546;
          v37 = v12;
          v38 = 2112;
          v39 = v6;
          v13 = v12;
          LODWORD(v29) = 22;
          v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 1, "%@: Retry post after error dialog: %@", &v36, v29);

          if (!v14)
          {
            goto LABEL_18;
          }

          v10 = [NSString stringWithCString:v14 encoding:4];
          free(v14);
          v28 = v10;
          SSFileLog();
        }

LABEL_18:
        v1 = v5;
        v15 = -[MediaSocialPostEntity initWithPersistentID:inDatabase:]([MediaSocialPostEntity alloc], "initWithPersistentID:inDatabase:", [v6 longLongValue], *(v5 + 48));
        [(MediaSocialPostEntity *)v15 setValue:&off_10034BD78 forKey:@"is_failed"];
        [(MediaSocialPostEntity *)v15 setValue:&off_10034BD78 forProperty:@"failure_count"];
      }

      v3 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v3);
  }

  if ([*(v1 + 32) count])
  {
    [*(v1 + 40) _enqueueNextReadyMediaSocialPostOperationWithDatabase:*(v1 + 48)];
  }

  if ([*(v1 + 56) count])
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v18;
    }

    else
    {
      v20 = v18 & 2;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v22 = *(v1 + 56);
      v23 = v21;
      v24 = [v22 count];
      v36 = 138412546;
      v37 = v21;
      v38 = 2048;
      v39 = v24;
      LODWORD(v29) = 22;
      v25 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 1, "%@: Retrying %ld uploads after error dialog", &v36, v29);

      if (!v25)
      {
LABEL_35:

        v26 = [SSSQLiteContainsPredicate containsPredicateWithProperty:SSSQLEntityPropertyPersistentID values:*(v1 + 56)];
        [*(v1 + 40) _resumeUploadsWithPredicate:v26 clientIdentifier:0 resetFailureCount:1 error:0];

        return 1;
      }

      v19 = [NSString stringWithCString:v25 encoding:4];
      free(v25);
      SSFileLog();
    }

    goto LABEL_35;
  }

  return 1;
}

uint64_t sub_1000DB858(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 result] == 4 || objc_msgSend(v7, "result") == 5)
        {
          [*(a1 + 40) addObject:v7];
        }

        else
        {
          v8 = -[MediaSocialPostEntity initWithPersistentID:inDatabase:]([MediaSocialPostEntity alloc], "initWithPersistentID:inDatabase:", [v7 postIdentifier], *(a1 + 48));
          [(MediaSocialPostEntity *)v8 updateWithPollingResponse:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return 1;
}

void sub_1000DBA60(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) count])
  {
    v2 = [*(*(a1 + 32) + 24) indexOfObjectIdenticalTo:*(a1 + 40)];
    if (v2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = v2;
      v4 = +[SSLogConfig sharedDaemonConfig];
      if (!v4)
      {
        v4 = +[SSLogConfig sharedConfig];
      }

      v5 = [v4 shouldLog];
      if ([v4 shouldLogToDisk])
      {
        LODWORD(v6) = v5 | 2;
      }

      else
      {
        LODWORD(v6) = v5;
      }

      v7 = [v4 OSLogObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v6 = v6;
      }

      else
      {
        v6 &= 2u;
      }

      if (v6)
      {
        v8 = objc_opt_class();
        v9 = *(a1 + 40);
        v10 = v8;
        v11 = [v9 clientIdentifier];
        v16 = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v11;
        v12 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 2, "%@: Disconnect client: %@", &v16, 22);

        if (!v12)
        {
          goto LABEL_15;
        }

        v7 = [NSString stringWithCString:v12 encoding:4];
        free(v12);
        SSFileLog();
      }

LABEL_15:
      [*(a1 + 40) setOutputConnectionWithConnection:0];
      [*(*(a1 + 32) + 24) removeObjectAtIndex:v3];
      if (![*(*(a1 + 32) + 24) count])
      {
        v13 = +[NSNotificationCenter defaultCenter];
        [v13 removeObserver:*(a1 + 32) name:@"XPCClientDisconnectNotification" object:0];
        v14 = *(a1 + 32);
        v15 = *(v14 + 24);
        *(v14 + 24) = 0;
      }
    }
  }
}

uint64_t sub_1000DBD50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_int64)
  {
    v5 = [[NSNumber alloc] initWithLongLong:xpc_int64_get_value(v4)];
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

uint64_t sub_1000DC284(uint64_t a1)
{
  v2 = objc_alloc_init(DirectUploadDatabaseSchema);
  [(DirectUploadDatabaseSchema *)v2 createSchemaInDatabase:*(a1 + 32)];

  return 1;
}

uint64_t sub_1000DC544(uint64_t a1)
{
  v12 = @"post_id";
  v2 = [DirectUploadEntity queryWithDatabase:*(a1 + 32) predicate:*(a1 + 40)];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DC668;
  v7[3] = &unk_1003285F8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 64);
  [v2 enumeratePersistentIDsAndProperties:&v12 count:1 usingBlock:v7];

  return 1;
}

void sub_1000DC668(uint64_t a1, uint64_t a2, id *a3)
{
  v6 = [[DirectUploadEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v7 = [*a3 longLongValue];
  if (!v7)
  {
    v9 = [[NSNumber alloc] initWithLongLong:a2];
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    v21 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      LODWORD(v22) = v21 | 2;
    }

    else
    {
      LODWORD(v22) = v21;
    }

    v23 = [v20 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v22 = v22;
    }

    else
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v25 = *(a1 + 48);
      v28 = 138412802;
      v29 = v24;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v25;
      v26 = v24;
      v27 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, v23, 1, "%@: Deleting upload: %@, for client: %@", &v28, 32);

      if (!v27)
      {
LABEL_27:

        [(DirectUploadEntity *)v6 deleteFromDatabase];
        [*(a1 + 56) addObject:v9];
        goto LABEL_28;
      }

      v23 = [NSString stringWithCString:v27 encoding:4];
      free(v27);
      SSFileLog();
    }

    goto LABEL_27;
  }

  v8 = v7;
  v9 = [[MediaSocialPostEntity alloc] initWithPersistentID:v7 inDatabase:*(a1 + 32)];
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    LODWORD(v12) = v11 | 2;
  }

  else
  {
    LODWORD(v12) = v11;
  }

  v13 = [v10 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v14 = objc_opt_class();
  v15 = *(a1 + 48);
  v28 = 138412802;
  v29 = v14;
  v30 = 2048;
  v31 = v8;
  v32 = 2112;
  v33 = v15;
  v16 = v14;
  v17 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, v13, 1, "%@: Deleting post: %lld, for client: %@", &v28, 32);

  if (v17)
  {
    v13 = [NSString stringWithCString:v17 encoding:4];
    free(v17);
    SSFileLog();
LABEL_13:
  }

  v18 = *(a1 + 56);
  v19 = [(MediaSocialPostEntity *)v9 allUploadPersistentIdentifiers];
  [v18 addObjectsFromArray:v19];

  [(MediaSocialPostEntity *)v9 deleteFromDatabase];
LABEL_28:
}