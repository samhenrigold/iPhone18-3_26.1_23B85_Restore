uint64_t sub_100000768(uint64_t *a1, int *a2, void *a3)
{
  v6 = a3 && *a3 && a3[1] && a3[2] != 0;
  v7 = *(a2 + 1);
  v8 = *(a2 + 6);
  v188 = 0;
  v9 = *a2;
  v10 = *(a2 + 34);
  v11 = *(a2 + 20);
  v187.tv_sec = 0;
  *&v187.tv_usec = 0;
  v186 = 0;
  v184 = 0u;
  v185 = 0u;
  *size = 0u;
  v183 = 0u;
  v181 = 0;
  tv_sec = 0;
  if (v6)
  {
    (a3[1])("Format device: Checking parameters", 10, 10, &v188, *a3);
  }

  v12 = v10 & 0xF000;
  if (v12 != 0x2000)
  {
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    sub_100002D00(__str, 6, "warning: %s is not a character device\n", v7);
  }

  v186 = 0;
  v184 = 0u;
  v185 = 0u;
  *size = 0u;
  v183 = 0u;
  v13 = a1[3];
  if (v13)
  {
    v14 = sub_1000022A8(v13, size);
    if (v15)
    {
LABEL_38:
      v27 = 0;
      goto LABEL_39;
    }

    HIDWORD(v184) = DWORD1(v183);
    LODWORD(v185) = HIDWORD(v183);
    DWORD1(v183) = 0;
    HIDWORD(v183) = 0;
  }

  v16 = *(a1 + 15);
  if (v16)
  {
    DWORD1(v184) = *(a1 + 15);
  }

  v17 = *(a1 + 23);
  if (v17)
  {
    LODWORD(v184) = *(a1 + 23);
  }

  if (v6)
  {
    ++v188;
  }

  v18 = *(a1 + 10);
  if (v18)
  {
    LODWORD(size[0]) = *(a1 + 10);
  }

  v19 = *(a1 + 22);
  if (v19)
  {
    HIDWORD(v184) = *(a1 + 22);
  }

  v20 = *(a1 + 28);
  if (v20)
  {
    DWORD2(v184) = *(a1 + 20);
  }

  if (!a1[3] && (!v16 || !v17 || !v18 || !v19 || !v20))
  {
    v21 = *(a2 + 11);
    v199 = *(a2 + 10);
    v200 = v21;
    v201 = *(a2 + 12);
    v22 = *(a2 + 7);
    v195 = *(a2 + 6);
    v196 = v22;
    v23 = *(a2 + 9);
    v197 = *(a2 + 8);
    v198 = v23;
    v24 = *(a2 + 3);
    v191 = *(a2 + 2);
    v192 = v24;
    v25 = *(a2 + 5);
    v193 = *(a2 + 4);
    v194 = v25;
    v26 = *(a2 + 1);
    *__str = *a2;
    v190 = v26;
    if (sub_10000235C(__str, v20, size))
    {
      goto LABEL_38;
    }
  }

  if (v6)
  {
    ++v188;
  }

  if ((size[0] & (LODWORD(size[0]) - 1)) != 0)
  {
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    sub_100002D00(__str, 3, "bytes/sector (%u) is not a power of 2");
    goto LABEL_38;
  }

  if (LODWORD(size[0]) <= 0x7F)
  {
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    sub_100002D00(__str, 3, "bytes/sector (%u) is too small; minimum is %u");
    goto LABEL_38;
  }

  if (LODWORD(size[0]) > 0x1000)
  {
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    sub_100002D00(__str, 3, "bytes/sector (%u) is too large; maximum is %u");
    goto LABEL_38;
  }

  v31 = *(a1 + 24);
  if ((v31 & (v31 - 1)) != 0)
  {
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    sub_100002D00(__str, 3, "physical bytes/sector (%u) is not a power of 2");
    goto LABEL_38;
  }

  if (v6)
  {
    ++v188;
  }

  if (v31)
  {
    if (v31 < LODWORD(size[0]))
    {
      *__str = xmmword_10000C490;
      *&v190 = qword_10000C4A0;
      sub_100002D00(__str, 3, "physical bytes/sector (%u) is less than logical bytes/sector (%u)");
      goto LABEL_38;
    }
  }

  else
  {
    v32 = a2[4];
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    if (v32 == -1)
    {
      sub_100002D00(__str, 6, "Physical block size wasn't initialized, because of ioctl(DKIOCGETPHYSICALBLOCKSIZE) not being supported\n");
      v32 = size[0];
    }

    else
    {
      sub_100002D00(__str, 6, "%u bytes per physical sector\n", v32);
    }

    *(a1 + 24) = v32;
  }

  if (v6)
  {
    ++v188;
  }

  v33 = *(a1 + 8);
  v181 = v33;
  if (v33 == 32)
  {
    if (*(a1 + 14))
    {
LABEL_67:
      *__str = xmmword_10000C490;
      *&v190 = qword_10000C4A0;
      sub_100002D00(__str, 3, "-%c is not a legal FAT%s option");
      goto LABEL_38;
    }

    goto LABEL_71;
  }

  if (!v33)
  {
    if (a1[3])
    {
      v181 = 12;
      goto LABEL_65;
    }

    if (!*(a1 + 14) && (*(a1 + 16) || *(a1 + 17)))
    {
      v181 = 32;
LABEL_71:
      if (a1[3])
      {
        LODWORD(v183) = 0;
      }

      goto LABEL_73;
    }
  }

LABEL_65:
  if (*(a1 + 16) || *(a1 + 17))
  {
    goto LABEL_67;
  }

LABEL_73:
  v34 = *(a1 + 12);
  if (v34)
  {
    if ((v34 & (v34 - 1)) != 0)
    {
      *__str = xmmword_10000C490;
      *&v190 = qword_10000C4A0;
      sub_100002D00(__str, 3, "block size (%u) is not a power of 2");
      goto LABEL_38;
    }

    if (v34 < LODWORD(size[0]))
    {
      *__str = xmmword_10000C490;
      *&v190 = qword_10000C4A0;
      sub_100002D00(__str, 3, "block size (%u) is too small; minimum is %u");
      goto LABEL_38;
    }

    if (v34 > LODWORD(size[0]) << 7)
    {
      *__str = xmmword_10000C490;
      *&v190 = qword_10000C4A0;
      sub_100002D00(__str, 3, "block size (%u) is too large; maximum is %u");
      goto LABEL_38;
    }

    HIDWORD(size[0]) = v34 / LODWORD(size[0]);
  }

  v35 = *(a1 + 13);
  if (v35)
  {
    if ((v35 & (v35 - 1)) != 0)
    {
      *__str = xmmword_10000C490;
      *&v190 = qword_10000C4A0;
      sub_100002D00(__str, 3, "sectors/cluster (%u) is not a power of 2");
      goto LABEL_38;
    }

    HIDWORD(size[0]) = *(a1 + 13);
  }

  if (*(a1 + 21))
  {
    LODWORD(size[1]) = *(a1 + 21);
  }

  if (v6)
  {
    ++v188;
  }

  v36 = *(a1 + 19);
  if (v36)
  {
    if (v36 >= 0x11)
    {
      *__str = xmmword_10000C490;
      *&v190 = qword_10000C4A0;
      sub_100002D00(__str, 3, "number of FATs (%u) is too large; maximum is %u", v36, 16);
      v36 = *(a1 + 19);
    }

    HIDWORD(size[1]) = v36;
  }

  if (*(a1 + 14))
  {
    LODWORD(v183) = *(a1 + 14);
  }

  if (*(a1 + 27))
  {
    if (*(a1 + 18) <= 0xEFu)
    {
      *__str = xmmword_10000C490;
      *&v190 = qword_10000C4A0;
      sub_100002D00(__str, 3, "illegal media descriptor (%#x)");
      goto LABEL_38;
    }

    DWORD2(v183) = *(a1 + 18);
  }

  if (*(a1 + 11))
  {
    LODWORD(v185) = *(a1 + 11);
  }

  if (*(a1 + 16))
  {
    DWORD2(v185) = *(a1 + 16);
  }

  if (*(a1 + 17))
  {
    HIDWORD(v185) = *(a1 + 17);
  }

  v37 = *a1;
  if (*a1)
  {
    if (v12 != 0x8000 || v11 % LODWORD(size[0]) || v11 < LODWORD(size[0]) || v11 > (0xFFFF * LODWORD(size[0])))
    {
      *__str = xmmword_10000C490;
      *&v190 = qword_10000C4A0;
      sub_100002D00(__str, 3, "%s: inappropriate file type or format");
      goto LABEL_38;
    }

    v38 = v11 / LODWORD(size[0]);
  }

  else
  {
    v38 = 1;
    v37 = v8;
  }

  if (!HIDWORD(size[1]))
  {
    HIDWORD(size[1]) = 2;
  }

  if (v6)
  {
    ++v188;
    sub_100002600(v7, &v181, size);
    ++v188;
  }

  else
  {
    sub_100002600(v7, &v181, size);
  }

  v39 = HIDWORD(size[0]);
  if (!HIDWORD(size[0]))
  {
    v44 = HIDWORD(v184) * LODWORD(size[0]);
    v45 = v44 >> 10;
    v46 = __PAIR64__(v181, v181) >> 2;
    if (v46 > 3)
    {
      if (v46 == 4)
      {
        goto LABEL_171;
      }

      if (v46 != 8)
      {
        goto LABEL_146;
      }
    }

    else
    {
      if (v46)
      {
        if (v46 == 3)
        {
          goto LABEL_133;
        }

LABEL_146:
        *__str = xmmword_10000C490;
        *&v190 = qword_10000C4A0;
        sub_100002D00(__str, 3, "Invalid FAT type: %d");
        goto LABEL_38;
      }

      if (LODWORD(size[0]) == 512 && HIDWORD(v184) <= 0x20D0)
      {
        v181 = 12;
LABEL_150:
        if (LODWORD(size[1]))
        {
          v51 = size[1];
        }

        else
        {
          v51 = v38;
        }

        v52 = v183;
        if (!v183)
        {
          v52 = 512;
        }

        if (v52 % (LODWORD(size[0]) >> 5))
        {
          v53 = v52 / (LODWORD(size[0]) >> 5) + 1;
        }

        else
        {
          v53 = v52 / (LODWORD(size[0]) >> 5);
        }

        v54 = HIDWORD(size[1]) + HIDWORD(size[1]) * (0x2FE5u / (2 * LODWORD(size[0]))) + v53;
        v55 = size[0];
        do
        {
          v39 = v55 / LODWORD(size[0]);
          v40 = 12;
          if (v51 + 4085 * (v55 / LODWORD(size[0])) + v54 >= HIDWORD(v184))
          {
            break;
          }

          v56 = v55 > 0x4000;
          v55 *= 2;
        }

        while (!v56);
LABEL_179:
        HIDWORD(size[0]) = v39;
        if (v39)
        {
          goto LABEL_180;
        }

LABEL_198:
        *__str = xmmword_10000C490;
        *&v190 = qword_10000C4A0;
        sub_100002D00(__str, 3, "FAT%d is impossible with %u sectors");
        goto LABEL_38;
      }

      if (LODWORD(size[0]) != 512 && HIDWORD(v184) <= 0x1068)
      {
        v181 = 12;
LABEL_133:
        if (LODWORD(size[0]) > 0x8000)
        {
          goto LABEL_198;
        }

        goto LABEL_150;
      }

      if (v44 <= 0x200003FF)
      {
        v181 = 16;
LABEL_171:
        v57 = 0;
        do
        {
          v58 = &unk_10000C000 + 16 * v57++;
        }

        while (v45 > *v58);
        v49 = *(v58 + 2);
        if (v49)
        {
          v40 = 16;
          goto LABEL_175;
        }

        *__str = xmmword_10000C490;
        *&v190 = qword_10000C4A0;
        goto LABEL_281;
      }

      v181 = 32;
    }

    v47 = 0;
    do
    {
      v48 = &unk_10000C080 + 16 * v47++;
    }

    while (v45 > *v48);
    v49 = *(v48 + 2);
    if (v49)
    {
      v40 = 32;
LABEL_175:
      if (v49 <= LODWORD(size[0]))
      {
        v59 = size[0];
      }

      else
      {
        v59 = v49;
      }

      v39 = v59 / LODWORD(size[0]);
      goto LABEL_179;
    }

    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
LABEL_281:
    sub_100002D00(__str, 3, "FAT%d is impossible for disk size of %lluKiB");
    goto LABEL_38;
  }

  v40 = v181;
  if (!v181)
  {
    v41 = size[1];
    if (!LODWORD(size[1]))
    {
      v41 = v38;
    }

    if (v183)
    {
      v42 = v183;
    }

    else
    {
      v42 = 512;
    }

    if (v42 % (LODWORD(size[0]) >> 5))
    {
      v43 = v42 / (LODWORD(size[0]) >> 5) + 1;
    }

    else
    {
      v43 = v42 / (LODWORD(size[0]) >> 5);
    }

    if (HIDWORD(size[1]) + HIDWORD(size[1]) * (0x2FE5u / (4 * LODWORD(size[0]))) + v41 + (4085 * HIDWORD(size[0])) + v43 <= HIDWORD(v184))
    {
      if (0x1FFECu / LODWORD(size[0]) * LODWORD(size[0]) == 131052)
      {
        v50 = 0x1FFECu / LODWORD(size[0]);
      }

      else
      {
        v50 = 0x1FFECu / LODWORD(size[0]) + 1;
      }

      if (v41 + v50 * HIDWORD(size[1]) + (65525 * HIDWORD(size[0])) + v43 <= HIDWORD(v184))
      {
        v40 = 32;
      }

      else
      {
        v40 = 16;
      }
    }

    else
    {
      v40 = 12;
    }

    v181 = v40;
  }

LABEL_180:
  if (v6)
  {
    v188 += 3;
  }

  v60 = v38;
  if (v40 == 32)
  {
    v61 = DWORD2(v185);
    if (DWORD2(v185))
    {
      v62 = HIDWORD(v185);
    }

    else
    {
      if (v38 == 0xFFFF || (v62 = HIDWORD(v185), v38 == HIDWORD(v185)))
      {
        *__str = xmmword_10000C490;
        *&v190 = qword_10000C4A0;
        sub_100002D00(__str, 3, "no room for info sector", v160, v162);
        goto LABEL_38;
      }

      DWORD2(v185) = v38;
      v61 = v38;
    }

    if (v38 > v61 || v61 == 0xFFFF)
    {
      v64 = v38;
    }

    else
    {
      v64 = v61 + 1;
    }

    if (v62 != 0xFFFF)
    {
      if (v62)
      {
        if (v62 == v61)
        {
          *__str = xmmword_10000C490;
          *&v190 = qword_10000C4A0;
          sub_100002D00(__str, 3, "backup sector would overwrite info sector", v160, v162);
          goto LABEL_38;
        }
      }

      else
      {
        if (v64 == 0xFFFF)
        {
          *__str = xmmword_10000C490;
          *&v190 = qword_10000C4A0;
          sub_100002D00(__str, 3, "no room for backup sector", v160, v162);
          goto LABEL_38;
        }

        if (v64 <= 6)
        {
          v62 = 6;
        }

        else
        {
          v62 = v64;
        }

        HIDWORD(v185) = v62;
      }
    }

    if (v64 > v62 || v62 == 0xFFFF)
    {
      v60 = v64;
    }

    else
    {
      v60 = v62 + 1;
    }
  }

  v66 = size[1];
  if (LODWORD(size[1]))
  {
    if (LODWORD(size[1]) < v60)
    {
      *__str = xmmword_10000C490;
      *&v190 = qword_10000C4A0;
      sub_100002D00(__str, 3, "too few reserved sectors", v160, v162);
      goto LABEL_38;
    }
  }

  else
  {
    if (v60 <= 0x20)
    {
      v66 = 32;
    }

    else
    {
      v66 = v60;
    }

    if (v40 != 32)
    {
      v66 = v60;
    }

    LODWORD(size[1]) = v66;
  }

  v67 = v183;
  if (v40 != 32 && !v183)
  {
    v67 = 512;
    LODWORD(v183) = 512;
  }

  v68 = v185;
  if (v67 % (LODWORD(size[0]) >> 5))
  {
    v69 = v67 / (LODWORD(size[0]) >> 5) + 1;
  }

  else
  {
    v69 = v67 / (LODWORD(size[0]) >> 5);
  }

  if (v40 != 32 && v185 >= 0x10000)
  {
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    sub_100002D00(__str, 3, "too many sectors/FAT for FAT12/16", v160, v162);
    goto LABEL_38;
  }

  v70 = (v66 + v69);
  if (v185 <= 1)
  {
    v71 = 1;
  }

  else
  {
    v71 = v185;
  }

  if (v70 + HIDWORD(size[1]) * v71 > HIDWORD(v184))
  {
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    sub_100002D00(__str, 3, "meta data exceeds file system size", v160, v162);
    goto LABEL_38;
  }

  v171 = v69;
  v173 = v38;
  v174 = v70 + HIDWORD(size[1]) * v71;
  v72 = (HIDWORD(v184) - v174);
  v73 = 2 * LODWORD(size[0]);
  v74 = v40 >> 2;
  v75 = 2 * LODWORD(size[0]) * v72 / (HIDWORD(size[1]) * v74 + 2 * LODWORD(size[0]) * v39);
  if (v40 == 16)
  {
    v76 = 65524;
  }

  else
  {
    v76 = 268435445;
  }

  if (v40 == 12)
  {
    v77 = 4084;
  }

  else
  {
    v77 = v76;
  }

  v176 = v77;
  if (v77 <= v75)
  {
    v80 = v76 | 2;
    if (v40 == 12)
    {
      v80 = 4086;
    }

    v81 = v80 * v74 % v73;
    v78 = (v77 | 2) * v74;
    if (v81)
    {
      goto LABEL_243;
    }
  }

  else
  {
    v78 = (v75 + 2) * v74;
    if (v78 % v73)
    {
LABEL_243:
      v79 = v78 / v73 + 1;
      goto LABEL_248;
    }
  }

  v79 = v78 / v73;
LABEL_248:
  if (!v185)
  {
    LODWORD(v185) = v79;
    v82 = *(a1 + 24);
    v68 = v79;
    if (v82 > LODWORD(size[0]))
    {
      v68 = v79;
      if (v79 % (v82 / LODWORD(size[0])))
      {
        v68 = v82 / LODWORD(size[0]) + v79 - v79 % (v82 / LODWORD(size[0]));
        LODWORD(v185) = v68;
      }
    }

    v174 += (v68 - 1) * HIDWORD(size[1]);
    LODWORD(v72) = HIDWORD(v184) - v174;
  }

  v83 = 2 * LODWORD(size[0]) * v68 / v74 - 2;
  v84 = v72 / v39;
  if (v72 / v39 > v83)
  {
    HIDWORD(v184) = v70 + v68 * HIDWORD(size[1]) + v83 * v39;
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    sub_100002D00(__str, 6, "warning: sectors/FAT limits sectors to %u, clusters to %u\n", HIDWORD(v184), v83);
    v68 = v185;
    v84 = v83;
  }

  if (v68 < v79)
  {
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    sub_100002D00(__str, 6, "warning: sectors/FAT limits file system to %u clusters\n", v84);
  }

  if (v40 == 16)
  {
    v85 = 4085;
  }

  else
  {
    v85 = 65525;
  }

  if (v40 == 12)
  {
    v85 = 1;
  }

  if (v84 < v85)
  {
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    sub_100002D00(__str, 3, "%u clusters too few clusters for FAT%u, need %u");
    goto LABEL_38;
  }

  v86 = HIDWORD(size[0]);
  if (v84 > v176)
  {
    v84 = v176;
    HIDWORD(v184) = v174 + HIDWORD(size[0]) + HIDWORD(size[0]) * v176 - 1;
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    sub_100002D00(__str, 6, "warning: FAT type limits file system to %u sectors\n", HIDWORD(v184));
    v86 = HIDWORD(size[0]);
  }

  v87 = "s";
  if (v86 * v84 == 1)
  {
    v88 = &unk_100004949;
  }

  else
  {
    v88 = "s";
  }

  v168 = v84 - 1;
  if (v84 == 1)
  {
    v87 = &unk_100004949;
  }

  *__str = xmmword_10000C490;
  *&v190 = qword_10000C4A0;
  sub_100002D00(__str, 6, "%s: %u sector%s in %u FAT%u cluster%s (%u bytes/cluster)\n", v7, v86 * v84, v88, v84, v40, v87, LODWORD(size[0]) * v86);
  if (!DWORD2(v183))
  {
    if (DWORD2(v184))
    {
      v89 = 248;
    }

    else
    {
      v89 = 240;
    }

    DWORD2(v183) = v89;
  }

  if (v40 == 32)
  {
    DWORD1(v185) = 2;
    if (HIDWORD(v184) < 0x10000)
    {
      DWORD1(v183) = HIDWORD(v184);
    }

    HIDWORD(v183) = 0;
    v90 = (&v183 + 4);
  }

  else
  {
    v90 = &v185;
    if (!HIWORD(HIDWORD(v184)))
    {
      DWORD1(v183) = HIDWORD(v184);
      HIDWORD(v184) = 0;
    }

    HIDWORD(v183) = v185;
  }

  *v90 = 0;
  if (v6)
  {
    v188 = 10;
    (a3[2])("Format device: Checking parameters", *a3);
    sub_100002700(size);
    if (*(a1 + 25))
    {
      v28 = 0;
      v29 = &off_1000081C0;
      v27 = 1;
      goto LABEL_41;
    }

    v188 = 0;
    v27 = 1;
    (a3[1])("Format device: Wiping file system", 10, 1, &v188, *a3);
  }

  else
  {
    sub_100002700(size);
    v27 = 0;
    v28 = 0;
    if (*(a1 + 25))
    {
      return v28;
    }
  }

  gettimeofday(&v187, 0);
  tv_sec = v187.tv_sec;
  v166 = localtime(&tv_sec);
  __src = malloc_type_malloc(0x20000uLL, 0x6E36B54BuLL);
  if (__src && (__dst = malloc_type_malloc(LODWORD(size[0]), 0xDDC8FA22uLL)) != 0)
  {
    v91 = v185;
    if (HIDWORD(v183))
    {
      v91 = HIDWORD(v183);
    }

    v92 = LODWORD(size[1]) + v91 * HIDWORD(size[1]);
    v93 = v171;
    if (v40 == 32)
    {
      v93 = HIDWORD(size[0]);
    }

    v164 = v92;
    v167 = v92 + v93;
    if (*(&xmmword_10000C490 + 1))
    {
      *__str = v9;
      *&__str[4] = 0;
      *&__str[8] = LODWORD(size[0]);
      LODWORD(v190) = 0;
      DWORD1(v190) = v92 + v93;
      v94 = (*(&xmmword_10000C490 + 1))(qword_10000C4A0, __str);
      if (v94)
      {
        v28 = v94;
        *__str = xmmword_10000C490;
        *&v190 = qword_10000C4A0;
        sub_100002D00(__str, 3, "Encountered errors trying to wipe resource");
        if (!v6)
        {
          return v28;
        }

        goto LABEL_40;
      }
    }

    if (v6)
    {
      v188 = 1;
      (a3[2])((&off_1000081C0)[v27], *a3);
      v188 = 0;
      (a3[1])((&off_1000081C0)[++v27], 80, (v167 + 2), &v188, *a3);
    }

    if (v167)
    {
      v175 = 0;
      v177 = 0;
      v172 = 0;
      v97 = __src;
      while (1)
      {
        v98 = v181;
        v99 = HIDWORD(v185);
        if (*a1)
        {
          v100 = HIDWORD(v185) == 0xFFFF;
        }

        else
        {
          v100 = 1;
        }

        v102 = v100 || v181 != 32;
        if (v173 > HIDWORD(v185) || v177 < HIDWORD(v185))
        {
          v102 = 1;
        }

        v104 = v102 == 0;
        if (v102)
        {
          v99 = 0;
        }

        v105 = v175;
        if (v104)
        {
          v105 = 0;
        }

        v175 = v105;
        if (*a1 && (v106 = (v177 - v99), v106 < v173))
        {
          v107 = (a3[4])(a3[3], v97, LODWORD(size[0]), v105);
          if (v107 == -1)
          {
            v158 = __error();
            v157 = strerror(*v158);
            v178 = xmmword_10000C490;
            v179 = qword_10000C4A0;
            v163 = v37;
            goto LABEL_433;
          }

          v108 = size[0];
          if (v107 != LODWORD(size[0]))
          {
            v178 = xmmword_10000C490;
            v179 = qword_10000C4A0;
            v161 = v37;
            v163 = v106;
            v159 = "%s: can't read sector %u";
            goto LABEL_434;
          }
        }

        else
        {
          v109 = size[0];
          bzero(v97, LODWORD(size[0]));
          v108 = v109;
        }

        if (!v177 || v98 == 32 && HIDWORD(v185) != 0xFFFF && v177 == HIDWORD(v185))
        {
          *(v97 + 11) = v108;
          v110 = size[1];
          *(v97 + 13) = BYTE4(size[0]);
          *(v97 + 14) = v110;
          v111 = v183;
          *(v97 + 16) = BYTE4(size[1]);
          *(v97 + 17) = v111;
          *(v97 + 19) = WORD2(v183);
          *(v97 + 21) = BYTE8(v183);
          *(v97 + 22) = WORD6(v183);
          *(v97 + 24) = v184;
          *(v97 + 26) = WORD2(v184);
          *(v97 + 28) = *(&v184 + 1);
          if (v98 == 32)
          {
            v112 = WORD1(v185);
            *(v97 + 36) = v185;
            *(v97 + 38) = v112;
            *(v97 + 40) = 0;
            *(v97 + 44) = DWORD1(v185);
            *(v97 + 48) = WORD4(v185);
            *(v97 + 50) = WORD6(v185);
            v113 = 64;
          }

          else
          {
            v113 = 36;
          }

          v169 = v113;
          v114 = v97 + v113;
          *v114 = v186;
          *(v114 + 2) = 41;
          if (*(a1 + 26))
          {
            v115 = *(a1 + 9);
          }

          else
          {
            v115 = (v166[2].i32[1] + (v166->i32[1] | (v166[1].i32[0] << 8)) + 1900) | ((((v187.tv_usec / 10) | (v166->i32[0] << 8)) + (((v166[2].i32[0] << 8) + 256) | v166[1].i32[1])) << 16);
          }

          *(v114 + 3) = v115;
          if (a1[1])
          {
            v118 = a1[1];
          }

          else
          {
            v118 = "NO NAME";
          }

          sub_1000029A4(v114 + 7, v118);
          v119 = __str;
          snprintf(__str, 0x400uLL, "FAT%u", v98);
          for (i = 0; i != 8; ++i)
          {
            v121 = *v119;
            if (*v119)
            {
              ++v119;
            }

            if (v121)
            {
              v122 = v121;
            }

            else
            {
              v122 = 32;
            }

            *(v114 + 18 + i) = v122;
          }

          v123 = *a1;
          if (!*a1)
          {
            __src[v172] = -21;
            *(v97 + 1) = v169 | 0x18;
            *(v97 + 2) = -112;
            v124 = a1[2];
            if (!v124)
            {
              v124 = "BSD  4.4";
            }

            do
            {
              v125 = *v124;
              if (*v124)
              {
                ++v124;
              }

              if (v125)
              {
                v126 = v125;
              }

              else
              {
                v126 = 32;
              }

              *(v97 + 3 + v123++) = v126;
            }

            while (v123 != 8);
            v127 = v97 + v169;
            v128 = xmmword_10000C410;
            *(v127 + 42) = unk_10000C420;
            *(v127 + 26) = v128;
            v129 = xmmword_10000C430;
            v130 = unk_10000C440;
            v131 = xmmword_10000C450;
            *(v127 + 106) = dword_10000C460;
            *(v127 + 90) = v131;
            *(v127 + 74) = v130;
            *(v127 + 58) = v129;
            *(v97 + 510) = -21931;
          }

LABEL_368:
          v132 = LODWORD(size[0]);
          if (!v177)
          {
            memcpy(__dst, __src, LODWORD(size[0]));
            __memset_chk();
          }

          goto LABEL_381;
        }

        if (v98 == 32 && DWORD2(v185) != 0xFFFF && (v177 == DWORD2(v185) || HIDWORD(v185) != 0xFFFF && v177 == DWORD2(v185) + HIDWORD(v185)))
        {
          break;
        }

        if (v177 < LODWORD(size[1]) || v177 >= v164)
        {
          goto LABEL_437;
        }

        v133 = HIDWORD(v183);
        if (!HIDWORD(v183))
        {
          v133 = v185;
        }

        if ((v177 - LODWORD(size[1])) % v133)
        {
LABEL_437:
          if (v177 != v164)
          {
            goto LABEL_380;
          }

          v134 = a1[1];
          if (!v134 || !*v134)
          {
            goto LABEL_380;
          }

          sub_1000029A4(v97, v134);
          *(v97 + 11) = 40;
          *(v97 + 22) = (32 * v166->i16[2]) | (v166[1].i16[0] << 11) | (v166->i32[0] >> 1);
          v135 = vadd_s32(vshl_u32(v166[2], 0x900000005), 0xFFFF600000000020);
          v136 = v166[1].i32[1] | v135.i32[0] | v135.i32[1];
          *(v97 + 24) = v136;
          v116 = v136 >> 8;
          v117 = 25;
          goto LABEL_379;
        }

        __src[v172] = BYTE8(v183);
        if (v98 == 32)
        {
          v138 = 3;
        }

        else
        {
          v138 = 2;
        }

        v139 = v138 * v98;
        if (v139 > 0xF)
        {
          v140 = v139 >> 3;
          v141 = v140 + 14;
          v142 = vdupq_n_s64(v140 - 2);
          if (v98 == 32)
          {
            v143 = 15;
          }

          else
          {
            v143 = -1;
          }

          v144 = -(v141 & 0x3FFFFFF0);
          v145 = (v97 + 8);
          v146 = 16;
          do
          {
            v147 = vdupq_n_s64(v146 - 16);
            v148 = vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_100004310)));
            if (vuzp1_s8(vuzp1_s16(v148, *v142.i8), *v142.i8).u8[0])
            {
              *(v145 - 7) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v148, *&v142), *&v142).i8[1])
            {
              *(v145 - 6) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v142, vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_100004300)))), *&v142).i8[2])
            {
              *(v145 - 5) = v143;
              *(v145 - 4) = -1;
            }

            v149 = vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_1000042F0)));
            if (vuzp1_s8(*&v142, vuzp1_s16(v149, *&v142)).i32[1])
            {
              *(v145 - 3) = -1;
            }

            if (vuzp1_s8(*&v142, vuzp1_s16(v149, *&v142)).i8[5])
            {
              *(v145 - 2) = -1;
            }

            if (vuzp1_s8(*&v142, vuzp1_s16(*&v142, vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_1000042E0))))).i8[6])
            {
              *(v145 - 1) = v143;
              *v145 = -1;
            }

            v150 = vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_1000042D0)));
            if (vuzp1_s8(vuzp1_s16(v150, *v142.i8), *v142.i8).u8[0])
            {
              v145[1] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v150, *&v142), *&v142).i8[1])
            {
              v145[2] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v142, vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_1000042C0)))), *&v142).i8[2])
            {
              v145[3] = v143;
              v145[4] = -1;
            }

            v151 = vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_1000042B0)));
            if (vuzp1_s8(*&v142, vuzp1_s16(v151, *&v142)).i32[1])
            {
              v145[5] = -1;
            }

            if (vuzp1_s8(*&v142, vuzp1_s16(v151, *&v142)).i8[5])
            {
              v145[6] = -1;
            }

            if (vuzp1_s8(*&v142, vuzp1_s16(*&v142, vmovn_s64(vcgeq_u64(v142, vorrq_s8(v147, xmmword_1000042A0))))).i8[6])
            {
              v145[7] = v143;
              v145[8] = -1;
            }

            v146 += 16;
            v145 += 16;
          }

          while (v144 + v146 != 16);
          goto LABEL_368;
        }

LABEL_380:
        v132 = LODWORD(size[0]);
LABEL_381:
        v172 += v132;
        if (v172 >= 0x20000)
        {
          v137 = (a3[5])(a3[3], __src, 0x20000, v175);
          if (v137 != 0x20000)
          {
            if (v137 != -1)
            {
              v178 = xmmword_10000C490;
              v179 = qword_10000C4A0;
              v161 = v7;
              v163 = v177;
              v159 = "%s: can't write sector %u";
              goto LABEL_434;
            }

            goto LABEL_430;
          }

          v172 = 0;
          v175 += 0x20000;
        }

        ++v188;
        v97 = &__src[v172];
        v177 = (v177 + 1);
        if (v177 == v167)
        {
          if (!v172)
          {
            goto LABEL_425;
          }

          v152 = (a3[5])(a3[3], __src, v172, v175);
          if (v152 != -1 && v152 == v172)
          {
            goto LABEL_425;
          }

LABEL_430:
          v156 = __error();
          v157 = strerror(*v156);
          v178 = xmmword_10000C490;
          v179 = qword_10000C4A0;
          v163 = v7;
LABEL_433:
          v161 = v157;
          v159 = "%s: %s";
          goto LABEL_434;
        }
      }

      *&__src[v172] = 1096897106;
      *(v97 + 484) = 1631679090;
      *(v97 + 488) = v168;
      v116 = DWORD1(v185) + 1;
      *(v97 + 492) = WORD2(v185) + 1;
      *(v97 + 494) = BYTE2(v116);
      *(v97 + 495) = HIBYTE(v116);
      *(v97 + 510) = 85;
      LOBYTE(v116) = -86;
      v117 = 511;
LABEL_379:
      *(v97 + v117) = v116;
      goto LABEL_380;
    }

LABEL_425:
    ++v188;
    v153 = (a3[5])(a3[3], __dst, LODWORD(size[0]), 0);
    if (v153 == -1)
    {
      v154 = __error();
      v155 = strerror(*v154);
      v178 = xmmword_10000C490;
      v179 = qword_10000C4A0;
      v161 = v155;
      v163 = v7;
      v159 = "%s: write: %s";
    }

    else
    {
      if (v153 == LODWORD(size[0]))
      {
        v28 = 0;
        ++v188;
        if (!v6)
        {
          return v28;
        }

        v29 = &off_1000081C0;
        goto LABEL_41;
      }

      v178 = xmmword_10000C490;
      v179 = qword_10000C4A0;
      v161 = v7;
      v159 = "%s: can't write boot sector";
    }

LABEL_434:
    sub_100002D00(&v178, 3, v159, v161, v163);
  }

  else
  {
    v95 = __error();
    v96 = strerror(*v95);
    *__str = xmmword_10000C490;
    *&v190 = qword_10000C4A0;
    sub_100002D00(__str, 3, v96, 0, v163);
  }

LABEL_39:
  v28 = 1;
  if (v6)
  {
LABEL_40:
    v29 = &off_1000081A8;
LABEL_41:
    (a3[2])(v29[v27], *a3, v14);
  }

  return v28;
}

__n128 sub_1000022A8(char *__s1, uint64_t a2)
{
  v4 = 10;
  for (i = &xmmword_10000C0F8; strcmp(__s1, *(i - 1)); i += 5)
  {
    if (!--v4)
    {
      v9 = xmmword_10000C490;
      v10 = qword_10000C4A0;
      sub_100002D00(&v9, 3, "%s: unknown standard format", __s1);
      return result;
    }
  }

  *a2 = *i;
  result = i[1];
  v7 = i[2];
  v8 = i[3];
  *(a2 + 64) = *(i + 16);
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10000235C(uint64_t a1, int a2, unsigned int *a3)
{
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7 == -1)
  {
    v9 = __error();
    v10 = strerror(*v9);
    v11 = *(a1 + 8);
    v26 = xmmword_10000C490;
    v27 = qword_10000C4A0;
    sub_100002D00(&v26, 6, "%s: %s: Partition offset wasn't initialized, setting to default value (%llu)", v10, v11, 0);
    v7 = 0;
  }

  if (!a3[11])
  {
    if (v6 != -1)
    {
      goto LABEL_10;
    }

LABEL_9:
    v13 = __error();
    v14 = strerror(*v13);
    v15 = *(a1 + 8);
    v26 = xmmword_10000C490;
    v27 = qword_10000C4A0;
    v6 = 0x2000;
    sub_100002D00(&v26, 6, "%s: %s: Block count wasn't initialized, setting to default value (%llu)", v14, v15, 0x2000);
    goto LABEL_10;
  }

  if (a3[9])
  {
    v12 = 0;
  }

  else
  {
    v12 = v6 == -1;
  }

  if (v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  v16 = *a3;
  if (!*a3)
  {
    if (v8 != -1)
    {
      v16 = 0;
      LODWORD(v17) = a3[11];
      goto LABEL_22;
    }

LABEL_18:
    v18 = __error();
    v19 = strerror(*v18);
    v20 = *(a1 + 8);
    v26 = xmmword_10000C490;
    v27 = qword_10000C4A0;
    v8 = 512;
    sub_100002D00(&v26, 6, "%s: %s: Block size wasn't initialized, setting to default value (%u)", v19, v20, 512);
    v16 = *a3;
    LODWORD(v17) = a3[11];
    if (!*a3)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  LODWORD(v17) = a3[11];
  if (!v17 && v8 == -1)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v17)
  {
    goto LABEL_24;
  }

  v17 = v6 * v8 / v16;
  if (HIDWORD(v17))
  {
    goto LABEL_33;
  }

  a3[11] = v17;
LABEL_22:
  if (v17)
  {
    if (v16)
    {
      goto LABEL_24;
    }

LABEL_37:
    *a3 = v8;
    v16 = v8;
    if (a2)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (HIDWORD(v6))
  {
LABEL_33:
    v23 = __error();
    v24 = strerror(*v23);
    v25 = *(a1 + 8);
    v26 = xmmword_10000C490;
    v27 = qword_10000C4A0;
    sub_100002D00(&v26, 3, "%s: %s: Drive is too large, the number of blocks is larger than any FAT FS can support", v24, v25);
    return 1;
  }

  a3[11] = v6;
  if (!v16)
  {
    goto LABEL_37;
  }

LABEL_24:
  if (!a2)
  {
LABEL_25:
    a3[10] = v7 / v16;
  }

LABEL_26:
  a3[16] = (v7 != 0) << 7;
  if (!a3[8])
  {
    a3[8] = 32;
  }

  if (a3[9])
  {
    return 0;
  }

  result = 0;
  if (v6 >> 18)
  {
    if (v6 >> 19)
    {
      if (v6 >> 20)
      {
        if (v6 >> 21)
        {
          v22 = 255;
        }

        else
        {
          v22 = 128;
        }
      }

      else
      {
        v22 = 54;
      }
    }

    else
    {
      v22 = 32;
    }
  }

  else
  {
    v22 = 16;
  }

  a3[9] = v22;
  return result;
}

const char *sub_100002600(const char *result, _DWORD *a2, _DWORD *a3)
{
  if (!*a2)
  {
    v12 = v3;
    v13 = v4;
    if (!a3[1] && *a3 == 512)
    {
      v7 = result;
      result = sub_100002A38(result);
      if (result > 1)
      {
        if (result != 2)
        {
          v10 = xmmword_10000C490;
          v11 = qword_10000C4A0;
          return sub_100002D00(&v10, 6, "%s: newfs_exfat should be used for SDXC media", v7);
        }

        *a2 = 32;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v8 = a3[11];
        if (!(v8 >> 14))
        {
          *a2 = 12;
          v9 = 16;
LABEL_16:
          a3[1] = v9;
          return result;
        }

        if (!(v8 >> 17))
        {
          *a2 = 12;
LABEL_15:
          v9 = 32;
          goto LABEL_16;
        }

        *a2 = 16;
        if (!(v8 >> 21))
        {
          goto LABEL_15;
        }
      }

      v9 = 64;
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_100002700(int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v22 = xmmword_10000C490;
  v23 = qword_10000C4A0;
  sub_100002D00(&v22, 6, "bps=%u spc=%u res=%u nft=%u", v2, v3, v4, v5);
  v6 = a1[4];
  if (v6)
  {
    v22 = xmmword_10000C490;
    v23 = qword_10000C4A0;
    sub_100002D00(&v22, 6, " rde=%u", v6);
  }

  v7 = a1[5];
  if (v7)
  {
    v22 = xmmword_10000C490;
    v23 = qword_10000C4A0;
    sub_100002D00(&v22, 6, " sec=%u", v7);
  }

  v8 = a1[6];
  v22 = xmmword_10000C490;
  v23 = qword_10000C4A0;
  sub_100002D00(&v22, 6, " mid=%#x", v8);
  v9 = a1[7];
  if (v9)
  {
    v22 = xmmword_10000C490;
    v23 = qword_10000C4A0;
    sub_100002D00(&v22, 6, " spf=%u", v9);
  }

  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  v13 = a1[16];
  v22 = xmmword_10000C490;
  v23 = qword_10000C4A0;
  sub_100002D00(&v22, 6, " spt=%u hds=%u hid=%u drv=0x%02X", v10, v11, v12, v13);
  v14 = a1[11];
  if (v14)
  {
    v22 = xmmword_10000C490;
    v23 = qword_10000C4A0;
    sub_100002D00(&v22, 6, " bsec=%u", v14);
  }

  if (!a1[7])
  {
    v15 = a1[12];
    v16 = a1[13];
    v22 = xmmword_10000C490;
    v23 = qword_10000C4A0;
    sub_100002D00(&v22, 6, " bspf=%u rdcl=%u", v15, v16);
    v22 = xmmword_10000C490;
    v23 = qword_10000C4A0;
    sub_100002D00(&v22, 6, " infs=");
    v17 = a1[14];
    if (v17 == 0xFFFF)
    {
      v18 = "%#x";
    }

    else
    {
      v18 = "%u";
    }

    v22 = xmmword_10000C490;
    v23 = qword_10000C4A0;
    sub_100002D00(&v22, 6, v18, v17);
    v22 = xmmword_10000C490;
    v23 = qword_10000C4A0;
    sub_100002D00(&v22, 6, " bkbs=");
    v19 = a1[15];
    if (v19 == 0xFFFF)
    {
      v20 = "%#x";
    }

    else
    {
      v20 = "%u";
    }

    v22 = xmmword_10000C490;
    v23 = qword_10000C4A0;
    sub_100002D00(&v22, 6, v20, v19);
  }

  v22 = xmmword_10000C490;
  v23 = qword_10000C4A0;
  return sub_100002D00(&v22, 6, "\n");
}

uint64_t sub_1000029A4(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  do
  {
    v5 = *a2;
    if (*a2)
    {
      ++a2;
      result = __toupper(v5);
    }

    else
    {
      result = 32;
    }

    if (result == -27 && v4 == 0)
    {
      v8 = 5;
    }

    else
    {
      v8 = result;
    }

    *(a1 + v4++) = v8;
  }

  while (v4 != 11);
  return result;
}

char *sub_100002A0C(char *result, _BYTE *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2;
    if (*a2)
    {
      ++a2;
    }

    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 32;
    }

    *result++ = v4;
  }

  return result;
}

uint64_t sub_100002A38(uint64_t a1)
{
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v4 = *(a1 + 5);
    v3 = a1 + 5;
    v5 = (v4 == 114 ? v3 + 1 : v3);
    v6 = IOBSDNameMatching(kIOMainPortDefault, 0, v5);
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
    if (MatchingService)
    {
      v8 = MatchingService;
      v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"Card Characteristics", kCFAllocatorDefault, 3u);
      if (!v9)
      {
        v2 = 0;
        goto LABEL_16;
      }

      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v10, @"Card Type");
        v2 = Value;
        if (!Value)
        {
LABEL_14:
          CFRelease(v10);
LABEL_16:
          IOObjectRelease(v8);
          return v2;
        }

        v13 = CFGetTypeID(Value);
        if (v13 == CFStringGetTypeID())
        {
          if (CFEqual(v2, @"SDSC"))
          {
            v2 = 1;
          }

          else if (CFEqual(v2, @"SDHC"))
          {
            v2 = 2;
          }

          else if (CFEqual(v2, @"SDXC"))
          {
            v2 = 3;
          }

          else
          {
            v2 = 0;
          }

          goto LABEL_14;
        }
      }

      v2 = 0;
      goto LABEL_14;
    }
  }

  return 0;
}

unint64_t sub_100002B9C(const char *a1, unsigned int a2, unsigned int a3, const char *a4)
{
  __endptr = 0;
  *__error() = 0;
  v8 = strtoul(a1, &__endptr, 0);
  if (*__error() || !*a1 || (!*__endptr ? (v10 = v8 >= a2) : (v10 = 0), v10 ? (v11 = v8 > a3) : (v11 = 1), v11))
  {
    v12 = xmmword_10000C490;
    v13 = qword_10000C4A0;
    sub_100002D00(&v12, 3, "%s: bad %s", a1, a4);
    return 0xFFFFFFFFLL;
  }

  return v8;
}

BOOL sub_100002C70(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = *(a1 + v2);
    if (v2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 33;
    }

    if (v4 > v3)
    {
      break;
    }

    v5 = memchr("*+,./:;<=>?[\\]|", *(a1 + v2), 0x11uLL) || v2 == 11;
    ++v2;
  }

  while (!v5);
  return v3 == 0;
}

uint64_t sub_100002CEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *&xmmword_10000C490 = result;
  *(&xmmword_10000C490 + 1) = a2;
  qword_10000C4A0 = a3;
  return result;
}

uint64_t sub_100002D00(uint64_t result, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  if (*result)
  {
    return (*result)(*(result + 16), a2, a3, va);
  }

  return result;
}

uint64_t start(int a1, char *const *a2)
{
  sub_100002CEC(sub_100003B7C, sub_100003BC4, 0);
  v65 = 0;
  v66 = 0;
  v4 = 0;
  v63 = 0;
  v64 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v5 = 0;
  v6 = 0;
  v61 = 0;
  v62 = 0;
  v7 = 0;
  v60 = 0;
  v8 = 0;
  v9 = 0;
  memset(&v114, 0, sizeof(v114));
  while (1)
  {
    v10 = v9;
    v11 = getopt(a1, a2, aNbFIOSPABCEFHI);
    v9 = 1;
    switch(v11)
    {
      case 'B':
        v66 = optarg;
        v9 = v10;
        continue;
      case 'C':
      case 'D':
      case 'E':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'L':
      case 'M':
      case 'Q':
      case 'R':
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'd':
      case 'g':
      case 'j':
      case 'l':
      case 'p':
      case 'q':
      case 't':
        goto LABEL_97;
      case 'F':
        v22 = *optarg;
        if (v22 == 51)
        {
          if (optarg[1] != 50)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v22 != 49)
          {
            goto LABEL_96;
          }

          if (optarg[1] == 50 && !optarg[2])
          {
            goto LABEL_48;
          }

          if (optarg[1] != 54)
          {
            goto LABEL_96;
          }
        }

        if (optarg[2])
        {
LABEL_96:
          errx(1, "%s: bad FAT type");
        }

LABEL_48:
        LODWORD(v56) = atoi(optarg);
        v9 = v10;
        break;
      case 'I':
        HIDWORD(v57) = 1;
        LODWORD(v58) = sub_100002B9C(optarg, 0, 0xFFFFFFFF, "volume ID");
        v9 = v10;
        if (v58 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid volumeID");
        return 1;
      case 'N':
        continue;
      case 'O':
        v4 = optarg;
        v20 = strlen(optarg);
        v9 = v10;
        if (v20 >= 9)
        {
          errx(1, "%s: bad OEM string");
        }

        continue;
      case 'P':
        v23 = sub_100002B9C(optarg, 1u, 0xFFFFu, "physical bytes/sector");
        v9 = v10;
        HIDWORD(v58) = v23;
        if (v23 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid physical bytes");
        return 1;
      case 'S':
        v24 = sub_100002B9C(optarg, 1u, 0xFFFFu, "bytes/sector");
        v9 = v10;
        HIDWORD(v63) = v24;
        if (v24 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid sector size");
        return 1;
      case 'a':
        v17 = sub_100002B9C(optarg, 1u, 0xFFFFFFFF, "sectors/FAT");
        v9 = v10;
        LODWORD(v63) = v17;
        if (v17 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid sectors per FAT");
        return 1;
      case 'b':
        v5 = sub_100002B9C(optarg, 1u, 0xFFFFFFFF, "block size");
        v6 = 0;
        v9 = v10;
        continue;
      case 'c':
        v6 = sub_100002B9C(optarg, 1u, 0xFFu, "sectors/cluster");
        v5 = 0;
        v9 = v10;
        if (v6 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid cluster size");
        return 1;
      case 'e':
        v14 = sub_100002B9C(optarg, 1u, 0xFFFFu, "directory entries");
        v9 = v10;
        HIDWORD(v62) = v14;
        if (v14 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid directory entries");
        return 1;
      case 'f':
        v64 = optarg;
        v9 = v10;
        continue;
      case 'h':
        v12 = sub_100002B9C(optarg, 1u, 0xFFFFu, "drive heads");
        v9 = v10;
        LODWORD(v62) = v12;
        if (v12 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid drive heads");
        return 1;
      case 'i':
        v16 = sub_100002B9C(optarg, 1u, 0xFFFFu, "info sector");
        v9 = v10;
        HIDWORD(v61) = v16;
        if (v16 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid info sector");
        return 1;
      case 'k':
        v18 = sub_100002B9C(optarg, 1u, 0xFFFFu, "backup sector");
        v9 = v10;
        LODWORD(v61) = v18;
        if (v18 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid backup sector");
        return 1;
      case 'm':
        v7 = sub_100002B9C(optarg, 0, 0xFFu, "media descriptor");
        LODWORD(v57) = 1;
        v9 = v10;
        if (v7 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid media descriptor");
        return 1;
      case 'n':
        v21 = sub_100002B9C(optarg, 1u, 0xFFu, "number of FATs");
        v9 = v10;
        HIDWORD(v60) = v21;
        if (v21 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid number of FATs");
        return 1;
      case 'o':
        v8 = sub_100002B9C(optarg, 0, 0xFFFFFFFF, "hidden sectors");
        HIDWORD(v56) = 1;
        v9 = v10;
        if (v8 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid hidden sectors");
        return 1;
      case 'r':
        v19 = sub_100002B9C(optarg, 1u, 0xFFFFu, "reserved sectors");
        v9 = v10;
        LODWORD(v60) = v19;
        if (v19 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid reserved sectors");
        return 1;
      case 's':
        v25 = sub_100002B9C(optarg, 1u, 0xFFFFFFFF, "file system size (in sectors)");
        v9 = v10;
        HIDWORD(v59) = v25;
        if (v25 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid file system size (in sectors)");
        return 1;
      case 'u':
        v15 = sub_100002B9C(optarg, 1u, 0xFFFFu, "sectors/track");
        v9 = v10;
        LODWORD(v59) = v15;
        if (v15 != -1)
        {
          continue;
        }

        *__str = xmmword_10000C490;
        v117 = qword_10000C4A0;
        sub_100002D00(__str, 3, "%s: Invalid sectors per track");
        return 1;
      case 'v':
        v13 = sub_100002C70(optarg);
        v65 = optarg;
        v9 = v10;
        if (!v13)
        {
          errx(1, "%s: bad volume name");
        }

        continue;
      default:
        if (v11 != -1 || a1 == optind || (a1 - optind - 3) < 0xFFFFFFFD)
        {
LABEL_97:
          sub_100003CE0();
        }

        v26 = a2[optind];
        v55 = v4;
        v27 = v66;
        if (!strchr(v26, 47))
        {
          snprintf(__str, 0x400uLL, "%sr%s", "/dev/", v26);
          if (stat(__str, &v114))
          {
            snprintf(__str, 0x400uLL, "%s%s", "/dev/", v26);
          }

          v26 = strdup(__str);
          if (!v26)
          {
            sub_100003F50();
          }
        }

        v28 = open(v26, 2 * (v10 == 0));
        v113 = v28;
        if (v28 == -1 || fstat(v28, &v114))
        {
          err(1, "%s", v26);
        }

        if (v66)
        {
          v29 = v66;
          if (!strchr(v66, 47))
          {
            snprintf(__str, 0x400uLL, "/boot/%s", v66);
            v29 = strdup(__str);
            if (!v29)
            {
              sub_100003F50();
            }
          }

          v30 = open(v29, 0);
          if (v30 == -1 || (v31 = v30, fstat(v30, &v114)))
          {
            err(1, "%s", v29);
          }
        }

        else
        {
          v29 = 0;
          v31 = -1;
        }

        v54 = v31;
        if (!v10)
        {
          v52 = v29;
          st_mode = v114.st_mode;
          v67[0] = 0;
          v34 = getmntinfo(v67, 2);
          if (!v34)
          {
            sub_100003F68();
          }

          v35 = v34;
          v36 = strncmp(v26, "/dev/", 5uLL);
          if (v36)
          {
            v37 = 0;
          }

          else
          {
            v37 = 5;
          }

          v38 = &v26[v37];
          v39 = st_mode & 0xF000;
          v40 = 1;
          v53 = v26;
          if (v39 == 0x2000 && !v36)
          {
            v40 = *v38 != 114;
          }

          f_mntfromname = v67[0]->f_mntfromname;
          do
          {
            v42 = strncmp(f_mntfromname, "/dev/", 5uLL);
            if (v42)
            {
              v43 = f_mntfromname;
            }

            else
            {
              v43 = f_mntfromname + 5;
            }

            if (v42)
            {
              v44 = 1;
            }

            else
            {
              v44 = v40;
            }

            if ((v44 & 1) == 0 && !strcmp(v38 + 1, f_mntfromname + 5) || !strcmp(v38, v43))
            {
              errx(1, "%s is mounted on %s");
            }

            v67[0] = (f_mntfromname + 1056);
            f_mntfromname += 2168;
            --v35;
          }

          while (v35);
          v27 = v66;
          v29 = v52;
          v26 = v53;
        }

        memset(v115, 0, 148);
        v112 = -1;
        v111 = -1;
        v110 = -1;
        v109 = -1;
        v45 = v113;
        if (ioctl(v113, 0x40086449uLL, &v112) == -1)
        {
          v46 = __error();
          v47 = strerror(*v46);
          *v67 = xmmword_10000C490;
          v68 = qword_10000C4A0;
          sub_100002D00(v67, 3, "%s: %s: Cannot get partition offset", v47, v26);
        }

        if (ioctl(v45, 0x40086419uLL, &v111) == -1)
        {
          v48 = __error();
          v49 = strerror(*v48);
          *v67 = xmmword_10000C490;
          v68 = qword_10000C4A0;
          sub_100002D00(v67, 3, "%s: %s: Cannot get block count", v49, v26);
        }

        if (ioctl(v45, 0x40046418uLL, &v110) == -1)
        {
          v50 = __error();
          v51 = strerror(*v50);
          *v67 = xmmword_10000C490;
          v68 = qword_10000C4A0;
          sub_100002D00(v67, 3, "%s: %s: Cannot get block size", v51, v26);
        }

        if (ioctl(v45, 0x4004644DuLL, &v109) == -1)
        {
          *v67 = xmmword_10000C490;
          v68 = qword_10000C4A0;
          sub_100002D00(v67, 6, "ioctl(DKIOCGETPHYSICALBLOCKSIZE) not supported\n");
        }

        *(v115 + 4) = v114;
        v108[3] = &v113;
        memset(v108, 0, 24);
        v108[4] = sub_100003F40;
        v108[5] = sub_100003F48;
        v85[0] = v27;
        v85[1] = v65;
        v85[2] = v55;
        v85[3] = v64;
        v86 = v56;
        v87 = v58;
        v88 = HIDWORD(v63);
        v89 = v63;
        v90 = v5;
        v91 = v6;
        v92 = HIDWORD(v62);
        v93 = v62;
        v94 = HIDWORD(v61);
        v95 = v61;
        v96 = v7;
        v97 = HIDWORD(v60);
        v98 = v8;
        v99 = v60;
        v100 = HIDWORD(v59);
        v101 = v59;
        v102 = HIDWORD(v58);
        v103 = v10;
        v104 = HIDWORD(v57);
        v105 = v57;
        v106 = HIDWORD(v56);
        v67[0] = v45;
        v67[1] = v26;
        v68 = v109;
        v69 = v112;
        v70 = v111;
        v71 = v110;
        v73 = v29;
        v74 = v54;
        v84 = HIDWORD(v114.st_qspare[1]);
        v81 = v115[6];
        v82 = v115[7];
        v83 = v115[8];
        v80 = v115[5];
        v77 = *(&v114.st_rdev + 1);
        v78 = v115[3];
        v79 = v115[4];
        v75 = v115[0];
        v107 = 0;
        v72 = 0;
        v76 = *(&v114.st_ino + 4);
        return sub_100000768(v85, v67, v108);
    }
  }
}

void sub_100003B7C(int a1, int a2, char *a3, va_list a4)
{
  if (a2 == 6)
  {

    vprintf(a3, a4);
  }

  else if (a2 == 3)
  {
    verrx(1, a3, a4);
  }
}

uint64_t sub_100003BC4(uint64_t a1, unsigned int *a2)
{
  v12 = 0;
  v3 = wipefs_alloc();
  if (v3)
  {
    v4 = v3;
    v5 = *a2;
    v6 = strerror(v3);
    v10 = xmmword_10000C490;
    v11 = qword_10000C4A0;
    sub_100002D00(&v10, 3, "wipefs_alloc(): fd(%d) %s", v5, v6);
  }

  else
  {
    v7 = wipefs_except_blocks();
    if (v7)
    {
      v4 = v7;
      strerror(v7);
      v10 = xmmword_10000C490;
      v11 = qword_10000C4A0;
      sub_100002D00(&v10, 3, "wipefs_except_blocks(): fd(%d) %s");
    }

    else
    {
      v8 = wipefs_wipe();
      v4 = v8;
      if (v8)
      {
        strerror(v8);
        v10 = xmmword_10000C490;
        v11 = qword_10000C4A0;
        sub_100002D00(&v10, 3, "wipefs_wipe(): fd(%d) %s");
      }
    }

    wipefs_free();
  }

  return v4;
}

void sub_100003CE0()
{
  fwrite("usage: newfs_msdos [ -options ] special [disktype]\n", 0x33uLL, 1uLL, __stderrp);
  fwrite("where the options are:\n", 0x17uLL, 1uLL, __stderrp);
  fwrite("\t-N don't create file system: just print out parameters\n", 0x38uLL, 1uLL, __stderrp);
  fwrite("\t-B get bootstrap from file\n", 0x1CuLL, 1uLL, __stderrp);
  fwrite("\t-F FAT type (12, 16, or 32)\n", 0x1DuLL, 1uLL, __stderrp);
  fwrite("\t-I volume ID\n", 0xEuLL, 1uLL, __stderrp);
  fwrite("\t-O OEM string\n", 0xFuLL, 1uLL, __stderrp);
  fwrite("\t-S bytes/sector\n", 0x11uLL, 1uLL, __stderrp);
  fwrite("\t-P physical bytes/sector\n", 0x1AuLL, 1uLL, __stderrp);
  fwrite("\t-a sectors/FAT\n", 0x10uLL, 1uLL, __stderrp);
  fwrite("\t-b block size\n", 0xFuLL, 1uLL, __stderrp);
  fwrite("\t-c sectors/cluster\n", 0x14uLL, 1uLL, __stderrp);
  fwrite("\t-e root directory entries\n", 0x1BuLL, 1uLL, __stderrp);
  fwrite("\t-f standard format\n", 0x14uLL, 1uLL, __stderrp);
  fwrite("\t-h drive heads\n", 0x10uLL, 1uLL, __stderrp);
  fwrite("\t-i file system info sector\n", 0x1CuLL, 1uLL, __stderrp);
  fwrite("\t-k backup boot sector\n", 0x17uLL, 1uLL, __stderrp);
  fwrite("\t-m media descriptor\n", 0x15uLL, 1uLL, __stderrp);
  fwrite("\t-n number of FATs\n", 0x13uLL, 1uLL, __stderrp);
  fwrite("\t-o hidden sectors\n", 0x13uLL, 1uLL, __stderrp);
  fwrite("\t-r reserved sectors\n", 0x15uLL, 1uLL, __stderrp);
  fwrite("\t-s file system size (in sectors)\n", 0x22uLL, 1uLL, __stderrp);
  fwrite("\t-u sectors/track\n", 0x12uLL, 1uLL, __stderrp);
  fwrite("\t-v filesystem/volume name\n", 0x1BuLL, 1uLL, __stderrp);
  exit(1);
}