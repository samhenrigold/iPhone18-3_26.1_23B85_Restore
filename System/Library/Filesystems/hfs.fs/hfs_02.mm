uint64_t sub_10001A2C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[79];
  if (!v8)
  {
    return 0;
  }

  v10 = 0;
  v37 = 0;
  v38 = 0;
  memset(v44, 0, 512);
  v11 = (a1 + 109);
  v12 = "lost+found";
  v13 = 1;
  while (1)
  {
    while (1)
    {
      v14 = *(v8 + 2);
      if (!v14)
      {
        goto LABEL_7;
      }

      if (!*(v8 + 534))
      {
        break;
      }

      v15 = 2 * *(v8 + 269) + 10;
      v37 = v8 + 530;
      v16 = v15 & 0xFFFE;
      LODWORD(v38) = v15 & 0xFFFE;
      HIDWORD(v38) = 1;
      DWORD1(v44[0]) = 0;
      sub_10001F16C(v14, 0, 1, &v44[1] + 4);
      if (sub_100005AB8(a1[99], v44, &v37, v16))
      {
        return sub_10001ECC0(a1, 2);
      }

      *(v8 + 2) = 0;
LABEL_7:
      v8 = *v8;
      if (!v8)
      {
        if (v13)
        {
          return 0;
        }

LABEL_32:
        v33 = v11[1];
        v45 = *v11;
        v46 = v33;
        v34 = v11[3];
        v47 = v11[2];
        v48 = v34;
        sub_10002D0A4(&v45, 116, a3, a4, a5, a6, a7, a8, v12);
        return 0;
      }
    }

    if (BYTE1(xmmword_100043510) == 1 && byte_10004350E == 0)
    {
      return 8;
    }

    if (!v10)
    {
      break;
    }

LABEL_16:
    v19 = v11[1];
    v45 = *v11;
    v46 = v19;
    v20 = v11[3];
    v47 = v11[2];
    v48 = v20;
    sub_10002D0A4(&v45, 534, a3, a4, a5, a6, a7, a8, v14);
    v21 = *(v8 + 2);
    v43 = 0;
    v42 = 0;
    memset(__src, 0, sizeof(__src));
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    memset(v40, 0, 512);
    memset(v39, 0, 512);
    sub_100020B5C();
    v23 = v22;
    __sprintf_chk(__s, 0, 0x20uLL, "%ld", v21);
    v24 = strlen(__s);
    if (v23)
    {
      LOWORD(__src[0]) = v24;
      v25 = v24;
      if (v24)
      {
        v26 = __s;
        v27 = __src + 1;
        do
        {
          v28 = *v26++;
          *v27++ = v28;
          --v25;
        }

        while (v25);
      }
    }

    else
    {
      LOBYTE(__src[0]) = v24;
      __memcpy_chk();
    }

    sub_10001F16C(v10, __src, v23, v40);
    if (!sub_1000127A0(a1[99], v40, 0, 0, &v45, &v43, &v42) || (v29 = v12, v43 = sub_10001D288(v40, &v45, v23, 1), sub_10001F16C(v21, 0, v23, v39), sub_100012C04(a1[99], v39, &v45, v43, &v42)) || (v43 = sub_10001E3F0(a1, 1023, v21, v23, &v45), sub_100012C04(a1[99], v40, &v45, v43, &v42)) || (v23 ? (v30 = 1) : (v30 = 256), v31 = sub_100013274(a1[97], v10, 0, v30, 0, 1), v32 = a1[99], *(*(v32 + 16) + 132) |= 1u, sub_1000060FC(v32), v31))
    {
      if (sub_10002D444() >= 3)
      {
        v45 = xmmword_100043460;
        v46 = *&qword_100043470;
        v47 = xmmword_100043480;
        v48 = *&off_100043490;
        sub_10002D0E8(&v45, 2, "\tCould not recreate a missing directory (error %d)\n");
      }

      return 8;
    }

    v13 = 0;
    v8 = *v8;
    v12 = v29;
    if (!v8)
    {
      goto LABEL_32;
    }
  }

  v18 = sub_10001DFE4(a1, v12);
  if (v18)
  {
    v10 = v18;
    v14 = *(v8 + 2);
    goto LABEL_16;
  }

  if (sub_10002D444() >= 3)
  {
    v45 = xmmword_100043460;
    v46 = *&qword_100043470;
    v47 = xmmword_100043480;
    v48 = *&off_100043490;
    sub_10002D0E8(&v45, 2, "\tCould not create lost+found directory \n");
  }

  return 8;
}

uint64_t sub_10001A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v16, 0, 512);
  memset(v15, 0, 512);
  v14 = 0;
  v13 = 0;
  result = sub_100012A1C(*(a1 + 792), -32767, v15, v16, &v13, &v14, a7, a8);
  if (!result)
  {
    LOWORD(v12) = 0;
    do
    {
      v12 = (v12 + 1);
      if (v12 >= 11)
      {
        sub_100004B1C(a1);
        LOWORD(v12) = 0;
      }

      if (v13 == 520 && v16[0] - 3 <= 1)
      {
        v13 = 2 * v16[4] + 10;
        result = sub_100012E70(*(a1 + 792), v15, v14, v16, v13 & 0xFFFE, &v14);
        if (result)
        {
          break;
        }
      }

      result = sub_100012A1C(*(a1 + 792), 1, v15, v16, &v13, &v14, v10, v11);
    }

    while (!result);
  }

  return result;
}

uint64_t sub_10001AA48(uint64_t a1)
{
  v2 = *(a1 + 656);
  sub_100020B5C();
  if (!v3)
  {
    v9 = 8;
    goto LABEL_162;
  }

  if (!v2 || (v4 = **v2, qsort(*v2 + 2, v4, 0x20uLL, sub_10001E7B0), !v4))
  {
    v9 = 0;
LABEL_162:
    sub_10002B37C(a1);
    v5 = 0;
    goto LABEL_163;
  }

  v5 = 0;
  v6 = 4;
  v7 = v4;
  do
  {
    v8 = sub_10002B498(*(a1 + 776), (*v2)[v6], &(*v2)[v6 + 1]);
    if (v8)
    {
      v5 = 1;
    }

    v6 += 8;
    --v7;
  }

  while (v7);
  v9 = v8;
  for (i = 0; i != v4; ++i)
  {
    v11 = &(*v2)[8 * i];
    if (!*(v11 + 20))
    {
      continue;
    }

    memset(v101, 0, 512);
    memset(v96, 0, 512);
    v95 = 0;
    v94 = 0;
    memset(v100, 0, sizeof(v100));
    memset(__dst, 0, 268);
    v92 = 0;
    memset(v91, 0, sizeof(v91));
    v90 = 0;
    sub_100020B5C();
    if (*(v11 + 32) == 1)
    {
      if (v12 != 1)
      {
        sub_10003089C();
      }

      if (!*(v11 + 24))
      {
        sub_1000308F4();
      }

      v13 = malloc_type_malloc(0x80uLL, 0x9AEE4C31uLL);
      if (v13)
      {
        v14 = v13;
        bzero(&v102, 0x220uLL);
        v15 = *(v11 + 24);
        v98 = strlen(v15);
        sub_10001D334(*(v11 + 8), v15, v98, v103 + 4);
        v99[0] = v91;
        v99[1] = 0x100000058;
        v16 = sub_1000052E0(*(a1 + 808), &v102, 0xFFFFFFFFLL, v99, &v90, &v102);
        if (v16)
        {
          v20 = *(v11 + 24);
          v21 = *(v11 + 8);
          v97[0] = xmmword_100043460;
          v97[1] = *&qword_100043470;
          v97[2] = xmmword_100043480;
          v97[3] = *&off_100043490;
          sub_10002D128(v97, 34, "%s: Error finding attribute record (err=%d) for fileID = %d, attrname = %d\n", "SearchExtentInAttributeBT", v16, v21, v20);
        }

        else
        {
LABEL_37:
          if (LODWORD(v91[0]) == 48)
          {
            v28 = 0;
            v35 = v91 + 3;
            while (*v35)
            {
              if (*v35 == *(v11 + 16) && *(v35 - 1) == *(v11 + 12))
              {
LABEL_68:
                memcpy(__dst, v103 + 4, 0x10CuLL);
                free(v14);
                v26 = *(v11 + 12);
                v27 = *(v11 + 16);
                v39 = 3;
                goto LABEL_95;
              }

              ++v28;
              v35 += 2;
              if (v28 == 8)
              {
LABEL_54:
                if (!sub_100005678(*(a1 + 808), 1u, &v102, v99, &v90, v17, v18, v19))
                {
                  sub_10001EAF0(&v103[1] + 2, 2 * LOWORD(v103[1]), v14, &v98, 0x80uLL);
                  v14[v98] = 0;
                  if (DWORD2(v103[0]) == *(v11 + 8) && !strcmp(v14, *(v11 + 24)))
                  {
                    goto LABEL_37;
                  }
                }

                break;
              }
            }
          }

          else if (LODWORD(v91[0]) == 32)
          {
            v28 = 0;
            v33 = &v91[1] + 3;
            while (*v33)
            {
              if (*v33 == *(v11 + 16) && *(v33 - 1) == *(v11 + 12))
              {
                goto LABEL_68;
              }

              ++v28;
              v33 += 2;
              if (v28 == 8)
              {
                goto LABEL_54;
              }
            }
          }
        }

        free(v14);
      }

      goto LABEL_33;
    }

    v22 = *(v11 + 8);
    if (v22 > 0xF)
    {
      sub_100020B5C();
      v32 = v31;
      if (sub_10001D3B8(a1, *(v11 + 8), v31, v96, v101, &v90))
      {
LABEL_32:
        v102 = xmmword_100043460;
        v103[0] = *&qword_100043470;
        v103[1] = xmmword_100043480;
        v103[2] = *&off_100043490;
        sub_10002D128(&v102, 34, "%s: No matching extent record found for fileID = %d\n");
        goto LABEL_33;
      }

      v26 = *(v11 + 12);
      v27 = *(v11 + 16);
      v28 = 0;
      if (v32)
      {
        if (*(v11 + 32))
        {
          v37 = &v101[11] + 3;
          while (*v37)
          {
            if (*v37 == v27 && *(v37 - 1) == v26)
            {
              goto LABEL_94;
            }

            ++v28;
            v37 += 2;
            if (v28 == 8)
            {
              goto LABEL_122;
            }
          }
        }

        else
        {
          v42 = &v101[6] + 3;
          while (*v42)
          {
            if (*v42 == v27 && *(v42 - 1) == v26)
            {
              goto LABEL_94;
            }

            ++v28;
            v42 += 2;
            if (v28 == 8)
            {
              goto LABEL_122;
            }
          }
        }

        goto LABEL_32;
      }

      if (*(v11 + 32))
      {
        v40 = (&v101[5] + 10);
        while (*v40)
        {
          if (*v40 == v27 && *(v40 - 1) == v26)
          {
            goto LABEL_94;
          }

          ++v28;
          v40 += 2;
          if (v28 == 3)
          {
            goto LABEL_122;
          }
        }

        goto LABEL_32;
      }

      v44 = (&v101[4] + 14);
      while (1)
      {
        if (!*v44)
        {
          goto LABEL_32;
        }

        if (*v44 == v27 && *(v44 - 1) == v26)
        {
          break;
        }

        ++v28;
        v44 += 2;
        if (v28 == 3)
        {
LABEL_122:
          LODWORD(v102) = 0;
          sub_100020B5C();
          v60 = v59;
          sub_100026CB8(v59, *(v11 + 32), *(v11 + 8), 0, &v94);
          v61 = sub_1000127A0(*(a1 + 784), &v94, 0, &v94, v100, &v90, &v102);
          if ((v61 & 0xFFFFFFDF) == 0)
          {
            if (v61 == 32)
            {
              v61 = sub_100012A1C(*(a1 + 784), 1, &v94, v100, &v90, &v102, v62, v63);
            }

            if (!v61)
            {
LABEL_126:
              v64 = *(v11 + 8);
              if (v60)
              {
                if (HIDWORD(v94) == v64 && BYTE2(v94) == *(v11 + 32))
                {
                  v65 = 8;
LABEL_133:
                  v28 = 0;
                  v26 = *(v11 + 12);
                  v27 = *(v11 + 16);
                  v66 = v100 + 1;
                  while (*v66)
                  {
                    if (*v66 == v27 && *(v66 - 1) == v26)
                    {
                      v39 = 2;
                      goto LABEL_95;
                    }

                    ++v28;
                    v66 += 2;
                    if (v65 == v28)
                    {
                      if (!sub_100012A1C(*(a1 + 784), 1, &v94, v100, &v90, &v102, v62, v63))
                      {
                        goto LABEL_126;
                      }

                      break;
                    }
                  }
                }
              }

              else if (*(&v94 + 2) == v64 && BYTE1(v94) == *(v11 + 32))
              {
                v65 = 3;
                goto LABEL_133;
              }
            }
          }

          v102 = xmmword_100043460;
          v103[0] = *&qword_100043470;
          v103[1] = xmmword_100043480;
          v103[2] = *&off_100043490;
          sub_10002D128(&v102, 34, "%s: No matching extent record found in extents btree for fileID = %d (err=%d)\n");
          goto LABEL_33;
        }
      }

LABEL_94:
      v39 = 1;
LABEL_95:
      v46 = *(a1 + 776);
      if (sub_100002C9C(*(v46 + 208), (*(v46 + 118) + (*(v46 + 40) >> 9) * v26) << 9, (*(v46 + 118) + (*(v46 + 40) >> 9) * *(v11 + 20)) << 9, *(v46 + 40) * v27))
      {
        v102 = xmmword_100043460;
        v103[0] = *&qword_100043470;
        v103[1] = xmmword_100043480;
        v103[2] = *&off_100043490;
        sub_10002D128(&v102, 34, "%s: Error in copying disk blocks for fileID = %d (err=%d)\n");
        goto LABEL_33;
      }

      if (v39 <= 1)
      {
        if (!v39)
        {
          sub_100020B5C();
          v48 = *(v11 + 8) - 3;
          if (v48 <= 5 && ((0x3Bu >> v48) & 1) != 0)
          {
            v49 = qword_1000321B0[v48];
            v50 = *(a1 + 776);
            v51 = *(v50 + v49);
            if (v51)
            {
              v52 = *(v11 + 20);
              if (v47)
              {
                *(v51 + 8 * v28 + 36) = v52;
              }

              else
              {
                *(v51 + 4 * v28 + 24) = v52;
              }

              *(v50 + 196) |= 0xFF00u;
LABEL_159:
              *(v11 + 33) = 1;
              v5 |= 2u;
              goto LABEL_34;
            }
          }

          goto LABEL_156;
        }

        sub_100020B5C();
        v53 = *(v11 + 20);
        if (v54)
        {
          if (*(v11 + 32))
          {
            v55 = &v101[11] + 8;
          }

          else
          {
            v55 = &v101[6] + 8;
          }

          *&v55[8 * v28] = v53;
        }

        else
        {
          if (*(v11 + 32))
          {
            v68 = &v101[5] + 6;
          }

          else
          {
            v68 = &v101[4] + 10;
          }

          *&v68[4 * v28] = v53;
        }

        LODWORD(v102) = 0;
        v69 = *(a1 + 792);
        v70 = v90;
        v71 = v96;
        v72 = v101;
        goto LABEL_155;
      }

      if (v39 == 2)
      {
        LODWORD(v100[v28]) = *(v11 + 20);
        if (!sub_10001481C(*(a1 + 776), 0, &v94, v100, 0))
        {
          goto LABEL_159;
        }

LABEL_156:
        v102 = xmmword_100043460;
        v103[0] = *&qword_100043470;
        v103[1] = xmmword_100043480;
        v103[2] = *&off_100043490;
        sub_10002D128(&v102, 34, "%s: Error in updating extent record for fileID = %d (err=%d)\n");
        goto LABEL_33;
      }

      if ((v91[0] & 0xFFFFFFEF) != 0x20)
      {
        sub_1000308C8();
      }

      if (LODWORD(v91[0]) == 32)
      {
        v56 = 24;
      }

      else
      {
        if (LODWORD(v91[0]) != 48)
        {
LABEL_147:
          LODWORD(v102) = 0;
          v69 = *(a1 + 808);
          v70 = v90;
          v71 = __dst;
          v72 = v91;
LABEL_155:
          if (!sub_100012E70(v69, v71, 0, v72, v70, &v102))
          {
            goto LABEL_159;
          }

          goto LABEL_156;
        }

        v56 = 8;
      }

      *(v91 + 8 * v28 + v56) = *(v11 + 20);
      goto LABEL_147;
    }

    if (((1 << v22) & 0xC020) == 0)
    {
      sub_100020B5C();
      v24 = *(v11 + 8) - 3;
      if (v24 <= 5 && ((0x3Bu >> v24) & 1) != 0)
      {
        v25 = *(*(a1 + 776) + qword_1000321B0[v24]);
        if (v25)
        {
          v26 = *(v11 + 12);
          v27 = *(v11 + 16);
          v28 = 0;
          if (v23)
          {
            v29 = (v25 + 40);
            while (*v29)
            {
              if (*v29 == v27 && *(v29 - 1) == v26)
              {
                goto LABEL_142;
              }

              ++v28;
              v29 += 2;
              if (v28 == 8)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
            v57 = (v25 + 28);
            while (*v57)
            {
              if (*v57 == v27 && *(v57 - 1) == v26)
              {
LABEL_142:
                v39 = 0;
                goto LABEL_95;
              }

              ++v28;
              v57 += 2;
              if (v28 == 3)
              {
                goto LABEL_122;
              }
            }
          }
        }
      }

      goto LABEL_32;
    }

LABEL_33:
    *(v11 + 33) = 0;
LABEL_34:
    v9 = sub_10001D6BC(a1, *(v11 + 8));
  }

  v75 = 0;
  v76 = 32 * v4;
  do
  {
    v77 = &(*v2)[v75 / 4];
    if (*(v77 + 33) == 1)
    {
      sub_10002AECC(v77[3], v77[4]);
    }

    v75 += 32;
  }

  while (v76 != v75);
  v78 = 0;
  do
  {
    v79 = &(*v2)[v78 / 4];
    if (!*(v79 + 33))
    {
      sub_10002A950(v79[3], v79[4]);
      v80 = v79[5];
      if (v80)
      {
        sub_10002AECC(v80, v79[4]);
      }
    }

    v78 += 32;
  }

  while (v76 != v78);
  sub_10002B37C(a1);
  if (v5)
  {
    v87 = *(a1 + 888);
    v102 = *(a1 + 872);
    v103[0] = v87;
    v88 = *(a1 + 920);
    v103[1] = *(a1 + 904);
    v103[2] = v88;
    sub_10002D0A4(&v102, 4294966734, v81, v82, v83, v84, v85, v86, v89);
  }

LABEL_163:
  if ((v5 & 2) != 0)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_10001B564(uint64_t a1)
{
  memset(v59, 0, 512);
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
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
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *v27 = 0u;
  memset(v26, 0, 512);
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  *v95 = 0u;
  *v94 = 0u;
  memset(v93, 0, 512);
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v2 = *(sub_10001EDA4(136) + 16);
  sub_100020B5C();
  v4 = v3;
  memmove(__dst, (v2 + 184), 0x220uLL);
  v5 = 0;
  v6 = -32767;
  do
  {
    memmove((v2 + 184), __dst, 0x220uLL);
    v9 = sub_100012A1C(*(a1 + 792), v6, v27, v94, &v23 + 1, &v25 + 1, v7, v8);
    if (v9)
    {
      break;
    }

    memmove(__dst, (v2 + 184), 0x220uLL);
    v10 = LOWORD(v94[0]);
    if (LOWORD(v94[0]) > 0xFFu)
    {
      if (LOWORD(v94[0]) > 0x2FFu)
      {
        if (LOWORD(v94[0]) != 768)
        {
          if (LOWORD(v94[0]) == 1024)
          {
LABEL_19:
            if (v4)
            {
              goto LABEL_20;
            }

LABEL_26:
            sub_10001F16C(*(&v94[2] + 2), (v94 | 0xE), 0, v59);
            if (sub_1000127A0(*(a1 + 792), v59, 0, v26, &v61, &v23 + 1, &v25))
            {
              goto LABEL_106;
            }

            if (v9)
            {
              if (v61 != 256)
              {
                if (sub_10002D444() >= 3)
                {
                  v19 = xmmword_100043460;
                  v20 = *&qword_100043470;
                  v21 = xmmword_100043480;
                  v22 = *&off_100043490;
                  sub_10002D0E8(&v19, 2, "\t%s: Folder recordType mismatch for id=%u (found=%u)\n");
                }

                goto LABEL_97;
              }

LABEL_55:
              v14 = 0;
            }

            else
            {
              if (v61 == 512)
              {
                goto LABEL_55;
              }

              if (sub_10002D444() >= 3)
              {
                v19 = xmmword_100043460;
                v20 = *&qword_100043470;
                v21 = xmmword_100043480;
                v22 = *&off_100043490;
                sub_10002D0E8(&v19, 2, "\t%s: File recordType mismatch for id=%u (found=%u)\n");
              }

LABEL_97:
              v14 = 32;
            }

            if (*(v27 + 2) != DWORD1(v62))
            {
              if (sub_10002D444() >= 3)
              {
                if (v10 == 768)
                {
                  v17 = *(&v61 + 6);
                }

                else
                {
                  v17 = DWORD1(v62);
                }

                v19 = xmmword_100043460;
                v20 = *&qword_100043470;
                v21 = xmmword_100043480;
                v22 = *&off_100043490;
                sub_10002D0E8(&v19, 2, "\t%s: fileID do not match (threadKey=%u fileRecord=%u), parentID=%u\n", "FixOrphanedFiles", *(v27 + 2), v17, *(&v94[2] + 2));
              }

              goto LABEL_106;
            }

LABEL_99:
            if (v14)
            {
              goto LABEL_106;
            }

LABEL_100:
            v9 = 0;
            goto LABEL_108;
          }

LABEL_31:
          if (sub_10002D444() >= 3)
          {
            v19 = xmmword_100043460;
            v20 = *&qword_100043470;
            v21 = xmmword_100043480;
            v22 = *&off_100043490;
            sub_10002D0E8(&v19, 2, "\t%s: Unknown record type.\n", "FixOrphanedFiles");
          }

          goto LABEL_100;
        }

LABEL_25:
        v9 = 1;
        if (!v4)
        {
          goto LABEL_26;
        }

LABEL_20:
        sub_10001F16C(v94[1], &v94[2], v4, v59);
        if (sub_1000127A0(*(a1 + 792), v59, 0, v26, &v61, &v23 + 1, &v25))
        {
          goto LABEL_106;
        }

        if (v9)
        {
          if (v61 != 1)
          {
            if (sub_10002D444() >= 3)
            {
              v19 = xmmword_100043460;
              v20 = *&qword_100043470;
              v21 = xmmword_100043480;
              v22 = *&off_100043490;
              sub_10002D0E8(&v19, 2, "\t%s: Folder recordType mismatch for id=%u (found=%u)\n");
            }

            goto LABEL_70;
          }

LABEL_51:
          v14 = 0;
        }

        else
        {
          if (v61 == 2)
          {
            goto LABEL_51;
          }

          if (sub_10002D444() >= 3)
          {
            v19 = xmmword_100043460;
            v20 = *&qword_100043470;
            v21 = xmmword_100043480;
            v22 = *&off_100043490;
            sub_10002D0E8(&v19, 2, "\t%s: File recordType mismatch for id=%u (found=%u)\n");
          }

LABEL_70:
          v14 = 32;
        }

        if (*(v27 + 2) != DWORD2(v61))
        {
          if (sub_10002D444() >= 3)
          {
            v19 = xmmword_100043460;
            v20 = *&qword_100043470;
            v21 = xmmword_100043480;
            v22 = *&off_100043490;
            sub_10002D0E8(&v19, 2, "\t%s: fileID do not match (threadKey=%u fileRecord=%u), parentID=%u\n", "FixOrphanedFiles", *(v27 + 2), DWORD2(v61), v94[1]);
          }

LABEL_106:
          v9 = sub_100012D4C(*(a1 + 792), v27);
          if (sub_10002D444() >= 3)
          {
            v19 = xmmword_100043460;
            v20 = *&qword_100043470;
            v21 = xmmword_100043480;
            v22 = *&off_100043490;
            sub_10002D0E8(&v19, 2, "\t%s: Deleted thread record for id=%d (err=%d)\n");
          }

          goto LABEL_108;
        }

        goto LABEL_99;
      }

      if (LOWORD(v94[0]) != 256)
      {
        if (LOWORD(v94[0]) != 512)
        {
          goto LABEL_31;
        }

        if ((v94[0] & 0x20000) == 0)
        {
          goto LABEL_100;
        }

        sub_100004B1C(a1);
        v11 = 0;
        v12 = *(v27 + 2);
        v24 = HIDWORD(v25);
        v5 = v95[1];
        goto LABEL_37;
      }
    }

    else if (LOWORD(v94[0]) - 1 >= 2)
    {
      if (LOWORD(v94[0]) != 3)
      {
        if (LOWORD(v94[0]) == 4)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }

      goto LABEL_25;
    }

    sub_100004B1C(a1);
    v12 = *(v27 + 2);
    v24 = HIDWORD(v25);
    switch(v10)
    {
      case 1:
        v11 = 1;
        goto LABEL_35;
      case 2:
        v11 = 0;
LABEL_35:
        v5 = v94[2];
        break;
      case 256:
        v11 = 1;
        v5 = *(&v94[1] + 2);
        break;
      default:
        v11 = 0;
        break;
    }

LABEL_37:
    sub_10001F16C(v5, 0, v4, v59);
    v13 = sub_1000127A0(*(a1 + 792), v59, 0, v26, v93, &v23, &v25);
    if (v13 == 32)
    {
      goto LABEL_87;
    }

    v9 = v13;
    if (v13)
    {
      break;
    }

    if (!v4)
    {
      if (v11)
      {
        if (SLOWORD(v93[0]) != 768)
        {
          if (sub_10002D444() >= 3)
          {
            v19 = xmmword_100043460;
            v20 = *&qword_100043470;
            v21 = xmmword_100043480;
            v22 = *&off_100043490;
            sub_10002D0E8(&v19, 2, "\t%s: Folder thread recordType mismatch for id=%u (found=%u)\n");
          }

          goto LABEL_76;
        }

LABEL_53:
        v9 = 0;
      }

      else
      {
        if (SLOWORD(v93[0]) == 1024)
        {
          goto LABEL_53;
        }

        if (sub_10002D444() >= 3)
        {
          v19 = xmmword_100043460;
          v20 = *&qword_100043470;
          v21 = xmmword_100043480;
          v22 = *&off_100043490;
          sub_10002D0E8(&v19, 2, "\t%s: File thread recordType mismatch for id=%u (found=%u)\n");
        }

LABEL_76:
        v9 = 32;
      }

      if (v12 != *(v93 + 10))
      {
        if (sub_10002D444() >= 3)
        {
          v19 = xmmword_100043460;
          v20 = *&qword_100043470;
          v21 = xmmword_100043480;
          v22 = *&off_100043490;
          sub_10002D0E8(&v19, 2, "\t%s: parentID for id=%u do not match (fileKey=%u threadRecord=%u)\n", "FixOrphanedFiles", v5, v12, *(v93 + 10));
        }

        v9 = 32;
      }

      if (BYTE6(v27[0]) != BYTE14(v93[0]) || bcmp(v27 + 7, (v93 | 0xF), BYTE6(v27[0])))
      {
        if (sub_10002D444() >= 3)
        {
          v19 = xmmword_100043460;
          v20 = *&qword_100043470;
          v21 = xmmword_100043480;
          v22 = *&off_100043490;
          sub_10002D0E8(&v19, 2, "\t%s: nodeName for id=%u do not match\n");
        }

        goto LABEL_86;
      }

      goto LABEL_85;
    }

    if (v11)
    {
      if (SLOWORD(v93[0]) == 3)
      {
        goto LABEL_49;
      }

      if (sub_10002D444() >= 3)
      {
        v19 = xmmword_100043460;
        v20 = *&qword_100043470;
        v21 = xmmword_100043480;
        v22 = *&off_100043490;
        sub_10002D0E8(&v19, 2, "\t%s: Folder thread recordType mismatch for id=%u (found=%u)\n");
      }
    }

    else
    {
      if (SLOWORD(v93[0]) == 4)
      {
LABEL_49:
        v9 = 0;
        goto LABEL_59;
      }

      if (sub_10002D444() >= 3)
      {
        v19 = xmmword_100043460;
        v20 = *&qword_100043470;
        v21 = xmmword_100043480;
        v22 = *&off_100043490;
        sub_10002D0E8(&v19, 2, "\t%s: File thread recordType mismatch for id=%u (found=%u)\n");
      }
    }

    v9 = 32;
LABEL_59:
    if (v12 != DWORD1(v93[0]))
    {
      if (sub_10002D444() >= 3)
      {
        v19 = xmmword_100043460;
        v20 = *&qword_100043470;
        v21 = xmmword_100043480;
        v22 = *&off_100043490;
        sub_10002D0E8(&v19, 2, "\t%s: parentID for id=%u do not match (fileKey=%u threadRecord=%u)\n", "FixOrphanedFiles", v5, v12, DWORD1(v93[0]));
      }

      v9 = 32;
    }

    if (HIWORD(v27[0]) != WORD4(v93[0]) || bcmp(&v27[1], (v93 | 0xA), 2 * HIWORD(v27[0])))
    {
      if (sub_10002D444() >= 3)
      {
        v19 = xmmword_100043460;
        v20 = *&qword_100043470;
        v21 = xmmword_100043480;
        v22 = *&off_100043490;
        sub_10002D0E8(&v19, 2, "\t%s: nodeName for id=%u do not match\n", "FixOrphanedFiles", v5);
        if ((dword_100043528 & 0x400) != 0)
        {
          v19 = xmmword_100043460;
          v20 = *&qword_100043470;
          v21 = xmmword_100043480;
          v22 = *&off_100043490;
          sub_10002D0E8(&v19, 2, "\tFile/Folder record:\n");
          sub_10002E7B8(v27, LOWORD(v27[0]) + 2, 0);
          v19 = xmmword_100043460;
          v20 = *&qword_100043470;
          v21 = xmmword_100043480;
          v22 = *&off_100043490;
          sub_10002D0E8(&v19, 2, "--\n");
          sub_10002E7B8(v94, HIWORD(v23), 0);
          v19 = xmmword_100043460;
          v20 = *&qword_100043470;
          v21 = xmmword_100043480;
          v22 = *&off_100043490;
          sub_10002D0E8(&v19, 2, "\n");
          v19 = xmmword_100043460;
          v20 = *&qword_100043470;
          v21 = xmmword_100043480;
          v22 = *&off_100043490;
          sub_10002D0E8(&v19, 2, "\tThread record:\n");
          sub_10002E7B8(v26, LOWORD(v26[0]) + 2, 0);
          v19 = xmmword_100043460;
          v20 = *&qword_100043470;
          v21 = xmmword_100043480;
          v22 = *&off_100043490;
          sub_10002D0E8(&v19, 2, "--\n");
          sub_10002E7B8(v93, v23, 0);
          v19 = xmmword_100043460;
          v20 = *&qword_100043470;
          v21 = xmmword_100043480;
          v22 = *&off_100043490;
          sub_10002D0E8(&v19, 2, "\n");
        }
      }

LABEL_86:
      sub_100012D4C(*(a1 + 792), v26);
LABEL_87:
      v16 = v10 == 256 || v10 == 1;
      HIWORD(v23) = sub_10001D288(v27, v93, v4, v16);
      v9 = sub_100012C04(*(a1 + 792), v59, v93, HIWORD(v23), &v24);
      if (sub_10002D444() >= 3)
      {
        v19 = xmmword_100043460;
        v20 = *&qword_100043470;
        v21 = xmmword_100043480;
        v22 = *&off_100043490;
        sub_10002D0E8(&v19, 2, "\t%s: Created thread record for id=%u (err=%u)\n");
      }

      goto LABEL_108;
    }

LABEL_85:
    if (v9 == 32)
    {
      goto LABEL_86;
    }

LABEL_108:
    v6 = 1;
  }

  while (!v9);
  if (v9 == 32)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_10001C220(uint64_t a1, uint64_t a2)
{
  memset(v5, 0, 106);
  v3 = sub_10001EDA4(a2);
  return sub_10001EDB4(a1, v3, v5);
}

uint64_t sub_10001C274(uint64_t a1, uint64_t a2)
{
  memset(v38, 0, sizeof(v38));
  v3 = *(sub_10001EDA4(a2) + 16);
  v4 = *(v3 + 760);
  v5 = *(v4 + 2);
  if (v5 < 1)
  {
    return 0;
  }

  else
  {
    v6 = 0;
    v7 = *v4;
    v8 = 2;
    while (1)
    {
      *(a1 + 56) = v6;
      v9 = sub_100006D88(v3, v6, v38);
      if (v9)
      {
        break;
      }

      v10 = sub_100007510(v3, *&v38[0], v8);
      v11 = v10;
      v12 = *&v38[0];
      v13 = *(*&v38[0] + *(v3 + 52) - 2 * (v8 & 0x7FFF) - 2);
      v14 = *&v38[0] + v13;
      v6 = **&v38[0];
      if (v5 >= v10)
      {
        v15 = v10;
      }

      else
      {
        v15 = v5;
      }

      memmove((*&v38[0] + v13), v7, v15);
      sub_100006FE4(v3, v38, v16, v17, v18, v19, v20, v21);
      v28 = v15;
      v5 -= v15;
      if (v5)
      {
        if (!v6)
        {
          sub_10001ECB0(a1, 4294966783, v22, v23, v24, v25, v26, v27);
          sub_100006F74(v3, v38, v32, v33, v34, v35, v36, v37);
          return -513;
        }

        v8 = 0;
        v7 += v28;
        if (v5 > 0)
        {
          continue;
        }
      }

      if (v28 < v11)
      {
        v29 = v12 + v13 + v28;
        v30 = v12 + v13 + v11;
        if (v29 + 1 > v30)
        {
          v30 = v29 + 1;
        }

        bzero((v14 + v28), v30 - v29);
      }

      sub_100006FE4(v3, v38, v22, v23, v24, v25, v26, v27);
      return 0;
    }
  }

  return v9;
}

uint64_t sub_10001C3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
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
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, 512);
  v17 = 0;
  v16 = 0;
  v9 = sub_100012A1C(*(a1 + 792), -32767, v18, &v19, &v17, &v16, a7, a8);
  if (v9)
  {
    return v9;
  }

  do
  {
    if (v19 > 0x1FFu)
    {
      if (v19 == 512)
      {
        if ((BYTE2(v19) & 0x7C) == 0 && WORD4(v20) == 0 && WORD1(v21) == 0 && *(&v25 + 2) == 0)
        {
          goto LABEL_28;
        }

        BYTE2(v19) &= 0x83u;
        WORD4(v20) = 0;
        WORD1(v21) = 0;
        *(&v25 + 2) = 0;
      }

      else
      {
        if (v19 != 768 && v19 != 1024 || !*(&v19 + 2) && !*(&v19 + 6))
        {
          goto LABEL_28;
        }

        *(&v19 + 2) = 0;
      }
    }

    else
    {
      if (v19 != 1)
      {
        if (v19 == 2)
        {
          if ((WORD1(v19) & 0xFF7C) == 0)
          {
            goto LABEL_28;
          }

          BYTE2(v19) &= 0x83u;
          WORD1(v19) = BYTE2(v19);
          goto LABEL_27;
        }

        if (v19 != 256)
        {
          goto LABEL_28;
        }
      }

      if (!WORD1(v19))
      {
        goto LABEL_28;
      }

      WORD1(v19) = 0;
    }

LABEL_27:
    v9 = sub_100012E70(*(a1 + 792), v18, v16, &v19, v17, &v16);
    if (v9)
    {
      return v9;
    }

LABEL_28:
    v9 = sub_100012A1C(*(a1 + 792), 1, v18, &v19, &v17, &v16, v10, v11);
  }

  while (!v9);
  if (v9 == 32)
  {
    LOWORD(v9) = 0;
  }

  return v9;
}

uint64_t sub_10001C610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = 0;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, 268);
  v13 = 0;
  *(a1 + 5312) = 0u;
  *(a1 + 5328) = 0u;
  *(a1 + 5344) = 0u;
  *(a1 + 5360) = 0u;
  *(a1 + 5376) = 0u;
  *(a1 + 5392) = 0u;
  *(a1 + 5408) = 0u;
  *(a1 + 5424) = 0u;
  *(a1 + 5440) = 0u;
  *(a1 + 5456) = 0;
  v9 = sub_100012A1C(*(a1 + 808), -32767, v14, v15, &v13, &v17, a7, a8);
  if (!v9)
  {
    do
    {
      LOWORD(v9) = sub_100024F9C(a1, v14, v15);
      if (v9)
      {
        break;
      }

      v9 = sub_100012A1C(*(a1 + 808), 1, v14, v15, &v13, &v17, v10, v11);
    }

    while (!v9);
    if (v9 == 32)
    {
      LOWORD(v9) = 0;
    }
  }

  return v9;
}

uint64_t sub_10001C714(uint64_t a1)
{
  sub_100020B5C();
  if (!v2)
  {
LABEL_55:
    LOWORD(v9) = 0;
    return v9;
  }

  v5 = v2;
  v38 = 0;
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v53 = 0u;
  memset(v54, 0, 28);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *v39 = 0u;
  v40 = 0u;
  v35 = 0;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v34 = 0;
  v6 = sub_100012A1C(*(a1 + 808), -32767, v39, v36, &v35, &v38, v3, v4);
  if (v6 == 32)
  {
    goto LABEL_32;
  }

  LOWORD(v9) = v6;
  if (v6)
  {
    return v9;
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
  while (1)
  {
    v12 = v39[1];
    if (v39[1] != v11)
    {
      break;
    }

    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (sub_100012A1C(*(a1 + 808), 1, v39, v36, &v35, &v38, v7, v8))
    {
      if (v9 == 1)
      {
        LOWORD(v9) = sub_100012E70(*(a1 + 792), &v87, 0, &v55, v34, &v38);
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  if (v9 == 1)
  {
    v13 = sub_100012E70(*(a1 + 792), &v87, 0, &v55, v34, &v38);
    if (v13)
    {
      LOWORD(v9) = v13;
      if (sub_10002D444() >= 3)
      {
        v30 = xmmword_100043460;
        v31 = *&qword_100043470;
        v32 = xmmword_100043480;
        v33 = *&off_100043490;
        sub_10002D0E8(&v30, 2, "\t%s: Error in replacing catalog record for id=%u\n", "RepairAttributesCheckABT", v11);
      }

      return v9;
    }

    v12 = v39[1];
  }

  if (!sub_10001D3B8(a1, v12, v5, &v87, &v55, &v34))
  {
    if ((BYTE2(v55) & 4) != 0)
    {
      v9 = 0;
    }

    else
    {
      WORD1(v55) |= 4u;
      v9 = 1;
    }

    v11 = v39[1];
LABEL_23:
    if (bcmp((v39 | 0xE), (a1 + 5464), *(a1 + 5720)))
    {
      v10 = 0;
    }

    else if ((BYTE2(v55) & 8) != 0)
    {
      v10 = 1;
    }

    else
    {
      WORD1(v55) |= 8u;
      v10 = 1;
      v9 = 1;
    }

    goto LABEL_28;
  }

  if (sub_10002D444() >= 3)
  {
    v30 = xmmword_100043460;
    v31 = *&qword_100043470;
    v32 = xmmword_100043480;
    v33 = *&off_100043490;
    sub_10002D0E8(&v30, 2, "\t%s: No matching catalog record found for id=%u\n", "RepairAttributesCheckABT", v39[1]);
  }

  if (v39[1] <= 0xFu && v39[1] != 2)
  {
    v9 = 0;
    goto LABEL_28;
  }

  v9 = sub_10001D204(a1, v39, v36);
  if (!v9)
  {
    goto LABEL_28;
  }

  v29 = sub_10002D444();
  if (v29 >= 3)
  {
    v30 = xmmword_100043460;
    v31 = *&qword_100043470;
    v32 = xmmword_100043480;
    v33 = *&off_100043490;
    sub_10002D0E8(&v30, 2, "\t%s: Error in deleting attribute record for id=%u\n", "RepairAttributesCheckABT", v39[1]);
  }

LABEL_31:
  if (!v9)
  {
LABEL_32:
    LOWORD(v30) = 0;
    LODWORD(v36[0]) = 0;
    v118 = 0u;
    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v53 = 0u;
    memset(v54, 0, sizeof(v54));
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    *v39 = 0u;
    v40 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v14 = sub_100012A1C(*(a1 + 792), -32767, v39, &v87, &v30, v36, v7, v8);
    if (v14)
    {
LABEL_33:
      LOWORD(v9) = v14;
      return v9;
    }

    while (2)
    {
      if (v87 - 3 < 0xFFFFFFFE || (BYTE2(v87) & 0xC) == 0)
      {
        goto LABEL_54;
      }

      v17 = DWORD2(v87);
      bzero(&v55, 0x220uLL);
      WORD2(v56) = 12;
      DWORD2(v56) = v17;
      LOWORD(v14) = sub_1000052E0(*(a1 + 808), &v55, 0xFFFFFFFFLL, 0, 0, &v55);
      if ((v14 & 0xFFDF) != 0)
      {
        goto LABEL_33;
      }

      if (!sub_100005678(*(a1 + 808), 1u, &v55, 0, 0, v18, v19, v20) && DWORD2(v56) == v17)
      {
        v21 = 0;
        do
        {
          if (!bcmp(&v57 + 2, (a1 + 5464), *(a1 + 5720)))
          {
            v21 = 1;
          }

          if (sub_100005678(*(a1 + 808), 1u, &v55, 0, 0, v22, v23, v24))
          {
            v25 = 0;
          }

          else
          {
            v25 = DWORD2(v56) == v17;
          }
        }

        while (v25);
        if (!v21)
        {
          v26 = WORD1(v87);
          goto LABEL_49;
        }

LABEL_54:
        if (sub_100012A1C(*(a1 + 792), 1, v39, &v87, &v30, v36, v15, v16))
        {
          goto LABEL_55;
        }

        continue;
      }

      break;
    }

    v26 = WORD1(v87);
    if ((BYTE2(v87) & 4) != 0)
    {
      v27 = WORD1(v87) & 0xFFFB;
      if ((BYTE2(v87) & 8) != 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
LABEL_49:
      v27 = v26;
      if ((v26 & 8) == 0)
      {
        goto LABEL_54;
      }

LABEL_52:
      v27 &= ~8u;
    }

    WORD1(v87) = v27;
    v14 = sub_100012E70(*(a1 + 792), v39, 0, &v87, v30, v36);
    if (v14)
    {
      goto LABEL_33;
    }

    goto LABEL_54;
  }

  return v9;
}

uint64_t sub_10001CDA4(_BYTE *a1)
{
  sub_10001F308();
  v3 = v2;
  memset(__dst, 0, sizeof(__dst));
  memset(__src, 0, sizeof(__src));
  sub_100020BAC();
  if (v4)
  {
    v5 = 24;
  }

  else
  {
    v5 = 6;
  }

  if ((v5 & ~*v3) == 0)
  {
    v6 = 0;
    goto LABEL_30;
  }

  v7 = sub_10001F5B8(__dst);
  v6 = v7;
  if (!v7 || v7 == 65479 || v7 == 65476)
  {
    sub_100020BAC();
    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 2;
    }

    if ((*v3 & v9) == 0)
    {
      v6 = -60;
    }

    v10 = sub_10001F43C(__src);
    v11 = v10;
    if (!v10 || v10 == 65479 || v10 == 65476)
    {
      sub_100020BAC();
      if (!v6)
      {
        memmove(__src[0], __dst[0], 0x200uLL);
        sub_100004D50(*(v3 + 8), __src, 1u);
        __src[0] = 0;
        *a1 = 1;
        sub_100020BAC();
        v16 = *v3 | 0x10;
        if (!v17)
        {
          v16 = *v3 | 4;
        }

        goto LABEL_29;
      }

      if (v12)
      {
        v13 = 16;
      }

      else
      {
        v13 = 4;
      }

      v6 = -57;
      if ((*v3 & v13) != 0 && !v11)
      {
        memmove(__dst[0], __src[0], 0x200uLL);
        sub_100004D50(*(v3 + 8), __dst, 1u);
        __dst[0] = 0;
        *a1 = 1;
        sub_100020BAC();
        if (v14)
        {
          v15 = 8;
        }

        else
        {
          v15 = 2;
        }

        v16 = *v3 | v15;
LABEL_29:
        v6 = 0;
        *v3 = v16;
      }
    }
  }

LABEL_30:
  if (__dst[0])
  {
    sub_100004D50(*(v3 + 8), __dst, 0);
  }

  if (__src[0])
  {
    sub_100004D50(*(v3 + 8), __src, 0);
  }

  return v6;
}

uint64_t sub_10001CF94()
{
  sub_10001F308();
  v1 = v0;
  memset(__src, 0, sizeof(__src));
  memset(__dst, 0, sizeof(__dst));
  v2 = sub_10001F888(__src);
  v3 = v2;
  if (!v2 || (v2 != 65479 ? (v4 = v2 == 65476) : (v4 = 1), v4))
  {
    v5 = sub_10001F7EC(__dst);
    if (!v5 || v5 == 65479 || v5 == 65476)
    {
      if (!v3 && (*v1 & 8) != 0)
      {
        memmove(__dst[0], __src[0], 0x200uLL);
        sub_100004D50(*(v1 + 8), __dst, 1u);
        LOWORD(v3) = 0;
        __dst[0] = 0;
        *v1 |= 0x10u;
      }

      else
      {
        if (!v5 && (*v1 & 0x10) != 0)
        {
          memmove(__src[0], __dst[0], 0x200uLL);
          sub_100004D50(*(v1 + 8), __src, 1u);
          LOWORD(v3) = 0;
          __src[0] = 0;
          *v1 |= 8u;
          goto LABEL_18;
        }

        LOWORD(v3) = -57;
      }
    }
  }

  if (__src[0])
  {
    sub_100004D50(*(v1 + 8), __src, 0);
  }

LABEL_18:
  if (__dst[0])
  {
    sub_100004D50(*(v1 + 8), __dst, 0);
  }

  return v3;
}

uint64_t sub_10001D0E8(uint64_t a1, int a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  bzero(v12, 0x220uLL);
  v13 = 12;
  v14 = a2;
  v11[0] = v9;
  v11[1] = 0x100000058;
  result = sub_1000052E0(*(a1 + 808), v12, 0xFFFFFFFFLL, v11, &v8, v12);
  if ((result & 0xFFFFFFDF) == 0)
  {
    do
    {
      LODWORD(result) = sub_100005678(*(a1 + 808), 1u, v12, v11, &v8, v5, v6, v7);
      if (result)
      {
        break;
      }

      if (v14 != a2)
      {
        return 0;
      }

      LODWORD(result) = sub_10001D204(a1, &v13, v9);
    }

    while (!result);
    if (result == 32)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10001D204(uint64_t a1, _WORD *a2, _DWORD *a3)
{
  result = sub_100012D4C(*(a1 + 808), a2);
  if (!result)
  {
    v8 = 0;
    v7 = 0;
    *(a1 + 20) |= 0xC000u;
    if (*a3 == 32)
    {
      v6 = 6;
    }

    else
    {
      result = 0;
      if (*a3 != 48)
      {
        return result;
      }

      v6 = 2;
    }

    return sub_100013FD4(*(a1 + 776), &a3[v6], &v8, &v7);
  }

  return result;
}

uint64_t sub_10001D288(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    if (a4)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    *a2 = v5;
    *(a2 + 2) = 0;
    *(a2 + 4) = *(a1 + 2);
    memmove((a2 + 8), (a1 + 6), 2 * *(a1 + 6) + 2);
    return 2 * *(a2 + 8) + 10;
  }

  else
  {
    *(a2 + 30) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    if (a4)
    {
      v7 = 768;
    }

    else
    {
      v7 = 1024;
    }

    *a2 = v7;
    *(a2 + 10) = *(a1 + 2);
    memmove((a2 + 14), (a1 + 6), *(a1 + 6) + 1);
    return 46;
  }
}

uint64_t sub_10001D334(uint64_t a1, _BYTE *a2, unsigned int a3, uint64_t a4)
{
  v7 = a1;
  sub_100020B5C();
  if (v8 != 1)
  {
    sub_100030920();
  }

  v11 = 0;
  *(a4 + 2) = 0;
  *(a4 + 4) = v7;
  *(a4 + 8) = 0;
  result = sub_10001EBC8(a2, a3, (a4 + 14), &v11, 254);
  v10 = v11;
  *(a4 + 12) = v11 >> 1;
  *a4 = v10 + 12;
  return result;
}

uint64_t sub_10001D3B8(uint64_t a1, void *a2, uint64_t a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  v9 = a3;
  v10 = a2;
  memset(v31, 0, 512);
  memset(__dst, 0, sizeof(__dst));
  v29 = 0;
  sub_10001F16C(a2, 0, a3, v31);
  v12 = sub_1000127A0(*(a1 + 792), v31, 0, a4, a5, a6, &v29);
  if (v12)
  {
    v13 = v12;
    if (byte_10004350E)
    {
      v25 = xmmword_100043460;
      v26 = *&qword_100043470;
      v27 = xmmword_100043480;
      v28 = *&off_100043490;
      sub_10002D0E8(&v25, 2, "%s: No matching catalog thread record found\n", "GetCatalogRecord");
    }
  }

  else if (*a5 - 1 >= 2)
  {
    v14 = *(a4 + 1);
    sub_10001F0E8(a5 + 8, __dst, v9);
    sub_10001F16C(*(a5 + 1), __dst, v9, a4);
    v15 = sub_1000127A0(*(a1 + 792), a4, 0, a4, a5, a6, &v29);
    if (v15)
    {
      v13 = v15;
      if (byte_10004350E)
      {
        v25 = xmmword_100043460;
        v26 = *&qword_100043470;
        v27 = xmmword_100043480;
        v28 = *&off_100043490;
        sub_10002D0E8(&v25, 2, "%s: No matching catalog record found\n", "GetCatalogRecord");
      }

      if ((dword_100043528 & 0x400) != 0)
      {
        v25 = xmmword_100043460;
        v26 = *&qword_100043470;
        v27 = xmmword_100043480;
        v28 = *&off_100043490;
        sub_10002D0E8(&v25, 2, "Searching for key:\n");
        if ((*(*(a1 + 840) + 136) & 2) != 0)
        {
          v22 = *a4 + 2;
        }

        else
        {
          v22 = *a4 + 1;
        }

        sub_10002E7B8(a4, v22, 0);
      }
    }

    else if (v14 == *(a5 + 2))
    {
      return 0;
    }

    else
    {
      sub_10001ECB0(a1, 572, v16, v17, v18, v19, v20, v21);
      if (sub_10002D444() >= 3)
      {
        v23 = *(a5 + 2);
        v25 = xmmword_100043460;
        v26 = *&qword_100043470;
        v27 = xmmword_100043480;
        v28 = *&off_100043490;
        sub_10002D0E8(&v25, 2, "\t%s: fileID=%u, thread.key.parentID=%u, record.fileID=%u\n", "GetCatalogRecord", v10, v14, v23);
      }

      v13 = 0;
      *(a1 + 24) |= 0x800u;
    }
  }

  else
  {
    return 32;
  }

  return v13;
}

uint64_t sub_10001D6BC(uint64_t a1, void *a2)
{
  v59 = 0;
  v58 = 0;
  sub_100020B5C();
  v5 = v4;
  v6 = sub_10001DFE4(a1, "DamagedFiles");
  if (!v6)
  {
    v16 = 0;
    v14 = 0;
    goto LABEL_8;
  }

  v13 = v6;
  HIDWORD(v59) = 1020;
  v14 = malloc_type_malloc(0x3FCuLL, 0xA1F737FFuLL);
  if (!v14)
  {
    v16 = 0;
    goto LABEL_11;
  }

  LODWORD(v59) = 4096;
  v15 = malloc_type_malloc(0x1000uLL, 0x74BDA447uLL);
  v16 = v15;
  if (!v15)
  {
LABEL_11:
    LOWORD(v20) = -108;
    goto LABEL_12;
  }

  if (a2 < 0x10)
  {
    v28 = __sprintf_chk(v14, 0, 0x3FCuLL, "%08x ", a2);
    HIDWORD(v59) = 1020 - v28;
    sub_100016C5C(a2, &v14[v28], &v59 + 1);
    v29 = HIDWORD(v59) + v28;
    HIDWORD(v59) += v28;
    v30 = __sprintf_chk(v16, 0, 0x1000uLL, "System File: ");
    LODWORD(v59) = 4096 - v30;
    sub_100016C5C(a2, &v16[v30], &v59);
    v31 = v59 + v30;
    LODWORD(v59) = v59 + v30;
LABEL_23:
    v32 = 0x8000;
    goto LABEL_24;
  }

  v17 = __sprintf_chk(v15, 0, 0x1000uLL, "..");
  LODWORD(v59) = 4096 - v17;
  v18 = __sprintf_chk(v14, 0, 0x3FCuLL, "%08x ", a2);
  HIDWORD(v59) = 1020 - v18;
  v19 = sub_100016CD8(a1, a2, &v16[v17], &v59, &v14[v18], &v59 + 1, &v58);
  if (v19)
  {
    LOWORD(v20) = v19;
LABEL_12:
    v21 = (a1 + 36);
    if ((*(a1 + 36) & 0x4000) != 0)
    {
      goto LABEL_15;
    }

    v25 = *(a1 + 888);
    v67[0] = *(a1 + 872);
    v67[1] = v25;
    v26 = *(a1 + 920);
    v67[2] = *(a1 + 904);
    v68 = v26;
    sub_10002D0A4(v67, 573, v7, v8, v9, v10, v11, v12, v55);
    v24 = 0x4000;
LABEL_14:
    *v21 |= v24;
LABEL_15:
    if (!v16)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v29 = HIDWORD(v59) + v18;
  v31 = v59 + v17;
  LODWORD(v59) = v59 + v17;
  HIDWORD(v59) = v29;
  if (!v5)
  {
    goto LABEL_23;
  }

  v43 = (v58 >> 5) & 1;
  if (v31 > 0x400)
  {
    v43 = 1;
  }

  if (v43)
  {
    v32 = 0x8000;
  }

  else
  {
    v32 = -24576;
  }

LABEL_24:
  memset(__src, 0, sizeof(__src));
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  memset(v67, 0, sizeof(v67));
  memset(v65, 0, 512);
  memset(v64, 0, 512);
  v63 = 0;
  v62 = 0;
  v61 = 0;
  sub_100020B5C();
  v34 = v33;
  if (v33)
  {
    v60 = 0;
    if (v29 > 0xFE)
    {
      v57 = v31;
      v37 = v32;
      v38 = malloc_type_malloc(4 * v29, 0x25ED91F5uLL);
      if (!v38)
      {
        LOWORD(v20) = -108;
        goto LABEL_65;
      }

      sub_10001EBC8(v14, v29, v38, &v60, 4 * v29);
      v39 = v60 >> 1;
      if (v60 >> 1 >= 0xFF)
      {
        v39 = 255;
      }

      v60 = v39;
      __memcpy_chk();
      free(v38);
      LOWORD(v35) = v60;
      v32 = v37;
      v31 = v57;
    }

    else
    {
      sub_10001EBC8(v14, v29, &__src[1], &v60, 510);
      v35 = v60 >> 1;
    }

    __src[0] = v35;
  }

  else
  {
    if (v29 >= 0x1F)
    {
      v36 = 31;
    }

    else
    {
      v36 = v29;
    }

    LOBYTE(__src[0]) = v36;
    __memcpy_chk();
  }

  sub_10001F16C(v13, __src, v34, v65);
  if (sub_1000127A0(*(a1 + 792), v65, 0, 0, v67, &v62, &v63) != 32)
  {
    LODWORD(v38) = 0;
    LOWORD(v20) = 17;
    goto LABEL_65;
  }

  v56 = v32;
  v40 = *(a1 + 776);
  v41 = *(v40 + 40);
  if (v31 % v41)
  {
    LODWORD(v38) = v31 / v41 + 1;
  }

  else
  {
    LODWORD(v38) = v31 / v41;
  }

  if (v38)
  {
    v42 = sub_10002B498(v40, v38, &v61);
    if (v42 || (v42 = sub_100002FA4(*(*(a1 + 776) + 208), (*(*(a1 + 776) + 118) + (*(*(a1 + 776) + 40) >> 9) * v61) << 9, *(*(a1 + 776) + 40) * v38, v16, v31)) != 0)
    {
      LOWORD(v20) = v42;
      goto LABEL_65;
    }

    LOWORD(v20) = 0;
    v40 = *(a1 + 776);
  }

  else
  {
    LOWORD(v20) = 32;
  }

  v44 = *(v40 + 64);
  if (!v34 && v44 == -1)
  {
    goto LABEL_65;
  }

  v62 = sub_10001D288(v65, v67, v34, 0);
  sub_10001F16C(v44, 0, v34, v64);
  v45 = sub_100012C04(*(a1 + 792), v64, v67, v62, &v63);
  v20 = v45;
  if (v34 && v45 == 33)
  {
    do
    {
      v44 = (v44 + 1);
      if (v44 <= 0xF)
      {
        v46 = *(a1 + 776);
        *(v46 + 4) |= 0x1000u;
        *(v46 + 196) |= 0xFF00u;
        v44 = 16;
      }

      sub_10001F16C(v44, 0, v34, v64);
      v47 = sub_100012C04(*(a1 + 792), v64, v67, v62, &v63);
    }

    while (v47 == 33);
    v20 = v47;
  }

  if (v20)
  {
    goto LABEL_65;
  }

  v48 = *(*(a1 + 776) + 4);
  if (v56 == 40960 && !v34)
  {
    v62 = 0;
    sub_100012D4C(*(a1 + 792), v64);
    LOWORD(v20) = -50;
    goto LABEL_65;
  }

  bzero(v67, 0x208uLL);
  if (v34)
  {
    v50 = sub_10001E7C0((v48 >> 29) & 1);
    LOWORD(v67[0]) = 2;
    *(&v67[0] + 1) = __PAIR64__(v50, v44);
    LODWORD(v67[1]) = v50;
    DWORD1(v67[1]) = v50;
    LODWORD(v67[2]) = getuid();
    DWORD1(v67[2]) = getgid();
    WORD5(v67[2]) = v56 | 0x1B6;
    *&v68 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v56 == 40960), 0x1FuLL)), 0x72686170736C6E6BLL, 0x7474787454455854);
    *(&v70 + 1) = v31;
    *(&v71 + 4) = __PAIR64__(v61, v38);
    HIDWORD(v71) = v38;
    v51 = 248;
  }

  else
  {
    v52 = sub_10001E814(1);
    LOWORD(v67[0]) = 512;
    DWORD1(v67[1]) = v44;
    HIDWORD(v67[2]) = v52;
    LODWORD(v68) = v52;
    *(v67 + 4) = 0x7474787454455854;
    *(&v67[1] + 10) = v31;
    *(&v67[1] + 14) = *(*(a1 + 776) + 40) * v38;
    WORD5(v69) = v61;
    WORD6(v69) = v38;
    v51 = 102;
  }

  v62 = v51;
  if (sub_100012C04(*(a1 + 792), v65, v67, v51, &v63))
  {
    sub_100012D4C(*(a1 + 792), v64);
    LOWORD(v20) = -50;
LABEL_65:
    if (v20)
    {
      v49 = v61 == 0;
    }

    else
    {
      v49 = 1;
    }

    if (!v49)
    {
      sub_10002AECC(v61, v38);
    }

    goto LABEL_70;
  }

  v53 = *(a1 + 776);
  *(v53 + 64) = v44 + 1;
  if ((v44 + 1) < 0x10)
  {
    *(v53 + 4) |= 0x1000u;
    *(v53 + 64) = 16;
  }

  *(v53 + 196) = *(v53 + 196) | 0xFF00;
  v54 = *(a1 + 792);
  *(*(v54 + 16) + 132) |= 1u;
  sub_1000060FC(v54);
  LOWORD(v20) = sub_100013274(*(a1 + 776), v13, 0, 2, 0, 1);
LABEL_70:
  if (v20 && v20 != 17)
  {
    goto LABEL_12;
  }

LABEL_8:
  v21 = (a1 + 36);
  if ((*(a1 + 36) & 0x80000000) == 0)
  {
    v22 = *(a1 + 888);
    v67[0] = *(a1 + 872);
    v67[1] = v22;
    v23 = *(a1 + 920);
    v67[2] = *(a1 + 904);
    v68 = v23;
    sub_10002D0A4(v67, 117, v7, v8, v9, v10, v11, v12, "DamagedFiles");
    LOWORD(v20) = 0;
    v24 = 0x8000;
    goto LABEL_14;
  }

  LOWORD(v20) = 0;
  if (v16)
  {
LABEL_16:
    free(v16);
  }

LABEL_17:
  if (v14)
  {
    free(v14);
  }

  return v20;
}

uint64_t sub_10001DFE4(uint64_t a1, const char *a2)
{
  memset(__src, 0, sizeof(__src));
  sub_100020B5C();
  v5 = v4;
  v6 = *(a1 + 792);
  v7 = strlen(a2);
  if (v5)
  {
    LOWORD(__src[0]) = v7;
    v8 = v7;
    if (v7)
    {
      v9 = __src + 1;
      do
      {
        v10 = *a2++;
        *v9++ = v10;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    LOBYTE(__src[0]) = v7;
    __memcpy_chk();
  }

  v22 = 0;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  memset(v23, 0, sizeof(v23));
  sub_10001F16C(2, __src, v5, v20);
  if (!sub_1000127A0(v6, v20, 0, 0, v23, &v22, &v21))
  {
    if (v5)
    {
      if (LOWORD(v23[0]) == 1)
      {
        return DWORD2(v23[0]);
      }
    }

    else if (LOWORD(v23[0]) == 256)
    {
      return *(v23 + 6);
    }

    return 0;
  }

  v11 = *(*(a1 + 776) + 64);
  if (!v5 && v11 == -1)
  {
    return 0;
  }

  v22 = sub_10001D288(v20, v23, v5, 1);
  while (1)
  {
    memset(v18, 0, 512);
    sub_10001F16C(v11, 0, v5, v18);
    v12 = sub_100012C04(v6, v18, v23, v22, &v21);
    if (!v5 || v12 != 33)
    {
      break;
    }

    v11 = (v11 + 1);
    if (v11 <= 0xF)
    {
      v13 = *(a1 + 776);
      *(v13 + 4) |= 0x1000u;
      *(v13 + 196) |= 0xFF00u;
      v11 = 16;
    }
  }

  if (v12)
  {
    return 0;
  }

  v14 = *(a1 + 968);
  if (!v14)
  {
    LOWORD(v14) = 1023;
  }

  v22 = sub_10001E3F0(a1, v14, v11, v5, v23);
  if (sub_100012C04(v6, v20, v23, v22, &v21))
  {
    return 0;
  }

  v15 = *(a1 + 776);
  *(v15 + 64) = v11 + 1;
  if ((v11 + 1) <= 0xF)
  {
    *(v15 + 4) |= 0x1000u;
    *(v15 + 64) = 16;
  }

  *(v15 + 196) |= 0xFF00u;
  sub_100013274(v15, 2, 0, 1, 0, 1);
  v16 = *(a1 + 792);
  *(*(v16 + 16) + 132) |= 1u;
  sub_1000060FC(v16);
  return v11;
}

uint64_t sub_10001E3F0(uint64_t a1, __int16 a2, void *a3, int a4, char *a5)
{
  bzero(a5, 0x208uLL);
  v10 = *(a1 + 792);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  memset(v23, 0, sizeof(v23));
  v21 = 0;
  bzero(v37, 0x220uLL);
  sub_10001F16C(a3, 0, a4, v38);
  v22[0] = v23;
  v22[1] = 0x1000000F8;
  v14 = 0;
  v15 = 0;
  if (!sub_1000052E0(v10, v37, 0, v22, &v21, v37))
  {
    v15 = 0;
    v14 = 0;
    do
    {
      if (LOWORD(v23[0]) - 3 >= 2 && LOWORD(v23[0]) != 768 && LOWORD(v23[0]) != 1024)
      {
        if (*&v38[2] != a3)
        {
          break;
        }

        if (a4 && LOWORD(v23[0]) == 2 && (BYTE2(v23[0]) & 0x20) != 0 && v24 == 0x4D41435366647270 && *(a1 + 5728) != a3)
        {
          ++v14;
        }

        if (LOWORD(v23[0]) == 1)
        {
          ++v14;
        }

        ++v15;
      }
    }

    while (!sub_100005678(v10, 1u, v37, v22, &v21, v11, v12, v13));
  }

  if (a4)
  {
    v16 = *(a1 + 776);
    if (v16)
    {
      v17 = (*(v16 + 7) >> 5) & 1;
    }

    else
    {
      v17 = 0;
    }

    v20 = sub_10001E7C0(v17);
    *a5 = 1;
    *(a5 + 2) = a3;
    *(a5 + 3) = v20;
    *(a5 + 4) = v20;
    *(a5 + 5) = v20;
    *(a5 + 8) = getuid();
    *(a5 + 9) = getgid();
    *(a5 + 21) = a2 | 0x4000;
    *(a5 + 1) = v15;
    if (sub_100020BF8(a1))
    {
      *(a5 + 1) |= 0x10u;
      *(a5 + 21) = v14;
    }

    return 88;
  }

  else
  {
    v18 = sub_10001E814(1);
    *a5 = 256;
    *(a5 + 6) = a3;
    *(a5 + 10) = v18;
    *(a5 + 14) = v18;
    result = 70;
    *(a5 + 2) = v15;
  }

  return result;
}

uint64_t sub_10001E650(uint64_t a1, void *a2, int a3)
{
  memset(v11, 0, 512);
  memset(v10, 0, 512);
  v9 = 0;
  sub_100020B5C();
  v7 = v6;
  result = sub_10000B770(a1, a2, v6, v10, v11, &v9);
  if (!result)
  {
    result = sub_1000134A0(*(a1 + 776), *(v10 + 2), v10 + 6, 0, a3);
    if (v7 == 1 && !a3 && !result)
    {
      return sub_10001D0E8(a1, a2);
    }
  }

  return result;
}

uint64_t sub_10001E7C0(int a1)
{
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  v3 = 0;
  gettimeofday(&v4, &v3);
  if (a1)
  {
    return LODWORD(v4.tv_sec);
  }

  else
  {
    return (LODWORD(v4.tv_sec) + 2082844800);
  }
}

uint64_t sub_10001E814(int a1)
{
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  v5 = 0;
  gettimeofday(&v6, &v5);
  if (HIDWORD(v5))
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = 2082844800;
  }

  else
  {
    v3 = 2082848400;
  }

  return (LODWORD(v6.tv_sec) - 60 * v5 + v3);
}

void *sub_10001E89C(size_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x10040436913F5uLL);
  if (v2)
  {
    if (a1)
    {
      v3 = malloc_type_calloc(1uLL, a1, 0x3C297F01uLL);
      if (!v3)
      {
        free(v2);
        return 0;
      }
    }

    else
    {
      v3 = 0;
    }

    *v2 = v3;
    v2[1] = a1;
  }

  return v2;
}

void sub_10001E914(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t sub_10001E95C(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void **sub_10001E968(void **result, size_t a2)
{
  if (result)
  {
    v3 = result;
    result = malloc_type_realloc(*result, a2, 0x2E94BB16uLL);
    if (result)
    {
      *v3 = result;
      v3[1] = a2;
    }
  }

  return result;
}

uint64_t sub_10001E9AC(const void *a1, uint64_t a2, int64_t a3)
{
  if (a2)
  {
    v4 = 0;
    if (a1 && a3 >= 1)
    {
      v7 = *(a2 + 8);
      v8 = malloc_type_realloc(*a2, v7 + a3, 0x70D70881uLL);
      if (v8)
      {
        *a2 = v8;
        *(a2 + 8) = v7 + a3;
        memcpy(&v8[v7], a1, a3);
        return 0;
      }

      else
      {
        return -108;
      }
    }
  }

  else
  {
    return -109;
  }

  return v4;
}

uint64_t sub_10001EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v11 = *(a1 + 888);
  v16 = *(a1 + 872);
  v17 = v11;
  v12 = *(a1 + 920);
  v18 = *(a1 + 904);
  v19 = v12;
  sub_10002D0A4(&v16, a2, a3, a4, a5, a6, a7, a8, v15);
  result = sub_10002D444();
  if (result >= 1)
  {
    result = sub_10002EC84(*(a1 + 936));
    if (result == 1 && (v9 | a4) != 0)
    {
      v16 = xmmword_100043460;
      v17 = *&qword_100043470;
      v18 = xmmword_100043480;
      v19 = *&off_100043490;
      return sub_10002D0E8(&v16, 2, "(%ld, %qd)\n", v9, a4);
    }
  }

  return result;
}

uint64_t sub_10001EAF0(uint64_t a1, unint64_t a2, _BYTE *a3, void *a4, unint64_t a5)
{
  v5 = a3;
  if (a5)
  {
    if (a2 >> 1 >= 0xFF)
    {
      v6 = 255;
    }

    else
    {
      v6 = a2 >> 1;
    }

    v5 = a3;
    while (2)
    {
      v7 = a1 + 2;
      v8 = 1 - v6;
      while (1)
      {
        if (v8 == 1)
        {
          goto LABEL_18;
        }

        a1 = v7;
        v9 = v8;
        v10 = *(v7 - 2);
        if (v10 > 0x7F)
        {
          break;
        }

        v7 += 2;
        ++v8;
        if (v10)
        {
          *v5++ = v10;
          --a5;
          goto LABEL_17;
        }
      }

      if (v10 > 0x7FF)
      {
        v11 = a5 >= 3;
        a5 -= 3;
        if (!v11)
        {
          break;
        }

        *v5 = (v10 >> 12) | 0xE0;
        v5[1] = (v10 >> 6) & 0x3F | 0x80;
        v5[2] = v10 & 0x3F | 0x80;
        v5 += 3;
      }

      else
      {
        if (a5 == 1)
        {
          break;
        }

        a5 -= 2;
        *v5 = (v10 >> 6) | 0xC0;
        v5[1] = v10 & 0x3F | 0x80;
        v5 += 2;
      }

LABEL_17:
      v6 = -v9;
      if (a5)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
  *a4 = v5 - a3;
  return 0;
}

uint64_t sub_10001EBC8(_BYTE *a1, uint64_t a2, char *a3, void *a4, uint64_t a5)
{
  v5 = a3;
  if (a2)
  {
    v5 = a3;
    v6 = a1;
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      v10 = a5-- != 0;
      if (v7)
      {
        v11 = !v10;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        goto LABEL_22;
      }

      v12 = a2 - 1;
      if ((v7 & 0x80) != 0)
      {
        break;
      }

LABEL_21:
      *v5 = v7;
      v5 += 2;
      a2 = v12;
      a1 = v6;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

    v13 = v7 & 0xF0;
    if (v13 != 192)
    {
      if (v13 == 224)
      {
        v16 = *v6;
        if ((v16 & 0xC0) != 0x80)
        {
          return 0xFFFFFFFFLL;
        }

        v15 = (v7 << 12) | ((v16 & 0x3F) << 6);
        if ((v15 & 0xF800) == 0)
        {
          return 0xFFFFFFFFLL;
        }

        v6 = a1 + 2;
        v12 = a2 - 2;
        goto LABEL_19;
      }

      if (v13 != 208)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v14 = v7 & 0x1F;
    if (v14 < 2)
    {
      return 0xFFFFFFFFLL;
    }

    v15 = v14 << 6;
LABEL_19:
    v17 = *v6;
    if ((*v6 & 0xC0) != 0x80)
    {
      return 0xFFFFFFFFLL;
    }

    ++v6;
    --v12;
    LOWORD(v7) = (v17 & 0x3F) + v15;
    goto LABEL_21;
  }

LABEL_22:
  result = 0;
  *a4 = v5 - a3;
  return result;
}

uint64_t sub_10001ECC0(_WORD *a1, int a2)
{
  v2 = a2;
  a1[5] = 7;
  if (a2 == -36)
  {
    v3 = 4;
  }

  else
  {
    v3 = a2;
  }

  if ((v3 & 0xFFFE) == 4)
  {
    v2 = 0;
    v4 = a1[346];
  }

  else
  {
    v4 = 2;
    v3 = 2;
  }

  a1[7] = v4;
  a1[8] = v2;
  return v3;
}

uint64_t sub_10001ED08(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(qword_100043578 + a2 + 16);
  v9 = *(v8 + 760);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  v11 = a3 >> 3;
  v12 = 0x80u >> (a3 & 7);
  v13 = *(v10 + v11);
  if ((v12 & v13) != 0)
  {
    *(a1 + 14) = -521;
    v14 = 4294966775;
    sub_10001EA44(a1, 4294966775, *(a1 + 48), *(a1 + 56), a5, a6, a7, a8);
  }

  else
  {
    v14 = 0;
    *(v10 + v11) = v13 | v12;
    --*(v8 + 60);
  }

  return v14;
}

uint64_t sub_10001EDB4(uint64_t a1, unsigned int *a2, unsigned __int16 *a3)
{
  *(a1 + 56) = 0;
  if (!a2[32])
  {
    sub_1000052D4(a2, 512);
  }

  memset(v26, 0, sizeof(v26));
  v6 = sub_100004E04(a2, 0, 0, v26);
  if (v6)
  {
    return v6;
  }

  v13 = sub_10000FAF8(v26, a2, 3, v7, v8, v9, v10, v11);
  if (v13 || (memmove(a3, (*&v26[0] + 14), 0x6AuLL), (v13 = sub_10000FAF8(v26, a2, 3, v14, v15, v16, v17, v18)) != 0))
  {
    v12 = v13;
    sub_10000508C(a2, v26, 4u);
    return v12;
  }

  sub_10000508C(a2, v26, 0);
  v12 = v24;
  if (v24)
  {
    return v12;
  }

  v25 = a3[9];
  if (v25 <= 0xFFF)
  {
    if (v25 != 512 && v25 != 1024 && v25 != 2048)
    {
      goto LABEL_21;
    }
  }

  else if (a3[9] >= 0x4000u)
  {
    if (v25 != 0x4000 && v25 != 0x8000)
    {
      goto LABEL_21;
    }
  }

  else if (v25 != 4096 && v25 != 0x2000)
  {
LABEL_21:
    v12 = -557;
    *(a1 + 14) = -557;
    sub_10001EA44(a1, 4294966739, *(a1 + 48), *(a1 + 56), v20, v21, v22, v23);
  }

  return v12;
}

uint64_t sub_10001EF18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 624);
  if (!v2)
  {
    return 0;
  }

  while (v2 == a2 || *(a2 + 8) != *(v2 + 4) || *(a2 + 16) != v2[2] || *(a2 + 24) != v2[3] || *(a2 + 40) != *(v2 + 10) || *(a2 + 10) != *(v2 + 5) || *(a2 + 32) != *(v2 + 8) || *(a2 + 36) != *(v2 + 9))
  {
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_10001EFB0(uint64_t a1, void *a2)
{
  result = *(a1 + 624);
  if (result)
  {
    v5 = 0;
    do
    {
      if (result == a2)
      {
        v6 = *result;
        if (v5)
        {
          *v5 = v6;
        }

        if (*(a1 + 624) == a2)
        {
          *(a1 + 624) = v6;
        }

        free(result);
      }

      else
      {
        v6 = *result;
        v5 = result;
      }

      result = v6;
    }

    while (v6);
  }

  return result;
}

void *sub_10001F024(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 48;
  v4 = malloc_type_calloc(1uLL, a2 + 48, 0x1020040CDB7ADB9uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = *(a1 + 624);
    *(a1 + 624) = v4;
  }

  else if (sub_10002D444() >= 3)
  {
    v7[0] = xmmword_100043460;
    v7[1] = *&qword_100043470;
    v7[2] = xmmword_100043480;
    v7[3] = *&off_100043490;
    sub_10002D0E8(v7, 2, "\t%s - AllocateClearMemory failed to allocate %d bytes \n", "AllocMinorRepairOrder", v3);
  }

  if (!*(a1 + 10))
  {
    *(a1 + 10) = 3;
  }

  return v5;
}

_BYTE *sub_10001F0E8(_BYTE *__src, _WORD *__dst, int a3)
{
  if (__src)
  {
    if (a3)
    {
      v3 = *__src;
      if (v3 >= 0xFF)
      {
        v4 = 512;
      }

      else
      {
        v4 = 2 * v3 + 2;
      }

      return memmove(__dst, __src, v4);
    }

    if (*__src)
    {
      v4 = *__src + 1;
      return memmove(__dst, __src, v4);
    }

    goto LABEL_11;
  }

  if (__dst)
  {
LABEL_11:
    *__dst = 0;
  }

  return __src;
}

uint64_t sub_10001F138(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    return *a1;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_10001F14C(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    v2 = *a1;
  }

  else
  {
    v2 = *a1;
  }

  return (v2 << (a2 != 0));
}

void *sub_10001F16C(void *result, _BYTE *__src, int a3, uint64_t a4)
{
  if (a3)
  {
    *a4 = 6;
    *(a4 + 2) = result;
    *(a4 + 6) = 0;
    if (__src)
    {
      result = sub_10001F0E8(__src, (a4 + 6), a3);
      *a4 += 2 * *__src;
    }
  }

  else
  {
    *a4 = 6;
    *(a4 + 2) = result;
    *(a4 + 6) = 0;
    if (__src)
    {
      if (*__src >= 0x1Fu)
      {
        v6 = 31;
      }

      else
      {
        v6 = *__src;
      }

      *(a4 + 6) = v6;
      result = memmove((a4 + 7), __src + 1, v6);
      *a4 += v6;
    }
  }

  return result;
}

uint64_t sub_10001F220(unsigned __int16 **a1)
{
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v5 = 0;
  sub_10001F344(&v5);
  v2 = sub_100004C84(*(&xmmword_1000485D8 + 1), v5, 0, a1);
  if (v2)
  {
    return v2;
  }

  if ((dword_1000485E8 - 2) >= 2)
  {
    if (dword_1000485E8 == 1)
    {
      if (**a1 == 16964)
      {
        return 0;
      }

      else
      {
        return -57;
      }
    }

    else
    {
      return -57;
    }
  }

  v4 = *a1;

  return sub_10001F3E4(v4);
}

double sub_10001F308()
{
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    result = 0.0;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  return result;
}

uint64_t *sub_10001F344(uint64_t *result)
{
  if ((byte_100048628 & 1) == 0)
  {
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
LABEL_6:
    *result = v2;
    return result;
  }

  v1 = dword_1000485E8;
  *result = 0;
  if ((v1 - 2) < 2)
  {
    if ((xmmword_1000485D8 & 4) != 0)
    {
      v2 = qword_100048610;
    }

    else
    {
      v2 = qword_100048608;
    }

    goto LABEL_6;
  }

  if (v1 == 1)
  {
    if ((xmmword_1000485D8 & 0x10) != 0)
    {
      v2 = *(&xmmword_100048618 + 1);
    }

    else
    {
      v2 = xmmword_100048618;
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10001F3E4(unsigned __int16 *a1)
{
  v1 = *a1;
  if (v1 == 18520)
  {
    if (a1[1] == 5)
    {
      goto LABEL_4;
    }

    return -57;
  }

  if (v1 != 18475 || a1[1] != 4)
  {
    return -57;
  }

LABEL_4:
  v2 = *(a1 + 10);
  if ((v2 & 0x1FF) != 0 || v2 == 0)
  {
    return -60;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001F43C(unsigned __int16 **a1)
{
  if (byte_100048628)
  {
    if ((dword_1000485E8 - 2) >= 2)
    {
      if (dword_1000485E8 == 1)
      {
        v2 = *(&xmmword_100048618 + 1);
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = qword_100048610;
    }
  }

  else
  {
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v3 = sub_100004C84(*(&xmmword_1000485D8 + 1), v2, 0, a1);
  if (v3)
  {
    return v3;
  }

  if ((dword_1000485E8 - 2) >= 2)
  {
    if (dword_1000485E8 == 1)
    {
      if (**a1 == 16964)
      {
        return 0;
      }

      else
      {
        return -57;
      }
    }

    else
    {
      return -57;
    }
  }

  v5 = *a1;

  return sub_10001F3E4(v5);
}

uint64_t *sub_10001F548(uint64_t *result)
{
  if ((byte_100048628 & 1) == 0)
  {
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
    goto LABEL_5;
  }

  v1 = dword_1000485E8;
  *result = 0;
  if ((v1 - 2) < 2)
  {
    v2 = qword_100048610;
LABEL_5:
    *result = v2;
    return result;
  }

  if (v1 == 1)
  {
    v2 = *(&xmmword_100048618 + 1);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_10001F5B8(unsigned __int16 **a1)
{
  if (byte_100048628)
  {
    if ((dword_1000485E8 - 2) >= 2)
    {
      if (dword_1000485E8 == 1)
      {
        v2 = xmmword_100048618;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = qword_100048608;
    }
  }

  else
  {
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v3 = sub_100004C84(*(&xmmword_1000485D8 + 1), v2, 0, a1);
  if (v3)
  {
    return v3;
  }

  if ((dword_1000485E8 - 2) >= 2)
  {
    if (dword_1000485E8 == 1)
    {
      if (**a1 == 16964)
      {
        return 0;
      }

      else
      {
        return -57;
      }
    }

    else
    {
      return -57;
    }
  }

  v5 = *a1;

  return sub_10001F3E4(v5);
}

uint64_t *sub_10001F6C4(uint64_t *result)
{
  if ((byte_100048628 & 1) == 0)
  {
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
    goto LABEL_5;
  }

  v1 = dword_1000485E8;
  *result = 0;
  if ((v1 - 2) < 2)
  {
    v2 = qword_100048608;
LABEL_5:
    *result = v2;
    return result;
  }

  if (v1 == 1)
  {
    v2 = xmmword_100048618;
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_10001F734(unsigned __int16 **a1)
{
  if (byte_100048628 == 1)
  {
    v2 = *(&xmmword_1000485D8 + 1);
    if ((xmmword_1000485D8 & 4) != 0)
    {
      v3 = &qword_100048610;
    }

    else
    {
      v3 = &qword_100048608;
    }

    v4 = *v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v5 = sub_100004C84(v2, v4, 0, a1);
  if (v5)
  {
    return v5;
  }

  v7 = *a1;

  return sub_10001F3E4(v7);
}

uint64_t sub_10001F7EC(_WORD **a1)
{
  if (byte_100048628 == 1)
  {
    v2 = *(&xmmword_100048618 + 1);
    v3 = *(&xmmword_1000485D8 + 1);
  }

  else
  {
    v3 = 0;
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v4 = sub_100004C84(v3, v2, 0, a1);
  if (!v4)
  {
    if (**a1 == 16964)
    {
      return 0;
    }

    else
    {
      return -57;
    }
  }

  return v4;
}

uint64_t sub_10001F888(_WORD **a1)
{
  if (byte_100048628 == 1)
  {
    v2 = xmmword_100048618;
    v3 = *(&xmmword_1000485D8 + 1);
  }

  else
  {
    v3 = 0;
    v2 = 0;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v4 = sub_100004C84(v3, v2, 0, a1);
  if (!v4)
  {
    if (**a1 == 16964)
    {
      return 0;
    }

    else
    {
      return -57;
    }
  }

  return v4;
}

void sub_10001F924(uint64_t a1)
{
  memset(v18, 0, sizeof(v18));
  if (byte_100048628 == 1)
  {
    v2 = xmmword_1000485D8 | 1;
  }

  else
  {
    v2 = 1;
    byte_100048628 = 1;
    xmmword_1000485D8 = 0uLL;
    *&dword_1000485E8 = 0uLL;
    xmmword_1000485F8 = 0uLL;
    *&qword_100048608 = 0uLL;
    xmmword_100048618 = 0uLL;
  }

  LODWORD(xmmword_1000485D8) = v2;
  *(&xmmword_1000485D8 + 1) = *(a1 + 776);
  v3 = sub_1000136F8(*(*(&xmmword_1000485D8 + 1) + 198), &xmmword_1000485F8, &dword_1000485F0);
  if (xmmword_1000485F8 < 3 || v3)
  {
    if (sub_10002D444() >= 3)
    {
      __dst[0] = xmmword_100043460;
      __dst[1] = *&qword_100043470;
      __dst[2] = xmmword_100043480;
      __dst[3] = *&off_100043490;
      sub_10002D0E8(__dst, 2, "\tinvalid device information for volume - total sectors = %qd sector size = %d \n");
    }
  }

  else
  {
    memset(__dst, 0, sizeof(__dst));
    v4 = sub_100004C84(*(&xmmword_1000485D8 + 1), 2, 0, v18);
    if (v4)
    {
      v5 = v4;
      if (sub_10002D444() >= 3)
      {
        v14 = xmmword_100043460;
        v15 = *&qword_100043470;
        v16 = xmmword_100043480;
        v17 = *&off_100043490;
        sub_10002D0E8(&v14, 2, "\tcould not get volume block %d, err %d \n", 2, v5);
      }
    }

    else
    {
      v6 = *&v18[0];
      v7 = **&v18[0];
      if (v7 == 16964)
      {
        *&xmmword_100048618 = 2;
        *(&xmmword_100048618 + 1) = xmmword_1000485F8 - 2;
        LODWORD(xmmword_1000485D8) = xmmword_1000485D8 | 8;
      }

      else if (v7 == 18520 || v7 == 18475)
      {
        qword_100048608 = 2;
        qword_100048610 = xmmword_1000485F8 - 2;
        if (sub_10001F3E4(*&v18[0]))
        {
          if (sub_10002D444() >= 3)
          {
            v14 = xmmword_100043460;
            v15 = *&qword_100043470;
            v16 = xmmword_100043480;
            v17 = *&off_100043490;
            sub_10002D0E8(&v14, 2, "\tInvalid primary volume header - error %d \n");
          }
        }

        else
        {
          LODWORD(xmmword_1000485D8) = xmmword_1000485D8 | 2;
          memcpy(__dst, v6, sizeof(__dst));
        }
      }

      else if (sub_10002D444() >= 3)
      {
        v14 = xmmword_100043460;
        v15 = *&qword_100043470;
        v16 = xmmword_100043480;
        v17 = *&off_100043490;
        sub_10002D0E8(&v14, 2, "\tBlock %d is not an MDB or Volume Header \n");
      }

      sub_100004D50(*(a1 + 776), v18, 0);
    }

    v8 = sub_100004C84(*(&xmmword_1000485D8 + 1), xmmword_1000485F8 - 2, 0, v18);
    if (v8)
    {
      v9 = v8;
      if (sub_10002D444() >= 3)
      {
        v14 = xmmword_100043460;
        v15 = *&qword_100043470;
        v16 = xmmword_100043480;
        v17 = *&off_100043490;
        sub_10002D0E8(&v14, 2, "\tcould not get alternate volume header at %qd, err %d \n", xmmword_1000485F8 - 2, v9);
      }
    }

    else
    {
      v10 = *&v18[0];
      v11 = **&v18[0];
      if (v11 == 16964)
      {
        *&xmmword_100048618 = 2;
        *(&xmmword_100048618 + 1) = xmmword_1000485F8 - 2;
        LODWORD(xmmword_1000485D8) = xmmword_1000485D8 | 0x10;
      }

      else if (v11 == 18520 || v11 == 18475)
      {
        qword_100048608 = 2;
        qword_100048610 = xmmword_1000485F8 - 2;
        if (sub_10001F3E4(*&v18[0]))
        {
          if (sub_10002D444() >= 3)
          {
            v14 = xmmword_100043460;
            v15 = *&qword_100043470;
            v16 = xmmword_100043480;
            v17 = *&off_100043490;
            sub_10002D0E8(&v14, 2, "\tInvalid alternate volume header - error %d \n");
          }
        }

        else
        {
          LODWORD(xmmword_1000485D8) = xmmword_1000485D8 | 4;
          sub_10001FEA8(__dst, v10);
        }
      }

      else if (sub_10002D444() >= 3)
      {
        v14 = xmmword_100043460;
        v15 = *&qword_100043470;
        v16 = xmmword_100043480;
        v17 = *&off_100043490;
        sub_10002D0E8(&v14, 2, "\tBlock %qd is not an MDB or Volume Header \n");
      }

      sub_100004D50(*(a1 + 776), v18, 0);
    }

    if ((xmmword_1000485D8 & 0x10) != 0 && !sub_100004C84(*(&xmmword_1000485D8 + 1), *(&xmmword_100048618 + 1), 0, v18))
    {
      sub_100020058(a1, *&v18[0]);
      sub_100004D50(*(a1 + 776), v18, 0);
    }

    if ((xmmword_1000485D8 & 8) != 0 && (xmmword_1000485D8 & 6) != 6)
    {
      if (sub_100004C84(*(&xmmword_1000485D8 + 1), xmmword_100048618, 0, v18))
      {
        if (sub_10002D444() >= 3)
        {
          sub_10002D0E8(&v14, 2, "\tcould not get primary MDB at block %qd, err %d \n");
        }
      }

      else
      {
        sub_100020058(a1, *&v18[0]);
        sub_100004D50(*(a1 + 776), v18, 0);
      }
    }
  }

  if ((xmmword_1000485D8 & 0x18) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  if ((xmmword_1000485D8 & 6) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = (xmmword_1000485D8 & 0x18) != 0;
  }

  dword_1000485E8 = v13;
}

_DWORD *sub_10001FEA8(_DWORD *result, _DWORD *a2)
{
  if ((~xmmword_1000485D8 & 6) == 0)
  {
    v3 = result;
    v4 = result[71];
    v5 = a2[71];
    if (v4 == v5 || result[72] != a2[72])
    {
      v6 = 0;
      v7 = 0;
      v10 = 1;
    }

    else
    {
      v6 = v4 > v5;
      v7 = v4 <= v5;
      result = sub_10002D444();
      if (result >= 3)
      {
        v8 = v3[71];
        v9 = a2[71];
        v16 = xmmword_100043460;
        v17 = *&qword_100043470;
        v18 = xmmword_100043480;
        v19 = *&off_100043490;
        result = sub_10002D0E8(&v16, 2, "\tvolume headers disagree on catalog file total blocks - primary %d alternate %d \n", v8, v9);
      }

      v10 = 0;
    }

    v11 = v3[51];
    v12 = a2[51];
    if (v11 == v12 || v3[52] != a2[52])
    {
      if (v10)
      {
        return result;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v7 = 1;
      }

      else
      {
        v6 = 1;
      }

      result = sub_10002D444();
      if (result >= 3)
      {
        v13 = v3[51];
        v14 = a2[51];
        v16 = xmmword_100043460;
        v17 = *&qword_100043470;
        v18 = xmmword_100043480;
        v19 = *&off_100043490;
        result = sub_10002D0E8(&v16, 2, "\tvolume headers disagree on extents file total blocks - primary %d alternate %d \n", v13, v14);
      }
    }

    if (v7 && v6)
    {
      result = sub_10002D444();
      if (result >= 3)
      {
        v16 = xmmword_100043460;
        v17 = *&qword_100043470;
        v18 = xmmword_100043480;
        v19 = *&off_100043490;
        return sub_10002D0E8(&v16, 2, "\tvolume headers disagree but there is confusion on which to use \n");
      }
    }

    else
    {
      if (v6)
      {
        v15 = xmmword_1000485D8 & 0xFFFFFFFB;
      }

      else
      {
        if (!v7)
        {
          return result;
        }

        v15 = xmmword_1000485D8 & 0xFFFFFFFD;
      }

      LODWORD(xmmword_1000485D8) = v15;
    }
  }

  return result;
}

double sub_100020058(uint64_t a1, uint64_t a2)
{
  v3 = 0uLL;
  memset(v24, 0, sizeof(v24));
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0uLL;
    *&dword_1000485E8 = 0uLL;
    xmmword_1000485F8 = 0uLL;
    *&qword_100048608 = 0uLL;
    xmmword_100048618 = 0uLL;
  }

  if (*(a2 + 124) | *(a2 + 128))
  {
    v4 = *(a2 + 128);
  }

  else
  {
    if (!*(a2 + 126))
    {
      return *&v3;
    }

    v4 = 0;
  }

  v5 = *(a2 + 20);
  v6 = v5 >> 9;
  v7 = (v5 >> 9) * v4;
  v8 = *(a2 + 126);
  v9 = v5 * v8;
  v10 = *(a2 + 28);
  v11 = v7 + v10 + v6 * v8 - 2;
  memset(__dst, 0, sizeof(__dst));
  dword_1000485EC = v9 + (v10 << 9);
  v12 = v10 + (v9 >> 9) + 2;
  v13 = sub_100004C84(*(&xmmword_1000485D8 + 1), v11, 0, v24);
  if (v13)
  {
    v14 = v13;
    if (sub_10002D444() >= 3)
    {
      v20 = xmmword_100043460;
      v21 = *&qword_100043470;
      v22 = xmmword_100043480;
      v23 = *&off_100043490;
      sub_10002D0E8(&v20, 2, "\tcould not get embedded alternate volume header at %qd, err %d \n", v11, v14);
    }
  }

  else
  {
    v15 = *&v24[0];
    if (**&v24[0] == 18475)
    {
      qword_100048608 = v12;
      qword_100048610 = v11;
      if (sub_10001F3E4(*&v24[0]))
      {
        if (sub_10002D444() >= 3)
        {
          v20 = xmmword_100043460;
          v21 = *&qword_100043470;
          v22 = xmmword_100043480;
          v23 = *&off_100043490;
          sub_10002D0E8(&v20, 2, "\tInvalid embedded alternate volume header at block %qd - error %d \n");
        }
      }

      else
      {
        LODWORD(xmmword_1000485D8) = xmmword_1000485D8 | 4;
        *(&xmmword_1000485F8 + 1) = v7;
        memcpy(__dst, v15, sizeof(__dst));
      }
    }

    else if (sub_10002D444() >= 3)
    {
      v20 = xmmword_100043460;
      v21 = *&qword_100043470;
      v22 = xmmword_100043480;
      v23 = *&off_100043490;
      sub_10002D0E8(&v20, 2, "\tBlock number %qd is not embedded alternate volume header \n");
    }

    sub_100004D50(*(a1 + 776), v24, 0);
  }

  v16 = sub_100004C84(*(&xmmword_1000485D8 + 1), v12, 0, v24);
  if (v16)
  {
    v17 = v16;
    if (sub_10002D444() >= 3)
    {
      v20 = xmmword_100043460;
      v21 = *&qword_100043470;
      v22 = xmmword_100043480;
      v23 = *&off_100043490;
      sub_10002D0E8(&v20, 2, "\tcould not get embedded primary volume header at %qd, err %d \n", v12, v17);
    }
  }

  else
  {
    v18 = *&v24[0];
    if (**&v24[0] == 18475)
    {
      qword_100048608 = v12;
      qword_100048610 = v11;
      if (sub_10001F3E4(*&v24[0]))
      {
        if (sub_10002D444() >= 3)
        {
          v20 = xmmword_100043460;
          v21 = *&qword_100043470;
          v22 = xmmword_100043480;
          v23 = *&off_100043490;
          sub_10002D0E8(&v20, 2, "\tInvalid embedded primary volume header at block %qd - error %d \n");
        }
      }

      else
      {
        LODWORD(xmmword_1000485D8) = xmmword_1000485D8 | 2;
        *(&xmmword_1000485F8 + 1) = v7;
        sub_10001FEA8(v18, __dst);
      }
    }

    else if (sub_10002D444() >= 3)
    {
      v20 = xmmword_100043460;
      v21 = *&qword_100043470;
      v22 = xmmword_100043480;
      v23 = *&off_100043490;
      sub_10002D0E8(&v20, 2, "\tBlock number %qd is not embedded primary volume header \n");
    }

    *&v3 = sub_100004D50(*(a1 + 776), v24, 0);
  }

  return *&v3;
}

uint64_t sub_100020418()
{
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
LABEL_7:
    v1 = xmmword_100043460;
    v2 = *&qword_100043470;
    v3 = xmmword_100043480;
    v4 = *&off_100043490;
    sub_10002D0E8(&v1, 2, "\tunknown volume type \n");
    goto LABEL_8;
  }

  if (dword_1000485E8 == 3)
  {
    v1 = xmmword_100043460;
    v2 = *&qword_100043470;
    v3 = xmmword_100043480;
    v4 = *&off_100043490;
    sub_10002D0E8(&v1, 2, "\tvolume type is pure HFS+ \n");
    goto LABEL_8;
  }

  if (dword_1000485E8 == 2)
  {
    v1 = xmmword_100043460;
    v2 = *&qword_100043470;
    v3 = xmmword_100043480;
    v4 = *&off_100043490;
    sub_10002D0E8(&v1, 2, "\tvolume type is embedded HFS+ \n");
    goto LABEL_8;
  }

  if (dword_1000485E8 != 1)
  {
    goto LABEL_7;
  }

  v1 = xmmword_100043460;
  v2 = *&qword_100043470;
  v3 = xmmword_100043480;
  v4 = *&off_100043490;
  sub_10002D0E8(&v1, 2, "\tvolume type is HFS \n");
LABEL_8:
  v1 = xmmword_100043460;
  v2 = *&qword_100043470;
  v3 = xmmword_100043480;
  v4 = *&off_100043490;
  sub_10002D0E8(&v1, 2, "\tprimary MDB is at block %qd 0x%02qx \n", xmmword_100048618, xmmword_100048618);
  v1 = xmmword_100043460;
  v2 = *&qword_100043470;
  v3 = xmmword_100043480;
  v4 = *&off_100043490;
  sub_10002D0E8(&v1, 2, "\talternate MDB is at block %qd 0x%02qx \n", *(&xmmword_100048618 + 1), *(&xmmword_100048618 + 1));
  v1 = xmmword_100043460;
  v2 = *&qword_100043470;
  v3 = xmmword_100043480;
  v4 = *&off_100043490;
  sub_10002D0E8(&v1, 2, "\tprimary VHB is at block %qd 0x%02qx \n", qword_100048608, qword_100048608);
  v1 = xmmword_100043460;
  v2 = *&qword_100043470;
  v3 = xmmword_100043480;
  v4 = *&off_100043490;
  sub_10002D0E8(&v1, 2, "\talternate VHB is at block %qd 0x%02qx \n", qword_100048610, qword_100048610);
  v1 = xmmword_100043460;
  v2 = *&qword_100043470;
  v3 = xmmword_100043480;
  v4 = *&off_100043490;
  sub_10002D0E8(&v1, 2, "\tsector size = %d 0x%02x \n", dword_1000485F0, dword_1000485F0);
  v1 = xmmword_100043460;
  v2 = *&qword_100043470;
  v3 = xmmword_100043480;
  v4 = *&off_100043490;
  sub_10002D0E8(&v1, 2, "\tVolumeObject flags = 0x%02X \n", xmmword_1000485D8);
  v1 = xmmword_100043460;
  v2 = *&qword_100043470;
  v3 = xmmword_100043480;
  v4 = *&off_100043490;
  sub_10002D0E8(&v1, 2, "\ttotal sectors for volume = %qd 0x%02qx \n", xmmword_1000485F8, xmmword_1000485F8);
  v1 = xmmword_100043460;
  v2 = *&qword_100043470;
  v3 = xmmword_100043480;
  v4 = *&off_100043490;
  return sub_10002D0E8(&v1, 2, "\ttotal sectors for embedded volume = %qd 0x%02qx \n", *(&xmmword_1000485F8 + 1), *(&xmmword_1000485F8 + 1));
}

unsigned __int8 *sub_100020668(unsigned __int8 *result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v3 = a3;
    v4 = 0;
    v5 = result;
    i = &result[a2];
    v24 = result + 17;
    v7 = result + 16;
    v22 = &result[a2];
    v20 = &result[a2];
    while (1)
    {
      if (v7 >= v22)
      {
        v8 = v22;
      }

      else
      {
        v8 = v7;
      }

      if ((v7 - v8) <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7 - v8;
      }

      v10 = v5 + 16;
      if (i >= (v5 + 16))
      {
        v11 = v5 + 16;
      }

      else
      {
        v11 = i;
      }

      if (i < v10 || v11 == i || !v4)
      {
        goto LABEL_20;
      }

      v12 = v5;
      if (v5 < v11)
      {
        break;
      }

LABEL_18:
      if (v4 == 1)
      {
        v25 = xmmword_100043460;
        v26 = *&qword_100043470;
        v27 = xmmword_100043480;
        v28 = *&off_100043490;
        result = sub_10002D0E8(&v25, 6, ". . .\n");
        v4 = 2;
      }

LABEL_48:
      v24 += 16;
      v7 += 16;
      v5 = v10;
      if (v10 >= i)
      {
        return result;
      }
    }

    while (!*v12)
    {
      if (++v12 >= v11)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    v23 = v8;
    v25 = xmmword_100043460;
    v26 = *&qword_100043470;
    v27 = xmmword_100043480;
    v28 = *&off_100043490;
    if (v3)
    {
      sub_10002D0E8(&v25, 6, "%s %04x:  ");
    }

    else
    {
      sub_10002D0E8(&v25, 6, "%04x:  ");
    }

    if (v5 >= v11)
    {
      v4 = 1;
    }

    else
    {
      v13 = 0;
      v4 = 1;
      do
      {
        v14 = v5[v13];
        v25 = xmmword_100043460;
        v26 = *&qword_100043470;
        v27 = xmmword_100043480;
        v28 = *&off_100043490;
        sub_10002D0E8(&v25, 6, "%02x", v14);
        if (v13)
        {
          v25 = xmmword_100043460;
          v26 = *&qword_100043470;
          v27 = xmmword_100043480;
          v28 = *&off_100043490;
          sub_10002D0E8(&v25, 6, " ");
        }

        if (v5[v13])
        {
          v4 = 0;
        }

        ++v13;
      }

      while (&v5[v13] < v11);
    }

    v15 = v10 - v11;
    if (((v10 - v11) & 0x80000000) == 0)
    {
      v16 = v24 - v23;
      do
      {
        v25 = xmmword_100043460;
        v26 = *&qword_100043470;
        v27 = xmmword_100043480;
        v28 = *&off_100043490;
        sub_10002D0E8(&v25, 6, "  ");
        if (v15)
        {
          v25 = xmmword_100043460;
          v26 = *&qword_100043470;
          v27 = xmmword_100043480;
          v28 = *&off_100043490;
          sub_10002D0E8(&v25, 6, " ");
        }

        --v15;
        --v16;
      }

      while (v16 > 0);
    }

    v25 = xmmword_100043460;
    v26 = *&qword_100043470;
    v27 = xmmword_100043480;
    v28 = *&off_100043490;
    sub_10002D0E8(&v25, 6, "    |");
    for (i = v20; v5 < v11; ++v5)
    {
      v17 = *v5;
      if (*v5 < 0)
      {
        v18 = __maskrune(*v5, 0x500uLL);
      }

      else
      {
        v18 = _DefaultRuneLocale.__runetype[*v5] & 0x500;
      }

      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = 46;
      }

      v25 = xmmword_100043460;
      v26 = *&qword_100043470;
      v27 = xmmword_100043480;
      v28 = *&off_100043490;
      sub_10002D0E8(&v25, 6, "%c", v19);
    }

    if (v20 < v10)
    {
      do
      {
        v25 = xmmword_100043460;
        v26 = *&qword_100043470;
        v27 = xmmword_100043480;
        v28 = *&off_100043490;
        sub_10002D0E8(&v25, 6, " ");
        --v9;
      }

      while (v9);
    }

    v25 = xmmword_100043460;
    v26 = *&qword_100043470;
    v27 = xmmword_100043480;
    v28 = *&off_100043490;
    result = sub_10002D0E8(&v25, 6, "|\n");
    v3 = a3;
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_1000209EC(uint64_t a1)
{
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
LABEL_5:
    v7 = xmmword_100043460;
    v8 = *&qword_100043470;
    v9 = xmmword_100043480;
    v10 = *&off_100043490;
    sub_10002D0E8(&v7, 1, "volumeType is %d\n", 0);
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    if ((byte_100048628 & 1) == 0)
    {
      byte_100048628 = 1;
      xmmword_1000485D8 = 0uLL;
      *&dword_1000485E8 = 0uLL;
      xmmword_1000485F8 = 0uLL;
      *&qword_100048608 = 0uLL;
      xmmword_100048618 = 0uLL;
    }

    goto LABEL_9;
  }

  if ((dword_1000485E8 - 1) < 3)
  {
    return 1;
  }

  if (!dword_1000485E8)
  {
    goto LABEL_5;
  }

  v6 = 0;
  v4 = 0u;
  v5 = 0u;
LABEL_9:
  sub_10001F344(&v6);
  v3 = sub_100004C84(*(&xmmword_1000485D8 + 1), v6, 0, &v4) << 16;
  if (v3)
  {
    v7 = xmmword_100043460;
    v8 = *&qword_100043470;
    v9 = xmmword_100043480;
    v10 = *&off_100043490;
    sub_10002D0E8(&v7, 6, "%s: Cannot GetVolumeBlock: %d\n", "VolumeObjectIsValid", v3 >> 16);
  }

  else
  {
    sub_100020668(v4, DWORD2(v5), a1 + 1292);
    sub_100004D50(*(&xmmword_1000485D8 + 1), &v4, 0);
  }

  return 0;
}

double sub_100020B5C()
{
  if (byte_100048628 != 1)
  {
    byte_100048628 = 1;
    result = 0.0;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  return result;
}

double sub_100020BAC()
{
  if (byte_100048628 != 1)
  {
    byte_100048628 = 1;
    result = 0.0;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  return result;
}

BOOL sub_100020BF8(uint64_t a1)
{
  v1 = *(a1 + 776);
  memset(v5, 0, sizeof(v5));
  v2 = 0;
  if (!sub_100004C84(v1, 2, 0, v5))
  {
    v3 = **&v5[0];
    if (v3 == 18520)
    {
      v2 = 1;
    }

    else
    {
      v2 = v3 == 16964 && *(*&v5[0] + 124) == 18520;
    }

    sub_100004D50(v1, v5, 0);
  }

  return v2;
}

double sub_100020C9C()
{
  if (byte_100048628 != 1)
  {
    byte_100048628 = 1;
    result = 0.0;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  return result;
}

double sub_100020CE8(uint64_t a1)
{
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    result = 0.0;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
    return result;
  }

  v21[0] = 0;
  v20[0] = 0;
  if (dword_1000485E8 == 2 && (~xmmword_1000485D8 & 0x18) == 0)
  {
    memset(&v21[1], 0, 24);
    memset(&v20[1], 0, 24);
    if (sub_10001F888(v21))
    {
      if (sub_10002D444() >= 3)
      {
        v16 = xmmword_100043460;
        v17 = *&qword_100043470;
        v18 = xmmword_100043480;
        v19 = *&off_100043490;
        sub_10002D0E8(&v16, 2, "\tcould not get primary MDB \n");
      }

      goto LABEL_11;
    }

    v3 = v21[0];
    if (sub_10001F7EC(v20))
    {
      if (sub_10002D444() >= 3)
      {
        v16 = xmmword_100043460;
        v17 = *&qword_100043470;
        v18 = xmmword_100043480;
        v19 = *&off_100043490;
        sub_10002D0E8(&v16, 2, "\tcould not get alternate MDB \n");
      }

      goto LABEL_11;
    }

    v8 = v3[62];
    if (v8 == 18475 && v20[0][62] == 18475 && v3[64] == v20[0][64] && v3[63] == v20[0][63])
    {
LABEL_11:
      if (v21[0])
      {
        result = sub_100004D50(*(&xmmword_1000485D8 + 1), v21, 0);
      }

      if (v20[0])
      {
        return sub_100004D50(*(&xmmword_1000485D8 + 1), v20, 0);
      }

      return result;
    }

    v9 = *(v3 + 5);
    v10 = v9 * v3[63] + (v3[14] << 9) != dword_1000485EC || *(&xmmword_1000485F8 + 1) != (v9 >> 9) * v3[64];
    v11 = *(v20[0] + 5);
    if (v11 * v20[0][63] + (v20[0][14] << 9) == dword_1000485EC)
    {
      v12 = (v11 >> 9) * v20[0][64];
      v13 = *(&xmmword_1000485F8 + 1) != v12;
      v14 = *(&xmmword_1000485F8 + 1) != v12 || v10;
      if (v14)
      {
        v15 = v10;
      }

      else
      {
        v15 = 1;
      }

      if (v8 != 18475 || (v14 & 1) != 0)
      {
LABEL_36:
        if (v15 | v13)
        {
          *(a1 + 18) |= 0x1000u;
          sub_10001EA44(a1, 554, 7, 0, v4, v5, v6, v7);
          if (v15)
          {
            LODWORD(xmmword_1000485D8) = xmmword_1000485D8 & 0xFFFFFFF7;
            if (sub_10002D444() >= 3)
            {
              v16 = xmmword_100043460;
              v17 = *&qword_100043470;
              v18 = xmmword_100043480;
              v19 = *&off_100043490;
              sub_10002D0E8(&v16, 2, "\tinvalid primary wrapper MDB \n");
            }
          }

          else
          {
            LODWORD(xmmword_1000485D8) = xmmword_1000485D8 & 0xFFFFFFEF;
            if (sub_10002D444() >= 3)
            {
              v16 = xmmword_100043460;
              v17 = *&qword_100043470;
              v18 = xmmword_100043480;
              v19 = *&off_100043490;
              sub_10002D0E8(&v16, 2, "\tinvalid alternate wrapper MDB \n");
            }
          }
        }

        goto LABEL_11;
      }

      v13 = v20[0][62] != 18475;
    }

    else
    {
      v13 = 1;
    }

    v15 = v10;
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_100020FDC(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 776);
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  v4 = (*(*(*(v3 + 168) + 16) + 56) - *(*(*(*(v3 + 168) + 16) + 760) + 24) + 2 * *(*(*(v3 + 168) + 16) + 40)) + (*(v3 + 44) >> 10) + (*(*(*(v3 + 160) + 16) + 40) - *(*(*(*(v3 + 160) + 16) + 760) + 24) + *(*(*(v3 + 160) + 16) + 56));
  v5 = *(v3 + 176);
  if (v5)
  {
    v4 += (*(*(v5 + 16) + 40) - *(*(*(v5 + 16) + 760) + 24) + *(*(v5 + 16) + 56));
  }

  v6 = (v4 * 0x28F5C28F5C28F5DuLL) >> 64;
  *a3 = v6;
  *a2 = 5 * v6 + v4;
  return result;
}

uint64_t sub_1000210C4(uint64_t a1)
{
  if (*(a1 + 196) < 0x100u)
  {
    return 0;
  }

  memset(v34, 0, sizeof(v34));
  if (!sub_10001F5B8(v34))
  {
LABEL_26:
    v6 = *&v34[0];
    if (*a1 != 18475)
    {
      v3 = 0;
      *(*&v34[0] + 2) = *(a1 + 16);
      *(v6 + 10) = *(a1 + 4);
      *(v6 + 24) = *(a1 + 60);
      *(v6 + 30) = *(a1 + 64);
      *(v6 + 34) = *(a1 + 48);
      v8 = *(a1 + 160);
      *(v6 + 74) = *(v8 + 104);
      *(v6 + 78) = *(*(a1 + 168) + 104);
      *(v6 + 12) = *(a1 + 112);
      *(v6 + 82) = *(a1 + 114);
      *(v6 + 84) = *(a1 + 32);
      v9 = *(v8 + 24);
      *(v6 + 142) = *(v8 + 32);
      *(v6 + 134) = v9;
      v10 = *(a1 + 168);
      v11 = *(v10 + 24);
      *(v6 + 158) = *(v10 + 32);
      *(v6 + 150) = v11;
LABEL_39:
      if (*&v34[0])
      {
        sub_100004D50(a1, v34, 1u);
        v3 = v31;
      }

      *(a1 + 196) = *(a1 + 196);
      return v3;
    }

    if (!*(a1 + 192))
    {
      v3 = 0;
      goto LABEL_37;
    }

    *__dst = 0u;
    v37 = 0u;
    v7 = sub_10001F888(__dst);
    v3 = v7;
    if (v7)
    {
      if (!__dst[0])
      {
LABEL_37:
        *(v6 + 4) = *(a1 + 4);
        *(v6 + 8) = 1718838123;
        *(v6 + 16) = *(a1 + 16);
        *(v6 + 32) = *(a1 + 32);
        *(v6 + 48) = *(a1 + 48);
        *(v6 + 64) = *(a1 + 64);
        *(v6 + 72) = *(a1 + 72);
        *(v6 + 120) = *(*(a1 + 152) + 104);
        *(v6 + 200) = *(*(a1 + 160) + 104);
        *(v6 + 280) = *(*(a1 + 168) + 104);
        v14 = *(a1 + 96);
        *(v6 + 80) = *(a1 + 80);
        *(v6 + 96) = v14;
        v15 = *(a1 + 160);
        v16 = *(v15 + 36);
        v17 = *(v15 + 52);
        v18 = *(v15 + 84);
        *(v6 + 240) = *(v15 + 68);
        *(v6 + 256) = v18;
        *(v6 + 208) = v16;
        *(v6 + 224) = v17;
        *(v6 + 192) = *(v15 + 112);
        *(v6 + 204) = *(v15 + 120) / *(a1 + 40);
        v19 = *(a1 + 168);
        v20 = *(v19 + 36);
        v21 = *(v19 + 52);
        v22 = *(v19 + 84);
        *(v6 + 320) = *(v19 + 68);
        *(v6 + 336) = v22;
        *(v6 + 288) = v20;
        *(v6 + 304) = v21;
        *(v6 + 272) = *(v19 + 112);
        *(v6 + 284) = *(v19 + 120) / *(a1 + 40);
        v23 = *(a1 + 152);
        v24 = *(v23 + 36);
        v25 = *(v23 + 52);
        v26 = *(v23 + 84);
        *(v6 + 160) = *(v23 + 68);
        *(v6 + 176) = v26;
        *(v6 + 128) = v24;
        *(v6 + 144) = v25;
        *(v6 + 112) = *(v23 + 112);
        *(v6 + 124) = *(v23 + 120) / *(a1 + 40);
        v27 = *(a1 + 176);
        if (v27)
        {
          v28 = *(v27 + 36);
          v29 = *(v27 + 52);
          v30 = *(v27 + 84);
          *(v6 + 400) = *(v27 + 68);
          *(v6 + 416) = v30;
          *(v6 + 368) = v28;
          *(v6 + 384) = v29;
          *(v6 + 352) = *(v27 + 112);
          *(v6 + 360) = *(v27 + 104);
          *(v6 + 364) = *(v27 + 120) / *(a1 + 40);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v12 = *(a1 + 16);
      if (*(__dst[0] + 2) != v12)
      {
        *(__dst[0] + 2) = v12;
        v13 = 1;
        goto LABEL_36;
      }
    }

    v13 = 0;
LABEL_36:
    sub_100004D50(a1, __dst, v13);
    goto LABEL_37;
  }

  if (*&v34[0])
  {
    sub_100004D50(a1, v34, 0);
    *&v34[0] = 0;
  }

  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
    return -57;
  }

  __dst[0] = 0;
  __src[0] = 0;
  if ((dword_1000485E8 - 1) > 2 || !**(&off_10003C518 + (dword_1000485E8 - 1)))
  {
    return -57;
  }

  __dst[1] = 0;
  v37 = 0uLL;
  memset(&__src[1], 0, 24);
  v2 = sub_10001F5B8(__dst);
  if (v2)
  {
    v3 = v2;
    if (v2 != 65479 && v2 != 65476)
    {
      goto LABEL_20;
    }
  }

  v4 = sub_10001F43C(__src);
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
    goto LABEL_19;
  }

  v3 = v4;
  if (dword_1000485E8 != 1)
  {
    if ((xmmword_1000485D8 & 4) != 0)
    {
      goto LABEL_44;
    }

LABEL_19:
    v3 = -60;
    goto LABEL_20;
  }

  if ((xmmword_1000485D8 & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_44:
  if (!v4)
  {
    memmove(__dst[0], __src[0], 0x200uLL);
    sub_100004D50(*(&xmmword_1000485D8 + 1), __dst, 1u);
    __dst[0] = 0;
    v3 = 0;
    if (dword_1000485E8 == 1)
    {
      v33 = xmmword_1000485D8 | 8;
    }

    else
    {
      v33 = xmmword_1000485D8 | 2;
    }

    LODWORD(xmmword_1000485D8) = v33;
  }

LABEL_20:
  if (__dst[0])
  {
    sub_100004D50(*(&xmmword_1000485D8 + 1), __dst, 0);
  }

  if (__src[0])
  {
    sub_100004D50(*(&xmmword_1000485D8 + 1), __src, 0);
  }

  if (!v3)
  {
    v5 = sub_10001F5B8(v34);
    v3 = v5;
    if (!v5)
    {
      goto LABEL_26;
    }
  }

  return v3;
}

uint64_t sub_100021540(uint64_t a1)
{
  __src[0] = 0;
  __dst[0] = 0;
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
  }

  memset(&__src[1], 0, 24);
  memset(&__dst[1], 0, 24);
  sub_1000210C4(a1);
  v2 = sub_10001F5B8(__src);
  if ((byte_100048628 & 1) == 0)
  {
    byte_100048628 = 1;
    xmmword_1000485D8 = 0u;
    *&dword_1000485E8 = 0u;
    xmmword_1000485F8 = 0u;
    *&qword_100048608 = 0u;
    xmmword_100048618 = 0u;
    goto LABEL_8;
  }

  v3 = v2;
  v4 = dword_1000485E8;
  if (dword_1000485E8 == 1)
  {
    if ((xmmword_1000485D8 & 8) != 0)
    {
      v4 = 1;
      goto LABEL_15;
    }

LABEL_8:
    v3 = -60;
    goto LABEL_9;
  }

  if ((xmmword_1000485D8 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
  if (!v2)
  {
    v6 = v4 - 1;
    if (v6 <= 2 && **(&off_10003C530 + v6))
    {
      v7 = sub_10001F43C(__dst);
      v3 = v7;
      if (!v7 || v7 == 65479 || v7 == 65476)
      {
        memmove(__dst[0], __src[0], 0x200uLL);
        sub_100004D50(a1, __dst, 1u);
        __dst[0] = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

LABEL_9:
  if (__src[0])
  {
    sub_100004D50(a1, __src, 0);
  }

  if (__dst[0])
  {
    sub_100004D50(a1, __dst, 0);
  }

  return v3;
}

uint64_t sub_1000216C8(uint64_t a1, __int16 a2, uint64_t a3, unint64_t a4, unsigned int a5, _DWORD *a6)
{
  v12 = 0;
  v11 = 0;
  *a6 = 0;
  v8 = *(a3 + 64);
  v9 = *(a3 + 80);
  result = sub_100013BC0(a1, qword_100043578 + a2, a5, a4 >> 9, &v12, &v11);
  if (!result)
  {
    return sub_1000137E0(*(a1 + 202), *(a1 + 198), (v8 + v9), v12 << 9, v11, a6);
  }

  return result;
}

uint64_t sub_100021758(int a1, unsigned __int8 *a2, int a3)
{
  if (a1 >= 1)
  {
    v4 = a1 << (a3 != 0);
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    do
    {
      v6 = *a2++;
      v8 = xmmword_100043460;
      v9 = *&qword_100043470;
      v10 = xmmword_100043480;
      v11 = *&off_100043490;
      sub_10002D0E8(&v8, 2, "%02X ", v6);
      --v5;
    }

    while (v5);
  }

  v8 = xmmword_100043460;
  v9 = *&qword_100043470;
  v10 = xmmword_100043480;
  v11 = *&off_100043490;
  return sub_10002D0E8(&v8, 2, "\n");
}

uint64_t sub_100021808(uint64_t result, unsigned int a2)
{
  if (result)
  {
    ++*(result + 4 * (a2 % 0x1B) + 128);
    ++*(result + 4 * (a2 % 0x19) + 236);
    ++*(result + 4 * (a2 % 7) + 336);
    ++*(result + 4 * (a2 % 0xB) + 364);
    ++*(result + 4 * (a2 % 0xD) + 408);
    ++*(result + 4 * (a2 % 0x11) + 460);
    ++*(result + 4 * (a2 % 0x13) + 528);
    ++*(result + 4 * (a2 % 0x17) + 604);
    ++*(result + 4 * (a2 % 0x1D) + 696);
    ++*(result + 4 * (a2 % 0x1F) + 812);
    ++*(result + 4 * (a2 & 0x1F));
  }

  return result;
}

uint64_t sub_1000219E0(uint64_t result, unint64_t a2)
{
  if (result)
  {
    ++*(result + 4 * (a2 % 0x1B) + 128);
    ++*(result + 4 * (a2 % 0x19) + 236);
    ++*(result + 4 * (a2 % 7) + 336);
    ++*(result + 4 * (a2 % 0xB) + 364);
    ++*(result + 4 * (a2 % 0xD) + 408);
    ++*(result + 4 * (a2 % 0x11) + 460);
    ++*(result + 4 * (a2 % 0x13) + 528);
    ++*(result + 4 * (a2 % 0x17) + 604);
    ++*(result + 4 * (a2 % 0x1D) + 696);
    ++*(result + 4 * (a2 % 0x1F) + 812);
    ++*(result + 4 * (a2 & 0x1F));
  }

  return result;
}

uint64_t sub_100021BFC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  while (*(a1 + v2) == *(a2 + v2))
  {
    v2 += 4;
    if (v2 == 128)
    {
      v3 = 0;
      while (*(a1 + 128 + v3) == *(a2 + 128 + v3))
      {
        v3 += 4;
        if (v3 == 108)
        {
          v4 = 0;
          while (*(a1 + 236 + v4) == *(a2 + 236 + v4))
          {
            v4 += 4;
            if (v4 == 100)
            {
              v5 = 0;
              while (*(a1 + 336 + v5) == *(a2 + 336 + v5))
              {
                v5 += 4;
                if (v5 == 28)
                {
                  v6 = 0;
                  while (*(a1 + 364 + v6) == *(a2 + 364 + v6))
                  {
                    v6 += 4;
                    if (v6 == 44)
                    {
                      v7 = 0;
                      while (*(a1 + 408 + v7) == *(a2 + 408 + v7))
                      {
                        v7 += 4;
                        if (v7 == 52)
                        {
                          v8 = 0;
                          while (*(a1 + 460 + v8) == *(a2 + 460 + v8))
                          {
                            v8 += 4;
                            if (v8 == 68)
                            {
                              v9 = 0;
                              while (*(a1 + 528 + v9) == *(a2 + 528 + v9))
                              {
                                v9 += 4;
                                if (v9 == 76)
                                {
                                  v10 = 0;
                                  while (*(a1 + 604 + v10) == *(a2 + 604 + v10))
                                  {
                                    v10 += 4;
                                    if (v10 == 92)
                                    {
                                      v11 = 0;
                                      while (*(a1 + 696 + v11) == *(a2 + 696 + v11))
                                      {
                                        v11 += 4;
                                        if (v11 == 116)
                                        {
                                          v12 = 0;
                                          v13 = a1 + 812;
                                          while (*(v13 + v12) == *(a2 + 812 + v12))
                                          {
                                            result = 0;
                                            v12 += 4;
                                            if (v12 == 124)
                                            {
                                              return result;
                                            }
                                          }

                                          return 1;
                                        }
                                      }

                                      return 1;
                                    }
                                  }

                                  return 1;
                                }
                              }

                              return 1;
                            }
                          }

                          return 1;
                        }
                      }

                      return 1;
                    }
                  }

                  return 1;
                }
              }

              return 1;
            }
          }

          return 1;
        }
      }

      return 1;
    }
  }

  return 1;
}

uint64_t sub_100021DBC(uint64_t a1, int a2)
{
  v3 = *(a1 + 776);
  memset(v13, 0, sizeof(v13));
  if (sub_100004C84(v3, 2, 0, v13))
  {
    return 0;
  }

  v5 = *&v13[0];
  v6 = **&v13[0];
  if (v6 == 18520 || v6 == 18475)
  {
    goto LABEL_8;
  }

  if (v6 != 16964 || *(*&v13[0] + 124) != 18475)
  {
    goto LABEL_24;
  }

  v11 = *(*&v13[0] + 28) + (*(*&v13[0] + 20) >> 9) * *(*&v13[0] + 126) + 2;
  sub_100004D50(v3, v13, 0);
  if (!sub_100004C84(v3, v11, 0, v13))
  {
    v5 = *&v13[0];
    if (!*&v13[0])
    {
LABEL_24:
      v4 = 0;
LABEL_25:
      sub_100004D50(v3, v13, 0);
      return v4;
    }

LABEL_8:
    if (!sub_10001F3E4(v5))
    {
      v4 = (*(v5 + 4) >> 13) & 1;
      if (a2 == 1)
      {
        goto LABEL_25;
      }

      v8 = *(v5 + 8);
      if (v8 != 1179863841 && (*(v5 + 4) & 0x4000) == 0 && (v8 == 1212568394 || (*(v5 + 4) & 0x100) != 0))
      {
        goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

  return 0;
}

uint64_t sub_100021F0C(uint64_t a1, uint64_t a2)
{
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v4 = sub_10002D408();
  v5 = sub_10002230C(a1, v31);
  if (v5 || (v31[0].i8[3] & 4) != 0)
  {
    return 1;
  }

  v7 = *(v31[2].u64 + 4);
  __chkstk_darwin(v5, v6);
  v8 = &v27 - ((v4 + 15) & 0x1FFFFFFF0);
  if (v31[0].i8[3])
  {
    v10 = dup(*(a1 + 8));
    *(a2 + 24) = strdup((a1 + 1292));
  }

  else
  {
    if (a2)
    {
      v9 = (a2 + 24);
    }

    else
    {
      v9 = 0;
    }

    if (byte_10004350E)
    {
      v27 = xmmword_100043460;
      v28 = *&qword_100043470;
      v29 = xmmword_100043480;
      v30 = *&off_100043490;
      sub_10002D0E8(&v27, 2, "External Journal device\n");
    }

    v10 = sub_10002A5B8(v31[3].i64 + 4, v9);
  }

  if (v10 == -1)
  {
    if (byte_10004350E)
    {
      v27 = xmmword_100043460;
      v28 = *&qword_100043470;
      v29 = xmmword_100043480;
      v30 = *&off_100043490;
      sub_10002D0E8(&v27, 2, "Unable to get journal file descriptor, journal flags = %#x\n", bswap32(v31[0].u32[0]));
    }

    return 1;
  }

  v12 = bswap64(v7);
  if (a2)
  {
    *a2 = v10;
    *(a2 + 8) = vrev64q_s8(*(&v31[2] + 4));
  }

  v13 = pread(v10, &v27 - ((v4 + 15) & 0x1FFFFFFF0), v4, v12);
  if (v13 == -1)
  {
    if (byte_10004350E)
    {
      v15 = __error();
      v16 = strerror(*v15);
      v27 = xmmword_100043460;
      v28 = *&qword_100043470;
      v29 = xmmword_100043480;
      v30 = *&off_100043490;
      sub_10002D0E8(&v27, 2, "Could not read journal from descriptor %d: %s", v10, v16);
    }

    v14 = *__error() == 0;
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  else if (v13 == v4)
  {
    v14 = 1;
    if (!a2)
    {
LABEL_24:
      close(v10);
    }
  }

  else
  {
    if (byte_10004350E)
    {
      v27 = xmmword_100043460;
      v28 = *&qword_100043470;
      v29 = xmmword_100043480;
      v30 = *&off_100043490;
      sub_10002D0E8(&v27, 2, "Only read %zd bytes from journal (expected %zd)", v13, v4);
    }

    v14 = 0;
    if (!a2)
    {
      goto LABEL_24;
    }
  }

  if (!v14 || *v8 != 2018266698 && *v8 != 1246645368)
  {
    return 1;
  }

  v17 = *(v8 + 1);
  if (v17 != 305419896)
  {
    if (v17 == 2018915346)
    {
      v18 = bswap32(*(v8 + 9));
      goto LABEL_36;
    }

    return 1;
  }

  v18 = *(v8 + 9);
LABEL_36:
  v19 = 0;
  v20 = 0;
  *(v8 + 9) = 0;
  do
  {
    v20 = (v20 + v8[v19++]) ^ (v20 << 8);
  }

  while (v19 != 44);
  v21 = ~v20;
  if (v18 != v21 && byte_10004350E != 0)
  {
    v27 = xmmword_100043460;
    v28 = *&qword_100043470;
    v29 = xmmword_100043480;
    v30 = *&off_100043490;
    sub_10002D0E8(&v27, 2, "Journal checksum doesn't match:  orig %x != calc %x\n", v18, v21);
  }

  v23 = *(v8 + 1);
  v24 = *(v8 + 2);
  if (v23 == v24)
  {
    return 1;
  }

  if (byte_10004350E)
  {
    v25 = bswap64(v23);
    v26 = bswap64(v24);
    if (v17 != 305419896)
    {
      v23 = v25;
      v24 = v26;
    }

    v27 = xmmword_100043460;
    v28 = *&qword_100043470;
    v29 = xmmword_100043480;
    v30 = *&off_100043490;
    sub_10002D0E8(&v27, 2, "Non-empty journal:  start = %lld, end = %lld\n", v23, v24);
  }

  return 0;
}

uint64_t sub_10002230C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_19;
  }

  v4 = *(a1 + 776);
  memset(v33, 0, sizeof(v33));
  LOWORD(v5) = sub_100004C84(v4, 2, 0, v33);
  if (!v5)
  {
    v6 = *&v33[0];
    v7 = **&v33[0];
    if (v7 == 18520 || v7 == 18475)
    {
      v9 = 0;
LABEL_9:
      v5 = sub_10001F3E4(v6);
      if (!v5)
      {
        v10 = *(v6 + 12);
        v11 = *(v6 + 40);
        v12 = sub_10002D408();
        v13 = sub_100004D50(v4, v33, 0);
        if (v10)
        {
          v14 = __chkstk_darwin(*(a1 + 8), v13);
          v16 = (&v29 - ((v15 + 15) & 0x1FFFFFFF0));
          v18 = pread(v14, v16, v15, v9 + v11 * v17);
          if (v18 == v12)
          {
            LOWORD(v5) = 0;
            *(a2 + 176) = *(v16 + 44);
            v19 = v16[9];
            *(a2 + 128) = v16[8];
            *(a2 + 144) = v19;
            *(a2 + 160) = v16[10];
            v20 = v16[5];
            *(a2 + 64) = v16[4];
            *(a2 + 80) = v20;
            v21 = v16[7];
            *(a2 + 96) = v16[6];
            *(a2 + 112) = v21;
            v22 = v16[1];
            *a2 = *v16;
            *(a2 + 16) = v22;
            v23 = v16[3];
            *(a2 + 32) = v16[2];
            *(a2 + 48) = v23;
          }

          else
          {
            if (byte_10004350E)
            {
              v29 = xmmword_100043460;
              v30 = *&qword_100043470;
              v31 = xmmword_100043480;
              v32 = *&off_100043490;
              sub_10002D0E8(&v29, 2, "%s: Tried to read JIB, got %zd\n", "GetJournalInfoBlock", v18);
            }

            LOWORD(v5) = 22;
          }
        }

        else
        {
          LOWORD(v5) = 0;
        }
      }

      return v5;
    }

    if (v7 != 16964 || *(*&v33[0] + 124) != 18475)
    {
      goto LABEL_19;
    }

    v24 = *(*&v33[0] + 20);
    v25 = *(*&v33[0] + 28);
    v26 = *(*&v33[0] + 126);
    v27 = v25 + (v24 >> 9) * v26 + 2;
    v9 = v24 * v26 + (v25 << 9);
    if (byte_10004350E)
    {
      v29 = xmmword_100043460;
      v30 = *&qword_100043470;
      v31 = xmmword_100043480;
      v32 = *&off_100043490;
      sub_10002D0E8(&v29, 2, "Embedded offset is %lld\n", v9);
    }

    sub_100004D50(v4, v33, 0);
    LOWORD(v5) = sub_100004C84(v4, v27, 0, v33);
    if (!v5)
    {
      v6 = *&v33[0];
      if (!*&v33[0])
      {
LABEL_19:
        LOWORD(v5) = -50;
        return v5;
      }

      goto LABEL_9;
    }
  }

  return v5;
}

uint64_t sub_100022598(uint64_t a1, int a2, _BYTE *a3)
{
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  *a3 = 0;
  v6 = *(a1 + 776);
  sub_10001F344(&v30);
  if (!v30)
  {
    if (sub_10002D444() >= 3)
    {
      v26 = xmmword_100043460;
      v27 = *&qword_100043470;
      v28 = xmmword_100043480;
      v29 = *&off_100043490;
      sub_10002D0E8(&v26, 2, "\t%s - unknown volume type \n");
    }

    goto LABEL_7;
  }

  if (sub_10001F5B8(v31))
  {
    if (sub_10002D444() >= 3)
    {
      v26 = xmmword_100043460;
      v27 = *&qword_100043470;
      v28 = xmmword_100043480;
      v29 = *&off_100043490;
      sub_10002D0E8(&v26, 2, "\t%s - could not get VHB/MDB at block %qd \n");
    }

LABEL_7:
    v7 = 0;
    v8 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  sub_100020B5C();
  if (v16)
  {
    v17 = *&v31[0];
    v8 = (*(*&v31[0] + 4) & 0x4100) == 256;
    if (*(*&v31[0] + 8) == 1179863841)
    {
      *(a1 + 34) |= 0x8000u;
      sub_10001ECB0(a1, 574, v10, v11, v12, v13, v14, v15);
      v8 = 0;
    }

    if (a2 == 2)
    {
      v24 = *(v17 + 4);
      if ((v24 & 0x100) != 0)
      {
        v19 = 0;
        if ((v24 & 0x4000) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v24 |= 0x100u;
        *(v17 + 4) = v24;
        v19 = 1;
        if ((v24 & 0x4000) == 0)
        {
          goto LABEL_31;
        }
      }

      v25 = v24 & 0xFFFFBFFF;
      goto LABEL_34;
    }

    if (a2 == 1)
    {
      v18 = *(v17 + 4);
      if ((v18 & 0x100) != 0)
      {
        v18 &= ~0x100u;
        *(v17 + 4) = v18;
        v19 = 1;
        if ((v18 & 0x4000) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v19 = 0;
        if ((v18 & 0x4000) != 0)
        {
LABEL_31:
          if (v19 != 1)
          {
            goto LABEL_46;
          }

          goto LABEL_35;
        }
      }

      v25 = v18 | 0x4000;
LABEL_34:
      *(v17 + 4) = v25;
LABEL_35:
      *(v17 + 8) = 1718838123;
      goto LABEL_36;
    }

LABEL_46:
    v7 = 0;
    goto LABEL_8;
  }

  sub_100020BAC();
  if (!v20)
  {
    v7 = 0;
    v8 = 1;
    goto LABEL_8;
  }

  v21 = *&v31[0];
  v22 = *(*&v31[0] + 10);
  v8 = (v22 & 0x4100) == 256;
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      goto LABEL_46;
    }

    if ((*(*&v31[0] + 10) & 0x100) != 0)
    {
      v22 &= ~0x100u;
      *(*&v31[0] + 10) = v22;
      v23 = 1;
    }

    else
    {
      v23 = 0;
    }

    if ((v22 & 0x4000) == 0)
    {
      v8 = 0;
      *(v21 + 10) = v22 | 0x4000;
      v7 = 1;
      *a3 = 1;
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  if ((*(*&v31[0] + 10) & 0x100) != 0)
  {
    v23 = 0;
  }

  else
  {
    v22 |= 0x100u;
    *(*&v31[0] + 10) = v22;
    v23 = 1;
  }

  if ((v22 & 0x4000) == 0)
  {
LABEL_45:
    if (v23)
    {
LABEL_36:
      v7 = 1;
      *a3 = 1;
      if (a2 == 1)
      {
        v8 = 0;
        goto LABEL_8;
      }

      goto LABEL_48;
    }

    goto LABEL_46;
  }

  *(v21 + 10) = v22 & 0xBFFF;
  *a3 = 1;
LABEL_48:
  v8 = 1;
  v7 = 1;
LABEL_8:
  if (*&v31[0])
  {
    sub_100004D50(v6, v31, v7);
  }

  return v8;
}

uint64_t sub_100022844(uint64_t a1)
{
  v2 = *(a1 + 776);
  v109 = 0;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  memset(v108, 0, sizeof(v108));
  sub_10001F308();
  v4 = v3;
  if (*(v3 + 32) <= 2uLL)
  {
    if (sub_10002D444() >= 3)
    {
      v5 = *(v4 + 32);
      v6 = *(v4 + 24);
      v104 = xmmword_100043460;
      v105 = *&qword_100043470;
      v106 = xmmword_100043480;
      v107 = *&off_100043490;
      sub_10002D0E8(&v104, 2, "\tinvalid device information for volume - total sectors = %qd sector size = %d \n", v5, v6);
    }

    LOWORD(v7) = 123;
    return v7;
  }

  sub_10001F344(&v109);
  if (!v109 || !*(v4 + 16))
  {
    if (sub_10002D444() >= 3)
    {
      v104 = xmmword_100043460;
      v105 = *&qword_100043470;
      v106 = xmmword_100043480;
      v107 = *&off_100043490;
      sub_10002D0E8(&v104, 2, "\t%s - unknown volume type \n", "IVChk");
    }

    LOWORD(v7) = 6;
    goto LABEL_13;
  }

  v8 = sub_10001F220(v108);
  if (v8)
  {
    v7 = v8;
    if (sub_10002D444() >= 3)
    {
      v104 = xmmword_100043460;
      v105 = *&qword_100043470;
      v106 = xmmword_100043480;
      v107 = *&off_100043490;
      sub_10002D0E8(&v104, 2, "\t%s - bad volume header - err %d \n", "IVChk", v7);
    }

    goto LABEL_13;
  }

  v10 = *&v108[0];
  sub_100020BAC();
  if (!v11)
  {
    goto LABEL_43;
  }

  v12 = *(v10 + 124);
  if (*(v10 + 124))
  {
    v110 = 0;
    v111 = 0;
    v13 = *(a1 + 776);
    v104 = 0u;
    v105 = 0u;
    sub_10001F308();
    v15 = v14;
    *(v4 + 16) = 2;
    if (v12 == 18475)
    {
      v16 = *(v10 + 28) + (*(v10 + 20) >> 9) * *(v10 + 126) + 2;
      v111 = v16;
      if (!sub_100004C84(v13, v16, 0, &v104))
      {
        v17 = v104;
        *(v15 + 48) = v16;
        v18 = sub_10001F3E4(v17);
        sub_100004D50(v13, &v104, 0);
        if (!v18)
        {
          *v15 |= 2u;
          goto LABEL_35;
        }

        if (*(v10 + 124) == 18475)
        {
          LOWORD(v19) = *(v10 + 126);
          LOWORD(v20) = *(v10 + 128);
          v21 = *(v10 + 28);
          v22 = *(v10 + 20);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (*(v10 + 128))
    {
      v110 = 0;
      v111 = 0;
      v104 = 0u;
      v105 = 0u;
    }

    else
    {
      if (!*(v10 + 126))
      {
        goto LABEL_43;
      }

      v110 = 0;
      v111 = 0;
      v104 = 0u;
      v105 = 0u;
      if (!*(v10 + 126))
      {
        goto LABEL_34;
      }
    }

    sub_10001F308();
    v15 = v23;
    *(v4 + 16) = 2;
  }

  v24 = *(v10 + 20) >> 9;
  if (!sub_100027638(a1, *(v15 + 32) - v24 - 4, *(v10 + 20) >> 9, &v110))
  {
    v25 = v110;
    *(v15 + 56) = v110;
    *v15 |= 4u;
    if (!sub_100027638(a1, *(v10 + 28) + 4 * v24, 10 * v24, &v111))
    {
      v26 = v111;
      *(v15 + 48) = v111;
      *v15 |= 2u;
      v20 = (v25 - v26 + 4) / v24;
      v21 = *(v10 + 28);
      v19 = (v26 - v21 - 2) / v24;
      v22 = *(v10 + 20);
      *(v15 + 20) = v19 * v22 + (v21 << 9);
LABEL_29:
      v27 = v21 + v19 * (v22 >> 9) + 2;
      if (!sub_100027638(a1, v21 + v19 * (v22 >> 9) + 2, v22 >> 9, &v111))
      {
        *(v10 + 128) = v20;
        *(v10 + 126) = v19;
        *(v10 + 124) = 18475;
        v34 = v111;
        v35 = *(v10 + 28) + v111 - v27;
        *(v10 + 28) = v35;
        v36 = *(v10 + 20);
        *(v15 + 20) = v36 * v19 + (v35 << 9);
        *(v15 + 40) = (v36 >> 9) * v20;
        *(v15 + 48) = v34;
        *v15 |= 2u;
        *(a1 + 18) |= 0x8000u;
        sub_10001ECB0(a1, 565, v28, v29, v30, v31, v32, v33);
        v37 = sub_10001F024(a1, 8);
        if (v37)
        {
          v38 = 0;
          *(v37 + 4) = 565;
          *(v37 + 22) = *(v10 + 28);
          *(v37 + 23) = *(v10 + 124);
          *(v37 + 12) = *(v10 + 126);
          *(a1 + 18) |= 0x200u;
        }

        else
        {
          v38 = 1;
        }

        goto LABEL_36;
      }
    }
  }

LABEL_34:
  *(v4 + 16) = 1;
LABEL_35:
  v38 = 0;
LABEL_36:
  sub_100020C9C();
  if (!v39)
  {
LABEL_39:
    if (sub_10002D444() >= 3)
    {
      v104 = xmmword_100043460;
      v105 = *&qword_100043470;
      v106 = xmmword_100043480;
      v107 = *&off_100043490;
      sub_10002D0E8(&v104, 2, "\t%s - bad volume header - err %d \n", "IVChk", v38);
    }

    sub_10001EA44(a1, 4294966732, 1, 0, v41, v42, v43, v44);
    LOWORD(v7) = -564;
    goto LABEL_13;
  }

  sub_100004D50(v2, v108, 0);
  *&v108[0] = 0;
  v40 = sub_10001F734(v108);
  if (v40)
  {
    v38 = v40;
    goto LABEL_39;
  }

  sub_10001F344(&v109);
  v10 = 0;
LABEL_43:
  sub_100020C9C();
  v45 = 40;
  if (!v46)
  {
    v45 = 32;
  }

  v47 = *(v4 + v45);
  sub_100020B5C();
  if (v54)
  {
    v55 = *&v108[0];
    v56 = (a1 + 872);
    v57 = *(a1 + 888);
    if ((*(*&v108[0] + 5) & 0x20) != 0)
    {
      v104 = *v56;
      v105 = v57;
      v72 = *(a1 + 920);
      v106 = *(a1 + 904);
      v107 = v72;
      v59 = 213;
    }

    else
    {
      v104 = *v56;
      v105 = v57;
      v58 = *(a1 + 920);
      v106 = *(a1 + 904);
      v107 = v58;
      v59 = 217;
    }

    sub_10002D0A4(&v104, v59, v48, v49, v50, v51, v52, v53, v103);
    *(a1 + 690) = 8;
    *v2 = 18475;
    v79 = *(v4 + 20);
    *(v2 + 118) = v79 >> 9;
    *(v2 + 192) = v79;
    v69 = v55[10];
    v70 = v55[11];
    *(v2 + 64) = v55[16];
    *(v2 + 16) = v55[4];
    *(v2 + 4) = v55[1] & 0x1000;
    if (!v55[91])
    {
      *(v2 + 176) = 0;
    }

    *(*(*(v2 + 160) + 16) + 136) |= 2u;
    v80 = *(v4 + 32) / (v69 >> 9);
    if (v70 > v80)
    {
      sub_10001ECB0(a1, 4294966789, v73, v74, v75, v76, v77, v78);
      if (sub_10002D444() >= 3)
      {
        v104 = xmmword_100043460;
        v105 = *&qword_100043470;
        v106 = xmmword_100043480;
        v107 = *&off_100043490;
        sub_10002D0E8(&v104, 2, "\t%s - volume header total allocation blocks is greater than device size \n", "IVChk");
        v81 = v55[11];
        v104 = xmmword_100043460;
        v105 = *&qword_100043470;
        v106 = xmmword_100043480;
        v107 = *&off_100043490;
        sub_10002D0E8(&v104, 2, "\tvolume allocation block count %d device allocation block count %d \n", v81, v80);
      }

      goto LABEL_72;
    }
  }

  else
  {
    sub_100020BAC();
    if (v66)
    {
      v67 = *(a1 + 888);
      v104 = *(a1 + 872);
      v105 = v67;
      v68 = *(a1 + 920);
      v106 = *(a1 + 904);
      v107 = v68;
      sub_10002D0A4(&v104, 216, v60, v61, v62, v63, v64, v65, v103);
      *(a1 + 690) = 3;
      *v2 = *v10;
      *(v2 + 64) = *(v10 + 30);
      *(v2 + 16) = *(v10 + 2);
      LODWORD(v69) = *(v10 + 20);
      v70 = *(v10 + 18);
      v71 = 0xFFFFLL;
      goto LABEL_58;
    }

    LODWORD(v69) = 0;
    v70 = 0;
  }

  v71 = 0xFFFFFFFFLL;
LABEL_58:
  *(a1 + 56) = v109;
  if (v47 <= v71)
  {
    v83 = 512;
  }

  else
  {
    v82 = 2;
    v83 = 512;
    do
    {
      v84 = v47 / v82++;
      v83 += 512;
    }

    while (v84 > v71);
  }

  *(v2 + 40) = v69;
  sub_100020B5C();
  if (v91)
  {
    if ((v69 ^ (v69 - 1)) <= v69 - 1)
    {
      goto LABEL_73;
    }
  }

  else if ((v69 - 2147483137) < 0x80000200 || (v69 & 0x1FF) != 0)
  {
    goto LABEL_73;
  }

  if (v69 < v83)
  {
LABEL_73:
    sub_10001ECB0(a1, 4294966790, v85, v86, v87, v88, v89, v90);
    LOWORD(v7) = -506;
    goto LABEL_13;
  }

  *(v2 + 44) = v70;
  *(v2 + 48) = 0;
  sub_100020BAC();
  if (v98)
  {
    v99 = v69 >> 9;
    v100 = ((v47 / v99) + 4095) >> 12;
    if (v70 > ((v47 - v100 - 3) / v99))
    {
      sub_10001ECB0(a1, 4294966789, v92, v93, v94, v95, v96, v97);
LABEL_72:
      LOWORD(v7) = -507;
      goto LABEL_13;
    }

    v101 = *(v10 + 14);
    if (v101 > 2)
    {
      *(v2 + 116) = v101;
      v102 = *(v10 + 28);
      if (v100 + v101 <= v102)
      {
        LOWORD(v7) = 0;
        *(v2 + 118) = v102;
      }

      else
      {
        sub_10001ECB0(a1, 4294966787, v92, v93, v94, v95, v96, v97);
        LOWORD(v7) = -509;
      }
    }

    else
    {
      sub_10001ECB0(a1, 4294966788, v92, v93, v94, v95, v96, v97);
      LOWORD(v7) = -508;
    }
  }

  else
  {
    LOWORD(v7) = 0;
  }

LABEL_13:
  if (*&v108[0])
  {
    sub_100004D50(v2, v108, 0);
  }

  return v7;
}

uint64_t sub_100023000(uint64_t a1)
{
  v53 = 0u;
  memset(v54, 0, sizeof(v54));
  v51 = 0u;
  v52 = 0u;
  memset(v50, 0, sizeof(v50));
  memset(&v49[1], 0, 24);
  sub_100020B5C();
  v3 = v2;
  *(a1 + 48) = 3;
  *(a1 + 56) = 0;
  v4 = *(a1 + 776);
  v5 = *(a1 + 832);
  v49[0] = 0;
  v6 = sub_10001F220(v49);
  if (v6)
  {
    goto LABEL_2;
  }

  v55 = 0;
  v9 = v49[0];
  v10 = *(a1 + 784);
  if (!v3)
  {
    v28 = *(v49[0] + 67);
    *(v10 + 32) = *(v49[0] + 71);
    *(v10 + 24) = v28;
    v6 = sub_1000233C8(a1, 3, 0, 0, (*(a1 + 784) + 24), &v55);
    if (v6)
    {
      goto LABEL_2;
    }

    v35 = *(v9 + 65);
    if (*(*(a1 + 776) + 40) * v55 != v35)
    {
      sub_10001ECB0(a1, 4294966752, v29, v30, v31, v32, v33, v34);
      if (byte_10004350E)
      {
        v45 = xmmword_100043460;
        v46 = *&qword_100043470;
        v47 = xmmword_100043480;
        v48 = *&off_100043490;
        sub_10002D0E8(&v45, 2, "Alternate MDB drXTFlSize = %llu, should be %llu\n");
      }

      goto LABEL_27;
    }

    v36 = *(a1 + 784);
    *(v36 + 112) = v35;
    *(v36 + 120) = v35;
    v6 = sub_10001EDB4(a1, v36, v50);
    if (!v6)
    {
      *(v5 + 54) = 7;
      *(v5 + 8) = sub_100014CCC;
      v37 = *(v50 + 6);
      *(v5 + 32) = v50[0];
      *(v5 + 36) = *(v50 + 2);
      *(v5 + 40) = v37;
      *(v5 + 44) = *(v50 + 10);
      v38 = WORD1(v50[1]);
      *(v5 + 52) = WORD1(v50[1]);
      v39 = *(*(a1 + 784) + 120) / v38;
      *(v5 + 56) = v39;
      *(v5 + 60) = v39;
      v40 = sub_100023790(a1, v5);
      v7 = v40;
      if (v40)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

LABEL_2:
    v7 = v6;
    goto LABEL_3;
  }

  v11 = *(v49[0] + 13);
  v12 = *(v49[0] + 14);
  v13 = *(v49[0] + 15);
  *(v10 + 84) = *(v49[0] + 16);
  *(v10 + 68) = v13;
  *(v10 + 52) = v12;
  *(v10 + 36) = v11;
  v6 = sub_1000233C8(a1, 3, 0, 0, (*(a1 + 784) + 36), &v55);
  if (v6)
  {
    goto LABEL_2;
  }

  v20 = *(v9 + 51);
  if (v20 != v55)
  {
    sub_10001ECB0(a1, 4294966752, v14, v15, v16, v17, v18, v19);
    if (byte_10004350E)
    {
      v45 = xmmword_100043460;
      v46 = *&qword_100043470;
      v47 = xmmword_100043480;
      v48 = *&off_100043490;
      sub_10002D0E8(&v45, 2, "Extents File totalBlocks = %u, numABlks = %u\n");
    }

LABEL_27:
    v7 = -544;
    goto LABEL_3;
  }

  v21 = *(a1 + 784);
  *(v21 + 112) = *(v9 + 24);
  *(v21 + 120) = *(v9 + 10) * v20;
  v6 = sub_10001EDB4(a1, v21, v50);
  if (v6)
  {
    goto LABEL_2;
  }

  *(v5 + 54) = 10;
  *(v5 + 8) = sub_100014D14;
  *(v5 + 136) |= 2u;
  v22 = *(v50 + 6);
  *(v5 + 32) = v50[0];
  *(v5 + 36) = *(v50 + 2);
  *(v5 + 40) = v22;
  *(v5 + 44) = *(v50 + 10);
  v23 = WORD1(v50[1]);
  *(v5 + 52) = WORD1(v50[1]);
  v24 = *(*(a1 + 784) + 120) / v23;
  *(v5 + 56) = v24;
  *(v5 + 60) = v24;
  v25 = sub_100023790(a1, v5);
  v7 = v25;
  if (v25 && *(v5 + 52) != 1024)
  {
    *(v5 + 52) = 1024;
    v26 = *(*(a1 + 784) + 120) >> 10;
    *(v5 + 56) = v26;
    *(v5 + 60) = v26;
    v27 = sub_100023790(a1, v5);
    v7 = v27;
    if (v27)
    {
      goto LABEL_3;
    }

    *(a1 + 22) |= 0x8000u;
  }

LABEL_18:
  if (BYTE4(v51))
  {
    *(a1 + 22) |= 0x80u;
  }

  v41 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040338E37ACuLL);
  *(v5 + 760) = v41;
  if (v41 && (v42 = (*(v5 + 56) + 7) >> 3, v43 = malloc_type_calloc(1uLL, v42, 0xD88953D7uLL), v44 = *(v5 + 760), (*v44 = v43) != 0))
  {
    *(v44 + 8) = v42;
    *(v44 + 24) = *(&v50[1] + 10);
  }

  else
  {
    v7 = 1;
  }

LABEL_3:
  if (v49[0])
  {
    sub_100004D50(v4, v49, 0);
  }

  return v7;
}

uint64_t sub_1000233C8(uint64_t a1, uint64_t a2, int a3, char *a4, _OWORD *a5, int *a6)
{
  if (a3 == 1 && !a4)
  {
    sub_10003094C();
  }

  sub_100020B5C();
  v39 = *(a1 + 690);
  if (a5)
  {
    v12 = v11;
    v33 = 0;
    __s = a4;
    v13 = 0;
    v45 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v15 = a2 < 0x10 || a3 == 1;
    v32 = v15;
    memset(v46, 0, sizeof(v46));
    v40 = 0;
    while (1)
    {
      v16 = sub_100027734(a1, a2, a5, &v39);
      if (v16)
      {
        v19 = v16;
        v35 = xmmword_100043460;
        v36 = *&qword_100043470;
        v37 = xmmword_100043480;
        v38 = *&off_100043490;
        sub_10002D128(&v35, 1, "%s: Bad extent for fileID %u in extent %u for startblock %u\n", "CheckFileExtents", a2, v39, v13);
        if ((dword_100043528 & 0x400) != 0)
        {
          v35 = xmmword_100043460;
          v36 = *&qword_100043470;
          v37 = xmmword_100043480;
          v38 = *&off_100043490;
          sub_10002D0E8(&v35, 2, "Extents:\n");
          sub_10002E7B8(a5, 0x40u, 0);
          v35 = xmmword_100043460;
          v36 = *&qword_100043470;
          v37 = xmmword_100043480;
          v38 = *&off_100043490;
          sub_10002D0E8(&v35, 2, "\n");
        }

        if (v32)
        {
          break;
        }

        v20 = v39;
        sub_100020B5C();
        v21 = sub_10001F024(a1, 0);
        if (v21)
        {
          *(v21 + 4) = -510;
          *(v21 + 5) = a3;
          v21[2] = v20;
          *(v21 + 9) = v13;
          *(v21 + 10) = a2;
          *(a1 + 28) |= 0x10u;
        }

        HIDWORD(v33) = 1;
      }

      if (v39)
      {
        v22 = 0;
        v19 = 0;
        do
        {
          v23 = v22;
          if (v12 == 1)
          {
            v24 = a5 + 2 * v22;
            v25 = *v24;
            v26 = v24[1];
            if (!v26)
            {
              break;
            }
          }

          else
          {
            v27 = a5 + 2 * v22;
            v26 = v27[1];
            v25 = *v27;
            if (!v27[1])
            {
              break;
            }
          }

          if (dword_100043440)
          {
            sub_1000265FC(*(a1 + 776), v25, v26, a2);
          }

          v19 = sub_10002A950(v25, v26);
          if (v19 == 511)
          {
            v19 = sub_100026B18(a1, a2, __s, v25, v26, a3);
          }

          v13 += v26;
          v22 = v23 + 1;
        }

        while (v39 > (v23 + 1));
      }

      else
      {
        v19 = 0;
      }

      if (a3 == 1 || a2 == 3 || HIDWORD(v33) == 1)
      {
        break;
      }

      if (v33)
      {
        v28 = sub_100012A1C(*(a1 + 784), 1, &v41, v46, &v40, &v45, v17, v18);
        if (v28)
        {
          goto LABEL_47;
        }

        v19 = 0;
        if (v12)
        {
          if (HIDWORD(v41) != a2)
          {
            break;
          }

          v29 = BYTE2(v41);
        }

        else
        {
          if (*(&v41 + 2) != a2)
          {
            break;
          }

          v29 = BYTE1(v41);
        }

        a5 = v46;
        if (v29 != a3)
        {
          break;
        }
      }

      else
      {
        if (v12)
        {
          LOWORD(v43) = 10;
          WORD1(v43) = a3;
          HIDWORD(v43) = a2;
          v44 = v13;
        }

        else
        {
          LOBYTE(v43) = 7;
          BYTE1(v43) = a3;
          *(&v43 + 2) = a2;
          HIWORD(v43) = v13;
        }

        a5 = v46;
        v28 = sub_1000127A0(*(a1 + 784), &v43, 0, &v41, v46, &v40, &v45);
        LOBYTE(v33) = 1;
        if (v28)
        {
LABEL_47:
          if (v28 == 32)
          {
            goto LABEL_50;
          }

          return sub_10001ECC0(a1, v28);
        }
      }
    }
  }

  else
  {
    v13 = 0;
LABEL_50:
    v19 = 0;
  }

  *a6 = v13;
  return v19;
}

uint64_t sub_100023790(uint64_t a1, uint64_t a2)
{
  memset(v18, 0, sizeof(v18));
  sub_1000052D4(*(a2 + 768), *(a2 + 52));
  v4 = sub_100006D88(a2, 0, v18);
  v11 = v4;
  if (v4 || ((v12 = *(a2 + 52), v13 = *(*&v18[0] + v12 - 2), v13 < v12) ? (v14 = v13 >= 0xE) : (v14 = 0), v14 ? (v15 = (v13 & 1) == 0) : (v15 = 0), v15))
  {
    if (!v4)
    {
      v11 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if (byte_10004350E)
    {
      v17[0] = xmmword_100043460;
      v17[1] = *&qword_100043470;
      v17[2] = xmmword_100043480;
      v17[3] = *&off_100043490;
      sub_10002D0E8(v17, 6, "%s(%d):  offset is wrong\n", "CheckNodesFirstOffset", 1222);
    }

    v11 = 36;
  }

  sub_10001ECB0(a1, 4294966739, v5, v6, v7, v8, v9, v10);
LABEL_15:
  sub_100006F74(a2, v18, v5, v6, v7, v8, v9, v10);
  return v11;
}

uint64_t sub_100023894(uint64_t a1)
{
  *(a1 + 48) = 3;
  sub_10001F344((a1 + 56));
  LOWORD(v2) = sub_100027990(a1, 0, 0);
  if (!v2)
  {
    LOWORD(v2) = sub_100028890(a1, 0);
    if (!v2)
    {
      LOWORD(v2) = sub_100028AB8(a1, 0, (a1 + 22));
      if (!v2)
      {
        v2 = sub_100028C70(a1, 0);
        if (!v2)
        {
          LOWORD(v2) = sub_1000290D8(a1, 0);
        }
      }
    }
  }

  return v2;
}

uint64_t sub_100023928(uint64_t a1)
{
  sub_100020B5C();
  v3 = v2;
  memset(v9, 0, sizeof(v9));
  v4 = *(a1 + 776);
  v5 = sub_10001F220(v9);
  if (v5)
  {
    v6 = v5;
    if (!v9[0])
    {
      return v6;
    }

    goto LABEL_10;
  }

  if (v3 == 1)
  {
    if ((*(v9[0] + 1) & 0x200) != 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v9[0][5] & 0x200) != 0)
  {
LABEL_6:
    memset(v10, 0, sizeof(v10));
    v6 = sub_1000233C8(a1, 5, 0, 0, v10, &v8);
    if (!v9[0])
    {
      return v6;
    }

    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:
  sub_100004D50(v4, v9, 0);
  return v6;
}

uint64_t sub_100023A20(uint64_t a1)
{
  v63 = 0u;
  memset(v64, 0, sizeof(v64));
  v61 = 0u;
  v62 = 0u;
  memset(v60, 0, sizeof(v60));
  memset(&v59[1], 0, 24);
  sub_100020B5C();
  v3 = v2;
  *(a1 + 48) = 4;
  *(a1 + 56) = 0;
  v4 = *(a1 + 776);
  v5 = *(a1 + 840);
  v59[0] = 0;
  v6 = sub_10001F220(v59);
  if (v6)
  {
    goto LABEL_2;
  }

  v65 = 0;
  v9 = v59[0];
  v10 = *(a1 + 792);
  if (!v3)
  {
    v31 = *(v59[0] + 75);
    *(v10 + 32) = *(v59[0] + 79);
    *(v10 + 24) = v31;
    v6 = sub_1000233C8(a1, 4, 0, 0, (*(a1 + 792) + 24), &v65);
    if (v6)
    {
      goto LABEL_2;
    }

    v32 = *(v9 + 73);
    if (*(v4 + 40) * v65 != v32)
    {
LABEL_17:
      sub_10001ECB0(a1, 4294966753, v14, v15, v16, v17, v18, v19);
      v7 = -543;
      goto LABEL_3;
    }

    v33 = *(a1 + 792);
    *(v33 + 112) = v32;
    *(v33 + 120) = v32;
    v6 = sub_10001EDB4(a1, v33, v60);
    if (!v6)
    {
      *(v5 + 54) = 37;
      *(v5 + 8) = sub_100014BE4;
      *(v5 + 40) = *(v60 + 6);
      v34 = WORD1(v60[1]);
      *(v5 + 52) = WORD1(v60[1]);
      v35 = *(*(a1 + 792) + 120) / v34;
      *(v5 + 56) = v35;
      *(v5 + 60) = v35;
      *(v5 + 32) = v60[0];
      *(v5 + 36) = *(v60 + 2);
      *(v5 + 44) = *(v60 + 10);
      v36 = sub_100023790(a1, v5);
      v7 = v36;
      if (v36)
      {
        goto LABEL_3;
      }

      goto LABEL_23;
    }

LABEL_2:
    v7 = v6;
    goto LABEL_3;
  }

  v11 = *(v59[0] + 18);
  v12 = *(v59[0] + 19);
  v13 = *(v59[0] + 20);
  *(v10 + 84) = *(v59[0] + 21);
  *(v10 + 68) = v13;
  *(v10 + 52) = v12;
  *(v10 + 36) = v11;
  v6 = sub_1000233C8(a1, 4, 0, 0, (*(a1 + 792) + 36), &v65);
  if (v6)
  {
    goto LABEL_2;
  }

  v20 = *(v9 + 71);
  if (v20 != v65)
  {
    goto LABEL_17;
  }

  v21 = *(a1 + 792);
  *(v21 + 112) = *(v9 + 34);
  *(v21 + 120) = *(v9 + 10) * v20;
  v6 = sub_10001EDB4(a1, v21, v60);
  if (v6)
  {
    goto LABEL_2;
  }

  *(v5 + 54) = 516;
  v28 = BYTE5(v61);
  if (BYTE5(v61) == 188)
  {
    *(v5 + 8) = sub_100014C60;
    v29 = *(a1 + 888);
    *__len = *(a1 + 872);
    v67 = v29;
    v30 = *(a1 + 920);
    v68 = *(a1 + 904);
    v69 = v30;
    sub_10002D0A4(__len, 211, v22, v23, v24, v25, v26, v27, v55);
    v28 = BYTE5(v61);
  }

  else
  {
    *(v5 + 8) = sub_100014C14;
  }

  *v5 = v28;
  *(v5 + 40) = *(v60 + 6);
  v37 = WORD1(v60[1]);
  *(v5 + 52) = WORD1(v60[1]);
  v38 = *(*(a1 + 792) + 120) / v37;
  *(v5 + 56) = v38;
  *(v5 + 60) = v38;
  *(v5 + 136) |= 6u;
  *(v5 + 32) = v60[0];
  *(v5 + 36) = *(v60 + 2);
  *(v5 + 44) = *(v60 + 10);
  v39 = sub_100023790(a1, v5);
  v7 = v39;
  if (v39 && *(v5 + 52) != 4096)
  {
    *(v5 + 52) = 4096;
    v40 = *(*(a1 + 792) + 120) >> 12;
    *(v5 + 56) = v40;
    *(v5 + 60) = v40;
    v41 = sub_100023790(a1, v5);
    v7 = v41;
    if (v41)
    {
      goto LABEL_3;
    }

    *(a1 + 24) |= 0x8000u;
  }

LABEL_23:
  if (BYTE4(v61))
  {
    *(a1 + 24) |= 0x80u;
  }

  v42 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040338E37ACuLL);
  *(v5 + 760) = v42;
  if (v42 && (v43 = (*(v5 + 56) + 7) >> 3, v44 = malloc_type_calloc(1uLL, v43, 0x780C29FAuLL), v45 = *(v5 + 760), (*v45 = v44) != 0))
  {
    *(v45 + 8) = v43;
    *(v45 + 24) = *(&v60[1] + 10);
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    *__len = 0u;
    v67 = 0u;
    sub_10001F16C(2, 0, v3, v57);
    if (!sub_1000127A0(*(a1 + 792), v57, 0, 0, __len, &v58, 0))
    {
      if (v3)
      {
        *&v56[0] = 0;
        sub_10001EAF0(__len | 0xA, 2 * LOWORD(__len[1]), (a1 + 1036), v56, 0x100uLL);
        *(a1 + 1036 + *&v56[0]) = 0;
      }

      else
      {
        v52 = BYTE6(__len[1]);
        memmove((a1 + 1036), (__len | 0xF), BYTE6(__len[1]));
        *(a1 + 1036 + v52) = 0;
      }

      v53 = *(a1 + 888);
      v56[0] = *(a1 + 872);
      v56[1] = v53;
      v54 = *(a1 + 920);
      v56[2] = *(a1 + 904);
      v56[3] = v54;
      sub_10002D0A4(v56, 121, v46, v47, v48, v49, v50, v51, a1 + 1036);
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_3:
  if (v59[0])
  {
    sub_100004D50(v4, v59, 0);
  }

  return v7;
}

uint64_t sub_100023F38(uint64_t a1)
{
  sub_100020B5C();
  v3 = v2;
  *(a1 + 48) = 6;
  sub_10001F344((a1 + 56));
  v4 = *(a1 + 776);
  v27[0] = 0;
  if (v3)
  {
    memset(&v27[1], 0, 24);
    v5 = sub_10001F734(v27);
    if (v5 || (v28 = 0, v6 = v27[0], v7 = *(a1 + 800), v9 = *(v27[0] + 10), v8 = *(v27[0] + 11), v10 = *(v27[0] + 8), *(v7 + 52) = *(v27[0] + 9), *(v7 + 68) = v9, *(v7 + 84) = v8, *(v7 + 36) = v10, (v5 = sub_1000233C8(a1, 6, 0, 0, (v7 + 36), &v28)) != 0))
    {
      LOWORD(v3) = v5;
    }

    else
    {
      if (*(v4 + 40) >= dword_10004848C)
      {
        v12 = dword_10004848C;
      }

      else
      {
        v12 = *(v4 + 40);
      }

      sub_1000052D4(v7, v12);
      v19 = *(v6 + 31);
      if (v19 == v28)
      {
        v20 = *(v6 + 10) * v19;
        *(v7 + 112) = *(v6 + 14);
        *(v7 + 120) = v20;
        v21 = *(a1 + 816);
        v22 = *(v6 + 28);
        v23 = *(v6 + 29);
        v24 = *(v6 + 30);
        *(v21 + 84) = *(v6 + 31);
        *(v21 + 68) = v24;
        *(v21 + 52) = v23;
        *(v21 + 36) = v22;
        v25 = sub_1000233C8(a1, 7, 0, 0, (v21 + 36), &v28);
        LOWORD(v3) = v25;
        if (!v25)
        {
          v26 = *(v6 + 10) * *(v6 + 111);
          *(v21 + 112) = *(v6 + 54);
          *(v21 + 120) = v26;
        }
      }

      else
      {
        sub_10001ECB0(a1, 4294966753, v13, v14, v15, v16, v17, v18);
        LOWORD(v3) = -543;
      }
    }

    if (v27[0])
    {
      sub_100004D50(v4, v27, 0);
    }
  }

  return v3;
}

uint64_t sub_1000240B8(uint64_t a1)
{
  v97 = 0;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  memset(v94, 0, 512);
  v130 = 0u;
  memset(v131, 0, sizeof(v131));
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  memset(v99, 0, 512);
  memset(__dst, 0, sizeof(__dst));
  memset(v98, 0, 512);
  sub_100020B5C();
  v3 = v2;
  v4 = *(a1 + 776);
  *(a1 + 48) = 4;
  *(a1 + 56) = 0;
  sub_10001F16C(1, 0, v2, v94);
  v5 = sub_1000127A0(*(a1 + 792), v94, 0, v95, v98, &v97, &v96);
  *(a1 + 56) = v96;
  if (v5 != 32)
  {
    sub_10001ECB0(a1, 4294966768, v6, v7, v8, v9, v10, v11);
    LOWORD(v20) = -528;
    return v20;
  }

  v86 = v4;
  v12 = 0;
  v88 = 0;
  v87 = 0;
  *(a1 + 80) = 1;
  v85 = (a1 + 872);
  **(a1 + 88) = 1;
  v13 = (a1 + 632);
  v14 = -32767;
  v15 = 1;
  while (1)
  {
    v16 = (*(a1 + 88) + 544 * (v15 - 1));
    v100 = 0;
    v17 = sub_100012A1C(*(a1 + 792), v14, v95, &v100, &v97, &v96, v10, v11);
    *(a1 + 56) = v96;
    if (v17)
    {
      break;
    }

    ++*(a1 + 736);
    v19 = *(v95 + 2);
    if (*(v95 + 2) != *v16)
    {
      goto LABEL_11;
    }

    ++*(v16 + 1);
    LOWORD(v20) = 123;
    if (v100 <= 0xFFu)
    {
      if (v100 == 1)
      {
        v20 = sub_100004B1C(a1);
        if (v20)
        {
          return v20;
        }

        v23 = v88;
        *(a1 + 48) = *(&v101 + 6);
        *(a1 + 100) = v100;
        sub_10001F0E8(v95 + 6, (a1 + 108), v3);
        v24 = *v16;
        v25 = *(a1 + 80);
        if (*v16 >= 2u)
        {
          *(a1 + 80) = ++v25;
          ++v87;
        }

        if (v24 == 2)
        {
          v23 = v88 + 1;
        }

        v26 = *(a1 + 96);
        v27 = *(a1 + 88);
        v84 = v12;
        if (v26 < v25)
        {
          v28 = malloc_type_realloc(v27, 544 * (v26 + 100), 0x10000404DC0687DuLL);
          v35 = *(a1 + 96);
          if (!v28)
          {
            goto LABEL_83;
          }

          v27 = v28;
          bzero(&v28[544 * v35], 0xD480uLL);
          *(a1 + 96) += 100;
          *(a1 + 88) = v27;
          v25 = *(a1 + 80);
        }

        v40 = &v27[544 * v25];
        v16 = v40 - 544;
        *(v40 - 136) = *(&v101 + 6);
        *(v40 - 135) = 1;
        *(v40 - 134) = v96;
        *(v40 - 130) = *(v95 + 2);
        sub_10001F0E8(v95 + 6, v40 - 258, v3);
        v47 = *(a1 + 80);
        v48 = *(v40 - 136);
        if (v47 >= 2)
        {
          v49 = *(a1 + 88);
          v50 = v47 - 1;
          while (v48 != *v49)
          {
            v49 += 136;
            if (!--v50)
            {
              goto LABEL_35;
            }
          }

LABEL_75:
          sub_10001ECB0(a1, 4294966758, v41, v42, v43, v44, v45, v46);
          LOWORD(v20) = -538;
          return v20;
        }

LABEL_35:
        sub_10001F16C(v48, 0, v3, v94);
        LODWORD(v88) = v23;
        if (sub_1000127A0(*(a1 + 792), v94, 0, v95, v98, &v97, &v96))
        {
          v55 = *v16;
          v56 = *(a1 + 888);
          v89 = *v85;
          v90 = v56;
          v57 = *(a1 + 920);
          v91 = *(a1 + 904);
          v92 = v57;
          sub_10002D0A4(&v89, 4294966763, v51, v52, v53, v54, v10, v11, v55);
          if (v3)
          {
            v58 = v13;
            do
            {
              v58 = *v58;
              if (!v58)
              {
                v22 = v100;
                v12 = v84;
                goto LABEL_58;
              }
            }

            while (*(v58 + 2) != *v16);
            *(v58 + 265) = 3;
            *(v58 + 534) = *(v40 - 130);
            sub_10001F0E8(v40 - 516, v58 + 269, v3);
            v59 = sub_1000127A0(*(a1 + 792), v58 + 6, 0, v95, v98, &v97, &v96);
            v14 = 0;
            if (!v59)
            {
              goto LABEL_56;
            }
          }

          LOWORD(v20) = -533;
          return v20;
        }

        v14 = 1;
LABEL_56:
        v72 = v96;
        *(v40 - 66) = v96;
        *(a1 + 56) = v72;
        v12 = v84;
        goto LABEL_67;
      }

      if (v100 != 2)
      {
        return v20;
      }

      *(a1 + 48) = *(&v101 + 6);
      v21 = 2;
      goto LABEL_17;
    }

    if (v100 != 256)
    {
      if (v100 != 512)
      {
        return v20;
      }

      *(a1 + 48) = *(&v102 + 2);
      v21 = 512;
LABEL_17:
      *(a1 + 100) = v21;
      sub_10001F0E8(v95 + 6, (a1 + 108), v3);
      ++HIDWORD(v88);
      if (*v16 == 2)
      {
        ++v12;
      }

LABEL_66:
      v14 = 1;
      goto LABEL_67;
    }

    v20 = sub_100004B1C(a1);
    if (v20)
    {
      return v20;
    }

    *(a1 + 48) = DWORD1(v101);
    *(a1 + 100) = v100;
    sub_10001F0E8(v94 + 6, (a1 + 108), v3);
    v36 = *v16;
    v37 = *(a1 + 80);
    if (*v16 < 2u)
    {
      v39 = v87;
      v38 = v88;
    }

    else
    {
      *(a1 + 80) = ++v37;
      v38 = v88;
      v39 = v87 + 1;
    }

    if (v36 == 2)
    {
      ++v38;
    }

    v60 = *(a1 + 96);
    v61 = *(a1 + 88);
    v87 = v39;
    LODWORD(v88) = v38;
    if (v60 >= v37)
    {
      v63 = v13;
      v64 = HIDWORD(v88);
    }

    else
    {
      v62 = malloc_type_realloc(v61, 544 * (v60 + 100), 0x10000404DC0687DuLL);
      v35 = *(a1 + 96);
      if (!v62)
      {
LABEL_83:
        v81 = *(a1 + 888);
        v89 = *v85;
        v90 = v81;
        v82 = *(a1 + 920);
        v91 = *(a1 + 904);
        v92 = v82;
        sub_10002D0A4(&v89, 545, v29, v30, v31, v32, v33, v34, v35);
LABEL_84:
        LOWORD(v20) = 0;
        return v20;
      }

      v61 = v62;
      v63 = v13;
      v64 = HIDWORD(v88);
      bzero(&v62[544 * v35], 0xD480uLL);
      *(a1 + 96) += 100;
      *(a1 + 88) = v61;
      v37 = *(a1 + 80);
    }

    HIDWORD(v88) = v64;
    v65 = &v61[544 * v37];
    *(v65 - 136) = DWORD1(v101);
    *(v65 - 135) = 1;
    *(v65 - 134) = v96;
    *(v65 - 130) = *(v95 + 2);
    sub_10001F0E8(v95 + 6, v65 - 258, v3);
    v66 = *(a1 + 80);
    v67 = *(v65 - 136);
    v13 = v63;
    if (v66 >= 2)
    {
      v68 = *(a1 + 88);
      v69 = v66 - 1;
      while (v67 != *v68)
      {
        v68 += 136;
        if (!--v69)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_75;
    }

LABEL_53:
    sub_10001F16C(v67, 0, v3, v94);
    v70 = sub_1000127A0(*(a1 + 792), v94, 0, v95, v98, &v97, &v96);
    if (v70)
    {
      goto LABEL_81;
    }

    v71 = v96;
    *(v65 - 66) = v96;
    *(a1 + 56) = v71;
    v14 = 1;
LABEL_67:
    v15 = *(a1 + 80);
    if (*(a1 + 80) <= 0)
    {
LABEL_68:
      if (!v3 && ((v79 = *(v86 + 114), v79 != v88) && sub_100024BAC(a1, 539, v88, v79, 0) || (v80 = *(v86 + 112), v80 != v12) && sub_100024BAC(a1, 540, v12, v80, 0)) || (v77 = *(v86 + 36), v87 != v77) && sub_100024BAC(a1, 541, v87, v77, 0) || (v78 = *(v86 + 32), HIDWORD(v88) != v78) && sub_100024BAC(a1, 542, HIDWORD(v88), v78, 0))
      {
LABEL_80:
        LOWORD(v20) = 1;
        return v20;
      }

      goto LABEL_84;
    }
  }

  v18 = v17;
  if (v17 != 32)
  {
    goto LABEL_82;
  }

  ++*(a1 + 736);
  v19 = *(v95 + 2);
LABEL_11:
  v22 = v100;
  if (v100 == 1024 || v100 == 4)
  {
    *(a1 + 48) = v19;
    *(a1 + 100) = v22;
    v14 = 1;
    *(a1 + 108) = 0;
    goto LABEL_67;
  }

LABEL_58:
  *(a1 + 48) = *v16;
  *(a1 + 100) = v22;
  sub_10001F0E8(v16 + 28, (a1 + 108), v3);
  sub_10001F0E8(v16 + 28, __dst, v3);
  sub_10001F16C(*(v16 + 6), __dst, v3, v94);
  v70 = sub_1000127A0(*(a1 + 792), v94, *(v16 + 2), v95, v99, &v97, &v96);
  if (!v70)
  {
    *(a1 + 56) = v96;
    if (v3 == 1)
    {
      v73 = DWORD1(v99[0]);
    }

    else
    {
      v73 = WORD2(v99[0]);
    }

    v74 = *(v16 + 1) - 1;
    if (v73 != v74 && sub_100024BAC(a1, 502, v74, v73, *(v16 + 6)))
    {
      goto LABEL_80;
    }

    v75 = --*(a1 + 80);
    if (v75 < 1)
    {
      goto LABEL_68;
    }

    v76 = *(a1 + 88) + 544 * (v75 - 1);
    *(a1 + 48) = *v76;
    *(a1 + 100) = v100;
    sub_10001F0E8((v76 + 28), (a1 + 108), v3);
    goto LABEL_66;
  }

LABEL_81:
  v18 = v70;
LABEL_82:
  LOWORD(v20) = sub_10001ECC0(a1, v18);
  return v20;
}

uint64_t sub_100024BAC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  sub_100020B5C();
  v11 = v10;
  v12 = *(a1 + 888);
  v32 = *(a1 + 872);
  v33 = v12;
  v13 = *(a1 + 920);
  v34 = *(a1 + 904);
  v35 = v13;
  sub_10002D0A4(&v32, a2, v14, v15, v16, v17, v18, v19, v31);
  __sprintf_chk(v37, 0, 0x20uLL, "%u", a3);
  __sprintf_chk(v36, 0, 0x20uLL, "%u", a4);
  v20 = *(a1 + 888);
  v32 = *(a1 + 872);
  v33 = v20;
  v21 = *(a1 + 920);
  v34 = *(a1 + 904);
  v35 = v21;
  sub_10002D0A4(&v32, 559, v22, v23, v24, v25, v26, v27, v37);
  v28 = 0;
  if (a2 == 502)
  {
    v28 = sub_10001F14C((a1 + 108), v11);
  }

  v29 = sub_10001F024(a1, v28);
  if (!v29)
  {
    return 1;
  }

  *(v29 + 4) = a2;
  v29[2] = a3;
  v29[3] = a4;
  *(v29 + 10) = a5;
  if (v28)
  {
    sub_10001F0E8((a1 + 108), v29 + 22, v11);
  }

  result = 0;
  *(a1 + 28) |= 0x4000u;
  return result;
}

uint64_t sub_100024D2C(uint64_t a1)
{
  memset(v32, 0, sizeof(v32));
  memset(&v31[1], 0, 24);
  sub_100020B5C();
  *(a1 + 48) = 8;
  *(a1 + 56) = 0;
  v31[0] = 0;
  v2 = *(a1 + 856);
  v3 = *(a1 + 776);
  if (v4)
  {
    v5 = sub_10001F734(v31);
    if (v5)
    {
      goto LABEL_4;
    }

    v33 = 0;
    v6 = v31[0];
    v7 = *(a1 + 808);
    v9 = *(v31[0] + 25);
    v8 = *(v31[0] + 26);
    v10 = *(v31[0] + 23);
    *(v7 + 52) = *(v31[0] + 24);
    *(v7 + 68) = v9;
    *(v7 + 84) = v8;
    *(v7 + 36) = v10;
    v5 = sub_1000233C8(a1, 8, 0, 0, (*(a1 + 808) + 36), &v33);
    if (v5)
    {
      goto LABEL_4;
    }

    v24 = *(v6 + 91);
    if (v24 != v33)
    {
      sub_10001ECB0(a1, 4294966753, v11, v12, v13, v14, v15, v16);
      v17 = -543;
      goto LABEL_19;
    }

    v25 = *(a1 + 808);
    v26 = *(v6 + 10) * v24;
    *(v25 + 112) = *(v6 + 44);
    *(v25 + 120) = v26;
    if (v24)
    {
      v5 = sub_10001EDB4(a1, v25, v32);
      if (v5 || (*(v2 + 54) = 266, *(v2 + 8) = sub_100014D5C, v27 = *&v32[18], *(v2 + 52) = *&v32[18], v28 = *(*(a1 + 808) + 120) / v27, v29 = *&v32[6], *(v2 + 56) = v28, *(v2 + 60) = v28, *(v2 + 136) |= 6u, *(v2 + 32) = *v32, *(v2 + 36) = *&v32[2], *(v2 + 40) = v29, *(v2 + 44) = *&v32[10], (v5 = sub_100023790(a1, v2)) != 0))
      {
LABEL_4:
        v17 = v5;
        goto LABEL_19;
      }

      goto LABEL_7;
    }

    *(v2 + 8) = 0;
    *(v2 + 136) = 0;
    *(v2 + 32) = 0;
    *(v2 + 36) = 0;
    *(v2 + 52) = 0;
    *(v2 + 44) = 0;
    *(v2 + 60) = 0;
    v18 = *(a1 + 776);
  }

  else
  {
    *(v2 + 8) = 0;
    *(v2 + 136) = 0;
    *(v2 + 32) = 0;
    *(v2 + 36) = 0;
    *(v2 + 52) = 0;
    *(v2 + 44) = 0;
    v18 = v3;
    *(v2 + 60) = 0;
  }

  *(v18 + 176) = 0;
LABEL_7:
  v17 = 1;
  v19 = malloc_type_calloc(1uLL, 0x20uLL, 0x1030040338E37ACuLL);
  *(v2 + 760) = v19;
  if (v19)
  {
    v20 = *(v2 + 56);
    if (v20)
    {
      v21 = (v20 + 7) >> 3;
      v17 = 1;
      v22 = malloc_type_calloc(1uLL, v21, 0x85379F53uLL);
      v23 = *(v2 + 760);
      *v23 = v22;
      if (v22)
      {
        v17 = 0;
        *(v23 + 8) = v21;
        *(v23 + 24) = *&v32[26];
      }
    }

    else
    {
      v17 = 0;
      *v19 = 0;
      v19[2] = 0;
      v19[6] = 0;
    }
  }

LABEL_19:
  if (v31[0])
  {
    sub_100004D50(v3, v31, 0);
  }

  return v17;
}

uint64_t sub_100024F9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10001EC98();
  sub_100020B5C();
  if (v7 != 1)
  {
    sub_100030978();
  }

  v41 = 0;
  v8 = *(a2 + 4);
  sub_10001EAF0(a2 + 14, 2 * *(a2 + 12), __s1, &v41, 0x80uLL);
  __s1[v41] = 0;
  if (v8 == *(a1 + 5316) && !strcmp(__s1, (a1 + 5320)))
  {
    v19 = 0;
    v15 = v6;
    v18 = v6 == 2;
  }

  else
  {
    v15 = v6;
    if (v6 == 2)
    {
      v16 = sub_100025370(a1);
      if (v16)
      {
LABEL_6:
        v17 = v16;
LABEL_28:
        if (*__s1 == 0x6C7070612E6D6F63 && v43 == 0x6D65747379732E65 && v44 == 0x746972756365532ELL && v45 == 121)
        {
          *(a1 + 5313) = 1;
        }

        *(a1 + 5314) = *a3;
        *(a1 + 5316) = v8;
        __strlcpy_chk();
        return v17;
      }

      if (v8 != *(a1 + 5316))
      {
        sub_100025408(a1);
      }

      v15 = 2;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = 1;
  }

  v40 = 0;
  v20 = *a3;
  if (*a3 == 16)
  {
    if (!v18 || !*(a2 + 8))
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v20 != 48)
    {
      if (v20 == 32)
      {
        if (v18)
        {
          if (!*(a2 + 8))
          {
            v21 = *(a3 + 6);
            v22 = *(a3 + 14);
            v37 = *(a3 + 10);
            v38 = v22;
            v39 = *(a3 + 18);
            v35 = *(a3 + 2);
            v36 = v21;
            v17 = sub_1000233C8(a1, v8, 1, __s1, &v36, &v40);
            if (!v17)
            {
              v23 = *(a3 + 1);
              v24 = v40;
              *(a1 + 5448) = a3[5];
              *(a1 + 5456) = v23;
              *(a1 + 5452) = v24;
              *(a1 + 5312) = 1;
            }

            goto LABEL_28;
          }

          goto LABEL_53;
        }

LABEL_27:
        v17 = 0;
        goto LABEL_28;
      }

      if (v15 == 1)
      {
        goto LABEL_42;
      }

LABEL_51:
      sub_10001ECB0(a1, 579, v9, v10, v11, v12, v13, v14);
      v17 = 0;
      v33 = *(a1 + 20) | 0x10;
LABEL_52:
      *(a1 + 20) = v33;
      goto LABEL_54;
    }

    if ((v19 & 1) != 0 || (*(a1 + 5314) | 0x10) != 0x30)
    {
      if (v15 != 1)
      {
        goto LABEL_51;
      }

      v25 = 1;
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v25 = 0;
      if (!v18)
      {
LABEL_23:
        if (!v25)
        {
          goto LABEL_27;
        }

LABEL_42:
        v17 = sub_100012D4C(*(a1 + 808), a2);
        v29 = *(a2 + 4);
        v30 = *a3;
        v35 = xmmword_100043460;
        v36 = *&qword_100043470;
        v37 = xmmword_100043480;
        v38 = *&off_100043490;
        sub_10002D128(&v35, 17, "%s: Deleting attribute %s for fileID %d, type = %d\n", "CheckAttributeRecord", __s1, v29, v30);
        if (v17)
        {
          v31 = *(a2 + 4);
          v32 = *a3;
          v35 = xmmword_100043460;
          v36 = *&qword_100043470;
          v37 = xmmword_100043480;
          v38 = *&off_100043490;
          sub_10002D128(&v35, 18, "%s: Error in deleting record for %s for fileID %d, type = %d\n", "CheckAttributeRecord", __s1, v31, v32);
        }

        v33 = *(a1 + 20) | 0xC000;
        goto LABEL_52;
      }
    }

    if (*(a2 + 8) == *(a1 + 5452))
    {
      v16 = sub_1000233C8(a1, v8, 1, __s1, a3 + 2, &v40);
      if (v16)
      {
        goto LABEL_6;
      }

      *(a1 + 5452) += v40;
      if (!v25)
      {
        goto LABEL_27;
      }

      goto LABEL_42;
    }
  }

LABEL_53:
  v17 = 4294966787;
  sub_10001ECB0(a1, 4294966787, v9, v10, v11, v12, v13, v14);
LABEL_54:
  if (*(a1 + 5316) != v8)
  {
    *(a1 + 5316) = 0;
  }

  return v17;
}

uint64_t sub_100025370(uint64_t a1)
{
  if (*(a1 + 5312) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 5448);
  v3 = *(a1 + 5452);
  if (v2 == v3)
  {
    v4 = *(*(a1 + 776) + 40) * v2;
    v5 = *(a1 + 5456);
    if (v5 <= v4)
    {
      result = 0;
    }

    else
    {
      result = sub_10000A834(*(a1 + 5316), (a1 + 5320), 1, v5, v4);
    }
  }

  else
  {
    result = sub_10000A5F4(*(a1 + 5316), (a1 + 5320), 1, v2, v3);
  }

  *(a1 + 5312) = 0;
  return result;
}

uint64_t sub_100025408(uint64_t result)
{
  v1 = *(result + 5316);
  if (v1)
  {
    if (v1 > 0xF || v1 == 2)
    {
      v3 = result;
      if (*(result + 5313) == 1)
      {
        result = sub_100025490(result, 12, v1, 408);
        *(v3 + 5313) = 0;
      }

      else
      {
        ++*(result + 1556);
        v4 = result + 3436;

        return sub_100021808(v4, v1);
      }
    }
  }

  return result;
}

uint64_t sub_100025490(uint64_t result, char a2, unsigned int a3, int a4)
{
  if ((a2 & 0xC) == 0)
  {
    return result;
  }

  if (a4 == 408)
  {
    if ((a2 & 4) != 0)
    {
      v5 = result + 3436;
      ++*(result + 1556);
      if ((a2 & 8) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v5 = 0;
      if ((a2 & 8) == 0)
      {
        goto LABEL_13;
      }
    }

    v6 = 1560;
    v7 = 4372;
LABEL_16:
    v8 = result + v7;
    ++*(result + v6);
    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a4 != 136)
  {
    return result;
  }

  if ((a2 & 4) != 0)
  {
    v5 = result + 1564;
    ++*(result + 1548);
    if ((a2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v5 = 0;
  if ((a2 & 8) != 0)
  {
LABEL_11:
    v6 = 1552;
    v7 = 2500;
    goto LABEL_16;
  }

LABEL_13:
  v8 = 0;
  if (v5)
  {
LABEL_17:
    result = sub_100021808(v5, a3);
  }

LABEL_18:
  if (v8)
  {

    return sub_100021808(v8, a3);
  }

  return result;
}

uint64_t sub_100025578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a1 + 776) + 176))
  {
    v9 = *(a1 + 888);
    v13[0] = *(a1 + 872);
    v13[1] = v9;
    v10 = *(a1 + 920);
    v13[2] = *(a1 + 904);
    v13[3] = v10;
    sub_10002D0A4(v13, 204, a3, a4, a5, a6, a7, a8, *&v13[0]);
    *(a1 + 48) = 8;
    sub_10001F344((a1 + 56));
    LOWORD(v11) = sub_100027990(a1, 408, sub_100024F9C);
    if (!v11)
    {
      LOWORD(v11) = sub_100025370(a1);
      if (!v11)
      {
        sub_100025408(a1);
        if (sub_100025694(a1, 4) || sub_100025694(a1, 8))
        {
          LOWORD(v11) = 1;
        }

        else
        {
          LOWORD(v11) = sub_100028890(a1, 408);
          if (!v11)
          {
            LOWORD(v11) = sub_100028AB8(a1, 408, (a1 + 20));
            if (!v11)
            {
              v11 = sub_100028C70(a1, 408);
              if (!v11)
              {
                LOWORD(v11) = sub_1000290D8(a1, 408);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    LOWORD(v11) = 0;
  }

  return v11;
}

uint64_t sub_100025694(uint64_t a1, char a2)
{
  if ((a2 & 4) != 0)
  {
    result = sub_100021BFC(a1 + 1564, a1 + 3436);
    if (!result)
    {
      return result;
    }

    v10 = *(a1 + 888);
    v38 = *(a1 + 872);
    v39 = v10;
    v11 = *(a1 + 920);
    v40 = *(a1 + 904);
    v41 = v11;
    sub_10002D0A4(&v38, 575, v4, v5, v6, v7, v8, v9, v37);
    __sprintf_chk(v43, 0, 0x20uLL, "%u", *(a1 + 1548));
    __sprintf_chk(v42, 0, 0x20uLL, "%u", *(a1 + 1556));
    v12 = *(a1 + 888);
    v38 = *(a1 + 872);
    v39 = v12;
    v13 = *(a1 + 920);
    v40 = *(a1 + 904);
    v41 = v13;
    sub_10002D0A4(&v38, 559, v14, v15, v16, v17, v18, v19, v42);
    v20 = 64;
    goto LABEL_8;
  }

  if ((a2 & 8) == 0)
  {
    v38 = xmmword_100043460;
    v39 = *&qword_100043470;
    v40 = xmmword_100043480;
    v41 = *&off_100043490;
    sub_10002D0E8(&v38, 2, "%s: Incorrect BitMask found.\n", "CompareXattrPrimeBuckets");
    return 1;
  }

  result = sub_100021BFC(a1 + 2500, a1 + 4372);
  if (result)
  {
    v27 = *(a1 + 888);
    v38 = *(a1 + 872);
    v39 = v27;
    v28 = *(a1 + 920);
    v40 = *(a1 + 904);
    v41 = v28;
    sub_10002D0A4(&v38, 576, v21, v22, v23, v24, v25, v26, v37);
    v20 = 32;
    __sprintf_chk(v43, 0, 0x20uLL, "%u", *(a1 + 1552));
    __sprintf_chk(v42, 0, 0x20uLL, "%u", *(a1 + 1560));
    v29 = *(a1 + 888);
    v38 = *(a1 + 872);
    v39 = v29;
    v30 = *(a1 + 920);
    v40 = *(a1 + 904);
    v41 = v30;
    sub_10002D0A4(&v38, 559, v31, v32, v33, v34, v35, v36, v42);
LABEL_8:
    result = 0;
    *(a1 + 20) |= v20;
  }

  return result;
}

uint64_t sub_100025890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v13 = (a1 + 872);
  v14 = *(a1 + 888);
  v27 = *(a1 + 872);
  v28 = v14;
  v15 = *(a1 + 920);
  v29 = *(a1 + 904);
  v30 = v15;
  sub_10002D0A4(&v27, a2, a3, a4, a5, a6, a7, a8, a5);
  __sprintf_chk(v32, 0, 0x20uLL, "%#x", v10);
  __sprintf_chk(v31, 0, 0x20uLL, "%#x", v9);
  v16 = v13[1];
  v27 = *v13;
  v28 = v16;
  v17 = v13[3];
  v29 = v13[2];
  v30 = v17;
  sub_10002D0A4(&v27, 559, v18, v19, v20, v21, v22, v23, v32);
  v24 = sub_10001F024(a1, 0);
  if (!v24)
  {
    return 1;
  }

  v25 = v24;
  result = 0;
  *(v25 + 4) = v11;
  v25[2] = v10;
  v25[3] = v9;
  *(v25 + 10) = v8;
  return result;
}

uint64_t sub_1000259C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v13 = (a1 + 872);
  v14 = *(a1 + 888);
  v27 = *(a1 + 872);
  v28 = v14;
  v15 = *(a1 + 920);
  v29 = *(a1 + 904);
  v30 = v15;
  sub_10002D0A4(&v27, a2, a3, a4, a5, a6, a7, a8, a5);
  __sprintf_chk(v32, 0, 0x20uLL, "%u", v10);
  __sprintf_chk(v31, 0, 0x20uLL, "%u", v9);
  v16 = v13[1];
  v27 = *v13;
  v28 = v16;
  v17 = v13[3];
  v29 = v13[2];
  v30 = v17;
  sub_10002D0A4(&v27, 559, v18, v19, v20, v21, v22, v23, v32);
  v24 = sub_10001F024(a1, 0);
  if (!v24)
  {
    return 1;
  }

  v25 = v24;
  result = 0;
  *(v25 + 4) = v11;
  v25[2] = v10;
  v25[3] = v9;
  *(v25 + 10) = v8;
  return result;
}

uint64_t sub_100025B00(uint64_t a1)
{
  v85 = 0;
  v84 = 0;
  memset(v86, 0, sizeof(v86));
  memset(v83, 0, sizeof(v83));
  memset(v82, 0, sizeof(v82));
  v2 = *(a1 + 776);
  memset(v81, 0, sizeof(v81));
  sub_100020B5C();
  v4 = v3;
  sub_10001F308();
  v6 = v5;
  v9 = sub_100012A1C(*(a1 + 792), -32767, v83, v86, &v85, &v84, v7, v8);
  *(a1 + 56) = v84;
  *(a1 + 48) = 4;
  if (v9)
  {
    return sub_10001ECC0(a1, v9);
  }

  *(a1 + 48) = -1;
  sub_10001F548((a1 + 56));
  v11 = sub_10001F43C(v82);
  v12 = *v6;
  if (v4)
  {
    if ((v12 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (v11)
    {
      goto LABEL_8;
    }

    *(a1 + 48) = 1;
    sub_10001F6C4((a1 + 56));
    v18 = sub_10001F5B8(v81);
    v19 = *v6;
    if (v4)
    {
      if ((v19 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((v19 & 8) == 0)
    {
LABEL_18:
      *(a1 + 18) |= 0x8000u;
      sub_100020BAC();
      if (v24)
      {
        sub_10001EA44(a1, 554, 1, 0, v20, v21, v22, v23);
        if (sub_10002D444() >= 3)
        {
          v77 = xmmword_100043460;
          v78 = *&qword_100043470;
          v79 = xmmword_100043480;
          v80 = *&off_100043490;
          sub_10002D0E8(&v77, 2, "\tinvalid primary MDB at %qd result %d \n");
        }
      }

      else
      {
        sub_10001EA44(a1, 555, 1, 0, v20, v21, v22, v23);
        if (sub_10002D444() >= 3)
        {
          v77 = xmmword_100043460;
          v78 = *&qword_100043470;
          v79 = xmmword_100043480;
          v80 = *&off_100043490;
          sub_10002D0E8(&v77, 2, "\tinvalid primary VHB at %qd result %d \n");
        }
      }

      goto LABEL_23;
    }

    if (v18)
    {
      goto LABEL_18;
    }

    sub_100020C9C();
    if (v30)
    {
      if ((~*v6 & 0x18) != 0)
      {
        *(a1 + 18) |= 0x1000u;
        sub_10001EA44(a1, 554, 0, 0, v26, v27, v28, v29);
        if (sub_10002D444() >= 3)
        {
          v77 = xmmword_100043460;
          v78 = *&qword_100043470;
          v79 = xmmword_100043480;
          v80 = *&off_100043490;
          sub_10002D0E8(&v77, 2, "\tinvalid wrapper MDB \n");
        }
      }
    }

    v31 = *&v82[0];
    v32 = *&v81[0];
    v33 = *(v2 + 40);
    v34 = *(v2 + 44);
    v35 = (v34 >> 2) * v33;
    if (!v4)
    {
      *(v2 + 16) = *(*&v82[0] + 2);
      *(v2 + 20) = *(v32 + 6);
      v38 = *(v32 + 10);
      if ((v38 & 0x7F) != 0)
      {
        v38 = 256;
      }

      *(v2 + 4) = v38;
      v39 = *(v32 + 16);
      if (v34 <= v39)
      {
        v39 = 0;
      }

      *(v2 + 52) = v39;
      v40 = *(v32 + 24);
      if (!v40 || v35 < v40 || v40 % v33)
      {
        v40 = *(v31 + 24);
        if (!v40 || v35 < v40 || v40 % v33)
        {
          LODWORD(v40) = 4 * v33;
        }
      }

      if (v40 <= 0x100000)
      {
        v33 = v40;
      }

      *(v2 + 60) = v33;
      v41 = *(v32 + 30);
      v42 = *(v2 + 64);
      if (v41 > v42 && v41 <= v42 + 4096)
      {
        *(v2 + 64) = v41;
      }

      if (!sub_1000292B0(a1, (v2 + 124), 0) && !sub_1000290AC((v32 + 36), (v2 + 124), *(v2 + 124) + 1))
      {
        v49 = *(v32 + 36);
        v50 = *(v32 + 52);
        *(v2 + 148) = *(v32 + 60);
        *(v2 + 140) = v50;
        *(v2 + 124) = v49;
      }

      *(v2 + 24) = *(v32 + 64);
      *(v2 + 120) = *(v32 + 68);
      *(v2 + 68) = *(v32 + 70);
      v51 = *(v32 + 74);
      v52 = *(v2 + 40);
      if (v51 % v52 || v35 < v51)
      {
        v53 = *(v31 + 74);
        if (v53 % v52 || (LODWORD(v51) = *(v31 + 74), v35 < v53))
        {
          LODWORD(v51) = v52 * *(v31 + 136);
        }
      }

      *(*(v2 + 160) + 104) = v51;
      v54 = *(v32 + 78);
      if (v54 % v52 || v35 < v54)
      {
        v55 = *(v31 + 78);
        if (v55 % v52 || (LODWORD(v54) = *(v31 + 78), v35 < v55))
        {
          LODWORD(v54) = v52 * *(v31 + 152);
        }
      }

      *(*(v2 + 168) + 104) = v54;
      v56 = *(v32 + 108);
      *(v2 + 80) = *(v32 + 92);
      *(v2 + 96) = v56;
      v10 = sub_100029308(a1, v32, v43, v44, v45, v46, v47, v48);
      goto LABEL_24;
    }

    *(v2 + 16) = *(*&v82[0] + 16);
    *(v2 + 20) = *(v32 + 20);
    *(v2 + 28) = *(v32 + 28);
    *(v2 + 4) = *(v32 + 4);
    if (*(v32 + 52) >= v34)
    {
      v36 = 0;
    }

    else
    {
      v36 = *(v32 + 52);
    }

    *(v2 + 52) = v36;
    v37 = *(v32 + 56);
    if ((v37 - 1) >> 20 || v37 % v33)
    {
      v37 = *(v31 + 56);
      if ((v37 - 1) >> 20 || v37 % v33)
      {
        if (v33 >= 0x40001)
        {
          *(v2 + 56) = v33;
          v37 = v33;
          if (v33 <= 0x100000)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v37 = 4 * v33;
        }
      }
    }

    *(v2 + 56) = v37;
LABEL_75:
    v57 = *(v32 + 60);
    if (((v57 - 1) >> 20 || v57 % v33) && ((v57 = *(v31 + 60), (v57 - 1) >> 20) || v57 % v33))
    {
      if (v33 >= 0x40001)
      {
        *(v2 + 60) = v33;
        if (v33 <= 0x100000)
        {
LABEL_84:
          v58 = *(v32 + 64);
          if (v58 > *(v2 + 64))
          {
            *(v2 + 64) = v58;
          }

          sub_1000292B0(a1, v83 + 3, v4);
          *(v2 + 24) = *(v32 + 24);
          *(v2 + 68) = *(v32 + 68);
          v65 = *(v32 + 200);
          v66 = *(v2 + 40);
          if (v65 % v66 || v35 < v65)
          {
            v67 = *(v31 + 200);
            if (v67 % v66 || (LODWORD(v65) = *(v31 + 200), v35 < v67))
            {
              LODWORD(v65) = *(v31 + 212) * v66;
            }
          }

          *(*(v2 + 160) + 104) = v65;
          v68 = *(v32 + 280);
          if (v68 % v66 || v35 < v68)
          {
            v69 = *(v31 + 280);
            if (v69 % v66 || (LODWORD(v68) = *(v31 + 280), v35 < v69))
            {
              LODWORD(v68) = *(v31 + 292) * v66;
            }
          }

          v70 = *(v2 + 168);
          *(v70 + 104) = v68;
          v71 = *(v32 + 120);
          if (v71 % v66 || v35 < v71)
          {
            v72 = *(v31 + 120);
            if (v72 % v66 || (LODWORD(v71) = *(v31 + 120), v35 < v72))
            {
              LODWORD(v71) = *(v31 + 132) * v66;
            }
          }

          *(*(v2 + 152) + 104) = v71;
          v73 = *(v2 + 176);
          if (v73)
          {
            v74 = *(v32 + 360);
            if (!v74 || v74 % v66 || v35 < v74)
            {
              v75 = *(v31 + 360);
              if (!v75 || v75 % v66 || (LODWORD(v74) = *(v31 + 360), v35 < v75))
              {
                LODWORD(v74) = *(v70 + 104);
                if (!v74)
                {
                  LODWORD(v74) = *(v31 + 372) * v66;
                }
              }
            }

            *(v73 + 104) = v74;
          }

          v76 = *(v32 + 96);
          *(v2 + 80) = *(v32 + 80);
          *(v2 + 96) = v76;
          v10 = sub_100029AA0(a1, v32, v59, v60, v61, v62, v63, v64);
          sub_100020CE8(a1);
          goto LABEL_24;
        }
      }

      else
      {
        v33 *= 4;
      }
    }

    else
    {
      v33 = v57;
    }

    *(v2 + 60) = v33;
    goto LABEL_84;
  }

  if ((v12 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 18) |= 0x8000u;
  sub_100020BAC();
  if (v17)
  {
    sub_10001EA44(a1, 554, 0, 0, v13, v14, v15, v16);
    if (sub_10002D444() >= 3)
    {
      v77 = xmmword_100043460;
      v78 = *&qword_100043470;
      v79 = xmmword_100043480;
      v80 = *&off_100043490;
      sub_10002D0E8(&v77, 2, "\tinvalid alternate MDB at %qd result %d \n");
    }
  }

  else
  {
    sub_10001EA44(a1, 555, 0, 0, v13, v14, v15, v16);
    if (sub_10002D444() >= 3)
    {
      v77 = xmmword_100043460;
      v78 = *&qword_100043470;
      v79 = xmmword_100043480;
      v80 = *&off_100043490;
      sub_10002D0E8(&v77, 2, "\tinvalid alternate VHB at %qd result %d \n");
    }
  }

LABEL_23:
  v10 = 0;
LABEL_24:
  if (*&v81[0])
  {
    sub_100004D50(v2, v81, 0);
  }

  if (*&v82[0])
  {
    sub_100004D50(v2, v82, 0);
  }

  return v10;
}

uint64_t sub_100026320(uint64_t a1)
{
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  memset(v39, 0, sizeof(v39));
  v36 = 0;
  v2 = *(a1 + 776);
  sub_10001F308();
  v4 = v3;
  sub_100020B5C();
  v6 = v5;
  *(a1 + 48) = 4;
  *(a1 + 56) = 0;
  if (sub_100012A1C(*(a1 + 792), -32767, v37, v39, &v36, &v38, v7, v8))
  {
    sub_10001ECB0(a1, 4294966744, v9, v10, v11, v12, v13, v14);
    LOWORD(v15) = -552;
    return v15;
  }

  if (!v6)
  {
    *(v2 + 124) = *(v37 + 6);
    *(v2 + 140) = *(&v37[1] + 6);
    *(v2 + 148) = *(&v37[1] + 14);
    *(a1 + 56) = v38;
    v16 = (a1 + 108);
    v17 = 0;
    goto LABEL_16;
  }

  if (*(v4 + 16) == 3)
  {
    strcpy((v2 + 124), "\r Pure HFS Plus");
LABEL_15:
    *(a1 + 56) = v38;
    v16 = (a1 + 108);
    v17 = v6;
LABEL_16:
    sub_10001F0E8(v37 + 6, v16, v17);
    if ((LOWORD(v39[0]) == 256 || LOWORD(v39[0]) == 1) && (LOWORD(v39[0]) != 1 ? (v21 = &v39[1] + 14) : (v21 = &v39[3] + 8), (v22 = *v21, (v22 & 0x1000) != 0) && (sub_100020B5C(), v24 = v23, sub_10001ECB0(a1, 551, v25, v26, v27, v28, v29, v30), v31 = sub_10001F14C((a1 + 108), v24), (v32 = sub_10001F024(a1, v31)) != 0)))
    {
      v33 = v32;
      sub_10001F0E8((a1 + 108), v32 + 22, v24);
      LOWORD(v15) = 0;
      *(v33 + 4) = 551;
      v33[2] = v22 & 0xFFFFEFFF;
      v33[3] = v22;
      *(v33 + 8) = 4096;
      *(v33 + 10) = 1;
      *(a1 + 28) |= 0x400u;
    }

    else
    {
      LOWORD(v15) = 0;
    }

    return v15;
  }

  memset(v35, 0, sizeof(v35));
  if ((*v4 & 8) != 0)
  {
    v18 = sub_10001F888(v35);
  }

  else
  {
    v18 = sub_10001F7EC(v35);
  }

  v15 = v18;
  if (!v18)
  {
    v19 = *(*&v35[0] + 60);
    v20 = *(*&v35[0] + 52);
    *(v2 + 124) = *(*&v35[0] + 36);
    *(v2 + 140) = v20;
    *(v2 + 148) = v19;
  }

  if (*&v35[0])
  {
    sub_100004D50(v2, v35, 0);
  }

  if (!v15)
  {
    goto LABEL_15;
  }

  return v15;
}

uint64_t sub_1000265FC(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (*a1 == 18475)
  {
    v8 = *(a1 + 192);
  }

  else
  {
    v8 = *(a1 + 118) << 9;
  }

  v9 = *(a1 + 40);
  v10 = sub_10002D2D0();
  v11 = *(a1 + 40);
  result = sub_10002D2D0();
  v13 = dword_100043440;
  if (dword_100043440 >= 1)
  {
    v14 = 0;
    v15 = (v8 + v9 * a2) / v10;
    v16 = (v11 * a3) / result + v15;
    v17 = qword_100043448;
    do
    {
      v18 = *(v17 + 8 * v14);
      if (v18 >= v15 && v18 < v16)
      {
        v20 = dword_100043450;
        result = qword_100043458;
        HIDWORD(v21) = -286331153 * dword_100043450 + 143165576;
        LODWORD(v21) = HIDWORD(v21);
        if ((v21 >> 1) <= 0x8888888)
        {
          result = malloc_type_realloc(qword_100043458, 16 * dword_100043450 + 480, 0x1000040451B5BE8uLL);
          if (!result)
          {
            v23[0] = xmmword_100043460;
            v23[1] = *&qword_100043470;
            v23[2] = xmmword_100043480;
            v23[3] = *&off_100043490;
            return sub_10002D0E8(v23, 6, "CheckPhysicalMatch: Out of memory!\n");
          }

          v17 = qword_100043448;
          qword_100043458 = result;
          v20 = dword_100043450;
        }

        v22 = result + 16 * v20;
        *v22 = v18;
        *(v22 + 8) = a4;
        ++dword_100043450;
        v13 = dword_100043440;
      }

      ++v14;
    }

    while (v14 < v13);
  }

  return result;
}

void sub_100026794(uint64_t a1, double a2)
{
  v14 = __chkstk_darwin(a1, a2);
  qsort(qword_100043458, dword_100043450, 0x10uLL, sub_100026AD8);
  if (dword_100043450 >= 1)
  {
    v2 = 0;
    while (1)
    {
      v3 = *(qword_100043458 + 16 * v2);
      v20 = xmmword_100043460;
      v21 = *&qword_100043470;
      v22 = xmmword_100043480;
      v23 = *&off_100043490;
      sub_10002D0E8(&v20, 2, "block %llu:\t", v3);
      v4 = *(qword_100043458 + 16 * v2 + 8);
      v19 = 4096;
      if (v4 > 0xF)
      {
        v5 = sub_100016CD8(v14, v4, &v20, &v19, 0, 0, 0);
        if (v5)
        {
          v15 = xmmword_100043460;
          v16 = *&qword_100043470;
          v17 = xmmword_100043480;
          v18 = *&off_100043490;
          sub_10002D0E8(&v15, 2, "error %d getting path for id=%u\n", v5, v4);
        }

        v15 = xmmword_100043460;
        v16 = *&qword_100043470;
        v17 = xmmword_100043480;
        v18 = *&off_100043490;
        sub_10002D0E8(&v15, 2, "ROOT_OF_VOLUME%s (file id=%u)\n");
        goto LABEL_11;
      }

      if (v4 > 5)
      {
        if (v4 == 6)
        {
          v20 = xmmword_100043460;
          v21 = *&qword_100043470;
          v22 = xmmword_100043480;
          v23 = *&off_100043490;
          sub_10002D0E8(&v20, 2, "$Allocation_Bitmap_File\n");
          goto LABEL_11;
        }

        if (v4 != 8)
        {
          goto LABEL_22;
        }

        v20 = xmmword_100043460;
        v21 = *&qword_100043470;
        v22 = xmmword_100043480;
        v23 = *&off_100043490;
        sub_10002D0E8(&v20, 2, "$Attributes_File\n", v12, v13);
      }

      else
      {
        if (v4 == 3)
        {
          v20 = xmmword_100043460;
          v21 = *&qword_100043470;
          v22 = xmmword_100043480;
          v23 = *&off_100043490;
          sub_10002D0E8(&v20, 2, "$Extents_Overflow_File\n", v12, v13);
          goto LABEL_11;
        }

        if (v4 != 4)
        {
LABEL_22:
          v20 = xmmword_100043460;
          v21 = *&qword_100043470;
          v22 = xmmword_100043480;
          v23 = *&off_100043490;
          sub_10002D0E8(&v20, 2, "$File_ID_%d\n");
          goto LABEL_11;
        }

        v20 = xmmword_100043460;
        v21 = *&qword_100043470;
        v22 = xmmword_100043480;
        v23 = *&off_100043490;
        sub_10002D0E8(&v20, 2, "$Catalog_File\n", v12, v13);
      }

LABEL_11:
      v6 = dword_100043440;
      v7 = dword_100043440 - 1;
      if (dword_100043440 >= 1)
      {
        v8 = dword_100043440;
        v9 = qword_100043448;
        while (*v9 != v3)
        {
          ++v9;
          if (!--v8)
          {
            goto LABEL_17;
          }
        }

        --dword_100043440;
        *v9 = *(qword_100043448 + 8 * v7);
        --v6;
      }

LABEL_17:
      if (++v2 >= dword_100043450)
      {
        goto LABEL_26;
      }
    }
  }

  v6 = dword_100043440;
LABEL_26:
  if (v6 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(qword_100043448 + 8 * v10);
      v20 = xmmword_100043460;
      v21 = *&qword_100043470;
      v22 = xmmword_100043480;
      v23 = *&off_100043490;
      sub_10002D0E8(&v20, 2, "block %llu:\t*** NO MATCH ***\n", v11);
      ++v10;
    }

    while (v10 < dword_100043440);
  }
}

uint64_t sub_100026AD8(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = v3 >= v4;
  v6 = v3 > v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100026B18(uint64_t a1, int a2, char *__s, int a4, int a5, int a6)
{
  if (a6 == 1)
  {
    if (!__s)
    {
      sub_1000309A4();
    }

    v12 = strlen(__s);
    v13 = malloc_type_malloc(v12 + 1, 0xC595DF52uLL);
    if (!v13)
    {
      return -108;
    }

    v14 = v13;
    strlcpy(v13, __s, v12 + 1);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 656);
  if (v15)
  {
    v16 = **v15;
    if (v16)
    {
      v17 = *v15 + 16;
      while (*(v17 - 8) != a2 || *(v17 - 4) != a4 || *v17 != a5 || *(v17 + 16) != a6)
      {
        v17 += 32;
        if (!--v16)
        {
          goto LABEL_14;
        }
      }

      v22 = *(v17 + 8);
      if (v14)
      {
        if (v22 && !strcmp(v14, v22))
        {
          return 0;
        }
      }

      else if (!v22)
      {
        return 0;
      }
    }

LABEL_14:
    v18 = sub_10001E95C(v15);
    sub_10001E968(v15, v18 + 32);
  }

  else
  {
    v15 = sub_10001E898(40);
    *(a1 + 656) = v15;
  }

  v19 = 0;
  v20 = *v15 + 32 * **v15;
  *(v20 + 8) = a2;
  *(v20 + 12) = a4;
  *(v20 + 16) = a5;
  *(v20 + 20) = 0;
  *(v20 + 24) = v14;
  *(v20 + 32) = a6;
  *(v20 + 33) = 0;
  *(v20 + 36) = 0;
  *(a1 + 18) |= 0x800u;
  ++**v15;
  return v19;
}

uint64_t sub_100026CB8(uint64_t result, char a2, int a3, int a4, uint64_t a5)
{
  if (result)
  {
    *a5 = 10;
    *(a5 + 2) = a2;
    *(a5 + 3) = 0;
    *(a5 + 4) = a3;
    *(a5 + 8) = a4;
  }

  else
  {
    *a5 = 7;
    *(a5 + 1) = a2;
    *(a5 + 2) = a3;
    *(a5 + 6) = a4;
  }

  return result;
}

uint64_t sub_100026CEC(void *a1)
{
  v115 = 0;
  v114 = 0;
  v120 = 0u;
  memset(v121, 0, sizeof(v121));
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  memset(v113, 0, 512);
  memset(v112, 0, sizeof(v112));
  v111 = 0;
  v110 = 0;
  v109 = 0;
  memset(v108, 0, sizeof(v108));
  memset(v107, 0, 268);
  v106 = 0;
  v2 = a1[97];
  sub_100020B5C();
  v6 = v5;
  if (v5)
  {
    v7 = v2[19];
    if (v7)
    {
      v10 = *v7;
      v9 = v7 + 10;
      v8 = v10;
      v11 = 8;
      do
      {
        v12 = *(v9 - 1);
        if (!v12)
        {
          break;
        }

        v13 = *v9;
        v9 += 2;
        sub_1000276E0(a1, v8, 0, v12, v13, 0);
        --v11;
      }

      while (v11);
    }

    v14 = v2[20];
    if (v14)
    {
      v17 = *v14;
      v16 = v14 + 10;
      v15 = v17;
      v18 = 8;
      do
      {
        v19 = *(v16 - 1);
        if (!v19)
        {
          break;
        }

        v20 = *v16;
        v16 += 2;
        sub_1000276E0(a1, v15, 0, v19, v20, 0);
        --v18;
      }

      while (v18);
    }

    v21 = v2[21];
    if (v21)
    {
      v24 = *v21;
      v23 = v21 + 10;
      v22 = v24;
      v25 = 8;
      do
      {
        v26 = *(v23 - 1);
        if (!v26)
        {
          break;
        }

        v27 = *v23;
        v23 += 2;
        sub_1000276E0(a1, v22, 0, v26, v27, 0);
        --v25;
      }

      while (v25);
    }

    v28 = v2[22];
    if (v28)
    {
      v31 = *v28;
      v30 = v28 + 10;
      v29 = v31;
      v32 = 8;
      do
      {
        v33 = *(v30 - 1);
        if (!v33)
        {
          break;
        }

        v34 = *v30;
        v30 += 2;
        sub_1000276E0(a1, v29, 0, v33, v34, 0);
        --v32;
      }

      while (v32);
    }

    v35 = v2[23];
    if (v35)
    {
      v38 = *v35;
      v37 = v35 + 10;
      v36 = v38;
      v39 = 8;
      do
      {
        v40 = *(v37 - 1);
        if (!v40)
        {
          break;
        }

        v41 = *v37;
        v37 += 2;
        sub_1000276E0(a1, v36, 0, v40, v41, 0);
        --v39;
      }

      while (v39);
    }
  }

  else
  {
    v42 = v2[20];
    if (v42)
    {
      v45 = *v42;
      v44 = v42 + 13;
      v43 = v45;
      v46 = 3;
      do
      {
        v47 = *(v44 - 1);
        if (!*(v44 - 1))
        {
          break;
        }

        v48 = *v44;
        v44 += 2;
        sub_1000276E0(a1, v43, 0, v47, v48, 0);
        --v46;
      }

      while (v46);
    }

    v49 = v2[21];
    if (v49)
    {
      v52 = *v49;
      v51 = v49 + 13;
      v50 = v52;
      v53 = 3;
      do
      {
        v54 = *(v51 - 1);
        if (!*(v51 - 1))
        {
          break;
        }

        v55 = *v51;
        v51 += 2;
        sub_1000276E0(a1, v50, 0, v54, v55, 0);
        --v53;
      }

      while (v53);
    }
  }

  if (!sub_100012A1C(a1[99], -32767, v113, &v117, &v115, &v114, v3, v4))
  {
    do
    {
      if (v117 == 512 || v117 == 2)
      {
        if (v6)
        {
          v59 = DWORD2(v117);
          v60 = &v121[2] + 3;
          v61 = 8;
          do
          {
            v62 = *(v60 - 1);
            if (!v62)
            {
              break;
            }

            v63 = *v60;
            v60 += 2;
            sub_1000276E0(a1, v59, 0, v62, v63, 0);
            --v61;
          }

          while (v61);
          v64 = DWORD2(v117);
          v65 = &v121[7] + 3;
          v66 = 8;
          do
          {
            v67 = *(v65 - 1);
            if (!v67)
            {
              break;
            }

            v68 = *v65;
            v65 += 2;
            sub_1000276E0(a1, v64, 0, v67, v68, 255);
            --v66;
          }

          while (v66);
        }

        else
        {
          v69 = DWORD1(v118);
          v70 = v121 + 6;
          v71 = 3;
          do
          {
            v72 = *(v70 - 1);
            if (!*(v70 - 1))
            {
              break;
            }

            v73 = *v70;
            v70 += 2;
            sub_1000276E0(a1, v69, 0, v72, v73, 0);
            --v71;
          }

          while (v71);
          v74 = DWORD1(v118);
          v75 = &v121[1] + 4;
          v76 = 3;
          do
          {
            v77 = *(v75 - 1);
            if (!*(v75 - 1))
            {
              break;
            }

            v78 = *v75;
            v75 += 2;
            sub_1000276E0(a1, v74, 0, v77, v78, 255);
            --v76;
          }

          while (v76);
        }
      }
    }

    while (!sub_100012A1C(a1[99], 1, v113, &v117, &v115, &v114, v56, v57));
  }

  for (LODWORD(result) = sub_100012A1C(a1[98], -32767, &v110, v112, &v115, &v114, v56, v57); !result; LODWORD(result) = sub_100012A1C(a1[98], 1, &v110, v112, &v115, &v114, v80, v81))
  {
    if (v6)
    {
      v82 = HIDWORD(v110);
      v83 = BYTE2(v110);
      v84 = &v112[4];
      v85 = 8;
      do
      {
        v86 = *(v84 - 1);
        if (!v86)
        {
          break;
        }

        v87 = *v84;
        v84 += 2;
        sub_1000276E0(a1, v82, 0, v86, v87, v83);
        --v85;
      }

      while (v85);
    }

    else
    {
      v88 = *(&v110 + 2);
      v89 = BYTE1(v110);
      v90 = &v112[2];
      v91 = 3;
      do
      {
        v92 = *(v90 - 1);
        if (!*(v90 - 1))
        {
          break;
        }

        v93 = *v90;
        v90 += 2;
        sub_1000276E0(a1, v88, 0, v92, v93, v89);
        --v91;
      }

      while (v91);
    }
  }

  if (v6)
  {
    for (LODWORD(result) = sub_100012A1C(a1[101], -32767, v107, v108, &v115, &v114, v80, v81); !result; LODWORD(result) = sub_100012A1C(a1[101], 1, v107, v108, &v115, &v114, v94, v95))
    {
      if (v108[0] == 48)
      {
        sub_10001EAF0(v107 | 0xE, 2 * WORD6(v107[0]), v116, &v106, 0x7FuLL);
        v116[v106] = 0;
        v101 = DWORD1(v107[0]);
        v102 = (v108 | 0xC);
        v103 = 8;
        do
        {
          v104 = *(v102 - 1);
          if (!v104)
          {
            break;
          }

          v105 = *v102;
          v102 += 2;
          sub_1000276E0(a1, v101, v116, v104, v105, 1);
          --v103;
        }

        while (v103);
      }

      else if (v108[0] == 32)
      {
        sub_10001EAF0(v107 | 0xE, 2 * WORD6(v107[0]), v116, &v106, 0x7FuLL);
        v116[v106] = 0;
        v96 = DWORD1(v107[0]);
        v97 = &v108[7];
        v98 = 8;
        do
        {
          v99 = *(v97 - 1);
          if (!v99)
          {
            break;
          }

          v100 = *v97;
          v97 += 2;
          sub_1000276E0(a1, v96, v116, v99, v100, 1);
          --v98;
        }

        while (v98);
      }
    }
  }

  if (result == 32)
  {
    return 0;
  }

  else
  {
    return result;
  }
}