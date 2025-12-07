void sub_22B1FAF34(int64_t a1)
{
  v3 = sub_22B35DF1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_22B36106C();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_22B1FE510(&unk_27D8BA320, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v23 = sub_22B36071C();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_22B1FB268(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t **sub_22B1FB40C(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_22B36109C();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_22B32DE30(v2, 0);

    v1 = sub_22B2500DC(&v5, v3 + 4, v2, v1);
    sub_22B1A20B8(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_22B1FB4BC(uint64_t *a1)
{
  v2 = *(type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22B21CB70(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22B1FB60C(v5);
  *a1 = v3;
}

void sub_22B1FB564(uint64_t *a1, __n128 a2)
{
  v3 = *(type metadata accessor for CDTOUPeak(0) - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22B21CB84(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_22B1FB738(v6);
  *a1 = v4;
}

void sub_22B1FB60C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22B36130C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0);
        v6 = sub_22B360A8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22B1FBD2C(v8, v9, a1, v4);
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
    sub_22B1FB864(0, v2, 1, a1);
  }
}

void sub_22B1FB738(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22B36130C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v5 = v3;
      v6 = v2 / 2;
      if (v2 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for CDTOUPeak(0);
        v7 = sub_22B360A8C();
        *(v7 + 16) = v6;
      }

      v8 = *(type metadata accessor for CDTOUPeak(0) - 8);
      v10[0] = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10[1] = v6;
      sub_22B1FC690(v10, v9, v11, a1, v5);
      *(v7 + 16) = 0;

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
    sub_22B1FBAC8(0, v2, 1, a1, v4);
  }
}

void sub_22B1FB864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0);
  MEMORY[0x28223BE20](Events);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_22B201F74(v22, v16, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      sub_22B201F74(v19, v12, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      v23 = sub_22B35DDFC();
      sub_22B201FDC(v12, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      sub_22B201FDC(v16, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_22B20203C(v22, v34, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      swift_arrayInitWithTakeFrontToBack();
      sub_22B20203C(v24, v19, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22B1FBAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 a5)
{
  v9 = type metadata accessor for CDTOUPeak(0);
  MEMORY[0x28223BE20](v9);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_22B201F74(v23, v17, type metadata accessor for CDTOUPeak);
      sub_22B201F74(v20, v13, type metadata accessor for CDTOUPeak);
      v24 = sub_22B35DDFC();
      sub_22B201FDC(v13, type metadata accessor for CDTOUPeak);
      sub_22B201FDC(v17, type metadata accessor for CDTOUPeak);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_22B20203C(v23, v35, type metadata accessor for CDTOUPeak);
      swift_arrayInitWithTakeFrontToBack();
      sub_22B20203C(v25, v20, type metadata accessor for CDTOUPeak);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22B1FBD2C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0);
  v112 = *(Events - 8);
  MEMORY[0x28223BE20](Events);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v115 = &v100 - v12;
  MEMORY[0x28223BE20](v13);
  v116 = &v100 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v100 - v16;
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_22B21C768(a4);
    }

    v118 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_22B1FCFF4(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_22B21C768(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_22B21C6DC(a4 - 1);
        v95 = v118;
        a4 = *(v118 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v103 = a4;
  v117 = Events;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v108 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v112 + 72);
      v5 = *v114 + v23 * v22;
      v110 = *v114;
      v24 = v110;
      sub_22B201F74(v110 + v23 * v22, v17, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      v25 = v24 + v23 * v21;
      v26 = v21;
      v27 = v116;
      sub_22B201F74(v25, v116, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      LODWORD(v111) = sub_22B35DDFC();
      sub_22B201FDC(v27, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      sub_22B201FDC(v17, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
      v102 = v26;
      v28 = v26 + 2;
      v113 = v23;
      v29 = v110 + v23 * (v26 + 2);
      while (v18 != v28)
      {
        sub_22B201F74(v29, v17, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v30 = v116;
        sub_22B201F74(v5, v116, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v31 = sub_22B35DDFC() & 1;
        sub_22B201FDC(v30, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        sub_22B201FDC(v17, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        ++v28;
        v29 += v113;
        v5 += v113;
        if ((v111 & 1) != v31)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v111)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18;
          v34 = v18 * v113;
          v111 = v18;
          v35 = v102;
          v36 = v102;
          v37 = v102 * v113;
          do
          {
            if (v35 != --v33)
            {
              v38 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v38 + v37;
              sub_22B20203C(v38 + v37, v107, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
              if (v37 < v32 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22B20203C(v107, v38 + v32, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
            }

            ++v35;
            v32 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v35 < v33);
          v6 = v101;
          a4 = v103;
          v21 = v36;
          v18 = v111;
        }
      }
    }

    v39 = v114[1];
    if (v18 < v39)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v39)
        {
          v40 = v114[1];
        }

        else
        {
          v40 = v21 + a4;
        }

        if (v40 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v40)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v108;
    }

    else
    {
      v20 = sub_22B21C984(0, *(v108 + 2) + 1, 1, v108);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_22B21C984((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v19;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_22B1FCFF4(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_22B21C768(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v82;
        sub_22B21C6DC(v44);
        v20 = v118;
        v5 = *(v118 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    a4 = v103;
    if (v19 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = v18;
  v86 = v21;
  v87 = *v114;
  v88 = *(v112 + 72);
  v89 = *v114 + v88 * (v18 - 1);
  v90 = -v88;
  v102 = v86;
  v91 = v86 - v18;
  v111 = v85;
  v105 = v88;
  v106 = v40;
  v5 = v87 + v85 * v88;
LABEL_85:
  v109 = v5;
  v110 = v91;
  v113 = v89;
  while (1)
  {
    sub_22B201F74(v5, v17, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v92 = v116;
    sub_22B201F74(v89, v116, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    a4 = sub_22B35DDFC();
    sub_22B201FDC(v92, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    sub_22B201FDC(v17, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v19 = v106;
      v89 = v113 + v105;
      v91 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v87)
    {
      break;
    }

    a4 = type metadata accessor for LoadEventsProcessor.RatePlanPeriod;
    v93 = v115;
    sub_22B20203C(v5, v115, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    swift_arrayInitWithTakeFrontToBack();
    sub_22B20203C(v93, v89, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_22B1FC690(unint64_t *a1, __n128 a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v7 = v5;
  v107 = a1;
  v10 = type metadata accessor for CDTOUPeak(0);
  v115 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v110 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v118 = &v103 - v13;
  MEMORY[0x28223BE20](v14);
  v119 = &v103 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v103 - v17;
  v117 = a4;
  v19 = a4[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v6 = *v107;
    if (!*v107)
    {
      goto LABEL_134;
    }

    a5 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = a5;
    }

    else
    {
LABEL_128:
      v98 = sub_22B21C768(a5);
    }

    v121 = v98;
    a5 = *(v98 + 2);
    if (a5 >= 2)
    {
      while (*v117)
      {
        v99 = *&v98[16 * a5];
        v100 = v98;
        v101 = *&v98[16 * a5 + 24];
        sub_22B1FD524(*v117 + *(v115 + 72) * v99, *v117 + *(v115 + 72) * *&v98[16 * a5 + 16], *v117 + *(v115 + 72) * v101, v6, v97);
        if (v7)
        {
          goto LABEL_106;
        }

        if (v101 < v99)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_22B21C768(v100);
        }

        if (a5 - 2 >= *(v100 + 2))
        {
          goto LABEL_122;
        }

        v102 = &v100[16 * a5];
        *v102 = v99;
        *(v102 + 1) = v101;
        v121 = v100;
        sub_22B21C6DC(a5 - 1);
        v98 = v121;
        a5 = *(v121 + 2);
        if (a5 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v106 = a5;
  v120 = v10;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v111 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v115 + 72);
      v6 = *v117 + v24 * v23;
      v113 = *v117;
      v25 = v113;
      sub_22B201F74(v113 + v24 * v23, v18, type metadata accessor for CDTOUPeak);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v119;
      sub_22B201F74(v26, v119, type metadata accessor for CDTOUPeak);
      LODWORD(v114) = sub_22B35DDFC();
      sub_22B201FDC(v28, type metadata accessor for CDTOUPeak);
      sub_22B201FDC(v18, type metadata accessor for CDTOUPeak);
      v105 = v27;
      v29 = v27 + 2;
      v116 = v24;
      v30 = v113 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_22B201F74(v30, v18, type metadata accessor for CDTOUPeak);
        v31 = v119;
        sub_22B201F74(v6, v119, type metadata accessor for CDTOUPeak);
        v32 = sub_22B35DDFC() & 1;
        sub_22B201FDC(v31, type metadata accessor for CDTOUPeak);
        sub_22B201FDC(v18, type metadata accessor for CDTOUPeak);
        ++v29;
        v30 += v116;
        v6 += v116;
        if ((v114 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v105;
      a5 = v106;
      if (v114)
      {
        if (v19 < v105)
        {
          goto LABEL_125;
        }

        if (v105 < v19)
        {
          v104 = v7;
          v33 = v116 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v116;
          v114 = v19;
          v36 = v105;
          v37 = v105;
          v38 = v105 * v116;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v117;
              if (!*v117)
              {
                goto LABEL_131;
              }

              v6 = v39 + v38;
              sub_22B20203C(v39 + v38, v110, type metadata accessor for CDTOUPeak);
              if (v38 < v33 || v6 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22B20203C(v110, v39 + v33, type metadata accessor for CDTOUPeak);
            }

            ++v36;
            v33 -= v116;
            v35 -= v116;
            v38 += v116;
          }

          while (v36 < v34);
          v7 = v104;
          a5 = v106;
          v22 = v37;
          v19 = v114;
        }
      }
    }

    v40 = v117[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a5)
      {
        if (__OFADD__(v22, a5))
        {
          goto LABEL_126;
        }

        if ((v22 + a5) >= v40)
        {
          v41 = v117[1];
        }

        else
        {
          v41 = v22 + a5;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v111;
    }

    else
    {
      v21 = sub_22B21C984(0, *(v111 + 2) + 1, 1, v111);
    }

    a5 = *(v21 + 2);
    v43 = *(v21 + 3);
    v6 = a5 + 1;
    if (a5 >= v43 >> 1)
    {
      v21 = sub_22B21C984((v43 > 1), a5 + 1, 1, v21);
    }

    *(v21 + 2) = v6;
    v44 = &v21[16 * a5];
    *(v44 + 4) = v22;
    *(v44 + 5) = v20;
    v45 = *v107;
    if (!*v107)
    {
      goto LABEL_133;
    }

    if (a5)
    {
      while (1)
      {
        v46 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v47 = *(v21 + 4);
          v48 = *(v21 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_52:
          if (v50)
          {
            goto LABEL_112;
          }

          v63 = &v21[16 * v6];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_115;
          }

          v69 = &v21[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_119;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v6 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v73 = &v21[16 * v6];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_66:
        if (v68)
        {
          goto LABEL_114;
        }

        v76 = &v21[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_117;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_73:
        a5 = v46 - 1;
        if (v46 - 1 >= v6)
        {
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
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v117)
        {
          goto LABEL_130;
        }

        v84 = v21;
        v85 = *&v21[16 * a5 + 32];
        v6 = *&v21[16 * v46 + 40];
        sub_22B1FD524(*v117 + *(v115 + 72) * v85, *v117 + *(v115 + 72) * *&v21[16 * v46 + 32], *v117 + *(v115 + 72) * v6, v45, v42);
        if (v7)
        {
          goto LABEL_106;
        }

        if (v6 < v85)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_22B21C768(v84);
        }

        if (a5 >= *(v84 + 2))
        {
          goto LABEL_109;
        }

        v86 = &v84[16 * a5];
        *(v86 + 4) = v85;
        *(v86 + 5) = v6;
        v121 = v84;
        sub_22B21C6DC(v46);
        v21 = v121;
        v6 = *(v121 + 2);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v21[16 * v6 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_110;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_111;
      }

      v58 = &v21[16 * v6];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_113;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_116;
      }

      if (v62 >= v54)
      {
        v80 = &v21[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_120;
        }

        if (v49 < v83)
        {
          v46 = v6 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v117[1];
    a5 = v106;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v104 = v7;
  v87 = v19;
  v88 = v22;
  v89 = *v117;
  v90 = *(v115 + 72);
  v91 = *v117 + v90 * (v19 - 1);
  v92 = -v90;
  v105 = v88;
  v93 = v88 - v19;
  v114 = v87;
  v108 = v90;
  v109 = v41;
  v6 = v89 + v87 * v90;
LABEL_85:
  v112 = v6;
  v113 = v93;
  v116 = v91;
  while (1)
  {
    sub_22B201F74(v6, v18, type metadata accessor for CDTOUPeak);
    v94 = v119;
    sub_22B201F74(v91, v119, type metadata accessor for CDTOUPeak);
    a5 = sub_22B35DDFC();
    sub_22B201FDC(v94, type metadata accessor for CDTOUPeak);
    sub_22B201FDC(v18, type metadata accessor for CDTOUPeak);
    if ((a5 & 1) == 0)
    {
LABEL_84:
      v20 = v109;
      v91 = v116 + v108;
      v93 = v113 - 1;
      v6 = v112 + v108;
      if (++v114 != v109)
      {
        goto LABEL_85;
      }

      v7 = v104;
      v22 = v105;
      if (v109 < v105)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v89)
    {
      break;
    }

    a5 = type metadata accessor for CDTOUPeak;
    v95 = v118;
    sub_22B20203C(v6, v118, type metadata accessor for CDTOUPeak);
    swift_arrayInitWithTakeFrontToBack();
    sub_22B20203C(v95, v91, type metadata accessor for CDTOUPeak);
    v91 += v92;
    v6 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_22B1FCFF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0);
  MEMORY[0x28223BE20](Events);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = -v12;
      do
      {
        v35 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v40 = v25;
        v41 = v26;
        while (1)
        {
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v35;
            goto LABEL_59;
          }

          v36 = v22;
          v28 = a3 + v23;
          v29 = v24 + v23;
          v30 = v42;
          sub_22B201F74(v29, v42, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
          v31 = v43;
          sub_22B201F74(v26, v43, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
          v32 = sub_22B35DDFC();
          sub_22B201FDC(v31, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
          sub_22B201FDC(v30, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
          if (v32)
          {
            break;
          }

          v22 = v29;
          if (a3 < v24 || v28 >= v24)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v33 = a3 == v24;
            a3 = v28;
            a1 = v38;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          v25 = v40;
          v27 = v29 > v39;
          v26 = v41;
          v23 = v37;
          if (!v27)
          {
            a2 = v40;
            goto LABEL_58;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v22 = v36;
        }

        else
        {
          v33 = a3 == v40;
          a3 = v28;
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v22 = v36;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_58:
    v47 = a2;
    v45 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = a3;
        v19 = v42;
        sub_22B201F74(a2, v42, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v20 = v43;
        sub_22B201F74(a4, v43, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        v21 = sub_22B35DDFC();
        sub_22B201FDC(v20, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        sub_22B201FDC(v19, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_59:
  sub_22B21C77C(&v47, &v46, &v45);
}

void sub_22B1FD524(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, __n128 a5)
{
  v45 = type metadata accessor for CDTOUPeak(0);
  MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_22B201F74(v30, v43, type metadata accessor for CDTOUPeak);
          v32 = v44;
          sub_22B201F74(v27, v44, type metadata accessor for CDTOUPeak);
          v33 = sub_22B35DDFC();
          sub_22B201FDC(v32, type metadata accessor for CDTOUPeak);
          sub_22B201FDC(v31, type metadata accessor for CDTOUPeak);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_22B201F74(a2, v43, type metadata accessor for CDTOUPeak);
        v21 = v44;
        sub_22B201F74(a4, v44, type metadata accessor for CDTOUPeak);
        v22 = sub_22B35DDFC();
        sub_22B201FDC(v21, type metadata accessor for CDTOUPeak);
        sub_22B201FDC(v20, type metadata accessor for CDTOUPeak);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_22B21C794(&v48, &v47, &v46);
}

BOOL sub_22B1FDA54(void *a1, void *a2)
{
  v4 = sub_22B35DE9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA730, &unk_22B367910);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2 && (sub_22B36134C() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0);
  if ((sub_22B35DE4C() & 1) == 0)
  {
    return 0;
  }

  v27 = v7;
  v15 = v5;
  v16 = *(Events + 28);
  v17 = *(v11 + 48);
  sub_22B170BE0(a1 + v16, v13, &qword_27D8BA340, &qword_22B363FB0);
  v18 = a2 + v16;
  v19 = v15;
  sub_22B170BE0(v18, &v13[v17], &qword_27D8BA340, &qword_22B363FB0);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v4) != 1)
  {
    sub_22B170BE0(v13, v10, &qword_27D8BA340, &qword_22B363FB0);
    if (v20(&v13[v17], 1, v4) != 1)
    {
      v22 = *(v15 + 32);
      v23 = v27;
      v22(v27, &v13[v17], v4);
      sub_22B1FE510(&qword_27D8BA430, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v24 = sub_22B36078C();
      v25 = *(v19 + 8);
      v25(v23, v4);
      v25(v10, v4);
      sub_22B123284(v13, &qword_27D8BA340, &qword_22B363FB0);
      return (v24 & 1) != 0;
    }

    (*(v15 + 8))(v10, v4);
LABEL_12:
    sub_22B123284(v13, &qword_27D8BA730, &unk_22B367910);
    return 0;
  }

  if (v20(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_22B123284(v13, &qword_27D8BA340, &qword_22B363FB0);
  return 1;
}

uint64_t sub_22B1FDE04(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_22B35EACC();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_22B35EE8C();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1FDF7C, 0, 0);
}

uint64_t sub_22B1FDF7C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_22B35EE7C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    v8 = v0[5];
    v9 = sub_22B35E7EC();
    (*(*(v9 - 8) + 16))(v5, v8, v9);
    v10 = *MEMORY[0x277D174F8];
    v11 = sub_22B35E41C();
    (*(*(v11 - 8) + 104))(v5, v10, v11);
    (*(v6 + 104))(v5, *MEMORY[0x277D17968], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6D0, &qword_22B365968);
    v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v13 = swift_allocObject();
    v0[15] = v13;
    *(v13 + 16) = xmmword_22B3634B0;
    (*(v6 + 16))(v13 + v12, v5, v7);
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_22B1FE2EC;

    return MEMORY[0x282171BF0](v13);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[6];
    v18 = __swift_project_value_buffer(v17, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v15, v18, v17);
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[7];
    v22 = v0[8];
    v24 = v0[6];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22B116000, v19, v20, "[LoadEventUploader] Feature Disabled. Skip submission", v25, 2u);
      MEMORY[0x23188F650](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_22B1FE2EC()
{

  if (v0)
  {

    v1 = sub_22B202284;
  }

  else
  {

    v1 = sub_22B1FE434;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_22B1FE434()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t type metadata accessor for LoadEventsProcessor.RatePlanPeriod(uint64_t a1)
{
  result = qword_27D8BA800;
  if (!qword_27D8BA800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B1FE510(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22B1FE5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v243 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v194 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v185 = &v179 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v179 - v11;
  MEMORY[0x28223BE20](v13);
  v217 = &v179 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v179 - v16;
  MEMORY[0x28223BE20](v18);
  v203 = &v179 - v19;
  v20 = sub_22B35DE9C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v191 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v179 - v24;
  MEMORY[0x28223BE20](v26);
  v192 = &v179 - v27;
  MEMORY[0x28223BE20](v28);
  v195 = &v179 - v29;
  MEMORY[0x28223BE20](v30);
  v183 = &v179 - v31;
  MEMORY[0x28223BE20](v32);
  v196 = &v179 - v33;
  MEMORY[0x28223BE20](v34);
  v193 = &v179 - v35;
  MEMORY[0x28223BE20](v36);
  v224 = &v179 - v37;
  MEMORY[0x28223BE20](v38);
  v216 = &v179 - v39;
  MEMORY[0x28223BE20](v40);
  v223 = &v179 - v41;
  MEMORY[0x28223BE20](v42);
  v228 = &v179 - v43;
  MEMORY[0x28223BE20](v44);
  v226 = &v179 - v45;
  MEMORY[0x28223BE20](v46);
  v227 = &v179 - v47;
  MEMORY[0x28223BE20](v48);
  v245 = &v179 - v49;
  v246 = sub_22B35FF8C();
  v242 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v184 = &v179 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v181 = &v179 - v52;
  MEMORY[0x28223BE20](v53);
  v182 = &v179 - v54;
  MEMORY[0x28223BE20](v55);
  v186 = &v179 - v56;
  MEMORY[0x28223BE20](v57);
  v197 = &v179 - v58;
  MEMORY[0x28223BE20](v59);
  v61 = &v179 - v60;
  MEMORY[0x28223BE20](v62);
  v249 = &v179 - v63;
  v200 = type metadata accessor for CDTOUPeak(0);
  v201 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v189 = (&v179 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v65);
  v225 = &v179 - v66;
  Events = type metadata accessor for LoadEventsProcessor.RatePlanPeriod(0);
  v67 = *(Events - 8);
  MEMORY[0x28223BE20](Events);
  v244 = (&v179 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = sub_22B35DDBC();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v239 = &v179 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F55C();
  v251 = a2;
  v252 = MEMORY[0x277D84F90];
  v190 = a2;

  sub_22B1FB4BC(&v251);
  v250 = 0;
  v70 = v251;
  v71 = *(v251 + 16);
  v204 = v25;
  v207 = v67;
  v72 = v246;
  v211 = v71;
  if (!v71)
  {

    v153 = MEMORY[0x277D84F90];
LABEL_88:
    v154 = v196;
    sub_22B35D89C();
    if (*(v153 + 2))
    {
      v155 = v242;
      v156 = v184;
      (*(v242 + 16))(v184, &v153[(*(v155 + 80) + 32) & ~*(v155 + 80)], v72);

      sub_22B35FF7C();
      (*(v155 + 8))(v156, v72);
      v157 = v185;
      v158 = v250;
      sub_22B35DD9C();
      if (v158)
      {

        (*(v21 + 56))(v157, 1, 1, v20);
        v159 = v183;
        sub_22B35D89C();
        (*(v21 + 8))(v154, v20);
        v160 = (*(v21 + 48))(v157, 1, v20);
        v161 = v194;
        if (v160 != 1)
        {
          sub_22B123284(v157, &qword_27D8BA340, &qword_22B363FB0);
        }
      }

      else
      {
        (*(v21 + 8))(v154, v20);

        (*(v21 + 56))(v157, 0, 1, v20);
        v159 = v183;
        (*(v21 + 32))(v183, v157, v20);
        v161 = v194;
      }

      (*(v21 + 32))(v154, v159, v20);
      v25 = v204;
      v67 = v207;
    }

    else
    {

      v161 = v194;
    }

    (*(v21 + 16))(v195, v154, v20);
    v162 = *(v190 + 16);
    v249 = v153;
    if (v162)
    {
      sub_22B170BE0(v190 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * (v162 - 1) + *(Events + 28), v161, &qword_27D8BA340, &qword_22B363FB0);
      if ((*(v21 + 48))(v161, 1, v20) != 1)
      {
        (*(v21 + 32))(v25, v161, v20);
LABEL_101:
        v164 = v191;
        sub_22B35D86C();
        sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v165 = sub_22B36074C();
        v166 = *(v21 + 8);
        v250 = v166;
        v167 = (v165 & 1) == 0;
        if (v165)
        {
          v168 = v25;
        }

        else
        {
          v168 = v164;
        }

        if (v167)
        {
          v169 = v25;
        }

        else
        {
          v169 = v164;
        }

        v166(v168, v20);
        v170 = *(v21 + 32);
        v171 = v192;
        v170(v192, v169, v20);
        v172 = v189;
        *v189 = 0x6465686374697473;
        *(v172 + 8) = 0xE800000000000000;
        v173 = v200;
        v170((v172 + *(v200 + 20)), v195, v20);
        v170((v172 + v173[6]), v171, v20);
        *(v172 + v173[7]) = v249;
        v174 = (v172 + v173[8]);
        *v174 = 0x6465686374697473;
        v174[1] = 0xE800000000000000;
        v175 = (v172 + v173[9]);
        *v175 = 0xD000000000000027;
        v175[1] = 0x800000022B36C380;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA738, &unk_22B3659D0);
        v176 = (*(v201 + 80) + 32) & ~*(v201 + 80);
        v177 = swift_allocObject();
        *(v177 + 16) = xmmword_22B3634B0;
        sub_22B20203C(v172, v177 + v176, type metadata accessor for CDTOUPeak);
        v250(v196, v20);

        (*(v187 + 8))(v239, v188);
        return v177;
      }
    }

    else
    {
      (*(v21 + 56))(v161, 1, 1, v20);
    }

    sub_22B35D86C();
    v163 = v194;
    if ((*(v21 + 48))(v194, 1, v20) != 1)
    {
      sub_22B123284(v163, &qword_27D8BA340, &qword_22B363FB0);
    }

    goto LABEL_101;
  }

  v73 = 0;
  v210 = v251 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
  v237 = v242 + 16;
  v248 = (v21 + 8);
  v214 = (v21 + 16);
  v241 = (v21 + 32);
  v236 = (v21 + 56);
  v232 = (v21 + 48);
  v238 = (v242 + 8);
  v180 = (v242 + 40);
  v205 = a1;
  v202 = v21;
  v198 = v12;
  v222 = v17;
  v221 = v61;
  v209 = v251;
  while (1)
  {
    if (v73 >= *(v70 + 16))
    {
      goto LABEL_114;
    }

    v76 = *(v67 + 72);
    v213 = v73;
    v77 = v244;
    v78 = sub_22B201F74(v210 + v76 * v73, v244, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v75 = MEMORY[0x23188EEB0](v78);
    if (!*(a1 + 16))
    {
      v74 = v213;
      goto LABEL_6;
    }

    v212 = v75;
    v79 = sub_22B33B460(v77);
    if (v80)
    {
      break;
    }

LABEL_5:
    v74 = v213;
    v75 = v212;
LABEL_6:
    objc_autoreleasePoolPop(v75);
    sub_22B201FDC(v244, type metadata accessor for LoadEventsProcessor.RatePlanPeriod);
    v73 = v74 + 1;
    v70 = v209;
    if (v74 + 1 == v211)
    {

      v153 = v252;
      goto LABEL_88;
    }
  }

  v81 = *(*(a1 + 56) + 8 * v79);
  v82 = v81[2];
  if (!v82)
  {
    v98 = MEMORY[0x277D84F90];
    v86 = v203;
    v99 = *(MEMORY[0x277D84F90] + 16);
    if (v99)
    {
      goto LABEL_31;
    }

LABEL_3:

LABEL_4:
    v21 = v202;
    v25 = v204;
    goto LABEL_5;
  }

  v247 = *(v200 + 28);
  v83 = v201;
  v84 = v81 + ((*(v201 + 80) + 32) & ~*(v201 + 80));
  v240 = v81;

  v72 = *(v83 + 72);
  v85 = MEMORY[0x277D84F90];
  v86 = v203;
  do
  {
    v87 = v225;
    sub_22B201F74(v84, v225, type metadata accessor for CDTOUPeak);
    v88 = *(v87 + v247);

    sub_22B201FDC(v87, type metadata accessor for CDTOUPeak);
    v89 = *(v88 + 16);
    v90 = v85[2];
    v91 = v90 + v89;
    if (__OFADD__(v90, v89))
    {
      goto LABEL_109;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = v85;
    if (isUniquelyReferenced_nonNull_native && v91 <= v85[3] >> 1)
    {
      if (!*(v88 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v90 <= v91)
      {
        v94 = v90 + v89;
      }

      else
      {
        v94 = v90;
      }

      v93 = sub_22B32D1C8(isUniquelyReferenced_nonNull_native, v94, 1, v85);
      if (!*(v88 + 16))
      {
LABEL_12:
        v85 = v93;

        if (v89)
        {
          goto LABEL_110;
        }

        goto LABEL_13;
      }
    }

    if ((v93[3] >> 1) - v93[2] < v89)
    {
      goto LABEL_111;
    }

    v85 = v93;
    swift_arrayInitWithCopy();

    if (v89)
    {
      v95 = v85[2];
      v96 = __OFADD__(v95, v89);
      v97 = v95 + v89;
      if (v96)
      {
        goto LABEL_113;
      }

      v85[2] = v97;
    }

LABEL_13:
    v84 += v72;
    --v82;
  }

  while (v82);

  a1 = v205;
  v67 = v207;
  v72 = v246;
  v98 = v85;
  v99 = v85[2];
  if (!v99)
  {
    goto LABEL_3;
  }

LABEL_31:
  v100 = *(Events + 24);
  v208 = (*(v242 + 80) + 32) & ~*(v242 + 80);
  v230 = v98 + v208;
  v231 = v99;
  v101 = v99 - 1;
  v102 = v99 - 1;
  v229 = v100;
  v240 = v98;
  while (2)
  {
    if (v102 + 1 > v98[2])
    {
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
      goto LABEL_115;
    }

    v103 = *(v242 + 72);
    v104 = *(v242 + 16);
    v104(v249, v230 + v103 * v102, v72);
    v105 = v227;
    sub_22B35D89C();
    v106 = sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v107 = v244;
    v247 = v106;
    if (sub_22B36075C())
    {
      (*v241)(v245, v105, v20);
    }

    else
    {
      (*v248)(v105, v20);
      (*v214)(v245, v107 + v100, v20);
    }

    sub_22B35FF7C();
    v108 = v250;
    sub_22B35DD9C();
    v235 = v104;
    if (v108)
    {
      v250 = 0;

      v233 = *v236;
      v233(v86, 1, 1, v20);
      v109 = v226;
      sub_22B35DD2C();
      v110 = (*v232)(v86, 1, v20);
      v72 = v246;
      if (v110 != 1)
      {
        sub_22B123284(v86, &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    else
    {
      v250 = 0;

      v233 = *v236;
      v233(v86, 0, 1, v20);
      v109 = v226;
      (*v241)(v226, v86, v20);
      v72 = v246;
    }

    v111 = v245;
    v112 = sub_22B36074C();
    v113 = v109;
    v114 = v112;
    v115 = *v248;
    (*v248)(v113, v20);
    v115(v111, v20);
    v234 = *v238;
    v234(v249, v72);
    if (v102-- != 0)
    {
      v98 = v240;
      v100 = v229;
      if ((v114 & 1) == 0)
      {
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

  v98 = v240;
LABEL_43:
  v219 = *(Events + 28);
  v199 = v102 + 1;
  v117 = v98 + v208 + v101 * v103;
  v218 = -v103;
  v118 = v222;
  v119 = v223;
  v120 = v221;
  v121 = v231;
  v220 = v115;
  while (1)
  {
    if (v121 > v98[2])
    {
      goto LABEL_112;
    }

    v231 = v121;
    v235(v120, v117, v72);
    sub_22B170BE0(v244 + v219, v118, &qword_27D8BA340, &qword_22B363FB0);
    v122 = *v232;
    if ((*v232)(v118, 1, v20) == 1)
    {
      sub_22B35D86C();
      if (v122(v118, 1, v20) != 1)
      {
        sub_22B123284(v118, &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    else
    {
      (*v241)(v119, v118, v20);
    }

    v123 = v216;
    sub_22B35D86C();
    v124 = sub_22B36074C();
    v125 = (v124 & 1) == 0;
    v126 = (v124 & 1) != 0 ? v119 : v123;
    v127 = v125 ? v119 : v123;
    v115(v126, v20);
    v128 = *v241;
    (*v241)(v228, v127, v20);
    sub_22B35FF7C();
    v129 = v20;
    v130 = v217;
    v131 = v250;
    sub_22B35DD9C();
    v215 = v128;
    if (v131)
    {
      v250 = 0;

      v233(v130, 1, 1, v129);
      sub_22B35DD2C();
      v132 = v122(v130, 1, v129);
      v72 = v246;
      if (v132 != 1)
      {
        sub_22B123284(v130, &qword_27D8BA340, &qword_22B363FB0);
      }

      v20 = v129;
      v118 = v222;
      v133 = v224;
    }

    else
    {
      v250 = 0;

      v233(v130, 0, 1, v129);
      v133 = v224;
      v128(v224, v130, v129);
      v20 = v129;
      v118 = v222;
      v72 = v246;
    }

    v119 = v223;
    v115 = v220;
    v134 = v228;
    v135 = sub_22B35DDFC();
    v115(v133, v20);
    v115(v134, v20);
    v120 = v221;
    v234(v221, v72);
    if (v135)
    {
      break;
    }

    v117 += v218;
    v121 = v231 - 1;
    v98 = v240;
    if (v231 == 1)
    {
      v136 = v240[2];
      if ((v114 & 1) == 0)
      {
        v137 = v199;
        a1 = v205;
        v138 = v198;
        if (v136 < v199)
        {
          goto LABEL_117;
        }

        goto LABEL_68;
      }

LABEL_66:
      v137 = 0;
      a1 = v205;
      v138 = v198;
      goto LABEL_68;
    }
  }

  v98 = v240;
  v136 = v231;
  if (v114)
  {
    goto LABEL_66;
  }

  v137 = v199;
  a1 = v205;
  v138 = v198;
  if (v231 < v199)
  {
    goto LABEL_116;
  }

LABEL_68:
  v139 = v98[2];
  if (v139 < v137 || v139 < v136)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v139 != v136 - v137)
  {
    sub_22B1FB268(v98, v230, v137, (2 * v136) | 1, &qword_27D8BA5B8, &unk_22B367600, MEMORY[0x277D180E0]);
    v152 = v151;

    v139 = v152[2];
    v98 = v152;
  }

  v67 = v207;
  if (!v139)
  {
    goto LABEL_85;
  }

  v240 = v98;
  v140 = v197;
  v235(v197, v98 + v208, v72);
  sub_22B35FF7C();
  v234(v140, v72);
  v141 = v250;
  sub_22B35DD9C();
  if (v141)
  {

    v233(v138, 1, 1, v20);
    sub_22B123284(v138, &qword_27D8BA340, &qword_22B363FB0);
    v250 = 0;
    goto LABEL_83;
  }

  v250 = 0;

  v233(v138, 0, 1, v20);
  v142 = v193;
  v215(v193, v138, v20);
  if ((sub_22B35DDFC() & 1) == 0)
  {
    v115(v142, v20);
LABEL_83:
    v67 = v207;
    v72 = v246;
LABEL_84:
    v98 = v240;
LABEL_85:
    sub_22B355040(v98);
    goto LABEL_4;
  }

  v143 = sub_22B35DDAC();
  v72 = v246;
  if (!v240[2])
  {
    goto LABEL_118;
  }

  v233 = v144;
  v247 = v143;
  v145 = v208;
  v146 = v182;
  v147 = v235;
  v235(v182, v240 + v208, v246);
  sub_22B35FF4C();
  v231 = v148;
  v149 = v234;
  v234(v146, v72);
  if (!v240[2])
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v150 = v181;
  v147(v181, v240 + v145, v72);
  sub_22B35FF5C();
  v149(v150, v72);
  sub_22B35FF6C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v240 = sub_22B206AC4(v240);
  }

  a1 = v205;
  v67 = v207;
  v115(v193, v20);
  if (v240[2])
  {
    (*v180)(v240 + v208, v186, v72);
    goto LABEL_84;
  }

LABEL_120:
  __break(1u);

  __break(1u);
  return result;
}

void sub_22B2000B4(uint64_t a1, uint64_t a2, char *a3, void *a4, __n128 a5)
{
  v51 = a2;
  v56 = a1;
  v55 = sub_22B35E37C();
  v59 = *(v55 - 8);
  MEMORY[0x28223BE20](v55 - 8);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v43 - v12;
  v13 = sub_22B35D8BC();
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x277D84F90];
  v53 = a4;
  v54 = a3;
  v17 = *(a3 + 2);
  v18 = *a4;
  v19 = *a4 < v17;
  v52 = v9;
  v47 = v14;
  if (v19)
  {
    v20 = v14 + 1;
    v21 = (v9 + 8);
    v22 = v18;
    v23 = v58;
    while ((v18 & 0x8000000000000000) == 0)
    {
      v24 = v57;
      MEMORY[0x23188BC90](v15);
      sub_22B35D86C();
      (*v20)(v24, v13);
      sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v25 = sub_22B36074C();
      (*v21)(v23, v8);
      if (v25)
      {
        v18 = v22;
        goto LABEL_9;
      }

      *v53 = ++v22;
      if (v17 == v22)
      {
        return;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v19 = v17 <= v18;
    v26 = (v17 - v18);
    if (!v19)
    {
      v27 = 0;
      v48 = *(v59 + 16);
      v28 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v29 = *(v59 + 72);
      v30 = (v47 + 1);
      v43 = (v52 + 16);
      v44 = (v47 + 1);
      v59 += 16;
      v46 = (v52 + 8);
      v47 = (v59 - 8);
      v45 = v29;
      v31 = &v54[v28 + v18 * v29];
      v32 = v50;
      while (1)
      {
        v33 = v48(v32, v31, v55, v15);
        v34 = v57;
        MEMORY[0x23188BC90](v33);
        v35 = v58;
        sub_22B35D89C();
        v54 = *v30;
        (v54)(v34, v13);
        sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v36 = v51;
        v37 = sub_22B36074C();
        (*v46)(v35, v8);
        if ((v37 & 1) == 0)
        {
          break;
        }

        v52 = v27;
        v38 = *v43;
        (*v43)(v35, v56, v8);
        v53 = v26;
        v38(v49, v36, v8);
        sub_22B35D88C();
        v39 = sub_22B35E35C();
        MEMORY[0x28223BE20](v39);
        *(&v43 - 2) = v34;
        v27 = v52;
        sub_22B1DB41C(sub_22B201F54, (&v43 - 4), v40);
        sub_22B355188(v41);
        (*v47)(v32, v55);
        v42 = v53;
        v30 = v44;
        (v54)(v34, v13);
        v31 += v45;
        v26 = (v42 - 1);
        if (!v26)
        {
          return;
        }
      }

      (*v47)(v32, v55);
    }
  }
}

char *sub_22B200620(uint64_t a1, char *a2, uint64_t a3, uint64_t *a4)
{
  v162 = a3;
  v143 = a1;
  v132 = sub_22B35D8BC();
  v6 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v137 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_22B35DDBC();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v135 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v115 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v13 - 8);
  v130 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v115 - v16;
  v142 = sub_22B35FF8C();
  v145 = *(v142 - 8);
  MEMORY[0x28223BE20](v142 - 8);
  v116 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v129 = &v115 - v20;
  MEMORY[0x28223BE20](v21);
  v156 = &v115 - v22;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA788, &qword_22B365A18);
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v141 = (&v115 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA790, &qword_22B365A20);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v155 = (&v115 - v28);
  v29 = type metadata accessor for CDTOUPeak(0);
  v164 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_22B35DE9C();
  MEMORY[0x28223BE20](v163);
  v131 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v122 = &v115 - v34;
  MEMORY[0x28223BE20](v35);
  v125 = &v115 - v36;
  MEMORY[0x28223BE20](v37);
  v136 = &v115 - v38;
  MEMORY[0x28223BE20](v39);
  v146 = &v115 - v40;
  MEMORY[0x28223BE20](v41);
  v133 = &v115 - v43;
  v165 = a2;
  v44 = *a4;
  v126 = *(a2 + 2);
  v149 = v17;
  v152 = v42;
  if (v44 >= v126)
  {
LABEL_8:
    if (v44 >= v126)
    {
      return MEMORY[0x277D84F90];
    }

    v151 = v12;
    v53 = 0;
    v120 = &v165[(*(v164 + 80) + 32) & ~*(v164 + 80)];
    v119 = *(v164 + 72);
    v139 = (v152 + 8);
    v144 = (v145 + 16);
    v154 = (v159 + 7);
    v153 = (v159 + 6);
    v150 = (v145 + 32);
    v157 = (v145 + 8);
    v158 = (v152 + 56);
    v159 = v8 + 1;
    v140 = (v152 + 32);
    v128 = (v152 + 16);
    v127 = (v6 + 1);
    v117 = MEMORY[0x277D84F90];
    v148 = v26;
    v118 = v29;
    v121 = v31;
LABEL_11:
    v123 = v44;
    sub_22B201F74(&v120[v119 * v44], v31, type metadata accessor for CDTOUPeak);
    v54 = v133;
    sub_22B35D86C();
    v55 = sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v56 = v163;
    v124 = v55;
    v57 = sub_22B36074C();
    v138 = *v139;
    v138(v54, v56);
    if ((v57 & 1) == 0)
    {
      sub_22B201FDC(v31, type metadata accessor for CDTOUPeak);
      return v117;
    }

    MEMORY[0x28223BE20](*&v31[*(v29 + 28)]);
    *(&v115 - 2) = v162;
    v166 = v58;

    sub_22B21AEB4(sub_22B202288, (&v115 - 4));
    v165 = v53;
    if (v53)
    {
      goto LABEL_56;
    }

    v59 = 0;
    v147 = v166;
    v60 = *(v166 + 16);
    v61 = v142;
    v62 = v156;
    v63 = v161;
    v152 = v60;
    if (v60)
    {
LABEL_14:
      if ((v59 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v59 < *(v147 + 16))
      {
        v64 = v59 + 1;
        v65 = v145;
        v66 = v147 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v59;
        v67 = *(v63 + 48);
        v68 = v141;
        *v141 = v59;
        (*(v65 + 16))(v68 + v67, v66, v61);
        sub_22B170CD0(v68, v26, &qword_27D8BA788, &qword_22B365A18);
        v69 = 0;
        v70 = v64;
        v62 = v156;
        goto LABEL_18;
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    while (1)
    {
      while (1)
      {
        v69 = 1;
        v70 = v60;
LABEL_18:
        (*v154)(v26, v69, 1, v63);
        v71 = v155;
        sub_22B170CD0(v26, v155, &qword_27D8BA790, &qword_22B365A20);
        if ((*v153)(v71, 1, v63) == 1)
        {
          v31 = v121;
          sub_22B201FDC(v121, type metadata accessor for CDTOUPeak);

          v44 = v123 + 1;
          v29 = v118;
          v53 = v165;
          if (v123 + 1 == v126)
          {
            return v117;
          }

          goto LABEL_11;
        }

        v164 = v70;
        v72 = *v71;
        v73 = *v150;
        (*v150)(v62, v71 + *(v63 + 48), v61);
        v74 = v151;
        sub_22B35F55C();
        sub_22B35FF7C();
        v75 = v61;
        v76 = v149;
        v77 = v165;
        sub_22B35DD9C();
        if (!v77)
        {
          break;
        }

        (*v159)(v74, v160);
        (*v157)(v62, v75);
        (*v158)(v76, 1, 1, v163);
        sub_22B123284(v76, &qword_27D8BA340, &qword_22B363FB0);
        v165 = 0;
        v61 = v75;
LABEL_21:
        v63 = v161;
        v26 = v148;
        v60 = v152;
        v59 = v164;
        if (v164 != v152)
        {
          goto LABEL_14;
        }
      }

      v134 = v73;
      v78 = v74;
      v79 = v76;
      v80 = *v159;
      (*v159)(v78, v160);

      v81 = *v158;
      v82 = v163;
      (*v158)(v79, 0, 1, v163);
      v83 = *v140;
      (*v140)(v146, v79, v82);
      v84 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_52;
      }

      v85 = v147;
      if (v84 >= *(v147 + 16))
      {
        v165 = 0;
        v92 = v136;
        sub_22B35D86C();
        v61 = v142;
        v62 = v156;
        v63 = v161;
      }

      else
      {
        sub_22B35F55C();
        v86 = v142;
        if ((v84 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        if (v84 >= *(v85 + 16))
        {
          goto LABEL_54;
        }

        v87 = v145;
        v88 = v85 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v84;
        v89 = v129;
        (*(v145 + 16))(v129, v88, v142);
        sub_22B35FF7C();
        (*(v87 + 8))(v89, v86);
        v90 = v130;
        v91 = v135;
        sub_22B35DD9C();
        v165 = 0;
        v80(v91, v160);

        v82 = v163;
        v81(v90, 0, 1, v163);
        v93 = v125;
        v83(v125, v90, v82);
        v94 = sub_22B35DDEC();
        v63 = v161;
        if (v94)
        {
          v95 = v122;
          sub_22B35D86C();
          v96 = sub_22B36074C();
          v61 = v142;
          if (v96)
          {
            v138(v93, v82);
            v92 = v136;
            v97 = v136;
            v98 = v95;
          }

          else
          {
            v138(v95, v82);
            v92 = v136;
            v97 = v136;
            v98 = v93;
          }

          v83(v97, v98, v82);
        }

        else
        {
          v138(v93, v82);
          v61 = v142;
          v92 = v136;
          sub_22B35D86C();
        }

        v62 = v156;
      }

      v99 = v146;
      v100 = sub_22B35DDEC();
      v101 = v137;
      if (v100)
      {
        v102 = *v128;
        (*v128)(v133, v99, v82);
        v102(v131, v92, v82);
        sub_22B35D88C();
        if (sub_22B35D83C())
        {
          (*v144)(v116, v156, v61);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_22B32D1C8(0, *(v117 + 2) + 1, 1, v117);
          }

          v105 = v136;
          v107 = *(v117 + 2);
          v106 = *(v117 + 3);
          if (v107 >= v106 >> 1)
          {
            v117 = sub_22B32D1C8((v106 > 1), v107 + 1, 1, v117);
          }

          (*v127)();
          v108 = v105;
          v109 = v163;
          v110 = v138;
          v138(v108, v163);
          v110(v146, v109);
          v111 = v145;
          v112 = v156;
          (*(v145 + 8))(v156, v61);
          v113 = v117;
          *(v117 + 2) = v107 + 1;
          v62 = v112;
          v134(&v113[((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v107], v116, v61);
          goto LABEL_21;
        }

        (*v127)(v101, v132);
        v103 = v138;
        v138(v92, v82);
        v103(v99, v82);
        v62 = v156;
        (*v157)(v156, v61);
        v63 = v161;
      }

      else
      {
        v104 = v138;
        v138(v92, v82);
        v104(v99, v82);
        (*v157)(v62, v61);
      }

      v60 = v152;
      v59 = v164;
      v26 = v148;
      if (v164 != v152)
      {
        goto LABEL_14;
      }
    }
  }

  v157 = v8;
  v158 = v6;
  v121 = v31;
  v45 = v29;
  v151 = v12;
  v46 = (v42 + 8);
  v117 = MEMORY[0x277D84F90];
  v47 = v44;
  while ((v44 & 0x8000000000000000) == 0)
  {
    v48 = v26;
    v49 = v44;
    v50 = v133;
    sub_22B35D89C();
    sub_22B1FE510(&qword_28140B490, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v51 = v163;
    v52 = sub_22B36074C();
    (*v46)(v50, v51);
    if (v52)
    {
      v44 = v47;
      v12 = v151;
      v29 = v45;
      v31 = v121;
      v26 = v48;
      v8 = v157;
      v6 = v158;
      goto LABEL_8;
    }

    *a4 = ++v47;
    v44 = v49;
    v26 = v48;
    if (v126 == v47)
    {
      return v117;
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:

  __break(1u);
  return result;
}

uint64_t sub_22B2018A0(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_22B35EACC();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_22B35EE8C();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B201A18, 0, 0);
}

uint64_t sub_22B201A18()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_22B35EE7C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    v8 = v0[5];
    v9 = sub_22B35E6AC();
    (*(*(v9 - 8) + 16))(v5, v8, v9);
    v10 = *MEMORY[0x277D174F0];
    v11 = sub_22B35E41C();
    (*(*(v11 - 8) + 104))(v5, v10, v11);
    (*(v6 + 104))(v5, *MEMORY[0x277D17968], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6D0, &qword_22B365968);
    v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v13 = swift_allocObject();
    v0[15] = v13;
    *(v13 + 16) = xmmword_22B3634B0;
    (*(v6 + 16))(v13 + v12, v5, v7);
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_22B201D88;

    return MEMORY[0x282171BF0](v13);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[6];
    v18 = __swift_project_value_buffer(v17, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v15, v18, v17);
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[7];
    v22 = v0[8];
    v24 = v0[6];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22B116000, v19, v20, "[LoadSessionEventUploader] Feature Disabled. Skip submission", v25, 2u);
      MEMORY[0x23188F650](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_22B201D88()
{

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_22B202284, 0, 0);
}

uint64_t sub_22B201F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B201FDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B20203C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22B202100()
{
  result = qword_281409310;
  if (!qword_281409310)
  {
    sub_22B128014(255, &qword_281409318, 0x277CBC5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409310);
  }

  return result;
}

void sub_22B2021A0(uint64_t a1)
{
  sub_22B35DE9C();
  if (v1 <= 0x3F)
  {
    sub_22B180EAC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22B2022FC()
{
  type metadata accessor for HomeServicesManager();
  result = swift_allocObject();
  qword_28140BCB0 = result;
  return result;
}

uint64_t sub_22B20234C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B20240C, 0, 0);
}

uint64_t sub_22B20240C()
{
  v16 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD000000000000018, 0x800000022B368FD0, &v15);
    _os_log_impl(&dword_22B116000, v5, v6, "HomeServicesManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (qword_27D8B9F70 != -1)
  {
    swift_once();
  }

  v13 = qword_27D8BB1A0;
  v0[10] = qword_27D8BB1A0;

  return MEMORY[0x2822009F8](sub_22B202618, v13, 0);
}

uint64_t sub_22B202618()
{
  v1 = sub_22B13534C(v0[5], v0[6]);

  v2 = v0[1];

  return v2(v1 & 1);
}

uint64_t sub_22B20268C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 88) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  v4 = sub_22B36052C();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B202750, 0, 0);
}

uint64_t sub_22B202750()
{
  v16 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD000000000000024, 0x800000022B368FA0, &v15);
    _os_log_impl(&dword_22B116000, v5, v6, "HomeServicesManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (qword_27D8B9F70 != -1)
  {
    swift_once();
  }

  v13 = qword_27D8BB1A0;
  v0[10] = qword_27D8BB1A0;

  return MEMORY[0x2822009F8](sub_22B20295C, v13, 0);
}

uint64_t sub_22B20295C()
{
  sub_22B13580C(*(v0 + 40), *(v0 + 48), *(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B2029CC(double a1, double a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  v3 = sub_22B36052C();
  *(v2 + 56) = v3;
  *(v2 + 64) = *(v3 - 8);
  *(v2 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B202A8C, 0, 0);
}

uint64_t sub_22B202A8C()
{
  v18 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 8);
  v1 = *(v0 + 9);
  v3 = *(v0 + 7);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 8);
  v8 = *(v0 + 9);
  v10 = *(v0 + 7);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B368F70, &v17);
    _os_log_impl(&dword_22B116000, v5, v6, "HomeServicesManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (qword_27D8B9F70 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  *(v0 + 10) = v13;
  *v13 = v0;
  v13[1] = sub_22B203688;
  v14 = v0[5];
  v15 = v0[6];

  return sub_22B136050(v14, v15);
}

uint64_t sub_22B202CC8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B202D88, 0, 0);
}

uint64_t sub_22B202D88()
{
  v18 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD00000000000001ELL, 0x800000022B368F30, &v17);
    _os_log_impl(&dword_22B116000, v5, v6, "HomeServicesManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (qword_27D8B9F70 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_22B203688;
  v15 = v0[5];
  v14 = v0[6];

  return sub_22B1375D8(v15, v14);
}

uint64_t sub_22B202FC8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B203088, 0, 0);
}

uint64_t sub_22B203088()
{
  v18 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD00000000000001DLL, 0x800000022B368F50, &v17);
    _os_log_impl(&dword_22B116000, v5, v6, "HomeServicesManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (qword_27D8B9F70 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_22B2032C8;
  v15 = v0[5];
  v14 = v0[6];

  return sub_22B13695C(v15, v14);
}

uint64_t sub_22B2032C8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22B2033E0()
{
  v1 = sub_22B36052C();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B20349C, 0, 0);
}

uint64_t sub_22B20349C()
{
  v16 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0x6361437261656C63, 0xEC00000029286568, &v15);
    _os_log_impl(&dword_22B116000, v5, v6, "HomeServicesManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  sub_22B3602DC();
  MEMORY[0x23188DB90]();

  v13 = v0[1];

  return v13();
}

uint64_t sub_22B20368C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_22B35E7EC();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B203758, v6, 0);
}

uint64_t sub_22B203758()
{
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v1 = qword_27D8BB1D0;
  *(v0 + 104) = qword_27D8BB1D0;

  return MEMORY[0x2822009F8](sub_22B2037F0, v1, 0);
}

uint64_t sub_22B2037F0()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);

    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v6 = sub_22B2A632C();
      v4 = [v6 newBackgroundContext];
      v7 = sub_22B36081C();
      [v4 setTransactionAuthor_];

      [v4 setMergePolicy_];
      [v4 setUndoManager_];
      [v4 setShouldRefreshAfterSave_];
      [v4 setStalenessInterval_];
      [v4 setShouldDeleteInaccessibleFaults_];

      v3 = 0;
    }

    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v16 = *(v0 + 24);
    v10 = swift_task_alloc();
    v11 = *(v0 + 56);
    *(v10 + 16) = v16;
    *(v10 + 32) = v9;
    *(v10 + 40) = v8;
    *(v10 + 48) = v11;
    *(v10 + 64) = v4;
    *(v10 + 72) = v2;
    v12 = v3;
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA818, &qword_22B365B80);
    sub_22B360E7C();

    v5 = *(v0 + 16);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *(v0 + 112) = v5;
  v14 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_22B203A0C, v14, 0);
}

uint64_t sub_22B203A0C()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  *(v0 + 120) = v2;
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 168) = v6;
    *(v0 + 128) = *(v4 + 56);
    *(v0 + 136) = v5;
    *(v0 + 144) = 0;
    v5(*(v0 + 96), v1 + ((v6 + 32) & ~v6), v3);
    if (qword_27D8B9F78 != -1)
    {
      swift_once();
    }

    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_22B203B68;
    v8 = *(v0 + 96);

    return sub_22B174D34(v8);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_22B203B68()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = swift_task_alloc();
  *(v2 + 160) = v4;
  *v4 = v3;
  v4[1] = sub_22B203CAC;
  v5 = *(v2 + 96);

  return sub_22B1FDE04(v5);
}

uint64_t sub_22B203CAC()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22B203DBC, v1, 0);
}

uint64_t sub_22B203DBC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 144) + 1;
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  if (v2 == v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 144) + 1;
    *(v0 + 144) = v6;
    v5(*(v0 + 96), *(v0 + 112) + ((*(v0 + 168) + 32) & ~*(v0 + 168)) + *(v0 + 128) * v6, *(v0 + 80));
    if (qword_27D8B9F78 != -1)
    {
      swift_once();
    }

    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_22B203B68;
    v8 = *(v0 + 96);

    return sub_22B174D34(v8);
  }
}

uint64_t sub_22B203F38(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_22B35E7EC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_22B35D8BC();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_22B36052C();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = sub_22B35F6FC();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v7 = sub_22B35E0BC();
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v8 = sub_22B35DE9C();
  v2[32] = v8;
  v2[33] = *(v8 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2042B0, v1, 0);
}

uint64_t sub_22B2042B0(uint64_t a1)
{
  v2 = v1[42];
  v3 = v1[32];
  v4 = v1[33];
  v5 = v1[27];
  v6 = v1[28];
  v7 = v1[26];
  sub_22B35DE6C();
  sub_22B35DDCC();
  v8 = *(v4 + 8);
  v1[45] = v8;
  v1[46] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v3);
  sub_22B35E08C();
  v56 = *(v6 + 48);
  v9 = v56(v7, 1, v5);
  if (v9 == 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = v1[43];
  v14 = v1[31];
  v13 = v1[32];
  v15 = v1[27];
  v16 = v1[28];
  v54 = *(v16 + 32);
  v54(v14, v1[26], v15);
  sub_22B35F50C();
  v53 = *(v16 + 8);
  v53(v14, v15);
  v55 = v8;
  v8(v12, v13);
  if (sub_22B35EEBC())
  {
    if (qword_27D8B9FF8 != -1)
    {
      swift_once();
    }

    v18 = v1[22];
    v17 = v1[23];
    v20 = v1[20];
    v19 = v1[21];
    v21 = __swift_project_value_buffer(v20, qword_27D8BB230);
    swift_beginAccess();
    v50 = *(v19 + 16);
    v51 = v21;
    v50(v17, v21, v20);
    sub_22B35F6AC();
    sub_22B2062E8(&qword_27D8BA820, MEMORY[0x277D07408], MEMORY[0x277D07410]);
    LOBYTE(v21) = sub_22B36103C();
    v22 = *(v19 + 8);
    v22(v18, v20);
    v22(v17, v20);
    if (v21)
    {
      v24 = v1[22];
      v23 = v1[23];
      v25 = v1[20];
      v50(v23, v51, v25);
      sub_22B35F6BC();
      v26 = sub_22B36103C();
      v22(v24, v25);
      v22(v23, v25);
      if (v26 & 1) != 0 || (v28 = v1[22], v27 = v1[23], v29 = v1[20], v50(v27, v51, v29), sub_22B35F6CC(), v30 = sub_22B36103C(), v22(v28, v29), v22(v27, v29), (v30))
      {
        v31 = v1[42];
        v32 = v1[32];
        v33 = v1[27];
        v34 = v1[25];
        sub_22B35DE6C();
        sub_22B35DDCC();
        v55(v31, v32);
        sub_22B35E08C();
        v9 = v56(v34, 1, v33);
        if (v9 == 1)
        {
LABEL_18:
          __break(1u);
          return MEMORY[0x2822009F8](v9, v10, v11);
        }

        v52 = v1[44];
        v36 = v1[40];
        v35 = v1[41];
        v37 = v1[32];
        v38 = v1[33];
        v39 = v1[30];
        v40 = v1[27];
        v54(v39, v1[25], v40);
        sub_22B35F50C();
        v53(v39, v40);
        v55(v36, v37);
        v55(v52, v37);
        (*(v38 + 32))(v52, v35, v37);
      }
    }
  }

  v41 = v1[42];
  v42 = v1[32];
  v43 = v1[27];
  v44 = v1[24];
  sub_22B35DE6C();
  sub_22B35DDCC();
  v55(v41, v42);
  sub_22B35E08C();
  v9 = v56(v44, 1, v43);
  if (v9 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v45 = v1[38];
  v46 = v1[32];
  v47 = v1[29];
  v48 = v1[27];
  v54(v47, v1[24], v48);
  sub_22B35F50C();
  v53(v47, v48);
  v55(v45, v46);
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v10 = qword_27D8BB1D0;
  v1[47] = qword_27D8BB1D0;
  v9 = sub_22B204848;
  v11 = 0;

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22B204848()
{
  v1 = v0[10];
  v0[48] = sub_22B248940(v0[9], v0[44]);

  return MEMORY[0x2822009F8](sub_22B2048BC, v1, 0);
}

uint64_t sub_22B2048BC()
{
  if (qword_27D8B9F78 != -1)
  {
    swift_once();
  }

  v1 = qword_27D8BB1A8;
  *(v0 + 392) = qword_27D8BB1A8;

  return MEMORY[0x2822009F8](sub_22B204954, v1, 0);
}

uint64_t sub_22B204954()
{
  v1 = v0[10];
  v0[50] = sub_22B174B48(v0[9]);

  return MEMORY[0x2822009F8](sub_22B2049C4, v1, 0);
}

uint64_t sub_22B2049C4()
{
  v1 = 0;
  v2 = *(v0 + 384);
  v3 = *(v2 + 32);
  *(v0 + 540) = v3;
  v4 = 1 << v3;
  v5 = *(v2 + 56);
  v6 = v4 < 64;
  v7 = -1 << v4;
  if (v6)
  {
    v8 = ~v7;
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  *(v0 + 408) = 0;
  if ((v8 & v5) != 0)
  {
    do
    {
      v10 = *(v0 + 384);
LABEL_10:
      *(v0 + 416) = v9;
      *(v0 + 424) = v1;
      v12 = (*(v10 + 48) + ((v1 << 11) | (32 * __clz(__rbit64(v9)))));
      v13 = *v12;
      *(v0 + 432) = *v12;
      v14 = v12[1];
      *(v0 + 440) = v14;
      v15 = v12[2];
      *(v0 + 448) = v15;
      v16 = v12[3];
      *(v0 + 456) = v16;

      if (sub_22B360BFC())
      {

        if (qword_28140A0C8 != -1)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      }

      v17 = *(v0 + 264);
      if (*(*(v0 + 400) + 16))
      {
        v18 = sub_22B33B790(v13, v14, v15, v16);
        v19 = *(v17 + 16);
        v20 = *(v0 + 264);
        if (v21)
        {
          v23 = *(v0 + 288);
          v22 = *(v0 + 296);
          v24 = *(v0 + 256);
          v19(v23, *(*(v0 + 400) + 56) + *(v20 + 72) * v18, v24);
          (*(v20 + 32))(v22, v23, v24);
          goto LABEL_16;
        }
      }

      else
      {
        v19 = *(v17 + 16);
      }

      v19(*(v0 + 296), *(v0 + 352), *(v0 + 256));
LABEL_16:
      v19(*(v0 + 280), *(v0 + 312), *(v0 + 256));
      sub_22B2062E8(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      if (sub_22B36074C())
      {
        v49 = *(v0 + 376);
        v51 = *(v0 + 272);
        v50 = *(v0 + 280);
        v52 = *(v0 + 256);
        v19(*(v0 + 336), *(v0 + 296), v52);
        v19(v51, v50, v52);
        sub_22B35D88C();

        return MEMORY[0x2822009F8](sub_22B204FDC, v49, 0);
      }

      v9 &= v9 - 1;
      v25 = *(v0 + 360);
      v26 = *(v0 + 296);
      v27 = *(v0 + 280);
      v28 = *(v0 + 256);

      v25(v27, v28);
      v25(v26, v28);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v11 >= (((1 << *(v0 + 540)) + 63) >> 6))
    {
      v29 = *(v0 + 360);
      v30 = *(v0 + 352);
      v31 = *(v0 + 312);
      v32 = *(v0 + 256);

      v29(v31, v32);
      v29(v30, v32);

      goto LABEL_20;
    }

    v10 = *(v0 + 384);
    v9 = *(v10 + 8 * v11 + 56);
    ++v1;
    if (v9)
    {
      v1 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_24:
  v36 = *(v0 + 144);
  v35 = *(v0 + 152);
  v37 = *(v0 + 136);
  v38 = __swift_project_value_buffer(v37, qword_28140BD10);
  swift_beginAccess();
  (*(v36 + 16))(v35, v38, v37);
  v39 = sub_22B36050C();
  v40 = sub_22B360D1C();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 360);
  v43 = *(v0 + 352);
  v55 = *(v0 + 312);
  v44 = *(v0 + 256);
  v45 = *(v0 + 144);
  v54 = *(v0 + 152);
  v46 = *(v0 + 136);
  if (v41)
  {
    v53 = *(v0 + 352);
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_22B116000, v39, v40, "[LoadEventsProcessor] Task was cancelled", v47, 2u);
    MEMORY[0x23188F650](v47, -1, -1);

    (*(v45 + 8))(v54, v46);
    v42(v55, v44);
    v48 = v53;
  }

  else
  {

    (*(v45 + 8))(v54, v46);
    v42(v55, v44);
    v48 = v43;
  }

  v42(v48, v44);
LABEL_20:

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22B204FDC()
{
  v1 = v0[47];
  if (*(v1 + 120))
  {
    v2 = *(v1 + 112);
    v20 = *(v1 + 120);

    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v6 = sub_22B2A632C();
      v3 = [v6 newBackgroundContext];
      v7 = sub_22B36081C();
      [v3 setTransactionAuthor_];

      [v3 setMergePolicy_];
      [v3 setUndoManager_];
      [v3 setShouldRefreshAfterSave_];
      [v3 setStalenessInterval_];
      [v3 setShouldDeleteInaccessibleFaults_];
    }

    v9 = v0[56];
    v8 = v0[57];
    v11 = v0[54];
    v10 = v0[55];
    v19 = v0[51];
    v12 = v0[16];
    v13 = v0[9];
    v14 = swift_task_alloc();
    v14[2] = v13;
    v14[3] = v11;
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v8;
    v14[7] = v12;
    v14[8] = v3;
    v14[9] = v20;
    v15 = v2;
    v16 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA818, &qword_22B365B80);
    v4 = v19;
    sub_22B360E7C();

    v5 = v0[8];
  }

  else
  {
    v4 = v0[51];
    v5 = MEMORY[0x277D84F90];
  }

  v0[58] = v4;
  v0[59] = v5;
  v17 = v0[10];

  return MEMORY[0x2822009F8](sub_22B205204, v17, 0);
}

uint64_t sub_22B205204()
{
  v1 = *(v0 + 472);
  v2 = *(v1 + 16);
  *(v0 + 480) = v2;
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 536) = v6;
    *(v0 + 488) = *(v4 + 56);
    *(v0 + 496) = v5;
    *(v0 + 504) = 0;
    v5(*(v0 + 104), v1 + ((v6 + 32) & ~v6), v3);
    v7 = swift_task_alloc();
    *(v0 + 512) = v7;
    *v7 = v0;
    v7[1] = sub_22B20592C;
    v8 = *(v0 + 104);

    return sub_22B174D34(v8);
  }

  v10 = *(v0 + 464);
  v11 = *(v0 + 360);
  v12 = *(v0 + 296);
  v13 = *(v0 + 280);
  v14 = *(v0 + 256);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = *(v0 + 112);

  (*(v16 + 8))(v15, v17);
  v11(v13, v14);
  v11(v12, v14);
  v18 = *(v0 + 424);
  v19 = (*(v0 + 416) - 1) & *(v0 + 416);
  *(v0 + 408) = v10;
  if (!v19)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v20 = *(v0 + 384);
LABEL_11:
    *(v0 + 416) = v19;
    *(v0 + 424) = v18;
    v22 = (*(v20 + 48) + ((v18 << 11) | (32 * __clz(__rbit64(v19)))));
    v23 = *v22;
    *(v0 + 432) = *v22;
    v24 = v22[1];
    *(v0 + 440) = v24;
    v25 = v22[2];
    *(v0 + 448) = v25;
    v26 = v22[3];
    *(v0 + 456) = v26;

    if (sub_22B360BFC())
    {
      break;
    }

    v27 = *(v0 + 264);
    if (!*(*(v0 + 400) + 16))
    {
      v29 = *(v27 + 16);
LABEL_16:
      v29(*(v0 + 296), *(v0 + 352), *(v0 + 256));
      goto LABEL_17;
    }

    v28 = sub_22B33B790(v23, v24, v25, v26);
    v29 = *(v27 + 16);
    v30 = *(v0 + 264);
    if ((v31 & 1) == 0)
    {
      goto LABEL_16;
    }

    v33 = *(v0 + 288);
    v32 = *(v0 + 296);
    v34 = *(v0 + 256);
    v29(v33, *(*(v0 + 400) + 56) + *(v30 + 72) * v28, v34);
    (*(v30 + 32))(v32, v33, v34);
LABEL_17:
    v29(*(v0 + 280), *(v0 + 312), *(v0 + 256));
    sub_22B2062E8(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    if (sub_22B36074C())
    {
      v58 = *(v0 + 376);
      v60 = *(v0 + 272);
      v59 = *(v0 + 280);
      v61 = *(v0 + 256);
      v29(*(v0 + 336), *(v0 + 296), v61);
      v29(v60, v59, v61);
      sub_22B35D88C();

      return MEMORY[0x2822009F8](sub_22B204FDC, v58, 0);
    }

    v19 &= v19 - 1;
    v35 = *(v0 + 360);
    v36 = *(v0 + 296);
    v37 = *(v0 + 280);
    v38 = *(v0 + 256);

    v35(v37, v38);
    v35(v36, v38);
    if (!v19)
    {
LABEL_7:
      while (1)
      {
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v21 >= (((1 << *(v0 + 540)) + 63) >> 6))
        {
          v39 = *(v0 + 360);
          v40 = *(v0 + 352);
          v41 = *(v0 + 312);
          v42 = *(v0 + 256);

          v39(v41, v42);
          v39(v40, v42);

          goto LABEL_21;
        }

        v20 = *(v0 + 384);
        v19 = *(v20 + 8 * v21 + 56);
        ++v18;
        if (v19)
        {
          v18 = v21;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_33;
    }
  }

  if (qword_28140A0C8 == -1)
  {
    goto LABEL_25;
  }

LABEL_33:
  swift_once();
LABEL_25:
  v45 = *(v0 + 144);
  v44 = *(v0 + 152);
  v46 = *(v0 + 136);
  v47 = __swift_project_value_buffer(v46, qword_28140BD10);
  swift_beginAccess();
  (*(v45 + 16))(v44, v47, v46);
  v48 = sub_22B36050C();
  v49 = sub_22B360D1C();
  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 360);
  v52 = *(v0 + 352);
  v64 = *(v0 + 312);
  v53 = *(v0 + 256);
  v54 = *(v0 + 144);
  v63 = *(v0 + 152);
  v55 = *(v0 + 136);
  if (v50)
  {
    v62 = *(v0 + 352);
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_22B116000, v48, v49, "[LoadEventsProcessor] Task was cancelled", v56, 2u);
    MEMORY[0x23188F650](v56, -1, -1);

    (*(v54 + 8))(v63, v55);
    v51(v64, v53);
    v57 = v62;
  }

  else
  {

    (*(v54 + 8))(v63, v55);
    v51(v64, v53);
    v57 = v52;
  }

  v51(v57, v53);
LABEL_21:

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_22B20592C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v2[65] = 0;
  v4 = swift_task_alloc();
  v2[66] = v4;
  *v4 = v3;
  v4[1] = sub_22B205A74;
  v5 = v2[13];

  return sub_22B1FDE04(v5);
}

uint64_t sub_22B205A74()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_22B205B84, v1, 0);
}

uint64_t sub_22B205B84()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 504) + 1;
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  if (v2 != v1)
  {
    v32 = *(v0 + 496);
    v33 = *(v0 + 504) + 1;
    *(v0 + 504) = v33;
    v32(*(v0 + 104), *(v0 + 472) + ((*(v0 + 536) + 32) & ~*(v0 + 536)) + *(v0 + 488) * v33, *(v0 + 88));
    v34 = swift_task_alloc();
    *(v0 + 512) = v34;
    *v34 = v0;
    v34[1] = sub_22B20592C;
    v35 = *(v0 + 104);

    return sub_22B174D34(v35);
  }

  v3 = *(v0 + 520);
  v4 = *(v0 + 360);
  v5 = *(v0 + 296);
  v6 = *(v0 + 280);
  v7 = *(v0 + 256);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 112);

  (*(v9 + 8))(v8, v10);
  v4(v6, v7);
  v4(v5, v7);
  v11 = *(v0 + 424);
  v12 = (*(v0 + 416) - 1) & *(v0 + 416);
  *(v0 + 408) = v3;
  if (!v12)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v13 = *(v0 + 384);
LABEL_8:
    *(v0 + 416) = v12;
    *(v0 + 424) = v11;
    v15 = (*(v13 + 48) + ((v11 << 11) | (32 * __clz(__rbit64(v12)))));
    v16 = *v15;
    *(v0 + 432) = *v15;
    v17 = v15[1];
    *(v0 + 440) = v17;
    v18 = v15[2];
    *(v0 + 448) = v18;
    v19 = v15[3];
    *(v0 + 456) = v19;

    if (sub_22B360BFC())
    {
      break;
    }

    v20 = *(v0 + 264);
    if (!*(*(v0 + 400) + 16))
    {
      v22 = *(v20 + 16);
LABEL_13:
      v22(*(v0 + 296), *(v0 + 352), *(v0 + 256));
      goto LABEL_14;
    }

    v21 = sub_22B33B790(v16, v17, v18, v19);
    v22 = *(v20 + 16);
    v23 = *(v0 + 264);
    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }

    v26 = *(v0 + 288);
    v25 = *(v0 + 296);
    v27 = *(v0 + 256);
    v22(v26, *(*(v0 + 400) + 56) + *(v23 + 72) * v21, v27);
    (*(v23 + 32))(v25, v26, v27);
LABEL_14:
    v22(*(v0 + 280), *(v0 + 312), *(v0 + 256));
    sub_22B2062E8(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    if (sub_22B36074C())
    {
      v56 = *(v0 + 376);
      v58 = *(v0 + 272);
      v57 = *(v0 + 280);
      v59 = *(v0 + 256);
      v22(*(v0 + 336), *(v0 + 296), v59);
      v22(v58, v57, v59);
      sub_22B35D88C();

      return MEMORY[0x2822009F8](sub_22B204FDC, v56, 0);
    }

    v12 &= v12 - 1;
    v28 = *(v0 + 360);
    v29 = *(v0 + 296);
    v30 = *(v0 + 280);
    v31 = *(v0 + 256);

    v28(v30, v31);
    v28(v29, v31);
    if (!v12)
    {
LABEL_4:
      while (1)
      {
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v14 >= (((1 << *(v0 + 540)) + 63) >> 6))
        {
          v37 = *(v0 + 360);
          v38 = *(v0 + 352);
          v39 = *(v0 + 312);
          v40 = *(v0 + 256);

          v37(v39, v40);
          v37(v38, v40);

          goto LABEL_21;
        }

        v13 = *(v0 + 384);
        v12 = *(v13 + 8 * v14 + 56);
        ++v11;
        if (v12)
        {
          v11 = v14;
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_33;
    }
  }

  if (qword_28140A0C8 == -1)
  {
    goto LABEL_25;
  }

LABEL_33:
  swift_once();
LABEL_25:
  v43 = *(v0 + 144);
  v42 = *(v0 + 152);
  v44 = *(v0 + 136);
  v45 = __swift_project_value_buffer(v44, qword_28140BD10);
  swift_beginAccess();
  (*(v43 + 16))(v42, v45, v44);
  v46 = sub_22B36050C();
  v47 = sub_22B360D1C();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 360);
  v50 = *(v0 + 352);
  v62 = *(v0 + 312);
  v51 = *(v0 + 256);
  v52 = *(v0 + 144);
  v61 = *(v0 + 152);
  v53 = *(v0 + 136);
  if (v48)
  {
    v60 = *(v0 + 352);
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_22B116000, v46, v47, "[LoadEventsProcessor] Task was cancelled", v54, 2u);
    MEMORY[0x23188F650](v54, -1, -1);

    (*(v52 + 8))(v61, v53);
    v49(v62, v51);
    v55 = v60;
  }

  else
  {

    (*(v52 + 8))(v61, v53);
    v49(v62, v51);
    v55 = v50;
  }

  v49(v55, v51);
LABEL_21:

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_22B2062E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static PeakFinder.queryListWithDateRank(list:queryDate:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a2;
  v5 = sub_22B35DE9C();
  v86 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  MEMORY[0x28223BE20](v18);
  v67 = &v58 - v19;
  v20 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_22B206AD8(v20);
  }

  v21 = *(v20 + 16);
  v75 = v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  if (v21)
  {
    v62 = v20;
    v73 = v14;
    v60 = v11;
    v79 = v7;
    v63 = a1;
    v66 = v8;
    v65 = a3;
    v20 = 0;
    v64 = v9;
    v22 = *(v9 + 72);
    v61 = -v22;
    v74 = v17;
    v23 = v75;
    v80 = v5;
    v77 = (v86 + 8);
    v78 = v22;
LABEL_5:
    v24 = v22 * v20;
    v25 = (v22 + v22 * (v20 - v21));
    v26 = v67;
    v82 = v21;
    while (1)
    {
      v84 = v25;
      v85 = v24;
      v86 = v20;
      sub_22B2071B4(v23 + v24, v26);
      sub_22B2071B4(v26, v17);
      v27 = v79;
      sub_22B35EF8C();
      v28 = sub_22B35EFAC();
      v29 = *(v28 - 8);
      a1 = *(v29 + 8);
      v83 = v29 + 8;
      (a1)(v17, v28);
      v30 = sub_22B207224();
      v31 = v26;
      v32 = v80;
      v76 = v30;
      v33 = sub_22B36074C();
      v34 = *v77;
      (*v77)(v27, v32);
      if (v33)
      {
        sub_22B20727C(v31);
        v26 = v31;
      }

      else
      {
        sub_22B2071B4(v31, v17);
        sub_22B35EF7C();
        (a1)(v17, v28);
        v35 = sub_22B35DDEC();
        v34(v27, v32);
        sub_22B20727C(v31);
        v26 = v31;
        if (v35)
        {
          v36 = v34;
          v69 = a1;
          v70 = v28;
          v23 = v75;
          v59 = v75 + v85;
          v37 = v82 - 1;
          v38 = v78 * (v82 - 1);
          v39 = v61 * v82;
          v17 = v74;
          v40 = v84;
          v68 = v34;
          while (1)
          {
            v20 = v86;
            if (v86 >= v37)
            {
              break;
            }

            v41 = v38;
            v72 = v39;
            v84 = v40;
            v82 = v37;
            v42 = v73;
            sub_22B2071B4(v23 + v38, v73);
            sub_22B2071B4(v42, v17);
            v43 = v79;
            sub_22B35EF8C();
            v44 = v69;
            v45 = v70;
            (v69)(v17, v70);
            v71 = v41;
            v46 = v80;
            v47 = sub_22B36074C();
            v36(v43, v46);
            if (v47)
            {
              sub_22B20727C(v73);
              v21 = v82;
              v22 = v78;
              v51 = v71;
              v52 = v72;
              a1 = v84;
LABEL_16:
              v53 = v86;
              if (v86 != v21)
              {
                v54 = v59;
                sub_22B2072E4(v59, v60);
                if (v85 < v51 || v54 >= v23 - v52)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (a1)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_22B2072E4(v60, v23 + v51);
                v21 = v82;
              }

              v20 = v53 + 1;
              if (v20 < v21)
              {
                goto LABEL_5;
              }

              break;
            }

            sub_22B2071B4(v73, v17);
            sub_22B35EF7C();
            (v44)(v17, v45);
            v48 = sub_22B35DDEC();
            v49 = v43;
            v50 = v68;
            v68(v49, v46);
            sub_22B20727C(v73);
            v21 = v82;
            v37 = v82 - 1;
            v22 = v78;
            a1 = v84;
            v40 = (v84 + v78);
            v51 = v71;
            v52 = v72;
            v38 = v71 - v78;
            v39 = v72 + v78;
            v36 = v50;
            if ((v48 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

LABEL_24:
          v55 = v62;
          *v63 = v62;
          if (v20 >= *(v55 + 16))
          {
            v56 = 1;
            a3 = v65;
            v8 = v66;
            v9 = v64;
          }

          else
          {
            a3 = v65;
            v8 = v66;
            v9 = v64;
            if (v20 < 0)
            {
              __break(1u);
              break;
            }

LABEL_29:
            sub_22B2071B4(v23 + *(v9 + 72) * v20, a3);
            v56 = 0;
          }

          return (*(v9 + 56))(a3, v56, 1, v8);
        }
      }

      v20 = v86 + 1;
      v24 = v85 + v78;
      v25 = (v84 + v78);
      v17 = v74;
      v23 = v75;
      if (v86 + 1 >= v82)
      {
        goto LABEL_24;
      }
    }
  }

  *a1 = v20;
  if (*(v20 + 16))
  {
    v20 = 0;
    v23 = v75;
    goto LABEL_29;
  }

  v56 = 1;
  return (*(v9 + 56))(a3, v56, 1, v8);
}

uint64_t sub_22B206AEC(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v75 = a2;
  v3 = sub_22B35DE9C();
  v80 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v19);
  v62 = &v54 - v20;
  v21 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_22B206AD8(v21);
  }

  v22 = *(v21 + 2);
  v70 = (v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
  if (v22)
  {
    v60 = v21;
    v68 = v15;
    v59 = v6;
    v58 = v9;
    v61 = a1;
    v23 = 0;
    v57 = v7;
    v24 = *(v7 + 72);
    v56 = -v24;
    v69 = v18;
    v25 = v5;
    v73 = v3;
    v55 = v12;
    v74 = v24;
    v72 = (v80 + 8);
LABEL_5:
    v26 = v24 * v23;
    v27 = v24 + v24 * (v23 - v22);
    v28 = v62;
    v29 = v70;
    v76 = v22;
    while (1)
    {
      v78 = v27;
      v79 = v26;
      v80 = v23;
      sub_22B2071B4(v29 + v26, v28);
      sub_22B2071B4(v28, v18);
      sub_22B35EF8C();
      v30 = sub_22B35EFAC();
      v31 = *(v30 - 8);
      v32 = *(v31 + 8);
      v77 = v31 + 8;
      v32(v18, v30);
      v33 = sub_22B207224();
      v34 = v28;
      v35 = v73;
      v71 = v33;
      a1 = sub_22B36074C();
      v21 = *v72;
      (*v72)(v25, v35);
      if (a1)
      {
        sub_22B20727C(v34);
        v28 = v34;
      }

      else
      {
        sub_22B2071B4(v34, v18);
        sub_22B35EF7C();
        v32(v18, v30);
        a1 = sub_22B35DDEC();
        v21(v25, v35);
        sub_22B20727C(v34);
        v28 = v34;
        if (a1)
        {
          v63 = v30;
          v64 = v32;
          v29 = v70;
          v54 = v70 + v79;
          v36 = v76 - 1;
          v37 = v74 * (v76 - 1);
          v38 = v56 * v76;
          v18 = v69;
          v23 = v80;
          v39 = v78;
          v67 = v21;
          while (v23 < v36)
          {
            v40 = v37;
            v66 = v38;
            v78 = v39;
            v76 = v36;
            v41 = v68;
            sub_22B2071B4(v29 + v37, v68);
            sub_22B2071B4(v41, v18);
            sub_22B35EF8C();
            v42 = v63;
            v65 = v40;
            v43 = v64;
            v64(v18, v63);
            v21 = v75;
            v44 = v73;
            a1 = sub_22B36074C();
            v67(v25, v44);
            if (a1)
            {
              sub_22B20727C(v68);
              v22 = v76;
              v24 = v74;
              v23 = v80;
              v46 = v65;
              v47 = v66;
              v45 = v78;
LABEL_16:
              v48 = v55;
              if (v23 != v22)
              {
                v49 = v54;
                sub_22B2072E4(v54, v55);
                if (v79 < v46 || v49 >= v70 - v47)
                {
                  v21 = v70;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v21 = v70;
                  if (v45)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                sub_22B2072E4(v48, v21 + v46);
                v22 = v76;
                v24 = v74;
              }

              if (++v23 >= v22)
              {
                v29 = v70;
                break;
              }

              goto LABEL_5;
            }

            sub_22B2071B4(v68, v18);
            sub_22B35EF7C();
            v43(v18, v42);
            a1 = sub_22B35DDEC();
            v21 = v67;
            v67(v25, v44);
            sub_22B20727C(v68);
            v22 = v76;
            v36 = v76 - 1;
            v24 = v74;
            v45 = v78;
            v39 = v78 + v74;
            v46 = v65;
            v47 = v66;
            v37 = v65 - v74;
            v38 = v66 + v74;
            v23 = v80;
            if ((a1 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

LABEL_25:
          v50 = v60;
          *v61 = v60;
          if (v23 >= *(v50 + 2))
          {
            return 0;
          }

          v9 = v58;
          v6 = v59;
          v7 = v57;
          if (v23 < 0)
          {
            __break(1u);
            break;
          }

LABEL_30:
          sub_22B2071B4(v29 + *(v7 + 72) * v23, v18);
          v51 = *(v6 + 48);
          v23 = *&v18[v51];
          v52 = sub_22B35EFAC();
          (*(*(v52 - 8) + 32))(v9, v18, v52);
          *&v9[v51] = v23;
          sub_22B20727C(v9);
          return v23;
        }
      }

      v23 = v80 + 1;
      v26 = v79 + v74;
      v27 = v78 + v74;
      v18 = v69;
      v29 = v70;
      if (v80 + 1 >= v76)
      {
        goto LABEL_25;
      }
    }
  }

  v23 = 0;
  *a1 = v21;
  if (*(v21 + 2))
  {
    v29 = v70;
    goto LABEL_30;
  }

  return v23;
}

uint64_t sub_22B2071B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B207224()
{
  result = qword_28140B490;
  if (!qword_28140B490)
  {
    sub_22B35DE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140B490);
  }

  return result;
}

uint64_t sub_22B20727C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B2072E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22B207390(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v53 = *MEMORY[0x277D85DE8];
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v44[-v10];
  result = [v2 hasChanges];
  if (result)
  {
    v51 = v2;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v14 = v5[2];
    v47 = v5 + 2;
    v48 = v13;
    v46 = v14;
    v14(v11, v13, v4);
    v15 = sub_22B36050C();
    v16 = sub_22B360D0C();
    v17 = os_log_type_enabled(v15, v16);
    v45 = v3;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v50 = v4;
      v19 = v18;
      v20 = swift_slowAlloc();
      v52 = v20;
      *v19 = 136315138;
      v21 = sub_22B20EC98(v3);
      v49 = v7;
      v23 = sub_22B1A7B20(v21, v22, &v52);
      v7 = v49;

      *(v19 + 4) = v23;
      _os_log_impl(&dword_22B116000, v15, v16, "[CoreDataCloudKitStack] Saving changes for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23188F650](v20, -1, -1);
      v24 = v19;
      v4 = v50;
      MEMORY[0x23188F650](v24, -1, -1);
    }

    v25 = v5[1];
    v25(v11, v4);
    v52 = 0;
    if ([v51 save_])
    {
      return v52;
    }

    else
    {
      v26 = v52;
      v27 = sub_22B35DB9C();

      v28 = v27;
      swift_willThrow();
      v46(v7, v48, v4);
      v29 = v27;
      v30 = sub_22B36050C();
      v31 = sub_22B360D0C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v51 = v5;
        v33 = v32;
        v34 = swift_slowAlloc();
        v50 = v4;
        v35 = v34;
        v36 = swift_slowAlloc();
        v52 = v36;
        *v33 = 136315394;
        v37 = sub_22B20EC98(v45);
        v49 = v7;
        v39 = sub_22B1A7B20(v37, v38, &v52);

        *(v33 + 4) = v39;
        *(v33 + 12) = 2112;
        v40 = v28;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v41;
        *v35 = v41;
        _os_log_impl(&dword_22B116000, v30, v31, "[CoreDataCloudKitStack] Error saving changes for %s. %@", v33, 0x16u);
        sub_22B123284(v35, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x23188F650](v36, -1, -1);
        MEMORY[0x23188F650](v33, -1, -1);

        v42 = v50;
        v43 = v49;
      }

      else
      {

        v43 = v7;
        v42 = v4;
      }

      v25(v43, v42);
      return swift_willThrow();
    }
  }

  return result;
}

id sub_22B207820()
{
  v1 = sub_22B360D5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22B35DC4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v17[-v11];
  result = *(v0 + 112);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = [result URL];
  if (!result)
  {
    return result;
  }

  v14 = result;
  sub_22B35DC0C();

  (*(v6 + 32))(v12, v8, v5);
  result = *(v0 + 112);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v15 = [result persistentStoreCoordinator];
  if (v15)
  {
    v16 = v15;
    sub_22B360D4C();
    sub_22B360F2C();

    (*(v2 + 8))(v4, v1);
  }

  return (*(v6 + 8))(v12, v5);
}

id sub_22B207A4C()
{
  v1 = sub_22B360D5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22B35DC4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v17[-v11];
  result = *(v0 + 120);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = [result URL];
  if (!result)
  {
    return result;
  }

  v14 = result;
  sub_22B35DC0C();

  (*(v6 + 32))(v12, v8, v5);
  result = *(v0 + 120);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v15 = [result persistentStoreCoordinator];
  if (v15)
  {
    v16 = v15;
    sub_22B360D4C();
    sub_22B360F2C();

    (*(v2 + 8))(v4, v1);
  }

  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_22B207C78(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22B207D24(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x23188EAC0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_22B36109C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_22B207E4C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

id sub_22B207EFC()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[18];
  }

  else
  {
    v3 = sub_22B207F58(v0);
    v4 = v0[18];
    v0[18] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_22B207F58(void *a1)
{
  v253 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  MEMORY[0x28223BE20](v1 - 8);
  v224 = &v214 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v214 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v214 - v7;
  MEMORY[0x28223BE20](v9);
  v221 = &v214 - v10;
  v250 = sub_22B35DC4C();
  v252 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v246 = &v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v247 = &v214 - v13;
  MEMORY[0x28223BE20](v14);
  v251 = &v214 - v15;
  v16 = sub_22B36052C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v214 = &v214 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v214 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v214 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v214 - v26;
  if (qword_28140A0C8 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v222 = v8;
    v223 = v5;
    v28 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    v29 = *(v17 + 16);
    v216 = v17 + 16;
    v217 = v28;
    v215 = v29;
    v29(v27, v28, v16);
    v30 = sub_22B36050C();
    v31 = sub_22B360D2C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22B116000, v30, v31, "[CoreDataCloudKitStack] Setting up NSPersistentCloudKitContainer", v32, 2u);
      MEMORY[0x23188F650](v32, -1, -1);
    }

    v218 = *(v17 + 8);
    v219 = v17 + 8;
    v218(v27, v16);
    v33 = sub_22B35EF2C();
    if (!v33)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      v215(v24, v217, v220);
      v195 = sub_22B36050C();
      v196 = sub_22B360D1C();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        *v197 = 0;
        _os_log_impl(&dword_22B116000, v195, v196, "[CoreDataCloudKitStack] Could not set up NSPersistentCloudKitContainerOptions", v197, 2u);
        MEMORY[0x23188F650](v197, -1, -1);
      }

      v198 = v24;
LABEL_84:
      v218(v198, v220);
      exit(1);
    }

    v34 = v33;
    v35 = sub_22B36081C();
    v36 = sub_22B36081C();
    v37 = [v34 URLForResource:v35 withExtension:v36];

    if (!v37)
    {
      goto LABEL_76;
    }

    v249 = v21;
    v220 = v16;
    sub_22B35DC0C();

    v38 = objc_allocWithZone(MEMORY[0x277CBE450]);
    v39 = sub_22B35DBDC();
    v40 = [v38 initWithContentsOfURL_];

    if (!v40)
    {
      goto LABEL_77;
    }

    v41 = objc_allocWithZone(MEMORY[0x277CBE470]);
    v42 = v40;
    v43 = sub_22B36081C();
    v44 = [v41 initWithName:v43 managedObjectModel:v42];

    v238 = v42;
    v45 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v239 = v44;
    v46 = [v45 init];
    v47 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v254 = v46;
    v48 = [v47 init];
    v49 = objc_opt_self();
    v255 = v48;
    v50 = sub_22B36081C();
    v51 = sub_22B36081C();
    v52 = [v49 homeenergyd:v50 optionsWithContainerIdentifier:v51 apnsServiceName:?];

    if (!v52)
    {
      goto LABEL_78;
    }

    v53 = v52;
    v54 = sub_22B36081C();
    v55 = sub_22B36081C();
    v56 = [v49 homeenergyd:v54 optionsWithContainerIdentifier:v55 apnsServiceName:?];

    if (!v56)
    {
      v215(v249, v217, v220);
      v199 = sub_22B36050C();
      v200 = sub_22B360D1C();
      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        *v201 = 0;
        _os_log_impl(&dword_22B116000, v199, v200, "[CoreDataCloudKitStack] Could not set up NSPersistentCloudKitContainerOptions", v201, 2u);
        MEMORY[0x23188F650](v201, -1, -1);
      }

      v198 = v249;
      goto LABEL_84;
    }

    v57 = v250;
    v237 = swift_allocBox();
    v59 = v58;
    v242 = v56;
    v60 = MEMORY[0x23188EEB0]();
    sub_22B34CE74(0xD000000000000015, 1, v59);
    v236 = 0;
    objc_autoreleasePoolPop(v60);
    v61 = sub_22B36081C();
    v62 = v254;
    [v254 setConfiguration_];

    v63 = sub_22B36081C();
    v64 = v57;
    v65 = v255;
    [v255 setConfiguration_];

    v66 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v53 setOperationMemoryThresholdBytes_];

    v67 = v252;
    v68 = *(v252 + 16);
    v69 = v246;
    v235 = v59;
    v243 = v68;
    v244 = v252 + 16;
    v68(v246, v59, v64);
    v70 = v253[6];
    v71 = v247;
    v232 = v253[7];
    v233 = v70;
    sub_22B35DBFC();
    v72 = *(v67 + 8);
    v72(v69, v64);
    v73 = sub_22B35DBDC();
    v248 = v72;
    v249 = v67 + 8;
    v72(v71, v64);
    [v62 setURL_];

    [v53 setDatabaseScope_];
    [v62 setCloudKitContainerOptions_];

    v74 = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
    v75 = sub_22B360F8C();
    v231 = *MEMORY[0x277CBE210];
    [v62 setOption:v75 forKey:?];

    v76 = sub_22B360F9C();
    v230 = *MEMORY[0x277CBE218];
    [v62 setOption:v76 forKey:?];

    v77 = sub_22B360F8C();
    v229 = *MEMORY[0x277CBE270];
    [v62 setOption:v77 forKey:?];

    v234 = v74;
    v78 = sub_22B360F8C();
    v245 = *MEMORY[0x277CBE280];
    [v62 setOption:v78 forKey:?];

    v79 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v80 = sub_22B36081C();
    [v62 setValue:v79 forPragmaNamed:v80];

    v81 = sub_22B35EE8C();
    *(&v261 + 1) = v81;
    v82 = sub_22B20EF9C(&qword_281409378, MEMORY[0x277D073A0], MEMORY[0x277D07368]);
    *&v262 = v82;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    v84 = *MEMORY[0x277D07378];
    v85 = *(v81 - 8);
    v16 = *(v85 + 104);
    v86 = v85 + 104;
    (v16)(boxed_opaque_existential_1, v84, v81);
    LOBYTE(v79) = sub_22B35E0CC();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v227 = v81;
    v228 = v53;
    v225 = v86;
    v226 = v82;
    v241 = v84;
    v240 = v16;
    if ((v79 & 1) == 0)
    {
      goto LABEL_30;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_22B364840;
    *(v87 + 32) = sub_22B36084C();
    v88 = MEMORY[0x277D839B0];
    *(v87 + 40) = v89;
    *(v87 + 72) = v88;
    *(v87 + 48) = 1;
    *(v87 + 80) = sub_22B36084C();
    *(v87 + 88) = v90;
    *(v87 + 120) = MEMORY[0x277D837D0];
    *(v87 + 96) = 0xD000000000000020;
    *(v87 + 104) = 0x800000022B36C810;
    *(v87 + 128) = sub_22B36084C();
    *(v87 + 136) = v91;
    *(v87 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    *(v87 + 144) = &unk_283EF80B8;
    *(v87 + 176) = sub_22B36084C();
    *(v87 + 184) = v92;
    *(v87 + 216) = v88;
    *(v87 + 192) = 1;
    v5 = sub_22B321AAC(v87);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v93 = 0;
    v27 = v5 + 64;
    v94 = 1 << v5[32];
    v95 = -1;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    v17 = v95 & *(v5 + 8);
    v24 = ((v94 + 63) >> 6);
    if (v17)
    {
      break;
    }

LABEL_14:
    if (v24 <= (v93 + 1))
    {
      v96 = v93 + 1;
    }

    else
    {
      v96 = v24;
    }

    v8 = v96 - 1;
    while (1)
    {
      v21 = (v93 + 1);
      if (__OFADD__(v93, 1))
      {
        break;
      }

      if (v21 >= v24)
      {
        v17 = 0;
        v258 = 0u;
        v259 = 0u;
        v257 = 0u;
        goto LABEL_22;
      }

      v17 = *&v27[8 * v21];
      ++v93;
      if (v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  while (1)
  {
    v21 = v93;
LABEL_21:
    v97 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v98 = v97 | (v21 << 6);
    v99 = (*(v5 + 6) + 16 * v98);
    v100 = *v99;
    v101 = v99[1];
    sub_22B170C58(*(v5 + 7) + 32 * v98, v256);
    *&v257 = v100;
    *(&v257 + 1) = v101;
    sub_22B172454(v256, &v258);

    v8 = v21;
LABEL_22:
    aBlock = v257;
    v261 = v258;
    v262 = v259;
    if (!*(&v257 + 1))
    {
      break;
    }

    sub_22B172454(&v261, &v257);
    sub_22B128014(0, &qword_281409270, 0x277D82BB8);
    v102 = swift_dynamicCast();
    v103 = *&v256[0];
    v16 = sub_22B36081C();

    if (v102)
    {
      v104 = v103;
    }

    else
    {
      v104 = 0;
    }

    [v254 setOption:v104 forKey:v16];

    v93 = v8;
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v64 = v250;
  v82 = v226;
  v81 = v227;
  v84 = v241;
  v16 = v240;
LABEL_30:
  *(&v261 + 1) = v81;
  *&v262 = v82;
  v105 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  (v16)(v105, v84, v81);
  v106 = sub_22B35E0CC();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v107 = v82;
  if (v106)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B364840;
    *(inited + 32) = sub_22B36084C();
    *(inited + 40) = v109;
    v110 = MEMORY[0x277D839B0];
    *(inited + 72) = MEMORY[0x277D839B0];
    v21 = 1;
    *(inited + 48) = 1;
    *(inited + 80) = sub_22B36084C();
    *(inited + 88) = v111;
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = 0xD00000000000001FLL;
    *(inited + 104) = 0x800000022B36C7F0;
    *(inited + 128) = sub_22B36084C();
    *(inited + 136) = v112;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    *(inited + 144) = &unk_283EF80E8;
    *(inited + 176) = sub_22B36084C();
    *(inited + 184) = v113;
    *(inited + 216) = v110;
    *(inited + 192) = 1;
    v27 = sub_22B321AAC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
    swift_arrayDestroy();
    v114 = 0;
    v5 = v27 + 64;
    v115 = 1 << v27[32];
    v116 = -1;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    v17 = v116 & *(v27 + 8);
    v24 = ((v115 + 63) >> 6);
    if (!v17)
    {
      goto LABEL_35;
    }

LABEL_34:
    v16 = v114;
LABEL_42:
    v118 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v119 = v118 | (v16 << 6);
    v120 = (*(v27 + 6) + 16 * v119);
    v122 = *v120;
    v121 = v120[1];
    sub_22B170C58(*(v27 + 7) + 32 * v119, v256);
    *&v257 = v122;
    *(&v257 + 1) = v121;
    sub_22B172454(v256, &v258);

    v8 = v16;
    while (1)
    {
      aBlock = v257;
      v261 = v258;
      v262 = v259;
      if (!*(&v257 + 1))
      {
        break;
      }

      sub_22B172454(&v261, &v257);
      sub_22B128014(0, &qword_281409270, 0x277D82BB8);
      v123 = swift_dynamicCast();
      v124 = *&v256[0];
      v21 = sub_22B36081C();

      if (v123)
      {
        v125 = v124;
      }

      else
      {
        v125 = 0;
      }

      [v255 setOption:v125 forKey:v21];

      v114 = v8;
      if (v17)
      {
        goto LABEL_34;
      }

LABEL_35:
      if (v24 <= (v114 + 1))
      {
        v117 = v114 + 1;
      }

      else
      {
        v117 = v24;
      }

      v8 = v117 - 1;
      while (1)
      {
        v16 = (v114 + 1);
        if (__OFADD__(v114, 1))
        {
          goto LABEL_73;
        }

        if (v16 >= v24)
        {
          break;
        }

        v17 = *&v5[8 * v16];
        ++v114;
        if (v17)
        {
          goto LABEL_42;
        }
      }

      v17 = 0;
      v258 = 0u;
      v259 = 0u;
      v257 = 0u;
    }

    v64 = v250;
    v107 = v226;
    v81 = v227;
  }

  v126 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v127 = v242;
  [v242 setOperationMemoryThresholdBytes_];

  v128 = v246;
  v243(v246, v235, v64);
  *&aBlock = 0x5F646572616873;
  *(&aBlock + 1) = 0xE700000000000000;
  MEMORY[0x23188E270](v233, v232);
  v129 = v247;
  sub_22B35DBFC();

  v130 = v128;
  v131 = v248;
  v248(v130, v64);
  v132 = sub_22B35DBDC();
  v131(v129, v64);
  v133 = v255;
  [v255 setURL_];

  [v127 setDatabaseScope_];
  [v133 setCloudKitContainerOptions_];

  v134 = sub_22B360F8C();
  [v133 setOption:v134 forKey:v231];

  v135 = sub_22B360F9C();
  [v133 setOption:v135 forKey:v230];

  v136 = sub_22B360F8C();
  [v133 setOption:v136 forKey:v229];

  v137 = sub_22B360F8C();
  [v133 setOption:v137 forKey:v245];

  v138 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v139 = sub_22B36081C();
  [v133 setValue:v138 forPragmaNamed:v139];

  *(&v261 + 1) = v81;
  *&v262 = v107;
  v140 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v240(v140, v241, v81);
  LOBYTE(v138) = sub_22B35E0CC();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  if (v138)
  {
    v141 = [v254 URL];
    if (v141)
    {
      v142 = v221;
      v143 = v141;
      sub_22B35DC0C();

      v144 = 0;
    }

    else
    {
      v144 = 1;
      v142 = v221;
    }

    v145 = v222;
    v146 = v252;
    v147 = *(v252 + 56);
    v147(v142, v144, 1, v64);
    v243(v145, v251, v64);
    v147(v145, 0, 1, v64);
    v148 = [v254 options];
    v246 = sub_22B128014(0, &qword_281409270, 0x277D82BB8);
    v149 = sub_22B3606EC();

    sub_22B2A5AC0(v149);

    v245 = type metadata accessor for CoreDataServerHandlingPolicy();
    v150 = v142;
    v151 = [objc_allocWithZone(v245) init];
    v152 = *(v146 + 48);
    v252 = v146 + 48;
    v247 = v152;
    v153 = 0;
    if ((v152)(v150, 1, v64) != 1)
    {
      v153 = sub_22B35DBDC();
      v248(v150, v64);
    }

    if ((v247)(v145, 1, v64) == 1)
    {
      v154 = 0;
    }

    else
    {
      v154 = sub_22B35DBDC();
      v248(v145, v64);
    }

    v155 = objc_allocWithZone(MEMORY[0x277CBE510]);
    v156 = sub_22B3606CC();

    v157 = [v155 initForStoreWithURL:v153 usingModelAtURL:v154 options:v156 policy:v151];

    v158 = v253[17];
    v253[17] = v157;

    v159 = [v255 URL];
    if (v159)
    {
      v160 = v223;
      v161 = v159;
      sub_22B35DC0C();

      v162 = 0;
    }

    else
    {
      v162 = 1;
      v160 = v223;
    }

    v163 = v224;
    v147(v160, v162, 1, v64);
    v243(v163, v251, v64);
    v147(v163, 0, 1, v64);
    v164 = [v255 options];
    v165 = sub_22B3606EC();

    sub_22B2A5AC0(v165);

    v166 = [objc_allocWithZone(v245) init];
    if ((v247)(v160, 1, v64) == 1)
    {
      v167 = 0;
    }

    else
    {
      v167 = sub_22B35DBDC();
      v248(v160, v64);
    }

    if ((v247)(v163, 1, v64) == 1)
    {
      v168 = 0;
    }

    else
    {
      v168 = sub_22B35DBDC();
      v248(v163, v64);
    }

    v169 = objc_allocWithZone(MEMORY[0x277CBE510]);
    v170 = sub_22B3606CC();

    v171 = [v169 initForStoreWithURL:v167 usingModelAtURL:v168 options:v170 policy:v166];

    v172 = v253[16];
    v253[16] = v171;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_22B363950;
  v174 = v254;
  v175 = v255;
  *(v173 + 32) = v254;
  *(v173 + 40) = v175;
  sub_22B128014(0, &qword_281409288, 0x277CBE4E0);
  v176 = v239;
  v254 = v174;
  v177 = v175;
  v178 = sub_22B360A3C();

  [v176 setPersistentStoreDescriptions_];

  v179 = swift_allocObject();
  v180 = v253;
  v179[2] = v237;
  v179[3] = v180;
  v179[4] = v176;
  *&v262 = sub_22B20EFE4;
  *(&v262 + 1) = v179;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v261 = sub_22B2A62A0;
  *(&v261 + 1) = &block_descriptor_44;
  v181 = _Block_copy(&aBlock);

  [v176 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v181);
  v182 = objc_opt_self();
  v183 = [v182 defaultCenter];
  [v183 addObserver:v180 selector:sel_handlePersistentCloudKitContainerEventChanged_ name:*MEMORY[0x277CBE1F0] object:0];

  v184 = [v182 defaultCenter];
  v185 = *MEMORY[0x277CBE260];
  v186 = [v176 persistentStoreCoordinator];
  [v184 addObserver:v180 selector:sel_storeRemoteChange_ name:v185 object:v186];

  v187 = [v176 newBackgroundContext];
  v188 = v180[12];
  v180[12] = v187;
  v189 = v187;

  [v189 setAutomaticallyMergesChangesFromParent_];
  [v180[12] setMergePolicy_];
  v190 = v180[12];
  v191 = sub_22B36081C();
  [v190 setTransactionAuthor_];

  [v180[12] setUndoManager_];
  v192 = v180[12];
  v193 = v236;
  sub_22B360E7C();
  if (v193)
  {

    v215(v214, v217, v220);
    v202 = v193;
    v203 = sub_22B36050C();
    v204 = sub_22B360D1C();

    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      *v205 = 138412290;
      v207 = v193;
      v208 = _swift_stdlib_bridgeErrorToNSError();
      *(v205 + 4) = v208;
      *v206 = v208;
      _os_log_impl(&dword_22B116000, v203, v204, "[CoreDataCloudKitStack] Failed to pin background context to the current generation:%@", v205, 0xCu);
      sub_22B123284(v206, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v206, -1, -1);
      MEMORY[0x23188F650](v205, -1, -1);
    }

    v218(v214, v220);
    v209 = [objc_opt_self() processInfo];
    v210 = [v209 processName];

    v211 = sub_22B36084C();
    v213 = v212;

    LOWORD(aBlock) = 1;
    BYTE2(aBlock) = 9;
    *(&aBlock + 1) = v211;
    v261 = v213;
    static AutoBugCaptureManager.sendIssue(_:)(&aBlock);
    exit(1);
  }

  v248(v251, v250);

  return v176;
}

void sub_22B209BE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, __n128 a6)
{
  v55 = a4;
  v56 = a5;
  v8 = sub_22B35DC4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  v15 = sub_22B36052C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_projectBox();
  if (a2)
  {
    v20 = v19;
    v21 = sub_22B35DB8C();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v15, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v18, v22, v15);
    v23 = v21;
    v24 = sub_22B36050C();
    v25 = sub_22B360D1C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_22B116000, v24, v25, "[CoreDataCloudKitStack] Failed to load persistent stores:%{public}@", v26, 0xCu);
      sub_22B123284(v27, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v27, -1, -1);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    v29 = (*(v16 + 8))(v18, v15);
    MEMORY[0x23188EEB0](v29);
    sub_22B20A200(v20);
  }

  v30 = v56;
  v31 = [a1 cloudKitContainerOptions];
  if (v31)
  {
    v32 = v31;
    v33 = v8;
    v34 = v11;
    if ([v31 databaseScope] == 2)
    {
      v35 = v33;
      v36 = [v30 persistentStoreCoordinator];
      v37 = [a1 URL];
      if (!v37)
      {
        __break(1u);
        goto LABEL_19;
      }

      v38 = v37;
      sub_22B35DC0C();

      v39 = sub_22B35DBDC();
      (*(v9 + 8))(v14, v33);
      v40 = [v36 persistentStoreForURL_];

      v41 = *(v55 + 112);
      *(v55 + 112) = v40;
      v33 = v35;

      v42 = sub_22B35EE8C();
      v58 = v42;
      v59 = sub_22B20EF9C(&qword_281409378, MEMORY[0x277D073A0], MEMORY[0x277D07368]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
      (*(*(v42 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07378], v42);
      LOBYTE(v42) = sub_22B35E0CC();
      __swift_destroy_boxed_opaque_existential_0(v57);
      if (v42)
      {
        [*(v55 + 136) startListening];
      }
    }

    if ([v32 databaseScope] != 3)
    {
LABEL_7:

      return;
    }

    v44 = v9;
    v45 = [v30 persistentStoreCoordinator];
    v46 = [a1 URL];
    if (v46)
    {
      v47 = v46;
      sub_22B35DC0C();

      v48 = sub_22B35DBDC();
      (*(v44 + 8))(v34, v33);
      v49 = [v45 persistentStoreForURL_];

      v50 = v55;
      v51 = *(v55 + 120);
      *(v55 + 120) = v49;

      v52 = sub_22B35EE8C();
      v58 = v52;
      v59 = sub_22B20EF9C(&qword_281409378, MEMORY[0x277D073A0], MEMORY[0x277D07368]);
      v53 = __swift_allocate_boxed_opaque_existential_1(v57);
      (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D07378], v52);
      LOBYTE(v52) = sub_22B35E0CC();
      __swift_destroy_boxed_opaque_existential_0(v57);
      if (v52)
      {
        v54 = *(v50 + 128);
        [v54 startListening];
      }

      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_22B20A200(uint64_t a1)
{
  v39[10] = *MEMORY[0x277D85DE8];
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  MEMORY[0x28223BE20](v6);
  v8 = v39 - v7 + 24;
  v9 = sub_22B35DC4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v13 = [objc_opt_self() defaultManager];
  swift_beginAccess();
  (*(v10 + 16))(v12, a1, v9);
  v14 = sub_22B35DBDC();
  (*(v10 + 8))(v12, v9);
  v39[0] = 0;
  LODWORD(v9) = [v13 removeItemAtURL:v14 error:v39];

  if (v9)
  {
    v15 = qword_28140A0C8;
    v16 = v39[0];
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v8, v17, v2);
    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B116000, v18, v19, "[CoreDataCloudKitStack] Deleted the persistent store in attempt to recover", v20, 2u);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v21 = [objc_opt_self() processInfo];
    v22 = [v21 processName];
  }

  else
  {
    v23 = v39[0];
    v24 = sub_22B35DB9C();

    swift_willThrow();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v5, v25, v2);
    v26 = v24;
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_22B3613EC();
      v33 = sub_22B1A7B20(v31, v32, v39);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_22B116000, v27, v28, "[CoreDataCloudKitStack] Could not delete persistent store: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23188F650](v30, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v21 = [objc_opt_self() processInfo];
    v22 = [v21 processName];
  }

  v34 = v22;

  v35 = sub_22B36084C();
  v37 = v36;

  LOWORD(v39[0]) = 513;
  BYTE2(v39[0]) = 4;
  v39[1] = v35;
  v39[2] = v37;
  v39[3] = 0;
  static AutoBugCaptureManager.sendIssue(_:)(v39);
  exit(1);
}

id sub_22B20A740(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 96);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 currentQueryGenerationToken];
  v8[0] = 0;
  v5 = [v3 setQueryGenerationFromToken:v4 error:v8];

  if (v5)
  {
    return v8[0];
  }

  v7 = v8[0];
  sub_22B35DB9C();

  return swift_willThrow();
}

uint64_t sub_22B20A830(uint64_t a1)
{
  v48[3] = *MEMORY[0x277D85DE8];
  v3 = sub_22B36052C();
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v9 = sub_22B35DC4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 152);
  if (v13)
  {
    v45 = v5;
    v46 = v3;
    v14 = objc_opt_self();
    v48[0] = 0;
    v15 = v13;
    v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v48];
    v17 = v48[0];
    if (v16)
    {
      v18 = sub_22B35DCDC();
      v20 = v19;

      v21 = v18;
      v22 = v20;
      sub_22B20AD80(v12);
      sub_22B35DCEC();
      if (v1)
      {
        (*(v10 + 8))(v12, v9);
        if (qword_281409380 != -1)
        {
          swift_once();
        }

        v23 = v46;
        v24 = __swift_project_value_buffer(v46, qword_28140BCB8);
        swift_beginAccess();
        v25 = v47;
        v26 = v45;
        (*(v47 + 16))(v45, v24, v23);
        v27 = v1;
        v28 = sub_22B36050C();
        v29 = sub_22B360D1C();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = v21;
          v32 = swift_slowAlloc();
          *v30 = 138412290;
          v33 = v1;
          v34 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 4) = v34;
          *v32 = v34;
          _os_log_impl(&dword_22B116000, v28, v29, "[CoreDataCloudKitStack] Failed to write token data. Error = %@", v30, 0xCu);
          sub_22B123284(v32, &unk_27D8BAA90, &unk_22B362BC0);
          MEMORY[0x23188F650](v32, -1, -1);
          v35 = v30;
          v26 = v45;
          MEMORY[0x23188F650](v35, -1, -1);
          sub_22B12F174(v31, v22);
        }

        else
        {

          sub_22B12F174(v21, v22);
          v15 = v28;
        }

        return (*(v25 + 8))(v26, v46);
      }

      else
      {
        (*(v10 + 8))(v12, v9);

        return sub_22B12F174(v18, v20);
      }
    }

    v37 = v17;
    v38 = sub_22B35DB9C();

    swift_willThrow();
    v3 = v46;
    v36 = v47;
  }

  else
  {
    v36 = v47;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v36 + 16))(v8, v39, v3);
  v40 = sub_22B36050C();
  v41 = sub_22B360D1C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_22B116000, v40, v41, "[CoreDataCloudKitStack] Failed to set history token", v42, 2u);
    MEMORY[0x23188F650](v42, -1, -1);
  }

  return (*(v36 + 8))(v8, v3);
}

uint64_t sub_22B20AD80@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_22B35DC4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v14 = OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___tokenFile;
  swift_beginAccess();
  sub_22B20EEBC(v2 + v14, v13);
  if ((*(v5 + 48))(v13, 1, v4) != 1)
  {
    return (*(v5 + 32))(a1, v13, v4);
  }

  v15 = sub_22B123284(v13, &qword_27D8BA640, &qword_22B366A50);
  v16 = MEMORY[0x23188EEB0](v15);
  v17 = MEMORY[0x23188EEB0]();
  sub_22B34CE74(0xD000000000000015, 1, v7);
  objc_autoreleasePoolPop(v17);
  sub_22B35DBEC();
  (*(v5 + 8))(v7, v4);
  objc_autoreleasePoolPop(v16);
  (*(v5 + 16))(v10, a1, v4);
  (*(v5 + 56))(v10, 0, 1, v4);
  swift_beginAccess();
  sub_22B20EF2C(v10, v2 + v14);
  return swift_endAccess();
}

id sub_22B20B020()
{
  v1 = OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___historyQueue;
  v2 = *(v0 + OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___historyQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___historyQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    [v4 setMaxConcurrentOperationCount_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_22B20B0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_22B36052C();
  v26[3] = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B35DC4C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = 0x696B796772656E65;
  *(v5 + 24) = 0xEF6E656B6F742E74;
  strcpy((v5 + 32), "EnergyKitData");
  *(v5 + 46) = -4864;
  *(v5 + 64) = 0xD000000000000022;
  *(v5 + 72) = 0x800000022B36C720;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  (*(v14 + 56))(v5 + OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___tokenFile, 1, 1, v13);
  *(v5 + OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___historyQueue) = 0;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  *(v5 + 80) = a3;
  *(v5 + 88) = a4;
  v17 = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];
  *(v5 + 96) = v17;
  [v17 setAutomaticallyMergesChangesFromParent_];
  [*(v5 + 96) setMergePolicy_];
  v18 = *(v5 + 96);

  v19 = sub_22B36081C();

  [v18 setTransactionAuthor_];

  sub_22B20AD80(v16);
  v20 = sub_22B35DC6C();
  v22 = v21;
  v26[1] = v12;
  v26[2] = v10;
  (*(v14 + 8))(v16, v13);
  sub_22B128014(0, &qword_281409300, 0x277CCAAC8);
  sub_22B128014(0, &unk_2814092A0, 0x277CBE4C0);
  v23 = sub_22B360D3C();
  sub_22B12F174(v20, v22);
  v24 = *(v5 + 152);
  *(v5 + 152) = v23;

  return v5;
}

id *sub_22B20B5C4()
{

  sub_22B123284(v0 + OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___tokenFile, &qword_27D8BA640, &qword_22B366A50);
  return v0;
}

uint64_t sub_22B20B66C()
{
  sub_22B20B5C4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CoreDataCloudKitStack(uint64_t a1)
{
  result = qword_281409BC8;
  if (!qword_281409BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B20B718(uint64_t a1, __n128 a2)
{
  sub_22B20B7E4(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22B20B7E4(uint64_t a1, __n128 a2)
{
  if (!qword_28140B498)
  {
    sub_22B35DC4C();
    v2 = sub_22B360FFC();
    if (!v3)
    {
      atomic_store(v2, &qword_28140B498);
    }
  }
}

void sub_22B20B83C(uint64_t a1, uint64_t *a2)
{
  v146 = a2;
  v144 = sub_22B35DE9C();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v139 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v133 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v133 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v133 - v11;
  MEMORY[0x28223BE20](v13);
  v145 = &v133 - v14;
  v147 = sub_22B36052C();
  v152 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v141 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v140 = &v133 - v17;
  MEMORY[0x28223BE20](v18);
  v142 = &v133 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v133 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v133 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v133 - v27;
  v29 = sub_22B35D8DC();
  if (!v29)
  {
    v151 = 0u;
    v150 = 0u;
    goto LABEL_14;
  }

  v30 = v29;
  v148[0] = sub_22B36084C();
  v148[1] = v31;
  sub_22B36110C();
  if (!*(v30 + 16) || (v32 = sub_22B33B248(v149), (v33 & 1) == 0))
  {

    sub_22B1B0560(v149);
    v150 = 0u;
    v151 = 0u;
    goto LABEL_14;
  }

  sub_22B170C58(*(v30 + 56) + 32 * v32, &v150);
  sub_22B1B0560(v149);

  if (!*(&v151 + 1))
  {
LABEL_14:
    sub_22B123284(&v150, &unk_27D8BA950, &qword_22B364940);
    return;
  }

  sub_22B128014(0, &qword_281409280, 0x277CBE480);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v34 = v149[0];
  v35 = [v149[0] error];
  v138 = v34;
  if (v35)
  {
    v149[0] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    sub_22B128014(0, &qword_281408530, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      inited = v150;
      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v36 = v147;
      v37 = __swift_project_value_buffer(v147, qword_28140BCB8);
      swift_beginAccess();
      (*(v152 + 16))(v28, v37, v36);
      v38 = inited;
      v136 = sub_22B36050C();
      LODWORD(v37) = sub_22B360D1C();
      inited = v38;

      v135 = v37;
      v39 = v37;
      v40 = v136;
      if (os_log_type_enabled(v136, v39))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v134 = v42;
        *v41 = 138412290;
        v43 = inited;
        *(v41 + 4) = inited;
        v133 = v41;
        *v42 = v43;
        inited = v43;
        _os_log_impl(&dword_22B116000, v40, v135, "[CoreDataCloudKitStack] CK returned an error: %@", v41, 0xCu);
        v44 = v134;
        sub_22B123284(v134, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v44, -1, -1);
        MEMORY[0x23188F650](v133, -1, -1);
        v45 = inited;
      }

      else
      {
        v45 = v40;
        v40 = inited;
      }

      v34 = v138;

      (*(v152 + 8))(v28, v147);
    }
  }

  if (([v34 succeeded] & 1) == 0)
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA830, &qword_22B365D50);
  inited = swift_initStackObject();
  *&inited[2].isa = xmmword_22B3634C0;
  v46 = v146[14];
  if (!v46)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v47 = [v46 identifier];
  if (v47)
  {
    v48 = v47;
    v49 = sub_22B36084C();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v52 = inited;
  inited[4].isa = v49;
  v52[5].isa = v51;
  v53 = v146[15];
  if (!v53)
  {
    goto LABEL_61;
  }

  v54 = [v53 identifier];
  if (v54)
  {
    v55 = v54;
    v56 = sub_22B36084C();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v59 = inited;
  inited[6].isa = v56;
  v59[7].isa = v58;
  v60 = [v138 storeIdentifier];
  v136 = sub_22B36084C();
  v62 = v61;

  v146 = &v133;
  v149[0] = v136;
  v149[1] = v62;
  MEMORY[0x28223BE20](v63);
  *(&v133 - 2) = v149;
  LOBYTE(v60) = sub_22B207E4C(sub_22B20F014, (&v133 - 4), v59);
  v136 = v2;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA218, &qword_22B363548);
  swift_arrayDestroy();

  if ((v60 & 1) == 0)
  {
    v84 = v152;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v85 = v147;
    v86 = __swift_project_value_buffer(v147, qword_28140BD10);
    swift_beginAccess();
    (*(v84 + 16))(v25, v86, v85);
    v87 = sub_22B36050C();
    v88 = sub_22B360D0C();
    v89 = os_log_type_enabled(v87, v88);
    v90 = v138;
    if (v89)
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_22B116000, v87, v88, "[CoreDataCloudKitStack] Ignore eventNotification because of no valid storeUUID.", v91, 2u);
      MEMORY[0x23188F650](v91, -1, -1);
    }

    (*(v84 + 8))(v25, v85);
    return;
  }

  v34 = v138;
  v64 = [v138 endDate];
  v65 = v152;
  if (!v64)
  {
LABEL_22:

    return;
  }

  v66 = v145;
  v67 = v64;
  sub_22B35DE5C();

  v68 = [v34 type];
  if (v68)
  {
    v69 = v143;
    v70 = v144;
    if (v68 == 1)
    {
      v92 = v147;
      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v93 = __swift_project_value_buffer(v92, qword_28140BCB8);
      swift_beginAccess();
      (*(v65 + 16))(v142, v93, v92);
      (*(v69 + 16))(v9, v66, v70);
      v94 = sub_22B36050C();
      v95 = sub_22B360D0C();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v148[0] = v146;
        *v96 = 136315138;
        sub_22B20EF9C(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v97 = sub_22B36131C();
        v99 = v98;
        v100 = *(v69 + 8);
        v100(v9, v70);
        v101 = sub_22B1A7B20(v97, v99, v148);

        *(v96 + 4) = v101;
        _os_log_impl(&dword_22B116000, v94, v95, "[CoreDataCloudKitStack] Import finished at: %s", v96, 0xCu);
        v102 = v146;
        __swift_destroy_boxed_opaque_existential_0(v146);
        MEMORY[0x23188F650](v102, -1, -1);
        MEMORY[0x23188F650](v96, -1, -1);

        (*(v152 + 8))(v142, v147);
        v100(v145, v70);
        return;
      }

      v130 = *(v69 + 8);
      v130(v9, v70);
      (*(v65 + 8))(v142, v92);
    }

    else
    {
      v71 = v147;
      if (v68 == 2)
      {
        if (qword_281409380 != -1)
        {
          swift_once();
        }

        v72 = __swift_project_value_buffer(v71, qword_28140BCB8);
        swift_beginAccess();
        v73 = v140;
        (*(v65 + 16))(v140, v72, v71);
        (*(v69 + 16))(v6, v66, v70);
        v74 = sub_22B36050C();
        v75 = sub_22B360D0C();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v148[0] = v146;
          *v76 = 136315138;
          sub_22B20EF9C(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v77 = sub_22B36131C();
          v78 = v70;
          v80 = v79;
          v81 = *(v69 + 8);
          v81(v6, v78);
          v82 = sub_22B1A7B20(v77, v80, v148);

          *(v76 + 4) = v82;
          _os_log_impl(&dword_22B116000, v74, v75, "[CoreDataCloudKitStack] Export finished at: %s", v76, 0xCu);
          v83 = v146;
          __swift_destroy_boxed_opaque_existential_0(v146);
          MEMORY[0x23188F650](v83, -1, -1);
          MEMORY[0x23188F650](v76, -1, -1);

          (*(v65 + 8))(v140, v147);
          v81(v145, v144);
        }

        else
        {

          v132 = *(v69 + 8);
          v132(v6, v70);
          (*(v65 + 8))(v73, v147);
          v132(v66, v70);
        }

        return;
      }

      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v117 = __swift_project_value_buffer(v71, qword_28140BCB8);
      swift_beginAccess();
      v118 = v141;
      (*(v65 + 16))(v141, v117, v71);
      v119 = v139;
      (*(v69 + 16))(v139, v66, v70);
      v120 = sub_22B36050C();
      v121 = sub_22B360D0C();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = v119;
        v123 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v148[0] = v146;
        *v123 = 136315138;
        sub_22B20EF9C(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v124 = sub_22B36131C();
        v126 = v125;
        v127 = *(v69 + 8);
        v127(v122, v70);
        v128 = sub_22B1A7B20(v124, v126, v148);

        *(v123 + 4) = v128;
        _os_log_impl(&dword_22B116000, v120, v121, "[CoreDataCloudKitStack] Unexpected event: %s)", v123, 0xCu);
        v129 = v146;
        __swift_destroy_boxed_opaque_existential_0(v146);
        MEMORY[0x23188F650](v129, -1, -1);
        MEMORY[0x23188F650](v123, -1, -1);

        (*(v65 + 8))(v141, v147);
        v127(v145, v144);
        return;
      }

      v130 = *(v69 + 8);
      v130(v119, v70);
      (*(v65 + 8))(v118, v71);
    }

    v130(v66, v70);
    return;
  }

  v103 = v143;
  v104 = v144;
  if (qword_281409380 != -1)
  {
    swift_once();
  }

  v105 = v147;
  v106 = __swift_project_value_buffer(v147, qword_28140BCB8);
  swift_beginAccess();
  (*(v65 + 16))(v22, v106, v105);
  (*(v103 + 16))(v12, v66, v104);
  v107 = sub_22B36050C();
  v108 = v66;
  v109 = sub_22B360D0C();
  if (os_log_type_enabled(v107, v109))
  {
    v110 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v148[0] = v146;
    *v110 = 136315138;
    sub_22B20EF9C(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v111 = sub_22B36131C();
    v113 = v112;
    v114 = *(v103 + 8);
    v114(v12, v104);
    v115 = sub_22B1A7B20(v111, v113, v148);

    *(v110 + 4) = v115;
    _os_log_impl(&dword_22B116000, v107, v109, "[CoreDataCloudKitStack] Setup finished at: %s", v110, 0xCu);
    v116 = v146;
    __swift_destroy_boxed_opaque_existential_0(v146);
    MEMORY[0x23188F650](v116, -1, -1);
    MEMORY[0x23188F650](v110, -1, -1);

    (*(v152 + 8))(v22, v147);
    v114(v145, v104);
  }

  else
  {

    v131 = *(v103 + 8);
    v131(v12, v104);
    (*(v65 + 8))(v22, v105);
    v131(v108, v104);
  }
}

void sub_22B20CB54(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B36052C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v66 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  v16 = sub_22B35D8DC();
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = v16;
  v78 = sub_22B36084C();
  v79 = v18;
  sub_22B36110C();
  if (!*(v17 + 16) || (v19 = sub_22B33B248(&aBlock), (v20 & 1) == 0))
  {

    sub_22B1B0560(&aBlock);
LABEL_10:
    v80 = 0u;
    v81 = 0u;
    goto LABEL_11;
  }

  sub_22B170C58(*(v17 + 56) + 32 * v19, &v80);
  sub_22B1B0560(&aBlock);

  if (!*(&v81 + 1))
  {
LABEL_11:
    sub_22B123284(&v80, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v69 = aBlock;
  v70 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA830, &qword_22B365D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634C0;
  v22 = *(a2 + 112);
  if (!v22)
  {
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  v67 = v12;
  v71 = a2;
  v23 = [v22 identifier];
  if (v23)
  {
    v24 = v23;
    v68 = sub_22B36084C();
    v26 = v25;

    v27 = v68;
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  *(inited + 32) = v27;
  *(inited + 40) = v26;
  v32 = *(v71 + 120);
  if (!v32)
  {
    goto LABEL_50;
  }

  v33 = [v32 identifier];
  if (v33)
  {
    v34 = v33;
    v68 = sub_22B36084C();
    v36 = v35;

    v37 = v68;
  }

  else
  {
    v37 = 0;
    v36 = 0;
  }

  v68 = &v66;
  *(inited + 48) = v37;
  *(inited + 56) = v36;
  aBlock = v69;
  v73 = v70;
  MEMORY[0x28223BE20](v33);
  *(&v66 - 2) = &aBlock;
  v38 = v82;
  v39 = sub_22B207E4C(sub_22B20EE8C, (&v66 - 4), inited);
  v82 = v38;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA218, &qword_22B363548);
  swift_arrayDestroy();

  if (v39)
  {
    v40 = sub_22B35D8DC();
    if (v40)
    {
      v41 = v40;
      v78 = sub_22B36084C();
      v79 = v42;
      sub_22B36110C();
      if (*(v41 + 16))
      {
        v43 = sub_22B33B248(&aBlock);
        if (v44)
        {
          sub_22B170C58(*(v41 + 56) + 32 * v43, &v80);
          sub_22B1B0560(&aBlock);

          if (*(&v81 + 1))
          {
            sub_22B128014(0, &unk_2814092A0, 0x277CBE4C0);
            if (swift_dynamicCast())
            {
              v45 = aBlock;
              v46 = *(v71 + 152);
              if (v46 && (v47 = aBlock, v48 = v46, v49 = sub_22B360FBC(), v47, v48, (v49 & 1) != 0))
              {
                if (qword_28140A0C8 != -1)
                {
                  swift_once();
                }

                v50 = __swift_project_value_buffer(v3, qword_28140BD10);
                swift_beginAccess();
                v51 = v67;
                (*(v4 + 16))(v67, v50, v3);
                v52 = sub_22B36050C();
                v53 = sub_22B360D0C();
                if (os_log_type_enabled(v52, v53))
                {
                  v54 = swift_slowAlloc();
                  *v54 = 0;
                  _os_log_impl(&dword_22B116000, v52, v53, "[CoreDataCloudKitStack] Received remote change notification with repeated token", v54, 2u);
                  MEMORY[0x23188F650](v54, -1, -1);
                }

                else
                {
                }

                (*(v4 + 8))(v51, v3);
              }

              else
              {

                if (qword_28140A0C8 != -1)
                {
                  swift_once();
                }

                v59 = __swift_project_value_buffer(v3, qword_28140BD10);
                swift_beginAccess();
                (*(v4 + 16))(v9, v59, v3);
                v60 = sub_22B36050C();
                v61 = sub_22B360D0C();
                if (os_log_type_enabled(v60, v61))
                {
                  v62 = swift_slowAlloc();
                  *v62 = 0;
                  _os_log_impl(&dword_22B116000, v60, v61, "[CoreDataCloudKitStack] Received remote change notification", v62, 2u);
                  MEMORY[0x23188F650](v62, -1, -1);
                }

                (*(v4 + 8))(v9, v3);
                v63 = v71;
                v64 = sub_22B20B020();
                v76 = sub_22B20EEAC;
                v77 = v63;
                aBlock = MEMORY[0x277D85DD0];
                v73 = 1107296256;
                v74 = sub_22B118A6C;
                v75 = &block_descriptor_15;
                v65 = _Block_copy(&aBlock);

                [v64 addOperationWithBlock_];
                _Block_release(v65);
              }

              return;
            }

            goto LABEL_37;
          }

LABEL_36:
          sub_22B123284(&v80, &unk_27D8BA950, &qword_22B364940);
LABEL_37:
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v55 = __swift_project_value_buffer(v3, qword_28140BD10);
          swift_beginAccess();
          (*(v4 + 16))(v15, v55, v3);
          v56 = sub_22B36050C();
          v57 = sub_22B360D0C();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_22B116000, v56, v57, "[CoreDataCloudKitStack] Received remote change notification with no token", v58, 2u);
            MEMORY[0x23188F650](v58, -1, -1);
          }

          (*(v4 + 8))(v15, v3);
          return;
        }
      }

      sub_22B1B0560(&aBlock);
    }

    v80 = 0u;
    v81 = 0u;
    goto LABEL_36;
  }

LABEL_12:
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v6, v28, v3);
  v29 = sub_22B36050C();
  v30 = sub_22B360D0C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_22B116000, v29, v30, "[CoreDataCloudKitStack] Ignore a store remote Change notification because of no valid storeUUID.", v31, 2u);
    MEMORY[0x23188F650](v31, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

void sub_22B20D4F0(uint64_t a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_22B36050C();
  v8 = sub_22B360D0C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "[CoreDataCloudKitStack]Processing Transactions", v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  v10 = (*(v3 + 8))(v5, v2);
  v11 = MEMORY[0x23188EEB0](v10);
  sub_22B20DCC0(a1);
  objc_autoreleasePoolPop(v11);
}

uint64_t sub_22B20D6D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v6 = sub_22B35D8EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35D8CC();

  v11 = MEMORY[0x23188EEB0](v10);
  a4(v9, a1);
  objc_autoreleasePoolPop(v11);

  return (*(v7 + 8))(v9, v6);
}

void sub_22B20D7EC(void *a1, _BYTE *a2)
{
  v33 = a2;
  v4 = sub_22B36052C();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v32 - v12;
  v14 = [a1 changedObjectID];
  v15 = [v14 entity];

  v16 = [v15 name];
  if (v16)
  {
    v35 = v2;
    v17 = sub_22B36084C();
    v19 = v18;

    if (v17 == 0xD000000000000011 && 0x800000022B369070 == v19)
    {
    }

    else
    {
      v21 = sub_22B36134C();

      if ((v21 & 1) == 0)
      {
        return;
      }
    }

    v22 = [a1 changeType];
    if (v22 == 2)
    {
      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v30 = __swift_project_value_buffer(v4, qword_28140BCB8);
      swift_beginAccess();
      v24 = v34;
      (*(v34 + 16))(v9, v30, v4);
      v25 = sub_22B36050C();
      v31 = sub_22B360D0C();
      if (!os_log_type_enabled(v25, v31))
      {
        v6 = v9;
        goto LABEL_26;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22B116000, v25, v31, "[CoreDataCloudKitStack] CD_EnergySiteRecords deleted", v27, 2u);
      v13 = v9;
    }

    else if (v22 == 1)
    {
      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v28 = __swift_project_value_buffer(v4, qword_28140BCB8);
      swift_beginAccess();
      v24 = v34;
      (*(v34 + 16))(v6, v28, v4);
      v25 = sub_22B36050C();
      v29 = sub_22B360D0C();
      if (!os_log_type_enabled(v25, v29))
      {
        goto LABEL_26;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22B116000, v25, v29, "[CoreDataCloudKitStack] CD_EnergySiteRecords updated", v27, 2u);
      v13 = v6;
    }

    else
    {
      if (v22)
      {
        return;
      }

      *v33 = 1;
      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v4, qword_28140BCB8);
      swift_beginAccess();
      v24 = v34;
      (*(v34 + 16))(v13, v23, v4);
      v25 = sub_22B36050C();
      v26 = sub_22B360D0C();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_25;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22B116000, v25, v26, "[CoreDataCloudKitStack] CD_EnergySiteRecords inserted", v27, 2u);
    }

    MEMORY[0x23188F650](v27, -1, -1);
LABEL_25:
    v6 = v13;
LABEL_26:

    (*(v24 + 8))(v6, v4);
  }
}

uint64_t sub_22B20DCC0(uint64_t a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() fetchHistoryAfterToken_];
  v7 = [objc_opt_self() fetchRequest];
  if (v7)
  {
    v8 = v7;
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22B3634B0;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_22B1280E4();
    strcpy((v9 + 32), "EnergyKitData");
    *(v9 + 46) = -4864;
    v10 = sub_22B360CCC();
    [v8 setPredicate_];

    [v8 setFetchBatchSize_];
    [v6 setFetchRequest_];
  }

  [v6 setResultType_];
  [v6 setFetchBatchSize_];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v11, v2);

  v12 = sub_22B36050C();
  v13 = sub_22B360CFC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = *(a1 + 152);
    *(v14 + 4) = v16;
    *v15 = v16;
    v17 = v16;
    _os_log_impl(&dword_22B116000, v12, v13, "[CoreDataCloudKitStack] Fetching history since %@", v14, 0xCu);
    sub_22B123284(v15, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v18 = *(a1 + 96);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v6;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22B20EEB4;
  *(v20 + 24) = v19;
  aBlock[4] = sub_22B12819C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_37;
  v21 = _Block_copy(aBlock);

  v22 = v18;
  v23 = v6;

  [v22 performBlockAndWait_];

  _Block_release(v21);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  return result;
}

void sub_22B20E184(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v11 = sub_22B35DF1C();
  v74 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v65 - v16;
  v18 = *(a1 + 96);
  *&v78[0] = 0;
  v19 = [v18 executeRequest:a2 error:{v78, v15}];
  v20 = *&v78[0];
  if (!v19)
  {
    v25 = *&v78[0];
    v26 = sub_22B35DB9C();

    swift_willThrow();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v28 = v5;
    (*(v5 + 16))(v7, v27, v4);

    v29 = v26;
    v30 = sub_22B36050C();
    v31 = sub_22B360D1C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412546;
      v34 = *(a1 + 152);
      *(v32 + 4) = v34;
      *v33 = v34;
      *(v32 + 12) = 2112;
      v35 = v26;
      v36 = v34;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v37;
      v33[1] = v37;
      _os_log_impl(&dword_22B116000, v30, v31, "[CoreDataCloudKitStack] Failed to fetch history with token %@: %@", v32, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA90, &unk_22B362BC0);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v33, -1, -1);
      MEMORY[0x23188F650](v32, -1, -1);
    }

    else
    {
    }

    (*(v28 + 8))(v7, v4);
    goto LABEL_12;
  }

  v21 = v19;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {
    v38 = v20;
LABEL_23:

    return;
  }

  v23 = v22;
  v24 = v20;
  if ([v23 result])
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
  }

  v78[0] = v76;
  v78[1] = v77;
  if (*(&v77 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA838, &qword_22B365D58);
    if (swift_dynamicCast())
    {
      v39 = v75;
      v40 = v75 >> 62;
      if (v75 >> 62)
      {
        v64 = v75;
        v41 = sub_22B36109C();
        v39 = v64;
        if (v41)
        {
LABEL_18:
          v70 = v40;
          v72 = v41;
          v73 = v39;
          sub_22B35DF0C();
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v42 = __swift_project_value_buffer(v4, qword_28140BD10);
          swift_beginAccess();
          v71 = v5;
          (*(v5 + 16))(v10, v42, v4);
          (*(v74 + 16))(v13, v17, v11);
          v43 = v73;
          swift_bridgeObjectRetain_n();
          v44 = sub_22B36050C();
          v69 = sub_22B360CFC();
          if (os_log_type_enabled(v44, v69))
          {
            v67 = v44;
            v45 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            *&v76 = v66;
            *v45 = 136315394;
            sub_22B20EF9C(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v65 = sub_22B36131C();
            v47 = v46;
            v68 = *(v74 + 8);
            v68(v13, v11);
            v48 = sub_22B1A7B20(v65, v47, &v76);

            *(v45 + 4) = v48;
            v49 = v45;
            *(v45 + 12) = 2048;
            v43 = v73;
            if (v70)
            {
              v50 = sub_22B36109C();
            }

            else
            {
              v50 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v49 + 14) = v50;

            v54 = v67;
            _os_log_impl(&dword_22B116000, v67, v69, "[CoreDataCloudKitStack] (%s) Found %ld transactions since last token with changes", v49, 0x16u);
            v55 = v66;
            __swift_destroy_boxed_opaque_existential_0(v66);
            MEMORY[0x23188F650](v55, -1, -1);
            MEMORY[0x23188F650](v49, -1, -1);

            v53 = (*(v71 + 8))(v10, v4);
            v52 = v68;
          }

          else
          {

            swift_bridgeObjectRelease_n();
            v51 = v13;
            v52 = *(v74 + 8);
            v52(v51, v11);
            v53 = (*(v71 + 8))(v10, v4);
          }

          v56 = MEMORY[0x23188EEB0](v53);
          sub_22B20EA24(v43, a1);
          objc_autoreleasePoolPop(v56);
          v57 = v72 - 1;
          if (__OFSUB__(v72, 1))
          {
            __break(1u);
          }

          else if ((v43 & 0xC000000000000001) == 0)
          {
            if ((v57 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v57 < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v58 = *(v43 + 8 * v57 + 32);
LABEL_33:
              v59 = v58;

              v60 = [v59 token];

              if (v60)
              {
                v61 = *(a1 + 152);
                *(a1 + 152) = v60;
                v62 = v60;

                v63 = MEMORY[0x23188EEB0]();
                sub_22B20A830(a1);
                objc_autoreleasePoolPop(v63);

                v52(v17, v11);
LABEL_12:
                [*(a1 + 96) reset];
                return;
              }

              v52(v17, v11);
LABEL_38:

              goto LABEL_12;
            }

            __break(1u);
          }

          v58 = MEMORY[0x23188EAC0](v57, v43);
          goto LABEL_33;
        }
      }

      else
      {
        v41 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v41)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_38;
    }

    goto LABEL_23;
  }

  sub_22B123284(v78, &unk_27D8BA950, &qword_22B364940);
}

void sub_22B20EA24(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_34:
    [*(a2 + 96) reset];
    return;
  }

LABEL_3:
  LOBYTE(v6) = 0;
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v21 = v4 + 32;
  v22 = v4 & 0xFFFFFFFFFFFFFF8;
  v19 = v5;
  v20 = v4;
  v18 = v4 & 0xC000000000000001;
  while (1)
  {
    if (v8)
    {
      v9 = MEMORY[0x23188EAC0](v7, v4);
    }

    else
    {
      if (v7 >= *(v22 + 16))
      {
        goto LABEL_32;
      }

      v9 = *(v21 + 8 * v7);
    }

    v10 = v9;
    if (__OFADD__(v7++, 1))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v5 = sub_22B36109C();
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_3;
    }

    if ((v6 & 1) == 0)
    {
      break;
    }

    LOBYTE(v6) = 1;
LABEL_5:
    if (v7 == v5)
    {
      goto LABEL_34;
    }
  }

  v6 = [v9 changes];
  if (!v6)
  {

    goto LABEL_5;
  }

  v23 = v10;
  sub_22B128014(0, &qword_281408578, 0x277CBE4A8);
  v12 = sub_22B360A5C();

  v24 = 0;
  if (!(v12 >> 62))
  {
    v6 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  v6 = sub_22B36109C();
  if (!v6)
  {
LABEL_28:

    goto LABEL_5;
  }

LABEL_15:
  v13 = 0;
  while (2)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x23188EAC0](v13, v12);
    }

    else
    {
      if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v14 = *(v12 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v24)
    {
LABEL_16:

      ++v13;
      if (v16 == v6)
      {

        LOBYTE(v6) = v24;
        v5 = v19;
        v4 = v20;
        v8 = v18;
        goto LABEL_5;
      }

      continue;
    }

    break;
  }

  v4 = MEMORY[0x23188EEB0]();
  sub_22B20D7EC(v15, &v24);
  if (!v3)
  {
    v3 = 0;
    objc_autoreleasePoolPop(v4);
    goto LABEL_16;
  }

  objc_autoreleasePoolPop(v4);
  __break(1u);
}

unint64_t sub_22B20EC98(char a1)
{
  result = 0x6373627553646461;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6772656E45646461;
      break;
    case 4:
    case 5:
    case 7:
    case 8:
      result = 0xD000000000000010;
      break;
    case 6:
    case 12:
      result = 0x6567617355646461;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
    case 11:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_22B20EE18(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_22B36134C() & 1;
    }
  }

  return result;
}

uint64_t sub_22B20EEBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B20EF2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B20EF9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22B20F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, uint64_t a10, void *a11)
{
  v117 = a5;
  v118 = a7;
  v114 = a2;
  v115 = a11;
  v116 = a4;
  v107 = a10;
  v101 = sub_22B35DE9C();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = v15;
  v100 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22B36052C();
  v103 = *(v104 - 8);
  v16 = MEMORY[0x28223BE20](v104);
  v102 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = MEMORY[0x23188EEB0](v16);
  v112 = MEMORY[0x23188EEB0]();
  v18 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v105 = "energyGuidanceTracker";
  v19 = sub_22B36081C();
  v20 = [v18 initWithEntityName_];

  [v20 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22B363640;
  v22 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v23 = sub_22B1280E4();
  *(v21 + 64) = v23;
  v24 = MEMORY[0x277D84958];
  v113 = a1;
  *(v21 + 32) = a1;
  v25 = v114;
  *(v21 + 40) = v114;
  v26 = MEMORY[0x277D849A0];
  *(v21 + 96) = v24;
  *(v21 + 104) = v26;
  v106 = a9;
  *(v21 + 72) = a9;
  *(v21 + 136) = v22;
  *(v21 + 144) = v23;
  v108 = a3;
  v28 = v116;
  v27 = v117;
  *(v21 + 112) = a3;
  *(v21 + 120) = v28;
  *(v21 + 176) = v22;
  *(v21 + 184) = v23;
  *(v21 + 152) = v27;
  *(v21 + 160) = a6;
  *(v21 + 216) = v22;
  *(v21 + 224) = v23;
  *(v21 + 192) = v118;
  *(v21 + 200) = a8;

  v109 = a6;

  v110 = a8;

  v29 = sub_22B360CCC();
  [v20 setPredicate_];
  v30 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v31 = sub_22B36081C();
  v32 = [v30 initWithKey:v31 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22B363650;
  *(v33 + 32) = v32;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v34 = v32;
  v35 = sub_22B360A3C();

  [v20 setSortDescriptors_];

  [v20 setFetchLimit_];
  [v20 setPredicate_];

  v36 = v115[6];
  sub_22B35EE1C();
  v37 = v36;
  v68 = sub_22B360E9C();
  v69 = v98;
  v70 = v100;
  v71 = v99;
  v72 = v101;

  if (!(v68 >> 62))
  {
    v73 = v70;
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_20:

    goto LABEL_5;
  }

  v73 = v70;
  if (!sub_22B36109C())
  {
    goto LABEL_20;
  }

LABEL_10:
  v74 = v69;
  if ((v68 & 0xC000000000000001) != 0)
  {
    v75 = MEMORY[0x23188EAC0](0, v68);
LABEL_13:
    v76 = v75;

    objc_autoreleasePoolPop(v112);
    v77 = v113;
    if (!v76)
    {
      while (1)
      {
        v48 = objc_opt_self();
        v49 = sub_22B36081C();
        v50 = v115;
        v51 = [v48 insertNewObjectForEntityForName:v49 inManagedObjectContext:v115[6]];

        v52 = sub_22B36081C();
        v53 = sub_22B36081C();
        [v51 setValue:v52 forKeyPath:v53];

        v54 = sub_22B36144C();
        v55 = sub_22B36081C();
        [v51 setValue:v54 forKeyPath:v55];

        v56 = sub_22B35DDDC();
        v57 = sub_22B36081C();
        [v51 setValue:v56 forKey:v57];

        v58 = sub_22B36081C();
        v59 = sub_22B36081C();
        [v51 setValue:v58 forKeyPath:v59];

        v60 = sub_22B36081C();
        v61 = sub_22B36081C();
        [v51 setValue:v60 forKeyPath:v61];

        v62 = sub_22B36081C();
        v63 = sub_22B36081C();
        [v51 setValue:v62 forKeyPath:v63];

        v64 = v50[6];
        v65 = swift_allocObject();
        *(v65 + 16) = sub_22B12823C;
        *(v65 + 24) = v50;
        v123 = sub_22B128240;
        v124 = v65;
        aBlock = MEMORY[0x277D85DD0];
        v120 = 1107296256;
        v121 = sub_22B32556C;
        v122 = &block_descriptor_26;
        v66 = _Block_copy(&aBlock);
        v67 = v64;

        [v67 performBlockAndWait_];

        _Block_release(v66);
        LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

        if ((v66 & 1) == 0)
        {
          break;
        }

        __break(1u);
        swift_once();
        v38 = v104;
        v39 = __swift_project_value_buffer(v104, qword_28140BD10);
        swift_beginAccess();
        v40 = v103;
        v41 = v102;
        (*(v103 + 16))(v102, v39, v38);

        v42 = sub_22B36050C();
        v43 = sub_22B360D1C();

        v44 = os_log_type_enabled(v42, v43);
        v45 = v113;
        if (v44)
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          aBlock = v47;
          *v46 = 136380675;
          *(v46 + 4) = sub_22B1A7B20(v45, v25, &aBlock);
          _os_log_impl(&dword_22B116000, v42, v43, "Failed to fetch cache entry for %{private}s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x23188F650](v47, -1, -1);
          MEMORY[0x23188F650](v46, -1, -1);
        }

        (*(v40 + 8))(v41, v38);
LABEL_5:
        objc_autoreleasePoolPop(v112);
      }

      goto LABEL_7;
    }

    v78 = [v76 managedObjectContext];
    if (v78)
    {
      v79 = *(v71 + 16);
      v115 = v78;
      v79(v73, v107, v72);
      v80 = (*(v71 + 80) + 42) & ~*(v71 + 80);
      v81 = (v74 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
      v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      *(v84 + 16) = v76;
      *(v84 + 24) = v77;
      *(v84 + 32) = v25;
      *(v84 + 40) = v106;
      (*(v71 + 32))(v84 + v80, v100, v101);
      v85 = (v84 + v81);
      v86 = v109;
      v88 = v115;
      v87 = v116;
      *v85 = v108;
      v85[1] = v87;
      v89 = (v84 + v82);
      v90 = v118;
      *v89 = v117;
      v89[1] = v86;
      v91 = (v84 + v83);
      v92 = v110;
      *v91 = v90;
      v91[1] = v92;
      *(v84 + ((v83 + 23) & 0xFFFFFFFFFFFFFFF8)) = v88;
      v93 = swift_allocObject();
      *(v93 + 16) = sub_22B2126DC;
      *(v93 + 24) = v84;
      v123 = sub_22B128240;
      v124 = v93;
      aBlock = MEMORY[0x277D85DD0];
      v120 = 1107296256;
      v121 = sub_22B32556C;
      v122 = &block_descriptor_36_0;
      v94 = _Block_copy(&aBlock);
      v95 = v88;

      v96 = v95;
      v97 = v76;

      [v96 performBlockAndWait_];

      _Block_release(v94);
      LOBYTE(v96) = swift_isEscapingClosureAtFileLocation();

      if ((v96 & 1) == 0)
      {
LABEL_7:
        objc_autoreleasePoolPop(v111);
        return;
      }

      __break(1u);
    }

    goto LABEL_7;
  }

  if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v75 = *(v68 + 32);
    goto LABEL_13;
  }

  __break(1u);
}

id sub_22B20FCEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v43 = a6;
  v44 = a8;
  v42 = a4;
  v41 = a3;
  v45 = a10;
  v14 = sub_22B36052C();
  v39[2] = *(v14 - 8);
  v39[3] = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v39[1] = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x23188EEB0](v15);
  v17 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v18 = sub_22B36081C();
  v19 = [v17 initWithEntityName_];

  [v19 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22B363640;
  v21 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = sub_22B1280E4();
  *(v20 + 64) = v22;
  v23 = MEMORY[0x277D84958];
  v39[0] = a1;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  v24 = MEMORY[0x277D849A0];
  *(v20 + 96) = v23;
  *(v20 + 104) = v24;
  *(v20 + 72) = v41;
  *(v20 + 136) = v21;
  *(v20 + 144) = v22;
  v25 = v43;
  *(v20 + 112) = v42;
  *(v20 + 120) = a5;
  *(v20 + 176) = v21;
  *(v20 + 184) = v22;
  *(v20 + 152) = v25;
  *(v20 + 160) = a7;
  *(v20 + 216) = v21;
  *(v20 + 224) = v22;
  *(v20 + 192) = v44;
  *(v20 + 200) = a9;
  v44 = a2;

  v26 = sub_22B360CCC();
  [v19 setPredicate_];
  v27 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v28 = sub_22B36081C();
  v29 = [v27 initWithKey:v28 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22B363650;
  *(v30 + 32) = v29;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v31 = v29;
  v32 = sub_22B360A3C();

  [v19 setSortDescriptors_];

  [v19 setFetchLimit_];
  [v19 setPredicate_];

  v33 = *(v45 + 48);
  sub_22B35EE1C();
  v34 = v33;
  v35 = sub_22B360E9C();

  if (!(v35 >> 62))
  {
    result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    v38 = 0;
    goto LABEL_7;
  }

  result = sub_22B36109C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v35 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x23188EAC0](0, v35);
    goto LABEL_6;
  }

  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v35 + 32);
LABEL_6:
    v38 = v37;

LABEL_7:
    objc_autoreleasePoolPop(v40);
    return v38;
  }

  __break(1u);
  return result;
}

void sub_22B210314(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27[4] = a11;
  v28 = a12;
  v27[3] = a10;
  v13 = sub_22B36052C();
  v27[1] = *(v13 - 8);
  v27[2] = v13;
  MEMORY[0x28223BE20](v13);
  v27[0] = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22B36081C();
  v16 = sub_22B36081C();
  [a1 setValue:v15 forKeyPath:v16];

  v17 = sub_22B36144C();
  v18 = sub_22B36081C();
  [a1 setValue:v17 forKeyPath:v18];

  v19 = sub_22B35DDDC();
  v20 = sub_22B36081C();
  [a1 setValue:v19 forKey:v20];

  v21 = sub_22B36081C();
  v22 = sub_22B36081C();
  [a1 setValue:v21 forKeyPath:v22];

  v23 = sub_22B36081C();
  v24 = sub_22B36081C();
  [a1 setValue:v23 forKeyPath:v24];

  v25 = sub_22B36081C();
  v26 = sub_22B36081C();
  [a1 setValue:v25 forKeyPath:v26];

  if (v28)
  {
    sub_22B2A534C(2);
  }
}

void sub_22B2106DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a6;
  v43 = a8;
  v41 = a4;
  v40 = a3;
  v39 = a1;
  v13 = sub_22B36052C();
  v37[1] = *(v13 - 8);
  v37[2] = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v37[0] = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x23188EEB0](v14);
  v16 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v17 = sub_22B36081C();
  v18 = [v16 initWithEntityName_];

  [v18 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22B363640;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v21 = sub_22B1280E4();
  *(v19 + 64) = v21;
  v22 = MEMORY[0x277D84958];
  *(v19 + 32) = v39;
  *(v19 + 40) = a2;
  v23 = MEMORY[0x277D849A0];
  *(v19 + 96) = v22;
  *(v19 + 104) = v23;
  *(v19 + 72) = v40;
  *(v19 + 136) = v20;
  *(v19 + 144) = v21;
  v24 = v42;
  *(v19 + 112) = v41;
  *(v19 + 120) = a5;
  *(v19 + 176) = v20;
  *(v19 + 184) = v21;
  *(v19 + 152) = v24;
  *(v19 + 160) = a7;
  *(v19 + 216) = v20;
  *(v19 + 224) = v21;
  *(v19 + 192) = v43;
  *(v19 + 200) = a9;

  v25 = sub_22B360CCC();
  [v18 setPredicate_];
  v26 = *(a10 + 48);
  sub_22B35EE1C();
  v27 = v26;
  v28 = sub_22B360E9C();

  if (v28 >> 62)
  {
    v29 = sub_22B36109C();
    if (!v29)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_10;
    }
  }

  if (v29 < 1)
  {
    goto LABEL_13;
  }

  for (i = 0; i != v29; ++i)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x23188EAC0](i, v28);
    }

    else
    {
      v31 = *(v28 + 8 * i + 32);
    }

    v32 = v31;
    [*(a10 + 48) deleteObject_];
  }

LABEL_10:

  v33 = *(a10 + 48);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_22B1281A4;
  *(v34 + 24) = a10;
  aBlock[4] = sub_22B12819C;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_16;
  v35 = _Block_copy(aBlock);
  v36 = v33;

  [v36 performBlockAndWait_];

  _Block_release(v35);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if ((v35 & 1) == 0)
  {
    objc_autoreleasePoolPop(v38);
    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_22B210C48(uint64_t a1@<X0>, void *a2@<X8>)
{
  v78 = a2;
  v4 = sub_22B36052C();
  v82 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x277D84F90];
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_22B36081C();
  v9 = [v7 initWithEntityName_];

  [v9 setResultType_];
  v10 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v11 = sub_22B36081C();
  v12 = [v10 initWithKey:v11 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22B363650;
  *(v13 + 32) = v12;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v14 = v12;
  v15 = sub_22B360A3C();

  [v9 setSortDescriptors_];

  v16 = *(a1 + 48);
  sub_22B35EE1C();
  v17 = v16;
  v18 = sub_22B360E9C();
  if (!v2)
  {
    v76[1] = 0;
    v77 = v14;
    v32 = v18;

    v33 = v32;
    v84 = MEMORY[0x277D84FA0];
    if (v32 >> 62)
    {
      v34 = sub_22B36109C();
      v33 = v32;
      v35 = v77;
      if (v34)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = v77;
      if (v34)
      {
LABEL_9:
        v76[0] = v9;
        if (v34 < 1)
        {
          __break(1u);
          return;
        }

        v36 = 0;
        v82 = v33 & 0xC000000000000001;
        v79 = MEMORY[0x277D84F90];
        v80 = v34;
        v81 = v33;
        do
        {
          if (v82)
          {
            v37 = MEMORY[0x23188EAC0](v36);
          }

          else
          {
            v37 = *(v33 + 8 * v36 + 32);
          }

          v38 = v37;
          v39 = v84;
          v40 = [v37 gridID];
          v41 = sub_22B36084C();
          v43 = v42;

          v85 = v41;
          v86 = v43;
          MEMORY[0x23188E270](59, 0xE100000000000000);
          v83 = [v38 guidanceType];
          v44 = sub_22B36131C();
          MEMORY[0x23188E270](v44);

          MEMORY[0x23188E270](59, 0xE100000000000000);
          v45 = [v38 ratePlan];
          v46 = sub_22B36084C();
          v48 = v47;

          MEMORY[0x23188E270](v46, v48);

          MEMORY[0x23188E270](59, 0xE100000000000000);
          v49 = [v38 utilityID];
          v50 = sub_22B36084C();
          v52 = v51;

          MEMORY[0x23188E270](v50, v52);

          MEMORY[0x23188E270](59, 0xE100000000000000);
          v53 = [v38 timeZone];
          v54 = sub_22B36084C();
          v56 = v55;

          MEMORY[0x23188E270](v54, v56);

          LOBYTE(v54) = sub_22B325CF0(v85, v86, v39);

          if (v54)
          {
          }

          else
          {
            v57 = [v38 gridID];
            v58 = sub_22B36084C();
            v60 = v59;

            v85 = v58;
            v86 = v60;
            MEMORY[0x23188E270](59, 0xE100000000000000);
            v83 = [v38 guidanceType];
            v61 = sub_22B36131C();
            MEMORY[0x23188E270](v61);

            MEMORY[0x23188E270](59, 0xE100000000000000);
            v62 = [v38 ratePlan];
            v63 = sub_22B36084C();
            v65 = v64;

            MEMORY[0x23188E270](v63, v65);

            MEMORY[0x23188E270](59, 0xE100000000000000);
            v66 = [v38 utilityID];
            v67 = sub_22B36084C();
            v69 = v68;

            MEMORY[0x23188E270](v67, v69);

            MEMORY[0x23188E270](59, 0xE100000000000000);
            v70 = [v38 timeZone];
            v71 = sub_22B36084C();
            v73 = v72;

            MEMORY[0x23188E270](v71, v73);

            sub_22B32DF50(&v85, v85, v86);

            v74 = v38;
            MEMORY[0x23188E350]();
            if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22B360A7C();
            }

            sub_22B360A9C();

            v79 = v89;
          }

          ++v36;
          v33 = v81;
        }

        while (v80 != v36);

        v35 = v77;
        v75 = v79;
LABEL_23:

        *v78 = v75;
        return;
      }
    }

    v75 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v20 = sub_22B36081C();
  v21 = [v19 initWithDomain:v20 code:1 userInfo:0];

  swift_willThrow();
  v22 = [objc_opt_self() processInfo];
  v23 = [v22 processName];

  v24 = sub_22B36084C();
  v26 = v25;

  LOWORD(v85) = 513;
  BYTE2(v85) = 10;
  v86 = v24;
  v87 = v26;
  v88 = 0;
  static AutoBugCaptureManager.sendIssue(_:)(&v85);

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  v28 = v82;
  (*(v82 + 16))(v6, v27, v4);
  v29 = sub_22B36050C();
  v30 = sub_22B360D1C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_22B116000, v29, v30, "Failed to fetch cache entries", v31, 2u);
    MEMORY[0x23188F650](v31, -1, -1);
  }

  (*(v28 + 8))(v6, v4);
  *v78 = MEMORY[0x277D84F90];
}

void sub_22B211518(void *a1, uint64_t a2)
{
  v4 = sub_22B36052C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_22B35DE9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22B35DE6C();
  v9 = sub_22B35DDDC();
  (*(v6 + 8))(v8, v5);
  v10 = sub_22B36081C();
  [a1 setValue:v9 forKey:v10];

  if (a2)
  {
    sub_22B2A534C(2);
  }
}

uint64_t sub_22B2117DC()
{
  type metadata accessor for EnergyGuidanceTrackerManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  *(v0 + 112) = sub_22B33AD90(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);

  qword_28140BDC0 = v0;
  return result;
}

id sub_22B211898(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10, uint64_t a11)
{
  sub_22B20F038(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a1);
  v12 = a1[6];

  return [v12 reset];
}

id sub_22B211914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_22B2106DC(a2, a3, a4, a5, a6, a7, a8, a10, a11, a1);
  v14 = v13;
  result = [*(a1 + 48) reset];
  *a9 = v14 & 1;
  return result;
}

uint64_t sub_22B211998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = a7;
  v31 = a8;
  v34 = a9;
  v33 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v29 - v19;
  v32 = a1;
  v21 = sub_22B20FCEC(a2, a3, a4, a5, a6, v30, v31, a10, a11, a1);
  v22 = v21;
  if (v21)
  {
    v23 = [v21 lastAccessed];
    sub_22B35DE5C();

    v24 = sub_22B35DE9C();
    (*(*(v24 - 8) + 56))(v20, 0, 1, v24);
  }

  else
  {
    v25 = sub_22B35DE9C();
    (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  }

  v26 = v33;
  sub_22B1B0624(v20, v33);
  v27 = *(v32 + 48);
  [v27 reset];

  return sub_22B1B05B4(v26, v34);
}

uint64_t sub_22B211B68()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "Get all energy guidance tracking from cache", v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 112);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 48);

  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA840, &qword_22B365DF8);
  sub_22B360E7C();

  return v14[2];
}

void sub_22B211D8C(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for CDEnergyGuidanceTracker(0);
  v45 = *(v5 - 1);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x23188EEB0](v6);
  sub_22B210C48(a1, &v46);
  if (v2)
  {
    objc_autoreleasePoolPop(v9);
    __break(1u);
  }

  else
  {
    v10 = 0;
    objc_autoreleasePoolPop(v9);
    v11 = v46;
    if (v46 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B36109C())
    {
      v38 = v10;
      v39 = a1;
      v40 = a2;
      if (!i)
      {
        break;
      }

      v13 = 0;
      v43 = v11 & 0xFFFFFFFFFFFFFF8;
      v44 = v11 & 0xC000000000000001;
      v14 = MEMORY[0x277D84F90];
      v41 = i;
      v42 = v11;
      while (1)
      {
        if (v44)
        {
          v15 = MEMORY[0x23188EAC0](v13, v11);
        }

        else
        {
          if (v13 >= *(v43 + 16))
          {
            goto LABEL_20;
          }

          v15 = *(v11 + 8 * v13 + 32);
        }

        v10 = v15;
        a2 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v16 = [v15 gridID];
        v17 = sub_22B36084C();
        v19 = v18;

        *v8 = v17;
        *(v8 + 1) = v19;
        *(v8 + 8) = [v10 guidanceType];
        v20 = [v10 lastAccessed];
        sub_22B35DE5C();

        v21 = [v10 ratePlan];
        v22 = sub_22B36084C();
        v24 = v23;

        v25 = &v8[v5[7]];
        *v25 = v22;
        v25[1] = v24;
        v26 = [v10 timeZone];
        v27 = sub_22B36084C();
        v29 = v28;

        v30 = &v8[v5[8]];
        *v30 = v27;
        v30[1] = v29;
        v31 = [v10 utilityID];
        v32 = sub_22B36084C();
        v34 = v33;

        v35 = &v8[v5[9]];
        *v35 = v32;
        v35[1] = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_22B32D094(0, v14[2] + 1, 1, v14);
        }

        v36 = v41;
        v11 = v42;
        a1 = v14[2];
        v37 = v14[3];
        v10 = (a1 + 1);
        if (a1 >= v37 >> 1)
        {
          v14 = sub_22B32D094((v37 > 1), a1 + 1, 1, v14);
        }

        v14[2] = v10;
        sub_22B212670(v8, v14 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * a1);
        ++v13;
        if (a2 == v36)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_18:

    [*(v39 + 48) reset];
    *v40 = v14;
  }
}