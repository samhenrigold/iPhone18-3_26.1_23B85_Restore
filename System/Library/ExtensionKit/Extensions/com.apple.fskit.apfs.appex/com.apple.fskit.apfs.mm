void printv(uint64_t a1, const char *a2, va_list a3)
{
  if (!a1)
  {
    return;
  }

  bzero(__str, 0x401uLL);
  v5 = vsnprintf(__str, 0x400uLL, a2, a3);
  if (v5 < 0x401)
  {
LABEL_10:
    if (*(a1 + 56) == 1)
    {
      v11 = *(a1 + 48);
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v11 = *(a1 + 40);
      if (!v11)
      {
        return;
      }
    }

    v11(a1, __str);
    return;
  }

  v6 = v5;
  v7 = v5 + 1;
  v8 = malloc_type_malloc(v7, 0x6FBDF0F3uLL);
  if (!v8)
  {
    strcpy(__str, "* * * cannot allocate memory * * *\n");
    goto LABEL_10;
  }

  v9 = v8;
  if (v7 <= vsnprintf(v8, v6, a2, a3))
  {
    strcpy(__str, " * * * cannot allocate memory * * *\n");
    free(v9);
    goto LABEL_10;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v10(a1, v9);
  }

  free(v9);
}

uint64_t outputString(FILE **a1, char *a2)
{
  if (*a1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = __stdoutp;
  }

  fputs(a2, v2);

  return fflush(v2);
}

const char *typestring(int a1)
{
  if ((a1 - 1) > 8)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_1000E48A0[a1 - 1];
  }
}

_BYTE *convertfmt(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = 1;
  do
  {
    a1 = strchr(a1 + 1, 37);
    v2 += 5;
  }

  while (a1);
  v3 = strlen(v1);
  v4 = malloc_type_calloc(1uLL, v3 + v2, 0xFC76B622uLL);
  v5 = v4;
  if (v4)
  {
    v6 = *v1;
    v7 = v4;
    if (*v1)
    {
      v8 = 0;
      v9 = 0;
      v10 = v4;
      do
      {
        if (v8)
        {
          v11 = v6 - 65;
          v12 = ((1 << (v6 - 65)) & 0x94E17D0094407DLL) == 0;
          v8 = v11 > 0x37 || v12;
          v7 = v10;
        }

        else
        {
          *v10 = v6;
          v7 = v10 + 1;
          if (*v1 == 37)
          {
            if (v1[1] == 37)
            {
              v8 = 0;
              v7 = v10 + 2;
              v10[1] = 37;
              ++v1;
            }

            else
            {
              v7 += sprintf(v10 + 1, "%d$@", ++v9);
              v8 = 1;
            }
          }

          else
          {
            v8 = 0;
          }
        }

        v13 = *++v1;
        v6 = v13;
        v10 = v7;
      }

      while (v13);
    }

    *v7 = 0;
  }

  return v5;
}

FILE **fsckCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x48uLL, 0x10B0040D577FD4FuLL);
  v1 = v0;
  if (v0)
  {
    if (fsckAddMessages(v0, &fsck_messages_common) == -1)
    {
      fsckDestroy(v1);
      return 0;
    }

    else
    {
      v1[5] = outputString;
    }
  }

  return v1;
}

uint64_t fsckAddMessages(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (!*(a2 + 8))
      {
        return 0;
      }

      v5 = 0;
      v6 = (a2 + 48);
      do
      {
        v7 = *v6;
        v6 += 5;
        ++v5;
      }

      while (v7);
      v8 = malloc_type_realloc(*(a1 + 32), 8 * (*(a1 + 24) + v5), 0x2004093837F09uLL);
      if (v8)
      {
        *(a1 + 32) = v8;
        v9 = *(a1 + 24);
        v10 = 8 * v9;
        v11 = v5;
        do
        {
          *(*(a1 + 32) + v10) = v4;
          v10 += 8;
          v4 += 40;
          --v11;
        }

        while (v11);
        v12 = *(a1 + 32);
        v13 = v9 + v5;
        *(a1 + 24) = v13;
        qsort(v12, v13, 8uLL, msgCompar);
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void fsckDestroy(FILE **a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      free(v2);
    }

    if (a1[1])
    {
      fclose(*a1);
    }

    v3 = a1[8];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

uint64_t fsckSetWriter(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 40) = a2;
  return result;
}

uint64_t fsckSetLogger(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 48) = a2;
  return result;
}

uint64_t fsckSetOutputStyle(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 16) = a2;
  return result;
}

uint64_t fsckSetDefaultResponse(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 20) = a2;
  return result;
}

uint64_t fsckAskPrompt(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) != 1)
  {
    v28 = *(a1 + 20);
    if (v28 == 2)
    {
      v29 = 1;
    }

    else
    {
      v29 = -1;
    }

    if (v28 == 1)
    {
      return 0;
    }

    else
    {
      return v29;
    }
  }

  v10 = 0;
  v33 = 0;
  while (1)
  {
    va_copy(v33, va);
    printv(a1, a2, va);
    v17 = *(a1 + 20);
    if (v17 == 1)
    {
      v27 = 0;
      v30 = "NO\n";
      goto LABEL_30;
    }

    if (v17 == 2)
    {
      v27 = 1;
      v30 = "YES\n";
LABEL_30:
      printargs(a1, v30, v11, v12, v13, v14, v15, v16);
      return v27;
    }

    v32 = 0;
    v18 = fgetln(__stdinp, &v32);
    if (v18)
    {
      v25 = v32 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      goto LABEL_12;
    }

    v26 = *v18;
    if (v26 <= 0x4D)
    {
      break;
    }

    if (*v18 > 0x6Du)
    {
      if (v26 == 110)
      {
        return 0;
      }

      if (v26 == 121)
      {
        return 1;
      }
    }

    else
    {
      if (v26 == 78)
      {
        return 0;
      }

      if (v26 == 89)
      {
        return 1;
      }
    }

LABEL_13:
    ++v10;
  }

  if (v26 != 10)
  {
    goto LABEL_13;
  }

LABEL_12:
  if (v10 < 0xA)
  {
    goto LABEL_13;
  }

  printargs(a1, "\n", v19, v20, v21, v22, v23, v24);
  return 0;
}

const void **findmessage(const void **result, int a2)
{
  __key = a2;
  if (result)
  {
    result = bsearch(&__key, result[4], *(result + 6), 8uLL, bCompar);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

char *fsckPrintToString(int a1, const char *a2, va_list a3)
{
  v8 = 0;
  v7 = 0;
  v3 = a1 - 1;
  if ((a1 - 1) > 8)
  {
    v4 = &byte_1000B36A6;
    v5 = &byte_1000B36A6;
  }

  else
  {
    v4 = off_1000E48E8[v3];
    v5 = *(&off_1000E4930 + v3);
  }

  vasprintf(&v7, a2, a3);
  if (!v7)
  {
    return 0;
  }

  asprintf(&v8, "%s%s%s\n", v4, v7, v5);
  free(v7);
  return v8;
}

uint64_t fsckPrintString(uint64_t a1, uint64_t a2, const char *a3, va_list a4)
{
  if (*(a2 + 8) != a3)
  {
    sub_1000A3B6C();
  }

  v5 = *(a2 + 16);
  if (v5 == 8)
  {
    return 0;
  }

  v6 = fsckPrintToString(v5, a3, a4);
  if (v6)
  {
    v13 = v6;
    printargs(a1, "%s", v7, v8, v9, v10, v11, v12, v6);
    free(v13);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t fsckPrintXML(uint64_t a1, unsigned int *a2, char *a3, uint64_t *a4)
{
  v5 = *(a2 + 1);
  if (v5 != a3)
  {
    sub_1000A3B98();
  }

  v7 = convertfmt(v5);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v7;
  printargs(a1, "<plist version=1.0>\n", v8, v9, v10, v11, v12, v13);
  printargs(a1, "\t<dict>\n", v15, v16, v17, v18, v19, v20);
  v21 = typestring(a2[4]);
  printargs(a1, "\t\t<key>%s</key> <string>%s</string>\n", v22, v23, v24, v25, v26, v27, "fsck_msg_type", v21);
  if (*a2 != 119)
  {
    if (a2[5])
    {
      v34 = "1";
    }

    else
    {
      v34 = "0";
    }

    printargs(a1, "\t\t<key>%s</key> <integer>%s</integer>\n", v28, v29, v30, v31, v32, v33, "fsck_verbosity", v34);
    printargs(a1, "\t\t<key>%s</key> <integer>%u</integer>\n", v35, v36, v37, v38, v39, v40, "fsck_msg_number", *a2);
    printargs(a1, "\t\t<key>%s</key> <string>%s</string>\n", v41, v42, v43, v44, v45, v46, "fsck_msg_string", v14);
  }

  if (a2[6] >= 1)
  {
    printargs(a1, "\t\t<key>%s</key>\n", v28, v29, v30, v31, v32, v33, "parameters");
    printargs(a1, "\t\t<array>\n", v47, v48, v49, v50, v51, v52);
    if (a2[6] >= 1)
    {
      for (i = 0; i < a2[6]; ++i)
      {
        v60 = *(*(a2 + 4) + 4 * i);
        if (v60 > 5)
        {
          if (v60 <= 7)
          {
            if (v60 == 6)
            {
              v81 = a4++;
              sub_100001A30(*v81);
              v63 = v82;
              printargs(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v83, v84, v85, v86, v87, v88, "directory", v82);
            }

            else
            {
              v72 = a4++;
              sub_100001A30(*v72);
              v63 = v73;
              printargs(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v74, v75, v76, v77, v78, v79, "volumename", v73);
            }

            goto LABEL_31;
          }

          if (v60 == 8)
          {
            goto LABEL_26;
          }

          if (v60 == 9)
          {
            v105 = a4++;
            sub_100001A30(*v105);
            v63 = v106;
            printargs(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v107, v108, v109, v110, v111, v112, "fstype", v106);
LABEL_31:
            free(v63);
            continue;
          }

          if (v60 != 10)
          {
            goto LABEL_33;
          }

          v70 = a4++;
          printargs(a1, "\t\t\t<integer>%llu</integer>\n", v53, v54, v55, v56, v57, v58, *v70);
        }

        else
        {
          if (v60 > 2)
          {
            if (v60 == 3)
            {
              v89 = a4++;
              sub_100001A30(*v89);
              v63 = v90;
              printargs(a1, "\t\t\t<string>%s</string>\n", v91, v92, v93, v94, v95, v96, v90, v121);
            }

            else if (v60 == 4)
            {
              v97 = a4++;
              sub_100001A30(*v97);
              v63 = v98;
              printargs(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v99, v100, v101, v102, v103, v104, "path", v98);
            }

            else
            {
              v61 = a4++;
              sub_100001A30(*v61);
              v63 = v62;
              printargs(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v64, v65, v66, v67, v68, v69, "file", v62);
            }

            goto LABEL_31;
          }

          if (v60 == 1)
          {
LABEL_26:
            v80 = a4++;
            printargs(a1, "\t\t\t<integer>%d</integer>\n", v53, v54, v55, v56, v57, v58, *v80);
            continue;
          }

          if (v60 != 2)
          {
LABEL_33:
            v113 = a4++;
            printargs(a1, "\t\t\t<integer>%p</integer>\n", v53, v54, v55, v56, v57, v58, *v113);
            continue;
          }

          v71 = a4++;
          printargs(a1, "\t\t\t<integer>%ld</integer>\n", v53, v54, v55, v56, v57, v58, *v71);
        }
      }
    }

    printargs(a1, "\t\t</array>\n", v53, v54, v55, v56, v57, v58);
  }

  printargs(a1, "\t</dict>\n", v28, v29, v30, v31, v32, v33);
  printargs(a1, "</plist>\n", v114, v115, v116, v117, v118, v119);
  free(v14);
  return 0;
}

void sub_100001A30(uint64_t a1)
{
  __chkstk_darwin(a1);
  if (v1)
  {
    v2 = v1;
    v3 = __s1;
    bzero(__s1, 0x1801uLL);
    while (1)
    {
      v4 = *v2;
      if (v4 <= 0x26)
      {
        if (v4 == 34)
        {
          *v3 = 1869967654;
          *(v3 + 2) = 15220;
          goto LABEL_15;
        }

        if (v4 == 38)
        {
          *v3 = 1886216486;
          v3[4] = 59;
          v5 = 5;
          goto LABEL_18;
        }

        if (!*v2)
        {
          strdup(__s1);
          return;
        }
      }

      else
      {
        switch(v4)
        {
          case '\'':
            *v3 = 1869635878;
            *(v3 + 2) = 15219;
LABEL_15:
            v5 = 6;
            goto LABEL_18;
          case '<':
            *v3 = 997485606;
            goto LABEL_13;
          case '>':
            *v3 = 997484326;
LABEL_13:
            v5 = 4;
            goto LABEL_18;
        }
      }

      *v3 = v4;
      v5 = 1;
LABEL_18:
      v3 += v5;
      ++v2;
    }
  }
}

uint64_t fsckPrintGUI(uint64_t a1, uint64_t a2, char *a3, unsigned int *a4)
{
  if (*(a2 + 8) != a3)
  {
    sub_1000A3BC4();
  }

  v6 = convertfmt(a3);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v6;
  v14 = *(a2 + 16) - 1;
  if (v14 > 8)
  {
    v15 = 63;
  }

  else
  {
    v15 = dword_1000AAD38[v14];
  }

  if (*a2 != 119)
  {
    printargs(a1, "(%c,%s,%d)\n", v7, v8, v9, v10, v11, v12, v15, v6, *(a2 + 24));
  }

  if (*(a2 + 24) >= 1)
  {
    for (i = 0; i < *(a2 + 24); ++i)
    {
      v18 = *(*(a2 + 32) + 4 * i);
      if (v18 > 7)
      {
        if (v18 == 8)
        {
          v22 = a4;
          a4 += 2;
          printargs(a1, "(%d %%)\n", v7, v8, v9, v10, v11, v12, *v22);
          continue;
        }

        if (v18 == 9)
        {
LABEL_13:
          v19 = a4;
          a4 += 2;
          printargs(a1, "%s\n", v7, v8, v9, v10, v11, v12, *v19);
          continue;
        }

        if (v18 != 10)
        {
          goto LABEL_24;
        }

        v20 = a4;
        a4 += 2;
        printargs(a1, "%llu\n", v7, v8, v9, v10, v11, v12, *v20);
      }

      else
      {
        if ((v18 - 3) < 5)
        {
          goto LABEL_13;
        }

        if (v18 == 1)
        {
          v24 = a4;
          a4 += 2;
          printargs(a1, "%d\n", v7, v8, v9, v10, v11, v12, *v24);
          continue;
        }

        if (v18 != 2)
        {
LABEL_24:
          v23 = a4;
          a4 += 2;
          printargs(a1, "%p\n", v7, v8, v9, v10, v11, v12, *v23);
          continue;
        }

        v21 = a4;
        a4 += 2;
        printargs(a1, "%ld\n", v7, v8, v9, v10, v11, v12, *v21);
      }
    }
  }

  free(v13);
  return 0;
}

uint64_t fsckPrint(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = findmessage(a1, a2);
  if (!v9)
  {
    sub_1000A3BF0();
  }

  v10 = v9;
  v11 = *(a1 + 16) - 1;
  if (v11 > 3)
  {
    v12 = fsckPrintNothing;
  }

  else
  {
    v12 = off_1000E4978[v11];
  }

  *(a1 + 56) = 1;
  fsckPrintString(a1, v9, v9[1], va);
  *(a1 + 56) = 0;
  return (v12)(a1, v10, v10[1], va);
}

uint64_t fsck_print_cache_stats()
{
  fsck_printf("fsck cache stats:\n");
  sub_100001EB8(1);
  fsck_printf("\n");

  return sub_100001EB8(0);
}

uint64_t sub_100001EB8(int a1)
{
  *v12 = 0u;
  v13 = 0u;
  if (a1)
  {
    v1 = &unk_1000EA058;
  }

  else
  {
    v1 = &unk_1000EA088;
  }

  if (a1)
  {
    v2 = "hit";
  }

  else
  {
    v2 = "miss";
  }

  if (a1)
  {
    v3 = &unk_1000EA064;
  }

  else
  {
    v3 = &unk_1000EA094;
  }

  __sprintf_chk(v12, 0, 0x20uLL, "Cache %s count:", v2);
  fsck_printf("\t%-32s %u\n", v12, *(v1 + 2));
  __sprintf_chk(v12, 0, 0x20uLL, "Cache %s time:", v2);
  fsck_printf("\t%-32s %.2lf [usec]\n", v12, *v1);
  __sprintf_chk(v12, 0, 0x20uLL, "Cache average %s time:", v2);
  LODWORD(v4) = *(v1 + 2);
  fsck_printf("\t%-32s %.2lf [usec]\n", v12, *v1 / v4);
  fsck_printf("\tCache %s histogram:\n", v2);
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = __exp10(v5);
    v8 = v7;
    if (v5 >= 4)
    {
      v9 = v8 / 0xF4240;
      if (v5 == 7)
      {
        v6 /= 0xF4240uLL;
      }

      else
      {
        v9 = v8 / 0x3E8;
        v6 /= 0x3E8uLL;
      }
    }

    else
    {
      v9 = v7;
      if (!v5)
      {
        v10 = "usec";
        goto LABEL_18;
      }
    }

    v10 = off_1000E4998[(v5 - 1) / 3u];
LABEL_18:
    result = fsck_printf("\t\t[%4llu - %4llu) [%4s] = %d\n", v6, v9, v10, v3[v5++]);
    v6 = v8;
  }

  while (v5 != 8);
  return result;
}

uint64_t fsck_dev_init_with_dev_handle_ext(uint64_t *a1, __int128 *a2, uint64_t a3, unsigned int a4)
{
  v30 = 0;
  v7 = *(*a1 + 72);
  if (v7 && *(v7 + 128) == sub_1000023A8)
  {
    return 0;
  }

  v8 = malloc_type_malloc(0xB0uLL, 0x80040F50BA72EuLL);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  v10 = a4;
  if (!a4)
  {
    v10 = *(*a1 + 84);
  }

  if (v10 > 0x100000 || (v11 = v10, v10 % *(*a1 + 84)) || vm_page_size < v10 && v10 % vm_page_size || vm_page_size > v10 && vm_page_size % v10)
  {
    v12 = 34;
  }

  else
  {
    v14 = a4 != 0;
    v15 = *(*a1 + 72);
    v17 = v15[9];
    v16 = v15[10];
    v18 = v15[7];
    v8[8] = v15[8];
    v19 = v15[2];
    v20 = *v15;
    v8[1] = v15[1];
    v8[2] = v19;
    v22 = v15[5];
    v21 = v15[6];
    v23 = v15[4];
    v8[3] = v15[3];
    v8[4] = v23;
    *v8 = v20;
    v8[5] = v22;
    v8[6] = v21;
    v8[9] = v17;
    v8[10] = v16;
    v8[7] = v18;
    *(v8 + 16) = sub_1000023A8;
    *(v8 + 3) = sub_100002404;
    *(v8 + 5) = sub_100002434;
    *(v8 + 4) = sub_100002664;
    *(v8 + 6) = sub_10000266C;
    *(v8 + 8) = sub_1000027B0;
    *(v8 + 9) = sub_10000282C;
    *(v8 + 11) = sub_1000028B4;
    *(v8 + 18) = sub_100002934;
    v24 = *(*a1 + 84);
    v25 = 0x800000 / v24;
    v26 = *(*a1 + 112);
    v27 = v26 * v24;
    if (v26 >= v25)
    {
      v28 = 0x800000;
    }

    else
    {
      v28 = v27;
    }

    v29 = v28 / v11;
    fsck_printf_debug("Requested cache size: %lluMB (%uk blocks * %ukB)\n", v28 >> 20, (v28 / v11) >> 10, v11 >> 10);
    v12 = CacheInit(&v30, *a1, a2, *(*a1 + 72), v11, v29, 0x101u, 0, v14);
    if (!v12)
    {
      *(*a1 + 16) = v30;
      *(*a1 + 72) = v9;
      return v12;
    }
  }

  free(v9);
  dev_close(*a1);
  *a1 = 0;
  return v12;
}

uint64_t sub_1000023A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    free(*(a1 + 72));
    *(a1 + 72) = CacheDevFuncs(*(a1 + 16));
    CacheDestroy(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  return dev_close(a1);
}

double sub_100002434(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, __int128 *a7, uint64_t a8, uint64_t a9)
{
  if (a6)
  {

    sub_100002ACC(a1, a2, a3, a4, a5, a9, a7, a8);
  }

  else
  {
    v16 = dev_block_size(a1);
    v24 = 1;
    v23 = 0;
    if ((a9 & 0x10000) != 0)
    {
      v21 = *(CacheDevFuncs(*(a1 + 16)) + 40);

      LODWORD(a9) = a9 & 0xFFFEFFFF;
      v21(a1, a2, a3, a4, a5, 0, 0, a8, a9, 0);
    }

    else
    {
      v17 = v16 * a2;
      v18 = v16 * a3;
      if (cache_stats_enabled == 1)
      {
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        tv_sec = __tp.tv_sec;
        v20 = SLODWORD(__tp.tv_nsec) / 1000;
      }

      else
      {
        tv_sec = 0;
        v20 = 0;
      }

      if (!CacheRead(*(a1 + 16), v17, v18, &v23, a5, a9, &v24, 0, a8))
      {
        if (cache_stats_enabled == 1)
        {
          __tp.tv_sec = 0;
          __tp.tv_nsec = 0;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
          sub_100002CCC(v24, tv_sec, v20, __tp.tv_sec, SLODWORD(__tp.tv_nsec) / 1000, 0);
        }

        v22 = v23;
        memcpy(a4, *(v23 + 40), v18);
        return CacheRelease(*(a1 + 16), v22, 0);
      }
    }
  }

  return result;
}

uint64_t sub_10000266C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 112))
  {
    return 0;
  }

  v4 = dev_block_size(a1);
  tv_sec = 0;
  v6 = 0;
  v7 = *(a2 + 120);
  v8 = *(a2 + 128);
  v9 = *(a2 + 112);
  v11 = 0;
  if (cache_stats_enabled == 1)
  {
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    v6 = SLODWORD(__tp.tv_nsec) / 1000;
  }

  result = CacheReadFinish(*(a1 + 16), v7, &v11);
  if (!result)
  {
    if (cache_stats_enabled == 1)
    {
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      sub_100002CCC(0, tv_sec, v6, __tp.tv_sec, SLODWORD(__tp.tv_nsec) / 1000, *(a2 + 136));
    }

    memcpy(*(a2 + 104), (v9 + v8), v4);
    return CacheReadRelease(*(a1 + 16), v11);
  }

  return result;
}

uint64_t sub_1000028B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dev_block_size(a1);
  v7 = CacheDevFuncs(*(a1 + 16));
  v8 = (*(v7 + 88))(a1, a2, a3);
  if (!v8)
  {
    CacheEvict(*(a1 + 16), 0, v6 * a2, v6 * a3);
  }

  return v8;
}

uint64_t sub_100002934(uint64_t a1, uint64_t a2)
{
  result = CacheUpdateDevBlockSize(*(a1 + 16), a2);
  if (!result)
  {
    v5 = *(CacheDevFuncs(*(a1 + 16)) + 144);

    return v5(a1, a2);
  }

  return result;
}

uint64_t fsck_dev_init_with_fd(uint64_t a1, uint64_t *a2)
{
  result = dev_init_with_fd(a1, a2);
  if (!result)
  {

    return fsck_dev_init_with_dev_handle_ext(a2, 0, v4, 0);
  }

  return result;
}

uint64_t fsck_dev_init_with_fd_ext(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, uint64_t a5, unsigned int a6)
{
  result = dev_init_with_fd(a1, a3);
  if (!result)
  {

    return fsck_dev_init_with_dev_handle_ext(a3, a4, v10, a6);
  }

  return result;
}

uint64_t fsck_dev_init_ext(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, uint64_t a5, unsigned int a6)
{
  result = fskit_dev_init(*(state + 80), a2, a3);
  if (!result)
  {

    return fsck_dev_init_with_dev_handle_ext(a3, a4, v10, a6);
  }

  return result;
}

void sub_100002ACC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  if (a3 <= 1 && (a6 & 0x10000) == 0)
  {
    v15 = *(a1 + 16);
    v16 = dev_block_size(a1);
    v24 = CacheBlockSize(v15);
    tv_sec = 0;
    v18 = 0;
    v19 = v16;
    v20 = v16 * a2;
    v27 = 0;
    v26 = 1;
    if (cache_stats_enabled == 1)
    {
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      tv_sec = __tp.tv_sec;
      v18 = SLODWORD(__tp.tv_nsec) / 1000;
    }

    v25 = tv_sec;
    if (!CacheRead(*(a1 + 16), v20, v16, &v27, a5, a6, &v26, a7, a8))
    {
      if (cache_stats_enabled == 1)
      {
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v21 = __tp.tv_sec;
        v22 = SLODWORD(__tp.tv_nsec) / 1000;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      if (v26 == 1)
      {
        if (cache_stats_enabled)
        {
          sub_100002CCC(1, v25, v18, v21, v22, 0);
        }

        v23 = v27;
        memcpy(a4, *(v27 + 40), v19);
        CacheRelease(*(a1 + 16), v23, 0);
        *(a7 + 14) = 0;
      }

      else
      {
        if (cache_stats_enabled)
        {
          *(a7 + 17) = 1000000 * (v21 - v25) - v18 + v22;
        }

        *(a7 + 13) = a4;
        *(a7 + 15) = v20 / v24 * v24;
        *(a7 + 16) = v20 % v24;
      }
    }
  }
}

uint64_t sub_100002CCC(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = result;
  v7 = a6 - a3 + a5 + 1000000 * (a4 - a2);
  if (v7)
  {
    result = ilog10(a6 - a3 + a5 + 1000000 * (a4 - a2));
    v8 = result + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    v8 = 7;
  }

  if (v6)
  {
    v9 = &unk_1000EA058;
  }

  else
  {
    v9 = &unk_1000EA088;
  }

  ++*(v9 + 2);
  *v9 = *v9 + v7;
  v10 = &unk_1000EA094;
  if (v6)
  {
    v10 = &unk_1000EA064;
  }

  ++v10[v8];
  return result;
}

char *fsck_global_volume_get_by_index(uint64_t a1, unsigned int a2)
{
  if (a1 && (v2 = *(a1 + 8)) != 0)
  {
    v3 = *(v2 + 180);
  }

  else
  {
    v3 = 100;
  }

  if (v3 <= a2)
  {
    return 0;
  }

  else
  {
    return &unk_1000EA280 + 1024 * a2;
  }
}

char *fsck_global_volume_get_by_fs_oid(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 180);
  if (!v3)
  {
    return 0;
  }

  v4 = (v2 + 184);
  for (result = &unk_1000EA280; ; result += 1024)
  {
    v6 = *v4++;
    if (v6 == a2)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

void *fsck_global_volume_get_by_uuid(uint64_t a1, unsigned __int8 *uu1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 180))
  {
    v5 = 0;
    v6 = &unk_1000EA280;
    do
    {
      v7 = v6[5];
      if (v7)
      {
        if (!uuid_compare(uu1, (v7 + 240)))
        {
          return v6;
        }

        v2 = *(a1 + 8);
      }

      ++v5;
      v6 += 128;
    }

    while (v5 < *(v2 + 180));
  }

  return 0;
}

uint64_t fsck_global_volume_get_range(uint64_t result, _DWORD *a2, int *a3)
{
  v3 = state;
  v4 = *(state + 24);
  if (v4 == -1)
  {
    *a2 = 0;
    if (result && (v6 = *(result + 8)) != 0)
    {
      v5 = *(v6 + 180);
    }

    else
    {
      v5 = 100;
    }
  }

  else
  {
    *a2 = v4;
    v5 = *(v3 + 24) + 1;
  }

  *a3 = v5;
  return result;
}

void fsck_global_volume_cleanup_all()
{
  v0 = &unk_1000EA280;
  v1 = 100;
  do
  {
    volume_cleanup(v0);
    v0 += 128;
    --v1;
  }

  while (v1);
}

uint64_t fsck_apfs_check_fs(uint64_t a1)
{
  v307 = 0;
  v2 = fsck_global_container_get();
  *v305 = 0u;
  v306 = 0u;
  *v304 = 0u;
  v303 = 0;
  v302 = 0;
  v3 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040202D4F4CuLL);
  state = v3;
  if (!v3)
  {
    fsck_printf_err("failed to allocate memory for fsck_state\n");
LABEL_14:
    nx_superblock = 0;
    goto LABEL_15;
  }

  v4 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  *(v3 + 10) = *(a1 + 80);
  v3[3] = v6;
  v3[4] = v7;
  v3[2] = v5;
  v8 = *(state + 24);
  if (v8 == -1 && (*(state + 46) & 1) == 0)
  {
    v9 = *(state + 47) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  if ((*(state + 40) & 1) == 0 && *(state + 42) == 1)
  {
    disable_idle_sleep();
  }

  v10 = fsckCreate();
  if (!v10)
  {
    fsck_printf_err("Could not initialize message output\n");
    v12 = 151;
    goto LABEL_13;
  }

  v11 = v10;
  fsckSetDefaultResponse(v10, *(state + 32));
  fsckSetOutputStyle(v11, *(state + 36));
  if (fsckAddMessages(v11, &fsck_messages_apfs))
  {
    fsck_printf_err("Could not initialize APFS-specific messages\n");
    v12 = 152;
LABEL_13:
    fsck_fail_func(v12, 12);
    goto LABEL_14;
  }

  fsckSetWriter(v11, outstring);
  fsckSetLogger(v11, logstring);
  fsck_apfs_ctx = v11;
  if (v8 == -1)
  {
    fsck_progress_init_for_container(0, 0, 0);
  }

  else
  {
    fsck_progress_init_for_volume(0, 0);
  }

  fsck_fail_set_dev_node(*(state + 8));
  fsck_fail_set_phase(2);
  v301 = 0;
  info = container_get_info(v2, v304, &v301);
  if (info)
  {
LABEL_30:
    v14 = info;
    nx_superblock = 0;
    goto LABEL_16;
  }

  while (1)
  {
    if (v301)
    {
      nx_superblock = 0;
      v34 = state;
      if (*(state + 40))
      {
        goto LABEL_77;
      }

      v14 = 0;
      v35 = 0;
      v36 = 106;
      goto LABEL_69;
    }

    info = container_open(v2, v306, v17, v18, v19);
    if (info)
    {
      goto LABEL_30;
    }

    v300 = 0;
    info = container_crypto_prepare(v2, v306, &v300);
    if (info)
    {
      goto LABEL_30;
    }

    if (BYTE8(v306) == 1)
    {
      info = container_freeze(v2, v304, *(state + 49));
      if (info)
      {
        goto LABEL_30;
      }
    }

    fsck_fail_set_phase(3);
    nx_superblock = get_nx_superblock(*v2, &v302);
    if (!nx_superblock)
    {
      goto LABEL_60;
    }

    fsckPrint(v11, 201, v23, v24, v25, v26, v27, v28);
    if ((v302 & 1) == 0)
    {
      if (fsck_nx_superblock(*v2, nx_superblock, 0))
      {
        goto LABEL_60;
      }
    }

    fsck_fail_set_uuid();
    fsck_fail_set_phase(4);
    if (get_latest_checkpoint(*v2, nx_superblock, v2 + 1, v2 + 5))
    {
      v37 = v11;
      v38 = 304;
      goto LABEL_61;
    }

    fsckPrint(v11, 222, v23, v24, v25, v26, v27, v28, *(*(v2 + 1) + 16));
    fsck_fail_set_phase(5);
    if (v302 == 1)
    {
      if (fsckAskPrompt(fsck_apfs_ctx, "Fix corrupt container superblock? ", v23, v24, v25, v26, v27, v28) != 1)
      {
        goto LABEL_60;
      }

      v29 = *(v2 + 1);
      v30 = v29[9];
      memcpy(nx_superblock, v29, 0x588uLL);
      __str[0].i64[0] = 0;
      __str[0].i32[2] = v30;
      *(&__str[0].i64[1] + 4) = 0;
      __str[1].i32[1] = 0;
      if (write_obj(v2, 0, nx_superblock, __str, v31, v32))
      {
        goto LABEL_60;
      }

      fsck_fail_add_repair();
    }

    if (*(state + 40) == 1)
    {
      if (*(*(v2 + 1) + 1264))
      {
LABEL_60:
        v37 = v11;
        v38 = 301;
LABEL_61:
        fsckPrint(v37, v38, v23, v24, v25, v26, v27, v28);
        v35 = 0;
        v14 = 8;
      }

      else
      {
        v14 = sub_100004A38(v11, v2);
        v35 = 0;
      }

LABEL_62:
      v36 = 106;
LABEL_63:
      v34 = state;
      if (*(state + 40))
      {
        if (v14)
        {
          if (v14 == 8)
          {
            v14 = 3;
          }

          else
          {
            v14 = v14;
          }

          v39 = v11;
          v40 = 126;
          goto LABEL_82;
        }

LABEL_77:
        fsckPrint(v11, 125, v17, v18, v19, v20, v21, v22);
        v14 = 0;
LABEL_83:
        v44 = fsck_fail_num_warnings();
        v45 = fsck_fail_num_failures();
        if (!v14)
        {
          if (*(state + 50) == 1 && v44 | v45)
          {
            if (*(state + 40))
            {
              v14 = 3;
            }

            else
            {
              v14 = 8;
            }

            fsck_printf("%d failures and %d warnings issued; failing execution as requested.\n", v45, v44);
          }

          else
          {
            v14 = 0;
          }
        }

        goto LABEL_16;
      }

LABEL_69:
      if (v8 == -1)
      {
        if (v14)
        {
          v40 = 127;
        }

        else
        {
          v40 = 128;
        }

        v280 = *v34;
        v39 = v11;
LABEL_82:
        fsckPrint(v39, v40, v17, v18, v19, v20, v21, v22, v280);
      }

      else
      {
        if (v35)
        {
          v41 = 105;
        }

        else
        {
          v41 = 104;
        }

        if (v14)
        {
          v42 = v36;
        }

        else
        {
          v42 = v41;
        }

        v43 = fsck_global_volume_get_by_index(v2, *(v34 + 24));
        sub_100005EE4(v11, v42, v43);
      }

      goto LABEL_83;
    }

    if (v302 != 1 || !container_status_is_corrupt(*(state + 8)))
    {
      break;
    }

    v302 = 0;
    dev_reload_validate();
    if (v305[1])
    {
      sub_1000A3C1C();
    }

    if (v304[1])
    {
      sub_1000A3C48();
    }

    if ((verify_overallocation & 1) == 0)
    {
      sub_1000A3C74();
    }

    if (*(state + 16) != -1)
    {
      sub_1000A3CA0();
    }

    fsck_global_volume_cleanup_all();
    free(nx_superblock);
    container_cleanup(v2);
    *v305 = 0u;
    v306 = 0u;
    *v304 = 0u;
    dev_reload(*(state + 8));
    fsck_fail_set_dev_node(*(state + 8));
    fsck_fail_set_phase(2);
    v301 = 0;
    v14 = container_get_info(v2, v304, &v301);
    nx_superblock = 0;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  space_verification_init(v2);
  v33 = *(*(v2 + 1) + 1384);
  if (v33 > 0x959D39220F1C2)
  {
    memset(__str, 0, 25);
    v46 = apfs_parse_version(v33, __str[0].i8, 25);
    if (!v46)
    {
      v46 = __str;
      snprintf(__str[0].i8, 0x19uLL, "%llu", *(*(v2 + 1) + 1384));
    }

    fsck_printf_warn("container has been mounted by APFS version %s, which is newer than %s\n", v46->i8, "2632.40.15.0.2");
    if (*(state + 45))
    {
      fsck_printf_warn("enabling overallocation repairs because -o was passed; this may cause data loss\n");
    }

    else
    {
      fsck_printf_warn("disabling overallocation repairs by default; use -o to override\n");
    }
  }

  else
  {
    *(state + 45) = 1;
  }

  v47 = fsck_repairs_init((v2 + 392), 0);
  if (v47)
  {
LABEL_97:
    v48 = v47;
LABEL_98:
    fsck_printf_err("failed to initialize tree for container repairs\n");
    v49 = 926;
    v50 = v48;
    goto LABEL_99;
  }

  v14 = 0;
  v281 = 0;
  while (1)
  {
    fsck_fail_set_phase(6);
    if (*(nx_superblock + 159))
    {
      if (container_is_internal_embedded(v2))
      {
        fsck_printf_warn("found unexpected EFI jumpstart record\n");
      }

      else
      {
        fsckPrint(v11, 211, v51, v52, v53, v54, v55, v56);
        if (fsck_nx_efi_jumpstart(v2))
        {
          v270 = v11;
          v271 = 312;
          goto LABEL_342;
        }
      }
    }

    fsck_fail_set_phase(7);
    if (*(*(v2 + 1) + 1256))
    {
      v310 = 0u;
      v311 = 0u;
      memset(__str, 0, sizeof(__str));
      fsckPrint(v11, 218, v63, v64, v65, v66, v67, v68);
      tree_init_ext(__str, v2, 0, 0x40000000, 2, 33, 0, *(*(v2 + 1) + 36), 8, 16, 0, *(*(v2 + 1) + 1256), uint64_key_compare);
      if (fsck_tree(__str, 0, evict_mapping_tree_validate_key_val, 0, 0, 1))
      {
        v270 = v11;
        v271 = 319;
        goto LABEL_342;
      }
    }

    fsck_fail_set_phase(8);
    if (get_nx_reaper(v2, 0))
    {
      v36 = 106;
      v14 = 8;
      goto LABEL_345;
    }

    if (fsck_reaper(v2))
    {
      goto LABEL_343;
    }

    fsck_fail_set_phase(9);
    fsckPrint(v11, 203, v69, v70, v71, v72, v73, v74);
    if (get_spaceman(v2, 0))
    {
      goto LABEL_313;
    }

    if (v8 == -1 && (*(state + 54) & 1) == 0)
    {
      sub_100004818(v2);
    }

    if (fsck_spaceman(v2, &v303))
    {
LABEL_313:
      v270 = v11;
      v271 = 303;
      goto LABEL_342;
    }

    v75 = *(v2 + 1);
    if ((*(v75 + 104) & 0x80000000) != 0 || (*(v75 + 108) & 0x80000000) != 0 || (v76 = *(v2 + 3), (*(v76 + 164) & 0x80000000) != 0) || (*(v76 + 152) & 0x8000000000000000) != 0)
    {
      fsck_fail_set_phase(10);
      fsckPrint(v11, 213, v77, v78, v79, v80, v81, v82);
      if (fsck_fragmented_metadata(v2))
      {
        v270 = v11;
        v271 = 315;
        goto LABEL_342;
      }
    }

    fsck_fail_set_phase(11);
    fsckPrint(v11, 217, v83, v84, v85, v86, v87, v88);
    if (fsck_spaceman_free_queue_trees(v2, &v303))
    {
      v270 = v11;
      v271 = 318;
      goto LABEL_342;
    }

    if (v303)
    {
      v90 = *(v2 + 3);
      __str[0] = *(v2 + 88);
      __str[1].i64[0] = *(v2 + 13);
      v91 = write_obj(v2, 0, v90, __str, __str[0], v89);
      if (v91)
      {
        v246 = v91;
        fsckPrint(v11, 303, v92, v93, v94, v95, v96, v97);
        v272 = 782;
LABEL_339:
        fsck_fail_func(v272, v246);
        goto LABEL_343;
      }

      fsck_fail_add_repair();
      v303 = 0;
    }

    mark_reserved_space_as_allocated(v2);
    fsck_fail_set_phase(12);
    fsckPrint(v11, 204, v98, v99, v100, v101, v102, v103);
    if (get_omap(v2, 0, 0))
    {
      goto LABEL_343;
    }

    if (v8 == -1)
    {
      omap_sv_init(0, *(*(v2 + 1) + 88), *(*(v2 + 4) + 88));
      if (fsck_omap(v2, 0))
      {
LABEL_317:
        v270 = v11;
        v271 = 305;
        goto LABEL_342;
      }

      if (*(state + 54) == 1)
      {
        sub_100004818(v2);
      }
    }

    else if (fsck_omap(v2, 0))
    {
      goto LABEL_317;
    }

    v104 = *(v2 + 1);
    if (*(v104 + 1400) || *(v104 + 1304))
    {
      fsck_fail_set_phase(30);
      fsckPrint(v11, 223, v105, v106, v107, v108, v109, v110);
      if (fsck_nx_keybags(v2))
      {
        goto LABEL_315;
      }
    }

    if (v300 == 1)
    {
      v111 = container_crypto_setup(v2, v306);
      if (v111)
      {
        v14 = v111;
        goto LABEL_16;
      }
    }

    v299[0] = 0;
    v299[1] = 0;
    fsck_global_volume_get_range(v2, &v307 + 1, &v307);
    if (HIDWORD(v307) < v307)
    {
      break;
    }

LABEL_276:
    fsck_fail_set_phase(22);
    fsckPrint(v11, 210, v234, v235, v236, v237, v238, v239);
    if ((v9 & 1) == 0)
    {
      goto LABEL_283;
    }

    v246 = fsck_spaceman_with_context(v2, v299, &v303);
    if (!v246 && v303)
    {
      v248 = *(v2 + 3);
      __str[0] = *(v2 + 88);
      __str[1].i64[0] = *(v2 + 13);
      v246 = write_obj(v2, 0, v248, __str, __str[0], v247);
    }

    if (v246)
    {
      fsckPrint(v11, 303, v240, v241, v242, v243, v244, v245);
      v272 = 1098;
      goto LABEL_339;
    }

    if (v303)
    {
      fsck_fail_add_repair();
      v303 = 0;
    }

LABEL_283:
    if (v8 == -1)
    {
      if (omap_sv_finalize(v2, 0, 0))
      {
        goto LABEL_341;
      }

      if (fsck_nx_keybag_orphans(v2))
      {
LABEL_315:
        v270 = v11;
        v271 = 324;
        goto LABEL_342;
      }
    }

    fsck_fail_set_phase(32);
    verify_overallocation &= v9;
    if (fsck_tree_node_repair_finalize(v2))
    {
      v270 = v11;
      v271 = 325;
      goto LABEL_342;
    }

    fsck_fail_set_phase(22);
    if (fsck_verify_space(v2))
    {
      goto LABEL_341;
    }

    fsck_fail_set_phase(23);
    v284 = 0;
    v285 = 0;
    v283 = 0;
    __str[0].i64[0] = 0;
    tree_key_count((v2 + 392), 0, __str);
    v255 = __str[0].i64[0];
    for (i = HIDWORD(v307); i < v307; ++i)
    {
      v257 = fsck_global_volume_get_by_index(v2, i);
      if (*(*(v2 + 1) + 8 * i + 184))
      {
        __str[0].i64[0] = 0;
        tree_key_count((v257 + 768), 0, __str);
        v255 += __str[0].i64[0];
      }
    }

    if (!v255)
    {
      goto LABEL_304;
    }

    fsckPrint(v11, 216, v249, v250, v251, v252, v253, v254);
    v264 = fsck_repairs_perform((v2 + 392), v2, 0, verify_overallocation, 0, &v285, &v284, &v283);
    v265 = HIDWORD(v307);
    v266 = v307;
    while (v265 < v266)
    {
      if (*(*(v2 + 1) + 8 * v265 + 184))
      {
        v267 = fsck_global_volume_get_by_index(v2, v265);
        v268 = fsck_repairs_perform((v267 + 768), v2, v267, verify_overallocation, 0, &v285, &v284, &v283);
        if (!v264)
        {
          v264 = v268;
        }

        v266 = v307;
      }

      ++v265;
    }

    if (v264)
    {
      if (v283)
      {
        v279 = 316;
      }

      else
      {
        v279 = 317;
      }

      fsckPrint(v11, v279, v258, v259, v260, v261, v262, v263);
      v14 = 8;
      v36 = 110;
      goto LABEL_345;
    }

    if ((verify_overallocation & 1) == 0 && v285)
    {
      fsck_printf_err("Unable to perform deferred repairs without full space verification\n");
      if (*(state + 24) != -1)
      {
        fsck_printf_err("Try running fsck against the entire APFS container instead of a volume\n");
      }

LABEL_343:
      v14 = 8;
LABEL_344:
      v36 = 106;
LABEL_345:
      v35 = v281;
      goto LABEL_63;
    }

    if (v284)
    {
      if (!fsck_fail_add_iteration())
      {
        fsck_printf_err("Reached max number of fsck passes during repair\n");
        v14 = 8;
        v35 = 1;
        goto LABEL_62;
      }

      fsck_printf("Restarting after deferred repairs...\n");
      space_verification_cleanup();
      space_verification_init(v2);
      v48 = fsck_repairs_init((v2 + 392), 0);
      v281 = 1;
      if (v48)
      {
        goto LABEL_98;
      }
    }

    else
    {
LABEL_304:
      fsck_fail_set_phase(24);
      if (verify_overallocation != 1 || !has_overlapped_extents())
      {
        goto LABEL_325;
      }

      if (*(state + 44) == 1)
      {
        print_overlapped_extents();
        if (fsckAskPrompt(fsck_apfs_ctx, "Fix overlapped extents? ", v273, v274, v275, v276, v277, v278))
        {
          if (!repair_overlapped_extents(v2))
          {
            *(state + 44) = 0;
LABEL_325:
            fsck_fail_set_phase(25);
            goto LABEL_344;
          }
        }

        else
        {
          fsck_fail_func(0x1CB, 92);
        }

LABEL_341:
        v270 = v11;
        v271 = 311;
LABEL_342:
        fsckPrint(v270, v271, v57, v58, v59, v60, v61, v62);
        goto LABEL_343;
      }

      fsck_printf("Overlap repair pass...\n");
      *(state + 44) = 1;
      v47 = fsck_repairs_init((v2 + 392), 0);
      if (v47)
      {
        goto LABEL_97;
      }
    }
  }

  v112 = HIDWORD(v307) + 23;
  while (2)
  {
    if (!*(*(v2 + 1) + 8 * v112))
    {
      goto LABEL_155;
    }

    v113 = v112 - 23;
    v114 = fsck_global_volume_get_by_index(v2, v112 - 23);
    fsck_fail_set_dev_node(v114->i64[0]);
    fsck_fail_set_phase(13);
    fsckPrint(v11, 101, v115, v116, v117, v118, v119, v120, v114->i64[0]);
    fsckPrint(v11, 206, v121, v122, v123, v124, v125, v126);
    v127 = fsck_repairs_init(v114[48].i64, v114);
    if (v127)
    {
      v269 = v127;
      fsck_printf_err("failed to initialize tree for volume repairs\n");
      v49 = 705;
      v50 = v269;
      goto LABEL_99;
    }

    v128 = v112;
    v129 = &v114[2].i64[1];
    v130 = *(v2 + 1);
    v282 = v128;
    if (!v114[2].i64[1])
    {
      if (!copy_obj(v2, 0, 0, *(v130 + 8 * v128), 0, 0, 13, 0, &v114[2].i64[1], v114[5].i64, 0))
      {
        goto LABEL_143;
      }

      goto LABEL_146;
    }

    if (omap_sv_mark(0, *(v130 + 8 * v128), 1))
    {
      fsck_printf_warn("object (oid 0x%llx): Unable to mark the omap entry of the apfs_sb at index (%u) in use for omap space verification\n", *(*(v2 + 1) + 8 * v282), v113);
      fsck_fail_func(0x3DD, -7);
    }

LABEL_143:
    v137 = 0uLL;
    if (v8 != -1)
    {
      v322 = 0uLL;
      v323 = 0uLL;
      v320 = 0uLL;
      v321 = 0uLL;
      v318 = 0uLL;
      v319 = 0uLL;
      v316 = 0uLL;
      v317 = 0uLL;
      v314 = 0uLL;
      v315 = 0uLL;
      v312 = 0uLL;
      v313 = 0uLL;
      v310 = 0uLL;
      v311 = 0uLL;
      memset(__str, 0, sizeof(__str));
      __strlcpy_chk();
      v324 = __str;
      fsck_progress_init_for_volume(*v129, &v324);
      v137 = 0uLL;
    }

    v298 = 0;
    v296 = v137;
    v297 = v137;
    v293[1] = v137;
    v294 = v137;
    v293[0] = v137;
    v295 = 16;
    v138 = *v129;
    LODWORD(v296) = *(*v129 + 960);
    sub_100004BE4(v11, v138);
    if (sub_100004CD4(v2, *v129, v113, &v303))
    {
LABEL_146:
      v139 = v11;
      v140 = 307;
      goto LABEL_147;
    }

    fsck_fail_set_phase(14);
    fsckPrint(v11, 204, v143, v144, v145, v146, v147, v148);
    if (get_omap(v2, v114, 0))
    {
      goto LABEL_148;
    }

    if ((*(state + 46) & 1) == 0)
    {
      omap_sv_init(1, *(*(v2 + 1) + 88), *(v114[4].i64[1] + 88));
    }

    if (fsck_omap(v2, v114))
    {
      v139 = v11;
      v140 = 305;
      goto LABEL_147;
    }

    v149 = *(*v129 + 1000);
    if (v149)
    {
      v150 = omap_sv_mark(1, v149, 1);
      if (v150)
      {
        v151 = v150;
        fsck_printf_warn("object (oid 0x%llx): Unable to mark the omap entry of the apfs_snap_meta_ext_oid in use for omap space verification\n", *(*v129 + 1000));
        fsck_fail_func(0x3D5, v151);
      }
    }

    fsck_fail_set_phase(15);
    v152 = *v129;
    if ((*(*v129 + 264) & 1) == 0 || *(v152 + 976))
    {
      if (v114->i8[8] == 1)
      {
        v153 = volume_crypto_open(v114, v2, v306);
        if (v153)
        {
          fsck_fail_func(0x45F, v153);
          v14 = 66;
          goto LABEL_16;
        }

        v152 = *v129;
      }

      if (*(v152 + 976) && fsck_encryption_rolling(v2, v114))
      {
        v139 = v11;
        v140 = 314;
        goto LABEL_147;
      }
    }

    fsck_fail_set_phase(17);
    if (*(*v129 + 152))
    {
      __str[0].i64[0] = 0;
      snapshot_init();
      fsckPrint(v11, 209, v154, v155, v156, v157, v158, v159);
      if (get_snap_meta_tree(v2, v114, __str[0].i64) || fsck_tree(__str[0].i64[0], 0, jobj_validate_repair_key_val, v293, 0, 1) || snapshot_finalize(v114[48].i64))
      {
        v139 = v11;
        v140 = 310;
        goto LABEL_147;
      }
    }

    fsck_fail_set_phase(19);
    v166 = *v129;
    if ((*(*v129 + 264) & 1) != 0 && !*(v166 + 976))
    {
      v114->i8[9] = 1;
      v168 = &v114->i8[9];
      v169 = *(state + 46);
      LOBYTE(v170) = v169 ^ 1;
    }

    else
    {
      v167 = v114[1].i64[1];
      v114->i8[9] = v167 != 0;
      v168 = &v114->i8[9];
      v169 = *(state + 46);
      LOBYTE(v170) = v169 ^ 1;
      if ((v169 & 1) == 0 && !v167)
      {
        v171 = v114[3].i64[0];
        if (!v171)
        {
          v171 = v166;
        }

        v170 = (*(v171 + 56) >> 5) & 1;
      }
    }

    v114->i8[10] = v170;
    v114->i8[11] = v169;
    fsckPrint(v11, 205, v160, v161, v162, v163, v164, v165);
    v290 = 0u;
    v291 = 0u;
    v292 = 0;
    v288 = 0;
    memset(v287, 0, sizeof(v287));
    v289 = 16;
    LODWORD(v290) = *(v114[2].i64[1] + 960);
    if (fsck_omap_snap(v2, v114, v287, 0.0, v172))
    {
      goto LABEL_193;
    }

    if ((*(state + 46) & 1) == 0 && v294 != v288)
    {
      fsck_printf_warn("omap has %llu snaphots but snap meta tree has %llu\n", v288, v294);
    }

    if (v295 < v289)
    {
      v295 = v289;
    }

    if (v296 < v290)
    {
      LODWORD(v296) = v290;
    }

    if ((*(state + 46) & 1) == 0 && fsck_compare_snapshots(v2, v114, v114[48].i64))
    {
LABEL_193:
      v139 = v11;
      v140 = 306;
      goto LABEL_147;
    }

    fsck_fail_set_phase(16);
    v173 = v114[3].i64[0];
    if (!v173)
    {
      v173 = *v129;
    }

    if ((*(v173 + 56) & 0x20) != 0 && fsck_integrity_meta(v2, v114, 0))
    {
      goto LABEL_148;
    }

    memset(out, 0, 37);
    uuid_unparse((*v129 + 240), out);
    v174 = *v129;
    if ((*(*v129 + 56) & 0x10) != 0)
    {
      *v168 = 0;
      fsck_printf_warn("Volume %s is incompletely restored, skipping the fsroot tree.\n");
LABEL_211:
      v175 = 0;
      goto LABEL_212;
    }

    if (*(v174 + 160))
    {
      *v168 = 0;
      fsck_printf_warn("Volume %s has revert_to_xid set, skipping the fsroot tree.\n");
      goto LABEL_211;
    }

    if (((*(v174 + 264) & 1) == 0 || *(v174 + 976)) && !v114[1].i64[1])
    {
      fsck_printf_warn("Volume %s is encrypted and crypto I/O failed/was skipped, skipping the fsroot tree.\n");
      goto LABEL_211;
    }

    phys_extent_init(v114->i8);
    __str[0].i64[0] = 0;
    fsroot_tree = get_fsroot_tree(v2, v114, __str[0].i64);
    if (!fsroot_tree)
    {
      fsroot_jobj_init(__str[0].i64[0], 0);
      fsck_doc_id_init(v2, v114, 0);
      v190 = v114[2].i64[1];
      if (v190[134] || v190[135])
      {
        fsck_fail_set_phase(28);
        fsckPrint(v11, 221, v191, v192, v193, v194, v195, v196);
        if (fsck_doc_id_trees(v2, v114, 0))
        {
          goto LABEL_228;
        }

        v190 = *v129;
      }

      if (v190[139])
      {
        fsck_fail_set_phase(33);
        fsckPrint(v11, 225, v203, v204, v205, v206, v207, v208);
        if ((*(*v129 + 57) & 2) == 0)
        {
          fsck_printf_err("found clone group tree in invalid volume format\n");
          v114->i8[13] = 1;
        }

        if (fsck_clonegroup_tree(v2, v114, 0, v293))
        {
          v140 = 326;
          goto LABEL_243;
        }
      }

      fsck_fail_set_phase(16);
      fsckPrint(v11, 207, v209, v210, v211, v212, v213, v214);
      if (fsck_tree(__str[0].i64[0], 0, jobj_validate_repair_key_val, v293, 0, 0) || *(*v129 + 1096) && (get_secondary_fsroot_tree(v2, v114, __str[0].i64) || fsroot_jobj_advance(v2, v114, v114[48].i64) || fsck_tree(__str[0].i64[0], 0, jobj_validate_repair_key_val, v293, 0, 0)) || *v168 == 1 && fsck_ios_encryption_rolling(v2, v114) || fsroot_jobj_finalize(v2, v114, 0, v114[48].i64))
      {
        v140 = 308;
LABEL_243:
        v139 = v11;
LABEL_147:
        fsckPrint(v139, v140, v131, v132, v133, v134, v135, v136);
      }

      else
      {
        if (fsck_doc_id_finalize(v2, v114, 0))
        {
LABEL_228:
          v140 = 322;
          goto LABEL_243;
        }

        v175 = 1;
LABEL_212:
        fsck_doc_id_cleanup();
        v176 = v114[3].i64[0];
        if (!v176)
        {
          v176 = *v129;
        }

        if ((*(v176 + 56) & 0x20) != 0)
        {
          phys_extent_init(v114->i8);
          __str[0].i64[0] = 0;
          fsck_fail_set_phase(26);
          fsckPrint(v11, 219, v183, v184, v185, v186, v187, v188);
          if (get_fext_tree(v2, v114, __str) || fsck_tree(__str[0].i64[0], 0, fext_validate_repair_key_val, v293, 0, 1))
          {
            v139 = v11;
            v140 = 320;
            goto LABEL_147;
          }
        }

        fsck_fail_set_phase(18);
        fsckPrint(v11, 208, v177, v178, v179, v180, v181, v182);
        v286 = 0;
        if (get_extentref_tree(v2, v114, &v286) || fsck_tree(v286, 0, jobj_validate_repair_key_val, v293, 0, 1))
        {
          v139 = v11;
          v140 = 309;
          goto LABEL_147;
        }

        if (!phys_extent_finalize(v114, 0))
        {
          if ((*(*v129 + 56) & 0x40) != 0)
          {
            __str[0].i64[0] = 0;
            fsck_fail_set_phase(27);
            fsckPrint(v11, 220, v215, v216, v217, v218, v219, v220);
            if (get_pfkur_tree(v2, v114, __str) || fsck_tree(__str[0].i64[0], 0, pfkur_validate_repair_key_val, v293, 0, 1) || pfkur_finalize(v2, v114, v114[48].i64))
            {
              v139 = v11;
              v140 = 321;
              goto LABEL_147;
            }
          }

          if (v175)
          {
            fsck_fail_set_phase(31);
            fsckPrint(v11, 224, v197, v198, v199, v200, v201, v202);
            if (omap_sv_finalize(v2, v114, 1))
            {
              v139 = v11;
              v140 = 323;
              goto LABEL_147;
            }
          }

          else
          {
            omap_sv_disable(1);
          }

          volume_crypto_close(v114);
          fsck_fail_set_phase(21);
          if (v114->i8[9] == 1 && sub_100005A70(*v129, v293, &v303) || (v114->i8[11] & 1) == 0 && sub_100005D94(v2, *v129, v299, &v303))
          {
            goto LABEL_146;
          }

          if ((*(*v129 + 264) & 4) != 0)
          {
            __str[0].i64[0] = 0;
            tree_key_count(v114[48].i64, 0, __str);
            if (!__str[0].i64[0] && (v303 || (v114->i8[12] & 1) != 0 || fsckAskPrompt(fsck_apfs_ctx, "Clear volume inconsistent bit? ", v221, v222, v223, v224, v225, v226)))
            {
              *(*v129 + 264) &= ~4uLL;
              v303 = 1;
              goto LABEL_271;
            }
          }

          if (!v303 && v114->i8[12] != 1)
          {
            goto LABEL_149;
          }

LABEL_271:
          v233 = write_apfs_superblock(v2, v114);
          if (v233 && v303)
          {
            fsckPrint(v11, 307, v227, v228, v229, v230, v231, v232);
            fsck_fail_func(0xA7, v233);
            goto LABEL_148;
          }

          fsck_fail_add_repair();
          v303 = 0;
          v114->i8[12] = 0;
          if (!v233)
          {
LABEL_149:
            v9 &= v114->i8[11] ^ 1;
            if (v114->i8[13])
            {
              v14 = 8;
            }

            else
            {
              v14 = v14;
            }

            __str[0].i64[0] = 0;
            tree_key_count(v114[48].i64, 0, __str);
            if (__str[0].i64[0])
            {
              v141 = 109;
              v112 = v282;
            }

            else
            {
              if (v114->i8[13])
              {
                v141 = 108;
              }

              else
              {
                v141 = 104;
              }

              v112 = v282;
              if (v8 != -1 && !v114->i8[13])
              {
                goto LABEL_155;
              }
            }

            sub_100005EE4(v11, v141, v114);
LABEL_155:
            fsck_fail_set_dev_node(*(state + 8));
            v142 = v112 - 22;
            ++v112;
            if (v142 >= v307)
            {
              goto LABEL_276;
            }

            continue;
          }
        }
      }

LABEL_148:
      omap_sv_disable(1);
      fsck_tree_node_repair_abort();
      fsroot_jobj_abort(v114);
      fsck_doc_id_cleanup();
      v114->i8[11] = 1;
      v114->i8[13] = 1;
      goto LABEL_149;
    }

    break;
  }

  v50 = fsroot_tree;
  v49 = 1533;
LABEL_99:
  fsck_fail_func(v49, v50);
LABEL_15:
  v14 = 71;
LABEL_16:
  dev_cleanup();
  fsck_global_volume_cleanup_all();
  if (nx_superblock)
  {
    free(nx_superblock);
  }

  container_cleanup(v2);
  if (v305[1])
  {
    free(v305[1]);
  }

  if (v304[1])
  {
    free(v304[1]);
  }

  space_verification_cleanup();
  if (cache_stats_enabled == 1)
  {
    fsck_print_cache_stats();
  }

  fsck_progress_done();
  return v14;
}

void sub_100004818(uint64_t *a1)
{
  if (a1)
  {
    if (*(state + 54))
    {
      v10 = 0;
      v11 = 0;
      bzero(v12, 0x320uLL);
      fsck_global_volume_get_range(a1, &v11 + 1, &v11);
      v2 = HIDWORD(v11);
      if (HIDWORD(v11) >= v11)
      {
        fsck_progress_init_for_container(a1[3], v12, 0);
      }

      else
      {
        v3 = 0;
        do
        {
          v4 = *(a1[1] + 8 * v2 + 184);
          if (v4)
          {
            if (copy_obj(a1, 0, 0, v4, 0, 0, 13, 0, &v10, 0, 0) || (v6 = malloc_type_calloc(1uLL, 0x100uLL, 0x3ABAA1DCuLL)) == 0)
            {
              v5 = &byte_1000B36A6;
            }

            else
            {
              v5 = v6;
              __strlcpy_chk();
            }

            v12[v3] = v5;
            v3 = (v3 + 1);
            if (v10)
            {
              free(v10);
            }
          }

          v10 = 0;
          ++v2;
        }

        while (v2 < v11);
        fsck_progress_init_for_container(a1[3], v12, v3);
        if (v3 >= 1)
        {
          v7 = v3;
          v8 = v12;
          do
          {
            if (*v8 != &byte_1000B36A6)
            {
              free(*v8);
            }

            ++v8;
            --v7;
          }

          while (v7);
        }
      }

      return;
    }

    v9 = a1[3];
  }

  else
  {
    v9 = 0;
  }

  fsck_progress_init_for_container(v9, 0, 0);
}

uint64_t sub_100004A38(uint64_t a1, uint64_t *a2)
{
  v35 = 0;
  space_verification_init(a2);
  fsck_fail_set_phase(12);
  fsckPrint(a1, 204, v4, v5, v6, v7, v8, v9);
  if (get_omap(a2, 0, 0))
  {
    return 8;
  }

  if (fsck_omap(a2, 0))
  {
    v16 = a1;
    v17 = 305;
    goto LABEL_4;
  }

  v36 = 0;
  fsck_global_volume_get_range(a2, &v36 + 1, &v36);
  v19 = HIDWORD(v36);
  if (HIDWORD(v36) >= v36)
  {
    return 0;
  }

  while (1)
  {
    if (!*(a2[1] + 8 * v19 + 184))
    {
      goto LABEL_16;
    }

    v20 = fsck_global_volume_get_by_index(a2, v19);
    fsck_fail_set_dev_node(v20->i64[0]);
    fsck_fail_set_phase(13);
    fsckPrint(a1, 101, v21, v22, v23, v24, v25, v26, v20->i64[0]);
    fsckPrint(a1, 206, v27, v28, v29, v30, v31, v32);
    v34 = &v20[2].i64[1];
    v33 = v20[2].i64[1];
    if (!v33)
    {
      if (copy_obj(a2, 0, 0, *(a2[1] + 8 * v19 + 184), 0, 0, 13, 0, &v20[2].i64[1], v20[5].i64, 0))
      {
        break;
      }

      v33 = *v34;
    }

    sub_100004BE4(a1, v33);
    if (sub_100004CD4(a2, *v34, v19, &v35))
    {
      break;
    }

    if (v35)
    {
      if (write_apfs_superblock(a2, v20))
      {
        break;
      }

      fsck_fail_add_repair();
      v35 = 0;
    }

LABEL_16:
    if (++v19 >= v36)
    {
      return 0;
    }
  }

  v16 = a1;
  v17 = 307;
LABEL_4:
  fsckPrint(v16, v17, v10, v11, v12, v13, v14, v15);
  return 8;
}

uint64_t sub_100004BE4(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  return fsckPrint(a1, 124, v3, v4, v5, v6, v7, v8, v12, v11, v10);
}

uint64_t sub_100004CD4(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v8 = *(a1 + 8);
  v9 = *(v8 + 96);
  v10 = *(v8 + 40);
  timestamp = get_timestamp();
  v12 = *(a2 + 32);
  if (v12 != 1112756289)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_magic invalid: %d\n", *(a2 + 36), v12);
    v15 = 92;
    v33 = 14;
LABEL_24:
    fsck_fail_func(v33, 92);
    return v15;
  }

  v13 = timestamp;
  v14 = *(a1 + 24);
  if (*(a2 + 36) != a3)
  {
    fsck_printf_err("apfs_fs_index (%d) is not valid (%d)\n", *(a2 + 36), a3);
    v15 = 92;
    fsck_fail_func(0xF, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_fs_index(oid 0x%llx, xid 0x%llx)? ", v16, v17, v18, v19, v20, v21, *(a2 + 8), *(a2 + 16)))
    {
      return v15;
    }

    *(a2 + 36) = a3;
    *a4 = 1;
  }

  if ((*(a2 + 40) & 0xFFFFFFFFFFFFFFE0) != 0)
  {
    fsck_printf_warn("apfs superblock at index %u: apfs_features has unrecognized features (0x%llX)\n", *(a2 + 36), *(a2 + 40) & 0xFFFFFFFFFFFFFFE0);
    fsck_fail_func(0x10, -3);
  }

  if ((*(a2 + 48) & 0xFFFFFFFFFFFFFFF1) != 0)
  {
    fsck_printf_warn("apfs superblock at index %u: apfs_readonly_compatible_features has unsupported flags: (0x%llX)\n", *(a2 + 36), *(a2 + 48) & 0xFFFFFFFFFFFFFFF1);
    v22 = state;
    *(state + 32) = 1;
    *(v22 + 41) = 1;
    fsckSetDefaultResponse(fsck_apfs_ctx, 1);
    fsck_fail_func(0x11, -3);
  }

  v23 = *(a2 + 56);
  if ((v23 & 0xFFFFFFFFFFFFFC00) != 0 || (*(a2 + 56) & 9) == 9)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_incompatible_features has unsupported flags: (0x%llX)\n", *(a2 + 36), v23 & 0xFFFFFFFFFFFFFC00);
    v15 = 92;
    v33 = 18;
    goto LABEL_24;
  }

  if (v23 >= 0x200 && (*(a2 + 48) & 2) != 0)
  {
    fsck_printf_err("apfs superblock at index %u: incompatible features set (apfs_readonly_compatible_features: (0x%llX), apfs_incompatible_features: (0x%llX))\n", *(a2 + 36), *(a2 + 48), v23);
    v15 = 92;
    v33 = 1210;
    goto LABEL_24;
  }

  if (*(a2 + 64) > v13)
  {
    fsck_printf_warn("apfs superblock at index %u: apfs_unmount_time (%llu) is greater than current time (%llu)\n", *(a2 + 36), *(a2 + 64), v13);
    fsck_fail_func(0x13, -4);
  }

  if (v14)
  {
    v24 = *(*(a1 + 8) + 40) - (v14[30] + v14[9]);
    if (*(a2 + 88) > v24)
    {
      fsck_printf_warn("apfs superblock at index %u: apfs_fs_alloc_count (%llu) is greater than container wide allocated count (%llu)\n", *(a2 + 36), *(a2 + 88), v24);
      fsck_fail_func(0x308, -7);
    }

    v25 = *(a2 + 72);
    if (v25)
    {
      v26 = *(*(a1 + 8) + 40);
      if (v25 <= v26)
      {
        v35 = v14[23];
        if (v25 > v35)
        {
          fsck_printf_warn("apfs superblock at index %u: apfs_fs_reserve_block_count (%llu) is greater than spaceman reserve block count (%llu) for a guaranteed-minimum space FS\n", *(a2 + 36), *(a2 + 72), v35);
          fsck_fail_func(0x14, -7);
          v25 = *(a2 + 72);
        }
      }

      else
      {
        fsck_printf_err("apfs superblock at index %u: apfs_fs_reserve_block_count (%llu) is greater than the container block count (%llu)\n", *(a2 + 36), *(a2 + 72), v26);
        v15 = 92;
        fsck_fail_func(0x448, 92);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_fs_reserve_block_count(oid 0x%llx, xid 0x%llx)? ", v27, v28, v29, v30, v31, v32, *(a2 + 8), *(a2 + 16)))
        {
          return v15;
        }

        v25 = 0;
        *(a2 + 72) = 0;
        *a4 = 1;
      }

      if (v25 >= *(a2 + 88))
      {
        v25 = *(a2 + 88);
      }

      v36 = v14[24];
      if (v25 > v36)
      {
        fsck_printf_warn("apfs superblock at index %u: apfs reserve alloc count (%llu) is greater than spaceman reserve alloc count (%llu) for a guaranteed-minimum space FS\n", *(a2 + 36), v25, v36);
        fsck_fail_func(0x309, -7);
      }
    }
  }

  v37 = *(a2 + 80);
  if (v37)
  {
    if (*(a2 + 72) > v37)
    {
      fsck_printf_err("apfs superblock at index %u: apfs_fs_reserve_block_count (%llu) must not be greater than apfs_fs_quota_block_count (%llu)\n", *(a2 + 36), *(a2 + 72), v37);
      v15 = 92;
      v33 = 21;
      goto LABEL_24;
    }

    if (v37 > v10)
    {
      fsck_printf_warn("apfs superblock at index %u: apfs_fs_quota_block_count (%llu) should not be greater than nx_block_count (%llu) for an FS with quota\n", *(a2 + 36), *(a2 + 80), v10);
      fsck_fail_func(0x16, -7);
      v37 = *(a2 + 80);
    }

    if (*(a2 + 88) > v37)
    {
      fsck_printf_err("apfs superblock at index %u: apfs_fs_alloc_count (%llu) must not be greater than apfs_fs_quota_block_count (%llu)\n", *(a2 + 36), *(a2 + 88), v37);
      v15 = 92;
      v33 = 23;
      goto LABEL_24;
    }
  }

  v38 = *(a2 + 116);
  if (v38 >> 30 == 3 || *(a2 + 116) != 2)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_root_tree_type is invalid: 0x%x\n", *(a2 + 36), v38);
    v15 = 92;
    v33 = 24;
    goto LABEL_24;
  }

  v39 = *(a2 + 120);
  if (v39 >> 30 == 3 || *(a2 + 120) != 2)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_extentref_tree_type is invalid: 0x%x\n", *(a2 + 36), v39);
    v15 = 92;
    v33 = 25;
    goto LABEL_24;
  }

  v40 = *(a2 + 124);
  if (v40 >> 30 == 3 || *(a2 + 124) != 2)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_snap_meta_tree_type is invalid: 0x%x\n", *(a2 + 36), v40);
    v15 = 92;
    v33 = 26;
    goto LABEL_24;
  }

  if (!*(a2 + 128))
  {
    fsck_printf_err("apfs superblock at index %u: apfs_omap_oid is invalid.\n", *(a2 + 36));
    v15 = 92;
    v33 = 27;
    goto LABEL_24;
  }

  if (!*(a2 + 136))
  {
    fsck_printf_err("apfs superblock at index %u: apfs_root_tree_oid is invalid.\n", *(a2 + 36));
    v15 = 92;
    v33 = 28;
    goto LABEL_24;
  }

  v41 = *(a2 + 56);
  if ((v41 & 0x100) != 0)
  {
    if ((*(a2 + 264) & 1) != 0 && !*(a2 + 976))
    {
      fsck_printf_err("apfs superblock at index %u: apfs_fs_flags (0x%llx) inconsistent with apfs_incompatible_features secondary fsroot bit (0x%llx)\n", *(a2 + 36), *(a2 + 264), v41);
      v15 = 92;
      v33 = 1160;
      goto LABEL_24;
    }

    if (!*(a2 + 1096))
    {
      fsck_printf_err("apfs superblock at index %u: apfs_sec_root_tree_oid is invalid\n", *(a2 + 36));
      v15 = 92;
      v33 = 1161;
      goto LABEL_24;
    }

    if (*(a2 + 1104) >> 30 == 3 || *(a2 + 1104) != 2)
    {
      fsck_printf_err("apfs superblock at index %u: apfs_sec_root_tree_type is invalid\n", *(a2 + 36));
      v15 = 92;
      v33 = 1162;
      goto LABEL_24;
    }
  }

  else
  {
    v42 = *(a2 + 1096);
    if (v42)
    {
      fsck_printf_warn("apfs superblock at index %u: apfs_sec_root_tree_oid (%llu) set on incompatible volume\n", *(a2 + 36), v42);
      fsck_fail_func(0x48B, -2);
    }
  }

  if (!*(a2 + 144))
  {
    fsck_printf_err("apfs superblock at index %u: apfs_extentref_tree_oid is invalid.\n", *(a2 + 36));
    v15 = 92;
    v33 = 29;
    goto LABEL_24;
  }

  v43 = *(a2 + 160);
  if (v43 >= v9)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_revert_to_xid (%llu) should be less than nx_next_xid (%llu)\n", *(a2 + 36), *(a2 + 160), v9);
    v15 = 92;
    v33 = 30;
    goto LABEL_24;
  }

  if (v43 && !*(a2 + 168))
  {
    fsck_printf_err("apfs superblock at index %u: apfs_revert_to_xid is %llu, but sblock oid is invalid\n", *(a2 + 36), v43);
    v15 = 92;
    v33 = 31;
    goto LABEL_24;
  }

  v44 = *(a2 + 224);
  if (*(a2 + 232) > v44)
  {
    fsck_printf_warn("apfs superblock at index %u: apfs_total_blocks_freed (%llu) should not be greater than apfs_total_blocks_alloced (%llu)\n", *(a2 + 36), *(a2 + 232), v44);
    fsck_fail_func(0x20, -7);
  }

  if (uuid_is_null((a2 + 240)))
  {
    fsck_printf_err("apfs superblock at index %u: apfs_vol_uuid is NULL\n", *(a2 + 36));
    v15 = 92;
    v33 = 33;
    goto LABEL_24;
  }

  if (*(a2 + 256) > v13)
  {
    fsck_printf_warn("apfs superblock at index %u: apfs_last_mod_time (%llu) is greater than current time (%llu)\n", *(a2 + 36), *(a2 + 256), v13);
    fsck_fail_func(0x22, -4);
  }

  v45 = *(a2 + 264);
  if (v45 >= 0x1000)
  {
    fsck_printf_warn("apfs superblock at index %u: apfs_fs_flags has an unknown flag set 0x%llx\n", *(a2 + 36), v45);
    fsck_fail_func(0x23, -3);
    v45 = *(a2 + 264);
  }

  v46 = v45 & 0x109;
  if ((*(a2 + 48) & 2) == 0)
  {
    v47 = *(a2 + 56);
    if ((v46 != 256) == ((v47 >> 6) & 1))
    {
      fsck_printf_err("apfs superblock at index %u: apfs_fs_flags (0x%llx) PFK bit inconsistent with apfs_incompatible_features (0x%llx) PFK bit\n", *(a2 + 36), v45, v47);
      v15 = 92;
      v33 = 998;
      goto LABEL_24;
    }
  }

  if ((v46 & (v46 - 1)) != 0)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_fs_flags has conflicting encryption flags 0x%llx\n", *(a2 + 36), v46);
    v15 = 92;
    v33 = 999;
    goto LABEL_24;
  }

  if ((v45 & 0x80) == 0)
  {
    goto LABEL_84;
  }

  v70 = *(a2 + 1024);
  if (*(a2 + 56) & 0x20 | v70)
  {
LABEL_115:
    fsck_printf_err("apfs superblock at index %u: apfs_fs_flags (0x%llx) previously sealed bit inconsistent with apfs_incompatible_features (0x%llx) / apfs_integrity_meta_oid (%llu) / apfs_fext_tree_oid (%llu)\n", *(a2 + 36), v45, *(a2 + 56), v70, *(a2 + 1032));
    v15 = 92;
    v33 = 951;
    goto LABEL_24;
  }

  if (*(a2 + 1032))
  {
    v70 = 0;
    goto LABEL_115;
  }

LABEL_84:
  if ((v45 & 1) == 0 || *(a2 + 976))
  {
    if ((*(a2 + 56) & 0x20) != 0)
    {
      fsck_printf_err("apfs superblock at index %u: apfs_fs_flags (0x%llx) indicates sealed volume is not fully unencrypted\n", *(a2 + 36), v45);
      v15 = 92;
      v33 = 917;
      goto LABEL_24;
    }

    sub_100005F9C((a2 + 96), a2);
  }

  if (!*(a2 + 704))
  {
    fsck_printf_err("apfs superblock at index %u: apfs_volname[0] == 0\n", *(a2 + 36));
    v15 = 92;
    v33 = 36;
    goto LABEL_24;
  }

  if (strnlen((a2 + 272), 0x20uLL) == 32)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_formatted_by.id (%.*s) is not NULL terminated.\n", *(a2 + 36), 32, (a2 + 272));
    v15 = 92;
    fsck_fail_func(0x25, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_formatted_by.id(oid 0x%llx, xid 0x%llx)? ", v48, v49, v50, v51, v52, v53, *(a2 + 8), *(a2 + 16)))
    {
      return v15;
    }

    *(a2 + 303) = 0;
    *a4 = 1;
  }

  if (*(a2 + 304) > v13)
  {
    fsck_printf_warn("apfs superblock at index %u: apfs_formatted_by.timestamp (%llu) is greater than current time (%llu)\n", *(a2 + 36), *(a2 + 304), v13);
    fsck_fail_func(0x26, -4);
  }

  __s1 = (a2 + 704);
  if (*(a2 + 312) > v9)
  {
    fsck_printf_warn("apfs superblock at index %u: apfs_formatted_by.last_xid (0x%llx) is greater than nx_next_xid (0x%llx)\n", *(a2 + 36), *(a2 + 312), v9);
    fsck_fail_func(0x27, -2);
  }

  v54 = 0;
  v55 = a2 + 320;
  do
  {
    v56 = *(v55 + 32);
    if (!v56)
    {
      break;
    }

    if (strnlen(v55, 0x20uLL) == 32)
    {
      v57 = v55;
      fsck_printf_err("apfs superblock at index %u: apfs_modified_by[%d].id (%.*s) is not NULL terminated.\n", *(a2 + 36), v54, 32, v55);
      v15 = 92;
      fsck_fail_func(0x28, 92);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_modified_by[%d].id(oid 0x%llx, xid 0x%llx)? ", v58, v59, v60, v61, v62, v63, v54, *(a2 + 8), *(a2 + 16)))
      {
        return v15;
      }

      v55 = v57;
      *(v57 + 31) = 0;
      *a4 = 1;
      v56 = *(v57 + 32);
    }

    if (v56 > v13)
    {
      fsck_printf_warn("apfs superblock at index %u: apfs_modified_by[%d].timestamp (%llu) is greater than current time (%llu)\n", *(a2 + 36), v54, v56, v13);
      fsck_fail_func(0x29, -4);
    }

    if (*(v55 + 40) > v9)
    {
      fsck_printf_warn("apfs superblock at index %u: apfs_modified_by[%d].last_xid (0x%llx) is greater than nx_next_xid (0x%llx)\n", *(a2 + 36), v54, *(v55 + 40), v9);
      fsck_fail_func(0x2A, -2);
    }

    ++v54;
    v55 += 48;
  }

  while (v54 != 8);
  if (strnlen(__s1, 0x100uLL) == 256)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_volname (%.*s) is not NULL terminated.\n", *(a2 + 36), 256, __s1);
    v15 = 92;
    fsck_fail_func(0x2B, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_volname(oid 0x%llx, xid 0x%llx)? ", v64, v65, v66, v67, v68, v69, *(a2 + 8), *(a2 + 16)))
    {
      return v15;
    }

    *(a2 + 959) = 0;
    *a4 = 1;
  }

  if (*(a2 + 960) <= 2u)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_next_doc_id (%u) should not be less than MIN_DOC_ID (%d)\n", *(a2 + 36), *(a2 + 960), 3);
    v15 = 92;
    v33 = 44;
    goto LABEL_24;
  }

  if (*(a2 + 216) && !*(a2 + 1000))
  {
    fsck_printf_debug("apfs_sb: object (oid 0x%llx): apfs_snap_meta_ext_oid invalid\n", *(a2 + 8));
  }

  v71 = *(a2 + 56);
  if ((v71 & 0x20) != 0)
  {
    if (!*(a2 + 1032))
    {
      fsck_printf_err("apfs superblock at index %u: apfs_fext_tree_oid is invalid.\n", *(a2 + 36));
      v15 = 92;
      v33 = 909;
      goto LABEL_24;
    }

    v95 = *(a2 + 1040);
    if (v95 >> 30 == 3 || *(a2 + 1040) != 2)
    {
      fsck_printf_err("apfs superblock at index %u: apfs_fext_tree_type is invalid: %u\n", *(a2 + 36), v95);
      v15 = 92;
      v33 = 910;
      goto LABEL_24;
    }

    if (!*(a2 + 1024))
    {
      fsck_printf_err("apfs superblock at index %u: apfs_integrity_meta_oid is invalid.\n", *(a2 + 36));
      v15 = 92;
      v33 = 911;
      goto LABEL_24;
    }
  }

  if ((v71 & 0x40) != 0)
  {
    if (!*(a2 + 1048))
    {
      fsck_printf_err("apfs superblock at index %u: apfs_pfkur_tree_oid is invalid.\n", *(a2 + 36));
      v15 = 92;
      v33 = 970;
      goto LABEL_24;
    }

    v72 = *(a2 + 1044);
    if (v72 >> 30 == 3 || *(a2 + 1044) != 2)
    {
      fsck_printf_err("apfs superblock at index %u: apfs_pfkur_tree_type is invalid: 0x%x\n", *(a2 + 36), v72);
      v15 = 92;
      v33 = 971;
      goto LABEL_24;
    }
  }

  v73 = *(*(a1 + 8) + 96);
  if (*(a2 + 1056) >= v73)
  {
    fsck_printf_warn("apfs superblock at index %u: apfs_doc_id_index_xid (%llu) is greater than or equal to container nx_next_xid (%llu)\n", *(a2 + 36), *(a2 + 1056), v73);
    fsck_fail_func(0x40F, -2);
  }

  v74 = *(a2 + 1064);
  if (v74 >= 0x20)
  {
    fsck_printf_warn("apfs superblock at index %u: apfs_doc_id_index_flags has unrecognized flags (0x%x)\n", *(a2 + 36), v74);
    fsck_fail_func(0x410, -3);
    v74 = *(a2 + 1064);
  }

  if ((v74 & 1) == 0)
  {
    if (*(a2 + 1080))
    {
      fsck_printf_warn("apfs superblock at index %u: apfs_prev_doc_id_tree_oid is set (%llu), despite apfs_doc_id_index_flags (0x%x)\n", *(a2 + 36), *(a2 + 1080), v74);
      fsck_fail_func(0x411, -3);
    }

    if (*(a2 + 1088))
    {
      fsck_printf_warn("apfs superblock at index %u: apfs_doc_id_fixup_cursor is set (%llu), despite apfs_doc_id_index_flags (0x%x)\n", *(a2 + 36), *(a2 + 1088), *(a2 + 1064));
      fsck_fail_func(0x412, -3);
      if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_doc_id_fixup_cursor? ", v75, v76, v77, v78, v79, v80))
      {
        *(a2 + 1088) = 0;
        *a4 = 1;
      }
    }
  }

  v81 = *(a2 + 176);
  if (*(a2 + 1088) >= v81)
  {
    fsck_printf_warn("apfs superblock at index %u: apfs_doc_id_fixup_cursor (%llu) is greater than or equal to apfs_next_obj_id (%llu)\n", *(a2 + 36), *(a2 + 1088), v81);
    fsck_fail_func(0x413, -2);
  }

  if (*(a2 + 1072) || *(a2 + 1080))
  {
    v82 = *(a2 + 1068);
    if (v82 >> 30 == 3 || *(a2 + 1068) != 2)
    {
      fsck_printf_err("apfs superblock at index %u: apfs_doc_id_tree_type is invalid: %u\n", *(a2 + 36), v82);
      v15 = 92;
      fsck_fail_func(0x414, 92);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_doc_id_tree_type? ", v83, v84, v85, v86, v87, v88))
      {
        return v15;
      }

      *(a2 + 1068) = 2;
      *a4 = 1;
    }
  }

  v89 = *(a2 + 1108);
  if (v89 >= 4)
  {
    fsck_printf_warn("apfs superblock at index %u: unknown clone group tree flags: 0x%x\n", *(a2 + 36), v89);
    if (fsck_should_repair_unknown_flags(a1, *(a2 + 1108), 3, v90, v91, v92, v93, v94))
    {
      *(a2 + 1108) &= 3u;
      *a4 = 1;
    }

    fsck_fail_func(0x5EC, -3);
  }

  return 0;
}

uint64_t sub_100005A70(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 176);
  if (v6 < *(a2 + 40))
  {
    fsck_printf_err("apfs_next_obj_id is not valid (expected %llu, actual %llu)\n", *(a2 + 40), v6);
    v7 = 92;
    fsck_fail_func(0x2D, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_next_obj_id(oid 0x%llx, xid 0x%llx)? ", v8, v9, v10, v11, v12, v13, *(a1 + 8), *(a1 + 16)))
    {
      return v7;
    }

    *(a1 + 176) = *(a2 + 40);
    *a3 = 1;
  }

  v14 = *(a1 + 960);
  if (v14 < *(a2 + 48))
  {
    fsck_printf_err("apfs_next_doc_id is not valid (expected %u, actual %u)\n", *(a2 + 48), v14);
    v7 = 92;
    fsck_fail_func(0x415, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_next_doc_id(oid 0x%llx, xid 0x%llx)? ", v15, v16, v17, v18, v19, v20, *(a1 + 8), *(a1 + 16)))
    {
      return v7;
    }

    *(a1 + 960) = *(a2 + 48);
    *a3 = 1;
  }

  v21 = *(a1 + 184);
  if (v21 != *a2)
  {
    fsck_printf_warn("apfs_num_files is not valid (expected %llu, actual %llu)\n", *a2, v21);
    fsck_fail_func(0x2E, -8);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_num_files(oid 0x%llx, xid 0x%llx)? ", v22, v23, v24, v25, v26, v27, *(a1 + 8), *(a1 + 16)))
    {
      *(a1 + 184) = *a2;
      *a3 = 1;
    }
  }

  v28 = *(a1 + 192);
  if (v28 != *(a2 + 8))
  {
    fsck_printf_warn("apfs_num_directories is not valid (expected %llu, actual %llu)\n", *(a2 + 8), v28);
    fsck_fail_func(0x2F, -8);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_num_directories(oid 0x%llx, xid 0x%llx)? ", v29, v30, v31, v32, v33, v34, *(a1 + 8), *(a1 + 16)))
    {
      *(a1 + 192) = *(a2 + 8);
      *a3 = 1;
    }
  }

  v35 = *(a1 + 200);
  if (v35 != *(a2 + 16))
  {
    fsck_printf_warn("apfs_num_symlinks is not valid (expected %llu, actual %llu)\n", *(a2 + 16), v35);
    fsck_fail_func(0x30, -8);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_num_symlinks(oid 0x%llx, xid 0x%llx)? ", v36, v37, v38, v39, v40, v41, *(a1 + 8), *(a1 + 16)))
    {
      *(a1 + 200) = *(a2 + 16);
      *a3 = 1;
    }
  }

  v42 = *(a1 + 208);
  if (v42 != *(a2 + 24))
  {
    fsck_printf_warn("apfs_num_other_fsobjects is not valid (expected %llu, actual %llu)\n", *(a2 + 24), v42);
    fsck_fail_func(0x31, -8);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_num_other_fsobjects(oid 0x%llx, xid 0x%llx)? ", v43, v44, v45, v46, v47, v48, *(a1 + 8), *(a1 + 16)))
    {
      *(a1 + 208) = *(a2 + 24);
      *a3 = 1;
    }
  }

  v49 = *(a1 + 216);
  if (v49 != *(a2 + 32))
  {
    fsck_printf_warn("apfs_num_snapshots is not valid (expected %llu, actual %llu)\n", *(a2 + 32), v49);
    fsck_fail_func(0x32, -8);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_num_snapshots(oid 0x%llx, xid 0x%llx)? ", v50, v51, v52, v53, v54, v55, *(a1 + 8), *(a1 + 16)))
    {
      *(a1 + 216) = *(a2 + 32);
      *a3 = 1;
    }
  }

  v56 = *(a1 + 1136);
  if (v56 >= *(a2 + 56))
  {
    return 0;
  }

  fsck_printf_err("apfs_clonegroup_next_id is not valid (expected %llu, actual %llu)\n", *(a2 + 56), v56);
  v7 = 92;
  fsck_fail_func(0x5ED, 92);
  if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_clonegroup_next_id(oid 0x%llx, xid 0x%llx)? ", v57, v58, v59, v60, v61, v62, *(a1 + 8), *(a1 + 16)))
  {
    v7 = 0;
    *(a1 + 1136) = *(a2 + 56);
    *a3 = 1;
  }

  return v7;
}

uint64_t sub_100005D94(uint64_t a1, void *a2, uint64_t *a3, _DWORD *a4)
{
  v7 = a2[9];
  v8 = *a3;
  if (v7 > *(*(a1 + 8) + 40) - *a3)
  {
    fsck_printf_err("apfs_fs_reserve_block_count brings total reserve block count beyond the container block count (max %llu, actual %llu)\n", *(*(a1 + 8) + 40) - *a3, v7);
    v9 = 92;
    fsck_fail_func(0x449, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_fs_reserve_block_count(oid 0x%llx, xid 0x%llx)? ", v10, v11, v12, v13, v14, v15, a2[1], a2[2]))
    {
      return v9;
    }

    v7 = 0;
    a2[9] = 0;
    *a4 = 1;
    v8 = *a3;
  }

  *a3 = v8 + v7;
  v24 = 0;
  v9 = volume_alloc_count_get(a2[1], &v24);
  if (!v9)
  {
    v16 = a2[11];
    if (v16 != v24)
    {
      fsck_printf_warn("apfs_fs_alloc_count is not valid (expected %llu, actual %llu)\n", v24, v16);
      fsck_fail_func(0x367, -8);
      if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_fs_alloc_count(oid 0x%llx, xid 0x%llx)? ", v17, v18, v19, v20, v21, v22, a2[1], a2[2]))
      {
        v16 = v24;
        a2[11] = v24;
        *a4 = 1;
      }

      else
      {
        v16 = a2[11];
      }
    }

    if (a2[9] < v16)
    {
      v16 = a2[9];
    }

    a3[1] += v16;
  }

  return v9;
}

uint64_t sub_100005EE4(uint64_t a1, int a2, void *a3)
{
  memset(dst, 0, sizeof(dst));
  memset(out, 0, 37);
  v6 = a3[5];
  if (v6)
  {
    uuid_copy(dst, (v6 + 240));
  }

  else
  {
    uuid_clear(dst);
  }

  uuid_unparse(dst, out);
  return fsckPrint(a1, a2, v7, v8, v9, v10, v11, v12, *a3, out);
}

unsigned __int16 *sub_100005F9C(unsigned __int16 *result, uint64_t a2)
{
  v3 = result;
  if (*result != 5)
  {
    fsck_printf_warn("apfs object (oid 0x%llx): crypto major version (%u) is not CP_CURRENT (%u)\n", *(a2 + 8), *result, 5);
    result = fsck_fail_func(0xC, -6);
  }

  v4 = *(v3 + 1);
  if (v4)
  {
    fsck_printf_warn("apfs object (oid 0x%llx): cpflags (%u) should be 0\n", *(a2 + 8), v4);

    return fsck_fail_func(0xD, -3);
  }

  return result;
}

char *disable_idle_sleep()
{
  AssertionID = 0;
  if (IOPMAssertionCreateWithName(@"PreventUserIdleDisplaySleep", 0xFFu, @"Running FSCK", &AssertionID))
  {
    v0 = "failed!";
  }

  else
  {
    dword_100103280 = AssertionID;
    v0 = "succeeded.";
  }

  return fsck_printf_debug("Disabling idle sleep, %s\n", v0);
}

uint64_t dev_cleanup()
{
  v0 = dword_1000E8518;
  if ((dword_1000E8518 & 0x80000000) == 0)
  {
    dword_1000E8518 = -1;
    fcntl(v0, 54, 0);
    result = close(v0);
  }

  if (dword_100103284)
  {
    v2 = dword_100103284;
    dword_100103284 = 0;
    return apfs_crypto_io_disable(&v2);
  }

  return result;
}

void dev_reload_validate()
{
  if (dword_1000E8518 != -1)
  {
    sub_1000A3CCC();
  }

  if (dword_100103284)
  {
    sub_1000A3CF8();
  }
}

uint64_t dev_reload(const char *a1)
{
  result = open(a1, 2);
  if ((result & 0x80000000) == 0)
  {

    return close(result);
  }

  return result;
}

BOOL container_status_is_corrupt(const char *a1)
{
  v1 = device_basename(a1);
  v2 = IOBSDNameMatching(kIOMasterPortDefault, 0, v1);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    iterator = 0;
    IORegistryEntryGetChildIterator(MatchingService, "IOService", &iterator);
    if (iterator)
    {
      v5 = IOIteratorNext(iterator);
      if (!v5)
      {
LABEL_8:
        IOObjectRelease(iterator);
        v11 = 0;
LABEL_16:
        IOObjectRelease(v4);
        return v11;
      }

      v6 = v5;
      v7 = kCFAllocatorDefault;
      while (1)
      {
        CFProperty = IORegistryEntryCreateCFProperty(v6, @"IOMatchCategory", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          v9 = CFProperty;
          v10 = CFEqual(CFProperty, @"IOStorage");
          CFRelease(v9);
          if (v10)
          {
            break;
          }
        }

        IOObjectRelease(v6);
        v6 = IOIteratorNext(iterator);
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      IOObjectRelease(iterator);
    }

    else
    {
      v7 = kCFAllocatorDefault;
      v6 = v4;
    }

    v12 = IORegistryEntryCreateCFProperty(v6, @"Status", v7, 0);
    if (v12)
    {
      v13 = v12;
      v11 = CFEqual(v12, @"Corrupt") != 0;
      CFRelease(v13);
    }

    else
    {
      v11 = 0;
    }

    IOObjectRelease(v6);
    goto LABEL_16;
  }

  return 0;
}

uint64_t volume_crypto_open(const char **a1, uint64_t *a2, char a3)
{
  is_multikey_encrypted = device_is_multikey_encrypted(*a1);
  v7 = is_multikey_encrypted;
  if (is_multikey_encrypted)
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v27 = v8;
  if (a2)
  {
    v9 = *(a2[1] + 36);
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v25 = a3;
  if (is_multikey_encrypted)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = (a1 + 104);
  v26 = a1;
  v13 = (a1 + 3);
  for (i = 1; ; i = 0)
  {
    v15 = &v12[12 * v10];
    *(v15 + 64) = v10;
    v16 = &v13[v10];
    if (*v16)
    {
      inited = fsck_dev_init_with_dev_handle_ext(v16, v15, v27, v11);
LABEL_13:
      v18 = inited;
      if (inited)
      {
        goto LABEL_31;
      }

      goto LABEL_14;
    }

    if (a2)
    {
      break;
    }

    v19 = dev_init(*v26, a3 & 3, v16);
    if (v19)
    {
      goto LABEL_30;
    }

LABEL_23:
    v21 = i & v7;
    v10 = 1;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(state + 20) & 0x80000000) == 0)
  {
    v19 = fsck_meta_crypto_state_unwrap(a2, v26, v15);
    if (v19)
    {
      goto LABEL_30;
    }

    v20 = dup(*(state + 16));
    if ((v20 & 0x80000000) == 0)
    {
      inited = fsck_dev_init_with_fd_ext(v20, a3 & 3, v16, v15, v27, v11);
      goto LABEL_13;
    }

    v18 = *__error();
    if (v18)
    {
      goto LABEL_31;
    }

LABEL_14:
    if (a2 && *v16)
    {
      dev_set_block_size(*v16);
    }

    goto LABEL_23;
  }

  if (!*(state + 72) || (v19 = fsck_meta_crypto_state_unwrap(a2, v26, v15), !v19))
  {
    a3 = v25;
    inited = fsck_dev_init_ext(*v26, v25 & 3, v16, v15, v27, v11);
    goto LABEL_13;
  }

LABEL_30:
  v18 = v19;
LABEL_31:
  v22 = *v26;
  v23 = strerror(v18);
  fsck_printf_err("device %s failed to open with error: %s\n", v22, v23);
  return v18;
}

void volume_crypto_close(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 24;
  v3 = a1 + 832;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = *(v2 + 8 * v1);
    if (v6)
    {
      dev_close(v6);
      *(v2 + 8 * v1) = 0;
    }

    v7 = v3 + 96 * v1;
    if (*(v7 + 72))
    {
      fsck_meta_crypto_state_destroy(v7);
    }

    v4 = 0;
    v1 = 1;
  }

  while ((v5 & 1) != 0);
}

uint64_t container_get_info(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(state + 16) != -1)
  {
    *a2 = 0;
    *(a2 + 2) = 0;
    goto LABEL_3;
  }

  v6 = sub_100006860(*(state + 8), 1, a2, (a2 + 1), (a2 + 2), (a2 + 8));
  if (v6)
  {
    v7 = v6;
    v8 = *(state + 8);
    v9 = strerror(v6);
    fsck_printf_err("dev_is_mounted(%s) failed with error: %s\n", v8, v9);
    v10 = 153;
LABEL_7:
    fsck_fail_func(v10, v7);
    return 66;
  }

  if ((*a2 & 1) == 0)
  {
LABEL_3:
    if (*(state + 41) != 1)
    {
      v4 = 0;
      *(a2 + 32) = 18;
      return v4;
    }

    goto LABEL_4;
  }

  v12 = state;
  if (*(a2 + 1) != 1)
  {
    if (*(state + 24) == -1)
    {
      *(a2 + 16) = 1;
    }

    else
    {
      v14 = sub_100006860(*state, 0, (a2 + 16), (a2 + 17), (a2 + 18), (a2 + 24));
      if (v14)
      {
        v7 = v14;
        v15 = *state;
        v16 = strerror(v14);
        fsck_printf_err("dev_is_mounted(%s) failed with error: %s\n", v15, v16);
        v10 = 155;
        goto LABEL_7;
      }

      if ((*(a2 + 16) & 1) == 0)
      {
        v17 = state;
        if (*(state + 41) != 1)
        {
          *(a2 + 32) = 18;
          *(a2 + 40) = 1;
          fsck_printf_err("live repair of a volume in mounted container %s is not supported yet.\n", *(v17 + 8));
          v4 = 64;
          v13 = 158;
          v18 = 64;
          goto LABEL_34;
        }

        if ((*(state + 40) & 1) == 0)
        {
          if (*(state + 42))
          {
            goto LABEL_26;
          }

          fsck_printf_err("container %s is mounted with write access; please re-run with -l.\n", *(state + 8));
          v4 = 65;
          v13 = 589;
          goto LABEL_33;
        }

        if (*(state + 42))
        {
          goto LABEL_26;
        }

LABEL_31:
        v4 = 0;
        *a3 = 1;
        return v4;
      }
    }

    if (*(state + 41) != 1)
    {
      fsck_printf_err("container %s is mounted with write access.\n", *(state + 8));
      v4 = 65;
      v13 = 157;
      goto LABEL_33;
    }

    if (*(state + 40) != 1 || *(a2 + 18) != 1 || (*(state + 42) & 1) != 0)
    {
      if (*(state + 42) == 1)
      {
LABEL_26:
        v4 = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 1;
        return v4;
      }

      fsck_printf_err("container %s is mounted with write access; please re-run with -l.\n", *(state + 8));
      v4 = 65;
      v13 = 156;
LABEL_33:
      v18 = 65;
LABEL_34:
      fsck_fail_func(v13, v18);
      return v4;
    }

    goto LABEL_31;
  }

  if (*(state + 41) != 1)
  {
    if (*(a2 + 2) == 1)
    {
      *(a2 + 32) = 0x4000000000012;
      fsck_printf_err("container %s is mounted. repairs in a mounted container is not supported yet.\n", *(v12 + 8));
      v4 = 65;
      v13 = 857;
    }

    else
    {
      fsck_printf_err("container %s is mounted.\n", *(state + 8));
      v4 = 65;
      v13 = 154;
    }

    goto LABEL_33;
  }

LABEL_4:
  v4 = 0;
  *(a2 + 32) = 0;
  return v4;
}

uint64_t sub_100006860(const char *a1, int a2, _BYTE *a3, _BYTE *a4, char *a5, void **a6)
{
  v8 = a4;
  *a3 = 0;
  *a4 = 1;
  *a5 = 0;
  *a6 = 0;
  v10 = device_basename(a1);
  v11 = strlen(v10);
  v12 = getfsstat(0, 0, 2);
  if ((v12 & 0x80000000) != 0)
  {
    v15 = 0;
    goto LABEL_34;
  }

  v13 = 2168 * v12;
  v14 = malloc_type_malloc(2168 * v12, 0x100004087E0324AuLL);
  v15 = v14;
  if (!v14 || (v16 = getfsstat(v14, v13, 2), (v16 & 0x80000000) != 0))
  {
LABEL_34:
    v28 = *__error();
  }

  else
  {
    if (v16)
    {
      v30 = v8;
      v17 = v16;
      v18 = v15;
      while (1)
      {
        f_mntfromname = v18->f_mntfromname;
        if (!strcmp(v18->f_mntfromname, "root_device"))
        {
          f_mntfromname = devname(v18->f_fsid.val[0], 0x6000u);
        }

        v20 = strrchr(f_mntfromname, 64);
        if (v20)
        {
          v21 = v20 + 1;
        }

        else
        {
          v21 = f_mntfromname;
        }

        v22 = device_basename(v21);
        if (strncmp(v22, v10, v11))
        {
          goto LABEL_31;
        }

        v23 = v22[v11];
        if (v22[v11])
        {
          if (a2)
          {
            if (v23 != 115)
            {
              goto LABEL_31;
            }

LABEL_17:
            f_flags = v18->f_flags;
            if ((f_flags & 0x4000) == 0)
            {
              goto LABEL_18;
            }

            goto LABEL_24;
          }

          if (v23 != 115 || (v18->f_flags & 0x40000000) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (a2)
        {
          goto LABEL_17;
        }

        f_flags = v18->f_flags;
        if ((f_flags & 0x40000000) == 0)
        {
LABEL_18:
          v25 = 0;
          goto LABEL_26;
        }

LABEL_24:
        if (*a3)
        {
          goto LABEL_27;
        }

        v25 = 1;
LABEL_26:
        *a5 = v25;
LABEL_27:
        *a3 = 1;
        if ((f_flags & 1) == 0)
        {
          *v30 = 0;
        }

        if (!*a6)
        {
          v27 = strdup(v18->f_mntonname);
          *a6 = v27;
          if (!v27)
          {
            v8 = v30;
            goto LABEL_34;
          }
        }

LABEL_31:
        ++v18;
        if (!--v17)
        {
          v28 = 0;
          v8 = v30;
          goto LABEL_35;
        }
      }
    }

    v28 = 0;
  }

LABEL_35:
  if ((*a3 & 1) == 0)
  {
    *v8 = 0;
  }

  if (v15)
  {
    free(v15);
  }

  if (v28 && *a6)
  {
    free(*a6);
    *a6 = 0;
  }

  return v28;
}

uint64_t container_open(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(state + 16);
  if (v6 == -1)
  {
    v7 = fsck_dev_init(*(state + 8), a2, a1, a4, a5);
  }

  else
  {
    v7 = fsck_dev_init_with_fd(v6, a1);
  }

  v8 = v7;
  if (!v7)
  {
    return 0;
  }

  v9 = *(state + 8);
  v10 = strerror(v7);
  fsck_printf_err("device %s failed to open with error: %s\n", v9, v10);
  fsck_fail_func(0xA3, v8);
  return 66;
}

uint64_t container_crypto_prepare(uint64_t a1, char a2, _BYTE *a3)
{
  v15 = 0;
  fsck_global_volume_get_range(a1, &v15 + 1, &v15);
  *a3 = 0;
  for (i = HIDWORD(v15); i < v15; ++i)
  {
    v7 = fsck_global_volume_get_by_index(a1, i);
    v8 = *v7;
    if (!*v7)
    {
      v9 = *(state + 8);
      v16 = 0;
      asprintf(&v16, "/dev/r%ss%d", (v9 + 6), i + 1);
      v8 = v16;
      *v7 = v16;
      if (!v8)
      {
        fsck_printf_err("failed to allocate memory for device path\n");
        fsck_fail_func(0xA4, 12);
        return 71;
      }
    }

    if ((*(state + 40) & 1) == 0 && (*(state + 47) & 1) == 0)
    {
      is_encrypted = device_is_encrypted(v8);
      *a3 |= is_encrypted;
      if (is_encrypted)
      {
        if (*(state + 48) == 1)
        {
          *strrchr(*v7, 115) = 0;
          v7[8] = 1;
          *a3 = 0;
        }

        v11 = volume_crypto_open(v7, 0, a2);
        if (v11)
        {
          fsck_fail_func(0x9F, v11);
          return 66;
        }
      }

      v13 = *(state + 20) >= 0 || *(state + 72) != 0;
      v7[8] = v13;
    }
  }

  return 0;
}

uint64_t container_crypto_setup(uint64_t a1, char a2)
{
  v19 = 0;
  fsck_global_volume_get_range(a1, &v19 + 1, &v19);
  if (dword_100103284)
  {
    v4 = v19;
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    v8 = *(a1 + 8);
    v9 = *(v8 + 1392);
    v17 = *(v8 + 1296);
    v18 = v9;
    v10 = *(state + 8);
    v16[0] = v17;
    v16[1] = v9;
    v11 = apfs_crypto_io_enable(v10, (a2 & 3) != 0, v16, &dword_100103284, v20);
    if (v11)
    {
      v12 = v11;
      v13 = *(state + 8);
      v14 = strerror(v11);
      fsck_printf_err("failed to enable crypto I/O mode for container %s: %s\n", v13, v14);
      fsck_fail_func(0x3B1, v12);
      return 66;
    }

    v4 = v19;
    for (i = HIDWORD(v19); i < v19; v4 = v19)
    {
      fsck_global_volume_get_by_index(a1, i)[8] = *(v20 + i) != 0;
      ++i;
    }
  }

  v5 = HIDWORD(v19);
  if (HIDWORD(v19) < v4)
  {
    do
    {
      v6 = fsck_global_volume_get_by_index(a1, v5);
      if ((v6[8] & 1) == 0)
      {
        volume_crypto_close(v6);
      }

      ++v5;
    }

    while (v5 < v19);
  }

  return 0;
}

uint64_t container_freeze(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    v4 = *(a2 + 8);
  }

  if (state)
  {
    if (*(state + 16) != -1)
    {
      sub_1000A3D24();
    }
  }

  v5 = open(v4, 0);
  dword_1000E8518 = v5;
  if (v5 < 0)
  {
    v10 = *__error();
    v11 = strerror(v10);
    fsck_printf_err("could not open %s to freeze the volume: %s\n", v4, v11);
    fsck_fail_func(0xA1, v10);
    return 66;
  }

  if (a3)
  {
    v13 = 0;
    result = ffsctl(v5, 0x80044A62uLL, &v13, 0);
    if (!result)
    {
      return result;
    }

    v7 = *__error();
    v8 = strerror(v7);
    fsck_printf_err("could not sync and freeze volume: %s\n", v8);
    v9 = 1081;
  }

  else
  {
    result = fcntl(v5, 53, 0);
    if (!result)
    {
      return result;
    }

    v7 = *__error();
    v12 = strerror(v7);
    fsck_printf_err("could not freeze volume: %s\n", v12);
    v9 = 162;
  }

  fsck_fail_func(v9, v7);
  return 71;
}

FILE *safely_open_log_file(const char *a1)
{
  v1 = open(a1, 777, 438);
  if (v1 < 0)
  {
    return 0;
  }

  v2 = v1;
  memset(&v5, 0, sizeof(v5));
  if (!fstat(v1, &v5) && (v5.st_mode & 0xF000) == 0x8000)
  {
    return fdopen(v2, "a");
  }

  close(v2);
  v4 = __error();
  result = 0;
  *v4 = 1;
  return result;
}

uint64_t sub_100007024(uint64_t result, uint64_t a2, char *__format, const char *a4, va_list a5)
{
  v18 = 0;
  if (*(a2 + 8) && *(a2 + 16))
  {
    v8 = result;
    if (result == 1)
    {
      v18 = a5;
    }

    if (live_fsck && *a2 == __stdoutp)
    {
      pthread_mutex_lock(&stru_1000E8528);
    }

    v9 = *(a2 + 8);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = v9 - v10;
    if (v8 == 1)
    {
      result = vsnprintf(*(a2 + 8), v11 - (v9 - v10), __format, a5);
    }

    else
    {
      result = snprintf(v9, v11 - (v9 - v10), "%s", a4);
    }

    if (v11 - (v9 - v10) >= result)
    {
      v9 += result;
    }

    else
    {
      if (result >= 4096)
      {
        v13 = (result + 4095) & 0x7FFFF000;
      }

      else
      {
        v13 = 4096;
      }

      v14 = v11 + v13;
      if (!((v11 + v13) >> 20))
      {
        result = malloc_type_realloc(v10, v14, 0xB86594F6uLL);
        if (result)
        {
          v15 = result;
          v16 = result + v12;
          if (v8 == 1)
          {
            result = vsnprintf((result + v12), v14 - v12, __format, v18);
          }

          else
          {
            result = snprintf((result + v12), v14 - v12, "%s", a4);
          }

          v17 = result;
          if (v14 - v12 < result)
          {
            v17 = 0;
          }

          v9 = (v16 + v17);
          v10 = v15;
          v11 = v14;
        }
      }
    }

    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    if (live_fsck)
    {
      if (*a2 == __stdoutp)
      {
        pthread_cond_signal(&stru_1001032C8);
        return pthread_mutex_unlock(&stru_1000E8528);
      }
    }
  }

  return result;
}

uint64_t setup_logging()
{
  v0 = qword_100103288;
  setlinebuf(__stdoutp);
  result = setlinebuf(__stderrp);
  live_fsck = lflag;
  if (!v0)
  {
    result = safely_open_log_file("/var/log/fsck_apfs.log");
    if (result)
    {
      v2 = result;
      qword_100103288 = result;
      setlinebuf(result);
      if (live_fsck)
      {
        v3 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        result = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (v3 && result)
        {
          *v3 = 0;
          qword_100103290 = v3;
          unk_100103298 = v3;
          qword_1001032A0 = 4096;
          *result = 0;
          qword_1001032A8 = __stdoutp;
          unk_1001032B0 = result;
          qword_1001032B8 = result;
          unk_1001032C0 = 4096;
          v7 = time(0);
          v4 = ctime(&v7);
          result = sub_100007024(2, &qword_100103288, "\nfsck_apfs started at %s", v4, 0);
          if (live_fsck)
          {
            pthread_cond_init(&stru_1001032C8, 0);
            pthread_create(&qword_1001032F8, 0, sub_1000073DC, &qword_1001032A8);
            return pthread_create(&qword_100103300, 0, sub_1000073DC, &qword_100103288);
          }
        }
      }

      else
      {
        v7 = time(0);
        if (cdevname)
        {
          v5 = cdevname;
        }

        else
        {
          v5 = "UNKNOWN-DEV";
        }

        v6 = ctime(&v7);
        fprintf(v2, "\n%s: fsck_apfs started at %s", v5, v6);
        return fflush(v2);
      }
    }

    else
    {
      live_fsck = 0;
    }
  }

  return result;
}

uint64_t sub_1000073DC(uint64_t a1)
{
  v2 = *a1;
  bzero(__dst, 0x400uLL);
  v3 = 0;
  while (dword_1000E8520 || *(a1 + 8) != *(a1 + 16))
  {
    pthread_mutex_lock(&stru_1000E8528);
    while (dword_1000E8520 && *(a1 + 8) == *(a1 + 16))
    {
      v4 = pthread_cond_wait(&stru_1001032C8, &stru_1000E8528);
      if (v4)
      {
        fprintf(__stderrp, "error %d from cond wait\n", v4);
        break;
      }
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      pthread_mutex_unlock(&stru_1000E8528);
    }

    else
    {
      if (v7 < 0x400)
      {
        __memcpy_chk();
        v8 = v6;
      }

      else
      {
        memcpy(__dst, *(a1 + 16), 0x3FFuLL);
        memmove(v6, (v6 + 1023), v7 - 1023);
        v8 = v5 - 1023;
        v7 = 1023;
      }

      __dst[v7] = 0;
      *(a1 + 8) = v8;
      *(a1 + 16) = v6;
      pthread_mutex_unlock(&stru_1000E8528);
      v9 = __dst[0];
      if (__dst[0])
      {
        v10 = __dst;
        do
        {
          v11 = v10++;
          if (v9)
          {
            while (v9 != 10)
            {
              v12 = *v10++;
              v9 = v12;
              if (!v12)
              {
                goto LABEL_19;
              }
            }

            *(v10 - 1) = 0;
            v13 = "\n";
          }

          else
          {
LABEL_19:
            --v10;
            v13 = &byte_1000B36A6;
          }

          if (v2 == __stdoutp || *v11 == 0 || v3)
          {
            fprintf(v2, "%s%s");
          }

          else
          {
            fprintf(v2, "%s: %s%s");
          }

          v3 = *v13 != 10;
          v9 = *v10;
        }

        while (*v10);
      }

      fflush(v2);
    }
  }

  return 0;
}

uint64_t logstring(uint64_t a1, const char *a2)
{
  byte_100103308 = 0;
  if (live_fsck)
  {

    return sub_100007024(2, &qword_100103288, "%s", a2, 0);
  }

  else
  {
    result = qword_100103288;
    if (qword_100103288)
    {
      fprintf(qword_100103288, "%s: ", cdevname);
      byte_100103308 = 1;
      v4 = qword_100103288;

      return fputs(a2, v4);
    }
  }

  return result;
}

void outstring(uint64_t a1, const char *a2)
{
  if (live_fsck)
  {
    sub_100007024(2, &qword_1001032A8, "%s", a2, 0);
  }

  else
  {
    appexPrintFixed(a2);
  }
}

uint64_t sub_100007758(char *__format, va_list a2)
{
  v11 = a2;
  v12 = a2;
  byte_100103308 = 0;
  if (state && *(state + 36) == 3)
  {
    __s = 0;
    vasprintf(&__s, __format, v12);
    v3 = __s;
    if (__s)
    {
      v4 = strlen(__s);
      v7[0] = 0;
      v7[1] = __s;
      v8 = 0x100000005uLL;
      v9 = 0;
      if (v4)
      {
        if (__s[v4 - 1] == 10)
        {
          __s[v4 - 1] = 0;
          v3 = __s;
        }
      }

      fsckPrintXML(fsck_apfs_ctx, v7, v3, 0);
      free(__s);
    }
  }

  else if (live_fsck)
  {
    sub_100007024(1, &qword_1001032A8, __format, 0, v12);
  }

  else
  {
    vfprintf(__stderrp, __format, v12);
  }

  if (live_fsck)
  {
    return sub_100007024(1, &qword_100103288, __format, 0, v11);
  }

  result = qword_100103288;
  if (qword_100103288)
  {
    if (byte_100103308)
    {
      if (!strchr(__format, 10))
      {
        return vfprintf(qword_100103288, __format, v11);
      }

      v6 = 0;
    }

    else
    {
      fprintf(qword_100103288, "%s: ", cdevname);
      v6 = strchr(__format, 10) == 0;
    }

    byte_100103308 = v6;
    return vfprintf(qword_100103288, __format, v11);
  }

  return result;
}

char *fsck_printf_debug(char *result, ...)
{
  va_start(va, result);
  if (state)
  {
    if (*(state + 28))
    {
      return sub_100007758(result, va);
    }
  }

  return result;
}

void sub_10000798C(const char *a1, const char *a2, va_list a3)
{
  v5 = strlen(a1);
  v6 = vsnprintf(0, 0, a2, a3);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6 + 1;
    v8 = malloc_type_malloc(v7 + v5, 0xF1CC683DuLL);
    v9 = strcpy(v8, a1);
    vsnprintf(&v9[v5], v7, a2, a3);
    appexPrintFixed(v8);
    free(v8);
  }
}

void fsck_printf_warn(const char *a1, ...)
{
  va_start(va, a1);
  v2 = strlen(a1);
  v3 = crc32c(0, a1, v2) & 0x3FF;
  v4 = byte_100103309[v3];
  if (v4 <= 49)
  {
    byte_100103309[v3] = v4 + 1;
    sub_10000798C("warning: ", a1, va);
    if (byte_100103309[v3] == 50)
    {
      fsck_printf("Too many warnings of this type generated; suppressing subsequent ones.\n");
    }
  }
}

char *print_wrapped_crypto_state(unsigned __int16 *a1)
{
  v2 = *(a1 + 2);
  if ((v2 & 0x1Fu) <= 0x1A)
  {
    v3 = v2 & 0x1F | 0x40;
  }

  else
  {
    v3 = 63;
  }

  if ((v2 & 0x1F) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 48;
  }

  fsck_printf_debug("vers: %u.%u flags: %#x class: %c os: ", *a1, a1[1], *(a1 + 1), v4);
  fsck_printf_debug("%d%d-%d", HIBYTE(*(a1 + 3)), (*(a1 + 3) << 8) >> 24, *(a1 + 3));
  return fsck_printf_debug(" revision: %u key len: %u", a1[8], a1[9]);
}

void print_jobj_key_val_info(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  if (a3 > 7)
  {
    v5 = a5;
    v7 = a3;
    v10 = *a2;
    if (a3 <= 0xB && (v10 & 0xF000000000000000) == 0xE000000000000000)
    {
      fsck_printf_debug("obj-id: %8lld type: ???\n");
    }

    else
    {
      v11 = v10 >> 60;
      if (v10 >> 60 == 14)
      {
        LODWORD(v11) = *(a2 + 8);
      }

      v19 = 0;
      v12 = v10 & 0xFFFFFFFFFFFFFFFLL;
      v13 = jobj_type_to_str(v11);
      fsck_printf_debug("obj-id: %8lld type: %-11s\n", v12, v13);
      if (jkey_validate_len(*(a1 + 40), a2, v7, &v19 + 1) || jval_validate_len(a2, a4, v5, &v19))
      {
        fsck_printf_err("key size (%u)/val size (%u) is invalid\n");
      }

      else if (HIDWORD(v19) <= v7)
      {
        if (v19 <= v5)
        {
          switch(v11)
          {
            case 1:
              fsck_printf_debug(" extentref_tree_oid: %lld sblock_oid: %lld change_time: %llu create_time: %llu\n", *a4, *(a4 + 1), *(a4 + 3), *(a4 + 2));
              fsck_printf_debug(" extentref_Tree_type: %u flags: %u name: '%.*s' name_len: %u\n");
              break;
            case 2:
              fsck_printf_debug("refcnt %d len %lld owning_obj_id %lld\n");
              break;
            case 3:
              fsck_printf_debug("private-id: %lld parent-id: %lld cr/mtime: %lld/%lld \n", *(a4 + 1), *a4, *(a4 + 2), *(a4 + 3));
              if ((a4[40] & 0xF000) == 0x4000)
              {
                fsck_printf_debug("gen-count: %u nchildren: %d \n");
              }

              else if (*(a4 + 14) >= 2)
              {
                fsck_printf_debug("nlink: %d \n");
              }

              fsck_printf_debug("def-prot-class: %d \n", *(a4 + 15));
              if (a4[41])
              {
                fsck_printf_debug("pad1: 0x%x \n", a4[41]);
              }

              if (*(a4 + 42))
              {
                fsck_printf_debug("uncompressed-size: 0x%llx \n", *(a4 + 42));
              }

              fsck_printf_debug("uid/gid/mode: %d/%d/0x%x bsd_flags: 0x%x internal_flags: 0x%llx name: %s\n");
              break;
            case 4:
              v15 = a4[1];
              v16 = v5 - 4;
              if (v16 >= v15)
              {
                LODWORD(v16) = a4[1];
              }

              fsck_printf_debug("flags: 0x%x data-len: %d name: %.*s\n", *a4, v15, v16, a4 + 4);
              if (*a4)
              {
                fsck_printf_debug(" out-of-line data size: %lld (under obj-id: %lld / crypto-id: %lld)\n");
              }

              else
              {
                fsck_printf_debug(" embedded data size: %d\n");
              }

              break;
            case 5:
              fsck_printf_debug("sib-id: %lld parent-id: %lld name: %.*s\n");
              break;
            case 6:
              fsck_printf_debug("refcnt %d\n");
              break;
            case 7:
              v17 = *(a4 + 2);
              v18 = *(a4 + 5);
              fsck_printf_debug("refcnt: %d \n", *a4);
              print_wrapped_crypto_state(&v17);
              break;
            case 8:
              fsck_printf_debug("logical addr: %lld  phys-block-num: %lld  crypto-id: %lld  len: %lld  flags: %x\n");
              break;
            case 9:
              if ((*(*(a1 + 40) + 56) & 9) != 0)
              {
                fsck_printf_debug("file-id: %6lld flags: %d date-added: %lld hash: 0x%x name-len: %d name: %.*s\n");
              }

              else
              {
                fsck_printf_debug("file-id: %6lld flags: %d date-added: %lld name-len: %d name: %.*s\n");
              }

              break;
            case 10:
              fsck_printf_debug("num children: %lld total size: %lld gen-count: %lld\n", *a4, *(a4 + 1), *(a4 + 3));
              if (*(a4 + 2))
              {
                fsck_printf_debug(" chained-key: %lld\n");
              }

              break;
            case 11:
              fsck_printf_debug(" name: '%.*s' name_len: %u snap_xid: %lld\n");
              break;
            case 12:
              fsck_printf_debug("sib-map: %lld\n");
              break;
            case 13:
              v14 = HIBYTE(a2[1]);
              if (v14 == 2)
              {
                fsck_printf_debug(" type: %u hash: 0x%llx total_count: %llu physical_size: %llu flags: 0x%x\n");
              }

              else if (v14 == 1)
              {
                fsck_printf_debug(" type: %u logical addr: %lld\n");
              }

              else
              {
                fsck_printf_debug(" type: %u\n");
              }

              break;
            case 16:
              fsck_printf_debug(" atime: %llu file_id: %llu file_size: %llu dstream_id: %llu flags: 0x%x owning_uid: %u\n");
              break;
            case 17:
              fsck_printf_debug(" file_id: %llu dstream_id: %llu\n");
              break;
            case 18:
              fsck_printf_debug(" descendants: %llu phys_size: %llu resource_fork_size: %llu gen_count: %llu chained_key: %llu flags: 0x%x\n");
              break;
            case 19:
              fsck_printf_debug(" private_id: %llu, file_id: %llu\n");
              break;
            default:
              return;
          }
        }

        else
        {
          fsck_printf_err("val size is too small, actual: %u, minimum: %u\n");
        }
      }

      else
      {
        fsck_printf_err("key size is too small, actual: %u, minimum: %u\n");
      }
    }
  }

  else
  {

    fsck_printf_debug("obj-id: ??? type: ???\n", a2);
  }
}

uint64_t authapfs_get_hash_info(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 4u)
  {
    if (a1 > 6u)
    {
      if (a1 == 7)
      {
        return ccsha3_384_di();
      }

      if (a1 == 8)
      {
        return ccsha3_512_di();
      }

      return result;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return ccsha3_256_di();
      }

      return result;
    }

    return ccsha512_256_di();
  }

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return ccsha384_di();
    }

    if (a1 == 4)
    {
      return ccsha512_di();
    }

    return result;
  }

  if (a1 == 1)
  {
    return ccsha256_di();
  }

  if (a1 == 2)
  {
    return ccsha512_256_di();
  }

  return result;
}

uint64_t authapfs_digest(unint64_t *a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = a2;
  if (a2 && a2 < a3)
  {
    v11 = *a1;
    if (*a1 >= 0x41)
    {
      sub_1000A3D50();
    }

    v19 = &v19;
    __chkstk_darwin(a1);
    bzero(&v19 - ((2 * v11 + 15) & 0xFFFFFFFFFFFFFFF0), 2 * v11);
    __chkstk_darwin(v12);
    v14 = &v19 - v13;
    bzero(&v19 - v13, v15);
    ccdigest_init();
    v16 = 2 * (a2 & 0x7FFFFFFF);
    if (v16 > v7)
    {
      goto LABEL_18;
    }

    do
    {
      ccdigest_parallel();
      ccdigest_update();
      v7 -= v16;
      a4 += v16;
    }

    while (v7 >= v16);
    if (v7)
    {
LABEL_18:
      do
      {
        if (v7 >= v10)
        {
          v17 = v10;
        }

        else
        {
          v17 = v7;
        }

        ccdigest();
        ccdigest_update();
        a4 += v17;
        v7 -= v17;
      }

      while (v7);
    }

    (a1[7])(a1, v14, a5);
    return cc_clear();
  }

  else
  {

    return ccdigest();
  }
}

uint64_t graft_blockmap_lut_tree_key_compare(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, int *a6)
{
  v6 = *a2 & 0x7FFFFFFF;
  v7 = *a4 & 0x7FFFFFFF;
  v8 = v6 >= v7;
  v9 = v6 > v7;
  if (!v8)
  {
    v9 = -1;
  }

  *a6 = v9;
  return 0;
}

unint64_t sub_1000085D0(uint32x4_t *a1, unint64_t a2, unint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = a3;
  v6 = HIDWORD(a3);
  if ((a2 & 3) == 0)
  {
    for (i = a2 >> 2; i; v6 = v34 + HIDWORD(v34))
    {
      if (i >= 0x16A00)
      {
        v8 = 92672;
      }

      else
      {
        v8 = i;
      }

      i -= v8;
      v9 = veorq_s8(a4, a4);
      v10 = veorq_s8(a5, a5);
      v9.i64[0] = v5;
      v10.i64[0] = v6;
      if (v8 >= 16)
      {
        v11 = *a1;
        v12 = a1[1];
        v13 = a1[2];
        v14 = a1[3];
        a1 += 4;
        v15 = vshlq_n_s64(v9, 4uLL);
        v16 = vmull_u32(*v12.i8, 0xB0000000CLL);
        v17 = vmull_u32(*v13.i8, 0x700000008);
        v18 = vmlal_u32(vmlal_u32(v10, *v11.i8, 0xF00000010), *v14.i8, 0x300000004);
        v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v9, v11), v12), v13);
        v20 = v8 < 32;
        for (v8 -= 32; !v20; v8 -= 16)
        {
          v21 = vmlal_high_u32(v16, v11, *qword_100008590);
          v22 = *a1;
          a1 += 4;
          v11 = v22;
          v23 = vmlal_high_u32(v17, v12, *&qword_100008590[2]);
          v12 = a1[-3];
          v24 = vpadalq_u32(v19, v14);
          v25 = vmlal_high_u32(vaddq_s64(v18, v15), v13, *&qword_100008590[4]);
          v13 = a1[-2];
          v26 = vmlal_high_u32(v21, v14, *&qword_100008590[6]);
          v14 = a1[-1];
          v15 = vshlq_n_s64(v24, 4uLL);
          v16 = vmlal_u32(v26, *v12.i8, 0xB0000000CLL);
          v17 = vmlal_u32(v23, *v13.i8, 0x700000008);
          v18 = vmlal_u32(vmlal_u32(v25, *v22.i8, 0xF00000010), *v14.i8, 0x300000004);
          v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v24, v22), v12), v13);
          v20 = v8 < 16;
        }

        v9 = vpadalq_u32(v19, v14);
        v10 = vaddq_s64(vaddq_s64(vmlal_high_u32(vaddq_s64(v18, v15), v13, *&qword_100008590[4]), vmlal_high_u32(v17, v12, *&qword_100008590[2])), vmlal_high_u32(vmlal_high_u32(v16, v11, *qword_100008590), v14, *&qword_100008590[6]));
      }

      if ((v8 & 8) != 0)
      {
        v27 = *a1;
        a1 += 2;
        v28 = a1[-1];
        v29 = vshlq_n_s64(v9, 3uLL);
        v9 = vpadalq_u32(vpadalq_u32(v9, v27), v28);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_high_u32(vmlal_u32(vmlal_u32(v10, *v27.i8, 0x700000008), *v28.i8, 0x300000004), v27, *&qword_100008590[4]), v28, *&qword_100008590[6]), v29);
      }

      if ((v8 & 4) != 0)
      {
        v30 = *a1++;
        v31 = vshlq_n_s64(v9, 2uLL);
        v9 = vpadalq_u32(v9, v30);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_u32(v10, *v30.i8, 0x300000004), v30, *&qword_100008590[6]), v31);
      }

      v32 = v8 & 3;
      a4 = vpaddq_s64(v9, v9);
      a5 = vpaddq_s64(v10, v10);
      v33 = a4.i64[0];
      v34 = a5.i64[0];
      if (v32)
      {
        do
        {
          v35 = a1->i32[0];
          a1 = (a1 + 4);
          v33 += v35;
          v34 += v33;
          v20 = v32-- <= 1;
        }

        while (!v20);
      }

      v5 = v33 + HIDWORD(v33);
    }
  }

  v36 = v5 + HIDWORD(v5);
  v37 = v6 + HIDWORD(v6);
  if (v36 == 0xFFFFFFFF)
  {
    v36 = 0;
  }

  if (v37 == 0xFFFFFFFF)
  {
    v37 = 0;
  }

  return v36 + (v37 << 32);
}

uint64_t gbitmap_key_compare(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t sub_1000087AC(void *a1)
{
  v1 = a1[7];
  a1[47] = v1;
  a1[48] = v1 + 32;
  return 0;
}

uint64_t sub_1000087C0(void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 22;
  }

  result = 0;
  v5 = *a3;
  a1[4] = a3[2];
  a1[5] = v5;
  a1[6] = 0;
  return result;
}

uint64_t sub_1000087E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 376) = *(a1 + 56);
  *(a1 + 408) = 8 * *(a1 + 48) - 256;
  if (a2)
  {
    *(a1 + 384) = *(a2 + 24);
  }

  return 0;
}

uint64_t sub_100008814(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  v8 = a1[1];
  v9 = *(*a1 + 392);
  if (v8)
  {
    v10 = a1[1];
  }

  else
  {
    v10 = *(*a1 + 392);
  }

  v36 = a1[2];
  v41 = 0;
  if (v8)
  {
    v11 = obj_modify(v8, 0, a5);
    if (v11)
    {
      v12 = v11;
      if (obj_type(v8) == 13)
      {
        v13 = (v8 + 506);
      }

      else
      {
        v13 = (v8[48] + 212);
      }

      v14 = obj_oid(v8);
      log_err("%s:%d: %s obj_modify(fs %lld) failed: %d\n", "gbitmap_reap", 160, v13, v14, v12);
    }
  }

  v15 = sub_100008BA4(a1, 0, 0, &v41);
  if (v15)
  {
    v16 = v15;
    if (obj_type(v10) == 13)
    {
      v17 = (v10 + 4048);
    }

    else
    {
      v17 = (*(v10 + 384) + 212);
    }

    log_err("%s:%d: %s Can't get tree: %d\n", "gbitmap_reap", 166, v17, v16);
  }

  if (v41)
  {
    v18 = *a3;
    v39 = 0;
    v40 = v18;
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    bt_iterator_init(v37, v41, 0, 0, &v40, 8, 8, &v39, 8u);
    v20 = v19;
    v35 = (v10 + 4048);
    v21 = 1023;
    if (v19)
    {
LABEL_31:
      if (v20 != 2)
      {
        if (obj_type(v10) == 13)
        {
          log_err("%s:%d: %s Tree iteration threw %d at cursor %llu\n", "gbitmap_reap", 203, v35, v20, v40);
        }

        else
        {
          log_err("%s:%d: %s Tree iteration threw %d at cursor %llu\n", "gbitmap_reap", 203, (*(v10 + 384) + 212), v20, v40);
        }
      }
    }

    else
    {
      while (!bt_iterator_ended(v37))
      {
        if ((v36 & 0x40000000) != 0 && (v22 = v39, (v39 & 0x8000000000000000) != 0))
        {
          v39 &= ~0x8000000000000000;
          spaceman_free(v10, 64, v22 & 0x7FFFFFFFFFFFFFFFLL, 1, a5);
        }

        else
        {
          v23 = *(a1 + 4);
          if (v8)
          {
            v24 = obj_oid(v8);
          }

          else
          {
            v24 = 0;
          }

          v25 = *(v9 + 392);
          v26 = v23 & 0xD8000000 | 0x1B;
          v27 = obj_size_phys(a1);
          v28 = obj_delete_and_free_by_oid(v25, v26, v27, v24, v39, a5);
          if (v28)
          {
            v29 = v28;
            if (obj_type(v10) == 13)
            {
              log_err("%s:%d: %s deletion threw %d for cursor %llu, oid %llu, oflags 0x%x\n", "gbitmap_reap", 188, v35, v29, v40, v39, v26);
            }

            else
            {
              log_err("%s:%d: %s deletion threw %d for cursor %llu, oid %llu, oflags 0x%x\n", "gbitmap_reap", 188, (*(v10 + 384) + 212), v29, v40, v39, v26);
            }
          }
        }

        *a3 = v40 + 1;
        if (!v21)
        {
          v30 = 36;
          goto LABEL_41;
        }

        v20 = bt_iterator_next(v37);
        --v21;
        if (v20)
        {
          goto LABEL_31;
        }
      }
    }

    v31 = btree_delete(v41, a5, 0);
    if (v31)
    {
      v32 = v31;
      if (obj_type(v10) != 13)
      {
        v35 = (*(v10 + 384) + 212);
      }

      v33 = obj_oid(v41);
      log_err("%s:%d: %s Tree delete oid %llu threw %d\n", "gbitmap_reap", 208, v35, v33, v32);
    }
  }

  obj_delete_and_free(a1, a5);
  v30 = 0;
LABEL_41:
  if (v41)
  {
    obj_release(v41);
  }

  return v30;
}

uint64_t sub_100008BA4(void *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (a1[1])
  {
    v8 = a1[1];
  }

  else
  {
    v8 = *(*a1 + 392);
  }

  *a4 = 0;
  v9 = obj_flags(a1);
  return btree_get(v8, v9 & 0xFFFFFC00, *(a1[47] + 32), a2, 3, a3 != 0, 26, gbitmap_key_compare, a3, a4);
}

uint64_t apfs_clonegroup_key_cmp(int a1, void *__s1, size_t __n, void *__s2, unsigned int a5, int *a6)
{
  result = 22;
  if (__n >= 9 && a5 >= 9)
  {
    if (*__s1 < *__s2)
    {
LABEL_4:
      v8 = -1;
LABEL_7:
      result = 0;
      *a6 = v8;
      return result;
    }

    if (*__s1 > *__s2)
    {
      goto LABEL_6;
    }

    v9 = *(__s1 + 8);
    v10 = *(__s2 + 8);
    if (v9 < v10)
    {
      goto LABEL_4;
    }

    if (v9 > v10)
    {
LABEL_6:
      v8 = 1;
      goto LABEL_7;
    }

    if (v9 == 2)
    {
      result = 22;
      if (__n == 17 && a5 == 17)
      {
        v15 = *(__s1 + 9);
        v16 = *(__s2 + 9);
        v17 = v15 >= v16;
        v8 = v15 > v16;
        if (!v17)
        {
          v8 = -1;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (v9 != 1)
      {
        if (__n != a5)
        {
          return 22;
        }

        v8 = memcmp(__s1, __s2, __n);
        goto LABEL_7;
      }

      result = 22;
      if (__n == 25 && a5 == 25)
      {
        v11 = *(__s1 + 9);
        v12 = *(__s2 + 9);
        if (v11 < v12)
        {
          goto LABEL_4;
        }

        if (v11 <= v12)
        {
          v13 = *(__s1 + 17);
          v14 = *(__s2 + 17);
          if (v13 >= v14)
          {
            v8 = v13 > v14;
            goto LABEL_7;
          }

          goto LABEL_4;
        }

        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t pfkur_tree_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

unint64_t fletcher64_set_cksum(unint64_t *a1, uint32x4_t *a2, unint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6)
{
  result = sub_1000085D0(a2, a3, a4, a5, a6);
  v8 = (HIDWORD(result) + result - 0xFFFFFFFF * ((((HIDWORD(result) + result) * 0x200000003uLL) >> 64) >> 1)) ^ 0xFFFFFFFF;
  *a1 = v8 | (~(v8 + result + ((((v8 + result) * 0x200000003uLL) >> 64) >> 1)) << 32);
  return result;
}

unint64_t fletcher64_verify_cksum(void *a1, uint32x4_t *a2, unint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6)
{
  v7 = sub_1000085D0(a2, a3, a4, a5, a6);
  v8 = (HIDWORD(v7) + v7 - 0xFFFFFFFF * ((((HIDWORD(v7) + v7) * 0x200000003uLL) >> 64) >> 1)) ^ 0xFFFFFFFF;
  return (v8 | (~(v8 + v7 + ((((v8 + v7) * 0x200000003uLL) >> 64) >> 1)) << 32)) ^ *a1;
}

uint64_t rolling_stats_init(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = new_lock(a1);
  if (!result)
  {
    v8.tv_sec = 0;
    v8.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v8);
    *(a1 + 64) = v8.tv_sec / a2 * a2;
    *(a1 + 72) = a2;
    *(a1 + 76) = a3;
    v7 = _apfs_calloc(a3, 8uLL);
    *(a1 + 80) = v7;
    if (v7)
    {
      result = 0;
      *(a1 + 88) = 0;
    }

    else
    {
      free_lock(a1);
      return 12;
    }
  }

  return result;
}

uint64_t rolling_stats_destroy(uint64_t a1)
{
  _apfs_free(*(a1 + 80), 8 * *(a1 + 76));
  *(a1 + 80) = 0;

  return free_lock(a1);
}

uint64_t nx_corruption_detected_int(uint64_t a1)
{
  if (a1)
  {
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(a1);
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s Container corruption detected by %s:%u!\n");
  }

  else
  {
    v2 = nx_is_panic_on_corruption_enabled(0);
    log_corrupt(v2, "%s:%d: Container corruption detected by %s:%u!\n");
  }

  return 92;
}

unint64_t obj_checksum_verify_phys(void *a1, int a2, int8x16_t a3, int8x16_t a4)
{
  result = fletcher64_verify_cksum(a1, (a1 + 1), (a2 - 8), 0, a3, a4);
  if (result)
  {
    log_err("%s:%d: failed: cksum 0x%016llx, oid 0x%llx, type 0x%x/0x%x, size %d\n", "obj_checksum_verify_phys", 52, *a1, a1[1], *(a1 + 6), *(a1 + 7), a2);
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(0);
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: Container corruption detected by %s:%u!\n", "nx_corruption_detected_int", 39, "obj_checksum_verify_phys", 54);
    return 92;
  }

  return result;
}

uint64_t nx_superblock_sanity_check_extent(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v5 = (a2 + 48);
  if (!a2)
  {
    v5 = (a1 + 40);
  }

  v6 = *v5;
  if ((a5 ^ 1u) > a3 || v6 - 1 < a3)
  {
    return 22;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (v6 - a3 >= a4)
  {
    return 0;
  }

  return 22;
}

unint64_t nx_check_superblock(uint64_t a1, unsigned int a2, int a3, int8x16_t a4, int8x16_t a5)
{
  if (a2 < 0x1000)
  {
    return 22;
  }

  if (*(a1 + 32) != 1112758350)
  {
    return 79;
  }

  if (a3 || (v8 = *(a1 + 36), v8 == a2))
  {
    result = obj_checksum_verify_phys(a1, a2, a4, a5);
    if (result)
    {
      return result;
    }

    v8 = *(a1 + 36);
  }

  v9 = *(a1 + 24);
  v10 = v9 != -2147483647;
  if (v9 == -2147483647)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (*(a1 + 28))
  {
    v10 = v11;
  }

  if (*(a1 + 8) != 1)
  {
    ++v10;
  }

  if (v8 < 0x1000)
  {
    ++v10;
  }

  if (v8 <= 0x10000)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (*(a1 + 88) < 0x400uLL)
  {
    ++v12;
  }

  v13 = *(a1 + 104);
  if ((v13 & 0x7FFFFFF8) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  v15 = v13 & 0x7FFFFFFF;
  v16 = *(a1 + 40);
  if ((v13 & 0x7FFFFFFF) > 0x1000)
  {
    ++v14;
  }

  if (v16 <= v15)
  {
    ++v14;
  }

  v17 = *(a1 + 112);
  v18 = v16 - 1;
  v20 = v17 < 1 || v18 < v17;
  if ((v13 & 0x80000000) != 0)
  {
    v14 += v20;
  }

  else if ((v20 & 1) != 0 || v13 >= 2 && v16 - v17 < v13)
  {
    ++v14;
  }

  if (*(a1 + 128) >= v15)
  {
    ++v14;
  }

  v21 = *(a1 + 108);
  if ((v21 & 0x7FFFFFF8) != 0)
  {
    v22 = v14;
  }

  else
  {
    v22 = v14 + 1;
  }

  v23 = v21 & 0x7FFFFFFF;
  if (v16 > (v21 & 0x7FFFFFFF))
  {
    v24 = v22;
  }

  else
  {
    v24 = v22 + 1;
  }

  v25 = *(a1 + 120);
  v27 = v25 < 1 || v18 < v25;
  if ((v21 & 0x80000000) != 0)
  {
    v24 += v27;
    LODWORD(v21) = 1;
  }

  else if ((v27 & 1) != 0 || v21 >= 2 && v16 - v25 < v21)
  {
    ++v24;
  }

  if (*(a1 + 132) < v23)
  {
    v28 = v24;
  }

  else
  {
    v28 = v24 + 1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    LODWORD(v13) = 1;
  }

  if (v17 >= v25)
  {
    v13 = v21;
  }

  else
  {
    v13 = v13;
  }

  if (v17 >= v25)
  {
    v29 = *(a1 + 120);
  }

  else
  {
    v29 = *(a1 + 112);
  }

  if (v17 <= v25)
  {
    v17 = *(a1 + 120);
  }

  if ((v29 + v13) <= v17)
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 + 1;
  }

  if ((*(a1 + 64) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (v30)
    {
      v31 = 193;
LABEL_106:
      is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(0);
      log_corrupt(is_panic_on_corruption_enabled, "%s:%d: Container corruption detected by %s:%u!\n", "nx_corruption_detected_int", 39, "nx_check_superblock", v31);
      return 92;
    }

    return 0;
  }

  v32 = *(a1 + 140);
  if (!*(a1 + 152))
  {
    ++v30;
  }

  if (!*(a1 + 160))
  {
    ++v30;
  }

  if (!(a3 | v32))
  {
    if (!*(a1 + 148) && !*(a1 + 136) && !*(a1 + 144))
    {
      goto LABEL_104;
    }

    v32 = 0;
  }

  if (*(a1 + 136) >= v15)
  {
    ++v30;
  }

  v33 = *(a1 + 148);
  if (*(a1 + 144) >= v23)
  {
    ++v30;
  }

  if (v32 < 2)
  {
    ++v30;
  }

  if (v32 < v15)
  {
    v34 = v30;
  }

  else
  {
    v34 = v30 + 1;
  }

  if (v33 < 2)
  {
    ++v34;
  }

  if (v33 < v23)
  {
    v30 = v34;
  }

  else
  {
    v30 = v34 + 1;
  }

LABEL_104:
  if (v30 | (*(a1 + 180) > 0x64u))
  {
    v31 = 226;
    goto LABEL_106;
  }

  return 0;
}

uint64_t supplemental_tree_create(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t *a5)
{
  v15 = 0;
  v9 = fext_tree_key_cmp;
  if (a3 == 5)
  {
    v10 = 0x20000001FLL;
    v12 = 16;
    v11 = 16;
  }

  else
  {
    if (a3 != 6)
    {
      log_err("%s:%d: %s unsupported tree type: %d\n", "supplemental_tree_get_descriptor", 64, (a1 + 4048), a3);
      return 45;
    }

    v10 = 32;
    v9 = pfkur_tree_key_cmp;
    v11 = 24;
    v12 = 8;
  }

  v16[1] = 0;
  v17 = 0u;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16[0] = v9;
  v16[2] = v10;
  if (a2 != 2)
  {
    extended = 22;
    goto LABEL_9;
  }

  extended = btree_create_extended(a1, a2 & 0xFFFF0000, 0, v12, v11, v16, a4, &v15);
  if (extended)
  {
LABEL_9:
    log_err("%s:%d: %s Failed to create supplemental tree (type %d): %d\n", "supplemental_tree_create", 123, (a1 + 4048), a3, extended);
    return extended;
  }

  *a5 = obj_oid(v15);
  obj_release(v15);
  return extended;
}

uint64_t supplemental_tree_destroy(uint64_t a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6, __n128 a7)
{
  v10 = a3;
  v12 = fext_tree_key_cmp;
  if (a3 == 5)
  {
    v13 = 0x20000001FLL;
  }

  else
  {
    if (a3 != 6)
    {
      log_err("%s:%d: %s unsupported tree type: %d\n", "supplemental_tree_get_descriptor", 64, (a1 + 4048), a3);
      return 45;
    }

    v13 = 32;
    v12 = pfkur_tree_key_cmp;
  }

  v19 = 0;
  if (!a5)
  {
    tree = jfs_get_tree(a1, a3, a4, &v19);
    if (tree)
    {
      return tree;
    }

    goto LABEL_11;
  }

  v20[1] = 0;
  v21 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20[0] = v12;
  v20[2] = v13;
  if (a2 != 2)
  {
    tree = 22;
    goto LABEL_15;
  }

  tree = btree_get_extended(a1, a2 & 0xFFFF0000, a5, 0, 0, v20, 0, &v19);
  if (tree)
  {
LABEL_15:
    v17 = strerror(tree);
    log_err("%s:%d: %s Failed to get supplemental tree (type %d, oid %llu): %d (%s)\n", "supplemental_tree_destroy", 159, (a1 + 4048), v10, a5, tree, v17);
    return tree;
  }

LABEL_11:
  v15 = btree_delete(v19, a4, a6);
  tree = v15;
  if (v15)
  {
    v16 = strerror(v15);
    log_err("%s:%d: %s Failed to delete supplemental tree (type %d): %d (%s)\n", "supplemental_tree_destroy", 167, (a1 + 4048), v10, tree, v16);
  }

  obj_release(v19);
  return tree;
}

unint64_t parse_size(char *a1)
{
  __endptr = 0;
  result = strtoull(a1, &__endptr, 10);
  v3 = __endptr;
  v4 = *__endptr;
  if (v4 > 0x66)
  {
    if (*__endptr <= 0x6Cu)
    {
      if (v4 != 103)
      {
        if (v4 != 107)
        {
          goto LABEL_19;
        }

LABEL_9:
        result <<= 10;
LABEL_18:
        v3 = __endptr + 1;
        goto LABEL_19;
      }

LABEL_16:
      result <<= 30;
      goto LABEL_18;
    }

    if (v4 != 109)
    {
      if (v4 != 116)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_17:
    result <<= 20;
    goto LABEL_18;
  }

  if (*__endptr <= 0x4Cu)
  {
    if (v4 != 71)
    {
      if (v4 != 75)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (v4 == 77)
  {
    goto LABEL_17;
  }

  if (v4 == 84)
  {
LABEL_15:
    result <<= 40;
    goto LABEL_18;
  }

LABEL_19:
  if (v3 == a1)
  {
    return -1;
  }

  if (*v3)
  {
    return -1;
  }

  return result;
}

char *parse_nx_format_options(char *__s1, uuid_t out)
{
  v3 = __s1;
  if (!__s1)
  {
    *(out + 4) = 0;
    *out = 0u;
    *(out + 1) = 0u;
    uuid_generate(out);
    *(out + 5) = 1073741826;
    return v3;
  }

  v4 = strdup(__s1);
  if (v4)
  {
    v5 = v4;
    __lasts = 0;
    v6 = strtok_r(v4, ",", &__lasts);
    if (!v6)
    {
LABEL_24:
      v3 = 0;
      goto LABEL_27;
    }

    v7 = v6;
    while (1)
    {
      if (!strncasecmp(v7, "blocksize=", 0xAuLL))
      {
        v10 = parse_size(v7 + 10);
        if (v10 - 65537 < 0xFFFFFFFFFFFF0FFFLL || ((v10 + 0x1FFFF) & v10) != 0)
        {
LABEL_26:
          v3 += v7 - v5;
LABEL_27:
          free(v5);
          return v3;
        }

        *(out + 4) = v10;
      }

      else
      {
        if (!strcasecmp(v7, "omap=btree") || !strcasecmp(v7, "omap=physical"))
        {
          v9 = 1073741826;
LABEL_15:
          *(out + 5) = v9;
          goto LABEL_23;
        }

        if (!strcasecmp(v7, "omap=ephemeral"))
        {
          v9 = -2147483646;
          goto LABEL_15;
        }

        if (!strcasecmp(v7, "defragment=yes"))
        {
          v11 = *(out + 12) & 0xFFFC | 2;
LABEL_22:
          *(out + 12) = v11;
          goto LABEL_23;
        }

        if (!strcasecmp(v7, "defragment=no"))
        {
          v11 = *(out + 12) & 0xFFFC | 1;
          goto LABEL_22;
        }

        if (strncasecmp(v7, "maxfs=", 6uLL))
        {
          goto LABEL_26;
        }

        v8 = parse_size(v7 + 6);
        if (v8 >= 0x65)
        {
          goto LABEL_26;
        }

        out[26] = v8;
      }

LABEL_23:
      v7 = strtok_r(0, ",", &__lasts);
      if (!v7)
      {
        goto LABEL_24;
      }
    }
  }

  return v3;
}

char *parse_apfs_format_options(char *a1, uuid_t out)
{
  v3 = a1;
  if (!a1)
  {
    *(out + 29) = 0u;
    *(out + 30) = 0u;
    *(out + 27) = 0u;
    *(out + 28) = 0u;
    *(out + 25) = 0u;
    *(out + 26) = 0u;
    *(out + 23) = 0u;
    *(out + 24) = 0u;
    *(out + 21) = 0u;
    *(out + 22) = 0u;
    *(out + 19) = 0u;
    *(out + 20) = 0u;
    *(out + 17) = 0u;
    *(out + 18) = 0u;
    *(out + 15) = 0u;
    *(out + 16) = 0u;
    *(out + 13) = 0u;
    *(out + 14) = 0u;
    *(out + 11) = 0u;
    *(out + 12) = 0u;
    *(out + 9) = 0u;
    *(out + 10) = 0u;
    *(out + 7) = 0u;
    *(out + 8) = 0u;
    *(out + 5) = 0u;
    *(out + 6) = 0u;
    *(out + 3) = 0u;
    *(out + 4) = 0u;
    *(out + 1) = 0u;
    *(out + 2) = 0u;
    *out = 0u;
    uuid_generate(out);
    *(out + 2) = xmmword_1000AADB0;
    *(out + 123) = 1073741826;
    *(out + 12) = -1;
    *(out + 111) = getuid();
    *(out + 112) = getgid();
    *(out + 26) &= ~0x80u;
    __strlcpy_chk();
    *(out + 26) = *(out + 26) & 0xFBF3 | 8;
    return v3;
  }

  if (!strncasecmp(a1, "uuid_from_role", 0xEuLL))
  {
    v21 = *(out + 27);
    if (v21 <= 0xBF)
    {
      if (*(out + 27) <= 7u)
      {
        if (*(out + 27) <= 1u)
        {
          if (*(out + 27))
          {
            v22 = "61706673-7575-6964-0001-766f6c756d00";
          }

          else
          {
            v22 = "61706673-7575-6964-0000-766f6c756d00";
          }

          goto LABEL_121;
        }

        if (v21 == 2)
        {
          v22 = "61706673-7575-6964-0002-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 4)
        {
          v22 = "61706673-7575-6964-0004-766f6c756d00";
          goto LABEL_121;
        }
      }

      else if (*(out + 27) <= 0x1Fu)
      {
        if (v21 == 8)
        {
          v22 = "61706673-7575-6964-0008-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 16)
        {
          v22 = "61706673-7575-6964-0010-766f6c756d00";
          goto LABEL_121;
        }
      }

      else
      {
        switch(v21)
        {
          case 0x20u:
            v22 = "61706673-7575-6964-0020-766f6c756d00";
            goto LABEL_121;
          case 0x40u:
            v22 = "61706673-7575-6964-0040-766f6c756d00";
            goto LABEL_121;
          case 0x80u:
            v22 = "61706673-7575-6964-0080-766f6c756d00";
            goto LABEL_121;
        }
      }
    }

    else if (*(out + 27) > 0x1FFu)
    {
      if (*(out + 27) <= 0x27Fu)
      {
        if (v21 == 512)
        {
          v22 = "61706673-7575-6964-0200-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 576)
        {
          v22 = "61706673-7575-6964-0240-766f6c756d00";
          goto LABEL_121;
        }
      }

      else
      {
        switch(v21)
        {
          case 0x280u:
            v22 = "61706673-7575-6964-0280-766f6c756d00";
            goto LABEL_121;
          case 0x2C0u:
            v22 = "61706673-7575-6964-02c0-766f6c756d00";
            goto LABEL_121;
          case 0x300u:
            v22 = "61706673-7575-6964-0300-766f6c756d00";
            goto LABEL_121;
        }
      }
    }

    else if (*(out + 27) <= 0x13Fu)
    {
      if (v21 == 192)
      {
        v22 = "61706673-7575-6964-00c0-766f6c756d00";
        goto LABEL_121;
      }

      if (v21 == 256)
      {
        v22 = "61706673-7575-6964-0100-766f6c756d00";
        goto LABEL_121;
      }
    }

    else
    {
      switch(v21)
      {
        case 0x140u:
          v22 = "61706673-7575-6964-0140-766f6c756d00";
          goto LABEL_121;
        case 0x180u:
          v22 = "61706673-7575-6964-0180-766f6c756d00";
          goto LABEL_121;
        case 0x1C0u:
          v22 = "61706673-7575-6964-01c0-766f6c756d00";
LABEL_121:
          uuid_parse(v22, out);
          return 0;
      }
    }

    return strerror(22);
  }

  if (!strncasecmp(v3, "password=", 9uLL))
  {
    v3 += 9;
    __strlcpy_chk();
    v23 = strnlen(v3, 0x80uLL);
    *(out + 110) = v23;
    if ((v23 & 0xFFFFFF80) == 0)
    {
      return 0;
    }

    return v3;
  }

  if (!strncasecmp(v3, "empty_password", 0xFuLL))
  {
    v3 = 0;
    out[312] = 0;
    *(out + 110) = 0;
    return v3;
  }

  if (!strncasecmp(v3, "volname=", 8uLL))
  {
    __strlcpy_chk();
    return 0;
  }

  v4 = strdup(v3);
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  __lasts = 0;
  v6 = strtok_r(v4, ",", &__lasts);
  if (!v6)
  {
    v3 = 0;
    goto LABEL_109;
  }

  v7 = v6;
  v8 = "fsquota=";
  v9 = "fsindex=";
  while (1)
  {
    if (!strncasecmp(v7, "fssize=", 7uLL))
    {
      v11 = parse_size(v7 + 7);
      if (v11 == -1)
      {
        goto LABEL_108;
      }

      *(out + 2) = v11;
LABEL_36:
      *(out + 3) = v11;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, "fsreserve=", 0xAuLL))
    {
      v12 = parse_size(v7 + 10);
      if (v12 == -1)
      {
        goto LABEL_108;
      }

      *(out + 2) = v12;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, v8, 8uLL))
    {
      v11 = parse_size(v7 + 8);
      if (v11 == -1)
      {
        goto LABEL_108;
      }

      goto LABEL_36;
    }

    if (!strncasecmp(v7, v9, 8uLL))
    {
      break;
    }

    if (!strcasecmp(v7, "omap=btree") || !strcasecmp(v7, "omap=physical"))
    {
      v13 = 1073741826;
LABEL_40:
      *(out + 8) = v13;
      goto LABEL_37;
    }

    if (!strcasecmp(v7, "omap=ephemeral"))
    {
      v13 = -2147483646;
      goto LABEL_40;
    }

    if (!strcasecmp(v7, "fstree=btree"))
    {
      *(out + 36) = 0x4000000200000002;
      *(out + 11) = 1073741826;
      *(out + 123) = 1073741826;
      goto LABEL_37;
    }

    if (!strcasecmp(v7, "encrypted"))
    {
      v10 = *(out + 26) | 1;
LABEL_55:
      *(out + 26) = v10;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, "role=", 5uLL))
    {
      v17 = parse_str_to_role(v7 + 5);
      if (v17 == -1)
      {
        goto LABEL_108;
      }

      *(out + 27) = v17;
    }

    else
    {
      if (!strcasecmp(v7, "case=insensitive"))
      {
        v10 = *(out + 26) & 0xFFF3 | 4;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "case=sensitive"))
      {
        v10 = *(out + 26) & 0xFFF3 | 8;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "defragment=yes"))
      {
        v10 = *(out + 26) & 0xFFCF | 0x20;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "defragment=no"))
      {
        v10 = *(out + 26) & 0xFFCF | 0x10;
        goto LABEL_55;
      }

      if (!strncasecmp(v7, "uid=", 4uLL))
      {
        v14 = v8;
        v15 = v9;
        __endptr = 0;
        v18 = strtoull(v7 + 4, &__endptr, 10);
        if (__endptr == v7 + 4 || *__endptr || v18 == -1)
        {
          goto LABEL_108;
        }

        *(out + 111) = v18;
        goto LABEL_45;
      }

      if (!strncasecmp(v7, "gid=", 4uLL))
      {
        v14 = v8;
        v15 = v9;
        __endptr = 0;
        v19 = strtoull(v7 + 4, &__endptr, 10);
        if (__endptr == v7 + 4 || *__endptr || v19 == -1)
        {
          goto LABEL_108;
        }

        *(out + 112) = v19;
        goto LABEL_45;
      }

      if (!strcasecmp(v7, "sealed=yes"))
      {
        *(out + 26) |= 0x80u;
        *(out + 122) = 1;
        *(out + 9) = 2;
        goto LABEL_37;
      }

      if (!strcasecmp(v7, "conformance"))
      {
        goto LABEL_108;
      }

      if (strncasecmp(v7, "hash=", 5uLL))
      {
        if (!strcasecmp(v7, "unwritten"))
        {
          v10 = *(out + 26) | 0x400;
        }

        else
        {
          if (strcasecmp(v7, "unwritten=no"))
          {
            goto LABEL_108;
          }

          v10 = *(out + 26) & 0xFBFF;
        }

        goto LABEL_55;
      }

      v20 = sub_10000A1EC(v7 + 5);
      if (v20 == -1)
      {
        goto LABEL_108;
      }

      *(out + 122) = v20;
    }

LABEL_37:
    v7 = strtok_r(0, ",", &__lasts);
    if (!v7)
    {
      v3 = 0;
      goto LABEL_109;
    }
  }

  v14 = v8;
  v15 = v9;
  __endptr = 0;
  v16 = strtoull(v7 + 8, &__endptr, 10);
  if (__endptr != v7 + 8 && !*__endptr && v16 != -1)
  {
    *(out + 12) = v16;
LABEL_45:
    v9 = v15;
    v8 = v14;
    goto LABEL_37;
  }

LABEL_108:
  v3 += v7 - v5;
LABEL_109:
  free(v5);
  return v3;
}

uint64_t sub_10000A1EC(const char *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!strncasecmp(a1, "sha256", 7uLL))
  {
    return 1;
  }

  if (!strncasecmp(a1, "sha512_256", 0xBuLL))
  {
    return 5;
  }

  if (!strncasecmp(a1, "sha384", 7uLL))
  {
    return 3;
  }

  if (!strncasecmp(a1, "sha512", 7uLL))
  {
    return 4;
  }

  if (!strncmp(a1, "sha3_256_4k", 0xCuLL))
  {
    return 262;
  }

  if (!strncmp(a1, "sha3_384_4k", 0xCuLL))
  {
    return 263;
  }

  if (!strncmp(a1, "sha3_512_4k", 0xCuLL))
  {
    return 264;
  }

  if (!strncmp(a1, "sha3_256", 9uLL))
  {
    return 6;
  }

  if (!strncmp(a1, "sha3_384", 9uLL))
  {
    return 7;
  }

  if (!strncmp(a1, "sha3_512", 9uLL))
  {
    return 8;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000A35C(void *a1)
{
  v1 = a1[7];
  a1[47] = v1;
  a1[48] = v1 + 32;
  return 0;
}

uint64_t fs_lookup_snapshot_metadata_by_xid(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8[0] = 5242881;
  v8[1] = a2;
  v5 = lookup_jobj(a1, 3, 0, v8, a3);
  v6 = v5;
  if (v5)
  {
    log_err("%s:%d: %s Couldn't find snap_meta for xid %llu: %d\n", "fs_lookup_snapshot_metadata_by_xid", 445, (a1 + 4048), a2, v5);
  }

  return v6;
}

uint64_t fs_delete_clone_superblock(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 392) + 392);
  v7 = 0;
  v5 = obj_get(v4, 0x40000000uLL, a2, &apfs_desc, 0, 0, 0, 0, &v7);
  if (!v5)
  {
    obj_delete_and_free(v7, a3);
    obj_release(v7);
  }

  return v5;
}

uint64_t fs_delete_supplemental_tree(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v9 = *(*(a1 + 392) + 392);
  v17 = 0;
  result = obj_get(v9, 0x40000000uLL, a3, &apfs_desc, 0, 0, 0, a4, &v17);
  if (!result)
  {
    v11 = v17[47];
    if (a2 == 5)
    {
      v12 = 1040;
      v13 = 1032;
    }

    else
    {
      if (a2 != 6)
      {
        obj_release(v17);
        return 45;
      }

      v12 = 1044;
      v13 = 1048;
    }

    v14 = *(v11 + v12);
    v15 = *(v11 + v13);
    obj_release(v17);
    if (v15)
    {
      return supplemental_tree_destroy(a1, v14, a2, a4, v15, a5, v16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t fs_delete_snapshot_metadata_tree(uint64_t a1, unint64_t a2, void *a3, __n128 a4)
{
  v10 = 0;
  tree = jfs_get_tree(a1, 3, 0, &v10);
  if (tree)
  {
    return tree;
  }

  v8 = btree_delete(v10, a2, a3);
  obj_release(v10);
  if (!v8)
  {
    pthread_mutex_lock((a1 + 1480));
    *(*(a1 + 376) + 152) = 0;
    fs_sb_dirty(a1, a2);
    pthread_mutex_unlock((a1 + 1480));
  }

  return v8;
}

uint64_t get_timestamp()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return timespec_to_apfs_timestamp(&v1.tv_sec);
}

uint64_t timespec_to_apfs_timestamp(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 / 1000000000;
  v4 = v2 % 1000000000;
  if (*a1 < 0 && v2 >= 1)
  {
    v5 = v3 + 1;
    v4 -= 1000000000;
  }

  else
  {
    v6 = v2 >= 0;
    if (v2 < 0)
    {
      v5 = v3 - 1;
    }

    else
    {
      v5 = v2 / 1000000000;
    }

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4 + 1000000000;
    }

    if (v1 >= 1)
    {
      v4 = v7;
    }

    else
    {
      v5 = v3;
    }
  }

  v8 = v1 + v5;
  if (__OFADD__(v1, v5) || (v9 = 1000000000 * v8, (v8 * 1000000000) >> 64 != (1000000000 * v8) >> 63) || (result = v4 + v9, __OFADD__(v4, v9)))
  {
    if (v1 > 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return 0x8000000000000000;
    }
  }

  return result;
}

uint64_t spaceman_metazone_init(uint64_t a1, unint64_t a2)
{
  v26 = 0;
  if (*(a1 + 637) == 1)
  {
    log_debug("%s:%d: %s Skipping metazone_init() as backing store is sparse\n", "spaceman_metazone_init", 72, (*(a1 + 384) + 212));
    return 0;
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  v2 = spaceman_get(a1, &v26);
  if (v2)
  {
    return v2;
  }

  v4 = v26;
  if (!v26)
  {
    return 19;
  }

  if (!*(v26 + 376))
  {
    v2 = 19;
    goto LABEL_32;
  }

  if (*(v26 + 1112) & 1) != 0 || (*(v26 + 1216))
  {
    v2 = 0;
LABEL_32:
    obj_release(v4);
    return v2;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = v26;
    v9 = v26 + 104 * v5;
    *(v9 + 1112) = 0;
    *(v9 + 1016) = 0u;
    *(v9 + 1032) = 0u;
    *(v9 + 1048) = 0u;
    *(v9 + 1064) = 0u;
    *(v9 + 1080) = 0u;
    *(v9 + 1096) = 0u;
    v10 = *(v8 + 376);
    v11 = *(v10 + 32);
    v12 = *(v10 + 48 * v5 + 48);
    if (is_mul_ok(v12, v11))
    {
      v13 = v12 * v11;
    }

    else
    {
      v13 = 0x40000000000;
    }

    if (!spaceman_metazone_get_size(a2, v11, v12, v13, &v29, &v28))
    {
      v14 = v8 + 104 * v5;
      v15 = v28 + v29 / v11;
      spaceman_metazone_get_partitions(v11, v29, v28, v15, &v27, 0);
      v16 = v28;
      *(v14 + 1016) = v28;
      *(v14 + 1032) = v16;
      v17 = v27;
      *(v14 + 1024) = v27;
      *(v14 + 1042) = 1;
      *(v14 + 1048) = v17;
      *(v14 + 1064) = v27;
      *(v14 + 1056) = v15;
      *(v14 + 1074) = 1;
      *(v14 + 1113) = 1;
      v18 = v26;
      v19 = *(v26 + 1000 + 8 * v5);
      if (v19 < v15 && v19 >= v28)
      {
        if (v15 == v12)
        {
          v21 = 0;
        }

        else
        {
          v21 = v15;
        }

        *(v26 + 1000 + 8 * v5) = v21;
      }

      if (*(v18 + 8 * v5 + 1496))
      {
        v22 = *(*(v18 + 376) + 36);
        v23 = v28 / v22;
        v24 = (v15 - 1) / v22;
        if (v23 <= v24)
        {
          do
          {
            *(*(v26 + 8 * v5 + 1496) + 4 * v23++) |= 0x4000000u;
          }

          while (v23 <= v24);
          v18 = v26;
        }
      }

      *(v18 + 104 * v5 + 1112) = 1;
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v2 = 0;
  v4 = v26;
  if (v26)
  {
    goto LABEL_32;
  }

  return v2;
}

void spaceman_handle_metazone_freed(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 1112) == 1 && *(a2 + 1113) == 1)
  {
    if (*(a2 + 1016) <= a3 && *(a2 + 1024) > a3)
    {
      if (*(a2 + 1032) <= a3)
      {
        return;
      }

      v3 = (a2 + 1032);
      goto LABEL_15;
    }

    if (*(a2 + 1048) <= a3 && *(a2 + 1056) > a3)
    {
      if (*(a2 + 1064) <= a3)
      {
        return;
      }

      v3 = (a2 + 1064);
      goto LABEL_15;
    }

    if (*(a2 + 1080) <= a3 && *(a2 + 1088) > a3 && *(a2 + 1096) > a3)
    {
      v3 = (a2 + 1096);
LABEL_15:
      *v3 = a3;
    }
  }
}

uint64_t spaceman_update_metazone_alloc_index(uint64_t result, unsigned int a2, int a3, unint64_t a4)
{
  v4 = result + 104 * a2 + 1016;
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (result + 104 * a2 + 1080);
      v6 = 88;
      v7 = 80;
      v8 = 72;
    }

    else
    {
      if (a3 != 1)
      {
        return result;
      }

      v5 = (result + 104 * a2 + 1048);
      v6 = 56;
      v7 = 48;
      v8 = 40;
    }
  }

  else
  {
    v6 = 24;
    v7 = 16;
    v8 = 8;
    v5 = (result + 104 * a2 + 1016);
  }

  v9 = *v5;
  if (v9 <= a4 && *(v4 + v8) > a4)
  {
    *(v4 + v7) = a4;
LABEL_18:
    *(v4 + v6) = 0;
    return result;
  }

  if (*(v4 + v7) == v9)
  {
    *(v4 + v7) = a4;
    v10 = 1;
  }

  else
  {
    if (*(v4 + v6) < 0)
    {
      *(v4 + v7) = v9;
      goto LABEL_18;
    }

    v11 = *(v4 + v6);
    if (!v11)
    {
      *(v4 + v7) = v9;
      return result;
    }

    *(v4 + v7) = a4;
    v10 = v11 + 1;
  }

  *(v4 + v6) = v10;
  return result;
}

uint64_t spaceman_get_metazone_alloc_index(void *a1, unsigned int a2, int a3)
{
  if (a3 == 2)
  {
    v3 = &a1[13 * a2 + 137];
    if (BYTE2(a1[13 * a2 + 138]) != 1)
    {
      v3 = &a1[13 * a2 + 133];
    }
  }

  else if (a3 == 1)
  {
    v3 = &a1[13 * a2 + 133];
  }

  else if (a3)
  {
    v5 = a2;
    v6 = a1[1];
    if (v6)
    {
      v7 = (v6 + 4048);
    }

    else
    {
      v7 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s tried to get metazone alloc index for unknown type: %d\n", "spaceman_get_metazone_alloc_index", 348, v7, a3);
    v3 = &a1[v5 + 125];
  }

  else
  {
    v3 = &a1[13 * a2 + 129];
  }

  return *v3;
}

uint64_t spaceman_allocation_init(void *a1)
{
  v18 = 0;
  v2 = spaceman_get(a1, &v18);
  if (v2)
  {
    goto LABEL_17;
  }

  pthread_mutex_lock(v18 + 6);
  v3 = v18;
  v4 = *&v18[5].__opaque[48];
  if ((*(v4 + 144) & 1) == 0 || !*(v4 + 336))
  {
    v5 = *(v4 + 116);
    if (!v5)
    {
      v5 = *(v4 + 112);
    }

    v6 = (*(v4 + 128) + 8 * v5);
    v7 = *(v4 + 32);
    if (v6 + 2184 <= (v6 + v7 - 1) / v7 * v7)
    {
      memmove((v4 + 2520), (v4 + 336), v6 - 336);
      v10 = vadd_s32(*(v4 + 324), vdup_n_s32(0x888u));
      *(v4 + 324) = v10;
      v11 = (*(v4 + 332) + 2184);
      *(v4 + 332) = v11;
      v12 = (*(v4 + 80) + 2184);
      *(v4 + 80) = v12;
      v13 = (*(v4 + 128) + 2184);
      *&v3[13].__opaque[32] = v4 + v10.u32[0];
      *(v4 + 128) = v13;
      *&v3[13].__opaque[40] = v4 + v10.u32[1];
      *&v3[13].__opaque[48] = v4 + v11;
      v3[14].__sig = v4 + v12;
      *v3[14].__opaque = v4 + v13;
      *(v4 + 336) = 0x9D800000001;
      bzero((v4 + 344), 0x880uLL);
      *(v4 + 144) |= 1u;
    }

    else
    {
      v8 = *v18->__opaque;
      if (v8)
      {
        v9 = (v8 + 4048);
      }

      else
      {
        v9 = (*(*(v18->__sig + 392) + 384) + 212);
      }

      log_debug("%s:%d: %s refusing to upgrade spaceman! new_smp_size %u old_smp_size %u block_size %u\n", "spaceman_upgrade_sm_version_0_to_1", 398, v9, v6 + 2184, v6, v7);
      log_warn("%s:%d: %s failed to upgrade spaceman from version 0 to 1: %d\n", "spaceman_allocation_init", 456, (a1[48] + 212), 27);
    }
  }

  spaceman_free_queue_trim_list_init(a1, v18);
  v2 = spaceman_metazone_init(a1, 0);
  if (v2)
  {
LABEL_17:
    v16 = v2;
  }

  else
  {
    spaceman_sanitize_datazone(v18);
    v14 = 1;
    while (1)
    {
      v15 = spaceman_datazone_init(a1, v14);
      if (v15)
      {
        break;
      }

      if (++v14 == 5)
      {
        v2 = spaceman_free_extent_cache_setup(a1, v18);
        goto LABEL_17;
      }
    }

    v16 = v15;
    log_err("%s:%d: %s failed to initialize data zone for allocations of size %llu, error %d\n", "spaceman_allocation_init", 491, (a1[48] + 212), v14, v15);
  }

  if (v18)
  {
    pthread_mutex_unlock(v18 + 6);
    obj_release(v18);
  }

  return v16;
}

void spaceman_sanitize_datazone(void *result)
{
  if (result)
  {
    v2 = result[47];
    if (*(v2 + 144))
    {
      if (*(v2 + 336))
      {
        v3 = 0;
        v4 = v2 + 344;
        v25 = v2 + 368;
        v26 = v2 + 48;
        v5 = 1;
        do
        {
          v27 = v5;
          v6 = *(v26 + 48 * v3);
          if (v6)
          {
            v7 = 0;
            v8 = (v25 + 1088 * v3);
            do
            {
              v9 = v4 + 1088 * v3 + 136 * v7;
              if (*v9 >= v6 || ((v10 = *(v9 + 8), v10 <= v6) ? (v11 = *v9 > v10) : (v11 = 1), v11))
              {
                v12 = result[1];
                if (v12)
                {
                  v13 = (v12 + 4048);
                }

                else
                {
                  v13 = (*(*(*result + 392) + 384) + 212);
                }

                log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid current boundaries\n", "spaceman_sanitize_datazone", 676, v13, v7);
                v14 = 1;
              }

              else
              {
                v14 = 0;
              }

              v15 = 0;
              v16 = v8;
              while (1)
              {
                v17 = *(v16 - 1);
                if (v17 >= v6)
                {
                  break;
                }

                if (*v16 > v6 || v17 > *v16)
                {
                  break;
                }

                ++v15;
                v16 += 2;
                if (v15 == 7)
                {
                  if (*(v9 + 130) <= 6u)
                  {
                    if ((v14 & 1) == 0)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_35;
                  }

LABEL_31:
                  v21 = result[1];
                  if (v21)
                  {
                    v22 = (v21 + 4048);
                  }

                  else
                  {
                    v22 = (*(*(*result + 392) + 384) + 212);
                  }

                  log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary index\n", "spaceman_sanitize_datazone", 695, v22, v7);
                  goto LABEL_35;
                }
              }

              v19 = result[1];
              if (v19)
              {
                v20 = (v19 + 4048);
              }

              else
              {
                v20 = (*(*(*result + 392) + 384) + 212);
              }

              log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary %llu\n", "spaceman_sanitize_datazone", 686, v20, v7, v15);
              if (*(v9 + 130) >= 7u)
              {
                goto LABEL_31;
              }

LABEL_35:
              v23 = result[1];
              if (v23)
              {
                v24 = (v23 + 4048);
              }

              else
              {
                v24 = (*(*(*result + 392) + 384) + 212);
              }

              log_warn("%s:%d: %s Clearing persistent allocation zone at slot %llu\n", "spaceman_sanitize_datazone", 701, v24, v7);
              *(v9 + 128) = 0;
              *(v9 + 96) = 0u;
              *(v9 + 112) = 0u;
              *(v9 + 64) = 0u;
              *(v9 + 80) = 0u;
              *(v9 + 32) = 0u;
              *(v9 + 48) = 0u;
              *v9 = 0u;
              *(v9 + 16) = 0u;
LABEL_39:
              ++v7;
              v8 += 17;
            }

            while (v7 != 8);
          }

          v5 = 0;
          v3 = 1;
        }

        while ((v27 & 1) != 0);
      }
    }
  }
}

uint64_t spaceman_datazone_init(void *a1, uint64_t a2)
{
  v12 = 0;
  v4 = spaceman_get(a1, &v12);
  if (v4)
  {
    return v4;
  }

  if (!v12)
  {
    return 19;
  }

  v6 = v12[47];
  if (!v6)
  {
    v4 = 19;
    goto LABEL_15;
  }

  if ((a2 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    v4 = 22;
    goto LABEL_15;
  }

  v7 = &v12[4 * a2 - 4];
  if (v7[156])
  {
    goto LABEL_14;
  }

  v8 = *(v6 + 56);
  if (*(v12 + 1112) != 1 || v8 < 8)
  {
    goto LABEL_14;
  }

  v10 = v7 + 153;
  *(v12 + 1352) = 1;
  *(v7 + 153) = 0u;
  *(v7 + 155) = 0u;
  v11 = spaceman_initialize_allocation_zone_from_disk(v12, 0, a2);
  if (v11)
  {
    v4 = v11;
    log_err("%s:%d: %s failed to initialize allocation zone for allocations of %llu blocks from disk: error %d\n", "spaceman_datazone_init", 600, (a1[48] + 212), a2, v11);
  }

  else
  {
    if (*(v10 + 25))
    {
LABEL_14:
      v4 = 0;
      goto LABEL_15;
    }

    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_datazone_init", 611, (a1[48] + 212), 0, a2, *v10);
    v4 = 0;
    *(v10 + 24) = 1;
  }

LABEL_15:
  if (v12)
  {
    obj_release(v12);
  }

  return v4;
}

uint64_t spaceman_initialize_allocation_zone_from_disk(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = 22;
  if (a1 && (a3 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = a3 - 1;
    v7 = &a1[17 * a2 + 149 + 4 * a3];
    v8 = a1[47];
    if ((*(v8 + 144) & 1) != 0 && *(v8 + 336))
    {
      v9 = v8 + 344;
      v10 = a3;
      v11 = -1;
      LOBYTE(v12) = 1;
      v13 = 8;
      v14 = v6;
      do
      {
        v15 = v14 & 7;
        v16 = *(v8 + 344 + 1088 * a2 + 136 * v15 + 128);
        if (v16 == v10)
        {
          v19 = (v9 + 1088 * a2 + 136 * v15);
          v7[2] = v19;
          v20 = sub_10000B384(a1, a2, v6, *v19 / *(v8 + 36));
          v3 = v20;
          if (v20)
          {
            v21 = a1[1];
            if (v21)
            {
              v22 = (v21 + 4048);
            }

            else
            {
              v22 = (*(*(*a1 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s failed to update allocation zone boundaries: error %d\n", "spaceman_initialize_allocation_zone_from_disk", 965, v22, v20);
          }

          return v3;
        }

        v17 = v11 == -1 && v16 == 0;
        v12 = (v16 != 0) & v12;
        if (v17)
        {
          v11 = v15;
        }

        v14 = v15 + 1;
        --v13;
      }

      while (v13);
      if (v12)
      {
        goto LABEL_14;
      }

      v3 = 0;
      v7[2] = v9 + 1088 * a2 + 136 * v11;
      *(v7 + 25) = 1;
    }

    else
    {
LABEL_14:
      v3 = 0;
      *(v7 + 25) = 257;
    }
  }

  return v3;
}

void spaceman_datazone_destroy(uint64_t result)
{
  if (result)
  {
    v1 = 0;
    v2 = result + 1224;
    v3 = result + 1250;
    v4 = 1;
    do
    {
      v5 = v4;
      if (*(v2 + 136 * v1 + 128) == 1)
      {
        v6 = (v3 + 136 * v1);
        v7 = 4;
        do
        {
          if (*(v6 - 2) == 1 && *v6 == 1)
          {
            v8 = *(v6 - 10);
            if (v8)
            {
              *(v6 - 2) = 0;
              _apfs_free(v8, 136);
              *(v6 - 10) = 0;
            }
          }

          v6 += 32;
          --v7;
        }

        while (v7);
      }

      v4 = 0;
      v1 = 1;
    }

    while ((v5 & 1) != 0);
  }
}

uint64_t sub_10000B384(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v6 = *(a1 + 376);
  v7 = v6 + 48 * a2;
  v8 = *(v7 + 56);
  if (v8 <= a4)
  {
    return 22;
  }

  v9 = a3;
  v10 = a2;
  v11 = a1 + 136 * a2 + 32 * a3;
  v12 = v11 + 1224;
  v13 = *(v11 + 1240);
  v14 = *(v6 + 36);
  v15 = *(v7 + 48);
  v16 = *(v11 + 1224);
  v17 = *(v11 + 1250) == 1 && v13 == 0;
  if (v17)
  {
    v13 = _apfs_calloc_typed(1uLL, 0x88uLL, 0x1000040B5CA6940uLL);
    *(v12 + 16) = v13;
    if (!v13)
    {
      return 12;
    }
  }

  if (*(v12 + 24) == 1)
  {
    v18 = v13[65];
    v19 = (v13 + 8);
    v20 = 7;
    v21 = v18;
    while (1)
    {
      v22 = v21 % 7;
      v23 = &v19[16 * (v21 % 7)];
      if (*(v23 + 1))
      {
        if (*v23 / *(*(a1 + 376) + 36) == a4)
        {
          break;
        }
      }

      ++v21;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    if (v22 == v18)
    {
LABEL_19:
      *&v19[16 * v18] = *v12;
      v13[65] = v18 + 1 - 7 * ((((v18 + 1 - ((9363 * (v18 + 1)) >> 16)) >> 1) + ((9363 * (v18 + 1)) >> 16)) >> 2);
      goto LABEL_20;
    }

    do
    {
      if (v22 == 6)
      {
        v28 = 0;
      }

      else
      {
        v28 = v22 + 1;
      }

      *&v19[16 * v22] = *&v19[16 * v28];
      v22 = v28;
    }

    while (v28 != v18);
    v29 = v18 - 1;
    v17 = v18 == 0;
    v30 = 6;
    if (!v17)
    {
      v30 = v29;
    }

    *&v19[16 * v30] = *v12;
  }

LABEL_20:
  v25 = v14 * a4;
  v26 = v14 + v14 * a4;
  if (v8 - 1 == a4)
  {
    v26 = v15;
  }

  *v13 = v25;
  *(v13 + 1) = v26;
  *v12 = v25;
  *(v12 + 8) = v26;
  v13[64] = v9 + 1;
  *(v12 + 25) = 0;
  v27 = a1 + 8 * v10;
  if (*(v12 + 24) == 1)
  {
    *(*(v27 + 1496) + 4 * (v16 / v14)) &= ~0x8000000u;
  }

  result = 0;
  *(*(v27 + 1496) + 4 * a4) |= 0x8000000u;
  return result;
}

uint64_t spaceman_get_number_of_disabled_allocation_zones(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 136 * a2 + 1352) == 1)
    {
      v2 = (result + 136 * a2 + 1249);
      v3 = 4;
      result = 4;
      do
      {
        if ((*(v2 - 1) & 1) != 0 || (*v2 & 1) == 0)
        {
          result = (result - 1);
        }

        v2 += 32;
        --v3;
      }

      while (v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t spaceman_evaluate_chunk_for_disabled_allocation_zones(void *a1, unsigned int a2, unint64_t a3, _BYTE *a4)
{
  if (!a1 || LOBYTE(a1[17 * a2 + 169]) != 1 || *(a1[47] + 48 * a2 + 56) <= a3)
  {
    return 22;
  }

  v8 = 0;
  for (i = &a1[17 * a2 + 156] + 1; ; i += 32)
  {
    if ((*(i - 1) & 1) == 0 && *i == 1)
    {
      v10 = *(a1[a2 + 187] + 4 * a3);
      v11 = v10 & 0xC000000;
      v12 = *&v10 & 0xFFFFFFLL;
      if (!v11 && v8 < v12)
      {
        break;
      }
    }

    if (++v8 == 4)
    {
      return 0;
    }
  }

  v16 = sub_10000B384(a1, a2, v8, a3);
  v17 = a1[1];
  if (v16)
  {
    v14 = v16;
    if (v17)
    {
      v18 = (v17 + 4048);
    }

    else
    {
      v18 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s failed to assign chunk %llu to allocation zone %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1135, v18, a3, v8);
  }

  else
  {
    if (v17)
    {
      v19 = (v17 + 4048);
    }

    else
    {
      v19 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1140, v19, a2, v8 + 1, *(i - 25));
    v14 = 0;
    *(i - 1) = 1;
    *a4 = 1;
  }

  return v14;
}

uint64_t spaceman_get_new_chunk_for_allocation_zone(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = 22;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a3;
      if (a3 <= 1 && a4 <= 3)
      {
        v8 = *(a2 + 376);
        v76 = 0;
        v77 = 0;
        v74 = 0;
        v75 = 0;
        v72 = 0;
        v73 = 0;
        v9 = a3;
        v10 = a2 + 136 * a3 + 32 * a4;
        v11 = *(v10 + 1224);
        v12 = v8[9];
        v13 = *(v10 + 1240);
        v14 = v8 + 12;
        v15 = *&v8[12 * a3 + 14];
        if (!v13)
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 130);
        v17 = v13 + 16;
        v18 = 7;
        while (1)
        {
          v19 = (v17 + 16 * v16);
          v20 = v19[1];
          if (v20)
          {
            if (v20 <= *&v14[12 * a3])
            {
              v21 = *v19 / v12;
              v22 = *(*(v5 + 1496 + 8 * a3) + 4 * v21);
              v23 = v22 & 0xC000000;
              v24 = *&v22 & 0xFFFFFFLL;
              if (!v23 && v24 > a4)
              {
                break;
              }
            }
          }

          v16 = (v16 + 1 - 7 * ((613566757 * (v16 + 1)) >> 32));
          if (!--v18)
          {
            goto LABEL_14;
          }
        }

        if (v21 < v15)
        {
          v32 = 0;
LABEL_55:
          v57 = sub_10000B384(v5, v6, a4, v21);
          if (v57)
          {
            v4 = v57;
            log_err("%s:%d: %s failed to update allocate zone %llu: error %d\n");
          }

          else
          {
            v59 = *(v5 + 1592);
            if (v59)
            {
              ++*(v59 + (v9 << 6) + 8 * a4 + 120);
            }

            if (*(v5 + 1600))
            {
              v60 = (*(v5 + 1608) + 16 * *(v5 + 1604));
              v4 = 0;
              *v60 = get_timestamp();
              v60[1] = (16 * (v21 & 0xFFFFFFFFFFLL)) | (2 * a4) | (v32 << 44) | v9;
              v61 = *(v5 + 1604);
              if ((v61 + 1) < *(v5 + 1600))
              {
                v62 = v61 + 1;
              }

              else
              {
                v62 = 0;
              }

              *(v5 + 1604) = v62;
            }

            else
            {
              v4 = 0;
            }
          }
        }

        else
        {
LABEL_14:
          v26 = v11 / v12;
          v27 = v8[10];
          v28 = v15 - 1;
          v30 = v26 + 1 == v27 || v26 == v28;
          v31 = &v14[12 * a3];
          LODWORD(v14) = v31[4];
          if (v14 > v30)
          {
            v70 = 0;
            v32 = 0;
            v67 = v31;
            v68 = (v26 / v27);
            v64 = v26;
            v65 = v5 + 896;
            v63 = v5;
            v33 = v5 + 1496;
            v69 = -1;
            v21 = -1;
            do
            {
              v34 = (v68 + v30) % v14;
              if (v31[5])
              {
                v35 = v8[11];
                v36 = v34 / v35;
                v37 = v69;
                v38 = v70;
                if (v34 / v35 != v69 || v70 == 0)
                {
                  v40 = *(*(v65 + 8 * v9) + 8 * v36);
                  if (v73)
                  {
                    obj_release(v73);
                    v73 = 0;
                  }

                  v76 = v8;
                  v77 = __PAIR64__(v36, a3);
                  v41 = obj_get(*(a1 + 392), 0x40000000, v40, &sm_cab_desc, &v76, 0, 0, 0, &v73);
                  if (v41)
                  {
                    v4 = v41;
                    log_err("%s:%d: %s error getting cab %d: %d\n", "spaceman_get_new_chunk_for_allocation_zone", 1248, (*(a1 + 384) + 212), v36, v41);
                    goto LABEL_58;
                  }

                  v38 = v73[7];
                  v35 = v8[11];
                  v37 = v36;
                }

                v69 = v37;
                v70 = v38;
                v42 = (v38 + 8 * (v34 - v35 * v37) + 40);
                v6 = a3;
              }

              else
              {
                v42 = (*(v65 + 8 * v9) + 8 * v34);
              }

              v43 = *v42;
              v74 = v8;
              v75 = __PAIR64__(v34, v6);
              v44 = obj_get(*(a1 + 392), 0x40000000, v43, &sm_cib_desc, &v74, 0, 0, 0, &v72);
              if (v44)
              {
                v4 = v44;
                log_err("%s:%d: %s error getting cib %d: %d\n");
                goto LABEL_58;
              }

              if (v30)
              {
                LODWORD(v45) = 0;
              }

              else
              {
                LODWORD(v45) = v64 % v8[10] + 1;
              }

              v31 = v67;
              v46 = v72[7];
              v47 = *(v46 + 36);
              v48 = v47 >= v45;
              v49 = v47 - v45;
              if (v49 != 0 && v48)
              {
                v50 = v34 * v8[10];
                v45 = v45;
                v51 = (v46 + 32 * v45 + 60);
                v52 = v21;
                do
                {
                  v53 = *v51;
                  v51 += 8;
                  v54 = v53 & 0xFFFFF;
                  if (v32 < v54)
                  {
                    v21 = v50 + v45;
                    v55 = *(*(v33 + 8 * v9) + 4 * (v50 + v45));
                    if ((v55 & 0xC000000) == 0 && (*&v55 & 0xFFFFFFuLL) > a4)
                    {
                      v32 = v54;
                      v52 = v50 + v45;
                      if (v54 == v8[9])
                      {
                        break;
                      }
                    }
                  }

                  ++v45;
                  v21 = v52;
                  --v49;
                }

                while (v49);
              }

              if (v32 == v8[9])
              {
                break;
              }

              obj_release(v72);
              v72 = 0;
              ++v30;
              v14 = v67[4];
            }

            while (v30 < v14);
            v5 = v63;
            if (v21 != -1)
            {
              goto LABEL_55;
            }
          }

          v4 = 28;
        }

LABEL_58:
        if (v73)
        {
          obj_release(v73);
        }

        if (v72)
        {
          obj_release(v72);
        }
      }
    }
  }

  return v4;
}

BOOL spaceman_should_avoid_data_allocation_at_block(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8 * a2 + 1496);
  if (!v4)
  {
    return 0;
  }

  v5 = a1 + 104 * a2;
  if (*(v5 + 1112) == 1)
  {
    v6 = v5 + 1016;
    v7 = 40;
    if (*(v6 + 90))
    {
      v7 = 72;
    }

    if (*v6 <= a3 && *(v6 + v7) > a3)
    {
      return 1;
    }
  }

  if ((*(v4 + 4 * (a3 / *(*(a1 + 376) + 36))) & 0x8000000) == 0)
  {
    return 0;
  }

  if (a4 <= 4 && (v9 = a1 + 136 * a2 + 32 * a4, *(v9 + 1216) == 1) && (v10 = (v9 + 1192), *v10 <= a3))
  {
    return v10[1] <= a3;
  }

  else
  {
    return 1;
  }
}

BOOL spaceman_clip_extent(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __int16 a5, unint64_t a6, unint64_t *a7, unint64_t *a8)
{
  v19 = 0;
  v14 = calc_overlap_range(a1, a2, a3, a4, &v19);
  if (v14)
  {
    v15 = a2 - v14;
    if (a2 == v14)
    {
      v16 = 0;
LABEL_17:
      *a8 = v16;
      return v14 != 0;
    }

    v16 = v19 - a1;
    if (v19 == a1)
    {
      v17 = v14 + a1;
LABEL_6:
      *a7 = v17;
LABEL_7:
      v16 = v15;
      goto LABEL_17;
    }

    v15 = a2 - (v16 + v14);
    if ((a5 & 0x4000) != 0)
    {
      if (a6 > v19 && a2 != v16 + v14 && (v19 + v14 <= a6 || a6 - v19 > v19 + v14 - a6))
      {
        *a7 = v19 + v14;
        goto LABEL_7;
      }
    }

    else if (v15 > v16)
    {
      v17 = v19 + v14;
      goto LABEL_6;
    }

    *a7 = a1;
    goto LABEL_17;
  }

  return v14 != 0;
}

uint64_t spaceman_clip_extent_to_zones(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, __int16 a6, unint64_t a7, unint64_t *a8, unint64_t *a9)
{
  v12 = a5;
  v13 = a4;
  v15 = a2;
  v16 = *(a1 + 1024);
  if (v16)
  {
    v17 = 0;
    if (!a3 && (*(a1 + 634) & 1) == 0)
    {
      v18 = *(a1 + 1016);
      if ((a6 & 0x200) != 0)
      {
        if (v18 && spaceman_clip_extent(a4, a5, 0, v18, a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        v18 += v16;
        v16 = *(*(a2 + 376) + 48) - v18;
      }

      else
      {
        v17 = 0;
      }

      v19 = spaceman_clip_extent(v13, v12, v18, v16, a6, a7, a8, a9);
      v15 = a2;
      if (v19)
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  if ((a6 & 0x2000) != 0)
  {
    v20 = v15 + 104 * a3;
    if (*(v20 + 1112) == 1)
    {
      v21 = v20 + 1016;
      v22 = 40;
      if (*(v21 + 90))
      {
        v22 = 72;
      }

      if (spaceman_clip_extent(v13, v12, *v21, *(v21 + v22) - *v21, a6, a7, a8, a9))
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }

    if (*(v15 + 136 * a3 + 1352) == 1)
    {
      v23 = (v15 + 136 * a3 + 1248);
      v24 = 4;
      do
      {
        if (*v23 == 1 && spaceman_clip_extent(v13, v12, *(v23 - 3), *(v23 - 2) - *(v23 - 3), a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        v23 += 32;
        --v24;
      }

      while (v24);
    }
  }

  return v17 & 1;
}

uint64_t spaceman_free_extent_cache_init(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned int a4, char *a5)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0x10000;
  }

  if ((v5 - 65537) < 0xFFFF0001)
  {
    return 22;
  }

  bzero(a5, 0x558uLL);
  if (!a1 || (result = new_lock((a5 + 16)), !result))
  {
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 22) = a3 | (v5 << 8);
    v11 = _apfs_calloc_typed(v5, 0x18uLL, 0x1000040504FFAC1uLL);
    *(a5 + 10) = v11;
    if (v11)
    {
      sub_10000C0F4(a5);
      return 0;
    }

    else
    {
      if (a1)
      {
        free_lock((a5 + 16));
      }

      return 12;
    }
  }

  return result;
}

uint64_t sub_10000C0F4(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 <= 0x2FF)
  {
    v5 = (v1 >> 8) - 1;
    v2 = *(result + 80);
  }

  else
  {
    v2 = *(result + 80);
    v3 = 1;
    v4 = 1;
    do
    {
      *(v2 + 24 * v4++) = (v3 + 1);
      v3 = v4;
      v5 = (*(result + 88) >> 8) - 1;
    }

    while (v5 > v4);
  }

  *(v2 + 24 * v5) = 0;
  *(result + 92) = 1;
  return result;
}

void spaceman_free_extent_cache_destroy(uint64_t result)
{
  if (result)
  {
    v2 = *(result + 80);
    if (v2)
    {
      _apfs_free(v2, 24 * (*(result + 88) >> 8));
      *(result + 80) = 0;
    }

    if (*result)
    {
      free_lock((result + 16));
      *result = 0;
    }
  }
}

void spaceman_free_extent_cache_reset(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (HIBYTE(*(a1 + 88)))
  {
    v4 = *a1;
    v3 = *(a1 + 8);
    spaceman_free_extent_cache_destroy(a1);
    v5 = spaceman_free_extent_cache_init(v4, v3, v2, (v2 >> 8), a1);
    if (v5)
    {
      v6 = *(a1 + 88);
      v7 = "main";
      if (v6 == 1)
      {
        v7 = "tier2";
      }

      log_err("%s:%d: %s dev %d Error reinitializing %s free extent cache: %d\n", "spaceman_free_extent_cache_reset", 262, (*(*a1 + 384) + 212), v6, v7, v5);
      *(a1 + 280) |= 2uLL;
    }
  }

  else
  {
    bzero((a1 + 92), 0x4FCuLL);
    bzero(*(a1 + 80), 24 * (v2 >> 8));

    sub_10000C0F4(a1);
  }
}

uint64_t spaceman_free_extent_cache_scan_should_pause(uint64_t a1, unint64_t a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (*(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 56) / v2 > 0x64)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  if ((*(a1 + 280) & 2) != 0 || (*(a1 + 88) >> 8) - 1 > *(a1 + 94))
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 176);
  if (v5 <= *(a1 + 224))
  {
    v5 = *(a1 + 224);
  }

  if (v5 < *(a1 + 248) || (v6 = *(a1 + 128), (v6 - *(a1 + 120)) > 3))
  {
LABEL_15:
    v3 = 0;
  }

  else
  {
    *(a1 + 328) = v6;
    v3 = 1;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return v3;
}

void spaceman_free_extent_cache_print_stats(void *a1)
{
  v32 = 0;
  if (!spaceman_get(a1, &v32))
  {
    v1 = 0;
    for (i = 1; ; i = 0)
    {
      v3 = i;
      v4 = v32[47] + 48 * v1;
      v7 = *(v4 + 48);
      v5 = v4 + 48;
      v6 = v7;
      if (!v7)
      {
        goto LABEL_42;
      }

      v8 = v32[v1 + 197];
      if (!v8)
      {
        goto LABEL_42;
      }

      v31 = v3;
      v9 = *(v5 + 24);
      v10 = *(v8 + 94);
      if (*v8)
      {
        pthread_mutex_lock((v8 + 16));
      }

      v11 = v8 + 1264;
      if (sub_10000E5C8(v8, v8 + 1264, 1u))
      {
        v30 = 0;
      }

      else
      {
        v30 = *(*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361)) + 8) & 0xFFFFFFFFFFFFFLL;
      }

      if (sub_10000F7A8(v8, v8 + 1264))
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v29 = *(*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361))) & 0xFFFFFFFFFFFFFLL;
        if (sub_10000E5C8(v8, v8 + 1264, 0))
        {
          v13 = 0;
          v12 = v29;
        }

        else
        {
          v14 = (*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361)));
          v12 = v29;
          v13 = (*v14 & 0xFFFFFFFFFFFFFLL) - v29 + (v14[1] & 0xFFFFFFFFFFFFFLL);
        }
      }

      v15 = *(v8 + 96);
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = *(v8 + 96);
      }

      if (v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v16;
      }

      if (v10)
      {
        v18 = v15 / v10;
      }

      else
      {
        v18 = 0;
      }

      log_info("%s:%d: %s dev %d smfree %lld/%lld table %d/%d blocks %lld %lld:%lld:%lld %d.%02d%% range %lld:%lld %d.%02d%% scans %lld\n", "spaceman_fxc_print_stats", 477, (*(*v8 + 384) + 212), *(v8 + 88), v9, v6, v10, (*(v8 + 88) >> 8) - 1, v15, *(v8 + 120), v18, v30, 10000 * v15 / v17 / 0x64, 10000 * v15 / v17 % 0x64, v12, v13, 10000 * v13 / v6 / 0x64, 10000 * v13 / v6 % 0x64, *(v8 + 336));
      v19 = (v8 + 272);
      v20 = 3;
      do
      {
        v21 = *(v19 - 4);
        if (v21)
        {
          if (v9)
          {
            v22 = v9;
          }

          else
          {
            v22 = *(v19 - 4);
          }

          v23 = *(v19 - 5);
          if (v23)
          {
            v24 = v21 / v23;
          }

          else
          {
            v24 = 0;
          }

          log_info("%s:%d: %s dev %d scan_stats[%d]: foundmax %lld extents %lld blocks %lld long %lld avg %lld %d.%02d%% range %lld:%lld %d.%02d%%\n", "spaceman_fxc_print_stats", 496, (*(*v8 + 384) + 212), *(v8 + 88), v20 - 1, *v19, v23, v21, *(v19 - 3), v24, 10000 * v21 / v22 / 0x64, 10000 * v21 / v22 % 0x64, *(v19 - 2), *(v19 - 1), 10000 * *(v19 - 1) / v6 / 0x64, 10000 * *(v19 - 1) / v6 % 0x64);
        }

        v19 -= 6;
        --v20;
      }

      while (v20);
      v25 = *(v8 + 344);
      v26 = *v8;
      if (v25)
      {
        log_info("%s:%d: %s dev %d Searches: %lld success %lld fail %lld partial %lld, bm search yes:%lld (%lld/%lld/%lld) no:%lld/%lld\n", "spaceman_fxc_print_stats", 509, (*(v26 + 384) + 212), *(v8 + 88), v25, *(v8 + 352), *(v8 + 424), *(v8 + 416), *(v8 + 448), *(v8 + 456), *(v8 + 464), *(v8 + 472), *(v8 + 432), *(v8 + 440));
        v27 = *(v8 + 360);
        v3 = v31;
        if (v27)
        {
          v28 = *(v8 + 368) / v27;
        }

        else
        {
          v28 = 0;
        }

        log_info("%s:%d: %s dev %d Remainders: zero %lld one %lld tiny %lld small %lld good %lld, total %lld blocks %lld avg %lld\n", "spaceman_fxc_print_stats", 515, (*(*v8 + 384) + 212), *(v8 + 88), *(v8 + 408), *(v8 + 400), *(v8 + 392), *(v8 + 384), *(v8 + 376), v27, *(v8 + 368), v28);
        if (!*v8)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v3 = v31;
        if (!v26)
        {
          goto LABEL_42;
        }
      }

      pthread_mutex_unlock((v8 + 16));
LABEL_42:
      v1 = 1;
      if ((v3 & 1) == 0)
      {
        obj_release(v32);
        return;
      }
    }
  }
}

uint64_t spaceman_free_extent_cache_setup(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1576;
  for (i = 1; ; i = 0)
  {
    v7 = i;
    if (!*(v5 + 8 * v4))
    {
      v8 = *(*(a2 + 376) + 48 * v4 + 48);
      if (v8)
      {
        v9 = _apfs_calloc_typed(1uLL, 0x558uLL, 0x10200402E7C0D0DuLL);
        *(v5 + 8 * v4) = v9;
        if (!v9)
        {
          v12 = 12;
          goto LABEL_13;
        }

        v10 = v8 >> 18;
        if (v8 >> 18 >= 0xFF80)
        {
          LODWORD(v10) = 65408;
        }

        v11 = spaceman_free_extent_cache_init(a1, a2, v4, v10 + 128, v9);
        if (v11)
        {
          break;
        }
      }
    }

    v4 = 1;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v11;
  v13 = *(v5 + 8 * v4);
  if (v13)
  {
    *(v13 + 280) |= 2uLL;
  }

LABEL_13:
  log_err("%s:%d: %s failed to initialize free extent cache for device %d, error %d\n", "spaceman_free_extent_cache_setup", 1556, (*(a1 + 384) + 212), v4, v12);
  return v12;
}

uint64_t spaceman_free_extent_cache_insert(void *a1, int a2, unint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v4 = a4;
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  if (!a4)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 2));
  }

  v8 = a1[35];
  if ((v8 & 2) == 0)
  {
    v9 = &a1[6 * ((v8 & 4) == 0) + 17];
    v11 = v9[5];
    v10 = v9 + 5;
    if (v11 < v4)
    {
      *v10 = v4;
    }

    v73 = 0;
    v12 = sub_10000D018(a1, v4, a3);
    if (v12 == 55)
    {
      v13 = &a1[2 * (a2 ^ 1u)];
      v14 = v13[37];
      if (v14)
      {
        if (v14 < a3 && v4 + a3 < v13[38])
        {
          sub_10000D23C(a1, a3, v4);
          v15 = 0;
          v13[37] = a3;
          goto LABEL_27;
        }
      }
    }

    v16 = spaceman_extent_check(*a1, a1[1], a3, v4);
    if (v16)
    {
      v17 = v16;
      if (nx_ratelimit_log_allowed(*a1))
      {
        log_err("%s:%d: %s dev %d free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_free_extent_cache_insert", 1648, (*(*a1 + 384) + 212), *(a1 + 88), a3, v4, v17);
      }

      goto LABEL_23;
    }

    v18 = (a1 + 1068);
    v19 = sub_10000D284(a1, 0, a3, v4, a1 + 1068);
    if (v19)
    {
      goto LABEL_25;
    }

    v69 = a1 + 17;
    v21 = *(v18 + 2 * *(a1 + 1165));
    v22 = (a1 + 1166);
    v23 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v23;
    *(a1 + 631) = *(a1 + 582);
    v24 = *(a1 + 1084);
    *(a1 + 1166) = *v18;
    *(a1 + 1182) = v24;
    v25 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v25;
    if (v21)
    {
      v15 = 0;
    }

    else
    {
      v45 = sub_10000F938(a1, a1 + 1166, -1);
      v15 = v45;
      if ((v45 & 0xFFFFFFFD) != 0)
      {
        goto LABEL_26;
      }

      if (v45 == 2)
      {
        v15 = 2;
        goto LABEL_33;
      }
    }

    v26 = *(v22 + 2 * *(a1 + 1263));
    v27 = (a1[10] + 24 * *(v22 + 2 * *(a1 + 1263)));
    v28 = *v27 & 0xFFFFFFFFFFFFFLL;
    v29 = v27[1] & 0xFFFFFFFFFFFFFLL;
    if (v29 + v28 >= a3)
    {
      v4 = v4 + a3 - v28;
      v46 = *(a1 + 1246);
      *(a1 + 1132) = *(a1 + 1230);
      *(a1 + 1148) = v46;
      *(a1 + 582) = *(a1 + 631);
      v47 = *(a1 + 1182);
      *v18 = *v22;
      *(a1 + 1084) = v47;
      v48 = *(a1 + 1214);
      *(a1 + 1100) = *(a1 + 1198);
      *(a1 + 1116) = v48;
      if (v4 <= v29)
      {
        if (v15)
        {
          v15 = 1;
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      v19 = sub_10000D3BC(a1, v28, v29, v4, v26);
      if (v19)
      {
LABEL_25:
        v15 = v19;
LABEL_26:
        log_err("%s:%d: %s dev %d Error %d, reinitializing\n", "spaceman_free_extent_cache_insert", 1881, (*(*a1 + 384) + 212), *(a1 + 88), v15);
        spaceman_free_extent_cache_reset(a1);
        goto LABEL_27;
      }

      v49 = &v69[6 * ((a1[35] & 4) == 0)];
      v51 = v49[5];
      v50 = v49 + 5;
      if (v51 < v4)
      {
        *v50 = v4;
      }

      sub_10000D6C0(a1, v28, v4);
      v15 = 0;
LABEL_34:
      v30 = *(a1 + 1165);
      if (v30 < 0 || *(v18 + 2 * v30))
      {
LABEL_36:
        v71 = *(v18 + 2 * v30);
        v72 = v28 + v4;
        v31 = v4;
        v70 = v28;
        while (1)
        {
          if (v15)
          {
            goto LABEL_26;
          }

          v32 = *(a1 + 1148);
          *(a1 + 1230) = *(a1 + 1132);
          *(a1 + 1246) = v32;
          *(a1 + 631) = *(a1 + 582);
          v33 = *(a1 + 1084);
          *v22 = *v18;
          *(a1 + 1182) = v33;
          v34 = *(a1 + 1116);
          *(a1 + 1198) = *(a1 + 1100);
          *(a1 + 1214) = v34;
          v35 = sub_10000F938(a1, a1 + 1166, 1);
          if (v35)
          {
            break;
          }

          v36 = *(v22 + 2 * *(a1 + 1263));
          v37 = (a1[10] + 24 * *(v22 + 2 * *(a1 + 1263)));
          v38 = *v37 & 0xFFFFFFFFFFFFFLL;
          if (v72 < v38)
          {
            goto LABEL_61;
          }

          v39 = v37[1] & 0xFFFFFFFFFFFFFLL;
          if (v39 + v38 >= v72)
          {
            v40 = v39 + v38 - v72;
          }

          else
          {
            v40 = 0;
          }

          sub_10000DC64(a1, a1 + 1166);
          v41 = sub_10000D284(a1, 1u, v38, v39, a1 + 1068);
          if (v41)
          {
            v15 = v41;
LABEL_70:
            log_err("%s:%d: %s dev %d Failed to find successor node in length tree: %d\n", "spaceman_free_extent_cache_insert", 1852, (*(*a1 + 384) + 212), *(a1 + 88), v15);
            goto LABEL_26;
          }

          if (!*(v18 + 2 * *(a1 + 1165)))
          {
            v15 = 2;
            goto LABEL_70;
          }

          if (v38 == a1[14])
          {
            if (v39 != a1[15])
            {
              sub_1000A3DA8();
            }

            v42 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v42;
            *(a1 + 631) = *(a1 + 582);
            v43 = *(a1 + 1084);
            *v22 = *v18;
            *(a1 + 1182) = v43;
            v44 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v44;
            sub_10000DFE0(a1, a1 + 1166);
          }

          v31 += v40;
          sub_10000DC64(a1, a1 + 1068);
          sub_10000DBCC(a1, v36);
          v28 = v70;
          v15 = sub_10000D284(a1, 0, v70, v4, a1 + 1068);
          if (*(v18 + 2 * *(a1 + 1165)) != v71)
          {
            sub_1000A3DD4();
          }
        }

        v15 = v35;
        if (v35 != 2)
        {
          goto LABEL_26;
        }

LABEL_61:
        if (v31 <= v4)
        {
          goto LABEL_23;
        }

        v19 = sub_10000D3BC(a1, v28, v4, v31, v71);
        if (!v19)
        {
          v52 = &v69[6 * ((a1[35] & 4) == 0)];
          v54 = v52[5];
          v53 = v52 + 5;
          if (v54 >= v31)
          {
            goto LABEL_23;
          }

          v15 = 0;
          *v53 = v31;
          goto LABEL_27;
        }

        goto LABEL_25;
      }

      if (v12 == 55)
      {
        v55 = sub_10000F938(a1, a1 + 1068, 1);
        if (v55)
        {
          v15 = v55;
          v56 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_77;
        }

        v58 = *(v18 + 2 * *(a1 + 1165));
        v59 = (a1[10] + 24 * *(v18 + 2 * *(a1 + 1165)));
        v60 = *v59;
        v56 = *v59 & 0xFFFFFFFFFFFFFLL;
        if (v28 + v4 < v56)
        {
          v15 = 2;
LABEL_77:
          sub_10000D23C(a1, v28, v4);
          v61 = &a1[2 * (a2 ^ 1u)];
          v61[37] = v28;
          v61[38] = v56;
          if (v15 != 2)
          {
            goto LABEL_26;
          }

LABEL_23:
          v15 = 0;
          goto LABEL_27;
        }

        v62 = v59[1] & 0xFFFFFFFFFFFFFLL;
        v63 = v56 - v28 + v62;
        if (v56 == a1[14])
        {
          a1[14] = v28;
        }

        *v59 = v60 & 0xFFF0000000000000 | v28;
        v19 = sub_10000D3BC(a1, v28, v62, v56 - v28 + v62, v58);
        if (!v19)
        {
          v64 = &v69[6 * ((a1[35] & 4) == 0)];
          v66 = v64[5];
          v65 = v64 + 5;
          if (v66 >= v63)
          {
            goto LABEL_23;
          }

          v15 = 0;
          *v65 = v63;
LABEL_27:
          if (*a1)
          {
            pthread_mutex_unlock((a1 + 2));
          }

          return v15;
        }
      }

      else
      {
        v73 = 0;
        v19 = sub_10000D73C(a1, v28, v4, &v73, a1 + 1068);
        if (!v19)
        {
          v57 = sub_10000DA40(a1, 1u, v28, v4, &v73);
          if (v57)
          {
            v15 = v57;
            if (!sub_10000DB50(a1, v28, v4))
            {
              sub_10000DBCC(a1, v73);
            }

            goto LABEL_26;
          }

          v67 = a1[15];
          if (v67 - 1 >= v4 || v4 == v67 && v28 > a1[14])
          {
            a1[14] = v28;
            a1[15] = v4;
          }

          if (v4 > a1[16])
          {
            a1[16] = v4;
          }

          v68 = sub_10000D284(a1, 0, v28, v4, a1 + 1068);
          if (*(v18 + 2 * *(a1 + 1165)) != v73)
          {
            sub_1000A3D7C();
          }

          v15 = v68;
          sub_10000D6C0(a1, v28, v4);
          LOBYTE(v30) = *(a1 + 1165);
          goto LABEL_36;
        }
      }

      goto LABEL_25;
    }

LABEL_33:
    v28 = a3;
    goto LABEL_34;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 2));
  }

  return 45;
}

uint64_t sub_10000D018(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 92))
  {
    return 0;
  }

  v5 = *(a1 + 120);
  if (v5 > a2)
  {
    return 55;
  }

  v7 = *(a1 + 112);
  if (v5 == a2 && v7 < a3)
  {
    return 55;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = (a1 + 480);
  if (sub_10000D284(a1, 0, v7, v5, a1 + 480) || (v10 = 4 * *(a1 + 577), v11 = *(v9 + v10), !*(v9 + v10)))
  {
    log_err("%s:%d: %s dev %d Failed to find smallest extent in paddr tree: %d\n");
  }

  else
  {
    sub_10000DC64(a1, a1 + 480);
    if (sub_10000D284(a1, 1u, *(a1 + 112), *(a1 + 120), a1 + 480) || !*(v9 + 2 * *(a1 + 577)))
    {
      log_err("%s:%d: %s dev %d Failed to find smallest extent %d in length tree: %d\n");
    }

    else
    {
      if (v11 != *(v9 + 2 * *(a1 + 577)))
      {
        sub_1000A3E00();
      }

      sub_10000D23C(a1, *(a1 + 112), *(a1 + 120));
      v12 = *(a1 + 560);
      *(a1 + 642) = *(a1 + 544);
      *(a1 + 658) = v12;
      *(a1 + 674) = *(a1 + 576);
      v13 = *(a1 + 496);
      *(a1 + 578) = *v9;
      *(a1 + 594) = v13;
      v14 = *(a1 + 528);
      *(a1 + 610) = *(a1 + 512);
      *(a1 + 626) = v14;
      v15 = sub_10000F938(a1, a1 + 578, 1);
      if (!v15)
      {
        *(a1 + 112) = vandq_s8(*(*(a1 + 80) + 24 * *(a1 + 578 + 4 * *(a1 + 675))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
        goto LABEL_24;
      }

      if (v15 == 2)
      {
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
LABEL_24:
        sub_10000DC64(a1, a1 + 480);
        sub_10000DBCC(a1, v11);
        return 0;
      }

      log_err("%s:%d: %s dev %d Failed to find next smallest extent in length tree: %d\n");
    }
  }

  return 3;
}

uint64_t sub_10000D23C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a1 + 48 * ((*(a1 + 280) & 4) == 0);
  if (*(v3 + 152) < a3)
  {
    *(v3 + 152) = a3;
  }

  v4.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v4.i64[1] = a3;
  *(v3 + 136) = vaddq_s64(*(v3 + 136), v4);
  return sub_10000E8EC(v3 + 136, a2, a3);
}

uint64_t sub_10000D284(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = a2;
  v10 = *(a1 + 2 * a2 + 104);
  *a5 = v10;
  if (v10)
  {
    if (a2 >= 2)
    {
      sub_1000A3E2C();
    }

    *(a5 + 2) = *(*(a1 + 80) + 24 * v10 + 8 * (a2 != 0) + 7);
  }

  for (i = *(a5 + 4 * *(a5 + 97)); *(a5 + 4 * *(a5 + 97)); i = *(a5 + 4 * *(a5 + 97)))
  {
    v12 = (*(a1 + 80) + 24 * i);
    if (a2)
    {
      v13 = v12[1] & 0xFFFFFFFFFFFFFLL;
      v14 = v13 > a4;
      v15 = v13 < a4;
      if (v14)
      {
        v15 = -1;
      }

      if (!v15)
      {
        v16 = *v12 & 0xFFFFFFFFFFFFFLL;
        v14 = v16 < a3;
        v15 = v16 > a3;
        if (v14)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v17 = *v12 & 0xFFFFFFFFFFFFFLL;
      v14 = v17 <= a3;
      v15 = v17 < a3;
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    if (!v15)
    {
      return 0;
    }

    if (v15 < 0)
    {
LABEL_18:
      v18 = a1;
      v19 = a5;
      v20 = -1;
      goto LABEL_19;
    }

    v18 = a1;
    v19 = a5;
    v20 = 1;
LABEL_19:
    result = sub_10000F83C(v18, v19, v20);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_10000D3BC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  v30 = a5;
  v10 = a1 + 676;
  v11 = *(a1 + 112);
  v12 = sub_10000D284(a1, 1u, a2, a3, a1 + 676);
  if (v12)
  {
    return v12;
  }

  if (!*(v10 + 4 * *(a1 + 773)))
  {
    return 2;
  }

  if (*(v10 + 4 * *(a1 + 773)) != a5)
  {
    log_err("%s:%d: %s dev %d length tree search for 0x%llx 0x%llx returned node %d instead of %d\n", "spaceman_fxc_update_length", 1400, (*(*a1 + 384) + 212), *(a1 + 88), a2, a3, *(v10 + 4 * *(a1 + 773)), a5);
    return 22;
  }

  v15 = (a1 + 774);
  v16 = *(a1 + 96);
  v17 = *(a1 + 80) + 24 * a5;
  *(v17 + 8) = *(v17 + 8) & 0xFFF0000000000000 | a4 & 0xFFFFFFFFFFFFFLL;
  *(a1 + 96) = a4 - a3 + v16;
  if (a4 <= a3)
  {
    if (v11 != a2)
    {
      v22 = *(v10 + 80);
      *(a1 + 838) = *(v10 + 64);
      *(a1 + 854) = v22;
      *(a1 + 870) = *(v10 + 96);
      v23 = *(v10 + 16);
      *v15 = *v10;
      *(a1 + 790) = v23;
      v24 = *(v10 + 48);
      *(a1 + 806) = *(v10 + 32);
      *(a1 + 822) = v24;
      v25 = sub_10000F938(a1, a1 + 774, -1);
      if (v25)
      {
        v13 = v25;
        if (v25 == 2)
        {
          log_err("%s:%d: %s dev %d Failed to find length tree predecessor for node that wasn't the smallest\n", "spaceman_fxc_update_length", 1463, (*(*a1 + 384) + 212), *(a1 + 88));
        }

        return v13;
      }

      if ((*(*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 871)) + 8) & 0xFFFFFFFFFFFFFuLL) >= a4)
      {
        v28 = *(a1 + 120);
        if (v28 > a4 || v28 == a4 && *(a1 + 112) < a2)
        {
          *(a1 + 112) = a2;
          *(a1 + 120) = a4;
        }

        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v18 = *(v10 + 80);
    *(a1 + 838) = *(v10 + 64);
    *(a1 + 854) = v18;
    *(a1 + 870) = *(v10 + 96);
    v19 = *(v10 + 16);
    *v15 = *v10;
    *(a1 + 790) = v19;
    v20 = *(v10 + 48);
    *(a1 + 806) = *(v10 + 32);
    *(a1 + 822) = v20;
    v21 = sub_10000F938(a1, a1 + 774, 1);
    if (v21)
    {
      v13 = v21;
      if (v21 != 2)
      {
        return v13;
      }

      if (v11 == a2)
      {
        *(a1 + 120) = a4;
      }

      if (*(a1 + 128) >= a4)
      {
        return 0;
      }

      v13 = 0;
LABEL_39:
      *(a1 + 128) = a4;
      return v13;
    }

    v26 = vandq_s8(*(*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 871))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
    if (v26.i64[1] < a4 || (v26.i64[1] == a4 ? (v27 = v26.i64[0] <= a2) : (v27 = 1), !v27))
    {
      if (v11 == a2)
      {
        *(a1 + 112) = v26;
      }

LABEL_37:
      sub_10000DC64(a1, v10);
      v13 = sub_10000DA40(a1, 1u, a2, a4, &v30);
      goto LABEL_38;
    }

    if (v11 != a2)
    {
LABEL_32:
      v13 = 0;
      goto LABEL_38;
    }
  }

  v13 = 0;
  *(a1 + 120) = a4;
LABEL_38:
  v29 = *(a1 + 128);
  if (v29 < a4)
  {
    goto LABEL_39;
  }

  if (v29 == a3)
  {
    sub_10000E560(a1);
  }

  return v13;
}

unint64_t sub_10000D6C0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = result + 296;
  v6 = a2 - 1;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (v5 + 16 * v4);
    if (*v9)
    {
      result = calc_overlap_range(v6, a3 + 2, *v9, v9[1] - *v9, 0);
      if (result)
      {
        *v9 = 0;
      }
    }

    v7 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t sub_10000D73C(uint64_t a1, uint64_t a2, unint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = *(a5 + 96);
  if (a4 && (LOWORD(v7) = *a4) != 0)
  {
    v8 = *(a1 + 80);
    v9 = (v8 + 24 * *a4);
    if ((*v9 & 0xFFFFFFFFFFFFFLL) != a2)
    {
      sub_1000A3E58();
    }

    if ((v9[1] & 0xFFFFFFFFFFFFFLL) != a3)
    {
      sub_1000A3E84();
    }

    *(v9 + v6 + 4) = 0;
    if (v6 >= 2)
    {
      sub_1000A3EB0();
    }

    v9[v6 != 0] &= 0xFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v7 = *(a1 + 92);
    if (v7 > *(a1 + 88) >> 8)
    {
      return 22;
    }

    if (!*(a1 + 92))
    {
      return 12;
    }

    if (*a1)
    {
      v11 = *(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 48);
      if (v11 < a3)
      {
        sub_1000A3F08();
      }

      v12 = *(a1 + 96) + a3;
      if (v12 > v11)
      {
        sub_1000A3EDC();
      }
    }

    else
    {
      v12 = *(a1 + 96) + a3;
    }

    v13 = (*(a1 + 80) + 24 * *(a1 + 92));
    *(a1 + 92) = *v13;
    ++*(a1 + 94);
    *(a1 + 96) = v12;
    v13[1] = 0;
    v13[2] = 0;
    *v13 = 0;
    if (a4)
    {
      *a4 = v7;
    }

    v8 = *(a1 + 80);
    v14 = (v8 + 24 * v7);
    *v14 = a2;
    v14[1] = a3;
  }

  v15 = *(a5 + 97);
  v16 = (a5 + 4 * v15);
  *v16 = v7;
  v16[1] = 0;
  if (v15)
  {
    v17 = v15;
    *(v8 + 24 * *(a5 + 4 * (v15 - 1)) + 4 * v6 + 2 * ((*(a5 + 4 * (v15 - 1) + 3) + 1 + (((*(a5 + 4 * (v15 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16) = v7;
    v18 = v15;
    if ((v15 & 0x80000000) == 0)
    {
      while (!*(a5 + 4 * v18 + 2))
      {
        v19 = v18--;
        if (v19 <= 0)
        {
          v18 = -1;
          break;
        }
      }
    }

    v20 = (v18 + 1);
    if (v20 < v17)
    {
      if (v6 > 1)
      {
        sub_1000A3EB0();
      }

      LOBYTE(v21) = v18 + 1;
      do
      {
        v22 = (a5 + 4 * v21);
        v23 = *(v22 + 3);
        *(v8 + 8 * (v6 != 0) + 24 * *v22 + 7) = v23;
        *(v22 + 2) = v23;
        v21 = (v21 + 1);
      }

      while (v21 < v17);
    }

    if ((v18 & 0x80) == 0)
    {
      v24 = (a5 + 4 * v18);
      v25 = *(v24 + 3);
      if (!(*(v24 + 2) + v25))
      {
        if (v6 >= 2)
        {
          sub_1000A3EB0();
        }

        result = 0;
        *(v8 + 24 * *v24 + 8 * (v6 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
        return result;
      }

      if (*(v24 + 2) == v25)
      {
        if (v18)
        {
          v27 = (v8 + 24 * *(a5 + 4 * (v18 - 1)) + 4 * v6 + 2 * ((*(a5 + 4 * (v18 - 1) + 3) + 1 + (((*(a5 + 4 * (v18 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16);
        }

        else
        {
          v27 = (a1 + 2 * v6 + 104);
        }

        v28 = -v25;
        v29 = (a5 + 4 * v20);
        v30 = *(v29 + 2);
        if (v30 == v25)
        {
          sub_10000FA14(a1, v6, v28, *v24, v27);
        }

        else if (v30 == v28)
        {
          sub_10000FB30(a1, v6, v25, *v24, *v29, v27);
        }
      }
    }

    return 0;
  }

  v26 = a1 + 104;
  if (*(a1 + 104 + 2 * v6))
  {
    sub_1000A3F34();
  }

  result = 0;
  *(v26 + 2 * v6) = v7;
  return result;
}