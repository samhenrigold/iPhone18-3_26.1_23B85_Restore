int64_t ZSTD_compressBlock_btlazy2_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 272);
  if (v10 >= 6)
  {
    v10 = 6;
  }

  if (v10 <= 4)
  {
    v10 = 4;
  }

  v138 = v10;
  v12 = *a3;
  v11 = a3[1];
  v13 = *(a1 + 248);
  v15 = *v13;
  v14 = *(v13 + 8);
  v132 = (v8 + v9);
  v125 = (v14 + *(v13 + 24));
  if (v5 - (v8 + v9) - v125 + *v13)
  {
    v16 = v5;
  }

  else
  {
    v16 = (v5 + 1);
  }

  *(a1 + 300) = 0;
  v139 = v7;
  if (v16 < v7)
  {
    v18 = a1;
    v124 = a3;
    v127 = v6 - 1;
    v128 = v6 - 3;
    v129 = v9 + v8 + 8;
    v130 = v6 - 7;
    v135 = v9 + v14 - v15;
    v126 = v14 - v135;
    v136 = v14;
    v137 = v9;
    v131 = v15;
    while (1)
    {
      v20 = v16 + 1;
      v21 = (v16 - v8 - v12 + 1);
      v22 = v14 + v21 - v135;
      if (v21 >= v9)
      {
        v22 = v8 + v21;
      }

      v133 = v11;
      if ((v21 - v9) <= 0xFFFFFFFC && *v22 == *v20)
      {
        if (v21 >= v9)
        {
          v23 = v6;
        }

        else
        {
          v23 = v15;
        }

        v24 = ZSTD_count_2segments(v16 + 5, (v22 + 4), v6, v23, v132) + 4;
      }

      else
      {
        v24 = 0;
      }

      v140 = 999999999;
      if (v138 == 6)
      {
        BestMatch_dictMatchState_6 = ZSTD_BtFindBestMatch_dictMatchState_6(v18, v16, v6, &v140);
      }

      else if (v138 == 5)
      {
        BestMatch_dictMatchState_6 = ZSTD_BtFindBestMatch_dictMatchState_5(v18, v16, v6, &v140);
      }

      else
      {
        BestMatch_dictMatchState_6 = ZSTD_BtFindBestMatch_dictMatchState_4(v18, v16, v6, &v140);
      }

      if (BestMatch_dictMatchState_6 <= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = BestMatch_dictMatchState_6;
      }

      LODWORD(v9) = v137;
      if (v26 < 4)
      {
        v19 = v16 - v5;
        v16 += ((v16 - v5) >> 8) + 1;
        *(v18 + 300) = v19 > 0x7FF;
        v14 = v136;
        v15 = v131;
LABEL_11:
        v11 = v133;
        goto LABEL_12;
      }

      if (BestMatch_dictMatchState_6 <= v24)
      {
        v27 = 1;
      }

      else
      {
        v27 = v140;
      }

      if (BestMatch_dictMatchState_6 > v24)
      {
        v20 = v16;
      }

      v28 = v20;
      v29 = v27;
      v30 = v26;
      if (v16 >= v139)
      {
LABEL_37:
        if (v29 <= 3)
        {
          goto LABEL_131;
        }

        goto LABEL_38;
      }

      while (1)
      {
        v28 = (v16 + 1);
        v42 = (v16 + 1 - v8 - v12);
        if (v42 >= v9)
        {
          v43 = (v8 + v42);
        }

        else
        {
          v43 = (v136 + v42 - v135);
        }

        if ((v42 - v9) > 0xFFFFFFFC || *v43 != *v28)
        {
          v54 = v138;
          goto LABEL_66;
        }

        if (v42 >= v9)
        {
          v44 = v6;
        }

        else
        {
          v44 = v131;
        }

        v45 = v16 + 5;
        v46 = v43 + 1;
        v47 = &v16[v44 - (v43 + 1) + 5];
        if (v47 >= v6)
        {
          v47 = v6;
        }

        if (v47 - 7 <= v45)
        {
          v48 = (v43 + 1);
          v50 = v16 + 5;
        }

        else
        {
          if (*v46 != *v45)
          {
            v53 = __clz(__rbit64(*v45 ^ *v46)) >> 3;
            goto LABEL_105;
          }

          v48 = (v43 + 3);
          v49 = (v16 + 13);
          while (1)
          {
            v50 = v49;
            if (v49 >= v47 - 7)
            {
              break;
            }

            v52 = *v48;
            v48 += 4;
            v51 = v52;
            v49 += 8;
            if (v52 != *v50)
            {
              v53 = v50 + (__clz(__rbit64(*v50 ^ v51)) >> 3) - v45;
              goto LABEL_105;
            }
          }
        }

        if (v50 < v47 - 3 && *v48 == *v50)
        {
          v48 += 2;
          v50 = (v50 + 4);
        }

        if (v50 < v47 - 1 && *v48 == *v50)
        {
          ++v48;
          v50 = (v50 + 2);
        }

        if (v50 < v47 && *v48 == *v50)
        {
          v50 = (v50 + 1);
        }

        v53 = v50 - v45;
LABEL_105:
        if (v46 + v53 == v44)
        {
          v60 = &v45[v53];
          if (v130 > v60)
          {
            if (*v132 == *v60)
            {
              v61 = 0;
              v62 = &v16[v53];
              while (1)
              {
                v63 = &v62[v61 + 13];
                if (v63 >= v130)
                {
                  break;
                }

                v64 = *(v129 + v61);
                v65 = *v63;
                v61 += 8;
                if (v64 != v65)
                {
                  v66 = &v62[v61 + 5 + (__clz(__rbit64(v65 ^ v64)) >> 3)] - v60;
                  v54 = v138;
                  goto LABEL_127;
                }
              }

              v67 = (v129 + v61);
              v68 = &v16[v53 + 13 + v61];
LABEL_117:
              if (v68 < v128 && *v67 == *v68)
              {
                v67 = (v67 + 4);
                v68 += 4;
              }

              if (v68 < v127 && *v67 == *v68)
              {
                v67 = (v67 + 2);
                v68 += 2;
              }

              if (v68 < v6 && *v67 == *v68)
              {
                ++v68;
              }

              v54 = v138;
              v66 = v68 - v60;
            }

            else
            {
              v66 = __clz(__rbit64(*v60 ^ *v132)) >> 3;
              v54 = v138;
            }

LABEL_127:
            v53 += v66;
            if (v53 > 0xFFFFFFFFFFFFFFFBLL)
            {
              goto LABEL_66;
            }

            goto LABEL_128;
          }

          v67 = v132;
          v68 = v60;
          goto LABEL_117;
        }

        v54 = v138;
        if (v53 > 0xFFFFFFFFFFFFFFFBLL)
        {
          goto LABEL_66;
        }

LABEL_128:
        v69 = v53 + 4;
        if (3 * v69 > (__clz(v27) + 3 * v26 - 30))
        {
          v20 = v16 + 1;
          v27 = 1;
          v26 = v69;
        }

LABEL_66:
        v140 = 999999999;
        if (v54 == 6)
        {
          v30 = ZSTD_BtFindBestMatch_dictMatchState_6(a1, v16 + 1, v6, &v140);
        }

        else
        {
          v30 = v54 == 5 ? ZSTD_BtFindBestMatch_dictMatchState_5(a1, v16 + 1, v6, &v140) : ZSTD_BtFindBestMatch_dictMatchState_4(a1, v16 + 1, v6, &v140);
        }

        LODWORD(v9) = v137;
        if (v30 < 4 || (v29 = v140, (__clz(v140) + 4 * v30 - 31) <= (__clz(v27) + 4 * v26 - 27)))
        {
          if (v28 >= v139)
          {
            break;
          }

          v28 = (v16 + 2);
          v55 = (v16 + 2 - v8 - v12);
          v56 = v136 + v55 - v135;
          if (v55 >= v137)
          {
            v56 = v8 + v55;
          }

          if (v55 - v137 <= 0xFFFFFFFC && *v56 == *v28 && (v55 >= v137 ? (v57 = v6) : (v57 = v131), v58 = ZSTD_count_2segments(v16 + 6, (v56 + 4), v6, v57, v132), v58 <= 0xFFFFFFFFFFFFFFFBLL))
          {
            v59 = v138;
            if ((__clz(v27) + 4 * v26 - 30) < 4 * (v58 + 4))
            {
              v20 = v16 + 2;
              v27 = 1;
              v26 = v58 + 4;
            }
          }

          else
          {
            v59 = v138;
          }

          v140 = 999999999;
          if (v59 == 6)
          {
            v30 = ZSTD_BtFindBestMatch_dictMatchState_6(a1, v16 + 2, v6, &v140);
          }

          else
          {
            v30 = v59 == 5 ? ZSTD_BtFindBestMatch_dictMatchState_5(a1, v16 + 2, v6, &v140) : ZSTD_BtFindBestMatch_dictMatchState_4(a1, v16 + 2, v6, &v140);
          }

          LODWORD(v9) = v137;
          if (v30 < 4)
          {
            break;
          }

          v29 = v140;
          if ((__clz(v140) + 4 * v30 - 31) <= (__clz(v27) + 4 * v26 - 24))
          {
            break;
          }
        }

        v16 = v28;
        v26 = v30;
        v27 = v29;
        v20 = v28;
        if (v28 >= v139)
        {
          goto LABEL_37;
        }
      }

      v28 = v20;
      LODWORD(v29) = v27;
      v30 = v26;
      if (v27 <= 3)
      {
LABEL_131:
        v18 = a1;
        v14 = v136;
        v38 = v6 - 7;
        v15 = v131;
        v33 = v126;
        v35 = (v6 - 32);
        v39 = v129;
        goto LABEL_135;
      }

LABEL_38:
      v31 = v28 - (v29 + v8) + 3;
      v32 = v132;
      v33 = v126;
      if (v9 <= v31)
      {
        v34 = v8;
      }

      else
      {
        v32 = v125;
        v34 = v126;
      }

      v35 = (v6 - 32);
      if (v28 <= v5 || v34 + v31 <= v32)
      {
        v18 = a1;
        v14 = v136;
        v38 = v6 - 7;
        v15 = v131;
        v39 = v129;
      }

      else
      {
        v36 = (v34 + v31 - 1);
        v37 = v28 - 1;
        v18 = a1;
        v14 = v136;
        v38 = v6 - 7;
        v15 = v131;
        v39 = v129;
        while (*v37 == *v36)
        {
          ++v30;
          v40 = v37 - 1;
          if (v37 > v5)
          {
            --v37;
            if (v36-- > v32)
            {
              continue;
            }
          }

          v28 = v40 + 1;
          goto LABEL_134;
        }

        v28 = v37 + 1;
      }

LABEL_134:
      v133 = v12;
      v12 = (v29 - 3);
LABEL_135:
      v70 = v28 - v5;
      v71 = *(a2 + 24);
      if (v28 > v35)
      {
        if (v5 <= v35)
        {
          v72 = (v71 + v35 - v5);
          *v71 = *v5;
          if (v35 - v5 >= 17)
          {
            v73 = v71 + 1;
            v74 = (v5 + 32);
            do
            {
              *v73 = *(v74 - 1);
              v75 = *v74;
              v74 += 2;
              v73[1] = v75;
              v73 += 2;
            }

            while (v73 < v72);
          }

          v5 = v35;
          v71 = v72;
        }

        if (v5 >= v28)
        {
          goto LABEL_164;
        }

        v76 = v28 - v5;
        if ((v28 - v5) < 8)
        {
          v84 = v71;
        }

        else if ((v71 - v5) < 0x20)
        {
          v84 = v71;
        }

        else
        {
          if (v76 < 0x20)
          {
            v77 = 0;
LABEL_158:
            v89 = v76 & 0xFFFFFFFFFFFFFFF8;
            v84 = v71 + (v76 & 0xFFFFFFFFFFFFFFF8);
            v90 = v77 - (v76 & 0xFFFFFFFFFFFFFFF8);
            v91 = &v5[v77];
            v92 = (v71 + v77);
            do
            {
              v93 = *v91;
              v91 += 8;
              *v92++ = v93;
              v90 += 8;
            }

            while (v90);
            if (v76 != v89)
            {
              v5 += v89;
              goto LABEL_163;
            }

LABEL_164:
            *(a2 + 24) += v70;
            v83 = *(a2 + 8);
            if (v70 >= 0x10000)
            {
              v95 = (v83 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v95;
            }

            goto LABEL_166;
          }

          v77 = v76 & 0xFFFFFFFFFFFFFFE0;
          v85 = (v5 + 16);
          v86 = v71 + 1;
          v87 = v76 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v88 = *v85;
            *(v86 - 1) = *(v85 - 1);
            *v86 = v88;
            v85 += 2;
            v86 += 2;
            v87 -= 32;
          }

          while (v87);
          if (v76 == v77)
          {
            goto LABEL_164;
          }

          if ((v76 & 0x18) != 0)
          {
            goto LABEL_158;
          }

          v5 += v77;
          v84 = v71 + v77;
        }

        do
        {
LABEL_163:
          v94 = *v5++;
          *v84++ = v94;
        }

        while (v5 != v28);
        goto LABEL_164;
      }

      *v71 = *v5;
      v78 = *(a2 + 24);
      if (v70 > 0x10)
      {
        *(v78 + 16) = *(v5 + 1);
        if (v70 >= 33)
        {
          v79 = v78 + v70;
          v80 = (v78 + 32);
          v81 = (v5 + 48);
          do
          {
            *v80 = *(v81 - 1);
            v82 = *v81;
            v81 += 2;
            v80[1] = v82;
            v80 += 2;
          }

          while (v80 < v79);
        }

        goto LABEL_164;
      }

      *(a2 + 24) = v78 + v70;
      v83 = *(a2 + 8);
LABEL_166:
      *(v83 + 4) = v70;
      *v83 = v29;
      if (v30 - 3 >= 0x10000)
      {
        v96 = (v83 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v96;
      }

      *(v83 + 6) = v30 - 3;
      v97 = v83 + 8;
      *(a2 + 8) = v83 + 8;
      if (*(v18 + 300))
      {
        *(v18 + 300) = 0;
      }

      v5 = &v28[v30];
      if (&v28[v30] > v139)
      {
        v16 = &v28[v30];
        goto LABEL_11;
      }

      v98 = v12;
      v99 = v133;
      while (2)
      {
        v12 = v99;
        v99 = v98;
        v100 = (v5 - v8 - v12);
        if (v100 >= v9)
        {
          v101 = v8;
        }

        else
        {
          v101 = v33;
        }

        if ((v100 - v9) <= 0xFFFFFFFC)
        {
          v102 = v101 + v100;
          if (*(v101 + v100) == *v5)
          {
            if (v100 >= v9)
            {
              v103 = v6;
            }

            else
            {
              v103 = v15;
            }

            v104 = (v5 + 4);
            v105 = (v102 + 4);
            v106 = &v103[v5 - v102];
            if (v106 >= v6)
            {
              v106 = v6;
            }

            if (v106 - 7 <= v104)
            {
              v107 = v105;
              v109 = (v5 + 4);
              goto LABEL_191;
            }

            if (*v105 == *v104)
            {
              v107 = (v101 + v100 + 12);
              v108 = (v5 + 12);
              while (1)
              {
                v109 = v108;
                if (v108 >= (v106 - 7))
                {
                  break;
                }

                v111 = *v107;
                v107 += 4;
                v110 = v111;
                v108 += 8;
                if (v111 != *v109)
                {
                  v112 = &v109[__clz(__rbit64(*v109 ^ v110)) >> 3] - v104;
                  goto LABEL_202;
                }
              }

LABEL_191:
              if (v109 < v106 - 3 && *v107 == *v109)
              {
                v107 += 2;
                v109 += 4;
              }

              if (v109 < v106 - 1 && *v107 == *v109)
              {
                ++v107;
                v109 += 2;
              }

              if (v109 < v106 && *v107 == *v109)
              {
                ++v109;
              }

              v112 = v109 - v104;
            }

            else
            {
              v112 = __clz(__rbit64(*v104 ^ *v105)) >> 3;
            }

LABEL_202:
            if (v105 + v112 != v103)
            {
              if (v5 <= v35)
              {
                goto LABEL_204;
              }

              goto LABEL_205;
            }

            v114 = &v104[v112];
            if (v38 > v114)
            {
              if (*v132 == *v114)
              {
                v115 = 0;
                v116 = &v5[v112];
                while (1)
                {
                  v117 = &v116[v115 + 12];
                  if (v117 >= v38)
                  {
                    break;
                  }

                  v118 = *(v39 + v115);
                  v119 = *v117;
                  v115 += 8;
                  if (v118 != v119)
                  {
                    v120 = &v116[v115 + 4 + (__clz(__rbit64(v119 ^ v118)) >> 3)];
                    goto LABEL_225;
                  }
                }

                v121 = (v39 + v115);
                v120 = &v5[v112 + 12 + v115];
LABEL_216:
                if (v120 < v128 && *v121 == *v120)
                {
                  v121 = (v121 + 4);
                  v120 += 4;
                }

                if (v120 < v127 && *v121 == *v120)
                {
                  v121 = (v121 + 2);
                  v120 += 2;
                }

                if (v120 < v6 && *v121 == *v120)
                {
                  ++v120;
                }

LABEL_225:
                v122 = v120 - v114;
              }

              else
              {
                v122 = __clz(__rbit64(*v114 ^ *v132)) >> 3;
              }

              v112 += v122;
              if (v5 <= v35)
              {
LABEL_204:
                **(a2 + 24) = *v5;
                v97 = *(a2 + 8);
              }

LABEL_205:
              *(v97 + 4) = 0;
              *v97 = 1;
              if (v112 + 1 >= 0x10000)
              {
                v113 = (v97 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v113;
              }

              *(v97 + 6) = v112 + 1;
              v97 += 8;
              v5 += v112 + 4;
              *(a2 + 8) = v97;
              v98 = v12;
              v11 = v99;
              v16 = v5;
              if (v5 > v139)
              {
                goto LABEL_12;
              }

              continue;
            }

            v121 = v132;
            v120 = v114;
            goto LABEL_216;
          }
        }

        break;
      }

      v11 = v12;
      v12 = v98;
      v16 = v5;
LABEL_12:
      if (v16 >= v139)
      {
        a3 = v124;
        break;
      }
    }
  }

  *a3 = v12;
  a3[1] = v11;
  return v6 - v5;
}

unint64_t ZSTD_BtFindBestMatch_dictMatchState_4(uint64_t a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 32 - *(a1 + 264);
    do
    {
      v12 = (-1640531535 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 4, 2);
}

unint64_t ZSTD_BtFindBestMatch_dictMatchState_5(uint64_t a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 64 - *(a1 + 264);
    do
    {
      v12 = (0xCF1BBCDCBB000000 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 5, 2);
}

unint64_t ZSTD_BtFindBestMatch_dictMatchState_6(uint64_t a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 44);
  if (v4 + v5 > a2)
  {
    return 0;
  }

  v7 = a2 - v4;
  if (v5 < a2 - v4)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 128);
    v10 = ~(-1 << (*(a1 + 260) - 1));
    v11 = 64 - *(a1 + 264);
    do
    {
      v12 = (0xCF1BBCDCBF9B0000 * *(v4 + v5)) >> v11;
      v13 = *(v8 + 4 * v12);
      v14 = (v9 + 8 * (v5 & v10));
      *(v8 + 4 * v12) = v5;
      *v14 = v13;
      v14[1] = 1;
      ++v5;
    }

    while (v7 != v5);
  }

  *(a1 + 44) = v7;
  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 6, 2);
}

int64_t ZSTD_compressBlock_greedy_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 256);
  v13 = *(a1 + 272);
  if (v13 >= 6)
  {
    v13 = 6;
  }

  if (v13 <= 4)
  {
    v13 = 4;
  }

  v14 = *a3;
  v15 = a3[1];
  *(a1 + 300) = 0;
  v110 = (v9 + v10);
  if ((v9 + v10) == v5)
  {
    v16 = v5 + 1;
  }

  else
  {
    v16 = v5;
  }

  if (v16 < v7)
  {
    v104 = v13;
    v19 = (v8 + v10);
    v102 = (v8 + v11);
    v20 = 1 << v12;
    v21 = v10 - 1;
    v111 = v10 + v9 + 8;
    v108 = v8;
    v109 = v7;
    v106 = (v8 + v10);
    v107 = v10;
    v105 = v10 - 1;
    v103 = v6 - 7;
    while (1)
    {
      v23 = v16 - v9 + 1;
      v24 = v23 - *(a1 + 28) > v20 && *(a1 + 40) == 0;
      v25 = v24 ? v23 - v20 : *(a1 + 28);
      v26 = (v23 - v14);
      v27 = v26 >= v10 ? v9 : v8;
      if ((v21 - v26) >= 3 && v14 <= v23 - v25 && (v28 = v16 + 1, *(v16 + 1) == *(v27 + v26)))
      {
        v29 = v26 >= v10 ? v6 : v19;
        v30 = ZSTD_count_2segments(v16 + 5, (v27 + v26 + 4), v6, v29, v110);
        v31 = v111;
        v32 = (v6 - 32);
        v21 = v105;
        LODWORD(v10) = v107;
        v8 = v108;
        v33 = v109;
        BestMatch_extDict_6 = v30 + 4;
        v35 = 1;
      }

      else
      {
        v112 = 999999999;
        if (v104 == 6)
        {
          BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_6(a1, v16, v6, &v112);
        }

        else if (v104 == 5)
        {
          BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_5(a1, v16, v6, &v112);
        }

        else
        {
          BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_4(a1, v16, v6, &v112);
        }

        v8 = v108;
        v33 = v109;
        LODWORD(v10) = v107;
        v21 = v105;
        v32 = (v6 - 32);
        v31 = v111;
        if (BestMatch_extDict_6 <= 3)
        {
          v22 = v16 - v5;
          v16 += ((v16 - v5) >> 8) + 1;
          *(a1 + 300) = v22 > 0x8FF;
          v19 = v106;
          goto LABEL_11;
        }

        v35 = v112;
        if (v112 >= 4)
        {
          v36 = v16 - (v112 + v9) + 3;
          if (v107 <= v36)
          {
            v37 = v9;
          }

          else
          {
            v37 = v108;
          }

          v38 = v110;
          if (v107 > v36)
          {
            v38 = v102;
          }

          if (v16 > v5)
          {
            v39 = v36;
            if (v37 + v36 > v38)
            {
              v40 = v16 - 1;
              v41 = (v37 + v39 - 1);
              while (*v40 == *v41)
              {
                ++BestMatch_extDict_6;
                v42 = v40 - 1;
                if (v40 > v5)
                {
                  --v40;
                  if (v41-- > v38)
                  {
                    continue;
                  }
                }

                v16 = v42 + 1;
                goto LABEL_48;
              }

              v16 = v40 + 1;
            }
          }

LABEL_48:
          v15 = v14;
          v14 = (v112 - 3);
        }

        v28 = v16;
      }

      v44 = v28 - v5;
      v45 = *(a2 + 24);
      if (v28 > v32)
      {
        break;
      }

      *v45 = *v5;
      v52 = *(a2 + 24);
      v19 = v106;
      if (v44 > 0x10)
      {
        *(v52 + 16) = *(v5 + 1);
        if (v44 >= 33)
        {
          v53 = v52 + v44;
          v54 = (v52 + 32);
          v55 = (v5 + 48);
          do
          {
            *v54 = *(v55 - 1);
            v56 = *v55;
            v55 += 2;
            v54[1] = v56;
            v54 += 2;
          }

          while (v54 < v53);
        }

        goto LABEL_79;
      }

      *(a2 + 24) = v52 + v44;
      v57 = *(a2 + 8);
LABEL_81:
      *(v57 + 4) = v44;
      *v57 = v35;
      if (BestMatch_extDict_6 - 3 >= 0x10000)
      {
        v70 = (v57 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v70;
      }

      *(v57 + 6) = BestMatch_extDict_6 - 3;
      v71 = v57 + 8;
      *(a2 + 8) = v57 + 8;
      if (*(a1 + 300))
      {
        *(a1 + 300) = 0;
      }

      v5 = &v28[BestMatch_extDict_6];
      if (&v28[BestMatch_extDict_6] > v33)
      {
        v16 = &v28[BestMatch_extDict_6];
        goto LABEL_11;
      }

      v72 = v14;
      v73 = v15;
      while (1)
      {
        v14 = v73;
        v73 = v72;
        v74 = v5 - v9;
        v75 = *(a1 + 28);
        if (v5 - v9 - v75 > v20 && *(a1 + 40) == 0)
        {
          v75 = v5 - v9 - v20;
        }

        v77 = (v74 - v14);
        v78 = v77 >= v10 ? v9 : v8;
        if ((v21 - v77) < 3)
        {
          break;
        }

        if (v14 > v74 - v75)
        {
          break;
        }

        v79 = v78 + v77;
        if (*v5 != *(v78 + v77))
        {
          break;
        }

        if (v77 >= v10)
        {
          v80 = v6;
        }

        else
        {
          v80 = v19;
        }

        v81 = (v5 + 4);
        v82 = (v79 + 4);
        v83 = &v80[v5 - v79];
        if (v83 >= v6)
        {
          v83 = v6;
        }

        if (v83 - 7 <= v81)
        {
          v84 = v82;
          v86 = (v5 + 4);
        }

        else
        {
          if (*v82 != *v81)
          {
            v89 = __clz(__rbit64(*v81 ^ *v82)) >> 3;
            goto LABEL_124;
          }

          v84 = (v78 + v77 + 12);
          v85 = (v5 + 12);
          while (1)
          {
            v86 = v85;
            if (v85 >= (v83 - 7))
            {
              break;
            }

            v88 = *v84;
            v84 += 4;
            v87 = v88;
            v85 += 8;
            if (v88 != *v86)
            {
              v89 = &v86[__clz(__rbit64(*v86 ^ v87)) >> 3] - v81;
              v31 = v111;
              goto LABEL_124;
            }
          }

          v31 = v111;
        }

        if (v86 < v83 - 3 && *v84 == *v86)
        {
          v84 += 2;
          v86 += 4;
        }

        if (v86 < v83 - 1 && *v84 == *v86)
        {
          ++v84;
          v86 += 2;
        }

        if (v86 < v83 && *v84 == *v86)
        {
          ++v86;
        }

        v89 = v86 - v81;
LABEL_124:
        if (v82 + v89 == v80)
        {
          v91 = &v81[v89];
          if (v103 > v91)
          {
            if (*v110 == *v91)
            {
              v92 = 0;
              v93 = &v5[v89];
              while (1)
              {
                v94 = &v93[v92 + 12];
                if (v94 >= v103)
                {
                  break;
                }

                v95 = *(v31 + v92);
                v96 = *v94;
                v92 += 8;
                if (v95 != v96)
                {
                  v97 = &v93[v92 + 4 + (__clz(__rbit64(v96 ^ v95)) >> 3)];
                  goto LABEL_147;
                }
              }

              v98 = (v31 + v92);
              v97 = &v5[v89 + 12 + v92];
LABEL_138:
              if (v97 < v6 - 3 && *v98 == *v97)
              {
                v98 = (v98 + 4);
                v97 += 4;
              }

              if (v97 < v6 - 1 && *v98 == *v97)
              {
                v98 = (v98 + 2);
                v97 += 2;
              }

              if (v97 < v6 && *v98 == *v97)
              {
                ++v97;
              }

LABEL_147:
              v99 = v97 - v91;
            }

            else
            {
              v99 = __clz(__rbit64(*v91 ^ *v110)) >> 3;
            }

            v89 += v99;
            if (v5 > v32)
            {
              goto LABEL_127;
            }

LABEL_126:
            **(a2 + 24) = *v5;
            v71 = *(a2 + 8);
            goto LABEL_127;
          }

          v98 = v110;
          v97 = v91;
          goto LABEL_138;
        }

        if (v5 <= v32)
        {
          goto LABEL_126;
        }

LABEL_127:
        *(v71 + 4) = 0;
        *v71 = 1;
        if (v89 + 1 >= 0x10000)
        {
          v90 = (v71 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v90;
        }

        *(v71 + 6) = v89 + 1;
        v71 += 8;
        v5 += v89 + 4;
        *(a2 + 8) = v71;
        v72 = v14;
        v15 = v73;
        v16 = v5;
        if (v5 > v33)
        {
          goto LABEL_11;
        }
      }

      v15 = v14;
      v14 = v72;
      v16 = v5;
LABEL_11:
      if (v16 >= v33)
      {
        goto LABEL_151;
      }
    }

    v19 = v106;
    if (v5 <= v32)
    {
      v46 = (v45 + v32 - v5);
      *v45 = *v5;
      if (v32 - v5 >= 17)
      {
        v47 = v45 + 1;
        v48 = (v5 + 32);
        do
        {
          *v47 = *(v48 - 1);
          v49 = *v48;
          v48 += 2;
          v47[1] = v49;
          v47 += 2;
        }

        while (v47 < v46);
      }

      v5 = v32;
      v45 = v46;
    }

    if (v5 < v28)
    {
      v50 = v28 - v5;
      if ((v28 - v5) < 8)
      {
        v58 = v45;
        goto LABEL_78;
      }

      if ((v45 - v5) < 0x20)
      {
        v58 = v45;
        goto LABEL_78;
      }

      if (v50 >= 0x20)
      {
        v51 = v50 & 0xFFFFFFFFFFFFFFE0;
        v59 = (v5 + 16);
        v60 = v45 + 1;
        v61 = v50 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v62 = *v59;
          *(v60 - 1) = *(v59 - 1);
          *v60 = v62;
          v59 += 2;
          v60 += 2;
          v61 -= 32;
        }

        while (v61);
        if (v50 == v51)
        {
          goto LABEL_79;
        }

        if ((v50 & 0x18) == 0)
        {
          v5 += v51;
          v58 = v45 + v51;
          do
          {
LABEL_78:
            v68 = *v5++;
            *v58++ = v68;
          }

          while (v5 != v28);
          goto LABEL_79;
        }
      }

      else
      {
        v51 = 0;
      }

      v63 = v50 & 0xFFFFFFFFFFFFFFF8;
      v58 = v45 + (v50 & 0xFFFFFFFFFFFFFFF8);
      v64 = v51 - (v50 & 0xFFFFFFFFFFFFFFF8);
      v65 = &v5[v51];
      v66 = (v45 + v51);
      do
      {
        v67 = *v65;
        v65 += 8;
        *v66++ = v67;
        v64 += 8;
      }

      while (v64);
      if (v50 != v63)
      {
        v5 += v63;
        goto LABEL_78;
      }
    }

LABEL_79:
    *(a2 + 24) += v44;
    v57 = *(a2 + 8);
    if (v44 >= 0x10000)
    {
      v69 = (v57 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v69;
    }

    goto LABEL_81;
  }

LABEL_151:
  *a3 = v14;
  a3[1] = v15;
  return v6 - v5;
}

unint64_t ZSTD_HcFindBestMatch_extDict_4(uint64_t a1, char *a2, char *a3, void *a4)
{
  v6 = *(a1 + 128);
  v7 = *(a1 + 260);
  v8 = 1 << v7;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 256);
  v14 = *(a1 + 24);
  v13 = *(a1 + 28);
  v15 = *(a1 + 44);
  if (a2 - v10 - v13 > v12 && *(a1 + 40) == 0)
  {
    v17 = a2 - v10 - v12;
  }

  else
  {
    v17 = v13;
  }

  if (v11 >= v8)
  {
    v18 = v11 - v8;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a1 + 268);
  v20 = *(a1 + 112);
  v21 = ~(-1 << v7);
  v22 = 32 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v15 < v11)
    {
      v23 = (-1640531535 * *(v10 + v15)) >> v22;
      *(v6 + 4 * (v15 & v21)) = *(v20 + 4 * v23);
      *(v20 + 4 * v23) = v15;
    }
  }

  else if (v15 < v11)
  {
    do
    {
      v24 = (-1640531535 * *(v10 + v15)) >> v22;
      *(v6 + 4 * (v15 & v21)) = *(v20 + 4 * v24);
      *(v20 + 4 * v24) = v15++;
    }

    while (v11 != v15);
  }

  *(a1 + 44) = v11;
  v25 = *a2;
  v26 = *(v20 + 4 * ((-1640531535 * v25) >> v22));
  if (v26 < v17)
  {
    return 3;
  }

  v28 = 1 << v19;
  v29 = v8 - 1;
  v30 = (a3 - 7);
  v47 = a3 - 1;
  v48 = a3 - 3;
  v50 = v11 + 3;
  v46 = v10 + 8;
  v31 = 3;
  v53 = v14;
  v54 = v10;
  v52 = v18;
  v51 = v6;
  v49 = a3 - 7;
  while (1)
  {
    v32 = v26;
    if (v26 < v14)
    {
      if (*(v9 + v26) != v25)
      {
        goto LABEL_44;
      }

      v33 = (v9 + v14);
      v34 = (v10 + v14);
      v35 = v9;
      v36 = v17;
      v37 = v25;
      v38 = v31;
      v39 = ZSTD_count_2segments(a2 + 4, (v9 + v26 + 4), a3, v33, v34);
      v31 = v38;
      v30 = v49;
      v25 = v37;
      v17 = v36;
      v6 = v51;
      v18 = v52;
      v9 = v35;
      v14 = v53;
      v10 = v54;
      result = v39 + 4;
      if (result <= v31)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v40 = (v10 + v26);
    if (*(v40 + v31 - 3) != *&a2[v31 - 3])
    {
      goto LABEL_44;
    }

    if (v30 <= a2)
    {
      v43 = a2;
      goto LABEL_31;
    }

    v41 = *v40;
    if (v41 == *a2)
    {
      v42 = a2 + 8;
      v40 = (v46 + v26);
      while (1)
      {
        v43 = v42;
        if (v42 >= v30)
        {
          break;
        }

        v45 = *v40;
        v40 += 4;
        v44 = v45;
        v42 += 8;
        if (v45 != *v43)
        {
          result = &v43[__clz(__rbit64(*v43 ^ v44)) >> 3] - a2;
          if (result > v31)
          {
            goto LABEL_43;
          }

          goto LABEL_44;
        }
      }

LABEL_31:
      if (v43 < v48 && *v40 == *v43)
      {
        v40 += 2;
        v43 += 4;
      }

      if (v43 < v47 && *v40 == *v43)
      {
        ++v40;
        v43 += 2;
      }

      if (v43 < a3 && *v40 == *v43)
      {
        ++v43;
      }

      result = v43 - a2;
      if (v43 - a2 <= v31)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    result = __clz(__rbit64(*a2 ^ v41)) >> 3;
    if (result <= v31)
    {
      goto LABEL_44;
    }

LABEL_43:
    *a4 = v50 - v32;
    v31 = result;
    if (&a2[result] == a3)
    {
      return result;
    }

LABEL_44:
    if (v32 <= v18)
    {
      return v31;
    }

    if (!--v28)
    {
      return v31;
    }

    v26 = *(v6 + 4 * (v32 & v29));
    result = v31;
    if (v26 < v17)
    {
      return result;
    }
  }
}

unint64_t ZSTD_HcFindBestMatch_extDict_5(uint64_t a1, char *a2, char *a3, void *a4)
{
  v5 = a2;
  v6 = *(a1 + 128);
  v7 = *(a1 + 260);
  v8 = 1 << v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = a2 - v9;
  v12 = 1 << *(a1 + 256);
  v13 = *(a1 + 24);
  v14 = *(a1 + 44);
  if (a2 - v9 - *(a1 + 28) > v12 && *(a1 + 40) == 0)
  {
    v16 = a2 - v9 - v12;
  }

  else
  {
    v16 = *(a1 + 28);
  }

  if (v11 >= v8)
  {
    v17 = v11 - v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 268);
  v19 = *(a1 + 112);
  v20 = ~(-1 << v7);
  v21 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v14 < v11)
    {
      v22 = (0xCF1BBCDCBB000000 * *(v9 + v14)) >> v21;
      *(v6 + 4 * (v14 & v20)) = *(v19 + 4 * v22);
      *(v19 + 4 * v22) = v14;
    }
  }

  else if (v14 < v11)
  {
    do
    {
      v23 = (0xCF1BBCDCBB000000 * *(v9 + v14)) >> v21;
      *(v6 + 4 * (v14 & v20)) = *(v19 + 4 * v23);
      *(v19 + 4 * v23) = v14++;
    }

    while (v11 != v14);
  }

  v25 = v5 - 3;
  v24 = *v5;
  *(a1 + 44) = v11;
  v26 = *(v19 + 4 * ((0xCF1BBCDCBB000000 * v24) >> v21));
  if (v26 < v16)
  {
    return 3;
  }

  v28 = 1 << v18;
  v29 = v8 - 1;
  v30 = a3 - 7;
  v48 = a3 - 1;
  v49 = a3 - 3;
  v51 = v11 + 3;
  v52 = v17;
  v46 = v5 + 8;
  v47 = v9 + 8;
  v31 = 3;
  v53 = v9;
  v54 = v5;
  v50 = v6;
  while (1)
  {
    v32 = v26;
    if (v26 < v13)
    {
      if (*(v10 + v26) != *v5)
      {
        goto LABEL_44;
      }

      v33 = v5 + 4;
      v34 = (v9 + v13);
      v35 = v13;
      v36 = v29;
      v37 = v30;
      v38 = v31;
      v39 = ZSTD_count_2segments(v33, (v10 + v26 + 4), a3, (v10 + v13), v34);
      v31 = v38;
      v30 = v37;
      v29 = v36;
      v13 = v35;
      v6 = v50;
      v17 = v52;
      v9 = v53;
      v5 = v54;
      result = v39 + 4;
      if (result <= v31)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v40 = (v9 + v26);
    if (*(v40 + v31 - 3) != *&v25[v31])
    {
      goto LABEL_44;
    }

    if (v30 <= v5)
    {
      v43 = v5;
      goto LABEL_31;
    }

    v41 = *v40;
    if (v41 == *v5)
    {
      v42 = v46;
      v40 = (v47 + v26);
      while (1)
      {
        v43 = v42;
        if (v42 >= v30)
        {
          break;
        }

        v45 = *v40;
        v40 += 4;
        v44 = v45;
        v42 += 8;
        if (v45 != *v43)
        {
          result = &v43[__clz(__rbit64(*v43 ^ v44)) >> 3] - v5;
          if (result > v31)
          {
            goto LABEL_43;
          }

          goto LABEL_44;
        }
      }

LABEL_31:
      if (v43 < v49 && *v40 == *v43)
      {
        v40 += 2;
        v43 += 4;
      }

      if (v43 < v48 && *v40 == *v43)
      {
        ++v40;
        v43 += 2;
      }

      if (v43 < a3 && *v40 == *v43)
      {
        ++v43;
      }

      result = v43 - v5;
      if (v43 - v5 <= v31)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    result = __clz(__rbit64(*v5 ^ v41)) >> 3;
    if (result <= v31)
    {
      goto LABEL_44;
    }

LABEL_43:
    *a4 = v51 - v32;
    v31 = result;
    if (&v5[result] == a3)
    {
      return result;
    }

LABEL_44:
    if (v32 <= v17)
    {
      return v31;
    }

    if (!--v28)
    {
      return v31;
    }

    v26 = *(v6 + 4 * (v32 & v29));
    result = v31;
    if (v26 < v16)
    {
      return result;
    }
  }
}

unint64_t ZSTD_HcFindBestMatch_extDict_6(uint64_t a1, char *a2, char *a3, void *a4)
{
  v5 = a2;
  v6 = *(a1 + 128);
  v7 = *(a1 + 260);
  v8 = 1 << v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = a2 - v9;
  v12 = 1 << *(a1 + 256);
  v13 = *(a1 + 24);
  v14 = *(a1 + 44);
  if (a2 - v9 - *(a1 + 28) > v12 && *(a1 + 40) == 0)
  {
    v16 = a2 - v9 - v12;
  }

  else
  {
    v16 = *(a1 + 28);
  }

  if (v11 >= v8)
  {
    v17 = v11 - v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 268);
  v19 = *(a1 + 112);
  v20 = ~(-1 << v7);
  v21 = 64 - *(a1 + 264);
  if (*(a1 + 300))
  {
    if (v14 < v11)
    {
      v22 = (0xCF1BBCDCBF9B0000 * *(v9 + v14)) >> v21;
      *(v6 + 4 * (v14 & v20)) = *(v19 + 4 * v22);
      *(v19 + 4 * v22) = v14;
    }
  }

  else if (v14 < v11)
  {
    do
    {
      v23 = (0xCF1BBCDCBF9B0000 * *(v9 + v14)) >> v21;
      *(v6 + 4 * (v14 & v20)) = *(v19 + 4 * v23);
      *(v19 + 4 * v23) = v14++;
    }

    while (v11 != v14);
  }

  v25 = v5 - 3;
  v24 = *v5;
  *(a1 + 44) = v11;
  v26 = *(v19 + 4 * ((0xCF1BBCDCBF9B0000 * v24) >> v21));
  if (v26 < v16)
  {
    return 3;
  }

  v28 = 1 << v18;
  v29 = v8 - 1;
  v30 = a3 - 7;
  v48 = a3 - 1;
  v49 = a3 - 3;
  v51 = v11 + 3;
  v52 = v17;
  v46 = v5 + 8;
  v47 = v9 + 8;
  v31 = 3;
  v53 = v9;
  v54 = v5;
  v50 = v6;
  while (1)
  {
    v32 = v26;
    if (v26 < v13)
    {
      if (*(v10 + v26) != *v5)
      {
        goto LABEL_44;
      }

      v33 = v5 + 4;
      v34 = (v9 + v13);
      v35 = v13;
      v36 = v29;
      v37 = v30;
      v38 = v31;
      v39 = ZSTD_count_2segments(v33, (v10 + v26 + 4), a3, (v10 + v13), v34);
      v31 = v38;
      v30 = v37;
      v29 = v36;
      v13 = v35;
      v6 = v50;
      v17 = v52;
      v9 = v53;
      v5 = v54;
      result = v39 + 4;
      if (result <= v31)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v40 = (v9 + v26);
    if (*(v40 + v31 - 3) != *&v25[v31])
    {
      goto LABEL_44;
    }

    if (v30 <= v5)
    {
      v43 = v5;
      goto LABEL_31;
    }

    v41 = *v40;
    if (v41 == *v5)
    {
      v42 = v46;
      v40 = (v47 + v26);
      while (1)
      {
        v43 = v42;
        if (v42 >= v30)
        {
          break;
        }

        v45 = *v40;
        v40 += 4;
        v44 = v45;
        v42 += 8;
        if (v45 != *v43)
        {
          result = &v43[__clz(__rbit64(*v43 ^ v44)) >> 3] - v5;
          if (result > v31)
          {
            goto LABEL_43;
          }

          goto LABEL_44;
        }
      }

LABEL_31:
      if (v43 < v49 && *v40 == *v43)
      {
        v40 += 2;
        v43 += 4;
      }

      if (v43 < v48 && *v40 == *v43)
      {
        ++v40;
        v43 += 2;
      }

      if (v43 < a3 && *v40 == *v43)
      {
        ++v43;
      }

      result = v43 - v5;
      if (v43 - v5 <= v31)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    result = __clz(__rbit64(*v5 ^ v41)) >> 3;
    if (result <= v31)
    {
      goto LABEL_44;
    }

LABEL_43:
    *a4 = v51 - v32;
    v31 = result;
    if (&v5[result] == a3)
    {
      return result;
    }

LABEL_44:
    if (v32 <= v17)
    {
      return v31;
    }

    if (!--v28)
    {
      return v31;
    }

    v26 = *(v6 + 4 * (v32 & v29));
    result = v31;
    if (v26 < v16)
    {
      return result;
    }
  }
}

int64_t ZSTD_compressBlock_greedy_extDict_row(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v13 = *(a1 + 24);
  v12 = *(a1 + 28);
  v14 = *(a1 + 256);
  v15 = *(a1 + 272);
  if (v15 >= 6)
  {
    v15 = 6;
  }

  if (v15 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a1 + 268);
  v182 = v17;
  if (v17 >= 6)
  {
    v17 = 6;
  }

  if (v17 <= 4)
  {
    v17 = 4;
  }

  v190 = v17;
  v18 = *a3;
  v19 = a3[1];
  *(a1 + 300) = 0;
  v189 = (v11 + v13);
  if ((v11 + v13) == a4)
  {
    v20 = a4 + 1;
  }

  else
  {
    v20 = a4;
  }

  v21 = *(a1 + 44);
  v22 = v9 - (v11 + v21);
  if ((v22 + 1) < 8)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 8;
  }

  if (v9 >= v11 + v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + v21);
  if (v21 < v25)
  {
    v26 = *(a1 + 112);
    v27 = *(a1 + 56);
    v28 = *(a1 + 52);
    v29 = *(a1 + 96);
    v30 = 56 - v28;
    v31 = 24 - v28;
    v32 = a1 + 64;
    if (v182 > 4)
    {
      if (v182 == 5)
      {
        do
        {
          if (v16 == 6)
          {
            v43 = ((0xCF1BBCDCBF9B0000 * *(v11 + v21)) ^ v29) >> v30;
            v44 = v190;
          }

          else
          {
            v44 = v190;
            if (v16 == 5)
            {
              v43 = ((0xCF1BBCDCBB000000 * *(v11 + v21)) ^ v29) >> v30;
            }

            else
            {
              LODWORD(v43) = ((-1640531535 * *(v11 + v21)) ^ v29) >> v31;
            }
          }

          v45 = v43 >> 8 << v44;
          _X5 = v26 + 4 * v45;
          __asm
          {
            PRFM            #0, [X5]
            PRFM            #0, [X5,#0x40]
          }

          _X4 = v27 + v45;
          __asm { PRFM            #0, [X4] }

          *(v32 + 4 * (v21++ & 7)) = v43;
        }

        while (v25 != v21);
      }

      else if (v16 == 6)
      {
        do
        {
          v59 = ((0xCF1BBCDCBF9B0000 * *(v11 + v21)) ^ v29) >> v30;
          v60 = v59 >> 8 << v190;
          _X2 = v26 + 4 * v60;
          __asm
          {
            PRFM            #0, [X2]
            PRFM            #0, [X2,#0x40]
          }

          _X1 = v27 + v60;
          __asm
          {
            PRFM            #0, [X1]
            PRFM            #0, [X1,#0x20]
          }

          *(v32 + 4 * (v21++ & 7)) = v59;
        }

        while (v25 != v21);
      }

      else if (v16 == 5)
      {
        do
        {
          v51 = ((0xCF1BBCDCBB000000 * *(v11 + v21)) ^ v29) >> v30;
          v52 = v51 >> 8 << v190;
          _X2 = v26 + 4 * v52;
          __asm
          {
            PRFM            #0, [X2]
            PRFM            #0, [X2,#0x40]
          }

          _X1 = v27 + v52;
          __asm
          {
            PRFM            #0, [X1]
            PRFM            #0, [X1,#0x20]
          }

          *(v32 + 4 * (v21++ & 7)) = v51;
        }

        while (v25 != v21);
      }

      else
      {
        do
        {
          v67 = ((-1640531535 * *(v11 + v21)) ^ v29) >> v31;
          v68 = v67 >> 8 << v190;
          _X2 = v26 + 4 * v68;
          __asm
          {
            PRFM            #0, [X2]
            PRFM            #0, [X2,#0x40]
          }

          _X1 = v27 + v68;
          __asm
          {
            PRFM            #0, [X1]
            PRFM            #0, [X1,#0x20]
          }

          *(v32 + 4 * (v21++ & 7)) = v67;
        }

        while (v25 != v21);
      }
    }

    else
    {
      do
      {
        if (v16 == 6)
        {
          v33 = ((0xCF1BBCDCBF9B0000 * *(v11 + v21)) ^ v29) >> v30;
          v34 = v190;
        }

        else
        {
          v34 = v190;
          if (v16 == 5)
          {
            v33 = ((0xCF1BBCDCBB000000 * *(v11 + v21)) ^ v29) >> v30;
          }

          else
          {
            LODWORD(v33) = ((-1640531535 * *(v11 + v21)) ^ v29) >> v31;
          }
        }

        v35 = v33 >> 8 << v34;
        _X5 = v26 + 4 * v35;
        __asm { PRFM            #0, [X5] }

        _X4 = v27 + v35;
        __asm { PRFM            #0, [X4] }

        *(v32 + 4 * (v21++ & 7)) = v33;
      }

      while (v25 != v21);
    }
  }

  if (v20 < v9)
  {
    v75 = (v10 + v13);
    v181 = (v10 + v12);
    v76 = 1 << v14;
    v192 = v8 - 7;
    v191 = v13 + v11 + 8;
    v185 = v10;
    v186 = v9;
    v77 = v13 - 1;
    v183 = (v10 + v13);
    v184 = v13;
    v78 = v190;
    v187 = v13 - 1;
    v188 = 1 << v14;
    do
    {
      v80 = v20 - v11 + 1;
      if (v80 - *(a1 + 28) > v76 && *(a1 + 40) == 0)
      {
        v82 = v80 - v76;
      }

      else
      {
        v82 = *(a1 + 28);
      }

      v83 = (v80 - v18);
      if (v83 >= v13)
      {
        v84 = v11;
      }

      else
      {
        v84 = v10;
      }

      if ((v77 - v83) >= 3 && v18 <= v80 - v82)
      {
        v85 = v20 + 1;
        if (*(v20 + 1) == *(v84 + v83))
        {
          if (v83 >= v13)
          {
            v86 = v8;
          }

          else
          {
            v86 = v75;
          }

          v87 = ZSTD_count_2segments(v20 + 5, (v84 + v83 + 4), v8, v86, v189);
          v75 = v183;
          LODWORD(v13) = v184;
          v10 = v185;
          v88 = v186;
          BestMatch_extDict_6_6 = v87 + 4;
          v90 = 1;
          v91 = (v8 - 32);
          goto LABEL_98;
        }
      }

      v193 = 999999999;
      if (v16 == 6)
      {
        if (v78 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_6(a1, v20, v8, &v193);
          goto LABEL_76;
        }

        if (v78 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_5(a1, v20, v8, &v193);
LABEL_76:
          v76 = v188;
          goto LABEL_81;
        }

        v76 = v188;
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_4(a1, v20, v8, &v193);
      }

      else if (v16 == 5)
      {
        if (v78 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_6(a1, v20, v8, &v193);
          goto LABEL_76;
        }

        v76 = v188;
        if (v78 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_5(a1, v20, v8, &v193);
        }

        else
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_4(a1, v20, v8, &v193);
        }
      }

      else
      {
        v76 = v188;
        if (v78 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_6(a1, v20, v8, &v193);
        }

        else if (v78 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_5(a1, v20, v8, &v193);
        }

        else
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_4(a1, v20, v8, &v193);
        }
      }

LABEL_81:
      v10 = v185;
      v88 = v186;
      v75 = v183;
      LODWORD(v13) = v184;
      v77 = v187;
      if (BestMatch_extDict_6_6 <= 3)
      {
        v79 = v20 - v5;
        v20 += ((v20 - v5) >> 8) + 1;
        *(a1 + 300) = v79 > 0x8FF;
        v78 = v190;
        continue;
      }

      v90 = v193;
      if (v193 < 4)
      {
        v85 = v20;
        v91 = (v8 - 32);
      }

      else
      {
        v92 = v20 - v11 - v193 + 3;
        if (v184 <= v92)
        {
          v93 = v11;
        }

        else
        {
          v93 = v185;
        }

        v94 = v189;
        if (v184 > v92)
        {
          v94 = v181;
        }

        v91 = (v8 - 32);
        if (v20 > v5)
        {
          v95 = v92;
          if (v93 + v92 > v94)
          {
            v96 = v20 - 1;
            v97 = (v93 + v95 - 1);
            while (*v96 == *v97)
            {
              ++BestMatch_extDict_6_6;
              v98 = v96 - 1;
              if (v96 > v5)
              {
                --v96;
                if (v97-- > v94)
                {
                  continue;
                }
              }

              v20 = v98 + 1;
              goto LABEL_97;
            }

            v20 = v96 + 1;
          }
        }

LABEL_97:
        v19 = v18;
        v18 = (v193 - 3);
        v85 = v20;
      }

LABEL_98:
      v100 = v85 - v5;
      v101 = *(a2 + 24);
      if (v85 > v91)
      {
        v78 = v190;
        if (v5 <= v91)
        {
          v102 = (v101 + v91 - v5);
          *v101 = *v5;
          if (v91 - v5 >= 17)
          {
            v103 = v101 + 1;
            v104 = (v5 + 32);
            do
            {
              *v103 = *(v104 - 1);
              v105 = *v104;
              v104 += 2;
              v103[1] = v105;
              v103 += 2;
            }

            while (v103 < v102);
          }

          v5 = v91;
          v101 = v102;
        }

        if (v5 >= v85)
        {
          goto LABEL_127;
        }

        v106 = v85 - v5;
        if ((v85 - v5) < 8)
        {
          v115 = v101;
        }

        else if ((v101 - v5) < 0x20)
        {
          v115 = v101;
        }

        else
        {
          if (v106 < 0x20)
          {
            v107 = 0;
LABEL_121:
            v120 = v106 & 0xFFFFFFFFFFFFFFF8;
            v115 = v101 + (v106 & 0xFFFFFFFFFFFFFFF8);
            v121 = v107 - (v106 & 0xFFFFFFFFFFFFFFF8);
            v122 = &v5[v107];
            v123 = (v101 + v107);
            do
            {
              v124 = *v122;
              v122 += 8;
              *v123++ = v124;
              v121 += 8;
            }

            while (v121);
            if (v106 != v120)
            {
              v5 += v120;
              goto LABEL_126;
            }

LABEL_127:
            *(a2 + 24) += v100;
            v113 = *(a2 + 8);
            v114 = v182;
            if (v100 >= 0x10000)
            {
              v126 = (v113 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v126;
            }

            goto LABEL_129;
          }

          v107 = v106 & 0xFFFFFFFFFFFFFFE0;
          v116 = (v5 + 16);
          v117 = v101 + 1;
          v118 = v106 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v119 = *v116;
            *(v117 - 1) = *(v116 - 1);
            *v117 = v119;
            v116 += 2;
            v117 += 2;
            v118 -= 32;
          }

          while (v118);
          if (v106 == v107)
          {
            goto LABEL_127;
          }

          if ((v106 & 0x18) != 0)
          {
            goto LABEL_121;
          }

          v5 += v107;
          v115 = v101 + v107;
        }

        do
        {
LABEL_126:
          v125 = *v5++;
          *v115++ = v125;
        }

        while (v5 != v85);
        goto LABEL_127;
      }

      *v101 = *v5;
      v108 = *(a2 + 24);
      v78 = v190;
      if (v100 > 0x10)
      {
        *(v108 + 16) = *(v5 + 1);
        if (v100 >= 33)
        {
          v109 = v108 + v100;
          v110 = (v108 + 32);
          v111 = (v5 + 48);
          do
          {
            *v110 = *(v111 - 1);
            v112 = *v111;
            v111 += 2;
            v110[1] = v112;
            v110 += 2;
          }

          while (v110 < v109);
        }

        goto LABEL_127;
      }

      *(a2 + 24) = v108 + v100;
      v113 = *(a2 + 8);
      v114 = v182;
LABEL_129:
      *(v113 + 4) = v100;
      *v113 = v90;
      if (BestMatch_extDict_6_6 - 3 >= 0x10000)
      {
        v127 = (v113 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v127;
      }

      *(v113 + 6) = BestMatch_extDict_6_6 - 3;
      v128 = v113 + 8;
      *(a2 + 8) = v113 + 8;
      if (*(a1 + 300))
      {
        v129 = *(a1 + 44);
        v130 = v88 - (v11 + v129);
        if ((v130 + 1) < 8)
        {
          v131 = v130 + 1;
        }

        else
        {
          v131 = 8;
        }

        if (v88 >= v11 + v129)
        {
          v132 = v131;
        }

        else
        {
          v132 = 0;
        }

        v133 = (v132 + v129);
        if (v129 < v133)
        {
          v134 = *(a1 + 112);
          v135 = *(a1 + 56);
          v136 = *(a1 + 52);
          v137 = *(a1 + 96);
          v138 = 56 - v136;
          v139 = 24 - v136;
          do
          {
            if (v16 == 5)
            {
              v142 = 0xCF1BBCDCBB000000 * *(v11 + v129);
            }

            else
            {
              if (v16 != 6)
              {
                LODWORD(v143) = ((-1640531535 * *(v11 + v129)) ^ v137) >> v139;
                goto LABEL_148;
              }

              v142 = 0xCF1BBCDCBF9B0000 * *(v11 + v129);
            }

            v143 = (v142 ^ v137) >> v138;
LABEL_148:
            v144 = v143 >> 8 << v78;
            _X1 = v134 + 4 * v144;
            __asm { PRFM            #0, [X1] }

            if (v114 <= 4)
            {
              _X17 = v135 + v144;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v135 + v144;
              __asm { PRFM            #0, [X17] }

              if (v114 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(a1 + 64 + 4 * (v129++ & 7)) = v143;
          }

          while (v133 != v129);
        }

        *(a1 + 300) = 0;
      }

      v5 = &v85[BestMatch_extDict_6_6];
      if (&v85[BestMatch_extDict_6_6] > v88)
      {
        v20 = &v85[BestMatch_extDict_6_6];
        v77 = v187;
        v76 = v188;
        continue;
      }

      v151 = v18;
      v152 = v19;
      v77 = v187;
      v76 = v188;
      while (1)
      {
        v18 = v152;
        v152 = v151;
        v153 = v5 - v11;
        v154 = *(a1 + 28);
        if (v5 - v11 - v154 > v188 && *(a1 + 40) == 0)
        {
          v154 = v5 - v11 - v188;
        }

        v156 = (v153 - v18);
        v157 = v156 >= v184 ? v11 : v10;
        if ((v187 - v156) < 3)
        {
          break;
        }

        if (v18 > v153 - v154)
        {
          break;
        }

        v158 = v157 + v156;
        if (*v5 != *(v157 + v156))
        {
          break;
        }

        if (v156 >= v184)
        {
          v159 = v8;
        }

        else
        {
          v159 = v75;
        }

        v160 = (v5 + 4);
        v161 = (v158 + 4);
        v162 = &v159[v5 - v158];
        if (v162 >= v8)
        {
          v162 = v8;
        }

        if (v162 - 7 <= v160)
        {
          v163 = v161;
          v165 = (v5 + 4);
        }

        else
        {
          if (*v161 != *v160)
          {
            v168 = __clz(__rbit64(*v160 ^ *v161)) >> 3;
            goto LABEL_190;
          }

          v163 = (v157 + v156 + 12);
          v164 = (v5 + 12);
          while (1)
          {
            v165 = v164;
            if (v164 >= (v162 - 7))
            {
              break;
            }

            v167 = *v163;
            v163 += 4;
            v166 = v167;
            v164 += 8;
            if (v167 != *v165)
            {
              v168 = &v165[__clz(__rbit64(*v165 ^ v166)) >> 3] - v160;
              goto LABEL_190;
            }
          }
        }

        if (v165 < v162 - 3 && *v163 == *v165)
        {
          v163 += 2;
          v165 += 4;
        }

        if (v165 < v162 - 1 && *v163 == *v165)
        {
          ++v163;
          v165 += 2;
        }

        if (v165 < v162 && *v163 == *v165)
        {
          ++v165;
        }

        v168 = v165 - v160;
LABEL_190:
        if (v161 + v168 == v159)
        {
          v169 = &v160[v168];
          if (v192 > v169)
          {
            if (*v189 == *v169)
            {
              v170 = 0;
              v171 = &v5[v168];
              while (1)
              {
                v172 = &v171[v170 + 12];
                if (v172 >= v192)
                {
                  break;
                }

                v173 = *(v191 + v170);
                v174 = *v172;
                v170 += 8;
                if (v173 != v174)
                {
                  v175 = &v171[v170 + 4 + (__clz(__rbit64(v174 ^ v173)) >> 3)];
                  goto LABEL_209;
                }
              }

              v176 = (v191 + v170);
              v175 = &v5[v168 + 12 + v170];
LABEL_200:
              if (v175 < v8 - 3 && *v176 == *v175)
              {
                v176 = (v176 + 4);
                v175 += 4;
              }

              if (v175 < v8 - 1 && *v176 == *v175)
              {
                v176 = (v176 + 2);
                v175 += 2;
              }

              if (v175 < v8 && *v176 == *v175)
              {
                ++v175;
              }

LABEL_209:
              v177 = v175 - v169;
            }

            else
            {
              v177 = __clz(__rbit64(*v169 ^ *v189)) >> 3;
            }

            v168 += v177;
            goto LABEL_211;
          }

          v176 = v189;
          v175 = v169;
          goto LABEL_200;
        }

LABEL_211:
        if (v5 <= v8 - 32)
        {
          **(a2 + 24) = *v5;
          v128 = *(a2 + 8);
        }

        *(v128 + 4) = 0;
        *v128 = 1;
        if (v168 + 1 >= 0x10000)
        {
          v178 = (v128 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v178;
        }

        *(v128 + 6) = v168 + 1;
        v128 += 8;
        v5 += v168 + 4;
        *(a2 + 8) = v128;
        v151 = v18;
        v19 = v152;
        v20 = v5;
        if (v5 > v88)
        {
          goto LABEL_46;
        }
      }

      v19 = v18;
      v18 = v151;
      v20 = v5;
LABEL_46:
      ;
    }

    while (v20 < v88);
  }

  *a3 = v18;
  a3[1] = v19;
  return v8 - v5;
}

unint64_t ZSTD_RowFindBestMatch_extDict_4_4(uint64_t a1, char *a2, char *a3, void *a4)
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 4)
  {
    LOBYTE(v15) = 4;
  }

  v16 = *(a1 + 96);
  v107 = *(a1 + 8);
  if (*(a1 + 300))
  {
    v17 = ((-1640531535 * *a2) ^ v16) >> (24 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v41 = v19 + 96;
      do
      {
        v42 = ((-1640531535 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (24 - v7);
        v43 = (v42 >> 4) & 0xFFFFFF0;
        _X19 = v5 + 4 * v43;
        __asm { PRFM            #0, [X19] }

        _X7 = v6 + v43;
        __asm { PRFM            #0, [X7] }

        v48 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v42;
        v49 = (v48 >> 4) & 0xFFFFFF0;
        v50 = v5 + 4 * v49;
        v51 = (v6 + v49);
        if (((*v51 - 1) & 0xF) != 0)
        {
          v52 = 0;
        }

        else
        {
          v52 = 15;
        }

        v53 = v52 + ((*v51 - 1) & 0xF);
        *v51 = v53;
        v51[v53] = v48;
        *(v50 + 4 * v53) = v19++;
      }

      while (v41 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v107;
    }

    v54 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v55 = a2 + 1 - (v8 + v54);
    if ((v55 + 1) < 8)
    {
      v56 = v55 + 1;
    }

    else
    {
      v56 = 8;
    }

    if ((a2 + 1) >= v8 + v54)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    if (v54 < v57 + v54)
    {
      v58 = *(a1 + 96);
      v59 = 24 - *(a1 + 52);
      do
      {
        v60 = ((-1640531535 * *(v8 + v54)) ^ v58) >> v59;
        v61 = (v60 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v61;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v61;
        __asm { PRFM            #0, [X20] }

        *(v18 + 4 * (v54++ & 7)) = v60;
        --v57;
      }

      while (v57);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 24 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((-1640531535 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v27;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v27;
        __asm { PRFM            #0, [X20] }

        v35 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v36 = (v35 >> 4) & 0xFFFFFF0;
        v37 = v21 + 4 * v36;
        v38 = (v20 + v36);
        if (((*v38 - 1) & 0xF) != 0)
        {
          v39 = 0;
        }

        else
        {
          v39 = 15;
        }

        v40 = v39 + ((*v38 - 1) & 0xF);
        *v38 = v40;
        v38[v40] = v35;
        *(v37 + 4 * v40) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v66 = ((-1640531535 * *(v8 + v25 + 8)) ^ v16) >> (24 - v7);
  v67 = (v66 >> 4) & 0xFFFFFF0;
  _X17 = v5 + 4 * v67;
  __asm { PRFM            #0, [X17] }

  _X14 = v6 + v67;
  __asm { PRFM            #0, [X14] }

  v17 = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v66;
LABEL_38:
  *(a1 + 104) += v17;
  v72 = (v17 >> 4) & 0xFFFFFF0;
  v73 = v5 + 4 * v72;
  v74 = (v6 + v72);
  v75 = 4 * v74->i8[0];
  v76 = *v74;
  v77 = 0;
  v78 = __ROR8__(vshrn_n_s16(vceqq_s8(*v74, vdupq_n_s8(v17)), 4uLL), v75) & 0x8888888888888888;
  if (v78)
  {
    v79 = 1 << v15;
    do
    {
      v80 = ((__clz(__rbit64(v78)) + (v75 & 0xFC)) >> 2) & 0xF;
      if (v80)
      {
        v81 = *(v73 + 4 * v80);
        if (v81 < v14)
        {
          break;
        }

        if (v81 >= v12)
        {
          v82 = v8;
        }

        else
        {
          v82 = v9;
        }

        _X3 = v82 + v81;
        __asm { PRFM            #0, [X3] }

        v108[v77++] = v81;
        --v79;
      }

      v78 &= v78 - 1;
    }

    while (v78 && v79);
  }

  if (((v76 - 1) & 0xF) != 0)
  {
    v85 = 0;
  }

  else
  {
    v85 = 15;
  }

  v86 = v85 + ((v76 - 1) & 0xF);
  v74->i8[0] = v86;
  v74->i8[v86] = v17;
  v87 = *(a1 + 44);
  *(a1 + 44) = v87 + 1;
  *(v73 + 4 * v86) = v87;
  if (v77)
  {
    v88 = 0;
    v89 = (a3 - 7);
    v103 = a3 - 1;
    v104 = a3 - 3;
    v105 = v10 + 3;
    v102 = v8 + 8;
    v90 = 3;
    while (1)
    {
      v92 = v108[v88];
      if (v92 >= v12)
      {
        v96 = (v8 + v92);
        if (*(v8 + v92 + v90 - 3) != *&a2[v90 - 3])
        {
          goto LABEL_53;
        }

        if (v89 <= a2)
        {
          v99 = a2;
        }

        else
        {
          v97 = *v96;
          if (v97 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v97)) >> 3;
            if (result <= v90)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v98 = a2 + 8;
          v96 = (v102 + v92);
          while (1)
          {
            v99 = v98;
            if (v98 >= v89)
            {
              break;
            }

            v101 = *v96;
            v96 += 4;
            v100 = v101;
            v98 += 8;
            if (v101 != *v99)
            {
              result = &v99[__clz(__rbit64(*v99 ^ v100)) >> 3] - a2;
              if (result <= v90)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v99 < v104 && *v96 == *v99)
        {
          v96 += 2;
          v99 += 4;
        }

        if (v99 < v103 && *v96 == *v99)
        {
          ++v96;
          v99 += 2;
        }

        if (v99 < a3 && *v96 == *v99)
        {
          ++v99;
        }

        result = v99 - a2;
        if (v99 - a2 <= v90)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v92) != *a2)
        {
          goto LABEL_53;
        }

        v93 = (v8 + v12);
        v94 = a3;
        v95 = ZSTD_count_2segments(a2 + 4, (v9 + v92 + 4), a3, (v9 + v12), v93);
        a3 = v94;
        v8 = v107;
        result = v95 + 4;
        if (result <= v90)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v105 - v92;
      v90 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_53:
      ++v88;
      result = v90;
      if (v88 == v77)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_4_5(uint64_t a1, char *a2, char *a3, void *a4)
{
  v114 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 5)
  {
    LOBYTE(v15) = 5;
  }

  v16 = *(a1 + 96);
  v112 = *(a1 + 8);
  if (*(a1 + 300))
  {
    v17 = ((-1640531535 * *a2) ^ v16) >> (24 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v42 = v19 + 96;
      do
      {
        v43 = ((-1640531535 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (24 - v7);
        v44 = (v43 >> 3) & 0x1FFFFFE0;
        _X19 = v5 + 4 * v44;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v6 + v44;
        __asm { PRFM            #0, [X7] }

        v50 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v43;
        v51 = (v50 >> 3) & 0x1FFFFFE0;
        v52 = v5 + 4 * v51;
        v53 = (v6 + v51);
        if (((*v53 - 1) & 0x1F) != 0)
        {
          v54 = 0;
        }

        else
        {
          v54 = 31;
        }

        v55 = v54 + ((*v53 - 1) & 0x1F);
        *v53 = v55;
        v53[v55] = v50;
        *(v52 + 4 * v55) = v19++;
      }

      while (v42 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v112;
    }

    v56 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v57 = a2 + 1 - (v8 + v56);
    if ((v57 + 1) < 8)
    {
      v58 = v57 + 1;
    }

    else
    {
      v58 = 8;
    }

    if ((a2 + 1) >= v8 + v56)
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    if (v56 < v59 + v56)
    {
      v60 = *(a1 + 96);
      v61 = 24 - *(a1 + 52);
      do
      {
        v62 = ((-1640531535 * *(v8 + v56)) ^ v60) >> v61;
        v63 = (v62 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v63;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v63;
        __asm { PRFM            #0, [X20] }

        *(v18 + 4 * (v56++ & 7)) = v62;
        --v59;
      }

      while (v59);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 24 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((-1640531535 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v27;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v27;
        __asm { PRFM            #0, [X20] }

        v36 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v37 = (v36 >> 3) & 0x1FFFFFE0;
        v38 = v21 + 4 * v37;
        v39 = (v20 + v37);
        if (((*v39 - 1) & 0x1F) != 0)
        {
          v40 = 0;
        }

        else
        {
          v40 = 31;
        }

        v41 = v40 + ((*v39 - 1) & 0x1F);
        *v39 = v41;
        v39[v41] = v36;
        *(v38 + 4 * v41) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v69 = ((-1640531535 * *(v8 + v25 + 8)) ^ v16) >> (24 - v7);
  v70 = (v69 >> 3) & 0x1FFFFFE0;
  _X17 = v5 + 4 * v70;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X14 = v6 + v70;
  __asm { PRFM            #0, [X14] }

  v17 = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v69;
LABEL_38:
  *(a1 + 104) += v17;
  v76 = (v17 >> 3) & 0x1FFFFFE0;
  v77 = v5 + 4 * v76;
  v78 = (v6 + v76);
  v115 = vld2q_s16(v78);
  v79 = *v78;
  v80 = 2 * *v78;
  v81 = vdupq_n_s8(v17);
  v82 = 0;
  v83 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v81, v115.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v81, v115.val[1]), 6uLL), 4uLL), v80) & 0x5555555555555555;
  if (v83)
  {
    v84 = 1 << v15;
    do
    {
      v85 = ((__clz(__rbit64(v83)) + (v80 & 0xFE)) >> 1) & 0x1F;
      if (v85)
      {
        v86 = *(v77 + 4 * v85);
        if (v86 < v14)
        {
          break;
        }

        if (v86 >= v12)
        {
          v87 = v8;
        }

        else
        {
          v87 = v9;
        }

        _X3 = v87 + v86;
        __asm { PRFM            #0, [X3] }

        v113[v82++] = v86;
        --v84;
      }

      v83 &= v83 - 1;
    }

    while (v83 && v84);
  }

  if (((v79 - 1) & 0x1F) != 0)
  {
    v90 = 0;
  }

  else
  {
    v90 = 31;
  }

  v91 = v90 + ((v79 - 1) & 0x1F);
  *v78 = v91;
  *(v78 + v91) = v17;
  v92 = *(a1 + 44);
  *(a1 + 44) = v92 + 1;
  *(v77 + 4 * v91) = v92;
  if (v82)
  {
    v93 = 0;
    v94 = (a3 - 7);
    v108 = a3 - 1;
    v109 = a3 - 3;
    v110 = v10 + 3;
    v107 = v8 + 8;
    v95 = 3;
    while (1)
    {
      v97 = v113[v93];
      if (v97 >= v12)
      {
        v101 = (v8 + v97);
        if (*(v8 + v97 + v95 - 3) != *&a2[v95 - 3])
        {
          goto LABEL_53;
        }

        if (v94 <= a2)
        {
          v104 = a2;
        }

        else
        {
          v102 = *v101;
          if (v102 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v102)) >> 3;
            if (result <= v95)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v103 = a2 + 8;
          v101 = (v107 + v97);
          while (1)
          {
            v104 = v103;
            if (v103 >= v94)
            {
              break;
            }

            v106 = *v101;
            v101 += 4;
            v105 = v106;
            v103 += 8;
            if (v106 != *v104)
            {
              result = &v104[__clz(__rbit64(*v104 ^ v105)) >> 3] - a2;
              if (result <= v95)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v104 < v109 && *v101 == *v104)
        {
          v101 += 2;
          v104 += 4;
        }

        if (v104 < v108 && *v101 == *v104)
        {
          ++v101;
          v104 += 2;
        }

        if (v104 < a3 && *v101 == *v104)
        {
          ++v104;
        }

        result = v104 - a2;
        if (v104 - a2 <= v95)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v97) != *a2)
        {
          goto LABEL_53;
        }

        v98 = (v8 + v12);
        v99 = a3;
        v100 = ZSTD_count_2segments(a2 + 4, (v9 + v97 + 4), a3, (v9 + v12), v98);
        a3 = v99;
        v8 = v112;
        result = v100 + 4;
        if (result <= v95)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v110 - v97;
      v95 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_53:
      ++v93;
      result = v95;
      if (v93 == v82)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_4_6(uint64_t a1, char *a2, char *a3, void *a4)
{
  v118 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 6)
  {
    LOBYTE(v15) = 6;
  }

  v16 = *(a1 + 96);
  v116 = *(a1 + 8);
  if (*(a1 + 300))
  {
    v17 = ((-1640531535 * *a2) ^ v16) >> (24 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v43 = v19 + 96;
      do
      {
        v44 = ((-1640531535 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (24 - v7);
        v45 = (v44 >> 2) & 0x3FFFFFC0;
        _X19 = v5 + 4 * v45;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v6 + v45;
        __asm
        {
          PRFM            #0, [X7]
          PRFM            #0, [X7,#0x20]
        }

        v52 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v44;
        v53 = (v52 >> 2) & 0x3FFFFFC0;
        v54 = v5 + 4 * v53;
        v55 = (v6 + v53);
        if (((*v55 - 1) & 0x3F) != 0)
        {
          v56 = 0;
        }

        else
        {
          v56 = 63;
        }

        v57 = v56 + ((*v55 - 1) & 0x3F);
        *v55 = v57;
        v55[v57] = v52;
        *(v54 + 4 * v57) = v19++;
      }

      while (v43 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v116;
    }

    v58 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v59 = a2 + 1 - (v8 + v58);
    if ((v59 + 1) < 8)
    {
      v60 = v59 + 1;
    }

    else
    {
      v60 = 8;
    }

    if ((a2 + 1) >= v8 + v58)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    if (v58 < v61 + v58)
    {
      v62 = *(a1 + 96);
      v63 = 24 - *(a1 + 52);
      do
      {
        v64 = ((-1640531535 * *(v8 + v58)) ^ v62) >> v63;
        v65 = (v64 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v65;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v65;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        *(v18 + 4 * (v58++ & 7)) = v64;
        --v61;
      }

      while (v61);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 24 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((-1640531535 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v27;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v27;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        v37 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v38 = (v37 >> 2) & 0x3FFFFFC0;
        v39 = v21 + 4 * v38;
        v40 = (v20 + v38);
        if (((*v40 - 1) & 0x3F) != 0)
        {
          v41 = 0;
        }

        else
        {
          v41 = 63;
        }

        v42 = v41 + ((*v40 - 1) & 0x3F);
        *v40 = v42;
        v40[v42] = v37;
        *(v39 + 4 * v42) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v72 = ((-1640531535 * *(v8 + v25 + 8)) ^ v16) >> (24 - v7);
  v73 = (v72 >> 2) & 0x3FFFFFC0;
  _X17 = v5 + 4 * v73;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X14 = v6 + v73;
  __asm
  {
    PRFM            #0, [X14]
    PRFM            #0, [X14,#0x20]
  }

  v17 = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v72;
LABEL_38:
  *(a1 + 104) += v17;
  v80 = (v17 >> 2) & 0x3FFFFFC0;
  v81 = v5 + 4 * v80;
  v82 = (v6 + v80);
  v83 = *v82;
  v119 = vld4q_s8(v82);
  v84 = vdupq_n_s8(v17);
  v119.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v119.val[3], v84), vceqq_s8(v119.val[2], v84), 1uLL), vsriq_n_s8(vceqq_s8(v119.val[1], v84), vceqq_s8(v119.val[0], v84), 1uLL), 2uLL);
  v85 = vshrn_n_s16(vsriq_n_s8(v119.val[0], v119.val[0], 4uLL), 4uLL);
  v86 = 0;
  if (v85)
  {
    v87 = 1 << v15;
    v88 = __ROR8__(*&v85, v83);
    do
    {
      v89 = (__clz(__rbit64(v88)) + v83) & 0x3F;
      if (v89)
      {
        v90 = *(v81 + 4 * v89);
        if (v90 < v14)
        {
          break;
        }

        if (v90 >= v12)
        {
          v91 = v8;
        }

        else
        {
          v91 = v9;
        }

        _X1 = v91 + v90;
        __asm { PRFM            #0, [X1] }

        v117[v86++] = v90;
        --v87;
      }

      v88 &= v88 - 1;
    }

    while (v88 && v87);
  }

  if (((v83 - 1) & 0x3F) != 0)
  {
    v94 = 0;
  }

  else
  {
    v94 = 63;
  }

  v95 = v94 + ((v83 - 1) & 0x3F);
  *v82 = v95;
  v82[v95] = v17;
  v96 = *(a1 + 44);
  *(a1 + 44) = v96 + 1;
  *(v81 + 4 * v95) = v96;
  if (v86)
  {
    v97 = 0;
    v98 = (a3 - 7);
    v112 = a3 - 1;
    v113 = a3 - 3;
    v114 = v10 + 3;
    v111 = v8 + 8;
    v99 = 3;
    while (1)
    {
      v101 = v117[v97];
      if (v101 >= v12)
      {
        v105 = (v8 + v101);
        if (*(v8 + v101 + v99 - 3) != *&a2[v99 - 3])
        {
          goto LABEL_53;
        }

        if (v98 <= a2)
        {
          v108 = a2;
        }

        else
        {
          v106 = *v105;
          if (v106 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v106)) >> 3;
            if (result <= v99)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v107 = a2 + 8;
          v105 = (v111 + v101);
          while (1)
          {
            v108 = v107;
            if (v107 >= v98)
            {
              break;
            }

            v110 = *v105;
            v105 += 4;
            v109 = v110;
            v107 += 8;
            if (v110 != *v108)
            {
              result = &v108[__clz(__rbit64(*v108 ^ v109)) >> 3] - a2;
              if (result <= v99)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v108 < v113 && *v105 == *v108)
        {
          v105 += 2;
          v108 += 4;
        }

        if (v108 < v112 && *v105 == *v108)
        {
          ++v105;
          v108 += 2;
        }

        if (v108 < a3 && *v105 == *v108)
        {
          ++v108;
        }

        result = v108 - a2;
        if (v108 - a2 <= v99)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v101) != *a2)
        {
          goto LABEL_53;
        }

        v102 = (v8 + v12);
        v103 = a3;
        v104 = ZSTD_count_2segments(a2 + 4, (v9 + v101 + 4), a3, (v9 + v12), v102);
        a3 = v103;
        v8 = v116;
        result = v104 + 4;
        if (result <= v99)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v114 - v101;
      v99 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_53:
      ++v97;
      result = v99;
      if (v97 == v86)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_5_4(uint64_t a1, char *a2, char *a3, void *a4)
{
  v108 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 4)
  {
    LOBYTE(v15) = 4;
  }

  v16 = *(a1 + 96);
  v106 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBB000000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v41 = v19 + 96;
      do
      {
        v42 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
        v43 = (v42 >> 4) & 0xFFFFFF0;
        _X19 = v5 + 4 * v43;
        __asm { PRFM            #0, [X19] }

        _X7 = v6 + v43;
        __asm { PRFM            #0, [X7] }

        v48 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v42;
        v49 = (v48 >> 4) & 0xFFFFFF0;
        v50 = v5 + 4 * v49;
        v51 = (v6 + v49);
        if (((*v51 - 1) & 0xF) != 0)
        {
          v52 = 0;
        }

        else
        {
          v52 = 15;
        }

        v53 = v52 + ((*v51 - 1) & 0xF);
        *v51 = v53;
        v51[v53] = v48;
        *(v50 + 4 * v53) = v19++;
      }

      while (v41 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v106;
    }

    v54 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v55 = a2 + 1 - (v8 + v54);
    if ((v55 + 1) < 8)
    {
      v56 = v55 + 1;
    }

    else
    {
      v56 = 8;
    }

    if ((a2 + 1) >= v8 + v54)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    if (v54 < v57 + v54)
    {
      v58 = *(a1 + 96);
      v59 = 56 - *(a1 + 52);
      do
      {
        v60 = ((0xCF1BBCDCBB000000 * *(v8 + v54)) ^ v58) >> v59;
        v61 = (v60 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v61;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v61;
        __asm { PRFM            #0, [X20] }

        *(v18 + 4 * (v54++ & 7)) = v60;
        --v57;
      }

      while (v57);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((0xCF1BBCDCBB000000 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v27;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v27;
        __asm { PRFM            #0, [X20] }

        v35 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v36 = (v35 >> 4) & 0xFFFFFF0;
        v37 = v21 + 4 * v36;
        v38 = (v20 + v36);
        if (((*v38 - 1) & 0xF) != 0)
        {
          v39 = 0;
        }

        else
        {
          v39 = 15;
        }

        v40 = v39 + ((*v38 - 1) & 0xF);
        *v38 = v40;
        v38[v40] = v35;
        *(v37 + 4 * v40) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v66 = ((0xCF1BBCDCBB000000 * *(v8 + v25 + 8)) ^ v16) >> (56 - v7);
  v67 = (v66 >> 4) & 0xFFFFFF0;
  _X17 = v5 + 4 * v67;
  __asm { PRFM            #0, [X17] }

  _X14 = v6 + v67;
  __asm { PRFM            #0, [X14] }

  LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v66;
LABEL_38:
  *(a1 + 104) += _X14;
  v71 = (_X14 >> 4) & 0xFFFFFF0;
  v72 = v5 + 4 * v71;
  v73 = (v6 + v71);
  v74 = 4 * v73->i8[0];
  v75 = *v73;
  v76 = 0;
  v77 = __ROR8__(vshrn_n_s16(vceqq_s8(*v73, vdupq_n_s8(_X14)), 4uLL), v74) & 0x8888888888888888;
  if (v77)
  {
    v78 = 1 << v15;
    do
    {
      v79 = ((__clz(__rbit64(v77)) + (v74 & 0xFC)) >> 2) & 0xF;
      if (v79)
      {
        v80 = *(v72 + 4 * v79);
        if (v80 < v14)
        {
          break;
        }

        if (v80 >= v12)
        {
          v81 = v8;
        }

        else
        {
          v81 = v9;
        }

        _X3 = v81 + v80;
        __asm { PRFM            #0, [X3] }

        v107[v76++] = v80;
        --v78;
      }

      v77 &= v77 - 1;
    }

    while (v77 && v78);
  }

  if (((v75 - 1) & 0xF) != 0)
  {
    v84 = 0;
  }

  else
  {
    v84 = 15;
  }

  v85 = v84 + ((v75 - 1) & 0xF);
  v73->i8[0] = v85;
  v73->i8[v85] = _X14;
  v86 = *(a1 + 44);
  *(a1 + 44) = v86 + 1;
  *(v72 + 4 * v85) = v86;
  if (v76)
  {
    v87 = 0;
    v88 = (a3 - 7);
    v102 = a3 - 1;
    v103 = a3 - 3;
    v104 = v10 + 3;
    v101 = v8 + 8;
    v89 = 3;
    while (1)
    {
      v91 = v107[v87];
      if (v91 >= v12)
      {
        v95 = (v8 + v91);
        if (*(v8 + v91 + v89 - 3) != *&a2[v89 - 3])
        {
          goto LABEL_53;
        }

        if (v88 <= a2)
        {
          v98 = a2;
        }

        else
        {
          v96 = *v95;
          if (v96 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v96)) >> 3;
            if (result <= v89)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v97 = a2 + 8;
          v95 = (v101 + v91);
          while (1)
          {
            v98 = v97;
            if (v97 >= v88)
            {
              break;
            }

            v100 = *v95;
            v95 += 4;
            v99 = v100;
            v97 += 8;
            if (v100 != *v98)
            {
              result = &v98[__clz(__rbit64(*v98 ^ v99)) >> 3] - a2;
              if (result <= v89)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v98 < v103 && *v95 == *v98)
        {
          v95 += 2;
          v98 += 4;
        }

        if (v98 < v102 && *v95 == *v98)
        {
          ++v95;
          v98 += 2;
        }

        if (v98 < a3 && *v95 == *v98)
        {
          ++v98;
        }

        result = v98 - a2;
        if (v98 - a2 <= v89)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v91) != *a2)
        {
          goto LABEL_53;
        }

        v92 = (v8 + v12);
        v93 = a3;
        v94 = ZSTD_count_2segments(a2 + 4, (v9 + v91 + 4), a3, (v9 + v12), v92);
        a3 = v93;
        v8 = v106;
        result = v94 + 4;
        if (result <= v89)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v104 - v91;
      v89 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_53:
      ++v87;
      result = v89;
      if (v87 == v76)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_5_5(uint64_t a1, char *a2, char *a3, void *a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 5)
  {
    LOBYTE(v15) = 5;
  }

  v16 = *(a1 + 96);
  v111 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBB000000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v42 = v19 + 96;
      do
      {
        v43 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
        v44 = (v43 >> 3) & 0x1FFFFFE0;
        _X19 = v5 + 4 * v44;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v6 + v44;
        __asm { PRFM            #0, [X7] }

        v50 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v43;
        v51 = (v50 >> 3) & 0x1FFFFFE0;
        v52 = v5 + 4 * v51;
        v53 = (v6 + v51);
        if (((*v53 - 1) & 0x1F) != 0)
        {
          v54 = 0;
        }

        else
        {
          v54 = 31;
        }

        v55 = v54 + ((*v53 - 1) & 0x1F);
        *v53 = v55;
        v53[v55] = v50;
        *(v52 + 4 * v55) = v19++;
      }

      while (v42 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v111;
    }

    v56 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v57 = a2 + 1 - (v8 + v56);
    if ((v57 + 1) < 8)
    {
      v58 = v57 + 1;
    }

    else
    {
      v58 = 8;
    }

    if ((a2 + 1) >= v8 + v56)
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    if (v56 < v59 + v56)
    {
      v60 = *(a1 + 96);
      v61 = 56 - *(a1 + 52);
      do
      {
        v62 = ((0xCF1BBCDCBB000000 * *(v8 + v56)) ^ v60) >> v61;
        v63 = (v62 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v63;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v63;
        __asm { PRFM            #0, [X20] }

        *(v18 + 4 * (v56++ & 7)) = v62;
        --v59;
      }

      while (v59);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((0xCF1BBCDCBB000000 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v27;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v27;
        __asm { PRFM            #0, [X20] }

        v36 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v37 = (v36 >> 3) & 0x1FFFFFE0;
        v38 = v21 + 4 * v37;
        v39 = (v20 + v37);
        if (((*v39 - 1) & 0x1F) != 0)
        {
          v40 = 0;
        }

        else
        {
          v40 = 31;
        }

        v41 = v40 + ((*v39 - 1) & 0x1F);
        *v39 = v41;
        v39[v41] = v36;
        *(v38 + 4 * v41) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v69 = ((0xCF1BBCDCBB000000 * *(v8 + v25 + 8)) ^ v16) >> (56 - v7);
  v70 = (v69 >> 3) & 0x1FFFFFE0;
  _X17 = v5 + 4 * v70;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X14 = v6 + v70;
  __asm { PRFM            #0, [X14] }

  LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v69;
LABEL_38:
  *(a1 + 104) += _X14;
  v75 = (_X14 >> 3) & 0x1FFFFFE0;
  v76 = v5 + 4 * v75;
  v77 = (v6 + v75);
  v114 = vld2q_s16(v77);
  v78 = *v77;
  v79 = 2 * *v77;
  v80 = vdupq_n_s8(_X14);
  v81 = 0;
  v82 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v80, v114.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v80, v114.val[1]), 6uLL), 4uLL), v79) & 0x5555555555555555;
  if (v82)
  {
    v83 = 1 << v15;
    do
    {
      v84 = ((__clz(__rbit64(v82)) + (v79 & 0xFE)) >> 1) & 0x1F;
      if (v84)
      {
        v85 = *(v76 + 4 * v84);
        if (v85 < v14)
        {
          break;
        }

        if (v85 >= v12)
        {
          v86 = v8;
        }

        else
        {
          v86 = v9;
        }

        _X3 = v86 + v85;
        __asm { PRFM            #0, [X3] }

        v112[v81++] = v85;
        --v83;
      }

      v82 &= v82 - 1;
    }

    while (v82 && v83);
  }

  if (((v78 - 1) & 0x1F) != 0)
  {
    v89 = 0;
  }

  else
  {
    v89 = 31;
  }

  v90 = v89 + ((v78 - 1) & 0x1F);
  *v77 = v90;
  *(v77 + v90) = _X14;
  v91 = *(a1 + 44);
  *(a1 + 44) = v91 + 1;
  *(v76 + 4 * v90) = v91;
  if (v81)
  {
    v92 = 0;
    v93 = (a3 - 7);
    v107 = a3 - 1;
    v108 = a3 - 3;
    v109 = v10 + 3;
    v106 = v8 + 8;
    v94 = 3;
    while (1)
    {
      v96 = v112[v92];
      if (v96 >= v12)
      {
        v100 = (v8 + v96);
        if (*(v8 + v96 + v94 - 3) != *&a2[v94 - 3])
        {
          goto LABEL_53;
        }

        if (v93 <= a2)
        {
          v103 = a2;
        }

        else
        {
          v101 = *v100;
          if (v101 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v101)) >> 3;
            if (result <= v94)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v102 = a2 + 8;
          v100 = (v106 + v96);
          while (1)
          {
            v103 = v102;
            if (v102 >= v93)
            {
              break;
            }

            v105 = *v100;
            v100 += 4;
            v104 = v105;
            v102 += 8;
            if (v105 != *v103)
            {
              result = &v103[__clz(__rbit64(*v103 ^ v104)) >> 3] - a2;
              if (result <= v94)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v103 < v108 && *v100 == *v103)
        {
          v100 += 2;
          v103 += 4;
        }

        if (v103 < v107 && *v100 == *v103)
        {
          ++v100;
          v103 += 2;
        }

        if (v103 < a3 && *v100 == *v103)
        {
          ++v103;
        }

        result = v103 - a2;
        if (v103 - a2 <= v94)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v96) != *a2)
        {
          goto LABEL_53;
        }

        v97 = (v8 + v12);
        v98 = a3;
        v99 = ZSTD_count_2segments(a2 + 4, (v9 + v96 + 4), a3, (v9 + v12), v97);
        a3 = v98;
        v8 = v111;
        result = v99 + 4;
        if (result <= v94)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v109 - v96;
      v94 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_53:
      ++v92;
      result = v94;
      if (v92 == v81)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_5_6(uint64_t a1, char *a2, char *a3, void *a4)
{
  v117 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 6)
  {
    LOBYTE(v15) = 6;
  }

  v16 = *(a1 + 96);
  v115 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBB000000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v43 = v19 + 96;
      do
      {
        v44 = ((0xCF1BBCDCBB000000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
        v45 = (v44 >> 2) & 0x3FFFFFC0;
        _X19 = v5 + 4 * v45;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v6 + v45;
        __asm
        {
          PRFM            #0, [X7]
          PRFM            #0, [X7,#0x20]
        }

        v52 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v44;
        v53 = (v52 >> 2) & 0x3FFFFFC0;
        v54 = v5 + 4 * v53;
        v55 = (v6 + v53);
        if (((*v55 - 1) & 0x3F) != 0)
        {
          v56 = 0;
        }

        else
        {
          v56 = 63;
        }

        v57 = v56 + ((*v55 - 1) & 0x3F);
        *v55 = v57;
        v55[v57] = v52;
        *(v54 + 4 * v57) = v19++;
      }

      while (v43 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v115;
    }

    v58 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v59 = a2 + 1 - (v8 + v58);
    if ((v59 + 1) < 8)
    {
      v60 = v59 + 1;
    }

    else
    {
      v60 = 8;
    }

    if ((a2 + 1) >= v8 + v58)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    if (v58 < v61 + v58)
    {
      v62 = *(a1 + 96);
      v63 = 56 - *(a1 + 52);
      do
      {
        v64 = ((0xCF1BBCDCBB000000 * *(v8 + v58)) ^ v62) >> v63;
        v65 = (v64 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v65;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v65;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        *(v18 + 4 * (v58++ & 7)) = v64;
        --v61;
      }

      while (v61);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((0xCF1BBCDCBB000000 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v27;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v27;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        v37 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v38 = (v37 >> 2) & 0x3FFFFFC0;
        v39 = v21 + 4 * v38;
        v40 = (v20 + v38);
        if (((*v40 - 1) & 0x3F) != 0)
        {
          v41 = 0;
        }

        else
        {
          v41 = 63;
        }

        v42 = v41 + ((*v40 - 1) & 0x3F);
        *v40 = v42;
        v40[v42] = v37;
        *(v39 + 4 * v42) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v72 = ((0xCF1BBCDCBB000000 * *(v8 + v25 + 8)) ^ v16) >> (56 - v7);
  v73 = (v72 >> 2) & 0x3FFFFFC0;
  _X17 = v5 + 4 * v73;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X14 = v6 + v73;
  __asm
  {
    PRFM            #0, [X14]
    PRFM            #0, [X14,#0x20]
  }

  LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v72;
LABEL_38:
  *(a1 + 104) += _X14;
  v79 = (_X14 >> 2) & 0x3FFFFFC0;
  v80 = v5 + 4 * v79;
  v81 = (v6 + v79);
  v82 = *v81;
  v118 = vld4q_s8(v81);
  v83 = vdupq_n_s8(_X14);
  v118.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v118.val[3], v83), vceqq_s8(v118.val[2], v83), 1uLL), vsriq_n_s8(vceqq_s8(v118.val[1], v83), vceqq_s8(v118.val[0], v83), 1uLL), 2uLL);
  v84 = vshrn_n_s16(vsriq_n_s8(v118.val[0], v118.val[0], 4uLL), 4uLL);
  v85 = 0;
  if (v84)
  {
    v86 = 1 << v15;
    v87 = __ROR8__(*&v84, v82);
    do
    {
      v88 = (__clz(__rbit64(v87)) + v82) & 0x3F;
      if (v88)
      {
        v89 = *(v80 + 4 * v88);
        if (v89 < v14)
        {
          break;
        }

        if (v89 >= v12)
        {
          v90 = v8;
        }

        else
        {
          v90 = v9;
        }

        _X1 = v90 + v89;
        __asm { PRFM            #0, [X1] }

        v116[v85++] = v89;
        --v86;
      }

      v87 &= v87 - 1;
    }

    while (v87 && v86);
  }

  if (((v82 - 1) & 0x3F) != 0)
  {
    v93 = 0;
  }

  else
  {
    v93 = 63;
  }

  v94 = v93 + ((v82 - 1) & 0x3F);
  *v81 = v94;
  v81[v94] = _X14;
  v95 = *(a1 + 44);
  *(a1 + 44) = v95 + 1;
  *(v80 + 4 * v94) = v95;
  if (v85)
  {
    v96 = 0;
    v97 = (a3 - 7);
    v111 = a3 - 1;
    v112 = a3 - 3;
    v113 = v10 + 3;
    v110 = v8 + 8;
    v98 = 3;
    while (1)
    {
      v100 = v116[v96];
      if (v100 >= v12)
      {
        v104 = (v8 + v100);
        if (*(v8 + v100 + v98 - 3) != *&a2[v98 - 3])
        {
          goto LABEL_53;
        }

        if (v97 <= a2)
        {
          v107 = a2;
        }

        else
        {
          v105 = *v104;
          if (v105 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v105)) >> 3;
            if (result <= v98)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v106 = a2 + 8;
          v104 = (v110 + v100);
          while (1)
          {
            v107 = v106;
            if (v106 >= v97)
            {
              break;
            }

            v109 = *v104;
            v104 += 4;
            v108 = v109;
            v106 += 8;
            if (v109 != *v107)
            {
              result = &v107[__clz(__rbit64(*v107 ^ v108)) >> 3] - a2;
              if (result <= v98)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v107 < v112 && *v104 == *v107)
        {
          v104 += 2;
          v107 += 4;
        }

        if (v107 < v111 && *v104 == *v107)
        {
          ++v104;
          v107 += 2;
        }

        if (v107 < a3 && *v104 == *v107)
        {
          ++v107;
        }

        result = v107 - a2;
        if (v107 - a2 <= v98)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v100) != *a2)
        {
          goto LABEL_53;
        }

        v101 = (v8 + v12);
        v102 = a3;
        v103 = ZSTD_count_2segments(a2 + 4, (v9 + v100 + 4), a3, (v9 + v12), v101);
        a3 = v102;
        v8 = v115;
        result = v103 + 4;
        if (result <= v98)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v113 - v100;
      v98 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_53:
      ++v96;
      result = v98;
      if (v96 == v85)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_6_4(uint64_t a1, char *a2, char *a3, void *a4)
{
  v108 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 4)
  {
    LOBYTE(v15) = 4;
  }

  v16 = *(a1 + 96);
  v106 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v41 = v19 + 96;
      do
      {
        v42 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
        v43 = (v42 >> 4) & 0xFFFFFF0;
        _X19 = v5 + 4 * v43;
        __asm { PRFM            #0, [X19] }

        _X7 = v6 + v43;
        __asm { PRFM            #0, [X7] }

        v48 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v42;
        v49 = (v48 >> 4) & 0xFFFFFF0;
        v50 = v5 + 4 * v49;
        v51 = (v6 + v49);
        if (((*v51 - 1) & 0xF) != 0)
        {
          v52 = 0;
        }

        else
        {
          v52 = 15;
        }

        v53 = v52 + ((*v51 - 1) & 0xF);
        *v51 = v53;
        v51[v53] = v48;
        *(v50 + 4 * v53) = v19++;
      }

      while (v41 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v106;
    }

    v54 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v55 = a2 + 1 - (v8 + v54);
    if ((v55 + 1) < 8)
    {
      v56 = v55 + 1;
    }

    else
    {
      v56 = 8;
    }

    if ((a2 + 1) >= v8 + v54)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    if (v54 < v57 + v54)
    {
      v58 = *(a1 + 96);
      v59 = 56 - *(a1 + 52);
      do
      {
        v60 = ((0xCF1BBCDCBF9B0000 * *(v8 + v54)) ^ v58) >> v59;
        v61 = (v60 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v61;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v61;
        __asm { PRFM            #0, [X20] }

        *(v18 + 4 * (v54++ & 7)) = v60;
        --v57;
      }

      while (v57);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((0xCF1BBCDCBF9B0000 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 4) & 0xFFFFFF0;
        _X23 = v21 + 4 * v27;
        __asm { PRFM            #0, [X23] }

        _X20 = v20 + v27;
        __asm { PRFM            #0, [X20] }

        v35 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v36 = (v35 >> 4) & 0xFFFFFF0;
        v37 = v21 + 4 * v36;
        v38 = (v20 + v36);
        if (((*v38 - 1) & 0xF) != 0)
        {
          v39 = 0;
        }

        else
        {
          v39 = 15;
        }

        v40 = v39 + ((*v38 - 1) & 0xF);
        *v38 = v40;
        v38[v40] = v35;
        *(v37 + 4 * v40) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v66 = ((0xCF1BBCDCBF9B0000 * *(v8 + v25 + 8)) ^ v16) >> (56 - v7);
  v67 = (v66 >> 4) & 0xFFFFFF0;
  _X17 = v5 + 4 * v67;
  __asm { PRFM            #0, [X17] }

  _X14 = v6 + v67;
  __asm { PRFM            #0, [X14] }

  LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v66;
LABEL_38:
  *(a1 + 104) += _X14;
  v71 = (_X14 >> 4) & 0xFFFFFF0;
  v72 = v5 + 4 * v71;
  v73 = (v6 + v71);
  v74 = 4 * v73->i8[0];
  v75 = *v73;
  v76 = 0;
  v77 = __ROR8__(vshrn_n_s16(vceqq_s8(*v73, vdupq_n_s8(_X14)), 4uLL), v74) & 0x8888888888888888;
  if (v77)
  {
    v78 = 1 << v15;
    do
    {
      v79 = ((__clz(__rbit64(v77)) + (v74 & 0xFC)) >> 2) & 0xF;
      if (v79)
      {
        v80 = *(v72 + 4 * v79);
        if (v80 < v14)
        {
          break;
        }

        if (v80 >= v12)
        {
          v81 = v8;
        }

        else
        {
          v81 = v9;
        }

        _X3 = v81 + v80;
        __asm { PRFM            #0, [X3] }

        v107[v76++] = v80;
        --v78;
      }

      v77 &= v77 - 1;
    }

    while (v77 && v78);
  }

  if (((v75 - 1) & 0xF) != 0)
  {
    v84 = 0;
  }

  else
  {
    v84 = 15;
  }

  v85 = v84 + ((v75 - 1) & 0xF);
  v73->i8[0] = v85;
  v73->i8[v85] = _X14;
  v86 = *(a1 + 44);
  *(a1 + 44) = v86 + 1;
  *(v72 + 4 * v85) = v86;
  if (v76)
  {
    v87 = 0;
    v88 = (a3 - 7);
    v102 = a3 - 1;
    v103 = a3 - 3;
    v104 = v10 + 3;
    v101 = v8 + 8;
    v89 = 3;
    while (1)
    {
      v91 = v107[v87];
      if (v91 >= v12)
      {
        v95 = (v8 + v91);
        if (*(v8 + v91 + v89 - 3) != *&a2[v89 - 3])
        {
          goto LABEL_53;
        }

        if (v88 <= a2)
        {
          v98 = a2;
        }

        else
        {
          v96 = *v95;
          if (v96 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v96)) >> 3;
            if (result <= v89)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v97 = a2 + 8;
          v95 = (v101 + v91);
          while (1)
          {
            v98 = v97;
            if (v97 >= v88)
            {
              break;
            }

            v100 = *v95;
            v95 += 4;
            v99 = v100;
            v97 += 8;
            if (v100 != *v98)
            {
              result = &v98[__clz(__rbit64(*v98 ^ v99)) >> 3] - a2;
              if (result <= v89)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v98 < v103 && *v95 == *v98)
        {
          v95 += 2;
          v98 += 4;
        }

        if (v98 < v102 && *v95 == *v98)
        {
          ++v95;
          v98 += 2;
        }

        if (v98 < a3 && *v95 == *v98)
        {
          ++v98;
        }

        result = v98 - a2;
        if (v98 - a2 <= v89)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v91) != *a2)
        {
          goto LABEL_53;
        }

        v92 = (v8 + v12);
        v93 = a3;
        v94 = ZSTD_count_2segments(a2 + 4, (v9 + v91 + 4), a3, (v9 + v12), v92);
        a3 = v93;
        v8 = v106;
        result = v94 + 4;
        if (result <= v89)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v104 - v91;
      v89 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_53:
      ++v87;
      result = v89;
      if (v87 == v76)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_6_5(uint64_t a1, char *a2, char *a3, void *a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 5)
  {
    LOBYTE(v15) = 5;
  }

  v16 = *(a1 + 96);
  v111 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v42 = v19 + 96;
      do
      {
        v43 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
        v44 = (v43 >> 3) & 0x1FFFFFE0;
        _X19 = v5 + 4 * v44;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v6 + v44;
        __asm { PRFM            #0, [X7] }

        v50 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v43;
        v51 = (v50 >> 3) & 0x1FFFFFE0;
        v52 = v5 + 4 * v51;
        v53 = (v6 + v51);
        if (((*v53 - 1) & 0x1F) != 0)
        {
          v54 = 0;
        }

        else
        {
          v54 = 31;
        }

        v55 = v54 + ((*v53 - 1) & 0x1F);
        *v53 = v55;
        v53[v55] = v50;
        *(v52 + 4 * v55) = v19++;
      }

      while (v42 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v111;
    }

    v56 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v57 = a2 + 1 - (v8 + v56);
    if ((v57 + 1) < 8)
    {
      v58 = v57 + 1;
    }

    else
    {
      v58 = 8;
    }

    if ((a2 + 1) >= v8 + v56)
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    if (v56 < v59 + v56)
    {
      v60 = *(a1 + 96);
      v61 = 56 - *(a1 + 52);
      do
      {
        v62 = ((0xCF1BBCDCBF9B0000 * *(v8 + v56)) ^ v60) >> v61;
        v63 = (v62 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v63;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v63;
        __asm { PRFM            #0, [X20] }

        *(v18 + 4 * (v56++ & 7)) = v62;
        --v59;
      }

      while (v59);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((0xCF1BBCDCBF9B0000 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 3) & 0x1FFFFFE0;
        _X23 = v21 + 4 * v27;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v27;
        __asm { PRFM            #0, [X20] }

        v36 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v37 = (v36 >> 3) & 0x1FFFFFE0;
        v38 = v21 + 4 * v37;
        v39 = (v20 + v37);
        if (((*v39 - 1) & 0x1F) != 0)
        {
          v40 = 0;
        }

        else
        {
          v40 = 31;
        }

        v41 = v40 + ((*v39 - 1) & 0x1F);
        *v39 = v41;
        v39[v41] = v36;
        *(v38 + 4 * v41) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v69 = ((0xCF1BBCDCBF9B0000 * *(v8 + v25 + 8)) ^ v16) >> (56 - v7);
  v70 = (v69 >> 3) & 0x1FFFFFE0;
  _X17 = v5 + 4 * v70;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X14 = v6 + v70;
  __asm { PRFM            #0, [X14] }

  LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v69;
LABEL_38:
  *(a1 + 104) += _X14;
  v75 = (_X14 >> 3) & 0x1FFFFFE0;
  v76 = v5 + 4 * v75;
  v77 = (v6 + v75);
  v114 = vld2q_s16(v77);
  v78 = *v77;
  v79 = 2 * *v77;
  v80 = vdupq_n_s8(_X14);
  v81 = 0;
  v82 = __ROR8__(vsli_n_s8(vshrn_n_s16(vceqq_s8(v80, v114.val[0]), 6uLL), vshrn_n_s16(vceqq_s8(v80, v114.val[1]), 6uLL), 4uLL), v79) & 0x5555555555555555;
  if (v82)
  {
    v83 = 1 << v15;
    do
    {
      v84 = ((__clz(__rbit64(v82)) + (v79 & 0xFE)) >> 1) & 0x1F;
      if (v84)
      {
        v85 = *(v76 + 4 * v84);
        if (v85 < v14)
        {
          break;
        }

        if (v85 >= v12)
        {
          v86 = v8;
        }

        else
        {
          v86 = v9;
        }

        _X3 = v86 + v85;
        __asm { PRFM            #0, [X3] }

        v112[v81++] = v85;
        --v83;
      }

      v82 &= v82 - 1;
    }

    while (v82 && v83);
  }

  if (((v78 - 1) & 0x1F) != 0)
  {
    v89 = 0;
  }

  else
  {
    v89 = 31;
  }

  v90 = v89 + ((v78 - 1) & 0x1F);
  *v77 = v90;
  *(v77 + v90) = _X14;
  v91 = *(a1 + 44);
  *(a1 + 44) = v91 + 1;
  *(v76 + 4 * v90) = v91;
  if (v81)
  {
    v92 = 0;
    v93 = (a3 - 7);
    v107 = a3 - 1;
    v108 = a3 - 3;
    v109 = v10 + 3;
    v106 = v8 + 8;
    v94 = 3;
    while (1)
    {
      v96 = v112[v92];
      if (v96 >= v12)
      {
        v100 = (v8 + v96);
        if (*(v8 + v96 + v94 - 3) != *&a2[v94 - 3])
        {
          goto LABEL_53;
        }

        if (v93 <= a2)
        {
          v103 = a2;
        }

        else
        {
          v101 = *v100;
          if (v101 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v101)) >> 3;
            if (result <= v94)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v102 = a2 + 8;
          v100 = (v106 + v96);
          while (1)
          {
            v103 = v102;
            if (v102 >= v93)
            {
              break;
            }

            v105 = *v100;
            v100 += 4;
            v104 = v105;
            v102 += 8;
            if (v105 != *v103)
            {
              result = &v103[__clz(__rbit64(*v103 ^ v104)) >> 3] - a2;
              if (result <= v94)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v103 < v108 && *v100 == *v103)
        {
          v100 += 2;
          v103 += 4;
        }

        if (v103 < v107 && *v100 == *v103)
        {
          ++v100;
          v103 += 2;
        }

        if (v103 < a3 && *v100 == *v103)
        {
          ++v103;
        }

        result = v103 - a2;
        if (v103 - a2 <= v94)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v96) != *a2)
        {
          goto LABEL_53;
        }

        v97 = (v8 + v12);
        v98 = a3;
        v99 = ZSTD_count_2segments(a2 + 4, (v9 + v96 + 4), a3, (v9 + v12), v97);
        a3 = v98;
        v8 = v111;
        result = v99 + 4;
        if (result <= v94)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v109 - v96;
      v94 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_53:
      ++v92;
      result = v94;
      if (v92 == v81)
      {
        return result;
      }
    }
  }

  return 3;
}

unint64_t ZSTD_RowFindBestMatch_extDict_6_6(uint64_t a1, char *a2, char *a3, void *a4)
{
  v117 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 112);
  v6 = *(a1 + 56);
  v7 = *(a1 + 52);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  if (a2 - v8 - *(a1 + 28) > v11 && *(a1 + 40) == 0)
  {
    v14 = a2 - v8 - v11;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  v15 = *(a1 + 268);
  if (v15 >= 6)
  {
    LOBYTE(v15) = 6;
  }

  v16 = *(a1 + 96);
  v115 = *(a1 + 8);
  if (*(a1 + 300))
  {
    _X14 = ((0xCF1BBCDCBF9B0000 * *a2) ^ v16) >> (56 - v7);
    *(a1 + 44) = v10;
    goto LABEL_38;
  }

  v18 = a1 + 64;
  v19 = *(a1 + 44);
  if (v10 - v19 >= 0x181)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 <= 0xFFFFFF9F)
    {
      v43 = v19 + 96;
      do
      {
        v44 = ((0xCF1BBCDCBF9B0000 * *(v8 + 8 + v19)) ^ *(a1 + 96)) >> (56 - v7);
        v45 = (v44 >> 2) & 0x3FFFFFC0;
        _X19 = v5 + 4 * v45;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v6 + v45;
        __asm
        {
          PRFM            #0, [X7]
          PRFM            #0, [X7,#0x20]
        }

        v52 = *(v18 + 4 * (v19 & 7));
        *(v18 + 4 * (v19 & 7)) = v44;
        v53 = (v52 >> 2) & 0x3FFFFFC0;
        v54 = v5 + 4 * v53;
        v55 = (v6 + v53);
        if (((*v55 - 1) & 0x3F) != 0)
        {
          v56 = 0;
        }

        else
        {
          v56 = 63;
        }

        v57 = v56 + ((*v55 - 1) & 0x3F);
        *v55 = v57;
        v55[v57] = v52;
        *(v54 + 4 * v57) = v19++;
      }

      while (v43 != v19);
      v21 = *(a1 + 112);
      v20 = *(a1 + 56);
      v8 = v115;
    }

    v58 = v10 - 32;
    LODWORD(v19) = v10 - 32;
    v59 = a2 + 1 - (v8 + v58);
    if ((v59 + 1) < 8)
    {
      v60 = v59 + 1;
    }

    else
    {
      v60 = 8;
    }

    if ((a2 + 1) >= v8 + v58)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    if (v58 < v61 + v58)
    {
      v62 = *(a1 + 96);
      v63 = 56 - *(a1 + 52);
      do
      {
        v64 = ((0xCF1BBCDCBF9B0000 * *(v8 + v58)) ^ v62) >> v63;
        v65 = (v64 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v65;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v65;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        *(v18 + 4 * (v58++ & 7)) = v64;
        --v61;
      }

      while (v61);
    }

    if (v19 < v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 112);
    if (v19 < v10)
    {
LABEL_13:
      v22 = *(a1 + 8) + 8;
      v23 = 56 - *(a1 + 52);
      v24 = v19;
      v25 = v10;
      do
      {
        v26 = ((0xCF1BBCDCBF9B0000 * *(v22 + v24)) ^ *(a1 + 96)) >> v23;
        v27 = (v26 >> 2) & 0x3FFFFFC0;
        _X23 = v21 + 4 * v27;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X20 = v20 + v27;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x20]
        }

        v37 = *(v18 + 4 * (v24 & 7));
        *(v18 + 4 * (v24 & 7)) = v26;
        v38 = (v37 >> 2) & 0x3FFFFFC0;
        v39 = v21 + 4 * v38;
        v40 = (v20 + v38);
        if (((*v40 - 1) & 0x3F) != 0)
        {
          v41 = 0;
        }

        else
        {
          v41 = 63;
        }

        v42 = v41 + ((*v40 - 1) & 0x3F);
        *v40 = v42;
        v40[v42] = v37;
        *(v39 + 4 * v42) = v24++;
      }

      while (v10 != v24);
      goto LABEL_37;
    }
  }

  v25 = v10;
LABEL_37:
  *(a1 + 44) = v10;
  v72 = ((0xCF1BBCDCBF9B0000 * *(v8 + v25 + 8)) ^ v16) >> (56 - v7);
  v73 = (v72 >> 2) & 0x3FFFFFC0;
  _X17 = v5 + 4 * v73;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X14 = v6 + v73;
  __asm
  {
    PRFM            #0, [X14]
    PRFM            #0, [X14,#0x20]
  }

  LODWORD(_X14) = *(v18 + 4 * (v10 & 7));
  *(v18 + 4 * (v10 & 7)) = v72;
LABEL_38:
  *(a1 + 104) += _X14;
  v79 = (_X14 >> 2) & 0x3FFFFFC0;
  v80 = v5 + 4 * v79;
  v81 = (v6 + v79);
  v82 = *v81;
  v118 = vld4q_s8(v81);
  v83 = vdupq_n_s8(_X14);
  v118.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v118.val[3], v83), vceqq_s8(v118.val[2], v83), 1uLL), vsriq_n_s8(vceqq_s8(v118.val[1], v83), vceqq_s8(v118.val[0], v83), 1uLL), 2uLL);
  v84 = vshrn_n_s16(vsriq_n_s8(v118.val[0], v118.val[0], 4uLL), 4uLL);
  v85 = 0;
  if (v84)
  {
    v86 = 1 << v15;
    v87 = __ROR8__(*&v84, v82);
    do
    {
      v88 = (__clz(__rbit64(v87)) + v82) & 0x3F;
      if (v88)
      {
        v89 = *(v80 + 4 * v88);
        if (v89 < v14)
        {
          break;
        }

        if (v89 >= v12)
        {
          v90 = v8;
        }

        else
        {
          v90 = v9;
        }

        _X1 = v90 + v89;
        __asm { PRFM            #0, [X1] }

        v116[v85++] = v89;
        --v86;
      }

      v87 &= v87 - 1;
    }

    while (v87 && v86);
  }

  if (((v82 - 1) & 0x3F) != 0)
  {
    v93 = 0;
  }

  else
  {
    v93 = 63;
  }

  v94 = v93 + ((v82 - 1) & 0x3F);
  *v81 = v94;
  v81[v94] = _X14;
  v95 = *(a1 + 44);
  *(a1 + 44) = v95 + 1;
  *(v80 + 4 * v94) = v95;
  if (v85)
  {
    v96 = 0;
    v97 = (a3 - 7);
    v111 = a3 - 1;
    v112 = a3 - 3;
    v113 = v10 + 3;
    v110 = v8 + 8;
    v98 = 3;
    while (1)
    {
      v100 = v116[v96];
      if (v100 >= v12)
      {
        v104 = (v8 + v100);
        if (*(v8 + v100 + v98 - 3) != *&a2[v98 - 3])
        {
          goto LABEL_53;
        }

        if (v97 <= a2)
        {
          v107 = a2;
        }

        else
        {
          v105 = *v104;
          if (v105 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v105)) >> 3;
            if (result <= v98)
            {
              goto LABEL_53;
            }

            goto LABEL_79;
          }

          v106 = a2 + 8;
          v104 = (v110 + v100);
          while (1)
          {
            v107 = v106;
            if (v106 >= v97)
            {
              break;
            }

            v109 = *v104;
            v104 += 4;
            v108 = v109;
            v106 += 8;
            if (v109 != *v107)
            {
              result = &v107[__clz(__rbit64(*v107 ^ v108)) >> 3] - a2;
              if (result <= v98)
              {
                goto LABEL_53;
              }

              goto LABEL_79;
            }
          }
        }

        if (v107 < v112 && *v104 == *v107)
        {
          v104 += 2;
          v107 += 4;
        }

        if (v107 < v111 && *v104 == *v107)
        {
          ++v104;
          v107 += 2;
        }

        if (v107 < a3 && *v104 == *v107)
        {
          ++v107;
        }

        result = v107 - a2;
        if (v107 - a2 <= v98)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (*(v9 + v100) != *a2)
        {
          goto LABEL_53;
        }

        v101 = (v8 + v12);
        v102 = a3;
        v103 = ZSTD_count_2segments(a2 + 4, (v9 + v100 + 4), a3, (v9 + v12), v101);
        a3 = v102;
        v8 = v115;
        result = v103 + 4;
        if (result <= v98)
        {
          goto LABEL_53;
        }
      }

LABEL_79:
      *a4 = v113 - v100;
      v98 = result;
      if (&a2[result] == a3)
      {
        return result;
      }

LABEL_53:
      ++v96;
      result = v98;
      if (v96 == v85)
      {
        return result;
      }
    }
  }

  return 3;
}

int64_t ZSTD_compressBlock_lazy_extDict(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 256);
  v13 = *(a1 + 272);
  if (v13 >= 6)
  {
    v13 = 6;
  }

  if (v13 <= 4)
  {
    v13 = 4;
  }

  v137 = v13;
  LODWORD(v14) = *a3;
  v134 = a3[1];
  *(a1 + 300) = 0;
  v128 = (v8 + v10);
  if ((v8 + v10) == v5)
  {
    v15 = v5 + 1;
  }

  else
  {
    v15 = v5;
  }

  if (v15 < v7)
  {
    v16 = a2;
    v17 = a1;
    v18 = (v9 + v10);
    v121 = (v9 + v11);
    v19 = 1 << v12;
    v20 = v10 - 1;
    v120 = v6 - 7;
    v124 = v6 - 1;
    v125 = v6 - 3;
    v119 = 1 - v8;
    v117 = 1 - v8 - (1 << v12);
    v118 = v10 + v8 - 2;
    v116 = v10 + v8 + 8;
    v135 = v10;
    v127 = (v9 + v10);
    v133 = 1 << v12;
    v126 = v10 - 1;
    v136 = v6;
    v131 = v8;
    v132 = v9;
    v123 = (v6 - 32);
    while (1)
    {
      v22 = 0;
      v23 = v15 - v8 + 1;
      if (v23 - v17[7] > v19 && v17[10] == 0)
      {
        v25 = v23 - v19;
      }

      else
      {
        v25 = v17[7];
      }

      v26 = (v23 - v14);
      if (v26 >= v10)
      {
        v27 = v8;
      }

      else
      {
        v27 = v9;
      }

      if ((v20 - v26) >= 3 && v14 <= v23 - v25)
      {
        if (*(v15 + 1) == *(v27 + v26))
        {
          if (v26 >= v10)
          {
            v28 = v6;
          }

          else
          {
            v28 = v18;
          }

          v29 = ZSTD_count_2segments(v15 + 5, (v27 + v26 + 4), v6, v28, v128);
          v17 = a1;
          v22 = v29 + 4;
        }

        else
        {
          v22 = 0;
        }
      }

      *v139 = 999999999;
      v130 = v14;
      if (v137 == 6)
      {
        v31 = v15 + 1;
        v30 = v16;
        v32 = v8;
        v33 = v6;
        BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_6(v17, v15, v6, v139);
      }

      else
      {
        v30 = v16;
        if (v137 == 5)
        {
          v31 = v15 + 1;
          v32 = v8;
          v33 = v6;
          BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_5(v17, v15, v6, v139);
        }

        else
        {
          v32 = v8;
          v31 = v15 + 1;
          v33 = v6;
          BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_4(v17, v15, v6, v139);
        }
      }

      if (BestMatch_extDict_6 <= v22)
      {
        v35 = v22;
      }

      else
      {
        v35 = BestMatch_extDict_6;
      }

      if (v35 < 4)
      {
        v21 = v15 - v5;
        v15 += ((v15 - v5) >> 8) + 1;
        v17 = a1;
        *(a1 + 300) = v21 > 0x8FF;
        LODWORD(v10) = v135;
        v18 = v127;
        v19 = v133;
        v20 = v126;
        v6 = v33;
        v8 = v32;
        v16 = v30;
        LODWORD(v14) = v130;
        goto LABEL_11;
      }

      v17 = a1;
      v36 = BestMatch_extDict_6 <= v22 ? 1 : *v139;
      v37 = (BestMatch_extDict_6 <= v22 ? v31 : v15);
      if (v15 >= v7)
      {
        v6 = v33;
        v8 = v32;
        v16 = v30;
        v14 = v130;
      }

      else
      {
        v38 = 0;
        v14 = v130;
        v39 = v118 + v130 - v15;
        v129 = v119 + v15;
        while (1)
        {
          v40 = v7;
          v41 = &v15[v38 + 1];
          if (v36)
          {
            v42 = v117 + v15 + v38;
            if (v129 + v38 - v17[7] <= v133 || v17[10] != 0)
            {
              v42 = v17[7];
            }

            v44 = v119 + v15 - v130 + v38;
            v45 = v131;
            if (v44 < v135)
            {
              v45 = v132;
            }

            if (v39 >= 3 && v130 <= v129 + v38 - v42 && *v41 == *(v45 + v44))
            {
              if (v44 >= v135)
              {
                v46 = v136;
              }

              else
              {
                v46 = v127;
              }

              v47 = ZSTD_count_2segments(&v15[v38 + 5], (v45 + v44 + 4), v136, v46, v128);
              if (v47 > 0xFFFFFFFFFFFFFFFBLL)
              {
                v17 = a1;
              }

              else
              {
                v17 = a1;
                if (3 * (v47 + 4) > (__clz(v36) + 3 * v35 - 30))
                {
                  v37 = &v15[v38 + 1];
                  v36 = 1;
                  v35 = v47 + 4;
                }
              }
            }
          }

          *v139 = 999999999;
          v48 = &v15[v38 + 1];
          if (v137 == 6)
          {
            v49 = ZSTD_HcFindBestMatch_extDict_6(v17, v48, v136, v139);
          }

          else
          {
            v49 = v137 == 5 ? ZSTD_HcFindBestMatch_extDict_5(v17, v48, v136, v139) : ZSTD_HcFindBestMatch_extDict_4(v17, v48, v136, v139);
          }

          v17 = a1;
          if (v49 < 4 || (__clz(v139[0]) + 4 * v49 - 31) <= (__clz(v36) + 4 * v35 - 27))
          {
            break;
          }

          ++v38;
          --v39;
          v35 = v49;
          v36 = *v139;
          v37 = v41;
          v7 = v40;
          if (&v15[v38] >= v40)
          {
            v37 = &v15[v38];
            v36 = *v139;
            v35 = v49;
            v6 = v136;
            v16 = a2;
            goto LABEL_75;
          }
        }

        v6 = v136;
        v16 = a2;
        v7 = v40;
LABEL_75:
        v8 = v131;
      }

      if (v36 > 3)
      {
        v50 = v37 - (v36 + v8) + 3;
        if (v135 <= v50)
        {
          v51 = v8;
        }

        else
        {
          v51 = v132;
        }

        v52 = v128;
        if (v135 > v50)
        {
          v52 = v121;
        }

        if (v37 > v5)
        {
          v53 = v50;
          if (v51 + v50 > v52)
          {
            v54 = (v37 - 1);
            v55 = (v51 + v53 - 1);
            while (*v54 == *v55)
            {
              ++v35;
              v56 = v54 - 1;
              if (v54 > v5)
              {
                --v54;
                if (v55-- > v52)
                {
                  continue;
                }
              }

              v37 = (v56 + 1);
              goto LABEL_90;
            }

            v37 = (v54 + 1);
          }
        }

LABEL_90:
        v134 = v14;
        v14 = (v36 - 3);
      }

      v58 = v37 - v5;
      v59 = *(v16 + 24);
      if (v37 > v123)
      {
        break;
      }

      *v59 = *v5;
      v66 = *(v16 + 24);
      if (v58 > 0x10)
      {
        *(v66 + 16) = *(v5 + 1);
        if (v58 >= 33)
        {
          v67 = v66 + v58;
          v68 = (v66 + 32);
          v69 = (v5 + 48);
          do
          {
            *v68 = *(v69 - 1);
            v70 = *v69;
            v69 += 2;
            v68[1] = v70;
            v68 += 2;
          }

          while (v68 < v67);
        }

        goto LABEL_120;
      }

      *(v16 + 24) = v66 + v58;
      v71 = *(v16 + 8);
LABEL_122:
      *(v71 + 4) = v58;
      *v71 = v36;
      if (v35 - 3 >= 0x10000)
      {
        v84 = (v71 - *v16) >> 3;
        *(v16 + 72) = 2;
        *(v16 + 76) = v84;
      }

      *(v71 + 6) = v35 - 3;
      v85 = v71 + 8;
      *(v16 + 8) = v71 + 8;
      v9 = v132;
      if (v17[75])
      {
        v17[75] = 0;
      }

      v5 = (v37 + v35);
      if (v37 + v35 > v7)
      {
        v15 = (v37 + v35);
        LODWORD(v10) = v135;
        v18 = v127;
        v19 = v133;
        v20 = v126;
        goto LABEL_11;
      }

      v86 = v14;
      v19 = v133;
      v87 = v134;
      LODWORD(v10) = v135;
      v18 = v127;
      v20 = v126;
      while (1)
      {
        v14 = v87;
        v87 = v86;
        v88 = v5 - v8;
        v89 = v17[7];
        if (v5 - v8 - v89 > v133 && v17[10] == 0)
        {
          v89 = v5 - v8 - v133;
        }

        v91 = (v88 - v14);
        v92 = v91 >= v135 ? v8 : v132;
        if ((v126 - v91) < 3)
        {
          break;
        }

        if (v14 > v88 - v89)
        {
          break;
        }

        v93 = v92 + v91;
        if (*v5 != *(v92 + v91))
        {
          break;
        }

        if (v91 >= v135)
        {
          v94 = v6;
        }

        else
        {
          v94 = v127;
        }

        v95 = (v5 + 4);
        v96 = (v93 + 4);
        v97 = &v94[v5 - v93];
        if (v97 >= v6)
        {
          v97 = v6;
        }

        if (v97 - 7 <= v95)
        {
          v98 = v96;
          v100 = (v5 + 4);
        }

        else
        {
          if (*v96 != *v95)
          {
            v103 = __clz(__rbit64(*v95 ^ *v96)) >> 3;
            goto LABEL_164;
          }

          v98 = (v92 + v91 + 12);
          v99 = (v5 + 12);
          while (1)
          {
            v100 = v99;
            if (v99 >= (v97 - 7))
            {
              break;
            }

            v102 = *v98;
            v98 += 4;
            v101 = v102;
            v99 += 8;
            if (v102 != *v100)
            {
              v103 = &v100[__clz(__rbit64(*v100 ^ v101)) >> 3] - v95;
              goto LABEL_164;
            }
          }
        }

        if (v100 < v97 - 3 && *v98 == *v100)
        {
          v98 += 2;
          v100 += 4;
        }

        if (v100 < v97 - 1 && *v98 == *v100)
        {
          ++v98;
          v100 += 2;
        }

        if (v100 < v97 && *v98 == *v100)
        {
          ++v100;
        }

        v103 = v100 - v95;
LABEL_164:
        if (v96 + v103 == v94)
        {
          v105 = &v95[v103];
          if (v120 > v105)
          {
            if (*v128 == *v105)
            {
              v106 = 0;
              v107 = &v5[v103];
              while (1)
              {
                v108 = &v107[v106 + 12];
                if (v108 >= v120)
                {
                  break;
                }

                v109 = *(v116 + v106);
                v110 = *v108;
                v106 += 8;
                if (v109 != v110)
                {
                  v111 = &v107[v106 + 4 + (__clz(__rbit64(v110 ^ v109)) >> 3)];
                  goto LABEL_187;
                }
              }

              v112 = (v116 + v106);
              v111 = &v5[v103 + 12 + v106];
LABEL_178:
              if (v111 < v125 && *v112 == *v111)
              {
                v112 = (v112 + 4);
                v111 += 4;
              }

              if (v111 < v124 && *v112 == *v111)
              {
                v112 = (v112 + 2);
                v111 += 2;
              }

              if (v111 < v6 && *v112 == *v111)
              {
                ++v111;
              }

LABEL_187:
              v113 = v111 - v105;
            }

            else
            {
              v113 = __clz(__rbit64(*v105 ^ *v128)) >> 3;
            }

            v103 += v113;
            if (v5 > v123)
            {
              goto LABEL_167;
            }

LABEL_166:
            **(v16 + 24) = *v5;
            v85 = *(v16 + 8);
            goto LABEL_167;
          }

          v112 = v128;
          v111 = v105;
          goto LABEL_178;
        }

        if (v5 <= v123)
        {
          goto LABEL_166;
        }

LABEL_167:
        *(v85 + 4) = 0;
        *v85 = 1;
        if (v103 + 1 >= 0x10000)
        {
          v104 = (v85 - *v16) >> 3;
          *(v16 + 72) = 2;
          *(v16 + 76) = v104;
        }

        *(v85 + 6) = v103 + 1;
        v85 += 8;
        v5 += v103 + 4;
        *(v16 + 8) = v85;
        v86 = v14;
        v134 = v87;
        v15 = v5;
        if (v5 > v7)
        {
          goto LABEL_11;
        }
      }

      v134 = v14;
      LODWORD(v14) = v86;
      v15 = v5;
LABEL_11:
      if (v15 >= v7)
      {
        goto LABEL_191;
      }
    }

    if (v5 <= v123)
    {
      v60 = (v59 + v123 - v5);
      *v59 = *v5;
      if (v123 - v5 >= 17)
      {
        v61 = v59 + 1;
        v62 = (v5 + 32);
        do
        {
          *v61 = *(v62 - 1);
          v63 = *v62;
          v62 += 2;
          v61[1] = v63;
          v61 += 2;
        }

        while (v61 < v60);
      }

      v5 = v123;
      v59 = v60;
    }

    if (v5 < v37)
    {
      v64 = v37 - v5;
      if (v37 - v5 < 8)
      {
        v72 = v59;
        goto LABEL_119;
      }

      if ((v59 - v5) < 0x20)
      {
        v72 = v59;
        goto LABEL_119;
      }

      if (v64 >= 0x20)
      {
        v65 = v64 & 0xFFFFFFFFFFFFFFE0;
        v73 = (v5 + 16);
        v74 = v59 + 1;
        v75 = v64 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v76 = *v73;
          *(v74 - 1) = *(v73 - 1);
          *v74 = v76;
          v73 += 2;
          v74 += 2;
          v75 -= 32;
        }

        while (v75);
        if (v64 == v65)
        {
          goto LABEL_120;
        }

        if ((v64 & 0x18) == 0)
        {
          v5 += v65;
          v72 = v59 + v65;
          do
          {
LABEL_119:
            v82 = *v5++;
            *v72++ = v82;
          }

          while (v5 != v37);
          goto LABEL_120;
        }
      }

      else
      {
        v65 = 0;
      }

      v77 = v64 & 0xFFFFFFFFFFFFFFF8;
      v72 = v59 + (v64 & 0xFFFFFFFFFFFFFFF8);
      v78 = v65 - (v64 & 0xFFFFFFFFFFFFFFF8);
      v79 = &v5[v65];
      v80 = (v59 + v65);
      do
      {
        v81 = *v79;
        v79 += 8;
        *v80++ = v81;
        v78 += 8;
      }

      while (v78);
      if (v64 != v77)
      {
        v5 += v77;
        goto LABEL_119;
      }
    }

LABEL_120:
    *(v16 + 24) += v58;
    v71 = *(v16 + 8);
    if (v58 >= 0x10000)
    {
      v83 = (v71 - *v16) >> 3;
      *(v16 + 72) = 1;
      *(v16 + 76) = v83;
    }

    goto LABEL_122;
  }

LABEL_191:
  *a3 = v14;
  a3[1] = v134;
  return v6 - v5;
}

int64_t ZSTD_compressBlock_lazy_extDict_row(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v7 = a1;
  v8 = &a4[a5];
  v9 = &a4[a5 - 16];
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a1 + 24);
  v12 = *(a1 + 28);
  v14 = *(a1 + 256);
  v15 = *(a1 + 272);
  if (v15 >= 6)
  {
    v15 = 6;
  }

  if (v15 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a1 + 268);
  v195 = v17;
  if (v17 >= 6)
  {
    v17 = 6;
  }

  if (v17 <= 4)
  {
    v17 = 4;
  }

  v213 = v17;
  v18 = *a3;
  v205 = a3[1];
  *(a1 + 300) = 0;
  v199 = (v10 + v13);
  if ((v10 + v13) == a4)
  {
    v19 = a4 + 1;
  }

  else
  {
    v19 = a4;
  }

  v20 = *(a1 + 44);
  v21 = v9 - (v10 + v20);
  if ((v21 + 1) < 8)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 8;
  }

  if (v9 >= v10 + v20)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 + v20);
  if (v20 < v24)
  {
    v25 = *(a1 + 112);
    v26 = *(a1 + 56);
    v27 = *(a1 + 52);
    v28 = *(a1 + 96);
    v29 = 56 - v27;
    v30 = 24 - v27;
    v31 = a1 + 64;
    if (v195 > 4)
    {
      if (v195 == 5)
      {
        do
        {
          if (v16 == 6)
          {
            v42 = ((0xCF1BBCDCBF9B0000 * *(v10 + v20)) ^ v28) >> v29;
            v43 = v213;
          }

          else
          {
            v43 = v213;
            if (v16 == 5)
            {
              v42 = ((0xCF1BBCDCBB000000 * *(v10 + v20)) ^ v28) >> v29;
            }

            else
            {
              LODWORD(v42) = ((-1640531535 * *(v10 + v20)) ^ v28) >> v30;
            }
          }

          v44 = v42 >> 8 << v43;
          _X5 = v25 + 4 * v44;
          __asm
          {
            PRFM            #0, [X5]
            PRFM            #0, [X5,#0x40]
          }

          _X4 = v26 + v44;
          __asm { PRFM            #0, [X4] }

          *(v31 + 4 * (v20++ & 7)) = v42;
        }

        while (v24 != v20);
      }

      else if (v16 == 6)
      {
        do
        {
          v58 = ((0xCF1BBCDCBF9B0000 * *(v10 + v20)) ^ v28) >> v29;
          v59 = v58 >> 8 << v213;
          _X2 = v25 + 4 * v59;
          __asm
          {
            PRFM            #0, [X2]
            PRFM            #0, [X2,#0x40]
          }

          _X1 = v26 + v59;
          __asm
          {
            PRFM            #0, [X1]
            PRFM            #0, [X1,#0x20]
          }

          *(v31 + 4 * (v20++ & 7)) = v58;
        }

        while (v24 != v20);
      }

      else if (v16 == 5)
      {
        do
        {
          v50 = ((0xCF1BBCDCBB000000 * *(v10 + v20)) ^ v28) >> v29;
          v51 = v50 >> 8 << v213;
          _X2 = v25 + 4 * v51;
          __asm
          {
            PRFM            #0, [X2]
            PRFM            #0, [X2,#0x40]
          }

          _X1 = v26 + v51;
          __asm
          {
            PRFM            #0, [X1]
            PRFM            #0, [X1,#0x20]
          }

          *(v31 + 4 * (v20++ & 7)) = v50;
        }

        while (v24 != v20);
      }

      else
      {
        do
        {
          v66 = ((-1640531535 * *(v10 + v20)) ^ v28) >> v30;
          v67 = v66 >> 8 << v213;
          _X2 = v25 + 4 * v67;
          __asm
          {
            PRFM            #0, [X2]
            PRFM            #0, [X2,#0x40]
          }

          _X1 = v26 + v67;
          __asm
          {
            PRFM            #0, [X1]
            PRFM            #0, [X1,#0x20]
          }

          *(v31 + 4 * (v20++ & 7)) = v66;
        }

        while (v24 != v20);
      }
    }

    else
    {
      do
      {
        if (v16 == 6)
        {
          v32 = ((0xCF1BBCDCBF9B0000 * *(v10 + v20)) ^ v28) >> v29;
          v33 = v213;
        }

        else
        {
          v33 = v213;
          if (v16 == 5)
          {
            v32 = ((0xCF1BBCDCBB000000 * *(v10 + v20)) ^ v28) >> v29;
          }

          else
          {
            LODWORD(v32) = ((-1640531535 * *(v10 + v20)) ^ v28) >> v30;
          }
        }

        v34 = v32 >> 8 << v33;
        _X5 = v25 + 4 * v34;
        __asm { PRFM            #0, [X5] }

        _X4 = v26 + v34;
        __asm { PRFM            #0, [X4] }

        *(v31 + 4 * (v20++ & 7)) = v32;
      }

      while (v24 != v20);
    }
  }

  if (v19 < v9)
  {
    v204 = (v11 + v13);
    v192 = (v11 + v12);
    v207 = v13 - 1;
    v194 = v7 + 64;
    v211 = v8 - 7;
    v196 = v8 - 1;
    v197 = v8 - 3;
    v191 = 1 - v10;
    v190 = v13 + v10 - 2;
    v212 = 1 << v14;
    v189 = 1 - v10 - (1 << v14);
    v208 = v13 + v10 + 8;
    v210 = v7;
    v206 = v13;
    v209 = v16;
    v74 = v213;
    v193 = a2;
    v202 = v10;
    v203 = v9;
    v201 = v11;
    v198 = (v8 - 32);
    while (1)
    {
      v76 = 0;
      v77 = v19 - v10 + 1;
      if (v77 - *(v7 + 28) > v212 && *(v7 + 40) == 0)
      {
        v79 = v77 - v212;
      }

      else
      {
        v79 = *(v7 + 28);
      }

      v80 = (v77 - v18);
      if (v80 >= v13)
      {
        v81 = v10;
      }

      else
      {
        v81 = v11;
      }

      if ((v207 - v80) >= 3 && v18 <= v77 - v79)
      {
        if (*(v19 + 1) == *(v81 + v80))
        {
          if (v80 >= v13)
          {
            v82 = v8;
          }

          else
          {
            v82 = v204;
          }

          v83 = ZSTD_count_2segments(v19 + 5, (v81 + v80 + 4), v8, v82, v199);
          v74 = v213;
          v16 = v209;
          v7 = v210;
          v76 = v83 + 4;
        }

        else
        {
          v76 = 0;
        }
      }

      *v214 = 999999999;
      if (v16 == 6)
      {
        if (v74 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_6(v7, v19, v8, v214);
        }

        else if (v74 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_5(v7, v19, v8, v214);
        }

        else
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_4(v7, v19, v8, v214);
        }
      }

      else if (v16 == 5)
      {
        if (v74 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_6(v7, v19, v8, v214);
        }

        else if (v74 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_5(v7, v19, v8, v214);
        }

        else
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_4(v7, v19, v8, v214);
        }
      }

      else if (v74 == 6)
      {
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_6(v7, v19, v8, v214);
      }

      else if (v74 == 5)
      {
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_5(v7, v19, v8, v214);
      }

      else
      {
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_4(v7, v19, v8, v214);
      }

      if (BestMatch_extDict_6_6 <= v76)
      {
        v13 = v76;
      }

      else
      {
        v13 = BestMatch_extDict_6_6;
      }

      if (v13 < 4)
      {
        v75 = v19 - v5;
        v19 += ((v19 - v5) >> 8) + 1;
        v7 = v210;
        *(v210 + 300) = v75 > 0x8FF;
        v10 = v202;
        LODWORD(v13) = v206;
        v16 = v209;
        v74 = v213;
        goto LABEL_46;
      }

      v85 = BestMatch_extDict_6_6 > v76;
      if (BestMatch_extDict_6_6 <= v76)
      {
        v86 = 1;
      }

      else
      {
        v86 = *v214;
      }

      if (v85)
      {
        v87 = v19;
      }

      else
      {
        v87 = (v19 + 1);
      }

      v7 = v210;
      v16 = v209;
      v74 = v213;
      if (v19 < v9)
      {
        v88 = v8;
        v89 = 0;
        v90 = v190 + v18 - v19;
        v200 = v191 + v19;
        while (1)
        {
          v91 = &v19[v89 + 1];
          if (v86)
          {
            v92 = v189 + v19 + v89;
            if (v200 + v89 - *(v7 + 28) <= v212 || *(v7 + 40) != 0)
            {
              v92 = *(v7 + 28);
            }

            v94 = (v191 + v19 - v18 + v89);
            v95 = v202;
            if (v94 < v206)
            {
              v95 = v201;
            }

            if (v90 >= 3 && v18 <= v200 + v89 - v92 && *v91 == *(v95 + v94))
            {
              if (v94 >= v206)
              {
                v96 = v88;
              }

              else
              {
                v96 = v204;
              }

              v97 = ZSTD_count_2segments(&v19[v89 + 5], (v95 + v94 + 4), v88, v96, v199);
              if (v97 > 0xFFFFFFFFFFFFFFFBLL)
              {
                v7 = v210;
                v74 = v213;
              }

              else
              {
                v7 = v210;
                v74 = v213;
                if (3 * (v97 + 4) > (__clz(v86) + 3 * v13 - 30))
                {
                  v87 = &v19[v89 + 1];
                  v86 = 1;
                  v13 = v97 + 4;
                }
              }
            }
          }

          *v214 = 999999999;
          v98 = &v19[v89 + 1];
          if (v209 == 6)
          {
            if (v74 == 6)
            {
              BestMatch_extDict_5_6 = ZSTD_RowFindBestMatch_extDict_6_6(v7, v98, v88, v214);
            }

            else
            {
              BestMatch_extDict_5_6 = v74 == 5 ? ZSTD_RowFindBestMatch_extDict_6_5(v7, v98, v88, v214) : ZSTD_RowFindBestMatch_extDict_6_4(v7, v98, v88, v214);
            }
          }

          else if (v209 == 5)
          {
            if (v74 == 6)
            {
              BestMatch_extDict_5_6 = ZSTD_RowFindBestMatch_extDict_5_6(v7, v98, v88, v214);
            }

            else
            {
              BestMatch_extDict_5_6 = v74 == 5 ? ZSTD_RowFindBestMatch_extDict_5_5(v7, v98, v88, v214) : ZSTD_RowFindBestMatch_extDict_5_4(v7, v98, v88, v214);
            }
          }

          else if (v74 == 6)
          {
            BestMatch_extDict_5_6 = ZSTD_RowFindBestMatch_extDict_4_6(v7, v98, v88, v214);
          }

          else
          {
            BestMatch_extDict_5_6 = v74 == 5 ? ZSTD_RowFindBestMatch_extDict_4_5(v7, v98, v88, v214) : ZSTD_RowFindBestMatch_extDict_4_4(v7, v98, v88, v214);
          }

          v7 = v210;
          v16 = v209;
          v74 = v213;
          if (BestMatch_extDict_5_6 < 4 || (__clz(v214[0]) + 4 * BestMatch_extDict_5_6 - 31) <= (__clz(v86) + 4 * v13 - 27))
          {
            break;
          }

          ++v89;
          --v90;
          v13 = BestMatch_extDict_5_6;
          v86 = *v214;
          v87 = v91;
          if (&v19[v89] >= v203)
          {
            v87 = &v19[v89];
            v86 = *v214;
            v13 = BestMatch_extDict_5_6;
            break;
          }
        }

        v8 = v88;
        a2 = v193;
        v9 = v203;
      }

      v10 = v202;
      if (v86 > 3)
      {
        v100 = v87 - (v86 + v202) + 3;
        if (v206 <= v100)
        {
          v101 = v202;
        }

        else
        {
          v101 = v201;
        }

        v102 = v199;
        if (v206 > v100)
        {
          v102 = v192;
        }

        if (v87 > v5)
        {
          v103 = v100;
          if (v101 + v100 > v102)
          {
            v104 = (v87 - 1);
            v105 = (v101 + v103 - 1);
            while (*v104 == *v105)
            {
              ++v13;
              v106 = v104 - 1;
              if (v104 > v5)
              {
                --v104;
                v85 = v105-- > v102;
                if (v85)
                {
                  continue;
                }
              }

              v87 = (v106 + 1);
              goto LABEL_147;
            }

            v87 = (v104 + 1);
          }
        }

LABEL_147:
        v205 = v18;
        v18 = (v86 - 3);
      }

      v107 = v87 - v5;
      v108 = *(a2 + 24);
      if (v87 > v198)
      {
        break;
      }

      *v108 = *v5;
      v110 = *(a2 + 24);
      if (v107 > 0x10)
      {
        *(v110 + 16) = *(v5 + 1);
        if (v107 >= 33)
        {
          v111 = v110 + v107;
          v112 = (v110 + 32);
          v113 = (v5 + 48);
          do
          {
            *v112 = *(v113 - 1);
            v114 = *v113;
            v113 += 2;
            v112[1] = v114;
            v112 += 2;
          }

          while (v112 < v111);
        }

        goto LABEL_179;
      }

      *(a2 + 24) = v110 + v107;
      v115 = *(a2 + 8);
      v116 = v195;
      v117 = v194;
LABEL_181:
      *(v115 + 4) = v107;
      *v115 = v86;
      if (v13 - 3 >= 0x10000)
      {
        v135 = (v115 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v135;
      }

      *(v115 + 6) = v13 - 3;
      v136 = v115 + 8;
      *(a2 + 8) = v115 + 8;
      if (*(v7 + 300))
      {
        v137 = *(v7 + 44);
        v138 = v9 - (v202 + v137);
        if ((v138 + 1) < 8)
        {
          v139 = v138 + 1;
        }

        else
        {
          v139 = 8;
        }

        if (v9 >= v202 + v137)
        {
          v140 = v139;
        }

        else
        {
          v140 = 0;
        }

        v141 = (v140 + v137);
        if (v137 < v141)
        {
          v142 = *(v7 + 112);
          v143 = *(v7 + 56);
          v144 = *(v7 + 52);
          v145 = *(v7 + 96);
          v146 = 56 - v144;
          v147 = 24 - v144;
          do
          {
            if (v209 == 5)
            {
              v150 = 0xCF1BBCDCBB000000 * *(v202 + v137);
            }

            else
            {
              if (v209 != 6)
              {
                LODWORD(v151) = ((-1640531535 * *(v202 + v137)) ^ v145) >> v147;
                goto LABEL_200;
              }

              v150 = 0xCF1BBCDCBF9B0000 * *(v202 + v137);
            }

            v151 = (v150 ^ v145) >> v146;
LABEL_200:
            v152 = v151 >> 8 << v74;
            _X0 = v142 + 4 * v152;
            __asm { PRFM            #0, [X0] }

            if (v116 <= 4)
            {
              _X17 = v143 + v152;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X0,#0x40] }

              _X17 = v143 + v152;
              __asm { PRFM            #0, [X17] }

              if (v116 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v117 + 4 * (v137++ & 7)) = v151;
          }

          while (v141 != v137);
        }

        *(v7 + 300) = 0;
      }

      v5 = (v87 + v13);
      if (v87 + v13 > v9)
      {
        v19 = (v87 + v13);
        v11 = v201;
        LODWORD(v13) = v206;
        goto LABEL_46;
      }

      v159 = v18;
      v160 = v205;
      v11 = v201;
      LODWORD(v13) = v206;
      while (1)
      {
        v18 = v160;
        v160 = v159;
        v161 = v5 - v202;
        v162 = *(v7 + 28);
        if (v5 - v202 - v162 > v212 && *(v7 + 40) == 0)
        {
          v162 = v5 - v202 - v212;
        }

        v164 = (v161 - v18);
        v165 = v164 >= v206 ? v202 : v201;
        if ((v207 - v164) < 3)
        {
          break;
        }

        if (v18 > v161 - v162)
        {
          break;
        }

        v166 = v165 + v164;
        if (*v5 != *(v165 + v164))
        {
          break;
        }

        if (v164 >= v206)
        {
          v167 = v8;
        }

        else
        {
          v167 = v204;
        }

        v168 = (v5 + 4);
        v169 = (v166 + 4);
        v170 = &v167[v5 - v166];
        if (v170 >= v8)
        {
          v170 = v8;
        }

        if (v170 - 7 <= v168)
        {
          v171 = v169;
          v173 = (v5 + 4);
        }

        else
        {
          if (*v169 != *v168)
          {
            v176 = __clz(__rbit64(*v168 ^ *v169)) >> 3;
            goto LABEL_242;
          }

          v171 = (v165 + v164 + 12);
          v172 = (v5 + 12);
          while (1)
          {
            v173 = v172;
            if (v172 >= (v170 - 7))
            {
              break;
            }

            v175 = *v171;
            v171 += 4;
            v174 = v175;
            v172 += 8;
            if (v175 != *v173)
            {
              v176 = &v173[__clz(__rbit64(*v173 ^ v174)) >> 3] - v168;
              goto LABEL_242;
            }
          }
        }

        if (v173 < v170 - 3 && *v171 == *v173)
        {
          v171 += 2;
          v173 += 4;
        }

        if (v173 < v170 - 1 && *v171 == *v173)
        {
          ++v171;
          v173 += 2;
        }

        if (v173 < v170 && *v171 == *v173)
        {
          ++v173;
        }

        v176 = v173 - v168;
LABEL_242:
        if (v169 + v176 == v167)
        {
          v178 = &v168[v176];
          if (v211 > v178)
          {
            if (*v199 == *v178)
            {
              v179 = 0;
              v180 = &v5[v176];
              while (1)
              {
                v181 = &v180[v179 + 12];
                if (v181 >= v211)
                {
                  break;
                }

                v182 = *(v208 + v179);
                v183 = *v181;
                v179 += 8;
                if (v182 != v183)
                {
                  v184 = &v180[v179 + 4 + (__clz(__rbit64(v183 ^ v182)) >> 3)];
                  goto LABEL_265;
                }
              }

              v185 = (v208 + v179);
              v184 = &v5[v176 + 12 + v179];
LABEL_256:
              if (v184 < v197 && *v185 == *v184)
              {
                v185 = (v185 + 4);
                v184 += 4;
              }

              if (v184 < v196 && *v185 == *v184)
              {
                v185 = (v185 + 2);
                v184 += 2;
              }

              if (v184 < v8 && *v185 == *v184)
              {
                ++v184;
              }

LABEL_265:
              v186 = v184 - v178;
            }

            else
            {
              v186 = __clz(__rbit64(*v178 ^ *v199)) >> 3;
            }

            v176 += v186;
            if (v5 > v198)
            {
              goto LABEL_245;
            }

LABEL_244:
            **(a2 + 24) = *v5;
            v136 = *(a2 + 8);
            goto LABEL_245;
          }

          v185 = v199;
          v184 = v178;
          goto LABEL_256;
        }

        if (v5 <= v198)
        {
          goto LABEL_244;
        }

LABEL_245:
        *(v136 + 4) = 0;
        *v136 = 1;
        if (v176 + 1 >= 0x10000)
        {
          v177 = (v136 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v177;
        }

        *(v136 + 6) = v176 + 1;
        v136 += 8;
        v5 += v176 + 4;
        *(a2 + 8) = v136;
        v159 = v18;
        v205 = v160;
        v19 = v5;
        if (v5 > v9)
        {
          goto LABEL_46;
        }
      }

      v205 = v18;
      v18 = v159;
      v19 = v5;
LABEL_46:
      if (v19 >= v9)
      {
        goto LABEL_269;
      }
    }

    if (v5 <= v198)
    {
      v109 = (v108 + v198 - v5);
      *v108 = *v5;
      if (v198 - v5 >= 17)
      {
        v118 = v108 + 1;
        v119 = (v5 + 32);
        do
        {
          *v118 = *(v119 - 1);
          v120 = *v119;
          v119 += 2;
          v118[1] = v120;
          v118 += 2;
        }

        while (v118 < v109);
        v5 = v198;
      }

      else
      {
        v5 = v198;
      }

      v108 = v109;
    }

    if (v5 < v87)
    {
      v121 = v87 - v5;
      if (v87 - v5 < 8)
      {
        v123 = v108;
        goto LABEL_178;
      }

      if ((v108 - v5) < 0x20)
      {
        v123 = v108;
        goto LABEL_178;
      }

      if (v121 >= 0x20)
      {
        v122 = v121 & 0xFFFFFFFFFFFFFFE0;
        v124 = (v5 + 16);
        v125 = v108 + 1;
        v126 = v121 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v127 = *v124;
          *(v125 - 1) = *(v124 - 1);
          *v125 = v127;
          v124 += 2;
          v125 += 2;
          v126 -= 32;
        }

        while (v126);
        if (v121 == v122)
        {
          goto LABEL_179;
        }

        if ((v121 & 0x18) == 0)
        {
          v5 += v122;
          v123 = v108 + v122;
          do
          {
LABEL_178:
            v133 = *v5++;
            *v123++ = v133;
          }

          while (v5 != v87);
          goto LABEL_179;
        }
      }

      else
      {
        v122 = 0;
      }

      v128 = v121 & 0xFFFFFFFFFFFFFFF8;
      v123 = v108 + (v121 & 0xFFFFFFFFFFFFFFF8);
      v129 = v122 - (v121 & 0xFFFFFFFFFFFFFFF8);
      v130 = &v5[v122];
      v131 = (v108 + v122);
      do
      {
        v132 = *v130;
        v130 += 8;
        *v131++ = v132;
        v129 += 8;
      }

      while (v129);
      if (v121 != v128)
      {
        v5 += v128;
        goto LABEL_178;
      }
    }

LABEL_179:
    *(a2 + 24) += v107;
    v115 = *(a2 + 8);
    v116 = v195;
    v117 = v194;
    if (v107 >= 0x10000)
    {
      v134 = (v115 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v134;
    }

    goto LABEL_181;
  }

LABEL_269:
  *a3 = v18;
  a3[1] = v205;
  return v8 - v5;
}

int64_t ZSTD_compressBlock_lazy2_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  v7 = &a4[a5 - 8];
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = *(a1 + 256);
  v13 = *(a1 + 272);
  if (v13 >= 6)
  {
    v13 = 6;
  }

  if (v13 <= 4)
  {
    v13 = 4;
  }

  v137 = v13;
  v14 = *a3;
  LODWORD(v15) = a3[1];
  *(a1 + 300) = 0;
  v133 = (v9 + v10);
  if ((v9 + v10) == v5)
  {
    v16 = (v5 + 1);
  }

  else
  {
    v16 = v5;
  }

  v141 = v7;
  if (v16 < v7)
  {
    v17 = a1;
    v18 = (v8 + v10);
    v124 = (v8 + v11);
    v139 = v10 - 1;
    v140 = 1 << v12;
    v126 = v6 - 7;
    v127 = v6 - 32;
    v129 = v6 - 1;
    v130 = v6 - 3;
    v125 = v10 + v9 + 8;
    v135 = v8;
    v136 = v10;
    v131 = (v8 + v10);
    v134 = v9;
    while (1)
    {
      v20 = 0;
      v21 = v16 + 1;
      v22 = v16 - v9;
      v23 = v16 - v9 + 1;
      if (v23 - v17[7] > v140 && v17[10] == 0)
      {
        v25 = v23 - v140;
      }

      else
      {
        v25 = v17[7];
      }

      v26 = (v23 - v14);
      if (v26 >= v10)
      {
        v27 = v9;
      }

      else
      {
        v27 = v8;
      }

      if ((v139 - v26) >= 3 && v14 <= v23 - v25)
      {
        if (*v21 == *(v27 + v26))
        {
          if (v26 >= v10)
          {
            v28 = v6;
          }

          else
          {
            v28 = v18;
          }

          v29 = ZSTD_count_2segments(v16 + 5, (v27 + v26 + 4), v6, v28, v133);
          v17 = a1;
          v20 = v29 + 4;
        }

        else
        {
          v20 = 0;
        }
      }

      *v142 = 999999999;
      v132 = v15;
      if (v137 == 6)
      {
        BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_6(v17, v16, v6, v142);
      }

      else if (v137 == 5)
      {
        BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_5(v17, v16, v6, v142);
      }

      else
      {
        BestMatch_extDict_6 = ZSTD_HcFindBestMatch_extDict_4(v17, v16, v6, v142);
      }

      if (BestMatch_extDict_6 <= v20)
      {
        v31 = v20;
      }

      else
      {
        v31 = BestMatch_extDict_6;
      }

      if (v31 < 4)
      {
        v19 = v16 - v5;
        v16 += ((v16 - v5) >> 8) + 1;
        v17 = a1;
        *(a1 + 300) = v19 > 0x8FF;
        v8 = v135;
        LODWORD(v10) = v136;
        v18 = v131;
        LODWORD(v15) = v132;
        goto LABEL_11;
      }

      if (BestMatch_extDict_6 <= v20)
      {
        v32 = 1;
      }

      else
      {
        v32 = *v142;
      }

      if (BestMatch_extDict_6 > v20)
      {
        v21 = v16;
      }

      v33 = v21;
      v34 = v32;
      BestMatch_extDict_5 = v31;
      v17 = a1;
      if (v16 < v141)
      {
        do
        {
          v36 = v6;
          v33 = (v16 + 1);
          v37 = v22 + 1;
          if (v32)
          {
            if (v37 - v17[7] > v140 && v17[10] == 0)
            {
              v39 = v37 - v140;
            }

            else
            {
              v39 = v17[7];
            }

            v40 = (v37 - v14);
            v41 = v134;
            if (v40 < v136)
            {
              v41 = v135;
            }

            if ((v139 - v40) >= 3 && v14 <= v37 - v39)
            {
              v42 = v41 + v40;
              if (*v33 == *v42)
              {
                if (v40 >= v136)
                {
                  v43 = v36;
                }

                else
                {
                  v43 = v131;
                }

                v44 = ZSTD_count_2segments(v16 + 5, (v42 + 4), v36, v43, v133);
                if (v44 > 0xFFFFFFFFFFFFFFFBLL)
                {
                  v17 = a1;
                }

                else
                {
                  v17 = a1;
                  if (3 * (v44 + 4) > (__clz(v32) + 3 * v31 - 30))
                  {
                    v21 = v16 + 1;
                    v32 = 1;
                    v31 = v44 + 4;
                  }
                }
              }
            }
          }

          *v142 = 999999999;
          v45 = v16 + 1;
          if (v137 == 6)
          {
            BestMatch_extDict_5 = ZSTD_HcFindBestMatch_extDict_6(v17, v45, v36, v142);
          }

          else if (v137 == 5)
          {
            BestMatch_extDict_5 = ZSTD_HcFindBestMatch_extDict_5(v17, v45, v36, v142);
          }

          else
          {
            BestMatch_extDict_5 = ZSTD_HcFindBestMatch_extDict_4(v17, v45, v36, v142);
          }

          v17 = a1;
          if (BestMatch_extDict_5 >= 4 && (v34 = *v142, (__clz(v142[0]) + 4 * BestMatch_extDict_5 - 31) > (__clz(v32) + 4 * v31 - 27)))
          {
            ++v22;
            v6 = v36;
          }

          else
          {
            if (v33 >= v141)
            {
              v33 = v21;
              v34 = v32;
              BestMatch_extDict_5 = v31;
              v6 = v36;
              break;
            }

            v33 = (v16 + 2);
            v22 += 2;
            v6 = v36;
            if (v32)
            {
              if (v22 - *(a1 + 28) > v140 && *(a1 + 40) == 0)
              {
                v47 = v22 - v140;
              }

              else
              {
                v47 = *(a1 + 28);
              }

              v48 = (v22 - v14);
              v49 = v134;
              if (v48 < v136)
              {
                v49 = v135;
              }

              if ((v139 - v48) >= 3 && v14 <= v22 - v47)
              {
                v50 = v49 + v48;
                if (*v33 == *v50)
                {
                  if (v48 >= v136)
                  {
                    v51 = v36;
                  }

                  else
                  {
                    v51 = v131;
                  }

                  v52 = ZSTD_count_2segments(v16 + 6, (v50 + 4), v36, v51, v133);
                  if (v52 > 0xFFFFFFFFFFFFFFFBLL)
                  {
                    v17 = a1;
                  }

                  else
                  {
                    v17 = a1;
                    if ((__clz(v32) + 4 * v31 - 30) < 4 * (v52 + 4))
                    {
                      v21 = v16 + 2;
                      v32 = 1;
                      v31 = v52 + 4;
                    }
                  }
                }
              }
            }

            *v142 = 999999999;
            v53 = v16 + 2;
            if (v137 == 6)
            {
              BestMatch_extDict_5 = ZSTD_HcFindBestMatch_extDict_6(v17, v53, v36, v142);
              if (BestMatch_extDict_5 < 4)
              {
                goto LABEL_102;
              }
            }

            else if (v137 == 5)
            {
              BestMatch_extDict_5 = ZSTD_HcFindBestMatch_extDict_5(v17, v53, v36, v142);
              if (BestMatch_extDict_5 < 4)
              {
                goto LABEL_102;
              }
            }

            else
            {
              BestMatch_extDict_5 = ZSTD_HcFindBestMatch_extDict_4(v17, v53, v36, v142);
              if (BestMatch_extDict_5 < 4)
              {
                goto LABEL_102;
              }
            }

            v34 = *v142;
            if ((__clz(v142[0]) + 4 * BestMatch_extDict_5 - 31) <= (__clz(v32) + 4 * v31 - 24))
            {
LABEL_102:
              v33 = v21;
              v34 = v32;
              BestMatch_extDict_5 = v31;
              v17 = a1;
              break;
            }

            v17 = a1;
          }

          v16 = v33;
          v31 = BestMatch_extDict_5;
          v32 = v34;
          v21 = v33;
        }

        while (v33 < v141);
      }

      v15 = v132;
      if (v34 <= 3)
      {
        v57 = v127;
        v58 = a2;
        v9 = v134;
        v8 = v135;
        LODWORD(v10) = v136;
        v18 = v131;
        v63 = v125;
        v62 = v126;
      }

      else
      {
        v9 = v134;
        v8 = v135;
        v54 = v33 - (v34 + v134) + 3;
        LODWORD(v10) = v136;
        if (v136 <= v54)
        {
          v55 = v134;
        }

        else
        {
          v55 = v135;
        }

        v56 = v133;
        if (v136 > v54)
        {
          v56 = v124;
        }

        v57 = v127;
        v58 = a2;
        if (v33 <= v5 || (v59 = v54, v55 + v54 <= v56))
        {
          v18 = v131;
          v63 = v125;
          v62 = v126;
        }

        else
        {
          v60 = v33 - 1;
          v61 = (v55 + v59 - 1);
          v18 = v131;
          v63 = v125;
          v62 = v126;
          while (*v60 == *v61)
          {
            ++BestMatch_extDict_5;
            v64 = v60 - 1;
            if (v60 > v5)
            {
              --v60;
              if (v61-- > v56)
              {
                continue;
              }
            }

            v33 = v64 + 1;
            goto LABEL_120;
          }

          v33 = v60 + 1;
        }

LABEL_120:
        v15 = v14;
        v14 = (v34 - 3);
      }

      v66 = v33 - v5;
      v67 = *(v58 + 24);
      if (v33 > v57)
      {
        break;
      }

      *v67 = *v5;
      v74 = *(v58 + 24);
      if (v66 > 0x10)
      {
        *(v74 + 16) = *(v5 + 1);
        if (v66 >= 33)
        {
          v75 = v74 + v66;
          v76 = (v74 + 32);
          v77 = (v5 + 48);
          do
          {
            *v76 = *(v77 - 1);
            v78 = *v77;
            v77 += 2;
            v76[1] = v78;
            v76 += 2;
          }

          while (v76 < v75);
        }

        goto LABEL_150;
      }

      *(v58 + 24) = v74 + v66;
      v79 = *(v58 + 8);
LABEL_152:
      *(v79 + 4) = v66;
      *v79 = v34;
      if (BestMatch_extDict_5 - 3 >= 0x10000)
      {
        v92 = (v79 - *v58) >> 3;
        *(v58 + 72) = 2;
        *(v58 + 76) = v92;
      }

      *(v79 + 6) = BestMatch_extDict_5 - 3;
      v93 = v79 + 8;
      *(v58 + 8) = v79 + 8;
      if (v17[75])
      {
        v17[75] = 0;
      }

      v5 = &v33[BestMatch_extDict_5];
      if (&v33[BestMatch_extDict_5] > v141)
      {
        v16 = &v33[BestMatch_extDict_5];
        goto LABEL_11;
      }

      v94 = v14;
      v95 = v15;
      while (1)
      {
        v14 = v95;
        v95 = v94;
        v96 = v5 - v9;
        v97 = v17[7];
        if (v5 - v9 - v97 > v140 && v17[10] == 0)
        {
          v97 = v5 - v9 - v140;
        }

        v99 = (v96 - v14);
        v100 = v99 >= v10 ? v9 : v8;
        if ((v139 - v99) < 3)
        {
          break;
        }

        if (v14 > v96 - v97)
        {
          break;
        }

        v101 = v100 + v99;
        if (*v5 != *(v100 + v99))
        {
          break;
        }

        if (v99 >= v10)
        {
          v102 = v6;
        }

        else
        {
          v102 = v18;
        }

        v103 = (v5 + 4);
        v104 = (v101 + 4);
        v105 = &v102[v5 - v101];
        if (v105 >= v6)
        {
          v105 = v6;
        }

        if (v105 - 7 <= v103)
        {
          v106 = v104;
          v108 = (v5 + 4);
        }

        else
        {
          if (*v104 != *v103)
          {
            v111 = __clz(__rbit64(*v103 ^ *v104)) >> 3;
            goto LABEL_194;
          }

          v106 = (v100 + v99 + 12);
          v107 = (v5 + 12);
          while (1)
          {
            v108 = v107;
            if (v107 >= (v105 - 7))
            {
              break;
            }

            v110 = *v106;
            v106 += 4;
            v109 = v110;
            v107 += 8;
            if (v110 != *v108)
            {
              v111 = &v108[__clz(__rbit64(*v108 ^ v109)) >> 3] - v103;
              goto LABEL_194;
            }
          }
        }

        if (v108 < v105 - 3 && *v106 == *v108)
        {
          v106 += 2;
          v108 += 4;
        }

        if (v108 < v105 - 1 && *v106 == *v108)
        {
          ++v106;
          v108 += 2;
        }

        if (v108 < v105 && *v106 == *v108)
        {
          ++v108;
        }

        v111 = v108 - v103;
LABEL_194:
        if (v104 + v111 == v102)
        {
          v113 = &v103[v111];
          if (v62 > v113)
          {
            if (*v133 == *v113)
            {
              v114 = 0;
              v115 = &v5[v111];
              while (1)
              {
                v116 = &v115[v114 + 12];
                if (v116 >= v62)
                {
                  break;
                }

                v117 = *(v63 + v114);
                v118 = *v116;
                v114 += 8;
                if (v117 != v118)
                {
                  v119 = &v115[v114 + 4 + (__clz(__rbit64(v118 ^ v117)) >> 3)];
                  goto LABEL_217;
                }
              }

              v120 = (v63 + v114);
              v119 = &v5[v111 + 12 + v114];
LABEL_208:
              if (v119 < v130 && *v120 == *v119)
              {
                v120 = (v120 + 4);
                v119 += 4;
              }

              if (v119 < v129 && *v120 == *v119)
              {
                v120 = (v120 + 2);
                v119 += 2;
              }

              if (v119 < v6 && *v120 == *v119)
              {
                ++v119;
              }

LABEL_217:
              v121 = v119 - v113;
            }

            else
            {
              v121 = __clz(__rbit64(*v113 ^ *v133)) >> 3;
            }

            v111 += v121;
            if (v5 > v57)
            {
              goto LABEL_197;
            }

LABEL_196:
            **(v58 + 24) = *v5;
            v93 = *(v58 + 8);
            goto LABEL_197;
          }

          v120 = v133;
          v119 = v113;
          goto LABEL_208;
        }

        if (v5 <= v57)
        {
          goto LABEL_196;
        }

LABEL_197:
        *(v93 + 4) = 0;
        *v93 = 1;
        if (v111 + 1 >= 0x10000)
        {
          v112 = (v93 - *v58) >> 3;
          *(v58 + 72) = 2;
          *(v58 + 76) = v112;
        }

        *(v93 + 6) = v111 + 1;
        v93 += 8;
        v5 += v111 + 4;
        *(v58 + 8) = v93;
        v94 = v14;
        LODWORD(v15) = v95;
        v16 = v5;
        if (v5 > v141)
        {
          goto LABEL_11;
        }
      }

      LODWORD(v15) = v14;
      v14 = v94;
      v16 = v5;
LABEL_11:
      if (v16 >= v141)
      {
        goto LABEL_221;
      }
    }

    if (v5 <= v57)
    {
      v68 = (v67 + v57 - v5);
      *v67 = *v5;
      if (v57 - v5 >= 17)
      {
        v69 = v67 + 1;
        v70 = (v5 + 32);
        do
        {
          *v69 = *(v70 - 1);
          v71 = *v70;
          v70 += 2;
          v69[1] = v71;
          v69 += 2;
        }

        while (v69 < v68);
      }

      v5 = v57;
      v67 = v68;
    }

    if (v5 < v33)
    {
      v72 = v33 - v5;
      if ((v33 - v5) < 8)
      {
        v80 = v67;
        goto LABEL_149;
      }

      if ((v67 - v5) < 0x20)
      {
        v80 = v67;
        goto LABEL_149;
      }

      if (v72 >= 0x20)
      {
        v73 = v72 & 0xFFFFFFFFFFFFFFE0;
        v81 = (v5 + 16);
        v82 = v67 + 1;
        v83 = v72 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v84 = *v81;
          *(v82 - 1) = *(v81 - 1);
          *v82 = v84;
          v81 += 2;
          v82 += 2;
          v83 -= 32;
        }

        while (v83);
        if (v72 == v73)
        {
          goto LABEL_150;
        }

        if ((v72 & 0x18) == 0)
        {
          v5 += v73;
          v80 = v67 + v73;
          do
          {
LABEL_149:
            v90 = *v5++;
            *v80++ = v90;
          }

          while (v5 != v33);
          goto LABEL_150;
        }
      }

      else
      {
        v73 = 0;
      }

      v85 = v72 & 0xFFFFFFFFFFFFFFF8;
      v80 = v67 + (v72 & 0xFFFFFFFFFFFFFFF8);
      v86 = v73 - (v72 & 0xFFFFFFFFFFFFFFF8);
      v87 = &v5[v73];
      v88 = (v67 + v73);
      do
      {
        v89 = *v87;
        v87 += 8;
        *v88++ = v89;
        v86 += 8;
      }

      while (v86);
      if (v72 != v85)
      {
        v5 += v85;
        goto LABEL_149;
      }
    }

LABEL_150:
    *(v58 + 24) += v66;
    v79 = *(v58 + 8);
    if (v66 >= 0x10000)
    {
      v91 = (v79 - *v58) >> 3;
      *(v58 + 72) = 1;
      *(v58 + 76) = v91;
    }

    goto LABEL_152;
  }

LABEL_221:
  *a3 = v14;
  a3[1] = v15;
  return v6 - v5;
}

int64_t ZSTD_compressBlock_lazy2_extDict_row(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v215 = &a4[a5];
  v8 = &a4[a5 - 16];
  v9 = *(a1 + 8);
  v214 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = *(a1 + 28);
  v12 = *(a1 + 256);
  v13 = *(a1 + 272);
  if (v13 >= 6)
  {
    v13 = 6;
  }

  if (v13 <= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(a1 + 268);
  v203 = v15;
  if (v15 >= 6)
  {
    v15 = 6;
  }

  if (v15 <= 4)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  v18 = *a3;
  LODWORD(v17) = a3[1];
  *(a1 + 300) = 0;
  v206 = &v11[v9];
  if (&v11[v9] == a4)
  {
    v19 = a4 + 1;
  }

  else
  {
    v19 = a4;
  }

  v20 = *(a1 + 44);
  v21 = v8 - (v9 + v20);
  if ((v21 + 1) < 8)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 8;
  }

  if (v8 >= v9 + v20)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = (v23 + v20);
  if (v20 < v24)
  {
    v25 = *(a1 + 112);
    v26 = *(a1 + 56);
    v27 = *(a1 + 52);
    v28 = *(a1 + 96);
    v29 = 56 - v27;
    v30 = 24 - v27;
    v31 = a1 + 64;
    if (v203 <= 4)
    {
      while (1)
      {
        if (v14 == 6)
        {
          v32 = 0xCF1BBCDCBF9B0000 * *(v9 + v20);
        }

        else
        {
          if (v14 != 5)
          {
            LODWORD(v33) = ((-1640531535 * *(v9 + v20)) ^ v28) >> v30;
            goto LABEL_25;
          }

          v32 = 0xCF1BBCDCBB000000 * *(v9 + v20);
        }

        v33 = (v32 ^ v28) >> v29;
LABEL_25:
        v34 = v33 >> 8 << v16;
        _X5 = v25 + 4 * v34;
        __asm { PRFM            #0, [X5] }

        _X4 = v26 + v34;
        __asm { PRFM            #0, [X4] }

        *(v31 + 4 * (v20++ & 7)) = v33;
        if (v24 == v20)
        {
          goto LABEL_46;
        }
      }
    }

    if (v203 == 5)
    {
      while (1)
      {
        if (v14 == 6)
        {
          v42 = 0xCF1BBCDCBF9B0000 * *(v9 + v20);
        }

        else
        {
          if (v14 != 5)
          {
            LODWORD(v43) = ((-1640531535 * *(v9 + v20)) ^ v28) >> v30;
            goto LABEL_34;
          }

          v42 = 0xCF1BBCDCBB000000 * *(v9 + v20);
        }

        v43 = (v42 ^ v28) >> v29;
LABEL_34:
        v44 = v43 >> 8 << v16;
        _X5 = v25 + 4 * v44;
        __asm
        {
          PRFM            #0, [X5]
          PRFM            #0, [X5,#0x40]
        }

        _X4 = v26 + v44;
        __asm { PRFM            #0, [X4] }

        *(v31 + 4 * (v20++ & 7)) = v43;
        if (v24 == v20)
        {
          goto LABEL_46;
        }
      }
    }

    if (v14 == 6)
    {
      do
      {
        v58 = ((0xCF1BBCDCBF9B0000 * *(v9 + v20)) ^ v28) >> v29;
        v59 = v58 >> 8 << v16;
        _X2 = v25 + 4 * v59;
        __asm
        {
          PRFM            #0, [X2]
          PRFM            #0, [X2,#0x40]
        }

        _X1 = v26 + v59;
        __asm
        {
          PRFM            #0, [X1]
          PRFM            #0, [X1,#0x20]
        }

        *(v31 + 4 * (v20++ & 7)) = v58;
      }

      while (v24 != v20);
    }

    else if (v14 == 5)
    {
      do
      {
        v50 = ((0xCF1BBCDCBB000000 * *(v9 + v20)) ^ v28) >> v29;
        v51 = v50 >> 8 << v16;
        _X2 = v25 + 4 * v51;
        __asm
        {
          PRFM            #0, [X2]
          PRFM            #0, [X2,#0x40]
        }

        _X1 = v26 + v51;
        __asm
        {
          PRFM            #0, [X1]
          PRFM            #0, [X1,#0x20]
        }

        *(v31 + 4 * (v20++ & 7)) = v50;
      }

      while (v24 != v20);
    }

    else
    {
      do
      {
        v66 = ((-1640531535 * *(v9 + v20)) ^ v28) >> v30;
        v67 = v66 >> 8 << v16;
        _X2 = v25 + 4 * v67;
        __asm
        {
          PRFM            #0, [X2]
          PRFM            #0, [X2,#0x40]
        }

        _X1 = v26 + v67;
        __asm
        {
          PRFM            #0, [X1]
          PRFM            #0, [X1,#0x20]
        }

        *(v31 + 4 * (v20++ & 7)) = v66;
      }

      while (v24 != v20);
    }
  }

LABEL_46:
  if (v19 < v8)
  {
    v74 = &v11[v214];
    v201 = (v214 + v10);
    v212 = v11 - 1;
    v213 = 1 << v12;
    v208 = v9;
    v211 = v14;
    v210 = v16;
    v204 = &v11[v214];
    v202 = a2;
    v207 = v8;
    v209 = v11;
    v199 = &v11[v9 + 8];
    v200 = v215 - 7;
    while (1)
    {
      v205 = v17;
      v77 = 0;
      v78 = v19 + 1;
      v79 = v19 - v9;
      v80 = v19 - v9 + 1;
      if (v80 - *(a1 + 28) > v213 && *(a1 + 40) == 0)
      {
        v82 = v80 - v213;
      }

      else
      {
        v82 = *(a1 + 28);
      }

      v83 = (v80 - v18);
      v84 = v214;
      if (v83 >= v11)
      {
        v84 = v9;
      }

      if ((v212 - v83) >= 3 && v18 <= v80 - v82)
      {
        if (*v78 == *(v84 + v83))
        {
          if (v83 >= v11)
          {
            v74 = v215;
          }

          v85 = ZSTD_count_2segments(v19 + 5, (v84 + v83 + 4), v215, v74, v206);
          v16 = v210;
          v14 = v211;
          v77 = v85 + 4;
        }

        else
        {
          v77 = 0;
        }
      }

      *v216 = 999999999;
      if (v14 == 6)
      {
        if (v16 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_6(a1, v19, v215, v216);
        }

        else if (v16 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_5(a1, v19, v215, v216);
        }

        else
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_6_4(a1, v19, v215, v216);
        }
      }

      else if (v14 == 5)
      {
        if (v16 == 6)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_6(a1, v19, v215, v216);
        }

        else if (v16 == 5)
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_5(a1, v19, v215, v216);
        }

        else
        {
          BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_5_4(a1, v19, v215, v216);
        }
      }

      else if (v16 == 6)
      {
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_6(a1, v19, v215, v216);
      }

      else if (v16 == 5)
      {
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_5(a1, v19, v215, v216);
      }

      else
      {
        BestMatch_extDict_6_6 = ZSTD_RowFindBestMatch_extDict_4_4(a1, v19, v215, v216);
      }

      if (BestMatch_extDict_6_6 <= v77)
      {
        v87 = v77;
      }

      else
      {
        v87 = BestMatch_extDict_6_6;
      }

      if (v87 < 4)
      {
        v75 = v19 - v5;
        v19 += ((v19 - v5) >> 8) + 1;
        *(a1 + 300) = v75 > 0x8FF;
        v76 = v207;
        v9 = v208;
        v14 = v211;
        v16 = v210;
        v74 = v204;
        LODWORD(v17) = v205;
        goto LABEL_49;
      }

      if (BestMatch_extDict_6_6 <= v77)
      {
        v88 = 1;
      }

      else
      {
        v88 = *v216;
      }

      if (BestMatch_extDict_6_6 > v77)
      {
        v78 = v19;
      }

      v11 = v78;
      v89 = v88;
      BestMatch_extDict_6_5 = v87;
      v76 = v207;
      v14 = v211;
      v16 = v210;
      if (v19 < v207)
      {
        do
        {
          v11 = v19 + 1;
          v91 = v79 + 1;
          if (v88)
          {
            if (v91 - *(a1 + 28) > v213 && *(a1 + 40) == 0)
            {
              v93 = v91 - v213;
            }

            else
            {
              v93 = *(a1 + 28);
            }

            v94 = (v91 - v18);
            v95 = v208;
            if (v94 < v209)
            {
              v95 = v214;
            }

            if ((v212 - v94) >= 3 && v18 <= v91 - v93)
            {
              v96 = v95 + v94;
              if (*v11 == *v96)
              {
                if (v94 >= v209)
                {
                  v97 = v215;
                }

                else
                {
                  v97 = v204;
                }

                v98 = ZSTD_count_2segments(v19 + 5, (v96 + 4), v215, v97, v206);
                if (v98 > 0xFFFFFFFFFFFFFFFBLL)
                {
                  v14 = v211;
                }

                else
                {
                  v14 = v211;
                  if (3 * (v98 + 4) > (__clz(v88) + 3 * v87 - 30))
                  {
                    v78 = v19 + 1;
                    v88 = 1;
                    v87 = v98 + 4;
                  }
                }
              }
            }
          }

          *v216 = 999999999;
          v99 = v19 + 1;
          if (v14 == 6)
          {
            if (v210 == 6)
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_6_6(a1, v99, v215, v216);
            }

            else if (v210 == 5)
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_6_5(a1, v99, v215, v216);
            }

            else
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_6_4(a1, v99, v215, v216);
            }
          }

          else if (v14 == 5)
          {
            if (v210 == 6)
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_5_6(a1, v99, v215, v216);
            }

            else if (v210 == 5)
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_5_5(a1, v99, v215, v216);
            }

            else
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_5_4(a1, v99, v215, v216);
            }
          }

          else if (v210 == 6)
          {
            BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_4_6(a1, v99, v215, v216);
          }

          else if (v210 == 5)
          {
            BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_4_5(a1, v99, v215, v216);
          }

          else
          {
            BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_4_4(a1, v99, v215, v216);
          }

          v16 = v210;
          if (BestMatch_extDict_6_5 >= 4 && (v89 = *v216, (__clz(v216[0]) + 4 * BestMatch_extDict_6_5 - 31) > (__clz(v88) + 4 * v87 - 27)))
          {
            ++v79;
            v76 = v207;
            v14 = v211;
          }

          else
          {
            v76 = v207;
            v14 = v211;
            if (v11 >= v207)
            {
              v11 = v78;
              v89 = v88;
              BestMatch_extDict_6_5 = v87;
              break;
            }

            v11 = v19 + 2;
            v79 += 2;
            if (v88)
            {
              if (v79 - *(a1 + 28) > v213 && *(a1 + 40) == 0)
              {
                v101 = v79 - v213;
              }

              else
              {
                v101 = *(a1 + 28);
              }

              v102 = (v79 - v18);
              v103 = v208;
              if (v102 < v209)
              {
                v103 = v214;
              }

              if ((v212 - v102) >= 3 && v18 <= v79 - v101)
              {
                v104 = v103 + v102;
                if (*v11 == *v104)
                {
                  if (v102 >= v209)
                  {
                    v105 = v215;
                  }

                  else
                  {
                    v105 = v204;
                  }

                  v106 = ZSTD_count_2segments(v19 + 6, (v104 + 4), v215, v105, v206);
                  if (v106 > 0xFFFFFFFFFFFFFFFBLL)
                  {
                    v14 = v211;
                  }

                  else
                  {
                    v14 = v211;
                    if ((__clz(v88) + 4 * v87 - 30) < 4 * (v106 + 4))
                    {
                      v78 = v19 + 2;
                      v88 = 1;
                      v87 = v106 + 4;
                    }
                  }
                }
              }
            }

            *v216 = 999999999;
            v107 = v19 + 2;
            if (v14 == 6)
            {
              if (v210 == 6)
              {
                BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_6_6(a1, v107, v215, v216);
                if (BestMatch_extDict_6_5 < 4)
                {
                  goto LABEL_180;
                }
              }

              else if (v210 == 5)
              {
                BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_6_5(a1, v107, v215, v216);
                if (BestMatch_extDict_6_5 < 4)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_6_4(a1, v107, v215, v216);
                if (BestMatch_extDict_6_5 < 4)
                {
                  goto LABEL_180;
                }
              }
            }

            else if (v14 == 5)
            {
              if (v210 == 6)
              {
                BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_5_6(a1, v107, v215, v216);
                if (BestMatch_extDict_6_5 < 4)
                {
                  goto LABEL_180;
                }
              }

              else if (v210 == 5)
              {
                BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_5_5(a1, v107, v215, v216);
                if (BestMatch_extDict_6_5 < 4)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_5_4(a1, v107, v215, v216);
                if (BestMatch_extDict_6_5 < 4)
                {
                  goto LABEL_180;
                }
              }
            }

            else if (v210 == 6)
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_4_6(a1, v107, v215, v216);
              if (BestMatch_extDict_6_5 < 4)
              {
                goto LABEL_180;
              }
            }

            else if (v210 == 5)
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_4_5(a1, v107, v215, v216);
              if (BestMatch_extDict_6_5 < 4)
              {
                goto LABEL_180;
              }
            }

            else
            {
              BestMatch_extDict_6_5 = ZSTD_RowFindBestMatch_extDict_4_4(a1, v107, v215, v216);
              if (BestMatch_extDict_6_5 < 4)
              {
                goto LABEL_180;
              }
            }

            v89 = *v216;
            if ((__clz(v216[0]) + 4 * BestMatch_extDict_6_5 - 31) <= (__clz(v88) + 4 * v87 - 24))
            {
LABEL_180:
              v11 = v78;
              v89 = v88;
              BestMatch_extDict_6_5 = v87;
              v14 = v211;
              v16 = v210;
              break;
            }

            v14 = v211;
            v16 = v210;
          }

          v19 = v11;
          v87 = BestMatch_extDict_6_5;
          v88 = v89;
          v78 = v11;
        }

        while (v11 < v76);
      }

      v17 = v205;
      if (v89 <= 3)
      {
        v9 = v208;
        v74 = v204;
        v111 = (v215 - 32);
      }

      else
      {
        v9 = v208;
        v108 = v11 - (v89 + v208) + 3;
        if (v209 <= v108)
        {
          v109 = v208;
        }

        else
        {
          v109 = v214;
        }

        v110 = v206;
        if (v209 > v108)
        {
          v110 = v201;
        }

        v111 = (v215 - 32);
        if (v11 <= v5 || (v112 = v108, v109 + v108 <= v110))
        {
          v74 = v204;
        }

        else
        {
          v113 = (v11 - 1);
          v114 = (v109 + v112 - 1);
          v74 = v204;
          while (*v113 == *v114)
          {
            ++BestMatch_extDict_6_5;
            v115 = v113 - 1;
            if (v113 > v5)
            {
              --v113;
              if (v114-- > v110)
              {
                continue;
              }
            }

            v11 = (v115 + 1);
            goto LABEL_198;
          }

          v11 = (v113 + 1);
        }

LABEL_198:
        v17 = v18;
        v18 = (v89 - 3);
      }

      v117 = v11 - v5;
      v118 = *(v202 + 24);
      if (v11 > v111)
      {
        break;
      }

      *v118 = *v5;
      v125 = *(v202 + 24);
      if (v117 > 0x10)
      {
        *(v125 + 16) = *(v5 + 1);
        if (v117 >= 33)
        {
          v126 = v125 + v117;
          v127 = (v125 + 32);
          v128 = (v5 + 48);
          do
          {
            *v127 = *(v128 - 1);
            v129 = *v128;
            v128 += 2;
            v127[1] = v129;
            v127 += 2;
          }

          while (v127 < v126);
        }

        goto LABEL_228;
      }

      *(v202 + 24) = v125 + v117;
      v130 = *(v202 + 8);
      v131 = v203;
      v132 = a1 + 64;
LABEL_230:
      *(v130 + 4) = v117;
      *v130 = v89;
      if (BestMatch_extDict_6_5 - 3 >= 0x10000)
      {
        v145 = (v130 - *v202) >> 3;
        *(v202 + 72) = 2;
        *(v202 + 76) = v145;
      }

      *(v130 + 6) = BestMatch_extDict_6_5 - 3;
      v146 = v130 + 8;
      *(v202 + 8) = v130 + 8;
      if (*(a1 + 300))
      {
        v147 = *(a1 + 44);
        v148 = v76 - (v9 + v147);
        if ((v148 + 1) < 8)
        {
          v149 = v148 + 1;
        }

        else
        {
          v149 = 8;
        }

        if (v76 >= v9 + v147)
        {
          v150 = v149;
        }

        else
        {
          v150 = 0;
        }

        v151 = (v150 + v147);
        if (v147 < v151)
        {
          v152 = *(a1 + 112);
          v153 = *(a1 + 56);
          v154 = *(a1 + 52);
          v155 = *(a1 + 96);
          v156 = 56 - v154;
          v157 = 24 - v154;
          do
          {
            if (v14 == 5)
            {
              v160 = 0xCF1BBCDCBB000000 * *(v9 + v147);
            }

            else
            {
              if (v14 != 6)
              {
                LODWORD(v161) = ((-1640531535 * *(v9 + v147)) ^ v155) >> v157;
                goto LABEL_249;
              }

              v160 = 0xCF1BBCDCBF9B0000 * *(v9 + v147);
            }

            v161 = (v160 ^ v155) >> v156;
LABEL_249:
            v162 = v161 >> 8 << v210;
            _X1 = v152 + 4 * v162;
            __asm { PRFM            #0, [X1] }

            if (v131 <= 4)
            {
              _X17 = v153 + v162;
              __asm { PRFM            #0, [X17] }
            }

            else
            {
              __asm { PRFM            #0, [X1,#0x40] }

              _X17 = v153 + v162;
              __asm { PRFM            #0, [X17] }

              if (v131 != 5)
              {
                __asm { PRFM            #0, [X17,#0x20] }
              }
            }

            *(v132 + 4 * (v147++ & 7)) = v161;
          }

          while (v151 != v147);
        }

        *(a1 + 300) = 0;
      }

      v5 = &v11[BestMatch_extDict_6_5];
      if (&v11[BestMatch_extDict_6_5] > v76)
      {
        v19 = &v11[BestMatch_extDict_6_5];
        LODWORD(v11) = v209;
        goto LABEL_49;
      }

      v169 = v18;
      v170 = v17;
      LODWORD(v11) = v209;
      while (1)
      {
        v18 = v170;
        v170 = v169;
        v171 = v5 - v9;
        v172 = *(a1 + 28);
        if (v5 - v9 - v172 > v213 && *(a1 + 40) == 0)
        {
          v172 = v5 - v9 - v213;
        }

        v174 = (v171 - v18);
        v175 = v174 >= v209 ? v9 : v214;
        if ((v212 - v174) < 3)
        {
          break;
        }

        if (v18 > v171 - v172)
        {
          break;
        }

        v176 = v175 + v174;
        if (*v5 != *(v175 + v174))
        {
          break;
        }

        if (v174 >= v209)
        {
          v177 = v215;
        }

        else
        {
          v177 = v74;
        }

        v178 = (v5 + 4);
        v179 = (v176 + 4);
        v180 = &v177[v5 - v176];
        if (v180 >= v215)
        {
          v180 = v215;
        }

        if (v180 - 7 <= v178)
        {
          v181 = v179;
          v183 = (v5 + 4);
        }

        else
        {
          if (*v179 != *v178)
          {
            v186 = __clz(__rbit64(*v178 ^ *v179)) >> 3;
            goto LABEL_291;
          }

          v181 = (v175 + v174 + 12);
          v182 = (v5 + 12);
          while (1)
          {
            v183 = v182;
            if (v182 >= (v180 - 7))
            {
              break;
            }

            v185 = *v181;
            v181 += 4;
            v184 = v185;
            v182 += 8;
            if (v185 != *v183)
            {
              v186 = &v183[__clz(__rbit64(*v183 ^ v184)) >> 3] - v178;
              goto LABEL_291;
            }
          }
        }

        if (v183 < v180 - 3 && *v181 == *v183)
        {
          v181 += 2;
          v183 += 4;
        }

        if (v183 < v180 - 1 && *v181 == *v183)
        {
          ++v181;
          v183 += 2;
        }

        if (v183 < v180 && *v181 == *v183)
        {
          ++v183;
        }

        v186 = v183 - v178;
LABEL_291:
        if (v179 + v186 == v177)
        {
          v188 = &v178[v186];
          if (v200 > v188)
          {
            if (*v206 == *v188)
            {
              v189 = 0;
              v190 = &v5[v186];
              while (1)
              {
                v191 = &v190[v189 + 12];
                if (v191 >= v200)
                {
                  break;
                }

                v192 = *(v199 + v189);
                v193 = *v191;
                v189 += 8;
                if (v192 != v193)
                {
                  v194 = &v190[v189 + 4 + (__clz(__rbit64(v193 ^ v192)) >> 3)];
                  goto LABEL_314;
                }
              }

              v195 = (v199 + v189);
              v194 = &v5[v186 + 12 + v189];
LABEL_305:
              if (v194 < v215 - 3 && *v195 == *v194)
              {
                v195 = (v195 + 4);
                v194 += 4;
              }

              if (v194 < v215 - 1 && *v195 == *v194)
              {
                v195 = (v195 + 2);
                v194 += 2;
              }

              if (v194 < v215 && *v195 == *v194)
              {
                ++v194;
              }

LABEL_314:
              v196 = v194 - v188;
            }

            else
            {
              v196 = __clz(__rbit64(*v188 ^ *v206)) >> 3;
            }

            v186 += v196;
            if (v5 > v111)
            {
              goto LABEL_294;
            }

LABEL_293:
            **(v202 + 24) = *v5;
            v146 = *(v202 + 8);
            goto LABEL_294;
          }

          v195 = v206;
          v194 = v188;
          goto LABEL_305;
        }

        if (v5 <= v111)
        {
          goto LABEL_293;
        }

LABEL_294:
        *(v146 + 4) = 0;
        *v146 = 1;
        if (v186 + 1 >= 0x10000)
        {
          v187 = (v146 - *v202) >> 3;
          *(v202 + 72) = 2;
          *(v202 + 76) = v187;
        }

        *(v146 + 6) = v186 + 1;
        v146 += 8;
        v5 += v186 + 4;
        *(v202 + 8) = v146;
        v169 = v18;
        LODWORD(v17) = v170;
        v19 = v5;
        if (v5 > v76)
        {
          goto LABEL_49;
        }
      }

      LODWORD(v17) = v18;
      v18 = v169;
      v19 = v5;
LABEL_49:
      if (v19 >= v76)
      {
        goto LABEL_318;
      }
    }

    if (v5 <= v111)
    {
      v119 = (v118 + v111 - v5);
      *v118 = *v5;
      if (v111 - v5 >= 17)
      {
        v120 = v118 + 1;
        v121 = (v5 + 32);
        do
        {
          *v120 = *(v121 - 1);
          v122 = *v121;
          v121 += 2;
          v120[1] = v122;
          v120 += 2;
        }

        while (v120 < v119);
      }

      v5 = v111;
      v118 = v119;
    }

    if (v5 < v11)
    {
      v123 = v11 - v5;
      if ((v11 - v5) < 8)
      {
        v133 = v118;
        goto LABEL_227;
      }

      if ((v118 - v5) < 0x20)
      {
        v133 = v118;
        goto LABEL_227;
      }

      if (v123 >= 0x20)
      {
        v124 = v123 & 0xFFFFFFFFFFFFFFE0;
        v134 = (v5 + 16);
        v135 = v118 + 1;
        v136 = v123 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v137 = *v134;
          *(v135 - 1) = *(v134 - 1);
          *v135 = v137;
          v134 += 2;
          v135 += 2;
          v136 -= 32;
        }

        while (v136);
        if (v123 == v124)
        {
          goto LABEL_228;
        }

        if ((v123 & 0x18) == 0)
        {
          v5 += v124;
          v133 = v118 + v124;
          do
          {
LABEL_227:
            v143 = *v5++;
            *v133++ = v143;
          }

          while (v5 != v11);
          goto LABEL_228;
        }
      }

      else
      {
        v124 = 0;
      }

      v138 = v123 & 0xFFFFFFFFFFFFFFF8;
      v133 = v118 + (v123 & 0xFFFFFFFFFFFFFFF8);
      v139 = v124 - (v123 & 0xFFFFFFFFFFFFFFF8);
      v140 = &v5[v124];
      v141 = (v118 + v124);
      do
      {
        v142 = *v140;
        v140 += 8;
        *v141++ = v142;
        v139 += 8;
      }

      while (v139);
      if (v123 != v138)
      {
        v5 += v138;
        goto LABEL_227;
      }
    }

LABEL_228:
    *(v202 + 24) += v117;
    v130 = *(v202 + 8);
    v131 = v203;
    v132 = a1 + 64;
    if (v117 >= 0x10000)
    {
      v144 = (v130 - *v202) >> 3;
      *(v202 + 72) = 1;
      *(v202 + 76) = v144;
    }

    goto LABEL_230;
  }

LABEL_318:
  *a3 = v18;
  a3[1] = v17;
  return v215 - v5;
}