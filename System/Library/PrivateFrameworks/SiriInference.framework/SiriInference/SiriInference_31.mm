uint64_t sub_1DD5CC110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __dst[0] = a1;
  __dst[1] = a2;
  __src[0] = 45;
  __src[1] = 0xE100000000000000;
  sub_1DD3B7F10();
  v3 = sub_1DD640638();
  if (qword_1ECCDB140 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    swift_beginAccess();
    memcpy(__dst, &xmmword_1ECCDF598, 0x80uLL);
    memcpy(__src, &xmmword_1ECCDF598, sizeof(__src));
    v4 = v3[2];
    if (!v4)
    {
      break;
    }

    sub_1DD400BFC(__dst, v35);
    v5 = v3 + 5;
    while (1)
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v35[0] = v7;
      v35[1] = v6;
      v34[0] = 0x3D74726F7073;
      v34[1] = 0xE600000000000000;

      if ((sub_1DD6406D8() & 1) == 0)
      {
        goto LABEL_7;
      }

      v35[0] = v7;
      v35[1] = v6;
      v34[0] = 61;
      v34[1] = 0xE100000000000000;
      v3 = v35;
      v8 = sub_1DD640638();
      if (v8[2] < 2uLL)
      {
        break;
      }

      v10 = v8[6];
      v9 = v8[7];

      __src[0] = v10;
      __src[1] = v9;
LABEL_7:
      v35[0] = v7;
      v35[1] = v6;
      v34[0] = 0x3D65756761656CLL;
      v34[1] = 0xE700000000000000;
      if (sub_1DD6406D8())
      {
        v35[0] = v7;
        v35[1] = v6;
        v34[0] = 61;
        v34[1] = 0xE100000000000000;
        v3 = v35;
        v11 = sub_1DD640638();
        if (v11[2] < 2uLL)
        {
          goto LABEL_29;
        }

        v13 = v11[6];
        v12 = v11[7];

        __src[2] = v13;
        __src[3] = v12;
      }

      v35[0] = v7;
      v35[1] = v6;
      v34[0] = 0x3D6D616574;
      v34[1] = 0xE500000000000000;
      if (sub_1DD6406D8())
      {
        v35[0] = v7;
        v35[1] = v6;
        v34[0] = 61;
        v34[1] = 0xE100000000000000;
        v3 = v35;
        v14 = sub_1DD640638();
        if (v14[2] < 2uLL)
        {
          goto LABEL_30;
        }

        v16 = v14[6];
        v15 = v14[7];

        __src[4] = v16;
        __src[5] = v15;
      }

      v35[0] = v7;
      v35[1] = v6;
      v34[0] = 0x3D6574656C687461;
      v34[1] = 0xE800000000000000;
      if (sub_1DD6406D8())
      {
        v35[0] = v7;
        v35[1] = v6;
        v34[0] = 61;
        v34[1] = 0xE100000000000000;
        v3 = v35;
        v17 = sub_1DD640638();
        if (v17[2] < 2uLL)
        {
          goto LABEL_31;
        }

        v19 = v17[6];
        v18 = v17[7];

        __src[6] = v19;
        __src[7] = v18;
      }

      v35[0] = v7;
      v35[1] = v6;
      v34[0] = 0x3D6469716D616574;
      v34[1] = 0xE800000000000000;
      if (sub_1DD6406D8())
      {
        v35[0] = v7;
        v35[1] = v6;
        v34[0] = 61;
        v34[1] = 0xE100000000000000;
        v3 = sub_1DD640638();

        if (v3[2] < 2uLL)
        {
          goto LABEL_32;
        }

        v21 = v3[6];
        v20 = v3[7];

        __src[12] = v21;
        __src[13] = v20;
      }

      else
      {
      }

      v5 += 2;
      if (!--v4)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  sub_1DD400BFC(__dst, v35);
LABEL_23:

  if (qword_1ECCDB0D0 != -1)
  {
    swift_once();
  }

  v22 = sub_1DD63F9F8();
  __swift_project_value_buffer(v22, qword_1ECD0DDD8);
  memcpy(v35, __src, sizeof(v35));
  sub_1DD400BFC(v35, v34);
  v23 = sub_1DD63F9D8();
  v24 = sub_1DD640368();
  sub_1DD400C58(v35);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32[0] = v26;
    *v25 = 136315138;
    memcpy(v34, v35, sizeof(v34));
    sub_1DD400BFC(v35, v33);
    v27 = sub_1DD63FE38();
    v29 = sub_1DD39565C(v27, v28, v32);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1DD38D000, v23, v24, "convertUUIDToSportsItem(). Converted UUID to SportsItem=%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1E12B3DA0](v26, -1, -1);
    MEMORY[0x1E12B3DA0](v25, -1, -1);
  }

  swift_beginAccess();
  memcpy(v33, __src, sizeof(v33));
  memcpy(a3, __src, 0x80uLL);
  memcpy(v34, __src, sizeof(v34));
  sub_1DD400BFC(v33, v32);
  return sub_1DD400C58(v34);
}

uint64_t sub_1DD5CC768(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
  sub_1DD51D290();

  return sub_1DD63FC68();
}

void sub_1DD5CC7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA60, &qword_1DD649F18);

  JUMPOUT(0x1E12B2430);
}

uint64_t sub_1DD5CC814(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD400BFC(__src, &v3);
  return sub_1DD63FE38();
}

uint64_t sub_1DD5CC868(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_1DD640CA8();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_1DD640158();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_1DD5CC984(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = v9[2];
      v13 = v8;
      v14 = v7;
      do
      {
        v15 = *(v14 + 16);
        if (v12 == v15)
        {
          result = *v14;
          if (*v14 == *&v10 && *(v14 + 8) == v11)
          {
            break;
          }

          result = sub_1DD640CD8();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        else if (v15 >= v12)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *(v14 + 24);
        v11 = *(v14 + 32);
        v12 = *(v14 + 40);
        v17 = *(v14 + 16);
        *(v14 + 24) = *v14;
        *(v14 + 40) = v17;
        *v14 = v10;
        *(v14 + 8) = v11;
        *(v14 + 16) = v12;
        v14 -= 24;
      }

      while (!__CFADD__(v13++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DD5CCA7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 136 * a3 - 136;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *(v10 + 136);
        v11 = *(v10 + 264);
        v12 = *(v10 + 128);
        if (v11 == v12)
        {
          v13 = *(v10 + 144);
          if (!v13)
          {
            break;
          }

          v14 = *(v10 + 8);
          if (!v14)
          {
            break;
          }

          if (result == *v10 && v13 == v14)
          {
            break;
          }

          result = sub_1DD640CD8();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        else if (v12 >= v11)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, (v10 + 136), sizeof(__dst));
        memcpy((v10 + 136), v10, 0x88uLL);
        result = memcpy(v10, __dst, 0x88uLL);
        v10 -= 136;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 136;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD5CCBA0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v100 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_111:
      v90 = v6 + 16;
      v91 = *(v6 + 2);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_147;
        }

        v92 = v6;
        v93 = &v6[16 * v91];
        v94 = *v93;
        v95 = &v90[2 * v91];
        v96 = v95[1];
        sub_1DD5CD8DC((*a3 + 24 * *v93), (*a3 + 24 * *v95), *a3 + 24 * v96, v100);
        if (v102)
        {
          break;
        }

        if (v96 < v94)
        {
          goto LABEL_135;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_136;
        }

        *v93 = v94;
        *(v93 + 1) = v96;
        v97 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_137;
        }

        v102 = 0;
        v91 = *v90 - 1;
        memmove(v95, v95 + 2, 16 * v97);
        *v90 = v91;
        v6 = v92;
      }

LABEL_119:

      return;
    }

LABEL_144:
    v6 = sub_1DD4EC2B8();
    goto LABEL_111;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_33;
    }

    v8 = *a3;
    v9 = *a3 + 24 * v5;
    v10 = *(v9 + 16);
    v11 = *a3 + 24 * v7;
    v12 = *(v11 + 16);
    if (v10 == v12)
    {
      if (*v11 == *v9 && *(v11 + 8) == *(v9 + 8))
      {
        v14 = 0;
      }

      else
      {
        v14 = sub_1DD640CD8();
      }
    }

    else
    {
      v14 = v12 < v10;
    }

    v5 = v7 + 2;
    v15 = v8 + 24 * v7;
    v16 = 24 * v7;
    v17 = (v15 + 64);
    while (v5 < v4)
    {
      v18 = *(v17 - 3);
      if (*v17 == v18)
      {
        if (*(v17 - 5) == *(v17 - 2) && *(v17 - 4) == *(v17 - 1))
        {
          if (v14)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v20 = sub_1DD640CD8();
      }

      else
      {
        v20 = v18 < *v17;
      }

      if ((v14 ^ v20))
      {
        break;
      }

LABEL_24:
      ++v5;
      v17 += 3;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (v5 < v7)
    {
      goto LABEL_141;
    }

    if (v7 < v5)
    {
      v21 = 24 * v5 - 8;
      v22 = v5;
      v23 = v7;
      do
      {
        if (v23 != --v22)
        {
          v24 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v25 = (v24 + v16);
          v26 = (v24 + v21);
          v27 = *v25;
          v28 = v25[1];
          v29 = v25[2];
          v30 = *v26;
          *v25 = *(v26 - 1);
          v25[2] = v30;
          *(v26 - 2) = v27;
          *(v26 - 1) = v28;
          *v26 = v29;
        }

        ++v23;
        v21 -= 24;
        v16 += 24;
      }

      while (v23 < v22);
    }

LABEL_33:
    v31 = a3[1];
    if (v5 >= v31)
    {
      goto LABEL_57;
    }

    if (__OFSUB__(v5, v7))
    {
      goto LABEL_140;
    }

    if (v5 - v7 >= a4)
    {
LABEL_57:
      if (v5 < v7)
      {
        goto LABEL_139;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BEB7C();
        v6 = v88;
      }

      v46 = *(v6 + 2);
      v47 = v46 + 1;
      if (v46 >= *(v6 + 3) >> 1)
      {
        sub_1DD3BEB7C();
        v6 = v89;
      }

      *(v6 + 2) = v47;
      v48 = v6 + 32;
      v49 = &v6[16 * v46 + 32];
      *v49 = v7;
      *(v49 + 1) = v5;
      v100 = *a1;
      if (!*a1)
      {
        goto LABEL_149;
      }

      if (!v46)
      {
LABEL_106:
        v4 = a3[1];
        if (v5 >= v4)
        {
          goto LABEL_109;
        }

        continue;
      }

      while (1)
      {
        v50 = v47 - 1;
        v51 = &v48[16 * v47 - 16];
        v52 = &v6[16 * v47];
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v6 + 4);
          v54 = *(v6 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_77:
          if (v56)
          {
            goto LABEL_126;
          }

          v68 = *v52;
          v67 = *(v52 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_129;
          }

          v72 = *(v51 + 1);
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_132;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_134;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v47 < 2)
        {
          goto LABEL_128;
        }

        v75 = *v52;
        v74 = *(v52 + 1);
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_92:
        if (v71)
        {
          goto LABEL_131;
        }

        v77 = *v51;
        v76 = *(v51 + 1);
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_133;
        }

        if (v78 < v70)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v50 - 1 >= v47)
        {
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
LABEL_131:
          __break(1u);
LABEL_132:
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
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v82 = v6;
        v83 = &v48[16 * v50 - 16];
        v84 = *v83;
        v85 = &v48[16 * v50];
        v86 = *(v85 + 1);
        sub_1DD5CD8DC((*a3 + 24 * *v83), (*a3 + 24 * *v85), *a3 + 24 * v86, v100);
        if (v102)
        {
          goto LABEL_119;
        }

        if (v86 < v84)
        {
          goto LABEL_121;
        }

        v87 = *(v82 + 2);
        if (v50 > v87)
        {
          goto LABEL_122;
        }

        *v83 = v84;
        *(v83 + 1) = v86;
        if (v50 >= v87)
        {
          goto LABEL_123;
        }

        v102 = 0;
        v47 = v87 - 1;
        sub_1DD4EC4E4(v85 + 16, v87 - 1 - v50, &v48[16 * v50]);
        v6 = v82;
        *(v82 + 2) = v87 - 1;
        if (v87 <= 2)
        {
          goto LABEL_106;
        }
      }

      v57 = &v48[16 * v47];
      v58 = *(v57 - 8);
      v59 = *(v57 - 7);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_124;
      }

      v62 = *(v57 - 6);
      v61 = *(v57 - 5);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_125;
      }

      v64 = *(v52 + 1);
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_127;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_130;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = *(v51 + 1);
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_138;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

    break;
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_142;
  }

  if (v7 + a4 >= v31)
  {
    v32 = a3[1];
  }

  else
  {
    v32 = v7 + a4;
  }

  if (v32 < v7)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v5 == v32)
  {
    goto LABEL_57;
  }

  v33 = *a3;
  v34 = *a3 + 24 * v5 - 24;
  v35 = v7 - v5;
LABEL_43:
  v36 = (v33 + 24 * v5);
  v37 = *v36;
  v38 = *(v36 + 1);
  v39 = v36[2];
  v40 = v35;
  v41 = v34;
  while (1)
  {
    v42 = *(v41 + 16);
    if (v39 == v42)
    {
      v43 = *v41 == *&v37 && *(v41 + 8) == v38;
      if (v43 || (sub_1DD640CD8() & 1) == 0)
      {
LABEL_55:
        ++v5;
        v34 += 24;
        --v35;
        if (v5 == v32)
        {
          v5 = v32;
          goto LABEL_57;
        }

        goto LABEL_43;
      }
    }

    else if (v42 >= v39)
    {
      goto LABEL_55;
    }

    if (!v33)
    {
      break;
    }

    v37 = *(v41 + 24);
    v38 = *(v41 + 32);
    v39 = *(v41 + 40);
    v44 = *(v41 + 16);
    *(v41 + 24) = *v41;
    *(v41 + 40) = v44;
    *v41 = v37;
    *(v41 + 8) = v38;
    *(v41 + 16) = v39;
    v41 -= 24;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_55;
    }
  }

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
}

void sub_1DD5CD1CC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 < 1)
  {
    goto LABEL_115;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v6++;
    if (v6 >= v5)
    {
      goto LABEL_37;
    }

    v9 = *a3;
    v10 = *a3 + 136 * v6;
    v11 = *(v10 + 128);
    v12 = *a3 + 136 * v8;
    v13 = *(v12 + 128);
    if (v11 == v13)
    {
      v14 = *(v10 + 8);
      if (v14 && (v15 = *(v12 + 8)) != 0 && (*v10 == *v12 ? (v16 = v14 == v15) : (v16 = 0), !v16))
      {
        v17 = sub_1DD640CD8();
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = v13 < v11;
    }

    v6 = v8 + 2;
    v18 = 136 * v8;
    v19 = v9 + 136 * v8;
    while (v6 < v5)
    {
      v20 = *(v19 + 400);
      v21 = *(v19 + 264);
      if (v20 == v21)
      {
        v22 = *(v19 + 280);
        if (!v22 || (v23 = *(v19 + 144)) == 0 || (*(v19 + 272) == *(v19 + 136) ? (v24 = v22 == v23) : (v24 = 0), v24))
        {
          if (v17)
          {
            goto LABEL_30;
          }

          goto LABEL_28;
        }

        v25 = sub_1DD640CD8();
      }

      else
      {
        v25 = v21 < v20;
      }

      if ((v17 ^ v25))
      {
        break;
      }

LABEL_28:
      ++v6;
      v19 += 136;
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (v6 < v8)
    {
      goto LABEL_136;
    }

    if (v8 < v6)
    {
      v26 = 136 * v6 - 136;
      v27 = v6;
      v28 = v8;
      do
      {
        if (v28 != --v27)
        {
          v29 = *a3;
          if (!*a3)
          {
            goto LABEL_141;
          }

          memcpy(__dst, (v29 + v18), sizeof(__dst));
          memmove((v29 + v18), (v29 + v26), 0x88uLL);
          memcpy((v29 + v26), __dst, 0x88uLL);
        }

        ++v28;
        v26 -= 136;
        v18 += 136;
      }

      while (v28 < v27);
    }

LABEL_37:
    v30 = a3[1];
    if (v6 < v30)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_135;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_137;
        }

        if (v8 + a4 >= v30)
        {
          v31 = a3[1];
        }

        else
        {
          v31 = v8 + a4;
        }

        if (v31 >= v8)
        {
          if (v6 != v31)
          {
            v91 = v7;
            v32 = v8;
            v33 = *a3;
            v34 = *a3 + 136 * v6 - 136;
            v88 = v32;
            v35 = v32 - v6;
            do
            {
              v36 = v35;
              v37 = v34;
              do
              {
                v38 = *(v37 + 264);
                v39 = *(v37 + 128);
                if (v38 == v39)
                {
                  v40 = *(v37 + 144);
                  if (!v40)
                  {
                    break;
                  }

                  v41 = *(v37 + 8);
                  if (!v41)
                  {
                    break;
                  }

                  v42 = *(v37 + 136) == *v37 && v40 == v41;
                  if (v42 || (sub_1DD640CD8() & 1) == 0)
                  {
                    break;
                  }
                }

                else if (v39 >= v38)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_139;
                }

                memcpy(__dst, (v37 + 136), sizeof(__dst));
                memcpy((v37 + 136), v37, 0x88uLL);
                memcpy(v37, __dst, 0x88uLL);
                v37 -= 136;
              }

              while (!__CFADD__(v36++, 1));
              ++v6;
              v34 += 136;
              --v35;
            }

            while (v6 != v31);
            v6 = v31;
            v7 = v91;
            v8 = v88;
          }

          goto LABEL_63;
        }

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
        return;
      }
    }

LABEL_63:
    if (v6 < v8)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BEB7C();
      v7 = v86;
    }

    v44 = v7[2];
    v45 = v44 + 1;
    if (v44 >= v7[3] >> 1)
    {
      sub_1DD3BEB7C();
      v7 = v87;
    }

    v7[2] = v45;
    v46 = v7 + 4;
    v47 = &v7[2 * v44 + 4];
    *v47 = v8;
    v47[1] = v6;
    v92 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      while (2)
      {
        v48 = v45 - 1;
        v49 = &v46[2 * v45 - 2];
        v50 = &v7[2 * v45];
        if (v45 >= 4)
        {
          v55 = &v46[2 * v45];
          v56 = *(v55 - 8);
          v57 = *(v55 - 7);
          v61 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          if (v61)
          {
            goto LABEL_122;
          }

          v60 = *(v55 - 6);
          v59 = *(v55 - 5);
          v61 = __OFSUB__(v59, v60);
          v53 = v59 - v60;
          v54 = v61;
          if (v61)
          {
            goto LABEL_123;
          }

          v62 = v50[1];
          v63 = v62 - *v50;
          if (__OFSUB__(v62, *v50))
          {
            goto LABEL_125;
          }

          v61 = __OFADD__(v53, v63);
          v64 = v53 + v63;
          if (v61)
          {
            goto LABEL_128;
          }

          if (v64 >= v58)
          {
            v78 = *v49;
            v77 = v49[1];
            v61 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v61)
            {
              goto LABEL_133;
            }

            if (v53 < v79)
            {
              v48 = v45 - 2;
            }
          }

          else
          {
LABEL_83:
            if (v54)
            {
              goto LABEL_124;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_127;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_130;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_132;
            }

            if (v68 + v71 < v53)
            {
              goto LABEL_98;
            }

            if (v53 < v71)
            {
              v48 = v45 - 2;
            }
          }
        }

        else
        {
          if (v45 == 3)
          {
            v51 = v7[4];
            v52 = v7[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
            goto LABEL_83;
          }

          if (v45 < 2)
          {
            goto LABEL_126;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_98:
          if (v69)
          {
            goto LABEL_129;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_131;
          }

          if (v76 < v68)
          {
            break;
          }
        }

        if (v48 - 1 >= v45)
        {
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
LABEL_131:
          __break(1u);
LABEL_132:
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
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v80 = v7;
        v81 = &v46[2 * v48 - 2];
        v82 = *v81;
        v83 = &v46[2 * v48];
        v84 = v83[1];
        sub_1DD5CDAF8((*a3 + 136 * *v81), (*a3 + 136 * *v83), (*a3 + 136 * v84), v92);
        if (v4)
        {
          goto LABEL_117;
        }

        if (v84 < v82)
        {
          goto LABEL_119;
        }

        v85 = v80[2];
        if (v48 > v85)
        {
          goto LABEL_120;
        }

        *v81 = v82;
        v81[1] = v84;
        if (v48 >= v85)
        {
          goto LABEL_121;
        }

        v45 = v85 - 1;
        memmove(&v46[2 * v48], v83 + 2, 16 * (v85 - 1 - v48));
        v7 = v80;
        v80[2] = v85 - 1;
        if (v85 <= 2)
        {
          break;
        }

        continue;
      }
    }

    v5 = a3[1];
  }

  while (v6 < v5);
  v95 = v7;
LABEL_115:
  if (!*a1)
  {
    goto LABEL_143;
  }

  sub_1DD5CD7A4(&v95, *a1, a3);
LABEL_117:
}

uint64_t sub_1DD5CD7A4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1DD5CDAF8((*a3 + 136 * *v4), (*a3 + 136 * *v9), (*a3 + 136 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1DD5CD8DC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1DD3C2534(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v19 = v7;
        goto LABEL_41;
      }

      v12 = *(v6 + 2);
      v13 = *(v4 + 2);
      if (v12 == v13)
      {
        v14 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
        if (v14 || (sub_1DD640CD8() & 1) == 0)
        {
LABEL_13:
          v15 = v4;
          v14 = v7 == v4;
          v4 += 24;
          if (v14)
          {
            goto LABEL_15;
          }

LABEL_14:
          v16 = *v15;
          *(v7 + 2) = *(v15 + 2);
          *v7 = v16;
          goto LABEL_15;
        }
      }

      else if (v13 >= v12)
      {
        goto LABEL_13;
      }

      v15 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 24;
    }
  }

  sub_1DD3C2534(a2, (a3 - a2) / 24, a4);
  v17 = &v4[24 * v9];
LABEL_21:
  v18 = 0;
  v19 = v6;
  v6 -= 24;
  while (1)
  {
    v10 = &v17[v18];
    if (&v17[v18] <= v4 || v19 <= v7)
    {
      break;
    }

    v21 = *(v10 - 1);
    v22 = *(v19 - 1);
    if (v21 == v22)
    {
      v23 = *(v19 - 3) == *(v10 - 3) && *(v19 - 2) == *(v10 - 2);
      if (!v23 && (sub_1DD640CD8() & 1) != 0)
      {
LABEL_38:
        v26 = (v5 + v18);
        v5 = v5 + v18 - 24;
        v17 += v18;
        if (v26 != v19)
        {
          v27 = *v6;
          *(v5 + 16) = *(v6 + 2);
          *v5 = v27;
        }

        goto LABEL_21;
      }
    }

    else if (v22 < v21)
    {
      goto LABEL_38;
    }

    if (v10 != (v5 + v18))
    {
      v24 = v5 + v18 - 24;
      v25 = *(v10 - 24);
      *(v24 + 16) = *(v10 - 1);
      *v24 = v25;
    }

    v18 -= 24;
  }

LABEL_41:
  v28 = (v10 - v4) / 24;
  if (v19 != v4 || v19 >= &v4[24 * v28])
  {
    memmove(v19, v4, 24 * v28);
  }

  return 1;
}

uint64_t sub_1DD5CDAF8(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 136;
  v9 = (a3 - a2) / 136;
  if (v8 < v9)
  {
    sub_1DD3C207C(a1, (a2 - a1) / 136, a4);
    v10 = &v4[136 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v20 = v7;
        goto LABEL_45;
      }

      v12 = *(v6 + 16);
      v13 = *(v4 + 16);
      if (v12 == v13)
      {
        v14 = *(v6 + 1);
        if (!v14 || (v15 = *(v4 + 1)) == 0 || (*v6 == *v4 ? (v16 = v14 == v15) : (v16 = 0), v16 || (sub_1DD640CD8() & 1) == 0))
        {
LABEL_15:
          v17 = v4;
          v16 = v7 == v4;
          v4 += 136;
          if (v16)
          {
            goto LABEL_17;
          }

LABEL_16:
          memmove(v7, v17, 0x88uLL);
          goto LABEL_17;
        }
      }

      else if (v13 >= v12)
      {
        goto LABEL_15;
      }

      v17 = v6;
      v16 = v7 == v6;
      v6 += 136;
      if (!v16)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 136;
    }
  }

  sub_1DD3C207C(a2, (a3 - a2) / 136, a4);
  v18 = &v4[136 * v9];
LABEL_23:
  v19 = 0;
  v20 = v6;
  v6 -= 136;
  while (1)
  {
    v10 = &v18[v19 * 8];
    if (&v18[v19 * 8] <= v4 || v20 <= v7)
    {
      break;
    }

    v22 = *(v10 - 1);
    v23 = *(v20 - 1);
    if (v22 == v23)
    {
      v24 = *(v10 - 16);
      if (v24)
      {
        v25 = *(v20 - 16);
        if (v25)
        {
          v26 = *(v10 - 17) == *(v20 - 17) && v24 == v25;
          if (!v26 && (sub_1DD640CD8() & 1) != 0)
          {
LABEL_42:
            v27 = &v5[v19];
            v5 = &v5[v19 - 17];
            v18 += v19 * 8;
            if (v27 != v20)
            {
              memmove(v5, v6, 0x88uLL);
            }

            goto LABEL_23;
          }
        }
      }
    }

    else if (v23 < v22)
    {
      goto LABEL_42;
    }

    if (v10 != &v5[v19])
    {
      memmove(&v5[v19 - 17], v10 - 17, 0x88uLL);
    }

    v19 -= 17;
  }

LABEL_45:
  v28 = (v10 - v4) / 136;
  if (v20 != v4 || v20 >= &v4[136 * v28])
  {
    memmove(v20, v4, 136 * v28);
  }

  return 1;
}

uint64_t objectdestroy_73Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

unint64_t sub_1DD5CDDCC()
{
  result = qword_1ECCDF770;
  if (!qword_1ECCDF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF770);
  }

  return result;
}

SiriInference::SportsResolverConfig __swiftcall SportsResolverConfig.init(intentTypeName:bundleId:)(Swift::String intentTypeName, Swift::String bundleId)
{
  *v2 = intentTypeName;
  v2[1] = bundleId;
  result.bundleId = bundleId;
  result.intentTypeName = intentTypeName;
  return result;
}

void sub_1DD5CDE44()
{
  sub_1DD5EAA80();
  if (!v0)
  {
    v1 = sub_1DD63FDA8();
    sub_1DD395950();
    v2 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

void sub_1DD5CDEE0(int a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_1DD5EA5F0(a1 & 0x10101, a2, a3, a4 & 0x10101);
  if (!v4)
  {
    v5 = sub_1DD63FDA8();
    sub_1DD395950();
    v6 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

void sub_1DD5CDF8C()
{
  sub_1DD5EA774();
  if (!v0)
  {
    v1 = sub_1DD63FDA8();
    sub_1DD395950();
    v2 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

void __swiftcall SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)(SiriInference::SportsResolverMetrics *__return_ptr retstr, SiriInference::SportsResolverConfig config, Swift::Bool isSiriInstructionExecuted, Swift::Bool isDisambiguation, Swift::Bool isRecommendationFound, Swift::Bool isTaskSuccess)
{
  v6 = *(config.intentTypeName._countAndFlagsBits + 16);
  v7 = *(config.intentTypeName._countAndFlagsBits + 24);
  retstr->intentTypeName = *config.intentTypeName._countAndFlagsBits;
  retstr->bundleId._countAndFlagsBits = v6;
  retstr->bundleId._object = v7;
  retstr->isSiriInstructionExecuted = config.intentTypeName._object;
  retstr->isDisambiguation = config.bundleId._countAndFlagsBits;
  retstr->isRecommendationFound = config.bundleId._object;
  retstr->isTaskSuccess = isSiriInstructionExecuted;
}

uint64_t sub_1DD5CE088(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5CE0C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD5CE17C(uint64_t a1)
{
  v2 = sub_1DD5CE35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5CE1B8(uint64_t a1)
{
  v2 = sub_1DD5CE35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsSignalSet.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF778, &qword_1DD6609E8);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  v11[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5CE35C();
  sub_1DD640EF8();
  v13 = 0;
  sub_1DD640C28();
  if (!v2)
  {
    v12 = 1;
    sub_1DD640C58();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1DD5CE35C()
{
  result = qword_1ECCDF780;
  if (!qword_1ECCDF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF780);
  }

  return result;
}

uint64_t SportsSignalSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF788, qword_1DD6609F0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5CE35C();
  sub_1DD640ED8();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1DD640B38();
    v15 = 1;
    v13 = sub_1DD640B68();
    (*(v7 + 8))(v10, v5);
    *a2 = v11 & 1;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5CE55C()
{
  result = qword_1ECCDF790;
  if (!qword_1ECCDF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF790);
  }

  return result;
}

unint64_t sub_1DD5CE5B4()
{
  result = qword_1ECCDF798;
  if (!qword_1ECCDF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF798);
  }

  return result;
}

unint64_t sub_1DD5CE60C()
{
  result = qword_1ECCDF7A0;
  if (!qword_1ECCDF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7A0);
  }

  return result;
}

unint64_t sub_1DD5CE660(void *a1)
{
  a1[2] = sub_1DD5CE55C();
  a1[3] = sub_1DD5CE5B4();
  result = sub_1DD5CE60C();
  a1[4] = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsSignalSet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5CE7BC()
{
  result = qword_1ECCDF7A8;
  if (!qword_1ECCDF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7A8);
  }

  return result;
}

unint64_t sub_1DD5CE814()
{
  result = qword_1ECCDF7B0;
  if (!qword_1ECCDF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7B0);
  }

  return result;
}

unint64_t sub_1DD5CE86C()
{
  result = qword_1ECCDF7B8;
  if (!qword_1ECCDF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7B8);
  }

  return result;
}

void *SportsSlotResolutionTask.run(withAlreadyResolvedSlots:)@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v5 = a1;
  v6 = *(v1 + 48);
  v7 = *(v1 + 40);
  if (v7)
  {
    v8 = *(v7 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v23 = v4;
      v32 = MEMORY[0x1E69E7CC0];
      sub_1DD42BECC(0, v8, 0);
      v9 = v32;
      sub_1DD5C5498(__src);
      v10 = (v7 + 32);
      do
      {
        memcpy(__dst, v10, sizeof(__dst));
        memmove(v28, v10, 0x80uLL);
        nullsub_1();
        memcpy(v29, __src, sizeof(v29));
        sub_1DD400BFC(__dst, v30);
        sub_1DD3ADFD0(v29, &qword_1ECCDF690, &qword_1DD660BF0);
        memcpy(v30, v28, sizeof(v30));
        v32 = v9;
        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1DD42BECC(v11 > 1, v12 + 1, 1);
          v9 = v32;
        }

        *(v9 + 16) = v12 + 1;
        v13 = v9 + 136 * v12;
        memcpy((v13 + 32), v30, 0x80uLL);
        *(v13 + 160) = v6;
        v10 += 128;
        --v8;
      }

      while (v8);
      v3 = v2;
      v5 = a1;
      v4 = v23;
    }
  }

  else
  {
    sub_1DD5C5498(v30);
    memcpy(__src, v30, 0x80uLL);
    sub_1DD3ADFD0(__src, &qword_1ECCDF690, &qword_1DD660BF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAA8, &qword_1DD649FA0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DD643F90;
    memcpy((v9 + 32), v30, 0x80uLL);
    *(v9 + 160) = v6;
  }

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  *&v30[0] = v9;
  SportsResolver.makeRecommendation(query:)(v30, __src);

  if (!v3)
  {
    memcpy(v31, __src, 0x81uLL);
    if (qword_1ECCDB0D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1ECD0DDD8);
    sub_1DD5CED70(v31, __src);
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    sub_1DD3ADFD0(v31, &qword_1ECCDF758, &qword_1DD660918);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      __src[0] = v19;
      *v18 = 136315138;
      v20 = sub_1DD4A8508();
      v22 = sub_1DD39565C(v20, v21, __src);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1DD38D000, v16, v17, "Sports recommendations: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
    }

    sub_1DD4729B0(v25);
    sub_1DD3ADFD0(v31, &qword_1ECCDF758, &qword_1DD660918);
    return memcpy(v5, v25, 0x81uLL);
  }

  return result;
}

uint64_t Category.hashValue.getter()
{
  v1 = *v0;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

uint64_t SportsSlotResolutionTask.init(entity:category:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  *(a3 + 40) = *a1;
  *(a3 + 48) = v4;
  *(a3 + 24) = type metadata accessor for SportsResolver(0);
  *(a3 + 32) = &off_1F58C0FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return SportsResolver.init()(boxed_opaque_existential_1);
}

uint64_t sub_1DD5CED70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF758, &qword_1DD660918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD5CEDE4()
{
  result = qword_1ECCDF7C0;
  if (!qword_1ECCDF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Category(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD5CEF10(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD5CEF60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DD5CEFB4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DD5CEFCC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1DD5CF004()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = xmmword_1DD644500;
  *(inited + 48) = 0;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(1, 9);
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_34();
  v2 = DateTime.init(withDate:)(v1);
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(30, 11);
  OUTLINED_FUNCTION_1_11();
  v3 = OUTLINED_FUNCTION_34();
  v4 = DateTime.init(withDate:)(v3);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v2, v4);
  OUTLINED_FUNCTION_1_11();
  v5 = OUTLINED_FUNCTION_34();
  *(inited + 56) = DateTime.init(occurringIn:)(v5);
  *(inited + 64) = xmmword_1DD644510;
  *(inited + 80) = 1;
  type metadata accessor for DateTime.Date.Holiday();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_5_2(v6, 0x80000001DD668D10, 0xD000000000000011, 0x80000001DD66A460, v7, v8, v9, v10, v28, *v30, *&v30[4], v30[6], 2);
  OUTLINED_FUNCTION_2_10();
  v11 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v11);
  OUTLINED_FUNCTION_1_11();
  v12 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v12);
  v13 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_5_2(v13, 0x80000001DD668D30, 0xD000000000000011, 0x80000001DD66A480, v14, v15, v16, v17, v29, v31, v32, v33, v34);
  OUTLINED_FUNCTION_2_10();
  v18 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v18);
  OUTLINED_FUNCTION_1_11();
  v19 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v19);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v20 = OUTLINED_FUNCTION_34();
  v21 = DateTime.init(occurringIn:)(v20);
  *(inited + 96) = 0;
  *(inited + 104) = 0;
  *(inited + 88) = v21;
  *(inited + 112) = 1;
  OUTLINED_FUNCTION_3_15();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x757165686372616DLL, 0xEC000000786F6E69, 0x714520686372614DLL, 0xED0000786F6E6975, &v34);
  OUTLINED_FUNCTION_2_10();
  v22 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v22);
  OUTLINED_FUNCTION_1_11();
  v23 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v23);
  OUTLINED_FUNCTION_3_15();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x736C6F73656E756ALL, 0xEC00000065636974, 0x6C6F5320656E754ALL, 0xED00006563697473, &v34);
  OUTLINED_FUNCTION_2_10();
  v24 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v24);
  OUTLINED_FUNCTION_1_11();
  v25 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v25);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v26 = OUTLINED_FUNCTION_34();
  *(inited + 120) = DateTime.init(occurringIn:)(v26);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

void sub_1DD5CF324(uint64_t a1)
{
  sub_1DD54C2A0(319);
  if (v1 <= 0x3F)
  {
    sub_1DD6405F8();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1DD5CF3F4(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DD63CE68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD628448();
  if (!v3)
  {
    v40 = a2;
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v37 = sub_1DD63F9F8();
    v12 = __swift_project_value_buffer(v37, qword_1EE16F0C8);
    (*(v9 + 16))(v11, a1, v8);
    v39 = v12;
    v13 = sub_1DD63F9D8();
    v14 = sub_1DD640368();
    v15 = os_log_type_enabled(v13, v14);
    v38 = a3;
    if (v15)
    {
      v16 = swift_slowAlloc();
      v35[1] = a1;
      v17 = v16;
      v18 = swift_slowAlloc();
      v36 = 0;
      v19 = v18;
      v41 = v18;
      *v17 = 136315394;
      v20 = sub_1DD63CE58();
      v22 = v21;
      (*(v9 + 8))(v11, v8);
      v23 = sub_1DD39565C(v20, v22, &v41);

      *(v17 + 4) = v23;
      *(v17 + 12) = 1024;
      v24 = v40;
      *(v17 + 14) = v40 & 1;
      _os_log_impl(&dword_1DD38D000, v13, v14, "opening db connection at %s. readOnly=%{BOOL}d", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v4 = v36;
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      (*(v9 + 8))(v11, v8);
      v24 = v40;
    }

    v25 = sub_1DD63CE58();
    v27 = v26;
    type metadata accessor for Connection();
    swift_allocObject();
    v28 = sub_1DD4055EC(v25, v27, v24 & 1);
    if (!v4)
    {
      v8 = v28;
      v29 = sub_1DD63F9D8();
      v30 = sub_1DD640368();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DD38D000, v29, v30, "opened db connection", v31, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      *(v8 + 24) = 0x3FE0000000000000;
      sub_1DD406CD0();

      sub_1DD405F44(v32, v8, 0xD000000000000019, 0x80000001DD674640);
      if ((v24 & 1) == 0)
      {

        v34 = v38;

        sub_1DD520148(v8, v34);
      }
    }
  }

  return v8;
}

uint64_t *sub_1DD5CF924()
{
  sub_1DD5CFA30(v0 + qword_1EE165D80);
  v1 = *(*v0 + 104);
  v2 = sub_1DD6405F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1DD5CF9C0()
{
  sub_1DD5CF924();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD5CFA30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1DD5CFA98(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1DD63FA78();
  OUTLINED_FUNCTION_0();
  v181 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16_3();
  v186 = v11;
  v12 = sub_1DD63FA38();
  OUTLINED_FUNCTION_0();
  v183 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v180 = v15;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_3();
  v179 = v17;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF7C8, &qword_1DD660DD8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  v185 = v19;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v170 - v21;
  sub_1DD63FA48();
  OUTLINED_FUNCTION_0();
  v187 = v24;
  v188 = v23;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  v193 = v25;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_16_3();
  v191 = v27;
  v200 = sub_1DD63DEA8();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  v32 = v31;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_16_3();
  v199 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8;
  MEMORY[0x1EEE9AC00](v35);
  v192 = v170 - v37;
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v38 = a1 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v39 = v192;
  sub_1DD3DD9B4(v38, v192, &qword_1ECCDBC18, &unk_1DD6459A0);
  v40 = *(v39 + 256);
  v41 = MEMORY[0x1E69E7CC0];
  if (!v40)
  {
LABEL_54:
    sub_1DD390754(v192, &qword_1ECCDBC18, &unk_1DD6459A0);
    return v41;
  }

  v171 = v5;
  v172 = v12;
  v177 = v1;
  v174 = v22;

  v42 = sub_1DD63270C();
  v173 = v9;
  if (v2)
  {
    v44 = v29;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v45 = sub_1DD63F9F8();
    __swift_project_value_buffer(v45, qword_1EE16F068);
    v46 = sub_1DD63F9D8();
    v47 = sub_1DD640368();
    v48 = v32;
    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_28();
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DD38D000, v46, v47, "Querying SRR with unknown USO node", v49, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v3 = 0;
  }

  else
  {
    v50 = v42;
    v51 = v43;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v52 = sub_1DD63F9F8();
    __swift_project_value_buffer(v52, qword_1EE16F068);

    v53 = sub_1DD63F9D8();
    v54 = sub_1DD640368();

    if (os_log_type_enabled(v53, v54))
    {
      OUTLINED_FUNCTION_18_1();
      v55 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v204 = swift_slowAlloc();
      *v55 = 136315138;
      v56 = sub_1DD39565C(v50, v51, &v204);

      *(v55 + 4) = v56;
      _os_log_impl(&dword_1DD38D000, v53, v54, "Querying SRR with %s", v55, 0xCu);
      OUTLINED_FUNCTION_9_56();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {
    }

    v44 = v29;
    v48 = v32;
  }

  sub_1DD63E9E8();
  swift_allocObject();
  v57 = sub_1DD63E9D8();
  sub_1DD63E6A8();
  sub_1DD63E9C8();

  sub_1DD63ECA8();
  swift_allocObject();
  v175 = sub_1DD63EC98();
  sub_1DD63E9A8();
  v58 = sub_1DD63E318();
  v178 = v57;
  if (v58)
  {
    v59 = v58;
    v198 = sub_1DD63E9B8();
    if (v198)
    {
      v176 = 0;
      v61 = *(v59 + 16);
      v62 = v193;
      v170[1] = v59;
      if (v61)
      {
        v65 = *(v44 + 16);
        v63 = v44 + 16;
        v64 = v65;
        v66 = v59 + ((*(v63 + 64) + 32) & ~*(v63 + 64));
        v196 = *(v63 + 56);
        *&v60 = 136315138;
        v189 = v60;
        v195 = (v63 - 8);
        v194 = (v63 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v68 = v199;
        v67 = v200;
        v190 = v63;
        v197 = v65;
        do
        {
          v201 = v61;
          v64(v68, v66, v67);
          if (qword_1EE165FB0 != -1)
          {
            OUTLINED_FUNCTION_0_2();
            swift_once();
          }

          v69 = sub_1DD63F9F8();
          __swift_project_value_buffer(v69, qword_1EE16F068);
          v64(v48, v68, v67);
          v70 = sub_1DD63F9D8();
          v71 = v48;
          v72 = sub_1DD640368();
          if (os_log_type_enabled(v70, v72))
          {
            OUTLINED_FUNCTION_18_1();
            v73 = swift_slowAlloc();
            OUTLINED_FUNCTION_17_0();
            v204 = swift_slowAlloc();
            *v73 = v189;
            v74 = sub_1DD63DE88();
            v76 = v75;
            v77 = *v195;
            (*v195)(v71, v200);
            v78 = sub_1DD39565C(v74, v76, &v204);

            *(v73 + 4) = v78;
            _os_log_impl(&dword_1DD38D000, v70, v72, "Adding identifier: %s", v73, 0xCu);
            OUTLINED_FUNCTION_9_56();
            v62 = v193;
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
            v67 = v200;
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
          }

          else
          {

            v77 = *v195;
            (*v195)(v71, v67);
          }

          v48 = v71;
          v68 = v199;
          sub_1DD63DD38();
          v77(v68, v67);
          v64 = v197;
          v66 += v196;
          v61 = v201 - 1;
        }

        while (v201 != 1);
      }

      v3 = v176;
    }

    else
    {
      v62 = v193;
    }

    v79 = OUTLINED_FUNCTION_11_48();
  }

  else
  {
    v79 = v57;
    v62 = v193;
  }

  v80 = MEMORY[0x1E12B09F0](v79);
  if (!v80)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v94 = sub_1DD63F9F8();
    __swift_project_value_buffer(v94, qword_1EE16F068);
    v95 = sub_1DD63F9D8();
    v96 = sub_1DD640378();
    if (os_log_type_enabled(v95, v96))
    {
      OUTLINED_FUNCTION_28();
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_1DD38D000, v95, v96, "failed to convert entity during SRRSearchProvider", v97, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    OUTLINED_FUNCTION_11_48();

    v41 = MEMORY[0x1E69E7CC0];
    goto LABEL_54;
  }

  v81 = v80;
  v176 = v3;
  v82 = v191;
  *v191 = v80;
  v83 = v187;
  v84 = v188;
  (*(v187 + 104))(v82, *MEMORY[0x1E69D2930], v188);
  v85 = qword_1EE165FB0;
  v201 = v81;

  if (v85 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v86 = sub_1DD63F9F8();
  v87 = __swift_project_value_buffer(v86, qword_1EE16F068);
  (*(v83 + 16))(v62, v82, v84);
  v199 = v87;
  v88 = sub_1DD63F9D8();
  v89 = sub_1DD640368();
  if (os_log_type_enabled(v88, v89))
  {
    OUTLINED_FUNCTION_18_1();
    v90 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v204 = swift_slowAlloc();
    *v90 = 136315138;
    sub_1DD5D1C70(&qword_1ECCDF7D8, MEMORY[0x1E69D2938], MEMORY[0x1E69D2940]);
    v91 = sub_1DD640CB8();
    v48 = v92;
    v200 = *(v83 + 8);
    v200(v62, v84);
    v93 = sub_1DD39565C(v91, v48, &v204);

    *(v90 + 4) = v93;
    _os_log_impl(&dword_1DD38D000, v88, v89, "Querying SRR with %s", v90, 0xCu);
    OUTLINED_FUNCTION_9_56();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {

    v200 = *(v83 + 8);
    v200(v62, v84);
  }

  OUTLINED_FUNCTION_8_68();
  v98 = v186;
  v99 = v177[3];
  v100 = v177[4];
  __swift_project_boxed_opaque_existential_1(v177, v99);
  (*(v100 + 8))(v191, v99, v100);
  v204 = MEMORY[0x1E69E7CC0];
  v101 = v185;
  sub_1DD3DD9B4(v48, v185, &qword_1ECCDF7C8, &qword_1DD660DD8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v103 = v173;
  if (EnumCaseMultiPayload == 1)
  {
    v104 = *v101;
    v105 = *v101;
    v106 = sub_1DD63F9D8();
    v107 = sub_1DD640378();

    if (os_log_type_enabled(v106, v107))
    {
      OUTLINED_FUNCTION_18_1();
      v108 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v109 = swift_slowAlloc();
      v202 = v104;
      v203 = v109;
      *v108 = 136315138;
      v110 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
      v111 = sub_1DD63FE38();
      v48 = v112;
      v113 = sub_1DD39565C(v111, v112, &v203);
      OUTLINED_FUNCTION_8_68();

      *(v108 + 4) = v113;
      OUTLINED_FUNCTION_16_49(&dword_1DD38D000, v114, v115, "SRR lookup failed: %s");
      OUTLINED_FUNCTION_9_56();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {
    }

LABEL_48:
    v131 = v176;
LABEL_49:
    v41 = v170;
    MEMORY[0x1EEE9AC00](v116);
    v132 = v192;
    v170[-2] = v177;
    v170[-1] = v132;
    sub_1DD583174();
    if (v131)
    {

      OUTLINED_FUNCTION_11_48();

      sub_1DD390754(v48, &qword_1ECCDF7C8, &qword_1DD660DD8);
      v134 = OUTLINED_FUNCTION_10_54();
      v135(v134);
      sub_1DD390754(v192, &qword_1ECCDBC18, &unk_1DD6459A0);
      return v41;
    }

    v136 = v133;

    v137 = sub_1DD63F9D8();
    v138 = sub_1DD640368();

    if (os_log_type_enabled(v137, v138))
    {
      OUTLINED_FUNCTION_18_1();
      v139 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v203 = swift_slowAlloc();
      *v139 = 136315138;
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      v141 = MEMORY[0x1E12B2430](v136, v140);
      v48 = v142;
      v143 = sub_1DD39565C(v141, v142, &v203);
      OUTLINED_FUNCTION_8_68();

      *(v139 + 4) = v143;
      OUTLINED_FUNCTION_16_49(&dword_1DD38D000, v144, v145, "SRR raw contacts: %s");
      OUTLINED_FUNCTION_9_56();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v41 = sub_1DD3C6AF8(v136);

    OUTLINED_FUNCTION_11_48();

    sub_1DD390754(v48, &qword_1ECCDF7C8, &qword_1DD660DD8);
    v146 = OUTLINED_FUNCTION_10_54();
    v147(v146);
    goto LABEL_54;
  }

  v117 = v181;
  v118 = v171;
  v116 = (*(v181 + 88))(v101, v171);
  if (v116 == *MEMORY[0x1E69D2968])
  {
    (*(v117 + 96))(v101, v118);
    v119 = v101;
    v120 = v183;
    v121 = *(v183 + 32);
    v122 = v179;
    v123 = v172;
    (v121)(v179, v119, v172);
    (*(v120 + 16))(v180, v122, v123);
    sub_1DD3BF868();
    v125 = v124;
    v126 = *(v124 + 16);
    v127 = v126 + 1;
    if (v126 >= *(v124 + 24) >> 1)
    {
LABEL_82:
      sub_1DD3BF868();
      v125 = v169;
    }

    v128 = v183 + 8;
    v129 = v122;
    v130 = v172;
    (*(v183 + 8))(v129, v172);
    *(v125 + 16) = v127;
    v116 = (v121)(v125 + ((*(v128 + 72) + 32) & ~*(v128 + 72)) + *(v128 + 64) * v126, v180, v130);
    v204 = v125;
    goto LABEL_48;
  }

  v131 = v176;
  if (v116 == *MEMORY[0x1E69D2978] || v116 == *MEMORY[0x1E69D2970])
  {
    v149 = OUTLINED_FUNCTION_15_48();
    v150(v149);
    v116 = sub_1DD607A34(*v101);
    goto LABEL_49;
  }

  if (v116 != *MEMORY[0x1E69D2980])
  {
    if (v116 == *MEMORY[0x1E69D2988])
    {
      goto LABEL_49;
    }

    v159 = v171;
    (*(v117 + 32))(v98, v101, v171);
    (*(v117 + 16))(v103, v98, v159);
    v160 = sub_1DD63F9D8();
    v161 = sub_1DD640378();
    if (os_log_type_enabled(v160, v161))
    {
      OUTLINED_FUNCTION_18_1();
      v162 = v117;
      v163 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v198 = swift_slowAlloc();
      v203 = v198;
      *v163 = 136315138;
      sub_1DD5D1C70(&qword_1ECCDF7D0, MEMORY[0x1E69D2990], MEMORY[0x1E69D29A0]);
      v164 = sub_1DD640CB8();
      v48 = v165;
      v166 = *(v162 + 8);
      v166(v103, v159);
      v167 = sub_1DD39565C(v164, v48, &v203);
      OUTLINED_FUNCTION_8_68();

      *(v163 + 4) = v167;
      _os_log_impl(&dword_1DD38D000, v160, v161, "unhandled variant: %s", v163, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v198);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();

      v116 = (v166)(v186, v159);
    }

    else
    {

      v168 = *(v117 + 8);
      v168(v103, v159);
      v116 = (v168)(v98, v159);
    }

    goto LABEL_48;
  }

  v151 = OUTLINED_FUNCTION_15_48();
  v152(v151);
  v153 = *v101;
  v126 = *(*v101 + 2);
  if (!v126)
  {

    goto LABEL_49;
  }

  v127 = MEMORY[0x1E69E7CC0];
  v48 = 32;
  while (1)
  {
    v121 = *&v153[v48];
    v154 = *(v121 + 16);
    v122 = *(v127 + 16);
    if (__OFADD__(v122, v154))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v122 + v154 > *(v127 + 24) >> 1)
    {
      sub_1DD3BF868();
      v127 = v155;
    }

    if (*(v121 + 16))
    {
      break;
    }

    if (v154)
    {
      goto LABEL_80;
    }

LABEL_72:
    v48 += 8;
    if (!--v126)
    {

      v204 = v127;
      OUTLINED_FUNCTION_8_68();
      goto LABEL_49;
    }
  }

  if ((*(v127 + 24) >> 1) - *(v127 + 16) < v154)
  {
    goto LABEL_81;
  }

  swift_arrayInitWithCopy();

  if (!v154)
  {
    goto LABEL_72;
  }

  v156 = *(v127 + 16);
  v157 = __OFADD__(v156, v154);
  v158 = v156 + v154;
  if (!v157)
  {
    *(v127 + 16) = v158;
    goto LABEL_72;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD5D0E78@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Contact(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD5D1610(v70);
  memcpy(v71, v70, 0x108uLL);
  result = sub_1DD3C94D4(v71);
  if (result == 1)
  {
    goto LABEL_14;
  }

  v62 = a2;
  v56 = v13;
  v57 = v15;
  v58 = v12;
  memcpy(v69, v71, sizeof(v69));
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1DD63F9F8();
  __swift_project_value_buffer(v17, qword_1EE16F068);
  memcpy(v68, v70, sizeof(v68));
  sub_1DD3C9478(v68, v67);
  v18 = sub_1DD63F9D8();
  v19 = sub_1DD640368();
  sub_1DD390754(v70, &qword_1ECCDCCB0, &unk_1DD64AEE0);
  v20 = os_log_type_enabled(v18, v19);
  v60 = a3;
  v61 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v64 = a4;
    v23 = v22;
    v72 = v22;
    *v21 = 136315138;
    memcpy(v65, v69, sizeof(v65));
    memcpy(v66, v70, sizeof(v66));
    v24 = sub_1DD3C9478(v66, v67);
    v25 = ContactQuery.description.getter(v24);
    v27 = v26;
    memcpy(v67, v65, sizeof(v67));
    sub_1DD3C9580(v67);
    v28 = sub_1DD39565C(v25, v27, &v72);
    v5 = v4;

    *(v21 + 4) = v28;
    _os_log_impl(&dword_1DD38D000, v18, v19, "SRR output query: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v29 = v23;
    a4 = v64;
    MEMORY[0x1E12B3DA0](v29, -1, -1);
    MEMORY[0x1E12B3DA0](v21, -1, -1);
  }

  v30 = v71[26];
  if (!v71[26])
  {
    goto LABEL_13;
  }

  v31 = v71[29];
  v32 = HIBYTE(v71[29]) & 0xFLL;
  v63 = v71[28];
  if ((v71[29] & 0x2000000000000000) == 0)
  {
    v32 = v71[28] & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
LABEL_13:
    result = sub_1DD390754(v70, &qword_1ECCDCCB0, &unk_1DD64AEE0);
LABEL_14:
    *a4 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v54 = v71[24];
  v55 = v71[25];
  v59 = v71[27];
  if (LOBYTE(v71[24]))
  {
    *&v64 = a4;
    v33 = v62[8];
    v34 = v62[9];
    if (LOBYTE(v71[24]) == 1)
    {
      __swift_project_boxed_opaque_existential_1(v62 + 5, v62[8]);
      v35 = *(v34 + 48);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v62 + 5, v62[8]);
      v35 = *(v34 + 40);
    }

    v35(v63, v31, v33, v34);
    if (v5)
    {
      sub_1DD390754(v70, &qword_1ECCDCCB0, &unk_1DD64AEE0);
      return sub_1DD3FAA54(v54, v55, v30);
    }

    a4 = v64;
  }

  else
  {

    v36 = sub_1DD63F9D8();
    v37 = sub_1DD640368();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DD38D000, v36, v37, "cannot look up an unknown handle type in CNContactStore", v38, 2u);
      MEMORY[0x1E12B3DA0](v38, -1, -1);
    }
  }

  v39 = v60;
  v40 = sub_1DD3CC020();

  if (v40)
  {
    v41 = sub_1DD3FAA54(v54, v55, v30);
    MEMORY[0x1EEE9AC00](v41);
    *(&v54 - 4) = v69;
    *(&v54 - 3) = v39;
    *(&v54 - 2) = v61;
    sub_1DD6054D0();
    v43 = v42;
    sub_1DD390754(v70, &qword_1ECCDCCB0, &unk_1DD64AEE0);

    *a4 = v43;
  }

  else
  {

    memcpy(v67, v39, sizeof(v67));
    memcpy(v66, v39, sizeof(v66));
    sub_1DD3C9478(v67, v65);
    v44 = v57;
    sub_1DD40ED6C(v66, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC40, &unk_1DD647D60);
    v45 = swift_allocObject();
    v64 = xmmword_1DD643F90;
    *(v45 + 16) = xmmword_1DD643F90;
    LOBYTE(v66[0]) = v54;
    v66[1] = v55;
    v66[2] = v30;
    v66[3] = v59;
    v66[4] = v63;
    v66[5] = v31;
    sub_1DD40F034();
    v46 = *(v56 + 80);

    *(v44 + v46) = v45;
    v47 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) + 36)];
    v48 = v58;
    sub_1DD5D1CDC(v47, v58, type metadata accessor for ContactResolver.SignalSet);
    *(v48 + 340) = 1;
    sub_1DD63FA18();
    *(v48 + 352) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
    v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
    v51 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = v64;
    v53 = v52 + v51;
    sub_1DD5D1CDC(v44, v53, type metadata accessor for Contact);
    sub_1DD5D1D3C(v48, v53 + v50[11]);
    sub_1DD390754(v70, &qword_1ECCDCCB0, &unk_1DD64AEE0);
    *a4 = v52;
    return sub_1DD415B40(v44);
  }

  return result;
}

void *sub_1DD5D1610@<X0>(void *a1@<X8>)
{
  sub_1DD63FA68();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD63FA28();
  sub_1DD63FA58();
  v3 = sub_1DD63EED8();
  v5 = v4;

  v6 = v3 == 0x415F6E6F6D6D6F63 && v5 == 0xEC000000746E6567;
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    v18 = v3 == 0x505F6E6F6D6D6F63 && v5 == 0xED00006E6F737265;
    if (!v18 && (sub_1DD640CD8() & 1) == 0)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v22 = sub_1DD63F9F8();
      __swift_project_value_buffer(v22, qword_1EE16F068);

      v23 = sub_1DD63F9D8();
      v24 = sub_1DD640368();

      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_18_1();
        v25 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v28 = v23;
        v26 = swift_slowAlloc();
        v32[0] = v26;
        *v25 = 136446210;
        v27 = sub_1DD39565C(v3, v5, v32);

        *(v25 + 4) = v27;
        _os_log_impl(&dword_1DD38D000, v28, v24, "CRR does not support SRR for %{public}s, only common_Agent and common_Person", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      goto LABEL_15;
    }

    sub_1DD63FA58();
    sub_1DD63E6B8();
    OUTLINED_FUNCTION_17_38();

    if (v31)
    {
      UsoEntity_common_Person.toContactQuery()(v30);

      v19 = OUTLINED_FUNCTION_7_63();
      v20(v19);
      v9 = v30;
      goto LABEL_8;
    }

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v21 = sub_1DD63F9F8();
    __swift_project_value_buffer(v21, qword_1EE16F068);
    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640368();
    if (!os_log_type_enabled(v11, v12))
    {
LABEL_14:

LABEL_15:
      v15 = OUTLINED_FUNCTION_7_63();
      v16(v15);
      sub_1DD447694(v32);
      return memcpy(a1, v32, 0x108uLL);
    }

    OUTLINED_FUNCTION_28();
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "could not convert SRR result to common_Person";
LABEL_13:
    _os_log_impl(&dword_1DD38D000, v11, v12, v14, v13, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    goto LABEL_14;
  }

  sub_1DD63FA58();
  sub_1DD63E5C8();
  OUTLINED_FUNCTION_17_38();

  if (!v31)
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v10 = sub_1DD63F9F8();
    __swift_project_value_buffer(v10, qword_1EE16F068);
    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640368();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_28();
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "could not convert SRR result to common_Agent";
    goto LABEL_13;
  }

  UsoEntity_common_Agent.toContactQuery()(v29);

  v7 = OUTLINED_FUNCTION_7_63();
  v8(v7);
  v9 = v29;
LABEL_8:
  memcpy(v32, v9, 0x108uLL);
  nullsub_1();
  return memcpy(a1, v32, 0x108uLL);
}

void sub_1DD5D1AA0(void **a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v8 = v7;
  sub_1DD3C9478(a2, &v12);
  sub_1DD40F314();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) + 36);
  v10 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) + 36);
  sub_1DD5D1CDC(a3 + v9, v10, type metadata accessor for ContactResolver.SignalSet);
  *(v10 + 340) = 1;
  sub_1DD63FA18();
  *(v10 + 352) = v11;
}

uint64_t sub_1DD5D1BB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5D1BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD5D1C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD5D1CDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5D1D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolver.SignalSet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

SiriInference::State __swiftcall State.init(name:prefix:suffix:)(SiriInference::State name, SiriInference::State::Prefix_optional prefix, SiriInference::State::Suffix_optional suffix)
{
  v4 = *prefix.value;
  v5 = *suffix.value;
  *(v3 + 8) = *&name.prefix.value;
  *v3 = v4;
  *(v3 + 1) = v5;
  LOBYTE(name.name._object) = prefix;
  return name;
}

SiriInference::State::Prefix_optional __swiftcall State.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t State.Prefix.rawValue.getter()
{
  v1 = 0x6574617473;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28265;
  }
}

SiriInference::State::Suffix_optional __swiftcall State.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t State.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static State.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (v4 != 3)
    {
      return 0;
    }
  }

  else if (v4 == 3 || (sub_1DD3B2D8C() & 1) == 0)
  {
    return 0;
  }

  result = v5 == 3 && v3 == 3;
  if (v3 != 3 && v5 != 3)
  {

    return sub_1DD3B2D8C();
  }

  return result;
}

uint64_t sub_1DD5D2190(uint64_t a1)
{
  v2 = sub_1DD5D25EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5D21CC(uint64_t a1)
{
  v2 = sub_1DD5D25EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t State.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF7E0, &qword_1DD660DE0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = *(v1 + 1);
  v13[1] = *(v1 + 2);
  v13[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5D25EC();
  sub_1DD640EF8();
  v19 = v10;
  v18 = 0;
  sub_1DD5D2640();
  sub_1DD640C08();
  if (!v2)
  {
    v17 = v14;
    v16 = 1;
    sub_1DD5D2694();
    sub_1DD640C08();
    v15 = 2;
    sub_1DD640C18();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF800, &qword_1DD660DE8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5D25EC();
  sub_1DD640ED8();
  if (!v2)
  {
    v20[0] = 0;
    sub_1DD5D26E8();
    OUTLINED_FUNCTION_2_15(&type metadata for State.Prefix, v20);
    v11 = v20[1];
    v19[0] = 1;
    sub_1DD5D273C();
    OUTLINED_FUNCTION_2_15(&type metadata for State.Suffix, v19);
    v17 = v19[1];
    v18 = 2;
    v13 = sub_1DD640B28();
    v15 = v14;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 1) = v17;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5D25EC()
{
  result = qword_1ECCDF7E8;
  if (!qword_1ECCDF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7E8);
  }

  return result;
}

unint64_t sub_1DD5D2640()
{
  result = qword_1ECCDF7F0;
  if (!qword_1ECCDF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7F0);
  }

  return result;
}

unint64_t sub_1DD5D2694()
{
  result = qword_1ECCDF7F8;
  if (!qword_1ECCDF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF7F8);
  }

  return result;
}

unint64_t sub_1DD5D26E8()
{
  result = qword_1ECCDF808;
  if (!qword_1ECCDF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF808);
  }

  return result;
}

unint64_t sub_1DD5D273C()
{
  result = qword_1ECCDF810;
  if (!qword_1ECCDF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF810);
  }

  return result;
}

unint64_t sub_1DD5D2794()
{
  result = qword_1ECCDF818;
  if (!qword_1ECCDF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF818);
  }

  return result;
}

unint64_t sub_1DD5D27EC()
{
  result = qword_1ECCDF820;
  if (!qword_1ECCDF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF820);
  }

  return result;
}

_BYTE *sub_1DD5D2864(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5D2944()
{
  result = qword_1ECCDF828;
  if (!qword_1ECCDF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF828);
  }

  return result;
}

unint64_t sub_1DD5D299C()
{
  result = qword_1ECCDF830;
  if (!qword_1ECCDF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF830);
  }

  return result;
}

unint64_t sub_1DD5D29F4()
{
  result = qword_1ECCDF838;
  if (!qword_1ECCDF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF838);
  }

  return result;
}

unint64_t sub_1DD5D2A48()
{
  result = qword_1ECCDF840;
  if (!qword_1ECCDF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF840);
  }

  return result;
}

unint64_t sub_1DD5D2A9C()
{
  result = qword_1ECCDF848;
  if (!qword_1ECCDF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF848);
  }

  return result;
}

void sub_1DD5D2AFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  sub_1DD5D3268(1);
  swift_beginAccess();
  if (v2 == sqlite3_bind_parameter_count(*(v1 + 16)))
  {
    v4 = a1 + 32;
    v5 = -v2;
    v6 = 1;
    do
    {
      sub_1DD5D32B0(v4, v6++);
      v4 += 40;
    }

    while (v5 + v6 != 1);
LABEL_5:

    return;
  }

  sub_1DD6408D8();
  sqlite3_bind_parameter_count(*(v1 + 16));
  v7 = sub_1DD640CB8();
  v9 = v8;

  MEMORY[0x1E12B2260](0xD000000000000012, 0x80000001DD674730);
  v10 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v10);

  MEMORY[0x1E12B2260](0x64657373617020, 0xE700000000000000);
  OUTLINED_FUNCTION_24_23("Fatal error", v11, v12, v7, v9, "SiriInference/Statement.swift", v13, v14, 70, 0);
  __break(1u);
}

const char *sub_1DD5D2C8C()
{
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  result = sqlite3_sql(*(v0 + 16));
  if (result)
  {
    return sub_1DD63FF68();
  }

  __break(1u);
  return result;
}

double sub_1DD5D2CC8()
{
  sub_1DD5D3268(0);

  return result;
}

void sub_1DD5D2CF8()
{
  v1 = v0;
  if (*(v0 + 48))
  {

    return;
  }

  v2 = sub_1DD5D31BC();
  if (v2 < 0xFFFFFFFF80000000)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v2;
  if (v2 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_13:
    *(v1 + 48) = v8;

    return;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1DD42A2D4(0, v2, 0, v3, v4, v5, v6);
  v8 = v20;
  swift_beginAccess();
  v9 = 0;
  while (sqlite3_column_name(*(v1 + 16), v9))
  {
    v14 = sub_1DD63FF68();
    v16 = v15;
    v18 = *(v20 + 16);
    v17 = *(v20 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1DD42A2D4(v17 > 1, v18 + 1, 1, v10, v11, v12, v13);
    }

    *(v20 + 16) = v18 + 1;
    v19 = v20 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
    if (v7 == v9)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v7 == ++v9)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  __break(1u);
}

void sub_1DD5D2E58()
{
  v2 = *(v0 + 24);

  v3 = sub_1DD405E00(v2, v0);
  if (!v1 && v3)
  {
    sub_1DD5D320C();
    sub_1DD5D4290(v4, v5);
  }
}

void *sub_1DD5D2EAC()
{
  v0 = sub_1DD5D4114();

  return v0;
}

uint64_t sub_1DD5D2F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  *(v3 + 40) = 1;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = 0;
  v5 = sub_1DD4055B0();
  v6 = sub_1DD63FE68();

  swift_beginAccess();
  v7 = sqlite3_prepare_v2(v5, (v6 + 32), -1, (v3 + 16), 0);
  swift_endAccess();

  sub_1DD40597C(v7, 0);

  if (v4)
  {
  }

  return v3;
}

uint64_t sub_1DD5D3030()
{
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  sqlite3_finalize(*(v0 + 16));

  return v0;
}

uint64_t sub_1DD5D3074()
{
  sub_1DD5D3030();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for Cursor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 16))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Cursor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1DD5D3158()
{
  result = qword_1ECCDF850;
  if (!qword_1ECCDF850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF858, qword_1DD661238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF850);
  }

  return result;
}

uint64_t sub_1DD5D31BC()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  result = sqlite3_column_count(*(v0 + 16));
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

void sub_1DD5D320C()
{
  if (!v0[7])
  {
    OUTLINED_FUNCTION_6_72();
    swift_beginAccess();
    v1 = v0[2];
    if (v1)
    {
      v2 = sub_1DD5D31BC();
      v0[7] = v1;
      v0[8] = v2;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1DD5D3268(char a1)
{
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  result = sqlite3_reset(*(v1 + 16));
  if (a1)
  {
    return sqlite3_clear_bindings(*(v1 + 16));
  }

  return result;
}

uint64_t sub_1DD5D32B0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    swift_beginAccess();
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      return sqlite3_bind_null(v2[2], a2);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_1DD58FB78(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    if (swift_dynamicCast())
    {
      v3 = v13;
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v4 = *(v13 + 16);
          if (!(v4 >> 31))
          {
            v2 = v2[2];
            if (qword_1EE165568 == -1)
            {
LABEL_8:
              sqlite3_bind_blob(v2, a2, (v3 + 32), v4, qword_1EE16F030);
            }

LABEL_49:
            swift_once();
            goto LABEL_8;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    sub_1DD3ADFD0(v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  sub_1DD58FB78(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a2 <= 0x7FFFFFFF)
      {
        return sqlite3_bind_double(v2[2], a2, *&v13);
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  else
  {
    sub_1DD3ADFD0(v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  sub_1DD58FB78(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          return sqlite3_bind_int64(v2[2], a2, v13);
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    sub_1DD3ADFD0(v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  sub_1DD58FB78(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          v2 = v2[2];
          if (qword_1EE165568 == -1)
          {
LABEL_30:
            v8 = qword_1EE16F030;
            v9 = sub_1DD63FE68();

            sqlite3_bind_text(v2, a2, (v9 + 32), -1, v8);
          }

LABEL_56:
          swift_once();
          goto LABEL_30;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    sub_1DD3ADFD0(v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  v10 = MEMORY[0x1E69E7360];
  sub_1DD58FB78(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    if (swift_dynamicCast())
    {
      v11 = v13;
LABEL_39:
      v16 = v10;
      v17 = &off_1F58C4E70;
      v15[0] = v11;
      sub_1DD5D32B0(v15, a2);
      v12 = v15;
      return sub_1DD3ADFD0(v12, &qword_1ECCDCF98, &qword_1DD6547F0);
    }
  }

  else
  {
    sub_1DD3ADFD0(v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  sub_1DD58FB78(a1, v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
    if (swift_dynamicCast())
    {
      v11 = v13;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1DD3ADFD0(v15, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  sub_1DD58FB78(a1, &v13);
  if (!v14)
  {
    v12 = &v13;
    return sub_1DD3ADFD0(v12, &qword_1ECCDCF98, &qword_1DD6547F0);
  }

  sub_1DD3AA4A8(&v13, v15);
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000001FLL, 0x80000001DD674750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
  sub_1DD6409F8();
  result = sub_1DD640A38();
  __break(1u);
  return result;
}

uint64_t sub_1DD5D3890(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (*(a1 + 16))
  {
    sub_1DD5D2AFC(a1);
    v5 = sub_1DD5D3890(MEMORY[0x1E69E7CC0]);

    if (!v2)
    {
      return v5;
    }
  }

  else
  {
    sub_1DD5D3268(0);
    sub_1DD406E2C();
    v6 = *(v1 + 24);
    swift_beginAccess();
    do
    {
      while (1)
      {
        v7 = qword_1EE165C08;

        if (v7 != -1)
        {
          swift_once();
        }

        sub_1DD640458();
        v8 = sub_1DD405A20();
        if ((v14 & 1) != 0 || v13 != v8)
        {
          break;
        }

        v9 = sqlite3_step(*(v4 + 16));
        v10 = sub_1DD40597C(v9, 0);

        if (v3)
        {
          return v4;
        }

        if (v10 != 100)
        {
          goto LABEL_16;
        }
      }

      v11 = *(v6 + 88);
      sub_1DD640488();

      if (v3)
      {
        return v4;
      }
    }

    while ((v15 & 1) != 0);
LABEL_16:
  }

  return v4;
}

void sub_1DD5D3A54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  if (*(a1 + 16))
  {
    sub_1DD5D2AFC(a1);
    sub_1DD5D3A54(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DD5D3268(0);
    v6 = *(v2 + 24);

    sub_1DD405E00(v6, v2);
    if (!v4)
    {
      sub_1DD5D320C();
      sub_1DD5D3AF8(0, v7, a2);
    }
  }
}

void sub_1DD5D3AF8(uint64_t iCol@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X8>)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1DD6408D8();

    v12 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v12);

    OUTLINED_FUNCTION_24_23("Fatal error", v13, v14, 0xD000000000000019, 0x80000001DD674710, "SiriInference/Statement.swift", v15, v16, 289, 0);
    __break(1u);
    return;
  }

  if (iCol > 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

  switch(sqlite3_column_type(a2, iCol))
  {
    case 1:
      v6 = sqlite3_column_int64(a2, iCol);
      v7 = MEMORY[0x1E69E7360];
      v8 = &off_1F58C4E70;
      goto LABEL_9;
    case 2:
      v11 = sqlite3_column_double(a2, iCol);
      *(a3 + 24) = MEMORY[0x1E69E63B0];
      *(a3 + 32) = &off_1F58C4E58;
      *a3 = v11;
      return;
    case 3:
      if (!sqlite3_column_text(a2, iCol))
      {
        goto LABEL_14;
      }

      v9 = sub_1DD63FF78();
      *(a3 + 24) = MEMORY[0x1E69E6158];
      *(a3 + 32) = &off_1F58C4E78;
      *a3 = v9;
      *(a3 + 8) = v10;
      return;
    case 4:
      v6 = sub_1DD5D3E4C(iCol, a2);
      v7 = &type metadata for Blob;
      v8 = &off_1F58C4EA0;
LABEL_9:
      *(a3 + 24) = v7;
      *(a3 + 32) = v8;
      *a3 = v6;
      break;
    case 5:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      break;
    default:
      goto LABEL_15;
  }
}

uint64_t sub_1DD5D3CCC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  v5 = sqlite3_step(*(a1 + 16));
  result = sub_1DD40597C(v5, 0);
  if (!v2)
  {
    *a2 = result == 100;
  }

  return result;
}

uint64_t sub_1DD5D3D38@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1DD5D2CC8();

  *a1 = v3;
  return result;
}

uint64_t sub_1DD5D3E4C(uint64_t iCol, sqlite3_stmt *a2)
{
  if (iCol < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = iCol;
  if (iCol > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    return iCol;
  }

  v4 = sqlite3_column_blob(a2, iCol);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a2, v2);

  return sub_1DD3D4184(v5, v6);
}

uint64_t sub_1DD5D3EE8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF868, &qword_1DD661390);
  result = swift_allocObject();
  *(result + 16) = sub_1DD5D4970;
  *(result + 24) = v5;
  return result;
}

double sub_1DD5D3F84@<D0>(uint64_t a1@<X0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8 >= a3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *&result = 1;
    *(a4 + 24) = xmmword_1DD644510;
  }

  else
  {
    swift_beginAccess();
    *(a1 + 16) = v8 + 1;
    sub_1DD5D3AF8(v8, a2, a4);
  }

  return result;
}

uint64_t sub_1DD5D4030@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD5D3EE8(*v1, v1[1]);
  *a1 = result;
  return result;
}

uint64_t sub_1DD5D4074(uint64_t a1, uint64_t a2)
{
  result = sub_1DD5D5388(&qword_1ECCDF860, a2, type metadata accessor for Statement, &unk_1DD6612D0);
  *(a1 + 8) = result;
  return result;
}

void *sub_1DD5D4114()
{
  sub_1DD5D3268(0);
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; ++i)
  {
    sub_1DD5D2E58();
    v4 = v3;
    if (!v3)
    {
      v15 = v1[3];
      if (v15 >= 2)
      {
        v16 = v15 >> 1;
        v14 = __OFSUB__(v16, v0);
        v17 = v16 - v0;
        if (v14)
        {
          goto LABEL_25;
        }

        v1[2] = v17;
      }

      return v1;
    }

    if (!v0)
    {
      v5 = v1[3];
      if (((v5 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      if (v6 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF870, &qword_1DD661398);
      v8 = swift_allocObject();
      v9 = (_swift_stdlib_malloc_size(v8) - 32) / 8;
      v8[2] = v7;
      v8[3] = 2 * v9;
      v10 = (v8 + 4);
      v11 = v1[3];
      v12 = v11 >> 1;
      if (v1[2])
      {
        if (v8 != v1 || v10 >= &v1[v12 + 4])
        {
          memmove(v8 + 4, v1 + 4, 8 * v12);
        }

        v1[2] = 0;
      }

      i = (v10 + 8 * v12);
      v0 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - (v11 >> 1);

      v1 = v8;
    }

    v14 = __OFSUB__(v0--, 1);
    if (v14)
    {
      break;
    }

    *i = v4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1DD5D4290(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);

  swift_beginAccess();
  v6 = 0;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0] + 32;
  v10 = a2 & ~(a2 >> 63);
  v28 = v5;
  if (v10)
  {
    while (1)
    {
      v11 = v7 + 1;
      *v5 = v7 + 1;
      sub_1DD5D3AF8(v7, a1, v29);
      if (!v6)
      {
        v12 = v8[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v13 = a1;
        v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
        v16 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v16) - 32) / 40;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = (v16 + 4);
        v19 = v8[3];
        v20 = v19 >> 1;
        if (v8[2])
        {
          if (v16 != v8 || v18 >= &v8[5 * v20 + 4])
          {
            memmove(v16 + 4, v8 + 4, 40 * v20);
          }

          v8[2] = 0;
        }

        v9 = v18 + 40 * v20;
        v6 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

        v8 = v16;
        a1 = v13;
        v5 = v28;
      }

      v22 = __OFSUB__(v6--, 1);
      if (v22)
      {
        break;
      }

      v23 = v29[0];
      v24 = v29[1];
      *(v9 + 32) = v30;
      *v9 = v23;
      *(v9 + 16) = v24;
      v9 += 40;
      --v10;
      v7 = v11;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:

  v25 = v8[3];
  if (v25 >= 2)
  {
    v26 = v25 >> 1;
    v22 = __OFSUB__(v26, v6);
    v27 = v26 - v6;
    if (v22)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v8[2] = v27;
  }
}

void sub_1DD5D4474()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = 0;
  v10 = 0;
  v43 = v11;
  v41 = *(v11 + 80);
  v12 = MEMORY[0x1E69E7CC0];
  v42 = (v41 + 32) & ~v41;
  v13 = MEMORY[0x1E69E7CC0] + v42;
  v14 = *(v1 + 16);
  v39 = v14;
  v40 = &v38 - v7;
  while (1)
  {
    if (v14 == v10)
    {
      v35 = v12[3];
      if (v35 >= 2)
      {
        v36 = v35 >> 1;
        v34 = __OFSUB__(v36, v9);
        v37 = v36 - v9;
        if (v34)
        {
          goto LABEL_35;
        }

        v12[2] = v37;
      }

      OUTLINED_FUNCTION_17();
      return;
    }

    v15 = *(type metadata accessor for ContactMatchRuntimeData(0) - 8);
    v16 = v1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v10;
    v17 = *(v2 + 48);
    *v5 = v10;
    sub_1DD3CD140(v16, v5 + v17);
    sub_1DD5D5A38(v5, v8);
    if (v9)
    {
      v18 = v12;
    }

    else
    {
      v19 = v12[3];
      if (((v19 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v20 = v2;
      v21 = v1;
      v22 = v19 & 0xFFFFFFFFFFFFFFFELL;
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAC0, &unk_1DD649FC0);
      v24 = v42;
      v25 = *(v43 + 72);
      v18 = swift_allocObject();
      v26 = _swift_stdlib_malloc_size(v18);
      if (!v25)
      {
        goto LABEL_33;
      }

      v27 = v26 - v24;
      if (v26 - v24 == 0x8000000000000000 && v25 == -1)
      {
        goto LABEL_34;
      }

      v29 = v27 / v25;
      v18[2] = v23;
      v18[3] = 2 * (v27 / v25);
      v30 = v18 + v24;
      v31 = v12[3];
      v32 = (v31 >> 1) * v25;
      if (v12[2])
      {
        if (v18 < v12 || v30 >= v12 + v42 + v32)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v18 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v12[2] = 0;
      }

      v13 = &v30[v32];
      v9 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - (v31 >> 1);

      v1 = v21;
      v2 = v20;
      v14 = v39;
      v8 = v40;
    }

    v34 = __OFSUB__(v9--, 1);
    if (v34)
    {
      break;
    }

    sub_1DD5D5A38(v8, v13);
    v13 += *(v43 + 72);
    ++v10;
    v12 = v18;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void *sub_1DD5D4754(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF868, &qword_1DD661390);
  result = swift_allocObject();
  v13 = result;
  result[2] = sub_1DD5D5AAC;
  result[3] = v11;
  if (!a2)
  {
    v14 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_8:
    v14 = a3;
LABEL_11:
    *a1 = v13;
    return v14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      result = (v13[2])(&v18);
      if (*(&v19 + 1) == 1)
      {
        sub_1DD3ADFD0(&v18, &qword_1ECCDF878, &unk_1DD6613A0);
        goto LABEL_11;
      }

      v16 = v19;
      v21 = v18;
      v22 = v19;
      v17 = v20;
      v23 = v20;
      *a2 = v18;
      *(a2 + 16) = v16;
      *(a2 + 32) = v17;
      a2 += 40;
      ++v14;
      if (v15 == a3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD5D48B0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1DD5D3268(0);
  v7 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_1DD5D2E58();
        if (!v9)
        {
          goto LABEL_9;
        }

        *(a2 + 8 * v7++) = v9;
        if (v8 == a3)
        {
          v7 = a3;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_9:
    *a1 = v3;
    return v7;
  }

  return result;
}

void sub_1DD5D497C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  OUTLINED_FUNCTION_5_84();
  v12 = v11 & v10;
  if (!v7)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_18:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v9;
    a1[3] = v15;
    a1[4] = v12;
    return;
  }

  v13 = v8;
  if (!v8)
  {
    v15 = 0;
    goto LABEL_18;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v14 = v7;
    OUTLINED_FUNCTION_4_89();
    v29 = v17;
    v19 = (v18 - v17) >> 6;
    while (1)
    {
      if (v16 >= v13)
      {
        goto LABEL_21;
      }

      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

      if (!v12)
      {
        while (1)
        {
          v21 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v21 >= v19)
          {
            v12 = 0;
            goto LABEL_16;
          }

          v12 = *(v6 + 8 * v21);
          ++v15;
          if (v12)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v21 = v15;
LABEL_12:
      OUTLINED_FUNCTION_20_34();
      v23 = *(a4 + 56) + 40 * (v22 | (v21 << 6));
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 24);
      v28 = *(v23 + 32);
      *v14 = v24;
      *(v14 + 8) = v25;
      *(v14 + 16) = v26;
      *(v14 + 24) = v27;
      *(v14 + 32) = v28;
      if (v20 == v13)
      {
        break;
      }

      v14 += 40;

      v16 = v20;
      v15 = v21;
    }

    v15 = v21;
LABEL_16:
    v9 = v29;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1DD5D4AF0()
{
  OUTLINED_FUNCTION_11_49();
  if (!v4)
  {
    v1 = 0;
    goto LABEL_15;
  }

  if (!v1)
  {
LABEL_15:
    OUTLINED_FUNCTION_3_91(v0, v1, v2, v3);
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_23_32();
    while (!__OFADD__(v9, 1))
    {
      if (!v6)
      {
        while (1)
        {
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v10 >= v8)
          {
            v1 = v9;
            goto LABEL_15;
          }

          ++v7;
          if (*(v3 + 8 * v10))
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_18_37(v0, v5, v1, v2);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D4BBC()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_0_138();
  if (!v4)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_17:
    OUTLINED_FUNCTION_2_107(v10);
    OUTLINED_FUNCTION_17();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_122();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_12_45();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_14_43();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_8_69();
      if (v9)
      {

        v10 = v8;
        goto LABEL_17;
      }

      v0 += 16;

      OUTLINED_FUNCTION_13_47();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D4C98()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8(0);
  OUTLINED_FUNCTION_0();
  v43 = v9;
  v44 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v34 - v13;
  v40 = -1 << *(v1 + 32);
  OUTLINED_FUNCTION_5_84();
  v17 = v16 & v15;
  if (!v5)
  {
    v19 = 0;
LABEL_19:
    v33 = ~v40;
    *v7 = v1;
    v7[1] = v14;
    v7[2] = v33;
    v7[3] = v19;
    v7[4] = v17;
    OUTLINED_FUNCTION_17();
    return;
  }

  if (!v3)
  {
    v19 = 0;
    goto LABEL_19;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v35 = v7;
    v36 = v14;
    OUTLINED_FUNCTION_4_89();
    v22 = (v21 - v40) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    v39 = v18;
    while (v20 < v18)
    {
      if (__OFADD__(v20, 1))
      {
        goto LABEL_23;
      }

      if (!v17)
      {
        v14 = v36;
        while (1)
        {
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v23 >= v22)
          {
            v17 = 0;
            v7 = v35;
            goto LABEL_19;
          }

          v17 = *(v36 + 8 * v23);
          ++v19;
          if (v17)
          {
            v45 = v20 + 1;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v45 = v20 + 1;
      v23 = v19;
LABEL_14:
      OUTLINED_FUNCTION_19_36();
      v25 = v1;
      v26 = *(v1 + 48);
      v28 = v43;
      v27 = v44;
      v29 = *(v44 + 72);
      v30 = v42;
      (*(v44 + 16))(v42, v26 + v29 * (v24 | (v23 << 6)), v43);
      v31 = *(v27 + 32);
      v32 = v41;
      v31(v41, v30, v28);
      v31(v5, v32, v28);
      v18 = v39;
      v20 = v45;
      if (v45 == v39)
      {
        v19 = v23;
        v7 = v35;
        v14 = v36;
        v1 = v25;
        goto LABEL_19;
      }

      v5 += v29;
      v19 = v23;
      v1 = v25;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D4EFC()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_5_84();
  v5 = v4 & v3;
  if (!v6)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_17:
    OUTLINED_FUNCTION_2_107(v12);
    OUTLINED_FUNCTION_17();
    return;
  }

  v7 = v2;
  if (!v2)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_122();
    while (v9 < v7)
    {
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (!__OFADD__(v8, 1))
        {
          if (v8 + 1 >= v1)
          {
            OUTLINED_FUNCTION_12_45();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_14_43();
        }

        __break(1u);
        break;
      }

      v10 = v8;
      OUTLINED_FUNCTION_8_69();
      if (v11)
      {

        v12 = v10;
        goto LABEL_17;
      }

      v0 += 16;

      OUTLINED_FUNCTION_13_47();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D4FE4()
{
  OUTLINED_FUNCTION_11_49();
  if (!v4)
  {
    v1 = 0;
    goto LABEL_15;
  }

  if (!v1)
  {
LABEL_15:
    OUTLINED_FUNCTION_3_91(v0, v1, v2, v3);
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_23_32();
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (!v6)
      {
        while (1)
        {
          v11 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v11 >= v8)
          {
            v1 = v9;
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v11);
          ++v7;
          if (v6)
          {
            v7 = v11;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      *v5++ = *(*(v2 + 48) + (v12 | (v7 << 6)));
      v9 = v10;
      if (v10 == v1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D50AC()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_0_138();
  if (!v4)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_17:
    OUTLINED_FUNCTION_2_107(v11);
    OUTLINED_FUNCTION_17();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_122();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_12_45();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_14_43();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_90_0();
      OUTLINED_FUNCTION_7_64(v9);
      if (v10)
      {

        v11 = v8;
        goto LABEL_17;
      }

      v0 += 8;

      OUTLINED_FUNCTION_13_47();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D5178(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_1DD640778();
    type metadata accessor for DateTimeConstraint();
    sub_1DD5D5388(&qword_1ECCDC188, 255, type metadata accessor for DateTimeConstraint, &unk_1DD650364);
    sub_1DD6402A8();
    v4 = v22;
    v8 = v23;
    v9 = v24;
    v10 = v25;
    v11 = v26;
    if (!v6)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v10 = 0;
    v17 = -1 << *(a4 + 32);
    v8 = a4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(a4 + 56);
    if (!a2)
    {
      goto LABEL_26;
    }
  }

  if (!a3)
  {
LABEL_26:
    *a1 = v4;
    a1[1] = v8;
    a1[2] = v9;
    a1[3] = v10;
    a1[4] = v11;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_1DD6407F8() || (type metadata accessor for DateTimeConstraint(), swift_dynamicCast(), (v16 = v21) == 0))
        {
LABEL_25:
          v9 = v20;
          goto LABEL_26;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        OUTLINED_FUNCTION_19_36();

        if (!v16)
        {
          goto LABEL_25;
        }
      }

      *v6++ = v16;
      ++v12;
      if (v14 == a3)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DD5D5388(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DD5D53D0()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_0_138();
  if (!v4)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_17:
    OUTLINED_FUNCTION_2_107(v15);
    OUTLINED_FUNCTION_17();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_122();
    while (v7 < v5)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_12_45();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_14_43();
        }

        __break(1u);
        break;
      }

      v9 = v6;
      v10 = OUTLINED_FUNCTION_17_39();
      v13 = *(v12 + 8 * v11);
      v1 &= v1 - 1;
      *v0 = v14;
      v0[1] = v10;
      v0[2] = v13;
      if (v8 == v5)
      {

        v15 = v9;
        goto LABEL_17;
      }

      v0 += 3;

      OUTLINED_FUNCTION_13_47();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1DD5D54AC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    v10 = a3 - 1;
    for (i = (a4 + 24 * v6 + 24); ; i -= 3)
    {
      v12 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v12 > *(a4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = *(i - 1);
      v14 = *i;
      *v8 = *(i - 2);
      v8[1] = v13;
      v8[2] = v14;
      if (!(v10 + v9))
      {

        v12 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 3;

      --v9;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1DD5D5588()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_0_138();
  if (!v4)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_17:
    OUTLINED_FUNCTION_2_107(v15);
    OUTLINED_FUNCTION_17();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_122();
    while (v7 < v5)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_12_45();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_14_43();
        }

        __break(1u);
        break;
      }

      v9 = v6;
      v10 = OUTLINED_FUNCTION_17_39();
      v13 = *(v12 + 8 * v11);
      v1 &= v1 - 1;
      *v0 = v14;
      v0[1] = v10;
      v0[2] = v13;
      if (v8 == v5)
      {

        v15 = v9;
        goto LABEL_17;
      }

      v0 += 3;

      OUTLINED_FUNCTION_13_47();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D5664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  OUTLINED_FUNCTION_5_84();
  v11 = v10 & v9;
  if (!v6)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_18:
    *v5 = a4;
    v5[1] = v4;
    v5[2] = ~v8;
    v5[3] = v14;
    v5[4] = v11;
    return;
  }

  v12 = v7;
  if (!v7)
  {
    v14 = 0;
    goto LABEL_18;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v13 = v6;
    v25 = v8;
    v26 = v5;
    OUTLINED_FUNCTION_4_89();
    v18 = (v16 - v17) >> 6;
    while (1)
    {
      if (v15 >= v12)
      {
        goto LABEL_21;
      }

      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_22;
      }

      if (!v11)
      {
        while (1)
        {
          v20 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v11 = 0;
            goto LABEL_16;
          }

          v11 = *(v4 + 8 * v20);
          ++v14;
          if (v11)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v20 = v14;
LABEL_12:
      OUTLINED_FUNCTION_20_34();
      v22 = v21 | (v20 << 6);
      v23 = (*(a4 + 48) + (v22 << 7));
      memcpy(__dst, v23, 0x80uLL);
      v24 = *(*(a4 + 56) + 8 * v22);
      memmove(v13, v23, 0x80uLL);
      v13[16] = v24;
      if (v19 == v12)
      {
        break;
      }

      v13 += 17;
      sub_1DD400BFC(__dst, v28);
      v15 = v19;
      v14 = v20;
    }

    sub_1DD400BFC(__dst, v28);
    v14 = v20;
LABEL_16:
    v8 = v25;
    v5 = v26;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1DD5D57EC()
{
  OUTLINED_FUNCTION_11_49();
  if (!v4)
  {
    v1 = 0;
    goto LABEL_15;
  }

  if (!v1)
  {
LABEL_15:
    OUTLINED_FUNCTION_3_91(v0, v1, v2, v3);
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_23_32();
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (!v6)
      {
        while (1)
        {
          v11 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v11 >= v8)
          {
            v1 = v9;
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v11);
          ++v7;
          if (v6)
          {
            v7 = v11;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      *v5++ = *(*(v2 + 56) + ((v7 << 9) | (8 * v12)));
      v9 = v10;
      if (v10 == v1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D58B8()
{
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_0_138();
  if (!v4)
  {
    OUTLINED_FUNCTION_9_57();
LABEL_17:
    OUTLINED_FUNCTION_2_107(v11);
    OUTLINED_FUNCTION_17();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_122();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_12_45();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_14_43();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_90_0();
      OUTLINED_FUNCTION_7_64(v9);
      if (v10)
      {
        swift_unknownObjectRetain();
        v11 = v8;
        goto LABEL_17;
      }

      v0 += 8;
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_13_47();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1DD5D5984()
{
  OUTLINED_FUNCTION_11_49();
  if (!v4)
  {
    v1 = 0;
    goto LABEL_15;
  }

  if (!v1)
  {
LABEL_15:
    OUTLINED_FUNCTION_3_91(v0, v1, v2, v3);
    return;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_23_32();
    while (!__OFADD__(v9, 1))
    {
      if (!v6)
      {
        while (1)
        {
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v10 >= v8)
          {
            v1 = v9;
            goto LABEL_15;
          }

          ++v7;
          if (*(v3 + 8 * v10))
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_18_37(v0, v5, v1, v2);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DD5D5A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_91@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a1 = a3;
  a1[1] = a4;
  a1[2] = ~v4;
  a1[3] = v6;
  a1[4] = v5;
  return a2;
}

uint64_t OUTLINED_FUNCTION_22_31(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

uint64_t OUTLINED_FUNCTION_24_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_1DD640A38();
}

uint64_t sub_1DD5D5B60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v64 = a3;
  v59 = sub_1DD63F598();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57[-v13];
  v15 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_4();
  v61 = (v19 - v20);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v57[-v22];
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v23);
  v65 = &v57[-v24];
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v57[-v26];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v57[-v29];
  v62 = a2;
  sub_1DD63F508();
  v31 = *(type metadata accessor for RunTimeDataRecord(0) + 28);
  OUTLINED_FUNCTION_2_60();
  sub_1DD5DA740(v32);
  if (sub_1DD63FD78())
  {
    (*(v17 + 8))(v27, v15);
    (*(v17 + 16))(v30, a1 + v31, v15);
  }

  else
  {
    (*(v17 + 32))(v30, v27, v15);
  }

  sub_1DD63F528();
  v33 = v59;
  (*(v7 + 104))(v11, *MEMORY[0x1E69CF930], v59);
  sub_1DD3B1B90();
  v34 = *(v7 + 8);
  v34(v11, v33);
  v34(v14, v33);
  v35 = v65;
  sub_1DD63CF98();
  v36 = v61;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v37 = sub_1DD63F9F8();
  __swift_project_value_buffer(v37, qword_1EE16F068);
  v38 = *(v17 + 16);
  v39 = v60;
  v62 = v30;
  v38(v60, v30, v15);
  v38(v36, v35, v15);
  v40 = sub_1DD63F9D8();
  v41 = sub_1DD640368();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v66[0] = v59;
    *v42 = 136315394;
    sub_1DD5DA740(&qword_1EE1663F8);
    v58 = v41;
    v43 = sub_1DD640CB8();
    v44 = v39;
    v45 = v36;
    v47 = v46;
    v48 = *(v17 + 8);
    v48(v44, v15);
    v49 = sub_1DD39565C(v43, v47, v66);

    *(v42 + 4) = v49;
    *(v42 + 12) = 2080;
    v50 = sub_1DD640CB8();
    v52 = v51;
    v48(v45, v15);
    v53 = sub_1DD39565C(v50, v52, v66);
    v35 = v65;

    *(v42 + 14) = v53;
    _os_log_impl(&dword_1DD38D000, v40, v58, "finding interaction between %s and %s", v42, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    v48 = *(v17 + 8);
    v48(v36, v15);
    v54 = (v48)(v39, v15);
  }

  MEMORY[0x1EEE9AC00](v54);
  v55 = v62;
  *&v57[-16] = v62;
  *&v57[-8] = v35;
  sub_1DD608240();
  v48(v35, v15);
  return (v48)(v55, v15);
}

uint64_t sub_1DD5D60F4()
{
  v0 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-v8];
  type metadata accessor for StitchableInteraction(0);
  sub_1DD63CF98();
  sub_1DD63CF98();
  v13 = v9;
  v14 = v6;
  sub_1DD608240();
  v10 = *(v2 + 8);
  v10(v6, v0);
  return (v10)(v9, v0);
}

uint64_t sub_1DD5D624C(uint64_t a1)
{
  v3 = 0;
  v61 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  while (v4 != v3)
  {
    v5 = *(type metadata accessor for RunTimeDataRecord(0) - 8);
    sub_1DD5D7D70(&v61, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3++);
  }

  v6 = v61;
  v45 = *(type metadata accessor for StitchableInteraction(0) + 36);
  v46 = v1;
  v7 = *(v1 + v45);

  v47 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_31:
    sub_1DD5869E8();
    v47 = v40;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(v7 + 16);
  *&v8 = 136315394;
  v43 = v8;
  v48 = v11;
  v49 = v6;
  while (v11 != v10)
  {
    if (v10 >= *(v7 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    memcpy(__dst, (v7 + v9 + 32), sizeof(__dst));
    v12 = memmove(&v61, (v7 + v9 + 32), 0x50uLL);
    if (!v63 || !*(v6 + 16))
    {
      v30 = OUTLINED_FUNCTION_8_70(v12, v13, v14, v15, v16, v17, v18, v19, v41, v42, v43, *(&v43 + 1), v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, __dst[0]);
      sub_1DD3E6404(v30, v31);
LABEL_18:
      sub_1DD3E6460(&v61);
      goto LABEL_19;
    }

    v20 = OUTLINED_FUNCTION_8_70(v12, v13, v14, v15, v16, v17, v18, v19, v41, v42, v43, *(&v43 + 1), v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, __dst[0]);
    sub_1DD3E6404(v20, v21);

    v22 = sub_1DD3978DC();
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_18;
    }

    v25 = (*(v6 + 56) + 16 * v22);
    v26 = *v25;
    v27 = v25[1];
    v6 = v61;
    v28 = v62;
    v29 = *v25 == v61 && v27 == v62;
    if (v29 || (sub_1DD640CD8() & 1) != 0)
    {
      sub_1DD3E6460(&v61);
    }

    else
    {
      v32 = qword_1EE165FB0;

      if (v32 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v33 = sub_1DD63F9F8();
      __swift_project_value_buffer(v33, qword_1EE16F068);

      sub_1DD3E6404(&v61, &v50);
      v34 = sub_1DD63F9D8();
      v35 = sub_1DD640368();
      sub_1DD3E6460(&v61);

      if (os_log_type_enabled(v34, v35))
      {
        HIDWORD(v41) = v35;
        v36 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v50 = v42;
        *v36 = v43;

        sub_1DD3E6460(&v61);
        v37 = sub_1DD39565C(v6, v28, &v50);

        *(v36 + 4) = v37;
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_1DD39565C(v26, v27, &v50);
        _os_log_impl(&dword_1DD38D000, v34, BYTE4(v41), "replacing interaction contact ID: %s -> %s", v36, 0x16u);
        v6 = v42;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {

        sub_1DD3E6460(&v61);
      }

      if (v10 >= *(v47 + 16))
      {
        goto LABEL_30;
      }

      v38 = v47 + v9;
      *(v38 + 32) = v26;
      *(v38 + 40) = v27;
    }

    v11 = v48;
    v6 = v49;
LABEL_19:
    v9 += 80;
    ++v10;
  }

  *(v46 + v45) = v47;
  return result;
}

uint64_t sub_1DD5D6624(void *a1)
{
  objc_opt_self();
  OUTLINED_FUNCTION_6_9();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 contacts];
    if (v5)
    {
      goto LABEL_9;
    }
  }

  objc_opt_self();
  OUTLINED_FUNCTION_6_9();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v4 = a1;
    v5 = [v7 recipients];
    if (!v5)
    {

      goto LABEL_7;
    }

LABEL_9:
    v10 = v5;
    sub_1DD408AE4();
    v11 = sub_1DD640118();

    goto LABEL_10;
  }

LABEL_7:
  objc_opt_self();
  OUTLINED_FUNCTION_6_9();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v4 = a1;
    v5 = [v9 recipients];
    if (v5)
    {
      goto LABEL_9;
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
  v85 = MEMORY[0x1E69E7CC0];
  result = sub_1DD5DA164(a1);
  if (!result)
  {
LABEL_10:
    result = sub_1DD3CC020();
    v13 = result;
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v13 == v14)
      {

        return v15;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E12B2C10](v14, v11);
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        result = *(v11 + 8 * v14 + 32);
      }

      if (__OFADD__(v14, 1))
      {
        break;
      }

      sub_1DD5D8978(result, __src);
      result = memcpy(__dst, __src, sizeof(__dst));
      if (*(&__src[0] + 1))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD3BF370();
          v15 = v18;
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        if (v17 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_23_4(v16);
          sub_1DD3BF370();
          v15 = v19;
        }

        memcpy(v83, __dst, sizeof(v83));
        *(v15 + 16) = v17 + 1;
        result = memcpy((v15 + 80 * v17 + 32), v83, 0x50uLL);
        ++v14;
      }

      else
      {
        ++v14;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v20 = result;
  v21 = 0;
  v22 = result + 64;
  v23 = 1 << *(result + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(result + 64);
  v26 = (v23 + 63) >> 6;
  v79 = v26;
  v80 = result;
  while (v25)
  {
LABEL_35:
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v29 = v28 | (v21 << 6);
    v30 = *(v20 + 56);
    v31 = (*(v20 + 48) + 16 * v29);
    v33 = *v31;
    v32 = v31[1];
    sub_1DD395720(v30 + 32 * v29, &__src[1]);
    *&__dst[0] = v33;
    *(&__dst[0] + 1) = v32;
    v34 = sub_1DD400AE4(&__src[1], &__dst[1]);
    v42 = OUTLINED_FUNCTION_8_70(v34, v35, v36, v37, v38, v39, v40, v41, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0], v83[1], v83[2], v83[3], v83[4], v83[5], v83[6], v83[7], v83[8], v83[9], __dst[0]);
    sub_1DD4DDC08(v42, v43, &qword_1ECCDF880, &qword_1DD6613B8);

    sub_1DD408AE4();
    v44 = swift_dynamicCast();
    if (v44)
    {
      v52 = v82;
      MEMORY[0x1E12B23F0]();
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD640138();
      }

      sub_1DD640168();

      result = sub_1DD390754(__dst, &qword_1ECCDF880, &qword_1DD6613B8);
      v11 = v85;
      v20 = v80;
    }

    else
    {
      v53 = OUTLINED_FUNCTION_8_70(v44, v45, v46, v47, v48, v49, v50, v51, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83[0], v83[1], v83[2], v83[3], v83[4], v83[5], v83[6], v83[7], v83[8], v83[9], __dst[0]);
      sub_1DD4DDC08(v53, v54, &qword_1ECCDF880, &qword_1DD6613B8);

      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF420, &unk_1DD65F3E0);
      if (swift_dynamicCast())
      {
        v77 = v55;
        if (v82 >> 62)
        {
          v56 = sub_1DD6407B8();
        }

        else
        {
          v56 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v57 = v11 >> 62;
        if (v11 >> 62)
        {
          result = sub_1DD6407B8();
        }

        else
        {
          result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v58 = result + v56;
        if (__OFADD__(result, v56))
        {
          goto LABEL_75;
        }

        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (result)
        {
          if (!v57)
          {
            v59 = v11 & 0xFFFFFFFFFFFFFF8;
            if (v58 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }

LABEL_51:
          sub_1DD6407B8();
          goto LABEL_52;
        }

        if (v57)
        {
          goto LABEL_51;
        }

LABEL_52:
        result = sub_1DD640918();
        v11 = result;
        v59 = result & 0xFFFFFFFFFFFFFF8;
LABEL_53:
        v60 = *(v59 + 16);
        v61 = (*(v59 + 24) >> 1) - v60;
        v62 = v59 + 8 * v60;
        v78 = v59;
        if (v82 >> 62)
        {
          v64 = sub_1DD6407B8();
          if (v64)
          {
            v65 = v64;
            result = sub_1DD6407B8();
            if (v61 < result)
            {
              goto LABEL_79;
            }

            v74 = result;
            v75 = v22;
            v76 = v56;
            if (v65 < 1)
            {
              goto LABEL_80;
            }

            v81 = v62 + 32;
            sub_1DD5B6244();
            for (i = 0; i != v65; ++i)
            {
              v67 = sub_1DD5B5E98(v83, i, v82);
              v69 = *v68;
              v67(v83, 0);
              *(v81 + 8 * i) = v69;
            }

            v20 = v80;
            v63 = v74;
            v22 = v75;
            goto LABEL_63;
          }
        }

        else
        {
          v63 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v63)
          {
            v76 = v56;
            if (v61 < v63)
            {
              goto LABEL_78;
            }

            swift_arrayInitWithCopy();
            v20 = v80;
LABEL_63:

            v26 = v79;
            if (v63 < v76)
            {
              goto LABEL_76;
            }

            if (v63 > 0)
            {
              v70 = *(v78 + 16);
              v71 = __OFADD__(v70, v63);
              v72 = v70 + v63;
              if (v71)
              {
                goto LABEL_77;
              }

              *(v78 + 16) = v72;
            }

            goto LABEL_68;
          }
        }

        v26 = v79;
        v20 = v80;
        if (v56 > 0)
        {
          goto LABEL_76;
        }

LABEL_68:
        v85 = v11;
        result = sub_1DD390754(__dst, &qword_1ECCDF880, &qword_1DD6613B8);
      }

      else
      {
        result = sub_1DD390754(__dst, &qword_1ECCDF880, &qword_1DD6613B8);
        v20 = v80;
      }
    }
  }

  while (1)
  {
    v27 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      goto LABEL_10;
    }

    v25 = *(v22 + 8 * v27);
    ++v21;
    if (v25)
    {
      v21 = v27;
      goto LABEL_35;
    }
  }

LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

unint64_t *sub_1DD5D6CEC(uint64_t a1)
{
  v2 = v1;
  v100 = *MEMORY[0x1E69E9840];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF888, &unk_1DD6613C0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  v91 = v5 - v6;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v7);
  v87 = v81 - v8;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v9);
  v93 = (v81 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (v81 - v12);
  type metadata accessor for StitchableInteraction(0);
  OUTLINED_FUNCTION_0();
  v89 = v15;
  v90 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  v88 = v16 - v17;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v18);
  v85 = v81 - v19;
  v20 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v26 = v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  *(v27 + 16) = MEMORY[0x1E69E7CC0];
  v82 = v27 + 16;
  v94 = [objc_opt_self() sharedConnection];
  sub_1DD41859C(&unk_1F58AAF78);
  v86 = sub_1DD640258();

  v28 = *(v22 + 16);
  v83 = a1;
  v28(v26, a1, v20);
  v29 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v30 = (v24 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v26;
  v33 = v20;
  v34 = v27;
  (*(v22 + 32))(v31 + v29, v32, v33);
  *(v31 + v30) = v27;
  v98 = sub_1DD5DA254;
  v99 = v31;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v96 = sub_1DD3CBCD0;
  v97 = &block_descriptor_22;
  v35 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v36 = v94;
  v37 = v86;
  LODWORD(v29) = [v94 accessBundleContentForBundleIdentifiers:v86 withBlock:v35 error:&aBlock];
  _Block_release(v35);

  v38 = aBlock;
  if (v29)
  {
    v81[1] = v34;
    v86 = v22;
    v39 = v82;
    swift_beginAccess();
    v40 = *v39;
    v41 = *(*v39 + 16);
    v42 = v38;

    v43 = 0;
    v44 = (v40 + 56);
    v94 = MEMORY[0x1E69E7CC0];
    while (v41 != v43)
    {
      if (v43 >= *(v40 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        sub_1DD586B20();
        v94 = v80;
LABEL_15:
        v54 = v86;
        v55 = v94;
        v56 = v94[2];
        v85 = v94 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
        *&aBlock = v85;
        *(&aBlock + 1) = v56;
        sub_1DD5D90CC(&aBlock);
        v82 = v2;
        v2 = sub_1DD63FC88();
        v57 = 0;
        v88 = v55[2];
        v84 = v33;
        while (1)
        {
          if (v88 == v57)
          {
            (*(v54 + 8))(v83, v33);

            return v94;
          }

          if (v57 >= v94[2])
          {
            goto LABEL_30;
          }

          v58 = v85 + *(v89 + 72) * v57;
          v59 = v92;
          v60 = v93;
          v61 = *(v92 + 48);
          v90 = v57;
          *v93 = v57;
          sub_1DD5DA35C(v58, v60 + v61, type metadata accessor for StitchableInteraction);
          v62 = v87;
          sub_1DD4DDC08(v60, v87, &qword_1ECCDF888, &unk_1DD6613C0);
          v63 = v62 + *(v59 + 48);
          v33 = *(v63 + 16);
          v64 = *(v63 + 24);

          sub_1DD5DA3BC(v63, type metadata accessor for StitchableInteraction);
          sub_1DD4DDC08(v60, v91, &qword_1ECCDF888, &unk_1DD6613C0);
          swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v2;
          v65 = sub_1DD3978DC();
          if (__OFADD__(*(v2 + 16), (v66 & 1) == 0))
          {
            goto LABEL_31;
          }

          v67 = v65;
          v68 = v66;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
          if (sub_1DD640A08())
          {
            v69 = sub_1DD3978DC();
            if ((v68 & 1) != (v70 & 1))
            {
              result = sub_1DD640D58();
              __break(1u);
              return result;
            }

            v67 = v69;
          }

          if (v68)
          {

            v2 = aBlock;
            v71 = OUTLINED_FUNCTION_11_50();
            sub_1DD390754(v71, v72, &unk_1DD6613C0);
          }

          else
          {
            v2 = aBlock;
            *(aBlock + 8 * (v67 >> 6) + 64) |= 1 << v67;
            v73 = (*(v2 + 48) + 16 * v67);
            *v73 = v33;
            v73[1] = v64;
            v74 = OUTLINED_FUNCTION_11_50();
            sub_1DD390754(v74, v75, &unk_1DD6613C0);
            v76 = *(v2 + 16);
            v77 = __OFADD__(v76, 1);
            v78 = v76 + 1;
            if (v77)
            {
              goto LABEL_32;
            }

            *(v2 + 16) = v78;
          }

          sub_1DD5DA3BC(v91 + *(v92 + 48), type metadata accessor for StitchableInteraction);
          v57 = v90 + 1;
          v33 = v84;
          v54 = v86;
        }
      }

      v46 = *(v44 - 1);
      v45 = *v44;
      aBlock = *(v44 - 3);
      v96 = v46;
      v97 = v45;
      sub_1DD5D777C(&aBlock, v13);
      if (__swift_getEnumTagSinglePayload(v13, 1, v90) == 1)
      {
        sub_1DD390754(v13, &qword_1ECCDC1B0, &unk_1DD6454F0);
      }

      else
      {
        v47 = v85;
        sub_1DD5DA2F8(v13, v85);
        sub_1DD5DA2F8(v47, v88);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD3C085C();
          v94 = v51;
        }

        v49 = v94[2];
        v48 = v94[3];
        if (v49 >= v48 >> 1)
        {
          OUTLINED_FUNCTION_23_4(v48);
          sub_1DD3C085C();
          v94 = v52;
        }

        v50 = v94;
        v94[2] = v49 + 1;
        sub_1DD5DA2F8(v88, v50 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v49);
      }

      v44 += 4;
      ++v43;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_15;
  }

  v53 = aBlock;
  sub_1DD63CD98();

  swift_willThrow();
  (*(v22 + 8))(v83, v33);

  return v94;
}

uint64_t sub_1DD5D7584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D078();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DD63CF78();
  v8 = sub_1DD3CE548(0, a1, v7, 2, 0, 0, 0x7FFFFFFFFFFFFFFFLL);
  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  *(a2 + 16) = v8;
}

uint64_t sub_1DD5D777C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC170, &qword_1DD645270);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v59 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  v14 = sub_1DD63D078();
  v65 = *(v14 - 8);
  v66 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v67 = &v59 - v19;
  v20 = *(a1 + 24);
  v21 = [v20 intent];
  v22 = [v21 _className];

  v62 = sub_1DD63FDD8();
  v24 = v23;

  if ([v20 intentHandlingStatus] != 3)
  {

    v33 = type metadata accessor for StitchableInteraction(0);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v33);
  }

  v25 = sub_1DD582C90([v20 intent]);
  if (v26)
  {
    v27 = v26;
    v60 = v25;
    v61 = v24;
    v28 = [v20 dateInterval];
    v29 = a2;
    if (v28)
    {
      v30 = v28;
      sub_1DD63C818();

      v31 = sub_1DD63C868();
      v32 = 0;
    }

    else
    {
      v31 = sub_1DD63C868();
      v32 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v32, 1, v31);
    sub_1DD4DDCBC(v10, v13, &qword_1ECCDC170, &qword_1DD645270);
    sub_1DD63C868();
    if (__swift_getEnumTagSinglePayload(v13, 1, v31))
    {

      v37 = v13;
    }

    else
    {
      sub_1DD63C848();
      sub_1DD390754(v13, &qword_1ECCDC170, &qword_1DD645270);
      v38 = v65;
      v39 = v66;
      (*(v65 + 32))(v67, v16, v66);
      v40 = [v20 dateInterval];
      if (v40)
      {
        v41 = v40;
        v42 = v63;
        sub_1DD63C818();

        v43 = 0;
      }

      else
      {
        v43 = 1;
        v42 = v63;
      }

      __swift_storeEnumTagSinglePayload(v42, v43, 1, v31);
      v44 = v64;
      sub_1DD4DDCBC(v42, v64, &qword_1ECCDC170, &qword_1DD645270);
      if (!__swift_getEnumTagSinglePayload(v44, 1, v31))
      {
        v46 = v38;
        sub_1DD63C858();
        v48 = v47;
        sub_1DD390754(v44, &qword_1ECCDC170, &qword_1DD645270);
        v49 = type metadata accessor for StitchableInteraction(0);
        v50 = *(v38 + 16);
        v51 = v29 + v49[6];
        v64 = v27;
        v52 = v67;
        v50(v51, v67, v39);
        v53 = [v20 _donatedBySiri];
        v54 = [v20 intent];
        v55 = sub_1DD5D6624(v54);

        (*(v46 + 8))(v52, v39);
        v57 = v60;
        v56 = v61;
        *v29 = v62;
        v29[1] = v56;
        v58 = v64;
        v29[2] = v57;
        v29[3] = v58;
        *(v29 + v49[7]) = v48;
        *(v29 + v49[8]) = v53;
        *(v29 + v49[9]) = v55;
        v36 = v29;
        v45 = 0;
        v35 = v49;
        return __swift_storeEnumTagSinglePayload(v36, v45, 1, v35);
      }

      (*(v38 + 8))(v67, v39);

      v37 = v44;
    }

    sub_1DD390754(v37, &qword_1ECCDC170, &qword_1DD645270);
    v35 = type metadata accessor for StitchableInteraction(0);
    v36 = v29;
  }

  else
  {

    v35 = type metadata accessor for StitchableInteraction(0);
    v36 = a2;
  }

  v45 = 1;
  return __swift_storeEnumTagSinglePayload(v36, v45, 1, v35);
}

uint64_t sub_1DD5D7CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for StitchableInteraction(0);
  sub_1DD63D078();
  OUTLINED_FUNCTION_2_60();
  sub_1DD5DA740(v3);
  if (sub_1DD63FD68())
  {
    return 0;
  }

  else
  {
    return sub_1DD63CFC8() & 1;
  }
}

uint64_t sub_1DD5D7D70(void *a1, uint64_t a2)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v69 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched - 8);
  v6 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ContactResolverRunTimeData(0);
  v64 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for RunTimeDataRecord(0);
  v10 = *(a2 + *(result + 24));
  v60 = *(v10 + 16);
  if (v60)
  {
    v11 = 0;
    v61 = v10 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v71 = a1;
    v65 = v6;
    v59 = v10;
    while (v11 < *(v10 + 16))
    {
      v12 = *(v64 + 72);
      v63 = v11;
      v13 = v62;
      sub_1DD5DA35C(v61 + v12 * v11, v62, type metadata accessor for ContactResolverRunTimeData);
      v14 = *(v13 + 296);

      sub_1DD5DA3BC(v13, type metadata accessor for ContactResolverRunTimeData);
      v68 = *(v14 + 16);
      if (v68)
      {
        v15 = 0;
        v16 = *(v69 + 80);
        v66 = v14;
        v67 = v14 + ((v16 + 32) & ~v16);
        while (v15 < *(v14 + 16))
        {
          v17 = *(v69 + 72);
          v70 = v15;
          sub_1DD5DA35C(v67 + v17 * v15, v6, type metadata accessor for ContactMatchRuntimeData);
          v18 = v6[1];
          v75 = *v6;
          v23 = *(v6 + *(type metadata accessor for Contact(0) + 80));
          v24 = *(v23 + 16);
          if (v24)
          {
            v76 = MEMORY[0x1E69E7CC0];
            sub_1DD42A2D4(0, v24, 0, v19, v20, v21, v22);
            v25 = v76;
            v26 = (v23 + 96);
            do
            {
              v27 = *(v26 - 1);
              v28 = *v26;
              v76 = v25;
              v30 = v25[2];
              v29 = v25[3];

              if (v30 >= v29 >> 1)
              {
                sub_1DD42A2D4(v29 > 1, v30 + 1, 1, v31, v32, v33, v34);
                v25 = v76;
              }

              v25[2] = v30 + 1;
              v35 = &v25[2 * v30];
              v35[4] = v27;
              v35[5] = v28;
              v26 += 10;
              --v24;
            }

            while (v24);
            v36 = v30 + 1;
LABEL_14:
            v37 = 0;
            v38 = v25 + 5;
            v73 = v25;
            v74 = v18;
            v72 = v36;
            while (v37 < v25[2])
            {
              v40 = *(v38 - 1);
              v39 = *v38;

              swift_isUniquelyReferenced_nonNull_native();
              v76 = *a1;
              v41 = v76;
              v42 = sub_1DD3978DC();
              if (__OFADD__(v41[2], (v43 & 1) == 0))
              {
                goto LABEL_30;
              }

              v44 = v42;
              v45 = v43;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC328, &qword_1DD6521F0);
              if (sub_1DD640A08())
              {
                v46 = sub_1DD3978DC();
                if ((v45 & 1) != (v47 & 1))
                {
                  goto LABEL_34;
                }

                v44 = v46;
              }

              if (v45)
              {

                v48 = v76;
                v49 = (v76[7] + 16 * v44);
                v50 = v74;
                *v49 = v75;
                v49[1] = v50;
              }

              else
              {
                v48 = v76;
                v76[(v44 >> 6) + 8] |= 1 << v44;
                v51 = (v48[6] + 16 * v44);
                *v51 = v40;
                v51[1] = v39;
                v52 = (v48[7] + 16 * v44);
                v53 = v74;
                *v52 = v75;
                v52[1] = v53;
                v54 = v48[2];
                v55 = __OFADD__(v54, 1);
                v56 = v54 + 1;
                if (v55)
                {
                  goto LABEL_31;
                }

                v48[2] = v56;
              }

              ++v37;
              a1 = v71;
              v57 = v72;
              *v71 = v48;
              v38 += 2;
              v25 = v73;
              if (v57 == v37)
              {
                v6 = v65;
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            break;
          }

          v25 = MEMORY[0x1E69E7CC0];
          v36 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v36)
          {
            goto LABEL_14;
          }

LABEL_26:
          v15 = v70 + 1;

          sub_1DD5DA3BC(v6, type metadata accessor for ContactMatchRuntimeData);
          v14 = v66;
          if (v15 == v68)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        break;
      }

LABEL_27:

      v11 = v63 + 1;
      v10 = v59;
      if (v63 + 1 == v60)
      {
        return result;
      }
    }

    __break(1u);
LABEL_34:
    result = sub_1DD640D58();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5D8234(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6574616E6F447369 && a2 == 0xEF69726953794264;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656C706F6570 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD640CD8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD5D8430(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x7461447472617473;
      break;
    case 3:
      result = 0x6E6F697461727564;
      break;
    case 4:
      result = 0x6574616E6F447369;
      break;
    case 5:
      result = 0x656C706F6570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5D84EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF8A0, &qword_1DD6615C0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5DA6EC();
  sub_1DD640EF8();
  v18 = 0;
  OUTLINED_FUNCTION_32();
  sub_1DD640C18();
  if (!v2)
  {
    OUTLINED_FUNCTION_9_58();
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
    v11 = type metadata accessor for StitchableInteraction(0);
    v17 = 2;
    sub_1DD63D078();
    sub_1DD5DA740(&unk_1EE165CD0);
    OUTLINED_FUNCTION_32();
    sub_1DD640C68();
    v16 = 3;
    OUTLINED_FUNCTION_32();
    sub_1DD640C38();
    v15 = 4;
    OUTLINED_FUNCTION_32();
    sub_1DD640C28();
    v14 = *(v3 + *(v11 + 36));
    v13[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF8A8, &qword_1DD6615C8);
    sub_1DD5DA780();
    OUTLINED_FUNCTION_32();
    sub_1DD640C68();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DD5D873C(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD5D8798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5D8234(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5D87C0(uint64_t a1)
{
  v2 = sub_1DD5DA6EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5D87FC(uint64_t a1)
{
  v2 = sub_1DD5DA6EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD5D8874@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD5D873C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD5D88A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD3A7D80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD5D88D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD5D873C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD5D8900(uint64_t a1)
{
  v2 = sub_1DD5DA698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5D893C(uint64_t a1)
{
  v2 = sub_1DD5DA698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD5D8978(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4C8, &unk_1DD646850);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = sub_1DD4E0980(a1);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
  }

  else
  {
    v22 = sub_1DD5DA1D0(a1);
    v21 = v23;
    if (!v23)
    {

      goto LABEL_12;
    }

    v20 = v22;
  }

  v24 = [a1 personHandle];
  if (!v24)
  {

    v21 = 0;
LABEL_12:
    OUTLINED_FUNCTION_7_65();
    v26 = 0;
    goto LABEL_13;
  }

  sub_1DD3E79C0(v24);
  v26 = v25;
  if (!v25)
  {

    v21 = 0;
    OUTLINED_FUNCTION_7_65();
LABEL_13:
    v36 = 0;
    v37 = 0;
    goto LABEL_24;
  }

  v48 = v20;
  v27 = sub_1DD40B5BC();
  v46 = v28;
  v47 = v27;

  v29 = [a1 nameComponents];
  if (v29)
  {
    v30 = v29;
    sub_1DD63CCC8();

    v31 = sub_1DD63CD18();
    v32 = 0;
  }

  else
  {
    v31 = sub_1DD63CD18();
    v32 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v32, 1, v31);
  sub_1DD4DDCBC(v14, v17, &qword_1ECCDC4C8, &unk_1DD646850);
  sub_1DD63CD18();
  v2 = 0;
  v14 = 0;
  if (!__swift_getEnumTagSinglePayload(v17, 1, v31))
  {
    v2 = sub_1DD63CC08();
    v14 = v38;
  }

  sub_1DD390754(v17, &qword_1ECCDC4C8, &unk_1DD646850);
  v39 = [a1 nameComponents];
  if (v39)
  {
    v40 = v39;
    sub_1DD63CCC8();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v41, 1, v31);
  sub_1DD4DDCBC(v8, v11, &qword_1ECCDC4C8, &unk_1DD646850);
  if (__swift_getEnumTagSinglePayload(v11, 1, v31))
  {
    v17 = 0;
    v26 = 0;
  }

  else
  {
    v17 = sub_1DD63CC28();
    v26 = v42;
  }

  sub_1DD390754(v11, &qword_1ECCDC4C8, &unk_1DD646850);
  v43 = [a1 displayName];
  v36 = sub_1DD63FDD8();
  v37 = v44;

  v34 = v47;
  v33 = v48;
  v35 = v46;
LABEL_24:
  *a2 = v33;
  a2[1] = v21;
  a2[2] = v34;
  a2[3] = v35;
  a2[4] = v2;
  a2[5] = v14;
  a2[6] = v17;
  a2[7] = v26;
  a2[8] = v36;
  a2[9] = v37;
}

BOOL sub_1DD5D8CDC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {
    return 1;
  }

  v7 = a1[3];
  v8 = a2[3];
  v5 = v7 != 0;
  if (!v7)
  {
    if (!v8)
    {
      return v5;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = a1[2] == a2[2] && v7 == v8;
  if (!v9 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  return v5;
}

uint64_t sub_1DD5D8D7C(uint64_t a1)
{
  sub_1DD63FD28();
  if (!*(v1 + 24))
  {
    return sub_1DD640E48();
  }

  sub_1DD640E48();

  return sub_1DD63FD28();
}

uint64_t sub_1DD5D8DFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF898, &qword_1DD6615B8);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5DA698();
  sub_1DD640EF8();
  v10[15] = 0;
  sub_1DD640C18();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_58();
    sub_1DD640BC8();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1DD5D8F48()
{
  v1 = *(v0 + 24);
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD640E48();
  if (v1)
  {
    sub_1DD63FD28();
  }

  return sub_1DD640E78();
}

uint64_t type metadata accessor for StitchableInteraction(uint64_t a1)
{
  result = qword_1EE1619C0;
  if (!qword_1EE1619C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5D9044(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD640E48();
  if (v2)
  {
    sub_1DD63FD28();
  }

  return sub_1DD640E78();
}

void sub_1DD5D90CC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DD640CA8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for StitchableInteraction(0);
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for StitchableInteraction(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DD5D9420(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1DD5D91FC(0, v2, 1, a1);
  }
}

void sub_1DD5D91FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for StitchableInteraction(0);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v30 = v19;
      v31 = a3;
      v28 = v22;
      v29 = v21;
      do
      {
        sub_1DD5DA35C(v22, v16, type metadata accessor for StitchableInteraction);
        sub_1DD5DA35C(v19, v12, type metadata accessor for StitchableInteraction);
        v23 = sub_1DD63CFC8();
        sub_1DD5DA3BC(v12, type metadata accessor for StitchableInteraction);
        sub_1DD5DA3BC(v16, type metadata accessor for StitchableInteraction);
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return;
        }

        sub_1DD5DA2F8(v22, v9);
        swift_arrayInitWithTakeFrontToBack();
        sub_1DD5DA2F8(v9, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD5D9420(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for StitchableInteraction(0);
  v113 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v117 = &v101 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v118 = &v101 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v101 - v16;
  v115 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v94 = v20 + 16;
      v95 = *(v20 + 2);
      for (i = v20; v95 >= 2; v20 = i)
      {
        if (!*v115)
        {
          goto LABEL_139;
        }

        v96 = &v20[16 * v95];
        v97 = *v96;
        v98 = &v94[2 * v95];
        v99 = *(v98 + 1);
        sub_1DD5D9CD8(*v115 + *(v113 + 72) * *v96, *v115 + *(v113 + 72) * *v98, *v115 + *(v113 + 72) * v99, v5);
        if (v6)
        {
          break;
        }

        if (v99 < v97)
        {
          goto LABEL_127;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_128;
        }

        *v96 = v97;
        *(v96 + 1) = v99;
        v100 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_129;
        }

        v95 = *v94 - 1;
        sub_1DD4EC4E4(v98 + 16, v100, v98);
        *v94 = v95;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v20 = sub_1DD4EC2B8();
    goto LABEL_103;
  }

  v103 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v119 = v9;
  v109 = &v101 - v16;
  while (1)
  {
    v21 = v19++;
    i = v20;
    v105 = v21;
    if (v19 < v18)
    {
      v22 = *v115;
      v5 = *(v113 + 72);
      v23 = v21;
      v24 = *v115 + v5 * v19;
      v112 = v18;
      sub_1DD5DA35C(v24, v17, type metadata accessor for StitchableInteraction);
      v25 = v22 + v5 * v23;
      v26 = v118;
      sub_1DD5DA35C(v25, v118, type metadata accessor for StitchableInteraction);
      LODWORD(v111) = sub_1DD63CFC8();
      sub_1DD5DA3BC(v26, type metadata accessor for StitchableInteraction);
      sub_1DD5DA3BC(v17, type metadata accessor for StitchableInteraction);
      v27 = v112;
      v28 = v105 + 2;
      v114 = v5;
      v29 = v22 + v5 * (v105 + 2);
      while (1)
      {
        v30 = v28;
        if (++v19 >= v27)
        {
          break;
        }

        sub_1DD5DA35C(v29, v17, type metadata accessor for StitchableInteraction);
        v5 = v118;
        sub_1DD5DA35C(v24, v118, type metadata accessor for StitchableInteraction);
        v31 = sub_1DD63CFC8() & 1;
        sub_1DD5DA3BC(v5, type metadata accessor for StitchableInteraction);
        sub_1DD5DA3BC(v17, type metadata accessor for StitchableInteraction);
        v29 += v114;
        v24 += v114;
        v28 = v30 + 1;
        v27 = v112;
        if ((v111 & 1) != v31)
        {
          goto LABEL_9;
        }
      }

      v19 = v27;
LABEL_9:
      if (v111)
      {
        v21 = v105;
        if (v19 < v105)
        {
          goto LABEL_133;
        }

        if (v105 >= v19)
        {
          v20 = i;
          goto LABEL_32;
        }

        v102 = v6;
        if (v27 >= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v27;
        }

        v33 = v114 * (v32 - 1);
        v34 = v105;
        v35 = v114 * v32;
        v36 = v105 * v114;
        v37 = v19;
        v20 = i;
        do
        {
          if (v34 != --v37)
          {
            v5 = *v115;
            if (!*v115)
            {
              goto LABEL_140;
            }

            sub_1DD5DA2F8(v5 + v36, v108);
            v38 = v36 < v33 || v5 + v36 >= v5 + v35;
            if (v38)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v36 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DD5DA2F8(v108, v5 + v33);
            v20 = i;
          }

          ++v34;
          v33 -= v114;
          v35 -= v114;
          v36 += v114;
        }

        while (v34 < v37);
        v6 = v102;
      }

      else
      {
        v20 = i;
      }

      v21 = v105;
    }

LABEL_32:
    v39 = v115[1];
    if (v19 < v39)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_132;
      }

      if (v19 - v21 < v103)
      {
        break;
      }
    }

LABEL_48:
    if (v19 < v21)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BEB7C();
      v20 = v92;
    }

    v49 = *(v20 + 2);
    v50 = v49 + 1;
    if (v49 >= *(v20 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v20 = v93;
    }

    *(v20 + 2) = v50;
    v51 = v20 + 32;
    v52 = &v20[16 * v49 + 32];
    *v52 = v105;
    *(v52 + 1) = v19;
    v114 = *v104;
    if (!v114)
    {
      goto LABEL_141;
    }

    v53 = v17;
    if (v49)
    {
      i = v20;
      while (1)
      {
        v54 = v50 - 1;
        v55 = &v51[16 * v50 - 16];
        v56 = &v20[16 * v50];
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v57 = *(v20 + 4);
          v58 = *(v20 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_69:
          if (v60)
          {
            goto LABEL_118;
          }

          v72 = *v56;
          v71 = *(v56 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_121;
          }

          v76 = *(v55 + 1);
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_126;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v50 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v50 < 2)
        {
          goto LABEL_120;
        }

        v79 = *v56;
        v78 = *(v56 + 1);
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_84:
        if (v75)
        {
          goto LABEL_123;
        }

        v81 = *v55;
        v80 = *(v55 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_125;
        }

        if (v82 < v74)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v54 - 1 >= v50)
        {
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v115)
        {
          goto LABEL_138;
        }

        v86 = &v51[16 * v54 - 16];
        v87 = *v86;
        v88 = v51;
        v5 = v54;
        v89 = &v51[16 * v54];
        v90 = *(v89 + 1);
        sub_1DD5D9CD8(*v115 + *(v113 + 72) * *v86, *v115 + *(v113 + 72) * *v89, *v115 + *(v113 + 72) * v90, v114);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v90 < v87)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_114;
        }

        *v86 = v87;
        *(v86 + 1) = v90;
        if (v5 >= v6)
        {
          goto LABEL_115;
        }

        v50 = v6 - 1;
        sub_1DD4EC4E4(v89 + 16, v6 - 1 - v5, v89);
        v20 = i;
        *(i + 2) = v6 - 1;
        v91 = v6 > 2;
        v6 = 0;
        v53 = v109;
        v51 = v88;
        if (!v91)
        {
          goto LABEL_98;
        }
      }

      v61 = &v51[16 * v50];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_116;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_117;
      }

      v68 = *(v56 + 1);
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_119;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_122;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = *(v55 + 1);
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_130;
        }

        if (v59 < v85)
        {
          v54 = v50 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v18 = v115[1];
    v17 = v53;
    if (v19 >= v18)
    {
      goto LABEL_101;
    }
  }

  v40 = v21 + v103;
  if (__OFADD__(v21, v103))
  {
    goto LABEL_134;
  }

  if (v40 >= v39)
  {
    v40 = v115[1];
  }

  if (v40 < v21)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v19 == v40)
  {
    goto LABEL_48;
  }

  v102 = v6;
  v41 = *v115;
  v42 = *(v113 + 72);
  v5 = *v115 + v42 * (v19 - 1);
  v43 = -v42;
  v44 = v21 - v19;
  v106 = v42;
  v107 = v40;
  v45 = v41 + v19 * v42;
LABEL_41:
  v114 = v19;
  v110 = v45;
  v111 = v44;
  v112 = v5;
  while (1)
  {
    sub_1DD5DA35C(v45, v17, type metadata accessor for StitchableInteraction);
    v46 = v118;
    sub_1DD5DA35C(v5, v118, type metadata accessor for StitchableInteraction);
    v47 = sub_1DD63CFC8();
    sub_1DD5DA3BC(v46, type metadata accessor for StitchableInteraction);
    sub_1DD5DA3BC(v17, type metadata accessor for StitchableInteraction);
    if ((v47 & 1) == 0)
    {
LABEL_46:
      v19 = v114 + 1;
      v5 = v112 + v106;
      v44 = v111 - 1;
      v45 = v110 + v106;
      if (v114 + 1 == v107)
      {
        v19 = v107;
        v6 = v102;
        v20 = i;
        v21 = v105;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v41)
    {
      break;
    }

    v48 = v117;
    sub_1DD5DA2F8(v45, v117);
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD5DA2F8(v48, v5);
    v5 += v43;
    v45 += v43;
    v38 = __CFADD__(v44++, 1);
    if (v38)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_1DD5D9CD8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for StitchableInteraction(0);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v56 = a1;
  v55 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_1DD3C1EE4(a2, v16 / v13, a4);
    v28 = a4 + v19 * v13;
    v29 = -v13;
    v30 = v28;
    v48 = a1;
    v49 = v29;
LABEL_36:
    v50 = a2 + v29;
    v51 = a2;
    v31 = a3;
    v32 = v30;
    v47 = v30;
    while (1)
    {
      if (v28 <= a4)
      {
        v56 = v51;
        v54 = v32;
        goto LABEL_58;
      }

      if (v51 <= a1)
      {
        break;
      }

      v46 = v32;
      v33 = a4;
      v34 = v31 + v29;
      v35 = v28 + v29;
      v36 = v31;
      sub_1DD5DA35C(v28 + v29, v11, type metadata accessor for StitchableInteraction);
      v37 = v11;
      v38 = v52;
      sub_1DD5DA35C(v50, v52, type metadata accessor for StitchableInteraction);
      v39 = sub_1DD63CFC8();
      v40 = v38;
      v11 = v37;
      sub_1DD5DA3BC(v40, type metadata accessor for StitchableInteraction);
      sub_1DD5DA3BC(v37, type metadata accessor for StitchableInteraction);
      if (v39)
      {
        v43 = v36 < v51 || v34 >= v51;
        a4 = v33;
        if (v43)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v34;
          v30 = v46;
          a1 = v48;
          v29 = v49;
        }

        else
        {
          v15 = v36 == v51;
          v29 = v49;
          v44 = v50;
          a2 = v50;
          a3 = v34;
          v30 = v46;
          a1 = v48;
          if (!v15)
          {
            v30 = v46;
            swift_arrayInitWithTakeBackToFront();
            a2 = v44;
          }
        }

        goto LABEL_36;
      }

      v41 = v36 < v28 || v34 >= v28;
      a4 = v33;
      if (v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v34;
        v28 = v35;
        v32 = v35;
        a1 = v48;
        v29 = v49;
        v30 = v47;
      }

      else
      {
        v32 = v35;
        v15 = v28 == v36;
        v31 = v34;
        v28 = v35;
        v42 = v34;
        a1 = v48;
        v29 = v49;
        v30 = v47;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v42;
          v28 = v35;
          v32 = v35;
        }
      }
    }

    v56 = v51;
    v54 = v30;
  }

  else
  {
    sub_1DD3C1EE4(a1, v14 / v13, a4);
    v51 = a4 + v18 * v13;
    v54 = v51;
    while (a4 < v51 && a2 < a3)
    {
      v21 = a3;
      sub_1DD5DA35C(a2, v11, type metadata accessor for StitchableInteraction);
      v22 = a2;
      v23 = v52;
      sub_1DD5DA35C(a4, v52, type metadata accessor for StitchableInteraction);
      v24 = sub_1DD63CFC8();
      sub_1DD5DA3BC(v23, type metadata accessor for StitchableInteraction);
      sub_1DD5DA3BC(v11, type metadata accessor for StitchableInteraction);
      if (v24)
      {
        a2 = v22 + v13;
        v25 = a1 < v22 || a1 >= a2;
        v26 = v22;
        if (v25)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v22;
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v55 = a4 + v13;
        a4 += v13;
      }

      a1 += v13;
      v56 = a1;
    }
  }

LABEL_58:
  sub_1DD4EC3EC(&v56, &v55, &v54);
}

uint64_t sub_1DD5DA164(void *a1)
{
  v1 = [a1 parametersByName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FC58();

  return v3;
}

uint64_t sub_1DD5DA1D0(void *a1)
{
  v1 = [a1 customIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD5DA254()
{
  v1 = *(sub_1DD63D078() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DD5D7584(v0 + v2, v3);
}

double block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DD5DA2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StitchableInteraction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD5DA35C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5DA3BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD5DA414(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD5DA468(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference27ComparableContactNameValuesVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1DD5DA534(uint64_t a1)
{
  sub_1DD63D078();
  if (v1 <= 0x3F)
  {
    sub_1DD5DA5E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD5DA5E0()
{
  if (!qword_1EE160300)
  {
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE160300);
    }
  }
}

unint64_t sub_1DD5DA644()
{
  result = qword_1ECCDF890;
  if (!qword_1ECCDF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF890);
  }

  return result;
}

unint64_t sub_1DD5DA698()
{
  result = qword_1EE162750[0];
  if (!qword_1EE162750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE162750);
  }

  return result;
}

unint64_t sub_1DD5DA6EC()
{
  result = qword_1EE1619E8[0];
  if (!qword_1EE1619E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1619E8);
  }

  return result;
}

uint64_t sub_1DD5DA740(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD63D078();
    OUTLINED_FUNCTION_6_9();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD5DA780()
{
  result = qword_1EE1602F8;
  if (!qword_1EE1602F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF8A8, &qword_1DD6615C8);
    sub_1DD5DA804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1602F8);
  }

  return result;
}

unint64_t sub_1DD5DA804()
{
  result = qword_1EE162738;
  if (!qword_1EE162738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162738);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StitchableInteraction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}