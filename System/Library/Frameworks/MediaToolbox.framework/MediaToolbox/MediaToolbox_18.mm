uint64_t cea708_RenderToTime(uint64_t a1, CMTime *a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *MEMORY[0x1E6960C70];
  *&v142.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v142.epoch = v6;
  v7 = *(DerivedStorage + 72);
  if (v7)
  {
    *&v141.value = v5;
    v141.epoch = v6;
    v118 = v5;
    *&v140.value = v5;
    v117 = v6;
    v140.epoch = v6;
    Count = CFArrayGetCount(v7);
    v8 = Count;
    if ((~a2->flags & 5) != 0)
    {
      lhs = *a2;
      rhs = *(DerivedStorage + 40);
      CMTimeSubtract(&time, &lhs, &rhs);
      v8 = (CMTimeGetSeconds(&time) * *(DerivedStorage + 84));
    }

    v9 = *(DerivedStorage + 64);
    if (v8 <= v9 + 1)
    {
      v8 = v9 + 1;
    }

    if (v8 >= Count)
    {
      v8 = Count;
    }

    v121 = v8;
    if (v9 < v8)
    {
      v127 = DerivedStorage + 121;
      v128 = DerivedStorage + 112;
      v125 = DerivedStorage;
      v126 = DerivedStorage + 192;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 72), v9);
        theArray = ValueAtIndex;
        v11 = ValueAtIndex ? CFArrayGetCount(ValueAtIndex) : 0;
        CMTimeMakeWithSeconds(&v141, (*(DerivedStorage + 64) / *(DerivedStorage + 84)), *(DerivedStorage + 48));
        time = *(DerivedStorage + 40);
        lhs = v141;
        CMTimeAdd(&v140, &time, &lhs);
        if (v11 >= 1)
        {
          break;
        }

LABEL_155:
        v9 = *(DerivedStorage + 64) + 1;
        *(DerivedStorage + 64) = v9;
        if (v9 >= v121)
        {
          goto LABEL_156;
        }
      }

      v12 = 0;
      v122 = v11;
      while (1)
      {
        v124 = v12;
        v13 = CFArrayGetValueAtIndex(theArray, v12);
        rhs.value = 0;
        dataPointerOut = 0;
        result = CMBlockBufferGetDataPointer(v13, 0, 0, &rhs, &dataPointerOut);
        if (result)
        {
          return result;
        }

        if (rhs.value >= 1)
        {
          break;
        }

LABEL_152:
        if (*(v128 + 121800 * *(DerivedStorage + 24)))
        {
          time = v140;
          cea708Render(DerivedStorage, &time.value);
        }

        v12 = v124 + 1;
        if (v124 + 1 == v122)
        {
          goto LABEL_155;
        }
      }

      v15 = dataPointerOut;
      v130 = &dataPointerOut[rhs.value];
      while (1)
      {
        v17 = (v15 + 1);
        v16 = *v15;
        v18 = v16 >> 5;
        if (v16 >> 5 == 7)
        {
          v18 = v15[1] & 0x3F;
          v17 = (v15 + 2);
        }

        if (!v18)
        {
          goto LABEL_152;
        }

        v19 = v16 & 0x1F;
        if ((v16 & 0x1F) != 0)
        {
          break;
        }

        v111 = 0;
LABEL_151:
        v15 = &v17[v111];
        if (&v17[v111] >= v130)
        {
          goto LABEL_152;
        }
      }

      v20 = 0;
      v21 = &v17[v19];
      v144[0] = 0;
      v135 = v18 - 1;
      v136 = &v17[v19];
      v22 = (v18 - 1);
      v23 = (v128 + 121800 * v22);
      v24 = v23 + 8;
      v133 = v17;
      v134 = (v127 + 121800 * v22);
      v129 = (v126 + 121800 * v22);
      v131 = DerivedStorage + 121800 * v22;
      v132 = v19;
      v25 = v19;
      while (!v20)
      {
        v26 = *v17;
        if (v26 > 0x1F)
        {
          if ((v26 & 0x80) != 0 && v26 <= 0x9F)
          {
            v20 = 0;
            switch(*v17)
            {
              case 0x80u:
              case 0x81u:
              case 0x82u:
              case 0x83u:
              case 0x84u:
              case 0x85u:
              case 0x86u:
              case 0x87u:
                if (v25 < 1)
                {
                  goto LABEL_78;
                }

                v20 = v24[15224 * (v26 & 7)];
                if (v20)
                {
                  v20 = 0;
                  v23[1] = v26 & 7;
                }

                goto LABEL_91;
              case 0x88u:
                if (v25 < 2)
                {
                  goto LABEL_78;
                }

                v89 = 0;
                v90 = 0;
                v91 = v17[1];
                v92 = v129;
                do
                {
                  if ((v91 >> v89))
                  {
                    v93 = v24;
                    v94 = &v24[15224 * v89];
                    v95 = v92;
                    v96 = 15;
                    do
                    {
                      bzero(v95, 0x3F2uLL);
                      v95 += 1010;
                      --v96;
                    }

                    while (v96);
                    *(v94 + 34) = 0;
                    v90 = 1;
                    v94[70] = 1;
                    v24 = v93;
                  }

                  ++v89;
                  v92 += 15224;
                }

                while (v89 != 8);
                v20 = 0;
                *v23 = v90;
                v144[0] = 1;
                DerivedStorage = v125;
                goto LABEL_140;
              case 0x89u:
                if (v25 < 2)
                {
                  goto LABEL_78;
                }

                v100 = 0;
                v101 = 0;
                v102 = v17[1];
                v103 = v134;
                do
                {
                  if ((v102 >> v100))
                  {
                    v101 = 1;
                    *v103 = 1;
                  }

                  ++v100;
                  v103 += 15224;
                }

                while (v100 != 8);
                v20 = 0;
                *v23 = v101;
                goto LABEL_131;
              case 0x8Au:
                if (v25 < 2)
                {
                  goto LABEL_78;
                }

                v79 = 0;
                v80 = 0;
                v81 = v17[1];
                v82 = v134;
                do
                {
                  if ((v81 >> v79))
                  {
                    *v82 = 0;
                    v80 = 1;
                  }

                  ++v79;
                  v82 += 15224;
                }

                while (v79 != 8);
                goto LABEL_124;
              case 0x8Bu:
                if (v25 < 2)
                {
                  goto LABEL_78;
                }

                v97 = 0;
                v80 = 0;
                v98 = v17[1];
                v99 = v134;
                do
                {
                  if ((v98 >> v97))
                  {
                    *v99 = !*v99;
                    v80 = 1;
                  }

                  ++v97;
                  v99 += 15224;
                }

                while (v97 != 8);
LABEL_124:
                v20 = 0;
                *v23 = v80;
                goto LABEL_131;
              case 0x8Cu:
                if (v25 < 2)
                {
                  goto LABEL_78;
                }

                v104 = 0;
                v105 = 0;
                v106 = v17[1];
                v107 = v24;
                do
                {
                  if ((v106 >> v104))
                  {
                    bzero(v107, 0x3B78uLL);
                    if (v104 == v23[1])
                    {
                      v23[1] = -1;
                    }

                    v105 = 1;
                  }

                  ++v104;
                  v107 += 15224;
                }

                while (v104 != 8);
                v20 = 0;
                *v23 = v105;
                v144[0] = 1;
LABEL_140:
                v21 = v136;
                goto LABEL_91;
              case 0x8Du:
                if (v25 < 2)
                {
                  goto LABEL_78;
                }

                v20 = 0;
LABEL_131:
                v144[0] = 1;
                goto LABEL_91;
              case 0x8Eu:
                if (v25 >= 1)
                {
                  goto LABEL_89;
                }

                goto LABEL_78;
              case 0x8Fu:
                if (v25 < 1)
                {
                  goto LABEL_78;
                }

                v23[1] = -1;
                v76 = v24;
                v77 = v24;
                v78 = 8;
                do
                {
                  bzero(v77, 0x3B78uLL);
                  v77 += 15224;
                  --v78;
                }

                while (v78);
                v20 = 0;
                *v23 = 1;
                v144[0] = 0;
                v24 = v76;
                goto LABEL_91;
              case 0x90u:
                if (v25 < 3 || v23[1] == -1)
                {
                  goto LABEL_78;
                }

                v20 = 0;
                v86 = v17[1];
                v87 = v17[2];
                v88 = &v24[15224 * v23[1]];
                v88[48] = v86 & 3;
                v88[49] = v87 & 7;
                v88[50] = (v86 >> 2) & 3;
                v88[51] = v87 >> 7;
                v88[52] = (v87 & 0x40) != 0;
                v88[53] = (v87 >> 3) & 7;
                v88[54] = v86 >> 4;
                v88[67] = 1;
                goto LABEL_148;
              case 0x91u:
                if (v25 < 4 || v23[1] == -1)
                {
                  goto LABEL_78;
                }

                v20 = 0;
                v83 = &v24[15224 * v23[1]];
                v84 = v17[2];
                v85 = v17[3];
                *(v83 + 55) = (v17[1] << 18) & 0x3000000 | ((v17[1] & 3) << 16) | (((v17[1] >> 2) & 3) << 8) | (v17[1] >> 4) & 3;
                *(v83 + 59) = (v84 << 18) & 0x3000000 | ((v84 & 3) << 16) | (((v84 >> 2) & 3) << 8) | (v84 >> 4) & 3;
                *(v83 + 63) = (((v85 >> 2) & 3) << 8) & 0xFFFCFFFC | ((v85 & 3) << 16) | (v85 >> 4) & 3;
                v83[67] = 1;
                v74 = 3;
                goto LABEL_149;
              case 0x92u:
                if (v25 < 3 || v23[1] == -1)
                {
                  goto LABEL_78;
                }

                v20 = 0;
                v108 = &v24[15224 * v23[1]];
                v109 = v17[1] & 0xF;
                v110 = v17[2] & 0x3F;
                if (v108[7] < v109)
                {
                  LOWORD(v109) = v108[7];
                }

                if (v108[8] < v110)
                {
                  LOWORD(v110) = v108[8];
                }

                *(v108 + 34) = v109 | (v110 << 8);
                v108[70] = 1;
LABEL_148:
                v74 = 2;
                goto LABEL_149;
              case 0x97u:
                if (v25 < 5 || v23[1] == -1)
                {
                  goto LABEL_78;
                }

                v20 = 0;
                v70 = v17[2];
                v71 = v17[3];
                v72 = v17[4];
                v73 = &v24[15224 * v23[1]];
                *(v73 + 10) = (v17[1] << 18) & 0x3000000 | ((v17[1] & 3) << 16) | (((v17[1] >> 2) & 3) << 8) | (v17[1] >> 4) & 3;
                *(v73 + 11) = (((v70 >> 2) & 3) << 8) & 0xFFFCFFFC | ((v70 & 3) << 16) | (v70 >> 4) & 3;
                *(v73 + 4) = ((v72 >> 4) << 48) | (((v71 >> 5) & 4 | (v70 >> 6)) << 56) | (((v72 >> 2) & 3) << 40) | ((v72 & 3) << 32) | (((v71 >> 6) & 1) << 24) | (((v71 >> 2) & 3) << 16) | (((v71 >> 4) & 3) << 8) | v71 & 3;
                v74 = 4;
LABEL_149:
                v144[0] = v74;
                break;
              case 0x98u:
              case 0x99u:
              case 0x9Au:
              case 0x9Bu:
              case 0x9Cu:
              case 0x9Du:
              case 0x9Eu:
              case 0x9Fu:
                if (v25 >= 7)
                {
                  v31 = v17[1];
                  v32 = v17[2];
                  v33 = v17[3];
                  v34 = v17[4];
                  v35 = v17[6];
                  v36 = v26 & 7;
                  v37 = v34 & 0xF;
                  v38 = v34 >> 4;
                  v39 = v17[5] & 0x3F;
                  v40 = (v35 >> 3) & 7;
                  if (v37 == 15)
                  {
                    v41 = 14;
                  }

                  else
                  {
                    v41 = v37;
                  }

                  if (v39 >= 0x29)
                  {
                    v42 = 41;
                  }

                  else
                  {
                    v42 = v17[5] & 0x3F;
                  }

                  v43 = v39 > 0x1F;
                  v44 = ((v42 + 1) >> 1);
                  if (v38 != 1)
                  {
                    v44 = 0.0;
                  }

                  v45 = &v24[15224 * v36];
                  v46 = *v45;
                  if (v40 || !*v45)
                  {
                    if (v40 <= 1)
                    {
                      v40 = 1;
                    }

                    v47 = kPREDEFINED_WINDOW_STYLES[v40 - 1];
                  }

                  else
                  {
                    v47 = *(v45 + 2);
                  }

                  *&lhs.value = v47;
                  v62 = v35 & 7;
                  if (v62 || !v46)
                  {
                    if (v62 <= 1)
                    {
                      v62 = 1;
                    }

                    v64 = &kPREDEFINED_PEN_STYLES + 19 * v62;
                    *&time.value = *(v64 - 19);
                    *(&time.flags + 3) = *(v64 - 1);
                    v63 = 1;
                  }

                  else
                  {
                    v63 = 0;
                    *&time.value = *(v45 + 3);
                    *(&time.flags + 3) = *(v45 + 63);
                  }

                  *v45 = 1;
                  v45[1] = (v31 & 0x20) != 0;
                  v45[2] = v31 & 7;
                  v45[3] = v38;
                  v45[4] = v32 >> 7;
                  v45[5] = v32 & 0x7F;
                  v45[6] = v33;
                  v45[7] = v41;
                  v45[8] = v42;
                  v45[9] = (v31 & 8) != 0;
                  v45[10] = (v31 & 0x10) != 0;
                  *(v45 + 2) = *&lhs.value;
                  *(v45 + 3) = *&time.value;
                  *(v45 + 63) = *(&time.flags + 3);
                  v45[67] = v63;
                  v45[70] = 1;
                  *(v45 + 3) = v43;
                  *(v45 + 2) = floor(v33 / 5.0 + 0.5) - v44;
                  *(v45 + 3) = floor((v32 & 0x7F) / 5.0 + 0.5);
                  v23[1] = v36;
                  v144[0] = 6;
                }

                goto LABEL_78;
              default:
                goto LABEL_91;
            }

            goto LABEL_91;
          }

          v65 = v135;
          v66 = DerivedStorage;
          v67 = v17;
          v68 = v25;
          v69 = 0;
          goto LABEL_77;
        }

        v27 = v23[1];
        if (v27 != -1)
        {
          if (*v17 <= 0xCu)
          {
            if (v26 == 8)
            {
              v56 = &v24[15224 * v23[1]];
              v57 = *(v56 + 34);
              if (v57 >= 0x100)
              {
                v58 = 0;
                *(v56 + 34) = v57 - 256;
                v56[70] = 1;
                v59 = v56 + 72;
                v60 = &v59[1010 * v57 + 24 * ((v57 - 256) >> 8)];
                *(v60 + 2) = 0;
                *(v60 + 18) = 0;
                *(v60 + 10) = 0;
                v61 = &v59[1010 * v57];
                while (!v61[v58 + 2])
                {
                  v58 += 24;
                  if (v58 == 1008)
                  {
                    goto LABEL_80;
                  }
                }

                *v61 = 0;
                goto LABEL_80;
              }

LABEL_89:
              v20 = 0;
              goto LABEL_90;
            }

            if (v26 != 12)
            {
              goto LABEL_89;
            }

            v28 = &v24[15224 * v23[1]];
            v29 = v28 + 72;
            v30 = 15;
            do
            {
              bzero(v29, 0x3F2uLL);
              v29 += 1010;
              --v30;
            }

            while (v30);
            v20 = 0;
            *(v28 + 34) = 0;
            v28[70] = 1;
          }

          else
          {
            if (v26 != 13)
            {
              if (v26 != 14)
              {
                v20 = v26 == 16;
LABEL_90:
                v144[0] = 0;
                goto LABEL_91;
              }

              v54 = &v24[15224 * v23[1]];
              if (*(v54 + 34) >= 0x100u)
              {
                v55 = *(v54 + 34);
                *(v54 + 34) = v55;
                v54[70] = 1;
                bzero(&v54[1010 * v55 + 72], 0x3F2uLL);
LABEL_80:
                v20 = 0;
                *v23 = 1;
                goto LABEL_90;
              }

              goto LABEL_89;
            }

            v48 = &v24[15224 * v23[1]];
            v49 = *(v48 + 34);
            LOBYTE(v50) = v49 + 1;
            *(v48 + 34) = (v49 + 1);
            v48[70] = 1;
            if (v48[7] < (v49 + 1))
            {
              v48[70] = 1;
              v50 = v49;
              *(v48 + 34) = v49;
              if (v49)
              {
                v51 = v131 + 15224 * v27;
                v52 = v49;
                do
                {
                  memcpy((v51 + 192), (v51 + 1202), 0x3F2uLL);
                  v51 += 1010;
                  --v52;
                }

                while (v52);
                v53 = v50;
              }

              else
              {
                v53 = 0;
              }

              bzero(&v48[1010 * v53 + 72], 0x3F2uLL);
            }

            v20 = 0;
            v48[1010 * v50 + 72] = 1;
          }

          *v23 = 1;
          v21 = v136;
          goto LABEL_90;
        }

LABEL_78:
        v20 = 0;
LABEL_91:
        v75 = v144[0] + 1;
        v17 += v75;
        v25 -= v75;
        if (v17 >= v21)
        {
          v111 = v132;
          v17 = v133;
          goto LABEL_151;
        }
      }

      v65 = v135;
      v69 = v20;
      v66 = DerivedStorage;
      v67 = v17;
      v68 = v25;
LABEL_77:
      cea708ProcessCharacters(v66, v65, v67, v68, v69, v144);
      goto LABEL_78;
    }

LABEL_156:
    if (Count == v9)
    {
      v112 = v118;
      *(DerivedStorage + 40) = v118;
      v113 = v117;
      *(DerivedStorage + 56) = v117;
      *(DerivedStorage + 64) = 0;
      v114 = *(DerivedStorage + 72);
      if (v114)
      {
        CFRelease(v114);
        v113 = v117;
        v112 = v118;
        *(DerivedStorage + 72) = 0;
      }

      *(DerivedStorage + 80) = 0x41F0000000000000;
      *&v142.value = v112;
      v142.epoch = v113;
    }

    else
    {
      CMTimeMakeWithSeconds(&time, (v9 / *(DerivedStorage + 84)), *(DerivedStorage + 48));
      epoch = time.epoch;
      v141 = time;
      v116 = *&time.value;
      time = *(DerivedStorage + 40);
      *&lhs.value = v116;
      lhs.epoch = epoch;
      CMTimeAdd(&v142, &time, &lhs);
    }
  }

  result = 0;
  if (a3)
  {
    *a3 = v142;
  }

  return result;
}

uint64_t cea708_ResetAtTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cea708Initialize(DerivedStorage);
  if (*(DerivedStorage + 121800 * *(DerivedStorage + 24) + 112))
  {
    v5 = *a2;
    v6 = *(a2 + 2);
    cea708Render(DerivedStorage, &v5);
  }

  return 0;
}

void cea708Render(uint64_t a1, __int128 *a2)
{
  v2 = a1;
  v76 = *MEMORY[0x1E69E9840];
  v3 = a1 + 121800 * *(a1 + 24);
  v59 = v3 + 120;
  v4 = *MEMORY[0x1E695E480];
  v5 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 8, MEMORY[0x1E695E9C0]);
  allocator = v4;
  v6 = CFArrayCreateMutable(v4, 8, v5);
  v7 = 0;
  v57 = v6;
  v56 = *MEMORY[0x1E695E4D0];
  v55 = *MEMORY[0x1E695E4C0];
  v8 = v3 + 199;
  v53 = v3;
  v9 = (v3 + 194);
  v64 = v2;
  do
  {
    v65 = v59 + 15224 * v7;
    if (*(v65 + 1))
    {
      v62 = v7;
      theArray = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      v10 = 0;
      v11 = 0x80000000;
      v12 = 0x7FFFFFFF;
      v60 = v9;
      v61 = v8;
      v13 = 0x80000000;
      do
      {
        if (*(v65 + 72 + 1010 * v10))
        {
          v66 = v13;
          v67 = v12;
          v68 = v11;
          v14 = *(v65 + 24);
          v69 = (*(v65 + 16) + 1.0);
          v15 = (v14 + v10 + 1.0);
          v16 = *(v2 + 32);
          v75 = 0;
          memset(v74, 0, sizeof(v74));
          bzero(&v72, 0x31EuLL);
          bzero(v71, 0x2A0uLL);
          v17 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = v8;
          do
          {
            if (*(v22 - 5))
            {
              if (!v20)
              {
                v21 = v18;
              }

              if (*(v22 - 1))
              {
                v23 = v20;
                if (v19)
                {
                  *(&v71[v19 - 1] + 1) = v20 - *&v71[v19 - 1];
                }

                v24 = &v72 + 19 * v19;
                *v24 = *v22;
                *(v24 + 15) = *(v22 + 15);
                *&v71[v19++] = v20;
              }

              else
              {
                v23 = v20;
              }

              *(v74 + v23) = *(v22 - 3);
              ++v20;
            }

            else if (v20)
            {
              *(&v71[v19 - 1] + 1) = v20 - *&v71[v19 - 1];
              CommandData = cea708CreateCommandData(allocator, v74, v20, v19, &v72, v71, v21 + v69, v15, v16);
              CFArrayAppendValue(v17, CommandData);
              if (CommandData)
              {
                CFRelease(CommandData);
              }

              v20 = 0;
              v19 = 0;
            }

            ++v18;
            v22 += 24;
          }

          while (v18 != 42);
          if (v20)
          {
            *(&v71[v19 - 1] + 1) = v20 - *&v71[v19 - 1];
            v26 = cea708CreateCommandData(allocator, v74, v20, v19, &v72, v71, v21 + v69, v15, v16);
            CFArrayAppendValue(v17, v26);
            if (v26)
            {
              CFRelease(v26);
            }
          }

          v2 = v64;
          v12 = v67;
          v13 = v66;
          if (v17)
          {
            if (CFArrayGetCount(v17))
            {
              CFArrayAppendValue(theArray, v17);
            }

            CFRelease(v17);
          }

          v27 = 0;
          v28 = 0;
          v29 = 0x7FFFFFFF;
          v30 = 0x80000000;
          v31 = v9;
          do
          {
            v33 = *v31;
            v31 += 24;
            v32 = v33;
            if (v29 >= v27)
            {
              v34 = v27;
            }

            else
            {
              v34 = v29;
            }

            if (v30 <= v27)
            {
              v35 = v27;
            }

            else
            {
              v35 = v30;
            }

            if (v32)
            {
              v29 = v34;
              v30 = v35;
              v28 = 1;
            }

            ++v27;
          }

          while (v27 != 42);
          if (v67 < v29)
          {
            v29 = v67;
          }

          v11 = v68;
          if (v68 > v30)
          {
            v30 = v68;
          }

          if (v28)
          {
            v11 = v30;
            v12 = v29;
          }

          if (v66 <= v10)
          {
            v13 = v10;
          }
        }

        ++v10;
        v8 += 1010;
        v9 += 1010;
      }

      while (v10 != 15);
      v8 = v61;
      v7 = v62;
      v9 = v60;
      if (theArray && CFArrayGetCount(theArray))
      {
        v36 = *(v2 + 32);
        v37 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CGColor = cea708CreateCGColor(v36, (v65 + 40));
        v39 = cea708CreateCGColor(v36, (v65 + 44));
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        CFDictionaryAddValue(v37, @"U", @"cells");
        FigCFDictionarySetCGRect();
        CFDictionaryAddValue(v37, @"C", CGColor);
        FigCFDictionarySetInt32();
        CFDictionaryAddValue(v37, @"G", v39);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        if (*(v65 + 35))
        {
          v40 = v56;
        }

        else
        {
          v40 = v55;
        }

        CFDictionarySetValue(v37, @"O", v40);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        if (v39)
        {
          CFRelease(v39);
        }

        if (CGColor)
        {
          CFRelease(CGColor);
        }

        CFArrayAppendValue(v57, v37);
        if (v37)
        {
          CFRelease(v37);
        }

        v41 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        FigCFDictionarySetInt32();
        CFDictionaryAddValue(v41, @"R", theArray);
        CFRelease(theArray);
        CFArrayAppendValue(Mutable, v41);
        if (v41)
        {
          CFRelease(v41);
        }
      }
    }

    ++v7;
    v8 += 15224;
    v9 += 15224;
  }

  while (v7 != 8);
  CFArrayGetCount(v57);
  v42 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v42, @"F", @"c708");
  CFDictionaryAddValue(v42, @"W", v57);
  if (*(v2 + 8))
  {
    v43 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v43)
    {
      v44 = v43;
      v45 = *(v2 + 8);
      v72 = *a2;
      v73 = *(a2 + 2);
      v45(6, v42, &v72, v43);
      CFRelease(v44);
    }
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (Mutable)
  {
    CFArrayGetCount(Mutable);
  }

  v46 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v46, @"F", @"c708");
  CFDictionaryAddValue(v46, @"C", Mutable);
  if (*(v2 + 8))
  {
    v47 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v47)
    {
      v48 = v47;
      v49 = *(v2 + 8);
      v72 = *a2;
      v73 = *(a2 + 2);
      v49(7, v46, &v72, v47);
      CFRelease(v48);
    }
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (*(v2 + 8))
  {
    v50 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v50)
    {
      v51 = v50;
      v52 = *(v2 + 8);
      v72 = *a2;
      v73 = *(a2 + 2);
      v52(1, 0, &v72, v50);
      CFRelease(v51);
    }
  }

  *(v53 + 112) = 0;
}

__CFDictionary *cea708CreateCommandData(const __CFAllocator *a1, const UniChar *a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, CGColorSpace *a9)
{
  v13 = a3;
  v14 = CFStringCreateWithCharacters(a1, a2, a3);
  allocator = a1;
  Mutable = CFAttributedStringCreateMutable(a1, v13);
  CFAttributedStringBeginEditing(Mutable);
  v33 = Mutable;
  v34.location = 0;
  v34.length = 0;
  CFAttributedStringReplaceString(Mutable, v34, v14);
  if (v14)
  {
    CFRelease(v14);
  }

  if (a4 >= 1)
  {
    v16 = *MEMORY[0x1E695E4D0];
    v17 = *MEMORY[0x1E695E4C0];
    v18 = a4;
    v19 = (a5 + 7);
    v20 = a6 + 8;
    do
    {
      CGColor = cea708CreateCGColor(a9, v19);
      v22 = cea708CreateCGColor(a9, v19 + 4);
      v23 = cea708CreateCGColor(a9, v19 + 8);
      v24 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(v24, @"t", CGColor);
      CFDictionarySetValue(v24, @"b", v22);
      CFDictionarySetValue(v24, @"e", v23);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      if (*(v19 - 3))
      {
        v25 = v16;
      }

      else
      {
        v25 = v17;
      }

      CFDictionarySetValue(v24, @"u", v25);
      if (*(v19 - 4))
      {
        v26 = v16;
      }

      else
      {
        v26 = v17;
      }

      CFDictionarySetValue(v24, @"i", v26);
      CFDictionarySetValue(v24, @"d", v16);
      CGColorRelease(v23);
      CGColorRelease(v22);
      CGColorRelease(CGColor);
      CFAttributedStringSetAttributes(v33, *(v20 - 8), v24, 1u);
      if (v24)
      {
        CFRelease(v24);
      }

      v20 += 16;
      v19 += 19;
      --v18;
    }

    while (v18);
  }

  CFAttributedStringEndEditing(v33);
  v27 = MEMORY[0x1E695E9D8];
  v28 = MEMORY[0x1E695E9E8];
  v29 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v30 = CFDictionaryCreateMutable(allocator, 0, v27, v28);
  CFDictionarySetValue(v30, @"S", v33);
  CFDictionarySetValue(v30, @"L", v29);
  if (v29)
  {
    CFRelease(v29);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v30;
}

CGColorRef cea708CreateCGColor(CGColorSpace *a1, unsigned __int8 *a2)
{
  components[4] = *MEMORY[0x1E69E9840];
  v2 = (a2[1] >> 1);
  components[0] = (*a2 >> 1);
  components[1] = v2;
  v3 = a2[3];
  v4 = 1.0;
  if (v3 == 2)
  {
    v4 = 0.5;
  }

  if (v3 == 3)
  {
    v4 = 0.0;
  }

  components[2] = (a2[2] >> 1);
  components[3] = v4;
  return CGColorCreate(a1, components);
}

__CFString *downloaderCopyDebugDescription()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigStreamingDownloaderReportingModerator:");
  return Mutable;
}

void CEA608Parser::CEA608Parser(CEA608Parser *this, int a2, int (*a3)(uint64_t, uint64_t *, uint64_t *, __CFData *, __CFData *, void *), void *a4, CEA608Renderer *a5)
{
  TextParserBase::TextParserBase(this, a2, a3, a4);
  *v6 = &unk_1F0ADB398;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 56) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = a5;
  *(v6 + 96) = 0;
}

void CEA608Parser::~CEA608Parser(CEA608Parser *this)
{
  *this = &unk_1F0ADB398;
  v2 = *(this + 11);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  TextParserBase::~TextParserBase(this);
}

{
  CEA608Parser::~CEA608Parser(this);

  JUMPOUT(0x19A8D5150);
}

uint64_t CEA608Parser::NextInterestingTime(CEA608Parser *this, uint64_t a2, uint64_t *a3, int a4)
{
  if (a3)
  {
    v4 = 1173985215403 * *(this + 12);
    v5 = ((v4 >> 45) + (v4 >> 63));
    if (a4 < 0)
    {
      v5 = -v5;
    }

    *a3 = v5 + a2;
  }

  return 0;
}

uint64_t CEA608Parser::AdvanceToTime(CFDataRef *this, uint64_t a2)
{
  v4 = 30000 * a2;
  v5 = *(this + 12);
  Length = CFDataGetLength(this[3]);
  v7 = Length > 0;
  v9 = this + 4;
  v8 = this[4];
  v10 = v8 <= a2 && v8 + this[5] > a2;
  v11 = 0;
  v12 = v4 / v5;
  if (Length < 1 || v10)
  {
    v13 = 0;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v11 = (this[1])(v8 + this[5], &v36, &v35, 0, 0, this[2]);
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v14 = v35;
      if (v35 <= *(this + 12) / 2)
      {
        v14 = (*(this + 12) + (*(this + 12) >> 31)) >> 1;
      }

      v15 = v14 + v36;
      v13 = v36 <= a2 && v15 > a2;
      v7 = 1;
    }
  }

  if (v10 || !v7 || v13)
  {
    if (this[8] >= v12 || v11 != 0)
    {
      goto LABEL_55;
    }

    while (1)
    {
      MutableBytePtr = CFDataGetMutableBytePtr(this[3]);
      v20 = CFDataGetLength(this[3]);
      v21 = this[7];
      if (v21 >= v20)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v22 = this[8];
        do
        {
          if (v22 >= v12)
          {
            break;
          }

          if (v11)
          {
            break;
          }

          v36 = v21;
          CEA608Parser::ProcessCodePair(this, MutableBytePtr, &v36, v20, 0);
          v11 = v23;
          v21 = v36;
          v22 = (this[8] + 1001 * ((v36 - this[7]) / 2));
          this[7] = v36;
          this[8] = v22;
        }

        while (v21 < v20);
      }

      v24 = a2;
      if (!v7 || ((v24 = *v9 + this[5], v24 < a2) ? (v25 = v11 == 0) : (v25 = 0), v25))
      {
        v26 = (this[1])(v24, this + 4, this + 5, this[3], 0, this[2]);
        if (v26)
        {
          v11 = v26;
          goto LABEL_55;
        }

        v27 = this[3];
        v28 = 30000 * this[4] / *(this + 12);
        this[7] = 0;
        this[8] = v28;
        v29 = CFDataGetLength(v27);
        if (v29 >= 8 && (v30 = v29, v31 = CFDataGetMutableBytePtr(this[3]), v31[1] == 1952539747))
        {
          v32 = bswap32(*v31);
          if (v30 < v32)
          {
            v32 = v30;
          }

          if (v30 > v32)
          {
            CFDataSetLength(this[3], v32);
          }

          v11 = 0;
          this[7] = 8;
        }

        else
        {
          v11 = 0;
        }
      }

      else if (v21 == v20)
      {
        this[8] = v12;
      }

      if (this[8] < v12)
      {
        v7 = 1;
        if (!v11)
        {
          continue;
        }
      }

      goto LABEL_55;
    }
  }

  v17 = this[11];
  if (v17)
  {
    (*(*v17 + 208))(v17);
  }

  CFDataSetLength(this[3], 0);
  *v9 = 0;
  this[5] = 0;
  this[7] = 0;
  this[8] = 0;
LABEL_55:
  this[9] = v12;
  v33 = this[11];
  if (v33)
  {
    (*(*v33 + 24))(v33, v12);
  }

  return v11;
}

double CEA608Parser::ProcessCodePair(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  v8 = a4;
  if (a4 < 1)
  {
    return result;
  }

  v9 = *a3;
  if (*a3 >= a4)
  {
    return result;
  }

  while (1)
  {
    if ((v9 & 1) == 0)
    {
      v12 = *(this + 11);
      if (v12)
      {
        (*(*v12 + 24))(v12, *(this + 8));
        v9 = *a3;
      }
    }

    v14 = a2[v9];
    if ((v14 & 0x70) == 0x10)
    {
      break;
    }

    v15 = v14 & 0x7F;
    if (v15 < 0x20)
    {
      if (a5 == 2 && v15 - 1 <= 0xE)
      {
        if (v9 + 1 < v8)
        {
          *(this + 80) = 1;
          *a3 = v9 + 2;
          return result;
        }

        emitter = fig_log_get_emitter();
        v17 = v5;
        v18 = 514;
        goto LABEL_31;
      }

LABEL_16:
      *a3 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        return result;
      }

      v8 = v9 + 2;
      ++v9;
      goto LABEL_18;
    }

    if (*(this + 80))
    {
      goto LABEL_16;
    }

    *(this + 48) = 0;
    if (CEA608Parser::ProcessStandardCharacterCode(this, a2, a3, v8))
    {
      return result;
    }

    v9 = *a3;
    if (*a3 >= v8)
    {
      return result;
    }

    v8 = v9 + 1;
LABEL_18:
    if (v8 < 1 || v9 >= v8)
    {
      return result;
    }
  }

  if (v9 + 1 >= v8)
  {
    emitter = fig_log_get_emitter();
    v17 = v5;
    v18 = 492;
LABEL_31:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954736, "< CEA608Parser >", v18, v17);
  }

  *(this + 80) = 0;

  CEA608Parser::ProcessControlCode(this, a2, a3, v8);
  return result;
}

uint64_t CEA608Parser::ProcessControlCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 4294967246;
  if (!a2)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  if (a4 < 1)
  {
    return v4;
  }

  v5 = *a3;
  if (*a3 + 1 >= a4)
  {
    return v4;
  }

  v6 = a2[v5];
  v7 = a2[v5 + 1];
  v8 = v7 & 0x7F;
  if (__PAIR64__(*(this + 97), *(this + 96)) != __PAIR64__(v8, v6 & 0x7F))
  {
    *(this + 96) = v6 & 0x7F;
    *(this + 97) = v8;
    v9 = v6 & 0x77777777;
    if ((v6 & 0x77777777) == 0x11)
    {
      v11 = v7 & 0x70;
      if (v11 == 48)
      {
        return CEA608Parser::ProcessSpecialCharacterCode(this, a2, a3, a4);
      }

      if (v11 == 32)
      {
        return CEA608Parser::ProcessMidRowCode(this, a2, a3, a4);
      }

      if (v8 >= 0x40)
      {
        return CEA608Parser::ProcessPreambleAddressCode(this, a2, a3, a4);
      }
    }

    else
    {
      if (v9 != 16)
      {
        if ((v6 & 0x76 | 8) == 0x1A)
        {
          if ((v7 & 0x60) == 0x20)
          {
            return CEA608Parser::ProcessExtendedCharacterCode(this, a2, a3, a4);
          }

          if (v8 >= 0x40)
          {
            return CEA608Parser::ProcessPreambleAddressCode(this, a2, a3, a4);
          }

          goto LABEL_36;
        }

        if ((v6 & 0x76) == 0x14)
        {
          if ((v7 & 0x70) != 0x20)
          {
            if (v8 >= 0x40)
            {
              return CEA608Parser::ProcessPreambleAddressCode(this, a2, a3, a4);
            }

            goto LABEL_36;
          }
        }

        else
        {
          if (v9 == 22 && v8 >= 0x40)
          {
            return CEA608Parser::ProcessPreambleAddressCode(this, a2, a3, a4);
          }

          if (v9 != 23)
          {
            goto LABEL_36;
          }

          if (v8 - 33 > 2)
          {
            if (v8 - 45 <= 2)
            {
              return CEA608Parser::ProcessMidRowCode(this, a2, a3, a4);
            }

            if (v8 >= 0x40)
            {
              return CEA608Parser::ProcessPreambleAddressCode(this, a2, a3, a4);
            }

            goto LABEL_36;
          }
        }

        return CEA608Parser::ProcessMiscControlCode(this, a2, a3, a4);
      }

      if ((v7 & 0x70) == 0x20)
      {
        return CEA608Parser::ProcessMidRowCode(this, a2, a3, a4);
      }

      if ((v7 & 0x60) == 0x40)
      {
        return CEA608Parser::ProcessPreambleAddressCode(this, a2, a3, a4);
      }
    }

LABEL_36:
    v4 = 0;
    goto LABEL_37;
  }

  v4 = 0;
  *(this + 48) = 0;
LABEL_37:
  *a3 = v5 + 2;
  return v4;
}

uint64_t CEA608Parser::ProcessStandardCharacterCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  result = 4294967246;
  if (a2)
  {
    if (a3)
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        v6 = *a3;
        if (*a3 <= a4)
        {
          result = 0;
          if (a4)
          {
            if (v6 != a4)
            {
              v7 = a2[v6];
              *a3 = v6 + 1;
              result = *(this + 11);
              if (result)
              {
                (*(*result + 112))(result, 0, StandardCharacters[(v7 & 0x7F) - 32], 0);
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t CEA608Parser::ProcessMidRowCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  result = 4294967246;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (a4 < 1)
  {
    return result;
  }

  v6 = *a3;
  if (*a3 + 1 >= a4)
  {
    return result;
  }

  v7 = a2[v6];
  v8 = v7 & 0x7F;
  v9 = a2[v6 + 1];
  v10 = v9 & 0x7F;
  *a3 = v6 + 2;
  v11 = v7 & 0x7E;
  if (v8 == 31 || v11 == 24)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  if (v8 == 23 || v11 == 16)
  {
    v15 = 1;
  }

  else
  {
    v15 = v13;
  }

  v16 = v7 & 0x77;
  v17 = v9 & 0x70;
  if (v16 == 16 && v17 == 32)
  {
    v18 = &AttributeCodes1 + 32 * (v10 - 32);
LABEL_20:
    v19 = 1;
    goto LABEL_33;
  }

  if (v16 == 17 && v17 == 32)
  {
    v19 = 0;
    v18 = (&MidRowCodes + 4 * (v10 - 32));
  }

  else
  {
    v20 = (v10 - 45);
    if ((v8 == 31 || v8 == 23) && v20 <= 2)
    {
      v18 = &AttributeCodes2 + 32 * v20;
      goto LABEL_20;
    }

    v19 = 0;
    v18 = &AttributeCodes1;
  }

LABEL_33:
  result = *(this + 11);
  if (result)
  {
    if (v19)
    {
      (*(*result + 120))(result, v15);
      result = *(this + 11);
    }

    (*(*result + 152))(result, v15, v18);
    return 0;
  }

  return result;
}

uint64_t CEA608Parser::ProcessPreambleAddressCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 4294967246;
  if (!a2)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  if (a4 < 1)
  {
    return v4;
  }

  v5 = *a3;
  if (*a3 + 1 >= a4)
  {
    return v4;
  }

  v6 = a2[v5];
  v7 = a2[v5 + 1] & 0x7F;
  *a3 = v5 + 2;
  if ((v6 & 0x78) == 0x18)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = -96;
  if (v7 < 0x60)
  {
    v9 = -64;
  }

  v10 = &(&(&PreambleAddressCodes)[2 * v9])[2 * v7];
  if (v7 <= 0x3F)
  {
    v10 = &PreambleAddressCodes;
  }

  v11 = v6 & 0x77;
  if (v11 > 19)
  {
    if (v11 > 21)
    {
      if (v11 == 22)
      {
        v12 = v7 >= 0x60;
        v13 = 7;
      }

      else
      {
        if (v11 != 23)
        {
LABEL_36:
          v13 = 1;
          goto LABEL_31;
        }

        v12 = v7 >= 0x60;
        v13 = 9;
      }
    }

    else
    {
      v12 = v7 >= 0x60;
      if (v11 == 20)
      {
        v13 = 14;
      }

      else
      {
        v13 = 5;
      }
    }

LABEL_29:
    if (v12)
    {
      ++v13;
    }

    goto LABEL_31;
  }

  if (v11 > 17)
  {
    v12 = v7 >= 0x60;
    if (v11 == 18)
    {
      v13 = 3;
    }

    else
    {
      v13 = 12;
    }

    goto LABEL_29;
  }

  if (v11 != 16)
  {
    if (v11 == 17)
    {
      v12 = v7 >= 0x60;
      v13 = 1;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  v13 = 11;
LABEL_31:
  v14 = *(this + 11);
  if (v14)
  {
    (*(*v14 + 144))(v14, v8, v13, *v10, *(v10 + 8));
  }

  return 0;
}

uint64_t CEA608Parser::ProcessSpecialCharacterCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 4294967246;
  if (!a2)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  if (a4 < 1)
  {
    return v4;
  }

  v5 = *a3;
  if (*a3 + 1 >= a4)
  {
    return v4;
  }

  v6 = a2[v5] & 0x7F;
  v7 = a2[v5 + 1];
  *a3 = v5 + 2;
  v8 = v7 & 0x70;
  if (v6 == 17 && v8 == 48)
  {
    v9 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 32;
    v9 = 1;
    if (v6 != 25 || v8 != 48)
    {
      goto LABEL_12;
    }

    v9 = 2;
  }

  v12 = (v7 & 0x7F) - 48;
  v11 = SpecialCharacters[v12];
  v10 = SpecialCharactersTransparent[v12];
LABEL_12:
  v13 = *(this + 11);
  if (v13)
  {
    (*(*v13 + 112))(v13, v9, v11, v10 & 1);
  }

  return 0;
}

uint64_t CEA608Parser::ProcessExtendedCharacterCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  result = 4294967246;
  if (a2)
  {
    if (a3)
    {
      if (a4 >= 1)
      {
        v6 = *a3;
        if (*a3 + 1 < a4)
        {
          v7 = a2[v6] & 0x7F;
          v8 = a2[v6 + 1];
          *a3 = v6 + 2;
          v9 = v8 & 0x60;
          if (v7 == 18 && v9 == 32)
          {
            v10 = 1;
LABEL_8:
            v11 = &ExtendedCharacters1;
LABEL_13:
            v12 = v11[(v8 & 0x7F) - 32];
LABEL_14:
            result = *(this + 11);
            if (result)
            {
              (*(*result + 120))(result, v10);
              (*(**(this + 11) + 112))(*(this + 11), v10, v12, 0);
              return 0;
            }

            return result;
          }

          if (v7 == 19 && v9 == 32)
          {
            v10 = 1;
          }

          else
          {
            if (v7 == 26 && v9 == 32)
            {
              v10 = 2;
              goto LABEL_8;
            }

            v12 = 32;
            v10 = 1;
            if (v7 != 27 || v9 != 32)
            {
              goto LABEL_14;
            }

            v10 = 2;
          }

          v11 = &ExtendedCharacters2;
          goto LABEL_13;
        }
      }
    }
  }

  return result;
}

uint64_t CEA608Parser::ProcessMiscControlCode(CEA608Parser *this, const unsigned __int8 *a2, uint64_t *a3, uint64_t a4)
{
  result = 4294967246;
  if (a2)
  {
    if (a3)
    {
      if (a4 >= 1)
      {
        v6 = *a3;
        if (*a3 + 1 < a4)
        {
          v7 = a2[v6];
          v8 = a2[v6 + 1];
          *a3 = v6 + 2;
          v9 = v7 & 0x7E;
          v10 = (v7 & 0x7F) == 0x1F || v9 == 28;
          v11 = v10 ? 2 : 1;
          v12 = (v7 & 0x7F) == 0x17 || v9 == 20;
          v13 = v12 ? 1 : v11;
          result = *(this + 11);
          if (result)
          {
            v14 = v8 & 0x7F;
            v15 = v14 - 32;
            switch(v14)
            {
              case ' ':
                (*(*result + 80))(result, v13);
                goto LABEL_39;
              case '!':
                if ((v7 & 0x77777777) == 0x14)
                {
                  (*(*result + 120))(result, v13);
                }

                goto LABEL_29;
              case '""':
              case '#':
LABEL_29:
                result = 0;
                if (v7 > 150)
                {
                  if (v7 != 159 && v7 != 151)
                  {
                    return result;
                  }
                }

                else if (v7 != 23 && v7 != 31)
                {
                  return result;
                }

                (*(**(this + 11) + 160))(*(this + 11), v13, v15);
LABEL_39:
                result = 0;
                break;
              case '$':
                (*(*result + 136))(result, v13);
                goto LABEL_39;
              case '%':
              case '&':
              case '\'':
                (*(*result + 88))(result, v13, (v14 - 35));
                goto LABEL_39;
              case '(':
                (*(*result + 168))(result, v13);
                goto LABEL_39;
              case ')':
                (*(*result + 96))(result, v13);
                goto LABEL_39;
              case '*':
                (*(*result + 192))(result, v13);
                goto LABEL_39;
              case '+':
                (*(*result + 200))(result, v13);
                goto LABEL_39;
              case ',':
                (*(*result + 176))(result, v13);
                goto LABEL_39;
              case '-':
                (*(*result + 128))(result, v13);
                goto LABEL_39;
              case '.':
                (*(*result + 184))(result, v13);
                goto LABEL_39;
              case '/':
                (*(*result + 104))(result, v13);
                goto LABEL_39;
              default:
                goto LABEL_39;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL CEA608Renderer::MemoryRow::IsDisplayable(CEA608Renderer::MemoryRow *this)
{
  if (*(*this + 16))
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 31)
    {
      break;
    }

    v4 = *(*(this + ++v2) + 16);
  }

  while (v4 != 1);
  return v3 < 0x1F;
}

uint64_t CEA608Renderer::MemoryRow::GetStyleForCell(uint64_t result, unsigned int a2, uint64_t a3, _BYTE *a4, BOOL *a5)
{
  *a3 = DefaultStyle;
  *(a3 + 16) = unk_1E74787B0;
  v5 = *(result + 8 * a2 - 8);
  *a5 = *(v5 + 8) != 0;
  v6 = *(v5 + 16);
  *a4 = v6;
  if (a2 && (v6 & 1) != 0)
  {
    for (i = 1; i <= a2; ++i)
    {
      v8 = i - 1;
      v9 = *(result + 8 * v8);
      v10 = *v9;
      if (*v9)
      {
        v11 = v10[1];
        *a3 = *v10;
        *(a3 + 16) = v11;
        v9 = *(result + 8 * v8);
      }

      v12 = *(v9 + 8);
      if (v12)
      {
        if (*v12)
        {
          *a3 = *v12;
        }

        v13 = *(v12 + 8);
        if (v13)
        {
          *(a3 + 8) = v13;
        }

        v14 = *(v12 + 16);
        if (v14)
        {
          *(a3 + 16) = v14;
        }

        v15 = *(v12 + 20);
        if (v15)
        {
          *(a3 + 20) = v15;
        }

        v16 = *(v12 + 24);
        if (v16)
        {
          *(a3 + 24) = v16;
        }
      }
    }
  }

  return result;
}

uint64_t CEA608Renderer::MemoryRow::GetNextStyleChange(CEA608Renderer::MemoryRow *this, unsigned int a2)
{
  v2 = a2;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  CEA608Renderer::MemoryRow::GetStyleForCell(this, a2, &v15, &v14 + 1, &v14);
  while (++v2 <= 0x20u)
  {
    v4 = *(this + v2 - 1);
    v5 = *v4;
    if (*v4)
    {
      v6 = v5[1];
      v15 = *v5;
      v16 = v6;
    }

    v7 = *(v4 + 8);
    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = v15 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9 && (*v8 != *v15 || v8[1] != *(v15 + 4) || v8[2] != *(v15 + 8) || v8[3] != *(v15 + 12)))
      {
        return v2;
      }

      v10 = *(v7 + 8);
      v11 = !v10 || *(&v15 + 1) == 0;
      if (!v11 && (*v10 != **(&v15 + 1) || v10[1] != *(*(&v15 + 1) + 4) || v10[2] != *(*(&v15 + 1) + 8) || v10[3] != *(*(&v15 + 1) + 12)))
      {
        return v2;
      }

      if (*(v7 + 16) || *(v7 + 20))
      {
        return v2;
      }

      if (*(v7 + 24) || v14 == 0)
      {
        return v2;
      }
    }

    else if (v14)
    {
      return v2;
    }

    if (HIBYTE(v14) != *(v4 + 16))
    {
      return v2;
    }
  }

  return 33;
}

BOOL CEA608Renderer::MemoryRow::IsDirty(CEA608Renderer::MemoryRow *this)
{
  if (*(*this + 32))
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 31)
    {
      break;
    }

    v4 = *(*(this + ++v2) + 32);
  }

  while (v4 != 1);
  return v3 < 0x1F;
}

void CEA608Renderer::Memory::~Memory(CEA608Renderer::Memory *this)
{
  v2 = 0;
  v3 = this + 16;
  do
  {
    v4 = *&v3[8 * v2];
    if (v4)
    {
      for (i = 0; i != 256; i += 8)
      {
        v6 = *(v4 + i);
        if (v6)
        {
          MEMORY[0x19A8D5150](v6, 0x1070C40BFE75829);
        }
      }

      MEMORY[0x19A8D5150](v4, 0x30C408693532ALL);
    }

    ++v2;
  }

  while (v2 != 15);
  v7 = *(this + 1);
  if (v7)
  {
    MEMORY[0x19A8D5140](v7, 0x1000C80BDFB0063);
  }
}

uint64_t CEA608Renderer::Memory::ShiftRows(uint64_t this, int a2)
{
  if (a2 >= 0)
  {
    LOBYTE(v2) = a2;
  }

  else
  {
    v2 = -a2;
  }

  if (v2 >= 1)
  {
    LOBYTE(v3) = 0;
    v4 = (this + 16);
    do
    {
      if (a2 < 0)
      {
        v32 = *(this + 128);
        v33 = *v32;
        if (*(*v32 + 16))
        {
          goto LABEL_51;
        }

        v34 = v32 + 1;
        v35 = -1;
        v36 = v34;
        while (v35 != 30)
        {
          v37 = *v36++;
          ++v35;
          if (*(v37 + 16) == 1)
          {
            if (v35 < 0x1F)
            {
              goto LABEL_51;
            }

            break;
          }
        }

        if (*(v33 + 32))
        {
LABEL_51:
          v38 = 1;
        }

        else
        {
          v62 = 0;
          do
          {
            v63 = v62;
            if (v62 == 31)
            {
              break;
            }

            v64 = *(v34[v62++] + 32);
          }

          while (v64 != 1);
          v38 = v63 < 0x1F;
        }

        v39 = 0;
        v40 = *(this + 16);
        v41 = v40;
        do
        {
          v42 = v39++;
          v43 = *v41;
          if (*(*v41 + 16))
          {
            goto LABEL_64;
          }

          v44 = v41 + 1;
          v45 = -1;
          v46 = v44;
          while (v45 != 30)
          {
            v47 = *v46++;
            ++v45;
            if (*(v47 + 16) == 1)
            {
              if (v45 < 0x1F)
              {
                goto LABEL_64;
              }

              break;
            }
          }

          v41 = v4[v39];
          if (*(*v41 + 16))
          {
            goto LABEL_64;
          }

          v48 = 1;
          while (v48 != 32)
          {
            v49 = *(v41[v48++] + 16);
            if (v49 == 1)
            {
              if ((v48 - 2) < 0x1F)
              {
                goto LABEL_64;
              }

              break;
            }
          }

          if (*(v43 + 32))
          {
LABEL_64:
            v50 = 0;
            v41 = v4[v39];
            do
            {
              *(v41[v50++] + 32) = 1;
            }

            while (v50 != 32);
          }

          else
          {
            v51 = -1;
            while (v51 != 30)
            {
              v52 = *v44++;
              ++v51;
              if (*(v52 + 32) == 1)
              {
                if (v51 <= 0x1E)
                {
                  goto LABEL_64;
                }

                break;
              }
            }
          }

          v4[v42] = v41;
        }

        while (v39 != 14);
        v53 = 0;
        *(this + 128) = v40;
        do
        {
          v54 = v40[v53];
          v55 = *(v54 + 24);
          if (v55)
          {
            *v55 = 32;
          }

          if (*(v54 + 16))
          {
            v56 = 1;
          }

          else
          {
            v56 = *(v54 + 32);
          }

          *(v54 + 32) = v56 & 1;
          *v54 = 0;
          *(v54 + 8) = 0;
          *(v54 + 16) = 0;
          ++v53;
        }

        while (v53 != 32);
        if (v38)
        {
          v57 = 0;
          v58 = *(this + 128);
          do
          {
            *(*(v58 + v57) + 32) = 1;
            v57 += 8;
          }

          while (v57 != 256);
        }
      }

      else
      {
        v5 = *(this + 16);
        v6 = *v5;
        if (*(*v5 + 16))
        {
          goto LABEL_13;
        }

        v7 = v5 + 1;
        v8 = -1;
        v9 = v7;
        while (v8 != 30)
        {
          v10 = *v9++;
          ++v8;
          if (*(v10 + 16) == 1)
          {
            if (v8 < 0x1F)
            {
              goto LABEL_13;
            }

            break;
          }
        }

        if (*(v6 + 32))
        {
LABEL_13:
          v11 = 1;
        }

        else
        {
          v59 = 0;
          do
          {
            v60 = v59;
            if (v59 == 31)
            {
              break;
            }

            v61 = *(v7[v59++] + 32);
          }

          while (v61 != 1);
          v11 = v60 < 0x1F;
        }

        v12 = *(this + 128);
        v13 = 14;
        v14 = 13;
        do
        {
          v15 = v4[v13];
          v16 = *v15;
          if (*(*v15 + 16))
          {
            goto LABEL_26;
          }

          v17 = v15 + 1;
          v18 = -1;
          v19 = v17;
          while (v18 != 30)
          {
            v20 = *v19++;
            ++v18;
            if (*(v20 + 16) == 1)
            {
              if (v18 < 0x1F)
              {
                goto LABEL_26;
              }

              break;
            }
          }

          v21 = v4[v14];
          if (*(*v21 + 16))
          {
            goto LABEL_26;
          }

          v22 = 1;
          while (v22 != 32)
          {
            v23 = *(*(v21 + 8 * v22++) + 16);
            if (v23 == 1)
            {
              if ((v22 - 2) < 0x1F)
              {
                goto LABEL_26;
              }

              break;
            }
          }

          if (*(v16 + 32))
          {
LABEL_26:
            v24 = 0;
            v21 = v4[v14];
            do
            {
              *(*(v21 + v24) + 32) = 1;
              v24 += 8;
            }

            while (v24 != 256);
          }

          else
          {
            v25 = -1;
            while (v25 != 30)
            {
              v26 = *v17++;
              ++v25;
              if (*(v26 + 32) == 1)
              {
                if (v25 <= 0x1E)
                {
                  goto LABEL_26;
                }

                break;
              }
            }
          }

          v4[v13] = v21;
          --v14;
          --v13;
        }

        while (v13);
        *v4 = v12;
        do
        {
          v27 = *(v12 + v13);
          v28 = *(v27 + 24);
          if (v28)
          {
            *v28 = 32;
          }

          if (*(v27 + 16))
          {
            v29 = 1;
          }

          else
          {
            v29 = *(v27 + 32);
          }

          *(v27 + 32) = v29 & 1;
          *v27 = 0;
          *(v27 + 8) = 0;
          *(v27 + 16) = 0;
          v13 += 8;
        }

        while (v13 != 256);
        if (v11)
        {
          v30 = 0;
          v31 = *v4;
          do
          {
            *(*(v31 + v30) + 32) = 1;
            v30 += 8;
          }

          while (v30 != 256);
        }
      }

      v3 = (v3 + 1);
    }

    while (v3 < v2);
  }

  return this;
}

uint64_t CEA608Renderer::Memory::Erase(uint64_t this)
{
  for (i = 0; i != 15; ++i)
  {
    v2 = 0;
    v3 = *(this + 16 + 8 * i);
    do
    {
      v4 = *(v3 + v2);
      v5 = *(v4 + 24);
      if (v5)
      {
        *v5 = 32;
      }

      if (*(v4 + 16))
      {
        v6 = 1;
      }

      else
      {
        v6 = *(v4 + 32);
      }

      *(v4 + 32) = v6 & 1;
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      v2 += 8;
    }

    while (v2 != 256);
  }

  return this;
}

uint64_t CEA608Renderer::Memory::SetDirty(uint64_t this, char a2)
{
  for (i = 0; i != 15; ++i)
  {
    v3 = 0;
    v4 = *(this + 16 + 8 * i);
    do
    {
      *(*(v4 + v3) + 32) = a2;
      v3 += 8;
    }

    while (v3 != 256);
  }

  return this;
}

void CEA608Renderer::CEA608Renderer(CEA608Renderer *this)
{
  TextRendererBase::TextRendererBase(this);
  *v1 = &unk_1F0ADB3E0;
  *(v1 + 48) = 0;
  *(v1 + 50) = 1;
  *(v1 + 52) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = -1;
  *(v1 + 72) = 0;
  *(v1 + 80) = -1;
  operator new();
}

void sub_1964753BC(_Unwind_Exception *a1)
{
  v2 = v1;
  MEMORY[0x19A8D5150](v2, 0x1030C4078BDD907);
  FigBytePumpGetFigBaseObject();
  _Unwind_Resume(a1);
}

void CEA608Renderer::~CEA608Renderer(CEA608Renderer *this)
{
  *this = &unk_1F0ADB3E0;
  v2 = *(this + 3);
  if (v2)
  {
    CEA608Renderer::Memory::~Memory(v2);
    MEMORY[0x19A8D5150]();
  }

  v3 = *(this + 4);
  if (v3)
  {
    CEA608Renderer::Memory::~Memory(v3);
    MEMORY[0x19A8D5150]();
  }

  FigBytePumpGetFigBaseObject();
}

uint64_t CEA608Renderer::ResumeCaptionLoading(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    *(this + 40) = *(this + 24);
    v2 = *(this + 56);
    if (*(this + 52) != v2)
    {
      *(this + 52) = v2;
    }

    *(this + 56) = 2;
    *(this + 48) = 4;
  }

  return this;
}

unsigned __int8 *CEA608Renderer::RollUpCaptions(unsigned __int8 *this, uint64_t a2, unsigned int a3)
{
  this[49] = a2;
  if (this[50] == a2)
  {
    v4 = this;
    this = *(this + 4);
    *(v4 + 5) = this;
    v5 = *(v4 + 14);
    if (v5 == 1 || v5 == 4 && *(v4 + 13) == 1)
    {
      v7 = *this;
      if (a3 > v7)
      {
        CEA608Renderer::Memory::ShiftRows(this, (a3 - v7));
        this = *(v4 + 5);
        *this = a3;
        v7 = a3;
      }

      v8 = v4[48];
      if (v8 > a3)
      {
        v9 = v7 - a3;
        if ((v7 - v8) < (v7 - a3))
        {
          do
          {
            v10 = 0;
            v11 = *&this[8 * v9 + 8];
            do
            {
              v12 = *(v11 + v10);
              v13 = *(v12 + 24);
              if (v13)
              {
                *v13 = 32;
              }

              if (*(v12 + 16))
              {
                v14 = 1;
              }

              else
              {
                v14 = *(v12 + 32);
              }

              *(v12 + 32) = v14 & 1;
              *v12 = 0;
              *(v12 + 8) = 0;
              *(v12 + 16) = 0;
              v10 += 8;
            }

            while (v10 != 256);
            --v9;
            this = *(v4 + 5);
          }

          while (*this - v4[48] < v9);
        }
      }
    }

    else
    {
      (*(*v4 + 176))(v4, a2);
      this = (*(*v4 + 184))(v4, a2);
      **(v4 + 5) = 271;
      *(v4 + 8) = -1;
    }

    v15 = *(v4 + 14);
    if (*(v4 + 13) != v15)
    {
      *(v4 + 13) = v15;
    }

    *(v4 + 14) = 1;
    v4[48] = a3;
  }

  return this;
}

uint64_t CEA608Renderer::ResumeDirectCaptioning(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    *(this + 40) = *(this + 32);
    v2 = *(this + 56);
    if (*(this + 52) != v2)
    {
      *(this + 52) = v2;
    }

    *(this + 56) = 3;
    *(this + 48) = 4;
  }

  return this;
}

uint64_t CEA608Renderer::EndOfCaption(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    v2 = *(this + 32);
    for (i = 1; i != 16; ++i)
    {
      v4 = *(v2 + 16 + 8 * (i - 1));
      v5 = *v4;
      if (*(*v4 + 16))
      {
        goto LABEL_9;
      }

      v6 = v4 + 1;
      v7 = -1;
      v8 = v6;
      while (v7 != 30)
      {
        v9 = *v8++;
        ++v7;
        if (*(v9 + 16) == 1)
        {
          if (v7 < 0x1F)
          {
            goto LABEL_9;
          }

          break;
        }
      }

      if (*(v5 + 32))
      {
LABEL_9:
        v10 = 0;
        v11 = *(*(this + 24) + 8 * (i - 1) + 16);
        do
        {
          *(*(v11 + v10) + 32) = 1;
          v10 += 8;
        }

        while (v10 != 256);
      }

      else
      {
        v12 = -1;
        while (v12 != 30)
        {
          v13 = *v6++;
          ++v12;
          if (*(v13 + 32) == 1)
          {
            if (v12 <= 0x1E)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }
    }

    *(this + 32) = *(this + 24);
    *(this + 40) = v2;
    *(this + 24) = v2;
    v14 = *(this + 56);
    if (*(this + 52) != v14)
    {
      *(this + 52) = v14;
    }

    *(this + 56) = 2;
    *(this + 48) = 4;
  }

  return this;
}

uint64_t CEA608Renderer::Character(uint64_t this, int a2, __int16 a3, char a4)
{
  if (a2)
  {
    *(this + 49) = a2;
  }

  else
  {
    a2 = *(this + 49);
  }

  if (a2 == *(this + 50) && (*(this + 56) | 4) != 4)
  {
    v4 = *(this + 40);
    v5 = v4[1];
    v6 = *(*&v4[8 * *v4 + 8] + 8 * v4[1] - 8);
    **(v6 + 24) = a3;
    *(v6 + 8) = 0;
    *(v6 + 16) = a4 ^ 1;
    *(v6 + 32) = 1;
    if (v5 <= 0x1F)
    {
      v4[1] = v5 + 1;
    }
  }

  return this;
}

uint64_t CEA608Renderer::Backspace(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2 && (*(this + 56) | 4) != 4)
  {
    v2 = *(this + 40);
    v3 = v2[1];
    if (v3 >= 2)
    {
      v4 = *v2 - 1;
      if (v3 == 32)
      {
        v5 = *(*&v2[8 * v4 + 16] + 248);
        *(v5 + 8) = 0;
        **(v5 + 24) = 32;
        *(v5 + 16) = 0;
        *(v5 + 32) = 1;
      }

      v6 = v3 - 1;
      v2[1] = v6;
      v7 = *(*&v2[8 * v4 + 16] + 8 * v6 - 8);
      *(v7 + 8) = 0;
      **(v7 + 24) = 32;
      *(v7 + 16) = 0;
      *(v7 + 32) = 1;
    }
  }

  return this;
}

uint64_t CEA608Renderer::CarriageReturn(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    v2 = this;
    if (*(this + 56) == 1)
    {
      v3 = 0;
      v4 = *(*(this + 40) + 8 * (**(this + 40) - *(this + 48) + 1) + 8);
      do
      {
        v5 = *(v4 + v3);
        v6 = *(v5 + 24);
        if (v6)
        {
          *v6 = 32;
        }

        if (*(v5 + 16))
        {
          v7 = 1;
        }

        else
        {
          v7 = *(v5 + 32);
        }

        *(v5 + 32) = v7 & 1;
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        v3 += 8;
      }

      while (v3 != 256);
      this = CEA608Renderer::Memory::ShiftRows(*(this + 40), -1);
      v2[8] = v2[2];
      *(v2[5] + 1) = 1;
    }
  }

  return this;
}

uint64_t CEA608Renderer::DeleteToEndOfRow(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2 && (*(this + 56) | 4) != 4)
  {
    v2 = *(this + 40);
    v3 = v2[1];
    if (v3 < 2)
    {
      goto LABEL_7;
    }

    v4 = *&v2[8 * *v2 + 8];
    if (*(*(v4 + 8 * (v3 - 1) - 8) + 16) == 1)
    {
      v5 = *(v4 + 8 * v3 - 8);
      **(v5 + 24) = 32;
      *(v5 + 16) = 0;
      *(v5 + 32) = 1;
      LOBYTE(v3) = v3 + 1;
    }

    if (v3 <= 0x20u)
    {
LABEL_7:
      v6 = v3 - 1;
      do
      {
        v7 = *(*(*(this + 40) + 8 * **(this + 40) + 8) + 8 * v6);
        v8 = *(v7 + 24);
        if (v8)
        {
          *v8 = 32;
        }

        if (*(v7 + 16))
        {
          v9 = 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        *(v7 + 32) = v9 & 1;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        v10 = (v6++ + 2);
      }

      while (v10 != 33);
    }
  }

  return this;
}

unsigned __int8 *CEA608Renderer::PreambleAddressCode(unsigned __int8 *result, int a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  result[49] = a2;
  if (result[50] == a2)
  {
    v5 = *(result + 14);
    if (v5 && v5 != 4)
    {
      v9 = a3;
      if (v5 == 1)
      {
        v10 = result + 40;
        result = *(result + 5);
        if (v10[8] <= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = v10[8];
        }

        v11 = v9 - *result;
        if (!v11)
        {
          goto LABEL_14;
        }

        CEA608Renderer::Memory::ShiftRows(result, v11);
      }

      else
      {
        v10 = result + 40;
      }

      result = *v10;
      **v10 = v9;
LABEL_14:
      result[1] = a5 + 1;
      v12 = v9 - 1;
      if (!a5 || (*(*(*&result[8 * v12 + 16] + 8 * a5 - 8) + 16) & 1) == 0)
      {
        v13 = *(*&result[8 * v12 + 16] + 8 * (a5 + 1) - 8);
        *v13 = a4;
        *(v13 + 32) = 1;
      }
    }
  }

  return result;
}

uint64_t CEA608Renderer::MidRowCode(uint64_t result, int a2, uint64_t a3)
{
  *(result + 49) = a2;
  if (*(result + 50) == a2)
  {
    v3 = result;
    if ((*(result + 56) | 4) != 4)
    {
      v5 = *(*(result + 40) + 1);
      result = (*(*result + 112))(result);
      v6 = *(*(*(v3 + 40) + 8 * **(v3 + 40) + 8) + 8 * v5 - 8);
      *(v6 + 8) = a3;
      *(v6 + 32) = 1;
    }
  }

  return result;
}

uint64_t CEA608Renderer::TabOffset(uint64_t this, int a2, char a3)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2 && (*(this + 56) | 4) != 4)
  {
    v3 = *(this + 40);
    if (((*(v3 + 1) + a3) & 0xE0) != 0)
    {
      v4 = 32;
    }

    else
    {
      v4 = *(v3 + 1) + a3;
    }

    *(v3 + 1) = v4;
  }

  return this;
}

uint64_t CEA608Renderer::FlashOn(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    v2 = this;
    v3 = *(*(this + 40) + 1);
    this = (*(*this + 112))(this);
    v4 = *(*(*(v2 + 40) + 8 * **(v2 + 40) + 8) + 8 * v3 - 8);
    *(v4 + 8) = &FlashOnStyle;
    *(v4 + 32) = 1;
  }

  return this;
}

uint64_t CEA608Renderer::EraseDisplayedMemory(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    return CEA608Renderer::Memory::Erase(*(this + 32));
  }

  return this;
}

uint64_t CEA608Renderer::EraseNonDisplayedMemory(uint64_t this, int a2)
{
  *(this + 49) = a2;
  if (*(this + 50) == a2)
  {
    return CEA608Renderer::Memory::Erase(*(this + 24));
  }

  return this;
}

uint64_t CEA608Renderer::TextRestart(CEA608Renderer *this, uint64_t a2)
{
  v4 = *(this + 14);
  if (*(this + 13) != v4)
  {
    *(this + 13) = v4;
  }

  *(this + 14) = 4;
  *(this + 49) = a2;
  (*(*this + 176))(this, a2);
  v5 = *(*this + 184);

  return v5(this, a2);
}

uint64_t CEA608Renderer::TextDisplay(uint64_t this, uint64_t a2)
{
  v4 = *(this + 52);
  v3 = *(this + 56);
  if (v4 != 1 || v3 != 1)
  {
    v7 = this;
    if (v4 != v3)
    {
      *(this + 52) = v3;
    }

    *(this + 56) = 4;
    *(this + 49) = a2;
    (*(*this + 176))(this, a2);
    v8 = *(*v7 + 184);

    return v8(v7, a2);
  }

  return this;
}

uint64_t CEA608Renderer::InvalidData(CEA608Renderer *this)
{
  (*(*this + 176))(this, *(this + 49));
  result = (*(*this + 184))(this, *(this + 49));
  v3 = *(this + 14);
  if (*(this + 13) != v3)
  {
    *(this + 13) = v3;
  }

  *(this + 14) = 0;
  return result;
}

uint64_t CEA608Renderer::IsDisplayDirty(CEA608Renderer *this)
{
  v1 = *(this + 72);
  if (v1 != *(this + 8))
  {
    goto LABEL_4;
  }

  if (*(this + 72))
  {
    v2 = *(this + 4);
    v5 = *(v2 + 16);
    v3 = v2 + 16;
    v4 = v5;
    if (*(*v5 + 32))
    {
LABEL_4:
      LOBYTE(v1) = 1;
      return v1 & 1;
    }

    v7 = 0;
    LOBYTE(v1) = 1;
    do
    {
      v8 = v4 + 1;
      v9 = -1;
      while (v9 != 30)
      {
        v10 = *v8++;
        ++v9;
        if (*(v10 + 32) == 1)
        {
          if (v9 <= 0x1E)
          {
            return v1 & 1;
          }

          break;
        }
      }

      LOBYTE(v1) = v7 < 0xE;
      if (v7 == 14)
      {
        break;
      }

      v4 = *(v3 + 8 * ++v7);
    }

    while ((*(*v4 + 32) & 1) == 0);
  }

  return v1 & 1;
}

uint64_t FigMetricMediaResourceRequestEventCreateInternal(const __CFAllocator *a1, const void *a2, const void *a3, __int128 *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8, CFAbsoluteTime a9, CFAbsoluteTime a10, CFAbsoluteTime a11, CFAbsoluteTime a12, char a13, const void *a14, const void *a15, CFTypeRef *a16)
{
  ensureMetricEventTrace();
  if (!a16)
  {
    FigMetricMediaResourceRequestEventCreateInternal_cold_2(&v43);
    return v43;
  }

  FigMetricEventGetClassID();
  v28 = CMDerivedObjectCreate();
  if (v28)
  {
    return v28;
  }

  v29 = a8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954510;
  }

  v31 = DerivedStorage;
  v32 = FigSimpleMutexCreate();
  *(v31 + 192) = v32;
  if (!v32)
  {
    FigMetricMediaResourceRequestEventCreateInternal_cold_1(&v43);
    return v43;
  }

  *v31 = 1;
  *(v31 + 8) = 0;
  if (a5)
  {
    v33 = CFRetain(a5);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v33 = CFDateCreate(a1, Current);
  }

  *(v31 + 16) = v33;
  v35 = *a4;
  *(v31 + 48) = *(a4 + 2);
  *(v31 + 32) = v35;
  if (a6)
  {
    v36 = CFRetain(a6);
  }

  else
  {
    v36 = 0;
  }

  *(v31 + 24) = v36;
  if (a2)
  {
    v37 = CFRetain(a2);
  }

  else
  {
    v37 = 0;
  }

  *(v31 + 56) = v37;
  if (a3)
  {
    v38 = CFRetain(a3);
  }

  else
  {
    v38 = 0;
  }

  *(v31 + 72) = v38;
  *(v31 + 80) = CFDateCreate(a1, a9);
  *(v31 + 88) = CFDateCreate(a1, a10);
  *(v31 + 96) = CFDateCreate(a1, a11);
  *(v31 + 104) = CFDateCreate(a1, a12);
  *(v31 + 112) = a7;
  *(v31 + 120) = v29;
  *(v31 + 128) = a13;
  if (a15)
  {
    v39 = CFRetain(a15);
  }

  else
  {
    v39 = 0;
  }

  *(v31 + 144) = v39;
  if (a14)
  {
    v40 = CFRetain(a14);
  }

  else
  {
    v40 = 0;
  }

  v41 = 0;
  *(v31 + 136) = v40;
  *a16 = 0;
  return v41;
}

uint64_t FigMetricHLSPlaylistRequestEventCreateInternal(const __CFAllocator *a1, const void *a2, const void *a3, __int128 *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8, CFAbsoluteTime a9, CFAbsoluteTime a10, CFAbsoluteTime a11, CFAbsoluteTime a12, char a13, const void *a14, const void *a15, int a16, char a17, CFTypeRef *a18)
{
  ensureMetricEventTrace();
  if (!a18)
  {
    FigMetricHLSPlaylistRequestEventCreateInternal_cold_2(&v45);
    return v45;
  }

  FigMetricEventGetClassID();
  v30 = CMDerivedObjectCreate();
  if (v30)
  {
    return v30;
  }

  v31 = a8;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954510;
  }

  v33 = DerivedStorage;
  v34 = FigSimpleMutexCreate();
  *(v33 + 192) = v34;
  if (!v34)
  {
    FigMetricHLSPlaylistRequestEventCreateInternal_cold_1(&v45);
    return v45;
  }

  *v33 = 1;
  *(v33 + 8) = 1;
  if (a5)
  {
    v35 = CFRetain(a5);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v35 = CFDateCreate(a1, Current);
  }

  *(v33 + 16) = v35;
  v37 = *a4;
  *(v33 + 48) = *(a4 + 2);
  *(v33 + 32) = v37;
  if (a6)
  {
    v38 = CFRetain(a6);
  }

  else
  {
    v38 = 0;
  }

  *(v33 + 24) = v38;
  if (a2)
  {
    v39 = CFRetain(a2);
  }

  else
  {
    v39 = 0;
  }

  *(v33 + 56) = v39;
  if (a3)
  {
    v40 = CFRetain(a3);
  }

  else
  {
    v40 = 0;
  }

  *(v33 + 72) = v40;
  *(v33 + 80) = CFDateCreate(a1, a9);
  *(v33 + 88) = CFDateCreate(a1, a10);
  *(v33 + 96) = CFDateCreate(a1, a11);
  *(v33 + 104) = CFDateCreate(a1, a12);
  *(v33 + 112) = a7;
  *(v33 + 120) = v31;
  *(v33 + 128) = a13;
  if (a15)
  {
    v41 = CFRetain(a15);
  }

  else
  {
    v41 = 0;
  }

  *(v33 + 144) = v41;
  *(v33 + 152) = a17;
  *(v33 + 156) = a16;
  if (a14)
  {
    v42 = CFRetain(a14);
  }

  else
  {
    v42 = 0;
  }

  v43 = 0;
  *(v33 + 136) = v42;
  *a18 = 0;
  return v43;
}

uint64_t FigMetricHLSMediaSegmentRequestEventCreateInternal(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4, __int128 *a5, const void *a6, const void *a7, CFAbsoluteTime a8, CFAbsoluteTime a9, CFAbsoluteTime a10, CFAbsoluteTime a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, const void *a17, const void *a18, int a19, char a20, CFTypeRef *a21)
{
  ensureMetricEventTrace();
  if (!a21)
  {
    FigMetricHLSMediaSegmentRequestEventCreateInternal_cold_2(&v48);
    return v48;
  }

  FigMetricEventGetClassID();
  v33 = CMDerivedObjectCreate();
  if (v33)
  {
    return v33;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954510;
  }

  v35 = DerivedStorage;
  v36 = FigSimpleMutexCreate();
  *(v35 + 192) = v36;
  if (!v36)
  {
    FigMetricHLSMediaSegmentRequestEventCreateInternal_cold_1(&v48);
    return v48;
  }

  *v35 = 1;
  *(v35 + 8) = 2;
  if (a6)
  {
    v37 = CFRetain(a6);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v37 = CFDateCreate(a1, Current);
  }

  *(v35 + 16) = v37;
  v39 = *a5;
  *(v35 + 48) = *(a5 + 2);
  *(v35 + 32) = v39;
  if (a7)
  {
    v40 = CFRetain(a7);
  }

  else
  {
    v40 = 0;
  }

  *(v35 + 24) = v40;
  if (a2)
  {
    v41 = CFRetain(a2);
  }

  else
  {
    v41 = 0;
  }

  *(v35 + 56) = v41;
  if (a3)
  {
    v42 = CFRetain(a3);
  }

  else
  {
    v42 = 0;
  }

  *(v35 + 64) = v42;
  if (a4)
  {
    v43 = CFRetain(a4);
  }

  else
  {
    v43 = 0;
  }

  *(v35 + 72) = v43;
  *(v35 + 80) = CFDateCreate(a1, a8);
  *(v35 + 88) = CFDateCreate(a1, a9);
  *(v35 + 96) = CFDateCreate(a1, a10);
  *(v35 + 104) = CFDateCreate(a1, a11);
  *(v35 + 112) = a14;
  *(v35 + 120) = a15;
  *(v35 + 128) = a16;
  *(v35 + 156) = a19;
  if (a17)
  {
    v44 = CFRetain(a17);
  }

  else
  {
    v44 = 0;
  }

  *(v35 + 136) = v44;
  if (a18)
  {
    v45 = CFRetain(a18);
  }

  else
  {
    v45 = 0;
  }

  v46 = 0;
  *(v35 + 144) = v45;
  *(v35 + 176) = a20;
  *(v35 + 184) = a12;
  *a21 = 0;
  return v46;
}

uint64_t FigMetricContentKeyRequestEventCreateInternal(const __CFAllocator *a1, const void *a2, const void *a3, __int128 *a4, const void *a5, const void *a6, uint64_t a7, uint64_t a8, CFAbsoluteTime a9, CFAbsoluteTime a10, CFAbsoluteTime a11, CFAbsoluteTime a12, char a13, const void *a14, const void *a15, int a16, char a17, const void *a18, CFTypeRef *a19)
{
  cf = 0;
  v31 = ensureMetricEventTrace();
  if (!a18)
  {
    FigMetricContentKeyRequestEventCreateInternal_cold_3(v31, v32, v33, v34, v35, v36, v37, v38, v53, v55, SHIDWORD(v55), 0);
    v51 = 0;
    goto LABEL_32;
  }

  if (a19)
  {
    FigMetricEventGetClassID();
    v39 = CMDerivedObjectCreate();
    if (v39)
    {
      v51 = v39;
      goto LABEL_32;
    }

    v54 = a8;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
      v51 = 4294954510;
      goto LABEL_32;
    }

    v41 = DerivedStorage;
    v42 = FigSimpleMutexCreate();
    *(v41 + 192) = v42;
    if (v42)
    {
      *v41 = 1;
      *(v41 + 8) = 3;
      if (a5)
      {
        v43 = CFRetain(a5);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v43 = CFDateCreate(a1, Current);
      }

      *(v41 + 16) = v43;
      v45 = *a4;
      *(v41 + 48) = *(a4 + 2);
      *(v41 + 32) = v45;
      if (a6)
      {
        v46 = CFRetain(a6);
      }

      else
      {
        v46 = 0;
      }

      *(v41 + 24) = v46;
      if (a2)
      {
        v47 = CFRetain(a2);
      }

      else
      {
        v47 = 0;
      }

      *(v41 + 56) = v47;
      if (a3)
      {
        v48 = CFRetain(a3);
      }

      else
      {
        v48 = 0;
      }

      *(v41 + 72) = v48;
      *(v41 + 80) = CFDateCreate(a1, a9);
      *(v41 + 88) = CFDateCreate(a1, a10);
      *(v41 + 96) = CFDateCreate(a1, a11);
      *(v41 + 104) = CFDateCreate(a1, a12);
      *(v41 + 112) = a7;
      *(v41 + 120) = v54;
      *(v41 + 128) = a13;
      if (a14)
      {
        v49 = CFRetain(a14);
      }

      else
      {
        v49 = 0;
      }

      *(v41 + 136) = v49;
      if (a15)
      {
        v50 = CFRetain(a15);
      }

      else
      {
        v50 = 0;
      }

      *(v41 + 144) = v50;
      *(v41 + 156) = a16;
      v51 = 0;
      *(v41 + 168) = CFRetain(a18);
      *(v41 + 160) = a17;
      *a19 = 0;
      return v51;
    }

    FigMetricContentKeyRequestEventCreateInternal_cold_1(&v57);
  }

  else
  {
    FigMetricContentKeyRequestEventCreateInternal_cold_2(&v57);
  }

  v51 = v57;
LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }

  return v51;
}

uint64_t merr_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[8];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[9];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[17];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[18];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[21];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[2];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[11];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[10];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[13];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = DerivedStorage[12];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = DerivedStorage[3];
  if (v13)
  {
    CFRelease(v13);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef merr_copyDebugDesc(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v2 && v2(a1) == 3)
  {
    v3 = @"[FigMetricContentKeyRequestEvent  %p]";
  }

  else
  {
    v3 = @"[FigMetricResourceRequestEvent %p]";
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  return CFStringCreateWithFormat(AllocatorForMedia, 0, v3, a1);
}

uint64_t merr_setImmutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t merr_isMutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v2;
}

CFTypeRef merr_copySessionID(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t merr_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = 0;
  }

  else
  {
    merr_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t merr_getMediaTime@<X0>(uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(DerivedStorage + 32);
  *(a2 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t merr_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 48) = *(a2 + 2);
    *(DerivedStorage + 32) = v5;
  }

  else
  {
    merr_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigCEA608DataGeneratorCaptionInfoCreate(int a1, int a2, __int128 *a3, const void *a4, void *a5)
{
  if ((a1 - 1) >= 2)
  {
    if (a1 == 3)
    {
      if ((a2 - 2) < 3)
      {
        goto LABEL_2;
      }

      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950735, "< FigCEA608DataGenerator >", 1605, v5);
    }

    else
    {
      v17 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 4294950735, "< FigCEA608DataGenerator >", 1604, v5);
    }

    v16 = v15;
    goto LABEL_15;
  }

LABEL_2:
  if ((*(a3 + 3) & 0x1D) == 1 && (*(a3 + 9) & 0x1D) == 1)
  {
    v11 = MEMORY[0x19A8CC720](a4, 128, 0x1060040BD5CC85ALL, 0);
    if (v11)
    {
      v12 = v11;
      v11[6] = 0u;
      v11[7] = 0u;
      v11[4] = 0u;
      v11[5] = 0u;
      v11[2] = 0u;
      v11[3] = 0u;
      *v11 = 0u;
      v11[1] = 0u;
      if (a4)
      {
        v13 = CFRetain(a4);
      }

      else
      {
        v13 = 0;
      }

      v16 = 0;
      *v12 = v13;
      *(v12 + 2) = a1;
      *(v12 + 3) = a2;
      v18 = *a3;
      v19 = a3[2];
      v12[2] = a3[1];
      v12[3] = v19;
      v12[1] = v18;
      *a5 = v12;
    }

    else
    {
      FigCEA608DataGeneratorCaptionInfoCreate_cold_2(&v22);
      v16 = v22;
    }
  }

  else
  {
    FigCEA608DataGeneratorCaptionInfoCreate_cold_1(&v21);
    v16 = v21;
  }

LABEL_15:
  FigCEA608DataGeneratorCaptionInfoRelease(0);
  return v16;
}

uint64_t FigCEA608DataGeneratorCreate(uint64_t a1, uint64_t a2, const __CFAllocator *a3, uint64_t *a4)
{
  v119 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    FigCEA608DataGeneratorCreate_cold_7(&v108);
LABEL_106:
    v9 = 0;
LABEL_108:
    value_low = LODWORD(v108.start.value);
    goto LABEL_103;
  }

  if (!a4)
  {
    FigCEA608DataGeneratorCreate_cold_6(&v108);
    goto LABEL_106;
  }

  v5 = a3;
  v8 = MEMORY[0x19A8CC720](a3, 160, 0x10E00406167A9ECLL, 0);
  v9 = v8;
  if (!v8)
  {
    FigCEA608DataGeneratorCreate_cold_5(&v108);
    goto LABEL_108;
  }

  v73 = a4;
  v8[8] = 0u;
  v8[9] = 0u;
  v8[6] = 0u;
  v8[7] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *v8 = 0u;
  v8[1] = 0u;
  if (v5)
  {
    v10 = CFRetain(v5);
  }

  else
  {
    v10 = 0;
  }

  v74 = &v107;
  *v9 = v10;
  *(v9 + 9) = 1;
  *start = *MEMORY[0x1E6960CC0];
  *allocatora = *start;
  *&start[16] = *(MEMORY[0x1E6960CC0] + 16);
  v11 = *&start[16];
  *duration = *MEMORY[0x1E6960C88];
  *&duration[16] = *(MEMORY[0x1E6960C88] + 16);
  CMTimeRangeMake(&v108, start, duration);
  v12 = *&v108.start.value;
  v13 = *&v108.start.epoch;
  *(v9 + 44) = *&v108.duration.timescale;
  *(v9 + 76) = 0;
  *(v9 + 28) = v13;
  *(v9 + 12) = v12;
  *(v9 + 120) = *allocatora;
  *(v9 + 60) = kFigCEA608DefaultFrameDuration;
  *(v9 + 144) = a2;
  *(v9 + 152) = a1;
  *(v9 + 136) = v11;
  v106 = 0;
  v107 = 0;
  v108.start.value = 0x1F0B1CAB8;
  *&v108.start.timescale = 0x1F0B1CAD8;
  v14 = @"ÁÉÓÚÜü‘¡*'━©℠•“”ÀÂÇÈÊËëÎÏïÔÙùÛ«»";
  v108.start.epoch = 0x1F0B1CAF8;
  v108.duration.value = 0x1F0B1CB18;
  theDict = CFDictionaryCreateMutable(v5, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  allocator = v5;
  v75 = v9;
  if (theDict)
  {
    v15 = 0;
    while (1)
    {
      v16 = *(&v108.start.value + v15);
      if (FigCFEqual())
      {
        v17 = 48;
      }

      else
      {
        v17 = 32;
      }

      Length = CFStringGetLength(v16);
      v90 = 0u;
      v91 = 0u;
      v92 = 0;
      theString = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      memset(duration, 0, sizeof(duration));
      *&theString = v16;
      *&v91 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v16);
      CStringPtr = 0;
      *(&theString + 1) = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v16, 0x600u);
      }

      *&v90 = CStringPtr;
      *(&v91 + 1) = 0;
      v92 = 0;
      Mutable = CFDictionaryCreateMutable(allocator, Length, 0, 0);
      if (!Mutable)
      {
        break;
      }

      v22 = Mutable;
      if (Length >= 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 64;
        do
        {
          if (v24 >= 4)
          {
            v26 = 4;
          }

          else
          {
            v26 = v24;
          }

          v27 = v91;
          if (v91 <= v24)
          {
            v29 = 0;
          }

          else
          {
            if (*(&theString + 1))
            {
              v28 = (*(&theString + 1) + 2 * *(&v90 + 1));
            }

            else
            {
              if (v90)
              {
                v29 = *(v90 + *(&v90 + 1) + v24);
                goto LABEL_25;
              }

              v30 = *(&v91 + 1);
              if (v92 <= v24 || *(&v91 + 1) > v24)
              {
                v32 = v26 + v23;
                v33 = v25 - v26;
                v34 = v24 - v26;
                v35 = v34 + 64;
                if (v34 + 64 >= v91)
                {
                  v35 = v91;
                }

                *(&v91 + 1) = v34;
                v92 = v35;
                if (v91 >= v33)
                {
                  v27 = v33;
                }

                v120.location = *(&v90 + 1) + v34;
                v120.length = v27 + v32;
                CFStringGetCharacters(theString, v120, duration);
                v30 = *(&v91 + 1);
              }

              v28 = &duration[-2 * v30];
            }

            v29 = *&v28[2 * v24];
          }

LABEL_25:
          CFDictionaryAddValue(v22, v29, (v17 + v24++));
          --v23;
          ++v25;
        }

        while (Length != v24);
      }

      CFDictionaryAddValue(theDict, off_1E74787E8[v15], v22);
      CFRelease(v22);
      if (++v15 == 4)
      {
        v5 = allocator;
        v106 = theDict;
        v9 = v75;
        goto LABEL_41;
      }
    }

    FigCEA608DataGeneratorCreate_cold_1(duration, theDict, start);
    value_low = *start;
    v9 = v75;
    v5 = allocator;
    if (*start)
    {
      goto LABEL_97;
    }
  }

  else
  {
    FigCEA608DataGeneratorCreate_cold_2(start);
    value_low = *start;
    if (*start)
    {
      goto LABEL_97;
    }
  }

LABEL_41:
  v104 = 0x1F0B1CB58;
  v105 = 0x1F0B1CB38;
  v76 = CFDictionaryCreateMutable(v5, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v76)
  {
    v36 = 0;
    v37 = &v105;
    v38 = 1;
    while (1)
    {
      v39 = v38;
      v40 = CFStringGetLength(v14);
      v41 = *v37;
      if (v40 != CFStringGetLength(*v37))
      {
        FigCEA608DataGeneratorCreate_cold_3(&v108);
        value_low = LODWORD(v108.start.value);
        goto LABEL_94;
      }

      v115 = 0;
      v117 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      memset(&v108, 0, sizeof(v108));
      v103 = 0;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v94 = 0u;
      memset(start, 0, sizeof(start));
      *&v114 = v14;
      v116 = 0;
      v118 = 0;
      *&v117 = v40;
      v42 = CFStringGetCharactersPtr(v14);
      v43 = 0;
      *(&v114 + 1) = v42;
      if (!v42)
      {
        v43 = CFStringGetCStringPtr(v14, 0x600u);
      }

      v115 = v43;
      *(&v117 + 1) = 0;
      v118 = 0;
      *&v100 = v41;
      *(&v101 + 1) = 0;
      *&v102 = v40;
      v44 = CFStringGetCharactersPtr(v41);
      v45 = 0;
      *(&v100 + 1) = v44;
      if (!v44)
      {
        v45 = CFStringGetCStringPtr(v41, 0x600u);
      }

      *&v101 = v45;
      *(&v102 + 1) = 0;
      v103 = 0;
      v46 = CFDictionaryCreateMutable(v5, v40, 0, 0);
      if (!v46)
      {
        break;
      }

      v47 = v46;
      v77 = v39;
      theDicta = v36;
      if (v40 >= 1)
      {
        v48 = 0;
        v49 = 0;
        v50 = 64;
        do
        {
          if (v49 >= 4)
          {
            v51 = 4;
          }

          else
          {
            v51 = v49;
          }

          v52 = v51 + v48;
          v53 = v50 - v51;
          v54 = -v51;
          v55 = v117;
          if (v117 <= v49)
          {
            v57 = 0;
          }

          else
          {
            if (*(&v114 + 1))
            {
              v56 = (*(&v114 + 1) + 2 * v116);
LABEL_57:
              v57 = *&v56[2 * v49];
              goto LABEL_59;
            }

            if (!v115)
            {
              v61 = *(&v117 + 1);
              if (v118 <= v49 || *(&v117 + 1) > v49)
              {
                v63 = v49 + v54 + 64;
                if (v63 >= v117)
                {
                  v63 = v117;
                }

                *(&v117 + 1) = v49 + v54;
                v118 = v63;
                if (v117 >= v53)
                {
                  v55 = v53;
                }

                v121.location = v49 + v54 + v116;
                v121.length = v55 + v52;
                CFStringGetCharacters(v114, v121, &v108);
                v61 = *(&v117 + 1);
              }

              v56 = &v108 - 2 * v61;
              goto LABEL_57;
            }

            v57 = v115[v116 + v49];
          }

LABEL_59:
          v58 = v102;
          if (v102 <= v49)
          {
            v60 = 0;
          }

          else
          {
            if (*(&v100 + 1))
            {
              v59 = (*(&v100 + 1) + 2 * *(&v101 + 1));
            }

            else
            {
              if (v101)
              {
                v60 = *(v101 + *(&v101 + 1) + v49);
                goto LABEL_64;
              }

              if (v103 <= v49 || (v64 = *(&v102 + 1), *(&v102 + 1) > v49))
              {
                v65 = v49 + v54 + 64;
                if (v65 >= v102)
                {
                  v65 = v102;
                }

                *(&v102 + 1) = v49 + v54;
                v103 = v65;
                if (v102 >= v53)
                {
                  v58 = v53;
                }

                v122.location = v49 + v54 + *(&v101 + 1);
                v122.length = v58 + v52;
                CFStringGetCharacters(v100, v122, start);
                v64 = *(&v102 + 1);
              }

              v59 = &start[-2 * v64];
            }

            v60 = *&v59[2 * v49];
          }

LABEL_64:
          CFDictionaryAddValue(v47, v57, v60);
          ++v49;
          --v48;
          ++v50;
        }

        while (v40 != v49);
      }

      CFDictionaryAddValue(v76, off_1E7478808[theDicta], v47);
      CFRelease(v47);
      v38 = 0;
      v37 = &v104;
      v14 = @"ÃãÍÌìÒòÕõ{}\\^_|~ÄäÖöß¥¤┃ÅåØø┏┓┗┛";
      v36 = 1;
      v5 = allocator;
      if ((v77 & 1) == 0)
      {
        v107 = v76;
        v9 = v75;
        goto LABEL_95;
      }
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v73, &v107);
    value_low = v67;
LABEL_94:
    CFRelease(v76);
    v9 = v75;
    if (!value_low)
    {
LABEL_95:
      value_low = FigCFCreateCombinedDictionary();
      if (!value_low)
      {
        *(v9 + 88) = 0;
      }
    }
  }

  else
  {
    FigCEA608DataGeneratorCreate_cold_4(&v108);
    value_low = LODWORD(v108.start.value);
    if (!LODWORD(v108.start.value))
    {
      goto LABEL_95;
    }
  }

LABEL_97:
  v68 = &v106;
  v69 = 1;
  do
  {
    v70 = v69;
    if (*v68)
    {
      CFRelease(*v68);
    }

    v69 = 0;
    v68 = v74;
  }

  while ((v70 & 1) != 0);
  if (!value_low)
  {
    *v73 = v9;
    v9 = 0;
  }

LABEL_103:
  FigCEA608DataGeneratorRelease(v9);
  return value_low;
}

__n128 cea608dgCCDataGetQuantizedTimeByFrameDuration@<Q0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2->flags & 0x1D) == 1)
  {
    time = *a2;
    v6 = CMTimeGetSeconds(&time) * (*(a1 + 8) / *a1);
    v8 = *a1;
    CMTimeMultiply(&time, &v8, llroundf(v6));
    *a2 = time;
  }

  result = *&a2->value;
  *a3 = *&a2->value;
  *(a3 + 16) = a2->epoch;
  return result;
}

uint64_t cea608dgCaptionInfoCopy(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x19A8CC720](a3, 128, 0x1060040BD5CC85ALL, 0);
  if (v7)
  {
    v8 = v7;
    v7[6] = 0u;
    v7[7] = 0u;
    v7[4] = 0u;
    v7[5] = 0u;
    v7[2] = 0u;
    v7[3] = 0u;
    *v7 = 0u;
    v7[1] = 0u;
    v9 = *a2;
    if (*a2)
    {
      v9 = CFRetain(v9);
    }

    *v8 = v9;
    *(v8 + 1) = *(a2 + 8);
    v10 = *(a2 + 16);
    v11 = *(a2 + 48);
    v8[2] = *(a2 + 32);
    v8[3] = v11;
    v8[1] = v10;
    v20 = *a1;
    v21 = *(a1 + 2);
    v12 = *(a2 + 16);
    flags = *(a2 + 28);
    timescale = *(a2 + 24);
    value = v12;
    epoch = *(a2 + 32);
    v14 = *(a2 + 40);
    v16 = *(a2 + 52);
    v28 = *(a2 + 48);
    v27 = v14;
    v17 = *(a2 + 56);
    if ((flags & 0x1D) == 1 && (v16 & 0x1D) == 1)
    {
      memset(&v26, 0, sizeof(v26));
      *&range.start.value = *a1;
      range.start.epoch = *(a1 + 2);
      v25.value = *(a2 + 16);
      v25.timescale = *(a2 + 24);
      v25.flags = flags;
      v25.epoch = epoch;
      cea608dgCCDataGetQuantizedTimeByFrameDuration(&range, &v25, &v26);
      memset(&v25, 0, sizeof(v25));
      range.start.value = value;
      range.start.timescale = timescale;
      range.start.flags = flags;
      range.start.epoch = epoch;
      range.duration.value = v27;
      range.duration.timescale = v28;
      range.duration.flags = v16;
      range.duration.epoch = v17;
      CMTimeRangeGetEnd(&duration, &range);
      *&range.start.value = v20;
      range.start.epoch = v21;
      cea608dgCCDataGetQuantizedTimeByFrameDuration(&range, &duration, &v25);
      range.start = v25;
      rhs = v26;
      CMTimeSubtract(&duration, &range.start, &rhs);
      rhs = v26;
      CMTimeRangeMake(&range, &rhs, &duration);
      value = range.start.value;
      flags = range.start.flags;
      timescale = range.start.timescale;
      epoch = range.start.epoch;
      v27 = range.duration.value;
      v16 = range.duration.flags;
      v28 = range.duration.timescale;
      v17 = range.duration.epoch;
    }

    result = 0;
    *(v8 + 8) = value;
    *(v8 + 18) = timescale;
    *(v8 + 19) = flags;
    v19 = v27;
    *(v8 + 10) = epoch;
    *(v8 + 11) = v19;
    *(v8 + 24) = v28;
    *(v8 + 25) = v16;
    *(v8 + 13) = v17;
    *a4 = v8;
  }

  else
  {
    cea608dgCaptionInfoCopy_cold_1(&range);
    return LODWORD(range.start.value);
  }

  return result;
}

void FigCEA608DataGeneratorAddCaptionLine(uint64_t a1, uint64_t a2, uint64_t a3, CFAttributedStringRef aStr)
{
  v74 = a3;
  if (a1)
  {
    v4 = a2;
    if ((a2 - 16) <= 0xFFFFFFF0)
    {
      FigCEA608DataGeneratorAddCaptionLine_cold_11(&v81);
    }

    else if ((a3 - 33) <= 0xFFFFFFDF)
    {
      FigCEA608DataGeneratorAddCaptionLine_cold_10(&v81);
    }

    else if (aStr)
    {
      if (CFAttributedStringGetLength(aStr))
      {
        v7 = *(a1 + 112);
        if (v7)
        {
          v8 = *(v7 + 112);
          v67 = a1;
          v9 = *(a1 + 88);
          String = CFAttributedStringGetString(aStr);
          Length = CFStringGetLength(String);
          longestEffectiveRange.location = 0;
          longestEffectiveRange.length = 0;
          Limit = FigCFRangeGetLimit();
          if (Limit < FigCFRangeGetLimit())
          {
            aStra = aStr;
            v13 = 0;
            v14 = 0;
            LODWORD(v15) = 0;
            v16 = v4 - 1;
            v17 = v4 & 0xE;
            if (v17 == 14)
            {
              v18 = 20;
            }

            else
            {
              v18 = 0;
            }

            v19 = v17 == 12;
            if (v17 == 12)
            {
              v20 = 19;
            }

            else
            {
              v20 = v18;
            }

            if ((v19 || v4 >= 0xC) && v16 >= 0xB)
            {
              v23 = v4;
            }

            else
            {
              v23 = v4 - 1;
            }

            v73 = (v74 - 1) & 3;
            v68 = (((v74 - 1) >> 1) & 0x7E) + 16;
            v69 = v73 - 1;
            if (v16 < 2)
            {
              v24 = 17;
            }

            else
            {
              v24 = 18;
            }

            if (v16 >= 4)
            {
              v24 = 21;
            }

            if (v16 >= 6)
            {
              v24 = 22;
            }

            if (v16 >= 8)
            {
              v24 = 23;
            }

            if (v16 >= 0xA)
            {
              v24 = 16;
            }

            if (v16 >= 0xB)
            {
              v25 = v20;
            }

            else
            {
              v25 = v24;
            }

            v72 = v25;
            v71 = 32 * (v23 & 1);
            v26 = 1;
            v75 = Length;
            while (1)
            {
              v27 = FigCFRangeGetLimit();
              v94.location = 0;
              v94.length = Length;
              CFAttributedStringGetAttributesAndLongestEffectiveRange(aStra, v27, v94, &longestEffectiveRange);
              v81 = xmmword_196E72F60;
              FigCFDictionaryGetInt32IfPresent();
              if (v81 > 7 || (FigCFDictionaryGetInt32IfPresent(), DWORD1(v81) > 7) || (FigCFDictionaryGetInt32IfPresent(), DWORD2(v81) > 2))
              {
                if (!FigCEA608DataGeneratorAddCaptionLine_cold_1())
                {
                  return;
                }

                v29 = 0;
                v28 = 0;
              }

              else
              {
                FigCFDictionaryGetBooleanIfPresent();
                FigCFDictionaryGetBooleanIfPresent();
                v29 = *(&v81 + 1);
                v28 = v81;
              }

              v30 = HIDWORD(v28);
              v77 = v28;
              v78 = v29;
              if (v26)
              {
                v32 = (v29 & 0xFF00FFFFFFFFLL) == 0 && v30 == 7;
                v33 = (v29 & 0xFF00000000) != 0 && v32;
                if (v74 > 4 || v28 == 7)
                {
                  v36 = 0;
                  v35 = v68 | v33;
                }

                else
                {
                  if ((v29 & 0xFF00000000) != 0)
                  {
                    v34 = 15;
                  }

                  else
                  {
                    v34 = 14;
                  }

                  v35 = v33 | (2 * v28);
                  v36 = v28;
                  if (!v28 && (v78 & 0xFF0000000000) != 0)
                  {
                    v36 = 0;
                    v37 = 1;
                    LOBYTE(v35) = v34;
LABEL_63:
                    bytes[0] = v72;
                    bytes[1] = v71 | v35 | 0x40;
                    CFDataAppendBytes(v8, bytes, 2);
                    if (v73)
                    {
                      *v93 = kFigCEA608TabOffsetControlCodes[v69];
                      CFDataAppendBytes(v8, v93, 2);
                    }

                    LODWORD(v79) = v36;
                    *(&v79 + 4) = 7;
                    BYTE12(v79) = v33;
                    BYTE13(v79) = v37;
                    HIWORD(v79) = 0;
                    v13 = *(&v79 + 1);
                    v14 = v79;
                    v29 = v78;
                    goto LABEL_66;
                  }
                }

                if (v35 <= 0x1F)
                {
                  v37 = 0;
                  goto LABEL_63;
                }

                v29 = v78;
                if (!FigCEA608DataGeneratorAddCaptionLine_cold_2())
                {
                  return;
                }
              }

LABEL_66:
              if ((v30 != HIDWORD(v14) || v13 != v29) && (v13 != 2 || v29 != 2))
              {
                if (v29 == 2)
                {
                  v64 = &kFigCEA608ForegroundAttributeCodes;
                  if (v13 != 2)
                  {
                    goto LABEL_141;
                  }
                }

                v65 = v29 + 2 * HIDWORD(v28);
                if (v65 <= 0xF)
                {
                  v64 = (&kFigCEA608BackgroundAttributeCodes + 2 * v65);
LABEL_141:
                  FigCEA608DataGeneratorAddCaptionLine_cold_4(v64, &v83, v8);
                  goto LABEL_70;
                }

                if (!FigCEA608DataGeneratorAddCaptionLine_cold_3())
                {
                  return;
                }
              }

LABEL_70:
              if (v14 == v28 && BYTE4(v13) == BYTE4(v29) && BYTE5(v13) == BYTE5(v29))
              {
                goto LABEL_95;
              }

              v38 = BYTE4(v29) != BYTE4(v13);
              v39 = v29 & 0xFF0000000000;
              v40 = (v29 & 0xFF0000000000) == 0 && (BYTE5(v13) ^ BYTE5(v29)) != 0;
              if ((v29 & 0xFF0000000000) != 0)
              {
                v38 = 0;
              }

              if (v14 == v28 && !v38 && !v40)
              {
                goto LABEL_91;
              }

              if (BYTE4(v29))
              {
                v41 = v39 == 0;
              }

              else
              {
                v41 = 0;
              }

              v42 = v41;
              if (v28 != 7)
              {
                if ((v28 & 0x80000000) != 0 || (v43 = v42 | (2 * v28), v43 > 15))
                {
                  if (!FigCEA608DataGeneratorAddCaptionLine_cold_5())
                  {
                    return;
                  }

                  goto LABEL_95;
                }

                *v84 = kFigCEA608MidRowCodes[v43];
                CFDataAppendBytes(v8, v84, 2);
LABEL_91:
                if (v39)
                {
                  goto LABEL_92;
                }

                goto LABEL_95;
              }

              FigCEA608DataGeneratorAddCaptionLine_cold_6(v42, v84, v8);
              if (v39)
              {
LABEL_92:
                v44 = 15;
                if (!BYTE4(v29))
                {
                  v44 = 14;
                }

                *v84 = kFigCEA608MidRowCodes[v44];
                CFDataAppendBytes(v8, v84, 2);
              }

LABEL_95:
              if (!v15)
              {
                v45 = CFDataGetLength(v8);
                BytePtr = CFDataGetBytePtr(v8);
                if (v45 < 2)
                {
LABEL_100:
                  v15 = CFDataGetLength(v8) >> 1;
                }

                else
                {
                  v15 = 0;
                  while (1)
                  {
                    v47 = *BytePtr;
                    BytePtr += 2;
                    if (v47 == 32)
                    {
                      break;
                    }

                    if (v45 >> 1 == ++v15)
                    {
                      goto LABEL_100;
                    }
                  }
                }
              }

              location = longestEffectiveRange.location;
              *buffer = 0;
              v49.location = CFDataGetLength(v8) - 2;
              if (v49.location >= 0)
              {
                v49.length = 2;
                CFDataGetBytes(v8, v49, buffer);
              }

              if (location < FigCFRangeGetLimit())
              {
                v50 = location;
                do
                {
                  *v87 = 0;
                  v86 = 0;
                  v85 = 0;
                  CharacterAtIndex = CFStringGetCharacterAtIndex(String, v50);
                  if (!cea608dgCharacterMappingGetControlCodeForCharacter(v9, CharacterAtIndex, v87, &v86, &v85 + 1, &v85))
                  {
                    v87[0] = 127;
                    v86 = 1;
                  }

                  if (HIBYTE(v85) && buffer[0] == v87[0])
                  {
                    if (buffer[1] == v87[1])
                    {
                      v52 = 2;
                    }

                    else
                    {
                      v52 = 1;
                    }
                  }

                  else
                  {
                    v52 = 1;
                  }

                  if (v85)
                  {
                    v53 = 0;
                    *v93 = 0;
                    v54 = 1;
                    do
                    {
                      v55 = v54;
                      Value = CFDictionaryGetValue(v9, off_1E7478808[v53]);
                      ValueIfPresent = CFDictionaryGetValueIfPresent(Value, CharacterAtIndex, v93);
                      if (ValueIfPresent == 1)
                      {
                        v59 = *v93;
                        goto LABEL_121;
                      }

                      if (ValueIfPresent)
                      {
                        break;
                      }

                      v54 = 0;
                      v53 = 1;
                    }

                    while ((v55 & 1) != 0);
                    fig_log_get_emitter();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, v68, v70);
                    if (v58)
                    {
                      return;
                    }

                    v59 = 0;
LABEL_121:
                    *v92 = 0;
                    v91 = 0;
                    v89 = 0;
                    if (cea608dgCharacterMappingGetControlCodeForCharacter(v9, v59, v92, &v91, &v90, &v89) == 1 && v91 == 1 && !v89)
                    {
                      CFDataAppendBytes(v8, v92, 1);
                    }

                    else
                    {
                      fig_log_get_emitter();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v67, v68, v70);
                      if (v62)
                      {
                        return;
                      }
                    }
                  }

                  v60 = v86;
                  if (v86 == 1)
                  {
                    v61 = 1;
                  }

                  else
                  {
                    v61 = 2;
                  }

                  do
                  {
                    if (v60 == 2)
                    {
                      cea608dgCCDataAppendPaddingIfNeeded(v8);
                    }

                    CFDataAppendBytes(v8, v87, v61);
                    --v52;
                  }

                  while (v52);
                  *buffer = *v87;
                  ++v50;
                }

                while (v50 < FigCFRangeGetLimit());
              }

              cea608dgCCDataAppendPaddingIfNeeded(v8);
              v14 = v77;
              v13 = v78;
              v63 = FigCFRangeGetLimit();
              Length = v75;
              v26 = 0;
              if (v63 >= FigCFRangeGetLimit())
              {
                goto LABEL_153;
              }
            }
          }

          LODWORD(v15) = 0;
LABEL_153:
          v66 = *(v67 + 112);
          if (!*(v66 + 120))
          {
            *(v66 + 120) = v15;
          }
        }

        else
        {
          FigCEA608DataGeneratorAddCaptionLine_cold_7(&v81);
        }
      }

      else
      {
        FigCEA608DataGeneratorAddCaptionLine_cold_8(&v81);
      }
    }

    else
    {
      FigCEA608DataGeneratorAddCaptionLine_cold_9(&v81);
    }
  }

  else
  {
    FigCEA608DataGeneratorAddCaptionLine_cold_12(&v81);
  }
}

uint64_t FigCEA608DataGeneratorEndCaption(uint64_t a1, CMTime *a2, CMTime *a3, uint64_t a4)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      result = cea608dgStoreCCDataSequentially(a1, a2, a3);
      if (a4)
      {
        if (!result)
        {
          v7 = *(a1 + 120);
          *(a4 + 16) = *(a1 + 136);
          *a4 = v7;
        }
      }
    }

    else
    {
      FigCEA608DataGeneratorEndCaption_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigCEA608DataGeneratorEndCaption_cold_2(&v9);
    return v9;
  }

  return result;
}

uint64_t cea608dgStoreCCDataSequentially(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v173 = *MEMORY[0x1E69E9840];
  allocator = *a1;
  v129 = *(a1 + 60);
  v130 = *(a1 + 76);
  v5 = MEMORY[0x1E6960C70];
  v157 = *MEMORY[0x1E6960C70];
  v158 = *(MEMORY[0x1E6960C70] + 8);
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v7 = MEMORY[0x1E6960C98];
  v8 = *MEMORY[0x1E6960C98];
  v155 = v8;
  v9 = *(MEMORY[0x1E6960C98] + 8);
  v156 = v9;
  v153 = v8;
  v154 = v9;
  v10 = *(MEMORY[0x1E6960C98] + 32);
  v122 = *(MEMORY[0x1E6960C98] + 16);
  v123 = *MEMORY[0x1E6960C98];
  *&v128.start.value = *MEMORY[0x1E6960C98];
  *&v128.start.epoch = v122;
  v124 = v10;
  *&v128.duration.timescale = v10;
  v11 = *(a1 + 112);
  v119 = v6;
  if (v11)
  {
    *&time1.start.value = *(a1 + 60);
    time1.start.epoch = *(a1 + 76);
    v12 = *(v11 + 8);
    *v162 = *MEMORY[0x1E6960C70];
    *&v162[16] = v6;
    if (v12 == 1 && (v13 = *(v11 + 112)) != 0)
    {
      v14 = CFRetain(v13);
    }

    else
    {
      v14 = 0;
    }

    *&range.start.value = *&time1.start.value;
    range.start.epoch = time1.start.epoch;
    AheadDuration = cea608dgCCDataGetDuration(v14, &range.start, v162);
    if (AheadDuration)
    {
      goto LABEL_161;
    }

    v157 = *v162;
    v16 = *&v162[12];
    v158 = *&v162[8];
    v109 = *&v162[16];
    if (v12 == 1 && v14)
    {
      *(a1 + 101) = 1;
    }
  }

  else
  {
    v14 = 0;
    v16 = *(MEMORY[0x1E6960C70] + 12);
    v109 = v6;
  }

  v17 = *(v7 + 12);
  v18 = *(v7 + 16);
  v19 = *(v7 + 24);
  v20 = *(v7 + 32);
  v21 = *(v7 + 36);
  v22 = *(v7 + 40);
  v23 = *(a1 + 104);
  v101 = v19;
  v102 = v18;
  v100 = v22;
  v98 = v21;
  v99 = v20;
  v116 = v14;
  v95 = v17;
  v110 = v16;
  if (!v23)
  {
    cf = 0;
    v29 = v17;
    v30 = v18;
    v121 = v19;
    v117 = v20;
    v31 = v21;
    v104 = v22;
    goto LABEL_32;
  }

  v24 = *(a1 + 112);
  v25 = *(a1 + 8);
  v127.start.value = 0;
  *v162 = v123;
  *&v162[16] = v122;
  *&v162[32] = v124;
  if (!v24)
  {
    goto LABEL_21;
  }

  v26 = *(v23 + 80);
  *&range.start.value = *(v23 + 64);
  *&range.start.epoch = v26;
  *&range.duration.timescale = *(v23 + 96);
  CMTimeRangeGetEnd(&time1.start, &range);
  *&range.start.value = *(v24 + 64);
  range.start.epoch = *(v24 + 80);
  v27 = CMTimeCompare(&time1.start, &range.start);
  v28 = *(v24 + 8);
  if (v28 == 3)
  {
    if (*(v23 + 8) == 3)
    {
      goto LABEL_26;
    }

    *&time1.start.value = *v5;
    time1.start.epoch = v119;
    v36 = *(v24 + 120);
    *&range.start.value = v129;
    range.start.epoch = v130;
    AheadDuration = cea608dgGetAheadDuration(&range.start, v36, &time1.start);
    if (!AheadDuration)
    {
      memset(&v141, 0, 24);
      *&range.start.value = *(v24 + 64);
      range.start.epoch = *(v24 + 80);
      *&rhs.start.value = *&time1.start.value;
      rhs.start.epoch = time1.start.epoch;
      CMTimeSubtract(&v141.start, &range.start, &rhs.start);
      v37 = *(v23 + 80);
      *&range.start.value = *(v23 + 64);
      *&range.start.epoch = v37;
      *&range.duration.timescale = *(v23 + 96);
      CMTimeRangeGetEnd(&rhs.start, &range);
      *&range.start.value = *&v141.start.value;
      range.start.epoch = v141.start.epoch;
      v27 = CMTimeCompare(&range.start, &rhs.start);
      goto LABEL_26;
    }

LABEL_161:
    EraseCCData = AheadDuration;
    goto LABEL_150;
  }

  if (v28 == 2)
  {
    if (v27 || *(v23 + 8) != 2)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  if (v28 != 1)
  {
    goto LABEL_27;
  }

  if (v25)
  {
    goto LABEL_21;
  }

LABEL_26:
  if (v27)
  {
LABEL_21:
    v32 = *(v23 + 80);
    *&range.start.value = *(v23 + 64);
    *&range.start.epoch = v32;
    *&range.duration.timescale = *(v23 + 96);
    CMTimeRangeGetEnd(&time1.start, &range);
    *&range.start.value = v129;
    range.start.epoch = v130;
    EraseCCData = cea608dgCreateEraseCCData(&range, &time1.start, allocator, &v127, v162);
    value = v127.start.value;
    if (EraseCCData)
    {
      if (v127.start.value)
      {
        goto LABEL_149;
      }

      goto LABEL_150;
    }

    v35 = 1;
    goto LABEL_28;
  }

LABEL_27:
  value = 0;
  v35 = 0;
LABEL_28:
  v155 = *v162;
  v29 = *&v162[12];
  v156 = *&v162[8];
  v30 = *&v162[16];
  v121 = *&v162[24];
  v117 = *&v162[32];
  v31 = *&v162[36];
  cf = value;
  v104 = *&v162[40];
  if (value && v35)
  {
    *(a1 + 100) = 0;
  }

  v19 = v101;
  v18 = v102;
  v22 = v100;
  v21 = v98;
  v20 = v99;
LABEL_32:
  v38 = *(a1 + 112);
  v93 = v3;
  if (!v38)
  {
    v118 = 0;
    v120 = v95;
    v114 = v18;
    v111 = v19;
    v112 = v22;
    v106 = v20;
    v113 = v21;
LABEL_37:
    v42 = cf;
    goto LABEL_52;
  }

  v39 = *(v38 + 8);
  *v162 = v123;
  *&v162[16] = v122;
  *&v162[32] = v124;
  if ((v39 - 2) < 2)
  {
    v40 = *(v38 + 112);
    if (v40)
    {
      v41 = CFRetain(v40);
    }

    else
    {
      v41 = 0;
    }

    *&range.start.value = *v5;
    range.start.epoch = v119;
    v45 = *(v38 + 120);
    *&time1.start.value = v129;
    time1.start.epoch = v130;
    v46 = cea608dgGetAheadDuration(&time1.start, v45, &range.start);
    if (v46)
    {
      EraseCCData = v46;
      v42 = cf;
      goto LABEL_168;
    }

    *&time1.start.value = *(v38 + 64);
    time1.start.epoch = *(v38 + 80);
    *&v141.start.value = *&range.start.value;
    v141.start.epoch = range.start.epoch;
    CMTimeSubtract(v162, &time1.start, &v141.start);
    goto LABEL_45;
  }

  if (v39 != 1)
  {
    v41 = 0;
LABEL_45:
    v44 = 1;
    goto LABEL_46;
  }

  LOWORD(range.start.value) = 12052;
  v43 = CFDataCreate(allocator, &range, 2);
  if (v43)
  {
    v41 = v43;
    v44 = 0;
    *v162 = *(v38 + 64);
    *&v162[16] = *(v38 + 80);
LABEL_46:
    *&range.start.value = v129;
    range.start.epoch = v130;
    v47 = cea608dgCCDataGetDuration(v41, &range.start, &v162[24]);
    v42 = cf;
    if (!v47)
    {
      v153 = *v162;
      v120 = *&v162[12];
      v154 = *&v162[8];
      v114 = *&v162[16];
      v113 = *&v162[36];
      v106 = *&v162[32];
      v111 = *&v162[24];
      v112 = *&v162[40];
      v118 = v41;
      if (v41)
      {
        if (v44)
        {
          *(a1 + 100) = 1;
        }

        else
        {
          v48 = *(a1 + 100);
          *(a1 + 100) = *(a1 + 101);
          *(a1 + 101) = v48;
        }
      }

      else
      {
        v118 = 0;
      }

LABEL_52:
      v49 = *(a1 + 112);
      if (v49)
      {
        v50 = v49[5];
        *v162 = v49[4];
        *&v162[16] = v50;
        *&v162[32] = v49[6];
        CMTimeRangeGetEnd(&range.start, v162);
        *v162 = v129;
        *&v162[16] = v130;
        ByteLengthFromDuration = cea608dgCreateEraseCCData(v162, &range.start, allocator, 0, &v128);
        if (ByteLengthFromDuration)
        {
          goto LABEL_172;
        }
      }

      v151 = v157;
      v152 = v158;
      v149 = v155;
      timescale = v156;
      v147 = v153;
      v148 = v154;
      v127 = v128;
      memset(&v142, 0, sizeof(v142));
      CMTimeMakeWithSeconds(&v142, 3.0, *(a1 + 68));
      *&v141.start.value = v123;
      *&v141.start.epoch = v122;
      *&v141.duration.timescale = v124;
      *&rhs.start.value = v123;
      *&rhs.start.epoch = v122;
      *&rhs.duration.timescale = v124;
      v172 = 0u;
      v171 = 0u;
      v170 = 0u;
      v169 = 0u;
      memset(&v168, 0, sizeof(v168));
      v167 = 0u;
      v166 = 0u;
      v165 = 0u;
      v164 = 0u;
      v163 = 0u;
      memset(v162, 0, sizeof(v162));
      v160 = v8;
      v161 = v9;
      *&v139.value = *MEMORY[0x1E6960CC0];
      v52 = *(MEMORY[0x1E6960CC0] + 16);
      v139.epoch = v52;
      *&v138.value = *&v139.value;
      v138.epoch = v52;
      *allocatora = *&v139.value;
      *&v137.value = *&v139.value;
      v137.epoch = v52;
      if ((v29 & 1) == 0 || (v53 = v31, (v31 & 1) == 0) || v104 || (epoch = v30, flags = v29, v56 = 0, v121 < 0))
      {
        *&time1.start.value = *(a1 + 120);
        time1.start.epoch = *(a1 + 136);
        *&duration.value = *&v139.value;
        duration.epoch = v52;
        CMTimeRangeMake(&range, &time1.start, &duration);
        v149 = range.start.value;
        flags = range.start.flags;
        timescale = range.start.timescale;
        epoch = range.start.epoch;
        v121 = range.duration.value;
        v117 = range.duration.timescale;
        v53 = range.duration.flags;
        v56 = range.duration.epoch;
      }

      if (!*(a1 + 9) || (range.start.value = v149, range.start.timescale = timescale, range.start.flags = flags, range.start.epoch = epoch, *&time1.start.value = *(a1 + 120), time1.start.epoch = *(a1 + 136), (CMTimeCompare(&range.start, &time1.start) & 0x80000000) == 0))
      {
        memset(&v136, 0, sizeof(v136));
        range.start.value = v149;
        range.start.timescale = timescale;
        range.start.flags = flags;
        range.start.epoch = epoch;
        *&time1.start.value = *(a1 + 120);
        time1.start.epoch = *(a1 + 136);
        CMTimeSubtract(&v136, &range.start, &time1.start);
        v103 = v56;
        v105 = epoch;
        if ((v110 & 1) != 0 && (range.start.value = v157, range.start.timescale = v158, range.start.flags = v110, range.start.epoch = v109, *&time1.start.value = *allocatora, time1.start.epoch = v52, CMTimeCompare(&range.start, &time1.start)))
        {
          memset(&time1, 0, 24);
          range.start.value = v149;
          range.start.timescale = timescale;
          range.start.flags = flags;
          range.start.epoch = epoch;
          range.duration.value = v121;
          range.duration.timescale = v117;
          range.duration.flags = v53;
          range.duration.epoch = v56;
          CMTimeRangeGetEnd(&duration, &range);
          range.start.value = v147;
          range.start.timescale = v148;
          range.start.flags = v120;
          range.start.epoch = v114;
          CMTimeSubtract(&time1.start, &range.start, &duration);
          range.start.value = v151;
          range.start.timescale = v152;
          range.start.flags = v110;
          range.start.epoch = v109;
          duration = v136;
          if (CMTimeCompare(&range.start, &duration) <= 0 && (*&range.start.value = *&time1.start.value, range.start.epoch = time1.start.epoch, duration = v142, CMTimeCompare(&range.start, &duration) <= 0))
          {
            duration.value = v149;
            duration.timescale = timescale;
            duration.flags = flags;
            duration.epoch = epoch;
            v143.value = v151;
            v143.timescale = v152;
            v143.flags = v110;
            v143.epoch = v109;
            CMTimeSubtract(&range.start, &duration, &v143);
            duration.value = v151;
            duration.timescale = v152;
            duration.flags = v110;
            duration.epoch = v109;
            CMTimeRangeMake(&v141, &range.start, &duration);
            v59 = 1;
          }

          else
          {
            range.start.value = v151;
            range.start.timescale = v152;
            range.start.flags = v110;
            range.start.epoch = v109;
            duration = time1.start;
            if (CMTimeCompare(&range.start, &duration) > 0)
            {
              duration = time1.start;
              memset(&v143, 0, sizeof(v143));
              range.start.value = v147;
              range.start.timescale = v148;
              range.start.flags = v120;
              range.start.epoch = v114;
              start = time1.start;
              CMTimeSubtract(&v143, &range.start, &start);
              start = v143;
              v159 = duration;
              CMTimeRangeMake(&range, &start, &v159);
              rhs = range;
              memset(&start, 0, sizeof(start));
              range.start.value = v151;
              range.start.timescale = v152;
              range.start.flags = v110;
              range.start.epoch = v109;
              v159 = duration;
              CMTimeSubtract(&start, &range.start, &v159);
              memset(&v159, 0, sizeof(v159));
              range.start.value = v149;
              range.start.timescale = timescale;
              range.start.flags = flags;
              range.start.epoch = epoch;
              time2 = start;
              CMTimeSubtract(&v159, &range.start, &time2);
              time2 = v159;
              v133 = start;
              CMTimeRangeMake(&range, &time2, &v133);
              v141 = range;
              range.start = range.duration;
              time2 = v136;
              CMTimeSubtract(&v139, &range.start, &time2);
              *&range.start.value = *allocatora;
              range.start.epoch = v52;
              time2 = v139;
              if (CMTimeCompare(&range.start, &time2) < 0 && (v138 = v139, *(a1 + 9)))
              {
                time2 = v141.start;
                v133 = v139;
                CMTimeAdd(&range.start, &time2, &v133);
                *&v141.start.value = *&range.start.value;
                v141.start.epoch = range.start.epoch;
                time2 = v141.duration;
                v133 = v138;
                CMTimeSubtract(&range.start, &time2, &v133);
                v141.duration = range.start;
                time2 = rhs.duration;
                v133 = v138;
                CMTimeAdd(&range.start, &time2, &v133);
                rhs.duration = range.start;
                time2.value = v147;
                time2.timescale = v148;
                time2.flags = v120;
                time2.epoch = v114;
                v133 = v138;
                CMTimeAdd(&range.start, &time2, &v133);
                v64 = range.start.flags;
                v148 = range.start.timescale;
                v147 = range.start.value;
                v65 = range.start.epoch;
                *&range.start.value = *&v127.start.value;
                range.start.epoch = v127.start.epoch;
                time2.value = v147;
                time2.timescale = v148;
                v120 = v64;
                time2.flags = v64;
                v114 = v65;
                time2.epoch = v65;
                v66 = CMTimeCompare(&range.start, &time2);
                if (v66 >= 1)
                {
                  v57 = v118;
                }

                else
                {
                  v57 = 0;
                }

                if (v66 >= 1)
                {
                  v58 = v116;
                }

                else
                {
                  v58 = 0;
                }
              }

              else
              {
                v57 = v118;
                v58 = v116;
              }

              v60 = *allocatora;
              v59 = 1;
LABEL_97:
              range.start = v138;
              *&time1.start.value = v60;
              time1.start.epoch = v52;
              CMTimeCompare(&range.start, &time1.start);
              v132 = 0;
              range.start = v141.duration;
              *&time1.start.value = *(a1 + 60);
              time1.start.epoch = *(a1 + 76);
              ByteLengthFromDuration = cea608dgCCDataGetByteLengthFromDuration(&range, &time1, &v132);
              if (!ByteLengthFromDuration)
              {
                v131 = 0;
                range.start = rhs.duration;
                *&time1.start.value = *(a1 + 60);
                time1.start.epoch = *(a1 + 76);
                ByteLengthFromDuration = cea608dgCCDataGetByteLengthFromDuration(&range, &time1, &v131);
                if (!ByteLengthFromDuration)
                {
                  if (v58)
                  {
                    *v162 = CFDataGetBytePtr(v58);
                    *&v162[8] = v132;
                    *&v162[16] = v141;
                  }

                  if (!v42)
                  {
                    v67 = 0;
                    if (!v58)
                    {
                      goto LABEL_107;
                    }

                    goto LABEL_106;
                  }

                  if ((v59 & 1) != 0 || (*&range.start.value = *allocatora, range.start.epoch = v52, time1.start = v136, (CMTimeCompare(&range.start, &time1.start) & 0x80000000) == 0))
                  {
                    v67 = 0;
                    goto LABEL_105;
                  }

                  v81 = *a1;
                  v159.value = v149;
                  v159.timescale = timescale;
                  start = *(a1 + 60);
                  LOWORD(time2.value) = kFigCEA608MiscControlCodes;
                  Length = CFDataGetLength(v42);
                  *&range.start.value = v123;
                  *&range.start.epoch = v122;
                  *&range.duration.timescale = v124;
                  Mutable = CFDataCreateMutable(v81, Length + 2);
                  v67 = Mutable;
                  if (Mutable)
                  {
                    CFDataAppendBytes(Mutable, &time2, 2);
                    BytePtr = CFDataGetBytePtr(v42);
                    v85 = CFDataGetLength(v42);
                    CFDataAppendBytes(v67, BytePtr, v85);
                    time1.start.value = v159.value;
                    time1.start.timescale = v159.timescale;
                    time1.start.flags = flags;
                    time1.start.epoch = v105;
                    duration = start;
                    CMTimeSubtract(&range.start, &time1.start, &duration);
                    duration.value = v121;
                    duration.timescale = v117;
                    duration.flags = v53;
                    duration.epoch = v103;
                    v143 = start;
                    CMTimeAdd(&time1.start, &duration, &v143);
                    *&range.duration.value = *&time1.start.value;
                    v86 = time1.start.epoch;
                    v160 = range.start.value;
                    flags = range.start.flags;
                    v161 = range.start.timescale;
                    v87 = range.start.epoch;
                    v88 = time1.start.value;
                    v89 = time1.start.timescale;
                    v53 = time1.start.flags;
LABEL_155:
                    v149 = v160;
                    v103 = v86;
                    v105 = v87;
                    v117 = v89;
                    timescale = v161;
                    v121 = v88;
                    v42 = v67;
LABEL_105:
                    *&v163 = CFDataGetBytePtr(v42);
                    *(&v163 + 1) = CFDataGetLength(v42);
                    *&v164 = v149;
                    *(&v164 + 1) = __PAIR64__(flags, timescale);
                    *&v165 = v105;
                    *(&v165 + 1) = v121;
                    *&v166 = __PAIR64__(v53, v117);
                    *(&v166 + 1) = v103;
                    if (!v58)
                    {
LABEL_107:
                      if (v57)
                      {
                        *&v169 = CFDataGetBytePtr(v57);
                        *(&v169 + 1) = CFDataGetLength(v57);
                        *&v170 = v147;
                        *(&v170 + 1) = __PAIR64__(v120, v148);
                        *&v171 = v114;
                        *(&v171 + 1) = v111;
                        *&v172 = __PAIR64__(v113, v106);
                        v69 = 1;
                        *(&v172 + 1) = v112;
                      }

                      else
                      {
                        v69 = 0;
                      }

                      v70 = 0;
                      v71 = 0;
                      *&range.start.value = v123;
                      *&range.start.epoch = v122;
                      v72 = *allocatora;
                      *&range.duration.timescale = v124;
                      while (1)
                      {
                        v73 = &v162[v70];
                        if ((v162[v70 + 28] & 1) != 0 && (v73[52] & 1) != 0 && !*&v162[v70 + 56] && (*(v73 + 5) & 0x8000000000000000) == 0)
                        {
                          *&time1.start.value = *(v73 + 40);
                          time1.start.epoch = *(v73 + 7);
                          *&duration.value = v72;
                          duration.epoch = v52;
                          if (CMTimeCompare(&time1.start, &duration))
                          {
                            time1 = range;
                            CMTimeRangeGetEnd(&duration, &time1);
                            *&time1.start.value = *(v73 + 1);
                            time1.start.epoch = *(v73 + 4);
                            if (CMTimeCompare(&duration, &time1.start))
                            {
                              if (v71)
                              {
                                time1 = range;
                                cea608dgOutputCCData(a1, v71);
                                if (v76)
                                {
                                  goto LABEL_157;
                                }

                                CFRelease(v71);
                              }

                              v74 = CFDataCreateMutable(*a1, 0);
                              if (!v74)
                              {
                                cea608dgStoreCCDataSequentially_cold_1(&time1);
                                EraseCCData = LODWORD(time1.start.value);
                                v78 = a2;
                                v41 = v118;
LABEL_158:
                                v77 = a3;
                                v72 = *allocatora;
                                if (EraseCCData)
                                {
                                  v69 = 0;
                                  goto LABEL_139;
                                }

LABEL_130:
                                if (v78)
                                {
                                  *v78 = v138;
                                }

                                if (v77)
                                {
                                  range.start = v137;
                                  *&time1.start.value = v72;
                                  time1.start.epoch = v52;
                                  if (!CMTimeCompare(&range.start, &time1.start))
                                  {
                                    memset(&time1, 0, 24);
                                    range = v127;
                                    CMTimeRangeGetEnd(&duration, &range);
                                    v79 = *(a1 + 28);
                                    *&range.start.value = *(a1 + 12);
                                    *&range.start.epoch = v79;
                                    *&range.duration.timescale = *(a1 + 44);
                                    CMTimeRangeGetEnd(&v143, &range);
                                    CMTimeSubtract(&time1.start, &duration, &v143);
                                    if (time1.start.flags)
                                    {
                                      *&range.start.value = *allocatora;
                                      range.start.epoch = v52;
                                      duration = time1.start;
                                      if (CMTimeCompare(&range.start, &duration) < 0)
                                      {
                                        CMTimeMake(&v137, -time1.start.value, time1.start.timescale);
                                      }
                                    }
                                  }

                                  EraseCCData = 0;
                                  *v77 = v137;
                                }

                                else
                                {
                                  EraseCCData = 0;
                                }

LABEL_139:
                                v42 = cf;
                                if (v67)
                                {
                                  CFRelease(v67);
                                }

                                v14 = v116;
                                if (!EraseCCData)
                                {
                                  if (!v69)
                                  {
                                    goto LABEL_143;
                                  }

LABEL_144:
                                  FigCEA608DataGeneratorCaptionInfoRelease(*(a1 + 104));
                                  EraseCCData = 0;
                                  *(a1 + 104) = *(a1 + 112);
                                  *(a1 + 112) = 0;
                                }

                                goto LABEL_145;
                              }

                              v71 = v74;
                              CFDataAppendBytes(v74, *&v162[v70], *&v162[v70 + 8]);
                              v75 = *(v73 + 2);
                              *&range.start.value = *(v73 + 1);
                              *&range.start.epoch = v75;
                              *&range.duration.timescale = *(v73 + 3);
                            }

                            else
                            {
                              CFDataAppendBytes(v71, *&v162[v70], *&v162[v70 + 8]);
                              time1.start = range.duration;
                              duration = *(v73 + 40);
                              CMTimeAdd(&range.duration, &time1.start, &duration);
                            }
                          }

                          v72 = *allocatora;
                        }

                        v70 += 64;
                        if (v70 == 256)
                        {
                          if (!v71)
                          {
                            v78 = a2;
                            v77 = a3;
                            v41 = v118;
                            goto LABEL_130;
                          }

                          time1 = range;
                          cea608dgOutputCCData(a1, v71);
LABEL_157:
                          EraseCCData = v76;
                          v78 = a2;
                          v41 = v118;
                          CFRelease(v71);
                          goto LABEL_158;
                        }
                      }
                    }

LABEL_106:
                    v68 = CFDataGetBytePtr(v58);
                    *&v167 = &v68[v132];
                    *(&v167 + 1) = v131;
                    v168 = rhs;
                    goto LABEL_107;
                  }

                  fig_log_get_emitter();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v93, v94);
                  flags = v97;
                  v53 = v98;
                  v88 = v101;
                  v87 = v102;
                  v86 = v100;
                  v89 = v99;
                  if (!ByteLengthFromDuration)
                  {
                    goto LABEL_155;
                  }
                }
              }

LABEL_172:
              EraseCCData = ByteLengthFromDuration;
              v14 = v116;
              v41 = v118;
              goto LABEL_145;
            }

            duration.value = v147;
            duration.timescale = v148;
            duration.flags = v120;
            duration.epoch = v114;
            v143.value = v151;
            v143.timescale = v152;
            v143.flags = v110;
            v143.epoch = v109;
            CMTimeSubtract(&range.start, &duration, &v143);
            duration.value = v151;
            duration.timescale = v152;
            duration.flags = v110;
            duration.epoch = v109;
            CMTimeRangeMake(&rhs, &range.start, &duration);
            v59 = 0;
          }
        }

        else
        {
          v59 = 0;
          if (v120)
          {
            v60 = *allocatora;
            if ((v113 & 1) == 0 || v112 || v111 < 0)
            {
              v57 = v118;
              v58 = v116;
              goto LABEL_97;
            }

            range.start.value = v149;
            range.start.timescale = timescale;
            range.start.flags = flags;
            range.start.epoch = epoch;
            range.duration.value = v121;
            range.duration.timescale = v117;
            range.duration.flags = v53;
            range.duration.epoch = v56;
            CMTimeRangeGetEnd(&time1.start, &range);
            duration.value = v147;
            duration.timescale = v148;
            duration.flags = v120;
            duration.epoch = v114;
            CMTimeSubtract(&range.start, &time1.start, &duration);
            v139 = range.start;
            memset(&time1, 0, 24);
            range.start.value = v147;
            range.start.timescale = v148;
            range.start.flags = v120;
            range.start.epoch = v114;
            range.duration.value = v111;
            range.duration.timescale = v106;
            range.duration.flags = v113;
            range.duration.epoch = 0;
            CMTimeRangeGetEnd(&duration, &range);
            *&range.start.value = *&v127.start.value;
            range.start.epoch = v127.start.epoch;
            CMTimeSubtract(&time1.start, &duration, &range.start);
            *&range.start.value = *allocatora;
            range.start.epoch = v52;
            duration = v139;
            if (CMTimeCompare(&range.start, &duration) < 0 && (v138 = v139, *(a1 + 9)))
            {
              duration.value = v147;
              duration.timescale = v148;
              duration.flags = v120;
              duration.epoch = v114;
              v143 = v139;
              CMTimeAdd(&range.start, &duration, &v143);
              v61 = range.start.flags;
              v148 = range.start.timescale;
              v147 = range.start.value;
              v62 = range.start.epoch;
              *&range.start.value = *&v127.start.value;
              range.start.epoch = v127.start.epoch;
              duration.value = v147;
              duration.timescale = v148;
              v120 = v61;
              duration.flags = v61;
              v114 = v62;
              duration.epoch = v62;
              v63 = CMTimeCompare(&range.start, &duration);
              if (v63 >= 1)
              {
                v57 = v118;
              }

              else
              {
                v57 = 0;
              }

              if (v63 >= 1)
              {
                v58 = v116;
              }

              else
              {
                v58 = 0;
              }
            }

            else
            {
              v57 = v118;
              v58 = v116;
            }

            *&range.start.value = *allocatora;
            range.start.epoch = v52;
            duration = time1.start;
            if (CMTimeCompare(&range.start, &duration) < 0)
            {
              v137 = time1.start;
            }

            v59 = 0;
LABEL_96:
            v60 = *allocatora;
            goto LABEL_97;
          }
        }

        v57 = v118;
        v58 = v116;
        goto LABEL_96;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v93, v94);
      v14 = v116;
      v41 = v118;
      if (!v90)
      {
LABEL_143:
        FigCEA608DataGeneratorCaptionInfoRelease(*(a1 + 112));
        *(a1 + 112) = 0;
        goto LABEL_144;
      }

      EraseCCData = v90;
LABEL_145:
      if (v41)
      {
        CFRelease(v41);
      }

      if (v42)
      {
        goto LABEL_148;
      }

      goto LABEL_150;
    }

    EraseCCData = v47;
LABEL_168:
    v14 = v116;
    goto LABEL_145;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v92, v3, v94);
  if (!v91)
  {
    v118 = 0;
    v120 = v96;
    v114 = v102;
    v106 = v99;
    v113 = v98;
    v111 = v101;
    v112 = v100;
    goto LABEL_37;
  }

  EraseCCData = v91;
  v42 = cf;
  v14 = v116;
  if (cf)
  {
LABEL_148:
    value = v42;
LABEL_149:
    CFRelease(value);
  }

LABEL_150:
  if (v14)
  {
    CFRelease(v14);
  }

  return EraseCCData;
}

uint64_t FigCEA608DataGeneratorSetShouldAdjustOverlappedDataTime(uint64_t a1, char a2)
{
  if (a1)
  {
    if (*(a1 + 96))
    {
      FigCEA608DataGeneratorSetShouldAdjustOverlappedDataTime_cold_1(&v4);
      return v4;
    }

    else
    {
      result = 0;
      *(a1 + 9) = a2;
    }
  }

  else
  {
    FigCEA608DataGeneratorSetShouldAdjustOverlappedDataTime_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigCEA608DataGeneratorGetTimeLineRange(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 12);
      v3 = *(a1 + 44);
      a2[1] = *(a1 + 28);
      a2[2] = v3;
      *a2 = v2;
    }

    else
    {
      FigCEA608DataGeneratorGetTimeLineRange_cold_1();
    }
  }

  else
  {
    FigCEA608DataGeneratorGetTimeLineRange_cold_2();
  }

  return 0;
}

uint64_t FigCEA608DataGeneratorSetTimeLineRange(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    if (*(a1 + 96))
    {
      FigCEA608DataGeneratorSetTimeLineRange_cold_1(&v6);
      return v6;
    }

    else
    {
      result = 0;
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 44) = a2[2];
      *(a1 + 28) = v5;
      *(a1 + 12) = v4;
    }
  }

  else
  {
    FigCEA608DataGeneratorSetTimeLineRange_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t FigCEA608DataGeneratorGetClosedCaptionChannel(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    *a2 = 1;
  }

  else
  {
    FigCEA608DataGeneratorGetClosedCaptionChannel_cold_1();
  }

  return 0;
}

void cea608dgCCDataAppendPaddingIfNeeded(__CFData *a1)
{
  if (CFDataGetLength(a1))
  {
    bytes = 0;
    CFDataAppendBytes(a1, &bytes, 1);
  }
}

uint64_t cea608dgCharacterMappingGetControlCodeForCharacter(CFDictionaryRef theDict, unsigned int a2, char *a3, int *a4, char *a5, char *a6)
{
  v11 = 0;
  value = 0;
  v12 = a2;
  while (1)
  {
    v13 = CFDictionaryGetValue(theDict, off_1E74787E8[v11]);
    ValueIfPresent = CFDictionaryGetValueIfPresent(v13, v12, &value);
    if (ValueIfPresent)
    {
      break;
    }

    if (++v11 == 4)
    {
      goto LABEL_4;
    }
  }

  if (FigCFEqual())
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 1;
    v19 = value;
  }

  else
  {
    if (FigCFEqual())
    {
      v18 = 0;
      v19 = 17;
      v17 = 1;
    }

    else
    {
      if (FigCFEqual())
      {
        v17 = 0;
        v19 = 18;
      }

      else
      {
        if (!FigCFEqual())
        {
LABEL_4:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          goto LABEL_15;
        }

        v17 = 0;
        v19 = 19;
      }

      v18 = 1;
    }

    v16 = 2;
    v15 = value;
  }

LABEL_15:
  *a3 = v19;
  a3[1] = v15;
  *a4 = v16;
  *a5 = v17;
  *a6 = v18;
  return ValueIfPresent;
}

uint64_t cea608dgCreateEraseCCData(uint64_t a1, CMTime *a2, CFAllocatorRef allocator, CFDataRef *a4, _OWORD *a5)
{
  *bytes = 11284;
  v9 = CFDataCreate(allocator, bytes, 2);
  if (v9)
  {
    v10 = v9;
    v17 = **&MEMORY[0x1E6960C70];
    *&v16.start.value = *a1;
    v16.start.epoch = *(a1 + 16);
    Duration = cea608dgCCDataGetDuration(v9, &v16.start, &v17);
    if (Duration)
    {
      goto LABEL_7;
    }

    if (a5)
    {
      start = *a2;
      v14 = v17;
      CMTimeRangeMake(&v16, &start, &v14);
      v12 = *&v16.start.epoch;
      *a5 = *&v16.start.value;
      a5[1] = v12;
      a5[2] = *&v16.duration.timescale;
    }

    if (!a4)
    {
LABEL_7:
      CFRelease(v10);
    }

    else
    {
      Duration = 0;
      *a4 = v10;
    }
  }

  else
  {
    cea608dgCreateEraseCCData_cold_1(&v16);
    return LODWORD(v16.start.value);
  }

  return Duration;
}

uint64_t cea608dgCCDataGetDuration(const __CFData *a1, CMTime *a2, CMTime *a3)
{
  v8 = **&MEMORY[0x1E6960CC0];
  if (a1)
  {
    Length = CFDataGetLength(a1);
    if (Length)
    {
      cea608dgCCDataGetDuration_cold_1(&v7);
      return LODWORD(v7.value);
    }

    v7 = *a2;
    CMTimeMultiply(&v8, &v7, Length >> 1);
  }

  result = 0;
  *a3 = v8;
  return result;
}

uint64_t cea608dgGetAheadDuration(CMTime *a1, uint64_t a2, CMTime *a3)
{
  if (a2 < 0)
  {
    cea608dgGetAheadDuration_cold_1(&v5);
    return LODWORD(v5.value);
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
    v5 = *a1;
    CMTimeMultiply(&v6, &v5, a2);
    result = 0;
    *a3 = v6;
  }

  return result;
}

uint64_t cea608dgCCDataGetByteLengthFromDuration(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(a1 + 12) & 1) == 0 || (time1 = *a1, v8 = **&MEMORY[0x1E6960CC0], !CMTimeCompare(&time1, &v8)))
  {
    v6 = 0;
    goto LABEL_7;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    cea608dgCCDataGetByteLengthFromDuration_cold_1(&time1);
    return LODWORD(time1.value);
  }

  if (*a1 % *a2)
  {
    cea608dgCCDataGetByteLengthFromDuration_cold_2(&time1);
    return LODWORD(time1.value);
  }

  v6 = 2 * (*a1 / *a2);
LABEL_7:
  result = 0;
  *a3 = v6;
  return result;
}

void OUTLINED_FUNCTION_3_8(CFMutableDataRef theData@<X2>, _WORD *a2@<X1>, __int16 a3@<W8>, uint64_t a4, int a5, __int16 a6, char a7, UInt8 bytes)
{
  *a2 = a3;
  bytes = 32;

  CFDataAppendBytes(theData, &bytes, 1);
}

void FigByteRateHistoryClear(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 >= 1)
    {
      bzero(v2, 16 * v3);
    }
  }

  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
}

double FigByteRateHistoryReportMovingAverage(uint64_t a1, double *a2)
{
  if (a2)
  {
    result = *(a1 + 40);
    *a2 = result;
  }

  return result;
}

uint64_t ParseDescriptorAtoms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a2 + 8);
  while (1)
  {
    result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (result)
    {
      return result;
    }

    if (a3 >= 1)
    {
      v9 = v7;
      v10 = v7;
      v11 = a3;
      while (*(v10 - 2))
      {
        v10 += 2;
        v9 += 2;
        if (!--v11)
        {
          goto LABEL_9;
        }
      }

      result = (*v10)(a1, a4);
      if (result)
      {
        return result;
      }
    }

LABEL_9:
    LODWORD(result) = FigAtomStreamAdvanceToNextAtom();
    if (result)
    {
      if (result == -12890)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }
}

unint64_t ParseReferenceMovieDataRefAtom(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 24);
  if (*(a2 + 24))
  {
    return 0;
  }

  v4 = 0;
  result = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (!result)
  {
    if (CMBlockBufferGetDataLength(*v2) <= 0xD)
    {
      ParseReferenceMovieDataRefAtom_cold_1(&v5);
      return v5;
    }

    result = CMBlockBufferGetDataPointer(*v2, 0, 0, 0, &v4);
    if (!result)
    {
      if (*(v4 + 1) == 543978101)
      {
        return 0;
      }

      result = *v2;
      if (*v2)
      {
        CFRelease(result);
        result = 0;
        *v2 = 0;
      }
    }
  }

  return result;
}

uint64_t ParseReferenceMovieVersionCheckAtom(uint64_t a1, uint64_t a2)
{
  BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (BBuf)
  {
    return BBuf;
  }

  if (CMBlockBufferGetDataLength(0) != 18)
  {
    ParseReferenceMovieVersionCheckAtom_cold_1(&v7);
    return v7;
  }

  Mutable = *(a2 + 16);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    *(a2 + 16) = Mutable;
    if (!Mutable)
    {
      ParseReferenceMovieVersionCheckAtom_cold_2(&v7);
      return v7;
    }
  }

  CFArrayAppendValue(Mutable, 0);
  return 0;
}

void DisposeReferenceMovieAlternate(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

uint64_t InitMobiGestaltOnce()
{
  result = CelestialIsiPad();
  if (result)
  {
    v1 = 16;
  }

  else
  {
    result = CelestialIsiPhone();
    v1 = 1;
  }

  sMobiGestaltValue = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_9(OpaqueCMBlockBuffer *a1)
{
  *(v1 - 120) = 0;

  return CMBlockBufferGetDataPointer(a1, 0, 0, 0, (v1 - 120));
}

uint64_t RegisterFigBytePumpBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBytePumpGetTypeID()
{
  MEMORY[0x19A8D3660](&FigBytePumpGetClassID_sRegisterFigBytePumpBaseTypeOnce, RegisterFigBytePumpBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigBytePumpRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigBytePumpRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigBytePumpIsBytePumpProperty(__CFString *a1)
{
  v1 = 0;
  while (*(&bytePumpProperties)[v1] != a1)
  {
    if (++v1 == 70)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t FigICYBytePumpInvalidate(const void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  FigRetainProxyInvalidate();
  if (!*(DerivedStorage + 16))
  {
    *(DerivedStorage + 16) = 1;
    FigHTTPStopAndReleaseTimer((DerivedStorage + 88));
    FigICY_InvalidateHTTP(DerivedStorage);
    v3 = *(DerivedStorage + 96);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 96) = 0;
    }

    v4 = *(DerivedStorage + 104);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 104) = 0;
    }

    v5 = *(DerivedStorage + 112);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 112) = 0;
    }

    v6 = *(DerivedStorage + 296);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 296) = 0;
    }

    v7 = *(DerivedStorage + 160);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 160) = 0;
    }

    v8 = *(DerivedStorage + 168);
    if (v8)
    {
      PlaylistFileParserDestroy(v8);
      *(DerivedStorage + 168) = 0;
    }

    if (*(DerivedStorage + 18) && !*(DerivedStorage + 17))
    {
      FigBytePumpRetain(a1);
      if (dword_1EAF16B70)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fbp_SendDataCallback(a1, DerivedStorage, *(DerivedStorage + 72), 0, 2, 0, MEMORY[0x1E6960C70], 4294954511);
      FigBytePumpRelease(a1);
    }

    *(DerivedStorage + 64) = 0;
    *(DerivedStorage + 17) = 1;
  }

  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
  return 0;
}

void FigICYBytePumpFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigICYBytePumpInvalidate(a1);
  FigRetainProxyRelease();
  v3 = *(DerivedStorage + 128);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 128) = 0;
  }

  v4 = *(DerivedStorage + 136);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 136) = 0;
  }

  v5 = *(DerivedStorage + 312);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 312) = 0;
  }

  v6 = *(DerivedStorage + 328);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 328) = 0;
  }

  v7 = *(DerivedStorage + 360);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 360) = 0;
  }

  v8 = *(DerivedStorage + 216);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 216) = 0;
  }

  v9 = *(DerivedStorage + 184);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 184) = 0;
  }

  FigRetainProxyRelease();
  *(DerivedStorage + 8) = 0;
  FigHTTPSchedulerRelease(*(DerivedStorage + 80));
  *(DerivedStorage + 80) = 0;
  v10 = *(DerivedStorage + 120);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 120) = 0;
  }

  v11 = *DerivedStorage;
  if (*DerivedStorage)
  {

    CFRelease(v11);
  }
}

__CFString *FigICYBytePumpCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"\tFigICYBytePump :");
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    CFStringAppend(Mutable, @"invalidated");
  }

  else
  {
    v4 = *(DerivedStorage + 96);
    if (v4)
    {
      v5 = FigCFHTTPCreateURLString(v4);
      if (v5)
      {
        v6 = v5;
        CFStringAppend(Mutable, v5);
        CFRelease(v6);
      }
    }
  }

  FigRetainProxyUnlockMutex();
  return Mutable;
}

uint64_t FigICYBytePumpCopyProperty(uint64_t a1, __CFString *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigICYBytePumpCopyProperty_cold_1(&v13);
    value_low = LODWORD(v13.value);
    goto LABEL_19;
  }

  if (CFEqual(a2, @"FBP_CanContinueWithoutGapBitField"))
  {
    LODWORD(v13.value) = 7;
    if (!*(DerivedStorage + 208) && *(DerivedStorage + 19) && FigGetUpTimeNanoseconds() - *(DerivedStorage + 288) >= 0xDF8475801)
    {
      LODWORD(v13.value) = 0;
    }

    v8 = CFNumberCreate(a3, kCFNumberSInt32Type, &v13);
    goto LABEL_18;
  }

  if (CFEqual(a2, @"FBP_PlaybackSessionID"))
  {
    v8 = *(DerivedStorage + 112);
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"FBP_SessionConfiguration"))
  {
    v8 = *(DerivedStorage + 296);
    if (!v8)
    {
LABEL_13:
      value_low = 4294954513;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"FBP_NetworkCostMonitor"))
  {
    v11 = (DerivedStorage + 184);
    v10 = *(DerivedStorage + 184);
    if (!v10)
    {
      value_low = FigNetworkCostMonitorCreate(a3, (DerivedStorage + 184));
      if (value_low)
      {
        goto LABEL_19;
      }

      v10 = *v11;
      if (!*v11)
      {
        value_low = 0;
        goto LABEL_19;
      }
    }

    CMBaseObjectSetProperty(v10, 0x1F0B5F7B8, *MEMORY[0x1E695E4C0]);
    v8 = *v11;
    if (!*v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = CFRetain(v8);
LABEL_18:
    value_low = 0;
    *a4 = v8;
    goto LABEL_19;
  }

  if (CFEqual(a2, @"FBP_Duration"))
  {
    v13 = **&MEMORY[0x1E6960C68];
    v8 = CMTimeCopyAsDictionary(&v13, a3);
    goto LABEL_18;
  }

  if (FigBytePumpIsBytePumpProperty(a2))
  {
    value_low = 4294954513;
  }

  else
  {
    value_low = 4294954512;
  }

LABEL_19:
  FigRetainProxyUnlockMutex();
  return value_low;
}

double FigICYBytePumpSetProperty(int a1, CFTypeRef cf1)
{
  if (!CFEqual(cf1, @"FBP_SendToNero"))
  {
    v4 = qword_1EAF16B68;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 4294954656, "<<<< ICY PUMP >>>>", 1499, v2);
  }

  return result;
}

void FigICY_InvalidateHTTP(uint64_t a1)
{
  if (*(a1 + 304))
  {
    v2 = *(a1 + 312);
    if (v2)
    {
      v3 = *(a1 + 320);
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v4)
      {
        v4(v2, v3);
      }

      *(a1 + 320) = 0;
      CFArrayRemoveAllValues(*(a1 + 360));
      *(a1 + 368) = 0;
      *(a1 + 376) = 0;
    }
  }

  else
  {
    v5 = *(a1 + 144);
    if (v5)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v6)
      {
        v6(v5);
      }

      v7 = *(a1 + 144);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 144) = 0;
      }
    }
  }

  FigHTTPStopAndReleaseTimer((a1 + 48));
  *(a1 + 48) = 0;
}

uint64_t fbp_SendDataCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  v8 = a8;
  v11 = a5;
  v13 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v15 = *(a2 + 64);
  cf = 0;
  if ((a5 & 2) != 0)
  {
    if (dword_1EAF16B70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v13 = a3;
    }

    *(a2 + 17) = 1;
  }

  if (*(a2 + 21))
  {
    v11 = v11 | 1;
    ++*(a2 + 24);
    *(a2 + 21) = 0;
  }

  if (!v15)
  {
    return 0;
  }

  FigCreateErrorForOSStatus(v8, &cf);
  if (cf)
  {
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRetainProxyUnlockAll();
  v19 = *(a2 + 24);
  v24 = *a7;
  v25 = *(a7 + 2);
  v15(a1, v13, a4, v11, 0, 0, a6, &v24, 0, 0, v19, cf, 0, 0);
  FigRetainProxyRelock();
  if (FigRetainProxyIsInvalidated())
  {
    v18 = 4294954413;
  }

  else
  {
    v18 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t FigICYBytePumpClientHasEnough(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigICYBytePumpClientHasEnough_cold_1(&v9);
    v7 = v9;
    goto LABEL_15;
  }

  if (!a2 && !*(DerivedStorage + 19))
  {
    if (*(DerivedStorage + 304))
    {
      if (!*(DerivedStorage + 312) || !*(DerivedStorage + 320))
      {
LABEL_12:
        *(DerivedStorage + 19) = 1;
        *(DerivedStorage + 288) = FigGetUpTimeNanoseconds();
        v6 = *(DerivedStorage + 48);
        if (v6)
        {
          FigHTTPRescheduleTimer(0.0, *(DerivedStorage + 80), v6);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v4 = *(DerivedStorage + 144);
      if (!v4)
      {
        goto LABEL_12;
      }

      v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v5)
      {
        v5(v4);
      }
    }

    FigHTTPCreateTimer(*(DerivedStorage + 8), fbp_PauseTimer, *(DerivedStorage + 80), (DerivedStorage + 88), 62.0);
    goto LABEL_12;
  }

LABEL_14:
  v7 = 0;
LABEL_15:
  FigRetainProxyUnlockMutex();
  return v7;
}

uint64_t FigICYBytePumpClientNeedsMore(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigICYBytePumpClientNeedsMore_cold_1(block);
    v5 = LODWORD(block[0]);
    goto LABEL_24;
  }

  if (a2)
  {
    goto LABEL_3;
  }

  if (*(DerivedStorage + 19))
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    FigHTTPStopAndReleaseTimer((DerivedStorage + 88));
    v7 = *(DerivedStorage + 48);
    if (v7)
    {
      *(DerivedStorage + 40) = UpTimeNanoseconds;
      FigHTTPRescheduleTimer(15.0, *(DerivedStorage + 80), v7);
    }

    if (*(DerivedStorage + 304))
    {
      if (*(DerivedStorage + 368) || *(DerivedStorage + 320))
      {
        if (UpTimeNanoseconds - *(DerivedStorage + 288) <= 60000000000)
        {
          if (*(DerivedStorage + 19))
          {
            v8 = FigRetainProxyRetain();
            v9 = *(DerivedStorage + 80);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 0x40000000;
            block[2] = __FigICY_ResumeHTTP_block_invoke;
            block[3] = &unk_1E7478F38;
            block[4] = v8;
            dispatch_async(v9, block);
          }

LABEL_22:
          v5 = 0;
LABEL_23:
          *(DerivedStorage + 19) = 0;
          goto LABEL_24;
        }

LABEL_28:
        FigICY_InvalidateHTTP(DerivedStorage);
        v14 = *(DerivedStorage + 96);
        v15 = a1;
        if (!*(DerivedStorage + 208))
        {
          FigICY_CreateHTTPRequest(a1, v14, 0);
          v5 = v16;
          *(DerivedStorage + 21) = 1;
          goto LABEL_23;
        }

        v17 = 1;
LABEL_35:
        FigICY_CreateHTTPRequest(v15, v14, v17);
        v5 = v18;
        goto LABEL_23;
      }
    }

    else if (*(DerivedStorage + 144))
    {
      if (UpTimeNanoseconds - *(DerivedStorage + 288) <= 60000000000)
      {
        v10 = *(DerivedStorage + 144);
        if (v10)
        {
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v11)
          {
            v11(v10);
          }
        }

        goto LABEL_22;
      }

      goto LABEL_28;
    }

    if (!*(DerivedStorage + 208) && *(DerivedStorage + 376))
    {
      *(DerivedStorage + 21) = 1;
    }

    *(DerivedStorage + 376) = 0;
    v14 = *(DerivedStorage + 96);
    v15 = a1;
    v17 = 0;
    goto LABEL_35;
  }

  if (*(DerivedStorage + 304))
  {
    if (!*(DerivedStorage + 368) && !*(DerivedStorage + 320))
    {
LABEL_26:
      if (!*(DerivedStorage + 208))
      {
        *(DerivedStorage + 21) = 1;
        *(DerivedStorage + 376) = 0;
        FigICY_CreateHTTPRequest(a1, *(DerivedStorage + 96), 0);
        v5 = v13;
        goto LABEL_24;
      }
    }
  }

  else if (!*(DerivedStorage + 144))
  {
    goto LABEL_26;
  }

LABEL_3:
  v5 = 0;
LABEL_24:
  FigRetainProxyUnlockMutex();
  return v5;
}

uint64_t FigICYBytePumpLikelyToKeepUp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, _OWORD *a7, _DWORD *a8, BOOL *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&time.start.value = *a2;
  time.start.epoch = *(a2 + 16);
  Seconds = CMTimeGetSeconds(&time.start);
  v15 = 1.0;
  if (!*(DerivedStorage + 17))
  {
    v16 = Seconds / 5.0;
    if (v16 > 1.0)
    {
      v16 = 1.0;
    }

    v15 = fmaxf(v16, 0.0);
  }

  if (a6)
  {
    *a6 = v15;
  }

  if (a7)
  {
    start = **&MEMORY[0x1E6960C70];
    v19 = start;
    CMTimeRangeMake(&time, &start, &v19);
    v17 = *&time.start.epoch;
    *a7 = *&time.start.value;
    a7[1] = v17;
    a7[2] = *&time.duration.timescale;
  }

  if (a8)
  {
    *a8 = 2 * (v15 == 1.0);
  }

  if (a9)
  {
    *a9 = v15 == 1.0;
  }

  return 0;
}

uint64_t FigICYBytePumpSetCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigICYBytePumpSetCallback_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    *(DerivedStorage + 64) = a2;
    *(DerivedStorage + 72) = FigRetainProxyRetain();
    FigRetainProxyRelease();
    v6 = 0;
  }

  FigRetainProxyUnlockMutex();
  return v6;
}

uint64_t FigICYBytePumpSetPlayerRate(uint64_t a1, float a2)
{
  CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigICYBytePumpSetPlayerRate_cold_1(v8);
    v3 = v8[0];
  }

  else if (a2 > 1.0 || a2 < 0.0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8[1]);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  FigRetainProxyUnlockMutex();
  return v3;
}

uint64_t fbp_PauseTimer(uint64_t a1, uint64_t a2)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = UpTimeNanoseconds - *(DerivedStorage + 288);
    if (v4 < 0xDF8475801)
    {
      FigHTTPRescheduleTimer(v4 / -1000000000.0 + 62.0, *(DerivedStorage + 80), *(DerivedStorage + 88));
    }

    else
    {
      FigICY_InvalidateHTTP(DerivedStorage);
    }
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t fbp_NetworkInactivityTimer(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    Owner = FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = DerivedStorage;
    v7 = UpTimeNanoseconds - *(DerivedStorage + 40);
    if (v7 <= 0x37E11D5FFLL)
    {
      v9 = *(DerivedStorage + 48);
      if (v9)
      {
        v10 = (15000000000 - v7) / 1000000000.0;
        if (v10 < 1.0)
        {
          v10 = 1.0;
        }

        FigHTTPRescheduleTimer(v10, *(DerivedStorage + 80), v9);
      }
    }

    else if (*(DerivedStorage + 19))
    {
      if (dword_1EAF16B70)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (dword_1EAF16B70)
      {
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fbp_CancelAndRetryRequest(Owner, v6, 4294950466);
    }
  }

  return FigRetainProxyUnlockMutex();
}

void fbp_SetMetadataPeriod(uint64_t a1, CFStringRef str)
{
  IntValue = CFStringGetIntValue(str);
  *(a1 + 240) = IntValue;
  if ((IntValue - 0x7FFFFFFF) <= 1)
  {
    *(a1 + 240) = CFStringGetDoubleValue(str);
  }
}

void fbp_CancelAndRetryRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a2 + 56) <= 1 && !*(a2 + 208) && !*(a2 + 19) && *(a2 + 60))
  {
    FigICY_CreateHTTPRequest(a1, *(a2 + 96), 0);
    if (!v6)
    {
      ++*(a2 + 56);
      *(a2 + 21) = 1;
      return;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EAF16B70)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fbp_SendDataCallback(a1, a2, *(a2 + 72), 0, 2, *(a2 + 192), MEMORY[0x1E6960C70], a3);
}

uint64_t fbp_GrabHeaderPayload(uint64_t a1, size_t a2, CFStringRef *a3, _BYTE *a4)
{
  v5 = v4;
  v10 = *(a1 + 216);
  v11 = *(a1 + 232);
  v12 = v11 + a2;
  DataLength = CMBlockBufferGetDataLength(v10);
  v14 = DataLength - v12;
  if (DataLength != v12)
  {
    v18 = 0;
    dataPointerOut = 0;
    lengthAtOffsetOut = 0;
    while (!CMBlockBufferGetDataPointer(v10, v18 + v12, &lengthAtOffsetOut, 0, &dataPointerOut))
    {
      if (lengthAtOffsetOut)
      {
        v19 = 0;
        while (dataPointerOut[v19] != 13)
        {
          if (lengthAtOffsetOut == ++v19)
          {
            v18 += lengthAtOffsetOut;
            v5 = v4;
            goto LABEL_13;
          }
        }

        v20 = *(a1 + 232);
        v21 = v11 + v18 - v20 + v19;
        v22 = *(a1 + 216);
        if (v22)
        {
          v23 = CMBlockBufferGetDataLength(v22) - *(a1 + 232);
        }

        else
        {
          v23 = 0;
        }

        if (v23 < v21 + 2)
        {
          goto LABEL_18;
        }

        *a4 = 0;
        fbp_AdvanceChars(a1, a2);
        if (a3)
        {
          v25 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], v11 + v18 - v20 + v19 + 1, 0x100004077774924, 0);
          if (!v25)
          {
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16B68, 4294967188, "<<<< ICY PUMP >>>>", 974, v4);
            return v16;
          }

          v26 = v25;
          fbp_CopyChars(a1, v25, v21);
        }

        else
        {
          v26 = 0;
        }

        fbp_AdvanceChars(a1, v21);
        fbp_CopyChars(a1, &lengthAtOffsetOut, 2uLL);
        fbp_AdvanceChars(a1, 2uLL);
        if (lengthAtOffsetOut == 2573)
        {
          if (!v26)
          {
            return 0;
          }

          v26[v11 + v18 - v20 + v19] = 0;
          v27 = *MEMORY[0x1E695E480];
          v28 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v26, 0x8000100u, *MEMORY[0x1E695E480]);
          *a3 = v28;
          if (v28)
          {
            return 0;
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v4, dataPointerOut);
          v17 = v29;
          CFAllocatorDeallocate(v27, v26);
          return v17;
        }

        if (v26)
        {
          CFAllocatorDeallocate(*MEMORY[0x1E695E480], v26);
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16B68, 4294954650, "<<<< ICY PUMP >>>>", 991, v4);
        return v16;
      }

LABEL_13:
      if (v18 >= v14)
      {
        break;
      }
    }
  }

  v15 = *(a1 + 216);
  if (v15 && CMBlockBufferGetDataLength(v15) - *(a1 + 232) > 0x1000)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16B68, 4294954650, "<<<< ICY PUMP >>>>", 948, v5);
    return v16;
  }

  else
  {
LABEL_18:
    v17 = 0;
    *a4 = 1;
  }

  return v17;
}

int64x2_t OUTLINED_FUNCTION_2_15(int64x2_t a1, int64x2_t a2)
{
  result = vaddq_s64(a1, a2);
  v2[12] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return _os_log_send_and_compose_impl(a1, 0, va, 128, a5, v22, v23, a8);
}

uint64_t OUTLINED_FUNCTION_14_2()
{
  v2 = *v0;

  return CMBlockBufferCreateEmpty(v2, 0, 0, v0 + 20);
}

BOOL OUTLINED_FUNCTION_15_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, os_log_type_t type, int a21, int a22)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_16_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, char a18, os_log_type_t type, int a20)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return CMBaseObjectGetVTable();
}

uint64_t MovieSampleDataWriterCreate(const void *a1, const void *a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6, uint64_t *a7)
{
  if (!a2)
  {
    MovieSampleDataWriterCreate_cold_5(&v23);
    return v23;
  }

  if (!a7)
  {
    MovieSampleDataWriterCreate_cold_4(&v23);
    return v23;
  }

  if (sMovieSampleDataWriterRegisterTypeOnce != -1)
  {
    MovieSampleDataWriterCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    MovieSampleDataWriterCreate_cold_3(&v23);
    return v23;
  }

  v15 = Instance;
  if (a1)
  {
    v16 = CFRetain(a1);
  }

  else
  {
    v16 = 0;
  }

  *(v15 + 16) = v16;
  *(v15 + 24) = CFRetain(a2);
  v17 = MediaDataChunkWriterCreate(a1, (v15 + 32));
  if (v17)
  {
LABEL_21:
    v20 = v17;
    goto LABEL_29;
  }

  v18 = FigSimpleMutexCreate();
  *(v15 + 48) = v18;
  if (!v18)
  {
    v22 = 764;
LABEL_28:
    MovieSampleDataWriterCreate_cold_2(v22, &v23);
    v20 = v23;
    goto LABEL_29;
  }

  Mutable = CFArrayCreateMutable(a1, 0, 0);
  *(v15 + 56) = Mutable;
  if (!Mutable)
  {
    v22 = 767;
    goto LABEL_28;
  }

  *(v15 + 72) = a5 & 1;
  v17 = MovieHeaderMakerCopyFileTypeMajorBrand(a1, a2, a3, a4, (v15 + 80));
  if (v17)
  {
    goto LABEL_21;
  }

  v17 = MovieHeaderMakerCopyFileTypeMinorVersion(a1, a2, a3, a4, (v15 + 88));
  if (v17)
  {
    goto LABEL_21;
  }

  v17 = MovieHeaderMakerCopyFileTypeCompatibleBrands(a1, a2, a3, a4, (v15 + 96));
  if (v17)
  {
    goto LABEL_21;
  }

  if (a6 <= 3)
  {
    *(v15 + 105) = 0x1010100u >> (8 * a6);
    *(v15 + 104) = 0x1000100u >> (8 * a6);
    *(v15 + 106) = 0x1000000u >> (8 * a6);
  }

  v17 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x4000uLL, *MEMORY[0x1E695E480], 0, 0, 0x4000uLL, 1u, (v15 + 144));
  if (v17)
  {
    goto LABEL_21;
  }

  v20 = CMBlockBufferFillDataBytes(0, *(v15 + 144), 0, 0);
  if (v20)
  {
LABEL_29:
    CFRelease(v15);
    return v20;
  }

  *a7 = v15;
  return v20;
}

uint64_t MovieSampleDataWriterAddTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  if (!a1)
  {
    MovieSampleDataWriterAddTrack_cold_4(&v14);
    return v14;
  }

  if (!a3)
  {
    MovieSampleDataWriterAddTrack_cold_3(&v14);
    return v14;
  }

  if (!a5)
  {
    MovieSampleDataWriterAddTrack_cold_2(&v14);
    return v14;
  }

  v8 = a2;
  v10 = MEMORY[0x19A8CC720](*(a1 + 16), 16, 0x1020040D5A9D86FLL, 0);
  if (!v10)
  {
    MovieSampleDataWriterAddTrack_cold_1(&v14);
    return v14;
  }

  v11 = v10;
  *v10 = 0;
  v10[1] = 0;
  *v10 = v8;
  v12 = MediaDataChunkWriterAddTrack(*(a1 + 32), v8, 0, a3, a4, v10 + 1);
  if (v12)
  {
    CFAllocatorDeallocate(*(a1 + 16), v11);
  }

  else
  {
    CFArrayAppendValue(*(a1 + 56), v11);
    *a5 = v11;
  }

  return v12;
}

uint64_t MovieSampleDataWriterSetThreadPriorityAndClientPID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 64))
    {
      MovieSampleDataWriterSetThreadPriorityAndClientPID_cold_1(&v6);
      return v6;
    }

    else
    {
      v4 = FigDispatchQueueCreateWithPriorityAndClientPID();
      *(a1 + 64) = v4;
      if (v4)
      {
        return 0;
      }

      else
      {
        MovieSampleDataWriterSetThreadPriorityAndClientPID_cold_2(&v7);
        return v7;
      }
    }
  }

  else
  {
    MovieSampleDataWriterSetThreadPriorityAndClientPID_cold_3(&v8);
    return v8;
  }
}

NSObject *MovieSampleDataWriterFlushPendingAsynchronousTasks(uint64_t a1)
{
  if (a1)
  {
    result = *(a1 + 64);
    if (result)
    {
      dispatch_sync_f(result, 0, doNothingFunc);
      return 0;
    }
  }

  else
  {
    MovieSampleDataWriterFlushPendingAsynchronousTasks_cold_1(&v2);
    return v2;
  }

  return result;
}

uint64_t MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded(void *a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    v2 = a1[5];
    if (v2)
    {
      MediaDataChunkWriterFlush(a1[4], v2);
      if (!v3)
      {
        v3 = patchMediaDataAtomSizeIfNeeded(a1);
      }

      v4 = v3;
    }

    else
    {
      MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded_cold_1(&v6);
      v4 = v6;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded_cold_2(&v7);
    return v7;
  }

  return v4;
}

uint64_t MovieSampleDataWriterGetFirstMediaDataAtomOffset(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      FigSimpleMutexLock();
      if (*(a1 + 120) == 1)
      {
        if (a2)
        {
          v6 = -8;
          if (!*(a1 + 104))
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }

        v7 = 0;
        *a3 = v6 + *(a1 + 128);
      }

      else
      {
        MovieSampleDataWriterGetFirstMediaDataAtomOffset_cold_1(&v9);
        v7 = v9;
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      MovieSampleDataWriterGetFirstMediaDataAtomOffset_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    MovieSampleDataWriterGetFirstMediaDataAtomOffset_cold_3(&v11);
    return v11;
  }

  return v7;
}

uint64_t MovieSampleDataWriterPatchFirstMediaDataAtomSize(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_4(&v6);
    return v6;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_3(&v6);
    return v6;
  }

  FigSimpleMutexLock();
  if (!*(a1 + 40))
  {
    MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_2(&v6);
LABEL_13:
    v4 = v6;
    goto LABEL_6;
  }

  if (*(a1 + 120) != 1)
  {
    MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_1(&v6);
    goto LABEL_13;
  }

  v4 = patchMediaDataAtomSize(a1, *(a1 + 128), a2, *(a1 + 106));
LABEL_6:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t patchMediaDataAtomSize(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v16 = 0;
  if (HIDWORD(a3) || a4)
  {
    if (*(a1 + 104) != 1)
    {
      patchMediaDataAtomSize_cold_2(&v15);
      return v15;
    }

    v15 = 0x7461646D01000000;
    v14 = bswap64(a3 + 8);
    v9 = *(a1 + 40);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v10)
    {
      return 4294954514;
    }

    result = v10(v9, 8, a2 - 8, &v15, &v16);
    if (result)
    {
      return result;
    }

    if (v16 == 8)
    {
      v11 = *(a1 + 40);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v12)
      {
        return 4294954514;
      }

      result = v12(v11, 8, a2, &v14, &v16);
      if (result)
      {
        return result;
      }

      if (v16 == 8)
      {
        goto LABEL_14;
      }

      v13 = 603;
    }

    else
    {
      v13 = 598;
    }

    patchMediaDataAtomSize_cold_3(v13, &v17);
    return v17;
  }

  LODWORD(v14) = bswap32(a3);
  v6 = *(a1 + 40);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v7)
  {
    return 4294954514;
  }

  result = v7(v6, 4, a2, &v14, &v16);
  if (!result)
  {
    if (v16 != 4)
    {
      patchMediaDataAtomSize_cold_1(&v15);
      return v15;
    }

LABEL_14:
    result = 0;
    *(a1 + 108) = 2;
  }

  return result;
}

uint64_t MovieSampleDataWriterSetPredeterminedMediaDataAtomSize(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2 && a2 <= 7)
    {
      MovieSampleDataWriterSetPredeterminedMediaDataAtomSize_cold_2(&v5);
      return v5;
    }

    else if (*(a1 + 108))
    {
      MovieSampleDataWriterSetPredeterminedMediaDataAtomSize_cold_1(&v4);
      return v4;
    }

    else
    {
      result = 0;
      *(a1 + 136) = a2;
    }
  }

  else
  {
    MovieSampleDataWriterSetPredeterminedMediaDataAtomSize_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieSampleDataWriterSetDefaultByteStream(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      MovieSampleDataWriterSetDefaultByteStream_cold_1(a1, a2, &v3);
      return v3;
    }

    else
    {
      MovieSampleDataWriterSetDefaultByteStream_cold_2(&v4);
      return v4;
    }
  }

  else
  {
    MovieSampleDataWriterSetDefaultByteStream_cold_3(&v5);
    return v5;
  }
}

const __CFArray *startNewChunkForAllTracks(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v4 = Count;
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v5);
        result = MediaDataChunkWriterTrackStartNewChunk(*(a1 + 32), ValueAtIndex[1]);
        if (result)
        {
          break;
        }

        if (v4 == ++v5)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t MovieSampleDataWriterGetLengthOfDefaultByteStream(void *a1, uint64_t *a2)
{
  v7 = 0;
  if (!a1)
  {
    MovieSampleDataWriterGetLengthOfDefaultByteStream_cold_3(&v8);
    return v8;
  }

  if (!a2)
  {
    MovieSampleDataWriterGetLengthOfDefaultByteStream_cold_2(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  v4 = a1[5];
  if (v4)
  {
    EntireLength = MediaDataChunkWriterGetEntireLength(a1[4], v4, &v7);
    if (!EntireLength)
    {
      *a2 = v7;
    }
  }

  else
  {
    MovieSampleDataWriterGetLengthOfDefaultByteStream_cold_1(&v8);
    EntireLength = v8;
  }

  FigSimpleMutexUnlock();
  return EntireLength;
}

uint64_t MovieSampleDataWriterCopyURLOfDefaultByteStream(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  if (!a1)
  {
    MovieSampleDataWriterCopyURLOfDefaultByteStream_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    MovieSampleDataWriterCopyURLOfDefaultByteStream_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 40))
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E695FFA0], a2, &v10);
      v7 = v10;
    }

    v8 = 0;
    *a3 = v7;
  }

  else
  {
    MovieSampleDataWriterCopyURLOfDefaultByteStream_cold_1(&v11);
    v8 = v11;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t MovieSampleDataWriterSynchronizeDefaultByteStream(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    MovieSampleDataWriterSynchronizeDefaultByteStream_cold_4(&v12);
    return v12;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    MovieSampleDataWriterSynchronizeDefaultByteStream_cold_3(&v12);
    return v12;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
    if (v7)
    {
      v8 = v7;
      *v7 = CFRetain(v3);
      v8[2] = a2;
      if (a3)
      {
        dispatch_async_f(v6, v8, byteStreamSynchronizeFunc);
      }

      else
      {
        dispatch_sync_f(v6, v8, byteStreamSynchronizeFunc);
      }

      return 0;
    }

    MovieSampleDataWriterSynchronizeDefaultByteStream_cold_1(&v12);
    return v12;
  }

  if (a3)
  {
    MovieSampleDataWriterSynchronizeDefaultByteStream_cold_2(&v12);
    return v12;
  }

  v9 = *(CMBaseObjectGetVTable() + 16);
  if (*v9 < 2uLL)
  {
    return 4294954514;
  }

  v10 = v9[5];
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v3, a2);
}

uint64_t MovieSampleDataWriterWriteData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    MovieSampleDataWriterWriteData_cold_5(&v14);
    return v14;
  }

  if (a3 < 0)
  {
    MovieSampleDataWriterWriteData_cold_4(&v14);
    return v14;
  }

  if (!a4)
  {
    MovieSampleDataWriterWriteData_cold_3(&v14);
    return v14;
  }

  FigSimpleMutexLock();
  v8 = *(a1 + 40);
  if (!v8)
  {
    MovieSampleDataWriterWriteData_cold_2(&v14);
LABEL_18:
    v11 = v14;
    goto LABEL_10;
  }

  v13 = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v9)
  {
    v11 = 4294954514;
    goto LABEL_10;
  }

  v10 = v9(v8, a2, a3, a4, &v13);
  if (v10)
  {
    v11 = v10;
    goto LABEL_10;
  }

  if (v13 != a2)
  {
    MovieSampleDataWriterWriteData_cold_1(&v14);
    goto LABEL_18;
  }

  v11 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t MovieSampleDataWriterWriteFreeAtom(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 40))
    {
      writeFreeAtom(a1, a2, a3);
      v7 = v6;
    }

    else
    {
      MovieSampleDataWriterWriteFreeAtom_cold_1(&v9);
      v7 = v9;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    MovieSampleDataWriterWriteFreeAtom_cold_2(&v10);
    return v10;
  }

  return v7;
}

uint64_t MovieSampleDataWriterAppendFreeAtom(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    MovieSampleDataWriterAppendFreeAtom_cold_2(&v10);
    return v10;
  }

  FigSimpleMutexLock();
  if (!*(a1 + 40))
  {
    MovieSampleDataWriterAppendFreeAtom_cold_1(&v10);
    v7 = v10;
    goto LABEL_9;
  }

  appended = appendFileTypeAtomIfNeeded(a1);
  if (!appended)
  {
    v9 = 0;
    v5 = *(a1 + 40);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v6)
    {
      v7 = 4294954514;
      goto LABEL_9;
    }

    appended = v6(v5, 0, &v9);
    if (!appended)
    {
      writeFreeAtom(a1, v9, a2);
    }
  }

  v7 = appended;
LABEL_9:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t appendFileTypeAtomIfNeeded(uint64_t a1)
{
  theBuffer = 0;
  v2 = createFileTypeAtomIfNeeded(a1, &theBuffer);
  v3 = theBuffer;
  if (!v2 && theBuffer)
  {
    byteStreamAppendBlockBuffer(*(a1 + 40), theBuffer);
    v2 = v4;
LABEL_5:
    CFRelease(v3);
    return v2;
  }

  if (theBuffer)
  {
    goto LABEL_5;
  }

  return v2;
}

uint64_t MovieSampleDataWriterAppendBlockBuffer(uint64_t *a1, OpaqueCMBlockBuffer *a2, uint64_t *a3)
{
  if (!a1)
  {
    MovieSampleDataWriterAppendBlockBuffer_cold_4(&v14);
    return v14;
  }

  if (!a2)
  {
    MovieSampleDataWriterAppendBlockBuffer_cold_3(&v14);
    return v14;
  }

  FigSimpleMutexLock();
  if (!a1[5])
  {
    MovieSampleDataWriterAppendBlockBuffer_cold_2(&v14);
LABEL_20:
    v11 = v14;
    goto LABEL_12;
  }

  appendFileTypeAtomAndMediaDataAtomHeaderAndPaddingIfNeeded(a1, 0);
  v13 = 0;
  v6 = a1[5];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v7)
  {
    appended = v7(v6, 0, &v13);
    if (!appended)
    {
      DataLength = CMBlockBufferGetDataLength(a2);
      appended = CMByteStreamAppendBlockBuffer();
      if (!appended)
      {
        if (!DataLength)
        {
          checkIfMediaDataAtomSizeExceededPredeterminedSizeIfNeeded(a1);
          v11 = v10;
          if (a3 && !v10)
          {
            *a3 = v13;
          }

          goto LABEL_12;
        }

        MovieSampleDataWriterAppendBlockBuffer_cold_1(&v14);
        goto LABEL_20;
      }
    }

    v11 = appended;
  }

  else
  {
    v11 = 4294954514;
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t MovieSampleDataWriterAppendHeader(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  if (!a1)
  {
    MovieSampleDataWriterAppendHeader_cold_5(&v17);
    return v17;
  }

  if (!a2)
  {
    MovieSampleDataWriterAppendHeader_cold_4(&v17);
    return v17;
  }

  FigSimpleMutexLock();
  if (!*(a1 + 40))
  {
    MovieSampleDataWriterAppendHeader_cold_3(&v17);
    goto LABEL_27;
  }

  appended = appendFileTypeAtomIfNeeded(a1);
  if (appended || (MediaDataChunkWriterFlush(*(a1 + 32), *(a1 + 40)), appended) || (appended = patchMediaDataAtomSizeIfNeeded(a1), appended))
  {
LABEL_22:
    v11 = appended;
    goto LABEL_20;
  }

  if (!*(a1 + 136))
  {
    goto LABEL_12;
  }

  v17 = 0;
  v7 = *(a1 + 40);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
LABEL_19:
    v11 = 4294954514;
    goto LABEL_20;
  }

  appended = v8(v7, 0, &v17);
  if (appended)
  {
    goto LABEL_22;
  }

  v9 = v17 - *(a1 + 112);
  v10 = *(a1 + 136);
  if (v10 < v9)
  {
    MovieSampleDataWriterAppendHeader_cold_1(&v18);
    v11 = v18;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_12:
    v16 = 0;
    v12 = *(a1 + 40);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v13)
    {
      appended = v13(v12, 0, &v16);
      if (!appended)
      {
        DataLength = CMBlockBufferGetDataLength(a2);
        appended = CMByteStreamAppendBlockBuffer();
        if (!appended)
        {
          if (!DataLength)
          {
            appended = startNewChunkForAllTracks(a1);
            if (!appended)
            {
              *(a1 + 108) = 0;
              v11 = 0;
              if (a3)
              {
                *a3 = v16;
              }

              goto LABEL_20;
            }

            goto LABEL_22;
          }

          MovieSampleDataWriterAppendHeader_cold_2(&v17);
LABEL_27:
          v11 = v17;
          goto LABEL_20;
        }
      }

      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v11 = writeZeroData(a1, *(a1 + 40), v17, (v10 - v9));
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_20:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t MovieSampleDataWriterFlush(void *a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    v2 = a1[5];
    if (v2)
    {
      MediaDataChunkWriterFlush(a1[4], v2);
      v4 = v3;
    }

    else
    {
      MovieSampleDataWriterFlush_cold_1(&v6);
      v4 = v6;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    MovieSampleDataWriterFlush_cold_2(&v7);
    return v7;
  }

  return v4;
}

uint64_t MovieSampleDataWriterTrackAppendSampleData(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t *a9, const __CFArray *a10, uint64_t a11)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      if (a1[5])
      {
        appended = appendFileTypeAtomAndMediaDataAtomHeaderAndPaddingIfNeeded(a1, a2);
        if (!appended)
        {
          MediaDataChunkWriterTrackAppendSampleData(a1[4], a2[1], a1[5], a3, a4, a5, a6, a7, a8, a9, a10, a11);
          if (!appended)
          {
            checkIfMediaDataAtomSizeExceededPredeterminedSizeIfNeeded(a1);
          }
        }

        v20 = appended;
      }

      else
      {
        MovieSampleDataWriterTrackAppendSampleData_cold_1(&v22);
        v20 = v22;
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      MovieSampleDataWriterTrackAppendSampleData_cold_2(&v23);
      return v23;
    }
  }

  else
  {
    MovieSampleDataWriterTrackAppendSampleData_cold_3(&v24);
    return v24;
  }

  return v20;
}

void MovieSampleDataWriterTrackAppendSampleReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t *a9, const __CFArray *a10, uint64_t a11)
{
  if (a1)
  {
    if (a2)
    {
      v11 = *(a1 + 32);
      v12 = *(a2 + 8);

      MediaDataChunkWriterTrackAppendSampleReference(v11, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    }

    else
    {
      MovieSampleDataWriterTrackAppendSampleReference_cold_1(&v13);
    }
  }

  else
  {
    MovieSampleDataWriterTrackAppendSampleReference_cold_2(&v14);
  }
}

uint64_t MovieSampleDataWriterTrackSetPreferredChunkSize(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 32);
      v4 = *(a2 + 8);

      return MediaDataChunkWriterTrackSetPreferredChunkSize(v3, v4, a3);
    }

    else
    {
      MovieSampleDataWriterTrackSetPreferredChunkSize_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    MovieSampleDataWriterTrackSetPreferredChunkSize_cold_2(&v7);
    return v7;
  }
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkSize(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v3 = *(a1 + 32);
        v4 = *(a2 + 8);

        return MediaDataChunkWriterTrackGetPreferredChunkSize(v3, v4, a3);
      }

      else
      {
        MovieSampleDataWriterTrackGetPreferredChunkSize_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      MovieSampleDataWriterTrackGetPreferredChunkSize_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    MovieSampleDataWriterTrackGetPreferredChunkSize_cold_3(&v8);
    return v8;
  }
}

uint64_t MovieSampleDataWriterTrackSetPreferredChunkDuration(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (!a1)
  {
    MovieSampleDataWriterTrackSetPreferredChunkDuration_cold_2(&v6);
    return LODWORD(v6.value);
  }

  if (!a2)
  {
    MovieSampleDataWriterTrackSetPreferredChunkDuration_cold_1(&v6);
    return LODWORD(v6.value);
  }

  v3 = *(a1 + 32);
  v4 = *(a2 + 8);
  v6 = *a3;
  return MediaDataChunkWriterTrackSetPreferredChunkDuration(v3, v4, &v6);
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkDuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v3 = *(a1 + 32);
        v4 = *(a2 + 8);

        return MediaDataChunkWriterTrackGetPreferredChunkDuration(v3, v4, a3);
      }

      else
      {
        MovieSampleDataWriterTrackGetPreferredChunkDuration_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      MovieSampleDataWriterTrackGetPreferredChunkDuration_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    MovieSampleDataWriterTrackGetPreferredChunkDuration_cold_3(&v8);
    return v8;
  }
}

uint64_t MovieSampleDataWriterTrackSetPreferredChunkAlignment(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 32);
      v4 = *(a2 + 8);

      return MediaDataChunkWriterTrackSetPreferredChunkAlignment(v3, v4, a3);
    }

    else
    {
      MovieSampleDataWriterTrackSetPreferredChunkAlignment_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    MovieSampleDataWriterTrackSetPreferredChunkAlignment_cold_2(&v7);
    return v7;
  }
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkAlignment(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v3 = *(a1 + 32);
        v4 = *(a2 + 8);

        return MediaDataChunkWriterTrackGetPreferredChunkAlignment(v3, v4, a3);
      }

      else
      {
        MovieSampleDataWriterTrackGetPreferredChunkAlignment_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      MovieSampleDataWriterTrackGetPreferredChunkAlignment_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    MovieSampleDataWriterTrackGetPreferredChunkAlignment_cold_3(&v8);
    return v8;
  }
}

uint64_t MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer(void *a1, const __CFAllocator *a2, CMBlockBufferRef *a3)
{
  if (a1)
  {
    if (a3)
    {
      v5 = a1[10];
      v4 = a1[11];
      v6 = a1[12];

      return MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer(a2, v5, v4, v6, a3);
    }

    else
    {
      MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer_cold_2(&v9);
    return v9;
  }
}

uint64_t MovieSampleDataWriterSetMajorBrand(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v4 = CFGetTypeID(cf);
      if (v4 == CFNumberGetTypeID())
      {
        v5 = *(a1 + 80);
        *(a1 + 80) = cf;
        CFRetain(cf);
        if (v5)
        {
          CFRelease(v5);
        }

        return 0;
      }

      else
      {
        MovieSampleDataWriterSetMajorBrand_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      MovieSampleDataWriterSetMajorBrand_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    MovieSampleDataWriterSetMajorBrand_cold_3(&v9);
    return v9;
  }
}

uint64_t MovieSampleDataWriterCopyMajorBrand(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 80);
      if (v3)
      {
        v4 = CFRetain(v3);
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      MovieSampleDataWriterCopyMajorBrand_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    MovieSampleDataWriterCopyMajorBrand_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t MovieSampleDataWriterSetMinorVersion(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v4 = CFGetTypeID(cf);
      if (v4 == CFNumberGetTypeID())
      {
        v5 = *(a1 + 88);
        *(a1 + 88) = cf;
        CFRetain(cf);
        if (v5)
        {
          CFRelease(v5);
        }

        return 0;
      }

      else
      {
        MovieSampleDataWriterSetMinorVersion_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      MovieSampleDataWriterSetMinorVersion_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    MovieSampleDataWriterSetMinorVersion_cold_3(&v9);
    return v9;
  }
}

uint64_t MovieSampleDataWriterCopyMinorVersion(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 88);
      if (v3)
      {
        v4 = CFRetain(v3);
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      MovieSampleDataWriterCopyMinorVersion_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    MovieSampleDataWriterCopyMinorVersion_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t MovieSampleDataWriterSetCompatibleBrands(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v4 = CFGetTypeID(cf);
      if (v4 == CFArrayGetTypeID())
      {
        v5 = *(a1 + 96);
        *(a1 + 96) = cf;
        CFRetain(cf);
        if (v5)
        {
          CFRelease(v5);
        }

        return 0;
      }

      else
      {
        MovieSampleDataWriterSetCompatibleBrands_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      MovieSampleDataWriterSetCompatibleBrands_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    MovieSampleDataWriterSetCompatibleBrands_cold_3(&v9);
    return v9;
  }
}

uint64_t MovieSampleDataWriterCopyCompatibleBrands(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 96);
      if (v3)
      {
        v4 = CFRetain(v3);
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      MovieSampleDataWriterCopyCompatibleBrands_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    MovieSampleDataWriterCopyCompatibleBrands_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t movieSampleDataWriterRegisterType()
{
  result = _CFRuntimeRegisterClass();
  sMovieSampleDataWriterID = result;
  return result;
}

double movieSampleDataWriter_Init(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void movieSampleDataWriter_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 56);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
        if (ValueAtIndex)
        {
          CFAllocatorDeallocate(v2, ValueAtIndex);
        }
      }
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 144);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    CFRelease(v14);
  }

  FigSimpleMutexDestroy();
  MediaDataChunkWriterRelease(*(a1 + 32));
  v15 = *(a1 + 64);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

__CFString *movieSampleDataWriter_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<MovieSampleDataWriter %p>{fileType:%@}", a1, *(a1 + 24));
  return Mutable;
}

void byteStreamSynchronizeFunc(const void **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (*v4 >= 2uLL)
  {
    v5 = v4[5];
    if (v5)
    {
      v5(v2, v3);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t createPadding(uint64_t a1, size_t a2, CMBlockBufferRef *a3)
{
  DataLength = CMBlockBufferGetDataLength(*(a1 + 144));
  blockBufferOut = 0;
  appended = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &blockBufferOut);
  if (appended)
  {
LABEL_7:
    v9 = appended;
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }
  }

  else
  {
    while (a2)
    {
      if (a2 >= DataLength)
      {
        v8 = DataLength;
      }

      else
      {
        v8 = a2;
      }

      appended = CMBlockBufferAppendBufferReference(blockBufferOut, *(a1 + 144), 0, v8, 0);
      a2 -= v8;
      if (appended)
      {
        goto LABEL_7;
      }
    }

    v9 = 0;
    *a3 = blockBufferOut;
  }

  return v9;
}

uint64_t OUTLINED_FUNCTION_1_14(OpaqueCMBlockBuffer *a1, OpaqueCMBlockBuffer *a2)
{

  return CMBlockBufferAppendBufferReference(a1, a2, 0, 0, 0);
}

uint64_t FigCLCPCaptionFormatConformerCreate(uint64_t a1, const void *a2, uint64_t *a3)
{
  v9 = 0;
  if (!a3)
  {
    FigCLCPCaptionFormatConformerCreate_cold_2(&v10);
    return v10;
  }

  FigCaptionFormatConformerGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    FigCLCPCaptionFormatConformerCreate_cold_1(v5, &v9, &v10);
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = CFRetain(a2);
  }

  else
  {
    v7 = 0;
  }

  result = 0;
  *DerivedStorage = v7;
  *a3 = v9;
  return result;
}