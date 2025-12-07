unint64_t sub_266137440(uint64_t a1, uint64_t a2)
{
  v2 = sub_26618CEC0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26613748C(char a1)
{
  if (!a1)
  {
    return 0x656369766544;
  }

  if (a1 == 1)
  {
    return 1836019538;
  }

  return 0x797469746E45;
}

unint64_t sub_266137534@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266137440(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266137564@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26613748C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266137590(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1;
  v85[0] = a1;
  *&v74 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C610, &qword_266192330);
  v6 = sub_26618C890();

  if ((v6 & 1) == 0)
  {
    return sub_266137AFC(v5, a2, a3);
  }

  v67 = *(a2 + 3);
  v69 = *(a2 + 5);
  v63 = a2[1];
  v65 = *a2;
  v7 = *(a2 + 16);
  v9 = a2[9];
  v8 = a2[10];
  v10 = *(a2 + 1);
  v81 = *a2;
  v82 = v10;
  v11 = *(a2 + 3);
  v83 = *(a2 + 2);
  v84 = v11;
  v12 = a2[7];
  v71 = a2[8];
  v72 = v8;
  v13 = *(v12 + 16);
  sub_2660DD6B8(a2, v85);
  v61 = v12;
  v14 = (v12 + 40);
  v15 = MEMORY[0x277D84F90];
  v73 = a3;
  for (i = v5; v13; v5 = i)
  {
    v17 = *(v14 - 1);
    v18 = *v14;

    LOBYTE(v74) = v7;
    v85[0] = v65;
    v85[1] = v63;
    v86 = v7;
    v88 = v69;
    v87 = v67;
    v89 = v61;
    v90 = v17;
    v71 = v17;
    v91 = v18;
    v92 = v72;
    v19 = sub_266137AFC(v5, v85, a3);
    v21 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2661298C0();
      v15 = v24;
    }

    v22 = *(v15 + 16);
    if (v22 >= *(v15 + 24) >> 1)
    {
      sub_2661298C0();
      v15 = v25;
    }

    *(v15 + 16) = v22 + 1;
    v23 = v15 + 16 * v22;
    *(v23 + 32) = v19;
    *(v23 + 40) = v21;
    v14 += 2;
    --v13;
    v9 = v18;
    a3 = v73;
  }

  v27 = *(v15 + 16);
  if (!v27)
  {

    v29 = MEMORY[0x277D84F90];
LABEL_46:
    sub_26613C380(v29);
    v26 = sub_2660DCDDC(v57);

    if (sub_2661046B8())
    {
      v74 = v81;
      v75 = v82;
      v76 = v83;
      v77 = v84;
      v78 = v71;
      v79 = v9;
      v80 = v72;
      sub_2660DD77C(&v74);
    }

    else
    {

      v74 = v81;
      v75 = v82;
      v76 = v83;
      v77 = v84;
      v78 = v71;
      v79 = v9;
      v80 = v72;
      sub_2660DD77C(&v74);

      return a3;
    }

    return v26;
  }

  v58 = v9;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v30 = v15 + 32;
  v62 = *(v15 + 16);
  while (1)
  {
    v31 = v30 + 16 * v28;
    v32 = *(v31 + 8);
    if (v32 == 255 || (v32 & 1) != 0)
    {
      goto LABEL_41;
    }

    v33 = *v31;
    v34 = *v31 & 0xFFFFFFFFFFFFFF8;
    v35 = v33 >> 62;
    v36 = v33 >> 62 ? sub_26618CCD0() : *(v34 + 16);
    v37 = v29 >> 62;
    result = v29 >> 62 ? sub_26618CCD0() : *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v68 = v36;
    v39 = __OFADD__(result, v36);
    v40 = result + v36;
    if (v39)
    {
      break;
    }

    sub_266138EF8(v33, 0);
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v70 = v33;
    if (result)
    {
      if (!v37)
      {
        v41 = v29 & 0xFFFFFFFFFFFFFF8;
        if (v40 <= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_24:
      sub_26618CCD0();
      goto LABEL_25;
    }

    if (v37)
    {
      goto LABEL_24;
    }

LABEL_25:
    result = sub_26618CDA0();
    v29 = result;
    v41 = result & 0xFFFFFFFFFFFFFF8;
LABEL_26:
    v64 = v41;
    v66 = v28;
    v42 = *(v41 + 16);
    v43 = (*(v41 + 24) >> 1) - v42;
    v44 = v41 + 8 * v42;
    if (v35)
    {
      v45 = v70;
      v48 = sub_26618CCD0();
      if (v48)
      {
        v49 = v48;
        result = sub_26618CCD0();
        if (v43 < result)
        {
          goto LABEL_53;
        }

        if (v49 < 1)
        {
          goto LABEL_55;
        }

        v59 = result;
        v60 = v29;
        v50 = v44 + 32;
        sub_266138F1C();
        for (j = 0; j != v49; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C688, &qword_266192AB8);
          v52 = sub_2660DD51C(&v74, j, v70);
          v54 = *v53;
          (v52)(&v74, 0);
          *(v50 + 8 * j) = v54;
        }

        a3 = v73;
        v29 = v60;
        v46 = v59;
        v47 = v70;
        goto LABEL_36;
      }
    }

    else
    {
      v45 = v70;
      v46 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        if (v43 < v46)
        {
          goto LABEL_54;
        }

        sub_26618C4F0();
        swift_arrayInitWithCopy();
        v47 = v70;
LABEL_36:
        result = sub_266138F04(v47, v32);
        v28 = v66;
        v30 = v15 + 32;
        v27 = v62;
        if (v46 < v68)
        {
          goto LABEL_51;
        }

        if (v46 > 0)
        {
          v55 = *(v64 + 16);
          v39 = __OFADD__(v55, v46);
          v56 = v55 + v46;
          if (v39)
          {
            goto LABEL_52;
          }

          *(v64 + 16) = v56;
        }

        goto LABEL_41;
      }
    }

    result = sub_266138F04(v45, v32);
    v28 = v66;
    v30 = v15 + 32;
    v27 = v62;
    if (v68 > 0)
    {
      goto LABEL_51;
    }

LABEL_41:
    if (++v28 == v27)
    {

      v9 = v58;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

unint64_t sub_266137AFC(uint64_t a1, const void *a2, uint64_t a3)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_2660DD6B8(a2, v22);
  swift_getAtKeyPath();
  memcpy(v22, __dst, sizeof(v22));
  sub_2660DD77C(v22);
  if (!__src[1])
  {
    return 0;
  }

  if (qword_28005BC70 != -1)
  {
    swift_once();
  }

  v6 = qword_28005C680;
  v7 = sub_266158284(a1, qword_28005C680);
  if (!v7)
  {

    return 0;
  }

  v8 = sub_266137D30(__src[0], __src[1], a3, v7);

  if (sub_2661046B8())
  {
    return v8;
  }

  if (!sub_266158284(a1, v6))
  {
    return 0;
  }

  v11 = v10;

  memcpy(__src, a2, sizeof(__src));
  sub_2660DD6B8(a2, v17);
  swift_getAtKeyPath();
  memcpy(__dst, __src, sizeof(__dst));
  sub_2660DD77C(__dst);
  v12 = v19;
  if (!v19)
  {
    return 0;
  }

  v13 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C698, &qword_266192AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E190;
  if (v11)
  {
    if (v11 == 1)
    {
      v15 = 0xE400000000000000;
      v16 = 1836019538;
    }

    else
    {
      v15 = 0xE600000000000000;
      v16 = 0x797469746E45;
    }
  }

  else
  {
    v15 = 0xE600000000000000;
    v16 = 0x656369766544;
  }

  *(inited + 32) = v16;
  *(inited + 40) = v15;
  *(inited + 48) = v13;
  *(inited + 56) = v12;
  return sub_26618C850();
}

unint64_t sub_266137D30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  if (a4 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26618CCD0())
  {
    if (!i)
    {
      return MEMORY[0x277D84F90];
    }

    v7 = sub_2661046B8();
    v8 = 0;
    v23 = v4;
    v24 = v4 & 0xC000000000000001;
    v22 = i;
    v9 = a3 & 0xC000000000000001;
LABEL_5:
    sub_2661046C8();
    if (v24)
    {
      MEMORY[0x26677C150](v8, v4);
    }

    else
    {
    }

    v10 = __OFADD__(v8, 1);
    v11 = v8 + 1;
    if (!v10)
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v25 = v11;
  v12 = 0;
  v28 = MEMORY[0x277D84F90];
  while (v7 != v12)
  {
    if (v9)
    {
      v13 = MEMORY[0x26677C150](v12, a3);
    }

    else
    {
      if (v12 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v13 = *(a3 + 8 * v12 + 32);
    }

    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v4 = v13;
    swift_getAtKeyPath();

    if (v27 && (sub_2660CCD6C(), v14 = sub_26618CC20(), , !v14))
    {
      sub_26618CDE0();
      sub_26618CE10();
      sub_26618CE20();
      sub_26618CDF0();
    }

    else
    {
    }

    ++v12;
  }

  v4 = v28;
  if (sub_2661046B8())
  {
  }

  else
  {

    v15 = 0;
    v26 = MEMORY[0x277D84F90];
    while (v7 != v15)
    {
      if (v9)
      {
        v16 = MEMORY[0x26677C150](v15, a3);
      }

      else
      {
        if (v15 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v16 = *(a3 + 8 * v15 + 32);
      }

      if (__OFADD__(v15, 1))
      {
        goto LABEL_42;
      }

      v4 = v16;
      swift_getAtKeyPath();

      if (v27 && (sub_26618C8E0(), v18 = v17, , v27 = v18, sub_26618C8E0(), sub_2660CCD6C(), v19 = sub_26618CC60(), , , (v19 & 1) != 0))
      {
        sub_26618CDE0();
        sub_26618CE10();
        sub_26618CE20();
        sub_26618CDF0();
      }

      else
      {
      }

      ++v15;
    }

    v4 = v26;
    v20 = sub_2661046B8();

    if (!v20)
    {

      v4 = v23;
      v8 = v25;
      if (v25 != v22)
      {
        goto LABEL_5;
      }

      return MEMORY[0x277D84F90];
    }
  }

  return v4;
}

uint64_t sub_2661380BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6A0, qword_266192AC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26618E250;
  *(inited + 32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26618F7E0;
  *(v1 + 32) = swift_getKeyPath();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  *(inited + 56) = swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26618F7E0;
  *(v2 + 32) = swift_getKeyPath();
  *(inited + 64) = v2;
  *(inited + 72) = 0;
  *(inited + 80) = swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266192A40;
  *(v3 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(inited + 88) = v3;
  *(inited + 96) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C610, &qword_266192330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6A8, qword_266192B50);
  result = sub_26618C850();
  qword_28005C680 = result;
  return result;
}

uint64_t sub_26613826C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_26618C4F0();
      result = sub_26618C9E0();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_2661382C8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_266138F80(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_266138344(v6);
  return sub_26618CDF0();
}

void sub_266138344(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_26618CFC0();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_26613826C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_266138510(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_266138424(0, v3, 1, a1);
  }
}

void sub_266138424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v18 = v6;
      do
      {
        v10 = *v6;
        v11 = v8;
        v12 = v10;
        sub_26618C4E0();
        v13 = sub_26618C5D0();
        sub_26618C4E0();
        v14 = sub_26618C5D0();

        if (v13 >= v14)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v15 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v15;
        v6 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v18 + 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_266138510(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_92:
    v113 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v94 = (v8 + 16);
      v95 = *(v8 + 16);
      while (v95 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v96 = v8;
        v97 = (v8 + 16 * v95);
        v98 = *v97;
        v99 = &v94[2 * v95];
        v8 = v99[1];
        sub_266138B88((*a3 + 8 * *v97), (*a3 + 8 * *v99), (*a3 + 8 * v8), v113);
        if (v5)
        {
          break;
        }

        if (v8 < v98)
        {
          goto LABEL_118;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_119;
        }

        *v97 = v98;
        v97[1] = v8;
        v100 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_120;
        }

        v95 = *v94 - 1;
        memmove(v99, v99 + 2, 16 * v100);
        *v94 = v95;
        v8 = v96;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v8 = sub_266138DB8(v8);
    goto LABEL_94;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v102 = v5;
      v104 = v8;
      v11 = (*a3 + 8 * v7);
      v12 = v7;
      v13 = 8 * v7;
      v15 = *v11;
      v14 = v11 + 2;
      v113 = v6;
      v5 = *(*a3 + 8 * v10);
      v16 = v10;
      v17 = v15;
      sub_26618C4E0();
      v110 = sub_26618C5D0();
      sub_26618C4E0();
      v109 = sub_26618C5D0();

      v18 = v113;
      v10 = v16;
      v106 = v12;
      v19 = v12 + 2;
      while (1)
      {
        v20 = v19;
        v21 = v10 + 1;
        if (v21 >= v18)
        {
          break;
        }

        v22 = *(v14 - 1);
        v23 = v21;
        v24 = *v14;
        v5 = v22;
        sub_26618C4E0();
        v25 = sub_26618C5D0();
        sub_26618C4E0();
        v26 = sub_26618C5D0();

        v10 = v23;
        v18 = v113;
        ++v14;
        v19 = v20 + 1;
        if (v110 < v109 == v25 >= v26)
        {
          goto LABEL_9;
        }
      }

      v10 = v18;
LABEL_9:
      if (v110 >= v109)
      {
        v5 = v102;
        v8 = v104;
      }

      else
      {
        v8 = v104;
        v27 = v106;
        if (v10 < v106)
        {
          goto LABEL_124;
        }

        if (v106 >= v10)
        {
          v5 = v102;
          v9 = v106;
          goto LABEL_24;
        }

        if (v18 >= v20)
        {
          v28 = v20;
        }

        else
        {
          v28 = v18;
        }

        v29 = 8 * v28 - 8;
        v30 = v10;
        v5 = v102;
        do
        {
          if (v27 != --v30)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            v32 = *(v31 + v13);
            *(v31 + v13) = *(v31 + v29);
            *(v31 + v29) = v32;
          }

          ++v27;
          v29 -= 8;
          v13 += 8;
        }

        while (v27 < v30);
      }

      v9 = v106;
    }

LABEL_24:
    v33 = a3[1];
    if (v10 < v33)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_123;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v10 < v9)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2661299B0();
      v8 = v92;
    }

    v48 = *(v8 + 16);
    v49 = v48 + 1;
    if (v48 >= *(v8 + 24) >> 1)
    {
      sub_2661299B0();
      v8 = v93;
    }

    *(v8 + 16) = v49;
    v50 = v8 + 32;
    v51 = (v8 + 32 + 16 * v48);
    *v51 = v9;
    v51[1] = v10;
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v113 = v10;
    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        v53 = (v50 + 16 * (v49 - 1));
        v54 = (v8 + 16 * v49);
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v8 + 32);
          v56 = *(v8 + 40);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_60:
          if (v58)
          {
            goto LABEL_109;
          }

          v70 = *v54;
          v69 = v54[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_112;
          }

          v74 = v53[1];
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_117;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v49 < 2)
        {
          goto LABEL_111;
        }

        v77 = *v54;
        v76 = v54[1];
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_75:
        if (v73)
        {
          goto LABEL_114;
        }

        v79 = *v53;
        v78 = v53[1];
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_116;
        }

        if (v80 < v72)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v52 - 1 >= v49)
        {
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
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v84 = v8;
        v85 = (v50 + 16 * (v52 - 1));
        v86 = *v85;
        v87 = v50;
        v88 = v52;
        v8 = v50 + 16 * v52;
        v89 = *(v8 + 8);
        sub_266138B88((*a3 + 8 * *v85), (*a3 + 8 * *v8), (*a3 + 8 * v89), v112);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v89 < v86)
        {
          goto LABEL_104;
        }

        v5 = *(v84 + 16);
        if (v88 > v5)
        {
          goto LABEL_105;
        }

        *v85 = v86;
        v85[1] = v89;
        if (v88 >= v5)
        {
          goto LABEL_106;
        }

        v90 = v88;
        v49 = (v5 - 1);
        memmove(v8, (v8 + 16), 16 * &v5[-v90 - 1]);
        v8 = v84;
        *(v84 + 16) = v5 - 1;
        v91 = v5 > 2;
        v5 = 0;
        v50 = v87;
        if (!v91)
        {
          goto LABEL_89;
        }
      }

      v59 = v50 + 16 * v49;
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_107;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_108;
      }

      v66 = v54[1];
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_110;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_113;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = v53[1];
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_121;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v6 = a3[1];
    v7 = v113;
    if (v113 >= v6)
    {
      goto LABEL_92;
    }
  }

  v34 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_125;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v9)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v10 == v34)
  {
    goto LABEL_40;
  }

  v103 = v5;
  v105 = v8;
  v35 = *a3;
  v36 = *a3 + 8 * v10 - 8;
  v107 = v9;
  v37 = v9 - v10;
  v111 = v34;
LABEL_33:
  v113 = v10;
  v38 = *(v35 + 8 * v10);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    sub_26618C4E0();
    v44 = sub_26618C5D0();
    sub_26618C4E0();
    v45 = sub_26618C5D0();

    if (v44 >= v45)
    {
LABEL_38:
      v10 = v113 + 1;
      v36 += 8;
      --v37;
      if ((v113 + 1) == v111)
      {
        v10 = v111;
        v5 = v103;
        v8 = v105;
        v9 = v107;
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (!v35)
    {
      break;
    }

    v46 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v46;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_38;
    }
  }

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
}

uint64_t sub_266138B88(char *a1, char *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_266129E10(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      sub_26618C4E0();
      v16 = sub_26618C5D0();
      sub_26618C4E0();
      v17 = sub_26618C5D0();

      if (v16 >= v17)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = (v19 + 1);
    }

    v18 = v4;
    v19 = v12;
    v20 = v12 == v4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  sub_266129E10(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
  v35 = v7;
  v36 = v4;
LABEL_15:
  v21 = v6 - 1;
  v22 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v24 = v22;
    v25 = v21;
    v26 = *v21;
    v27 = *(v10 - 1);
    v28 = v26;
    sub_26618C4E0();
    v29 = sub_26618C5D0();
    sub_26618C4E0();
    v30 = sub_26618C5D0();

    v5 = v24;
    v31 = v24 + 1;
    if (v29 < v30)
    {
      v20 = v31 == v6;
      v6 = v25;
      v7 = v35;
      v4 = v36;
      if (!v20)
      {
        *v5 = *v25;
        v6 = v25;
      }

      goto LABEL_15;
    }

    if (v10 != v31)
    {
      *v24 = *(v10 - 1);
    }

    v22 = v24 - 1;
    --v10;
    v7 = v35;
    v4 = v36;
    v21 = v25;
  }

LABEL_28:
  v32 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v32])
  {
    memmove(v6, v4, 8 * v32);
  }

  return 1;
}

char *sub_266138DCC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_266138DF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C618, &qword_266192338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_266138EF8(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_2660DAEF4(result);
  }

  else
  {
  }
}

unint64_t sub_266138F04(unint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_2660DD82C(result, a2 & 1);
  }

  return result;
}

unint64_t sub_266138F1C()
{
  result = qword_28005C690;
  if (!qword_28005C690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C688, &qword_266192AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C690);
  }

  return result;
}

_BYTE *sub_266138FBC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2661390B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2661390F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_266139158(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_266139198(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

unint64_t sub_2661391FC()
{
  result = qword_28005C6B0;
  if (!qword_28005C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C6B0);
  }

  return result;
}

void OUTLINED_FUNCTION_2_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void *sub_266139270()
{
  result = sub_266139290();
  off_28005C6B8 = result;
  return result;
}

uint64_t sub_266139290()
{
  v0 = sub_26618C850();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2661396A8(0xD00000000000001BLL, 0x8000000266199AE0, 0xD000000000000017, 0x8000000266199AC0, isUniquelyReferenced_nonNull_native);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  sub_2661396A8(0x6C7070612E6D6F63, 0xEF636973754D2E65, 0xD000000000000019, 0x8000000266199B00, v2);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_2661396A8(0xD000000000000015, 0x80000002661979A0, 0xD000000000000017, 0x8000000266199B20, v3);
  return v0;
}

uint64_t sub_2661393C4()
{
  result = sub_2661393E4();
  qword_28005D1A0 = result;
  return result;
}

uint64_t sub_2661393E4()
{
  v2 = MEMORY[0x277D84FA0];
  sub_266140DC4(&v1, 0xD000000000000019, 0x8000000266199B40);

  sub_266140DC4(&v1, 0xD000000000000019, 0x8000000266198E10);

  return v2;
}

void *sub_266139470()
{
  result = sub_26618C850();
  off_28005C6C0 = result;
  return result;
}

void *sub_2661394AC()
{
  result = sub_26618C850();
  off_28005C6C8 = result;
  return result;
}

uint64_t sub_2661394E8(uint64_t a1, uint64_t a2)
{
  if (qword_28005BC78 != -1)
  {
    swift_once();
  }

  v4 = off_28005C6B8;
  if (*(off_28005C6B8 + 2))
  {
    v5 = sub_266129F20(a1, a2);
    if (v6)
    {
      a1 = *(v4[7] + 16 * v5);
    }
  }

  return a1;
}

uint64_t sub_266139580(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_266129F20(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6D8, &qword_266192D88);
  result = sub_26618CE40();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_266129F20(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_26618D030();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_2661397FC(v12, a2, a3, a1, v16);
  }

  return result;
}

uint64_t sub_2661396A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_266129F20(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6D0, &qword_266192D80);
  if ((sub_26618CE40() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_266129F20(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_26618D030();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_266139844(v14, a3, a4, a1, a2, v18);
  }
}

unint64_t sub_2661397FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_266139844(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_2661398AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26618C850();
  sub_26618B7C0();
  (*(v5 + 104))(a1, *MEMORY[0x277D5C150], v3);
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_2814B4A80);
  (*(v13 + 16))(v16, v17, v11);
  v36 = v11;
  v18 = v13;
  v19 = *(v5 + 16);
  v19(v10, a1, v3);
  v35 = v16;
  v20 = sub_26618C690();
  v21 = sub_26618CAD0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = v1;
    v23 = v22;
    v31 = swift_slowAlloc();
    v37 = v31;
    *v23 = 136315138;
    v32 = v18;
    v24 = v34;
    v19(v34, v10, v3);
    v25 = sub_266145588(v24);
    v27 = v26;
    (*(v5 + 8))(v10, v3);
    v28 = sub_266103A98(v25, v27, &v37);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_2660B7000, v20, v21, "Transformer.reformToAcousticId reformed parse to Acoustic ID DirectInvocation: %s", v23, 0xCu);
    v29 = v31;
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x26677CC30](v29, -1, -1);
    MEMORY[0x26677CC30](v23, -1, -1);

    return (*(v32 + 8))(v35, v36);
  }

  else
  {

    (*(v5 + 8))(v10, v3);
    return (*(v18 + 8))(v35, v36);
  }
}

uint64_t sub_266139CB8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

char *sub_266139D64(uint64_t a1)
{
  result = sub_2660DD5FC(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_2660DD63C(&v5, result, v3, 0, a1);
  }
}

void *sub_266139E0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2661409CC(*(a1 + 16), 0);
  v4 = sub_2661423D8(&v6, v3 + 4, v2, a1);
  sub_2660BA124(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

BOOL sub_266139E9C()
{
  sub_26618BDF0();
  v0 = sub_266142534(v18, v16, &qword_28005C0A8, qword_26618FAE0);
  if (!v17)
  {
    sub_2660BF79C(v18, &qword_28005C0A8, qword_26618FAE0);
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_61_1(v0, v1, &qword_28005C0A8, qword_26618FAE0, v2, v3, v4, v5);
  v6 = sub_26618BE80();
  if (!OUTLINED_FUNCTION_6_13(v6, v7, v8, v6, v9))
  {
    v10 = sub_26618BE50();
    if (!OUTLINED_FUNCTION_4_16(v10, v11))
    {
      sub_2660BF79C(v18, &qword_28005C0A8, qword_26618FAE0);
      __swift_destroy_boxed_opaque_existential_1(v15);
      goto LABEL_9;
    }
  }

  sub_26618BED0();

  sub_2660BF79C(v18, &qword_28005C0A8, qword_26618FAE0);
  v12 = v14 == 0;
  if (v14)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
LABEL_10:
  sub_2660BF79C(v16, &qword_28005C0A8, qword_26618FAE0);
  return v12;
}

void sub_266139FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_0();
  a19 = v25;
  a20 = v26;
  sub_26618BFE0();
  OUTLINED_FUNCTION_2_2();
  v269 = v27;
  v270 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_4();
  v266 = v30 - v29;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C718, &qword_266192DC8);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_17_5();
  v265 = v36;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17_5();
  v267 = v38;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v39);
  v41 = v251 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C720, &qword_266192DD0);
  MEMORY[0x28223BE20](v42 - 8);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_17_5();
  v264 = v55;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_76_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_75_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_74_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_77_0();
  v61 = MEMORY[0x28223BE20](v60);
  v63 = v251 - v62;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_32_3();
  v65 = MEMORY[0x28223BE20](v64);
  v67 = v251 - v66;
  MEMORY[0x28223BE20](v65);
  v69 = v251 - v68;
  sub_26618BDF0();
  sub_266142534(v275, v274, &qword_28005C0A8, qword_26618FAE0);
  if (v274[3])
  {
    sub_266142534(v274, v273, &qword_28005C0A8, qword_26618FAE0);
    v70 = sub_26618BE00();
    if (OUTLINED_FUNCTION_46_3(&v272, v273, v71, v70))
    {
      OUTLINED_FUNCTION_62_3();
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();
      if (v271)
      {
        sub_26613C958();
        OUTLINED_FUNCTION_82_0();
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      v78 = v269;
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();

      if (v271)
      {
        sub_26618BD30();
        OUTLINED_FUNCTION_63_3();
        sub_26618BFD0();
      }

      else
      {
        OUTLINED_FUNCTION_26_6();
        __swift_storeEnumTagSinglePayload(v79, v80, v81, v78);
      }

      OUTLINED_FUNCTION_36_1();
      v82(v67);
      __swift_storeEnumTagSinglePayload(v67, 0, 1, v78);
      v83 = *(v268 + 48);
      sub_266142534(v69, v41, &qword_28005C720, &qword_266192DD0);
      sub_266142534(v67, &v41[v83], &qword_28005C720, &qword_266192DD0);
      OUTLINED_FUNCTION_22_6(v41, 1, v78);
      if (!v91)
      {
        sub_266142534(v41, v23, &qword_28005C720, &qword_266192DD0);
        OUTLINED_FUNCTION_22_6(&v41[v83], 1, v78);
        if (!v91)
        {
          v269 = v20;
          v103 = v270;
          v104 = v266;
          (*(v270 + 32))(v266, &v41[v83], v78);
          OUTLINED_FUNCTION_0_14();
          sub_266142A78(v105, v106, MEMORY[0x277D5EE60]);
          sub_26618C890();
          OUTLINED_FUNCTION_30_3();

          v107 = *(v103 + 8);
          v107(v104, v78);
          OUTLINED_FUNCTION_64_2(v67);
          OUTLINED_FUNCTION_64_2(v69);
          sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
          v107(v23, v78);
          v108 = v41;
LABEL_31:
          OUTLINED_FUNCTION_64_2(v108);
          goto LABEL_56;
        }

        OUTLINED_FUNCTION_23_6();
        sub_2660BF79C(v92, v93, v94);
        OUTLINED_FUNCTION_23_6();
        sub_2660BF79C(v95, v96, v97);
        sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
        OUTLINED_FUNCTION_51_2();
        v98(v23, v78);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_23_6();
      sub_2660BF79C(v84, v85, v86);
      OUTLINED_FUNCTION_23_6();
      sub_2660BF79C(v87, v88, v89);
      sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
      OUTLINED_FUNCTION_22_6(&v41[v83], 1, v78);
      if (!v91)
      {
LABEL_26:
        v99 = v41;
LABEL_27:
        sub_2660BF79C(v99, &qword_28005C718, &qword_266192DC8);
        goto LABEL_56;
      }

      v90 = v41;
LABEL_22:
      sub_2660BF79C(v90, &qword_28005C720, &qword_266192DD0);
LABEL_56:

      goto LABEL_57;
    }

    v72 = sub_26618BDE0();
    if (OUTLINED_FUNCTION_10_10(v72))
    {

      sub_26618BED0();
      if (v271)
      {
        sub_26613C958();
        v74 = v73;
      }

      else
      {
        v74 = MEMORY[0x277D84F90];
      }

      v109 = v269;
      v110 = v267;
      sub_26618BED0();

      if (v271 && (v111 = sub_26618BD30(), , v111))
      {
        sub_26618BFD0();
      }

      else
      {
        OUTLINED_FUNCTION_26_6();
        __swift_storeEnumTagSinglePayload(v112, v113, v114, v109);
      }

      OUTLINED_FUNCTION_36_1();
      v115(v20);
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v109);
      v116 = *(v268 + 48);
      sub_266142534(v63, v110, &qword_28005C720, &qword_266192DD0);
      sub_266142534(v20, v110 + v116, &qword_28005C720, &qword_266192DD0);
      OUTLINED_FUNCTION_22_6(v110, 1, v109);
      if (v91)
      {

        v117 = OUTLINED_FUNCTION_19_7();
        sub_2660BF79C(v117, v118, &qword_266192DD0);
        OUTLINED_FUNCTION_52_1();
        sub_2660BF79C(v119, v120, v121);
        sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
        OUTLINED_FUNCTION_22_6(v110 + v116, 1, v109);
        if (v91)
        {
          sub_2660BF79C(v110, &qword_28005C720, &qword_266192DD0);
          goto LABEL_56;
        }
      }

      else
      {
        sub_266142534(v110, v22, &qword_28005C720, &qword_266192DD0);
        OUTLINED_FUNCTION_22_6(v110 + v116, 1, v109);
        if (!v122)
        {
          v269 = v74;
          v135 = v110;
          v136 = v270;
          v137 = v266;
          (*(v270 + 32))(v266, v135 + v116, v109);
          OUTLINED_FUNCTION_0_14();
          sub_266142A78(v138, v139, MEMORY[0x277D5EE60]);
          sub_26618C890();

          v140 = *(v136 + 8);
          v140(v137, v109);
          sub_2660BF79C(v20, &qword_28005C720, &qword_266192DD0);
          sub_2660BF79C(v63, &qword_28005C720, &qword_266192DD0);
          sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
          v140(v22, v109);
          sub_2660BF79C(v135, &qword_28005C720, &qword_266192DD0);
          goto LABEL_56;
        }

        v123 = OUTLINED_FUNCTION_19_7();
        sub_2660BF79C(v123, v124, &qword_266192DD0);
        sub_2660BF79C(v63, &qword_28005C720, &qword_266192DD0);
        sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
        OUTLINED_FUNCTION_51_2();
        v125(v22, v109);
      }

      sub_2660BF79C(v110, &qword_28005C718, &qword_266192DC8);
      goto LABEL_56;
    }

    v75 = sub_26618BE80();
    if (OUTLINED_FUNCTION_10_10(v75))
    {

      sub_26618BED0();

      if (v271 && (v76 = sub_26618BD30(), , v76))
      {
        sub_26618BFD0();

        v77 = v269;
      }

      else
      {
        v126 = OUTLINED_FUNCTION_19_8();
        v77 = v269;
        __swift_storeEnumTagSinglePayload(v126, v127, v128, v269);
      }

      v129 = v265;
      OUTLINED_FUNCTION_36_1();
      v130(v21);
      OUTLINED_FUNCTION_14_12(v21);
      v132 = *(v131 + 48);
      OUTLINED_FUNCTION_81_0(v24, v129);
      OUTLINED_FUNCTION_81_0(v21, v129 + v132);
      OUTLINED_FUNCTION_2_17(v129);
      if (!v91)
      {
        sub_266142534(v129, v264, &qword_28005C720, &qword_266192DD0);
        OUTLINED_FUNCTION_2_17(v129 + v132);
        if (!v141)
        {
          v148 = v270;
          v149 = v266;
          (*(v270 + 32))(v266, v129 + v132, v77);
          OUTLINED_FUNCTION_0_14();
          sub_266142A78(v150, v151, MEMORY[0x277D5EE60]);
          sub_26618C890();

          v152 = *(v148 + 8);
          v152(v149, v77);
          OUTLINED_FUNCTION_52_1();
          sub_2660BF79C(v153, v154, v155);
          OUTLINED_FUNCTION_52_1();
          sub_2660BF79C(v156, v157, v158);
          sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
          v152(v264, v77);
          OUTLINED_FUNCTION_52_1();
LABEL_68:
          sub_2660BF79C(v159, v160, v161);
          goto LABEL_57;
        }

        OUTLINED_FUNCTION_49_2(v21);
        OUTLINED_FUNCTION_43_2();
        sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
        OUTLINED_FUNCTION_51_2();
        v142 = OUTLINED_FUNCTION_42_6();
        v143(v142);
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_49_2(v21);
      OUTLINED_FUNCTION_43_2();
      sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
      OUTLINED_FUNCTION_2_17(v129 + v132);
      if (!v91)
      {
LABEL_62:
        v144 = v129;
LABEL_63:
        sub_2660BF79C(v144, &qword_28005C718, &qword_266192DC8);
        goto LABEL_57;
      }

      v133 = v129;
LABEL_52:
      sub_2660BF79C(v133, &qword_28005C720, &qword_266192DD0);
LABEL_57:
      __swift_destroy_boxed_opaque_existential_1(v273);
      goto LABEL_58;
    }

    v100 = sub_26618BDD0();
    v101 = OUTLINED_FUNCTION_10_10(v100);
    v102 = v269;
    if (v101)
    {
      OUTLINED_FUNCTION_62_3();
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();
      if (v271)
      {
        sub_26613C958();
        OUTLINED_FUNCTION_82_0();
      }

      v69 = v262;
      v24 = v261;
      v162 = v263;
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();

      if (v271)
      {
        sub_26618BD30();
        OUTLINED_FUNCTION_63_3();
        sub_26618BFD0();
      }

      else
      {
        v163 = OUTLINED_FUNCTION_19_8();
        __swift_storeEnumTagSinglePayload(v163, v164, v165, v102);
      }

      v166 = OUTLINED_FUNCTION_25_9();
      v167(v166);
      OUTLINED_FUNCTION_14_12(v162);
      v169 = *(v168 + 48);
      OUTLINED_FUNCTION_39_2();
      OUTLINED_FUNCTION_38_3();
      OUTLINED_FUNCTION_2_17(v69);
      if (!v91)
      {
        sub_266142534(v69, v257, &qword_28005C720, &qword_266192DD0);
        OUTLINED_FUNCTION_2_17(&v69[v169]);
        if (!v91)
        {
          v170 = OUTLINED_FUNCTION_11_7();
          v171(v170);
          OUTLINED_FUNCTION_0_14();
          v174 = sub_266142A78(v172, v173, MEMORY[0x277D5EE60]);
          OUTLINED_FUNCTION_27_3(v174);
          OUTLINED_FUNCTION_30_3();

          v175 = *(v162 + 8);
          v176 = OUTLINED_FUNCTION_42_6();
          v175(v176);
          v177 = &a18;
LABEL_102:
          v221 = *(v177 - 32);
LABEL_103:
          OUTLINED_FUNCTION_64_2(v221);
          OUTLINED_FUNCTION_64_2(v24);
          sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
          v222 = OUTLINED_FUNCTION_54_3();
          v175(v222);
          v108 = v69;
          goto LABEL_31;
        }

        goto LABEL_93;
      }

      goto LABEL_88;
    }

    v134 = sub_26618BF80();
    if (OUTLINED_FUNCTION_10_10(v134))
    {
      OUTLINED_FUNCTION_62_3();
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();
      if (v271)
      {
        sub_26613C958();
        OUTLINED_FUNCTION_82_0();
      }

      v69 = v259;
      v24 = v258;
      v184 = v260;
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();

      if (v271)
      {
        sub_26618BD30();
        OUTLINED_FUNCTION_63_3();
        sub_26618BFD0();
      }

      else
      {
        v185 = OUTLINED_FUNCTION_19_8();
        __swift_storeEnumTagSinglePayload(v185, v186, v187, v102);
      }

      v188 = OUTLINED_FUNCTION_25_9();
      v189(v188);
      OUTLINED_FUNCTION_14_12(v184);
      v169 = *(v190 + 48);
      OUTLINED_FUNCTION_39_2();
      OUTLINED_FUNCTION_38_3();
      OUTLINED_FUNCTION_2_17(v69);
      if (!v91)
      {
        sub_266142534(v69, v253, &qword_28005C720, &qword_266192DD0);
        OUTLINED_FUNCTION_2_17(&v69[v169]);
        if (!v197)
        {
          v215 = OUTLINED_FUNCTION_11_7();
          v216(v215);
          OUTLINED_FUNCTION_0_14();
          v219 = sub_266142A78(v217, v218, MEMORY[0x277D5EE60]);
          OUTLINED_FUNCTION_27_3(v219);
          OUTLINED_FUNCTION_30_3();

          v175 = *(v184 + 8);
          v220 = OUTLINED_FUNCTION_42_6();
          v175(v220);
          v177 = &a15;
          goto LABEL_102;
        }

        goto LABEL_93;
      }

      goto LABEL_88;
    }

    v145 = sub_26618BE50();
    if (OUTLINED_FUNCTION_10_10(v145))
    {
      OUTLINED_FUNCTION_62_3();
      OUTLINED_FUNCTION_34_6();
      sub_26618BED0();

      if (v271 && (v146 = sub_26618BD30(), , v146))
      {
        v147 = v252;
        sub_26618BFD0();
      }

      else
      {
        v147 = v252;
        v206 = OUTLINED_FUNCTION_19_8();
        __swift_storeEnumTagSinglePayload(v206, v207, v208, v102);
      }

      v209 = v255;
      v210 = v254;
      v211 = v256;
      OUTLINED_FUNCTION_36_1();
      v212(v211);
      OUTLINED_FUNCTION_14_12(v211);
      v214 = *(v213 + 48);
      OUTLINED_FUNCTION_81_0(v147, v209);
      OUTLINED_FUNCTION_81_0(v211, v209 + v214);
      OUTLINED_FUNCTION_2_17(v209);
      if (v91)
      {

        OUTLINED_FUNCTION_49_2(v211);
        OUTLINED_FUNCTION_43_2();
        sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
        OUTLINED_FUNCTION_2_17(v209 + v214);
        if (v91)
        {
          v133 = v209;
          goto LABEL_52;
        }
      }

      else
      {
        sub_266142534(v209, v210, &qword_28005C720, &qword_266192DD0);
        OUTLINED_FUNCTION_2_17(v209 + v214);
        if (!v223)
        {
          v226 = v270;
          v227 = v266;
          (*(v270 + 32))(v266, v209 + v214, v102);
          OUTLINED_FUNCTION_0_14();
          sub_266142A78(v228, v229, MEMORY[0x277D5EE60]);
          sub_26618C890();

          v230 = *(v226 + 8);
          v230(v227, v102);
          OUTLINED_FUNCTION_23_6();
          sub_2660BF79C(v231, v232, v233);
          OUTLINED_FUNCTION_23_6();
          sub_2660BF79C(v234, v235, v236);
          sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
          v237 = OUTLINED_FUNCTION_54_3();
          (v230)(v237);
          OUTLINED_FUNCTION_23_6();
          goto LABEL_68;
        }

        OUTLINED_FUNCTION_49_2(v211);
        OUTLINED_FUNCTION_43_2();
        sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
        OUTLINED_FUNCTION_51_2();
        v224 = OUTLINED_FUNCTION_54_3();
        v225(v224);
      }

      v144 = v209;
      goto LABEL_63;
    }

    v178 = sub_26618BFA0();
    if (!OUTLINED_FUNCTION_10_10(v178))
    {
      sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
      __swift_destroy_boxed_opaque_existential_1(v273);
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_62_3();
    v179 = sub_26618C060();
    if (v179)
    {
      v180 = v179;
      sub_2661046B8();
      OUTLINED_FUNCTION_41_4();
      if (v181)
      {
        OUTLINED_FUNCTION_67_0();
        sub_2661046C8();
        if ((v180 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26677C150](0, v180);
        }

        else
        {
        }

        sub_26618BCF0();

        v182 = v271;
        if (v271)
        {
          v183 = sub_26618BD20();

          if (v183)
          {
            sub_26613C958();
            OUTLINED_FUNCTION_82_0();
            goto LABEL_111;
          }
        }
      }

      else
      {
      }

      v182 = MEMORY[0x277D84F90];
    }

    else
    {
      v182 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_41_4();
    }

LABEL_111:
    v238 = sub_26618C060();

    if (v238)
    {
      if (sub_2661046B8())
      {
        OUTLINED_FUNCTION_67_0();
        sub_2661046C8();
        if ((v238 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26677C150](0, v238);
        }

        else
        {
        }

        sub_26618BCF0();

        if (v271)
        {
          sub_26618BD30();
          OUTLINED_FUNCTION_63_3();
          sub_26618BFD0();

          goto LABEL_119;
        }
      }

      else
      {
      }
    }

    v239 = OUTLINED_FUNCTION_19_8();
    __swift_storeEnumTagSinglePayload(v239, v240, v241, v102);
LABEL_119:
    v242 = OUTLINED_FUNCTION_25_9();
    v243(v242);
    OUTLINED_FUNCTION_14_12(v23);
    v169 = *(v244 + 48);
    OUTLINED_FUNCTION_39_2();
    OUTLINED_FUNCTION_38_3();
    OUTLINED_FUNCTION_2_17(v69);
    if (!v91)
    {
      sub_266142534(v69, v251[0], &qword_28005C720, &qword_266192DD0);
      OUTLINED_FUNCTION_2_17(&v69[v169]);
      if (!v91)
      {
        v268 = v182;
        v245 = OUTLINED_FUNCTION_11_7();
        v246(v245);
        OUTLINED_FUNCTION_0_14();
        v249 = sub_266142A78(v247, v248, MEMORY[0x277D5EE60]);
        OUTLINED_FUNCTION_27_3(v249);
        OUTLINED_FUNCTION_30_3();

        v175 = *(v23 + 8);
        v250 = OUTLINED_FUNCTION_42_6();
        v175(v250);
        v221 = v23;
        goto LABEL_103;
      }

LABEL_93:

      OUTLINED_FUNCTION_23_6();
      sub_2660BF79C(v198, v199, v200);
      OUTLINED_FUNCTION_23_6();
      sub_2660BF79C(v201, v202, v203);
      sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
      OUTLINED_FUNCTION_51_2();
      v204 = OUTLINED_FUNCTION_54_3();
      v205(v204);
      goto LABEL_94;
    }

LABEL_88:

    OUTLINED_FUNCTION_23_6();
    sub_2660BF79C(v191, v192, v193);
    OUTLINED_FUNCTION_23_6();
    sub_2660BF79C(v194, v195, v196);
    sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
    OUTLINED_FUNCTION_2_17(&v69[v169]);
    if (v91)
    {
      v90 = v69;
      goto LABEL_22;
    }

LABEL_94:
    v99 = v69;
    goto LABEL_27;
  }

  sub_2660BF79C(v275, &qword_28005C0A8, qword_26618FAE0);
LABEL_58:
  sub_2660BF79C(v274, &qword_28005C0A8, qword_26618FAE0);
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26613B704()
{
  v0 = OUTLINED_FUNCTION_80_0();
  v6 = OUTLINED_FUNCTION_65_3(v0, v1, &qword_28005C0A8, qword_26618FAE0, v2, v3, v4, v5, v33, v35, v36[0], v36[1], v36[2], v36[3]);
  if (v38)
  {
    OUTLINED_FUNCTION_61_1(v6, v7, &qword_28005C0A8, qword_26618FAE0, v8, v9, v10, v11);
    v12 = sub_26618BE40();
    if (OUTLINED_FUNCTION_6_13(v12, v13, v14, v12, v15))
    {
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_37_3();
      sub_26618BAF0();
      goto LABEL_10;
    }

    v16 = sub_26618BDD0();
    if (OUTLINED_FUNCTION_4_16(v16, v17) || (v18 = sub_26618BF80(), OUTLINED_FUNCTION_4_16(v18, v19)) || (v20 = sub_26618BE00(), OUTLINED_FUNCTION_4_16(v20, v21)) || (v22 = sub_26618BDE0(), OUTLINED_FUNCTION_4_16(v22, v23)))
    {
LABEL_9:
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_37_3();
      sub_26618BED0();
LABEL_10:

      if (v34)
      {
LABEL_11:
        sub_26618BD70();
        OUTLINED_FUNCTION_72_1();

        sub_2660BF79C(v39, &qword_28005C0A8, qword_26618FAE0);
LABEL_24:
        __swift_destroy_boxed_opaque_existential_1(v36);
        goto LABEL_25;
      }

LABEL_23:
      sub_2660BF79C(v39, &qword_28005C0A8, qword_26618FAE0);

      goto LABEL_24;
    }

    v24 = sub_26618BFA0();
    if (OUTLINED_FUNCTION_4_16(v24, v25))
    {
      OUTLINED_FUNCTION_48_3();
      v26 = sub_26618C060();

      if (!v26)
      {
        goto LABEL_23;
      }

      if (!sub_2661046B8())
      {

        sub_2660BF79C(v39, &qword_28005C0A8, qword_26618FAE0);
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_67_0();
      sub_2661046C8();
      if ((v26 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26677C150](0, v26);
      }

      else
      {
      }

      sub_26618BCF0();

      if (!v34)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v27 = sub_26618BE90();
      if (OUTLINED_FUNCTION_4_16(v27, v28))
      {
        goto LABEL_9;
      }

      v29 = sub_26618C080();
      if (!OUTLINED_FUNCTION_4_16(v29, v30))
      {
        sub_2660BF79C(v39, &qword_28005C0A8, qword_26618FAE0);
        __swift_destroy_boxed_opaque_existential_1(v36);
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_37_3();
      sub_26618BED0();

      if (!v34)
      {
        goto LABEL_23;
      }
    }

    v31 = sub_26618BD20();

    if (v31)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  sub_2660BF79C(v39, &qword_28005C0A8, qword_26618FAE0);
LABEL_25:
  sub_2660BF79C(v37, &qword_28005C0A8, qword_26618FAE0);
  return OUTLINED_FUNCTION_19_7();
}

void sub_26613BA0C()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v0;
  v3 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v9 = (v8 - v7);
  v67 = sub_26618BC20();
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  v16 = sub_26618BBC0();
  OUTLINED_FUNCTION_2_2();
  v68 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_24_1();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v62 - v23;
  sub_26618BDF0();
  sub_266142534(v72, v71, &qword_28005C0A8, qword_26618FAE0);
  if (!v71[3])
  {
    goto LABEL_23;
  }

  sub_266142534(v71, v70, &qword_28005C0A8, qword_26618FAE0);
  sub_26618BFA0();
  if (!OUTLINED_FUNCTION_79_0())
  {
    __swift_destroy_boxed_opaque_existential_1(v70);
LABEL_23:
    sub_26618C0B0();
    OUTLINED_FUNCTION_72_1();
    sub_2660BF79C(v71, &qword_28005C0A8, qword_26618FAE0);
LABEL_24:
    v42 = OUTLINED_FUNCTION_19_7();
    if (sub_266145B78(v42, v43) != 10)
    {
      goto LABEL_32;
    }

LABEL_28:
    if (qword_2814B2C38 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

  v63 = v21;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_34_6();
  sub_26618C070();

  if (!v69 || (OUTLINED_FUNCTION_18_10(), v25 = sub_26618BD40(), , !v25))
  {

LABEL_27:
    __swift_destroy_boxed_opaque_existential_1(v70);
    sub_2660BF79C(v71, &qword_28005C0A8, qword_26618FAE0);
    goto LABEL_28;
  }

  v62[3] = v9;
  v62[4] = v5;
  v62[5] = v3;
  v9 = *(v25 + 16);
  v62[2] = v2;
  v62[0] = v24;
  v62[1] = v1;
  v62[6] = v25;
  if (!v9)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_34:

    v53 = 0;
    v3 = *(v5 + 16);
    v9 = (v68 + 8);
    v54 = v63;
    while (1)
    {
      if (v3 == v53)
      {

        OUTLINED_FUNCTION_33_2();
        goto LABEL_27;
      }

      if (v53 >= *(v5 + 16))
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_29_2();
      (*(v56 + 16))(v54, v5 + v55 + *(v56 + 72) * v53, v16);
      if (sub_26618BBB0() == 0x636E75614C707061 && v57 == 0xED00006272655668)
      {
        break;
      }

      v59 = sub_26618D000();

      if (v59)
      {
        goto LABEL_45;
      }

      v54 = v63;
      (*v9)(v63, v16);
      ++v53;
    }

LABEL_45:

    v60 = v68 + 32;
    v61 = v62[0];
    (*(v68 + 32))(v62[0], v63, v16);
    sub_26618BBA0();
    OUTLINED_FUNCTION_72_1();

    (*(v60 - 24))(v61, v16);
    __swift_destroy_boxed_opaque_existential_1(v70);
    sub_2660BF79C(v71, &qword_28005C0A8, qword_26618FAE0);
    OUTLINED_FUNCTION_33_2();
    if (!v61)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v26 = v11 + 16;
  OUTLINED_FUNCTION_29_2();
  v28 = v25 + v27;
  v64 = *(v26 + 56);
  v65 = v29;
  v66 = v26;
  v3 = (v26 - 8);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v30 = v16;
    v31 = v67;
    v65(v15, v28, v67);
    v32 = sub_26618BBF0();
    (*v3)(v15, v31);
    v33 = *(v32 + 16);
    v34 = *(v5 + 16);
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v35 > *(v5 + 24) >> 1)
    {
      if (v34 <= v35)
      {
        v37 = v34 + v33;
      }

      else
      {
        v37 = v34;
      }

      sub_2661296CC(isUniquelyReferenced_nonNull_native, v37, 1, v5);
      v5 = v38;
    }

    v16 = v30;
    if (*(v32 + 16))
    {
      if ((*(v5 + 24) >> 1) - *(v5 + 16) < v33)
      {
        goto LABEL_49;
      }

      swift_arrayInitWithCopy();

      if (v33)
      {
        v39 = *(v5 + 16);
        v40 = __OFADD__(v39, v33);
        v41 = v39 + v33;
        if (v40)
        {
          goto LABEL_51;
        }

        *(v5 + 16) = v41;
      }
    }

    else
    {

      if (v33)
      {
        goto LABEL_48;
      }
    }

    v28 += v64;
    if (!--v9)
    {
      goto LABEL_34;
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
LABEL_52:
  OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
LABEL_29:
  v44 = __swift_project_value_buffer(v3, qword_2814B4A80);
  (*(v5 + 16))(v9, v44, v3);

  v45 = sub_26618C690();
  v46 = sub_26618CAB0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v71[0] = v48;
    *v47 = 136315138;
    v49 = sub_26618C0B0();
    v51 = v9;
    v52 = sub_266103A98(v49, v50, v71);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_2660B7000, v45, v46, "Unknown Uso verb: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    (*(v5 + 8))(v51, v3);
  }

  else
  {

    (*(v5 + 8))(v9, v3);
  }

LABEL_32:
  sub_2660BF79C(v72, &qword_28005C0A8, qword_26618FAE0);
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26613C14C()
{
  v0 = OUTLINED_FUNCTION_80_0();
  v6 = OUTLINED_FUNCTION_65_3(v0, v1, &qword_28005C0A8, qword_26618FAE0, v2, v3, v4, v5, v13, v15, v16[0], v16[1], v16[2], v16[3]);
  if (v18)
  {
    OUTLINED_FUNCTION_61_1(v6, v7, &qword_28005C0A8, qword_26618FAE0, v8, v9, v10, v11);
    sub_26618C080();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_37_3();
      sub_26618BED0();

      if (v14)
      {
        sub_26618BE70();
        OUTLINED_FUNCTION_72_1();

        sub_2660BF79C(v19, &qword_28005C0A8, qword_26618FAE0);
      }

      else
      {
        sub_2660BF79C(v19, &qword_28005C0A8, qword_26618FAE0);
      }

      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      sub_2660BF79C(v19, &qword_28005C0A8, qword_26618FAE0);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  else
  {
    sub_2660BF79C(v19, &qword_28005C0A8, qword_26618FAE0);
  }

  sub_2660BF79C(v17, &qword_28005C0A8, qword_26618FAE0);
  return OUTLINED_FUNCTION_19_7();
}

uint64_t sub_26613C2C0(uint64_t a1)
{
  result = MEMORY[0x26677BE10](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_266140DC4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_26613C380(uint64_t a1)
{
  v2 = sub_2661046B8();
  v3 = sub_26618C4F0();
  OUTLINED_FUNCTION_24_5();
  v6 = sub_266142A78(v4, v5, MEMORY[0x277D85378]);
  v10[1] = MEMORY[0x26677BE10](v2, v3, v6);
  v7 = sub_2661046B8();
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26677C150](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_266140F10(v10, v9);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_26613C48C()
{
  OUTLINED_FUNCTION_6_0();
  v0 = sub_26618BC90();
  OUTLINED_FUNCTION_2_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_1();
  v6 = (v4 - v5);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_5();
  v51 = v8;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v9);
  v11 = v45 - v10;
  sub_26618BDF0();
  sub_266142534(v57, v56, &qword_28005C0A8, qword_26618FAE0);
  if (!v56[3])
  {
    goto LABEL_22;
  }

  sub_266142534(v56, v55, &qword_28005C0A8, qword_26618FAE0);
  sub_26618C080();
  if (!OUTLINED_FUNCTION_79_0())
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
LABEL_22:
    sub_2660BF79C(v57, &qword_28005C0A8, qword_26618FAE0);
    goto LABEL_24;
  }

  v12 = v54;

  sub_26618BED0();

  if (v53)
  {
    OUTLINED_FUNCTION_18_10();
    v13 = sub_26618BD50();

    if (v13)
    {
      v48 = v6;
      v45[1] = v12;
      v14 = 0;
      v49 = *(v13 + 16);
      v52 = v2 + 16;
      v47 = (v2 + 32);
      v50 = MEMORY[0x277D84F90];
      while (1)
      {
        while (1)
        {
          if (v49 == v14)
          {

            v30 = 0;
            v31 = v50;
            v32 = *(v50 + 16);
            v33 = MEMORY[0x277D84F90];
            while (v32 != v30)
            {
              if (v30 >= *(v31 + 16))
              {
                goto LABEL_35;
              }

              OUTLINED_FUNCTION_29_2();
              v36 = v51;
              (*(v2 + 16))(v51, v35 + v34 + *(v2 + 72) * v30, v0);
              v37 = sub_26618BC70();
              v39 = v38;
              (*(v2 + 8))(v36, v0);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_17_9();
                sub_266129600();
                v33 = v43;
              }

              v41 = *(v33 + 16);
              v40 = *(v33 + 24);
              v31 = v50;
              if (v41 >= v40 >> 1)
              {
                OUTLINED_FUNCTION_38_2(v40);
                sub_266129600();
                v31 = v50;
                v33 = v44;
              }

              *(v33 + 16) = v41 + 1;
              v42 = v33 + 16 * v41;
              *(v42 + 32) = v37;
              *(v42 + 40) = v39;
              ++v30;
            }

            sub_2660BF79C(v57, &qword_28005C0A8, qword_26618FAE0);
            __swift_destroy_boxed_opaque_existential_1(v55);
            goto LABEL_24;
          }

          if (v14 >= *(v13 + 16))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            return;
          }

          OUTLINED_FUNCTION_70_1();
          v15 = *(v2 + 72);
          (*(v2 + 16))(v11, v13 + v12 + v15 * v14, v0);
          v16 = sub_26618BC80();
          if (v17)
          {
            break;
          }

LABEL_14:
          (*(v2 + 8))(v11, v0);
          ++v14;
        }

        if (v16 == 0x7463416B63697571 && v17 == 0xEF656D614E6E6F69)
        {
        }

        else
        {
          v19 = sub_26618D000();

          if ((v19 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v46 = *v47;
        v46(v48, v11, v0);
        v20 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_71_1();
          v22 = OUTLINED_FUNCTION_21_10();
          sub_26612A3F8(v22, v23, v24);
          v20 = v53;
        }

        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v28 = OUTLINED_FUNCTION_38_2(v25);
          v50 = v29;
          sub_26612A3F8(v28, v29, 1);
          v27 = v50;
          v20 = v53;
        }

        ++v14;
        *(v20 + 16) = v27;
        v50 = v20;
        v46(v20 + v12 + v26 * v15, v48, v0);
      }
    }
  }

  sub_2660BF79C(v57, &qword_28005C0A8, qword_26618FAE0);
  __swift_destroy_boxed_opaque_existential_1(v55);
LABEL_24:
  sub_2660BF79C(v56, &qword_28005C0A8, qword_26618FAE0);
  OUTLINED_FUNCTION_7_1();
}

void sub_26613C958()
{
  OUTLINED_FUNCTION_6_0();
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v160 = v7;
  v161 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v159 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6E0, &qword_266192E10);
  MEMORY[0x28223BE20](v10 - 8);
  v162 = &v153 - v11;
  v170 = sub_26618BC90();
  OUTLINED_FUNCTION_2_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_75_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_76_1();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v153 - v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_32_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v153 - v27;
  sub_26613ED1C();
  if (*(v29 + 16))
  {
    goto LABEL_73;
  }

  v165 = v24;
  v166 = v4;
  v155 = v5;
  v167 = v2;
  v157 = v29;
  v164 = v3;
  v154 = v17;
  OUTLINED_FUNCTION_18_10();
  v156 = v1;
  v30 = sub_26618BD50();
  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  if (v30)
  {
    v33 = v30;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v34 = *(v33 + 16);
  v168 = v33;
  v169 = v34;
  v163 = (v13 + 32);
  v171 = v13 + 8;
  v172 = v13 + 16;
  v35 = v170;
  while (v169 != v31)
  {
    if (v31 >= *(v33 + 16))
    {
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
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
      goto LABEL_101;
    }

    v36 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v37 = *(v13 + 72);
    OUTLINED_FUNCTION_58_3();
    v38();
    sub_26618BC80();
    if (v39)
    {
      OUTLINED_FUNCTION_45_3();
      v42 = v42 && v41 == 0xE700000000000000;
      if (v42)
      {
      }

      else
      {
        v2 = OUTLINED_FUNCTION_40_5(v40);

        if ((v2 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v44 = v166;
      v158 = *v163;
      v158(v166, v28, v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v173 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = OUTLINED_FUNCTION_21_10();
        sub_26612A3F8(v46, v47, v48);
        v44 = v166;
        v32 = v173;
      }

      v2 = *(v32 + 16);
      v49 = *(v32 + 24);
      v50 = v2 + 1;
      if (v2 >= v49 >> 1)
      {
        v51 = OUTLINED_FUNCTION_12_11(v49);
        v53 = v52;
        sub_26612A3F8(v51, v52, 1);
        v50 = v53;
        v44 = v166;
        v32 = v173;
      }

      ++v31;
      *(v32 + 16) = v50;
      v158(v32 + v36 + v2 * v37, v44, v35);
      v33 = v168;
    }

    else
    {
LABEL_14:
      OUTLINED_FUNCTION_73_1();
      v43(v28, v35);
      ++v31;
      v33 = v168;
    }
  }

  v54 = 0;
  v55 = *(v32 + 16);
  v56 = MEMORY[0x277D84F90];
  while (v55 != v54)
  {
    if (v54 >= *(v32 + 16))
    {
      goto LABEL_105;
    }

    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_58_3();
    v57();
    v58 = sub_26618BC70();
    v60 = v59;
    (*(v13 + 8))(v0, v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_17_9();
      sub_266129600();
      v56 = v64;
    }

    v62 = *(v56 + 16);
    v61 = *(v56 + 24);
    v2 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      OUTLINED_FUNCTION_38_2(v61);
      sub_266129600();
      v56 = v65;
    }

    *(v56 + 16) = v2;
    v63 = v56 + 16 * v62;
    *(v63 + 32) = v58;
    *(v63 + 40) = v60;
    ++v54;
    v35 = v170;
  }

  if (*(v56 + 16))
  {

    v66 = v56;
LABEL_72:
    v115 = sub_26613C2C0(v66);
    sub_266139E0C(v115);
    goto LABEL_73;
  }

  v67 = 0;
  v68 = MEMORY[0x277D84F90];
LABEL_32:
  v69 = v168;
  v166 = v68;
  while (2)
  {
    if (v169 != v67)
    {
      if (v67 >= *(v69 + 16))
      {
        goto LABEL_106;
      }

      v70 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v0 = *(v13 + 72);
      v71 = v165;
      OUTLINED_FUNCTION_58_3();
      v72();
      sub_26618BC80();
      if (!v73)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_44_2();
      if (v42 && v75 == 0xE700000000000000)
      {

        v71 = v165;
      }

      else
      {
        v2 = OUTLINED_FUNCTION_40_5(v74);

        v71 = v165;
        if ((v2 & 1) == 0)
        {
LABEL_44:
          OUTLINED_FUNCTION_73_1();
          v79(v71, v35);
          ++v67;
          v68 = v166;
          continue;
        }
      }

      v77 = sub_26618BC70();
      v2 = v78;
      OUTLINED_FUNCTION_30_6(v77, v78);
      OUTLINED_FUNCTION_47_5();
      sub_26618CC60();
      OUTLINED_FUNCTION_30_3();

      if (v71)
      {
        v2 = *v163;
        (*v163)(v155, v71, v35);
        v68 = v166;
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v174 = v68;
        if ((v80 & 1) == 0)
        {
          OUTLINED_FUNCTION_71_1();
          v81 = OUTLINED_FUNCTION_21_10();
          sub_26612A3F8(v81, v82, v83);
          v68 = v174;
        }

        v85 = *(v68 + 2);
        v84 = *(v68 + 3);
        if (v85 >= v84 >> 1)
        {
          v86 = OUTLINED_FUNCTION_38_2(v84);
          sub_26612A3F8(v86, v85 + 1, 1);
          v68 = v174;
        }

        ++v67;
        *(v68 + 2) = v85 + 1;
        (v2)(&v68[v70 + v85 * v0], v155, v35);
        goto LABEL_32;
      }

      goto LABEL_44;
    }

    break;
  }

  v0 = 0;
  v87 = *(v68 + 2);
  v88 = MEMORY[0x277D84F90];
  v89 = MEMORY[0x277D84F90];
  while (v87 != v0)
  {
    if (v0 >= *(v68 + 2))
    {
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_29_2();
    v91 = v90;
    OUTLINED_FUNCTION_58_3();
    v92();
    v93 = sub_26618BC70();
    v95 = v94;
    (*(v13 + 8))(v91, v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_17_9();
      sub_266129600();
      v89 = v99;
    }

    v97 = *(v89 + 16);
    v96 = *(v89 + 24);
    v2 = v97 + 1;
    if (v97 >= v96 >> 1)
    {
      OUTLINED_FUNCTION_38_2(v96);
      sub_266129600();
      v89 = v100;
    }

    *(v89 + 16) = v2;
    v98 = v89 + 16 * v97;
    *(v98 + 32) = v93;
    *(v98 + 40) = v95;
    ++v0;
    v35 = v170;
    v68 = v166;
  }

  v101 = *(v89 + 16);
  if (v101)
  {
    v173 = v88;
    sub_26612A450(0, v101, 0);
    v102 = v173;
    v87 = (v89 + 40);
    do
    {
      v103 = *(v87 - 1);
      v104 = *v87;
      v105 = qword_28005BC78;

      if (v105 != -1)
      {
        OUTLINED_FUNCTION_7_14();
        swift_once();
      }

      v106 = off_28005C6B8;
      if (*(off_28005C6B8 + 2))
      {
        v107 = sub_266129F20(v103, v104);
        if (v108)
        {
          v109 = (v106[7] + 16 * v107);
          v103 = *v109;
          v110 = v109[1];

          v104 = v110;
        }
      }

      OUTLINED_FUNCTION_66_2();
      if (v112)
      {
        v114 = OUTLINED_FUNCTION_12_11(v111);
        sub_26612A450(v114, v88, 1);
        v102 = v173;
      }

      *(v102 + 16) = v88;
      v113 = v102 + 16 * v35;
      *(v113 + 32) = v103;
      *(v113 + 40) = v104;
      v87 += 2;
      --v101;
      v35 = v170;
    }

    while (v101);
  }

  else
  {

    v102 = MEMORY[0x277D84F90];
  }

  if (*(v102 + 16))
  {
    v66 = v102;
    goto LABEL_72;
  }

  v0 = sub_26618BB80();
  v116 = 0;
  v117 = *(v0 + 16);
  v2 = 0x8000000266199BA0;
  v170 = MEMORY[0x277D84F90];
  while (v117 != v116)
  {
    if (v116 >= *(v0 + 16))
    {
      goto LABEL_108;
    }

    OUTLINED_FUNCTION_70_1();
    v118 = *(v13 + 72);
    OUTLINED_FUNCTION_58_3();
    v119();
    sub_26618BC80();
    if (!v120)
    {
LABEL_90:
      OUTLINED_FUNCTION_73_1();
      v128(v164, v35);
      ++v116;
      continue;
    }

    OUTLINED_FUNCTION_45_3();
    if (v42 && v122 == 0xE700000000000000)
    {
    }

    else
    {
      v124 = OUTLINED_FUNCTION_40_5(v121);

      if ((v124 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    if (sub_26618BC30() == 0xD000000000000016 && 0x8000000266199BA0 == v125)
    {
    }

    else
    {
      v127 = sub_26618D000();

      if ((v127 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    v129 = v154;
    v169 = *v163;
    (v169)(v154, v164, v35);
    v130 = v170;
    v131 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v130;
    v173 = v130;
    if ((v131 & 1) == 0)
    {
      v133 = OUTLINED_FUNCTION_21_10();
      sub_26612A3F8(v133, v134, v135);
      v129 = v154;
      v132 = v173;
    }

    v137 = *(v132 + 16);
    v136 = *(v132 + 24);
    v138 = v137 + 1;
    if (v137 >= v136 >> 1)
    {
      v139 = OUTLINED_FUNCTION_12_11(v136);
      v170 = v140;
      sub_26612A3F8(v139, v140, 1);
      v138 = v170;
      v129 = v154;
      v132 = v173;
    }

    ++v116;
    *(v132 + 16) = v138;
    v170 = v132;
    (v169)(v87 + v132 + v137 * v118, v129, v35);
  }

  v141 = v162;
  sub_266139CB8(v170, MEMORY[0x277D5E4F0], v162);

  OUTLINED_FUNCTION_22_6(v141, 1, v35);
  if (v42)
  {
    sub_2660BF79C(v141, &qword_28005C6E0, &qword_266192E10);
    goto LABEL_73;
  }

  v2 = sub_26618BC70();
  v0 = v142;
  OUTLINED_FUNCTION_73_1();
  v143(v141, v35);
  if (qword_2814B2C38 != -1)
  {
    goto LABEL_109;
  }

LABEL_101:
  v144 = v161;
  v145 = __swift_project_value_buffer(v161, qword_2814B4A80);
  v147 = v159;
  v146 = v160;
  (*(v160 + 16))(v159, v145, v144);

  v148 = sub_26618C690();
  v149 = sub_26618CA90();

  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v173 = v151;
    *v150 = 136315138;
    *(v150 + 4) = sub_266103A98(v2, v0, &v173);
    _os_log_impl(&dword_2660B7000, v148, v149, "AppLaunch+UsoTask.appIdentifiers returning the top pegasus result: %s", v150, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v151);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  (*(v146 + 8))(v147, v144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_26618E190;
  *(v152 + 32) = v2;
  *(v152 + 40) = v0;
LABEL_73:
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26613D5E4()
{
  v0 = OUTLINED_FUNCTION_80_0();
  v6 = OUTLINED_FUNCTION_65_3(v0, v1, &qword_28005C0A8, qword_26618FAE0, v2, v3, v4, v5, v31, v33, v34[0], v34[1], v34[2], v34[3]);
  if (!v36)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_61_1(v6, v7, &qword_28005C0A8, qword_26618FAE0, v8, v9, v10, v11);
  v12 = sub_26618BE40();
  if (!OUTLINED_FUNCTION_6_13(v12, v13, v14, v12, v15))
  {
    v16 = sub_26618BDD0();
    if (OUTLINED_FUNCTION_4_16(v16, v17) || (v18 = sub_26618BF80(), OUTLINED_FUNCTION_4_16(v18, v19)) || (v20 = sub_26618BE00(), OUTLINED_FUNCTION_4_16(v20, v21)) || (v22 = sub_26618BDE0(), OUTLINED_FUNCTION_4_16(v22, v23)) || (v24 = sub_26618BF90(), OUTLINED_FUNCTION_4_16(v24, v25)) || (v26 = sub_26618BEA0(), OUTLINED_FUNCTION_4_16(v26, v27)))
    {
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_37_3();
      sub_26618BED0();
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1(v34);
LABEL_16:
    sub_2660BF79C(v37, &qword_28005C0A8, qword_26618FAE0);
    v29 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_37_3();
  sub_26618BAF0();
LABEL_11:

  if (v32)
  {
    sub_26613D780();
    v29 = v28;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  sub_2660BF79C(v37, &qword_28005C0A8, qword_26618FAE0);
  __swift_destroy_boxed_opaque_existential_1(v34);
LABEL_17:
  sub_2660BF79C(v35, &qword_28005C0A8, qword_26618FAE0);
  return v29;
}

void sub_26613D780()
{
  OUTLINED_FUNCTION_6_0();
  v215 = sub_26618BC90();
  OUTLINED_FUNCTION_2_2();
  v207 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v5);
  v195 = &v188 - v6;
  v221 = sub_26618BBC0();
  OUTLINED_FUNCTION_2_2();
  v216 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_5();
  v206 = v10;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v11);
  v220 = (&v188 - v12);
  v13 = sub_26618BBE0();
  OUTLINED_FUNCTION_2_2();
  v217 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  v198 = v17 - v16;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6F0, &qword_266192DA8);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  v20 = &v188 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6F8, &qword_266192DB0);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_32_3();
  MEMORY[0x28223BE20](v23);
  v25 = &v188 - v24;
  v26 = sub_26618BC20();
  OUTLINED_FUNCTION_2_2();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_5_9();
  MEMORY[0x28223BE20](v31);
  v219 = &v188 - v32;
  OUTLINED_FUNCTION_18_10();
  v190 = v0;
  v33 = sub_26618BD40();
  v34 = 0;
  v194 = MEMORY[0x277D84F90];
  if (!v33)
  {
    v33 = MEMORY[0x277D84F90];
  }

  v214 = *(v33 + 16);
  v218 = v28 + 16;
  v211 = *MEMORY[0x277D5E488];
  v210 = (v217 + 13);
  v197 = (v217 + 4);
  v201 = (v217 + 1);
  v217 = (v28 + 8);
  v192 = (v28 + 32);
  v204 = v25;
  v202 = v28;
  v212 = v33;
  v196 = v26;
  while (v214 != v34)
  {
    if (v34 >= *(v33 + 16))
    {
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
      return;
    }

    OUTLINED_FUNCTION_29_2();
    v209 = v35;
    v208 = *(v28 + 72);
    (*(v28 + 16))(v219, v36 + v35 + v208 * v34, v26);
    sub_26618BC00();
    (*v210)(v1, v211, v13);
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v13);
    v37 = *(v213 + 48);
    sub_266142534(v25, v20, &qword_28005C6F8, &qword_266192DB0);
    sub_266142534(v1, &v20[v37], &qword_28005C6F8, &qword_266192DB0);
    OUTLINED_FUNCTION_2_17(v20);
    if (v38)
    {
      OUTLINED_FUNCTION_50_3(v1);
      OUTLINED_FUNCTION_50_3(v25);
      OUTLINED_FUNCTION_2_17(&v20[v37]);
      if (!v38)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_50_3(v20);
      goto LABEL_17;
    }

    sub_266142534(v20, v203, &qword_28005C6F8, &qword_266192DB0);
    OUTLINED_FUNCTION_2_17(&v20[v37]);
    if (v38)
    {
      OUTLINED_FUNCTION_50_3(v1);
      v25 = v204;
      OUTLINED_FUNCTION_50_3(v204);
      v39 = OUTLINED_FUNCTION_42_6();
      v40(v39);
      v28 = v202;
LABEL_14:
      sub_2660BF79C(v20, &qword_28005C6F0, &qword_266192DA8);
      goto LABEL_16;
    }

    v41 = v198;
    (*v197)(v198, &v20[v37], v13);
    sub_266142A78(&qword_28005C700, MEMORY[0x277D5E490], MEMORY[0x277D5E498]);
    LODWORD(v200) = sub_26618C890();
    v42 = *v201;
    (*v201)(v41, v13);
    OUTLINED_FUNCTION_50_3(v1);
    v43 = v204;
    OUTLINED_FUNCTION_50_3(v204);
    v44 = OUTLINED_FUNCTION_42_6();
    v42(v44);
    v26 = v196;
    v25 = v43;
    OUTLINED_FUNCTION_50_3(v20);
    v28 = v202;
    if (v200)
    {
LABEL_17:
      v45 = *v192;
      (*v192)(v193, v219, v26);
      v46 = v194;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v222 = v46;
      v200 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_71_1();
        v48 = OUTLINED_FUNCTION_21_10();
        sub_26612A4C8(v48, v49, v50);
        v46 = v222;
      }

      v52 = *(v46 + 16);
      v51 = *(v46 + 24);
      v53 = v52 + 1;
      v25 = v204;
      if (v52 >= v51 >> 1)
      {
        v54 = OUTLINED_FUNCTION_12_11(v51);
        v56 = v55;
        v58 = v57;
        sub_26612A4C8(v54, v55, 1);
        v53 = v56;
        v52 = v58;
        v25 = v204;
        v46 = v222;
      }

      ++v34;
      *(v46 + 16) = v53;
      v194 = v46;
      v200(v46 + v209 + v52 * v208, v193, v26);
      v33 = v212;
    }

    else
    {
LABEL_16:
      (*v217)(v219, v26);
      ++v34;
      v33 = v212;
    }
  }

  v59 = v28;

  v60 = *(v194 + 16);
  if (v60)
  {
    OUTLINED_FUNCTION_29_2();
    v63 = v61 + v62;
    v64 = *(v59 + 72);
    v65 = *(v59 + 16);
    v66 = MEMORY[0x277D84F90];
    do
    {
      v67 = v205;
      v65(v205, v63, v26);
      v68 = sub_26618BBF0();
      (*v217)(v67, v26);
      v69 = *(v68 + 16);
      v70 = *(v66 + 16);
      v71 = v70 + v69;
      if (__OFADD__(v70, v69))
      {
        goto LABEL_128;
      }

      v72 = swift_isUniquelyReferenced_nonNull_native();
      if (!v72 || v71 > *(v66 + 24) >> 1)
      {
        if (v70 <= v71)
        {
          v73 = v70 + v69;
        }

        else
        {
          v73 = v70;
        }

        sub_2661296CC(v72, v73, 1, v66);
        v66 = v74;
      }

      if (*(v68 + 16))
      {
        if ((*(v66 + 24) >> 1) - *(v66 + 16) < v69)
        {
          goto LABEL_130;
        }

        swift_arrayInitWithCopy();

        if (v69)
        {
          v75 = *(v66 + 16);
          v76 = __OFADD__(v75, v69);
          v77 = v75 + v69;
          if (v76)
          {
            goto LABEL_133;
          }

          *(v66 + 16) = v77;
        }
      }

      else
      {

        if (v69)
        {
          goto LABEL_129;
        }
      }

      v63 += v64;
      v60 = (v60 - 1);
    }

    while (v60);
  }

  else
  {

    v66 = MEMORY[0x277D84F90];
  }

  v78 = 0;
  v79 = *(v66 + 16);
  v219 = (v216 + 16);
  v217 = (v216 + 32);
  v80 = (v216 + 8);
  v81 = 0xE700000000000000;
  v218 = MEMORY[0x277D84F90];
  while (v79 != v78)
  {
    if (v78 >= *(v66 + 16))
    {
      goto LABEL_127;
    }

    OUTLINED_FUNCTION_70_1();
    v83 = *(v82 + 72);
    (*(v82 + 16))(v220, v66 + v83 * v78, v221);
    if (sub_26618BBB0() == 0x656D614E707061 && v84 == 0xE700000000000000)
    {
    }

    else
    {
      v86 = sub_26618D000();

      if ((v86 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v87 = sub_26618BBA0();
    if (!v88 || (OUTLINED_FUNCTION_30_6(v87, v88), OUTLINED_FUNCTION_47_5(), v89 = sub_26618CC60(), , (v89 & 1) == 0))
    {
LABEL_52:
      (*v80)(v220, v221);
      ++v78;
      continue;
    }

    v90 = *v217;
    (*v217)(v191, v220, v221);
    v91 = v218;
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v91;
    v214 = v90;
    if ((v92 & 1) == 0)
    {
      OUTLINED_FUNCTION_71_1();
      v93 = OUTLINED_FUNCTION_21_10();
      sub_26612A470(v93, v94, v95);
      v91 = v223;
    }

    v97 = *(v91 + 16);
    v96 = *(v91 + 24);
    v98 = v97 + 1;
    if (v97 >= v96 >> 1)
    {
      v99 = OUTLINED_FUNCTION_38_2(v96);
      v218 = v100;
      sub_26612A470(v99, v100, 1);
      v98 = v218;
      v91 = v223;
    }

    ++v78;
    *(v91 + 16) = v98;
    v218 = v91;
    v214(v91 + v97 * v83, v191, v221);
  }

  v101 = *(v218 + 16);
  if (v101)
  {
    OUTLINED_FUNCTION_29_2();
    v104 = v102 + v103;
    v60 = *(v105 + 72);
    v81 = *(v105 + 16);
    v106 = MEMORY[0x277D84F90];
    do
    {
      v107 = v206;
      v108 = OUTLINED_FUNCTION_54_3();
      v109 = v221;
      (v81)(v108);
      v110 = sub_26618BBA0();
      v112 = v111;
      (*v80)(v107, v109);
      if (v112)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_17_9();
          sub_266129600();
          v106 = v116;
        }

        v114 = *(v106 + 16);
        v113 = *(v106 + 24);
        if (v114 >= v113 >> 1)
        {
          OUTLINED_FUNCTION_38_2(v113);
          sub_266129600();
          v106 = v117;
        }

        *(v106 + 16) = v114 + 1;
        v115 = v106 + 16 * v114;
        *(v115 + 32) = v110;
        *(v115 + 40) = v112;
      }

      v104 += v60;
      --v101;
    }

    while (v101);
  }

  else
  {

    v106 = MEMORY[0x277D84F90];
  }

  v118 = *(v106 + 16);
  if (v118)
  {
    v222 = MEMORY[0x277D84F90];
    sub_26612A450(0, v118, 0);
    v119 = v222;
    v60 = (v106 + 40);
    do
    {
      v120 = *(v60 - 1);
      v121 = *v60;
      v122 = qword_28005BC78;

      if (v122 != -1)
      {
        OUTLINED_FUNCTION_7_14();
        swift_once();
      }

      v123 = off_28005C6B8;
      if (*(off_28005C6B8 + 2))
      {
        v124 = sub_266129F20(v120, v121);
        if (v125)
        {
          v126 = (v123[7] + 16 * v124);
          v120 = *v126;
          v127 = v126[1];

          v121 = v127;
        }
      }

      OUTLINED_FUNCTION_66_2();
      if (v129)
      {
        v131 = OUTLINED_FUNCTION_12_11(v128);
        sub_26612A450(v131, v80, 1);
        v119 = v222;
      }

      *(v119 + 16) = v80;
      v130 = v119 + 16 * v81;
      *(v130 + 32) = v120;
      *(v130 + 40) = v121;
      v60 += 2;
      --v118;
    }

    while (v118);
  }

  else
  {

    v119 = MEMORY[0x277D84F90];
  }

  if (*(v119 + 16))
  {
    goto LABEL_125;
  }

  OUTLINED_FUNCTION_18_10();
  v132 = sub_26618BD50();
  v133 = 0;
  v134 = MEMORY[0x277D84F90];
  if (v132)
  {
    v135 = v132;
  }

  else
  {
    v135 = MEMORY[0x277D84F90];
  }

  v136 = *(v135 + 16);
  v220 = (v207 + 32);
  v221 = v207 + 16;
  v137 = (v207 + 8);
  v138 = v195;
LABEL_86:
  v139 = v134;
  while (2)
  {
    if (v136 != v133)
    {
      if (v133 >= *(v135 + 16))
      {
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_70_1();
      v141 = *(v140 + 72);
      (*(v140 + 16))(v138, v60 + v135 + v141 * v133, v215);
      v142 = v138;
      sub_26618BC80();
      if (!v143)
      {
        goto LABEL_98;
      }

      OUTLINED_FUNCTION_44_2();
      if (v38)
      {
        v146 = v145 == 0xE700000000000000;
      }

      else
      {
        v146 = 0;
      }

      if (v146)
      {

        v142 = v195;
      }

      else
      {
        v147 = OUTLINED_FUNCTION_40_5(v144);

        v142 = v195;
        if ((v147 & 1) == 0)
        {
LABEL_98:
          (*v137)(v142, v215);
          ++v133;
          v138 = v142;
          v134 = v139;
          continue;
        }
      }

      v148 = sub_26618BC70();
      OUTLINED_FUNCTION_30_6(v148, v149);
      OUTLINED_FUNCTION_47_5();
      v150 = sub_26618CC60();

      if (v150)
      {
        v219 = *v220;
        (v219)(v189, v142, v215);
        v151 = swift_isUniquelyReferenced_nonNull_native();
        v223 = v139;
        if (v151)
        {
          v138 = v142;
          v134 = v139;
        }

        else
        {
          v152 = OUTLINED_FUNCTION_21_10();
          sub_26612A3F8(v152, v153, v154);
          v138 = v195;
          v134 = v223;
        }

        v156 = *(v134 + 16);
        v155 = *(v134 + 24);
        if (v156 >= v155 >> 1)
        {
          v157 = OUTLINED_FUNCTION_38_2(v155);
          sub_26612A3F8(v157, v156 + 1, 1);
          v138 = v195;
          v134 = v223;
        }

        ++v133;
        *(v134 + 16) = v156 + 1;
        (v219)(v60 + v134 + v156 * v141, v189, v215);
        goto LABEL_86;
      }

      goto LABEL_98;
    }

    break;
  }

  v158 = 0;
  v159 = *(v134 + 16);
  v160 = MEMORY[0x277D84F90];
  while (v159 != v158)
  {
    if (v158 >= *(v134 + 16))
    {
      goto LABEL_132;
    }

    v161 = v207;
    OUTLINED_FUNCTION_29_2();
    v163 = v199;
    v164 = v215;
    (*(v161 + 16))(v199, v134 + v162 + *(v161 + 72) * v158, v215);
    v165 = sub_26618BC70();
    v167 = v166;
    (*(v161 + 8))(v163, v164);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_17_9();
      sub_266129600();
      v160 = v171;
    }

    v169 = *(v160 + 16);
    v168 = *(v160 + 24);
    if (v169 >= v168 >> 1)
    {
      OUTLINED_FUNCTION_38_2(v168);
      sub_266129600();
      v160 = v172;
    }

    *(v160 + 16) = v169 + 1;
    v170 = v160 + 16 * v169;
    *(v170 + 32) = v165;
    *(v170 + 40) = v167;
    ++v158;
    v134 = v139;
  }

  v173 = *(v160 + 16);
  if (v173)
  {
    v222 = MEMORY[0x277D84F90];
    sub_26612A450(0, v173, 0);
    v119 = v222;
    v174 = (v160 + 40);
    do
    {
      v175 = *(v174 - 1);
      v176 = *v174;
      v177 = qword_28005BC78;

      if (v177 != -1)
      {
        OUTLINED_FUNCTION_7_14();
        swift_once();
      }

      v178 = off_28005C6B8;
      if (*(off_28005C6B8 + 2))
      {
        v179 = sub_266129F20(v175, v176);
        if (v180)
        {
          v181 = (v178[7] + 16 * v179);
          v175 = *v181;
          v182 = v181[1];

          v176 = v182;
        }
      }

      v222 = v119;
      v184 = *(v119 + 16);
      v183 = *(v119 + 24);
      if (v184 >= v183 >> 1)
      {
        v186 = OUTLINED_FUNCTION_12_11(v183);
        sub_26612A450(v186, v184 + 1, 1);
        v119 = v222;
      }

      *(v119 + 16) = v184 + 1;
      v185 = v119 + 16 * v184;
      *(v185 + 32) = v175;
      *(v185 + 40) = v176;
      v174 += 2;
      --v173;
    }

    while (v173);
  }

  else
  {

    v119 = MEMORY[0x277D84F90];
  }

LABEL_125:
  v187 = sub_26613C2C0(v119);
  sub_266139E0C(v187);
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_26613E87C()
{
  v1 = sub_26618BDF0();
  v7 = OUTLINED_FUNCTION_65_3(v1, v2, &qword_28005C0A8, qword_26618FAE0, v3, v4, v5, v6, v61, v63, v64[0], v64[1], v64[2], v64[3]);
  if (v66)
  {
    OUTLINED_FUNCTION_61_1(v7, v8, &qword_28005C0A8, qword_26618FAE0, v9, v10, v11, v12);
    v13 = sub_26618BE00();
    if (OUTLINED_FUNCTION_46_3(&v63, v64, v14, v13) || (v15 = sub_26618BDE0(), v23 = OUTLINED_FUNCTION_5_12(v15, v16, v17, v18, v19, v20, v21, v22, v62, v63), OUTLINED_FUNCTION_46_3(v23, v24, v25, v26)) || (v27 = sub_26618BE80(), v35 = OUTLINED_FUNCTION_5_12(v27, v28, v29, v30, v31, v32, v33, v34, v62, v63), OUTLINED_FUNCTION_46_3(v35, v36, v37, v38)))
    {
      OUTLINED_FUNCTION_48_3();
      OUTLINED_FUNCTION_37_3();
      sub_26618BED0();
      goto LABEL_6;
    }

    v43 = sub_26618BFA0();
    v51 = OUTLINED_FUNCTION_5_12(v43, v44, v45, v46, v47, v48, v49, v50, v62, v63);
    if (OUTLINED_FUNCTION_46_3(v51, v52, v53, v54))
    {
      OUTLINED_FUNCTION_48_3();
      v55 = sub_26618C060();

      if (!v55)
      {
LABEL_16:
        sub_2660BF79C(v67, &qword_28005C0A8, qword_26618FAE0);

LABEL_17:
        sub_26618BF30();
        OUTLINED_FUNCTION_26_6();
        __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
        goto LABEL_18;
      }

      if (!sub_2661046B8())
      {

        sub_2660BF79C(v67, &qword_28005C0A8, qword_26618FAE0);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_67_0();
      sub_2661046C8();
      if ((v55 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26677C150](0, v55);
      }

      else
      {
      }

      sub_26618BCF0();
LABEL_6:

      if (v62)
      {
        sub_26618BD10();
        OUTLINED_FUNCTION_63_3();
        sub_26618BF20();

        sub_2660BF79C(v67, &qword_28005C0A8, qword_26618FAE0);
LABEL_18:
        __swift_destroy_boxed_opaque_existential_1(v64);
        return sub_2660BF79C(v65, &qword_28005C0A8, qword_26618FAE0);
      }

      goto LABEL_16;
    }

    sub_2660BF79C(v67, &qword_28005C0A8, qword_26618FAE0);
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    sub_2660BF79C(v67, &qword_28005C0A8, qword_26618FAE0);
  }

  sub_26618BF30();
  OUTLINED_FUNCTION_26_6();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  return sub_2660BF79C(v65, &qword_28005C0A8, qword_26618FAE0);
}

uint64_t sub_26613EAFC()
{
  v0 = OUTLINED_FUNCTION_80_0();
  v6 = OUTLINED_FUNCTION_65_3(v0, v1, &qword_28005C0A8, qword_26618FAE0, v2, v3, v4, v5, v24, v26, v27[0], v27[1], v27[2], v27[3]);
  if (v29)
  {
    OUTLINED_FUNCTION_61_1(v6, v7, &qword_28005C0A8, qword_26618FAE0, v8, v9, v10, v11);
    v12 = sub_26618BF80();
    if (OUTLINED_FUNCTION_6_13(v12, v13, v14, v12, v15))
    {

      OUTLINED_FUNCTION_68_1();
      sub_26618BED0();

      if (v25)
      {
        v16 = sub_26618BD80();

        if (v16)
        {

          OUTLINED_FUNCTION_68_1();
          sub_26618BED0();
LABEL_11:
          sub_26618BD70();
          v21 = v20;

          sub_2660BF79C(v30, &qword_28005C0A8, qword_26618FAE0);
          if (!v21)
          {
            v22 = 1;
            goto LABEL_18;
          }

LABEL_14:
          v22 = 0;
LABEL_18:
          __swift_destroy_boxed_opaque_existential_1(v27);
          goto LABEL_19;
        }
      }

      goto LABEL_13;
    }

    v17 = sub_26618BE40();
    if (OUTLINED_FUNCTION_4_16(v17, v18))
    {

      OUTLINED_FUNCTION_68_1();
      sub_26618BAF0();

      if (v25)
      {
        v19 = sub_26618BD80();

        if (v19)
        {

          OUTLINED_FUNCTION_68_1();
          sub_26618BAF0();
          goto LABEL_11;
        }
      }

LABEL_13:

      sub_2660BF79C(v30, &qword_28005C0A8, qword_26618FAE0);
      goto LABEL_14;
    }

    sub_2660BF79C(v30, &qword_28005C0A8, qword_26618FAE0);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_2660BF79C(v30, &qword_28005C0A8, qword_26618FAE0);
  }

  v22 = 0;
LABEL_19:
  sub_2660BF79C(v28, &qword_28005C0A8, qword_26618FAE0);
  return v22;
}

void sub_26613ED1C()
{
  v232 = sub_26618BBC0();
  v235 = *(v232 - 8);
  v0 = MEMORY[0x28223BE20](v232);
  v217 = &v215 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x28223BE20](v0);
  v231 = &v215 - v3;
  MEMORY[0x28223BE20](v2);
  v246 = &v215 - v4;
  v238 = sub_26618C110();
  v220 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v237 = &v215 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6E8, &qword_266192DA0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v242 = &v215 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v258 = &v215 - v9;
  v10 = sub_26618BBE0();
  v259 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v240 = &v215 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6F0, &qword_266192DA8);
  v12 = MEMORY[0x28223BE20](v251);
  v224 = &v215 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v215 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6F8, &qword_266192DB0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v226 = &v215 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v229 = &v215 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v228 = &v215 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v234 = &v215 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v215 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v215 - v28;
  v30 = sub_26618BC20();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v216 = &v215 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v222 = &v215 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v227 = &v215 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v218 = &v215 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v230 = &v215 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v245 = &v215 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v219 = &v215 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v241 = &v215 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v236 = &v215 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v223 = &v215 - v51;
  MEMORY[0x28223BE20](v50);
  v53 = &v215 - v52;
  v54 = sub_26618BD40();
  v253 = MEMORY[0x277D84F90];
  if (v54)
  {
    v55 = v54;
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
  }

  v252 = *(v55 + 16);
  v260 = v31 + 16;
  v250 = *MEMORY[0x277D5E488];
  v249 = (v259 + 13);
  v239 = (v259 + 4);
  v243 = (v259 + 1);
  v225 = (v31 + 32);
  v256 = v30;
  v257 = v31;
  v56 = (v31 + 8);
  v57 = 0;
  v259 = v56;
  v244 = v55;
  v254 = v10;
  v233 = v53;
  while (v252 != v57)
  {
    if (v57 >= *(v55 + 16))
    {
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
      return;
    }

    v248 = (*(v257 + 80) + 32) & ~*(v257 + 80);
    v58 = *(v257 + 72);
    v255 = v57;
    v247 = v58;
    (*(v257 + 16))(v53, v55 + v248 + v58 * v57, v30);
    sub_26618BC00();
    (*v249)(v27, v250, v10);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v10);
    v59 = *(v251 + 48);
    sub_266142534(v29, v15, &qword_28005C6F8, &qword_266192DB0);
    sub_266142534(v27, &v15[v59], &qword_28005C6F8, &qword_266192DB0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v10) == 1)
    {
      sub_2660BF79C(v27, &qword_28005C6F8, &qword_266192DB0);
      sub_2660BF79C(v29, &qword_28005C6F8, &qword_266192DB0);
      if (__swift_getEnumTagSinglePayload(&v15[v59], 1, v10) == 1)
      {
        sub_2660BF79C(v15, &qword_28005C6F8, &qword_266192DB0);
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v60 = v234;
    sub_266142534(v15, v234, &qword_28005C6F8, &qword_266192DB0);
    if (__swift_getEnumTagSinglePayload(&v15[v59], 1, v10) == 1)
    {
      sub_2660BF79C(v27, &qword_28005C6F8, &qword_266192DB0);
      sub_2660BF79C(v29, &qword_28005C6F8, &qword_266192DB0);
      (*v243)(v60, v10);
      v53 = v233;
LABEL_14:
      sub_2660BF79C(v15, &qword_28005C6F0, &qword_266192DA8);
LABEL_15:
      v221 = *v225;
      v221(v223, v53, v30);
      v65 = v253;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v263 = v65;
      v67 = v255;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26612A4C8(0, *(v65 + 16) + 1, 1);
        v65 = v263;
      }

      v68 = v248;
      v70 = *(v65 + 16);
      v69 = *(v65 + 24);
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        v253 = v70 + 1;
        v248 = v70;
        sub_26612A4C8(v69 > 1, v70 + 1, 1);
        v71 = v253;
        v70 = v248;
        v65 = v263;
      }

      v57 = v67 + 1;
      *(v65 + 16) = v71;
      v253 = v65;
      v221((v65 + v68 + v70 * v247), v223, v30);
    }

    else
    {
      v61 = v240;
      (*v239)(v240, &v15[v59], v10);
      sub_266142A78(&qword_28005C700, MEMORY[0x277D5E490], MEMORY[0x277D5E498]);
      v62 = sub_26618C890();
      v63 = *v243;
      v64 = v61;
      v55 = v244;
      (*v243)(v64, v254);
      sub_2660BF79C(v27, &qword_28005C6F8, &qword_266192DB0);
      sub_2660BF79C(v29, &qword_28005C6F8, &qword_266192DB0);
      v63(v60, v254);
      v10 = v254;
      v30 = v256;
      sub_2660BF79C(v15, &qword_28005C6F8, &qword_266192DB0);
      v53 = v233;
      if ((v62 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_12:
      (*v259)(v53, v30);
      v57 = v255 + 1;
    }
  }

  v72 = 0;
  v73 = v253;
  v74 = *(v253 + 16);
  v255 = (v220 + 8);
  v248 = MEMORY[0x277D84F90];
  v75 = v236;
  while (v74 != v72)
  {
    if (v72 >= *(v73 + 16))
    {
      goto LABEL_152;
    }

    v76 = v30;
    v77 = (*(v257 + 80) + 32) & ~*(v257 + 80);
    v78 = *(v257 + 72);
    (*(v257 + 16))(v75, v73 + v77 + v78 * v72, v76);
    sub_26618BC10();
    v79 = v258;
    v80 = sub_26618C120();
    if (__swift_getEnumTagSinglePayload(v79, 1, v80) == 1)
    {
      (*v259)(v75, v76);
      sub_2660BF79C(v79, &qword_28005C6E8, &qword_266192DA0);
      v30 = v76;
      v73 = v253;
      goto LABEL_27;
    }

    v81 = v237;
    sub_26618C100();
    v82 = sub_26618C0F0();
    (*v255)(v81, v238);
    (*(*(v80 - 8) + 8))(v79, v80);
    if (v82)
    {
      v83 = *v225;
      v75 = v236;
      (*v225)(v219, v236, v256);
      v84 = v248;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      v263 = v84;
      v247 = v83;
      if ((v85 & 1) == 0)
      {
        sub_26612A4C8(0, *(v84 + 16) + 1, 1);
        v84 = v263;
      }

      v87 = *(v84 + 16);
      v86 = *(v84 + 24);
      v88 = v87 + 1;
      if (v87 >= v86 >> 1)
      {
        sub_26612A4C8(v86 > 1, v87 + 1, 1);
        v88 = v87 + 1;
        v84 = v263;
      }

      ++v72;
      *(v84 + 16) = v88;
      v248 = v84;
      v89 = v84 + v77 + v87 * v78;
      v30 = v256;
      v247(v89, v219, v256);
      v73 = v253;
    }

    else
    {
      v75 = v236;
      v30 = v256;
      (*v259)(v236, v256);
      v73 = v253;
LABEL_27:
      ++v72;
    }
  }

  v90 = *(v248 + 16);
  if (v90)
  {
    v91 = v248 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
    v258 = *(v257 + 72);
    v92 = *(v257 + 16);
    v93 = MEMORY[0x277D84F90];
    do
    {
      v94 = v241;
      v95 = v256;
      v92(v241, v91, v256);
      v96 = sub_26618BBD0();
      v98 = v97;
      (*v259)(v94, v95);
      if (v98)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266129600();
          v93 = v101;
        }

        v99 = *(v93 + 16);
        if (v99 >= *(v93 + 24) >> 1)
        {
          sub_266129600();
          v93 = v102;
        }

        *(v93 + 16) = v99 + 1;
        v100 = v93 + 16 * v99;
        *(v100 + 32) = v96;
        *(v100 + 40) = v98;
      }

      v91 += v258;
      --v90;
    }

    while (v90);

    v30 = v256;
  }

  else
  {

    v93 = MEMORY[0x277D84F90];
  }

  v103 = v224;
  v104 = v244;
  if (*(v93 + 16))
  {

LABEL_124:
    v183 = v93;
    goto LABEL_125;
  }

  v105 = 0;
  v241 = MEMORY[0x277D84F90];
  v106 = v229;
  v107 = v228;
  while (v252 != v105)
  {
    if (v105 >= *(v104 + 16))
    {
      goto LABEL_153;
    }

    v258 = (*(v257 + 80) + 32) & ~*(v257 + 80);
    v248 = *(v257 + 72);
    (*(v257 + 16))(v245, v104 + v258 + v248 * v105, v30);
    sub_26618BC00();
    (*v249)(v106, v250, v10);
    __swift_storeEnumTagSinglePayload(v106, 0, 1, v10);
    v108 = *(v251 + 48);
    sub_266142534(v107, v103, &qword_28005C6F8, &qword_266192DB0);
    sub_266142534(v106, v103 + v108, &qword_28005C6F8, &qword_266192DB0);
    if (__swift_getEnumTagSinglePayload(v103, 1, v10) == 1)
    {
      sub_2660BF79C(v106, &qword_28005C6F8, &qword_266192DB0);
      sub_2660BF79C(v107, &qword_28005C6F8, &qword_266192DB0);
      if (__swift_getEnumTagSinglePayload(v103 + v108, 1, v10) != 1)
      {
        goto LABEL_54;
      }

      sub_2660BF79C(v103, &qword_28005C6F8, &qword_266192DB0);
    }

    else
    {
      v109 = v226;
      sub_266142534(v103, v226, &qword_28005C6F8, &qword_266192DB0);
      if (__swift_getEnumTagSinglePayload(v103 + v108, 1, v10) == 1)
      {
        v106 = v229;
        sub_2660BF79C(v229, &qword_28005C6F8, &qword_266192DB0);
        v107 = v228;
        sub_2660BF79C(v228, &qword_28005C6F8, &qword_266192DB0);
        (*v243)(v109, v10);
        v104 = v244;
LABEL_54:
        sub_2660BF79C(v103, &qword_28005C6F0, &qword_266192DA8);
LABEL_56:
        (*v259)(v245, v30);
        ++v105;
        continue;
      }

      v110 = (v103 + v108);
      v111 = v240;
      (*v239)(v240, v110, v10);
      sub_266142A78(&qword_28005C700, MEMORY[0x277D5E490], MEMORY[0x277D5E498]);
      LODWORD(v247) = sub_26618C890();
      v112 = *v243;
      v113 = v111;
      v103 = v224;
      (*v243)(v113, v254);
      v106 = v229;
      sub_2660BF79C(v229, &qword_28005C6F8, &qword_266192DB0);
      v107 = v228;
      sub_2660BF79C(v228, &qword_28005C6F8, &qword_266192DB0);
      v112(v109, v254);
      v10 = v254;
      v30 = v256;
      sub_2660BF79C(v103, &qword_28005C6F8, &qword_266192DB0);
      v104 = v244;
      if ((v247 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v247 = *v225;
    v247(v218, v245, v30);
    v114 = v241;
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v263 = v114;
    if ((v115 & 1) == 0)
    {
      sub_26612A4C8(0, *(v114 + 2) + 1, 1);
      v114 = v263;
    }

    v116 = v258;
    v118 = *(v114 + 2);
    v117 = *(v114 + 3);
    v119 = v118 + 1;
    if (v118 >= v117 >> 1)
    {
      v258 = v118 + 1;
      sub_26612A4C8(v117 > 1, v118 + 1, 1);
      v119 = v258;
      v114 = v263;
    }

    ++v105;
    *(v114 + 2) = v119;
    v241 = v114;
    v120 = &v114[v116 + v118 * v248];
    v30 = v256;
    v247(v120, v218, v256);
  }

  v121 = *(v241 + 2);
  if (v121)
  {
    v122 = &v241[(*(v257 + 80) + 32) & ~*(v257 + 80)];
    v123 = *(v257 + 72);
    v124 = *(v257 + 16);
    v125 = MEMORY[0x277D84F90];
    do
    {
      v126 = v230;
      v124(v230, v122, v30);
      v127 = sub_26618BBF0();
      (*v259)(v126, v30);
      v128 = *(v127 + 16);
      v129 = *(v125 + 16);
      v130 = v129 + v128;
      if (__OFADD__(v129, v128))
      {
        goto LABEL_155;
      }

      v131 = swift_isUniquelyReferenced_nonNull_native();
      if (!v131 || v130 > *(v125 + 24) >> 1)
      {
        if (v129 <= v130)
        {
          v132 = v129 + v128;
        }

        else
        {
          v132 = v129;
        }

        sub_2661296CC(v131, v132, 1, v125);
        v125 = v133;
      }

      v30 = v256;
      v134 = v232;
      if (*(v127 + 16))
      {
        if ((*(v125 + 24) >> 1) - *(v125 + 16) < v128)
        {
          goto LABEL_157;
        }

        swift_arrayInitWithCopy();

        v135 = v242;
        if (v128)
        {
          v136 = *(v125 + 16);
          v137 = __OFADD__(v136, v128);
          v138 = v136 + v128;
          if (v137)
          {
            goto LABEL_159;
          }

          *(v125 + 16) = v138;
        }
      }

      else
      {

        v135 = v242;
        if (v128)
        {
          goto LABEL_156;
        }
      }

      v122 += v123;
      --v121;
    }

    while (v121);
  }

  else
  {

    v125 = MEMORY[0x277D84F90];
    v135 = v242;
    v134 = v232;
  }

  v139 = 0;
  v140 = *(v125 + 16);
  v258 = v235 + 16;
  v252 = (v235 + 32);
  v141 = (v235 + 8);
  v254 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v140 != v139)
    {
      if (v139 >= *(v125 + 16))
      {
        goto LABEL_154;
      }

      v142 = (*(v235 + 80) + 32) & ~*(v235 + 80);
      v143 = *(v235 + 72);
      (*(v235 + 16))(v246, v125 + v142 + v143 * v139, v134);
      if (sub_26618BBB0() == 0x656D614E707061 && v144 == 0xE700000000000000)
      {
      }

      else
      {
        v146 = sub_26618D000();

        if ((v146 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      v147 = sub_26618BBA0();
      if (v148 && (v263 = v147, v264 = v148, v261 = 46, v262 = 0xE100000000000000, sub_2660CCD6C(), v149 = sub_26618CC60(), , (v149 & 1) != 0))
      {
        v150 = *v252;
        (*v252)(v217, v246, v134);
        v151 = v254;
        v152 = swift_isUniquelyReferenced_nonNull_native();
        v265 = v151;
        v251 = v150;
        if ((v152 & 1) == 0)
        {
          sub_26612A470(0, *(v151 + 16) + 1, 1);
          v151 = v265;
        }

        v154 = *(v151 + 16);
        v153 = *(v151 + 24);
        v155 = v154 + 1;
        if (v154 >= v153 >> 1)
        {
          v254 = v154 + 1;
          sub_26612A470(v153 > 1, v154 + 1, 1);
          v155 = v254;
          v151 = v265;
        }

        ++v139;
        *(v151 + 16) = v155;
        v254 = v151;
        (v251)(v151 + v142 + v154 * v143, v217, v134);
      }

      else
      {
LABEL_92:
        (*v141)(v246, v134);
        ++v139;
      }

      v135 = v242;
      v30 = v256;
      continue;
    }

    break;
  }

  v156 = *(v254 + 16);
  if (v156)
  {
    v157 = v254 + ((*(v235 + 80) + 32) & ~*(v235 + 80));
    v158 = *(v235 + 72);
    v159 = *(v235 + 16);
    v160 = MEMORY[0x277D84F90];
    do
    {
      v161 = v231;
      v159(v231, v157, v134);
      v162 = sub_26618BBA0();
      v164 = v163;
      (*v141)(v161, v134);
      if (v164)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266129600();
          v160 = v167;
        }

        v165 = v160[2];
        if (v165 >= v160[3] >> 1)
        {
          sub_266129600();
          v160 = v168;
        }

        v160[2] = v165 + 1;
        v166 = &v160[2 * v165];
        v166[4] = v162;
        v166[5] = v164;
        v134 = v232;
      }

      v157 += v158;
      --v156;
    }

    while (v156);

    v135 = v242;
    v30 = v256;
  }

  else
  {

    v160 = MEMORY[0x277D84F90];
  }

  v169 = v160[2];
  if (v169)
  {
    v263 = MEMORY[0x277D84F90];
    sub_26612A450(0, v169, 0);
    v93 = v263;
    v170 = v160 + 5;
    do
    {
      v171 = *(v170 - 1);
      v172 = *v170;
      v173 = qword_28005BC78;

      if (v173 != -1)
      {
        swift_once();
      }

      v174 = off_28005C6B8;
      if (*(off_28005C6B8 + 2))
      {
        v175 = sub_266129F20(v171, v172);
        if (v176)
        {
          v177 = (v174[7] + 16 * v175);
          v171 = *v177;
          v178 = v177[1];

          v172 = v178;
        }
      }

      v263 = v93;
      v180 = *(v93 + 16);
      v179 = *(v93 + 24);
      if (v180 >= v179 >> 1)
      {
        sub_26612A450(v179 > 1, v180 + 1, 1);
        v93 = v263;
      }

      *(v93 + 16) = v180 + 1;
      v181 = v93 + 16 * v180;
      *(v181 + 32) = v171;
      *(v181 + 40) = v172;
      v170 += 2;
      --v169;
    }

    while (v169);

    v135 = v242;
    v30 = v256;
  }

  else
  {

    v93 = MEMORY[0x277D84F90];
  }

  v182 = v253;
  if (*(v93 + 16))
  {

    goto LABEL_124;
  }

  v185 = 0;
  v186 = *(v182 + 16);
  v258 = MEMORY[0x277D84F90];
  while (v186 != v185)
  {
    if (v185 >= *(v253 + 16))
    {
      goto LABEL_158;
    }

    v187 = (*(v257 + 80) + 32) & ~*(v257 + 80);
    v188 = v30;
    v189 = *(v257 + 72);
    v190 = v227;
    (*(v257 + 16))(v227, v253 + v187 + v189 * v185, v188);
    sub_26618BC10();
    v191 = v135;
    v192 = sub_26618C120();
    if (__swift_getEnumTagSinglePayload(v191, 1, v192) == 1)
    {
      (*v259)(v190, v188);
      sub_2660BF79C(v191, &qword_28005C6E8, &qword_266192DA0);
      v135 = v191;
      v30 = v188;
LABEL_133:
      ++v185;
      continue;
    }

    v193 = v237;
    sub_26618C100();
    v194 = sub_26618C0F0();
    (*v255)(v193, v238);
    (*(*(v192 - 8) + 8))(v191, v192);
    if (v194)
    {
      v30 = v256;
      (*v259)(v227, v256);
      v135 = v242;
      goto LABEL_133;
    }

    v195 = *v225;
    (*v225)(v216, v227, v256);
    v196 = v258;
    v197 = swift_isUniquelyReferenced_nonNull_native();
    v263 = v196;
    if ((v197 & 1) == 0)
    {
      sub_26612A4C8(0, *(v196 + 16) + 1, 1);
      v196 = v263;
    }

    v199 = *(v196 + 16);
    v198 = *(v196 + 24);
    if (v199 >= v198 >> 1)
    {
      sub_26612A4C8(v198 > 1, v199 + 1, 1);
      v196 = v263;
    }

    ++v185;
    *(v196 + 16) = v199 + 1;
    v258 = v196;
    v200 = v196 + v187 + v199 * v189;
    v30 = v256;
    v195(v200, v216, v256);
    v135 = v242;
  }

  v201 = *(v258 + 16);
  if (v201)
  {
    v202 = v258 + ((*(v257 + 80) + 32) & ~*(v257 + 80));
    v203 = *(v257 + 72);
    v204 = *(v257 + 16);
    v205 = MEMORY[0x277D84F90];
    do
    {
      v206 = v222;
      v207 = v256;
      v204(v222, v202, v256);
      v208 = sub_26618BBD0();
      v210 = v209;
      (*v259)(v206, v207);
      if (v210)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266129600();
          v205 = v213;
        }

        v211 = *(v205 + 16);
        if (v211 >= *(v205 + 24) >> 1)
        {
          sub_266129600();
          v205 = v214;
        }

        *(v205 + 16) = v211 + 1;
        v212 = v205 + 16 * v211;
        *(v212 + 32) = v208;
        *(v212 + 40) = v210;
      }

      v202 += v203;
      --v201;
    }

    while (v201);
  }

  else
  {

    v205 = MEMORY[0x277D84F90];
  }

  v183 = v205;
LABEL_125:
  v184 = sub_26613C2C0(v183);
  sub_266139E0C(v184);
}

void *sub_2661409CC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C518, &qword_266192350);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_266140AE8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_266140BB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C630, &qword_266192358);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

void *sub_266140C64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_266140D60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_266192D90;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_266140DC4(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_26618D090();
  sub_26618C910();
  v8 = sub_26618D0C0();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_26618D000() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_2661417D4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_266140F10(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26618CCE0();

    if (v9)
    {

      sub_26618C4F0();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_26618CCD0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_266141114(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_26614152C(v17 + 1);
        }

        v18 = v8;
        sub_266141750(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_26618C4F0();
    v11 = sub_26618CB90();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_26614193C(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_26618CBA0();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

uint64_t sub_266141114(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C750, &qword_266192DF0);
    v2 = sub_26618CD50();
    v15 = v2;
    sub_26618CCC0();
    while (1)
    {
      if (!sub_26618CCF0())
      {

        return v2;
      }

      sub_26618C4F0();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_26614152C(v3 + 1);
      }

      v2 = v15;
      result = sub_26618CB90();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2661412D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C538, &unk_2661921B0);
  result = sub_26618CD40();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_266140D60(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_26618D090();
    sub_26618C910();
    result = sub_26618D0C0();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26614152C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C750, &qword_266192DF0);
  result = sub_26618CD40();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_266140D60(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_26618CB90();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_266141750(uint64_t a1, uint64_t a2)
{
  sub_26618CB90();
  result = sub_26618CCB0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_2661417D4(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2661412D0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_266141D2C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_26618D090();
      sub_26618C910();
      result = sub_26618D0C0();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_26618D000() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_266141A84();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_26618D020();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_26614193C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26614152C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_266141F60(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_26618CB90();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_26618C4F0();
        v14 = *(*(v12 + 48) + 8 * a2);
        v15 = sub_26618CBA0();

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_266141BDC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_26618D020();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_266141A84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C538, &unk_2661921B0);
  v2 = *v0;
  v3 = sub_26618CD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_266141BDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C750, &qword_266192DF0);
  v2 = *v0;
  v3 = sub_26618CD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_266141D2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C538, &unk_2661921B0);
  result = sub_26618CD40();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_26618D090();

        sub_26618C910();
        result = sub_26618D0C0();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_266141F60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C750, &qword_266192DF0);
  result = sub_26618CD40();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_26618CB90();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v24;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_266142170()
{
  OUTLINED_FUNCTION_57_2();
  if (v1)
  {
    v4 = sub_26618CCD0();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(v3 + 16);
    if (!v4)
    {
LABEL_13:
      OUTLINED_FUNCTION_19_7();
      return;
    }
  }

  if (v0)
  {
    v5 = sub_2661046B8();
    if (v5 > v2)
    {
      __break(1u);
    }

    else
    {
      if (!v1)
      {
        sub_26618C4F0();
        OUTLINED_FUNCTION_78();
        goto LABEL_13;
      }

      if (v4 >= 1)
      {
        v22 = v5;
        sub_266142B04(&qword_28005C690, &qword_28005C688, &qword_266192AB8);
        do
        {
          v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C688, &qword_266192AB8);
          v14 = OUTLINED_FUNCTION_55_3(v6, v7, v8, v9, v10, v11, v12, v13, v21, v22, v23[0]);
          v17 = sub_2660DD51C(v14, v15, v16);
          v19 = *v18;
          (v17)(v23, 0);
          OUTLINED_FUNCTION_69_1();
        }

        while (!v20);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2661422A4()
{
  OUTLINED_FUNCTION_57_2();
  if (v1)
  {
    v4 = sub_26618CCD0();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *(v3 + 16);
    if (!v4)
    {
LABEL_13:
      OUTLINED_FUNCTION_19_7();
      return;
    }
  }

  if (v0)
  {
    v5 = sub_2661046B8();
    if (v5 > v2)
    {
      __break(1u);
    }

    else
    {
      if (!v1)
      {
        sub_266142AC0();
        OUTLINED_FUNCTION_78();
        goto LABEL_13;
      }

      if (v4 >= 1)
      {
        v22 = v5;
        sub_266142B04(&qword_28005C770, &qword_28005C768, &unk_266192E00);
        do
        {
          v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C768, &unk_266192E00);
          v14 = OUTLINED_FUNCTION_55_3(v6, v7, v8, v9, v10, v11, v12, v13, v21, v22, v23[0]);
          v17 = sub_2660DD590(v14, v15, v16);
          v19 = *v18;
          (v17)(v23, 0);
          OUTLINED_FUNCTION_69_1();
        }

        while (!v20);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_2661423D8(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_266142534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_16();
  v5 = OUTLINED_FUNCTION_19_7();
  v6(v5);
  return a2;
}

void sub_266142590(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_26618CCC0();
    sub_26618C4F0();
    OUTLINED_FUNCTION_24_5();
    sub_266142A78(v8, v9, MEMORY[0x277D85378]);
    sub_26618CA60();
    v4 = v25;
    v10 = v26;
    v11 = v27;
    v12 = v28;
    v13 = v29;
    if (!a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
    v10 = a4 + 56;
    OUTLINED_FUNCTION_60_3();
    v13 = v20 & v21;
    if (!a2)
    {
      goto LABEL_23;
    }
  }

  if (!a3)
  {
LABEL_23:
    *a1 = v4;
    a1[1] = v10;
    a1[2] = v11;
    a1[3] = v12;
    a1[4] = v13;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v22 = v11;
    v23 = a1;
    v14 = 0;
    v15 = (v11 + 64) >> 6;
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_26618CCF0() || (sub_26618C4F0(), swift_dynamicCast(), (v19 = v24) == 0))
        {
LABEL_22:
          v11 = v22;
          a1 = v23;
          goto LABEL_23;
        }
      }

      else
      {
        if (!v13)
        {
          while (1)
          {
            v17 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v17 >= v15)
            {
              v13 = 0;
              goto LABEL_22;
            }

            v13 = *(v10 + 8 * v17);
            ++v12;
            if (v13)
            {
              v12 = v17;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v18 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v19 = *(*(v4 + 48) + ((v12 << 9) | (8 * v18)));
        if (!v19)
        {
          goto LABEL_22;
        }
      }

      *a2++ = v19;
      ++v14;
      if (v16 == a3)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_266142778(unint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    v8 = sub_26618CE50();
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v4 = v8 | 0x8000000000000000;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_20:
    v13 = 0;
LABEL_24:
    *a1 = v4;
    a1[1] = v9;
    a1[2] = v10;
    a1[3] = v13;
    a1[4] = v11;
    return;
  }

  v9 = a4 + 64;
  OUTLINED_FUNCTION_60_3();
  v11 = v19 & v20;
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (!a3)
  {
    v13 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v21 = v10;
    v12 = 0;
    v13 = 0;
    v14 = (v10 + 64) >> 6;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        if (!sub_26618CE70() || (sub_26618C4F0(), swift_dynamicCast(), (v18 = v22) == 0))
        {
LABEL_22:
          v10 = v21;
          goto LABEL_24;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v16 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v16 >= v14)
            {
              v11 = 0;
              goto LABEL_22;
            }

            v11 = *(v9 + 8 * v16);
            ++v13;
            if (v11)
            {
              v13 = v16;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v17 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v18 = *(*(v4 + 48) + ((v13 << 9) | (8 * v17)));
        if (!v18)
        {
          goto LABEL_22;
        }
      }

      *a2++ = v18;
      ++v12;
      if (v15 == a3)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_266142928()
{
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_7_1();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(v3 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(v3 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_266142A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266142AC0()
{
  result = qword_28005C760;
  if (!qword_28005C760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005C760);
  }

  return result;
}

uint64_t sub_266142B04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_10_10(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1)
{

  return sub_26618C890();
}

unint64_t OUTLINED_FUNCTION_30_6(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;
  *(v2 - 128) = 46;
  *(v2 - 120) = 0xE100000000000000;

  return sub_2660CCD6C();
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return sub_266142534(v3, v4 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return sub_266142534(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_40_5(uint64_t a1)
{

  return sub_26618D000();
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return sub_2660BF79C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_46_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_48_3()
{
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1)
{

  return sub_2660BF79C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_50_3(uint64_t a1)
{

  return sub_2660BF79C(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_61_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return sub_266142534(va1, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_62_3()
{
}

uint64_t OUTLINED_FUNCTION_63_3()
{
}

uint64_t OUTLINED_FUNCTION_64_2(uint64_t a1)
{

  return sub_2660BF79C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_65_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_266142534(v14 - 64, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_78()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_80_0()
{

  return sub_26618BDF0();
}

uint64_t OUTLINED_FUNCTION_81_0(uint64_t a1, uint64_t a2)
{

  return sub_266142534(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_82_0()
{
}

void sub_26614313C()
{
  v0 = sub_266143284();
  v1 = sub_2661046B8();
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v1 == v2)
    {

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26677C150](v2, v0);
    }

    else
    {
      if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }
    }

    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v6 = sub_2661433B8(v4);
    v8 = v7;

    ++v2;
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266129600();
        v3 = v11;
      }

      v9 = *(v3 + 16);
      if (v9 >= *(v3 + 24) >> 1)
      {
        sub_266129600();
        v3 = v12;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v8;
      v2 = v5;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_266143284()
{
  sub_26618BDF0();
  sub_2661440C0(v5, v3, &qword_28005C0A8, qword_26618FAE0);
  if (!v4)
  {
    goto LABEL_7;
  }

  sub_2661440C0(v3, v2, &qword_28005C0A8, qword_26618FAE0);
  sub_26618BDD0();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_7:
    sub_2660C8040(v5, &qword_28005C0A8, qword_26618FAE0);
    v0 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v0 = sub_26618BEC0();

  if (!v0)
  {
    v0 = MEMORY[0x277D84F90];
  }

  sub_2660C8040(v5, &qword_28005C0A8, qword_26618FAE0);
  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_8:
  sub_2660C8040(v3, &qword_28005C0A8, qword_26618FAE0);
  return v0;
}

uint64_t sub_2661433B8(uint64_t a1)
{
  sub_26618BCF0();
  if (!v4)
  {
    return 0;
  }

  v1 = sub_26618BB00();

  if (!v1)
  {
    return 0;
  }

  if (!sub_2661046B8())
  {

    return 0;
  }

  sub_2661046C8();
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26677C150](0, v1);
  }

  else
  {
  }

  sub_26618BCF0();

  return v3;
}

uint64_t sub_266143474()
{
  v0 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C6E0, &qword_266192E10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_26618BC90();
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v49 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  sub_26618BCF0();
  v44 = v2;
  v45 = v0;
  v43 = v5;
  v47 = v8;
  if (!v52 || (v17 = sub_26618BD50(), , !v17))
  {

    v17 = MEMORY[0x277D84F90];
  }

  v18 = 0;
  v19 = *(v17 + 16);
  v50 = v11 + 16;
  v51 = v19;
  v20 = (v11 + 8);
  v48 = (v11 + 32);
  v21 = MEMORY[0x277D84F90];
  while (v51 != v18)
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
LABEL_21:
      swift_once();
      goto LABEL_16;
    }

    v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v23 = *(v11 + 72);
    (*(v11 + 16))(v16, v17 + v22 + v23 * v18, v9);
    if (sub_266143BF0(v16))
    {
      v46 = *v48;
      v46(v49, v16, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26612A3F8(0, *(v21 + 16) + 1, 1);
        v21 = v52;
      }

      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v41 = *(v21 + 16);
        v42 = v26 + 1;
        sub_26612A3F8(v25 > 1, v26 + 1, 1);
        v26 = v41;
        v27 = v42;
        v21 = v52;
      }

      ++v18;
      *(v21 + 16) = v27;
      v46((v21 + v22 + v26 * v23), v49, v9);
    }

    else
    {
      (*v20)(v16, v9);
      ++v18;
    }
  }

  v28 = v47;
  sub_266139C88(v21, v47);

  if (__swift_getEnumTagSinglePayload(v28, 1, v9) != 1)
  {
    v37 = sub_26618BC70();
    v39 = v38;
    (*v20)(v28, v9);

    return sub_266143974(v37, v39);
  }

  sub_2660C8040(v28, &qword_28005C6E0, &qword_266192E10);
  if (qword_2814B2C38 != -1)
  {
    goto LABEL_21;
  }

LABEL_16:
  v29 = v45;
  v30 = __swift_project_value_buffer(v45, qword_2814B4A80);
  v32 = v43;
  v31 = v44;
  (*(v44 + 16))(v43, v30, v29);
  v33 = sub_26618C690();
  v34 = sub_26618CA90();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2660B7000, v33, v34, "UsoTask.getDeviceType() did not find any device type referenced in request", v35, 2u);
    MEMORY[0x26677CC30](v35, -1, -1);
  }

  (*(v31 + 8))(v32, v29);
  return 0;
}

uint64_t sub_266143974(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76745F656C707061 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_1_13(0x76745F656C707061) & 1) != 0)
  {

    return 1;
  }

  else
  {
    v6 = a1 == 0x79616C705F726163 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_1_13(0x79616C705F726163) & 1) != 0)
    {

      return 2;
    }

    else
    {
      v7 = sub_2660CCD6C();
      v14 = OUTLINED_FUNCTION_0_15(v7, MEMORY[0x277D837D0], v8, v9, v10, v11, v12, v13, 0x646F70656D6F68);
      if (v14)
      {

        return 3;
      }

      else
      {
        v21 = OUTLINED_FUNCTION_0_15(v14, MEMORY[0x277D837D0], v15, v16, v17, v18, v19, v20, 1684107369);
        if (v21)
        {

          return 4;
        }

        else
        {
          v28 = OUTLINED_FUNCTION_0_15(v21, MEMORY[0x277D837D0], v22, v23, v24, v25, v26, v27, 0x656E6F6870);
          if (v28)
          {

            return 5;
          }

          else
          {
            v35 = OUTLINED_FUNCTION_0_15(v28, MEMORY[0x277D837D0], v29, v30, v31, v32, v33, v34, 1685024873);
            if (v35)
            {

              return 6;
            }

            else if (OUTLINED_FUNCTION_0_15(v35, MEMORY[0x277D837D0], v36, v37, v38, v39, v40, v41, 6513005) & 1) != 0 || (a1 == 0x706F7470616CLL ? (v42 = a2 == 0xE600000000000000) : (v42 = 0), v42 || (sub_26618D000()))
            {

              return 7;
            }

            else
            {
              v43 = a1 == 0x705F6E6F69736976 && a2 == 0xEA00000000006F72;
              if (v43 || (v44 = OUTLINED_FUNCTION_1_13(0x705F6E6F69736976), (v44 & 1) != 0))
              {

                return 8;
              }

              else
              {
                v51 = OUTLINED_FUNCTION_0_15(v44, MEMORY[0x277D837D0], v45, v46, v47, v48, v49, v50, 0x6863746177);

                if (v51)
                {
                  return 9;
                }

                else
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_266143BF0(uint64_t a1)
{
  v2 = sub_26618BC40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v30 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C778, &qword_266192E18);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v28[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C780, qword_266192E20);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v32 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v28[-v15];
  v31 = a1;
  sub_26618BC50();
  v17 = v3;
  (*(v3 + 104))(v14, *MEMORY[0x277D5E4B8], v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v18 = *(v6 + 56);
  sub_2661440C0(v16, v8, &qword_28005C780, qword_266192E20);
  sub_2661440C0(v14, &v8[v18], &qword_28005C780, qword_266192E20);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_2660C8040(v14, &qword_28005C780, qword_266192E20);
    sub_2660C8040(v16, &qword_28005C780, qword_266192E20);
    if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
    {
      sub_2660C8040(v8, &qword_28005C780, qword_266192E20);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v19 = v32;
  sub_2661440C0(v8, v32, &qword_28005C780, qword_266192E20);
  if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
  {
    sub_2660C8040(v14, &qword_28005C780, qword_266192E20);
    sub_2660C8040(v16, &qword_28005C780, qword_266192E20);
    (*(v17 + 8))(v19, v2);
LABEL_6:
    sub_2660C8040(v8, &qword_28005C778, &qword_266192E18);
LABEL_14:
    v26 = 0;
    return v26 & 1;
  }

  v20 = v30;
  (*(v17 + 32))(v30, &v8[v18], v2);
  sub_266144068();
  v29 = sub_26618C890();
  v21 = v19;
  v22 = *(v17 + 8);
  v22(v20, v2);
  sub_2660C8040(v14, &qword_28005C780, qword_266192E20);
  sub_2660C8040(v16, &qword_28005C780, qword_266192E20);
  v22(v21, v2);
  sub_2660C8040(v8, &qword_28005C780, qword_266192E20);
  if ((v29 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v23 = sub_26618BC80();
  if (!v24)
  {
    goto LABEL_14;
  }

  if (v23 == 0x7250726577736E61 && v24 == 0xED0000746375646FLL)
  {

    v26 = 1;
  }

  else
  {
    v26 = sub_26618D000();
  }

  return v26 & 1;
}

unint64_t sub_266144068()
{
  result = qword_28005C788;
  if (!qword_28005C788)
  {
    sub_26618BC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C788);
  }

  return result;
}

uint64_t sub_2661440C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s20UserEntityDeviceTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20UserEntityDeviceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266144290()
{
  result = qword_28005C790;
  if (!qword_28005C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C790);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26618CC60();
}

uint64_t OUTLINED_FUNCTION_1_13(uint64_t a1)
{

  return sub_26618D000();
}

uint64_t sub_266144324()
{
  sub_26618BDF0();
  sub_2660D74A8(v16, v14);
  if (!v15)
  {
    goto LABEL_12;
  }

  sub_2660D74A8(v14, v13);
  v0 = sub_26618BEB0();
  if (OUTLINED_FUNCTION_6_13(v0, v1, v2, v0, v3))
  {

    sub_26618BED0();
    goto LABEL_6;
  }

  v4 = sub_26618BF70();
  if (!OUTLINED_FUNCTION_6_13(v4, v5, v6, v4, v7))
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
LABEL_12:
    sub_26614446C(v16);
    v10 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_26618BAF0();
LABEL_6:

  if (v12 && (v8 = sub_26618BD20(), , v8))
  {
    sub_26613C958();
    v10 = v9;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  sub_26614446C(v16);
  __swift_destroy_boxed_opaque_existential_1(v13);
LABEL_13:
  sub_26614446C(v14);
  return v10;
}

uint64_t sub_26614446C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0A8, qword_26618FAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2661444D4()
{
  sub_26618BDF0();
  if (!v12)
  {
    goto LABEL_6;
  }

  sub_2660D74A8(v11, v10);
  v0 = sub_26618BEB0();
  if (!OUTLINED_FUNCTION_6_13(v0, v1, v2, v0, v3))
  {
    v4 = sub_26618BF70();
    if (!OUTLINED_FUNCTION_6_13(v4, v5, v6, v4, v7))
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
LABEL_6:
      v8 = 0;
      goto LABEL_7;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  v8 = 1;
LABEL_7:
  sub_26614446C(v11);
  return v8;
}

void sub_266144578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C220, &qword_266190D70);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - v4;
  if (qword_2814B3D40 != -1)
  {
    swift_once();
  }

  type metadata accessor for AppLaunchIntent(0);
  v6 = _s11ApplicationVMa(0);
  sub_2661449F0(&qword_2814B3D28, type metadata accessor for AppLaunchIntent, &unk_2661939B8);
  OUTLINED_FUNCTION_0_16();
  sub_2661449F0(v7, v8, &unk_26619303C);
  OUTLINED_FUNCTION_1_14();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_266144988(v5);
  }

  else
  {
    if (qword_2814B3D88 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_16();
    sub_2661449F0(v9, v10, &unk_26619300C);
    OUTLINED_FUNCTION_2_18();
    sub_26618BDA0();
    v12 = v19;
    v11 = v20;
    sub_266144A38(v5);
    if (v11)
    {
      sub_26614E608(v12, v11, v18);
    }
  }

  OUTLINED_FUNCTION_1_14();
  if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
  {
    sub_266144988(v3);
  }

  else
  {
    if (qword_2814B3D90 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_16();
    sub_2661449F0(v13, v14, &unk_26619300C);
    OUTLINED_FUNCTION_2_18();
    sub_26618BDA0();
    v15 = v19;
    v16 = v20;
    sub_266144A38(v3);
    if (v16)
    {
      sub_26614E5FC(v15, v16, v18);
    }
  }
}

void sub_26614484C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = sub_26618C8A0();
  }

  else
  {
    v9 = 0;
  }

  [v6 setName_];

  if (a4)
  {
    a4 = sub_26618C8A0();
  }

  [v6 setAppId_];

  if (a6)
  {
    v10 = sub_26618C8A0();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [v6 setSceneId_];
}

id sub_26614492C()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_26618C8A0();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  return v3;
}

uint64_t sub_266144988(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C220, &qword_266190D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2661449F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266144A38(uint64_t a1)
{
  v2 = _s11ApplicationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_26618BD90();
}

uint64_t sub_266144AE8()
{
  v1 = sub_26618B8E0();
  OUTLINED_FUNCTION_2_2();
  v47 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_16(v4, v44);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v48 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_26618B980();
  OUTLINED_FUNCTION_2_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_4();
  v23 = v22 - v21;
  v24 = sub_26618B8B0();
  sub_266139C58(v24, v16);

  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_2661189FC(v16);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    __swift_project_value_buffer(v8, qword_2814B4A80);
    v25 = v48;
    OUTLINED_FUNCTION_7_15();
    v26(v13);
    v27 = *(v47 + 16);
    v27(v7, v0, v1);
    v28 = sub_26618C690();
    v29 = sub_26618CAB0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49 = v45;
      *v30 = 136315138;
      HIDWORD(v44) = v29;
      v31 = v46;
      v27(v46, v7, v1);
      OUTLINED_FUNCTION_4_17();
      v34 = sub_266145908(v31, v32, v33, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
      v36 = v35;
      v37 = OUTLINED_FUNCTION_5_13();
      v38(v37);
      v39 = sub_266103A98(v34, v36, &v49);

      *(v30 + 4) = v39;
      _os_log_impl(&dword_2660B7000, v28, BYTE4(v44), "No user dialog act found in userParse %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v48 + 8))(v13, v8);
    }

    else
    {

      v41 = OUTLINED_FUNCTION_5_13();
      v42(v41);
      (*(v25 + 8))(v13, v8);
    }

    return 0;
  }

  else
  {
    (*(v19 + 32))(v23, v16, v17);
    v40 = sub_266144F30();
    (*(v19 + 8))(v23, v17);
  }

  return v40;
}

uint64_t sub_266144F30()
{
  sub_26618B980();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3_16(v1, v32);
  MEMORY[0x28223BE20](v2);
  v3 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v33 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = sub_26618BAA0();
  if (sub_2661046B8())
  {
    sub_2661046C8();
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26677C150](0, v12);
    }

    else
    {
      v13 = *(v12 + 32);
    }

    v14 = v33;

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    __swift_project_value_buffer(v3, qword_2814B4A80);
    OUTLINED_FUNCTION_7_15();
    v15(v11);

    v16 = sub_26618C690();
    v17 = v3;
    v18 = sub_26618CAA0();

    if (os_log_type_enabled(v16, v18))
    {
      v19 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v19 = 136315394;
      v20 = sub_26618C0C0();
      v22 = sub_266103A98(v20, v21, v34);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = sub_26618C0B0();
      v25 = sub_266103A98(v23, v24, v34);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_2660B7000, v16, v18, "NLv4 AppLaunch Parse: Input is entity=%s verb=%s", v19, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    (*(v14 + 8))(v11, v17);
  }

  else
  {

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v26 = __swift_project_value_buffer(v3, qword_2814B4A80);
    v27 = v33;
    (*(v33 + 16))(v9, v26, v3);
    v28 = sub_26618C690();
    v29 = sub_26618CAB0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2660B7000, v28, v29, "NLv4 AppLaunch Parse: No tasks in input", v30, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    (*(v27 + 8))(v9, v3);
    return 0;
  }

  return v13;
}

uint64_t sub_266145588(uint64_t a1)
{
  v2 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  v9 = sub_26618B840();
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_7_15();
  v16(v8, a1, v2);
  if ((*(v4 + 88))(v8, v2) == *MEMORY[0x277D5C160])
  {
    (*(v4 + 96))(v8, v2);
    (*(v11 + 32))(v15, v8, v9);
    strcpy(v29, ".uso parse: ");
    BYTE5(v29[1]) = 0;
    HIWORD(v29[1]) = -5120;
    sub_26618BA90();
    v27 = sub_26618B8E0();
    v28 = sub_266145A44(&qword_28005C798, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
    __swift_allocate_boxed_opaque_existential_0(&v25);
    sub_26618B820();
    v17 = sub_26618BA80();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(&v25);
    MEMORY[0x26677BCF0](v17, v19);

    v25 = v29[0];
    v26 = v29[1];
    v20 = sub_26618C960();
    (*(v4 + 8))(a1, v2);
    v21 = OUTLINED_FUNCTION_5_13();
    v22(v21);
  }

  else
  {
    v23 = *(v4 + 8);
    v23(v8, v2);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_26618CE30();
    v20 = sub_26618C960();
    v23(a1, v2);
  }

  return v20;
}

uint64_t sub_266145908(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = a2(0);
  v13[3] = v9;
  v13[4] = sub_266145A44(a3, a4, a5);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(v9 - 8) + 32))(boxed_opaque_existential_0, a1, v9);
  sub_26618BA90();
  sub_26618BA80();
  v11 = sub_26618C960();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11;
}

uint64_t sub_266145A44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_266145AE0()
{
  if ([v0 appReference] != 2)
  {
    return 0;
  }

  v1 = [v0 application];
  if (v1)
  {
    sub_26610410C(v1);
    if (v2)
    {

      return 0;
    }
  }

  if (!sub_2661040AC(v0))
  {
    return 1;
  }

  v4 = sub_2661046B8();

  return v4 == 0;
}

unint64_t sub_266145B78(uint64_t a1, uint64_t a2)
{
  v2 = sub_26618CEC0();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266145BC4(char a1)
{
  result = 1852141679;
  switch(a1)
  {
    case 1:
      result = 0x736972616D6D7573;
      break;
    case 2:
      result = 0x65736F6C63;
      break;
    case 3:
      result = 1953068401;
      break;
    case 4:
      result = 0x627265566F6ELL;
      break;
    case 5:
      result = 0x64616F6C66666FLL;
      break;
    case 6:
      result = 0x6C6C6174736E69;
      break;
    case 7:
      result = 0x6C6174736E696E75;
      break;
    case 8:
      result = 0x6574656C6564;
      break;
    case 9:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266145CE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266145B78(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266145D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266145BC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AppLaunchUsoConstants.verb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266145E24()
{
  result = qword_28005C7A8;
  if (!qword_28005C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C7A8);
  }

  return result;
}

uint64_t sub_266145ED8()
{
  _s23ApplicationOntologyNodeCMa(0);
  swift_allocObject();
  result = sub_266145FFC();
  qword_2814B4AF8 = result;
  return result;
}

uint64_t sub_266145F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  swift_allocObject();
  result = sub_26618BB50();
  *a4 = result;
  return result;
}

uint64_t sub_266145FFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B8, &qword_266192FF8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26618E250;
  if (qword_2814B3D98 != -1)
  {
    swift_once();
  }

  v1 = qword_2814B4B28;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7B0, &qword_266192FF0);
  *(v0 + 56) = v2;
  v3 = sub_2661461D8();
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_2814B3D88;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2814B4B18;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = qword_2814B3D90;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2814B4B20;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v7;

  return MEMORY[0x2821C0790](7368801, 0xE300000000000000, 0, v0);
}

uint64_t sub_2661461A0()
{
  v0 = sub_26618BAE0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

unint64_t sub_2661461D8()
{
  result = qword_2814B47E8;
  if (!qword_2814B47E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C7B0, &qword_266192FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B47E8);
  }

  return result;
}

uint64_t sub_266146284(uint64_t a1)
{
  result = sub_26618BDB0();
  if (v2 <= 0x3F)
  {
    result = sub_26618BAD0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_266146308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26618BDB0();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  *(a3 + *(_s11ApplicationVMa(0) + 20)) = a2;
}

uint64_t sub_266146398@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26618BDB0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_266146410(uint64_t a1)
{
  v2 = sub_266146504(&qword_2814B3E80, &unk_26619303C);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_266146478(uint64_t a1)
{
  v2 = sub_266146504(&qword_2814B3E80, &unk_26619303C);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t sub_266146504(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s11ApplicationVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266146548()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7C0, qword_266193A00);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4B48 = result;
  return result;
}

unint64_t sub_2661465B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_26618CEC0();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26614660C(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 6647407;
      break;
    case 2:
      result = 7105633;
      break;
    case 3:
      result = 2037277037;
      break;
    case 4:
      result = 6645876;
      break;
    case 5:
      result = 0x6573656874;
      break;
    case 6:
      result = 29801;
      break;
    case 7:
      result = 1936287860;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2661466E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2661465B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266146710@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26614660C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s12AppReferenceOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s12AppReferenceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2661468A4()
{
  result = qword_2814B3EA8;
  if (!qword_2814B3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EA8);
  }

  return result;
}

uint64_t sub_266146908(uint64_t a1, uint64_t a2)
{
  v4 = sub_266146A94();
  v5 = sub_266146AE8();
  v6 = sub_266146B3C();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_266146980()
{
  result = qword_28005C7C8;
  if (!qword_28005C7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C7D0, &qword_2661930C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C7C8);
  }

  return result;
}

unint64_t sub_2661469E8()
{
  result = qword_28005C7D8;
  if (!qword_28005C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C7D8);
  }

  return result;
}

unint64_t sub_266146A40()
{
  result = qword_2814B3EA0;
  if (!qword_2814B3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B3EA0);
  }

  return result;
}

unint64_t sub_266146A94()
{
  result = qword_28005C7E0;
  if (!qword_28005C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C7E0);
  }

  return result;
}

unint64_t sub_266146AE8()
{
  result = qword_28005C7E8;
  if (!qword_28005C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C7E8);
  }

  return result;
}

unint64_t sub_266146B3C()
{
  result = qword_28005C7F0;
  if (!qword_28005C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C7F0);
  }

  return result;
}

uint64_t sub_266146B90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C7F8, &unk_2661939F0);
  swift_allocObject();
  result = sub_26618BB50();
  qword_2814B4AE8 = result;
  return result;
}

unint64_t sub_266146BF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_26618CEC0();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266146C4C(char a1)
{
  result = 1852141679;
  switch(a1)
  {
    case 1:
      result = 0x65736F6C63;
      break;
    case 2:
      result = 0x6C6C6174736E69;
      break;
    case 3:
      result = 0x64616F6C66666FLL;
      break;
    case 4:
      result = 0x6C6174736E696E75;
      break;
    case 5:
      result = 2036427888;
      break;
    case 6:
      result = 0x686372616573;
      break;
    case 7:
      v3 = 1633972341;
      goto LABEL_8;
    case 8:
      result = 0x537070416E65706FLL;
      break;
    case 9:
      v3 = 1634038371;
LABEL_8:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 10:
      result = 0x6170206863746566;
      break;
    default:
      return result;
  }

  return result;
}