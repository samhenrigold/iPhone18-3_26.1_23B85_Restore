uint64_t sub_10000C570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v89 = 0;
  memset(v88, 0, sizeof(v88));
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
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
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  memset(v94, 0, sizeof(v94));
  v9 = 2 * *(a4 + 6);
  v87 = 0;
  sub_10001EAF0(a4 + 8, v9, __s2, &v89, 0xFFuLL);
  __s2[v89] = 0;
  v16 = *(a3 + 8);
  v17 = *(a3 + 2);
  v18 = *(a3 + 44);
  if (a5)
  {
    v85 = 0;
    v19 = *(a1 + 5732);
  }

  else
  {
    v19 = *(a1 + 5728);
    v85 = strtoul(v126, 0, 10);
    if (HIDWORD(v85))
    {
      if (sub_10002D444() >= 3)
      {
        v90 = xmmword_100043460;
        v91 = *&qword_100043470;
        v92 = xmmword_100043480;
        v93 = *&off_100043490;
        sub_10002D0E8(&v90, 2, "\tlink reference num=%lu is > UINT32_MAX for inode=%u\n");
      }

      return 1;
    }
  }

  if (v19)
  {
    v20 = *(a4 + 2);
    if (v20 != v19)
    {
      v84 = v18;
      v21 = (a1 + 872);
      if (a5)
      {
        v22 = 4294966712;
      }

      else
      {
        v22 = 4294966700;
      }

      v23 = *(a1 + 888);
      v90 = *v21;
      v91 = v23;
      v24 = *(a1 + 920);
      v92 = *(a1 + 904);
      v93 = v24;
      sub_10002D0A4(&v90, v22, v10, v11, v12, v13, v14, v15, v16);
      snprintf(__str, 0xCuLL, "%u", v19);
      snprintf(v128, 0xCuLL, "%u", v20);
      v25 = *(a1 + 888);
      v90 = *v21;
      v91 = v25;
      v26 = *(a1 + 920);
      v18 = v84;
      v92 = *(a1 + 904);
      v93 = v26;
      sub_10002D0A4(&v90, 559, v27, v28, v29, v30, v31, v32, __str);
      *(a1 + 28) |= 4u;
    }
  }

  if (a5)
  {
    snprintf(__str, 0x20uLL, "%s%u", "dir_", v16);
    v33 = strlen(__str);
    if (v89 != v33 || strncmp(__str, __s2, v33))
    {
      v34 = *(a1 + 888);
      v90 = *(a1 + 872);
      v91 = v34;
      v35 = *(a1 + 920);
      v92 = *(a1 + 904);
      v93 = v35;
      sub_10002D0A4(&v90, 4294966711, v10, v11, v12, v13, v14, v15, v16);
      v36 = *(a1 + 888);
      v90 = *(a1 + 872);
      v91 = v36;
      v37 = *(a1 + 920);
      v92 = *(a1 + 904);
      v93 = v37;
      sub_10002D0A4(&v90, 559, v38, v39, v40, v41, v42, v43, __str);
      *(a1 + 28) |= 4u;
    }
  }

  if (!v18)
  {
    sub_10000BC9C(a1, a5, v10, v11, v12, v13, v14, v15);
    if (sub_10002D444() >= 3)
    {
      v90 = xmmword_100043460;
      v91 = *&qword_100043470;
      v92 = xmmword_100043480;
      v93 = *&off_100043490;
      sub_10002D0E8(&v90, 2, "\tlinkCount=0 for dirinode=%u\n");
    }

    return 1;
  }

  if ((v17 & 0x20) == 0)
  {
    if (!a5 && !*(a3 + 4))
    {
      sub_10000DE8C(v85, v18);
      return 0;
    }

    sub_10000BB2C(a1, v16, a5, v17, v17 | 0x20, 0);
  }

  v128[0] = 0;
  v44 = sub_10000C14C(a1, a3, v16, a5, v128);
  if (v44)
  {
    v51 = v44;
    sub_10000BC9C(a1, a5, v45, v46, v47, v48, v49, v50);
    if (sub_10002D444() >= 3)
    {
      v90 = xmmword_100043460;
      v91 = *&qword_100043470;
      v92 = xmmword_100043480;
      v93 = *&off_100043490;
      sub_10002D0E8(&v90, 2, "\tError getting first link ID for inode=%u\n", v16);
    }
  }

  else
  {
    v53 = v128[0];
    if (v128[0])
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      while (1)
      {
        v57 = v56;
        v58 = sub_10000B770(a1, v53, 1, v88, v94, &v87);
        if (v58)
        {
          break;
        }

        if (LOWORD(v94[0]) != 2)
        {
          sub_10000BC9C(a1, a5, v59, v60, v61, v62, v63, v64);
          if (sub_10002D444() >= 3)
          {
            v90 = xmmword_100043460;
            v91 = *&qword_100043470;
            v92 = xmmword_100043480;
            v93 = *&off_100043490;
            sub_10002D0E8(&v90, 2, "\tIncorrect record type for link=%u for inode=%u (expected=2, found=%u)\n");
          }

          goto LABEL_57;
        }

        if ((v94[0] & 0x200000) == 0)
        {
          sub_10000BC9C(a1, a5, v59, v60, v61, v62, v63, v64);
          if (sub_10002D444() >= 3)
          {
            v90 = xmmword_100043460;
            v91 = *&qword_100043470;
            v92 = xmmword_100043480;
            v93 = *&off_100043490;
            sub_10002D0E8(&v90, 2, "\tIncorrect flag for link=%u for inode=%u (found=0x%x)\n");
          }

          goto LABEL_57;
        }

        if (a5)
        {
          v65 = v57;
          if (v96 != 0x4D41435366647270 || (SWORD4(v96) & 0x80000000) == 0)
          {
            sub_10000BE6C(a1, v94[2], a5);
            if (sub_10002D444() >= 3)
            {
              v90 = xmmword_100043460;
              v91 = *&qword_100043470;
              v92 = xmmword_100043480;
              v93 = *&off_100043490;
              sub_10002D0E8(&v90, 2, "\tdirlink: fdType = 0x%08lx, fdCreator = 0x%08lx\n", v96, DWORD1(v96));
            }
          }

          v66 = v16;
          if (HIDWORD(v95) != v16)
          {
            sub_10000BC9C(a1, a5, v59, v60, v61, v62, v63, v64);
            v83 = sub_10002D444();
            if (v83 >= 3)
            {
              v90 = xmmword_100043460;
              v91 = *&qword_100043470;
              v92 = xmmword_100043480;
              v93 = *&off_100043490;
              sub_10002D0E8(&v90, 2, "\tIncorrect dirinode ID for dirlink=%u (expected=%u, found=%u)\n");
            }

LABEL_57:
            v51 = 1;
            goto LABEL_63;
          }
        }

        else
        {
          v65 = v57;
          if (v96 != 0x6866732B686C6E6BLL)
          {
            sub_10000BE6C(a1, v94[2], 0);
            if (sub_10002D444() >= 3)
            {
              v90 = xmmword_100043460;
              v91 = *&qword_100043470;
              v92 = xmmword_100043480;
              v93 = *&off_100043490;
              sub_10002D0E8(&v90, 2, "\tfilelink: fdType = 0x%08lx, fdCreator = 0x%08lx\n", v96, DWORD1(v96));
            }
          }

          v66 = v85;
          if (HIDWORD(v95) != v85)
          {
            sub_10000BC9C(a1, 0, v59, v60, v61, v62, v63, v64);
            if (sub_10002D444() >= 3)
            {
              v90 = xmmword_100043460;
              v91 = *&qword_100043470;
              v92 = xmmword_100043480;
              v93 = *&off_100043490;
              sub_10002D0E8(&v90, 2, "\tIncorrect link reference number for filelink=%u (expected=%u, found=%u)\n");
            }

            goto LABEL_57;
          }
        }

        sub_1000219E0(a2, v53 | (v66 << 32));
        if (v65 != v95)
        {
          sub_10000BC9C(a1, a5, v67, v68, v69, v70, v71, v72);
          if (sub_10002D444() >= 3)
          {
            v90 = xmmword_100043460;
            v91 = *&qword_100043470;
            v92 = xmmword_100043480;
            v93 = *&off_100043490;
            sub_10002D0E8(&v90, 2, "\tIncorrect prevLinkID for link=%u for inode=%u (expected=%u, found=%u)\n");
          }

          goto LABEL_57;
        }

        v73 = v54;
        if (v54)
        {
          while (*v73 != v53)
          {
            v73 = v73[1];
            if (!v73)
            {
              goto LABEL_48;
            }
          }

          if (sub_10002D444() >= 3)
          {
            v90 = xmmword_100043460;
            v91 = *&qword_100043470;
            v92 = xmmword_100043480;
            v93 = *&off_100043490;
            sub_10002D0E8(&v90, 2, "\tDuplicate link=%u found in list for inode=%u\n", v53, v16);
          }

          sub_10000BC9C(a1, a5, v76, v77, v78, v79, v80, v81);
          goto LABEL_57;
        }

LABEL_48:
        v74 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
        if (!v74)
        {
          v51 = 12;
          goto LABEL_63;
        }

        v75 = v74;
        *v74 = v53;
        v74[1] = v54;
        ++v55;
        v128[0] = DWORD1(v95);
        v54 = v74;
        v56 = v53;
        v53 = DWORD1(v95);
        if (!DWORD1(v95))
        {
          goto LABEL_52;
        }
      }

      v51 = v58;
      sub_10000BC9C(a1, a5, v59, v60, v61, v62, v63, v64);
      if (sub_10002D444() >= 3)
      {
        v90 = xmmword_100043460;
        v91 = *&qword_100043470;
        v92 = xmmword_100043480;
        v93 = *&off_100043490;
        sub_10002D0E8(&v90, 2, "\tError getting link=%u for inode=%u\n", v53, v16);
      }
    }

    else
    {
      v55 = 0;
      v75 = 0;
LABEL_52:
      if (v18 == v55)
      {
        v51 = 0;
      }

      else
      {
        sub_10000BC9C(a1, a5, v45, v46, v47, v48, v49, v50);
        if (sub_10002D444() >= 3)
        {
          v90 = xmmword_100043460;
          v91 = *&qword_100043470;
          v92 = xmmword_100043480;
          v93 = *&off_100043490;
          sub_10002D0E8(&v90, 2, "\tIncorrect linkCount for inode=%u (expected=%u, found=%u)\n", v16, v55, v18);
        }

        v51 = 1;
      }

      v54 = v75;
    }

LABEL_63:
    if (v54)
    {
      do
      {
        v82 = v54[1];
        free(v54);
        v54 = v82;
      }

      while (v82);
    }
  }

  return v51;
}

uint64_t sub_10000CE28(uint64_t a1)
{
  sub_100020B5C();
  if (!v8 || !*(a1 + 5736) && !*(a1 + 5744) && !*(a1 + 5740))
  {
    return 0;
  }

  v128 = 0;
  memset(v134, 0, sizeof(v134));
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  memset(v127, 0, sizeof(v127));
  v126 = 0;
  v9 = (a1 + 872);
  v10 = *(a1 + 888);
  v200 = *(a1 + 872);
  v201 = v10;
  v11 = *(a1 + 920);
  v202 = *(a1 + 904);
  v203 = v11;
  sub_10002D0A4(&v200, 212, v2, v3, v4, v5, v6, v7, v116);
  if (sub_10002D444() >= 3)
  {
    v18 = *(a1 + 5736);
    v19 = *(a1 + 5744);
    v20 = *(a1 + 5740);
    v200 = xmmword_100043460;
    v201 = *&qword_100043470;
    v202 = xmmword_100043480;
    v203 = *&off_100043490;
    sub_10002D0E8(&v200, 2, "\tprivdir_valence=%u, calc_dirlinks=%u, calc_dirinode=%u\n", v18, v19, v20);
  }

  if (!*(a1 + 5732))
  {
    v21 = *(a1 + 888);
    v200 = *v9;
    v201 = v21;
    v22 = *(a1 + 920);
    v202 = *(a1 + 904);
    v203 = v22;
    sub_10002D0A4(&v200, 4294966704, v12, v13, v14, v15, v16, v17, v117);
    *(a1 + 28) |= 4u;
  }

  v23 = malloc_type_calloc(1uLL, 0x3A8uLL, 0x1000040B15B9DBAuLL);
  if (!v23)
  {
    return 12;
  }

  v24 = v23;
  v25 = malloc_type_calloc(1uLL, 0x3A8uLL, 0x1000040B15B9DBAuLL);
  if (!v25)
  {
    v35 = 12;
    v36 = v24;
    goto LABEL_147;
  }

  v125 = v25;
  v28 = sub_100012A1C(*(a1 + 792), -32767, v127, v134, &v126, &v128, v26, v27);
  if (v28)
  {
    v35 = v28;
    goto LABEL_146;
  }

  v123 = v24;
  do
  {
    if (LOWORD(v134[0]) == 2)
    {
      if ((v134[0] & 0x200000) != 0)
      {
        v39 = v136 == 1717858928 && DWORD1(v136) == 1296122707;
        if (v39 && *(v127 + 2) != *(a1 + 5728))
        {
          sub_1000219E0(v125, v134[2] | (HIDWORD(v135) << 32));
          v43 = BYTE9(v135);
          if ((BYTE9(v135) & 2) == 0)
          {
            sub_10000BD14(a1, v134[2], BYTE9(v135), BYTE9(v135) | 2, 0);
          }

          if (v136 != 0x4D41435366647270 || (SWORD4(v136) & 0x80000000) == 0)
          {
            sub_10000BE6C(a1, v134[2], 1);
          }

          v44 = *(v127 + 2);
          if (*(v127 + 2) != 2)
          {
            v230 = 0u;
            v231 = 0u;
            v228 = 0u;
            v229 = 0u;
            v226 = 0u;
            v227 = 0u;
            v224 = 0u;
            v225 = 0u;
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v210 = 0u;
            v211 = 0u;
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v199 = 0u;
            v198 = 0u;
            v197 = 0u;
            v196 = 0u;
            v195 = 0u;
            v194 = 0u;
            v193 = 0u;
            v192 = 0u;
            v191 = 0u;
            v190 = 0u;
            v189 = 0u;
            v188 = 0u;
            v187 = 0u;
            v186 = 0u;
            v185 = 0u;
            v184 = 0u;
            v183 = 0u;
            v182 = 0u;
            v181 = 0u;
            v180 = 0u;
            v179 = 0u;
            v178 = 0u;
            v177 = 0u;
            v176 = 0u;
            v175 = 0u;
            v174 = 0u;
            v173 = 0u;
            v172 = 0u;
            v171 = 0u;
            v170 = 0u;
            v169 = 0u;
            v168 = 0u;
            v129 = 0;
            while (1)
            {
              if (v44 == *(a1 + 5732))
              {
                v64 = v44;
                goto LABEL_55;
              }

              if (sub_10000B770(a1, v44, 1, &v168, &v200, &v129) || v200 != 1)
              {
                break;
              }

              v45 = WORD1(v200);
              if ((BYTE2(v200) & 0x40) == 0)
              {
                v46 = sub_10001F024(a1, 0);
                if (v46)
                {
                  v47 = v46;
                  *(v46 + 4) = 589;
                  v46[2] = v45 | 0x40;
                  v46[3] = v45;
                  *(v46 + 10) = v44;
                  *(a1 + 28) |= 8u;
                  if (sub_10001EF18(a1, v46) == 1)
                  {
                    sub_10001EFB0(a1, v47);
                  }

                  else
                  {
                    v54 = *(a1 + 888);
                    v130 = *v9;
                    v131 = v54;
                    v55 = *(a1 + 920);
                    v132 = *(a1 + 904);
                    v133 = v55;
                    sub_10002D0A4(&v130, 589, v48, v49, v50, v51, v52, v53, v44);
                    snprintf(&__str, 0xCuLL, "0x%x", v45 | 0x40);
                    snprintf(v165, 0xCuLL, "0x%x", v45);
                    v56 = *(a1 + 888);
                    v130 = *v9;
                    v131 = v56;
                    v57 = *(a1 + 920);
                    v132 = *(a1 + 904);
                    v133 = v57;
                    sub_10002D0A4(&v130, 559, v58, v59, v60, v61, v62, v63, &__str);
                  }

                  v24 = v123;
                }
              }

              v44 = *(&v168 + 2);
              if (*(&v168 + 2) == 2)
              {
                goto LABEL_57;
              }
            }

            v64 = *(a1 + 5732);
LABEL_55:
            if (v44 != v64)
            {
              v65 = *(a1 + 888);
              v130 = *v9;
              v131 = v65;
              v66 = *(a1 + 920);
              v132 = *(a1 + 904);
              v133 = v66;
              sub_10002D0A4(&v130, 4294966706, v43, v40, v41, v42, v33, v34, v44);
              *(a1 + 24) |= 0x800u;
            }
          }
        }
      }
    }

    else if (LOWORD(v134[0]) == 1)
    {
      v37 = v134[2];
      if (v134[2] == *(a1 + 5732) && ((BYTE9(v135) & 2) == 0 || (WORD5(v135) & 0x200) == 0))
      {
        sub_10001ECB0(a1, 582, v29, v30, v31, v32, v33, v34);
        v38 = sub_10001F024(a1, 0);
        if (v38)
        {
          *(v38 + 4) = 582;
          *(v38 + 10) = v37;
          *(a1 + 28) |= 8u;
        }
      }

      if (((v134[0] & 0x200000) != 0 || *(v127 + 2) == *(a1 + 5732)) && sub_10000C570(a1, v24, v134, v127, 1))
      {
        goto LABEL_59;
      }
    }

LABEL_57:
    v67 = sub_100012A1C(*(a1 + 792), 1, v127, v134, &v126, &v128, v33, v34);
  }

  while (!v67);
  v35 = v67;
  if (v67 != 32)
  {
    goto LABEL_146;
  }

LABEL_59:
  if ((*(a1 + 28) & 1) == 0)
  {
    if (sub_100021BFC(v24, v125))
    {
      sub_10000BC9C(a1, 1, v68, v69, v70, v71, v72, v73);
      if (sub_10002D444() >= 3)
      {
        v200 = xmmword_100043460;
        v201 = *&qword_100043470;
        v202 = xmmword_100043480;
        v203 = *&off_100043490;
        sub_10002D0E8(&v200, 2, "\tdirlink prime buckets do not match\n");
      }
    }
  }

  v74 = malloc_type_malloc(0x1000uLL, 0x100004000313F17uLL);
  v167 = v74;
  if (!v74)
  {
    goto LABEL_145;
  }

  v75 = v74;
  if (*(a1 + 5740))
  {
    v76 = *(a1 + 5740);
  }

  else
  {
    v76 = 1024;
  }

  v77 = malloc_type_malloc(4 * v76, 0x100004052888210uLL);
  if (!v77)
  {
    if (sub_10002D444() >= 3)
    {
      v200 = xmmword_100043460;
      v201 = *&qword_100043470;
      v202 = xmmword_100043480;
      v203 = *&off_100043490;
      sub_10002D0E8(&v200, 2, "\tcheck_loops: Allocation failed for visited list\n");
    }

    v76 = 0;
  }

  v118 = v76;
  v119 = 0;
  v78 = 2;
  __str = 2;
  v79 = *(a1 + 5732);
  if (!v79)
  {
    v79 = 2;
  }

  *v75 = v79;
  v75[1] = v79;
  *(v75 + 1) = 0;
  v120 = v77;
  v121 = 512;
  while (2)
  {
    v124 = v75;
    v80 = &v75[2 * (v78 - 1)];
    v83 = v80[1];
    v81 = v80 + 1;
    v82 = v83;
    v84 = v75[2 * (v78 - 2)];
    *v165 = 0;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v85 = *(a1 + 792);
    v122 = v80;
    if (!v83)
    {
      v86 = 1;
      goto LABEL_80;
    }

    bzero(&v200, 0x220uLL);
    *&v130 = &v168;
    *(&v130 + 1) = 0x100000208;
    sub_10001F16C(v82, 0, 1, &v201 + 4);
    if (sub_1000052E0(v85, &v200, 0, &v130, v165, &v200) || v168 - 5 < 0xFFFFFFFE || (bzero(&v200, 0x220uLL), *&v130 = &v168, *(&v130 + 1) = 0x100000208, v86 = 1, sub_10001F16C(DWORD1(v168), &v168 + 8, 1, &v201 + 4), sub_1000052E0(v85, &v200, 0xFFFFFFFFLL, &v130, v165, &v200)))
    {
      v86 = 0;
LABEL_80:
      bzero(&v200, 0x220uLL);
      *&v130 = &v168;
      *(&v130 + 1) = 0x100000208;
      sub_10001F16C(v84, 0, 1, &v201 + 4);
      if ((sub_1000052E0(v85, &v200, 0, &v130, v165, &v200) & 0xFFFFFFDF) == 0)
      {
        goto LABEL_81;
      }

LABEL_133:
      v75 = v124;
      v98 = (v78 - 1);
      LODWORD(__str) = v78 - 1;
      v167 = v124;
      goto LABEL_139;
    }

    do
    {
      while (1)
      {
LABEL_81:
        v93 = sub_100005678(v85, 1u, &v200, &v130, v165, v87, v88, v89);
        if (v93)
        {
          if (v93 != 32)
          {
            goto LABEL_133;
          }

LABEL_97:
          v75 = v124;
          goto LABEL_98;
        }

        if (*(&v201 + 6) != v84)
        {
          goto LABEL_97;
        }

        if (v168 != 2)
        {
          break;
        }

        if ((BYTE2(v168) & 0x20) != 0)
        {
          v94 = v171 == 1717858928 && DWORD1(v171) == 1296122707;
          if (v94 && *(a1 + 5728) != v84)
          {
            if (v86)
            {
              v95 = 0;
              v96 = HIDWORD(v170);
              v97 = DWORD2(v168);
              goto LABEL_102;
            }

LABEL_86:
            v86 = DWORD2(v168) == v82;
          }
        }
      }
    }

    while (v168 != 1);
    if (!v86)
    {
      goto LABEL_86;
    }

    v96 = DWORD2(v168);
    v95 = (BYTE2(v168) & 0x20) == 0;
    v97 = DWORD2(v168);
LABEL_102:
    v75 = v124;
    v99 = (v78 - 1);
    v100 = v124;
    if (!v96)
    {
LABEL_98:
      v98 = (v78 - 1);
      goto LABEL_99;
    }

    do
    {
      v101 = *v100;
      v100 += 2;
      if (v101 == v96)
      {
        v98 = (v78 - 1);
        LODWORD(__str) = v78 - 1;
        v167 = v124;
        v111 = *(a1 + 888);
        v200 = *v9;
        v201 = v111;
        v112 = *(a1 + 920);
        v202 = *(a1 + 904);
        v203 = v112;
        sub_10002D0A4(&v200, 4294966758, v90, v91, v92, v87, v88, v89, v117);
        if (sub_10002D444() >= 3)
        {
          v200 = xmmword_100043460;
          v201 = *&qword_100043470;
          v202 = xmmword_100043480;
          v203 = *&off_100043490;
          sub_10002D0E8(&v200, 2, "\tDetected when adding (%u,%u) to following traversal stack -\n", v96, v97);
          sub_10000D9EC(&__str);
        }

        *(a1 + 28) |= 4u;
        goto LABEL_139;
      }

      --v99;
    }

    while (v99);
    *v122 = v96;
    *v81 = v97;
    if (v121 == v78)
    {
      v102 = malloc_type_realloc(v124, 8 * (v121 + 512), 0x100004000313F17uLL);
      if (!v102)
      {
        LODWORD(v98) = v78;
        break;
      }

      v75 = v102;
      v121 += 512;
    }

    if (v120)
    {
      v103 = v95;
    }

    else
    {
      v103 = 1;
    }

    if (v103)
    {
      goto LABEL_129;
    }

    if (HIDWORD(v119) == 1)
    {
      v104 = v118;
    }

    else
    {
      v104 = v119;
    }

    if (!v104)
    {
LABEL_119:
      if (v119 >= v118)
      {
        v107 = 1;
      }

      else
      {
        v107 = HIDWORD(v119);
      }

      if (v119 >= v118)
      {
        v108 = 0;
      }

      else
      {
        v108 = v119;
      }

      v120[v108] = v96;
      if (v119 < v118)
      {
        v109 = v119 + 1;
      }

      else
      {
        v109 = 1;
      }

      v119 = __PAIR64__(v107, v109);
LABEL_129:
      *&v75[2 * v78] = 0;
      v98 = (v78 + 1);
      if (v121 != v98)
      {
        goto LABEL_99;
      }

      v110 = malloc_type_realloc(v75, 8 * (v121 + 512), 0x100004000313F17uLL);
      if (v110)
      {
        v75 = v110;
        v121 += 512;
        goto LABEL_99;
      }

      break;
    }

    v105 = v120;
    while (1)
    {
      v106 = *v105++;
      if (v106 == v96)
      {
        break;
      }

      if (!--v104)
      {
        goto LABEL_119;
      }
    }

    v98 = v78;
LABEL_99:
    v78 = v98;
    if (v98 >= 2)
    {
      continue;
    }

    break;
  }

  LODWORD(__str) = v98;
  v167 = v75;
  v98 = v98;
LABEL_139:
  v24 = v123;
  if (v121 <= v98)
  {
    v113 = *(a1 + 888);
    v200 = *v9;
    v201 = v113;
    v114 = *(a1 + 920);
    v202 = *(a1 + 904);
    v203 = v114;
    sub_10002D0A4(&v200, 4294966705, v90, v91, v92, v87, v88, v89, v117);
    if (sub_10002D444() >= 3)
    {
      sub_10000D9EC(&__str);
    }

    *(a1 + 28) |= 4u;
  }

  free(v75);
  if (v120)
  {
    free(v120);
  }

LABEL_145:
  v35 = 0;
LABEL_146:
  free(v24);
  v36 = v125;
LABEL_147:
  free(v36);
  return v35;
}

uint64_t sub_10000D9EC(unsigned int *a1)
{
  v7 = xmmword_100043460;
  v8 = *&qword_100043470;
  v9 = xmmword_100043480;
  v10 = *&off_100043490;
  sub_10002D0E8(&v7, 2, "\t");
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = (*(a1 + 1) + v2);
      v5 = *v4;
      LODWORD(v4) = v4[1];
      v7 = xmmword_100043460;
      v8 = *&qword_100043470;
      v9 = xmmword_100043480;
      v10 = *&off_100043490;
      sub_10002D0E8(&v7, 2, "(%u,%u) ", v5, v4);
      ++v3;
      v2 += 8;
    }

    while (v3 < *a1);
  }

  v7 = xmmword_100043460;
  v8 = *&qword_100043470;
  v9 = xmmword_100043480;
  v10 = *&off_100043490;
  return sub_10002D0E8(&v7, 2, "\n");
}

uint64_t sub_10000DAD0(uint64_t a1, void *a2)
{
  memset(v47, 0, 512);
  memset(v46, 0, 512);
  if (sub_10000DD80(a1, v47))
  {
    v4 = 0;
  }

  else
  {
    v4 = v47[2];
  }

  v5 = malloc_type_malloc(0x20uLL, 0x10200400A8B189CuLL);
  if (v5)
  {
    v6 = v5;
    *v5 = v4;
    v7 = v47[3];
    if (!v4)
    {
      v7 = 0;
    }

    v5[4] = v7;
    sub_100020B5C();
    if (v8)
    {
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
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0;
      v9 = sub_10000B770(a1, 2, v8, &v14, v46, &v13);
      v10 = 0;
      if (!v9)
      {
        v10 = v46[3];
      }
    }

    else
    {
      v10 = 0;
    }

    v6[5] = v10;
    *(v6 + 1) = a1;
    *(a1 + 5728) = v4;
    v12 = malloc_type_calloc(1uLL, 0x3A8uLL, 0x1000040B15B9DBAuLL);
    *(v6 + 3) = v12;
    if (!v12 && sub_10002D444() >= 3)
    {
      v14 = xmmword_100043460;
      v15 = *&qword_100043470;
      v16 = xmmword_100043480;
      v17 = *&off_100043490;
      sub_10002D0E8(&v14, 2, "HardLinkCheckBegin: prime bucket allocation failed\n");
    }

    result = 0;
    *a2 = v6;
  }

  else
  {
    if (sub_10002D444() >= 3)
    {
      v14 = xmmword_100043460;
      v15 = *&qword_100043470;
      v16 = xmmword_100043480;
      v17 = *&off_100043490;
      sub_10002D0E8(&v14, 2, "hardLinkCheckBegin:  malloc(%zu) failed\n", 0x20uLL);
    }

    return 1;
  }

  return result;
}

uint64_t sub_10000DD80(uint64_t a1, uint64_t a2)
{
  sub_100020B5C();
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7[0] = a2;
  v7[1] = 0x100000208;
  bzero(v8, 0x220uLL);
  memcpy(v9, &unk_10004004C, sizeof(v9));
  return sub_1000052E0(*(a1 + 792), v8, 0xFFFFFFFFLL, v7, &v6, v8);
}

void sub_10000DE44(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t sub_10000DE8C(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = qword_100043428;
  if (!qword_100043428)
  {
    v4 = malloc_type_calloc(0x101uLL, 8uLL, 0x2004093837F09uLL);
    qword_100043428 = v4;
    if (!v4)
    {
      return 12;
    }
  }

  v5 = v4[v3 % 0x101];
  if (v5)
  {
    while (*v5 != v3)
    {
      v5 = *(v5 + 2);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_7;
  }

LABEL_6:
  v5 = sub_10000DF3C(v3);
  if (!v5)
  {
    return 12;
  }

LABEL_7:
  v6 = 0;
  v5[1] = a2;
  return v6;
}

_DWORD *sub_10000DF3C(unsigned int a1)
{
  result = malloc_type_malloc(0x18uLL, 0x10200406E52F545uLL);
  if (result)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a1;
    v3 = qword_100043428;
    *(result + 2) = *(qword_100043428 + 8 * (a1 % 0x101));
    *(v3 + 8 * (a1 % 0x101)) = result;
    ++dword_100043430;
  }

  return result;
}

uint64_t sub_10000DFBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4 && ((*(a2 + 2) & 0x20) != 0 || *(a2 + 32) || *(a2 + 36)))
  {
    result = sub_10000C564(v4, *(a2 + 44), *(a2 + 8));
    if ((*(a2 + 2) & 0x20) == 0)
    {
      result = sub_10000BC9C(*(a1 + 8), 0, v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {
    v12 = *(a2 + 44);
    result = qword_100043428;
    if (qword_100043428 || (result = malloc_type_calloc(0x101uLL, 8uLL, 0x2004093837F09uLL), (qword_100043428 = result) != 0))
    {
      result = *(result + 8 * (v12 % 0x101));
      if (result)
      {
        while (*result != v12)
        {
          result = *(result + 16);
          if (!result)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        result = sub_10000DF3C(v12);
        if (!result)
        {
          goto LABEL_14;
        }
      }

      ++*(result + 8);
    }
  }

LABEL_14:
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(a2 + 12);
    if (v14 != v13)
    {
      v15 = *(a1 + 20);
      if (v15)
      {
        if (v14 != v15)
        {
          if (byte_10004350E)
          {
            v16 = *(a2 + 8);
            v37 = xmmword_100043460;
            v38 = *&qword_100043470;
            v39 = xmmword_100043480;
            v40 = *&off_100043490;
            sub_10002D0E8(&v37, 2, "Hard Link catalog entry %u has bad time %u (should be %u, or at least %u)\n", v16, v14, v13, v15);
            v13 = *(a1 + 16);
          }

          result = sub_10001F024(*(a1 + 8), 0);
          if (result)
          {
            v23 = result;
            v24 = (*(a1 + 8) + 872);
            v25 = *(*(a1 + 8) + 888);
            v37 = *v24;
            v38 = v25;
            v26 = v24[3];
            v39 = v24[2];
            v40 = v26;
            sub_10002D0A4(&v37, 610, v17, v18, v19, v20, v21, v22, v36);
            snprintf(__str, 0xCuLL, "%u", v13);
            snprintf(v41, 0xCuLL, "%u", *(a2 + 12));
            v27 = (*(a1 + 8) + 872);
            v28 = *(*(a1 + 8) + 888);
            v37 = *v27;
            v38 = v28;
            v29 = v27[3];
            v39 = v27[2];
            v40 = v29;
            result = sub_10002D0A4(&v37, 559, v30, v31, v32, v33, v34, v35, __str);
            *(v23 + 8) = 610;
            *(v23 + 40) = *(a2 + 8);
            *(v23 + 16) = *(a1 + 16);
            *(v23 + 24) = *(a2 + 12);
          }

          else if (byte_10004350E)
          {
            v37 = xmmword_100043460;
            v38 = *&qword_100043470;
            v39 = xmmword_100043480;
            v40 = *&off_100043490;
            return sub_10002D0E8(&v37, 2, "Unable to allocate hard link time repair order!");
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000E250(uint64_t a1, uint64_t a2)
{
  v139 = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109[1] = 0u;
  v110 = 0u;
  v3 = 5732;
  if (!a2)
  {
    v3 = 5728;
  }

  v109[0] = 0uLL;
  if (a2)
  {
    v4 = "dir_";
  }

  else
  {
    v4 = "iNode";
  }

  v102 = 0;
  v5 = *(a1 + v3);
  if (v5)
  {
    v7 = sub_10000DD80(a1, v109);
    if (DWORD1(v109[0]))
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = DWORD1(v109[0]) + 10;
    if (!v8)
    {
      v9 = 1000;
    }

    v10 = 1;
    do
    {
      v11 = v10;
      v10 *= 2;
    }

    while (v11 <= v9);
    v12 = (v11 << (v11 < v9 / 3 + v9));
    v13 = malloc_type_calloc(v12, 0x18uLL, 0x10200406E52F545uLL);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 792);
      bzero(&v105, 0x220uLL);
      sub_10001F16C(2, 0, 1, &v106 + 4);
      v103 = v109;
      v104 = 0x100000208;
      v22 = sub_100005678(v15, 0, &v105, &v103, &v102, v16, v17, v18);
      v92 = 0;
      v23 = 0;
      v89 = v12 - 1;
      for (i = v15; !v22; v22 = sub_100005678(v15, 1u, &v105, &v103, &v102, v19, v20, v21))
      {
        if (LOWORD(v109[0]) == 2)
        {
          if (a2)
          {
            v24 = v111 == 1717858928 || DWORD1(v111) == 1296122707;
            if (!v24 && (SWORD4(v111) & 0x80000000) == 0)
            {
              continue;
            }

            if (*(&v106 + 6) == *(a1 + 5728))
            {
              continue;
            }

            v25 = HIDWORD(v110);
            v26 = WORD1(v109[0]);
            if (HIDWORD(v110) <= 0xF && (BYTE2(v109[0]) & 0x20) == 0)
            {
              continue;
            }
          }

          else
          {
            if (v111 != 1751936619 || DWORD1(v111) != 1751544619)
            {
              continue;
            }

            v26 = WORD1(v109[0]);
            v25 = HIDWORD(v110);
          }

          v28 = DWORD2(v109[0]);
          if ((v26 & 0x20) == 0)
          {
            sub_10000B9E8(a1, DWORD2(v109[0]), a2, v26, v26 | 0x20, v19, v20, v21);
          }

          if (a2)
          {
            if ((BYTE9(v110) & 2) == 0)
            {
              sub_10000BD14(a1, DWORD2(v109[0]), BYTE9(v110), BYTE9(v110) | 2, 1);
            }

            if (v111 != 0x4D41435366647270 || (SWORD4(v111) & 0x80000000) == 0)
            {
              sub_10000BE6C(a1, DWORD2(v109[0]), 1);
            }
          }

          __n = v28;
          v29 = sub_10000EC24(v25, v12, v92, v14);
          if (v29)
          {
            v30 = v29;
            v31 = *(v29 + 4) + 1;
            *(v29 + 4) = v31;
          }

          else
          {
            v32 = v25 & v89;
            v33 = ((v25 & v89) + v89) % v12;
            if ((v25 & v89) != v33)
            {
              while (1)
              {
                v34 = &v14[3 * v32];
                if ((v34[1] & 1) == 0 || *v34 == v25)
                {
                  break;
                }

                v32 = (v32 + 1) % v12;
                if (v32 == v33)
                {
                  v32 = ((v25 & v89) + v89) % v12;
                  break;
                }
              }
            }

            v35 = &v14[3 * v32];
            v36 = *(v35 + 2);
            if (v36)
            {
              if (*v35 != v25)
              {
                *__s1 = xmmword_100043460;
                v141 = *&qword_100043470;
                v142 = xmmword_100043480;
                v143 = *&off_100043490;
                sub_10002D0E8(__s1, 2, "hash table full (%d entries) \n", v92);
                exit(14);
              }

              *__s1 = xmmword_100043460;
              v141 = *&qword_100043470;
              v142 = xmmword_100043480;
              v143 = *&off_100043490;
              sub_10002D0E8(__s1, 2, "hash: duplicate insert! (%d)\n");
LABEL_142:
              exit(13);
            }

            if (v35[2])
            {
              *__s1 = xmmword_100043460;
              v141 = *&qword_100043470;
              v142 = xmmword_100043480;
              v143 = *&off_100043490;
              sub_10002D0E8(__s1, 2, "hash: overwriting data! (old:%u, new:%u)\n");
              goto LABEL_142;
            }

            *v35 = v25;
            *(v35 + 1) = 1;
            *(v35 + 2) = v36 | 1;
            v37 = sub_10000EC24(v25, v12, ++v92, v14);
            if (!v37)
            {
              v22 = 2;
              goto LABEL_83;
            }

            v30 = v37;
            ++v23;
            v31 = *(v37 + 4);
          }

          v38 = v31 - 1;
          HIDWORD(v39) = -858993459 * (v31 - 1) + 429496728;
          LODWORD(v39) = HIDWORD(v39);
          if ((v39 >> 1) <= 0x19999998)
          {
            v93 = v14;
            v40 = v31 + 9;
            v41 = malloc_type_realloc(*(v30 + 16), 12 * (v31 + 9), 0x10000403E1C8BA9uLL);
            if (!v41)
            {
              free(*(v30 + 16));
              *(v30 + 16) = 0;
              v22 = 12;
              v14 = v93;
              goto LABEL_83;
            }

            *(v30 + 16) = v41;
            v42 = v38 < v40;
            v14 = v93;
            if (v42)
            {
              v43 = 12 * v38;
              v44 = 10;
              do
              {
                v45 = *(v30 + 16) + v43;
                *(v45 + 8) = 0;
                *v45 = 0;
                v43 += 12;
                --v44;
              }

              while (v44);
            }
          }

          v46 = *(v30 + 16);
          if (v46)
          {
            v47 = (v46 + 12 * v38);
            v47[1] = __n;
            *v47 = v110;
            v47[2] = DWORD1(v110);
          }

          v15 = i;
        }
      }

      if (v22 == 32)
      {
        bzero(&v105, 0x220uLL);
        sub_10001F16C(v5, 0, 1, &v106 + 4);
        v103 = v109;
        v104 = 0x100000208;
        v48 = sub_1000052E0(v15, &v105, 0xFFFFFFFFLL, &v103, &v102, &v105);
        if (!v48)
        {
          v68 = 4;
          if (!a2)
          {
            v68 = 5;
          }

          __na = v68;
          v88 = v5;
          do
          {
            v101 = 0;
            if (LOWORD(v109[0]) - 3 < 2)
            {
              goto LABEL_103;
            }

            if (*(&v106 + 6) != v5)
            {
              v55 = 0;
              goto LABEL_65;
            }

            v70 = a2 || LOWORD(v109[0]) == 2;
            v71 = !v70;
            if (LOWORD(v109[0]) == 1 || a2 == 0)
            {
              v69 = i;
              if (!v71)
              {
                sub_10001EAF0(&v106 + 12, 2 * WORD5(v106), __s1, &v101, 0x40uLL);
                __s1[v101] = 0;
                if (!strncmp(__s1, v4, __na))
                {
                  v5 = DWORD2(v109[0]);
                  LODWORD(v73) = DWORD2(v109[0]);
                  if (!a2)
                  {
                    v73 = atol(&__s1[5]);
                    if (HIDWORD(v73))
                    {
                      if (sub_10002D444() < 3)
                      {
                        v55 = 22;
                      }

                      else
                      {
                        v97 = xmmword_100043460;
                        v98 = *&qword_100043470;
                        v99 = xmmword_100043480;
                        v100 = *&off_100043490;
                        v55 = 22;
                        sub_10002D0E8(&v97, 2, "\tLink reference num=%ld is invalid for inode=%u result=%d\n", v73, v5, 22);
                      }

                      goto LABEL_65;
                    }
                  }

                  v74 = WORD1(v109[0]);
                  v80 = sub_10000EC24(v73, v12, v92, v14);
                  if ((v74 & 0x20) == 0)
                  {
                    sub_10000BB2C(a1, v5, a2, v74, v74 | 0x20, 1);
                  }

                  if (v80)
                  {
                    v96 = 0;
                    v81 = sub_10000C14C(a1, v109, v5, a2, &v96);
                    if (v81)
                    {
                      v85 = v81;
                      if (sub_10002D444() >= 3)
                      {
                        v97 = xmmword_100043460;
                        v98 = *&qword_100043470;
                        v99 = xmmword_100043480;
                        v100 = *&off_100043490;
                        sub_10002D0E8(&v97, 2, "\tError getting first link ID for inode = %u (result=%d)\n", v5, v85);
                      }
                    }

                    sub_10000ECA0(a1, v5, *(v80 + 16), *(v80 + 4), v96, v82, v83, v84);
                    v87 = *(v80 + 4);
                    v69 = i;
                    if (HIDWORD(v110) != v87)
                    {
                      sub_10000EFCC(a1, v5, HIDWORD(v110), v87, v86, v52, v53, v54);
                    }

                    *(v80 + 8) |= 2u;
                    --v23;
                    LODWORD(v5) = v88;
                  }

                  else
                  {
                    sub_10000F0F8(a1, a2, v5, v75, v76, v77, v78, v79);
                    LODWORD(v5) = v88;
                    v69 = i;
                  }
                }
              }
            }

            else
            {
LABEL_103:
              v69 = i;
            }

            v48 = sub_100005678(v69, 1u, &v105, &v103, &v102, v52, v53, v54);
          }

          while (!v48);
        }

        v55 = v48;
LABEL_65:
        v22 = v55 == 32 ? 0 : v55;
        if (!v22 && v23)
        {
          if (v12 < 1)
          {
            v22 = 0;
LABEL_88:
            free(v14);
            return v22;
          }

          v56 = 0;
          if (a2)
          {
            v57 = 604;
          }

          else
          {
            v57 = 603;
          }

          v94 = v14;
          do
          {
            v58 = &v14[3 * v56];
            if ((v58[1] & 3) == 1 && *(v58 + 1))
            {
              v59 = 0;
              v60 = 4;
              do
              {
                v61 = *(v58[2] + v60);
                v62 = *(a1 + 888);
                *__s1 = *(a1 + 872);
                v141 = v62;
                v63 = *(a1 + 920);
                v142 = *(a1 + 904);
                v143 = v63;
                sub_10002D0A4(__s1, v57, v49, v50, v51, v52, v53, v54, v61);
                v64 = sub_10001F024(a1, 0);
                if (v64)
                {
                  *(v64 + 4) = v57;
                  *(v64 + 10) = v61;
                  *(a1 + 28) |= 8u;
                }

                ++v59;
                v60 += 12;
              }

              while (v59 < *(v58 + 1));
            }

            ++v56;
            v14 = v94;
          }

          while (v56 != v12);
          v22 = 0;
        }
      }

LABEL_83:
      if (v12 >= 1)
      {
        v65 = v14 + 2;
        do
        {
          if (*v65)
          {
            free(*v65);
          }

          v65 += 3;
          --v12;
        }

        while (v12);
      }

      goto LABEL_88;
    }

    if (sub_10002D444() >= 3)
    {
      v105 = xmmword_100043460;
      v106 = *&qword_100043470;
      v107 = xmmword_100043480;
      v108 = *&off_100043490;
      sub_10002D0E8(&v105, 2, "RepairHardLinkChains:  calloc(%d, %zu) failed\n", v12, 0x18uLL);
    }

    return 12;
  }

  else if (sub_10002D444() < 3)
  {
    return 2;
  }

  else
  {
    v105 = xmmword_100043460;
    v106 = *&qword_100043470;
    v107 = xmmword_100043480;
    v108 = *&off_100043490;
    if (a2)
    {
      v66 = "\tPrivate directory for dirlinks not found.  Stopping repairs.\n";
    }

    else
    {
      v66 = "\tPrivate directory for filelinks not found.  Stopping repairs.\n";
    }

    v22 = 2;
    sub_10002D0E8(&v105, 2, v66);
  }

  return v22;
}

uint64_t sub_10000EC24(int a1, int a2, int a3, uint64_t a4)
{
  v4 = (a2 - 1) & a1;
  v5 = (a3 + v4 - 1) % a2;
  if (v4 != v5)
  {
    while (1)
    {
      v6 = a4 + 24 * v4;
      if ((*(v6 + 8) & 1) == 0 || *v6 == a1)
      {
        break;
      }

      v4 = (v4 + 1) % a2;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  v7 = a4 + 24 * v4;
  if ((*(v7 + 8) & 1) == 0 || *v7 != a1)
  {
    return 0;
  }

  return v7;
}

void sub_10000ECA0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t size, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v9 = a5;
    v10 = size;
    if (size >= 2)
    {
      v13 = malloc_type_calloc(0xCuLL, size, 0x78D0DFE2uLL);
      if (!v13)
      {
        return;
      }

      v14 = v13;
      qsort(a3, v10, 0xCuLL, sub_10000F880);
      v15 = 0;
      LODWORD(v16) = 0;
      do
      {
        v17 = &a3[3 * v15];
        if (v17[1])
        {
          LODWORD(v18) = v16 + 1;
          v19 = *v17;
          v20 = v17[2];
          v21 = &v14[12 * v16];
          *(v21 + 2) = v20;
          *v21 = v19;
          v17[1] = 0;
          if (v20)
          {
            v18 = v18;
            while (1)
            {
              v22 = 0;
              v23 = a3 + 1;
              while (*v23 != v20)
              {
                ++v22;
                v23 += 3;
                if (v10 == v22)
                {
                  goto LABEL_15;
                }
              }

              if (!v22)
              {
                break;
              }

              v16 = v18 + 1;
              v24 = *(v23 - 1);
              v20 = v23[1];
              v25 = &v14[12 * v18];
              *(v25 + 2) = v20;
              *v25 = v24;
              *v23 = 0;
              v18 = v16;
              if (!v20)
              {
                goto LABEL_16;
              }
            }

            LODWORD(v16) = v18;
          }

          else
          {
LABEL_15:
            LODWORD(v16) = v18;
          }
        }

LABEL_16:
        ++v15;
      }

      while (v15 != v10);
      memcpy(a3, v14, 12 * v10);
      free(v14);
    }

    v26 = *a3;
    if (v26)
    {
      sub_10000F610(a1, a3[1], v26, 0, a5, a6, a7, a8);
    }

    v27 = a3[1];
    if (v27 != v9)
    {
      v28 = *(a1 + 888);
      v47 = *(a1 + 872);
      v48 = v28;
      v29 = *(a1 + 920);
      v49 = *(a1 + 904);
      v50 = v29;
      sub_10002D0A4(&v47, 600, v26, size, a5, a6, a7, a8, a2);
      __sprintf_chk(v52, 0, 0x10uLL, "%u", v27);
      __sprintf_chk(v51, 0, 0x10uLL, "%u", v9);
      v30 = *(a1 + 888);
      v47 = *(a1 + 872);
      v48 = v30;
      v31 = *(a1 + 920);
      v49 = *(a1 + 904);
      v50 = v31;
      sub_10002D0A4(&v47, 559, v32, v33, v34, v35, v36, v37, v52);
      v38 = sub_10001F024(a1, 0);
      if (v38)
      {
        *(v38 + 4) = 600;
        v38[2] = v27;
        v38[3] = v9;
        *(v38 + 9) = 0;
        *(v38 + 10) = a2;
        *(a1 + 28) |= 8u;
      }
    }

    if (v10 >= 2)
    {
      v39 = a3 + 4;
      v40 = v10 - 1;
      do
      {
        v41 = *(v39 - 2);
        v42 = *v39;
        if (v41 != v42)
        {
          sub_10000F748(a1, *(v39 - 3), v41, v42, a5, a6, a7, a8);
        }

        v43 = *(v39 - 1);
        v44 = *(v39 - 3);
        if (v43 != v44)
        {
          sub_10000F610(a1, *v39, v43, v44, a5, a6, a7, a8);
        }

        v39 += 3;
        --v40;
      }

      while (v40);
    }

    v45 = &a3[3 * v10];
    v46 = *(v45 - 1);
    if (v46)
    {
      sub_10000F748(a1, *(v45 - 2), v46, 0, a5, a6, a7, a8);
    }
  }

  else if (sub_10002D444() >= 3)
  {
    v47 = xmmword_100043460;
    v48 = *&qword_100043470;
    v49 = xmmword_100043480;
    v50 = *&off_100043490;
    sub_10002D0E8(&v47, 2, "\tCheckHardLinkList: list=NULL for inodeID = %u\n", a2);
  }
}

void *sub_10000EFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v12 = (a1 + 872);
  v13 = *(a1 + 888);
  v24 = *(a1 + 872);
  v25 = v13;
  v14 = *(a1 + 920);
  v26 = *(a1 + 904);
  v27 = v14;
  sub_10002D0A4(&v24, 567, a3, a4, a5, a6, a7, a8, a2);
  __sprintf_chk(v29, 0, 0x10uLL, "%u", v8);
  __sprintf_chk(v28, 0, 0x10uLL, "%u", v9);
  v15 = v12[1];
  v24 = *v12;
  v25 = v15;
  v16 = v12[3];
  v26 = v12[2];
  v27 = v16;
  sub_10002D0A4(&v24, 559, v17, v18, v19, v20, v21, v22, v29);
  result = sub_10001F024(a1, 0);
  if (result)
  {
    *(result + 4) = 567;
    result[2] = v8;
    result[3] = v9;
    *(result + 9) = 0;
    *(result + 10) = v10;
  }

  return result;
}

void *sub_10000F0F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (a2)
  {
    v10 = 606;
  }

  else
  {
    v10 = 605;
  }

  v11 = *(a1 + 888);
  v14[0] = *(a1 + 872);
  v14[1] = v11;
  v12 = *(a1 + 920);
  v14[2] = *(a1 + 904);
  v14[3] = v12;
  sub_10002D0A4(v14, v10, a3, a4, a5, a6, a7, a8, a3);
  result = sub_10001F024(a1, 0);
  if (result)
  {
    *(result + 4) = v10;
    *(result + 10) = v8;
    *(a1 + 28) |= 8u;
  }

  return result;
}

uint64_t sub_10000F180(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  memset(v62, 0, 512);
  memset(v61, 0, 512);
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v51 = 0;
  v9 = *(a1 + 1);
  v10 = *(v9 + 888);
  v55 = *(v9 + 872);
  v56 = v10;
  v11 = *(v9 + 920);
  v57 = *(v9 + 904);
  v58 = v11;
  sub_10002D0A4(&v55, 207, a3, a4, a5, a6, a7, a8, v50);
  v12 = *a1;
  v13 = malloc_type_calloc(1uLL, 0x3A8uLL, 0x1000040B15B9DBAuLL);
  v14 = &unk_100043000;
  if (!v13)
  {
    if (sub_10002D444() >= 3)
    {
      v55 = xmmword_100043460;
      v56 = *&qword_100043470;
      v57 = xmmword_100043480;
      v58 = *&off_100043490;
      sub_10002D0E8(&v55, 2, "CheckHardLinks:  calloc(1, %zu) failed\n", 0x3A8uLL);
    }

    v19 = 12;
    goto LABEL_40;
  }

  v15 = *(v9 + 792);
  v53 = v62;
  v54 = 0x100000208;
  bzero(v61, 0x220uLL);
  sub_10001F16C(v12, 0, 1, &v61[1] + 4);
  v19 = sub_1000052E0(v15, v61, 0xFFFFFFFFLL, &v53, &v52, v61);
  if ((v19 & 0xFFFFFFDF) != 0)
  {
LABEL_40:
    if (v14[268])
    {
      for (i = 0; i != 257; ++i)
      {
        while (1)
        {
          v47 = (qword_100043428 + 8 * i);
          v48 = *v47;
          if (!*v47)
          {
            break;
          }

          *v47 = v48[2];
          free(v48);
        }
      }

      free(qword_100043428);
      qword_100043428 = 0;
      v14[268] = 0;
    }

    goto LABEL_46;
  }

  v20 = sub_100005678(v15, 1u, v61, &v53, &v52, v16, v17, v18);
  if (v20)
  {
LABEL_18:
    v19 = v20;
    if (v20 != 32)
    {
      goto LABEL_29;
    }
  }

  else
  {
    while (*(&v61[1] + 6) == v12)
    {
      if (LOWORD(v62[0]) == 2)
      {
        sub_10001EAF0(&v61[1] + 12, 2 * WORD5(v61[1]), &v59, &v51, 0x40uLL);
        *(&v59 + v51) = 0;
        if (v59 == 1886217588 && sub_10002D444() == 3)
        {
          v27 = *(v9 + 888);
          v55 = *(v9 + 872);
          v56 = v27;
          v28 = *(v9 + 920);
          v57 = *(v9 + 904);
          v58 = v28;
          sub_10002D0A4(&v55, 568, v24, v25, v26, v21, v22, v23, &v59);
        }

        else if (v59 == 1685016169 && v60 == 101)
        {
          v20 = sub_10000C570(v9, v13, v62, &v61[1] + 4, 0);
          if (v20)
          {
            goto LABEL_18;
          }

          LOBYTE(v59) = 0;
        }
      }

      v20 = sub_100005678(v15, 1u, v61, &v53, &v52, v21, v22, v23);
      if (v20)
      {
        goto LABEL_18;
      }
    }
  }

  v30 = *(a1 + 3);
  if (v30)
  {
    v19 = sub_100021BFC(v13, v30);
    if (v19)
    {
      sub_10000BC9C(v9, 0, v31, v32, v33, v34, v35, v36);
      if (sub_10002D444() >= 3)
      {
        v55 = xmmword_100043460;
        v56 = *&qword_100043470;
        v57 = xmmword_100043480;
        v58 = *&off_100043490;
        sub_10002D0E8(&v55, 2, "\tfilelink prime buckets do not match\n");
      }

      v14 = &unk_100043000;
      goto LABEL_40;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_29:
  v14 = &unk_100043000;
  if (dword_100043430)
  {
    if (sub_10002D444() >= 3)
    {
      v55 = xmmword_100043460;
      v56 = *&qword_100043470;
      v57 = xmmword_100043480;
      v58 = *&off_100043490;
      sub_10002D0E8(&v55, 2, "\tCheckHardLinks: found %u pre-Leopard file inodes.\n", dword_100043430);
    }

    v43 = 0;
    while (1)
    {
      v44 = *(qword_100043428 + 8 * v43);
      if (v44)
      {
        break;
      }

LABEL_37:
      if (++v43 == 257)
      {
        goto LABEL_40;
      }
    }

    while (1)
    {
      v45 = *(v44 + 4);
      if (!v45 || v45 != *(v44 + 8))
      {
        break;
      }

      v44 = *(v44 + 16);
      if (!v44)
      {
        goto LABEL_37;
      }
    }

    sub_10000BC9C(v9, 0, v37, v38, v39, v40, v41, v42);
    goto LABEL_40;
  }

LABEL_46:
  if (v13)
  {
    free(v13);
  }

  return v19;
}

void *sub_10000F610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v12 = (a1 + 872);
  v13 = *(a1 + 888);
  v24 = *(a1 + 872);
  v25 = v13;
  v14 = *(a1 + 920);
  v26 = *(a1 + 904);
  v27 = v14;
  sub_10002D0A4(&v24, 593, a3, a4, a5, a6, a7, a8, a2);
  __sprintf_chk(v29, 0, 0x10uLL, "%u", v8);
  __sprintf_chk(v28, 0, 0x10uLL, "%u", v9);
  v15 = v12[1];
  v24 = *v12;
  v25 = v15;
  v16 = v12[3];
  v26 = v12[2];
  v27 = v16;
  sub_10002D0A4(&v24, 559, v17, v18, v19, v20, v21, v22, v29);
  result = sub_10001F024(a1, 0);
  if (result)
  {
    *(result + 4) = 593;
    result[2] = v8;
    result[3] = v9;
    *(result + 9) = 0;
    *(result + 10) = v10;
    *(a1 + 28) |= 0x80u;
  }

  return result;
}

void *sub_10000F748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v12 = (a1 + 872);
  v13 = *(a1 + 888);
  v24 = *(a1 + 872);
  v25 = v13;
  v14 = *(a1 + 920);
  v26 = *(a1 + 904);
  v27 = v14;
  sub_10002D0A4(&v24, 594, a3, a4, a5, a6, a7, a8, a2);
  __sprintf_chk(v29, 0, 0x10uLL, "%u", v8);
  __sprintf_chk(v28, 0, 0x10uLL, "%u", v9);
  v15 = v12[1];
  v24 = *v12;
  v25 = v15;
  v16 = v12[3];
  v26 = v12[2];
  v27 = v16;
  sub_10002D0A4(&v24, 559, v17, v18, v19, v20, v21, v22, v29);
  result = sub_10001F024(a1, 0);
  if (result)
  {
    *(result + 4) = 594;
    result[2] = v8;
    result[3] = v9;
    *(result + 9) = 0;
    *(result + 10) = v10;
    *(a1 + 28) |= 0x80u;
  }

  return result;
}

int8x8_t sub_10000F890(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  *(a1 + 1) = vrev32_s8(*(a1 + 1));
  *(a1 + 5) = vrev16_s8(*(a1 + 5));
  a1[9] = bswap32(a1[9]) >> 16;
  *(a1 + 10) = vrev32_s8(*(a1 + 10));
  a1[14] = bswap32(a1[14]) >> 16;
  *(a1 + 15) = bswap32(*(a1 + 15));
  a1[17] = bswap32(a1[17]) >> 16;
  *(a1 + 16) = bswap32(*(a1 + 16));
  a1[34] = bswap32(a1[34]) >> 16;
  *(a1 + 35) = vrev32_s8(*(a1 + 35));
  *(a1 + 39) = bswap32(*(a1 + 39));
  a1[41] = bswap32(a1[41]) >> 16;
  *(a1 + 42) = vrev32_s8(*(a1 + 42));
  *(a1 + 23) = bswap32(*(a1 + 23));
  a1[62] = bswap32(a1[62]) >> 16;
  a1[63] = bswap32(a1[63]) >> 16;
  a1[64] = bswap32(a1[64]) >> 16;
  *(a1 + 65) = bswap32(*(a1 + 65));
  *(a1 + 67) = vrev16_s8(*(a1 + 67));
  a1[71] = bswap32(a1[71]) >> 16;
  a1[72] = bswap32(a1[72]) >> 16;
  *(a1 + 73) = bswap32(*(a1 + 73));
  result = vrev16_s8(*(a1 + 75));
  *(a1 + 75) = result;
  a1[79] = bswap32(a1[79]) >> 16;
  a1[80] = bswap32(a1[80]) >> 16;
  return result;
}

double sub_10000FA00(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  a1[1] = bswap32(a1[1]) >> 16;
  *(a1 + 2) = vrev32_s8(*(a1 + 2));
  v2 = vrev32q_s8(*(a1 + 2));
  *(a1 + 1) = vrev32q_s8(*(a1 + 1));
  *(a1 + 2) = v2;
  *(a1 + 3) = vrev32q_s8(*(a1 + 3));
  *(a1 + 8) = vrev32_s8(*(a1 + 32));
  *(a1 + 9) = bswap64(*(a1 + 9));
  sub_10000FAB4((a1 + 56));
  sub_10000FAB4((a1 + 96));
  sub_10000FAB4((a1 + 136));
  sub_10000FAB4((a1 + 176));

  *&result = sub_10000FAB4((a1 + 216)).u64[0];
  return result;
}

int8x16_t sub_10000FAB4(uint64_t a1)
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

uint64_t sub_10000FAF8(int8x8_t **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = *(a2 + 2);
  v13 = *a1;
  if (a3)
  {
    goto LABEL_2;
  }

  v21 = vrev32_s8(*v11);
  *v11 = v21;
  v22 = *(v12 + 56);
  v23 = byte_10004350E;
  if (v21.i32[0] < v22 || byte_10004350E == 0)
  {
    v25 = v21.u32[1];
  }

  else
  {
    v159 = xmmword_100043460;
    v160 = *&qword_100043470;
    v161 = xmmword_100043480;
    v162 = *&off_100043490;
    sub_10002D0E8(&v159, 2, "hfs_swap_BTNode: invalid forward link (0x%08X)\n", v21.i32[0]);
    v25 = v11->u32[1];
    v22 = *(v12 + 56);
    v23 = byte_10004350E;
  }

  if (v25 >= v22 && v23 != 0)
  {
    v159 = xmmword_100043460;
    v160 = *&qword_100043470;
    v161 = xmmword_100043480;
    v162 = *&off_100043490;
    sub_10002D0E8(&v159, 2, "hfs_swap_BTNode: invalid backward link (0x%08X)\n", v25);
  }

  v27 = v11[1].i8[0];
  if (v27 >= -1)
  {
    v28 = byte_10004350E;
    if (v27 < 3 || byte_10004350E == 0)
    {
LABEL_28:
      v30 = v11[1].u8[1];
      if (*(v12 + 32) < v30 && v28 != 0)
      {
        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v161 = xmmword_100043480;
        v162 = *&off_100043490;
        sub_10002D0E8(&v159, 2, "hfs_swap_BTNode: invalid node height (%d)\n", v30);
      }

      goto LABEL_33;
    }

LABEL_27:
    v159 = xmmword_100043460;
    v160 = *&qword_100043470;
    v161 = xmmword_100043480;
    v162 = *&off_100043490;
    sub_10002D0E8(&v159, 2, "hfs_swap_BTNode: invalid node kind (%d)\n", v27);
    v28 = byte_10004350E;
    goto LABEL_28;
  }

  if (byte_10004350E)
  {
    goto LABEL_27;
  }

LABEL_33:
  v32 = bswap32(v11[1].u16[1]);
  v33 = HIWORD(v32);
  v11[1].i16[1] = HIWORD(v32);
  v34 = *(a1 + 6);
  if (v34 - 2 * HIWORD(v32) < 16)
  {
    if (byte_10004350E)
    {
      v159 = xmmword_100043460;
      v160 = *&qword_100043470;
      v161 = xmmword_100043480;
      v162 = *&off_100043490;
      sub_10002D0E8(&v159, 2, "hfs_swap_BTNode: invalid record count (0x%04X)\n");
    }

    goto LABEL_80;
  }

  v35 = 0;
  v13 = *a1;
  v36 = (*a1 + v34 - 2 * v33 - 4);
  do
  {
    v37 = bswap32(v36->u16[1]) >> 16;
    v36->i16[1] = v37;
    if ((v37 & 1) != 0 || ((v37 - 14) <= 0xFFF2u ? (v38 = v34 > v37) : (v38 = 0), !v38))
    {
      if (byte_10004350E)
      {
        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v161 = xmmword_100043480;
        v162 = *&off_100043490;
        sub_10002D0E8(&v159, 2, "hfs_swap_BTNode: offset #%d invalid  (0x%04X) (blockSize 0x%x numRecords %d)\n");
      }

      goto LABEL_341;
    }

    if (v35 && v37 >= v36->u16[0])
    {
      if (byte_10004350E)
      {
        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v161 = xmmword_100043480;
        v162 = *&off_100043490;
        sub_10002D0E8(&v159, 2, "hfs_swap_BTNode: offsets %d and %d out of order (0x%04X, 0x%04X)\n");
      }

      goto LABEL_341;
    }

    v36 = (v36 + 2);
    v68 = v35++ >= v11[1].u16[1];
  }

  while (!v68);
LABEL_2:
  v14 = v11[1].u8[0];
  if (v14 != 255)
  {
    if (v14 == 1)
    {
      v13[1].i16[3] = bswap32(v13[1].u16[3]) >> 16;
      *v13[2].i8 = vrev32q_s8(*v13[2].i8);
      v13[4].i16[0] = bswap32(v13[4].u16[0]) >> 16;
      v13[4].i16[1] = bswap32(v13[4].u16[1]) >> 16;
      *(v13 + 36) = vrev32_s8(*(v13 + 36));
      *(&v13[5].i32[1] + 2) = bswap32(*(&v13[5].u32[1] + 2));
      v13[6].i32[1] = bswap32(v13[6].u32[1]);
      goto LABEL_49;
    }

    if (v11[1].i8[0])
    {
      goto LABEL_49;
    }
  }

  v15 = *(a2 + 1);
  v16 = *a2;
  v17 = *(a1 + 6) - 2 * v13[1].u16[1];
  LODWORD(v18) = v13[1].u16[1];
  v19 = v13 + v17;
  v20 = &v13[1] + 6;
  if (*v15 != 18475)
  {
    if (v17 <= 13)
    {
      if (byte_10004350E)
      {
        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v161 = xmmword_100043480;
        v162 = *&off_100043490;
        sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: invalid record count (0x%04X)\n");
        goto LABEL_67;
      }

LABEL_68:
      v47 = *(v15 + 216);
      v48 = a1[2];
      v46 = 4294966780;
      v49 = 4294966780;
      goto LABEL_342;
    }

    v114 = (v19 - 2);
    v59 = *(v19 - 1);
    if (v59 >= 0xE && v13 + v59 <= v114)
    {
      if (v13[1].i16[1])
      {
        v116 = 0;
        v117 = &unk_100043000;
        a5 = 4;
        a6 = "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n";
        while (1)
        {
          v118 = *a1;
          v119 = &v19[2 * v116];
          v120 = *v119;
          v121 = (*a1 + v120);
          v122 = *(v119 - 1);
          if (v121 < v20 || v120 >= v122)
          {
            break;
          }

          v124 = v118 + v122;
          if (v16 == 14 || v16 == 4)
          {
            if (&v121[1] > v124)
            {
              if (v117[1294])
              {
                v159 = xmmword_100043460;
                v160 = *&qword_100043470;
                v161 = xmmword_100043480;
                v162 = *&off_100043490;
                sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: catalog key #%d offset too big (0x%04X)\n");
              }

LABEL_341:
              v47 = *(*(a2 + 1) + 216);
              v16 = *a2;
              v48 = a1[2];
              v46 = 4294966776;
              v49 = 4294966776;
              goto LABEL_342;
            }

            v130 = v121->u8[0];
            if ((v130 - 38) <= 0xFFFFFFDF)
            {
              if (v117[1294])
              {
                v159 = xmmword_100043460;
                v160 = *&qword_100043470;
                v161 = xmmword_100043480;
                v162 = *&off_100043490;
                sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: catalog key #%d invalid length (%d)\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n");
              }

LABEL_315:
              v47 = *(*(a2 + 1) + 216);
              v16 = *a2;
              v48 = a1[2];
              v46 = 4294966773;
              v49 = 4294966773;
LABEL_342:
              sub_10001EA44(v47, v49, v16, v48, a5, a6, a7, a8);
              goto LABEL_343;
            }

            *(v121->i32 + 2) = bswap32(*(v121->u32 + 2));
            if (v13[1].i8[0])
            {
              v131 = v121->u8[6] + 6;
            }

            else
            {
              v131 = 37;
            }

            if (v131 > v130)
            {
              if (v117[1294])
              {
                v159 = xmmword_100043460;
                v160 = *&qword_100043470;
                v161 = xmmword_100043480;
                v162 = *&off_100043490;
                sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: catalog record #%d keyLength=%u expected=%u\n");
              }

              goto LABEL_341;
            }

            v132 = (v130 + 2) & 0x7E;
            v133 = v121 + v132;
            if (v121 + v132 + 4 > v124)
            {
              if (v117[1294])
              {
                v159 = xmmword_100043460;
                v160 = *&qword_100043470;
                v161 = xmmword_100043480;
                v162 = *&off_100043490;
                sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: catalog key #%d too big\n");
              }

              goto LABEL_341;
            }

            if (v13[1].i8[0])
            {
              v134 = *v133;
              if (!a3)
              {
                v134 = __rev16(v134);
                *v133 = v134;
              }

              v135 = bswap32(v134 - 256) >> 16;
              if (v135 - 2 < 2)
              {
                if ((v133 + 15) > v124)
                {
                  if (v117[1294])
                  {
                    v159 = xmmword_100043460;
                    v160 = *&qword_100043470;
                    v161 = xmmword_100043480;
                    v162 = *&off_100043490;
                    sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: catalog thread record #%d too big\n");
                  }

                  goto LABEL_341;
                }

                v136 = v133[14];
                *(v133 + 10) = bswap32(*(v133 + 10));
                if (&v133[v136 + 14] > v124)
                {
                  if (v117[1294])
                  {
                    v159 = xmmword_100043460;
                    v160 = *&qword_100043470;
                    v161 = xmmword_100043480;
                    v162 = *&off_100043490;
                    sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: catalog thread record #%d name too big\n");
                  }

                  goto LABEL_341;
                }
              }

              else if (v135 == 1)
              {
                if ((v133 + 102) > v124)
                {
                  if (v117[1294])
                  {
                    v159 = xmmword_100043460;
                    v160 = *&qword_100043470;
                    v161 = xmmword_100043480;
                    v162 = *&off_100043490;
                    sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: catalog file record #%d too big\n");
                  }

                  goto LABEL_341;
                }

                *(v133 + 5) = bswap32(*(v133 + 5));
                *(v133 + 12) = bswap32(*(v133 + 12)) >> 16;
                *(v133 + 26) = vrev32_s8(*(v133 + 26));
                *(v133 + 17) = bswap32(*(v133 + 17)) >> 16;
                *(v133 + 36) = vrev32q_s8(*(v133 + 36));
                *(v133 + 13) = bswap32(*(v133 + 13));
                *(v133 + 36) = bswap32(*(v133 + 36)) >> 16;
                v137 = (v118 + v132 + v120 + 76);
                v138 = 6;
                do
                {
                  v137[-1].i16[3] = bswap32(v137[-1].u16[3]) >> 16;
                  v137->i16[0] = bswap32(v137->u16[0]) >> 16;
                  v137 = (v137 + 4);
                  --v138;
                }

                while (v138);
              }

              else if (v135)
              {
                if (v117[1294])
                {
                  v139 = v13[1].u16[1] + ~v116;
                  v159 = xmmword_100043460;
                  v160 = *&qword_100043470;
                  v161 = xmmword_100043480;
                  v162 = *&off_100043490;
                  v158 = v16;
                  v140 = v19;
                  v151 = v20;
                  sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", v134, v139);
                  a6 = "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n";
                  a5 = 4;
                  v117 = &unk_100043000;
                  v20 = v151;
                  v19 = v140;
                  v16 = v158;
                }
              }

              else
              {
                if ((v133 + 70) > v124)
                {
                  if (v117[1294])
                  {
                    v159 = xmmword_100043460;
                    v160 = *&qword_100043470;
                    v161 = xmmword_100043480;
                    v162 = *&off_100043490;
                    sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: catalog folder record #%d too big\n");
                  }

                  goto LABEL_341;
                }

                *(v133 + 1) = bswap32(*(v133 + 1)) >> 16;
                *(v133 + 2) = bswap32(*(v133 + 2)) >> 16;
                *(v133 + 6) = vrev32q_s8(*(v133 + 6));
                *(v133 + 15) = bswap32(*(v133 + 15)) >> 16;
              }

              if (a3 == 1)
              {
                *v133 = bswap32(*v133) >> 16;
              }
            }

            else
            {
              *v133 = bswap32(*v133);
            }
          }

          else
          {
            if (v16 != 3)
            {
              if (v117[1294])
              {
                v159 = xmmword_100043460;
                v160 = *&qword_100043470;
                v161 = xmmword_100043480;
                v162 = *&off_100043490;
                sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: fileID %u is not a system B-tree\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n");
              }

LABEL_350:
              exit(99);
            }

            v125 = v13[1].u8[0];
            if (v13[1].i8[0])
            {
              v126 = 12;
            }

            else
            {
              v126 = 4;
            }

            v127 = &v121[1];
            if (&v121[1] + v126 > v124)
            {
              if (v117[1294])
              {
                v159 = xmmword_100043460;
                v160 = *&qword_100043470;
                v161 = xmmword_100043480;
                v162 = *&off_100043490;
                sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: extents key #%d offset too big (0x%04X)\n");
              }

              goto LABEL_341;
            }

            if (v121->i8[0] != 7)
            {
              if (v117[1294])
              {
                v159 = xmmword_100043460;
                v160 = *&qword_100043470;
                v161 = xmmword_100043480;
                v162 = *&off_100043490;
                sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: extents key #%d invalid length (%d)\n", 12, 4, "hfs_swap_HFSBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n");
              }

              goto LABEL_315;
            }

            *(v121->i32 + 2) = bswap32(*(v121->u32 + 2));
            v121->i16[3] = bswap32(v121->u16[3]) >> 16;
            if (v127 >= v114)
            {
              if (v117[1294])
              {
                v159 = xmmword_100043460;
                v160 = *&qword_100043470;
                v161 = xmmword_100043480;
                v162 = *&off_100043490;
                sub_10002D0E8(&v159, 2, "hfs_swap_HFSBTInternalNode: invalid record offset (0x%04X)\n");
              }

              goto LABEL_341;
            }

            if (v125)
            {
              v128 = (v118 + v120 + 10);
              v129 = 3;
              do
              {
                v128[-1].i16[3] = bswap32(v128[-1].u16[3]) >> 16;
                v128->i16[0] = bswap32(v128->u16[0]) >> 16;
                v128 = (v128 + 4);
                --v129;
              }

              while (v129);
            }

            else
            {
              *v127 = bswap32(*v127);
            }
          }

          if (++v116 >= v13[1].u16[1])
          {
            goto LABEL_49;
          }
        }

        if (!v117[1294])
        {
          goto LABEL_341;
        }

        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v141 = xmmword_100043480;
        v142 = *&off_100043490;
LABEL_281:
        v161 = v141;
        v162 = v142;
        sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: invalid record offset (record #%d)\n");
        goto LABEL_341;
      }

LABEL_49:
      if (a3 != 1)
      {
        return 0;
      }

      v39 = v11->i32[0];
      v40 = *(v12 + 56);
      v41 = byte_10004350E;
      if (v11->i32[0] >= v40 && byte_10004350E != 0)
      {
        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v161 = xmmword_100043480;
        v162 = *&off_100043490;
        sub_10002D0E8(&v159, 2, "hfs_UNswap_BTNode: invalid forward link (0x%08X)\n", v39);
        v40 = *(v12 + 56);
        v41 = byte_10004350E;
      }

      v43 = v11->u32[1];
      if (v43 >= v40 && v41 != 0)
      {
        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v161 = xmmword_100043480;
        v162 = *&off_100043490;
        sub_10002D0E8(&v159, 2, "hfs_UNswap_BTNode: invalid backward link (0x%08X)\n", v43);
        v43 = v11->u32[1];
      }

      v11->i32[0] = bswap32(v11->i32[0]);
      v11->i32[1] = bswap32(v43);
      v45 = v11[1].i8[0];
      if (v45 >= -1)
      {
        v50 = byte_10004350E;
        if (v45 < 3 || !byte_10004350E)
        {
LABEL_74:
          v51 = v11[1].u8[1];
          if (*(v12 + 32) < v51 && v50)
          {
            v159 = xmmword_100043460;
            v160 = *&qword_100043470;
            v161 = xmmword_100043480;
            v162 = *&off_100043490;
            sub_10002D0E8(&v159, 2, "hfs_UNswap_BTNode: invalid node height (%d)\n", v51);
          }

          goto LABEL_77;
        }
      }

      else if (!byte_10004350E)
      {
LABEL_77:
        v52 = *(a1 + 6);
        v53 = v11[1].u16[1];
        v54 = v52 - 2 * v53 - 2;
        if (v54 >= 14)
        {
          v55 = 0;
          for (i = (*a1 + v54); ; i = (i + 2))
          {
            v57 = i->u16[0];
            if ((v57 & 1) != 0 || ((v57 - 14) <= 0xFFF2u ? (v58 = v52 > v57) : (v58 = 0), !v58))
            {
              if (byte_10004350E)
              {
                v159 = xmmword_100043460;
                v160 = *&qword_100043470;
                v161 = xmmword_100043480;
                v162 = *&off_100043490;
                sub_10002D0E8(&v159, 2, "hfs_UNswap_BTNode: offset #%d invalid  (0x%04X) (blockSize 0x%x numRecords %d)\n");
              }

              goto LABEL_341;
            }

            if (v55 < v53 && i->u16[1] >= v57)
            {
              break;
            }

            ++v55;
            i->i16[0] = __rev16(v57);
            v53 = v11[1].u16[1];
            if (v55 - 1 >= v53)
            {
              v46 = 0;
              v11[1].i16[1] = __rev16(v53);
              return v46;
            }
          }

          if (byte_10004350E)
          {
            v159 = xmmword_100043460;
            v160 = *&qword_100043470;
            v161 = xmmword_100043480;
            v162 = *&off_100043490;
            sub_10002D0E8(&v159, 2, "hfs_UNswap_BTNode: offsets %d and %d out of order (0x%04X, 0x%04X)\n");
          }

          goto LABEL_341;
        }

        if (byte_10004350E)
        {
          v159 = xmmword_100043460;
          v160 = *&qword_100043470;
          v161 = xmmword_100043480;
          v162 = *&off_100043490;
          sub_10002D0E8(&v159, 2, "hfs_UNswap_BTNode: invalid record count (0x%04X)\n");
        }

LABEL_80:
        v47 = *(*(a2 + 1) + 216);
        v16 = *a2;
        v48 = a1[2];
        v46 = 4294966780;
        v49 = 4294966780;
        goto LABEL_342;
      }

      v159 = xmmword_100043460;
      v160 = *&qword_100043470;
      v161 = xmmword_100043480;
      v162 = *&off_100043490;
      sub_10002D0E8(&v159, 2, "hfs_UNswap_BTNode: invalid node kind (%d)\n", v45);
      v50 = byte_10004350E;
      goto LABEL_74;
    }

LABEL_219:
    if (byte_10004350E)
    {
      v159 = xmmword_100043460;
      v160 = *&qword_100043470;
      v161 = xmmword_100043480;
      v162 = *&off_100043490;
      sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: invalid free space offset (%X)\n", v59);
      v16 = *a2;
      v15 = *(a2 + 1);
    }

    v47 = *(v15 + 216);
    v48 = a1[2];
    v46 = 4294966776;
    v49 = 4294966776;
    goto LABEL_342;
  }

  if (v17 <= 13)
  {
    if (byte_10004350E)
    {
      v159 = xmmword_100043460;
      v160 = *&qword_100043470;
      v161 = xmmword_100043480;
      v162 = *&off_100043490;
      sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: invalid record count (0x%04X)\n");
LABEL_67:
      v16 = *a2;
      v15 = *(a2 + 1);
      goto LABEL_68;
    }

    goto LABEL_68;
  }

  v59 = *(v19 - 1);
  if (v59 < 0xE || &v13->i8[v59] > v19 - 2)
  {
    goto LABEL_219;
  }

  if (!v13[1].i16[1])
  {
    goto LABEL_49;
  }

  v61 = 0;
  v62 = a3 != 0;
  a5 = 4;
  a6 = 65024;
  v63 = &unk_100043000;
  while (1)
  {
    v64 = &v19[2 * v61];
    v65 = *v64;
    v66 = (*a1 + v65);
    v67 = *(v64 - 1);
    v68 = v66 < v20 || v65 >= v67;
    if (v68)
    {
      if (!v63[1294])
      {
        goto LABEL_341;
      }

      v159 = xmmword_100043460;
      v160 = *&qword_100043470;
      v141 = xmmword_100043480;
      v142 = *&off_100043490;
      goto LABEL_281;
    }

    v69 = (*a1 + v67);
    if (v16 > 7)
    {
      if (v16 != 8)
      {
        if (v16 != 14)
        {
LABEL_348:
          if (v63[1294])
          {
            v159 = xmmword_100043460;
            v160 = *&qword_100043470;
            v161 = xmmword_100043480;
            v162 = *&off_100043490;
            sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: fileID %u is not a system B-tree\n", 64, 4, 65024);
          }

          goto LABEL_350;
        }

        goto LABEL_108;
      }

      if (&v66[2] > v69)
      {
        if (v63[1294])
        {
          v159 = xmmword_100043460;
          v160 = *&qword_100043470;
          v161 = xmmword_100043480;
          v162 = *&off_100043490;
          sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: attr key #%d offset too big (0x%04X)\n");
        }

        goto LABEL_341;
      }

      v77 = v66->u16[0];
      if (a3)
      {
        if (a3 != 1)
        {
          v90 = 0;
LABEL_161:
          v79 = v66 + v77;
          if (v79 + 6 > v69)
          {
            if (v63[1294])
            {
              v159 = xmmword_100043460;
              v160 = *&qword_100043470;
              v161 = xmmword_100043480;
              v162 = *&off_100043490;
              sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: attr key #%d too big (%d)\n", 64, 4, 65024);
            }

            goto LABEL_315;
          }

          *(v66 + 4) = vrev32_s8(*(v66 + 4));
          v91 = v66[1].u16[2];
          if (!a3)
          {
            v91 = __rev16(v91);
            v66[1].i16[2] = v91;
          }

          if (v91 > 0x7F || v77 < ((2 * v91 + 12) & 0xFFFEu))
          {
            if (v63[1294])
            {
              v159 = xmmword_100043460;
              v160 = *&qword_100043470;
              v161 = xmmword_100043480;
              v162 = *&off_100043490;
              sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: attr key #%d keyLength=%d attrNameLen=%d\n");
            }

            goto LABEL_341;
          }

          if (v91)
          {
            v93 = &v66[1] + 3;
            v94 = v91;
            do
            {
              *v93 = bswap32(*v93) >> 16;
              ++v93;
              --v94;
            }

            while (v94);
            v95 = v91 << 8;
          }

          else
          {
            v95 = 0;
          }

          if (v90)
          {
            v66[1].i16[2] = v95;
          }

          v96 = *(v79 + 2);
          if (!v13[1].i8[0])
          {
            v99 = bswap32(v96);
LABEL_211:
            *(v79 + 2) = v99;
            goto LABEL_212;
          }

          if (!a3)
          {
            v96 = bswap32(v96);
            *(v79 + 2) = v96;
          }

          if (v96 != 48)
          {
            if (v96 == 32)
            {
              if (v79 + 90 > v69)
              {
                if (v63[1294])
                {
                  v159 = xmmword_100043460;
                  v160 = *&qword_100043470;
                  v161 = xmmword_100043480;
                  v162 = *&off_100043490;
                  sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: attr fork data #%d too big\n");
                }

                goto LABEL_341;
              }

              v157 = v16;
              v107 = v19;
              v149 = v20;
              v108 = v61;
              v154 = v62;
              sub_10000FAB4((v79 + 10));
              a6 = 65024;
              a5 = 4;
              v62 = v154;
              v63 = &unk_100043000;
              v61 = v108;
              v20 = v149;
            }

            else
            {
              if (v96 == 16)
              {
                if (v79 + 18 > v69)
                {
                  if (v63[1294])
                  {
                    v159 = xmmword_100043460;
                    v160 = *&qword_100043470;
                    v161 = xmmword_100043480;
                    v162 = *&off_100043490;
                    sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: attr inline #%d too big\n");
                  }

                  goto LABEL_341;
                }

                if (v90)
                {
                  v97 = *(v79 + 14);
                }

                else
                {
                  v97 = 0;
                }

                LODWORD(v98) = bswap32(*(v79 + 14));
                *(v79 + 14) = v98;
                if (a3)
                {
                  v98 = v97;
                }

                else
                {
                  v98 = v98;
                }

                if (&v79[v98 + 18] > v69)
                {
                  if (v63[1294])
                  {
                    v159 = xmmword_100043460;
                    v160 = *&qword_100043470;
                    v161 = xmmword_100043480;
                    v162 = *&off_100043490;
                    sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: attr inline #%d too big (attrSize=%u)\n");
                  }

                  goto LABEL_341;
                }

                goto LABEL_209;
              }

              if (!v63[1294])
              {
                goto LABEL_209;
              }

              v159 = xmmword_100043460;
              v160 = *&qword_100043470;
              v161 = xmmword_100043480;
              v162 = *&off_100043490;
              v155 = v62;
              v157 = v16;
              v107 = v19;
              v113 = v20;
              v150 = v61;
              sub_10002D0E8(&v159, 2, "hfs_swap_BTNode: unrecognized attribute record type (%d)\n", v96);
              a6 = 65024;
              a5 = 4;
              v62 = v155;
              v63 = &unk_100043000;
              v61 = v150;
              v20 = v113;
            }

            v19 = v107;
            v16 = v157;
            goto LABEL_209;
          }

          if (v79 + 74 > v69)
          {
            if (v63[1294])
            {
              v159 = xmmword_100043460;
              v160 = *&qword_100043470;
              v161 = xmmword_100043480;
              v162 = *&off_100043490;
              sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: attr extents #%d too big\n");
            }

            goto LABEL_341;
          }

          v109 = 0;
          v110 = v79 + 10;
          do
          {
            v111 = &v110[v109];
            v112 = vrev32q_s8(*&v110[v109 + 16]);
            *v111 = vrev32q_s8(*&v110[v109]);
            v111[1] = v112;
            v109 += 32;
          }

          while (v109 != 64);
LABEL_209:
          if (v90)
          {
            goto LABEL_210;
          }

          goto LABEL_212;
        }

        LOWORD(v78) = __rev16(v77);
      }

      else
      {
        v78 = __rev16(v77);
        v77 = v78;
      }

      v66->i16[0] = v78;
      v90 = v62;
      goto LABEL_161;
    }

    if (v16 == 3)
    {
      v73 = v13[1].u8[0];
      if (v13[1].i8[0])
      {
        v74 = 64;
      }

      else
      {
        v74 = 4;
      }

      v75 = &v66[1] + 1;
      if (&v66[1].u8[v74 + 4] > v69)
      {
        if (v63[1294])
        {
          v159 = xmmword_100043460;
          v160 = *&qword_100043470;
          v161 = xmmword_100043480;
          v162 = *&off_100043490;
          sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: extents key #%d offset too big (0x%04X)\n");
        }

        goto LABEL_341;
      }

      v76 = v66->u16[0];
      if (a3)
      {
        if (v76 != 10)
        {
          goto LABEL_313;
        }

        if (a3 == 1)
        {
          v66->i16[0] = 2560;
        }
      }

      else
      {
        v66->i16[0] = __rev16(v76);
        if (v76 != 2560)
        {
LABEL_313:
          if (v63[1294])
          {
            v159 = xmmword_100043460;
            v160 = *&qword_100043470;
            v161 = xmmword_100043480;
            v162 = *&off_100043490;
            sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: extents key #%d invalid length (%d)\n", 64, 4, 65024);
          }

          goto LABEL_315;
        }
      }

      *(v66 + 4) = vrev32_s8(*(v66 + 4));
      if (v73)
      {
        for (j = 0; j != 16; j += 8)
        {
          v88 = &v75[j];
          v89 = vrev32q_s8(*&v75[j + 4]);
          *v88 = vrev32q_s8(*&v75[j]);
          v88[1] = v89;
        }
      }

      else
      {
        *v75 = bswap32(*v75);
      }

      goto LABEL_212;
    }

    if (v16 != 4)
    {
      goto LABEL_348;
    }

LABEL_108:
    v70 = v66 + 1;
    if (&v66[1] > v69)
    {
      if (v63[1294])
      {
        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v161 = xmmword_100043480;
        v162 = *&off_100043490;
        sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: catalog key #%d offset too big (0x%04X)\n");
      }

      goto LABEL_341;
    }

    v71 = v66->u16[0];
    if (!a3)
    {
      v72 = __rev16(v71);
      v71 = v72;
      goto LABEL_125;
    }

    if (a3 == 1)
    {
      LOWORD(v72) = __rev16(v71);
LABEL_125:
      v66->i16[0] = v72;
      a7 = v62;
      goto LABEL_127;
    }

    a7 = 0;
LABEL_127:
    if ((v71 - 517) <= 0xFE00u)
    {
      if (v63[1294])
      {
        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v161 = xmmword_100043480;
        v162 = *&off_100043490;
        sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: catalog key #%d invalid length (%d)\n", 64, 4, 65024);
      }

      goto LABEL_315;
    }

    v79 = v66 + v71;
    if (v79 + 6 > v69)
    {
      if (v63[1294])
      {
        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v161 = xmmword_100043480;
        v162 = *&off_100043490;
        sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: catalog key #%d too big\n", 64, 4, 65024);
      }

      goto LABEL_315;
    }

    *(v66->i32 + 2) = bswap32(*(v66->u32 + 2));
    v80 = v66->u16[3];
    if (!a3)
    {
      v80 = __rev16(v80);
      v66->i16[3] = v80;
    }

    if (2 * v80 + 6 > v71)
    {
      if (v63[1294])
      {
        v143 = v18 - v61;
        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v161 = xmmword_100043480;
        v162 = *&off_100043490;
        sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: catalog record #%d (0-based, offset 0x%lX) keyLength=%d expected=%lu\n", v18 - v61, v65, v71, 2 * v80 + 6);
        if ((dword_100043528 & 0x400) != 0)
        {
          v159 = xmmword_100043460;
          v160 = *&qword_100043470;
          v161 = xmmword_100043480;
          v162 = *&off_100043490;
          sub_10002D0E8(&v159, 2, "Record %u (offset 0x%04X):\n", v143, v65);
          sub_10002E7B8(v66, v67 - v65, 0);
        }
      }

      goto LABEL_315;
    }

    v81 = v80;
    if (v80)
    {
      do
      {
        v70->i16[0] = bswap32(v70->u16[0]) >> 16;
        v70 = (v70 + 2);
        --v81;
      }

      while (v81);
    }

    if (a7)
    {
      v66->i16[3] = __rev16(v80);
    }

    if (!v13[1].i8[0])
    {
LABEL_210:
      v99 = bswap32(*(v79 + 2));
      goto LABEL_211;
    }

    v82 = *(v79 + 1);
    if (!a3)
    {
      v82 = __rev16(v82);
      *(v79 + 1) = v82;
    }

    if (v82 - 3 >= 2)
    {
      break;
    }

    v83 = v79 + 12;
    if (v79 + 12 > v69)
    {
      if (v63[1294])
      {
        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v161 = xmmword_100043480;
        v162 = *&off_100043490;
        sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: catalog thread record #%d too big\n");
      }

      goto LABEL_341;
    }

    *(v79 + 6) = bswap32(*(v79 + 6));
    v84 = *(v79 + 5);
    if (!a3)
    {
      v84 = __rev16(v84);
      *(v79 + 5) = v84;
    }

    if (&v83[v84] > v69)
    {
      if (v63[1294])
      {
        v159 = xmmword_100043460;
        v160 = *&qword_100043470;
        v161 = xmmword_100043480;
        v162 = *&off_100043490;
        sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: catalog thread record #%d name too big\n");
      }

      goto LABEL_341;
    }

    v85 = v84;
    v86 = v85;
    if (v85)
    {
      do
      {
        *v83 = bswap32(*v83) >> 16;
        ++v83;
        --v86;
      }

      while (v86);
    }

    if (a7)
    {
      *(v79 + 5) = __rev16(v85);
LABEL_199:
      *(v79 + 1) = __rev16(v82);
    }

LABEL_212:
    ++v61;
    v18 = v13[1].u16[1];
    if (v61 >= v18)
    {
      goto LABEL_49;
    }
  }

  if (v82 != 2)
  {
    if (v82 == 1)
    {
      if (v79 + 90 > v69)
      {
        if (v63[1294])
        {
          v159 = xmmword_100043460;
          v160 = *&qword_100043470;
          v161 = xmmword_100043480;
          v162 = *&off_100043490;
          sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: catalog folder record #%d too big\n");
        }

        goto LABEL_341;
      }

      *(v79 + 2) = bswap32(*(v79 + 2)) >> 16;
      *(v79 + 6) = vrev32q_s8(*(v79 + 6));
      *(v79 + 22) = vrev32q_s8(*(v79 + 22));
      *(v79 + 38) = bswap32(*(v79 + 38));
      *(v79 + 22) = bswap32(*(v79 + 22)) >> 16;
      *(v79 + 46) = bswap32(*(v79 + 46));
      *(v79 + 82) = bswap32(*(v79 + 82));
      *(v79 + 29) = bswap32(*(v79 + 29)) >> 16;
      *(v79 + 86) = bswap32(*(v79 + 86));
LABEL_197:
      if (a7)
      {
        v82 = *(v79 + 1);
        goto LABEL_199;
      }

      goto LABEL_212;
    }

    if (!v63[1294])
    {
      goto LABEL_197;
    }

    v103 = v13[1].u16[1] + ~v61;
    v159 = xmmword_100043460;
    v160 = *&qword_100043470;
    v161 = xmmword_100043480;
    v162 = *&off_100043490;
    v153 = v62;
    v156 = v16;
    v104 = v19;
    v105 = v20;
    v106 = v61;
    v148 = a7;
    sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: unrecognized catalog record type (0x%04X; record #%d)\n", v82, v103);
    a7 = v148;
    a6 = 65024;
    a5 = 4;
    v62 = v153;
    v63 = &unk_100043000;
    v61 = v106;
    v20 = v105;
    v19 = v104;
LABEL_196:
    v16 = v156;
    goto LABEL_197;
  }

  if (v79 + 250 <= v69)
  {
    *(v79 + 2) = bswap32(*(v79 + 2)) >> 16;
    *(v79 + 10) = vrev32q_s8(*(v79 + 10));
    *(v79 + 26) = vrev32q_s8(*(v79 + 26));
    *(v79 + 22) = bswap32(*(v79 + 22)) >> 16;
    *(v79 + 82) = bswap32(*(v79 + 82));
    *(v79 + 6) = bswap32(*(v79 + 6));
    *(v79 + 46) = vrev32_s8(*(v79 + 46));
    *(v79 + 54) = bswap32(*(v79 + 54));
    *(v79 + 58) = vrev16_s8(*(v79 + 58));
    v152 = v19;
    v156 = v16;
    v100 = v20;
    v101 = v61;
    v102 = v62;
    v147 = a7;
    sub_10000FAB4((v79 + 90));
    sub_10000FAB4((v79 + 170));
    a7 = v147;
    a6 = 65024;
    a5 = 4;
    v62 = v102;
    v63 = &unk_100043000;
    v61 = v101;
    v20 = v100;
    v19 = v152;
    goto LABEL_196;
  }

  if (v63[1294])
  {
    v144 = v13[1].u16[1] + ~v61;
    v159 = xmmword_100043460;
    v160 = *&qword_100043470;
    v161 = xmmword_100043480;
    v162 = *&off_100043490;
    sub_10002D0E8(&v159, 2, "hfs_swap_HFSPlusBTInternalNode: catalog file record #%d too big\n", v144);
  }

  v46 = 36;
LABEL_343:
  if ((dword_100043528 & 0x800) != 0)
  {
    v145 = a1[2];
    v159 = xmmword_100043460;
    v160 = *&qword_100043470;
    v161 = xmmword_100043480;
    v162 = *&off_100043490;
    sub_10002D0E8(&v159, 2, "Node %u:\n", v145);
    sub_10002E7B8(*a1, *(a1 + 6), 1);
  }

  return v46;
}

uint64_t sub_1000113B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int *a6, unsigned int *a7)
{
  *a6 = 0;
  *a7 = 0;
  v7 = *(a1 + 48);
  if (v7)
  {
    v11 = a4;
    v12 = a2;
    if (a5 && v7 < a3)
    {
      LOWORD(v14) = -34;
    }

    else
    {
      v15 = a2;
      if (!a2)
      {
        v15 = *(a1 + 52);
      }

      v14 = sub_1000114D4(a1, v15, a3, a4, a6, a7);
      if (!a5 && v14 == -34)
      {
        v14 = sub_100011574(a1, v15, *(a1 + 44), v11, a6, a7);
        if (v14 == -34)
        {
          v14 = sub_100011574(a1, 0, v15, v11, a6, a7);
        }
      }

      if (!v14)
      {
        if (!v12)
        {
          *(a1 + 52) = *a6;
        }

        LOWORD(v14) = 0;
        *(a1 + 48) -= *a7;
        *(a1 + 196) |= 0xFF00u;
      }
    }
  }

  else
  {
    LOWORD(v14) = -34;
  }

  return v14;
}

uint64_t sub_1000114D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, unsigned int *a6)
{
  v8 = a4;
  v9 = a3;
  result = sub_1000122A8(a1, a2, *(a1 + 44), a3, a4, a5, a6);
  if (result == -34)
  {
    result = sub_1000122A8(a1, 0, *(a1 + 44), v9, v8, a5, a6);
  }

  if (result || (result = sub_100012038(a1, *a5, *a6), result))
  {
    *a5 = 0;
    *a6 = 0;
  }

  return result;
}

uint64_t sub_100011574(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int *a5, unsigned int *a6)
{
  v8 = a3;
  v9 = a2;
  memset(v27, 0, sizeof(v27));
  if (a3 - a2 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3 - a2;
  }

  v12 = sub_100011F90(a1, a2, v27);
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    goto LABEL_44;
  }

  if (*a1 == 16964)
  {
    v15 = (v9 >> 5) & 0x7F;
    v16 = 128;
  }

  else
  {
    v17 = *(*(a1 + 152) + 128);
    v15 = ((8 * v17 - 1) & v9) >> 5;
    v16 = v17 >> 2;
  }

  v18 = (*&v27[0] + 4 * v15);
  v19 = v16 - v15;
  v20 = bswap32(*v18);
  v21 = 0x80000000 >> v9;
  while (v9 < v8 && (v21 & v20) != 0)
  {
    ++v9;
    if (v21 > 1)
    {
      v21 >>= 1;
    }

    else
    {
      if (--v19)
      {
        ++v18;
      }

      else
      {
        v14 = 2;
        v22 = sub_100011FEC(a1, 2u, v27);
        *&v27[0] = 0;
        if (v22 || (v22 = sub_100011F90(a1, v9, v27)) != 0)
        {
LABEL_43:
          v13 = v22;
LABEL_44:
          *a5 = 0;
          *a6 = 0;
          goto LABEL_45;
        }

        v18 = *&v27[0];
        if (*a1 == 16964)
        {
          v19 = 128;
        }

        else
        {
          v19 = *(*(a1 + 152) + 128) >> 2;
        }
      }

      v20 = bswap32(*v18);
      v21 = 0x80000000;
    }
  }

  if (v9 == v8)
  {
    v13 = -34;
    v14 = 2;
    goto LABEL_44;
  }

  *a5 = v9;
  v23 = v8 - v11;
  if (v9 < v8 - v11)
  {
    v8 = v9 + v11;
  }

  if ((v21 & v20) == 0)
  {
    if (v9 < v23)
    {
      v23 = v9;
    }

    v24 = v11 + v23 - 1;
    while (1)
    {
      v20 |= v21;
      if (v24 == v9)
      {
        break;
      }

      ++v9;
      if (v21 > 1)
      {
        v21 >>= 1;
      }

      else
      {
        *v18++ = bswap32(v20);
        if (!--v19)
        {
          v14 = 2;
          v22 = sub_100011FEC(a1, 2u, v27);
          if (v22)
          {
            goto LABEL_43;
          }

          *&v27[0] = 0;
          v22 = sub_100011F90(a1, v9, v27);
          if (v22)
          {
            goto LABEL_43;
          }

          v18 = *&v27[0];
          if (*a1 == 16964)
          {
            v19 = 128;
          }

          else
          {
            v19 = *(*(a1 + 152) + 128) >> 2;
          }
        }

        v20 = bswap32(*v18);
        v21 = 0x80000000;
      }

      if ((v21 & v20) != 0)
      {
        goto LABEL_49;
      }
    }

    v9 = v8;
  }

LABEL_49:
  *v18 = bswap32(v20);
  v26 = v9 - *a5;
  *a6 = v26;
  sub_10002A950(*a5, v26);
  v13 = 0;
  v14 = 2;
LABEL_45:
  if (*&v27[0])
  {
    sub_100011FEC(a1, v14, v27);
  }

  return v13;
}

uint64_t sub_100011828(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  memset(v26, 0, sizeof(v26));
  v6 = sub_100011F90(a1, a2, v26);
  if (!v6)
  {
    v9 = *a1;
    if (v9 == 16964)
    {
      v10 = (a2 >> 5) & 0x7F;
      v11 = 128;
    }

    else
    {
      v12 = *(*(a1 + 19) + 128);
      v10 = ((8 * v12 - 1) & a2) >> 5;
      v11 = v12 >> 2;
    }

    v13 = (*&v26[0] + 4 * v10);
    v14 = v11 - v10;
    v15 = a2 & 0x1F;
    if ((a2 & 0x1F) != 0)
    {
      v16 = 0xFFFFFFFF >> v15;
      v17 = 32 - v15;
      v18 = 0xFFFFFFFF >> (v15 + v3);
      if (v17 > v3)
      {
        v19 = ~v18;
      }

      else
      {
        v19 = 0x7FFFFFFF;
      }

      *v13++ &= bswap32(~(v19 & v16));
      if (v3 >= v17)
      {
        v20 = v3 - v17;
      }

      else
      {
        v20 = 0;
      }

      --v14;
    }

    else
    {
      v20 = v3;
    }

    if (v20 < 0x20)
    {
      v21 = a2;
      if (!v20)
      {
LABEL_34:
        sub_10002AECC(a2, v3);
        v7 = 0;
        v8 = 2;
        goto LABEL_41;
      }
    }

    else
    {
      v21 = a2;
      do
      {
        if (!v14)
        {
          if (v9 == 16964)
          {
            v22 = 4096;
          }

          else
          {
            v22 = 8 * *(*(a1 + 19) + 128);
          }

          v8 = 2;
          v23 = sub_100011FEC(a1, 2u, v26);
          if (v23)
          {
            goto LABEL_40;
          }

          v21 += v22;
          *&v26[0] = 0;
          v23 = sub_100011F90(a1, v21, v26);
          if (v23)
          {
            goto LABEL_40;
          }

          v13 = *&v26[0];
          v9 = 16964;
          if (*a1 == 16964)
          {
            v14 = 128;
          }

          else
          {
            v14 = *(*(a1 + 19) + 128) >> 2;
            v9 = *a1;
          }
        }

        *v13++ = 0;
        v20 -= 32;
        --v14;
      }

      while (v20 > 0x1F);
      if (!v20)
      {
        goto LABEL_34;
      }
    }

    if (!v14)
    {
      if (v9 == 16964)
      {
        v24 = 4096;
      }

      else
      {
        v24 = 8 * *(*(a1 + 19) + 128);
      }

      v8 = 2;
      v23 = sub_100011FEC(a1, 2u, v26);
      if (v23 || (*&v26[0] = 0, v23 = sub_100011F90(a1, v24 + v21, v26), v23))
      {
LABEL_40:
        v7 = v23;
        goto LABEL_41;
      }

      v13 = *&v26[0];
    }

    *v13 &= bswap32(0xFFFFFFFF >> v20);
    goto LABEL_34;
  }

  v7 = v6;
  v8 = 0;
LABEL_41:
  if (*&v26[0])
  {
    sub_100011FEC(a1, v8, v26);
  }

  if (!v7)
  {
    *(a1 + 12) += v3;
    a1[98] |= 0xFF00u;
  }

  return v7;
}

uint64_t sub_100011ABC(unsigned int a1, unsigned int a2)
{
  v2 = a1 / a2;
  if (a1 / a2 * a2 == a1)
  {
    return v2;
  }

  else
  {
    return v2 + 1;
  }
}

uint64_t sub_100011AD0(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 36);
  v5 = 0uLL;
  memset(v55, 0, 32);
  v6 = *(a1 + 8);
  v7 = *(v6 + 48);
  v8 = &unk_100043000;
  if (v7 < a2 && byte_10004350E != 0)
  {
    v51 = xmmword_100043460;
    v52 = *&qword_100043470;
    v53 = xmmword_100043480;
    v54 = *&off_100043490;
    sub_10002D0E8(&v51, 2, "%s:  %u blocks free, but need %u; ignoring for now\n", "BlockFindAll", v7, a2);
    v5 = 0uLL;
  }

  v4[2] = v5;
  v4[3] = v5;
  *v4 = v5;
  v4[1] = v5;
  v10 = *(v6 + 40);
  v11 = *(a1 + 128);
  if (v10 >= v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 / v10;
  }

  v13 = *(v6 + 44);
  v14 = sub_100011F90(v6, 0, v55);
  if (v14)
  {
    v15 = v14;
    LODWORD(v16) = 0;
    goto LABEL_64;
  }

  v17 = *&v55[0];
  v48 = v12;
  if (*v6 == 16964)
  {
    v18 = 127;
  }

  else
  {
    v18 = (*(*(v6 + 152) + 128) >> 2) - 1;
  }

  v19 = 0;
  v20 = 0;
  v21 = bswap32(**&v55[0]);
  if (a2 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = a2;
  }

  v47 = v22;
  v49 = v22 - 1;
  v23 = v13 - 1;
  v16 = 0;
  v24 = 0x80000000;
  do
  {
    v50 = v16;
    v25 = v20;
    while ((v21 & v24) != 0)
    {
      if (v23 == v25)
      {
        v15 = 0;
LABEL_63:
        LODWORD(v16) = v50;
        goto LABEL_64;
      }

      v25 = (v25 + 1);
      if (v24 > 1)
      {
        v24 >>= 1;
      }

      else
      {
        if (v18)
        {
          ++v17;
        }

        else
        {
          v26 = sub_100011FEC(v6, 0, v55);
          if (v26 || (*&v55[0] = 0, (v26 = sub_100011F90(v6, v25, v55)) != 0))
          {
            v15 = v26;
            goto LABEL_63;
          }

          if (*v6 == 16964)
          {
            v17 = (*&v55[0] + 4 * ((v25 >> 5) & 0x7F));
            v18 = 127;
            goto LABEL_31;
          }

          v27 = *(*(v6 + 152) + 128);
          v17 = (*&v55[0] + 4 * (((8 * v27 - 1) & v25) >> 5));
          v18 = v27 >> 2;
        }

        --v18;
LABEL_31:
        v21 = bswap32(*v17);
        v24 = 0x80000000;
      }
    }

    v36 = 0;
    v20 = v25;
    v37 = v49;
    while (v37 != v36)
    {
      if (v23 == v20)
      {
        v15 = 0;
LABEL_62:
        v8 = &unk_100043000;
        goto LABEL_63;
      }

      v20 = (v20 + 1);
      if (v24 > 1)
      {
        v24 >>= 1;
      }

      else
      {
        if (v18)
        {
          ++v17;
          --v18;
        }

        else
        {
          v38 = sub_100011FEC(v6, 0, v55);
          if (v38 || (*&v55[0] = 0, (v38 = sub_100011F90(v6, v20, v55)) != 0))
          {
            v15 = v38;
            goto LABEL_62;
          }

          if (*v6 == 16964)
          {
            v17 = (*&v55[0] + 4 * ((v20 >> 5) & 0x7F));
            v18 = 127;
          }

          else
          {
            v39 = *(*(v6 + 152) + 128);
            v17 = (*&v55[0] + 4 * (((8 * v39 - 1) & v20) >> 5));
            v18 = (v39 >> 2) - 1;
          }

          v37 = v49;
        }

        v21 = bswap32(*v17);
        v24 = 0x80000000;
      }

      ++v36;
      if ((v21 & v24) != 0)
      {
        goto LABEL_33;
      }
    }

    v36 = v47;
LABEL_33:
    v28 = v36 / v48 * v48;
    v29 = v4 + 2 * v19;
    v30 = v29[1];
    if (v28 <= v30)
    {
      v8 = &unk_100043000;
      v16 = v50;
    }

    else
    {
      v31 = 0;
      *v29 = v25;
      v29[1] = v28;
      v32 = -1;
      v33 = (a1 + 40);
      v19 = -1;
      v8 = &unk_100043000;
      do
      {
        v35 = *v33;
        v33 += 2;
        v34 = v35;
        if (v35 < v32)
        {
          v19 = v31;
          v32 = v34;
        }

        ++v31;
      }

      while (v31 != 8);
      v16 = v50 - v30 + v28;
    }

    v15 = 0;
  }

  while (v16 < a2);
LABEL_64:
  if (*&v55[0])
  {
    sub_100011FEC(v6, 0, v55);
  }

  if (!v15)
  {
    if (v16 < a2)
    {
      if (v8[1294])
      {
        v51 = xmmword_100043460;
        v52 = *&qword_100043470;
        v53 = xmmword_100043480;
        v54 = *&off_100043490;
        sub_10002D0E8(&v51, 2, "%s:  found %u blocks but needed %u\n", "BlockFindAll", v16, a2);
      }

      LOWORD(v15) = -34;
      return v15;
    }

    if (v16 > a2)
    {
      v40 = 0;
      v41 = 0;
      v42 = (a1 + 40);
      for (i = 8; i; --i)
      {
        if (v40)
        {
          *(v42 - 1) = 0;
          *v42 = 0;
        }

        else
        {
          v41 += *v42;
          if (v41 <= a2)
          {
            v40 = 0;
            goto LABEL_78;
          }

          *v42 = *v42 + a2 - v41;
        }

        v40 = 1;
LABEL_78:
        v42 += 2;
      }
    }

    v44 = (a1 + 40);
    v45 = 8;
    do
    {
      if (*v44)
      {
        sub_100012038(v6, *(v44 - 1), *v44);
        *(v6 + 48) -= *v44;
      }

      v44 += 2;
      --v45;
    }

    while (v45);
    LOWORD(v15) = 0;
    *(v6 + 196) |= 0xFF00u;
  }

  return v15;
}

uint64_t sub_100011F90(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*a1 == 16964)
  {
    return sub_100004C84(a1, *(a1 + 116) + (a2 >> 12), 16, a3);
  }

  else
  {
    return sub_100004E04(*(a1 + 152), a2 / (8 * *(*(a1 + 152) + 128)), 0, a3);
  }
}

uint64_t sub_100011FEC(uint64_t a1, unsigned int a2, unsigned __int16 **a3)
{
  if (*a1 == 16964)
  {
    sub_100004D50(a1, a3, a2 | 0x10);
  }

  else
  {
    sub_10000508C(*(a1 + 152), a3, a2);
  }

  return v3;
}

uint64_t sub_100012038(unsigned __int16 *a1, uint64_t a2, unsigned int a3)
{
  memset(v26, 0, sizeof(v26));
  v6 = sub_100011F90(a1, a2, v26);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    goto LABEL_39;
  }

  v9 = *a1;
  if (v9 == 16964)
  {
    v10 = (a2 >> 5) & 0x7F;
    v11 = 128;
  }

  else
  {
    v12 = *(*(a1 + 19) + 128);
    v10 = ((8 * v12 - 1) & a2) >> 5;
    v11 = v12 >> 2;
  }

  v13 = (*&v26[0] + 4 * v10);
  v14 = v11 - v10;
  v15 = a2 & 0x1F;
  if ((a2 & 0x1F) != 0)
  {
    v16 = 0xFFFFFFFF >> v15;
    v17 = 32 - v15;
    v18 = 0xFFFFFFFF >> (v15 + a3);
    if (v17 > a3)
    {
      v19 = ~v18;
    }

    else
    {
      v19 = 0x7FFFFFFF;
    }

    *v13++ |= bswap32(v19 & v16);
    if (a3 >= v17)
    {
      v20 = a3 - v17;
    }

    else
    {
      v20 = 0;
    }

    --v14;
  }

  else
  {
    v20 = a3;
  }

  if (v20 < 0x20)
  {
    v21 = a2;
    if (!v20)
    {
LABEL_32:
      sub_10002A950(a2, a3);
      v7 = 0;
      v8 = 2;
      goto LABEL_39;
    }
  }

  else
  {
    v21 = a2;
    do
    {
      if (!v14)
      {
        if (v9 == 16964)
        {
          v22 = 4096;
        }

        else
        {
          v22 = 8 * *(*(a1 + 19) + 128);
        }

        v8 = 2;
        v23 = sub_100011FEC(a1, 2u, v26);
        if (v23)
        {
          goto LABEL_38;
        }

        v21 += v22;
        *&v26[0] = 0;
        v23 = sub_100011F90(a1, v21, v26);
        if (v23)
        {
          goto LABEL_38;
        }

        v13 = *&v26[0];
        v9 = 16964;
        if (*a1 == 16964)
        {
          v14 = 128;
        }

        else
        {
          v14 = *(*(a1 + 19) + 128) >> 2;
          v9 = *a1;
        }
      }

      *v13++ = -1;
      v20 -= 32;
      --v14;
    }

    while (v20 > 0x1F);
    if (!v20)
    {
      goto LABEL_32;
    }
  }

  if (v14)
  {
LABEL_31:
    *v13 |= bswap32(~(0xFFFFFFFF >> v20));
    goto LABEL_32;
  }

  if (v9 == 16964)
  {
    v24 = 4096;
  }

  else
  {
    v24 = 8 * *(*(a1 + 19) + 128);
  }

  v8 = 2;
  v23 = sub_100011FEC(a1, 2u, v26);
  if (!v23)
  {
    *&v26[0] = 0;
    v23 = sub_100011F90(a1, v24 + v21, v26);
    if (!v23)
    {
      v13 = *&v26[0];
      goto LABEL_31;
    }
  }

LABEL_38:
  v7 = v23;
LABEL_39:
  if (*&v26[0])
  {
    sub_100011FEC(a1, v8, v26);
  }

  return v7;
}

uint64_t sub_1000122A8(unsigned __int16 *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, _DWORD *a6, unsigned int *a7)
{
  memset(v51, 0, sizeof(v51));
  if (a3 - a2 < a4)
  {
    return -34;
  }

  v13 = a2;
  v15 = a2 + a4 - 1;
  v16 = sub_100011F90(a1, v15, v51);
  if (v16)
  {
    goto LABEL_4;
  }

  v18 = *&v51[0];
  v19 = *a1;
  if (v19 == 16964)
  {
    v20 = 4095;
  }

  else
  {
    v20 = 8 * *(*(a1 + 19) + 128) - 1;
  }

  if (v19 == 16964)
  {
    v21 = 4096;
  }

  else
  {
    v21 = 8 * *(*(a1 + 19) + 128);
  }

  v49 = a5;
  v50 = a7;
  v22 = v15 / v21;
  if (v15 < v13)
  {
    LODWORD(v23) = 0;
    LODWORD(v24) = 0;
    goto LABEL_16;
  }

  v23 = 0;
  v25 = 0;
  v26 = (v20 & v15) >> 5;
  v27 = (*&v51[0] + 4 * v26);
  v28 = bswap32(*v27);
  v29 = 0x80000000 >> v15;
  v30 = *a1;
  v31 = v30;
  while (1)
  {
    if ((v28 & v29) == 0)
    {
      v24 = (v25 + 1);
      --v15;
      v29 *= 2;
      if (!v29)
      {
        while (1)
        {
          if (v26)
          {
            --v26;
          }

          else
          {
            v16 = sub_100011FEC(a1, 0, v51);
            if (v16)
            {
              goto LABEL_4;
            }

            *&v51[0] = 0;
            v16 = sub_100011F90(a1, v15, v51);
            if (v16)
            {
              goto LABEL_4;
            }

            v18 = *&v51[0];
            v19 = *a1;
            if (v19 == 16964)
            {
              v22 = v15 >> 12;
              v27 = (*&v51[0] + 512);
              v26 = 127;
              v19 = 16964;
              v30 = 16964;
              v31 = 16964;
            }

            else
            {
              v33 = *(*(a1 + 19) + 128);
              v22 = v15 / (8 * v33);
              v33 >>= 2;
              v27 = (*&v51[0] + 4 * v33);
              v26 = v33 - 1;
              v30 = *a1;
              v31 = v30;
            }
          }

          v35 = *--v27;
          v34 = v35;
          if (v35)
          {
            break;
          }

          v24 = (v24 + 32);
          v15 -= 32;
          if (v23 + v24 >= a4)
          {
            goto LABEL_16;
          }
        }

        v28 = bswap32(v34);
        v29 = 1;
      }

      v25 = v23;
      goto LABEL_48;
    }

    if (v23 + v25 >= a4)
    {
      break;
    }

    v13 = v25 + v15 + 1;
    v15 += a4;
    if (v15 >= a3)
    {
      break;
    }

    if (v31 == 16964)
    {
      v32 = 4096;
    }

    else
    {
      v32 = 8 * *(*(a1 + 19) + 128);
    }

    if (v22 != v15 / v32)
    {
      v16 = sub_100011FEC(a1, 0, v51);
      if (v16)
      {
        goto LABEL_4;
      }

      *&v51[0] = 0;
      v16 = sub_100011F90(a1, v15, v51);
      if (v16)
      {
        goto LABEL_4;
      }

      v19 = *a1;
      if (v19 == 16964)
      {
        v36 = 4096;
      }

      else
      {
        v36 = 8 * *(*(a1 + 19) + 128);
      }

      v18 = *&v51[0];
      v30 = *a1;
      v22 = v15 / v36;
    }

    if (v30 == 16964)
    {
      v37 = 4095;
    }

    else
    {
      v37 = 8 * *(*(a1 + 19) + 128) - 1;
    }

    v24 = 0;
    v26 = (v37 & v15) >> 5;
    v27 = (v18 + 4 * v26);
    v28 = bswap32(*v27);
    v29 = 0x80000000 >> v15;
    v31 = v30;
LABEL_48:
    v23 = v25;
    v25 = v24;
    if (v15 < v13)
    {
      goto LABEL_16;
    }
  }

  LODWORD(v24) = v25;
LABEL_16:
  if (v24 + v23 < a4)
  {
    *a6 = 0;
    *v50 = 0;
    v7 = -34;
    goto LABEL_5;
  }

  *v50 = a4;
  *a6 = v13 - v23;
  v38 = v13 - v23 + a4;
  if (v19 == 16964)
  {
    v39 = 4096;
  }

  else
  {
    v39 = 8 * *(*(a1 + 19) + 128);
  }

  if (v22 == v38 / v39)
  {
LABEL_54:
    if (v19 == 16964)
    {
      v40 = (v38 >> 5) & 0x7F;
      v41 = (v18 + 4 * v40);
      v42 = bswap32(*v41);
      v43 = 128;
    }

    else
    {
      v44 = *(*(a1 + 19) + 128);
      v40 = ((8 * v44 - 1) & v38) >> 5;
      v41 = (v18 + 4 * v40);
      v42 = bswap32(*v41);
      v43 = v44 >> 2;
    }

    if (*v50 < v49)
    {
      v7 = 0;
      if (v38 >= a3)
      {
        goto LABEL_5;
      }

      v45 = 0x80000000 >> v38;
      if ((v42 & (0x80000000 >> v38)) != 0)
      {
        goto LABEL_5;
      }

      v46 = v43 - v40;
      v47 = v13 + a4 - v23 + 1;
      while (1)
      {
        v48 = *v50 + 1;
        *v50 = v48;
        if (v48 == v49)
        {
          break;
        }

        if (v45 > 1)
        {
          v45 >>= 1;
        }

        else
        {
          if (--v46)
          {
            ++v41;
          }

          else
          {
            v16 = sub_100011FEC(a1, 0, v51);
            if (v16)
            {
              goto LABEL_4;
            }

            *&v51[0] = 0;
            v16 = sub_100011F90(a1, v47, v51);
            if (v16)
            {
              goto LABEL_4;
            }

            v41 = *&v51[0];
            if (*a1 == 16964)
            {
              v46 = 128;
            }

            else
            {
              v46 = *(*(a1 + 19) + 128) >> 2;
            }
          }

          v42 = bswap32(*v41);
          v45 = 0x80000000;
        }

        v7 = 0;
        if (v47 < a3)
        {
          ++v47;
          if ((v42 & v45) == 0)
          {
            continue;
          }
        }

        goto LABEL_5;
      }
    }

    goto LABEL_78;
  }

  v16 = sub_100011FEC(a1, 0, v51);
  if (!v16)
  {
    *&v51[0] = 0;
    if (!sub_100011F90(a1, v13 - v23 + a4, v51))
    {
      v18 = *&v51[0];
      v19 = *a1;
      goto LABEL_54;
    }

LABEL_78:
    v7 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v7 = v16;
LABEL_5:
  if (*&v51[0])
  {
    sub_100011FEC(a1, 0, v51);
  }

  return v7;
}

uint64_t sub_1000127A0(uint64_t a1, unsigned __int16 *a2, int a3, void *a4, uint64_t a5, unsigned __int16 *a6, _DWORD *a7)
{
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
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v11 = *(a1 + 16);
  v23 = a5;
  v24 = 0x100000000;
  v12 = *(v11 + 54);
  switch(v12)
  {
    case 7u:
      v13 = 12;
      break;
    case 0x10Au:
      v13 = 88;
      break;
    case 0xAu:
      v13 = 64;
      break;
    default:
      v13 = 520;
      break;
  }

  LODWORD(v24) = v13;
  v25[0] = 0;
  v25[1] = a3;
  v26 = 0;
  if ((*(v11 + 136) & 2) != 0)
  {
    v16 = *a2;
    LOWORD(v15) = 782;
    if (v16 < 6 || v16 > v12)
    {
      return v15;
    }
  }

  else
  {
    v14 = *a2;
    LOWORD(v15) = 782;
    if (v14 < 6 || v12 < v14)
    {
      return v15;
    }
  }

  __memmove_chk();
  v15 = sub_1000052E0(a1, v25, 0xFFFFFFFFLL, &v23, a6, v11 + 184);
  if (!v15)
  {
    if (a7)
    {
      *a7 = *(v11 + 188);
    }

    v17 = *(v11 + 136);
    if ((v17 & 2) != 0)
    {
      v19 = *(v11 + 204);
      v18 = *(v11 + 204);
    }

    else
    {
      v18 = *(v11 + 204);
      v19 = v18;
    }

    LOWORD(v15) = 782;
    if (v19 >= 6)
    {
      v20 = *(v11 + 54);
      LOWORD(v15) = v19 > v20 ? 782 : 0;
      if (a4 && v19 <= v20)
      {
        if ((v17 & 2) != 0)
        {
          v21 = *(v11 + 204) + 2;
        }

        else
        {
          v21 = v18 + 1;
        }

        memmove(a4, (v11 + 204), v21);
        LOWORD(v15) = 0;
      }
    }
  }

  return v15;
}

uint64_t sub_100012A1C(uint64_t a1, int a2, void *a3, uint64_t a4, unsigned __int16 *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 16);
  v25 = a4;
  v26 = 0x100000000;
  v14 = *(v13 + 54);
  switch(v14)
  {
    case 7:
      v15 = 12;
      break;
    case 266:
      v15 = 88;
      break;
    case 10:
      v15 = 64;
      break;
    default:
      v15 = 520;
      break;
  }

  LODWORD(v26) = v15;
  if ((a2 & 0x80000000) == 0)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 == 0x7FFF)
        {
          v16 = 3;
          goto LABEL_19;
        }

        goto LABEL_26;
      }

      v16 = 1;
    }

    else
    {
      v16 = 4;
    }

LABEL_19:
    v17 = sub_100005678(a1, v16, v13 + 184, &v25, a5, a6, a7, a8);
    if (!v17)
    {
      *a6 = *(v13 + 188);
      v18 = *(v13 + 136);
      if ((v18 & 2) != 0)
      {
        v20 = *(v13 + 204);
        v19 = *(v13 + 204);
      }

      else
      {
        v19 = *(v13 + 204);
        v20 = v19;
      }

      if (v20 >= 6 && v20 <= *(v13 + 54))
      {
        if ((v18 & 2) != 0)
        {
          v22 = *(v13 + 204) + 2;
        }

        else
        {
          v22 = v19 + 1;
        }

        memmove(a3, (v13 + 204), v22);
        LOWORD(v17) = 0;
      }

      else
      {
        LOWORD(v17) = 782;
      }
    }

    return v17;
  }

  if (a2 == -32767)
  {
    v16 = 0;
    goto LABEL_19;
  }

  if (a2 == -1)
  {
LABEL_15:
    v16 = 2;
    goto LABEL_19;
  }

LABEL_26:
  if (a2 >= 2)
  {
    v21 = a2 - 1;
    while (1)
    {
      v17 = sub_100005678(a1, 1u, v13 + 184, &v25, a5, a6, a7, a8);
      if (v17)
      {
        return v17;
      }

      if (!--v21)
      {
        v16 = 1;
        goto LABEL_19;
      }
    }
  }

  if (a2 > -2)
  {
    goto LABEL_15;
  }

  v23 = -1;
  while (1)
  {
    v17 = sub_100005678(a1, 2u, v13 + 184, &v25, a5, a6, a7, a8);
    if (v17)
    {
      return v17;
    }

    --v23;
    v16 = 2;
    if (v23 <= a2)
    {
      goto LABEL_19;
    }
  }
}

uint64_t sub_100012C04(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  memset(v15, 0, 512);
  v8 = *(a1 + 16);
  v12 = a3;
  v13 = a4;
  v14 = 1;
  if ((*(v8 + 136) & 2) != 0)
  {
    v9 = *a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v9 >= 6 && v9 <= *(v8 + 54))
  {
    __memmove_chk();
    v10 = sub_100005AB8(a1, v15, &v12, a4);
    *a5 = DWORD1(v15[0]);
    sub_1000055D4(*(a1 + 16) + 184);
  }

  else
  {
    return 782;
  }

  return v10;
}

uint64_t sub_100012D4C(uint64_t a1, _WORD *a2)
{
  memset(v13, 0, 512);
  v3 = *(a1 + 16);
  if ((*(v3 + 136) & 2) != 0)
  {
    v4 = *a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v4 >= 6 && v4 <= *(v3 + 54))
  {
    __memmove_chk();
    v5 = sub_100005FD4(a1, v13, v6, v7, v8, v9, v10, v11);
    sub_1000055D4(*(a1 + 16) + 184);
  }

  else
  {
    return 782;
  }

  return v5;
}

uint64_t sub_100012E70(uint64_t a1, _WORD *a2, int a3, const void *a4, uint64_t a5, _DWORD *a6)
{
  memset(v16, 0, 512);
  v9 = *(a1 + 16);
  v13 = a4;
  v14 = a5;
  v15 = 1;
  DWORD1(v16[0]) = a3;
  if ((*(v9 + 136) & 2) != 0)
  {
    v10 = *a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v10 >= 6 && v10 <= *(v9 + 54))
  {
    __memmove_chk();
    v11 = sub_100005D70(a1, v16, &v13, a5);
    *a6 = DWORD1(v16[0]);
  }

  else
  {
    return 782;
  }

  return v11;
}

uint64_t sub_100012FAC(int *a1, unint64_t a2)
{
  v4 = *(a1 + 14);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 == 0 || !v5)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = v2;
  v18 = v3;
  v16 = 0;
  if (v6 <= a1[26])
  {
    v6 = a1[26];
  }

  v9 = *(a1 + 1);
  if (*a1 == 14)
  {
    v10 = 12;
  }

  else
  {
    v10 = 4;
  }

  result = sub_1000143A4(*(a1 + 1), a1, (v6 + 511) >> 9, v10, &v16);
  if (result)
  {
    return result;
  }

  v11 = *(a1 + 15);
  *(a1 + 14) = v11;
  if (v11 < a2)
  {
    return 4294967262;
  }

  v13 = *v9;
  if (v13 == 16964)
  {
    v15 = *a1;
    if (*a1 == 14 || v15 == 4 || v15 == 3)
    {
      v9[98] |= 0xFF00u;
      v14 = v9;
LABEL_20:
      result = sub_100021540(v14);
      if (!result)
      {
        return sub_1000149D0(v9, a1, (v11 >> 9) - v16, v16);
      }

      return result;
    }

    return 0;
  }

  if (v13 != 18475)
  {
    return 0;
  }

  result = 0;
  if (*a1 <= 0xE && ((1 << *a1) & 0x4198) != 0)
  {
    v9[98] |= 0xFF00u;
    v14 = v9;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100013104(uint64_t a1)
{
  v2 = sub_1000060FC(*(a1 + 168));
  if (v2 || (*(*(a1 + 168) + 4) & 0x80) == 0)
  {
    return v2;
  }

  *(a1 + 196) |= 0xFF00u;

  return sub_1000210C4(a1);
}

uint64_t sub_100013170(uint64_t a1, uint64_t a2, unsigned __int16 **a3, unsigned __int16 *a4)
{
  v8 = sub_1000052E0(a1, a2, 0xFFFFFFFFLL, a3, a4, a2);
  if (v8 == 32)
  {
    v8 = 48;
  }

  if (!v8)
  {
    v9 = *a3;
    v10 = **a3;
    if ((v10 - 3) < 2)
    {
      v13 = 1;
      v11 = 8;
      v12 = 4;
    }

    else
    {
      v11 = 14;
      v12 = 10;
      if (v10 == 768)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        if (v10 != 1024)
        {
          return 0;
        }
      }
    }

    v14 = *(v9 + v12);
    if (!v14)
    {
      return 0;
    }

    sub_1000055D4(a2);
    sub_10001F16C(v14, (v9 + v11), v13, a2 + 20);
    return sub_1000052E0(a1, a2, 0xFFFFFFFFLL, a3, a4, a2);
  }

  return v8;
}

uint64_t sub_100013274(unsigned __int16 *a1, void *a2, _BYTE *a3, int a4, int a5, int a6)
{
  v24 = 0u;
  memset(v25, 0, 496);
  v20 = 0;
  v19[0] = &v24;
  v19[1] = (&stru_1000001F0 + 24);
  bzero(v21, 0x220uLL);
  v22 = a5;
  sub_10001F16C(a2, a3, *a1 == 18475, &v23);
  v12 = sub_100013170(*(a1 + 21), v21, v19, &v20);
  if (v12)
  {
    return v12;
  }

  else
  {
    if (*a1 == 18475)
    {
      v14 = v25;
      v15 = &v24 + 8;
      v16 = sub_10001E7C0((*(a1 + 1) >> 29) & 1);
      DWORD1(v24) += a6;
    }

    else
    {
      v15 = &v24 + 6;
      v14 = (&v24 | 0xE);
      WORD2(v24) += a6;
      v16 = sub_10001E814(1);
    }

    *v14 = v16;
    v17 = *v15;
    v13 = sub_100005D70(*(a1 + 21), v21, v19, v20);
    if (!v13)
    {
      if (v17 == 2)
      {
        if (a4 == 256 || a4 == 1)
        {
          a1[57] += a6;
        }

        else
        {
          a1[56] += a6;
        }
      }

      if (a4 == 256 || a4 == 1)
      {
        *(a1 + 9) += a6;
      }

      else
      {
        *(a1 + 8) += a6;
      }

      *(a1 + 5) = sub_10001E7C0((*(a1 + 1) >> 29) & 1);
      a1[98] |= 0xFF00u;
    }
  }

  return v13;
}

uint64_t sub_1000134A0(unsigned __int16 *a1, void *a2, _BYTE *a3, int a4, int a5)
{
  memset(v36, 0, 512);
  v31 = 0;
  v10 = *a1 == 18475;
  v32[0] = v36;
  v32[1] = (&stru_1000001F0 + 24);
  bzero(v33, 0x220uLL);
  v34 = a4;
  sub_10001F16C(a2, a3, v10, v35);
  v11 = sub_100013170(*(a1 + 21), v33, v32, &v31);
  if (v11)
  {
    return v11;
  }

  v19 = *&v35[2];
  v20 = v36[0];
  LOWORD(v11) = 48;
  if (LOWORD(v36[0]) <= 0xFFu)
  {
    v21 = &v36[2];
    if (LOWORD(v36[0]) != 1)
    {
      if (LOWORD(v36[0]) != 2)
      {
        return v11;
      }

LABEL_18:
      v22 = *v21;
      if (v22 == 2)
      {
        LOWORD(v11) = 51;
        return v11;
      }

      goto LABEL_20;
    }

    if (a5 || !v36[1])
    {
      goto LABEL_18;
    }

LABEL_14:
    LOWORD(v11) = 50;
    return v11;
  }

  if (LOWORD(v36[0]) != 512)
  {
    if (LOWORD(v36[0]) != 256)
    {
      return v11;
    }

    v21 = (&v36[1] + 2);
    if (a5 || !LOWORD(v36[1]))
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if ((v36[0] & 0x20000) != 0)
  {
    v21 = &v36[5];
    goto LABEL_18;
  }

  v22 = 0;
LABEL_20:
  LOWORD(v11) = sub_100005FD4(*(a1 + 21), v33, v12, v13, v14, v15, v16, v17);
  if (!v11)
  {
    sub_1000055D4(v33);
    if (v22)
    {
      sub_10001F16C(v22, 0, v10, v35);
      sub_100005FD4(*(a1 + 21), v33, v23, v24, v25, v26, v27, v28);
    }

    v11 = sub_100013274(a1, v19, 0, v20, 0, -1);
    if (!v11)
    {
      sub_100013104(a1);
      LOWORD(v11) = 0;
      v30 = v20 == 2 || v20 == 512;
      if (!a5 && v30)
      {
        LOWORD(v11) = sub_1000140EC(a1, v36);
      }
    }
  }

  return v11;
}

uint64_t sub_1000136F8(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v3 = *(&xmmword_100043510 + 1);
  if (!*(&xmmword_100043510 + 1))
  {
    if (byte_10004350E)
    {
      v6 = xmmword_100043460;
      v7 = *&qword_100043470;
      v8 = xmmword_100043480;
      v9 = *&off_100043490;
      sub_10002D0E8(&v6, 2, "%s: Device block count was not initialized by user\n");
    }

    return -1;
  }

  if (dword_100043520 == 512)
  {
LABEL_10:
    v4 = 0;
    *a2 = v3;
    *a3 = 512;
    return v4;
  }

  if (dword_100043520 != -1)
  {
    v3 = (*(&xmmword_100043510 + 1) * dword_100043520) >> 9;
    goto LABEL_10;
  }

  if (byte_10004350E)
  {
    v6 = xmmword_100043460;
    v7 = *&qword_100043470;
    v8 = xmmword_100043480;
    v9 = *&off_100043490;
    sub_10002D0E8(&v6, 2, "%s: Device block size was not initialized by user\n");
  }

  return -1;
}

uint64_t sub_1000137E0(int a1, int a2, const void *a3, off_t a4, unsigned int a5, _DWORD *a6)
{
  *a6 = 0;
  if (lseek(a1, a4, 0) == -1)
  {
    if (byte_10004350E)
    {
      v13 = *__error();
      v15 = xmmword_100043460;
      v16 = *&qword_100043470;
      v17 = xmmword_100043480;
      v18 = *&off_100043490;
      sub_10002D0E8(&v15, 2, "# DeviceRead: lseek(%qd) failed with %d\n", a4, v13);
    }

    goto LABEL_7;
  }

  v11 = write(a1, a3, a5);
  if (v11)
  {
    if (v11 != -1)
    {
      LOWORD(v12) = 0;
      *a6 = v11;
      return v12;
    }

LABEL_7:
    v12 = *__error();
    return v12;
  }

  if (byte_10004350E)
  {
    v15 = xmmword_100043460;
    v16 = *&qword_100043470;
    v17 = xmmword_100043480;
    v18 = *&off_100043490;
    sub_10002D0E8(&v15, 2, "CANNOT WRITE: BLK %ld\n", a4 / 512);
  }

  LOWORD(v12) = 5;
  return v12;
}

uint64_t sub_10001390C(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v12 = a3;
  v13 = a2;
  v30 = 0;
  if (*a1 == 16964)
  {
    LOBYTE(v27) = 7;
    v25 = 0;
    DWORD2(v31) = 0;
    *&v31 = 0;
    HIBYTE(v27) = a2;
    *v28 = a3;
    *&v28[4] = a4;
    v15 = sub_1000127A0(*(a1 + 160), &v27, 0, &v25, &v31, &v30, a8);
    if (a5 && v15 == 32)
    {
      v15 = sub_100012A1C(*(a1 + 160), -1, &v25, &v31, &v30, a8, v16, v17);
      if (v15 == 851)
      {
        v15 = 32;
      }

      if (v15)
      {
        return v15;
      }

      LOWORD(v15) = 32;
      if (*(&v25 + 2) != v12 || BYTE1(v25) != v13)
      {
        return v15;
      }
    }

    else
    {
      if (v15)
      {
        return v15;
      }

      LOBYTE(v13) = BYTE1(v25);
      v12 = *(&v25 + 2);
    }

    LOWORD(v15) = 0;
    *a6 = 10;
    *(a6 + 2) = v13;
    *(a6 + 3) = 0;
    v20 = HIWORD(v25);
    *(a6 + 4) = v12;
    *(a6 + 8) = v20;
    *a7 = vmovl_u16(*&v31);
    v21 = WORD5(v31);
    *(a7 + 16) = WORD4(v31);
    *(a7 + 20) = v21;
    *(a7 + 24) = 0u;
    *(a7 + 40) = 0u;
    *(a7 + 56) = 0;
    return v15;
  }

  v26 = 0;
  v25 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = 10;
  *v28 = a2;
  *&v28[2] = a3;
  v29 = a4;
  v15 = sub_1000127A0(*(a1 + 160), &v27, 0, &v25, &v31, &v30, a8);
  if (!a5 || v15 != 32)
  {
    if (v15)
    {
      return v15;
    }

LABEL_22:
    LOWORD(v15) = 0;
    *a6 = v25;
    *(a6 + 8) = v26;
    v22 = v32;
    *a7 = v31;
    *(a7 + 16) = v22;
    v23 = v34;
    *(a7 + 32) = v33;
    *(a7 + 48) = v23;
    return v15;
  }

  v15 = sub_100012A1C(*(a1 + 160), -1, &v25, &v31, &v30, a8, v18, v19);
  if (v15 == 851)
  {
    v15 = 32;
  }

  if (!v15)
  {
    LOWORD(v15) = 32;
    if (HIDWORD(v25) == v12 && BYTE2(v25) == v13)
    {
      goto LABEL_22;
    }
  }

  return v15;
}

uint64_t sub_100013B5C(uint64_t a1, unsigned __int8 a2, int a3, int a4)
{
  if (*a1 == 16964)
  {
    LOBYTE(v5) = 7;
    HIBYTE(v5) = a2;
    *v6 = a3;
    *&v6[4] = a4;
  }

  else
  {
    v5 = 10;
    *v6 = a2;
    *&v6[2] = a3;
    v7 = a4;
  }

  return sub_100012D4C(*(a1 + 160), &v5);
}

uint64_t sub_100013BC0(unsigned __int16 *a1, uint64_t a2, unsigned int a3, unint64_t a4, void *a5, _DWORD *a6)
{
  v12 = *(a1 + 10) >> 9;
  v13 = *a1;
  v14 = a4 / v12;
  if (v13 == 16964)
  {
    v15 = 0;
    v16 = (a2 + 26);
    for (i = 3; i; --i)
    {
      v18 = *v16;
      if (!*v16)
      {
        break;
      }

      v19 = v14 >= v18;
      LODWORD(v14) = v14 - v18;
      if (!v19)
      {
        v25 = *(v16 - 1);
        v26 = v15 + v18;
        goto LABEL_15;
      }

      v15 += v18;
      v16 += 2;
    }
  }

  else
  {
    v15 = 0;
    v20 = (a2 + 40);
    for (j = 8; j; --j)
    {
      v22 = *v20;
      if (!*v20)
      {
        break;
      }

      v26 = v22 + v15;
      v19 = v14 >= v22;
      LODWORD(v14) = v14 - v22;
      if (!v19)
      {
        v25 = *(v20 - 1);
        goto LABEL_15;
      }

      v20 += 2;
      v15 += v22;
    }
  }

  v34 = 0;
  v32 = 0;
  v33 = 0;
  memset(v35, 0, sizeof(v35));
  v31 = 0;
  result = sub_100013D98(a1, a2, a4, &v33, v35, &v32 + 1, &v32, &v31);
  if (!result)
  {
    v24 = v35 + 2 * HIDWORD(v32);
    v26 = v31;
    v25 = *v24;
    v15 = v31 - v24[1];
    v13 = *a1;
LABEL_15:
    v27 = v12 * v26;
    if (*(a2 + 120) >> 9 < v27)
    {
      v27 = *(a2 + 120) >> 9;
    }

    if (v13 == 18475)
    {
      v28 = *(a1 + 48) >> 9;
    }

    else
    {
      v28 = a1[59];
    }

    result = 0;
    *a5 = v28 + a4 + (v25 - v15) * v12;
    v29 = v27 - a4;
    if (v27 - a4 >= 0x3FFFFF)
    {
      v29 = 0x3FFFFFLL;
    }

    v30 = v29 << 9;
    if (v30 > a3)
    {
      LODWORD(v30) = a3;
    }

    *a6 = v30;
  }

  return result;
}

uint64_t sub_100013D98(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7, unsigned int *a8)
{
  v15 = a3 / (*(a1 + 40) >> 9);
  if (*a1 == 18475)
  {
    v16 = *(a2 + 36);
    v17 = *(a2 + 52);
    v18 = *(a2 + 84);
    *(a5 + 32) = *(a2 + 68);
    *(a5 + 48) = v18;
    *a5 = v16;
    *(a5 + 16) = v17;
    v19 = 3;
    if (*a1 == 18475)
    {
      v19 = 8;
    }
  }

  else
  {
    *a5 = vmovl_u16(*(a2 + 24));
    v20 = *(a2 + 34);
    *(a5 + 16) = *(a2 + 32);
    *(a5 + 20) = v20;
    *(a5 + 56) = 0;
    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    v19 = 3;
  }

  v21 = 0;
  v22 = 0;
  *a8 = 0;
  v23 = 4;
  do
  {
    v24 = *(a5 + v23);
    if (!v24)
    {
      v29 = v21 - 1;
      if (!v21)
      {
        v29 = 0;
      }

      *a6 = v29;
      *a7 = 0;
      *a4 = 0;
      return 16;
    }

    v22 += v24;
    *a8 = v22;
    if (v22 > v15)
    {
      result = 0;
      *a6 = v21;
      *a7 = 0;
      *a4 = 0;
      return result;
    }

    ++v21;
    v23 += 8;
    --v19;
  }

  while (v19);
  *a6 = v21 - 1;
  result = sub_10001390C(a1, ((*(a2 + 4) << 30) >> 31), *a2, v15, 1, a4, a5, a7);
  if (result)
  {
    if (result != 32)
    {
      return result;
    }

    *a7 = 0;
    *a4 = 0;
    if (*a1 == 18475)
    {
      v26 = *(a2 + 36);
      v27 = *(a2 + 52);
      v28 = *(a2 + 84);
      *(a5 + 32) = *(a2 + 68);
      *(a5 + 48) = v28;
      *a5 = v26;
      *(a5 + 16) = v27;
    }

    else
    {
      *a5 = vmovl_u16(*(a2 + 24));
      v37 = *(a2 + 34);
      *(a5 + 16) = *(a2 + 32);
      *(a5 + 20) = v37;
      *(a5 + 56) = 0;
      *(a5 + 40) = 0u;
      *(a5 + 24) = 0u;
    }

    return 16;
  }

  v30 = 0;
  v31 = *(a4 + 8);
  *a8 = v31;
  v32 = 3;
  if (*a1 == 18475)
  {
    v32 = 8;
  }

  v33 = (a5 + 4);
  while (1)
  {
    v35 = *v33;
    v33 += 2;
    v34 = v35;
    if (!v35)
    {
      v38 = v30 != 0;
      v36 = v30 - 1;
      if (!v38)
      {
        v36 = 0;
      }

      goto LABEL_30;
    }

    v31 += v34;
    *a8 = v31;
    if (v31 > v15)
    {
      break;
    }

    ++v30;
    if (!--v32)
    {
      v36 = v30 - 1;
LABEL_30:
      *a6 = v36;
      return 16;
    }
  }

  result = 0;
  *a6 = v30;
  return result;
}

uint64_t sub_100013FD4(_WORD *a1, unsigned int *a2, _DWORD *a3, _BYTE *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (*a1 == 18475)
  {
    v5 = 8;
  }

  else
  {
    v5 = 3;
  }

  v6 = a2[1];
  if (v6)
  {
    v8 = a2;
    v9 = a2;
    while (1)
    {
      v10 = *v9;
      v9 += 2;
      v11 = sub_10002AECC(v10, v6);
      if (v11)
      {
        break;
      }

      *a3 += v6;
      if (!--v5)
      {
        break;
      }

      v6 = v8[3];
      v8 = v9;
      if (!v6)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v11 = 0;
LABEL_11:
    *a4 = 1;
  }

  return v11;
}

uint64_t sub_100014080(uint64_t a1)
{
  v2 = sub_1000060FC(*(a1 + 160));
  if (v2 || (*(*(a1 + 160) + 4) & 0x80) == 0)
  {
    return v2;
  }

  *(a1 + 196) |= 0xFF00u;

  return sub_1000210C4(a1);
}

uint64_t sub_1000140EC(_WORD *a1, unsigned __int16 *a2)
{
  v17 = 0;
  v4 = *a2;
  if (v4 == 2)
  {
    v12 = sub_100014254(a1, *(a2 + 2), 0, a2 + 26, &v17);
    v13 = *(a2 + 2);
    v14 = (a2 + 92);
  }

  else
  {
    if (v4 != 512)
    {
      v15 = 0;
      a1[98] |= 0xFF00u;
      return v15;
    }

    v5 = 0;
    memset(v19, 0, sizeof(v19));
    memset(v18, 0, sizeof(v18));
    v6 = a2 + 44;
    do
    {
      v7 = (v19 + v5);
      v8 = *(v6 - 6);
      *v7 = *(v6 - 7);
      v7[1] = v8;
      v9 = *(v6 - 1);
      v10 = (v18 + v5);
      v11 = *v6;
      v6 += 2;
      *v10 = v9;
      v10[1] = v11;
      v5 += 8;
    }

    while (v5 != 24);
    v12 = sub_100014254(a1, *(a2 + 5), 0, v19, &v17);
    v13 = *(a2 + 5);
    v14 = v18;
  }

  v15 = sub_100014254(a1, v13, 255, v14, &v17);
  if (v17)
  {
    sub_100014080(a1);
  }

  a1[98] |= 0xFF00u;
  if (!v12)
  {
    return v15;
  }

  return v12;
}

uint64_t sub_100014254(_WORD *a1, int a2, int a3, unsigned int *a4, _BYTE *a5)
{
  v13 = 0;
  v12 = 0;
  v9 = sub_100013FD4(a1, a4, &v13, &v12);
  if (!v9 && !v12)
  {
    v10 = v13;
    v14 = 0;
    v15 = 0;
    memset(v18, 0, sizeof(v18));
    v9 = sub_10001390C(a1, a3, a2, v13, 0, &v14, v18, &v15 + 1);
    if (v9)
    {
LABEL_4:
      if (v9 == 32)
      {
        LOWORD(v9) = 0;
      }
    }

    else
    {
      v16 = 0;
      while (1)
      {
        v9 = sub_100013FD4(a1, v18, &v16, &v17);
        if (v9)
        {
          break;
        }

        v9 = sub_100013B5C(a1, a3, a2, v10);
        if (v9)
        {
          break;
        }

        *a5 = 1;
        v10 += v16;
        v9 = sub_10001390C(a1, a3, a2, v10, 0, &v14, v18, &v15 + 1);
        if (v9)
        {
          goto LABEL_4;
        }
      }
    }
  }

  return v9;
}

uint64_t sub_1000143A4(uint64_t a1, _DWORD *a2, unsigned int a3, char a4, _DWORD *a5)
{
  *a5 = 0;
  if (*a1 == 18475)
  {
    v9 = 8;
  }

  else
  {
    v9 = 3;
  }

  v10 = *(a1 + 40) >> 9;
  v11 = sub_100011ABC(a3, v10);
  v12 = v11;
  v13 = *(a2 + 15) / *(a1 + 40);
  if (*a1 != 18475)
  {
    v14 = -1309;
    if (v11 > 0x3FFFFF / v10 || v11 + v13 > 0x3FFFFF / v10)
    {
      goto LABEL_54;
    }
  }

  if ((a4 & 1) != 0 && v11 > *(a1 + 48))
  {
    v14 = -34;
LABEL_54:
    *a5 = 0;
    return v14;
  }

  v55 = 0;
  v53 = 0;
  v54 = 0;
  memset(v59, 0, sizeof(v59));
  v15 = v11 + v13;
  v52 = 0;
  v51 = 0;
  v16 = sub_100013D98(a1, a2, (v11 + v13) * v10 - 1, &v54, v59, &v53 + 1, &v53, &v52 + 1);
  v14 = v16;
  v17 = v16;
  if (!v16)
  {
    goto LABEL_64;
  }

  if (v16 != 16)
  {
    goto LABEL_54;
  }

  v46 = 0;
  v47 = v9;
  v45 = v10;
  v18 = HIDWORD(v52) - v13;
  if (HIDWORD(v52) < v13)
  {
    v18 = 0;
  }

  v49 = HIDWORD(v52);
  if (HIDWORD(v52) <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = HIDWORD(v52);
  }

  v19 = v12 - v18;
  v20 = a2[26];
  v21 = *(a1 + 40);
  if (v21 > v20)
  {
    v22 = 1;
  }

  else
  {
    v22 = v20 / v21;
  }

  v48 = v22;
  v23 = HIDWORD(v53);
  v50 = 1;
  v12 = v18;
  while (1)
  {
    v24 = a2;
    v25 = v19;
    if ((a4 & 4) == 0)
    {
      v25 = sub_100011ABC(v19, v48) * v48;
    }

    v26 = *(v59 + 2 * v23 + 1) + *(v59 + 2 * v23);
    v27 = sub_1000113B4(a1, v26, v19, v25, v50, &v52, &v51);
    if (v27)
    {
      v14 = v27;
      if (v27 != 65502)
      {
        goto LABEL_56;
      }

      if ((a4 & 2) != 0)
      {
LABEL_55:
        v14 = -34;
LABEL_56:
        a2 = v24;
        goto LABEL_63;
      }

      if (v50)
      {
        v50 = 0;
        a2 = v24;
        goto LABEL_52;
      }

      if (!v51)
      {
        goto LABEL_55;
      }
    }

    v28 = v59 + 8 * v23;
    if (v52 == v26)
    {
      *(v28 + 1) += v51;
      v29 = v53;
      v30 = a1;
      a2 = v24;
      v31 = v24;
      goto LABEL_39;
    }

    if (*(v28 + 1))
    {
      ++v23;
    }

    a2 = v24;
    if (v23 != v47)
    {
      v38 = v59 + 2 * v23;
      v39 = v51;
      *v38 = v52;
      v38[1] = v39;
      v29 = v53;
      v30 = a1;
      v31 = v24;
LABEL_39:
      v40 = sub_10001481C(v30, v31, &v54, v59, v29);
      if (v40)
      {
        v14 = v40;
        goto LABEL_63;
      }

      goto LABEL_44;
    }

    if ((a4 & 8) != 0 || (v32 = *v24, *v24 == 3))
    {
      sub_100011828(a1, v52, v51);
      v14 = 17;
      goto LABEL_63;
    }

    LOWORD(v54) = 10;
    v33 = v24[1];
    WORD1(v54) = (v33 << 30 >> 31);
    HIDWORD(v54) = v32;
    v55 = v49;
    *&v59[0] = __PAIR64__(v51, v52);
    memset(v59 + 8, 0, 56);
    if (*a1 == 16964)
    {
      v56[0] = 7;
      v56[1] = v33 << 30 >> 31;
      v57 = v32;
      v58 = v49;
      v60[0] = v52;
      v60[1] = v51;
      v61 = 0;
      v34 = *(a1 + 160);
      v35 = v56;
      v36 = v60;
      v37 = 12;
    }

    else
    {
      v34 = *(a1 + 160);
      v35 = &v54;
      v36 = v59;
      v37 = 64;
    }

    v41 = sub_100012C04(v34, v35, v36, v37, &v53);
    v14 = v41;
    v23 = v41;
    if (v41)
    {
      break;
    }

    v46 = 1;
LABEL_44:
    LODWORD(v42) = v19 - v51;
    if (v19 >= v51)
    {
      v42 = v42;
    }

    else
    {
      v42 = 0;
    }

    if (v51 >= v19)
    {
      v43 = v19;
    }

    else
    {
      v43 = v51;
    }

    v12 += v43;
    v15 += v43;
    if ((a4 & 2) != 0)
    {
      if (v19 <= v51)
      {
        v14 = 0;
      }

      else
      {
        v14 = -34;
      }

      goto LABEL_63;
    }

    v49 += v51;
    v19 = v42;
LABEL_52:
    if (!v19)
    {
      v14 = 0;
      goto LABEL_63;
    }
  }

  if (v41 == 17)
  {
    sub_100011828(a1, v52, v51);
    v14 = -34;
  }

LABEL_63:
  v10 = v45;
  v17 = v46;
LABEL_64:
  *a5 = v12 * v10;
  if (v12)
  {
    *(a2 + 15) = *(a1 + 40) * v15;
    a2[1] |= 0x80u;
  }

  if (v17)
  {
    sub_100014080(a1);
  }

  return v14;
}

uint64_t sub_10001481C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*a3)
  {
    v23 = 0;
    v22 = 0;
    if (*a1 == 16964)
    {
      v19 = 7;
      v21 = 0;
      v24.i32[2] = 0;
      v24.i64[0] = 0;
      BYTE1(v19) = *(a3 + 2);
      v7 = *(a3 + 8);
      *(&v19 + 2) = *(a3 + 4);
      HIWORD(v19) = v7;
      result = sub_1000127A0(*(a1 + 160), &v19, a5, &v21, &v24, &v22, &v23);
      if (result)
      {
        return result;
      }

      *v24.i8 = vmovn_s32(*a4);
      v9 = *(a4 + 20);
      v24.i16[4] = *(a4 + 16);
      v24.i16[5] = v9;
      v10 = *(a1 + 160);
      v11 = v23;
      v12 = v22;
      v13 = &v21;
    }

    else
    {
      v20 = 0;
      v19 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      result = sub_1000127A0(*(a1 + 160), a3, a5, &v19, &v24, &v22, &v23);
      if (result)
      {
        return result;
      }

      v17 = *(a4 + 16);
      v24 = *a4;
      v25 = v17;
      v18 = *(a4 + 48);
      v26 = *(a4 + 32);
      v27 = v18;
      v10 = *(a1 + 160);
      v11 = v23;
      v12 = v22;
      v13 = &v19;
    }

    return sub_100012E70(v10, v13, v11, &v24, v12, &v23);
  }

  else
  {
    if (*a1 == 18475)
    {
      v14 = *a4;
      v15 = *(a4 + 16);
      v16 = *(a4 + 32);
      *(a2 + 84) = *(a4 + 48);
      *(a2 + 68) = v16;
      *(a2 + 52) = v15;
      *(a2 + 36) = v14;
    }

    else
    {
      *(a2 + 24) = vmovn_s32(*a4);
      *(a2 + 32) = *(a4 + 16);
      *(a2 + 34) = *(a4 + 20);
    }

    result = 0;
    *(a2 + 4) |= 0x80u;
  }

  return result;
}

uint64_t sub_1000149D0(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v6 = a2;
  v8 = malloc_type_malloc(0x8000uLL, 0xAD330913uLL);
  if (v8)
  {
    v9 = v8;
    v17 = 0;
    v10 = (a3 << 9);
    bzero(v8, 0x8000uLL);
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    WORD1(v19) = sub_1000210A4(v6);
    *&v20 = v9;
    WORD4(v21) = 32;
    do
    {
      if (a4 <= 0x40)
      {
        v11 = a4 << 9;
      }

      else
      {
        v11 = 0x8000;
      }

      v12 = sub_1000216C8(a1, SWORD1(v19), v18, v10, v11, &v17);
      if (v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = v17 == 0;
      }

      if (v13)
      {
        break;
      }

      v10 += v17;
      a4 -= v17 >> 9;
    }

    while (a4);
    free(v9);
    if (a4)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      return -39;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    return -1309;
  }
}

uint64_t sub_100014AD4(uint64_t result, unsigned __int8 *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = v2 == v3;
  if (v2 < v3)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  if (v2 < v3)
  {
    v3 = *result;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (!v3)
  {
    return v6;
  }

  v7 = (result + 1);
  v8 = a2 + 1;
  while (1)
  {
    v10 = *v7++;
    v9 = v10;
    v12 = *v8++;
    v11 = v12;
    if (v9 != v12)
    {
      v13 = word_100041852[v9];
      v14 = word_100041852[v11];
      v15 = v13 == v14;
      v16 = v13 > v14;
      v17 = v13 < v14 ? -1 : result;
      result = v16 ? 1 : v17;
      if (!v15)
      {
        break;
      }
    }

    if (!--v3)
    {
      return v6;
    }
  }

  return result;
}

uint64_t sub_100014B40(unsigned __int16 *a1, int a2, unsigned __int16 *a3, int a4)
{
  while (1)
  {
    if (a2)
    {
      do
      {
        v4 = *a1++;
        v5 = v4;
        v6 = *(word_100040252 + ((v4 >> 7) & 0x1FE));
        if (*(word_100040252 + ((v4 >> 7) & 0x1FE)))
        {
          v5 = word_100040252[v6 + v5];
        }

        v7 = v5 == 0;
        --a2;
      }

      while (a2 && !v5);
      if (!a4)
      {
LABEL_13:
        v9 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v5 = 0;
      v7 = 1;
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v8 = *a3++;
      v9 = v8;
      v10 = *(word_100040252 + ((v8 >> 7) & 0x1FE));
      if (*(word_100040252 + ((v8 >> 7) & 0x1FE)))
      {
        v9 = word_100040252[v10 + v9];
      }

      --a4;
    }

    while (a4 && !v9);
LABEL_14:
    if (v5 != v9)
    {
      break;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (v5 < v9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100014BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    return sub_100014AD4(a1 + 6, (a2 + 6));
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100014C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 6);
  v7 = *(a2 + 6);
  if (*(a1 + 6) && *(a2 + 6))
  {
    return sub_100014B40((a1 + 8), v6, (a2 + 8), v7);
  }

  else
  {
    return (v6 - v7);
  }
}

uint64_t sub_100014C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = (a1 + 8);
  v6 = (a2 + 8);
  v7 = *(a1 + 6);
  v8 = *(a2 + 6);
  v9 = v7 > v8;
  if (v7 < v8)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = *(a2 + 6);
    result = v9;
  }

  while (v7)
  {
    v10 = *v5;
    v11 = *v6;
    if (v10 > v11)
    {
      return 1;
    }

    ++v6;
    ++v5;
    --v7;
    if (v10 < v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_100014CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v4 = v2 >= v3;
  v5 = v2 == v3;
  if (v2 == v3 && (v6 = *(a1 + 1), v7 = *(a2 + 1), v4 = v6 >= v7, v5 = v6 == v7))
  {
    v8 = *(a1 + 6);
    v9 = *(a2 + 6);
    v10 = v8 == v9;
    if (v8 > v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else if (!v5 && v4)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100014D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  v4 = v2 >= v3;
  v5 = v2 == v3;
  if (v2 == v3 && (v6 = *(a1 + 2), v7 = *(a2 + 2), v4 = v6 >= v7, v5 = v6 == v7))
  {
    v8 = *(a1 + 8);
    v9 = *(a2 + 8);
    v10 = v8 == v9;
    if (v8 > v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else if (!v5 && v4)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_100014D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = (a1 + 14);
  v7 = (a2 + 14);
  v8 = *(a1 + 12);
  v9 = *(a2 + 12);
  v10 = v8 > v9;
  if (v8 < v9)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = *(a2 + 12);
    result = v10;
  }

  while (v8)
  {
    v11 = *v6;
    v12 = *v7;
    if (v11 > v12)
    {
      return 1;
    }

    ++v7;
    ++v6;
    --v8;
    if (v11 < v12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!result)
  {
    v13 = *(a1 + 8);
    v14 = *(a2 + 8);
    v15 = v13 == v14;
    if (v13 < v14)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    if (v15)
    {
      return 0;
    }

    else
    {
      return v16;
    }
  }

  return result;
}

uint64_t sub_100014DEC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  memset(v47, 0, sizeof(v47));
  v45 = 0;
  v46 = 0;
  v44 = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  v4 = *(a1 + 776);
  switch(a2)
  {
    case 4:
      v5 = 792;
      break;
    case 3:
      v5 = 784;
      break;
    case 8:
      v6 = *(a1 + 808);
      if (!*(v6 + 112))
      {
        if (byte_10004350E)
        {
          v48 = xmmword_100043460;
          v49 = *&qword_100043470;
          v50 = xmmword_100043480;
          v51 = *&off_100043490;
          sub_10002D0E8(&v48, 2, "Requested attributes btree rebuild, but attributes file size is 0\n");
        }

        goto LABEL_8;
      }

      goto LABEL_12;
    default:
      abort();
  }

  v6 = *(a1 + v5);
LABEL_12:
  LOWORD(v9) = sub_1000077D8(v6, a1 + 976);
  if (v9)
  {
    goto LABEL_13;
  }

  if (*v4 != 18475)
  {
    v7 = 0;
    v8 = -57;
    goto LABEL_15;
  }

  v9 = sub_10001F220(v47);
  if (v9)
  {
LABEL_13:
    v8 = v9;
    goto LABEL_14;
  }

  v11 = *&v47[0];
  v12 = *(v4 + 168);
  *(v4 + 48) = *(*&v47[0] + 48);
  *(v4 + 32) = *(v11 + 32);
  *(v4 + 72) = *(v11 + 72);
  *(v4 + 56) = *(v11 + 56);
  *(v4 + 16) = *(v11 + 16);
  *(v12 + 104) = *(v11 + 280);
  v13 = *(v4 + 176);
  if (v13)
  {
    *(v13 + 104) = *(v11 + 360);
  }

  *(*(v4 + 160) + 104) = *(v11 + 200);
  *(v4 + 4) = *(v11 + 4);
  v14 = *(v11 + 96);
  *(v4 + 80) = *(v11 + 80);
  *(v4 + 96) = v14;
  sub_100004D50(v4, v47, 0);
  *&v47[0] = 0;
  v8 = 22;
  if (((1 << v2) & 0x118) == 0)
  {
    goto LABEL_20;
  }

  v15 = sub_1000154C8(a1, v2);
  if (v15)
  {
    v8 = v15;
    if (v15 == 65502)
    {
      v22 = *(a1 + 888);
      v48 = *(a1 + 872);
      v49 = v22;
      v23 = *(a1 + 920);
      v50 = *(a1 + 904);
      v51 = v23;
      sub_10002D0A4(&v48, 4294966734, v16, v17, v18, v19, v20, v21, v43);
      v7 = 0;
      v8 = -34;
      goto LABEL_15;
    }

LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v7 = *(a1 + 824);
  while (1)
  {
    v24 = sub_100007568(a1 + 976, &v46, &v45, &v44 + 1, v18, v19, v20, v21);
    v8 = v24;
    if (v24)
    {
      break;
    }

    *(a1 + 56) = *(a1 + 1000);
    if (v2 == 4)
    {
      v25 = WORD2(v44);
      v26 = *v45;
      if (**(a1 + 776) != 18475)
      {
        HIDWORD(v31) = v26 - 256;
        LODWORD(v31) = v26 - 256;
        v30 = v31 >> 8;
        if ((v30 - 2) < 2)
        {
          if (HIDWORD(v44) != 46)
          {
            goto LABEL_72;
          }

          v25 = 46;
        }

        else if (v30 == 1)
        {
          if (HIDWORD(v44) != 102)
          {
            goto LABEL_72;
          }

          v25 = 102;
        }

        else
        {
          if (v30 || HIDWORD(v44) != 70)
          {
            goto LABEL_72;
          }

          v25 = 70;
        }

        goto LABEL_69;
      }

      v27 = *v45;
      if ((v27 - 3) < 2)
      {
        if ((HIDWORD(v44) - 521) < 0xFFFFFE01)
        {
          goto LABEL_72;
        }

        goto LABEL_69;
      }

      if (v27 == 2)
      {
        if (HIDWORD(v44) != 248)
        {
          goto LABEL_72;
        }

        v25 = 248;
        goto LABEL_69;
      }

      if (v27 != 1 || HIDWORD(v44) != 88)
      {
        goto LABEL_72;
      }

      goto LABEL_60;
    }

    if (v2 != 8)
    {
      if (**(a1 + 776) == 18475)
      {
        if (HIDWORD(v44) != 64)
        {
          goto LABEL_72;
        }

        v25 = 64;
      }

      else
      {
        if (HIDWORD(v44) != 12)
        {
          goto LABEL_72;
        }

        v25 = 12;
      }

      goto LABEL_69;
    }

    v28 = dword_1000485D0;
    if (!dword_1000485D0)
    {
      v28 = (((*(*(a1 + 856) + 52) - 20) >> 1) & 0x7FFFFFFE) - 268;
      dword_1000485D0 = v28;
    }

    v25 = WORD2(v44);
    v29 = *v45;
    if (*v45 == 48)
    {
      if (HIDWORD(v44) != 72)
      {
        if (byte_10004350E)
        {
          v48 = xmmword_100043460;
          v49 = *&qword_100043470;
          v50 = xmmword_100043480;
          v51 = *&off_100043490;
          sub_10002D0E8(&v48, 2, "Extents Data attribute size %u is larger than HFSPlusAttrExtents size %u\n");
        }

        goto LABEL_72;
      }

      v25 = 72;
      goto LABEL_69;
    }

    if (v29 == 32)
    {
      if (HIDWORD(v44) != 88)
      {
        if (byte_10004350E)
        {
          v48 = xmmword_100043460;
          v49 = *&qword_100043470;
          v50 = xmmword_100043480;
          v51 = *&off_100043490;
          sub_10002D0E8(&v48, 2, "Fork Data attribute size %u is larger then HFSPlusAttrForkData size %u\n");
        }

        goto LABEL_72;
      }

LABEL_60:
      v25 = 88;
      goto LABEL_69;
    }

    if (v29 != 16)
    {
      if (byte_10004350E)
      {
        v48 = xmmword_100043460;
        v49 = *&qword_100043470;
        v50 = xmmword_100043480;
        v51 = *&off_100043490;
        sub_10002D0E8(&v48, 2, "Unknown attribute type %u\n");
      }

      goto LABEL_72;
    }

    if (v28 < HIDWORD(v44))
    {
      if (byte_10004350E)
      {
        v48 = xmmword_100043460;
        v49 = *&qword_100043470;
        v50 = xmmword_100043480;
        v51 = *&off_100043490;
        sub_10002D0E8(&v48, 2, "Inline Attribute size %u is larger than maxsize %u\n");
      }

      goto LABEL_72;
    }

LABEL_69:
    v32 = sub_100012C04(v7, v46, v45, v25, &v44);
    if (v32)
    {
      if (v32 == 65502)
      {
        v35 = *(a1 + 888);
        v48 = *(a1 + 872);
        v49 = v35;
        v36 = *(a1 + 920);
        v50 = *(a1 + 904);
        v51 = v36;
        sub_10002D0A4(&v48, 4294966734, v33, v34, v18, v19, v20, v21, v43);
      }

LABEL_72:
      v8 = 8;
      goto LABEL_15;
    }
  }

  if ((v24 & 0xFFDF) != 0)
  {
    goto LABEL_15;
  }

  v37 = sub_1000060FC(v7);
  if (v37 || (v37 = sub_10000219C(*(v4 + 208))) != 0)
  {
    v8 = v37;
    goto LABEL_15;
  }

  if (v2 == 4)
  {
    *(a1 + 824) = *(a1 + 792);
    *(a1 + 792) = v7;
    *(v4 + 168) = v7;
    *v7 = 4;
    v38 = (a1 + 840);
    goto LABEL_91;
  }

  if (v2 == 8)
  {
    *(a1 + 824) = *(a1 + 808);
    *(a1 + 808) = v7;
    *(v4 + 176) = v7;
    if (v7)
    {
      *v7 = 8;
      v38 = (a1 + 856);
      goto LABEL_91;
    }

    if (byte_10004350E)
    {
      v48 = xmmword_100043460;
      v49 = *&qword_100043470;
      v50 = xmmword_100043480;
      v51 = *&off_100043490;
      sub_10002D0E8(&v48, 2, "Can't rebuilt attributes btree when there is no attributes file\n");
    }

LABEL_8:
    v7 = 0;
LABEL_9:
    v8 = 0;
    goto LABEL_15;
  }

  *(a1 + 824) = *(a1 + 784);
  *(a1 + 784) = v7;
  *(v4 + 160) = v7;
  *v7 = 3;
  v38 = (a1 + 832);
LABEL_91:
  *(a1 + 848) = *v38;
  *(v4 + 196) |= 0xFF00u;
  v39 = sub_100021540(v4);
  if (!v39)
  {
    sub_100015878(a1, *(a1 + 824));
    if (v2 == 3)
    {
      sub_100014080(v4);
    }

    goto LABEL_9;
  }

  v8 = v39;
  if (((1 << v2) & 0x118) != 0)
  {
    if (v2 == 8)
    {
      v40 = (v4 + 176);
    }

    else
    {
      v40 = (v4 + 160);
    }

    v41 = 784;
    if (v2 == 8)
    {
      v41 = 808;
    }

    if (v2 == 4)
    {
      v41 = 792;
    }

    v42 = *(a1 + 824);
    *(a1 + v41) = v42;
    if (v2 == 4)
    {
      v40 = (v4 + 168);
    }

    *(a1 + 824) = v7;
    *v40 = v42;
  }

  *(v4 + 196) |= 0xFF00u;
  sub_100021540(v4);
LABEL_15:
  if (*&v47[0])
  {
    sub_100004D50(v4, v47, 0);
  }

  if (v8 && v7)
  {
    sub_100015878(a1, v7);
  }

LABEL_20:
  sub_10000784C(a1 + 976);
  return v8;
}

uint64_t sub_1000154C8(uint64_t a1, int a2)
{
  memset(v48, 0, 106);
  v4 = *(a1 + 848);
  v5 = *(a1 + 824);
  *(v5 + 128) = 0;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  bzero(v4, 0x308uLL);
  if (a2 == 4)
  {
    v6 = 4;
    v7 = 840;
    v8 = 792;
  }

  else
  {
    if (a2 == 3)
    {
      v7 = 832;
      v8 = 784;
    }

    else
    {
      if (a2 != 8)
      {
        abort();
      }

      v7 = 856;
      v8 = 808;
    }

    v6 = a2;
  }

  v9 = *(a1 + v8);
  v10 = *(a1 + v7);
  v11 = *(v9 + 8);
  *v5 = v6;
  *(v5 + 8) = v11;
  *(v5 + 16) = v4;
  v12 = *(v10 + 52);
  *(v5 + 128) = v12;
  *(v4 + 96) = v5;
  v4[1] = 0;
  *v4 = *v10;
  *(v4 + 1) = *(v10 + 8);
  *(v4 + 26) = v12;
  *(v4 + 27) = *(v10 + 54);
  if (*v11 == 18475)
  {
    if (a2 == 3)
    {
      v13 = 2;
    }

    else
    {
      v13 = 6;
    }

    *(v4 + 34) = v13;
  }

  *(v4 + 20) = sub_100004E04;
  *(v4 + 21) = sub_10000508C;
  *(v4 + 22) = sub_100012FAC;
  v14 = *(v9 + 120);
  v15 = sub_100011AD0(v5, v14 / *(v11 + 40));
  if (!v15)
  {
    v16 = *(v4 + 96);
    *(v16 + 120) = v14;
    v15 = sub_1000149D0(v11, v16, 0, v14 >> 9);
    if (!v15)
    {
      v19 = *(v5 + 120);
      *(v5 + 112) = v19;
      if (a2 == 4)
      {
        v20 = 168;
      }

      else if (a2 == 8)
      {
        v20 = 176;
      }

      else
      {
        v20 = 160;
      }

      *(v5 + 104) = *(*(v11 + v20) + 104);
      v21 = v19 / *(v4 + 26);
      *(v4 + 14) = v21;
      *(v4 + 15) = v21;
      memset(v49, 0, sizeof(v49));
      v22 = sub_100006EE4(v4, 0, v49);
      if (v22)
      {
        v17 = v22;
        v29 = 0;
        v30 = 0;
      }

      else
      {
        v31 = *&v49[0];
        *(*&v49[0] + 8) = 1;
        *(v31 + 10) = 3;
        *(v31 + *(v4 + 26) - 2) = 14;
        *(v31 + 14) = 0;
        *(v31 + 16) = 0;
        *(v31 + 24) = 0;
        v32 = *(v4 + 26);
        *(v31 + 32) = v32;
        v33 = *(v4 + 14);
        v34 = v33 - 1;
        *(v31 + 36) = v33;
        *(v31 + 40) = v33 - 1;
        *(v31 + 46) = *(*(v4 + 96) + 104);
        *(v31 + 52) = *(v4 + 34);
        *(v31 + 34) = *(v4 + 27);
        *(v31 + 51) = *v4;
        *(v31 + v32 - 4) = 120;
        *(v31 + *(v4 + 26) - 6) = 248;
        v35 = 8 * *(v4 + 26);
        v36 = v35 - 2048;
        if (v33 <= v35 - 2048)
        {
          v30 = 0;
        }

        else
        {
          *v31 = 1;
          v30 = (v33 + 1887) / (v35 - 160);
          v34 -= v30;
          *(v31 + 40) = v34;
        }

        v37 = (v31 + 248);
        v38 = v33 - v34;
        v39 = v33 - v34 - 8;
        if (v33 - v34 >= 8)
        {
          v40 = v39 >> 3;
          memset(v37, 255, v40 + 1);
          v38 = v39 & 7;
          v37 = (v31 + v40 + 249);
        }

        *v37 = -256 >> v38;
        *(v31 + *(v4 + 26) - 8) = (v36 >> 3) + 248;
        v29 = (v33 - v30 - v34) * *(v4 + 26);
        v41 = sub_100006FE4(v4, v49, v23, v24, v25, v26, v27, v28);
        if (!v41)
        {
LABEL_32:
          v15 = sub_10001EDB4(a1, v5, v48);
          if (!v15)
          {
            *(v4 + 16) = v48[0];
            *(v4 + 36) = *(v48 + 2);
            *(v4 + 7) = *(&v48[1] + 6);
            *(v4 + 27) = WORD2(v48[1]);
            if (!v30)
            {
              return 0;
            }

            LOWORD(v15) = sub_100015AC8(v4, v29 / *(v4 + 26), v30);
          }

          return v15;
        }

        v17 = v41;
        sub_100006F74(v4, v49, v42, v43, v44, v45, v46, v47);
      }

      if (v17)
      {
        return v17;
      }

      goto LABEL_32;
    }
  }

  return v15;
}

uint64_t sub_100015878(uint64_t a1, unsigned int *a2)
{
  v4 = *(a2 + 1);
  if (*v4 == 18475)
  {
    v5 = a2 + 9;
    v6 = 8;
    while (1)
    {
      v7 = v5[1];
      if (!v7)
      {
        break;
      }

      sub_100011828(v4, *v5, v7);
      *v5 = 0;
      v5 += 2;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = a2 + 13;
    v9 = 3;
    while (*v8)
    {
      sub_100011828(v4, *(v8 - 1), *v8);
      *(v8 - 1) = 0;
      v8 += 2;
      if (!--v9)
      {
LABEL_9:
        memset(v29, 0, sizeof(v29));
        v27 = 0;
        v10 = *(a2 + 1);
        v11 = *v10;
        bzero(v30, 0x220uLL);
        v28[0] = v29;
        v28[1] = 0x100000040;
        sub_100026CB8(v11 == 18475, 0, *a2, 0, &v31);
        if (!sub_100005678(*(a1 + 784), 1u, v30, v28, &v27, v12, v13, v14))
        {
          do
          {
            v15 = *a2;
            if (v11 == 18475)
            {
              if (*&v32[2] != v15 || v32[0] != 0)
              {
                break;
              }

              v17 = v29 + 1;
              v18 = 8;
              do
              {
                v19 = *v17;
                if (!v19)
                {
                  break;
                }

                sub_100011828(v10, *(v17 - 1), v19);
                v17 += 2;
                --v18;
              }

              while (v18);
            }

            else
            {
              if (*v32 != v15 || HIBYTE(v31) != 0)
              {
                break;
              }

              v21 = v29 + 1;
              v22 = 3;
              do
              {
                if (!*v21)
                {
                  break;
                }

                sub_100011828(v10, *(v21 - 1), *v21);
                v21 += 2;
                --v22;
              }

              while (v22);
            }

            sub_100012D4C(*(a1 + 784), &v31);
          }

          while (!sub_100005678(*(a1 + 784), 1u, v30, v28, &v27, v23, v24, v25));
        }

        sub_100014080(v4);
        break;
      }
    }
  }

  v4[98] |= 0xFF00u;
  return sub_100021540(v4);
}

uint64_t sub_100015AC8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  memset(v21, 0, sizeof(v21));
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = sub_100006EE4(a1, a2, v21);
      if (v8)
      {
        break;
      }

      v15 = *&v21[0];
      *(*&v21[0] + 8) = 2;
      *(v15 + 10) = 1;
      v16 = *(a1 + 52);
      *(v15 + v16 - 2) = 14;
      *(v15 + *(a1 + 52) - 4) = v16 - 6;
      v17 = v6 + 1;
      v18 = v17 < a3 ? a2 + 1 : 0;
      *v15 = v18;
      v8 = sub_100006FE4(a1, v21, v9, v10, v11, v12, v13, v14);
      if (v8)
      {
        break;
      }

      if (v17 >= a3)
      {
        a2 = a2;
      }

      else
      {
        a2 = (a2 + 1);
      }

      v6 = ++v7;
      if (v7 >= a3)
      {
        return 0;
      }
    }

    v19 = v8;
    sub_100006F74(a1, v21, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    return 0;
  }

  return v19;
}

uint64_t sub_100015BD4(uint64_t a1)
{
  sub_10001ECA4(3);
  v2 = sub_100004B1C(a1);
  if (v2)
  {
    return v2;
  }

  sub_10001ECA4(1);
  v3 = *(a1 + 776);
  sub_100020B5C();
  v10 = *(a1 + 22);
  if ((v10 & 0x100) != 0)
  {
    v11 = *(a1 + 888);
    v43 = *(a1 + 872);
    v44 = v11;
    v12 = *(a1 + 920);
    v45 = *(a1 + 904);
    v46 = v12;
    sub_10002D0A4(&v43, 208, v4, v5, v6, v7, v8, v9, v43);
    v2 = sub_100014DEC(a1, 3);
    if (v2)
    {
      return v2;
    }
  }

  if ((*(a1 + 24) & 0x100) != 0)
  {
    v16 = *(a1 + 888);
    v43 = *(a1 + 872);
    v44 = v16;
    v17 = *(a1 + 920);
    v45 = *(a1 + 904);
    v46 = v17;
    sub_10002D0A4(&v43, 209, v4, v5, v6, v7, v8, v9, v43);
    v2 = sub_100014DEC(a1, 4);
    if (v2)
    {
      return v2;
    }

    if ((*(a1 + 20) & 0x100) == 0)
    {
LABEL_23:
      LOWORD(v2) = 0;
      return v2;
    }

LABEL_24:
    v18 = *(a1 + 888);
    v43 = *(a1 + 872);
    v44 = v18;
    v19 = *(a1 + 920);
    v45 = *(a1 + 904);
    v46 = v19;
    sub_10002D0A4(&v43, 210, v4, v5, v6, v7, v8, v9, v43);
    LOWORD(v2) = sub_100014DEC(a1, 8);
    return v2;
  }

  v13 = *(a1 + 20);
  if ((v13 & 0x100) != 0)
  {
    goto LABEL_24;
  }

  if ((v10 & 0x100) != 0)
  {
    goto LABEL_23;
  }

  if (((v13 & 4) == 0 || (v2 = sub_10001711C(408)) == 0) && ((*(a1 + 22) & 4) == 0 || (v2 = sub_10001711C(0)) == 0) && ((*(a1 + 24) & 4) == 0 || (v2 = sub_10001711C(136)) == 0))
  {
    v14 = *(v3 + 4);
    if ((v14 & 0x80000000) == 0)
    {
      *(v3 + 4) = v14 | 0x80000000;
      *(v3 + 196) |= 0xFF00u;
    }

    if ((*(a1 + 28) & 2) != 0)
    {
      v15 = sub_10000E250(a1, 0) << 16;
      if (v15)
      {
        goto LABEL_20;
      }
    }

    v2 = sub_100004B1C(a1);
    if (!v2)
    {
      if (*(a1 + 28))
      {
        v15 = sub_10000E250(a1, 1) << 16;
        if (v15)
        {
LABEL_20:
          v2 = v15 >> 16;
          return v2;
        }
      }

      v2 = sub_100004B1C(a1);
      if (!v2)
      {
        v2 = sub_100017240(a1);
        if (!v2)
        {
          v2 = sub_100004B1C(a1);
          if (!v2)
          {
            v28 = *(a1 + 28);
            *(a1 + 28) = v28 & 0xFFFF7E04;
            if ((v28 & 0x200) != 0)
            {
              v2 = sub_10001A2C0(a1, v21, v22, v23, v24, v25, v26, v27);
              if (v2)
              {
                return v2;
              }

              *(a1 + 28) &= ~0x200u;
              *(a1 + 24) |= 0x8000u;
            }

            if (*(a1 + 32) < 0)
            {
              sub_10001A8B0(a1, v21, v22, v23, v24, v25, v26, v27);
              *(a1 + 32) &= ~0x8000u;
            }

            v2 = sub_100004B1C(a1);
            if (!v2)
            {
              if ((*(a1 + 18) & 0x800) != 0)
              {
                if (BYTE1(xmmword_100043510) == 1 && !byte_10004350E)
                {
                  LOWORD(v2) = 8;
                  return v2;
                }

                v2 = sub_10001AA48(a1);
                if (v2)
                {
                  return v2;
                }

                *(a1 + 18) = *(a1 + 18) & 0xD7FF | 0x2000;
                nullsub_1();
              }

              v2 = sub_100004B1C(a1);
              if (!v2)
              {
                if ((*(a1 + 24) & 0x800) != 0)
                {
                  v2 = sub_10001B564(a1);
                  if (v2)
                  {
                    return v2;
                  }

                  *(a1 + 24) |= 0x8000u;
                }

                if (!*(a1 + 624) || (v2 = sub_100017240(a1)) == 0)
                {
                  if ((*(a1 + 22) & 0x400) != 0)
                  {
                    *(a1 + 22) &= ~0x400u;
                  }

                  v2 = sub_100004B1C(a1);
                  if (!v2)
                  {
                    v2 = sub_100004B1C(a1);
                    if (!v2)
                    {
                      v29 = *(a1 + 22);
                      if ((v29 & 0x80808080) != 0)
                      {
                        v30 = *(a1 + 784);
                        *(*(v30 + 16) + 132) |= 1u;
                        LOWORD(v2) = sub_1000060FC(v30);
                        if (v2)
                        {
                          return v2;
                        }

                        LOWORD(v29) = *(a1 + 22);
                        if ((v29 & 0x80) != 0)
                        {
                          v2 = sub_10001C220(a1, 0);
                          if (v2)
                          {
                            return v2;
                          }

                          LOWORD(v29) = *(a1 + 22);
                        }
                      }

                      if ((v29 & 0x4000) == 0 || (v2 = sub_10001C274(a1, 0)) == 0)
                      {
                        v2 = sub_100004B1C(a1);
                        if (!v2)
                        {
                          v38 = *(a1 + 24);
                          if ((v38 & 0x80808080) != 0)
                          {
                            v39 = *(a1 + 792);
                            *(*(v39 + 16) + 132) |= 1u;
                            LOWORD(v2) = sub_1000060FC(v39);
                            if (v2)
                            {
                              return v2;
                            }

                            LOWORD(v38) = *(a1 + 24);
                            if ((v38 & 0x80) != 0)
                            {
                              v2 = sub_10001C220(a1, 136);
                              if (v2)
                              {
                                return v2;
                              }

                              LOWORD(v38) = *(a1 + 24);
                            }
                          }

                          if ((v38 & 0x4000) != 0)
                          {
                            v2 = sub_10001C274(a1, 136);
                            if (v2)
                            {
                              return v2;
                            }

                            LOWORD(v38) = *(a1 + 24);
                          }

                          if ((v38 & 0x200) == 0 || (v2 = sub_10001C3EC(a1, v31, v32, v33, v34, v35, v36, v37)) == 0)
                          {
                            v40 = *(a1 + 20);
                            if ((v40 & 0x10) != 0)
                            {
                              v2 = sub_10001C610(a1, v31, v32, v33, v34, v35, v36, v37);
                              if (v2)
                              {
                                return v2;
                              }

                              v40 = *(a1 + 20);
                            }

                            if ((v40 & 0x60) != 0)
                            {
                              v2 = sub_10001C714(a1);
                              if (v2)
                              {
                                return v2;
                              }

                              v40 = *(a1 + 20);
                            }

                            if (v40 < 0)
                            {
                              v41 = *(a1 + 808);
                              *(*(v41 + 16) + 132) |= 1u;
                              LOWORD(v2) = sub_1000060FC(v41);
                              if (v2)
                              {
                                return v2;
                              }

                              if ((*(a1 + 20) & 0x4000) != 0)
                              {
LABEL_72:
                                v2 = sub_10001C274(a1, 408);
                                if (v2)
                                {
                                  return v2;
                                }
                              }
                            }

                            else if ((v40 & 0x4000) != 0)
                            {
                              goto LABEL_72;
                            }

                            if ((*(a1 + 24) & 0x800) == 0 || (v2 = sub_10001B564(a1)) == 0)
                            {
                              v2 = sub_100004B1C(a1);
                              if (!v2)
                              {
                                if ((*(a1 + 18) & 0x2000) != 0)
                                {
                                  *(a1 + 48) = 2;
                                  sub_10002B0E0(a1, 1);
                                  if (v2)
                                  {
                                    return v2;
                                  }

                                  nullsub_1();
                                }

                                v2 = sub_100004B1C(a1);
                                if (!v2)
                                {
                                  if (*(a1 + 18) < 0)
                                  {
                                    LOBYTE(v43) = 0;
                                    v2 = sub_10001CDA4(&v43);
                                    if (v2)
                                    {
                                      return v2;
                                    }

                                    if (v43)
                                    {
                                      *(a1 + 18) &= ~0x8000u;
                                      *(v3 + 196) = *(v3 + 196);
                                    }
                                  }

                                  v2 = sub_100004B1C(a1);
                                  if (!v2 && ((*(a1 + 18) & 0x1000) == 0 || (v2 = sub_10001CF94()) == 0))
                                  {
                                    v2 = sub_100004B1C(a1);
                                    if (!v2)
                                    {
                                      if ((v42 = *(v3 + 196), (*(a1 + 18) & 0x80000000) == 0) && v42 < 0x100 || (*(v3 + 196) = v42 | 0xFF00, *(v3 + 4) |= 0x100u, (v2 = sub_100021540(v3)) == 0))
                                      {
                                        v2 = sub_100004B1C(a1);
                                        if (!v2)
                                        {
                                          LOWORD(v2) = 8 * (*(a1 + 956) != 0);
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

  return v2;
}

uint64_t sub_100016130(uint64_t a1, uint64_t a2)
{
  memset(v25, 0, sizeof(v25));
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  bzero(v19, 0x220uLL);
  v4 = sub_10000B770(a1, *(a2 + 40), 1, v20, v25, &v14);
  if (v4)
  {
    v5 = v4;
    if (v4 == 32)
    {
      v5 = 0;
      *(a1 + 957) = 1;
    }

    return v5;
  }

  if (LOWORD(v25[0]) == 2)
  {
    DWORD1(v25[0]) = *(a2 + 16);
    v12 = v25;
    LODWORD(v13) = v14;
    HIDWORD(v13) = 1;
    return sub_100005D70(*(a1 + 792), v19, &v12, v14);
  }

  if (LOWORD(v25[0]) != 1)
  {
    return sub_10001ECC0(a1, 2);
  }

  sub_10001EBC8("com.apple.system.hfs.firstlink", 30, v24, &v11, 254);
  v23 = v11 >> 1;
  v20[0] = v11 + 12;
  v20[1] = 0;
  v21 = *(a2 + 40);
  v22 = 0;
  v15 = 16;
  v16 = 0;
  snprintf(v18, 0xCuLL, "%lu", *(a2 + 16));
  v6 = strlen(v18);
  v17 = v6 + 1;
  v12 = &v15;
  v14 = v6 + 1 - (v6 & 1) + 17;
  LODWORD(v13) = v14;
  HIDWORD(v13) = 1;
  v5 = sub_100005AB8(*(a1 + 808), v19, &v12, v14);
  if (v5 == 33)
  {
    v5 = sub_100005D70(*(a1 + 808), v19, &v12, v14);
  }

  if (v5)
  {
    v7 = *(a1 + 808);
    if (!*(v7 + 120) && !*(v7 + 112) && !*(v7 + 104) && sub_10002D444() >= 3)
    {
      v10[0] = xmmword_100043460;
      v10[1] = *&qword_100043470;
      v10[2] = xmmword_100043480;
      v10[3] = *&off_100043490;
      sub_10002D0E8(v10, 2, "\tFixBadLinkChainFirst: Attribute btree does not exists.\n");
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_1000163DC(uint64_t a1, uint64_t a2)
{
  memset(v8, 0, 512);
  memset(v9, 0, 512);
  v7 = 0;
  v6 = 0;
  v4 = sub_10000B770(a1, *(a2 + 40), 1, v8, v9, &v7);
  if (!v4)
  {
    if (LOWORD(v9[0]) == 2)
    {
      v9[3] = *(a2 + 16);
      LOWORD(v4) = sub_100012E70(*(a1 + 792), v8, 0, v9, v7, &v6);
    }

    else
    {
      LOWORD(v4) = sub_10001ECC0(a1, 2);
    }
  }

  return v4;
}

uint64_t sub_10001652C(uint64_t a1, uint64_t a2)
{
  memset(v7, 0, 512);
  memset(v8, 0, 512);
  v6 = 0;
  v5 = 0;
  v3 = sub_10000B770(a1, *(a2 + 40), 1, v7, v8, &v6);
  if (!v3)
  {
    if (v8[0] == 2)
    {
      v8[1] &= ~0x20u;
      LOWORD(v3) = sub_100012E70(*(a1 + 792), v7, 0, v8, v6, &v5);
    }

    else
    {
      LOWORD(v3) = sub_10001ECC0(a1, 2);
    }
  }

  return v3;
}

uint64_t sub_100016674(uint64_t a1, uint64_t a2)
{
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  *v17 = 0u;
  memset(v16, 0, 512);
  memset(v15, 0, 512);
  v14 = 0;
  v13 = 0;
  sub_10001F16C(*(a2 + 40), 0, 1, v16);
  v4 = sub_1000127A0(*(a1 + 792), v16, 0, v15, v17, &v14, &v13);
  if (!v4)
  {
    if (LOWORD(v17[0]) != 3)
    {
      LOWORD(v5) = 0;
      *(a1 + 24) |= 0x800u;
      goto LABEL_12;
    }

    sub_10001F16C(v17[1], &v17[2], 1, v16);
    v6 = sub_1000127A0(*(a1 + 792), v16, 0, v15, v17, &v14, &v13);
    if (v6)
    {
      v7 = v6;
      if (sub_10002D444() >= 3)
      {
        v9 = xmmword_100043460;
        v10 = *&qword_100043470;
        v11 = xmmword_100043480;
        v12 = *&off_100043490;
        sub_10002D0E8(&v9, 2, "UpdFolderCount: second SearchBTreeRecord failed (thread.parentID = %u, result = %d), just returning without complaint\n", v17[1], v7);
      }
    }

    else
    {
      if (LOWORD(v17[0]) != 1)
      {
        if (sub_10002D444() >= 3)
        {
          v9 = xmmword_100043460;
          v10 = *&qword_100043470;
          v11 = xmmword_100043480;
          v12 = *&off_100043490;
          sub_10002D0E8(&v9, 2, "UpdFolderCount:  actual record type (%d) != FolderRecord\n");
        }

        goto LABEL_10;
      }

      if (*(a2 + 16) != DWORD1(v22))
      {
        DWORD1(v22) = *(a2 + 16);
        v5 = sub_100012E70(*(a1 + 792), v15, v13, v17, v14, &v13);
        if (!v5)
        {
          return v5;
        }

        if (sub_10002D444() >= 3)
        {
          v9 = xmmword_100043460;
          v10 = *&qword_100043470;
          v11 = xmmword_100043480;
          v12 = *&off_100043490;
          sub_10002D0E8(&v9, 2, "UpdFolderCount:  ReplaceBTreeRecord failed (%d)\n");
        }

        goto LABEL_10;
      }
    }

    LOWORD(v5) = 0;
    return v5;
  }

  if (v4 == 32)
  {
    LOWORD(v5) = 0;
LABEL_12:
    *(a1 + 957) = 1;
    return v5;
  }

  if (sub_10002D444() >= 3)
  {
    v9 = xmmword_100043460;
    v10 = *&qword_100043470;
    v11 = xmmword_100043480;
    v12 = *&off_100043490;
    sub_10002D0E8(&v9, 2, "\tUpdFolderCount: first SearchBTreeRecord failed, parid = %u, result = %d\n");
  }

LABEL_10:
  LOWORD(v5) = sub_10001ECC0(a1, 2);
  return v5;
}

uint64_t sub_1000169F4(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, 512);
  memset(v9, 0, 512);
  memset(v8, 0, 512);
  v7 = 0;
  v6 = 0;
  sub_10001F16C(*(a2 + 40), 0, 1, v9);
  v3 = sub_1000127A0(*(a1 + 792), v9, 0, v8, v10, &v7, &v6);
  if (v3)
  {
    if (v3 == 32)
    {
      LOWORD(v4) = 0;
LABEL_11:
      *(a1 + 957) = 1;
      return v4;
    }

LABEL_9:
    LOWORD(v4) = sub_10001ECC0(a1, 2);
    return v4;
  }

  if (LOWORD(v10[0]) != 3)
  {
    LOWORD(v4) = 0;
    *(a1 + 24) |= 0x800u;
    goto LABEL_11;
  }

  sub_10001F16C(v10[1], &v10[2], 1, v9);
  if (sub_1000127A0(*(a1 + 792), v9, 0, v8, v10, &v7, &v6) || LOWORD(v10[0]) != 1)
  {
    goto LABEL_9;
  }

  if ((v10[0] & 0x100000) != 0)
  {
    LOWORD(v4) = 0;
    return v4;
  }

  HIWORD(v10[0]) |= 0x10u;
  v4 = sub_100012E70(*(a1 + 792), v8, v6, v10, v7, &v6);
  if (v4)
  {
    goto LABEL_9;
  }

  return v4;
}

uint64_t sub_100016C5C(int a1, char *__dst, _DWORD *a3)
{
  if (__dst)
  {
    v5 = (*a3 - 1);
    if ((a1 - 3) > 0xC)
    {
      v6 = "Unknown File";
    }

    else
    {
      v6 = off_10003C4B0[a1 - 3];
    }

    v7 = strncpy(__dst, v6, (*a3 - 1));
    __dst[v5] = 0;
    *a3 = strlen(v7);
  }

  return 0;
}

uint64_t sub_100016CD8(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4, unint64_t a5, _DWORD *a6, _WORD *a7)
{
  v49 = 0;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  memset(v50, 0, 512);
  size = 0;
  if (!(a3 | a5))
  {
    v12 = 0;
    LOWORD(v11) = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_5;
  }

  v8 = a2;
  if (a2 < 0x10)
  {
    v9 = 0;
    v10 = 0;
    LOWORD(v11) = 256;
    v12 = -50;
    goto LABEL_5;
  }

  sub_100020B5C();
  v21 = v20;
  if (v20)
  {
    v22 = 766;
    v23 = 3542958816;
  }

  else
  {
    v22 = 32;
    v23 = 356857417;
  }

  v10 = malloc_type_malloc(v22, v23);
  if (!v10)
  {
    LOWORD(v11) = 0;
    v9 = 0;
    v12 = -108;
    goto LABEL_5;
  }

  v44 = a6;
  v45 = a7;
  v9 = 0;
  v24 = 0;
  do
  {
    sub_10001F16C(v8, 0, v21, v47);
    v25 = sub_1000127A0(*(a1 + 792), v47, 0, v47, v50, &v49, &v48);
    if (v25)
    {
      v12 = v25;
      LOWORD(v11) = 0;
LABEL_66:
      a7 = v45;
      goto LABEL_5;
    }

    if (v50[0] - 3 >= 2 && v50[0] != 1024 && v50[0] != 768)
    {
      LOWORD(v11) = 0;
      v12 = -50;
      goto LABEL_66;
    }

    if (v21)
    {
      sub_10001EAF0(v50 | 0xA, 2 * v50[4], v10, &size, 0x2FEuLL);
    }

    else
    {
      size = LOBYTE(v50[7]);
      __memcpy_chk();
    }

    v26 = malloc_type_malloc(0x18uLL, 0x1030040B20C17F8uLL);
    if (!v26)
    {
      LOWORD(v11) = 0;
      v12 = -108;
      goto LABEL_66;
    }

    v27 = v26;
    v28 = size;
    v27[2] = size;
    v29 = malloc_type_malloc(v28, 0x820BDE09uLL);
    *v27 = v29;
    memcpy(v29, v10, size);
    *(v27 + 2) = v9;
    if (!v24)
    {
      v24 = v27;
    }

    v30 = &v50[2];
    if (!v21)
    {
      v30 = (v50 | 0xA);
    }

    if (!a3)
    {
      break;
    }

    v8 = *v30;
    v9 = v27;
  }

  while (v8 != 2);
  if (a5)
  {
    v31 = *(v24 + 2);
    v32 = *v44 >= v31 + 1;
    v33 = *v44 < v31 + 1;
    if (*v44 >= v31 + 1)
    {
      v34 = v31;
    }

    else
    {
      v34 = (*v44 - 1);
    }

    *v44 = v34;
    if (v32)
    {
      v35 = 2;
    }

    else
    {
      v35 = 3;
    }

    if (v34 <= 0xFF)
    {
      v11 = v33;
    }

    else
    {
      v11 = v35;
    }

    memcpy(a5, *v24, v34);
    *(a5 + *v44) = 0;
  }

  else
  {
    v11 = 0;
  }

  a7 = v45;
  if (a3)
  {
    v36 = *a4;
    *a4 = 0;
    v37 = v36 - 1;
    if (v36 == 1)
    {
      v38 = 0;
    }

    else
    {
      while (1)
      {
        *(a3 + *a4) = 47;
        LODWORD(v38) = *a4 + 1;
        *a4 = v38;
        v39 = v37 - 1;
        if (v37 == 1)
        {
          break;
        }

        v40 = v27[2];
        if (v39 >= v40)
        {
          v41 = v40;
        }

        else
        {
          v41 = v39;
        }

        if (v39 >= v40)
        {
          v42 = v11;
        }

        else
        {
          v42 = v11 | 0x10;
        }

        size = v41;
        if (v41 <= 0xFF)
        {
          v11 = v42;
        }

        else
        {
          v11 = v42 | 0x20;
        }

        memcpy((a3 + v38), *v27, v41);
        *a4 += v41;
        v43 = *(v27 + 2);
        free(*v27);
        free(v27);
        if (v43)
        {
          v27 = v43;
          v37 = v39 - v41;
          if (v39 != v41)
          {
            continue;
          }
        }

        LODWORD(v38) = *a4;
        v27 = v43;
        break;
      }

      v38 = v38;
      a7 = v45;
    }

    v12 = 0;
    *(a3 + v38) = 0;
  }

  else
  {
    v12 = 0;
  }

  v9 = v27;
LABEL_5:
  if (a7)
  {
    *a7 = v11;
  }

  if (v9)
  {
    do
    {
      v13 = *(v9 + 2);
      if (*v9)
      {
        free(*v9);
      }

      free(v9);
      v9 = v13;
    }

    while (v13);
  }

  if (v10)
  {
    free(v10);
  }

  return v12;
}

uint64_t sub_10001711C(int a1)
{
  v1 = *(sub_10001EDA4(a1) + 16);
  v2 = **(v1 + 760);
  *v10 = 0u;
  *v11 = 0u;
  v3 = *(v1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0x80;
  while ((v5 & *v2) != 0)
  {
LABEL_6:
    if (v5 >> 1)
    {
      v5 >>= 1;
    }

    else
    {
      ++v2;
      v5 = 0x80;
    }

    v4 = (v4 + 1);
    if (v4 >= v3)
    {
      return 0;
    }
  }

  v6 = (*(v1 + 160))(*(v1 + 768), v4, 8, v10);
  if (!v6)
  {
    bzero(v10[0], LODWORD(v11[1]));
    (*(v1 + 168))(*(v1 + 768), v10, 2);
    v10[0] = 0;
    v3 = *(v1 + 56);
    goto LABEL_6;
  }

  v8 = v6;
  if (byte_10004350E)
  {
    v9[0] = xmmword_100043460;
    v9[1] = *&qword_100043470;
    v9[2] = xmmword_100043480;
    v9[3] = *&off_100043490;
    sub_10002D0E8(v9, 2, "Couldn't read node #%u\n", v4);
  }

  return v8;
}

uint64_t sub_100017240(uint64_t a1)
{
  v1 = *(a1 + 624);
  *(a1 + 624) = 0;
  if (v1)
  {
    v159 = (a1 + 872);
    v3 = 0uLL;
    while (1)
    {
      v4 = *v1;
      *(a1 + 957) = 0;
      v5 = *(v1 + 8);
      if (v5 > 0x215)
      {
        switch(*(v1 + 8))
        {
          case 0x216:
            v63 = *(v1 + 40);
            v196 = 0;
            v195 = 0;
            v194 = 0;
            v192 = v3;
            v193 = v3;
            v190 = v3;
            v191 = v3;
            v188 = v3;
            v189 = v3;
            v186 = v3;
            v187 = v3;
            v184 = v3;
            v185 = v3;
            v182 = v3;
            v183 = v3;
            v180 = v3;
            v181 = v3;
            v178 = v3;
            v179 = v3;
            v176 = v3;
            v177 = v3;
            v174 = v3;
            v175 = v3;
            v172 = v3;
            v173 = v3;
            v170 = v3;
            v171 = v3;
            v168 = v3;
            v169 = v3;
            v166 = v3;
            v167 = v3;
            v164 = v3;
            v165 = v3;
            __dst = v3;
            v163 = v3;
            v292 = v3;
            v291 = v3;
            v290 = v3;
            v289 = v3;
            v288 = v3;
            v287 = v3;
            v286 = v3;
            v285 = v3;
            v284 = v3;
            v283 = v3;
            v282 = v3;
            v281 = v3;
            v280 = v3;
            v279 = v3;
            v278 = v3;
            v277 = v3;
            v276 = v3;
            v275 = v3;
            v274 = v3;
            v273 = v3;
            v272 = v3;
            v271 = v3;
            v270 = v3;
            v269 = v3;
            v268 = v3;
            v267 = v3;
            v266 = v3;
            v265 = v3;
            v264 = v3;
            v263 = v3;
            v262 = v3;
            *v261 = v3;
            v260 = v3;
            v259 = v3;
            v258 = v3;
            v257 = v3;
            v256 = v3;
            v255 = v3;
            v254 = v3;
            v253 = v3;
            v252 = v3;
            v251 = v3;
            v250 = v3;
            v249 = v3;
            v248 = v3;
            v247 = v3;
            v246 = v3;
            v245 = v3;
            v244 = v3;
            v243 = v3;
            v242 = v3;
            v241 = v3;
            v240 = v3;
            v239 = v3;
            v238 = v3;
            v237 = v3;
            v236 = v3;
            v235 = v3;
            v234 = v3;
            v233 = v3;
            v232 = v3;
            v231 = v3;
            v230 = v3;
            v229 = v3;
            v228 = v3;
            v227 = v3;
            v226 = v3;
            v225 = v3;
            v224 = v3;
            v223 = v3;
            v222 = v3;
            v220 = v3;
            v221 = v3;
            v218 = v3;
            v219 = v3;
            v216 = v3;
            v217 = v3;
            v214 = v3;
            v215 = v3;
            v212 = v3;
            v213 = v3;
            v210 = v3;
            v211 = v3;
            v208 = v3;
            v209 = v3;
            v206 = v3;
            v207 = v3;
            v204 = v3;
            v205 = v3;
            v202 = v3;
            v203 = v3;
            v200 = v3;
            v201 = v3;
            v198 = v3;
            v199 = v3;
            v197 = v3;
            v161 = 0;
            v160[0] = v3;
            v160[1] = v3;
            v64 = *(sub_10001EDA4(136) + 16);
            sub_100020B5C();
            v66 = v65;
            sub_10001F16C(v63, 0, v65, &v197);
            v67 = sub_1000127A0(*(a1 + 792), &v197, 0, &v229, v261, &v194, &v195);
            if (v67)
            {
              v68 = v67;
              goto LABEL_111;
            }

            if ((LOWORD(v261[0]) == 3 || LOWORD(v261[0]) == 768) && (v96 = *(v64 + 60)) != 0)
            {
              while (1)
              {
                v97 = sub_100006D88(v64, v96, v160);
                if (v97)
                {
                  break;
                }

                v104 = *&v160[0];
                if (*(*&v160[0] + 10))
                {
                  v105 = 0;
                  while (1)
                  {
                    sub_100007494(v64, v104, v105, &v161, &v196, &v194);
                    v106 = *v196;
                    v107 = 4;
                    if (v106 != 1)
                    {
                      v107 = 3;
                    }

                    if (*&v196[v107] == v63 && (v106 == 1 || v106 == 256))
                    {
                      break;
                    }

                    if (*(v104 + 10) <= ++v105)
                    {
                      goto LABEL_176;
                    }
                  }

                  v108 = *(v161 + 2);
                  sub_10001F0E8((v161 + 6), &__dst, v66);
                  if (v108)
                  {
                    sub_100006F74(v64, v160, v98, v99, v100, v101, v102, v103);
                    sub_1000127A0(*(a1 + 792), &v197, 0, &v229, v261, &v194, &v195);
                    v153 = 4;
                    if (!v66)
                    {
                      v153 = 10;
                    }

                    *(v261 | v153) = v108;
                    v154 = 8;
                    if (!v66)
                    {
                      v154 = 14;
                    }

                    sub_10001F0E8(&__dst, (v261 | v154), v66);
                    sub_100012E70(*(a1 + 792), &v229, v195, v261, v194, &v195);
                    LOWORD(v12) = 0;
                    goto LABEL_278;
                  }
                }

LABEL_176:
                v96 = *v104;
                sub_100006F74(v64, v160, v98, v99, v100, v101, v102, v103);
                if (!v96)
                {
                  goto LABEL_177;
                }
              }

              v68 = v97;
LABEL_111:
              v69 = a1;
            }

            else
            {
LABEL_177:
              v69 = a1;
              v68 = 2;
            }

            LOWORD(v12) = sub_10001ECC0(v69, v68);
            goto LABEL_278;
          case 0x217:
          case 0x218:
          case 0x219:
          case 0x21A:
          case 0x21F:
          case 0x220:
          case 0x221:
          case 0x222:
          case 0x223:
          case 0x224:
          case 0x225:
          case 0x226:
          case 0x228:
          case 0x229:
          case 0x22A:
          case 0x22B:
          case 0x22C:
          case 0x22D:
          case 0x22E:
          case 0x22F:
          case 0x230:
          case 0x231:
          case 0x232:
          case 0x233:
          case 0x234:
          case 0x23A:
          case 0x23C:
          case 0x23D:
          case 0x23E:
          case 0x23F:
          case 0x240:
          case 0x243:
          case 0x248:
          case 0x249:
          case 0x24A:
          case 0x24E:
          case 0x24F:
          case 0x250:
          case 0x254:
          case 0x255:
          case 0x256:
          case 0x25F:
          case 0x260:
          case 0x261:
          case 0x263:
          case 0x265:
            goto LABEL_80;
          case 0x21B:
          case 0x21C:
          case 0x21D:
          case 0x21E:
            goto LABEL_20;
          case 0x227:
            v292 = v3;
            v291 = v3;
            v290 = v3;
            v289 = v3;
            v288 = v3;
            v287 = v3;
            v286 = v3;
            v285 = v3;
            v284 = v3;
            v283 = v3;
            v282 = v3;
            v281 = v3;
            v280 = v3;
            v279 = v3;
            v278 = v3;
            v277 = v3;
            v276 = v3;
            v275 = v3;
            v274 = v3;
            v273 = v3;
            v272 = v3;
            v271 = v3;
            v270 = v3;
            v269 = v3;
            v268 = v3;
            v267 = v3;
            v266 = v3;
            v265 = v3;
            v264 = v3;
            v263 = v3;
            v262 = v3;
            *v261 = v3;
            v260 = v3;
            v259 = v3;
            v258 = v3;
            v257 = v3;
            v256 = v3;
            v255 = v3;
            v254 = v3;
            v253 = v3;
            v252 = v3;
            v251 = v3;
            v250 = v3;
            v249 = v3;
            v248 = v3;
            v247 = v3;
            v246 = v3;
            v245 = v3;
            v244 = v3;
            v243 = v3;
            v242 = v3;
            v241 = v3;
            v240 = v3;
            v239 = v3;
            v238 = v3;
            v237 = v3;
            v236 = v3;
            v235 = v3;
            v234 = v3;
            v233 = v3;
            v232 = v3;
            v231 = v3;
            v230 = v3;
            v229 = v3;
            v228 = v3;
            v227 = v3;
            v226 = v3;
            v225 = v3;
            v224 = v3;
            v223 = v3;
            v222 = v3;
            v220 = v3;
            v221 = v3;
            v218 = v3;
            v219 = v3;
            v216 = v3;
            v217 = v3;
            v214 = v3;
            v215 = v3;
            v212 = v3;
            v213 = v3;
            v210 = v3;
            v211 = v3;
            v208 = v3;
            v209 = v3;
            v206 = v3;
            v207 = v3;
            v204 = v3;
            v205 = v3;
            v202 = v3;
            v203 = v3;
            v200 = v3;
            v201 = v3;
            v198 = v3;
            v199 = v3;
            v197 = v3;
            LODWORD(__dst) = 0;
            LOWORD(v160[0]) = 0;
            sub_100020B5C();
            sub_10001F16C(*(v1 + 40), (v1 + 44), v58, &v197);
            v11 = sub_1000127A0(*(a1 + 792), &v197, 0, &v229, v261, v160, &__dst);
            if (v11)
            {
              goto LABEL_314;
            }

            v59 = *(v1 + 16);
            v60 = *(v1 + 24);
            if (LOWORD(v261[0]) == 1)
            {
              if (WORD4(v264) == v60)
              {
                WORD4(v264) = *(v1 + 16);
              }

              else
              {
                v137 = *(v1 + 32);
                if (v59 >= v60)
                {
                  v138 = WORD4(v264) | v137;
                }

                else
                {
                  v138 = WORD4(v264) & ~v137;
                }

                WORD4(v264) = v138;
              }
            }

            else if (v60 == HIWORD(v262))
            {
              HIWORD(v262) = *(v1 + 16);
            }

            else
            {
              v139 = *(v1 + 32);
              if (v59 >= v60)
              {
                v140 = HIWORD(v262) | v139;
              }

              else
              {
                v140 = HIWORD(v262) & ~v139;
              }

              HIWORD(v262) = v140;
            }

            v90 = *(a1 + 792);
            v94 = __dst;
            v91 = LOWORD(v160[0]);
            v92 = &v229;
            goto LABEL_312;
          case 0x235:
            v74 = *(a1 + 776);
            v262 = v3;
            *v261 = v3;
            v75 = sub_10001F7EC(v261);
            if (v75)
            {
              goto LABEL_120;
            }

            v109 = *v261;
            *(*v261 + 28) = *(v1 + 44);
            *(v109 + 124) = *(v1 + 46);
            *(v109 + 126) = *(v1 + 48);
            sub_100004D50(v74, v261, 1u);
            LOWORD(v12) = v110;
            *v261 = 0;
            if (v110)
            {
              goto LABEL_327;
            }

            v75 = sub_10001F888(v261);
            if (v75)
            {
LABEL_120:
              LOWORD(v12) = v75;
              if (!*v261)
              {
                goto LABEL_327;
              }

              v76 = 0;
            }

            else
            {
              v111 = *v261;
              *(*v261 + 28) = *(v1 + 44);
              *(v111 + 124) = *(v1 + 46);
              *(v111 + 126) = *(v1 + 48);
              v76 = 1;
            }

            v77 = v74;
            goto LABEL_123;
          case 0x236:
            v61 = *(a1 + 776);
            v262 = v3;
            *v261 = v3;
            v62 = sub_10001F7EC(v261);
            if (v62)
            {
              goto LABEL_107;
            }

            *(*v261 + 150) = *(*v261 + 136) + *(*v261 + 134);
            sub_100004D50(v61, v261, 1u);
            LOWORD(v12) = v95;
            *v261 = 0;
            if (v95)
            {
              goto LABEL_327;
            }

            v62 = sub_10001F888(v261);
            if (v62)
            {
LABEL_107:
              LOWORD(v12) = v62;
              if (*v261)
              {
                sub_100004D50(v61, v261, 0);
              }

              goto LABEL_327;
            }

            *(*v261 + 150) = *(*v261 + 136) + *(*v261 + 134);
            v77 = v61;
            v76 = 1;
LABEL_123:
            sub_100004D50(v77, v261, v76);
            goto LABEL_317;
          case 0x237:
          case 0x266:
            sub_100020B5C();
            if (!v24)
            {
              goto LABEL_326;
            }

            v292 = 0u;
            v291 = 0u;
            v290 = 0u;
            v289 = 0u;
            v288 = 0u;
            v287 = 0u;
            v286 = 0u;
            v285 = 0u;
            v284 = 0u;
            v283 = 0u;
            v282 = 0u;
            v281 = 0u;
            v280 = 0u;
            v279 = 0u;
            v278 = 0u;
            v277 = 0u;
            v276 = 0u;
            v275 = 0u;
            v274 = 0u;
            v273 = 0u;
            v272 = 0u;
            v271 = 0u;
            v270 = 0u;
            v269 = 0u;
            v268 = 0u;
            v267 = 0u;
            v266 = 0u;
            v265 = 0u;
            v264 = 0u;
            v263 = 0u;
            v262 = 0u;
            *v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            v258 = 0u;
            v257 = 0u;
            v256 = 0u;
            v255 = 0u;
            v254 = 0u;
            v253 = 0u;
            v252 = 0u;
            v251 = 0u;
            v250 = 0u;
            v249 = 0u;
            v248 = 0u;
            v247 = 0u;
            v246 = 0u;
            v245 = 0u;
            v244 = 0u;
            v243 = 0u;
            v242 = 0u;
            v241 = 0u;
            v240 = 0u;
            v239 = 0u;
            v238 = 0u;
            v237 = 0u;
            v236 = 0u;
            v235 = 0u;
            v234 = 0u;
            v233 = 0u;
            v232 = 0u;
            v231 = 0u;
            v230 = 0u;
            v229 = 0u;
            LOWORD(__dst) = 0;
            LODWORD(v197) = 0;
            v25 = sub_10000B770(a1, *(v1 + 40), v24, &v229, v261, &__dst);
            if (v25)
            {
              LOWORD(v12) = v25;
              v3 = 0uLL;
              if (v25 == 32)
              {
                LOWORD(v12) = 0;
                *(a1 + 957) = 1;
              }

              goto LABEL_328;
            }

            v3 = 0uLL;
            if (LOWORD(v261[0]) - 3 >= 0xFFFFFFFE && HIDWORD(v263) != *(v1 + 16))
            {
              HIDWORD(v263) = *(v1 + 16);
              v90 = *(a1 + 792);
              v91 = __dst;
              v92 = &v229;
              v93 = &v197;
              v94 = 0;
              goto LABEL_313;
            }

            goto LABEL_339;
          case 0x238:
            sub_100020B5C();
            if (!v54)
            {
              goto LABEL_326;
            }

            v55 = *(v1 + 44);
            if (!*(v1 + 44))
            {
              LOWORD(v12) = -1;
              goto LABEL_327;
            }

            v228 = 0u;
            v227 = 0u;
            v226 = 0u;
            v225 = 0u;
            v224 = 0u;
            v223 = 0u;
            v222 = 0u;
            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v210 = 0u;
            v211 = 0u;
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v197 = 0u;
            *&__dst = 0;
            v229 = 0u;
            v230 = 0u;
            v231 = 0u;
            v232 = 0u;
            v233 = 0u;
            v234 = 0u;
            v235 = 0u;
            v236 = 0u;
            v237 = 0u;
            v238 = 0u;
            v239 = 0u;
            v240 = 0u;
            v241 = 0u;
            v242 = 0u;
            v243 = 0u;
            v244 = 0u;
            v245 = 0u;
            v246 = 0u;
            v247 = 0u;
            v248 = 0u;
            v249 = 0u;
            v250 = 0u;
            v251 = 0u;
            v252 = 0u;
            v253 = 0u;
            v254 = 0u;
            v255 = 0u;
            v256 = 0u;
            v257 = 0u;
            v258 = 0u;
            v259 = 0u;
            v260 = 0u;
            v292 = 0u;
            v291 = 0u;
            v290 = 0u;
            v289 = 0u;
            v288 = 0u;
            v287 = 0u;
            v286 = 0u;
            v285 = 0u;
            v284 = 0u;
            v283 = 0u;
            v282 = 0u;
            v281 = 0u;
            v280 = 0u;
            v279 = 0u;
            v278 = 0u;
            v277 = 0u;
            v276 = 0u;
            v275 = 0u;
            v274 = 0u;
            v273 = 0u;
            v272 = 0u;
            v271 = 0u;
            v270 = 0u;
            v269 = 0u;
            v268 = 0u;
            v267 = 0u;
            v266 = 0u;
            v265 = 0u;
            v264 = 0u;
            v263 = 0u;
            v262 = 0u;
            *v261 = 0u;
            LOWORD(v196) = 0;
            LODWORD(v160[0]) = 0;
            sub_10001EBC8((v1 + 45), v55, &v197 + 2, &__dst, 510);
            LOWORD(v197) = __dst >> 1;
            sub_10001F16C(*(v1 + 40), &v197, 1, &v229);
            v56 = sub_1000127A0(*(a1 + 792), &v229, 0, 0, v261, &v196, v160);
            if (v56)
            {
              if (v56 == 32)
              {
                LOWORD(v12) = 0;
              }

              else
              {
                LOWORD(v12) = v56;
              }

              goto LABEL_327;
            }

            v124 = sub_1000134A0(*(a1 + 776), *(v1 + 40), &v197, *(v1 + 36), 0);
            LOWORD(v12) = v124;
            v3 = 0uLL;
            if (v124)
            {
              goto LABEL_328;
            }

            *(a1 + 18) |= 0xA000u;
            if (LOWORD(v261[0]) == 1 || LOWORD(v261[0]) == 2)
            {
              v125 = v261[2];
            }

            else
            {
              v125 = 0;
            }

            v78 = sub_10001D0E8(a1, v125);
            goto LABEL_317;
          case 0x239:
            sub_100020B5C();
            if (!v70)
            {
              goto LABEL_326;
            }

            v260 = 0u;
            v259 = 0u;
            v258 = 0u;
            v257 = 0u;
            v256 = 0u;
            v255 = 0u;
            v254 = 0u;
            v253 = 0u;
            v252 = 0u;
            v251 = 0u;
            v250 = 0u;
            v249 = 0u;
            v248 = 0u;
            v247 = 0u;
            v246 = 0u;
            v245 = 0u;
            v244 = 0u;
            v243 = 0u;
            v242 = 0u;
            v241 = 0u;
            v240 = 0u;
            v239 = 0u;
            v238 = 0u;
            v237 = 0u;
            v236 = 0u;
            v235 = 0u;
            v234 = 0u;
            v233 = 0u;
            v232 = 0u;
            v231 = 0u;
            v230 = 0u;
            v229 = 0u;
            LOWORD(v161) = 0;
            v196 = 0;
            v46 = *(a1 + 792);
            bzero(v261, 0x220uLL);
            v71 = *(v1 + 40);
            v261[1] = *(v1 + 36);
            sub_10001F16C(v71, (v1 + 44), 1, &v262 + 4);
            *&v160[0] = &v229;
            *(&v160[0] + 1) = 0x100000208;
            v48 = sub_1000052E0(v46, v261, 0xFFFFFFFFLL, v160, &v161, v261);
            if (v48)
            {
              goto LABEL_114;
            }

            if (v229 - 3 < 0xFFFFFFFE)
            {
              goto LABEL_326;
            }

            sub_10001EAF0(v1 + 46, 2 * *(v1 + 44), &v197, &v196, 0x100uLL);
            *(&v197 + v196) = 0;
            if (*(v1 + 8) != 569 || WORD5(v231) != *(v1 + 24))
            {
              goto LABEL_326;
            }

            if (sub_10002D444() >= 3)
            {
              v120 = *(v1 + 16);
              v119 = *(v1 + 24);
              __dst = xmmword_100043460;
              v163 = *&qword_100043470;
              v164 = xmmword_100043480;
              v165 = *&off_100043490;
              sub_10002D0E8(&__dst, 2, "\t%s: fixing mode from %07o to %07o\n", &v197, v119, v120);
            }

            WORD5(v231) = *(v1 + 16);
            v121 = v161;
            v122 = v160;
            goto LABEL_325;
          case 0x23B:
            sub_100020B5C();
            v80 = v79;
            v81 = (v1 + 44);
            if (v79)
            {
              v82 = &v81[*v81 + 1];
            }

            else
            {
              v82 = (v81 + *v81 + 1);
            }

            v112 = *(a1 + 792);
            LOWORD(v196) = 0;
            LODWORD(v160[0]) = 0;
            *v261 = 0u;
            v262 = 0u;
            v263 = 0u;
            v264 = 0u;
            v265 = 0u;
            v266 = 0u;
            v267 = 0u;
            v268 = 0u;
            v269 = 0u;
            v270 = 0u;
            v271 = 0u;
            v272 = 0u;
            v273 = 0u;
            v274 = 0u;
            v275 = 0u;
            v276 = 0u;
            v277 = 0u;
            v278 = 0u;
            v279 = 0u;
            v280 = 0u;
            v281 = 0u;
            v282 = 0u;
            v283 = 0u;
            v284 = 0u;
            v285 = 0u;
            v286 = 0u;
            v287 = 0u;
            v288 = 0u;
            v289 = 0u;
            v290 = 0u;
            v291 = 0u;
            v292 = 0u;
            v260 = 0u;
            v259 = 0u;
            v258 = 0u;
            v257 = 0u;
            v256 = 0u;
            v255 = 0u;
            v254 = 0u;
            v253 = 0u;
            v252 = 0u;
            v251 = 0u;
            v250 = 0u;
            v249 = 0u;
            v248 = 0u;
            v247 = 0u;
            v246 = 0u;
            v245 = 0u;
            v244 = 0u;
            v243 = 0u;
            v242 = 0u;
            v241 = 0u;
            v240 = 0u;
            v239 = 0u;
            v238 = 0u;
            v237 = 0u;
            v236 = 0u;
            v235 = 0u;
            v234 = 0u;
            v233 = 0u;
            v232 = 0u;
            v231 = 0u;
            v230 = 0u;
            v229 = 0u;
            v228 = 0u;
            v227 = 0u;
            v226 = 0u;
            v225 = 0u;
            v224 = 0u;
            v223 = 0u;
            v222 = 0u;
            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v210 = 0u;
            v211 = 0u;
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v197 = 0u;
            sub_10001F16C(*(v1 + 40), v82, v79, &v197);
            if (!sub_1000127A0(v112, &v197, 0, 0, v261, &v196, 0))
            {
              if (sub_10002D444() >= 3)
              {
                __dst = xmmword_100043460;
                v163 = *&qword_100043470;
                v164 = xmmword_100043480;
                v165 = *&off_100043490;
                sub_10002D0E8(&__dst, 2, "\treplacement name already exists \n");
                __dst = xmmword_100043460;
                v163 = *&qword_100043470;
                v164 = xmmword_100043480;
                v165 = *&off_100043490;
                sub_10002D0E8(&__dst, 2, "\tduplicate name is 0x");
                sub_100021758(*v82, v82 + 2, 1);
              }

              goto LABEL_199;
            }

            sub_10001F16C(*(v1 + 40), (v1 + 44), v80, &v229);
            if (sub_1000127A0(v112, &v229, 0, 0, v261, &v196, v160) || sub_100012D4C(v112, &v229) || sub_100012C04(v112, &v197, v261, v196, v160))
            {
              goto LABEL_199;
            }

            v114 = LOWORD(v261[0]) == 256 || LOWORD(v261[0]) == 1;
            v115 = &v261[2];
            if (LOWORD(v261[0]) - 1 < 2)
            {
              goto LABEL_352;
            }

            if (LOWORD(v261[0]) == 512)
            {
              v115 = &v262 + 1;
            }

            else
            {
              v115 = (&v261[1] + 2);
              if (LOWORD(v261[0]) != 256)
              {
                v116 = 0;
                goto LABEL_353;
              }
            }

LABEL_352:
            v116 = *v115;
LABEL_353:
            sub_10001F16C(v116, 0, v80, &v229);
            if (!sub_1000127A0(v112, &v229, 0, 0, v261, &v196, v160) && !sub_100012D4C(v112, &v229))
            {
              LOWORD(v196) = sub_10001D288(&v197, v261, v80, v114);
              if (!sub_100012C04(v112, &v229, v261, v196, v160))
              {
                goto LABEL_201;
              }
            }

LABEL_199:
            *(a1 + 956) = 1;
            if (sub_10002D444() >= 3)
            {
              v117 = *(v1 + 8);
              __dst = xmmword_100043460;
              v163 = *&qword_100043470;
              v164 = xmmword_100043480;
              v165 = *&off_100043490;
              sub_10002D0E8(&__dst, 2, "\t%s - repair failed for type 0x%02X %d \n", "FixIllegalNames", v117, v117);
            }

LABEL_201:
            LOWORD(v12) = 0;
            v3 = 0uLL;
            goto LABEL_333;
          case 0x241:
          case 0x242:
            *&v234 = 0;
            v233 = v3;
            v232 = v3;
            v231 = v3;
            v230 = v3;
            v229 = v3;
            LOWORD(v160[0]) = 0;
            bzero(v261, 0x220uLL);
            sub_10001D334(*(v1 + 40), (v1 + 45), *(v1 + 44), &v262 + 4);
            *&__dst = &v229;
            *(&__dst + 1) = 0x100000058;
            v23 = sub_1000052E0(*(a1 + 808), v261, 0xFFFFFFFFLL, &__dst, v160, v261);
            if (v23)
            {
              LOWORD(v12) = v23;
              v197 = xmmword_100043460;
              v198 = *&qword_100043470;
              v199 = xmmword_100043480;
              v200 = *&off_100043490;
              sub_10002D128(&v197, 18, "%s: Cannot find attribute record (err = %d)\n");
              goto LABEL_327;
            }

            if (v229 != 32)
            {
              v197 = xmmword_100043460;
              v198 = *&qword_100043470;
              v199 = xmmword_100043480;
              v200 = *&off_100043490;
              sub_10002D128(&v197, 18, "%s: Record found is not attribute fork data\n", "FixAttrSize");
              LOWORD(v12) = 32;
              goto LABEL_327;
            }

            v84 = *(v1 + 8);
            if (v84 == 578)
            {
              v3 = 0uLL;
              if (*(v1 + 24) != *(&v229 + 1))
              {
                goto LABEL_339;
              }

              v86 = *(v1 + 16);
LABEL_253:
              *(&v229 + 1) = v86;
              goto LABEL_254;
            }

            v3 = 0uLL;
            if (v84 != 577 || DWORD1(v230) != *(v1 + 24))
            {
              goto LABEL_339;
            }

            v85 = *(v1 + 16);
            DWORD1(v230) = v85;
            v86 = v85 * *(*(a1 + 776) + 40);
            if (*(&v229 + 1) > v86)
            {
              goto LABEL_253;
            }

LABEL_254:
            v136 = sub_100005D70(*(a1 + 808), v261, &__dst, LOWORD(v160[0]));
            if (!v136)
            {
              goto LABEL_326;
            }

            LOWORD(v12) = v136;
            v197 = xmmword_100043460;
            v198 = *&qword_100043470;
            v199 = xmmword_100043480;
            v200 = *&off_100043490;
            sub_10002D128(&v197, 18, "%s: Cannot replace attribute record (err=%d)\n");
            goto LABEL_327;
          case 0x244:
            v57 = sub_100016674(a1, v1);
            goto LABEL_138;
          case 0x245:
            v57 = sub_1000169F4(a1, v1);
            goto LABEL_138;
          case 0x246:
            v260 = v3;
            v259 = v3;
            v258 = v3;
            v257 = v3;
            v256 = v3;
            v255 = v3;
            v254 = v3;
            v253 = v3;
            v252 = v3;
            v251 = v3;
            v250 = v3;
            v249 = v3;
            v248 = v3;
            v247 = v3;
            v246 = v3;
            v245 = v3;
            v244 = v3;
            v243 = v3;
            v242 = v3;
            v241 = v3;
            v240 = v3;
            v239 = v3;
            v238 = v3;
            v237 = v3;
            v236 = v3;
            v235 = v3;
            v234 = v3;
            v233 = v3;
            v232 = v3;
            v231 = v3;
            v230 = v3;
            v229 = v3;
            v292 = v3;
            v291 = v3;
            v290 = v3;
            v289 = v3;
            v288 = v3;
            v287 = v3;
            v286 = v3;
            v285 = v3;
            v284 = v3;
            v283 = v3;
            v282 = v3;
            v281 = v3;
            v280 = v3;
            v279 = v3;
            v278 = v3;
            v277 = v3;
            v276 = v3;
            v275 = v3;
            v274 = v3;
            v273 = v3;
            v272 = v3;
            v271 = v3;
            v270 = v3;
            v269 = v3;
            v268 = v3;
            v267 = v3;
            v266 = v3;
            v265 = v3;
            v264 = v3;
            v263 = v3;
            v262 = v3;
            *v261 = v3;
            LOWORD(__dst) = 0;
            LODWORD(v197) = 0;
            v6 = sub_10000B770(a1, *(v1 + 40), 1, &v229, v261, &__dst);
            if (v6)
            {
              goto LABEL_104;
            }

            if (LOWORD(v261[0]) != 1)
            {
              goto LABEL_227;
            }

            BYTE9(v263) |= 2u;
            WORD5(v263) |= 0x200u;
            goto LABEL_262;
          case 0x247:
          case 0x24D:
          case 0x253:
          case 0x259:
          case 0x25A:
            v260 = v3;
            v259 = v3;
            v258 = v3;
            v257 = v3;
            v256 = v3;
            v255 = v3;
            v254 = v3;
            v253 = v3;
            v252 = v3;
            v251 = v3;
            v250 = v3;
            v249 = v3;
            v248 = v3;
            v247 = v3;
            v246 = v3;
            v245 = v3;
            v244 = v3;
            v243 = v3;
            v242 = v3;
            v241 = v3;
            v240 = v3;
            v239 = v3;
            v238 = v3;
            v237 = v3;
            v236 = v3;
            v235 = v3;
            v234 = v3;
            v233 = v3;
            v232 = v3;
            v231 = v3;
            v230 = v3;
            v229 = v3;
            v292 = v3;
            v291 = v3;
            v290 = v3;
            v289 = v3;
            v288 = v3;
            v287 = v3;
            v286 = v3;
            v285 = v3;
            v284 = v3;
            v283 = v3;
            v282 = v3;
            v281 = v3;
            v280 = v3;
            v279 = v3;
            v278 = v3;
            v277 = v3;
            v276 = v3;
            v275 = v3;
            v274 = v3;
            v273 = v3;
            v272 = v3;
            v271 = v3;
            v270 = v3;
            v269 = v3;
            v268 = v3;
            v267 = v3;
            v266 = v3;
            v265 = v3;
            v264 = v3;
            v263 = v3;
            v262 = v3;
            *v261 = v3;
            LOWORD(v160[0]) = 0;
            LODWORD(__dst) = 0;
            v6 = sub_10000B770(a1, *(v1 + 40), 1, &v229, v261, v160);
            if (v6)
            {
              goto LABEL_104;
            }

            v7 = *(v1 + 8);
            v8 = *(v1 + 24);
            if (v7 == 589)
            {
              if (v8 != HIWORD(v261[0]) && sub_10002D444() >= 3)
              {
                v197 = xmmword_100043460;
                v198 = *&qword_100043470;
                v199 = xmmword_100043480;
                v200 = *&off_100043490;
                sub_10002D0E8(&v197, 6, "\tFixBadFlags (parent folder):  old = %#x, incorrect = %#x, correct = %#x\n");
              }
            }

            else if (v7 == 583)
            {
              if (v8 != HIWORD(v261[0]) && sub_10002D444() >= 3)
              {
                v197 = xmmword_100043460;
                v198 = *&qword_100043470;
                v199 = xmmword_100043480;
                v200 = *&off_100043490;
                sub_10002D0E8(&v197, 6, "\tFixBadFlags (folder):  old = %#x, incorrect = %#x, correct = %#x\n");
              }
            }

            else if (v8 != HIWORD(v261[0]) && sub_10002D444() >= 3)
            {
              v197 = xmmword_100043460;
              v198 = *&qword_100043470;
              v199 = xmmword_100043480;
              v200 = *&off_100043490;
              sub_10002D0E8(&v197, 6, "\tFixBadFlags (file):  old = %#x, incorrect = %#x, correct = %#x\n");
            }

            HIWORD(v261[0]) = *(v1 + 16);
            v87 = *(a1 + 792);
            v88 = LOWORD(v160[0]);
            p_dst = &__dst;
            goto LABEL_263;
          case 0x24B:
            v260 = v3;
            v259 = v3;
            v258 = v3;
            v257 = v3;
            v256 = v3;
            v255 = v3;
            v254 = v3;
            v253 = v3;
            v252 = v3;
            v251 = v3;
            v250 = v3;
            v249 = v3;
            v248 = v3;
            v247 = v3;
            v246 = v3;
            v245 = v3;
            v244 = v3;
            v243 = v3;
            v242 = v3;
            v241 = v3;
            v240 = v3;
            v239 = v3;
            v238 = v3;
            v237 = v3;
            v236 = v3;
            v235 = v3;
            v234 = v3;
            v233 = v3;
            v232 = v3;
            v231 = v3;
            v230 = v3;
            v229 = v3;
            v292 = v3;
            v291 = v3;
            v290 = v3;
            v289 = v3;
            v288 = v3;
            v287 = v3;
            v286 = v3;
            v285 = v3;
            v284 = v3;
            v283 = v3;
            v282 = v3;
            v281 = v3;
            v280 = v3;
            v279 = v3;
            v278 = v3;
            v277 = v3;
            v276 = v3;
            v275 = v3;
            v274 = v3;
            v273 = v3;
            v272 = v3;
            v271 = v3;
            v270 = v3;
            v269 = v3;
            v268 = v3;
            v267 = v3;
            v266 = v3;
            v265 = v3;
            v264 = v3;
            v263 = v3;
            v262 = v3;
            *v261 = v3;
            LOWORD(__dst) = 0;
            LODWORD(v197) = 0;
            v6 = sub_10000B770(a1, *(v1 + 40), 1, &v229, v261, &__dst);
            if (v6)
            {
              goto LABEL_104;
            }

            BYTE9(v263) = *(v1 + 16);
            goto LABEL_262;
          case 0x24C:
          case 0x257:
            v292 = v3;
            v291 = v3;
            v290 = v3;
            v289 = v3;
            v288 = v3;
            v287 = v3;
            v286 = v3;
            v285 = v3;
            v284 = v3;
            v283 = v3;
            v282 = v3;
            v281 = v3;
            v280 = v3;
            v279 = v3;
            v278 = v3;
            v277 = v3;
            v276 = v3;
            v275 = v3;
            v274 = v3;
            v273 = v3;
            v272 = v3;
            v271 = v3;
            v270 = v3;
            v269 = v3;
            v268 = v3;
            v267 = v3;
            v266 = v3;
            v265 = v3;
            v264 = v3;
            v263 = v3;
            v262 = v3;
            *v261 = v3;
            v260 = v3;
            v259 = v3;
            v258 = v3;
            v257 = v3;
            v256 = v3;
            v255 = v3;
            v254 = v3;
            v253 = v3;
            v252 = v3;
            v251 = v3;
            v250 = v3;
            v249 = v3;
            v248 = v3;
            v247 = v3;
            v246 = v3;
            v245 = v3;
            v244 = v3;
            v243 = v3;
            v242 = v3;
            v241 = v3;
            v240 = v3;
            v239 = v3;
            v238 = v3;
            v237 = v3;
            v236 = v3;
            v235 = v3;
            v234 = v3;
            v233 = v3;
            v232 = v3;
            v231 = v3;
            v230 = v3;
            v229 = v3;
            LOWORD(__dst) = 0;
            LODWORD(v197) = 0;
            v6 = sub_10000B770(a1, *(v1 + 40), 1, &v229, v261, &__dst);
            if (!v6)
            {
              if (LOWORD(v261[0]) != 2)
              {
                goto LABEL_227;
              }

              v26 = *(v1 + 8);
              if (v26 == 599)
              {
                *&v264 = 0x6866732B686C6E6BLL;
              }

              else
              {
                if (v26 != 588)
                {
                  goto LABEL_227;
                }

                *&v264 = 0x4D41435366647270;
                WORD4(v264) |= 0x8000u;
              }

LABEL_262:
              v87 = *(a1 + 792);
              v88 = __dst;
              p_dst = &v197;
LABEL_263:
              v78 = sub_100012E70(v87, &v229, 0, v261, v88, p_dst);
              goto LABEL_317;
            }

LABEL_104:
            LOWORD(v12) = v6;
            if (v6 != 32)
            {
              goto LABEL_327;
            }

            goto LABEL_105;
          case 0x251:
            LODWORD(__dst) = 0;
            sub_100020B5C();
            if (!v51)
            {
              goto LABEL_326;
            }

            v292 = 0u;
            v291 = 0u;
            v290 = 0u;
            v289 = 0u;
            v288 = 0u;
            v287 = 0u;
            v286 = 0u;
            v285 = 0u;
            v284 = 0u;
            v283 = 0u;
            v282 = 0u;
            v281 = 0u;
            v280 = 0u;
            v279 = 0u;
            v278 = 0u;
            v277 = 0u;
            v276 = 0u;
            v275 = 0u;
            v274 = 0u;
            v273 = 0u;
            v272 = 0u;
            v271 = 0u;
            v270 = 0u;
            v269 = 0u;
            v268 = 0u;
            v267 = 0u;
            v266 = 0u;
            v265 = 0u;
            v264 = 0u;
            v263 = 0u;
            v262 = 0u;
            *v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            v258 = 0u;
            v257 = 0u;
            v256 = 0u;
            v255 = 0u;
            v254 = 0u;
            v253 = 0u;
            v252 = 0u;
            v251 = 0u;
            v250 = 0u;
            v249 = 0u;
            v248 = 0u;
            v247 = 0u;
            v246 = 0u;
            v245 = 0u;
            v244 = 0u;
            v243 = 0u;
            v242 = 0u;
            v241 = 0u;
            v240 = 0u;
            v239 = 0u;
            v238 = 0u;
            v237 = 0u;
            v236 = 0u;
            v235 = 0u;
            v234 = 0u;
            v233 = 0u;
            v232 = 0u;
            v231 = 0u;
            v230 = 0u;
            v229 = 0u;
            v228 = 0u;
            v227 = 0u;
            v226 = 0u;
            v225 = 0u;
            v224 = 0u;
            v223 = 0u;
            v222 = 0u;
            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v210 = 0u;
            v211 = 0u;
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v197 = 0u;
            LOWORD(v160[0]) = 0;
            v52 = *(a1 + 792);
            sub_10001F16C(*(v1 + 40), 0, 1, &v229);
            v53 = sub_1000127A0(v52, &v229, 0, &v197, v261, v160, &__dst);
            if (v53)
            {
              goto LABEL_117;
            }

            if (LOWORD(v261[0]) != 4)
            {
              goto LABEL_227;
            }

            sub_10001F16C(v261[1], &v261[2], 1, &v229);
            if (sub_1000127A0(v52, &v229, 0, &v197, v261, v160, &__dst) || LOWORD(v261[0]) != 2 || v263 != *(v1 + 24))
            {
              goto LABEL_227;
            }

            LODWORD(v263) = *(v1 + 16);
            goto LABEL_220;
          case 0x252:
            LODWORD(__dst) = 0;
            sub_100020B5C();
            if (!v73)
            {
              goto LABEL_326;
            }

            v292 = 0u;
            v291 = 0u;
            v290 = 0u;
            v289 = 0u;
            v288 = 0u;
            v287 = 0u;
            v286 = 0u;
            v285 = 0u;
            v284 = 0u;
            v283 = 0u;
            v282 = 0u;
            v281 = 0u;
            v280 = 0u;
            v279 = 0u;
            v278 = 0u;
            v277 = 0u;
            v276 = 0u;
            v275 = 0u;
            v274 = 0u;
            v273 = 0u;
            v272 = 0u;
            v271 = 0u;
            v270 = 0u;
            v269 = 0u;
            v268 = 0u;
            v267 = 0u;
            v266 = 0u;
            v265 = 0u;
            v264 = 0u;
            v263 = 0u;
            v262 = 0u;
            *v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            v258 = 0u;
            v257 = 0u;
            v256 = 0u;
            v255 = 0u;
            v254 = 0u;
            v253 = 0u;
            v252 = 0u;
            v251 = 0u;
            v250 = 0u;
            v249 = 0u;
            v248 = 0u;
            v247 = 0u;
            v246 = 0u;
            v245 = 0u;
            v244 = 0u;
            v243 = 0u;
            v242 = 0u;
            v241 = 0u;
            v240 = 0u;
            v239 = 0u;
            v238 = 0u;
            v237 = 0u;
            v236 = 0u;
            v235 = 0u;
            v234 = 0u;
            v233 = 0u;
            v232 = 0u;
            v231 = 0u;
            v230 = 0u;
            v229 = 0u;
            v228 = 0u;
            v227 = 0u;
            v226 = 0u;
            v225 = 0u;
            v224 = 0u;
            v223 = 0u;
            v222 = 0u;
            v220 = 0u;
            v221 = 0u;
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            v210 = 0u;
            v211 = 0u;
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v198 = 0u;
            v199 = 0u;
            v197 = 0u;
            LOWORD(v160[0]) = 0;
            v52 = *(a1 + 792);
            sub_10001F16C(*(v1 + 40), 0, 1, &v229);
            v53 = sub_1000127A0(v52, &v229, 0, &v197, v261, v160, &__dst);
            if (v53)
            {
LABEL_117:
              if (v53 == 32)
              {
LABEL_105:
                LOWORD(v12) = 0;
                *(a1 + 957) = 1;
                goto LABEL_327;
              }

              goto LABEL_227;
            }

            if (LOWORD(v261[0]) != 4)
            {
              goto LABEL_227;
            }

            sub_10001F16C(v261[1], &v261[2], 1, &v229);
            if (sub_1000127A0(v52, &v229, 0, &v197, v261, v160, &__dst) || LOWORD(v261[0]) != 2 || DWORD1(v263) != *(v1 + 24))
            {
              goto LABEL_227;
            }

            DWORD1(v263) = *(v1 + 16);
LABEL_220:
            if (sub_100012E70(v52, &v197, __dst, v261, LOWORD(v160[0]), &__dst))
            {
              goto LABEL_227;
            }

            goto LABEL_326;
          case 0x258:
            v57 = sub_100016130(a1, v1);
            goto LABEL_138;
          case 0x25B:
          case 0x25C:
            v27 = sub_10001E650(a1, *(v1 + 40), 0);
            LOWORD(v12) = v27;
            if (v27 != 32)
            {
              goto LABEL_327;
            }

            goto LABEL_105;
          case 0x25D:
          case 0x25E:
            if (BYTE1(xmmword_100043510) == 1 && byte_10004350E == 0)
            {
              LOWORD(v12) = 1;
              goto LABEL_328;
            }

            v29 = sub_10001DFE4(a1, "lost+found");
            if (!v29)
            {
              LOWORD(v12) = 2;
              goto LABEL_327;
            }

            v30 = v29;
            v31 = *(v1 + 40);
            sub_100020B5C();
            if (v32 != 1)
            {
              sub_100030818();
            }

            v292 = 0u;
            v291 = 0u;
            v290 = 0u;
            v289 = 0u;
            v288 = 0u;
            v287 = 0u;
            v286 = 0u;
            v285 = 0u;
            v284 = 0u;
            v283 = 0u;
            v282 = 0u;
            v281 = 0u;
            v280 = 0u;
            v279 = 0u;
            v278 = 0u;
            v277 = 0u;
            v276 = 0u;
            v275 = 0u;
            v274 = 0u;
            v273 = 0u;
            v272 = 0u;
            v271 = 0u;
            v270 = 0u;
            v269 = 0u;
            v268 = 0u;
            v267 = 0u;
            v266 = 0u;
            v265 = 0u;
            v264 = 0u;
            v263 = 0u;
            v262 = 0u;
            *v261 = 0u;
            v260 = 0u;
            v259 = 0u;
            v258 = 0u;
            v257 = 0u;
            v256 = 0u;
            v255 = 0u;
            v254 = 0u;
            v253 = 0u;
            v252 = 0u;
            v251 = 0u;
            v250 = 0u;
            v249 = 0u;
            v248 = 0u;
            v247 = 0u;
            v246 = 0u;
            v245 = 0u;
            v244 = 0u;
            v243 = 0u;
            v242 = 0u;
            v241 = 0u;
            v240 = 0u;
            v239 = 0u;
            v238 = 0u;
            v237 = 0u;
            v236 = 0u;
            v235 = 0u;
            v234 = 0u;
            v233 = 0u;
            v232 = 0u;
            v231 = 0u;
            v230 = 0u;
            v229 = 0u;
            LODWORD(v197) = 0;
            LOWORD(__dst) = 0;
            v33 = sub_10000B770(a1, v31, 1, &v229, v261, &__dst);
            if (v33)
            {
              goto LABEL_66;
            }

            v33 = sub_10001E650(a1, v31, 1);
            if (v33)
            {
              goto LABEL_66;
            }

            *(&v229 + 2) = v30;
            v40 = LOWORD(v261[0]);
            if (LOWORD(v261[0]) - 1 <= 1)
            {
              HIWORD(v261[0]) &= ~0x20u;
            }

            v33 = sub_100012C04(*(a1 + 792), &v229, v261, __dst, &v197);
            if (v33 || (v40 == 1 ? (v41 = 3) : (v41 = 4), v261[0] = v41, v261[1] = *(&v229 + 2), __memmove_chk(), LOWORD(__dst) = 2 * LOWORD(v261[2]) + 10, sub_10001F16C(v31, 0, 1, &v229), (v33 = sub_100012C04(*(a1 + 792), &v229, v261, __dst, &v197)) != 0))
            {
LABEL_66:
              v12 = v33;
              v42 = &unk_100048000;
            }

            else
            {
              v155 = sub_10000B770(a1, v30, 1, &v229, v261, &__dst);
              v42 = &unk_100048000;
              if (v155)
              {
                v12 = v155;
                if (v155 == 32)
                {
                  v12 = ~(*(a1 + 24) >> 6) & 0x20;
                }
              }

              else
              {
                if (LOWORD(v261[0]) != 1)
                {
                  goto LABEL_367;
                }

                ++v261[1];
                if (v40 == 1 && (v261[0] & 0x100000) != 0)
                {
                  ++DWORD1(v266);
                }

                v156 = sub_100012E70(*(a1 + 792), &v229, 0, v261, __dst, &v197);
                if (!v156)
                {
                  v157 = *(a1 + 776);
                  if (v40 == 1)
                  {
                    ++*(v157 + 36);
                  }

                  else
                  {
                    ++*(v157 + 32);
                  }

                  *(a1 + 18) |= 0x8000u;
                  *(a1 + 24) |= 0x8000u;
LABEL_367:
                  LOWORD(v12) = 0;
                  goto LABEL_69;
                }

                v12 = v156;
              }
            }

            if (v12 == 32)
            {
              LOWORD(v12) = 0;
              *(a1 + 957) = 1;
            }

LABEL_69:
            if ((v42[1492] & 1) == 0)
            {
              v43 = v159[1];
              *v261 = *v159;
              v262 = v43;
              v44 = v159[3];
              v263 = v159[2];
              v264 = v44;
              sub_10002D0A4(v261, 116, v34, v35, v36, v37, v38, v39, "lost+found");
              v42[1492] = 1;
            }

            goto LABEL_327;
          case 0x262:
            v57 = sub_1000163DC(a1, v1);
            goto LABEL_138;
          case 0x264:
            v57 = sub_10001652C(a1, v1);
            goto LABEL_138;
          default:
            if (v5 == 64984)
            {
              LOWORD(v12) = 0;
              *(a1 + 22) |= 0x400u;
              goto LABEL_333;
            }

            if (v5 != 65026)
            {
              goto LABEL_80;
            }

            v16 = *(v1 + 16);
            v18 = *(v1 + 36);
            v17 = *(v1 + 40);
            v19 = *(v1 + 10);
            sub_100020B5C();
            if (v19 == 1)
            {
              sub_100030870();
            }

            v21 = v20;
            LOWORD(v161) = 0;
            v197 = 0u;
            v198 = 0u;
            v199 = 0u;
            v200 = 0u;
            *&v160[0] = 0;
            DWORD2(v160[0]) = 0;
            LODWORD(v196) = 0;
            if (v18)
            {
              if (v16)
              {
                sub_100026CB8(v20, v19, v17, v18, v160);
                v22 = sub_1000127A0(*(a1 + 784), v160, 0, v160, &v197, &v161, &v196);
                if (v22)
                {
                  LOWORD(v12) = v22;
                  if (byte_10004350E)
                  {
                    *v261 = xmmword_100043460;
                    v262 = *&qword_100043470;
                    v263 = xmmword_100043480;
                    v264 = *&off_100043490;
                    sub_10002D0E8(v261, 2, "%s: Could not get overflow extents record for fileID %u, fork %u, start block %u\n");
                  }

                  goto LABEL_278;
                }

                v126 = *(a1 + 690);
                if (v16 < v126)
                {
                  v127 = 4;
                  if (v21)
                  {
                    v127 = 8;
                  }

                  v128 = 2;
                  if (v21)
                  {
                    v128 = 3;
                  }

                  v129 = 29;
                  if (!v21)
                  {
                    v129 = 30;
                  }

                  bzero(&v197 + (v16 << 32 >> v129), ((v126 + ~v16) << v128) + v127);
                }

                v130 = sub_100012E70(*(a1 + 784), v160, v196, &v197, v161, &v196);
                if (v130)
                {
                  LOWORD(v12) = v130;
                  if (byte_10004350E)
                  {
                    *v261 = xmmword_100043460;
                    v262 = *&qword_100043470;
                    v263 = xmmword_100043480;
                    v264 = *&off_100043490;
                    sub_10002D0E8(v261, 2, "%s: Could not replace overflow extents record for fileID %u, fork %u, start block %u\n");
                  }

                  goto LABEL_278;
                }

                ++v18;
LABEL_280:
                LODWORD(v16) = 1;
              }

              sub_100026CB8(v21, v19, v17, v18, v160);
              v142 = sub_1000127A0(*(a1 + 784), v160, 0, v160, &v197, &v161, &v196);
              v12 = v142;
              if ((v142 & 0xFFFFFFDF) == 0)
              {
                if (v142 == 32)
                {
                  v12 = sub_100012A1C(*(a1 + 784), 1, v160, &v197, &v161, &v196, v143, v144);
                }

                if (!v12)
                {
                  while (1)
                  {
                    if (v21)
                    {
                      if (v17 != DWORD1(v160[0]) || BYTE2(v160[0]) != v19)
                      {
                        goto LABEL_347;
                      }

                      v147 = DWORD2(v160[0]);
                    }

                    else
                    {
                      if (v17 != *(v160 + 2) || BYTE1(v160[0]) != v19)
                      {
LABEL_347:
                        LOWORD(v12) = 0;
                        goto LABEL_288;
                      }

                      v147 = WORD3(v160[0]);
                    }

                    v12 = sub_100012D4C(*(a1 + 784), v160);
                    *v261 = xmmword_100043460;
                    v262 = *&qword_100043470;
                    v263 = xmmword_100043480;
                    v264 = *&off_100043490;
                    sub_10002D128(v261, 1, "%s: Deleting extent overflow for fileID=%u, forkType=%u, startBlock=%u\n", "FixBadExtent", v17, v19, v147);
                    if (v12)
                    {
                      goto LABEL_289;
                    }

                    LODWORD(v16) = 1;
                    v151 = sub_100012A1C(*(a1 + 784), 1, v160, &v197, &v161, &v196, v149, v150);
                    if (v151)
                    {
                      LOWORD(v12) = v151;
                      break;
                    }
                  }
                }

                if (v12 == 32)
                {
                  LOWORD(v12) = 0;
                }

LABEL_288:
                v145 = *(a1 + 784);
                *(*(v145 + 16) + 132) |= 1u;
                sub_1000060FC(v145);
              }

LABEL_289:
              if (v16 == 1)
              {
                sub_10001D6BC(a1, v17);
              }

              goto LABEL_327;
            }

            v292 = 0uLL;
            v291 = 0uLL;
            v290 = 0uLL;
            v289 = 0uLL;
            v288 = 0uLL;
            v287 = 0uLL;
            v286 = 0uLL;
            v285 = 0uLL;
            v284 = 0uLL;
            v283 = 0uLL;
            v282 = 0uLL;
            v281 = 0uLL;
            v280 = 0uLL;
            v279 = 0uLL;
            v278 = 0uLL;
            v277 = 0uLL;
            v276 = 0uLL;
            v275 = 0uLL;
            v274 = 0uLL;
            v273 = 0uLL;
            v272 = 0uLL;
            v271 = 0uLL;
            v270 = 0uLL;
            v269 = 0uLL;
            v268 = 0uLL;
            v267 = 0uLL;
            v266 = 0uLL;
            v265 = 0uLL;
            v264 = 0uLL;
            v263 = 0uLL;
            v262 = 0uLL;
            *v261 = 0uLL;
            v260 = 0uLL;
            v259 = 0uLL;
            v258 = 0uLL;
            v257 = 0uLL;
            v256 = 0uLL;
            v255 = 0uLL;
            v254 = 0uLL;
            v253 = 0uLL;
            v252 = 0uLL;
            v251 = 0uLL;
            v250 = 0uLL;
            v249 = 0uLL;
            v248 = 0uLL;
            v247 = 0uLL;
            v246 = 0uLL;
            v245 = 0uLL;
            v244 = 0uLL;
            v243 = 0uLL;
            v242 = 0uLL;
            v241 = 0uLL;
            v240 = 0uLL;
            v239 = 0uLL;
            v238 = 0uLL;
            v237 = 0uLL;
            v236 = 0uLL;
            v235 = 0uLL;
            v234 = 0uLL;
            v233 = 0uLL;
            v232 = 0uLL;
            v231 = 0uLL;
            v230 = 0uLL;
            v229 = 0uLL;
            v118 = sub_10001D3B8(a1, v17, v20, &v229, v261, &v161);
            if (v118)
            {
              LOWORD(v12) = v118;
              if (byte_10004350E)
              {
                __dst = xmmword_100043460;
                v163 = *&qword_100043470;
                v164 = xmmword_100043480;
                v165 = *&off_100043490;
                sub_10002D0E8(&__dst, 2, "%s: Could not get catalog record for fileID %u\n");
              }

LABEL_278:
              v3 = 0uLL;
              goto LABEL_328;
            }

            if (LOWORD(v261[0]) != 2 && LOWORD(v261[0]) != 512)
            {
              sub_100030844();
            }

            v131 = *(a1 + 690);
            if (v21)
            {
              if (v16 < v131)
              {
                v132 = 184;
                if (!v19)
                {
                  v132 = 104;
                }

                v133 = 29;
                v134 = 3;
                v135 = 8;
LABEL_274:
                bzero(v261 + v132 + (v16 << 32 >> v133), ((v131 + ~v16) << v134) + v135);
              }
            }

            else if (v16 < v131)
            {
              v132 = 86;
              if (!v19)
              {
                v132 = 74;
              }

              v133 = 30;
              v134 = 2;
              v135 = 4;
              goto LABEL_274;
            }

            v141 = sub_100012E70(*(a1 + 792), &v229, 0, v261, v161, &v196);
            if (!v141)
            {
              v18 = 0;
              goto LABEL_280;
            }

            LOWORD(v12) = v141;
            if (byte_10004350E)
            {
              __dst = xmmword_100043460;
              v163 = *&qword_100043470;
              v164 = xmmword_100043480;
              v165 = *&off_100043490;
              sub_10002D0E8(&__dst, 2, "%s: Could not replace catalog record for fileID %u\n");
            }

            goto LABEL_278;
        }
      }

      if (v5 - 500 < 2)
      {
        sub_100020B5C();
        if (!v45)
        {
          goto LABEL_326;
        }

        v260 = 0u;
        v259 = 0u;
        v258 = 0u;
        v257 = 0u;
        v256 = 0u;
        v255 = 0u;
        v254 = 0u;
        v253 = 0u;
        v252 = 0u;
        v251 = 0u;
        v250 = 0u;
        v249 = 0u;
        v248 = 0u;
        v247 = 0u;
        v246 = 0u;
        v245 = 0u;
        v244 = 0u;
        v243 = 0u;
        v242 = 0u;
        v241 = 0u;
        v240 = 0u;
        v239 = 0u;
        v238 = 0u;
        v237 = 0u;
        v236 = 0u;
        v235 = 0u;
        v234 = 0u;
        v233 = 0u;
        v232 = 0u;
        v231 = 0u;
        v230 = 0u;
        v229 = 0u;
        *&__dst = 0;
        LOWORD(v160[0]) = 0;
        v46 = *(a1 + 792);
        bzero(v261, 0x220uLL);
        v47 = *(v1 + 40);
        v261[1] = *(v1 + 36);
        *(&v262 + 6) = v47;
        sub_10001EBC8((v1 + 45), *(v1 + 44), &v262 + 12, &__dst, 510);
        WORD5(v262) = __dst >> 1;
        WORD2(v262) = __dst + 6;
        *&v197 = &v229;
        *(&v197 + 1) = 0x100000208;
        v48 = sub_1000052E0(v46, v261, 0xFFFFFFFFLL, &v197, v160, v261);
        if (v48)
        {
          goto LABEL_114;
        }

        if (v229 != 2)
        {
          goto LABEL_326;
        }

        v3 = 0uLL;
        if (*(v1 + 8) == 500)
        {
          v49 = *(v1 + 16) * *(*(a1 + 776) + 40);
          if (*(v1 + 10))
          {
            if (*(v1 + 10) != 0xFFFF || DWORD1(v240) != *(v1 + 24))
            {
              goto LABEL_339;
            }

            DWORD1(v240) = *(v1 + 16);
            if (*(&v239 + 1) <= v49)
            {
              goto LABEL_324;
            }

LABEL_260:
            *(&v239 + 1) = v49;
LABEL_324:
            v121 = LOWORD(v160[0]);
            v122 = &v197;
LABEL_325:
            v48 = sub_100005D70(v46, v261, v122, v121);
            if (!v48)
            {
              goto LABEL_326;
            }

LABEL_114:
            v72 = v48;
LABEL_315:
            v123 = a1;
            goto LABEL_316;
          }

          if (DWORD1(v235) != *(v1 + 24))
          {
            goto LABEL_339;
          }

          DWORD1(v235) = *(v1 + 16);
          if (*(&v234 + 1) <= v49)
          {
            goto LABEL_324;
          }
        }

        else
        {
          if (*(v1 + 10))
          {
            if (*(v1 + 10) != 0xFFFF || *(v1 + 24) != *(&v239 + 1))
            {
LABEL_339:
              LOWORD(v12) = 0;
              goto LABEL_328;
            }

            v49 = *(v1 + 16);
            goto LABEL_260;
          }

          if (*(v1 + 24) != *(&v234 + 1))
          {
            goto LABEL_339;
          }

          v49 = *(v1 + 16);
        }

        *(&v234 + 1) = v49;
        goto LABEL_324;
      }

      if (v5 != 502)
      {
        if (v5 != 505)
        {
LABEL_80:
          if (sub_10002D444() >= 3)
          {
            v50 = *(v1 + 8);
            *v261 = xmmword_100043460;
            v262 = *&qword_100043470;
            v263 = xmmword_100043480;
            v264 = *&off_100043490;
            sub_10002D0E8(v261, 2, "\tUnknown repair order found (type = %d)\n", v50);
          }

          goto LABEL_227;
        }

        v9 = *(v1 + 40);
        v292 = v3;
        v291 = v3;
        v290 = v3;
        v289 = v3;
        v288 = v3;
        v287 = v3;
        v286 = v3;
        v285 = v3;
        v284 = v3;
        v283 = v3;
        v282 = v3;
        v281 = v3;
        v280 = v3;
        v279 = v3;
        v278 = v3;
        v277 = v3;
        v276 = v3;
        v275 = v3;
        v274 = v3;
        v273 = v3;
        v272 = v3;
        v271 = v3;
        v270 = v3;
        v269 = v3;
        v268 = v3;
        v267 = v3;
        v266 = v3;
        v265 = v3;
        v264 = v3;
        v263 = v3;
        v262 = v3;
        *v261 = v3;
        v260 = v3;
        v259 = v3;
        v258 = v3;
        v257 = v3;
        v256 = v3;
        v255 = v3;
        v254 = v3;
        v253 = v3;
        v252 = v3;
        v251 = v3;
        v250 = v3;
        v249 = v3;
        v248 = v3;
        v247 = v3;
        v246 = v3;
        v245 = v3;
        v244 = v3;
        v243 = v3;
        v242 = v3;
        v241 = v3;
        v240 = v3;
        v239 = v3;
        v238 = v3;
        v237 = v3;
        v236 = v3;
        v235 = v3;
        v234 = v3;
        v233 = v3;
        v232 = v3;
        v231 = v3;
        v230 = v3;
        v229 = v3;
        v228 = v3;
        v227 = v3;
        v226 = v3;
        v225 = v3;
        v224 = v3;
        v223 = v3;
        v222 = v3;
        v220 = v3;
        v221 = v3;
        v218 = v3;
        v219 = v3;
        v216 = v3;
        v217 = v3;
        v214 = v3;
        v215 = v3;
        v212 = v3;
        v213 = v3;
        v210 = v3;
        v211 = v3;
        v208 = v3;
        v209 = v3;
        v206 = v3;
        v207 = v3;
        v204 = v3;
        v205 = v3;
        v202 = v3;
        v203 = v3;
        v200 = v3;
        v201 = v3;
        v198 = v3;
        v199 = v3;
        v197 = v3;
        LODWORD(v160[0]) = 0;
        LOWORD(v196) = 0;
        sub_100020B5C();
        sub_10001F16C(v9, 0, v10, &v197);
        v11 = sub_1000127A0(*(a1 + 792), &v197, 0, &v229, v261, &v196, v160);
        if (!v11)
        {
          if (LOWORD(v261[0]) != 4 && LOWORD(v261[0]) != 1024)
          {
            goto LABEL_227;
          }

          v164 = 0u;
          v165 = 0u;
          __dst = 0u;
          v163 = 0u;
          v11 = sub_100012E70(*(a1 + 792), &v197, v160[0], &__dst, v196, v160);
          if (!v11)
          {
            v11 = sub_100012D4C(*(a1 + 792), &v197);
            if (!v11)
            {
              LOWORD(v12) = 0;
              *(a1 + 24) |= 0xC000u;
              goto LABEL_327;
            }
          }
        }

        goto LABEL_314;
      }

LABEL_20:
      v292 = v3;
      v291 = v3;
      v290 = v3;
      v289 = v3;
      v288 = v3;
      v287 = v3;
      v286 = v3;
      v285 = v3;
      v284 = v3;
      v283 = v3;
      v282 = v3;
      v281 = v3;
      v280 = v3;
      v279 = v3;
      v278 = v3;
      v277 = v3;
      v276 = v3;
      v275 = v3;
      v274 = v3;
      v273 = v3;
      v272 = v3;
      v271 = v3;
      v270 = v3;
      v269 = v3;
      v268 = v3;
      v267 = v3;
      v266 = v3;
      v265 = v3;
      v264 = v3;
      v263 = v3;
      v262 = v3;
      *v261 = v3;
      v260 = v3;
      v259 = v3;
      v258 = v3;
      v257 = v3;
      v256 = v3;
      v255 = v3;
      v254 = v3;
      v253 = v3;
      v252 = v3;
      v251 = v3;
      v250 = v3;
      v249 = v3;
      v248 = v3;
      v247 = v3;
      v246 = v3;
      v245 = v3;
      v244 = v3;
      v243 = v3;
      v242 = v3;
      v241 = v3;
      v240 = v3;
      v239 = v3;
      v238 = v3;
      v237 = v3;
      v236 = v3;
      v235 = v3;
      v234 = v3;
      v233 = v3;
      v232 = v3;
      v231 = v3;
      v230 = v3;
      v229 = v3;
      v228 = v3;
      v227 = v3;
      v226 = v3;
      v225 = v3;
      v224 = v3;
      v223 = v3;
      v222 = v3;
      v220 = v3;
      v221 = v3;
      v218 = v3;
      v219 = v3;
      v216 = v3;
      v217 = v3;
      v214 = v3;
      v215 = v3;
      v212 = v3;
      v213 = v3;
      v210 = v3;
      v211 = v3;
      v208 = v3;
      v209 = v3;
      v206 = v3;
      v207 = v3;
      v204 = v3;
      v205 = v3;
      v202 = v3;
      v203 = v3;
      v200 = v3;
      v201 = v3;
      v198 = v3;
      v199 = v3;
      v197 = v3;
      v13 = *(a1 + 776);
      sub_100020B5C();
      LOWORD(v12) = 0;
      v15 = *(v1 + 8);
      if (v15 > 0x21B)
      {
        break;
      }

      if (v15 == 502)
      {
        LODWORD(__dst) = 0;
        LOWORD(v160[0]) = 0;
        sub_10001F16C(*(v1 + 40), (v1 + 44), v14, &v197);
        v11 = sub_1000127A0(*(a1 + 792), &v197, 0, &v229, v261, v160, &__dst);
        if (v11)
        {
          goto LABEL_314;
        }

        v83 = *(v1 + 24);
        if (LOWORD(v261[0]) == 1)
        {
          if (v261[1] == v83)
          {
            v261[1] = *(v1 + 16);
            goto LABEL_226;
          }

LABEL_227:
          v123 = a1;
          v72 = 2;
LABEL_316:
          v78 = sub_10001ECC0(v123, v72);
LABEL_317:
          LOWORD(v12) = v78;
LABEL_327:
          v3 = 0uLL;
          goto LABEL_328;
        }

        if (LOWORD(v261[1]) != v83)
        {
          goto LABEL_227;
        }

        LOWORD(v261[1]) = *(v1 + 16);
LABEL_226:
        v90 = *(a1 + 792);
        v94 = __dst;
        v91 = LOWORD(v160[0]);
        v92 = &v197;
LABEL_312:
        v93 = &__dst;
LABEL_313:
        v11 = sub_100012E70(v90, v92, v94, v261, v91, v93);
        if (v11)
        {
LABEL_314:
          v72 = v11;
          goto LABEL_315;
        }

LABEL_326:
        LOWORD(v12) = 0;
        goto LABEL_327;
      }

      v3 = 0uLL;
      if (v15 == 539)
      {
        if (*(v1 + 24) == *(v13 + 114))
        {
          LOWORD(v12) = 0;
          *(v13 + 114) = *(v1 + 16);
          goto LABEL_136;
        }

LABEL_137:
        v57 = sub_10001ECC0(a1, 2);
LABEL_138:
        v3 = 0uLL;
        LOWORD(v12) = v57;
      }

LABEL_328:
      if (v12)
      {
        if (sub_10002D444() >= 3)
        {
          v152 = *(v1 + 8);
          *v261 = xmmword_100043460;
          v262 = *&qword_100043470;
          v263 = xmmword_100043480;
          v264 = *&off_100043490;
          sub_10002D0E8(v261, 2, "\tDoMinorRepair: Repair for type=%d failed (err=%d).\n", v152, v12);
        }

        v3 = 0uLL;
      }

      else
      {
        LOWORD(v12) = 0;
      }

LABEL_333:
      if (*(a1 + 957) == 1)
      {
        *v1 = *(a1 + 624);
        *(a1 + 624) = v1;
        if (!v4)
        {
          return v12;
        }
      }

      else
      {
        free(v1);
        v3 = 0uLL;
        if (!v4)
        {
          return v12;
        }
      }

      v1 = v4;
      if (v12)
      {
        return v12;
      }
    }

    if (v15 == 540)
    {
      if (*(v1 + 24) != *(v13 + 112))
      {
        goto LABEL_227;
      }

      LOWORD(v12) = 0;
      *(v13 + 112) = *(v1 + 16);
      *(a1 + 18) |= 0x8000u;
      goto LABEL_327;
    }

    v3 = 0uLL;
    if (v15 == 541)
    {
      if (*(v13 + 36) == *(v1 + 24))
      {
        LOWORD(v12) = 0;
        *(v13 + 36) = *(v1 + 16);
        goto LABEL_136;
      }
    }

    else
    {
      if (v15 != 542)
      {
        goto LABEL_328;
      }

      if (*(v13 + 32) == *(v1 + 24))
      {
        LOWORD(v12) = 0;
        *(v13 + 32) = *(v1 + 16);
LABEL_136:
        *(a1 + 18) |= 0x8000u;
        goto LABEL_328;
      }
    }

    goto LABEL_137;
  }

  LOWORD(v12) = 0;
  return v12;
}