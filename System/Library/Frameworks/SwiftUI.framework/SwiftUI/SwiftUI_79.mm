void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = *a4 + 32 * a3 - 32;
    v10 = a1 - a3;
LABEL_5:
    v11 = (v8 + 32 * v6);
    v12 = *v11;
    v13 = v11[1];
    v14 = v10;
    v15 = v9;
    while (1)
    {
      v31 = *&v12;
      v32 = *&v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(&v12 + 1);
      v19 = *(&v13 + 1);
      v20 = *(v15 + 16);
      v21 = *(v15 + 24);
      v22 = *(&v12 + 1);
      v23 = *(&v13 + 1);
      MinX = CGRectGetMinX(*&v12);
      v33.origin.x = v31;
      v33.size.width = v32;
      v33.origin.y = v18;
      v33.size.height = v19;
      MinY = CGRectGetMinY(v33);
      v34.origin.x = v16;
      v34.origin.y = v17;
      v34.size.width = v20;
      v34.size.height = v21;
      v26 = CGRectGetMinX(v34);
      v35.origin.x = v16;
      v35.origin.y = v17;
      v35.size.width = v20;
      v35.size.height = v21;
      v27 = CGRectGetMinY(v35);
      if (a5)
      {
        v28 = MinY;
      }

      else
      {
        v28 = MinX;
      }

      if ((a5 & 1) == 0)
      {
        v27 = v26;
      }

      if (v28 >= v27)
      {
LABEL_4:
        ++v6;
        v9 += 32;
        --v10;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      v12 = *(v15 + 32);
      v13 = *(v15 + 48);
      v29 = *(v15 + 16);
      *(v15 + 32) = *v15;
      *(v15 + 48) = v29;
      *v15 = v12;
      *(v15 + 16) = v13;
      v15 -= 32;
      if (__CFADD__(v14++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, __n128 a6)
{
  LOBYTE(v8) = a5;
  v9 = a3[1];
  if (v9 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_132:
      v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12, a6.n128_f64[0]);
    }

    v118 = *(v12 + 2);
    if (v118 >= 2)
    {
      while (*a3)
      {
        v119 = *&v12[16 * v118];
        v120 = *&v12[16 * v118 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * v119), (*a3 + 32 * *&v12[16 * v118 + 16]), (*a3 + 32 * v120), v7, v8 & 1);
        if (v6)
        {
          goto LABEL_110;
        }

        if (v120 < v119)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12, a6.n128_f64[0]);
        }

        if (v118 - 2 >= *(v12 + 2))
        {
          goto LABEL_126;
        }

        v121 = &v12[16 * v118];
        *v121 = v119;
        *(v121 + 1) = v120;
        specialized Array.remove(at:)(v118 - 1);
        v118 = *(v12 + 2);
        if (v118 <= 1)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_136;
    }

LABEL_110:

    return;
  }

  v10 = 0;
  v11 = a5 & 1;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v10;
    v14 = v10 + 1;
    if (v14 >= v9)
    {
      v9 = v14;
    }

    else
    {
      v15 = *a3 + 32 * v14;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      v7 = 32 * v13;
      v20 = *a3 + 32 * v13;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
      v135.origin.x = *v15;
      v135.origin.y = v17;
      v135.size.width = v18;
      v135.size.height = v19;
      MinX = CGRectGetMinX(v135);
      v136.origin.x = v16;
      v136.origin.y = v17;
      v136.size.width = v18;
      v136.size.height = v19;
      MinY = CGRectGetMinY(v136);
      v137.origin.x = v21;
      v137.origin.y = v22;
      v137.size.width = v23;
      v137.size.height = v24;
      v26 = CGRectGetMinX(v137);
      v138.origin.x = v21;
      v138.origin.y = v22;
      v138.size.width = v23;
      v138.size.height = v24;
      v27 = CGRectGetMinY(v138);
      v28 = MinX;
      if (v11)
      {
        v28 = MinY;
      }

      v130 = v28;
      if (!v11)
      {
        v27 = v26;
      }

      v126 = v27;
      v29 = v13 + 2;
      v30 = (v20 + 48);
      while (v9 != v29)
      {
        v8 = v30 + 4;
        v31 = v30[4];
        v32 = v30[2];
        v33 = v30[3];
        v34 = v30[5];
        v35 = *(v30 - 2);
        v36 = *(v30 - 1);
        v37 = *v30;
        v38 = v30[1];
        v139.origin.x = v32;
        v139.origin.y = v33;
        v139.size.width = v31;
        v139.size.height = v34;
        v133 = CGRectGetMinX(v139);
        v140.origin.x = v32;
        v140.origin.y = v33;
        v140.size.width = v31;
        v140.size.height = v34;
        v39 = CGRectGetMinY(v140);
        v141.origin.x = v35;
        v141.origin.y = v36;
        v141.size.width = v37;
        v141.size.height = v38;
        v40 = CGRectGetMinX(v141);
        v142.origin.x = v35;
        v142.origin.y = v36;
        v142.size.width = v37;
        v142.size.height = v38;
        v41 = CGRectGetMinY(v142);
        v42 = v133;
        if (v11)
        {
          v42 = v39;
        }

        else
        {
          v41 = v40;
        }

        ++v29;
        v30 = v8;
        if (v130 < v126 == v42 >= v41)
        {
          v9 = v29 - 1;
          break;
        }
      }

      a6.n128_f64[0] = v130;
      if (v130 < v126)
      {
        if (v9 < v13)
        {
          goto LABEL_129;
        }

        if (v13 < v9)
        {
          v43 = 0;
          v44 = 32 * v9;
          v45 = v13;
          do
          {
            if (v45 != v9 + v43 - 1)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_135;
              }

              v46 = v50 + v7;
              v47 = v50 + v44;
              a6 = *v46;
              v48 = *(v46 + 16);
              v49 = *(v47 - 16);
              *v46 = *(v47 - 32);
              *(v46 + 16) = v49;
              *(v47 - 32) = a6;
              *(v47 - 16) = v48;
            }

            ++v45;
            --v43;
            v44 -= 32;
            v7 += 32;
          }

          while (v45 < v9 + v43);
        }
      }
    }

    v51 = a3[1];
    if (v9 < v51)
    {
      if (__OFSUB__(v9, v13))
      {
        goto LABEL_128;
      }

      if (v9 - v13 < a4)
      {
        if (__OFADD__(v13, a4))
        {
          goto LABEL_130;
        }

        if (v13 + a4 < v51)
        {
          v51 = v13 + a4;
        }

        if (v51 < v13)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v9 != v51)
        {
          break;
        }
      }
    }

    v52 = v9;
    if (v9 < v13)
    {
      goto LABEL_127;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    }

    v54 = *(v12 + 2);
    v53 = *(v12 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v12);
    }

    *(v12 + 2) = v55;
    v56 = &v12[16 * v54];
    *(v56 + 4) = v13;
    *(v56 + 5) = v52;
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    v127 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v12 + 4);
          v59 = *(v12 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_54:
          if (v61)
          {
            goto LABEL_116;
          }

          v74 = &v12[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_119;
          }

          v80 = &v12[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_123;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v84 = &v12[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_68:
        if (v79)
        {
          goto LABEL_118;
        }

        v87 = &v12[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_121;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_75:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (!*a3)
        {
          goto LABEL_134;
        }

        v96 = *&v12[16 * v95 + 32];
        v7 = *&v12[16 * v57 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * v96), (*a3 + 32 * *&v12[16 * v57 + 32]), (*a3 + 32 * v7), v8, v11);
        if (v6)
        {
          goto LABEL_110;
        }

        if (v7 < v96)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12, a6.n128_f64[0]);
        }

        if (v95 >= *(v12 + 2))
        {
          goto LABEL_113;
        }

        v97 = &v12[16 * v95];
        *(v97 + 4) = v96;
        *(v97 + 5) = v7;
        specialized Array.remove(at:)(v57);
        v55 = *(v12 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v12[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_114;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_115;
      }

      v69 = &v12[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_117;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_120;
      }

      if (v73 >= v65)
      {
        v91 = &v12[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_124;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v10 = v127;
    v9 = a3[1];
    LOBYTE(v8) = a5;
    if (v127 >= v9)
    {
      goto LABEL_100;
    }
  }

  v128 = v51;
  v98 = v13;
  v99 = *a3;
  v7 = *a3 + 32 * v9 - 32;
  v122 = v98;
  v100 = (v98 - v9);
LABEL_86:
  v101 = v99 + 32 * v9;
  a6 = *v101;
  v102 = *(v101 + 16);
  v8 = v100;
  v103 = v7;
  while (1)
  {
    v131 = a6.n128_f64[0];
    v134 = *&v102;
    v104 = *v103;
    v105 = *(v103 + 8);
    v106 = a6.n128_f64[1];
    v107 = *(&v102 + 1);
    v108 = *(v103 + 16);
    v109 = *(v103 + 24);
    v110 = a6.n128_u64[1];
    v111 = *(&v102 + 1);
    v112 = CGRectGetMinX(*a6.n128_u64);
    v143.origin.x = v131;
    v143.size.width = v134;
    v143.origin.y = v106;
    v143.size.height = v107;
    v113 = CGRectGetMinY(v143);
    v144.origin.x = v104;
    v144.origin.y = v105;
    v144.size.width = v108;
    v144.size.height = v109;
    v114 = CGRectGetMinX(v144);
    v145.origin.x = v104;
    v145.origin.y = v105;
    v145.size.width = v108;
    v145.size.height = v109;
    a6.n128_f64[0] = CGRectGetMinY(v145);
    if (v11)
    {
      v115 = v113;
    }

    else
    {
      v115 = v112;
    }

    if (!v11)
    {
      a6.n128_f64[0] = v114;
    }

    if (v115 >= a6.n128_f64[0])
    {
LABEL_85:
      ++v9;
      v7 += 32;
      v100 = (v100 - 1);
      if (v9 != v128)
      {
        goto LABEL_86;
      }

      v52 = v128;
      v13 = v122;
      if (v128 < v122)
      {
        goto LABEL_127;
      }

      goto LABEL_35;
    }

    if (!v99)
    {
      break;
    }

    a6 = *(v103 + 32);
    v102 = *(v103 + 48);
    v116 = *(v103 + 16);
    *(v103 + 32) = *v103;
    *(v103 + 48) = v116;
    *v103 = a6;
    *(v103 + 16) = v102;
    v103 -= 32;
    v117 = __CFADD__(v8, 1);
    v8 = (v8 + 1);
    if (v117)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, char *a3, double *a4, char a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 5;
  v13 = a3 - __src;
  v14 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 5;
  if (v12 < v14 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v12] <= a4)
    {
      memmove(a4, __dst, 32 * v12);
    }

    v16 = &v5[4 * v12];
    if (v10 < 32)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_41;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v20 = *v7;
      v21 = v7[1];
      v22 = v7[2];
      v23 = v7[3];
      v24 = *v5;
      v25 = v5[1];
      v26 = v5[2];
      v27 = v5[3];
      v52.origin.x = *v7;
      v52.origin.y = v21;
      v52.size.width = v22;
      v52.size.height = v23;
      MinX = CGRectGetMinX(v52);
      v53.origin.x = v20;
      v53.origin.y = v21;
      v53.size.width = v22;
      v53.size.height = v23;
      MinY = CGRectGetMinY(v53);
      v54.origin.x = v24;
      v54.origin.y = v25;
      v54.size.width = v26;
      v54.size.height = v27;
      v29 = CGRectGetMinX(v54);
      v55.origin.x = v24;
      v55.origin.y = v25;
      v55.size.width = v26;
      v55.size.height = v27;
      v30 = CGRectGetMinY(v55);
      v31 = MinX;
      if (a5)
      {
        v31 = MinY;
      }

      else
      {
        v30 = v29;
      }

      if (v31 < v30)
      {
        break;
      }

      v17 = v5;
      v18 = v8 == v5;
      v5 += 4;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 4;
      if (v5 >= v16)
      {
        goto LABEL_10;
      }
    }

    v17 = v7;
    v18 = v8 == v7;
    v7 += 4;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    v19 = *(v17 + 1);
    *v8 = *v17;
    *(v8 + 1) = v19;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v15] <= a4)
  {
    memmove(a4, __src, 32 * v15);
  }

  v16 = &v5[4 * v15];
  if (v13 >= 32 && v7 > v8)
  {
LABEL_27:
    v32 = v7 - 4;
    v6 -= 32;
    v33 = v16;
    do
    {
      v34 = *(v33 - 32);
      v35 = *(v33 - 24);
      v33 -= 32;
      v36 = (v6 + 32);
      v37 = *(v33 + 16);
      v38 = *(v33 + 24);
      v39 = *(v7 - 4);
      v40 = *(v7 - 3);
      v41 = *(v7 - 2);
      v42 = *(v7 - 1);
      v56.origin.x = v34;
      v56.origin.y = v35;
      v56.size.width = v37;
      v56.size.height = v38;
      v51 = CGRectGetMinX(v56);
      v57.origin.x = v34;
      v57.origin.y = v35;
      v57.size.width = v37;
      v57.size.height = v38;
      v43 = CGRectGetMinY(v57);
      v58.origin.x = v39;
      v58.origin.y = v40;
      v58.size.width = v41;
      v58.size.height = v42;
      v44 = CGRectGetMinX(v58);
      v59.origin.x = v39;
      v59.origin.y = v40;
      v59.size.width = v41;
      v59.size.height = v42;
      v45 = CGRectGetMinY(v59);
      v46 = v51;
      if (a5)
      {
        v46 = v43;
      }

      else
      {
        v45 = v44;
      }

      if (v46 < v45)
      {
        if (v36 != v7)
        {
          v48 = *(v7 - 1);
          *v6 = *v32;
          *(v6 + 1) = v48;
        }

        if (v16 <= v5 || (v7 -= 4, v32 <= v8))
        {
          v7 = v32;
          goto LABEL_41;
        }

        goto LABEL_27;
      }

      if (v36 != v16)
      {
        v47 = *(v33 + 16);
        *v6 = *v33;
        *(v6 + 1) = v47;
      }

      v6 -= 32;
      v16 = v33;
    }

    while (v33 > v5);
    v16 = v33;
  }

LABEL_41:
  if (v7 != v5 || v7 >= (v5 + ((v16 - v5 + (v16 - v5 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v7, v5, 32 * ((v16 - v5) / 32));
  }

  return 1;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x18D00F6C0](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  PresentationDetent.Identifier.hash(into:)(v23, a1, a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = a2 != 0xC000000000000000 || a1 != 2;
    v11 = a2 != 0xC000000000000000 || a1 != 1;
    v12 = a2 != 0xC000000000000000 || a1 != 0;
    v13 = a2 & 0xC000000000000000;
    v14 = a2 >> 62 != 3 || v10;
    v15 = a2 >> 62 != 3 || v11;
    v16 = a2 >> 62 != 3 || v12;
    do
    {
      v17 = *(a3 + 48) + 16 * v8;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        if (v20 == 2)
        {
          if (v13 == 0x8000000000000000 && *&v18 == a1)
          {
            return 1;
          }
        }

        else if (*&v18 | v19 ^ 0xC000000000000000)
        {
          if (v19 == 0xC000000000000000 && *&v18 == 1)
          {
            if ((v15 & 1) == 0)
            {
              return 1;
            }
          }

          else if (!v14)
          {
            return 1;
          }
        }

        else if ((v16 & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        if (v20)
        {
          if (v13 != 0x4000000000000000)
          {
            goto LABEL_24;
          }
        }

        else if (a2 >> 62)
        {
          goto LABEL_24;
        }

        if (v18 == *&a1)
        {
          return 1;
        }
      }

LABEL_24:
      v8 = (v8 + 1) & v9;
    }

    while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

uint64_t specialized Set.contains(_:)(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = *a1;
  v5 = a1[1];
  String.hash(into:)();
  AnyHashable.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    outlined init with copy of SceneRequestCache.Item(*(a2 + 48) + 56 * v8, v12);
    v10 = v12[0] == v4 && v12[1] == v5;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (MEMORY[0x18D00E7E0](&v13, a1 + 2))
    {
      break;
    }

    outlined destroy of SceneRequestCache.Item(v12);
    v8 = (v8 + 1) & v9;
    if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  outlined destroy of SceneRequestCache.Item(v12);
  return 1;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v4);
  if (v7 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v5);
    MEMORY[0x18D00F6F0](v7);
    MEMORY[0x18D00F6F0](v6);
  }

  v9 = *(a1 + 32);
  Hasher._combine(_:)(v9 & 1);
  v10 = Hasher._finalize()();
  v11 = -1 << *(a2 + 32);
  v12 = v10 & ~v11;
  if (((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(a2 + 48) + 48 * v12;
    if (*v14 != v4)
    {
      goto LABEL_10;
    }

    v15 = *(v14 + 16);
    v16 = *(v14 + 32);
    if (v15 != 6)
    {
      break;
    }

    if (v7 == 6)
    {
      goto LABEL_9;
    }

LABEL_10:
    v12 = (v12 + 1) & v13;
    if (((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  if (v7 == 6)
  {
    goto LABEL_10;
  }

  v17 = *(v14 + 8);
  v18 = *(v14 + 24);
  v19 = (v15 ^ v7);
  v20 = v17 == v5 && v19 == 0;
  if (!v20 || v18 != v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  if ((v16 ^ v9))
  {
    goto LABEL_10;
  }

  return 1;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  MEMORY[0x18D00F6F0](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = v10[1] == a2 && *v10 == a1;
    result = v11;
    if (v11)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

double _ArchivedViewHost.viewGraph.getter()
{
  specialized _ArchivedViewHost.viewGraph.getter();

  return result;
}

void _ArchivedViewHost.renderingPhase.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 26) = v2;
}

double _ArchivedViewHost.currentTimestamp.getter@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 32);
  *a1 = result;
  return result;
}

void _ArchivedViewHost.currentTimestamp.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 32) = v2;
}

uint64_t _ArchivedViewHost.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t key path getter for _ArchivedViewHost.content : <A, B>_ArchivedViewHost<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 32);
  v6 = *a1;
  v7 = *(**a1 + 200);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a4, v6 + v7, v5);
}

uint64_t _ArchivedViewHost.content.setter(uint64_t a1)
{
  v3 = *v1;
  specialized _ArchivedViewHost.content.setter(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t (*_ArchivedViewHost.content.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return _ArchivedViewHost.content.modify;
}

double _ArchivedViewHost.environment.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(*v1 + 208));
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

double key path getter for _ArchivedViewHost.environment : <A, B>_ArchivedViewHost<A, B>@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 208));
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t key path setter for _ArchivedViewHost.environment : <A, B>_ArchivedViewHost<A, B>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return _ArchivedViewHost.environment.setter(v4);
}

uint64_t _ArchivedViewHost.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(*v1 + 208));
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return _ArchivedViewHost.content.didset(2);
}

uint64_t (*_ArchivedViewHost.environment.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return _ArchivedViewHost.environment.modify;
}

uint64_t _ArchivedViewHost.content.modify(uint64_t a1, char a2, uint64_t a3)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return _ArchivedViewHost.content.didset(a3);
  }

  return result;
}

double _ArchivedViewHost.size.getter()
{
  v1 = v0 + *(*v0 + 216);
  swift_beginAccess();
  return *v1;
}

uint64_t _ArchivedViewHost.size.setter(double a1, double a2)
{
  v5 = (v2 + *(*v2 + 216));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return _ArchivedViewHost.content.didset(40);
}

uint64_t (*_ArchivedViewHost.size.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return _ArchivedViewHost.size.modify;
}

double _ArchivedViewHost.safeAreaInsets.getter()
{
  v1 = v0 + *(*v0 + 224);
  swift_beginAccess();
  return *v1;
}

uint64_t _ArchivedViewHost.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + *(*v4 + 224));
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return _ArchivedViewHost.content.didset(48);
}

uint64_t _ArchivedViewHost.content.didset(uint64_t a1)
{
  v2 = *v1;
  GraphHost.emptyTransaction(_:)();
  swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, v2);

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t (*_ArchivedViewHost.safeAreaInsets.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return _ArchivedViewHost.safeAreaInsets.modify;
}

uint64_t _ArchivedViewHost.auxiliaryData.getter()
{
  v1 = v0 + *(*v0 + 232);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

double _ArchivedViewHost.auxiliaryData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 232));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of Data?(v6, v7);
}

uint64_t _ArchivedViewHost.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 240);
  swift_beginAccess();
  return (*(*(*(v3 + 88) - 8) + 16))(a1, v1 + v4);
}

uint64_t _ArchivedViewHost.delegate.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 240);
  swift_beginAccess();
  (*(*(*(v3 + 88) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t _ArchivedViewHost.encodesCustomFontsAsURLs.setter(uint64_t result)
{
  if (result)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 72) = *(v1 + 72) & 0xFB | v2;
  return result;
}

uint64_t (*_ArchivedViewHost.encodesCustomFontsAsURLs.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 72) & 4) != 0;
  return _ArchivedViewHost.encodesCustomFontsAsURLs.modify;
}

_BYTE *_ArchivedViewHost.encodesCustomFontsAsURLs.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 72) = *(*result + 72) & 0xFB | v1;
  return result;
}

uint64_t _ArchivedViewHost.encodesPreciseTextLayout.setter(uint64_t result)
{
  if (result)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 72) = *(v1 + 72) & 0xEF | v2;
  return result;
}

uint64_t (*_ArchivedViewHost.encodesPreciseTextLayout.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 72) & 0x10) != 0;
  return _ArchivedViewHost.encodesPreciseTextLayout.modify;
}

_BYTE *_ArchivedViewHost.encodesPreciseTextLayout.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 16;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 72) = *(*result + 72) & 0xEF | v1;
  return result;
}

double _ArchivedViewHost.allowedImageTypes.getter()
{
  specialized _ArchivedViewHost.allowedImageTypes.getter();

  return result;
}

uint64_t _ArchivedViewHost.allowedImageTypes.setter(uint64_t a1)
{
  v3 = *(*v1 + 248);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t _ArchivedViewHost.defaultImageType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 256);
  swift_beginAccess();
  return outlined init with copy of UTType?(v1 + v3, a1);
}

uint64_t _ArchivedViewHost.defaultImageType.setter(uint64_t a1)
{
  v3 = *(*v1 + 256);
  swift_beginAccess();
  outlined assign with take of UTType?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t _ArchivedViewHost.encodesStableDisplayListIdentifiers.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 72) = *(v1 + 72) & 0xFD | v2;
  return result;
}

uint64_t (*_ArchivedViewHost.encodesStableDisplayListIdentifiers.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 72) & 2) != 0;
  return _ArchivedViewHost.encodesStableDisplayListIdentifiers.modify;
}

_BYTE *_ArchivedViewHost.encodesStableDisplayListIdentifiers.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 72) = *(*result + 72) & 0xFD | v1;
  return result;
}

uint64_t _ArchivedViewHost.encodesAssetCatalogReferences.setter(uint64_t result)
{
  if (result)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 72) = *(v1 + 72) & 0xF7 | v2;
  return result;
}

uint64_t (*_ArchivedViewHost.encodesAssetCatalogReferences.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 72) & 8) != 0;
  return _ArchivedViewHost.encodesAssetCatalogReferences.modify;
}

_BYTE *_ArchivedViewHost.encodesAssetCatalogReferences.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 8;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 72) = *(*result + 72) & 0xF7 | v1;
  return result;
}

uint64_t _ArchivedViewHost.encodesIntelligenceContent.setter(uint64_t result)
{
  if (result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 72) = *(v1 + 72) & 0xDF | v2;
  return result;
}

uint64_t (*_ArchivedViewHost.encodesIntelligenceContent.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 72) & 0x20) != 0;
  return _ArchivedViewHost.encodesIntelligenceContent.modify;
}

_BYTE *_ArchivedViewHost.encodesIntelligenceContent.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 32;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 72) = *(*result + 72) & 0xDF | v1;
  return result;
}

uint64_t (*_ArchivedViewHost.deploymentVersion.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 73);
  return _ArchivedViewHost.deploymentVersion.modify;
}

char *_ArchivedViewHost.__allocating_init(content:delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_allocObject();
  v6 = specialized _ArchivedViewHost.init(content:delegate:)(a1, a2);
  (*(*(*(v3 + 88) - 8) + 8))(a2);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v6;
}

char *_ArchivedViewHost.init(content:delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = specialized _ArchivedViewHost.init(content:delegate:)(a1, a2);
  (*(*(*(v5 + 88) - 8) + 8))(a2);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t _ArchivedViewHost.renderUntilStable()()
{
  v1 = *(v0 + 72) == *(v0 + 74) && *(v0 + 73) == *(v0 + 75);
  v2 = *v0;
  if (!v1)
  {
    GraphHost.uninstantiate(immediately:)(0);
  }

  v3 = 32;
  while (1)
  {
    *(v0 + 24) = 1;
    LOBYTE(v5) = 1;
    swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, v2, 0, v5);
    result = ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    if (*(v0 + 49) != 1)
    {
      break;
    }

    *(v0 + 48) = 0;
    if (!--v3)
    {
      return result;
    }
  }

  *(v0 + 48) = 0;
  return result;
}

uint64_t _ArchivedViewHost.archiveIfChanged()()
{
  mainThreadPrecondition()();
  _ArchivedViewHost.renderUntilStable()();
  type metadata accessor for Data?(0, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
  result = static Update.ensure<A>(_:)();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t closure #1 in _ArchivedViewHost.archiveIfChanged()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = type metadata accessor for ArchivedViewCore.Metadata();
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Badge, Spacer)(0, &lazy cache variable for type metadata for (DisplayList, DisplayList.Version), MEMORY[0x1E697DCB0], MEMORY[0x1E697DC98]);
  swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, v4);
  ViewRendererHost.updateViewGraph<A>(body:)();
  v11 = v85;
  if (a1[7] >= v86)
  {

    *a2 = xmmword_18CD77CA0;
    return result;
  }

  v74 = a2;
  v75 = v5;
  v12 = WORD4(v85);
  v13 = HIDWORD(v85);
  a1[7] = v86;
  swift_beginAccess();
  v14 = readEnvironment(_:_:)();
  swift_endAccess();
  v79 = v11;
  if (v14)
  {
    type metadata accessor for Data?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_18CD63400;
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    MEMORY[0x18D00C9B0](0x6E69766968637241, 0xEA00000000002067);
    v83 = a1;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](2618, 0xE200000000000000);
    v83 = v79;
    LOWORD(v84) = v12;
    DWORD1(v84) = v13;
    v16 = DisplayList.description.getter();
    MEMORY[0x18D00C9B0](v16);

    v17 = v85;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 32) = v17;
    print(_:separator:terminator:)();
    v11 = v79;
  }

  type metadata accessor for DataArchiveWriter();
  swift_allocObject();
  v18 = DataArchiveWriter.init()();
  UUID.init()();
  LOBYTE(v85) = *(a1 + 73);
  default argument 1 of ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  v69 = default argument 6 of ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  v19 = v78;
  ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  v77 = v18;
  v88 = _ArchivedViewHost.makeUserInfo(writer:metadata:)(v18, v19);
  v20 = [objc_allocWithZone(MEMORY[0x1E69C70D0]) init];
  *&v85 = v11;
  WORD4(v85) = v12;
  HIDWORD(v85) = v13;
  *(swift_allocObject() + 16) = v20;
  v21 = v20;
  DisplayList.forEachRBDisplayList(_:)();

  static ArchivedViewCore.rbEncoderSetKey.getter();
  v87 = type metadata accessor for RBEncoderSet();
  *&v85 = v21;
  v22 = v79;
  outlined init with take of Any(&v85, &v83);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = v88;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v83, v8, isUniquelyReferenced_nonNull_native);
  v24 = (*(v6 + 8))(v8, v75);
  v88 = v81;
  MEMORY[0x1EEE9AC00](v24);
  *(&v72 - 4) = &v88;
  *(&v72 - 3) = a1;
  v69 = v22;
  v70 = v12;
  v71 = v13;
  v25 = v80;
  v26 = static ProtobufEncoder.encoding(_:)();
  if (!v25)
  {
    v29 = v13;
    v73 = v26;
    v75 = v27;
    v30 = ArchiveWriter.addAttachment(data:)();
    v80 = 0;
    v31 = v30;
    v32 = *(v19 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
    }

    *(v32 + 2) = v34 + 1;
    *&v32[8 * v34 + 32] = v31;
    *(v19 + 8) = v32;
    if ((a1[9] & 2) != 0)
    {
      _DisplayList_StableIdentityMap.init()();
      *&v85 = v79;
      WORD4(v85) = v12;
      HIDWORD(v85) = v29;
      _DisplayList_StableIdentityMap.addIDs(from:root:)();

      *&v85 = v83;
      v40 = v80;
      v41 = static ProtobufEncoder.encoding<A>(_:)();
      if (v40)
      {
        v80 = v40;
        outlined consume of Data._Representation(v73, v75);

        goto LABEL_9;
      }

      v43 = v41;
      v44 = v42;

      v45 = ArchiveWriter.addAttachment(data:)();
      outlined consume of Data._Representation(v43, v44);
      v80 = 0;
      *(v19 + 16) = v45;
      *(v19 + 24) = 0;
    }

    else
    {
    }

    v35 = a1 + *(*a1 + 232);
    swift_beginAccess();
    v36 = *(v35 + 1);
    if (v36 >> 60 != 15)
    {
      v37 = *v35;
      outlined copy of Data._Representation(*v35, *(v35 + 1));
      v38 = v80;
      v39 = ArchiveWriter.addAttachment(data:)();
      v80 = v38;
      if (v38)
      {
        outlined consume of Data?(v37, v36);
LABEL_8:
        outlined consume of Data._Representation(v73, v75);

LABEL_9:
        outlined destroy of ArchivedViewCore.Metadata(v19, MEMORY[0x1E697E930]);
      }

      v46 = v39;
      outlined consume of Data?(v37, v36);
      *(v19 + 32) = v46;
      *(v19 + 40) = 0;
    }

    if ((a1[9] & 0x20) != 0)
    {
      _ArchivedViewHost.intelligenceContent()(&v83);
      v81 = v83;
      v82 = v84;
      lazy protocol witness table accessor for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent();
      v51 = v80;
      v52 = static ProtobufEncoder.encoding<A>(_:)();
      v80 = v51;
      if (v51)
      {

        goto LABEL_8;
      }

      v54 = v52;
      v55 = v53;

      v60 = v80;
      v61 = ArchiveWriter.addAttachment(data:)();
      v80 = v60;
      if (v60)
      {
        goto LABEL_33;
      }

      v62 = v61;
      v63 = *(v19 + 48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 2) + 1, 1, v63);
      }

      v65 = *(v63 + 2);
      v64 = *(v63 + 3);
      if (v65 >= v64 >> 1)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v63);
      }

      outlined consume of Data._Representation(v54, v55);
      *(v63 + 2) = v65 + 1;
      *&v63[8 * v65 + 32] = v62;
      v66 = v78;
      *(v78 + 6) = v63;
      v19 = v66;
    }

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type ArchivedViewCore.Metadata and conformance ArchivedViewCore.Metadata, MEMORY[0x1E697E930], MEMORY[0x1E697E938]);
    v47 = v80;
    v48 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v50 = v74;
    v80 = v47;
    if (v47)
    {

      goto LABEL_8;
    }

    v54 = v48;
    v55 = v49;

    v56 = v80;
    ArchiveWriter.addAttachment(data:)();
    v80 = v56;
    if (!v56)
    {
      outlined consume of Data._Representation(v54, v55);
      v57 = v80;
      v58 = DataArchiveWriter.finalizeData()();
      v80 = v57;
      if (v57)
      {
        outlined destroy of ArchivedViewCore.Metadata(v19, MEMORY[0x1E697E930]);
        outlined consume of Data._Representation(v73, v75);
      }

      else
      {
        v67 = v58;
        v68 = v59;
        outlined destroy of ArchivedViewCore.Metadata(v19, MEMORY[0x1E697E930]);
        outlined consume of Data._Representation(v73, v75);

        *v50 = v67;
        v50[1] = v68;
      }
    }

LABEL_33:
    outlined consume of Data._Representation(v54, v55);
    goto LABEL_8;
  }

  v80 = v25;
  outlined destroy of ArchivedViewCore.Metadata(v19, MEMORY[0x1E697E930]);
}

uint64_t _ArchivedViewHost.makeUserInfo(writer:metadata:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for CodingUserInfoKey();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v38 = MEMORY[0x1E69E7CC8];
  v14 = type metadata accessor for ArchiveWriter();
  static ArchiveWriter.writerKey.getter();
  v37 = v14;
  *&v36 = a1;
  outlined init with take of Any(&v36, v35);

  v15 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v13, isUniquelyReferenced_nonNull_native);
  v17 = *(v8 + 8);
  v17(v13, v7);
  v18 = v34;
  v38 = v34;
  static ArchivedViewCore.archivedViewHostKey.getter();
  v37 = v6;
  *&v36 = v3;
  outlined init with take of Any(&v36, v35);

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v18;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v13, v19);
  v17(v13, v7);
  v20 = v34;
  v38 = v34;
  static ArchivedViewCore.archiveOptionsKey.getter();
  v21 = *(v3 + 36);
  v37 = MEMORY[0x1E697EC88];
  LOWORD(v36) = v21;
  outlined init with take of Any(&v36, v35);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v20;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v13, v22);
  v17(v13, v7);
  v23 = v34;
  v38 = v34;
  static ArchivedViewCore.preferredBundleLanguageKey.getter();
  v24 = type metadata accessor for ArchivedViewCore.Metadata();
  v25 = (a2 + *(v24 + 44));
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;
    v37 = MEMORY[0x1E69E6158];
    *&v36 = v27;
    *(&v36 + 1) = v26;
    outlined init with take of Any(&v36, v35);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v34 = v23;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v10, v28);
    v17(v10, v7);
    v29 = v34;
    v38 = v34;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v10, &v36);
    _sypSgWOhTm_1(&v36, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for Data?);
    v17(v10, v7);
    v29 = v38;
  }

  static ArchivedViewCore.preferredCompositionLanguage.getter();
  v30 = *(a2 + *(v24 + 48));
  type metadata accessor for CTCompositionLanguage(0);
  v37 = v31;
  LOBYTE(v36) = v30;
  outlined init with take of Any(&v36, v35);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v29;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v13, v32);
  v17(v13, v7);
  return v34;
}

uint64_t closure #2 in closure #1 in _ArchivedViewHost.archiveIfChanged()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;

  *(a1 + 32) = v7;
  swift_beginAccess();
  type metadata accessor for CGSize(0);

  ProtobufEncoder.messageField<A>(_:_:)();
  if (!v5)
  {
    ProtobufEncoder.messageField<A>(_:_:)();
  }
}

void *_ArchivedViewHost.archiveStates<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v128 = a3;
  v125 = a2;
  v8 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for ArchivedViewCore.Metadata();
  MEMORY[0x1EEE9AC00](v104);
  v129 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignposter();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v103 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v103 - v18;
  v124 = type metadata accessor for OSSignpostID();
  v109 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v103 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v103 - v26;
  v28 = *(a4 + 8);
  v117 = a1;
  v130 = a4;
  v119 = v28(v128, a4, v25);
  static OSSignposter.archiving.getter();
  OSSignposter.logHandle.getter();
  v126 = v27;
  OSSignpostID.init(log:)();
  v29 = *(v12 + 8);
  v122 = v12 + 8;
  v123 = v11;
  v120 = v29;
  v29(v19, v11);
  static OSSignposter.archiving.getter();
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v30, v31);
  static OSSignpostID.exclusive.getter();
  v32 = OSSignposter.logHandle.getter();
  v33 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v119;
    v35 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18BD4A000, v32, v33, v35, "archiveStates", "statesCount=%{name=statesCount}ld", v34, 0xCu);
    MEMORY[0x18D0110E0](v34, -1, -1);
  }

  v36 = v109;
  v37 = *(v109 + 16);
  v38 = v124;
  v115 = v109 + 16;
  v114 = v37;
  v37(v121, v23, v124);
  v113 = type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v106 = OSSignpostIntervalState.init(id:isOpen:)();
  v39 = *(v36 + 8);
  v109 = v36 + 8;
  v39(v23, v38);
  v120(v16, v123);
  UUID.init()();
  v40 = v132;
  LOBYTE(v135) = *(v132 + 73);
  default argument 1 of ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  v100 = default argument 6 of ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  v41 = v129;
  ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  v42 = v125;
  v118 = _ArchivedViewHost.makeUserInfo(writer:metadata:)(v125, v41);
  result = _DisplayList_StableIdentityMap.init()();
  if ((v119 & 0x8000000000000000) == 0)
  {
    v105 = v39;
    if (v119)
    {
      v110 = *(v40 + 72);
      v111 = *(v130 + 16);
      v112 = v130 + 16;
      v108 = "SWIFTUI_PRINT_TREE";

      v131 = 0;
      v107 = xmmword_18CD63400;
      v44 = v128;
      while (1)
      {
        v45 = v116;
        static OSSignposter.archiving.getter();
        v46 = OSSignposter.logHandle.getter();
        v47 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          v49 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_18BD4A000, v46, v47, v49, "archiveState", "", v48, 2u);
          v50 = v48;
          v44 = v128;
          MEMORY[0x18D0110E0](v50, -1, -1);
        }

        v114(v121, v126, v124);
        swift_allocObject();
        v127 = OSSignpostIntervalState.init(id:isOpen:)();
        v120(v45, v123);
        v135 = v42;
        v51 = v130;
        v111(v131, &v135, v44, v130);
        if (v5)
        {
          break;
        }

        v52 = v132;
        v53 = _ArchivedViewHost.renderUntilStable()();
        MEMORY[0x1EEE9AC00](v53);
        *(&v103 - 4) = v44;
        *(&v103 - 3) = v51;
        v100 = v52;
        static Update.ensure<A>(_:)();
        v54 = v135;
        v55 = v136;
        v56 = DWORD1(v136);
        swift_beginAccess();
        v57 = readEnvironment(_:_:)();
        v58 = swift_endAccess();
        if (v57)
        {
          type metadata accessor for Data?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
          v59 = swift_allocObject();
          *(v59 + 16) = v107;
          v135 = 0;
          *&v136 = 0xE000000000000000;
          _StringGuts.grow(_:)(28);
          MEMORY[0x18D00C9B0](0xD000000000000010, v108 | 0x8000000000000000);
          v133 = v131;
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x18D00C9B0](v60);

          MEMORY[0x18D00C9B0](543584032, 0xE400000000000000);
          v133 = v132;
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x18D00C9B0](2618, 0xE200000000000000);
          v133 = v54;
          LOWORD(v134) = v55;
          DWORD1(v134) = v56;
          v61 = DisplayList.description.getter();
          MEMORY[0x18D00C9B0](v61);
          v52 = v132;

          v62 = v135;
          v63 = v136;
          *(v59 + 56) = MEMORY[0x1E69E6158];
          *(v59 + 32) = v62;
          *(v59 + 40) = v63;
          print(_:separator:terminator:)();
          v44 = v128;
        }

        MEMORY[0x1EEE9AC00](v58);
        *(&v103 - 6) = v44;
        *(&v103 - 5) = v51;
        *(&v103 - 4) = v118;
        *(&v103 - 3) = v52;
        v100 = v54;
        v101 = v55;
        v102 = v56;
        v5 = 0;
        v64 = static ProtobufEncoder.encoding(_:)();
        v66 = v65;
        if ((*(v52 + 72) & 2) != 0)
        {
          v135 = v54;
          LOWORD(v136) = v55;
          DWORD1(v136) = v56;
          _DisplayList_StableIdentityMap.addIDs(from:root:)();
        }

        v67 = v125;
        if ((v110 & 0x20) != 0)
        {
          _ArchivedViewHost.intelligenceContent()(&v135);
          v133 = v135;
          v134 = v136;
          lazy protocol witness table accessor for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent();
          v69 = static ProtobufEncoder.encoding<A>(_:)();
          v71 = v70;

          v72 = ArchiveWriter.addAttachment(data:)();
          v73 = *(v129 + 6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
          }

          v75 = *(v73 + 2);
          v74 = *(v73 + 3);
          if (v75 >= v74 >> 1)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v73);
          }

          outlined consume of Data._Representation(v69, v71);
          *(v73 + 2) = v75 + 1;
          *&v73[8 * v75 + 32] = v72;
          v68 = v129;
          *(v129 + 6) = v73;
          v67 = v125;
        }

        else
        {
          v68 = v129;
        }

        v76 = ArchiveWriter.addAttachment(data:)();
        v77 = *(v68 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v77 + 2) + 1, 1, v77);
        }

        v79 = *(v77 + 2);
        v78 = *(v77 + 3);
        v80 = v67;
        if (v79 >= v78 >> 1)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v77);
        }

        v81 = v131 + 1;
        outlined consume of Data._Representation(v64, v66);
        *(v77 + 2) = v79 + 1;
        *&v77[8 * v79 + 32] = v76;
        v44 = v128;
        v41 = v129;
        *(v129 + 1) = v77;
        v40 = v132;
        $defer #1 <A, B><A1>() in _ArchivedViewHost.archiveStates<A>(_:to:)(v132, v127, v44, v130, "archiveState");

        v131 = v81;
        v82 = v119 == v81;
        v42 = v80;
        if (v82)
        {
          goto LABEL_28;
        }
      }

      v40 = v132;
      $defer #1 <A, B><A1>() in _ArchivedViewHost.archiveStates<A>(_:to:)(v132, v127, v44, v51, "archiveState");

      outlined destroy of ArchivedViewCore.Metadata(v41, MEMORY[0x1E697E930]);
      goto LABEL_39;
    }

    v44 = v128;
LABEL_28:

    if ((*(v40 + 72) & 2) != 0)
    {
      v135 = v137;
      v85 = static ProtobufEncoder.encoding<A>(_:)();
      if (v5)
      {

        outlined destroy of ArchivedViewCore.Metadata(v41, MEMORY[0x1E697E930]);
        v51 = v130;
        goto LABEL_39;
      }

      v89 = v85;
      v90 = v86;

      v91 = ArchiveWriter.addAttachment(data:)();
      outlined consume of Data._Representation(v89, v90);
      *(v41 + 16) = v91;
      *(v41 + 24) = 0;
    }

    else
    {
    }

    v51 = v130;
    v83 = (*(v130 + 24))(v44, v130);
    if (!v5)
    {
      if (v84 >> 60 != 15)
      {
        v87 = v83;
        v88 = v84;
        v92 = ArchiveWriter.addAttachment(data:)();
        outlined consume of Data?(v87, v88);
        *(v41 + 32) = v92;
        *(v41 + 40) = 0;
      }

      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type ArchivedViewCore.Metadata and conformance ArchivedViewCore.Metadata, MEMORY[0x1E697E930], MEMORY[0x1E697E938]);
      v93 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v95 = v94;

      ArchiveWriter.addAttachment(data:)();
      outlined consume of Data._Representation(v93, v95);
      dispatch thunk of ArchiveWriter.finalize()();
      outlined destroy of ArchivedViewCore.Metadata(v41, MEMORY[0x1E697E930]);

      v96 = v40;
      v97 = v106;
      v98 = v44;
      v99 = v130;
      goto LABEL_40;
    }

    outlined destroy of ArchivedViewCore.Metadata(v41, MEMORY[0x1E697E930]);

LABEL_39:
    v96 = v40;
    v97 = v106;
    v98 = v44;
    v99 = v51;
LABEL_40:
    $defer #1 <A, B><A1>() in _ArchivedViewHost.archiveStates<A>(_:to:)(v96, v97, v98, v99, "archiveStates");

    return v105(v126, v124);
  }

  __break(1u);
  return result;
}

uint64_t $defer #1 <A, B><A1>() in _ArchivedViewHost.archiveStates<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v24 = a5;
  v5 = type metadata accessor for OSSignpostError();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for OSSignpostID();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for OSSignposter();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static OSSignposter.archiving.getter();
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v22 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v16 = v23;
    if ((*(v23 + 88))(v7, v5) == *MEMORY[0x1E69E93E8])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 8))(v7, v5);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18BD4A000, v15, v22, v19, v24, v17, v18, 2u);
    MEMORY[0x18D0110E0](v18, -1, -1);
  }

  (*(v8 + 8))(v10, v25);
  return (*(v12 + 8))(v14, v11);
}

void *closure #1 in _ArchivedViewHost.archiveStates<A>(_:to:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for (Badge, Spacer)(0, &lazy cache variable for type metadata for (DisplayList, DisplayList.Version), MEMORY[0x1E697DCB0], MEMORY[0x1E697DC98]);
  swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, v3);
  result = ViewRendererHost.updateViewGraph<A>(body:)();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  return result;
}

uint64_t closure #2 in _ArchivedViewHost.archiveStates<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v27 = a4;
  v10 = HIDWORD(a5);
  v28 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(MEMORY[0x1E69C70D0]);

  v15 = [v14 init];
  *&v31 = a4;
  v25 = v10;
  v26 = a5;
  WORD4(v31) = a5;
  HIDWORD(v31) = v10;
  *(swift_allocObject() + 16) = v15;
  v16 = v15;
  DisplayList.forEachRBDisplayList(_:)();

  static ArchivedViewCore.rbEncoderSetKey.getter();
  v32 = type metadata accessor for RBEncoderSet();
  *&v31 = v16;
  outlined init with take of Any(&v31, v30);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = a2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v13, isUniquelyReferenced_nonNull_native);
  (*(v11 + 8))(v13, v28);
  v18 = v33;

  *(a1 + 32) = v18;
  v19 = *(*a3 + 216);
  swift_beginAccess();
  v20 = *(a3 + v19);
  v21 = v27;
  v30[0] = v20;
  type metadata accessor for CGSize(0);

  v22 = v29;
  ProtobufEncoder.messageField<A>(_:_:)();
  if (!v22)
  {
    *&v30[0] = v21;
    WORD4(v30[0]) = v26;
    HIDWORD(v30[0]) = v25;
    ProtobufEncoder.messageField<A>(_:_:)();
  }
}

uint64_t protocol witness for ArchivedViewHostStates.auxiliaryData() in conformance _ArchivedViewHost<A, B>.LegacyStates(void *a1)
{
  result = specialized _ArchivedViewHost.LegacyStates.auxiliaryData()(*v1, v1[1], v1[2], v1[3]);
  if (!v2)
  {
    v5 = result;
    outlined copy of Data?(result, v4);
    return v5;
  }

  return result;
}

void _ArchivedViewHost.archiveStates(to:count:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  closure #1 in _ArchivedViewHost.archiveStates(to:count:body:)(partial apply for thunk for @callee_guaranteed (@unowned Int) -> (), v10, a2, v4, a1);
  if (v5)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return;
    }

    __break(1u);
  }

  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }
}

{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  mainThreadPrecondition()();
  if (URL.isFileURL.getter())
  {
    type metadata accessor for FileArchiveWriter();
    (*(v10 + 16))(v12, a1, v9);
    v13 = FileArchiveWriter.__allocating_init(url:)();
    if (!v4)
    {
      _ArchivedViewHost.archiveStates(to:count:body:)(v13, a2, a3, a4);
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

double closure #1 in _ArchivedViewHost.archiveStates(to:count:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v12[3] = a4;
  v6 = *a4;
  v12[0] = a3;
  v12[1] = a1;
  v12[2] = a2;
  v7 = v6;

  v8 = *(v7 + 96);
  v11[0] = *(v7 + 80);
  v11[1] = v8;
  v9 = type metadata accessor for _ArchivedViewHost.LegacyStates(0, v11);
  _ArchivedViewHost.archiveStates<A>(_:to:)(v12, a5, v9, &protocol witness table for _ArchivedViewHost<A, B>.LegacyStates);

  return result;
}

uint64_t _ArchivedViewHost.archiveStates(count:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mainThreadPrecondition()();
  type metadata accessor for DataArchiveWriter();
  swift_allocObject();
  v8 = DataArchiveWriter.init()();
  _ArchivedViewHost.archiveStates(to:count:body:)(v8, a1, a2, a3);
  if (!v4)
  {
    v3 = DataArchiveWriter.finalizeData()();
  }

  return v3;
}

double _ArchivedViewHost.archiveStates(to:count:body:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mainThreadPrecondition()();
  type metadata accessor for FileArchiveWriter();
  v8 = a1;
  v9 = FileArchiveWriter.__allocating_init(file:)();
  _ArchivedViewHost.archiveStates(to:count:body:)(v9, a2, a3, a4);

  return result;
}

uint64_t _ArchivedViewHost.archiveStates<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mainThreadPrecondition()();
  type metadata accessor for DataArchiveWriter();
  swift_allocObject();
  v8 = DataArchiveWriter.init()();
  _ArchivedViewHost.archiveStates<A>(_:to:)(a1, v8, a2, a3);
  if (!v4)
  {
    v3 = DataArchiveWriter.finalizeData()();
  }

  return v3;
}

double _ArchivedViewHost.archiveStates<A>(_:to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  mainThreadPrecondition()();
  type metadata accessor for FileArchiveWriter();
  v8 = a2;
  v9 = FileArchiveWriter.__allocating_init(file:)();
  _ArchivedViewHost.archiveStates<A>(_:to:)(a1, v9, a3, a4);

  return result;
}

void _ArchivedViewHost.archiveStates<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  mainThreadPrecondition()();
  if (URL.isFileURL.getter())
  {
    type metadata accessor for FileArchiveWriter();
    (*(v10 + 16))(v12, a2, v9);
    v13 = FileArchiveWriter.__allocating_init(url:)();
    if (!v4)
    {
      _ArchivedViewHost.archiveStates<A>(_:to:)(a1, v13, a3, a4);
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t _ArchivedViewHost.forEachIdentifiedView(body:)(void (*a1)(_OWORD *), uint64_t a2)
{
  v5 = *v2;
  mainThreadPrecondition()();
  swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, v5);
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();
  _IdentifiedViewTree.forEach(_:)(a1, a2);
  return outlined destroy of _IdentifiedViewTree(&v7);
}

uint64_t _ArchivedViewHost.applyMutation(_:)(uint64_t a1)
{
  _ArchivedViewHost.renderUntilStable()();
  _ArchivedViewHost.preferenceValue<A>(for:)();
  v2 = *(*&v7[0] + 16);
  if (v2)
  {
    v3 = *&v7[0] + 40;
    do
    {
      v4 = *(v3 - 8);
      v5 = *(a1 + 16);
      v7[0] = *a1;
      v7[1] = v5;
      v8 = *(a1 + 32);

      v4(v7);

      v3 += 16;
      --v2;
    }

    while (v2);
  }
}

void *_ArchivedViewHost.preferenceValue<A>(for:)()
{
  v5 = *v4;
  mainThreadPrecondition()();
  swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, v5);

  return ViewGraphRootValueUpdater._preferenceValue<A>(_:)();
}

CGImageRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _ArchivedViewHost.filteredImage(_:)(CGImageRef a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = (*(*(v3 + 104) + 24))(a1, *(v3 + 88));
  swift_endAccess();
  return v4;
}

uint64_t _ArchivedViewHost.imageType(for:)@<X0>(CGImage *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v4 = *v2;
  v5 = type metadata accessor for UTType();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 88);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_0(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v21 = *(v4 + 240);
  swift_beginAccess();
  v22 = v3 + v21;
  v23 = v39;
  (*(v8 + 16))(v11, v22, v7);
  v24 = v4;
  v25 = v40;
  (*(*(v24 + 104) + 32))(v40, v7);
  (*(v8 + 8))(v11, v7);
  v26 = *(v23 + 48);
  if (v26(v17, 1, v5) == 1)
  {
    v27 = CGImageGetUTType(v25);
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      UTType.init(_:)();
    }

    else
    {
      (*(v23 + 56))(v20, 1, 1, v5);
    }

    if (v26(v17, 1, v5) != 1)
    {
      outlined destroy of UTType?(v17);
    }
  }

  else
  {
    (*(v23 + 32))(v20, v17, v5);
    (*(v23 + 56))(v20, 0, 1, v5);
  }

  outlined init with copy of UTType?(v20, v14);
  if (v26(v14, 1, v5) == 1)
  {
    outlined destroy of UTType?(v20);
    outlined destroy of UTType?(v14);
  }

  else
  {
    v29 = *(v23 + 32);
    v30 = v38;
    v29(v38, v14, v5);
    v31 = *(*v3 + 248);
    swift_beginAccess();
    v32 = *(v3 + v31);

    v33 = specialized Set.contains(_:)(v30, v32);

    outlined destroy of UTType?(v20);
    if (v33)
    {
      v34 = v41;
      v29(v41, v30, v5);
      return (*(v23 + 56))(v34, 0, 1, v5);
    }

    (*(v23 + 8))(v30, v5);
  }

  v36 = *(*v3 + 256);
  swift_beginAccess();
  return outlined init with copy of UTType?(v3 + v36, v41);
}

uint64_t _ArchivedViewHost.failedToEncodeView(type:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  (*(*(v3 + 104) + 16))(a1, *(v3 + 88));
  return swift_endAccess();
}

char *_ArchivedViewHost.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 200));

  v2 = outlined consume of Data?(*(v0 + *(*v0 + 232)), *(v0 + *(*v0 + 232) + 8));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 240), v2);

  outlined destroy of UTType?(v0 + *(*v0 + 256));
  return v0;
}

double _ArchivedViewHost.__deallocating_deinit()
{
  _ArchivedViewHost.deinit();

  swift_deallocClassInstance();
  return result;
}

double protocol witness for AnyArchivedViewHost.allowedImageTypes.getter in conformance _ArchivedViewHost<A, B>()
{
  specialized _ArchivedViewHost.allowedImageTypes.getter();

  return result;
}

uint64_t protocol witness for ViewRendererHost.responderNode.getter in conformance _ArchivedViewHost<A, B>()
{
  swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, *v0);

  return ViewGraphRootValueUpdater.responderNode.getter();
}

double protocol witness for ViewGraphOwner.viewGraph.getter in conformance _ArchivedViewHost<A, B>()
{
  specialized _ArchivedViewHost.viewGraph.getter();

  return result;
}

uint64_t (*protocol witness for ViewGraphOwner.currentTimestamp.modify in conformance _ArchivedViewHost<A, B>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _ArchivedViewHost.currentTimestamp.modify(v2);
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance _ArchivedViewHost<A, B>;
}

uint64_t (*protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance _ArchivedViewHost<A, B>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _ArchivedViewHost.valuesNeedingUpdate.modify(v2);
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance _ArchivedViewHost<A, B>;
}

void (*protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _ArchivedViewHost<A, B>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _ArchivedViewHost.renderingPhase.modify(v2);
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

uint64_t (*protocol witness for ViewGraphOwner.externalUpdateCount.modify in conformance _ArchivedViewHost<A, B>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _ArchivedViewHost.externalUpdateCount.modify(v2);
  return protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance _ArchivedViewHost<A, B>;
}

uint64_t _ArchivedViewHost.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  if (type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ViewGraphOwner, MEMORY[0x1E697E590]) == a1)
  {
    v9 = v3;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, v6);
    v3 = *(a1 - 8);
    if (v3[8] == 16)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    result = swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, v6, v9, WitnessTable);
    v9 = v3;
    WitnessTable = result;
    v3 = *(a1 - 8);
    if (v3[8] != 16)
    {
      __break(1u);
      return result;
    }

LABEL_9:
    (v3[2])(a2, &v9, a1);
    return (v3[7])(a2, 0, 1, a1);
  }

  if (type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ViewGraphDelegate, MEMORY[0x1E697F308]) == a1)
  {
    goto LABEL_8;
  }

  v7 = *(*(a1 - 8) + 56);

  return v7(a2, 1, 1, a1);
}

Swift::Void __swiftcall _ArchivedViewHost.updateRootView()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v7 - v4;
  v6 = *(v1 + 200);
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  ViewGraph.setRootView<A>(_:)();
  (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall _ArchivedViewHost.updateEnvironment()()
{
  v1 = (v0 + *(*v0 + 208));
  swift_beginAccess();
  v2 = *v1;
  v3 = one-time initialization token for configuredForPlatform;

  if (v3 != -1)
  {
    swift_once();
  }

  if (v2)
  {
    if (!static EnvironmentValues.configuredForPlatform || v2 != static EnvironmentValues.configuredForPlatform)
    {
      EnvironmentValues._configureForPlatform(traitCollection:)(0);
    }
  }

  else if (static EnvironmentValues.configuredForPlatform)
  {

    EnvironmentValues.plist.setter();
  }

  GraphHost.setEnvironment(_:)();
}

Swift::Void __swiftcall _ArchivedViewHost.updateSize()()
{
  v1 = (v0 + *(*v0 + 216));
  swift_beginAccess();
  ViewGraph.setProposedSize(_:)(*v1);
}

Swift::Void __swiftcall _ArchivedViewHost.updateSafeArea()()
{
  v1 = (v0 + *(*v0 + 224));
  swift_beginAccess();
  type metadata accessor for Data?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>, MEMORY[0x1E697E490], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18CD63400;
  *(v2 + 32) = 1;
  v3 = *v1;
  *(v2 + 56) = v1[1];
  *(v2 + 40) = v3;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 1;
  ViewGraph.setSafeAreaInsets(_:)(v2);
}

Swift::Void __swiftcall _ArchivedViewHost.updateContainerSize()()
{
  swift_beginAccess();
  swift_beginAccess();
  CGSize.inset(by:)();
  static ViewSize.fixed(_:)();
  ViewGraph.setContainerSize(_:)();
}

uint64_t protocol witness for GraphDelegate.updateGraph<A>(body:) in conformance _ArchivedViewHost<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, *v3);

  return ViewGraphRootValueUpdater.updateGraph<A>(body:)();
}

void protocol witness for GraphDelegate.graphDidChange() in conformance _ArchivedViewHost<A, B>()
{
  swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, *v0);

  ViewGraphRootValueUpdater.graphDidChange()();
}

double _ArchivedViewHost.sizeThatFits(_:)(uint64_t a1, char a2)
{
  v3 = *v2;
  v7 = a2 & 1;
  _ProposedSize.init(_:)();
  LOBYTE(v5) = v8;
  v6 = v9;
  swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, v3, v7, v5);
  ViewRendererHost.sizeThatFits(_:)();
  return result;
}

uint64_t specialized _ArchivedViewHost.requestUpdate(after:)()
{
  if (v0[6])
  {
    *(v0 + 49) = 1;
  }

  else
  {
    v1 = *v0;
    swift_beginAccess();
    (*(*(v1 + 104) + 8))(*(v1 + 88));
    return swift_endAccess();
  }

  return result;
}

uint64_t specialized _ArchivedViewHost.content.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  return _ArchivedViewHost.content.didset(1);
}

uint64_t specialized _ArchivedViewHost.allowedImageTypes.getter()
{
  v1 = *(*v0 + 248);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t outlined init with copy of UTType?(uint64_t a1, uint64_t a2)
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_0(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of UTType?(uint64_t a1, uint64_t a2)
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_0(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *specialized _ArchivedViewHost.init(content:delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *v2;
  *(v2 + 12) = 0;
  v2[26] = 0;
  *(v2 + 7) = 0;
  v7 = v6;
  type metadata accessor for _DisplayList_StableIdentityRoot();
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  *(v2 + 24) = 0;
  *(v2 + 8) = _DisplayList_StableIdentityRoot.__allocating_init()();
  static ArchivedViewInput.Value.isArchived.getter();
  *(v2 + 37) = 768;
  EnvironmentValues.init()();
  v8 = &v3[*(*v3 + 216)];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[*(*v3 + 224)];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *&v2[*(*v2 + 232)] = xmmword_18CD77CA0;
  v10 = *(*v2 + 248);
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E6F90]);
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18CD63410;
  static UTType.png.getter();
  static UTType.jpeg.getter();
  v14 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC22UniformTypeIdentifiers6UTTypeV_SayAFGTt0g5Tf4g_n(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v3[v10] = v14;
  v15 = *(*v3 + 256);
  static UTType.png.getter();
  (*(v12 + 56))(&v3[v15], 0, 1, v11);
  mainThreadPrecondition()();
  v16 = v5[10];
  (*(*(v16 - 8) + 16))(&v3[*(*v3 + 200)], a1, v16);
  v17 = v5[11];
  v18 = (*(*(v17 - 8) + 16))(&v3[*(*v3 + 240)], a2, v17);
  MEMORY[0x18D00ABE0](v18);
  type metadata accessor for PlatformColorDefinition();
  type metadata accessor for UIKitPlatformColorDefinition(0);
  static PlatformSystemDefinition.uiKit.getter();
  static PlatformColorDefinition.setInternalDefinition(_:system:)();
  type metadata accessor for ViewGraph();
  LOBYTE(v29) = 17;
  v19 = v5[12];
  *(v3 + 2) = ViewGraph.__allocating_init<A>(rootViewType:requestedOutputs:)();
  *&v20 = v19;
  *(&v20 + 1) = *(v7 + 104);
  v26 = v20;

  swift_weakInit();

  *&v21 = v16;
  *(&v21 + 1) = v17;
  v29 = v21;
  v30 = v26;
  v22 = type metadata accessor for _ArchivedViewHost.ArchiveHostViewGraph(0, &v29);
  swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>.ArchiveHostViewGraph, v22);
  ViewGraph.append<A>(feature:)();
  (*(*(v22 - 8) + 8))(v27, v22);

  AccessibilityViewGraph.init(graph:)(v23, v27);
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  ViewGraph.append<A>(feature:)();
  v29 = v27[0];
  v30 = v27[1];
  v31 = v27[2];
  v32 = v28;
  outlined destroy of AccessibilityViewGraph(&v29);

  ViewGraph.setRootView<A>(_:)();

  swift_getWitnessTable(protocol conformance descriptor for _ArchivedViewHost<A, B>, v7);
  ViewGraphRootValueUpdater.initializeViewGraph()();
  static Update.end()();
  return v3;
}

void type metadata completion function for _ArchivedViewHost(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      _s22UniformTypeIdentifiers6UTTypeVSgMaTm_0(319, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t outlined destroy of ArchivedViewCore.Metadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent()
{
  result = lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent;
  if (!lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedIntelligenceContent, &type metadata for ArchivedIntelligenceContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent;
  if (!lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedIntelligenceContent, &type metadata for ArchivedIntelligenceContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent;
  if (!lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedIntelligenceContent, &type metadata for ArchivedIntelligenceContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent;
  if (!lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedIntelligenceContent, &type metadata for ArchivedIntelligenceContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent;
  if (!lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivedIntelligenceContent, &type metadata for ArchivedIntelligenceContent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedIntelligenceContent and conformance ArchivedIntelligenceContent);
  }

  return result;
}

unint64_t type metadata accessor for RBEncoderSet()
{
  result = lazy cache variable for type metadata for RBEncoderSet;
  if (!lazy cache variable for type metadata for RBEncoderSet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBEncoderSet);
  }

  return result;
}

void *initializeWithCopy for _ArchivedViewHost.LegacyStates(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for _ArchivedViewHost.LegacyStates(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  a1[3] = a2[3];

  return a1;
}

uint64_t assignWithTake for _ArchivedViewHost.LegacyStates(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t specialized _ArchivedViewHost.LegacyStates.auxiliaryData()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + *(*a4 + 232);
  swift_beginAccess();
  return *v4;
}

double specialized _ArchivedViewHost.ArchiveHostViewGraph.modifyViewInputs(inputs:graph:)(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    PropertyList.subscript.setter();
    lazy protocol witness table accessor for type SwiftUITextAlwaysOnProvider and conformance SwiftUITextAlwaysOnProvider();
    _ViewInputs.textAlwaysOnProvider.setter();
    v5 = v4[72];
    if ((v5 & 2) != 0)
    {

      _ViewInputs.configureStableIDs(root:)();

      v5 = v4[72];
    }

    v6 = v4[73];
    v4[74] = v5;
    v4[75] = v6;
    *(a1 + 36) |= 0x11u;
    swift_beginAccess();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type _ViewInputs.EnvironmentTransform and conformance _ViewInputs.EnvironmentTransform();
    Attribute.init<A>(body:value:flags:update:)();
    _GraphInputs.environment.setter();
  }

  return result;
}

uint64_t PasteHelper.validatedPasteHandler.getter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, double a4)
{
  v62 = a3;
  v66 = type metadata accessor for IndexSet.Index();
  v6 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>(0);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for UTType();
  v11 = *(v64 - 1);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IndexSet();
  v58 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v53 - v16;
  v17 = *(a1 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  v67 = v10;
  v68 = v19;
  v59 = a1;
  if (v17)
  {
    v53 = v6;
    v54 = a2;
    v70[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v20 = v70[0];
    v21 = v11 + 16;
    v22 = *(v11 + 16);
    v23 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v60 = *(v11 + 72);
    v61 = v22;
    v24 = (v11 + 8);
    do
    {
      v25 = v63;
      v26 = v64;
      v27 = v21;
      v61(v63, v23, v64);
      v28 = UTType.identifier.getter();
      v30 = v29;
      (*v24)(v25, v26);
      v70[0] = v20;
      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v20 = v70[0];
      }

      *(v20 + 16) = v32 + 1;
      v33 = v20 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v23 += v60;
      --v17;
      v21 = v27;
    }

    while (v17);
    a2 = v54;
    v13 = v68;
    v18 = MEMORY[0x1E69E7CC0];
    v6 = v53;
  }

  v34 = [objc_opt_self() generalPasteboard];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v36 = [v34 itemSetWithPasteboardTypes_];

  if (v36)
  {
    v64 = v34;
    v37 = a2;
    v38 = v57;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = v18;
    v71 = v18;
    (*(v58 + 16))(v55, v38, v13);
    v39 = MEMORY[0x1E6969B50];
    lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
    dispatch thunk of Sequence.makeIterator()();
    lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, v39, MEMORY[0x1E6969B88]);
    v40 = v65;
    v41 = v67;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
      v42 = v66;
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v6 + 8))(v40, v42);
      if (v43)
      {
        break;
      }

      v44 = dispatch thunk of Collection.subscript.read();
      v46 = *v45;
      v44(v70, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v70[0] = v46;
      v47 = closure #1 in PasteHelper.validatedPasteHandler.getter(v64, v59, v37, v62, &v69);
      if (v69)
      {
        MEMORY[0x18D00CC30](v47);
        if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v54 = v37;
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v37 = v54;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v63 = v71;
      }
    }

    outlined destroy of UTType?(v41, type metadata accessor for IndexingIterator<IndexSet>);
    v48 = v63;
    if (v63 >> 62)
    {
      v52 = __CocoaSet.count.getter();
      v49 = v68;
      if (v52)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v49 = v68;
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_16:
        v50 = v37(v48);

        (*(v58 + 8))(v57, v49);
        return v50;
      }
    }

    (*(v58 + 8))(v57, v49);
  }

  else
  {
  }

  return 0;
}

uint64_t closure #1 in PasteHelper.validatedPasteHandler.getter@<X0>(void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v72 = a4;
  v73 = a5;
  v71 = a3;
  type metadata accessor for UTType?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for UTType();
  v15 = *(v14 - 8);
  v79 = v14;
  v80 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v62 - v18;
  v68 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v82 = (&v62 - v21);
  v22 = type metadata accessor for IndexSet();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v74 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v62 - v26;
  IndexSet.init(integer:)();
  IndexSet._bridgeToObjectiveC()(v28);
  v30 = v29;
  v31 = [a2 pasteboardTypesForItemSet_];

  if (!v31)
  {
    result = (*(v23 + 8))(v27, v22);
    v45 = 0;
LABEL_21:
    *a6 = v45;
    return result;
  }

  v77 = v27;
  v70 = v23;
  type metadata accessor for [String]();
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v32 + 16))
  {
    (*(v70 + 8))(v77, v22);

    v45 = 0;
    goto LABEL_21;
  }

  v65 = v6;
  v66 = v22;
  v63 = a2;
  v64 = a6;
  v33 = *(v32 + 32);

  v81 = *(v33 + 16);
  if (!v81)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v40 = v79;
LABEL_17:

    v46 = v75;
    PasteHelper.availableType(from:)(v39, v71, v75);

    v47 = v80;
    if ((*(v80 + 48))(v46, 1, v40) == 1)
    {
      (*(v70 + 8))(v77, v66);
      result = outlined destroy of UTType?(v46, type metadata accessor for UTType?);
      v45 = 0;
    }

    else
    {
      v82 = *(v47 + 32);
      v48 = v76;
      v82(v76, v46, v40);
      v49 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
      v50 = v40;
      v45 = v49;
      v51 = v69;
      (*(v47 + 16))(v69, v48, v50);
      v52 = v70;
      (*(v70 + 16))(v74, v77, v66);
      v53 = (*(v47 + 80) + 24) & ~*(v47 + 80);
      v54 = (v68 + *(v52 + 80) + v53) & ~*(v52 + 80);
      v55 = swift_allocObject();
      v56 = v63;
      *(v55 + 16) = v63;
      v57 = v51;
      v58 = v79;
      v82((v55 + v53), v57, v79);
      v59 = v66;
      (*(v52 + 32))(v55 + v54, v74, v66);
      v60 = v56;
      v61 = v76;
      NSItemProvider.registerDataRepresentation(for:visibility:loadHandler:)();

      (*(v47 + 8))(v61, v58);
      result = (*(v52 + 8))(v77, v59);
    }

    a6 = v64;
    goto LABEL_21;
  }

  v35 = 0;
  v78 = v33;
  v36 = (v80 + 48);
  v37 = (v80 + 32);
  v38 = v33 + 40;
  v39 = MEMORY[0x1E69E7CC0];
  v40 = v79;
  while (v35 < *(v33 + 16))
  {

    UTType.init(_:)();
    if ((*v36)(v13, 1, v40) == 1)
    {
      result = outlined destroy of UTType?(v13, type metadata accessor for UTType?);
    }

    else
    {
      v41 = *v37;
      (*v37)(v82, v13, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
      }

      v43 = v39[2];
      v42 = v39[3];
      if (v43 >= v42 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v39);
      }

      v39[2] = v43 + 1;
      v44 = v39 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v43;
      v40 = v79;
      result = (v41)(v44, v82, v79);
      v33 = v78;
    }

    ++v35;
    v38 += 16;
    if (v81 == v35)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t PasteHelper.availableType(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v53 = *(a2 + 16);
  if (v53)
  {
    v47 = &v45 - v14;
    v48 = v17;
    v49 = a3;
    v50 = v16;
    v19 = 0;
    v20 = *(v15 + 16);
    v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v22 = *(v15 + 72);
    v23 = a2 + v21;
    v24 = a1 + v21;
    v55 = (v15 + 8);
    v56 = v20;
    v25 = a1;
    v26 = a1 + v21;
    v51 = v15;
    v52 = v23;
    v54 = v15 + 16;
    do
    {
      v27 = v23 + v22 * v19++;
      v20(v11, v27, v6, v18);
      v28 = v25;
      v29 = *(v25 + 16) + 1;
      v30 = v24;
      while (--v29)
      {
        lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
        v30 += v22;
        v24 = v26;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v36 = v51;
          v37 = *(v51 + 32);
          v38 = v48;
          v37(v48, v11, v6);
          v39 = v47;
          v37(v47, v38, v6);
          a3 = v49;
          v37(v49, v39, v6);
          v15 = v36;
          v40 = 0;
          return (*(v15 + 56))(a3, v40, 1, v6);
        }
      }

      v31 = *v55;
      (*v55)(v11, v6);
      v23 = v52;
      v25 = v28;
      v20 = v56;
    }

    while (v19 != v53);
    v32 = 0;
    v33 = *(v28 + 16);
    a3 = v49;
    v34 = v50;
    v35 = v46;
    while (1)
    {
      (v20)(v34, v23 + v22 * v32, v6);
      if (v33)
      {
        break;
      }

LABEL_11:
      ++v32;
      v34 = v50;
      v31(v50, v6);
      v40 = 1;
      v23 = v52;
      v15 = v51;
      v20 = v56;
      if (v32 == v53)
      {
        return (*(v15 + 56))(a3, v40, 1, v6);
      }
    }

    v42 = v26;
    v43 = v33;
    while (1)
    {
      v56(v35, v42, v6);
      if (UTType.conforms(to:)())
      {
        break;
      }

      v31(v35, v6);
      v42 += v22;
      if (!--v43)
      {
        goto LABEL_11;
      }
    }

    v31(v50, v6);
    v44 = v51;
    (*(v51 + 32))(a3, v35, v6);
    v15 = v44;
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  return (*(v15 + 56))(a3, v40, 1, v6);
}

uint64_t closure #2 in closure #1 in PasteHelper.validatedPasteHandler.getter(void (*a1)(id, unint64_t, void), double a2, uint64_t a3, void *a4)
{
  v6 = UTType.identifier.getter();
  v7 = MEMORY[0x18D00C850](v6);

  IndexSet._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = [a4 dataForPasteboardType:v7 inItemSet:v9];

  if (v11)
  {
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12[2])
    {
      v11 = v12[4];
      v13 = v12[5];
      outlined copy of Data._Representation(v11, v13);
    }

    else
    {
      v11 = 0;
      v13 = 0xF000000000000000;
    }
  }

  else
  {
    v13 = 0xF000000000000000;
  }

  a1(v11, v13, 0);
  outlined consume of Data?(v11, v13);
  return 0;
}

Swift::Bool __swiftcall PasteHelper.canPaste(_:)(Swift::OpaquePointer_optional a1)
{
  v29 = v1;
  v30 = v2;
  v28 = *&a1.is_nil;
  rawValue = a1.value._rawValue;
  type metadata accessor for UTType?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!rawValue)
  {
    v22 = [objc_opt_self() generalPasteboard];
    v23 = [v22 itemProviders];

    type metadata accessor for NSItemProvider();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }

LABEL_27:
    v7 = __CocoaSet.count.getter();
    goto LABEL_4;
  }

  v6 = rawValue;
  if (rawValue >> 62)
  {
    goto LABEL_27;
  }

LABEL_3:
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (!v7)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_29:

    v24 = v31;
    PasteHelper.availableType(from:)(v10, v28, v31);

    v25 = type metadata accessor for UTType();
    v26 = (*(*(v25 - 8) + 48))(v24, 1, v25) != 1;
    outlined destroy of UTType?(v24, type metadata accessor for UTType?);
    LOBYTE(isUniquelyReferenced_nonNull_native) = v26;
    return isUniquelyReferenced_nonNull_native;
  }

  v9 = 0;
  v32 = v6 & 0xFFFFFFFFFFFFFF8;
  v33 = v6 & 0xC000000000000001;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v33)
    {
      isUniquelyReferenced_nonNull_native = MEMORY[0x18D00E9C0](v9, v6);
    }

    else
    {
      if (v9 >= *(v32 + 16))
      {
        goto LABEL_31;
      }

      isUniquelyReferenced_nonNull_native = *(v6 + 8 * v9 + 32);
    }

    v11 = isUniquelyReferenced_nonNull_native;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = [isUniquelyReferenced_nonNull_native registeredContentTypes];
    type metadata accessor for UTType();
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v14 + 16);
    v16 = v10[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= v10[3] >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v18 = v16 + v15;
      }

      else
      {
        v18 = v16;
      }

      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
      if (*(v14 + 16))
      {
LABEL_21:
        if ((v10[3] >> 1) - v10[2] < v15)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = v10[2];
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_35;
          }

          v10[2] = v21;
        }

        goto LABEL_7;
      }
    }

    if (v15)
    {
      goto LABEL_33;
    }

LABEL_7:
    ++v9;
    if (v12 == v7)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return isUniquelyReferenced_nonNull_native;
}

uint64_t (*closure #1 in PasteHelper.init(supportedContentTypes:payloadAction:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return partial apply for closure #1 in closure #1 in PasteHelper.init(supportedContentTypes:payloadAction:);
}

uint64_t PasteHelper.init<A>(onPaste:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = static Transferable.readableContentTypes.getter();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  return v8;
}

uint64_t (*closure #1 in PasteHelper.init<A>(onPaste:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;

  return partial apply for closure #1 in closure #1 in PasteHelper.init<A>(onPaste:);
}

uint64_t closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  type metadata accessor for [NSItemProvider](0);

  AtomicBox.init(wrappedValue:)();
  v13 = v17[1];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = v13;
  v15[7] = a2;
  v15[8] = a3;

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:), v15);

  return outlined destroy of UTType?(v12, type metadata accessor for TaskPriority?);
}

uint64_t closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for TaskPriority?(0);
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for Optional();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(a7 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)()
{
  v0[2] = Array.init()();
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_1(0, &lazy cache variable for type metadata for AtomicBox<[NSItemProvider]>, type metadata accessor for [NSItemProvider], MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  v1 = v0[3];
  v0[17] = v1;
  if (v1 >> 62)
  {
    result = __CocoaSet.count.getter();
    v0[18] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[19] = 0;
        v3 = v0[17];
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x18D00E9C0](0);
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[20] = v4;
        v6 = swift_task_alloc();
        v0[21] = v6;
        *v6 = v0;
        v6[1] = closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:);
        v7 = v0[13];
        v8 = v0[8];
        v9 = v0[9];

        return NSItemProvider.loadTransferable<A>(for:)(v7, v5, v8, v9);
      }

      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[18] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v10 = v0[2];
  v0[4] = v10;
  v11 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v11);
  if (Collection.isEmpty.getter())
  {
  }

  else
  {
    v12 = v0[10];
    v14 = v0[6];
    v13 = v0[7];
    v15 = type metadata accessor for TaskPriority();
    v20 = *(v0 + 4);
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    type metadata accessor for MainActor();

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    *(v17 + 32) = v20;
    *(v17 + 48) = v14;
    *(v17 + 56) = v13;
    *(v17 + 64) = v10;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:), v17);
  }

  v19 = v0[1];

  return v19();
}

{

  if (v0)
  {

    v1 = closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:);
  }

  else
  {
    v1 = closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:);
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 64);

  (*(v2 + 56))(v1, 1, 1, v5);
  (*(v4 + 8))(v1, v3);
  v6 = *(v0 + 152) + 1;
  if (v6 == *(v0 + 144))
  {

    v7 = *(v0 + 16);
    *(v0 + 32) = v7;
    v8 = type metadata accessor for Array();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v8);
    if (Collection.isEmpty.getter())
    {
    }

    else
    {
      v11 = *(v0 + 80);
      v13 = *(v0 + 48);
      v12 = *(v0 + 56);
      v14 = type metadata accessor for TaskPriority();
      v25 = *(v0 + 64);
      (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
      type metadata accessor for MainActor();

      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v17 = MEMORY[0x1E69E85E0];
      *(v16 + 16) = v15;
      *(v16 + 24) = v17;
      *(v16 + 32) = v25;
      *(v16 + 48) = v13;
      *(v16 + 56) = v12;
      *(v16 + 64) = v7;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:), v16);
    }

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    *(v0 + 152) = v6;
    v9 = *(v0 + 136);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x18D00E9C0]();
    }

    else
    {
      v10 = *(v9 + 8 * v6 + 32);
    }

    *(v0 + 160) = v10;
    v21 = swift_task_alloc();
    *(v0 + 168) = v21;
    *v21 = v0;
    v21[1] = closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:);
    v22 = *(v0 + 104);
    v23 = *(v0 + 64);
    v24 = *(v0 + 72);

    return NSItemProvider.loadTransferable<A>(for:)(v22, v20, v23, v24);
  }
}

{
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[8];
  (*(v5 + 56))(v4, 0, 1, v6);
  (*(v5 + 32))(v2, v4, v6);
  (*(v5 + 16))(v3, v2, v6);
  type metadata accessor for Array();
  Array.append(_:)();

  (*(v5 + 8))(v2, v6);
  v7 = v0[19] + 1;
  if (v7 == v0[18])
  {

    v8 = v0[2];
    v0[4] = v8;
    v9 = type metadata accessor for Array();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v9);
    if (Collection.isEmpty.getter())
    {
    }

    else
    {
      v12 = v0[10];
      v14 = v0[6];
      v13 = v0[7];
      v15 = type metadata accessor for TaskPriority();
      v26 = *(v0 + 4);
      (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
      type metadata accessor for MainActor();

      v16 = static MainActor.shared.getter();
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E85E0];
      *(v17 + 16) = v16;
      *(v17 + 24) = v18;
      *(v17 + 32) = v26;
      *(v17 + 48) = v14;
      *(v17 + 56) = v13;
      *(v17 + 64) = v8;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:), v17);
    }

    v19 = v0[1];

    return v19();
  }

  else
  {
    v0[19] = v7;
    v10 = v0[17];
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x18D00E9C0]();
    }

    else
    {
      v11 = *(v10 + 8 * v7 + 32);
    }

    v0[20] = v11;
    v22 = swift_task_alloc();
    v0[21] = v22;
    *v22 = v0;
    v22[1] = closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:);
    v23 = v0[13];
    v24 = v0[8];
    v25 = v0[9];

    return NSItemProvider.loadTransferable<A>(for:)(v23, v21, v24, v25);
  }
}

uint64_t NSItemProvider.loadTransferable<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x1EEE6DFA0](NSItemProvider.loadTransferable<A>(for:), 0, 0);
}

uint64_t NSItemProvider.loadTransferable<A>(for:)()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = NSItemProvider.loadTransferable<A>(for:);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000016, 0x800000018CD44510, partial apply for closure #1 in NSItemProvider.loadTransferable<A>(for:), v2, v5);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](NSItemProvider.loadTransferable<A>(for:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:), v8, v7);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)()
{
  v1 = v0[4];
  v2 = v0[2];

  v2(v1);
  v3 = v0[1];

  return v3();
}

void closure #1 in NSItemProvider.loadTransferable<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Error();
  v7 = type metadata accessor for CheckedContinuation();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v8 + 32))(v13 + v12, v11, v7);
  v14 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();
}

uint64_t closure #1 in closure #1 in NSItemProvider.loadTransferable<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  type metadata accessor for Error();
  v11 = type metadata accessor for Result();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (v17 - v13);
  (*(v15 + 16))(v17 - v13, a1, v11, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17[1] = *v14;
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v5 + 32))(v10, v14, a3);
    (*(v5 + 16))(v7, v10, a3);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(returning:)();
    return (*(v5 + 8))(v10, a3);
  }
}

void PasteHelper.ConfigurationSupport.pasteHelper.didset(uint64_t a1)
{
  v31 = type metadata accessor for UTType();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper);
  if (!v6)
  {
    __break(1u);
    return;
  }

  if (a1)
  {

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ22UniformTypeIdentifiers6UTTypeV_Tt1g5(v7, a1))
    {

      return;
    }
  }

  else
  {
  }

  v8 = *(v6 + 16);
  if (v8)
  {
    v27 = v1;
    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v32;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v12 = *(v10 + 64);
    v26[1] = v6;
    v13 = v6 + ((v12 + 32) & ~v12);
    v28 = *(v10 + 56);
    v29 = v11;
    v30 = v10;
    v14 = (v10 - 8);
    do
    {
      v15 = v31;
      v29(v5, v13, v31);
      v16 = UTType.identifier.getter();
      v18 = v17;
      (*v14)(v5, v15);
      v32 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v9 = v32;
      }

      *(v9 + 16) = v20 + 1;
      v21 = v9 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v13 += v28;
      --v8;
    }

    while (v8);

    v1 = v27;
  }

  else
  {
  }

  v22 = objc_allocWithZone(MEMORY[0x1E69DCD38]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = [v22 initWithAcceptableTypeIdentifiers_];

  v25 = *(v1 + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteConfiguration);
  *(v1 + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteConfiguration) = v24;
}

unint64_t type metadata accessor for NSItemProvider()
{
  result = lazy cache variable for type metadata for NSItemProvider;
  if (!lazy cache variable for type metadata for NSItemProvider)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSItemProvider);
  }

  return result;
}

double outlined copy of PasteHelper?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UTType and conformance UTType(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of UTType?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

uint64_t partial apply for closure #2 in closure #1 in PasteHelper.validatedPasteHandler.getter(void (*a1)(id, unint64_t, void), uint64_t a2)
{
  type metadata accessor for UTType();
  type metadata accessor for IndexSet();
  v6 = *(v2 + 16);

  return closure #2 in closure #1 in PasteHelper.validatedPasteHandler.getter(a1, v5, a2, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(a1, v6, v7, v8, v9, v10, v4, v5);
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in NSItemProvider.loadTransferable<A>(for:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for Error();
  v4 = *(type metadata accessor for CheckedContinuation() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return closure #1 in closure #1 in NSItemProvider.loadTransferable<A>(for:)(a1, v5, v3);
}

uint64_t assignWithCopy for NavigationSplitReader(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>(*a2, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v7, v8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  return a1;
}

uint64_t assignWithTake for NavigationSplitReader(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v5, v6);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationSplitReader(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationSplitReader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Location.update()(_BYTE *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  Strong = swift_weakLoadStrong();
  if (Strong && (v7 = Strong, swift_beginAccess(), v8 = v7[8], v31 = v7[7], v32 = v8, v33[0] = v7[9], *(v33 + 10) = *(v7 + 154), v9 = v7[4], v27 = v7[3], v28 = v9, v10 = v7[6], v29 = v7[5], v30 = v10, v11 = v7[2], v25 = v7[1], v26 = v11, outlined init with copy of NavigationAuthority?(&v25, v23, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v34[6] = v31, v34[7] = v32, v35[0] = v33[0], *(v35 + 10) = *(v33 + 10), v34[2] = v27, v34[3] = v28, v34[4] = v29, v34[5] = v30, v34[0] = v25, v34[1] = v26, getEnumTag for AccessibilityActionCategory.Category(v34) != 1))
  {
    v20 = v31;
    v21 = v32;
    *v22 = v33[0];
    *&v22[10] = *(v33 + 10);
    v16 = v27;
    v17 = v28;
    v18 = v29;
    v19 = v30;
    v14 = v25;
    v15 = v26;
    v12 = NavigationState.canDismissRoot(of:)(v3, v4, v5);
    v23[6] = v20;
    v23[7] = v21;
    v24[0] = *v22;
    *(v24 + 10) = *&v22[10];
    v23[2] = v16;
    v23[3] = v17;
    v23[4] = v18;
    v23[5] = v19;
    v23[0] = v14;
    v23[1] = v15;
    outlined destroy of NavigationState(v23);
  }

  else
  {
    v12 = 0;
  }

  *a1 = v12 & 1;
  return 1;
}

uint64_t specialized UISplitViewControllerProxy.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v3, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  type metadata accessor for UISplitViewControllerSplitBehavior(0);
  v5 = swift_dynamicCast();
  v6 = v9;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v3, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v5 = swift_dynamicCast();
  v6 = v9;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

uint64_t _NavigationSplitReader.PreparedColumn.authority.getter@<X0>(uint64_t a1@<X8>)
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  return outlined init with copy of NavigationAuthority?(Value, a1, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
}

void protocol witness for static Rule.initialValue.getter in conformance _NavigationSplitReader.CustomParameters(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 23) = 0;
  *(a1 + 16) = 0;
}

uint64_t protocol witness for Rule.value.getter in conformance _NavigationSplitReader.CustomParameters@<X0>(uint64_t a1@<X8>)
{
  result = _NavigationSplitReader.CustomParameters.value.getter(*v1, *(v1 + 8));
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6 & 1;
  *(a1 + 25) = v7 & 1;
  *(a1 + 26) = v8 & 1;
  return result;
}

double _NavigationSplitReader.PreparedColumn.columnSeeds.getter(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.PreparedColumn<A>, a1);
  MEMORY[0x18D000B40](a1, &type metadata for NavigationState.SelectionSeed, WitnessTable);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  return result;
}

uint64_t closure #1 in _NavigationSplitReader.PreparedColumn.columnSeeds.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _DWORD *a4@<X8>)
{
  type metadata accessor for _NavigationSplitReader.PreparedColumn(0, a1, a2, a3);
  result = _NavigationSplitReader.PreparedColumn.authority.getter(v17);
  if (v18 != 1)
  {
    Strong = swift_weakLoadStrong();
    result = outlined destroy of NavigationAuthority(v17);
    if (Strong)
    {
      v7 = *(Strong + 184);

      v8 = _NavigationSplitReader.PreparedColumn.key.getter();
      v10 = v9;
      v12 = v11;
      swift_getKeyPath();
      lazy protocol witness table accessor for type NavigationStateHost and conformance NavigationStateHost(&lazy protocol witness table cache variable for type NavigationSelectionHost and conformance NavigationSelectionHost, type metadata accessor for NavigationSelectionHost, protocol conformance descriptor for NavigationSelectionHost);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = *(v7 + 16);

      if (*(v13 + 16))
      {
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v10, v12);
        if (v15)
        {
          v16 = *(*(v13 + 56) + 4 * v14);

LABEL_8:
          *a4 = v16;
          return result;
        }
      }
    }

    v16 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t _NavigationSplitReader.PreparedColumn.key.getter()
{
  v0 = *AGGraphGetValue();
  AGGraphGetValue();
  return v0;
}

uint64_t _NavigationSplitReader.PreparedColumn.updateValue()(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v150[1] = *MEMORY[0x1E69E9840];
  v87 = *(*(a1 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v86 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v5;
  v6 = type metadata accessor for ModifiedContent();
  v92 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v83 - v7;
  type metadata accessor for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>(255);
  v93 = v6;
  v89 = v8;
  v9 = type metadata accessor for ModifiedContent();
  v95 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v83 - v10;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, MEMORY[0x1E6980A08]);
  v97 = v9;
  v90 = v11;
  v12 = type metadata accessor for ModifiedContent();
  v98 = *(v12 - 8);
  v99 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v83 - v13;
  v14 = type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static SemanticFeature.isEnabled.getter() & 1) != 0 && !*(v2 + 4))
  {
    v22 = *(v2 + 5);
    WeakValue = AGGraphGetWeakValue();
    v19 = v3;
    if (WeakValue)
    {
      v24 = *WeakValue;
    }

    else
    {
      v24 = 0;
    }

    if (WeakValue)
    {
      v25 = v24;
    }

    else
    {
      v25 = -1;
    }

    if (WeakValue)
    {
      v26 = HIDWORD(v24);
    }

    else
    {
      v26 = -1;
    }

    v149 = v22;
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>, &type metadata for NavigationState.Seeds, MEMORY[0x1E697DAC0]);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;

    outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(&v149, type metadata accessor for MutableBox<NavigationState.Seeds>?);
    *(v2 + 5) = v27;
    v28 = v2[1];
    v148[0] = *v2;
    v148[1] = v28;
    v148[2] = v2[2];
    result = _NavigationSplitReader.PreparedColumn.authority.getter(&v127);
    if (*(&v127 + 1) == 1)
    {
      __break(1u);
      return result;
    }

    v30 = v2[2];
    v146 = v2[1];
    v147 = v30;
    v145 = *v2;
    v150[0] = v30;
    v31 = _NavigationSplitReader.PreparedColumn.key.getter();
    v33 = v32;
    v35 = v34;
    outlined init with take of NavigationAuthority(&v127, v16);
    *(v16 + 3) = v31;
    v16[32] = v33;
    *(v16 + 5) = v35;
    UUID.init()();
    *&v16[*(v14 + 28)] = v27;
    type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>(0);
    swift_allocObject();
    v36 = LocationBox.init(_:)();
    outlined destroy of LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>?(v150);
    *(v2 + 4) = v36;
    goto LABEL_21;
  }

  v17 = *(v2 + 5);
  if (v17)
  {

    v18 = AGGraphGetWeakValue();
    if (v18)
    {
      v19 = v3;
      v21 = *v18;
      v20 = v18[1];
      swift_beginAccess();
      if (*(v17 + 16) != v21 || *(v17 + 20) != v20)
      {
        *(v17 + 16) = v21;
        *(v17 + 20) = v20;
      }

LABEL_21:
      v3 = v19;
      goto LABEL_22;
    }
  }

LABEL_22:
  v37 = v2[1];
  v142 = *v2;
  v143 = v37;
  v144 = v2[2];
  _NavigationSplitReader.PreparedColumn.authority.getter(v138);
  if (v138[1] == 1)
  {
    __break(1u);
  }

  v38 = v2[1];
  v139 = *v2;
  v140 = v38;
  v141 = v2[2];
  v39 = _NavigationSplitReader.PreparedColumn.key.getter();
  v41 = v40;
  v43 = v42;
  Strong = swift_weakLoadStrong();
  if (Strong && (v45 = Strong, swift_beginAccess(), v46 = v45[8], v124 = v45[7], v125 = v46, v126[0] = v45[9], *(v126 + 10) = *(v45 + 154), v47 = v45[4], v120 = v45[3], v121 = v47, v48 = v45[6], v122 = v45[5], v123 = v48, v49 = v45[2], v118 = v45[1], v119 = v49, outlined init with copy of NavigationAuthority?(&v118, &v109, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v133 = v124, v134 = v125, v135[0] = v126[0], *(v135 + 10) = *(v126 + 10), v129 = v120, v130 = v121, v131 = v122, v132 = v123, v127 = v118, v128 = v119, getEnumTag for AccessibilityActionCategory.Category(&v127) != 1))
  {
    v106 = v124;
    v107 = v125;
    v108[0] = v126[0];
    *(v108 + 10) = *(v126 + 10);
    v102 = v120;
    v103 = v121;
    v104 = v122;
    v105 = v123;
    v100 = v118;
    v101 = v119;
    v85 = NavigationState.canDismissRoot(of:)(v39, v41, v43);
    v115 = v106;
    v116 = v107;
    v117[0] = v108[0];
    *(v117 + 10) = *(v108 + 10);
    v111 = v102;
    v112 = v103;
    v113 = v104;
    v114 = v105;
    v109 = v100;
    v110 = v101;
    outlined destroy of NavigationState(&v109);
  }

  else
  {
    v85 = 0;
  }

  outlined destroy of NavigationAuthority(v138);
  v50 = v2[1];
  v127 = *v2;
  v128 = v50;
  v129 = v2[2];
  _NavigationSplitReader.PreparedColumn.key.getter();
  if (v51 == 1)
  {
    v52 = 1;
  }

  else
  {
    v53 = v2[1];
    v118 = *v2;
    v119 = v53;
    v120 = v2[2];
    _NavigationSplitReader.PreparedColumn.key.getter();
    v52 = v54 == 2;
  }

  v55 = v3;
  v84 = v3;
  v56 = v88;
  Value = AGGraphGetValue();
  v58 = v86;
  v59 = v87;
  (*(v87 + 16))(v86, Value, v56);
  v60 = v2[2];
  v110 = v2[1];
  v111 = v60;
  v109 = *v2;
  v61 = v60;
  *&v100 = _NavigationSplitReader.PreparedColumn.key.getter();
  *(&v100 + 1) = v62;
  *&v101 = v63;
  *(&v101 + 1) = -1;
  v64 = *(v55 + 24);
  v65 = v91;
  MEMORY[0x18D00A570](&v100, v56, &type metadata for InjectKeyModifier, v64);
  (*(v59 + 8))(v58, v56);
  KeyPath = swift_getKeyPath();
  v67 = swift_allocObject();
  *(v67 + 16) = v52;
  *(v67 + 24) = v61;
  *(v67 + 32) = v85 & 1;
  *&v100 = KeyPath;
  *(&v100 + 1) = partial apply for specialized closure #1 in _NavigationSplitReader.PreparedColumn.updateValue();
  *&v101 = v67;
  v137[0] = v64;
  v137[1] = &protocol witness table for InjectKeyModifier;

  v68 = MEMORY[0x1E697E858];
  v69 = v93;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v93, v137);
  v71 = v94;
  MEMORY[0x18D00A570](&v100, v69, v89, WitnessTable);

  (*(v92 + 8))(v65, v69);
  v72 = swift_getKeyPath();
  v73 = v2[1];
  v100 = *v2;
  v101 = v73;
  v102 = v2[2];
  v74 = v84;
  _NavigationSplitReader.PreparedColumn.columnSeeds.getter(v84);
  v138[0] = v72;
  v75 = lazy protocol witness table accessor for type StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v136[0] = WitnessTable;
  v136[1] = v75;
  v76 = v97;
  v77 = swift_getWitnessTable(v68, v97, v136);
  v78 = v96;
  MEMORY[0x18D00A570](v138, v76, v90, v77);

  v79 = (*(v95 + 8))(v71, v76);
  v80 = MEMORY[0x1EEE9AC00](v79);
  *(&v83 - 2) = v74;
  *(&v83 - 1) = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.PreparedColumn<A>, v74, v80);
  v81 = v99;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v78, partial apply for closure #1 in StatefulRule.value.setter, (&v83 - 4), v99, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v82);
  return (*(v98 + 8))(v78, v81);
}

void key path getter for EnvironmentValues.navigationSelectionSeed : EnvironmentValues(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationStateSelectionSeed>, &type metadata for NavigationStateSelectionSeed, &protocol witness table for NavigationStateSelectionSeed, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationStateSelectionSeed>, &type metadata for NavigationStateSelectionSeed, &protocol witness table for NavigationStateSelectionSeed, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.navigationSelectionSeed : EnvironmentValues(int *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationStateSelectionSeed>, &type metadata for NavigationStateSelectionSeed, &protocol witness table for NavigationStateSelectionSeed, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance _NavigationSplitReader.PreparedColumn<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, MEMORY[0x1E6980A08]);
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 1, 1, v3);
}

void _NavigationSplitReader.PreparedAlternativeCompactColumn.value.getter(uint64_t a1)
{
  type metadata accessor for [AlternateRepresentationPlacement.Value : AnyView](0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue && *(*WeakValue + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    if (v2)
    {
    }
  }
}

_OWORD *_NavigationSplitReader.SplitPresentationModeLocation.get()@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  result = swift_weakLoadStrong();
  if (result && (v7 = result, swift_beginAccess(), v8 = v7[8], v30 = v7[7], v31 = v8, v32[0] = v7[9], *(v32 + 10) = *(v7 + 154), v9 = v7[4], v26 = v7[3], v27 = v9, v10 = v7[6], v28 = v7[5], v29 = v10, v11 = v7[2], v24 = v7[1], v25 = v11, outlined init with copy of NavigationAuthority?(&v24, v22, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v33[6] = v30, v33[7] = v31, v34[0] = v32[0], *(v34 + 10) = *(v32 + 10), v33[2] = v26, v33[3] = v27, v33[4] = v28, v33[5] = v29, v33[0] = v24, v33[1] = v25, result = getEnumTag for AccessibilityActionCategory.Category(v33), result != 1))
  {
    v19 = v30;
    v20 = v31;
    *v21 = v32[0];
    *&v21[10] = *(v32 + 10);
    v15 = v26;
    v16 = v27;
    v17 = v28;
    v18 = v29;
    v13 = v24;
    v14 = v25;
    v12 = NavigationState.canDismissRoot(of:)(v3, v4, v5);
    v22[6] = v19;
    v22[7] = v20;
    v23[0] = *v21;
    *(v23 + 10) = *&v21[10];
    v22[2] = v15;
    v22[3] = v16;
    v22[4] = v17;
    v22[5] = v18;
    v22[0] = v13;
    v22[1] = v14;
    result = outlined destroy of NavigationState(v22);
  }

  else
  {
    v12 = 0;
  }

  *a1 = v12 & 1;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance _NavigationSplitReader.Core@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 384) = 0;
  result = 0.0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void PreparedCompactColumn.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();

  *a2 = a1;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = -1;
}

void key path getter for EnvironmentValues.isNavigationEnabledInternal : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.isNavigationEnabledInternal : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t assignWithCopy for _NavigationSplitReader(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t assignWithTake for _NavigationSplitReader(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for InjectKeyModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 32))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 8);
  if (v3 <= 6)
  {
    v4 = 6;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v4 - 7;
  if (v3 < 6)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for InjectKeyModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>(255);
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, ClearNavigationContextModifier>, MEMORY[0x1E6981910], &type metadata for ClearNavigationContextModifier, MEMORY[0x1E697E830]);
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<AnyView, ClearNavigationContextModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, ClearNavigationContextModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, ClearNavigationContextModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, ClearNavigationContextModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, ClearNavigationContextModifier>, MEMORY[0x1E6981910], &type metadata for ClearNavigationContextModifier, MEMORY[0x1E697E830]);
    v4[0] = MEMORY[0x1E6981900];
    v4[1] = &protocol witness table for ClearNavigationContextModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, ClearNavigationContextModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v5);
    atomic_store(result, a1);
  }

  return result;
}

void _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>(255, a3, a4, a5);
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, MEMORY[0x1E6980A08]);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v6[5] = v0;
    v6[6] = v1;
    type metadata accessor for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyTransformModifier<A>();
    v6[0] = MEMORY[0x1E6981F00];
    v6[1] = v5;
    v6[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for Binding<NavigationSplitViewColumn>?(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable(MEMORY[0x1E6980B30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

void type metadata accessor for MutableBox<NavigationState.Seeds>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>?)
  {
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>, &type metadata for NavigationState.Seeds, MEMORY[0x1E697DAC0]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>?);
    }
  }
}

uint64_t outlined destroy of LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>?(uint64_t a1)
{
  type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>?(0, &lazy cache variable for type metadata for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>?, type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of _VariadicView_Children.Element?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = v11 + ((v4 + 16) & ~v4);
  }

  else
  {
    swift_weakCopyInit();
    v7 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v7;
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = a2[5];
    v8 = *(a3 + 24);
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 16);

    v10(a1 + v8, a2 + v8, v9);
    *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  }

  return a1;
}

uint64_t assignWithCopy for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakCopyAssign();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));

  return a1;
}

uint64_t assignWithTake for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));

  return a1;
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for _NavigationSplitReader.ForestRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  swift_weakTakeAssign();
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  if (*(a1 + 136))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 112));
  }

  v4 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v4;
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for _NavigationSplitReader.ForestRoot(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _NavigationSplitReader.ForestRoot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for _NavigationSplitReader.PreparedColumn(uint64_t a1)
{

  return result;
}

uint64_t assignWithCopy for _NavigationSplitReader.PreparedColumn(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for _NavigationSplitReader.PreparedColumn(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for _NavigationSplitReader.UpdateRequiredCompactColumn(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _NavigationSplitReader.UpdateRequiredCompactColumn(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for _NavigationSplitReader.DerivedAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v4 = *(a2 + 24);
  if (*(a1 + 24) == 1)
  {
    if (v4 == 1)
    {
      v5 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v5;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
    }
  }

  else
  {
    v6 = a1 + 16;
    if (v4 == 1)
    {
      outlined destroy of NavigationAuthority(v6);
      v7 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v7;
    }

    else
    {
      swift_weakCopyAssign();
      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
    }
  }

  return a1;
}

__n128 initializeWithTake for _NavigationSplitReader.DerivedAttributes(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v3 = (a2 + 1);
  *a1 = v4;
  *&v4 = *(a2 + 3);
  v5 = (a2 + 24);
  if (v4 == 1)
  {
    result = *v3;
    *(a1 + 16) = *v3;
    *(a1 + 32) = v3[1].n128_u64[0];
  }

  else
  {
    swift_weakTakeInit();
    result = *v5;
    *(a1 + 24) = *v5;
  }

  return result;
}

uint64_t assignWithTake for _NavigationSplitReader.DerivedAttributes(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 16;
  *a1 = *a2;
  v4 = (a1 + 24);
  v6 = (a2 + 24);
  v5 = *(a2 + 24);
  if (*(a1 + 24) != 1)
  {
    v7 = a1 + 16;
    if (v5 != 1)
    {
      swift_weakTakeAssign();
      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);

      return a1;
    }

    outlined destroy of NavigationAuthority(v7);
    goto LABEL_6;
  }

  if (v5 == 1)
  {
LABEL_6:
    *(a1 + 16) = *v3;
    *(a1 + 32) = *(v3 + 16);
    return a1;
  }

  swift_weakTakeInit();
  *v4 = *v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for _NavigationSplitReader.DerivedAttributes(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for _NavigationSplitReader.DerivedAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

_BYTE *specialized _NavigationSplitReader.SplitPresentationModeLocation.set(_:transaction:)(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    result = swift_weakLoadStrong();
    if (result)
    {
      v5 = result;
      swift_beginAccess();
      v6 = v5[8];
      v24 = v5[7];
      v25 = v6;
      v26[0] = v5[9];
      *(v26 + 10) = *(v5 + 154);
      v7 = v5[4];
      v20 = v5[3];
      v21 = v7;
      v8 = v5[6];
      v22 = v5[5];
      v23 = v8;
      v9 = v5[2];
      v18 = v5[1];
      v19 = v9;
      outlined init with copy of NavigationAuthority?(&v18, v11, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

      v27[6] = v24;
      v27[7] = v25;
      v28[0] = v26[0];
      *(v28 + 10) = *(v26 + 10);
      v27[2] = v20;
      v27[3] = v21;
      v27[4] = v22;
      v27[5] = v23;
      v27[0] = v18;
      v27[1] = v19;
      result = getEnumTag for AccessibilityActionCategory.Category(v27);
      if (result != 1)
      {
        v12 = v24;
        v13 = v25;
        *v14 = v26[0];
        *&v14[10] = *(v26 + 10);
        *&v11[32] = v20;
        *&v11[48] = v21;
        *&v11[64] = v22;
        *&v11[80] = v23;
        *v11 = v18;
        *&v11[16] = v19;
        v10 = NavigationState.canDismissRoot(of:)(v2, v3, v4);
        v16[6] = v12;
        v16[7] = v13;
        v17[0] = *v14;
        *(v17 + 10) = *&v14[10];
        v16[2] = *&v11[32];
        v16[3] = *&v11[48];
        v16[4] = *&v11[64];
        v16[5] = *&v11[80];
        v16[0] = *v11;
        v16[1] = *&v11[16];
        result = outlined destroy of NavigationState(v16);
        if (v10)
        {
          *v11 = 2;
          memset(&v11[8], 0, 88);
          LOBYTE(v12) = 22;
          *(&v12 + 1) = v2;
          *&v13 = v3;
          v15 = 0;
          *(&v13 + 1) = v4;
          memset(v14, 0, 25);
          NavigationAuthority.enqueueRequest(_:)(v11);
          return outlined destroy of NavigationRequest(v11);
        }
      }
    }
  }

  return result;
}

uint64_t assignWithCopy for ConfirmationDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 68) = v4;
  *(a1 + 88) = *(a2 + 88);

  swift_unknownObjectWeakCopyAssign();
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  v5 = *(a2 + 168);
  if (*(a1 + 168))
  {
    if (v5)
    {
      v6 = *(a2 + 152);
      if (*(a1 + 152))
      {
        if (v6)
        {
          v7 = *(a2 + 128);
          v8 = *(a2 + 136);
          v9 = *(a2 + 144);
          outlined copy of Text.Storage(v7, v8, v9);
          v10 = *(a1 + 128);
          v11 = *(a1 + 136);
          v12 = *(a1 + 144);
          *(a1 + 128) = v7;
          *(a1 + 136) = v8;
          *(a1 + 144) = v9;
          outlined consume of Text.Storage(v10, v11, v12);
          *(a1 + 152) = *(a2 + 152);
        }

        else
        {
          outlined destroy of Text(a1 + 128);
          v25 = *(a2 + 144);
          *(a1 + 128) = *(a2 + 128);
          *(a1 + 144) = v25;
        }
      }

      else if (v6)
      {
        v19 = *(a2 + 128);
        v20 = *(a2 + 136);
        v21 = *(a2 + 144);
        outlined copy of Text.Storage(v19, v20, v21);
        *(a1 + 128) = v19;
        *(a1 + 136) = v20;
        *(a1 + 144) = v21;
        *(a1 + 152) = *(a2 + 152);
      }

      else
      {
        v27 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v27;
      }

      *(a1 + 160) = *(a2 + 160);

      *(a1 + 168) = *(a2 + 168);

      *(a1 + 176) = *(a2 + 176);
    }

    else
    {
      outlined destroy of DialogSuppressionConfiguration(a1 + 128);
      v17 = *(a2 + 144);
      v16 = *(a2 + 160);
      v18 = *(a2 + 128);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 144) = v17;
      *(a1 + 160) = v16;
      *(a1 + 128) = v18;
    }
  }

  else if (v5)
  {
    if (*(a2 + 152))
    {
      v13 = *(a2 + 128);
      v14 = *(a2 + 136);
      v15 = *(a2 + 144);
      outlined copy of Text.Storage(v13, v14, v15);
      *(a1 + 128) = v13;
      *(a1 + 136) = v14;
      *(a1 + 144) = v15;
      *(a1 + 152) = *(a2 + 152);
    }

    else
    {
      v26 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v26;
    }

    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
  }

  else
  {
    v22 = *(a2 + 128);
    v23 = *(a2 + 144);
    v24 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 144) = v23;
    *(a1 + 160) = v24;
    *(a1 + 128) = v22;
  }

  *(a1 + 177) = *(a2 + 177);
  return a1;
}

uint64_t assignWithTake for ConfirmationDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  swift_unknownObjectWeakTakeAssign();
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 168))
  {
    if (*(a2 + 168))
    {
      if (*(a1 + 152))
      {
        if (*(a2 + 152))
        {
          v5 = *(a2 + 144);
          v6 = *(a1 + 128);
          v7 = *(a1 + 136);
          v8 = *(a1 + 144);
          *(a1 + 128) = *(a2 + 128);
          *(a1 + 144) = v5;
          outlined consume of Text.Storage(v6, v7, v8);
          *(a1 + 152) = *(a2 + 152);

LABEL_10:
          *(a1 + 160) = *(a2 + 160);

          *(a1 + 168) = *(a2 + 168);

          *(a1 + 176) = *(a2 + 176);
          goto LABEL_11;
        }

        outlined destroy of Text(a1 + 128);
      }

      v10 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v10;
      goto LABEL_10;
    }

    outlined destroy of DialogSuppressionConfiguration(a1 + 128);
  }

  v9 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v9;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
LABEL_11:
  *(a1 + 177) = *(a2 + 177);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ConfirmationDialog(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for ConfirmationDialogModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = ((((-66 - v7) | v7) - (v8 + v10)) | v10) - *(v9 + 64);
  if ((v10 | v7) <= 7 && ((*(v9 + 80) | *(v6 + 80)) & 0x100000) == 0 && v12 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v28 = v5;
    v29 = a1;
    v17 = a1 & 0xFFFFFFFFFFFFFFF8;
    v18 = a2 & 0xFFFFFFFFFFFFFFF8;
    v26 = v4;
    v27 = v6;
    *(v17 + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    *(v17 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
    *(v17 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
    v19 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
    v20 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
    v21 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);

    outlined copy of Text.Storage(v19, v20, v21);
    *(v17 + 32) = v19;
    *(v17 + 40) = v20;
    *(v17 + 48) = v21;
    *(v17 + 56) = *(v18 + 56);
    *(v17 + 64) = *(v18 + 64);
    v22 = (v17 + v7 + 65) & ~v7;
    v23 = (v18 + v7 + 65) & ~v7;
    v24 = *(v27 + 16);

    v24(v22, v23, v26);
    v16 = v29;
    (*(v9 + 16))((v22 + v11) & ~v10, (v23 + v11) & ~v10, v28);
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    v16 = v15 + (((v10 | v7) & 0xF8 ^ 0x1F8) & ((v10 | v7) + 16));
  }

  return v16;
}

unint64_t initializeWithTake for ConfirmationDialogModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v5 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v5 + 8) = v6;
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);
  *(v5 + 32) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  *(v5 + 48) = v7;
  *(v5 + 64) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 64);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v10 + 65 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  v12 = (v10 + 65 + (a2 & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(*(a3 + 24) - 8);
  (*(v13 + 32))((*(v9 + 32) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v9 + 32) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

unint64_t assignWithTake for ConfirmationDialogModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);

  *(v5 + 16) = *(v6 + 16);

  *(v5 + 24) = *(v6 + 24);
  v7 = *(v6 + 48);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  v10 = *(v5 + 48);
  *(v5 + 32) = *(v6 + 32);
  *(v5 + 48) = v7;
  outlined consume of Text.Storage(v8, v9, v10);
  *(v5 + 56) = *(v6 + 56);

  *(v5 + 64) = *(v6 + 64);
  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = (v13 + 65 + v5) & ~v13;
  v15 = (v13 + 65 + v6) & ~v13;
  (*(v11 + 40))(v14, v15);
  v16 = *(*(a3 + 24) - 8);
  (*(v16 + 40))((*(v12 + 24) + *(v16 + 80) + v14) & ~*(v16 + 80), (*(v12 + 24) + *(v16 + 80) + v15) & ~*(v16 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ConfirmationDialogModifier(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 65) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      v23 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (v23 + v9 + 65) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v25);
        }

        else
        {
          return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v24 = *(v23 + 16);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for ConfirmationDialogModifier(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 65) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v15) = v20;
              }

              else
              {
                *(a1 + v15) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v15) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v15) = 0;
  }

  else if (v18)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  v24 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v13 & 0x80000000) != 0)
  {
    v25 = (v24 + v10 + 65) & ~v10;
    if (v8 == v14)
    {
      v26 = *(v6 + 56);

      v26(v25);
    }

    else
    {
      v27 = *(v9 + 56);
      v28 = (v25 + v11 + v12) & ~v12;

      v27(v28);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v24 + 24) = 0;
    *(v24 + 8) = a2 & 0x7FFFFFFF;
    *(v24 + 16) = 0;
  }

  else
  {
    *(v24 + 16) = a2 - 1;
  }
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(_DWORD *a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = *a1;
  return outlined init with copy of ConfirmationDialog((a1 + 2), (a2 + 2));
}

{
  *a2 = *a1;
  return outlined init with copy of InspectorStorage((a1 + 2), (a2 + 2));
}

uint64_t assignWithCopy for MakeConfirmationDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  v4 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v4;
  *(a1 + 105) = *(a2 + 105);
  v5 = *(a2 + 152);
  if (*(a1 + 152))
  {
    if (v5)
    {
      v6 = *(a2 + 136);
      if (*(a1 + 136))
      {
        if (v6)
        {
          v7 = *(a2 + 112);
          v8 = *(a2 + 120);
          v9 = *(a2 + 128);
          outlined copy of Text.Storage(v7, v8, v9);
          v10 = *(a1 + 112);
          v11 = *(a1 + 120);
          v12 = *(a1 + 128);
          *(a1 + 112) = v7;
          *(a1 + 120) = v8;
          *(a1 + 128) = v9;
          outlined consume of Text.Storage(v10, v11, v12);
          *(a1 + 136) = *(a2 + 136);
        }

        else
        {
          outlined destroy of Text(a1 + 112);
          v25 = *(a2 + 128);
          *(a1 + 112) = *(a2 + 112);
          *(a1 + 128) = v25;
        }
      }

      else if (v6)
      {
        v19 = *(a2 + 112);
        v20 = *(a2 + 120);
        v21 = *(a2 + 128);
        outlined copy of Text.Storage(v19, v20, v21);
        *(a1 + 112) = v19;
        *(a1 + 120) = v20;
        *(a1 + 128) = v21;
        *(a1 + 136) = *(a2 + 136);
      }

      else
      {
        v27 = *(a2 + 128);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 128) = v27;
      }

      *(a1 + 144) = *(a2 + 144);

      *(a1 + 152) = *(a2 + 152);

      *(a1 + 160) = *(a2 + 160);
    }

    else
    {
      outlined destroy of DialogSuppressionConfiguration(a1 + 112);
      v17 = *(a2 + 128);
      v16 = *(a2 + 144);
      v18 = *(a2 + 112);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 128) = v17;
      *(a1 + 144) = v16;
      *(a1 + 112) = v18;
    }
  }

  else if (v5)
  {
    if (*(a2 + 136))
    {
      v13 = *(a2 + 112);
      v14 = *(a2 + 120);
      v15 = *(a2 + 128);
      outlined copy of Text.Storage(v13, v14, v15);
      *(a1 + 112) = v13;
      *(a1 + 120) = v14;
      *(a1 + 128) = v15;
      *(a1 + 136) = *(a2 + 136);
    }

    else
    {
      v26 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v26;
    }

    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
  }

  else
  {
    v22 = *(a2 + 112);
    v23 = *(a2 + 128);
    v24 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 128) = v23;
    *(a1 + 144) = v24;
    *(a1 + 112) = v22;
  }

  return a1;
}

uint64_t assignWithTake for MakeConfirmationDialog(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  if (*(a1 + 152))
  {
    v6 = *(a2 + 152);
    if (v6)
    {
      if (*(a1 + 136))
      {
        v7 = *(a2 + 136);
        if (v7)
        {
          v8 = *(a2 + 128);
          v9 = *(a1 + 112);
          v10 = *(a1 + 120);
          v11 = *(a1 + 128);
          *(a1 + 112) = *(a2 + 112);
          *(a1 + 128) = v8;
          outlined consume of Text.Storage(v9, v10, v11);
          *(a1 + 136) = v7;

LABEL_10:
          *(a1 + 144) = *(a2 + 144);

          *(a1 + 152) = v6;

          *(a1 + 160) = *(a2 + 160);
          return a1;
        }

        outlined destroy of Text(a1 + 112);
      }

      v13 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v13;
      goto LABEL_10;
    }

    outlined destroy of DialogSuppressionConfiguration(a1 + 112);
  }

  v12 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v12;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t getEnumTagSinglePayload for MakeConfirmationDialog(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MakeConfirmationDialog(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.insetFloatingSidebarStyle()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x18D009810](0xD000000000000026, 0x800000018CD446D0);
  v5 = *(*(a1 - 8) + 16);

  return v5(a2, v2, a1);
}

void type metadata accessor for SidebarStyleModifier<_ContentListSidebarStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SidebarStyleModifier<_ContentListSidebarStyle>)
  {
    v2 = lazy protocol witness table accessor for type _ContentListSidebarStyle and conformance _ContentListSidebarStyle();
    v4 = type metadata accessor for SidebarStyleModifier(a1, &type metadata for _ContentListSidebarStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for SidebarStyleModifier<_ContentListSidebarStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ContentListSidebarStyle and conformance _ContentListSidebarStyle()
{
  result = lazy protocol witness table cache variable for type _ContentListSidebarStyle and conformance _ContentListSidebarStyle;
  if (!lazy protocol witness table cache variable for type _ContentListSidebarStyle and conformance _ContentListSidebarStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ContentListSidebarStyle, &type metadata for _ContentListSidebarStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentListSidebarStyle and conformance _ContentListSidebarStyle);
  }

  return result;
}

uint64_t SidebarStyleModifier.styleBody(configuration:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v1 + 24))(v2, v1, v8);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v11 = *(v4 + 8);
  v11(v6, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v11)(v10, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SidebarStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SidebarStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SidebarStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SidebarStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance SidebarStyleOptionsPreference(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = (*a1 | v4) & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>> and conformance <> ModifiedContent<A, B>();
    v5[1] = &protocol witness table for ToolbarRemovingModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>)
  {
    type metadata accessor for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<ContentListStyleContext>, MEMORY[0x1E6980190], MEMORY[0x1E6980188]);
    type metadata accessor for StyleContextWriter<ContentListStyleContext>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<SidebarStyleOptionsPreference>, &type metadata for SidebarStyleOptionsPreference, &protocol witness table for SidebarStyleOptionsPreference, MEMORY[0x1E6980750]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<SidebarStyleOptionsPreference> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    v7[6] = v0;
    v7[7] = v1;
    v3 = MEMORY[0x1E6980190];
    v4 = MEMORY[0x1E6980188];
    type metadata accessor for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<ContentListStyleContext>, MEMORY[0x1E6980190], MEMORY[0x1E6980188]);
    v6 = v5;
    v7[0] = &protocol witness table for _SidebarConfiguration.Sidebar;
    v7[1] = lazy protocol witness table accessor for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>, &lazy cache variable for type metadata for StyleContextWriter<ContentListStyleContext>, v3, v4);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<SidebarStyleOptionsPreference> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<SidebarStyleOptionsPreference> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<SidebarStyleOptionsPreference> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for StyleContextWriter<ContentListStyleContext>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<SidebarStyleOptionsPreference>, &type metadata for SidebarStyleOptionsPreference, &protocol witness table for SidebarStyleOptionsPreference, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<SidebarStyleOptionsPreference> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _SidebarConfiguration.Sidebar(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar()
{
  result = lazy protocol witness table cache variable for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar;
  if (!lazy protocol witness table cache variable for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SidebarConfiguration.Sidebar, &type metadata for _SidebarConfiguration.Sidebar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar;
  if (!lazy protocol witness table cache variable for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _SidebarConfiguration.Sidebar, &type metadata for _SidebarConfiguration.Sidebar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<SidebarStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<SidebarStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<SidebarStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    v7[6] = v0;
    v7[7] = v1;
    v3 = MEMORY[0x1E697F808];
    v4 = MEMORY[0x1E697F800];
    type metadata accessor for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<SidebarStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<SidebarStyleContext>, MEMORY[0x1E697F808], MEMORY[0x1E697F800]);
    v6 = v5;
    v7[0] = &protocol witness table for _SidebarConfiguration.Sidebar;
    v7[1] = lazy protocol witness table accessor for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<SidebarStyleContext> and conformance StyleContextWriter<A>, &lazy cache variable for type metadata for StyleContextWriter<SidebarStyleContext>, v3, v4);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v7);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<SidebarStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for StyleContextWriter<ContentListStyleContext>(255, a3, a4, a5, MEMORY[0x1E697F4C8]);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StyleContextWriter<ContentListStyleContext>(255, a2, a3, a4, MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarStyleOptionsPreference.Options and conformance SidebarStyleOptionsPreference.Options()
{
  result = lazy protocol witness table cache variable for type SidebarStyleOptionsPreference.Options and conformance SidebarStyleOptionsPreference.Options;
  if (!lazy protocol witness table cache variable for type SidebarStyleOptionsPreference.Options and conformance SidebarStyleOptionsPreference.Options)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarStyleOptionsPreference.Options, &type metadata for SidebarStyleOptionsPreference.Options, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarStyleOptionsPreference.Options and conformance SidebarStyleOptionsPreference.Options);
  }

  return result;
}

void ImmersiveSpace.init<A>(makeContent:)(uint64_t a1, uint64_t a2)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init<A>(id:makeContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init<A>(id:for:makeContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init<A>(for:makeContent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init<A>(id:for:makeContent:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init<A>(for:makeContent:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type PresentationAppQuitBehavior and conformance PresentationAppQuitBehavior()
{
  result = lazy protocol witness table cache variable for type PresentationAppQuitBehavior and conformance PresentationAppQuitBehavior;
  if (!lazy protocol witness table cache variable for type PresentationAppQuitBehavior and conformance PresentationAppQuitBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationAppQuitBehavior, &type metadata for PresentationAppQuitBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationAppQuitBehavior and conformance PresentationAppQuitBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationAppQuitBehavior.Behavior and conformance PresentationAppQuitBehavior.Behavior()
{
  result = lazy protocol witness table cache variable for type PresentationAppQuitBehavior.Behavior and conformance PresentationAppQuitBehavior.Behavior;
  if (!lazy protocol witness table cache variable for type PresentationAppQuitBehavior.Behavior and conformance PresentationAppQuitBehavior.Behavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationAppQuitBehavior.Behavior, &type metadata for PresentationAppQuitBehavior.Behavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationAppQuitBehavior.Behavior and conformance PresentationAppQuitBehavior.Behavior);
  }

  return result;
}

uint64_t AutomaticTokenFieldStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TokenFieldConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TokenFieldConfiguration(a1, v7, type metadata accessor for TokenFieldConfiguration);
  v12 = &v11[*(v9 + 80)];
  outlined init with copy of TokenFieldConfiguration(v7, v11, type metadata accessor for Binding<AttributedString>);
  v13 = &v7[*(v5 + 36)];
  v15 = *v13;
  v14 = *(v13 + 1);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = &v11[*(v9 + 76)];
  *v17 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Binding<AnyToken>) -> (@owned AnyView);
  v17[1] = v16;
  v18 = &v7[*(v5 + 32)];
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = v18[3];
  *v12 = *v18;
  v12[1] = v20;
  v12[2] = v21;
  v12[3] = v22;

  outlined copy of Text?(v19, v20, v21, v22);
  outlined destroy of TokenFieldConfiguration(v7, type metadata accessor for TokenFieldConfiguration);
  outlined init with copy of TokenFieldConfiguration(v11, a2, type metadata accessor for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>);
  return outlined destroy of TokenFieldConfiguration(v11, type metadata accessor for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>);
}

void type metadata accessor for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>)
  {
    v2 = lazy protocol witness table accessor for type AnyToken and conformance AnyToken();
    v5[0] = &type metadata for TokenFieldConfiguration.Label;
    v5[1] = &type metadata for AnyToken;
    v5[2] = MEMORY[0x1E6981910];
    v5[3] = &protocol witness table for TokenFieldConfiguration.Label;
    v5[4] = v2;
    v5[5] = MEMORY[0x1E6981900];
    v3 = type metadata accessor for TokenField(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnyToken and conformance AnyToken()
{
  result = lazy protocol witness table cache variable for type AnyToken and conformance AnyToken;
  if (!lazy protocol witness table cache variable for type AnyToken and conformance AnyToken)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyToken, &type metadata for AnyToken, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyToken and conformance AnyToken);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyToken and conformance AnyToken;
  if (!lazy protocol witness table cache variable for type AnyToken and conformance AnyToken)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyToken, &type metadata for AnyToken, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyToken and conformance AnyToken);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyToken and conformance AnyToken;
  if (!lazy protocol witness table cache variable for type AnyToken and conformance AnyToken)
  {
    result = swift_getWitnessTable("ݥ\nb %\b", &type metadata for AnyToken, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyToken and conformance AnyToken);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Binding<AnyToken>) -> (@owned AnyView)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of TokenFieldConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TokenFieldConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView> and conformance TokenField<A, B, C>();
    v5[1] = &protocol witness table for TokenFieldStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>>)
  {
    type metadata accessor for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>(255);
    type metadata accessor for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>>);
    }
  }
}

void type metadata accessor for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>)
  {
    v2 = lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle();
    v4 = type metadata accessor for TokenFieldStyleModifier(a1, &type metadata for SearchFieldConfigurationTokenFieldStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView> and conformance TokenField<A, B, C>()
{
  result = lazy protocol witness table cache variable for type TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView> and conformance TokenField<A, B, C>;
  if (!lazy protocol witness table cache variable for type TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView> and conformance TokenField<A, B, C>)
  {
    type metadata accessor for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView> and conformance TokenField<A, B, C>);
  }

  return result;
}

uint64_t TabContent.customizationBehavior(_:for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[0] = *a1;
  v6 = a2;
  TabContent.modifier<A>(_:)(v5, a3, &unk_1EFFAE9D8, a4);
}

uint64_t TabContent.customizationID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  return TabContent.modifier<A>(_:)(v5, a3, &unk_1EFFAE958, a4);
}

unint64_t lazy protocol witness table accessor for type CustomizationBehaviorModifier and conformance CustomizationBehaviorModifier()
{
  result = lazy protocol witness table cache variable for type CustomizationBehaviorModifier and conformance CustomizationBehaviorModifier;
  if (!lazy protocol witness table cache variable for type CustomizationBehaviorModifier and conformance CustomizationBehaviorModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomizationBehaviorModifier, &unk_1EFFAE9D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomizationBehaviorModifier and conformance CustomizationBehaviorModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI10TabContentRzlAA08ModifiedcD0VyxAA29CustomizationBehaviorModifier33_0BD63AC3193ED2016BE9565DB357DE28LLVGAaBHPxAaBHD1__AgA04ViewH0HPyHCHCTm(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = a1[1];
  v6 = type metadata accessor for ModifiedTabContent(255, *a1, a2, a4);
  v8[0] = v5;
  v8[1] = a3();
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedTabContent<A, B>, v6, v8);
}

unint64_t lazy protocol witness table accessor for type CustomizationIDModifier and conformance CustomizationIDModifier()
{
  result = lazy protocol witness table cache variable for type CustomizationIDModifier and conformance CustomizationIDModifier;
  if (!lazy protocol witness table cache variable for type CustomizationIDModifier and conformance CustomizationIDModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomizationIDModifier, &unk_1EFFAE958, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomizationIDModifier and conformance CustomizationIDModifier);
  }

  return result;
}

uint64_t assignWithCopy for CustomizationBehaviorModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for CustomizationBehaviorModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

unint64_t lazy protocol witness table accessor for type TabCustomizationBehavior.Role and conformance TabCustomizationBehavior.Role()
{
  result = lazy protocol witness table cache variable for type TabCustomizationBehavior.Role and conformance TabCustomizationBehavior.Role;
  if (!lazy protocol witness table cache variable for type TabCustomizationBehavior.Role and conformance TabCustomizationBehavior.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TabCustomizationBehavior.Role, &type metadata for TabCustomizationBehavior.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationBehavior.Role and conformance TabCustomizationBehavior.Role);
  }

  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance CustomizationBehaviorModifier()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  type metadata accessor for _ViewModifier_Content<CustomizationBehaviorModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<CustomizationBehaviorModifier>, lazy protocol witness table accessor for type CustomizationBehaviorModifier and conformance CustomizationBehaviorModifier, &unk_1EFFAE9D8);
  lazy protocol witness table accessor for type _ViewModifier_Content<CustomizationBehaviorModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<CustomizationBehaviorModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<CustomizationBehaviorModifier>, lazy protocol witness table accessor for type CustomizationBehaviorModifier and conformance CustomizationBehaviorModifier, &unk_1EFFAE9D8);

  View.transformTrait<A>(_:transform:)();

  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance CustomizationIDModifier()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  type metadata accessor for _ViewModifier_Content<CustomizationBehaviorModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<CustomizationIDModifier>, lazy protocol witness table accessor for type CustomizationIDModifier and conformance CustomizationIDModifier, &unk_1EFFAE958);
  lazy protocol witness table accessor for type _ViewModifier_Content<CustomizationBehaviorModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<CustomizationIDModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<CustomizationIDModifier>, lazy protocol witness table accessor for type CustomizationIDModifier and conformance CustomizationIDModifier, &unk_1EFFAE958);

  View.transformTrait<A>(_:transform:)();

  return result;
}

uint64_t partial apply for closure #1 in CustomizationBehaviorModifier.body(content:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  v6 = v4;
  v7 = v5;
  do
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    v8 = *v7++;
    --v6;
  }

  while (v8 == 1);
  *(result + 26) = v2;
LABEL_5:
  while (v4)
  {
    v9 = *v5++;
    --v4;
    if ((v9 - 1) <= 1)
    {
      *(result + 25) = v2;
      return result;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in CustomizationIDModifier.body(content:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  result = outlined consume of TabCustomizationID?(v5, v6, v7);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  return result;
}

void type metadata accessor for _ViewModifier_Content<CustomizationBehaviorModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for _ViewModifier_Content();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<CustomizationBehaviorModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ViewModifier_Content<CustomizationBehaviorModifier>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of TabCustomizationID?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of TabCustomizationID.Base();
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE14transformTrait_0D0Qrqd__m_y5ValueQyd__zctAA01_cE3KeyRd__lFQOyAA01_C16Modifier_ContentVyAA021CustomizationBehaviorH033_0BD63AC3193ED2016BE9565DB357DE28LLVG_AA10TabOptionsV0eG0VQo_HOTm(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, unint64_t *a5)
{
  type metadata accessor for _ViewModifier_Content<CustomizationBehaviorModifier>(255, a2, a3, a4);
  lazy protocol witness table accessor for type _ViewModifier_Content<CustomizationBehaviorModifier> and conformance _ViewModifier_Content<A>(a5, a2, a3, a4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t PageViewWrapper.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static Alignment.bottom.getter();
  *(a2 + 8) = v5;
  closure #1 in PageViewWrapper.body.getter(v2, *(a1 + 16), *(a1 + 24), a2 + 16, v6);
  PageViewWrapper.toolbarModifier.getter(a1, a2 + 288);
  result = swift_getKeyPath();
  *(a2 + 520) = result;
  *(a2 + 528) = 4;
  return result;
}

uint64_t closure #1 in PageViewWrapper.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for PageViewWrapper(0, a2, a3, a5);
  v10 = PageViewWrapper.selectedIndex.getter(v9);
  v12 = v11;
  v14 = v13;
  outlined init with copy of _VariadicView_Children(a1 + 48, &v21);
  v20[0] = v10;
  v20[1] = v12;
  v20[2] = v14;
  closure #1 in closure #1 in PageViewWrapper.body.getter(a1, a2, a3, v19, v15);
  outlined init with copy of UIKitPagingView(v20, v18);
  outlined init with copy of IndexPath?(v19, v17, type metadata accessor for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>);
  outlined init with copy of UIKitPagingView(v18, a4);
  outlined init with copy of IndexPath?(v17, a4 + 88, type metadata accessor for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>);
  outlined destroy of IndexPath?(v19, type metadata accessor for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>);
  outlined destroy of UIKitPagingView(v20);
  outlined destroy of IndexPath?(v17, type metadata accessor for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>);
  return outlined destroy of UIKitPagingView(v18);
}

uint64_t PageViewWrapper.selectedIndex.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  outlined init with copy of _VariadicView_Children(v2 + 48, v34);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *&v34[16];
  *(v5 + 32) = *v34;
  *(v5 + 48) = v6;
  v7 = v36;
  *(v5 + 64) = v35;
  *(v5 + 80) = v7;
  v25 = v3;
  v26 = v4;
  v27 = partial apply for implicit closure #2 in implicit closure #1 in SystemTabView.BodyContent.body.getter;
  v28 = v5;
  type metadata accessor for Binding();
  type metadata accessor for Optional();
  type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>(0, &lazy cache variable for type metadata for Binding<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed Binding<A>) -> (@owned Binding<Int?>), v24, MEMORY[0x1E69E73E0], v8, v9, &v30);

  if (v31)
  {
    v10 = v32;
    v11 = v30;
    v12 = v33;
  }

  else
  {
    _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for State<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    outlined init with copy of _VariadicView_Children(v2 + 48, v34);
    type metadata accessor for ChildIndexProjection();
    v13 = swift_allocObject();
    v14 = *&v34[16];
    v13[1] = *v34;
    v13[2] = v14;
    v15 = v36;
    v13[3] = v35;
    v13[4] = v15;
    specialized Binding.projecting<A>(_:)(v13);
    v11 = v16;
    v10 = v17;
    v12 = v18;

    outlined destroy of Binding<AnyHashable>(&v29, v19);
  }

  KeyPath = swift_getKeyPath();
  v29 = 0;
  BindingOperations.NilCoalescing.init(defaultValue:)();
  v23 = *v34;
  v21 = *v34;
  *v34 = KeyPath;
  *&v34[8] = v21;
  v30 = v10;
  LOBYTE(v31) = v12 & 1;

  swift_getAtKeyPath();
  type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>(0, v23);
  _ss15WritableKeyPathCySiSgACGAByxq_G7SwiftUI10ProjectionAFWlTm_0(&lazy protocol witness table cache variable for type ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>> and conformance ComposedProjection<A, B>, type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>, MEMORY[0x1E697F3A8]);
  dispatch thunk of AnyLocation.projecting<A>(_:)();

  return v11;
}

double closure #1 in closure #1 in PageViewWrapper.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for PageViewWrapper(0, a2, a3, a5);
  if (*(a1 + *(v7 + 44)) == 2)
  {
    *(a4 + 176) = 0;
    result = 0.0;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  else
  {
    PageViewWrapper.indexView.getter(v7, v18);
    EdgeInsets.init(_all:)();
    BYTE8(v19) = 4;
    *&v20 = v9;
    *(&v20 + 1) = v10;
    *&v21 = v11;
    *(&v21 + 1) = v12;
    *(a4 + 176) = 0;
    v13 = v18[5];
    *(a4 + 64) = v18[4];
    *(a4 + 80) = v13;
    v14 = v18[7];
    *(a4 + 96) = v18[6];
    *(a4 + 112) = v14;
    v15 = v18[1];
    *a4 = v18[0];
    *(a4 + 16) = v15;
    v16 = v18[3];
    *(a4 + 32) = v18[2];
    *(a4 + 48) = v16;
    v17 = v20;
    *(a4 + 128) = v19;
    *(a4 + 144) = v17;
    result = *&v21;
    *(a4 + 160) = v21;
  }

  return result;
}

uint64_t PageViewWrapper.indexView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = PageViewWrapper.selectedIndex.getter(a1);
  v7 = v6;
  v9 = v8;
  outlined init with copy of _VariadicView_Children(v2 + 48, v14);
  v13[0] = v5;
  v13[1] = v7;
  v13[2] = v9;
  KeyPath = swift_getKeyPath();
  v11 = *(v2 + *(a1 + 44));
  v14[8] = KeyPath;
  v15 = v11;
  v16 = -1;
  v17 = 4;
  specialized View.accessibilitySortPriority(_:)(a2, -1.0);
  return outlined destroy of IndexPath?(v13, type metadata accessor for ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>);
}

uint64_t PageViewWrapper.toolbarModifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  memset(&v6[192], 0, 24);
  closure #1 in PageViewWrapper.toolbarModifier.getter(v2, *(a1 + 16), *(a1 + 24), v6);
  outlined init with copy of IndexPath?(v5, a2, type metadata accessor for ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>);
  return outlined destroy of IndexPath?(v5, type metadata accessor for ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>);
}

uint64_t specialized View.accessibilitySortPriority(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *__src = a2;
  LOBYTE(__src[1]) = 0;
  AccessibilityProperties.init<A>(_:_:)();
  outlined init with copy of AccessibilityProperties(v8, v6);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v8);
  _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x128uLL);
  result = outlined init with copy of IndexPath?(v2, a1, type metadata accessor for ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>);
  *(a1 + 120) = v4;
  *(a1 + 128) = 0;
  return result;
}

uint64_t closure #1 in PageViewWrapper.toolbarModifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (one-time initialization token for status != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.status, v11);
  outlined init with copy of ToolbarItemPlacement(v11, v10);
  outlined init with copy of ToolbarItemPlacement(v10, a4);
  *(a4 + 184) = 0;
  closure #1 in closure #1 in PageViewWrapper.toolbarModifier.getter(a1, a2, a3, a4 + 48, v8);
  outlined destroy of ToolbarItemPlacement(v10);
  return outlined destroy of ToolbarItemPlacement(v11);
}

__n128 closure #1 in closure #1 in PageViewWrapper.toolbarModifier.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for PageViewWrapper(0, a2, a3, a5);
  if (*(a1 + *(v7 + 44)) == 2)
  {
    *(a4 + 128) = 0;
    result.n128_u64[0] = 0;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    PageViewWrapper.indexView.getter(v7, v12);
    v9 = v12[7];
    *(a4 + 96) = v12[6];
    *(a4 + 112) = v9;
    *(a4 + 128) = v13;
    v10 = v12[3];
    *(a4 + 32) = v12[2];
    *(a4 + 48) = v10;
    v11 = v12[5];
    *(a4 + 64) = v12[4];
    *(a4 + 80) = v11;
    result = v12[1];
    *a4 = v12[0];
    *(a4 + 16) = result;
  }

  return result;
}

uint64_t PageViewWrapper.init(children:selection:displayMode:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  AnyHashable.init<A>(_:)();
  *a6 = v19;
  *(a6 + 16) = v20;
  *(a6 + 32) = v21;
  *(a6 + 40) = 0;
  v12 = a1[1];
  *(a6 + 48) = *a1;
  *(a6 + 64) = v12;
  v13 = a1[3];
  *(a6 + 80) = a1[2];
  *(a6 + 96) = v13;
  v15 = type metadata accessor for PageViewWrapper(0, a4, a5, v14);
  v16 = *(v15 + 40);
  type metadata accessor for Binding();
  v17 = type metadata accessor for Optional();
  result = (*(*(v17 - 8) + 32))(a6 + v16, a2, v17);
  *(a6 + *(v15 + 44)) = v11;
  return result;
}

id UIKitPagingView.makeUIView(context:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(type metadata accessor for PagingLayout()) init];
  v3 = [objc_allocWithZone(type metadata accessor for PagingCollectionView(0)) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v4 = v3;
  [v4 _setShouldSkipForcedLayoutBeforeBatchUpdates_];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  v8 = v6;
  [v8 setShowsHorizontalScrollIndicator_];
  [v8 setDataSource_];
  [v8 setDelegate_];

  [v8 setPagingEnabled_];
  type metadata accessor for UIKitPagingCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = MEMORY[0x18D00C850](0xD00000000000001CLL, 0x800000018CD44A20);
  [v8 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v10];

  v11 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_collectionView);
  *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_collectionView) = v8;
  v12 = v8;

  return v12;
}

uint64_t UIKitPagingView.updateUIView(_:context:)(char *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a2[3];
  v6 = *(a2 + 32);
  v7 = a2[5];
  v20 = *a2;
  v21 = *(a2 + 1);
  v22 = v5;
  v23 = v6;
  RepresentableContextValues.environment.getter();
  v20 = v18;
  *&v21 = v19;
  EnvironmentValues.layoutDirection.getter();

  v8 = v24;
  v9 = *(v7 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_layoutDirection);
  *(v7 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_layoutDirection) = v24;
  if (v9 != v8)
  {
    v10 = v7 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSeenIndex;
    *v10 = 0;
    *(v10 + 8) = 1;
    v11 = v7 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex;
    *v11 = 0;
    *(v11 + 8) = 1;
    *(v7 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastSeenIndex) = -1;
  }

  outlined init with copy of _VariadicView_Children((v2 + 3), &v20);
  v12 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children;
  swift_beginAccess();
  outlined assign with take of _VariadicView_Children(&v20, v7 + v12);
  swift_endAccess();
  Coordinator.updateDataSourceIfNeeded(_:)();
  v13 = v3[1];
  v14 = v3[2];
  v15 = (v7 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex);
  *v15 = *v3;
  v15[1] = v13;
  v15[2] = v14;

  v16 = Transaction.isPageScrollAnimated.getter();

  return Coordinator.scroll(_:isAnimated:)(a1, v16 & 1);
}

char *UIKitPagingView._identifiedViewTree(in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 2);
  v32 = *v2;
  v33 = v9;
  _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v31);
  MEMORY[0x18D0006A0](*v31, 0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  v11 = [a1 cellForItemAtIndexPath_];

  if (v11)
  {
    type metadata accessor for UIKitPagingCell();
    v12 = swift_dynamicCastClass();
    if (v12 && (v13 = *(v12 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host)) != 0)
    {
      _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
      v14 = v13;
      ViewGraphRootValueUpdater._preferenceValue<A>(_:)();
      outlined init with copy of _IdentifiedViewTree(&v32, v31);
      if (v31[168] != 2 || (v15 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v31[40], *&v31[104]), vorrq_s8(*&v31[72], *&v31[136])), vorrq_s8(vorrq_s8(*&v31[56], *&v31[120]), vorrq_s8(*&v31[88], *&v31[152]))), vorrq_s8(*&v31[8], *&v31[24])), *&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | *v31))
      {
        outlined destroy of _IdentifiedViewTree(v31);
        outlined init with copy of _IdentifiedViewTree(&v32, v31);
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
        }

        v19 = v16;

        outlined destroy of _IdentifiedViewTree(&v32);
        result = v19;
        *(v19 + 2) = v18 + 1;
        v21 = &v19[176 * v18];
        v23 = *&v31[16];
        v22 = *&v31[32];
        *(v21 + 2) = *v31;
        *(v21 + 3) = v23;
        *(v21 + 4) = v22;
        v24 = *&v31[96];
        v26 = *&v31[48];
        v25 = *&v31[64];
        *(v21 + 7) = *&v31[80];
        *(v21 + 8) = v24;
        *(v21 + 5) = v26;
        *(v21 + 6) = v25;
        v28 = *&v31[128];
        v27 = *&v31[144];
        v29 = *&v31[112];
        *(v21 + 185) = *&v31[153];
        *(v21 + 10) = v28;
        *(v21 + 11) = v27;
        *(v21 + 9) = v29;
        if (!*(v19 + 2))
        {
          goto LABEL_9;
        }

LABEL_12:
        v30 = 1;
        goto LABEL_13;
      }

      outlined destroy of _IdentifiedViewTree(&v32);

      outlined destroy of _IdentifiedViewTree(v31);
    }

    else
    {
    }
  }

  result = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_12;
  }

LABEL_9:

  result = 0;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  v30 = 2;
  *(a2 + 8) = 0u;
LABEL_13:
  *a2 = result;
  *(a2 + 168) = v30;
  return result;
}

void UIKitPagingView._overrideSizeThatFits(_:in:uiView:)(double *a1, uint64_t *a2, void *a3)
{
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2_3>, MEMORY[0x1E697E4F8], MEMORY[0x1E697E4F0], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    v5 = UIKitPagingView.layoutTraitsHost(for:)(a3);
    if (v5)
    {
      v6 = v5;
      _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
      ViewRendererHost.sizeThatFits(_:)();
      v8 = v7;
      v10 = v9;
      v11 = COERCE_DOUBLE(_ProposedSize.width.getter());
      if (v12)
      {
        v11 = 0.0;
      }

      if (v8 > v11)
      {
        v11 = v8;
      }

      *a1 = v11;
      *&v13 = COERCE_DOUBLE(_ProposedSize.height.getter());
      v15 = v14;

      v16 = *&v13;
      if (v15)
      {
        v16 = 0.0;
      }

      if (v10 > v16)
      {
        v16 = v10;
      }

      a1[1] = v16;
    }
  }
}

char *UIKitPagingView.layoutTraitsHost(for:)(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 2);
  v18 = *v1;
  v19 = v7;
  _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v17);
  MEMORY[0x18D0006A0](v17[0], 0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  v9 = [a1 cellForItemAtIndexPath_];

  if (v9)
  {
    type metadata accessor for UIKitPagingCell();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host);
      v12 = v11;

      if (v11)
      {
        return v11;
      }
    }

    else
    {
    }
  }

  if (!_VariadicView_Children.endIndex.getter())
  {
    return 0;
  }

  _VariadicView_Children.subscript.getter();
  outlined init with copy of _ViewList_View(&v18, v17);
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
  v14 = objc_allocWithZone(v13);
  v11 = specialized _UIHostingView.init(rootView:)(v17);
  outlined destroy of _VariadicView_Children.Element(&v18);
  return v11;
}

void protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitPagingView(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  outlined init with copy of _VariadicView_Children((v1 + 3), v9);
  v8 = 0;
  v6 = objc_allocWithZone(type metadata accessor for Coordinator());

  v7 = specialized Coordinator.init(selectedIndex:children:layoutDirection:)(v3, v4, v5, v9, &v8);

  *a1 = v7;
}

void protocol witness for UIViewRepresentable._overrideLayoutTraits(_:for:) in conformance UIKitPagingView(uint64_t a1, void *a2)
{
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2_3>, MEMORY[0x1E697E4F8], MEMORY[0x1E697E4F0], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    v3 = UIKitPagingView.layoutTraitsHost(for:)(a2);
    if (v3)
    {
      v4 = v3;
      static _ProposedSize.unspecified.getter();
      _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
      ViewRendererHost.sizeThatFits(_:)();
      _LayoutTraits.minSize.setter();
      _LayoutTraits.maxSize.setter();
      _LayoutTraits.idealSize.setter();
    }
  }
}

void PagingLayout.layoutAttributesForElements(in:)(double a1, double a2, double a3, double a4)
{
  v14.receiver = v4;
  v14.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v14, sel_layoutAttributesForElementsInRect_, a1, a2, a3, a4);
  if (v9)
  {
    v10 = v9;
    type metadata accessor for UICollectionViewLayoutAttributes();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      v12 = __CocoaSet.count.getter();
      if (!v12)
      {
        return;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        return;
      }
    }

    if (v12 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v12; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x18D00E9C0](i, v11);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t Coordinator.updateDataSourceIfNeeded(_:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children;
  swift_beginAccess();
  outlined init with copy of _VariadicView_Children(v1 + v2, v7);
  v3 = _ViewList_Backing.ids.getter();
  outlined destroy of _ViewList_Backing(v7);

  v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZs11AnyHashableV_Tt1g5(v4, v3);

  if ((v5 & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E7CC0];
    type metadata accessor for CollectionChanges<Int, Int>();
    _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for [AnyHashable], MEMORY[0x1E69E69B8], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [AnyHashable] and conformance [A]();
    CollectionChanges.formChanges<A, B>(from:to:)();
    PagingCollectionView.apply(changes:newIDs:)(v7, v3);
  }
}

uint64_t Coordinator.updateContents(_:)(void *a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v7 = [a1 indexPathsForVisibleItems];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v12;
    v13 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v19[1] = v8;
    v14 = v8 + v13;
    v15 = *(v11 + 56);
    v12(v6, v14, v2);
    while (1)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v17 = [v20 cellForItemAtIndexPath_];

      if (v17)
      {
        Coordinator.configureCell(_:at:)(v17);
      }

      (*(v11 - 8))(v6, v2);
      v14 += v15;
      if (!--v9)
      {
        break;
      }

      v10(v6, v14, v2);
    }
  }
}

uint64_t Coordinator.scroll(_:isAnimated:)(char *a1, int a2)
{
  v44 = a2;
  type metadata accessor for IndexPath?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v2;
  v11 = (v2 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex);
  v12 = (v2 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex);
  if (*(v2 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex + 8) == 1)
  {
    v13 = *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex + 16);
    v46 = *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex);
    v47 = v13;
    _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
    v12 = &v48;
    MEMORY[0x18D00ACC0](&v48);
  }

  MEMORY[0x18D0006A0](*v12, 0);
  v43 = *(v8 + 16);
  v43(v6, v10, v7);
  v42 = *(v8 + 56);
  v42(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastScrolledIndexPath;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v6, &a1[v14]);
  swift_endAccess();
  v15 = v11;
  if (*(v11 + 8) == 1)
  {
    v16 = *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex + 16);
    v46 = *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex);
    v47 = v16;
    _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
    v15 = &v48;
    MEMORY[0x18D00ACC0](&v48);
  }

  v17 = *v15;
  v41 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastSeenIndex;
  if (v17 != *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastSeenIndex))
  {
    if (*(v11 + 8) == 1)
    {
      v19 = *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex + 16);
      v46 = *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex);
      v47 = v19;
      _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
      v11 = &v48;
      MEMORY[0x18D00ACC0](&v48);
    }

    v20 = *v11;
    v21 = v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSeenIndex;
    *v21 = v20;
    *(v21 + 8) = 0;
    [a1 contentOffset];
    v23 = v22;
    v25 = v24;
    v26 = [a1 window];
    if (v26)
    {

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [a1 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:v44 & 1];
    }

    else
    {
      v43(v6, v10, v7);
      v42(v6, 0, 1, v7);
      v28 = v21;
      v29 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_pendingIndexPath;
      swift_beginAccess();
      v30 = &a1[v29];
      v21 = v28;
      outlined assign with take of IndexPath?(v6, v30);
      swift_endAccess();
    }

    [a1 contentOffset];
    if (v32 == v23 && v31 == v25)
    {
      [a1 contentOffset];
      v34 = v33;
      v36 = v35;
      [a1 bounds];
      Coordinator.index(at:in:)(v34, v36, v37);
      if ((v39 & 1) == 0)
      {
        *(v45 + v41) = v38;
        if ((*(v21 + 8) & 1) == 0 && *v21 == v38)
        {
          *v21 = 0;
          *(v21 + 8) = 1;
        }

        Coordinator.updateSelectedIndex(newIndex:)(v38);
      }
    }
  }

  return (*(v8 + 8))(v10, v7);
}

void Coordinator.index(at:in:)(double a1, double a2, double a3)
{
  if (a3 > 0.0)
  {
    v4 = round(a1 / a3);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        if (*(v3 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_layoutDirection) != 1)
        {
          return;
        }

        v5 = v4;
        v6 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children;
        swift_beginAccess();
        outlined init with copy of _VariadicView_Children(v3 + v6, v9);
        v7 = _VariadicView_Children.endIndex.getter();
        if ((_VariadicView_Children.endIndex.getter() & 0x8000000000000000) == 0)
        {
          v8 = _VariadicView_Children.endIndex.getter();
          outlined destroy of _VariadicView_Children(v9);
          if ((v7 & 0x8000000000000000) == 0 && v8 >= v7)
          {
            if (!__OFSUB__(v7 - 1, v5))
            {
              return;
            }

LABEL_16:
            __break(1u);
            return;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t @objc Coordinator.collectionView(_:willDisplay:forItemAt:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void Coordinator.scrollViewDidScroll(_:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_collectionView);
  if (v2)
  {
    v3 = v2 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastLayoutSize;
    if ((*(v3 + 16) & 1) == 0)
    {
      v4 = *v3;
      [a1 bounds];
      if (v4 == CGRectGetWidth(v15))
      {
        [a1 contentOffset];
        v7 = v6;
        v9 = v8;
        [a1 bounds];
        Coordinator.index(at:in:)(v7, v9, v10);
        if ((v12 & 1) == 0)
        {
          *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastSeenIndex) = v11;
          v13 = v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSeenIndex;
          if ((*(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSeenIndex + 8) & 1) == 0 && *v13 == v11)
          {
            *v13 = 0;
            *(v13 + 8) = 1;
          }

          Coordinator.updateSelectedIndex(newIndex:)(v11);
        }
      }
    }
  }
}

void Coordinator.configureCell(_:at:)(void *a1)
{
  v2 = v1;
  type metadata accessor for UIKitPagingCell();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children;
  swift_beginAccess();
  outlined init with copy of _VariadicView_Children(v1 + v6, v42);
  v7 = a1;
  v8 = _VariadicView_Children.endIndex.getter();
  if (_VariadicView_Children.endIndex.getter() < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v9 = _VariadicView_Children.endIndex.getter();
  outlined destroy of _VariadicView_Children(v42);
  if (v8 < 0 || v9 < v8)
  {
    goto LABEL_16;
  }

  v10 = IndexPath.item.getter();
  if ((v10 & 0x8000000000000000) != 0 || v10 >= v8)
  {
  }

  else
  {
    outlined init with copy of _VariadicView_Children(v2 + v6, v41);
    IndexPath.item.getter();
    _VariadicView_Children.subscript.getter();
    outlined destroy of _VariadicView_Children(v41);
    outlined init with copy of _ViewList_View(v42, v43);
    outlined destroy of _VariadicView_Children.Element(v42);
    v11 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host;
    v12 = *&v5[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host];
    if (v12)
    {
      v13 = v12;
      v14 = [v5 contentView];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      [v13 setFrame_];
      outlined init with copy of _ViewList_View(v43, v42);
      outlined init with copy of _ViewList_View(v42, v41);
      v23 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x60);
      swift_beginAccess();
      outlined assign with take of _ViewList_View(v41, v13 + v23);
      swift_endAccess();
      _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>, protocol conformance descriptor for _UIHostingView<A>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      outlined destroy of _ViewList_View(v42);
    }

    else
    {
      outlined init with copy of _ViewList_View(v43, v42);
      _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
      v25 = objc_allocWithZone(v24);
      v26 = specialized _UIHostingView.init(rootView:)(v42);
      v27 = *&v5[v11];
      *&v5[v11] = v26;
      v28 = v26;

      v29 = *&v5[v11];
      if (v29)
      {
        *(v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x1C0) + 8) = &protocol witness table for UIKitPagingCell;
        swift_unknownObjectWeakAssign();
      }

      v30 = v7;
      v31 = [v5 contentView];
      [v31 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      [v28 setFrame_];
      [v28 setAutoresizingMask_];
      v40 = [v5 contentView];

      [v40 addSubview_];
    }

    outlined destroy of _ViewList_View(v43);
  }
}

void *Coordinator.updateSelectedIndex(newIndex:)(void *result)
{
  if (*(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSeenIndex + 8) == 1)
  {
    v2 = result;
    v3 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex + 16);
    v6 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex);
    v7 = v3;
    _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
    result = MEMORY[0x18D00ACC0](&v5);
    if (v5 != v2)
    {
      v4 = v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex;
      if (*(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex + 8))
      {
        *v4 = v2;
        *(v4 + 8) = 0;
        LOBYTE(v6) = 17;
        swift_allocObject();
        swift_unknownObjectWeakInit();

        static Update.enqueueAction(reason:_:)();
      }

      else if (*v4 != v2)
      {
        *v4 = v2;
        *(v4 + 8) = 0;
      }
    }
  }

  return result;
}

void closure #1 in Coordinator.updateSelectedIndex(newIndex:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex + 8];

    if ((v2 & 1) == 0)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;

        dispatch thunk of AnyLocation.set(_:transaction:)();
      }
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = &v5[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex];
    *v6 = 0;
    v6[8] = 1;
  }
}

uint64_t Coordinator.__ivar_destroyer()
{

  outlined destroy of _VariadicView_Children(v0 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children);
}

{
}

{
  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v0 + OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_state, type metadata accessor for Binding<SearchFieldState>);
  return _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v0 + OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_selection, type metadata accessor for SearchBoundProperty<TextSelection?>?);
}

void PagingCollectionView.apply(changes:newIDs:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in PagingCollectionView.apply(changes:newIDs:);
  *(v7 + 24) = v6;
  v16 = partial apply for thunk for @callee_guaranteed () -> ();
  v17 = v7;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed () -> ();
  v15 = &block_descriptor_20;
  v8 = _Block_copy(&v12);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = partial apply for closure #2 in PagingCollectionView.apply(changes:newIDs:);
  v17 = v9;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v15 = &block_descriptor_66;
  v10 = _Block_copy(&v12);

  [v2 performBatchUpdates:v8 completion:v10];
  _Block_release(v10);
  _Block_release(v8);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t closure #1 in PagingCollectionView.apply(changes:newIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = type metadata accessor for IndexPath();
  v6 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v90 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v89 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v89 - v12;
  swift_beginAccess();
  v96 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = [Strong dataSource];

    if (v16)
    {
      type metadata accessor for Coordinator();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        *(v17 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastIDs) = a2;
      }

      swift_unknownObjectRelease();
    }
  }

  v102 = 0;
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v19 = v18;
  swift_bridgeObjectRetain_n();
  v89[2] = a3;
  v89[1] = v19;
  CollectionChanges.Projection.init(kind:changes:)();
  LODWORD(v95) = v103;
  v20 = v104;
  v21 = v105;
  v22 = v106;
  swift_beginAccess();
  v97 = v10;
  if (v21 != v22)
  {
    v94 = v20 + 32;
    v23 = MEMORY[0x1E69E7CD0];
    v58 = v21;
    v93 = v20;
    v92 = v21;
    v91 = v22;
    while ((v58 & 0x8000000000000000) == 0)
    {
      if (v58 >= *(v20 + 16))
      {
        goto LABEL_98;
      }

      v61 = v94 + 40 * v58;
      v10 = v58;
      if (*(v61 + 32) >= 2u)
      {
        goto LABEL_108;
      }

      v63 = *v61;
      v62 = *(v61 + 8);
      LOBYTE(v103) = v95;
      v104 = v20;
      v105 = v21;
      v106 = v22;
      type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>(0);
      v98 = CollectionChanges.Projection.index(after:)(v10);
      if (v63 != v62)
      {
        if (v62 < v63)
        {
          goto LABEL_105;
        }

        v64 = v63;
        if (v63 >= v62)
        {
          goto LABEL_106;
        }

        do
        {
          v66 = v23 + 56;
          v67 = v64;
          while (1)
          {
            v64 = v67 + 1;
            v68 = MEMORY[0x18D00F6C0](*(v23 + 40), v67);
            v69 = -1 << *(v23 + 32);
            v10 = v68 & ~v69;
            if (((*(v66 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              break;
            }

            v70 = ~v69;
            while (*(*(v23 + 48) + 8 * v10) != v67)
            {
              v10 = (v10 + 1) & v70;
              if (((*(v66 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            ++v67;
            if (v64 == v62)
            {
              goto LABEL_62;
            }
          }

LABEL_54:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = v23;
          specialized _NativeSet.insertNew(_:at:isUnique:)(v67, v10, isUniquelyReferenced_nonNull_native);
          v23 = v103;
        }

        while (v64 != v62);
      }

LABEL_62:
      v71 = v62 - v63;
      if (__OFSUB__(v62, v63))
      {
        goto LABEL_99;
      }

      if (v71)
      {
        v103 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71 & ~(v71 >> 63), 0);
        v10 = v97;
        if (v62 < v63 || v71 < 0)
        {
          goto LABEL_103;
        }

        v72 = v103;
        while (1)
        {
          MEMORY[0x18D000680](v63, 0);
          v103 = v72;
          v74 = *(v72 + 16);
          v73 = *(v72 + 24);
          if (v74 >= v73 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1);
            v72 = v103;
          }

          *(v72 + 16) = v74 + 1;
          (*(v6 + 32))(v72 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v74, v13, v99);
          if (v62 == v63)
          {
            break;
          }

          if (v62 == ++v63)
          {
            goto LABEL_73;
          }
        }

        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v10 = v97;
LABEL_73:
      v75 = swift_unknownObjectWeakLoadStrong();
      if (v75)
      {
        v59 = v75;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v59 deleteItemsAtIndexPaths_];
      }

      else
      {
      }

      v20 = v93;
      v21 = v92;
      v22 = v91;
      v58 = v98;
      if (v98 == v91)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_97;
  }

  v23 = MEMORY[0x1E69E7CD0];
LABEL_8:

  LOBYTE(v101) = 1;
  CollectionChanges.Projection.init(kind:changes:)();
  LODWORD(v95) = v103;
  v24 = v104;
  v25 = v105;
  v26 = v106;
  swift_beginAccess();
  v98 = v25;
  if (v25 != v26)
  {
    v94 = v24 + 32;
    v76 = v98;
    v92 = v24;
    v93 = v26;
    while ((v76 & 0x8000000000000000) == 0)
    {
      if (v76 >= *(v24 + 16))
      {
        goto LABEL_101;
      }

      v79 = v94 + 40 * v76;
      if (*(v79 + 32) >= 2u)
      {
        v103 = 0;
        v104 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v103 = 0x2064696C61766E69;
        v104 = 0xEF203A7865646E69;
        v100 = v76;
        goto LABEL_110;
      }

      v81 = *v79;
      v80 = *(v79 + 8);
      LOBYTE(v103) = v95;
      v104 = v24;
      v105 = v98;
      v106 = v26;
      type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>(0);
      v82 = CollectionChanges.Projection.index(after:)(v76);
      v83 = v80 - v81;
      if (__OFSUB__(v80, v81))
      {
        goto LABEL_102;
      }

      v76 = v82;
      if (v83)
      {
        v103 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83 & ~(v83 >> 63), 0);
        if (v80 < v81 || v83 < 0)
        {
          goto LABEL_104;
        }

        v84 = v103;
        while (1)
        {
          MEMORY[0x18D000680](v81, 0);
          v103 = v84;
          v86 = *(v84 + 16);
          v85 = *(v84 + 24);
          if (v86 >= v85 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
            v84 = v103;
          }

          *(v84 + 16) = v86 + 1;
          (*(v6 + 32))(v84 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v86, v10, v99);
          if (v80 == v81)
          {
            goto LABEL_94;
          }

          if (v80 == ++v81)
          {
            v24 = v92;
            break;
          }
        }
      }

      v87 = swift_unknownObjectWeakLoadStrong();
      v26 = v93;
      if (v87)
      {
        v77 = v87;
        v78 = Array._bridgeToObjectiveC()().super.isa;

        [v77 insertItemsAtIndexPaths_];

        v10 = v97;
      }

      else
      {
      }

      if (v76 == v26)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_100;
  }

LABEL_9:

  LOBYTE(v100) = 2;
  type metadata accessor for (Range<Int>, Range<Int>)(0);
  CollectionChanges.Projection.init(kind:changes:)();
  v94 = v104;
  v27 = v106;
  v93 = v105;
  if (v105 == v106)
  {
LABEL_43:
  }

  LODWORD(v92) = v103;
  swift_beginAccess();
  v28 = v23 + 56;
  v98 = v6 + 32;
  v29 = v93;
  v91 = v27;
  while (1)
  {
    v30 = v92;
    v31 = v94;
    v32 = v93;
    v33 = specialized CollectionChanges.Projection.subscript.getter(v29, v92, v94);
    v35 = v34;
    LOBYTE(v103) = v30;
    v36 = v33;
    v104 = v31;
    v105 = v32;
    v106 = v27;
    type metadata accessor for CollectionChanges<Int, Int>.Projection<(Range<Int>, Range<Int>)>(0);
    v95 = CollectionChanges.Projection.index(after:)(v29);
    v10 = MEMORY[0x1E69E7CC0];
    if (v36 != v35)
    {
      break;
    }

LABEL_13:
    v37 = *(v10 + 16);
    if (v37)
    {
      v103 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
      v38 = v103;
      v39 = 32;
      v40 = v90;
      do
      {
        MEMORY[0x18D000680](*(v10 + v39), 0);
        v103 = v38;
        v42 = *(v38 + 16);
        v41 = *(v38 + 24);
        if (v42 >= v41 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
          v38 = v103;
        }

        *(v38 + 16) = v42 + 1;
        (*(v6 + 32))(v38 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v42, v40, v99);
        v39 += 8;
        --v37;
      }

      while (v37);
    }

    v54 = swift_unknownObjectWeakLoadStrong();
    v27 = v91;
    v29 = v95;
    if (v54)
    {
      v55 = v54;
      v56 = Array._bridgeToObjectiveC()().super.isa;

      [v55 reloadItemsAtIndexPaths_];

      if (v29 == v27)
      {
        goto LABEL_43;
      }
    }

    else
    {

      if (v29 == v27)
      {
        goto LABEL_43;
      }
    }
  }

  if (v35 >= v36)
  {
    v43 = v36;
    v97 = v36;
LABEL_21:
    v44 = v43;
    if (v35 <= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v35;
    }

    v46 = v43;
    while (v44 >= v36)
    {
      if (v46 == v45)
      {
        goto LABEL_96;
      }

      v43 = v46 + 1;
      if (!*(v23 + 16) || (v47 = MEMORY[0x18D00F6C0](*(v23 + 40), v46), v48 = -1 << *(v23 + 32), v49 = v47 & ~v48, ((*(v28 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0))
      {
LABEL_35:
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v103 = v10;
        if ((v51 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
          v10 = v103;
        }

        v53 = *(v10 + 16);
        v52 = *(v10 + 24);
        if (v53 >= v52 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
          v10 = v103;
        }

        *(v10 + 16) = v53 + 1;
        *(v10 + 8 * v53 + 32) = v46;
        v36 = v97;
        if (v43 != v35)
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }

      v50 = ~v48;
      while (*(*(v23 + 48) + 8 * v49) != v46)
      {
        v49 = (v49 + 1) & v50;
        if (((*(v28 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      ++v46;
      if (v43 == v35)
      {
        goto LABEL_13;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
  }

  __break(1u);
LABEL_108:
  v103 = 0;
  v104 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v103 = 0x2064696C61766E69;
  v104 = 0xEF203A7865646E69;
  v101 = v10;
LABEL_110:
  v88 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v88);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double closure #2 in PagingCollectionView.apply(changes:newIDs:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (![Strong dataSource])
    {
LABEL_5:

      return result;
    }

    type metadata accessor for Coordinator();
    if (swift_dynamicCastClass())
    {
      Coordinator.updateContents(_:)(v4);
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  return result;
}