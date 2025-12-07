uint64_t *sub_100000750(char a1)
{
  v1 = 0;
  byte_100010010 = 0;
  qword_100010008 = 0;
  if (a1)
  {
    LOBYTE(qword_100010008) = 48;
    v1 = &_mh_execute_header.magic + 1;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(&qword_100010008 + v1++) = 49;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(&qword_100010008 + v1++) = 50;
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(&qword_100010008 + v1++) = 51;
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(&qword_100010008 + v1++) = 52;
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(&qword_100010008 + v1++) = 53;
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    *(&qword_100010008 + v1) = 55;
    return &qword_100010008;
  }

LABEL_17:
  *(&qword_100010008 + v1++) = 54;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (!v1)
  {
    LOBYTE(qword_100010008) = 45;
  }

  return &qword_100010008;
}

const char *sub_100000820(const char *result, char *a2)
{
  v2 = result;
  if (a2)
  {
    v3 = *a2;
    if ((v3 | 0x20) == 0x6C)
    {
      result = a2 + 1;
      if ((a2[1] & 0xF8) == 0x30 && !a2[2])
      {
        result = atoi(result);
LABEL_13:
        if (result >= 7)
        {
          v5 = 7;
        }

        else
        {
          v5 = result;
        }

        v4 = v5 & ~(v5 >> 31);
        goto LABEL_9;
      }
    }

    else if ((v3 & 0xF8) == 0x30 && !a2[1])
    {
      result = (atoi(a2) + 2);
      goto LABEL_13;
    }
  }

  v4 = 3;
LABEL_9:
  if (v4 <= (dword_100010048 & 0xFu))
  {
    v4 = dword_100010048 & 0xF;
  }

  dword_100010048 = dword_100010048 & 0xFFFFFFF0 | v2 | v4;
  return result;
}

void sub_1000008D8(unsigned int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v18 = 0;
  v17 = time(0);
  *__s = 0u;
  v20 = 0u;
  v10 = localtime(&v17);
  strftime(__s, 0x20uLL, "%b %e %T", v10);
  v11 = dword_100010048;
  if ((dword_100010048 & 0x20) != 0 && (dword_100010048 & 0xFu) >= a1)
  {
    fprintf(__stderrp, "%s: ", __s);
    va_copy(v18, va);
    vfprintf(__stderrp, a2, va);
    v11 = dword_100010048;
  }

  if ((v11 & 0x10) != 0 && qword_100010050)
  {
    fprintf(qword_100010050, "%s: ", __s);
    va_copy(v18, va);
    vfprintf(qword_100010050, a2, va);
    v11 = dword_100010048;
  }

  if ((v11 & 0x40) != 0)
  {
    v16 = 0;
    if (!qword_100010018)
    {
      qword_100010018 = asl_open("aslmanager", "syslog", 0);
      v12 = asl_msg_new();
      asl_msg_set_key_val();
      asl_msg_set_key_val();
      asl_create_auxiliary_file(v12, "Status Report", "public.text", &dword_100010000);
      asl_msg_release();
    }

    va_copy(v18, va);
    vasprintf(&v16, a2, va);
    if (v16)
    {
      v13 = strlen(__s);
      write(dword_100010000, __s, v13);
      v14 = strlen(v16);
      write(dword_100010000, v16, v14);
      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    free(v15);
  }
}

FILE *sub_100000B0C()
{
  if ((dword_100010000 & 0x80000000) == 0)
  {
    asl_close_auxiliary_file(dword_100010000);
    v0 = vars8;
  }

  result = qword_100010050;
  if (qword_100010050)
  {

    return fclose(result);
  }

  return result;
}

char **sub_100000B54(const char **a1, const char *a2, char *a3, int a4)
{
  if (!a2)
  {
    return a1;
  }

  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10300405734DD4FuLL);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = strdup(a2);
  *v9 = v10;
  if (!v10)
  {
    free(v9);
    return 0;
  }

  v9[1] = a3;
  *(v9 + 4) = a4;
  if (!a1)
  {
    return v9;
  }

  v11 = v10;
  if (strcmp(v10, *a1) < 1)
  {
    v9[3] = a1;
    return v9;
  }

  v13 = a1;
  do
  {
    v14 = v13;
    v13 = v13[3];
  }

  while (v13 && strcmp(v11, *v13) > 0);
  v9[3] = v13;
  v14[3] = v9;
  return a1;
}

void sub_100000C34(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *(v1 + 24);
      free(*v1);
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t sub_100000C78()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v5 = open(v4, 0, 0);
  if (v5 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = open(v2, 513, *(v3 + 116) & 0x1B6);
  if ((v7 & 0x80000000) != 0 || (v8 = asl_out_dst_set_access(v7, v3), v8 < 0))
  {
    v15 = v6;
LABEL_10:
    close(v15);
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = gzdopen(v8, "w");
  if (!v10)
  {
    close(v6);
    v15 = v9;
    goto LABEL_10;
  }

  v11 = v10;
  do
  {
    v12 = read(v6, buf, 0x1000uLL);
    if (!v12)
    {
      break;
    }

    v13 = v12;
    gzwrite(v11, buf, v12);
  }

  while (v13 == 4096);
  gzclose(v11);
  close(v6);
  close(v9);
  return 0;
}

void sub_100000DC0(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000008D8(5u, "  rename %s ---> %s\n", a3, a4, a5, a6, a7, a8, a1, a2);
  if ((byte_100010058 & 1) == 0)
  {
    rename(a1, a2, v10);
    if (v11)
    {
      v12 = v11;
      v13 = *__error();
      v14 = __error();
      v15 = strerror(*v14);
      sub_1000008D8(3u, "  FAILED status %d errno %d [%s] rename %s ---> %s\n", v16, v17, v18, v19, v20, v21, v12, v13, v15, a1, a2);
    }
  }
}

void sub_100000E5C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000008D8(5u, "  remove %s\n", a3, a4, a5, a6, a7, a8, a1);
  if ((byte_100010058 & 1) == 0)
  {
    v9 = unlink(a1);
    if (v9)
    {
      v10 = v9;
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      sub_1000008D8(3u, "  FAILED status %d errno %d [%s] unlink %s\n", v14, v15, v16, v17, v18, v19, v10, v11, v13, a1);
    }
  }
}

void sub_100000EEC(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000008D8(5u, "  truncate %s\n", a3, a4, a5, a6, a7, a8, a1);
  if ((byte_100010058 & 1) == 0)
  {
    v9 = truncate(a1, 0);
    if (v9)
    {
      v10 = v9;
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      sub_1000008D8(3u, "  FAILED status %d errno %d [%s] unlink %s\n", v14, v15, v16, v17, v18, v19, v10, v11, v13, a1);
    }
  }
}

void sub_100000F80(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000008D8(5u, "  remove directory %s\n", a3, a4, a5, a6, a7, a8, a1);
  if ((byte_100010058 & 1) == 0)
  {
    v9 = rmdir(a1);
    if (v9)
    {
      v10 = v9;
      v11 = *__error();
      v12 = __error();
      v13 = strerror(*v12);
      sub_1000008D8(3u, "  FAILED status %d errno %d [%s] rmdir %s\n", v14, v15, v16, v17, v18, v19, v10, v11, v13, a1);
    }
  }
}

uint64_t sub_100001010(uint64_t a1, char *__s, const char *a3, __int16 a4)
{
  result = 0;
  if (__s && a3)
  {
    v8 = strrchr(__s, 46);
    if (v8 && !strcmp(v8, ".gz"))
    {
      a4 &= ~0x10u;
    }

    if ((a4 & 0x10) != 0)
    {
      if ((a4 & 0x1000) == 0)
      {
        sub_1000008D8(5u, "  copy compress %s ---> %s.gz\n", v9, v10, v11, v12, v13, v14, __s, a3);
        if (byte_100010058)
        {
          return 0;
        }

        snprintf(__str, 0x400uLL, "%s.gz", a3);
        if (sub_100000C78())
        {
          v25 = *__error();
          v26 = __error();
          v44 = strerror(*v26);
          sub_1000008D8(3u, "  FAILED status %d errno %d [%s] copy & compress %s ---> %s\n", v27, v28, v29, v30, v31, v32, 0xFFFFFFFFLL, v25, v44, __s, a3);
          return 0;
        }

        return 1;
      }
    }

    else
    {
      result = strcmp(__s, a3);
      if (!result)
      {
        return result;
      }

      if ((a4 & 0x1000) == 0)
      {
        sub_1000008D8(5u, "  copy %s ---> %s\n", v9, v10, v11, v12, v13, v14, __s, a3);
        if (byte_100010058)
        {
          return 0;
        }

        v15 = copyfile(__s, a3, 0, 0x800Fu);
        if (v15)
        {
          v16 = v15;
          v17 = *__error();
          v18 = __error();
          v43 = strerror(*v18);
          sub_1000008D8(3u, "  FAILED status %d errno %d [%s] copy %s ---> %s\n", v19, v20, v21, v22, v23, v24, v16, v17, v43, __s, a3);
          return 0;
        }

        return 1;
      }
    }

    sub_1000008D8(5u, "  copy asl %s ---> %s\n", v9, v10, v11, v12, v13, v14, __s, a3);
    if ((byte_100010058 & 1) == 0)
    {
      *__str = 0;
      v33 = asl_file_open_read();
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v35 = asl_file_open_write();
        if (v35)
        {
          v34 = v35;
        }

        else
        {
          v34 = 9999;
        }

        asl_file_close();
      }

      v42 = asl_core_error();
      sub_1000008D8(3u, "  FAILED status %u [%s] asl copy %s ---> %s\n", v36, v37, v38, v39, v40, v41, v34, v42, __s, a3);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000012EC(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1000008D8(5u, "  reset ctime %s\n", a3, a4, a5, a6, a7, a8, a1);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = 0x20000000005;
  v10[1] = 0;
  v10[0] = time(0);
  return setattrlist(a1, v11, v10, 0x10uLL, 0);
}

uint64_t sub_100001368(const char *a1)
{
  v2 = opendir(a1);
  if (v2)
  {
    v3 = v2;
    v20 = 0;
    for (i = readdir(v2); i; i = readdir(v3))
    {
      if (i->d_name[0] != 46 || i->d_name[1] && (i->d_name[1] != 46 || i->d_name[2]))
      {
        asprintf(&v20, "%s/%s", a1, i->d_name);
        if (v20)
        {
          sub_100000E5C(v20, v5, v6, v7, v8, v9, v10, v11);
          free(v20);
          v20 = 0;
        }
      }
    }

    closedir(v3);
    sub_100000F80(a1, v12, v13, v14, v15, v16, v17, v18);
  }

  return 0;
}

uint64_t sub_100001428(const char *a1)
{
  v2 = opendir(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  memset(&v8, 0, sizeof(v8));
  v7 = 0;
  v4 = readdir(v2);
  for (i = 0; v4; v4 = readdir(v3))
  {
    if (v4->d_name[0] != 46 || v4->d_name[1] && (v4->d_name[1] != 46 || v4->d_name[2]))
    {
      memset(&v8, 0, sizeof(v8));
      v7 = 0;
      asprintf(&v7, "%s/%s", a1, v4->d_name);
      if (v7 && !stat(v7, &v8) && (v8.st_mode & 0xF000) == 0x8000)
      {
        i += v8.st_size;
        free(v7);
      }
    }
  }

  closedir(v3);
  return i;
}

time_t sub_100001550(const char *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *a1;
  if ((v2 | 0x20) == 0x74)
  {
    v3 = atol(a1 + 1);
    if (v3 || a1[1] == 48)
    {
      if (strchr(a1 + 1, 46))
      {
        return v3;
      }

      else
      {
        return -1;
      }
    }

    return -1;
  }

  memset(&v46, 0, sizeof(v46));
  if ((v2 - 58) < 0xF6u)
  {
    return 1;
  }

  v5 = a1[1];
  if ((v5 - 58) < 0xF6u)
  {
    return 1;
  }

  v6 = a1[2];
  if ((v6 - 58) < 0xF6u)
  {
    return 1;
  }

  v7 = a1[3];
  if ((v7 - 58) < 0xF6u)
  {
    return 1;
  }

  v8 = 1000 * (v2 - 48) + 100 * (v5 - 48);
  v9 = *(a1 + 4);
  v46.tm_year = v8 + ((10 * v6 + 32) & 0xFE) + (v7 - 48) - 1900;
  if (v9 == 46)
  {
    v10 = (a1 + 5);
    v11 = 1;
  }

  else
  {
    v10 = (v9 == 45 ? a1 + 5 : a1 + 4);
    v11 = 0;
  }

  if ((*v10 - 58) < 0xF6u)
  {
    return 1;
  }

  v12 = v10[1];
  if ((v12 - 58) < 0xF6u)
  {
    return 1;
  }

  v13 = v10[2];
  v46.tm_mon = (10 * *v10) + (v12 - 48) + 31;
  v14 = (v13 - 45) >= 2 ? 2 : 3;
  v15 = (v13 - 45) >= 2 ? v10 + 2 : v10 + 3;
  v16 = v10[v14];
  if ((v16 - 58) < 0xF6u)
  {
    return 1;
  }

  v17 = (10 * v16 + 32) & 0xFE;
  v46.tm_mday = v17;
  v18 = v15[1];
  if ((v18 - 58) < 0xF6u)
  {
    return 1;
  }

  v46.tm_mday = v17 + (v18 - 48);
  v19 = v15[2];
  if (v11)
  {
    if (v19 == 46 || !v15[2])
    {
      *&v46.tm_sec = 0;
      v46.tm_hour = 24;
      v46.tm_isdst = -1;
      return mktime(&v46);
    }

    return -1;
  }

  if ((v19 | 0x20) != 0x74)
  {
    return 1;
  }

  v20 = v15[3];
  if ((v20 - 58) < 0xF6u)
  {
    return 1;
  }

  v21 = (10 * v20 + 32) & 0xFE;
  v46.tm_hour = v21;
  v22 = v15[4];
  if ((v22 - 58) < 0xF6u)
  {
    return 1;
  }

  v46.tm_hour = v21 + (v22 - 48);
  v23 = v15 + 5;
  v24 = 5;
  if (v15[5] == 58)
  {
    v24 = 6;
    v23 = v15 + 6;
  }

  v25 = v15[v24];
  if ((v25 - 58) < 0xF6u)
  {
    return 1;
  }

  v26 = (10 * v25 + 32) & 0xFE;
  v46.tm_min = v26;
  v27 = v23[1];
  if ((v27 - 58) < 0xF6u)
  {
    return 1;
  }

  v46.tm_min = v26 + (v27 - 48);
  v28 = v23 + 2;
  v29 = 2;
  if (v23[2] == 58)
  {
    v29 = 3;
    v28 = v23 + 3;
  }

  v30 = v23[v29];
  if ((v30 - 58) < 0xF6u)
  {
    return 1;
  }

  v31 = (10 * v30 + 32) & 0xFE;
  v46.tm_sec = v31;
  v32 = v28[1];
  if ((v32 - 58) < 0xF6u)
  {
    return 1;
  }

  v33 = v31 + (v32 - 48);
  v46.tm_sec = v33;
  v34 = v28[2];
  result = 1;
  if (v34 > 0x59)
  {
    if (v34 == 122 || v34 == 90)
    {
      return timegm(&v46);
    }
  }

  else if (v34 == 43 || v34 == 45)
  {
    v35 = v28[3];
    if ((v35 - 58) >= 0xF6u)
    {
      v36 = (v35 - 48);
      v38 = v28[4];
      v37 = v28 + 4;
      v39 = v38 + 10 * v36 - 48;
      if ((v38 - 58) >= 0xF6u)
      {
        v36 = v39;
        ++v37;
      }

      if (v36 <= 23)
      {
        v40 = *v37;
        if ((v40 - 48) > 0xA)
        {
          v43 = 0;
        }

        else
        {
          v41 = v37[1];
          if ((v41 - 58) < 0xF6u)
          {
            return -1;
          }

          v42 = v40 == 58 ? 0 : 10 * v40 - 480;
          v43 = v42 + (v41 - 48);
          if (v43 > 0x3B)
          {
            return -1;
          }

          v37 += 2;
        }

        v44 = 3600 * v36;
        if (v34 == 45)
        {
          v45 = v44;
        }

        else
        {
          v45 = -v44;
        }

        v46.tm_sec = v45 + v33 + 60 * v43;
        if (*v37 != 46 && *v37)
        {
          return -1;
        }

        return timegm(&v46);
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_100001998(char *a1, time_t a2, int *a3, int *a4)
{
  if (!a1)
  {
    return 0;
  }

  v6 = a2;
  if (!a2)
  {
    v6 = time(0);
  }

  v8 = sub_100001550(a1);
  v9 = 0;
  if ((v8 & 0x8000000000000000) == 0 && v6 >= v8)
  {
    v9 = (v6 - v8);
    if (a3)
    {
      *a3 = -1;
      v10 = strchr(a1, 85);
      if (v10)
      {
        *a3 = atoi(v10 + 1);
      }
    }

    if (a4)
    {
      *a4 = -1;
      v11 = strchr(a1, 71);
      if (v11)
      {
        *a4 = atoi(v11 + 1);
      }
    }
  }

  return v9;
}

uint64_t sub_100001A60(const char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  if (snprintf(__str, 0x400uLL, "%s/%s", a2, a1) <= 1023 && snprintf(v31, 0x400uLL, "%s/%s", a2, a1) <= 1023)
  {
    *&v31[strlen(__str) - 3] = 7368052;
    sub_100000750(v6);
    sub_1000008D8(5u, "  filter %s %s ---> %s\n", v11, v12, v13, v14, v15, v16, __str, &qword_100010008, v31);
    if (byte_100010058)
    {
      v9 = 0;
    }

    else
    {
      v9 = asl_file_open_read();
      if (v9)
      {
        return v9;
      }

      v9 = asl_file_filter_level();
      asl_file_close();
    }

    sub_100000E5C(__str, v17, v18, v19, v20, v21, v22, v23);
    sub_100000E5C(v31, v24, v25, v26, v27, v28, v29, v30);
    return v9;
  }

  return 9999;
}

void sub_100001C14(const char *a1)
{
  if (a1 && !strncmp(a1, "file:///var/log/asl/", 0x14uLL))
  {

    sub_100000E5C(a1 + 7, v2, v3, v4, v5, v6, v7, v8);
  }
}

uint64_t sub_100001C6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (!*(result + 8))
  {
    return 0;
  }

  v9 = *(result + 112);
  if (a2)
  {
    if (*(a2 + 112))
    {
      v9 = *(a2 + 112);
    }

    if (*(a2 + 160))
    {
      v10 = *(a2 + 160);
    }

    else
    {
      v10 = *(result + 160);
    }
  }

  else
  {
    v10 = *(result + 160);
  }

  v251 = 0;
  v252 = 0;
  memset(&v250, 0, sizeof(v250));
  memset(&v249, 0, sizeof(v249));
  sub_1000008D8(5u, "----------------------------------------\n", a3, a4, a5, a6, a7, a8);
  sub_1000008D8(5u, "Processing data store %s\n", v11, v12, v13, v14, v15, v16, *(v8 + 8));
  v17 = *(v8 + 32);
  if (v17)
  {
    memset(&v250, 0, sizeof(v250));
    if (stat(v17, &v250))
    {
      v24 = __error();
      v25 = *(v8 + 32);
      if (*v24 != 2)
      {
        v53 = __error();
        v236 = strerror(*v53);
        sub_1000008D8(3u, "aslmanager error: can't stat archive %s: %s\n", v54, v55, v56, v57, v58, v59, v25, v236);
        return 0xFFFFFFFFLL;
      }

      if (mkdir(*(v8 + 32), 0x1EDu))
      {
        v26 = *(v8 + 32);
        v27 = __error();
        v235 = strerror(*v27);
        sub_1000008D8(3u, "aslmanager error: can't create archive %s: %s\n", v28, v29, v30, v31, v32, v33, v26, v235);
        return 0xFFFFFFFFLL;
      }
    }

    else if ((v250.st_mode & 0xF000) != 0x4000)
    {
      sub_1000008D8(3u, "aslmanager error: archive %s is not a directory", v18, v19, v20, v21, v22, v23, *(v8 + 32));
      return 0xFFFFFFFFLL;
    }
  }

  chdir(*(v8 + 8));
  v252 = time(0);
  localtime_r(&v252, &v249);
  *&v249.tm_sec = 0;
  v249.tm_hour = 0;
  v34 = mktime(&v249);
  v35 = v252;
  v36 = opendir(*(v8 + 8));
  if (!v36)
  {
    return 0xFFFFFFFFLL;
  }

  v37 = v36;
  v240 = v34;
  v38 = readdir(v36);
  v241 = v10;
  v239 = v35;
  if (v38)
  {
    v39 = v38;
    v245 = 0;
    v246 = 0;
    v243 = 0;
    v244 = 0;
    v40 = 0;
    while (1)
    {
      d_name = v39->d_name;
      memset(&v250, 0, sizeof(v250));
      v42 = stat(v39->d_name, &v250) ? 0 : v250.st_size;
      v43 = strrchr(v39->d_name, 46);
      v44 = v43 && strcmp(v43, ".gz") == 0;
      v45 = *d_name;
      if ((v45 - 48) <= 9 || (v45 | 0x20) == 0x74 && v39->d_name[1] - 48 <= 9)
      {
        break;
      }

      if (!strncmp(v39->d_name, "AUX.", 4uLL) && v39->d_name[4] - 48 <= 9 && (v250.st_mode & 0xF000) == 0x4000)
      {
        v46 = sub_100001428(v39->d_name);
        v245 = sub_100000B54(v245, d_name, v46, v44);
LABEL_40:
        v40 += v46;
        goto LABEL_30;
      }

      if (!strncmp(v39->d_name, "BB.AUX.", 7uLL) && v39->d_name[7] - 48 <= 9 && (v250.st_mode & 0xF000) == 0x4000)
      {
        v46 = sub_100001428(v39->d_name);
        v244 = sub_100000B54(v244, d_name, v46, v44);
        goto LABEL_40;
      }

      if (v45 != 46)
      {
        if (v45 != 66 || v39->d_name[1] != 66 || v39->d_name[2] != 46 || v39->d_name[3] - 48 > 9)
        {
          goto LABEL_50;
        }

        v243 = sub_100000B54(v243, v39->d_name, v42, v44);
        goto LABEL_29;
      }

      if (v39->d_name[1] && (v39->d_name[1] != 46 || v39->d_name[2]))
      {
LABEL_50:
        if (strcmp(v39->d_name, "StoreData") && strcmp(v39->d_name, "SweepStore") && strcmp(v39->d_name, "Logs"))
        {
          sub_1000008D8(3u, "aslmanager: unexpected file %s in ASL data store\n", v47, v48, v49, v50, v51, v52, v39->d_name);
        }
      }

LABEL_30:
      v39 = readdir(v37);
      if (!v39)
      {
        goto LABEL_56;
      }
    }

    v246 = sub_100000B54(v246, v39->d_name, v42, v44);
LABEL_29:
    v40 += v42;
    goto LABEL_30;
  }

  v40 = 0;
  v244 = 0;
  v245 = 0;
  v243 = 0;
  v246 = 0;
LABEL_56:
  v242 = v8;
  closedir(v37);
  sub_1000008D8(5u, "Data Store Size = %lu\n", v60, v61, v62, v63, v64, v65, v40);
  asl_core_time_to_str();
  sub_1000008D8(5u, "Data Store YMD Files (TTL = %s)\n", v66, v67, v68, v69, v70, v71, v254);
  if (v246)
  {
    v78 = v246;
    do
    {
      v79 = sub_100001998(*v78, v252, 0, 0);
      asl_core_time_to_str();
      if (v79 <= v9)
      {
        v86 = &unk_100008116;
      }

      else
      {
        v86 = " - expired";
      }

      sub_1000008D8(5u, "  %s   %lu (age %s%s)\n", v80, v81, v82, v83, v84, v85, *v78, v78[1], v254, v86);
      v78 = v78[3];
    }

    while (v78);
  }

  sub_1000008D8(5u, "Data Store AUX Directories\n", v72, v73, v74, v75, v76, v77);
  if (v245)
  {
    v93 = v245;
    do
    {
      v94 = sub_100001998(*v93 + 4, v252, 0, 0) / 0x15180;
      asl_core_time_to_str();
      if (v94 <= v9)
      {
        v101 = &unk_100008116;
      }

      else
      {
        v101 = " - expired";
      }

      sub_1000008D8(5u, "  %s   %lu (age %s)\n", v95, v96, v97, v98, v99, v100, *v93, v93[1], v254, v101);
      v93 = v93[3];
    }

    while (v93);
  }

  sub_1000008D8(5u, "Data Store BB.AUX Directories\n", v87, v88, v89, v90, v91, v92);
  if (v244)
  {
    v108 = v244;
    do
    {
      v109 = sub_100001998(*v108 + 7, v252, 0, 0);
      asl_core_time_to_str();
      if (v109 >> 7 >= 0x2A3)
      {
        v116 = " - expired";
      }

      else
      {
        v116 = &unk_100008116;
      }

      sub_1000008D8(5u, "  %s   %lu (age %s)\n", v110, v111, v112, v113, v114, v115, *v108, v108[1], v254, v116);
      v108 = v108[3];
    }

    while (v108);
  }

  sub_1000008D8(5u, "Data Store BB Files\n", v102, v103, v104, v105, v106, v107);
  for (i = v243; i; i = i[3])
  {
    sub_100001998(*i + 3, v252, 0, 0);
    asl_core_time_to_str();
    sub_1000008D8(5u, "  %s   %lu (age %s)\n", v124, v125, v126, v127, v128, v129, *i, i[1], v254, &unk_100008116);
  }

  sub_1000008D8(5u, "Start YMD File Scan\n", v117, v118, v119, v120, v121, v122);
  v136 = v246;
  if (v246)
  {
    v137 = v242;
    do
    {
      v247 = -1;
      v248 = -1;
      v138 = sub_100001998(*v136, v252, &v248, &v247);
      if (v138 <= v9)
      {
        if ((v136[2] & 1) == 0)
        {
          v141 = v138;
          if (v138)
          {
            v142 = 0;
            v143 = 1;
            LODWORD(v144) = 255;
            do
            {
              if (*(v242 + 80 + v142) - 1 < v138)
              {
                v145 = ~v143;
              }

              else
              {
                v145 = -1;
              }

              v144 = v145 & v144;
              v143 *= 2;
              v142 += 4;
            }

            while (v142 != 32);
            memset(&v250, 0, sizeof(v250));
            v146 = stat(*v136, &v250);
            if (v144 != 255)
            {
              if (v146)
              {
                v147 = 384;
              }

              else
              {
                v147 = v250.st_mode & 0x1FF;
              }

              sub_100001A60(*v136, *(v242 + 8), v144, v147, v248, v247);
            }
          }

          if (v239 - v240 < v141 && (*(v242 + 72) & 0x10) != 0)
          {
            snprintf(__str, 0x400uLL, "%s.gz", *v136);
            sub_1000008D8(5u, "  compress %s ---> %s\n", v148, v149, v150, v151, v152, v153, *v136, __str);
            if ((byte_100010058 & 1) == 0)
            {
              if (sub_100000C78())
              {
                v225 = *__error();
                v226 = __error();
                v227 = strerror(*v226);
                sub_1000008D8(3u, "  FAILED status %d errno %d [%s] compress %s ---> %s\n", v228, v229, v230, v231, v232, v233, 0xFFFFFFFFLL, v225, v227, *v136, __str);
                return 0;
              }

              sub_100000E5C(*v136, v154, v155, v156, v157, v158, v159, v160);
            }
          }
        }
      }

      else
      {
        v140 = *(v242 + 32);
        if (v140)
        {
          v251 = 0;
          asprintf(&v251, "%s/%s", v140, *v136);
          if (!v251)
          {
            return 0xFFFFFFFFLL;
          }

          sub_100001010(v242, *v136, v251, 0);
          free(v251);
        }

        sub_100000E5C(*v136, v139, v130, v131, v132, v133, v134, v135);
        v40 -= v136[1];
        v136[1] = 0;
      }

      v136 = v136[3];
    }

    while (v136);
  }

  else
  {
    v137 = v242;
  }

  sub_1000008D8(5u, "Finished YMD File Scan\n", v130, v131, v132, v133, v134, v135);
  sub_1000008D8(5u, "Start AUX Directory Scan\n", v161, v162, v163, v164, v165, v166);
  if (v245)
  {
    v173 = v245;
    v174 = v241;
    v175 = v243;
    do
    {
      if (sub_100001998(*v173 + 4, v252, 0, 0) > v9)
      {
        v176 = *(v137 + 32);
        if (v176)
        {
          v251 = 0;
          asprintf(&v251, "%s/%s", v176, *v173);
          if (!v251)
          {
            return 0xFFFFFFFFLL;
          }

          sub_100001010(v137, *v173, v251, 0);
          free(v251);
        }

        sub_100001368(*v173);
        v40 -= v173[1];
        v173[1] = 0;
      }

      v173 = v173[3];
    }

    while (v173);
  }

  else
  {
    v174 = v241;
    v175 = v243;
  }

  sub_1000008D8(5u, "Finished AUX Directory Scan\n", v167, v168, v169, v170, v171, v172);
  sub_1000008D8(5u, "Start BB.AUX Directory Scan\n", v177, v178, v179, v180, v181, v182);
  if (v244)
  {
    v189 = v244;
    do
    {
      if (sub_100001998(*v189 + 7, v252, 0, 0))
      {
        v190 = *(v137 + 32);
        if (v190)
        {
          v251 = 0;
          asprintf(&v251, "%s/%s", v190, *v189);
          if (!v251)
          {
            return 0xFFFFFFFFLL;
          }

          sub_100001010(v137, *v189, v251, 0);
          free(v251);
        }

        sub_100001368(*v189);
        v40 -= v189[1];
        v189[1] = 0;
      }

      v189 = v189[3];
    }

    while (v189);
  }

  sub_1000008D8(5u, "Finished BB.AUX Directory Scan\n", v183, v184, v185, v186, v187, v188);
  sub_1000008D8(5u, "Start BB Scan\n", v191, v192, v193, v194, v195, v196);
  if (v175)
  {
    v203 = v175;
    do
    {
      if (sub_100001998(*v203 + 3, v252, 0, 0))
      {
        v205 = *(v137 + 32);
        if (v205)
        {
          v251 = 0;
          asprintf(&v251, "%s/%s", v205, *v203);
          if (!v251)
          {
            return 0xFFFFFFFFLL;
          }

          sub_100001010(v137, *v203, v251, 0);
          free(v251);
        }

        sub_100000E5C(*v203, v204, v197, v198, v199, v200, v201, v202);
        v40 -= v203[1];
        v203[1] = 0;
      }

      v203 = v203[3];
    }

    while (v203);
  }

  sub_1000008D8(5u, "Finished BB Scan\n", v197, v198, v199, v200, v201, v202);
  if (!v174)
  {
    goto LABEL_160;
  }

  if (v40 <= v174)
  {
    goto LABEL_148;
  }

  sub_1000008D8(5u, "Additional YMD Scan\n", v207, v208, v209, v210, v211, v212);
  v213 = v246;
  if (!v246)
  {
    goto LABEL_147;
  }

  do
  {
    while (1)
    {
      if (!v213[1])
      {
        goto LABEL_142;
      }

      if (sub_100001998(*v213, v252, 0, 0))
      {
        break;
      }

      v213 = v213[3];
      if (!v213)
      {
        goto LABEL_147;
      }
    }

    v214 = *(v137 + 32);
    if (v214)
    {
      v251 = 0;
      asprintf(&v251, "%s/%s", v214, *v213);
      if (!v251)
      {
        return 0xFFFFFFFFLL;
      }

      sub_100001010(v137, *v213, v251, 0);
      free(v251);
    }

    sub_100000E5C(*v213, v206, v207, v208, v209, v210, v211, v212);
    v40 -= v213[1];
    v213[1] = 0;
LABEL_142:
    v213 = v213[3];
    if (v213)
    {
      v215 = v40 > v174;
    }

    else
    {
      v215 = 0;
    }
  }

  while (v215);
  if (v40 > v174)
  {
LABEL_147:
    sub_1000008D8(5u, "Additional BB Scan\n", v207, v208, v209, v210, v211, v212);
  }

LABEL_148:
  if (v175 && v40 > v174)
  {
    v216 = v175;
    do
    {
      if (v216[1])
      {
        v217 = *(v137 + 32);
        if (v217)
        {
          v251 = 0;
          asprintf(&v251, "%s/%s", v217, *v216);
          if (!v251)
          {
            return 0xFFFFFFFFLL;
          }

          sub_100001010(v137, *v216, v251, 0);
          free(v251);
        }

        sub_100000E5C(*v216, v206, v207, v208, v209, v210, v211, v212);
        v40 -= v216[1];
        v216[1] = 0;
      }

      v216 = v216[3];
      if (v216)
      {
        v218 = v40 > v174;
      }

      else
      {
        v218 = 0;
      }
    }

    while (v218);
  }

LABEL_160:
  sub_100000C34(v246);
  sub_100000C34(v175);
  sub_100000C34(v245);
  sub_100000C34(v244);
  sub_1000008D8(5u, "Data Store Size = %lu\n", v219, v220, v221, v222, v223, v224, v40, v234, v237, v238);
  return 0;
}

uint64_t sub_1000028D4(const char **a1)
{
  if (!a1 || !a1[1])
  {
    return 0xFFFFFFFFLL;
  }

  v2 = asl_list_src_files(a1);
  if (!v2)
  {
    goto LABEL_30;
  }

  v9 = v2;
  if (LODWORD(v2->__dd_loc))
  {
    goto LABEL_11;
  }

  if ((a1[9] & 0x40) == 0)
  {
    v10 = "    ignore src file %s since it is internal and syslogd will checkpoint it when it needs to be renamed\n";
    goto LABEL_10;
  }

  if (time(0) - v2->__dd_size > 86399)
  {
LABEL_11:
    sub_1000008D8(6u, "    src files\n", v3, v4, v5, v6, v7, v8);
    v19 = 0;
    v20 = v9;
    do
    {
      sub_1000008D8(6u, "      %s\n", v13, v14, v15, v16, v17, v18, *&v20->__dd_fd);
      ++v19;
      v20 = v20->__dd_seek;
    }

    while (v20);
    v21 = asl_list_dst_files(a1);
    v28 = v21;
    v29 = a1[4];
    if (!v29)
    {
      v29 = *a1;
    }

    v74 = v21;
    if (v21)
    {
      sub_1000008D8(6u, "    dst files\n", v22, v23, v24, v25, v26, v27);
      v36 = v28;
      do
      {
        sub_1000008D8(6u, "      %s\n", v30, v31, v32, v33, v34, v35, *&v36->__dd_fd);
        v36 = v36->__dd_seek;
      }

      while (v36);
      v37 = (a1 + 8);
      if ((a1[8] & 2) != 0)
      {
        v38 = v28;
        do
        {
          v39 = *&v38->__dd_fd;
          v40 = strrchr(*&v38->__dd_fd, 46);
          if (v40)
          {
            strcmp(v40, ".gz");
          }

          snprintf(__str, 0x400uLL, "%s/%s", v29, v39);
          v47 = *v37;
          if ((*v37 & 0x10000000) != 0)
          {
            snprintf(v76, 0x400uLL, "%s/%s.%d%s");
          }

          else if ((v47 & 0x20000000) != 0)
          {
            snprintf(v76, 0x400uLL, "%s/%s.%s.%d%s");
          }

          else if ((v47 & 0x40000000) != 0)
          {
            snprintf(v76, 0x400uLL, "%s/%s.%d.%s%s");
          }

          sub_100000DC0(__str, v76, v41, v42, v43, v44, v45, v46);
          v38 = v38->__dd_seek;
        }

        while (v38);
        goto LABEL_49;
      }
    }

    else
    {
      sub_1000008D8(6u, "    no dst files\n", v22, v23, v24, v25, v26, v27);
      v37 = (a1 + 8);
      if ((a1[8] & 2) != 0)
      {
LABEL_49:
        v57 = 0;
        v58 = v9;
        do
        {
          snprintf(__str, 0x400uLL, "%s/%s", *a1, *&v58->__dd_fd);
          v59 = *(a1 + 16);
          if ((v59 & 0x10000000) != 0)
          {
            snprintf(v76, 0x400uLL, "%s/%s.%d");
          }

          else if ((v59 & 0x20000000) != 0)
          {
            snprintf(v76, 0x400uLL, "%s/%s.%s.%d");
          }

          else if ((v59 & 0x40000000) != 0)
          {
            snprintf(v76, 0x400uLL, "%s/%s.%d.%s");
          }

          if (sub_100001010(a1, __str, v76, *(a1 + 18)))
          {
            if ((a1[9] & 0x80) != 0)
            {
              sub_100000EEC(__str, v60, v61, v62, v63, v64, v65, v66);
              sub_1000012EC(__str, v67, v68, v69, v70, v71, v72, v73);
            }

            else
            {
              sub_100000E5C(__str, v60, v61, v62, v63, v64, v65, v66);
            }
          }

          v58 = v58->__dd_seek;
          ++v57;
        }

        while (v58);
LABEL_61:
        asl_out_file_list_free(v9);
        asl_out_file_list_free(v74);
        return 0;
      }
    }

    v48 = v9;
    do
    {
      if ((*(a1 + 73) & 1) != 0 && !v48->__dd_seek)
      {
        break;
      }

      snprintf(__str, 0x400uLL, "%s/%s", *a1, *&v48->__dd_fd);
      if ((a1[9] & 0x40) != 0)
      {
        asl_make_timestamp(v48->__dd_size, *v37, v75, 0x20uLL);
        v49 = *v37;
        if ((*v37 & 0x10000000) != 0)
        {
          snprintf(v76, 0x400uLL, "%s/%s.%s");
        }

        else if ((v49 & 0x20000000) != 0 || (v49 & 0x40000000) != 0)
        {
          snprintf(v76, 0x400uLL, "%s/%s.%s.%s");
        }
      }

      else
      {
        snprintf(v76, 0x400uLL, "%s/%s");
      }

      if (sub_100001010(a1, __str, v76, *(a1 + 18)))
      {
        if ((a1[9] & 0x80) != 0)
        {
          sub_100000EEC(__str, v50, v51, v52, v53, v54, v55, v56);
        }

        else
        {
          sub_100000E5C(__str, v50, v51, v52, v53, v54, v55, v56);
        }
      }

      v48 = v48->__dd_seek;
    }

    while (v48);
    goto LABEL_61;
  }

  v10 = "    ignore src file %s since it is external and less than a day old\n";
LABEL_10:
  sub_1000008D8(6u, v10, v3, v4, v5, v6, v7, v8, *&v9->__dd_fd);
  dd_seek = v9->__dd_seek;
  v9->__dd_seek = 0;
  asl_out_file_list_free(v9);
  v9 = dd_seek;
  if (dd_seek)
  {
    goto LABEL_11;
  }

LABEL_30:
  sub_1000008D8(6u, "    no src files\n", v3, v4, v5, v6, v7, v8);
  return 0;
}

uint64_t sub_100002DD0(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 112);
  if (!v3)
  {
    return 0;
  }

  if (a2 && *(a2 + 112))
  {
    v3 = *(a2 + 112);
  }

  v4 = time(0);
  if (v4 < v3)
  {
    return 0;
  }

  v6 = v4;
  v7 = strrchr(*(a1 + 8), 47);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = asl_list_dst_files(a1);
  v16 = v9;
  *v8 = 0;
  v17 = *(a1 + 32);
  if (!v17)
  {
    v17 = *a1;
  }

  if (v9)
  {
    v18 = v3;
    sub_1000008D8(6u, "    dst files\n", v10, v11, v12, v13, v14, v15);
    v19 = v16;
    do
    {
      v20 = v6 - v19[2];
      asl_core_time_to_str();
      if (v20 <= v18)
      {
        v27 = &unk_100008116;
      }

      else
      {
        v27 = " - expired";
      }

      sub_1000008D8(6u, "      %s (age %s%s)\n", v21, v22, v23, v24, v25, v26, *v19, __str, v27);
      v19 = v19[5];
    }

    while (v19);
    v28 = v16;
    do
    {
      if (v6 - *(v28 + 16) > v18)
      {
        snprintf(__str, 0x400uLL, "%s/%s", v17, *v28);
        sub_100000E5C(__str, v29, v30, v31, v32, v33, v34, v35);
      }

      v28 = *(v28 + 40);
    }

    while (v28);
  }

  else
  {
    sub_1000008D8(6u, "    no dst files\n", v10, v11, v12, v13, v14, v15);
  }

  asl_out_file_list_free(v16);
  result = 0;
  *v8 = 47;
  return result;
}

uint64_t sub_100002FA8(const char **a1, uint64_t a2, char a3, unint64_t *a4)
{
  v7 = a1[20];
  if (a2 && *(a2 + 160))
  {
    v7 = *(a2 + 160);
  }

  if (!a1[1])
  {
    return 0xFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = asl_list_dst_files(a1);
    if (v8)
    {
      v15 = v8;
      v16 = a1[4];
      if (!v16)
      {
        v16 = *a1;
      }

      sub_1000008D8(6u, "    dst files\n", v9, v10, v11, v12, v13, v14);
      v23 = v15;
      do
      {
        sub_1000008D8(6u, "      %s size %lu\n", v17, v18, v19, v20, v21, v22, *v23, v23[4]);
        v23 = v23[5];
      }

      while (v23);
      v24 = 0;
      v25 = v15;
      do
      {
        v26 = *(v25 + 32);
        v25 = *(v25 + 40);
        v24 += v26;
      }

      while (v25);
      if ((a3 & 1) == 0 && v24 > v7)
      {
        v27 = v15;
        do
        {
          snprintf(__str, 0x400uLL, "%s/%s", v16, *v27);
          sub_100000E5C(__str, v28, v29, v30, v31, v32, v33, v34);
          v35 = *(v27 + 32);
          v27 = *(v27 + 40);
          v24 -= v35;
        }

        while (v24 > v7 && v27 != 0);
      }

      if (a4)
      {
        *a4 = v24;
      }

      asl_out_file_list_free(v15);
    }

    else
    {
      sub_1000008D8(6u, "    no dst files\n", v9, v10, v11, v12, v13, v14);
    }
  }

  return 0;
}

uint64_t sub_100003124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 112);
  if (a2)
  {
    if (*(a2 + 112))
    {
      v10 = *(a2 + 112);
    }

    if (*(a2 + 160))
    {
      v11 = *(a2 + 160);
    }

    else
    {
      v11 = *(a1 + 160);
    }
  }

  else
  {
    v11 = *(a1 + 160);
  }

  v12 = *(a1 + 72);
  if ((v12 & 4) != 0)
  {
    sub_1000008D8(5u, "Checking file %s\n", a3, a4, a5, a6, a7, a8, *(a1 + 8));
    sub_1000008D8(5u, "- Rename, move to destination directory, and compress as required\n", v13, v14, v15, v16, v17, v18);
    sub_1000028D4(a1);
    if (v10 && (*(a1 + 73) & 0x80) == 0)
    {
      asl_core_time_to_str();
      sub_1000008D8(5u, "- Check for expired files - TTL = %s\n", v25, v26, v27, v28, v29, v30, v32);
      sub_100002DD0(a1, a2);
    }

    if (v11)
    {
      sub_1000008D8(5u, "- Check total storage used - MAX = %lu\n", v19, v20, v21, v22, v23, v24, v11);
      sub_100002FA8(a1, a2, 0, 0);
    }
  }

  else if ((v12 & 0x2000) != 0 && v10)
  {
    sub_100001C6C(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t sub_100003270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v10 = *(a2 + 72);
  }

  else
  {
    v10 = 0;
  }

  sub_1000008D8(5u, "----------------------------------------\n", a3, a4, a5, a6, a7, a8);
  v18 = *a1;
  if (!*a1)
  {
    v18 = "asl.conf";
  }

  sub_1000008D8(5u, "Processing module %s\n", v12, v13, v14, v15, v16, v17, v18);
  for (i = *(a1 + 16); i; i = *(i + 40))
  {
    if (*(i + 8) == 2)
    {
      v26 = *(i + 24);
      if (!v10 || (*(v26 + 72) & v10) != 0)
      {
        sub_100003124(v26, a2, v19, v20, v21, v22, v23, v24);
      }
    }
  }

  v27 = *a1;
  if (!*a1)
  {
    v27 = "asl.conf";
  }

  sub_1000008D8(5u, "Finished processing module %s\n", v19, v20, v21, v22, v23, v24, v27);
  return 0;
}

uint64_t sub_100003360(uint64_t a1)
{
  if (dword_100010020 || !bootstrap_look_up2())
  {
    size_4 = 0;
    address = 0;
    v1 = asl_msg_to_string();
    v11 = 0;
    if (v1)
    {
      v2 = v1;
      asprintf(&v11, "1\n%s [= ASLOption control]\n", v1);
      free(v2);
    }

    else
    {
      asprintf(&v11, "1\nQ [= ASLOption control]\n");
    }

    if (!v11)
    {
      return 0;
    }

    size = 0;
    size_4 = strlen(v11) + 1;
    v6 = 0;
    v10 = 0;
    if (vm_allocate(mach_task_self_, &address, size_4, 1358954497))
    {
      return 0;
    }

    memmove(address, v11, size_4);
    free(v11);
    v7 = 0;
    if (_asl_server_query_2(dword_100010020, address, size_4, 0, 1, 0, &v10, &size, &v6, &v7) || !v10)
    {
      return 0;
    }

    else
    {
      v3 = asl_msg_list_from_string();
      vm_deallocate(mach_task_self_, v10, size);
    }
  }

  else
  {
    v3 = 0;
    dword_100010020 = 0;
  }

  return v3;
}

uint64_t sub_1000034DC(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = "*";
  }

  sub_1000008D8(5u, "Checkpoint module %s\n", a3, a4, a5, a6, a7, a8, v8);
  if ((byte_100010058 & 1) == 0)
  {
    v9 = asl_msg_new();
    v11 = 0;
    asprintf(&v11, "%s checkpoint", v8);
    asl_msg_set_key_val_op();
    free(v11);
    sub_100003360(v9);
    asl_msg_list_release();
  }

  return 0;
}

uint64_t sub_100003584(int a1, uint64_t a2)
{
  if (geteuid())
  {
    if (a1)
    {
      v86 = 32;
    }

    else
    {
      v86 = 64;
    }

    dword_100010048 = v86;
    sub_1000008D8(3u, "aslmanager must be run by root\n", v4, v5, v6, v7, v8, v9);
    exit(1);
  }

  v10 = 0;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v98 = 0u;
  memset(v97, 0, sizeof(v97));
  LODWORD(v98) = 604800;
  v91 = 0u;
  LODWORD(v91) = 604800;
  v103 = 0;
  v101 = 0x8F0D180uLL;
  memset(v90, 0, sizeof(v90));
  v92 = 0u;
  v93 = 0u;
  v95 = 0u;
  v96 = 0;
  v94 = 0x8F0D180uLL;
  if (a1 < 2)
  {
    goto LABEL_20;
  }

  v11 = 0;
  v10 = 0;
  v12 = 1;
  do
  {
    v13 = *(a2 + 8 * v12);
    if (*v13 == 45)
    {
      if (v13[1] == 113 && !v13[2] || !strcmp(*(a2 + 8 * v12), "-dd"))
      {
        v11 = 1;
      }

      else if (v13[1] == 115)
      {
        v14 = v13[2];
        v15 = v12 + 1;
        if (!v14 && v15 < a1)
        {
          v17 = *(a2 + 8 * v15);
          if (*v17 != 45)
          {
            *(&v97[0] + 1) = strdup(v17);
            v10 = v97;
            ++v12;
          }
        }
      }
    }

    else
    {
      v11 |= strcmp(*(a2 + 8 * v12), "-dd") == 0;
    }

    ++v12;
  }

  while (v12 < a1);
  if ((v11 & 1) == 0)
  {
LABEL_20:
    v89 = 0;
    if (!asl_make_database_dir(0, 0) && !asl_make_database_dir("Logs", &v89))
    {
      __filename = 0;
      v18 = time(0);
      asl_make_timestamp(v18, 32, __str, 0x20uLL);
      asprintf(&__filename, "%s/aslmanager.%s", v89, __str);
      if (__filename)
      {
        qword_100010050 = fopen(__filename, "w");
        if (qword_100010050)
        {
          dword_100010048 |= 0x10u;
        }

        free(__filename);
      }
    }

    free(v89);
  }

  v19 = asl_out_module_init();
  v87 = v19;
  if (v19)
  {
    v26 = v19;
    v27 = *(v19 + 2);
    if (v27 && !v10)
    {
      do
      {
        v28 = *(v27 + 24);
        if (v28 && *(v27 + 8) == 2 && (v29 = *(v28 + 8), v30 = asl_filesystem_path(), !strcmp(v29, v30)))
        {
          v10 = *(v27 + 24);
        }

        else
        {
          v10 = 0;
        }

        v27 = *(v27 + 40);
        if (v27)
        {
          v31 = v10 == 0;
        }

        else
        {
          v31 = 0;
        }
      }

      while (v31);
      v27 = *(v26 + 2);
    }

    for (; v27; v27 = *(v27 + 40))
    {
      if (*(v27 + 8) == 1 && !*v27)
      {
        v32 = *(v27 + 16);
        if (v32)
        {
          if (*v32)
          {
            for (i = *v32 == 61 ? v32 + 1 : *(v27 + 16); ; ++i)
            {
              v34 = *i;
              if (v34 != 32 && v34 != 9)
              {
                break;
              }
            }

            v36 = explode(i, " \t");
            if (v36)
            {
              v37 = v36;
              v38 = -1;
              do
              {
                ++v38;
              }

              while (v36[v38]);
              if (v38 >= 2)
              {
                v39 = *v36;
                if (!strcasecmp(*v36, "aslmanager_debug"))
                {
                  sub_100000820(0x40, v37[1]);
                }

                else if (!strcasecmp(v39, "store_ttl"))
                {
                  *(v10 + 28) = asl_core_str_to_time();
                }

                else if (!strcasecmp(v39, "module_ttl"))
                {
                  asl_core_str_to_time();
                }

                else if (!strcasecmp(v39, "max_store_size"))
                {
                  *(v10 + 20) = asl_core_str_to_size();
                }

                else if (!strcasecmp(v39, "archive"))
                {
                  free(*(v10 + 4));
                  *(v10 + 4) = 0;
                  v41 = v37[1];
                  if (*v41 == 49 && !v41[1])
                  {
                    v42 = v37[2];
                    if (!v42)
                    {
                      v42 = asl_filesystem_path();
                    }

                    *(v10 + 4) = strdup(v42);
                  }
                }

                else if (!strcasecmp(v39, "store_path"))
                {
                  free(*(v10 + 1));
                  *(v10 + 1) = strdup(v37[1]);
                }

                else if (!strcasecmp(v39, "archive_mode"))
                {
                  v40 = strtol(v37[1], 0, 0);
                  *(v10 + 58) = v40;
                  if (!v40 && *__error() == 22)
                  {
                    *(v10 + 58) = 256;
                  }
                }
              }

              free_string_list(v37);
            }
          }
        }
      }
    }
  }

  if (a1 >= 2)
  {
    v43 = 0;
    v44 = 3;
    v45 = 1;
    while (1)
    {
      v46 = *(a2 + 8 * v45);
      v47 = *v46;
      if (v47 == 45 && v46[1] == 97 && !v46[2])
      {
        if (v10)
        {
          v52 = v10;
        }

        else
        {
          v52 = v97;
        }

        v53 = v45 + 1;
        if (v53 >= a1 || (v54 = *(a2 + 8 * v53), *v54 == 45))
        {
          v55 = asl_filesystem_path();
          v56 = strdup(v55);
        }

        else
        {
          v56 = strdup(v54);
          ++v45;
        }

        v59 = v97;
        if (v10)
        {
          v59 = v10;
        }

        *(v59 + 4) = v56;
        *(v59 + 58) = 256;
        v10 = v52;
        goto LABEL_135;
      }

      if (!strcmp(*(a2 + 8 * v45), "-store_ttl"))
      {
        v48 = v45 + 1;
        if (v45 + 1 >= a1 || **(a2 + 8 * v48) == 45)
        {
          goto LABEL_135;
        }

        if (!v10)
        {
          v10 = v97;
        }

        v51 = asl_core_str_to_time();
        goto LABEL_113;
      }

      if (!strcmp(v46, "-module_ttl"))
      {
        v48 = v45 + 1;
        if (v45 + 1 >= a1 || **(a2 + 8 * v48) == 45)
        {
          goto LABEL_135;
        }

        asl_core_str_to_time();
        goto LABEL_114;
      }

      if (!strcmp(v46, "-ttl"))
      {
        break;
      }

      if (!strcmp(v46, "-size"))
      {
        v48 = v45 + 1;
        if (v45 + 1 >= a1 || **(a2 + 8 * v48) == 45)
        {
          goto LABEL_135;
        }

        v57 = asl_core_str_to_size();
        *&v94 = v57;
        if (!v10)
        {
          v10 = v97;
        }

        *(v10 + 20) = v57;
        goto LABEL_114;
      }

      if (!strcmp(v46, "-checkpoint"))
      {
        v44 |= 4u;
        goto LABEL_135;
      }

      if (!strcmp(v46, "-module"))
      {
        v44 &= ~1u;
        v58 = v45 + 1;
        if (v45 + 1 < a1 && **(a2 + 8 * v58) != 45)
        {
          ++v45;
          v43 = *(a2 + 8 * v58);
        }

        goto LABEL_135;
      }

      if (!strcmp(v46, "-asldb"))
      {
        v44 = 1;
        goto LABEL_135;
      }

      if (v47 == 45 && v46[1] == 100 && !v46[2])
      {
        if (a1 <= 2 * v45 || (LODWORD(v48) = v45 + 1, v49 = *(a2 + 8 * (v45 + 1)), *v49 == 45))
        {
          v50 = 0;
          goto LABEL_141;
        }

LABEL_142:
        sub_100000820(0x20, v49);
        goto LABEL_114;
      }

      if (!strcmp(v46, "-dd"))
      {
        byte_100010058 = 1;
        if (a1 <= 2 * v45 || (LODWORD(v48) = v45 + 1, v49 = *(a2 + 8 * (v45 + 1)), *v49 == 45))
        {
          v50 = "l7";
LABEL_141:
          sub_100000820(0x20, v50);
          goto LABEL_135;
        }

        goto LABEL_142;
      }

LABEL_135:
      if (++v45 >= a1)
      {
        goto LABEL_144;
      }
    }

    v48 = v45 + 1;
    if (v45 + 1 >= a1 || **(a2 + 8 * v48) == 45)
    {
      goto LABEL_135;
    }

    v51 = asl_core_str_to_time();
    LODWORD(v91) = v51;
    if (!v10)
    {
      v10 = v97;
    }

LABEL_113:
    *(v10 + 28) = v51;
LABEL_114:
    v45 = v48;
    goto LABEL_135;
  }

  v43 = 0;
  LOBYTE(v44) = 3;
LABEL_144:
  if (v10 && !*(v10 + 1))
  {
    v60 = asl_filesystem_path();
    *(v10 + 1) = strdup(v60);
  }

  if (byte_100010058)
  {
    v61 = " dryrun";
  }

  else
  {
    v61 = &unk_100008116;
  }

  sub_1000008D8(3u, "aslmanager starting%s\n", v20, v21, v22, v23, v24, v25, v61);
  if (v44)
  {
    sub_100001C6C(v10, v90, v63, v64, v65, v66, v67, v68);
  }

  if ((v44 & 2) != 0)
  {
    if ((v44 & 4) != 0)
    {
      sub_1000034DC(v43, v62, v63, v64, v65, v66, v67, v68);
    }

    if (v87)
    {
      v69 = v87;
      do
      {
        if (v43)
        {
          if (!*v69 || strcmp(*v69, v43))
          {
            goto LABEL_163;
          }

          v70 = v90;
          v71 = v69;
        }

        else
        {
          v71 = v69;
          v70 = 0;
        }

        sub_100003270(v71, v70, v63, v64, v65, v66, v67, v68);
LABEL_163:
        v69 = *(v69 + 24);
      }

      while (v69);
    }
  }

  asl_out_module_free(v87);
  sub_1000008D8(5u, "----------------------------------------\n", v72, v73, v74, v75, v76, v77);
  if (byte_100010058)
  {
    v84 = " dryrun";
  }

  else
  {
    v84 = &unk_100008116;
  }

  sub_1000008D8(3u, "aslmanager finished%s\n", v78, v79, v80, v81, v82, v83, v84);
  sub_100000B0C();
  return 0;
}

void sub_100003E60()
{
  if ((byte_100010028 & 1) == 0)
  {
    byte_100010028 = 1;
    v0 = os_transaction_create();
    if (byte_100010029)
    {
      v2[0] = _NSConcreteStackBlock;
      v2[1] = 0x40000000;
      v2[2] = sub_100003FCC;
      v2[3] = &unk_10000C440;
      v2[4] = v0;
      dispatch_async(qword_100010060, v2);
    }

    else
    {
      byte_100010029 = 1;
      v1 = dispatch_walltime(0, 300000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100003F84;
      block[3] = &unk_10000C420;
      block[4] = v0;
      dispatch_after(v1, qword_100010060, block);
    }
  }
}

void sub_100003F84(uint64_t a1)
{
  sub_100003584(0, 0);
  byte_100010028 = 0;
  v2 = *(a1 + 32);

  os_release(v2);
}

void sub_100003FCC(uint64_t a1)
{
  sub_100003584(0, 0);
  byte_100010028 = 0;
  v2 = *(a1 + 32);

  os_release(v2);
}

uint64_t start(int a1, uint64_t a2)
{
  vproc_swap_integer();
  sub_100003584(a1, a2);
  return 0;
}

void sub_10000414C(id a1, void *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_1000041E8;
    handler[3] = &unk_10000C4E0;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }
}

void sub_1000041E8(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    euid = xpc_connection_get_euid(*(a1 + 32));
    reply = xpc_dictionary_create_reply(object);
    if (reply)
    {
      v6 = reply;
      xpc_connection_send_message(*(a1 + 32), reply);
      xpc_release(v6);
    }

    if (euid == geteuid())
    {

      sub_100003E60();
    }
  }

  else
  {

    xpc_get_type(object);
  }
}

char *explode(char *a1, char *__s)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  LOBYTE(v3) = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = 0;
    while (1)
    {
      if (v5)
      {
        if (v3 == v5)
        {
          v5 = 0;
        }

        goto LABEL_16;
      }

      if (strchr(__s, v3))
      {
        break;
      }

      if (v3 == 34)
      {
        v8 = 34;
      }

      else
      {
        v8 = 0;
      }

      if (v3 == 39)
      {
        v5 = 39;
      }

      else
      {
        v5 = v8;
      }

LABEL_16:
      v9 = v7 + 1;
      v3 = v2[++v7];
      if (!v3)
      {
        v10 = v9;
        v7 = v9;
        goto LABEL_19;
      }
    }

    v5 = 0;
    v10 = v7;
LABEL_19:
    v11 = malloc_type_malloc(v10 + 1, 0x8E23C081uLL);
    if (!v11)
    {
      return 0;
    }

    v12 = v11;
    if (v10)
    {
      v13 = v10;
      v14 = v2;
      v15 = v11;
      do
      {
        v16 = *v14++;
        *v15++ = v16;
        --v13;
      }

      while (v13);
    }

    v11[v7] = 0;
    v6 = sub_100004408(v11, v6);
    free(v12);
    v17 = &v2[v10];
    if (!v2[v10])
    {
      break;
    }

    v3 = v2[v10 + 1];
    if (!v2[v10 + 1])
    {
      v6 = sub_100004408(&unk_100008116, v6);
      v3 = v17[1];
    }

    v2 = v17 + 1;
  }

  while (v3);
  return v6;
}

char *sub_100004408(const char *a1, char *__ptr)
{
  v2 = __ptr;
  if (a1)
  {
    if (!__ptr)
    {
      v2 = malloc_type_malloc(0x10uLL, 0x10040436913F5uLL);
      if (!v2)
      {
        return v2;
      }

      v7 = strdup(a1);
      *v2 = v7;
      if (v7)
      {
        *(v2 + 1) = 0;
        return v2;
      }

      goto LABEL_11;
    }

    v4 = 0;
    do
    {
      v5 = *&__ptr[v4];
      v4 += 8;
    }

    while (v5);
    v2 = reallocf(__ptr, (v4 + 8) & 0x7FFFFFFF8);
    if (v2)
    {
      v6 = strdup(a1);
      *&v2[v4 - 8] = v6;
      if (v6)
      {
        *&v2[v4] = 0;
        return v2;
      }

LABEL_11:
      free(v2);
      return 0;
    }
  }

  return v2;
}

void free_string_list(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = a1 + 1;
      do
      {
        free(v2);
        v4 = *v3++;
        v2 = v4;
      }

      while (v4);
    }

    free(a1);
  }
}

char *get_line_from_file(FILE *a1)
{
  __n = 0;
  v1 = fgetln(a1, &__n);
  if (!v1 || !__n)
  {
    return 0;
  }

  v2 = v1;
  v3 = malloc_type_malloc(__n + 1, 0x5B0D4C84uLL);
  v4 = v3;
  if (v3)
  {
    memcpy(v3, v2, __n);
    v5 = &v4[__n];
    if (v4[__n - 1] != 10)
    {
      ++v5;
    }

    *(v5 - 1) = 0;
  }

  return v4;
}

_BYTE *next_word_from_string(unsigned __int8 **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = v1 + 1;
  v2 = *v1;
  v4 = v2 == 39;
  if (v2 != 39)
  {
    v3 = *a1;
  }

  v5 = *v3;
  v6 = v5 == 34;
  v7 = v5 == 34 ? v3 + 1 : v3;
  v8 = v5 == 34 ? v4 + 1 : v2 == 39;
  v9 = -v1 - v8;
  v10 = v7;
  while (1)
  {
    v11 = (~v7 << 32) + (v10 << 32);
    for (i = v9 + v10++; ; i += 2)
    {
      v13 = *(v10 - 1);
      if (v13 != 92)
      {
        break;
      }

      if (!*v10)
      {
        goto LABEL_30;
      }

      v10 += 2;
      v11 += 0x200000000;
    }

    if (!*(v10 - 1))
    {
      break;
    }

    if (v13 == 39)
    {
      v4 = !v4;
    }

    else
    {
      if (v13 == 34)
      {
        v14 = !v6;
      }

      else
      {
        v14 = v6;
      }

      if (v13 == 32)
      {
        v15 = v4 || v6;
        v6 = v14;
        if (!v15)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v6 = v14;
        if (v13 == 9)
        {
          v6 = v14;
          if (!v4)
          {
            v6 = v14;
            if (!v14)
            {
              goto LABEL_30;
            }
          }
        }
      }
    }
  }

  --v10;
LABEL_30:
  *a1 = v10;
  if (v2 == 34 || v2 == 39)
  {
    i -= v2 == v7[v11 >> 32];
  }

  if (!i)
  {
    return 0;
  }

  v16 = malloc_type_malloc(i + 1, 0x2B8FC190uLL);
  v17 = v16;
  if (v16)
  {
    memcpy(v16, v7, i);
    v17[i] = 0;
  }

  return v17;
}

uint64_t asl_make_database_dir(char *a1, char **a2)
{
  v11 = 0;
  if (a2)
  {
    *a2 = 0;
  }

  v4 = asl_filesystem_path();
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (a1)
  {
    if (strchr(a1, 47))
    {
      return 0xFFFFFFFFLL;
    }

    asprintf(&v11, "%s/%s", v5, a1);
    v5 = v11;
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  memset(&v10, 0, sizeof(v10));
  if (!stat(v5, &v10))
  {
    v8 = v11;
    if ((v10.st_mode & 0xF000) == 0x4000)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (*__error() != 2)
  {
    v8 = v11;
LABEL_15:
    free(v8);
    return 0xFFFFFFFFLL;
  }

  v6 = umask(0);
  v7 = mkdir(v5, 0x1EDu);
  umask(v6);
  v8 = v11;
  if (v7)
  {
    free(v11);
    return v7;
  }

LABEL_12:
  if (a2)
  {
    v7 = 0;
    *a2 = v8;
  }

  else
  {
    free(v8);
    return 0;
  }

  return v7;
}

time_t asl_make_timestamp(time_t result, char a2, char *__str, size_t __size)
{
  v38 = result;
  if (__str)
  {
    if ((a2 & 4) != 0)
    {
      memset(&v37, 0, sizeof(v37));
      gmtime_r(&v38, &v37);
      return snprintf(__str, __size, "%d-%02d-%02dT%02d:%02d:%02dZ", (v37.tm_year + 1900));
    }

    if ((a2 & 8) != 0)
    {
      memset(&v37, 0, sizeof(v37));
      gmtime_r(&v38, &v37);
      return snprintf(__str, __size, "%d%02d%02dT%02d%02d%02dZ", (v37.tm_year + 1900));
    }

    if ((a2 & 0x10) != 0)
    {
      memset(&v37, 0, sizeof(v37));
      localtime_r(&v38, &v37);
      LODWORD(v6) = v37.tm_gmtoff;
      if (v37.tm_gmtoff < 0)
      {
        v6 = -v37.tm_gmtoff;
        v37.tm_gmtoff = -v37.tm_gmtoff;
        v7 = 45;
      }

      else
      {
        v7 = 43;
      }

      v10 = v6 / 0xE10uLL;
      v11 = v6 % 0xE10;
      v12 = v6 % 0xE10;
      v13 = v12 / 0x3Cu;
      v14 = v12 % 0x3Cu;
      v15 = (v37.tm_year + 1900);
      v16 = (v37.tm_mon + 1);
      tm_hour = v37.tm_hour;
      tm_mday = v37.tm_mday;
      if (v12 % 0x3Cu)
      {
        v32 = v7;
        v34 = v10;
        tm_min = v37.tm_min;
        tm_sec = v37.tm_sec;
        v26 = v37.tm_mday;
        v27 = v37.tm_hour;
        v24 = (v37.tm_year + 1900);
        v25 = (v37.tm_mon + 1);
        v19 = "%d-%02d-%02dT%02d:%02d:%02d%c%u:%02u:%02u";
        return snprintf(__str, __size, v19, v24, v25, v26, v27, tm_min, tm_sec, v32, v34, v13, v14);
      }

      if (v11 >= 0x3C)
      {
        v35 = v10;
        v36 = v12 / 0x3Cu;
        v31 = v37.tm_sec;
        v33 = v7;
        v29 = v37.tm_min;
        v20 = "%d-%02d-%02dT%02d:%02d:%02d%c%u:%02u";
      }

      else
      {
        v33 = v7;
        v35 = v10;
        v29 = v37.tm_min;
        v31 = v37.tm_sec;
        v20 = "%d-%02d-%02dT%02d:%02d:%02d%c%u";
      }
    }

    else
    {
      if ((a2 & 0x20) == 0)
      {
        return snprintf(__str, __size, "%c%llu");
      }

      memset(&v37, 0, sizeof(v37));
      localtime_r(&v38, &v37);
      LODWORD(v8) = v37.tm_gmtoff;
      if (v37.tm_gmtoff < 0)
      {
        v8 = -v37.tm_gmtoff;
        v37.tm_gmtoff = -v37.tm_gmtoff;
        v9 = 45;
      }

      else
      {
        v9 = 43;
      }

      v21 = v8 / 0xE10uLL;
      v22 = v8 % 0xE10;
      v23 = v8 % 0xE10;
      v13 = v23 / 0x3Cu;
      v14 = v23 % 0x3Cu;
      v15 = (v37.tm_year + 1900);
      v16 = (v37.tm_mon + 1);
      tm_hour = v37.tm_hour;
      tm_mday = v37.tm_mday;
      if (v23 % 0x3Cu)
      {
        v32 = v9;
        v34 = v21;
        tm_min = v37.tm_min;
        tm_sec = v37.tm_sec;
        v26 = v37.tm_mday;
        v27 = v37.tm_hour;
        v24 = (v37.tm_year + 1900);
        v25 = (v37.tm_mon + 1);
        v19 = "%d%02d%02dT%02d%02d%02d%c%02u%02u%02u";
        return snprintf(__str, __size, v19, v24, v25, v26, v27, tm_min, tm_sec, v32, v34, v13, v14);
      }

      if (v22 >= 0x3C)
      {
        v35 = v21;
        v36 = v23 / 0x3Cu;
        v31 = v37.tm_sec;
        v33 = v9;
        v29 = v37.tm_min;
        v20 = "%d%02d%02dT%02d%02d%02d%c%02u%02u";
      }

      else
      {
        v33 = v9;
        v35 = v21;
        v29 = v37.tm_min;
        v31 = v37.tm_sec;
        v20 = "%d%02d%02dT%02d%02d%02d%c%02u";
      }
    }

    return snprintf(__str, __size, v20, v15, v16, tm_mday, tm_hour, v29, v31, v33, v35, v36);
  }

  return result;
}

void asl_out_dst_data_release(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 168);
    if (!v2 || (v3 = v2 - 1, (*(a1 + 168) = v3) == 0))
    {
      free(*a1);
      free(*(a1 + 8));
      free(*(a1 + 16));
      free(*(a1 + 40));
      free(*(a1 + 48));
      free(*(a1 + 32));
      free(*(a1 + 24));
      free(*(a1 + 120));
      free(*(a1 + 136));

      free(a1);
    }
  }
}

uint64_t asl_out_dst_set_access(uint64_t a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if ((a1 & 0x80000000) == 0 && a2)
  {
    v4 = *(a2 + 128);
    if (v4)
    {
      v4 = **(a2 + 120);
    }

    if (*(a2 + 144))
    {
      v5 = **(a2 + 136);
    }

    else
    {
      v5 = 80;
    }

    fchown(a1, v4, v5);
    return a1;
  }

  return result;
}

void asl_out_module_free(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *(v1 + 24);
      free(*v1);
      v3 = *(v1 + 16);
      if (v3)
      {
        do
        {
          v4 = *(v3 + 5);
          v5 = *(v3 + 3);
          if (v5)
          {
            asl_out_dst_data_release(v5);
          }

          if (*v3)
          {
            asl_msg_release();
          }

          free(*(v3 + 2));
          free(v3);
          v3 = v4;
        }

        while (v4);
      }

      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

_DWORD *asl_out_module_new(const char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x10300408DF105C4uLL);
  result = 0;
  if (a1 && v2)
  {
    v4 = strdup(a1);
    *v2 = v4;
    if (v4)
    {
      v2[2] = 1;
      return v2;
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return result;
}

void *asl_out_module_parse_line(uint64_t a1, char *a2)
{
  while (1)
  {
    v4 = *a2;
    if (v4 > 0x1F)
    {
      break;
    }

    if (v4 != 9)
    {
      return 0;
    }

LABEL_6:
    ++a2;
  }

  if (*a2 <= 0x29u)
  {
    if (v4 != 32)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (*a2 > 0x3Du)
  {
    if (v4 != 62)
    {
      if (v4 != 63 && v4 != 81)
      {
        return 0;
      }

LABEL_20:
      if (!a1)
      {
        return 0;
      }

      v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x10B0040B8874213uLL);
      if (!v6)
      {
        return v6;
      }

      v9 = sub_100006C18(a2);
      if (!v9)
      {
        return 0;
      }

      v10 = v9;
      v11 = strchr(v9, 32);
      if (v11)
      {
        v12 = v11;
        goto LABEL_33;
      }

      v12 = strchr(v10, 9);
      if (v12)
      {
LABEL_33:
        v16 = 0;
        *v12 = 0;
      }

      else
      {
        v16 = 1;
      }

      if (!strcasecmp(v10, "ignore"))
      {
        v17 = 3;
      }

      else if (!strcasecmp(v10, "skip"))
      {
        v17 = 4;
      }

      else if (!strcasecmp(v10, "claim"))
      {
        v17 = 5;
      }

      else if (!strcasecmp(v10, "notify"))
      {
        v17 = 6;
      }

      else if (!strcasecmp(v10, "file"))
      {
        v17 = 14;
      }

      else if (!strcasecmp(v10, "asl_file"))
      {
        v17 = 12;
      }

      else if (!strcasecmp(v10, "directory") || !strcasecmp(v10, "dir") || !strcasecmp(v10, "asl_directory") || !strcasecmp(v10, "asl_dir") || !strcasecmp(v10, "store_dir") || !strcasecmp(v10, "store_directory"))
      {
        v17 = 13;
      }

      else if (!strcasecmp(v10, "control"))
      {
        v17 = 16;
      }

      else if (!strcasecmp(v10, "save") || !strcasecmp(v10, "store"))
      {
        v17 = 11;
      }

      else if (!strcasecmp(v10, "access"))
      {
        v17 = 8;
      }

      else if (!strcasecmp(v10, "set"))
      {
        v17 = 9;
      }

      else if (!strcasecmp(v10, "unset"))
      {
        v17 = 10;
      }

      else
      {
        if (strcmp(*a1, "com.apple.asl"))
        {
          goto LABEL_82;
        }

        if (strcasecmp(v10, "broadcast"))
        {
          if (!strcasecmp(v10, "forward"))
          {
            v17 = 15;
            goto LABEL_81;
          }

LABEL_82:
          if (*(v6 + 2))
          {
            if (v16)
            {
              goto LABEL_92;
            }

            for (i = v12 + 1; ; ++i)
            {
              v25 = *(i - 1);
              if (v25 != 32 && v25 != 9)
              {
                break;
              }
            }

            v27 = sub_100006C90(i);
            *(v6 + 2) = v27;
            if (v27)
            {
LABEL_92:
              *(v10 - 1) = 0;
              if (*a2 == 42)
              {
                v28 = asl_msg_new();
              }

              else
              {
                *a2 = 81;
                v28 = asl_msg_from_string();
              }

              *v6 = v28;
              if (v28)
              {
                if (*(v6 + 2) != 11)
                {
                  goto LABEL_109;
                }

                v29 = *(v6 + 2);
                if (v29)
                {
                  if (strncmp(*(v6 + 2), "/var/log/asl", 0xCuLL))
                  {
                    *(v6 + 2) = 12;
                    goto LABEL_109;
                  }

                  v32 = a1;
                  v31 = v29;
                }

                else
                {
                  v31 = "/var/log/asl";
                  v32 = a1;
                }

                v33 = sub_1000053E4(v32, v31, 493);
                if (v33)
                {
                  ++v33[42];
                }

                *(v6 + 3) = v33;
LABEL_109:
                v34 = *(v6 + 2);
                if ((v34 - 12) > 2)
                {
                  goto LABEL_134;
                }

                if (v34 == 13)
                {
                  v35 = 493;
                }

                else
                {
                  v35 = 420;
                }

                v36 = sub_1000053E4(a1, *(v6 + 2), v35);
                if (!v36)
                {
                  *(v6 + 3) = 0;
                  *(v6 + 2) = 0;
                  return v6;
                }

                v37 = v36;
                ++v36[42];
                *(v6 + 3) = v36;
                if (*(v36 + 58) == 4096)
                {
                  *(v36 + 58) = v35;
                }

                v38 = *(v6 + 2);
                if (v38 == 12)
                {
LABEL_122:
                  v40 = v37[18] | 0x1000;
                }

                else
                {
                  if (v38 == 13)
                  {
                    v41 = v36[18];
                    v42 = v41 & 0xFFFFDFF7 | 0x2000;
                    if (!v36[16] && (v41 & 0x100) != 0)
                    {
                      v36[16] |= 0x20u;
                    }
                  }

                  else
                  {
                    if (v38 == 14)
                    {
                      v39 = *(v36 + 3);
                      if (v39 && !strcasecmp(v39, "asl"))
                      {
                        *(v6 + 2) = 12;
                        goto LABEL_122;
                      }

LABEL_130:
                      if (!v37[32])
                      {
                        sub_100006D38(v37, "0");
                        v37 = *(v6 + 3);
                      }

                      if (!v37[36])
                      {
                        sub_100006DE8(v37, "80");
                      }

LABEL_134:
                      v43 = *(a1 + 16);
                      if (v43)
                      {
                        do
                        {
                          v23 = v43;
                          v43 = *(v43 + 40);
                        }

                        while (v43);
                        goto LABEL_136;
                      }

LABEL_137:
                      *(a1 + 16) = v6;
                      return v6;
                    }

                    v42 = v36[18];
                  }

                  v40 = v42 & 0xFFFFFFFB;
                }

                v37[18] = v40;
                goto LABEL_130;
              }

LABEL_100:
              free(*(v6 + 2));
            }
          }

LABEL_101:
          free(v6);
          return 0;
        }

        v17 = 7;
      }

LABEL_81:
      *(v6 + 2) = v17;
      goto LABEL_82;
    }

    sub_1000053E4(a1, a2 + 1, 4096);
    return 0;
  }

  if (v4 == 42)
  {
    goto LABEL_20;
  }

  if (v4 != 61 || !a1)
  {
    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x30uLL, 0x10B0040B8874213uLL);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  for (j = a2 + 1; ; ++j)
  {
    v8 = *j;
    if (v8 != 39 && v8 != 32)
    {
      break;
    }
  }

  *(v5 + 2) = 1;
  if (*j != 91)
  {
    v18 = strchr(a2, 91);
    if (!v18)
    {
      *(v6 + 2) = sub_100006C90(j);
      goto LABEL_77;
    }

    v19 = v18;
    if (!strncmp(v18, "[File ", 6uLL) || !strncmp(v19, "[File\t", 6uLL))
    {
      v20 = 17;
    }

    else if (!strncmp(v19, "[Plist ", 7uLL) || !strncmp(v19, "[Plist\t", 7uLL))
    {
      v20 = 18;
    }

    else
    {
      if (strncmp(v19, "[Profile ", 9uLL) && strncmp(v19, "[Profile\t", 9uLL))
      {
        goto LABEL_75;
      }

      v20 = 19;
    }

    *(v6 + 2) = v20;
LABEL_75:
    *(v19 - 1) = 0;
    *(v6 + 2) = sub_100006C90(j);
    *(v19 - 1) = 8273;
    goto LABEL_76;
  }

  v13 = sub_100006C18(a2);
  if (!v13)
  {
    goto LABEL_101;
  }

  v14 = v13;
  *(v6 + 2) = sub_100006C90(v13);
  if (*(v14 - 1) == 93)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  v14[v15] = 0;
  *a2 = 81;
LABEL_76:
  v21 = asl_msg_from_string();
  *v6 = v21;
  if (!v21)
  {
    goto LABEL_100;
  }

LABEL_77:
  v22 = *(a1 + 16);
  if (!v22)
  {
    goto LABEL_137;
  }

  do
  {
    v23 = v22;
    v22 = *(v22 + 40);
  }

  while (v22);
LABEL_136:
  *(v23 + 40) = v6;
  return v6;
}

unsigned int *sub_1000053E4(uint64_t a1, unsigned __int8 *a2, __int16 a3)
{
  v3 = 0;
  if (!a1 || !a2)
  {
    return v3;
  }

  v5 = a1;
  while (1)
  {
    v6 = *a2;
    if (v6 != 32 && v6 != 9)
    {
      break;
    }

    ++a2;
  }

  __s = 0;
  v56 = a2;
  v8 = next_word_from_string(&v56);
  __s = v8;
  if (!v8)
  {
    return 0;
  }

  v9 = explode(v8, "/");
  v10 = asl_string_new();
  LOBYTE(v11) = 0;
  if (!v9 || !v10)
  {
    v22 = 0;
    goto LABEL_46;
  }

  v53 = a3;
  v54 = v5;
  v12 = 5;
  do
  {
    v13 = *v9;
    if (!*v9)
    {
      free_string_list(v9);
      v9 = 0;
      LOBYTE(v11) = 0;
      goto LABEL_45;
    }

    v14 = 0;
    v11 = 0;
    v15 = 1;
    v16 = v9;
    do
    {
      if (!strncmp(v13, "$ENV(", 5uLL))
      {
        v17 = strchr(v13, 41);
        if (v17)
        {
          *v17 = 0;
          v13 = *v16;
        }

        v18 = getenv(v13 + 5);
        if (v18)
        {
          if (*v18 != 47)
          {
            asl_string_append_char_no_encoding();
          }

          asl_string_append_no_encoding();
          v14 = 1;
        }

LABEL_26:
        if (v11)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      if (v15 == 1)
      {
        if (!**v9)
        {
          goto LABEL_26;
        }
      }

      else
      {
        asl_string_append_char_no_encoding();
      }

      asl_string_append_no_encoding();
      if (v11)
      {
LABEL_27:
        v11 = 1;
        goto LABEL_34;
      }

LABEL_30:
      v19 = *v16;
      v11 = **v16 == 46 && v19[1] == 46 && v19[2] == 0;
LABEL_34:
      v16 = &v9[v15];
      v13 = *v16;
      ++v15;
    }

    while (*v16);
    free_string_list(v9);
    if (v14 != 1 || v11)
    {
      v9 = 0;
      v21 = v12;
      break;
    }

    free(__s);
    __s = asl_string_release_return_bytes();
    v20 = asl_string_new();
    v9 = explode(__s, "/");
    v21 = v12 - 1;
    if (!v9)
    {
      break;
    }

    if (v12 < 2)
    {
      break;
    }

    --v12;
  }

  while (v20);
  v12 = v21;
LABEL_45:
  v22 = v12 == 0;
  v5 = v54;
  a3 = v53;
LABEL_46:
  free(__s);
  free_string_list(v9);
  if (v11 || v22)
  {
    asl_string_release();
    return 0;
  }

  v23 = asl_string_release_return_bytes();
  __s = v23;
  for (i = *(v5 + 16); i; i = *(i + 40))
  {
    if (*(i + 8) == 2)
    {
      v3 = *(i + 24);
      if (v3)
      {
        v25 = *(v3 + 1);
        if (v23 && v25)
        {
          if (*v23 != 47)
          {
            v26 = strrchr(*(v3 + 1), 47);
            if (v26)
            {
              v25 = v26 + 1;
            }
          }

          if (!strcmp(v23, v25))
          {
LABEL_184:
            free(v23);
            return v3;
          }
        }

        else if (!(v23 | v25))
        {
          goto LABEL_184;
        }
      }
    }
  }

  if (*v23 == 47)
  {
    v27 = 8;
    if (strncmp(v23, "/var/log/", 9uLL))
    {
      if (!strncmp(v23, "/Library/Logs/", 0xEuLL))
      {
        v27 = 8;
      }

      else
      {
        v27 = 40;
      }
    }
  }

  else
  {
    if (!strcmp(*v5, "com.apple.asl"))
    {
      asprintf(&__s, "%s/%s");
    }

    else
    {
      asprintf(&__s, "%s/module/%s/%s");
    }

    free(v23);
    v27 = 8;
  }

  v28 = malloc_type_calloc(1uLL, 0x30uLL, 0x10B0040B8874213uLL);
  v29 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10D00407E9428A6uLL);
  v3 = v29;
  if (!v28 || !v29)
  {
    free(__s);
    free(v28);
    free(v3);
    return 0;
  }

  v29[42] = 1;
  v30 = __s;
  *(v29 + 1) = __s;
  v31 = strrchr(v30, 47);
  if (v31)
  {
    v32 = v31;
    *v31 = 0;
    *v3 = strdup(*(v3 + 1));
    *v32 = 47;
    v30 = __s;
  }

  *(v3 + 58) = a3;
  v3[28] = 604800;
  v3[18] = v27;
  v33 = strrchr(v30, 47);
  if (v33)
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = v30;
  }

  v35 = strrchr(v30, 46);
  if (v35)
  {
    v36 = v35;
    *v35 = 0;
    *(v3 + 6) = strdup(v35 + 1);
    *(v3 + 5) = strdup(v34);
    *v36 = 46;
  }

  else
  {
    *(v3 + 5) = strdup(v34);
  }

  v38 = next_word_from_string(&v56);
  if (v38)
  {
    v39 = v38;
    do
    {
      if (!strncasecmp(v39, "mode=", 5uLL))
      {
        *(v3 + 58) = strtol(v39 + 5, 0, 0);
      }

      else if (!strncasecmp(v39, "uid=", 4uLL))
      {
        sub_100006D38(v3, v39 + 4);
      }

      else if (!strncasecmp(v39, "gid=", 4uLL))
      {
        sub_100006DE8(v3, v39 + 4);
      }

      else
      {
        if (!strncasecmp(v39, "fmt=", 4uLL))
        {
          v41 = v39 + 4;
LABEL_115:
          *(v3 + 3) = sub_100006E98(v41);
          goto LABEL_129;
        }

        if (!strncasecmp(v39, "format=", 7uLL))
        {
          v41 = v39 + 7;
          goto LABEL_115;
        }

        if (!strncasecmp(v39, "dest=", 5uLL))
        {
          v42 = v39 + 5;
LABEL_118:
          *(v3 + 4) = sub_100006C90(v42);
          goto LABEL_129;
        }

        if (!strncasecmp(v39, "dst=", 4uLL))
        {
          v42 = v39 + 4;
          goto LABEL_118;
        }

        if (!strncasecmp(v39, "coalesce=", 9uLL))
        {
          if (strncasecmp(v39 + 9, "0", 1uLL) && strncasecmp(v39 + 9, "off", 3uLL) && strncasecmp(v39 + 9, "false", 5uLL))
          {
            goto LABEL_129;
          }

          v40 = v3[18] & 0xFFFFFFF7;
          goto LABEL_128;
        }

        if (!strncasecmp(v39, "compress", 8uLL))
        {
          v40 = v3[18] | 0x10;
          goto LABEL_128;
        }

        if (!strncasecmp(v39, "extern", 6uLL))
        {
          v40 = v3[18] | 0x40;
          goto LABEL_128;
        }

        if (!strncasecmp(v39, "truncate", 8uLL))
        {
          v40 = v3[18] | 0x80;
          goto LABEL_128;
        }

        if (!strncasecmp(v39, "dir", 3uLL))
        {
          v40 = v3[18] | 0x2000;
          goto LABEL_128;
        }

        if (!strncasecmp(v39, "soft", 4uLL))
        {
          v40 = v3[18] | 0x800;
          goto LABEL_128;
        }

        if (!strncasecmp(v39, "file_max=", 9uLL))
        {
          *(v3 + 19) = asl_core_str_to_size();
          goto LABEL_129;
        }

        if (!strncasecmp(v39, "all_max=", 8uLL))
        {
          *(v3 + 20) = asl_core_str_to_size();
          goto LABEL_129;
        }

        if (!strncasecmp(v39, "style=", 6uLL) || !strncasecmp(v39, "rotate=", 7uLL))
        {
          v43 = 6;
          if (*v39 == 114)
          {
            v43 = 7;
          }

          if (sub_100006F78(v3, &v39[v43]))
          {
            goto LABEL_129;
          }

LABEL_141:
          v40 = v3[18] | 4;
LABEL_128:
          v3[18] = v40;
          goto LABEL_129;
        }

        if (!strncasecmp(v39, "rotate", 6uLL))
        {
          if (*(v3 + 6))
          {
            v44 = 536870913;
          }

          else
          {
            v44 = 268435457;
          }

          v3[16] = v44;
          goto LABEL_141;
        }

        if (!strncasecmp(v39, "crashlog", 8uLL))
        {
          v40 = v3[18] & 0xFFFFFAF3 | 0x504;
          goto LABEL_128;
        }

        if (!strncasecmp(v39, "basestamp", 9uLL))
        {
          v40 = v3[18] | 0x100;
          goto LABEL_128;
        }

        if (!strncasecmp(v39, "link", 4uLL) || !strncasecmp(v39, "symlink", 7uLL))
        {
          v40 = v3[18] | 0x200;
          goto LABEL_128;
        }

        if (!strncasecmp(v39, "ttl", 3uLL))
        {
          v45 = v39[3];
          if (v45 == 61)
          {
            v3[28] = asl_core_str_to_time();
          }

          else if ((v45 & 0xF8) == 0x30 && v39[4] == 61)
          {
            v3[(v45 - 48) + 20] = asl_core_str_to_time();
          }

          goto LABEL_129;
        }

        if (!strncasecmp(v39, "size_only", 9uLL))
        {
          v40 = v3[18] | 0x8000;
          goto LABEL_128;
        }
      }

LABEL_129:
      free(v39);
      v39 = next_word_from_string(&v56);
    }

    while (v39);
  }

  v46 = *(v3 + 1);
  if (!strncasecmp(v46, "/Library/Logs/CrashReporter", 0x1BuLL) || !strncasecmp(v46, "/var/mobile/Library/Logs/CrashReporter", 0x26uLL) || !strncasecmp(v46, "/private/var/mobile/Library/Logs/CrashReporter", 0x2EuLL))
  {
    v3[18] = v3[18] & 0xFFFFFAF3 | 0x504;
  }

  v47 = v3[28];
  for (j = 20; j != 28; ++j)
  {
    v49 = v3[j];
    if (v49 > v47)
    {
      v3[28] = v49;
      v47 = v49;
    }
  }

  v50 = *(v3 + 3);
  if (!v50)
  {
    v50 = strdup("std");
    *(v3 + 3) = v50;
  }

  if (strcmp(v50, "std") && strcmp(v50, "bsd"))
  {
    v3[18] &= ~8u;
  }

  if (!strcmp(v50, "std") || !strcmp(v50, "bsd") || !strcmp(v50, "msg"))
  {
    v51 = v3[18] | 0x4000;
    v3[18] = v51;
  }

  else
  {
    v51 = v3[18];
  }

  if ((~v51 & 0x102) == 0)
  {
    v51 = v51 & 0xFFFFFFFC | 1;
    v3[18] = v51;
  }

  if (!strcmp(v50, "raw"))
  {
    *(v3 + 7) = "sec";
  }

  if (!strcmp(v46, "/var/log/asl"))
  {
    v51 = 0x2000;
    v3[18] = 0x2000;
  }

  if (!*(v3 + 19))
  {
    v52 = *(v3 + 20);
    *(v3 + 19) = v52;
    if ((v51 & 0x8000) == 0)
    {
      goto LABEL_181;
    }

    if (!v52)
    {
LABEL_180:
      v51 &= ~0x8000u;
      v3[18] = v51;
      goto LABEL_181;
    }

LABEL_179:
    if (*(v3 + 20))
    {
      goto LABEL_181;
    }

    goto LABEL_180;
  }

  if ((v51 & 0x8000) != 0)
  {
    goto LABEL_179;
  }

LABEL_181:
  if ((~v51 & 0x8400) == 0)
  {
    v3[18] = v51 & 0xFFFF7FFF;
  }

  *(v28 + 2) = 2;
  *(v28 + 3) = v3;
  *(v28 + 5) = *(v5 + 16);
  *(v5 + 16) = v28;
  return v3;
}

_DWORD *asl_out_module_init_from_file(const char *a1, FILE *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = asl_out_module_new(a1);
  if (v3)
  {
    line_from_file = get_line_from_file(a2);
    if (line_from_file)
    {
      v5 = line_from_file;
      do
      {
        asl_out_module_parse_line(v3, v5);
        free(v5);
        v5 = get_line_from_file(a2);
      }

      while (v5);
    }
  }

  return v3;
}

_DWORD *asl_out_module_init()
{
  *v5 = 0;
  sub_100006054(v5, "/usr/local/etc/asl", 2);
  sub_100006054(v5, "/etc/asl", 0);
  v0 = *v5;
  if (!sub_1000061EC(*v5, "com.apple.asl"))
  {
    v2 = fopen("/etc/asl.conf", "r");
    if (v2)
    {
      v3 = v2;
      v4 = asl_out_module_init_from_file("com.apple.asl", v2);
      fclose(v3);
      v0 = *v5;
      if (v4)
      {
        *(v4 + 3) = *v5;
        return v4;
      }
    }

    else
    {
      return *v5;
    }
  }

  return v0;
}

DIR *sub_100006054(DIR *result, char *a2, int a3)
{
  if (result && a2)
  {
    p_dd_fd = &result->__dd_fd;
    v6 = *&result->__dd_fd;
    if (*&result->__dd_fd)
    {
      do
      {
        v7 = v6;
        v6 = *(v6 + 24);
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    result = opendir(a2);
    if (result)
    {
      v8 = result;
      v9 = "%s/%s";
      while (1)
      {
        v10 = readdir(v8);
        if (!v10)
        {
          break;
        }

        d_name = v10->d_name;
        if (v10->d_name[0] != 46 && !sub_1000061EC(*p_dd_fd, d_name))
        {
          v12 = v9;
          snprintf(__str, 0x400uLL, v9, a2, d_name);
          v13 = fopen(__str, "r");
          if (v13 && (v14 = v13, v15 = asl_out_module_init_from_file(d_name, v13), fclose(v14), v15))
          {
            v15[2] |= a3;
            v16 = strcmp(d_name, "com.apple.asl");
            v17 = *p_dd_fd;
            if (v16)
            {
              if (v17)
              {
                *(v7 + 3) = v15;
              }

              else
              {
                *p_dd_fd = v15;
              }
            }

            else
            {
              *(v15 + 3) = v17;
              *p_dd_fd = v15;
              if (v7)
              {
                v15 = v7;
              }
            }
          }

          else
          {
            v15 = v7;
          }

          v7 = v15;
          v9 = v12;
        }
      }

      return closedir(v8);
    }
  }

  return result;
}

uint64_t sub_1000061EC(uint64_t a1, char *__s2)
{
  result = 0;
  if (a1 && __s2)
  {
    while (!*a1 || strcmp(*a1, __s2))
    {
      a1 = *(a1 + 24);
      if (!a1)
      {
        return 0;
      }
    }

    return a1;
  }

  return result;
}

void asl_out_file_list_free(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      free(*v1);
      v2 = *(v1 + 40);
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t _check_file_name(char *a1, char *__s, const char *a3, int a4, uint64_t a5, char **a6)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  if (!__s)
  {
    return result;
  }

  result = strlen(__s);
  if (!result)
  {
    return result;
  }

  v13 = result;
  if (a3)
  {
    v14 = strlen(a3);
    if (!a6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = 0;
  if (a6)
  {
LABEL_6:
    *a6 = 0;
  }

LABEL_7:
  if (strncmp(a1, __s, v13))
  {
    return 0;
  }

  v15 = strrchr(a1, 46);
  v16 = v15;
  if (v15)
  {
    v17 = strcmp(v15, ".gz") == 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = &a1[v13];
  if ((a4 & 0x10000000) == 0)
  {
    if ((a4 & 0x20000000) == 0)
    {
      if ((a4 & 0x40000000) == 0 || *v18 != 46)
      {
        return 0;
      }

      v19 = v18 + 1;
      if (strncmp(v18 + 1, a3, v14) || (v19 += v14, result = a5, *v19))
      {
        v20 = v17 ? &v16[-v14] : v16 + 1;
        v24 = strncmp(v20, a3, v14);
        result = v24 == 0;
        if (a6)
        {
          if (!v24)
          {
            v23 = v19;
            goto LABEL_35;
          }
        }
      }

      return result;
    }

    if (*v18 != 46)
    {
      return 0;
    }

    v21 = v18 + 1;
    if (strncmp(v18 + 1, a3, v14))
    {
      return 0;
    }

    v18 = &v21[v14];
  }

  result = a5;
  if (*v18)
  {
    if (*v18 != 46)
    {
      return 0;
    }

    v22 = v18 + 1;
    result = v22 != v16;
    if (a6)
    {
      if (v22 != v16)
      {
        v23 = v22;
LABEL_35:
        v25 = strdup(v23);
        *a6 = v25;
        v26 = strchr(v25, 46);
        if (v26)
        {
          *v26 = 0;
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t _parse_stamp_style(uint64_t result, char a2, int *a3, time_t *a4)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (*result != 84)
  {
    v9 = 0;
    do
    {
      v10 = *(result + v9);
      if (!*(result + v9))
      {
        goto LABEL_13;
      }

      ++v9;
    }

    while ((v10 - 48) < 0xA);
    if (!strcmp((result + v9), ".gz"))
    {
LABEL_13:
      if (a3)
      {
        *a3 = atoi(v5);
      }

      return 2;
    }

    memset(&v13, 0, sizeof(v13));
    if ((a2 & 0x14) != 0)
    {
      v11 = sscanf(v5, "%d-%d-%dT%d:%d:%d%c%u:%u:%u", &v13.tm_year, &v13.tm_mon, &v13 | 0xC, &v13.tm_hour);
    }

    else
    {
      if ((a2 & 0x28) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      v11 = sscanf(v5, "%4d%2d%2dT%2d%2d%2d%c%2u%2u%2u", &v13.tm_year, &v13.tm_mon, &v13 | 0xC, &v13.tm_hour);
    }

    if (v11 == 6)
    {
      *&v13.tm_mon = vadd_s32(*&v13.tm_mon, 0xFFFFF894FFFFFFFFLL);
      v13.tm_isdst = -1;
      v12 = mktime(&v13);
      if (a4)
      {
        *a4 = v12;
      }

      return 3;
    }

    return 0xFFFFFFFFLL;
  }

  v6 = atoi((result + 1));
  if (!v6 && (*(v5 + 1) != 48 || *(v5 + 2)))
  {
    return 0xFFFFFFFFLL;
  }

  if (a4)
  {
    *a4 = v6;
  }

  return 1;
}

DIR *asl_list_log_files(char *a1, char *a2, const char *a3, int a4, uint64_t a5)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = opendir(a1);
      if (result)
      {
        v11 = result;
        v36 = 0;
        v35 = 0;
        memset(&v34, 0, sizeof(v34));
        v12 = readdir(result);
        if (v12)
        {
          v32 = 0;
          if (a4)
          {
            v13 = 1;
          }

          else
          {
            v13 = 2;
          }

          if ((a4 & 0x3C) != 0)
          {
            v14 = 3;
          }

          else
          {
            v14 = 0;
          }

          if ((a4 & 3) == 0)
          {
            v13 = v14;
          }

          v31 = v13;
          while (1)
          {
            v33 = 0;
            d_name = v12->d_name;
            if (!_check_file_name(v12->d_name, a2, a3, a4, a5, &v33))
            {
              goto LABEL_47;
            }

            v36 = -1;
            v35 = 0;
            v16 = _parse_stamp_style(v33, a4, &v36, &v35);
            free(v33);
            if (v16 == -1)
            {
              goto LABEL_47;
            }

            snprintf(__str, 0x400uLL, "%s/%s", a1, d_name);
            memset(&v34, 0, sizeof(v34));
            v17 = lstat(__str, &v34);
            if (!v17 && (v34.st_mode & 0xF000) == 0xA000)
            {
              goto LABEL_47;
            }

            v18 = v16 == 0;
            if (v16 == 1)
            {
              v18 = a5;
            }

            if ((v18 & 1) == 0 && v16 != v31)
            {
              goto LABEL_47;
            }

            v19 = a1;
            v20 = malloc_type_calloc(1uLL, 0x38uLL, 0x1030040AD7885B1uLL);
            if (!v20)
            {
              asl_out_file_list_free(v32);
              return 0;
            }

            v21 = v20;
            *v20 = strdup(d_name);
            *(v21 + 2) = v16;
            v22 = v35;
            v21[2] = v35;
            v23 = v36;
            *(v21 + 6) = v36;
            if (v17)
            {
              break;
            }

            v21[4] = v34.st_size;
            v24 = v32;
            if (v16 != 2)
            {
              goto LABEL_34;
            }

            tv_sec = v34.st_birthtimespec.tv_sec;
            v21[2] = v34.st_birthtimespec.tv_sec;
            if (tv_sec)
            {
LABEL_28:
              if (v24)
              {
                goto LABEL_29;
              }

              goto LABEL_43;
            }

            v21[2] = v34.st_mtimespec.tv_sec;
            if (v32)
            {
LABEL_29:
              if (v23 != -1)
              {
                v26 = v24;
                if (v23 <= *(v24 + 24))
                {
                  do
                  {
                    v27 = v26;
                    v26 = *(v26 + 40);
                    if (!v26)
                    {
                      v27[5] = v21;
                      v29 = v21;
                      v21 = v27;
                      goto LABEL_45;
                    }
                  }

                  while (v23 <= *(v26 + 24));
                  v21[5] = v26;
                  v27[5] = v21;
                  v21[6] = v27;
LABEL_40:
                  v29 = v21[5];
                  goto LABEL_45;
                }
              }

LABEL_36:
              v21[5] = v24;
              v29 = v24;
              v32 = v21;
LABEL_45:
              v29[6] = v21;
              goto LABEL_46;
            }

LABEL_43:
            v32 = v21;
LABEL_46:
            a1 = v19;
LABEL_47:
            v12 = readdir(v11);
            if (!v12)
            {
              goto LABEL_50;
            }
          }

          v24 = v32;
          if (v16 == 2)
          {
            goto LABEL_28;
          }

LABEL_34:
          if (v24)
          {
            v28 = v24;
            if (v22 < *(v24 + 16))
            {
              goto LABEL_36;
            }

            while (1)
            {
              v30 = v28;
              v28 = *(v28 + 40);
              if (!v28)
              {
                break;
              }

              if (v22 < *(v28 + 16))
              {
                v21[5] = v28;
                v30[5] = v21;
                v21[6] = v30;
                goto LABEL_40;
              }
            }

            v30[5] = v21;
            v29 = v21;
            v21 = v30;
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        v32 = 0;
LABEL_50:
        closedir(v11);
        return v32;
      }
    }
  }

  return result;
}

DIR *asl_list_src_files(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  if ((*(a1 + 72) & 0x40) != 0)
  {
    memset(&v15, 0, sizeof(v15));
    v10 = 0;
    if (!stat(v2, &v15) && (v15.st_mode & 0xF000) == 0x8000)
    {
      if (v15.st_size)
      {
        v10 = malloc_type_calloc(1uLL, 0x38uLL, 0x1030040AD7885B1uLL);
        if (v10)
        {
          v11 = *(a1 + 8);
          v12 = strrchr(v11, 47);
          v13 = v12 ? v12 + 1 : v11;
          *v10 = strdup(v13);
          tv_sec = v15.st_birthtimespec.tv_sec;
          v10[2] = v15.st_birthtimespec.tv_sec;
          if (!tv_sec)
          {
            v10[2] = v15.st_mtimespec.tv_sec;
          }
        }
      }
    }

    return v10;
  }

  if ((*(a1 + 72) & 0x110) == 0x100 && *(a1 + 32) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 64);
  if ((v5 & 2) != 0)
  {
    v6 = (v5 & 0xFFFFFFFC) + 1;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  v7 = *a1;
  v8 = *(a1 + 48);

  return asl_list_log_files(v7, v3, v8, v6, 1);
}

DIR *asl_list_dst_files(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = *a1;
  }

  return asl_list_log_files(v2, v1, *(a1 + 48), *(a1 + 64), 0);
}

uint64_t sub_100006C18(uint64_t result)
{
  if (result)
  {
    do
    {
      while (1)
      {
        v2 = *++result;
        v1 = v2;
        if (v2 <= 31)
        {
          break;
        }

        if (v1 != 32)
        {
          if (v1 != 91)
          {
            return result;
          }

          do
          {
            v3 = *(result + 1);
            if (v3 == 92)
            {
              v4 = *(result + 2);
              v5 = v4 == 93;
              if (v4 == 93)
              {
                v6 = 3;
              }

              else
              {
                v6 = 2;
              }

              v3 = *(result + v6);
              if (v5)
              {
                result += 3;
              }

              else
              {
                result += 2;
              }
            }

            else
            {
              ++result;
            }
          }

          while (v3 != 93);
        }
      }
    }

    while (v1 == 9);
    if (!v1)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_100006C90(char *__s)
{
  if (!__s)
  {
    return 0;
  }

  for (i = __s; ; ++i)
  {
    v2 = *i;
    if (v2 != 32 && v2 != 9)
    {
      break;
    }
  }

  v4 = strlen(i);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  while (1)
  {
    v6 = i[v5 - 1];
    if (v6 != 32 && v6 != 9)
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  v10 = malloc_type_malloc(v5 + 1, 0x2AC3AEBBuLL);
  v8 = v10;
  if (v10)
  {
    memcpy(v10, i, v5);
    v8[v5] = 0;
  }

  return v8;
}

_DWORD *sub_100006D38(_DWORD *result, char *a2)
{
  if (result && a2)
  {
    v2 = result;
    pw_uid = atoi(a2);
    if (pw_uid == 501)
    {
      v4 = getpwnam("mobile");
      if (v4)
      {
        pw_uid = v4->pw_uid;
      }

      else
      {
        pw_uid = 501;
      }
    }

    v5 = v2[32];
    result = *(v2 + 15);
    if (v5)
    {
      v6 = v2[32];
      v7 = *(v2 + 15);
      while (1)
      {
        v8 = *v7++;
        if (v8 == pw_uid)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      result = reallocf(result, 4 * (v5 + 1));
      *(v2 + 15) = result;
      if (result)
      {
        v9 = v2[32];
        v2[32] = v9 + 1;
        result[v9] = pw_uid;
      }

      else
      {
        v2[32] = 0;
      }
    }
  }

  return result;
}

_DWORD *sub_100006DE8(_DWORD *result, char *a2)
{
  if (result && a2)
  {
    v2 = result;
    pw_gid = atoi(a2);
    if (pw_gid == 501)
    {
      v4 = getpwnam("mobile");
      if (v4)
      {
        pw_gid = v4->pw_gid;
      }

      else
      {
        pw_gid = 501;
      }
    }

    v5 = v2[36];
    result = *(v2 + 17);
    if (v5)
    {
      v6 = v2[36];
      v7 = *(v2 + 17);
      while (1)
      {
        v8 = *v7++;
        if (v8 == pw_gid)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      result = reallocf(result, 4 * (v5 + 1));
      *(v2 + 17) = result;
      if (result)
      {
        v9 = v2[36];
        v2[36] = v9 + 1;
        result[v9] = pw_gid;
      }

      else
      {
        v2[36] = 0;
      }
    }
  }

  return result;
}

const char *sub_100006E98(const char *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = strlen(result);
  v3 = v2;
  if (v2 >= 2)
  {
    v4 = *v1;
    if (v4 != 39 && v4 != 34 || v1[v2 - 1] != v4)
    {
LABEL_8:
      v5 = 0;
      v6 = 0;
      do
      {
        if (v1[v6] == 92)
        {
          ++v5;
        }

        ++v6;
      }

      while (v3 != v6);
      v7 = 0;
      goto LABEL_14;
    }

    ++v1;
    v3 = v2 - 2;
  }

  if (v3)
  {
    goto LABEL_8;
  }

  v5 = 0;
  v7 = 1;
LABEL_14:
  result = malloc_type_malloc(v3 - v5 + 1, 0x5C7A3C62uLL);
  if (result)
  {
    v8 = 0;
    if ((v7 & 1) == 0)
    {
      do
      {
        v10 = *v1++;
        v9 = v10;
        if (v10 != 92)
        {
          result[v8++] = v9;
        }

        --v3;
      }

      while (v3);
    }

    result[v8] = 0;
  }

  return result;
}

uint64_t sub_100006F78(uint64_t a1, const char *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 == 46)
  {
    v4 = a2;
  }

  else
  {
    v10 = *(a1 + 40);
    if (!v10)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = strlen(*(a1 + 40));
    if (strncmp(a2, v10, v11) || (v4 = &a2[v11], a2[v11] != 46))
    {
      v12 = sub_100007124(a2);
      *(a1 + 64) = v12;
      if (v12)
      {
        v13 = v12;
        result = 0;
        if (*(a1 + 48))
        {
          v14 = 0x20000000;
        }

        else
        {
          v14 = 0x10000000;
        }

        v15 = v14 | v13;
        goto LABEL_26;
      }

      return 0xFFFFFFFFLL;
    }
  }

  v5 = v4 + 1;
  for (i = v4 + 2; ; ++i)
  {
    v7 = *(i - 1);
    if (v7 <= 0x1F)
    {
      if (*(i - 1))
      {
        v8 = v7 == 9;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
LABEL_24:
        v16 = sub_100007124(v5);
        *(a1 + 64) = v16;
        if (!v16)
        {
          return 0xFFFFFFFFLL;
        }

        v17 = v16;
        result = 0;
        v15 = v17 | 0x10000000;
        goto LABEL_26;
      }

      continue;
    }

    if (v7 == 32)
    {
      goto LABEL_24;
    }

    if (v7 == 46)
    {
      break;
    }
  }

  v18 = *(a1 + 48);
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = strlen(*(a1 + 48));
  if (strncmp(v5, v18, v19) || v5[v19] != 46)
  {
    if (!strncmp(i, v18, v19))
    {
      v22 = sub_100007124(v5);
      *(a1 + 64) = v22;
      if (v22)
      {
        v23 = v22;
        result = 0;
        v15 = v23 | 0x40000000;
        goto LABEL_26;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v20 = sub_100007124(i);
  *(a1 + 64) = v20;
  if (!v20)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = v20;
  result = 0;
  v15 = v21 | 0x20000000;
LABEL_26:
  *(a1 + 64) = v15;
  return result;
}

uint64_t sub_100007124(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  for (i = 0; ; ++i)
  {
    v2 = *(result + i);
    if ((v2 - 97) >= 0x1A)
    {
      break;
    }

    if (i > 0xA)
    {
      goto LABEL_9;
    }

LABEL_8:
    *(&v9 + i) = v2;
  }

  if (i <= 0xA && v2 == 45)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(&v9 + i) = 0;
  if (v9 == 6514035 || v9 == 0x73646E6F636573)
  {
    return 1;
  }

  if (!(v9 ^ 0x756C757A | BYTE4(v9)) || v9 == 6517877)
  {
    return 4;
  }

  if (v9 == 761492597 && WORD2(v9) == 98)
  {
    return 8;
  }

  if (v9 == 0x697361622D637475 && v10 == 99)
  {
    return 8;
  }

  v5 = v9 == 1633906540 && WORD2(v9) == 108;
  if (v5 || v9 == 7103340)
  {
    return 16;
  }

  if (v9 == 0x622D6C61636F6CLL)
  {
    return 32;
  }

  if (v9 == 762078060 && WORD2(v9) == 98)
  {
    return 32;
  }

  if (v9 == 0x61622D6C61636F6CLL && v10 == 6515059)
  {
    return 32;
  }

  if (v9 == 0x697361622D6C636CLL && v10 == 99)
  {
    return 32;
  }

  if (v9 == 35 || v9 == 7431539)
  {
    return 2;
  }

  return 2 * ((v9 ^ 0x65636E6575716573 | v10) == 0);
}

uint64_t _asl_server_query_2(mach_port_t a1, uint64_t a2, int a3, uint64_t a4, int a5, unsigned int a6, uint64_t *a7, int *a8, uint64_t *a9, int *a10)
{
  msg.msgh_size = 0;
  v20 = 1;
  v21 = a2;
  v22 = 16777473;
  v23 = a3;
  v24 = NDR_record;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x7900000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v15 = mach_msg(&msg, 3, 0x48u, 0x4Cu, msgh_local_port, 0, 0);
  v16 = v15;
  if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v15)
    {
      if (msg.msgh_id == 71)
      {
        v16 = 4294966988;
      }

      else if (msg.msgh_id == 221)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v16 = 4294966996;
          if (v20 == 1 && msg.msgh_size == 68 && !msg.msgh_remote_port && HIBYTE(v22) == 1)
          {
            v17 = v23;
            if (v23 == v25)
            {
              v16 = 0;
              *a7 = v21;
              *a8 = v17;
              *a9 = v26;
              *a10 = v27;
              return v16;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v16 = 4294966996;
          if (HIDWORD(v21))
          {
            if (msg.msgh_remote_port)
            {
              v16 = 4294966996;
            }

            else
            {
              v16 = HIDWORD(v21);
            }
          }
        }

        else
        {
          v16 = 4294966996;
        }
      }

      else
      {
        v16 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v16;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v16;
}