unint64_t sub_1000006C8(const char *a1)
{
  __endptr = 0;
  v1 = strtoull(a1, &__endptr, 0);
  if (!*__endptr)
  {
    return v1;
  }

  v2 = __tolower(*__endptr);
  result = 0;
  if (v2 <= 108)
  {
    if (v2 == 98)
    {
      return v1 << 9;
    }

    if (v2 != 103)
    {
      if (v2 != 107)
      {
        return result;
      }

      return v1 << 10;
    }

    goto LABEL_15;
  }

  switch(v2)
  {
    case 'm':
LABEL_16:
      v1 <<= 10;
      return v1 << 10;
    case 'p':
      v1 <<= 10;
      goto LABEL_14;
    case 't':
LABEL_14:
      v1 <<= 10;
LABEL_15:
      v1 <<= 10;
      goto LABEL_16;
  }

  return result;
}

void start(int a1, char **a2)
{
  v4 = strrchr(*a2, 47);
  qword_10000CC08 = v4;
  if (v4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = *a2;
  }

  v101 = 0;
  qword_10000CC08 = v5;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = getopt(a1, a2, "BG:J:D:M:N:PU:hsb:c:i:I:n:v:");
          if (v6 <= 79)
          {
            break;
          }

          if (v6 > 104)
          {
            if (v6 > 114)
            {
              if (v6 == 115)
              {
                dword_10000C40C = 1;
              }

              else
              {
                if (v6 != 118)
                {
                  goto LABEL_248;
                }

                v34 = optarg;
                off_10000C000 = strdup(optarg);
                if (!off_10000C000)
                {
                  sub_100001CD4("Could not copy volume name %s", v34);
                }
              }
            }

            else if (v6 == 105)
            {
              v41 = optarg;
              dword_10000C008 = atoi(optarg);
              if (dword_10000C008 <= 0xF)
              {
                sub_100001CD4("%s: starting catalog node id too small (must be > 15)", v41);
              }
            }

            else
            {
              if (v6 != 110)
              {
                goto LABEL_248;
              }

              __stringp[0] = optarg;
              v14 = strsep(__stringp, ",");
              if (v14)
              {
                v15 = v14;
                do
                {
                  v16 = *v15;
                  if (!*v15)
                  {
                    break;
                  }

                  v17 = strchr(v15, 61);
                  if (!v17)
                  {
                    goto LABEL_248;
                  }

                  v18 = atoi(v17 + 1);
                  switch(v16)
                  {
                    case 'a':
                      v19.i32[0] = v18;
                      v22 = vcnt_s8(v19);
                      v22.i16[0] = vaddlv_u8(v22);
                      v23 = (v18 - 4096) > 0x7000 || v22.i32[0] >= 2u;
                      if (v23)
                      {
                        sub_100001CD4("%s: invalid atrribute b-tree node size", v15);
                      }

                      dword_10000C020 = v18;
                      break;
                    case 'e':
                      if ((v18 - 1024) > 0x7C00 || (v19.i32[0] = v18, v21 = vcnt_s8(v19), v21.i16[0] = vaddlv_u8(v21), v21.i32[0] >= 2u))
                      {
                        sub_100001CD4("%s: invalid extents b-tree node size", v15);
                      }

                      dword_10000C01C = v18;
                      break;
                    case 'c':
                      if ((v18 - 4096) > 0x7000 || (v19.i32[0] = v18, v20 = vcnt_s8(v19), v20.i16[0] = vaddlv_u8(v20), v20.i32[0] >= 2u))
                      {
                        sub_100001CD4("%s: invalid catalog b-tree node size", v15);
                      }

                      dword_10000C018 = v18;
                      dword_10000C408 = 1;
                      break;
                    default:
                      goto LABEL_248;
                  }

                  v15 = strsep(__stringp, ",");
                }

                while (v15);
              }
            }
          }

          else if (v6 > 97)
          {
            if (v6 == 98)
            {
              v42 = sub_1000006C8(optarg);
              if (v42 <= 0x1FF)
              {
                sub_100001CD4("%s: bad allocation block size (too small)", optarg);
              }

              if (v42 >= 0x80000001)
              {
                sub_100001CD4("%s: bad allocation block size (too large)", optarg);
              }

              dword_10000C400 = v42;
            }

            else
            {
              if (v6 != 99)
              {
                goto LABEL_248;
              }

              __stringp[0] = optarg;
              while (1)
              {
                v30 = strsep(__stringp, ",");
                if (!v30)
                {
                  break;
                }

                v31 = *v30;
                if (!*v30)
                {
                  break;
                }

                v32 = strchr(v30, 61);
                if (!v32)
                {
                  goto LABEL_248;
                }

                v33 = atoi(v32 + 1);
                if (v31 > 99)
                {
                  switch(v31)
                  {
                    case 'd':
                      dword_10000C470 = v33;
                      break;
                    case 'e':
                      dword_10000C460 = v33;
                      if (!dword_10000C41C)
                      {
                        dword_10000C454 = v33;
                      }

                      break;
                    case 'r':
                      dword_10000C46C = v33;
                      break;
                    default:
                      goto LABEL_248;
                  }
                }

                else
                {
                  switch(v31)
                  {
                    case 'a':
                      dword_10000C464 = v33;
                      if (!dword_10000C414)
                      {
                        dword_10000C458 = v33;
                      }

                      dword_10000C410 = 1;
                      break;
                    case 'b':
                      dword_10000C468 = v33;
                      break;
                    case 'c':
                      dword_10000C45C = v33;
                      if (!dword_10000C418)
                      {
                        dword_10000C450 = v33;
                      }

                      break;
                    default:
                      goto LABEL_248;
                  }
                }
              }
            }
          }

          else if (v6 == 80)
          {
            dword_10000C420 = 1;
          }

          else
          {
            if (v6 != 85)
            {
              goto LABEL_248;
            }

            v7 = optarg;
            v8 = getpwnam(optarg);
            v9 = v7;
            if (v8)
            {
              pw_uid = v8->pw_uid;
            }

            else
            {
              do
              {
                v12 = *v9++;
                v11 = v12;
              }

              while ((v12 - 48) < 0xA);
              if (v11)
              {
                errx(1, "unknown user id: %s");
              }

              pw_uid = atoi(v7);
            }

            dword_10000C00C = pw_uid;
          }
        }

        if (v6 > 72)
        {
          break;
        }

        if (v6 <= 67)
        {
          if (v6 != 66)
          {
            if (v6 == -1)
            {
              if (qword_10000C448)
              {
                if (a1 == optind)
                {
                  byte_10000C800 = 0;
                  byte_10000D000 = 0;
                  goto LABEL_130;
                }
              }

              else if (a1 - optind == 1)
              {
                v43 = a2[optind];
                v44 = strrchr(v43, 47);
                if (v44)
                {
                  v45 = v44 + 1;
                }

                else
                {
                  v45 = v43;
                }

                if (*v45 == 114)
                {
                  v46 = v45 + 1;
                }

                else
                {
                  v46 = v45;
                }

                snprintf(&byte_10000D000, 0x400uLL, "%sr%s", "/dev/", v46);
                snprintf(&byte_10000C800, 0x400uLL, "%s%s", "/dev/", v46);
                if (!qword_10000C448)
                {
                  v47 = getmntinfo(&v101, 2);
                  if (!v47)
                  {
                    v97 = __error();
                    v98 = strerror(*v97);
                    sub_100001CD4("%s: getmntinfo: %s", &byte_10000C800, v98);
                  }

                  if (v47 >= 1)
                  {
                    v48 = v47 + 1;
                    v49 = v101 + 1;
                    do
                    {
                      if (!strcmp(&byte_10000C800, v49[-1].f_mntfromname))
                      {
                        sub_100001CD4("%s is mounted on %s", &byte_10000C800, v49[-1].f_mntonname);
                      }

                      v101 = v49;
                      --v48;
                      ++v49;
                    }

                    while (v48 > 1);
                  }
                }

LABEL_130:
                v115 = 0u;
                memset(&v116, 0, sizeof(v116));
                v113 = 0u;
                v114 = 0u;
                v111 = 0u;
                v112 = 0u;
                v109 = 0u;
                v110 = 0u;
                v107 = 0u;
                v108 = 0u;
                v105 = 0u;
                v106 = 0u;
                *__stringp = 0u;
                v104 = 0u;
                v102 = 0;
                if (qword_10000C448)
                {
                  LODWORD(v56) = 512;
                  DWORD2(v114) = 512;
                  LODWORD(v113) = 0;
                  *&v115 = 2048;
                  *(&v115 + 1) = qword_10000C448 >> 9;
                  v52 = -1;
                }

                else
                {
                  if (dword_10000C404)
                  {
                    v50 = 4;
                  }

                  else
                  {
                    v50 = 6;
                  }

                  v51 = open(&byte_10000D000, v50, 0);
                  if (v51 == -1)
                  {
                    err(1, "cannot create filesystem on %s", &byte_10000D000);
                  }

                  v52 = v51;
                  LODWORD(v113) = v51;
                  fcntl(v51, 48, 1);
                  if (v52 < 0 || fstat(v52, &v116) < 0 || ioctl(v52, 0x40046418uLL, &v114 + 8) < 0)
                  {
                    goto LABEL_319;
                  }

                  if ((WORD4(v114) & 0x1FF) != 0)
                  {
                    sub_100001CD4("%d is an unsupported sector size\n", DWORD2(v114));
                  }

                  if (ioctl(v52, 0x40086419uLL, &v115 + 8) < 0)
                  {
                    goto LABEL_319;
                  }

                  *&v115 = 0x100000u / DWORD2(v114);
                  if (ioctl(v52, 0x40086440uLL, &v102) < 0)
                  {
                    goto LABEL_319;
                  }

                  v53 = v102;
                  if (v102)
                  {
                    if (v115 < v102)
                    {
                      v53 = v115;
                    }

                    *&v115 = v53;
                  }

                  if (ioctl(v52, 0x40086441uLL, &v102) < 0)
                  {
                    goto LABEL_319;
                  }

                  v54 = v102;
                  if (v102)
                  {
                    if (v115 < v102)
                    {
                      v54 = v115;
                    }

                    *&v115 = v54;
                  }

                  if (ioctl(v52, 0x40086446uLL, &v102) < 0)
                  {
                    goto LABEL_319;
                  }

                  if (v102)
                  {
                    v55 = v102 / DWORD2(v114);
                    if (v115 < v55)
                    {
                      v55 = v115;
                    }

                    *&v115 = v55;
                  }

                  if (ioctl(v52, 0x40086447uLL, &v102) < 0)
                  {
LABEL_319:
                    v94 = __error();
                    v100 = strerror(*v94);
                    sub_100001CD4("%s: %s", &byte_10000D000, v100);
                  }

                  v56 = DWORD2(v114);
                  if (v102)
                  {
                    v57 = v102 / DWORD2(v114);
                    if (v115 < v57)
                    {
                      v57 = v115;
                    }

                    *&v115 = v57;
LABEL_162:
                    *&v114 = (*(&v115 + 1) * v56) >> 9;
                    *(&v113 + 4) = 512;
                    time(&dword_10000CC00);
                    v58 = 64 - __clz(v114);
                    if (!v114)
                    {
                      v58 = 0;
                    }

                    v59 = 32 - __clz(DWORD1(v113));
                    if (!DWORD1(v113))
                    {
                      v59 = 0;
                    }

                    v60 = v114 * DWORD1(v113);
                    if (v60 > 0x7FFFFFFF80000000 || v58 + v59 >= 0x40)
                    {
                      sub_100001CD4("%s: partition is too big (maximum is %llu KB)", &byte_10000D000, 0x1FFFFFFFE00000);
                    }

                    if (dword_10000C400)
                    {
                      if ((dword_10000C400 & (dword_10000C400 - 1)) != 0)
                      {
                        sub_100001CD4("%s: bad HFS Plus allocation block size (must be a power of two)", optarg);
                      }

                      if ((v114 / (dword_10000C400 / DWORD1(v113))) >> 32)
                      {
                        sub_100001CD4("%s: block size is too small for %lld sectors", optarg, dword_10000C400);
                      }

                      if (dword_10000C400 <= 0xFFF)
                      {
                        warnx("Warning: %u is a non-optimal block size (4096 would be a better choice)", dword_10000C400);
                      }
                    }

                    else
                    {
                      dword_10000C400 = 4096;
                      v95 = 64 - __clz(v60);
                      if (v60)
                      {
                        v96 = v95;
                      }

                      else
                      {
                        v96 = 0;
                      }

                      if (v96 - 41 > 0x14)
                      {
                        if (v96 >= 0x3E)
                        {
                          sub_100001CD4("Error: Disk Device is too big (%llu sectors, %d bytes per sector", v114, DWORD1(v113));
                        }
                      }

                      else
                      {
                        dword_10000C400 = qword_10000C028[v96 - 41];
                      }
                    }

                    v61 = dword_10000C440;
                    if (dword_10000C440 && dword_10000C440 >= (v60 / dword_10000C400))
                    {
                      warnx("Warning: %u is invalid file system start allocation block number, must be less than total allocation blocks (%u)", dword_10000C440, v60 / dword_10000C400);
                      warnx("Warning: Resetting file system start block to zero");
                      v61 = 0;
                      dword_10000C440 = 0;
                    }

                    v62 = v114;
                    v63 = DWORD1(v113);
                    v64 = v114 * DWORD1(v113);
                    if (!(v64 >> 19))
                    {
                      sub_100001CD4("%s: partition is too small (minimum is %d KB)", &byte_10000D000, 512);
                    }

                    LODWORD(__stringp[0]) = 0;
                    HIDWORD(__stringp[0]) = dword_10000C400;
                    DWORD1(v112) = v61;
                    v65 = dword_10000CC00 + 2082844800;
                    if (dword_10000C424)
                    {
                      v65 = dword_10000CC00;
                    }

                    LODWORD(v104) = dword_10000C008;
                    HIDWORD(v108) = v65;
                    LODWORD(v109) = 0;
                    LODWORD(v110) = dword_10000C428;
                    *&v111 = qword_10000C430;
                    v66 = dword_10000C00C;
                    if (dword_10000C00C == -1)
                    {
                      v66 = geteuid();
                    }

                    DWORD2(v111) = v66;
                    v67 = dword_10000C010;
                    if (dword_10000C010 == -1)
                    {
                      v67 = getegid();
                    }

                    if (word_10000C014 == 0xFFFF)
                    {
                      v68 = 493;
                    }

                    else
                    {
                      v68 = word_10000C014 & 0x1FF;
                    }

                    LOWORD(v112) = v68;
                    HIDWORD(v111) = v67;
                    LODWORD(__stringp[0]) |= 0x10u;
                    if (dword_10000C428)
                    {
                      v69 = (DWORD2(v114) >> 4) * DWORD2(v114);
                      v70 = qword_10000C438;
                      if (!qword_10000C438)
                      {
                        goto LABEL_192;
                      }

                      if (qword_10000C438 < v69)
                      {
                        printf("%s: journal size %lldk too small.  Reset to %dk.\n", qword_10000CC08, qword_10000C438 >> 10, 0x2000);
                        qword_10000C438 = 0;
                        goto LABEL_192;
                      }

                      DWORD1(v110) = qword_10000C438;
                      if (!qword_10000C438)
                      {
LABEL_192:
                        v71 = (HIDWORD(v64) * 0xA3D70A3D70A3D71uLL) >> 64;
                        if (v71 >= 0x40)
                        {
                          LODWORD(v71) = 64;
                        }

                        v70 = (v71 << 23) + 0x800000;
                        if (v70 <= v69)
                        {
                          v70 = v69;
                        }

                        DWORD1(v110) = v70;
                      }

                      if (v64 >> 27)
                      {
LABEL_200:
                        if (v70 >= 0x20000001)
                        {
                          v70 = 0x20000000;
                          goto LABEL_203;
                        }
                      }

                      else
                      {
                        if (v69 >= 0x80000)
                        {
                          DWORD1(v110) = v69;
                          v70 = v69;
                          goto LABEL_200;
                        }

                        v70 = 0x80000;
LABEL_203:
                        DWORD1(v110) = v70;
                      }

                      if (v70 < HIDWORD(__stringp[0]))
                      {
                        DWORD1(v110) = HIDWORD(__stringp[0]);
                      }
                    }

                    *(&v109 + 1) = off_10000C000;
                    v72 = dword_10000C46C;
                    v73 = dword_10000C400;
                    if (dword_10000C46C)
                    {
                      v74 = dword_10000C46C * dword_10000C400;
                      if ((v74 & 0xFFFFFFFF00000000) == 0)
                      {
                        goto LABEL_212;
                      }
                    }

                    else
                    {
                      if (dword_10000C400 <= 0x1000)
                      {
                        LODWORD(v74) = 16 * dword_10000C400;
                      }

                      else
                      {
                        LODWORD(v74) = (dword_10000C400 + 0xFFFF) / dword_10000C400 * dword_10000C400;
                      }

LABEL_212:
                      LODWORD(__stringp[1]) = v74;
                      v72 = dword_10000C470;
                      if (dword_10000C470)
                      {
                        v75 = dword_10000C470 * dword_10000C400;
                        if ((v75 & 0xFFFFFFFF00000000) == 0)
                        {
                          goto LABEL_218;
                        }
                      }

                      else
                      {
                        if (dword_10000C400 <= 0x1000)
                        {
                          LODWORD(v75) = 16 * dword_10000C400;
                        }

                        else
                        {
                          LODWORD(v75) = (dword_10000C400 + 0xFFFF) / dword_10000C400 * dword_10000C400;
                        }

LABEL_218:
                        HIDWORD(__stringp[1]) = v75;
                        if (!dword_10000C408 && (!(v64 >> 30) || dword_10000C400 <= 0xFFF))
                        {
                          dword_10000C018 = 4096;
                        }

                        v76 = dword_10000C45C;
                        if (!dword_10000C45C)
                        {
                          v77 = dword_10000C018;
                          LODWORD(v78) = sub_100002074(dword_10000C400, dword_10000C018, v62, 4);
                          goto LABEL_224;
                        }

                        v78 = dword_10000C45C * dword_10000C400;
                        if ((v78 & 0xFFFFFFFF00000000) != 0)
                        {
LABEL_229:
                          sub_100001CD4("=%ld: too many blocks for clump size!", v76);
                        }

                        v77 = dword_10000C018;
                        if (v78 % dword_10000C018)
                        {
                          sub_100001CD4("c=%ld: clump size is not a multiple of node size\n", v78 / dword_10000C400);
                        }

LABEL_224:
                        v79 = dword_10000C450;
                        if (!dword_10000C450)
                        {
                          LODWORD(v80) = sub_100002074(v73, v77, v62, 4);
                          goto LABEL_226;
                        }

                        v80 = dword_10000C450 * v73;
                        if ((v80 & 0xFFFFFFFF00000000) != 0)
                        {
LABEL_231:
                          sub_100001CD4("=%ld: too many blocks for initial size!", v79);
                        }

                        if (v80 % v77)
                        {
                          sub_100001CD4("c=%ld: initial size is not a multiple of node size\n", v80 / v73);
                        }

LABEL_226:
                        if (v80 < v78)
                        {
                          sub_100001CD4("c=%ld: initial size is less than clump size\n", v80 / v73);
                        }

                        *(&v104 + 4) = __PAIR64__(v80, v78);
                        HIDWORD(v104) = v77;
                        *&v105 = 1;
                        if (v73 <= 0xFFF && v73 < v77)
                        {
                          warnx("Warning: block size %u is less than catalog b-tree node size %u", v73, v77);
                          v73 = dword_10000C400;
                        }

                        v76 = dword_10000C460;
                        if (dword_10000C460)
                        {
                          v82 = dword_10000C460 * v73;
                          if ((v82 & 0xFFFFFFFF00000000) != 0)
                          {
                            goto LABEL_229;
                          }

                          v81 = dword_10000C01C;
                          if (v82 % dword_10000C01C)
                          {
                            sub_100001CD4("e=%ld: clump size is not a multiple of node size\n", v82 / v73);
                          }
                        }

                        else
                        {
                          v81 = dword_10000C01C;
                          LODWORD(v82) = sub_100002074(v73, dword_10000C01C, v62, 3);
                        }

                        v79 = dword_10000C454;
                        if (dword_10000C454)
                        {
                          v83 = dword_10000C454 * v73;
                          if ((v83 & 0xFFFFFFFF00000000) != 0)
                          {
                            goto LABEL_231;
                          }

                          if (v83 % v81)
                          {
                            sub_100001CD4("e=%ld: initial size is not a multiple of node size\n", v83 / v73);
                          }
                        }

                        else
                        {
                          LODWORD(v83) = sub_100002074(v73, v81, v62, 3);
                        }

                        if (v83 < v82)
                        {
                          sub_100001CD4("e=%ld: initial size is less than clump size\n", v83 / v73);
                        }

                        *(&v105 + 1) = __PAIR64__(v83, v82);
                        LODWORD(v106) = v81;
                        *(&v106 + 4) = 1;
                        if (v73 < v81)
                        {
                          warnx("Warning: block size %u is less than extents b-tree node size %u", v73, v81);
                          if (DWORD1(v106) >= 9)
                          {
                            warnx("Warning:  extents overflow extent requested count %u exceeds maximum 8, capping at 8\n", DWORD1(v106));
                            DWORD1(v106) = 8;
                          }
                        }

                        v76 = dword_10000C464;
                        v84 = dword_10000C400;
                        if (dword_10000C464)
                        {
                          v86 = dword_10000C464 * dword_10000C400;
                          if ((v86 & 0xFFFFFFFF00000000) != 0)
                          {
                            goto LABEL_229;
                          }

                          v85 = dword_10000C020;
                          if (v86 % dword_10000C020)
                          {
                            sub_100001CD4("a=%ld: clump size is not a multiple of node size\n", v86 / dword_10000C400);
                          }
                        }

                        else
                        {
                          v85 = dword_10000C020;
                          LODWORD(v86) = sub_100002074(dword_10000C400, dword_10000C020, v62, 8);
                        }

                        v79 = dword_10000C458;
                        if (dword_10000C458)
                        {
                          v87 = dword_10000C458 * v84;
                          if ((v87 & 0xFFFFFFFF00000000) != 0)
                          {
                            goto LABEL_231;
                          }

                          if (v87 % v85)
                          {
                            sub_100001CD4("a=%ld: initial size is not a multiple of node size\n", v87 / v84);
                          }

LABEL_265:
                          if (v87 && v87 < v86)
                          {
                            sub_100001CD4("a=%ld: initial size is less than clump size\n", v87 / v84);
                          }
                        }

                        else
                        {
                          if (!dword_10000C410)
                          {
                            LODWORD(v87) = sub_100002074(v84, v85, v62, 8);
                            goto LABEL_265;
                          }

                          LODWORD(v87) = 0;
                        }

                        HIDWORD(v106) = v86;
                        *&v107 = __PAIR64__(v85, v87);
                        *(&v107 + 1) = 1;
                        v88 = v62 / (v84 / v63);
                        v89 = v88 >> 3;
                        if ((v88 & 7) != 0)
                        {
                          ++v89;
                        }

                        if (v89 % v84)
                        {
                          v90 = v84 - v89 % v84;
                        }

                        else
                        {
                          v90 = 0;
                        }

                        v91 = v89 + v90;
                        v72 = dword_10000C468;
                        if (!dword_10000C468)
                        {
LABEL_278:
                          LODWORD(v108) = v91;
                          *(&v108 + 4) = 1;
                          *(&v110 + 1) = 0;
                          DWORD2(v112) = 0;
                          if (dword_10000C40C)
                          {
                            LODWORD(__stringp[0]) |= 8u;
                          }

                          if (dword_10000C420)
                          {
                            LODWORD(__stringp[0]) |= 0x20u;
                          }

                          if (dword_10000C424)
                          {
                            LODWORD(__stringp[0]) |= 0x40u;
                          }

                          if (!dword_10000C404)
                          {
                            goto LABEL_336;
                          }

                          if (!qword_10000C448)
                          {
                            printf("%llu sectors (%u bytes per sector)\n", *(&v115 + 1), DWORD2(v114));
                          }

                          puts("HFS Plus format parameters:");
                          printf("\tvolume name: %s\n", off_10000C000);
                          printf("\tblock-size: %u\n", HIDWORD(__stringp[0]));
                          printf("\ttotal blocks: %u\n", v88);
                          if (dword_10000C428)
                          {
                            printf("\tjournal-size: %uk\n", DWORD1(v110) >> 10);
                          }

                          printf("\tfirst free catalog node id: %u\n", v104);
                          printf("\tcatalog b-tree node size: %u\n", HIDWORD(v104));
                          printf("\tcatalog clump size: %u\n", DWORD1(v104));
                          printf("\tinitial catalog file size: %u\n", DWORD2(v104));
                          printf("\textents b-tree node size: %u\n", v106);
                          printf("\textents clump size: %u\n", DWORD2(v105));
                          printf("\tinitial extents file size: %u\n", HIDWORD(v105));
                          printf("\tattributes b-tree node size: %u\n", DWORD1(v107));
                          printf("\tattributes clump size: %u\n", HIDWORD(v106));
                          printf("\tinitial attributes file size: %u\n", v107);
                          printf("\tinitial allocation file size: %u (%u blocks)\n", v108, v108 / dword_10000C400);
                          printf("\tdata fork clump size: %u\n", HIDWORD(__stringp[1]));
                          printf("\tresource fork clump size: %u\n", LODWORD(__stringp[1]));
                          if ((__stringp[0] & 0x10) != 0)
                          {
                            printf("\tuser ID: %d\n", DWORD2(v111));
                            printf("\tgroup ID: %d\n", HIDWORD(v111));
                            printf("\taccess mask: %o\n", v112);
                          }

                          printf("\tfile system start block: %u\n", DWORD1(v112));
                          if (!dword_10000C404)
                          {
LABEL_336:
                            if (sub_100002114(&v113, __stringp))
                            {
                              v93 = __error();
                              v99 = strerror(*v93);
                              sub_100001CD4("%s: %s", &byte_10000D000, v99);
                            }

                            printf("Initialized %s as a ", &byte_10000D000);
                            if (v114 <= 0x80000000)
                            {
                              if (v114 <= 0x200000)
                              {
                                if (v114 > 0x800)
                                {
                                  printf("%ld MB");
                                }

                                else
                                {
                                  printf("%ld KB");
                                }
                              }

                              else
                              {
                                printf("%ld GB");
                              }
                            }

                            else
                            {
                              printf("%ld TB");
                            }

                            if (dword_10000C40C)
                            {
                              printf(" case-sensitive");
                            }

                            else
                            {
                              printf(" case-insensitive");
                            }

                            if (dword_10000C428)
                            {
                              printf(" HFS Plus volume with a %uk journal\n", DWORD1(v110) >> 10);
                            }

                            else
                            {
                              puts(" HFS Plus volume");
                            }
                          }

                          if (v52 >= 1)
                          {
                            close(v52);
                          }

                          exit(0);
                        }

                        v92 = dword_10000C468 * v84;
                        if ((v92 & 0xFFFFFFFF00000000) == 0)
                        {
                          v23 = v92 >= v91;
                          v91 = dword_10000C468 * v84;
                          if (!v23)
                          {
                            sub_100001CD4("b=%ld: bitmap clump size is too small\n", v92 / v84);
                          }

                          goto LABEL_278;
                        }
                      }
                    }

                    sub_100001CD4("=%ld: too many blocks for clump size!", v72);
                  }
                }

                v56 = v56;
                goto LABEL_162;
              }
            }

LABEL_248:
            sub_100001D44();
          }

          dword_10000C424 = 1;
        }

        else if (v6 == 68)
        {
          qword_10000C430 = optarg;
        }

        else
        {
          if (v6 != 71)
          {
            goto LABEL_248;
          }

          v24 = optarg;
          v25 = getgrnam(optarg);
          v26 = v24;
          if (v25)
          {
            gr_gid = v25->gr_gid;
          }

          else
          {
            do
            {
              v29 = *v26++;
              v28 = v29;
            }

            while ((v29 - 48) < 0xA);
            if (v28)
            {
              errx(1, "unknown group id: %s");
            }

            gr_gid = atoi(v24);
          }

          dword_10000C010 = gr_gid;
        }
      }

      if (v6 <= 76)
      {
        break;
      }

      if (v6 == 77)
      {
        if ((*optarg & 0xF8) != 0x30 || (__stringp[0] = 0, v40 = strtol(optarg, __stringp, 8), v40 >> 31) || *__stringp[0])
        {
          errx(1, "invalid access mask: %s");
        }

        word_10000C014 = v40;
      }

      else
      {
        if (v6 != 78)
        {
          goto LABEL_248;
        }

        dword_10000C404 = 1;
        if ((*optarg - 48) > 9)
        {
LABEL_88:
          --optind;
        }

        else
        {
          qword_10000C448 = sub_1000006C8(optarg);
        }
      }
    }

    if (v6 == 73)
    {
      __stringp[0] = optarg;
      for (i = strsep(__stringp, ","); i; i = strsep(__stringp, ","))
      {
        v36 = *i;
        if (!*i)
        {
          break;
        }

        v37 = strchr(i, 61);
        if (!v37)
        {
          goto LABEL_248;
        }

        v38 = atoi(v37 + 1);
        switch(v36)
        {
          case 'e':
            dword_10000C454 = v38;
            v39 = &dword_10000C41C;
            break;
          case 'c':
            dword_10000C450 = v38;
            v39 = &dword_10000C418;
            break;
          case 'a':
            dword_10000C458 = v38;
            dword_10000C414 = 1;
            v39 = &dword_10000C410;
            break;
          default:
            goto LABEL_248;
        }

        *v39 = 1;
      }
    }

    else
    {
      if (v6 != 74)
      {
        goto LABEL_248;
      }

      dword_10000C428 = 1;
      if ((*optarg - 48) > 9)
      {
        goto LABEL_88;
      }

      v13 = sub_1000006C8(optarg);
      qword_10000C438 = v13;
      if (!(v13 >> 19))
      {
        printf("%s: journal size %lldk too small.  Reset to %dk.\n", qword_10000CC08, v13 >> 10, 0x2000);
        qword_10000C438 = 0x800000;
      }
    }
  }
}

void sub_100001CD4(const char *a1, ...)
{
  va_start(va, a1);
  if (fcntl(2, 3) < 0)
  {
    openlog(qword_10000CC08, 2, 24);
    vsyslog(3, a1, va);
    closelog();
  }

  else
  {
    vwarnx(a1, va);
  }

  exit(1);
}

void sub_100001D44()
{
  fprintf(__stderrp, "usage: %s [-N [partition-size]] [hfsplus-options] special-device\n", qword_10000CC08);
  fwrite("  options:\n", 0xBuLL, 1uLL, __stderrp);
  fwrite("\t-N do not create file system, just print out parameters\n", 0x39uLL, 1uLL, __stderrp);
  fwrite("\t-s use case-sensitive filenames (default is case-insensitive)\n", 0x3FuLL, 1uLL, __stderrp);
  fwrite("  where hfsplus-options are:\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t-J [journal-size] make this HFS+ volume journaled\n", 0x33uLL, 1uLL, __stderrp);
  fwrite("\t-D journal-dev use 'journal-dev' for an external journal\n", 0x3AuLL, 1uLL, __stderrp);
  fwrite("\t-G group-id (for root directory)\n", 0x22uLL, 1uLL, __stderrp);
  fwrite("\t-U user-id (for root directory)\n", 0x21uLL, 1uLL, __stderrp);
  fwrite("\t-M octal access-mask (for root directory)\n", 0x2BuLL, 1uLL, __stderrp);
  fwrite("\t-b allocation block size (4096 optimal)\n", 0x29uLL, 1uLL, __stderrp);
  fwrite("\t-c clump size list (comma separated)\n", 0x26uLL, 1uLL, __stderrp);
  fwrite("\t\ta=blocks (attributes file)\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t\tb=blocks (bitmap file)\n", 0x19uLL, 1uLL, __stderrp);
  fwrite("\t\tc=blocks (catalog file)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t\td=blocks (user data fork)\n", 0x1CuLL, 1uLL, __stderrp);
  fwrite("\t\te=blocks (extents file)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t\tr=blocks (user resource fork)\n", 0x20uLL, 1uLL, __stderrp);
  fwrite("\t-i starting catalog node id\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t-I initial size list (comma separated)\n", 0x28uLL, 1uLL, __stderrp);
  fwrite("\t\ta=size (attributes b-tree)\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t\tc=size (catalog b-tree)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t\te=size (extents b-tree)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t-n b-tree node size list (comma separated)\n", 0x2CuLL, 1uLL, __stderrp);
  fwrite("\t\ta=size (attributes b-tree)\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t\tc=size (catalog b-tree)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t\te=size (extents b-tree)\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t-v volume name (in ascii or UTF-8)\n", 0x24uLL, 1uLL, __stderrp);
  fwrite("  examples:\n", 0xCuLL, 1uLL, __stderrp);
  fprintf(__stderrp, "\t%s -v Untitled /dev/rdisk0s7 \n", qword_10000CC08);
  fprintf(__stderrp, "\t%s -v Untitled -n c=4096,e=1024 /dev/rdisk0s7 \n", qword_10000CC08);
  fprintf(__stderrp, "\t%s -v Untitled -c b=64,c=1024 /dev/rdisk0s7 \n\n", qword_10000CC08);
  exit(1);
}

uint64_t sub_100002074(unsigned int a1, unsigned int a2, unint64_t a3, int a4)
{
  if (a4 == 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (a4 == 8)
  {
    v4 = 0;
  }

  if (a3 >> 21)
  {
    if (a3 >= 0x400000)
    {
      v6 = 0;
      v7 = 0;
      v8 = a3 >> 22;
      do
      {
        v6 += 3;
        if (v8 < 2)
        {
          break;
        }

        v8 >>= 1;
      }

      while (v7++ < 0xD);
    }

    else
    {
      v6 = 0;
    }

    v5 = word_10000C0D0[v6 + v4] << 20;
  }

  else
  {
    v5 = 4 * a3;
    if (4 * a3 <= 8 * a2)
    {
      v5 = 8 * a2;
    }
  }

  if (a2 <= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = a2;
  }

  if (v5 == v5 % v10)
  {
    return v10;
  }

  else
  {
    return v5 / v10 * v10;
  }
}

uint64_t sub_100002114(unsigned int *a1, int8x8_t *a2)
{
  v151.tv_sec = 0;
  if (!wipefs_alloc())
  {
    wipefs_wipe();
  }

  wipefs_free();
  v4 = malloc_type_malloc(0x200uLL, 0x10000407EBBDD04uLL);
  if (!v4)
  {
    sub_1000038A8();
  }

  v5 = v4;
  v6 = *(a1 + 2);
  *v4[60].i8 = 0u;
  *v4[62].i8 = 0u;
  *v4[56].i8 = 0u;
  *v4[58].i8 = 0u;
  *v4[52].i8 = 0u;
  *v4[54].i8 = 0u;
  *v4[48].i8 = 0u;
  *v4[50].i8 = 0u;
  *v4[44].i8 = 0u;
  *v4[46].i8 = 0u;
  *v4[40].i8 = 0u;
  *v4[42].i8 = 0u;
  *v4[36].i8 = 0u;
  *v4[38].i8 = 0u;
  *v4[32].i8 = 0u;
  *v4[34].i8 = 0u;
  *v4[28].i8 = 0u;
  *v4[30].i8 = 0u;
  *v4[24].i8 = 0u;
  *v4[26].i8 = 0u;
  *v4[20].i8 = 0u;
  *v4[22].i8 = 0u;
  *v4[16].i8 = 0u;
  *v4[18].i8 = 0u;
  *v4[12].i8 = 0u;
  *v4[14].i8 = 0u;
  *v4[8].i8 = 0u;
  *v4[10].i8 = 0u;
  *v4[4].i8 = 0u;
  *v4[6].i8 = 0u;
  *v4->i8 = 0u;
  *v4[2].i8 = 0u;
  v7 = a2->u32[1];
  if (v7 == 512)
  {
    v8 = 1;
    v9 = 2;
  }

  else if (v7 == 1024)
  {
    v8 = 0;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = v9 + a2[18].i32[1] + 1;
  v11 = v9 + v8;
  v12 = a2->i32[0];
  if ((a2->i32[0] & 8) != 0)
  {
    v13 = 18520;
  }

  else
  {
    v13 = 18475;
  }

  v14 = a2[10].i32[0] / v7;
  v4->i16[0] = v13;
  if ((v12 & 8) != 0)
  {
    v15 = 5;
  }

  else
  {
    v15 = 4;
  }

  v4->i16[1] = v15;
  if ((v12 & 0x20) != 0)
  {
    v16 = -1073741568;
  }

  else
  {
    v16 = -2147483392;
  }

  v4->i32[1] = v16;
  v17 = v6 / (v7 >> 9);
  if ((a2->i8[0] & 0x40) != 0)
  {
    v4->i32[1] = v16 | 0x20000000;
  }

  v18 = v11 + v14;
  __buf = 0;
  v4[1].i32[0] = 825241136;
  v19 = a2[11].i32[1];
  if (v19)
  {
    v150 = 0;
    v151.tv_sec = 0;
    *&v151.tv_usec = 0;
    gettimeofday(&v151, &v150);
    if (HIDWORD(v150))
    {
      v20 = v19 - 60 * v150 + 3600;
    }

    else
    {
      v20 = v19 - 60 * v150;
    }

    v21 = a2[11].i32[1];
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v22 = v18 + 2;
  v5[5].i32[1] = v17;
  v5[2].i32[0] = v20;
  v5[2].i32[1] = v21;
  v5[3].i32[0] = 0;
  v5[3].i32[1] = v21;
  v5[5].i32[0] = v7;
  v5[6].i32[0] = v17;
  v5[7] = a2[1];
  v23 = a2[2].i32[0];
  v5[8].i32[0] = v23;
  v5[9] = 1;
  v24 = a2[10].u32[0];
  v5[14] = v24;
  v5[15].i32[0] = v24.i32[0];
  v5[15].i32[1] = v14;
  v25 = v14 + v10;
  v5[16].i32[0] = v10;
  v5[16].i32[1] = v14;
  if (a2[14].i32[0])
  {
    v5[4].i32[0] = 2;
    v5->i32[1] |= 0x2000u;
    v5[8].i32[0] = v23 + 2;
    v26 = (v7 + a2[14].i32[1] - 1) / v7;
    v27 = v14 + v10;
    v25 += v26 + 1;
    v22 += v26 + 1;
  }

  else
  {
    v27 = 0;
  }

  v28 = v17 * v7;
  v5[1].i32[1] = v27;
  v5[25].i32[0] = a2[5].i32[0];
  v29 = a2[5].u32[1];
  v5[24] = v29;
  v30 = v29.i32[0] / v7;
  v31 = v29.i32[0] / v7 + v25;
  v5[25].i32[1] = v30;
  v5[26].i32[0] = v25;
  v5[26].i32[1] = v30;
  v32 = v30 + v22;
  v33 = a2[8].u32[0];
  if (v33.i32[0])
  {
    v34 = a2[7].u32[1];
    v5[45].i32[0] = v34;
    v5[44] = v33;
    v35 = v33.i32[0] / v7;
    v5[45].i32[1] = v33.i32[0] / v7;
    v36 = v33.i32[0] / v7 + v31;
    v5[46].i32[0] = v31;
    v5[46].i32[1] = v35;
    v32 += v35;
    if (v28 < 0x200000 || a2[9].i32[1])
    {
      v31 = v36;
    }

    else
    {
      v31 = v36 + 10 * (v34 / v7);
    }
  }

  v37 = a2[2].u32[1];
  v5[35].i32[0] = v37;
  v38 = a2[3].u32[0];
  v5[34] = v38;
  v39 = v38.i32[0] / v7;
  v5[35].i32[1] = v39;
  v5[36].i32[0] = v31;
  v5[36].i32[1] = v39;
  v40 = v39 + v31 + 10 * (v37 / v7);
  if (v28 >> 31 >= 5)
  {
    v41 = 5 * (v28 >> 10);
    v42 = v28 > 0x1999999BFFLL;
    v43 = 0x20000000;
    if (!v42)
    {
      v43 = v41;
    }

    v40 += v43 / v7;
  }

  v5[6].i32[0] = v17 - (v32 + v39);
  v5[6].i32[1] = v40;
  arc4random_buf(&__buf, 8uLL);
  v5[13] = vrev32_s8(__buf);
  v44 = v5[5].i32[0] >> 9;
  sub_1000030A4(a1, 0, 0x100000uLL, 0);
  v45 = v5[16].u32[0];
  v46 = v5[46].i32[0] - v45 + v5[45].i32[1];
  sub_1000030A4(a1, v45 * v44, v5[5].u32[0] * (v46 + 1), 0);
  v147 = v44;
  sub_1000030A4(a1, v5[36].i32[0] * v44, v5[5].u32[0] * v5[35].u32[1], 0);
  v47 = 2 * a2[3].i32[1];
  v48 = v5[36].i32[0] + v5[35].i32[1] + 7;
  if (v47 <= 2 * a2[8].i32[1])
  {
    v47 = 2 * a2[8].i32[1];
  }

  if (v5[5].i32[0] <= v48 >> 3)
  {
    v49 = v48 >> 3;
  }

  else
  {
    v49 = v5[5].u32[0];
  }

  if (v47 <= v49)
  {
    v47 = v49;
  }

  v50 = (v47 + 511) & 0xFFFFFE00;
  v51 = malloc_type_valloc(v50, 0xBF8BE1E5uLL);
  if (!v51)
  {
    sub_1000038A8();
  }

  v52 = v51;
  bzero(v51, v50);
  v53 = v5[5].i32[0];
  if (v53 == 1024)
  {
    if (sub_1000032C0(a1, v5, 0, 2u) == -1)
    {
      sub_10000377C();
    }
  }

  else if (v53 == 512)
  {
    if (sub_1000032C0(a1, v5, 0, 4u) == -1)
    {
      sub_1000037A4();
    }
  }

  else if (sub_1000032C0(a1, v5, 0, 1u) == -1)
  {
    sub_100003880();
  }

  if (sub_1000032C0(a1, v5, v45, v46) == -1)
  {
    errx(1, "Overlapped extent at <%u, %u> (%d)\n");
  }

  if (sub_1000032C0(a1, v5, v5[36].u32[0], v5[35].u32[1]) == -1)
  {
    errx(1, "Overlapped catalog extent at <%u, %u>\n");
  }

  if (sub_1000032C0(a1, v5, v5[5].i32[1] - 1, 1u) == -1)
  {
    sub_100003850(&v5[5] + 1);
  }

  if (v5[5].i32[0] == 512 && sub_1000032C0(a1, v5, v5[5].i32[1] - 2, 1u) == -1)
  {
    sub_100003820(&v5[5] + 1);
  }

  v54 = v5[26].i32[0] * v44;
  v55 = a2[5].u32[1];
  v56 = a2[6].u32[0];
  bzero(v52, v56);
  *(v52 + 5) = 768;
  v57 = v52 + v56;
  *(v57 - 1) = 3584;
  *(v52 + 14) = 0;
  *(v52 + 8) = 1;
  *(v52 + 22) = 0;
  *(v52 + 15) = 0;
  *(v52 + 16) = bswap32(v56) >> 16;
  v58 = v55 / v56;
  v52[9] = bswap32(v58);
  v59 = bswap32(v58 - 1);
  v52[10] = v59;
  *(v52 + 46) = bswap32(a2[5].u32[0]);
  v52[13] |= 0x2000000u;
  *(v52 + 17) = 2560;
  *(v57 - 6) = 2013329408;
  v60 = 8 * v56 - 2048;
  v146 = a1;
  v141 = v54;
  if (v58 <= v60)
  {
    v61 = 0;
  }

  else
  {
    *v52 = 0x1000000;
    v61 = (v58 + 1887) / (8 * v56 - 160);
    v59 = bswap32(v58 - 1 - v61);
    v52[10] = v59;
  }

  v148 = a2;
  v62 = v52 + 62;
  v63 = bswap32(v59);
  v64 = v58 - v63;
  __b = v52 + 62;
  v65 = v58 - v63 - 8;
  if (v58 - v63 >= 8)
  {
    v66 = v65 >> 3;
    memset(__b, 255, v66 + 1);
    v57 = v52 + v56;
    v64 = v65 & 7;
    v62 = v52 + v66 + 249;
  }

  *v62 = -256 >> v64;
  *(v57 - 4) = bswap32((v60 >> 3) + 248) >> 16;
  v67 = (v58 - v61 - v63) * v56;
  sub_1000030A4(v146, v141, v67, v52);
  if (v61)
  {
    sub_1000034A4(v146, (v67 >> 9) + v141, v67 / v56, v61, v56, v52);
  }

  v68 = v148[8].u32[0];
  if (v68)
  {
    v69 = v148[8].u32[1];
    v70 = v5[46].i32[0] * v147;
    bzero(v52, v69);
    *(v52 + 8) = 1;
    *(v52 + 5) = 768;
    v71 = v52 + v69;
    *(v71 - 1) = 3584;
    *(v52 + 14) = 0;
    *(v52 + 22) = 0;
    *(v52 + 15) = 0;
    *(v52 + 16) = bswap32(v69) >> 16;
    v72 = v68 / v69;
    v73 = bswap32(v72 - 1);
    v52[9] = bswap32(v72);
    v52[10] = v73;
    *(v52 + 46) = bswap32(v148[7].u32[1]);
    v52[13] |= 0x6000000u;
    *(v52 + 17) = 2561;
    *(v71 - 6) = 2013329408;
    v74 = 8 * v69 - 2048;
    if (v72 <= v74)
    {
      v75 = 0;
    }

    else
    {
      *v52 = 0x1000000;
      v75 = (v72 + 1887) / (8 * v69 - 160);
      v73 = bswap32(v72 - 1 - v75);
      v52[10] = v73;
    }

    v76 = v52 + 62;
    v77 = bswap32(v73);
    v78 = v72 - v77;
    v79 = v72 - v77 - 8;
    if (v72 - v77 >= 8)
    {
      v142 = v70;
      v80 = v79 >> 3;
      memset(__b, 255, v80 + 1);
      v78 = v79 & 7;
      v81 = v52 + v80;
      v70 = v142;
      v76 = v81 + 249;
    }

    *v76 = -256 >> v78;
    *(v71 - 4) = bswap32((v74 >> 3) + 248) >> 16;
    v82 = (v72 - v75 - v77) * v69;
    sub_1000030A4(v146, v70, v82, v52);
    if (v75)
    {
      sub_1000034A4(v146, (v82 >> 9) + v70, v82 / v69, v75, v69, v52);
    }
  }

  v83 = v5[36].i32[0];
  v84 = v148[3].u32[0];
  v85 = v148[3].u32[1];
  bzero(v52, v85);
  *(v52 + 8) = 1;
  *(v52 + 5) = 768;
  v86 = v52 + v85;
  *(v52 + v85 - 2) = 3584;
  *(v52 + 7) = 256;
  v52[4] = 0x1000000;
  *(v52 + 3) = 0x100000001000000;
  if (v148[14].i32[0])
  {
    v87 = 100663296;
  }

  else
  {
    v87 = 0x2000000;
  }

  v52[5] = v87;
  *(v52 + 16) = bswap32(v85) >> 16;
  v88 = v84 / v85;
  v89 = v84 / v85 - 2;
  v90 = bswap32(v89);
  v52[9] = bswap32(v84 / v85);
  v52[10] = v90;
  *(v52 + 46) = bswap32(v148[2].u32[1]);
  v52[13] |= 0x6000000u;
  *(v52 + 17) = 1026;
  if ((v148->i32[0] & 8) != 0)
  {
    v91 = -68;
  }

  else
  {
    v91 = -49;
  }

  *(v52 + 51) = v91;
  *(v86 - 6) = 2013329408;
  v92 = 8 * v85 - 2048;
  v143 = v85;
  if (v88 <= v92)
  {
    v93 = 0;
  }

  else
  {
    *v52 = 0x2000000;
    v93 = (v88 + 1887) / (8 * v85 - 160);
    v90 = bswap32(v89 - v93);
    v52[10] = v90;
  }

  v94 = v52 + 62;
  v95 = v88 - bswap32(v90);
  v96 = v95 - 8;
  __ba = v93;
  if (v95 >= 8)
  {
    v97 = v96 >> 3;
    memset(v94, 255, v97 + 1);
    LOBYTE(v95) = v96 & 7;
    v94 = v52 + v97 + 249;
  }

  *v94 = -256 >> v95;
  *(v86 - 8) = bswap32((v92 >> 3) + 248) >> 16;
  v98 = v148[3].u16[2];
  bzero(v86, v98);
  *(v86 + 8) = 511;
  v99 = v148[13];
  if (v148[14].i32[0])
  {
    v100 = 1536;
  }

  else
  {
    v100 = 512;
  }

  *(v86 + 10) = v100;
  v101 = v86 + v98;
  *(v86 + v98 - 2) = 3584;
  v102 = CFStringCreateWithCString(kCFAllocatorDefault, v99, 0x8000100u);
  if (!_CFStringGetFileSystemRepresentation(v102, &v151, 766) || sub_100003580(&v151, v86 + 22, (v86 + 20)))
  {
    sub_1000037CC(v86, &v148[13]);
  }

  v103 = v83 * v147;
  CFRelease(v102);
  v104 = *(v86 + 20);
  *(v86 + 20) = __rev16(v104);
  v105 = 2 * v104;
  *(v86 + 14) = bswap32(2 * v104 + 6) >> 16;
  *(v86 + 16) = 0x1000000;
  v106 = (v86 + (((v104 << 49) + 0x16000000000000) >> 48));
  v106->i16[0] = 256;
  v107 = v148;
  v108 = v148->i32[0];
  if ((v148->i32[0] & 8) != 0)
  {
    v106->i16[1] = 4096;
  }

  v106->i32[1] = (v148[14].i32[0] != 0) << 25;
  v106[1].i32[0] = 0x2000000;
  v109 = bswap32(v148[11].u32[1]);
  v106[1].i32[1] = v109;
  v106[2].i32[0] = v109;
  v106[10].i32[0] = 2113929216;
  if ((v108 & 0x10) != 0)
  {
    v106[4] = vrev32_s8(v148[17]);
    v106[5].i16[1] = bswap32(v148[18].u16[0] | 0x4000) >> 16;
  }

  *(v101 - 4) = bswap32(v105 + 110) >> 16;
  v110 = v86 + (v105 + 110);
  *v110 = 1536;
  *(v110 + 2) = 0x2000000;
  v111 = v86 + (v105 + 118);
  *v111 = 768;
  *(v111 + 4) = 0x1000000;
  memmove((v111 + 8), (v86 + 20), v105 + 2);
  v112 = v105 + v105 + 118 + 10;
  *(v101 - 6) = bswap32(v112) >> 16;
  if (v148[14].i32[0])
  {
    v113 = v86 + v112;
    sub_100003580(".journal", v113 + 8, (v113 + 6));
    v114 = *(v113 + 6);
    *(v113 + 6) = __rev16(v114);
    v140 = v103;
    v115 = 2 * v114;
    LODWORD(v114) = 2 * v114 + 6;
    *v113 = bswap32(v114) >> 16;
    *(v113 + 2) = 0x2000000;
    LODWORD(v114) = v112 + v114;
    v116 = v114 + 2;
    v117 = v86 + (v114 + 2);
    *v117 = 33554944;
    *(v117 + 8) = bswap32(v148[2].u32[0]);
    v118 = bswap32(v148[11].i32[1] + 1);
    *(v117 + 12) = v118;
    *(v117 + 16) = v118;
    *(v117 + 80) = 0;
    *(v117 + 42) = 128;
    *(v117 + 41) = 0;
    *(v117 + 44) = 0x6C6E726A01000000;
    strcpy((v117 + 52), "hfs+P");
    v119 = v148[14].u32[1];
    *(v117 + 88) = bswap64(v119);
    LODWORD(v119) = bswap32((v119 + v148->i32[1] - 1) / v148->i32[1]);
    *(v117 + 100) = v119;
    *(v117 + 104) = bswap32(v5[1].i32[1] + 1);
    *(v117 + 108) = v119;
    LODWORD(v114) = v114 + 250;
    *(v101 - 8) = bswap32(v114) >> 16;
    v120 = v86 + v114;
    sub_100003580(".journal_info_block", v120 + 8, (v120 + 6));
    v121 = *(v120 + 6);
    *(v120 + 6) = __rev16(v121);
    v122 = 2 * v121;
    LODWORD(v121) = 2 * v121 + 6;
    *v120 = bswap32(v121) >> 16;
    *(v120 + 2) = 0x2000000;
    LODWORD(v121) = v116 + v121;
    v123 = v86 + (v121 + 250);
    *v123 = 33554944;
    *(v123 + 8) = bswap32(v148[2].i32[0] + 1);
    v124 = bswap32(v148[11].u32[1]);
    *(v123 + 12) = v124;
    *(v123 + 16) = v124;
    *(v123 + 80) = 0;
    *(v123 + 42) = 128;
    *(v123 + 41) = 0;
    *(v123 + 44) = 0x6C6E726A01000000;
    strcpy((v123 + 52), "hfs+P");
    *(v123 + 88) = bswap64(v148->u32[1]);
    *(v123 + 100) = 0x1000000;
    *(v123 + 104) = bswap32(v5[1].u32[1]);
    *(v123 + 108) = 0x1000000;
    *(v101 - 10) = bswap32(v121 + 498) >> 16;
    v125 = v86 + (v121 + 498);
    *v125 = 1536;
    *(v125 + 2) = bswap32(v148[2].u32[0]);
    *(v125 + 6) = 0x4000000;
    v126 = v121 + 506;
    v127 = v86 + (v121 + 506);
    *(v127 + 4) = 0x2000000;
    v128 = (v113 + 6);
    v107 = v148;
    memmove((v127 + 8), v128, v115 + 2);
    v129 = v115 + v126;
    v103 = v140;
    *(v101 - 12) = bswap32(v129 + 10) >> 16;
    v130 = v86 + (v129 + 10);
    *v130 = 1536;
    *(v130 + 2) = bswap32(v148[2].i32[0] + 1);
    *(v130 + 6) = 0;
    v131 = v129 + 18;
    v132 = v86 + (v129 + 18);
    *v132 = 1024;
    *(v132 + 4) = 0x2000000;
    memmove((v132 + 8), (v120 + 6), v122 + 2);
    *(v101 - 14) = bswap32(v122 + v131 + 10) >> 16;
  }

  v133 = (bswap32(v52[9]) - (__ba + bswap32(v52[10]))) * v143;
  sub_1000030A4(v146, v103, v133, v52);
  if (__ba)
  {
    sub_1000034A4(v146, (v133 >> 9) + v103, v133 / v143, __ba, v143, v52);
  }

  if (v107[14].i32[0])
  {
    v134 = v5[1].i32[1] * v147;
    memset(v52, 219, v146[6]);
    *(v52 + 2) = 0u;
    *(v52 + 3) = 0u;
    *(v52 + 4) = 0u;
    *(v52 + 5) = 0u;
    *(v52 + 6) = 0u;
    *(v52 + 7) = 0u;
    *(v52 + 8) = 0u;
    *(v52 + 9) = 0u;
    *(v52 + 10) = 0u;
    v52[44] = 0;
    *v52 = 0u;
    *(v52 + 1) = 0u;
    v135 = v5[5].u32[0] * (v5[1].i32[1] + 1);
    v136 = v107[14].u32[1];
    *v52 = 83886080;
    *(v52 + 9) = bswap64(v135);
    *(v52 + 11) = bswap64(v136);
    sub_1000030A4(v146, v134, v146[6], v52);
    v137 = bswap32(*v52);
    *v52 = v137;
    v138 = vrev64q_s8(*(v52 + 9));
    *(v52 + 9) = v138;
    if (v137)
    {
      sub_1000030A4(v146, v138.i64[0] >> 9, v138.u64[1], 0);
    }
  }

  sub_10000367C(v5);
  sub_1000030A4(v146, 2, 0x200uLL, v5);
  sub_1000030A4(v146, *(v146 + 2) - 2, 0x200uLL, v5);
  free(v52);
  free(v5);
  return 0;
}

void sub_1000030A4(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  if (a3)
  {
    v5 = a3;
    __fd = *a1;
    v8 = *(a1 + 24);
    v9 = (a3 + v8 - 1) / v8;
    if (v9 >= *(a1 + 32))
    {
      v9 = *(a1 + 32);
    }

    if (0x400000 / v8 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x400000 / v8;
    }

    v11 = malloc_type_valloc(v10 * v8, 0x6C96CD7CuLL);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v13 = malloc_type_valloc(v8, 0x33422AD1uLL);
      if (!v13)
      {
        sub_1000038A8();
      }

      v12 = v13;
      v10 = 1;
    }

    v14 = a2 + *(a1 + 8);
    v15 = v14 / (v8 >> 9);
    v16 = (v14 % (v8 >> 9)) << 9;
    v17 = v10;
    do
    {
      if ((v8 - 1 + v5) / v8 >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = (v8 - 1 + v5) / v8;
      }

      v19 = v18 * v8 - v16;
      if (v5 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v5;
      }

      if ((v16 || v20 % v8) && pread(__fd, v12, v18 * v8, v15 * v8) < 0)
      {
        free(v12);
        err(1, "read (sector %llu)");
      }

      v21 = &v12[v16];
      if (a4)
      {
        memcpy(v21, a4, v20);
      }

      else
      {
        bzero(v21, v20);
      }

      if (pwrite(__fd, v12, v18 * v8, v15 * v8) < 0)
      {
        warn("%s:  pwrite(%d, %p, %zu, %lld)", "WriteBuffer", __fd, v12, v18 * v8, v15 * v8);
        free(v12);
        err(1, "write (sector %llu)");
      }

      v16 = 0;
      v15 += v18;
      if (a4)
      {
        a4 += v20;
      }

      else
      {
        a4 = 0;
      }

      v5 -= v20;
    }

    while (v5);

    free(v12);
  }
}

uint64_t sub_1000032C0(int *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = a1[6];
  v9 = malloc_type_valloc(v8, 0x88395A0EuLL);
  if (!v9)
  {
    sub_1000038A8();
  }

  v10 = v9;
  if (a4)
  {
    v21 = v9;
    v22 = 8 * v8;
    while (1)
    {
      *v10 = 0;
      v11 = a3 % v22;
      v12 = v22 - v11 >= a4 ? a4 : v22 - v11;
      v13 = (*(a2 + 40) * *(a2 + 128)) + (a3 / v22) * v8;
      v14 = pread(*a1, v10, v8, v13);
      if (v14 < v8)
      {
        break;
      }

      v15 = v10 + (v11 >> 3);
      v16 = v11 & 7;
      if ((v11 & 7) != 0)
      {
        if (8 - v16 <= v12)
        {
          v17 = 0;
        }

        else
        {
          v17 = 8 - (v12 + v16);
        }

        *v15++ |= (255 << v17) & (0xFFu >> v16);
        v18 = v12 + v16 + v17 - 8;
      }

      else
      {
        v18 = v12;
      }

      if (v18 >= 8)
      {
        memset(v15, 255, v18 >> 3);
        v15 += v18 >> 3;
        v10 = v21;
        v18 &= 7u;
      }

      if (v18)
      {
        *v15 |= -1 << (8 - v18);
      }

      if (pwrite(*a1, v10, v8, v13) != v8)
      {
        goto LABEL_22;
      }

      a3 += v12;
      a4 -= v12;
      if (!a4)
      {
        goto LABEL_20;
      }
    }

    if (v14 == -1)
    {
      err(1, "%s::pread(%d, %p, %zu, %lld)", "MarkExtentUsed", *a1, v10, v8, v13);
    }

LABEL_22:
    v19 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_20:
    v19 = 0;
  }

  free(v10);
  return v19;
}

void sub_1000034A4(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, char *a6)
{
  v12 = a5;
  bzero(a6, a5);
  a6[8] = 2;
  *(a6 + 5) = 256;
  v13 = &a6[a5];
  *(v13 - 1) = 3584;
  *(v13 - 2) = bswap32(a5 - 6) >> 16;
  if (a4)
  {
    v14 = 0;
    v15 = 0;
    v16 = a5 >> 9;
    do
    {
      v17 = v14 + 1;
      v18 = bswap32(a3 + 1);
      v19 = v17 >= a4;
      if (v17 >= a4)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      if (!v19)
      {
        ++a3;
      }

      *a6 = v20;
      sub_1000030A4(a1, a2, v12, a6);
      a2 += v16;
      v14 = ++v15;
    }

    while (v15 < a4);
  }
}

uint64_t sub_100003580(unsigned __int8 *a1, uint64_t a2, _WORD *a3)
{
  *a3 = 0;
  v3 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = a1 + 1;
      if ((v3 & 0x80) != 0)
      {
        if ((v3 >> 4) - 12 >= 2)
        {
          if (v3 >> 4 != 14)
          {
            return 22;
          }

          v9 = *v6;
          if ((v9 & 0xC0) != 0x80)
          {
            return 22;
          }

          v7 = a1[2];
          if ((v7 & 0xC0) != 0x80)
          {
            return 22;
          }

          v8 = (v3 << 12) | ((v9 & 0x3F) << 6);
          v6 = a1 + 3;
        }

        else
        {
          v7 = a1[1];
          if ((v7 & 0xC0) != 0x80)
          {
            return 22;
          }

          v8 = (v3 & 0x1F) << 6;
          v6 = a1 + 2;
        }

        if (v5 > 0x1FD)
        {
          return 55;
        }

        v3 = bswap32(v8 + (v7 & 0x3F)) >> 16;
      }

      else
      {
        if (v3 == 58)
        {
          LOWORD(v3) = 47;
        }

        LOWORD(v3) = v3 << 8;
      }

      *(a2 + v5) = v3;
      v5 += 2;
      v3 = *v6;
      ++v4;
      a1 = v6;
      if (!*v6)
      {
        goto LABEL_19;
      }
    }
  }

  v4 = 0;
LABEL_19:
  result = 0;
  *a3 = v4;
  return result;
}

void sub_100003664()
{

  err(1, 0);
}

double sub_10000367C(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  a1[1] = bswap32(a1[1]) >> 16;
  *(a1 + 2) = vrev32q_s8(*(a1 + 2));
  *(a1 + 10) = vrev32q_s8(*(a1 + 10));
  *(a1 + 18) = vrev32q_s8(*(a1 + 18));
  *(a1 + 26) = vrev32q_s8(*(a1 + 26));
  *(a1 + 17) = bswap32(*(a1 + 17));
  *(a1 + 9) = bswap64(*(a1 + 9));
  sub_100003738((a1 + 56));
  sub_100003738((a1 + 96));
  sub_100003738((a1 + 136));
  sub_100003738((a1 + 176));

  *&result = sub_100003738((a1 + 216)).u64[0];
  return result;
}

int8x16_t sub_100003738(uint64_t a1)
{
  v1 = 0;
  *a1 = bswap64(*a1);
  *(a1 + 8) = vrev32_s8(*(a1 + 8));
  v2 = a1 + 16;
  do
  {
    v3 = (v2 + v1);
    result = vrev32q_s8(*(v2 + v1 + 16));
    *v3 = vrev32q_s8(*(v2 + v1));
    v3[1] = result;
    v1 += 32;
  }

  while (v1 != 64);
  return result;
}