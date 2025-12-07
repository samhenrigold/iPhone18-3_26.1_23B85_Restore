uint64_t sub_23C39ABE4(void *a1, unsigned __int8 **a2)
{
  v3 = *a2;
  v4 = **a2;
  v151 = a2;
  if (v4 != 33)
  {
    if (v4 == 63)
    {
      *a2 = v3 + 1;
      v5 = v3[1];
      if ((v5 | 0x20) == 0x78 && (v3[2] | 0x20) == 0x6D && (v3[3] | 0x20) == 0x6C)
      {
        v6 = v3[4];
        if (v6 < 0)
        {
          LOBYTE(v6) = 122;
        }

        if (byte_23C3D4413[v6])
        {
          for (i = v3 + 5; ; ++i)
          {
            *a2 = i;
            if (*i == 63)
            {
              if (i[1] == 62)
              {
                v8 = 0;
                v9 = i + 2;
                goto LABEL_62;
              }
            }

            else if (!*i)
            {
              goto LABEL_59;
            }
          }
        }
      }

      for (j = v3 + 2; ; ++j)
      {
        if (v5 == 63)
        {
          if (*j == 62)
          {
            v8 = 0;
            v9 = j + 1;
            goto LABEL_62;
          }
        }

        else if (!v5)
        {
          goto LABEL_59;
        }

        *a2 = j;
        v15 = *j;
        LOBYTE(v5) = v15;
      }
    }

    v8 = a1[13] + (-*(a1 + 104) & 7);
    if ((v8 + 96) > a1[14])
    {
      v12 = a1[8207];
      if (!v12)
      {
        operator new[]();
      }

      v13 = v12(65558);
      v27 = (v13 + (-v13 & 7));
      *v27 = a1[12];
      a1[12] = v13;
      a1[14] = v13 + 65558;
      v8 = v27 + (-(v27 + 8) & 7) + 8;
      a2 = v151;
    }

    a1[13] = v8 + 96;
    *(v8 + 32) = 0;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 40) = 1;
    v28 = -1;
    *(v8 + 48) = 0;
    v29 = (v8 + 48);
    *(v8 + 64) = 0;
    v30 = (v8 + 64);
    v31 = *a2;
    do
    {
      v32 = *(v31 + v28 + 1);
      if (v32 < 0)
      {
        LOBYTE(v32) = 122;
      }

      ++v28;
    }

    while (byte_23C3D4513[v32]);
    *a2 = (v31 + v28);
    if (!v28)
    {
      v148 = a2;
      exception = __cxa_allocate_exception(0x18uLL);
      v25 = *v148;
      v26 = "expected element name";
LABEL_60:
      *exception = &unk_284F01CA0;
      exception[1] = v26;
      exception[2] = v25;
      __cxa_throw(exception, &unk_284F01B38, std::exception::~exception);
    }

    *v8 = v31;
    *(v8 + 16) = v28;
    v33 = *a2 - 1;
    do
    {
      v35 = *++v33;
      v34 = v35;
      if (v35 < 0)
      {
        v34 = 122;
      }
    }

    while (byte_23C3D4413[v34]);
    *a2 = v33;
    v36 = *v33;
    if (v36 >= 0)
    {
      v37 = *v33;
    }

    else
    {
      v37 = 122;
    }

    v149 = (v8 + 48);
    v150 = v8;
    if (byte_23C3D4613[v37])
    {
      v38 = &unk_23C3D4813;
      do
      {
        *a2 = v33 + 1;
        v39 = v33;
        do
        {
          v41 = *++v39;
          v40 = v41;
          if (v41 < 0)
          {
            v40 = 122;
          }
        }

        while (byte_23C3D4613[v40]);
        *a2 = v39;
        v42 = (a1[13] + (-*(a1 + 104) & 7));
        if ((v42 + 7) > a1[14])
        {
          v43 = v38;
          v44 = a1[8207];
          if (!v44)
          {
            operator new[]();
          }

          v45 = v44(65558);
          v46 = (v45 + (-v45 & 7));
          *v46 = a1[12];
          a1[12] = v45;
          a1[14] = v45 + 65558;
          v42 = (v46 + (-(v46 + 8) & 7) + 8);
          v8 = v150;
          a2 = v151;
          v29 = v149;
          v38 = v43;
        }

        a1[13] = v42 + 7;
        *v42 = 0;
        v42[1] = 0;
        v47 = *a2 - v33;
        *v42 = v33;
        v42[2] = v47;
        v48 = *v30;
        if (*v30)
        {
          v48 = *(v8 + 72);
          v49 = (v48 + 6);
        }

        else
        {
          v49 = v30;
        }

        *v49 = v42;
        *(v8 + 72) = v42;
        v42[4] = v8;
        v42[5] = v48;
        v42[6] = 0;
        v50 = *a2;
        do
        {
          v52 = *v50++;
          v51 = v52;
          if (v52 < 0)
          {
            v51 = 122;
          }
        }

        while (byte_23C3D4413[v51]);
        *a2 = (v50 - 1);
        if (*(v50 - 1) != 61)
        {
          v145 = a2;
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *v145;
          v26 = "expected =";
          goto LABEL_60;
        }

        *a2 = v50;
        v53 = *v42;
        if (!*v42)
        {
          v53 = &byte_27E1F3E58;
          v47 = 0;
        }

        v53[v47] = 0;
        v54 = *a2;
        v55 = *a2;
        do
        {
          v56 = v55;
          v58 = *v55++;
          v57 = v58;
          if (v58 < 0)
          {
            v57 = 122;
          }

          ++v54;
        }

        while (byte_23C3D4413[v57]);
        *a2 = (v55 - 1);
        v59 = *(v55 - 1);
        if (v59 != 34 && v59 != 39)
        {
LABEL_338:
          v144 = a2;
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *v144;
          v26 = "expected ' or ";
          goto LABEL_60;
        }

        *a2 = v55;
        if (v59 == 39)
        {
          do
          {
            v61 = *++v56;
            v60 = v61;
            if (v61 < 0)
            {
              v60 = 122;
            }
          }

          while (v38[v60]);
          *a2 = v56;
          for (k = v56; ; k = v70 + 1)
          {
            while (1)
            {
              v65 = *k;
              if (v65 != 38)
              {
                if (!*k || v65 == 39)
                {
                  goto LABEL_211;
                }

LABEL_111:
                ++k;
                *v56++ = v65;
                continue;
              }

              v66 = k[1];
              if (v66 > 0x66)
              {
                if (v66 == 103)
                {
                  if (k[2] != 116 || k[3] != 59)
                  {
                    goto LABEL_111;
                  }

                  v69 = 62;
                  goto LABEL_138;
                }

                if (v66 == 108)
                {
                  if (k[2] != 116 || k[3] != 59)
                  {
                    goto LABEL_111;
                  }

                  v69 = 60;
LABEL_138:
                  *v56++ = v69;
                  k += 4;
                  continue;
                }

                if (v66 != 113 || k[2] != 117 || k[3] != 111 || k[4] != 116 || k[5] != 59)
                {
                  goto LABEL_111;
                }

                v67 = 34;
                goto LABEL_154;
              }

              if (v66 == 35)
              {
                break;
              }

              if (v66 != 97)
              {
                goto LABEL_111;
              }

              v68 = k[2];
              if (v68 == 112)
              {
                if (k[3] != 111 || k[4] != 115 || k[5] != 59)
                {
                  goto LABEL_111;
                }

                v67 = 39;
LABEL_154:
                *v56++ = v67;
                k += 6;
                continue;
              }

              if (v68 != 109 || k[3] != 112 || k[4] != 59)
              {
                goto LABEL_111;
              }

              *v56++ = 38;
              k += 5;
            }

            v70 = k + 2;
            if (k[2] == 120)
            {
              v71 = 0;
              do
              {
                v72 = v71;
                v73 = *++v70;
                v74 = byte_23C3D4713[v73];
                v71 = v74 + 16 * v71;
              }

              while (v74 != 255);
              if (v72 <= 0x7F)
              {
                goto LABEL_147;
              }
            }

            else
            {
              v75 = 0;
              v70 = k + 1;
              do
              {
                v72 = v75;
                v76 = *++v70;
                v77 = byte_23C3D4713[v76];
                v75 = v77 + 10 * v75;
              }

              while (v77 != 255);
              if (v72 <= 0x7F)
              {
LABEL_147:
                v78 = 1;
                goto LABEL_159;
              }
            }

            if (v72 > 0x7FF)
            {
              if (v72 >> 16)
              {
                if (v72 >> 16 > 0x10)
                {
                  goto LABEL_341;
                }

                v56[3] = v72 & 0x3F | 0x80;
                v56[2] = (v72 >> 6) & 0x3F | 0x80;
                v56[1] = (v72 >> 12) & 0x3F | 0x80;
                LODWORD(v72) = (v72 >> 18) | 0xFFFFFFF0;
                v78 = 4;
              }

              else
              {
                v56[2] = v72 & 0x3F | 0x80;
                v56[1] = (v72 >> 6) & 0x3F | 0x80;
                LODWORD(v72) = (v72 >> 12) | 0xFFFFFFE0;
                v78 = 3;
              }
            }

            else
            {
              v56[1] = v72 & 0x3F | 0x80;
              LODWORD(v72) = (v72 >> 6) | 0xFFFFFFC0;
              v78 = 2;
            }

LABEL_159:
            *v56 = v72;
            if (*v70 != 59)
            {
              goto LABEL_336;
            }

            v56 += v78;
          }
        }

        do
        {
          v64 = *++v56;
          v63 = v64;
          if (v64 < 0)
          {
            v63 = 122;
          }
        }

        while (byte_23C3D4913[v63]);
        *a2 = v56;
        k = v56;
        while (1)
        {
          v79 = *k;
          if (v79 != 38)
          {
            break;
          }

          v80 = k[1];
          if (v80 <= 0x66)
          {
            if (v80 == 35)
            {
              v70 = k + 2;
              if (k[2] == 120)
              {
                v84 = 0;
                do
                {
                  v85 = v84;
                  v86 = *++v70;
                  v87 = byte_23C3D4713[v86];
                  v84 = v87 + 16 * v84;
                }

                while (v87 != 255);
                if (v85 <= 0x7F)
                {
                  goto LABEL_197;
                }
              }

              else
              {
                v88 = 0;
                v70 = k + 1;
                do
                {
                  v85 = v88;
                  v89 = *++v70;
                  v90 = byte_23C3D4713[v89];
                  v88 = v90 + 10 * v88;
                }

                while (v90 != 255);
                if (v85 <= 0x7F)
                {
LABEL_197:
                  v91 = 1;
                  goto LABEL_209;
                }
              }

              if (v85 > 0x7FF)
              {
                if (v85 >> 16)
                {
                  if (v85 >> 16 > 0x10)
                  {
LABEL_341:
                    v147 = __cxa_allocate_exception(0x18uLL);
                    *v147 = &unk_284F01CA0;
                    v147[1] = "invalid numeric character entity";
                    v147[2] = v56;
                    __cxa_throw(v147, &unk_284F01B38, std::exception::~exception);
                  }

                  v56[3] = v85 & 0x3F | 0x80;
                  v56[2] = (v85 >> 6) & 0x3F | 0x80;
                  v56[1] = (v85 >> 12) & 0x3F | 0x80;
                  LODWORD(v85) = (v85 >> 18) | 0xFFFFFFF0;
                  v91 = 4;
                }

                else
                {
                  v56[2] = v85 & 0x3F | 0x80;
                  v56[1] = (v85 >> 6) & 0x3F | 0x80;
                  LODWORD(v85) = (v85 >> 12) | 0xFFFFFFE0;
                  v91 = 3;
                }
              }

              else
              {
                v56[1] = v85 & 0x3F | 0x80;
                LODWORD(v85) = (v85 >> 6) | 0xFFFFFFC0;
                v91 = 2;
              }

LABEL_209:
              *v56 = v85;
              if (*v70 != 59)
              {
LABEL_336:
                v142 = __cxa_allocate_exception(0x18uLL);
                v143 = "expected ;";
LABEL_337:
                *v142 = &unk_284F01CA0;
                v142[1] = v143;
                v142[2] = v70;
                __cxa_throw(v142, &unk_284F01B38, std::exception::~exception);
              }

              v56 += v91;
              k = v70 + 1;
            }

            else
            {
              if (v80 != 97)
              {
                goto LABEL_161;
              }

              v82 = k[2];
              if (v82 == 112)
              {
                if (k[3] != 111 || k[4] != 115 || k[5] != 59)
                {
                  goto LABEL_161;
                }

                v81 = 39;
LABEL_204:
                *v56++ = v81;
                k += 6;
              }

              else
              {
                if (v82 != 109 || k[3] != 112 || k[4] != 59)
                {
                  goto LABEL_161;
                }

                *v56++ = 38;
                k += 5;
              }
            }
          }

          else if (v80 == 103)
          {
            if (k[2] != 116 || k[3] != 59)
            {
              goto LABEL_161;
            }

            v83 = 62;
LABEL_188:
            *v56++ = v83;
            k += 4;
          }

          else
          {
            if (v80 == 108)
            {
              if (k[2] != 116 || k[3] != 59)
              {
                goto LABEL_161;
              }

              v83 = 60;
              goto LABEL_188;
            }

            if (v80 == 113 && k[2] == 117 && k[3] == 111 && k[4] == 116 && k[5] == 59)
            {
              v81 = 34;
              goto LABEL_204;
            }

LABEL_161:
            ++k;
            *v56++ = v79;
          }
        }

        if (*k && v79 != 34)
        {
          goto LABEL_161;
        }

LABEL_211:
        *a2 = k;
        v92 = &v56[-v54];
        v42[1] = v55;
        v42[3] = v92;
        if (**a2 != v59)
        {
          goto LABEL_338;
        }

        ++*a2;
        v93 = v42[1];
        if (!v93)
        {
          v93 = &byte_27E1F3E58;
          v92 = 0;
        }

        v92[v93] = 0;
        v33 = *a2 - 1;
        do
        {
          v95 = *++v33;
          v94 = v95;
          if (v95 < 0)
          {
            v94 = 122;
          }
        }

        while (byte_23C3D4413[v94]);
        *a2 = v33;
        v36 = *v33;
        if (v36 >= 0)
        {
          v96 = *v33;
        }

        else
        {
          v96 = 122;
        }
      }

      while (byte_23C3D4613[v96]);
    }

    if (v36 != 47)
    {
      if (v36 == 62)
      {
        *a2 = v33 + 1;
        while (1)
        {
          v98 = *a2 - 1;
          do
          {
            v100 = *++v98;
            v99 = v100;
            if (v100 < 0)
            {
              v99 = 122;
            }
          }

          while (byte_23C3D4413[v99]);
          *a2 = v98;
          v101 = *v98;
LABEL_234:
          if (v101 != 60)
          {
            break;
          }

          v130 = *a2;
          v131 = (*a2)[1];
          if (v131 == 47)
          {
            *a2 = (v130 + 2);
            v132 = (v130 + 1);
            do
            {
              v134 = *++v132;
              v133 = v134;
              if (v134 < 0)
              {
                v133 = 122;
              }
            }

            while (byte_23C3D4513[v133]);
            *a2 = v132;
            do
            {
              v136 = *v132++;
              v135 = v136;
              if (v136 < 0)
              {
                v135 = 122;
              }
            }

            while (byte_23C3D4413[v135]);
            *a2 = (v132 - 1);
            if (*(v132 - 1) != 62)
            {
              goto LABEL_340;
            }

            *a2 = v132;
          }

          else
          {
            ++*a2;
            v137 = sub_23C39ABE4(a1, v151);
            v29 = v149;
            v8 = v150;
            a2 = v151;
            if (v137)
            {
              v138 = *v149;
              if (*v149)
              {
                v138 = *(v150 + 56);
                v97 = (v138 + 88);
              }

              else
              {
                v97 = v149;
              }

              *v97 = v137;
              *(v150 + 56) = v137;
              v137[4] = v150;
              v137[10] = v138;
              v137[11] = 0;
            }
          }

          if (v131 == 47)
          {
            goto LABEL_328;
          }
        }

        if (!v101)
        {
LABEL_59:
          v23 = a2;
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *v23;
          v26 = "unexpected end of data";
          goto LABEL_60;
        }

        v102 = *a2;
        v70 = (*a2 - 1);
        do
        {
          v104 = *++v70;
          v103 = v104;
          if (v104 < 0)
          {
            v103 = 122;
          }
        }

        while (byte_23C3D4A13[v103]);
        *a2 = v70;
        for (m = v70; ; m = v114 + 1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v106 = *m;
                v107 = v106 >= 0 ? *m : 122;
                if (v106 == 38)
                {
                  break;
                }

                if (!*m || *m == 60)
                {
                  *a2 = m;
                  if (*(v70 - 1) == 32)
                  {
                    --v70;
                  }

                  v123 = a1[13] + (-*(a1 + 104) & 7);
                  if ((v123 + 96) > a1[14])
                  {
                    v124 = a1[8207];
                    if (!v124)
                    {
                      operator new[]();
                    }

                    v125 = v124(65558);
                    v126 = (v125 + (-v125 & 7));
                    *v126 = a1[12];
                    a1[12] = v125;
                    a1[14] = v125 + 65558;
                    v123 = v126 + (-(v126 + 8) & 7) + 8;
                    v8 = v150;
                    a2 = v151;
                    v29 = v149;
                  }

                  a1[13] = v123 + 96;
                  *(v123 + 40) = 2;
                  *(v123 + 48) = 0;
                  *(v123 + 64) = 0;
                  *v123 = 0;
                  *(v123 + 8) = v102;
                  *(v123 + 24) = &v70[-v102];
                  v127 = *v29;
                  if (*v29)
                  {
                    v127 = *(v8 + 56);
                    v128 = (v127 + 88);
                  }

                  else
                  {
                    v128 = v29;
                  }

                  *v128 = v123;
                  *(v8 + 56) = v123;
                  *(v123 + 32) = v8;
                  *(v123 + 80) = v127;
                  *(v123 + 88) = 0;
                  v129 = *(v8 + 8);
                  if (!v129)
                  {
                    v129 = &byte_27E1F3E58;
                  }

                  if (!*v129)
                  {
                    *(v8 + 8) = v102;
                    *(v8 + 24) = &v70[-v102];
                  }

                  v101 = **a2;
                  *v70 = 0;
                  goto LABEL_234;
                }

LABEL_248:
                if (byte_23C3D4413[v107])
                {
                  *v70 = 32;
                  do
                  {
                    v109 = *++m;
                    v108 = v109;
                    if (v109 < 0)
                    {
                      v108 = 122;
                    }
                  }

                  while (byte_23C3D4413[v108]);
                  ++v70;
                }

                else
                {
                  ++m;
                  *v70++ = v106;
                }
              }

              v110 = m[1];
              if (v110 <= 0x66)
              {
                break;
              }

              if (v110 == 103)
              {
                if (m[2] != 116 || m[3] != 59)
                {
                  goto LABEL_248;
                }

                v113 = 62;
                goto LABEL_276;
              }

              if (v110 == 108)
              {
                if (m[2] != 116 || m[3] != 59)
                {
                  goto LABEL_248;
                }

                v113 = 60;
LABEL_276:
                *v70++ = v113;
                m += 4;
              }

              else
              {
                if (v110 != 113 || m[2] != 117 || m[3] != 111 || m[4] != 116 || m[5] != 59)
                {
                  goto LABEL_248;
                }

                v111 = 34;
LABEL_292:
                *v70++ = v111;
                m += 6;
              }
            }

            if (v110 == 35)
            {
              break;
            }

            if (v110 != 97)
            {
              goto LABEL_248;
            }

            v112 = m[2];
            if (v112 == 112)
            {
              if (m[3] != 111 || m[4] != 115 || m[5] != 59)
              {
                goto LABEL_248;
              }

              v111 = 39;
              goto LABEL_292;
            }

            if (v112 != 109 || m[3] != 112 || m[4] != 59)
            {
              goto LABEL_248;
            }

            *v70++ = 38;
            m += 5;
          }

          v114 = m + 2;
          if (m[2] == 120)
          {
            v115 = 0;
            do
            {
              v116 = v115;
              v117 = *++v114;
              v118 = byte_23C3D4713[v117];
              v115 = v118 + 16 * v115;
            }

            while (v118 != 255);
            if (v116 <= 0x7F)
            {
              goto LABEL_285;
            }
          }

          else
          {
            v119 = 0;
            v114 = m + 1;
            do
            {
              v116 = v119;
              v120 = *++v114;
              v121 = byte_23C3D4713[v120];
              v119 = v121 + 10 * v119;
            }

            while (v121 != 255);
            if (v116 <= 0x7F)
            {
LABEL_285:
              v122 = 1;
              goto LABEL_297;
            }
          }

          if (v116 > 0x7FF)
          {
            if (v116 >> 16)
            {
              if (v116 >> 16 > 0x10)
              {
                v142 = __cxa_allocate_exception(0x18uLL);
                v143 = "invalid numeric character entity";
                goto LABEL_337;
              }

              v70[3] = v116 & 0x3F | 0x80;
              v70[2] = (v116 >> 6) & 0x3F | 0x80;
              v70[1] = (v116 >> 12) & 0x3F | 0x80;
              LODWORD(v116) = (v116 >> 18) | 0xFFFFFFF0;
              v122 = 4;
            }

            else
            {
              v70[2] = v116 & 0x3F | 0x80;
              v70[1] = (v116 >> 6) & 0x3F | 0x80;
              LODWORD(v116) = (v116 >> 12) | 0xFFFFFFE0;
              v122 = 3;
            }
          }

          else
          {
            v70[1] = v116 & 0x3F | 0x80;
            LODWORD(v116) = (v116 >> 6) | 0xFFFFFFC0;
            v122 = 2;
          }

LABEL_297:
          *v70 = v116;
          if (*v114 != 59)
          {
            v141 = __cxa_allocate_exception(0x18uLL);
            *v141 = &unk_284F01CA0;
            v141[1] = "expected ;";
            v141[2] = v114;
            __cxa_throw(v141, &unk_284F01B38, std::exception::~exception);
          }

          v70 += v122;
        }
      }

      goto LABEL_340;
    }

    *a2 = v33 + 1;
    if (v33[1] != 62)
    {
LABEL_340:
      v146 = a2;
      exception = __cxa_allocate_exception(0x18uLL);
      v25 = *v146;
      v26 = "expected >";
      goto LABEL_60;
    }

    *a2 = v33 + 2;
LABEL_328:
    if (*v8)
    {
      *(*v8 + *(v8 + 16)) = 0;
    }

    else
    {
      byte_27E1F3E58 = 0;
    }

    return v8;
  }

  v10 = v3[1];
  if (v10 == 45)
  {
    if (v3[2] == 45)
    {
      v17 = v3 + 3;
      for (n = v3 + 3; ; ++n)
      {
        *a2 = n;
        if (*n == 45)
        {
          if (n[1] == 45 && n[2] == 62)
          {
            v8 = a1[13] + (-*(a1 + 104) & 7);
            if ((v8 + 96) > a1[14])
            {
              v19 = a1[8207];
              if (!v19)
              {
                operator new[]();
              }

              v20 = v19(65558);
              v139 = (v20 + (-v20 & 7));
              *v139 = a1[12];
              a1[12] = v20;
              a1[14] = v20 + 65558;
              v8 = v139 + (-(v139 + 8) & 7) + 8;
              a2 = v151;
            }

            a1[13] = v8 + 96;
            *v8 = 0;
            *(v8 + 8) = 0;
            *(v8 + 40) = 4;
            *(v8 + 48) = 0;
            *(v8 + 64) = 0;
            v140 = *a2 - v17;
            *(v8 + 8) = v17;
            *(v8 + 24) = v140;
            *(v8 + 32) = 0;
            **a2 = 0;
            v9 = *a2 + 3;
            goto LABEL_62;
          }
        }

        else if (!*n)
        {
          goto LABEL_59;
        }
      }
    }

    goto LABEL_56;
  }

  if (v10 == 68)
  {
    if (v3[2] == 79 && v3[3] == 67 && v3[4] == 84 && v3[5] == 89 && v3[6] == 80 && v3[7] == 69)
    {
      v16 = v3[8];
      if (v16 < 0)
      {
        LOBYTE(v16) = 122;
      }

      if (byte_23C3D4413[v16])
      {
        *a2 = v3 + 9;
        sub_23C399860(a2);
        return 0;
      }
    }

LABEL_56:
    v9 = v3 + 1;
    while (1)
    {
      *a2 = v9;
      v22 = *v9++;
      v21 = v22;
      if (v22 == 62)
      {
        break;
      }

      if (!v21)
      {
        goto LABEL_59;
      }
    }

    v8 = 0;
LABEL_62:
    *a2 = v9;
    return v8;
  }

  if (v10 != 91 || v3[2] != 67 || v3[3] != 68 || v3[4] != 65 || v3[5] != 84 || v3[6] != 65 || v3[7] != 91)
  {
    goto LABEL_56;
  }

  *a2 = v3 + 8;

  return sub_23C3996E0(a1, a2);
}

uint64_t sub_23C39BF94(void *a1, unsigned __int8 **a2)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 != 33)
  {
    if (v5 == 63)
    {
      *a2 = v4 + 1;
      v6 = v4[1];
      if ((v6 | 0x20) == 0x78 && (v4[2] | 0x20) == 0x6D && (v4[3] | 0x20) == 0x6C)
      {
        v7 = v4[4];
        if (v7 < 0)
        {
          LOBYTE(v7) = 122;
        }

        if (byte_23C3D4413[v7])
        {
          for (i = v4 + 5; ; ++i)
          {
            *a2 = i;
            if (*i == 63)
            {
              if (i[1] == 62)
              {
                v9 = 0;
                v10 = i + 2;
                goto LABEL_62;
              }
            }

            else if (!*i)
            {
              goto LABEL_59;
            }
          }
        }
      }

      for (j = v4 + 2; ; ++j)
      {
        if (v6 == 63)
        {
          if (*j == 62)
          {
            v9 = 0;
            v10 = j + 1;
            goto LABEL_62;
          }
        }

        else if (!v6)
        {
          goto LABEL_59;
        }

        *a2 = j;
        v16 = *j;
        LOBYTE(v6) = v16;
      }
    }

    v9 = a1[13] + (-*(a1 + 104) & 7);
    if ((v9 + 96) > a1[14])
    {
      v13 = a1[8207];
      if (!v13)
      {
        operator new[]();
      }

      v14 = v13(65558);
      v27 = (v14 + (-v14 & 7));
      *v27 = a1[12];
      a1[12] = v14;
      a1[14] = v14 + 65558;
      v9 = v27 + (-(v27 + 8) & 7) + 8;
    }

    a1[13] = v9 + 96;
    *(v9 + 32) = 0;
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 40) = 1;
    v28 = -1;
    *(v9 + 48) = 0;
    v29 = (v9 + 48);
    *(v9 + 64) = 0;
    v30 = (v9 + 64);
    v31 = *a2;
    do
    {
      v32 = v31[v28 + 1];
      if (v32 < 0)
      {
        LOBYTE(v32) = 122;
      }

      ++v28;
    }

    while (byte_23C3D4513[v32]);
    *a2 = &v31[v28];
    if (!v28)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      v25 = *a2;
      v26 = "expected element name";
      goto LABEL_60;
    }

    *v9 = v31;
    *(v9 + 16) = v28;
    v33 = *a2 - 1;
    do
    {
      v35 = *++v33;
      v34 = v35;
      if (v35 < 0)
      {
        v34 = 122;
      }
    }

    while (byte_23C3D4413[v34]);
    *a2 = v33;
    v36 = *v33;
    if (v36 >= 0)
    {
      v37 = *v33;
    }

    else
    {
      v37 = 122;
    }

    v140 = (v9 + 48);
    if (byte_23C3D4613[v37])
    {
      v38 = &unk_23C3D4813;
      do
      {
        *a2 = v33 + 1;
        v39 = v33;
        do
        {
          v41 = *++v39;
          v40 = v41;
          if (v41 < 0)
          {
            v40 = 122;
          }
        }

        while (byte_23C3D4613[v40]);
        *a2 = v39;
        v42 = (a1[13] + (-*(a1 + 104) & 7));
        if ((v42 + 7) > a1[14])
        {
          v43 = v38;
          v44 = a1[8207];
          if (!v44)
          {
            operator new[]();
          }

          v45 = v44(65558);
          v46 = (v45 + (-v45 & 7));
          *v46 = a1[12];
          a1[12] = v45;
          a1[14] = v45 + 65558;
          v42 = (v46 + (-(v46 + 8) & 7) + 8);
          v30 = (v9 + 64);
          v29 = (v9 + 48);
          v38 = v43;
        }

        a1[13] = v42 + 7;
        *v42 = 0;
        v42[1] = 0;
        v47 = *a2 - v33;
        *v42 = v33;
        v42[2] = v47;
        v48 = *v30;
        if (*v30)
        {
          v48 = *(v9 + 72);
          v49 = (v48 + 6);
        }

        else
        {
          v49 = v30;
        }

        *v49 = v42;
        *(v9 + 72) = v42;
        v42[4] = v9;
        v42[5] = v48;
        v42[6] = 0;
        v50 = *a2;
        do
        {
          v52 = *v50++;
          v51 = v52;
          if (v52 < 0)
          {
            v51 = 122;
          }
        }

        while (byte_23C3D4413[v51]);
        *a2 = (v50 - 1);
        if (*(v50 - 1) != 61)
        {
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *a2;
          v26 = "expected =";
          goto LABEL_60;
        }

        *a2 = v50;
        v53 = *v42;
        if (!*v42)
        {
          v53 = &byte_27E1F3E58;
          v47 = 0;
        }

        v53[v47] = 0;
        v54 = *a2;
        v55 = *a2;
        do
        {
          v56 = v55;
          v58 = *v55++;
          v57 = v58;
          if (v58 < 0)
          {
            v57 = 122;
          }

          ++v54;
        }

        while (byte_23C3D4413[v57]);
        *a2 = (v55 - 1);
        v59 = *(v55 - 1);
        if (v59 != 34 && v59 != 39)
        {
LABEL_323:
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *a2;
          v26 = "expected ' or ";
          goto LABEL_60;
        }

        *a2 = v55;
        if (v59 == 39)
        {
          do
          {
            v61 = *++v56;
            v60 = v61;
            if (v61 < 0)
            {
              v60 = 122;
            }
          }

          while (v38[v60]);
          *a2 = v56;
          for (k = v56; ; k = v70 + 1)
          {
            while (1)
            {
              v65 = *k;
              if (v65 != 38)
              {
                if (!*k || v65 == 39)
                {
                  goto LABEL_211;
                }

LABEL_111:
                ++k;
                *v56++ = v65;
                continue;
              }

              v66 = k[1];
              if (v66 > 0x66)
              {
                if (v66 == 103)
                {
                  if (k[2] != 116 || k[3] != 59)
                  {
                    goto LABEL_111;
                  }

                  v69 = 62;
                  goto LABEL_138;
                }

                if (v66 == 108)
                {
                  if (k[2] != 116 || k[3] != 59)
                  {
                    goto LABEL_111;
                  }

                  v69 = 60;
LABEL_138:
                  *v56++ = v69;
                  k += 4;
                  continue;
                }

                if (v66 != 113 || k[2] != 117 || k[3] != 111 || k[4] != 116 || k[5] != 59)
                {
                  goto LABEL_111;
                }

                v67 = 34;
                goto LABEL_154;
              }

              if (v66 == 35)
              {
                break;
              }

              if (v66 != 97)
              {
                goto LABEL_111;
              }

              v68 = k[2];
              if (v68 == 112)
              {
                if (k[3] != 111 || k[4] != 115 || k[5] != 59)
                {
                  goto LABEL_111;
                }

                v67 = 39;
LABEL_154:
                *v56++ = v67;
                k += 6;
                continue;
              }

              if (v68 != 109 || k[3] != 112 || k[4] != 59)
              {
                goto LABEL_111;
              }

              *v56++ = 38;
              k += 5;
            }

            v70 = k + 2;
            if (k[2] == 120)
            {
              v71 = 0;
              do
              {
                v72 = v71;
                v73 = *++v70;
                v74 = byte_23C3D4713[v73];
                v71 = v74 + 16 * v71;
              }

              while (v74 != 255);
              if (v72 <= 0x7F)
              {
                goto LABEL_147;
              }
            }

            else
            {
              v75 = 0;
              v70 = k + 1;
              do
              {
                v72 = v75;
                v76 = *++v70;
                v77 = byte_23C3D4713[v76];
                v75 = v77 + 10 * v75;
              }

              while (v77 != 255);
              if (v72 <= 0x7F)
              {
LABEL_147:
                v78 = 1;
                goto LABEL_159;
              }
            }

            if (v72 > 0x7FF)
            {
              if (v72 >> 16)
              {
                if (v72 >> 16 > 0x10)
                {
                  goto LABEL_321;
                }

                v56[3] = v72 & 0x3F | 0x80;
                v56[2] = (v72 >> 6) & 0x3F | 0x80;
                v56[1] = (v72 >> 12) & 0x3F | 0x80;
                LODWORD(v72) = (v72 >> 18) | 0xFFFFFFF0;
                v78 = 4;
              }

              else
              {
                v56[2] = v72 & 0x3F | 0x80;
                v56[1] = (v72 >> 6) & 0x3F | 0x80;
                LODWORD(v72) = (v72 >> 12) | 0xFFFFFFE0;
                v78 = 3;
              }
            }

            else
            {
              v56[1] = v72 & 0x3F | 0x80;
              LODWORD(v72) = (v72 >> 6) | 0xFFFFFFC0;
              v78 = 2;
            }

LABEL_159:
            *v56 = v72;
            if (*v70 != 59)
            {
              goto LABEL_322;
            }

            v56 += v78;
          }
        }

        do
        {
          v64 = *++v56;
          v63 = v64;
          if (v64 < 0)
          {
            v63 = 122;
          }
        }

        while (byte_23C3D4913[v63]);
        *a2 = v56;
        k = v56;
        while (1)
        {
          v79 = *k;
          if (v79 != 38)
          {
            break;
          }

          v80 = k[1];
          if (v80 <= 0x66)
          {
            if (v80 == 35)
            {
              v70 = k + 2;
              if (k[2] == 120)
              {
                v84 = 0;
                do
                {
                  v85 = v84;
                  v86 = *++v70;
                  v87 = byte_23C3D4713[v86];
                  v84 = v87 + 16 * v84;
                }

                while (v87 != 255);
                if (v85 <= 0x7F)
                {
                  goto LABEL_197;
                }
              }

              else
              {
                v88 = 0;
                v70 = k + 1;
                do
                {
                  v85 = v88;
                  v89 = *++v70;
                  v90 = byte_23C3D4713[v89];
                  v88 = v90 + 10 * v88;
                }

                while (v90 != 255);
                if (v85 <= 0x7F)
                {
LABEL_197:
                  v91 = 1;
                  goto LABEL_209;
                }
              }

              if (v85 > 0x7FF)
              {
                if (v85 >> 16)
                {
                  if (v85 >> 16 > 0x10)
                  {
LABEL_321:
                    v138 = __cxa_allocate_exception(0x18uLL);
                    *v138 = &unk_284F01CA0;
                    v138[1] = "invalid numeric character entity";
                    v138[2] = v56;
                    __cxa_throw(v138, &unk_284F01B38, std::exception::~exception);
                  }

                  v56[3] = v85 & 0x3F | 0x80;
                  v56[2] = (v85 >> 6) & 0x3F | 0x80;
                  v56[1] = (v85 >> 12) & 0x3F | 0x80;
                  LODWORD(v85) = (v85 >> 18) | 0xFFFFFFF0;
                  v91 = 4;
                }

                else
                {
                  v56[2] = v85 & 0x3F | 0x80;
                  v56[1] = (v85 >> 6) & 0x3F | 0x80;
                  LODWORD(v85) = (v85 >> 12) | 0xFFFFFFE0;
                  v91 = 3;
                }
              }

              else
              {
                v56[1] = v85 & 0x3F | 0x80;
                LODWORD(v85) = (v85 >> 6) | 0xFFFFFFC0;
                v91 = 2;
              }

LABEL_209:
              *v56 = v85;
              if (*v70 != 59)
              {
LABEL_322:
                v139 = __cxa_allocate_exception(0x18uLL);
                *v139 = &unk_284F01CA0;
                v139[1] = "expected ;";
                v139[2] = v70;
                __cxa_throw(v139, &unk_284F01B38, std::exception::~exception);
              }

              v56 += v91;
              k = v70 + 1;
            }

            else
            {
              if (v80 != 97)
              {
                goto LABEL_161;
              }

              v82 = k[2];
              if (v82 == 112)
              {
                if (k[3] != 111 || k[4] != 115 || k[5] != 59)
                {
                  goto LABEL_161;
                }

                v81 = 39;
LABEL_204:
                *v56++ = v81;
                k += 6;
              }

              else
              {
                if (v82 != 109 || k[3] != 112 || k[4] != 59)
                {
                  goto LABEL_161;
                }

                *v56++ = 38;
                k += 5;
              }
            }
          }

          else if (v80 == 103)
          {
            if (k[2] != 116 || k[3] != 59)
            {
              goto LABEL_161;
            }

            v83 = 62;
LABEL_188:
            *v56++ = v83;
            k += 4;
          }

          else
          {
            if (v80 == 108)
            {
              if (k[2] != 116 || k[3] != 59)
              {
                goto LABEL_161;
              }

              v83 = 60;
              goto LABEL_188;
            }

            if (v80 == 113 && k[2] == 117 && k[3] == 111 && k[4] == 116 && k[5] == 59)
            {
              v81 = 34;
              goto LABEL_204;
            }

LABEL_161:
            ++k;
            *v56++ = v79;
          }
        }

        if (*k && v79 != 34)
        {
          goto LABEL_161;
        }

LABEL_211:
        *a2 = k;
        v92 = (v56 - v54);
        v42[1] = v55;
        v42[3] = v92;
        if (**a2 != v59)
        {
          goto LABEL_323;
        }

        ++*a2;
        v93 = v42[1];
        if (!v93)
        {
          v93 = &byte_27E1F3E58;
          v92 = 0;
        }

        v92[v93] = 0;
        v33 = *a2 - 1;
        do
        {
          v95 = *++v33;
          v94 = v95;
          if (v95 < 0)
          {
            v94 = 122;
          }
        }

        while (byte_23C3D4413[v94]);
        *a2 = v33;
        v36 = *v33;
        if (v36 >= 0)
        {
          v96 = *v33;
        }

        else
        {
          v96 = 122;
        }
      }

      while (byte_23C3D4613[v96]);
    }

    if (v36 != 47)
    {
      if (v36 != 62)
      {
        goto LABEL_325;
      }

      *a2 = v33 + 1;
      while (1)
      {
        v99 = *a2;
        v101 = (*a2 - 1);
        v100 = **a2;
        while (v100 != 60)
        {
          if (!v100)
          {
            goto LABEL_59;
          }

          *a2 = v99;
          v56 = v101;
          do
          {
            v103 = *++v56;
            v102 = v103;
            if (v103 < 0)
            {
              v102 = 122;
            }
          }

          while (byte_23C3D4B13[v102]);
          *a2 = v56;
          v104 = v56;
          while (1)
          {
            v105 = *v104;
            if (v105 != 38)
            {
              break;
            }

            v106 = v104[1];
            if (v106 <= 0x66)
            {
              if (v106 == 35)
              {
                v110 = v104 + 2;
                if (v104[2] == 120)
                {
                  v111 = 0;
                  do
                  {
                    v112 = v111;
                    v113 = *++v110;
                    v114 = byte_23C3D4713[v113];
                    v111 = v114 + 16 * v111;
                  }

                  while (v114 != 255);
                  if (v112 <= 0x7F)
                  {
                    goto LABEL_273;
                  }
                }

                else
                {
                  v115 = 0;
                  v110 = v104 + 1;
                  do
                  {
                    v112 = v115;
                    v116 = *++v110;
                    v117 = byte_23C3D4713[v116];
                    v115 = v117 + 10 * v115;
                  }

                  while (v117 != 255);
                  if (v112 <= 0x7F)
                  {
LABEL_273:
                    v118 = 1;
                    goto LABEL_285;
                  }
                }

                if (v112 > 0x7FF)
                {
                  if (v112 >> 16)
                  {
                    if (v112 >> 16 > 0x10)
                    {
                      goto LABEL_321;
                    }

                    v56[3] = v112 & 0x3F | 0x80;
                    v56[2] = (v112 >> 6) & 0x3F | 0x80;
                    v56[1] = (v112 >> 12) & 0x3F | 0x80;
                    LODWORD(v112) = (v112 >> 18) | 0xFFFFFFF0;
                    v118 = 4;
                  }

                  else
                  {
                    v56[2] = v112 & 0x3F | 0x80;
                    v56[1] = (v112 >> 6) & 0x3F | 0x80;
                    LODWORD(v112) = (v112 >> 12) | 0xFFFFFFE0;
                    v118 = 3;
                  }
                }

                else
                {
                  v56[1] = v112 & 0x3F | 0x80;
                  LODWORD(v112) = (v112 >> 6) | 0xFFFFFFC0;
                  v118 = 2;
                }

LABEL_285:
                *v56 = v112;
                if (*v110 != 59)
                {
                  v137 = __cxa_allocate_exception(0x18uLL);
                  *v137 = &unk_284F01CA0;
                  v137[1] = "expected ;";
                  v137[2] = v110;
                  __cxa_throw(v137, &unk_284F01B38, std::exception::~exception);
                }

                v56 += v118;
                v104 = v110 + 1;
              }

              else
              {
                if (v106 != 97)
                {
                  goto LABEL_237;
                }

                v108 = v104[2];
                if (v108 == 112)
                {
                  if (v104[3] != 111 || v104[4] != 115 || v104[5] != 59)
                  {
                    goto LABEL_237;
                  }

                  v107 = 39;
LABEL_280:
                  *v56++ = v107;
                  v104 += 6;
                }

                else
                {
                  if (v108 != 109 || v104[3] != 112 || v104[4] != 59)
                  {
                    goto LABEL_237;
                  }

                  *v56++ = 38;
                  v104 += 5;
                }
              }
            }

            else if (v106 == 103)
            {
              if (v104[2] != 116 || v104[3] != 59)
              {
                goto LABEL_237;
              }

              v109 = 62;
LABEL_264:
              *v56++ = v109;
              v104 += 4;
            }

            else
            {
              if (v106 == 108)
              {
                if (v104[2] != 116 || v104[3] != 59)
                {
                  goto LABEL_237;
                }

                v109 = 60;
                goto LABEL_264;
              }

              if (v106 == 113 && v104[2] == 117 && v104[3] == 111 && v104[4] == 116 && v104[5] == 59)
              {
                v107 = 34;
                goto LABEL_280;
              }

LABEL_237:
              ++v104;
              *v56++ = v105;
            }
          }

          if (*v104 && v105 != 60)
          {
            goto LABEL_237;
          }

          *a2 = v104;
          v119 = a1[13] + (-*(a1 + 104) & 7);
          if ((v119 + 96) > a1[14])
          {
            v120 = v101;
            v121 = a1[8207];
            if (!v121)
            {
              operator new[]();
            }

            v122 = v121(65558);
            v123 = (v122 + (-v122 & 7));
            *v123 = a1[12];
            a1[12] = v122;
            a1[14] = v122 + 65558;
            v119 = v123 + (-(v123 + 8) & 7) + 8;
            v29 = (v9 + 48);
            v101 = v120;
          }

          a1[13] = v119 + 96;
          *(v119 + 40) = 2;
          *(v119 + 48) = 0;
          *(v119 + 64) = 0;
          *v119 = 0;
          *(v119 + 8) = v99;
          *(v119 + 24) = &v56[-v99];
          v124 = *v29;
          if (*v29)
          {
            v124 = *(v9 + 56);
            v125 = (v124 + 88);
          }

          else
          {
            v125 = v29;
          }

          *v125 = v119;
          *(v9 + 56) = v119;
          *(v119 + 32) = v9;
          *(v119 + 80) = v124;
          *(v119 + 88) = 0;
          v126 = *(v9 + 8);
          if (!v126)
          {
            v126 = &byte_27E1F3E58;
          }

          if (!*v126)
          {
            *(v9 + 8) = v99;
            *(v9 + 24) = &v56[-v99];
          }

          v100 = **a2;
          *v56 = 0;
        }

        v127 = *a2;
        v128 = (*a2)[1];
        if (v128 == 47)
        {
          *a2 = v127 + 2;
          v129 = (v127 + 1);
          do
          {
            v131 = *++v129;
            v130 = v131;
            if (v131 < 0)
            {
              v130 = 122;
            }
          }

          while (byte_23C3D4513[v130]);
          *a2 = v129;
          do
          {
            v133 = *v129++;
            v132 = v133;
            if (v133 < 0)
            {
              v132 = 122;
            }
          }

          while (byte_23C3D4413[v132]);
          *a2 = (v129 - 1);
          if (*(v129 - 1) == 62)
          {
            *a2 = v129;
            goto LABEL_227;
          }

LABEL_325:
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *a2;
          v26 = "expected >";
LABEL_60:
          *exception = &unk_284F01CA0;
          exception[1] = v26;
          exception[2] = v25;
          __cxa_throw(exception, &unk_284F01B38, std::exception::~exception);
        }

        ++*a2;
        v134 = sub_23C39BF94(a1, a2);
        v29 = (v9 + 48);
        if (v134)
        {
          v97 = *v140;
          if (*v140)
          {
            v97 = *(v9 + 56);
            v98 = (v97 + 88);
          }

          else
          {
            v98 = (v9 + 48);
          }

          *v98 = v134;
          *(v9 + 56) = v134;
          v134[4] = v9;
          v134[10] = v97;
          v134[11] = 0;
        }

LABEL_227:
        if (v128 == 47)
        {
          goto LABEL_314;
        }
      }
    }

    *a2 = v33 + 1;
    if (v33[1] != 62)
    {
      goto LABEL_325;
    }

    *a2 = v33 + 2;
LABEL_314:
    if (*v9)
    {
      *(*v9 + *(v9 + 16)) = 0;
    }

    else
    {
      byte_27E1F3E58 = 0;
    }

    return v9;
  }

  v11 = v4[1];
  if (v11 == 45)
  {
    if (v4[2] == 45)
    {
      v18 = v4 + 3;
      for (m = v4 + 3; ; ++m)
      {
        *a2 = m;
        if (*m == 45)
        {
          if (m[1] == 45 && m[2] == 62)
          {
            v9 = a1[13] + (-*(a1 + 104) & 7);
            if ((v9 + 96) > a1[14])
            {
              v20 = a1[8207];
              if (!v20)
              {
                operator new[]();
              }

              v21 = v20(65558);
              v135 = (v21 + (-v21 & 7));
              *v135 = a1[12];
              a1[12] = v21;
              a1[14] = v21 + 65558;
              v9 = v135 + (-(v135 + 8) & 7) + 8;
            }

            a1[13] = v9 + 96;
            *v9 = 0;
            *(v9 + 8) = 0;
            *(v9 + 40) = 4;
            *(v9 + 48) = 0;
            *(v9 + 64) = 0;
            v136 = *a2 - v18;
            *(v9 + 8) = v18;
            *(v9 + 24) = v136;
            *(v9 + 32) = 0;
            **a2 = 0;
            v10 = *a2 + 3;
            goto LABEL_62;
          }
        }

        else if (!*m)
        {
LABEL_59:
          exception = __cxa_allocate_exception(0x18uLL);
          v25 = *a2;
          v26 = "unexpected end of data";
          goto LABEL_60;
        }
      }
    }

    goto LABEL_56;
  }

  if (v11 == 68)
  {
    if (v4[2] == 79 && v4[3] == 67 && v4[4] == 84 && v4[5] == 89 && v4[6] == 80 && v4[7] == 69)
    {
      v17 = v4[8];
      if (v17 < 0)
      {
        LOBYTE(v17) = 122;
      }

      if (byte_23C3D4413[v17])
      {
        *a2 = v4 + 9;
        sub_23C399860(a2);
        return 0;
      }
    }

LABEL_56:
    v10 = v4 + 1;
    while (1)
    {
      *a2 = v10;
      v23 = *v10++;
      v22 = v23;
      if (v23 == 62)
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_59;
      }
    }

    v9 = 0;
LABEL_62:
    *a2 = v10;
    return v9;
  }

  if (v11 != 91 || v4[2] != 67 || v4[3] != 68 || v4[4] != 65 || v4[5] != 84 || v4[6] != 65 || v4[7] != 91)
  {
    goto LABEL_56;
  }

  *a2 = v4 + 8;

  return sub_23C3996E0(a1, a2);
}

uint64_t sub_23C39D2B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = v3[11];
  if (v4)
  {
    v5 = (v4 - 80);
  }

  else
  {
    v5 = 0;
  }

  if (v5 != v3)
  {
    do
    {
      v6 = v5[11];
      if (v6)
      {
        v7 = (v6 - 80);
      }

      else
      {
        v7 = 0;
      }

      sub_23C38EA34(v5);
      operator delete(v5);
      v3 = *(v2 + 8);
      v5 = v7;
    }

    while (v7 != v3);
  }

  operator delete(v3);
  MEMORY[0x23EECF470](v2, 0x1020C402FC1992ELL);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_23C39D36C(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = strlen(*a2);
  if (v5 < 0x7FFFFFFFFFFFFFF8)
  {
    v6 = v5;
    if (v5 < 0x17)
    {
      *(a1 + 23) = v5;
      if (v5)
      {
        memmove(a1, v4, v5);
      }

      *(a1 + v6) = 0;
      sub_23C38428C((a1 + 3), (a2 + 8));
    }

    operator new();
  }

  sub_23C36FA14();
}

void sub_23C39D434(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C39D450(std::string *this, std::string::value_type *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v2 = *a2;
  if (*a2)
  {
    v4 = a2 + 1;
    do
    {
      std::string::push_back(this, v2);
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }
}

void sub_23C39D498(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23C39D4B4(void *a1)
{
  v2 = a1 + 15;
  v3 = a1[12];
  if (v3 != v2)
  {
    do
    {
      v4 = *(v3 + (-v3 & 7));
      v5 = a1[8208];
      if (v5)
      {
        v5();
      }

      else
      {
        MEMORY[0x23EECF450]();
      }

      a1[12] = v4;
      v3 = v4;
    }

    while (v4 != v2);
  }

  a1[12] = v2;
  a1[13] = v2 + (-v2 & 7);
  a1[14] = a1 + 8207;
  return a1;
}

void sub_23C39D568(uint64_t a1, __int128 *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v2 = a1;
    sub_23C36FB58(&__p, *a2, *(a2 + 1));
    a1 = v2;
    if ((SHIBYTE(v4) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __p = *a2;
    v4 = *(a2 + 2);
    if ((SHIBYTE(v4) & 0x80000000) == 0)
    {
LABEL_3:
      *a1 = __p;
      *(a1 + 16) = v4;
      return;
    }
  }

  sub_23C36FB58(a1, __p, *(&__p + 1));
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p);
  }
}

void sub_23C39D644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10 == 1 && a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C39D678(uint64_t a1, const std::locale *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_23C38E4C8(&v18);
  v4 = (&v18 + v18.__vftable[-1].~runtime_error);
  std::ios_base::getloc(v4);
  std::ios_base::imbue(v4, a2);
  std::locale::~locale(&__dst);
  rdbuf = v4->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, a2);
    std::locale::locale(&v16, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, a2);
    std::locale::~locale(&v16);
  }

  std::locale::~locale(&v15);
  sub_23C372684(&v18, "Lockup", 6);
  v6 = *&v21[v18.__vftable[-1].~runtime_error] & 5;
  if (v6)
  {
    v30 = 0;
    goto LABEL_17;
  }

  if ((v28 & 0x10) != 0)
  {
    v8 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v8 = v24;
    }

    v9 = v23;
    v7 = v8 - v23;
    if (v8 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_37:
      sub_23C36FA14();
    }

LABEL_11:
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memmove(&__dst, v9, v7);
    }

    goto LABEL_16;
  }

  if ((v28 & 8) != 0)
  {
    v9 = v20;
    v7 = v22 - v20;
    if ((v22 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  v7 = 0;
  *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_16:
  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v31 = __dst;
  v30 = 1;
LABEL_17:
  v18.__vftable = *MEMORY[0x277D82828];
  *(&v18.__vftable + v18.__vftable[-1].~runtime_error) = *(MEMORY[0x277D82828] + 24);
  v18.__imp_.__imp_ = (MEMORY[0x277D82878] + 16);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  v18.__imp_.__imp_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v19);
  std::ostream::~ostream();
  MEMORY[0x23EECF3E0](&v29);
  if (v6)
  {
    sub_23C36F128(&v15, "conversion of type ");
    sub_23C3840A0(&v16, &v15, (0x800000023C3D4C13 & 0x7FFFFFFFFFFFFFFFLL));
    sub_23C3840A0(&__dst, &v16, " to data failed");
    v14 = 0;
    sub_23C390C18(&v18, &__dst, &v14);
    v12.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/ptree_implementation.hpp";
    v12.i64[1] = "void boost::property_tree::basic_ptree<std::string, std::string>::put_value(const Type &, Translator) [Key = std::string, Data = std::string, KeyCompare = std::less<std::string>, Type = char[7], Translator = boost::property_tree::stream_translator<char, std::char_traits<char>, std::allocator<char>, char[7]>]";
    v13 = 828;
    sub_23C390BB0(&v18, &v12);
  }

  if (&v31 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v31;
      }

      else
      {
        v10 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      sub_23C37034C(a1, v10, size);
    }

    else if ((*(&v31.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      sub_23C37027C(a1, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
    }

    else
    {
      *a1 = v31;
    }
  }

  if (v30 == 1 && SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

void sub_23C39DAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, std::runtime_error a32)
{
  sub_23C390CA4(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a19 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a14);
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23C39DB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::locale::~locale(&a14);
  sub_23C38E6C0(va);
  _Unwind_Resume(a1);
}

void sub_23C39DBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_23C38E6C0(va);
  _Unwind_Resume(a1);
}

void sub_23C39DBBC(uint64_t a1, const std::locale *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_23C38E4C8(&v18);
  v4 = (&v18 + v18.__vftable[-1].~runtime_error);
  std::ios_base::getloc(v4);
  std::ios_base::imbue(v4, a2);
  std::locale::~locale(&__dst);
  rdbuf = v4->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, a2);
    std::locale::locale(&v16, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, a2);
    std::locale::~locale(&v16);
  }

  std::locale::~locale(&v15);
  sub_23C372684(&v18, "Fingerprint", 11);
  v6 = *&v21[v18.__vftable[-1].~runtime_error] & 5;
  if (v6)
  {
    v30 = 0;
    goto LABEL_17;
  }

  if ((v28 & 0x10) != 0)
  {
    v8 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v8 = v24;
    }

    v9 = v23;
    v7 = v8 - v23;
    if (v8 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_37:
      sub_23C36FA14();
    }

LABEL_11:
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memmove(&__dst, v9, v7);
    }

    goto LABEL_16;
  }

  if ((v28 & 8) != 0)
  {
    v9 = v20;
    v7 = v22 - v20;
    if ((v22 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  v7 = 0;
  *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_16:
  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v31 = __dst;
  v30 = 1;
LABEL_17:
  v18.__vftable = *MEMORY[0x277D82828];
  *(&v18.__vftable + v18.__vftable[-1].~runtime_error) = *(MEMORY[0x277D82828] + 24);
  v18.__imp_.__imp_ = (MEMORY[0x277D82878] + 16);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  v18.__imp_.__imp_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v19);
  std::ostream::~ostream();
  MEMORY[0x23EECF3E0](&v29);
  if (v6)
  {
    sub_23C36F128(&v15, "conversion of type ");
    sub_23C3840A0(&v16, &v15, (0x800000023C3D4C18 & 0x7FFFFFFFFFFFFFFFLL));
    sub_23C3840A0(&__dst, &v16, " to data failed");
    v14 = 0;
    sub_23C390C18(&v18, &__dst, &v14);
    v12.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/ptree_implementation.hpp";
    v12.i64[1] = "void boost::property_tree::basic_ptree<std::string, std::string>::put_value(const Type &, Translator) [Key = std::string, Data = std::string, KeyCompare = std::less<std::string>, Type = char[12], Translator = boost::property_tree::stream_translator<char, std::char_traits<char>, std::allocator<char>, char[12]>]";
    v13 = 828;
    sub_23C390BB0(&v18, &v12);
  }

  if (&v31 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v31;
      }

      else
      {
        v10 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      sub_23C37034C(a1, v10, size);
    }

    else if ((*(&v31.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      sub_23C37027C(a1, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
    }

    else
    {
      *a1 = v31;
    }
  }

  if (v30 == 1 && SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

void sub_23C39E008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, std::runtime_error a32)
{
  sub_23C390CA4(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a19 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a14);
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23C39E0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::locale::~locale(&a14);
  sub_23C38E6C0(va);
  _Unwind_Resume(a1);
}

void sub_23C39E0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_23C38E6C0(va);
  _Unwind_Resume(a1);
}

void sub_23C39E100(uint64_t a1, const std::locale *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_23C38E4C8(&v18);
  v4 = (&v18 + v18.__vftable[-1].~runtime_error);
  std::ios_base::getloc(v4);
  std::ios_base::imbue(v4, a2);
  std::locale::~locale(&__dst);
  rdbuf = v4->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, a2);
    std::locale::locale(&v16, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, a2);
    std::locale::~locale(&v16);
  }

  std::locale::~locale(&v15);
  sub_23C372684(&v18, "http://www.w3.org/2000/svg", 26);
  v6 = *&v21[v18.__vftable[-1].~runtime_error] & 5;
  if (v6)
  {
    v30 = 0;
    goto LABEL_17;
  }

  if ((v28 & 0x10) != 0)
  {
    v8 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v8 = v24;
    }

    v9 = v23;
    v7 = v8 - v23;
    if (v8 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_37:
      sub_23C36FA14();
    }

LABEL_11:
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memmove(&__dst, v9, v7);
    }

    goto LABEL_16;
  }

  if ((v28 & 8) != 0)
  {
    v9 = v20;
    v7 = v22 - v20;
    if ((v22 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  v7 = 0;
  *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_16:
  __dst.__r_.__value_.__s.__data_[v7] = 0;
  v31 = __dst;
  v30 = 1;
LABEL_17:
  v18.__vftable = *MEMORY[0x277D82828];
  *(&v18.__vftable + v18.__vftable[-1].~runtime_error) = *(MEMORY[0x277D82828] + 24);
  v18.__imp_.__imp_ = (MEMORY[0x277D82878] + 16);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  v18.__imp_.__imp_ = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v19);
  std::ostream::~ostream();
  MEMORY[0x23EECF3E0](&v29);
  if (v6)
  {
    sub_23C36F128(&v15, "conversion of type ");
    sub_23C3840A0(&v16, &v15, (0x800000023C3D4C1ELL & 0x7FFFFFFFFFFFFFFFLL));
    sub_23C3840A0(&__dst, &v16, " to data failed");
    v14 = 0;
    sub_23C390C18(&v18, &__dst, &v14);
    v12.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/ptree_implementation.hpp";
    v12.i64[1] = "void boost::property_tree::basic_ptree<std::string, std::string>::put_value(const Type &, Translator) [Key = std::string, Data = std::string, KeyCompare = std::less<std::string>, Type = char[27], Translator = boost::property_tree::stream_translator<char, std::char_traits<char>, std::allocator<char>, char[27]>]";
    v13 = 828;
    sub_23C390BB0(&v18, &v12);
  }

  if (&v31 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v31;
      }

      else
      {
        v10 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      sub_23C37034C(a1, v10, size);
    }

    else if ((*(&v31.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      sub_23C37027C(a1, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
    }

    else
    {
      *a1 = v31;
    }
  }

  if (v30 == 1 && SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

void sub_23C39E54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, std::runtime_error a32)
{
  sub_23C390CA4(&a32);
  if (a31 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a19 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a14);
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23C39E614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::locale a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::locale::~locale(&a14);
  sub_23C38E6C0(va);
  _Unwind_Resume(a1);
}

void sub_23C39E630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_23C38E6C0(va);
  _Unwind_Resume(a1);
}

void sub_23C39E644(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  __p = 0;
  v24 = 0;
  v4 = 60;
  v25 = 0;
  v5 = 1u;
  do
  {
    if (SHIBYTE(v25) < 0)
    {
      v9 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v24 == v9)
      {
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23C36FA14();
        }

LABEL_9:
        operator new();
      }

      p_p = __p;
      v6 = v24++;
    }

    else
    {
      if (HIBYTE(v25) == 22)
      {
        goto LABEL_9;
      }

      v6 = HIBYTE(v25);
      HIBYTE(v25) = (HIBYTE(v25) + 1) & 0x7F;
      p_p = &__p;
    }

    v8 = &p_p[v6];
    *v8 = v4;
    v8[1] = 0;
    v4 = aXmlVersion10En_1[v5++];
  }

  while (v5 != 31);
  if (v25 >= 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p;
  }

  if (v25 >= 0)
  {
    v11 = HIBYTE(v25);
  }

  else
  {
    v11 = v24;
  }

  v12 = sub_23C372684(a1, v10, v11);
  v13 = *(a4 + 39);
  if (v13 >= 0)
  {
    v14 = a4 + 16;
  }

  else
  {
    v14 = *(a4 + 16);
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 39);
  }

  else
  {
    v15 = *(a4 + 24);
  }

  v16 = sub_23C372684(v12, v14, v15);
  v27 = 0x400000000000000;
  v26 = 0xA3E3F22uLL;
  sub_23C372684(v16, &v26, 4);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(__p);
LABEL_25:
  __p = 0;
  v24 = 0;
  v25 = 0;
  sub_23C39E9B8(a1, &__p, a2, -1, a4);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    sub_23C36F128(&v26, "write error");
    sub_23C397FA4(&__p, &v26, a3, 0);
    __p = &unk_284F01C50;
    v21.i64[0] = "/AppleInternal/Library/BuildRoots/4~CAoFugDmBq1DumL31pZVCQtVJ2QpJ-I1yuxrViI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/detail/xml_parser_write.hpp";
    v21.i64[1] = "void boost::property_tree::xml_parser::write_xml_internal(std::basic_ostream<typename Ptree::key_type::value_type> &, const Ptree &, const std::string &, const xml_writer_settings<typename Ptree::key_type> &) [Ptree = boost::property_tree::basic_ptree<std::string, std::string>]";
    v22 = 190;
    sub_23C3956EC(&__p, &v21);
  }
}

void sub_23C39E954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::runtime_error a16, int a17, __int16 a18, char a19, char a20)
{
  sub_23C395754(&a16);
  if (*(v20 - 89) < 0)
  {
    operator delete(*(v20 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_23C39E9B8(void *a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 *a5)
{
  v10 = *(a3 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v98 = v11 == 0;
  v12 = *(*(a3 + 24) + 8);
  v13 = v12[11];
  v14 = *(a5 + 1);
  if (v13)
  {
    v15 = (v13 - 80);
  }

  else
  {
    v15 = 0;
  }

  if (v15 == v12)
  {
    v97 = 0;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 8);
    }

    if (!v10)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_27E1F3E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E60))
    {
      sub_23C39D450(byte_27E1F3E78, "<xmlattr>");
      __cxa_atexit(MEMORY[0x277D82640], byte_27E1F3E78, &dword_23C368000);
      __cxa_guard_release(&qword_27E1F3E60);
    }

    v17 = *(v15 + 23);
    if (v17 >= 0)
    {
      v18 = *(v15 + 23);
    }

    else
    {
      v18 = v15[1];
    }

    v19 = byte_27E1F3E78[23];
    if (byte_27E1F3E78[23] < 0)
    {
      v19 = *&byte_27E1F3E78[8];
    }

    if (v18 == v19)
    {
      v20 = v17 >= 0 ? v15 : *v15;
      v21 = byte_27E1F3E78[23] >= 0 ? byte_27E1F3E78 : *byte_27E1F3E78;
      if (!memcmp(v20, v21, v18))
      {
        goto LABEL_9;
      }
    }

    if ((atomic_load_explicit(&qword_27E1F3E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E68))
    {
      sub_23C39D450(&xmmword_27E1F3E90, "<xmltext>");
      __cxa_atexit(MEMORY[0x277D82640], &xmmword_27E1F3E90, &dword_23C368000);
      __cxa_guard_release(&qword_27E1F3E68);
    }

    v22 = *(v15 + 23);
    if (v22 >= 0)
    {
      v23 = *(v15 + 23);
    }

    else
    {
      v23 = v15[1];
    }

    v24 = byte_27E1F3EA7;
    if (byte_27E1F3EA7 < 0)
    {
      v24 = *(&xmmword_27E1F3E90 + 1);
    }

    if (v23 != v24)
    {
      break;
    }

    if (v22 >= 0)
    {
      v25 = v15;
    }

    else
    {
      v25 = *v15;
    }

    if (byte_27E1F3EA7 >= 0)
    {
      v26 = &xmmword_27E1F3E90;
    }

    else
    {
      v26 = xmmword_27E1F3E90;
    }

    v98 = 0;
    if (memcmp(v25, v26, v23))
    {
      goto LABEL_52;
    }

LABEL_9:
    v16 = v15[11];
    if (v16)
    {
      v15 = (v16 - 80);
    }

    else
    {
      v15 = 0;
    }

    if (v15 == v12)
    {
      v97 = 0;
      goto LABEL_53;
    }
  }

  v98 = 0;
LABEL_52:
  v97 = 1;
LABEL_53:
  v27 = *(a3 + 23);
  if (*(a3 + 23) < 0)
  {
    v27 = *(a3 + 8);
  }

  if (!v27)
  {
LABEL_56:
    if (*(*(a3 + 24) + 24))
    {
      goto LABEL_57;
    }

    if ((a4 & 0x80000000) == 0)
    {
      sub_23C39F66C(a1, a4, *a5, *(a5 + 1));
      __p.__r_.__value_.__s.__data_[0] = 60;
      v92 = sub_23C372684(a1, &__p, 1);
      v93 = *(a2 + 23);
      if (v93 >= 0)
      {
        v94 = a2;
      }

      else
      {
        v94 = *a2;
      }

      if (v93 >= 0)
      {
        v95 = *(a2 + 23);
      }

      else
      {
        v95 = *(a2 + 8);
      }

      v86 = sub_23C372684(v92, v94, v95);
      __p.__r_.__value_.__s.__data_[0] = 47;
      p_p = &__p;
      v89 = 1;
      goto LABEL_198;
    }

    return;
  }

LABEL_57:
  if ((a4 & 0x80000000) == 0)
  {
    sub_23C39F66C(a1, a4, *a5, *(a5 + 1));
    __p.__r_.__value_.__s.__data_[0] = 60;
    v28 = sub_23C372684(a1, &__p, 1);
    v29 = *(a2 + 23);
    if (v29 >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = *a2;
    }

    if (v29 >= 0)
    {
      v31 = *(a2 + 23);
    }

    else
    {
      v31 = *(a2 + 8);
    }

    sub_23C372684(v28, v30, v31);
    if ((atomic_load_explicit(&qword_27E1F3E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E60))
    {
      sub_23C39D450(byte_27E1F3E78, "<xmlattr>");
      __cxa_atexit(MEMORY[0x277D82640], byte_27E1F3E78, &dword_23C368000);
      __cxa_guard_release(&qword_27E1F3E60);
    }

    if (byte_27E1F3E78[23] < 0)
    {
      sub_23C36FB58(&__p, *byte_27E1F3E78, *&byte_27E1F3E78[8]);
    }

    else
    {
      __p = *byte_27E1F3E78;
    }

    v102 = 46;
    v32 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = __p.__r_.__value_.__r.__words[0];
    }

    v103 = v32;
    sub_23C394868(&v104, a3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v33 = v104;
      if (!v104)
      {
        goto LABEL_100;
      }
    }

    else
    {
      v33 = v104;
      if (!v104)
      {
        goto LABEL_100;
      }
    }

    v34 = *(*(v33 + 24) + 8);
    v35 = *(v34 + 88);
    if (v35)
    {
      v36 = v35 - 80;
    }

    else
    {
      v36 = 0;
    }

    if (v36 != v34)
    {
      while (2)
      {
        __p.__r_.__value_.__s.__data_[0] = 32;
        v38 = sub_23C372684(a1, &__p, 1);
        v39 = *(v36 + 23);
        if (v39 >= 0)
        {
          v40 = v36;
        }

        else
        {
          v40 = *v36;
        }

        if (v39 >= 0)
        {
          v41 = *(v36 + 23);
        }

        else
        {
          v41 = *(v36 + 8);
        }

        v42 = sub_23C372684(v38, v40, v41);
        __p.__r_.__value_.__s.__data_[0] = 61;
        v43 = sub_23C372684(v42, &__p, 1);
        __p.__r_.__value_.__s.__data_[0] = 34;
        v44 = sub_23C372684(v43, &__p, 1);
        sub_23C39D568(v99, (v36 + 24));
        sub_23C39F78C(&__p, v99);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &__p;
        }

        else
        {
          v45 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v47 = sub_23C372684(v44, v45, size);
        v105 = 34;
        sub_23C372684(v47, &v105, 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v100 < 0)
          {
            goto LABEL_99;
          }
        }

        else if (v100 < 0)
        {
LABEL_99:
          operator delete(v99[0]);
        }

        v37 = *(v36 + 88);
        if (v37)
        {
          v36 = v37 - 80;
        }

        else
        {
          v36 = 0;
        }

        if (v36 == *(*(v33 + 24) + 8))
        {
          break;
        }

        continue;
      }
    }

LABEL_100:
    if (v98)
    {
      __p.__r_.__value_.__s.__data_[0] = 47;
      v48 = sub_23C372684(a1, &__p, 1);
      __p.__r_.__value_.__s.__data_[0] = 62;
      sub_23C372684(v48, &__p, 1);
      if (v14)
      {
        goto LABEL_102;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 62;
      sub_23C372684(a1, &__p, 1);
      v91 = v97;
      if (!v14)
      {
        v91 = 0;
      }

      if (v91 == 1)
      {
LABEL_102:
        __p.__r_.__value_.__s.__data_[0] = 10;
        sub_23C372684(a1, &__p, 1);
      }
    }
  }

  v49 = *(a3 + 23);
  if ((v49 & 0x80u) != 0)
  {
    v49 = *(a3 + 8);
  }

  if (v49)
  {
    sub_23C39D568(&__p, a3);
    v50 = v14 ? v97 : 0;
    sub_23C39FE1C(a1, &__p, a4 + 1, v50, *a5, *(a5 + 1));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v51 = *(*(a3 + 24) + 8);
  v52 = *(v51 + 88);
  if (v52)
  {
    v53 = v52 - 80;
  }

  else
  {
    v53 = 0;
  }

  if (v53 != v51)
  {
    v54 = v97;
    if (!v14)
    {
      v54 = 0;
    }

    v96 = v54;
    while (1)
    {
      if ((atomic_load_explicit(&qword_27E1F3E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E60))
      {
        sub_23C39D450(byte_27E1F3E78, "<xmlattr>");
        __cxa_atexit(MEMORY[0x277D82640], byte_27E1F3E78, &dword_23C368000);
        __cxa_guard_release(&qword_27E1F3E60);
      }

      v56 = *(v53 + 23);
      if (v56 >= 0)
      {
        v57 = *(v53 + 23);
      }

      else
      {
        v57 = *(v53 + 8);
      }

      v58 = byte_27E1F3E78[23];
      if (byte_27E1F3E78[23] < 0)
      {
        v58 = *&byte_27E1F3E78[8];
      }

      if (v57 == v58)
      {
        v59 = v56 >= 0 ? v53 : *v53;
        v60 = byte_27E1F3E78[23] >= 0 ? byte_27E1F3E78 : *byte_27E1F3E78;
        if (!memcmp(v59, v60, v57))
        {
          goto LABEL_119;
        }
      }

      if ((atomic_load_explicit(&qword_27E1F3E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E70))
      {
        sub_23C39D450(&xmmword_27E1F3EA8, "<xmlcomment>");
        __cxa_atexit(MEMORY[0x277D82640], &xmmword_27E1F3EA8, &dword_23C368000);
        __cxa_guard_release(&qword_27E1F3E70);
      }

      v61 = *(v53 + 23);
      if (v61 >= 0)
      {
        v62 = *(v53 + 23);
      }

      else
      {
        v62 = *(v53 + 8);
      }

      v63 = byte_27E1F3EBF;
      if (byte_27E1F3EBF < 0)
      {
        v63 = *(&xmmword_27E1F3EA8 + 1);
      }

      if (v62 == v63)
      {
        v64 = v61 >= 0 ? v53 : *v53;
        v65 = byte_27E1F3EBF >= 0 ? &xmmword_27E1F3EA8 : xmmword_27E1F3EA8;
        if (!memcmp(v64, v65, v62))
        {
          break;
        }
      }

      if ((atomic_load_explicit(&qword_27E1F3E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3E68))
      {
        sub_23C39D450(&xmmword_27E1F3E90, "<xmltext>");
        __cxa_atexit(MEMORY[0x277D82640], &xmmword_27E1F3E90, &dword_23C368000);
        __cxa_guard_release(&qword_27E1F3E68);
      }

      v66 = *(v53 + 23);
      if (v66 >= 0)
      {
        v67 = *(v53 + 23);
      }

      else
      {
        v67 = *(v53 + 8);
      }

      v68 = byte_27E1F3EA7;
      if (byte_27E1F3EA7 < 0)
      {
        v68 = *(&xmmword_27E1F3E90 + 1);
      }

      if (v67 == v68)
      {
        v69 = v66 >= 0 ? v53 : *v53;
        v70 = byte_27E1F3EA7 >= 0 ? &xmmword_27E1F3E90 : xmmword_27E1F3E90;
        if (!memcmp(v69, v70, v67))
        {
          sub_23C39D568(&__p, (v53 + 24));
          sub_23C39FE1C(a1, &__p, a4 + 1, v96, *a5, *(a5 + 1));
          goto LABEL_181;
        }
      }

      sub_23C39E9B8(a1, v53, v53 + 24, a4 + 1, a5);
LABEL_119:
      v55 = *(v53 + 88);
      if (v55)
      {
        v53 = v55 - 80;
      }

      else
      {
        v53 = 0;
      }

      if (v53 == *(*(a3 + 24) + 8))
      {
        goto LABEL_189;
      }
    }

    sub_23C39D568(&__p, (v53 + 24));
    if (v14)
    {
      sub_23C39F66C(a1, a4 + 1, *a5, *(a5 + 1));
      LOBYTE(v99[0]) = 60;
      v71 = sub_23C372684(a1, v99, 1);
      LOBYTE(v99[0]) = 33;
      v72 = sub_23C372684(v71, v99, 1);
      LOBYTE(v99[0]) = 45;
      v73 = sub_23C372684(v72, v99, 1);
      LOBYTE(v99[0]) = 45;
      sub_23C372684(v73, v99, 1);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = &__p;
      }

      else
      {
        v74 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v75 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v75 = __p.__r_.__value_.__l.__size_;
      }

      sub_23C372684(a1, v74, v75);
      LOBYTE(v99[0]) = 45;
      v76 = sub_23C372684(a1, v99, 1);
      LOBYTE(v99[0]) = 45;
      v77 = sub_23C372684(v76, v99, 1);
      LOBYTE(v99[0]) = 62;
      sub_23C372684(v77, v99, 1);
      LOBYTE(v99[0]) = 10;
      sub_23C372684(a1, v99, 1);
    }

    else
    {
      LOBYTE(v99[0]) = 60;
      v78 = sub_23C372684(a1, v99, 1);
      LOBYTE(v99[0]) = 33;
      v79 = sub_23C372684(v78, v99, 1);
      LOBYTE(v99[0]) = 45;
      v80 = sub_23C372684(v79, v99, 1);
      LOBYTE(v99[0]) = 45;
      sub_23C372684(v80, v99, 1);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v81 = &__p;
      }

      else
      {
        v81 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v82 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v82 = __p.__r_.__value_.__l.__size_;
      }

      sub_23C372684(a1, v81, v82);
      LOBYTE(v99[0]) = 45;
      v83 = sub_23C372684(a1, v99, 1);
      LOBYTE(v99[0]) = 45;
      v84 = sub_23C372684(v83, v99, 1);
      LOBYTE(v99[0]) = 62;
      sub_23C372684(v84, v99, 1);
    }

LABEL_181:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_119;
  }

LABEL_189:
  if (a4 >= 0 && !v98)
  {
    if (v97)
    {
      sub_23C39F66C(a1, a4, *a5, *(a5 + 1));
    }

    __p.__r_.__value_.__s.__data_[0] = 60;
    v85 = sub_23C372684(a1, &__p, 1);
    __p.__r_.__value_.__s.__data_[0] = 47;
    v86 = sub_23C372684(v85, &__p, 1);
    v87 = *(a2 + 23);
    if (v87 >= 0)
    {
      p_p = a2;
    }

    else
    {
      p_p = *a2;
    }

    if (v87 >= 0)
    {
      v89 = *(a2 + 23);
    }

    else
    {
      v89 = *(a2 + 8);
    }

LABEL_198:
    v90 = sub_23C372684(v86, p_p, v89);
    __p.__r_.__value_.__s.__data_[0] = 62;
    sub_23C372684(v90, &__p, 1);
    if (v14)
    {
      __p.__r_.__value_.__s.__data_[0] = 10;
      sub_23C372684(a1, &__p, 1);
    }
  }
}

void sub_23C39F618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C39F66C(void *a1, int a2, int __c, uint64_t a4)
{
  v4 = a2 * a4;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = a2 * a4;
  if (v4)
  {
    memset(__b, __c, v4);
  }

  *(__b + v4) = 0;
  if ((v9 & 0x80u) == 0)
  {
    v6 = __b;
  }

  else
  {
    v6 = __b[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = __b[1];
  }

  sub_23C372684(a1, v6, v7);
  if (v9 < 0)
  {
    operator delete(__b[0]);
  }
}

void sub_23C39F770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C39F78C(std::string *this, unsigned __int8 *a2)
{
  v2 = this;
  v3 = a2[23];
  if (v3 < 0)
  {
    v5 = *(a2 + 1);
    if (!v5)
    {
      v28 = *a2;

      sub_23C36FB58(this, v28, 0);
      return;
    }

    *&this->__r_.__value_.__l.__data_ = 0uLL;
    this->__r_.__value_.__r.__words[2] = 0;
    v4 = *a2;
  }

  else
  {
    if (!a2[23])
    {
      *this = *a2;
      return;
    }

    *&this->__r_.__value_.__l.__data_ = 0uLL;
    v4 = a2;
    v5 = v3;
    this->__r_.__value_.__r.__words[2] = 0;
  }

  v6 = 0;
  v30 = this;
  while (v4[v6] == 32)
  {
    if (v5 == ++v6)
    {
      goto LABEL_65;
    }
  }

  if (v6 == -1)
  {
LABEL_65:
    v24 = *(a2 + 1);
    LODWORD(this->__r_.__value_.__l.__data_) = 842212134;
    this->__r_.__value_.__s.__data_[4] = 59;
    *(this->__r_.__value_.__r.__words + 5) = 0uLL;
    *(&this->__r_.__value_.__r.__words[2] + 5) = 0;
    *(&this->__r_.__value_.__s + 23) = 5;
    if (v3 < 0)
    {
      v3 = v24;
    }

    v25 = v3 - 1;
    if ((v3 - 1) > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    if (v25 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v33) = v3 - 1;
    if (v3 != 1)
    {
      memset(__s, 32, v25);
    }

    __s[v25] = 0;
    if (v33 >= 0)
    {
      v26 = __s;
    }

    else
    {
      v26 = *__s;
    }

    if (v33 >= 0)
    {
      v27 = HIBYTE(v33);
    }

    else
    {
      v27 = v32;
    }

    std::string::append(v2, v26, v27);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(*__s);
    }
  }

  else
  {
    if (v3 >= 0)
    {
      v7 = &a2[v3];
    }

    else
    {
      v7 = (*a2 + *(a2 + 1));
    }

    if (v3 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v8 != v7)
    {
      v29 = v7;
      do
      {
        v9 = *v8;
        if (v9 <= 0x26)
        {
          if (v9 == 34)
          {
            *__s = 0;
            v32 = 0;
            v16 = 38;
            v17 = 1u;
            v33 = 0;
            do
            {
              if (SHIBYTE(v33) < 0)
              {
                v21 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v32 == v21)
                {
                  if ((v33 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                  {
                    sub_23C36FA14();
                  }

LABEL_48:
                  operator new();
                }

                v19 = *__s;
                v18 = v32++;
              }

              else
              {
                if (HIBYTE(v33) == 22)
                {
                  goto LABEL_48;
                }

                v18 = HIBYTE(v33);
                HIBYTE(v33) = (HIBYTE(v33) + 1) & 0x7F;
                v19 = __s;
              }

              v20 = &v19[v18];
              *v20 = v16;
              v20[1] = 0;
              v16 = aQuot[v17++];
            }

            while (v17 != 7);
            if (v33 >= 0)
            {
              v22 = __s;
            }

            else
            {
              v22 = *__s;
            }

            if (v33 >= 0)
            {
              v23 = HIBYTE(v33);
            }

            else
            {
              v23 = v32;
            }

LABEL_62:
            v2 = v30;
            std::string::append(v30, v22, v23);
            v7 = v29;
LABEL_63:
            if (SHIBYTE(v33) < 0)
            {
              operator delete(*__s);
            }

            goto LABEL_20;
          }

          if (v9 == 38)
          {
            v33 = 0x500000000000000;
            strcpy(__s, "&amp;");
            *&__s[6] = 0;
            v32 = 0;
            std::string::append(v2, __s, 5uLL);
            goto LABEL_63;
          }
        }

        else
        {
          switch(v9)
          {
            case '\'':
              *__s = 0;
              v32 = 0;
              v10 = 38;
              v11 = 1u;
              v33 = 0;
              do
              {
                if (SHIBYTE(v33) < 0)
                {
                  v15 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  if (v32 == v15)
                  {
                    if ((v33 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                    {
                      sub_23C36FA14();
                    }

LABEL_37:
                    operator new();
                  }

                  v13 = *__s;
                  v12 = v32++;
                }

                else
                {
                  if (HIBYTE(v33) == 22)
                  {
                    goto LABEL_37;
                  }

                  v12 = HIBYTE(v33);
                  HIBYTE(v33) = (HIBYTE(v33) + 1) & 0x7F;
                  v13 = __s;
                }

                v14 = &v13[v12];
                *v14 = v10;
                v14[1] = 0;
                v10 = aApos[v11++];
              }

              while (v11 != 7);
              if (v33 >= 0)
              {
                v22 = __s;
              }

              else
              {
                v22 = *__s;
              }

              if (v33 >= 0)
              {
                v23 = HIBYTE(v33);
              }

              else
              {
                v23 = v32;
              }

              goto LABEL_62;
            case '>':
              v32 = 0;
              v33 = 0x400000000000000;
              __s[5] = 0;
              *&__s[6] = 0;
              strcpy(__s, "&gt;");
              std::string::append(v2, __s, 4uLL);
              goto LABEL_63;
            case '<':
              v32 = 0;
              v33 = 0x400000000000000;
              __s[5] = 0;
              *&__s[6] = 0;
              strcpy(__s, "&lt;");
              std::string::append(v2, __s, 4uLL);
              goto LABEL_63;
          }
        }

        std::string::push_back(v2, v9);
LABEL_20:
        ++v8;
      }

      while (v8 != v7);
    }
  }
}

void sub_23C39FD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((*(a17 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(a17 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*a17);
  _Unwind_Resume(exception_object);
}

void sub_23C39FE1C(void *a1, unsigned __int8 *a2, int a3, int a4, int __c, uint64_t a6)
{
  if (a4)
  {
    v8 = a2;
    sub_23C39F66C(a1, a3, __c, a6);
    a2 = v8;
  }

  sub_23C39F78C(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_23C372684(a1, p_p, size);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!a4)
    {
      return;
    }

LABEL_13:
    __p.__r_.__value_.__s.__data_[0] = 10;
    sub_23C372684(a1, &__p, 1);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (a4)
  {
    goto LABEL_13;
  }
}

void sub_23C39FEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

sqlite3 **sub_23C39FEFC(sqlite3 **a1, char *filename)
{
  v2 = filename;
  *a1 = 0;
  ppDb = 0;
  if (filename[23] < 0)
  {
    if (!*(filename + 1))
    {
      return a1;
    }

    v2 = *filename;
  }

  else if (!filename[23])
  {
    return a1;
  }

  if (sqlite3_open_v2(v2, &ppDb, 65, 0))
  {
    if (ppDb)
    {
      sqlite3_close_v2(ppDb);
    }
  }

  else
  {
    v4 = *a1;
    *a1 = ppDb;
    if (v4)
    {
      sqlite3_close_v2(v4);
    }
  }

  return a1;
}

sqlite3 **sub_23C39FFA8(sqlite3 **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sqlite3_close_v2(v2);
  }

  return a1;
}

sqlite3 ***sub_23C39FFE0(sqlite3 ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      sqlite3_close_v2(v3);
    }

    MEMORY[0x23EECF470](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

const __CFString *sub_23C3A003C@<X0>(const __CFString *result@<X0>, std::string *a2@<X8>)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v3 = result;
  TypeID = CFStringGetTypeID();
  result = CFGetTypeID(v3);
  if (result != TypeID)
  {
    goto LABEL_9;
  }

  result = CFStringGetLength(v3);
  if (result)
  {
    v5 = result;
    usedBufLen = 0;
    v10.location = 0;
    v10.length = result;
    result = CFStringGetBytes(v3, v10, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    if (result > 0)
    {
      memset(&v8, 0, sizeof(v8));
      if (usedBufLen)
      {
        std::string::append(&v8, usedBufLen, 0);
        v6 = usedBufLen;
        if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v8;
        }

        else
        {
          v7 = v8.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v6 = 0;
        v7 = &v8;
      }

      v11.location = 0;
      v11.length = v5;
      result = CFStringGetBytes(v3, v11, 0x8000100u, 0, 0, v7, v6, 0);
      *a2 = v8;
      goto LABEL_13;
    }

LABEL_9:
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    return result;
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
LABEL_13:
  a2[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void sub_23C3A017C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A02B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_23C36EB4C(v15);
    _Unwind_Resume(a1);
  }

  sub_23C36EB4C(v15);
  _Unwind_Resume(a1);
}

void sub_23C3A0328(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EECF470);
}

void sub_23C3A0360(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23C3A0384(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23C3A0504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_23C36EB4C(v15);
    _Unwind_Resume(a1);
  }

  sub_23C36EB4C(v15);
  _Unwind_Resume(a1);
}

void sub_23C3A0574(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EECF470);
}

void sub_23C3A05AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23C3A05D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

const void *sub_23C3A0638(const void **a1)
{
  result = *a1;
  if (result)
  {
    return CFGetTypeID(result);
  }

  return result;
}

BOOL sub_23C3A0648(const void **a1, const void *a2)
{
  v3 = *a1;
  if (v3)
  {
    v3 = CFGetTypeID(v3);
  }

  return v3 == a2;
}

void sub_23C3A067C()
{
  Default = CFAllocatorGetDefault();
  Mutable = CFDataCreateMutable(Default, 0);
  sub_23C3A0828(&v5, Mutable);
}

void sub_23C3A0948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_23C36EB4C(v15);
    _Unwind_Resume(a1);
  }

  sub_23C36EB4C(v15);
  _Unwind_Resume(a1);
}

void sub_23C3A09B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EECF470);
}

void sub_23C3A09F0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23C3A0A14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP8__CFDataEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP8__CFDataEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP8__CFDataEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP8__CFDataEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23C3A0A74(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_23C3A0A74(a1, *a2);
    sub_23C3A0A74(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void sub_23C3A0C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_23C36EB4C(v15);
    _Unwind_Resume(a1);
  }

  sub_23C36EB4C(v15);
  _Unwind_Resume(a1);
}

void sub_23C3A0C88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EECF470);
}

void sub_23C3A0CC0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23C3A0CE4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23C3A1438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_23C36EB4C(&a9);
  _Unwind_Resume(a1);
}

void sub_23C3A1468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  sub_23C36EB4C(va);
  sub_23C36EB4C(va1);
  sub_23C36EB4C(va2);
  _Unwind_Resume(a1);
}

void sub_23C3A148C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_23C36EB4C(va);
  _Unwind_Resume(a1);
}

void sub_23C3A14A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_23C36EB4C(va);
  sub_23C36EB4C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_23C3A14BC(uint64_t *a1, const void *a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v9 = a3;
    (v3->__on_zero_shared)(v3, a2);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v9;
    if (v4)
    {
LABEL_4:
      v5 = *(a3 + 23);
      if (v5 >= 0)
      {
        v6 = a3;
      }

      else
      {
        v6 = *a3;
      }

      if (v5 >= 0)
      {
        v7 = *(a3 + 23);
      }

      else
      {
        v7 = *(a3 + 8);
      }

      v8 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v6, v7, 0x8000100u, 0);
      sub_23C36C324(&v11, v8);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_23C3A16DC(uint64_t a1, const std::error_condition *a2, void **a3, const __CFAllocator *a4)
{
  *&__dst.__r_.__value_.__r.__words[1] = 0uLL;
  __dst.__r_.__value_.__r.__words[0] = &__dst.__r_.__value_.__l.__size_;
  sub_23C3A0D44();
}

void sub_23C3A1CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_23C36EB4C(va);
  sub_23C36EB4C(va1);
  _Unwind_Resume(a1);
}

void sub_23C3A1D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_23C36EB4C(va);
  _Unwind_Resume(a1);
}

void sub_23C3A1D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_23C36EB4C(&a18);
  _Unwind_Resume(a1);
}

void sub_23C3A1DC4(const void **a1, CFTypeRef *a2)
{
  if (a2)
  {
    if (*a2)
    {
      CFRelease(*a2);
    }

    *a2 = 0;
    v4 = *a1;
    if (v4)
    {
      CFRetain(v4);
    }

    *a2 = v4;
  }
}

void sub_23C3A1E14()
{
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  sub_23C3A0D44();
}

void sub_23C3A1F34(void *a1, CFTypeRef cf, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (cf)
  {
    v3 = cf;
    CFRetain(cf);
    cf = v3;
  }

  sub_23C3A0AF8(&v4, cf);
}

void sub_23C3A2180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_23C36EB4C(v15);
    _Unwind_Resume(a1);
  }

  sub_23C36EB4C(v15);
  _Unwind_Resume(a1);
}

void sub_23C3A21F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EECF470);
}

void sub_23C3A2228(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23C3A224C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP9__CFErrorEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23C3A22B4(CFTypeID a1, CFTypeID a2)
{
  if (a1 == a2 && sub_23C3A46B0("/Library/Caches/com.apple.xbs/Sources/ACCBaker/library/Kit/Foundation/src/Ptr.cpp", 0x26u, "expected != found", 17, &unk_23C3DB41A, 0, sub_23C3A4EB4))
  {
    abort();
  }

  sub_23C3A284C(&v11, a1);
  sub_23C3A284C(&__p, a2);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = __p.__r_.__value_.__l.__size_;
  }

  v6 = "Are you wrapping a CFTypeRef from an other type ?";
  if (size == v5)
  {
    v7 = (v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v11 : v11.__r_.__value_.__r.__words[0];
    v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    if (!memcmp(v7, v8, size))
    {
      v6 = "Are you wrapping the same type from different static context ?";
    }
  }

  v9 = strlen(v6);
  v12[23] = 16;
  strcpy(v12, "Runtime type ID ");
  v13 = 1;
  v15 = v12;
  p_p = &__p;
  v17 = v12;
  p_dst = &__p;
  v19 = &__p;
  sub_23C371820(&v17, v12);
  v15 = v12;
  p_p = " (";
  v17 = v12;
  p_dst = " (";
  v19 = " (";
  if (v13 == -1)
  {
    sub_23C370930();
  }

  __dst.__r_.__value_.__r.__words[0] = &v15;
  (*(&off_284F01E78 + v13))(&__dst, v12);
  std::to_string(&__dst, a2);
  v15 = v12;
  p_p = &__dst;
  v17 = v12;
  p_dst = &__dst;
  v19 = &__dst;
  if (v13 == -1)
  {
    sub_23C370930();
  }

  v20 = &v15;
  (off_284F01E90[v13])(&v20, v12);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v15 = v12;
  p_p = ") does not match the expected compile time type ID ";
  v17 = v12;
  p_dst = ") does not match the expected compile time type ID ";
  v19 = ") does not match the expected compile time type ID ";
  if (v13 == -1)
  {
    sub_23C370930();
  }

  __dst.__r_.__value_.__r.__words[0] = &v15;
  (off_284F01EA8[v13])(&__dst, v12);
  v15 = v12;
  p_p = &v11;
  v17 = v12;
  p_dst = &v11;
  v19 = &v11;
  if (v13 == -1)
  {
    sub_23C370930();
  }

  __dst.__r_.__value_.__r.__words[0] = &v15;
  (off_284F01E60[v13])(&__dst, v12);
  v15 = v12;
  p_p = " (";
  v17 = v12;
  p_dst = " (";
  v19 = " (";
  if (v13 == -1)
  {
    sub_23C370930();
  }

  __dst.__r_.__value_.__r.__words[0] = &v15;
  (*(&off_284F01E78 + v13))(&__dst, v12);
  std::to_string(&__dst, a1);
  v15 = v12;
  p_p = &__dst;
  v17 = v12;
  p_dst = &__dst;
  v19 = &__dst;
  if (v13 == -1)
  {
    sub_23C370930();
  }

  v20 = &v15;
  (off_284F01E90[v13])(&v20, v12);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v15 = v12;
  p_p = ") : ";
  v17 = v12;
  p_dst = ") : ";
  v19 = ") : ";
  if (v13 == -1)
  {
    sub_23C370930();
  }

  __dst.__r_.__value_.__r.__words[0] = &v15;
  (*(&off_284F01EC0 + v13))(&__dst, v12);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    memcpy(&__dst, v6, v9);
  }

  __dst.__r_.__value_.__s.__data_[v9] = 0;
  v15 = v12;
  p_p = &__dst;
  v17 = v12;
  p_dst = &__dst;
  v19 = &__dst;
  if (v13 == -1)
  {
    sub_23C370930();
  }

  v20 = &v15;
  (off_284F01E90[v13])(&v20, v12);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v13 == -1)
  {
    sub_23C370930();
  }

  v15 = &__dst;
  (off_284F01ED8[v13])(&v15, v12);
  if (v13 != -1)
  {
    (off_284F01E48[v13])(&v15, v12);
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_44:
    operator delete(v11.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_44;
  }
}

void sub_23C3A2794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_23C372FE8(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_6:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_23C3A284C(std::string *a1, CFTypeID type_id)
{
  v3 = CFCopyTypeIDDescription(type_id);
  sub_23C36C324(&v8, v3);
  v5 = v8;
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = v9;
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }
  }

  sub_23C3A003C(v5, &v7);
  *a1 = v7;
  memset(&v7, 0, sizeof(v7));
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

size_t sub_23C3A2978(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_284F01E48[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23C3A2A6C(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_284F01E48[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23C370B40(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_23C3A2C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A2C88(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23C36C1E0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23C36C8AC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23C3A2EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

void sub_23C3A2EE4(int a1, unint64_t a2, unint64_t a3)
{
  v3 = &unk_23C3DB41A;
  if (a1 == 12)
  {
    v3 = " (ENOMEM)";
  }

  v4 = v3;
  v5 = -1;
  operator new();
}

void sub_23C3A3228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A3244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23C372FE8(va);
  _Unwind_Resume(a1);
}

void sub_23C3A3258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23C372FE8(va);
  _Unwind_Resume(a1);
}

void sub_23C3A326C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_23C372FE8(&a14);
  _Unwind_Resume(a1);
}

void sub_23C3A32E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23C372FE8(va);
  _Unwind_Resume(a1);
}

void sub_23C3A32FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23C372FE8(va);
  _Unwind_Resume(a1);
}

size_t sub_23C3A3310(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_284F01EF0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23C3A3404(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_284F01EF0[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23C370B40(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_23C3A35C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A3620(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23C36C1E0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23C36C8AC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23C3A3860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

size_t sub_23C3A387C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_284F01EF0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23C3A3970(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_284F01EF0[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23C370B40(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_23C3A3B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A3B8C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23C36C1E0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23C36C8AC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23C3A3DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

void sub_23C3A3DF4(uint64_t *a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v17 + 7) = *(a2 + 15);
  v5 = *a2;
  v17[0] = *(a2 + 8);
  v4 = v17[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v12 = v5;
  *v13 = v4;
  *&v13[7] = *(v17 + 7);
  v14 = v6;
  memset(v17, 0, 15);
  v7 = **(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_284F01EF0[v10])(&v11, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23C370B40(v3, &v12, 2uLL);
  *(v3 + 24) = 2;
  if ((v16 & 0x80000000) == 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v12);
    return;
  }

  operator delete(__p);
  if (v14 < 0)
  {
    goto LABEL_13;
  }
}

void sub_23C3A3FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A4014(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23C36C1E0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23C36C8AC();
    }

    v14 = (8 * (&v5[-*a2] >> 3));
    v21 = v14;
    v22 = v14;
    v15 = *v3;
    v16 = strlen(*v3);
    if (v16 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    v14[23] = v16;
    if (v16)
    {
      memmove(v14, v15, v16);
    }

    v14[v17] = 0;
    v13 = v14 + 24;
    v18 = *(a2 + 8) - *a2;
    v19 = &v14[-v18];
    memcpy(&v21[-v18], *a2, v18);
    v20 = *a2;
    *a2 = v19;
    *(a2 + 8) = v22 + 24;
    *(a2 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *v3;
    v7 = strlen(v6);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    v5[23] = v7;
    if (v7)
    {
      memmove(v5, v6, v7);
    }

    v5[v8] = 0;
    v13 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v13;
}

void sub_23C3A425C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

void sub_23C3A4278(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2[1];
  __p = 0;
  v29 = 0;
  v30 = 0;
  v7 = v6 - 1;
  if (v6 != 1)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  sub_23C37E91C(a1, &__p, &v31);
  if (__p)
  {
    operator delete(__p);
  }

  v8 = *(a1 + 8);
  v9 = v31;
  if (v8)
  {
    v10 = 0;
    v11 = *a2;
    do
    {
      if ((*&v9[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v10))
      {
        v12 = a2[1];
        if (v12)
        {
          for (i = 0; i != v12; ++i)
          {
            v14 = ((v10 + i) >> 3) & 0x1FFFFFFFFFFFFFF8;
            v15 = 1 << (v10 + i);
            v16 = *&v9[v14];
            v17 = (v15 & v16) != 0;
            v18 = v16 & ~v15;
            v19 = v15 | v16;
            if ((((*(v11 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) ^ v17) & 1) == 0)
            {
              v19 = v18;
            }

            *&v9[v14] = v19;
          }
        }
      }

      ++v10;
    }

    while (v10 != v8);
  }

  v20 = v32;
  if (v32 >= v7)
  {
    v21 = v7;
  }

  else
  {
    v21 = v32;
  }

  v22 = v32 - v21;
  if (v22 < 0)
  {
    v24 = v22 - 63;
    if (v22 - 63 < 0)
    {
      v24 = v22;
    }

    v23 = v24 >> 6;
  }

  else
  {
    v23 = v22 >> 6;
  }

  v25 = 8 * v23;
  v26 = (v32 >> 3) & 0x1FFFFFFFFFFFFFF8;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v27 = v22 & 0x3F;
  __p = &v9[v25];
  LODWORD(v29) = v27;
  v33 = &v9[v26];
  v34 = v20 & 0x3F;
  sub_23C377DC4(a3, &__p, &v33, (v20 & 0x3F) - v27 + 8 * (v26 - v25));
  if (v31)
  {
    operator delete(v31);
  }
}

void sub_23C3A4498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23C3A44C0(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[6];
    if (v3)
    {
      v1[7] = v3;
      operator delete(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      v1[4] = v4;
      operator delete(v4);
    }

    MEMORY[0x23EECF470](v1, 0x1010C40DA3B4497);
    return v2;
  }

  return result;
}

void sub_23C3A45F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a12)
  {
    JUMPOUT(0x23C3A459CLL);
  }

  JUMPOUT(0x23C3A4578);
}

void *sub_23C3A461C(void *a1)
{
  if (a1[3])
  {
    v2 = a1 + 1;
    v3 = a1[2];
    v4 = *(a1[1] + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    a1[3] = 0;
    if (v3 != a1 + 1)
    {
      do
      {
        v7 = v3[1];
        v8 = v3[6];
        if (v8)
        {
          v3[7] = v8;
          operator delete(v8);
        }

        v9 = v3[3];
        if (v9)
        {
          v3[4] = v9;
          operator delete(v9);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  return a1;
}

uint64_t sub_23C3A46B0(const char *a1, unsigned int a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, void (*a7)(void **))
{
  v67 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E1F3EC0, memory_order_acquire) & 1) == 0)
  {
    v36 = a2;
    v37 = __cxa_guard_acquire(&qword_27E1F3EC0);
    a2 = v36;
    if (v37)
    {
      __cxa_atexit(sub_23C3A4FF8, &qword_27E1F3ED8, &dword_23C368000);
      __cxa_guard_release(&qword_27E1F3EC0);
      a2 = v36;
    }
  }

  if ((byte_27E1F3F00 & 1) == 0)
  {
    v38 = a2;
    v12 = &byte_23C3C40FD[65283];
    if (!a4)
    {
      v46 = 0;
      LOBYTE(v45[0]) = 0;
      if (a6)
      {
LABEL_10:
        v53 = a6;
        v54 = 13;
        v51 = 13;
        v52 = a5;
        v61 = v65;
        v62 = xmmword_23C3D4F60;
        v63 = sub_23C3A5034;
        v64 = 0;
        __p = v65;
        v49 = 1;
        v50 = &v52;
        sub_23C3A50D8(&v61, " : {}", 5, &v49);
        v15 = *(&v62 + 1);
        if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
          sub_23C36FA14();
        }

        if (*(&v62 + 1) >= 0x17uLL)
        {
          operator new();
        }

        v44 = BYTE8(v62);
        if (*(&v62 + 1))
        {
          memmove(v43, __p, *(&v62 + 1));
          *(v43 + v15) = 0;
          v16 = __p;
          if (__p == v65)
          {
            goto LABEL_15;
          }
        }

        else
        {
          LOBYTE(v43[0]) = 0;
          v16 = __p;
          if (__p == v65)
          {
LABEL_15:
            LODWORD(v17) = v44;
            v12 = byte_23C3C40FD + 65283;
            goto LABEL_18;
          }
        }

        operator delete(v16);
        goto LABEL_15;
      }

LABEL_17:
      LODWORD(v17) = 0;
      v44 = 0;
      LOBYTE(v43[0]) = 0;
LABEL_18:
      v52 = a1;
      v54 = v38;
      v55 = 0;
      v18 = v46;
      if ((v46 & 0x80u) != 0)
      {
        v18 = v45[1];
      }

      v19 = v45;
      if ((v46 & 0x80u) != 0)
      {
        v19 = v45[0];
      }

      v56 = v19;
      v57 = v18;
      v20 = v43[0];
      v21 = (v17 & 0x80u) != 0;
      v17 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = v43[1];
      }

      if (!v21)
      {
        v20 = v43;
      }

      v59 = v17;
      v60 = 439404;
      v58 = v20;
      v61 = v65;
      v39 = *(v12 + 246);
      v62 = v39;
      v63 = sub_23C3A5034;
      v64 = 0;
      __p = v65;
      v49 = 4;
      v50 = &v52;
      v51 = 439404;
      sub_23C3A50D8(&v61, "{}:{}{}{}\n", 10, &v49);
      v22 = *(&v62 + 1);
      if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
        sub_23C36FA14();
      }

      if (*(&v62 + 1) >= 0x17uLL)
      {
        operator new();
      }

      v48 = BYTE8(v62);
      if (*(&v62 + 1))
      {
        memmove(__dst, __p, *(&v62 + 1));
        *(__dst + v22) = 0;
        v23 = __p;
        if (__p == v65)
        {
LABEL_31:
          v24 = "Assert";
          v25 = v48;
          if (!a4)
          {
            v24 = "Abort";
          }

          if ((v48 & 0x80u) != 0)
          {
            v25 = __dst[1];
          }

          v55 = v25;
          v56 = 428;
          v26 = __dst;
          if ((v48 & 0x80u) != 0)
          {
            v26 = __dst[0];
          }

          v51 = 428;
          v52 = v24;
          v54 = v26;
          v61 = v65;
          v62 = v39;
          v63 = sub_23C3A5034;
          v64 = 0;
          __p = v65;
          v49 = 2;
          v50 = &v52;
          sub_23C3A50D8(&v61, "{}: {}", 6, &v49);
          v27 = *(&v62 + 1);
          if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
          {
            sub_23C36FA14();
          }

          if (*(&v62 + 1) >= 0x17uLL)
          {
            operator new();
          }

          v42 = BYTE8(v62);
          if (*(&v62 + 1))
          {
            memmove(&v41, __p, *(&v62 + 1));
            *(&v41 + v27) = 0;
            v28 = __p;
            if (__p == v65)
            {
LABEL_42:
              if (v48 < 0)
              {
                operator delete(__dst[0]);
                if ((v44 & 0x80000000) == 0)
                {
LABEL_44:
                  if ((v46 & 0x80000000) == 0)
                  {
                    goto LABEL_45;
                  }

LABEL_67:
                  operator delete(v45[0]);
LABEL_45:
                  if (v42 >= 0)
                  {
                    v29 = &v41;
                  }

                  else
                  {
                    v29 = v41;
                  }

                  a7(v29);
                  if (v42 < 0)
                  {
                    operator delete(v41);
                  }

                  goto LABEL_50;
                }
              }

              else if ((v44 & 0x80000000) == 0)
              {
                goto LABEL_44;
              }

              operator delete(v43[0]);
              if ((v46 & 0x80000000) == 0)
              {
                goto LABEL_45;
              }

              goto LABEL_67;
            }
          }

          else
          {
            LOBYTE(v41) = 0;
            v28 = __p;
            if (__p == v65)
            {
              goto LABEL_42;
            }
          }

          operator delete(v28);
          goto LABEL_42;
        }
      }

      else
      {
        LOBYTE(__dst[0]) = 0;
        v23 = __p;
        if (__p == v65)
        {
          goto LABEL_31;
        }
      }

      operator delete(v23);
      goto LABEL_31;
    }

    v53 = a4;
    v54 = 13;
    v51 = 13;
    v52 = a3;
    v61 = v65;
    v62 = xmmword_23C3D4F60;
    v63 = sub_23C3A5034;
    v64 = 0;
    __p = v65;
    v49 = 1;
    v50 = &v52;
    sub_23C3A50D8(&v61, " : {}", 5, &v49);
    v13 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      sub_23C36FA14();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v46 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(v45, __p, *(&v62 + 1));
      *(v45 + v13) = 0;
      v14 = __p;
      if (__p == v65)
      {
LABEL_9:
        v12 = &byte_23C3C40FD[65283];
        if (a6)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    else
    {
      LOBYTE(v45[0]) = 0;
      v14 = __p;
      if (__p == v65)
      {
        goto LABEL_9;
      }
    }

    operator delete(v14);
    goto LABEL_9;
  }

LABEL_50:
  if ((atomic_load_explicit(&qword_27E1F3EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3EC0))
  {
    __cxa_atexit(sub_23C3A4FF8, &qword_27E1F3ED8, &dword_23C368000);
    __cxa_guard_release(&qword_27E1F3EC0);
  }

  if (byte_27E1F3F00 != 1 || byte_27E1F3F08 == 1)
  {
    v30 = qword_27E1F3ED8;
    v31 = unk_27E1F3EE0;
    while (v30 != v31)
    {
      v33 = *v30;
      v32 = *(v30 + 8);
      v30 += 16;
      v33(v32, a3, a4, a5, a6);
    }
  }

  if ((atomic_load_explicit(&qword_27E1F3EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3EC0))
  {
    __cxa_atexit(sub_23C3A4FF8, &qword_27E1F3ED8, &dword_23C368000);
    __cxa_guard_release(&qword_27E1F3EC0);
  }

  v34 = byte_27E1F3F00;
  if (byte_27E1F3F00 == 1)
  {
    qword_27E1F3EF0(*algn_27E1F3EF8, a3, a4, a5, a6);
  }

  return v34 ^ 1u;
}

void sub_23C3A4E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (STACK[0x220] != v25)
  {
    operator delete(STACK[0x220]);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23C3A4EB4(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sub_23C3B1CE0();
  v3 = strlen(a1);
  sub_23C3B1D5C(v2 + 1, a1, v3);
  if (*(v2 + 31) >= 0)
  {
    v4 = (v2 + 1);
  }

  else
  {
    v4 = v2[1];
  }

  qword_27E1F3D10 = v4;
  if ((atomic_load_explicit(&qword_27E1F3ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F3ED0))
  {
    qword_27E1F3EC8 = os_log_create("cv3d", &unk_23C3DB41A);
    __cxa_guard_release(&qword_27E1F3ED0);
  }

  v5 = qword_27E1F3EC8;
  if (os_log_type_enabled(qword_27E1F3EC8, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315138;
    v8 = a1;
    _os_log_impl(&dword_23C368000, v5, OS_LOG_TYPE_FAULT, "%s", &v7, 0xCu);
  }

  return fputs(a1, *MEMORY[0x277D85DF8]);
}

uint64_t sub_23C3A4FF8(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_23C3A5034(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    operator new();
  }
}

void sub_23C3A50D8(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = *a4;
  v5 = &a2[a3];
  v30[0] = a2;
  v30[1] = &a2[a3];
  v31 = 0;
  v32 = 0;
  v33 = v4;
  v26 = *a4;
  v27 = a4[2];
  LOBYTE(v23.__locale_) = 0;
  v24 = 0;
  v25 = a1;
  LOBYTE(v28.__locale_) = 0;
  v29 = 0;
  if (a3)
  {
    v6 = a2;
    v7 = a1;
    v8 = "The format string terminates at a '{'";
    do
    {
      while (1)
      {
        v9 = *v6;
        if (v9 != 125)
        {
          break;
        }

        if (++v6 == v5 || *v6 != 125)
        {
          v8 = "The format string contains an invalid escape sequence";
          goto LABEL_33;
        }

LABEL_17:
        v16 = v7[4];
        if (!v16 || (v18 = *v16, v17 = v16[1], v16[1] = v17 + 1, v17 < v18))
        {
          v19 = *v7;
          v20 = v7[2];
          v7[2] = v20 + 1;
          *(v19 + v20) = v9;
          if (v7[2] == v7[1])
          {
            (v7[3])(v7, 2);
          }
        }

        if (++v6 == v5)
        {
          goto LABEL_26;
        }
      }

      if (v9 != 123)
      {
        goto LABEL_17;
      }

      if (++v6 == v5)
      {
        goto LABEL_33;
      }

      if (*v6 == 123)
      {
        goto LABEL_17;
      }

      v25 = v7;
      v10 = sub_23C3A5478(v6, v5, v30);
      if (v5 == v10)
      {
        goto LABEL_32;
      }

      v12 = *v10;
      v35 = v12 == 58;
      if (v12 != 125)
      {
        if (v12 != 58)
        {
LABEL_32:
          v8 = "The argument index should end with a ':' or a '}'";
LABEL_33:
          sub_23C3A53AC(v8);
        }

        ++v10;
      }

      v30[0] = v10;
      v34[0] = v30;
      v34[1] = &v25;
      v34[2] = &v35;
      if (v26 <= v11)
      {
        LOBYTE(v37) = 0;
      }

      else if (v26 > 0xC)
      {
        v21 = (*(&v26 + 1) + 32 * v11);
        v22 = v21[1];
        v36 = *v21;
        v37 = v22;
      }

      else
      {
        v13 = (*(&v26 + 1) + 16 * v11);
        v15 = *v13;
        v14 = v13[1];
        *&v36 = v15;
        *(&v36 + 1) = v14;
        LOBYTE(v37) = (v27 >> (5 * v11)) & 0x1F;
      }

      sub_23C3A5644(v34, &v36);
      if (v30[0] == v5 || *v30[0] != 125)
      {
        v8 = "The replacement field misses a terminating '}'";
        goto LABEL_33;
      }

      v6 = (v30[0] + 1);
      v7 = v25;
    }

    while ((v30[0] + 1) != v5);
  }

LABEL_26:
  if (v29 == 1)
  {
    std::locale::~locale(&v28);
    if (v24)
    {
      std::locale::~locale(&v23);
    }
  }
}

void sub_23C3A5374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_23C3A53AC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23C3A5408(exception, a1);
  __cxa_throw(exception, &unk_284F01F80, std::runtime_error::~runtime_error);
}

std::runtime_error *sub_23C3A5408(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_284F01FA8;
  return result;
}

void sub_23C3A5440(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x23EECF470);
}

unsigned __int8 *sub_23C3A5478(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  if (v3 == 125 || (v4 = v3 - 58, v3 == 58))
  {
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 1)
      {
        sub_23C3A53AC("Using automatic argument numbering in manual argument numbering mode");
      }

      ++*(a3 + 24);
    }

    else
    {
      *(a3 + 16) = 2;
      ++*(a3 + 24);
    }
  }

  else
  {
    v5 = v3 - 48;
    if (!v5)
    {
      v6 = *(a3 + 16);
      if (!v6)
      {
        *(a3 + 16) = 1;
        return ++result;
      }

      if (v6 != 2)
      {
        return ++result;
      }

      goto LABEL_37;
    }

    if (v4 <= 0xFFFFFFF5)
    {
      sub_23C3A53AC("The argument index starts with an invalid character");
    }

    if (a2 - result <= 9)
    {
      v8 = a2;
    }

    else
    {
      v8 = result + 9;
    }

    v9 = result + 1;
    if (result + 1 == v8)
    {
      v8 = result + 1;
      if (v9 == a2)
      {
        goto LABEL_27;
      }

LABEL_19:
      v11 = *v8;
      if ((v11 - 48) > 9)
      {
        result = v8;
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v11 + 10 * v5 - 48) >> 31 || (result += 2, result != a2) && *result - 48 <= 9)
        {
          sub_23C3A53AC("The numeric value of the format specifier is too large");
        }

LABEL_30:
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      result = v8 - 1;
      do
      {
        v10 = *v9;
        if ((v10 - 58) < 0xFFFFFFF6)
        {
          result = v9;
          goto LABEL_30;
        }

        v5 = v10 + 10 * v5 - 48;
        ++v9;
      }

      while (v9 != v8);
      if (v8 != a2)
      {
        goto LABEL_19;
      }

LABEL_27:
      result = a2;
      v12 = *(a3 + 16);
      if (!v12)
      {
LABEL_34:
        *(a3 + 16) = 1;
        return result;
      }
    }

    if (v12 == 2)
    {
LABEL_37:
      sub_23C3A53AC("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  return result;
}

void sub_23C3A5644(unsigned __int8 ***a1, unsigned __int8 *a2)
{
  *&v583[1023] = *MEMORY[0x277D85DE8];
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      v578[0].__locale_ = 0;
      LODWORD(v578[1].__locale_) = -1;
      BYTE4(v578[1].__locale_) = 32;
      *(&v578[1].__locale_ + 5) = 0;
      HIBYTE(v578[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_319;
      }

      v4 = *a1;
      v5 = sub_23C3A9618(v578, *a1, 55);
      if (BYTE1(v578[0].__locale_) - 2 < 6)
      {
        *v4 = v5;
        v6 = a1[1];
        v7 = sub_23C3AA640(v578, v6);
        v9 = v8;
        v10 = v3;
        goto LABEL_58;
      }

      if (BYTE1(v578[0].__locale_) > 1u)
      {
        sub_23C3A9EF8("a BOOL");
      }

      if ((v578[0].__locale_ & 0x18) != 0)
      {
        sub_23C3AA19C("a BOOL", "sign");
      }

      if ((v578[0].__locale_ & 0x20) != 0)
      {
        sub_23C3AA19C("a BOOL", "alternate form");
      }

      if ((v578[0].__locale_ & 7) == 4)
      {
        sub_23C3AA19C("a BOOL", "zero-padding");
      }

      if (LODWORD(v578[1].__locale_) != -1)
      {
        sub_23C3AA19C("a BOOL", "precision");
      }

      if ((v578[0].__locale_ & 7) == 0)
      {
        LOBYTE(v578[0].__locale_) |= 1u;
      }

      *v4 = v5;
LABEL_319:
      v6 = a1[1];
      v175 = sub_23C3AA640(v578, v6);
      v177 = v176;
      if ((v175 & 0x40) == 0)
      {
        v178 = v3 == 0;
        if (v3)
        {
          v179 = 4;
        }

        else
        {
          v179 = 5;
        }

        v30 = *v6;
        if (v178)
        {
          v180 = "false";
        }

        else
        {
          v180 = "true";
        }

        sub_23C3AAB0C(v180, v179, *v6, v175, v177, v179);
        goto LABEL_573;
      }

      if ((v6[5] & 1) == 0)
      {
        MEMORY[0x23EECF2D0](&v581);
        v181 = (v6 + 4);
        if (*(v6 + 40) == 1)
        {
          std::locale::operator=(v181, &v581);
        }

        else
        {
          std::locale::locale(v181, &v581);
          *(v6 + 40) = 1;
        }

        std::locale::~locale(&v581);
      }

      std::locale::locale(v575, v6 + 4);
      v223 = std::locale::use_facet(v575, MEMORY[0x277D826C0]);
      std::locale::~locale(v575);
      v224 = v223->__vftable;
      if (v3)
      {
        (v224[2].~facet)(&v581, v223);
      }

      else
      {
        (v224[2].~facet_0)(&v581, v223);
      }

      if ((v581.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v225 = &v581;
      }

      else
      {
        v225 = v581.__r_.__value_.__r.__words[0];
      }

      if ((v581.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v581.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v581.__r_.__value_.__l.__size_;
      }

      v30 = *v6;
      sub_23C3AA940(v225, size, *v6, v175, v177);
      goto LABEL_571;
    case 2u:
      v43 = *a2;
      v578[0].__locale_ = 0;
      LODWORD(v578[1].__locale_) = -1;
      BYTE4(v578[1].__locale_) = 32;
      *(&v578[1].__locale_ + 5) = 0;
      HIBYTE(v578[1].__locale_) = 0;
      if (*a1[2])
      {
        v44 = *a1;
        v45 = sub_23C3A9618(v578, *a1, 55);
        v46 = BYTE1(v578[0].__locale_);
        if (BYTE1(v578[0].__locale_) - 2 >= 6)
        {
          if (BYTE1(v578[0].__locale_) > 0x13u || ((1 << SBYTE1(v578[0].__locale_)) & 0x80401) == 0)
          {
            sub_23C3A9EF8("a character");
          }

          if ((v578[0].__locale_ & 0x18) != 0)
          {
            sub_23C3AA19C("a character", "sign");
          }

          if ((v578[0].__locale_ & 0x20) != 0)
          {
            sub_23C3AA19C("a character", "alternate form");
          }

          if ((v578[0].__locale_ & 7) == 4)
          {
            sub_23C3AA19C("a character", "zero-padding");
          }

          if (LODWORD(v578[1].__locale_) != -1)
          {
            sub_23C3AA19C("a character", "precision");
          }

          if ((v578[0].__locale_ & 7) == 0)
          {
            LOBYTE(v578[0].__locale_) |= 1u;
          }
        }

        *v44 = v45;
        v6 = a1[1];
        if (v46)
        {
          if (v46 != 19)
          {
            if (v46 != 10)
            {
              v7 = sub_23C3AA640(v578, v6);
              v9 = v47;
              v10 = v43;
LABEL_58:
              v48 = v6;
              goto LABEL_135;
            }

            goto LABEL_122;
          }

          v30 = *v6;
          v182 = sub_23C3AA640(v578, v6);
          v184 = v183;
          LOBYTE(v575[0].__locale_) = v43;
          v581.__r_.__value_.__r.__words[2] = 0x100000000000000;
          *&v581.__r_.__value_.__l.__data_ = 0x27uLL;
          sub_23C3AD708(&v581, v575, 1, 0);
          if (SHIBYTE(v581.__r_.__value_.__r.__words[2]) < 0)
          {
            v242 = (v581.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v581.__r_.__value_.__l.__size_ == v242)
            {
              if ((v581.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
              {
                sub_23C36FA14();
              }

LABEL_505:
              operator new();
            }

            v269 = v581.__r_.__value_.__l.__size_;
            v270 = v581.__r_.__value_.__r.__words[0];
            ++v581.__r_.__value_.__l.__size_;
          }

          else
          {
            if (HIBYTE(v581.__r_.__value_.__r.__words[2]) == 22)
            {
              goto LABEL_505;
            }

            v269 = HIBYTE(v581.__r_.__value_.__r.__words[2]);
            *(&v581.__r_.__value_.__s + 23) = (*(&v581.__r_.__value_.__s + 23) + 1) & 0x7F;
            v270 = &v581;
          }

          *(&v270->__r_.__value_.__l.__data_ + v269) = 39;
          if ((v581.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v271 = &v581 + HIBYTE(v581.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v271 = (v581.__r_.__value_.__r.__words[0] + v581.__r_.__value_.__l.__size_);
          }

          if ((v581.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v272 = &v581;
          }

          else
          {
            v272 = v581.__r_.__value_.__r.__words[0];
          }

          if ((v581.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v273 = HIBYTE(v581.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v273 = v581.__r_.__value_.__l.__size_;
          }

          sub_23C3AAB0C(v272, v271 - v272, v30, v182, v184, v273);
LABEL_571:
          if (SHIBYTE(v581.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v581.__r_.__value_.__l.__data_);
          }

          goto LABEL_573;
        }
      }

      else
      {
        v6 = a1[1];
      }

LABEL_122:
      v30 = *v6;
      v85 = sub_23C3AA640(v578, v6);
      v581.__r_.__value_.__s.__data_[0] = v43;
      sub_23C3AAB0C(&v581, 1uLL, v30, v85, v86, 1);
      goto LABEL_573;
    case 3u:
      LODWORD(v23) = *a2;
      v581.__r_.__value_.__r.__words[0] = 0;
      v581.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (*a1[2] != 1)
      {
        goto LABEL_66;
      }

      v49 = *a1;
      v50 = sub_23C3A9618(&v581, *a1, 55);
      if (v581.__r_.__value_.__s.__data_[1] - 2 < 6 || v581.__r_.__value_.__s.__data_[1] == 0)
      {
        goto LABEL_65;
      }

      if (v581.__r_.__value_.__s.__data_[1] != 10)
      {
        goto LABEL_1207;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 0x18) != 0)
      {
        goto LABEL_1208;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 0x20) != 0)
      {
        goto LABEL_1209;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 7) == 4)
      {
        goto LABEL_1210;
      }

      if (LODWORD(v581.__r_.__value_.__r.__words[1]) != -1)
      {
        goto LABEL_1211;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 7) == 0)
      {
        v581.__r_.__value_.__s.__data_[0] |= 1u;
      }

LABEL_65:
      *v49 = v50;
LABEL_66:
      v6 = a1[1];
      v27 = sub_23C3AA640(&v581, v6);
      v29 = v52;
      if ((v27 & 0xFF00) != 0xA00)
      {
        if (v23 >= 0)
        {
          v10 = v23;
        }

        else
        {
          v10 = -v23;
        }

        v95 = v23 >> 31;
        v48 = v6;
        v7 = v27;
        v9 = v29;
        goto LABEL_136;
      }

      if (v23 == v23)
      {
        goto LABEL_28;
      }

      goto LABEL_1204;
    case 4u:
      v23 = *a2;
      v581.__r_.__value_.__r.__words[0] = 0;
      v581.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (*a1[2] != 1)
      {
        goto LABEL_26;
      }

      v24 = *a1;
      v25 = sub_23C3A9618(&v581, *a1, 55);
      if (v581.__r_.__value_.__s.__data_[1] - 2 < 6 || v581.__r_.__value_.__s.__data_[1] == 0)
      {
        goto LABEL_25;
      }

      if (v581.__r_.__value_.__s.__data_[1] != 10)
      {
        goto LABEL_1207;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 0x18) != 0)
      {
        goto LABEL_1208;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 0x20) != 0)
      {
        goto LABEL_1209;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 7) == 4)
      {
        goto LABEL_1210;
      }

      if (LODWORD(v581.__r_.__value_.__r.__words[1]) != -1)
      {
        goto LABEL_1211;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 7) == 0)
      {
        v581.__r_.__value_.__s.__data_[0] |= 1u;
      }

LABEL_25:
      *v24 = v25;
LABEL_26:
      v6 = a1[1];
      v27 = sub_23C3AA640(&v581, v6);
      v29 = v28;
      if ((v27 & 0xFF00) == 0xA00)
      {
        if (v23 == v23)
        {
LABEL_28:
          v30 = *v6;
          LOBYTE(v578[0].__locale_) = v23;
          sub_23C3AAB0C(v578, 1uLL, v30, v27, v29, 1);
LABEL_573:
          *v6 = v30;
          return;
        }

        goto LABEL_1204;
      }

      if (v23 >= 0)
      {
        v87 = v23;
      }

      else
      {
        v87 = -v23;
      }

      v42 = v23 >> 63;
      v88 = v6;
      v89 = v27;
      v90 = v29;
      goto LABEL_140;
    case 5u:
      v57 = *a2;
      v58 = *(a2 + 1);
      v581.__r_.__value_.__r.__words[0] = 0;
      v581.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (*a1[2] != 1)
      {
        goto LABEL_82;
      }

      v59 = *a1;
      v60 = sub_23C3A9618(&v581, *a1, 55);
      if (v581.__r_.__value_.__s.__data_[1] - 2 < 6 || !v581.__r_.__value_.__s.__data_[1])
      {
        goto LABEL_81;
      }

      if (v581.__r_.__value_.__s.__data_[1] != 10)
      {
        goto LABEL_1207;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 0x18) != 0)
      {
        goto LABEL_1208;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 0x20) != 0)
      {
        goto LABEL_1209;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 7) == 4)
      {
        goto LABEL_1210;
      }

      if (LODWORD(v581.__r_.__value_.__r.__words[1]) != -1)
      {
        goto LABEL_1211;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 7) == 0)
      {
        v581.__r_.__value_.__s.__data_[0] |= 1u;
      }

LABEL_81:
      *v59 = v60;
LABEL_82:
      v6 = a1[1];
      v40 = sub_23C3AA640(&v581, v6);
      v42 = v61;
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(-1, -257) < __PAIR128__((v57 >= 0x80) + v58 - 1, v57 - 128))
        {
          v30 = *v6;
          LOBYTE(v578[0].__locale_) = v57;
          sub_23C3AAB0C(v578, 1uLL, v30, v40, v61, 1);
          goto LABEL_573;
        }

LABEL_1204:
        sub_23C3A53AC("Integral value outside the range of the char type");
      }

      v92 = (__PAIR128__(v58 ^ (v58 >> 63), v57 ^ (v58 >> 63)) - __PAIR128__(v58 >> 63, v58 >> 63)) >> 64;
      v91 = (v57 ^ (v58 >> 63)) - (v58 >> 63);
      v94 = v58 >> 63;
      v93 = v6;
      goto LABEL_138;
    case 6u:
      v36 = *a2;
      v581.__r_.__value_.__r.__words[0] = 0;
      v581.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (*a1[2] != 1)
      {
        goto LABEL_76;
      }

      v53 = *a1;
      v54 = sub_23C3A9618(&v581, *a1, 55);
      if (v581.__r_.__value_.__s.__data_[1] - 2 < 6 || v581.__r_.__value_.__s.__data_[1] == 0)
      {
        goto LABEL_75;
      }

      if (v581.__r_.__value_.__s.__data_[1] != 10)
      {
        goto LABEL_1207;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 0x18) != 0)
      {
        goto LABEL_1208;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 0x20) != 0)
      {
        goto LABEL_1209;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 7) == 4)
      {
        goto LABEL_1210;
      }

      if (LODWORD(v581.__r_.__value_.__r.__words[1]) != -1)
      {
        goto LABEL_1211;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 7) == 0)
      {
        v581.__r_.__value_.__s.__data_[0] |= 1u;
      }

LABEL_75:
      *v53 = v54;
LABEL_76:
      v6 = a1[1];
      v40 = sub_23C3AA640(&v581, v6);
      v42 = v56;
      if ((v40 & 0xFF00) != 0xA00)
      {
        v10 = v36;
        v48 = v6;
        v7 = v40;
        v9 = v42;
LABEL_135:
        LOBYTE(v95) = 0;
LABEL_136:
        *v6 = sub_23C3AA7EC(v10, v48, v7, v9, v95);
        return;
      }

      if (v36 < 0x80)
      {
        goto LABEL_103;
      }

      goto LABEL_1204;
    case 7u:
      v36 = *a2;
      v581.__r_.__value_.__r.__words[0] = 0;
      v581.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (*a1[2] != 1)
      {
        goto LABEL_101;
      }

      v67 = *a1;
      v68 = sub_23C3A9618(&v581, *a1, 55);
      if (v581.__r_.__value_.__s.__data_[1] - 2 < 6 || v581.__r_.__value_.__s.__data_[1] == 0)
      {
        goto LABEL_100;
      }

      if (v581.__r_.__value_.__s.__data_[1] != 10)
      {
        goto LABEL_1207;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 0x18) != 0)
      {
        goto LABEL_1208;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 0x20) != 0)
      {
        goto LABEL_1209;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 7) == 4)
      {
        goto LABEL_1210;
      }

      if (LODWORD(v581.__r_.__value_.__r.__words[1]) != -1)
      {
        goto LABEL_1211;
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 7) == 0)
      {
        v581.__r_.__value_.__s.__data_[0] |= 1u;
      }

LABEL_100:
      *v67 = v68;
LABEL_101:
      v6 = a1[1];
      v40 = sub_23C3AA640(&v581, v6);
      v42 = v70;
      if ((v40 & 0xFF00) != 0xA00)
      {
        v87 = v36;
        v88 = v6;
        v89 = v40;
        v90 = v42;
        LOBYTE(v42) = 0;
LABEL_140:
        *v6 = sub_23C3AE27C(v87, v88, v89, v90, v42);
        return;
      }

      if (v36 >= 0x80)
      {
        goto LABEL_1204;
      }

      goto LABEL_103;
    case 8u:
      v36 = *a2;
      v37 = *(a2 + 1);
      v581.__r_.__value_.__r.__words[0] = 0;
      v581.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (*a1[2] != 1)
      {
        goto LABEL_41;
      }

      v38 = *a1;
      v39 = sub_23C3A9618(&v581, *a1, 55);
      if (v581.__r_.__value_.__s.__data_[1] - 2 < 6 || !v581.__r_.__value_.__s.__data_[1])
      {
        goto LABEL_40;
      }

      if (v581.__r_.__value_.__s.__data_[1] != 10)
      {
LABEL_1207:
        sub_23C3A9EF8("an integer");
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 0x18) != 0)
      {
LABEL_1208:
        sub_23C3AA19C("an integer", "sign");
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 0x20) != 0)
      {
LABEL_1209:
        sub_23C3AA19C("an integer", "alternate form");
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 7) == 4)
      {
LABEL_1210:
        sub_23C3AA19C("an integer", "zero-padding");
      }

      if (LODWORD(v581.__r_.__value_.__r.__words[1]) != -1)
      {
LABEL_1211:
        sub_23C3AA19C("an integer", "precision");
      }

      if ((v581.__r_.__value_.__s.__data_[0] & 7) == 0)
      {
        v581.__r_.__value_.__s.__data_[0] |= 1u;
      }

LABEL_40:
      *v38 = v39;
LABEL_41:
      v6 = a1[1];
      v40 = sub_23C3AA640(&v581, v6);
      v42 = v41;
      if ((v40 & 0xFF00) != 0xA00)
      {
        v91 = v36;
        v92 = v37;
        v93 = v6;
        LOBYTE(v94) = 0;
LABEL_138:
        *v6 = sub_23C3AEF28(v91, v92, v93, v40, v42, v94);
        return;
      }

      if (__PAIR128__(v37, v36) >= 0x80)
      {
        goto LABEL_1204;
      }

LABEL_103:
      v71 = *v6;
      LOBYTE(v578[0].__locale_) = v36;
      sub_23C3AAB0C(v578, 1uLL, v71, v40, v42, 1);
      *v6 = v71;
      return;
    case 9u:
      v31 = *a2;
      v568.__locale_ = 0;
      v569 = -1;
      v570 = 32;
      v571 = 0;
      v572 = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_144;
      }

      v32 = *a1;
      v33 = sub_23C3A9618(&v568, *a1, 63);
      if (BYTE1(v568.__locale_) - 13 < 6)
      {
        v34 = v569 != -1 || SWORD1(v568.__locale_) <= -1;
        if (v34)
        {
          v35 = v569;
        }

        else
        {
          v35 = 6;
        }

        v569 = v35;
        goto LABEL_143;
      }

      if (BYTE1(v568.__locale_) > 0xCu || ((1 << SBYTE1(v568.__locale_)) & 0x1801) == 0)
      {
        goto LABEL_1217;
      }

LABEL_143:
      *v32 = v33;
LABEL_144:
      v96 = a1[1];
      v99 = sub_23C3AA640(&v568, v96);
      v100 = v97;
      if ((LODWORD(v31) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        *v96 = sub_23C3B01E0(*v96, v99, v97, v31 < 0.0, 0);
        return;
      }

      if (v97 == -1)
      {
        v101 = 149;
      }

      else
      {
        v101 = v97;
      }

      v581.__r_.__value_.__r.__words[0] = v101;
      if (v101 < 150)
      {
        v102 = v101 + 45;
        v581.__r_.__value_.__l.__size_ = v102;
        if ((v101 + 45) >= 0x101)
        {
          operator new();
        }
      }

      else
      {
        LODWORD(v581.__r_.__value_.__l.__data_) = 149;
        HIDWORD(v581.__r_.__value_.__r.__words[0]) = v101 - 149;
        v102 = 194;
        v581.__r_.__value_.__l.__size_ = 194;
        v101 = 149;
      }

      v103 = v99;
      v564 = v99;
      v104 = BYTE1(v99);
      v581.__r_.__value_.__r.__words[2] = &v582;
      if ((LODWORD(v31) & 0x80000000) != 0)
      {
        v106 = 45;
      }

      else
      {
        v105 = (v103 >> 3) & 3;
        if (v105 == 2)
        {
          v106 = 43;
        }

        else
        {
          v566 = &v582;
          if (v105 != 3)
          {
            goto LABEL_159;
          }

          v106 = 32;
        }
      }

      v582 = v106;
      v566 = v583;
LABEL_159:
      v107 = fabsf(v31);
      if (v104 > 14)
      {
        if ((v104 - 15) >= 2)
        {
          if (v104 != 17)
          {
            HIDWORD(v581.__r_.__value_.__r.__words[0]) = 0;
            v109 = MEMORY[0x23EECF3D0](v566, &v583[v102 - 1], 3, v101, v107);
            v186 = (v566 + 1);
            if ((v566 + 1) == v109)
            {
              v577.__locale_ = v109;
              p_src = &__src;
              v191 = v109;
            }

            else
            {
              v187 = v109 - v186;
              if (v109 - v186 < 4)
              {
LABEL_358:
                __src = v109;
                v190 = memchr(v186, 46, v187);
                if (v190)
                {
                  v191 = v190;
                }

                else
                {
                  v191 = v109;
                }
              }

              else
              {
                v188 = 6;
                if (v187 < 6)
                {
                  v188 = v109 - v186;
                }

                v189 = -v188;
                while (*(v109 + v189) != 101)
                {
                  if (++v189 == -3)
                  {
                    goto LABEL_358;
                  }
                }

                __src = v109 + v189;
                if (*v186 == 46)
                {
                  v191 = (v566 + 1);
                }

                else
                {
                  v191 = v109;
                }
              }

              p_src = &v577;
            }

            p_src->__locale_ = v191;
            v193 = __src;
            if (__src == v109)
            {
              goto LABEL_580;
            }

LABEL_579:
            *v193 = 69;
            goto LABEL_580;
          }

          HIDWORD(v581.__r_.__value_.__r.__words[0]) = 0;
          v109 = MEMORY[0x23EECF3D0](v566, &v583[v102 - 1], 3, v101, v107);
          v116 = (v566 + 1);
          if ((v566 + 1) != v109)
          {
            v117 = v109 - v116;
            if (v109 - v116 >= 4)
            {
              v118 = 6;
              if (v117 < 6)
              {
                v118 = v109 - v116;
              }

              v119 = -v118;
              while (*(v109 + v119) != 101)
              {
                if (++v119 == -3)
                {
                  goto LABEL_194;
                }
              }

              goto LABEL_550;
            }

LABEL_194:
            __src = v109;
            v121 = memchr(v116, 46, v117);
            if (v121)
            {
              v122 = v121;
            }

            else
            {
              v122 = v109;
            }

LABEL_553:
            v577.__locale_ = v122;
            goto LABEL_580;
          }

LABEL_429:
          v577.__locale_ = v109;
          __src = v109;
          goto LABEL_580;
        }

        v112 = &v583[v102 - 1];
        v113 = v101;
        v114 = MEMORY[0x23EECF3D0](v566, v112, 2, v107);
        v109 = v114;
        if (v113)
        {
          v115 = v113 + 1;
        }

        else
        {
          v115 = 0;
        }

        v577.__locale_ = (v114 - v115);
        __src = v114;
      }

      else
      {
        if (v104 > 11)
        {
          if (v104 != 12)
          {
            if (v104 == 13)
            {
              v108 = MEMORY[0x23EECF3D0](v566, &v583[v102 - 1], 1, v101, v107);
              v109 = v108;
              if (*(v566 + 1) == 46)
              {
                v577.__locale_ = (v566 + 1);
                v110 = v108 - v566 - 2;
                if (v110 < 4)
                {
LABEL_170:
                  __src = v108;
                }

                else
                {
                  if (v110 >= 6)
                  {
                    v110 = 6;
                  }

                  v111 = -v110;
                  while (*(v108 + v111) != 101)
                  {
                    if (++v111 == -3)
                    {
                      goto LABEL_170;
                    }
                  }

                  __src = v108 + v111;
                }
              }

              else
              {
                v577.__locale_ = v108;
                __src = v566 + 1;
              }

              goto LABEL_580;
            }

            v192 = MEMORY[0x23EECF3D0](v566, &v583[v102 - 1], 1, v101, v107);
            v109 = v192;
            v193 = v566 + 1;
            if (*(v566 + 1) == 46)
            {
              v577.__locale_ = (v566 + 1);
              v194 = v192 - v566 - 2;
              if (v194 < 4)
              {
LABEL_368:
                v193 = v192;
                __src = v192;
              }

              else
              {
                if (v194 >= 6)
                {
                  v194 = 6;
                }

                v195 = -v194;
                while (*(v192 + v195) != 101)
                {
                  if (++v195 == -3)
                  {
                    goto LABEL_368;
                  }
                }

                v193 = v192 + v195;
                __src = v193;
              }
            }

            else
            {
              v577.__locale_ = v192;
              __src = v566 + 1;
            }

            goto LABEL_579;
          }

          if ((v97 & 0x80000000) != 0)
          {
            v185 = std::to_chars();
          }

          else
          {
            v185 = MEMORY[0x23EECF3D0](v566, &v583[v102 - 1], 4, v107);
          }

          v109 = v185;
          v227 = (v566 + 1);
          if (*(v566 + 1) == 46)
          {
            v228 = memchr(v185 - 5, 112, 3uLL);
            v577.__locale_ = (v566 + 1);
            if (v228)
            {
              v229 = v228;
            }

            else
            {
              v229 = (v109 - 2);
            }

            __src = v229;
            v227 = v229;
            if (v229 == v566)
            {
LABEL_486:
              *v227 = 80;
              goto LABEL_580;
            }
          }

          else
          {
            v577.__locale_ = v185;
            __src = v566 + 1;
          }

          v238 = v566;
          do
          {
            v239 = *v238;
            if ((v239 - 97) < 6)
            {
              LOBYTE(v239) = v239 - 32;
            }

            *v238 = v239;
            v238 = (v238 + 1);
          }

          while (v238 != v227);
          goto LABEL_486;
        }

        if (!v104)
        {
          if ((v97 & 0x80000000) != 0)
          {
            v243 = std::to_chars(v566, &v583[v102 - 1], v98, v107);
            v109 = v243;
            v244 = v243 - v566;
            if (v243 - v566 < 4)
            {
LABEL_512:
              v246 = v243;
            }

            else
            {
              if (v244 >= 6)
              {
                v244 = 6;
              }

              v245 = -v244;
              while (*(v243 + v245) != 101)
              {
                if (++v245 == -3)
                {
                  goto LABEL_512;
                }
              }

              v246 = (v243 + v245);
            }

            __src = v246;
            v552 = memchr(v566 + 1, 46, v246 - (v566 + 1));
            if (v552)
            {
              v553 = v552;
            }

            else
            {
              v553 = v246;
            }

            if (v553 == v246)
            {
              v553 = v109;
            }

            v577.__locale_ = v553;
            goto LABEL_580;
          }

          HIDWORD(v581.__r_.__value_.__r.__words[0]) = 0;
          v109 = MEMORY[0x23EECF3D0](v566, &v583[v102 - 1], 3, v101, v107);
          v116 = (v566 + 1);
          if ((v566 + 1) != v109)
          {
            v117 = v109 - v116;
            if (v109 - v116 >= 4)
            {
              v120 = 6;
              if (v117 < 6)
              {
                v120 = v109 - v116;
              }

              v119 = -v120;
              while (*(v109 + v119) != 101)
              {
                if (++v119 == -3)
                {
                  goto LABEL_194;
                }
              }

LABEL_550:
              __src = v109 + v119;
              if (*v116 == 46)
              {
                v122 = v116;
              }

              else
              {
                v122 = v109;
              }

              goto LABEL_553;
            }

            goto LABEL_194;
          }

          goto LABEL_429;
        }

        if ((v97 & 0x80000000) != 0)
        {
          v196 = std::to_chars();
        }

        else
        {
          v196 = MEMORY[0x23EECF3D0](v566, &v583[v102 - 1], 4, v101, v107);
        }

        v109 = v196;
        v247 = v566 + 1;
        if (*(v566 + 1) == 46)
        {
          v248 = memchr((v196 - 5), 112, 3uLL);
          v249 = (v566 + 1);
          if (v248)
          {
            v247 = v248;
          }

          else
          {
            v247 = v109 - 2;
          }
        }

        else
        {
          v249 = v196;
        }

        v577.__locale_ = v249;
        __src = v247;
      }

      if ((v103 & 0x20) == 0)
      {
        goto LABEL_597;
      }

LABEL_580:
      locale = v577.__locale_;
      if (v577.__locale_ == v109)
      {
        *v109 = 46;
        locale = __src;
        if (__src != v109)
        {
          if (__src + 1 == v109)
          {
            v275 = *__src;
            *__src = *(__src + 1);
            *(locale + 1) = v275;
          }

          else
          {
            memmove(__src + 1, __src, v109 - __src);
            *locale = 46;
          }
        }

        v577.__locale_ = locale;
        __src = (locale + 1);
        v109 = (v109 + 1);
      }

      if ((v104 - 17) <= 1)
      {
        if (v100 <= 1)
        {
          v276 = 1;
        }

        else
        {
          v276 = v100;
        }

        if ((v100 & 0x80000000) != 0)
        {
          v276 = 6;
        }

        v277 = v564;
        v278 = v566 - locale;
        if (__src != v109)
        {
          v278 = -1;
        }

        v279 = v278 + v276;
        v280 = __src + ~locale;
        if (v280 < v279)
        {
          HIDWORD(v581.__r_.__value_.__r.__words[0]) += v279 - v280;
        }
      }

      else
      {
LABEL_597:
        v277 = v564;
      }

      if ((v103 & 0x40) == 0)
      {
        v281 = v103;
        v282 = v100;
        v283 = v96;
        v284 = v581.__r_.__value_.__r.__words[2];
        v285 = v109;
        v286 = v109 - v581.__r_.__value_.__r.__words[2];
        v287 = SHIDWORD(v581.__r_.__value_.__r.__words[0]);
        if ((v109 + SHIDWORD(v581.__r_.__value_.__r.__words[0]) - v581.__r_.__value_.__r.__words[2]) < v277 >> 32)
        {
          v288 = *v96;
          if ((v281 & 7) == 4)
          {
            if (v581.__r_.__value_.__r.__words[2] != v566)
            {
              v289 = *v581.__r_.__value_.__r.__words[2];
              v290 = *(v288 + 32);
              if (!v290 || (v292 = *v290, v291 = v290[1], v290[1] = v291 + 1, v291 < v292))
              {
                v293 = *v288;
                v294 = *(v288 + 16);
                *(v288 + 16) = v294 + 1;
                *(v293 + v294) = v289;
                if (*(v288 + 16) == *(v288 + 8))
                {
                  v295 = v277;
                  (*(v288 + 24))(v288, 2);
                  v277 = v295;
                }
              }

              ++v284;
            }

            v296 = v277 & 0xB8 | 3;
            v297 = 48;
            v298 = v282;
          }

          else
          {
            v296 = v277;
            v298 = v282;
            v297 = BYTE4(v282);
          }

          v316 = v277 & 0xFFFFFFFFFFFFFF00 | v296;
          v317 = v298 & 0xFFFFFF00FFFFFFFFLL | (v297 << 32);
          if (v287)
          {
            sub_23C3B0328(v284, v109, v288, v316, v317, v286, __src, v287);
          }

          else
          {
            sub_23C3AAB0C(v284, v109 - v284, v288, v316, v317, v286);
          }

          goto LABEL_866;
        }

        if (HIDWORD(v581.__r_.__value_.__r.__words[0]))
        {
          v300 = __src;
          if (__src != v109)
          {
            v288 = *v283;
            v301 = __src - v581.__r_.__value_.__r.__words[2];
            v302 = *(*v283 + 32);
            if (v302)
            {
              v303 = *v302;
              v304 = v302[1];
              if (*v302 - v304 >= v301)
              {
                v305 = __src - v581.__r_.__value_.__r.__words[2];
              }

              else
              {
                v305 = (*v302 - v304);
              }

              v34 = v303 > v304;
              v306 = &v301[v304];
              v302[1] = v306;
              if (!v34 || v305 == 0)
              {
                goto LABEL_716;
              }
            }

            else
            {
              v305 = __src - v581.__r_.__value_.__r.__words[2];
            }

            v347 = *(v288 + 16);
            do
            {
              v348 = *(v288 + 8) - v347;
              if (v348 < (v305 + 1))
              {
                (*(v288 + 24))(v288, v305 + 2);
                v347 = *(v288 + 16);
                v348 = *(v288 + 8) - v347;
              }

              if (v348 >= v305)
              {
                v349 = v305;
              }

              else
              {
                v349 = v348;
              }

              if (v349)
              {
                memmove((*v288 + v347), v284, v349);
                v347 = *(v288 + 16);
              }

              v347 += v349;
              *(v288 + 16) = v347;
              v284 += v349;
              v34 = v305 > v348;
              v305 -= v349;
            }

            while (v34);
            v302 = *(v288 + 32);
            if (!v302)
            {
              goto LABEL_723;
            }

            v303 = *v302;
            v306 = v302[1];
LABEL_716:
            v350 = &v306[v287];
            v302[1] = &v306[v287];
            v351 = v303 >= v306;
            v352 = v303 - v306;
            if (v352 == 0 || !v351)
            {
              v356 = v285 - v300;
              goto LABEL_735;
            }

            if (v352 < v287)
            {
              v287 = v352;
            }

            v347 = *(v288 + 16);
            do
            {
LABEL_723:
              v353 = *(v288 + 8) - v347;
              if (v353 < v287 + 1)
              {
                (*(v288 + 24))(v288, v287 + 2);
                v347 = *(v288 + 16);
                v353 = *(v288 + 8) - v347;
              }

              if (v353 >= v287)
              {
                v354 = v287;
              }

              else
              {
                v354 = v353;
              }

              if (v354)
              {
                memset((*v288 + v347), 48, v354);
                v347 = *(v288 + 16);
              }

              v347 += v354;
              *(v288 + 16) = v347;
              v34 = v287 > v353;
              v287 -= v354;
            }

            while (v34);
            v302 = *(v288 + 32);
            v356 = v285 - v300;
            if (!v302)
            {
              goto LABEL_744;
            }

            v303 = *v302;
            v350 = v302[1];
LABEL_735:
            v357 = v303 - v350;
            if (v303 - v350 >= v356)
            {
              v357 = v356;
            }

            v302[1] = &v350[v356];
            if (v303 <= v350 || v357 == 0)
            {
              goto LABEL_866;
            }

            v347 = *(v288 + 16);
            v356 = v357;
            do
            {
LABEL_744:
              v359 = *(v288 + 8) - v347;
              if (v359 < v356 + 1)
              {
                (*(v288 + 24))(v288, v356 + 2);
                v347 = *(v288 + 16);
                v359 = *(v288 + 8) - v347;
              }

              if (v359 >= v356)
              {
                v360 = v356;
              }

              else
              {
                v360 = v359;
              }

              if (v360)
              {
                memmove((*v288 + v347), v300, v360);
                v347 = *(v288 + 16);
              }

              v347 += v360;
              *(v288 + 16) = v347;
              v300 = (v300 + v360);
              v34 = v356 > v359;
              v356 -= v360;
            }

            while (v34);
            goto LABEL_866;
          }
        }

        v288 = *v283;
        v308 = *(*v283 + 32);
        if (!v308)
        {
          goto LABEL_630;
        }

        v309 = *v308;
        v310 = v308[1];
        v311 = v310 + v286;
        if (*v308 - v310 < v286)
        {
          v286 = *v308 - v310;
        }

        v308[1] = v311;
        if (v309 > v310 && v286 != 0)
        {
LABEL_630:
          v313 = *(v288 + 16);
          do
          {
            v314 = *(v288 + 8) - v313;
            if (v314 < v286 + 1)
            {
              (*(v288 + 24))(v288, v286 + 2);
              v313 = *(v288 + 16);
              v314 = *(v288 + 8) - v313;
            }

            if (v314 >= v286)
            {
              v315 = v286;
            }

            else
            {
              v315 = v314;
            }

            if (v315)
            {
              memmove((*v288 + v313), v284, v315);
              v313 = *(v288 + 16);
            }

            v313 += v315;
            *(v288 + 16) = v313;
            v284 += v315;
            v34 = v286 > v314;
            v286 -= v315;
          }

          while (v34);
          v308 = *(v288 + 32);
          if (!v308)
          {
            goto LABEL_688;
          }

          v309 = *v308;
          v311 = v308[1];
        }

        v339 = v309 - v311;
        if (v309 - v311 >= v287)
        {
          v339 = v287;
        }

        v308[1] = v311 + v287;
        if (v309 <= v311 || v339 == 0)
        {
          goto LABEL_866;
        }

        v313 = *(v288 + 16);
        v287 = v339;
        do
        {
LABEL_688:
          v341 = *(v288 + 8) - v313;
          if (v341 < v287 + 1)
          {
            (*(v288 + 24))(v288, v287 + 2);
            v313 = *(v288 + 16);
            v341 = *(v288 + 8) - v313;
          }

          if (v341 >= v287)
          {
            v342 = v287;
          }

          else
          {
            v342 = v341;
          }

          if (v342)
          {
            memset((*v288 + v313), 48, v342);
            v313 = *(v288 + 16);
          }

          v313 += v342;
          *(v288 + 16) = v313;
          v34 = v287 > v341;
          v287 -= v342;
        }

        while (v34);
        goto LABEL_866;
      }

      v288 = *v96;
      if ((v96[5] & 1) == 0)
      {
        MEMORY[0x23EECF2D0](v578);
        v299 = (v96 + 4);
        if (*(v96 + 40) == 1)
        {
          std::locale::operator=(v299, v578);
        }

        else
        {
          std::locale::locale(v299, v578);
          *(v96 + 40) = 1;
        }

        std::locale::~locale(v578);
      }

      std::locale::locale(&v573, v96 + 4);
      v318 = std::locale::use_facet(&v573, MEMORY[0x277D826C0]);
      (v318->__vftable[1].__on_zero_shared)(v578);
      v319 = __src;
      if (__src >= v577.__locale_)
      {
        v319 = v577.__locale_;
      }

      v320 = v319 - v566;
      v561 = v96;
      v562 = v318;
      v563 = v109;
      if ((SHIBYTE(v579) & 0x8000000000000000) != 0)
      {
        v321 = v578[1].__locale_;
        if (!v578[1].__locale_)
        {
          goto LABEL_755;
        }

        v324 = v578[0].__locale_;
        locale_low = *v578[0].__locale_;
        if (v320 <= locale_low)
        {
          *v578[0].__locale_ = 0;
          v578[1].__locale_ = 0;
          goto LABEL_755;
        }

        v559 = v100;
        v560 = v319 - v566;
        v558 = v103;
        v325 = *v578[0].__locale_;
        v322 = v578[0].__locale_;
      }

      else
      {
        if (!HIBYTE(v579))
        {
          goto LABEL_755;
        }

        if (v320 <= SLOBYTE(v578[0].__locale_))
        {
          LOBYTE(v578[0].__locale_) = 0;
          HIBYTE(v579) = 0;
          goto LABEL_755;
        }

        v559 = v100;
        v560 = v319 - v566;
        v558 = v103;
        v322 = v578[0].__locale_;
        v321 = v578[1].__locale_;
        locale_low = SLOBYTE(v578[0].__locale_);
        v324 = v578;
        v325 = v578[0].__locale_;
      }

      v575[0].__locale_ = 0;
      v575[1].__locale_ = 0;
      v576 = 0;
      v326 = v321 + v322;
      if (SHIBYTE(v579) >= 0)
      {
        v327 = v578 + SHIBYTE(v579);
      }

      else
      {
        v327 = v326;
      }

      v328 = v560 - locale_low;
      if (v560 <= locale_low)
      {
        v344 = 0;
        v343 = v325 + v328;
        goto LABEL_702;
      }

      v329 = v327 - 1;
      do
      {
        while (1)
        {
          v330 = HIBYTE(v576);
          if ((SHIBYTE(v576) & 0x80000000) == 0)
          {
            break;
          }

          v331 = ((v576 & 0x7FFFFFFFFFFFFFFFLL) - 1);
          if (v575[1].__locale_ == v331)
          {
            if ((v576 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_23C36FA14();
            }

LABEL_665:
            operator new();
          }

          v333 = v575[1].__locale_++;
          v334 = v575[0].__locale_ + v333;
          *v334 = v325;
          v334[1] = 0;
          if (v324 != v329)
          {
            goto LABEL_669;
          }

LABEL_659:
          v325 = *v324;
          v328 -= *v324;
          if (v328 <= 0)
          {
            goto LABEL_696;
          }
        }

        if (HIBYTE(v576) == 22)
        {
          goto LABEL_665;
        }

        HIBYTE(v576) = (HIBYTE(v576) + 1) & 0x7F;
        v332 = v575 + v330;
        *v332 = v325;
        v332[1] = 0;
        if (v324 == v329)
        {
          goto LABEL_659;
        }

LABEL_669:
        v335 = (v324 + 1);
        v336 = (v324 + 1);
        do
        {
          v337 = *v336++;
          v325 = v337;
          if (v337)
          {
            v338 = 1;
          }

          else
          {
            v338 = v335 == v329;
          }

          v335 = v336;
        }

        while (!v338);
        v324 = (v336 - 1);
        v328 -= v325;
      }

      while (v328 > 0);
LABEL_696:
      v343 = v325 + v328;
      if (SHIBYTE(v576) < 0)
      {
        v355 = ((v576 & 0x7FFFFFFFFFFFFFFFLL) - 1);
        if (v575[1].__locale_ == v355)
        {
          if ((v576 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_23C36FA14();
          }

LABEL_734:
          operator new();
        }

        v346 = v575[0].__locale_;
        v345 = v575[1].__locale_++;
      }

      else
      {
        v344 = HIBYTE(v576);
        if (HIBYTE(v576) == 22)
        {
          goto LABEL_734;
        }

LABEL_702:
        v345 = v344;
        HIBYTE(v576) = (v344 + 1) & 0x7F;
        v346 = v575;
      }

      v361 = &v346[v345];
      *v361 = v343;
      v361[1] = 0;
      if (SHIBYTE(v579) < 0)
      {
        operator delete(v578[0].__locale_);
      }

      *&v578[0].__locale_ = *&v575[0].__locale_;
      v579 = v576;
      v100 = v559;
      v320 = v560;
      LOBYTE(v103) = v558;
LABEL_755:
      v362 = HIDWORD(v100);
      v363 = HIBYTE(v579);
      if (SHIBYTE(v579) < 0)
      {
        v363 = v578[1].__locale_;
      }

      v364 = v363 + v109 + SHIDWORD(v581.__r_.__value_.__r.__words[0]) - v581.__r_.__value_.__r.__words[2] - (v363 != 0);
      v365 = v103 & 7;
      v366 = (v564 >> 32) - v364;
      if (v564 >> 32 <= v364)
      {
        v370 = 0;
        v366 = 0;
        v367 = HIDWORD(v100);
        v369 = v566;
      }

      else
      {
        if (v365 == 4)
        {
          LOBYTE(v367) = 48;
        }

        else
        {
          v367 = HIDWORD(v100);
        }

        if (v365 == 4)
        {
          v368 = 3;
        }

        else
        {
          v368 = v103 & 7;
        }

        v369 = v566;
        if (v368 > 1)
        {
          if (v368 == 3)
          {
            goto LABEL_769;
          }

          v370 = v366 - (v366 >> 1);
          v366 >>= 1;
        }

        else
        {
          if (v368)
          {
            v370 = v366;
            v366 = 0;
            goto LABEL_771;
          }

LABEL_769:
          v370 = 0;
        }
      }

LABEL_771:
      if (v365 == 4 && v369 != v581.__r_.__value_.__r.__words[2])
      {
        v371 = *v581.__r_.__value_.__r.__words[2];
        v372 = *(v288 + 32);
        if (!v372 || (v374 = *v372, v373 = v372[1], v372[1] = v373 + 1, v373 < v374))
        {
          v375 = *v288;
          v376 = *(v288 + 16);
          *(v288 + 16) = v376 + 1;
          *(v375 + v376) = v371;
          if (*(v288 + 16) == *(v288 + 8))
          {
            v377 = v366;
            (*(v288 + 24))(v288, 2);
            v366 = v377;
            v369 = v566;
          }
        }
      }

      v567 = v362 & 0xFFFFFF00 | v367;
      sub_23C3ABED4(v288, v366, v567);
      if (v365 != 4 && v369 != v581.__r_.__value_.__r.__words[2])
      {
        v378 = *v581.__r_.__value_.__r.__words[2];
        v379 = *(v288 + 32);
        if (!v379 || (v381 = *v379, v380 = v379[1], v379[1] = v380 + 1, v380 < v381))
        {
          v382 = *v288;
          v383 = *(v288 + 16);
          *(v288 + 16) = v383 + 1;
          *(v382 + v383) = v378;
          if (*(v288 + 16) == *(v288 + 8))
          {
            (*(v288 + 24))(v288, 2);
          }
        }
      }

      v384 = SHIBYTE(v579);
      v565 = v370;
      if ((SHIBYTE(v579) & 0x8000000000000000) != 0)
      {
        v384 = v578[1].__locale_;
        if (!v578[1].__locale_)
        {
          goto LABEL_814;
        }

        v385 = v578[0].__locale_;
LABEL_788:
        v386 = v384 + v385;
        v387 = (v562->__vftable[1].~facet_0)();
        v388 = v385 + 1;
        while (1)
        {
          v390 = v386 - 1;
          v389 = *(v386 - 1);
          v391 = *(v288 + 32);
          if (v391)
          {
            v393 = *v391;
            v392 = v391[1];
            if (*v391 - v392 >= v389)
            {
              v394 = *(v386 - 1);
            }

            else
            {
              v394 = *v391 - v392;
            }

            v391[1] = v392 + v389;
            if (v393 <= v392 || v394 == 0)
            {
              goto LABEL_798;
            }
          }

          else
          {
            v394 = *(v386 - 1);
          }

          v401 = *(v288 + 16);
          v402 = v369;
          do
          {
            v403 = *(v288 + 8) - v401;
            if (v403 < v394 + 1)
            {
              (*(v288 + 24))(v288, v394 + 2);
              v401 = *(v288 + 16);
              v403 = *(v288 + 8) - v401;
            }

            if (v403 >= v394)
            {
              v404 = v394;
            }

            else
            {
              v404 = v403;
            }

            if (v404)
            {
              memmove((*v288 + v401), v402, v404);
              v401 = *(v288 + 16);
            }

            v401 += v404;
            *(v288 + 16) = v401;
            v402 = (v402 + v404);
            v34 = v394 > v403;
            v394 -= v404;
          }

          while (v34);
LABEL_798:
          if (v386 == v388)
          {
            goto LABEL_820;
          }

          v369 = (v369 + *(v386 - 1));
          v396 = *(v288 + 32);
          if (v396)
          {
            v398 = *v396;
            v397 = v396[1];
            v396[1] = v397 + 1;
            --v386;
            if (v397 >= v398)
            {
              continue;
            }
          }

          v399 = *v288;
          v400 = *(v288 + 16);
          *(v288 + 16) = v400 + 1;
          *(v399 + v400) = v387;
          v386 = v390;
          if (*(v288 + 16) == *(v288 + 8))
          {
            (*(v288 + 24))(v288, 2);
            v386 = v390;
          }
        }
      }

      if (HIBYTE(v579))
      {
        v385 = v578;
        goto LABEL_788;
      }

LABEL_814:
      v405 = *(v288 + 32);
      if (v405)
      {
        v407 = *v405;
        v406 = v405[1];
        if (*v405 - v406 >= v320)
        {
          v408 = v320;
        }

        else
        {
          v408 = *v405 - v406;
        }

        v405[1] = v406 + v320;
        if (v407 <= v406 || !v408)
        {
          goto LABEL_820;
        }
      }

      else
      {
        v408 = v320;
      }

      v442 = *(v288 + 16);
      do
      {
        v443 = *(v288 + 8) - v442;
        if (v443 < v408 + 1)
        {
          (*(v288 + 24))(v288, v408 + 2);
          v442 = *(v288 + 16);
          v443 = *(v288 + 8) - v442;
        }

        if (v443 >= v408)
        {
          v444 = v408;
        }

        else
        {
          v444 = v443;
        }

        if (v444)
        {
          memmove((*v288 + v442), v369, v444);
          v442 = *(v288 + 16);
        }

        v442 += v444;
        *(v288 + 16) = v442;
        v369 = (v369 + v444);
        v34 = v408 > v443;
        v408 -= v444;
      }

      while (v34);
LABEL_820:
      v409 = v577.__locale_;
      v410 = v563;
      if (v577.__locale_ == v563)
      {
        v418 = __src;
        v283 = v561;
      }

      else
      {
        v411 = (v562->__vftable[1].~facet)(v562);
        v412 = *(v288 + 32);
        if (!v412 || (v414 = *v412, v413 = v412[1], v412[1] = v413 + 1, v413 < v414))
        {
          v415 = *v288;
          v416 = *(v288 + 16);
          *(v288 + 16) = v416 + 1;
          *(v415 + v416) = v411;
          if (*(v288 + 16) == *(v288 + 8))
          {
            (*(v288 + 24))(v288, 2);
          }
        }

        v417 = v409 + 1;
        v418 = __src;
        v419 = (__src - (v409 + 1));
        v420 = *(v288 + 32);
        if (v420)
        {
          v421 = *v420;
          v422 = v420[1];
          if (*v420 - v422 >= v419)
          {
            v423 = (__src - (v409 + 1));
          }

          else
          {
            v423 = (*v420 - v422);
          }

          v424 = &v419[v422];
          v420[1] = v424;
          if (v421 <= v422 || !v423)
          {
            v425 = SHIDWORD(v581.__r_.__value_.__r.__words[0]);
            v283 = v561;
            v410 = v563;
            goto LABEL_846;
          }
        }

        else
        {
          v423 = (__src - (v409 + 1));
        }

        v426 = *(v288 + 16);
        do
        {
          v427 = *(v288 + 8) - v426;
          if (v427 < (v423 + 1))
          {
            (*(v288 + 24))(v288, v423 + 2);
            v426 = *(v288 + 16);
            v427 = *(v288 + 8) - v426;
          }

          if (v427 >= v423)
          {
            v428 = v423;
          }

          else
          {
            v428 = v427;
          }

          if (v428)
          {
            memmove((*v288 + v426), v417, v428);
            v426 = *(v288 + 16);
          }

          v426 += v428;
          *(v288 + 16) = v426;
          v417 += v428;
          v34 = v423 > v427;
          v423 -= v428;
        }

        while (v34);
        v420 = *(v288 + 32);
        v425 = SHIDWORD(v581.__r_.__value_.__r.__words[0]);
        v283 = v561;
        v410 = v563;
        if (v420)
        {
          v421 = *v420;
          v424 = v420[1];
LABEL_846:
          v429 = v421 - v424;
          if (v421 - v424 >= v425)
          {
            v429 = v425;
          }

          v420[1] = &v424[v425];
          if (v421 > v424 && v429 != 0)
          {
            v426 = *(v288 + 16);
            v425 = v429;
            goto LABEL_882;
          }
        }

        else
        {
          do
          {
LABEL_882:
            v440 = *(v288 + 8) - v426;
            if (v440 < v425 + 1)
            {
              (*(v288 + 24))(v288, v425 + 2);
              v426 = *(v288 + 16);
              v440 = *(v288 + 8) - v426;
            }

            if (v440 >= v425)
            {
              v441 = v425;
            }

            else
            {
              v441 = v440;
            }

            if (v441)
            {
              memset((*v288 + v426), 48, v441);
              v426 = *(v288 + 16);
            }

            v426 += v441;
            *(v288 + 16) = v426;
            v34 = v425 > v440;
            v425 -= v441;
          }

          while (v34);
        }
      }

      if (v418 != v410)
      {
        v431 = v410 - v418;
        v432 = *(v288 + 32);
        if (v432)
        {
          v434 = *v432;
          v433 = v432[1];
          if (*v432 - v433 >= v431)
          {
            v435 = v410 - v418;
          }

          else
          {
            v435 = *v432 - v433;
          }

          v432[1] = v433 + v431;
          if (v434 > v433 && v435 != 0)
          {
            goto LABEL_870;
          }
        }

        else
        {
          v435 = v410 - v418;
LABEL_870:
          v437 = *(v288 + 16);
          do
          {
            v438 = *(v288 + 8) - v437;
            if (v438 < v435 + 1)
            {
              (*(v288 + 24))(v288, v435 + 2);
              v437 = *(v288 + 16);
              v438 = *(v288 + 8) - v437;
            }

            if (v438 >= v435)
            {
              v439 = v435;
            }

            else
            {
              v439 = v438;
            }

            if (v439)
            {
              memmove((*v288 + v437), v418, v439);
              v437 = *(v288 + 16);
            }

            v437 += v439;
            *(v288 + 16) = v437;
            v418 = (v418 + v439);
            v34 = v435 > v438;
            v435 -= v439;
          }

          while (v34);
        }
      }

      sub_23C3ABED4(v288, v565, v567);
      if (SHIBYTE(v579) < 0)
      {
        operator delete(v578[0].__locale_);
      }

      std::locale::~locale(&v573);
LABEL_866:
      if (v581.__r_.__value_.__l.__size_ >= 0x101)
      {
        operator delete(v581.__r_.__value_.__r.__words[2]);
      }

      *v283 = v288;
      return;
    case 0xAu:
      v72 = *a2;
      v575[0].__locale_ = 0;
      LODWORD(v575[1].__locale_) = -1;
      BYTE4(v575[1].__locale_) = 32;
      *(&v575[1].__locale_ + 5) = 0;
      HIBYTE(v575[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_257;
      }

      v73 = *a1;
      v74 = sub_23C3A9618(v575, *a1, 63);
      if (BYTE1(v575[0].__locale_) - 13 < 6)
      {
        if (LODWORD(v575[1].__locale_) != -1 || SWORD1(v575[0].__locale_) <= -1)
        {
          v76 = v575[1].__locale_;
        }

        else
        {
          v76 = 6;
        }

        LODWORD(v575[1].__locale_) = v76;
        goto LABEL_256;
      }

      if (BYTE1(v575[0].__locale_) <= 0xCu && ((1 << SBYTE1(v575[0].__locale_)) & 0x1801) != 0)
      {
LABEL_256:
        *v73 = v74;
LABEL_257:
        v123 = a1[1];
        v126 = sub_23C3AA640(v575, v123);
        v127 = v151;
        v128 = *&v72;
        if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          if (v151 == -1)
          {
            v153 = 1074;
          }

          else
          {
            v153 = v151;
          }

          v581.__r_.__value_.__r.__words[0] = v153;
          if (v153 >= 1075)
          {
            LODWORD(v581.__r_.__value_.__l.__data_) = 1074;
            HIDWORD(v581.__r_.__value_.__r.__words[0]) = v153 - 1074;
            v581.__r_.__value_.__l.__size_ = 1390;
            goto LABEL_264;
          }

          v154 = v153 + 316;
          v581.__r_.__value_.__l.__size_ = v154;
          if ((v153 + 316) >= 0x401)
          {
LABEL_264:
            operator new();
          }

          v158 = v151;
          v581.__r_.__value_.__r.__words[2] = &v582;
          if ((*&v72 & 0x8000000000000000) != 0)
          {
            v157 = 45;
          }

          else
          {
            v155 = (v126 >> 3) & 3;
            if (v155 == 2)
            {
              v157 = 43;
            }

            else
            {
              v156 = &v582;
              if (v155 != 3)
              {
                goto LABEL_272;
              }

              v157 = 32;
            }
          }

          v582 = v157;
          v156 = v583;
LABEL_272:
          v159 = fabs(v72);
          v160 = &v578[1];
          if (BYTE1(v126) > 0xEu)
          {
            if (BYTE1(v126) - 15 < 2)
            {
              v578[0].__locale_ = v156;
              v164 = MEMORY[0x23EECF370](v156, &v583[v154 - 1], 2, v151, v159);
              v579 = v164;
              *v580 = v164;
              if (v158)
              {
                v165 = v158 + 1;
              }

              else
              {
                v165 = 0;
              }

              v578[1].__locale_ = &v164[-v165];
              goto LABEL_1041;
            }

            if (BYTE1(v126) != 17)
            {
              HIDWORD(v581.__r_.__value_.__r.__words[0]) = 0;
              v578[0].__locale_ = v156;
              v206 = MEMORY[0x23EECF370](v156, &v583[v154 - 1], 3, v151, v159);
              *v580 = v206;
              v207 = (v156 + 1);
              if (v156 + 1 == v206)
              {
                v578[1].__locale_ = v206;
                v160 = &v579;
                v212 = v206;
              }

              else
              {
                v208 = v206 - v207;
                if (v206 - v207 < 4)
                {
LABEL_394:
                  v579 = v206;
                  v211 = memchr(v207, 46, v208);
                  if (v211)
                  {
                    v212 = v211;
                  }

                  else
                  {
                    v212 = v206;
                  }
                }

                else
                {
                  v209 = 6;
                  if (v208 < 6)
                  {
                    v209 = v206 - v207;
                  }

                  v210 = -v209;
                  while (*(v206 + v210) != 101)
                  {
                    if (++v210 == -3)
                    {
                      goto LABEL_394;
                    }
                  }

                  v579 = v206 + v210;
                  if (*v207 == 46)
                  {
                    v212 = (v156 + 1);
                  }

                  else
                  {
                    v212 = v206;
                  }
                }
              }

              v160->__locale_ = v212;
              v218 = v579;
              if (v579 == v206)
              {
                goto LABEL_1041;
              }

LABEL_1040:
              *v218 = 69;
              goto LABEL_1041;
            }

            HIDWORD(v581.__r_.__value_.__r.__words[0]) = 0;
            v578[0].__locale_ = v156;
            v166 = MEMORY[0x23EECF370](v156, &v583[v154 - 1], 3, v151, v159);
            *v580 = v166;
            v167 = (v156 + 1);
            if (v156 + 1 != v166)
            {
              v168 = v166 - v167;
              if (v166 - v167 >= 4)
              {
                v169 = 6;
                if (v168 < 6)
                {
                  v169 = v166 - v167;
                }

                v170 = -v169;
                while (v166[v170] != 101)
                {
                  if (++v170 == -3)
                  {
                    goto LABEL_307;
                  }
                }

                goto LABEL_557;
              }

LABEL_307:
              v579 = v166;
              v172 = v166;
              v173 = memchr(v167, 46, v168);
              if (v173)
              {
                v174 = v173;
              }

              else
              {
                v174 = v172;
              }

              v578[1].__locale_ = v174;
              goto LABEL_1041;
            }
          }

          else
          {
            if (BYTE1(v126) > 0xBu)
            {
              if (BYTE1(v126) != 12)
              {
                if (BYTE1(v126) == 13)
                {
                  v578[0].__locale_ = v156;
                  v161 = MEMORY[0x23EECF370](v156, &v583[v154 - 1], 1, v151, v159);
                  *v580 = v161;
                  if (v156[1] == 46)
                  {
                    v578[1].__locale_ = (v156 + 1);
                    v162 = v161 - v156 - 2;
                    if (v162 < 4)
                    {
LABEL_283:
                      v579 = v161;
                    }

                    else
                    {
                      if (v162 >= 6)
                      {
                        v162 = 6;
                      }

                      v163 = -v162;
                      while (v161[v163] != 101)
                      {
                        if (++v163 == -3)
                        {
                          goto LABEL_283;
                        }
                      }

                      v579 = &v161[v163];
                    }
                  }

                  else
                  {
                    v578[1].__locale_ = v161;
                    v579 = v156 + 1;
                  }

                  goto LABEL_1041;
                }

                v578[0].__locale_ = v156;
                v217 = MEMORY[0x23EECF370](v156, &v583[v154 - 1], 1, v151, v159);
                *v580 = v217;
                v218 = v156 + 1;
                if (v156[1] == 46)
                {
                  v578[1].__locale_ = (v156 + 1);
                  v219 = v217 - v156 - 2;
                  if (v219 < 4)
                  {
LABEL_412:
                    v218 = v217;
                    v579 = v217;
                  }

                  else
                  {
                    if (v219 >= 6)
                    {
                      v219 = 6;
                    }

                    v220 = -v219;
                    while (v217[v220] != 101)
                    {
                      if (++v220 == -3)
                      {
                        goto LABEL_412;
                      }
                    }

                    v218 = &v217[v220];
                    v579 = v218;
                  }
                }

                else
                {
                  v578[1].__locale_ = v217;
                  v579 = v156 + 1;
                }

                goto LABEL_1040;
              }

              v578[0].__locale_ = v156;
              if ((v151 & 0x80000000) != 0 || v151 == -1)
              {
                v198 = std::to_chars();
              }

              else
              {
                v198 = MEMORY[0x23EECF370](v156, &v583[v154 - 1], 4, v151, v159);
              }

              *v580 = v198;
              v234 = v156 + 1;
              if (v156[1] == 46)
              {
                v235 = v198 - 2;
                v236 = memchr(v198 - 6, 112, 4uLL);
                if (v236)
                {
                  v237 = v236;
                }

                else
                {
                  v237 = v235;
                }

                v578[1].__locale_ = (v156 + 1);
                v579 = v237;
                v234 = v237;
                if (v237 == v156)
                {
LABEL_498:
                  *v234 = 80;
                  goto LABEL_1041;
                }
              }

              else
              {
                v578[1].__locale_ = v198;
                v579 = v156 + 1;
              }

              do
              {
                v241 = *v156;
                if ((v241 - 97) < 6)
                {
                  LOBYTE(v241) = v241 - 32;
                }

                *v156++ = v241;
              }

              while (v156 != v234);
              goto LABEL_498;
            }

            if (BYTE1(v126))
            {
              v578[0].__locale_ = v156;
              if ((v151 & 0x80000000) != 0)
              {
                v222 = std::to_chars();
              }

              else
              {
                v222 = MEMORY[0x23EECF370](v156, &v583[v154 - 1], 4, v151, v159);
              }

              *v580 = v222;
              v265 = v156[1];
              v264 = (v156 + 1);
              if (v265 == 46)
              {
                v266 = (v222 - 2);
                v267 = memchr(v222 - 6, 112, 4uLL);
                v222 = v264;
                if (v267)
                {
                  v264 = v267;
                }

                else
                {
                  v264 = v266;
                }
              }

              v578[1].__locale_ = v222;
              v579 = v264;
              goto LABEL_1041;
            }

            if ((v151 & 0x80000000) != 0)
            {
              v578[0].__locale_ = v156;
              v259 = std::to_chars(v156, &v583[v154 - 1], v152, v159);
              v260 = v259;
              *v580 = v259;
              v261 = v259 - v156;
              if (v259 - v156 < 4)
              {
LABEL_539:
                v263 = v259;
              }

              else
              {
                if (v261 >= 6)
                {
                  v261 = 6;
                }

                v262 = -v261;
                while (*(v259 + v262) != 101)
                {
                  if (++v262 == -3)
                  {
                    goto LABEL_539;
                  }
                }

                v263 = (v259 + v262);
              }

              v579 = v263;
              v556 = memchr(v156 + 1, 46, v263 - (v156 + 1));
              if (v556)
              {
                v557 = v556;
              }

              else
              {
                v557 = v263;
              }

              if (v557 == v263)
              {
                v557 = v260;
              }

              v578[1].__locale_ = v557;
              goto LABEL_1041;
            }

            HIDWORD(v581.__r_.__value_.__r.__words[0]) = 0;
            v578[0].__locale_ = v156;
            v166 = MEMORY[0x23EECF370](v156, &v583[v154 - 1], 3, v151, v159);
            *v580 = v166;
            v167 = (v156 + 1);
            if (v156 + 1 != v166)
            {
              v168 = v166 - v167;
              if (v166 - v167 >= 4)
              {
                v171 = 6;
                if (v168 < 6)
                {
                  v171 = v166 - v167;
                }

                v170 = -v171;
                while (v166[v170] != 101)
                {
                  if (++v170 == -3)
                  {
                    goto LABEL_307;
                  }
                }

LABEL_557:
                v579 = &v166[v170];
                if (*v167 != 46)
                {
                  v167 = v166;
                }

                v578[1].__locale_ = v167;
                goto LABEL_1041;
              }

              goto LABEL_307;
            }
          }

          v578[1].__locale_ = v166;
          v579 = v166;
LABEL_1041:
          if ((v126 & 0x20) != 0)
          {
            v502 = v578[1].__locale_;
            v503 = *v580;
            if (v578[1].__locale_ == *v580)
            {
              v505 = ++*v580;
              *v503 = 46;
              v504 = v579;
              if (v579 != v502)
              {
                if (v579 + 1 == v502)
                {
                  v506 = *v579;
                  *v579 = *(v579 + 1);
                  *(v504 + 1) = v506;
                }

                else
                {
                  memmove(&v505[-(v502 - v579)], v579, v502 - v579);
                  *v504 = 46;
                }
              }

              v578[1].__locale_ = v504;
              v579 = (v504 + 1);
              v503 = v505;
            }

            else
            {
              v504 = v578[1].__locale_;
            }

            if (BYTE1(v126) - 17 <= 1)
            {
              if (v127 <= 1)
              {
                v507 = 1;
              }

              else
              {
                v507 = v127;
              }

              if ((v127 & 0x80000000) != 0)
              {
                v507 = 6;
              }

              if (v579 == v503)
              {
                v508 = LODWORD(v578[0].__locale_) - v504;
              }

              else
              {
                v508 = -1;
              }

              v509 = v508 + v507;
              v510 = v579 + ~v504;
              if (v510 < v509)
              {
                HIDWORD(v581.__r_.__value_.__r.__words[0]) += v509 - v510;
              }
            }
          }

          if ((v126 & 0x40) == 0)
          {
            v454 = *v580;
            v455 = v581.__r_.__value_.__r.__words[2];
            v456 = *v580 - v581.__r_.__value_.__r.__words[2];
            v457 = SHIDWORD(v581.__r_.__value_.__r.__words[0]);
            if ((*v580 - v581.__r_.__value_.__r.__words[2] + SHIDWORD(v581.__r_.__value_.__r.__words[0])) < v126 >> 32)
            {
              v458 = *v123;
              if ((v126 & 7) == 4)
              {
                if (v581.__r_.__value_.__r.__words[2] != v578[0].__locale_)
                {
                  v511 = *v581.__r_.__value_.__r.__words[2];
                  v512 = *(v458 + 32);
                  if (!v512 || (v514 = *v512, v513 = v512[1], v512[1] = v513 + 1, v513 < v514))
                  {
                    v515 = *v458;
                    v516 = *(v458 + 16);
                    *(v458 + 16) = v516 + 1;
                    *(v515 + v516) = v511;
                    if (*(v458 + 16) == *(v458 + 8))
                    {
                      (*(v458 + 24))(v458, 2);
                    }
                  }

                  ++v455;
                }

                v517 = v126 & 0xB8 | 3;
                v518 = 48;
              }

              else
              {
                v517 = v126;
                v518 = BYTE4(v127);
              }

              v484 = v126 & 0xFFFFFFFFFFFFFF00 | v517;
              v485 = v127 & 0xFFFFFF00FFFFFFFFLL | (v518 << 32);
              if (v457)
              {
LABEL_968:
                sub_23C3B0328(v455, v454, v458, v484, v485, v456, v579, v457);
LABEL_1108:
                if (v581.__r_.__value_.__l.__size_ >= 0x401)
                {
                  operator delete(v581.__r_.__value_.__r.__words[2]);
                }

                *v123 = v458;
                return;
              }

LABEL_990:
              sub_23C3AAB0C(v455, v454 - v455, v458, v484, v485, v456);
              goto LABEL_1108;
            }

            if (HIDWORD(v581.__r_.__value_.__r.__words[0]))
            {
              v520 = v579;
              if (v579 != *v580)
              {
                v458 = *v123;
                v521 = v579 - v581.__r_.__value_.__r.__words[2];
                v522 = *(*v123 + 32);
                if (v522)
                {
                  v523 = *v522;
                  v524 = v522[1];
                  if (*v522 - v524 >= v521)
                  {
                    v525 = v579 - v581.__r_.__value_.__r.__words[2];
                  }

                  else
                  {
                    v525 = (*v522 - v524);
                  }

                  v34 = v523 > v524;
                  v526 = &v521[v524];
                  v522[1] = v526;
                  if (!v34 || v525 == 0)
                  {
                    goto LABEL_1143;
                  }
                }

                else
                {
                  v525 = v579 - v581.__r_.__value_.__r.__words[2];
                }

                v540 = *(v458 + 16);
                do
                {
                  v541 = *(v458 + 8) - v540;
                  if (v541 < (v525 + 1))
                  {
                    (*(v458 + 24))(v458, v525 + 2);
                    v540 = *(v458 + 16);
                    v541 = *(v458 + 8) - v540;
                  }

                  if (v541 >= v525)
                  {
                    v542 = v525;
                  }

                  else
                  {
                    v542 = v541;
                  }

                  if (v542)
                  {
                    memmove((*v458 + v540), v455, v542);
                    v540 = *(v458 + 16);
                  }

                  v540 += v542;
                  *(v458 + 16) = v540;
                  v455 += v542;
                  v34 = v525 > v541;
                  v525 -= v542;
                }

                while (v34);
                v522 = *(v458 + 32);
                if (!v522)
                {
                  goto LABEL_1150;
                }

                v523 = *v522;
                v526 = v522[1];
LABEL_1143:
                v543 = &v526[v457];
                v522[1] = &v526[v457];
                v351 = v523 >= v526;
                v544 = v523 - v526;
                if (v544 == 0 || !v351)
                {
                  v547 = v454 - v520;
                  goto LABEL_1159;
                }

                if (v544 < v457)
                {
                  v457 = v544;
                }

                v540 = *(v458 + 16);
                do
                {
LABEL_1150:
                  v545 = *(v458 + 8) - v540;
                  if (v545 < v457 + 1)
                  {
                    (*(v458 + 24))(v458, v457 + 2);
                    v540 = *(v458 + 16);
                    v545 = *(v458 + 8) - v540;
                  }

                  if (v545 >= v457)
                  {
                    v546 = v457;
                  }

                  else
                  {
                    v546 = v545;
                  }

                  if (v546)
                  {
                    memset((*v458 + v540), 48, v546);
                    v540 = *(v458 + 16);
                  }

                  v540 += v546;
                  *(v458 + 16) = v540;
                  v34 = v457 > v545;
                  v457 -= v546;
                }

                while (v34);
                v522 = *(v458 + 32);
                v547 = v454 - v520;
                if (!v522)
                {
                  do
                  {
LABEL_1168:
                    v550 = *(v458 + 8) - v540;
                    if (v550 < v547 + 1)
                    {
                      (*(v458 + 24))(v458, v547 + 2);
                      v540 = *(v458 + 16);
                      v550 = *(v458 + 8) - v540;
                    }

                    if (v550 >= v547)
                    {
                      v551 = v547;
                    }

                    else
                    {
                      v551 = v550;
                    }

                    if (v551)
                    {
                      memmove((*v458 + v540), v520, v551);
                      v540 = *(v458 + 16);
                    }

                    v540 += v551;
                    *(v458 + 16) = v540;
                    v520 += v551;
                    v34 = v547 > v550;
                    v547 -= v551;
                  }

                  while (v34);
                  goto LABEL_1108;
                }

                v523 = *v522;
                v543 = v522[1];
LABEL_1159:
                v548 = v523 - v543;
                if (v523 - v543 >= v547)
                {
                  v548 = v547;
                }

                v522[1] = &v543[v547];
                if (v523 <= v543 || v548 == 0)
                {
                  goto LABEL_1108;
                }

                v540 = *(v458 + 16);
                v547 = v548;
                goto LABEL_1168;
              }
            }

            v458 = *v123;
            v528 = *(*v123 + 32);
            if (!v528)
            {
              goto LABEL_1092;
            }

            v529 = *v528;
            v530 = v528[1];
            v531 = v530 + v456;
            if (*v528 - v530 < v456)
            {
              v456 = *v528 - v530;
            }

            v528[1] = v531;
            if (v529 > v530 && v456 != 0)
            {
LABEL_1092:
              v533 = *(v458 + 16);
              do
              {
                v534 = *(v458 + 8) - v533;
                if (v534 < v456 + 1)
                {
                  (*(v458 + 24))(v458, v456 + 2);
                  v533 = *(v458 + 16);
                  v534 = *(v458 + 8) - v533;
                }

                if (v534 >= v456)
                {
                  v535 = v456;
                }

                else
                {
                  v535 = v534;
                }

                if (v535)
                {
                  memmove((*v458 + v533), v455, v535);
                  v533 = *(v458 + 16);
                }

                v533 += v535;
                *(v458 + 16) = v533;
                v455 += v535;
                v34 = v456 > v534;
                v456 -= v535;
              }

              while (v34);
              v528 = *(v458 + 32);
              if (!v528)
              {
                do
                {
LABEL_1122:
                  v538 = *(v458 + 8) - v533;
                  if (v538 < v457 + 1)
                  {
                    (*(v458 + 24))(v458, v457 + 2);
                    v533 = *(v458 + 16);
                    v538 = *(v458 + 8) - v533;
                  }

                  if (v538 >= v457)
                  {
                    v539 = v457;
                  }

                  else
                  {
                    v539 = v538;
                  }

                  if (v539)
                  {
                    memset((*v458 + v533), 48, v539);
                    v533 = *(v458 + 16);
                  }

                  v533 += v539;
                  *(v458 + 16) = v533;
                  v34 = v457 > v538;
                  v457 -= v539;
                }

                while (v34);
                goto LABEL_1108;
              }

              v529 = *v528;
              v531 = v528[1];
            }

            v536 = v529 - v531;
            if (v529 - v531 >= v457)
            {
              v536 = v457;
            }

            v528[1] = v531 + v457;
            if (v529 <= v531 || v536 == 0)
            {
              goto LABEL_1108;
            }

            v533 = *(v458 + 16);
            v457 = v536;
            goto LABEL_1122;
          }

          v458 = *v123;
          if ((v123[5] & 1) == 0)
          {
            MEMORY[0x23EECF2D0](&v568);
            v519 = (v123 + 4);
            if (*(v123 + 40) == 1)
            {
              std::locale::operator=(v519, &v568);
            }

            else
            {
              std::locale::locale(v519, &v568);
              *(v123 + 40) = 1;
            }

            std::locale::~locale(&v568);
          }

LABEL_1107:
          std::locale::locale(&v577, v123 + 4);
          sub_23C3B0618(v458, &v581, &v578[0].__locale_, &v577, v126, v127);
          std::locale::~locale(&v577);
          goto LABEL_1108;
        }

LABEL_1202:
        *v123 = sub_23C3B01E0(*v123, v126, v127, v128 < 0, 0);
        return;
      }

      goto LABEL_1217;
    case 0xBu:
      v62 = *a2;
      v575[0].__locale_ = 0;
      LODWORD(v575[1].__locale_) = -1;
      BYTE4(v575[1].__locale_) = 32;
      *(&v575[1].__locale_ + 5) = 0;
      HIBYTE(v575[1].__locale_) = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_200;
      }

      v63 = *a1;
      v64 = sub_23C3A9618(v575, *a1, 63);
      if (BYTE1(v575[0].__locale_) - 13 >= 6)
      {
        if (BYTE1(v575[0].__locale_) > 0xCu || ((1 << SBYTE1(v575[0].__locale_)) & 0x1801) == 0)
        {
LABEL_1217:
          sub_23C3A9EF8("a floating-point");
        }
      }

      else
      {
        if (LODWORD(v575[1].__locale_) != -1 || SWORD1(v575[0].__locale_) <= -1)
        {
          v66 = v575[1].__locale_;
        }

        else
        {
          v66 = 6;
        }

        LODWORD(v575[1].__locale_) = v66;
      }

      *v63 = v64;
LABEL_200:
      v123 = a1[1];
      v126 = sub_23C3AA640(v575, v123);
      v127 = v124;
      v128 = *&v62;
      if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_1202;
      }

      if (v124 == -1)
      {
        v129 = 1074;
      }

      else
      {
        v129 = v124;
      }

      v581.__r_.__value_.__r.__words[0] = v129;
      if (v129 >= 1075)
      {
        LODWORD(v581.__r_.__value_.__l.__data_) = 1074;
        HIDWORD(v581.__r_.__value_.__r.__words[0]) = v129 - 1074;
        v581.__r_.__value_.__l.__size_ = 1390;
        goto LABEL_207;
      }

      v130 = v129 + 316;
      v581.__r_.__value_.__l.__size_ = v130;
      if ((v129 + 316) >= 0x401)
      {
LABEL_207:
        operator new();
      }

      v134 = v124;
      v581.__r_.__value_.__r.__words[2] = &v582;
      if ((*&v62 & 0x8000000000000000) != 0)
      {
        v133 = 45;
      }

      else
      {
        v131 = (v126 >> 3) & 3;
        if (v131 == 2)
        {
          v133 = 43;
        }

        else
        {
          v132 = &v582;
          if (v131 != 3)
          {
            goto LABEL_215;
          }

          v133 = 32;
        }
      }

      v582 = v133;
      v132 = v583;
LABEL_215:
      v135 = fabs(v62);
      v136 = &v578[1];
      if (BYTE1(v126) > 0xEu)
      {
        if (BYTE1(v126) - 15 < 2)
        {
          v578[0].__locale_ = v132;
          v140 = MEMORY[0x23EECF3A0](v132, &v583[v130 - 1], 2, v124, v135);
          v579 = v140;
          *v580 = v140;
          if (v134)
          {
            v141 = v134 + 1;
          }

          else
          {
            v141 = 0;
          }

          v578[1].__locale_ = &v140[-v141];
          goto LABEL_905;
        }

        if (BYTE1(v126) == 17)
        {
          HIDWORD(v581.__r_.__value_.__r.__words[0]) = 0;
          v578[0].__locale_ = v132;
          v142 = MEMORY[0x23EECF3A0](v132, &v583[v130 - 1], 3, v124, v135);
          *v580 = v142;
          v143 = (v132 + 1);
          if (v132 + 1 != v142)
          {
            v144 = v142 - v143;
            if (v142 - v143 >= 4)
            {
              v145 = 6;
              if (v144 < 6)
              {
                v145 = v142 - v143;
              }

              v146 = -v145;
              while (v142[v146] != 101)
              {
                if (++v146 == -3)
                {
                  goto LABEL_250;
                }
              }

              goto LABEL_554;
            }

LABEL_250:
            v579 = v142;
            v148 = v142;
            v149 = memchr(v143, 46, v144);
            if (v149)
            {
              v150 = v149;
            }

            else
            {
              v150 = v148;
            }

            v578[1].__locale_ = v150;
            goto LABEL_905;
          }

LABEL_430:
          v578[1].__locale_ = v142;
          v579 = v142;
          goto LABEL_905;
        }

        HIDWORD(v581.__r_.__value_.__r.__words[0]) = 0;
        v578[0].__locale_ = v132;
        v199 = MEMORY[0x23EECF3A0](v132, &v583[v130 - 1], 3, v124, v135);
        *v580 = v199;
        v200 = (v132 + 1);
        if (v132 + 1 == v199)
        {
          v578[1].__locale_ = v199;
          v136 = &v579;
          v205 = v199;
        }

        else
        {
          v201 = v199 - v200;
          if (v199 - v200 < 4)
          {
LABEL_384:
            v579 = v199;
            v204 = memchr(v200, 46, v201);
            if (v204)
            {
              v205 = v204;
            }

            else
            {
              v205 = v199;
            }
          }

          else
          {
            v202 = 6;
            if (v201 < 6)
            {
              v202 = v199 - v200;
            }

            v203 = -v202;
            while (*(v199 + v203) != 101)
            {
              if (++v203 == -3)
              {
                goto LABEL_384;
              }
            }

            v579 = v199 + v203;
            if (*v200 == 46)
            {
              v205 = (v132 + 1);
            }

            else
            {
              v205 = v199;
            }
          }
        }

        v136->__locale_ = v205;
        v214 = v579;
        if (v579 != v199)
        {
          goto LABEL_904;
        }
      }

      else
      {
        if (BYTE1(v126) > 0xBu)
        {
          if (BYTE1(v126) != 12)
          {
            if (BYTE1(v126) == 13)
            {
              v578[0].__locale_ = v132;
              v137 = MEMORY[0x23EECF3A0](v132, &v583[v130 - 1], 1, v124, v135);
              *v580 = v137;
              if (v132[1] == 46)
              {
                v578[1].__locale_ = (v132 + 1);
                v138 = v137 - v132 - 2;
                if (v138 < 4)
                {
LABEL_226:
                  v579 = v137;
                }

                else
                {
                  if (v138 >= 6)
                  {
                    v138 = 6;
                  }

                  v139 = -v138;
                  while (v137[v139] != 101)
                  {
                    if (++v139 == -3)
                    {
                      goto LABEL_226;
                    }
                  }

                  v579 = &v137[v139];
                }
              }

              else
              {
                v578[1].__locale_ = v137;
                v579 = v132 + 1;
              }

              goto LABEL_905;
            }

            v578[0].__locale_ = v132;
            v213 = MEMORY[0x23EECF3A0](v132, &v583[v130 - 1], 1, v124, v135);
            *v580 = v213;
            v214 = v132 + 1;
            if (v132[1] == 46)
            {
              v578[1].__locale_ = (v132 + 1);
              v215 = v213 - v132 - 2;
              if (v215 < 4)
              {
LABEL_404:
                v214 = v213;
                v579 = v213;
              }

              else
              {
                if (v215 >= 6)
                {
                  v215 = 6;
                }

                v216 = -v215;
                while (v213[v216] != 101)
                {
                  if (++v216 == -3)
                  {
                    goto LABEL_404;
                  }
                }

                v214 = &v213[v216];
                v579 = v214;
              }
            }

            else
            {
              v578[1].__locale_ = v213;
              v579 = v132 + 1;
            }

LABEL_904:
            *v214 = 69;
            goto LABEL_905;
          }

          v578[0].__locale_ = v132;
          if ((v124 & 0x80000000) != 0 || v124 == -1)
          {
            v197 = std::to_chars();
          }

          else
          {
            v197 = MEMORY[0x23EECF3A0](v132, &v583[v130 - 1], 4, v124, v135);
          }

          *v580 = v197;
          v230 = v132 + 1;
          if (v132[1] == 46)
          {
            v231 = v197 - 2;
            v232 = memchr(v197 - 6, 112, 4uLL);
            if (v232)
            {
              v233 = v232;
            }

            else
            {
              v233 = v231;
            }

            v578[1].__locale_ = (v132 + 1);
            v579 = v233;
            v230 = v233;
            if (v233 == v132)
            {
LABEL_493:
              *v230 = 80;
              goto LABEL_905;
            }
          }

          else
          {
            v578[1].__locale_ = v197;
            v579 = v132 + 1;
          }

          do
          {
            v240 = *v132;
            if ((v240 - 97) < 6)
            {
              LOBYTE(v240) = v240 - 32;
            }

            *v132++ = v240;
          }

          while (v132 != v230);
          goto LABEL_493;
        }

        if (BYTE1(v126))
        {
          v578[0].__locale_ = v132;
          if ((v124 & 0x80000000) != 0)
          {
            v221 = std::to_chars();
          }

          else
          {
            v221 = MEMORY[0x23EECF3A0](v132, &v583[v130 - 1], 4, v124, v135);
          }

          *v580 = v221;
          v256 = v132[1];
          v255 = (v132 + 1);
          if (v256 == 46)
          {
            v257 = (v221 - 2);
            v258 = memchr(v221 - 6, 112, 4uLL);
            v221 = v255;
            if (v258)
            {
              v255 = v258;
            }

            else
            {
              v255 = v257;
            }
          }

          v578[1].__locale_ = v221;
          v579 = v255;
          goto LABEL_905;
        }

        if ((v124 & 0x80000000) == 0)
        {
          HIDWORD(v581.__r_.__value_.__r.__words[0]) = 0;
          v578[0].__locale_ = v132;
          v142 = MEMORY[0x23EECF3A0](v132, &v583[v130 - 1], 3, v124, v135);
          *v580 = v142;
          v143 = (v132 + 1);
          if (v132 + 1 != v142)
          {
            v144 = v142 - v143;
            if (v142 - v143 >= 4)
            {
              v147 = 6;
              if (v144 < 6)
              {
                v147 = v142 - v143;
              }

              v146 = -v147;
              while (v142[v146] != 101)
              {
                if (++v146 == -3)
                {
                  goto LABEL_250;
                }
              }

LABEL_554:
              v579 = &v142[v146];
              if (*v143 != 46)
              {
                v143 = v142;
              }

              v578[1].__locale_ = v143;
              goto LABEL_905;
            }

            goto LABEL_250;
          }

          goto LABEL_430;
        }

        v578[0].__locale_ = v132;
        v250 = std::to_chars(v132, &v583[v130 - 1], v125, v135);
        v251 = v250;
        *v580 = v250;
        v252 = v250 - v132;
        if (v250 - v132 < 4)
        {
LABEL_526:
          v254 = v250;
        }

        else
        {
          if (v252 >= 6)
          {
            v252 = 6;
          }

          v253 = -v252;
          while (*(v250 + v253) != 101)
          {
            if (++v253 == -3)
            {
              goto LABEL_526;
            }
          }

          v254 = (v250 + v253);
        }

        v579 = v254;
        v554 = memchr(v132 + 1, 46, v254 - (v132 + 1));
        if (v554)
        {
          v555 = v554;
        }

        else
        {
          v555 = v254;
        }

        if (v555 == v254)
        {
          v555 = v251;
        }

        v578[1].__locale_ = v555;
      }

LABEL_905:
      if ((v126 & 0x20) != 0)
      {
        v445 = v578[1].__locale_;
        v446 = *v580;
        if (v578[1].__locale_ == *v580)
        {
          v448 = ++*v580;
          *v446 = 46;
          v447 = v579;
          if (v579 != v445)
          {
            if (v579 + 1 == v445)
            {
              v449 = *v579;
              *v579 = *(v579 + 1);
              *(v447 + 1) = v449;
            }

            else
            {
              memmove(&v448[-(v445 - v579)], v579, v445 - v579);
              *v447 = 46;
            }
          }

          v578[1].__locale_ = v447;
          v579 = (v447 + 1);
          v446 = v448;
        }

        else
        {
          v447 = v578[1].__locale_;
        }

        if (BYTE1(v126) - 17 <= 1)
        {
          if (v127 <= 1)
          {
            v450 = 1;
          }

          else
          {
            v450 = v127;
          }

          if ((v127 & 0x80000000) != 0)
          {
            v450 = 6;
          }

          if (v579 == v446)
          {
            v451 = LODWORD(v578[0].__locale_) - v447;
          }

          else
          {
            v451 = -1;
          }

          v452 = v451 + v450;
          v453 = v579 + ~v447;
          if (v453 < v452)
          {
            HIDWORD(v581.__r_.__value_.__r.__words[0]) += v452 - v453;
          }
        }
      }

      if ((v126 & 0x40) != 0)
      {
        v458 = *v123;
        if ((v123[5] & 1) == 0)
        {
          MEMORY[0x23EECF2D0](&v568);
          v467 = (v123 + 4);
          if (*(v123 + 40) == 1)
          {
            std::locale::operator=(v467, &v568);
          }

          else
          {
            std::locale::locale(v467, &v568);
            *(v123 + 40) = 1;
          }

          std::locale::~locale(&v568);
        }

        goto LABEL_1107;
      }

      v454 = *v580;
      v455 = v581.__r_.__value_.__r.__words[2];
      v456 = *v580 - v581.__r_.__value_.__r.__words[2];
      v457 = SHIDWORD(v581.__r_.__value_.__r.__words[0]);
      if ((*v580 - v581.__r_.__value_.__r.__words[2] + SHIDWORD(v581.__r_.__value_.__r.__words[0])) < v126 >> 32)
      {
        v458 = *v123;
        if ((v126 & 7) == 4)
        {
          if (v581.__r_.__value_.__r.__words[2] != v578[0].__locale_)
          {
            v459 = *v581.__r_.__value_.__r.__words[2];
            v460 = *(v458 + 32);
            if (!v460 || (v462 = *v460, v461 = v460[1], v460[1] = v461 + 1, v461 < v462))
            {
              v463 = *v458;
              v464 = *(v458 + 16);
              *(v458 + 16) = v464 + 1;
              *(v463 + v464) = v459;
              if (*(v458 + 16) == *(v458 + 8))
              {
                (*(v458 + 24))(v458, 2);
              }
            }

            ++v455;
          }

          v465 = v126 & 0xB8 | 3;
          v466 = 48;
        }

        else
        {
          v465 = v126;
          v466 = BYTE4(v127);
        }

        v484 = v126 & 0xFFFFFFFFFFFFFF00 | v465;
        v485 = v127 & 0xFFFFFF00FFFFFFFFLL | (v466 << 32);
        if (v457)
        {
          goto LABEL_968;
        }

        goto LABEL_990;
      }

      if (HIDWORD(v581.__r_.__value_.__r.__words[0]))
      {
        v468 = v579;
        if (v579 != *v580)
        {
          v458 = *v123;
          v469 = v579 - v581.__r_.__value_.__r.__words[2];
          v470 = *(*v123 + 32);
          if (v470)
          {
            v471 = *v470;
            v472 = v470[1];
            if (*v470 - v472 >= v469)
            {
              v473 = v579 - v581.__r_.__value_.__r.__words[2];
            }

            else
            {
              v473 = (*v470 - v472);
            }

            v34 = v471 > v472;
            v474 = &v469[v472];
            v470[1] = v474;
            if (!v34 || v473 == 0)
            {
              goto LABEL_1004;
            }
          }

          else
          {
            v473 = v579 - v581.__r_.__value_.__r.__words[2];
          }

          v490 = *(v458 + 16);
          do
          {
            v491 = *(v458 + 8) - v490;
            if (v491 < (v473 + 1))
            {
              (*(v458 + 24))(v458, v473 + 2);
              v490 = *(v458 + 16);
              v491 = *(v458 + 8) - v490;
            }

            if (v491 >= v473)
            {
              v492 = v473;
            }

            else
            {
              v492 = v491;
            }

            if (v492)
            {
              memmove((*v458 + v490), v455, v492);
              v490 = *(v458 + 16);
            }

            v490 += v492;
            *(v458 + 16) = v490;
            v455 += v492;
            v34 = v473 > v491;
            v473 -= v492;
          }

          while (v34);
          v470 = *(v458 + 32);
          if (!v470)
          {
            goto LABEL_1011;
          }

          v471 = *v470;
          v474 = v470[1];
LABEL_1004:
          v493 = &v474[v457];
          v470[1] = &v474[v457];
          v351 = v471 >= v474;
          v494 = v471 - v474;
          if (v494 == 0 || !v351)
          {
            v497 = v454 - v468;
            goto LABEL_1020;
          }

          if (v494 < v457)
          {
            v457 = v494;
          }

          v490 = *(v458 + 16);
          do
          {
LABEL_1011:
            v495 = *(v458 + 8) - v490;
            if (v495 < v457 + 1)
            {
              (*(v458 + 24))(v458, v457 + 2);
              v490 = *(v458 + 16);
              v495 = *(v458 + 8) - v490;
            }

            if (v495 >= v457)
            {
              v496 = v457;
            }

            else
            {
              v496 = v495;
            }

            if (v496)
            {
              memset((*v458 + v490), 48, v496);
              v490 = *(v458 + 16);
            }

            v490 += v496;
            *(v458 + 16) = v490;
            v34 = v457 > v495;
            v457 -= v496;
          }

          while (v34);
          v470 = *(v458 + 32);
          v497 = v454 - v468;
          if (!v470)
          {
            do
            {
LABEL_1029:
              v500 = *(v458 + 8) - v490;
              if (v500 < v497 + 1)
              {
                (*(v458 + 24))(v458, v497 + 2);
                v490 = *(v458 + 16);
                v500 = *(v458 + 8) - v490;
              }

              if (v500 >= v497)
              {
                v501 = v497;
              }

              else
              {
                v501 = v500;
              }

              if (v501)
              {
                memmove((*v458 + v490), v468, v501);
                v490 = *(v458 + 16);
              }

              v490 += v501;
              *(v458 + 16) = v490;
              v468 += v501;
              v34 = v497 > v500;
              v497 -= v501;
            }

            while (v34);
            goto LABEL_1108;
          }

          v471 = *v470;
          v493 = v470[1];
LABEL_1020:
          v498 = v471 - v493;
          if (v471 - v493 >= v497)
          {
            v498 = v497;
          }

          v470[1] = &v493[v497];
          if (v471 <= v493 || v498 == 0)
          {
            goto LABEL_1108;
          }

          v490 = *(v458 + 16);
          v497 = v498;
          goto LABEL_1029;
        }
      }

      v458 = *v123;
      v476 = *(*v123 + 32);
      if (!v476)
      {
        goto LABEL_956;
      }

      v477 = *v476;
      v478 = v476[1];
      v479 = v478 + v456;
      if (*v476 - v478 < v456)
      {
        v456 = *v476 - v478;
      }

      v476[1] = v479;
      if (v477 > v478 && v456 != 0)
      {
LABEL_956:
        v481 = *(v458 + 16);
        do
        {
          v482 = *(v458 + 8) - v481;
          if (v482 < v456 + 1)
          {
            (*(v458 + 24))(v458, v456 + 2);
            v481 = *(v458 + 16);
            v482 = *(v458 + 8) - v481;
          }

          if (v482 >= v456)
          {
            v483 = v456;
          }

          else
          {
            v483 = v482;
          }

          if (v483)
          {
            memmove((*v458 + v481), v455, v483);
            v481 = *(v458 + 16);
          }

          v481 += v483;
          *(v458 + 16) = v481;
          v455 += v483;
          v34 = v456 > v482;
          v456 -= v483;
        }

        while (v34);
        v476 = *(v458 + 32);
        if (!v476)
        {
          do
          {
LABEL_983:
            v488 = *(v458 + 8) - v481;
            if (v488 < v457 + 1)
            {
              (*(v458 + 24))(v458, v457 + 2);
              v481 = *(v458 + 16);
              v488 = *(v458 + 8) - v481;
            }

            if (v488 >= v457)
            {
              v489 = v457;
            }

            else
            {
              v489 = v488;
            }

            if (v489)
            {
              memset((*v458 + v481), 48, v489);
              v481 = *(v458 + 16);
            }

            v481 += v489;
            *(v458 + 16) = v481;
            v34 = v457 > v488;
            v457 -= v489;
          }

          while (v34);
          goto LABEL_1108;
        }

        v477 = *v476;
        v479 = v476[1];
      }

      v486 = v477 - v479;
      if (v477 - v479 >= v457)
      {
        v486 = v457;
      }

      v476[1] = v479 + v457;
      if (v477 <= v479 || v486 == 0)
      {
        goto LABEL_1108;
      }

      v481 = *(v458 + 16);
      v457 = v486;
      goto LABEL_983;
    case 0xCu:
      v77 = *a2;
      LODWORD(v581.__r_.__value_.__l.__data_) = 1;
      *(v581.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v581.__r_.__value_.__s.__data_[12] = 32;
      *(&v581.__r_.__value_.__r.__words[1] + 5) = 0;
      v581.__r_.__value_.__s.__data_[15] = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_117;
      }

      v78 = *a1;
      v79 = sub_23C3A9618(&v581, *a1, 40);
      if (v581.__r_.__value_.__s.__data_[1] >= 2u && v581.__r_.__value_.__s.__data_[1] != 19)
      {
        goto LABEL_1212;
      }

      *v78 = v79;
LABEL_117:
      v15 = a1[1];
      v80 = strlen(v77);
      v18 = sub_23C3B116C(&v581, v77, v80, v15);
      goto LABEL_124;
    case 0xDu:
      v19 = *a2;
      v20 = *(a2 + 1);
      LODWORD(v581.__r_.__value_.__l.__data_) = 1;
      *(v581.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v581.__r_.__value_.__s.__data_[12] = 32;
      *(&v581.__r_.__value_.__r.__words[1] + 5) = 0;
      v581.__r_.__value_.__s.__data_[15] = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_18;
      }

      v21 = *a1;
      v22 = sub_23C3A9618(&v581, *a1, 40);
      if (v581.__r_.__value_.__s.__data_[1] >= 2u && v581.__r_.__value_.__s.__data_[1] != 19)
      {
LABEL_1212:
        sub_23C3A53AC("The type option contains an invalid value for a string formatting argument");
      }

      *v21 = v22;
LABEL_18:
      v15 = a1[1];
      v18 = sub_23C3B116C(&v581, v19, v20, v15);
LABEL_124:
      *v15 = v18;
      return;
    case 0xEu:
      v11 = *a2;
      v578[0].__locale_ = 0;
      LODWORD(v578[1].__locale_) = -1;
      BYTE4(v578[1].__locale_) = 32;
      *(&v578[1].__locale_ + 5) = 0;
      HIBYTE(v578[1].__locale_) = 0;
      if (*a1[2] == 1)
      {
        v12 = *a1;
        v13 = sub_23C3A9618(v578, *a1, 36);
        if (BYTE1(v578[0].__locale_) - 8 >= 2 && BYTE1(v578[0].__locale_) != 0)
        {
          sub_23C3A9EF8("a pointer");
        }

        *v12 = v13;
      }

      v15 = a1[1];
      v16 = sub_23C3AA640(v578, v15);
      if ((v16 & 0xFF00) == 0x900)
      {
        v18 = sub_23C3B1530(v11, v15, v16 & 0xFFFFFFFFFFFF00DFLL | 0x720, v17, &v581, &v581.__r_.__value_.__s.__data_[19], "0X", 16);
      }

      else
      {
        v18 = sub_23C3B1530(v11, v15, v16 & 0xFFFFFFFFFFFF00DFLL | 0x620, v17, &v581, &v581.__r_.__value_.__s.__data_[19], "0x", 16);
      }

      goto LABEL_124;
    case 0xFu:
      v81 = *a1;
      v82 = *a2;
      v83 = *(a2 + 1);
      v84 = a1[1];

      v83(v81, v84, v82);
      return;
    default:
      sub_23C3A53AC("The argument index value is too large for the number of arguments supplied");
  }
}