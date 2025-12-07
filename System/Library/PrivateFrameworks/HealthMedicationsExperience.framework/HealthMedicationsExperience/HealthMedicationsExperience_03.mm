uint64_t sub_1D162510C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v7 = *v104;
    if (!*v104)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_100:
      v96 = v5;
      v97 = *(v8 + 2);
      if (v97 >= 2)
      {
        while (*a3)
        {
          v98 = v8;
          v8 = (v97 - 1);
          v99 = *&v98[16 * v97];
          v5 = *&v98[16 * v97 + 24];
          sub_1D1625F60((*a3 + 24 * v99), (*a3 + 24 * *&v98[16 * v97 + 16]), *a3 + 24 * v5, v7);
          if (v96)
          {
          }

          if (v5 < v99)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_1D1626448(v98);
          }

          if (v97 - 2 >= *(v98 + 2))
          {
            goto LABEL_125;
          }

          v100 = &v98[16 * v97];
          *v100 = v99;
          *(v100 + 1) = v5;
          result = sub_1D16263BC(v8);
          v8 = v98;
          v97 = *(v98 + 2);
          if (v97 <= 1)
          {
          }
        }

        goto LABEL_135;
      }
    }

LABEL_131:
    result = sub_1D1626448(v8);
    v8 = result;
    goto LABEL_100;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    v112 = v8;
    if ((v7 + 1) < v6)
    {
      v108 = v6;
      v102 = v5;
      v11 = *a3;
      v114 = v7 + 1;
      v7 = *(*a3 + 24 * v10 + 16);
      v105 = v9;
      v5 = *(*a3 + 24 * v9 + 8);

      v12 = MedicationRouteFormConcept.displayString.getter();
      v14 = v13;
      if (v12 == MedicationRouteFormConcept.displayString.getter() && v14 == v15)
      {
        v110 = 0;
      }

      else
      {
        v110 = sub_1D16705D4();
      }

      v16 = 0;
      v17 = (v9 + 2);
      v18 = (v11 + 24 * v9 + 64);
      v19 = v114;
      do
      {
        v10 = v17;
        v21 = v19;
        v22 = v16;
        if (v17 >= v108)
        {
          break;
        }

        v115 = v16;
        v118 = v19;
        v119 = v17;
        v7 = *v18;
        v5 = *(v18 - 5);

        v23 = MedicationRouteFormConcept.displayString.getter();
        v25 = v24;
        if (v23 == MedicationRouteFormConcept.displayString.getter() && v25 == v26)
        {
          v20 = 0;
        }

        else
        {
          v20 = sub_1D16705D4();
        }

        v21 = v118;
        v10 = v119;
        v17 = v119 + 1;
        v18 += 3;
        v19 = v118 + 1;
        v22 = v115;
        v16 = v115 + 24;
        v8 = v112;
      }

      while (((v110 ^ v20) & 1) == 0);
      if (v110)
      {
        v9 = v105;
        if (v10 < v105)
        {
          goto LABEL_128;
        }

        if (v105 < v10)
        {
          v27 = 0;
          v28 = v105;
          do
          {
            if (v28 != v21)
            {
              if (!*a3)
              {
                goto LABEL_134;
              }

              v30 = *a3 + 24 * v105;
              v31 = (v30 + v27);
              v32 = v30 + v22;
              v33 = *v31;
              v34 = *(v31 + 2);
              v35 = *(v32 + 40);
              *v31 = *(v32 + 24);
              *(v31 + 2) = v35;
              *(v32 + 24) = v33;
              *(v32 + 40) = v34;
            }

            ++v28;
            v22 -= 24;
            v27 += 24;
          }

          while (v28 < v21--);
        }

        v5 = v102;
      }

      else
      {
        v5 = v102;
        v9 = v105;
      }
    }

    v36 = a3[1];
    if (v10 < v36)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_127;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_47:
    if (v10 < v9)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D15ECC40(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v50 = *(v8 + 2);
    v49 = *(v8 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_1D15ECC40((v49 > 1), v50 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v51;
    v52 = &v8[16 * v50];
    *(v52 + 4) = v9;
    *(v52 + 5) = v10;
    v7 = v10;
    v53 = *v104;
    if (!*v104)
    {
      goto LABEL_136;
    }

    if (v50)
    {
      while (1)
      {
        v54 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v55 = *(v8 + 4);
          v56 = *(v8 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_67:
          if (v58)
          {
            goto LABEL_115;
          }

          v71 = &v8[16 * v51];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_118;
          }

          v77 = &v8[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_122;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v51 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v81 = &v8[16 * v51];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_81:
        if (v76)
        {
          goto LABEL_117;
        }

        v84 = &v8[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_120;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_88:
        v92 = v54 - 1;
        if (v54 - 1 >= v51)
        {
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
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v93 = *&v8[16 * v92 + 32];
        v94 = *&v8[16 * v54 + 40];
        sub_1D1625F60((*a3 + 24 * v93), (*a3 + 24 * *&v8[16 * v54 + 32]), *a3 + 24 * v94, v53);
        if (v5)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D1626448(v8);
        }

        if (v92 >= *(v8 + 2))
        {
          goto LABEL_112;
        }

        v95 = &v8[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        result = sub_1D16263BC(v54);
        v51 = *(v8 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v8[16 * v51 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_113;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_114;
      }

      v66 = &v8[16 * v51];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_116;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_119;
      }

      if (v70 >= v62)
      {
        v88 = &v8[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_123;
        }

        if (v57 < v91)
        {
          v54 = v51 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_98;
    }
  }

  v37 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_129;
  }

  if (v37 >= v36)
  {
    v37 = a3[1];
  }

  if (v37 < v9)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v10 == v37)
  {
    goto LABEL_47;
  }

  v103 = v5;
  v117 = *a3;
  v38 = (*a3 + 24 * v10);
  v106 = v9;
  v107 = v37;
  v39 = v9 - v10;
LABEL_38:
  v116 = v10;
  v109 = v39;
  v111 = v38;
  while (1)
  {
    v7 = *(v38 - 1);

    v40 = MedicationRouteFormConcept.displayString.getter();
    v42 = v41;
    if (v40 == MedicationRouteFormConcept.displayString.getter() && v42 == v43)
    {

LABEL_37:
      v10 = v116 + 1;
      v38 = v111 + 3;
      v39 = v109 - 1;
      if (v116 + 1 == v107)
      {
        v10 = v107;
        v5 = v103;
        v8 = v112;
        v9 = v106;
        goto LABEL_47;
      }

      goto LABEL_38;
    }

    v44 = sub_1D16705D4();

    if ((v44 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (!v117)
    {
      break;
    }

    v46 = *v38;
    v45 = v38[1];
    v47 = v38[2];
    *v38 = *(v38 - 3);
    v38[2] = *(v38 - 1);
    *(v38 - 2) = v45;
    *(v38 - 1) = v47;
    *(v38 - 3) = v46;
    v38 -= 3;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_1D16259D8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D16705D4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D16705D4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D1625C00(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v26 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v26;
    }

    v25 = a2;
    v44 = &v14[v11];
    if (v9 >= 8 && a2 > v5)
    {
      v43 = v14;
LABEL_27:
      __dst = v25;
      v27 = v25 - 1;
      v28 = v4 - 1;
      v29 = v44;
      v42 = v25 - 1;
      do
      {
        v30 = v28;
        v31 = v28 + 1;
        v32 = *--v29;
        v33 = *v27;
        v34 = v32;
        v35 = v33;
        v36 = [v34 identifier];
        v37 = [v36 rawIdentifier];

        v38 = [v35 identifier];
        v39 = [v38 rawIdentifier];

        if (v37 < v39)
        {
          v4 = v30;
          if (v31 != __dst)
          {
            *v30 = *v42;
          }

          v14 = v43;
          if (v44 <= v43 || (v25 = v42, v42 <= v5))
          {
            v25 = v42;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v31 != v44)
        {
          *v30 = *v29;
        }

        v28 = v30 - 1;
        v44 = v29;
        v27 = v42;
      }

      while (v29 > v43);
      v44 = v29;
      v14 = v43;
      v25 = __dst;
    }
  }

  else
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v44 = &a4[v8];
    v14 = a4;
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v14;
        v17 = *v15;
        v18 = v16;
        v19 = [v17 identifier];
        v20 = [v19 rawIdentifier];

        v21 = [v18 identifier];
        v22 = [v21 rawIdentifier];

        if (v20 >= v22)
        {
          break;
        }

        v23 = v15;
        v24 = v5 == v15++;
        if (!v24)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v14 >= v44 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v23 = v14;
      v24 = v5 == v14++;
      if (v24)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v23;
      goto LABEL_18;
    }

LABEL_20:
    v25 = v5;
  }

LABEL_38:
  if (v25 != v14 || v25 >= (v14 + ((v44 - v14 + (v44 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v25, v14, 8 * (v44 - v14));
  }

  return 1;
}

uint64_t sub_1D1625F60(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __dst - __src;
  v8 = (__dst - __src) / 24;
  v9 = a3 - __dst;
  v10 = (a3 - __dst) / 24;
  if (v8 >= v10)
  {
    if (a4 != __dst || &__dst[24 * v10] <= a4)
    {
      memmove(a4, __dst, 24 * v10);
    }

    v37 = &v4[24 * v10];
    if (v9 >= 24 && v6 > __src)
    {
      v32 = v4;
LABEL_25:
      v31 = (v6 - 24);
      v5 -= 24;
      v21 = v37;
      v36 = v6;
      do
      {
        v21 -= 24;

        v22 = MedicationRouteFormConcept.displayString.getter();
        v24 = v23;
        if (v22 == MedicationRouteFormConcept.displayString.getter() && v24 == v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = sub_1D16705D4();
        }

        if (v26)
        {
          v4 = v32;
          if ((v5 + 24) != v36)
          {
            v28 = *v31;
            *(v5 + 16) = *(v31 + 16);
            *v5 = v28;
          }

          if (v37 <= v32 || (v6 = v31, v31 <= __src))
          {
            v6 = v31;
            goto LABEL_40;
          }

          goto LABEL_25;
        }

        v6 = v36;
        v4 = v32;
        if ((v5 + 24) != v37)
        {
          v27 = *v21;
          *(v5 + 16) = *(v21 + 2);
          *v5 = v27;
        }

        v5 -= 24;
        v37 = v21;
      }

      while (v21 > v32);
      v37 = v21;
    }
  }

  else
  {
    v11 = __src;
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v37 = &v4[24 * v8];
    if (v7 >= 24 && v6 < v5)
    {
      v34 = v5;
      while (1)
      {
        v35 = v6;
        v12 = v4;

        v13 = MedicationRouteFormConcept.displayString.getter();
        v15 = v14;
        if (v13 == MedicationRouteFormConcept.displayString.getter() && v15 == v16)
        {
          break;
        }

        v17 = sub_1D16705D4();

        if ((v17 & 1) == 0)
        {
          goto LABEL_14;
        }

        v18 = v6;
        v6 += 24;
        v19 = v34;
        if (v11 != v35)
        {
          goto LABEL_15;
        }

LABEL_16:
        v11 += 24;
        if (v4 >= v37 || v6 >= v19)
        {
          goto LABEL_18;
        }
      }

LABEL_14:
      v18 = v4;
      v4 += 24;
      v19 = v34;
      if (v11 == v12)
      {
        goto LABEL_16;
      }

LABEL_15:
      v20 = *v18;
      *(v11 + 2) = *(v18 + 2);
      *v11 = v20;
      goto LABEL_16;
    }

LABEL_18:
    v6 = v11;
  }

LABEL_40:
  v29 = (v37 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v29])
  {
    memmove(v6, v4, 24 * v29);
  }

  return 1;
}

uint64_t sub_1D16263BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D1626448(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1D162645C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D16280C8(0, &qword_1EC63D790, sub_1D15EE4BC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1D1626584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D1627CE8(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a4;
  sub_1D1627D98();
  result = sub_1D166FBE4();
  if (!a2)
  {
    (*(v10 + 32))(a1, v12, v9);
    return 0;
  }

  if (!a3)
  {
LABEL_10:
    (*(v10 + 32))(a1, v12, v9);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_1D1627DEC();
    v14 = 0;
    while (1)
    {
      sub_1D1670104();
      if (v16)
      {
        break;
      }

      *(a2 + 8 * v14) = v15[1];
      if (a3 - 1 == v14)
      {
        goto LABEL_10;
      }

      if (__OFADD__(++v14, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    (*(v10 + 32))(a1, v12, v9);
    return v14;
  }

  __break(1u);
  return result;
}

void *sub_1D1626738(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D16268B8(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void sub_1D1626A14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1D1670224();
    MEMORY[0x1D388D890](v8);
    v3 = sub_1D1670224();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1D388D890](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1D388D4D0](i, a2);
      sub_1D16700B4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1D16700B4();

      --v3;
    }

    while (v3);
  }
}

void *sub_1D1626B04(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1D1670224();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1D1622EC0(v3, 0);
  sub_1D16270C4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D1626B98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1670224();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1670224();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1627F28(0, &qword_1EDECAE00, &unk_1EDECACE0, 0x1E696C280, MEMORY[0x1E69E62F8]);
          sub_1D1628064(&qword_1EC63DD98, &qword_1EDECAE00, &unk_1EDECACE0, 0x1E696C280);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D15FFD9C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D15EE5A8(0, &unk_1EDECACE0, 0x1E696C280);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1626D60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1670224();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1670224();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D16280C8(0, &qword_1EC63DD88, type metadata accessor for ScheduleItem, MEMORY[0x1E69E62F8]);
          sub_1D162812C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D1600838(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ScheduleItem(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1626EFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1670224();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1670224();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1627F28(0, &qword_1EC63DD78, &qword_1EC63DD70, 0x1E69A3B28, MEMORY[0x1E69E62F8]);
          sub_1D1628064(&qword_1EC63DD80, &qword_1EC63DD78, &qword_1EC63DD70, 0x1E69A3B28);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D16008C0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D15EE5A8(0, &qword_1EC63DD70, 0x1E69A3B28);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D16270C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1670224();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1670224();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D1627F28(0, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
          sub_1D1628064(&qword_1EC63DD58, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D16008C0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s27HealthMedicationsExperience21MedicationGroupingKeyV2eeoiySbAC_ACtFZ_0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 ingredientProducts];
  sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
  v5 = sub_1D166FC54();

  v6 = [v3 ingredientProducts];
  v7 = sub_1D166FC54();

  LOBYTE(v6) = sub_1D16205B0(v5, v7, &qword_1EC63DA98, 0x1E696C010);

  if (v6)
  {
    v8 = [v2 tradeNameProduct];
    v9 = [v3 tradeNameProduct];
    v10 = v9;
    if (v8)
    {
      if (v9)
      {
        v11 = sub_1D16700A4();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      if (!v9)
      {
        v11 = 1;
        return v11 & 1;
      }

      v11 = 0;
      v8 = v9;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void *sub_1D162744C(unint64_t a1)
{
  v1 = a1;
  v32 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_1D1670224();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v27 = v1 & 0xFFFFFFFFFFFFFF8;
      v28 = v1 & 0xC000000000000001;
      v4 = MEMORY[0x1E69E7CC8];
      v26 = v2;
      while (1)
      {
        if (v28)
        {
          v7 = MEMORY[0x1D388D4D0](v3, v1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *(v27 + 16))
          {
            goto LABEL_21;
          }

          v7 = *(v1 + 8 * v3 + 32);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v29 = v8;
        v9 = v1;
        v10 = v7;
        v11 = [v7 routedDoseFormProducts];
        sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
        v12 = sub_1D166FC54();

        MedicationRouteFormConcept.init(_:)(v12);
        v1 = sub_1D160643C(v30, *(&v30 + 1), v31);
        v14 = v4[2];
        v15 = (v13 & 1) == 0;
        v16 = v14 + v15;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_22;
        }

        v17 = v13;
        if (v4[3] < v16)
        {
          sub_1D160774C(v16, 1);
          v4 = v32;
          v18 = sub_1D160643C(v30, *(&v30 + 1), v31);
          if ((v17 & 1) != (v19 & 1))
          {
            result = sub_1D1670634();
            __break(1u);
            return result;
          }

          v1 = v18;
        }

        if (v17)
        {

          v6 = (v4[7] + 8 * v1);
          MEMORY[0x1D388CE10](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D166FC84();
          }

          sub_1D166FCC4();
        }

        else
        {
          sub_1D1628014(0, &qword_1EDECB330, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1D16721C0;
          *(v20 + 32) = v10;
          v4[(v1 >> 6) + 8] |= 1 << v1;
          v21 = v4[6] + 24 * v1;
          *v21 = v30;
          *(v21 + 16) = v31;
          *(v4[7] + 8 * v1) = v20;
          v22 = v4[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_23;
          }

          v4[2] = v24;
        }

        v1 = v9;
        ++v3;
        if (v29 == v26)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

void *sub_1D162775C(unint64_t a1)
{
  v24 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_30:
    v2 = sub_1D1670224();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D388D4D0](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if ([v6 meds_isClinicalProduct])
        {
          break;
        }

        if ([v7 meds_isSpecificProduct])
        {
          v9 = [v7 firstConceptOfRelationshipType_];
          if (v9)
          {
            goto LABEL_16;
          }
        }

        v10 = 0;
LABEL_18:
        v12 = sub_1D16064D0(v10);
        v13 = v4[2];
        v14 = (v11 & 1) == 0;
        v15 = v13 + v14;
        if (__OFADD__(v13, v14))
        {
          goto LABEL_28;
        }

        v16 = v11;
        if (v4[3] < v15)
        {
          sub_1D1607ACC(v15, 1);
          v4 = v24;
          v17 = sub_1D16064D0(v10);
          if ((v16 & 1) != (v18 & 1))
          {
            sub_1D1627F28(0, &qword_1EC63DB08, &qword_1EC63DB10, 0x1E696C020, MEMORY[0x1E69E6720]);
            result = sub_1D1670634();
            __break(1u);
            return result;
          }

          v12 = v17;
        }

        if (v16)
        {

          v5 = (v4[7] + 8 * v12);
          MEMORY[0x1D388CE10]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D166FC84();
          }

          sub_1D166FCC4();
        }

        else
        {
          sub_1D1628014(0, &qword_1EDECB330, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1D16721C0;
          *(v19 + 32) = v7;
          v4[(v12 >> 6) + 8] |= 1 << v12;
          *(v4[6] + 8 * v12) = v10;
          *(v4[7] + 8 * v12) = v19;
          v20 = v4[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_29;
          }

          v4[2] = v22;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }

      v9 = v7;
LABEL_16:
      v10 = [v9 identifier];

      goto LABEL_18;
    }
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1D1627A78()
{
  result = qword_1EC63DD10;
  if (!qword_1EC63DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD10);
  }

  return result;
}

unint64_t sub_1D1627AD0()
{
  result = qword_1EC63DD18;
  if (!qword_1EC63DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD18);
  }

  return result;
}

unint64_t sub_1D1627B28()
{
  result = qword_1EC63DD20;
  if (!qword_1EC63DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD20);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D1627BAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D1627BF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D1627C54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D1627C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D1627CE8(uint64_t a1)
{
  if (!qword_1EC63DD28)
  {
    sub_1D1627D44();
    v1 = sub_1D166F884();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DD28);
    }
  }
}

unint64_t sub_1D1627D44()
{
  result = qword_1EC63DD30;
  if (!qword_1EC63DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD30);
  }

  return result;
}

unint64_t sub_1D1627D98()
{
  result = qword_1EC63DD38;
  if (!qword_1EC63DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD38);
  }

  return result;
}

unint64_t sub_1D1627DEC()
{
  result = qword_1EC63DD40;
  if (!qword_1EC63DD40)
  {
    sub_1D1627CE8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD40);
  }

  return result;
}

void sub_1D1627E44(uint64_t a1)
{
  if (!qword_1EDEC9D48)
  {
    sub_1D1628014(255, &qword_1EDECAE20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = sub_1D16705A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEC9D48);
    }
  }
}

void sub_1D1627EC0(uint64_t a1)
{
  if (!qword_1EC63DD50)
  {
    type metadata accessor for HKMedicationFreeTextFormTypeCode(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63DD50);
    }
  }
}

void sub_1D1627F28(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D1627F90(uint64_t a1)
{
  if (!qword_1EC63DD68)
  {
    sub_1D1627F28(255, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
    v1 = sub_1D16705A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DD68);
    }
  }
}

void sub_1D1628014(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D1628064(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D1627F28(255, a2, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D16280C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D162812C()
{
  result = qword_1EC63DD90;
  if (!qword_1EC63DD90)
  {
    sub_1D16280C8(255, &qword_1EC63DD88, type metadata accessor for ScheduleItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DD90);
  }

  return result;
}

unint64_t sub_1D162826C()
{
  result = qword_1EDEC9DD0;
  if (!qword_1EDEC9DD0)
  {
    type metadata accessor for LogStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC9DD0);
  }

  return result;
}

id MedicationRoomInteractionEvent.__allocating_init(action:roomType:provenance:calendarCache:hasSideEffectsContent:hasPregnancyContent:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 56) = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  if (qword_1EDECB1C0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDECAD88;
  v14 = *(off_1EDECB1C8 + 2);
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDECAD90;
  type metadata accessor for MedicationsSettingsManager(0);
  swift_allocObject();
  v16 = sub_1D163E808(v14, 0, v15);

  *(v12 + 64) = v16;
  result = [a4 currentCalendar];
  if (result)
  {
    v18 = result;

    *(v12 + 16) = v18;
    *(v12 + 24) = a1;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    *(v12 + 48) = a5 & 1;
    *(v12 + 49) = a6 & 1;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1628440(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D1670224();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x1E69E7CC0];
    sub_1D16703A4();
    result = sub_1D16701D4();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1D16703A4();
  result = sub_1D16701A4();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_1D162B204(v26, v27, v28, a1);
    v13 = v12;
    v14 = [v12 severity];

    sub_1D1670374();
    sub_1D16703B4();
    sub_1D16703C4();
    result = sub_1D1670384();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_1D16701F4())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1D162CF50(0);
      v7 = sub_1D166FE24();
      sub_1D1670264();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1D162CFE4(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1D162CFE4(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_1D162CFE4(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
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
LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_1D162874C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D16701E4();
    sub_1D15EE5A8(0, &qword_1EC63DE20, 0x1E69A3AC8);
    sub_1D162CDE8(&qword_1EC63DE28, &qword_1EC63DE20, 0x1E69A3AC8);
    result = sub_1D166FE54();
    v4 = v49[4];
    v6 = v49[5];
    v7 = v49[6];
    v8 = v49[7];
    v9 = v49[8];
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v47 = MEMORY[0x1E69E7CC0];
  v42 = v4;
  v44 = v6;
  while (v4 < 0)
  {
    v18 = sub_1D1670254();
    if (!v18)
    {
      goto LABEL_46;
    }

    v49[10] = v18;
    sub_1D15EE5A8(0, &qword_1EC63DE20, 0x1E69A3AC8);
    swift_dynamicCast();
    v17 = v49[0];
    v16 = v8;
    v46 = v9;
    if (!v49[0])
    {
      goto LABEL_46;
    }

LABEL_18:
    v19 = [v17 interactions];
    sub_1D15EE5A8(0, &qword_1EC63DE30, 0x1E69A3AA0);
    sub_1D162CDE8(&qword_1EC63DE38, &qword_1EC63DE30, 0x1E69A3AA0);
    v20 = sub_1D166FE04();

    v21 = sub_1D1628440(v20);

    v22 = v21 >> 62;
    if (v21 >> 62)
    {
      v23 = sub_1D1670224();
    }

    else
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v47;
    v25 = v47 >> 62;
    v48 = v23;
    if (v47 >> 62)
    {
      v41 = sub_1D1670224();
      v27 = v41 + v48;
      if (__OFADD__(v41, v48))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        sub_1D160FD3C(v4);
        return v47;
      }
    }

    else
    {
      v26 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v26 + v23;
      if (__OFADD__(v26, v23))
      {
        goto LABEL_45;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v25)
      {
LABEL_27:
        sub_1D1670224();
      }

LABEL_28:
      result = sub_1D1670304();
      v24 = result;
      v28 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_29;
    }

    if (v25)
    {
      goto LABEL_27;
    }

    v28 = v47 & 0xFFFFFFFFFFFFFF8;
    if (v27 > *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_28;
    }

LABEL_29:
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (v22)
    {
      v32 = v28;
      result = sub_1D1670224();
      v28 = v32;
      v31 = result;
    }

    else
    {
      v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v24;
    if (v31)
    {
      if (((v30 >> 1) - v29) < v48)
      {
        goto LABEL_49;
      }

      v45 = v3;
      v33 = v28 + 8 * v29 + 32;
      v43 = v28;
      if (v22)
      {
        if (v31 < 1)
        {
          goto LABEL_51;
        }

        sub_1D162CEA0(0);
        sub_1D162CF08(&qword_1EC63DE50, sub_1D162CEA0, MEMORY[0x1E69E6340]);
        for (i = 0; i != v31; ++i)
        {
          v35 = sub_1D16008C0(v49, i, v21);
          v37 = *v36;
          (v35)(v49, 0);
          *(v33 + 8 * i) = v37;
        }
      }

      else
      {
        sub_1D15EE5A8(0, &qword_1EC63DE40, 0x1E69A3AA8);
        swift_arrayInitWithCopy();
      }

      v3 = v45;
      v8 = v16;
      v9 = v46;
      v4 = v42;
      v13 = (v7 + 64) >> 6;
      v6 = v44;
      if (v48 >= 1)
      {
        v38 = *(v43 + 16);
        v39 = __OFADD__(v38, v48);
        v40 = v38 + v48;
        if (v39)
        {
          goto LABEL_50;
        }

        *(v43 + 16) = v40;
        v8 = v16;
        v9 = v46;
      }
    }

    else
    {

      v8 = v16;
      v9 = v46;
      v13 = (v7 + 64) >> 6;
      v6 = v44;
      if (v48 > 0)
      {
        goto LABEL_48;
      }
    }
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_14:
    v46 = (v15 - 1) & v15;
    v17 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v17)
    {
      goto LABEL_46;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_46;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

id MedicationRoomInteractionEvent.init(action:roomType:provenance:calendarCache:hasSideEffectsContent:hasPregnancyContent:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6)
{
  v7 = v6;
  *(v6 + 56) = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  if (qword_1EDECB1C0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDECAD88;
  v15 = *(off_1EDECB1C8 + 2);
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDECAD90;
  type metadata accessor for MedicationsSettingsManager(0);
  swift_allocObject();
  v17 = sub_1D163E808(v15, 0, v16);

  *(v7 + 64) = v17;
  result = [a4 currentCalendar];
  if (result)
  {
    v19 = result;

    *(v7 + 16) = v19;
    *(v7 + 24) = a1;
    *(v7 + 32) = a2;
    *(v7 + 40) = a3;
    *(v7 + 48) = a5 & 1;
    *(v7 + 49) = a6 & 1;
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1628DC8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D16702D4();
  MEMORY[0x1D388CCF0](0xD000000000000051, 0x80000001D16776A0);
  MEMORY[0x1D388CCF0](v1, v2);
  return 0;
}

unint64_t sub_1D1628ECC(void *a1)
{
  v2 = sub_1D166F4E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 healthDataSource])
  {
    swift_unknownObjectRelease();
    v45 = sub_1D162B684(MEMORY[0x1E69E7CC0]);
    if (qword_1EDECB1C0 != -1)
    {
      swift_once();
    }

    v6 = off_1EDECB1C8;
    sub_1D162B79C(0);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v42[0] = v6;

    sub_1D166F384();

    v7 = sub_1D166F4A4();

    if (v7 >> 62)
    {
      v8 = sub_1D1670224();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = MEMORY[0x1E69E6370];
    v44 = MEMORY[0x1E69E6370];
    LOBYTE(v43) = v8 > 0;
    sub_1D15FA184(&v43, v42);
    v10 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v10;
    sub_1D1608EE4(v42, 0x4C7364654D736168, 0xEB00000000747369, isUniquelyReferenced_nonNull_native);
    v12 = v41;
    v45 = v41;
    v13 = sub_1D166FA04();
    v15 = v14;
    v16 = &property descriptor for MedicationView.config;
    v17 = [a1 environmentDataSource];
    v18 = [v17 activePairedDeviceProductType];

    if (v18)
    {
      v19 = sub_1D166FA04();
      v20 = v9;
      v22 = v21;

      v44 = MEMORY[0x1E69E6158];
      *&v43 = v19;
      *(&v43 + 1) = v22;
      v9 = v20;
      v16 = &property descriptor for MedicationView.config;
      sub_1D15FA184(&v43, v42);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v12;
      sub_1D1608EE4(v42, v13, v15, v23);

      v24 = v41;
      v45 = v41;
    }

    else
    {
      sub_1D162B160(v13, v15, &v43);

      sub_1D162B804(&v43);
      v24 = v45;
    }

    v34 = sub_1D166FA04();
    v36 = v35;
    v37 = [a1 v16[308]];
    v38 = [v37 isImproveHealthAndActivityEnabled];

    v44 = v9;
    LOBYTE(v43) = v38;
    sub_1D15FA184(&v43, v42);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v24;
    sub_1D1608EE4(v42, v34, v36, v39);

    return v41;
  }

  else
  {
    sub_1D166F4C4();
    v25 = sub_1D166F4D4();
    v26 = sub_1D166FF54();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v43 = v28;
      *v27 = 136446210;
      v29 = sub_1D1670754();
      v31 = sub_1D15F7A30(v29, v30, &v43);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1D15E6000, v25, v26, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1D388E250](v28, -1, -1);
      MEMORY[0x1D388E250](v27, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_1D162B428();
    swift_allocError();
    *v32 = 0xD00000000000002CLL;
    v32[1] = 0x80000001D1677560;
    return swift_willThrow();
  }
}

unint64_t sub_1D16293F4(void *a1)
{
  v3 = v1;
  v5 = sub_1D166F4E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1D166F174();
  v9 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 healthDataSource];
  if (v12)
  {
    v13 = v12;
    v84 = v9;
    v85 = v2;
    v14 = sub_1D162B684(MEMORY[0x1E69E7CC0]);
    v87 = [objc_allocWithZone(MEMORY[0x1E69A3AB0]) initWithDataSource_];
    v15 = HKStringFromMedicationRoomProvenance();
    v16 = sub_1D166FA04();
    v18 = v17;

    v19 = MEMORY[0x1E69E6158];
    v91 = MEMORY[0x1E69E6158];
    *&v90 = v16;
    *(&v90 + 1) = v18;
    sub_1D15FA184(&v90, v89);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v14;
    sub_1D1608EE4(v89, 0x6E616E65766F7270, 0xEA00000000006563, isUniquelyReferenced_nonNull_native);
    v21 = v92;
    v22 = HKStringFromMedicationRoomType();
    v23 = sub_1D166FA04();
    v25 = v24;

    v91 = v19;
    *&v90 = v23;
    *(&v90 + 1) = v25;
    sub_1D15FA184(&v90, v89);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v21;
    sub_1D1608EE4(v89, 0x657079546D6F6F72, 0xE800000000000000, v26);
    v27 = v92;
    v28 = HKStringFromMedicationRoomAnalyticsAction();
    v29 = sub_1D166FA04();
    v31 = v30;

    v91 = v19;
    *&v90 = v29;
    *(&v90 + 1) = v31;
    sub_1D15FA184(&v90, v89);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v27;
    sub_1D1608EE4(v89, 0x6E6F69746361, 0xE600000000000000, v32);
    v33 = v92;
    v34 = sub_1D162B95C();
    v35 = MEMORY[0x1E69E6370];
    v91 = MEMORY[0x1E69E6370];
    LOBYTE(v90) = v34 & 1;
    sub_1D15FA184(&v90, v89);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v33;
    sub_1D1608EE4(v89, 0xD000000000000013, 0x80000001D1677590, v36);
    v37 = v92;
    v38 = *(v3 + 48);
    v91 = v35;
    LOBYTE(v90) = v38;
    sub_1D15FA184(&v90, v89);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v37;
    sub_1D1608EE4(v89, 0xD000000000000015, 0x80000001D1676DE0, v39);
    v40 = v92;
    v41 = *(v3 + 49);
    v91 = v35;
    LOBYTE(v90) = v41;
    sub_1D15FA184(&v90, v89);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v40;
    sub_1D1608EE4(v89, 0xD000000000000013, 0x80000001D1676E00, v42);
    v43 = v88;
    v92 = v88;
    v44 = sub_1D162C1E0();
    v46 = v19;
    if (v45)
    {
      v91 = v19;
      *&v90 = v44;
      *(&v90 + 1) = v45;
      sub_1D15FA184(&v90, v89);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v88 = v43;
      sub_1D1608EE4(v89, 0xD000000000000018, 0x80000001D16775B0, v47);
      v92 = v88;
    }

    else
    {
      sub_1D162B160(0xD000000000000018, 0x80000001D16775B0, &v90);
      sub_1D162B804(&v90);
    }

    v57 = sub_1D166FA04();
    v59 = v58;
    v60 = [v87 biologicalSex];
    if (v60)
    {
      v61 = v60;
      v62 = sub_1D166FA04();
      v64 = v63;

      v91 = v46;
      if (v64)
      {
LABEL_13:
        v66 = v84;
        *&v90 = v62;
        *(&v90 + 1) = v64;
        sub_1D15FA184(&v90, v89);
        v67 = v92;
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v88 = v67;
        sub_1D1608EE4(v89, v57, v59, v68);

        v92 = v88;
        v69 = sub_1D166FA04();
        v71 = v70;
        sub_1D166F164();
        v72 = sub_1D166F124();
        (*(v66 + 8))(v11, v86);
        v73 = v87;
        v74 = [v87 bucketedUserAgeForCurrentDate_];

        v91 = sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
        *&v90 = v74;
        sub_1D15FA184(&v90, v89);
        v75 = v92;
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v88 = v75;
        sub_1D1608EE4(v89, v69, v71, v76);

        v77 = v88;
        v92 = v88;
        v78 = sub_1D166FA04();
        v80 = v79;
        v81 = sub_1D162A950(v13);
        v91 = MEMORY[0x1E69E6370];
        LOBYTE(v90) = v81 & 1;
        sub_1D15FA184(&v90, v89);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v88 = v77;
        sub_1D1608EE4(v89, v78, v80, v82);

        swift_unknownObjectRelease();

        return v88;
      }
    }

    else
    {
      v91 = v46;
    }

    v62 = sub_1D166FA04();
    v64 = v65;
    goto LABEL_13;
  }

  sub_1D166F4C4();
  v48 = sub_1D166F4D4();
  v49 = sub_1D166FF54();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v90 = v51;
    *v50 = 136446210;
    v52 = sub_1D1670754();
    v54 = sub_1D15F7A30(v52, v53, &v90);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_1D15E6000, v48, v49, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x1D388E250](v51, -1, -1);
    MEMORY[0x1D388E250](v50, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  sub_1D162B428();
  swift_allocError();
  *v55 = 0xD00000000000002CLL;
  v55[1] = 0x80000001D1677560;
  return swift_willThrow();
}

id sub_1D1629BEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id))
{
  v6 = a3;

  a5(v6);

  v7 = sub_1D166F934();

  return v7;
}

void *sub_1D1629CE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a5;
  v48 = a4;
  sub_1D162CE50(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - v11;
  v13 = sub_1D166F4E4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v52 = result;
  if (result)
  {
    if (a2)
    {
      v19 = a2;
      sub_1D166F4C4();
      v20 = a2;
      v21 = sub_1D166F4D4();
      v22 = sub_1D166FF44();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v55[0] = v24;
        *v23 = 136315650;
        v25 = sub_1D1670754();
        v27 = sub_1D15F7A30(v25, v26, v55);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_1D15F7A30(0xD00000000000001DLL, 0x80000001D16777A0, v55);
        *(v23 + 22) = 2080;
        v53 = a2;
        v28 = a2;
        sub_1D15F9218();
        v29 = sub_1D166FA84();
        v31 = sub_1D15F7A30(v29, v30, v55);

        *(v23 + 24) = v31;
        _os_log_impl(&dword_1D15E6000, v21, v22, "%s.%s Error: %s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D388E250](v24, -1, -1);
        MEMORY[0x1D388E250](v23, -1, -1);
      }

      (*(v14 + 8))(v16, v13);
      sub_1D1670044();
    }

    if (a1)
    {
      v32 = sub_1D162874C(a1, v18);
      v33 = v32;
      v53 = MEMORY[0x1E69E7CC0];
      if (v32 >> 62)
      {
LABEL_25:
        v34 = sub_1D1670224();
        if (v34)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
LABEL_9:
          v35 = 0;
          v50 = v33 & 0xFFFFFFFFFFFFFF8;
          v51 = v33 & 0xC000000000000001;
          v49 = (v10 + 16);
          v36 = (v10 + 8);
          while (1)
          {
            if (v51)
            {
              v37 = MEMORY[0x1D388D4D0](v35, v33);
            }

            else
            {
              if (v35 >= *(v50 + 16))
              {
                goto LABEL_24;
              }

              v37 = *(v33 + 8 * v35 + 32);
            }

            v10 = v37;
            v38 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              __break(1u);
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

            v39 = v52[8];
            v40 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__showMinorDrugInteractions;
            swift_beginAccess();
            (*v49)(v12, v39 + v40, v9);
            sub_1D166F334();
            (*v36)(v12, v9);
            if (v54 == 1)
            {
              result = [objc_opt_self() sharedBehavior];
              if (!result)
              {
                __break(1u);
                return result;
              }

              v41 = result;
              v42 = [result isAppleInternalInstall];

              if (v42)
              {
                goto LABEL_10;
              }
            }

            if ([v10 severityLevel] != 4)
            {
LABEL_10:
              sub_1D1670374();
              sub_1D16703B4();
              sub_1D16703C4();
              sub_1D1670384();
            }

            else
            {
            }

            ++v35;
            if (v38 == v34)
            {
              v43 = v53;
              goto LABEL_27;
            }
          }
        }
      }

      v43 = MEMORY[0x1E69E7CC0];
LABEL_27:

      if ((v43 & 0x8000000000000000) != 0 || (v43 & 0x4000000000000000) != 0)
      {
        v44 = sub_1D1670224();
      }

      else
      {
        v44 = *(v43 + 16);
      }

      if (v44 > 0)
      {
        v45 = v47;
        swift_beginAccess();
        *(v45 + 16) = 1;
      }
    }

    sub_1D1670044();
  }

  return result;
}

uint64_t sub_1D162A23C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D15EE5A8(0, &qword_1EC63DE20, 0x1E69A3AC8);
    sub_1D162CDE8(&qword_1EC63DE28, &qword_1EC63DE20, 0x1E69A3AC8);
    v4 = sub_1D166FE04();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1D162A30C()
{
  sub_1D162CE50(0, &qword_1EDECAB28, MEMORY[0x1E69E6370], MEMORY[0x1E69A3308]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - v4;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D1670224())
  {
    sub_1D15F9BCC(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  v19 = v6;
  v7 = *(v0 + 64);
  v8 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isAlcoholDrugInteractionFactorEnabled;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v9(v5, v7 + v8, v2);
  sub_1D166F3E4();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if (LOBYTE(v18[0]) == 1)
  {
    sub_1D1648FB0(v18, [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_]);
  }

  v11 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isTobaccoDrugInteractionFactorEnabled;
  swift_beginAccess();
  v9(v5, v7 + v11, v2);
  sub_1D166F3E4();
  v10(v5, v2);
  if (LOBYTE(v17[0]) == 1)
  {
    sub_1D1648FB0(v17, [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_]);
  }

  v12 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isMarijuanaDrugInteractionFactorEnabled;
  swift_beginAccess();
  v9(v5, v7 + v12, v2);
  sub_1D166F3E4();
  v10(v5, v2);
  if (v16 == 1)
  {
    sub_1D1648FB0(&v16, [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_]);
  }

  v13 = v19;
  if ((v19 & 0xC000000000000001) == 0)
  {
    if (*(v19 + 16))
    {
      return v13;
    }

    goto LABEL_11;
  }

  if (!sub_1D1670224())
  {
LABEL_11:
    sub_1D1648FB0(&v16, [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_]);

    return v19;
  }

  return v13;
}

void sub_1D162A65C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D166F4E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    if (!a2)
    {
LABEL_15:
      sub_1D1670044();
      return;
    }

    if (a2 >> 62)
    {
      if (sub_1D1670224())
      {
        goto LABEL_8;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      if ((a2 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1D388D4D0](0, a2);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v28 = *(a2 + 32);
      }

      v29 = v28;
      goto LABEL_14;
    }

    v29 = 0;
LABEL_14:
    swift_beginAccess();
    v30 = *(a5 + 16);
    *(a5 + 16) = v29;

    goto LABEL_15;
  }

  v14 = a3;
  sub_1D166F4C4();
  v15 = a3;
  v16 = sub_1D166F4D4();
  v17 = sub_1D166FF44();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[1] = a4;
    v20 = v19;
    v32[0] = v19;
    *v18 = 136315650;
    v21 = sub_1D1670754();
    v23 = sub_1D15F7A30(v21, v22, v32);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1D15F7A30(0xD000000000000021, 0x80000001D1677750, v32);
    *(v18 + 22) = 2080;
    v31[2] = a3;
    v24 = a3;
    sub_1D15F9218();
    v25 = sub_1D166FA84();
    v27 = sub_1D15F7A30(v25, v26, v32);

    *(v18 + 24) = v27;
    _os_log_impl(&dword_1D15E6000, v16, v17, "%s.%s Error: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388E250](v20, -1, -1);
    MEMORY[0x1D388E250](v18, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_1D1670044();
}

uint64_t sub_1D162A950(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1D166F834();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v28 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = dispatch_semaphore_create(0);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v4;
  aBlock[4] = sub_1D162CDC4;
  aBlock[5] = v14;
  v28[1] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D162AE68;
  aBlock[3] = &block_descriptor_4;
  v15 = _Block_copy(aBlock);

  v16 = v13;

  [a1 isImproveHealthRecordsAnalyticsSubmissionAllowedWithCompletion_];
  _Block_release(v15);
  sub_1D166F824();
  sub_1D166F854();
  v17 = *(v6 + 8);
  v17(v9, v5);
  sub_1D1670034();
  v17(v11, v5);
  if (sub_1D166F7D4())
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v18 = sub_1D166F4E4();
    __swift_project_value_buffer(v18, qword_1EDECB360);
    v19 = sub_1D166F4D4();
    v20 = sub_1D166FF44();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      v23 = sub_1D1670754();
      v25 = sub_1D15F7A30(v23, v24, aBlock);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1D15E6000, v19, v20, "[%{public}s] Timed out fetching IHR status for analytics.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1D388E250](v22, -1, -1);
      MEMORY[0x1D388E250](v21, -1, -1);
    }
  }

  swift_beginAccess();
  v26 = *(v12 + 16);

  return v26;
}

uint64_t sub_1D162ACD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = [a1 BOOLValue];
    swift_beginAccess();
    *(a3 + 16) = v6;
  }

  else
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v7 = sub_1D166F4E4();
    __swift_project_value_buffer(v7, qword_1EDECB360);
    v8 = sub_1D166F4D4();
    v9 = sub_1D166FF44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = v11;
      *v10 = 136446210;
      v12 = sub_1D1670754();
      v14 = sub_1D15F7A30(v12, v13, v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1D15E6000, v8, v9, "[%{public}s] failed fetching IHR status for analytics.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1D388E250](v11, -1, -1);
      MEMORY[0x1D388E250](v10, -1, -1);
    }
  }

  return sub_1D1670044();
}

void sub_1D162AE68(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t MedicationRoomInteractionEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D162AF6C@<X0>(void *a2@<X8>)
{
  sub_1D162B79C(0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D166F384();

  *a2 = v4;
  return result;
}

uint64_t sub_1D162B014(uint64_t *a1, uint64_t *a2)
{
  sub_1D162B79C(0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D166F394();
}

uint64_t sub_1D162B0A8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1D15EE5A8(0, &qword_1EDECACA0, 0x1E696C3A8);
    v5 = sub_1D166FC54();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

double sub_1D162B160@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D16061DC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D16484C8();
      v10 = v12;
    }

    sub_1D15FA184((*(v10 + 56) + 32 * v8), a3);
    sub_1D1647E28(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1D162B204(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D388D420](a1, a2, v7);
      sub_1D15EE5A8(0, &qword_1EC63DE30, 0x1E69A3AA0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D15EE5A8(0, &qword_1EC63DE30, 0x1E69A3AA0);
    if (sub_1D1670204() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D1670214();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1D1670094();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1D16700A4();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unint64_t sub_1D162B428()
{
  result = qword_1EC63DDA0;
  if (!qword_1EC63DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DDA0);
  }

  return result;
}

unint64_t sub_1D162B47C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D162D0B8(0);
    v3 = sub_1D1670484();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D162D158(v4, &v11, sub_1D160BACC);
      v5 = v11;
      result = sub_1D16062FC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D15FA184(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D162B58C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D162CD4C(0);
    v3 = sub_1D1670484();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D16061DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D162B684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D162CFF0();
    v3 = sub_1D1670484();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D162D158(v4, &v13, sub_1D162D054);
      v5 = v13;
      v6 = v14;
      result = sub_1D16061DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D15FA184(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D162B79C(uint64_t a1)
{
  if (!qword_1EDECAB68)
  {
    type metadata accessor for MedicationsExperienceStore();
    sub_1D166F4B4();
    v1 = sub_1D166F3A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECAB68);
    }
  }
}

uint64_t sub_1D162B804(uint64_t a1)
{
  sub_1D162CE50(0, &qword_1EC63DDA8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D162B888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D1609264(0);
    v3 = sub_1D1670484();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D1606560(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D162B95C()
{
  v1 = *v0;
  v2 = sub_1D166F834();
  v54 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v49 - v6;
  if (qword_1EDECB1C0 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v7 = off_1EDECB1C8;
    sub_1D162B79C(0);
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[6] = v7;

    sub_1D166F384();

    v8 = sub_1D166F4A4();

    v55 = v1;
    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_41;
      }

      v50 = v5;
      v51 = v2;
      aBlock[0] = MEMORY[0x1E69E7CC0];
LABEL_5:
      v10 = 0;
      v2 = v8 & 0xC000000000000001;
      v5 = (v8 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v2)
        {
          v11 = MEMORY[0x1D388D4D0](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v1 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v13 = [v11 firstOntologyCoding];
        if (v13)
        {

          sub_1D1670374();
          sub_1D16703B4();
          sub_1D16703C4();
          sub_1D1670384();
        }

        else
        {
        }

        ++v10;
        if (v1 == v9)
        {
          v1 = v55;
          v14 = aBlock[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (!sub_1D1670224())
    {
LABEL_41:

      return 0;
    }

    v50 = v5;
    v51 = v2;
    v14 = MEMORY[0x1E69E7CC0];
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v9 = sub_1D1670224();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_16:

    aBlock[0] = MEMORY[0x1E69E7CC0];
    if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
    {
      v15 = *(v14 + 16);
      if (!v15)
      {
        break;
      }

      goto LABEL_19;
    }

    v15 = sub_1D1670224();
    if (!v15)
    {
      break;
    }

LABEL_19:
    v5 = 0;
    v2 = v14 & 0xC000000000000001;
    v16 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v17 = v5;
    while (1)
    {
      if (v2)
      {
        v18 = MEMORY[0x1D388D4D0](v17, v14);
      }

      else
      {
        if (v17 >= *(v14 + 16))
        {
          goto LABEL_36;
        }

        v18 = *(v14 + 8 * v17 + 32);
      }

      v19 = v18;
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x1D388CE10]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D166FC84();
        }

        sub_1D166FCC4();
        v16 = aBlock[0];
        if (v5 != v15)
        {
          goto LABEL_20;
        }

        goto LABEL_44;
      }

      ++v17;
      if (v5 == v15)
      {
        goto LABEL_44;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_44:

  v21 = v52;
  sub_1D162A30C();
  v22 = [objc_allocWithZone(MEMORY[0x1E69A3A98]) initWithHealthStore_];
  v23 = dispatch_semaphore_create(0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v49 = v24 + 16;
  sub_1D163AA14(v16);

  sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
  sub_1D162CDE8(&qword_1EC63DE18, &qword_1EDECACB0, 0x1E69A3B10);
  v25 = sub_1D166FDF4();

  sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
  sub_1D162CDE8(&qword_1EC63DA58, &qword_1EC63DA50, 0x1E696AD98);
  v26 = sub_1D166FDF4();

  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = v23;
  v28[4] = v24;
  v28[5] = v1;
  aBlock[4] = sub_1D162CE44;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D162A23C;
  aBlock[3] = &block_descriptor_28;
  v29 = _Block_copy(aBlock);
  v30 = v23;

  v52 = v22;
  [v22 interactionResultsForMedications:v25 lifestyleFactors:v26 completion:v29];
  _Block_release(v29);

  v31 = v50;
  sub_1D166F824();
  v32 = v53;
  sub_1D166F854();
  v33 = *(v54 + 8);
  v34 = v51;
  v33(v31, v51);
  LOBYTE(v31) = sub_1D1670034();
  v33(v32, v34);
  if (v31)
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v35 = sub_1D166F4E4();
    __swift_project_value_buffer(v35, qword_1EDECB360);
    v36 = sub_1D166F4D4();
    v37 = sub_1D166FF44();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136446210;
      v40 = sub_1D1670754();
      v42 = sub_1D15F7A30(v40, v41, aBlock);

      *(v38 + 4) = v42;
      v43 = "[%{public}s] Timed out fetching ddi interaction info for analytics.";
      goto LABEL_53;
    }
  }

  else
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v44 = sub_1D166F4E4();
    __swift_project_value_buffer(v44, qword_1EDECB360);
    v36 = sub_1D166F4D4();
    v37 = sub_1D166FF64();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136446210;
      v45 = sub_1D1670754();
      v47 = sub_1D15F7A30(v45, v46, aBlock);

      *(v38 + 4) = v47;
      v43 = "[%{public}s] Successfully fetched ddi interaction info for analytics.";
LABEL_53:
      _os_log_impl(&dword_1D15E6000, v36, v37, v43, v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1D388E250](v39, -1, -1);
      MEMORY[0x1D388E250](v38, -1, -1);
    }
  }

  swift_beginAccess();
  v20 = *(v24 + 16);

  return v20;
}

uint64_t sub_1D162C1E0()
{
  v1 = *v0;
  v66 = sub_1D166F174();
  v65 = *(v66 - 8);
  v2 = MEMORY[0x1EEE9AC00](v66);
  v62 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v64 = v61 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v63 = v61 - v6;
  v7 = sub_1D166F834();
  v70 = *(v7 - 1);
  v71 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v68 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = v61 - v10;
  v77 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  sub_1D162CE50(0, &qword_1EDECB330, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1672930;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1D15F9BCC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = objc_opt_self();
  sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
  sub_1D162CDE8(&qword_1EC63DA58, &qword_1EC63DA50, 0x1E696AD98);
  v13 = sub_1D166FDF4();

  v14 = [v12 predicateForMedicationDoseEventWithStatuses_];

  v15 = [objc_opt_self() medicationDoseEventType];
  v16 = objc_allocWithZone(MEMORY[0x1E696C388]);
  v75 = v15;
  v76 = v14;
  v17 = [v16 initWithSampleType:v15 predicate:v14];
  v18 = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:*MEMORY[0x1E696BE38] ascending:1];
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v67 = (v19 + 16);
  v20 = dispatch_semaphore_create(0);
  v21 = swift_allocObject();
  v74 = xmmword_1D16721C0;
  *(v21 + 16) = xmmword_1D16721C0;
  *(v21 + 32) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v74;
  *(v22 + 32) = v18;
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v19;
  v61[0] = v1;
  v23[4] = v1;
  v24 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  sub_1D15EE5A8(0, &qword_1EC63DE10, 0x1E696C388);
  v73 = v17;
  v72 = v18;
  v25 = v20;
  *&v74 = v19;

  v26 = sub_1D166FC44();

  sub_1D15EE5A8(0, &qword_1EDECB340, 0x1E696AEB0);
  v27 = sub_1D166FC44();

  aBlock[4] = sub_1D162CE38;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D162B0A8;
  aBlock[3] = &block_descriptor_18;
  v28 = _Block_copy(aBlock);
  v29 = [v24 initWithQueryDescriptors:v26 limit:1 sortDescriptors:v27 resultsHandler:v28];

  _Block_release(v28);

  [v77 executeQuery_];
  v30 = v68;
  sub_1D166F824();
  v31 = v69;
  sub_1D166F854();
  isa = v70[1].isa;
  v33 = v30;
  v34 = v71;
  isa(v33, v71);
  LOBYTE(v26) = sub_1D1670034();
  isa(v31, v34);
  if (v26)
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v35 = sub_1D166F4E4();
    __swift_project_value_buffer(v35, qword_1EDECB360);
    v36 = sub_1D166F4D4();
    v37 = sub_1D166FF44();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136446210;
      v40 = sub_1D1670754();
      v42 = sub_1D15F7A30(v40, v41, aBlock);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1D15E6000, v36, v37, "[%{public}s] Timed out fetching oldest dose event for analytics.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1D388E250](v39, -1, -1);
      MEMORY[0x1D388E250](v38, -1, -1);
    }
  }

  else
  {
    v43 = v67;
    swift_beginAccess();
    if (*v43)
    {
      v44 = *(v61[1] + 16);
      v71 = *v43;
      v45 = [v71 startDate];
      v70 = v25;
      v46 = v64;
      sub_1D166F144();

      v47 = sub_1D166F124();
      v48 = *(v65 + 8);
      v49 = v66;
      v48(v46, v66);
      v50 = [v44 startOfDayForDate_];

      v51 = v63;
      sub_1D166F144();

      v52 = v62;
      sub_1D166F154();
      v53 = sub_1D166F124();
      v48(v52, v49);
      v54 = [v44 startOfDayForDate_];

      sub_1D166F144();
      v55 = sub_1D166F124();
      v56 = sub_1D166F124();
      v57 = HKMedicationAnalyticsWeeksBetweenDates();

      v58 = [v57 stringValue];
      v59 = sub_1D166FA04();

      v48(v46, v49);
      v48(v51, v49);

      return v59;
    }
  }

  return 0;
}

uint64_t sub_1D162CCB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D162CCFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D162CD4C(uint64_t a1)
{
  if (!qword_1EC63DAF0)
  {
    sub_1D15EE5A8(255, &qword_1EDEC9D80, 0x1E69E58C0);
    v1 = sub_1D1670494();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DAF0);
    }
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D162CDE8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D15EE5A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D162CE50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D162CEA0(uint64_t a1)
{
  if (!qword_1EC63DE48)
  {
    sub_1D15EE5A8(255, &qword_1EC63DE40, 0x1E69A3AA8);
    v1 = sub_1D166FCF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DE48);
    }
  }
}

uint64_t sub_1D162CF08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D162CF50(uint64_t a1)
{
  if (!qword_1EC63DE58)
  {
    sub_1D15EE5A8(255, &qword_1EC63DE30, 0x1E69A3AA0);
    sub_1D162CDE8(&qword_1EC63DE38, &qword_1EC63DE30, 0x1E69A3AA0);
    v1 = sub_1D166FE34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DE58);
    }
  }
}

uint64_t sub_1D162CFE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1D162CFF0()
{
  if (!qword_1EC63DAF8)
  {
    v0 = sub_1D1670494();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DAF8);
    }
  }
}

void sub_1D162D054()
{
  if (!qword_1EC63DE60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63DE60);
    }
  }
}

void sub_1D162D0B8(uint64_t a1)
{
  if (!qword_1EDEC9D58)
  {
    type metadata accessor for Key(255);
    sub_1D162CF08(&qword_1EDEC9E10, type metadata accessor for Key, &unk_1D1672018);
    v1 = sub_1D1670494();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEC9D58);
    }
  }
}

uint64_t sub_1D162D158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t HKMedicationScheduleItemQueryDescriptor.init(_:toDate:identifier:sortDescriptors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = sub_1D166F174();
  v14 = *(*(v13 - 8) + 56);
  v14(a7, 1, 1, v13);
  Descriptor = type metadata accessor for HKMedicationScheduleItemQueryDescriptor(0, a6, v15, v16);
  v18 = Descriptor[7];
  v14(a7 + v18, 1, 1, v13);
  v19 = Descriptor[9];
  v20 = (a7 + Descriptor[8]);
  sub_1D166F8D4();
  sub_1D15FB9CC(a1, a7);
  result = sub_1D15FB9CC(a2, a7 + v18);
  *v20 = a3;
  v20[1] = a4;
  *(a7 + v19) = a5;
  return result;
}

uint64_t HKMedicationScheduleItemQueryDescriptor.result(for:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D162D324, 0, 0);
}

uint64_t sub_1D162D324()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D162D3D8;
  v4 = swift_continuation_init();
  sub_1D162D79C(v4, v1, v3, *(v2 + 16));

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D162D3D8(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v1 + 80);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t HKMedicationScheduleItemQueryDescriptor.identifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t HKMedicationScheduleItemQueryDescriptor.identifier.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t HKMedicationScheduleItemQueryDescriptor.sortDescriptors.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t HKMedicationScheduleItemQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1D166F8E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t HKMedicationScheduleItemQueryDescriptor.queryAttributes.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1D166F8E4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void sub_1D162D79C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  sub_1D15FB870(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  Descriptor = type metadata accessor for HKMedicationScheduleItemQueryDescriptor(0, a4, v14, v15);
  v17 = Descriptor;
  v18 = *(a2 + *(Descriptor + 36));
  if (v18)
  {
    v42 = &v38;
    aBlock[0] = v18;
    MEMORY[0x1EEE9AC00](Descriptor);
    *(&v38 - 2) = a4;
    sub_1D166EFE4();
    v19 = sub_1D166FCF4();
    v20 = sub_1D15EE5A8(0, &qword_1EDECB340, 0x1E696AEB0);
    WitnessTable = swift_getWitnessTable();
    v39 = sub_1D165FD7C(sub_1D162E174, (&v38 - 4), v19, v20, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v22);
  }

  else
  {
    v39 = 0;
  }

  sub_1D15F8A24(a2, v13);
  sub_1D15F8A24(a2 + *(v17 + 28), v11);
  v41 = v17;
  v42 = a2;
  v23 = (a2 + *(v17 + 32));
  v24 = v23[1];
  v38 = *v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a1;
  v26 = sub_1D166F174();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = v28(v13, 1, v26);
  v40 = a3;
  v30 = 0;
  if (v29 != 1)
  {
    v30 = sub_1D166F124();
    (*(v27 + 8))(v13, v26);
  }

  if (v28(v11, 1, v26) == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_1D166F124();
    (*(v27 + 8))(v11, v26);
  }

  v32 = v39;
  if (!v24)
  {
    v33 = 0;
    if (v39)
    {
      goto LABEL_11;
    }

LABEL_13:
    v34 = 0;
    goto LABEL_14;
  }

  v33 = sub_1D166F9C4();
  if (!v32)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_1D15EE5A8(0, &qword_1EDECB340, 0x1E696AEB0);
  v34 = sub_1D166FC44();

LABEL_14:
  v35 = objc_allocWithZone(MEMORY[0x1E69A3B00]);
  aBlock[4] = sub_1D1600940;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D162E0A4;
  aBlock[3] = &block_descriptor_5;
  v36 = _Block_copy(aBlock);
  v37 = [v35 initWithFromDate:v30 toDate:v31 identifier:v33 sortDescriptors:v34 resultsHandler:v36];

  _Block_release(v36);

  sub_1D1670084();
  [v40 executeQuery_];
}

uint64_t sub_1D162DBC0@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = sub_1D166EFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1D15EE5A8(0, &qword_1EDECB340, 0x1E696AEB0);
  (*(v6 + 16))(v8, a1, v5);
  result = sub_1D166FF84();
  *a3 = result;
  return result;
}

uint64_t sub_1D162DCCC(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](a5);
  }

  else
  {
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_1D165BD30(MEMORY[0x1E69E7CC0]);
      sub_1D162E194();
      sub_1D166F074();
      v8 = v12;
    }

    sub_1D15F9218();
    swift_allocError();
    *v9 = v8;
    v10 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1D162DDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D162DE94;

  return HKMedicationScheduleItemQueryDescriptor.result(for:)(a2, a3);
}

uint64_t sub_1D162DE94(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

void sub_1D162DFAC(uint64_t a1)
{
  sub_1D15FB870(319);
  if (v1 <= 0x3F)
  {
    sub_1D15F42BC();
    if (v2 <= 0x3F)
    {
      sub_1D166EFE4();
      sub_1D166FCF4();
      sub_1D16700E4();
      if (v3 <= 0x3F)
      {
        sub_1D166F8E4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D162E0A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1D15EE5A8(0, &qword_1EDECACD0, 0x1E69A3AF0);
    v5 = sub_1D166FC54();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D162E194()
{
  result = qword_1EC63D868;
  if (!qword_1EC63D868)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63D868);
  }

  return result;
}

uint64_t NotificationActionHandler.doseEventStatus.getter()
{
  v1 = *v0;
  result = 4;
  if (*v0 > 3)
  {
    if (v1 == 4)
    {
      return 0;
    }

    if (v1 == 5)
    {
      return result;
    }

    if (v1 != 6)
    {
      return 0;
    }

    return 5;
  }

  switch(v1)
  {
    case 1:
      return result;
    case 2:
      return 5;
    case 3:
      return 3;
  }

  return 0;
}

uint64_t NotificationActionHandler.analyticsInteraction.getter()
{
  v1 = *v0;
  if (*v0 <= 3)
  {
    if (v1 != 1)
    {
      if (v1 != 2)
      {
        if (v1 == 3)
        {
          return 6;
        }

        return 0;
      }

      return 5;
    }

    return 4;
  }

  switch(v1)
  {
    case 4:
      return 2;
    case 5:
      return 4;
    case 6:
      return 5;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for NotificationActionHandler(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NotificationActionHandler(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1D162E37C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_1D162E7F0(0);
  *v3 = v0;
  v3[1] = sub_1D162E478;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x80000001D16777C0, sub_1D162E7E8, v2, v4);
}

uint64_t sub_1D162E478()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D162E5B0;
  }

  else
  {

    v2 = sub_1D162E594;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D162E5B0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D162E614(uint64_t a1, void *a2)
{
  sub_1D162F4E8(0, &qword_1EC63DE70, sub_1D162E7F0, MEMORY[0x1E69E8548]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v6 + 16))(aBlock - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  aBlock[4] = sub_1D162F5B0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1618744;
  aBlock[3] = &block_descriptor_21;
  v11 = _Block_copy(aBlock);

  [a2 fetchAllSchedulesWithCompletion_];
  _Block_release(v11);
}

unint64_t sub_1D162E824()
{
  result = qword_1EDECACF0;
  if (!qword_1EDECACF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDECACF0);
  }

  return result;
}

uint64_t sub_1D162E870(void *a1, id a2)
{
  if (a1)
  {
    sub_1D162F4E8(0, &qword_1EC63DE70, sub_1D162E7F0, MEMORY[0x1E69E8548]);

    return sub_1D166FD34();
  }

  else
  {
    if (!a2)
    {
      type metadata accessor for HKError(0);
      sub_1D165BD30(MEMORY[0x1E69E7CC0]);
      sub_1D162ECF4(&qword_1EC63D868, type metadata accessor for HKError, &unk_1D167205C);
      sub_1D166F074();
      a2 = 0;
    }

    v3 = a2;
    sub_1D162F4E8(0, &qword_1EC63DE70, sub_1D162E7F0, MEMORY[0x1E69E8548]);
    return sub_1D166FD24();
  }
}

uint64_t HKMedicationScheduleControl.schedulePublisher(for:using:)(uint64_t a1)
{
  sub_1D162EB88(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = a1;
  sub_1D162EC1C(0);
  sub_1D162ECF4(&qword_1EDECA068, sub_1D162EC1C, MEMORY[0x1E695C038]);
  v9 = v1;

  sub_1D166F6E4();
  sub_1D162ECF4(&qword_1EDECA058, sub_1D162EB88, MEMORY[0x1E695C058]);
  v10 = sub_1D166F754();
  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_1D162EB88(uint64_t a1)
{
  if (!qword_1EDECA050)
  {
    sub_1D162EC1C(255);
    sub_1D162ECF4(&qword_1EDECA068, sub_1D162EC1C, MEMORY[0x1E695C038]);
    v1 = sub_1D166F6F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECA050);
    }
  }
}

uint64_t sub_1D162EC50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1D162EC1C(0);
  swift_allocObject();
  v7 = a1;

  result = sub_1D166F6C4();
  *a3 = result;
  return result;
}

uint64_t sub_1D162ECF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D162ED3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D162EF2C(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1D166FD84();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = a4;
  v13[6] = sub_1D162EF90;
  v13[7] = v10;

  sub_1D1617D5C(0, 0, v9, &unk_1D1673C70, v13);

  return sub_1D161DF10(v9);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1D162EF2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D162EF90(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1D162EFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D162EFF4, 0, 0);
}

uint64_t sub_1D162EFF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1D166FC44();
    v0[27] = v3;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1D162F1B4;
    v4 = swift_continuation_init();
    sub_1D162F4E8(0, &qword_1EC63DE68, sub_1D162F564, MEMORY[0x1E69E86F8]);
    v0[17] = v5;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D166C0D0;
    v0[13] = &block_descriptor_6;
    v0[14] = v4;
    [v2 fetchSchedulesWithMedicationIdentifiers:v3 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D162F1B4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1D162F360;
  }

  else
  {
    v2 = sub_1D162F2C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D162F2C4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);

  if (!v3)
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v2(v3, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D162F360(uint64_t a1)
{
  v3 = v1[27];
  v2 = v1[28];
  v4 = v1[26];
  v5 = v1[24];
  swift_willThrow();

  v6 = v2;
  v5(v2, 1);

  v7 = v1[1];

  return v7();
}

uint64_t sub_1D162F414(uint64_t a1)
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
  v10[1] = sub_1D15FFFCC;

  return sub_1D162EFD0(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1D162F4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_1D15F9218();
    v9 = a4(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D162F5B0(void *a1, void *a2)
{
  sub_1D162F4E8(0, &qword_1EC63DE70, sub_1D162E7F0, MEMORY[0x1E69E8548]);

  return sub_1D162E870(a1, a2);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id HKConcept.clinicalProduct.getter()
{
  if ([v0 meds_isClinicalProduct])
  {
    v1 = v0;
  }

  else if ([v0 meds_isSpecificProduct])
  {
    return [v0 firstConceptOfRelationshipType_];
  }

  else
  {
    return 0;
  }

  return v0;
}

id HKConcept.routedDoseFormName.getter()
{
  if (![v0 meds_isRoutedDoseFormProduct])
  {
    return 0;
  }

  result = [v0 meds:982 preferredNameForFirstObjectOfRelationshipType:?];
  if (result)
  {
    v2 = result;
    v3 = sub_1D166FA04();

    return v3;
  }

  return result;
}

uint64_t HKConcept.conceptDisplayName.getter()
{
  v1 = [v0 localizedPreferredName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D166FA04();

    return v3;
  }

  else
  {
    if (qword_1EDECB050 != -1)
    {
      swift_once();
    }

    return sub_1D166F004();
  }
}

uint64_t HKConcept.strengthDisplay.getter()
{
  if ([v0 meds_isClinicalProduct])
  {
    v1 = v0;
  }

  else
  {
    if (![v0 meds_isSpecificProduct])
    {
      goto LABEL_7;
    }

    v1 = [v0 firstConceptOfRelationshipType_];
    if (!v1)
    {
      goto LABEL_7;
    }
  }

  v2 = [v1 firstAttributeForType_];

  if (v2)
  {
    v3 = [v2 stringValue];

LABEL_11:
    v10 = sub_1D166FA04();

    return v10;
  }

LABEL_7:
  v4 = [v0 firstAttributeForType_];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 stringValue];

    v7 = sub_1D166FA04();
    return v7;
  }

  v9 = [v0 localizedPreferredName];
  if (v9)
  {
    v3 = v9;
    goto LABEL_11;
  }

  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  return sub_1D166F004();
}

uint64_t MedicationConceptType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result - 73;
  if ((result - 841) >= 5)
  {
    v2 = 5;
  }

  *a2 = v2;
  return result;
}

id MedicationConceptType.conceptIdentifier.getter()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696C020]);

  return [v2 initWithRawIdentifier_];
}

unint64_t MedicationConceptType.debugDescription.getter()
{
  v1 = *v0;
  v2 = 0x6369666963657073;
  v3 = 0xD000000000000018;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x6D614E6564617254;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6163696E696C63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D162FB5C()
{
  v1 = *v0;
  sub_1D16706A4();
  MEMORY[0x1D388D8B0](v1 + 841);
  return sub_1D16706E4();
}

uint64_t sub_1D162FBD4(uint64_t a1)
{
  v2 = *v1;
  sub_1D16706A4();
  MEMORY[0x1D388D8B0](v2 + 841);
  return sub_1D16706E4();
}

void *sub_1D162FC18@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result - 841;
  if (v2 >= 5)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

uint64_t HKConcept.formDisplay.getter()
{
  v1 = [v0 firstAttributeForType_];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 stringValue];

    v4 = sub_1D166FA04();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v0 firstAttributeForType_];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 stringValue];

    sub_1D166FA04();
  }

  return v4;
}

id HKConcept.loggingDoseForm.getter()
{
  if (![v0 meds_isSpecificProduct])
  {
    return 0;
  }

  result = [v0 firstConceptOfRelationshipType_];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result firstConceptOfRelationshipType_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 firstConceptOfRelationshipType_];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 firstConceptOfRelationshipType_];

  return v5;
}

uint64_t HKConcept.educationalContent.getter()
{
  v1 = [v0 allConceptsOfRelationshipType_];
  sub_1D162FF64();
  v2 = sub_1D166FC54();

  return v2;
}

id sub_1D162FE84(SEL *a1, uint64_t a2)
{
  if ([v2 *a1])
  {
    return [v2 firstConceptOfRelationshipType_];
  }

  else
  {
    return 0;
  }
}

uint64_t HKConcept.firstAttribute(for:)(uint64_t a1)
{
  v2 = [v1 firstAttributeForType_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 stringValue];

  v5 = sub_1D166FA04();
  return v5;
}

unint64_t sub_1D162FF64()
{
  result = qword_1EC63DA98;
  if (!qword_1EC63DA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC63DA98);
  }

  return result;
}

unint64_t sub_1D162FFB4()
{
  result = qword_1EC63DE78;
  if (!qword_1EC63DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DE78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicationConceptType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicationConceptType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t HKMedicationFreeTextFormTypeCode.localizedFormString.getter(uint64_t a1)
{
  if (qword_1EDECB050 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  HKMedicationFreeTextFormTypeCode.localizationKey.getter(a1);
  v1 = sub_1D166F004();

  return v1;
}

unint64_t HKMedicationFreeTextFormTypeCode.localizationKey.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0xD000000000000017;
  switch(v1)
  {
    case 0:
      return result;
    case 2:
    case 8:
    case 9:
    case 12:
    case 15:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
    case 16:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t HKMedicationFreeTextFormTypeCode.englishFormString.getter(uint64_t a1)
{
  sub_1D163095C(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D166F0C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  v20 = xmmword_1EDECB058;
  *&v21 = qword_1EDECB068;
  xmmword_1EDECB058;

  LocalizationSource.stringsTable(forLanguageCode:)(28261, 0xE200000000000000, v4);
  v9 = v20;

  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = objc_allocWithZone(MEMORY[0x1E695DF20]);
    v12 = sub_1D166F0A4();
    v13 = [v11 initWithContentsOfURL_];

    if (v13)
    {
      v17[1] = HKMedicationFreeTextFormTypeCode.localizationKey.getter(a1);
      v14 = sub_1D166F9C4();

      v15 = [v13 valueForKey_];

      if (v15)
      {
        sub_1D1670164();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
      }

      v20 = v18;
      v21 = v19;
      if (*(&v19 + 1))
      {
        if (swift_dynamicCast())
        {
          (*(v6 + 8))(v8, v5);

          return v17[2];
        }
      }

      else
      {
        sub_1D16309B4(&v20, sub_1D1630A14);
      }

      v10 = sub_1D166F004();
    }

    else
    {
      HKMedicationFreeTextFormTypeCode.localizationKey.getter(a1);
      v10 = sub_1D166F004();
    }

    (*(v6 + 8))(v8, v5);
    return v10;
  }

  sub_1D16309B4(v4, sub_1D163095C);
  HKMedicationFreeTextFormTypeCode.localizationKey.getter(a1);
  v10 = sub_1D166F004();

  return v10;
}

uint64_t static HKMedicationFreeTextFormTypeCode.allFormsAndTheirDisplayInEnglish.getter()
{
  v0 = _sSo32HKMedicationFreeTextFormTypeCodeV27HealthMedicationsExperienceE8allCasesSayABGvgZ_0();
  v1 = *(v0 + 2);
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D16230AC(0, v1, 0);
    v2 = 32;
    v3 = v13;
    do
    {
      v4 = *&v0[v2];
      v5 = HKMedicationFreeTextFormTypeCode.englishFormString.getter(v4);
      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1D16230AC((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
      }

      *(v13 + 16) = v8 + 1;
      v9 = (v13 + 24 * v8);
      v9[4] = v4;
      v9[5] = v5;
      v9[6] = v6;
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

char *_sSo32HKMedicationFreeTextFormTypeCodeV27HealthMedicationsExperienceE8allCasesSayABGvgZ_0()
{
  v0 = sub_1D15ED1C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_1D15ED1C4((v1 > 1), v2 + 1, 1, v0);
  }

  *(v0 + 2) = v2 + 1;
  *&v0[8 * v2 + 32] = 1;
  v3 = v2 + 5;
  v4 = -16;
  do
  {
    v5 = *(v0 + 3);
    if (v3 - 4 >= v5 >> 1)
    {
      v0 = sub_1D15ED1C4((v5 > 1), v3 - 3, 1, v0);
    }

    *(v0 + 2) = v3 - 3;
    *&v0[8 * v3++] = v4 + 18;
  }

  while (!__CFADD__(v4++, 1));
  return v0;
}

void sub_1D163095C(uint64_t a1)
{
  if (!qword_1EC63DE80)
  {
    sub_1D166F0C4();
    v1 = sub_1D16700E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DE80);
    }
  }
}

uint64_t sub_1D16309B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1630A14()
{
  if (!qword_1EC63DDA8)
  {
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DDA8);
    }
  }
}

uint64_t sub_1D1630A68()
{
  v0 = sub_1D166F4E4();
  __swift_allocate_value_buffer(v0, qword_1EDECB360);
  __swift_project_value_buffer(v0, qword_1EDECB360);
  v1 = HKLogMedication();
  return sub_1D166F4F4();
}

uint64_t static Logger.medication.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v2 = sub_1D166F4E4();
  v3 = __swift_project_value_buffer(v2, qword_1EDECB360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id static HKQuantityFormattingParameters.parametersForUnit(_:)(uint64_t a1)
{
  sub_1D1630C70();
  v1 = [objc_opt_self() percentUnit];
  v2 = sub_1D16700A4();

  result = [objc_allocWithZone(MEMORY[0x1E69A4480]) init];
  if (v2)
  {
    v4 = result;
    [result setHasSpaceBetweenValueAndUnit_];
    return v4;
  }

  return result;
}

unint64_t sub_1D1630C70()
{
  result = qword_1EC63DD08;
  if (!qword_1EC63DD08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC63DD08);
  }

  return result;
}

id sub_1D1630CCC()
{
  _s38HealthMedicationsExperienceBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDECAC98 = result;
  return result;
}

id static NSBundle.healthMedicationsExperience.getter()
{
  if (qword_1EDECAC90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDECAC98;

  return v1;
}

void static Weekdays.weekends.getter(void *a1@<X8>)
{
  sub_1D1627CE8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 127;
  sub_1D1627D44();
  sub_1D1670744();
  v7 = 0;
  while (1)
  {
    sub_1D166F874();
    if (v12)
    {
      (*(v4 + 8))(v6, v3);
      *a1 = v7;
      return;
    }

    v8 = v11;
    v9 = log2f(v11);
    if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    if (v9 <= -9.2234e18)
    {
      goto LABEL_13;
    }

    if (v9 >= 9.2234e18)
    {
      goto LABEL_14;
    }

    if (v9 <= 6)
    {
      if (([objc_opt_self() weekdayIsWeekend_] & ((v8 & ~v7) != 0)) != 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      v7 |= v10;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

void Weekdays.singleDay.getter()
{
  v1 = log2f(*v0);
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v1 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 >= 9.2234e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  Weekdays.Day.init(rawValue:)(v1);
}

void static Weekdays.weekDays.getter(void *a1@<X8>)
{
  sub_1D1627CE8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 127;
  sub_1D1627D44();
  sub_1D1670744();
  v7 = 0;
  while (1)
  {
    sub_1D166F874();
    if (v14)
    {
      (*(v4 + 8))(v6, v3);
      *a1 = v7;
      return;
    }

    v8 = v13;
    v9 = log2f(v13);
    if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    if (v9 <= -9.2234e18)
    {
      goto LABEL_16;
    }

    if (v9 >= 9.2234e18)
    {
      goto LABEL_17;
    }

    if (v9 <= 6)
    {
      v10 = [objc_opt_self() weekdayIsWeekend_];
      if ((v8 & ~v7) != 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8;
      }

      v7 |= v12;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t Weekdays.sortedWeekdays(calendar:)()
{
  v1 = *v0;
  result = sub_1D166F214();
  if (result > 7)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v3 = result;
  v4 = result - 1;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v3 - 1) < 6)
    {
      v7 = 0x40302010006uLL >> (8 * v4);
      goto LABEL_8;
    }

    if (v4 == 6)
    {
      break;
    }

LABEL_3:
    ++v4;
    if (__OFADD__(v3++, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  LOBYTE(v7) = 5;
LABEL_8:
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D15ED2D8(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_1D15ED2D8((v8 > 1), v9 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v9 + 1;
  *(v5 + v9 + 32) = v7;
  if (v4 != 6)
  {
    goto LABEL_3;
  }

  if (sub_1D166F214() < 2)
  {
LABEL_25:
    v14 = *(v5 + 16);
    if (v14)
    {
      v15 = (v5 + 32);
      v16 = MEMORY[0x1E69E7CC0];
      do
      {
        v20 = *v15++;
        v19 = v20;
        if (v20 > 0x3FuLL || ((v1 >> v19) & 1) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D16230CC(0, *(v16 + 16) + 1, 1);
          }

          v18 = *(v16 + 16);
          v17 = *(v16 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_1D16230CC((v17 > 1), v18 + 1, 1);
          }

          *(v16 + 16) = v18 + 1;
          *(v16 + v18 + 32) = v19;
        }

        --v14;
      }

      while (v14);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    return v16;
  }

  result = sub_1D166F214();
  if (__OFSUB__(result, 1))
  {
    goto LABEL_40;
  }

  if (result - 1 >= 1)
  {
    v10 = 0;
    v11 = result - 2;
    while (1)
    {
      if (v10 <= 6)
      {
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1D15ED2D8((v12 > 1), v13 + 1, 1, v5);
          v5 = result;
        }

        *(v5 + 16) = v13 + 1;
        *(v5 + v13 + 32) = 0x5040302010006uLL >> (8 * v10);
      }

      if (v11 == v10)
      {
        goto LABEL_25;
      }

      if (__OFADD__(++v10, 1))
      {
        goto LABEL_38;
      }
    }
  }

LABEL_41:
  __break(1u);
  return result;
}

void Weekdays.Day.weekday.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

uint64_t Weekdays.enumerate(_:_:)(uint64_t a1, void (*a2)(char *))
{
  v10 = *v2;
  v4 = Weekdays.sortedWeekdays(calendar:)();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      v9 = v7;
      a2(&v9);
      --v5;
    }

    while (v5);
  }
}

HealthMedicationsExperience::Weekdays::Day_optional __swiftcall Weekdays.Day.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void Weekdays.toString(calendar:)()
{
  v1 = sub_1D166F1F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D16323EC(0, &qword_1EC63DE88, MEMORY[0x1E6968660]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v48 - v8;
  sub_1D16323EC(0, &qword_1EC63DEA0, MEMORY[0x1E6968640]);
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v48 - v10;
  sub_1D1632508(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0;
  if (*v0)
  {
    v51 = v15;
    v52 = v13;
    v60 = v16;
    v17 = Weekdays.sortedWeekdays(calendar:)();
    if (v16 == 127)
    {

      if (qword_1EDECB050 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

    static Weekdays.weekDays.getter(&v60);
    if (v16 == v60 || (static Weekdays.weekends.getter(&v60), v16 == v60))
    {

      if (qword_1EDECB050 == -1)
      {
LABEL_8:
        sub_1D166F004();
        return;
      }

LABEL_30:
      swift_once();
      goto LABEL_8;
    }

    v54 = v1;
    v18 = *(v17 + 16);
    if (v18)
    {
      if (v18 != 1)
      {
        v48 = v12;
        v49 = v7;
        v50 = v6;
        v24 = 0;
        v53 = (v2 + 8);
        v25 = MEMORY[0x1E69E7CC0];
        while (v24 < *(v17 + 16))
        {
          v26 = *(v17 + v24 + 32);
          v27 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
          if (!*(sub_1D166F1C4() + 16))
          {
            goto LABEL_28;
          }

          sub_1D166F1B4();
          v28 = sub_1D166F1D4();
          [v27 setLocale_];

          [v27 setFormattingContext_];
          (*v53)(v4, v54);
          v29 = [v27 shortStandaloneWeekdaySymbols];
          if (!v29)
          {
            goto LABEL_33;
          }

          v30 = v29;
          v31 = sub_1D166FC54();

          v32 = qword_1D1674138[v26];
          if (v32 >= *(v31 + 16))
          {
            goto LABEL_29;
          }

          v33 = v31 + 16 * v32;
          v35 = *(v33 + 32);
          v34 = *(v33 + 40);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1D15ECAB4(0, *(v25 + 2) + 1, 1, v25);
          }

          v37 = *(v25 + 2);
          v36 = *(v25 + 3);
          if (v37 >= v36 >> 1)
          {
            v25 = sub_1D15ECAB4((v36 > 1), v37 + 1, 1, v25);
          }

          ++v24;
          *(v25 + 2) = v37 + 1;
          v38 = &v25[16 * v37];
          *(v38 + 4) = v35;
          *(v38 + 5) = v34;
          if (v18 == v24)
          {

            v59 = v25;
            v39 = v55;
            v40 = v56;
            v41 = v57;
            (*(v56 + 104))(v55, *MEMORY[0x1E6968638], v57);
            v43 = v49;
            v42 = v50;
            v44 = v58;
            (*(v49 + 104))(v58, *MEMORY[0x1E6968658], v50);
            v45 = MEMORY[0x1E69E6158];
            sub_1D1632BE4(0, &qword_1EDECAE18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
            sub_1D1632394(&qword_1EC63DE98, &qword_1EDECAE18, v45, MEMORY[0x1E69E6328]);
            v46 = v51;
            sub_1D166EE54();
            (*(v43 + 8))(v44, v42);
            (*(v40 + 8))(v39, v41);
            sub_1D1632708(&qword_1EC63DEB0, sub_1D1632508, MEMORY[0x1E6968670]);
            v47 = v52;
            sub_1D166FBD4();
            (*(v48 + 8))(v46, v47);

            return;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v19 = *(v17 + 32);

      sub_1D1632528();
      v61 = NSDateFormatter.init(formattingContext:)(NSFormattingContextStandalone);
      isa = v61.super.super.isa;
      v21 = [(objc_class *)v61.super.super.isa standaloneWeekdaySymbols:v61._formatter];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1D166FC54();

        if (qword_1D1674138[v19] < *(v23 + 16))
        {

          return;
        }

        __break(1u);
LABEL_33:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
    }
  }
}

NSDateFormatter __swiftcall NSDateFormatter.init(formattingContext:)(NSFormattingContext formattingContext)
{
  v2 = sub_1D166F1F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_1D166F1C4();
  if (*(v7 + 2))
  {

    sub_1D166F1B4();
    v11 = sub_1D166F1D4();
    [v6 setLocale_];

    [v6 setFormattingContext_];
    (*(v3 + 8))(v5, v2);
    v7 = v6;
  }

  else
  {
    __break(1u);
  }

  result._counter = v10;
  result._formatter = v9;
  result._attributes = v8;
  result.super.super.isa = v7;
  return result;
}

Swift::String_optional __swiftcall NSDateFormatter.standaloneWeekdaySymbol(for:)(HealthMedicationsExperience::Weekdays::Day a1)
{
  v2 = *a1;
  v3 = [v1 standaloneWeekdaySymbols];
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = v3;
  v6 = sub_1D166FC54();

  v7 = qword_1D1674138[v2];
  if (v7 >= *(v6 + 16))
  {
    __break(1u);
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v8 = v6 + 16 * v7;
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);

  v3 = v9;
  v4 = v10;
LABEL_6:
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall NSDateFormatter.shortStandaloneWeekdaySymbol(for:)(HealthMedicationsExperience::Weekdays::Day a1)
{
  v2 = *a1;
  v3 = [v1 shortStandaloneWeekdaySymbols];
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = v3;
  v6 = sub_1D166FC54();

  v7 = qword_1D1674138[v2];
  if (v7 >= *(v6 + 16))
  {
    __break(1u);
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v8 = v6 + 16 * v7;
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);

  v3 = v9;
  v4 = v10;
LABEL_6:
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1D1632068(uint64_t a1)
{
  sub_1D1627D44();

  return sub_1D1670744();
}

uint64_t sub_1D16320F0()
{
  v1 = *v0;
  sub_1D16706A4();
  MEMORY[0x1D388D890](v1);
  return sub_1D16706E4();
}

uint64_t sub_1D1632138(uint64_t a1)
{
  v2 = *v1;
  sub_1D16706A4();
  MEMORY[0x1D388D890](v2);
  return sub_1D16706E4();
}

BOOL sub_1D16321C0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D16321F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D163221C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

Swift::String_optional __swiftcall NSDateFormatter.veryShortStandaloneWeekdaySymbol(for:)(HealthMedicationsExperience::Weekdays::Day a1)
{
  v2 = *a1;
  v3 = [v1 veryShortStandaloneWeekdaySymbols];
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = v3;
  v6 = sub_1D166FC54();

  v7 = qword_1D1674138[v2];
  if (v7 >= *(v6 + 16))
  {
    __break(1u);
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v8 = v6 + 16 * v7;
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);

  v3 = v9;
  v4 = v10;
LABEL_6:
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1D1632394(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D1632BE4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D16323EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1D166EEF4();
    v7 = MEMORY[0x1E69E6158];
    sub_1D1632BE4(255, &qword_1EDECAE18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v11[0] = v6;
    v11[1] = v8;
    v11[2] = sub_1D1632708(&qword_1EC63DE90, MEMORY[0x1E69680B0], MEMORY[0x1E69680A8]);
    v11[3] = sub_1D1632394(&qword_1EC63DE98, &qword_1EDECAE18, v7, MEMORY[0x1E69E6328]);
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D1632528()
{
  result = qword_1EC63DEB8;
  if (!qword_1EC63DEB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC63DEB8);
  }

  return result;
}

unint64_t sub_1D1632578()
{
  result = qword_1EC63DEC0;
  if (!qword_1EC63DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DEC0);
  }

  return result;
}

unint64_t sub_1D1632614()
{
  result = qword_1EDECA0C0;
  if (!qword_1EDECA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA0C0);
  }

  return result;
}

unint64_t sub_1D163266C()
{
  result = qword_1EDECA0B8;
  if (!qword_1EDECA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA0B8);
  }

  return result;
}

uint64_t sub_1D1632708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1632750()
{
  result = qword_1EDECA0C8;
  if (!qword_1EDECA0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA0C8);
  }

  return result;
}

unint64_t sub_1D16327A8()
{
  result = qword_1EDECA0B0;
  if (!qword_1EDECA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA0B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Weekdays.Day(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Weekdays.Day(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_1D163295C(uint64_t a1)
{
  sub_1D1627CE8(0);
  v3 = v2;
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_1D1627D98();
  sub_1D166FBE4();
  sub_1D1632708(&qword_1EC63DD40, sub_1D1627CE8, MEMORY[0x1E69A4058]);
  result = sub_1D1670104();
  v7 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v8 = 0;
LABEL_22:
    result = (*(v26 + 8))(v5, v3);
    v22 = v7[3];
    if (v22 < 2)
    {
      return v7;
    }

    v23 = v22 >> 1;
    v21 = __OFSUB__(v23, v8);
    v24 = v23 - v8;
    if (!v21)
    {
      v7[2] = v24;
      return v7;
    }
  }

  else
  {
    v8 = 0;
    v9 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      v10 = v27;
      if (!v8)
      {
        v11 = v7[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_27;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        sub_1D1632BE4(0, &qword_1EC63DED8, &type metadata for Weekdays, MEMORY[0x1E69E6F90]);
        v14 = swift_allocObject();
        v15 = _swift_stdlib_malloc_size(v14);
        v16 = v15 - 32;
        if (v15 < 32)
        {
          v16 = v15 - 25;
        }

        v17 = v16 >> 3;
        v14[2] = v13;
        v14[3] = 2 * (v16 >> 3);
        v18 = (v14 + 4);
        v19 = v7[3] >> 1;
        if (v7[2])
        {
          if (v14 != v7 || v18 >= &v7[v19 + 4])
          {
            memmove(v14 + 4, v7 + 4, 8 * v19);
          }

          v7[2] = 0;
        }

        v9 = (v18 + 8 * v19);
        v8 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;

        v7 = v14;
      }

      v21 = __OFSUB__(v8--, 1);
      if (v21)
      {
        break;
      }

      *v9++ = v10;
      result = sub_1D1670104();
      if (v28)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D1632BE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D1632CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D1636EC4(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D161E668(a3, v25 - v10);
  v12 = sub_1D166FD84();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D161DF10(v11);
  }

  else
  {
    sub_1D166FD74();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D166FD14();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D166FA94() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1D161DF10(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D161DF10(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D1632F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D1636EC4(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D161E668(a3, v25 - v10);
  v12 = sub_1D166FD84();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D161DF10(v11);
  }

  else
  {
    sub_1D166FD74();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D166FD14();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_1D166FA94() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1D1636EC4(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1D161DF10(v25[0]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D161DF10(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_1D1636EC4(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D1633290()
{
  v1[5] = v0;
  v1[6] = swift_getObjectType();
  v2 = sub_1D166F4E4();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_1D1633388;

  return sub_1D163367C();
}

uint64_t sub_1D1633388(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = a2;
  v3[11] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D1633490, 0, 0);
}

uint64_t sub_1D1633490(uint64_t a1)
{
  v20 = v1;
  v2 = v1[11];
  if (v2 >> 60 == 15 || (v3 = v1[3], v4 = sub_1D1633C1C(v3, v1[11]), sub_1D163722C(v3, v2), !v4))
  {
    sub_1D166F4C4();
    v6 = sub_1D166F4D4();
    v7 = sub_1D166FF44();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v1[8];
    v9 = v1[9];
    v11 = v1[7];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = sub_1D1670754();
      v16 = sub_1D15F7A30(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1D15E6000, v6, v7, "%s Failed to get the incompatibility result back from cache, getter returned nil.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1D388E250](v13, -1, -1);
      MEMORY[0x1D388E250](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);
    v4 = 0;
  }

  else
  {
    v5 = v1[5] + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;

    os_unfair_lock_lock(v5);
    *(v5 + 8) = v4;

    os_unfair_lock_unlock(v5);
  }

  v17 = v1[1];

  return v17(v4);
}

uint64_t sub_1D163367C()
{
  v1[20] = v0;
  v1[21] = swift_getObjectType();
  v2 = sub_1D166F4E4();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1633748, 0, 0);
}

uint64_t sub_1D1633748()
{
  v1 = *(v0[20] + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_keyValueDomain);
  v2 = *MEMORY[0x1E69A3A00];
  v0[25] = *MEMORY[0x1E69A3A00];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1633884;
  v3 = swift_continuation_init();
  sub_1D1637240(0);
  v0[17] = v4;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D1634518;
  v0[13] = &block_descriptor_53;
  v0[14] = v3;
  [v1 dataForKey:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1633884()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1D1633A08;
  }

  else
  {
    v2 = sub_1D1633994;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1633994()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_1D1633A08(uint64_t a1)
{
  v25 = v1;
  v3 = v1[25];
  v2 = v1[26];
  swift_willThrow();

  sub_1D166F4C4();
  v4 = v2;
  v5 = sub_1D166F4D4();
  v6 = sub_1D166FF44();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[26];
  v10 = v1[23];
  v9 = v1[24];
  v11 = v1[22];
  if (v7)
  {
    v23 = v1[22];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v12 = 136315394;
    v15 = sub_1D1670754();
    v22 = v9;
    v17 = sub_1D15F7A30(v15, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_1D15E6000, v5, v6, "[%s] Error asynchronously fetching the medications incompatibility cache from the KVD. Error: %@", v12, 0x16u);
    sub_1D15FADE4(v13);
    MEMORY[0x1D388E250](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1D388E250](v14, -1, -1);
    MEMORY[0x1D388E250](v12, -1, -1);

    (*(v10 + 8))(v22, v23);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v1[1];

  return v20(0, 0xF000000000000000);
}

uint64_t sub_1D1633C1C(uint64_t a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1D166F4E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  sub_1D15EE5A8(0, &qword_1EC63DF30, 0x1E69A3AE8);
  v8 = [v7 hk:swift_getObjCClassFromMetadata() typesForArrayOf:?];
  sub_1D166FE04();

  v9 = sub_1D166FDF4();

  v10 = sub_1D166F0D4();
  v25[0] = 0;
  v11 = [v6 unarchivedObjectOfClasses:v9 fromData:v10 error:v25];

  if (v11)
  {
    v12 = v25[0];
    sub_1D1670164();
    swift_unknownObjectRelease();
    sub_1D163705C(0, &qword_1EC63DF28, &qword_1EC63DF30, 0x1E69A3AE8, MEMORY[0x1E69E62F8]);
    if (swift_dynamicCast())
    {
      return v24[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = v25[0];
    v15 = sub_1D166F094();

    swift_willThrow();
    sub_1D166F4C4();
    v16 = v15;
    v17 = sub_1D166F4D4();
    v18 = sub_1D166FF44();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_1D15F7A30(1635017028, 0xE400000000000000, v25);
      *(v19 + 12) = 2112;
      v22 = v15;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v23;
      *v20 = v23;
      _os_log_impl(&dword_1D15E6000, v17, v18, "%s Failed to unserialize the incompatibility cache data to an object array, returning nil. %@", v19, 0x16u);
      sub_1D15FADE4(v20);
      MEMORY[0x1D388E250](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1D388E250](v21, -1, -1);
      MEMORY[0x1D388E250](v19, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

char *MedicationsScheduleIncompatibilityCache.__allocating_init(healthStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D1636914(a1);

  return v4;
}

char *MedicationsScheduleIncompatibilityCache.init(healthStore:)(void *a1)
{
  v2 = sub_1D1636914(a1);

  return v2;
}

uint64_t sub_1D163404C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D15FFFCC;

  return sub_1D16340DC();
}

uint64_t sub_1D16340DC()
{
  *(v1 + 72) = v0;
  *(v1 + 80) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1D163414C, 0, 0);
}

uint64_t sub_1D163414C()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *(v1 + 16) = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  sub_1D1636FD8(0);
  *v2 = v0;
  v2[1] = sub_1D1634248;

  return MEMORY[0x1EEE6DDE0](v0 + 64, 0, 0, 0xD000000000000023, 0x80000001D1677CD0, sub_1D1636FD0, v1, v3);
}

uint64_t sub_1D1634248()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1634360, 0, 0);
}

uint64_t sub_1D1634360()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[10];
    v4 = v2 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues));
    *(v4 + 8) = v1;

    os_unfair_lock_unlock(v4);
    v5 = _s27HealthMedicationsExperience0B28ScheduleIncompatibilityCacheC010serializedF06result10Foundation4DataVSaySo012HKMedicationdE6ResultCG_tF_0(v1);
    v7 = v6;

    v8 = *(v2 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_keyValueDomain);
    v9 = sub_1D166F0D4();
    v10 = *MEMORY[0x1E69A3A00];
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    v0[6] = sub_1D16373FC;
    v0[7] = v11;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D15FABB0;
    v0[5] = &block_descriptor_43;
    v12 = _Block_copy(v0 + 2);
    v13 = v10;

    [v8 setData:v9 forKey:v13 completion:v12];
    _Block_release(v12);

    sub_1D16370C4(v5, v7);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D1634518(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = sub_1D166F0E4();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1D1634604(int a1, void *a2, uint64_t a3)
{
  v5 = sub_1D166F4E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F4C4();
  v9 = a2;
  v10 = sub_1D166F4D4();
  v11 = sub_1D166FF64();

  if (os_log_type_enabled(v10, v11))
  {
    v26 = v5;
    v12 = swift_slowAlloc();
    v25 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v13 = 136315650;
    v16 = sub_1D1670754();
    v18 = sub_1D15F7A30(v16, v17, &v27);

    *(v13 + 4) = v18;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v25 & 1;
    *(v13 + 18) = 2112;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v23 = v26;
    *(v13 + 20) = v20;
    *v14 = v21;
    _os_log_impl(&dword_1D15E6000, v10, v11, "[%s] Set incompatibility cache with success: %{BOOL}d, error: %@", v13, 0x1Cu);
    sub_1D15FADE4(v14);
    MEMORY[0x1D388E250](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1D388E250](v15, -1, -1);
    MEMORY[0x1D388E250](v13, -1, -1);

    return (*(v6 + 8))(v8, v23);
  }

  else
  {

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1D1634854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v29 = a1;
  v27 = sub_1D166F4E4();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1637118(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v12 = [v11 primaryAppleAccount];
  if (v12 && (v13 = v12, v14 = [objc_allocWithZone(MEMORY[0x1E698B8A0]) initWithAccount_], v13, v14))
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69A3AD8]) initWithHealthStore:*(a2 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_healthStore) accountStore:v11 deviceRequest:v14];
    (*(v9 + 16))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v8);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
    aBlock[4] = sub_1D1637180;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1634E98;
    aBlock[3] = &block_descriptor_49;
    v18 = _Block_copy(aBlock);

    [v15 resolveIncompatibleSchedulesWithCompletion_];
    _Block_release(v18);
  }

  else
  {
    sub_1D166F4C4();
    v19 = sub_1D166F4D4();
    v20 = sub_1D166FF34();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      v23 = sub_1D1670754();
      v25 = sub_1D15F7A30(v23, v24, aBlock);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1D15E6000, v19, v20, "[%s] Unable to create AADeviceListRequest", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1D388E250](v22, -1, -1);
      MEMORY[0x1D388E250](v21, -1, -1);
    }

    (*(v4 + 8))(v6, v27);
    aBlock[0] = 0;
    sub_1D166FD34();
  }
}

uint64_t sub_1D1634C30(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D166F4E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v26 = a1;
    sub_1D1637118(0);
  }

  else
  {
    sub_1D166F4C4();
    v10 = a2;
    v11 = sub_1D166F4D4();
    v12 = sub_1D166FF34();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v13 = 136315394;
      v14 = sub_1D1670754();
      v16 = sub_1D15F7A30(v14, v15, &v26);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2112;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v13 + 14) = v18;
      v20 = v24;
      *v24 = v19;
      _os_log_impl(&dword_1D15E6000, v11, v12, "[%s] IncompatibilityResult is nil. Error: '%@'", v13, 0x16u);
      sub_1D15FADE4(v20);
      MEMORY[0x1D388E250](v20, -1, -1);
      v21 = v25;
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1D388E250](v21, -1, -1);
      MEMORY[0x1D388E250](v13, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v26 = 0;
    sub_1D1637118(0);
  }

  return sub_1D166FD34();
}

uint64_t sub_1D1634E98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D15EE5A8(0, &qword_1EC63DF30, 0x1E69A3AE8);
    v4 = sub_1D166FC54();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t _s27HealthMedicationsExperience0B28ScheduleIncompatibilityCacheC010serializedF06result10Foundation4DataVSaySo012HKMedicationdE6ResultCG_tF_0(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D166F4E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  sub_1D15EE5A8(0, &qword_1EC63DF30, 0x1E69A3AE8);
  v6 = sub_1D166FC44();
  v25[0] = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:v25];

  v8 = v25[0];
  if (v7)
  {
    v9 = sub_1D166F0E4();
  }

  else
  {
    v10 = v8;
    v11 = sub_1D166F094();

    swift_willThrow();
    sub_1D166F4C4();
    v12 = v11;
    v13 = sub_1D166F4D4();
    v14 = sub_1D166FF44();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25[0] = v24;
      *v15 = 136315394;
      sub_1D163705C(0, &qword_1EC63DF28, &qword_1EC63DF30, 0x1E69A3AE8, MEMORY[0x1E69E62F8]);
      v17 = sub_1D1670754();
      v19 = sub_1D15F7A30(v17, v18, v25);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2112;
      v20 = v11;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v21;
      *v16 = v21;
      _os_log_impl(&dword_1D15E6000, v13, v14, "%s Failed to serialize the incompatibility cache, returning empty data object. %@", v15, 0x16u);
      sub_1D15FADE4(v16);
      MEMORY[0x1D388E250](v16, -1, -1);
      v22 = v24;
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1D388E250](v22, -1, -1);
      MEMORY[0x1D388E250](v15, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return v9;
}

uint64_t MedicationsScheduleIncompatibilityCache.incompatibilityResult(for:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D16352F8;

  return sub_1D1633290();
}

{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D16356F8;

  return sub_1D1633290();
}

uint64_t sub_1D16352F8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D16353F8, 0, 0);
}

uint64_t sub_1D16353F8()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
    {
      v3 = 0;
      v4 = *(v0 + 32);
      v24 = v4 & 0xFFFFFFFFFFFFFF8;
      v25 = v4 & 0xC000000000000001;
      v5 = &property descriptor for MedicationView.config;
      while (1)
      {
        if (v25)
        {
          v6 = MEMORY[0x1D388D4D0](v3, v1);
        }

        else
        {
          if (v3 >= *(v24 + 16))
          {
            goto LABEL_30;
          }

          v6 = *(v1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v9 = [v6 schedule];
        v10 = [v9 v5[193]];

        if (v10)
        {
          v26 = sub_1D166FA04();
          v12 = v11;
        }

        else
        {
          v26 = 0;
          v12 = 0;
        }

        v13 = [*(v0 + 16) v5[193]];
        if (!v13)
        {
          if (!v12)
          {
            goto LABEL_27;
          }

LABEL_6:

LABEL_7:

          goto LABEL_8;
        }

        v27 = v7;
        v14 = v5;
        v15 = v1;
        v16 = i;
        v17 = v13;
        v18 = sub_1D166FA04();
        v20 = v19;

        i = v16;
        v1 = v15;
        v5 = v14;
        if (!v12)
        {
          v7 = v27;
          if (!v20)
          {
            goto LABEL_27;
          }

          goto LABEL_7;
        }

        v7 = v27;
        if (!v20)
        {
          goto LABEL_6;
        }

        if (v26 == v18 && v12 == v20)
        {

LABEL_27:

          goto LABEL_34;
        }

        v21 = sub_1D16705D4();

        if (v21)
        {

          v7 = v27;
          goto LABEL_34;
        }

LABEL_8:
        ++v3;
        if (v8 == i)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_32:
  }

  v7 = 0;
LABEL_34:
  v22 = *(v0 + 8);

  return v22(v7);
}

uint64_t sub_1D16356F8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D16357F8, 0, 0);
}

uint64_t sub_1D16357F8()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
    {
      v3 = 0;
      v4 = *(v23 + 32);
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      v22 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v22)
        {
          v5 = MEMORY[0x1D388D4D0](v3, v1);
        }

        else
        {
          if (v3 >= *(v21 + 16))
          {
            goto LABEL_23;
          }

          v5 = *(v1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v8 = [v5 schedule];
        v9 = [v8 medicationIdentifier];

        if (v9)
        {
          v10 = sub_1D166FA04();
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0;
        }

        v13 = [*(v23 + 16) semanticIdentifier];
        v14 = [v13 stringValue];

        v15 = sub_1D166FA04();
        v17 = v16;

        if (v12)
        {
          if (v10 == v15 && v12 == v17)
          {

LABEL_21:

            goto LABEL_27;
          }

          v18 = sub_1D16705D4();

          if (v18)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        ++v3;
        if (v7 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
  }

  v6 = 0;
LABEL_27:
  v19 = *(v23 + 8);

  return v19(v6);
}

void *MedicationsScheduleIncompatibilityCache.subscript.getter(void *a1)
{
  v2 = v1 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 8);

  os_unfair_lock_unlock(v2);
  if (v3 >> 62)
  {
    goto LABEL_28;
  }

  v23 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v23)
  {
    while (1)
    {
      v4 = 0;
      v22 = v3 & 0xFFFFFFFFFFFFFF8;
      v5 = &property descriptor for MedicationView.config;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1D388D4D0](v4, v3);
        }

        else
        {
          if (v4 >= *(v22 + 16))
          {
            goto LABEL_27;
          }

          v7 = *(v3 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v10 = [v7 schedule];
        v11 = [v10 v5[193]];

        if (v11)
        {
          v12 = sub_1D166FA04();
          v14 = v13;
        }

        else
        {
          v12 = 0;
          v14 = 0;
        }

        v15 = v5;
        v16 = [a1 v5[193]];
        if (!v16)
        {
          if (!v14)
          {
            goto LABEL_25;
          }

LABEL_21:

          goto LABEL_6;
        }

        v17 = v16;
        v18 = sub_1D166FA04();
        v20 = v19;

        if (v14)
        {
          if (!v20)
          {
            goto LABEL_21;
          }

          if (v12 == v18 && v14 == v20)
          {

            return v8;
          }

          v6 = sub_1D16705D4();

          if (v6)
          {
LABEL_25:

            return v8;
          }
        }

        else
        {
          if (!v20)
          {
            goto LABEL_25;
          }
        }

LABEL_6:
        ++v4;
        v5 = v15;
        if (v9 == v23)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      if (sub_1D1670224() >= 1)
      {
        v23 = sub_1D1670224();
        if (v23)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_30:

  return 0;
}

{
  v2 = v1 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 8);

  os_unfair_lock_unlock(v2);
  if (v3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
  {
    v4 = 0;
    v20 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D388D4D0](v4, v3);
      }

      else
      {
        if (v4 >= *(v20 + 16))
        {
          goto LABEL_21;
        }

        v5 = *(v3 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 schedule];
      v9 = [v8 medicationIdentifier];

      if (v9)
      {
        v10 = sub_1D166FA04();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v13 = [a1 semanticIdentifier];
      v14 = [v13 stringValue];

      v15 = sub_1D166FA04();
      v17 = v16;

      if (v12)
      {
        if (v10 == v15 && v12 == v17)
        {

          return v6;
        }

        v18 = sub_1D16705D4();

        if (v18)
        {

          return v6;
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    if (sub_1D1670224() < 1)
    {
      break;
    }
  }

LABEL_24:

  return 0;
}

void MedicationsScheduleIncompatibilityCache.addHandlerForCacheUpdate(handler:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;
  os_unfair_lock_lock(v5);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_1D15E9178(v6, v7);

  os_unfair_lock_unlock(v5);
}

void MedicationsScheduleIncompatibilityCache.setCache(data:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = *(v2 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_keyValueDomain);
  v5 = sub_1D166F0D4();
  v6 = *MEMORY[0x1E69A3A00];
  v7 = swift_allocObject();
  *(v7 + 16) = ObjectType;
  v10[4] = sub_1D1636C90;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D15FABB0;
  v10[3] = &block_descriptor_7;
  v8 = _Block_copy(v10);
  v9 = v6;

  [v4 setData:v5 forKey:v9 completion:v8];
  _Block_release(v8);
}

uint64_t MedicationsScheduleIncompatibilityCache.getCurrentCacheValue()()
{
  v1 = v0 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

id MedicationsScheduleIncompatibilityCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicationsScheduleIncompatibilityCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MedicationsScheduleIncompatibilityCache.scheduleControl(_:didAddOrModify:)()
{
  sub_1D1636EC4(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D166FD84();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_1D1632CAC(0, 0, v3, &unk_1D1674190, v5);
}

uint64_t sub_1D163635C()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v2();
  }

  os_unfair_lock_unlock(v1);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1D1636420;

  return sub_1D16340DC();
}

uint64_t sub_1D1636420()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D163662C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D16373F8;

  return v6(a1);
}

uint64_t sub_1D1636724(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D163681C;

  return v6(a1);
}

uint64_t sub_1D163681C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_1D1636914(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1D1636EC4(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v27 - v5;
  v6 = sub_1D166F7F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v1[OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_mutableValues];
  *v10 = 0;
  *(v10 + 1) = MEMORY[0x1E69E7CC0];
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_healthStore] = a1;
  v11 = *MEMORY[0x1E69A3A08];
  v12 = qword_1EDEC9ED8;
  v13 = a1;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v15 = sub_1D166F9C4();
  v16 = [v14 initWithCategory:v11 domainName:v15 healthStore:v13];

  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_keyValueDomain] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x1E69A3AE0]) initWithHealthStore_];
  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_scheduleControl] = v17;
  v29.receiver = v1;
  v29.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v29, sel_init);
  v19 = *&v18[OBJC_IVAR____TtC27HealthMedicationsExperience39MedicationsScheduleIncompatibilityCache_scheduleControl];
  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  (*(v7 + 104))(v9, *MEMORY[0x1E69E7FA0], v6);
  v20 = v18;
  v21 = v19;
  v22 = sub_1D166FFF4();
  (*(v7 + 8))(v9, v6);
  [v21 registerObserver:v20 queue:v22];

  v23 = sub_1D166FD84();
  v24 = v28;
  (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v20;
  sub_1D1632CAC(0, 0, v24, &unk_1D16742A0, v25);

  return v20;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1636CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D1600968;

  return sub_1D163633C(a1, v4, v5, v6);
}

uint64_t get_enum_tag_for_layout_string_Iegh_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D1636E0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D1600968;

  return sub_1D1636724(a1, v4);
}

void sub_1D1636EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D16700E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1636F18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15FFFCC;

  return sub_1D1636724(a1, v4);
}

void sub_1D1636FD8(uint64_t a1)
{
  if (!qword_1EC63DF20)
  {
    sub_1D163705C(255, &qword_1EC63DF28, &qword_1EC63DF30, 0x1E69A3AE8, MEMORY[0x1E69E62F8]);
    v1 = sub_1D16700E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DF20);
    }
  }
}

void sub_1D163705C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D16370C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_1D1637118(uint64_t a1)
{
  if (!qword_1EC63DF38)
  {
    sub_1D1636FD8(255);
    v1 = sub_1D166FD44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DF38);
    }
  }
}

uint64_t sub_1D1637180(void *a1, void *a2)
{
  sub_1D1637118(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D1634C30(a1, a2, v2 + v7, v8);
}

uint64_t sub_1D163722C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D16370C4(result, a2);
  }

  return result;
}

void sub_1D1637240(uint64_t a1)
{
  if (!qword_1EC63DF50)
  {
    sub_1D16372D4(255, &qword_1EC63DF58, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    sub_1D15F9218();
    v1 = sub_1D166FDD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DF50);
    }
  }
}

void sub_1D16372D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D163733C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D15FFFCC;

  return sub_1D163404C();
}

unint64_t sub_1D16374BC(void *a1)
{
  v145 = *v1;
  v4 = sub_1D166F4E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D166F174();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 healthDataSource];
  if (v12)
  {
    v13 = v12;
    v143 = v4;
    v144 = v2;
    v14 = objc_allocWithZone(MEMORY[0x1E69A3AB0]);
    v142[1] = v13;
    v15 = [v14 initWithDataSource_];
    v16 = sub_1D162B684(MEMORY[0x1E69E7CC0]);
    v153 = v16;
    v17 = sub_1D166FA04();
    v19 = v18;
    v146 = v15;
    v20 = [v15 biologicalSex];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1D166FA04();
      v24 = v23;

      *(&v152 + 1) = MEMORY[0x1E69E6158];
      if (v24)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(&v152 + 1) = MEMORY[0x1E69E6158];
    }

    v22 = sub_1D166FA04();
    v24 = v31;
LABEL_9:
    v32 = v143;
    *&v151 = v22;
    *(&v151 + 1) = v24;
    sub_1D15FA184(&v151, &v149);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = v16;
    sub_1D1608EE4(&v149, v17, v19, isUniquelyReferenced_nonNull_native);

    v153 = v148;
    v34 = sub_1D166FA04();
    v36 = v35;
    sub_1D166F164();
    v37 = sub_1D166F124();
    (*(v9 + 8))(v11, v8);
    v38 = v146;
    v39 = [v146 bucketedUserAgeForCurrentDate_];

    *(&v152 + 1) = sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
    *&v151 = v39;
    sub_1D15FA184(&v151, &v149);
    v40 = v153;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v40;
    sub_1D1608EE4(&v149, v34, v36, v41);

    v42 = v148;
    v153 = v148;
    v43 = sub_1D166FA04();
    v45 = v44;
    v46 = [v38 activePairedWatchProductType];
    if (v46)
    {
      v47 = v46;
      v48 = sub_1D166FA04();
      v50 = v49;

      *(&v152 + 1) = MEMORY[0x1E69E6158];
      v51 = v147;
      if (v50)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(&v152 + 1) = MEMORY[0x1E69E6158];
      v51 = v147;
    }

    v48 = sub_1D166FA04();
    v50 = v52;
LABEL_14:
    *&v151 = v48;
    *(&v151 + 1) = v50;
    sub_1D15FA184(&v151, &v149);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v42;
    sub_1D1608EE4(&v149, v43, v45, v53);

    v54 = v148;
    v55 = HKStringFromMedicationListOnboardingProvenanceType();
    v56 = sub_1D166FA04();
    v58 = v57;

    v59 = MEMORY[0x1E69E6158];
    *(&v152 + 1) = MEMORY[0x1E69E6158];
    *&v151 = v56;
    *(&v151 + 1) = v58;
    sub_1D15FA184(&v151, &v149);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v54;
    sub_1D1608EE4(&v149, 0x6E616E65766F7270, 0xEA00000000006563, v60);
    v61 = v148;
    v62 = HKStringFromMedicationListOnboardingStepType();
    v63 = sub_1D166FA04();
    v65 = v64;

    *(&v152 + 1) = v59;
    *&v151 = v63;
    *(&v151 + 1) = v65;
    sub_1D15FA184(&v151, &v149);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v61;
    sub_1D1608EE4(&v149, 1885697139, 0xE400000000000000, v66);
    v67 = v148;
    v68 = *(v51 + 41);
    v69 = MEMORY[0x1E69E6370];
    *(&v152 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v151) = v68;
    sub_1D15FA184(&v151, &v149);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v67;
    sub_1D1608EE4(&v149, 0xD000000000000010, 0x80000001D1677D90, v70);
    v71 = v148;
    [v146 isOntologySupportedRegion];
    v72 = sub_1D166FD04();
    v73 = sub_1D15EE5A8(0, &qword_1EDEC9D80, 0x1E69E58C0);
    *(&v152 + 1) = v73;
    *&v151 = v72;
    sub_1D15FA184(&v151, &v149);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v71;
    sub_1D1608EE4(&v149, 0xD000000000000019, 0x80000001D1677EE0, v74);
    v75 = v148;
    v153 = v148;
    if (*(v51 + 57) == 2)
    {
      sub_1D162B160(0xD00000000000001FLL, 0x80000001D1677DD0, &v151);
      sub_1D162B804(&v151);
    }

    else
    {
      v76 = sub_1D166FD04();
      *(&v152 + 1) = v73;
      *&v151 = v76;
      sub_1D15FA184(&v151, &v149);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v148 = v75;
      sub_1D1608EE4(&v149, 0xD00000000000001FLL, 0x80000001D1677DD0, v77);
      v153 = v148;
    }

    v78 = MEMORY[0x1E69E6530];
    if (*(v51 + 72))
    {
      sub_1D162B160(0xD000000000000013, 0x80000001D1677F00, &v151);
      sub_1D162B804(&v151);
    }

    else
    {
      v79 = *(v51 + 64);
      *(&v152 + 1) = MEMORY[0x1E69E6530];
      *&v151 = v79;
      sub_1D15FA184(&v151, &v149);
      v80 = v153;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v148 = v80;
      sub_1D1608EE4(&v149, 0xD000000000000013, 0x80000001D1677F00, v81);
      v153 = v148;
    }

    if (*(v51 + 88))
    {
      sub_1D162B160(0xD00000000000001DLL, 0x80000001D1677F20, &v151);
      sub_1D162B804(&v151);
    }

    else
    {
      v82 = *(v51 + 80);
      *(&v152 + 1) = v78;
      *&v151 = v82;
      sub_1D15FA184(&v151, &v149);
      v83 = v153;
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v148 = v83;
      sub_1D1608EE4(&v149, 0xD00000000000001DLL, 0x80000001D1677F20, v84);
      v153 = v148;
    }

    if (*(v51 + 105) == 2)
    {
      sub_1D162B160(0xD000000000000018, 0x80000001D1677E30, &v151);
      sub_1D162B804(&v151);
    }

    else
    {
      v85 = sub_1D166FD04();
      *(&v152 + 1) = v73;
      *&v151 = v85;
      sub_1D15FA184(&v151, &v149);
      v86 = v153;
      v87 = swift_isUniquelyReferenced_nonNull_native();
      v148 = v86;
      sub_1D1608EE4(&v149, 0xD000000000000018, 0x80000001D1677E30, v87);
      v153 = v148;
    }

    if (*(v51 + 120) == 1)
    {
      v88 = MEMORY[0x1E69E6158];
      *(&v152 + 1) = MEMORY[0x1E69E6158];
    }

    else
    {
      v89 = HKStringFromHKMedicationListOnboardingAlgorithmType();
      v90 = sub_1D166FA04();
      v92 = v91;

      v93 = v92;
      v88 = MEMORY[0x1E69E6158];
      *(&v152 + 1) = MEMORY[0x1E69E6158];
      if (v93)
      {
        v94 = v90;
        goto LABEL_31;
      }
    }

    v94 = sub_1D166FA04();
LABEL_31:
    *&v151 = v94;
    *(&v151 + 1) = v93;
    sub_1D15FA184(&v151, &v149);
    v95 = v153;
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v95;
    sub_1D1608EE4(&v149, 0x687469726F676C61, 0xED0000657079546DLL, v96);
    v97 = v148;
    v153 = v148;
    if (*(v51 + 104))
    {
      sub_1D162B160(0xD00000000000001CLL, 0x80000001D1677E10, &v151);
      sub_1D162B804(&v151);
    }

    else
    {
      v98 = *(v51 + 96);
      *(&v152 + 1) = v78;
      *&v151 = v98;
      sub_1D15FA184(&v151, &v149);
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v148 = v97;
      sub_1D1608EE4(&v149, 0xD00000000000001CLL, 0x80000001D1677E10, v99);
      v153 = v148;
    }

    if (*(v51 + 56) == 1)
    {
      *(&v152 + 1) = v88;
    }

    else
    {
      v100 = HKStringFromMedicationListOnboardingDetailsEntryType();
      v101 = sub_1D166FA04();
      v103 = v102;

      v104 = v103;
      v88 = MEMORY[0x1E69E6158];
      *(&v152 + 1) = MEMORY[0x1E69E6158];
      if (v104)
      {
        v105 = v101;
        goto LABEL_39;
      }
    }

    v105 = sub_1D166FA04();
LABEL_39:
    *&v151 = v105;
    *(&v151 + 1) = v104;
    sub_1D15FA184(&v151, &v149);
    v106 = v153;
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v106;
    sub_1D1608EE4(&v149, 0xD000000000000015, 0x80000001D1677DB0, v107);
    v108 = v148;
    if (*(v51 + 40) == 1)
    {
      *(&v152 + 1) = v88;
    }

    else
    {
      v109 = HKStringFromMedicationListOnboardingActionType();
      v110 = sub_1D166FA04();
      v112 = v111;

      *(&v152 + 1) = MEMORY[0x1E69E6158];
      if (v112)
      {
        v113 = v112;
        v114 = v110;
        goto LABEL_44;
      }
    }

    v114 = sub_1D166FA04();
LABEL_44:
    *&v151 = v114;
    *(&v151 + 1) = v113;
    sub_1D15FA184(&v151, &v149);
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v108;
    sub_1D1608EE4(&v149, 0x6E6F69746361, 0xE600000000000000, v115);
    v117 = v147;
    v116 = v148;
    v118 = *(v147 + 121);
    *(&v152 + 1) = v69;
    LOBYTE(v151) = v118;
    sub_1D15FA184(&v151, &v149);
    v119 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v116;
    sub_1D1608EE4(&v149, 0xD000000000000016, 0x80000001D1677E60, v119);
    v120 = v148;
    v153 = v148;
    if (*(v117 + 136) == 1)
    {
      v151 = 0u;
      v152 = 0u;
    }

    else
    {
      v121 = HKStringFromMedicationScheduleType();
      v122 = sub_1D166FA04();
      v124 = v123;

      v150 = MEMORY[0x1E69E6158];
      *&v149 = v122;
      *(&v149 + 1) = v124;
      sub_1D15FA184(&v149, &v151);
      if (*(&v152 + 1))
      {
        sub_1D15FA184(&v151, &v149);
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v148 = v120;
        sub_1D1608EE4(&v149, 0x656C756465686373, 0xEC00000065707954, v125);
        v126 = v148;
LABEL_49:
        v127 = sub_1D166FD04();
        *(&v152 + 1) = v73;
        *&v151 = v127;
        sub_1D15FA184(&v151, &v149);
        v128 = swift_isUniquelyReferenced_nonNull_native();
        v148 = v126;
        sub_1D1608EE4(&v149, 0xD000000000000013, 0x80000001D1677E90, v128);
        v9 = v148;
        v153 = v148;
        if (qword_1EDECB358 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v32, qword_1EDECB360);
        v129 = sub_1D166F4D4();
        v130 = sub_1D166FF64();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          *&v151 = v132;
          *v131 = 136315394;
          v133 = sub_1D1670754();
          v135 = sub_1D15F7A30(v133, v134, &v151);

          *(v131 + 4) = v135;
          *(v131 + 12) = 2080;

          v136 = sub_1D166F954();
          v138 = v137;

          v139 = sub_1D15F7A30(v136, v138, &v151);

          *(v131 + 14) = v139;
          _os_log_impl(&dword_1D15E6000, v129, v130, "%s IHA gated event payload: %s", v131, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D388E250](v132, -1, -1);
          MEMORY[0x1D388E250](v131, -1, -1);
        }

        swift_unknownObjectRelease();
        return v9;
      }
    }

    sub_1D162B804(&v151);
    sub_1D162B160(0x656C756465686373, 0xEC00000065707954, &v149);
    sub_1D162B804(&v149);
    v126 = v153;
    goto LABEL_49;
  }

  sub_1D166F4C4();
  v25 = sub_1D166F4D4();
  v26 = sub_1D166FF54();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v151 = v28;
    *v27 = 136446210;
    v29 = sub_1D1670754();
    v9 = sub_1D15F7A30(v29, v30, &v151);

    *(v27 + 4) = v9;
    _os_log_impl(&dword_1D15E6000, v25, v26, "[%{public}s] Tried to create a payload with a dataSource containing nil healthDataSource", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1D388E250](v28, -1, -1);
    MEMORY[0x1D388E250](v27, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_1D16384C4();
  swift_allocError();
  *v140 = 0xD000000000000020;
  v140[1] = 0x80000001D1677EB0;
  swift_willThrow();
  return v9;
}