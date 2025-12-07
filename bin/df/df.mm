void start()
{
  __chkstk_darwin();
  v1 = v0;
  LODWORD(qword_100008000) = compat_mode("bin/df", "unix2003");
  v2 = &qword_100008000;
  if (qword_100008000)
  {
    BYTE4(qword_100008000) = 1;
    v3 = "+abcgHhIiklmnPtT:Y,";
  }

  else
  {
    v3 = "+abcgHhIiklmnPt:T:Y,";
  }

  memset(&v86, 0, sizeof(v86));
  memset(&__src, 0, 512);
  v75 = 0;
  setlocale(0, &unk_1000020B3);
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v79 = 0;
  bzero(&v80, 0x878uLL);
  v80 = 512;
  __strlcpy_chk();
  v4 = xo_parse_args();
  if (v4 < 0)
  {
    exit(1);
  }

  v5 = v4;
  v6 = 0;
  v7 = 1;
  v8 = &qword_100008000;
  v9 = &qword_100008000;
  v10 = &qword_100008000;
  while (1)
  {
    while (1)
    {
      v11 = v6;
      v12 = getopt_long(v5, v1, v3, &off_100004150, 0);
      if (v12 > 72)
      {
        break;
      }

      switch(v12)
      {
        case 0x2C:
          byte_100008040 = 1;
          v6 = v11;
          break;
        case 0x48:
          *(v8 + 3) = 1;
          v6 = v11;
          break;
        case 0xFFFFFFFF:
          v3 = optind;
          v14 = &v1[optind];
          if (qword_100008030 || !v11)
          {
            goto LABEL_65;
          }

          if (*v14)
          {
            if (stat(*v14, &v86) < 0 && *__error() == 2)
            {
              v24 = *v14++;
              qword_100008030 = sub_100001360(v24, &dword_100008038);
            }

LABEL_65:
            if (*v14)
            {
              goto LABEL_75;
            }
          }

          v25 = getmntinfo(&v75, 2);
          v26 = v25;
          if (qword_100008020 | qword_100008030)
          {
            if (v25 < 1)
            {
              goto LABEL_88;
            }

            v29 = 0;
            v30 = v25;
            v31 = v75;
            f_mntonname = v75->f_mntonname;
            v26 = 0;
            do
            {
              if (!sub_1000014CC(f_mntonname - 16))
              {
                v33 = statfs(f_mntonname, &v31[v26]);
                if (byte_100008028 & 1 | (v33 < 0) && v29 != v26)
                {
                  if (v33 < 0)
                  {
                    xo_warnx("%s stats possibly stale", f_mntonname);
                  }

                  memcpy(&v31[v26], f_mntonname - 88, sizeof(statfs));
                }

                ++v26;
              }

              ++v29;
              f_mntonname += 2168;
            }

            while (v30 != v29);
          }

          else if ((v9[5] & 1) == 0)
          {
            v26 = getmntinfo(&v75, 1);
          }

LABEL_89:
          xo_open_container();
          xo_open_list();
          v34 = *v14;
          if (!*v14)
          {
            v7 = 0;
LABEL_106:
            v76 = 0;
            v77 = 0;
            v79 = 0;
            v78 = 0;
            if (v26 >= 1)
            {
              v72 = v7;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v73 = 0;
              v42 = 0;
              v43 = 0;
              v44 = qword_100008068;
              do
              {
                v45 = v75;
                v92[0] = 0;
                if (!v44)
                {
                  getbsize(v92, &qword_100008068);
                  v44 = qword_100008068;
                }

                v46 = &v45[v38];
                v47 = strlen(v46->f_mntfromname);
                if (v43 <= v47)
                {
                  v43 = v47;
                }

                v48 = strlen(v46->f_fstypename);
                if (v42 <= v48)
                {
                  v49 = v48;
                }

                else
                {
                  v49 = v42;
                }

                f_blocks = v46->f_blocks;
                if (f_blocks < 0)
                {
                  xo_warnx("negative filesystem block count/size from fs %s", v46->f_mntonname);
                  f_blocks = v46->f_blocks;
                  f_bsize = v46->f_bsize;
                  v54 = 1;
                  v44 = qword_100008068;
                }

                else
                {
                  f_bsize = v46->f_bsize;
                  if (f_bsize)
                  {
                    v52 = v44 > f_bsize;
                  }

                  else
                  {
                    v52 = 0;
                  }

                  if (v52)
                  {
                    v53 = f_blocks / (v44 / f_bsize);
                  }

                  else
                  {
                    v53 = f_bsize / v44 * f_blocks;
                  }

                  v54 = v53 < 1;
                  if (v53)
                  {
                    if (v53 < 0)
                    {
                      v53 = -v53;
                    }

                    do
                    {
                      ++v54;
                      v52 = v53 > 9;
                      v53 /= 0xAuLL;
                    }

                    while (v52);
                  }
                }

                v55 = v73;
                if (v73 <= v54)
                {
                  v55 = v54;
                }

                LODWORD(v73) = v55;
                v56 = f_blocks - v46->f_bfree;
                if (v56 < 0)
                {
                  xo_warnx("negative filesystem block count/size from fs %s", v46->f_mntonname);
                  f_bsize = v46->f_bsize;
                  v44 = qword_100008068;
                  v58 = 1;
                }

                else
                {
                  if (v44 > f_bsize && f_bsize)
                  {
                    v57 = v56 / (v44 / f_bsize);
                  }

                  else
                  {
                    v57 = f_bsize / v44 * v56;
                  }

                  v58 = v57 < 1;
                  if (v57)
                  {
                    if (v57 < 0)
                    {
                      v57 = -v57;
                    }

                    do
                    {
                      ++v58;
                      v52 = v57 > 9;
                      v57 /= 0xAuLL;
                    }

                    while (v52);
                  }
                }

                v59 = HIDWORD(v73);
                if (SHIDWORD(v73) <= v58)
                {
                  v59 = v58;
                }

                HIDWORD(v73) = v59;
                f_bavail = v46->f_bavail;
                if (f_bavail < 0)
                {
                  xo_warnx("negative filesystem block count/size from fs %s", v46->f_mntonname);
                  v44 = qword_100008068;
                  v62 = 1;
                  v42 = v49;
                }

                else
                {
                  if (v44 > f_bsize && f_bsize)
                  {
                    v61 = f_bavail / (v44 / f_bsize);
                  }

                  else
                  {
                    v61 = f_bsize / v44 * f_bavail;
                  }

                  v42 = v49;
                  v62 = v61 < 1;
                  if (v61)
                  {
                    if (v61 < 0)
                    {
                      v61 = -v61;
                    }

                    do
                    {
                      ++v62;
                      v52 = v61 > 9;
                      v61 /= 0xAuLL;
                    }

                    while (v52);
                  }
                }

                if (v41 <= v62)
                {
                  v41 = v62;
                }

                f_files = v46->f_files;
                f_ffree = v46->f_ffree;
                v65 = (f_files - f_ffree) < 1;
                v66 = f_files - f_ffree;
                if (v66)
                {
                  if (v66 < 0)
                  {
                    v66 = -v66;
                  }

                  do
                  {
                    ++v65;
                    v52 = v66 > 9;
                    v66 /= 0xAuLL;
                  }

                  while (v52);
                }

                if (v40 <= v65)
                {
                  v40 = v65;
                }

                v67 = f_ffree < 1;
                if (f_ffree)
                {
                  if (f_ffree < 0)
                  {
                    f_ffree = -f_ffree;
                  }

                  do
                  {
                    ++v67;
                    v52 = f_ffree > 9;
                    f_ffree /= 0xAuLL;
                  }

                  while (v52);
                }

                if (v39 <= v67)
                {
                  v39 = v67;
                }

                if (byte_100008010 == 1)
                {
                  v68 = &v75[v38];
                  v69 = v68->i32[0] / v80;
                  v81 += v68->i64[1] * v69;
                  v82 += v68[1].i64[0] * v69;
                  v83 += v68[1].i64[1] * v69;
                  v84 = vaddq_s64(v84, v68[2]);
                }

                ++v38;
              }

              while (v38 != v26);
              v70 = 0;
              v77 = v73;
              v78 = __PAIR64__(v40, v41);
              v79 = v39;
              v71 = 2168 * v26;
              v76 = __PAIR64__(v42, v43);
              v7 = v72;
              do
              {
                sub_1000015D0(&v75[v70 / 0x878], &v76);
                v70 += 2168;
              }

              while (v71 != v70);
            }

            xo_close_list();
            if (byte_100008010 == 1)
            {
              sub_1000015D0(&v80, &v76);
            }

            xo_close_container();
            if (xo_finish() < 0)
            {
              goto LABEL_173;
            }

LABEL_174:
            exit(v7);
          }

          v7 = 0;
          while (2)
          {
            if (stat(v34, &v86) < 0)
            {
              v35 = sub_100001454(*v14);
              if (v35)
              {
                goto LABEL_97;
              }

              xo_warn("%s", *v14);
            }

            else
            {
              if ((v86.st_mode & 0xB000 | 0x4000) == 0x6000)
              {
                v35 = sub_100001454(*v14);
                if (!v35)
                {
                  xo_warnx("%s: not mounted", *v14);
                  goto LABEL_104;
                }

LABEL_97:
                v36 = v35;
              }

              else
              {
                v36 = *v14;
              }

              if (statfs(v36, &__src) < 0)
              {
                xo_warn("%s", v36);
              }

              else if (!sub_1000014CC(__src.f_fstypename))
              {
                memcpy(&v75[v26++], &__src, sizeof(statfs));
                goto LABEL_105;
              }
            }

LABEL_104:
            v7 = 1;
LABEL_105:
            v37 = v14[1];
            ++v14;
            v34 = v37;
            if (!v37)
            {
              goto LABEL_106;
            }

            continue;
          }

        default:
LABEL_69:
          v27 = "t";
          if (*v10)
          {
            v27 = &unk_1000020B3;
          }

          v28 = " [-t type]";
          if (!*v10)
          {
            v28 = &unk_1000020B3;
          }

          xo_error("usage: df [--libxo] [-b | -g | -H | -h | -k | -m | -P] [-acIiln%sY] [-,] [-T type]%s\n          [file | filesystem ...]\n", v27, v28);
          exit(64);
      }
    }

    v6 = v11;
    switch(v12)
    {
      case 'P':
      case 'b':
        if (*v10)
        {
          *(v2 + 4) = 0;
        }

        v6 = v11;
        if (qword_100008008)
        {
          continue;
        }

        v13 = "512";
LABEL_31:
        setenv("BLOCKSIZE", v13, 1);
        *(v8 + 3) = 0;
        v6 = v11;
        continue;
      case 'Q':
      case 'R':
      case 'S':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'd':
      case 'e':
      case 'f':
      case 'j':
        goto LABEL_69;
      case 'T':
        goto LABEL_19;
      case 'Y':
        byte_10000803C = 1;
        v6 = v11;
        continue;
      case 'a':
        continue;
      case 'c':
        byte_100008010 = 1;
        v6 = v11;
        continue;
      case 'g':
        v13 = "1g";
        goto LABEL_31;
      case 'h':
        *(v8 + 3) = 2;
        v6 = v11;
        continue;
      case 'i':
        *(v2 + 4) = 1;
        v6 = v11;
        continue;
      case 'k':
        LODWORD(qword_100008008) = qword_100008008 + 1;
        v13 = "1024";
        goto LABEL_31;
      case 'l':
        v6 = v11;
        if (byte_100008014)
        {
          continue;
        }

        v94 = 0;
        *v92 = 0u;
        v93 = 0u;
        v87 = 0;
        *v89 = 3;
        v90 = 1;
        v88 = 4;
        if (sysctl(v89, 3u, &v87, &v88, 0, 0))
        {
          xo_warn("sysctl failed");
          v15 = 0;
          goto LABEL_57;
        }

        v15 = malloc_type_malloc(8 * v87, 0x10040436913F5uLL);
        if (!v15)
        {
          xo_warnx("malloc failed");
          goto LABEL_57;
        }

        v88 = 40;
        v90 = 2;
        if (v87 < 1)
        {
          goto LABEL_54;
        }

        v16 = 0;
        LODWORD(v17) = 0;
        do
        {
          v91 = v16;
          if (sysctl(v89, 4u, v92, &v88, 0, 0))
          {
            if (*__error() != 45)
            {
              xo_warn("sysctl failed");
            }
          }

          else if ((BYTE13(v93) & 0x10) == 0)
          {
            v18 = strdup(&v92[1]);
            v15[v17] = v18;
            if (!v18)
            {
              xo_warnx("malloc failed");
              free(v15);
              v15 = 0;
              goto LABEL_56;
            }

            LODWORD(v17) = v17 + 1;
          }

          ++v16;
        }

        while (v16 < v87);
        v9 = &qword_100008000;
        v8 = &qword_100008000;
        if (!v17)
        {
          goto LABEL_54;
        }

        v74 = v15;
        v19 = malloc_type_malloc(33 * v17 + 2, 0x100004077774924uLL);
        if (v19)
        {
          v15 = v19;
          *v19 = 28526;
          v20 = v19 + 2;
          if (v17 >= 1)
          {
            v17 = v17;
            v21 = v74;
            do
            {
              strlcpy(v20, *v21, 0x20uLL);
              v22 = &v20[strlen(*v21)];
              *v22 = 44;
              v20 = v22 + 1;
              v23 = *v21++;
              free(v23);
              --v17;
            }

            while (v17);
          }

          *(v20 - 1) = 0;
          free(v74);
LABEL_56:
          v9 = &qword_100008000;
          v10 = &qword_100008000;
          v8 = &qword_100008000;
        }

        else
        {
          if (v17 >= 1)
          {
            xo_warnx("malloc failed");
          }

LABEL_54:
          free(v15);
          v15 = 0;
          v10 = &qword_100008000;
        }

LABEL_57:
        qword_100008020 = sub_100001360(v15, &dword_100008018);
        byte_100008014 = 1;
        v6 = v11;
        v2 = &qword_100008000;
        break;
      case 'm':
        v13 = "1m";
        goto LABEL_31;
      case 'n':
        *(v9 + 40) = 1;
        v6 = v11;
        continue;
      default:
        if (v12 == 73)
        {
          *(v2 + 4) = 0;
          v6 = v11;
        }

        else
        {
          if (v12 != 116)
          {
            goto LABEL_69;
          }

          v6 = 1;
          if (!*v10)
          {
LABEL_19:
            v14 = &qword_100008000;
            if (qword_100008030)
            {
              xo_errx(1, "only one -%c option may be specified", v12);
LABEL_75:
              v75 = malloc_type_malloc(2168 * (v5 - v3), 0x100004087E0324AuLL);
              if (!v75)
              {
LABEL_173:
                xo_err();
                goto LABEL_174;
              }

LABEL_88:
              v26 = 0;
              goto LABEL_89;
            }

            qword_100008030 = sub_100001360(optarg, &dword_100008038);
            v6 = v11;
            v8 = &qword_100008000;
          }
        }

        continue;
    }
  }
}

void *sub_100001360(char *a1, _DWORD *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  *a2 = 0;
  if (__PAIR64__(a1[1], *a1) == 0x6F0000006ELL)
  {
    v2 = a1 + 2;
    *a2 = 1;
  }

  v3 = 0;
  for (i = v2; *i == 44; ++i)
  {
    ++v3;
LABEL_9:
    ;
  }

  if (*i)
  {
    goto LABEL_9;
  }

  v5 = malloc_type_malloc(8 * v3 + 16, 0x10040436913F5uLL);
  v6 = v5;
  if (v5)
  {
    *v5 = v2;
    v7 = strchr(v2, 44);
    if (v7)
    {
      v8 = 1;
      do
      {
        *v7 = 0;
        v9 = v7 + 1;
        v6[v8++] = v9;
        v7 = strchr(v9, 44);
      }

      while (v7);
      v10 = v8;
    }

    else
    {
      v10 = 1;
    }

    v6[v10] = 0;
  }

  else
  {
    xo_warnx("malloc failed");
  }

  return v6;
}

char *sub_100001454(const char *a1)
{
  v6 = 0;
  v2 = getmntinfo(&v6, 2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  for (i = v6->f_mntfromname; strcmp(i, a1); i += 2168)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return i - 1024;
}

uint64_t sub_1000014CC(char *__s1)
{
  if (qword_100008030)
  {
    v2 = dword_100008038;
    v3 = *qword_100008030;
    if (*qword_100008030)
    {
      v4 = (qword_100008030 + 8);
      while (strcmp(__s1, v3))
      {
        v5 = *v4++;
        v3 = v5;
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      v6 = v2;
    }

    else
    {
LABEL_6:
      v6 = v2 == 0;
    }

    if (qword_100008020)
    {
      v10 = dword_100008018;
      v11 = *qword_100008020;
      if (*qword_100008020)
      {
        v12 = (qword_100008020 + 8);
        while (strcmp(__s1, v11))
        {
          v13 = *v12++;
          v11 = v13;
          if (!v13)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        v10 = v10 == 0;
      }

      if (v10 == v2)
      {
        return v2;
      }

      else
      {
        return v6;
      }
    }
  }

  else if (qword_100008020)
  {
    v6 = dword_100008018;
    v7 = *qword_100008020;
    if (*qword_100008020)
    {
      v8 = (qword_100008020 + 8);
      while (strcmp(__s1, v7))
      {
        v9 = *v8++;
        v7 = v9;
        if (!v9)
        {
          return v6 == 0;
        }
      }
    }

    else
    {
      return v6 == 0;
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1000015D0(char *a1, _DWORD *a2)
{
  if (!dword_100008054++)
  {
    v5 = vmax_s32(*a2, 0x40000000ALL);
    *a2 = v5;
    if (byte_100008040 == 1)
    {
      v6 = *(a2 + 2);
      v7.i64[0] = -1;
      v7.i64[1] = -1;
      v8 = vaddq_s32(v6, v7);
      v9 = vdupq_n_s32(0x55555556u);
      v10 = vuzp2q_s32(vmull_s32(*v8.i8, *v9.i8), vmull_high_s32(v8, v9));
      *(a2 + 2) = vaddq_s32(vsraq_n_u32(v10, v10, 0x1FuLL), v6);
      a2[6] += (a2[6] - 1) / 3;
    }

    if (HIDWORD(qword_100008008))
    {
      qword_100008058 = "   Size";
      a2[2] = 7;
      v11 = v5.i32[0];
      v12 = 0x700000007;
      v13 = 1;
    }

    else
    {
      qword_100008058 = getbsize(&dword_100008050, &qword_100008048);
      v14 = a2[2];
      if (v14 <= dword_100008050)
      {
        v14 = dword_100008050;
      }

      a2[2] = v14;
      v12 = *(a2 + 3);
      v11 = *a2;
      v13 = HIDWORD(qword_100008008) != 0;
    }

    v15 = qword_100008000 == 0 || v13;
    if (v15)
    {
      v16 = "Avail";
    }

    else
    {
      v16 = "Available";
    }

    if (v15)
    {
      v17 = 5;
    }

    else
    {
      v17 = 9;
    }

    v18.i32[0] = 4;
    v18.i32[1] = v17;
    *(a2 + 3) = vmax_s32(v12, v18);
    xo_emit("{T:/%-*s}", v11, "Filesystem");
    if (byte_10000803C == 1)
    {
      xo_emit("  {T:/%-*s}", a2[1], "Type");
    }

    xo_emit(" {T:/%*s} {T:/%*s} {T:/%*s} {T:Capacity}", a2[2], qword_100008058, a2[3], "Used", a2[4], v16);
    if (BYTE4(qword_100008000) == 1)
    {
      v19 = 7;
      if (HIDWORD(qword_100008008))
      {
        v20 = 0;
        v21 = 5;
      }

      else
      {
        v20 = a2[6];
        if (a2[5] <= 7)
        {
          v19 = 7;
        }

        else
        {
          v19 = a2[5];
        }

        v21 = v19 - 2;
      }

      if (v20 <= 5)
      {
        v22 = 5;
      }

      else
      {
        v22 = v20;
      }

      a2[5] = v19;
      a2[6] = v22;
      xo_emit(" {T:/%*s} {T:/%*s} {T:%iused}", v21, "iused", v22, "ifree", v45);
    }

    xo_emit("  {T:Mounted on}\n");
  }

  xo_open_instance();
  if (!*a1)
  {
    xo_warnx("File system %s does not have a block size, assuming 512.", a1 + 88);
    *a1 = 512;
  }

  v23 = a1 + 1112;
  xo_emit("{tk:name/%-*s}", *a2, a1 + 1112);
  if (byte_10000803C == 1)
  {
    xo_emit("  {:type/%-*s}", a2[1], a1 + 72);
  }

  if (*(a1 + 1) <= *(a1 + 2))
  {
    v24 = 0;
  }

  else
  {
    v50 = 0;
    if (!qword_100008060)
    {
      getbsize(&v50, &qword_100008060);
    }

    v48[2] = 0;
    memset(v49, 0, sizeof(v49));
    v48[0] = 5;
    v48[1] = 2155872256;
    if (getattrlist(a1 + 88, v48, v49, 0xCuLL, 0))
    {
      if (*__error() != 22)
      {
        xo_warn("getattrlist failed for %s", a1 + 88);
      }

      v24 = *(a1 + 1) - *(a1 + 2);
    }

    else
    {
      v25 = *a1;
      if (!v25)
      {
        v25 = qword_100008060;
      }

      v24 = *&v49[4] / v25;
    }
  }

  v26 = *(a1 + 3) + v24;
  if (HIDWORD(qword_100008008))
  {
    sub_100001D18("  {:blocks/%6s}", *(a1 + 1) * *a1);
    sub_100001D18("  {:used/%6s}", v24 * *a1);
    sub_100001D18("  {:available/%6s}", *(a1 + 3) * *a1);
  }

  else
  {
    if (byte_100008040)
    {
      v27 = " {t:total-blocks/%*j'd} {t:used-blocks/%*j'd} {t:available-blocks/%*j'd}";
    }

    else
    {
      v27 = " {t:total-blocks/%*jd} {t:used-blocks/%*jd} {t:available-blocks/%*jd}";
    }

    v46 = a2[2];
    v47 = v27;
    v28 = *(a1 + 1);
    if (v28 < 0)
    {
      xo_warnx("negative filesystem block count/size from fs %s", a1 + 88);
      v32 = 0;
      v29 = *a1;
      v31 = qword_100008048;
      v30 = *a1;
    }

    else
    {
      v29 = *a1;
      v30 = v29;
      v31 = qword_100008048;
      if (v29 && qword_100008048 > v29)
      {
        v32 = v28 / (qword_100008048 / v29);
      }

      else
      {
        v32 = v29 / qword_100008048 * v28;
      }
    }

    v33 = a2[3];
    if (v24 < 0)
    {
      xo_warnx("negative filesystem block count/size from fs %s", a1 + 88);
      v34 = 0;
      v29 = *a1;
      v31 = qword_100008048;
      v30 = *a1;
    }

    else if (v30 && v31 > v29)
    {
      v30 = 1;
      v34 = v24 / (v31 / v29);
    }

    else
    {
      v34 = v29 / v31 * v24;
    }

    v35 = a2[4];
    v36 = *(a1 + 3);
    if (v36 < 0)
    {
      xo_warnx("negative filesystem block count/size from fs %s", a1 + 88);
      v37 = 0;
    }

    else if (v30 && v31 > v29)
    {
      v37 = v36 / (v31 / v29);
    }

    else
    {
      v37 = v29 / v31 * v36;
    }

    xo_emit(v47, v46, v32, v33, v34, v35, v37);
    v23 = a1 + 1112;
  }

  if (qword_100008000)
  {
    if (v26)
    {
      v38 = v24 / v26 * 100.0;
      if (v38 > v38)
      {
        v38 = v38 + 1.0;
      }
    }

    else
    {
      v38 = 100.0;
    }

    v39 = trunc(v38);
  }

  else if (v26)
  {
    v39 = v24 / v26 * 100.0;
  }

  else
  {
    v39 = 100.0;
  }

  xo_emit(" {:used-percent/%5.0f}{U:%%}", v39);
  if (BYTE4(qword_100008000) == 1)
  {
    v41 = *(a1 + 4);
    v40 = *(a1 + 5);
    v42 = v41 - v40;
    if (HIDWORD(qword_100008008))
    {
      xo_emit("  ");
      sub_100001C94(" {:inodes-used/%5s}", v42);
      sub_100001C94(" {:inodes-free/%5s}", *(a1 + 5));
      if (v41)
      {
LABEL_79:
        xo_emit(" {:inodes-used-percent/%4.0f}{U:%%} ");
        goto LABEL_86;
      }
    }

    else
    {
      if (byte_100008040)
      {
        xo_emit(" {:inodes-used/%*j'd} {:inodes-free/%*j'd}", a2[5], v41 - v40, a2[6], v40);
      }

      else
      {
        xo_emit(" {:inodes-used/%*jd} {:inodes-free/%*jd}");
      }

      if (v41)
      {
        goto LABEL_79;
      }
    }

    xo_emit(" {:inodes-used-percent/    -}{U:} ", v44);
  }

  else
  {
    xo_emit("  ", v44);
  }

LABEL_86:
  if (strncmp(v23, "total", 0x400uLL))
  {
    xo_emit("  {:mounted-on}", a1 + 88);
  }

  xo_emit("\n");
  return xo_close_instance();
}

uint64_t sub_100001C94(const char *a1, uint64_t a2, ...)
{
  humanize_number();
  xo_attr("value", "%lld", a2);
  return xo_emit(a1, v5);
}

uint64_t sub_100001D18(const char *a1, uint64_t a2, ...)
{
  humanize_number();
  xo_attr("value", "%lld", a2);
  return xo_emit(a1, v5);
}