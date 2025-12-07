uint64_t sub_10018D25C(uint64_t (*a1)(void **, void **), char *a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_1001EFED4(v6);
  }

  sub_10018D2F4(a1, a2);
  return sub_100217054();
}

void sub_10018D2F4(uint64_t (*a1)(void **, void **), char *a2)
{
  v5 = *(v2 + 8);
  v6 = sub_100217164(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
        v9 = sub_100216B54();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v20 = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v21 = v8;
      v11 = v9;
      sub_10018D518(&v20, v22, v2, a1, a2, v7);
      *(v10 + 16) = 0;
      v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22[0], v22[1], v23, v24, v25, v26, v27;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_10018D418(0, v5, 1, a1);
  }
}

void sub_10018D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_10018D518(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(void **, void **), char *a5, char *a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v116 = a6;
  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  v115 = a3;
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v118 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v123 = *(*v9 + v11);
      v15 = v123;
      v124 = v14;
      v16 = v14;
      v17 = v15;
      LODWORD(v120) = a4(&v124, &v123);
      if (v6)
      {
        v12, v18, v19, v20, v21, v22, v23, v24, v113, v114, v115, v116, v117, v118, a1, v120, v121, a4;

        return;
      }

      v121 = a5;

      v114 = (v118 - 1);
      v25 = 8 * v11;
      v26 = &v7[v11 + 2];
      v117 = v11;
      while (v118 - 2 != v11)
      {
        v27 = *v26;
        v123 = *(v26 - 1);
        v28 = v123;
        v124 = v27;
        v29 = v27;
        v7 = v28;
        LODWORD(v28) = a4(&v124, &v123);

        ++v11;
        ++v26;
        if ((v120 ^ v28))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v118 - 1;
      v13 = v118;
LABEL_11:
      v9 = v115;
      if (v120)
      {
        if (v13 < v117)
        {
          goto LABEL_124;
        }

        v30 = v117 <= v11;
        v11 = v117;
        if (v30)
        {
          v31 = 8 * v13 - 8;
          v32 = v13;
          v33 = v117;
          do
          {
            if (v33 != --v32)
            {
              v34 = *v115;
              if (!*v115)
              {
                goto LABEL_128;
              }

              v35 = *&v34[v25];
              *&v34[v25] = *&v34[v31];
              *&v34[v31] = v35;
            }

            ++v33;
            v31 -= 8;
            v25 += 8;
          }

          while (v33 < v32);
        }
      }

      else
      {
        v11 = v117;
      }
    }

    v36 = v9[1];
    if (v13 >= v36)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= v116)
    {
      goto LABEL_133;
    }

    v37 = &v116[v11];
    if (__OFADD__(v11, v116))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v37 >= v36)
    {
      v37 = v9[1];
    }

    if (v37 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v37)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v91 = a5;
      v92 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v117 = v11;
      v93 = v11 - v13;
      v114 = v37;
      do
      {
        v120 = v7;
        v121 = v13;
        v94 = v92[v13];
        v118 = v93;
        do
        {
          v123 = *v7;
          v95 = v123;
          v124 = v94;
          v96 = v94;
          v97 = v95;
          v98 = a4(&v124, &v123);
          if (v6)
          {
            v12, v99, v100, v101, v102, v103, v104, v105, v113, v114, v115, v116, v117, v118, a1, v120, v121, a4;

            return;
          }

          v106 = v98;

          if ((v106 & 1) == 0)
          {
            break;
          }

          if (!v92)
          {
            goto LABEL_126;
          }

          v107 = *v7;
          v94 = v7[1];
          *v7 = v94;
          v7[1] = v107;
          --v7;
        }

        while (!__CFADD__(v93++, 1));
        v13 = (v121 + 1);
        v7 = v120 + 1;
        v93 = v118 - 1;
      }

      while (v121 + 1 != v114);
      v13 = v114;
      a5 = v91;
      v9 = v115;
      v11 = v117;
      if (v114 < v117)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_100182E9C(0, *(v12 + 2) + 1, 1, v12);
    }

    v39 = *(v12 + 2);
    v38 = *(v12 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v12 = sub_100182E9C((v38 > 1), v39 + 1, 1, v12);
    }

    *(v12 + 2) = v40;
    v41 = &v12[16 * v39];
    *(v41 + 4) = v11;
    *(v41 + 5) = v13;
    v121 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v39)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v121;
    if (v121 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v42 = v40 - 1;
    if (v40 >= 4)
    {
      v47 = &v12[16 * v40 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_106;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_107;
      }

      v54 = &v12[16 * v40];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_109;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_112;
      }

      if (v58 >= v50)
      {
        v76 = &v12[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_118;
        }

        if (v45 < v79)
        {
          v42 = v40 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v40 == 3)
    {
      v43 = *(v12 + 4);
      v44 = *(v12 + 5);
      v53 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      v46 = v53;
LABEL_49:
      if (v46)
      {
        goto LABEL_108;
      }

      v59 = &v12[16 * v40];
      v61 = *v59;
      v60 = *(v59 + 1);
      v62 = __OFSUB__(v60, v61);
      v63 = v60 - v61;
      v64 = v62;
      if (v62)
      {
        goto LABEL_111;
      }

      v65 = &v12[16 * v42 + 32];
      v67 = *v65;
      v66 = *(v65 + 1);
      v53 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v53)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v63, v68))
      {
        goto LABEL_115;
      }

      if (v63 + v68 >= v45)
      {
        if (v45 < v68)
        {
          v42 = v40 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v69 = &v12[16 * v40];
    v71 = *v69;
    v70 = *(v69 + 1);
    v53 = __OFSUB__(v70, v71);
    v63 = v70 - v71;
    v64 = v53;
LABEL_63:
    if (v64)
    {
      goto LABEL_110;
    }

    v72 = &v12[16 * v42];
    v74 = *(v72 + 4);
    v73 = *(v72 + 5);
    v53 = __OFSUB__(v73, v74);
    v75 = v73 - v74;
    if (v53)
    {
      goto LABEL_113;
    }

    if (v75 < v63)
    {
      goto LABEL_3;
    }

LABEL_70:
    v80 = v42 - 1;
    if (v42 - 1 >= v40)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v81 = *&v12[16 * v80 + 32];
    v82 = *&v12[16 * v42 + 40];
    sub_10018DBE4(*v9 + v81, *v9 + *&v12[16 * v42 + 32], *v9 + v82, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v82 < v81)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1001EFD00(v12);
    }

    if (v80 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v90 = &v12[16 * v80];
    *(v90 + 4) = v81;
    *(v90 + 5) = v82;
    v125 = v12;
    sub_1001EFC74(v42);
    v12 = v125;
    v40 = *(v125 + 2);
    if (v40 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  v12 = sub_1001EFD00(v12);
LABEL_92:
  v125 = v12;
  v109 = *(v12 + 2);
  if (v109 < 2)
  {
LABEL_100:
    v12, v83, v84, v85, v86, v87, v88, v89, v113, v114, v115, v116, v117, v118, a1, v120, v121, a4;
  }

  else
  {
    while (*v7)
    {
      v110 = *&v12[16 * v109];
      v111 = *&v12[16 * v109 + 24];
      sub_10018DBE4(*v7 + v110, *v7 + *&v12[16 * v109 + 16], *v7 + v111, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v111 < v110)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1001EFD00(v12);
      }

      if (v109 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v112 = &v12[16 * v109];
      *v112 = v110;
      *(v112 + 1) = v111;
      v125 = v12;
      sub_1001EFC74(v109 - 1);
      v12 = v125;
      v109 = *(v125 + 2);
      if (v109 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_10018DBE4(id *__src, id *a2, id *a3, unint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = v52 - v17 + 7;
        if (v52 - v17 >= 0)
        {
          v43 = v52 - v17;
        }

        if (v7 < v17 || v7 >= (v17 + (v43 & 0xFFFFFFFFFFFFFFF8)) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = v17 + 1;
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = v52 + v25;
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = v5 + 1;
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= (v14 + (v44 & 0xFFFFFFFFFFFFFFF8)) || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

uint64_t sub_10018DFAC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_100216F24();

    if (v6)
    {
      v14 = sub_10018E40C(v4, v5, v8, v9, v10, v11, v12, v13);
      v3, v15, v16, v17, v18, v19, v20, v21, v33, v34, v36, v37, v38, v39, v40, v41, v42, v43;
      return v14;
    }

    v3, v7, v8, v9, v10, v11, v12, v13, v33, v34, v36, v37, v38, v39, v40, v41, v42, v43;
    return 0;
  }

  v23 = v1;
  sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
  v24 = sub_100216DB4(*(v3 + 40));
  v25 = -1 << *(v3 + 32);
  v26 = v24 & ~v25;
  if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    return 0;
  }

  v27 = ~v25;
  while (1)
  {
    v28 = *(*(v3 + 48) + 8 * v26);
    v29 = sub_100216DC4();

    if (v29)
    {
      break;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  v35 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10018C604(&qword_10029D838, &qword_100226630);
    v31 = v35;
  }

  v32 = *(*(v31 + 48) + 8 * v26);
  sub_10018E594(v26);
  result = v32;
  *v23 = v35;
  return result;
}

uint64_t sub_10018E154(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_100217264();
  sub_1002169C4();
  v6 = sub_100217284();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1002171A4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10018C1F0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10018E734(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_10018E290(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  *v8, a2, a3, a4, a5, a6, a7, a8, v29, v30, v32, v33, v34, v35, v36, v37, v38, v39;
  v10 = sub_100216ED4();
  v11 = swift_unknownObjectRetain();
  v12 = sub_10018BA5C(v11, v10, &qword_10029D908, &unk_1002266A8, type metadata accessor for BottleMO);
  v31 = v12;
  v13 = *(v12 + 40);

  v14 = sub_100216DB4(v13);
  v22 = -1 << *(v12 + 32);
  v23 = v14 & ~v22;
  if ((*(v12 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v24 = ~v22;
    type metadata accessor for BottleMO();
    while (1)
    {
      v25 = *(*(v12 + 48) + 8 * v23);
      v26 = sub_100216DC4();

      if (v26)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v12 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12, v15, v16, v17, v18, v19, v20, v21;
    __break(1u);
  }

  v12, v15, v16, v17, v18, v19, v20, v21;
  v27 = *(*(v12 + 48) + 8 * v23);
  sub_10018E594(v23);
  result = sub_100216DC4();
  if (result)
  {
    *v9 = v31;
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018E40C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  *v8, a2, a3, a4, a5, a6, a7, a8, v29, v30, v32, v33, v34, v35, v36, v37, v38, v39;
  v10 = sub_100216ED4();
  v11 = swift_unknownObjectRetain();
  v12 = sub_10018B85C(v11, v10, &qword_10029D838, &qword_100226630, &qword_100297D68, TPPolicyVersion_ptr);
  v31 = v12;
  v13 = *(v12 + 40);

  v14 = sub_100216DB4(v13);
  v22 = -1 << *(v12 + 32);
  v23 = v14 & ~v22;
  if ((*(v12 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v24 = ~v22;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    while (1)
    {
      v25 = *(*(v12 + 48) + 8 * v23);
      v26 = sub_100216DC4();

      if (v26)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v12 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12, v15, v16, v17, v18, v19, v20, v21;
    __break(1u);
  }

  v12, v15, v16, v17, v18, v19, v20, v21;
  v27 = *(*(v12 + 48) + 8 * v23);
  sub_10018E594(v23);
  result = sub_100216DC4();
  if (result)
  {
    *v9 = v31;
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10018E594(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_100216E54();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v16 = (v8 + 1) & v7;
      do
      {
        v17 = *(v3 + 40);
        v18 = *(*(v3 + 48) + 8 * v6);
        v19 = sub_100216DB4(v17);

        v20 = v19 & v7;
        if (v2 >= v16)
        {
          if (v20 >= v16 && v2 >= v20)
          {
LABEL_16:
            v23 = *(v3 + 48);
            v24 = (v23 + 8 * v2);
            v25 = (v23 + 8 * v6);
            if (v2 != v6 || v24 >= v25 + 1)
            {
              *v24 = *v25;
              v2 = v6;
            }
          }
        }

        else if (v20 >= v16 || v2 >= v20)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    v3, v9, v10, v11, v12, v13, v14, v15;
    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v26 = *(v3 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v28;
    ++*(v3 + 36);
  }
}

void sub_10018E734(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_100216E54();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v16 = (v8 + 1) & v7;
      do
      {
        v17 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_100217264();

        sub_1002169C4();
        v18 = sub_100217284();
        v17, v19, v20, v21, v22, v23, v24, v25, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42;
        v26 = v18 & v7;
        if (v2 >= v16)
        {
          if (v26 < v16)
          {
            goto LABEL_5;
          }
        }

        else if (v26 >= v16)
        {
          goto LABEL_11;
        }

        if (v2 >= v26)
        {
LABEL_11:
          v27 = *(v3 + 48);
          v28 = (v27 + 16 * v2);
          v29 = (v27 + 16 * v6);
          if (v2 != v6 || v28 >= v29 + 1)
          {
            *v28 = *v29;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    v3, v9, v10, v11, v12, v13, v14, v15;
    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v30 = *(v3 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v32;
    ++*(v3 + 36);
  }
}

void sub_10018E8F8(_TtC18TrustedPeersHelper6Client *result)
{
  if (*(*v1 + 16))
  {
    containerMap = result[1].containerMap;
    v4 = 1 << result[1]._TtCs12_SwiftObject_opaque[0];
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *result[1].containerMap;
    v7 = (v4 + 63) >> 6;

    v15 = 0;
    if (v6)
    {
      while (1)
      {
        v16 = v15;
LABEL_10:
        v17 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v18 = (*result[1].endpoint + ((v16 << 10) | (16 * v17)));
        v19 = *v18;
        v20 = v18[1];

        sub_10018E154(v19, v20);
        v22 = v21;
        v20, v21, v23, v24, v25, v26, v27, v28, v36, v38, v40, v42, v44, v46, v48, v50, vars0, vars8;
        v22, v29, v30, v31, v32, v33, v34, v35, v37, v39, v41, v43, v45, v47, v49, v51, vars0a, vars8a;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return;
      }

      if (v16 >= v7)
      {
        break;
      }

      v6 = *&containerMap[8 * v16];
      ++v15;
      if (v6)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    result, v8, v9, v10, v11, v12, v13, v14;
  }
}

_TtC18TrustedPeersHelper6Client *sub_10018EA24(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v11 = a2;
  if (!*a2->endpoint)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return &_swiftEmptySetSingleton;
  }

  v109 = 0;
  v13 = (a1 + 56);
  v12 = *(a1 + 56);
  v14 = -1;
  v15 = -1 << *(a1 + 32);
  v113 = ~v15;
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  v18 = (63 - v15) >> 6;
  containerMap = a2[1].containerMap;

  v24 = 0;
  v115 = v19;
  if (v17)
  {
LABEL_11:
    while (1)
    {
      v27 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v28 = v19[6];
      v116 = v24;
      v29 = (v28 + ((v24 << 10) | (16 * v27)));
      v31 = *v29;
      v30 = v29[1];
      sub_100217264();

      sub_1002169C4();
      v32 = sub_100217284();
      v40 = -1 << v11[1]._TtCs12_SwiftObject_opaque[0];
      v8 = v32 & ~v40;
      v14 = v8 >> 6;
      v10 = 1 << v8;
      if (((1 << v8) & *&containerMap[8 * (v8 >> 6)]) != 0)
      {
        break;
      }

LABEL_19:
      v30, v33, v34, v35, v36, v37, v38, v39, v109, v110, v111, v112, v113, v114, v115, v116, containerMap, v118;
      v19 = v115;
      v24 = v116;
      v14 = -1;
      if (!v17)
      {
        goto LABEL_6;
      }
    }

    v9 = ~v40;
    while (1)
    {
      v41 = (*v11[1].endpoint + 16 * v8);
      v33 = v41[1];
      v42 = *v41 == v31 && v33 == v30;
      if (v42 || (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      v14 = v8 >> 6;
      v10 = 1 << v8;
      if (((1 << v8) & *&containerMap[8 * (v8 >> 6)]) == 0)
      {
        goto LABEL_19;
      }
    }

    v9 = v115;
    v43 = v116;
    v121 = v113;
    v122 = v116;
    v123 = v17;
    v119 = v115;
    v120 = v13;
    v30, v33, v34, v35, v36, v37, v38, v39, v109, v110, v111, v112, v113, v114, v115, v116, containerMap, v118;
    v46 = v11[1]._TtCs12_SwiftObject_opaque[0];
    v110 = ((1 << v46) + 63) >> 6;
    v20 = (8 * v110);
    if ((v46 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_6:
    v25 = v24;
    while (1)
    {
      v26 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v18)
      {
        v79 = v13;
        v80 = v113;
        v81 = 0;
        goto LABEL_57;
      }

      v17 = *&v13[8 * v26];
      ++v25;
      if (v17)
      {
        v24 = v26;
        goto LABEL_11;
      }
    }

LABEL_60:
    __break(1u);
  }

  v83 = v20;

  if (swift_stdlib_isStackAllocationSafe())
  {
    v11, v84, v85, v86, v87, v88, v89, v90;
    v43 = v116;
LABEL_22:
    v111 = &v109;
    __chkstk_darwin(v44, v45);
    v8 = &v109 - ((v47 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v8, containerMap, v47);
    v52 = *(v8 + 8 * v14) & ~v10;
    v53 = *v11->endpoint;
    v114 = v8;
    *(v8 + 8 * v14) = v52;
    v54 = (v53 - 1);
LABEL_23:
    v112 = v54;
    if (v17)
    {
      goto LABEL_33;
    }

LABEL_28:
    v58 = v43;
    while (1)
    {
      v59 = (v58 + 1);
      if (__OFADD__(v58, 1))
      {
        __break(1u);
        goto LABEL_60;
      }

      if (v59 >= v18)
      {
        break;
      }

      v17 = *&v13[8 * v59];
      ++v58;
      if (v17)
      {
        v43 = v59;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v60 = __clz(__rbit64(v17));
            v17 &= v17 - 1;
            v61 = *(v9 + 48);
            v116 = v43;
            v62 = (v61 + ((v43 << 10) | (16 * v60)));
            v63 = *v62;
            v10 = v62[1];
            sub_100217264();

            sub_1002169C4();
            v64 = sub_100217284();
            v72 = -1 << v11[1]._TtCs12_SwiftObject_opaque[0];
            v14 = v64 & ~v72;
            v8 = v14 >> 6;
            v73 = 1 << v14;
            if (((1 << v14) & *&containerMap[8 * (v14 >> 6)]) != 0)
            {
              break;
            }

LABEL_45:
            v10, v65, v66, v67, v68, v69, v70, v71, v109, v110, v111, v112, v113, v114, v115, v116, containerMap, v118;
            v43 = v116;
            if (!v17)
            {
              goto LABEL_28;
            }
          }

          v74 = (*v11[1].endpoint + 16 * v14);
          v65 = v74[1];
          if (*v74 != v63 || v65 != v10)
          {
            v76 = ~v72;
            while ((sub_1002171A4() & 1) == 0)
            {
              v14 = (v14 + 1) & v76;
              v8 = v14 >> 6;
              v73 = 1 << v14;
              if (((1 << v14) & *&containerMap[8 * (v14 >> 6)]) == 0)
              {
                v9 = v115;
                goto LABEL_45;
              }

              v77 = (*v11[1].endpoint + 16 * v14);
              v65 = v77[1];
              if (*v77 == v63 && v65 == v10)
              {
                break;
              }
            }
          }

          v10, v65, v66, v67, v68, v69, v70, v71, v109, v110, v111, v112, v113, v114, v115, v116, containerMap, v118;
          v9 = v115;
          v57 = v114[v8];
          v114[v8] = v57 & ~v73;
          v42 = (v57 & v73) == 0;
          v43 = v116;
          if (!v42)
          {
            break;
          }

          if (!v17)
          {
            goto LABEL_28;
          }
        }

        v54 = v112 - 1;
        if (__OFSUB__(v112, 1))
        {
          __break(1u);
        }

        if (v112 == 1)
        {
          v11, v55, v20, v56, v48, v49, v50, v51;
          v11 = &_swiftEmptySetSingleton;
          goto LABEL_54;
        }

        goto LABEL_23;
      }
    }

    if (v18 <= v43 + 1)
    {
      v78 = v43 + 1;
    }

    else
    {
      v78 = v18;
    }

    v43 = v78 - 1;
    v11 = sub_10018AB04(v114, v110, v112, v11, v48, v49, v50, v51);
    v17 = 0;
LABEL_54:
    v19 = v9;
    v79 = v13;
    v80 = v113;
    v24 = v43;
    v81 = v17;
LABEL_57:
    sub_10000D778(v19, v79, v80, v24, v81, v21, v22, v23);
    return v11;
  }

  v91 = swift_slowAlloc();
  memcpy(v91, containerMap, v83);
  v92 = v109;
  sub_10018F314(v91, v110, v11, v8, &v119);
  v94 = v93;
  v11, v95, v96, v97, v98, v99, v100, v101;
  if (!v92)
  {
    v11, v102, v103, v104, v105, v106, v107, v108;

    v9 = v119;
    v13 = v120;
    v43 = v122;
    v113 = v121;
    v11 = v94;
    v17 = v123;
    goto LABEL_54;
  }

  __break(1u);
  return result;
}

uint64_t sub_10018EF94(uint64_t isStackAllocationSafe, _TtC18TrustedPeersHelper6Client *a2)
{
  v3 = isStackAllocationSafe;
  v32 = isStackAllocationSafe;
  v4 = a2[1]._TtCs12_SwiftObject_opaque[0];
  v5 = v4 & 0x3F;
  v33[3] = &v32;
  v33[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = (v6 >> 6);
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v21 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v21, (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe, v8);
    v10 = &v31 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    sub_10018F134(v10, v7, v3, a2);
    v12 = v11;
    a2, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    v22 = v21;
    v23 = swift_slowAlloc();
    bzero(v23, v22);
    sub_1001AB81C(v23, v7, v33);
    v12 = v33[0];
    a2, v24, v25, v26, v27, v28, v29, v30;
  }

  return v12;
}

void sub_10018F134(void *result, void *a2, uint64_t a3, _TtC18TrustedPeersHelper6Client *a4)
{
  v35 = a2;
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v40 = (a3 + 32);
  containerMap = a4[1].containerMap;
  v38 = result;
  v39 = v7;
  while (2)
  {
    v37 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = &v40[16 * v6];
          v12 = *v10;
          v11 = *(v10 + 1);
          sub_100217264();

          sub_1002169C4();
          v13 = sub_100217284();
          v21 = -1 << a4[1]._TtCs12_SwiftObject_opaque[0];
          v22 = v13 & ~v21;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *&containerMap[8 * (v22 >> 6)]) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;
          v11, v14, v15, v16, v17, v18, v19, v20, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43;
          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v25 = (*a4[1].endpoint + 16 * v22);
        v14 = v25[1];
        if (*v25 != v12 || v14 != v11)
        {
          v27 = ~v21;
          while ((sub_1002171A4() & 1) == 0)
          {
            v22 = (v22 + 1) & v27;
            v23 = v22 >> 6;
            v24 = 1 << v22;
            if (((1 << v22) & *&containerMap[8 * (v22 >> 6)]) == 0)
            {
              v7 = v39;
              goto LABEL_5;
            }

            v28 = (*a4[1].endpoint + 16 * v22);
            v14 = v28[1];
            if (*v28 == v12 && v14 == v11)
            {
              break;
            }
          }
        }

        v11, v14, v15, v16, v17, v18, v19, v20, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43;
        v29 = *(v38 + v23);
        *(v38 + v23) = v29 | v24;
        if ((v29 & v24) == 0)
        {
          break;
        }

        v7 = v39;
        v6 = v9;
        if (v9 == v39)
        {
          goto LABEL_24;
        }
      }

      v5 = v37 + 1;
      v7 = v39;
      v6 = v9;
      if (!__OFADD__(v37, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  sub_10018AB04(v38, v35, v37, a4, v30, v31, v32, v33);
}

void sub_10018F314(unint64_t *result, char *a2, _TtC18TrustedPeersHelper6Client *a3, unint64_t a4, void *a5)
{
  v40 = a2;
  v7 = *a3->endpoint;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = (v7 - 1);
  containerMap = a3[1].containerMap;
  while (2)
  {
    v42 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v35 = v11 + 1;
          }

          else
          {
            v35 = (a5[2] + 64) >> 6;
          }

          a5[3] = v35 - 1;
          a5[4] = 0;

          sub_10018AB04(result, v40, v42, a3, v36, v37, v38, v39);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_100217264();

        sub_1002169C4();
        v19 = sub_100217284();
        v27 = -1 << a3[1]._TtCs12_SwiftObject_opaque[0];
        v28 = v19 & ~v27;
        v29 = v28 >> 6;
        v30 = 1 << v28;
        if (((1 << v28) & *&containerMap[8 * (v28 >> 6)]) != 0)
        {
          break;
        }

LABEL_21:
        v17, v20, v21, v22, v23, v24, v25, v26, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49;
      }

      v31 = (*a3[1].endpoint + 16 * v28);
      v20 = v31[1];
      if (*v31 != v18 || v20 != v17)
      {
        v33 = ~v27;
        while ((sub_1002171A4() & 1) == 0)
        {
          v28 = (v28 + 1) & v33;
          v29 = v28 >> 6;
          v30 = 1 << v28;
          if (((1 << v28) & *&containerMap[8 * (v28 >> 6)]) == 0)
          {
            goto LABEL_21;
          }

          v34 = (*a3[1].endpoint + 16 * v28);
          v20 = v34[1];
          if (*v34 == v18 && v20 == v17)
          {
            break;
          }
        }
      }

      v17, v20, v21, v22, v23, v24, v25, v26, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49;
      v10 = result[v29];
      result[v29] = v10 & ~v30;
    }

    while ((v10 & v30) == 0);
    v8 = v42 - 1;
    if (__OFSUB__(v42, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v42 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_10018F54C(unint64_t a1, char *a2, char a3)
{
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (v5 < 0)
      {
        v6 = *v3;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v29 = sub_100216EE4();
      type metadata accessor for BottleMO();

      swift_dynamicCast();
      sub_10018E290(v6, v30, v7, v8, v9, v10, v11, v12);

      v5, v13, v14, v15, v16, v17, v18, v19, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38;
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v3;
  if (a3)
  {
    v24 = v3;
    type metadata accessor for BottleMO();
    if (sub_100216EB4() != *(v23 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_100216EC4();
    swift_dynamicCast();
    a2 = v30;
    v3 = v30;
    v25 = sub_100216DB4(*(v23 + 40));
    v26 = -1 << *(v23 + 32);
    a1 = v25 & ~v26;
    if ((*(v23 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v27 = ~v26;
      do
      {
        v28 = *(*(v23 + 48) + 8 * a1);
        v3 = sub_100216DC4();

        if (v3)
        {
          goto LABEL_19;
        }

        a1 = (a1 + 1) & v27;
      }

      while (((*(v23 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(v23 + 32) <= a1)
  {
    goto LABEL_24;
  }

  if (((*(v23 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = v3;
  if (*(v23 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10018C604(&qword_10029D908, &unk_1002266A8);
  }

  sub_10018E594(a1);
  *v24 = v23;
}

void sub_10018F7B0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100216F04();
      a5(0);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    a5(0);
    if (sub_100216EB4() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_100216EC4();
    swift_dynamicCast();
    v5 = v16;
    v9 = sub_100216DB4(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = sub_100216DC4();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

void sub_10018F9BC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100216F04();
      sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    if (sub_100216EB4() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_100216EC4();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_100216DB4(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_100216DC4();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void *sub_10018FBE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_10018FD34(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_100216E84();
  sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
  sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
  result = sub_100216C04();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_100216F14())
      {
        goto LABEL_30;
      }

      sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

void *sub_10018FF74(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL sub_100190100(uint64_t a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != a2[2])
  {
    return 0;
  }

  v4 = 0;
  v89 = a2;
  v90 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  LODWORD(v91) = a1;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v92 = ((v8 - 1) & v8);
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v92 = ((v12 - 1) & v12);
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v3 + 56) + v13;
      v19 = *v17;
      v18 = *(v17 + 8);

      sub_100012558(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        return v20;
      }

      v21 = sub_100015A28(v15, v16);
      v23 = v22;
      v16, v22, v24, v25, v26, v27, v28, v29, v86, v87, v88, v89, v90, v91, v92, v94, v95, *(&v95 + 1);
      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v36 = *(v2 + 56) + 16 * v21;
      v38 = *v36;
      v37 = *(v36 + 8);
      v39 = v37 >> 62;
      v40 = v18 >> 62;
      if (v37 >> 62 == 3)
      {
        if (v38)
        {
          v41 = 0;
        }

        else
        {
          v41 = v37 == 0xC000000000000000;
        }

        v42 = 0;
        v43 = v41 && v18 >> 62 == 3;
        if (v43 && !v19 && v18 == 0xC000000000000000)
        {
          v44 = 0;
          v45 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v40 <= 1)
        {
LABEL_37:
          if (!v40)
          {
            v49 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v49) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v49 = v49;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else if (v39 > 1)
      {
        if (v39 == 2)
        {
          v51 = *v38->endpoint;
          v50 = *v38->containerMap;
          v48 = __OFSUB__(v50, v51);
          v42 = v50 - v51;
          if (!v48)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v42 = 0;
        if (v40 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v39)
      {
        LODWORD(v42) = HIDWORD(v38) - v38;
        if (__OFSUB__(HIDWORD(v38), v38))
        {
          goto LABEL_80;
        }

        v42 = v42;
        if (v40 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v42 = BYTE6(v37);
        if (v40 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v40 == 2)
      {
        break;
      }

      if (v42)
      {
        goto LABEL_74;
      }

LABEL_48:
      v44 = v19;
      v45 = v18;
LABEL_49:
      sub_100002BF0(v44, v45, v30, v31, v32, v33, v34, v35);
      v3 = v91;
      v8 = v93;
    }

    v47 = *v19->endpoint;
    v46 = *v19->containerMap;
    v48 = __OFSUB__(v46, v47);
    v49 = v46 - v47;
    if (v48)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v42 != v49)
    {
      break;
    }

    if (v42 < 1)
    {
      goto LABEL_48;
    }

    if (v39 > 1)
    {
      if (v39 != 2)
      {
        *(&v95 + 6) = 0;
        *&v95 = 0;
        sub_100012558(v38, v37);
        goto LABEL_64;
      }

      v87 = *v38->containerMap;
      v88 = *v38->endpoint;
      sub_100012558(v38, v37);
      v52 = sub_100216034();
      if (v52)
      {
        v53 = v52;
        v54 = sub_100216064();
        v55 = v88;
        if (__OFSUB__(v88, v54))
        {
          goto LABEL_84;
        }

        v86 = &v88[v53 - v54];
      }

      else
      {
        v86 = 0;
        v55 = v88;
      }

      if (__OFSUB__(v87, v55))
      {
        goto LABEL_83;
      }

      sub_100216054();
      v72 = v86;
LABEL_70:
      sub_10018257C(v72, v19, v18, &v95);
      sub_100002BF0(v38, v37, v73, v74, v75, v76, v77, v78);
      sub_100002BF0(v19, v18, v79, v80, v81, v82, v83, v84);
      v71 = v95;
      goto LABEL_71;
    }

    if (v39)
    {
      v88 = ((v38 >> 32) - v38);
      if (v38 >> 32 < v38)
      {
        goto LABEL_82;
      }

      sub_100012558(v38, v37);
      v56 = sub_100216034();
      if (v56)
      {
        v87 = v56;
        v57 = sub_100216064();
        if (__OFSUB__(v38, v57))
        {
          goto LABEL_85;
        }

        v58 = &v87[v38 - v57];
      }

      else
      {
        v58 = 0;
      }

      sub_100216054();
      v72 = v58;
      goto LABEL_70;
    }

    *&v95 = v38;
    WORD4(v95) = v37;
    BYTE10(v95) = BYTE2(v37);
    BYTE11(v95) = BYTE3(v37);
    BYTE12(v95) = BYTE4(v37);
    BYTE13(v95) = BYTE5(v37);
    sub_100012558(v38, v37);
LABEL_64:
    sub_10018257C(&v95, v19, v18, &v94 + 7);
    sub_100002BF0(v38, v37, v59, v60, v61, v62, v63, v64);
    sub_100002BF0(v19, v18, v65, v66, v67, v68, v69, v70);
    v71 = HIBYTE(v94);
LABEL_71:
    v2 = v89;
    v3 = v91;
    v8 = v93;
    if ((v71 & 1) == 0)
    {
      return v20;
    }
  }

LABEL_74:
  sub_100002BF0(v19, v18, v30, v31, v32, v33, v34, v35);
  return 0;
}

id sub_1001905FC(uint64_t a1, uint64_t a2)
{
  isa = sub_100216204().super.isa;
  v8 = 0;
  v4 = [v2 initForReadingFromData:isa error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_100216154();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_1001906BC(void *a1)
{
  v64 = sub_100019860(_swiftEmptyArrayStorage);
  v2 = [a1 bottleID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100216974();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_100108000(v4, v6, 0x4449656C74746F62, 0xE800000000000000);
  v7 = [a1 peerID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216974();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_100108000(v9, v11, 0x444972656570, 0xE600000000000000);
  v12 = [a1 escrowedSigningSPKI];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100216224();
    v16 = v15;

    v17 = sub_100216214(0);
    v19 = v18;
    sub_100002BF0(v14, v16, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  sub_100108000(v17, v19, 0x53676E696E676973, 0xEB00000000494B50);
  v26 = [a1 signatureUsingPeerKey];
  if (v26)
  {
    v27 = v26;
    v28 = sub_100216224();
    v30 = v29;

    v31 = sub_100216214(0);
    v33 = v32;
    sub_100002BF0(v28, v30, v34, v35, v36, v37, v38, v39);
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  sub_100108000(v31, v33, 0xD000000000000015, 0x800000010023D2F0);
  v40 = [a1 signatureUsingEscrowKey];
  if (v40)
  {
    v41 = v40;
    v42 = sub_100216224();
    v44 = v43;

    v45 = sub_100216214(0);
    v47 = v46;
    sub_100002BF0(v42, v44, v48, v49, v50, v51, v52, v53);
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  sub_100108000(v45, v47, 0xD000000000000012, 0x800000010023D310);
  v54 = sub_1001ACFD8(v64);
  v64, v55, v56, v57, v58, v59, v60, v61, v63, v64, v65, v66, v67, v68, v69, v70, vars0, vars8;
  return v54;
}

void sub_10019097C(_TtC18TrustedPeersHelper6Client *a1, void *a2, char **a3)
{
  v34 = a3;
  v5 = v3;
  v32 = a2;
  containerMap = a1[1].containerMap;
  v8 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *a1[1].containerMap;
  v11 = (v8 + 63) >> 6;

  v19 = 0;
  if (v10)
  {
    while (1)
    {
      v20 = v19;
LABEL_8:
      v21 = *a1[1].endpoint + ((v20 << 10) | (16 * __clz(__rbit64(v10))));
      v23 = *v21;
      v22 = *(v21 + 8);

      v4 = objc_autoreleasePoolPush();
      sub_10010DCB0(v32, v23, v22, v34);
      if (v5)
      {
        break;
      }

      v5 = 0;
      v10 &= v10 - 1;
      objc_autoreleasePoolPop(v4);
      v22, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40;
      v19 = v20;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v11)
      {
        a1, v12, v13, v14, v15, v16, v17, v18;
        return;
      }

      v10 = *&containerMap[8 * v20];
      ++v19;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v4);
  __break(1u);
}

void sub_100190AB8(_TtC18TrustedPeersHelper6Client *a1, void *a2, void *a3, void *a4)
{
  v35 = a4;
  v6 = v4;
  v32 = a2;
  v33 = a3;
  containerMap = a1[1].containerMap;
  v9 = 1 << a1[1]._TtCs12_SwiftObject_opaque[0];
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *a1[1].containerMap;
  v12 = (v9 + 63) >> 6;

  v20 = 0;
  if (v11)
  {
    while (1)
    {
      v21 = v20;
LABEL_8:
      v22 = *a1[1].endpoint + ((v21 << 10) | (16 * __clz(__rbit64(v11))));
      v24 = *v22;
      v23 = *(v22 + 8);

      v5 = objc_autoreleasePoolPush();
      sub_10011A724(v32, v24, v23, v33, v35);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v11 &= v11 - 1;
      objc_autoreleasePoolPop(v5);
      v23, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41;
      v20 = v21;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v12)
      {
        a1, v13, v14, v15, v16, v17, v18, v19;
        return;
      }

      v11 = *&containerMap[8 * v21];
      ++v20;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v5);
  __break(1u);
}

Swift::Int sub_100190BF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_10029D5A8, &qword_1002264F8);
    v3 = sub_100216FB4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_100217264();

      sub_1002169C4();
      result = sub_100217284();
      v17 = ~(-1 << *(v3 + 32));
      for (i = result & v17; ; i = (i + 1) & v17)
      {
        v19 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v19) == 0)
        {
          break;
        }

        v20 = (*(v3 + 48) + 16 * i);
        v21 = v20[1];
        if (*v20 != v9 || v21 != v8)
        {
          result = sub_1002171A4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v8, v21, v11, v12, v13, v14, v15, v16, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36;
        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v19;
      v23 = (*(v3 + 48) + 16 * i);
      *v23 = v9;
      v23[1] = v8;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        *(v3 + 16) = v26;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_100190D5C(uint64_t a1, char *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  __chkstk_darwin(PolicyDocumentsRequest, v13);
  v166 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v165 = a3;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  v16 = swift_allocObject();
  v168 = v16;
  *v16->endpoint = a1;
  endpoint = v16->endpoint;
  v18 = swift_allocObject();

  v164 = a5;
  v163 = a6;

  v19 = v18;
  *(v18 + 16) = sub_100019440(_swiftEmptyArrayStorage);
  v20 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v21 = swift_allocObject();
  *(v21 + 16) = endpoint;
  *(v21 + 24) = a2;
  *(v21 + 32) = v18 + 16;
  v22 = swift_allocObject();
  *v22->endpoint = sub_1001ACE80;
  *v22->containerMap = v21;
  v167 = v21;
  v174 = sub_1001ACCC0;
  v175 = v22;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100109050;
  v173 = &unk_100283788;
  v23 = _Block_copy(&aBlock);
  v24 = v175;
  v25 = a2;

  v24, v26, v27, v28, v29, v30, v31, v32;
  [v20 performBlockAndWait:v23];
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();
  v22, v33, v34, v35, v36, v37, v38, v39;
  if (v23)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v42 = *endpoint;
  if ((*endpoint & 0xC000000000000001) != 0)
  {

    v43 = sub_100216ED4();
    v42, v44, v45, v46, v47, v48, v49, v50, v162, v163, v164, v165, v166, v167, v168, v169, aBlock, v171;
    if (v43)
    {
LABEL_4:
      __chkstk_darwin(v40, v41);
      *(&v162 - 2) = endpoint;
      sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);
      v51 = v15;
      v52 = v166;
      sub_100216654();
      v53 = *&v25[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
      v54 = *&v25[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
      v165 = sub_100006484(&v25[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v53);
      v55 = swift_allocObject();
      *(v55 + 16) = v25;
      *(v55 + 24) = sub_1001AA600;
      v56 = v168;
      *(v55 + 32) = v51;
      *(v55 + 40) = v56;
      *(v55 + 48) = v19;
      v57 = *(v54 + 16);
      v58 = *(v57 + 80);
      v59 = v25;

      v58(v52, sub_1001ACE2C, v55, v53, v57);
      v55, v60, v61, v62, v63, v64, v65, v66;
      sub_1001AC1E4(v52, type metadata accessor for FetchPolicyDocumentsRequest);
      v51, v67, v68, v69, v70, v71, v72, v73;
      v167, v74, v75, v76, v77, v78, v79, v80;
      v56, v81, v82, v83, v84, v85, v86, v87;
      v19, v88, v89, v90, v91, v92, v93, v94;
      return;
    }
  }

  else if (*v42->endpoint)
  {
    goto LABEL_4;
  }

  v95 = v19;
  v96 = *v19->endpoint;
  v97 = v164;
  v166 = *&v164[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v98 = swift_allocObject();
  v99 = v165;
  *(v98 + 16) = v97;
  *(v98 + 24) = v99;
  v100 = v163;
  *(v98 + 32) = a4;
  *(v98 + 40) = v100;
  v101 = swift_allocObject();
  *v101->endpoint = sub_100060940;
  *v101->containerMap = v98;
  v174 = sub_1001ACCC0;
  v175 = v101;
  aBlock = _NSConcreteStackBlock;
  v171 = 1107296256;
  v172 = sub_100109050;
  v173 = &unk_100283828;
  v102 = _Block_copy(&aBlock);
  v103 = v175;

  v104 = v97;
  v105 = v100;

  v103, v106, v107, v108, v109, v110, v111, v112;
  [v166 performBlockAndWait:v102];
  _Block_release(v102);
  LOBYTE(v102) = swift_isEscapingClosureAtFileLocation();
  v15, v113, v114, v115, v116, v117, v118, v119;
  v167, v120, v121, v122, v123, v124, v125, v126;
  v168, v127, v128, v129, v130, v131, v132, v133;
  v95, v134, v135, v136, v137, v138, v139, v140;
  v96, v141, v142, v143, v144, v145, v146, v147, v162, v163, v164, v165, v166, v167, v168, v169, aBlock, v171;
  v98, v148, v149, v150, v151, v152, v153, v154;
  v101, v155, v156, v157, v158, v159, v160, v161;
  if (v102)
  {
    goto LABEL_9;
  }
}

unint64_t sub_10019131C(unint64_t result)
{
  if (result >= 7)
  {
    sub_100216FD4(24);
    v1._object = 0x800000010023CCE0;
    v1._countAndFlagsBits = 0xD000000000000016;
    sub_100216A14(v1);
    type metadata accessor for CuttlefishResetReason(0);
    sub_100217094();
    result = sub_1002170E4();
    __break(1u);
  }

  return result;
}

void sub_1001913E4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint8_t *a5, void *a6, void (*a7)(void, void, void *, void, uint64_t), _TtC18TrustedPeersHelper6Client *a8, void *a9, _TtC18TrustedPeersHelper6Client *a10, void *a11, _TtC18TrustedPeersHelper6Client *a12, uint64_t a13, _TtC18TrustedPeersHelper6Client *a14, void *a15, _TtC18TrustedPeersHelper6Client *a16, _TtC18TrustedPeersHelper6Client *a17, const char *a18, _TtC18TrustedPeersHelper6Client *a19, const char *a20, _TtC18TrustedPeersHelper6Client *a21, const char *a22, _TtC18TrustedPeersHelper6Client *a23, const char *a24, void *a25, _TtC18TrustedPeersHelper6Client *a26, void *a27, _TtC18TrustedPeersHelper6Client *a28, void *a29, _TtC18TrustedPeersHelper6Client *a30, unsigned __int8 a31)
{
  buf = a5;
  v1708 = a3;
  v1779 = a4;
  v32 = a6;
  v1879 = a8;

  v33 = a9;

  v1875 = a11;

  v34 = a15;
  v1865 = objc_opt_self();

  v35 = v32;
  swift_retain_n();
  v36 = v33;
  swift_bridgeObjectRetain_n();
  v37 = v1875;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v38 = v34;
  v1867 = v35;
  v1870 = v36;
  v1872 = v37;
  v1876 = v38;
  sub_100012558(a17, a18);
  sub_100012558(a19, a20);
  sub_100012558(a21, a22);
  sub_100012558(a23, a24);

  sub_100012558(a17, a18);
  sub_100012558(a19, a20);
  sub_100012558(a21, a22);
  sub_100012558(a23, a24);

  sub_100012558(a17, a18);
  sub_100012558(a19, a20);
  sub_100012558(a21, a22);
  sub_100012558(a23, a24);

  v1850 = v1867;

  v1868 = v1870;

  v1873 = v1872;

  v1877 = v1876;

  sub_100012558(a17, a18);
  sub_100012558(a19, a20);
  sub_100012558(a21, a22);
  sub_100012558(a23, a24);

  v1871 = v1850;

  v1869 = v1868;

  v1874 = v1873;

  v1878 = v1877;

  sub_100012558(a17, a18);
  sub_100012558(a19, a20);
  sub_100012558(a21, a22);
  sub_100012558(a23, a24);
  v39 = a26;

  v40 = [v1865 defaultManager];
  v41 = sub_100216964();
  v42 = [v40 identityForIdentifier:v41];

  v1866 = v40;
  if (v42)
  {
    v43 = [v42 resultType];
    v1862 = v42;
    if (v43)
    {
      if (v43 == 1)
      {
        sub_1000561D0();
        v203 = swift_allocError();
        *v204 = xmmword_100225F90;
        *(v204 + 16) = 13;
        v1858 = v1871;

        v1853 = v1869;

        v1789 = v1874;

        v1717 = v1878;

        sub_100012558(a17, a18);
        sub_100012558(a19, a20);
        sub_100012558(a21, a22);
        sub_100012558(a23, a24);
        v205 = qword_100297520;

        if (v205 != -1)
        {
          swift_once();
        }

        v206 = sub_100216774();
        sub_100002648(v206, qword_10029D160);
        swift_errorRetain();
        v207 = sub_100216754();
        v208 = sub_100216C74();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = v203;
          v210 = swift_slowAlloc();
          v211 = swift_slowAlloc();
          aBlock[0] = v211;
          *v210 = 136446210;
          v1882 = v209;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v212 = sub_100216994();
          v214 = v213;
          v215 = sub_100005FB0(v212, v213, aBlock);
          v214, v216, v217, v218, v219, v220, v221, v222, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1717, v1789;
          *(v210 + 4) = v215;
          _os_log_impl(&_mh_execute_header, v207, v208, "Unable to load encryption key: %{public}s", v210, 0xCu);
          sub_100006128(v211, v223, v224, v225, v226, v227, v228, v229);

          v203 = v209;
        }

        swift_errorRetain();
        v230 = sub_100216754();
        v231 = sub_100216C74();

        if (os_log_type_enabled(v230, v231))
        {
          v232 = swift_slowAlloc();
          v233 = swift_slowAlloc();
          aBlock[0] = v233;
          *v232 = 136446210;
          v1882 = v203;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v234 = sub_100216994();
          v236 = v235;
          v237 = v203;
          v238 = sub_100005FB0(v234, v235, aBlock);
          v236, v239, v240, v241, v242, v243, v244, v245, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1717, v1789;
          *(v232 + 4) = v238;
          _os_log_impl(&_mh_execute_header, v230, v231, "Don't have my own peer keys; can't establish: %{public}s", v232, 0xCu);
          sub_100006128(v233, v246, v247, v248, v249, v250, v251, v252);

          v253 = a21;
        }

        else
        {

          v253 = a21;
          v237 = v203;
        }

        v118 = a20;
        v287 = sub_100216144();
        [v1858 sendMetricWithResult:0 error:v287];

        a7(0, 0, _swiftEmptyArrayStorage, 0, v237);
        a26, v288, v289, v290, v291, v292, v293, v294, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1717, v1789;
        a28, v295, v296, v297, v298, v299, v300, v301, v1176, v1243, v1310, v1377, v1445, v1513, v1581, bufk, v1719, v1791;
        a30, v302, v303, v304, v305, v306, v307, v308, v1177, v1244, v1311, v1378, v1446, v1514, v1582, bufl, v1720, v1792;
        sub_100002BF0(a23, a24, v309, v310, v311, v312, v313, v314);
        v202 = v253;
        sub_100002BF0(v253, a22, v315, v316, v317, v318, v319, v320);
        sub_100002BF0(a19, a20, v321, v322, v323, v324, v325, v326);
        sub_100002BF0(a17, a18, v327, v328, v329, v330, v331, v332);

        v1879, v333, v334, v335, v336, v337, v338, v339;
        v165 = a10;
        a10, v340, v341, v342, v343, v344, v345, v346, v1178, v1245, v1312, v1379, v1447, v1515, v1583, bufm, v1721, v1793;

        a12, v347, v348, v349, v350, v351, v352, v353, v1179, v1246, v1313, v1380, v1448, v1516, v1584, bufn, v1722, v1794;
        a14, v354, v355, v356, v357, v358, v359, v360, v1180, v1247, v1314, v1381, v1449, v1517, v1585, bufo, v1723, v1795;

        a16, v361, v362, v363, v364, v365, v366, v367, v1181, v1248, v1315, v1382, v1450, v1518, v1586, bufp, v1724, v1796;

        v1879, v368, v369, v370, v371, v372, v373, v374;

        v173 = a12;
        v119 = a16;
      }

      else if (v43 == 2)
      {
        v44 = [v42 error];
        v1856 = v1871;

        v1851 = v1869;

        v1780 = v1874;

        v1709 = v1878;

        sub_100012558(a17, a18);
        sub_100012558(a19, a20);
        sub_100012558(a21, a22);
        sub_100012558(a23, a24);
        v45 = qword_100297520;

        if (v45 != -1)
        {
          swift_once();
        }

        v46 = sub_100216774();
        sub_100002648(v46, qword_10029D160);
        swift_errorRetain();
        v47 = sub_100216754();
        v48 = sub_100216C74();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          aBlock[0] = v50;
          *v49 = 136446210;
          v1882 = v44;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v51 = sub_100216994();
          v53 = v52;
          v54 = sub_100005FB0(v51, v52, aBlock);
          v53, v55, v56, v57, v58, v59, v60, v61, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1709, v1780;
          *(v49 + 4) = v54;
          v62 = a26;
          _os_log_impl(&_mh_execute_header, v47, v48, "Unable to load encryption key: %{public}s", v49, 0xCu);
          sub_100006128(v50, v63, v64, v65, v66, v67, v68, v69);
        }

        else
        {
          v62 = a26;
        }

        swift_errorRetain();
        v375 = sub_100216754();
        v376 = sub_100216C74();

        if (os_log_type_enabled(v375, v376))
        {
          v377 = swift_slowAlloc();
          v378 = swift_slowAlloc();
          aBlock[0] = v378;
          *v377 = 136446210;
          v1882 = v44;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v379 = sub_100216994();
          v381 = v380;
          v382 = sub_100005FB0(v379, v380, aBlock);
          v381, v383, v384, v385, v386, v387, v388, v389, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1709, v1780;
          *(v377 + 4) = v382;
          _os_log_impl(&_mh_execute_header, v375, v376, "Don't have my own peer keys; can't establish: %{public}s", v377, 0xCu);
          sub_100006128(v378, v390, v391, v392, v393, v394, v395, v396);
        }

        v202 = a21;
        v118 = a20;
        if (v44)
        {
          v397 = sub_100216144();
        }

        else
        {
          v397 = 0;
        }

        [v1856 sendMetricWithResult:0 error:v397];

        a7(0, 0, _swiftEmptyArrayStorage, 0, v44);
        v62, v508, v509, v510, v511, v512, v513, v514, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1709, v1780;
        a28, v515, v516, v517, v518, v519, v520, v521, v1188, v1255, v1322, v1389, v1457, v1525, v1593, bufw, v1731, v1803;
        a30, v522, v523, v524, v525, v526, v527, v528, v1189, v1256, v1323, v1390, v1458, v1526, v1594, bufx, v1732, v1804;
        sub_100002BF0(a23, a24, v529, v530, v531, v532, v533, v534);
        sub_100002BF0(a21, a22, v535, v536, v537, v538, v539, v540);
        sub_100002BF0(a19, a20, v541, v542, v543, v544, v545, v546);
        sub_100002BF0(a17, a18, v547, v548, v549, v550, v551, v552);

        v165 = a10;
        a10, v553, v554, v555, v556, v557, v558, v559, v1190, v1257, v1324, v1391, v1459, v1527, v1595, bufy, v1733, v1805;

        v173 = a12;
        a12, v560, v561, v562, v563, v564, v565, v566, v1191, v1258, v1325, v1392, v1460, v1528, v1596, bufz, v1734, v1806;
        a14, v567, v568, v569, v570, v571, v572, v573, v1192, v1259, v1326, v1393, v1461, v1529, v1597, bufba, v1735, v1807;

        v119 = a16;
        a16, v574, v575, v576, v577, v578, v579, v580, v1193, v1260, v1327, v1394, v1462, v1530, v1598, bufbb, v1736, v1808;
      }

      else
      {
        sub_1000561D0();
        v261 = swift_allocError();
        *v262 = xmmword_100225FA0;
        *(v262 + 16) = 13;
        v1860 = v1871;

        v1855 = v1869;

        v1790 = v1874;

        v1718 = v1878;

        sub_100012558(a17, a18);
        sub_100012558(a19, a20);
        sub_100012558(a21, a22);
        sub_100012558(a23, a24);
        v263 = qword_100297520;

        if (v263 != -1)
        {
          swift_once();
        }

        v264 = sub_100216774();
        sub_100002648(v264, qword_10029D160);
        swift_errorRetain();
        v265 = sub_100216754();
        v266 = sub_100216C74();

        if (os_log_type_enabled(v265, v266))
        {
          v267 = swift_slowAlloc();
          v268 = swift_slowAlloc();
          aBlock[0] = v268;
          *v267 = 136446210;
          v1882 = v261;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v269 = sub_100216994();
          v271 = v270;
          v272 = sub_100005FB0(v269, v270, aBlock);
          v271, v273, v274, v275, v276, v277, v278, v279, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1718, v1790;
          *(v267 + 4) = v272;
          _os_log_impl(&_mh_execute_header, v265, v266, "Unable to load encryption key: %{public}s", v267, 0xCu);
          sub_100006128(v268, v280, v281, v282, v283, v284, v285, v286);
        }

        swift_errorRetain();
        v398 = sub_100216754();
        v399 = sub_100216C74();

        if (os_log_type_enabled(v398, v399))
        {
          v400 = swift_slowAlloc();
          v401 = swift_slowAlloc();
          aBlock[0] = v401;
          *v400 = 136446210;
          v1882 = v261;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v402 = sub_100216994();
          v404 = v403;
          v405 = sub_100005FB0(v402, v403, aBlock);
          v404, v406, v407, v408, v409, v410, v411, v412, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1718, v1790;
          *(v400 + 4) = v405;
          _os_log_impl(&_mh_execute_header, v398, v399, "Don't have my own peer keys; can't establish: %{public}s", v400, 0xCu);
          sub_100006128(v401, v413, v414, v415, v416, v417, v418, v419);
        }

        v118 = a20;
        v119 = a16;
        v420 = sub_100216144();
        [v1860 sendMetricWithResult:0 error:v420];

        a7(0, 0, _swiftEmptyArrayStorage, 0, v261);
        a26, v421, v422, v423, v424, v425, v426, v427, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1718, v1790;
        a28, v428, v429, v430, v431, v432, v433, v434, v1182, v1249, v1316, v1383, v1451, v1519, v1587, bufq, v1725, v1797;
        a30, v435, v436, v437, v438, v439, v440, v441, v1183, v1250, v1317, v1384, v1452, v1520, v1588, bufr, v1726, v1798;
        sub_100002BF0(a23, a24, v442, v443, v444, v445, v446, v447);
        v202 = a21;
        sub_100002BF0(a21, a22, v448, v449, v450, v451, v452, v453);
        sub_100002BF0(a19, a20, v454, v455, v456, v457, v458, v459);
        sub_100002BF0(a17, a18, v460, v461, v462, v463, v464, v465);

        v1879, v466, v467, v468, v469, v470, v471, v472;
        v165 = a10;
        a10, v473, v474, v475, v476, v477, v478, v479, v1184, v1251, v1318, v1385, v1453, v1521, v1589, bufs, v1727, v1799;

        a12, v480, v481, v482, v483, v484, v485, v486, v1185, v1252, v1319, v1386, v1454, v1522, v1590, buft, v1728, v1800;
        a14, v487, v488, v489, v490, v491, v492, v493, v1186, v1253, v1320, v1387, v1455, v1523, v1591, bufu, v1729, v1801;

        a16, v494, v495, v496, v497, v498, v499, v500, v1187, v1254, v1321, v1388, v1456, v1524, v1592, bufv, v1730, v1802;

        v173 = a12;
        v1879, v501, v502, v503, v504, v505, v506, v507;
      }

      goto LABEL_52;
    }

    v254 = [v42 value];
    if (v254)
    {
      v255 = v254;
      v256 = [v254 keyPair];

      if (v256)
      {
        objc_opt_self();
        v257 = swift_dynamicCastObjCClass();
        if (v257)
        {
          v258 = v257;
          v259 = objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
          v260 = v256;
          v1859 = v1871;

          v1512 = v1869;

          v1580 = v1874;

          v1444 = v1878;

          sub_100012558(a17, a18);
          sub_100012558(a19, a20);
          sub_100012558(a21, a22);
          sub_100012558(a23, a24);

          v1854 = v260;

          HIDWORD(v1369) = a31;
          bufh = sub_1000576E4(v1708, v1779, buf, v258);
          v1776 = *&v1512[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
          v1094 = swift_allocObject();
          *(v1094 + 16) = a10;
          *(v1094 + 24) = bufh;
          *(v1094 + 32) = v1580;
          *(v1094 + 40) = a12;
          *(v1094 + 48) = v1859;
          *(v1094 + 56) = a7;
          *(v1094 + 64) = v1879;
          *(v1094 + 72) = v1512;
          *(v1094 + 80) = a13;
          *(v1094 + 88) = a14;
          *(v1094 + 96) = v1444;
          *(v1094 + 104) = a16;
          *(v1094 + 112) = a17;
          *(v1094 + 120) = a18;
          *(v1094 + 128) = a19;
          *(v1094 + 136) = a20;
          *(v1094 + 144) = a21;
          *(v1094 + 152) = a22;
          *(v1094 + 160) = a23;
          *(v1094 + 168) = a24;
          *(v1094 + 176) = a25;
          *(v1094 + 184) = a26;
          *(v1094 + 192) = a27;
          *(v1094 + 200) = a28;
          *(v1094 + 208) = a29;
          *(v1094 + 216) = a30;
          *(v1094 + 224) = a31 & 1;
          v1095 = swift_allocObject();
          *v1095->endpoint = sub_1001AA938;
          *v1095->containerMap = v1094;
          aBlock[4] = sub_1001ACCC0;
          v1881 = v1095;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100109050;
          aBlock[3] = &unk_100283BE8;
          v1096 = _Block_copy(aBlock);
          v1097 = v1881;
          v1098 = bufh;
          v1099 = v1859;

          v1100 = v1512;

          v1101 = v1580;

          v1102 = v1444;

          sub_100012558(a17, a18);
          sub_100012558(a19, a20);
          sub_100012558(a21, a22);
          sub_100012558(a23, a24);

          v1103 = v1098;

          v1097, v1104, v1105, v1106, v1107, v1108, v1109, v1110;
          [v1776 performBlockAndWait:v1096];

          v1111 = a20;
          _Block_release(v1096);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
          a26, v1113, v1114, v1115, v1116, v1117, v1118, v1119, a25, a27, a29, v1369, v1444, v1512, v1580, bufh, v1776, v258;
          a28, v1120, v1121, v1122, v1123, v1124, v1125, v1126, v1233, v1300, v1367, v1434, v1502, v1570, v1638, bufi, v1777, v1848;
          a30, v1127, v1128, v1129, v1130, v1131, v1132, v1133, v1234, v1301, v1368, v1435, v1503, v1571, v1639, bufj, v1778, v1849;

          v1094, v1134, v1135, v1136, v1137, v1138, v1139, v1140;
          v1095, v1141, v1142, v1143, v1144, v1145, v1146, v1147;
          sub_100002BF0(a23, a24, v1148, v1149, v1150, v1151, v1152, v1153);
          v1154 = a21;
          sub_100002BF0(a21, a22, v1155, v1156, v1157, v1158, v1159, v1160);
          v670 = a17;
          v632 = a18;
          v633 = a12;
          v671 = v1866;
          v641 = v1779;
          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            goto LABEL_51;
          }

          __break(1u);

          v632 = a18;
          v1167 = sub_100216144();
          [v1859 sendMetricWithResult:0 error:v1167];

          a7(0, 0, _swiftEmptyArrayStorage, 0, a17);

          v643 = a22;
          v585 = a28;
          v642 = a17;
          v633 = a12;
          v611 = a24;
LABEL_50:
          a26, v634, v635, v636, v637, v638, v639, v640, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1708, v1779;
          v585, v644, v645, v646, v647, v648, v649, v650, v1194, v1261, v1328, v1395, v1463, v1531, v1599, bufbc, v1737, v1809;
          a30, v651, v652, v653, v654, v655, v656, v657, v1195, v1262, v1329, v1396, v1464, v1532, v1600, bufbd, v1738, v1810;
          sub_100002BF0(a23, v611, v658, v659, v660, v661, v662, v663);
          v1154 = isEscapingClosureAtFileLocation;
          sub_100002BF0(isEscapingClosureAtFileLocation, v643, v664, v665, v666, v667, v668, v669);
          v670 = v642;
          v671 = v1866;
LABEL_51:
          v672 = v1111;
          sub_100002BF0(a19, v1111, v1161, v1162, v1163, v1164, v1165, v1166);
          sub_100002BF0(v670, v632, v673, v674, v675, v676, v677, v678);

          v165 = a10;
          a10, v679, v680, v681, v682, v683, v684, v685, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1708, v1779;

          v686 = v633;
          v633, v687, v688, v689, v690, v691, v692, v693, v1196, v1263, v1330, v1397, v1465, v1533, v1601, bufbe, v1739, v1811;
          a14, v694, v695, v696, v697, v698, v699, v700, v1197, v1264, v1331, v1398, v1466, v1534, v1602, bufbf, v1740, v1812;

          v119 = a16;
          a16, v701, v702, v703, v704, v705, v706, v707, v1198, v1265, v1332, v1399, v1467, v1535, v1603, bufbg, v1741, v1813;
          v118 = v672;
          v202 = v1154;
          v173 = v686;
          goto LABEL_52;
        }
      }
    }

    v1861 = v1871;

    v581 = v1869;

    v582 = v1874;

    v583 = v1878;

    sub_100012558(a17, a18);
    sub_100012558(a19, a20);
    sub_100012558(a21, a22);
    sub_100012558(a23, a24);
    v584 = qword_100297520;

    v585 = a28;

    if (v584 != -1)
    {
      swift_once();
    }

    v586 = sub_100216774();
    sub_100002648(v586, qword_10029D160);
    v587 = sub_100216754();
    v588 = sub_100216C74();
    if (os_log_type_enabled(v587, v588))
    {
      v589 = swift_slowAlloc();
      v590 = swift_slowAlloc();
      aBlock[0] = v590;
      *v589 = 136446210;
      v1882 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v591 = sub_100216994();
      v593 = v592;
      v594 = sub_100005FB0(v591, v592, aBlock);
      v593, v595, v596, v597, v598, v599, v600, v601, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1708, v1779;
      *(v589 + 4) = v594;
      v585 = a28;
      _os_log_impl(&_mh_execute_header, v587, v588, "Unable to load encryption key: %{public}s", v589, 0xCu);
      sub_100006128(v590, v602, v603, v604, v605, v606, v607, v608);
    }

    v609 = sub_100216754();
    v610 = sub_100216C74();
    v611 = a24;
    if (os_log_type_enabled(v609, v610))
    {
      v612 = swift_slowAlloc();
      v613 = swift_slowAlloc();
      aBlock[0] = v613;
      *v612 = 136446210;
      v1882 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v614 = sub_100216994();
      v616 = v615;
      v617 = sub_100005FB0(v614, v615, aBlock);
      v616, v618, v619, v620, v621, v622, v623, v624, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1708, v1779;
      *(v612 + 4) = v617;
      _os_log_impl(&_mh_execute_header, v609, v610, "Don't have my own peer keys; can't establish: %{public}s", v612, 0xCu);
      sub_100006128(v613, v625, v626, v627, v628, v629, v630, v631);
    }

    isEscapingClosureAtFileLocation = a21;
    v1111 = a20;
    v632 = a18;
    v633 = a12;
    [v1861 sendMetricWithResult:0 error:0];
    a7(0, 0, _swiftEmptyArrayStorage, 0, 0);
    v641 = 0;
    v642 = a17;
    v643 = a22;
    goto LABEL_50;
  }

  v1863 = v1871;

  v1857 = v1869;

  v1852 = v1874;

  v1781 = v1878;

  sub_100012558(a17, a18);
  sub_100012558(a19, a20);
  sub_100012558(a21, a22);
  sub_100012558(a23, a24);
  v70 = qword_100297520;

  if (v70 != -1)
  {
    swift_once();
  }

  v71 = sub_100216774();
  sub_100002648(v71, qword_10029D160);
  v72 = sub_100216754();
  v73 = sub_100216C74();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    aBlock[0] = v75;
    *v74 = 136446210;
    v1882 = 0;
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v76 = sub_100216994();
    v78 = v77;
    v79 = sub_100005FB0(v76, v77, aBlock);
    v78, v80, v81, v82, v83, v84, v85, v86, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1708, v1781;
    *(v74 + 4) = v79;
    v39 = a26;
    _os_log_impl(&_mh_execute_header, v72, v73, "Unable to load encryption key: %{public}s", v74, 0xCu);
    sub_100006128(v75, v87, v88, v89, v90, v91, v92, v93);
  }

  v94 = sub_100216754();
  v95 = sub_100216C74();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    aBlock[0] = v97;
    *v96 = 136446210;
    v1882 = 0;
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v98 = sub_100216994();
    v99 = v39;
    v101 = v100;
    v102 = sub_100005FB0(v98, v100, aBlock);
    v103 = v101;
    v39 = v99;
    v103, v104, v105, v106, v107, v108, v109, v110, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1708, v1781;
    *(v96 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v94, v95, "Don't have my own peer keys; can't establish: %{public}s", v96, 0xCu);
    sub_100006128(v97, v111, v112, v113, v114, v115, v116, v117);
  }

  v118 = a20;
  v119 = a16;
  [v1863 sendMetricWithResult:0 error:0];
  a7(0, 0, _swiftEmptyArrayStorage, 0, 0);
  v39, v120, v121, v122, v123, v124, v125, v126, v1168, v1235, v1302, v1369, v1436, v1504, v1572, buf, v1708, v1781;
  a28, v127, v128, v129, v130, v131, v132, v133, v1169, v1236, v1303, v1370, v1437, v1505, v1573, bufb, v1710, v1782;
  a30, v134, v135, v136, v137, v138, v139, v140, v1170, v1237, v1304, v1371, v1438, v1506, v1574, bufc, v1711, v1783;
  sub_100002BF0(a23, a24, v141, v142, v143, v144, v145, v146);
  sub_100002BF0(a21, a22, v147, v148, v149, v150, v151, v152);
  sub_100002BF0(a19, a20, v153, v154, v155, v156, v157, v158);
  sub_100002BF0(a17, a18, v159, v160, v161, v162, v163, v164);

  v165 = a10;
  a10, v166, v167, v168, v169, v170, v171, v172, v1171, v1238, v1305, v1372, v1439, v1507, v1575, bufd, v1712, v1784;

  v173 = a12;
  a12, v174, v175, v176, v177, v178, v179, v180, v1172, v1239, v1306, v1373, v1440, v1508, v1576, bufe, v1713, v1785;
  a14, v181, v182, v183, v184, v185, v186, v187, v1173, v1240, v1307, v1374, v1441, v1509, v1577, buff, v1714, v1786;

  a16, v188, v189, v190, v191, v192, v193, v194, v1174, v1241, v1308, v1375, v1442, v1510, v1578, bufg, v1715, v1787;
  v202 = a21;
LABEL_52:
  v119, v195, v196, v197, v198, v199, v200, v201, v1175, v1242, v1309, v1376, v1443, v1511, v1579, bufa, v1716, v1788;

  a14, v708, v709, v710, v711, v712, v713, v714, v1199, v1266, v1333, v1400, v1468, v1536, v1604, bufbh, v1742, v1814;
  v173, v715, v716, v717, v718, v719, v720, v721, v1200, v1267, v1334, v1401, v1469, v1537, v1605, bufbi, v1743, v1815;

  v165, v722, v723, v724, v725, v726, v727, v728, v1201, v1268, v1335, v1402, v1470, v1538, v1606, bufbj, v1744, v1816;
  sub_100002BF0(a17, a18, v729, v730, v731, v732, v733, v734);
  sub_100002BF0(a19, v118, v735, v736, v737, v738, v739, v740);
  sub_100002BF0(v202, a22, v741, v742, v743, v744, v745, v746);
  sub_100002BF0(a23, a24, v747, v748, v749, v750, v751, v752);
  v119, v753, v754, v755, v756, v757, v758, v759, v1202, v1269, v1336, v1403, v1471, v1539, v1607, bufbk, v1745, v1817;

  a14, v760, v761, v762, v763, v764, v765, v766, v1203, v1270, v1337, v1404, v1472, v1540, v1608, bufbl, v1746, v1818;
  v173, v767, v768, v769, v770, v771, v772, v773, v1204, v1271, v1338, v1405, v1473, v1541, v1609, bufbm, v1747, v1819;

  v165, v774, v775, v776, v777, v778, v779, v780, v1205, v1272, v1339, v1406, v1474, v1542, v1610, bufbn, v1748, v1820;
  v1879, v781, v782, v783, v784, v785, v786, v787;

  a30, v788, v789, v790, v791, v792, v793, v794, v1206, v1273, v1340, v1407, v1475, v1543, v1611, bufbo, v1749, v1821;
  a28, v795, v796, v797, v798, v799, v800, v801, v1207, v1274, v1341, v1408, v1476, v1544, v1612, bufbp, v1750, v1822;
  a26, v802, v803, v804, v805, v806, v807, v808, v1208, v1275, v1342, v1409, v1477, v1545, v1613, bufbq, v1751, v1823;
  sub_100002BF0(a17, a18, v809, v810, v811, v812, v813, v814);
  sub_100002BF0(a19, a20, v815, v816, v817, v818, v819, v820);
  sub_100002BF0(v202, a22, v821, v822, v823, v824, v825, v826);
  sub_100002BF0(a23, a24, v827, v828, v829, v830, v831, v832);
  v119, v833, v834, v835, v836, v837, v838, v839, v1209, v1276, v1343, v1410, v1478, v1546, v1614, bufbr, v1752, v1824;

  a14, v840, v841, v842, v843, v844, v845, v846, v1210, v1277, v1344, v1411, v1479, v1547, v1615, bufbs, v1753, v1825;
  v173, v847, v848, v849, v850, v851, v852, v853, v1211, v1278, v1345, v1412, v1480, v1548, v1616, bufbt, v1754, v1826;

  a10, v854, v855, v856, v857, v858, v859, v860, v1212, v1279, v1346, v1413, v1481, v1549, v1617, bufbu, v1755, v1827;
  v1879, v861, v862, v863, v864, v865, v866, v867;

  a30, v868, v869, v870, v871, v872, v873, v874, v1213, v1280, v1347, v1414, v1482, v1550, v1618, bufbv, v1756, v1828;
  a28, v875, v876, v877, v878, v879, v880, v881, v1214, v1281, v1348, v1415, v1483, v1551, v1619, bufbw, v1757, v1829;
  a26, v882, v883, v884, v885, v886, v887, v888, v1215, v1282, v1349, v1416, v1484, v1552, v1620, bufbx, v1758, v1830;
  sub_100002BF0(a17, a18, v889, v890, v891, v892, v893, v894);
  sub_100002BF0(a19, a20, v895, v896, v897, v898, v899, v900);
  sub_100002BF0(a21, a22, v901, v902, v903, v904, v905, v906);
  sub_100002BF0(a23, a24, v907, v908, v909, v910, v911, v912);
  v119, v913, v914, v915, v916, v917, v918, v919, v1216, v1283, v1350, v1417, v1485, v1553, v1621, bufby, v1759, v1831;

  a14, v920, v921, v922, v923, v924, v925, v926, v1217, v1284, v1351, v1418, v1486, v1554, v1622, bufbz, v1760, v1832;
  a12, v927, v928, v929, v930, v931, v932, v933, v1218, v1285, v1352, v1419, v1487, v1555, v1623, bufca, v1761, v1833;

  a10, v934, v935, v936, v937, v938, v939, v940, v1219, v1286, v1353, v1420, v1488, v1556, v1624, bufcb, v1762, v1834;
  v1879, v941, v942, v943, v944, v945, v946, v947;

  a30, v948, v949, v950, v951, v952, v953, v954, v1220, v1287, v1354, v1421, v1489, v1557, v1625, bufcc, v1763, v1835;
  a28, v955, v956, v957, v958, v959, v960, v961, v1221, v1288, v1355, v1422, v1490, v1558, v1626, bufcd, v1764, v1836;
  a26, v962, v963, v964, v965, v966, v967, v968, v1222, v1289, v1356, v1423, v1491, v1559, v1627, bufce, v1765, v1837;
  sub_100002BF0(a17, a18, v969, v970, v971, v972, v973, v974);
  sub_100002BF0(a19, a20, v975, v976, v977, v978, v979, v980);
  sub_100002BF0(a21, a22, v981, v982, v983, v984, v985, v986);
  sub_100002BF0(a23, a24, v987, v988, v989, v990, v991, v992);
  a16, v993, v994, v995, v996, v997, v998, v999, v1223, v1290, v1357, v1424, v1492, v1560, v1628, bufcf, v1766, v1838;

  a14, v1000, v1001, v1002, v1003, v1004, v1005, v1006, v1224, v1291, v1358, v1425, v1493, v1561, v1629, bufcg, v1767, v1839;
  a12, v1007, v1008, v1009, v1010, v1011, v1012, v1013, v1225, v1292, v1359, v1426, v1494, v1562, v1630, bufch, v1768, v1840;

  a10, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v1226, v1293, v1360, v1427, v1495, v1563, v1631, bufci, v1769, v1841;
  v1879, v1021, v1022, v1023, v1024, v1025, v1026, v1027;

  a30, v1028, v1029, v1030, v1031, v1032, v1033, v1034, v1227, v1294, v1361, v1428, v1496, v1564, v1632, bufcj, v1770, v1842;
  a28, v1035, v1036, v1037, v1038, v1039, v1040, v1041, v1228, v1295, v1362, v1429, v1497, v1565, v1633, bufck, v1771, v1843;
  a26, v1042, v1043, v1044, v1045, v1046, v1047, v1048, v1229, v1296, v1363, v1430, v1498, v1566, v1634, bufcl, v1772, v1844;
  sub_100002BF0(a17, a18, v1049, v1050, v1051, v1052, v1053, v1054);
  sub_100002BF0(a19, a20, v1055, v1056, v1057, v1058, v1059, v1060);
  sub_100002BF0(a21, a22, v1061, v1062, v1063, v1064, v1065, v1066);
  sub_100002BF0(a23, a24, v1067, v1068, v1069, v1070, v1071, v1072);
  a30, v1073, v1074, v1075, v1076, v1077, v1078, v1079, v1230, v1297, v1364, v1431, v1499, v1567, v1635, bufcm, v1773, v1845;
  a28, v1080, v1081, v1082, v1083, v1084, v1085, v1086, v1231, v1298, v1365, v1432, v1500, v1568, v1636, bufcn, v1774, v1846;
  a26, v1087, v1088, v1089, v1090, v1091, v1092, v1093, v1232, v1299, v1366, v1433, v1501, v1569, v1637, bufco, v1775, v1847;
}

void sub_10019361C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(void, uint64_t), _TtC18TrustedPeersHelper6Client *a7, void *a8, uint64_t a9, _TtC18TrustedPeersHelper6Client *a10, _TtC18TrustedPeersHelper6Client *a11, _TtC18TrustedPeersHelper6Client *a12, void *a13)
{
  v479 = a5;
  v492 = a3;
  v509 = a4;

  v15 = a8;

  v16 = a13;
  v17 = objc_opt_self();
  swift_retain_n();
  v18 = v15;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v19 = v16;
  v20 = v18;
  v21 = v19;
  v22 = v20;
  v23 = v21;
  v24 = v22;
  v25 = v23;
  v26 = [v17 defaultManager];
  v27 = sub_100216964();
  v570 = v26;
  v28 = [v26 identityForIdentifier:v27];

  v573 = v24;
  if (!v28)
  {
    v82 = qword_100297520;
    v559 = a7;

    v547 = v24;

    v510 = a12;

    v493 = v25;
    if (v82 != -1)
    {
      swift_once();
    }

    v83 = sub_100216774();
    sub_100002648(v83, qword_10029D160);
    v84 = sub_100216754();
    v85 = sub_100216C74();
    v86 = v25;
    if (os_log_type_enabled(v84, v85))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      aBlock[0] = v88;
      *v87 = 136446210;
      v576 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v89 = sub_100216994();
      v91 = v90;
      v92 = sub_100005FB0(v89, v90, aBlock);
      v91, v93, v94, v95, v96, v97, v98, v99, v443, v454, v466, v479, v493, a12, v525, v536, v547, a7;
      *(v87 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v84, v85, "Unable to load encryption key: %{public}s", v87, 0xCu);
      sub_100006128(v88, v100, v101, v102, v103, v104, v105, v106);
    }

    v107 = sub_100216754();
    v108 = sub_100216C74();
    v30 = a10;
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      aBlock[0] = v110;
      *v109 = 136446210;
      v576 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v111 = sub_100216994();
      v113 = v112;
      v114 = sub_100005FB0(v111, v112, aBlock);
      v113, v115, v116, v117, v118, v119, v120, v121, v443, v454, v466, v479, v493, v510, v525, v536, v547, v559;
      *(v109 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v107, v108, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v109, 0xCu);
      sub_100006128(v110, v122, v123, v124, v125, v126, v127, v128);
    }

    v31 = v510;
    v25 = v86;
    v80 = a11;
    a6(0, 0);

    v81 = v547;
    goto LABEL_19;
  }

  v559 = a10;
  v29 = [(Client *)v28 resultType];
  v525 = a11;
  v536 = v25;
  v547 = v28;
  if (v29)
  {
    v30 = a10;
    v31 = a12;
    v32 = a7;
    if (v29 == 1)
    {
      sub_1000561D0();
      v150 = swift_allocError();
      *v151 = xmmword_100225F90;
      *(v151 + 16) = 13;
      v152 = qword_100297520;

      v513 = v573;

      v497 = v25;
      if (v152 != -1)
      {
        swift_once();
      }

      v153 = sub_100216774();
      sub_100002648(v153, qword_10029D160);
      swift_errorRetain();
      v154 = sub_100216754();
      v155 = sub_100216C74();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        aBlock[0] = v157;
        *v156 = 136446210;
        v576 = v150;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v158 = sub_100216994();
        v160 = v159;
        v161 = sub_100005FB0(v158, v159, aBlock);
        v160, v162, v163, v164, v165, v166, v167, v168, v443, v454, v466, v479, v497, v513, a11, v536, v547, a10;
        *(v156 + 4) = v161;
        _os_log_impl(&_mh_execute_header, v154, v155, "Unable to load encryption key: %{public}s", v156, 0xCu);
        sub_100006128(v157, v169, v170, v171, v172, v173, v174, v175);

        v30 = v559;
      }

      swift_errorRetain();
      v176 = sub_100216754();
      v177 = sub_100216C74();

      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        aBlock[0] = v179;
        *v178 = 136446210;
        v576 = v150;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v180 = sub_100216994();
        v182 = v181;
        v183 = sub_100005FB0(v180, v181, aBlock);
        v182, v184, v185, v186, v187, v188, v189, v190, v443, v454, v466, v479, v497, v513, v525, v536, v547, v559;
        *(v178 + 4) = v183;
        _os_log_impl(&_mh_execute_header, v176, v177, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v178, 0xCu);
        sub_100006128(v179, v191, v192, v193, v194, v195, v196, v197);
      }

      v198 = v525;
      v25 = v536;
      a6(0, v150);

      v32, v199, v200, v201, v202, v203, v204, v205;
      v206 = v513;

      v30, v207, v208, v209, v210, v211, v212, v213, v443, v454, v466, v479, v497, v513, v525, v536, v547, v559;
      v198, v214, v215, v216, v217, v218, v219, v220, v446, v457, v469, v482, v498, v514, v528, v539, v550, v562;
      a12, v221, v222, v223, v224, v225, v226, v227, v447, v458, v470, v483, v499, v515, v529, v540, v551, v563;
      v228 = v500;
    }

    else
    {
      if (v29 == 2)
      {
        v33 = [(Client *)v28 error];
        v34 = qword_100297520;

        v510 = v573;

        v493 = v25;
        if (v34 != -1)
        {
          swift_once();
        }

        v35 = sub_100216774();
        sub_100002648(v35, qword_10029D160);
        swift_errorRetain();
        v36 = sub_100216754();
        v37 = sub_100216C74();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          aBlock[0] = v39;
          *v38 = 136446210;
          v576 = v33;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v40 = sub_100216994();
          v42 = v41;
          v43 = sub_100005FB0(v40, v41, aBlock);
          v42, v44, v45, v46, v47, v48, v49, v50, v443, v454, v466, v479, v493, v510, a11, v536, v547, a10;
          *(v38 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v36, v37, "Unable to load encryption key: %{public}s", v38, 0xCu);
          sub_100006128(v39, v51, v52, v53, v54, v55, v56, v57);

          v30 = v559;
        }

        swift_errorRetain();
        v58 = sub_100216754();
        v59 = sub_100216C74();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          aBlock[0] = v61;
          *v60 = 136446210;
          v576 = v33;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v62 = sub_100216994();
          v64 = v63;
          v65 = sub_100005FB0(v62, v63, aBlock);
          v64, v66, v67, v68, v69, v70, v71, v72, v443, v454, v466, v479, v493, v510, v525, v536, v547, v559;
          *(v60 + 4) = v65;
          _os_log_impl(&_mh_execute_header, v58, v59, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v60, 0xCu);
          sub_100006128(v61, v73, v74, v75, v76, v77, v78, v79);
        }

        v80 = v525;
        v25 = v536;
        a6(0, v33);

        v81 = v510;
LABEL_19:

        v30, v129, v130, v131, v132, v133, v134, v135, v443, v454, v466, v479, v493, v510, v525, v536, v547, v559;
        v80, v136, v137, v138, v139, v140, v141, v142, v444, v455, v467, v480, v494, v511, v526, v537, v548, v560;
        v31, v143, v144, v145, v146, v147, v148, v149, v445, v456, v468, v481, v495, v512, v527, v538, v549, v561;

LABEL_47:

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        return;
      }

      sub_1000561D0();
      v238 = swift_allocError();
      *v239 = xmmword_100225FA0;
      *(v239 + 16) = 13;
      v240 = qword_100297520;

      v501 = v573;

      v516 = a12;

      v484 = v25;
      if (v240 != -1)
      {
        swift_once();
      }

      v241 = sub_100216774();
      sub_100002648(v241, qword_10029D160);
      swift_errorRetain();
      v242 = sub_100216754();
      v243 = sub_100216C74();

      if (os_log_type_enabled(v242, v243))
      {
        v244 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        aBlock[0] = v245;
        *v244 = 136446210;
        v576 = v238;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v246 = sub_100216994();
        v248 = v247;
        v249 = sub_100005FB0(v246, v247, aBlock);
        v248, v250, v251, v252, v253, v254, v255, v256, v443, v454, v466, v484, v501, a12, a11, v536, v547, a10;
        *(v244 + 4) = v249;
        _os_log_impl(&_mh_execute_header, v242, v243, "Unable to load encryption key: %{public}s", v244, 0xCu);
        sub_100006128(v245, v257, v258, v259, v260, v261, v262, v263);

        v30 = v559;
      }

      swift_errorRetain();
      v264 = sub_100216754();
      v265 = sub_100216C74();

      v266 = v516;
      if (os_log_type_enabled(v264, v265))
      {
        v267 = swift_slowAlloc();
        v268 = swift_slowAlloc();
        aBlock[0] = v268;
        *v267 = 136446210;
        v576 = v238;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v269 = sub_100216994();
        v271 = v270;
        v272 = sub_100005FB0(v269, v270, aBlock);
        v271, v273, v274, v275, v276, v277, v278, v279, v443, v454, v466, v484, v501, v516, v525, v536, v547, v559;
        *(v267 + 4) = v272;
        _os_log_impl(&_mh_execute_header, v264, v265, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v267, 0xCu);
        sub_100006128(v268, v280, v281, v282, v283, v284, v285, v286);
      }

      v287 = v525;
      v25 = v536;
      a6(0, v238);

      v32, v288, v289, v290, v291, v292, v293, v294;
      v206 = v501;

      v30, v295, v296, v297, v298, v299, v300, v301, v443, v454, v466, v484, v501, v516, v525, v536, v547, v559;
      v287, v302, v303, v304, v305, v306, v307, v308, v448, v460, v472, v485, v502, v517, v530, v541, v552, v564;
      v266, v309, v310, v311, v312, v313, v314, v315, v449, v461, v473, v486, v503, v518, v531, v542, v553, v565;
      v228 = v487;
    }

    v32, v316, v317, v318, v319, v320, v321, v322;
    goto LABEL_47;
  }

  v229 = [(Client *)v28 value];
  v230 = a7;
  if (!v229 || (v231 = v229, v232 = [v229 keyPair], v231, !v232))
  {
LABEL_40:
    v323 = qword_100297520;

    v324 = v24;

    v325 = v25;
    if (v323 != -1)
    {
      swift_once();
    }

    v326 = sub_100216774();
    sub_100002648(v326, qword_10029D160);
    v327 = sub_100216754();
    v328 = sub_100216C74();
    if (os_log_type_enabled(v327, v328))
    {
      v329 = swift_slowAlloc();
      v330 = swift_slowAlloc();
      aBlock[0] = v330;
      *v329 = 136446210;
      v576 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v331 = sub_100216994();
      v333 = v332;
      v334 = sub_100005FB0(v331, v332, aBlock);
      v333, v335, v336, v337, v338, v339, v340, v341, v443, v454, v466, v479, v492, v509, a11, v536, v547, a10;
      *(v329 + 4) = v334;
      _os_log_impl(&_mh_execute_header, v327, v328, "Unable to load encryption key: %{public}s", v329, 0xCu);
      sub_100006128(v330, v342, v343, v344, v345, v346, v347, v348);
    }

    v349 = sub_100216754();
    v350 = sub_100216C74();
    if (os_log_type_enabled(v349, v350))
    {
      v351 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      aBlock[0] = v352;
      *v351 = 136446210;
      v576 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v353 = sub_100216994();
      v355 = v354;
      v356 = sub_100005FB0(v353, v354, aBlock);
      v355, v357, v358, v359, v360, v361, v362, v363, v443, v454, v466, v479, v492, v509, v525, v536, v547, v559;
      *(v351 + 4) = v356;
      _os_log_impl(&_mh_execute_header, v349, v350, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v351, 0xCu);
      sub_100006128(v352, v364, v365, v366, v367, v368, v369, v370);
    }

    v371 = v525;
    v25 = v536;
    a6(0, 0);
    a12, v372, v373, v374, v375, v376, v377, v378, v443, v454, v466, v479, v492, v509, v525, v536, v547, v559;

    a10, v379, v380, v381, v382, v383, v384, v385, v450, v462, v474, v488, v504, v519, v532, v543, v554, v566;
    v371, v386, v387, v388, v389, v390, v391, v392, v451, v463, v475, v489, v505, v520, v533, v544, v555, v567;
    goto LABEL_47;
  }

  objc_opt_self();
  v233 = swift_dynamicCastObjCClass();
  if (!v233)
  {

    goto LABEL_40;
  }

  v234 = v233;
  v235 = objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
  v236 = v232;

  v237 = v24;

  v459 = v25;
  v471 = v236;

  v393 = sub_1000576E4(v492, v509, v479, v234);
  v521 = *&v237[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v394 = swift_allocObject();
  *(v394 + 16) = v237;
  *(v394 + 24) = a9;
  *(v394 + 32) = a10;
  *(v394 + 40) = a6;
  *(v394 + 48) = v230;
  *(v394 + 56) = a11;
  *(v394 + 64) = a12;
  *(v394 + 72) = v393;
  *(v394 + 80) = v459;
  v395 = swift_allocObject();
  *v395->endpoint = sub_1001AAA80;
  *v395->containerMap = v394;
  aBlock[4] = sub_1001ACCC0;
  v575 = v395;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_100283E68;
  v396 = _Block_copy(aBlock);
  v506 = v575;
  v397 = v393;

  v398 = v237;

  v572 = v459;
  v399 = v397;

  v506, v400, v401, v402, v403, v404, v405, v406;
  [v521 performBlockAndWait:v396];

  _Block_release(v396);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  a10, v408, v409, v410, v411, v412, v413, v414, v443, v459, v471, v479, v506, v398, a11, v25, v28, a10;
  a11, v415, v416, v417, v418, v419, v420, v421, v452, v464, v476, v490, v507, v522, v534, v545, v556, v568;
  a12, v422, v423, v424, v425, v426, v427, v428, v453, v465, v477, v491, v508, v523, v535, v546, v557, v569;

  v394, v429, v430, v431, v432, v433, v434, v435;
  v395, v436, v437, v438, v439, v440, v441, v442;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {

    goto LABEL_47;
  }

  __break(1u);
}

void sub_100194B04(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_100216964();
  v13 = [v11 identityForIdentifier:v12];

  if (v13)
  {
    v14 = [v13 resultType];
    if (v14)
    {
      if (v14 == 1)
      {
        sub_1000561D0();
        v62 = swift_allocError();
        *v63 = xmmword_100225F90;
        *(v63 + 16) = 13;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v64 = sub_100216774();
        sub_100002648(v64, qword_10029D160);
        swift_errorRetain();
        v65 = sub_100216754();
        v66 = sub_100216C74();

        if (!os_log_type_enabled(v65, v66))
        {
          goto LABEL_28;
        }

        v67 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v139 = v135;
        *v67 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v68 = sub_100216994();
        v69 = a3;
        v71 = v70;
        v72 = sub_100005FB0(v68, v70, &v139);
        v73 = v71;
        a3 = v69;
        v73, v74, v75, v76, v77, v78, v79, v80, v135, v138, v62, v139, v140, v141, v142, v143, v144, v145;
        *(v67 + 4) = v72;
      }

      else
      {
        if (v14 == 2)
        {
          v15 = [v13 error];
          if (qword_100297520 != -1)
          {
            swift_once();
          }

          v16 = sub_100216774();
          sub_100002648(v16, qword_10029D160);
          swift_errorRetain();
          v17 = sub_100216754();
          v18 = sub_100216C74();

          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            v139 = v133;
            *v19 = 136446210;
            swift_errorRetain();
            sub_10001148C(&qword_100297E80, &unk_1002265A0);
            v20 = sub_100216994();
            v22 = v21;
            v23 = a3;
            v24 = sub_100005FB0(v20, v21, &v139);
            v22, v25, v26, v27, v28, v29, v30, v31, v133, v138, v15, v139, v140, v141, v142, v143, v144, v145;
            *(v19 + 4) = v24;
            a3 = v23;
            _os_log_impl(&_mh_execute_header, v17, v18, "Unable to load encryption key: %{public}s", v19, 0xCu);
            sub_100006128(v134, v32, v33, v34, v35, v36, v37, v38);
          }

          a3(0, v15);
          return;
        }

        sub_1000561D0();
        v62 = swift_allocError();
        *v87 = xmmword_100225FA0;
        *(v87 + 16) = 13;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v88 = sub_100216774();
        sub_100002648(v88, qword_10029D160);
        swift_errorRetain();
        v65 = sub_100216754();
        v66 = sub_100216C74();

        if (!os_log_type_enabled(v65, v66))
        {
LABEL_28:

          a3(0, v62);

          return;
        }

        v67 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v139 = v137;
        *v67 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v89 = sub_100216994();
        v91 = v90;
        v92 = a3;
        v93 = sub_100005FB0(v89, v90, &v139);
        v91, v94, v95, v96, v97, v98, v99, v100, v137, v138, v62, v139, v140, v141, v142, v143, v144, v145;
        *(v67 + 4) = v93;
        a3 = v92;
      }

      _os_log_impl(&_mh_execute_header, v65, v66, "Unable to load encryption key: %{public}s", v67, 0xCu);
      sub_100006128(v136, v101, v102, v103, v104, v105, v106, v107);

      goto LABEL_28;
    }

    v81 = [v13 value];
    if (v81)
    {
      v82 = v81;
      v83 = [v81 keyPair];

      if (v83)
      {
        objc_opt_self();
        v84 = swift_dynamicCastObjCClass();
        if (v84)
        {
          v85 = v84;
          objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
          v86 = v83;

          v131 = sub_1000576E4(a5, a6, a7, v85);
          a3(v131, 0);

LABEL_35:
          return;
        }
      }
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v108 = sub_100216774();
    sub_100002648(v108, qword_10029D160);
    v109 = sub_100216754();
    v110 = sub_100216C74();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v139 = v112;
      *v111 = 136446210;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v113 = sub_100216994();
      v115 = v114;
      v116 = sub_100005FB0(v113, v114, &v139);
      v115, v117, v118, v119, v120, v121, v122, v123, v132, v138, 0, v139, v140, v141, v142, v143, v144, v145;
      *(v111 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v109, v110, "Unable to load encryption key: %{public}s", v111, 0xCu);
      sub_100006128(v112, v124, v125, v126, v127, v128, v129, v130);
    }

    a3(0, 0);
    v85 = 0;
    goto LABEL_35;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v39 = sub_100216774();
  sub_100002648(v39, qword_10029D160);
  v40 = sub_100216754();
  v41 = sub_100216C74();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v139 = v43;
    *v42 = 136446210;
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v44 = sub_100216994();
    v46 = v45;
    v47 = sub_100005FB0(v44, v45, &v139);
    v46, v48, v49, v50, v51, v52, v53, v54, v132, v138, 0, v139, v140, v141, v142, v143, v144, v145;
    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "Unable to load encryption key: %{public}s", v42, 0xCu);
    sub_100006128(v43, v55, v56, v57, v58, v59, v60, v61);
  }

  a3(0, 0);
}

void sub_1001953F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(void, void, void *, void, uint64_t), _TtC18TrustedPeersHelper6Client *a7, void *a8, _TtC18TrustedPeersHelper6Client *a9, void *a10, _TtC18TrustedPeersHelper6Client *a11, uint64_t a12, _TtC18TrustedPeersHelper6Client *a13, void *a14, _TtC18TrustedPeersHelper6Client *a15, _TtC18TrustedPeersHelper6Client *a16, const char *a17, _TtC18TrustedPeersHelper6Client *a18, const char *a19, _TtC18TrustedPeersHelper6Client *a20, const char *a21, _TtC18TrustedPeersHelper6Client *a22, const char *a23, void *a24, _TtC18TrustedPeersHelper6Client *a25, void *a26, _TtC18TrustedPeersHelper6Client *a27, void *a28, _TtC18TrustedPeersHelper6Client *a29, char a30)
{
  v2133._countAndFlagsBits = a3;
  v2133._object = a4;
  v32 = a5;
  v2195 = a7;

  v33 = a8;

  v34 = a10;

  v35 = a14;
  v2168 = objc_opt_self();

  v36 = v32;
  swift_retain_n();
  v37 = v33;
  swift_bridgeObjectRetain_n();
  v38 = v34;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v39 = v35;
  v2185 = v36;
  v2188 = v37;
  v2191 = v38;
  v2193 = v39;
  sub_100012558(a16, a17);
  sub_100012558(a18, a19);
  sub_100012558(a20, a21);
  sub_100012558(a22, a23);

  sub_100012558(a16, a17);
  sub_100012558(a18, a19);
  sub_100012558(a20, a21);
  sub_100012558(a22, a23);

  sub_100012558(a16, a17);
  sub_100012558(a18, a19);
  sub_100012558(a20, a21);
  sub_100012558(a22, a23);

  v2143 = v2185;

  v2155 = v2188;

  v2186 = v2191;

  v2189 = v2193;

  sub_100012558(a16, a17);
  sub_100012558(a18, a19);
  sub_100012558(a20, a21);
  sub_100012558(a22, a23);

  v2192 = v2143;

  v2194 = v2155;

  v40 = v2186;

  v2190 = v2189;

  sub_100012558(a16, a17);
  sub_100012558(a18, a19);
  sub_100012558(a20, a21);
  sub_100012558(a22, a23);

  v41 = [v2168 defaultManager];
  v42 = sub_100216964();
  v2184 = v41;
  v43 = [v41 identityForIdentifier:v42];

  v2187 = v40;
  if (!v43)
  {
    v2181 = v2192;

    v2171 = v2194;

    v2158 = v40;

    v2146 = v2190;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);

    v2182 = v2181;

    v2172 = v2171;

    v2159 = v2158;

    v2145 = v2146;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);
    v94 = qword_100297520;

    if (v94 != -1)
    {
      swift_once();
    }

    v95 = sub_100216774();
    sub_100002648(v95, qword_10029D160);
    v96 = sub_100216754();
    v97 = sub_100216C74();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v2196[0] = v99;
      *v98 = 136446210;
      v2197 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v100 = sub_100216994();
      v102 = v101;
      v103 = sub_100005FB0(v100, v101, v2196);
      v102, v104, v105, v106, v107, v108, v109, v110, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;
      *(v98 + 4) = v103;
      v92 = a19;
      _os_log_impl(&_mh_execute_header, v96, v97, "Unable to load signing key: %{public}s", v98, 0xCu);
      sub_100006128(v99, v111, v112, v113, v114, v115, v116, v117);

      v118 = a13;
    }

    else
    {

      v118 = a13;
      v92 = a19;
    }

    v119 = sub_100216754();
    v120 = sub_100216C74();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v2196[0] = v122;
      *v121 = 136446210;
      v2197 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v123 = sub_100216994();
      v125 = v124;
      v126 = sub_100005FB0(v123, v124, v2196);
      v125, v127, v128, v129, v130, v131, v132, v133, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;
      *(v121 + 4) = v126;
      _os_log_impl(&_mh_execute_header, v119, v120, "Don't have my own peer keys; can't establish: %{public}s", v121, 0xCu);
      sub_100006128(v122, v134, v135, v136, v137, v138, v139, v140);
    }

    [v2182 sendMetricWithResult:0 error:0];
    a6(0, 0, _swiftEmptyArrayStorage, 0, 0);
    a15, v141, v142, v143, v144, v145, v146, v147, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;

    v148 = v118;
    v118, v149, v150, v151, v152, v153, v154, v155, v1355, v1432, v1509, v1586, v1663, v1740, v1817, v1894, v1971, v2048;
    v156 = a11;
    a11, v157, v158, v159, v160, v161, v162, v163, v1356, v1433, v1510, v1587, v1664, v1741, v1818, v1895, v1972, v2049;

    a9, v164, v165, v166, v167, v168, v169, v170, v1357, v1434, v1511, v1588, v1665, v1742, v1819, v1896, v1973, v2050;
    v2195, v171, v172, v173, v174, v175, v176, v177;

    sub_100002BF0(a16, a17, v178, v179, v180, v181, v182, v183);
    sub_100002BF0(a18, v92, v184, v185, v186, v187, v188, v189);
    sub_100002BF0(a20, a21, v190, v191, v192, v193, v194, v195);
    sub_100002BF0(a22, a23, v196, v197, v198, v199, v200, v201);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_100002BF0(a22, a23, v202, v203, v204, v205, v206, v207);
    v208 = a21;
    sub_100002BF0(a20, a21, v209, v210, v211, v212, v213, v214);
    sub_100002BF0(a18, v92, v215, v216, v217, v218, v219, v220);
    sub_100002BF0(a16, a17, v221, v222, v223, v224, v225, v226);

    v227 = a15;
    v228 = v2195;
    v229 = v148;

    a9, v230, v231, v232, v233, v234, v235, v236, v1358, v1435, v1512, v1589, v1666, v1743, v1820, v1897, v1974, v2051;
    a11, v237, v238, v239, v240, v241, v242, v243, v1359, v1436, v1513, v1590, v1667, v1744, v1821, v1898, v1975, v2052;
    v251 = v148;
    goto LABEL_42;
  }

  v44 = [v43 resultType];
  v2180 = v43;
  if (!v44)
  {
    v425 = [v43 value];
    if (v425)
    {
      v426 = v425;
      v427 = [v425 keyPair];

      if (v427)
      {
        objc_opt_self();
        v2175 = swift_dynamicCastObjCClass();
        if (v2175)
        {
          v2196[0] = 0x6974707972636E65;
          v2196[1] = 0xEF2079656B2D6E6FLL;
          v2162 = v2192;

          v2149 = v2194;

          v2131 = v40;

          v2129 = v2190;

          sub_100012558(a16, a17);
          sub_100012558(a18, a19);
          sub_100012558(a20, a21);
          sub_100012558(a22, a23);

          v2163 = v2162;

          v2150 = v2149;

          v2127 = v2131;

          v2125 = v2129;

          sub_100012558(a16, a17);
          sub_100012558(a18, a19);
          sub_100012558(a20, a21);
          sub_100012558(a22, a23);

          v2124 = v427;
          sub_100216A14(v2133);
          v2132 = v2163;

          v2164 = v2150;

          v2151 = v2127;

          v2128 = v2125;

          sub_100012558(a16, a17);
          sub_100012558(a18, a19);
          sub_100012558(a20, a21);
          sub_100012558(a22, a23);

          v2126 = v2124;

          v428 = a15;
          sub_1001913E4(0x6974707972636E65, 0xEF2079656B2D6E6FLL, v2133._countAndFlagsBits, v2133._object, v2175, v2132, a6, v2195, v2164, a9, v2151, a11, a12, a13, v2128, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30 & 1);
          a25, v429, v430, v431, v432, v433, v434, v435, v1368, v1445, v1522, v1599, v1676, v1753, v1830, v1907, v1984, v2061;
          a27, v436, v437, v438, v439, v440, v441, v442, v1369, v1446, v1523, v1600, v1677, v1754, v1831, v1908, v1985, v2062;
          a29, v443, v444, v445, v446, v447, v448, v449, v1370, v1447, v1524, v1601, v1678, v1755, v1832, v1909, v1986, v2063;
          sub_100002BF0(a22, a23, v450, v451, v452, v453, v454, v455);
          v456 = a21;
          sub_100002BF0(a20, a21, v457, v458, v459, v460, v461, v462);
          sub_100002BF0(a18, a19, v463, v464, v465, v466, v467, v468);
          sub_100002BF0(a16, a17, v469, v470, v471, v472, v473, v474);
          0xEF2079656B2D6E6FLL, v475, v476, v477, v478, v479, v480, v481, v1371, v1448, v1525, v1602, v1679, v1756, v1833, v1910, v1987, v2064;
          v2133._object, v482, v483, v484, v485, v486, v487, v488, v1372, v1449, v1526, v1603, v1680, v1757, v1834, v1911, v1988, v2065;

          v489 = a18;
          v490 = a11;
          v491 = a16;
          v492 = v2190;

          a9, v493, v494, v495, v496, v497, v498, v499, v1373, v1450, v1527, v1604, v1681, v1758, v1835, v1912, v1989, v2066;

          a11, v500, v501, v502, v503, v504, v505, v506, v1374, v1451, v1528, v1605, v1682, v1759, v1836, v1913, v1990, v2067;
          v507 = a13;
          a13, v508, v509, v510, v511, v512, v513, v514, v1375, v1452, v1529, v1606, v1683, v1760, v1837, v1914, v1991, v2068;

          a15, v515, v516, v517, v518, v519, v520, v521, v1376, v1453, v1530, v1607, v1684, v1761, v1838, v1915, v1992, v2069;
LABEL_51:
          v866 = v428;
          v428, v522, v523, v524, v525, v526, v527, v528, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;

          v507, v867, v868, v869, v870, v871, v872, v873, v1390, v1467, v1544, v1621, v1698, v1775, v1852, v1929, v2006, v2083;
          v490, v874, v875, v876, v877, v878, v879, v880, v1391, v1468, v1545, v1622, v1699, v1776, v1853, v1930, v2007, v2084;

          a9, v881, v882, v883, v884, v885, v886, v887, v1392, v1469, v1546, v1623, v1700, v1777, v1854, v1931, v2008, v2085;
          sub_100002BF0(v491, a17, v888, v889, v890, v891, v892, v893);
          v894 = v491;
          sub_100002BF0(v489, a19, v895, v896, v897, v898, v899, v900);
          sub_100002BF0(a20, v456, v901, v902, v903, v904, v905, v906);
          v907 = v490;
          sub_100002BF0(a22, a23, v908, v909, v910, v911, v912, v913);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v914 = v866;
          v156 = v907;
          sub_100002BF0(a22, a23, v915, v916, v917, v918, v919, v920);
          v208 = v456;
          sub_100002BF0(a20, v456, v921, v922, v923, v924, v925, v926);
          sub_100002BF0(v489, a19, v927, v928, v929, v930, v931, v932);
          v933 = v894;
          v227 = v914;
          v229 = a13;
          sub_100002BF0(v933, a17, v934, v935, v936, v937, v938, v939);

          v705 = v2190;
          a9, v940, v941, v942, v943, v944, v945, v946, v1393, v1470, v1547, v1624, v1701, v1778, v1855, v1932, v2009, v2086;

          v92 = a19;
          v156, v947, v948, v949, v950, v951, v952, v953, v1394, v1471, v1548, v1625, v1702, v1779, v1856, v1933, v2010, v2087;
          a13, v954, v955, v956, v957, v958, v959, v960, v1395, v1472, v1549, v1626, v1703, v1780, v1857, v1934, v2011, v2088;

          v227, v961, v962, v963, v964, v965, v966, v967, v1396, v1473, v1550, v1627, v1704, v1781, v1858, v1935, v2012, v2089;
          v228 = v2195;
          goto LABEL_52;
        }
      }
    }

    v2178 = v2192;

    v2167 = v2194;

    v2154 = v40;

    v2142 = v2190;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);

    v2179 = v2178;

    v810 = v2167;

    v811 = v2154;

    v812 = v2142;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);
    v813 = qword_100297520;

    if (v813 != -1)
    {
      swift_once();
    }

    v814 = sub_100216774();
    sub_100002648(v814, qword_10029D160);
    v815 = sub_100216754();
    v816 = sub_100216C74();
    if (os_log_type_enabled(v815, v816))
    {
      v817 = swift_slowAlloc();
      v818 = swift_slowAlloc();
      v2196[0] = v818;
      *v817 = 136446210;
      v2197 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v819 = sub_100216994();
      v821 = v820;
      v822 = sub_100005FB0(v819, v820, v2196);
      v821, v823, v824, v825, v826, v827, v828, v829, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;
      *(v817 + 4) = v822;
      _os_log_impl(&_mh_execute_header, v815, v816, "Unable to load signing key: %{public}s", v817, 0xCu);
      sub_100006128(v818, v830, v831, v832, v833, v834, v835, v836);
    }

    v491 = a16;
    v837 = sub_100216754();
    v838 = sub_100216C74();
    if (os_log_type_enabled(v837, v838))
    {
      v839 = swift_slowAlloc();
      v840 = swift_slowAlloc();
      v2196[0] = v840;
      *v839 = 136446210;
      v2197 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v841 = sub_100216994();
      v843 = v842;
      v844 = sub_100005FB0(v841, v842, v2196);
      v843, v845, v846, v847, v848, v849, v850, v851, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;
      *(v839 + 4) = v844;
      _os_log_impl(&_mh_execute_header, v837, v838, "Don't have my own peer keys; can't establish: %{public}s", v839, 0xCu);
      sub_100006128(v840, v852, v853, v854, v855, v856, v857, v858);
    }

    v456 = a21;
    v428 = a15;
    v492 = v2190;
    [v2179 sendMetricWithResult:0 error:0];
    a6(0, 0, _swiftEmptyArrayStorage, 0, 0);
    v2195, v859, v860, v861, v862, v863, v864, v865;

    v2175 = 0;
    v489 = a18;
    v490 = a11;
    v507 = a13;
    goto LABEL_51;
  }

  if (v44 == 1)
  {
    sub_1000561D0();
    v2135 = swift_allocError();
    *v252 = xmmword_100225F90;
    *(v252 + 16) = 13;
    v2173 = v2192;

    v2160 = v2194;

    v2147 = v40;

    v2138 = v2190;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);

    v2174 = v2173;

    v2161 = v2160;

    v2148 = v2147;

    v2139 = v2138;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);
    v253 = qword_100297520;

    if (v253 != -1)
    {
      swift_once();
    }

    v254 = sub_100216774();
    sub_100002648(v254, qword_10029D160);
    swift_errorRetain();
    v255 = sub_100216754();
    v256 = sub_100216C74();

    if (os_log_type_enabled(v255, v256))
    {
      v257 = swift_slowAlloc();
      v258 = swift_slowAlloc();
      v2196[0] = v258;
      *v257 = 136446210;
      v2197 = v2135;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v259 = sub_100216994();
      v261 = v260;
      v262 = sub_100005FB0(v259, v260, v2196);
      v261, v263, v264, v265, v266, v267, v268, v269, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;
      *(v257 + 4) = v262;
      _os_log_impl(&_mh_execute_header, v255, v256, "Unable to load signing key: %{public}s", v257, 0xCu);
      sub_100006128(v258, v270, v271, v272, v273, v274, v275, v276);
    }

    v277 = a18;
    v278 = a16;
    swift_errorRetain();
    v279 = sub_100216754();
    v280 = sub_100216C74();

    v281 = v2135;
    if (os_log_type_enabled(v279, v280))
    {
      v282 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      v2196[0] = v283;
      *v282 = 136446210;
      v2197 = v2135;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v284 = sub_100216994();
      v286 = v285;
      v287 = sub_100005FB0(v284, v285, v2196);
      v288 = v286;
      v281 = v2135;
      v288, v289, v290, v291, v292, v293, v294, v295, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;
      *(v282 + 4) = v287;
      _os_log_impl(&_mh_execute_header, v279, v280, "Don't have my own peer keys; can't establish: %{public}s", v282, 0xCu);
      sub_100006128(v283, v296, v297, v298, v299, v300, v301, v302);
      v277 = a18;
      v278 = a16;
    }

    v303 = sub_100216144();
    [v2174 sendMetricWithResult:0 error:v303];

    a6(0, 0, _swiftEmptyArrayStorage, 0, v281);
    a15, v304, v305, v306, v307, v308, v309, v310, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;

    a13, v311, v312, v313, v314, v315, v316, v317, v1361, v1438, v1515, v1592, v1669, v1746, v1823, v1900, v1977, v2054;
    a11, v318, v319, v320, v321, v322, v323, v324, v1362, v1439, v1516, v1593, v1670, v1747, v1824, v1901, v1978, v2055;

    a9, v325, v326, v327, v328, v329, v330, v331, v1363, v1440, v1517, v1594, v1671, v1748, v1825, v1902, v1979, v2056;
    v2195, v332, v333, v334, v335, v336, v337, v338;

    sub_100002BF0(v278, a17, v339, v340, v341, v342, v343, v344);
    sub_100002BF0(v277, a19, v345, v346, v347, v348, v349, v350);
    sub_100002BF0(a20, a21, v351, v352, v353, v354, v355, v356);
    sub_100002BF0(a22, a23, v357, v358, v359, v360, v361, v362);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v363 = v2195;
    v229 = a13;
    sub_100002BF0(a22, a23, v364, v365, v366, v367, v368, v369);
    v208 = a21;
    sub_100002BF0(a20, a21, v370, v371, v372, v373, v374, v375);
    sub_100002BF0(a18, a19, v376, v377, v378, v379, v380, v381);
    sub_100002BF0(v278, a17, v382, v383, v384, v385, v386, v387);

    v388 = v2174;
    v2195, v389, v390, v391, v392, v393, v394, v395;

    v156 = a11;
    v227 = a15;
    v92 = a19;
    a9, v396, v397, v398, v399, v400, v401, v402, v1364, v1441, v1518, v1595, v1672, v1749, v1826, v1903, v1980, v2057;

    a11, v403, v404, v405, v406, v407, v408, v409, v1365, v1442, v1519, v1596, v1673, v1750, v1827, v1904, v1981, v2058;
    a13, v410, v411, v412, v413, v414, v415, v416, v1366, v1443, v1520, v1597, v1674, v1751, v1828, v1905, v1982, v2059;

    v424 = a15;
  }

  else
  {
    if (v44 == 2)
    {
      v2137 = [v43 error];
      v2169 = v2192;

      v2156 = v2194;

      v2144 = v40;

      v2130 = v2190;

      sub_100012558(a16, a17);
      sub_100012558(a18, a19);
      sub_100012558(a20, a21);
      sub_100012558(a22, a23);

      v2134 = v2169;

      v2170 = v2156;

      v2157 = v2144;

      v2145 = v2130;

      sub_100012558(a16, a17);
      sub_100012558(a18, a19);
      sub_100012558(a20, a21);
      sub_100012558(a22, a23);
      v45 = qword_100297520;

      if (v45 != -1)
      {
        swift_once();
      }

      v46 = sub_100216774();
      sub_100002648(v46, qword_10029D160);
      swift_errorRetain();
      v47 = sub_100216754();
      v48 = sub_100216C74();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v2196[0] = v50;
        *v49 = 136446210;
        v2197 = v2137;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v51 = sub_100216994();
        v53 = v52;
        v54 = sub_100005FB0(v51, v52, v2196);
        v53, v55, v56, v57, v58, v59, v60, v61, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;
        *(v49 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v47, v48, "Unable to load signing key: %{public}s", v49, 0xCu);
        sub_100006128(v50, v62, v63, v64, v65, v66, v67, v68);
      }

      v69 = a16;
      swift_errorRetain();
      v70 = sub_100216754();
      v71 = sub_100216C74();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v2196[0] = v73;
        *v72 = 136446210;
        v2197 = v2137;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v74 = sub_100216994();
        v76 = v75;
        v77 = sub_100005FB0(v74, v75, v2196);
        v76, v78, v79, v80, v81, v82, v83, v84, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;
        *(v72 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v70, v71, "Don't have my own peer keys; can't establish: %{public}s", v72, 0xCu);
        sub_100006128(v73, v85, v86, v87, v88, v89, v90, v91);
        v69 = a16;
      }

      v92 = a19;
      if (v2137)
      {
        v93 = sub_100216144();
      }

      else
      {
        v93 = 0;
      }

      [v2134 sendMetricWithResult:0 error:v93];

      a6(0, 0, _swiftEmptyArrayStorage, 0, v2137);
      a15, v706, v707, v708, v709, v710, v711, v712, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;

      a13, v713, v714, v715, v716, v717, v718, v719, v1384, v1461, v1538, v1615, v1692, v1769, v1846, v1923, v2000, v2077;
      a11, v720, v721, v722, v723, v724, v725, v726, v1385, v1462, v1539, v1616, v1693, v1770, v1847, v1924, v2001, v2078;

      a9, v727, v728, v729, v730, v731, v732, v733, v1386, v1463, v1540, v1617, v1694, v1771, v1848, v1925, v2002, v2079;
      v2195, v734, v735, v736, v737, v738, v739, v740;

      sub_100002BF0(v69, a17, v741, v742, v743, v744, v745, v746);
      sub_100002BF0(a18, a19, v747, v748, v749, v750, v751, v752);
      sub_100002BF0(a20, a21, v753, v754, v755, v756, v757, v758);
      sub_100002BF0(a22, a23, v759, v760, v761, v762, v763, v764);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      sub_100002BF0(a22, a23, v765, v766, v767, v768, v769, v770);
      v208 = a21;
      sub_100002BF0(a20, a21, v771, v772, v773, v774, v775, v776);
      sub_100002BF0(a18, a19, v777, v778, v779, v780, v781, v782);
      sub_100002BF0(a16, a17, v783, v784, v785, v786, v787, v788);

      v156 = a11;
      v228 = v2195;

      v229 = a13;
      v227 = a15;
      a9, v789, v790, v791, v792, v793, v794, v795, v1387, v1464, v1541, v1618, v1695, v1772, v1849, v1926, v2003, v2080;

      a11, v796, v797, v798, v799, v800, v801, v802, v1388, v1465, v1542, v1619, v1696, v1773, v1850, v1927, v2004, v2081;
      v251 = a13;
LABEL_42:
      v251, v244, v245, v246, v247, v248, v249, v250, v1360, v1437, v1514, v1591, v1668, v1745, v1822, v1899, v1976, v2053;

      v227, v803, v804, v805, v806, v807, v808, v809, v1389, v1466, v1543, v1620, v1697, v1774, v1851, v1928, v2005, v2082;
      v705 = v2190;
      goto LABEL_52;
    }

    sub_1000561D0();
    v2136 = swift_allocError();
    *v529 = xmmword_100225FA0;
    *(v529 + 16) = 13;
    v2176 = v2192;

    v2165 = v2194;

    v2152 = v40;

    v2140 = v2190;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);

    v2177 = v2176;

    v2166 = v2165;

    v2153 = v2152;

    v2141 = v2140;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);
    v530 = qword_100297520;

    if (v530 != -1)
    {
      swift_once();
    }

    v531 = sub_100216774();
    sub_100002648(v531, qword_10029D160);
    swift_errorRetain();
    v532 = sub_100216754();
    v533 = sub_100216C74();

    if (os_log_type_enabled(v532, v533))
    {
      v534 = swift_slowAlloc();
      v535 = swift_slowAlloc();
      v2196[0] = v535;
      *v534 = 136446210;
      v2197 = v2136;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v536 = sub_100216994();
      v538 = v537;
      v539 = sub_100005FB0(v536, v537, v2196);
      v538, v540, v541, v542, v543, v544, v545, v546, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;
      *(v534 + 4) = v539;
      _os_log_impl(&_mh_execute_header, v532, v533, "Unable to load signing key: %{public}s", v534, 0xCu);
      sub_100006128(v535, v547, v548, v549, v550, v551, v552, v553);
    }

    v554 = a17;
    swift_errorRetain();
    v555 = sub_100216754();
    v556 = sub_100216C74();

    v557 = v2136;
    if (os_log_type_enabled(v555, v556))
    {
      v558 = swift_slowAlloc();
      v559 = swift_slowAlloc();
      v2196[0] = v559;
      *v558 = 136446210;
      v2197 = v2136;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v560 = sub_100216994();
      v562 = v561;
      v563 = sub_100005FB0(v560, v561, v2196);
      v564 = v562;
      v557 = v2136;
      v564, v565, v566, v567, v568, v569, v570, v571, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;
      *(v558 + 4) = v563;
      _os_log_impl(&_mh_execute_header, v555, v556, "Don't have my own peer keys; can't establish: %{public}s", v558, 0xCu);
      sub_100006128(v559, v572, v573, v574, v575, v576, v577, v578);
      v554 = a17;
    }

    v579 = sub_100216144();
    [v2177 sendMetricWithResult:0 error:v579];

    a6(0, 0, _swiftEmptyArrayStorage, 0, v557);
    a15, v580, v581, v582, v583, v584, v585, v586, v1354, v1431, v1508, v1585, v1662, v1739, v1816, v1893, v1970, v2047;

    a13, v587, v588, v589, v590, v591, v592, v593, v1377, v1454, v1531, v1608, v1685, v1762, v1839, v1916, v1993, v2070;
    a11, v594, v595, v596, v597, v598, v599, v600, v1378, v1455, v1532, v1609, v1686, v1763, v1840, v1917, v1994, v2071;

    a9, v601, v602, v603, v604, v605, v606, v607, v1379, v1456, v1533, v1610, v1687, v1764, v1841, v1918, v1995, v2072;
    v2195, v608, v609, v610, v611, v612, v613, v614;

    sub_100002BF0(a16, v554, v615, v616, v617, v618, v619, v620);
    sub_100002BF0(a18, a19, v621, v622, v623, v624, v625, v626);
    sub_100002BF0(a20, a21, v627, v628, v629, v630, v631, v632);
    sub_100002BF0(a22, a23, v633, v634, v635, v636, v637, v638);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v363 = v2195;
    v229 = a13;
    sub_100002BF0(a22, a23, v639, v640, v641, v642, v643, v644);
    v208 = a21;
    sub_100002BF0(a20, a21, v645, v646, v647, v648, v649, v650);
    sub_100002BF0(a18, a19, v651, v652, v653, v654, v655, v656);
    sub_100002BF0(a16, a17, v657, v658, v659, v660, v661, v662);

    v388 = v2177;
    v2195, v663, v664, v665, v666, v667, v668, v669;

    v156 = a11;
    v227 = a15;
    v92 = a19;
    a9, v670, v671, v672, v673, v674, v675, v676, v1380, v1457, v1534, v1611, v1688, v1765, v1842, v1919, v1996, v2073;

    a11, v677, v678, v679, v680, v681, v682, v683, v1381, v1458, v1535, v1612, v1689, v1766, v1843, v1920, v1997, v2074;
    a13, v684, v685, v686, v687, v688, v689, v690, v1382, v1459, v1536, v1613, v1690, v1767, v1844, v1921, v1998, v2075;

    v424 = a15;
  }

  v424, v417, v418, v419, v420, v421, v422, v423, v1367, v1444, v1521, v1598, v1675, v1752, v1829, v1906, v1983, v2060;

  v228 = v363;
  v363, v691, v692, v693, v694, v695, v696, v697;

  v705 = v2190;
LABEL_52:
  v227, v698, v699, v700, v701, v702, v703, v704, v1383, v1460, v1537, v1614, v1691, v1768, v1845, v1922, v1999, v2076;

  v229, v968, v969, v970, v971, v972, v973, v974, v1397, v1474, v1551, v1628, v1705, v1782, v1859, v1936, v2013, v2090;
  v156, v975, v976, v977, v978, v979, v980, v981, v1398, v1475, v1552, v1629, v1706, v1783, v1860, v1937, v2014, v2091;

  a9, v982, v983, v984, v985, v986, v987, v988, v1399, v1476, v1553, v1630, v1707, v1784, v1861, v1938, v2015, v2092;
  sub_100002BF0(a16, a17, v989, v990, v991, v992, v993, v994);
  sub_100002BF0(a18, v92, v995, v996, v997, v998, v999, v1000);
  sub_100002BF0(a20, v208, v1001, v1002, v1003, v1004, v1005, v1006);
  sub_100002BF0(a22, a23, v1007, v1008, v1009, v1010, v1011, v1012);
  v227, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1400, v1477, v1554, v1631, v1708, v1785, v1862, v1939, v2016, v2093;

  v229, v1020, v1021, v1022, v1023, v1024, v1025, v1026, v1401, v1478, v1555, v1632, v1709, v1786, v1863, v1940, v2017, v2094;
  v156, v1027, v1028, v1029, v1030, v1031, v1032, v1033, v1402, v1479, v1556, v1633, v1710, v1787, v1864, v1941, v2018, v2095;

  a9, v1034, v1035, v1036, v1037, v1038, v1039, v1040, v1403, v1480, v1557, v1634, v1711, v1788, v1865, v1942, v2019, v2096;
  v228, v1041, v1042, v1043, v1044, v1045, v1046, v1047;

  a29, v1048, v1049, v1050, v1051, v1052, v1053, v1054, v1404, v1481, v1558, v1635, v1712, v1789, v1866, v1943, v2020, v2097;
  a27, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1405, v1482, v1559, v1636, v1713, v1790, v1867, v1944, v2021, v2098;
  a25, v1062, v1063, v1064, v1065, v1066, v1067, v1068, v1406, v1483, v1560, v1637, v1714, v1791, v1868, v1945, v2022, v2099;
  sub_100002BF0(a16, a17, v1069, v1070, v1071, v1072, v1073, v1074);
  sub_100002BF0(a18, a19, v1075, v1076, v1077, v1078, v1079, v1080);
  sub_100002BF0(a20, v208, v1081, v1082, v1083, v1084, v1085, v1086);
  sub_100002BF0(a22, a23, v1087, v1088, v1089, v1090, v1091, v1092);
  v227, v1093, v1094, v1095, v1096, v1097, v1098, v1099, v1407, v1484, v1561, v1638, v1715, v1792, v1869, v1946, v2023, v2100;

  v229, v1100, v1101, v1102, v1103, v1104, v1105, v1106, v1408, v1485, v1562, v1639, v1716, v1793, v1870, v1947, v2024, v2101;
  v156, v1107, v1108, v1109, v1110, v1111, v1112, v1113, v1409, v1486, v1563, v1640, v1717, v1794, v1871, v1948, v2025, v2102;

  a9, v1114, v1115, v1116, v1117, v1118, v1119, v1120, v1410, v1487, v1564, v1641, v1718, v1795, v1872, v1949, v2026, v2103;
  v228, v1121, v1122, v1123, v1124, v1125, v1126, v1127;

  a29, v1128, v1129, v1130, v1131, v1132, v1133, v1134, v1411, v1488, v1565, v1642, v1719, v1796, v1873, v1950, v2027, v2104;
  a27, v1135, v1136, v1137, v1138, v1139, v1140, v1141, v1412, v1489, v1566, v1643, v1720, v1797, v1874, v1951, v2028, v2105;
  a25, v1142, v1143, v1144, v1145, v1146, v1147, v1148, v1413, v1490, v1567, v1644, v1721, v1798, v1875, v1952, v2029, v2106;
  sub_100002BF0(a16, a17, v1149, v1150, v1151, v1152, v1153, v1154);
  sub_100002BF0(a18, a19, v1155, v1156, v1157, v1158, v1159, v1160);
  sub_100002BF0(a20, v208, v1161, v1162, v1163, v1164, v1165, v1166);
  sub_100002BF0(a22, a23, v1167, v1168, v1169, v1170, v1171, v1172);
  a15, v1173, v1174, v1175, v1176, v1177, v1178, v1179, v1414, v1491, v1568, v1645, v1722, v1799, v1876, v1953, v2030, v2107;

  a13, v1180, v1181, v1182, v1183, v1184, v1185, v1186, v1415, v1492, v1569, v1646, v1723, v1800, v1877, v1954, v2031, v2108;
  a11, v1187, v1188, v1189, v1190, v1191, v1192, v1193, v1416, v1493, v1570, v1647, v1724, v1801, v1878, v1955, v2032, v2109;

  a9, v1194, v1195, v1196, v1197, v1198, v1199, v1200, v1417, v1494, v1571, v1648, v1725, v1802, v1879, v1956, v2033, v2110;
  v2195, v1201, v1202, v1203, v1204, v1205, v1206, v1207;

  a29, v1208, v1209, v1210, v1211, v1212, v1213, v1214, v1418, v1495, v1572, v1649, v1726, v1803, v1880, v1957, v2034, v2111;
  a27, v1215, v1216, v1217, v1218, v1219, v1220, v1221, v1419, v1496, v1573, v1650, v1727, v1804, v1881, v1958, v2035, v2112;
  a25, v1222, v1223, v1224, v1225, v1226, v1227, v1228, v1420, v1497, v1574, v1651, v1728, v1805, v1882, v1959, v2036, v2113;
  sub_100002BF0(a16, a17, v1229, v1230, v1231, v1232, v1233, v1234);
  sub_100002BF0(a18, a19, v1235, v1236, v1237, v1238, v1239, v1240);
  sub_100002BF0(a20, a21, v1241, v1242, v1243, v1244, v1245, v1246);
  sub_100002BF0(a22, a23, v1247, v1248, v1249, v1250, v1251, v1252);
  a15, v1253, v1254, v1255, v1256, v1257, v1258, v1259, v1421, v1498, v1575, v1652, v1729, v1806, v1883, v1960, v2037, v2114;

  a13, v1260, v1261, v1262, v1263, v1264, v1265, v1266, v1422, v1499, v1576, v1653, v1730, v1807, v1884, v1961, v2038, v2115;
  a11, v1267, v1268, v1269, v1270, v1271, v1272, v1273, v1423, v1500, v1577, v1654, v1731, v1808, v1885, v1962, v2039, v2116;

  a9, v1274, v1275, v1276, v1277, v1278, v1279, v1280, v1424, v1501, v1578, v1655, v1732, v1809, v1886, v1963, v2040, v2117;
  v2195, v1281, v1282, v1283, v1284, v1285, v1286, v1287;

  a29, v1288, v1289, v1290, v1291, v1292, v1293, v1294, v1425, v1502, v1579, v1656, v1733, v1810, v1887, v1964, v2041, v2118;
  a27, v1295, v1296, v1297, v1298, v1299, v1300, v1301, v1426, v1503, v1580, v1657, v1734, v1811, v1888, v1965, v2042, v2119;
  a25, v1302, v1303, v1304, v1305, v1306, v1307, v1308, v1427, v1504, v1581, v1658, v1735, v1812, v1889, v1966, v2043, v2120;
  sub_100002BF0(a16, a17, v1309, v1310, v1311, v1312, v1313, v1314);
  sub_100002BF0(a18, a19, v1315, v1316, v1317, v1318, v1319, v1320);
  sub_100002BF0(a20, a21, v1321, v1322, v1323, v1324, v1325, v1326);
  sub_100002BF0(a22, a23, v1327, v1328, v1329, v1330, v1331, v1332);
  a29, v1333, v1334, v1335, v1336, v1337, v1338, v1339, v1428, v1505, v1582, v1659, v1736, v1813, v1890, v1967, v2044, v2121;
  a27, v1340, v1341, v1342, v1343, v1344, v1345, v1346, v1429, v1506, v1583, v1660, v1737, v1814, v1891, v1968, v2045, v2122;
  a25, v1347, v1348, v1349, v1350, v1351, v1352, v1353, v1430, v1507, v1584, v1661, v1738, v1815, v1892, v1969, v2046, v2123;
}

uint64_t sub_100197B58(uint64_t a1, uint64_t a2, void *a3, _TtC18TrustedPeersHelper6Client *a4, void (*a5)(void, uint64_t), _TtC18TrustedPeersHelper6Client *a6, void *a7, uint64_t a8, _TtC18TrustedPeersHelper6Client *a9, _TtC18TrustedPeersHelper6Client *a10, _TtC18TrustedPeersHelper6Client *a11, void *a12)
{
  v391 = a3;

  v14 = a7;

  v15 = a12;
  v16 = objc_opt_self();
  swift_retain_n();
  v17 = v14;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v18 = v15;
  v19 = v17;
  v20 = v18;
  v21 = v19;
  v22 = v20;
  v23 = v21;
  v24 = v22;
  v25 = [v16 defaultManager];
  v26 = sub_100216964();
  v403 = v25;
  v27 = [v25 identityForIdentifier:v26];

  v405 = v24;
  v406 = a6;
  if (!v27)
  {
    v79 = qword_100297520;
    swift_retain_n();
    v80 = v23;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v81 = v24;
    v82 = v80;
    v83 = v81;
    if (v79 != -1)
    {
      swift_once();
    }

    v84 = sub_100216774();
    sub_100002648(v84, qword_10029D160);
    v85 = sub_100216754();
    v86 = sub_100216C74();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v407[0] = v88;
      *v87 = 136446210;
      v408 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v89 = sub_100216994();
      v91 = v90;
      v92 = sub_100005FB0(v89, v90, v407);
      v91, v93, v94, v95, v96, v97, v98, v99, v339, v345, v351, v357, v363, v369, v375, v381, v386, v391;
      *(v87 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v85, v86, "Unable to load signing key: %{public}s", v87, 0xCu);
      sub_100006128(v88, v100, v101, v102, v103, v104, v105, v106);
    }

    v107 = sub_100216754();
    v108 = sub_100216C74();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v407[0] = v110;
      *v109 = 136446210;
      v408 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v111 = sub_100216994();
      v113 = v112;
      v114 = sub_100005FB0(v111, v112, v407);
      v113, v115, v116, v117, v118, v119, v120, v121, v339, v345, v351, v357, v363, v369, v375, v381, v386, v391;
      *(v109 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v107, v108, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v109, 0xCu);
      sub_100006128(v110, v122, v123, v124, v125, v126, v127, v128);
    }

    v78 = v23;
    a5(0, 0);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    goto LABEL_19;
  }

  v28 = [v27 resultType];
  v402 = v27;
  if (!v28)
  {
    v179 = [v27 value];
    if (v179)
    {
      v180 = v179;
      v181 = [v179 keyPair];

      if (v181)
      {
        objc_opt_self();
        v182 = swift_dynamicCastObjCClass();
        if (v182)
        {
          v183 = v182;
          v407[0] = 0x6974707972636E65;
          v407[1] = 0xEF2079656B2D6E6FLL;
          swift_retain_n();
          v184 = v23;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v185 = v24;
          v370 = v184;
          v186 = v185;
          v376 = v181;
          v409._countAndFlagsBits = v391;
          v409._object = a4;
          sub_100216A14(v409);

          v187 = v370;

          v188 = v186;
          v189 = v376;

          sub_10019361C(0x6974707972636E65, 0xEF2079656B2D6E6FLL, v391, a4, v183, a5, v406, v187, a8, a9, a10, a11, v188);
          v78 = v23;
          0xEF2079656B2D6E6FLL, v190, v191, v192, v193, v194, v195, v196, v340, v346, v352, v358, v364, v370, v376, 0x6974707972636E65, v183, v391;
          a4, v197, v198, v199, v200, v201, v202, v203, v341, v347, v353, v359, v365, v371, v377, v382, v387, v392;

          v204 = v402;

          a9, v205, v206, v207, v208, v209, v210, v211, v342, v348, v354, v360, v366, v372, v378, v383, v388, v393;
          a10, v212, v213, v214, v215, v216, v217, v218, v343, v349, v355, v361, v367, v373, v379, v384, v389, v394;
          a11, v219, v220, v221, v222, v223, v224, v225, v344, v350, v356, v362, v368, v374, v380, v385, v390, v395;

LABEL_46:

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          goto LABEL_47;
        }
      }
    }

    v281 = qword_100297520;
    swift_retain_n();
    v282 = v23;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v283 = v24;
    v284 = v282;
    v285 = v283;
    if (v281 != -1)
    {
      swift_once();
    }

    v286 = sub_100216774();
    sub_100002648(v286, qword_10029D160);
    v287 = sub_100216754();
    v288 = sub_100216C74();
    if (os_log_type_enabled(v287, v288))
    {
      v289 = swift_slowAlloc();
      v290 = swift_slowAlloc();
      v407[0] = v290;
      *v289 = 136446210;
      v408 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v291 = sub_100216994();
      v293 = v292;
      v294 = sub_100005FB0(v291, v292, v407);
      v293, v295, v296, v297, v298, v299, v300, v301, v339, v345, v351, v357, v363, v369, v375, v381, v386, v391;
      *(v289 + 4) = v294;
      _os_log_impl(&_mh_execute_header, v287, v288, "Unable to load signing key: %{public}s", v289, 0xCu);
      sub_100006128(v290, v302, v303, v304, v305, v306, v307, v308);
    }

    v309 = sub_100216754();
    v310 = sub_100216C74();
    if (os_log_type_enabled(v309, v310))
    {
      v311 = swift_slowAlloc();
      v312 = swift_slowAlloc();
      v407[0] = v312;
      *v311 = 136446210;
      v408 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v313 = sub_100216994();
      v315 = v314;
      v316 = sub_100005FB0(v313, v314, v407);
      v315, v317, v318, v319, v320, v321, v322, v323, v339, v345, v351, v357, v363, v369, v375, v381, v386, v391;
      *(v311 + 4) = v316;
      _os_log_impl(&_mh_execute_header, v309, v310, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v311, 0xCu);
      sub_100006128(v312, v324, v325, v326, v327, v328, v329, v330);
    }

    v78 = v23;
    v204 = v402;
    a5(0, 0);

    v406, v331, v332, v333, v334, v335, v336, v337;
    v183 = 0;
    goto LABEL_46;
  }

  if (v28 == 1)
  {
    sub_1000561D0();
    v129 = swift_allocError();
    *v130 = xmmword_100225F90;
    *(v130 + 16) = 13;
    v131 = qword_100297520;
    swift_retain_n();
    v132 = v23;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v133 = v24;
    v401 = v132;
    v398 = v133;
    if (v131 != -1)
    {
      swift_once();
    }

    v134 = sub_100216774();
    sub_100002648(v134, qword_10029D160);
    swift_errorRetain();
    v135 = sub_100216754();
    v136 = sub_100216C74();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v407[0] = v138;
      *v137 = 136446210;
      v408 = v129;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v139 = sub_100216994();
      v141 = v140;
      v142 = sub_100005FB0(v139, v140, v407);
      v141, v143, v144, v145, v146, v147, v148, v149, v339, v345, v351, v357, v363, v369, v375, v381, v386, v391;
      *(v137 + 4) = v142;
      _os_log_impl(&_mh_execute_header, v135, v136, "Unable to load signing key: %{public}s", v137, 0xCu);
      sub_100006128(v138, v150, v151, v152, v153, v154, v155, v156);
    }

    swift_errorRetain();
    v157 = sub_100216754();
    v158 = sub_100216C74();

    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v407[0] = v160;
      *v159 = 136446210;
      v408 = v129;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v161 = sub_100216994();
      v163 = v162;
      v164 = sub_100005FB0(v161, v162, v407);
      v163, v165, v166, v167, v168, v169, v170, v171, v339, v345, v351, v357, v363, v369, v375, v381, v386, v391;
      *(v159 + 4) = v164;
      _os_log_impl(&_mh_execute_header, v157, v158, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v159, 0xCu);
      sub_100006128(v160, v172, v173, v174, v175, v176, v177, v178);
    }

    goto LABEL_37;
  }

  if (v28 != 2)
  {
    sub_1000561D0();
    v129 = swift_allocError();
    *v226 = xmmword_100225FA0;
    *(v226 + 16) = 13;
    v227 = qword_100297520;
    swift_retain_n();
    v228 = v23;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v229 = v24;
    v401 = v228;
    v398 = v229;
    if (v227 != -1)
    {
      swift_once();
    }

    v230 = sub_100216774();
    sub_100002648(v230, qword_10029D160);
    swift_errorRetain();
    v231 = sub_100216754();
    v232 = sub_100216C74();

    if (os_log_type_enabled(v231, v232))
    {
      v233 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v407[0] = v234;
      *v233 = 136446210;
      v408 = v129;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v235 = sub_100216994();
      v237 = v236;
      v238 = sub_100005FB0(v235, v236, v407);
      v237, v239, v240, v241, v242, v243, v244, v245, v339, v345, v351, v357, v363, v369, v375, v381, v386, v391;
      *(v233 + 4) = v238;
      _os_log_impl(&_mh_execute_header, v231, v232, "Unable to load signing key: %{public}s", v233, 0xCu);
      sub_100006128(v234, v246, v247, v248, v249, v250, v251, v252);
    }

    swift_errorRetain();
    v157 = sub_100216754();
    v253 = sub_100216C74();

    if (os_log_type_enabled(v157, v253))
    {
      v254 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      v407[0] = v255;
      *v254 = 136446210;
      v408 = v129;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v256 = sub_100216994();
      v258 = v257;
      v259 = sub_100005FB0(v256, v257, v407);
      v258, v260, v261, v262, v263, v264, v265, v266, v339, v345, v351, v357, v363, v369, v375, v381, v386, v391;
      *(v254 + 4) = v259;
      _os_log_impl(&_mh_execute_header, v157, v253, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v254, 0xCu);
      sub_100006128(v255, v267, v268, v269, v270, v271, v272, v273);
    }

LABEL_37:

    v78 = v23;
    a5(0, v129);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v406, v274, v275, v276, v277, v278, v279, v280;
    goto LABEL_47;
  }

  v29 = [v27 error];
  v30 = qword_100297520;
  swift_retain_n();
  v31 = v23;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v32 = v24;
  v400 = v31;
  v397 = v32;
  if (v30 != -1)
  {
    swift_once();
  }

  v33 = sub_100216774();
  sub_100002648(v33, qword_10029D160);
  swift_errorRetain();
  v34 = sub_100216754();
  v35 = sub_100216C74();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v407[0] = v37;
    *v36 = 136446210;
    v408 = v29;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v38 = sub_100216994();
    v40 = v39;
    v41 = sub_100005FB0(v38, v39, v407);
    v40, v42, v43, v44, v45, v46, v47, v48, v339, v345, v351, v357, v363, v369, v375, v381, v386, v391;
    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v34, v35, "Unable to load signing key: %{public}s", v36, 0xCu);
    sub_100006128(v37, v49, v50, v51, v52, v53, v54, v55);
  }

  swift_errorRetain();
  v56 = sub_100216754();
  v57 = sub_100216C74();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v407[0] = v59;
    *v58 = 136446210;
    v408 = v29;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v60 = sub_100216994();
    v62 = v61;
    v63 = sub_100005FB0(v60, v61, v407);
    v62, v64, v65, v66, v67, v68, v69, v70, v339, v345, v351, v357, v363, v369, v375, v381, v386, v391;
    *(v58 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v56, v57, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v58, 0xCu);
    sub_100006128(v59, v71, v72, v73, v74, v75, v76, v77);
  }

  v78 = v23;
  a5(0, v29);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_19:

LABEL_47:

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

void sub_100198E8C(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), _TtC18TrustedPeersHelper6Client *a4, uint64_t a5, _TtC18TrustedPeersHelper6Client *a6)
{
  v22 = [objc_opt_self() defaultManager];
  v10 = sub_100216964();
  v21 = [v22 identityForIdentifier:v10];

  if (!v21)
  {
    sub_10010BA8C(0, 0, a3, a4, a5, a6);
    v13 = v22;
    goto LABEL_14;
  }

  v11 = [v21 resultType];
  if (!v11)
  {
    v17 = [v21 value];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 keyPair];

      if (!v19)
      {
LABEL_12:
        v17 = 0;
        goto LABEL_13;
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (!v17)
      {

        goto LABEL_12;
      }
    }

LABEL_13:
    v20 = v17;
    sub_10010BA8C(v17, 0, a3, a4, a5, a6);

    v13 = v20;
    goto LABEL_14;
  }

  if (v11 == 1)
  {
    sub_1000561D0();
    v15 = swift_allocError();
    v16 = xmmword_100225F90;
  }

  else
  {
    if (v11 == 2)
    {
      v12 = [v21 error];
      sub_10010BA8C(0, v12, a3, a4, a5, a6);

      v13 = v21;
LABEL_14:

      return;
    }

    sub_1000561D0();
    v15 = swift_allocError();
    v16 = xmmword_100225FA0;
  }

  *v14 = v16;
  *(v14 + 16) = 13;
  sub_10010BA8C(0, v15, a3, a4, a5, a6);
}

void sub_100199120(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, _TtC18TrustedPeersHelper6Client *a9, void *a10, void (*a11)(id), _TtC18TrustedPeersHelper6Client *a12)
{
  v328 = a6;
  v332 = a8;
  v326 = a5;
  v339 = a11;
  v14 = a7;

  v15 = a10;

  v16 = objc_opt_self();
  v17 = v14;
  swift_bridgeObjectRetain_n();
  v18 = v15;
  swift_retain_n();
  v19 = v17;
  v20 = v18;
  v21 = v19;
  v22 = v20;
  v23 = v21;
  v24 = v22;
  v25 = [v16 defaultManager];
  v26 = sub_100216964();
  v337 = v25;
  v27 = [v25 identityForIdentifier:v26];

  v342 = v23;
  if (!v27)
  {
    v61 = v23;
    v62 = qword_100297520;
    v63 = v61;
    swift_bridgeObjectRetain_n();
    v64 = v24;
    swift_retain_n();
    v65 = v63;
    v66 = v64;
    if (v62 != -1)
    {
      swift_once();
    }

    v67 = sub_100216774();
    sub_100002648(v67, qword_10029D160);
    v68 = sub_100216754();
    v69 = sub_100216C74();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock = v71;
      *v70 = 136446210;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v72 = sub_100216994();
      v74 = v73;
      v75 = sub_100005FB0(v72, v73, &aBlock);
      v74, v76, v77, v78, v79, v80, v81, v82, v310, v313, v316, v319, v326, v328, v332, v335, v337, a11;
      *(v70 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v68, v69, "No longer have signing key pair; can't sign distrust: %{public}s", v70, 0xCu);
      sub_100006128(v71, v83, v84, v85, v86, v87, v88, v89);
    }

    v90 = *&v65[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v91 = swift_allocObject();
    *v91->endpoint = v65;
    *v91->containerMap = v332;
    v92 = a9;
    *v91[1]._TtCs12_SwiftObject_opaque = a9;
    *&v91[1]._TtCs12_SwiftObject_opaque[8] = v66;
    v93 = swift_allocObject();
    *v93->endpoint = sub_1001A948C;
    *v93->containerMap = v91;
    v347 = sub_1001ACCC0;
    v348 = v93;
    aBlock = _NSConcreteStackBlock;
    v344 = 1107296256;
    v345 = sub_100109050;
    v346 = &unk_1002827E8;
    v94 = _Block_copy(&aBlock);
    v95 = v348;
    v27 = v65;

    v96 = v66;

    v95, v97, v98, v99, v100, v101, v102, v103;
    [v90 performBlockAndWait:v94];
    _Block_release(v94);
    LOBYTE(v94) = swift_isEscapingClosureAtFileLocation();
    v93, v104, v105, v106, v107, v108, v109, v110;
    if (v94)
    {
      __break(1u);
      goto LABEL_44;
    }

    v339(0);

    swift_bridgeObjectRelease_n();

    v118 = v91;
    goto LABEL_40;
  }

  v335 = a12;
  v28 = [v27 resultType];
  if (v28)
  {
    if (v28 == 1)
    {
      sub_1000561D0();
      v93 = swift_allocError();
      v120 = xmmword_100225F90;
    }

    else
    {
      if (v28 == 2)
      {
        v29 = [v27 error];
        v30 = qword_100297520;
        v31 = v23;
        swift_bridgeObjectRetain_n();
        v32 = v24;
        swift_retain_n();
        v33 = v31;
        v34 = v32;
        if (v30 != -1)
        {
          swift_once();
        }

        v35 = sub_100216774();
        sub_100002648(v35, qword_10029D160);
        swift_errorRetain();
        v36 = sub_100216754();
        v37 = sub_100216C74();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v320 = v27;
          v39 = swift_slowAlloc();
          aBlock = v39;
          *v38 = 136446210;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v40 = sub_100216994();
          v42 = v41;
          v43 = sub_100005FB0(v40, v41, &aBlock);
          v42, v44, v45, v46, v47, v48, v49, v50, v310, v313, v316, v320, v326, v328, v332, a12, v337, a11;
          *(v38 + 4) = v43;
          _os_log_impl(&_mh_execute_header, v36, v37, "No longer have signing key pair; can't sign distrust: %{public}s", v38, 0xCu);
          sub_100006128(v39, v51, v52, v53, v54, v55, v56, v57);
          v27 = v321;
        }

        v58 = v342;
        if (v29)
        {
          v59 = 0;
          v60 = 0;
LABEL_31:
          v339(v29);
          sub_100186C6C(v59, v60, v241, v242, v243, v244, v245, v246);

          swift_bridgeObjectRelease_n();

LABEL_42:
          swift_bridgeObjectRelease_n();

          return;
        }

        v330 = *&v33[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
        v60 = swift_allocObject();
        *(v60 + 16) = v33;
        *(v60 + 24) = v332;
        *(v60 + 32) = a9;
        *(v60 + 40) = v34;
        v222 = swift_allocObject();
        v59 = sub_1001ACE74;
        *v222->endpoint = sub_1001ACE74;
        *v222->containerMap = v60;
        v347 = sub_1001ACCC0;
        v348 = v222;
        aBlock = _NSConcreteStackBlock;
        v344 = 1107296256;
        v345 = sub_100109050;
        v346 = &unk_100282860;
        v223 = _Block_copy(&aBlock);
        v224 = v348;
        v225 = v33;

        v226 = v34;

        v224, v227, v228, v229, v230, v231, v232, v233;
        [v330 performBlockAndWait:v223];
        _Block_release(v223);
        LOBYTE(v223) = swift_isEscapingClosureAtFileLocation();
        v222, v234, v235, v236, v237, v238, v239, v240;
        if ((v223 & 1) == 0)
        {
          v58 = v342;
          goto LABEL_31;
        }

        goto LABEL_46;
      }

      sub_1000561D0();
      v93 = swift_allocError();
      v120 = xmmword_100225FA0;
    }

    *v119 = v120;
    *(v119 + 16) = 13;
    v189 = qword_100297520;
    v190 = v23;
    swift_bridgeObjectRetain_n();
    v191 = v24;
    swift_retain_n();
    v96 = v190;
    v92 = v191;
    if (v189 == -1)
    {
LABEL_25:
      v192 = sub_100216774();
      sub_100002648(v192, qword_10029D160);
      swift_errorRetain();
      v193 = sub_100216754();
      v194 = sub_100216C74();

      if (os_log_type_enabled(v193, v194))
      {
        v195 = swift_slowAlloc();
        v325 = v27;
        v196 = swift_slowAlloc();
        aBlock = v196;
        *v195 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v197 = sub_100216994();
        v199 = v198;
        v200 = sub_100005FB0(v197, v198, &aBlock);
        v199, v201, v202, v203, v204, v205, v206, v207, v310, v313, v316, v325, v326, v328, v332, v335, v337, v339;
        *(v195 + 4) = v200;
        _os_log_impl(&_mh_execute_header, v193, v194, "No longer have signing key pair; can't sign distrust: %{public}s", v195, 0xCu);
        sub_100006128(v196, v208, v209, v210, v211, v212, v213, v214);
        v27 = v319;
      }

      v58 = v342;
      v339(v93);

      swift_bridgeObjectRelease_n();

      a9, v215, v216, v217, v218, v219, v220, v221, v310, v313, v316, v319, v326, v328, v332, v335, v337, v339;

      goto LABEL_42;
    }

LABEL_44:
    swift_once();
    goto LABEL_25;
  }

  v121 = [v27 value];
  v322 = v27;
  if (!v121)
  {
LABEL_34:
    v247 = swift_allocObject();
    *(v247 + 16) = v23;
    *(v247 + 24) = v332;
    *(v247 + 32) = a9;
    *(v247 + 40) = v24;
    *(v247 + 48) = a11;
    *(v247 + 56) = a12;
    v248 = qword_100297520;
    v249 = v23;
    swift_bridgeObjectRetain_n();
    v250 = v24;
    swift_retain_n();
    v251 = v249;
    v331 = v250;
    if (v248 != -1)
    {
      swift_once();
    }

    v252 = sub_100216774();
    sub_100002648(v252, qword_10029D160);
    v253 = sub_100216754();
    v254 = sub_100216C74();
    if (os_log_type_enabled(v253, v254))
    {
      v255 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      aBlock = v256;
      *v255 = 136446210;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v257 = sub_100216994();
      v259 = v258;
      v260 = sub_100005FB0(v257, v258, &aBlock);
      v259, v261, v262, v263, v264, v265, v266, v267, v310, v313, v316, v322, v326, v331, v332, a12, v337, a11;
      *(v255 + 4) = v260;
      _os_log_impl(&_mh_execute_header, v253, v254, "No longer have signing key pair; can't sign distrust: %{public}s", v255, 0xCu);
      sub_100006128(v256, v268, v269, v270, v271, v272, v273, v274);
    }

    v275 = *&v251[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v276 = swift_allocObject();
    *v276->endpoint = v251;
    *v276->containerMap = v332;
    *v276[1]._TtCs12_SwiftObject_opaque = a9;
    *&v276[1]._TtCs12_SwiftObject_opaque[8] = v331;
    v277 = swift_allocObject();
    *v277->endpoint = sub_1001ACE74;
    *v277->containerMap = v276;
    v347 = sub_1001ACCC0;
    v348 = v277;
    aBlock = _NSConcreteStackBlock;
    v344 = 1107296256;
    v345 = sub_100109050;
    v346 = &unk_100282900;
    v278 = _Block_copy(&aBlock);
    v279 = v348;
    v280 = v251;

    v281 = v331;

    v279, v282, v283, v284, v285, v286, v287, v288;
    [v275 performBlockAndWait:v278];
    _Block_release(v278);
    LOBYTE(v278) = swift_isEscapingClosureAtFileLocation();
    v277, v289, v290, v291, v292, v293, v294, v295;
    if (v278)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v339(0);

    swift_bridgeObjectRelease_n();
    v335, v296, v297, v298, v299, v300, v301, v302;
    v247, v303, v304, v305, v306, v307, v308, v309;
    v118 = v276;
LABEL_40:
    v118, v111, v112, v113, v114, v115, v116, v117;
    goto LABEL_41;
  }

  v122 = v121;
  v123 = [v121 keyPair];

  if (!v123)
  {
    v23 = v342;
    goto LABEL_34;
  }

  objc_opt_self();
  v124 = swift_dynamicCastObjCClass();
  v23 = v342;
  if (!v124)
  {

    goto LABEL_34;
  }

  v125 = v124;
  v126 = swift_allocObject();
  v126[2] = v342;
  v126[3] = v332;
  v126[4] = a9;
  v126[5] = v24;
  v126[6] = a11;
  v126[7] = a12;
  v127 = v126;
  v317 = v126;
  v333 = *&a3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v128 = swift_allocObject();
  v128[2] = a3;
  v128[3] = a4;
  v128[4] = v326;
  v128[5] = v328;
  v128[6] = v125;
  v128[7] = sub_1001A94E8;
  v128[8] = v127;
  v129 = v128;
  v340 = v128;
  v130 = swift_allocObject();
  *v130->endpoint = sub_1001A9500;
  *v130->containerMap = v129;
  v347 = sub_1001ACCC0;
  v348 = v130;
  aBlock = _NSConcreteStackBlock;
  v344 = 1107296256;
  v345 = sub_100109050;
  v346 = &unk_1002829C8;
  v311 = _Block_copy(&aBlock);
  v131 = v348;
  v132 = v342;
  swift_bridgeObjectRetain_n();
  v133 = v24;
  swift_retain_n();
  v134 = v123;
  v135 = v132;
  v314 = v133;
  v136 = v134;
  v137 = a3;
  v138 = v135;

  v139 = v317;

  v131, v140, v141, v142, v143, v144, v145, v146;
  [v333 performBlockAndWait:v311];

  _Block_release(v311);
  LOBYTE(v135) = swift_isEscapingClosureAtFileLocation();

  a9, v147, v148, v149, v150, v151, v152, v153, v311, v314, v317, v322, v326, v328, v333, a12, v337, v340;
  a12, v154, v155, v156, v157, v158, v159, v160;
  v139, v161, v162, v163, v164, v165, v166, v167;
  v341, v168, v169, v170, v171, v172, v173, v174;
  v130, v175, v176, v177, v178, v179, v180, v181;
  if ((v135 & 1) == 0)
  {
    a9, v182, v183, v184, v185, v186, v187, v188, v312, v315, v318, v323, v327, v329, v334, v336, v338, v341;

LABEL_41:
    v58 = v342;
    goto LABEL_42;
  }

LABEL_47:
  __break(1u);
}

void sub_10019A168(uint64_t a1, uint64_t a2, uint64_t a3, _TtC18TrustedPeersHelper6Client *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_100216964();
  v16 = [v14 identityForIdentifier:v15];

  if (!v16)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v42 = sub_100216774();
    sub_100002648(v42, qword_10029D160);
    v43 = sub_100216754();
    v44 = sub_100216C74();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock = v46;
      *v45 = 136446210;
      v157 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v47 = sub_100216994();
      v49 = v48;
      v50 = sub_100005FB0(v47, v48, &aBlock);
      v49, v51, v52, v53, v54, v55, v56, v57, v146, v147, v148, aBlock, v152, v153, v154, v155, v156, v157;
      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "No longer have signing key pair; can't sign distrust: %{public}s", v45, 0xCu);
      sub_100006128(v46, v58, v59, v60, v61, v62, v63, v64);
    }

    (a3)(0);
    goto LABEL_33;
  }

  v17 = [v16 resultType];
  if (!v17)
  {
    v68 = [v16 value];
    if (v68)
    {
      v69 = v68;
      v70 = [v68 keyPair];

      if (v70)
      {
        objc_opt_self();
        v71 = swift_dynamicCastObjCClass();
        if (v71)
        {
          v72 = v71;
          v147 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
          v73 = swift_allocObject();
          v74 = a4;
          a4 = v73;
          *v73->endpoint = a5;
          *v73->containerMap = a6;
          *v73[1]._TtCs12_SwiftObject_opaque = a7;
          *&v73[1]._TtCs12_SwiftObject_opaque[8] = a8;
          *v73[1].endpoint = v72;
          *v73[1].containerMap = a3;
          *v73[2]._TtCs12_SwiftObject_opaque = v74;
          a3 = swift_allocObject();
          *(a3 + 16) = sub_1001ACBD4;
          *(a3 + 24) = a4;
          v155 = sub_1001ACCC0;
          v156 = a3;
          aBlock = _NSConcreteStackBlock;
          v152 = 1107296256;
          v153 = sub_100109050;
          v154 = &unk_100285600;
          v75 = _Block_copy(&aBlock);
          v146 = v156;
          v76 = v70;
          v77 = a5;

          v146, v78, v79, v80, v81, v82, v83, v84;
          [v147 performBlockAndWait:v75];

          _Block_release(v75);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          a4, v86, v87, v88, v89, v90, v91, v92;
          a3, v93, v94, v95, v96, v97, v98, v99;
          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
LABEL_21:
          sub_1000561D0();
          v66 = swift_allocError();
          v67 = xmmword_100225FA0;
          goto LABEL_22;
        }
      }
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v123 = sub_100216774();
    sub_100002648(v123, qword_10029D160);
    v124 = sub_100216754();
    v125 = sub_100216C74();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      aBlock = v127;
      *v126 = 136446210;
      v157 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v128 = sub_100216994();
      v130 = v129;
      v131 = sub_100005FB0(v128, v129, &aBlock);
      v130, v132, v133, v134, v135, v136, v137, v138, v146, v147, v148, aBlock, v152, v153, v154, v155, v156, v157;
      *(v126 + 4) = v131;
      _os_log_impl(&_mh_execute_header, v124, v125, "No longer have signing key pair; can't sign distrust: %{public}s", v126, 0xCu);
      sub_100006128(v127, v139, v140, v141, v142, v143, v144, v145);
    }

    (a3)(0);
LABEL_33:

    return;
  }

  if (v17 != 1)
  {
    if (v17 == 2)
    {
      v18 = [v16 error];
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v19 = sub_100216774();
      sub_100002648(v19, qword_10029D160);
      swift_errorRetain();
      v20 = sub_100216754();
      v21 = sub_100216C74();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v149 = a4;
        aBlock = swift_slowAlloc();
        v23 = aBlock;
        *v22 = 136446210;
        v157 = v18;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v24 = sub_100216994();
        v26 = v25;
        v27 = sub_100005FB0(v24, v25, &aBlock);
        v26, v28, v29, v30, v31, v32, v33, v34, v146, v147, v149, aBlock, v152, v153, v154, v155, v156, v157;
        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "No longer have signing key pair; can't sign distrust: %{public}s", v22, 0xCu);
        sub_100006128(v23, v35, v36, v37, v38, v39, v40, v41);
      }

      (a3)(v18);
      return;
    }

    goto LABEL_21;
  }

  sub_1000561D0();
  v66 = swift_allocError();
  v67 = xmmword_100225F90;
LABEL_22:
  *v65 = v67;
  *(v65 + 16) = 13;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v100 = sub_100216774();
  sub_100002648(v100, qword_10029D160);
  swift_errorRetain();
  v101 = sub_100216754();
  v102 = sub_100216C74();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v150 = a4;
    aBlock = swift_slowAlloc();
    v104 = aBlock;
    *v103 = 136446210;
    v157 = v66;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v105 = sub_100216994();
    v107 = v106;
    v108 = sub_100005FB0(v105, v106, &aBlock);
    v107, v109, v110, v111, v112, v113, v114, v115, v146, v147, v150, aBlock, v152, v153, v154, v155, v156, v157;
    *(v103 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v101, v102, "No longer have signing key pair; can't sign distrust: %{public}s", v103, 0xCu);
    sub_100006128(v104, v116, v117, v118, v119, v120, v121, v122);
  }

  (a3)(v66);
}

void sub_10019A9F0(uint64_t a1, uint64_t a2, uint64_t a3, _TtC18TrustedPeersHelper6Client *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_100216964();
  v16 = [v14 identityForIdentifier:v15];

  if (!v16)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v44 = sub_100216774();
    sub_100002648(v44, qword_10029D160);
    v45 = sub_100216754();
    v46 = sub_100216C74();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock = v48;
      *v47 = 136446210;
      v163 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v49 = sub_100216994();
      v51 = v50;
      v52 = sub_100005FB0(v49, v50, &aBlock);
      v51, v53, v54, v55, v56, v57, v58, v59, v152, v153, v154, aBlock, v158, v159, v160, v161, v162, v163;
      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "setPreapprovedKeys: no signing key pair: %{public}s", v47, 0xCu);
      sub_100006128(v48, v60, v61, v62, v63, v64, v65, v66);
    }

    sub_1000561D0();
    v67 = swift_allocError();
    *v68 = 0;
    *(v68 + 8) = 0;
    *(v68 + 16) = 13;
    (a3)(0, v67);

    goto LABEL_35;
  }

  v17 = [v16 resultType];
  if (!v17)
  {
    v72 = [v16 value];
    if (v72)
    {
      v73 = v72;
      v74 = [v72 keyPair];

      if (v74)
      {
        objc_opt_self();
        v75 = swift_dynamicCastObjCClass();
        if (v75)
        {
          v76 = v75;
          v153 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
          v77 = swift_allocObject();
          v78 = a4;
          a4 = v77;
          *v77->endpoint = a5;
          *v77->containerMap = a6;
          *v77[1]._TtCs12_SwiftObject_opaque = a7;
          *&v77[1]._TtCs12_SwiftObject_opaque[8] = a8;
          *v77[1].endpoint = v76;
          *v77[1].containerMap = a3;
          *v77[2]._TtCs12_SwiftObject_opaque = v78;
          a3 = swift_allocObject();
          *(a3 + 16) = sub_1001A9B88;
          *(a3 + 24) = a4;
          v161 = sub_1001ACCC0;
          v162 = a3;
          aBlock = _NSConcreteStackBlock;
          v158 = 1107296256;
          v159 = sub_100109050;
          v160 = &unk_100282EA0;
          v79 = _Block_copy(&aBlock);
          v152 = v162;
          v80 = v74;
          v81 = a5;

          v152, v82, v83, v84, v85, v86, v87, v88;
          [v153 performBlockAndWait:v79];

          _Block_release(v79);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          a4, v90, v91, v92, v93, v94, v95, v96;
          a3, v97, v98, v99, v100, v101, v102, v103;
          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
LABEL_23:
          sub_1000561D0();
          v70 = swift_allocError();
          v71 = xmmword_100225FA0;
          goto LABEL_24;
        }
      }
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v127 = sub_100216774();
    sub_100002648(v127, qword_10029D160);
    v128 = sub_100216754();
    v129 = sub_100216C74();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      aBlock = v131;
      *v130 = 136446210;
      v163 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v132 = sub_100216994();
      v134 = v133;
      v135 = sub_100005FB0(v132, v133, &aBlock);
      v134, v136, v137, v138, v139, v140, v141, v142, v152, v153, v154, aBlock, v158, v159, v160, v161, v162, v163;
      *(v130 + 4) = v135;
      _os_log_impl(&_mh_execute_header, v128, v129, "setPreapprovedKeys: no signing key pair: %{public}s", v130, 0xCu);
      sub_100006128(v131, v143, v144, v145, v146, v147, v148, v149);
    }

    sub_1000561D0();
    v150 = swift_allocError();
    *v151 = 0;
    *(v151 + 8) = 0;
    *(v151 + 16) = 13;
    (a3)(0, v150);

LABEL_35:
    return;
  }

  if (v17 != 1)
  {
    if (v17 == 2)
    {
      v18 = [v16 error];
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v19 = sub_100216774();
      sub_100002648(v19, qword_10029D160);
      swift_errorRetain();
      v20 = sub_100216754();
      v21 = sub_100216C74();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v155 = a4;
        aBlock = swift_slowAlloc();
        v23 = aBlock;
        *v22 = 136446210;
        v163 = v18;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v24 = sub_100216994();
        v26 = v25;
        v27 = sub_100005FB0(v24, v25, &aBlock);
        v26, v28, v29, v30, v31, v32, v33, v34, v152, v153, v155, aBlock, v158, v159, v160, v161, v162, v163;
        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "setPreapprovedKeys: no signing key pair: %{public}s", v22, 0xCu);
        sub_100006128(v23, v35, v36, v37, v38, v39, v40, v41);
      }

      v42 = v18;
      if (!v18)
      {
        sub_1000561D0();
        v42 = swift_allocError();
        *v43 = 0;
        *(v43 + 8) = 0;
        *(v43 + 16) = 13;
      }

      swift_errorRetain();
      (a3)(0, v42);

      return;
    }

    goto LABEL_23;
  }

  sub_1000561D0();
  v70 = swift_allocError();
  v71 = xmmword_100225F90;
LABEL_24:
  *v69 = v71;
  *(v69 + 16) = 13;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v104 = sub_100216774();
  sub_100002648(v104, qword_10029D160);
  swift_errorRetain();
  v105 = sub_100216754();
  v106 = sub_100216C74();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v156 = a4;
    aBlock = swift_slowAlloc();
    v108 = aBlock;
    *v107 = 136446210;
    v163 = v70;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v109 = sub_100216994();
    v111 = v110;
    v112 = sub_100005FB0(v109, v110, &aBlock);
    v111, v113, v114, v115, v116, v117, v118, v119, v152, v153, v156, aBlock, v158, v159, v160, v161, v162, v163;
    *(v107 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v105, v106, "setPreapprovedKeys: no signing key pair: %{public}s", v107, 0xCu);
    sub_100006128(v108, v120, v121, v122, v123, v124, v125, v126);
  }

  swift_errorRetain();
  (a3)(0, v70);
}

void sub_10019B344(void *a1, _TtC18TrustedPeersHelper6Client *a2, void *a3, uint64_t isEscapingClosureAtFileLocation, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, unsigned __int8 a10, void *a11)
{
  v82 = a8;
  v83 = a7;
  v87 = a3;
  HIDWORD(v88) = a10;
  if (!a1)
  {
    goto LABEL_6;
  }

  v16 = a1;
  swift_errorRetain();
  if (qword_100297520 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v17 = sub_100216774();
    sub_100002648(v17, qword_10029D160);
    swift_errorRetain();
    v18 = sub_100216754();
    v19 = sub_100216C54();

    v84 = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v80 = a5;
      v20 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v89[0] = v78;
      *v20 = 136446210;
      aBlock[0] = v16;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v21 = sub_100216994();
      v22 = v18;
      v23 = a2;
      v25 = v24;
      v26 = isEscapingClosureAtFileLocation;
      v27 = a11;
      v28 = sub_100005FB0(v21, v24, v89);
      v29 = v25;
      a2 = v23;
      v29, v30, v31, v32, v33, v34, v35, v36, v77, v78, v80, v82, v83, v84, v87, v88, v89[0], v89[1];
      *(v20 + 4) = v28;
      a11 = v27;
      isEscapingClosureAtFileLocation = v26;
      v37 = v22;
      _os_log_impl(&_mh_execute_header, v22, v85, "updateTrustIfNeeded: error fetching all requested policies (continuing anyway): %{public}s", v20, 0xCu);
      sub_100006128(v79, v38, v39, v40, v41, v42, v43, v44);

      a5 = v81;
    }

    else
    {
    }

LABEL_6:
    v86 = *&a2->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v45 = swift_allocObject();
    *(v45 + 16) = a2;
    *(v45 + 24) = v87;
    *(v45 + 32) = isEscapingClosureAtFileLocation;
    *(v45 + 40) = a5;
    v46 = *(a6 + 80);
    *(v45 + 112) = *(a6 + 64);
    *(v45 + 128) = v46;
    v47 = *(a6 + 96);
    v48 = *(a6 + 16);
    *(v45 + 48) = *a6;
    *(v45 + 64) = v48;
    v49 = *(a6 + 48);
    *(v45 + 80) = *(a6 + 32);
    *(v45 + 96) = v49;
    *(v45 + 144) = v47;
    *(v45 + 152) = v83;
    *(v45 + 160) = v82;
    *(v45 + 168) = a9;
    *(v45 + 176) = BYTE4(v88) & 1;
    v16 = a11;
    *(v45 + 184) = a11;
    v50 = swift_allocObject();
    *v50->endpoint = sub_1001ACBD0;
    *v50->containerMap = v45;
    aBlock[4] = sub_1001ACCC0;
    v91 = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100284CA0;
    a11 = _Block_copy(aBlock);
    v51 = a2;
    a2 = v91;
    v52 = v51;

    v53 = a5;
    sub_100019C6C(a6, v89, &unk_10029D860, &qword_100226648);
    v54 = v16;

    v55 = v83;

    a2, v56, v57, v58, v59, v60, v61, v62;
    [v86 performBlockAndWait:a11];
    _Block_release(a11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v45, v63, v64, v65, v66, v67, v68, v69;
    v50, v70, v71, v72, v73, v74, v75, v76;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_8:
    swift_once();
  }
}

void sub_10019B6F8(uint64_t a1, uint64_t a2, void (*a3)(id, void, id), _TtC18TrustedPeersHelper6Client *a4, char a5, char *a6, char *a7, uint64_t a8, _OWORD *a9)
{
  v105 = a3;
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_100216964();
  v16 = [v14 identityForIdentifier:v15];

  if (v16)
  {
    v17 = [v16 resultType];
    if (v17)
    {
      if (v17 == 1)
      {
        sub_1000561D0();
        v68 = swift_allocError();
        v69 = xmmword_100225F90;
      }

      else
      {
        if (v17 == 2)
        {
          v18 = [v16 error];
          if (qword_100297520 != -1)
          {
            swift_once();
          }

          v19 = sub_100216774();
          sub_100002648(v19, qword_10029D160);
          swift_errorRetain();
          v20 = sub_100216754();
          v21 = sub_100216C74();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v102 = a4;
            v23 = swift_slowAlloc();
            v106 = v23;
            *v22 = 136446210;
            swift_errorRetain();
            sub_10001148C(&qword_100297E80, &unk_1002265A0);
            v24 = sub_100216994();
            v26 = v25;
            v27 = sub_100005FB0(v24, v25, &v106);
            v26, v28, v29, v30, v31, v32, v33, v34, v99, v100, v102, v105, v18, v106, v107, v108, v109, v110;
            *(v22 + 4) = v27;
            _os_log_impl(&_mh_execute_header, v20, v21, "updateTrustIfNeeded: no signing key pair: %{public}s", v22, 0xCu);
            sub_100006128(v23, v35, v36, v37, v38, v39, v40, v41);
          }

          v42 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:0 isPreapproved:0 status:32 memberChanges:a5 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];
          v105(v42, 0, v18);

          return;
        }

        sub_1000561D0();
        v68 = swift_allocError();
        v69 = xmmword_100225FA0;
      }

      *v67 = v69;
      *(v67 + 16) = 13;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v75 = sub_100216774();
      sub_100002648(v75, qword_10029D160);
      swift_errorRetain();
      v76 = sub_100216754();
      v77 = sub_100216C74();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v103 = a4;
        v79 = swift_slowAlloc();
        v106 = v79;
        *v78 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v80 = sub_100216994();
        v82 = v81;
        v83 = sub_100005FB0(v80, v81, &v106);
        v82, v84, v85, v86, v87, v88, v89, v90, v99, v100, v103, v105, v68, v106, v107, v108, v109, v110;
        *(v78 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v76, v77, "updateTrustIfNeeded: no signing key pair: %{public}s", v78, 0xCu);
        sub_100006128(v79, v91, v92, v93, v94, v95, v96, v97);
      }

      v98 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:0 isPreapproved:0 status:32 memberChanges:a5 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];
      v105(v98, 0, v68);
    }

    else
    {
      v70 = [v16 value];
      if (v70)
      {
        v71 = a5;
        v72 = a4;
        v73 = v70;
        v74 = [v70 keyPair];

        if (v74)
        {
          objc_opt_self();
          v70 = swift_dynamicCastObjCClass();
          a4 = v72;
          if (!v70)
          {

            v70 = 0;
          }
        }

        else
        {
          v70 = 0;
          a4 = v72;
        }

        a5 = v71;
      }

      v104 = v70;
      sub_1001707E4(v70, 0, v105, a4, a5 & 1, a6, a7, a8, a9);
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v43 = sub_100216774();
    sub_100002648(v43, qword_10029D160);
    v44 = sub_100216754();
    v45 = sub_100216C74();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v106 = v47;
      *v46 = 136446210;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v48 = sub_100216994();
      v50 = v49;
      v51 = sub_100005FB0(v48, v49, &v106);
      v50, v52, v53, v54, v55, v56, v57, v58, v99, v100, v101, v105, 0, v106, v107, v108, v109, v110;
      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "updateTrustIfNeeded: no signing key pair: %{public}s", v46, 0xCu);
      sub_100006128(v47, v59, v60, v61, v62, v63, v64, v65);
    }

    v66 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:0 isPreapproved:0 status:32 memberChanges:a5 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];
    v105(v66, 0, 0);
  }
}

void sub_10019BE14(uint64_t a1, uint64_t a2, uint64_t a3, _TtC18TrustedPeersHelper6Client *a4, char *a5, void *a6, void *a7, uint64_t a8, void *a9)
{
  v15 = [objc_opt_self() defaultManager];
  v16 = sub_100216964();
  v17 = [v15 identityForIdentifier:v16];

  if (!v17)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v43 = sub_100216774();
    sub_100002648(v43, qword_10029D160);
    v44 = sub_100216754();
    v45 = sub_100216C74();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136446210;
      v162 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v48 = sub_100216994();
      v50 = v49;
      v51 = sub_100005FB0(v48, v49, &aBlock);
      v50, v52, v53, v54, v55, v56, v57, v58, v149, v150, v151, v152, v153, aBlock, v157, v158, v159, v160;
      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "handle: no signing key pair: %{public}s", v46, 0xCu);
      sub_100006128(v47, v59, v60, v61, v62, v63, v64, v65);
    }

    (a3)(0, 0);
    goto LABEL_33;
  }

  v18 = [v17 resultType];
  if (!v18)
  {
    v69 = [v17 value];
    if (v69)
    {
      v70 = v69;
      v71 = [v69 keyPair];

      if (v71)
      {
        objc_opt_self();
        v72 = swift_dynamicCastObjCClass();
        if (v72)
        {
          v73 = v72;
          v151 = a9;
          v152 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
          v74 = swift_allocObject();
          v75 = a4;
          a4 = v74;
          *v74->endpoint = a6;
          *v74->containerMap = a5;
          *v74[1]._TtCs12_SwiftObject_opaque = v73;
          *&v74[1]._TtCs12_SwiftObject_opaque[8] = a7;
          *v74[1].endpoint = 0;
          *v74[1].containerMap = a3;
          *v74[2]._TtCs12_SwiftObject_opaque = v75;
          *&v74[2]._TtCs12_SwiftObject_opaque[8] = a8;
          *v74[2].endpoint = a9;
          a3 = swift_allocObject();
          *(a3 + 16) = sub_1001AB570;
          *(a3 + 24) = a4;
          v160 = sub_1001ACCC0;
          v161 = a3;
          aBlock = _NSConcreteStackBlock;
          v157 = 1107296256;
          v158 = sub_100109050;
          v159 = &unk_1002849A8;
          v76 = _Block_copy(&aBlock);
          v150 = v161;
          v77 = v71;
          v78 = a6;
          v79 = a5;

          v80 = a7;

          v150, v81, v82, v83, v84, v85, v86, v87;
          [v152 performBlockAndWait:v76];

          _Block_release(v76);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          a4, v89, v90, v91, v92, v93, v94, v95;
          a3, v96, v97, v98, v99, v100, v101, v102;
          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
LABEL_21:
          sub_1000561D0();
          v67 = swift_allocError();
          v68 = xmmword_100225FA0;
          goto LABEL_22;
        }
      }
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v126 = sub_100216774();
    sub_100002648(v126, qword_10029D160);
    v127 = sub_100216754();
    v128 = sub_100216C74();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      aBlock = v130;
      *v129 = 136446210;
      v162 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v131 = sub_100216994();
      v133 = v132;
      v134 = sub_100005FB0(v131, v132, &aBlock);
      v133, v135, v136, v137, v138, v139, v140, v141, v149, v150, v151, v152, v153, aBlock, v157, v158, v159, v160;
      *(v129 + 4) = v134;
      _os_log_impl(&_mh_execute_header, v127, v128, "handle: no signing key pair: %{public}s", v129, 0xCu);
      sub_100006128(v130, v142, v143, v144, v145, v146, v147, v148);
    }

    (a3)(0, 0);
LABEL_33:

    return;
  }

  if (v18 != 1)
  {
    if (v18 == 2)
    {
      v19 = [v17 error];
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v20 = sub_100216774();
      sub_100002648(v20, qword_10029D160);
      swift_errorRetain();
      v21 = sub_100216754();
      v22 = sub_100216C74();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v154 = a4;
        aBlock = swift_slowAlloc();
        v24 = aBlock;
        *v23 = 136446210;
        v162 = v19;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v25 = sub_100216994();
        v27 = v26;
        v28 = sub_100005FB0(v25, v26, &aBlock);
        v27, v29, v30, v31, v32, v33, v34, v35, v149, v150, v151, v152, v154, aBlock, v157, v158, v159, v160;
        *(v23 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v21, v22, "handle: no signing key pair: %{public}s", v23, 0xCu);
        sub_100006128(v24, v36, v37, v38, v39, v40, v41, v42);
      }

      (a3)(0, v19);
      return;
    }

    goto LABEL_21;
  }

  sub_1000561D0();
  v67 = swift_allocError();
  v68 = xmmword_100225F90;
LABEL_22:
  *v66 = v68;
  *(v66 + 16) = 13;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v103 = sub_100216774();
  sub_100002648(v103, qword_10029D160);
  swift_errorRetain();
  v104 = sub_100216754();
  v105 = sub_100216C74();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v155 = a4;
    aBlock = swift_slowAlloc();
    v107 = aBlock;
    *v106 = 136446210;
    v162 = v67;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v108 = sub_100216994();
    v110 = v109;
    v111 = sub_100005FB0(v108, v109, &aBlock);
    v110, v112, v113, v114, v115, v116, v117, v118, v149, v150, v151, v152, v155, aBlock, v157, v158, v159, v160;
    *(v106 + 4) = v111;
    _os_log_impl(&_mh_execute_header, v104, v105, "handle: no signing key pair: %{public}s", v106, 0xCu);
    sub_100006128(v107, v119, v120, v121, v122, v123, v124, v125);
  }

  (a3)(0, v67);
}

uint64_t sub_10019C6BC(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
    result = sub_100216BD4();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = TPPolicyVersion_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100217014();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_1000056E8(&v9, v7, &qword_100297D68, TPPolicyVersion_ptr, &qword_10029D838, &qword_100226630);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1002170F4();
  }

  v5 = result;
  v4 = sub_1002170F4();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

id sub_10019C848(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100216BD4();
  v17 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10018B000(&v15, v6, v5);
      v16, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23;
      v4 += 2;
      --v2;
    }

    while (v2);
    return v17;
  }

  return result;
}

uint64_t sub_10019C8E0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v94 = sub_100216854();
  v8 = *(v94 - 1);
  v10 = __chkstk_darwin(v94, v9);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v88 - v14;
  v16 = sub_1002167D4();
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v90 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v89 = &v88 - v23;
  __chkstk_darwin(v22, v24);
  v26 = &v88 - v25;
  *(v4 + 40) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v91 = a2;
  *(v4 + 32) = a3;
  *(&v88 - v25) = 1800;
  (*(v17 + 104))(&v88 - v25, enum case for DispatchTimeInterval.seconds(_:), v16);
  v27 = a1;
  v92 = a3;
  v93 = v27;

  sub_100216834();
  sub_100216844();
  v28 = *(v8 + 8);
  v29 = v12;
  v30 = v94;
  v28(v29, v94);
  LOBYTE(a2) = sub_100216D14();
  v28(v15, v30);
  if (a2)
  {
    v42 = v93;
    v43 = v16;
    v45 = v89;
    v44 = v90;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v46 = sub_100216774();
    sub_100002648(v46, qword_10029D160);
    v47 = *(v17 + 16);
    v47(v45, v26, v16);
    v48 = v42;
    v49 = sub_100216754();
    v50 = sub_100216C84();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v97 = v94;
      *v51 = 136446466;
      v47(v44, v45, v43);
      v52 = sub_100216994();
      v54 = v53;
      (*(v17 + 8))(v45, v43);
      v55 = sub_100005FB0(v52, v54, &v97);
      v54, v56, v57, v58, v59, v60, v61, v62, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97;
      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      v63 = *&v48[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore + 8];
      v95 = *&v48[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore];
      v96 = v63;

      sub_10001148C(&qword_10029D698, &unk_100226590);
      v64 = sub_100216994();
      v66 = v65;
      v67 = sub_100005FB0(v64, v65, &v97);
      v66, v68, v69, v70, v71, v72, v73, v74, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97;
      *(v51 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v49, v50, "Timeout after %{public}s waiting for semaphore (held by %{public}s)", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v17 + 8))(v45, v16);
    }

    v75 = sub_100216964();
    v76 = sub_100216964();
    if (*&v48[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore + 8])
    {
      v77 = *&v48[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore + 8];
    }

    else
    {
      v77 = 0xE000000000000000;
    }

    v78 = objc_opt_self();

    v79 = sub_100216964();
    v77, v80, v81, v82, v83, v84, v85, v86, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97;
    v87 = sub_100216964();
    [v78 triggerAutoBugCaptureWithType:v75 subType:v76 subtypeContext:v79 domain:v87 events:0 payload:0 detectedProcess:0];

    _exit(1);
  }

  (*(v17 + 8))(v26, v16);
  v31 = &v93[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore];
  v32 = *&v93[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore + 8];
  v33 = v92;
  *v31 = v91;
  *(v31 + 1) = v33;
  v32, v34, v35, v36, v37, v38, v39, v40, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97;
  return v4;
}

unint64_t sub_10019CE9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = objc_allocWithZone(NSFetchRequest);
  v10 = sub_100216964();
  v11 = [v9 initWithEntityName:v10];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10021D420;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100019BD0();
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 96) = type metadata accessor for ContainerMO();
  *(v12 + 104) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v12 + 72) = a2;

  v13 = a2;
  v14 = sub_100216C34();
  [v11 setPredicate:v14];

  [v11 setFetchLimit:1];
  type metadata accessor for PeerMO();
  result = sub_100216D54();
  if (v4)
  {

    return v5;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:
    result, v16, v17, v18, v19, v20, v21, v22, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43;

    return 0;
  }

  v32 = result;
  v33 = sub_1002170F4();
  result = v32;
  if (!v33)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v23 = result;
    v24 = sub_100217014();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = result;
    v24 = *(result + 32);
LABEL_8:
    v5 = v24;
    v23, v25, v26, v27, v28, v29, v30, v31, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43;

    return v5;
  }

  __break(1u);
  return result;
}

id sub_10019D0FC(void *a1)
{
  v2 = [a1 peerID];
  if (!v2)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v59 = sub_100216774();
    sub_100002648(v59, qword_10029D160);
    v60 = sub_100216754();
    v61 = sub_100216C74();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "DBAdapter PeerMO has no ID?", v62, 2u);
    }

    return 0;
  }

  v3 = v2;
  v4 = sub_100216974();
  v6 = v5;

  v7 = [a1 stableInfo];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216224();
    v11 = v10;

    v12 = [a1 stableInfoSig];
    if (v12)
    {
      v19 = v12;
      v20 = sub_100216224();
      v22 = v21;

      v23 = objc_allocWithZone(TPPeerStableInfo);
      sub_100012558(v9, v11);
      sub_100012558(v20, v22);
      isa = sub_100216204().super.isa;
      v25 = sub_100216204().super.isa;
      v26 = [v23 initWithData:isa sig:v25];

      sub_100002BF0(v20, v22, v27, v28, v29, v30, v31, v32);
      sub_100002BF0(v9, v11, v33, v34, v35, v36, v37, v38);
      if (v26)
      {
        sub_100002BF0(v20, v22, v39, v40, v41, v42, v43, v44);
        sub_100002BF0(v9, v11, v45, v46, v47, v48, v49, v50);
        v6, v51, v52, v53, v54, v55, v56, v57, v147, v149, v150, v151, v152, v153, v154, v155, v156, v157;
        return v26;
      }

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v97 = sub_100216774();
      sub_100002648(v97, qword_10029D160);

      v64 = sub_100216754();
      v98 = sub_100216C54();
      v6, v99, v100, v101, v102, v103, v104, v105, v147, v149, v150, v151, v152, v153, v154, v155, v156, v157;
      if (os_log_type_enabled(v64, v98))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v149 = v113;
        *v112 = 136446210;
        v114 = sub_100005FB0(v4, v6, &v149);
        v6, v115, v116, v117, v118, v119, v120, v121, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
        *(v112 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v64, v98, "DBAdapter peer %{public}s has unparseable stable info/sig", v112, 0xCu);
        sub_100006128(v113, v122, v123, v124, v125, v126, v127, v128);

        sub_100002BF0(v9, v11, v129, v130, v131, v132, v133, v134);
        sub_100002BF0(v20, v22, v135, v136, v137, v138, v139, v140);
        goto LABEL_22;
      }

      sub_100002BF0(v9, v11, v106, v107, v108, v109, v110, v111);
      sub_100002BF0(v20, v22, v141, v142, v143, v144, v145, v146);
LABEL_21:
      v6, v73, v74, v75, v76, v77, v78, v79, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
      goto LABEL_22;
    }

    sub_100002BF0(v9, v11, v13, v14, v15, v16, v17, v18);
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v63 = sub_100216774();
  sub_100002648(v63, qword_10029D160);

  v64 = sub_100216754();
  v65 = sub_100216C54();
  v6, v66, v67, v68, v69, v70, v71, v72, v147, v149, v150, v151, v152, v153, v154, v155, v156, v157;
  if (!os_log_type_enabled(v64, v65))
  {
    goto LABEL_21;
  }

  v80 = swift_slowAlloc();
  v81 = swift_slowAlloc();
  v149 = v81;
  *v80 = 136446210;
  v82 = sub_100005FB0(v4, v6, &v149);
  v6, v83, v84, v85, v86, v87, v88, v89, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157;
  *(v80 + 4) = v82;
  _os_log_impl(&_mh_execute_header, v64, v65, "DBAdapter peer %{public}s has no/incomplete stable info/sig", v80, 0xCu);
  sub_100006128(v81, v90, v91, v92, v93, v94, v95, v96);

LABEL_22:

  return 0;
}

id sub_10019D5B4(void *a1)
{
  v2 = [a1 peerID];
  if (!v2)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v58 = sub_100216774();
    sub_100002648(v58, qword_10029D160);
    v59 = sub_100216754();
    v60 = sub_100216C74();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "DBAdapter PeerMO has no ID?", v61, 2u);
    }

    return 0;
  }

  v3 = v2;
  v4 = sub_100216974();
  v6 = v5;

  v7 = [a1 dynamicInfo];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216224();
    v11 = v10;

    v12 = [a1 dynamicInfoSig];
    if (v12)
    {
      v19 = v12;
      v20 = sub_100216224();
      v22 = v21;

      sub_100012558(v9, v11);
      sub_100012558(v20, v22);
      isa = sub_100216204().super.isa;
      v24 = sub_100216204().super.isa;
      v25 = [objc_opt_self() dynamicInfoWithData:isa sig:v24];

      sub_100002BF0(v20, v22, v26, v27, v28, v29, v30, v31);
      sub_100002BF0(v9, v11, v32, v33, v34, v35, v36, v37);
      if (v25)
      {
        sub_100002BF0(v20, v22, v38, v39, v40, v41, v42, v43);
        sub_100002BF0(v9, v11, v44, v45, v46, v47, v48, v49);
        v6, v50, v51, v52, v53, v54, v55, v56, v146, v148, v149, v150, v151, v152, v153, v154, v155, v156;
        return v25;
      }

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v96 = sub_100216774();
      sub_100002648(v96, qword_10029D160);

      v63 = sub_100216754();
      v97 = sub_100216C54();
      v6, v98, v99, v100, v101, v102, v103, v104, v146, v148, v149, v150, v151, v152, v153, v154, v155, v156;
      if (os_log_type_enabled(v63, v97))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v148 = v112;
        *v111 = 136446210;
        v113 = sub_100005FB0(v4, v6, &v148);
        v6, v114, v115, v116, v117, v118, v119, v120, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156;
        *(v111 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v63, v97, "DBAdapter peer %{public}s has unparseable dynamic info/sig", v111, 0xCu);
        sub_100006128(v112, v121, v122, v123, v124, v125, v126, v127);

        sub_100002BF0(v9, v11, v128, v129, v130, v131, v132, v133);
        sub_100002BF0(v20, v22, v134, v135, v136, v137, v138, v139);
        goto LABEL_22;
      }

      sub_100002BF0(v9, v11, v105, v106, v107, v108, v109, v110);
      sub_100002BF0(v20, v22, v140, v141, v142, v143, v144, v145);
LABEL_21:
      v6, v72, v73, v74, v75, v76, v77, v78, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156;
      goto LABEL_22;
    }

    sub_100002BF0(v9, v11, v13, v14, v15, v16, v17, v18);
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v62 = sub_100216774();
  sub_100002648(v62, qword_10029D160);

  v63 = sub_100216754();
  v64 = sub_100216C54();
  v6, v65, v66, v67, v68, v69, v70, v71, v146, v148, v149, v150, v151, v152, v153, v154, v155, v156;
  if (!os_log_type_enabled(v63, v64))
  {
    goto LABEL_21;
  }

  v79 = swift_slowAlloc();
  v80 = swift_slowAlloc();
  v148 = v80;
  *v79 = 136446210;
  v81 = sub_100005FB0(v4, v6, &v148);
  v6, v82, v83, v84, v85, v86, v87, v88, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156;
  *(v79 + 4) = v81;
  _os_log_impl(&_mh_execute_header, v63, v64, "DBAdapter peer %{public}s has no/incomplete dynamic info/sig", v79, 0xCu);
  sub_100006128(v80, v89, v90, v91, v92, v93, v94, v95);

LABEL_22:

  return 0;
}

_TtC18TrustedPeersHelper6Client *sub_10019DA6C(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = sub_100216964();
  v7 = [v5 initWithEntityName:v6];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10021D600;
  *(v8 + 56) = type metadata accessor for ContainerMO();
  *(v8 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_100216C34();
  [v7 setPredicate:v10];

  sub_10001148C(&qword_10029D150, &qword_100226560);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10021D600;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = 0x49656E696863616DLL;
  *(v11 + 40) = 0xE900000000000044;
  isa = sub_100216B14().super.isa;
  v11, v13, v14, v15, v16, v17, v18, v19, 1, 2, *v31, *&v31[8], v32, v33, v34, v35, v36, v37;
  [v7 setPropertiesToFetch:isa];

  [v7 setFetchBatchSize:25];
  v35 = &_swiftEmptySetSingleton;
  v32 = &v35;
  v33 = a2;
  sub_100004860(v7, EscrowCheckGraphStatus.rawValue.getter, 0, sub_1001A1434, v31, type metadata accessor for MachineMO);

  v27 = v35;
  if (v2)
  {
    v35, v20, v21, v22, v23, v24, v25, v26, v29, v30, *v31, *&v31[8], v32, v33, v34, v35, v36, v37;
  }

  return v27;
}

void sub_10019DCFC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_10018B000(&v12, v4, v3);
      v13, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, vars0, vars8;
      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

void sub_10019DD6C(void *a1, uint64_t a2, _TtC18TrustedPeersHelper6Client *a3, Swift::Int a4)
{
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = sub_100216964();
  v10 = [v8 initWithEntityName:v9];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10021D420;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100019BD0();
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 96) = type metadata accessor for ContainerMO();
  *(v11 + 104) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO, &protocol conformance descriptor for NSObject);
  *(v11 + 72) = a1;

  v12 = a1;
  v13 = sub_100216C34();
  [v10 setPredicate:v13];

  [v10 setReturnsObjectsAsFaults:1];
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100225FB0;
  v15 = objc_allocWithZone(NSSortDescriptor);
  v16 = sub_100216964();
  v17 = [v15 initWithKey:v16 ascending:0];

  *(v14 + 32) = v17;
  sub_10000200C(0, &unk_10029D630, NSSortDescriptor_ptr);
  isa = sub_100216B14().super.isa;
  v14, v19, v20, v21, v22, v23, v24, v25, v76, v80, v82, v85, v86, v87, v88, v89, v90, v91;
  [v10 setSortDescriptors:isa];

  type metadata accessor for MachineMO();
  v26 = sub_100216D54();
  if (!v4)
  {
    v49 = v26;
    v50 = v26 >> 62;
    if (v26 >> 62)
    {
      v75 = sub_1002170F4();
      if (v75 < 0)
      {
LABEL_37:
        __break(1u);
        return;
      }

      a3 = v75;
      a4 = v75 != 0;
      if (sub_1002170F4() >= a4)
      {
        if (sub_1002170F4() >= a3)
        {
LABEL_8:
          if ((v49 & 0xC000000000000001) != 0)
          {

            if (a3 >= 2)
            {
              v58 = a4;
              do
              {
                v59 = (v58 + 1);
                sub_100217004(v58);
                v58 = v59;
              }

              while (a3 != v59);
            }
          }

          else
          {
          }

          v49, v51, v52, v53, v54, v55, v56, v57, v77, v81, v83, v85, v86, v87, v88, v89, v90, v91;
          if (v50)
          {
            v60 = sub_100217104();
            v61 = v62;
            a4 = v63;
            v65 = v64;
            v49, v62, v63, v64, v66, v67, v68, v69, v79, v81, v83, v85, v86, v87, v88, v89, v90, v91;
            a3 = (v65 >> 1);
          }

          else
          {
            v60 = v49 & 0xFFFFFFFFFFFFFF8;
            v61 = (v49 & 0xFFFFFFFFFFFFFF8) + 32;
          }

          v70 = &a3->_TtCs12_SwiftObject_opaque[-a4];
          if (!__OFSUB__(a3, a4))
          {
            if (!v70)
            {
LABEL_26:
              swift_unknownObjectRelease();

              return;
            }

            v77 = v60;
            v85 = _swiftEmptyArrayStorage;
            sub_100217064();
            if ((v70 & 0x8000000000000000) == 0)
            {
              if (a4 <= a3)
              {
                v71 = a3;
              }

              else
              {
                v71 = a4;
              }

              v72 = v71 - a4;
              v73 = (v61 + 8 * a4);
              while (v72)
              {
                v74 = *v73++;
                a4 = [v74 objectID];
                sub_100217044();
                a3 = v85[2];
                sub_100217074();
                sub_100217084();
                sub_100217054();
                --v72;
                if (!--v70)
                {
                  goto LABEL_26;
                }
              }

              __break(1u);
              goto LABEL_29;
            }

            goto LABEL_36;
          }

LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        __break(1u);
      }
    }

    else
    {
      a3 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a4 = a3 != 0;
      if (a3 >= a4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  if (qword_100297520 != -1)
  {
LABEL_29:
    swift_once();
  }

  v27 = sub_100216774();
  sub_100002648(v27, qword_10029D160);

  swift_errorRetain();
  v28 = sub_100216754();
  v29 = sub_100216C74();
  a4, v30, v31, v32, v33, v34, v35, v36, v77, v81, v83, v85, v86, v87, v88, v89, v90, v91;

  if (os_log_type_enabled(v28, v29))
  {
    v37 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v37 = 136315394;
    *(v37 + 4) = sub_100005FB0(a3, a4, &v85);
    *(v37 + 12) = 2082;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v38 = sub_100216994();
    v40 = v39;
    v41 = sub_100005FB0(v38, v39, &v85);
    v40, v42, v43, v44, v45, v46, v47, v48, v78, v4, v84, v85, v86, v87, v88, v89, v90, v91;
    *(v37 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to fetch most recent machine object id for %s: %{public}s", v37, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
}

id sub_10019E368(void *a1, void *a2)
{
  v2 = a1;
  v3 = sub_10019DA6C(a1, a2);
  v18 = v3;
  v19 = 0;
  containerMap = v3[1].containerMap;
  v21 = 1 << v3[1]._TtCs12_SwiftObject_opaque[0];
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *v3[1].containerMap;
  v24 = (v21 + 63) >> 6;
  v162 = NSDeletedObjectsKey;
  *&v11 = 136315394;
  v167 = v11;
  v148 = xmmword_10021D600;
  v140 = xmmword_100225FB0;
  v176 = v3;
  v177 = v2;
  while (v23)
  {
LABEL_13:
    v33 = *v18[1].endpoint + ((v19 << 10) | (16 * __clz(__rbit64(v23))));
    v34 = *v33;
    v35 = *(v33 + 8);

    sub_10019DD6C(v2, a2, v34, v35);
    v44 = v36;
    if (v36 >> 62)
    {
      v45 = sub_1002170F4();
    }

    else
    {
      v45 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 &= v23 - 1;
    if (v45)
    {
      v46 = objc_allocWithZone(NSBatchDeleteRequest);
      sub_10000200C(0, &unk_10029D610, NSManagedObjectID_ptr);
      isa = sub_100216B14().super.isa;
      v44, v48, v49, v50, v51, v52, v53, v54, log, v133, v140, *(&v140 + 1), v148, SDWORD2(v148), v157, v162, v167, *(&v167 + 1);
      v55 = [v46 initWithObjectIDs:isa];

      [v55 setResultType:1];
      *&v181 = 0;
      v56 = [a2 executeRequest:v55 error:&v181];
      if (v56)
      {
        v57 = v56;
        v58 = v181;
        v35, v59, v60, v61, v62, v63, v64, v65, loga, v135, v142, v146, v150, v154, v159, v164, v169, v173;
        objc_opt_self();
        v66 = swift_dynamicCastObjCClass();
        if (!v66)
        {

          v181 = 0u;
          v182 = 0u;
          v18 = v176;
          v2 = v177;
          goto LABEL_33;
        }

        v67 = v66;
        v2 = v177;
        if ([v66 result])
        {
          sub_100216E24();
          swift_unknownObjectRelease();
        }

        else
        {
          v179 = 0u;
          v180 = 0u;
        }

        v18 = v176;
        v181 = v179;
        v182 = v180;
        if (*(&v180 + 1))
        {
          v104 = sub_10001148C(&qword_10029D620, &qword_100226558);
          if (swift_dynamicCast())
          {
            v138 = objc_opt_self();
            sub_10001148C(&qword_1002983D8, &unk_10021DE60);
            inited = swift_initStackObject();
            *(inited + 16) = v148;
            *&v181 = sub_100216974();
            *(&v181 + 1) = v106;
            sub_100216F74();
            *(inited + 96) = v104;
            *(inited + 72) = v179;
            v107 = sub_100019254(inited);
            swift_setDeallocating();
            sub_1000114D4(inited + 32, &unk_1002983E0, &qword_10021D708);
            v108.super.isa = sub_1002168C4().super.isa;
            v107, v109, v110, v111, v112, v113, v114, v115, v108.super.isa, v138, v140, *(&v140 + 1), v148, SDWORD2(v148), v157, v162, v167, *(&v167 + 1);
            sub_10001148C(&qword_100297DA0, &qword_1002264D0);
            v116 = swift_allocObject();
            *(v116 + 16) = v144;
            *(v116 + 32) = a2;
            sub_10000200C(0, &qword_10029D628, NSManagedObjectContext_ptr);
            v117 = a2;
            v118 = sub_100216B14().super.isa;
            v116, v119, v120, v121, v122, v123, v124, v125, loge, v139, v144, *(&v144 + 1), v152, v156, v161, v166, v171, v175;
            [v133 mergeChangesFromRemoteContextSave:log intoContexts:v118];

            v18 = v176;
          }

          else
          {
          }

          v2 = v177;
        }

        else
        {

LABEL_33:
          sub_1000114D4(&v181, &unk_100297770, &unk_10021DF90);
        }
      }

      else
      {
        v68 = v181;
        sub_100216154();

        swift_willThrow();
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v69 = sub_100216774();
        sub_100002648(v69, qword_10029D160);

        swift_errorRetain();
        v70 = sub_100216754();
        v71 = sub_100216C74();
        v35, v72, v73, v74, v75, v76, v77, v78, loga, v135, v142, v146, v150, v154, v159, v164, v169, v173;

        if (os_log_type_enabled(v70, v71))
        {
          v86 = swift_slowAlloc();
          logd = v70;
          v87 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          *&v181 = v137;
          *v86 = v170;
          v88 = sub_100005FB0(v34, v35, &v181);
          v35, v89, v90, v91, v92, v93, v94, v95, logd, v137, v143, v147, v151, v155, v160, v165, v170, v174;
          *(v86 + 4) = v88;
          *(v86 + 12) = 2114;
          swift_errorRetain();
          v96 = _swift_stdlib_bridgeErrorToNSError();
          *(v86 + 14) = v96;
          *v87 = v96;
          _os_log_impl(&_mh_execute_header, log, v71, "onqueueRemoveDuplicateMachineIDs error removing duplicate machineIDs for %s: %{public}@", v86, 0x16u);
          sub_1000114D4(v87, &qword_10029D580, &unk_10021CCC0);

          sub_100006128(v133, v97, v98, v99, v100, v101, v102, v103);
        }

        else
        {
          v35, v79, v80, v81, v82, v83, v84, v85, logb, v136, v143, v147, v151, v155, v160, v165, v170, v174;
        }

        v18 = v176;
        v2 = v177;
      }
    }

    else
    {
      v35, v37, v38, v39, v40, v41, v42, v43, log, v133, v140, *(&v140 + 1), v148, SDWORD2(v148), v157, v162, v167, *(&v167 + 1);
      v44, v25, v26, v27, v28, v29, v30, v31, logc, v134, v141, v145, v149, v153, v158, v163, v168, v172;
    }
  }

  while (1)
  {
    v32 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v32 >= v24)
    {
      v18, v4, v5, v6, v7, v8, v9, v10;
      return sub_10010AAD0();
    }

    v23 = *&containerMap[8 * v32];
    ++v19;
    if (v23)
    {
      v19 = v32;
      goto LABEL_13;
    }
  }

  __break(1u);
  swift_once();
  v12 = sub_100216774();
  sub_100002648(v12, qword_10029D160);
  swift_errorRetain();
  v13 = sub_100216754();
  v14 = sub_100216C74();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "onqueueRemoveDuplicateMachineIDs error removing duplicate machineIDs: %{public}@", v15, 0xCu);
    sub_1000114D4(v16, &qword_10029D580, &unk_10021CCC0);
  }

  else
  {
  }

  return sub_10010AAD0();
}

__objc2_prop *sub_10019EC98(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for Container.DBAdapter();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = a1;
  v10 = a2;
  sub_1000602D0(a3, a4);
  sub_10004CD18(0, 0xF000000000000000, v11, v12, v13, v14, v15, v16);
  v17 = [objc_allocWithZone(type metadata accessor for PolicyRedactionCrypter()) init];
  v18 = [objc_allocWithZone(TPModel) initWithDecrypter:v17 dbAdapter:v8];

  [v18 setSuppressInitialInfoLogging:1];
  v19 = swift_allocObject();
  *v19->endpoint = v18;
  v20 = v18;
  v736 = v8;
  v21 = 0;
  sub_100112814(sub_1001A13AC, v19);
  v19, v22, v23, v24, v25, v26, v27, v28;
  v858 = 0;
  v29 = [(Client *)v20 peerCountWithError:&v858];
  v30 = v858;
  if (v858)
  {
    swift_willThrow();
    v31 = qword_100297520;
    v32 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = sub_100216774();
    sub_100002648(v33, qword_10029D160);
    v34 = v32;
    v35 = sub_100216754();
    v36 = sub_100216C74();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543362;
      v39 = v34;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&_mh_execute_header, v35, v36, "loadModel error getting peerCount: %{public}@", v37, 0xCu);
      sub_1000114D4(v38, &qword_10029D580, &unk_10021CCC0);

      v21 = 0;
      v35 = v39;
    }

    else
    {

      v21 = 0;
    }
  }

  else
  {
    v41 = v29;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v42 = sub_100216774();
    sub_100002648(v42, qword_10029D160);
    v35 = sub_100216754();
    v43 = sub_100216C54();
    if (os_log_type_enabled(v35, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      *(v44 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v43, "loadModel: loaded %lu peers", v44, 0xCu);
    }
  }

  v858 = 0;
  v45 = [(Client *)v20 voucherCountWithError:&v858];
  v46 = v858;
  if (v858)
  {
    swift_willThrow();
    v47 = qword_100297520;
    v48 = v46;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = sub_100216774();
    sub_100002648(v49, qword_10029D160);
    v50 = v48;
    v51 = sub_100216754();
    v52 = sub_100216C74();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138543362;
      v55 = v50;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v56;
      *v54 = v56;
      _os_log_impl(&_mh_execute_header, v51, v52, "loadModel error getting voucherCount: %{public}@", v53, 0xCu);
      sub_1000114D4(v54, &qword_10029D580, &unk_10021CCC0);

      v21 = 0;
      v51 = v55;
    }

    else
    {

      v21 = 0;
    }
  }

  else
  {
    v57 = v45;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v58 = sub_100216774();
    sub_100002648(v58, qword_10029D160);
    v51 = sub_100216754();
    v59 = sub_100216C54();
    if (os_log_type_enabled(v51, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v51, v59, "loadModel: loaded %lu vouchers", v60, 0xCu);
    }
  }

  if (qword_100297520 != -1)
  {
    goto LABEL_224;
  }

  while (1)
  {
    v61 = sub_100216774();
    v62 = sub_100002648(v61, qword_10029D160);
    v63 = v20;
    v814 = v62;
    v64 = sub_100216754();
    v65 = sub_100216C54();
    v790 = v63;
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = v63;
      v68 = v66;
      *v66 = 134217984;
      v69 = [(Client *)v67 allCustodianRecoveryKeys];
      sub_10000200C(0, &qword_10029D590, TPCustodianRecoveryKey_ptr);
      v70 = sub_100216B24();

      if (v70 >> 62)
      {
        v71 = sub_1002170F4();
      }

      else
      {
        v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v72 = v790;

      v70, v73, v74, v75, v76, v77, v78, v79, v664, v682, v700, v718, v736, v754, v772, v790, v814, v837;
      *(v68 + 1) = v71;

      _os_log_impl(&_mh_execute_header, v64, v65, "loadModel: loaded %ld CRKs", v68, 0xCu);
    }

    else
    {

      v64 = v63;
    }

    v80 = [(Client *)v10 recoveryKeySigningSPKI];
    if (v80)
    {
      v81 = v80;
      v82 = sub_100216224();
      v84 = v83;

      v85 = [(Client *)v10 recoveryKeyEncryptionSPKI];
      if (v85)
      {
        v92 = v85;
        v93 = sub_100216224();
        v95 = v94;

        v96 = objc_allocWithZone(TPRecoveryKeyPair);
        sub_100012558(v82, v84);
        sub_100012558(v93, v95);
        v97 = v9;
        isa = sub_100216204().super.isa;
        v99 = sub_100216204().super.isa;
        v100 = [v96 initWithSigningKeyData:isa encryptionKeyData:v99];

        sub_100002BF0(v93, v95, v101, v102, v103, v104, v105, v106);
        v9 = v97;
        sub_100002BF0(v82, v84, v107, v108, v109, v110, v111, v112);
        [(Client *)v790 setRecoveryKeys:v100];

        sub_100002BF0(v93, v95, v113, v114, v115, v116, v117, v118);
        sub_100002BF0(v82, v84, v119, v120, v121, v122, v123, v124);
        goto LABEL_56;
      }

      sub_100002BF0(v82, v84, v86, v87, v88, v89, v90, v91);
    }

    v125 = sub_10010EB40();
    if (v125)
    {
      v126 = v125;
      v127 = [v125 recoverySigningPublicKey];
      if (!v127)
      {

        goto LABEL_56;
      }

      v128 = v127;
      v129 = sub_100216224();
      v131 = v130;

      v132 = [v126 recoveryEncryptionPublicKey];
      if (!v132)
      {
        sub_100002BF0(v129, v131, v133, v134, v135, v136, v137, v138);

        goto LABEL_56;
      }

      v855 = v9;
      v139 = v132;
      v140 = sub_100216224();
      v142 = v141;

      v149 = v131 >> 62;
      if ((v131 >> 62) > 1)
      {
        if (v149 != 2)
        {
          goto LABEL_55;
        }

        v150 = *(v129 + 16);
        v151 = *(v129 + 24);
      }

      else
      {
        if (!v149)
        {
          if ((v131 & 0xFF000000000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_44:
          v152 = v142 >> 62;
          if ((v142 >> 62) > 1)
          {
            if (v152 != 2)
            {
              goto LABEL_55;
            }

            v153 = *(v140 + 16);
            v154 = *(v140 + 24);
          }

          else
          {
            if (!v152)
            {
              if ((v142 & 0xFF000000000000) == 0)
              {
                goto LABEL_55;
              }

LABEL_52:
              v155 = sub_100216754();
              v156 = sub_100216C54();
              if (os_log_type_enabled(v155, v156))
              {
                v157 = swift_slowAlloc();
                *v157 = 0;
                _os_log_impl(&_mh_execute_header, v155, v156, "loadModel: recovery key not set in model, but is set on ego peer", v157, 2u);
              }

              v158 = objc_allocWithZone(TPRecoveryKeyPair);
              sub_100012558(v129, v131);
              sub_100012558(v140, v142);
              v159 = sub_100216204().super.isa;
              v160 = sub_100216204().super.isa;
              v161 = [v158 initWithSigningKeyData:v159 encryptionKeyData:v160];

              sub_100002BF0(v140, v142, v162, v163, v164, v165, v166, v167);
              sub_100002BF0(v129, v131, v168, v169, v170, v171, v172, v173);
              [(Client *)v790 setRecoveryKeys:v161];

              goto LABEL_55;
            }

            v153 = v140;
            v154 = v140 >> 32;
          }

          if (v153 != v154)
          {
            goto LABEL_52;
          }

LABEL_55:
          sub_100002BF0(v140, v142, v143, v144, v145, v146, v147, v148);
          sub_100002BF0(v129, v131, v174, v175, v176, v177, v178, v179);

          v9 = v855;
          goto LABEL_56;
        }

        v150 = v129;
        v151 = v129 >> 32;
      }

      if (v150 == v151)
      {
        goto LABEL_55;
      }

      goto LABEL_44;
    }

LABEL_56:
    v180 = objc_autoreleasePoolPush();
    sub_100115168(v10, v9, &v858);
    if (v21)
    {
      v21 = 0;
      objc_autoreleasePoolPop(v180);
      swift_errorRetain();
      v181 = sub_100216754();
      v182 = sub_100216C74();

      if (os_log_type_enabled(v181, v182))
      {
        v183 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        *v183 = 138543362;
        swift_errorRetain();
        v185 = _swift_stdlib_bridgeErrorToNSError();
        *(v183 + 4) = v185;
        *v184 = v185;
        _os_log_impl(&_mh_execute_header, v181, v182, "loadModel error loading policies: %{public}@", v183, 0xCu);
        sub_1000114D4(v184, &qword_10029D580, &unk_10021CCC0);
      }

      else
      {
      }
    }

    else
    {
      objc_autoreleasePoolPop(v180);
    }

    v186 = [(Client *)v10 machines];
    v10 = &_swiftEmptySetSingleton;
    if (v186)
    {
      v187 = v186;
      v858 = 0;
      type metadata accessor for MachineMO();
      sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
      sub_100216BA4();

      v188 = v858 ? v858 : &_swiftEmptySetSingleton;
    }

    else
    {
      v188 = &_swiftEmptySetSingleton;
    }

    v837 = v188;
    v856 = v188 & 0xC000000000000001;
    if ((v188 & 0xC000000000000001) != 0)
    {
      v772 = 0;
      v858 = &_swiftEmptySetSingleton;

      v20 = sub_100216E84();
      if (sub_100216F14())
      {
        type metadata accessor for MachineMO();
        v196 = &_swiftEmptySetSingleton;
        v9 = &stru_100292000;
        v21 = 1;
        do
        {
          swift_dynamicCast();
          if ([v857 status] == 1)
          {
            v197 = *v196->endpoint;
            if (*v196->containerMap <= v197)
            {
              sub_100188D90(v197 + 1, &qword_10029D598, &qword_1002264E8);
            }

            v196 = v858;
            v198 = sub_100216DB4(*&v858[1]._TtCs12_SwiftObject_opaque[8]);
            containerMap = v196[1].containerMap;
            v200 = -1 << v196[1]._TtCs12_SwiftObject_opaque[0];
            v201 = v198 & ~v200;
            v202 = v201 >> 6;
            if (((-1 << v201) & ~*&v196[1].containerMap[8 * (v201 >> 6)]) != 0)
            {
              v203 = __clz(__rbit64((-1 << v201) & ~*&v196[1].containerMap[8 * (v201 >> 6)])) | v201 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v204 = 0;
              v205 = (63 - v200) >> 6;
              do
              {
                if (++v202 == v205 && (v204 & 1) != 0)
                {
                  __break(1u);
LABEL_219:
                  __break(1u);
LABEL_220:
                  __break(1u);
LABEL_221:
                  __break(1u);
LABEL_222:
                  __break(1u);
                  goto LABEL_223;
                }

                v206 = v202 == v205;
                if (v202 == v205)
                {
                  v202 = 0;
                }

                v204 |= v206;
                v207 = *&containerMap[8 * v202];
              }

              while (v207 == -1);
              v203 = __clz(__rbit64(~v207)) + (v202 << 6);
            }

            *&containerMap[(v203 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v203;
            *(*v196[1].endpoint + 8 * v203) = v857;
            ++*v196->endpoint;
          }

          else
          {
          }
        }

        while (sub_100216F14());
      }

      else
      {
        v196 = &_swiftEmptySetSingleton;
      }

      v20, v189, v190, v191, v192, v193, v194, v195;
      v21 = 0;
    }

    else
    {

      v196 = sub_100189034(v208);
    }

    sub_100109078(v196);
    v210 = v209;
    v196, v211, v212, v213, v214, v215, v216, v217;
    v218 = sub_10019C848(v210);
    v210, v219, v220, v221, v222, v223, v224, v225, v664, v682, v700, v718, v736, v754, v218, v790, v814, v188;
    if (v856)
    {
      v754 = v21;
      v858 = &_swiftEmptySetSingleton;

      v20 = sub_100216E84();
      if (sub_100216F14())
      {
        type metadata accessor for MachineMO();
        v233 = &_swiftEmptySetSingleton;
        v9 = -1;
        v21 = 1;
        do
        {
          swift_dynamicCast();
          if ([v857 status] == 2)
          {
            v234 = *v233->endpoint;
            if (*v233->containerMap <= v234)
            {
              sub_100188D90(v234 + 1, &qword_10029D598, &qword_1002264E8);
            }

            v233 = v858;
            v235 = sub_100216DB4(*&v858[1]._TtCs12_SwiftObject_opaque[8]);
            v236 = v233[1].containerMap;
            v237 = -1 << v233[1]._TtCs12_SwiftObject_opaque[0];
            v238 = v235 & ~v237;
            v239 = v238 >> 6;
            if (((-1 << v238) & ~*&v233[1].containerMap[8 * (v238 >> 6)]) != 0)
            {
              v240 = __clz(__rbit64((-1 << v238) & ~*&v233[1].containerMap[8 * (v238 >> 6)])) | v238 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v241 = 0;
              v242 = (63 - v237) >> 6;
              do
              {
                if (++v239 == v242 && (v241 & 1) != 0)
                {
                  goto LABEL_219;
                }

                v243 = v239 == v242;
                if (v239 == v242)
                {
                  v239 = 0;
                }

                v241 |= v243;
                v244 = *&v236[8 * v239];
              }

              while (v244 == -1);
              v240 = __clz(__rbit64(~v244)) + (v239 << 6);
            }

            *&v236[(v240 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v240;
            *(*v233[1].endpoint + 8 * v240) = v857;
            ++*v233->endpoint;
          }

          else
          {
          }
        }

        while (sub_100216F14());
      }

      else
      {
        v233 = &_swiftEmptySetSingleton;
      }

      v20, v226, v227, v228, v229, v230, v231, v232;
      v188 = v837;
      v21 = v754;
    }

    else
    {

      v233 = sub_10018929C(v245);
    }

    sub_100109078(v233);
    v247 = v246;
    v233, v248, v249, v250, v251, v252, v253, v254;
    v255 = sub_10019C848(v247);
    v247, v256, v257, v258, v259, v260, v261, v262, v664, v682, v700, v255, v736, v754, v772, v791, v815, v837;
    if (v856)
    {
      v754 = v21;
      v858 = &_swiftEmptySetSingleton;

      v20 = sub_100216E84();
      if (sub_100216F14())
      {
        type metadata accessor for MachineMO();
        v270 = &_swiftEmptySetSingleton;
        v9 = -1;
        v21 = 1;
        do
        {
          swift_dynamicCast();
          if ([v857 status] == 5)
          {
            v271 = *v270->endpoint;
            if (*v270->containerMap <= v271)
            {
              sub_100188D90(v271 + 1, &qword_10029D598, &qword_1002264E8);
            }

            v270 = v858;
            v272 = sub_100216DB4(*&v858[1]._TtCs12_SwiftObject_opaque[8]);
            v273 = v270[1].containerMap;
            v274 = -1 << v270[1]._TtCs12_SwiftObject_opaque[0];
            v275 = v272 & ~v274;
            v276 = v275 >> 6;
            if (((-1 << v275) & ~*&v270[1].containerMap[8 * (v275 >> 6)]) != 0)
            {
              v277 = __clz(__rbit64((-1 << v275) & ~*&v270[1].containerMap[8 * (v275 >> 6)])) | v275 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v278 = 0;
              v279 = (63 - v274) >> 6;
              do
              {
                if (++v276 == v279 && (v278 & 1) != 0)
                {
                  goto LABEL_220;
                }

                v280 = v276 == v279;
                if (v276 == v279)
                {
                  v276 = 0;
                }

                v278 |= v280;
                v281 = *&v273[8 * v276];
              }

              while (v281 == -1);
              v277 = __clz(__rbit64(~v281)) + (v276 << 6);
            }

            *&v273[(v277 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v277;
            *(*v270[1].endpoint + 8 * v277) = v857;
            ++*v270->endpoint;
          }

          else
          {
          }
        }

        while (sub_100216F14());
      }

      else
      {
        v270 = &_swiftEmptySetSingleton;
      }

      v20, v263, v264, v265, v266, v267, v268, v269;
      v188 = v837;
      v21 = v754;
    }

    else
    {

      v270 = sub_100189504(v282);
    }

    sub_100109078(v270);
    v284 = v283;
    v270, v285, v286, v287, v288, v289, v290, v291;
    v292 = sub_10019C848(v284);
    v284, v293, v294, v295, v296, v297, v298, v299, v664, v682, v292, v718, v736, v754, v772, v792, v816, v837;
    if (v856)
    {
      v754 = v21;
      v858 = &_swiftEmptySetSingleton;

      v20 = sub_100216E84();
      if (sub_100216F14())
      {
        type metadata accessor for MachineMO();
        v307 = &_swiftEmptySetSingleton;
        v9 = -1;
        v21 = 1;
        do
        {
          swift_dynamicCast();
          if ([v857 status] == 3)
          {
            v308 = *v307->endpoint;
            if (*v307->containerMap <= v308)
            {
              sub_100188D90(v308 + 1, &qword_10029D598, &qword_1002264E8);
            }

            v307 = v858;
            v309 = sub_100216DB4(*&v858[1]._TtCs12_SwiftObject_opaque[8]);
            v310 = v307[1].containerMap;
            v311 = -1 << v307[1]._TtCs12_SwiftObject_opaque[0];
            v312 = v309 & ~v311;
            v313 = v312 >> 6;
            if (((-1 << v312) & ~*&v307[1].containerMap[8 * (v312 >> 6)]) != 0)
            {
              v314 = __clz(__rbit64((-1 << v312) & ~*&v307[1].containerMap[8 * (v312 >> 6)])) | v312 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v315 = 0;
              v316 = (63 - v311) >> 6;
              do
              {
                if (++v313 == v316 && (v315 & 1) != 0)
                {
                  goto LABEL_221;
                }

                v317 = v313 == v316;
                if (v313 == v316)
                {
                  v313 = 0;
                }

                v315 |= v317;
                v318 = *&v310[8 * v313];
              }

              while (v318 == -1);
              v314 = __clz(__rbit64(~v318)) + (v313 << 6);
            }

            *&v310[(v314 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v314;
            *(*v307[1].endpoint + 8 * v314) = v857;
            ++*v307->endpoint;
          }

          else
          {
          }
        }

        while (sub_100216F14());
      }

      else
      {
        v307 = &_swiftEmptySetSingleton;
      }

      v20, v300, v301, v302, v303, v304, v305, v306;
      v188 = v837;
      v21 = v754;
    }

    else
    {

      v307 = sub_10018976C(v319);
    }

    sub_100109078(v307);
    v321 = v320;
    v307, v322, v323, v324, v325, v326, v327, v328;
    v329 = sub_10019C848(v321);
    v321, v330, v331, v332, v333, v334, v335, v336, v664, v682, v700, v718, v736, v754, v772, v793, v817, v837;
    LODWORD(v754) = v329;
    if (v856)
    {
      v682 = v21;
      v858 = &_swiftEmptySetSingleton;

      v20 = sub_100216E84();
      if (sub_100216F14())
      {
        type metadata accessor for MachineMO();
        v344 = &_swiftEmptySetSingleton;
        v9 = &stru_100292000;
        v21 = 1;
        do
        {
          swift_dynamicCast();
          if ([v857 status] == 4)
          {
            v345 = *v344->endpoint;
            if (*v344->containerMap <= v345)
            {
              sub_100188D90(v345 + 1, &qword_10029D598, &qword_1002264E8);
            }

            v344 = v858;
            v346 = sub_100216DB4(*&v858[1]._TtCs12_SwiftObject_opaque[8]);
            v347 = v344[1].containerMap;
            v348 = -1 << v344[1]._TtCs12_SwiftObject_opaque[0];
            v349 = v346 & ~v348;
            v350 = v349 >> 6;
            if (((-1 << v349) & ~*&v344[1].containerMap[8 * (v349 >> 6)]) != 0)
            {
              v351 = __clz(__rbit64((-1 << v349) & ~*&v344[1].containerMap[8 * (v349 >> 6)])) | v349 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v352 = 0;
              v353 = (63 - v348) >> 6;
              do
              {
                if (++v350 == v353 && (v352 & 1) != 0)
                {
                  goto LABEL_222;
                }

                v354 = v350 == v353;
                if (v350 == v353)
                {
                  v350 = 0;
                }

                v352 |= v354;
                v355 = *&v347[8 * v350];
              }

              while (v355 == -1);
              v351 = __clz(__rbit64(~v355)) + (v350 << 6);
            }

            *&v347[(v351 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v351;
            *(*v344[1].endpoint + 8 * v351) = v857;
            ++*v344->endpoint;
          }

          else
          {
          }
        }

        while (sub_100216F14());
      }

      else
      {
        v344 = &_swiftEmptySetSingleton;
      }

      v20, v337, v338, v339, v340, v341, v342, v343;
      v188 = v837;
      v21 = v682;
    }

    else
    {

      v344 = sub_1001899D4(v356);
    }

    sub_100109078(v344);
    v358 = v357;
    v344, v359, v360, v361, v362, v363, v364, v365;
    v366 = sub_10019C848(v358);
    v358, v367, v368, v369, v370, v371, v372, v373, v664, v682, v700, v718, v736, v329, v772, v794, v818, v837;
    v837 = v366;
    if (!v856)
    {
      break;
    }

    v858 = &_swiftEmptySetSingleton;
    v374 = sub_100216E84();
    if (!sub_100216F14())
    {
LABEL_195:
      v374, v375, v376, v377, v378, v379, v380, v381;
      v329 = v754;
      goto LABEL_197;
    }

    type metadata accessor for MachineMO();
    v10 = &_swiftEmptySetSingleton;
    v20 = &stru_100292000;
    v9 = 1;
    while (1)
    {
      swift_dynamicCast();
      if (![v857 status])
      {
        break;
      }

LABEL_180:
      if (!sub_100216F14())
      {
        goto LABEL_195;
      }
    }

    v382 = *v10->endpoint;
    if (*v10->containerMap <= v382)
    {
      sub_100188D90(v382 + 1, &qword_10029D598, &qword_1002264E8);
    }

    v10 = v858;
    v383 = sub_100216DB4(*&v858[1]._TtCs12_SwiftObject_opaque[8]);
    v384 = v10[1].containerMap;
    v385 = -1 << v10[1]._TtCs12_SwiftObject_opaque[0];
    v386 = v383 & ~v385;
    v387 = v386 >> 6;
    if (((-1 << v386) & ~*&v10[1].containerMap[8 * (v386 >> 6)]) != 0)
    {
      v388 = __clz(__rbit64((-1 << v386) & ~*&v10[1].containerMap[8 * (v386 >> 6)])) | v386 & 0x7FFFFFFFFFFFFFC0;
LABEL_194:
      *&v384[(v388 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v388;
      *(*v10[1].endpoint + 8 * v388) = v857;
      ++*v10->endpoint;
      goto LABEL_180;
    }

    v389 = 0;
    v390 = (63 - v385) >> 6;
    while (++v387 != v390 || (v389 & 1) == 0)
    {
      v391 = v387 == v390;
      if (v387 == v390)
      {
        v387 = 0;
      }

      v389 |= v391;
      v392 = *&v384[8 * v387];
      if (v392 != -1)
      {
        v388 = __clz(__rbit64(~v392)) + (v387 << 6);
        goto LABEL_194;
      }
    }

LABEL_223:
    __break(1u);
LABEL_224:
    swift_once();
  }

  v10 = sub_100189C3C(v188);
LABEL_197:
  sub_100109078(v10);
  v394 = v393;
  v10, v395, v396, v397, v398, v399, v400, v401;
  v402 = sub_10019C848(v394);
  v394, v403, v404, v405, v406, v407, v408, v409, v664, v682, v700, v718, v736, v754, v772, v795, v819, v837;

  v410 = sub_100216754();
  v411 = sub_100216C54();
  v773, v412, v413, v414, v415, v416, v417, v418, v665, v683, v701, v719, v737, v755, v773, v796, v820, v838;
  if (os_log_type_enabled(v410, v411))
  {
    v419 = swift_slowAlloc();
    v420 = swift_slowAlloc();
    v858 = v420;
    *v419 = 136446210;
    v421 = sub_100216BC4();
    v423 = v422;
    v424 = sub_100005FB0(v421, v422, &v858);
    v423, v425, v426, v427, v428, v429, v430, v431, v666, v684, v702, v720, v738, v756, v774, v797, v821, v839;
    *(v419 + 4) = v424;
    _os_log_impl(&_mh_execute_header, v410, v411, "loadModel: allowedMachineIDs: %{public}s", v419, 0xCu);
    sub_100006128(v420, v432, v433, v434, v435, v436, v437, v438);
  }

  v439 = v720;

  v440 = sub_100216754();
  v441 = sub_100216C54();
  v720, v442, v443, v444, v445, v446, v447, v448, v666, v684, v702, v720, v738, v756, v774, v797, v821, v839;
  if (os_log_type_enabled(v440, v441))
  {
    v456 = swift_slowAlloc();
    v457 = swift_slowAlloc();
    v858 = v457;
    *v456 = 136446210;
    v458 = sub_100216BC4();
    v460 = v459;
    v439, v459, v461, v462, v463, v464, v465, v466, v667, v685, v703, v721, v739, v757, v775, v798, v822, v840;
    v467 = sub_100005FB0(v458, v460, &v858);
    v460, v468, v469, v470, v471, v472, v473, v474, v668, v686, v704, v722, v740, v758, v776, v799, v823, v841;
    *(v456 + 4) = v467;
    _os_log_impl(&_mh_execute_header, v440, v441, "loadModel: disallowedMachineIDs: %{public}s", v456, 0xCu);
    sub_100006128(v457, v475, v476, v477, v478, v479, v480, v481);
  }

  else
  {
    v439, v449, v450, v451, v452, v453, v454, v455, v667, v685, v703, v721, v739, v757, v775, v798, v822, v840;
  }

  v482 = v705;

  v483 = sub_100216754();
  v484 = sub_100216C54();
  v705, v485, v486, v487, v488, v489, v490, v491, v669, v687, v705, v723, v741, v759, v777, v800, v824, v842;
  if (os_log_type_enabled(v483, v484))
  {
    v499 = swift_slowAlloc();
    v500 = swift_slowAlloc();
    v858 = v500;
    *v499 = 136446210;
    v501 = sub_100216BC4();
    v503 = v502;
    v482, v502, v504, v505, v506, v507, v508, v509, v670, v688, v706, v724, v742, v760, v778, v801, v825, v843;
    v510 = sub_100005FB0(v501, v503, &v858);
    v503, v511, v512, v513, v514, v515, v516, v517, v671, v689, v707, v725, v743, v761, v779, v802, v826, v844;
    *(v499 + 4) = v510;
    _os_log_impl(&_mh_execute_header, v483, v484, "loadModel: ghostedMachineIDs: %{public}s", v499, 0xCu);
    sub_100006128(v500, v518, v519, v520, v521, v522, v523, v524);
  }

  else
  {
    v482, v492, v493, v494, v495, v496, v497, v498, v670, v688, v706, v724, v742, v760, v778, v801, v825, v843;
  }

  v525 = sub_100216754();
  v526 = sub_100216C54();
  v329, v527, v528, v529, v530, v531, v532, v533, v672, v690, v708, v726, v744, v762, v780, v803, v827, v845;
  if (os_log_type_enabled(v525, v526))
  {
    v541 = swift_slowAlloc();
    v542 = swift_slowAlloc();
    v858 = v542;
    *v541 = 136446210;
    v543 = sub_100216BC4();
    v545 = v544;
    v329, v544, v546, v547, v548, v549, v550, v551, v673, v691, v709, v727, v745, v763, v781, v804, v828, v846;
    v552 = sub_100005FB0(v543, v545, &v858);
    v545, v553, v554, v555, v556, v557, v558, v559, v674, v692, v710, v728, v746, v764, v782, v805, v829, v847;
    *(v541 + 4) = v552;
    _os_log_impl(&_mh_execute_header, v525, v526, "loadModel: evictedMachineIDs: %{public}s", v541, 0xCu);
    sub_100006128(v542, v560, v561, v562, v563, v564, v565, v566);
  }

  else
  {
    v329, v534, v535, v536, v537, v538, v539, v540, v673, v691, v709, v727, v745, v763, v781, v804, v828, v846;
  }

  v567 = v848;

  v568 = sub_100216754();
  v569 = sub_100216C54();
  v848, v570, v571, v572, v573, v574, v575, v576, v675, v693, v711, v729, v747, v765, v783, v806, v830, v848;
  if (os_log_type_enabled(v568, v569))
  {
    v584 = swift_slowAlloc();
    v585 = swift_slowAlloc();
    v858 = v585;
    *v584 = 136446210;
    v586 = sub_100216BC4();
    v588 = v587;
    v567, v587, v589, v590, v591, v592, v593, v594, v676, v694, v712, v730, v748, v766, v784, v807, v831, v849;
    v595 = sub_100005FB0(v586, v588, &v858);
    v588, v596, v597, v598, v599, v600, v601, v602, v677, v695, v713, v731, v749, v767, v785, v808, v832, v850;
    *(v584 + 4) = v595;
    _os_log_impl(&_mh_execute_header, v568, v569, "loadModel: unknownReasonMachineIDs: %{public}s", v584, 0xCu);
    sub_100006128(v585, v603, v604, v605, v606, v607, v608, v609);
  }

  else
  {
    v567, v577, v578, v579, v580, v581, v582, v583, v676, v694, v712, v730, v748, v766, v784, v807, v831, v849;
  }

  v610 = sub_100216754();
  v611 = sub_100216C54();
  v402, v612, v613, v614, v615, v616, v617, v618, v678, v696, v714, v732, v750, v768, v786, v809, v833, v851;
  if (os_log_type_enabled(v610, v611))
  {
    v626 = swift_slowAlloc();
    v627 = swift_slowAlloc();
    v858 = v627;
    *v626 = 136446210;
    v628 = sub_100216BC4();
    v630 = v629;
    v402, v629, v631, v632, v633, v634, v635, v636, v679, v697, v715, v733, v751, v769, v787, v810, v834, v852;
    v637 = sub_100005FB0(v628, v630, &v858);
    v630, v638, v639, v640, v641, v642, v643, v644, v680, v698, v716, v734, v752, v770, v788, v811, v835, v853;
    *(v626 + 4) = v637;
    _os_log_impl(&_mh_execute_header, v610, v611, "loadModel: unknownMachineIDs: %{public}s", v626, 0xCu);
    sub_100006128(v627, v645, v646, v647, v648, v649, v650, v651);
  }

  else
  {
    v402, v619, v620, v621, v622, v623, v624, v625, v679, v697, v715, v733, v751, v769, v787, v810, v834, v852;
  }

  v652 = *v789->endpoint;
  v789, v653, v654, v655, v656, v657, v658, v659, v681, v699, v717, v735, v753, v771, v789, v812, v836, v854;
  if (!v652)
  {
    v660 = sub_100216754();
    v661 = sub_100216C54();
    if (os_log_type_enabled(v660, v661))
    {
      v662 = swift_slowAlloc();
      *v662 = 0;
      _os_log_impl(&_mh_execute_header, v660, v661, "loadModel: no allowedMachineIDs?", v662, 2u);
    }
  }

  [v813 setSuppressInitialInfoLogging:0];
  return v813;
}