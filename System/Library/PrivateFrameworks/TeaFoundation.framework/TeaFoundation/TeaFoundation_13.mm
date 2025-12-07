uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ManualClock.Instant(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ManualClock.Instant(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_1BF1076D4(uint64_t a1)
{
  sub_1BF1794FC();
  if (v1 <= 0x3F)
  {
    sub_1BF107760(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BF107760(uint64_t a1)
{
  if (!qword_1EBDCC288)
  {
    sub_1BEFF79E8();
    v1 = sub_1BF17A80C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDCC288);
    }
  }
}

uint64_t sub_1BF1077CC(uint64_t a1, int a2)
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

uint64_t sub_1BF10780C(uint64_t result, int a2, int a3)
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

void sub_1BF1078D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ManualClock.WakeUp(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v29 - v19;
  v31 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v24 = -v22;
    v25 = a1 - a3;
    v36 = v21;
    v30 = v22;
    v26 = v21 + v22 * a3;
    while (2)
    {
      v34 = v23;
      v35 = a3;
      v32 = v26;
      v33 = v25;
      do
      {
        sub_1BF0C4520(v26, v20);
        sub_1BF0C4520(v23, v15);
        v27 = sub_1BF17BC3C();
        sub_1BF107310(v15);
        sub_1BF107310(v20);
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        sub_1BF0BE5BC(v26, v11);
        swift_arrayInitWithTakeFrontToBack();
        sub_1BF0BE5BC(v11, v23);
        v23 += v24;
        v26 += v24;
      }

      while (!__CFADD__(v25++, 1));
      a3 = v35 + 1;
      v23 = v34 + v30;
      v25 = v33 - 1;
      v26 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BF107AD4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v106 = a1;
  v119 = type metadata accessor for ManualClock.WakeUp(0);
  v113 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v9);
  v110 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v117 = &v103 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v118 = &v103 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v103 - v19;
  v114 = a3;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v5 = *v106;
    if (!*v106)
    {
      goto LABEL_140;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v97 = (v23 + 16);
      v98 = *(v23 + 16);
      for (i = v23; v98 >= 2; v23 = i)
      {
        if (!*v114)
        {
          goto LABEL_137;
        }

        v99 = (v23 + 16 * v98);
        v23 = *v99;
        v100 = &v97[2 * v98];
        v101 = *(v100 + 1);
        sub_1BF108344(*v114 + *(v113 + 72) * *v99, *v114 + *(v113 + 72) * *v100, *v114 + *(v113 + 72) * v101, v5);
        if (v6)
        {
          break;
        }

        if (v101 < v23)
        {
          goto LABEL_125;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_126;
        }

        *v99 = v23;
        v99[1] = v101;
        v102 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_127;
        }

        v98 = *v97 - 1;
        sub_1BF1751C0(v100 + 16, v102, v100);
        *v97 = v98;
      }

LABEL_109:

      return;
    }

LABEL_134:
    v23 = sub_1BF1751AC(v23);
    goto LABEL_101;
  }

  v105 = a4;
  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    if (v22 + 1 < v21)
    {
      v26 = *v114;
      v5 = *(v113 + 72);
      v116 = v22 + 1;
      v27 = v26 + v5 * v25;
      v112 = v21;
      sub_1BF0C4520(v27, v20);
      v28 = v26 + v5 * v24;
      v107 = v24;
      v29 = v118;
      sub_1BF0C4520(v28, v118);
      v30 = sub_1BF17BC3C();
      sub_1BF107310(v29);
      sub_1BF107310(v20);
      v31 = v112;
      v32 = v107 + 2;
      i = v5;
      v33 = v26 + v5 * (v107 + 2);
      while (1)
      {
        v34 = v32;
        if (++v116 >= v31)
        {
          break;
        }

        sub_1BF0C4520(v33, v20);
        v5 = v118;
        sub_1BF0C4520(v27, v118);
        v35 = sub_1BF17BC3C() & 1;
        sub_1BF107310(v5);
        sub_1BF107310(v20);
        v33 += i;
        v27 += i;
        v32 = v34 + 1;
        v31 = v112;
        if ((v30 & 1) != v35)
        {
          if (v30)
          {
            goto LABEL_8;
          }

LABEL_28:
          v25 = v116;
          v24 = v107;
          goto LABEL_30;
        }
      }

      v116 = v31;
      if ((v30 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_8:
      v25 = v116;
      if (v116 < v107)
      {
        goto LABEL_131;
      }

      if (v107 < v116)
      {
        v5 = v23;
        v104 = v6;
        if (v31 >= v34)
        {
          v36 = v34;
        }

        else
        {
          v36 = v31;
        }

        v37 = i * (v36 - 1);
        v38 = i * v36;
        v39 = v107 * i;
        v40 = v107;
        do
        {
          if (v40 != --v25)
          {
            v41 = *v114;
            if (!*v114)
            {
              goto LABEL_138;
            }

            sub_1BF0BE5BC(v41 + v39, v110);
            v42 = v39 < v37 || v41 + v39 >= (v41 + v38);
            if (v42)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v39 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1BF0BE5BC(v110, v41 + v37);
          }

          ++v40;
          v37 -= i;
          v38 -= i;
          v39 += i;
        }

        while (v40 < v25);
        v6 = v104;
        v23 = v5;
        goto LABEL_28;
      }

      v24 = v107;
    }

LABEL_30:
    v43 = v114[1];
    if (v25 < v43)
    {
      if (__OFSUB__(v25, v24))
      {
        goto LABEL_130;
      }

      if (v25 - v24 < v105)
      {
        break;
      }
    }

LABEL_46:
    if (v25 < v24)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BF0A6798();
      v23 = v95;
    }

    v54 = *(v23 + 16);
    v55 = v54 + 1;
    if (v54 >= *(v23 + 24) >> 1)
    {
      sub_1BF0A6798();
      v23 = v96;
    }

    *(v23 + 16) = v55;
    v56 = v23 + 32;
    v57 = (v23 + 32 + 16 * v54);
    *v57 = v24;
    v57[1] = v25;
    v112 = *v106;
    if (!v112)
    {
      goto LABEL_139;
    }

    v116 = v25;
    if (v54)
    {
      i = v23;
      while (1)
      {
        v58 = v55 - 1;
        v59 = (v56 + 16 * (v55 - 1));
        v60 = (v23 + 16 * v55);
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v61 = *(v23 + 32);
          v62 = *(v23 + 40);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_67:
          if (v64)
          {
            goto LABEL_116;
          }

          v76 = *v60;
          v75 = v60[1];
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_119;
          }

          v80 = v59[1];
          v81 = v80 - *v59;
          if (__OFSUB__(v80, *v59))
          {
            goto LABEL_122;
          }

          if (__OFADD__(v78, v81))
          {
            goto LABEL_124;
          }

          if (v78 + v81 >= v63)
          {
            if (v63 < v81)
            {
              v58 = v55 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v55 < 2)
        {
          goto LABEL_118;
        }

        v83 = *v60;
        v82 = v60[1];
        v71 = __OFSUB__(v82, v83);
        v78 = v82 - v83;
        v79 = v71;
LABEL_82:
        if (v79)
        {
          goto LABEL_121;
        }

        v85 = *v59;
        v84 = v59[1];
        v71 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v71)
        {
          goto LABEL_123;
        }

        if (v86 < v78)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v58 - 1 >= v55)
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*v114)
        {
          goto LABEL_136;
        }

        v5 = v20;
        v90 = (v56 + 16 * (v58 - 1));
        v91 = *v90;
        v92 = v58;
        v93 = v56 + 16 * v58;
        v23 = *(v93 + 8);
        sub_1BF108344(*v114 + *(v113 + 72) * *v90, *v114 + *(v113 + 72) * *v93, *v114 + *(v113 + 72) * v23, v112);
        if (v6)
        {
          goto LABEL_109;
        }

        if (v23 < v91)
        {
          goto LABEL_111;
        }

        v6 = *(i + 16);
        if (v92 > v6)
        {
          goto LABEL_112;
        }

        *v90 = v91;
        v90[1] = v23;
        if (v92 >= v6)
        {
          goto LABEL_113;
        }

        v55 = v6 - 1;
        sub_1BF1751C0((v93 + 16), v6 - 1 - v92, v93);
        v23 = i;
        *(i + 16) = v6 - 1;
        v94 = v6 > 2;
        v6 = 0;
        v20 = v5;
        if (!v94)
        {
          goto LABEL_96;
        }
      }

      v65 = v56 + 16 * v55;
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_114;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_115;
      }

      v72 = v60[1];
      v73 = v72 - *v60;
      if (__OFSUB__(v72, *v60))
      {
        goto LABEL_117;
      }

      v71 = __OFADD__(v63, v73);
      v74 = v63 + v73;
      if (v71)
      {
        goto LABEL_120;
      }

      if (v74 >= v68)
      {
        v88 = *v59;
        v87 = v59[1];
        v71 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v71)
        {
          goto LABEL_128;
        }

        if (v63 < v89)
        {
          v58 = v55 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v21 = v114[1];
    v22 = v116;
    if (v116 >= v21)
    {
      goto LABEL_99;
    }
  }

  v44 = v24 + v105;
  if (__OFADD__(v24, v105))
  {
    goto LABEL_132;
  }

  if (v44 >= v43)
  {
    v44 = v114[1];
  }

  if (v44 < v24)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v25 == v44)
  {
    goto LABEL_46;
  }

  i = v23;
  v104 = v6;
  v45 = *v114;
  v46 = *(v113 + 72);
  v47 = *v114 + v46 * (v25 - 1);
  v48 = -v46;
  v107 = v24;
  v108 = v46;
  v49 = v24 - v25;
  v50 = v45 + v25 * v46;
  v109 = v44;
LABEL_39:
  v116 = v25;
  v51 = v50;
  v111 = v49;
  v112 = v47;
  v52 = v47;
  while (1)
  {
    sub_1BF0C4520(v51, v20);
    v5 = v118;
    sub_1BF0C4520(v52, v118);
    v53 = sub_1BF17BC3C();
    sub_1BF107310(v5);
    sub_1BF107310(v20);
    if ((v53 & 1) == 0)
    {
LABEL_44:
      v25 = v116 + 1;
      v47 = v112 + v108;
      v49 = v111 - 1;
      v50 += v108;
      if (v116 + 1 == v109)
      {
        v25 = v109;
        v6 = v104;
        v23 = i;
        v24 = v107;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v45)
    {
      break;
    }

    v5 = v117;
    sub_1BF0BE5BC(v51, v117);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BF0BE5BC(v5, v52);
    v52 += v48;
    v51 += v48;
    v42 = __CFADD__(v49++, 1);
    if (v42)
    {
      goto LABEL_44;
    }
  }

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
}

void sub_1BF108344(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for ManualClock.WakeUp(0);
  MEMORY[0x1EEE9AC00](v51, v9);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v45 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v54 = a1;
  v53 = a4;
  v21 = v19 / v17;
  v45[1] = v4;
  if ((a2 - a1) / v17 >= v19 / v17)
  {
    sub_1BF0A6F14(a2, v19 / v17, a4);
    v27 = a4 + v21 * v17;
    v28 = -v17;
    v29 = v27;
    v30 = a3;
    v47 = a1;
    v48 = a4;
    v50 = -v17;
LABEL_37:
    v49 = a2 + v28;
    v31 = v30;
    v45[0] = v29;
    while (1)
    {
      if (v27 <= a4)
      {
        v54 = a2;
        v52 = v29;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v46 = v29;
      v32 = v31 + v28;
      v33 = v27 + v28;
      v34 = v31;
      sub_1BF0C4520(v27 + v28, v15);
      sub_1BF0C4520(v49, v11);
      v35 = sub_1BF17BC3C();
      v36 = v11;
      v37 = v35;
      v38 = v36;
      sub_1BF107310(v36);
      sub_1BF107310(v15);
      if (v37)
      {
        v45[0] = v27;
        v40 = v34 < a2 || v32 >= a2;
        v30 = v32;
        if (v40)
        {
          v41 = v49;
          swift_arrayInitWithTakeFrontToBack();
          v42 = v41;
          v29 = v46;
          a1 = v47;
          v11 = v38;
          a2 = v42;
          a4 = v48;
          v28 = v50;
          v27 = v45[0];
        }

        else
        {
          v29 = v46;
          v18 = v34 == a2;
          v43 = v49;
          v28 = v50;
          v11 = v38;
          a2 = v49;
          a1 = v47;
          a4 = v48;
          v27 = v45[0];
          if (!v18)
          {
            v44 = v46;
            swift_arrayInitWithTakeBackToFront();
            v27 = v45[0];
            v28 = v50;
            a2 = v43;
            v29 = v44;
          }
        }

        goto LABEL_37;
      }

      if (v34 < v27 || v32 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v32;
        v27 = v33;
        v29 = v33;
        v11 = v38;
        a1 = v47;
        a4 = v48;
        v28 = v50;
      }

      else
      {
        v29 = v33;
        v18 = v27 == v34;
        v31 = v32;
        v27 = v33;
        v11 = v38;
        a1 = v47;
        a4 = v48;
        v28 = v50;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v28 = v50;
          v31 = v32;
          v27 = v33;
          v29 = v33;
        }
      }
    }

    v54 = a2;
    v52 = v45[0];
  }

  else
  {
    sub_1BF0A6F14(a1, (a2 - a1) / v17, a4);
    v22 = a4 + (a2 - a1) / v17 * v17;
    v52 = v22;
    while (a4 < v22 && a2 < a3)
    {
      sub_1BF0C4520(a2, v15);
      sub_1BF0C4520(a4, v11);
      v24 = sub_1BF17BC3C();
      sub_1BF107310(v11);
      sub_1BF107310(v15);
      if (v24)
      {
        if (a1 < a2 || a1 >= a2 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v17;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v53 = a4 + v17;
        a4 += v17;
      }

      a1 += v17;
      v54 = a1;
    }
  }

LABEL_59:
  sub_1BF1087A8(&v54, &v53, &v52);
}

uint64_t sub_1BF1087A8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ManualClock.WakeUp(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1BF108888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1BF1794FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  sub_1BF108B88(qword_1ED8F0138, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v27 = a1;
  v10 = sub_1BF179F1C();
  v26 = v9;
  v11 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v12 = v10 & v11;
    if (((*(v9 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
    {
      v15 = 1;
      v16 = v25;
      return __swift_storeEnumTagSinglePayload(v16, v15, 1, v4);
    }

    v13 = *(v5 + 72) * v12;
    (*(v5 + 16))(v8, *(v26 + 48) + v13, v4);
    sub_1BF108B88(&qword_1ED8F0130, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v14 = sub_1BF17A05C();
    (*(v5 + 8))(v8, v4);
    if (v14)
    {
      break;
    }

    v10 = v12 + 1;
  }

  v17 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v17;
  v28 = *v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BF171F58(v19);
    v20 = v28;
  }

  v21 = *(v20 + 48) + v13;
  v16 = v25;
  (*(v5 + 32))(v25, v21, v4);
  sub_1BF108BD0(v12);
  v15 = 0;
  *v17 = v28;
  return __swift_storeEnumTagSinglePayload(v16, v15, 1, v4);
}

uint64_t sub_1BF108AFC(uint64_t a1)
{
  sub_1BF108EDC(0, &qword_1EBDCC290, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF108B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BF108BD0(int64_t a1)
{
  v3 = sub_1BF1794FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1BF17B0DC();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v37 = (v13 + 1) & v12;
      v15 = *(v4 + 16);
      v14 = v4 + 16;
      v36 = v15;
      v16 = *(v14 + 56);
      v38 = v14;
      v39 = v16;
      v17 = v12;
      v18 = (v14 - 8);
      v19 = v8;
      while (1)
      {
        v20 = v9;
        v21 = v39 * v11;
        v22 = v17;
        v36(v7, *(v19 + 48) + v39 * v11, v3);
        v23 = v19;
        sub_1BF108B88(qword_1ED8F0138, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v24 = sub_1BF179F1C();
        (*v18)(v7, v3);
        v17 = v22;
        v25 = v24 & v22;
        if (a1 >= v37)
        {
          if (v25 < v37 || a1 < v25)
          {
LABEL_20:
            v19 = v23;
            goto LABEL_24;
          }
        }

        else if (v25 < v37 && a1 < v25)
        {
          goto LABEL_20;
        }

        v19 = v23;
        v27 = *(v23 + 48);
        v28 = v39 * a1;
        v29 = v27 + v39 * a1;
        v30 = v27 + v21 + v39;
        if (v39 * a1 < v21 || v29 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v17 = v22;
          a1 = v11;
          goto LABEL_24;
        }

        a1 = v11;
        if (v28 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v11 = (v11 + 1) & v17;
        v9 = v20;
        if (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v8;
LABEL_28:
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v8;
  }

  v33 = *(v19 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v35;
    ++*(v19 + 36);
  }
}

void sub_1BF108EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t whenFirst<A, B, C>(on:providers:provide:where:)(void *a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v60 = a6;
  v61 = a4;
  v57 = a5;
  v66 = a3;
  v59 = a1;
  v63 = a9;
  v13 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_20();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v53 - v16;
  OUTLINED_FUNCTION_2_3();
  v55 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v62 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v53 - v28;
  OUTLINED_FUNCTION_2_3();
  v65 = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v64 = &v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a8;
  v56 = a10;
  v34 = a2;
  sub_1BF17AB3C();
  if (__swift_getEnumTagSinglePayload(v29, 1, a7) == 1)
  {
    (*(v25 + 8))(v29, v23);
    type metadata accessor for Promise(0, v13, v35, v36);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v63);
    return Promise.__allocating_init(value:)();
  }

  else
  {
    v39 = v63;
    v38 = v64;
    v54 = v13;
    (*(v65 + 32))(v64, v29, a7);
    v40 = v38;
    v41 = v61;
    v53 = v66(v40);
    if (v53)
    {
      v42 = v55;
      v43 = v58;
      (*(v55 + 16))(v62, v34, v58);
      v44 = (*(v42 + 80) + 72) & ~*(v42 + 80);
      v37 = (v20 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      *(v45 + 2) = a7;
      *(v45 + 3) = v43;
      v47 = v56;
      v46 = v57;
      *(v45 + 4) = v39;
      *(v45 + 5) = v47;
      v48 = v59;
      v49 = v60;
      *(v45 + 6) = v46;
      *(v45 + 7) = v49;
      *(v45 + 8) = v48;
      (*(v42 + 32))(&v45[v44], v62, v43);
      v50 = &v45[v37];
      *v50 = v66;
      *(v50 + 1) = v41;

      v51 = v48;
      OUTLINED_FUNCTION_95();

      Promise.then<A>(on:closure:)(v37, sub_1BF10AA74, v45, v54);
      OUTLINED_FUNCTION_95();
    }

    else
    {
      v37 = sub_1BF10A730(v59, a2, v66, v41, v57, v60, a7, v58, v39, v56);
    }

    (*(v65 + 8))(v64, a7);
  }

  return v37;
}

void when3<A, B, C>(on:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_28_9();
  v14 = *v13;
  v16 = *v15;
  v18 = *v17;
  sub_1BF041640();
  swift_allocObject();
  v52 = sub_1BF17A50C();
  v20 = v19;
  OUTLINED_FUNCTION_14_0();
  v21 = swift_allocObject();
  v21[2] = *(v14 + 80);
  v22 = *(v16 + 80);
  v21[3] = v22;
  v23 = *(v18 + 80);
  v21[4] = v23;
  v24 = OUTLINED_FUNCTION_54();
  v26 = type metadata accessor for WhenEither3(v24, v25, v22, v23);
  v27 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v28, v29, v30, v26);
  OUTLINED_FUNCTION_66();

  *v20 = v10;
  OUTLINED_FUNCTION_14_0();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_15_18(v31);
  v32 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v33, v34, v35, v26);
  OUTLINED_FUNCTION_66();

  v20[1] = v12;
  OUTLINED_FUNCTION_14_0();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_15_18(v36);
  v37 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v38, v39, v40, v26);
  OUTLINED_FUNCTION_66();

  v20[2] = v11;
  v43 = type metadata accessor for Promise(0, v26, v41, v42);
  sub_1BF00CD7C(v52, v43);
  when<A>(on:_:)(a10, v44, v26, v45);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_14_0();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_15_18(v46);
  sub_1BF17A65C();
  OUTLINED_FUNCTION_54();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v48 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v49, v50, v51, TupleTypeMetadata3);
  OUTLINED_FUNCTION_95();

  OUTLINED_FUNCTION_33();
}

uint64_t sub_1BF109598(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3, v7);
  v57 = &v52 - v8;
  v58 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v59 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WhenEither3(0, a2, a3, a4);
  v63 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v52 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v52 - v25;
  v62 = a2;
  v27 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_8;
  }

  v54 = a4;
  v55 = v27;
  v32 = v26;
  v33 = v62;
  (*(v27 + 32))(v31, v32, v62);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v18 = v22;
LABEL_7:
    (*(v55 + 8))(v31, v33);
    v26 = v18;
LABEL_8:
    (*(v63 + 8))(v26, v15);
    v49 = 0x80000001BF18F060;
    sub_1BF10E70C();
    swift_allocError();
    *v50 = 0xD00000000000001FLL;
    v50[1] = 0x80000001BF18F060;
    swift_willThrow();
    return v49;
  }

  v34 = v61;
  v35 = v59;
  (*(v61 + 32))(v59, v22, a3);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v34 + 8))(v35, a3);
    goto LABEL_7;
  }

  v36 = v58;
  v37 = v54;
  (*(v58 + 32))(v60, v18, v54);
  v38 = TupleTypeMetadata3;
  v63 = type metadata accessor for Promise(0, TupleTypeMetadata3, v39, v40);
  v41 = v31;
  v52 = a3;
  v53 = v31;
  v42 = v34;
  v43 = *(v38 + 48);
  v44 = *(v38 + 64);
  v45 = v55;
  v46 = v33;
  v47 = v57;
  (*(v55 + 16))(v57, v41, v46);
  (*(v42 + 16))(&v47[v43], v35, a3);
  v48 = v60;
  (*(v36 + 16))(&v47[v44], v60, v37);
  v49 = Promise.__allocating_init(value:)();
  (*(v36 + 8))(v48, v37);
  (*(v42 + 8))(v35, v52);
  (*(v45 + 8))(v53, v62);
  return v49;
}

uint64_t when4<A, B, C, D>(on:_:_:_:_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  sub_1BF041640();
  swift_allocObject();
  v50 = sub_1BF17A50C();
  v11 = v10;
  OUTLINED_FUNCTION_85();
  v12 = swift_allocObject();
  v13 = *(v6 + 80);
  v12[2] = v13;
  v14 = *(v7 + 80);
  v12[3] = v14;
  v15 = *(v8 + 80);
  v12[4] = v15;
  v16 = *(v9 + 80);
  v12[5] = v16;
  v52 = v13;
  v53 = v14;
  v54 = v15;
  v55 = v16;
  v17 = type metadata accessor for WhenEither4(0, &v52);
  v18 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v18, sub_1BF10D838, v12, v17);
  v20 = v19;

  *v11 = v20;
  OUTLINED_FUNCTION_85();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_4_29(v21);
  v22 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v23, v24, v25, v17);
  OUTLINED_FUNCTION_66();

  v11[1] = a3;
  OUTLINED_FUNCTION_85();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_4_29(v26);
  v27 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v28, v29, v30, v17);
  OUTLINED_FUNCTION_66();

  v11[2] = a4;
  OUTLINED_FUNCTION_85();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_4_29(v31);
  v32 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v33, v34, v35, v17);
  OUTLINED_FUNCTION_66();

  v11[3] = a5;
  v38 = type metadata accessor for Promise(0, v17, v36, v37);
  sub_1BF00CD7C(v50, v38);
  when<A>(on:_:)(a1, v39, v17, v40);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_85();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_4_29(v41);
  sub_1BF17A65C();
  v52 = v13;
  v53 = v14;
  v54 = v15;
  v55 = v16;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v43 = sub_1BF014EDC();
  OUTLINED_FUNCTION_6_33();
  Promise.then<A>(on:closure:)(v44, v45, v46, TupleTypeMetadata);
  OUTLINED_FUNCTION_95();

  return TupleTypeMetadata;
}

uint64_t sub_1BF109DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a2 - 8) + 16))(a6, a1, a2);
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  type metadata accessor for WhenEither4(0, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF109EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 16))(a6, a1);
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  type metadata accessor for WhenEither4(0, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF109F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 16))(a6, a1, a4);
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  type metadata accessor for WhenEither4(0, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF109FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 16))(a6, a1, a5);
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  type metadata accessor for WhenEither4(0, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF10A094(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a2;
  v76 = a3;
  v77 = a4;
  v78 = a5;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v9);
  v66 = &v60 - v10;
  v67 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v68 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v70 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v74 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a2;
  v76 = a3;
  v77 = a4;
  v72 = a4;
  v64 = a5;
  v78 = a5;
  v20 = type metadata accessor for WhenEither4(0, &v75);
  v79 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v60 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v60 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v60 - v34;
  v73 = a2;
  v36 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v60 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_9;
  }

  v62 = v23;
  v63 = v40;
  v41 = v40;
  v42 = v72;
  v43 = v73;
  (*(v36 + 32))(v41, v35, v73);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_8:
    (*(v36 + 8))(v63, v43);
    v35 = v31;
LABEL_9:
    (*(v79 + 8))(v35, v20);
    sub_1BF10E70C();
    swift_allocError();
    *v58 = 0xD00000000000001FLL;
    v58[1] = 0x80000001BF18F040;
    swift_willThrow();
    return v20;
  }

  v44 = v71;
  (*(v71 + 32))(v74, v31, a3);
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_7:
    (*(v44 + 8))(v74, a3);
    v31 = v27;
    goto LABEL_8;
  }

  v61 = v36;
  v46 = v69;
  v45 = v70;
  (*(v69 + 32))(v70, v27, v42);
  v27 = v62;
  sub_1BF17A69C();
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v46 + 8))(v45, v42);
    v36 = v61;
    goto LABEL_7;
  }

  v47 = v67;
  v48 = v27;
  v49 = v64;
  (*(v67 + 32))(v68, v48, v64);
  v50 = TupleTypeMetadata;
  v79 = type metadata accessor for Promise(0, TupleTypeMetadata, v51, v52);
  v53 = v43;
  v54 = v50[12];
  v62 = v50[16];
  TupleTypeMetadata = v50[20];
  v55 = v61;
  v56 = v66;
  (*(v61 + 16))(v66, v63, v53);
  (*(v44 + 16))(&v56[v54], v74, a3);
  (*(v46 + 16))(&v62[v56], v70, v42);
  v57 = v68;
  (*(v47 + 16))(&v56[TupleTypeMetadata], v68, v49);
  v20 = Promise.__allocating_init(value:)();
  (*(v47 + 8))(v57, v49);
  (*(v46 + 8))(v70, v42);
  (*(v44 + 8))(v74, a3);
  (*(v55 + 8))(v63, v73);
  return v20;
}

uint64_t sub_1BF10A730(void *a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = a6;
  v29 = a7;
  v26 = a4;
  v27 = a5;
  v24 = a1;
  v25 = a3;
  v12 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v20 = &v24 - v19;
  (*(v12 + 16))(v14, a2, a8, v18);
  sub_1BF084344();
  sub_1BF17AB8C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = whenFirst<A, B, C>(on:providers:provide:where:)(v24, v20, v25, v26, v27, v28, v29, AssociatedTypeWitness, a9, AssociatedConformanceWitness);
  (*(v16 + 8))(v20, AssociatedTypeWitness);
  return v22;
}

uint64_t sub_1BF10A91C(uint64_t a1, uint64_t (*a2)(uint64_t, double), uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v25 = a7;
  v26 = a8;
  v17 = sub_1BF17AE6C();
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v25 - v20;
  if ((a2(a1, v19) & 1) == 0)
  {
    return sub_1BF10A730(a4, a5, a6, v25, a2, a3, v26, a9, a10, a11);
  }

  type metadata accessor for Promise(0, v17, v22, v23);
  (*(*(a10 - 8) + 16))(v21, a1, a10);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, a10);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1BF10AA74(uint64_t a1)
{
  v2 = (*(*(*(v1 + 24) - 8) + 80) + 72) & ~*(*(*(v1 + 24) - 8) + 80);
  v3 = v1 + ((*(*(*(v1 + 24) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1BF10A91C(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v2, *v3, *(v3 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

uint64_t whenSome<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v24[2] = a3;
  type metadata accessor for Promise(255, a3, a3, a4);
  sub_1BF17A65C();
  v7 = OUTLINED_FUNCTION_16_16();
  type metadata accessor for Result(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_10_23();
  v15 = type metadata accessor for Promise(v11, v12, v13, v14);
  WitnessTable = swift_getWitnessTable();
  v25 = sub_1BEFF5EDC(sub_1BF10D8DC, v24, v4, v15, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v17);
  OUTLINED_FUNCTION_39_0();
  v18 = sub_1BF17A65C();
  v19 = swift_getWitnessTable();
  static Promise.all<A>(on:_:)(a1, &v25, v18, v19);

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  OUTLINED_FUNCTION_10_23();
  sub_1BF17A65C();
  sub_1BF17A65C();
  sub_1BF10D918(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v22, sub_1BF10D8FC, v20, TupleTypeMetadata2);
  OUTLINED_FUNCTION_31_10();

  return TupleTypeMetadata2;
}

void sub_1BF10ACD4(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v7 = type metadata accessor for Result(0, a1, v5, v6);
  v8 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v8, sub_1BF10E6D4, v4, v7);

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = sub_1BF0075B8();
  v11 = Promise.recover(on:closure:)(v10, sub_1BF10E6F0, v9);

  *a2 = v11;
}

uint64_t sub_1BF10ADE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  type metadata accessor for Result(0, a2, v4, v5);
  return swift_storeEnumTagMultiPayload();
}

id sub_1BF10AE6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  type metadata accessor for Result(0, a2, a3, a4);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1BF10AEC4(void *a1, uint64_t a2)
{
  sub_1BF179CFC();
  type metadata accessor for Result(255, a2, v3, v4);
  sub_1BF17A65C();
  sub_1BF17A65C();
  sub_1BF10D918(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_1BF17A3EC();
  swift_getWitnessTable();
  if ((sub_1BF17AB6C() & 1) != 0 && *(v10 + 16))
  {

    if (*(v10 + 16))
    {
      v9 = *(v10 + 32);

      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for Promise(0, TupleTypeMetadata2, v6, v7);
    return Promise.__allocating_init(value:)();
  }

  return result;
}

uint64_t sub_1BF10B060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v25 - v11;
  v15 = type metadata accessor for Result(0, v13, v13, v14);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = (v25 - v18);
  (*(v20 + 16))(v25 - v18, a2, v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v19;
    sub_1BF071C14();
    v22 = *(*(a1 + 8) + 16);
    result = sub_1BF071E50(v22);
    v24 = *(a1 + 8);
    *(v24 + 16) = v22 + 1;
    *(v24 + 8 * v22 + 32) = v21;
    *(a1 + 8) = v24;
  }

  else
  {
    (*(v6 + 32))(v12, v19, a3);
    (*(v6 + 16))(v8, v12, a3);
    sub_1BF17A65C();
    sub_1BF17A5DC();
    return (*(v6 + 8))(v12, a3);
  }

  return result;
}

uint64_t whenSome<A, B>(on:_:_:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  sub_1BF041640();
  OUTLINED_FUNCTION_85();
  swift_allocObject();
  v6 = sub_1BF17A50C();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_24_11(&unk_1F3DC1E18);
  v10 = *(v4 + 80);
  *(v9 + 16) = v10;
  v11 = *(v5 + 80);
  *(v9 + 24) = v11;
  v12 = OUTLINED_FUNCTION_54();
  v15 = type metadata accessor for WhenEither2(v12, v13, v11, v14);
  v16 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v16, sub_1BF10E7A8, v9, v15);
  v18 = v17;

  *v8 = v18;
  v19 = OUTLINED_FUNCTION_24_11(&unk_1F3DC1E40);
  *(v19 + 16) = v10;
  *(v19 + 24) = v11;
  v20 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v20, sub_1BF10E7C0, v19, v15);
  v22 = v21;

  v8[1] = v22;
  v23 = OUTLINED_FUNCTION_39_0();
  v27 = type metadata accessor for Promise(v23, v24, v25, v26);
  sub_1BF00CD7C(v6, v27);
  whenSome<A>(on:_:)(a1, v28, v15, v29);
  OUTLINED_FUNCTION_17_9();

  v30 = OUTLINED_FUNCTION_24_11(&unk_1F3DC1E68);
  *(v30 + 16) = v10;
  *(v30 + 24) = v11;
  sub_1BF17A65C();
  sub_1BF10D918(255);
  swift_getTupleTypeMetadata2();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_16_16();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_54();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = sub_1BF014EDC();
  Promise.then<A>(on:closure:)(v32, sub_1BF10D970, v30, TupleTypeMetadata2);
  OUTLINED_FUNCTION_31_10();

  return TupleTypeMetadata2;
}

uint64_t sub_1BF10B4E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v33 = sub_1BF17AE6C();
  v41 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v5);
  v7 = &v33 - v6;
  v8 = sub_1BF17AE6C();
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  MEMORY[0x1EEE9AC00](v8, v8);
  v11 = &v33 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v35 = &v33 - v18;
  v19 = *a1;
  v37 = type metadata accessor for Promise(0, TupleTypeMetadata2, v20, v21);
  v44 = v19;
  v22 = a2;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, a2);
  v23 = v7;
  v24 = v36;
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v36);
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = *(v40 + 32);
  v40 += 32;
  v34 = v26;
  v26(v15, v11, v39);
  v27 = *(v41 + 32);
  v41 += 32;
  v28 = v33;
  v27(&v15[v25], v23, v33);
  v42 = v22;
  v43 = v24;
  type metadata accessor for WhenEither2(255, v22, v24, v29);
  sub_1BF17A65C();
  swift_getWitnessTable();
  v30 = v35;
  sub_1BF17A3FC();
  (*(v38 + 8))(v15, TupleTypeMetadata2);
  v31 = *(TupleTypeMetadata2 + 48);
  v34(v15, v30, v39);
  v27(&v15[v31], &v30[v31], v28);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1BF10B85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a1;
  v35 = a5;
  v31 = *(a4 - 8);
  v32 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF17AE6C();
  v10 = sub_1BF17AE6C();
  v33 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v13);
  v15 = &v30 - v14;
  v17 = type metadata accessor for WhenEither2(0, a3, a4, v16);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v30 - v20;
  (*(v22 + 16))(&v30 - v20, v32, v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v10;
    v23 = *(v31 + 32);
    v23(v8, v21, a4);
    v24 = *(TupleTypeMetadata2 + 48);
    (*(v12 + 16))(v15, v34, TupleTypeMetadata2);
    v25 = *(TupleTypeMetadata2 + 48);
    v26 = v35;
    (*(*(v33 - 8) + 32))(v35, v15);
    v23((v26 + v24), v8, a4);
    __swift_storeEnumTagSinglePayload(v26 + v24, 0, 1, a4);
    return (*(*(v32 - 8) + 8))(&v15[v25]);
  }

  else
  {
    v28 = *(TupleTypeMetadata2 + 48);
    v29 = v35;
    (*(*(a3 - 8) + 32))(v35, v21, a3);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, a3);
    (*(v12 + 16))(v15, v34, TupleTypeMetadata2);
    (*(*(v10 - 8) + 32))(v29 + v28, &v15[*(TupleTypeMetadata2 + 48)], v10);
    return (*(*(v33 - 8) + 8))(v15);
  }
}

void whenSome3<A, B, C>(on:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_28_9();
  v14 = *v13;
  v16 = *v15;
  v18 = *v17;
  sub_1BF041640();
  swift_allocObject();
  v52 = sub_1BF17A50C();
  v20 = v19;
  OUTLINED_FUNCTION_14_0();
  v21 = swift_allocObject();
  v21[2] = *(v14 + 80);
  v22 = *(v16 + 80);
  v21[3] = v22;
  v23 = *(v18 + 80);
  v21[4] = v23;
  v24 = OUTLINED_FUNCTION_10_23();
  v26 = type metadata accessor for WhenEither3(v24, v25, v22, v23);
  v27 = sub_1BF014EDC();
  OUTLINED_FUNCTION_11_19();
  Promise.then<A>(on:closure:)(v28, v29, v30, v26);
  OUTLINED_FUNCTION_17_9();

  *v20 = v10;
  OUTLINED_FUNCTION_14_0();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_14_20(v31);
  v32 = sub_1BF014EDC();
  OUTLINED_FUNCTION_11_19();
  Promise.then<A>(on:closure:)(v33, v34, v35, v26);
  OUTLINED_FUNCTION_17_9();

  v20[1] = v12;
  OUTLINED_FUNCTION_14_0();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_14_20(v36);
  v37 = sub_1BF014EDC();
  OUTLINED_FUNCTION_11_19();
  Promise.then<A>(on:closure:)(v38, v39, v40, v26);
  OUTLINED_FUNCTION_17_9();

  v20[2] = v11;
  v43 = type metadata accessor for Promise(0, v26, v41, v42);
  sub_1BF00CD7C(v52, v43);
  whenSome<A>(on:_:)(a10, v44, v26, v45);
  OUTLINED_FUNCTION_17_9();

  OUTLINED_FUNCTION_14_0();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_14_20(v46);
  sub_1BF17A65C();
  sub_1BF10D918(255);
  OUTLINED_FUNCTION_39_0();
  swift_getTupleTypeMetadata2();
  sub_1BF17AE6C();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_16_16();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_10_23();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v48 = sub_1BF014EDC();
  OUTLINED_FUNCTION_11_19();
  Promise.then<A>(on:closure:)(v49, v50, v51, TupleTypeMetadata3);
  OUTLINED_FUNCTION_31_10();

  OUTLINED_FUNCTION_33();
}

uint64_t sub_1BF10BED0()
{
  OUTLINED_FUNCTION_2_50();
  OUTLINED_FUNCTION_20();
  (*(v1 + 16))(v0);
  OUTLINED_FUNCTION_5_30();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF10BF3C()
{
  OUTLINED_FUNCTION_2_50();
  OUTLINED_FUNCTION_20();
  (*(v1 + 16))(v0);
  OUTLINED_FUNCTION_5_30();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF10BFA4()
{
  OUTLINED_FUNCTION_2_50();
  OUTLINED_FUNCTION_20();
  (*(v1 + 16))(v0);
  OUTLINED_FUNCTION_5_30();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF10C010(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v46 = a3;
  v41 = sub_1BF17AE6C();
  v54 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v6);
  v47 = &v38 - v7;
  v51 = sub_1BF17AE6C();
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v8);
  v10 = &v38 - v9;
  v39 = &v38 - v9;
  v40 = a2;
  v52 = sub_1BF17AE6C();
  v11 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v52);
  v13 = &v38 - v12;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v48 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v45 = &v38 - v20;
  v21 = *a1;
  v50 = type metadata accessor for Promise(0, TupleTypeMetadata3, v22, v23);
  v58 = v21;
  __swift_storeEnumTagSinglePayload(v13, 1, 1, a2);
  v24 = v46;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v46);
  v25 = v47;
  v26 = v49;
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v49);
  v27 = *(TupleTypeMetadata3 + 48);
  v28 = *(TupleTypeMetadata3 + 64);
  v29 = *(v11 + 32);
  v43 = v11 + 32;
  v44 = v29;
  v29(v17, v13, v52);
  v30 = *(v53 + 32);
  v53 += 32;
  v42 = v30;
  v30(&v17[v27], v39, v51);
  v31 = *(v54 + 32);
  v54 += 32;
  v32 = &v17[v28];
  v33 = v41;
  v31(v32, v25, v41);
  v55 = v40;
  v56 = v24;
  v57 = v26;
  type metadata accessor for WhenEither3(255, v40, v24, v26);
  sub_1BF17A65C();
  swift_getWitnessTable();
  v34 = v45;
  sub_1BF17A3FC();
  (*(v48 + 8))(v17, TupleTypeMetadata3);
  v35 = *(TupleTypeMetadata3 + 48);
  v36 = *(TupleTypeMetadata3 + 64);
  v44(v17, v34, v52);
  v42(&v17[v35], &v34[v35], v51);
  v31(&v17[v36], &v34[v36], v33);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1BF10C48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a1;
  v79 = a2;
  v80 = a6;
  v76 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v78 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v77 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF17AE6C();
  v15 = sub_1BF17AE6C();
  v16 = sub_1BF17AE6C();
  v84 = v14;
  v81 = v16;
  v82 = v15;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v18 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3, v19);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v71 - v24;
  v26 = type metadata accessor for WhenEither3(0, a3, a4, a5);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v71 - v29;
  (*(v31 + 16))(&v71 - v29, v79, v26, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v73 = *(v75 + 32);
      (v73)(v77, v30, a4);
      v33 = *(TupleTypeMetadata3 + 48);
      v34 = *(TupleTypeMetadata3 + 64);
      v75 = *(v18 + 16);
      v76 = v34;
      (v75)(v25, v83, TupleTypeMetadata3);
      v35 = *(TupleTypeMetadata3 + 48);
      v78 = *(TupleTypeMetadata3 + 64);
      v79 = v35;
      v36 = *(v84 - 8);
      v37 = v80;
      (*(v36 + 32))(v80, v25, v84);
      (v73)(v37 + v33, v77, a4);
      __swift_storeEnumTagSinglePayload(v37 + v33, 0, 1, a4);
      (v75)(v21, v83, TupleTypeMetadata3);
      v38 = *(TupleTypeMetadata3 + 48);
      v39 = *(TupleTypeMetadata3 + 64);
      v40 = v81;
      v41 = *(v81 - 8);
      (*(v41 + 32))(v37 + v76, &v21[v39], v81);
      v42 = v82;
      v43 = *(*(v82 - 8) + 8);
      v43(&v21[v38], v82);
      (*(v36 + 8))(v21, v84);
      (*(v41 + 8))(&v78[v25], v40);
      return (v43)(&v25[v79], v42);
    }

    else
    {
      v75 = *(v76 + 32);
      (v75)(v78, v30, a5);
      v57 = *(TupleTypeMetadata3 + 64);
      v72 = *(TupleTypeMetadata3 + 48);
      v73 = v57;
      v58 = *(v18 + 16);
      v74 = v25;
      v59 = v83;
      v58(v25, v83, TupleTypeMetadata3);
      v79 = *(TupleTypeMetadata3 + 48);
      v60 = *(TupleTypeMetadata3 + 64);
      v76 = *(v84 - 8);
      v77 = v60;
      v61 = v80;
      v62 = v84;
      (*(v76 + 32))(v80, v25);
      v58(v21, v59, TupleTypeMetadata3);
      v63 = *(TupleTypeMetadata3 + 48);
      v64 = *(TupleTypeMetadata3 + 64);
      v65 = v82;
      v66 = *(v82 - 8);
      (*(v66 + 32))(v61 + v72, &v21[v63], v82);
      v67 = v73;
      (v75)(&v73[v61], v78, a5);
      __swift_storeEnumTagSinglePayload(&v67[v61], 0, 1, a5);
      v68 = v81;
      v69 = *(*(v81 - 8) + 8);
      v69(&v21[v64], v81);
      (*(v76 + 8))(v21, v62);
      v70 = v74;
      v69(&v77[v74], v68);
      return (*(v66 + 8))(&v70[v79], v65);
    }
  }

  else
  {
    v77 = *(TupleTypeMetadata3 + 48);
    v79 = *(TupleTypeMetadata3 + 64);
    v45 = v80;
    (*(*(a3 - 8) + 32))(v80, v30, a3);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, a3);
    v46 = *(v18 + 16);
    v47 = v83;
    v46(v25, v83, TupleTypeMetadata3);
    v48 = *(TupleTypeMetadata3 + 48);
    v78 = *(TupleTypeMetadata3 + 64);
    v49 = v82;
    v50 = *(v82 - 8);
    (*(v50 + 32))(&v77[v45], &v25[v48], v82);
    v46(v21, v47, TupleTypeMetadata3);
    v51 = *(TupleTypeMetadata3 + 48);
    v52 = *(TupleTypeMetadata3 + 64);
    v53 = v81;
    v54 = *(v81 - 8);
    (*(v54 + 32))(v45 + v79, &v21[v52], v81);
    (*(v50 + 8))(&v21[v51], v49);
    v55 = v84;
    v56 = *(*(v84 - 8) + 8);
    v56(v21, v84);
    (*(v54 + 8))(&v78[v25], v53);
    return (v56)(v25, v55);
  }
}

uint64_t whenSome<A, B>(_:transform:)()
{
  OUTLINED_FUNCTION_5();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[5] = v5;
  OUTLINED_FUNCTION_2_3();
  v0[10] = v6;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  sub_1BEFF79E8();
  OUTLINED_FUNCTION_27_8();
  v7 = sub_1BF17BBAC();
  v0[13] = v7;
  v8 = *(v7 - 8);
  v0[14] = v8;
  v0[15] = *(v8 + 64);
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF10CE20, 0, 0);
}

uint64_t sub_1BF10CE20()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_85();
  v3 = swift_allocObject();
  *(v0 + 144) = v3;
  *(v3 + 16) = *(v0 + 64);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  sub_1BF17A65C();
  swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_1BF10CF5C;

  return Sequence<>.concurrentMap<A>(_:)();
}

uint64_t sub_1BF10CF5C()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;
  *(v4 + 160) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BF10D070, 0, 0);
}

uint64_t sub_1BF10D070()
{
  v1 = sub_1BF179CFC();
  v27 = v1;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v2 = sub_1BF17A4EC();
  v28 = v2;
  if (v2 != sub_1BF17A5AC())
  {
    v4 = v0[14];
    v25 = v0[15];
    v26 = 0;
    v5 = v0[10];
    v6 = (v5 + 32);
    v7 = (v5 + 16);
    v8 = (v5 + 8);
    while (1)
    {
      v9 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v9)
      {
        (*(v4 + 16))(v0[17], v0[20] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2, v0[13]);
      }

      else
      {
        result = sub_1BF17B23C();
        if (v25 != 8)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        v20 = v0[17];
        v21 = v0[13];
        v0[3] = v19;
        (*(v4 + 16))(v20, v0 + 3, v21);
        swift_unknownObjectRelease();
      }

      v11 = v0[16];
      v10 = v0[17];
      v12 = v0[13];
      sub_1BF17A62C();
      (*(v4 + 32))(v11, v10, v12);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v14 = v0[16];
      if (EnumCaseMultiPayload == 1)
      {

        v26 = *v14;
      }

      else
      {
        v16 = v0[11];
        v15 = v0[12];
        v17 = v0[9];
        (*v6)(v15, v0[16], v17);
        (*v7)(v16, v15, v17);
        OUTLINED_FUNCTION_39_0();
        sub_1BF17A65C();
        sub_1BF17A5DC();
        (*v8)(v15, v17);
      }

      v2 = v28;
      if (v28 == sub_1BF17A5AC())
      {
        v3 = v26;
        v1 = v27;
        goto LABEL_13;
      }
    }
  }

  v3 = 0;
LABEL_13:

  v0[4] = v1;
  OUTLINED_FUNCTION_27_8();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  if (sub_1BF17AB6C())
  {
    if (v3)
    {
      v22 = v3;

      swift_willThrow();

      OUTLINED_FUNCTION_9();

      return v23();
    }
  }

  else
  {
  }

  v24 = v0[1];

  return v24(v1);
}

uint64_t sub_1BF10D414(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v6[4] = *(a6 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_1BF10D574;

  return v12(v9, a2);
}

uint64_t sub_1BF10D574()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    v5 = sub_1BF10D720;
  }

  else
  {
    v5 = sub_1BF10D67C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BF10D67C()
{
  OUTLINED_FUNCTION_5();
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);
  sub_1BEFF79E8();
  OUTLINED_FUNCTION_27_8();
  sub_1BF17BBAC();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_9();

  return v1();
}

uint64_t sub_1BF10D720()
{
  OUTLINED_FUNCTION_5();
  **(v0 + 16) = *(v0 + 56);
  sub_1BEFF79E8();
  OUTLINED_FUNCTION_27_8();
  sub_1BF17BBAC();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_9();

  return v1();
}

void sub_1BF10D918(uint64_t a1)
{
  if (!qword_1ED8EAE50)
  {
    sub_1BEFF79E8();
    v1 = sub_1BF17A65C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EAE50);
    }
  }
}

uint64_t sub_1BF10D9A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1BF10DA70;

  return sub_1BF10D414(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_1BF10DA70()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t sub_1BF10DB64(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BF10DC10(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[4] - 8);
  if (*(*(a3[3] - 8) + 64) > v3)
  {
    v3 = *(*(a3[3] - 8) + 64);
  }

  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(*(a3[5] - 8) + 64);
  if (v5 <= v3)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_26;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v10 < 2)
    {
LABEL_26:
      v12 = *(a1 + v5);
      if (v12 >= 4)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_26;
  }

LABEL_18:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 253;
}

void sub_1BF10DD84(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = *(a4[5] - 8);
  if (*(v7 + 64) > v5)
  {
    v5 = *(v7 + 64);
  }

  v8 = v5 + 1;
  v9 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 252) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFC)
  {
    v11 = a2 - 253;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v5 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_41:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_41;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1BF10DF98(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BF10E02C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(*(a3[4] - 8) + 64);
  if (v5 <= v3)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_24;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_24:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1BF10E180(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = v5 + 1;
  v8 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v5 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_27;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1BF10E374(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1BF10E4A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_1BF10E70C()
{
  result = qword_1EBDCC298;
  if (!qword_1EBDCC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC298);
  }

  return result;
}

uint64_t sub_1BF10E7D8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BF10E818(uint64_t result, int a2, int a3)
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

uint64_t sub_1BF10E858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_65(a1, a2, a3);
  v6(v5);
  v7 = OUTLINED_FUNCTION_2_51();
  sub_1BF10E9BC(v7, v8, v9, v10);
  OUTLINED_FUNCTION_3_37();
  (*(v11 + 8))(v3, v4);
  return OUTLINED_FUNCTION_5_31();
}

uint64_t sub_1BF10E8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_65(a1, a2, a3);
  v6(v5);
  v7 = OUTLINED_FUNCTION_2_51();
  sub_1BF10EAF0(v7, v8, v9, v10);
  OUTLINED_FUNCTION_3_37();
  (*(v11 + 8))(v3, v4);
  return OUTLINED_FUNCTION_5_31();
}

uint64_t (*sub_1BF10E9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1BF10ECC4;
}

uint64_t (*sub_1BF10EAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return sub_1BF10EC74;
}

uint64_t sub_1BF10EC24()
{
  OUTLINED_FUNCTION_4_30();
  OUTLINED_FUNCTION_1_53();
  return v0();
}

uint64_t sub_1BF10EC74()
{
  OUTLINED_FUNCTION_4_30();
  OUTLINED_FUNCTION_1_53();
  return v0();
}

uint64_t sub_1BF10ECC4()
{
  OUTLINED_FUNCTION_4_30();
  OUTLINED_FUNCTION_1_53();
  return v0() & 1;
}

uint64_t static NetworkResponseOperationError.== infix(_:_:)(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (v3)
    {
      goto LABEL_12;
    }

    v2 = 0;
    goto LABEL_10;
  }

  if (v2 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_12;
    }

    v2 = 1;
LABEL_10:
    v4 = 1;
    goto LABEL_13;
  }

  if (v2 != 2)
  {
    if (v3 >= 3)
    {
      sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);
      v6 = OUTLINED_FUNCTION_42();
      sub_1BF10EE00(v6);
      sub_1BF10EE00(v2);
      OUTLINED_FUNCTION_16_17();
      v4 = sub_1BF17ADEC();
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v3 != 2)
  {
LABEL_12:
    sub_1BF10EE00(*a2);
    sub_1BF10EE00(v2);
    v4 = 0;
    goto LABEL_13;
  }

  v4 = 1;
  v2 = 2;
LABEL_13:
  sub_1BF10EE10(v2);
  sub_1BF10EE10(v3);
  return v4 & 1;
}

id sub_1BF10EE00(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_1BF10EE10(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1BF10EE30(uint64_t a1, uint64_t a2)
{
  sub_1BF10EE94(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BF10EE94(uint64_t a1)
{
  if (!qword_1ED8EE440)
  {
    sub_1BF178C6C();
    v1 = sub_1BF17AE6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8EE440);
    }
  }
}

void *NetworkOperationResult.response.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = v2;
  return v2;
}

uint64_t sub_1BF10EF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1BF1114B0(a1, a5);
  v11 = type metadata accessor for NetworkOperationResult(0, a4, v9, v10);
  *(a5 + *(v11 + 28)) = a2;
  v12 = *(*(a4 - 8) + 32);
  v13 = a5 + *(v11 + 32);

  return v12(v13, a3, a4);
}

uint64_t NetworkResponseOperation.underlyingOperationID.getter()
{
  v1 = *(*(v0 + qword_1ED8EDA20) + qword_1ED8EF088);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t NetworkResponseOperation.eventHandler.getter()
{
  v1 = (*(v0 + qword_1ED8EDA20) + qword_1ED8EE2D0);
  swift_beginAccess();
  v2 = *v1;
  sub_1BF009984(*v1, v1[1]);
  return v2;
}

uint64_t sub_1BF10F09C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = NetworkResponseOperation.eventHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1BF1114A8;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1BF10F10C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_1BF009984(v1, v2);
  return NetworkResponseOperation.eventHandler.setter();
}

uint64_t NetworkResponseOperation.eventHandler.setter()
{
  OUTLINED_FUNCTION_76();
  v3 = (*(v1 + qword_1ED8EDA20) + qword_1ED8EE2D0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v0;
  sub_1BF009984(v2, v0);
  sub_1BF0F8B9C(v4, v5);
  return sub_1BF0F8B9C(v2, v0);
}

uint64_t (*NetworkResponseOperation.eventHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = NetworkResponseOperation.eventHandler.getter();
  a1[1] = v3;
  return sub_1BF10F278;
}

uint64_t sub_1BF10F278(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_16_17();
    sub_1BF009984(v2, v3);
    OUTLINED_FUNCTION_16_17();
    NetworkResponseOperation.eventHandler.setter();
    v4 = OUTLINED_FUNCTION_16_17();

    return sub_1BF0F8B9C(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_16_17();
    return NetworkResponseOperation.eventHandler.setter();
  }
}

uint64_t NetworkResponseOperation.__allocating_init(requestAccessor:networkProxy:)()
{
  OUTLINED_FUNCTION_76();
  v2 = objc_allocWithZone(v1);
  v3 = OUTLINED_FUNCTION_42();
  return NetworkResponseOperation.init(requestAccessor:networkProxy:)(v3, v0);
}

uint64_t NetworkResponseOperation.init(requestAccessor:networkProxy:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_39_1();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_20_14();
  v9 = type metadata accessor for NetworkOperation(0, v7, *(v6 + 248), v8);
  sub_1BF0F86D0(a2, v12);

  *&v3[qword_1ED8EDA20] = NetworkOperation.__allocating_init(requestAccessor:networkProxy:)();
  v11.receiver = v3;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_init);
  OUTLINED_FUNCTION_58_1();

  sub_1BF0F840C(a2);
  return v9;
}

uint64_t NetworkResponseOperation.__allocating_init(requestAccessor:networkProxy:networkActivitySession:)()
{
  OUTLINED_FUNCTION_5_32();
  v0 = OUTLINED_FUNCTION_4_31();
  return NetworkResponseOperation.init(requestAccessor:networkProxy:networkActivitySession:)(v0, v1, v2);
}

uint64_t NetworkResponseOperation.init(requestAccessor:networkProxy:networkActivitySession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_39_1();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_20_14();
  v10 = type metadata accessor for NetworkOperation(0, v8, *(v7 + 248), v9);
  sub_1BF0F86D0(a2, v13);

  *&v4[qword_1ED8EDA20] = NetworkOperation.__allocating_init(requestAccessor:networkProxy:networkActivitySession:)();
  v12.receiver = v4;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_init);
  OUTLINED_FUNCTION_58_1();

  sub_1BF0F840C(a2);
  return v10;
}

void NetworkResponseOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_4_31();
  NetworkResponseOperation.init(requestAccessor:networkProxy:earliestBeginDate:)();
}

void NetworkResponseOperation.init(requestAccessor:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_39_1();
  ObjectType = swift_getObjectType();
  v6 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_0_66();
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_21_11();
  type metadata accessor for NetworkOperation(0, v12, *(v11 + 248), v13);
  OUTLINED_FUNCTION_22_10();
  v14 = OUTLINED_FUNCTION_10_25();
  v15(v14, v2, v6);

  *&v0[qword_1ED8EDA20] = NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:)();
  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_init);
  OUTLINED_FUNCTION_58_1();

  (*(v8 + 8))(v2, v6);
  sub_1BF0F840C(v4);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_0_44();
  NetworkResponseOperation.init(requestAccessor:networkProxy:earliestBeginDate:networkActivitySession:)();
}

void NetworkResponseOperation.init(requestAccessor:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  swift_getObjectType();
  v9 = *v0;
  v10 = *MEMORY[0x1E69E7D40];
  v11 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_0_66();
  type metadata accessor for NetworkOperation(0, *((v10 & v9) + 0xF0), *((v10 & v9) + 0xF8), v16);
  OUTLINED_FUNCTION_22_10();
  v17 = OUTLINED_FUNCTION_10_25();
  v18(v17, v4, v11);

  v19 = NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:networkActivitySession:)(v8, &v21, v0, v2);
  OUTLINED_FUNCTION_14_21(v19, qword_1ED8EDA20);
  objc_msgSendSuper2(&v20, sel_init);

  (*(v13 + 8))(v4, v11);
  sub_1BF0F840C(v6);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(request:networkProxy:)()
{
  OUTLINED_FUNCTION_76();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_42();
  NetworkResponseOperation.init(request:networkProxy:)();
}

void NetworkResponseOperation.init(request:networkProxy:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = *v0;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1BF178C6C();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_0_66();
  type metadata accessor for NetworkOperation(0, *((v7 & v6) + 0xF0), *((v7 & v6) + 0xF8), v13);
  v14 = OUTLINED_FUNCTION_10_25();
  v15(v14, v4, v8);
  sub_1BF0F86D0(v2, v18);
  *(v0 + qword_1ED8EDA20) = NetworkOperation.__allocating_init(request:networkProxy:)(v0, v18);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_init);
  v16 = OUTLINED_FUNCTION_42();
  sub_1BF0F840C(v16);
  (*(v10 + 8))(v4, v8);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(request:networkProxy:networkActivitySession:)()
{
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_4_31();
  NetworkResponseOperation.init(request:networkProxy:networkActivitySession:)();
}

void NetworkResponseOperation.init(request:networkProxy:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = sub_1BF178C6C();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_0_66();
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_21_11();
  type metadata accessor for NetworkOperation(0, v12, *(v11 + 248), v13);
  v14 = OUTLINED_FUNCTION_10_25();
  v15(v14, v4, v6);
  sub_1BF0F86D0(v2, &v18);

  NetworkOperation.__allocating_init(request:networkProxy:networkActivitySession:)();
  *&v0[qword_1ED8EDA20] = v16;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_init);
  OUTLINED_FUNCTION_58_1();

  sub_1BF0F840C(v2);
  (*(v8 + 8))(v4, v6);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(request:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_4_31();
  NetworkResponseOperation.init(request:networkProxy:earliestBeginDate:)();
}

void NetworkResponseOperation.init(request:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v24 = v5;
  ObjectType = swift_getObjectType();
  v6 = *v0;
  v7 = *MEMORY[0x1E69E7D40];
  v25 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_0_66();
  v23 = sub_1BF178C6C();
  OUTLINED_FUNCTION_2_3();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  type metadata accessor for NetworkOperation(0, *((v7 & v6) + 0xF0), *((v7 & v6) + 0xF8), v19);
  (*(v13 + 16))(v18, v24, v23);
  sub_1BF0F86D0(v4, &v28);
  v20 = OUTLINED_FUNCTION_10_25();
  v21(v20, v2, v25);
  NetworkOperation.__allocating_init(request:networkProxy:earliestBeginDate:)();
  *(v0 + qword_1ED8EDA20) = v22;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel_init);
  (*(v9 + 8))(v2, v25);
  sub_1BF0F840C(v4);
  (*(v13 + 8))(v24, v23);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(request:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_0_44();
  NetworkResponseOperation.init(request:networkProxy:earliestBeginDate:networkActivitySession:)();
}

void NetworkResponseOperation.init(request:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v25 = v1;
  v3 = v2;
  v24 = v4;
  swift_getObjectType();
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v22 = sub_1BF1794AC();
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_0_66();
  v23 = sub_1BF178C6C();
  OUTLINED_FUNCTION_2_3();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  type metadata accessor for NetworkOperation(0, *((v6 & v5) + 0xF0), *((v6 & v5) + 0xF8), v18);
  (*(v12 + 16))(v17, v24, v23);
  sub_1BF0F86D0(v25, &v27);
  v19 = OUTLINED_FUNCTION_10_25();
  v20(v19, v3, v22);

  NetworkOperation.__allocating_init(request:networkProxy:earliestBeginDate:networkActivitySession:)();
  OUTLINED_FUNCTION_14_21(v21, qword_1ED8EDA20);
  objc_msgSendSuper2(&v26, sel_init);

  (*(v8 + 8))(v3, v22);
  sub_1BF0F840C(v25);
  (*(v12 + 8))(v24, v23);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_39_1();
  ObjectType = swift_getObjectType();
  v6 = *v0;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  type metadata accessor for NetworkOperation(0, *((v7 & v6) + 0xF0), *((v7 & v6) + 0xF8), v16);
  OUTLINED_FUNCTION_22_10();
  (*(v10 + 16))(v15, v3, v8);

  NetworkOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:)();
  *&v1[qword_1ED8EDA20] = v17;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_init);
  OUTLINED_FUNCTION_58_1();

  (*(v10 + 8))(v3, v8);
  sub_1BF0F840C(v5);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_9_25();
  NetworkResponseOperation.init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)();
}

void NetworkResponseOperation.init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  swift_getObjectType();
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  type metadata accessor for NetworkOperation(0, *((v6 & v5) + 0xF0), *((v6 & v5) + 0xF8), v15);
  OUTLINED_FUNCTION_22_10();
  (*(v9 + 16))(v14, v2, v7);

  NetworkOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)();
  OUTLINED_FUNCTION_14_21(v16, qword_1ED8EDA20);
  objc_msgSendSuper2(&v17, sel_init);

  (*(v9 + 8))(v2, v7);
  sub_1BF0F840C(v4);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkResponseOperation.__allocating_init(endpoint:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_9_25();
  NetworkResponseOperation.init(endpoint:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)();
}

void NetworkResponseOperation.init(endpoint:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v25 = v1;
  v3 = v2;
  v24 = v4;
  ObjectType = swift_getObjectType();
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v22 = sub_1BF1794AC();
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v23 = sub_1BF17923C();
  OUTLINED_FUNCTION_2_3();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_0_66();
  type metadata accessor for NetworkOperation(0, *((v6 & v5) + 0xF0), *((v6 & v5) + 0xF8), v18);
  v19 = OUTLINED_FUNCTION_10_25();
  v20(v19, v24, v23);
  sub_1BF0F86D0(v25, &v28);
  (*(v8 + 16))(v13, v3, v22);

  NetworkOperation.__allocating_init(endpoint:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)();
  *(v0 + qword_1ED8EDA20) = v21;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel_init);

  (*(v8 + 8))(v3, v22);
  sub_1BF0F840C(v25);
  (*(v15 + 8))(v24, v23);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

uint64_t NetworkResponseOperation.perform(completion:)()
{
  OUTLINED_FUNCTION_76();
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = swift_allocObject();
  v5[2] = *((v4 & v3) + 0xF0);
  v5[3] = *((v4 & v3) + 0xF8);
  v5[4] = v2;
  v5[5] = v0;

  sub_1BF11428C();
}

uint64_t sub_1BF110798(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for NetworkOperationResult(255, AssociatedTypeWitness, v10, v11);
  v15 = type metadata accessor for Result(0, v12, v13, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v22 - v18);
  type metadata accessor for NetworkResponseOperation(0, a4, a5, v20);
  sub_1BF1108DC(a1, v19);
  a2(v19);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_1BF1108DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for NetworkOperationResult(255, AssociatedTypeWitness, v5, v6);
  v10 = type metadata accessor for Result(0, v7, v8, v9);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = (&v20 - v14);
  v16 = *(v11 + 16);
  v16(&v20 - v14, a1, v10, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    v18 = sub_1BF110A68(*v15);

    *a2 = v18;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (v16)(a2, a1, v10);
    return (*(*(v7 - 8) + 8))(v15, v7);
  }
}

void *sub_1BF110A68(void *a1)
{
  v1 = a1;
  v2 = a1;
  sub_1BEFF79E8();
  if (swift_dynamicCast())
  {
    sub_1BF111514();
    v1 = swift_allocError();
    *v3 = v6;
  }

  else
  {
    v4 = v1;
  }

  return v1;
}

id NetworkResponseOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkResponseOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation29NetworkResponseOperationErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF110BCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF110C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_1BF110C88(uint64_t a1)
{
  sub_1BF10EE94(319);
  if (v1 <= 0x3F)
  {
    sub_1BF1112D0(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BF110D28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BF178C6C();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  if (v7)
  {
    v10 = v7 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 84);
  if (v10 <= v11)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (v7)
  {
    v14 = *(*(v6 - 8) + 64);
  }

  else
  {
    v14 = *(*(v6 - 8) + 64) + 1;
  }

  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v13)
  {
    v17 = ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + v16;
    v18 = 8 * v17;
    if (v17 > 3)
    {
      goto LABEL_16;
    }

    v20 = ((a2 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (v20 >= 2)
    {
LABEL_16:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_33;
      }

LABEL_23:
      v21 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v21 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v22 = v17;
        }

        else
        {
          v22 = 4;
        }

        switch(v22)
        {
          case 2:
            v23 = *a1;
            break;
          case 3:
            v23 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v23 = *a1;
            break;
          default:
            v23 = *a1;
            break;
        }
      }

      else
      {
        v23 = 0;
      }

      return v13 + (v23 | v21) + 1;
    }
  }

LABEL_33:
  if (v10 == v13)
  {
    if (v7 < 2)
    {
      return 0;
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v6);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v25 = ((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v12 > 0x7FFFFFFE)
    {

      return __swift_getEnumTagSinglePayload((v25 + v15 + 8) & ~v15, v11, v8);
    }

    else
    {
      v26 = *v25;
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      if ((v26 + 1) >= 2)
      {
        return v26;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1BF110FB4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1BF178C6C();
  v9 = 0;
  v10 = *(*(v8 - 8) + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a4 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v11 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v10)
  {
    v17 = *(*(v8 - 8) + 64);
  }

  else
  {
    v17 = *(*(v8 - 8) + 64) + 1;
  }

  v18 = *(v13 + 80);
  v19 = ((v18 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v18) + *(v13 + 64);
  v20 = 8 * v19;
  if (a3 > v16)
  {
    if (v19 <= 3)
    {
      v21 = ((a3 - v16 + ~(-1 << v20)) >> v20) + 1;
      if (HIWORD(v21))
      {
        v9 = 4;
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
          v9 = v22;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  if (v16 >= a2)
  {
    switch(v9)
    {
      case 1:
        a1[v19] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        return;
      case 2:
        *&a1[v19] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        return;
      case 3:
LABEL_55:
        __break(1u);
        return;
      case 4:
        *&a1[v19] = 0;
        goto LABEL_35;
      default:
LABEL_35:
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v11 == v16)
        {
          v26 = (a2 + 1);
          v27 = a1;
          v12 = v8;
        }

        else
        {
          v28 = (&a1[v17 + 7] & 0xFFFFFFFFFFFFFFF8);
          if (v15 <= 0x7FFFFFFE)
          {
            if (a2 > 0x7FFFFFFE)
            {
              *v28 = 0;
              *v28 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v28 = a2;
            }

            return;
          }

          v27 = ((v28 + v18 + 8) & ~v18);
          v26 = a2;
          v10 = v14;
        }

        __swift_storeEnumTagSinglePayload(v27, v26, v10, v12);
        break;
    }
  }

  else
  {
    v23 = ~v16 + a2;
    if (v19 < 4)
    {
      v24 = (v23 >> v20) + 1;
      if (v19)
      {
        v25 = v23 & ~(-1 << v20);
        bzero(a1, v19);
        if (v19 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v19 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v23;
      v24 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v19] = v24;
        break;
      case 2:
        *&a1[v19] = v24;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&a1[v19] = v24;
        break;
      default:
        return;
    }
  }
}

void sub_1BF1112D0(uint64_t a1)
{
  if (!qword_1ED8ECBC8)
  {
    sub_1BEFF9AF8(255, &qword_1ED8ECBD0, 0x1E696AF70);
    v1 = sub_1BF17AE6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8ECBC8);
    }
  }
}

uint64_t sub_1BF1114B0(uint64_t a1, uint64_t a2)
{
  sub_1BF10EE94(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BF111514()
{
  result = qword_1EBDCC2A0;
  if (!qword_1EBDCC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC2A0);
  }

  return result;
}

uint64_t DiagnosticZipAttachment.name.getter()
{
  v1 = *(v0 + 8);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

void *DiagnosticZipAttachment.init(attachment:name:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1BF1115C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      v2 = *a1 + 121;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x79)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1BF111618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t BridgedAssembly.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1BF11171C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 >> 62;
    v7 = result;
    v9 = 0;
    v10 = 0;
    switch(a3 >> 62)
    {
      case 1uLL:
        v9 = a2 >> 32;
        v10 = a2;
        break;
      case 2uLL:
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v10 = 0;
        v9 = BYTE6(a3);
        break;
    }

    v11 = sub_1BF05F358(v10, v9, a2, a3);
    if (v7 && v11 < v7)
    {
      switch(v5)
      {
        case 1:
          v12 = a2 >> 32;
          goto LABEL_11;
        case 2:
          v12 = *(a2 + 24);
          goto LABEL_13;
        default:
          goto LABEL_15;
      }
    }

    v12 = sub_1BF05F448(v10, v7, a2, a3);
    result = 0;
    switch(v5)
    {
      case 1:
LABEL_11:
        result = a2;
        break;
      case 2:
LABEL_13:
        result = *(a2 + 16);
        break;
      default:
        break;
    }

    if (v12 >= result)
    {
LABEL_15:
      v13 = sub_1BF17930C();
      v15 = v14;
      result = sub_1BF014E18(a2, a3);
      *a4 = v13;
      a4[1] = v15;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t JSONBridge.write(to:)(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  sub_1BF178D3C();
  swift_allocObject();
  _s13TeaFoundation16ReferenceEncoderCACycfc_0();
  sub_1BF178D0C();

  if (!v2)
  {
    v4 = OUTLINED_FUNCTION_60_0();
    v10 = MEMORY[0x1BFB51150](v4);
    v5 = sub_1BF088784(&v10, &v11);
    v7 = v6;
    sub_1BF17939C();
    sub_1BF014E18(v5, v7);
    OUTLINED_FUNCTION_60_0();
    sub_1BF17939C();
    v8 = OUTLINED_FUNCTION_60_0();
    return sub_1BF014E18(v8, v9);
  }

  return result;
}

uint64_t static JSONBridge.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22 - v13;
  result = sub_1BF05FFE8(v15);
  if (!v4)
  {
    v17 = result;
    v22 = v8;
    v23 = a4;
    v18 = *a1;
    v19 = *(a1 + 8);
    sub_1BF014DC0(*a1, v19);
    v25 = v17;
    sub_1BF11171C(v17, v18, v19, &v24);
    v20 = v24;
    sub_1BF178CAC();
    swift_allocObject();
    sub_1BF178C9C();
    OUTLINED_FUNCTION_60_0();
    sub_1BF178C8C();
    sub_1BF014E18(v20, *(&v20 + 1));

    v21 = *(v22 + 32);
    v21(v10, v14, a2);
    v21(v23, v10, a2);
    result = sub_1BF05F1AC(v25, *a1, *(a1 + 8), &v24);
    *a1 = v24;
  }

  return result;
}

uint64_t sub_1BF111C34(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF111CA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1BF111DE0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
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

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t StringDeserializer.deserialize(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BF17A12C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1BF17A10C();
  result = sub_1BF17A0CC();
  if (!v5)
  {
    sub_1BF1120D4();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1BF1120D4()
{
  result = qword_1EBDCC2A8;
  if (!qword_1EBDCC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC2A8);
  }

  return result;
}

uint64_t sub_1BF112140@<X0>(uint64_t *a1@<X8>)
{
  result = StringDeserializer.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t sub_1BF112168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = StringDeserializer.deserialize(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t BinaryDecoder.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

unint64_t sub_1BF112294()
{
  result = qword_1EBDCC2B0;
  if (!qword_1EBDCC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC2B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BinaryDecoder.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF112400(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = sub_1BEFE90AC(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB53020](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v7 + 24))(ObjectType, v7);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v9 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v10 = sub_1BEFE90AC(v9);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v10 == j)
    {

      *(a1 + 16) = v12;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v9);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BF112604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  result = sub_1BEFE90AC(v6);
  if (result)
  {
    v8 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB53020](i, v6);
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v10 + 24);
          ObjectType = swift_getObjectType();
          (*(v11 + 32))(a2, a3, ObjectType, v11);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v13 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v14 = sub_1BEFE90AC(v13);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v14 == j)
    {

      *(a1 + 16) = v16;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v13);
    }

    else
    {
      if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BF112828(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = sub_1BEFE90AC(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB53020](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v7 + 48))(ObjectType, v7);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v9 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v10 = sub_1BEFE90AC(v9);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v10 == j)
    {

      *(a1 + 16) = v12;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v9);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BF112A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  result = sub_1BEFE90AC(v6);
  if (result)
  {
    v8 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB53020](i, v6);
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v10 + 24);
          ObjectType = swift_getObjectType();
          (*(v11 + 56))(a2, a3, ObjectType, v11);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v13 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v14 = sub_1BEFE90AC(v13);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v14 == j)
    {

      *(a1 + 16) = v16;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v13);
    }

    else
    {
      if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BF112C50(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  result = sub_1BEFE90AC(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB53020](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v7 + 72))(ObjectType, v7);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v9 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v10 = sub_1BEFE90AC(v9);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v10 == j)
    {

      *(a1 + 16) = v12;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v9);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Void __swiftcall SceneStateManager.willResignActive(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF112604(v1, countAndFlagsBits, object);
}

Swift::Void __swiftcall SceneStateManager.didEnterBackground(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF112A2C(v1, countAndFlagsBits, object);
}

uint64_t SceneStateManager.remove(monitor:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = sub_1BEFE90AC(v3);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      swift_unknownObjectRelease();
      if (v8 == a1)
      {

        swift_beginAccess();
        sub_1BF0BDF3C(i);
        swift_endAccess();
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t SceneStateManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BF113214(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BF113254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF1132A8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = v3;
  v22 = a2;
  v23 = a1;
  v24 = a3;
  v7 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_3_38();
  v12 = MEMORY[0x1E6969530];
  v13 = MEMORY[0x1E69E6720];
  sub_1BF115500(0, &qword_1ED8EF860, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v14);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v22 - v17;
  OUTLINED_FUNCTION_7_27();
  sub_1BF11BC40(v6, v18, &qword_1ED8EF860, v12, v13, v19);
  result = __swift_getEnumTagSinglePayload(v18, 1, v7);
  if (result == 1)
  {
    v21 = v24;
    *v24 = 0u;
    v21[1] = 0u;
  }

  else
  {
    (*(v9 + 32))(v5, v18, v7);
    v23(v5);
    result = (*(v9 + 8))(v5, v7);
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t NetworkOperation.__allocating_init(request:networkProxy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_1();
  v5 = sub_1BF178C6C();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v9 = *(v8 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v13, v2, v5, v12);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v13, v5);
  OUTLINED_FUNCTION_0_67();
  sub_1BF115500(0, v16, v17, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1BF11C150;
  *(v18 + 24) = v15;
  sub_1BF0F86D0(a2, v21);
  NetworkOperation.__allocating_init(requestAccessor:networkProxy:)();
  v19 = OUTLINED_FUNCTION_42();
  sub_1BF0F840C(v19);
  (*(v7 + 8))(v2, v5);
  return v3;
}

id NetworkOperation.__allocating_init(requestAccessor:networkProxy:)()
{
  OUTLINED_FUNCTION_76();
  v2 = objc_allocWithZone(v1);
  v3 = OUTLINED_FUNCTION_42();
  return NetworkOperation.init(requestAccessor:networkProxy:)(v3, v0);
}

id NetworkOperation.__allocating_init(requestAccessor:networkProxy:networkActivitySession:)()
{
  OUTLINED_FUNCTION_5_32();
  v0 = OUTLINED_FUNCTION_4_31();
  return NetworkOperation.init(requestAccessor:networkProxy:networkActivitySession:)(v0, v1, v2);
}

id NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_5_32();
  v0 = OUTLINED_FUNCTION_4_31();
  return NetworkOperation.init(requestAccessor:networkProxy:earliestBeginDate:)(v0, v1, v2);
}

void NetworkOperation.__allocating_init(request:networkProxy:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_14_1();
  v1 = sub_1BF178C6C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v5 = *(v4 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v9, v0, v1, v8);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v9, v1);
  OUTLINED_FUNCTION_0_67();
  sub_1BF115500(0, v12, v13, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1BF114C04;
  *(v14 + 24) = v11;
  OUTLINED_FUNCTION_33_7();
  NetworkOperation.__allocating_init(requestAccessor:networkProxy:networkActivitySession:)();
  v15 = OUTLINED_FUNCTION_42();
  sub_1BF0F840C(v15);
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkOperation.__allocating_init(request:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_32();
  v27 = v2;
  v28 = v0;
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v8 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_3_38();
  v13 = sub_1BF178C6C();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = *(v16 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v21, v7, v13, v20);
  v22 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v23 = swift_allocObject();
  (*(v15 + 32))(v23 + v22, v21, v13);
  OUTLINED_FUNCTION_0_67();
  sub_1BF115500(0, v24, v25, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1BF11C150;
  *(v26 + 24) = v23;
  sub_1BF0F86D0(v6, &v29);
  (*(v10 + 16))(v1, v4, v8);
  NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:)();
  (*(v10 + 8))(v4, v8);
  sub_1BF0F840C(v6);
  (*(v15 + 8))(v27, v13);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkOperation.__allocating_init(request:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v32 = v1;
  v33 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v31 = v6;
  v8 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = sub_1BF178C6C();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  v20 = *(v19 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v24, v7, v16, v23);
  v25 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v26 = swift_allocObject();
  (*(v18 + 32))(v26 + v25, v24, v16);
  OUTLINED_FUNCTION_0_67();
  sub_1BF115500(0, v27, v28, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1BF11C150;
  *(v29 + 24) = v26;
  OUTLINED_FUNCTION_33_7();
  (*(v10 + 16))(v15, v3, v8);
  NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:networkActivitySession:)(v29, &v34, v15, v32);
  (*(v10 + 8))(v3, v8);
  sub_1BF0F840C(v5);
  (*(v18 + 8))(v31, v16);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_14_0();
  v18 = swift_allocObject();
  v18[2] = v9;
  v18[3] = v7;
  v18[4] = v5;
  OUTLINED_FUNCTION_0_67();
  sub_1BF115500(0, v19, v20, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1BF11C14C;
  *(v21 + 24) = v18;
  sub_1BF0F86D0(v3, &v22);
  (*(v12 + 16))(v17, v1, v10);
  NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:)();
  (*(v12 + 8))(v1, v10);
  sub_1BF0F840C(v3);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_3_38();
  OUTLINED_FUNCTION_14_0();
  v16 = swift_allocObject();
  v16[2] = v10;
  v16[3] = v8;
  v16[4] = v6;
  OUTLINED_FUNCTION_0_67();
  sub_1BF115500(0, v17, v18, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1BF11520C;
  *(v19 + 24) = v16;
  sub_1BF0F86D0(v4, &v20);
  (*(v13 + 16))(v0, v2, v11);

  NetworkOperation.__allocating_init(requestAccessor:networkProxy:earliestBeginDate:)();

  (*(v13 + 8))(v2, v11);
  sub_1BF0F840C(v4);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

void NetworkOperation.__allocating_init(endpoint:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)()
{
  OUTLINED_FUNCTION_32();
  v36 = v1;
  v37 = v0;
  v3 = v2;
  v5 = v4;
  v34 = v6;
  v35 = v7;
  v33 = v8;
  v9 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OUTLINED_FUNCTION_31_1();
  v26(v25);
  v27 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v28 = swift_allocObject();
  (*(v19 + 32))(v28 + v27, v24, v17);
  OUTLINED_FUNCTION_2_52();
  sub_1BF115500(0, v29, v30, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1BF1154D4;
  *(v31 + 24) = v28;
  OUTLINED_FUNCTION_33_7();
  (*(v11 + 16))(v16, v3, v9);
  NetworkOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:networkActivitySession:)();
  (*(v11 + 8))(v3, v9);
  sub_1BF0F840C(v5);
  (*(v19 + 8))(v33, v17);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF11428C()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_14_0();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v0;
  v4 = v1;

  sub_1BF115CDC(sub_1BF11C0BC, v3, 15.0);
}

BOOL static NetworkOperationError.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t NetworkOperation.requestProcessors.setter(uint64_t a1)
{
  v3 = qword_1ED8EE298;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BF11446C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_1ED8EE2D0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BF0004B0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1BF009984(v4, v5);
}

uint64_t sub_1BF11450C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BF11B938;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_1ED8EE2D0);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1BF009984(v3, v4);
  return sub_1BF0F8B9C(v8, v9);
}

uint64_t NetworkOperation.eventHandler.getter()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_31_1();
  sub_1BF009984(v0, v1);
  return OUTLINED_FUNCTION_31_1();
}

uint64_t NetworkOperation.eventHandler.setter()
{
  OUTLINED_FUNCTION_76();
  v3 = (v1 + qword_1ED8EE2D0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v0;
  return sub_1BF0F8B9C(v4, v5);
}

id NetworkOperation.init(requestAccessor:networkProxy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42();
  ObjectType = swift_getObjectType();
  v5 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  *&v2[qword_1ED8EE298] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_23_7(qword_1ED8EE2D0);
  *&v2[qword_1ED8EE2B8] = v2;
  OUTLINED_FUNCTION_31_11(qword_1ED8EE2C0);

  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  (*(v7 + 32))(&v2[qword_1ED8EE2A8], v12, v5);
  *&v2[qword_1ED8ED240] = 0;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);

  sub_1BF0F840C(a2);
  return v13;
}

id NetworkOperation.init(requestAccessor:networkProxy:networkActivitySession:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42();
  ObjectType = swift_getObjectType();
  v8 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_3_38();
  *&v3[qword_1ED8EE298] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_23_7(qword_1ED8EE2D0);
  *&v3[qword_1ED8EE2B8] = v3;
  OUTLINED_FUNCTION_31_11(qword_1ED8EE2C0);

  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  (*(v10 + 32))(&v3[qword_1ED8EE2A8], v4, v8);
  *&v3[qword_1ED8ED240] = a3;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);

  sub_1BF0F840C(a2);
  return v13;
}

id NetworkOperation.init(requestAccessor:networkProxy:earliestBeginDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[qword_1ED8EE298] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_23_7(qword_1ED8EE2D0);
  *&v4[qword_1ED8EE2B8] = a1;
  OUTLINED_FUNCTION_31_11(qword_1ED8EE2C0);
  v9 = qword_1ED8EE2A8;
  v10 = sub_1BF1794AC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v4[v9], a3, v10);
  *&v4[qword_1ED8ED240] = 0;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a3, v10);
  sub_1BF0F840C(a2);
  return v12;
}

id NetworkOperation.init(requestAccessor:networkProxy:earliestBeginDate:networkActivitySession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[qword_1ED8EE298] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_23_7(qword_1ED8EE2D0);
  *&v5[qword_1ED8EE2B8] = a1;
  OUTLINED_FUNCTION_31_11(qword_1ED8EE2C0);
  v11 = qword_1ED8EE2A8;
  v12 = sub_1BF1794AC();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v5[v11], a3, v12);
  *&v5[qword_1ED8ED240] = a4;
  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v13 + 8))(a3, v12);
  sub_1BF0F840C(a2);
  return v14;
}

uint64_t sub_1BF114C30(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  OUTLINED_FUNCTION_68(v4);
  return sub_1BF115468(v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)), a2);
}

void sub_1BF114CA8()
{
  OUTLINED_FUNCTION_32();
  v72 = v1;
  v69 = v2;
  v70 = v3;
  v5 = v4;
  sub_1BF178C6C();
  OUTLINED_FUNCTION_1();
  v66 = v7;
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  OUTLINED_FUNCTION_2_0();
  v71 = v10 - v9;
  OUTLINED_FUNCTION_2_52();
  v11 = MEMORY[0x1E69E6720];
  sub_1BF115500(0, v12, v13, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v14);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v63 - v17;
  OUTLINED_FUNCTION_8_28();
  sub_1BF115500(0, v19, v20, v11);
  OUTLINED_FUNCTION_68(v21);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v63 - v24;
  v26 = sub_1BF178F0C();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_3_38();
  v31 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v68 = &v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v41 = MEMORY[0x1EEE9AC00](v39, v40);
  v43 = &v63 - v42;
  (*(v5 + 16))(v41);
  sub_1BF178E7C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    OUTLINED_FUNCTION_8_28();
    sub_1BF11C0F8();
    v44 = OUTLINED_FUNCTION_17_13();
    v46.n128_f64[0] = v45(v44, v43, v31);
    OUTLINED_FUNCTION_22_11(v46);
    goto LABEL_5;
  }

  (*(v28 + 32))(v0, v25, v26);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF178E6C();
  sub_1BF178E8C();
  if (__swift_getEnumTagSinglePayload(v18, 1, v31) == 1)
  {
    OUTLINED_FUNCTION_2_52();
    sub_1BF11C0F8();
    v47 = OUTLINED_FUNCTION_17_13();
    v49.n128_f64[0] = v48(v47, v43, v31);
    OUTLINED_FUNCTION_22_11(v49);
    (*(v28 + 8))(v0, v26);
LABEL_5:
    (*(v33 + 8))(v43, v31);
LABEL_16:
    OUTLINED_FUNCTION_26_2();
    return;
  }

  v63 = v0;
  v64 = v26;
  v69 = v28;
  v50 = v68;
  (*(v33 + 32))(v68, v18, v31);
  v51 = OUTLINED_FUNCTION_17_13();
  v65 = v31;
  v52(v51, v50, v31);
  sub_1BF178C2C();
  v53 = v72 + 64;
  v54 = 1 << *(v72 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v72 + 64);
  v57 = (v54 + 63) >> 6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v58 = 0;
  while (1)
  {
    v59 = v69;
    if (!v56)
    {
      break;
    }

LABEL_14:
    v56 &= v56 - 1;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF178C4C();
  }

  while (1)
  {
    v60 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v60 >= v57)
    {

      v61 = *(v33 + 8);
      v62 = v65;
      v61(v68, v65);
      (*(v59 + 8))(v63, v64);
      v61(v43, v62);
      (*(v66 + 32))(v70, v71, v67);
      goto LABEL_16;
    }

    v56 = *(v53 + 8 * v60);
    ++v58;
    if (v56)
    {
      v58 = v60;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void NetworkOperation.__allocating_init(endpoint:parameters:headers:networkProxy:earliestBeginDate:)()
{
  OUTLINED_FUNCTION_32();
  v31[2] = v1;
  v32 = v0;
  v3 = v2;
  v5 = v4;
  v31[0] = v6;
  v31[1] = v7;
  v8 = v6;
  v9 = sub_1BF1794AC();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = sub_1BF17923C();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  v21 = *(v20 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v25, v8, v17, v24);
  v26 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v27 = swift_allocObject();
  (*(v19 + 32))(v27 + v26, v25, v17);
  OUTLINED_FUNCTION_2_52();
  sub_1BF115500(0, v28, v29, type metadata accessor for Accessor);
  OUTLINED_FUNCTION_58();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1BF11C154;
  *(v30 + 24) = v27;
  OUTLINED_FUNCTION_33_7();
  (*(v11 + 16))(v16, v3, v9);
  NetworkOperation.__allocating_init(endpointAccessor:parameters:headers:networkProxy:earliestBeginDate:)();
  (*(v11 + 8))(v3, v9);
  sub_1BF0F840C(v5);
  (*(v19 + 8))(v31[0], v17);
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF115468(uint64_t a1, void (*a2)(void))
{
  a2(0);
  v2 = OUTLINED_FUNCTION_31_1();

  return v3(v2);
}

void sub_1BF115500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t NetworkOperation.perform(completion:)()
{
  OUTLINED_FUNCTION_76();
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F5298);
  v5 = v1;
  v6 = sub_1BF1797DC();
  v7 = sub_1BF17ACDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1BF01A7AC(*(v5 + qword_1ED8EF088), *(v5 + qword_1ED8EF088 + 8), &v14);
    _os_log_impl(&dword_1BEFE0000, v6, v7, "Network operation %{public}s started", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v10 = swift_allocObject();
  v10[2] = *(v3 + 240);
  v10[3] = *(v3 + 248);
  v10[4] = v2;
  v10[5] = v0;
  OUTLINED_FUNCTION_14_0();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = sub_1BF1158AC;
  v11[4] = v10;
  v12 = v5;

  sub_1BF115CDC(sub_1BF115B04, v11, 15.0);
}

uint64_t sub_1BF115780(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Result(0, AssociatedTypeWitness, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v19 - v15);
  type metadata accessor for NetworkOperation(0, a4, a5, v17);
  sub_1BF1158B8(a1, v16);
  a2(v16);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1BF1158B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for NetworkOperationResult(0, AssociatedTypeWitness, v5, v6);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25 - v10;
  v14 = type metadata accessor for Result(0, v7, v12, v13);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = (&v25 - v17);
  (*(v19 + 16))(&v25 - v17, a1, v14, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    v21 = sub_1BF11B060(*v18);

    *a2 = v21;
  }

  else
  {
    (*(v8 + 32))(v11, v18, v7);
    (*(*(AssociatedTypeWitness - 8) + 16))(a2, &v11[*(v7 + 32)], AssociatedTypeWitness);
    (*(v8 + 8))(v11, v7);
  }

  type metadata accessor for Result(0, AssociatedTypeWitness, v22, v23);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BF115B40(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for NetworkOperationResult(255, AssociatedTypeWitness, v3, v4);
  v8 = type metadata accessor for Result(0, v5, v6, v7);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (&v17 - v11);
  (*(v13 + 16))(&v17 - v11, a1, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    v15 = sub_1BF11AC48(v14);
  }

  else
  {
    (*(*(v5 - 8) + 8))(v12, v5);
    return 0;
  }

  return v15;
}

uint64_t sub_1BF115CDC(uint64_t a1, uint64_t a2, double a3)
{
  sub_1BF11610C();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  sub_1BF0F86D0(v3 + qword_1ED8EE2C0, v17);
  switch(v18)
  {
    case 1:
      v14 = *&v17[0];
      v15 = v3;

      sub_1BF116B40(v14, sub_1BF11B960, v7, a3);
      goto LABEL_9;
    case 2:
      v9 = *&v17[0];
      v10 = v3;

      sub_1BF11740C(v9, sub_1BF11B960, v7);
LABEL_9:

    case 3:
      v11 = qword_1ED8EDD40;
      v12 = v3;

      if (v11 != -1)
      {
        swift_once();
      }

      sub_1BEFE6A78(qword_1ED8EDD50, v16);
      goto LABEL_7;
    default:
      sub_1BEFE87B0(v17, v16);
      v8 = v3;

LABEL_7:
      sub_1BF116430(v16, sub_1BF11B960, v7, a3);

      return __swift_destroy_boxed_opaque_existential_1(v16);
  }
}

uint64_t sub_1BF115EC0(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1BF115B40(a1);
  if (v12)
  {
    return a3(a1);
  }

  v14 = *&v11;
  sub_1BF11610C();
  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1ED8EE9F0);
  }

  v15 = sub_1BF1797FC();
  __swift_project_value_buffer(v15, qword_1ED8F5298);
  v16 = a2;
  v17 = sub_1BF1797DC();
  v18 = sub_1BF17ACDC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1BF01A7AC(*&v16[qword_1ED8EF088], *&v16[qword_1ED8EF088 + 8], &v24);
    *(v19 + 12) = 2050;
    *(v19 + 14) = v14;
    _os_log_impl(&dword_1BEFE0000, v17, v18, "Network operation %{public}s will retry with longer timeout after delay: %{public}f", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  OUTLINED_FUNCTION_14_0();
  v21 = swift_allocObject();
  v21[2] = v16;
  v21[3] = a3;
  v21[4] = a4;
  v22 = qword_1ED8EF148;
  v23 = v16;

  if (v22 != -1)
  {
    swift_once();
  }

  TaskScheduler.scheduleAfter(_:_:)(v14, a6, v21);
}

void sub_1BF11610C()
{
  OUTLINED_FUNCTION_76();
  sub_1BF115500(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v1);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v9 - v4;
  v6 = *(v0 + qword_1ED8ED240);
  if (v6)
  {
    v7 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    OUTLINED_FUNCTION_14_0();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;

    sub_1BF089AC0();
  }
}

uint64_t sub_1BF116210(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for NetworkOperationResult(255, AssociatedTypeWitness, v6, v7);
  v11 = type metadata accessor for Result(0, v8, v9, v10);
  v12 = Result.removingValue()(v11);
  v14 = v13;
  sub_1BF1162F4(v12, v13 & 1);
  sub_1BF104FC0(v12, v14 & 1);
  return a3(a1);
}

void sub_1BF1162F4(void *a1, char a2)
{
  sub_1BF115500(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v13 - v7;
  v9 = *(v2 + qword_1ED8ED240);
  if (v9)
  {
    v10 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v9;
    *(v11 + 40) = a1;
    v12 = a2 & 1;
    *(v11 + 48) = v12;

    sub_1BF104FB4(a1, v12);
    sub_1BF089AC0();
  }
}

uint64_t sub_1BF116430(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v70 = sub_1BF17923C();
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v9);
  v66 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF115500(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v69 = &v64 - v13;
  v14 = sub_1BF178C6C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v64 - v21;
  v71 = swift_allocBox();
  v23 = *(*&v4[qword_1ED8EE2B8] + 16);
  v75 = v24;
  v23();
  v25 = qword_1ED8EE298;
  swift_beginAccess();
  v26 = *&v4[v25];
  v27 = *(v26 + 16);
  v73 = a1;
  v74 = v4;
  v72 = v15;
  if (v27)
  {
    v68 = a2;
    v65 = a3;
    v28 = v26 + 32;
    v77 = (v15 + 16);
    v78 = v22;
    v76 = (v15 + 8);
    v29 = (v15 + 40);
    v64 = v26;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v30 = v75;
    v31 = v78;
    do
    {
      sub_1BEFE6A78(v28, v79);
      v32 = v80;
      v33 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      (*v77)(v18, v30, v14);
      (*(v33 + 8))(v18, v32, v33);
      (*v76)(v18, v14);
      (*v29)(v30, v31, v14);
      __swift_destroy_boxed_opaque_existential_1(v79);
      v28 += 40;
      --v27;
    }

    while (v27);

    a3 = v65;
    a1 = v73;
    v5 = v74;
    a2 = v68;
    v15 = v72;
    v22 = v78;
  }

  v34 = v69;
  v35 = v75;
  sub_1BF178C3C();
  v36 = v34;
  v37 = v34;
  v38 = v70;
  if (__swift_getEnumTagSinglePayload(v37, 1, v70))
  {
    sub_1BF11C0F8();
  }

  else
  {
    v39 = v67;
    v40 = v36;
    v41 = v66;
    (*(v67 + 16))(v66, v40, v38);
    sub_1BF11C0F8();
    v78 = sub_1BF17913C();
    v42 = v38;
    v44 = v43;
    (*(v39 + 8))(v41, v42);
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v45 = sub_1BF1797FC();
    __swift_project_value_buffer(v45, qword_1ED8F5298);
    v46 = v5;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v47 = sub_1BF1797DC();
    v48 = sub_1BF17ACDC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v68 = a2;
      v51 = v50;
      v79[0] = v50;
      *v49 = 136446466;
      *(v49 + 4) = sub_1BF01A7AC(*&v46[qword_1ED8EF088], *&v46[qword_1ED8EF088 + 8], v79);
      *(v49 + 12) = 2082;
      v52 = sub_1BF01A7AC(v78, v44, v79);

      *(v49 + 14) = v52;
      _os_log_impl(&dword_1BEFE0000, v47, v48, "Network operation %{public}s will issue request to URL: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      v53 = v51;
      a2 = v68;
      MEMORY[0x1BFB547B0](v53, -1, -1);
      v54 = v49;
      v35 = v75;
      MEMORY[0x1BFB547B0](v54, -1, -1);
    }

    else
    {
    }

    v15 = v72;
    a1 = v73;
  }

  sub_1BF178BFC();
  v55 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  (*(v15 + 16))(v22, v35, v14);
  v57 = swift_allocObject();
  v58 = v74;
  v57[2] = v74;
  v57[3] = a2;
  v78 = v14;
  v59 = v22;
  v60 = v71;
  v57[4] = a3;
  v57[5] = v60;
  v61 = *(v56 + 8);
  v62 = v58;

  v61(v79, v59, sub_1BF11B96C, v57, v55, v56);

  (*(v15 + 8))(v59, v78);
  sub_1BF11B9EC();
}

uint64_t sub_1BF116B40(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v72 = a3;
  v71 = a2;
  v76 = a1;
  v6 = *MEMORY[0x1E69E7D40] & *v4;
  v7 = sub_1BF17923C();
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v66 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF115500(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v68 = v64 - v12;
  v13 = sub_1BF178C6C();
  v73 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v64 - v19;
  v75 = swift_allocBox();
  v22 = v21;
  (*(*&v4[qword_1ED8EE2B8] + 16))();
  v23 = qword_1ED8EE298;
  swift_beginAccess();
  v24 = *&v4[v23];
  v25 = *(v24 + 16);
  v74 = v4;
  v69 = v6;
  v79 = v20;
  v80 = v22;
  if (v25)
  {
    v65 = v7;
    v26 = v24 + 32;
    v77 = (v73 + 8);
    v78 = (v73 + 16);
    v27 = v13;
    v28 = (v73 + 40);
    v64[1] = v24;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v29 = v79;
    do
    {
      sub_1BEFE6A78(v26, v81);
      v31 = v82;
      v30 = v83;
      __swift_project_boxed_opaque_existential_1(v81, v82);
      v32 = v80;
      (*v78)(v16, v80, v27);
      (*(v30 + 8))(v16, v31, v30);
      (*v77)(v16, v27);
      (*v28)(v32, v29, v27);
      __swift_destroy_boxed_opaque_existential_1(v81);
      v26 += 40;
      --v25;
    }

    while (v25);

    v5 = v74;
    v13 = v27;
    v6 = v69;
    v7 = v65;
  }

  v33 = v68;
  sub_1BF178C3C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v7);
  v70 = v13;
  if (EnumTagSinglePayload)
  {
    sub_1BF11C0F8();
  }

  else
  {
    v35 = v67;
    v36 = v66;
    (*(v67 + 16))(v66, v33, v7);
    sub_1BF11C0F8();
    v78 = sub_1BF17913C();
    v38 = v37;
    (*(v35 + 8))(v36, v7);
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v39 = sub_1BF1797FC();
    __swift_project_value_buffer(v39, qword_1ED8F5298);
    v40 = v5;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v41 = sub_1BF1797DC();
    v42 = sub_1BF17ACDC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v81[0] = v44;
      *v43 = 136446466;
      *(v43 + 4) = sub_1BF01A7AC(*&v40[qword_1ED8EF088], *&v40[qword_1ED8EF088 + 8], v81);
      *(v43 + 12) = 2082;
      v45 = sub_1BF01A7AC(v78, v38, v81);

      *(v43 + 14) = v45;
      _os_log_impl(&dword_1BEFE0000, v41, v42, "Network operation %{public}s will issue background request to URL: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v44, -1, -1);
      MEMORY[0x1BFB547B0](v43, -1, -1);
    }

    else
    {
    }

    v6 = v69;
  }

  sub_1BF178BFC();
  v46 = *&v5[qword_1ED8EF088];
  v47 = *&v5[qword_1ED8EF088 + 8];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  v78 = *(v6 + 240);
  v49[2] = v78;
  v50 = *(v6 + 248);
  v49[3] = v50;
  v49[4] = v48;
  v49[5] = v46;
  v49[6] = v47;
  v51 = v71;
  v52 = v72;
  v49[7] = v71;
  v49[8] = v52;
  v49[9] = v75;

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  sub_1BF07D9CC();

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  v54[2] = v78;
  v54[3] = v50;
  v54[4] = v53;
  v54[5] = v46;
  v54[6] = v47;
  v54[7] = v51;
  v54[8] = v52;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v55 = v46;
  sub_1BF07DC4C();

  v56 = v76[5];
  v57 = v76[6];
  __swift_project_boxed_opaque_existential_1(v76 + 2, v56);
  v58 = v80;
  swift_beginAccess();
  v59 = v73;
  v60 = v79;
  v61 = v58;
  v62 = v70;
  (*(v73 + 16))(v79, v61, v70);
  (*(v57 + 16))(v81, v60, v55, v47, &v74[qword_1ED8EE2A8], v56, v57);
  (*(v59 + 8))(v60, v62);
  sub_1BF11B9EC();
}

uint64_t sub_1BF11740C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v5 = sub_1BF179B5C();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF179BBC();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF179BEC();
  v35 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v31 - v20;
  sub_1BF151DB0(v22, v23);
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  v33 = sub_1BF17AD5C();
  sub_1BF179BDC();
  sub_1BF179C6C();
  v34 = *(v14 + 8);
  v34(v17, v13);
  v24 = swift_allocObject();
  v26 = v31;
  v25 = v32;
  v24[2] = v31;
  v24[3] = a1;
  v24[4] = v25;
  v24[5] = a3;
  aBlock[4] = sub_1BF11BD88;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_13;
  v27 = _Block_copy(aBlock);
  v28 = v26;

  sub_1BF179B8C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BF11C074(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BF115500(0, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  v29 = v33;
  MEMORY[0x1BFB52B00](v21, v12, v8, v27);
  _Block_release(v27);

  (*(v38 + 8))(v8, v5);
  (*(v36 + 8))(v12, v37);
  return (v34)(v21, v35);
}

uint64_t sub_1BF117804(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t *a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9)
{
  v95 = a8;
  v96 = a7;
  v92 = a2;
  sub_1BF115500(0, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v86 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for NetworkOperationResult(255, AssociatedTypeWitness, v19, v20);
  v24 = type metadata accessor for Result(0, v21, v22, v23);
  v93 = *(v24 - 8);
  v94 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v86 - v26);
  v28 = sub_1BF178C6C();
  v29 = swift_projectBox();
  sub_1BF1181F8(a3, a4, a5);
  if (a5)
  {
    v30 = a5;
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v31 = sub_1BF1797FC();
    __swift_project_value_buffer(v31, qword_1ED8F5298);
    v32 = a5;
    v33 = a6;
    v34 = sub_1BF1797DC();
    v35 = sub_1BF17ACBC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v97[0] = v38;
      *v36 = 136446466;
      *(v36 + 4) = sub_1BF01A7AC(*(v33 + qword_1ED8EF088), *(v33 + qword_1ED8EF088 + 8), v97);
      *(v36 + 12) = 2114;
      v39 = a5;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v40;
      *v37 = v40;
      _os_log_impl(&dword_1BEFE0000, v34, v35, "Network operation %{public}s failed with error: %{public}@", v36, 0x16u);
      sub_1BF11B9EC();
      MEMORY[0x1BFB547B0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1BFB547B0](v38, -1, -1);
      MEMORY[0x1BFB547B0](v36, -1, -1);
    }

    *v27 = a5;
    v41 = v94;
    swift_storeEnumTagMultiPayload();
    v42 = a5;
    v96(v27);

    return (*(v93 + 8))(v27, v41);
  }

  v90 = v17;
  v91 = a1;
  v89 = v29;
  v44 = a3;
  if (!a3)
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (!v45)
  {
    goto LABEL_12;
  }

  v46 = v45;
  v47 = v44;
  if (sub_1BF081C58())
  {

LABEL_12:
    v48 = v92;
    if (v92 >> 60 == 15)
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v49 = sub_1BF1797FC();
      __swift_project_value_buffer(v49, qword_1ED8F5298);
      v50 = a6;
      v51 = sub_1BF1797DC();
      v52 = sub_1BF17ACBC();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v97[0] = v54;
        *v53 = 136446210;
        *(v53 + 4) = sub_1BF01A7AC(*(v50 + qword_1ED8EF088), *(v50 + qword_1ED8EF088 + 8), v97);
        _os_log_impl(&dword_1BEFE0000, v51, v52, "Network operation %{public}s failed with unknown error", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x1BFB547B0](v54, -1, -1);
        MEMORY[0x1BFB547B0](v53, -1, -1);
      }

      v41 = v94;
      sub_1BF11B998();
      v55 = swift_allocError();
      *v56 = 0;
      *(v56 + 8) = 1;
      *v27 = v55;
      swift_storeEnumTagMultiPayload();
      v96(v27);
    }

    else
    {
      v57 = v91;
      sub_1BF00F5E0(v91, v92);
      v58 = v44;
      sub_1BF00F5E0(v57, v48);
      v59 = a4;
      v88 = sub_1BF1184F4(v57, v48, v44, a4);
      v61 = v60;
      sub_1BF014E18(v57, v48);

      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v62 = sub_1BF1797FC();
      __swift_project_value_buffer(v62, qword_1ED8F5298);
      v63 = a6;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v64 = sub_1BF1797DC();
      v65 = sub_1BF17ACDC();

      v66 = os_log_type_enabled(v64, v65);
      v67 = v90;
      if (v66)
      {
        v68 = swift_slowAlloc();
        v87 = v64;
        v69 = v68;
        v70 = swift_slowAlloc();
        v97[0] = v70;
        *v69 = 136446466;
        *(v69 + 4) = sub_1BF01A7AC(*(v63 + qword_1ED8EF088), *(v63 + qword_1ED8EF088 + 8), v97);
        *(v69 + 12) = 2082;
        v71 = sub_1BF01A7AC(v88, v61, v97);

        *(v69 + 14) = v71;
        v72 = v87;
        _os_log_impl(&dword_1BEFE0000, v87, v65, "Network operation %{public}s received response (%{public}s", v69, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB547B0](v70, -1, -1);
        MEMORY[0x1BFB547B0](v69, -1, -1);
      }

      else
      {
      }

      v73 = v89;
      v74 = v91;
      swift_beginAccess();
      (*(*(v28 - 8) + 16))(v67, v73, v28);
      __swift_storeEnumTagSinglePayload(v67, 0, 1, v28);
      v75 = v92;
      sub_1BF118DE4(v44, v67, v74, v92, v27);
      sub_1BF11C0F8();
      v96(v27);
      sub_1BF00F5F4(v74, v75);
      v41 = v94;
    }

    return (*(v93 + 8))(v27, v41);
  }

  if (qword_1ED8EE9F0 != -1)
  {
    swift_once();
  }

  v76 = sub_1BF1797FC();
  __swift_project_value_buffer(v76, qword_1ED8F5298);
  v77 = a6;
  v78 = v47;
  v79 = sub_1BF1797DC();
  v80 = sub_1BF17ACBC();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v97[0] = v82;
    *v81 = 136446466;
    *(v81 + 4) = sub_1BF01A7AC(*(v77 + qword_1ED8EF088), *(v77 + qword_1ED8EF088 + 8), v97);
    *(v81 + 12) = 2050;
    *(v81 + 14) = [v46 statusCode];

    _os_log_impl(&dword_1BEFE0000, v79, v80, "Network operation %{public}s failed with HTTP status code: %{public}ld", v81, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x1BFB547B0](v82, -1, -1);
    MEMORY[0x1BFB547B0](v81, -1, -1);
  }

  else
  {
  }

  sub_1BF081F08();
  v83 = swift_allocError();
  *v84 = v46;
  *v27 = v83;
  v41 = v94;
  swift_storeEnumTagMultiPayload();
  v85 = v78;
  v96(v27);

  return (*(v93 + 8))(v27, v41);
}

void sub_1BF1181F8(void *a1, void *a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = v3 + qword_1ED8EE2D0;
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 8);
      v31 = a3;
      v32 = 0;
      v33 = 2;
      v9 = a3;
      sub_1BF009984(v7, v8);
      v7(&v31);
      sub_1BF0F8B9C(v7, v8);
LABEL_4:
      sub_1BF11BCB4(v31, v32, v33);
    }
  }

  else if (a1)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v29 = a1;
      if (sub_1BF081C58())
      {
        if (a2)
        {
          v14 = [a2 transactionMetrics];
          sub_1BEFF9AF8(0, &qword_1ED8EDD20, 0x1E696AFA0);
          v15 = sub_1BF17A4DC();
        }

        else
        {
          v15 = MEMORY[0x1E69E7CC0];
        }

        v30 = sub_1BEFE90AC(v15);
        v20 = v4 + qword_1ED8EE2D0;
        swift_beginAccess();
        for (i = 0; ; ++i)
        {
          if (v30 == i)
          {
            goto LABEL_26;
          }

          if ((v15 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1BFB53020](i, v15);
          }

          else
          {
            if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v22 = *(v15 + 8 * i + 32);
          }

          v23 = v22;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if ([v22 resourceFetchType] == 3)
          {

LABEL_26:

            return;
          }

          v24 = *v20;
          if (*v20)
          {
            v25 = *(v20 + 8);
            v31 = v13;
            v32 = v23;
            v33 = 0;
            v26 = v29;
            sub_1BF009984(v24, v25);
            v27 = v13;
            v28 = v23;
            v24(&v31);
            sub_1BF0F8B9C(v24, v25);

            v13 = v27;
            sub_1BF11BCB4(v31, v32, v33);
          }

          else
          {
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
      }

      else
      {
        v16 = v4 + qword_1ED8EE2D0;
        swift_beginAccess();
        v17 = *v16;
        if (*v16)
        {
          v18 = *(v16 + 8);
          v31 = v13;
          v32 = 0;
          v33 = 1;
          v19 = v29;
          sub_1BF009984(v17, v18);
          v17(&v31);
          sub_1BF0F8B9C(v17, v18);

          goto LABEL_4;
        }
      }
    }
  }
}

uint64_t sub_1BF1184F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v85 = a3;
  v86 = a1;
  v87 = a2;
  v5 = sub_1BF178DEC();
  v84 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1BF115500(0, &unk_1ED8EE430, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v88 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v82 - v14;
  sub_1BF115500(0, &qword_1ED8EF860, MEMORY[0x1E6969530], v8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v82 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v82 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v82 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v82 - v34;
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v40 = &v82 - v39;
  v89 = v5;
  v90 = v35;
  v91 = v31;
  if (a4)
  {
    v41 = [a4 transactionMetrics];
    sub_1BEFF9AF8(0, &qword_1ED8EDD20, 0x1E696AFA0);
    v42 = sub_1BF17A4DC();

    if (sub_1BEFE90AC(v42))
    {
      sub_1BF0F428C();
      if ((v42 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1BFB53020](0, v42);
      }

      else
      {
        v43 = *(v42 + 32);
      }

      v44 = v43;

      v45 = v91;
      if (v44)
      {
        v46 = [v44 fetchStartDate];
        if (v46)
        {
          v47 = v46;
          sub_1BF17945C();

          v48 = sub_1BF1794AC();
          v49 = 0;
        }

        else
        {
          v48 = sub_1BF1794AC();
          v49 = 1;
        }

        v54 = 1;
        __swift_storeEnumTagSinglePayload(v27, v49, 1, v48);
        sub_1BF11BB00(v27, v40);
        v82 = v44;
        v55 = [v44 responseStartDate];
        if (v55)
        {
          v56 = v55;
          sub_1BF17945C();

          v54 = 0;
        }

        v57 = sub_1BF1794AC();
        v58 = 1;
        __swift_storeEnumTagSinglePayload(v23, v54, 1, v57);
        sub_1BF11BB00(v23, v35);
        v59 = [v82 requestStartDate];
        if (v59)
        {
          v60 = v59;
          sub_1BF17945C();

          v58 = 0;
        }

        v5 = v89;
        __swift_storeEnumTagSinglePayload(v19, v58, 1, v57);
        sub_1BF11BB00(v19, v91);
        v52 = v82;
        goto LABEL_17;
      }
    }

    else
    {

      v45 = v91;
    }

    v53 = sub_1BF1794AC();
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v53);
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v53);
    __swift_storeEnumTagSinglePayload(v45, 1, 1, v53);
    v52 = 0;
    v5 = v89;
LABEL_17:
    v61 = [a4 taskInterval];
    sub_1BF178D9C();

    v51 = 0;
    goto LABEL_18;
  }

  v50 = sub_1BF1794AC();
  v51 = 1;
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v50);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v50);
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v50);
  v52 = 0;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v15, v51, 1, v5);
  sub_1BF115500(0, &unk_1ED8EDD10, sub_1BF083DE0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17EBE0;
  *(inited + 32) = 0x6F43737574617473;
  *(inited + 40) = 0xEA00000000006564;
  if (v85 && (objc_opt_self(), (v63 = swift_dynamicCastObjCClass()) != 0))
  {
    v64 = [v63 statusCode];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 48) = v64;
  }

  else
  {
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  *(inited + 80) = 1702521203;
  *(inited + 88) = 0xE400000000000000;
  v65 = objc_opt_self();
  v66 = [v65 stringFromByteCount:MEMORY[0x1BFB51150](v86 countStyle:{v87), 2}];
  v67 = sub_1BF17A0AC();
  v69 = v68;

  v70 = MEMORY[0x1E69E6158];
  *(inited + 96) = v67;
  *(inited + 104) = v69;
  *(inited + 120) = v70;
  *(inited + 128) = 0x646575657571;
  *(inited + 136) = 0xE600000000000000;
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v82 - 2) = v15;
  v73 = sub_1BF1132A8(sub_1BF11BA38, (&v82 - 4), (inited + 144));
  *(inited + 176) = 1650881652;
  *(inited + 184) = 0xE400000000000000;
  MEMORY[0x1EEE9AC00](v73, v74);
  *(&v82 - 2) = v91;
  sub_1BF1132A8(sub_1BF11BA9C, (&v82 - 4), (inited + 192));
  *(inited + 224) = 0x6C61746F74;
  *(inited + 232) = 0xE500000000000000;
  v75 = v88;
  sub_1BF11BC40(v15, v88, &unk_1ED8EE430, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1BF115500);
  v76 = v89;
  if (__swift_getEnumTagSinglePayload(v75, 1, v89) == 1)
  {
    *(inited + 240) = 0u;
    *(inited + 256) = 0u;
  }

  else
  {
    v78 = v83;
    v77 = v84;
    (*(v84 + 32))(v83, v75, v76);
    sub_1BF081954((inited + 240));
    (*(v77 + 8))(v78, v76);
  }

  sub_1BF11B53C(inited);
  v80 = v79;

  swift_setDeallocating();
  sub_1BF0C832C();
  sub_1BF11C0F8();
  sub_1BF11C0F8();
  sub_1BF11C0F8();
  sub_1BF11C0F8();
  return v80;
}

void sub_1BF118DE4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a2;
  v24[2] = *MEMORY[0x1E69E7D40] & *v5;
  v10 = sub_1BF17A12C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v24[1] = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8EE9F0 != -1)
  {
    swift_once();
  }

  v13 = sub_1BF1797FC();
  __swift_project_value_buffer(v13, qword_1ED8F5298);
  v14 = v5;
  sub_1BF014DC0(a3, a4);
  v15 = sub_1BF1797DC();
  v16 = sub_1BF17ACDC();

  if (os_log_type_enabled(v15, v16))
  {
    v24[0] = a5;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_1BF01A7AC(*(v14 + qword_1ED8EF088), *(v14 + qword_1ED8EF088 + 8), &v26);
    *(v17 + 12) = 2048;
    v19 = 0;
    switch(a4 >> 62)
    {
      case 1uLL:
        LODWORD(v19) = HIDWORD(a3) - a3;
        if (!__OFSUB__(HIDWORD(a3), a3))
        {
          v19 = v19;
          goto LABEL_10;
        }

        __break(1u);
        goto LABEL_13;
      case 2uLL:
        v21 = *(a3 + 16);
        v20 = *(a3 + 24);
        v22 = __OFSUB__(v20, v21);
        v19 = v20 - v21;
        if (!v22)
        {
          goto LABEL_10;
        }

LABEL_13:
        __break(1u);
        return;
      case 3uLL:
        goto LABEL_10;
      default:
        v19 = BYTE6(a4);
LABEL_10:
        *(v17 + 14) = v19;
        sub_1BF014E18(a3, a4);
        _os_log_impl(&dword_1BEFE0000, v15, v16, "Network operation %{public}s attempting to parse response with %ld bytes", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x1BFB547B0](v18, -1, -1);
        MEMORY[0x1BFB547B0](v17, -1, -1);

        a5 = v24[0];
        goto LABEL_11;
    }
  }

  sub_1BF014E18(a3, a4);

LABEL_11:
  v23 = MEMORY[0x1BFB53D00]();
  sub_1BF11A444(a3, a4, v14, v25, a1, &v26, a5);
  objc_autoreleasePoolPop(v23);
}

uint64_t sub_1BF119338(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45 = a8;
  v46 = a7;
  v43 = a2;
  v44 = a6;
  sub_1BF115500(0, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v43 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for NetworkOperationResult(255, AssociatedTypeWitness, v19, v20);
  v24 = type metadata accessor for Result(0, v21, v22, v23);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v43 - v27);
  v29 = sub_1BF178C6C();
  v30 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    if (a3)
    {
      *v28 = a1;
      swift_storeEnumTagMultiPayload();
      v33 = a1;
    }

    else
    {
      swift_beginAccess();
      (*(*(v29 - 8) + 16))(v17, v30, v29);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v29);
      sub_1BF118DE4(0, v17, a1, v43, v28);
      sub_1BF11C0F8();
    }

    v46(v28);
  }

  else
  {
    v34 = v44;
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v35 = sub_1BF1797FC();
    __swift_project_value_buffer(v35, qword_1ED8F5298);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v36 = sub_1BF1797DC();
    v37 = sub_1BF17ACDC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_1BF01A7AC(a5, v34, v47);
      _os_log_impl(&dword_1BEFE0000, v36, v37, "Network operation %{public}s was abandoned", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1BFB547B0](v39, -1, -1);
      MEMORY[0x1BFB547B0](v38, -1, -1);
    }

    sub_1BF11B998();
    v40 = swift_allocError();
    *v41 = 1;
    *(v41 + 8) = 1;
    *v28 = v40;
    swift_storeEnumTagMultiPayload();
    v46(v28);
  }

  return (*(v25 + 8))(v28, v24);
}

void sub_1BF119760(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37[1] = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for NetworkOperationResult(255, AssociatedTypeWitness, v17, v18);
  v22 = type metadata accessor for Result(0, v19, v20, v21);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = (v37 - v25);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    sub_1BF1181F8(a1, a2, a3);
  }

  else
  {
    v37[0] = a5;
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v29 = sub_1BF1797FC();
    __swift_project_value_buffer(v29, qword_1ED8F5298);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v30 = sub_1BF1797DC();
    v31 = sub_1BF17ACDC();

    v32 = v23;
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_1BF01A7AC(v37[0], a6, &v38);
      _os_log_impl(&dword_1BEFE0000, v30, v31, "Network operation %{public}s was abandoned", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFB547B0](v34, -1, -1);
      MEMORY[0x1BFB547B0](v33, -1, -1);
    }

    sub_1BF11B998();
    v35 = swift_allocError();
    *v36 = 1;
    *(v36 + 8) = 1;
    *v26 = v35;
    swift_storeEnumTagMultiPayload();
    a7(v26);
    (*(v32 + 8))(v26, v22);
  }
}

uint64_t sub_1BF119A24(uint64_t *a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v91 = a4;
  v92 = a3;
  sub_1BF115500(0, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v85 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for NetworkOperationResult(255, AssociatedTypeWitness, v11, v12);
  v90 = type metadata accessor for Result(0, v13, v14, v15);
  v16 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v17);
  v19 = (&v85 - v18);
  swift_beginAccess();
  v20 = a2[4];
  swift_beginAccess();
  v21 = a2[5];
  swift_beginAccess();
  v22 = a2[6];
  v23 = v20;
  v24 = v21;
  v25 = v22;
  sub_1BF1181F8(v20, v21, v22);

  v26 = a2[6];
  if (v26)
  {
    v27 = v26;
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v28 = sub_1BF1797FC();
    __swift_project_value_buffer(v28, qword_1ED8F5298);
    v29 = v26;
    v30 = a1;
    v31 = sub_1BF1797DC();
    v32 = sub_1BF17ACBC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v94[0] = v35;
      *v33 = 136446466;
      *(v33 + 4) = sub_1BF01A7AC(*(v30 + qword_1ED8EF088), *(v30 + qword_1ED8EF088 + 8), v94);
      *(v33 + 12) = 2114;
      v36 = v26;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      *v34 = v37;
      _os_log_impl(&dword_1BEFE0000, v31, v32, "Stub network operation %{public}s failed with error: %{public}@", v33, 0x16u);
      sub_1BF11B9EC();
      MEMORY[0x1BFB547B0](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1BFB547B0](v35, -1, -1);
      MEMORY[0x1BFB547B0](v33, -1, -1);
    }

    v38 = v90;
    *v19 = v26;
    swift_storeEnumTagMultiPayload();
    v39 = v26;
    v92(v19);

    return (*(v16 + 8))(v19, v38);
  }

  v41 = a2[4];
  if (!v41)
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (!v42)
  {
    goto LABEL_12;
  }

  v43 = v42;
  v44 = v41;
  if (sub_1BF081C58())
  {

LABEL_12:
    swift_beginAccess();
    v45 = a2[3];
    if (v45 >> 60 == 15)
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v46 = sub_1BF1797FC();
      __swift_project_value_buffer(v46, qword_1ED8F5298);
      v47 = a1;
      v48 = sub_1BF1797DC();
      v49 = sub_1BF17ACBC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v93 = v51;
        *v50 = 136446210;
        *(v50 + 4) = sub_1BF01A7AC(*(v47 + qword_1ED8EF088), *(v47 + qword_1ED8EF088 + 8), &v93);
        _os_log_impl(&dword_1BEFE0000, v48, v49, "Stub network operation %{public}s failed with unknown error", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x1BFB547B0](v51, -1, -1);
        MEMORY[0x1BFB547B0](v50, -1, -1);
      }

      sub_1BF11B998();
      v52 = swift_allocError();
      *v53 = 0;
      *(v53 + 8) = 1;
      *v19 = v52;
      v38 = v90;
      swift_storeEnumTagMultiPayload();
      v92(v19);
    }

    else
    {
      v88 = v16;
      v54 = a2[2];
      v55 = a2[4];
      v56 = a2[5];
      sub_1BF00F5E0(v54, v45);
      sub_1BF00F5E0(v54, v45);
      v57 = v56;
      v58 = v55;
      v87 = sub_1BF1184F4(v54, v45, v55, v56);
      v60 = v59;
      v89 = v54;
      sub_1BF014E18(v54, v45);

      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v61 = sub_1BF1797FC();
      __swift_project_value_buffer(v61, qword_1ED8F5298);
      v62 = a1;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v63 = sub_1BF1797DC();
      v64 = sub_1BF17ACDC();

      v65 = os_log_type_enabled(v63, v64);
      v16 = v88;
      if (v65)
      {
        v66 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v93 = v86;
        *v66 = 136446466;
        *(v66 + 4) = sub_1BF01A7AC(*(v62 + qword_1ED8EF088), *(v62 + qword_1ED8EF088 + 8), &v93);
        *(v66 + 12) = 2082;
        v67 = sub_1BF01A7AC(v87, v60, &v93);
        LODWORD(v87) = v64;
        v68 = v67;

        *(v66 + 14) = v68;
        _os_log_impl(&dword_1BEFE0000, v63, v87, "Stub network operation %{public}s received response (%{public}s", v66, 0x16u);
        v69 = v86;
        swift_arrayDestroy();
        MEMORY[0x1BFB547B0](v69, -1, -1);
        MEMORY[0x1BFB547B0](v66, -1, -1);
      }

      else
      {
      }

      v70 = a2[4];
      v71 = sub_1BF178C6C();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v71);
      v72 = v70;
      v73 = v70;
      v74 = v89;
      sub_1BF118DE4(v73, v9, v89, v45, v19);

      sub_1BF11C0F8();
      v92(v19);
      sub_1BF00F5F4(v74, v45);
      v38 = v90;
    }

    return (*(v16 + 8))(v19, v38);
  }

  if (qword_1ED8EE9F0 != -1)
  {
    swift_once();
  }

  v75 = sub_1BF1797FC();
  __swift_project_value_buffer(v75, qword_1ED8F5298);
  v76 = a1;
  v77 = v44;
  v78 = sub_1BF1797DC();
  v79 = sub_1BF17ACBC();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v94[0] = v81;
    *v80 = 136446466;
    *(v80 + 4) = sub_1BF01A7AC(*(v76 + qword_1ED8EF088), *(v76 + qword_1ED8EF088 + 8), v94);
    *(v80 + 12) = 2050;
    *(v80 + 14) = [v43 statusCode];

    _os_log_impl(&dword_1BEFE0000, v78, v79, "Stub network operation %{public}s failed with HTTP status code: %{public}ld", v80, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x1BFB547B0](v81, -1, -1);
    MEMORY[0x1BFB547B0](v80, -1, -1);
  }

  else
  {
  }

  v38 = v90;
  sub_1BF081F08();
  v82 = swift_allocError();
  *v83 = v43;
  *v19 = v82;
  swift_storeEnumTagMultiPayload();
  v84 = v77;
  v92(v19);

  return (*(v16 + 8))(v19, v38);
}

id sub_1BF11A444@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a6;
  v57 = a1;
  v58 = a2;
  v52 = a4;
  v53 = a5;
  v51 = a7;
  v8 = *a3;
  v9 = *MEMORY[0x1E69E7D40];
  sub_1BF115500(0, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v55 = &v50 - v12;
  v13 = *((v9 & v8) + 0xF0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v50 - v17;
  v19 = *((v9 & v8) + 0xF8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v50 - v27;
  (*(v19 + 16))(v13, v19, v26);
  v29 = v59;
  (*(v19 + 24))(v57, v58, v13, v19);
  result = (*(v14 + 8))(v18, v13);
  if (v29)
  {
    *v56 = v29;
  }

  else
  {
    v57 = v28;
    v58 = v23;
    v59 = AssociatedTypeWitness;
    v31 = v51;
    v32 = v52;
    v33 = v53;
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v34 = sub_1BF1797FC();
    __swift_project_value_buffer(v34, qword_1ED8F5298);
    v35 = a3;
    v36 = sub_1BF1797DC();
    v37 = sub_1BF17ACDC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v60 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_1BF01A7AC(*(v35 + qword_1ED8EF088), *(v35 + qword_1ED8EF088 + 8), &v60);
      _os_log_impl(&dword_1BEFE0000, v36, v37, "Network operation %{public}s succeeded", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1BFB547B0](v39, -1, -1);
      MEMORY[0x1BFB547B0](v38, -1, -1);
    }

    v40 = v33;
    v42 = v54;
    v41 = v55;
    v43 = v59;
    sub_1BF11BC40(v32, v55, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720], sub_1BF115500);
    v44 = v58;
    (*(v42 + 32))(v58, v57, v43);
    sub_1BF10EF50(v41, v40, v44, v43, v31);
    v47 = type metadata accessor for NetworkOperationResult(255, v43, v45, v46);
    type metadata accessor for Result(0, v47, v48, v49);
    swift_storeEnumTagMultiPayload();
    return v40;
  }

  return result;
}

uint64_t sub_1BF11A8E4()
{
  OUTLINED_FUNCTION_5();
  sub_1BF103ADC();
  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1BF11A95C()
{
  OUTLINED_FUNCTION_5();
  sub_1BF104034();
  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1BF11A9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 32) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BF11A9D8, a4, 0);
}

uint64_t sub_1BF11A9D8()
{
  OUTLINED_FUNCTION_5();
  sub_1BF104180(*(v0 + 24), *(v0 + 32) & 1);
  OUTLINED_FUNCTION_9();

  return v1();
}

id NetworkOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BF11AAAC()
{

  sub_1BF0F8B9C(*(v0 + qword_1ED8EE2D0), *(v0 + qword_1ED8EE2D0 + 8));

  sub_1BF0F840C(v0 + qword_1ED8EE2C0);
  v1 = qword_1ED8EE2A8;
  sub_1BF1794AC();
  OUTLINED_FUNCTION_0_0();
  (*(v2 + 8))(v0 + v1);
}

id NetworkOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BF11AB94(uint64_t a1)
{

  sub_1BF0F8B9C(*(a1 + qword_1ED8EE2D0), *(a1 + qword_1ED8EE2D0 + 8));

  sub_1BF0F840C(a1 + qword_1ED8EE2C0);
  v2 = qword_1ED8EE2A8;
  sub_1BF1794AC();
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(a1 + v2);
}

uint64_t sub_1BF11AC48(void *a1)
{
  v2 = sub_1BF1796CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v25 - v9;
  sub_1BF115500(0, &unk_1ED8ED650, MEMORY[0x1E6969C20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v25 - v13;
  v15 = sub_1BF1796DC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = a1;
  v20 = a1;
  sub_1BEFE6EA8(0, &qword_1ED8EFD30, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    (*(v16 + 32))(v19, v14, v15);
    sub_1BF11C074(&qword_1ED8ED660, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1BF1790FC();
    sub_1BF1796BC();
    sub_1BF11C074(&qword_1ED8ED668, MEMORY[0x1E6969BF8], MEMORY[0x1E6969C00]);
    v21 = sub_1BF17A05C();
    v22 = *(v3 + 8);
    v22(v6, v2);
    if (v21)
    {
      v22(v10, v2);
      (*(v16 + 8))(v19, v15);
      return 0x3FF0000000000000;
    }

    else
    {
      sub_1BF1796AC();
      v24 = sub_1BF17A05C();
      v22(v6, v2);
      v22(v10, v2);
      (*(v16 + 8))(v19, v15);
      if (v24)
      {
        return 0x3FF0000000000000;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    sub_1BF11C0F8();
    return 0;
  }
}

void *sub_1BF11B060(void *a1)
{
  v1 = a1;
  v2 = a1;
  sub_1BEFE6EA8(0, &qword_1ED8EFD30, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    sub_1BF11B998();
    v1 = swift_allocError();
    v4 = v3;
    if (v8 >= 3)
    {
      v5 = [v8 statusCode];
      sub_1BF10EE10(v8);
    }

    else
    {
      v5 = v8;
    }

    *v4 = v5;
    *(v4 + 8) = v8 < 3;
  }

  else
  {
    v6 = v1;
  }

  return v1;
}

void sub_1BF11B150(void *a1@<X8>)
{
  v2 = [objc_opt_self() defaultSessionConfiguration];
  [v2 set:objc_msgSend(v2 timingDataOptions:sel__timingDataOptions) | 1];
  v3 = [objc_opt_self() sessionWithConfiguration_];

  a1[3] = sub_1BEFF9AF8(0, &qword_1ED8EDD30, 0x1E696AF78);
  a1[4] = &protocol witness table for NSURLSession;

  *a1 = v3;
}

uint64_t sub_1BF11B218@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BF1794AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF178DCC();
  sub_1BF1793DC();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v13[1] = sub_1BF081688(v8);
  v14 = sub_1BF17B6FC();
  v15 = v9;
  result = MEMORY[0x1BFB52000](29549, 0xE200000000000000);
  v11 = v14;
  v12 = v15;
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v11;
  a1[1] = v12;
  return result;
}

uint64_t sub_1BF11B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, unint64_t *a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, void (*a6)(char *, uint64_t)@<X6>, _OWORD *a7@<X8>)
{
  v27 = a1;
  v28 = a6;
  v29 = a7;
  v11 = a3(0);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v27 - v16;
  v18 = MEMORY[0x1E69E6720];
  sub_1BF115500(0, a4, a5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v19);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v27 - v22;
  OUTLINED_FUNCTION_7_27();
  sub_1BF11BC40(a2, v23, a4, a5, v18, v24);
  result = __swift_getEnumTagSinglePayload(v23, 1, v11);
  if (result == 1)
  {
    v26 = v29;
    *v29 = 0u;
    v26[1] = 0u;
  }

  else
  {
    (*(v13 + 32))(v17, v23, v11);
    v28(v17, v27);
    result = (*(v13 + 8))(v17, v11);
    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1BF11B53C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CA0];
  v13 = a1 + 32;
LABEL_2:
  for (i = v3 + 48 * v1; ; i += 48)
  {
    if (v2 == v1)
    {
      v17[0] = v4;
      sub_1BF11BBF0(0, &qword_1ED8EE9D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1BF01B738();
      sub_1BF179F7C();

      return;
    }

    if (v1 >= v2)
    {
      break;
    }

    sub_1BF084014(i, v17);
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = v17[0];
    v8 = v17[1];
    sub_1BF11BC40(&v18, &v14, &qword_1ED8EFBA0, v5 + 8, MEMORY[0x1E69E6720], sub_1BF11BBF0);
    if (v15)
    {
      sub_1BEFF9A40(&v14, v16);
      *&v14 = 0;
      *(&v14 + 1) = 0xE000000000000000;
      MEMORY[0x1BFB52000](v7, v8);
      MEMORY[0x1BFB52000](61, 0xE100000000000000);
      sub_1BF17B40C();
      v9 = v14;
      __swift_destroy_boxed_opaque_existential_1(v16);
      sub_1BF11BB94(v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF0201A4();
        v4 = v11;
      }

      v10 = *(v4 + 16);
      if (v10 >= *(v4 + 24) >> 1)
      {
        sub_1BF0201A4();
        v4 = v12;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + 16 * v10 + 32) = v9;
      ++v1;
      v3 = v13;
      goto LABEL_2;
    }

    sub_1BF11C0F8();
    sub_1BF11BB94(v17);
    ++v1;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1BF11B7C8(uint64_t a1)
{
  result = sub_1BF1794AC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation29NetworkOperationInternalErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1BF11B998()
{
  result = qword_1EBDCAB70;
  if (!qword_1EBDCAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAB70);
  }

  return result;
}

uint64_t sub_1BF11B9EC()
{
  v1 = OUTLINED_FUNCTION_14_1();
  sub_1BEFFE8A0(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_0_0();
  (*(v6 + 8))(v0);
  return v0;
}

uint64_t sub_1BF11BB00(uint64_t a1, uint64_t a2)
{
  sub_1BF115500(0, &qword_1ED8EF860, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF11BB94(uint64_t a1)
{
  sub_1BF083DE0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF11BBF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BF11BC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1BF11BCB4(void *a1, void *a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return;
      }

      a1 = a2;
    }
  }
}

uint64_t sub_1BF11BD94()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6(v5);

  return sub_1BF11A9B4(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1BF11BE44()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6(v3);

  return sub_1BF11A8C4(v5, v6, v7, v1);
}

uint64_t sub_1BF11BEEC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6(v3);

  return sub_1BF11A93C(v5, v6, v7, v1);
}

uint64_t sub_1BF11BF88()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_1BF11C074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF11C0F8()
{
  v1 = OUTLINED_FUNCTION_14_1();
  v2(v1);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t URLHandlerMatcher.__allocating_init(url:)(uint64_t a1)
{
  v2 = swift_allocObject();
  URLHandlerMatcher.init(url:)(a1);
  return v2;
}

uint64_t URLHandlerMatcher.match(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = (a1 + 32);
  if (v5)
  {
    while (1)
    {
      memcpy(__dst, v6, sizeof(__dst));
      memcpy(v10, v6, sizeof(v10));
      sub_1BF11D1E4(__dst, &v9);
      sub_1BF11C9BC(v10, a2);
      if (!v3)
      {
        return sub_1BF11D240(__dst);
      }

      sub_1BF11D240(__dst);

      v3 = 0;
      v6 += 80;
      if (!--v5)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    sub_1BF11D294();
    swift_allocError();
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0;
    *(v7 + 56) = 9;
    return swift_willThrow();
  }
}

uint64_t sub_1BF11C294(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  if (a1 == 42 && a2 == 0xE100000000000000)
  {
    return 1;
  }

  else
  {
    return sub_1BF17B86C();
  }
}

BOOL sub_1BF11C2C0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1BF11FB1C(0, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v17 - v10;
  if (a2)
  {
    if (a4)
    {
      v12 = a1 == a3 && a2 == a4;
      if (v12 || (sub_1BF17B86C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  sub_1BF178D7C();
  v14 = sub_1BF178D8C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  v15 = isNilOrEmpty(_:trim:)(a1, a2);
  sub_1BF11FB70(v11, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  v13 = 0;
  if (v15)
  {
    sub_1BF178D7C();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
    v13 = isNilOrEmpty(_:trim:)(a3, a4);
    sub_1BF11FB70(v11, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  }

  return v13;
}

uint64_t URLHandlerMatcher.init(url:)(uint64_t a1)
{
  v2 = v1;
  v73 = sub_1BF178E2C();
  v4 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v5);
  v72 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69681B8];
  sub_1BF11FB1C(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v61 - v18;
  v20 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_url;
  v21 = sub_1BF17923C();
  v67 = *(v21 - 8);
  (*(v67 + 16))(v2 + v20, a1, v21);
  sub_1BF178E7C();
  sub_1BF11FC94(v19, v15, &qword_1ED8EE420, v7);
  v22 = sub_1BF178F0C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v22) == 1)
  {
    OUTLINED_FUNCTION_0_68();
    sub_1BF11FB70(v15, v23, v24);
LABEL_30:
    v31 = MEMORY[0x1E69E7CC8];
LABEL_33:
    sub_1BF178E7C();
    (*(v67 + 8))(a1, v21);
    OUTLINED_FUNCTION_0_68();
    sub_1BF11FB70(v19, v58, v59);
    sub_1BF11F824(v11, v2 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents);
    *(v2 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_queryParamValues) = v31;
    return v2;
  }

  v25 = sub_1BF178E5C();
  (*(*(v22 - 8) + 8))(v15, v22);
  if (!v25)
  {
    goto LABEL_30;
  }

  v66 = v21;
  v26 = *(v25 + 16);
  if (!v26)
  {

    v31 = MEMORY[0x1E69E7CC8];
LABEL_32:
    v21 = v66;
    goto LABEL_33;
  }

  v62 = v19;
  v63 = v11;
  v64 = a1;
  v65 = v2;
  v28 = *(v4 + 16);
  v27 = v4 + 16;
  v29 = *(v27 + 64);
  v61 = v25;
  v30 = v25 + ((v29 + 32) & ~v29);
  v69 = *(v27 + 56);
  v70 = v28;
  v71 = v27;
  v68 = (v27 - 8);
  v31 = MEMORY[0x1E69E7CC8];
  v33 = v72;
  v32 = v73;
  while (1)
  {
    v70(v33, v30, v32);
    v34 = sub_1BF178E1C();
    if (v35)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    v38 = sub_1BF178E0C();
    v40 = v39;
    if (v31[2] && (v41 = sub_1BF014CA8(), (v42 & 1) != 0))
    {
      v43 = *(v31[7] + 8 * v41);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BF0201A4();
      v43 = v56;
    }

    v44 = *(v43 + 16);
    if (v44 >= *(v43 + 24) >> 1)
    {
      sub_1BF0201A4();
      v43 = v57;
    }

    *(v43 + 16) = v44 + 1;
    v45 = v43 + 16 * v44;
    *(v45 + 32) = v36;
    *(v45 + 40) = v37;
    swift_isUniquelyReferenced_nonNull_native();
    v74 = v31;
    v46 = sub_1BF014CA8();
    if (__OFADD__(v31[2], (v47 & 1) == 0))
    {
      break;
    }

    v48 = v46;
    v49 = v47;
    sub_1BF08334C(0);
    if (sub_1BF17B43C())
    {
      v50 = sub_1BF014CA8();
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_36;
      }

      v48 = v50;
    }

    v31 = v74;
    if (v49)
    {
      *(v74[7] + 8 * v48) = v43;
    }

    else
    {
      v74[(v48 >> 6) + 8] |= 1 << v48;
      v52 = (v31[6] + 16 * v48);
      *v52 = v38;
      v52[1] = v40;
      *(v31[7] + 8 * v48) = v43;
      v53 = v31[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_35;
      }

      v31[2] = v55;
    }

    v33 = v72;
    v32 = v73;
    (*v68)(v72, v73);

    v30 += v69;
    if (!--v26)
    {

      a1 = v64;
      v2 = v65;
      v19 = v62;
      v11 = v63;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BF11C9BC@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1BF11FB1C(0, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v68 - v8;
  sub_1BF11FB1C(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v73 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v68 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v68 - v23;
  memcpy(__dst, a1, 0x50uLL);
  v26 = __dst[0];
  v25 = __dst[1];
  v27 = __dst[0] == 42 && __dst[1] == 0xE100000000000000;
  v72 = a2;
  if (!v27 && (sub_1BF17B86C() & 1) == 0)
  {
    v69 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents;
    sub_1BF11FC94(v3 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents, v24, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    v28 = sub_1BF178F0C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v28);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v71 = v3;
    v70 = v28;
    if (EnumTagSinglePayload == 1)
    {
      sub_1BF11FB70(v24, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
      v68 = 0;
    }

    else
    {
      v30 = sub_1BF178ECC();
      v31 = v24;
      v33 = v32;
      (*(*(v28 - 8) + 8))(v31, v28);
      if (v33)
      {
        v34 = v26 == v30 && v33 == v25;
        if (v34 || (sub_1BF17B86C() & 1) != 0)
        {

LABEL_19:

          v3 = v71;
          goto LABEL_20;
        }

        v68 = v30;
        v35 = v33;
LABEL_17:
        sub_1BF178D7C();
        v36 = sub_1BF178D8C();
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v36);
        v37 = isNilOrEmpty(_:trim:)(v26, v25);
        sub_1BF11FB70(v9, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
        if (v37)
        {
          sub_1BF178D7C();
          __swift_storeEnumTagSinglePayload(v9, 0, 1, v36);
          v38 = isNilOrEmpty(_:trim:)(v68, v35);

          sub_1BF11FB70(v9, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
          if (v38)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        sub_1BF11FC94(v71 + v69, v13, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
        v57 = v70;
        if (__swift_getEnumTagSinglePayload(v13, 1, v70) == 1)
        {
          sub_1BF11FB70(v13, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
          v58 = 0;
          v59 = 0;
        }

        else
        {
          v58 = sub_1BF178ECC();
          v59 = v60;
          (*(*(v57 - 8) + 8))(v13, v57);
        }

        sub_1BF11D294();
        swift_allocError();
        *v61 = v26;
        *(v61 + 8) = v25;
        *(v61 + 16) = v58;
        *(v61 + 24) = v59;
        *(v61 + 32) = v75[0];
        *(v61 + 48) = *&v75[1];
        *(v61 + 56) = 0;
        return swift_willThrow();
      }

      v68 = v30;
    }

    v35 = 0;
    goto LABEL_17;
  }

LABEL_20:
  v40 = __dst[2];
  v39 = __dst[3];
  if (sub_1BF11C294(__dst[2], __dst[3]))
  {
    goto LABEL_26;
  }

  v41 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents;
  sub_1BF11FC94(v3 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents, v20, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  v42 = sub_1BF178F0C();
  v43 = __swift_getEnumTagSinglePayload(v20, 1, v42);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v44 = v3;
  if (v43 == 1)
  {
    sub_1BF11FB70(v20, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v45 = sub_1BF178E9C();
    v46 = v47;
    (*(*(v42 - 8) + 8))(v20, v42);
  }

  v48 = sub_1BF11C2C0(v40, v39, v45, v46);

  if (!v48)
  {
    v51 = v44 + v41;
    v52 = v73;
    sub_1BF11FC94(v51, v73, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    if (__swift_getEnumTagSinglePayload(v52, 1, v42) == 1)
    {
      sub_1BF11FB70(v52, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
      v53 = 0;
      v54 = 0;
    }

    else
    {
      v53 = sub_1BF178E9C();
      v54 = v55;
      (*(*(v42 - 8) + 8))(v52, v42);
    }

    sub_1BF11D294();
    swift_allocError();
    *v56 = v40;
    *(v56 + 8) = v39;
    *(v56 + 16) = v53;
    *(v56 + 24) = v54;
    *(v56 + 32) = v75[0];
    *(v56 + 48) = *&v75[1];
    *(v56 + 56) = 1;
    return swift_willThrow();
  }

  v3 = v44;
LABEL_26:
  v77 = MEMORY[0x1E69E7CC8];
  memcpy(v75, __dst, sizeof(v75));
  v49 = v74;
  sub_1BF11D2E8(v75, &v77);
  if (v49)
  {
  }

  memcpy(v75, __dst, sizeof(v75));
  sub_1BF11DDA4(v75);
  memcpy(v75, __dst, sizeof(v75));
  sub_1BF11E360(v75, &v77);
  v62 = v3;
  v63 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_url;
  v64 = sub_1BF17923C();
  v65 = v72;
  (*(*(v64 - 8) + 16))(v72, v62 + v63, v64);
  v66 = v77;
  v67 = type metadata accessor for URLHandlerMatch(0);
  memcpy((v65 + *(v67 + 20)), __dst, 0x50uLL);
  *(v65 + *(v67 + 24)) = v66;
  return sub_1BF11D1E4(__dst, v75);
}

unint64_t sub_1BF11D294()
{
  result = qword_1ED8EBAF8;
  if (!qword_1ED8EBAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EBAF8);
  }

  return result;
}

void sub_1BF11D2E8(void *a1, uint64_t a2)
{
  sub_1BF11FB1C(0, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v110 - v8;
  sub_1BF11FB1C(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v110 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v110 - v20;
  v22 = a1[5];
  if (!v22)
  {
    return;
  }

  v118 = a2;
  v23 = a1[4];
  if (v23 == 42 && v22 == 0xE100000000000000)
  {
    return;
  }

  v115 = a1[9];
  if (sub_1BF17B86C())
  {
    return;
  }

  v116 = v2;
  v129 = v3;
  *&v124 = v23;
  *(&v124 + 1) = v22;
  v127 = 14895;
  v128 = 0xE200000000000000;
  sub_1BF013170();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v25 = sub_1BF17AF8C();
  if ((v25 & 1) == 0)
  {
    *&v124 = v23;
    *(&v124 + 1) = v22;
    v127 = 10799;
    v128 = 0xE200000000000000;
    v25 = sub_1BF17AF8C();
    if ((v25 & 1) == 0)
    {

      v88 = OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents;
      sub_1BF11FC94(v116 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents, v17, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
      v89 = sub_1BF178F0C();
      if (__swift_getEnumTagSinglePayload(v17, 1, v89) == 1)
      {
        sub_1BF11FB70(v17, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
        v90 = 0;
        v91 = 0;
      }

      else
      {
        v90 = sub_1BF178EAC();
        v91 = v95;
        (*(*(v89 - 8) + 8))(v17, v89);
        v96 = v23 == v90 && v22 == v91;
        if (v96 || (sub_1BF17B86C() & 1) != 0)
        {
LABEL_64:

          return;
        }
      }

      v123 = v88;
      sub_1BF178D7C();
      v92 = sub_1BF178D8C();
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v92);
      v93 = isNilOrEmpty(_:trim:)(v23, v22);
      sub_1BF11FB70(v9, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
      if (v93)
      {
        sub_1BF178D7C();
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v92);
        v94 = isNilOrEmpty(_:trim:)(v90, v91);

        sub_1BF11FB70(v9, &qword_1ED8EDCF8, MEMORY[0x1E69680B8]);
        if (v94)
        {
          return;
        }
      }

      else
      {
      }

      sub_1BF11FC94(v116 + v123, v13, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v89);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (EnumTagSinglePayload == 1)
      {
        sub_1BF11FB70(v13, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
        v98 = 0;
        v99 = 0;
      }

      else
      {
        v98 = sub_1BF178EAC();
        v99 = v100;
        (*(*(v89 - 8) + 8))(v13, v89);
      }

      sub_1BF11D294();
      swift_allocError();
      *v107 = v23;
      *(v107 + 8) = v22;
      *(v107 + 16) = v98;
      *(v107 + 24) = v99;
      *(v107 + 32) = v124;
      *(v107 + 48) = v125;
      v108 = 2;
      goto LABEL_61;
    }
  }

  *&v124 = 47;
  *(&v124 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v25, v26);
  v109 = &v124;
  v27 = v129;
  v28 = sub_1BF0143EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1BF014764, (&v110 - 4), v23, v22);
  v29 = v27;
  sub_1BF11FC94(v116 + OBJC_IVAR____TtC13TeaFoundation17URLHandlerMatcher_urlComponents, v21, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  v30 = sub_1BF178F0C();
  v31 = __swift_getEnumTagSinglePayload(v21, 1, v30);
  v117 = v28;
  if (v31 == 1)
  {
    sub_1BF11FB70(v21, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    v32 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v33 = sub_1BF178EAC();
    v35 = v34;
    v36 = (*(*(v30 - 8) + 8))(v21, v30);
    *&v124 = 47;
    *(&v124 + 1) = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v36, v37);
    v109 = &v124;
    v38 = v33;
    v28 = v117;
    v32 = sub_1BF0143EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1BF11FD18, (&v110 - 4), v38, v35);
  }

  v39 = *(v28 + 16);
  v40 = *(v32 + 16);
  if (v39 != v40)
  {

    sub_1BF11D294();
    swift_allocError();
    *v107 = v39;
    *(v107 + 8) = v40;
    v86 = v126;
    v87 = v125;
    *(v107 + 16) = v124;
    *(v107 + 32) = v87;
    *(v107 + 48) = v86;
    v108 = 3;
LABEL_61:
    *(v107 + 56) = v108;
    swift_willThrow();
    return;
  }

  v41 = 0;
  v42 = 0;
  v119 = *(v28 + 16);
  for (i = v32; ; v32 = i)
  {
    if (v39 == v42)
    {
LABEL_44:

      return;
    }

    if (v42 >= *(v28 + 16))
    {
      break;
    }

    v43 = *(v32 + 16);
    if (v42 == v43)
    {
      goto LABEL_44;
    }

    if (v42 >= v43)
    {
      goto LABEL_66;
    }

    v129 = v29;
    v45 = *(v28 + v41 + 32);
    v44 = *(v28 + v41 + 40);
    v46 = *(v28 + v41 + 48);
    v47 = *(v28 + v41 + 56);
    v122 = v41;
    v48 = *(v32 + v41 + 32);
    v49 = *(v32 + v41 + 40);
    v50 = *(v32 + v41 + 56);
    v121 = *(v32 + v41 + 48);
    swift_bridgeObjectRetain_n();
    v123 = v50;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v51 = sub_1BF17AEEC();
    if (v46 == v54 && v47 == v53 && v45 >> 16 == v51 >> 16 && v44 >> 16 == v52 >> 16)
    {

      goto LABEL_42;
    }

    LOBYTE(v109) = 0;
    v58 = sub_1BF17B6EC();

    if ((v58 & 1) == 0)
    {
      if (sub_1BF00DC20(58, 0xE100000000000000, v45, v44))
      {
        if (v44 >> 14 < sub_1BF17AEAC() >> 14)
        {
          goto LABEL_67;
        }

        v59 = sub_1BF17AEFC();
        v61 = v60;
        v63 = v62;
        v65 = v64;

        v111 = v63;
        v112 = v61;
        MEMORY[0x1BFB51F50](v59, v61, v63, v65);
        v66 = v115;
        v67 = *(v115 + 16);
        v113 = v59;
        v114 = v65;
        if (v67)
        {
          v68 = sub_1BF014CA8();
          v70 = v69;

          if (v70)
          {
            v71 = *(*(v66 + 56) + 8 * v68);
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
LABEL_39:
            v73 = v48;
            v74 = v48;
            v75 = v121;
            v76 = v123;
            v77 = MEMORY[0x1BFB51F50](v74, v49, v121, v123);
            v78 = v129;
            sub_1BF11F508(v77, v79, v71);
            v129 = v78;
            if (v78)
            {

              goto LABEL_64;
            }

            v80 = MEMORY[0x1BFB51F50](v73, v49, v75, v76);
            v82 = v81;

            v83 = MEMORY[0x1BFB51F50](v113, v112, v111, v114);
            v85 = v84;

            sub_1BF15195C(v80, v82, v83, v85);
            goto LABEL_41;
          }
        }

        else
        {
        }

        v71 = 0;
        goto LABEL_39;
      }

      v72 = v123;
      if ((sub_1BF11F7B0(v45, v44, v46, v47, v48, v49, v121, v123) & 1) == 0)
      {

        v101 = MEMORY[0x1BFB51F50](v45, v44, v46, v47);
        v103 = v102;

        v104 = MEMORY[0x1BFB51F50](v48, v49, v121, v72);
        v106 = v105;

        sub_1BF11D294();
        swift_allocError();
        *v107 = v101;
        *(v107 + 8) = v103;
        *(v107 + 16) = v104;
        *(v107 + 24) = v106;
        *(v107 + 32) = v124;
        *(v107 + 48) = v125;
        v108 = 4;
        goto LABEL_61;
      }
    }

LABEL_41:
    v28 = v117;
LABEL_42:

    v41 = v122 + 32;
    ++v42;
    v29 = v129;
    v39 = v119;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}