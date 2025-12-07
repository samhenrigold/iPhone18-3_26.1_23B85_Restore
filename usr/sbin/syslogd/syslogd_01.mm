uint64_t sub_10000E8BC(uint64_t a1)
{
  result = sub_10000E918(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 88), *(a1 + 92), *(a1 + 96), *(a1 + 100), *(a1 + 104), *(a1 + 80));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10000E918(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, unint64_t a5, int a6, unsigned int a7, int a8, unsigned int a9, unsigned int a10, const char *a11)
{
  *&v138.tv_usec = 0;
  v139 = 0;
  *&v137.tv_usec = 0;
  v138.tv_sec = 0;
  v137.tv_sec = 0;
  v16 = asl_msg_list_count();
  v17 = v16;
  if (v16)
  {
    v18 = malloc_type_calloc(v16, 8uLL, 0x2004093837F09uLL);
    if (!v18)
    {
      return 9;
    }

    v19 = v18;
    v129 = a6;
    v131 = a7;
    v20 = malloc_type_calloc(v17, 4uLL, 0x100004052888210uLL);
    if (!v20)
    {
      free(v19);
      return 9;
    }

    v21 = v20;
    v125 = a8;
    v127 = a3;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    while (1)
    {
      index = asl_msg_list_get_index();
      if (!a1)
      {
LABEL_102:
        v75 = 0x20000000;
        goto LABEL_103;
      }

      v21[v22] = 0x80000000;
      if (!index || !asl_msg_count())
      {
        goto LABEL_101;
      }

      v141 = 0;
      v142 = 0;
      v140 = 0;
      v21[v22] = 0;
      if (asl_msg_fetch() != -1)
      {
        while (v141 == 1)
        {
          if (asl_msg_fetch() == -1)
          {
            goto LABEL_11;
          }
        }

LABEL_101:
        v27 = 0;
        goto LABEL_104;
      }

LABEL_11:
      v26 = malloc_type_calloc(1uLL, 0x80uLL, 0x10A00402869003AuLL);
      if (!v26)
      {
        goto LABEL_102;
      }

      v27 = v26;
      if (asl_msg_fetch() == -1)
      {
        goto LABEL_104;
      }

      while (1)
      {
        if (!v142)
        {
          goto LABEL_99;
        }

        if (!strcmp(v142, "ASLMessageID"))
        {
          v34 = v140;
          if (v140)
          {
            v35 = v21[v22];
            if (v35)
            {
              goto LABEL_109;
            }

            v21[v22] = v35 | 1;
            *v27 = atoll(v34);
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "Time"))
        {
          if (v140)
          {
            v36 = v21[v22];
            if ((v36 & 2) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v36 | 2;
            *(v27 + 8) = asl_core_parse_time();
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "TimeNanoSec"))
        {
          v37 = v140;
          if (v140)
          {
            v38 = v21[v22];
            if ((v38 & 4) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v38 | 4;
            *(v27 + 88) = atoll(v37);
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "Level"))
        {
          v39 = v140;
          if (v140)
          {
            v40 = v21[v22];
            if ((v40 & 8) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v40 | 8;
            *(v27 + 122) = atoi(v39);
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "PID"))
        {
          v41 = v140;
          if (v140)
          {
            v42 = v21[v22];
            if ((v42 & 0x10) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v42 | 0x10;
            *(v27 + 92) = atoi(v41);
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "UID"))
        {
          v43 = v140;
          if (v140)
          {
            v44 = v21[v22];
            if ((v44 & 0x20) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v44 | 0x20;
            *(v27 + 96) = atoi(v43);
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "GID"))
        {
          v45 = v140;
          if (v140)
          {
            v46 = v21[v22];
            if ((v46 & 0x40) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v46 | 0x40;
            *(v27 + 100) = atoi(v45);
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "ReadUID"))
        {
          v47 = v140;
          if (v140)
          {
            v48 = v21[v22];
            if ((v48 & 0x80) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v48 | 0x80;
            *(v27 + 104) = atoi(v47);
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "ReadGID"))
        {
          v49 = v140;
          if (v140)
          {
            v50 = v21[v22];
            if ((v50 & 0x100) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v50 | 0x100;
            *(v27 + 108) = atoi(v49);
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "RefPID"))
        {
          v51 = v140;
          if (v140)
          {
            v52 = v21[v22];
            if ((v52 & 0x200) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v52 | 0x200;
            *(v27 + 112) = atoi(v51);
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "Host"))
        {
          v53 = v140;
          if (v140)
          {
            v54 = v21[v22];
            if ((v54 & 0x400) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v54 | 0x400;
            v55 = sub_10000F728(a1, v53, 0);
            *(v27 + 24) = v55;
            if (!v55)
            {
              goto LABEL_110;
            }
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "Sender"))
        {
          v56 = v140;
          if (v140)
          {
            v57 = v21[v22];
            if ((v57 & 0x800) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v57 | 0x800;
            v58 = sub_10000F728(a1, v56, 0);
            *(v27 + 32) = v58;
            if (!v58)
            {
              goto LABEL_110;
            }
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "SenderMachUUID"))
        {
          v59 = v140;
          if (v140)
          {
            v60 = v21[v22];
            if ((v60 & 0x1000) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v60 | 0x1000;
            *(v27 + 32) = sub_10000F728(a1, v59, 0);
            if (!*(v27 + 40))
            {
              goto LABEL_110;
            }
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "Facility"))
        {
          v61 = v140;
          if (v140)
          {
            v62 = v21[v22];
            if ((v62 & 0x2000) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v62 | 0x2000;
            v63 = sub_10000F728(a1, v61, 0);
            *(v27 + 48) = v63;
            if (!v63)
            {
              goto LABEL_110;
            }
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "Message"))
        {
          v64 = v140;
          if (v140)
          {
            v65 = v21[v22];
            if ((v65 & 0x4000) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v65 | 0x4000;
            v66 = sub_10000F728(a1, v64, 0);
            *(v27 + 56) = v66;
            if (!v66)
            {
              goto LABEL_110;
            }
          }

          goto LABEL_99;
        }

        if (!strcmp(v142, "RefProc"))
        {
          v67 = v140;
          if (v140)
          {
            v68 = v21[v22];
            if ((v68 & 0x8000) != 0)
            {
              goto LABEL_109;
            }

            v21[v22] = v68 | 0x8000;
            v69 = sub_10000F728(a1, v67, 0);
            *(v27 + 64) = v69;
            if (!v69)
            {
              goto LABEL_110;
            }
          }

          goto LABEL_99;
        }

        if (strcmp(v142, "Session"))
        {
          break;
        }

        v70 = v140;
        if (v140)
        {
          v71 = v21[v22];
          if ((v71 & 0x10000) != 0)
          {
            goto LABEL_109;
          }

          v21[v22] = v71 | 0x10000;
          v72 = sub_10000F728(a1, v70, 0);
          *(v27 + 72) = v72;
          if (!v72)
          {
LABEL_110:
            sub_10000E2F4(a1, v27);
            free(v27);
            v75 = 0x40000000;
            goto LABEL_103;
          }
        }

LABEL_99:
        if (asl_msg_fetch() == -1)
        {
          goto LABEL_104;
        }
      }

      v28 = sub_10000F728(a1, v142, 0);
      if (!v28)
      {
        goto LABEL_110;
      }

      v29 = v28;
      v30 = *(v27 + 116);
      if (v30)
      {
        v31 = 0;
        while (*(*(v27 + 80) + 8 * v31) != v28)
        {
          v31 += 2;
          if (v31 >= v30)
          {
            goto LABEL_36;
          }
        }

LABEL_109:
        sub_10000E2F4(a1, v27);
        free(v27);
        v75 = 0;
        goto LABEL_103;
      }

LABEL_36:
      v134 = sub_10000F728(a1, v140, 0);
      v32 = *(v27 + 116);
      if (v32)
      {
        v33 = reallocf(*(v27 + 80), 8 * (v32 + 2));
      }

      else
      {
        v33 = malloc_type_calloc(2uLL, 8uLL, 0x2004093837F09uLL);
      }

      *(v27 + 80) = v33;
      if (v33)
      {
        v73 = *(v27 + 116);
        v33[v73] = v29;
        v74 = *(v27 + 80);
        *(v27 + 116) = v73 + 2;
        *(v74 + 8 * (v73 + 1)) = v134;
        goto LABEL_99;
      }

      sub_10000E2F4(a1, v27);
      free(v27);
      v75 = 0x20000000;
LABEL_103:
      v27 = 0;
      v21[v22] = v75;
LABEL_104:
      *(v19 + v22) = v27;
      v76 = v21[v22];
      if (v76 != 0x80000000)
      {
        if (v76 == 0x20000000)
        {
          if (v24)
          {
            v112 = v24;
            v113 = v19;
            do
            {
              v114 = *v113++;
              sub_10000E2F4(a1, v114);
              free(v114);
              --v112;
            }

            while (v112);
          }

          free(v19);
          free(v21);
          return 9999;
        }

        v23 = 1;
      }

      v22 = ++v24;
      if (v17 <= v24)
      {
        v77 = v23 == 0;
        a3 = v127;
        a8 = v125;
        goto LABEL_113;
      }
    }
  }

  v129 = a6;
  v131 = a7;
  v21 = 0;
  v19 = 0;
  v77 = 1;
LABEL_113:
  v78 = *(a1 + 28);
  if (!v78)
  {
LABEL_124:
    if (v19)
    {
      if (v17)
      {
        v84 = 0;
        v85 = 1;
        do
        {
          v86 = *(v19 + v84);
          sub_10000E2F4(a1, v86);
          free(v86);
          v84 = v85;
          v87 = v17 > v85++;
        }

        while (v87);
      }

      free(v19);
      free(v21);
    }

    return 0;
  }

  v79 = 0;
  v80 = v78 - 1;
  while (1)
  {
    if (a8 < 0)
    {
      v81 = (v80 + *(a1 + 32)) % v78;
      if (**(*(a1 + 8) + 8 * v81) - 1 < a5)
      {
        break;
      }

      goto LABEL_123;
    }

    v81 = (v79 + *(a1 + 32)) % v78;
    v82 = **(*(a1 + 8) + 8 * v81);
    if (v82 && v82 >= a5)
    {
      break;
    }

LABEL_123:
    ++v79;
    if (--v80 == -1)
    {
      goto LABEL_124;
    }
  }

  v137.tv_sec = 0;
  *&v137.tv_usec = 0;
  if (v131 && !gettimeofday(&v137, 0))
  {
    v89 = v137.tv_sec + v131 / 0xF4240uLL;
    v88 = v137.tv_usec + v131 % 0xF4240;
    if (v88 > 0xF4240)
    {
      v88 -= 1000000;
      ++v89;
    }
  }

  else
  {
    v88 = 0;
    v89 = 0;
  }

  if (!*(a1 + 28))
  {
    v136 = 0;
    goto LABEL_227;
  }

  v123 = v88;
  v124 = v77;
  v132 = v89;
  v136 = 0;
  v90 = 0;
  v130 = v129 - 1;
  v91 = v81;
LABEL_134:
  v92 = v91;
  if (!**(*(a1 + 8) + 8 * v91))
  {
    goto LABEL_210;
  }

  v93 = asl_core_check_access();
  if (!a11 || v93)
  {
    if (v93)
    {
      goto LABEL_210;
    }

    v94 = *(*(a1 + 8) + 8 * v92);
  }

  else
  {
    v94 = *(*(a1 + 8) + 8 * v92);
    v95 = *(v94 + 40);
    if (!v95 || strcmp(*(v95 + 8), a11))
    {
      goto LABEL_210;
    }
  }

  v96 = *(v94 + 120) & 0x7FFF;
  *(v94 + 120) = v96;
  *a4 = *v94;
  if (!v124)
  {
    if (!v17)
    {
      goto LABEL_205;
    }

    v126 = a8;
    v128 = a3;
    v97 = 0;
    v98 = 0;
    while (1)
    {
      v99 = v21[v97];
      if (v99)
      {
        if (v99 != 0x40000000)
        {
          if (v99 == 0x80000000)
          {
            goto LABEL_203;
          }

          v100 = *(*(a1 + 8) + 8 * v92);
          if (v100)
          {
            v101 = *(v19 + v97);
            if (!v101)
            {
              goto LABEL_203;
            }

            if (((v99 & 1) == 0 || *v101 == *v100) && ((v99 & 2) == 0 || *(v101 + 8) == *(v100 + 8)) && ((v99 & 4) == 0 || *(v101 + 88) == *(v100 + 88)) && ((v99 & 8) == 0 || *(v101 + 122) == *(v100 + 122)) && ((v99 & 0x10) == 0 || *(v101 + 92) == *(v100 + 92)) && ((v99 & 0x20) == 0 || *(v101 + 96) == *(v100 + 96)) && ((v99 & 0x40) == 0 || *(v101 + 100) == *(v100 + 100)) && ((v99 & 0x80) == 0 || *(v101 + 104) == *(v100 + 104)) && ((v99 & 0x100) == 0 || *(v101 + 108) == *(v100 + 108)) && ((v99 & 0x200) == 0 || *(v101 + 112) == *(v100 + 112)) && ((v99 & 0x400) == 0 || *(v101 + 24) == *(v100 + 24)) && ((v99 & 0x800) == 0 || *(v101 + 32) == *(v100 + 32)) && ((v99 & 0x1000) == 0 || *(v101 + 40) == *(v100 + 40)) && ((v99 & 0x2000) == 0 || *(v101 + 48) == *(v100 + 48)) && ((v99 & 0x4000) == 0 || *(v101 + 56) == *(v100 + 56)) && ((v99 & 0x8000) == 0 || *(v101 + 64) == *(v100 + 64)) && ((v99 & 0x10000) == 0 || *(v101 + 72) == *(v100 + 72)))
            {
              v102 = *(v101 + 116);
              if (!v102)
              {
                goto LABEL_203;
              }

              v103 = *(v100 + 116);
              if (v103)
              {
                v104 = 0;
                v105 = *(v101 + 80);
                v106 = *(v100 + 80);
                while (1)
                {
                  v107 = 1;
                  while (*(v105 + 8 * v104) != *(v106 + 8 * (v107 - 1)))
                  {
                    v108 = 0;
                    v109 = v107 + 1;
                    v107 += 2;
                    if (v109 >= v103)
                    {
                      goto LABEL_196;
                    }
                  }

                  if (*(v105 + 8 * (v104 | 1)) != *(v106 + 8 * v107))
                  {
                    break;
                  }

                  v104 += 2;
                  if (v104 >= v102)
                  {
                    goto LABEL_203;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v110 = *(*(a1 + 8) + 8 * v92);
        asl_msg_list_get_index();
        v142 = 0;
        if (!sub_10000E3C4(a1, v110, &v142))
        {
          v108 = asl_msg_cmp() != 0;
          asl_msg_release();
          goto LABEL_196;
        }
      }

      v108 = 0;
LABEL_196:
      v97 = (v98 + 1);
      v111 = v17 > v97 && !v108;
      ++v98;
      if (!v111)
      {
        if (v108)
        {
LABEL_203:
          v94 = *(*(a1 + 8) + 8 * v92);
          v96 = *(v94 + 120);
          a3 = v128;
          a8 = v126;
          break;
        }

        a3 = v128;
        a8 = v126;
LABEL_205:
        if (v132 && !gettimeofday(&v138, 0) && (v138.tv_sec > v132 || v138.tv_sec == v132 && v138.tv_usec > v123))
        {
          goto LABEL_227;
        }

LABEL_210:
        if (a8 < 0)
        {
          if (v92)
          {
            v91 = v92 - 1;
          }

          else
          {
            v91 = *(a1 + 28) - 1;
          }
        }

        else if ((v92 + 1) < *(a1 + 28))
        {
          v91 = v92 + 1;
        }

        else
        {
          v91 = 0;
        }

        if (v91 == *(a1 + 32))
        {
          goto LABEL_227;
        }

        if (++v90 >= *(a1 + 28))
        {
          goto LABEL_227;
        }

        goto LABEL_134;
      }
    }
  }

  *(v94 + 120) = v96 | 0x8000;
  if (v130 >= ++v136)
  {
    goto LABEL_205;
  }

LABEL_227:
  if (v19)
  {
    if (v17)
    {
      v116 = 0;
      v117 = 1;
      do
      {
        v118 = *(v19 + v116);
        sub_10000E2F4(a1, v118);
        free(v118);
        v116 = v117;
        v87 = v17 > v117++;
      }

      while (v87);
    }

    free(v19);
    free(v21);
  }

  *a3 = 0;
  if (!v136)
  {
    return 0;
  }

  v119 = asl_msg_list_new();
  *a3 = v119;
  if (v119)
  {
    while (1)
    {
      v120 = *(*(a1 + 8) + 8 * v81);
      v121 = *(v120 + 120);
      if (v121 < 0)
      {
        *(v120 + 120) = v121 & 0x7FFF;
        v115 = sub_10000E3C4(a1, v120, &v139);
        if (v115)
        {
          asl_msg_list_release();
          *a3 = 0;
          return v115;
        }

        asl_msg_list_append();
        asl_msg_release();
        if (v136 == 1)
        {
          return 0;
        }
      }

      if (a8 < 0)
      {
        if (v81)
        {
          --v81;
        }

        else
        {
          v81 = *(a1 + 28) - 1;
        }
      }

      else if (v81 + 1 < *(a1 + 28))
      {
        ++v81;
      }

      else
      {
        v81 = 0;
      }

      if (v81 == *(a1 + 32))
      {
        return 0;
      }
    }
  }

  return 9;
}

uint64_t sub_10000F728(uint64_t a1, char *__s, int a3)
{
  if (!__s)
  {
    return 0;
  }

  v6 = strlen(__s);
  v7 = asl_core_string_hash();
  v8 = sub_10000F8D8(a1, v7);
  if (v8 < *(a1 + 24))
  {
    v9 = *a1;
    while (1)
    {
      v10 = v9[v8];
      if (*v10 != v7)
      {
        break;
      }

      if (!strcmp(__s, *(v10 + 8)))
      {
        ++*(v10 + 4);
        return v10;
      }

      ++v8;
    }
  }

  if (!a3)
  {
    return 0;
  }

  v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040466105CCuLL);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  *v11 = v7;
  v11[1] = 1;
  v13 = malloc_type_malloc(v6 + 1, 0xC1BF310BuLL);
  v12[1] = v13;
  if (!v13)
  {
LABEL_17:
    free(v12);
    return 0;
  }

  memcpy(v13, __s, v6);
  *(v12[1] + v6) = 0;
  v14 = reallocf(*a1, 8 * (*(a1 + 24) + 1));
  *a1 = v14;
  if (!v14)
  {
    *(a1 + 24) = 0;
    goto LABEL_17;
  }

  v15 = *(a1 + 24);
  if (v15 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = v8;
    v17 = *(a1 + 24);
    do
    {
      *(*a1 + 8 * v17) = *(*a1 + 8 * v17 - 8);
      --v17;
    }

    while (v17 > v8);
    v14 = *a1;
  }

  v19 = v6 + *(a1 + 48) + 17;
  v14[v16] = v12;
  *(a1 + 48) = v19;
  *(a1 + 24) = v15 + 1;
  return *(*a1 + 8 * v16);
}

uint64_t sub_10000F8D8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return *(a1 + 24);
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return ***a1 <= a2;
  }

  v5 = *a1;
  if (v3 < 2)
  {
    result = 0;
    v3 = 1;
LABEL_14:
    if (*v5[result] < a2)
    {
      if (*v5[v3] >= a2)
      {
        return v3;
      }

      else
      {
        return v2;
      }
    }
  }

  else
  {
    LODWORD(result) = 0;
    v6 = v3 >> 1;
    while (1)
    {
      v7 = *v5[v6];
      if (v7 == a2)
      {
        break;
      }

      if (v7 <= a2)
      {
        result = v6;
      }

      else
      {
        v3 = v6;
        result = result;
      }

      v6 = result + ((v3 - result) >> 1);
      if (v3 - result <= 1)
      {
        goto LABEL_14;
      }
    }

    LODWORD(result) = v6 + 1;
    v8 = v5 - 1;
    for (i = v6; i * 8; --i)
    {
      v10 = *v8[i];
      result = (result - 1);
      if (v10 != a2)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void sub_10000F9A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 4);
    if (!v4 || (v5 = v4 - 1, (*(a2 + 4) = v5) == 0))
    {
      v6 = *a2;
      v7 = sub_10000F8D8(a1, *a2);
      if (**(*a1 + 8 * v7) == v6)
      {
        v8 = v7 + 1;
        while (1)
        {
          v9 = *(*a1 + 8 * v7);
          if (v9 == a2)
          {
            break;
          }

          if (*v9 == v6)
          {
            ++v7;
            ++v8;
            if (v7 < *(a1 + 24))
            {
              continue;
            }
          }

          return;
        }

        v10 = *(a1 + 24);
        if (v8 < v10)
        {
          do
          {
            *(*a1 + 8 * v7++) = *(*a1 + 8 * v8++);
          }

          while (v8 < v10);
        }

        v11 = *(a2 + 8);
        if (v11)
        {
          v12 = *(a1 + 48) - strlen(*(a2 + 8)) - 17;
        }

        else
        {
          v12 = *(a1 + 48) - 16;
        }

        *(a1 + 48) = v12;
        free(v11);
        free(a2);
        v13 = *a1;
        v14 = *(a1 + 24) - 1;
        *(a1 + 24) = v14;
        if (v14)
        {
          v15 = reallocf(v13, 8 * v14);
          *a1 = v15;
          if (!v15)
          {
            *(a1 + 24) = 0;
          }
        }

        else
        {
          free(v13);
          *a1 = 0;
        }
      }
    }
  }
}

xpc_object_t xpc_object_to_asl_msg(xpc_object_t object)
{
  v1 = object;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  if (object)
  {
    if (xpc_get_type(object) == &_xpc_type_dictionary)
    {
      v5[3] = asl_msg_new();
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 0x40000000;
      applier[2] = sub_10000FBC4;
      applier[3] = &unk_10001D490;
      applier[4] = &v4;
      xpc_dictionary_apply(v1, applier);
      v1 = v5[3];
    }

    else
    {
      v1 = 0;
    }
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t sub_10000FBC4(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_null)
  {
    goto LABEL_21;
  }

  if (xpc_get_type(object) == &_xpc_type_BOOL)
  {
    xpc_BOOL_get_value(object);
    goto LABEL_21;
  }

  if (xpc_get_type(object) == &_xpc_type_int64)
  {
    xpc_int64_get_value(object);
LABEL_18:
    snprintf(__str, 0x40uLL, "%lld");
    goto LABEL_21;
  }

  if (xpc_get_type(object) == &_xpc_type_uint64)
  {
    xpc_uint64_get_value(object);
    snprintf(__str, 0x40uLL, "%llu");
    goto LABEL_21;
  }

  if (xpc_get_type(object) == &_xpc_type_double)
  {
    xpc_double_get_value(object);
    snprintf(__str, 0x40uLL, "%f");
    goto LABEL_21;
  }

  if (xpc_get_type(object) == &_xpc_type_date)
  {
    xpc_date_get_value(object);
    goto LABEL_18;
  }

  if (xpc_get_type(object) == &_xpc_type_data)
  {
    xpc_data_get_length(object);
    xpc_data_get_bytes_ptr(object);
    v5 = asl_core_encode_buffer();
    asl_msg_set_key_val_op();
    free(v5);
    return 1;
  }

  if (xpc_get_type(object) == &_xpc_type_string)
  {
    xpc_string_get_string_ptr(object);
  }

  else if (xpc_get_type(object) == &_xpc_type_uuid)
  {
    *__str = 0u;
    memset(v8, 0, sizeof(v8));
    bytes = xpc_uuid_get_bytes(object);
    uuid_unparse(bytes, __str);
  }

  else if (xpc_get_type(object) != &_xpc_type_fd && xpc_get_type(object) != &_xpc_type_shmem && xpc_get_type(object) != &_xpc_type_array && xpc_get_type(object) != &_xpc_type_dictionary)
  {
    xpc_get_type(object);
  }

LABEL_21:
  asl_msg_set_key_val_op();
  return 1;
}

xpc_object_t configuration_profile_to_asl_msg()
{
  v0 = configuration_profile_copy_property_list();
  v1 = xpc_object_to_asl_msg(v0);
  if (v0)
  {
    xpc_release(v0);
  }

  return v1;
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
    v6 = sub_1000100E8(v11, v6);
    free(v12);
    v17 = &v2[v10];
    if (!v2[v10])
    {
      break;
    }

    v3 = v2[v10 + 1];
    if (!v2[v10 + 1])
    {
      v6 = sub_1000100E8(&unk_100015555, v6);
      v3 = v17[1];
    }

    v2 = v17 + 1;
  }

  while (v3);
  return v6;
}

char *sub_1000100E8(const char *a1, char *__ptr)
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

uint64_t asl_out_dest_for_path(uint64_t a1, char *__s2)
{
  v2 = 0;
  if (a1 && __s2)
  {
    v4 = a1;
    while (1)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        break;
      }

LABEL_10:
      v4 = *(v4 + 24);
      if (!v4)
      {
        return 0;
      }
    }

    while (1)
    {
      if (*(v5 + 8) == 2)
      {
        v2 = *(v5 + 24);
        if (v2)
        {
          v6 = *(v2 + 8);
          if (v6)
          {
            if (!strcmp(v6, __s2))
            {
              break;
            }
          }
        }
      }

      v5 = *(v5 + 40);
      if (!v5)
      {
        goto LABEL_10;
      }
    }
  }

  return v2;
}

uint64_t asl_out_mkpath(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 24);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  snprintf(__str, 0x400uLL, "%s", v4);
  if (*(a2 + 8) != 13)
  {
    v6 = strrchr(__str, 47);
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    *v6 = 0;
  }

  memset(&v21, 0, sizeof(v21));
  if (stat(__str, &v21))
  {
    if (*__error() != 2)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(*(a2 + 24) + 72);
    result = explode(__str, "/");
    if (result)
    {
      v9 = result;
      asl_string_new();
      if (v9[__str[0] == 47])
      {
        v10 = &v9[(__str[0] == 47) + 1];
        while (1)
        {
          memset(&v22, 0, sizeof(v22));
          asl_string_append_char_no_encoding();
          asl_string_append_no_encoding();
          v11 = asl_string_bytes();
          memset(&v22, 0, sizeof(v22));
          if (lstat(v11, &v22))
          {
            break;
          }

          v17 = v22.st_mode & 0xF000;
          if (v17 == 40960)
          {
            if (!realpath_DARWIN_EXTSN(v11, v24))
            {
              goto LABEL_39;
            }

            memset(&v22, 0, sizeof(v22));
            if (stat(v24, &v22))
            {
              break;
            }

            v17 = v22.st_mode & 0xF000;
          }

          if (v17 != 0x4000)
          {
            goto LABEL_39;
          }

LABEL_34:
          if (!*v10++)
          {
            goto LABEL_35;
          }
        }

        if (*__error() != 2 || (v12 = asl_out_dest_for_path(a1, v11), v13 = v12, (v7 & 0x20) != 0) && !v12)
        {
LABEL_39:
          asl_string_release();
          free_string_list(v9);
          return 0xFFFFFFFFLL;
        }

        if (v12)
        {
          if (*(v12 + 116) == 4096)
          {
            v14 = 493;
          }

          else
          {
            v14 = *(v12 + 116);
          }

          v15 = umask(0);
          mkdir(v11, v14);
          umask(v15);
          if (*(v13 + 128))
          {
            v16 = **(v13 + 120);
          }

          else
          {
            v16 = 0;
          }

          if (*(v13 + 144))
          {
            v19 = **(v13 + 136);
LABEL_33:
            chown(v11, v16, v19);
            goto LABEL_34;
          }
        }

        else
        {
          v18 = umask(0);
          mkdir(v11, 0x1EDu);
          umask(v18);
          v16 = 0;
        }

        v19 = 80;
        goto LABEL_33;
      }

LABEL_35:
      asl_string_release();
      free_string_list(v9);
      return 0;
    }
  }

  else if ((v21.st_mode & 0xF000) == 0x4000)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
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

uint64_t asl_dst_make_current_name(uint64_t result, int a2, char *a3, size_t a4)
{
  if (result && a3)
  {
    v6 = result;
    v7 = *(result + 72) | a2;
    v8 = *(result + 176);
    if (!v8)
    {
      v8 = time(0);
      *(v6 + 176) = v8;
    }

    asl_make_timestamp(v8, *(v6 + 64), __str, 0x20uLL);
    if ((v7 & 0x2000) != 0)
    {
      return snprintf(a3, a4, "%s.%s");
    }

    if ((v7 & 0x100) == 0)
    {
      return snprintf(a3, a4, "%s");
    }

    if (*v6 && (*(v6 + 67) & 0x40) != 0)
    {
      return snprintf(a3, a4, "%s/%s.%s.%s");
    }

    else
    {
      return snprintf(a3, a4, "%s.%s");
    }
  }

  return result;
}

uint64_t asl_check_option(uint64_t a1, char *__s)
{
  v2 = 0;
  if (a1 && __s)
  {
    v4 = strlen(__s);
    v5 = v4;
    if (!v4)
    {
      return 0;
    }

    val_for_key = asl_msg_get_val_for_key();
    if (!val_for_key)
    {
      return 0;
    }

    v7 = val_for_key;
    v2 = *val_for_key;
    if (*val_for_key)
    {
      while (1)
      {
LABEL_6:
        if (v2 <= 31)
        {
          if (v2 != 9)
          {
            if (!v2)
            {
              return v2;
            }

LABEL_13:
            if (strncasecmp(v7, __s, v5) || ((v7 += v5, v2 = *v7, v2 <= 0x2C) ? (v9 = ((1 << v2) & 0x100100000201) == 0) : (v9 = 1), v9))
            {
              while (1)
              {
                if (v2 > 31)
                {
                  if (v2 == 32 || v2 == 44)
                  {
                    goto LABEL_6;
                  }
                }

                else
                {
                  if (!v2)
                  {
                    return v2;
                  }

                  if (v2 == 9)
                  {
                    goto LABEL_6;
                  }
                }

                v10 = *++v7;
                v2 = v10;
              }
            }

            return 1;
          }
        }

        else if (v2 != 44 && v2 != 32)
        {
          goto LABEL_13;
        }

        v8 = *++v7;
        v2 = v8;
      }
    }
  }

  return v2;
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

uint64_t asl_out_dst_data_retain(uint64_t result)
{
  if (result)
  {
    ++*(result + 168);
  }

  return result;
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

uint64_t asl_out_dst_file_create_open(uint64_t a1, char **a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  asl_dst_make_current_name(a1, 0, __s1, 0x400uLL);
  free(*(a1 + 16));
  v4 = strdup(__s1);
  *(a1 + 16) = v4;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    *a2 = strdup(__s1);
  }

  memset(&v10, 0, sizeof(v10));
  if (!stat(__s1, &v10))
  {
    if ((v10.st_mode & 0xF000) == 0x8000)
    {
      v7 = open(__s1, 2058, 0);
      if (!*(a1 + 176))
      {
        tv_sec = v10.st_birthtimespec.tv_sec;
        *(a1 + 176) = v10.st_birthtimespec.tv_sec;
        if (!tv_sec)
        {
          *(a1 + 176) = v10.st_mtimespec.tv_sec;
        }
      }

      *(a1 + 184) = v10.st_size;
      if ((~*(a1 + 72) & 0x300) == 0)
      {
        goto LABEL_18;
      }

      return v7;
    }

    return 0xFFFFFFFFLL;
  }

  if (*__error() != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = open(__s1, 2562, *(a1 + 116) & 0x1B6);
  if ((v5 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  *(a1 + 176) = time(0);
  v7 = asl_out_dst_set_access(v6, a1);
  if ((v7 & 0x80000000) != 0)
  {
    unlink(__s1);
  }

  if ((~*(a1 + 72) & 0x300) == 0)
  {
    unlink(*(a1 + 8));
LABEL_18:
    symlink(__s1, *(a1 + 8));
  }

  return v7;
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

      v9 = sub_100012C1C(a2);
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

            v27 = sub_100012C94(i);
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

                v33 = sub_10001171C(v32, v31, 493);
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

                v36 = sub_10001171C(a1, *(v6 + 2), v35);
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
                        sub_100012D3C(v37, "0");
                        v37 = *(v6 + 3);
                      }

                      if (!v37[36])
                      {
                        sub_100012DEC(v37, "80");
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

    sub_10001171C(a1, a2 + 1, 4096);
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
      *(v6 + 2) = sub_100012C94(j);
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
    *(v6 + 2) = sub_100012C94(j);
    *(v19 - 1) = 8273;
    goto LABEL_76;
  }

  v13 = sub_100012C1C(a2);
  if (!v13)
  {
    goto LABEL_101;
  }

  v14 = v13;
  *(v6 + 2) = sub_100012C94(v13);
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

unsigned int *sub_10001171C(uint64_t a1, unsigned __int8 *a2, __int16 a3)
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
        sub_100012D3C(v3, v39 + 4);
      }

      else if (!strncasecmp(v39, "gid=", 4uLL))
      {
        sub_100012DEC(v3, v39 + 4);
      }

      else
      {
        if (!strncasecmp(v39, "fmt=", 4uLL))
        {
          v41 = v39 + 4;
LABEL_115:
          *(v3 + 3) = sub_100012E9C(v41);
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
          *(v3 + 4) = sub_100012C94(v42);
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

          if (sub_100012F7C(v3, &v39[v43]))
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
  sub_10001238C(v5, "/usr/local/etc/asl", 2);
  sub_10001238C(v5, "/etc/asl", 0);
  v0 = *v5;
  if (!sub_100012524(*v5, "com.apple.asl"))
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

DIR *sub_10001238C(DIR *result, char *a2, int a3)
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
        if (v10->d_name[0] != 46 && !sub_100012524(*p_dd_fd, d_name))
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

uint64_t sub_100012524(uint64_t a1, char *__s2)
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

void asl_out_module_print(FILE *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    while (1)
    {
      v4 = asl_msg_to_string();
      fprintf(a1, "  %s", off_10001D4B0[*(v2 + 8)]);
      if (*v2)
      {
        fprintf(a1, " %s", v4);
      }

      if (*(v2 + 16))
      {
        fprintf(a1, " %s", *(v2 + 16));
      }

      if (*(v2 + 8) != 2)
      {
        goto LABEL_66;
      }

      v5 = *(v2 + 24);
      if (v5)
      {
        break;
      }

      fwrite("  data: NULL", 0xCuLL, 1uLL, a1);
LABEL_66:
      fputc(10, a1);
      v2 = *(v2 + 40);
      free(v4);
      if (!v2)
      {
        return;
      }
    }

    fprintf(a1, "%s\n", *(v5 + 8));
    fprintf(a1, "    rules: %u\n", *(v5 + 168) - 1);
    v6 = *(v5 + 32);
    if (!v6)
    {
      v6 = "(none)";
    }

    fprintf(a1, "    dest: %s\n", v6);
    v7 = *(v5 + 24);
    if (!v7)
    {
      v7 = "std";
    }

    fprintf(a1, "    format: %s\n", v7);
    v8 = *(v5 + 56);
    if (!v8)
    {
      v8 = "lcl";
    }

    fprintf(a1, "    time_format: %s\n", v8);
    fprintf(a1, "    flags: 0x%08x", *(v5 + 72));
    if (!*(v5 + 72))
    {
LABEL_34:
      fputc(10, a1);
      if ((*(v5 + 72) & 4) != 0)
      {
        fwrite("        rotatation style: ", 0x1AuLL, 1uLL, a1);
        v11 = *(v5 + 64);
        if ((v11 & 0x10000000) != 0)
        {
          sub_100012BB0(v11);
          fprintf(a1, "[base=%s].%s\n");
        }

        else if ((v11 & 0x20000000) != 0)
        {
          sub_100012BB0(v11);
          fprintf(a1, "[base=%s].[ext=%s].%s\n");
        }

        else if ((v11 & 0x40000000) != 0)
        {
          sub_100012BB0(v11);
          fprintf(a1, "[base=%s].%s.[ext=%s]\n");
        }

        else
        {
          fprintf(a1, "0x%08x\n");
        }
      }

      asl_core_time_to_str();
      fprintf(a1, "    ttl: %s\n", v17);
      v12 = 0;
      do
      {
        v13 = *(v5 + 80 + 4 * v12);
        if (v12 > 6)
        {
          break;
        }

        ++v12;
      }

      while (!v13);
      if (v13)
      {
        for (i = 0; i != 8; ++i)
        {
          asl_core_time_to_str();
          fprintf(a1, " [%d %s]", i, v17);
        }

        fputc(10, a1);
      }

      fprintf(a1, "    mode: 0%o\n", *(v5 + 116));
      fprintf(a1, "    file_max: %lu\n", *(v5 + 152));
      fprintf(a1, "    all_max: %lu\n", *(v5 + 160));
      fwrite("    uid:", 8uLL, 1uLL, a1);
      if (*(v5 + 128))
      {
        v15 = 0;
        do
        {
          fprintf(a1, " %d", *(*(v5 + 120) + 4 * v15++));
        }

        while (v15 < *(v5 + 128));
      }

      fputc(10, a1);
      fwrite("    gid:", 8uLL, 1uLL, a1);
      if (*(v5 + 144))
      {
        v16 = 0;
        do
        {
          fprintf(a1, " %d", *(*(v5 + 136) + 4 * v16++));
        }

        while (v16 < *(v5 + 144));
      }

      goto LABEL_66;
    }

    fputc(32, a1);
    v9 = *(v5 + 72);
    if (v9)
    {
      fprintf(a1, "%cenabled", 40);
      v9 = *(v5 + 72);
      v10 = 32;
      if ((v9 & 0x800) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = 40;
      if ((v9 & 0x800) == 0)
      {
LABEL_21:
        if ((v9 & 4) != 0)
        {
          fprintf(a1, "%crotate", v10);
          v9 = *(v5 + 72);
          v10 = 32;
          if ((v9 & 8) == 0)
          {
LABEL_23:
            if ((v9 & 0x10) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_41;
          }
        }

        else if ((v9 & 8) == 0)
        {
          goto LABEL_23;
        }

        fprintf(a1, "%ccoalesce", v10);
        v9 = *(v5 + 72);
        v10 = 32;
        if ((v9 & 0x10) == 0)
        {
LABEL_24:
          if ((v9 & 0x100) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_42;
        }

LABEL_41:
        fprintf(a1, "%ccompress", v10);
        v9 = *(v5 + 72);
        v10 = 32;
        if ((v9 & 0x100) == 0)
        {
LABEL_25:
          if ((v9 & 0x200) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_43;
        }

LABEL_42:
        fprintf(a1, "%cbasestamp", v10);
        v9 = *(v5 + 72);
        v10 = 32;
        if ((v9 & 0x200) == 0)
        {
LABEL_26:
          if ((v9 & 0x20) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_44;
        }

LABEL_43:
        fprintf(a1, "%csymlink", v10);
        v9 = *(v5 + 72);
        v10 = 32;
        if ((v9 & 0x20) == 0)
        {
LABEL_27:
          if ((v9 & 0x40) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_45;
        }

LABEL_44:
        fprintf(a1, "%cnon-std_dir", v10);
        v9 = *(v5 + 72);
        v10 = 32;
        if ((v9 & 0x40) == 0)
        {
LABEL_28:
          if ((v9 & 0x400) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_46;
        }

LABEL_45:
        fprintf(a1, "%cexternal", v10);
        v9 = *(v5 + 72);
        v10 = 32;
        if ((v9 & 0x400) == 0)
        {
LABEL_29:
          if ((v9 & 0x1000) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_47;
        }

LABEL_46:
        fprintf(a1, "%ccrashlog", v10);
        v9 = *(v5 + 72);
        v10 = 32;
        if ((v9 & 0x1000) == 0)
        {
LABEL_30:
          if ((v9 & 0x2000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_48;
        }

LABEL_47:
        fprintf(a1, "%casl_file", v10);
        v9 = *(v5 + 72);
        v10 = 32;
        if ((v9 & 0x2000) == 0)
        {
LABEL_31:
          if ((v9 & 0x8000) == 0)
          {
LABEL_33:
            fputc(41, a1);
            goto LABEL_34;
          }

LABEL_32:
          fprintf(a1, "%csize_only", v10);
          goto LABEL_33;
        }

LABEL_48:
        fprintf(a1, "%casl_directory", v10);
        v10 = 32;
        if ((*(v5 + 72) & 0x8000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    fprintf(a1, "%csoft", v10);
    v9 = *(v5 + 72);
    v10 = 32;
    goto LABEL_21;
  }
}

const char *sub_100012BB0(char a1)
{
  v1 = "<sequence>";
  v2 = "<utc>";
  v3 = "<utc-basic>";
  v4 = "<local>";
  v5 = "<local-basic>";
  if ((a1 & 0x20) == 0)
  {
    v5 = "<unknown>";
  }

  if ((a1 & 0x10) == 0)
  {
    v4 = v5;
  }

  if ((a1 & 8) == 0)
  {
    v3 = v4;
  }

  if ((a1 & 4) == 0)
  {
    v2 = v3;
  }

  if ((a1 & 2) == 0)
  {
    v1 = v2;
  }

  if (a1)
  {
    return "<seconds>";
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100012C1C(uint64_t result)
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

_BYTE *sub_100012C94(char *__s)
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

_DWORD *sub_100012D3C(_DWORD *result, char *a2)
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

_DWORD *sub_100012DEC(_DWORD *result, char *a2)
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

const char *sub_100012E9C(const char *result)
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

uint64_t sub_100012F7C(uint64_t a1, const char *a2)
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
      v12 = sub_100013128(a2);
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
        v16 = sub_100013128(v5);
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
      v22 = sub_100013128(v5);
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

  v20 = sub_100013128(i);
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

uint64_t sub_100013128(uint64_t result)
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

uint64_t (*asl_ipc_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 123) >= 0xFFFFFFF7)
  {
    return _asl_ipc_subsystem[5 * (v1 - 114) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000133CC(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v3 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_10;
  }

  if (*(result + 56) || *(result + 60) <= 0x1Fu)
  {
    v3 = -309;
LABEL_10:
    *(a2 + 32) = v3;
    goto LABEL_11;
  }

  *(a2 + 32) = 0x11000000000000;
  *(a2 + 48) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 92);
  v8[0] = *(result + 76);
  v8[1] = v7;
  result = sub_100009768(v4, v5, v6, (a2 + 28), (a2 + 40), (a2 + 64), (a2 + 68), v8);
  if (!result)
  {
    *(a2 + 52) = *(a2 + 64);
    *(a2 + 56) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 72;
    *(a2 + 24) = 2;
    return result;
  }

  *(a2 + 32) = result;
LABEL_11:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000134FC(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 56)
  {
    if (*(result + 39) == 1 && (v3 = *(result + 40), v3 == *(result + 52)))
    {
      if (!*(result + 56) && *(result + 60) > 0x1Fu)
      {
        v5 = *(result + 12);
        v6 = *(result + 28);
        v7 = *(result + 92);
        v8[0] = *(result + 76);
        v8[1] = v7;
        result = sub_1000093FC(v5, v6, v3, v8);
        *(a2 + 32) = result;
        return result;
      }

      v4 = -309;
    }

    else
    {
      v4 = -300;
    }
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_1000135C8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = sub_100009B88(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100013664(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!result[9] && result[10] > 0x1Fu)
    {
      result = sub_100009EA8(result[3], result[8]);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100013700(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v3 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_10;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v3 = -309;
LABEL_10:
    *(a2 + 32) = v3;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 56);
  v8 = *(result + 64);
  v9 = *(result + 68);
  v10 = *(result + 108);
  v11[0] = *(result + 92);
  v11[1] = v10;
  result = sub_1000085C8(v4, v5, v6, v7, v8, v9, (a2 + 28), (a2 + 52), (a2 + 56), (a2 + 64), v11);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 68;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_11:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100013834(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 80)
  {
    v3 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_10;
  }

  if (*(result + 80) || *(result + 84) <= 0x1Fu)
  {
    v3 = -309;
LABEL_10:
    *(a2 + 32) = v3;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 56);
  v8 = *(result + 64);
  v9 = *(result + 72);
  v10 = *(result + 76);
  v11 = *(result + 116);
  v13[0] = *(result + 100);
  v13[1] = v11;
  *(&v12 + 1) = a2 + 64;
  *&v12 = a2 + 56;
  result = sub_1000093A4(v4, v5, v6, v7, v8, v9, v10, (a2 + 28), (a2 + 52), v12, v13);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 68;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_11:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t asl_ipc_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 123) >= 0xFFFFFFF7 && (v5 = _asl_ipc_subsystem[5 * (v4 - 114) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

void sub_100013A98(char *a1, int a2)
{
  sub_100005CC8("FATAL ERROR: mach_msg() send failed with status 0x%08x\n", a2);
  snprintf(a1, 0x100uLL, "[Sender syslogd] [Level 1] [PID %u] [Facility syslog] [Message FATAL ERROR: mach_msg() send failed with status 0x%08x]", dword_10002237C, a2);
  sub_100006950(a1);
  sleep(1u);
  abort();
}