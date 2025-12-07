void sub_1D60A6214(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_132:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_170;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_134:
      v89 = v9 + 16;
      v90 = *(v9 + 2);
      if (v90 >= 2)
      {
        while (*a3)
        {
          v91 = &v9[16 * v90];
          v92 = *v91;
          v93 = &v89[2 * v90];
          v94 = v93[1];
          sub_1D60A6AD4((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, a1);
          if (v5)
          {
            goto LABEL_141;
          }

          if (v94 < v92)
          {
            goto LABEL_156;
          }

          if (v90 - 2 >= *v89)
          {
            goto LABEL_157;
          }

          *v91 = v92;
          *(v91 + 1) = v94;
          v95 = *v89 - v90;
          if (*v89 < v90)
          {
            goto LABEL_158;
          }

          v90 = *v89 - 1;
          memmove(v93, v93 + 2, 16 * v95);
          *v89 = v90;
          if (v90 <= 1)
          {
            goto LABEL_141;
          }
        }

        goto LABEL_168;
      }

LABEL_141:

      return;
    }

LABEL_164:
    v9 = sub_1D62FF50C(v9);
    goto LABEL_134;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v10 = v8++;
    if (v8 >= v6)
    {
      goto LABEL_48;
    }

    v11 = *a3;
    v12 = *a3 + 24 * v8;
    v13 = *(v12 + 16);
    if (*(v12 + 16))
    {
      if (v13 == 1)
      {
        v13 = 2;
      }

      else if (*v12 == 0)
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }
    }

    v14 = v11 + 24 * v10;
    v15 = *(v14 + 16);
    if (*(v14 + 16))
    {
      if (v15 == 1)
      {
        v15 = 2;
      }

      else if (*v14 == 0)
      {
        v15 = 3;
      }

      else
      {
        v15 = 1;
      }
    }

    if (v6 <= v10 + 2)
    {
      v16 = v10 + 2;
    }

    else
    {
      v16 = v6;
    }

    v17 = v16 - v10 - 2;
    v18 = 24 * v10;
    v19 = (v11 + 24 * v10 + 64);
    while (v17)
    {
      v21 = *v19;
      if (*v19)
      {
        if (v21 != 1)
        {
          if (*(v19 - 1) == 0)
          {
            v21 = 3;
          }

          else
          {
            v21 = 1;
          }

          v20 = *(v19 - 24);
          if (!*(v19 - 24))
          {
            goto LABEL_24;
          }

LABEL_35:
          if (v20 == 1)
          {
            v20 = 2;
          }

          else if (*(v19 - 40) == 0)
          {
            v20 = 3;
          }

          else
          {
            v20 = 1;
          }

          goto LABEL_24;
        }

        v21 = 2;
      }

      v20 = *(v19 - 24);
      if (*(v19 - 24))
      {
        goto LABEL_35;
      }

LABEL_24:
      --v17;
      v19 += 24;
      ++v8;
      if (v13 < v15 == v21 >= v20)
      {
        goto LABEL_38;
      }
    }

    v8 = v16;
LABEL_38:
    if (v13 < v15)
    {
      if (v8 < v10)
      {
        goto LABEL_161;
      }

      if (v10 < v8)
      {
        v22 = 0;
        v23 = 24 * v8;
        v24 = v10;
        do
        {
          if (v24 != v8 + v22 - 1)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_167;
            }

            v25 = (v30 + v18);
            v26 = v30 + v23;
            v27 = *(v25 + 16);
            v28 = *v25;
            v29 = *(v26 - 8);
            *v25 = *(v26 - 24);
            *(v25 + 2) = v29;
            *(v26 - 24) = v28;
            *(v26 - 8) = v27;
          }

          ++v24;
          --v22;
          v23 -= 24;
          v18 += 24;
        }

        while (v24 < v8 + v22);
        v6 = a3[1];
      }
    }

LABEL_48:
    if (v8 >= v6)
    {
      goto LABEL_81;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_160;
    }

    if (v8 - v10 >= v7)
    {
      goto LABEL_81;
    }

    if (__OFADD__(v10, v7))
    {
      goto LABEL_162;
    }

    if (v10 + v7 < v6)
    {
      v6 = v10 + v7;
    }

    if (v6 < v10)
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    if (v8 == v6)
    {
LABEL_81:
      if (v8 < v10)
      {
        goto LABEL_159;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D698BA94(0, *(v9 + 2) + 1, 1, v9);
      }

      v43 = *(v9 + 2);
      v42 = *(v9 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v9 = sub_1D698BA94((v42 > 1), v43 + 1, 1, v9);
      }

      *(v9 + 2) = v44;
      v45 = &v9[16 * v43];
      *(v45 + 4) = v10;
      *(v45 + 5) = v8;
      v46 = *a1;
      if (!*a1)
      {
        goto LABEL_169;
      }

      if (!v43)
      {
LABEL_3:
        v6 = a3[1];
        v7 = a4;
        if (v8 >= v6)
        {
          goto LABEL_132;
        }

        continue;
      }

      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v9 + 4);
          v49 = *(v9 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_101:
          if (v51)
          {
            goto LABEL_147;
          }

          v64 = &v9[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_150;
          }

          v70 = &v9[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_153;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_154;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_122;
          }

          goto LABEL_115;
        }

        v74 = &v9[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_115:
        if (v69)
        {
          goto LABEL_149;
        }

        v77 = &v9[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_152;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_122:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
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
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
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
          goto LABEL_163;
        }

        if (!*a3)
        {
          goto LABEL_166;
        }

        v86 = *&v9[16 * v85 + 32];
        v87 = *&v9[16 * v47 + 40];
        sub_1D60A6AD4((*a3 + 24 * v86), (*a3 + 24 * *&v9[16 * v47 + 32]), *a3 + 24 * v87, v46);
        if (v5)
        {
          goto LABEL_141;
        }

        if (v87 < v86)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D62FF50C(v9);
        }

        if (v85 >= *(v9 + 2))
        {
          goto LABEL_144;
        }

        v88 = &v9[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        sub_1D62FF480(v47);
        v44 = *(v9 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v9[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_145;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_146;
      }

      v59 = &v9[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_148;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_151;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_155;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_101;
    }

    break;
  }

  v31 = *a3;
  v32 = *a3 + 24 * v8;
  v33 = v10 - v8;
LABEL_58:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = *(v35 + 16);
    v37 = *(v35 + 16);
    if (*(v35 + 16))
    {
      if (v36 != 1)
      {
        if (*v35 == 0)
        {
          v37 = 3;
        }

        else
        {
          v37 = 1;
        }

        v38 = *(v35 - 8);
        if (!*(v35 - 8))
        {
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      v37 = 2;
    }

    v38 = *(v35 - 8);
    if (!*(v35 - 8))
    {
      goto LABEL_70;
    }

LABEL_68:
    if (v38 != 1)
    {
      if (*(v35 - 24) == 0)
      {
        v39 = 3;
      }

      else
      {
        v39 = 1;
      }

      if (v37 < v39)
      {
        goto LABEL_76;
      }

LABEL_57:
      ++v8;
      v32 += 24;
      --v33;
      if (v8 == v6)
      {
        v8 = v6;
        goto LABEL_81;
      }

      goto LABEL_58;
    }

    v38 = 2;
LABEL_70:
    if (v37 >= v38)
    {
      goto LABEL_57;
    }

LABEL_76:
    if (!v31)
    {
      break;
    }

    v40 = *v35;
    *v35 = *(v35 - 24);
    *(v35 + 16) = *(v35 - 8);
    *(v35 - 8) = v36;
    *(v35 - 24) = v40;
    v35 -= 24;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_57;
    }
  }

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
}

uint64_t sub_1D60A68E0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_1D60A6AD4(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24 || v6 >= v5)
    {
LABEL_62:
      v23 = v7;
      goto LABEL_64;
    }

    while (1)
    {
      v14 = v6[16];
      if (!v6[16])
      {
        goto LABEL_10;
      }

      if (v14 == 1)
      {
        break;
      }

      if (*v6 == 0)
      {
        v14 = 3;
      }

      else
      {
        v14 = 1;
      }

      v15 = v4[16];
      if (!v4[16])
      {
LABEL_11:
        if (v14 >= v15)
        {
          goto LABEL_21;
        }

        goto LABEL_12;
      }

LABEL_19:
      if (v15 == 1)
      {
        if (v14 >= 2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (*v4 == 0)
        {
          v19 = 3;
        }

        else
        {
          v19 = 1;
        }

        if (v14 >= v19)
        {
LABEL_21:
          v16 = v4;
          v17 = v7 == v4;
          v4 += 24;
          if (v17)
          {
            goto LABEL_23;
          }

LABEL_22:
          v18 = *v16;
          *(v7 + 2) = *(v16 + 2);
          *v7 = v18;
          goto LABEL_23;
        }
      }

LABEL_12:
      v16 = v6;
      v17 = v7 == v6;
      v6 += 24;
      if (!v17)
      {
        goto LABEL_22;
      }

LABEL_23:
      v7 += 24;
      if (v4 >= v13 || v6 >= v5)
      {
        goto LABEL_62;
      }
    }

    v14 = 2;
LABEL_10:
    v15 = v4[16];
    if (!v4[16])
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v20 = 24 * v11;
  if (a4 != __dst || &__dst[v20] <= a4)
  {
    memmove(a4, __dst, 24 * v11);
  }

  v13 = &v4[v20];
  if (v10 < 24 || v6 <= v7)
  {
LABEL_63:
    v23 = v6;
    goto LABEL_64;
  }

  do
  {
    v21 = 0;
    v22 = v13;
    v23 = v6 - 24;
    while (1)
    {
      v24 = v22[v21 - 8];
      if (!v22[v21 - 8])
      {
        goto LABEL_41;
      }

      if (v24 == 1)
      {
        v24 = 2;
LABEL_41:
        v25 = *(v6 - 8);
        if (!*(v6 - 8))
        {
          goto LABEL_42;
        }

        goto LABEL_48;
      }

      if (*&v22[v21 - 24] == 0)
      {
        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      v25 = *(v6 - 8);
      if (!*(v6 - 8))
      {
LABEL_42:
        if (v24 < v25)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

LABEL_48:
      if (v25 != 1)
      {
        break;
      }

      if (v24 < 2)
      {
        goto LABEL_57;
      }

LABEL_55:
      if ((v5 + v21) != &v22[v21])
      {
        v27 = v5 + v21 - 24;
        v28 = *&v22[v21 - 24];
        *(v27 + 16) = *&v22[v21 - 8];
        *v27 = v28;
      }

      v21 -= 24;
      v13 = &v22[v21];
      if (&v22[v21] <= v4)
      {
        goto LABEL_63;
      }
    }

    if (*(v6 - 24) == 0)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    if (v24 >= v26)
    {
      goto LABEL_55;
    }

LABEL_57:
    v29 = (v5 + v21);
    v5 = v5 + v21 - 24;
    if (v29 != v6)
    {
      v30 = *v23;
      *(v5 + 16) = *(v6 - 1);
      *v5 = v30;
    }

    v13 = &v22[v21];
    if (&v22[v21] <= v4)
    {
      break;
    }

    v6 -= 24;
  }

  while (v23 > v7);
  v13 = &v22[v21];
LABEL_64:
  v31 = 24 * ((v13 - v4) / 24);
  if (v23 != v4 || v23 >= &v4[v31])
  {
    memmove(v23, v4, v31);
  }

  return 1;
}

unint64_t sub_1D60A6E1C()
{
  result = qword_1EDF34928;
  if (!qword_1EDF34928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34928);
  }

  return result;
}

uint64_t sub_1D60A6EB8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1D60A6F08(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    sub_1D60A5910();
    swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      swift_getAssociatedConformanceWitness();
      sub_1D7262BAC();
      if (v5 <= 0x3F)
      {
        sub_1D60A7848(319, &qword_1EDF1AD78, sub_1D5E2A63C, &type metadata for FeedCursorKind);
        if (v6 <= 0x3F)
        {
          sub_1D5B5ADF0(319, &qword_1EDF1AD10, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
          if (v7 <= 0x3F)
          {
            sub_1D60A7848(319, &qword_1EDF1AD60, sub_1D60A6E1C, &type metadata for FeedTimeOfDay);
            if (v8 <= 0x3F)
            {
              sub_1D60A7848(319, &qword_1EDF1AD68, sub_1D60A5854, &type metadata for FeedMode);
              if (v9 <= 0x3F)
              {
                sub_1D5B5D8D0(319, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
                if (v10 <= 0x3F)
                {
                  sub_1D5C9290C();
                  if (v11 <= 0x3F)
                  {
                    sub_1D5B5ADF0(319, &qword_1EDF43B80, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
                    if (v12 <= 0x3F)
                    {
                      sub_1D60A7848(319, &qword_1EDF43B98, sub_1D5B5C29C, &type metadata for FeedPlatform);
                      if (v13 <= 0x3F)
                      {
                        sub_1D60A7848(319, &qword_1EDF1AD70, sub_1D60A56CC, &type metadata for FeedBundleSessionState);
                        if (v15 <= 0x3F)
                        {
                          type metadata accessor for FeedGroupEmitterCustomRule(319, v2, v1, v14);
                          if (v16 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

uint64_t sub_1D60A72B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = (*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 8;
  v7 = v5 + 24;
  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(sub_1D725BD1C() - 8);
  if (*(v9 + 84))
  {
    v10 = *(v9 + 64);
  }

  else
  {
    v10 = *(v9 + 64) + 1;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  v11 = 16;
  if (v10 > 0x10)
  {
    v11 = v10;
  }

  v12 = (3u >> (8 * v11)) ^ 0xDB;
  if (v11 > 3)
  {
    v12 = 219;
  }

  if (!a2)
  {
    return 0;
  }

  if (v12 >= a2)
  {
    goto LABEL_35;
  }

  v13 = v11 + 1;
  v14 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v17 = ((~(-1 << v14) + a2 - v12) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v17 < 2)
    {
LABEL_35:
      v19 = *(a1 + v11);
      if (v12 <= (v19 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v19);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_35;
  }

LABEL_24:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v12 + (v13 | v18) + 1;
}

void sub_1D60A7544(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = (*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 8;
  v9 = v7 + 24;
  if (v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(sub_1D725BD1C() - 8);
  if (*(v11 + 84))
  {
    v12 = *(v11 + 64);
  }

  else
  {
    v12 = *(v11 + 64) + 1;
  }

  if (v10 > v12)
  {
    v12 = v10;
  }

  if (v12 <= 0x10)
  {
    v12 = 16;
  }

  v13 = (3u >> (8 * v12)) ^ 0xDB;
  if (v12 > 3)
  {
    v13 = 219;
  }

  v14 = v12 + 1;
  if (v13 >= a3)
  {
    v15 = 0;
    if (v13 < a2)
    {
      goto LABEL_25;
    }

LABEL_29:
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        *&a1[v14] = 0;
        if (!a2)
        {
          return;
        }

LABEL_41:
        a1[v12] = -a2;
        return;
      }

      *&a1[v14] = 0;
    }

    else if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  v15 = 1;
  if (v14 <= 3)
  {
    v16 = ((~(-1 << (8 * v14)) + a3 - v13) >> (8 * v14)) + 1;
    v17 = HIWORD(v16);
    if (v16 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v16 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v17)
    {
      v15 = 4;
    }

    else
    {
      v15 = v19;
    }
  }

  if (v13 >= a2)
  {
    goto LABEL_29;
  }

LABEL_25:
  v20 = ~v13 + a2;
  if (v14 >= 4)
  {
    bzero(a1, v14);
    *a1 = v20;
    v21 = 1;
    if (v15 > 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  v21 = (v20 >> (8 * v14)) + 1;
  if (v12 == -1)
  {
LABEL_45:
    if (v15 > 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  v22 = v20 & ~(-1 << (8 * v14));
  bzero(a1, v14);
  if (v14 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    goto LABEL_45;
  }

  if (v14 == 2)
  {
    *a1 = v22;
    if (v15 > 1)
    {
LABEL_49:
      if (v15 == 2)
      {
        *&a1[v14] = v21;
      }

      else
      {
        *&a1[v14] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v15 > 1)
    {
      goto LABEL_49;
    }
  }

LABEL_46:
  if (v15)
  {
    a1[v14] = v21;
  }
}

void sub_1D60A7848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1D7262BAC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D60A793C(uint64_t a1)
{
  if (!qword_1EC8832E8)
  {
    sub_1D725891C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8832E8);
    }
  }
}

uint64_t sub_1D60A79A4(uint64_t a1, uint64_t a2)
{
  sub_1D60A793C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60A7A08(uint64_t a1, uint64_t a2)
{
  sub_1D60A793C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatAudioTrack.overrides.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
  *(a1 + 24) = v2;
}

uint64_t FormatAudioTrack.init(article:overrides:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1];
  if (v3 == 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0uLL;
  }

  else
  {
    v5 = *(a2 + 1);
    v4 = *a2;
  }

  *a3 = result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = v5;
  return result;
}

NewsFeed::FormatAudioTrack::Overrides __swiftcall FormatAudioTrack.Overrides.init(title:featureName:)(Swift::String_optional title, Swift::String_optional featureName)
{
  *v2 = title;
  v2[1] = featureName;
  result.featureName = featureName;
  result.title = title;
  return result;
}

uint64_t sub_1D60A7B7C()
{
  if (*v0)
  {
    return 0x4E65727574616566;
  }

  else
  {
    return 0x656C746974;
  }
}

void sub_1D60A7BBC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4E65727574616566 && a2 == 0xEB00000000656D61)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D60A7C98(uint64_t a1)
{
  v2 = sub_1D60A8880();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60A7CD4(uint64_t a1)
{
  v2 = sub_1D60A8880();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAudioTrack.Overrides.encode(to:)(void *a1)
{
  sub_1D60A8A70(0, &unk_1EDF02780, sub_1D60A8880, &type metadata for FormatAudioTrack.Overrides.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v12[1] = *(v1 + 24);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60A8880();
  sub_1D7264B5C();
  v14 = 0;
  v10 = v12[3];
  sub_1D726437C();
  if (!v10)
  {
    v13 = 1;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

void FormatAudioTrack.Overrides.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_1D60A8A70(0, &qword_1EDF03A88, sub_1D60A8880, &type metadata for FormatAudioTrack.Overrides.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60A8880();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v18;
    v20 = 0;
    v11 = sub_1D726422C();
    v13 = v12;
    v17 = v11;
    v19 = 1;
    v14 = sub_1D726422C();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    *v10 = v17;
    v10[1] = v13;
    v10[2] = v14;
    v10[3] = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1D60A8118()
{
  if (*v0)
  {
    return 0x656469727265766FLL;
  }

  else
  {
    return 0x656C6369747261;
  }
}

void sub_1D60A8158(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D60A823C(uint64_t a1)
{
  v2 = sub_1D60A89C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60A8278(uint64_t a1)
{
  v2 = sub_1D60A89C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAudioTrack.encode(to:)(void *a1)
{
  sub_1D60A8A70(0, &qword_1EC8832F0, sub_1D60A89C8, &type metadata for FormatAudioTrack.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = *v1;
  v11 = v1[2];
  v10 = v1[3];
  v16 = v1[1];
  v17 = v11;
  v15 = v10;
  v18 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60A89C8();

  sub_1D7264B5C();
  v20 = v9;
  v24 = 0;
  type metadata accessor for FormatArticle(0);
  sub_1D60A8AD8(&qword_1EDF11EA0, &protocol conformance descriptor for FormatArticle);
  v12 = v19;
  sub_1D726443C();

  if (!v12)
  {
    v20 = v16;
    v21 = v17;
    v22 = v15;
    v23 = v18;
    v24 = 1;
    sub_1D60A8A1C();

    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

void FormatAudioTrack.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D60A8A70(0, &qword_1EC883300, sub_1D60A89C8, &type metadata for FormatAudioTrack.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60A89C8();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v6;
    v11 = v17;
    type metadata accessor for FormatArticle(0);
    v21 = 0;
    sub_1D60A8AD8(&qword_1EDF417D0, &protocol conformance descriptor for FormatArticle);
    sub_1D726431C();
    v12 = v18;
    v21 = 1;
    sub_1D60A8B1C();
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v13 = v18;
    v14 = v20;
    v15 = v19;
    *v11 = v12;
    *(v11 + 8) = v13;
    *(v11 + 16) = v15;
    *(v11 + 32) = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t _s8NewsFeed16FormatAudioTrackV9OverridesV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_1D72646CC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D60A8880()
{
  result = qword_1EDF115B8;
  if (!qword_1EDF115B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115B8);
  }

  return result;
}

uint64_t _s8NewsFeed16FormatAudioTrackV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  type metadata accessor for FormatArticle(0);
  if (static FormatArticle.== infix(_:_:)(v2, v7))
  {
    v15[0] = v3;
    v15[1] = v4;
    v15[2] = v5;
    v15[3] = v6;
    v14[0] = v8;
    v14[1] = v9;
    v14[2] = v10;
    v14[3] = v11;
    v12 = _s8NewsFeed16FormatAudioTrackV9OverridesV2eeoiySbAE_AEtFZ_0(v15, v14);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_1D60A89C8()
{
  result = qword_1EC8832F8;
  if (!qword_1EC8832F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8832F8);
  }

  return result;
}

unint64_t sub_1D60A8A1C()
{
  result = qword_1EDF115A0;
  if (!qword_1EDF115A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115A0);
  }

  return result;
}

void sub_1D60A8A70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D60A8AD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatArticle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D60A8B1C()
{
  result = qword_1EDF11598;
  if (!qword_1EDF11598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11598);
  }

  return result;
}

unint64_t sub_1D60A8BB0()
{
  result = qword_1EC883308;
  if (!qword_1EC883308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883308);
  }

  return result;
}

uint64_t sub_1D60A8C44(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60A8C98()
{
  result = qword_1EC883310;
  if (!qword_1EC883310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883310);
  }

  return result;
}

unint64_t sub_1D60A8CEC()
{
  result = qword_1EC883318;
  if (!qword_1EC883318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883318);
  }

  return result;
}

unint64_t sub_1D60A8D40()
{
  result = qword_1EC883320;
  if (!qword_1EC883320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883320);
  }

  return result;
}

uint64_t sub_1D60A8DA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

unint64_t sub_1D60A8E34()
{
  result = qword_1EC883328;
  if (!qword_1EC883328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883328);
  }

  return result;
}

unint64_t sub_1D60A8E8C()
{
  result = qword_1EC883330;
  if (!qword_1EC883330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883330);
  }

  return result;
}

unint64_t sub_1D60A8EE4()
{
  result = qword_1EC883338;
  if (!qword_1EC883338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883338);
  }

  return result;
}

unint64_t sub_1D60A8F3C()
{
  result = qword_1EC883340;
  if (!qword_1EC883340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883340);
  }

  return result;
}

unint64_t sub_1D60A8F94()
{
  result = qword_1EDF115A8;
  if (!qword_1EDF115A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115A8);
  }

  return result;
}

unint64_t sub_1D60A8FEC()
{
  result = qword_1EDF115B0;
  if (!qword_1EDF115B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115B0);
  }

  return result;
}

id IssueActivityItemsConfiguration.__allocating_init(issue:userHasAccess:)(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {

    return 0;
  }

  sub_1D5E42B34();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D728AF30;
  v5 = type metadata accessor for SharingIssueImageActivityItemSource();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR____TtC8NewsFeed35SharingIssueImageActivityItemSource_issueImage;
  *&v6[OBJC_IVAR____TtC8NewsFeed35SharingIssueImageActivityItemSource_issueImage] = 0;
  v8 = a1;
  v9 = [v8 coverImageAssetHandle];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v9 filePath];
  if (!v11)
  {

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v12 = v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

LABEL_8:
  v15 = objc_allocWithZone(v2);
  v16 = *&v6[v7];
  *&v6[v7] = v13;

  v37.receiver = v6;
  v37.super_class = v5;
  v17 = objc_msgSendSuper2(&v37, sel_init);

  *(v4 + 32) = v17;
  v18 = type metadata accessor for SharingIssueTextActivityItemSource();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_issue] = v8;
  v20 = v8;
  v21 = [v20 title];
  v22 = sub_1D726207C();
  v24 = v23;

  v25 = &v19[OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemTitle];
  *v25 = v22;
  v25[1] = v24;
  v26 = [v20 coverDate];
  v27 = sub_1D726207C();
  v29 = v28;

  v30 = &v19[OBJC_IVAR____TtC8NewsFeed34SharingIssueTextActivityItemSource_itemCoverDate];
  *v30 = v27;
  v30[1] = v29;
  v36.receiver = v19;
  v36.super_class = v18;
  v31 = objc_msgSendSuper2(&v36, sel_init);

  *(v4 + 40) = v31;
  objc_allocWithZone(type metadata accessor for SharingIssueURLActivityItemSource(0));
  v32 = v20;
  v33 = sub_1D68D8434(v32, 0);

  *(v4 + 48) = v33;
  sub_1D5B5534C(0, &unk_1EC88CA50, &protocolRef_UIActivityItemSource);
  v34 = sub_1D726265C();

  v35 = [v15 initNAWithActivityItemSources_];

  return v35;
}

id IssueActivityItemsConfiguration.__allocating_init(issue:itemOptions:)(void *a1, uint64_t a2)
{
  v3 = sub_1D61881BC();

  return IssueActivityItemsConfiguration.__allocating_init(issue:userHasAccess:)(a1, v3 & 1);
}

id IssueActivityItemsConfiguration.__allocating_init(objects:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  sub_1D5B5534C(0, &qword_1EC8833B0, &protocolRef_NSItemProviderWriting);
  v3 = sub_1D726265C();

  v4 = [v2 initWithObjects_];

  return v4;
}

id IssueActivityItemsConfiguration.init(objects:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1D5B5534C(0, &qword_1EC8833B0, &protocolRef_NSItemProviderWriting);
  v3 = sub_1D726265C();

  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithObjects_, v3);

  return v4;
}

id IssueActivityItemsConfiguration.__allocating_init(itemProviders:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  sub_1D60A95CC();
  v3 = sub_1D726265C();

  v4 = [v2 initWithItemProviders_];

  return v4;
}

id IssueActivityItemsConfiguration.init(itemProviders:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1D60A95CC();
  v3 = sub_1D726265C();

  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithItemProviders_, v3);

  return v4;
}

id sub_1D60A9544(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id IssueActivityItemsConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D60A95CC()
{
  result = qword_1EC88CAC0;
  if (!qword_1EC88CAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC88CAC0);
  }

  return result;
}

uint64_t FormatPuzzleType.overrides.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D60AC41C(0, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
  swift_beginAccess();
  sub_1D60A9718(v1 + v7, v6);
  return sub_1D60A97B4(v6, a1);
}

uint64_t sub_1D60A9718(uint64_t a1, uint64_t a2)
{
  sub_1D60AC41C(0, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60A97B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPuzzleType.Overrides(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id FCPuzzleTypeProviding.overridden(by:assetManager:)(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_1D5B544D0(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v25 - v8;
  sub_1D5B544D0(0, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for FormatPuzzleType.Overrides(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D60A9B30(a1, v13, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D60A9B9C(v13, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides);
  }

  else
  {
    sub_1D60A97B4(v13, v18);
    if ((~*v18 & 0xF000000000000007) != 0 || (~v18[1] & 0xF000000000000007) != 0 || (v19 = *(v14 + 24), v20 = MEMORY[0x1E6968FB0], sub_1D60A9B30(v18 + v19, v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0]), v21 = sub_1D72585BC(), v22 = (*(*(v21 - 8) + 48))(v9, 1, v21), sub_1D60A9B9C(v9, &qword_1EDF45B40, v20), v22 != 1))
    {
      v23 = sub_1D60AA7E4(a2);
      v3 = [objc_allocWithZone(MEMORY[0x1E69B5528]) initWithPuzzleType:v3 overrides:v23];

      sub_1D60ACBAC(v18, type metadata accessor for FormatPuzzleType.Overrides);
      return v3;
    }

    sub_1D60ACBAC(v18, type metadata accessor for FormatPuzzleType.Overrides);
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_1D60A9B30(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B544D0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D60A9B9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B544D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FormatPuzzleType.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D60A9C28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D60AC41C(0, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = *a1;
  v9 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
  swift_beginAccess();
  sub_1D60A9718(v8 + v9, v7);
  return sub_1D60A97B4(v7, a2);
}

uint64_t sub_1D60A9D0C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for FormatPuzzleType.Overrides(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60AC3B8(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
  swift_beginAccess();
  sub_1D60AAA64(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t FormatPuzzleType.overrides.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
  swift_beginAccess();
  sub_1D60AAA64(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t FormatPuzzleType.Overrides.init(themeColor:darkStyleThemeColor:exploreTileImage:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a2;
  *a4 = *a1;
  a4[1] = v5;
  v6 = a4 + *(type metadata accessor for FormatPuzzleType.Overrides(0) + 24);

  return sub_1D5EB8540(a3, v6);
}

uint64_t FormatPuzzleType.__allocating_init(identifier:overrides:selectors:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__selectors;
  swift_beginAccess();
  *(v10 + v11) = a4;
  v12 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__properties;
  swift_beginAccess();
  *(v10 + v12) = a5;
  v13 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
  swift_beginAccess();
  sub_1D60A97B4(a3, v10 + v13);
  return v10;
}

uint64_t FormatPuzzleType.init(identifier:overrides:selectors:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__selectors;
  swift_beginAccess();
  *(v5 + v9) = a4;
  v10 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__properties;
  swift_beginAccess();
  *(v5 + v10) = a5;
  v11 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
  swift_beginAccess();
  sub_1D60A97B4(a3, v5 + v11);
  return v5;
}

uint64_t FormatPuzzleType.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatPuzzleType.init(from:)(a1);
  return v2;
}

void *FormatPuzzleType.init(from:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v39 = a1;
  v40 = v5;
  sub_1D5B544D0(0, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v37 = &v34 - v8;
  v38 = type metadata accessor for FormatPuzzleType.Overrides(0);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v9);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D60AC41C(0, &qword_1EDF19C40, sub_1D5E1C49C, &type metadata for FormatPuzzleType.CodingKeys, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v36 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v34 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C49C();
  v17 = v3;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    v18 = v37;
    v19 = v38;
    v34 = v11;
    v20 = v36;
    v43 = 0;
    v3[2] = sub_1D72642BC();
    v3[3] = v21;
    v43 = 1;
    sub_1D60AC370(&qword_1EDF30130, type metadata accessor for FormatPuzzleType.Overrides, &protocol conformance descriptor for FormatPuzzleType.Overrides);
    v22 = v18;
    sub_1D726427C();
    v23 = *(v35 + 48);
    if (v23(v18, 1, v19) == 1)
    {
      v35 = *(v19 + 24);
      v24 = sub_1D72585BC();
      v25 = v34;
      (*(*(v24 - 8) + 56))(v34->i64 + v35, 1, 1, v24);
      *v25 = vdupq_n_s64(0xF000000000000007);
      if (v23(v22, 1, v38) != 1)
      {
        sub_1D60A9B9C(v22, qword_1EDF40980, type metadata accessor for FormatPuzzleType.Overrides);
      }
    }

    else
    {
      v25 = v34;
      sub_1D60A97B4(v22, v34);
    }

    v26 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
    swift_beginAccess();
    sub_1D60A97B4(v25, v3 + v26);
    sub_1D5B81B04();
    LOBYTE(v41) = 2;
    sub_1D5C4EA9C();
    sub_1D726427C();
    v27 = v16;
    v28 = v3;
    if (v42)
    {
      v29 = v42;
    }

    else
    {
      v29 = MEMORY[0x1E69E7CD0];
    }

    v30 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__selectors;
    swift_beginAccess();
    *(v17 + v30) = v29;
    sub_1D5B5CFF8(0, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    v44 = 3;
    sub_1D60AC514(&qword_1EDF3C910, sub_1D5B59CD8, MEMORY[0x1E69E6330]);
    sub_1D726427C();
    if (v41)
    {
      v32 = v41;
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    (*(v20 + 8))(v27, v13);
    v33 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__properties;
    swift_beginAccess();
    *(v28 + v33) = v32;
    __swift_destroy_boxed_opaque_existential_1(v39);
    return v28;
  }

  return v17;
}

id sub_1D60AA7E4(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E6968FB0];
  sub_1D5B544D0(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v22 - v7;
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FormatPuzzleType.Overrides(0);
  sub_1D60A9B30(v2 + *(v14 + 24), v8, &qword_1EDF45B40, v4);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D60A9B9C(v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v16 = 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v17 = sub_1D725844C();
    v16 = [a1 assetHandleForURL:v17 lifetimeHint:0];

    (*(v10 + 8))(v13, v9);
  }

  if ((~*v2 & 0xF000000000000007) != 0)
  {
    v23 = *v2;
    v18 = sub_1D60AAB5C(v15);
  }

  else
  {
    v18 = 0;
  }

  if ((~v2[1] & 0xF000000000000007) != 0)
  {
    v23 = v2[1];
    v19 = sub_1D60AAB5C(v15);
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69B5540]) initWithThemeColor:v18 darkStyleThemeColor:v19 exploreTileImageAssetHandle:v16];

  return v20;
}

uint64_t sub_1D60AAA64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPuzzleType.Overrides(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60AAAC8(uint64_t a1)
{
  sub_1D60AC41C(0, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D60AAB5C(__n128 a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v7 = 0.0;
  v8[0] = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v8[1] = v2;
  v3 = FormatColor.color.getter(a1);
  [(objc_class *)v3 getRed:v8 green:&v7 blue:&v6 alpha:&v5];

  return [objc_allocWithZone(MEMORY[0x1E69B5218]) initWithRed:v8[0] green:v7 blue:v6 alpha:v5];
}

uint64_t sub_1D60AAC28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v47 = sub_1D72585BC();
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B544D0(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  *&v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7).n128_u64[0];
  v10 = &v44 - v9;
  v11 = [a1 themeColor];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    [v12 red];
    v15 = v14 * 255.0;
    [v12 green];
    v17 = v16 * 255.0;
    [v12 blue];
    v19 = v18 * 255.0;
    [v12 alpha];
    v21 = v20;

    *(v13 + 16) = v15;
    *(v13 + 24) = v17;
    *(v13 + 32) = v19;
    *(v13 + 40) = v21;
    v22 = v13 | 0x6000000000000000;
    *(v13 + 48) = 0;
  }

  else
  {
    v22 = 0xF000000000000007;
  }

  v23 = v46;
  *v46 = v22;
  v24 = [a1 darkStyleThemeColor];
  if (v24)
  {
    v25 = v24;
    v26 = swift_allocObject();
    [v25 &selRef_puzzleType];
    v28 = v27 * 255.0;
    [v25 &off_1E84D3078];
    v30 = v29 * 255.0;
    [v25 &selRef_contentURL];
    v32 = v31 * 255.0;
    [v25 &off_1E84D33F8];
    v34 = v33;

    *(v26 + 16) = v28;
    *(v26 + 24) = v30;
    *(v26 + 32) = v32;
    *(v26 + 40) = v34;
    v35 = v26 | 0x6000000000000000;
    *(v26 + 48) = 0;
  }

  else
  {
    v35 = 0xF000000000000007;
  }

  v23[1] = v35;
  v36 = [a1 exploreTileImageAssetHandle];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 remoteURL];

    v39 = v45;
    sub_1D72584EC();

    sub_1D72583AC();
    swift_unknownObjectRelease();
    v40 = v39;
    v41 = v47;
    (*(v3 + 8))(v40, v47);
    (*(v3 + 56))(v10, 0, 1, v41);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v3 + 56))(v10, 1, 1, v47);
  }

  v42 = type metadata accessor for FormatPuzzleType.Overrides(0);
  return sub_1D5EB8540(v10, v23 + *(v42 + 24));
}

unint64_t sub_1D60AAFB4()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F43656D656874;
  }
}

uint64_t sub_1D60AB020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D60ACA7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D60AB048(uint64_t a1)
{
  v2 = sub_1D60AC31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60AB084(uint64_t a1)
{
  v2 = sub_1D60AC31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleType.Overrides.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D60AC41C(0, &qword_1EDF02738, sub_1D60AC31C, &type metadata for FormatPuzzleType.Overrides.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60AC31C();
  sub_1D7264B5C();
  v14 = *v3;
  v13 = 0;
  sub_1D5CFCFAC(v14);
  sub_1D5B55CBC();
  sub_1D72643BC();
  if (v2)
  {
    sub_1D5C84FF4(v14);
  }

  else
  {
    sub_1D5C84FF4(v14);
    v14 = v3[1];
    v13 = 1;
    sub_1D5CFCFAC(v14);
    sub_1D72643BC();
    sub_1D5C84FF4(v14);
    type metadata accessor for FormatPuzzleType.Overrides(0);
    LOBYTE(v14) = 2;
    sub_1D72585BC();
    sub_1D60AC370(&unk_1EDF45B70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t FormatPuzzleType.Overrides.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1D5B544D0(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - v6;
  sub_1D60AC41C(0, &qword_1EC8833B8, sub_1D60AC31C, &type metadata for FormatPuzzleType.Overrides.CodingKeys, MEMORY[0x1E69E6F48]);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for FormatPuzzleType.Overrides(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D60AC31C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v17 = v23;
  v18 = v15;
  v26 = 0;
  sub_1D5B570F8();
  v19 = v24;
  sub_1D726427C();
  *v18 = v27;
  v26 = 1;
  sub_1D726427C();
  v18[1] = v27;
  sub_1D72585BC();
  LOBYTE(v27) = 2;
  sub_1D60AC370(&unk_1EDF45B50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1D726427C();
  (*(v17 + 8))(v11, v19);
  sub_1D5EB8540(v7, v18 + *(v12 + 24));
  sub_1D60AC3B8(v18, v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1D60ACBAC(v18, type metadata accessor for FormatPuzzleType.Overrides);
}

uint64_t sub_1D60AB720(uint64_t a1)
{
  v2 = sub_1D5E1C49C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60AB75C(uint64_t a1)
{
  v2 = sub_1D5E1C49C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleType.deinit()
{

  sub_1D60AAAC8(v0 + OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides);

  return v0;
}

uint64_t FormatPuzzleType.__deallocating_deinit()
{

  sub_1D60AAAC8(v0 + OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides);

  return swift_deallocClassInstance();
}

double FormatPuzzleType.encode(to:)(void *a1)
{
  sub_1D5B544D0(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v29 - v4;
  sub_1D60AC41C(0, &unk_1EDF402B0, sub_1D5E9E610, &type metadata for FormatCodingPuzzleTypeOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (v29 - v8);
  sub_1D60AC41C(0, &qword_1EDF02740, sub_1D5E1C49C, &type metadata for FormatPuzzleType.CodingKeys, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v29 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C49C();
  v16 = v29[1];
  sub_1D7264B5C();
  v33 = 0;
  v30 = v11;
  v17 = v29[2];
  sub_1D72643FC();
  if (v17)
  {
    (*(v12 + 8))(v15, v30);
  }

  else
  {
    v19 = v12;
    v20 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__overrides;
    swift_beginAccess();
    sub_1D60A9718(v16 + v20, v9);
    if ((~*v9 & 0xF000000000000007) != 0 || (~v9[1] & 0xF000000000000007) != 0 || (v21 = type metadata accessor for FormatPuzzleType.Overrides(0), v22 = MEMORY[0x1E6968FB0], sub_1D60A9B30(v9 + *(v21 + 24), v5, &qword_1EDF45B40, MEMORY[0x1E6968FB0]), v23 = sub_1D72585BC(), v24 = (*(*(v23 - 8) + 48))(v5, 1, v23), sub_1D60A9B9C(v5, &qword_1EDF45B40, v22), v24 != 1))
    {
      v32 = 1;
      sub_1D60AC484();
      type metadata accessor for FormatPuzzleType.Overrides(0);
      sub_1D60AC370(&qword_1EDF111E0, type metadata accessor for FormatPuzzleType.Overrides, &protocol conformance descriptor for FormatPuzzleType.Overrides);
      sub_1D72647EC();
    }

    sub_1D60AAAC8(v9);
    v25 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__selectors;
    swift_beginAccess();
    if (*(*(v16 + v25) + 16))
    {

      sub_1D5E0831C(v26, v15, 2);
    }

    v27 = OBJC_IVAR____TtC8NewsFeed16FormatPuzzleType__properties;
    swift_beginAccess();
    v28 = *(v16 + v27);
    if (*(v28 + 16))
    {
      v34 = 3;
      v31 = v28;
      sub_1D60AC484();
      sub_1D5B5CFF8(0, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
      sub_1D60AC514(&qword_1EDF05030, sub_1D5B59D2C, MEMORY[0x1E69E6300]);

      sub_1D72647EC();
    }

    else
    {
    }

    (*(v19 + 8))(v15, v30);
  }

  return result;
}

void *sub_1D60ABDBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatPuzzleType.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

BOOL _s8NewsFeed16FormatPuzzleTypeC9OverridesV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1D72585BC();
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B544D0(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v29 - v10;
  sub_1D5BB60D4(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *a2;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    v32 = *a1;
    if ((~v18 & 0xF000000000000007) == 0)
    {
LABEL_10:
      sub_1D5CFCFAC(v17);
      sub_1D5CFCFAC(v18);
      sub_1D5CFCFAC(v17);

      goto LABEL_11;
    }

    v31 = v18;
    sub_1D5CFCFAC(v17);
    sub_1D5CFCFAC(v18);
    sub_1D5CFCFAC(v17);
    v19 = static FormatColor.== infix(_:_:)(&v32, &v31);

    sub_1D5C84FF4(v17);
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1D5CFCFAC(*a1);
    sub_1D5CFCFAC(v18);
    if ((~v18 & 0xF000000000000007) != 0)
    {
LABEL_11:
      sub_1D5C84FF4(v17);
      sub_1D5C84FF4(v18);
      return 0;
    }

    sub_1D5C84FF4(v17);
  }

  v17 = a1[1];
  v18 = a2[1];
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v32 = a1[1];
    if ((~v18 & 0xF000000000000007) != 0)
    {
      v31 = v18;
      sub_1D5CFCFAC(v17);
      sub_1D5CFCFAC(v18);
      sub_1D5CFCFAC(v17);
      v21 = static FormatColor.== infix(_:_:)(&v32, &v31);

      sub_1D5C84FF4(v17);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  sub_1D5CFCFAC(a1[1]);
  sub_1D5CFCFAC(v18);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    goto LABEL_11;
  }

  sub_1D5C84FF4(v17);
LABEL_15:
  v22 = *(type metadata accessor for FormatPuzzleType.Overrides(0) + 24);
  v23 = *(v13 + 48);
  v24 = MEMORY[0x1E6968FB0];
  sub_1D60A9B30(a1 + v22, v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D60A9B30(a2 + v22, &v16[v23], &qword_1EDF45B40, v24);
  v25 = v30;
  v26 = *(v30 + 48);
  if (v26(v16, 1, v4) == 1)
  {
    if (v26(&v16[v23], 1, v4) == 1)
    {
      sub_1D60A9B9C(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1D60A9B30(v16, v11, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v26(&v16[v23], 1, v4) == 1)
  {
    (*(v25 + 8))(v11, v4);
LABEL_20:
    sub_1D60ACBAC(v16, sub_1D5BB60D4);
    return 0;
  }

  (*(v25 + 32))(v7, &v16[v23], v4);
  sub_1D60AC370(&unk_1EDF45B60, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v27 = sub_1D7261FBC();
  v28 = *(v25 + 8);
  v28(v7, v4);
  v28(v11, v4);
  sub_1D60A9B9C(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  return (v27 & 1) != 0;
}

unint64_t sub_1D60AC31C()
{
  result = qword_1EDF111F8[0];
  if (!qword_1EDF111F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF111F8);
  }

  return result;
}

uint64_t sub_1D60AC370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D60AC3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPuzzleType.Overrides(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D60AC41C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D60AC484()
{
  result = qword_1EC87F9B0;
  if (!qword_1EC87F9B0)
  {
    sub_1D60AC41C(255, &qword_1EDF02740, sub_1D5E1C49C, &type metadata for FormatPuzzleType.CodingKeys, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F9B0);
  }

  return result;
}

uint64_t sub_1D60AC514(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5CFF8(255, &qword_1EDF3C918, &type metadata for FormatProperty, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D60AC5A4(void *a1)
{
  a1[1] = sub_1D60AC370(&qword_1EDF30130, type metadata accessor for FormatPuzzleType.Overrides, &protocol conformance descriptor for FormatPuzzleType.Overrides);
  a1[2] = sub_1D60AC370(&qword_1EDF111E0, type metadata accessor for FormatPuzzleType.Overrides, &protocol conformance descriptor for FormatPuzzleType.Overrides);
  result = sub_1D60AC370(&qword_1EC8833C0, type metadata accessor for FormatPuzzleType.Overrides, &protocol conformance descriptor for FormatPuzzleType.Overrides);
  a1[3] = result;
  return result;
}

uint64_t sub_1D60AC650(void *a1)
{
  a1[1] = sub_1D60AC370(&qword_1EDF30128, type metadata accessor for FormatPuzzleType, &protocol conformance descriptor for FormatPuzzleType);
  a1[2] = sub_1D60AC370(&qword_1EDF111D8, type metadata accessor for FormatPuzzleType, &protocol conformance descriptor for FormatPuzzleType);
  result = sub_1D60AC370(&qword_1EC8833C8, type metadata accessor for FormatPuzzleType, &protocol conformance descriptor for FormatPuzzleType);
  a1[3] = result;
  return result;
}

uint64_t sub_1D60AC724(uint64_t a1)
{
  result = type metadata accessor for FormatPuzzleType.Overrides(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D60AC870()
{
  result = qword_1EC8833D0;
  if (!qword_1EC8833D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8833D0);
  }

  return result;
}

unint64_t sub_1D60AC8C8()
{
  result = qword_1EC8833D8;
  if (!qword_1EC8833D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8833D8);
  }

  return result;
}

unint64_t sub_1D60AC920()
{
  result = qword_1EDF111E8;
  if (!qword_1EDF111E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF111E8);
  }

  return result;
}

unint64_t sub_1D60AC978()
{
  result = qword_1EDF111F0;
  if (!qword_1EDF111F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF111F0);
  }

  return result;
}

unint64_t sub_1D60AC9D0()
{
  result = qword_1EDF30138;
  if (!qword_1EDF30138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30138);
  }

  return result;
}

unint64_t sub_1D60ACA28()
{
  result = qword_1EDF30140;
  if (!qword_1EDF30140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30140);
  }

  return result;
}

uint64_t sub_1D60ACA7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F43656D656874 && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73BB920 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73BB9B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D60ACBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SportsConfigResourceEmbed.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SportsConfigResourceEmbed.with(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = v6;
}

uint64_t sub_1D60ACD9C()
{
  v1 = 0x696669746E656469;
  v2 = 0x736E6F6974706FLL;
  if (*v0 != 2)
  {
    v2 = 0x726F7463656C6573;
  }

  if (*v0)
  {
    v1 = 0x6574656D61726170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D60ACE20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D60AEBF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D60ACE48(uint64_t a1)
{
  v2 = sub_1D5E1C448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60ACE84(uint64_t a1)
{
  v2 = sub_1D5E1C448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsConfigResourceEmbed.encode(to:)(void *a1)
{
  sub_1D60AE8E0(0, &qword_1EC87F9A0, sub_1D5E1C448, &type metadata for SportsConfigResourceEmbed.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v16 = v1[3];
  v17 = v9;
  v15 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C448();
  sub_1D7264B5C();
  LOBYTE(v19) = 0;
  v10 = v18;
  sub_1D72643FC();
  if (!v10)
  {
    v12 = v15;
    v13 = v16;
    if (*(v17 + 16))
    {
      v20 = 1;
      v19 = v17;
      sub_1D60AD158();
      sub_1D60AD1E8();
      sub_1D60AD238();
      sub_1D72647EC();
    }

    if (*(v13 + 16))
    {
      v20 = 2;
      v19 = v13;
      sub_1D60AD158();
      sub_1D60AED68(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      sub_1D60AD304();
      sub_1D72647EC();
    }

    if (*(v12 + 16))
    {
      sub_1D5E06D08(v12, v8, 3);
    }
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D60AD158()
{
  result = qword_1EC87F9A8;
  if (!qword_1EC87F9A8)
  {
    sub_1D60AE8E0(255, &qword_1EC87F9A0, sub_1D5E1C448, &type metadata for SportsConfigResourceEmbed.CodingKeys, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F9A8);
  }

  return result;
}

void sub_1D60AD1E8()
{
  if (!qword_1EDF04B58)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04B58);
    }
  }
}

unint64_t sub_1D60AD238()
{
  result = qword_1EDF04B50;
  if (!qword_1EDF04B50)
  {
    sub_1D60AD1E8();
    sub_1D60AD2B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04B50);
  }

  return result;
}

unint64_t sub_1D60AD2B0()
{
  result = qword_1EDF0A230;
  if (!qword_1EDF0A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A230);
  }

  return result;
}

unint64_t sub_1D60AD304()
{
  result = qword_1EDF050B0;
  if (!qword_1EDF050B0)
  {
    sub_1D60AED68(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    sub_1D60AD3DC(&qword_1EDF45940, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF050B0);
  }

  return result;
}

uint64_t sub_1D60AD3DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double SportsConfigResourceEmbed.init(from:)@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  sub_1D5C8CD38();
  v43 = v3;
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E528(0);
  v45 = v6;
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60AE7D0(0);
  v10 = v9;
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60AE8E0(0, &qword_1EDF039D8, sub_1D5E1C448, &type metadata for SportsConfigResourceEmbed.CodingKeys, MEMORY[0x1E69E6F48]);
  v15 = v14;
  v50 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v38 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C448();
  v19 = v51;
  sub_1D7264B0C();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v20 = v49;
    v58 = 0;
    v40 = sub_1D72642BC();
    v41 = v22;
    v57 = 1;
    v23 = sub_1D726434C();
    v51 = v18;
    if (v23)
    {
      v52 = 1;
      sub_1D60AD3DC(&qword_1EDF17EA8, sub_1D60AE7D0, MEMORY[0x1E69D64C8]);
      v24 = v10;
      sub_1D726431C();
      v25 = sub_1D725A74C();
      (*(v20 + 8))(v13, v24);
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    v56 = 2;
    v26 = sub_1D726434C();
    v27 = v48;
    if (v26)
    {
      v53 = 2;
      sub_1D60AD3DC(&qword_1EDF3BD80, sub_1D5C2E528, MEMORY[0x1E69D64C8]);
      v28 = v45;
      v29 = v46;
      sub_1D726431C();
      v39 = a1;
      v49 = v25;
      v30 = sub_1D725A74C();
      (*(v42 + 8))(v29, v28);
    }

    else
    {
      v49 = v25;
      v30 = MEMORY[0x1E69E7CC0];
      v39 = a1;
    }

    v46 = v30;
    v55 = 3;
    v31 = sub_1D726434C();
    v32 = v47;
    if (v31)
    {
      v54 = 3;
      sub_1D60AD3DC(&qword_1EDF3BE00, sub_1D5C8CD38, MEMORY[0x1E69D6380]);
      v33 = v43;
      v34 = v44;
      sub_1D726431C();
      v35 = sub_1D725A74C();
      (*(v32 + 8))(v34, v33);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CD0];
    }

    (*(v50 + 8))(v51, v15);
    v36 = v41;
    *v27 = v40;
    v27[1] = v36;
    v37 = v46;
    v27[2] = v49;
    v27[3] = v37;
    v27[4] = v35;

    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return result;
}

uint64_t SportsConfigResourceParameter.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SportsConfigResourceParameter.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static SportsConfigResourceParameter.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D72646CC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D72646CC();
    }
  }

  return result;
}

uint64_t sub_1D60ADBBC()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

void sub_1D60ADBEC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D60ADCC4(uint64_t a1)
{
  v2 = sub_1D60AE88C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60ADD00(uint64_t a1)
{
  v2 = sub_1D60AE88C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsConfigResourceParameter.encode(to:)(void *a1)
{
  sub_1D60AE8E0(0, &qword_1EDF02578, sub_1D60AE88C, &type metadata for SportsConfigResourceParameter.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v12[1] = *(v1 + 24);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60AE88C();
  sub_1D7264B5C();
  v14 = 0;
  v10 = v12[3];
  sub_1D72643FC();
  if (!v10)
  {
    v13 = 1;
    sub_1D72643FC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SportsConfigResourceParameter.hash(into:)(uint64_t a1)
{
  sub_1D72621EC();

  return sub_1D72621EC();
}

uint64_t SportsConfigResourceParameter.hashValue.getter()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void SportsConfigResourceParameter.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_1D60AE8E0(0, &qword_1EDF03968, sub_1D60AE88C, &type metadata for SportsConfigResourceParameter.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60AE88C();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v18;
    v20 = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v17 = v11;
    v19 = 1;
    v14 = sub_1D72642BC();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    *v10 = v17;
    v10[1] = v13;
    v10[2] = v14;
    v10[3] = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t _s8NewsFeed24FormatLocalizationStringV8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D72646CC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D72646CC();
    }
  }

  return result;
}

uint64_t sub_1D60AE298()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D60AE300(uint64_t a1)
{
  sub_1D72621EC();

  return sub_1D72621EC();
}

uint64_t sub_1D60AE350(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D60AE3B4(uint64_t a1, __n128 a2)
{
  v3 = sub_1D7257B5C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60AED68(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v26 - v10;
  sub_1D7257C3C();
  v12 = sub_1D7257C7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v13 + 48;
  if (!v14(v11, 1, v12))
  {
    v31 = a1;
    sub_1D60AD1E8();
    sub_1D60AD3DC(&qword_1EC8833F8, sub_1D60AD1E8, MEMORY[0x1E69E6328]);
    v16 = sub_1D72623CC();
    v17 = *(v16 + 16);
    if (v17)
    {
      v26[1] = v15;
      v27 = v14;
      v28 = v12;
      v29 = v11;
      v31 = MEMORY[0x1E69E7CC0];
      sub_1D6998938(0, v17, 0);
      v18 = v31;
      v30 = v4 + 32;
      v26[0] = v16;
      v19 = v16 + 56;
      do
      {

        sub_1D7257B2C();

        v31 = v18;
        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D6998938((v20 > 1), v21 + 1, 1);
          v18 = v31;
        }

        *(v18 + 16) = v21 + 1;
        (*(v4 + 32))(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, v3);
        v19 += 32;
        --v17;
      }

      while (v17);

      v12 = v28;
      v11 = v29;
      v14 = v27;
    }

    else
    {
    }

    sub_1D7257B7C();
  }

  if (v14(v11, 1, v12) || (v23 = sub_1D7257B8C(), !v24))
  {

    v22 = 0;
  }

  else
  {
    v22 = v23;
  }

  sub_1D60AEDCC(v11);
  return v22;
}

uint64_t sub_1D60AE754@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v6 = *a1;
  v7 = a1[1];

  MEMORY[0x1DA6F9910](61, 0xE100000000000000);
  result = MEMORY[0x1DA6F9910](v3, v4);
  *a2 = v6;
  a2[1] = v7;
  return result;
}

void sub_1D60AE7D0(uint64_t a1)
{
  if (!qword_1EDF17EA0)
  {
    sub_1D60AE838();
    sub_1D60AD2B0();
    v1 = sub_1D725AAEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17EA0);
    }
  }
}

unint64_t sub_1D60AE838()
{
  result = qword_1EDF0A228;
  if (!qword_1EDF0A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A228);
  }

  return result;
}

unint64_t sub_1D60AE88C()
{
  result = qword_1EDF0A248;
  if (!qword_1EDF0A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A248);
  }

  return result;
}

void sub_1D60AE8E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D60AE94C()
{
  result = qword_1EC8833E0;
  if (!qword_1EC8833E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8833E0);
  }

  return result;
}

unint64_t sub_1D60AE9E4()
{
  result = qword_1EC8833E8;
  if (!qword_1EC8833E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8833E8);
  }

  return result;
}

unint64_t sub_1D60AEA3C()
{
  result = qword_1EC8833F0;
  if (!qword_1EC8833F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8833F0);
  }

  return result;
}

unint64_t sub_1D60AEA94()
{
  result = qword_1EDF0A238;
  if (!qword_1EDF0A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A238);
  }

  return result;
}

unint64_t sub_1D60AEAEC()
{
  result = qword_1EDF0A240;
  if (!qword_1EDF0A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A240);
  }

  return result;
}

unint64_t sub_1D60AEB44()
{
  result = qword_1EDF0BD90;
  if (!qword_1EDF0BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BD90);
  }

  return result;
}

unint64_t sub_1D60AEB9C()
{
  result = qword_1EDF0BD98;
  if (!qword_1EDF0BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BD98);
  }

  return result;
}

uint64_t sub_1D60AEBF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1D60AED68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D60AEDCC(uint64_t a1)
{
  sub_1D60AED68(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatVideoPlayerLive.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    if (v12)
    {
      v13 = sub_1D726433C();
      v14 = (v13 + 40);
      v15 = *(v13 + 16) + 1;
      do
      {
        if (!--v15)
        {

          goto LABEL_8;
        }

        v16 = v14 + 2;
        v17 = *v14;
        v14 += 2;
      }

      while (v17 < 4);
      v18 = *(v16 - 3);

      sub_1D5E2D970();
      swift_allocError();
      *v19 = v18;
      *(v19 + 8) = v17;
      *(v19 + 16) = &unk_1F51114C8;
      *(v19 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
    }

    else
    {
LABEL_8:
      sub_1D60AFAF4();
      v26 = 0;
      v27 = 0;
      sub_1D726431C();
      v21 = v29;
      if (v29)
      {
        v29 = xmmword_1D7279980;
        sub_1D5CDCE98();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v22 = v26;
        v23 = v27;
        v24 = v28;
      }

      else
      {
        v29 = xmmword_1D7279980;
        sub_1D60AFB48();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v22 = v26;
        v23 = v27;
        v24 = v28;
      }

      *a2 = v22;
      *(a2 + 8) = v23;
      *(a2 + 16) = v24;
      *(a2 + 24) = v21;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatVideoPlayerLive.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 8);
  v29 = *v1;
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatVideoPlayerLive, &type metadata for FormatCodingKeys, v21, v19, &type metadata for FormatVideoPlayerLive, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v18, v14, v20, &off_1F51F6B18);
  if (v17)
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCD00);
    (*(*(v22 - 8) + 16))(v6, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639D668(1, v29, v15, v16 & 1, v6);
    v24 = v6;
  }

  else
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD00);
    (*(*(v25 - 8) + 16))(v10, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639D4D0(0, v29, v15, v16, v10);
    v24 = v10;
  }

  sub_1D5D2CF28(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CF28(v14, sub_1D5D30DC4);
}

uint64_t sub_1D60AF4E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E696C6E69;
  }

  else
  {
    v3 = 0x676E69646E6962;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656E696C6E69;
  }

  else
  {
    v5 = 0x676E69646E6962;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D60AF588()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D60AF608(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D60AF674(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D60AF6F0(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D60AF750(uint64_t *a1@<X8>)
{
  v2 = 0x676E69646E6962;
  if (*v1)
  {
    v2 = 0x656E696C6E69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s8NewsFeed21FormatVideoPlayerLiveO2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  if ((v5 & 1) == 0)
  {
    if ((a2[3] & 1) == 0)
    {
      v16 = v3 == v7 && v2 == v6;
      if (v16 || (sub_1D72646CC() & 1) != 0)
      {
        sub_1D60AFDB4(v7, v6, v8, 0);
        sub_1D60AFDB4(v3, v2, v4, 0);
        sub_1D60AFDB4(v3, v2, v4, 0);
        sub_1D60AFDB4(v7, v6, v8, 0);
        v17 = sub_1D6341C50(v4, v8);
        sub_1D60AFE14(v3, v2, v4, 0);
        sub_1D60AFE14(v7, v6, v8, 0);
        sub_1D60AFE14(v7, v6, v8, 0);
        sub_1D60AFE14(v3, v2, v4, 0);
        if (v17)
        {
          v10 = 1;
          return v10 & 1;
        }

        goto LABEL_7;
      }

      sub_1D60AFDB4(v3, v2, v4, 0);
      sub_1D60AFDB4(v7, v6, v8, 0);
      sub_1D60AFE14(v3, v2, v4, 0);
      v11 = v7;
      v12 = v6;
      v13 = v8;
      v14 = 0;
LABEL_6:
      sub_1D60AFE14(v11, v12, v13, v14);
LABEL_7:
      v10 = 0;
      return v10 & 1;
    }

LABEL_5:
    sub_1D60AFDB4(*a1, v2, v4, v5);
    sub_1D60AFDB4(v7, v6, v8, v9);
    sub_1D60AFE14(v3, v2, v4, v5);
    v11 = v7;
    v12 = v6;
    v13 = v8;
    v14 = v9;
    goto LABEL_6;
  }

  if ((a2[3] & 1) == 0)
  {
    goto LABEL_5;
  }

  v20[0] = *a1;
  v20[1] = v2;
  v21 = v4 & 1;
  v18[0] = v7;
  v18[1] = v6;
  v19 = v8 & 1;
  sub_1D60AFDB4(v7, v6, v8, 1);
  sub_1D60AFDB4(v3, v2, v4, 1);
  sub_1D60AFDB4(v3, v2, v4, 1);
  sub_1D60AFDB4(v7, v6, v8, 1);
  v10 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(v20, v18);
  sub_1D60AFE14(v3, v2, v4, 1);
  sub_1D60AFE14(v7, v6, v8, 1);
  sub_1D60AFE14(v7, v6, v8, 1);
  sub_1D60AFE14(v3, v2, v4, 1);
  return v10 & 1;
}

unint64_t sub_1D60AFAF4()
{
  result = qword_1EDF29018;
  if (!qword_1EDF29018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29018);
  }

  return result;
}

unint64_t sub_1D60AFB48()
{
  result = qword_1EDF0A818;
  if (!qword_1EDF0A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A818);
  }

  return result;
}

unint64_t sub_1D60AFB9C(void *a1)
{
  a1[1] = sub_1D60AFBD4();
  a1[2] = sub_1D60AFC28();
  result = sub_1D60AFC7C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60AFBD4()
{
  result = qword_1EDF29010;
  if (!qword_1EDF29010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29010);
  }

  return result;
}

unint64_t sub_1D60AFC28()
{
  result = qword_1EDF0DEC0;
  if (!qword_1EDF0DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DEC0);
  }

  return result;
}

unint64_t sub_1D60AFC7C()
{
  result = qword_1EC883400;
  if (!qword_1EC883400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883400);
  }

  return result;
}

unint64_t sub_1D60AFD0C()
{
  result = qword_1EC883408;
  if (!qword_1EC883408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883408);
  }

  return result;
}

unint64_t sub_1D60AFD60()
{
  result = qword_1EDF29020;
  if (!qword_1EDF29020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29020);
  }

  return result;
}

uint64_t sub_1D60AFDB4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    v4 = a3 & 1;

    return sub_1D5E04CC4(a1, a2, v4);
  }

  else
  {
  }
}

double sub_1D60AFE14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = a3 & 1;

    sub_1D5D2F2C4(a1, a2, v4);
  }

  else
  {
  }

  return result;
}

NewsFeed::PuzzleScoreType_optional __swiftcall PuzzleScoreType.init(string:)(Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v4 = v1;
  v5 = string._countAndFlagsBits == 0x746C7561666564 && string._object == 0xE700000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x74636566726570 && object == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t PuzzleScoreType.description.getter()
{
  if (*v0)
  {
    return 0x74636566726570;
  }

  else
  {
    return 0x746C7561666564;
  }
}

NewsFeed::PuzzleScoreType_optional __swiftcall PuzzleScoreType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D60AFFAC()
{
  result = qword_1EC883410;
  if (!qword_1EC883410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883410);
  }

  return result;
}

void *sub_1D60B0000@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1D60B00D0()
{
  if (*v0)
  {
    return 0x74636566726570;
  }

  else
  {
    return 0x746C7561666564;
  }
}

unint64_t sub_1D60B0114()
{
  result = qword_1EC883418;
  if (!qword_1EC883418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883418);
  }

  return result;
}

uint64_t sub_1D60B0168(uint64_t a1)
{
  if ([v1 validatedCachedSubscription])
  {
    sub_1D60B0354(0);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v2);
    sub_1D60B0354(v4);
    swift_allocObject();
    return sub_1D725BBAC();
  }
}

void sub_1D60B0238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D5B7E910;
  *(v9 + 24) = v8;
  v11[4] = sub_1D60B06CC;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D5C38428;
  v11[3] = &block_descriptor_19;
  v10 = _Block_copy(v11);

  [a5 refreshBundleSubscriptionWithCachePolicy:1 completion:v10];
  _Block_release(v10);
}

void sub_1D60B0354(uint64_t a1)
{
  if (!qword_1EDF3B8F8)
  {
    sub_1D5B5A498(255, &qword_1EDF1A958, 0x1E69B51F0);
    v1 = sub_1D725BC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3B8F8);
    }
  }
}

double sub_1D60B03BC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7261ABC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D7261B2C();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF1AA40 != -1)
  {
    swift_once();
  }

  v20[1] = qword_1EDF1AA48;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_1D60B0944;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_9;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_1D7261AEC();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D5B737A0(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1D5B6D2E8(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60]);
  sub_1D5B63280(&qword_1EDF1B560, &qword_1EDF1B570, v18);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v21);

  return result;
}

uint64_t sub_1D60B06D4()
{
  v11 = sub_1D726307C();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10[1] = sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  sub_1D7261AFC();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5B737A0(&qword_1EDF1AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v8 = MEMORY[0x1E69E8030];
  sub_1D5B6D2E8(0, &unk_1EDF1AE90, MEMORY[0x1E69E8030]);
  sub_1D5B63280(&qword_1EDF1AE80, &unk_1EDF1AE90, v8);
  sub_1D7263B6C();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v11);
  result = sub_1D72630BC();
  qword_1EDF1AA48 = result;
  return result;
}

void sub_1D60B097C(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  while (v6)
  {
LABEL_10:
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = v10[1];
    v6 &= v6 - 1;
    *&v33 = *v10;
    *(&v33 + 1) = v11;
    sub_1D5BF4D9C();

    v12 = sub_1D7263ACC();
    if (*(v12 + 16) != 2 || (v30 = v12, , v13 = sub_1D7262ACC(), (v14 & 1) != 0))
    {
    }

    else
    {
      if (*(v30 + 16) < 2uLL)
      {
LABEL_26:
        __break(1u);
        return;
      }

      v28 = v13;

      v15 = sub_1D7262ACC();
      v17 = v16;

      if ((v17 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D6991EA4(0, *(v29 + 2) + 1, 1, v29);
        }

        v18 = v28;
        v20 = *(v29 + 2);
        v19 = *(v29 + 3);
        if (v20 >= v19 >> 1)
        {
          v29 = sub_1D6991EA4((v19 > 1), v20 + 1, 1, v29);
          v18 = v28;
        }

        *(v29 + 2) = v20 + 1;
        v21 = &v29[16 * v20];
        *(v21 + 4) = v18;
        *(v21 + 5) = v15;
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  v22 = *(v29 + 2);
  if (v22)
  {
    sub_1D7263ECC();
    v23 = 32;
    do
    {
      v24 = v2[5];
      v25 = v2[6];
      v32 = *&v29[v23];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v24);
      v33 = v32;
      (*(v25 + 8))(&v33, v24, v25);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v23 += 16;
      --v22;
    }

    while (v22);
  }

  else
  {
  }

  v26 = sub_1D725B92C();
  type metadata accessor for FeedWeather(0);
  sub_1D725BEFC();

  v27 = sub_1D725B92C();
  sub_1D60B1214(0, &qword_1EDF053B0, MEMORY[0x1E69D6430], MEMORY[0x1E69E62F8]);
  sub_1D725BA8C();
}

uint64_t sub_1D60B0D3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D60B0D94(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D60B0D94(uint64_t a1)
{
  v43 = sub_1D725ABEC();
  v2 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v3);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60B1214(0, &unk_1EDF17860, type metadata accessor for FeedWeather, MEMORY[0x1E69D6C08]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v41 = &v33 - v7;
  v40 = type metadata accessor for FeedWeather(0);
  v8 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v33 - v18;
  v39 = sub_1D725A9BC();
  v20 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v21);
  v38 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1D5C8A65C(0, v23, 0);
    v24 = v46;
    v25 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = *(v8 + 72);
    v34 = (v2 + 16);
    v35 = v26;
    v33 = v20 + 32;
    v36 = v20;
    v37 = v11;
    do
    {
      sub_1D60B1278(v25, v19);
      sub_1D60B1278(v19, v15);
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](44, 0xE100000000000000);
      sub_1D7262ABC();
      sub_1D60B1278(v15, v11);
      if (qword_1EDF17CC0 != -1)
      {
        swift_once();
      }

      v27 = v43;
      v28 = __swift_project_value_buffer(v43, qword_1EDF17CC8);
      (*v34)(v42, v28, v27);
      sub_1D725BF4C();
      sub_1D60B12DC(v15);
      v29 = v38;
      sub_1D725A9AC();
      sub_1D60B12DC(v19);
      v46 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D5C8A65C((v30 > 1), v31 + 1, 1);
        v24 = v46;
      }

      *(v24 + 16) = v31 + 1;
      (*(v36 + 32))(v24 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31, v29, v39);
      v25 += v35;
      --v23;
      v11 = v37;
    }

    while (v23);
  }

  return v24;
}

void sub_1D60B1214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D60B1278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedWeather(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60B12DC(uint64_t a1)
{
  v2 = type metadata accessor for FeedWeather(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D60B1338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v53 = a2;
  v54 = a3;
  v55 = a5;
  v6 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D72585BC();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v48 = &v45 - v16;
  v56 = a1;
  sub_1D60B2914(a1, v9, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v9;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920(0);
    v20 = *(v19 + 48);
    v58 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 1);
    v21 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v22 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    v23 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
    v25 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
    v24 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
    v27 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
    v26 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
    v28 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
    v46 = v20;
    v47 = v22;

    v50 = v21;

    v49 = v23;
    sub_1D60B297C(v23, v25, v24, v27, v26, v28);

    sub_1D5EB9994(0);
    v30 = v29;
    v31 = *(*(v29 - 8) + 8);
    v32 = v9 + v46;
    v33 = v25;
    v34 = v58;
    v31(v32, v30);
  }

  else
  {

    v34 = *(v18 + 49);
    v35 = *(v18 + 64);
    v36 = *(v18 + 88);
    v37 = *(v18 + 96);
    v38 = *(v18 + 104);
    v27 = *(v18 + 112);
    v26 = *(v18 + 120);
    v28 = *(v18 + 128);
    v47 = *(v18 + 80);

    v50 = v35;

    v49 = v36;
    v39 = v36;
    v33 = v37;
    v24 = v38;
    sub_1D60B297C(v39, v33, v38, v27, v26, v28);
  }

  sub_1D60B29F8(v49, v33, v24, v27, v26, v28);
  v59 = v34;
  sub_1D722B410(v13);
  v40 = v48;
  sub_1D725849C();
  v41 = *(v51 + 8);
  v42 = v13;
  v43 = v52;
  v41(v42, v52);
  sub_1D6B7A1C0(v56, v57, MEMORY[0x1E69E7CC0], v55);
  return (v41)(v40, v43);
}

BOOL static FormatURL.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for FormatAbsoluteURL(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v40 - v11;
  v13 = *a1;
  v14 = *a2;
  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v15 == 2)
    {
      if (v14 >> 62 == 2)
      {
        v20 = v13 & 0x3FFFFFFFFFFFFFFFLL;
        v21 = *(v20 + 40);
        v22 = *(v20 + 32);
        v23 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v24 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v43 = *(v20 + 16);
        v44 = v22;
        v45 = v21;
        v40 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v41 = v23;
        v42 = v24;

        v19 = _s8NewsFeed16FormatURLBindingO2eeoiySbAC_ACtFZ_0(&v43, &v40);

        return v19;
      }
    }

    else if (v14 >> 62 == 3)
    {
      v32 = v13 & 0x3FFFFFFFFFFFFFFFLL;
      v33 = *(v32 + 24);
      v34 = v14 & 0x3FFFFFFFFFFFFFFFLL;
      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      *&v43 = *(v32 + 16);
      *&v40 = v36;

      v37 = static FormatURL.== infix(_:_:)(&v43, &v40);

      if (!v37)
      {

        goto LABEL_24;
      }

      v38 = sub_1D635B3E4(v33, v35);

      if (v38)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v15)
  {
    if (v14 >> 62 != 1)
    {
      return 0;
    }

    v25 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v26 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v27 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v28 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v29 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v30 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v31 = v25 == v28 && v26 == v29;
    return (v31 || (sub_1D72646CC() & 1) != 0) && (sub_1D633A250(v27, v30) & 1) != 0;
  }

  if (v14 >> 62)
  {
    return 0;
  }

  v16 = v10;
  v17 = swift_projectBox();
  v18 = swift_projectBox();
  sub_1D60B2914(v17, v12, type metadata accessor for FormatAbsoluteURL);
  sub_1D60B2914(v18, v7, type metadata accessor for FormatAbsoluteURL);

  if ((sub_1D72584CC() & 1) == 0 || (sub_1D633A250(*&v12[*(v16 + 20)], *&v7[*(v16 + 20)]) & 1) == 0)
  {
    sub_1D60B28B4(v7, type metadata accessor for FormatAbsoluteURL);
    sub_1D60B28B4(v12, type metadata accessor for FormatAbsoluteURL);

LABEL_24:

    return 0;
  }

  sub_1D60B28B4(v7, type metadata accessor for FormatAbsoluteURL);
  sub_1D60B28B4(v12, type metadata accessor for FormatAbsoluteURL);

  return 1;
}

uint64_t sub_1D60B19B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 >> 62) >= 2)
  {
    if (a2 >> 62 == 2)
    {
      v4 = 0;
    }

    else
    {
      v5 = a3;
      v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      v4 = sub_1D60B19B8(a1, v6, v7);

      if (v3)
      {
        return v6;
      }

      a3 = v5;
    }
  }

  else
  {
    v4 = 1;
  }

  v53 = *(a3 + 16);
  if (!v53)
  {
    return v4;
  }

  v9 = 0;
  v52 = a3 + 32;
  while (1)
  {
    v10 = (v52 + 112 * v9);
    *&v61[10] = *(v10 + 90);
    v11 = v10[5];
    v60 = v10[4];
    *v61 = v11;
    v12 = v10[1];
    v56 = *v10;
    v57 = v12;
    v13 = v10[3];
    v58 = v10[2];
    v59 = v13;
    v14 = v56;
    v15 = *&v61[24];
    v16 = (*&v61[24] >> 12) & 3;
    if (!v16)
    {
      break;
    }

    v17 = v60;
    v62 = *(&v59 + 1);
    if (v16 == 1)
    {
      if (v13 >> 14)
      {
        if (v13 >> 14 == 1)
        {
          sub_1D5C3C480();
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D7273AE0;
          *(inited + 32) = v14;
          sub_1D60B2AC8(&v56, v55);

          v19 = sub_1D5BFAC38(inited);
          swift_setDeallocating();
          sub_1D5BFB68C(inited + 32);
          v20 = v15 >> 14;
          if (!(v15 >> 14))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v36 = *(&v60 + 1);
          v37 = *v61;
          v38 = *&v61[8];
          v49 = *&v61[16];
          sub_1D5E1DA6C(v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v13);
          sub_1D5E1DA6C(v62, v17, v36, v37, v38, v49, v15 & 0xFFFFCFFF);
          v19 = 0;
          v20 = v15 >> 14;
          if (!(v15 >> 14))
          {
LABEL_37:
            v6 = 1;
            if (v19)
            {
              goto LABEL_42;
            }

            goto LABEL_54;
          }
        }
      }

      else
      {
        v33 = *(&v60 + 1);
        v34 = *v61;
        v35 = *&v61[16];
        v48 = *&v61[8];
        sub_1D5E1DA6C(v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v13);
        sub_1D5E1DA6C(v62, v17, v33, v34, v48, v35, v15 & 0xFFFFCFFF);
        v19 = 1;
        v20 = v15 >> 14;
        if (!(v15 >> 14))
        {
          goto LABEL_37;
        }
      }

      if (v20 == 1)
      {
        sub_1D5C3C480();
        v21 = swift_initStackObject();
        *(v21 + 16) = xmmword_1D7273AE0;
        *(v21 + 32) = v62;
        *(v21 + 40) = v17;

        v6 = sub_1D5BFAC38(v21);
        swift_setDeallocating();
        sub_1D5BFB68C(v21 + 32);
        if (v19)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v6 = 0;
        if (v19)
        {
LABEL_42:
          if (v19 == 1)
          {
            goto LABEL_49;
          }

          goto LABEL_43;
        }
      }
    }

    else
    {
      if (v13 >> 14)
      {
        if (v13 >> 14 == 1)
        {
          sub_1D5C3C480();
          v30 = swift_initStackObject();
          *(v30 + 16) = xmmword_1D7273AE0;
          *(v30 + 32) = v14;
          sub_1D60B2AC8(&v56, v55);

          v19 = sub_1D5BFAC38(v30);
          swift_setDeallocating();
          sub_1D5BFB68C(v30 + 32);
          v31 = v15 >> 14;
          if (!(v15 >> 14))
          {
            goto LABEL_47;
          }
        }

        else
        {
          v42 = *(&v60 + 1);
          v43 = *v61;
          v44 = *&v61[8];
          v51 = *&v61[16];
          sub_1D5E1DA6C(v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v13);
          sub_1D5E1DA6C(v62, v17, v42, v43, v44, v51, v15 & 0xFFFFCFFF);
          v19 = 0;
          v31 = v15 >> 14;
          if (!(v15 >> 14))
          {
LABEL_47:
            v6 = 1;
            if (v19)
            {
              goto LABEL_48;
            }

            goto LABEL_54;
          }
        }
      }

      else
      {
        v39 = *(&v60 + 1);
        v40 = *v61;
        v41 = *&v61[8];
        v50 = *&v61[16];
        sub_1D5E1DA6C(v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v13);
        sub_1D5E1DA6C(v62, v17, v39, v40, v41, v50, v15 & 0xFFFFCFFF);
        v19 = 1;
        v31 = v15 >> 14;
        if (!(v15 >> 14))
        {
          goto LABEL_47;
        }
      }

      if (v31 == 1)
      {
        sub_1D5C3C480();
        v32 = swift_initStackObject();
        *(v32 + 16) = xmmword_1D7273AE0;
        *(v32 + 32) = v62;
        *(v32 + 40) = v17;

        v6 = sub_1D5BFAC38(v32);
        swift_setDeallocating();
        sub_1D5BFB68C(v32 + 32);
        if (v19)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v6 = 0;
        if (v19)
        {
LABEL_48:
          if (v19 == 1)
          {
LABEL_49:
            sub_1D60B2A74(&v56);
            if (v6 == 1)
            {
              goto LABEL_10;
            }

            goto LABEL_61;
          }

LABEL_43:
          if (v6 >= 2)
          {
            v19 = sub_1D5D6021C(v6, v19);
          }

          sub_1D60B2A74(&v56);
LABEL_60:
          v6 = v19;
          goto LABEL_61;
        }
      }
    }

LABEL_54:
    sub_1D60B2A74(&v56);
    if (v6 == 1)
    {
      goto LABEL_55;
    }

LABEL_61:
    if (v4 < 2)
    {
      goto LABEL_11;
    }

    if (v6)
    {
      v6 = sub_1D5D6021C(v6, v4);
      goto LABEL_11;
    }

LABEL_10:
    v6 = v4;
LABEL_11:
    ++v9;
    v4 = v6;
    if (v9 == v53)
    {
      return v6;
    }
  }

  if (!(v13 >> 14))
  {
    goto LABEL_10;
  }

  if (v13 >> 14 != 1)
  {
LABEL_55:
    v19 = 0;
    goto LABEL_60;
  }

  v54 = v56;
  sub_1D60B2B24();
  v19 = sub_1D7263CDC();
  v22 = v19 + 56;

  v23 = v54;
  sub_1D7264A0C();

  sub_1D72621EC();
  result = sub_1D7264A5C();
  v25 = ~(-1 << *(v19 + 32));
  for (i = result & v25; ; i = (i + 1) & v25)
  {
    v27 = *(v22 + 8 * (i >> 6));
    if (((1 << i) & v27) == 0)
    {
      break;
    }

    v28 = (*(v19 + 48) + 16 * i);
    if (*v28 != v23 || v28[1] != *(&v23 + 1))
    {
      result = sub_1D72646CC();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_59;
  }

  *(v22 + 8 * (i >> 6)) = (1 << i) | v27;
  *(*(v19 + 48) + 16 * i) = v23;
  v45 = *(v19 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (!v46)
  {
    *(v19 + 16) = v47;
LABEL_59:
    sub_1D5BFB68C(&v54);
    goto LABEL_60;
  }

  __break(1u);
  return result;
}

void sub_1D60B1FD0(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v90 = a2;
  v91 = a1;
  sub_1D60077D8(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v87 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v86 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v86 - v13;
  v15 = sub_1D72585BC();
  v88 = *(v15 - 8);
  v89 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v86 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v86 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v86 - v29;
  v31 = type metadata accessor for FormatAbsoluteURL(0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v3;
  v36 = *v3 >> 62;
  if (v36 > 1)
  {
    if (v36 == 2)
    {
      v48 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v49 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v50 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v51 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v52 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v52 - 8) + 56))(v10, 1, 1, v52);
      sub_1D5D27950(v48, v49, v50, v51);
      v53 = v92;
      sub_1D6D4E524(v91, v48, v49, v50, v51, v22);
      if (v53)
      {
        sub_1D60B28B4(v10, sub_1D60077D8);
        sub_1D5D28C84(v48, v49, v50, v51);
        return;
      }

      sub_1D5D28C84(v48, v49, v50, v51);
      sub_1D5C4E168(0);
      v67 = v66;
      v68 = swift_allocBox();
      v70 = v69;
      (*(v88 + 32))(v69, v22, v89);
      *(v70 + *(v67 + 36)) = MEMORY[0x1E69E7CC0];
      v41 = v90;
      *v90 = v68 | 0x6000000000000000;
      v41[1] = 0;
      v38 = type metadata accessor for FormatOptionsNodeStatementResult(0);
      v71 = v41 + *(v38 + 24);
      v72 = v10;
    }

    else
    {
      v59 = v35 & 0x3FFFFFFFFFFFFFFFLL;
      v60 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v61 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v62 = type metadata accessor for FormatVersionRequirement(0);
      v63 = v87;
      (*(*(v62 - 8) + 56))(v87, 1, 1, v62);

      v64 = v91;
      v65 = v92;
      sub_1D6D53964(v91, v60, v61, v18);
      if (v65)
      {
        sub_1D60B28B4(v63, sub_1D60077D8);

        return;
      }

      sub_1D5C4E168(0);
      v79 = v78;
      v80 = swift_allocBox();
      v82 = v81;
      (*(v88 + 32))(v81, v18, v89);
      *(v82 + *(v79 + 36)) = MEMORY[0x1E69E7CC0];
      v83 = *(v59 + 16);
      v84 = *(v59 + 24);

      v85 = sub_1D60B19B8(v64, v83, v84);

      v41 = v90;
      *v90 = v80 | 0x6000000000000000;
      v41[1] = v85;
      v38 = type metadata accessor for FormatOptionsNodeStatementResult(0);
      v71 = v41 + *(v38 + 24);
      v72 = v87;
    }

    goto LABEL_14;
  }

  if (v36)
  {
    v55 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v54 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v56 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v57 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v57 - 8) + 56))(v14, 1, 1, v57);

    v58 = v92;
    sub_1D60B1338(v91, v55, v54, v56, v26);
    v41 = v90;
    if (v58)
    {
      sub_1D60B28B4(v14, sub_1D60077D8);

      return;
    }

    sub_1D5C4E168(0);
    v74 = v73;
    v75 = swift_allocBox();
    v77 = v76;
    (*(v88 + 32))(v76, v26, v89);
    *(v77 + *(v74 + 36)) = MEMORY[0x1E69E7CC0];
    *v41 = v75 | 0x6000000000000000;
    v41[1] = 1;
    v38 = type metadata accessor for FormatOptionsNodeStatementResult(0);
    v71 = v41 + *(v38 + 24);
    v72 = v14;
LABEL_14:
    sub_1D5EA3AFC(v72, v71);
    goto LABEL_15;
  }

  v37 = swift_projectBox();
  sub_1D60B2914(v37, v34, type metadata accessor for FormatAbsoluteURL);
  v38 = type metadata accessor for FormatOptionsNodeStatementResult(0);
  v39 = *(v38 + 24);
  v40 = type metadata accessor for FormatVersionRequirement(0);
  v41 = v90;
  (*(*(v40 - 8) + 56))(v90 + v39, 1, 1, v40);
  v42 = MEMORY[0x1E69E7CC0];
  sub_1D6B7A1C0(v91, *&v34[*(v31 + 20)], MEMORY[0x1E69E7CC0], v30);
  sub_1D5C4E168(0);
  v44 = v43;
  v45 = swift_allocBox();
  v47 = v46;
  (*(v88 + 32))(v46, v30, v89);
  *(v47 + *(v44 + 36)) = v42;
  sub_1D60B28B4(v34, type metadata accessor for FormatAbsoluteURL);
  *v41 = v45 | 0x6000000000000000;
  v41[1] = 1;
LABEL_15:
  (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
}

unint64_t sub_1D60B2748(uint64_t a1)
{
  result = sub_1D60B2770();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60B2770()
{
  result = qword_1EC883420;
  if (!qword_1EC883420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883420);
  }

  return result;
}

unint64_t sub_1D60B27C4(void *a1)
{
  a1[1] = sub_1D5CA2FA0();
  a1[2] = sub_1D60B27FC();
  result = sub_1D60B2850();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60B27FC()
{
  result = qword_1EDF05930;
  if (!qword_1EDF05930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05930);
  }

  return result;
}

unint64_t sub_1D60B2850()
{
  result = qword_1EC883428;
  if (!qword_1EC883428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883428);
  }

  return result;
}

uint64_t sub_1D60B28B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D60B2914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D60B297C(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (result)
  {
    v7 = a2;

    v8 = a6;
  }

  return result;
}

void sub_1D60B29F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
  }
}

void sub_1D60B2B24()
{
  if (!qword_1EDF1A590)
  {
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A590);
    }
  }
}

id SharingRecipeURLActivityItemSource.init(recipe:linkPresentationSource:externalRecipeFactory:featureAvailability:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_1D5B54524(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  *&v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11).n128_u64[0];
  v14 = &v24 - v13;
  v15 = [a1 identifier];
  if (!v15)
  {
    sub_1D726207C();
    v15 = sub_1D726203C();
  }

  v16 = [a1 articles];
  sub_1D5B5D6A0();
  v17 = sub_1D726267C();

  if (!(v17 >> 62))
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1DA6FB460](0, v17);
    goto LABEL_8;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v20 = [v19 identifier];
    swift_unknownObjectRelease();
    if (v20)
    {
LABEL_13:
      v21 = [objc_opt_self() nss:v15 NewsURLForRecipeID:v20 articleID:?];

      sub_1D72584EC();
      v22 = sub_1D72585BC();
      (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
      sub_1D5EB8540(v14, &v5[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_url]);
      *&v5[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_linkPresentationSource] = a2;
      *&v5[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_recipe] = a1;
      sub_1D5C3AE10(a3, &v5[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_externalRecipeFactory], &unk_1EDF25860, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType);
      sub_1D5C3AE10(a4, &v5[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_featureAvailability], qword_1EDF27890, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType);
      v26.receiver = v5;
      v26.super_class = ObjectType;
      v23 = objc_msgSendSuper2(&v26, sel_init);
      sub_1D5BFB774(a4, qword_1EDF27890, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType);
      sub_1D5BFB774(a3, &unk_1EDF25860, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType);
      return v23;
    }

    sub_1D726207C();
    v20 = sub_1D726203C();
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id SharingRecipeURLActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingRecipeURLActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *SharingRecipeURLActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B54524(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  sub_1D5EB84C0(v1 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_url, &v11 - v5);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1D5B6EF08(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    *(a1 + 24) = MEMORY[0x1E69E6158];
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
  }

  else
  {
    v12 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    return sub_1D5B7C390(&v11, a1);
  }

  return result;
}

void SharingRecipeURLActivityItemSource.activityViewController(_:itemForActivityType:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D5B54524(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v38[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v38[-1] - v12;
  sub_1D5C3AE10(v2 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_featureAvailability, v38, qword_1EDF27890, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType);
  v14 = v39;
  if (v39)
  {
    v15 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v16 = (*(v15 + 232))(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v38);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  sub_1D5BFB774(v38, qword_1EDF27890, &unk_1EDF3F6D0, &protocol descriptor for FeatureAvailabilityType);
  v16 = 0;
  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_3:
  v17 = sub_1D726207C();
  v19 = v18;
  if (v17 == sub_1D726207C() && v19 == v20)
  {

    goto LABEL_23;
  }

  v22 = sub_1D72646CC();

  if (v22)
  {
LABEL_23:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v23 = sub_1D726203C();
  v24 = sub_1D726207C();
  v26 = v25;
  if (v24 == sub_1D726207C() && v26 == v27)
  {

    goto LABEL_18;
  }

  v33 = sub_1D72646CC();

  if ((v33 & 1) == 0)
  {
LABEL_13:
    sub_1D5EB84C0(v3 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_url, v9);
    v28 = sub_1D72585BC();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v9, 1, v28) != 1)
    {
      *(a2 + 24) = v28;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      (*(v29 + 32))(boxed_opaque_existential_1, v9, v28);
      return;
    }

    v30 = MEMORY[0x1E6968FB0];
    v31 = v9;
    goto LABEL_22;
  }

LABEL_18:
  if (v16)
  {
    sub_1D60B36A8();
  }

  sub_1D5EB84C0(v3 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_url, v13);
  v34 = sub_1D72585BC();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v13, 1, v34) == 1)
  {
    v30 = MEMORY[0x1E6968FB0];
    v31 = v13;
LABEL_22:
    sub_1D5B6EF08(v31, &qword_1EDF45B40, v30);
    goto LABEL_23;
  }

  *(a2 + 24) = v34;
  v36 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(v35 + 32))(v36, v13, v34);
}

void sub_1D60B36A8()
{
  sub_1D5B54524(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12 - v3;
  sub_1D5C3AE10(v0 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_externalRecipeFactory, &v12, &unk_1EDF25860, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType);
  if (v13)
  {
    sub_1D5B63F14(&v12, v14);
    v5 = sub_1D726294C();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_1D5B68374(v14, &v12);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    sub_1D5B63F14(&v12, (v6 + 4));
    v6[9] = v0;
    v7 = v0;
    sub_1D6BD1334(0, 0, v4, &unk_1D7298838, v6);

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_1D5BFB774(&v12, &unk_1EDF25860, qword_1EDF25870, &protocol descriptor for ExternalRecipeFactoryType);
    if (qword_1EC87DC68 != -1)
    {
      swift_once();
    }

    v8 = sub_1D725C42C();
    __swift_project_value_buffer(v8, qword_1EC9BADC0);
    v9 = sub_1D725C3FC();
    v10 = sub_1D7262EBC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D5B42000, v9, v10, "ExternalRecipe Factory is nil in SharingRecipeURLActivityItemSource", v11, 2u);
      MEMORY[0x1DA6FD500](v11, -1, -1);
    }
  }
}

LPLinkMetadata_optional __swiftcall SharingRecipeURLActivityItemSource.activityViewControllerLinkMetadata(_:)(UIActivityViewController *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_linkPresentationSource))
  {
    sub_1D725B77C();
    v2 = [v5 linkMetadata];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1D60B3B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D725772C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_1D72576EC();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D60B3C78, 0, 0);
}

uint64_t sub_1D60B3C78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v2 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_recipe);
  v0[10] = v5;
  v9 = (*(v4 + 8) + **(v4 + 8));
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1D60B3DC0;
  v7 = v0[9];

  return v9(v7, v5, v3, v4);
}

uint64_t sub_1D60B3DC0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D60B4054;
  }

  else
  {
    v2 = sub_1D60B3ED4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D60B3ED4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v11 = v0[7];
  sub_1D725771C();
  sub_1D725770C();
  (*(v5 + 8))(v4, v6);
  v7 = [v2 identifier];
  sub_1D726207C();

  v8 = [v2 title];
  sub_1D726207C();

  sub_1D72576FC();

  (*(v3 + 8))(v1, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D60B4054()
{
  if (qword_1EC87DC68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EC9BADC0);
  v3 = v1;
  v4 = sub_1D725C3FC();
  v5 = sub_1D7262EBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D5B42000, v4, v5, "Failed to convert FCRecipe to ExternalRecipe in SharingRecipeURLActivityItemSource with error: %@", v8, 0xCu);
    sub_1D5B6EF08(v9, &qword_1EDF04360, sub_1D5F1574C);
    MEMORY[0x1DA6FD500](v9, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t type metadata accessor for SharingRecipeURLActivityItemSource(uint64_t a1)
{
  result = qword_1EC883460;
  if (!qword_1EC883460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D60B426C(uint64_t a1)
{
  sub_1D5B54524(319, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D60B4368(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D60B3B5C(a1, v4, v5, (v1 + 4), v6);
}

NewsFeed::FeedBundleSessionState_optional __swiftcall FeedBundleSessionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedBundleSessionState.rawValue.getter()
{
  v1 = 0x64657269707865;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657669746361;
  }
}

uint64_t sub_1D60B44DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64657269707865;
  if (v2 != 1)
  {
    v4 = 0x64656C6261736964;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x657669746361;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64657269707865;
  if (*a2 != 1)
  {
    v8 = 0x64656C6261736964;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x657669746361;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D60B45E0()
{
  result = qword_1EDF37108;
  if (!qword_1EDF37108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37108);
  }

  return result;
}

uint64_t sub_1D60B4634()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D60B46D4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D60B4760(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D60B4808(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657269707865;
  if (v2 != 1)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657669746361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D60B4924()
{
  result = qword_1EC883470;
  if (!qword_1EC883470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883470);
  }

  return result;
}

uint64_t FeedLayoutContextFactory.__allocating_init(fontBookFactory:colorPaletteProvider:layoutAttributesFactoryProvider:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1D5B63F14(a1, v6 + 56);
  sub_1D5B63F14(a2, v6 + 16);
  *(v6 + 96) = a3;
  return v6;
}

uint64_t FeedLayoutContextFactory.init(fontBookFactory:colorPaletteProvider:layoutAttributesFactoryProvider:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  sub_1D5B63F14(a1, v3 + 56);
  sub_1D5B63F14(a2, v3 + 16);
  *(v3 + 96) = a3;
  return v3;
}

uint64_t sub_1D60B4A24(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D5D4BDE0(a1, a2);
  v4 = *(v2 + 96);
  type metadata accessor for FeedLayoutContext();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  return v5;
}

void *FeedLayoutContextFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t FeedLayoutContextFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1D60B4B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1448) = v3;
  *(v4 + 1440) = a3;
  *(v4 + 1432) = a1;
  v6 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *(v4 + 1456) = swift_task_alloc();
  v7 = sub_1D72585BC();
  *(v4 + 1464) = v7;
  *(v4 + 1472) = *(v7 - 8);
  *(v4 + 1480) = swift_task_alloc();
  *(v4 + 1488) = type metadata accessor for DebugFormatWorkspaceKind(0);
  *(v4 + 1496) = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v6);
  *(v4 + 1504) = swift_task_alloc();
  v8 = *(a2 + 144);
  *(v4 + 1008) = *(a2 + 128);
  *(v4 + 1024) = v8;
  *(v4 + 1040) = *(a2 + 160);
  *(v4 + 1055) = *(a2 + 175);
  v9 = *(a2 + 80);
  *(v4 + 944) = *(a2 + 64);
  *(v4 + 960) = v9;
  v10 = *(a2 + 112);
  *(v4 + 976) = *(a2 + 96);
  *(v4 + 992) = v10;
  v11 = *(a2 + 16);
  *(v4 + 880) = *a2;
  *(v4 + 896) = v11;
  v12 = *(a2 + 48);
  *(v4 + 912) = *(a2 + 32);
  *(v4 + 928) = v12;
  sub_1D726290C();
  *(v4 + 1512) = sub_1D72628FC();
  v14 = sub_1D726285C();
  *(v4 + 1520) = v14;
  *(v4 + 1528) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D60B4D7C, v14, v13);
}

uint64_t sub_1D60B4D7C()
{
  sub_1D60CBBE8(*(v0 + 1432), *(v0 + 1496), type metadata accessor for DebugFormatWorkspaceKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_5;
  }

  v2 = (v0 + 880);
  if (EnumCaseMultiPayload >= 2)
  {

    sub_1D725B31C();

    v11 = *(v0 + 608);
    v10 = *(v0 + 624);
    v12 = *(v0 + 592);
    *(v0 + 392) = v11;
    *(v0 + 408) = v10;
    v13 = *(v0 + 624);
    *(v0 + 424) = *(v0 + 640);
    v15 = *(v0 + 544);
    v14 = *(v0 + 560);
    v16 = *(v0 + 528);
    *(v0 + 328) = v15;
    *(v0 + 344) = v14;
    v17 = *(v0 + 560);
    v19 = *(v0 + 576);
    v18 = *(v0 + 592);
    *(v0 + 360) = v19;
    *(v0 + 376) = v18;
    v21 = *(v0 + 480);
    v20 = *(v0 + 496);
    v22 = *(v0 + 464);
    *(v0 + 264) = v21;
    *(v0 + 280) = v20;
    v23 = *(v0 + 496);
    v25 = *(v0 + 512);
    v24 = *(v0 + 528);
    *(v0 + 296) = v25;
    *(v0 + 312) = v24;
    v26 = *(v0 + 464);
    v27 = *(v0 + 448);
    *(v0 + 232) = v27;
    *(v0 + 248) = v26;
    *(v0 + 176) = v11;
    *(v0 + 192) = v13;
    *(v0 + 208) = *(v0 + 640);
    *(v0 + 112) = v15;
    *(v0 + 128) = v17;
    *(v0 + 144) = v19;
    *(v0 + 160) = v12;
    *(v0 + 48) = v21;
    *(v0 + 64) = v23;
    *(v0 + 80) = v25;
    *(v0 + 96) = v16;
    *(v0 + 440) = *(v0 + 656);
    *(v0 + 224) = *(v0 + 656);
    *(v0 + 16) = v27;
    *(v0 + 32) = v22;
    if (sub_1D5DEA380(v0 + 16) != 1)
    {
      v28 = *(v0 + 192);
      *(v0 + 824) = *(v0 + 176);
      *(v0 + 840) = v28;
      *(v0 + 856) = *(v0 + 208);
      v29 = *(v0 + 128);
      *(v0 + 760) = *(v0 + 112);
      *(v0 + 776) = v29;
      v30 = *(v0 + 160);
      *(v0 + 792) = *(v0 + 144);
      *(v0 + 808) = v30;
      v31 = *(v0 + 64);
      *(v0 + 696) = *(v0 + 48);
      *(v0 + 712) = v31;
      v32 = *(v0 + 96);
      *(v0 + 728) = *(v0 + 80);
      *(v0 + 744) = v32;
      v33 = *(v0 + 32);
      *(v0 + 664) = *(v0 + 16);
      *(v0 + 680) = v33;
      v34 = *(v0 + 1024);
      *(v0 + 1376) = *(v0 + 1008);
      *(v0 + 1392) = v34;
      *(v0 + 1408) = *(v0 + 1040);
      v35 = *(v0 + 960);
      *(v0 + 1312) = *(v0 + 944);
      *(v0 + 1328) = v35;
      v36 = *(v0 + 992);
      *(v0 + 1344) = *(v0 + 976);
      *(v0 + 1360) = v36;
      v37 = *(v0 + 896);
      *(v0 + 1248) = *v2;
      *(v0 + 1264) = v37;
      v38 = *(v0 + 928);
      *(v0 + 1280) = *(v0 + 912);
      *(v0 + 872) = *(v0 + 224);
      *(v0 + 1423) = *(v0 + 1055);
      *(v0 + 1296) = v38;
      v39 = swift_task_alloc();
      *(v0 + 1536) = v39;
      *v39 = v0;
      v39[1] = sub_1D60B51BC;
      v40 = *(v0 + 1440);

      return sub_1D60BA6F0(v40, v0 + 664, v0 + 1248, 0);
    }

LABEL_5:

    goto LABEL_6;
  }

  v3 = *(v0 + 1472);
  v4 = *(v0 + 1464);
  v5 = *(v0 + 1456);
  sub_1D6033350(*(v0 + 1496), *(v0 + 1504));
  v6 = sub_1D6A9DC44(v5);
  if ((*(v3 + 48))(v5, 1, v4, v6) == 1)
  {
    v7 = *(v0 + 1456);
    sub_1D60CB820(*(v0 + 1504), &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);

    sub_1D60CB820(v7, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_6:

    v8 = *(v0 + 8);

    return v8();
  }

  (*(*(v0 + 1472) + 32))(*(v0 + 1480), *(v0 + 1456), *(v0 + 1464));
  v41 = *(v0 + 1024);
  *(v0 + 1192) = *(v0 + 1008);
  *(v0 + 1208) = v41;
  *(v0 + 1224) = *(v0 + 1040);
  *(v0 + 1239) = *(v0 + 1055);
  v42 = *(v0 + 960);
  *(v0 + 1128) = *(v0 + 944);
  *(v0 + 1144) = v42;
  v43 = *(v0 + 992);
  *(v0 + 1160) = *(v0 + 976);
  *(v0 + 1176) = v43;
  v44 = *(v0 + 896);
  *(v0 + 1064) = *v2;
  *(v0 + 1080) = v44;
  v45 = *(v0 + 928);
  *(v0 + 1096) = *(v0 + 912);
  *(v0 + 1112) = v45;
  v46 = swift_task_alloc();
  *(v0 + 1552) = v46;
  *v46 = v0;
  v46[1] = sub_1D60B5388;
  v47 = *(v0 + 1504);
  v48 = *(v0 + 1480);

  return sub_1D60B9658(v48, v0 + 1064, v47);
}

uint64_t sub_1D60B51BC()
{
  v2 = *v1;
  *(*v1 + 1544) = v0;

  v3 = *(v2 + 1528);
  v4 = *(v2 + 1520);
  if (v0)
  {
    v5 = sub_1D60B55C0;
  }

  else
  {
    v5 = sub_1D60B52D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D60B52D8()
{

  sub_1D60CB8FC(v0 + 232, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D60B5388(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  (*v3)[195] = v2;

  if (v2)
  {
    sub_1D60CB820(v4[188], &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    v5 = v4[191];
    v6 = v4[190];
    v7 = sub_1D60B5670;
  }

  else
  {
    v8 = v4[188];

    sub_1D60CB820(v8, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    v5 = v4[191];
    v6 = v4[190];
    v7 = sub_1D60B5504;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D60B5504()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[183];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D60B55C0()
{

  sub_1D60CB8FC(v0 + 232, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D60B5670()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[183];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

double sub_1D60B572C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1D725867C();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1D5B952E4(v6, v10);

  return result;
}

uint64_t sub_1D60B57F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D72583CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 URLsForDirectory:14 inDomains:1];

  v17 = sub_1D726267C();
  if (*(v17 + 16))
  {
    (*(v21 + 16))(v10, v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v7);

    v22 = 0xD000000000000013;
    v23 = 0x80000001D73C92A0;
    (*(v3 + 104))(v6, *MEMORY[0x1E6968F68], v2);
    sub_1D5BF4D9C();
    sub_1D725859C();
    (*(v3 + 8))(v6, v2);
    (*(v21 + 8))(v10, v7);
    (*(v21 + 32))(a1, v14, v7);
    return (*(v21 + 56))(a1, 0, 1, v7);
  }

  else
  {

    v19 = *(v21 + 56);

    return v19(a1, 1, 1, v7);
  }
}

uint64_t sub_1D60B5B1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E6968FB0];
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23[-v8];
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D60CB96C(a1, v9, &qword_1EDF45B40, v4, v5, sub_1D5B54578);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_1D60CB820(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    *a2 = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1D7263D4C();

    v24 = 0xD000000000000029;
    v25 = 0x80000001D73C9220;
    v16 = sub_1D72583DC();
    MEMORY[0x1DA6F9910](v16);

    v17 = v24;
    v18 = v25;
    if (qword_1EC87D498 != -1)
    {
      v22 = v24;
      swift_once();
      v17 = v22;
    }

    sub_1D5F5EBA0(2, 0, 0, v17, v18);

    v19 = sub_1D72585DC();
    v21 = v20;
    type metadata accessor for FormatJSONDecoder(0);
    swift_allocObject();
    sub_1D5B7BACC(&unk_1F5111598);
    sub_1D60CBD70();
    sub_1D725A69C();
    (*(v11 + 8))(v14, v10);

    return sub_1D5B952F8(v19, v21);
  }

  return result;
}

void sub_1D60B5EC4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = MEMORY[0x1E6968FB0];
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v28 - v8;
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CB96C(a1, v9, &qword_1EDF45B40, v4, v5, sub_1D5B54578);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D60CB820(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D60CB770(v29);
    v21 = v29[11];
    a2[10] = v29[10];
    a2[11] = v21;
    a2[12] = v29[12];
    v22 = v29[7];
    a2[6] = v29[6];
    a2[7] = v22;
    v23 = v29[9];
    a2[8] = v29[8];
    a2[9] = v23;
    v24 = v29[3];
    a2[2] = v29[2];
    a2[3] = v24;
    v25 = v29[5];
    a2[4] = v29[4];
    a2[5] = v25;
    v26 = v29[1];
    *a2 = v29[0];
    a2[1] = v26;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    sub_1D7263D4C();

    *&v29[0] = 0xD000000000000029;
    *(&v29[0] + 1) = 0x80000001D73C9220;
    v15 = sub_1D72583DC();
    MEMORY[0x1DA6F9910](v15);

    v17 = *(&v29[0] + 1);
    v16 = *&v29[0];
    if (qword_1EC87D498 != -1)
    {
      v27 = *&v29[0];
      swift_once();
      v16 = v27;
    }

    sub_1D5F5EBA0(2, 0, 0, v16, v17);

    v18 = sub_1D72585DC();
    v20 = v19;
    type metadata accessor for FormatJSONDecoder(0);
    swift_allocObject();
    sub_1D5B7BACC(&unk_1F51115C0);
    sub_1D60CBD1C();
    sub_1D725A69C();
    (*(v11 + 8))(v14, v10);

    sub_1D5B952F8(v18, v20);
    nullsub_1();
  }
}

uint64_t sub_1D60B62F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D72583CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 URLsForDirectory:14 inDomains:1];

  v17 = sub_1D726267C();
  if (*(v17 + 16))
  {
    (*(v21 + 16))(v10, v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v7);

    v22 = 0xD000000000000022;
    v23 = 0x80000001D73C9270;
    (*(v3 + 104))(v6, *MEMORY[0x1E6968F68], v2);
    sub_1D5BF4D9C();
    sub_1D725859C();
    (*(v3 + 8))(v6, v2);
    (*(v21 + 8))(v10, v7);
    (*(v21 + 32))(a1, v14, v7);
    return (*(v21 + 56))(a1, 0, 1, v7);
  }

  else
  {

    v19 = *(v21 + 56);

    return v19(a1, 1, 1, v7);
  }
}

void sub_1D60B6620(uint64_t a1, uint64_t *a2)
{
  v64 = a1;
  v3 = type metadata accessor for DebugFormatWorkspaceKind(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DebugFormatWorkspace(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v64 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v23 = &v64 - v21;
  v24 = *a2;
  v25 = *(*a2 + 16);
  v73 = v22;
  v75 = v25;
  v69 = v20;
  if (!v25)
  {
    v27 = MEMORY[0x1E69E7CC8];
LABEL_16:
    v46 = v64;
    swift_beginAccess();
    *(v46 + 104) = v27;

    v49 = 0;
    v70 = MEMORY[0x1E69E7CC8];
    v72 = v3;
    while (1)
    {
      v71 = v49;
      v52 = *(&unk_1F51115E8 + v49 + 32);
      if (v75)
      {
        break;
      }

LABEL_39:
      MEMORY[0x1EEE9AC00](v47, v48);
      *(&v64 - 16) = v52;
      v62 = sub_1D72626CC();

      if (*(v62 + 16))
      {
        v50 = v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76[0] = v50;
        sub_1D6D796B0(v62, v52, isUniquelyReferenced_nonNull_native);
        v70 = v76[0];
      }

      else
      {
      }

      v49 = v71 + 1;
      if (v71 == 3)
      {
        v63 = v64;
        swift_beginAccess();
        *(v63 + 112) = v70;

        return;
      }
    }

    v53 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    v55 = v73;
    while (1)
    {
      if (v53 >= *(v24 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v57 = *(v55 + 72);
      sub_1D60CBBE8(v24 + v56 + v57 * v53, v13, type metadata accessor for DebugFormatWorkspace);
      sub_1D60CBBE8(v13, v6, type metadata accessor for DebugFormatWorkspaceKind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_1D60CBC50(v6, type metadata accessor for DebugFormatWorkspaceKind);
          if (v52 == 1)
          {
LABEL_34:
            sub_1D60CBDE4(v13, v74, type metadata accessor for DebugFormatWorkspace);
            v59 = swift_isUniquelyReferenced_nonNull_native();
            v76[0] = v54;
            if ((v59 & 1) == 0)
            {
              sub_1D6998988(0, *(v54 + 16) + 1, 1);
              v54 = v76[0];
            }

            v61 = *(v54 + 16);
            v60 = *(v54 + 24);
            if (v61 >= v60 >> 1)
            {
              sub_1D6998988((v60 > 1), v61 + 1, 1);
              v54 = v76[0];
            }

            *(v54 + 16) = v61 + 1;
            v47 = sub_1D60CBDE4(v74, v54 + v56 + v61 * v57, type metadata accessor for DebugFormatWorkspace);
            v55 = v73;
            goto LABEL_22;
          }
        }

        else
        {
          sub_1D60CBC50(v6, type metadata accessor for DebugFormatWorkspaceKind);
          if (v52 == 2)
          {
            goto LABEL_34;
          }
        }
      }

      else if ((EnumCaseMultiPayload - 2) >= 2)
      {
        if (v52 == 3)
        {
          goto LABEL_34;
        }
      }

      else if (!v52)
      {
        goto LABEL_34;
      }

      v47 = sub_1D60CBC50(v13, type metadata accessor for DebugFormatWorkspace);
LABEL_22:
      if (v75 == ++v53)
      {
        goto LABEL_39;
      }
    }
  }

  v26 = 0;
  v68 = &v23[*(v20 + 20)];
  v67 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v27 = MEMORY[0x1E69E7CC8];
  v28 = v22;
  v65 = &v64 - v21;
  v66 = v17;
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      goto LABEL_43;
    }

    v29 = *(v28 + 72);
    v70 = v26;
    v72 = v29;
    sub_1D60CBBE8(v67 + v29 * v26, v23, type metadata accessor for DebugFormatWorkspace);
    v31 = *v68;
    v30 = v68[1];
    sub_1D60CBBE8(v23, v17, type metadata accessor for DebugFormatWorkspace);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v27;
    v71 = v31;
    v34 = sub_1D5B69D90(v31, v30);
    v35 = v27[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (v27[3] >= v37)
    {
      if ((v32 & 1) == 0)
      {
        sub_1D6D81B30();
      }
    }

    else
    {
      sub_1D6D6C880(v37, v32);
      v39 = sub_1D5B69D90(v71, v30);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_46;
      }

      v34 = v39;
    }

    v28 = v73;
    v27 = v77;
    if (v38)
    {
      v17 = v66;
      sub_1D60CBCB8(v66, v77[7] + v34 * v72);
    }

    else
    {
      v77[(v34 >> 6) + 8] |= 1 << v34;
      v41 = (v27[6] + 16 * v34);
      v42 = v72;
      *v41 = v71;
      v41[1] = v30;
      v17 = v66;
      sub_1D60CBDE4(v66, v27[7] + v34 * v42, type metadata accessor for DebugFormatWorkspace);
      v43 = v27[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_45;
      }

      v27[2] = v45;
    }

    v26 = v70 + 1;
    v23 = v65;
    sub_1D60CBC50(v65, type metadata accessor for DebugFormatWorkspace);
    if (v75 == v26)
    {
      goto LABEL_16;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_1D726493C();
  __break(1u);
}

uint64_t sub_1D60B6CB8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
  }

  else
  {
    type metadata accessor for DebugFormatWorkspace(0);

    return sub_1D72626EC();
  }
}

uint64_t sub_1D60B6D3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for DebugFormatWorkspace(0) + 20);
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D60B6D88(uint64_t *a1)
{
  v2 = MEMORY[0x1E6968FB0];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - v5;
  v7 = *a1;
  sub_1D60B57F4(&v9 - v5);
  sub_1D60B6E54(v7, v6);
  return sub_1D60CB820(v6, &qword_1EDF45B40, v2);
}

double sub_1D60B6E54(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_1D7261ABC();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D7261B2C();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v6);
  v34 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6968FB0];
  v9 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v32 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v18 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v32 - v21;
  sub_1D60CB96C(a2, v13, &qword_1EDF45B40, v8, v9, sub_1D5B54578);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D60CB820(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v24 = *(v15 + 32);
    v24(v22, v13, v14);
    if (qword_1EC87D508 != -1)
    {
      swift_once();
    }

    v32[1] = qword_1EC883478;
    (*(v15 + 16))(v18, v22, v14);
    v25 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v33;
    v24((v26 + v25), v18, v14);
    aBlock[4] = sub_1D60CBB30;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_13;
    v27 = _Block_copy(aBlock);

    v28 = v34;
    sub_1D7261AEC();
    v40 = MEMORY[0x1E69E7CC0];
    sub_1D5B737E8(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v29 = MEMORY[0x1E69E7F60];
    sub_1D5B54578(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D60CBA78(&qword_1EDF1B560, &qword_1EDF1B570, v29);
    v30 = v36;
    v31 = v39;
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v28, v30, v27);
    _Block_release(v27);
    (*(v38 + 8))(v30, v31);
    (*(v35 + 8))(v28, v37);
    (*(v15 + 8))(v22, v14);
  }

  return result;
}

double sub_1D60B7398(__int128 *a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_1D7261ABC();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D7261B2C();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6968FB0];
  v9 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v49 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v49 - v20;
  v22 = v8;
  v24 = v23;
  sub_1D60CB96C(v56, v13, &qword_1EDF45B40, v22, v9, sub_1D5B54578);
  if ((*(v15 + 48))(v13, 1, v24) == 1)
  {
    sub_1D60CB820(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v26 = *(v15 + 32);
    v26(v21, v13, v24);
    if (qword_1EC87D508 != -1)
    {
      swift_once();
    }

    v56 = qword_1EC883478;
    v27 = a1[11];
    v69 = a1[10];
    v70 = v27;
    v71 = a1[12];
    v28 = a1[7];
    v65 = a1[6];
    v66 = v28;
    v29 = a1[9];
    v67 = a1[8];
    v68 = v29;
    v30 = a1[3];
    v61 = a1[2];
    v62 = v30;
    v31 = a1[5];
    v63 = a1[4];
    v64 = v31;
    v32 = a1[1];
    v59 = *a1;
    v60 = v32;
    (*(v15 + 16))(&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v24);
    v33 = *(v15 + 80);
    v49 = v21;
    v34 = v24;
    v35 = (v33 + 224) & ~v33;
    v36 = swift_allocObject();
    v37 = v70;
    *(v36 + 11) = v69;
    *(v36 + 12) = v37;
    *(v36 + 13) = v71;
    v38 = v66;
    *(v36 + 7) = v65;
    *(v36 + 8) = v38;
    v39 = v68;
    *(v36 + 9) = v67;
    *(v36 + 10) = v39;
    v40 = v62;
    *(v36 + 3) = v61;
    *(v36 + 4) = v40;
    v41 = v64;
    *(v36 + 5) = v63;
    *(v36 + 6) = v41;
    v42 = v60;
    *(v36 + 1) = v59;
    *(v36 + 2) = v42;
    v43 = v34;
    v26(&v36[v35], &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
    v58[4] = sub_1D60CB9E0;
    v58[5] = v36;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 1107296256;
    v58[2] = sub_1D5B6B06C;
    v58[3] = &block_descriptor_20;
    v44 = _Block_copy(v58);
    sub_1D60CB8A0(a1, v57);
    v45 = v50;
    sub_1D7261AEC();
    v57[0] = MEMORY[0x1E69E7CC0];
    sub_1D5B737E8(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v46 = MEMORY[0x1E69E7F60];
    sub_1D5B54578(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D60CBA78(&qword_1EDF1B560, &qword_1EDF1B570, v46);
    v47 = v52;
    v48 = v55;
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v45, v47, v44);
    _Block_release(v44);
    (*(v54 + 8))(v47, v48);
    (*(v51 + 8))(v45, v53);
    (*(v15 + 8))(v49, v43);
  }

  return result;
}

uint64_t sub_1D60B795C(__int128 *a1)
{
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19[-v4];
  v6 = a1[9];
  v7 = a1[11];
  v32 = a1[10];
  v33 = v7;
  v8 = a1[11];
  v34 = a1[12];
  v9 = a1[5];
  v10 = a1[7];
  v28 = a1[6];
  v29 = v10;
  v11 = a1[7];
  v12 = a1[9];
  v30 = a1[8];
  v31 = v12;
  v13 = a1[1];
  v14 = a1[3];
  v24 = a1[2];
  v25 = v14;
  v15 = a1[3];
  v16 = a1[5];
  v26 = a1[4];
  v27 = v16;
  v17 = a1[1];
  v22 = *a1;
  v23 = v17;
  v45 = v32;
  v46 = v8;
  v47 = a1[12];
  v41 = v28;
  v42 = v11;
  v43 = v30;
  v44 = v6;
  v37 = v24;
  v38 = v15;
  v39 = v26;
  v40 = v9;
  v35 = v22;
  v36 = v13;
  if (sub_1D5DEA380(&v35) == 1)
  {
    sub_1D60B62F8(v5);
    sub_1D60B7B60(v5);
  }

  else
  {
    v21[10] = v45;
    v21[11] = v46;
    v21[12] = v47;
    v21[6] = v41;
    v21[7] = v42;
    v21[8] = v43;
    v21[9] = v44;
    v21[2] = v37;
    v21[3] = v38;
    v21[4] = v39;
    v21[5] = v40;
    v21[0] = v35;
    v21[1] = v36;
    v20[10] = v32;
    v20[11] = v33;
    v20[12] = v34;
    v20[6] = v28;
    v20[7] = v29;
    v20[8] = v30;
    v20[9] = v31;
    v20[2] = v24;
    v20[3] = v25;
    v20[4] = v26;
    v20[5] = v27;
    v20[0] = v22;
    v20[1] = v23;
    sub_1D60CB8A0(v20, v19);
    sub_1D60B62F8(v5);
    sub_1D60B7398(v21, v5);
    sub_1D60CB8FC(&v22, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
  }

  return sub_1D60CB820(v5, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
}

uint64_t sub_1D60B7B60(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6968FB0];
  v3 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20[-v6];
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D60CB96C(a1, v7, &qword_1EDF45B40, v2, v3, sub_1D5B54578);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D60CB820(v7, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  (*(v9 + 32))(v12, v7, v8);
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_1D725844C();
  v21[0] = 0;
  v16 = [v14 removeItemAtURL:v15 error:v21];

  if (v16)
  {
    v17 = v21[0];
  }

  else
  {
    v18 = v21[0];
    v19 = sub_1D725829C();

    swift_willThrow();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D60B7E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 432) = a4;
  *(v5 + 440) = v4;
  *(v5 + 416) = a1;
  *(v5 + 424) = a2;
  type metadata accessor for FeedContext(0);
  *(v5 + 448) = swift_task_alloc();
  v7 = type metadata accessor for DebugFormatWorkspace(0);
  *(v5 + 456) = v7;
  *(v5 + 464) = *(v7 - 8);
  *(v5 + 472) = swift_task_alloc();
  v8 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *(v5 + 480) = swift_task_alloc();
  v9 = sub_1D72585BC();
  *(v5 + 488) = v9;
  *(v5 + 496) = *(v9 - 8);
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = type metadata accessor for DebugFormatWorkspaceKind(0);
  *(v5 + 520) = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v8);
  *(v5 + 528) = swift_task_alloc();
  v10 = *(a3 + 144);
  *(v5 + 144) = *(a3 + 128);
  *(v5 + 160) = v10;
  *(v5 + 176) = *(a3 + 160);
  *(v5 + 191) = *(a3 + 175);
  v11 = *(a3 + 80);
  *(v5 + 80) = *(a3 + 64);
  *(v5 + 96) = v11;
  v12 = *(a3 + 112);
  *(v5 + 112) = *(a3 + 96);
  *(v5 + 128) = v12;
  v13 = *(a3 + 16);
  *(v5 + 16) = *a3;
  *(v5 + 32) = v13;
  v14 = *(a3 + 48);
  *(v5 + 48) = *(a3 + 32);
  *(v5 + 64) = v14;
  sub_1D726290C();
  *(v5 + 536) = sub_1D72628FC();
  v16 = sub_1D726285C();
  *(v5 + 544) = v16;
  *(v5 + 552) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D60B80A4, v16, v15);
}

uint64_t sub_1D60B80A4()
{
  v40 = v0;
  sub_1D60CBBE8(*(v0 + 424), *(v0 + 520), type metadata accessor for DebugFormatWorkspaceKind);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v9 = *(v0 + 456);
    v10 = *(v0 + 464);
    v11 = *(v0 + 416);

    (*(v10 + 56))(v11, 1, 1, v9);
    goto LABEL_5;
  }

  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 480);
  sub_1D6033350(*(v0 + 520), *(v0 + 528));
  v4 = sub_1D6A9DC44(v3);
  if ((*(v2 + 48))(v3, 1, v1, v4) == 1)
  {
    v5 = *(v0 + 480);
    v6 = *(v0 + 456);
    v7 = *(v0 + 464);
    v8 = *(v0 + 416);
    sub_1D60CB820(*(v0 + 528), &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);

    sub_1D60CB820(v5, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    (*(v7 + 56))(v8, 1, 1, v6);
LABEL_5:

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 464);
  v37 = *(v0 + 472);
  v15 = *(v0 + 440);
  v16 = *(v0 + 448);
  v18 = *(v0 + 424);
  v17 = *(v0 + 432);
  (*(*(v0 + 496) + 32))(*(v0 + 504), *(v0 + 480), *(v0 + 488));
  v19 = *(v0 + 160);
  v38[8] = *(v0 + 144);
  v38[9] = v19;
  v39[0] = *(v0 + 176);
  *(v39 + 15) = *(v0 + 191);
  v20 = *(v0 + 96);
  v38[4] = *(v0 + 80);
  v38[5] = v20;
  v21 = *(v0 + 128);
  v38[6] = *(v0 + 112);
  v38[7] = v21;
  v22 = *(v0 + 32);
  v38[0] = *(v0 + 16);
  v38[1] = v22;
  v23 = *(v0 + 64);
  v38[2] = *(v0 + 48);
  v38[3] = v23;
  v24 = *(*(*(v15 + 120) + 96) + 32);
  ObjectType = swift_getObjectType();
  FeedContextFactoryType.createFeedContext()(ObjectType, v24);
  sub_1D60B8884(v17, v18, v38, v16, v37);
  sub_1D60CBC50(v16, type metadata accessor for FeedContext);
  sub_1D5B54578(0, &unk_1EC8850B0, type metadata accessor for DebugFormatWorkspace, MEMORY[0x1E69E6F90]);
  v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7273AE0;
  sub_1D60CBBE8(v37, v27 + v26, type metadata accessor for DebugFormatWorkspace);

  v28 = sub_1D725B30C();
  sub_1D6986DE4(v27);
  v28(v0 + 384, 0);

  v29 = *(v0 + 160);
  *(v0 + 328) = *(v0 + 144);
  *(v0 + 344) = v29;
  *(v0 + 360) = *(v0 + 176);
  v30 = *(v0 + 96);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v30;
  v31 = *(v0 + 128);
  *(v0 + 296) = *(v0 + 112);
  *(v0 + 312) = v31;
  v32 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v32;
  v33 = *(v0 + 64);
  *(v0 + 232) = *(v0 + 48);
  *(v0 + 375) = *(v0 + 191);
  *(v0 + 248) = v33;
  v34 = swift_task_alloc();
  *(v0 + 560) = v34;
  *v34 = v0;
  v34[1] = sub_1D60B84E8;
  v35 = *(v0 + 528);
  v36 = *(v0 + 504);

  return sub_1D60B9658(v36, v0 + 200, v35);
}

uint64_t sub_1D60B84E8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  (*v3)[71] = v2;

  if (v2)
  {
    sub_1D60CB820(v4[66], &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    v5 = v4[69];
    v6 = v4[68];
    v7 = sub_1D60B878C;
  }

  else
  {
    v8 = v4[66];

    sub_1D60CB820(v8, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    v5 = v4[69];
    v6 = v4[68];
    v7 = sub_1D60B8664;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D60B8664()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[57];
  v7 = v0[52];

  (*(v2 + 8))(v1, v3);
  sub_1D60CBDE4(v4, v7, type metadata accessor for DebugFormatWorkspace);
  (*(v5 + 56))(v7, 0, 1, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D60B878C()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];
  v4 = v0[59];

  sub_1D60CBC50(v4, type metadata accessor for DebugFormatWorkspace);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

void sub_1D60B8884(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v122 = a4;
  v123 = a5;
  v124 = a2;
  v142 = a1;
  v134 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v134, v6);
  v133 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatWorkspaceGroup(0);
  v137 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v132 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v131 = &v121 - v13;
  v14 = type metadata accessor for DebugFormatWorkspaceGroup(0);
  v129 = *(v14 - 8);
  v130 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v121 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DebugFormatWorkspaceKind(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3[9];
  v172 = a3[8];
  v173 = v21;
  *v174 = a3[10];
  *&v174[15] = *(a3 + 175);
  v22 = a3[5];
  v168 = a3[4];
  v169 = v22;
  v23 = a3[7];
  v170 = a3[6];
  v171 = v23;
  v24 = a3[1];
  v164 = *a3;
  v165 = v24;
  v25 = a3[3];
  v166 = a3[2];
  v167 = v25;
  v26 = *(&v25 + 1);
  v175[0] = *(&v25 + 1);
  v27 = MEMORY[0x1E69E7CC0];
  v163 = MEMORY[0x1E69E7CC0];
  v28 = *(*(&v25 + 1) + 16);
  v141 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__packages;
  sub_1D60CF4D8(v175, v162, &qword_1EC883538, sub_1D60CEDD4, sub_1D60CEEE4);
  if (v28)
  {
    v29 = 0;
    v30 = v26 + 40;
    v138 = v28;
    v126 = v28 - 1;
    v135 = MEMORY[0x1E69E7CC0];
    v136 = v26 + 40;
    v127 = v17;
    v128 = v20;
    v139 = v26;
    while (1)
    {
      v31 = (v30 + 16 * v29);
      v32 = v29;
      while (1)
      {
        if (v32 >= *(v26 + 16))
        {
          __break(1u);
          return;
        }

        v33 = *v31;
        v140 = *(v31 - 1);
        v34 = v33;
        swift_bridgeObjectRetain_n();

        sub_1D725B31C();

        memcpy(v162, v161, sizeof(v162));
        v35 = *&v162[6];

        sub_1D60CEF18(v162);

        if (*(v35 + 16))
        {
          break;
        }

        swift_bridgeObjectRelease_n();
LABEL_5:
        v26 = v139;
        ++v32;
        v31 += 2;
        if (v138 == v32)
        {
          v20 = v128;
          goto LABEL_16;
        }
      }

      sub_1D5B69D90(v140, v34);
      v37 = v36;

      if ((v37 & 1) == 0)
      {
        break;
      }

      MEMORY[0x1DA6F9CE0](v38);
      v26 = v139;
      if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      v29 = v32 + 1;
      sub_1D726278C();
      v135 = v163;
      v20 = v128;
      v30 = v136;
      if (v126 == v32)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_5;
  }

  v135 = v27;
LABEL_16:
  sub_1D60CEF6C(v175);
  v39 = swift_allocObject();
  sub_1D5F588A0(&v145);
  v40 = v158;
  *(v39 + 208) = v157;
  *(v39 + 224) = v40;
  *(v39 + 240) = v159;
  *(v39 + 256) = v160;
  v41 = v154;
  *(v39 + 144) = v153;
  *(v39 + 160) = v41;
  v42 = v156;
  *(v39 + 176) = v155;
  *(v39 + 192) = v42;
  v43 = v150;
  *(v39 + 80) = v149;
  *(v39 + 96) = v43;
  v44 = v152;
  *(v39 + 112) = v151;
  *(v39 + 128) = v44;
  v45 = v146;
  *(v39 + 16) = v145;
  *(v39 + 32) = v45;
  v46 = v148;
  *(v39 + 48) = v147;
  *(v39 + 64) = v46;
  v136 = v39;
  sub_1D60CBBE8(v124, v20, type metadata accessor for DebugFormatWorkspaceKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    sub_1D60CBC50(v20, type metadata accessor for DebugFormatWorkspaceKind);
  }

  else if ((EnumCaseMultiPayload - 2) < 2)
  {
    v48 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_key;
    v49 = *(v142 + *(type metadata accessor for DebugGroupLayoutKey(0) + 24) + v48 + 64);
    if (*(v49 + 16) && (v50 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61), (v51 & 1) != 0) && (sub_1D5B68374(*(v49 + 56) + 40 * v50, v161), sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType), swift_dynamicCast()))
    {
      nullsub_1();
    }

    else
    {
      v162[12] = v157;
      v162[13] = v158;
      v162[14] = v159;
      *&v162[15] = v160;
      v162[8] = v153;
      v162[9] = v154;
      v162[10] = v155;
      v162[11] = v156;
      v162[4] = v149;
      v162[5] = v150;
      v162[6] = v151;
      v162[7] = v152;
      v162[0] = v145;
      v162[1] = v146;
      v162[2] = v147;
      v162[3] = v148;
    }

    v52 = v136;
    v53 = *(v136 + 224);
    v161[12] = *(v136 + 208);
    v161[13] = v53;
    v161[14] = *(v136 + 240);
    *&v161[15] = *(v136 + 256);
    v54 = *(v136 + 160);
    v161[8] = *(v136 + 144);
    v161[9] = v54;
    v55 = *(v136 + 192);
    v161[10] = *(v136 + 176);
    v161[11] = v55;
    v56 = *(v136 + 96);
    v161[4] = *(v136 + 80);
    v161[5] = v56;
    v57 = *(v136 + 128);
    v161[6] = *(v136 + 112);
    v161[7] = v57;
    v58 = *(v136 + 32);
    v161[0] = *(v136 + 16);
    v161[1] = v58;
    v59 = *(v136 + 64);
    v161[2] = *(v136 + 48);
    v161[3] = v59;
    v60 = v162[13];
    *(v136 + 208) = v162[12];
    *(v52 + 224) = v60;
    *(v52 + 240) = v162[14];
    *(v52 + 256) = *&v162[15];
    v61 = v162[9];
    *(v52 + 144) = v162[8];
    *(v52 + 160) = v61;
    v62 = v162[11];
    *(v52 + 176) = v162[10];
    *(v52 + 192) = v62;
    v63 = v162[5];
    *(v52 + 80) = v162[4];
    *(v52 + 96) = v63;
    v64 = v162[7];
    *(v52 + 112) = v162[6];
    *(v52 + 128) = v64;
    v65 = v162[1];
    *(v52 + 16) = v162[0];
    *(v52 + 32) = v65;
    v66 = v162[3];
    *(v52 + 48) = v162[2];
    *(v52 + 64) = v66;
    sub_1D60CB8FC(v161, qword_1EDF34BC0, &type metadata for FeedPaywall);
  }

  v67 = v168;
  v68 = *(v168 + 16);
  v69 = MEMORY[0x1E69E7CC0];
  if (v68)
  {
    v144 = MEMORY[0x1E69E7CC0];
    sub_1D69989D8(0, v68, 0);
    v140 = 0;
    v70 = v144;
    v71 = *(v137 + 80);
    v72 = v67 + ((v71 + 32) & ~v71);
    v128 = v71;
    v126 = *(v137 + 9);
    v127 = (v71 + 211) & ~v71;
    v125 = (v125 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = v121;
    do
    {
      v138 = v68;
      v139 = v70;
      v74 = v131;
      v137 = type metadata accessor for FormatWorkspaceGroup;
      sub_1D60CBBE8(v72, v131, type metadata accessor for FormatWorkspaceGroup);
      v75 = swift_allocObject();
      swift_weakInit();
      v76 = swift_allocObject();
      swift_weakInit();
      v77 = v132;
      sub_1D60CBBE8(v74, v132, type metadata accessor for FormatWorkspaceGroup);
      v78 = v125;
      v79 = swift_allocObject();
      *(v79 + 16) = v75;
      *(v79 + 24) = v76;
      v80 = v173;
      *(v79 + 160) = v172;
      *(v79 + 176) = v80;
      *(v79 + 192) = *v174;
      *(v79 + 207) = *&v174[15];
      v81 = v169;
      *(v79 + 96) = v168;
      *(v79 + 112) = v81;
      v82 = v171;
      *(v79 + 128) = v170;
      *(v79 + 144) = v82;
      v83 = v165;
      *(v79 + 32) = v164;
      *(v79 + 48) = v83;
      v84 = v167;
      *(v79 + 64) = v166;
      *(v79 + 80) = v84;
      sub_1D60CBDE4(v77, v79 + v127, type metadata accessor for FormatWorkspaceGroup);
      *(v79 + v78) = v136;
      *&v161[0] = v69;
      sub_1D5ECF1C0(&v164, v162);
      sub_1D5B737E8(&qword_1EDF3BDB0, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
      v85 = MEMORY[0x1E69D6420];
      sub_1D5B54578(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
      sub_1D60CBA78(&qword_1EDF1B5A0, &qword_1EDF1B5B0, v85);

      sub_1D7263B6C();
      sub_1D60CF0B0(0);
      swift_allocObject();
      v86 = sub_1D725B7AC();

      sub_1D725B31C();

      memcpy(v162, v161, sizeof(v162));
      memcpy(v143, v161, sizeof(v143));
      v87 = sub_1D71689D8();
      v88 = sub_1D60CEF18(v162);
      MEMORY[0x1EEE9AC00](v88, v89);
      *(&v121 - 2) = v74;
      v90 = v140;
      v91 = sub_1D5E3EA18(sub_1D60CF124, (&v121 - 4), v87);
      v140 = v90;

      sub_1D60CBBE8(v74, v73, v137);
      sub_1D60C8730(v91, v86, v135);
      v92 = v130;
      *(v73 + *(v130 + 20)) = v91;
      *(v73 + *(v92 + 24)) = v86;
      *(v73 + *(v92 + 28)) = v93;
      v94 = v74;
      v70 = v139;
      sub_1D60CBC50(v94, type metadata accessor for FormatWorkspaceGroup);
      v144 = v70;
      v96 = *(v70 + 16);
      v95 = *(v70 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_1D69989D8((v95 > 1), v96 + 1, 1);
        v73 = v121;
        v70 = v144;
      }

      *(v70 + 16) = v96 + 1;
      sub_1D60CBDE4(v73, v70 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v96, type metadata accessor for DebugFormatWorkspaceGroup);
      v72 += v126;
      v68 = v138 - 1;
      v69 = MEMORY[0x1E69E7CC0];
    }

    while (v138 != 1);
  }

  else
  {
    v70 = MEMORY[0x1E69E7CC0];
  }

  v97 = v123;
  sub_1D60CBBE8(v124, v123, type metadata accessor for DebugFormatWorkspaceKind);
  v98 = type metadata accessor for DebugFormatWorkspace(0);
  sub_1D60CBBE8(v122, v97 + v98[6], type metadata accessor for FeedContext);
  v99 = v136;
  swift_beginAccess();
  v100 = *(v99 + 224);
  v162[12] = *(v99 + 208);
  v162[13] = v100;
  v162[14] = *(v99 + 240);
  *&v162[15] = *(v99 + 256);
  v101 = *(v99 + 160);
  v162[8] = *(v99 + 144);
  v162[9] = v101;
  v102 = *(v99 + 192);
  v162[10] = *(v99 + 176);
  v162[11] = v102;
  v103 = *(v99 + 96);
  v162[4] = *(v99 + 80);
  v162[5] = v103;
  v104 = *(v99 + 128);
  v162[6] = *(v99 + 112);
  v162[7] = v104;
  v105 = *(v99 + 32);
  v162[0] = *(v99 + 16);
  v162[1] = v105;
  v106 = *(v99 + 64);
  v162[2] = *(v99 + 48);
  v162[3] = v106;
  sub_1D5ECF1C0(&v164, v161);
  sub_1D60CB96C(v162, v161, qword_1EDF34BC0, &type metadata for FeedPaywall, MEMORY[0x1E69E6720], sub_1D60CFD84);

  v107 = v97 + v98[5];
  v108 = v171;
  *(v107 + 96) = v170;
  *(v107 + 112) = v108;
  v109 = v169;
  *(v107 + 64) = v168;
  *(v107 + 80) = v109;
  *(v107 + 175) = *&v174[15];
  v110 = *v174;
  *(v107 + 144) = v173;
  *(v107 + 160) = v110;
  *(v107 + 128) = v172;
  v111 = v165;
  *v107 = v164;
  *(v107 + 16) = v111;
  v112 = v167;
  *(v107 + 32) = v166;
  *(v107 + 48) = v112;
  v113 = v97 + v98[7];
  v114 = v162[13];
  *(v113 + 192) = v162[12];
  *(v113 + 208) = v114;
  *(v113 + 224) = v162[14];
  *(v113 + 240) = *&v162[15];
  v115 = v162[9];
  *(v113 + 128) = v162[8];
  *(v113 + 144) = v115;
  v116 = v162[11];
  *(v113 + 160) = v162[10];
  *(v113 + 176) = v116;
  v117 = v162[5];
  *(v113 + 64) = v162[4];
  *(v113 + 80) = v117;
  v118 = v162[7];
  *(v113 + 96) = v162[6];
  *(v113 + 112) = v118;
  v119 = v162[1];
  *v113 = v162[0];
  *(v113 + 16) = v119;
  v120 = v162[3];
  *(v113 + 32) = v162[2];
  *(v113 + 48) = v120;
  *(v97 + v98[8]) = v135;
  *(v97 + v98[9]) = v70;
}

uint64_t sub_1D60B9658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 416) = a3;
  *(v4 + 424) = v3;
  *(v4 + 400) = a1;
  *(v4 + 408) = a2;
  v6 = sub_1D72577EC();
  *(v4 + 432) = v6;
  *(v4 + 440) = *(v6 - 8);
  *(v4 + 448) = swift_task_alloc();
  v7 = sub_1D7257C7C();
  *(v4 + 456) = v7;
  *(v4 + 464) = *(v7 - 8);
  *(v4 + 472) = swift_task_alloc();
  v8 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *(v4 + 480) = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v8);
  *(v4 + 488) = swift_task_alloc();
  v9 = type metadata accessor for DebugFormatCacheFile(0);
  *(v4 + 496) = v9;
  *(v4 + 504) = *(v9 - 8);
  *(v4 + 512) = swift_task_alloc();
  v10 = sub_1D72585BC();
  *(v4 + 520) = v10;
  *(v4 + 528) = *(v10 - 8);
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  sub_1D5B54578(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v8);
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = type metadata accessor for FormatFile(0);
  *(v4 + 568) = swift_task_alloc();
  v11 = *(a2 + 144);
  *(v4 + 144) = *(a2 + 128);
  *(v4 + 160) = v11;
  *(v4 + 176) = *(a2 + 160);
  *(v4 + 191) = *(a2 + 175);
  v12 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v12;
  v13 = *(a2 + 112);
  *(v4 + 112) = *(a2 + 96);
  *(v4 + 128) = v13;
  v14 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v14;
  v15 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D60B99A8, 0, 0);
}

uint64_t sub_1D60B99A8()
{
  v1 = v0[71];
  v2 = v0[51];
  v3 = v2[7];
  v5 = v2[4];
  v4 = v2[5];
  *(v1 + 96) = v2[6];
  *(v1 + 112) = v3;
  *(v1 + 64) = v5;
  *(v1 + 80) = v4;
  v7 = v2[9];
  v6 = v2[10];
  v8 = v2[8];
  *(v1 + 175) = *(v2 + 175);
  *(v1 + 144) = v7;
  *(v1 + 160) = v6;
  *(v1 + 128) = v8;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[3];
  *(v1 + 32) = v2[2];
  *(v1 + 48) = v11;
  *v1 = v9;
  *(v1 + 16) = v10;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FormatJSONEncoder(0);
  swift_allocObject();
  sub_1D5ECF1C0((v0 + 2), (v0 + 25));
  sub_1D6BCED58(&unk_1F50FBE20);
  sub_1D5B737E8(&qword_1EC8857F0, type metadata accessor for FormatFile, &protocol conformance descriptor for FormatFile);
  v12 = sub_1D72578BC();
  v0[72] = v12;
  v0[73] = v13;
  v52 = v12;
  v53 = v13;
  v14 = v0[68];
  v15 = v0[66];
  v16 = v0[65];
  v17 = v0[63];
  v18 = v0[61];
  v50 = v0[62];
  v51 = v0[58];
  v19 = v0[52];

  sub_1D725849C();
  sub_1D7257BCC();
  v20 = *(v15 + 8);
  v0[74] = v20;
  v0[75] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v14, v16);
  sub_1D60CB96C(v19, v18, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D5B54578);
  v21 = (*(v17 + 48))(v18, 1, v50);
  v22 = (v51 + 48);
  if (v21 == 1)
  {
    sub_1D60CB820(v0[61], &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    v23 = *v22;
  }

  else
  {
    v24 = v0[69];
    v25 = v0[57];
    sub_1D60CBDE4(v0[61], v0[64], type metadata accessor for DebugFormatCacheFile);
    v23 = *v22;
    if (!(*v22)(v24, 1, v25))
    {
      sub_1D5B54578(0, &qword_1EDF19BA0, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
      sub_1D7257B5C();
      *(swift_allocObject() + 16) = xmmword_1D7273AE0;
      sub_1D7257B2C();
      sub_1D7257B7C();
    }

    sub_1D60CBC50(v0[64], type metadata accessor for DebugFormatCacheFile);
  }

  v26 = v0[69];
  v27 = v0[57];
  v28 = v23(v26, 1, v27);
  v29 = v0[66];
  v30 = v0[65];
  v31 = v0[60];
  if (v28)
  {
    (*(v29 + 56))(v0[60], 1, 1, v0[65]);
LABEL_9:
    v34 = v0[71];
    v35 = v0[69];
    sub_1D60CB820(v0[60], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D60CEC74();
    v36 = swift_allocError();
    *v37 = 1;
    swift_willThrow();
    sub_1D5B952F8(v52, v53);
    sub_1D60CBC50(v34, type metadata accessor for FormatFile);
    sub_1D60CB820(v35, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    v38 = v36;
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    sub_1D5F5EBA0(v36, 0, 0, 0xD000000000000024, 0x80000001D73C9320);

    swift_willThrow();

    v39 = v0[1];

    return v39();
  }

  v33 = v0[58];
  v32 = v0[59];
  (*(v33 + 16))(v32, v26, v27);
  sub_1D7257BDC();
  (*(v33 + 8))(v32, v27);
  if ((*(v29 + 48))(v31, 1, v30) == 1)
  {
    goto LABEL_9;
  }

  v41 = v0[68];
  v42 = v0[67];
  v43 = v0[66];
  v44 = v0[65];
  v45 = v0[56];
  v46 = v0[53];
  (*(v43 + 32))(v42, v0[60], v44);
  (*(v43 + 16))(v41, v42, v44);
  sub_1D72577AC();
  sub_1D725774C();
  sub_1D72577DC();
  sub_1D5E3E824(v52, v53);
  sub_1D72577CC();
  v47 = *(v46 + 128);
  v48 = swift_task_alloc();
  *(v48 + 16) = v45;
  *(v48 + 24) = v47;
  sub_1D60CFD84(0, &qword_1EC883518, &type metadata for DebugFormatWorkspaceResponse, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v0[76] = sub_1D725BBAC();

  v49 = swift_task_alloc();
  v0[77] = v49;
  *v49 = v0;
  v49[1] = sub_1D60BA1C4;

  return MEMORY[0x1EEE44EE0](v0 + 48);
}

uint64_t sub_1D60BA1C4()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_1D60BA4F8;
  }

  else
  {
    v2 = sub_1D60BA2F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D60BA2F8()
{
  v1 = v0[49];
  v15 = v0[48];
  v2 = qword_1EC87D498;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[69];
  v7 = v0[67];
  v8 = v0[65];
  v9 = v0[55];
  v13 = v0[74];
  v14 = v0[56];
  v12 = v0[54];
  sub_1D5F5EBA0(2, 0, 0, v15, v1);

  sub_1D5B952F8(v4, v3);
  v13(v7, v8);
  sub_1D60CBC50(v5, type metadata accessor for FormatFile);
  (*(v9 + 8))(v14, v12);
  sub_1D60CB820(v6, &unk_1EDF43B50, MEMORY[0x1E69681B8]);

  v10 = v0[1];

  return v10(v15, v1);
}

uint64_t sub_1D60BA4F8()
{
  v1 = v0[74];
  v2 = v0[71];
  v3 = v0[69];
  v4 = v0[67];
  v5 = v0[65];
  v7 = v0[55];
  v6 = v0[56];
  v8 = v0[54];
  sub_1D5B952F8(v0[72], v0[73]);
  v1(v4, v5);
  sub_1D60CBC50(v2, type metadata accessor for FormatFile);
  (*(v7 + 8))(v6, v8);
  sub_1D60CB820(v3, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  v9 = v0[78];
  v10 = v9;
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(v9, 0, 0, 0xD000000000000024, 0x80000001D73C9320);

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D60BA6F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 6064) = v4;
  *(v5 + 4027) = a4;
  *(v5 + 6056) = a3;
  *(v5 + 6048) = a1;
  *(v5 + 6072) = type metadata accessor for DebugFormatBindingRequest(0);
  *(v5 + 6080) = swift_task_alloc();
  *(v5 + 6088) = type metadata accessor for FormatContentSubgroup(0);
  *(v5 + 6096) = swift_task_alloc();
  v8 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  *(v5 + 6104) = v8;
  *(v5 + 6112) = *(v8 - 8);
  *(v5 + 6120) = swift_task_alloc();
  *(v5 + 6128) = swift_task_alloc();
  *(v5 + 6136) = swift_task_alloc();
  v9 = type metadata accessor for FormatWorkspaceGroup(0);
  *(v5 + 6144) = v9;
  *(v5 + 6152) = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *(a2 + 176);
  *(v5 + 2304) = *(a2 + 160);
  *(v5 + 2320) = v11;
  *(v5 + 2336) = *(a2 + 192);
  v12 = *(a2 + 112);
  *(v5 + 2240) = *(a2 + 96);
  *(v5 + 2256) = v12;
  v13 = *(a2 + 144);
  *(v5 + 2272) = *(a2 + 128);
  *(v5 + 2288) = v13;
  v14 = *(a2 + 48);
  *(v5 + 2176) = *(a2 + 32);
  *(v5 + 2192) = v14;
  v15 = *(a2 + 80);
  *(v5 + 2208) = *(a2 + 64);
  *(v5 + 2224) = v15;
  v16 = *(a2 + 16);
  *(v5 + 2144) = *a2;
  *(v5 + 2160) = v16;
  v17 = *(a3 + 144);
  *(v5 + 5632) = *(a3 + 128);
  *(v5 + 5648) = v17;
  *(v5 + 5664) = *(a3 + 160);
  v18 = *(a3 + 80);
  *(v5 + 5568) = *(a3 + 64);
  *(v5 + 5584) = v18;
  v19 = *(a3 + 112);
  *(v5 + 5600) = *(a3 + 96);
  *(v5 + 5616) = v19;
  v20 = *(a3 + 16);
  *(v5 + 5504) = *a3;
  *(v5 + 5520) = v20;
  v21 = *(a3 + 48);
  *(v5 + 5536) = *(a3 + 32);
  *(v5 + 6160) = v10;
  *(v5 + 2352) = *(a2 + 208);
  *(v5 + 5679) = *(a3 + 175);
  *(v5 + 5552) = v21;

  return MEMORY[0x1EEE6DFA0](sub_1D60BA94C, 0, 0);
}

void sub_1D60BA94C()
{
  v201 = v0;
  v1 = *(v0 + 4027);
  v2 = *(v0 + 6056);
  *(v0 + 6168) = *(v0 + 5504);
  *(v0 + 6176) = *(v0 + 5512);
  v3 = *(v2 + 32);
  *(v0 + 6008) = *(v2 + 16);
  *(v0 + 6024) = v3;
  v188 = (v0 + 6008);
  v189 = (v0 + 3835);
  v4 = *(v2 + 52);
  *(v0 + 3835) = *(v2 + 49);
  *(v0 + 3838) = v4;
  v5 = *(v0 + 5560);
  v7 = *(v2 + 112);
  v6 = *(v2 + 128);
  v8 = *(v2 + 160);
  *(v0 + 5880) = *(v2 + 144);
  *(v0 + 5896) = v8;
  *(v0 + 5848) = v7;
  *(v0 + 5864) = v6;
  v9 = *(v2 + 64);
  v10 = *(v2 + 96);
  *(v0 + 5816) = *(v2 + 80);
  *(v0 + 5832) = v10;
  v187 = (v0 + 5800);
  *(v0 + 5800) = v9;
  v177 = *(v0 + 5681);
  v179 = *(v0 + 5680);
  v175 = *(v0 + 5682);
  sub_1D5ECF1C0(v0 + 5504, v0 + 4952);

  v11 = *(v0 + 2176);
  *(v0 + 5912) = *(v0 + 2160);
  *(v0 + 5928) = v11;
  v182 = (v0 + 5912);
  v183 = (v0 + 5688);
  *(v0 + 5944) = *(v0 + 2192);
  *(v0 + 5960) = *(v0 + 2208);
  v12 = *(v0 + 2216);
  *(v0 + 6184) = v12;
  v13 = *(v0 + 2272);
  v14 = *(v0 + 2304);
  *(v0 + 5752) = *(v0 + 2288);
  *(v0 + 5768) = v14;
  *(v0 + 5784) = *(v0 + 2320);
  v15 = *(v0 + 2240);
  *(v0 + 5688) = *(v0 + 2224);
  *(v0 + 5704) = v15;
  *(v0 + 5720) = *(v0 + 2256);
  *(v0 + 5736) = v13;
  v16 = *(v0 + 2336);
  *(v0 + 6336) = v16;
  v17 = *(v0 + 2337);
  v184 = v0 + 6320;
  v185 = (v0 + 4096);
  *(v0 + 6328) = v17;
  v18 = *(v0 + 2338);
  *(v0 + 3842) = v18;
  *(v0 + 6320) = *(v0 + 2339);
  *(v0 + 6324) = *(v0 + 2343);
  v19 = *(v0 + 2344);
  *(v0 + 6192) = *(v0 + 2352);

  sub_1D5F2B0D8(v0 + 2144, v0 + 3008);

  v20 = MEMORY[0x1E69E7CC0];
  v198 = v0;
  if (v1)
  {

    v21 = v16 & 1;
    v22 = v17 & 1;
    v23 = v18 & 1;
    v20 = v19;
    goto LABEL_18;
  }

  v24 = *(v0 + 5560);
  *&v199[0] = MEMORY[0x1E69E7CC0];
  v25 = *(v24 + 16);

  if (!v25)
  {
    goto LABEL_17;
  }

  v26 = 0;
  v190 = -v25;
  v192 = v24;
  v27 = v24 + 40;
  v172 = v24 + 40;
  do
  {
    v173 = v20;
    v28 = (v27 + 16 * v26++);
    while (1)
    {
      if ((v26 - 1) >= *(v24 + 16))
      {
LABEL_44:
        __break(1u);
        return;
      }

      v29 = *v28;
      v196 = *(v28 - 1);
      swift_bridgeObjectRetain_n();

      sub_1D725B31C();

      memcpy((v198 + 16), (v198 + 352), 0x150uLL);
      v30 = *(v198 + 112);

      sub_1D60CEF18(v198 + 16);

      if (*(v30 + 16))
      {
        break;
      }

      swift_bridgeObjectRelease_n();
LABEL_7:

      v24 = v192;
      ++v26;
      v28 += 2;
      if (v190 + v26 == 1)
      {
        v20 = v173;
        goto LABEL_17;
      }
    }

    sub_1D5B69D90(v196, v29);
    v32 = v31;

    if ((v32 & 1) == 0)
    {

      goto LABEL_7;
    }

    MEMORY[0x1DA6F9CE0](v33);
    v24 = v192;
    if (*((*&v199[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v199[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    v20 = *&v199[0];
    v27 = v172;
  }

  while (v190 + v26);
LABEL_17:

  v0 = v198;

  v12 = v5;
  v22 = v177;
  v21 = v179;
  v23 = v175;
LABEL_18:
  *(v0 + 6208) = v20;
  *(v0 + 4030) = v23;
  *(v0 + 6200) = v12;
  *(v0 + 4029) = v21;
  *(v0 + 4028) = v22;
  v34 = *(v0 + 2352);
  *(v0 + 6216) = v34;
  *(v0 + 6040) = v34;
  sub_1D5B54578(0, &qword_1EC8803D8, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E62F8]);
  sub_1D60CBA78(&qword_1EC883590, &qword_1EC8803D8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D5B737E8(&qword_1EC883598, type metadata accessor for DebugFormatEditorWorkspaceGroup, &unk_1D73051F0);
  *(v0 + 6224) = sub_1D72623BC();
  v35 = *(v0 + 5568);
  *(v0 + 6232) = v35;
  v36 = *(v35 + 16);
  *(v0 + 6240) = v36;
  if (!v36)
  {
LABEL_29:

    v64 = v188[1];
    *(v0 + 3672) = *v188;
    *(v0 + 3688) = v64;
    v65 = v187[5];
    *(v0 + 3784) = v187[4];
    *(v0 + 3800) = v65;
    *(v0 + 3816) = v187[6];
    v66 = v187[1];
    *(v0 + 3720) = *v187;
    *(v0 + 3736) = v66;
    v67 = v187[3];
    *(v0 + 3752) = v187[2];
    *(v0 + 3768) = v67;
    v68 = v182[1];
    *(v0 + 4064) = v182[2];
    v69 = *v182;
    *(v0 + 4048) = v68;
    *(v0 + 4032) = v69;
    v70 = v183[2];
    *(v0 + 4144) = v183[3];
    v71 = v183[5];
    *(v0 + 4160) = v183[4];
    v72 = *(v0 + 6208);
    v174 = *(v0 + 6200);
    v73 = *(v0 + 4029);
    v178 = v73;
    v181 = *(v0 + 4030);
    v74 = *(v0 + 4028);
    v176 = v74;
    v75 = *(v0 + 6184);
    v76 = *(v0 + 6176);
    v169 = *(v0 + 6168);
    strcpy((v0 + 3656), "builtin:editor");
    *(v0 + 3705) = *v189;
    *(v0 + 3671) = -18;
    *(v0 + 3704) = 0;
    *(v0 + 3708) = *(v189 + 3);
    *(v0 + 3712) = v174;
    *(v0 + 3832) = v73;
    *(v0 + 3833) = v74;
    *(v0 + 3834) = v181;
    *(v0 + 4080) = *(v182 + 6);
    *(v0 + 4088) = v75;
    *(v0 + 4176) = v71;
    *(v0 + 4192) = v183[6];
    *(v0 + 4128) = v70;
    v77 = *v183;
    *(v0 + 4112) = v183[1];
    *(v0 + 4096) = v77;
    v185[112] = v185[2240];
    v185[113] = v185[2232];
    v185[114] = *(v0 + 3842);
    sub_1D5ECF1C0(v0 + 3656, v0 + 4216);
    sub_1D5ECF21C(v0 + 4032);
    v78 = *(v0 + 3672);
    *v182 = *(v0 + 3656);
    v182[1] = v78;
    v80 = *(v0 + 3656);
    v79 = *(v0 + 3672);
    v182[2] = *(v0 + 3688);
    v81 = *(v0 + 3768);
    v83 = *(v0 + 3784);
    v82 = *(v0 + 3800);
    v183[4] = v83;
    v183[5] = v82;
    v84 = *(v0 + 3800);
    v183[6] = *(v0 + 3816);
    v85 = *(v0 + 3736);
    *v183 = *(v0 + 3720);
    v183[1] = v85;
    v86 = *(v0 + 3768);
    v88 = *(v0 + 3720);
    v87 = *(v0 + 3736);
    v89 = *(v0 + 3752);
    v183[2] = v89;
    v183[3] = v86;
    v90 = *(v0 + 3688);
    *(v0 + 3256) = v79;
    *(v0 + 3272) = v90;
    *(v0 + 3240) = v80;
    *(v0 + 3304) = v88;
    *(v0 + 3320) = v87;
    v91 = *(v0 + 3816);
    *(v0 + 3384) = v84;
    *(v0 + 3400) = v91;
    *(v182 + 6) = *(v0 + 3704);
    v92 = *(v0 + 3712);
    v93 = *(v0 + 3832);
    v186 = v93;
    v94 = *(v0 + 3834);
    v170 = v94;
    v171 = *(v0 + 3833);
    *(v0 + 3224) = v169;
    *(v0 + 3232) = v76;
    *(v0 + 3288) = *(v0 + 3704);
    *(v0 + 3296) = v92;
    *(v0 + 3352) = v81;
    *(v0 + 3368) = v83;
    *(v0 + 3336) = v89;
    *(v0 + 3416) = v93;
    *(v0 + 3417) = v171;
    *(v0 + 3418) = v94;
    *(v0 + 3419) = *v184;
    *(v0 + 3423) = *(v184 + 4);
    *(v0 + 3424) = v72;
    v95 = MEMORY[0x1E69E7CC0];
    *(v0 + 3432) = MEMORY[0x1E69E7CC0];
    *(v0 + 3648) = v95;
    v96 = *(v0 + 3384);
    *(v0 + 3616) = *(v0 + 3400);
    *(v0 + 3600) = v96;
    v97 = *(v0 + 3352);
    *(v0 + 3584) = *(v0 + 3368);
    *(v0 + 3568) = v97;
    v98 = *(v0 + 3320);
    *(v0 + 3552) = *(v0 + 3336);
    *(v0 + 3536) = v98;
    v99 = *(v0 + 3288);
    *(v0 + 3520) = *(v0 + 3304);
    *(v0 + 3504) = v99;
    v100 = *(v0 + 3256);
    *(v0 + 3488) = *(v0 + 3272);
    *(v0 + 3472) = v100;
    v101 = *(v0 + 3224);
    *(v0 + 3456) = *(v0 + 3240);
    *(v0 + 3440) = v101;
    *(v0 + 3632) = *(v0 + 3416);
    nullsub_1();
    v102 = *(v0 + 3616);
    v199[10] = *(v0 + 3600);
    v199[11] = v102;
    v199[12] = *(v0 + 3632);
    v200 = *(v0 + 3648);
    v103 = *(v0 + 3552);
    v199[6] = *(v0 + 3536);
    v199[7] = v103;
    v104 = *(v0 + 3584);
    v199[8] = *(v0 + 3568);
    v199[9] = v104;
    v105 = *(v0 + 3488);
    v199[2] = *(v0 + 3472);
    v199[3] = v105;
    v106 = *(v0 + 3520);
    v199[4] = *(v0 + 3504);
    v199[5] = v106;
    v107 = *(v0 + 3456);
    v199[0] = *(v0 + 3440);
    v199[1] = v107;
    sub_1D5F2B0D8(v0 + 3224, v0 + 2792);
    sub_1D6AA103C(v199);
    *(v0 + 2736) = *(v0 + 3600);
    *(v0 + 2752) = *(v0 + 3616);
    *(v0 + 2768) = *(v0 + 3632);
    *(v0 + 2784) = *(v0 + 3648);
    *(v0 + 2672) = *(v0 + 3536);
    *(v0 + 2688) = *(v0 + 3552);
    *(v0 + 2704) = *(v0 + 3568);
    *(v0 + 2720) = *(v0 + 3584);
    *(v0 + 2608) = *(v0 + 3472);
    *(v0 + 2624) = *(v0 + 3488);
    *(v0 + 2640) = *(v0 + 3504);
    *(v0 + 2656) = *(v0 + 3520);
    *(v0 + 2576) = *(v0 + 3440);
    *(v0 + 2592) = *(v0 + 3456);

    sub_1D725B32C();

    sub_1D6AA1610();
    *(v0 + 1928) = v169;
    *(v0 + 1936) = v76;
    v108 = v182[1];
    *(v0 + 1944) = *v182;
    *(v0 + 1960) = v108;
    *(v0 + 1976) = v182[2];
    *(v0 + 1992) = *(v182 + 6);
    *(v0 + 2000) = v92;
    v109 = v183[5];
    *(v0 + 2072) = v183[4];
    *(v0 + 2088) = v109;
    *(v0 + 2104) = v183[6];
    v110 = v183[1];
    *(v0 + 2008) = *v183;
    *(v0 + 2024) = v110;
    v111 = v183[3];
    *(v0 + 2040) = v183[2];
    *(v0 + 2056) = v111;
    *(v0 + 2120) = v186;
    *(v0 + 2121) = v171;
    *(v0 + 2122) = v170;
    *(v0 + 2127) = *(v184 + 4);
    *(v0 + 2123) = *v184;
    *(v0 + 2128) = v72;
    *(v0 + 2136) = MEMORY[0x1E69E7CC0];
    sub_1D5F2B134(v0 + 1928);
    strcpy((v0 + 3848), "builtin:editor");
    *(v0 + 3863) = -18;
    v112 = v188[1];
    *(v0 + 3864) = *v188;
    *(v0 + 3880) = v112;
    *(v0 + 3896) = 0;
    *(v0 + 3897) = *v189;
    *(v0 + 3900) = *(v189 + 3);
    *(v0 + 3904) = v174;
    v113 = v187[1];
    *(v0 + 3912) = *v187;
    *(v0 + 3928) = v113;
    v114 = v187[2];
    v115 = v187[3];
    v116 = v187[6];
    *(v0 + 3992) = v187[5];
    *(v0 + 4008) = v116;
    v117 = v187[4];
    *(v0 + 3960) = v115;
    *(v0 + 3976) = v117;
    *(v0 + 3944) = v114;
    *(v0 + 4024) = v178;
    *(v0 + 4025) = v176;
    *(v0 + 4026) = v181;
    sub_1D5ECF21C(v0 + 3848);

    v118 = *(v0 + 8);

    v118();
    return;
  }

  v37 = 0;
  v38 = v0 + 1184;
  v39 = v0 + 1432;
  v40 = (v0 + 1680);
  *(v0 + 6248) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__weather;
  *(v0 + 3844) = *(*(v0 + 6152) + 80);
  v41 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 6264) = v41;
    *(v0 + 6256) = v37;
    v42 = *(v0 + 6232);
    if (v37 >= *(v42 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v43 = *(v0 + 6224);
    sub_1D60CBBE8(v42 + ((*(v0 + 3844) + 32) & ~*(v0 + 3844)) + *(*(v0 + 6152) + 72) * v37, *(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
    if (*(v43 + 16))
    {
      v44 = sub_1D5B69D90(**(v0 + 6160), *(*(v0 + 6160) + 8));
      if (v45)
      {
        break;
      }
    }

    sub_1D60CBC50(*(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
    v37 = *(v0 + 6256) + 1;
    if (v37 == *(v0 + 6240))
    {
      goto LABEL_29;
    }
  }

  v191 = v0 + 688;
  v180 = v0 + 936;
  v197 = v0 + 4400;
  v46 = *(v0 + 6224);
  v195 = *(v0 + 6216);
  v194 = *(v0 + 4030);
  v47 = *(v198 + 6200);
  v193 = *(v198 + 4029);
  v48 = *(v198 + 4028);
  v49 = *(v198 + 6160);
  v50 = *(v198 + 6136);
  v51 = *(v198 + 6128);
  v52 = *(v46 + 56);
  v53 = *(*(v198 + 6112) + 72);
  *(v198 + 6272) = v53;
  sub_1D60CBBE8(v52 + v53 * v44, v51, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D60CBDE4(v51, v50, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D60CF454(v49, v50);
  strcpy((v198 + 4400), "builtin:editor");
  *(v198 + 4415) = -18;
  v54 = v188[1];
  *(v198 + 4416) = *v188;
  *(v198 + 4432) = v54;
  v185[352] = 0;
  *(v198 + 4449) = *v189;
  *(v198 + 4452) = *(v189 + 3);
  *(v198 + 4456) = v47;
  v55 = v187[1];
  *(v198 + 4464) = *v187;
  *(v198 + 4480) = v55;
  v56 = v187[3];
  *(v198 + 4496) = v187[2];
  v57 = v187[4];
  v58 = v187[5];
  *(v198 + 4560) = v187[6];
  *(v198 + 4544) = v58;
  *(v198 + 4528) = v57;
  *(v198 + 4512) = v56;
  v185[480] = v193;
  v185[481] = v48;
  v185[482] = v194;
  if (!*(v195 + 16))
  {
    v39 = v191;
    sub_1D5F588A0(v191);
    v61 = v197;
    sub_1D5ECF1C0(v197, v198 + 5320);
    goto LABEL_35;
  }

  v59 = *(*(v198 + 6112) + 80);
  v60 = *(*(*(v198 + 6216) + ((v59 + 32) & ~v59) + *(*(v198 + 6104) + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
  v61 = v197;
  if (!*(v60 + 16))
  {
    sub_1D5ECF1C0(v197, v198 + 5136);

    goto LABEL_32;
  }

  sub_1D5ECF1C0(v197, v198 + 4584);

  v62 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61);
  if ((v63 & 1) == 0)
  {
LABEL_32:
    sub_1D5F588A0(v38);
    v119 = *(v38 + 208);
    *(v39 + 192) = *(v38 + 192);
    *(v39 + 208) = v119;
    *(v39 + 224) = *(v38 + 224);
    *(v39 + 240) = *(v38 + 240);
    v120 = *(v38 + 144);
    *(v39 + 128) = *(v38 + 128);
    *(v39 + 144) = v120;
    v121 = *(v38 + 176);
    *(v39 + 160) = *(v38 + 160);
    *(v39 + 176) = v121;
    v122 = *(v38 + 80);
    *(v39 + 64) = *(v38 + 64);
    *(v39 + 80) = v122;
    v123 = *(v38 + 112);
    *(v39 + 96) = *(v38 + 96);
    *(v39 + 112) = v123;
    v124 = *(v38 + 16);
    *v39 = *v38;
    *(v39 + 16) = v124;
    v125 = *(v38 + 32);
    v126 = *(v38 + 48);
    goto LABEL_33;
  }

  sub_1D5B68374(*(v60 + 56) + 40 * v62, v198 + 5968);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  if (swift_dynamicCast())
  {
    nullsub_1();
    goto LABEL_34;
  }

  sub_1D5F588A0(v180);
  v163 = *(v180 + 208);
  *(v39 + 192) = *(v180 + 192);
  *(v39 + 208) = v163;
  *(v39 + 224) = *(v180 + 224);
  *(v39 + 240) = *(v180 + 240);
  v164 = *(v180 + 144);
  *(v39 + 128) = *(v180 + 128);
  *(v39 + 144) = v164;
  v165 = *(v180 + 176);
  *(v39 + 160) = *(v180 + 160);
  *(v39 + 176) = v165;
  v166 = *(v180 + 80);
  *(v39 + 64) = *(v180 + 64);
  *(v39 + 80) = v166;
  v167 = *(v180 + 112);
  *(v39 + 96) = *(v180 + 96);
  *(v39 + 112) = v167;
  v168 = *(v180 + 16);
  *v39 = *v180;
  *(v39 + 16) = v168;
  v125 = *(v180 + 32);
  v126 = *(v180 + 48);
LABEL_33:
  *(v39 + 32) = v125;
  *(v39 + 48) = v126;
LABEL_34:

LABEL_35:
  v127 = *(v39 + 208);
  v40[12] = *(v39 + 192);
  v40[13] = v127;
  v40[14] = *(v39 + 224);
  *(v40 + 30) = *(v39 + 240);
  v128 = *(v39 + 144);
  v40[8] = *(v39 + 128);
  v40[9] = v128;
  v129 = *(v39 + 176);
  v40[10] = *(v39 + 160);
  v40[11] = v129;
  v130 = *(v39 + 80);
  v40[4] = *(v39 + 64);
  v40[5] = v130;
  v131 = *(v39 + 112);
  v40[6] = *(v39 + 96);
  v40[7] = v131;
  v132 = *(v39 + 16);
  *v40 = *v39;
  v40[1] = v132;
  v133 = *(v39 + 48);
  v40[2] = *(v39 + 32);
  v40[3] = v133;
  type metadata accessor for FormatJSONEncoder(0);
  swift_allocObject();
  sub_1D6BCED58(&unk_1F50FBDD0);
  sub_1D5B737E8(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
  *(v198 + 6280) = sub_1D72578BC();
  *(v198 + 6288) = v134;

  type metadata accessor for FormatJSONDecoder(0);
  swift_allocObject();
  sub_1D5B7BACC(&unk_1F50FBDF8);
  sub_1D5B737E8(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
  sub_1D725A69C();
  v135 = *(v198 + 6096);
  v136 = *(v198 + 6080);
  v137 = *(v198 + 6072);

  sub_1D60CBBE8(v135, v136 + v137[5], type metadata accessor for FormatContentSubgroup);

  sub_1D725972C();

  v138 = *(v198 + 3843);
  v139 = *v61;
  v140 = *(v61 + 16);
  v141 = *(v61 + 48);
  *(v136 + 32) = *(v61 + 32);
  *(v136 + 48) = v141;
  *v136 = v139;
  *(v136 + 16) = v140;
  v142 = *(v61 + 64);
  v143 = *(v61 + 80);
  v144 = *(v61 + 112);
  *(v136 + 96) = *(v61 + 96);
  *(v136 + 112) = v144;
  *(v136 + 64) = v142;
  *(v136 + 80) = v143;
  v145 = *(v61 + 128);
  v146 = *(v61 + 144);
  v147 = *(v61 + 160);
  *(v136 + 175) = *(v61 + 175);
  *(v136 + 144) = v146;
  *(v136 + 160) = v147;
  *(v136 + 128) = v145;
  *(v136 + v137[6]) = v138;
  v148 = v136 + v137[7];
  v149 = *v40;
  v150 = v40[1];
  v151 = v40[3];
  *(v148 + 32) = v40[2];
  *(v148 + 48) = v151;
  *v148 = v149;
  *(v148 + 16) = v150;
  v152 = v40[4];
  v153 = v40[5];
  v154 = v40[7];
  *(v148 + 96) = v40[6];
  *(v148 + 112) = v154;
  *(v148 + 64) = v152;
  *(v148 + 80) = v153;
  v155 = v40[8];
  v156 = v40[9];
  v157 = v40[11];
  *(v148 + 160) = v40[10];
  *(v148 + 176) = v157;
  *(v148 + 128) = v155;
  *(v148 + 144) = v156;
  v158 = v40[12];
  v159 = v40[13];
  v160 = v40[14];
  *(v148 + 240) = *(v40 + 30);
  *(v148 + 208) = v159;
  *(v148 + 224) = v160;
  *(v148 + 192) = v158;
  v161 = swift_task_alloc();
  *(v198 + 6296) = v161;
  *v161 = v198;
  v161[1] = sub_1D60BBD24;
  v162 = *(v198 + 6080);

  sub_1D7107ACC(v162);
}

uint64_t sub_1D60BBD24(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 6304) = v1;

  if (v1)
  {

    v5 = sub_1D60BCE84;
  }

  else
  {
    *(v4 + 6312) = a1;
    v5 = sub_1D60BBE54;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D60BBE54()
{
  v179 = v0;
  v1 = *(v0 + 6312);
  v2 = 5688;
  v3 = 5800;
  v4 = *(v0 + 6136);
  v5 = *(v0 + 6120);
  v6 = *(v0 + 6104);
  v7 = *(v0 + 6096);
  v8 = *(v0 + 6080);
  sub_1D5B952F8(*(v0 + 6280), *(v0 + 6288));
  sub_1D60CBC50(v8, type metadata accessor for DebugFormatBindingRequest);
  sub_1D60CBC50(v7, type metadata accessor for FormatContentSubgroup);
  v9 = *(v6 + 20);

  *(v4 + v9) = v1;
  sub_1D60CBBE8(v4, v5, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 6264);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_30:
    v11 = sub_1D699164C(0, v11[2] + 1, 1, v11);
  }

  v12 = (v0 + v2);
  v13 = (v0 + v3);
  v176 = (v0 + 6008);
  v15 = v11[2];
  v14 = v11[3];
  v172 = (v0 + 5912);
  v173 = (v0 + 6320);
  if (v15 >= v14 >> 1)
  {
    v11 = sub_1D699164C((v14 > 1), v15 + 1, 1, v11);
  }

  v175 = (v0 + 3835);
  v16 = *(v0 + 6272);
  v17 = *(v0 + 6136);
  v18 = *(v0 + 6120);
  v19 = *(v0 + 6112);
  sub_1D60CBC50(*(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
  v11[2] = v15 + 1;
  sub_1D60CBDE4(v18, v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + v16 * v15, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D60CBC50(v17, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  v20 = *(v0 + 6256) + 1;
  if (v20 == *(v0 + 6240))
  {
LABEL_5:

    v21 = *(v0 + 6024);
    *(v0 + 3672) = *v176;
    *(v0 + 3688) = v21;
    v22 = v13[5];
    *(v0 + 3784) = v13[4];
    *(v0 + 3800) = v22;
    *(v0 + 3816) = v13[6];
    v23 = v13[1];
    *(v0 + 3720) = *v13;
    *(v0 + 3736) = v23;
    v24 = v13[3];
    *(v0 + 3752) = v13[2];
    *(v0 + 3768) = v24;
    v25 = *(v0 + 5928);
    *(v0 + 4064) = *(v0 + 5944);
    v26 = *v172;
    *(v0 + 4048) = v25;
    *(v0 + 4032) = v26;
    v27 = v12[2];
    *(v0 + 4144) = v12[3];
    v28 = v12[5];
    *(v0 + 4160) = v12[4];
    v29 = *(v0 + 6208);
    v158 = *(v0 + 6200);
    v30 = *(v0 + 4029);
    v162 = v30;
    v165 = *(v0 + 4030);
    v31 = *(v0 + 4028);
    v159 = v31;
    v32 = *(v0 + 6184);
    v33 = *(v0 + 6176);
    v154 = *(v0 + 6168);
    strcpy((v0 + 3656), "builtin:editor");
    *(v0 + 3705) = *v175;
    *(v0 + 3671) = -18;
    *(v0 + 3704) = 0;
    *(v0 + 3708) = *(v0 + 3838);
    *(v0 + 3712) = v158;
    *(v0 + 3832) = v30;
    *(v0 + 3833) = v31;
    *(v0 + 3834) = v165;
    *(v0 + 4080) = *(v0 + 5960);
    *(v0 + 4088) = v32;
    *(v0 + 4176) = v28;
    *(v0 + 4192) = v12[6];
    *(v0 + 4128) = v27;
    v34 = *v12;
    *(v0 + 4112) = v12[1];
    *(v0 + 4096) = v34;
    *(v0 + 4208) = *(v0 + 6336);
    *(v0 + 4209) = *(v0 + 6328);
    *(v0 + 4210) = *(v0 + 3842);
    sub_1D5ECF1C0(v0 + 3656, v0 + 4216);
    sub_1D5ECF21C(v0 + 4032);
    v35 = *(v0 + 3672);
    *v172 = *(v0 + 3656);
    *(v0 + 5928) = v35;
    v37 = *(v0 + 3656);
    v36 = *(v0 + 3672);
    *(v0 + 5944) = *(v0 + 3688);
    v38 = *(v0 + 3768);
    v40 = *(v0 + 3784);
    v39 = *(v0 + 3800);
    v12[4] = v40;
    v12[5] = v39;
    v41 = *(v0 + 3800);
    v12[6] = *(v0 + 3816);
    v42 = *(v0 + 3736);
    *v12 = *(v0 + 3720);
    v12[1] = v42;
    v43 = *(v0 + 3768);
    v45 = *(v0 + 3720);
    v44 = *(v0 + 3736);
    v46 = *(v0 + 3752);
    v12[2] = v46;
    v12[3] = v43;
    v47 = *(v0 + 3688);
    *(v0 + 3256) = v36;
    *(v0 + 3272) = v47;
    *(v0 + 3240) = v37;
    *(v0 + 3304) = v45;
    *(v0 + 3320) = v44;
    v48 = *(v0 + 3816);
    *(v0 + 3384) = v41;
    *(v0 + 3400) = v48;
    *(v0 + 5960) = *(v0 + 3704);
    v155 = *(v0 + 3712);
    v49 = *(v0 + 3832);
    v174 = v49;
    v50 = *(v0 + 3834);
    v156 = v50;
    v157 = *(v0 + 3833);
    *(v0 + 3224) = v154;
    *(v0 + 3232) = v33;
    *(v0 + 3288) = *(v0 + 3704);
    *(v0 + 3296) = v155;
    *(v0 + 3352) = v38;
    *(v0 + 3368) = v40;
    *(v0 + 3336) = v46;
    *(v0 + 3416) = v49;
    *(v0 + 3417) = v157;
    *(v0 + 3418) = v50;
    *(v0 + 3419) = *v173;
    *(v0 + 3423) = *(v0 + 6324);
    *(v0 + 3424) = v29;
    *(v0 + 3432) = v11;
    *(v0 + 3648) = v11;
    v51 = *(v0 + 3384);
    *(v0 + 3616) = *(v0 + 3400);
    *(v0 + 3600) = v51;
    v52 = *(v0 + 3352);
    *(v0 + 3584) = *(v0 + 3368);
    *(v0 + 3568) = v52;
    v53 = *(v0 + 3320);
    *(v0 + 3552) = *(v0 + 3336);
    *(v0 + 3536) = v53;
    v54 = *(v0 + 3288);
    *(v0 + 3520) = *(v0 + 3304);
    *(v0 + 3504) = v54;
    v55 = *(v0 + 3256);
    *(v0 + 3488) = *(v0 + 3272);
    *(v0 + 3472) = v55;
    v56 = *(v0 + 3224);
    *(v0 + 3456) = *(v0 + 3240);
    *(v0 + 3440) = v56;
    *(v0 + 3632) = *(v0 + 3416);
    nullsub_1();
    v57 = *(v0 + 3616);
    v177[10] = *(v0 + 3600);
    v177[11] = v57;
    v177[12] = *(v0 + 3632);
    v178 = *(v0 + 3648);
    v58 = *(v0 + 3552);
    v177[6] = *(v0 + 3536);
    v177[7] = v58;
    v59 = *(v0 + 3584);
    v177[8] = *(v0 + 3568);
    v177[9] = v59;
    v60 = *(v0 + 3488);
    v177[2] = *(v0 + 3472);
    v177[3] = v60;
    v61 = *(v0 + 3520);
    v177[4] = *(v0 + 3504);
    v177[5] = v61;
    v62 = *(v0 + 3456);
    v177[0] = *(v0 + 3440);
    v177[1] = v62;
    sub_1D5F2B0D8(v0 + 3224, v0 + 2792);
    sub_1D6AA103C(v177);
    *(v0 + 2736) = *(v0 + 3600);
    *(v0 + 2752) = *(v0 + 3616);
    *(v0 + 2768) = *(v0 + 3632);
    *(v0 + 2784) = *(v0 + 3648);
    *(v0 + 2672) = *(v0 + 3536);
    *(v0 + 2688) = *(v0 + 3552);
    *(v0 + 2704) = *(v0 + 3568);
    *(v0 + 2720) = *(v0 + 3584);
    *(v0 + 2608) = *(v0 + 3472);
    *(v0 + 2624) = *(v0 + 3488);
    *(v0 + 2640) = *(v0 + 3504);
    *(v0 + 2656) = *(v0 + 3520);
    *(v0 + 2576) = *(v0 + 3440);
    *(v0 + 2592) = *(v0 + 3456);

    sub_1D725B32C();

    sub_1D6AA1610();
    *(v0 + 1928) = v154;
    *(v0 + 1936) = v33;
    v63 = *(v0 + 5928);
    *(v0 + 1944) = *v172;
    *(v0 + 1960) = v63;
    *(v0 + 1976) = *(v0 + 5944);
    *(v0 + 1992) = *(v0 + 5960);
    *(v0 + 2000) = v155;
    v64 = v12[5];
    *(v0 + 2072) = v12[4];
    *(v0 + 2088) = v64;
    *(v0 + 2104) = v12[6];
    v65 = v12[1];
    *(v0 + 2008) = *v12;
    *(v0 + 2024) = v65;
    v66 = v12[3];
    *(v0 + 2040) = v12[2];
    *(v0 + 2056) = v66;
    *(v0 + 2120) = v174;
    *(v0 + 2121) = v157;
    *(v0 + 2122) = v156;
    *(v0 + 2127) = *(v0 + 6324);
    *(v0 + 2123) = *v173;
    *(v0 + 2128) = v29;
    *(v0 + 2136) = v11;
    sub_1D5F2B134(v0 + 1928);
    strcpy((v0 + 3848), "builtin:editor");
    *(v0 + 3863) = -18;
    v67 = *(v0 + 6024);
    *(v0 + 3864) = *v176;
    *(v0 + 3880) = v67;
    *(v0 + 3896) = 0;
    *(v0 + 3897) = *v175;
    *(v0 + 3900) = *(v0 + 3838);
    *(v0 + 3904) = v158;
    v68 = v13[1];
    *(v0 + 3912) = *v13;
    *(v0 + 3928) = v68;
    v69 = v13[2];
    v70 = v13[3];
    v71 = v13[6];
    *(v0 + 3992) = v13[5];
    *(v0 + 4008) = v71;
    v72 = v13[4];
    *(v0 + 3960) = v70;
    *(v0 + 3976) = v72;
    *(v0 + 3944) = v69;
    *(v0 + 4024) = v162;
    *(v0 + 4025) = v159;
    *(v0 + 4026) = v165;
    sub_1D5ECF21C(v0 + 3848);

    v73 = *(v0 + 8);
LABEL_6:

    return v73();
  }

  v75 = v0 + 1184;
  v2 = v0 + 1432;
  v76 = *(v0 + 6304);
  v3 = v0 + 1680;
  while (1)
  {
    *(v0 + 6264) = v11;
    *(v0 + 6256) = v20;
    v77 = *(v0 + 6232);
    if (v20 >= *(v77 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v78 = *(v0 + 6224);
    sub_1D60CBBE8(v77 + ((*(v0 + 3844) + 32) & ~*(v0 + 3844)) + *(*(v0 + 6152) + 72) * v20, *(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
    if (*(v78 + 16))
    {
      v79 = sub_1D5B69D90(**(v0 + 6160), *(*(v0 + 6160) + 8));
      if (v80)
      {
        break;
      }
    }

    sub_1D60CBC50(*(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
    v20 = *(v0 + 6256) + 1;
    if (v20 == *(v0 + 6240))
    {
      goto LABEL_5;
    }
  }

  v171 = (v0 + 4400);
  v170 = *(v0 + 6216);
  v160 = *(v0 + 6200);
  v166 = *(v0 + 4029);
  v168 = *(v0 + 4030);
  v163 = *(v0 + 4028);
  v81 = *(v0 + 6160);
  v82 = *(v0 + 6136);
  v83 = *(v0 + 6128);
  v84 = *(*(v0 + 6224) + 56);
  v85 = *(*(v0 + 6112) + 72);
  *(v0 + 6272) = v85;
  sub_1D60CBBE8(v84 + v85 * v79, v83, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D60CBDE4(v83, v82, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D60CF454(v81, v82);
  strcpy((v0 + 4400), "builtin:editor");
  *(v0 + 4415) = -18;
  v86 = *(v0 + 6024);
  *(v0 + 4416) = *v176;
  *(v0 + 4432) = v86;
  *(v0 + 4448) = 0;
  *(v0 + 4449) = *v175;
  *(v0 + 4452) = *(v0 + 3838);
  *(v0 + 4456) = v160;
  v87 = v13[1];
  *(v0 + 4464) = *v13;
  *(v0 + 4480) = v87;
  v88 = v13[3];
  *(v0 + 4496) = v13[2];
  v89 = v13[4];
  v90 = v13[5];
  *(v0 + 4560) = v13[6];
  *(v0 + 4544) = v90;
  *(v0 + 4528) = v89;
  *(v0 + 4512) = v88;
  *(v0 + 4576) = v166;
  *(v0 + 4577) = v163;
  *(v0 + 4578) = v168;
  if (*(v170 + 16))
  {
    v91 = *(*(v0 + 6112) + 80);
    v92 = *(*(*(v0 + 6216) + ((v91 + 32) & ~v91) + *(*(v0 + 6104) + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
    v93 = v0 + 1680;
    if (*(v92 + 16))
    {
      sub_1D5ECF1C0(v171, v0 + 4584);

      v94 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61);
      if (v95)
      {
        sub_1D5B68374(*(v92 + 56) + 40 * v94, v0 + 5968);
        sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
        if (swift_dynamicCast())
        {
          nullsub_1();
LABEL_23:

          goto LABEL_24;
        }

        v75 = v0 + 936;
      }
    }

    else
    {
      sub_1D5ECF1C0(v171, v0 + 5136);
    }

    sub_1D5F588A0(v75);
    v96 = *(v75 + 208);
    *(v0 + 1624) = *(v75 + 192);
    *(v0 + 1640) = v96;
    *(v0 + 1656) = *(v75 + 224);
    *(v0 + 1672) = *(v75 + 240);
    v97 = *(v75 + 144);
    *(v0 + 1560) = *(v75 + 128);
    *(v0 + 1576) = v97;
    v98 = *(v75 + 176);
    *(v0 + 1592) = *(v75 + 160);
    *(v0 + 1608) = v98;
    v99 = *(v75 + 80);
    *(v0 + 1496) = *(v75 + 64);
    *(v0 + 1512) = v99;
    v100 = *(v75 + 112);
    *(v0 + 1528) = *(v75 + 96);
    *(v0 + 1544) = v100;
    v101 = *(v75 + 16);
    *v2 = *v75;
    *(v0 + 1448) = v101;
    v102 = *(v75 + 48);
    *(v0 + 1464) = *(v75 + 32);
    *(v0 + 1480) = v102;
    goto LABEL_23;
  }

  v2 = v0 + 688;
  sub_1D5F588A0(v0 + 688);
  sub_1D5ECF1C0(v171, v0 + 5320);
  v93 = v0 + 1680;
LABEL_24:
  v103 = *(v2 + 208);
  *(v93 + 192) = *(v2 + 192);
  *(v93 + 208) = v103;
  *(v93 + 224) = *(v2 + 224);
  *(v93 + 240) = *(v2 + 240);
  v104 = *(v2 + 144);
  *(v93 + 128) = *(v2 + 128);
  *(v93 + 144) = v104;
  v105 = *(v2 + 176);
  *(v93 + 160) = *(v2 + 160);
  *(v93 + 176) = v105;
  v106 = *(v2 + 80);
  *(v93 + 64) = *(v2 + 64);
  *(v93 + 80) = v106;
  v107 = *(v2 + 112);
  *(v93 + 96) = *(v2 + 96);
  *(v93 + 112) = v107;
  v108 = *(v2 + 16);
  *v93 = *v2;
  *(v93 + 16) = v108;
  v109 = *(v2 + 48);
  *(v93 + 32) = *(v2 + 32);
  *(v93 + 48) = v109;
  type metadata accessor for FormatJSONEncoder(0);
  swift_allocObject();
  sub_1D6BCED58(&unk_1F50FBDD0);
  sub_1D5B737E8(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
  *(v0 + 6280) = sub_1D72578BC();
  *(v0 + 6288) = v110;
  if (v76)
  {

    sub_1D60CB8FC(v93, qword_1EDF34BC0, &type metadata for FeedPaywall);
    sub_1D5ECF21C(v171);

    v111 = *(v0 + 6208);
    v161 = *(v0 + 6200);
    v167 = *(v0 + 4029);
    v169 = *(v0 + 4030);
    v164 = *(v0 + 4028);
    v112 = *(v0 + 6192);
    v113 = *(v0 + 6184);
    v114 = *(v0 + 6176);
    v115 = *(v0 + 6168);
    v116 = *(v0 + 6136);
    sub_1D60CBC50(*(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
    sub_1D60CBC50(v116, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    *(v0 + 2360) = v115;
    *(v0 + 2368) = v114;
    v117 = *(v0 + 5928);
    *(v0 + 2376) = *v172;
    *(v0 + 2392) = v117;
    *(v0 + 2408) = *(v0 + 5944);
    *(v0 + 2424) = *(v0 + 5960);
    *(v0 + 2432) = v113;
    v118 = v12[5];
    *(v0 + 2504) = v12[4];
    *(v0 + 2520) = v118;
    *(v0 + 2536) = v12[6];
    v119 = v12[1];
    *(v0 + 2440) = *v12;
    *(v0 + 2456) = v119;
    v120 = v12[3];
    *(v0 + 2472) = v12[2];
    *(v0 + 2488) = v120;
    *(v0 + 2552) = *(v0 + 6336);
    *(v0 + 2553) = *(v0 + 6328);
    *(v0 + 2554) = *(v0 + 3842);
    *(v0 + 2555) = *v173;
    *(v0 + 2559) = *(v0 + 6324);
    *(v0 + 2560) = v111;
    *(v0 + 2568) = v112;
    sub_1D5F2B134(v0 + 2360);
    strcpy((v0 + 4768), "builtin:editor");
    *(v0 + 4783) = -18;
    v121 = *(v0 + 6024);
    *(v0 + 4784) = *v176;
    *(v0 + 4800) = v121;
    *(v0 + 4816) = 0;
    *(v0 + 4817) = *v175;
    *(v0 + 4820) = *(v0 + 3838);
    *(v0 + 4824) = v161;
    v122 = v13[1];
    *(v0 + 4832) = *v13;
    *(v0 + 4848) = v122;
    v123 = v13[3];
    *(v0 + 4864) = v13[2];
    v124 = v13[4];
    v125 = v13[5];
    *(v0 + 4928) = v13[6];
    *(v0 + 4912) = v125;
    *(v0 + 4896) = v124;
    *(v0 + 4880) = v123;
    *(v0 + 4944) = v167;
    *(v0 + 4945) = v164;
    *(v0 + 4946) = v169;
    sub_1D5ECF21C(v0 + 4768);

    v73 = *(v0 + 8);
    goto LABEL_6;
  }

  type metadata accessor for FormatJSONDecoder(0);
  swift_allocObject();
  sub_1D5B7BACC(&unk_1F50FBDF8);
  sub_1D5B737E8(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
  sub_1D725A69C();
  v126 = *(v0 + 6096);
  v127 = *(v0 + 6080);
  v128 = *(v0 + 6072);

  sub_1D60CBBE8(v126, v127 + v128[5], type metadata accessor for FormatContentSubgroup);

  sub_1D725972C();

  v129 = *(v0 + 3843);
  v130 = *v171;
  v131 = *(v0 + 4416);
  v132 = *(v0 + 4448);
  *(v127 + 32) = *(v0 + 4432);
  *(v127 + 48) = v132;
  *v127 = v130;
  *(v127 + 16) = v131;
  v133 = *(v0 + 4464);
  v134 = *(v0 + 4480);
  v135 = *(v0 + 4512);
  *(v127 + 96) = *(v0 + 4496);
  *(v127 + 112) = v135;
  *(v127 + 64) = v133;
  *(v127 + 80) = v134;
  v136 = *(v0 + 4528);
  v137 = *(v0 + 4544);
  v138 = *(v0 + 4560);
  *(v127 + 175) = *(v0 + 4575);
  *(v127 + 144) = v137;
  *(v127 + 160) = v138;
  *(v127 + 128) = v136;
  *(v127 + v128[6]) = v129;
  v139 = v127 + v128[7];
  v140 = *(v0 + 1680);
  v141 = *(v0 + 1696);
  v142 = *(v0 + 1728);
  *(v139 + 32) = *(v0 + 1712);
  *(v139 + 48) = v142;
  *v139 = v140;
  *(v139 + 16) = v141;
  v143 = *(v0 + 1744);
  v144 = *(v0 + 1760);
  v145 = *(v0 + 1792);
  *(v139 + 96) = *(v0 + 1776);
  *(v139 + 112) = v145;
  *(v139 + 64) = v143;
  *(v139 + 80) = v144;
  v146 = *(v0 + 1808);
  v147 = *(v0 + 1824);
  v148 = *(v0 + 1856);
  *(v139 + 160) = *(v0 + 1840);
  *(v139 + 176) = v148;
  *(v139 + 128) = v146;
  *(v139 + 144) = v147;
  v149 = *(v0 + 1872);
  v150 = *(v0 + 1888);
  v151 = *(v0 + 1904);
  *(v139 + 240) = *(v0 + 1920);
  *(v139 + 208) = v150;
  *(v139 + 224) = v151;
  *(v139 + 192) = v149;
  v152 = swift_task_alloc();
  *(v0 + 6296) = v152;
  *v152 = v0;
  v152[1] = sub_1D60BBD24;
  v153 = *(v0 + 6080);

  return sub_1D7107ACC(v153);
}