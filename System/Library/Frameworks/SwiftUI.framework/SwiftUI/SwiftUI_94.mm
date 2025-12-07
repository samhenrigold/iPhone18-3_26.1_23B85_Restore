uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, __n128 a5)
{
  v84 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v6 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9, a5.n128_f64[0]);
      v9 = result;
    }

    v76 = (v9 + 16);
    v77 = *(v9 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v9 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v78), (*a3 + 16 * *v80), (*a3 + 16 * v81), v6);
        if (v5)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      a5.n128_u64[0] = *(*a3 + 16 * v8 + 8);
      v11 = 16 * v10;
      v12 = *a3 + 16 * v10;
      v13 = *(v12 + 8);
      v14 = v10 + 2;
      v15 = (v12 + 40);
      v16 = a5.n128_f64[0];
      while (v7 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 > v16;
        ++v14;
        v16 = v17;
        if ((((a5.n128_f64[0] <= v13) ^ v18) & 1) == 0)
        {
          v8 = v14 - 1;
          if (a5.n128_f64[0] > v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (a5.n128_f64[0] > v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_119;
      }

      if (v10 < v8)
      {
        v19 = 16 * v8 - 16;
        v20 = v8;
        v21 = v10;
        do
        {
          if (v21 != --v20)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            a5 = *(v22 + v11);
            *(v22 + v11) = *(v22 + v19);
            *(v22 + v19) = a5;
          }

          ++v21;
          v19 -= 16;
          v11 += 16;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_118;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_120;
        }

        if (v10 + a4 < v7)
        {
          v7 = v10 + a4;
        }

        if (v7 < v10)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v6 = *(v9 + 16);
    v30 = *(v9 + 24);
    v31 = v6 + 1;
    if (v6 >= v30 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v6 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v31;
    v32 = v9 + 32;
    v33 = (v9 + 32 + 16 * v6);
    *v33 = v10;
    v33[1] = v8;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v6)
    {
      while (1)
      {
        v6 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v9 + 32);
          v35 = *(v9 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v9 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v6);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v6 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v9 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v6);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v6 - 1 >= v31)
        {
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
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v6 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v6);
        v74 = v73[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v71), (*a3 + 16 * *v73), (*a3 + 16 * v74), v85);
        if (v5)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v6 > *(v9 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v9 + 16);
        if (v6 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v6), v73 + 2, 16 * (v75 - 1 - v6));
        *(v9 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v9 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v6);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v6 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    a4 = v83;
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 16 * v8;
  v25 = v10 - v8;
LABEL_30:
  a5.n128_u64[0] = *(v23 + 16 * v8 + 8);
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (a5.n128_f64[0] > *(v27 - 1))
    {
LABEL_29:
      ++v8;
      v24 += 16;
      --v25;
      if (v8 != v7)
      {
        goto LABEL_30;
      }

      v8 = v7;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = *v27;
    *v27 = *(v27 - 1);
    *(v27 - 1) = a5.n128_f64[0];
    *(v27 - 2) = v28;
    v27 -= 2;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

{
  v85 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v6 = *v85;
    if (!*v85)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9, a5.n128_f64[0]);
      v9 = result;
    }

    v77 = (v9 + 16);
    v78 = *(v9 + 16);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = (v9 + 16 * v78);
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v79), (*a3 + 16 * *v81), (*a3 + 16 * v82), v6);
        if (v5)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_114;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_115;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_116;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v84 = a4;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      a5.n128_u64[0] = *(*a3 + 16 * v8);
      v11 = 16 * v10;
      v12 = (*a3 + 16 * v10);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v10 + 2;
      v17 = a5.n128_f64[0];
      while (v7 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 > v17;
        ++v16;
        v17 = v18;
        if ((((a5.n128_f64[0] <= v15) ^ v19) & 1) == 0)
        {
          v8 = v16 - 1;
          if (a5.n128_f64[0] > v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (a5.n128_f64[0] > v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_119;
      }

      if (v10 < v8)
      {
        v20 = 16 * v8 - 16;
        v21 = v8;
        v22 = v10;
        do
        {
          if (v22 != --v21)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            a5 = *(v23 + v11);
            *(v23 + v11) = *(v23 + v20);
            *(v23 + v20) = a5;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_118;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_120;
        }

        if (v10 + a4 < v7)
        {
          v7 = v10 + a4;
        }

        if (v7 < v10)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v6 = *(v9 + 16);
    v31 = *(v9 + 24);
    v32 = v6 + 1;
    if (v6 >= v31 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v6 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v32;
    v33 = v9 + 32;
    v34 = (v9 + 32 + 16 * v6);
    *v34 = v10;
    v34[1] = v8;
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_127;
    }

    if (v6)
    {
      while (1)
      {
        v6 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v35 = *(v9 + 32);
          v36 = *(v9 + 40);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_57:
          if (v38)
          {
            goto LABEL_104;
          }

          v51 = (v9 + 16 * v32);
          v53 = *v51;
          v52 = v51[1];
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_106;
          }

          v57 = (v33 + 16 * v6);
          v59 = *v57;
          v58 = v57[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_111;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v6 = v32 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v32 < 2)
        {
          goto LABEL_112;
        }

        v61 = (v9 + 16 * v32);
        v63 = *v61;
        v62 = v61[1];
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_72:
        if (v56)
        {
          goto LABEL_108;
        }

        v64 = (v33 + 16 * v6);
        v66 = *v64;
        v65 = v64[1];
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_110;
        }

        if (v67 < v55)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v6 - 1 >= v32)
        {
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
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v72 = (v33 + 16 * (v6 - 1));
        v73 = *v72;
        v74 = (v33 + 16 * v6);
        v75 = v74[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v72), (*a3 + 16 * *v74), (*a3 + 16 * v75), v86);
        if (v5)
        {
        }

        if (v75 < v73)
        {
          goto LABEL_99;
        }

        if (v6 > *(v9 + 16))
        {
          goto LABEL_100;
        }

        *v72 = v73;
        v72[1] = v75;
        v76 = *(v9 + 16);
        if (v6 >= v76)
        {
          goto LABEL_101;
        }

        v32 = v76 - 1;
        result = memmove((v33 + 16 * v6), v74 + 2, 16 * (v76 - 1 - v6));
        *(v9 + 16) = v76 - 1;
        if (v76 <= 2)
        {
          goto LABEL_3;
        }
      }

      v39 = v33 + 16 * v32;
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_102;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_103;
      }

      v46 = (v9 + 16 * v32);
      v48 = *v46;
      v47 = v46[1];
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_105;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_107;
      }

      if (v50 >= v42)
      {
        v68 = (v33 + 16 * v6);
        v70 = *v68;
        v69 = v68[1];
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_113;
        }

        if (v37 < v71)
        {
          v6 = v32 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    a4 = v84;
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 16 * v8 - 16;
  v26 = v10 - v8;
LABEL_30:
  a5.n128_u64[0] = *(v24 + 16 * v8);
  v27 = v26;
  v28 = v25;
  while (1)
  {
    if (a5.n128_f64[0] > *v28)
    {
LABEL_29:
      ++v8;
      v25 += 16;
      --v26;
      if (v8 != v7)
      {
        goto LABEL_30;
      }

      v8 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    v29 = *(v28 + 24);
    *(v28 + 16) = *v28;
    *v28 = a5.n128_u64[0];
    *(v28 + 8) = v29;
    v28 -= 16;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

{
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8, a5.n128_f64[0]);
      v8 = result;
    }

    v92 = (v8 + 16);
    v93 = *(v8 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v8 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 56 * *v94), (*a3 + 56 * *v96), *a3 + 56 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 56 * v7);
      v11 = (*a3 + 56 * v9);
      v14 = *v11;
      v13 = v11 + 14;
      v12 = v14;
      v15 = v9 + 2;
      v16 = v10;
      while (v6 != v15)
      {
        v17 = *v13;
        v13 += 7;
        v18 = (v10 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v15 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 56 * v7 - 56;
        v20 = 56 * v9 + 40;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v31 + v20);
            v24 = *(v31 + v20 - 40);
            v25 = v31 + v19;
            a5 = *(v23 - 2);
            v26 = *(v23 - 1);
            v27 = *v23;
            v29 = *(v25 + 16);
            v28 = *(v25 + 32);
            v30 = *(v25 + 48);
            *(v23 - 40) = *v25;
            *(v23 + 1) = v30;
            *(v23 - 8) = v28;
            *(v23 - 24) = v29;
            *v25 = v24;
            *(v25 + 8) = a5;
            *(v25 + 24) = v26;
            *(v25 + 40) = v27;
          }

          ++v22;
          v19 -= 56;
          v20 += 56;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v45 = *(v8 + 16);
    v44 = *(v8 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v46;
    v47 = v8 + 32;
    v48 = (v8 + 32 + 16 * v45);
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 32);
          v51 = *(v8 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v8 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v8 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
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
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 56 * *v87), (*a3 + 56 * *v89), *a3 + 56 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v8 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v8 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v8 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 56 * v7 - 56;
  v34 = v9 - v7;
LABEL_30:
  v35 = *(v32 + 56 * v7);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = v37 + 56;
    if (v35 >= *v37)
    {
LABEL_29:
      ++v7;
      v33 += 56;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    a5 = *(v37 + 64);
    v39 = *(v37 + 80);
    v40 = *(v37 + 96);
    v41 = *(v37 + 16);
    *v38 = *v37;
    *(v37 + 72) = v41;
    *(v37 + 88) = *(v37 + 32);
    v42 = *(v37 + 48);
    *v37 = v35;
    *(v37 + 8) = a5;
    *(v37 + 24) = v39;
    *(v37 + 40) = v40;
    v37 -= 56;
    *(v38 + 48) = v42;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

{
  v7 = v5;
  v112 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_124:
    v6 = *v112;
    if (!*v112)
    {
      goto LABEL_162;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_126:
      v122 = v11;
      v107 = *(v11 + 2);
      if (v107 >= 2)
      {
        while (*a3)
        {
          v108 = *&v11[16 * v107];
          v109 = *&v11[16 * v107 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + (v108 << 6)), (*a3 + (*&v11[16 * v107 + 16] << 6)), (*a3 + (v109 << 6)), v6);
          if (v7)
          {
          }

          if (v109 < v108)
          {
            goto LABEL_149;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11, a5.n128_f64[0]);
          }

          if (v107 - 2 >= *(v11 + 2))
          {
            goto LABEL_150;
          }

          v110 = &v11[16 * v107];
          *v110 = v108;
          *(v110 + 1) = v109;
          v122 = v11;
          result = specialized Array.remove(at:)(v107 - 1);
          v11 = v122;
          v107 = *(v122 + 2);
          if (v107 <= 1)
          {
          }
        }

        goto LABEL_160;
      }
    }

LABEL_156:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v11, a5.n128_f64[0]);
    v11 = result;
    goto LABEL_126;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10++;
    if (v10 >= v9)
    {
      goto LABEL_34;
    }

    v13 = *a3;
    v14 = (*a3 + (v10 << 6));
    v15 = v14[1];
    v119 = *v14;
    v120 = v15;
    v121[0] = v14[2];
    *(v121 + 9) = *(v14 + 41);
    v6 = v13 + (v12 << 6);
    v16 = *(v6 + 16);
    v117[0] = *v6;
    v117[1] = v16;
    v118[0] = *(v6 + 32);
    *(v118 + 9) = *(v6 + 41);
    result = GeneralItem.order(to:)(v117);
    if (result)
    {
      v17 = result == 1 && v119 < *&v117[0];
    }

    else
    {
      v17 = 1;
    }

    v18 = v12 + 2;
    if (v12 + 2 < v9)
    {
      v10 = v9 - 1;
      v19 = (v6 + 96);
      v20 = (v6 + 96);
      while (1)
      {
        a5.n128_f64[0] = v19[5];
        v21 = v20[8];
        v20 += 8;
        v22 = v21;
        v23 = *(v19 - 3);
        if (a5.n128_f64[0] == v23)
        {
          a5.n128_f64[0] = *v19;
          v24 = v22 < *v19;
          if (v22 == *v19 && (a5.n128_f64[0] = v19[9], v25 = v19[1], v24 = a5.n128_f64[0] < v25, a5.n128_f64[0] == v25) && (a5.n128_f64[0] = v19[10], v26 = v19[2], v24 = a5.n128_f64[0] < v26, a5.n128_f64[0] == v26))
          {
            v27 = *(v19 + 88);
            v28 = *(v19 + 24);
            if (v27 == v28)
            {
              if (v17 == *(v19 + 4) >= *(v19 - 4))
              {
                v10 = v18 - 1;
                break;
              }

              goto LABEL_13;
            }

            if (v27 < v28)
            {
LABEL_25:
              if (!v17)
              {
                goto LABEL_33;
              }

              goto LABEL_13;
            }
          }

          else if (v24)
          {
            goto LABEL_25;
          }
        }

        else if (v23 < a5.n128_f64[0])
        {
          goto LABEL_25;
        }

        if (v17)
        {
          v29 = v18 - 1;
          if (v18 < v12)
          {
            goto LABEL_153;
          }

LABEL_32:
          if (v12 <= v29)
          {
            v52 = (v18 << 6) - 64;
            v53 = v12 << 6;
            v54 = v18;
            v55 = v12;
            do
            {
              if (v55 != --v54)
              {
                v59 = *a3;
                if (!*a3)
                {
                  goto LABEL_159;
                }

                v60 = (v59 + v53);
                v61 = (v59 + v52);
                v113 = *v60;
                v114 = v60[1];
                *v116 = v60[2];
                *&v116[9] = *(v60 + 41);
                if (v53 != v52 || v60 >= v61 + 4)
                {
                  v56 = *v61;
                  v57 = v61[1];
                  v58 = v61[3];
                  v60[2] = v61[2];
                  v60[3] = v58;
                  *v60 = v56;
                  v60[1] = v57;
                }

                *v61 = v113;
                v61[1] = v114;
                v61[2] = *v116;
                a5.n128_u64[0] = *&v116[9];
                *(v61 + 41) = *&v116[9];
              }

              ++v55;
              v52 -= 64;
              v53 += 64;
            }

            while (v55 < v54);
          }

LABEL_33:
          v10 = v18;
          goto LABEL_34;
        }

LABEL_13:
        ++v18;
        v19 = v20;
        if (v9 == v18)
        {
          v18 = v9;
          break;
        }
      }
    }

    v29 = v10;
    v10 = v18;
    if (v17)
    {
      if (v18 < v12)
      {
        goto LABEL_153;
      }

      goto LABEL_32;
    }

LABEL_34:
    v30 = a3[1];
    if (v10 < v30)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_152;
      }

      if (v10 - v12 < a4)
      {
        break;
      }
    }

LABEL_71:
    if (v10 < v12)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v6 = *(v11 + 2);
    v62 = *(v11 + 3);
    v63 = v6 + 1;
    if (v6 >= v62 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v6 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v63;
    v64 = &v11[16 * v6];
    *(v64 + 4) = v12;
    *(v64 + 5) = v10;
    v65 = *v112;
    if (!*v112)
    {
      goto LABEL_161;
    }

    if (v6)
    {
      while (1)
      {
        v66 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v67 = *(v11 + 4);
          v68 = *(v11 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_91:
          if (v70)
          {
            goto LABEL_140;
          }

          v83 = &v11[16 * v63];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_143;
          }

          v89 = &v11[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_146;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_147;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v63 - 2;
            }

            goto LABEL_112;
          }

          goto LABEL_105;
        }

        v93 = &v11[16 * v63];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_105:
        if (v88)
        {
          goto LABEL_142;
        }

        v96 = &v11[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_145;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_112:
        v104 = v66 - 1;
        if (v66 - 1 >= v63)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if (!*a3)
        {
          goto LABEL_158;
        }

        v105 = *&v11[16 * v104 + 32];
        v6 = *&v11[16 * v66 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + (v105 << 6)), (*a3 + (*&v11[16 * v66 + 32] << 6)), (*a3 + (v6 << 6)), v65);
        if (v7)
        {
        }

        if (v6 < v105)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11, a5.n128_f64[0]);
        }

        if (v104 >= *(v11 + 2))
        {
          goto LABEL_137;
        }

        v106 = &v11[16 * v104];
        *(v106 + 4) = v105;
        *(v106 + 5) = v6;
        v122 = v11;
        result = specialized Array.remove(at:)(v66);
        v11 = v122;
        v63 = *(v122 + 2);
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v11[16 * v63 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_138;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_139;
      }

      v78 = &v11[16 * v63];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_141;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_144;
      }

      if (v82 >= v74)
      {
        v100 = &v11[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_148;
        }

        if (v69 < v103)
        {
          v66 = v63 - 2;
        }

        goto LABEL_112;
      }

      goto LABEL_91;
    }

LABEL_3:
    v9 = a3[1];
    if (v10 >= v9)
    {
      goto LABEL_124;
    }
  }

  if (__OFADD__(v12, a4))
  {
    goto LABEL_154;
  }

  if (v12 + a4 < v30)
  {
    v30 = v12 + a4;
  }

  if (v30 < v12)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v10 == v30)
  {
    goto LABEL_71;
  }

  v31 = *a3;
  v32 = *a3 + (v10 << 6) + 56;
  v33 = v12 - v10;
LABEL_44:
  v34 = v33;
  v35 = v32;
  v36 = v32;
  while (1)
  {
    v37 = v35 - 56;
    v38 = *(v35 - 7);
    a5.n128_u64[0] = *(v35 - 6);
    v39 = v35 - 120;
    v40 = *(v35 - 15);
    v41 = *(v35 - 14);
    v42 = *(v36 - 64);
    v36 -= 64;
    result = v42;
    if (a5.n128_f64[0] == v41)
    {
      a5.n128_u64[0] = *(v35 - 3);
      v43 = *(v35 - 11);
      v44 = a5.n128_f64[0] < v43;
      if (a5.n128_f64[0] == v43 && (a5.n128_u64[0] = *(v35 - 2), v45 = *(v35 - 10), v44 = a5.n128_f64[0] < v45, a5.n128_f64[0] == v45) && (a5.n128_u64[0] = *(v35 - 1), v46 = *(v35 - 9), v44 = a5.n128_f64[0] < v46, a5.n128_f64[0] == v46))
      {
        v47 = *v35;
        if (v47 != result)
        {
          if (v47 < result)
          {
            goto LABEL_55;
          }

LABEL_43:
          ++v10;
          v32 += 64;
          --v33;
          if (v10 == v30)
          {
            v10 = v30;
            goto LABEL_71;
          }

          goto LABEL_44;
        }

        if (v38 >= v40)
        {
          goto LABEL_43;
        }
      }

      else if (!v44)
      {
        goto LABEL_43;
      }
    }

    else if (v41 >= a5.n128_f64[0])
    {
      goto LABEL_43;
    }

LABEL_55:
    if (!v31)
    {
      break;
    }

    v48 = *(v37 + 1);
    *v115 = *(v37 + 2);
    *&v115[9] = *(v37 + 41);
    a5 = *v37;
    v49 = *(v39 + 1);
    *v37 = *v39;
    *(v37 + 1) = v49;
    v50 = *(v39 + 3);
    *(v37 + 2) = *(v39 + 2);
    *(v37 + 3) = v50;
    *(v39 + 41) = *&v115[9];
    *(v39 + 1) = v48;
    *(v39 + 2) = *v115;
    v35 = v36;
    *v39 = a5;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

unint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, __n128 a6)
{
  v126 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_148:
    v6 = *v126;
    if (*v126)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_150;
    }

    goto LABEL_186;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = &unk_1EAA24000;
  while (1)
  {
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v13 = 16 * v9;
      v14 = (*a3 + 16 * v9);
      v17 = *v14;
      v15 = v14 + 4;
      v16 = v17;
      v18 = v11[94];
      v19 = (*(*a3 + 16 * v12) + v18);
      v21 = *v19;
      v20 = v19[1];
      if (a5)
      {
        a6.n128_f64[0] = v19[1];
      }

      else
      {
        a6.n128_f64[0] = *v19;
      }

      v22 = (v16 + v18);
      v23 = v16 + v18 + 8;
      if (a5)
      {
        v22 = v23;
      }

      v24 = *v22;
      v25 = v9 + 2;
      while (v8 != v25)
      {
        v26 = *v15;
        v15 += 2;
        v27 = (v26 + v18);
        if ((a5 & 1) == 0)
        {
          v20 = v21;
        }

        v21 = *v27;
        v28 = v27[1];
        if (a5)
        {
          v29 = v27[1];
        }

        else
        {
          v29 = *v27;
        }

        v30 = v29 >= v20;
        ++v25;
        v20 = v28;
        if ((((a6.n128_f64[0] < v24) ^ v30) & 1) == 0)
        {
          v12 = v25 - 1;
          if (a6.n128_f64[0] >= v24)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }
      }

      v12 = v8;
      if (a6.n128_f64[0] >= v24)
      {
        goto LABEL_29;
      }

LABEL_21:
      if (v12 < v9)
      {
        goto LABEL_177;
      }

      if (v9 < v12)
      {
        v31 = 16 * v12 - 16;
        v32 = v12;
        v33 = v9;
        do
        {
          if (v33 != --v32)
          {
            v34 = *a3;
            if (!*a3)
            {
LABEL_183:
              __break(1u);
              goto LABEL_184;
            }

            a6 = *(v34 + v13);
            *(v34 + v13) = *(v34 + v31);
            *(v34 + v31) = a6;
          }

          ++v33;
          v31 -= 16;
          v13 += 16;
        }

        while (v33 < v32);
        v8 = a3[1];
      }
    }

LABEL_29:
    if (v12 < v8)
    {
      if (__OFSUB__(v12, v9))
      {
        goto LABEL_176;
      }

      if (v12 - v9 < a4)
      {
        break;
      }
    }

LABEL_50:
    if (v12 < v9)
    {
      goto LABEL_173;
    }

    v128 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v47 = *(v10 + 2);
    v46 = *(v10 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v10);
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v47];
    *(v49 + 4) = v9;
    *(v49 + 5) = v128;
    result = *v126;
    if (!*v126)
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    if (v47)
    {
      v135 = *v126;
      while (1)
      {
        v50 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v51 = *(v10 + 4);
          v52 = *(v10 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_71:
          if (v54)
          {
            goto LABEL_164;
          }

          v67 = &v10[16 * v48];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_167;
          }

          v73 = &v10[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_170;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_171;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v48 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v77 = &v10[16 * v48];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_85:
        if (v72)
        {
          goto LABEL_166;
        }

        v80 = &v10[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_169;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_92:
        if (v50 - 1 >= v48)
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v88 = *a3;
        if (!*a3)
        {
          __break(1u);
          goto LABEL_183;
        }

        v133 = v10;
        v134 = v50;
        v130 = v50 - 1;
        v89 = *&v10[16 * v50 + 16];
        v90 = *&v10[16 * v50 + 32];
        v131 = *&v10[16 * v50 + 40];
        v132 = v89;
        v91 = 16 * v89;
        v92 = (v88 + 16 * v89);
        v10 = (16 * v90);
        v93 = (v88 + 16 * v90);
        v94 = (v88 + 16 * v131);
        v95 = 16 * v90 - 16 * v89;
        v96 = 16 * v131 - 16 * v90;
        if (v95 < v96)
        {
          if (v92 != result || v93 <= result)
          {
            memmove(result, (v88 + 16 * v89), 16 * v90 - 16 * v89);
            result = v135;
          }

          v97 = (result + v95);
          v98 = v134;
          if (v95 < 1 || 16 * v131 <= v10)
          {
            v100 = result;
            v109 = v92;
            v101 = v133;
LABEL_136:
            v102 = v131;
            v6 = v132;
            goto LABEL_138;
          }

          v99 = OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame;
          v100 = result;
          v6 = v132;
          v101 = v133;
          v102 = v131;
          while (2)
          {
            v103 = v100->n128_u64[0];
            v104 = (v93->n128_u64[0] + v99);
            if (a5)
            {
              ++v104;
            }

            a6.n128_u64[0] = *v104;
            v105 = (v103 + v99);
            v106 = v103 + v99 + 8;
            if (a5)
            {
              v105 = v106;
            }

            if (a6.n128_f64[0] >= *v105)
            {
              v107 = v100;
              v108 = v92 == v100++;
              if (!v108)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v107 = v93;
              v108 = v92 == v93++;
              if (!v108)
              {
LABEL_110:
                a6 = *v107;
                *v92 = *v107;
              }
            }

            ++v92;
            if (v100 >= v97 || v93 >= v94)
            {
              v109 = v92;
              goto LABEL_138;
            }

            continue;
          }
        }

        if (v93 != result || v94 <= result)
        {
          memmove(result, (v88 + 16 * v90), 16 * v131 - 16 * v90);
          result = v135;
        }

        v97 = (result + v96);
        if (v96 < 1 || v10 <= v91)
        {
          v100 = result;
          v109 = v93;
          v101 = v133;
          v98 = v134;
          goto LABEL_136;
        }

        v110 = OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame;
        v101 = v133;
        v98 = v134;
        v102 = v131;
        v6 = v132;
        do
        {
          v109 = v93 - 1;
          --v94;
          v111 = v97;
          v100 = v135;
          while (1)
          {
            v112 = v111[-1].n128_u64[0];
            --v111;
            v113 = v94 + 1;
            v114 = v109->n128_u64[0];
            v115 = (v112 + v110);
            v116 = v112 + v110 + 8;
            if (a5)
            {
              v115 = v116;
            }

            a6.n128_u64[0] = *v115;
            v117 = (v114 + v110);
            v118 = v114 + v110 + 8;
            if (a5)
            {
              v117 = v118;
            }

            if (a6.n128_f64[0] < *v117)
            {
              break;
            }

            if (v113 != v97)
            {
              a6 = *v111;
              *v94 = *v111;
            }

            --v94;
            v97 = v111;
            if (v111 <= v135)
            {
              v97 = v111;
              v109 = v93;
              goto LABEL_138;
            }
          }

          if (v113 != v93)
          {
            a6 = *v109;
            *v94 = *v109;
          }

          if (v97 <= v135)
          {
            break;
          }

          --v93;
        }

        while (v92 < v109);
LABEL_138:
        v119 = v97 - v100 + (v97 - v100 < 0 ? 0xFuLL : 0);
        if (v109 != v100 || v109 >= (v100 + (v119 & 0xFFFFFFFFFFFFFFF0)))
        {
          memmove(v109, v100, 16 * (v119 >> 4));
        }

        if (v102 < v6)
        {
          goto LABEL_160;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v101, a6.n128_f64[0]);
        }

        if (v98 > *(v101 + 2))
        {
          goto LABEL_161;
        }

        v120 = &v101[16 * v130];
        *(v120 + 4) = v6;
        *(v120 + 5) = v102;
        specialized Array.remove(at:)(v98);
        v10 = v101;
        v48 = *(v101 + 2);
        result = v135;
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v10[16 * v48 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_162;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_163;
      }

      v62 = &v10[16 * v48];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_165;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_168;
      }

      if (v66 >= v58)
      {
        v84 = &v10[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_172;
        }

        if (v53 < v87)
        {
          v50 = v48 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v9 = v128;
    v8 = a3[1];
    v11 = &unk_1EAA24000;
    if (v128 >= v8)
    {
      goto LABEL_148;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_178;
  }

  if (v9 + a4 < v8)
  {
    v8 = v9 + a4;
  }

  if (v8 >= v9)
  {
    if (v12 != v8)
    {
      v35 = *a3;
      v36 = v9 - v12;
      v37 = *a3 + 16 * v12 - 16;
      do
      {
        v38 = *(v35 + 16 * v12);
        v39 = v37;
        v40 = v36;
        do
        {
          v41 = v11[94];
          v42 = (v38 + v41);
          if (a5)
          {
            v42 = (v38 + v41 + 8);
          }

          a6.n128_u64[0] = *v42;
          v43 = (*v39 + v41);
          if (a5)
          {
            ++v43;
          }

          if (a6.n128_f64[0] >= *v43)
          {
            break;
          }

          if (!v35)
          {
            goto LABEL_180;
          }

          v44 = *(v39 + 24);
          a6 = *v39;
          *(v39 + 16) = *v39;
          *v39 = v38;
          *(v39 + 8) = v44;
          v39 -= 16;
        }

        while (!__CFADD__(v40++, 1));
        ++v12;
        --v36;
        v37 += 16;
      }

      while (v12 != v8);
      v12 = v8;
    }

    goto LABEL_50;
  }

LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v10, a6.n128_f64[0]);
  v10 = result;
LABEL_150:
  v121 = *(v10 + 2);
  if (v121 < 2)
  {
  }

  while (*a3)
  {
    v122 = *&v10[16 * v121];
    v123 = *&v10[16 * v121 + 24];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v122), (*a3 + 16 * *&v10[16 * v121 + 16]), (*a3 + 16 * v123), v6, a5 & 1);
    if (v127)
    {
    }

    if (v123 < v122)
    {
      goto LABEL_174;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10, a6.n128_f64[0]);
    }

    if (v121 - 2 >= *(v10 + 2))
    {
      goto LABEL_175;
    }

    v124 = &v10[16 * v121];
    *v124 = v122;
    *(v124 + 1) = v123;
    result = specialized Array.remove(at:)(v121 - 1);
    v121 = *(v10 + 2);
    if (v121 <= 1)
    {
    }
  }

LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *a1, double *a2, unint64_t a3, double *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *(a5 + 48);
  *(v10 + 48) = *(a5 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a5 + 64);
  v12 = *(a5 + 16);
  *(v10 + 16) = *a5;
  *(v10 + 32) = v12;
  v13 = (a2 - a1) / 40;
  v14 = (a3 - a2) / 40;
  if (v13 < v14)
  {
    if (a4 != a1 || &a1[5 * v13] <= a4)
    {
      memmove(a4, a1, 40 * v13);
    }

    v15 = &a4[5 * v13];
    if (a2 - a1 < 40)
    {
LABEL_6:
      a2 = a1;
      goto LABEL_45;
    }

    while (1)
    {
      if (a2 >= a3)
      {
        goto LABEL_6;
      }

      v20 = a2[2];
      v46 = a2[1];
      v22 = a4[1];
      v21 = a4[2];
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      ClosedRange<>.meanBound.getter();
      v23 = *(a5 + 56);
      v25 = vabdd_f64(v24, v23);
      ClosedRange<>.meanBound.getter();
      v27 = v26;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v28 = vabdd_f64(v27, v23);
      if (*(a5 + 64))
      {
        break;
      }

      if (v20 == v21)
      {
        goto LABEL_16;
      }

      if (v21 >= v20)
      {
LABEL_19:
        v16 = a4;
        v17 = a1 == a4;
        a4 += 5;
        if (v17)
        {
          goto LABEL_9;
        }

LABEL_8:
        v18 = *v16;
        v19 = *(v16 + 1);
        a1[4] = v16[4];
        *a1 = v18;
        *(a1 + 1) = v19;
        goto LABEL_9;
      }

LABEL_7:
      v16 = a2;
      v17 = a1 == a2;
      a2 += 5;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      a1 += 5;
      if (a4 >= v15)
      {
        goto LABEL_6;
      }
    }

    if (v46 != v22)
    {
      if (v46 >= v22)
      {
        goto LABEL_19;
      }

      goto LABEL_7;
    }

LABEL_16:
    if (v25 >= v28)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (a4 != a2 || &a2[5 * v14] <= a4)
  {
    memmove(a4, a2, 40 * v14);
  }

  v15 = &a4[5 * v14];
  if ((a3 - a2) >= 40 && a2 > a1)
  {
    while (2)
    {
      v45 = a2 - 5;
      a3 -= 40;
      v29 = v15;
      while (1)
      {
        v29 -= 40;
        v30 = *(v29 + 16);
        v47 = *(v29 + 8);
        v32 = *(a2 - 4);
        v31 = *(a2 - 3);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        ClosedRange<>.meanBound.getter();
        v33 = *(a5 + 56);
        v35 = vabdd_f64(v34, v33);
        ClosedRange<>.meanBound.getter();
        v37 = v36;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v38 = vabdd_f64(v37, v33);
        if ((*(a5 + 64) & 1) == 0)
        {
          break;
        }

        if (v47 == v32)
        {
          goto LABEL_34;
        }

        if (v47 < v32)
        {
          goto LABEL_39;
        }

LABEL_37:
        if ((a3 + 40) != v15)
        {
          v39 = *v29;
          v40 = *(v29 + 16);
          *(a3 + 32) = *(v29 + 32);
          *a3 = v39;
          *(a3 + 16) = v40;
        }

        a3 -= 40;
        v15 = v29;
        if (v29 <= a4)
        {
          v15 = v29;
          goto LABEL_45;
        }
      }

      if (v30 != v31)
      {
        if (v31 < v30)
        {
LABEL_39:
          if ((a3 + 40) != a2)
          {
            v41 = *v45;
            v42 = *(a2 - 3);
            *(a3 + 32) = *(a2 - 1);
            *a3 = v41;
            *(a3 + 16) = v42;
          }

          if (v15 <= a4 || (a2 -= 5, v45 <= a1))
          {
            a2 = v45;
            goto LABEL_45;
          }

          continue;
        }

        goto LABEL_37;
      }

      break;
    }

LABEL_34:
    if (v35 < v38)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_45:
  v43 = (v15 - a4) / 40;
  if (a2 != a4 || a2 >= &a4[5 * v43])
  {
    memmove(a2, a4, 40 * v43);
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4, char a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 >= v14 >> 4)
  {
    if (a4 != __src || &__src[16 * v15] <= a4)
    {
      memmove(a4, __src, 16 * v15);
    }

    v16 = &v5[16 * v15];
    if (v13 >= 16 && v7 > v8)
    {
      v25 = OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame;
LABEL_31:
      v26 = v7 - 16;
      v6 -= 16;
      v27 = v16;
      do
      {
        v28 = *(v27 - 2);
        v27 -= 16;
        v29 = v6 + 16;
        v30 = *v26;
        v31 = (v28 + v25);
        v32 = v28 + v25 + 8;
        if (a5)
        {
          v31 = v32;
        }

        v33 = *v31;
        v34 = (v30 + v25);
        v35 = v30 + v25 + 8;
        if (a5)
        {
          v34 = v35;
        }

        if (v33 < *v34)
        {
          if (v29 != v7)
          {
            *v6 = *v26;
          }

          if (v16 <= v5 || (v7 -= 16, v26 <= v8))
          {
            v7 = v26;
            goto LABEL_46;
          }

          goto LABEL_31;
        }

        if (v29 != v16)
        {
          *v6 = *v27;
        }

        v6 -= 16;
        v16 = v27;
      }

      while (v27 > v5);
      v16 = v27;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[16 * v12] <= a4)
    {
      memmove(a4, __dst, 16 * v12);
    }

    v16 = &v5[16 * v12];
    if (v10 >= 16 && v7 < v6)
    {
      v17 = OBJC_IVAR____TtC7SwiftUIP33_60C465D0E37117769FC505C04DE5239A24UIKitFocusableFillerItem_logicalFrame;
      while (1)
      {
        v18 = *v5;
        v19 = (*v7 + v17);
        if (a5)
        {
          ++v19;
        }

        v20 = *v19;
        v21 = (v18 + v17);
        v22 = v18 + v17 + 8;
        if (a5)
        {
          v21 = v22;
        }

        if (v20 >= *v21)
        {
          break;
        }

        v23 = v7;
        v24 = v8 == v7;
        v7 += 16;
        if (!v24)
        {
          goto LABEL_21;
        }

LABEL_22:
        v8 += 16;
        if (v5 >= v16 || v7 >= v6)
        {
          goto LABEL_24;
        }
      }

      v23 = v5;
      v24 = v8 == v5;
      v5 += 16;
      if (v24)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v8 = *v23;
      goto LABEL_22;
    }

LABEL_24:
    v7 = v8;
  }

LABEL_46:
  v36 = v16 - v5 + (v16 - v5 < 0 ? 0xFuLL : 0);
  if (v7 != v5 || v7 >= &v5[v36 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v7, v5, 16 * (v36 >> 4));
  }

  return 1;
}

void specialized _ArrayProtocol.filter(_:)(uint64_t a1, void *a2, void **a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v9 = *(a1 + 16);
  if (v9)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    while (v16 < *(a1 + 16))
    {
      v22 = *(a1 + 16 * v16 + 32);
      v23 = v22;
      swift_unknownObjectRetain();
      v18 = closure #1 in HostingScrollView.PlatformGroupContainer.pruneFillerItems()(&v23, a2, a3, a4, a5, a6, a7);
      if (v7)
      {

        swift_unknownObjectRelease();
        return;
      }

      if (v18)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1);
          v17 = v24;
        }

        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v17 = v24;
        }

        *(v17 + 16) = v21 + 1;
        *(v17 + 16 * v21 + 32) = v22;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      if (v9 == ++v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

void specialized _ArrayProtocol.filter(_:)(uint64_t a1, char **a2, char a3, void **a4, double a5, double a6)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v10 = 0;
    v11 = a1 + 32;
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      v29 = v12;
      for (i = v10; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_32;
        }

        v30 = *(v11 + 16 * i);
        type metadata accessor for UIKitFocusableFillerItem();
        swift_unknownObjectRetain();
        if (UIFocusItem.isFocused.getter())
        {
          break;
        }

        CGRect.range(in:)();
        if (v14 <= a5)
        {
          v14 = a5;
        }

        if (v15 > a6)
        {
          v15 = a6;
        }

        if (v14 >= v15)
        {
          goto LABEL_24;
        }

        if (v14 > v15)
        {
          goto LABEL_33;
        }

        v16 = *a4;
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
          *a4 = v16;
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
          *a4 = v16;
        }

        v16[2] = v19 + 1;
        v20 = &v16[2 * v19];
        v20[4] = v30;
        v20[5] = &protocol witness table for UIKitFocusableFillerItem;
        swift_unknownObjectRelease();
        if (v10 == v6)
        {
          return;
        }
      }

      FocusableBounds.init(bounds:isLazyContainer:)();
      v21 = *a2;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v21;
      if ((v22 & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
        *a2 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
        *a2 = v21;
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[40 * v24];
      *(v25 + 2) = v31;
      *(v25 + 3) = v32;
      v25[64] = v33;
LABEL_24:
      v12 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1);
        v12 = v29;
      }

      v27 = *(v12 + 16);
      v26 = *(v12 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v12 = v29;
      }

      *(v12 + 16) = v27 + 1;
      *(v12 + 16 * v27 + 32) = v30;
    }

    while (v10 != v6);
  }
}

uint64_t _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCSo07UIFocusE0_p_Tt0g5Tf4e_nAA0c15FocusableFillerE033_60C465D0E37117769FC505C04DE5239ALLC_Tg5Tf4g_n(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v4 = dynamic_cast_existential_1_superclass_conditional(a1, ObjectType, v3, &protocol descriptor for UIKitContainerFocusItem);
  if (v4)
  {
    v6 = v4;
    v7 = v5;
  }

  else
  {
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8 && a1)
    {
      v7 = v8 | 0x4000000000000000;
    }

    else
    {
      v9 = swift_conformsToProtocol2();
      v10 = v9 | 0x8000000000000000;
      if (!a1)
      {
        v10 = 0xC000000000000000;
      }

      if (v9)
      {
        v7 = v10;
      }

      else
      {
        v7 = 0xC000000000000000;
      }
    }

    v6 = a1;
  }

  swift_unknownObjectRetain();
  MEMORY[0x18D00C9B0](60, 0xE100000000000000);
  v11 = specialized UIKitFocusItemDescription.Category.name.getter(v6, v7);
  MEMORY[0x18D00C9B0](v11);

  MEMORY[0x18D00C9B0](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  v12 = specialized UIKitFocusItemDescription.Category.attributes.getter(v6, v7);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;

      MEMORY[0x18D00C9B0](v15, v16);

      MEMORY[0x18D00C9B0](8251, 0xE200000000000000);

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x18D00C9B0](62, 0xE100000000000000);

  return 0;
}

void specialized HostingScrollView.PlatformGroupContainer.didUpdateFocus(in:with:)(void *a1)
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_requestedFocusItem;
  if (*&v1[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_requestedFocusItem] || [a1 previouslyFocusedItem] && (swift_getObjectType(), swift_unknownObjectRelease(), swift_conformsToProtocol2()))
  {
    static Log.focus.getter();
    v11 = type metadata accessor for Logger();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (v13(v5, 1, v11) == 1)
    {
      outlined destroy of Logger?(v5);
LABEL_21:
      *&v1[v10] = 0;
      swift_unknownObjectRelease();
      HostingScrollView.PlatformGroupContainer.pruneFillerItems()();
      return;
    }

    v14 = [a1 nextFocusedItem];
    v15 = *&v1[v10];
    if (v14)
    {
      if (!v15)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v17 = 1;
        goto LABEL_16;
      }

      v16 = v14;
      swift_unknownObjectRelease();
      if (v16 == v15)
      {
LABEL_15:
        (*(v12 + 16))(v9, v5, v11);
        v17 = 0;
LABEL_16:
        (*(v12 + 56))(v9, v17, 1, v11);
        v18 = *(v12 + 8);
        v18(v5, v11);
        if (v13(v9, 1, v11) == 1)
        {
          outlined destroy of Logger?(v9);
        }

        else
        {
          v32 = v1;
          v19 = v1;
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v31 = v21;
            v23 = v22;
            v30 = swift_slowAlloc();
            v33 = v30;
            *v23 = 136315138;
            v24 = v19;
            v25 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCAA17HostingScrollViewC22PlatformGroupContainerC_Tt0g5Tf4g_n();
            v27 = v26;

            v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v33);

            *(v23 + 4) = v28;
            _os_log_impl(&dword_18BD4A000, v20, v31, "filler substituted in: %s", v23, 0xCu);
            v29 = v30;
            __swift_destroy_boxed_opaque_existential_1(v30);
            MEMORY[0x18D0110E0](v29, -1, -1);
            MEMORY[0x18D0110E0](v23, -1, -1);
          }

          v18(v9, v11);
          v1 = v32;
        }

        goto LABEL_21;
      }
    }

    else if (!v15)
    {
      swift_unknownObjectRetain();
      goto LABEL_15;
    }

    v17 = 1;
    goto LABEL_16;
  }
}

uint64_t specialized UIKitFocusableFillerItem.didUpdateFocus(in:with:)()
{
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.focus.getter();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return outlined destroy of Logger?(v3);
  }

  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = v7;
    v13 = _s7SwiftUI25UIKitFocusItemDescriptionVyACyxGxcfCAA0c15FocusableFillerE033_60C465D0E37117769FC505C04DE5239ALLC_Tt0g5Tf4g_n(v12);
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v18);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_18BD4A000, v8, v9, "focus changed for: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x18D0110E0](v11, -1, -1);
    MEMORY[0x18D0110E0](v10, -1, -1);
  }

  return (*(v5 + 8))(v3, v4);
}

void type metadata accessor for [FocusableBounds]?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, __n128 a5)
{
  if (!*a2)
  {
    type metadata accessor for FocusableBorder?(255, a3, a4, MEMORY[0x1E69E62F8]);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ClosedRange<CGFloat>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ClosedRange<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v1 = type metadata accessor for ClosedRange();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ClosedRange<CGFloat>);
    }
  }
}

unint64_t type metadata accessor for UIKitProxyFocusItem()
{
  result = lazy cache variable for type metadata for UIKitProxyFocusItem;
  if (!lazy cache variable for type metadata for UIKitProxyFocusItem)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIKitProxyFocusItem);
  }

  return result;
}

void type metadata accessor for FocusableBorder?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t initializeWithCopy for HostingScrollView.PlatformGroupContainer.SubstitutionCandidate(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);
  swift_unknownObjectRetain();
  return a1;
}

uint64_t *assignWithCopy for HostingScrollView.PlatformGroupContainer.SubstitutionCandidate(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
}

uint64_t *assignWithTake for HostingScrollView.PlatformGroupContainer.SubstitutionCandidate(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  return a1;
}

uint64_t getEnumTagSinglePayload for HostingScrollView.PlatformGroupContainer.SubstitutionStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[65])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HostingScrollView.PlatformGroupContainer.SubstitutionStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder and conformance HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder()
{
  result = lazy protocol witness table cache variable for type HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder and conformance HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder;
  if (!lazy protocol witness table cache variable for type HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder and conformance HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder)
  {
    result = swift_getWitnessTable("5", &unk_1EFFBC420, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder and conformance HostingScrollView.PlatformGroupContainer.SubstitutionStrategy.SortOrder);
  }

  return result;
}

double outlined copy of HoverEffectGroupInfo.Identifier(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

double destroy for ContentHoverEffect(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 != 3)
  {
    outlined consume of HoverEffectGroupInfo.Identifier(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
    if ((v1 - 1) >= 2)
    {
    }
  }

  return result;
}

uint64_t outlined consume of HoverEffectGroupInfo.Identifier(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for ContentHoverEffect(uint64_t a1, uint64_t *a2)
{
  v4 = a2[5];
  if (v4 == 3)
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 2);
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = *(a2 + 24);
    outlined copy of HoverEffectGroupInfo.Identifier(*a2, v7, v8, v9);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 25) = *(a2 + 25);
    if ((v4 - 1) >= 2)
    {
      *(a1 + 32) = a2[4];
      *(a1 + 40) = v4;
    }

    else
    {
      *(a1 + 32) = *(a2 + 2);
    }
  }

  *(a1 + 48) = *(a2 + 48);
  v10 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v10;

  return a1;
}

uint64_t assignWithCopy for ContentHoverEffect(uint64_t a1, uint64_t *a2)
{
  v4 = a2[5];
  if (*(a1 + 40) != 3)
  {
    if (v4 == 3)
    {
      outlined destroy of HoverEffectGroup(a1);
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 16) = v8;
      *(a1 + 32) = v7;
      goto LABEL_13;
    }

    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = *(a2 + 24);
    outlined copy of HoverEffectGroupInfo.Identifier(*a2, v15, v16, v17);
    v18 = *a1;
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    *a1 = v14;
    *(a1 + 8) = v15;
    *(a1 + 16) = v16;
    v21 = *(a1 + 24);
    *(a1 + 24) = v17;
    outlined consume of HoverEffectGroupInfo.Identifier(v18, v19, v20, v21);
    *(a1 + 25) = *(a2 + 25);
    v13 = a2[5] - 1;
    if ((*(a1 + 40) - 1) >= 2)
    {
      if (v13 >= 2)
      {
        *(a1 + 32) = a2[4];
        *(a1 + 40) = a2[5];

        goto LABEL_13;
      }

      outlined destroy of String?(a1 + 32);
      goto LABEL_12;
    }

LABEL_8:
    if (v13 >= 2)
    {
      *(a1 + 32) = a2[4];
      *(a1 + 40) = a2[5];

      goto LABEL_13;
    }

LABEL_12:
    *(a1 + 32) = *(a2 + 2);
    goto LABEL_13;
  }

  if (v4 != 3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    v12 = *(a2 + 24);
    outlined copy of HoverEffectGroupInfo.Identifier(*a2, v10, v11, v12);
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v11;
    *(a1 + 24) = v12;
    *(a1 + 25) = *(a2 + 25);
    v13 = a2[5] - 1;
    goto LABEL_8;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v6;
  *a1 = v5;
LABEL_13:
  *(a1 + 48) = *(a2 + 48);
  v22 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v22;

  return a1;
}

uint64_t outlined destroy of String?(uint64_t a1)
{
  type metadata accessor for String?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithTake for ContentHoverEffect(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 3)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 40);
  if (v4 == 3)
  {
    outlined destroy of HoverEffectGroup(a1);
LABEL_4:
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  v12 = *(a1 + 24);
  *(a1 + 24) = v8;
  outlined consume of HoverEffectGroupInfo.Identifier(v9, v10, v11, v12);
  *(a1 + 25) = *(a2 + 25);
  if ((*(a1 + 40) - 1) >= 2)
  {
    if ((v4 - 1) >= 2)
    {
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v4;

      goto LABEL_5;
    }

    outlined destroy of String?(a1 + 32);
  }

  *(a1 + 32) = *(a2 + 32);
LABEL_5:
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for ContentHoverEffect(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentHoverEffect(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for _DefaultOverlayViewHoverEffect(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _DefaultOverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-17 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 16) & ~v5, (a2 + v5 + 16) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

_OWORD *initializeWithCopy for _DefaultOverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

void *assignWithCopy for _DefaultOverlayViewHoverEffect(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

_OWORD *assignWithTake for _DefaultOverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _DefaultOverlayViewHoverEffect(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for _DefaultOverlayViewHoverEffect(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 16] & ~v8;

  v18(v19);
}

uint64_t type metadata completion function for _OverlayViewHoverEffect(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _OverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9;
  v11 = ((((-17 - v5) | v5) - (v6 + v9)) | v9) - *(v8 + 64);
  if ((v9 | v5) <= 7 && ((*(v8 + 80) | *(v4 + 80)) & 0x100000) == 0 && v11 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v15 = (a1 + v5 + 16) & ~v5;
    v16 = (a2 + v5 + 16) & ~v5;
    (*(v4 + 16))(v15, v16);
    (*(v8 + 16))((v15 + v10) & ~v9, (v16 + v10) & ~v9, v7);
  }

  else
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + (((v9 | v5) & 0xF8 ^ 0x1F8) & ((v9 | v5) + 16)));
  }

  return v3;
}

uint64_t destroy for _OverlayViewHoverEffect(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8);
  v4 = v3 + 8;
  v5 = (a1 + *(v3 + 80) + 16) & ~*(v3 + 80);
  (*(v3 + 8))(v5);
  v6 = *(*(a2 + 24) - 8);
  v7 = *(v6 + 8);
  v8 = (v5 + *(v4 + 56) + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8);
}

_OWORD *initializeWithCopy for _OverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 16) & ~v7;
  v9 = (a2 + v7 + 16) & ~v7;
  (*(v5 + 16))(v8, v9);
  v10 = *(*(a3 + 24) - 8);
  (*(v10 + 16))((*(v6 + 48) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 48) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

void *assignWithCopy for _OverlayViewHoverEffect(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 24;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 16) & ~v7;
  v9 = (a2 + v7 + 16) & ~v7;
  (*(v5 + 24))(v8, v9);
  v10 = *(*(a3 + 24) - 8);
  (*(v10 + 24))((*(v6 + 40) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 40) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

_OWORD *initializeWithTake for _OverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 16) & ~v7;
  v9 = (a2 + v7 + 16) & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(*(a3 + 24) - 8);
  (*(v10 + 32))((*(v6 + 32) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 32) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

_OWORD *assignWithTake for _OverlayViewHoverEffect(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 40;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 16) & ~v7;
  v9 = (a2 + v7 + 16) & ~v7;
  (*(v5 + 40))(v8, v9);
  v10 = *(*(a3 + 24) - 8);
  (*(v10 + 40))((*(v6 + 24) + *(v10 + 80) + v8) & ~*(v10 + 80), (*(v6 + 24) + *(v10 + 80) + v9) & ~*(v10 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _OverlayViewHoverEffect(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v8 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        v21 = (a1 + v9 + 16) & ~v9;
        if (v5 >= v8)
        {
          return (*(v4 + 48))(v21);
        }

        else
        {
          return (*(v7 + 48))((v21 + v10 + v11) & ~v11, v8, v6);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for _OverlayViewHoverEffect(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  if (v10 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = ((v12 + v13 + ((v11 + 16) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
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
LABEL_46:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v24 = &a1[v11 + 16] & ~v11;
  if (v7 >= v10)
  {
    v27 = *(v6 + 56);

    v27(v24);
  }

  else
  {
    v25 = *(v9 + 56);
    v26 = (v24 + v12 + v13) & ~v13;

    v25(v26);
  }
}

uint64_t OpenImmersiveSpaceAction.callAsFunction(id:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

uint64_t OpenImmersiveSpaceAction.callAsFunction<A>(value:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

uint64_t OpenImmersiveSpaceAction.callAsFunction<A>(id:value:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

uint64_t OpenImmersiveSpaceAction.callAsFunction(id:forRemoteSession:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction(id:destination:), v1, v0);
}

uint64_t OpenImmersiveSpaceAction.callAsFunction(id:forRemoteSessionInfo:initialData:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

unint64_t lazy protocol witness table accessor for type OpenImmersiveSpaceAction.Result and conformance OpenImmersiveSpaceAction.Result()
{
  result = lazy protocol witness table cache variable for type OpenImmersiveSpaceAction.Result and conformance OpenImmersiveSpaceAction.Result;
  if (!lazy protocol witness table cache variable for type OpenImmersiveSpaceAction.Result and conformance OpenImmersiveSpaceAction.Result)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenImmersiveSpaceAction.Result, &type metadata for OpenImmersiveSpaceAction.Result, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OpenImmersiveSpaceAction.Result and conformance OpenImmersiveSpaceAction.Result);
  }

  return result;
}

void View.accessibilityRespondsToUserInteraction(_:isEnabled:)(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v14 - v12;
  if (a2)
  {
    if (a1)
    {
      v15 = 21;
      View.accessibilityAddTraits(_:)(&v15, a3, a4);
    }

    else
    {
      v16 = 21;
      View.accessibilityRemoveTraits(_:)(&v16, a3, a4);
    }

    (*(v11 + 32))(a5, v13, v10);
  }

  else
  {

    View.accessibility()(a3, a4);
  }
}

void _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA011TableColumnD0V_Tt1g5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static TableColumnDescriptor.typeCache;
  if (*(static TableColumnDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type TableColumnDescriptor and conformance TableColumnDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = static TableColumnDescriptor.typeCache;
    static TableColumnDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
    static TableColumnDescriptor.typeCache = v8;
    swift_endAccess();
    *a2 = v9;
  }
}

void _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08TableRowD0V_Tt1g5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static TableRowDescriptor.typeCache;
  if (*(static TableRowDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type TableRowDescriptor and conformance TableRowDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = static TableRowDescriptor.typeCache;
    static TableRowDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
    static TableRowDescriptor.typeCache = v8;
    swift_endAccess();
    *a2 = v9;
  }
}

void _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA021NavigationDestinationD0V_Tt1g5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static NavigationDestinationDescriptor.typeCache;
  if (*(static NavigationDestinationDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type NavigationDestinationDescriptor and conformance NavigationDestinationDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = static NavigationDestinationDescriptor.typeCache;
    static NavigationDestinationDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
    static NavigationDestinationDescriptor.typeCache = v8;
    swift_endAccess();
    *a2 = v9;
  }
}

void _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA025AccessibilityRotorContentD0V_Tt1g5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static AccessibilityRotorContentDescriptor.typeCache;
  if (*(static AccessibilityRotorContentDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type AccessibilityRotorContentDescriptor and conformance AccessibilityRotorContentDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = static AccessibilityRotorContentDescriptor.typeCache;
    static AccessibilityRotorContentDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
    static AccessibilityRotorContentDescriptor.typeCache = v8;
    swift_endAccess();
    *a2 = v9;
  }
}

void _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA06WidgetD0V_Tt1g5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static WidgetDescriptor.typeCache;
  if (*(static WidgetDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type WidgetDescriptor and conformance WidgetDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = static WidgetDescriptor.typeCache;
    static WidgetDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
    static WidgetDescriptor.typeCache = v8;
    swift_endAccess();
    *a2 = v9;
  }
}

uint64_t static TupleWidgetConfiguration._makeWidgetConfiguration(widget:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v44 = *a2;
  v6 = *a1;
  v45 = v5;
  *v46 = a2[2];
  *&v46[12] = *(a2 + 44);
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA06WidgetD0V_Tt1g5(a3, v42);
  v7 = *v42;
  *&v42[52] = *&v46[12];
  *&v42[40] = *v46;
  *&v42[24] = v45;
  *&v42[8] = v44;
  *v42 = v6;
  *&v42[72] = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v8 = *(v7 + 16);
  if (v8)
  {
    outlined init with copy of _WidgetInputs(&v44, v40);
    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      v9 = (v9 + 24);
      *&v42[72] = AGTupleElementOffset();
      v40[0] = v10;
      List = type metadata accessor for TupleWidgetConfiguration.MakeList(0, v4, v11, v12);
      TypeConformance<>.visitType<A>(visitor:)(v42, List, &protocol witness table for TupleWidgetConfiguration<A>.MakeList);
      --v8;
    }

    while (v8);

    v14 = v43;
  }

  else
  {
    outlined init with copy of _WidgetInputs(&v44, v40);

    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v14 + 16);
  if (v15)
  {
    *&v40[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = *&v40[0];
    v17 = (v14 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      *&v40[0] = v16;
      v20 = *(v16 + 16);
      v21 = *(v16 + 24);

      if (v20 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
        v16 = *&v40[0];
      }

      v17 += 4;
      *(v16 + 16) = v20 + 1;
      v22 = v16 + 16 * v20;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      --v15;
    }

    while (v15);
  }

  PreferencesOutputs.init()();
  v38 = *&v40[0];
  v39 = DWORD2(v40[0]);
  v23 = *(*&v46[16] + 16);
  if (v23)
  {
    v37 = v4;
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v24 = -v23;
    v25 = 1;
    v26 = MEMORY[0x1E69809D0];
    v27 = MEMORY[0x1E69809D8];
    do
    {
      v28 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v30 = *v29;
      v31 = v29[1];
      v28(v40, 0);
      (*(v26 + 8))(v30, v30, v31, v27, v26);
      ++v25;
    }

    while (v24 + v25 != 1);
    v4 = v37;
  }

  else
  {
  }

  *a4 = v38;
  *(a4 + 8) = v39;
  v40[2] = *&v42[32];
  v40[3] = *&v42[48];
  v40[4] = *&v42[64];
  v41 = v43;
  v40[0] = *v42;
  v40[1] = *&v42[16];
  v34 = type metadata accessor for TupleWidgetConfiguration.MakeList(0, v4, v32, v33);
  return (*(*(v34 - 8) + 8))(v40, v34);
}

uint64_t type metadata completion function for TupleWidget(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for TupleWidgetConfiguration.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;

  return a1;
}

uint64_t assignWithCopy for TupleWidgetConfiguration.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for TupleWidgetConfiguration.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for TupleWidgetConfiguration.MakeList(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TupleWidgetConfiguration.MakeList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized AttributedTextStorage.text.getter()
{
  v1 = type metadata accessor for BindingStorage.Storage(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Binding<AttributedString>(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, v8, v9, v10);
  v20 = *(v0 + *(v11 + 44));
  _sypSgMaTm_1(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  if ((v19[7] & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = [Strong textStorage];

      if (v14)
      {
        ObjectType = swift_getObjectType();
        v16 = swift_conformsToProtocol2();
        if (v16)
        {
          (*(v16 + 16))(ObjectType, v16);

          return;
        }

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v0, v3, type metadata accessor for BindingStorage.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (Binding<AttributedString>, MutableBox<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), type metadata accessor for MutableBox<AttributedTextSelection>);

    outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v3, v7, type metadata accessor for Binding<AttributedString>);
  }

  else
  {
    type metadata accessor for (Binding<AttributedString>, MutableBox<AttributedTextSelection>)(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), type metadata accessor for Binding<AttributedTextSelection>);
    v18 = *(v17 + 48);
    outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v3, v7, type metadata accessor for Binding<AttributedString>);
    outlined destroy of (String, Any)(&v3[v18], type metadata accessor for Binding<AttributedTextSelection>);
  }

  MEMORY[0x18D00ACC0](v5);
  outlined destroy of (String, Any)(v7, type metadata accessor for Binding<AttributedString>);
}

void specialized AttributedTextStorage.updateEditorText<A>(replacing:with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, a2, a3, a4);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v42 - v15;
  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v5, v42 - v15, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v46[0] = *&v16[v11[11]];
  _sypSgMaTm_1(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  v18 = v17;
  AtomicBox.wrappedValue.getter();
  v19 = v47;
  outlined destroy of (String, Any)(v16, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  if ((v19 & 3) != 0)
  {
    goto LABEL_25;
  }

  v20 = v11[12];
  if (*(v6 + v20))
  {
LABEL_7:
    v44 = v6 + v11[10];
    v45 = v18;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      v26 = a1;
      v42[1] = a5;
      v43 = a2;
      v27 = [Strong textStorage];

      if (v27)
      {
        v28 = v13;
        ObjectType = swift_getObjectType();
        v42[0] = &protocol descriptor for SwiftTextStorage;
        v30 = swift_conformsToProtocol2();
        if (v30)
        {
          v31 = v30;
          v32 = *(v30 + 40);
          v33 = type metadata accessor for AttributedString();
          v34 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
          v32(v26, v43, v33, v34, ObjectType, v31);

          outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v6, v28, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
          v47 = *(v28 + v11[11]);
          v36 = AtomicBox.wrappedValue.modify();
          if ((*v35 & 4) == 0)
          {
            *v35 |= 4u;
          }

          v36(v46, 0);
          outlined destroy of (String, Any)(v28, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
          v37 = swift_unknownObjectWeakLoadStrong();
          if (v37)
          {
            v38 = v37;
            v39 = [v37 textStorage];

            if (v39)
            {
              v40 = swift_getObjectType();
              v41 = swift_conformsToProtocol2();
              if (v41)
              {
                (*(v41 + 16))(v40, v41);

                return;
              }

              goto LABEL_21;
            }

LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  *(v6 + v20) = 1;
  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21;
  v23 = [v21 textStorage];

  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    [v23 beginEditing];

    goto LABEL_7;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *one-time initialization function for _instances()
{
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo16UIPasteboardNamea_10Foundation16AttributedStringV7SwiftUIE15PasteboardOwnerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for [UIPasteboardName : AttributedString.PasteboardOwner](0);
  return AtomicBox.init(wrappedValue:)();
}

uint64_t AttributedString.PasteboardOwner.crossProcessData()()
{
  v14 = type metadata accessor for AttributeScopeCodableConfiguration();
  v1 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CodingUserInfoKey();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static CodingUserInfoKey.environment.getter();
  v7 = (v0 + OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_environment);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v16[3] = MEMORY[0x1E697F230];
  v16[0] = v9;
  v16[1] = v8;

  v10 = dispatch thunk of JSONEncoder.userInfo.modify();
  specialized Dictionary.subscript.setter(v16, v6);
  v10(v15, 0);
  v16[5] = *(v0 + OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_content);
  swift_beginAccess();

  EnvironmentValues.attributeScopeContext.getter();
  AttributeScopeContext.scope.getter();
  swift_endAccess();

  dispatch thunk of static AttributeScope.encodingConfiguration.getter();
  type metadata accessor for [AttributedString](0);
  lazy protocol witness table accessor for type [AttributedString] and conformance <A> [A](&lazy protocol witness table cache variable for type [AttributedString] and conformance <A> [A], MEMORY[0x1E6968840], MEMORY[0x1E6969E18]);
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:configuration:)();

  (*(v1 + 8))(v3, v14);

  return v11;
}

Swift::Void __swiftcall AttributedString.PasteboardOwner.pasteboard(provideDataTo:)(UIPasteboard provideDataTo)
{
  v2 = v1;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - v5;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v11 = [(objc_class *)provideDataTo.super.isa name];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [(objc_class *)provideDataTo.super.isa changeCount];
  v53 = v12;
  v54 = v14;
  v55 = v15;
  lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData();
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v52 = v6;
  v49 = v16;
  v48 = v17;

  v18 = MEMORY[0x1E69E6F90];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<[String : Any]>, type metadata accessor for [String : Any], MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  v50 = xmmword_18CD63400;
  *(v19 + 16) = xmmword_18CD63400;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>, type metadata accessor for (String, Any), v18);
  inited = swift_initStackObject();
  *&v51 = provideDataTo;
  v21 = inited;
  *(inited + 16) = v50;
  *&v50 = v2;
  v22 = v8;
  (*(v8 + 56))(v6, 1, 1, v7);
  UTType.init(exportedAs:conformingTo:)();
  v23 = UTType.identifier.getter();
  v25 = v24;
  (*(v22 + 8))(v10, v7);
  v21[4] = v23;
  v26 = (v21 + 4);
  v21[9] = MEMORY[0x1E6969080];
  v27 = v49;
  v21[5] = v25;
  v21[6] = v27;
  v28 = v48;
  v21[7] = v48;
  outlined copy of Data._Representation(v27, v28);
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v21);
  v30 = v51;
  swift_setDeallocating();
  outlined destroy of (String, Any)(v26, type metadata accessor for (String, Any));
  *(v19 + 32) = v29;
  type metadata accessor for [String : Any]();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 addItems_];

  outlined consume of Data._Representation(v27, v28);
  v32 = AttributedString.PasteboardOwner.crossProcessData()();
  v33 = v22;
  v34 = MEMORY[0x1E69E6F90];
  v35 = v32;
  v36 = v30;
  v38 = v37;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<[String : Any]>, type metadata accessor for [String : Any], MEMORY[0x1E69E6F90]);
  v39 = swift_allocObject();
  v51 = xmmword_18CD63400;
  *(v39 + 16) = xmmword_18CD63400;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>, type metadata accessor for (String, Any), v34);
  v40 = v7;
  v41 = swift_initStackObject();
  *(v41 + 16) = v51;
  v42 = v52;
  static UTType.data.getter();
  (*(v33 + 56))(v42, 0, 1, v40);
  UTType.init(exportedAs:conformingTo:)();
  v43 = UTType.identifier.getter();
  v45 = v44;
  (*(v33 + 8))(v10, v40);
  *(v41 + 32) = v43;
  *(v41 + 72) = MEMORY[0x1E6969080];
  *(v41 + 40) = v45;
  *(v41 + 48) = v35;
  *(v41 + 56) = v38;
  outlined copy of Data._Representation(v35, v38);
  v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v41);
  swift_setDeallocating();
  outlined destroy of (String, Any)(v41 + 32, type metadata accessor for (String, Any));
  *(v39 + 32) = v46;
  type metadata accessor for [String : Any]();
  v47 = Array._bridgeToObjectiveC()().super.isa;

  [v36 addItems_];

  outlined consume of Data._Representation(v35, v38);
}

uint64_t AttributedString.PasteboardOwner.register(pasteboard:to:)(void *a1, void *a2)
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v26 - v6;
  v26[0] = type metadata accessor for UTType();
  v8 = *(v26[0] - 8);
  v9 = MEMORY[0x1EEE9AC00](v26[0]);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 dragSession];
  v13 = [a1 name];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = [a1 changeCount];
  v26[1] = v14;
  v26[2] = v16;
  v26[3] = v17;
  [v12 setLocalContext_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v18 = [a2 suggestedItems];
  type metadata accessor for UIDragItem();
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
  }

LABEL_3:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x18D00E9C0](0, v19);
    goto LABEL_6;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v19 + 32);
LABEL_6:
    v22 = v21;

    v23 = [v22 itemProvider];
    static UTType.data.getter();
    v24 = v26[0];
    (*(v8 + 56))(v7, 0, 1, v26[0]);
    UTType.init(exportedAs:conformingTo:)();
    *(swift_allocObject() + 16) = v2;
    v25 = v2;
    NSItemProvider.registerDataRepresentation(for:visibility:loadHandler:)();

    return (*(v8 + 8))(v11, v24);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in AttributedString.PasteboardOwner.register(pasteboard:to:)(void (*a1)(uint64_t, unint64_t, void, double))
{
  v2 = AttributedString.PasteboardOwner.crossProcessData()();
  v4 = v3;
  v5 = outlined copy of Data._Representation(v2, v3);
  a1(v2, v4, 0, v5);
  outlined consume of Data._Representation(v2, v4);
  outlined consume of Data._Representation(v2, v4);
  return 0;
}

uint64_t AttributedString.PasteboardOwner.InProcessData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  type metadata accessor for KeyedDecodingContainer<AttributedString.PasteboardOwner.InProcessData.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<AttributedString.PasteboardOwner.InProcessData.CodingKeys>, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys()
{
  if (*v0)
  {
    return 0x6F4365676E616863;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F4365676E616863 && a2 == 0xEB00000000746E75)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance AttributedString.PasteboardOwner.InProcessData@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized AttributedString.PasteboardOwner.InProcessData.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

id specialized AttributedString.PasteboardOwner.Item.init(withItemProviderData:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for AttributeScopeCodableConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for [AttributedString](0);
  type metadata accessor for AttributeScopes.SwiftUIAttributes();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930], MEMORY[0x1E697D928]);
  dispatch thunk of static AttributeScope.decodingConfiguration.getter();
  lazy protocol witness table accessor for type [AttributedString] and conformance <A> [A](&lazy protocol witness table cache variable for type [AttributedString] and conformance <A> [A], MEMORY[0x1E6968828], MEMORY[0x1E6969E10]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:configuration:)();
  (*(v7 + 8))(v9, v6);

  *&v2[direct field offset for AttributedString.PasteboardOwner.Item.content] = v13;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  outlined consume of Data._Representation(a1, a2);
  return v10;
}

id AttributedString.PasteboardOwner.Item.init(withItemProviderData:)(uint64_t a1, unint64_t a2)
{
  v11 = a2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for AttributeScopeCodableConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for [AttributedString](0);
  v8 = v11;
  dispatch thunk of static AttributeScope.decodingConfiguration.getter();
  lazy protocol witness table accessor for type [AttributedString] and conformance <A> [A](&lazy protocol witness table cache variable for type [AttributedString] and conformance <A> [A], MEMORY[0x1E6968828], MEMORY[0x1E6969E10]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:configuration:)();
  (*(v5 + 8))(v7, v4);

  *&v2[direct field offset for AttributedString.PasteboardOwner.Item.content] = v14;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  outlined consume of Data._Representation(a1, v8);
  return v9;
}

Swift::Void __swiftcall UIKitRichTextEditorCoordinator.copy(isCut:)(Swift::Bool isCut)
{
  v86 = isCut;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v87 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedSubstring();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v85 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v92 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v97 = v8;
  v90 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v82 - v9;
  type metadata accessor for Range<AttributedString.Index>(0);
  v91 = v10;
  v88 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v95 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v100 = v15;
  v98 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v82 - v16;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, v17, v18, v19);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v93 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v82 - v25;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v102 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v82 - v30;
  v101 = type metadata accessor for AttributedString();
  v106 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v33 = &v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v82 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v82 - v38;
  v40 = [objc_opt_self() generalPasteboard];
  v105 = v1;
  UIKitRichTextEditorCoordinator.storage.getter(v31, v41);
  v42 = *(v22 + 48);
  v104 = v21;
  if (v42(v31, 1, v21))
  {

    outlined destroy of (String, Any)(v31, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?);
  }

  else
  {
    v84 = v40;
    v83 = v33;
    v43 = v103;
    outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v31, v26, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
    outlined destroy of (String, Any)(v31, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?);
    specialized AttributedTextStorage.text.getter();
    outlined destroy of (String, Any)(v26, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
    v44 = v106;
    v45 = v101;
    v46 = (*(v106 + 32))(v39, v36, v101);
    v47 = v102;
    v48 = v105;
    UIKitRichTextEditorCoordinator.storage.getter(v102, v46);
    v49 = v104;
    if (v42(v47, 1, v104))
    {

      outlined destroy of (String, Any)(v47, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?);
      (*(v44 + 8))(v39, v45);
    }

    else
    {
      v50 = v48;
      v51 = v93;
      outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v47, v93, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
      outlined destroy of (String, Any)(v47, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?);
      v107[3] = *(v51 + *(v49 + 44));
      _sypSgMaTm_1(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
      AtomicBox.wrappedValue.getter();
      v52 = v95;
      if ((v107[0] & 2) != 0)
      {
        BindingStorage.selection.getter(v95);
      }

      else
      {
        PlatformTextViewEditorStorage.selection.getter(v95);
      }

      v53 = v43;
      v54 = v99;
      v55 = v97;
      outlined destroy of (String, Any)(v51, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
      v56 = v96;
      AttributedTextSelection.indices(in:)(v39, v96);
      outlined destroy of (String, Any)(v52, type metadata accessor for AttributedTextSelection);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v58 = v100;
      v59 = v98;
      if (EnumCaseMultiPayload == 1)
      {
        v60 = v53;
        v104 = v39;
        (*(v98 + 32))(v54, v56, v100);
        v61 = v89;
        RangeSet.ranges.getter();
        v62 = v92;
        specialized Collection.first.getter(v92);
        (*(v90 + 8))(v61, v55);
        if ((*(v88 + 48))(v62, 1, v91) == 1)
        {
          (*(v59 + 8))(v54, v58);

          outlined destroy of (String, Any)(v62, type metadata accessor for Range<AttributedString.Index>?);
          (*(v106 + 8))(v104, v45);
        }

        else
        {
          v63 = v60;
          outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v62, v60, type metadata accessor for Range<AttributedString.Index>);
          _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
          AttributedString.subscript.getter();
          v64 = v83;
          AttributedString.init(_:)();
          _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E69E6F90]);
          v65 = v106;
          v66 = (*(v106 + 80) + 32) & ~*(v106 + 80);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_18CD63400;
          (*(v65 + 16))(v67 + v66, v64, v45);
          v68 = (v50 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
          swift_beginAccess();
          v69 = *v68;
          if (*v68 == 1)
          {
            __break(1u);
          }

          else
          {
            v70 = v68[1];
            v107[0] = *v68;
            v107[1] = v70;
            outlined copy of EnvironmentValues?(v69, v70);
            v71 = v84;
            v72 = specialized static AttributedString.PasteboardOwner.instance(for:with:in:)(v84, v67, v107);

            v73 = v71;

            AttributedString.PasteboardOwner.pasteboard(provideDataTo:)(v71);
            v74 = v87;
            if (v86)
            {
              v75 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage;
              swift_beginAccess();
              outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v50 + v75, v74, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
              v77 = v73;
              v78 = _s7SwiftUI21ExclusivelyAccessibleV19withExclusiveAccessyAC10CompletionVyx_qd__qd_0_Gqd__xzqd_0_YKXEs5ErrorRd_0_r0_lFAA21AttributedTextStorageVyAA08Platformk10ViewEditorL0VG_yts5NeverOTg503_s7a13UI30UIKitRichko35CoordinatorC4copy5isCutySb_tFyAA010j2E7L31VyAA08Platforme4ViewfL0VGzXEfU_10Foundation0J6StringVSnyAS5IndexVGTf1cn_n(v74, v104, v60, v76);
              v80 = v79;
              swift_beginAccess();
              outlined destroy of (String, Any)(v50 + v75, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
              outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v74, v50 + v75, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
              swift_endAccess();
              _s7SwiftUI21ExclusivelyAccessibleV10CompletionV14callAsFunctionqd__Sgyqd_0_YKFAA21AttributedTextStorageVyAA08Platformj10ViewEditorK0VG_yts5NeverOTg5(v78, v80);
            }

            else
            {
            }

            v81 = *(v106 + 8);
            v81(v83, v45);
            (*(v59 + 8))(v99, v100);
            outlined destroy of (String, Any)(v63, type metadata accessor for Range<AttributedString.Index>);
            v81(v104, v45);
          }
        }
      }

      else
      {

        outlined destroy of (String, Any)(v56, type metadata accessor for AttributedTextSelection.Indices);
        (*(v106 + 8))(v39, v45);
      }
    }
  }
}

double RichTextEditorTextView.cut(_:)(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  outlined init with copy of Any?(a1, v16);
  v6 = v17;
  if (v17)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_copy_, v12);
  swift_unknownObjectRelease();
  v14.receiver = v2;
  v14.super_class = ObjectType;
  if (objc_msgSendSuper2(&v14, sel_delegate))
  {
    type metadata accessor for UIKitRichTextEditorCoordinator(0);
    if (swift_dynamicCastClass())
    {
      UIKitRichTextEditorCoordinator.copy(isCut:)(a2 & 1);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc RichTextEditorTextView.cut(_:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  RichTextEditorTextView.cut(_:)(v9, a4 & 1);

  return outlined destroy of Any?(v9);
}

void RichTextEditorTextView.paste(_:)(uint64_t a1)
{
  v2 = v1;
  v108 = a1;
  ObjectType = swift_getObjectType();
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v113 = &v98 - v5;
  v114 = type metadata accessor for UTType();
  v107 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v98 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v98 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v98 - v12;
  v14 = [objc_opt_self() generalPasteboard];
  v122.receiver = v1;
  v122.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v122, sel_delegate);
  if (!v15)
  {
LABEL_23:
    outlined init with copy of Any?(v108, v120);
    v50 = v121;
    if (v121)
    {
      v51 = __swift_project_boxed_opaque_existential_1(v120, v121);
      v52 = *(v50 - 8);
      v53 = MEMORY[0x1EEE9AC00](v51);
      v55 = &v98 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v55, v53);
      v56 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v52 + 8))(v55, v50);
      __swift_destroy_boxed_opaque_existential_1(v120);
    }

    else
    {
      v56 = 0;
    }

    v119.receiver = v2;
    v119.super_class = ObjectType;
    objc_msgSendSuper2(&v119, sel_paste_, v56);

    swift_unknownObjectRelease();
    return;
  }

  v16 = v15;
  type metadata accessor for UIKitRichTextEditorCoordinator(0);
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v102 = v16;
  v100 = ObjectType;
  v103 = v2;
  v99 = v17;
  v106 = v14;
  v18 = [v14 items];
  type metadata accessor for [String : Any]();
  v101 = v19;
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v109 = *(v20 + 16);
  if (v109)
  {
    v21 = 0;
    v110 = "I.AttributedString";
    v22 = (v107 + 56);
    v111 = (v107 + 8);
    while (v21 < *(v20 + 16))
    {
      v23 = *(v20 + 8 * v21 + 32);
      v24 = *v22;
      v25 = v114;
      (*v22)(v113, 1, 1, v114);
      swift_bridgeObjectRetain_n();
      UTType.init(exportedAs:conformingTo:)();
      v26 = UTType.identifier.getter();
      v28 = v27;
      v29 = *v111;
      (*v111)(v13, v25);
      if (*(v23 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v26, v28);
        v31 = v30;

        if (v31)
        {

          v57 = v114;
          v24(v113, 1, 1, v114);
          v58 = v105;
          UTType.init(exportedAs:conformingTo:)();
          v59 = UTType.identifier.getter();
          v61 = v60;
          v29(v58, v57);
          if (!*(v23 + 16))
          {

            goto LABEL_11;
          }

          v62 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v61);
          v64 = v63;

          v65 = v106;
          if (v64)
          {
            outlined init with copy of Any(*(v23 + 56) + 32 * v62, v120);

            if (swift_dynamicCast())
            {
              v66 = v116;
              v67 = v117;
              v68 = type metadata accessor for AttributedString.PasteboardOwner.InProcessItem();
              v69 = objc_allocWithZone(v68);
              type metadata accessor for JSONDecoder();
              swift_allocObject();
              outlined copy of Data._Representation(v66, v67);
              JSONDecoder.init()();
              lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData();
              dispatch thunk of JSONDecoder.decode<A>(_:from:)();

              v94 = specialized static AttributedString.PasteboardOwner.inProcessInstance(for:)(v120[0], v120[1], v120[2]);

              if (v94)
              {
                v95 = *&v94[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_content];

                *&v69[OBJC_IVAR____TtCCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner13InProcessItem_content] = v95;
                v115.receiver = v69;
                v115.super_class = v68;
                v96 = objc_msgSendSuper2(&v115, sel_init);
                outlined consume of Data._Representation(v66, v67);

                UIKitRichTextEditorCoordinator.paste(_:in:)(v97, v103);

                swift_unknownObjectRelease();

                outlined consume of Data._Representation(v66, v67);
                return;
              }

              outlined consume of Data._Representation(v66, v67);
              outlined consume of Data._Representation(v66, v67);
              swift_deallocPartialClassInstance();
            }
          }

          else
          {
          }

          v32 = v65;
          goto LABEL_12;
        }
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      if (v109 == ++v21)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  else
  {
LABEL_11:

    v32 = v106;
LABEL_12:
    v33 = [v32 items];
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = *(v34 + 16);
    if (v109)
    {
      v35 = 0;
      v110 = "asteboardOwner13InProcessItem";
      v36 = (v107 + 56);
      v111 = (v107 + 8);
      do
      {
        if (v35 >= *(v34 + 16))
        {
          goto LABEL_52;
        }

        v37 = *(v34 + 8 * v35 + 32);
        swift_bridgeObjectRetain_n();
        v38 = v113;
        static UTType.data.getter();
        v39 = *v36;
        v40 = v114;
        (*v36)(v38, 0, 1, v114);
        v41 = v112;
        UTType.init(exportedAs:conformingTo:)();
        v42 = UTType.identifier.getter();
        v44 = v43;
        v45 = *v111;
        (*v111)(v41, v40);
        if (*(v37 + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v42, v44);
          v47 = v46;

          if (v47)
          {

            v70 = v113;
            static UTType.data.getter();
            v71 = v114;
            v39(v70, 0, 1, v114);
            v72 = v104;
            UTType.init(exportedAs:conformingTo:)();
            v73 = UTType.identifier.getter();
            v75 = v74;
            v45(v72, v71);
            if (*(v37 + 16))
            {
              v76 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v75);
              v78 = v77;

              v48 = v103;
              v49 = v106;
              if (v78)
              {
                outlined init with copy of Any(*(v37 + 56) + 32 * v76, v120);
                if (swift_dynamicCast())
                {
                  v80 = v116;
                  v79 = v117;
                  v81 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment;
                  v82 = v99;
                  swift_beginAccess();
                  if (*(v82 + v81) == 1)
                  {
                    goto LABEL_53;
                  }

                  EnvironmentValues.attributeScopeContext.getter();
                  v83 = AttributeScopeContext.scope.getter();
                  v85 = v84;
                  swift_endAccess();

                  v86 = static AttributeScope.readItem(from:)(v80, v79, v83, v85);
                  if (v86)
                  {
                    UIKitRichTextEditorCoordinator.paste(_:in:)(v86, v103);

                    swift_unknownObjectRelease();

                    outlined consume of Data._Representation(v80, v79);
                    return;
                  }

                  outlined consume of Data._Representation(v80, v79);
                  goto LABEL_21;
                }
              }
            }

            else
            {

              v48 = v103;
              v49 = v106;
            }

            goto LABEL_41;
          }
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        ++v35;
      }

      while (v109 != v35);
    }

LABEL_21:
    v48 = v103;
    v49 = v106;
LABEL_41:
    outlined init with copy of Any?(v108, v120);
    v87 = v121;
    if (v121)
    {
      v88 = __swift_project_boxed_opaque_existential_1(v120, v121);
      v89 = *(v87 - 8);
      v90 = MEMORY[0x1EEE9AC00](v88);
      v92 = &v98 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v89 + 16))(v92, v90);
      v93 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v89 + 8))(v92, v87);
      __swift_destroy_boxed_opaque_existential_1(v120);
    }

    else
    {
      v93 = 0;
    }

    v118.receiver = v48;
    v118.super_class = v100;
    objc_msgSendSuper2(&v118, sel_paste_, v93);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall UIKitRichTextEditorCoordinator.paste(_:in:)(Swift::OpaquePointer _, UITextView *in)
{
  rawValue = _._rawValue;
  v22 = in;
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = (v2 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
  swift_beginAccess();
  v11 = *v10;
  if (*v10 == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = v10[1];

    AttributedString.init(stringLiteral:)();
    v29 = v11;
    v30 = v12;
    EnvironmentValues.attributeScopeContext.getter();
    v23[2] = v26;
    v20 = v27;
    v24 = v27;
    v25 = v28;
    v13 = AttributeScopeContext.scope.getter();
    v15 = v14;

    v23[0] = v11;
    v23[1] = v12;
    v16 = static AttributeScope.storage(wrapping:in:)(v9, v23, v13, v15);
    v18 = v17;
    v19 = *(v4 + 8);
    v19(v9, v3);
    outlined consume of EnvironmentValues?(v11, v12);
    *&v20 = swift_getObjectType();
    v26 = rawValue;
    AttributedString.init(stringLiteral:)();
    type metadata accessor for [AttributedString](0);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type [AttributedString] and conformance [A], type metadata accessor for [AttributedString], MEMORY[0x1E69E6328]);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    Sequence<>.joined<A>(separator:)();
    v19(v6, v3);
    (*(v18 + 24))(v9, v20, v18);
    [(UITextView *)v22 _pasteAttributedString:v16 pasteAsRichText:1];
  }
}

uint64_t static AttributeScope.readItem(from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AttributedString.PasteboardOwner.Item(0, a3, a4, a4);
  outlined copy of Data._Representation(a1, a2);
  v7 = objc_allocWithZone(v6);
  v8 = AttributedString.PasteboardOwner.Item.init(withItemProviderData:)(a1, a2);
  if (!v8)
  {
    return 0;
  }

  v9 = *&v8[direct field offset for AttributedString.PasteboardOwner.Item.content];
  v10 = v8;

  return v9;
}

uint64_t UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)(uint64_t a1, void *a2)
{
  v61 = a1;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v59 - v11;
  v62 = a2;
  v13 = [a2 dropSession];
  swift_getObjectType();
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, v8, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63410;
  v74 = v6;
  v15 = *(v6 + 7);
  v15(v12, 1, 1, v5);
  v68 = "I.AttributedString";
  UTType.init(exportedAs:conformingTo:)();
  static UTType.data.getter();
  v71 = v15;
  v72 = v6 + 56;
  v15(v12, 0, 1, v5);
  v70 = "asteboardOwner13InProcessItem";
  v75 = v12;
  UTType.init(exportedAs:conformingTo:)();
  v76 = v5;
  UIDropSession.itemProviders(for:)(v14);
  v17 = v16;
  swift_unknownObjectRelease();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }
  }

LABEL_27:
  v18 = __CocoaSet.count.getter();
  if (!v18)
  {
  }

LABEL_3:
  v19 = 0;
  v67 = v17 & 0xC000000000000001;
  v66 = v17 & 0xFFFFFFFFFFFFFF8;
  v20 = (v74 + 8);
  v65 = v17;
  v64 = v18;
  while (1)
  {
    if (v67)
    {
      v21 = MEMORY[0x18D00E9C0](v19, v17);
    }

    else
    {
      if (v19 >= *(v66 + 16))
      {
        goto LABEL_26;
      }

      v21 = *(v17 + 8 * v19 + 32);
    }

    v22 = v71;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v73 = v19 + 1;
    v23 = v21;
    v24 = v76;
    v71(v75, 1, 1, v76);
    v25 = v69;
    UTType.init(exportedAs:conformingTo:)();
    v26 = UTType.identifier.getter();
    v28 = v27;
    v74 = *v20;
    (v74)(v25, v24);
    v29 = MEMORY[0x18D00C850](v26, v28);

    LOBYTE(v28) = [v23 hasItemConformingToTypeIdentifier_];

    if (v28)
    {
      break;
    }

    v30 = v75;
    static UTType.data.getter();
    v31 = v76;
    v22(v30, 0, 1, v76);
    UTType.init(exportedAs:conformingTo:)();
    v32 = UTType.identifier.getter();
    v34 = v33;
    (v74)(v25, v31);
    v35 = MEMORY[0x18D00C850](v32, v34);

    LOBYTE(v34) = [v23 hasItemConformingToTypeIdentifier_];

    if (v34)
    {
      break;
    }

    ++v19;
    v17 = v65;
    if (v73 == v64)
    {
    }
  }

  v36 = v23;

  objc_opt_self();
  v37 = swift_dynamicCastObjCClassUnconditional();
  v38 = [v37 beginningOfDocument];
  v39 = v62;
  v40 = [v62 dropPosition];
  v41 = [v37 offsetFromPosition:v38 toPosition:v40];

  v42 = [objc_msgSend(v39 dropSession)];
  swift_unknownObjectRelease();
  v43 = v75;
  v44 = v76;
  v45 = v74;
  if (v42)
  {
    if ([v42 localContext])
    {
      _bridgeAnyObjectToAny(_:)();
      v43 = v75;
      v44 = v76;
      swift_unknownObjectRelease();
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
    }

    v82[0] = v80;
    v82[1] = v81;
    if (*(&v81 + 1))
    {
      if (swift_dynamicCast())
      {
        v46 = specialized static AttributedString.PasteboardOwner.inProcessInstance(for:)(v77, v78, v79);

        if (v46)
        {
          v47 = *&v46[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_content];

          v48 = [v39 isSameView];
          v49 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage;
          v50 = v63;
          swift_beginAccess();
          v51 = v60;
          outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v50 + v49, v60, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
          v53 = _s7SwiftUI21ExclusivelyAccessibleV19withExclusiveAccessyAC10CompletionVyx_qd__qd_0_Gqd__xzqd_0_YKXEs5ErrorRd_0_r0_lFAA21AttributedTextStorageVyAA08Platformk10ViewEditorL0VG_yts5NeverOTg503_s7a13UI30UIKitRichko67CoordinatorC15performDropWith4text2at10isSameViewySay10Foundation16j32StringVG_So8_NSRangeVSbtFyAA0qE7L27VyAA08PlatformeofT0VGzXEfU_So8_NSRangeVSay10Foundation0J6StringVGSbTf1cn_nTf4nngn_n(v51, v41, 0, v47, v48, v52);
          LOBYTE(v48) = v54;

          swift_beginAccess();
          outlined destroy of (String, Any)(v50 + v49, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
          outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v51, v50 + v49, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
          swift_endAccess();
          _s7SwiftUI21ExclusivelyAccessibleV10CompletionV14callAsFunctionqd__Sgyqd_0_YKFAA21AttributedTextStorageVyAA08Platformj10ViewEditorK0VG_yts5NeverOTg5(v53, v48);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        v43 = v75;
        v44 = v76;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
      outlined destroy of Any?(v82);
    }
  }

  static UTType.data.getter();
  v71(v43, 0, 1, v44);
  UTType.init(exportedAs:conformingTo:)();
  v55 = swift_allocObject();
  v56 = v63;
  v55[2] = v63;
  v55[3] = v41;
  v55[4] = 0;
  v57 = v56;

  return v45(v25, v44);
}

double closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  if (a2 >> 60 != 15)
  {
    type metadata accessor for AttributedString.PasteboardOwner.Item<AttributeScopes.SwiftUIAttributes>(0);
    v16 = objc_allocWithZone(v15);
    outlined copy of Data._Representation(a1, a2);
    outlined copy of Data._Representation(a1, a2);
    v17 = specialized AttributedString.PasteboardOwner.Item.init(withItemProviderData:)(a1, a2);
    if (v17)
    {
      v18 = v17;
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
      type metadata accessor for MainActor();
      v20 = a4;
      v21 = v18;
      v22 = static MainActor.shared.getter();
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E85E0];
      v23[2] = v22;
      v23[3] = v24;
      v23[4] = v20;
      v23[5] = v21;
      v23[6] = a5;
      v23[7] = a6;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:), v23);
      outlined consume of Data?(a1, a2);
    }

    else
    {

      return outlined consume of Data?(a1, a2);
    }
  }

  return result;
}

uint64_t closure #1 in closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(0);
  v7[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:), v9, v8);
}

uint64_t closure #1 in closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)()
{
  v1 = v0[12];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];

  v6 = *(v4 + direct field offset for AttributedString.PasteboardOwner.Item.content);
  v7 = OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator__storage;
  swift_beginAccess();
  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v5 + v7, v1, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);

  v9 = _s7SwiftUI21ExclusivelyAccessibleV19withExclusiveAccessyAC10CompletionVyx_qd__qd_0_Gqd__xzqd_0_YKXEs5ErrorRd_0_r0_lFAA21AttributedTextStorageVyAA08Platformk10ViewEditorL0VG_yts5NeverOTg503_s7a13UI30UIKitRichko67CoordinatorC15performDropWith4text2at10isSameViewySay10Foundation16j32StringVG_So8_NSRangeVSbtFyAA0qE7L27VyAA08PlatformeofT0VGzXEfU_So8_NSRangeVSay10Foundation0J6StringVGSbTf1cn_nTf4nngn_n(v1, v3, v2, v6, 0, v8);
  LOBYTE(v3) = v10;

  swift_beginAccess();
  outlined destroy of (String, Any)(v5 + v7, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v1, v5 + v7, type metadata accessor for ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>);
  swift_endAccess();
  _s7SwiftUI21ExclusivelyAccessibleV10CompletionV14callAsFunctionqd__Sgyqd_0_YKFAA21AttributedTextStorageVyAA08Platformj10ViewEditorK0VG_yts5NeverOTg5(v9, v3);

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in UIKitRichTextEditorCoordinator.performDropWith(text:at:isSameView:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), char *a3, char *a4, int a5)
{
  v155 = a5;
  v182 = a4;
  v186 = a2;
  v187 = a3;
  type metadata accessor for AttributedTextSelection?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v177 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for AttributedString.CharacterView();
  v173 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v165 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for AttributedSubstring();
  v172 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v164 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v157 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v163 = &v149 - v13;
  v159 = type metadata accessor for AttributedString.Index();
  v174 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v153 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v158 = &v149 - v16;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v171 = v17;
  v170 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v169 = &v149 - v18;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v175 = *(v19 - 8);
  v176 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v178 = &v149 - v20;
  v21 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v181 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v180);
  v188 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v168 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v149 - v27;
  type metadata accessor for Range<AttributedString.Index>(0);
  v30 = v29;
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v156 = &v149 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v183 = &v149 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v149 - v36;
  v38 = type metadata accessor for AttributedString();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v154 = &v149 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v191 = &v149 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v149 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v149 - v47;
  v184 = a1;
  specialized AttributedTextStorage.text.getter();
  v189 = v39;
  v190 = v48;
  v49 = v48;
  v50 = v38;
  (*(v39 + 16))(v45, v49, v38);
  v51 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  Range<>.init<A>(_:in:)();
  v52 = *(v31 + 48);
  v179 = v30;
  v167 = (v31 + 48);
  v166 = v52;
  result = (v52)(v28, 1, v30);
  if (result == 1)
  {
    goto LABEL_28;
  }

  v187 = v37;
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v28, v37, type metadata accessor for Range<AttributedString.Index>);
  v193 = v182;
  AttributedString.init(stringLiteral:)();
  type metadata accessor for [AttributedString](0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type [AttributedString] and conformance [A], type metadata accessor for [AttributedString], MEMORY[0x1E69E6328]);
  v152 = v51;
  Sequence<>.joined<A>(separator:)();
  v55 = (v189 + 8);
  v54 = *(v189 + 8);
  v182 = v45;
  v186 = v54;
  v54(v45, v50);
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, v56, v57, v58);
  v193 = *(v184 + *(v59 + 44));
  _sypSgMaTm_1(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  v185 = v50;
  v60 = v181;
  if ((v192 & 2) != 0)
  {
    BindingStorage.selection.getter(v181);
  }

  else
  {
    PlatformTextViewEditorStorage.selection.getter(v181);
  }

  v61 = v188;
  v62 = v190;
  AttributedTextSelection.indices(in:)(v190, v188);
  outlined destroy of (String, Any)(v60, type metadata accessor for AttributedTextSelection);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v75 = v182;
    v76 = v187;
    v77 = v191;
    specialized AttributedTextStorage.updateEditorText<A>(replacing:with:)(v187, v191, v63, v64, v182);
    v78 = v185;
    v79 = v186;
    v186(v62, v185);
    (*(v189 + 32))(v62, v75, v78);
    v80 = v177;
    specialized AttributedTextStorage.updateEditorSelection(_:)();
    outlined destroy of (String, Any)(v80, type metadata accessor for AttributedTextSelection?);
    specialized AttributedTextStorage.commit()();
    v79(v77, v78);
    v79(v62, v78);
    v81 = type metadata accessor for AttributedTextSelection.Indices;
    v82 = v188;
LABEL_9:
    outlined destroy of (String, Any)(v82, v81);
    return outlined destroy of (String, Any)(v76, type metadata accessor for Range<AttributedString.Index>);
  }

  v181 = v55;
  v65 = v175;
  v66 = v178;
  v67 = v61;
  v68 = v176;
  (*(v175 + 32))(v178, v67, v176);
  v69 = v169;
  RangeSet.ranges.getter();
  v70 = v168;
  specialized Collection.first.getter(v168);
  (*(v170 + 8))(v69, v171);
  if (v166(v70, 1, v179) == 1)
  {
    (*(v65 + 8))(v66, v68);
    v71 = v185;
    v72 = v186;
    v186(v191, v185);
    v72(v190, v71);
    v73 = type metadata accessor for Range<AttributedString.Index>?;
    v74 = v70;
LABEL_22:
    outlined destroy of (String, Any)(v74, v73);
    v76 = v187;
    return outlined destroy of (String, Any)(v76, type metadata accessor for Range<AttributedString.Index>);
  }

  v83 = v183;
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v70, v183, type metadata accessor for Range<AttributedString.Index>);
  v84 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
  v76 = v187;
  v85 = v159;
  v188 = v84;
  v86 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v88 = v185;
  v87 = v186;
  if (v86 & 1) != 0 && (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (*(v65 + 8))(v178, v68);
    v87(v191, v88);
    v87(v190, v88);
    v81 = type metadata accessor for Range<AttributedString.Index>;
    v82 = v83;
    goto LABEL_9;
  }

  v89 = v158;
  AttributedString.startIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v90 = v174;
  v91 = v174 + 32;
  v92 = *(v174 + 32);
  v93 = v163;
  v92(v163, v89, v85);
  v94 = v164;
  v95 = *(v90 + 16);
  v96 = v93 + *(v164 + 48);
  v168 = v90 + 16;
  v167 = v95;
  v95(v96, v83, v85);
  v97 = v157;
  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v93, v157, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v171 = *(v94 + 48);
  v98 = v156;
  v92(v156, v97, v85);
  v99 = *(v90 + 8);
  v99(&v171[v97], v85);
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v93, v97, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v100 = *(v94 + 48);
  v101 = v179;
  v102 = v98 + *(v179 + 36);
  v169 = v92;
  v170 = v91;
  v92(v102, (v97 + v100), v85);
  v180 = v99;
  v174 = v90 + 8;
  v99(v97, v85);
  v103 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  v104 = v160;
  v166 = v103;
  AttributedString.subscript.getter();
  v105 = v98;
  outlined destroy of (String, Any)(v98, type metadata accessor for Range<AttributedString.Index>);
  v106 = v165;
  AttributedSubstring.characters.getter();
  v151 = *(v172 + 8);
  v172 += 8;
  v151(v104, v161);
  v150 = AttributedString.CharacterView._count.getter();
  v107 = *(v173 + 8);
  v173 += 8;
  v171 = v107;
  (v107)(v106, v162);
  v108 = v183 + *(v101 + 36);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v109 = v163;
  v110 = v167;
  v167(v163, v183, v85);
  v111 = v164;
  v112 = v109 + *(v164 + 48);
  v149 = v108;
  v110(v112, v108, v85);
  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v109, v97, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v113 = *(v111 + 48);
  v114 = v169;
  (v169)(v105, v97, v85);
  v115 = v180;
  v180(v97 + v113, v85);
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v109, v97, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v114(v105 + *(v179 + 36), v97 + *(v111 + 48), v85);
  v115(v97, v85);
  v116 = v160;
  v117 = v190;
  AttributedString.subscript.getter();
  outlined destroy of (String, Any)(v105, type metadata accessor for Range<AttributedString.Index>);
  v118 = v165;
  AttributedSubstring.characters.getter();
  v151(v116, v161);
  v172 = AttributedString.CharacterView._count.getter();
  v119 = v118;
  v120 = v162;
  (v171)(v119, v162);
  v121 = v182;
  specialized AttributedTextStorage.updateEditorText<A>(replacing:with:)(v187, v191, v122, v123, v182);
  v124 = v185;
  v125 = v186;
  v186(v117, v185);
  v126 = v189 + 32;
  v179 = *(v189 + 32);
  (v179)(v117, v121, v124);
  v127 = v120;
  v128 = v117;
  v129 = v180;
  if ((v155 & 1) == 0)
  {
LABEL_21:
    v147 = v177;
    v148 = v183;
    specialized AttributedTextStorage.updateEditorSelection(_:)();
    outlined destroy of (String, Any)(v147, type metadata accessor for AttributedTextSelection?);
    specialized AttributedTextStorage.commit()();
    (*(v175 + 8))(v178, v176);
    v125(v191, v124);
    v125(v128, v124);
    v73 = type metadata accessor for Range<AttributedString.Index>;
    v74 = v148;
    goto LABEL_22;
  }

  v130 = v127;
  v189 = v126;
  v131 = v159;
  if ((dispatch thunk of static Comparable.> infix(_:_:)() & 1) == 0)
  {
LABEL_20:
    v144 = v154;
    AttributedString.init()();
    specialized AttributedTextStorage.updateEditorText<A>(replacing:with:)(v183, v144, v145, v146, v121);
    v125 = v186;
    v186(v144, v124);
    v125(v128, v124);
    (v179)(v128, v121, v124);
    goto LABEL_21;
  }

  v132 = v131;
  v133 = v153;
  AttributedString.startIndex.getter();
  v134 = v165;
  AttributedString.characters.getter();
  v135 = AttributedString.CharacterView._count.getter();
  result = (v171)(v134, v130);
  if (!__OFADD__(v150, v135))
  {
    v136 = v158;
    AttributedStringProtocol.index(_:offsetByCharacters:)();
    v129(v133, v132);
    AttributedStringProtocol.index(_:offsetByCharacters:)();
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    v137 = v164;
    v138 = v163;
    v139 = v169;
    if (result)
    {
      (v169)(v163, v136, v132);
      v139(v138 + *(v137 + 48), v133, v132);
      v140 = v157;
      outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v138, v157, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v141 = v138;
      v142 = *(v137 + 48);
      v143 = v183;
      outlined destroy of (String, Any)(v183, type metadata accessor for Range<AttributedString.Index>);
      v139(v143, v140, v132);
      v129((v140 + v142), v132);
      outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v141, v140, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
      v139(v149, (v140 + *(v137 + 48)), v132);
      v129(v140, v132);
      v124 = v185;
      v128 = v190;
      v121 = v182;
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized AttributedString.PasteboardOwner.InProcessData.init(from:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<AttributedString.PasteboardOwner.InProcessData.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AttributedString.PasteboardOwner.InProcessData.CodingKeys>, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

char *specialized static AttributedString.PasteboardOwner.instance(for:with:in:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = [a1 name];
  if (one-time initialization token for _instances != -1)
  {
    swift_once();
  }

  v25[0] = static AttributedString.PasteboardOwner._instances;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for AtomicBox<[UIPasteboardName : AttributedString.PasteboardOwner]>, type metadata accessor for [UIPasteboardName : AttributedString.PasteboardOwner], MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  if (!*(v27 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(), (v9 & 1) == 0))
  {

LABEL_8:

    v13 = [a1 changeCount];
    v14 = type metadata accessor for AttributedString.PasteboardOwner();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_content] = a2;
    v16 = &v15[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_environment];
    *v16 = v6;
    *(v16 + 1) = v5;
    *&v15[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_changeCount] = v13;
    v26.receiver = v15;
    v26.super_class = v14;

    v17 = objc_msgSendSuper2(&v26, sel_init);
    v18 = [a1 name];
    v27 = static AttributedString.PasteboardOwner._instances;
    v10 = v17;

    v19 = AtomicBox.wrappedValue.modify();
    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    *v21 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v18, isUniquelyReferenced_nonNull_native);

    *v21 = v24;
    v19(v25, 0);
    goto LABEL_9;
  }

  v10 = *(*(v27 + 56) + 8 * v8);

  v11 = *&v10[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_changeCount];
  if (v11 != [a1 changeCount])
  {

    goto LABEL_8;
  }

  *&v10[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_content] = a2;

  v12 = &v10[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_environment];
  swift_beginAccess();
  *v12 = v6;
  *(v12 + 1) = v5;

LABEL_9:

  return v10;
}

char *specialized static AttributedString.PasteboardOwner.inProcessInstance(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x18D00C850](a1, a2);
  if (one-time initialization token for _instances != -1)
  {
    swift_once();
  }

  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for AtomicBox<[UIPasteboardName : AttributedString.PasteboardOwner]>, type metadata accessor for [UIPasteboardName : AttributedString.PasteboardOwner], MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  if (*(v9 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(), (v6 & 1) != 0))
  {
    v7 = *(*(v9 + 56) + 8 * v5);

    result = v7;
    if (*&v7[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_changeCount] == a3)
    {
      return result;
    }
  }

  else
  {
  }

  return 0;
}

void specialized UIKitRichTextEditorCoordinator.textDraggableView(_:itemsForDrag:)(void *a1)
{
  v99 = a1;
  v2 = type metadata accessor for AttributedSubstring();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v91 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v89 = *(v6 - 8);
  v90 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v88 = &v76 - v7;
  type metadata accessor for Range<AttributedString.Index>(0);
  v81 = v8;
  v80 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v86 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v84 = v13;
  v92 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v76 - v14;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>(0, v15, v16, v17);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v76 - v23;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v94 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v76 - v28;
  v30 = type metadata accessor for AttributedString();
  v97 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v76 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v76 - v37;
  v98 = [objc_opt_self() generalPasteboard];
  v96 = v1;
  UIKitRichTextEditorCoordinator.storage.getter(v29, v39);
  v40 = *(v20 + 48);
  v95 = v19;
  if (v40(v29, 1, v19))
  {
    v41 = type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?;
    v42 = v29;
LABEL_13:
    outlined destroy of (String, Any)(v42, v41);
    v62 = [v99 suggestedItems];
    type metadata accessor for UIDragItem();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return;
  }

  v43 = v93;
  v78 = v32;
  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v29, v24, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  outlined destroy of (String, Any)(v29, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?);
  specialized AttributedTextStorage.text.getter();
  outlined destroy of (String, Any)(v24, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v44 = v97;
  v45 = (*(v97 + 32))(v38, v35, v30);
  v46 = v94;
  UIKitRichTextEditorCoordinator.storage.getter(v94, v45);
  v47 = v95;
  v48 = v30;
  if (v40(v46, 1, v95))
  {
    (*(v44 + 8))(v38, v30);
    v41 = type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?;
    v42 = v46;
    goto LABEL_13;
  }

  v77 = v38;
  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v46, v43, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  outlined destroy of (String, Any)(v46, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?);
  v100[2] = *(v43 + *(v47 + 44));
  _sypSgMaTm_1(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  v49 = v86;
  if ((v100[0] & 2) != 0)
  {
    BindingStorage.selection.getter(v86);
  }

  else
  {
    PlatformTextViewEditorStorage.selection.getter(v86);
  }

  v50 = v92;
  v51 = v88;
  v52 = v89;
  v53 = v87;
  outlined destroy of (String, Any)(v43, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v54 = v77;
  AttributedTextSelection.indices(in:)(v77, v53);
  outlined destroy of (String, Any)(v49, type metadata accessor for AttributedTextSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = v90;
  if (EnumCaseMultiPayload != 1)
  {
    (*(v97 + 8))(v54, v48);
    v61 = type metadata accessor for AttributedTextSelection.Indices;
    goto LABEL_12;
  }

  v57 = v50;
  v58 = *(v50 + 32);
  v59 = v83;
  v60 = v84;
  v58(v83, v53, v84);
  RangeSet.ranges.getter();
  v53 = v82;
  specialized Collection.first.getter(v82);
  (*(v52 + 8))(v51, v56);
  if ((*(v80 + 48))(v53, 1, v81) == 1)
  {
    (*(v57 + 8))(v59, v60);
    (*(v97 + 8))(v77, v48);
    v61 = type metadata accessor for Range<AttributedString.Index>?;
LABEL_12:
    v41 = v61;
    v42 = v53;
    goto LABEL_13;
  }

  v63 = v79;
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v53, v79, type metadata accessor for Range<AttributedString.Index>);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
  v64 = v77;
  AttributedString.subscript.getter();
  v65 = v78;
  AttributedString.init(_:)();
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E69E6F90]);
  v66 = v97;
  v67 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_18CD63400;
  (*(v66 + 16))(v68 + v67, v65, v48);
  v69 = (v96 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
  swift_beginAccess();
  if (*v69 == 1)
  {
    __break(1u);
  }

  else
  {
    v70 = v69[1];
    v100[0] = *v69;
    v100[1] = v70;

    v71 = v98;
    v72 = specialized static AttributedString.PasteboardOwner.instance(for:with:in:)(v98, v68, v100);

    v73 = v99;
    AttributedString.PasteboardOwner.register(pasteboard:to:)(v71, v99);
    v74 = [v73 suggestedItems];
    type metadata accessor for UIDragItem();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = *(v66 + 8);
    v75(v65, v48);
    outlined destroy of (String, Any)(v63, type metadata accessor for Range<AttributedString.Index>);
    (*(v57 + 8))(v83, v84);
    v75(v64, v48);
  }
}

BOOL specialized UIKitRichTextEditorCoordinator.dropContainsText(_:)(void *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 1);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_msgSend(a1 dropSession];
  swift_unknownObjectRelease();
  type metadata accessor for UIDragItem();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
LABEL_19:
    v35 = v8 & 0xFFFFFFFFFFFFFF8;
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = v8 & 0xFFFFFFFFFFFFFF8;
    v37 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v36 = v8 & 0xC000000000000001;
  v10 = (v3 + 1);
  v3 = &selRef_bundleIdentifier;
  v33 = v8;
  v34 = v2;
  while (1)
  {
    v11 = v9;
    if (v37 == v9)
    {
LABEL_14:

      return v37 != v11;
    }

    if (v36)
    {
      v12 = MEMORY[0x18D00E9C0](v9, v8);
    }

    else
    {
      if (v9 >= *(v35 + 16))
      {
        goto LABEL_18;
      }

      v12 = *(v8 + 8 * v9 + 32);
    }

    v13 = v12;
    v2 = &selRef_bundleIdentifier;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v38 = v11;
    v14 = [v12 itemProvider];
    static UTType.text.getter();
    v15 = UTType.identifier.getter();
    v17 = v16;
    v18 = v13;
    v19 = *v10;
    v20 = v34;
    (*v10)(v6, v34);
    v21 = MEMORY[0x18D00C850](v15, v17);

    LODWORD(v17) = [v14 hasItemConformingToTypeIdentifier_];

    if (v17)
    {
      break;
    }

    v22 = [v18 itemProvider];
    static UTType.rtfd.getter();
    v23 = UTType.identifier.getter();
    v25 = v24;
    v19(v6, v20);
    v26 = MEMORY[0x18D00C850](v23, v25);

    LODWORD(v25) = [v22 hasItemConformingToTypeIdentifier_];

    if (v25)
    {
      break;
    }

    v27 = [v18 itemProvider];
    static UTType.flatRTFD.getter();
    v28 = UTType.identifier.getter();
    v30 = v29;
    v19(v6, v20);
    v31 = MEMORY[0x18D00C850](v28, v30);

    LODWORD(v30) = [v27 hasItemConformingToTypeIdentifier_];

    v11 = v38;
    v9 = v38 + 1;
    v8 = v33;
    if (v30)
    {
      goto LABEL_14;
    }
  }

  v11 = v38;
  return v37 != v11;
}

BOOL specialized UIKitRichTextEditorCoordinator.dropContainsSwiftUIAttributedString(_:)(void *a1)
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v30 - v3;
  v34 = type metadata accessor for UTType();
  v4 = *(v34 - 8);
  v5 = MEMORY[0x1EEE9AC00](v34 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_msgSend(a1 dropSession];
  swift_unknownObjectRelease();
  type metadata accessor for UIDragItem();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
LABEL_17:
    v35 = v9 & 0xFFFFFFFFFFFFFF8;
    v38 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = v9 & 0xFFFFFFFFFFFFFF8;
    v38 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v31 = v9;
  v32 = "asteboardOwner13InProcessItem";
  v36 = (v4 + 7);
  v37 = v9 & 0xC000000000000001;
  ++v4;
  v30 = "I.AttributedString";
  do
  {
    v11 = v10;
    if (v38 == v10)
    {
      break;
    }

    if (v37)
    {
      v13 = MEMORY[0x18D00E9C0](v10, v9);
      v12 = v36;
    }

    else
    {
      v12 = v36;
      if (v10 >= *(v35 + 16))
      {
        goto LABEL_16;
      }

      v13 = *(v9 + 8 * v10 + 32);
    }

    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v40 = v11;
    v39 = [v13 itemProvider];
    v41 = v13;
    v14 = v33;
    static UTType.data.getter();
    v15 = *v12;
    v16 = v34;
    (*v12)(v14, 0, 1, v34);
    UTType.init(exportedAs:conformingTo:)();
    v17 = UTType.identifier.getter();
    v19 = v18;
    v20 = *v4;
    (*v4)(v7, v16);
    v21 = MEMORY[0x18D00C850](v17, v19);

    v22 = v39;
    LODWORD(v19) = [v39 hasItemConformingToTypeIdentifier_];

    if (v19)
    {

      v11 = v40;
      break;
    }

    v23 = [v41 itemProvider];
    v15(v14, 1, 1, v16);
    UTType.init(exportedAs:conformingTo:)();
    v24 = UTType.identifier.getter();
    v26 = v25;
    v20(v7, v16);
    v27 = MEMORY[0x18D00C850](v24, v26);

    LODWORD(v26) = [v23 hasItemConformingToTypeIdentifier_];

    v11 = v40;
    v10 = v40 + 1;
    v9 = v31;
  }

  while (!v26);
  v28 = v38 != v11;

  return v28;
}

unint64_t type metadata accessor for UIDragItem()
{
  result = lazy cache variable for type metadata for UIDragItem;
  if (!lazy cache variable for type metadata for UIDragItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIDragItem);
  }

  return result;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for RangeSet<AttributedString.Index>.Ranges(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString.Index();
    v7 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (Binding<AttributedString>, MutableBox<AttributedTextSelection>)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Binding<AttributedString>(255);
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for AttributedString.PasteboardOwner.Item<AttributeScopes.SwiftUIAttributes>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AttributedString.PasteboardOwner.Item<AttributeScopes.SwiftUIAttributes>)
  {
    v2 = type metadata accessor for AttributeScopes.SwiftUIAttributes();
    v3 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930], MEMORY[0x1E697D928]);
    v5 = type metadata accessor for AttributedString.PasteboardOwner.Item(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AttributedString.PasteboardOwner.Item<AttributeScopes.SwiftUIAttributes>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t lazy protocol witness table accessor for type [AttributedString] and conformance <A> [A](unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [AttributedString](255);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData()
{
  result = lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData;
  if (!lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributedString.PasteboardOwner.InProcessData, &unk_1EFFBC9B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData;
  if (!lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributedString.PasteboardOwner.InProcessData, &unk_1EFFBC9B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AttributedString.PasteboardOwner.InProcessData(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for AttributedString.PasteboardOwner.InProcessData(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

void *assignWithTake for AttributedString.PasteboardOwner.InProcessData(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];
  return a1;
}

unint64_t lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributedString.PasteboardOwner.InProcessData.CodingKeys, &unk_1EFFBCA50, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributedString.PasteboardOwner.InProcessData.CodingKeys, &unk_1EFFBCA50, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributedString.PasteboardOwner.InProcessData.CodingKeys, &unk_1EFFBCA50, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributedString.PasteboardOwner.InProcessData.CodingKeys, &unk_1EFFBCA50, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<AttributedString.PasteboardOwner.InProcessData.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys();
    v7 = a3(a1, &unk_1EFFBCA50, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void MapKitGraphInputs.environment.getter(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *(v3 + 16);
}

void (*MapKitGraphInputs.environment.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 16);
  return MapKitGraphInputs.environment.modify;
}

void MapKitGraphInputs.environment.modify(void **a1)
{
  v1 = *a1;
  _GraphInputs.environment.setter();

  free(v1);
}

uint64_t destroy for MapKitGraphInputs(void *a1)
{
}

uint64_t initializeWithCopy for MapKitGraphInputs(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = a2[5];

  return a1;
}

uint64_t *assignWithCopy for MapKitGraphInputs(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  a1[5] = a2[5];

  return a1;
}

uint64_t *assignWithTake for MapKitGraphInputs(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 3) = *(a2 + 3);
  a1[5] = a2[5];

  return a1;
}

double AdaptiveStack.init(axis:alignment:spacing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v9)
  {
    lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout();
  }

  else
  {
    lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout();
  }

  AnyLayout.init<A>(_:)();

  a6(v10);
  type metadata accessor for _LayoutRoot<AnyLayout>(0);
  lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, MEMORY[0x1E697DDC8]);
  _VariadicView.Tree.init(root:content:)();

  return result;
}

unint64_t lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout()
{
  result = lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout;
  if (!lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697DF90], MEMORY[0x1E697DFA0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout);
  }

  return result;
}

void type metadata accessor for _LayoutRoot<AnyLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _LayoutRoot<AnyLayout>)
  {
    lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout();
    v1 = type metadata accessor for _LayoutRoot();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _LayoutRoot<AnyLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout()
{
  result = lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout;
  if (!lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981D70], MEMORY[0x1E6981D78], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout()
{
  result = lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout;
  if (!lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697DE68], MEMORY[0x1E697DE70], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout;
  if (!lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697DE60], MEMORY[0x1E697DE70], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout);
  }

  return result;
}

uint64_t type metadata completion function for AdaptiveStack(uint64_t a1)
{
  type metadata accessor for _LayoutRoot<AnyLayout>(255);
  lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, MEMORY[0x1E697DDC8]);
  result = type metadata accessor for _VariadicView.Tree();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static AdaptiveStack._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a2[3];
  v14 = a2[2];
  v15 = v6;
  v16 = a2[4];
  v17 = *(a2 + 20);
  v7 = a2[1];
  v12 = *a2;
  v13 = v7;
  v11 = v5;
  type metadata accessor for AdaptiveStack(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  type metadata accessor for _LayoutRoot<AnyLayout>(255);
  lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, MEMORY[0x1E697DDC8]);
  v8 = type metadata accessor for _VariadicView.Tree();
  _GraphValue.subscript.getter();
  v10[0] = lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, MEMORY[0x1E697DDD0]);
  v10[1] = a4;
  swift_getWitnessTable(MEMORY[0x1E697E308], v8, v10);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #1 in static AdaptiveStack._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for AdaptiveStack(0, a2, a3, a4);
  type metadata accessor for _LayoutRoot<AnyLayout>(255);
  lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, MEMORY[0x1E697DDC8]);
  v9 = type metadata accessor for _VariadicView.Tree();
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v8, v9, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v10;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance AdaptiveStack<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for AdaptiveStack<A>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _LayoutRoot<AnyLayout>(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

Swift::tuple_inserted_Bool_memberAfterInsert_SwiftUI_TableColumnCustomizationBehavior __swiftcall TableColumnCustomizationBehavior.insert(_:)(SwiftUI::TableColumnCustomizationBehavior a1)
{
  v3 = *v1;
  v4 = *v2 & *v1;
  if (v4 != *v1)
  {
    *v2 |= v3;
  }

  *a1.guts.rawValue = v3;
  v5 = v4 != v3;
  result.memberAfterInsert.guts.rawValue = v1;
  result.inserted = v5;
  return result;
}

SwiftUI::TableColumnCustomizationBehavior_optional __swiftcall TableColumnCustomizationBehavior.remove(_:)(SwiftUI::TableColumnCustomizationBehavior a1)
{
  v3 = *v2 & *a1.guts.rawValue;
  if (v3)
  {
    *v2 &= ~*a1.guts.rawValue;
  }

  *v1 = v3;
  *(v1 + 8) = v3 == 0;
  result.value = a1;
  return result;
}

SwiftUI::TableColumnCustomizationBehavior_optional __swiftcall TableColumnCustomizationBehavior.update(with:)(SwiftUI::TableColumnCustomizationBehavior with)
{
  v3 = *with.guts.rawValue;
  v4 = *v2;
  *v2 |= *with.guts.rawValue;
  v5 = v4 & v3;
  *v1 = v5;
  *(v1 + 8) = v5 == 0;
  result.value = with;
  return result;
}

uint64_t TableColumnContent.customizationID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = 0;
  v6[3] = 0;
  v7 = 0;
  return TableColumnContent.environment<A>(key:value:)(&type metadata for TableColumnCustomizationIDKey, v6, a3, &type metadata for TableColumnCustomizationIDKey, a4, &protocol witness table for TableColumnCustomizationIDKey, a5);
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationBehavior, &type metadata for TableColumnCustomizationBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationBehavior, &type metadata for TableColumnCustomizationBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI18TableColumnContentRzlAA018EnvironmentWritingcdE033_D18AEB50FB5BD1FE65061C37D76F709BLLVyAA0cD20DefaultVisibilityKey33_AD0B7B82D3360F70EB1ED1A484B203ACLLVxGAaBHPyHCTm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v7[0] = a2;
  v7[1] = v3;
  v7[2] = a3;
  v7[3] = v4;
  v5 = type metadata accessor for EnvironmentWritingTableColumnContent(255, v7);
  return swift_getWitnessTable(protocol conformance descriptor for EnvironmentWritingTableColumnContent<A, B>, v5);
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationBehavior.Guts, &unk_1EFFBCBC8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationBehavior.Guts, &unk_1EFFBCBC8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationBehavior.Guts, &unk_1EFFBCBC8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationBehavior.Guts, &unk_1EFFBCBC8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts);
  }

  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance TableColumnCustomizationIDKey@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance TableColumnCustomizationIDKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA29TableColumnCustomizationIDKey33_AD0B7B82D3360F70EB1ED1A484B203ACLLV_Tt1g5(v5, v7);
}

double FallbackDelegateBox.__deallocating_deinit()
{
  outlined consume of FallbackDelegateBox<A>.DelegateStorage<A>(*(v0 + 16), *(v0 + 24));

  swift_deallocClassInstance();
  return result;
}

double ObjectFallbackDelegateBox.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_deallocClassInstance();
  return result;
}

id outlined copy of FallbackDelegateBox<A>.DelegateStorage<A>(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t assignWithCopy for FallbackDelegateBox.DelegateStorage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of FallbackDelegateBox<A>.DelegateStorage<A>(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of FallbackDelegateBox<A>.DelegateStorage<A>(v5, v6);
  return a1;
}

uint64_t assignWithTake for FallbackDelegateBox.DelegateStorage(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of FallbackDelegateBox<A>.DelegateStorage<A>(v5, v6);
  return a1;
}

uint64_t initializeWithCopy for MakeObservableObjectDelegateBox(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t *assignWithCopy for MakeObservableObjectDelegateBox(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2, a3);
  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for MakeObservableObjectDelegateBox(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

double static UIApplicationDelegateAdaptor._makeProperty<A>(in:container:fieldOffset:inputs:)()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for AppGraph(0);
  v0 = swift_dynamicCastClass();

  if (!v0)
  {

    JUMPOUT(0x18D009810);
  }

  return result;
}

void UIApplicationDelegateAdaptor<>.projectedValue.getter(uint64_t a1)
{
  if (!static AppGraph.delegateBox)
  {
    v2 = static os_log_type_t.fault.getter();
    v3 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v2, &dword_18BD4A000, v3, "UIApplicationDelegateAdaptor was used outside of an App or Scene; this will not instantiate the delegate.", 105, 2, MEMORY[0x1E69E7CC0]);
  }

  v4 = *(a1 + 16);

  specialized UIApplicationDelegateAdaptor.wrappedValue.getter(v4);
}

void NSHostingSceneRepresentation.init(rootScene:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void NSHostingSceneRepresentation.__deallocating_deinit()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t static SpatialLongPressGesture.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SpatialLongPressGesture.Value(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t SpatialLongPressGesture.init<A>(minimumDuration:maximumDistance:coordinateSpace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  a4[1] = a6;
  (*(a3 + 8))(a2, a3);
  v8 = *(*(a2 - 8) + 8);

  return v8(a1, a2);
}

uint64_t SpatialLongPressGesture.internalBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = outlined init with copy of CoordinateSpace((v1 + 2), a1 + 40);
  *a1 = 0;
  *(a1 + 8) = closure #1 in SpatialLongPressGesture.internalBody.getter;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 88) = 16;
  *(a1 + 96) = 1;
  return result;
}

void closure #1 in SpatialLongPressGesture.internalBody.getter(void *a1@<X0>, uint64_t a9@<X8>)
{
  if (*(a1 + 73) > 1u)
  {
    if (*(a1 + 73) == 2)
    {
      TappableSpatialEvent.location.getter();
      *a9 = v11;
      *(a9 + 8) = v12;
      *(a9 + 16) = 0;
      *(a9 + 17) = 2;
      return;
    }

    *a9 = 0;
    *(a9 + 8) = 0;
    v10 = 768;
  }

  else if (*(a1 + 73))
  {
    TappableSpatialEvent.location.getter();
    *a9 = v13;
    *(a9 + 8) = v14;
    v10 = 513;
  }

  else
  {
    if (a1[2] != 1)
    {
      TappableSpatialEvent.location.getter();
      *a9 = v15;
      *(a9 + 8) = v16;
      *(a9 + 16) = 0;
      return;
    }

    *a9 = 0;
    *(a9 + 8) = 0;
    v10 = 2;
  }

  *(a9 + 16) = v10;
}

uint64_t View.onLongPressGesture<A>(minimumDuration:maximumDistance:coordinateSpace:perform:onPressingChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12)
{
  v38 = a8;
  v37 = a6;
  v35 = a5;
  v34 = a2;
  v36 = a9;
  v18 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(0);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, a1, a7, v24);
  *v46 = a10;
  *&v46[1] = a11;
  (*(a12 + 8))(v47, a7, a12);
  (*(v18 + 8))(v20, a7);
  v27 = swift_allocObject();
  *(v27 + 16) = v34;
  *(v27 + 24) = a3;
  outlined init with copy of SpatialLongPressGesture(v46, &v39);
  v28 = v35;
  v42 = a4;
  v43 = v35;
  v44 = partial apply for closure #1 in View.onLongPressGesture<A>(minimumDuration:maximumDistance:coordinateSpace:perform:onPressingChanged:);
  v45 = v27;

  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a4, v28);
  type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>(0);
  v30 = v29;
  v31 = lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>, MEMORY[0x1E697E860]);
  Gesture.cancellable()();
  outlined destroy of ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>(&v39);
  outlined destroy of SpatialLongPressGesture(v46);
  *&v39 = v30;
  *(&v39 + 1) = MEMORY[0x1E69801F8];
  v40 = v31;
  v41 = MEMORY[0x1E69801F0];
  swift_getOpaqueTypeConformance2();
  View.gesture<A>(_:including:)();
  return (*(v23 + 8))(v26, v22);
}

void type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>(255);
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>, MEMORY[0x1E697E860]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>(255);
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>, MEMORY[0x1E697E860]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>, MEMORY[0x1E697E860]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>(255);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>, MEMORY[0x1E697E860]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0);
    }
  }
}

void type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>)
  {
    type metadata accessor for CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>(255);
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>> and conformance CallbacksGesture<A>, type metadata accessor for CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, MEMORY[0x1E697E958]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>);
    }
  }
}

void type metadata accessor for CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>)
  {
    type metadata accessor for PressableGestureCallbacks<SpatialLongPressGesture.Value>(255);
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>, type metadata accessor for PressableGestureCallbacks<SpatialLongPressGesture.Value>, protocol conformance descriptor for PressableGestureCallbacks<A>);
    v1 = type metadata accessor for CallbacksGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>);
    }
  }
}

void type metadata accessor for PressableGestureCallbacks<SpatialLongPressGesture.Value>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PressableGestureCallbacks<SpatialLongPressGesture.Value>)
  {
    v2 = lazy protocol witness table accessor for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value();
    v4 = type metadata accessor for PressableGestureCallbacks(a1, &type metadata for SpatialLongPressGesture.Value, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for PressableGestureCallbacks<SpatialLongPressGesture.Value>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value()
{
  result = lazy protocol witness table cache variable for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value;
  if (!lazy protocol witness table cache variable for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value)
  {
    result = swift_getWitnessTable("D{\b", &type metadata for SpatialLongPressGesture.Value, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value;
  if (!lazy protocol witness table cache variable for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialLongPressGesture.Value, &type metadata for SpatialLongPressGesture.Value, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value);
  }

  return result;
}

uint64_t partial apply for closure #1 in View.onLongPressGesture<A>(minimumDuration:maximumDistance:coordinateSpace:perform:onPressingChanged:)(unint64_t a1, unint64_t a2, char a3, __n128 a4, __n128 a5)
{
  a4.n128_u64[0] = a1;
  a5.n128_u64[0] = a2;
  if (a3)
  {
    a4.n128_f64[0] = 0.0;
    a5.n128_f64[0] = 0.0;
  }

  return (*(v5 + 16))(a4, a5);
}

uint64_t outlined destroy of ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>(uint64_t a1)
{
  type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of SpatialLongPressGesture(uint64_t result)
{
  if (!*(result + 56))
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1((result + 16));
    return v1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialLongPressGesture and conformance SpatialLongPressGesture()
{
  result = lazy protocol witness table cache variable for type SpatialLongPressGesture and conformance SpatialLongPressGesture;
  if (!lazy protocol witness table cache variable for type SpatialLongPressGesture and conformance SpatialLongPressGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialLongPressGesture, &type metadata for SpatialLongPressGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialLongPressGesture and conformance SpatialLongPressGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialLongPressGesture and conformance SpatialLongPressGesture;
  if (!lazy protocol witness table cache variable for type SpatialLongPressGesture and conformance SpatialLongPressGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialLongPressGesture, &type metadata for SpatialLongPressGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialLongPressGesture and conformance SpatialLongPressGesture);
  }

  return result;
}

uint64_t destroy for SpatialLongPressGesture(uint64_t result)
{
  if (!*(result + 56))
  {
    return __swift_destroy_boxed_opaque_existential_1((result + 16));
  }

  return result;
}

_OWORD *initializeWithCopy for SpatialLongPressGesture(_OWORD *result, uint64_t a2)
{
  *result = *a2;
  if (*(a2 + 56))
  {
    v2 = *(a2 + 32);
    result[1] = *(a2 + 16);
    result[2] = v2;
    *(result + 41) = *(a2 + 41);
  }

  else
  {
    v3 = *(a2 + 40);
    *(result + 40) = v3;
    v4 = result;
    (**(v3 - 8))(result + 1, a2 + 16);
    result = v4;
    *(v4 + 56) = 0;
  }

  return result;
}

uint64_t assignWithCopy for SpatialLongPressGesture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1 + 16);
    if (*(a2 + 56))
    {
      v4 = *(a2 + 16);
      v5 = *(a2 + 32);
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 16) = v4;
      *(a1 + 32) = v5;
    }

    else
    {
      v6 = *(a2 + 40);
      *(a1 + 40) = v6;
      *(a1 + 48) = *(a2 + 48);
      (**(v6 - 8))(a1 + 16, a2 + 16);
      *(a1 + 56) = 0;
    }
  }

  return a1;
}

__n128 assignWithTake for SpatialLongPressGesture(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1 + 16);
    v5 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v5;
    result = *(a2 + 41);
    *(a1 + 41) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialLongPressGesture(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialLongPressGesture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialLongPressGesture.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialLongPressGesture.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for ModifierGesture<CategoryGesture<SpatialLongPressGesture.Value>, ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CategoryGesture<SpatialLongPressGesture.Value>, ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>>)
  {
    v1 = MEMORY[0x1E697E628];
    type metadata accessor for CategoryGesture<SpatialLongPressGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<SpatialLongPressGesture.Value>, MEMORY[0x1E697E628]);
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>(255);
    lazy protocol witness table accessor for type CategoryGesture<SpatialLongPressGesture.Value> and conformance CategoryGesture<A>(&lazy protocol witness table cache variable for type CategoryGesture<SpatialLongPressGesture.Value> and conformance CategoryGesture<A>, &lazy cache variable for type metadata for CategoryGesture<SpatialLongPressGesture.Value>, v1, MEMORY[0x1E697E630]);
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>, MEMORY[0x1E697E860]);
    v2 = type metadata accessor for ModifierGesture();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifierGesture<CategoryGesture<SpatialLongPressGesture.Value>, ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>)
  {
    v1 = MEMORY[0x1E697FE18];
    type metadata accessor for CategoryGesture<SpatialLongPressGesture.Value>(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<SpatialLongPressGesture.Value>, MEMORY[0x1E697FE18]);
    type metadata accessor for SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>(255);
    lazy protocol witness table accessor for type CategoryGesture<SpatialLongPressGesture.Value> and conformance CategoryGesture<A>(&lazy protocol witness table cache variable for type CoordinateSpaceGesture<SpatialLongPressGesture.Value> and conformance CoordinateSpaceGesture<A>, &lazy cache variable for type metadata for CoordinateSpaceGesture<SpatialLongPressGesture.Value>, v1, MEMORY[0x1E697FE20]);
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>> and conformance SingleLongPressGesture<A, B>, type metadata accessor for SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>, protocol conformance descriptor for SingleLongPressGesture<A, B>);
    v2 = type metadata accessor for ModifierGesture();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>);
    }
  }
}

void type metadata accessor for CategoryGesture<SpatialLongPressGesture.Value>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SpatialLongPressGesture.Value);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>)
  {
    type metadata accessor for ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>(255);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>, MEMORY[0x1E697E860]);
    v5 = type metadata accessor for SingleLongPressGesture(a1, &type metadata for SpatialLongPressGesture.Value, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>)
  {
    type metadata accessor for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>(255, &lazy cache variable for type metadata for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, &type metadata for SpatialLongPressGesture.Value, MEMORY[0x1E697DA98]);
    type metadata accessor for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>(255, &lazy cache variable for type metadata for EventListener<TappableSpatialEvent>, MEMORY[0x1E697FA80], MEMORY[0x1E697E120]);
    lazy protocol witness table accessor for type MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value> and conformance MapGesture<A, B>();
    lazy protocol witness table accessor for type EventListener<TappableSpatialEvent> and conformance EventListener<A>();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>);
    }
  }
}

void type metadata accessor for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x1E697FA90], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value> and conformance MapGesture<A, B>)
  {
    type metadata accessor for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>(255, &lazy cache variable for type metadata for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, &type metadata for SpatialLongPressGesture.Value, MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable(MEMORY[0x1E697DAA0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value> and conformance MapGesture<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EventListener<TappableSpatialEvent> and conformance EventListener<A>()
{
  result = lazy protocol witness table cache variable for type EventListener<TappableSpatialEvent> and conformance EventListener<A>;
  if (!lazy protocol witness table cache variable for type EventListener<TappableSpatialEvent> and conformance EventListener<A>)
  {
    type metadata accessor for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>(255, &lazy cache variable for type metadata for EventListener<TappableSpatialEvent>, MEMORY[0x1E697FA80], MEMORY[0x1E697E120]);
    result = swift_getWitnessTable(MEMORY[0x1E697E128], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EventListener<TappableSpatialEvent> and conformance EventListener<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CategoryGesture<SpatialLongPressGesture.Value> and conformance CategoryGesture<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CategoryGesture<SpatialLongPressGesture.Value>(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t TableRowContent.contextMenu<A>(menuItems:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _ContextMenuTableRowModifier(0, v11, v12, v11);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  a1(v15);
  (*(v8 + 32))(v17, v10, a4);
  swift_getWitnessTable(protocol conformance descriptor for _ContextMenuTableRowModifier<A>, v13, v19);
  TableRowContent.modifier<A>(_:)(v17, a3, v13);
  return (*(v14 + 8))(v17, v13);
}

uint64_t TableRowContent.contextMenu<A, B>(menuItems:preview:)@<X0>(uint64_t (*a1)(double)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v32 = a7;
  v30 = a8;
  v31 = a4;
  v28 = a3;
  v29 = a2;
  v27 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = v17;
  v33[1] = v18;
  v33[2] = a9;
  v33[3] = a10;
  v19 = type metadata accessor for _ContextMenuPreviewTableRowModifier(0, v33);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v26 - v22;
  v24 = v27(v21);
  v29(v24);
  _ContextMenuPreviewTableRowModifier.init(menuItems:preview:)(v16, v13, a5, a6, a9, a10, v23);
  swift_getWitnessTable(protocol conformance descriptor for _ContextMenuPreviewTableRowModifier<A, B>, v19);
  TableRowContent.modifier<A>(_:)(v23, v31, v19);
  return (*(v20 + 8))(v23, v19);
}

uint64_t _ContextMenuPreviewTableRowModifier.init(menuItems:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for _ContextMenuPreviewTableRowModifier(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t _ContextMenuTableRowModifier.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v4 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v4);
  v5 = *(a1 + 24);
  View.styleContext<A>(_:)();
  v7[0] = v5;
  v7[1] = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  swift_getWitnessTable(MEMORY[0x1E697E858], v4, v7);
  result = AnyView.init<A>(_:)();
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t _ContextMenuPreviewTableRowModifier.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v9 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(a1 + 32);
  View.styleContext<A>(_:)();
  v11 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v14[0] = v10;
  v14[1] = v11;
  swift_getWitnessTable(MEMORY[0x1E697E858], v9, v14);
  v12 = AnyView.init<A>(_:)();
  (*(v6 + 16))(v8, v2 + *(a1 + 52), v5);
  result = AnyView.init<A>(_:)();
  *a2 = v12;
  a2[1] = result;
  return result;
}

uint64_t static AccessibilityRotorContent._makeEntries(content:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  return static AccessibilityRotorContent._makeEntries(content:inputs:)(a1, a2, a3, a4);
}

{
  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

uint64_t static AccessibilityRotorContent._entryCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v8[0] = a1[2];
  *(v8 + 12) = *(a1 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(v7, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t specialized closure #1 in static AccessibilityRotorContent._makeEntries(content:inputs:)(int a1, uint64_t a2)
{
  v2 = MEMORY[0x1E69E73E0];
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for Map<Never, Never>(0, &lazy cache variable for type metadata for Map<Never, Never>, v2, v2, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<Never, Never> and conformance Map<A, B>();
  Attribute.init<A>(body:value:flags:update:)();

  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

uint64_t closure #1 in static AccessibilityRotorContent._makeEntries(content:inputs:)(int a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14[1] = a1;
  type metadata accessor for _GraphValue();
  v19 = a3;
  v20 = a4;
  LODWORD(v21) = _GraphValue.value.getter();
  *(&v21 + 1) = partial apply for closure #1 in Attribute.subscript.getter;
  *&v22 = swift_getKeyPath();
  v16 = AssociatedTypeWitness;
  v17 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E698D3A8], v17);
  v9 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v21, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v15, v17, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

  _GraphValue.init(_:)();
  v11 = a2[1];
  v21 = *a2;
  v22 = v11;
  v23[0] = a2[2];
  *(v23 + 12) = *(a2 + 44);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 24))(v14, &v21, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t protocol witness for static AccessibilityRotorContent._makeEntries(content:inputs:) in conformance Never(int *a1, _OWORD *a2)
{
  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

uint64_t AccessibilityOptionalRotorContent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t static AccessibilityTupleRotorContent.visitTypes(_:)(void (*a1)(uint64_t, __int128 *), uint64_t a2, uint64_t a3)
{
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA025AccessibilityRotorContentD0V_Tt1g5(a3, &v9);
  v4 = *(v9 + 16);
  if (v4)
  {
    v5 = (v9 + 40);
    do
    {
      v6 = *v5;
      v5 = (v5 + 24);
      v7 = AGTupleElementOffset();
      v9 = v6;
      a1(v7, &v9);
      --v4;
    }

    while (v4);
  }
}

uint64_t static AccessibilityTupleRotorContent._entryCount(inputs:)(_OWORD *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  v5 = *a1;
  v4 = a1[1];
  v16[0] = a1[2];
  *(v16 + 12) = *(a1 + 44);
  v12 = v5;
  v13 = v4;
  *v14 = a1[2];
  *&v14[12] = *(a1 + 44);
  *&v14[32] = 0;
  v14[40] = 1;
  v11[2] = a2;
  v11[3] = &v12;
  outlined init with copy of _AccessibilityRotorEntryInputs(v15, v17);
  static AccessibilityTupleRotorContent.visitTypes(_:)(partial apply for closure #1 in static AccessibilityTupleRotorContent._entryCount(inputs:), v11, a2);
  v6 = *&v14[32];
  v17[2] = *v14;
  v18[0] = *&v14[16];
  *(v18 + 9) = *&v14[25];
  v17[0] = v12;
  v17[1] = v13;
  v9 = type metadata accessor for AccessibilityTupleRotorContent.CountEntries(0, a2, v7, v8);
  (*(*(v9 - 8) + 8))(v17, v9);
  return v6;
}

void partial apply for closure #1 in static AccessibilityTupleRotorContent._entryCount(inputs:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = type metadata accessor for AccessibilityTupleRotorContent.CountEntries(0, *(v4 + 16), a3, a4);
  AccessibilityTupleRotorContent.CountEntries.visit<A>(type:)(v5, v7, v5, v6);
}

void AccessibilityTupleRotorContent.CountEntries.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(v4 + 72) & 1) != 0 || (v7 = v5[1], v19[0] = *v5, v19[1] = v7, v9 = *v5, v8 = v5[1], v20[0] = v5[2], *(v20 + 12) = *(v5 + 44), v10 = *(v5 + 8), v16 = v9, v17 = v8, v18[0] = v5[2], *(v18 + 12) = *(v5 + 44), v11 = *(a4 + 32), v12 = a4, outlined init with copy of _AccessibilityRotorEntryInputs(v19, &v15), v13 = v11(&v16, a3, v12), LOBYTE(v12) = v14, v21[0] = v16, v21[1] = v17, v22[0] = v18[0], *(v22 + 12) = *(v18 + 12), outlined destroy of _AccessibilityRotorEntryInputs(v21), (v12))
  {
    *(v5 + 8) = 0;
    *(v5 + 72) = 1;
  }

  else if (__OFADD__(v10, v13))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 8) = v10 + v13;
    *(v5 + 72) = 0;
  }
}

uint64_t static AccessibilityTupleRotorContent._makeEntries(content:inputs:)@<X0>(int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v36[0] = *a2;
  v36[1] = v6;
  v8 = *a2;
  v7 = a2[1];
  v37[0] = a2[2];
  *(v37 + 12) = *(a2 + 44);
  *&v34[8] = v8;
  v9 = *a1;
  *&v34[24] = v7;
  *&v34[40] = a2[2];
  *&v34[52] = *(a2 + 44);
  *v34 = v9;
  v10 = MEMORY[0x1E69E7CC0];
  *&v34[72] = MEMORY[0x1E69E7CC0];
  v35 = 0;
  v31[2] = a3;
  v31[3] = v34;
  outlined init with copy of _AccessibilityRotorEntryInputs(v36, v32);
  v11 = static AccessibilityTupleRotorContent.visitTypes(_:)(partial apply for closure #1 in static AccessibilityTupleRotorContent._makeEntries(content:inputs:), v31, a3);
  v12 = *&v34[72];
  v13 = *(*&v34[72] + 16);
  if (v13)
  {
    *&v32[0] = v10;
    v11 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v10 = *&v32[0];
    v14 = (v12 + 32);
    v15 = *(*&v32[0] + 16);
    do
    {
      v17 = *v14++;
      v16 = v17;
      *&v32[0] = v10;
      v18 = *(v10 + 24);
      if (v15 >= v18 >> 1)
      {
        v11 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v15 + 1, 1);
        v10 = *&v32[0];
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 4 * v15++ + 32) = v16;
      --v13;
    }

    while (v13);
  }

  *&v32[0] = v10;
  MEMORY[0x1EEE9AC00](v11);
  v28 = type metadata accessor for AccessibilityTupleRotorContent.MergeLists(0, a3, v19, v20);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityTupleRotorContent<A>.MergeLists, v28);
  type metadata accessor for Attribute<AccessibilityRotorEntryList>(0, &lazy cache variable for type metadata for Attribute<AccessibilityRotorEntryList>, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v32, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_16, &v27, v28, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);

  *a4 = v30;
  v32[2] = *&v34[32];
  v32[3] = *&v34[48];
  v32[4] = *&v34[64];
  v33 = v35;
  v32[0] = *v34;
  v32[1] = *&v34[16];
  Lists = type metadata accessor for AccessibilityTupleRotorContent.MakeLists(0, a3, v23, v24);
  return (*(*(Lists - 8) + 8))(v32, Lists);
}

char *partial apply for closure #1 in static AccessibilityTupleRotorContent._makeEntries(content:inputs:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *a2;
  v7 = a2[1];
  *(*(v4 + 24) + 80) = a1;
  Lists = type metadata accessor for AccessibilityTupleRotorContent.MakeLists(0, v5, a3, a4);
  return AccessibilityTupleRotorContent.MakeLists.visit<A>(type:)(v6, Lists, v6, v7);
}

char *AccessibilityTupleRotorContent.MakeLists.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for AccessibilityTupleRotorContent(255, *(a2 + 16), a3, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v8 = *(v4 + 24);
  v21[0] = *(v4 + 8);
  v21[1] = v8;
  v22[0] = *(v4 + 40);
  *(v22 + 12) = *(v4 + 52);
  v9 = *(v4 + 24);
  v16 = *(v4 + 8);
  v17 = v9;
  v18[0] = *(v4 + 40);
  *(v18 + 12) = *(v4 + 52);
  v10 = *(a4 + 24);
  outlined init with copy of _AccessibilityRotorEntryInputs(v21, v23);
  v10(&v20, v19, &v16, a3, a4);
  v23[0] = v16;
  v23[1] = v17;
  v24[0] = v18[0];
  *(v24 + 12) = *(v18 + 12);
  outlined destroy of _AccessibilityRotorEntryInputs(v23);
  v11 = v20;
  v12 = *(v4 + 72);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    v12 = result;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 2) = v15 + 1;
  *&v12[4 * v15 + 32] = v11;
  *(v5 + 72) = v12;
  return result;
}

uint64_t AccessibilityTupleRotorContent.MergeLists.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v14;
    v6 = a1 + 32;
    do
    {
      v6 += 4;
      Value = AGGraphGetValue();
      outlined init with copy of DropInfo(Value, &v15);
      v9 = *(v14 + 16);
      v8 = *(v14 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 40 * v9;
      v11 = v15;
      v12 = v16;
      *(v10 + 64) = v17;
      *(v10 + 32) = v11;
      *(v10 + 48) = v12;
      --v3;
    }

    while (v3);
  }

  *(&v16 + 1) = &unk_1EFFBDAB8;
  v17 = &protocol witness table for CombineGenerator;
  *&v15 = v4;
  return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v15, a2);
}

double protocol witness for static TupleDescriptor.typeCache.getter in conformance AccessibilityRotorContentDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance AccessibilityRotorContentDescriptor(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AccessibilityRotorContentDescriptor.typeCache = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance AccessibilityRotorContentDescriptor(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance ViewGraphBridgePropertiesAreInput;
}

uint64_t static ForEach<>._makeEntries(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>)
{
  v24 = a9;
  v32 = *MEMORY[0x1E69E9840];
  v15 = *a1;
  v16 = a2[1];
  v27 = *a2;
  v28 = v16;
  v29[0] = a2[2];
  *(v29 + 12) = *(a2 + 44);
  v25 = v15;
  *v30 = a3;
  type metadata accessor for ForEach();
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  *&v30[4] = v27;
  *&v30[20] = v28;
  *&v30[36] = v29[0];
  *&v30[48] = *(v29 + 12);
  v18 = AGSubgraphGetCurrent();
  if (!v18)
  {
    __break(1u);
  }

  *&v26[4] = *v30;
  *&v26[20] = *&v30[16];
  *&v26[36] = *&v30[32];
  *&v26[52] = *&v30[48];
  *v26 = v17;
  *&v26[72] = v18;
  MEMORY[0x1EEE9AC00](v18);
  *v30 = a3;
  *&v30[8] = a4;
  *&v30[16] = a5;
  *&v30[24] = a6;
  *&v30[32] = a7;
  *&v30[40] = a8;
  List = type metadata accessor for ForEach<>.MakeList(0, v30);
  v23[2] = List;
  v23[3] = swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.MakeList, List);
  outlined init with copy of _AccessibilityRotorEntryInputs(&v27, v30);
  type metadata accessor for Attribute<AccessibilityRotorEntryList>(0, &lazy cache variable for type metadata for Attribute<AccessibilityRotorEntryList>, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v26, closure #1 in Attribute.init<A>(_:)partial apply, v23, List, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  *&v30[32] = *&v26[32];
  *&v30[48] = *&v26[48];
  v31 = *&v26[64];
  *v30 = *v26;
  *&v30[16] = *&v26[16];
  result = (*(*(List - 8) + 8))(v30, List);
  *v24 = v25;
  return result;
}