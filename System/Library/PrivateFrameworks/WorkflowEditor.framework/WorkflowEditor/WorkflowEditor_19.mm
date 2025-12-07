unint64_t sub_2745C2268()
{
  result = qword_2809532D8;
  if (!qword_2809532D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809532D8);
  }

  return result;
}

uint64_t sub_2745C22D8()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_colorScheme;
  v2 = *MEMORY[0x277CDF3D0];
  v3 = sub_27463918C();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices) = 0;
  return v0;
}

uint64_t sub_2745C236C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SyntaxHighlighter(0);
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

unint64_t sub_2745C2418()
{
  result = qword_2809532F0;
  if (!qword_2809532F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809532F0);
  }

  return result;
}

unint64_t sub_2745C2470()
{
  result = qword_2809532F8;
  if (!qword_2809532F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809532F8);
  }

  return result;
}

id sub_2745C24C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_27463B66C();

  if (a4)
  {
    sub_274412734(0, &unk_28094F190, 0x277D7CA00);
    v6 = sub_27463B7FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = OUTLINED_FUNCTION_92_0();
  v9 = [v7 v8];

  swift_unknownObjectRelease();
  return v9;
}

void *sub_2745C2578(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_274412734(0, &unk_28094F190, 0x277D7CA00);
    v4 = sub_27463B7FC();
  }

  else
  {
    v4 = 0;
  }

  [v2 initWithVariableProvider:a1 aggrandizements:v4];
  OUTLINED_FUNCTION_19_8();
  swift_unknownObjectRelease();

  return v2;
}

double sub_2745C268C@<D0>(uint64_t a1@<X8>)
{
  sub_2745B98B8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_2745C26D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  sub_27445EAD4(v4, v3, &unk_280953128, &qword_27465D178);
  return sub_2745B9938(v4);
}

id sub_2745C2730(uint64_t a1)
{
  if (a1)
  {
    sub_274412734(0, &unk_28094F190, 0x277D7CA00);
    sub_27463B7FC();
    OUTLINED_FUNCTION_15_19();
  }

  else
  {
    v1 = 0;
  }

  v3 = [v2 initWithAggrandizements_];

  return v3;
}

uint64_t sub_2745C27C8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2745C283C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_2745C2884(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_27463B85C();
  }

  return result;
}

uint64_t sub_2745C28B0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_274547E98(v2, v4, v5, v6);
    *a1 = v2;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  sub_2745C292C(v9);
  return sub_27463C42C();
}

void sub_2745C292C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_27463C65C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_27444FC38(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_2745C2B78(v8, v9, a1, v5);
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
    sub_2745C2A0C(0, v3, 1, a1);
  }
}

uint64_t sub_2745C2A0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v18 = a3;
      v6 = *(v19 + 8 * a3);
      v16 = v5;
      v17 = v4;
      do
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 name];
        sub_27463B6AC();

        v11 = [v9 name];
        sub_27463B6AC();

        sub_274412BBC();
        v12 = sub_27463C10C();

        if (v12 != -1)
        {
          break;
        }

        if (!v19)
        {
          __break(1u);
          return result;
        }

        v13 = *v4;
        v6 = *(v4 + 8);
        *v4 = v6;
        *(v4 + 8) = v13;
        v4 -= 8;
      }

      while (!__CFADD__(v5++, 1));
      a3 = v18 + 1;
      v4 = v17 + 8;
      v5 = v16 - 1;
      if (v18 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2745C2B78(void ***result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5;
      v8 = v5 + 1;
      if (v5 + 1 < v4)
      {
        v95 = v6;
        v9 = v5;
        v10 = (*a3 + 8 * v5);
        v93 = 8 * v5;
        v12 = *v10;
        v11 = v10 + 2;
        v106 = *(*a3 + 8 * v8);
        v13 = v12;
        v14 = [v106 name];
        sub_27463B6AC();

        v15 = [v13 name];
        sub_27463B6AC();

        sub_274412BBC();
        v102 = sub_27463C10C();

        v16 = v9 + 2;
        v100 = v4;
        while (1)
        {
          v17 = v16;
          if (++v8 >= v4)
          {
            break;
          }

          v18 = *(v11 - 1);
          v19 = *v11;
          v20 = v18;
          v21 = [v19 name];
          sub_27463B6AC();

          v22 = [v20 name];
          sub_27463B6AC();

          v23 = sub_27463C10C();

          v4 = v100;

          ++v11;
          v16 = v17 + 1;
          if ((v102 == -1) == (v23 != -1))
          {
            goto LABEL_9;
          }
        }

        v8 = v4;
LABEL_9:
        if (v102 == -1)
        {
          v7 = v9;
          if (v8 < v9)
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
            return;
          }

          if (v9 >= v8)
          {
            v6 = v95;
          }

          else
          {
            if (v4 >= v17)
            {
              v24 = v17;
            }

            else
            {
              v24 = v4;
            }

            v25 = 8 * v24 - 8;
            v26 = v8;
            v27 = v9;
            v6 = v95;
            v28 = v93;
            do
            {
              if (v27 != --v26)
              {
                v29 = *a3;
                if (!*a3)
                {
                  goto LABEL_130;
                }

                v30 = *(v29 + v28);
                *(v29 + v28) = *(v29 + v25);
                *(v29 + v25) = v30;
              }

              ++v27;
              v25 -= 8;
              v28 += 8;
            }

            while (v27 < v26);
          }
        }

        else
        {
          v6 = v95;
          v7 = v9;
        }
      }

      v31 = a3[1];
      if (v8 < v31)
      {
        if (__OFSUB__(v8, v7))
        {
          goto LABEL_122;
        }

        if (v8 - v7 < a4)
        {
          v32 = v7 + a4;
          if (__OFADD__(v7, a4))
          {
            goto LABEL_123;
          }

          if (v32 >= v31)
          {
            v32 = a3[1];
          }

          if (v32 < v7)
          {
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (v8 != v32)
          {
            v96 = v6;
            v97 = v7;
            v4 = *a3;
            v33 = *a3 + 8 * v8 - 8;
            v34 = v7 - v8;
            v99 = v32;
            do
            {
              v107 = v8;
              v35 = *(v4 + 8 * v8);
              v101 = v34;
              v103 = v33;
              do
              {
                v36 = *v33;
                v37 = v35;
                v38 = v36;
                v39 = [v37 name];
                sub_27463B6AC();

                v40 = [v38 name];
                sub_27463B6AC();

                sub_274412BBC();
                v41 = sub_27463C10C();

                if (v41 != -1)
                {
                  break;
                }

                if (!v4)
                {
                  goto LABEL_127;
                }

                v42 = *v33;
                v35 = *(v33 + 8);
                *v33 = v35;
                *(v33 + 8) = v42;
                v33 -= 8;
              }

              while (!__CFADD__(v34++, 1));
              ++v8;
              v33 = v103 + 8;
              v34 = v101 - 1;
            }

            while (v107 + 1 != v99);
            v8 = v99;
            v6 = v96;
            v7 = v97;
          }
        }
      }

      if (v8 < v7)
      {
        goto LABEL_121;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2744503AC(0, *(v6 + 2) + 1, 1, v6);
        v6 = v85;
      }

      v45 = *(v6 + 2);
      v44 = *(v6 + 3);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_2744503AC(v44 > 1, v45 + 1, 1, v6);
        v6 = v86;
      }

      *(v6 + 2) = v46;
      v47 = v6 + 32;
      v48 = &v6[16 * v45 + 32];
      *v48 = v7;
      *(v48 + 1) = v8;
      v104 = *result;
      if (!*result)
      {
        goto LABEL_131;
      }

      v108 = v8;
      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[16 * v46 - 16];
          v51 = &v6[16 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = *(v6 + 4);
            v53 = *(v6 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_59:
            if (v55)
            {
              goto LABEL_108;
            }

            v67 = *v51;
            v66 = *(v51 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_111;
            }

            v71 = *(v50 + 1);
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_114;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_116;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          if (v46 < 2)
          {
            goto LABEL_110;
          }

          v74 = *v51;
          v73 = *(v51 + 1);
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_74:
          if (v70)
          {
            goto LABEL_113;
          }

          v76 = *v50;
          v75 = *(v50 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_115;
          }

          if (v77 < v69)
          {
            goto LABEL_88;
          }

LABEL_81:
          if (v49 - 1 >= v46)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_128;
          }

          v81 = v6;
          v82 = &v47[16 * v49 - 16];
          v83 = *v82;
          v6 = &v47[16 * v49];
          v84 = *(v6 + 1);
          sub_2745C3330(*a3 + 8 * *v82, (*a3 + 8 * *v6), (*a3 + 8 * v84), v104);
          if (v109)
          {
            goto LABEL_101;
          }

          if (v84 < v83)
          {
            goto LABEL_103;
          }

          v4 = *(v81 + 2);
          if (v49 > v4)
          {
            goto LABEL_104;
          }

          *v82 = v83;
          *(v82 + 1) = v84;
          if (v49 >= v4)
          {
            goto LABEL_105;
          }

          v46 = v4 - 1;
          sub_274546A38(v6 + 16, v4 - 1 - v49, &v47[16 * v49]);
          v6 = v81;
          *(v81 + 2) = v4 - 1;
          if (v4 <= 2)
          {
            goto LABEL_88;
          }
        }

        v56 = &v47[16 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_106;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_107;
        }

        v63 = *(v51 + 1);
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_109;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_112;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = *(v50 + 1);
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_120;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_59;
      }

LABEL_88:
      v5 = v108;
      v4 = a3[1];
      if (v108 >= v4)
      {
        goto LABEL_91;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_91:
  v4 = *result;
  if (!*result)
  {
    goto LABEL_132;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_125:
    v6 = sub_274546A20(v6, a2, a3, a4);
  }

  v87 = v6 + 16;
  v88 = *(v6 + 2);
  while (v88 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_129;
    }

    v89 = v6;
    v90 = &v6[16 * v88];
    v91 = *v90;
    v6 = &v87[2 * v88];
    v92 = *(v6 + 1);
    sub_2745C3330(*a3 + 8 * *v90, (*a3 + 8 * *v6), (*a3 + 8 * v92), v4);
    if (v109)
    {
      break;
    }

    if (v92 < v91)
    {
      goto LABEL_117;
    }

    if (v88 - 2 >= *v87)
    {
      goto LABEL_118;
    }

    *v90 = v91;
    *(v90 + 1) = v92;
    a2 = *v87 - v88;
    if (*v87 < v88)
    {
      goto LABEL_119;
    }

    v88 = *v87 - 1;
    sub_274546A38(v6 + 16, a2, v6);
    *v87 = v88;
    v6 = v89;
  }

LABEL_101:
}

uint64_t sub_2745C3330(unint64_t a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_274453590(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    v39 = v5;
    for (i = v10; ; v10 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_27;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 name];
      v17 = v6;
      sub_27463B6AC();

      v18 = [v15 name];
      sub_27463B6AC();

      sub_274412BBC();
      v19 = sub_27463C10C();

      if (v19 != -1)
      {
        break;
      }

      v20 = v6++;
      v21 = v12;
      if (v12 != v17)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 = (v21 + 1);
      v5 = v39;
    }

    v20 = v4;
    v21 = v12;
    if (v12 == v4++)
    {
      goto LABEL_10;
    }

LABEL_9:
    *v21 = *v20;
    goto LABEL_10;
  }

  sub_274453590(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v35 = v7;
  v36 = v4;
LABEL_14:
  v23 = v6 - 1;
  --v5;
  v40 = v6;
  for (j = v6 - 1; v10 > v4 && v6 > v7; v23 = j)
  {
    v25 = *v23;
    v26 = *(v10 - 1);
    v27 = v25;
    v28 = [v26 name];
    sub_27463B6AC();

    v29 = [v27 name];
    sub_27463B6AC();

    sub_274412BBC();
    v30 = sub_27463C10C();

    v31 = v5 + 1;
    if (v30 == -1)
    {
      v4 = v36;
      v6 = j;
      v7 = v35;
      if (v31 != v40)
      {
        *v5 = *j;
        v6 = j;
      }

      goto LABEL_14;
    }

    if (v10 != v31)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v6 = v40;
    v7 = v35;
    v4 = v36;
  }

LABEL_27:
  v32 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v32])
  {
    memmove(v6, v4, 8 * v32);
  }

  return 1;
}

uint64_t sub_2745C3664(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2745459E0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = v9 + 16 * v5;
  OUTLINED_FUNCTION_24_5();
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_2744510A0(v9 + 16 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_2745C373C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (sub_274453594() < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(1, v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(sub_274453594(), 1 - v4))
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_274547EA4();
  OUTLINED_FUNCTION_42_4();

  sub_274546D40();
}

uint64_t sub_2745C37E8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  result = sub_274453594();
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3 - a2;
  if (__OFSUB__(0, a2 - v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = sub_274453594();
  v6 = __OFADD__(v5, v4);
  result = v5 + v4;
  if (v6)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_274547EA4();

  return sub_274547244(v3, a2, 0);
}

uint64_t sub_2745C388C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v4 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_274545A70(result, 1);

  return sub_27454732C(v7, a2, 1, a3, a4);
}

uint64_t sub_2745C3938(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  v5 = [a3 negateText_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_27463B6AC();

  return v6;
}

unint64_t sub_2745C39C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_27463C27C();
    if (v4)
    {
      v5 = v4;
      v2 = sub_27453BA70();
      sub_27453B640(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

unint64_t sub_2745C3A58()
{
  result = qword_280953328;
  if (!qword_280953328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280953318, &qword_27465D520);
    sub_2745C1FA0(&qword_280953330, 255, MEMORY[0x277D7D308], MEMORY[0x277D7D300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953328);
  }

  return result;
}

unint64_t sub_2745C3B18()
{
  result = qword_280953338;
  if (!qword_280953338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953300, &qword_27465D508);
    sub_2745C1FA0(&qword_28094A6C0, 255, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953338);
  }

  return result;
}

unint64_t sub_2745C3BE0()
{
  result = qword_280953398;
  if (!qword_280953398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953348, &qword_27465D530);
    sub_2745C3C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953398);
  }

  return result;
}

unint64_t sub_2745C3C64()
{
  result = qword_2809533A0;
  if (!qword_2809533A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809533A8, &qword_27465D580);
    sub_2745C3D1C();
    sub_27440CA78(&qword_2809533E0, &unk_2809533E8, &unk_27465D5A0, MEMORY[0x277D7D348]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809533A0);
  }

  return result;
}

unint64_t sub_2745C3D1C()
{
  result = qword_2809533B0;
  if (!qword_2809533B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809533B8, &qword_27465D588);
    sub_27440CA78(&qword_2809533C0, &qword_2809533C8, &qword_27465D590, MEMORY[0x277D7D350]);
    sub_27440CA78(&qword_2809533D0, &qword_2809533D8, &qword_27465D598, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809533B0);
  }

  return result;
}

uint64_t sub_2745C3E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariableTextEditor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_106Tm()
{
  type metadata accessor for VariableTextEditor(0);
  OUTLINED_FUNCTION_3_14();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  if (*(v4 + 72))
  {
  }

  sub_2743F459C(*(v4 + 144), *(v4 + 152));

  OUTLINED_FUNCTION_20_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463918C();
    OUTLINED_FUNCTION_7();
    (*(v5 + 8))(v4 + v2);
  }

  else
  {
  }

  v6 = v4 + *(v0 + 112);
  if (*(v6 + 9))
  {
    if ((*(v6 + 8) & 1) == 0)
    {
      MEMORY[0x277C5A3A0]();
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2745C4050(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_8_25();
  v2 = OUTLINED_FUNCTION_9_23();

  return a2(v2);
}

uint64_t sub_2745C40D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VariableTextEditor(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2745C4174(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_8_25();
  v2 = OUTLINED_FUNCTION_9_23();

  return a2(v2);
}

uint64_t sub_2745C41E4()
{
  OUTLINED_FUNCTION_8_25();
  v2 = *(v1 + 16);

  return sub_2745BDE94(v0, v2);
}

uint64_t sub_2745C4248()
{
  OUTLINED_FUNCTION_8_25();
  v0 = OUTLINED_FUNCTION_9_23();

  return sub_2745BD1DC(v0, v1);
}

double block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor26VariableAutocompleteResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2745C43A0()
{
  result = qword_280953488;
  if (!qword_280953488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953490, &unk_27465D7C0);
    sub_2745C3A58();
    sub_2745C3B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953488);
  }

  return result;
}

void OUTLINED_FUNCTION_20_17()
{
  sub_2743F45E8(*(v0 + 200), *(v0 + 208));
  sub_274482198(*(v0 + 216), *(v0 + 224));
  sub_27447FCE8(*(v0 + 232), *(v0 + 240));
}

uint64_t OUTLINED_FUNCTION_27_12(uint64_t a1)
{

  return sub_27448E4A4(v1, a1 + v2);
}

uint64_t OUTLINED_FUNCTION_28_16(uint64_t a1)
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_34_9(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

__n128 sub_2745C45AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int128 a26, uint64_t a28)
{
  v28 = swift_allocObject();
  v29 = *(a20 + 80);
  v30 = *(a20 + 88);
  *(v28 + 16) = v29;
  *(v28 + 24) = a20;
  *(v28 + 32) = a21;
  *(v28 + 40) = a22;
  *(v28 + 48) = a23;
  *(v28 + 56) = a24;
  *(v28 + 64) = v30;
  *(v28 + 72) = a25;
  *(v28 + 80) = a26;
  *(v28 + 96) = a28;
  *(&v37 + 1) = a25;
  *&v37 = v30;
  *(a9 + 152) = sub_2745C5C64(sub_2745C904C, v28, v29, a20, a21, a22, a23, a24, v37, a26, a28);
  *(a9 + 160) = v31;
  *(a9 + 168) = v32 & 1;
  *(a9 + 176) = swift_getKeyPath();
  *(a9 + 216) = 0;
  *a9 = a1;
  *(a9 + 8) = sub_2745C4938(a2, a20, v33, v34);
  *(a9 + 16) = v35;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  result = a11;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  *(a9 + 104) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  *(a9 + 121) = a15;
  *(a9 + 145) = a19;
  *(a9 + 128) = a16;
  *(a9 + 136) = a17;
  *(a9 + 144) = a18 & 1;
  return result;
}

uint64_t sub_2745C4778()
{
  OUTLINED_FUNCTION_57();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_10_31((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7(v6, v1, v0);
  sub_274638F6C();
  return (*(v3 + 8))(v1, v0);
}

uint64_t sub_2745C486C(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(a1 + 96);
  v6[0] = *(a1 + 80);
  v6[1] = v2;
  v3 = *(a1 + 128);
  v6[2] = *(a1 + 112);
  v6[3] = v3;
  v6[4] = *(a1 + 144);
  v7 = v1;
  type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor(255, v6);
  sub_27463C0AC();
  result = sub_274638FCC();
  if (v5 <= 0x3F)
  {
    *&v6[0] = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2745C4938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ListParameterOutlineState(0, *(a2 + 80), *(a2 + 88), a4);
  swift_getWitnessTable();

  return sub_27463950C();
}

uint64_t sub_2745C49A4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for ListParameterOutlineState(0, *(a1 + 80), *(a1 + 88), a3);
  result = sub_274638EFC();
  *a4 = result;
  return result;
}

uint64_t sub_2745C49E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  sub_274637EEC();
  OUTLINED_FUNCTION_7();
  (*(v21 + 32))(a9, a1);
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = a6;
  v25[4] = a7;
  v25[5] = a8;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v22 = *(type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor(0, v25) + 108);
  sub_27463AF4C();
  OUTLINED_FUNCTION_7();
  return (*(v23 + 32))(a9 + v22, a2);
}

uint64_t sub_2745C4AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor(255, v20);
  OUTLINED_FUNCTION_35_0();
  v12 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_10_31(v16);
  v18(v17, a1, v12);
  sub_2745C4778();
  return (*(v14 + 8))(a1, v12);
}

uint64_t sub_2745C4BFC()
{
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_63_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();
}

uint64_t sub_2745C4D9C(uint64_t a1)
{
  v28 = a1;
  OUTLINED_FUNCTION_63_0();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_63_0();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_63_0();
  v6 = *(v5 + 96);
  OUTLINED_FUNCTION_63_0();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_63_0();
  v10 = *(v9 + 112);
  OUTLINED_FUNCTION_63_0();
  v12 = *(v11 + 120);
  v14 = v13[16];
  v15 = v13[17];
  v31 = v13[18];
  v30 = v13[19];
  v29 = v13[20];
  v54[0] = v2;
  v54[1] = v4;
  v54[2] = v6;
  v54[3] = v8;
  v54[4] = v10;
  v54[5] = v12;
  v54[6] = v14;
  v54[7] = v15;
  v54[8] = v31;
  v54[9] = v30;
  v54[10] = v29;
  type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor(255, v54);
  OUTLINED_FUNCTION_35_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v26 = v17;
  v27 = v16;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v18);
  v25 = &KeyPath - v19;
  v43 = v2;
  v44 = v4;
  v45 = v6;
  v46 = v8;
  v47 = v10;
  v48 = v12;
  v49 = v14;
  v50 = v15;
  v51 = v31;
  v52 = v30;
  v53 = v29;
  KeyPath = swift_getKeyPath();
  v32 = v2;
  v33 = v4;
  v34 = v6;
  v35 = v8;
  v36 = v10;
  v37 = v12;
  v38 = v14;
  v39 = v15;
  v40 = v31;
  v41 = v30;
  v42 = v29;
  swift_getKeyPath();
  v20 = v26;
  v22 = v27;
  v21 = v28;
  (*(v26 + 16))(v25, v28, v27);

  sub_274638FBC();
  return (*(v20 + 8))(v21, v22);
}

uint64_t sub_2745C5010()
{
  v1 = *(*v0 + 168);
  OUTLINED_FUNCTION_63_0();
  v3 = *(v2 + 160);
  v5 = v4[6];
  v9[0] = v4[5];
  v9[1] = v5;
  v6 = v4[8];
  v9[2] = v4[7];
  v9[3] = v6;
  v9[4] = v4[9];
  v10 = v3;
  type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor(255, v9);
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  sub_274638FCC();
  OUTLINED_FUNCTION_7();
  (*(v7 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_2745C50EC()
{
  sub_2745C5010();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2745C515C()
{
  v0 = swift_allocObject();
  sub_2745C59F8();
  return v0;
}

uint64_t sub_2745C51AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor27ListParameterAddItemOptionsVyxq_GSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2745C5214(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 217))
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

uint64_t sub_2745C5254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 217) = 1;
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

    *(result + 217) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2745C52EC(uint64_t a1)
{
  result = sub_274637EEC();
  if (v2 <= 0x3F)
  {
    result = sub_27463AF4C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2745C5374(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_274637EEC();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= v7)
  {
    v12 = *(*(v6 - 8) + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v15 = v13 | 7;
  v16 = (v13 | 7) + *(*(v6 - 8) + 64);
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v17 = ((v13 + 16) & ~v13) + v14 + (v16 & ~v15);
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_10;
  }

  v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
  if (HIWORD(v21))
  {
    v19 = *(a1 + v17);
    if (v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_28;
      }

LABEL_18:
      v22 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v22 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v23 = v17;
        }

        else
        {
          v23 = 4;
        }

        switch(v23)
        {
          case 2:
            v24 = *a1;
            break;
          case 3:
            v24 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v24 = *a1;
            break;
          default:
            v24 = *a1;
            break;
        }
      }

      else
      {
        v24 = 0;
      }

      return v12 + (v24 | v22) + 1;
    }

    v19 = *(a1 + v17);
    if (*(a1 + v17))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v7 >= v11)
  {
    v27 = a1;
    v10 = *(*(v6 - 8) + 84);
    v8 = v6;
  }

  else
  {
    v25 = ((((a1 + v16) & ~v15) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) == 0)
    {
      v26 = *v25;
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }

    v27 = ((v25 + v13 + 8) & ~v13);
  }

  return __swift_getEnumTagSinglePayload(v27, v10, v8);
}

void sub_2745C55D8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_274637EEC();
  v9 = *(*(v8 - 8) + 84);
  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= v9)
  {
    v14 = *(*(v8 - 8) + 84);
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = (v15 | 7) + *(*(v8 - 8) + 64);
  v17 = v16 & ~(v15 | 7);
  v18 = ((v15 + 16) & ~v15) + *(v11 + 64);
  v19 = v17 + v18;
  v20 = 8 * (v17 + v18);
  if (a3 <= v14)
  {
    v21 = 0;
  }

  else if (v19 <= 3)
  {
    v24 = ((a3 - v14 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v14 >= a2)
  {
    switch(v21)
    {
      case 1:
        a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_64:
        __break(1u);
        return;
      case 4:
        *&a1[v19] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v9 >= v13)
        {
          v31 = a1;
          v32 = a2;
          v12 = v9;
          v10 = v8;
        }

        else
        {
          v27 = (&a1[v16] & ~(v15 | 7));
          if (v13 < a2)
          {
            if (v18 <= 3)
            {
              v28 = ~(-1 << (8 * v18));
            }

            else
            {
              v28 = -1;
            }

            if (v18)
            {
              v29 = v28 & (~v13 + a2);
              if (v18 <= 3)
              {
                v30 = v18;
              }

              else
              {
                v30 = 4;
              }

              bzero(v27, v18);
              switch(v30)
              {
                case 2:
                  *v27 = v29;
                  break;
                case 3:
                  *v27 = v29;
                  v27[2] = BYTE2(v29);
                  break;
                case 4:
                  *v27 = v29;
                  break;
                default:
                  *v27 = v29;
                  break;
              }
            }

            return;
          }

          v33 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v12 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v34 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v34 = (a2 - 1);
            }

            *v33 = v34;
            return;
          }

          v31 = ((v33 + v15 + 8) & ~v15);
          v32 = a2;
        }

        __swift_storeEnumTagSinglePayload(v31, v32, v12, v10);
        break;
    }
  }

  else
  {
    v22 = ~v14 + a2;
    if (v19 < 4)
    {
      v23 = (v22 >> v20) + 1;
      if (v19)
      {
        v26 = v22 & ~(-1 << v20);
        bzero(a1, v17 + v18);
        if (v19 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v19 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v17 + v18);
      *a1 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        a1[v19] = v23;
        break;
      case 2:
        *&a1[v19] = v23;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *&a1[v19] = v23;
        break;
      default:
        return;
    }
  }
}

char *sub_2745C59F8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_34();
  v43 = *(v2 + 80);
  OUTLINED_FUNCTION_7_34();
  v42 = *(v3 + 88);
  OUTLINED_FUNCTION_7_34();
  v41 = *(v4 + 96);
  OUTLINED_FUNCTION_7_34();
  v40 = *(v5 + 104);
  OUTLINED_FUNCTION_7_34();
  v39 = *(v6 + 112);
  OUTLINED_FUNCTION_7_34();
  v38 = *(v7 + 120);
  OUTLINED_FUNCTION_7_34();
  v37 = *(v8 + 128);
  OUTLINED_FUNCTION_7_34();
  v36 = *(v9 + 136);
  OUTLINED_FUNCTION_7_34();
  v11 = *(v10 + 144);
  v12 = *(v1 + 152);
  v13 = *(v1 + 160);
  v44[0] = v14;
  v44[1] = v15;
  v44[2] = v16;
  v44[3] = v17;
  v44[4] = v18;
  v44[5] = v19;
  v44[6] = v20;
  v44[7] = v21;
  v44[8] = v11;
  v44[9] = v12;
  v44[10] = v13;
  v22 = type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor(255, v44);
  sub_27463C0AC();
  v23 = sub_274638FCC();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v36 - v27;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v36 - v30;
  OUTLINED_FUNCTION_7_34();
  v33 = *(v32 + 168);
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v22);
  *(&v35 + 1) = v11;
  *&v35 = v36;
  sub_2745C4AF8(v31, v43, v42, v41, v40, v39, v38, v37, v35, v12, v13);
  (*(v25 + 32))(&v0[v33], v28, v23);
  return v0;
}

uint64_t sub_2745C5C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  OUTLINED_FUNCTION_57();
  v18[0] = v11;
  v18[1] = v12;
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = v15;
  v18[5] = v16;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  type metadata accessor for ListParameterLayoutView.Model(0, v18);
  OUTLINED_FUNCTION_4_32();
  swift_getWitnessTable();
  return sub_2746391FC();
}

uint64_t sub_2745C5CE8@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 160);
  v5 = *(a1 + 96);
  v8[0] = *(a1 + 80);
  v8[1] = v5;
  v6 = *(a1 + 128);
  v8[2] = *(a1 + 112);
  v8[3] = v6;
  v8[4] = *(a1 + 144);
  v9 = v4;
  type metadata accessor for ListParameterLayoutView.Model(0, v8);
  result = sub_274638EFC();
  *a3 = result;
  return result;
}

uint64_t sub_2745C5D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a7;
  v11[7] = a8;
  v12 = a9;
  v13 = a10;
  type metadata accessor for ListParameterLayoutView.Model(0, v11);
  return sub_2745C515C();
}

uint64_t sub_2745C5DAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v81 = a2;
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v84 = a1[7];
  v85 = v6;
  v8 = a1[8];
  v7 = a1[9];
  v9 = a1[10];
  v10 = a1[11];
  v92 = a1[12];
  v93 = v7;
  v117[0] = v2;
  v117[1] = v3;
  v88 = v5;
  v89 = v2;
  v117[2] = v5;
  v117[3] = v4;
  v90 = v10;
  v91 = v4;
  v117[4] = v6;
  v117[5] = v84;
  v117[6] = v8;
  v117[7] = v7;
  v83 = v8;
  v117[8] = v9;
  v11 = v9;
  v66 = v9;
  v117[9] = v10;
  v12 = v10;
  v117[10] = v92;
  v13 = type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor(255, v117);
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  sub_27463AF4C();
  OUTLINED_FUNCTION_1();
  v79 = v15;
  v80 = v14;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v16);
  v77 = &v64 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A0, &qword_27465DB28);
  v18 = sub_274639DEC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A8, &qword_27465DB30);
  v117[29] = sub_2745C8470();
  v117[30] = v11;
  OUTLINED_FUNCTION_3_37();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_2745C85B4();
  v117[0] = v2;
  v117[1] = v3;
  v117[2] = v18;
  v117[3] = v5;
  v117[4] = v85;
  v117[5] = v19;
  v117[6] = v8;
  v117[7] = WitnessTable;
  v117[8] = v93;
  v117[9] = v12;
  v117[10] = v21;
  v65 = type metadata accessor for ListParameterListContentView(255, v117);
  v22 = sub_27463AC1C();
  v73 = v22;
  v78 = *(v22 - 8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v23);
  v86 = &v64 - v24;
  v64 = OUTLINED_FUNCTION_8_26();
  v117[28] = v64;
  OUTLINED_FUNCTION_39_0();
  v25 = swift_getWitnessTable();
  v70 = v25;
  OUTLINED_FUNCTION_5_35();
  v72 = v13;
  v69 = swift_getWitnessTable();
  v117[0] = v22;
  v117[1] = v13;
  v26 = v84;
  v117[2] = v84;
  v117[3] = v25;
  v27 = v92;
  v117[4] = v69;
  v117[5] = v92;
  v74 = MEMORY[0x277CDEE40];
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v75 = v28;
  v76 = v29;
  MEMORY[0x28223BE20](v28);
  v67 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v71 = &v64 - v32;
  v33 = v88;
  v34 = v89;
  v105 = v89;
  v106 = v3;
  v82 = v3;
  v35 = v91;
  v107 = v88;
  v108 = v91;
  v36 = v85;
  v109 = v85;
  v110 = v26;
  v37 = v83;
  v38 = v93;
  v111 = v83;
  v112 = v93;
  v39 = v66;
  v113 = v66;
  v114 = v90;
  v115 = v27;
  v40 = v87;
  v116 = v87;
  sub_27463AC0C();
  v41 = *(v40 + 152);
  v64 = *(v40 + 160);
  v65 = v41;
  v117[0] = v34;
  v117[1] = v3;
  v117[2] = v33;
  v117[3] = v35;
  v42 = v36;
  v43 = v84;
  v117[4] = v36;
  v117[5] = v84;
  v117[6] = v37;
  v117[7] = v38;
  v44 = v38;
  v117[8] = v39;
  v45 = v90;
  v117[9] = v90;
  v46 = v92;
  v117[10] = v92;
  type metadata accessor for ListParameterLayoutView.Model(0, v117);
  OUTLINED_FUNCTION_4_32();
  swift_getWitnessTable();
  sub_27463921C();
  v47 = v83;
  v94 = v89;
  v95 = v82;
  v96 = v88;
  v97 = v91;
  v98 = v42;
  v99 = v43;
  v100 = v83;
  v101 = v44;
  v102 = v39;
  v103 = v45;
  v104 = v46;
  swift_getKeyPath();
  v48 = v77;
  sub_27463952C();

  (*(*(v68 - 1) + 16))(v117, v87);
  v49 = swift_allocObject();
  v50 = v82;
  v49[2] = v89;
  v49[3] = v50;
  v51 = v91;
  v49[4] = v88;
  v49[5] = v51;
  v49[6] = v42;
  v49[7] = v43;
  v52 = v93;
  v49[8] = v47;
  v49[9] = v52;
  v53 = v90;
  v49[10] = v39;
  v49[11] = v53;
  v49[12] = v46;
  memcpy(v49 + 13, v117, 0xD9uLL);
  v54 = v69;
  v55 = v70;
  v56 = v67;
  v58 = v72;
  v57 = v73;
  v59 = v86;
  sub_27463A92C();

  (*(v79 + 8))(v48, v80);
  (*(v78 + 8))(v59, v57);
  v117[0] = v57;
  v117[1] = v58;
  v117[2] = v43;
  v117[3] = v55;
  v117[4] = v54;
  v117[5] = v92;
  swift_getOpaqueTypeConformance2();
  v60 = v71;
  v61 = v75;
  sub_2744E9688();
  v62 = *(v76 + 8);
  v62(v56, v61);
  sub_2744E9688();
  return (v62)(v60, v61);
}

uint64_t sub_2745C63BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v99 = a8;
  v77 = a7;
  v73 = a6;
  v74 = a5;
  v97 = a2;
  v98 = a3;
  v91 = a9;
  v93 = a12;
  v94 = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0, &unk_27464D850);
  MEMORY[0x28223BE20](v18 - 8);
  v90 = (&v70 - v19);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A0, &qword_27465DB28);
  v20 = sub_274639DEC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A8, &qword_27465DB30);
  v111 = sub_2745C8470();
  v112 = a11;
  WitnessTable = swift_getWitnessTable();
  v23 = sub_2745C85B4();
  v100 = a2;
  v101 = a3;
  v89 = v20;
  v102 = v20;
  v103 = a4;
  v24 = a4;
  v25 = v73;
  v104 = v73;
  v105 = v21;
  v87 = v21;
  v106 = a8;
  v107 = WitnessTable;
  v83 = WitnessTable;
  v26 = v93;
  v108 = a10;
  v109 = v93;
  v82 = v23;
  v110 = v23;
  v84 = type metadata accessor for ListParameterListContentView(0, &v100);
  v88 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v85 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v86 = &v70 - v29;
  v92 = *a1;
  v30 = *(a1 + 32);
  v81 = *(a1 + 24);
  v96 = v30;
  v31 = *(a1 + 64);
  v80 = *(a1 + 56);
  v95 = v31;
  v70 = a1;
  v32 = v94;
  v68 = v26;
  v72 = a11;
  v71 = a10;
  v34 = v97;
  v33 = v98;
  v35 = v24;
  v36 = v24;
  v37 = v74;
  v38 = v77;
  v39 = v99;
  v79 = sub_2745C69A8(a1, v97, v98, v36, v74, v25, v77, v99, a10, a11, v68, v94);
  v78 = v40;
  v69 = v32;
  v41 = v93;
  v42 = v70;
  v76 = sub_2745C7164(v70, v34, v33, v35, v37, v25, v38, v39, a10, a11, v93, v69);
  v75 = v43;
  v92 = v92;

  v100 = v34;
  v101 = v33;
  v44 = v35;
  v102 = v35;
  v103 = v37;
  v45 = v25;
  v104 = v25;
  v105 = v38;
  v106 = v39;
  v46 = v71;
  v107 = v71;
  v108 = v72;
  v109 = v41;
  v110 = v94;
  v47 = type metadata accessor for ListParameterLayoutView(0, &v100);
  LODWORD(v77) = sub_2745C7A28(v47);
  LODWORD(v94) = *(v42 + 120);
  sub_2744C6ABC();
  v48 = v103;
  LODWORD(v35) = v103 == 0;
  v49 = sub_27440CB1C(&v100, &unk_2809507C0, &qword_274649C60);
  v50 = *(v42 + 121);
  v51 = v35 & v50;
  if (v48 && (v50 & 1) != 0)
  {
    v52 = (*((*MEMORY[0x277D85000] & *v92) + 0x98))(v49);
    v53 = *(v42 + 128);
    if (*(v42 + 144))
    {
      v53 = 0;
    }

    v51 = v53 < v52;
  }

  LODWORD(v74) = v51;
  v54 = v82;
  v55 = v90;
  v56 = v98;
  v57 = v89;
  v58 = v44;
  v59 = v45;
  v60 = v87;
  v61 = v83;
  sub_27441E720(v90);
  *(&v67 + 1) = v41;
  *&v67 = v46;
  v62 = v85;
  sub_27441E780(v81, v96, v80, v95, v79, v78, v76, v85, v75, v77 & 1, v94, v74, 1, v55, v56, v57, v58, v59, v60, v61, v67, v54);
  v63 = v84;
  swift_getWitnessTable();
  v64 = v86;
  sub_2744E9688();
  v65 = *(v88 + 8);
  v65(v62, v63);
  sub_2744E9688();
  return (v65)(v64, v63);
}

uint64_t (*sub_2745C69A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12))@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  __src[5] = a7;
  __src[6] = a8;
  __src[7] = a9;
  __src[8] = a10;
  __src[9] = a11;
  __src[10] = a12;
  v18 = type metadata accessor for ListParameterLayoutView(0, __src);
  (*(*(v18 - 8) + 16))(__src, a1, v18);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a7;
  v19[7] = a9;
  v19[8] = a10;
  v19[9] = a11;
  v19[10] = a12;
  memcpy(v19 + 11, __src, 0xD9uLL);
  return sub_2745C8DC0;
}

uint64_t sub_2745C6AB8@<X0>(uint64_t a1@<X0>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v15 = *(a5 + 88);
  v18[0] = *(a5 + 80);
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  v18[6] = v15;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v16 = type metadata accessor for ListParameterLayoutView(0, v18);
  return sub_2745C6B4C(a1, v16, x8_0);
}

uint64_t sub_2745C6B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v57 = a1;
  v6 = sub_274639EFC();
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v56 = sub_27463AF4C();
  v50 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v49 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536E0, &qword_27465DB48);
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v51 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536D8, &qword_27465DB40);
  MEMORY[0x28223BE20](v12);
  v13 = *(v8 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 145) == 1)
  {
    v20 = v3;
    v45 = v16;
    v46 = v6;
    v47 = v15;
    v48 = a3;
    v21 = v56;
    MEMORY[0x277C575F0](v56, v17);
    v22 = *(a2 + 64);
    v23 = (*(v22 + 32))(v8, v22);
    (*(v13 + 8))(v19, v8);
    if (v23)
    {
      (*(*(a2 - 8) + 16))(v62, v20, a2);
      v24 = v49;
      v25 = v50;
      (*(v50 + 16))(v49, v57, v21);
      v26 = (*(v25 + 80) + 321) & ~*(v25 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v8;
      *(v27 + 24) = *(a2 + 24);
      *(v27 + 40) = *(a2 + 40);
      *(v27 + 56) = *(a2 + 56);
      *(v27 + 64) = v22;
      *(v27 + 72) = *(a2 + 72);
      *(v27 + 88) = *(a2 + 88);
      memcpy((v27 + 104), v62, 0xD9uLL);
      (*(v25 + 32))(v27 + v26, v24, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536F8, &qword_27465DB90);
      v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953700, &qword_27465DB98);
      v29 = sub_274639B4C();
      v30 = sub_27440CA78(&qword_280953708, &qword_280953700, &qword_27465DB98, MEMORY[0x277CDEFF0]);
      v31 = sub_2745C8EBC(qword_280953710, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
      v58 = v28;
      v59 = v29;
      v60 = v30;
      v61 = v31;
      swift_getOpaqueTypeConformance2();
      v32 = v51;
      sub_27463AD5C();
      v33 = v54;
      sub_274639EEC();
      sub_27440CA78(&qword_2809536E8, &qword_2809536E0, &qword_27465DB48, MEMORY[0x277CDF028]);
      sub_2745C8EBC(&qword_28094A6B8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
      v35 = v45;
      v34 = v46;
      v36 = v53;
      sub_27463A69C();
      (*(v55 + 8))(v33, v34);
      (*(v52 + 8))(v32, v36);
      LOBYTE(v27) = sub_27463A37C();
      sub_2746390AC();
      v37 = v47;
      a3 = v48;
      v38 = v35 + *(v47 + 36);
      *v38 = v27;
      *(v38 + 8) = v39;
      *(v38 + 16) = v40;
      *(v38 + 24) = v41;
      *(v38 + 32) = v42;
      *(v38 + 40) = 0;
      sub_274404C28();
      v15 = v37;
      v43 = 0;
    }

    else
    {
      v43 = 1;
      v15 = v47;
      a3 = v48;
    }
  }

  else
  {
    v43 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v43, 1, v15);
}

uint64_t (*sub_2745C7164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12))()
{
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  __src[5] = a7;
  __src[6] = a8;
  __src[7] = a9;
  __src[8] = a10;
  __src[9] = a11;
  __src[10] = a12;
  v18 = type metadata accessor for ListParameterLayoutView(0, __src);
  (*(*(v18 - 8) + 16))(__src, a1, v18);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a7;
  v19[7] = a9;
  v19[8] = a10;
  v19[9] = a11;
  v19[10] = a12;
  memcpy(v19 + 11, __src, 0xD9uLL);
  return sub_2745C8C54;
}

uint64_t sub_2745C7274@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, __int128 a9, uint64_t a10)
{
  v13 = *(a3 + 88);
  v16[0] = *(a3 + 80);
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = v13;
  v16[7] = a8;
  v17 = a9;
  v18 = a10;
  v14 = type metadata accessor for ListParameterLayoutView(0, v16);
  return sub_2745C72EC(a1, v14, x8_0);
}

uint64_t sub_2745C72EC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a1;
  v76 = a3;
  v77 = a2;
  v3 = a2[5];
  v71 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v61 - v7;
  v66 = sub_2746396BC();
  v70 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536B8, &qword_27465DB38);
  v68 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536F0, &qword_27465DB88);
  v67 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536A0, &qword_27465DB28);
  MEMORY[0x28223BE20](v16);
  v18 = &v61 - v17;
  v19 = sub_274639DEC();
  v20 = *(v19 - 8);
  v74 = v19;
  v75 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v61 - v22;
  if (v3 == MEMORY[0x277CE1428])
  {
    v61 = v15;
    v62 = v12;
    v64 = v13;
    v65 = v18;
    v63 = v10;
    v71 = v16;
    v26 = v73;
    v27 = *(v73 + 96);
    if (v27)
    {
      v28 = MEMORY[0x277CE1428];
      v29 = *(v73 + 88);
      v30 = *(v73 + 104);
      v31 = *(v73 + 112);
      v32 = v72;
      v33 = *((*MEMORY[0x277D85000] & *v72) + 0x98);

      v35 = v33(v34);
      v36 = *(v26 + 136);
      if (*(v26 + 144))
      {
        v36 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v35 < v36)
      {
        v37 = swift_allocObject();
        v38 = v77;
        v39 = v77[4];
        *(v37 + 16) = v77[3];
        *(v37 + 24) = v39;
        *(v37 + 32) = v28;
        v40 = v38[12];
        *(v37 + 72) = v38[11];
        *(v37 + 80) = v40;
        *(v37 + 88) = v29;
        *(v37 + 96) = v27;
        *(v37 + 104) = v30;
        *(v37 + 112) = v31;
        *(v37 + 120) = v32;
        v41 = *(v38 + 3);
        *(v37 + 56) = *(v38 + 9);
        *(v37 + 40) = v41;
        v42 = MEMORY[0x28223BE20](v37);
        *(&v61 - 16) = *(v43 + 16);
        *(&v61 - 15) = v44;
        *(&v61 - 14) = v45;
        *(&v61 - 13) = v28;
        *(&v61 - 6) = v42;
        *(&v61 - 10) = *(v43 + 64);
        *(&v61 - 9) = v46;
        *(&v61 - 7) = v47;
        *(&v61 - 6) = v48;
        *(&v61 - 5) = v49;
        *(&v61 - 4) = v27;
        *(&v61 - 3) = v30;
        *(&v61 - 2) = v31;
        sub_27444921C();

        v50 = v32;
        v51 = v62;
        sub_27463AD5C();
        v52 = v69;
        sub_2746396AC();
        sub_27440CA78(&qword_2809536C0, &qword_2809536B8, &qword_27465DB38, MEMORY[0x277CDF028]);
        sub_2745C8EBC(&qword_280949470, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
        v53 = v61;
        v54 = v63;
        v55 = v66;
        sub_27463A69C();

        (*(v70 + 8))(v52, v55);
        (*(v68 + 8))(v51, v54);
        v56 = v64;
        v57 = v65;
        (*(v67 + 32))(v65, v53, v64);
        v58 = 0;
LABEL_10:
        __swift_storeEnumTagSinglePayload(v57, v58, 1, v56);
        sub_2745C8470();
        v24 = v77[10];
        sub_27456E7CC();
        sub_274404A20(v57);
        goto LABEL_11;
      }
    }

    v58 = 1;
    v56 = v64;
    v57 = v65;
    goto LABEL_10;
  }

  (*(v73 + 40))(v72, v21);
  v24 = v77[10];
  sub_2744E9688();
  v25 = *(v71 + 8);
  v25(v5, v3);
  sub_2744E9688();
  sub_2745C8470();
  sub_27456E878();
  v25(v5, v3);
  v25(v8, v3);
LABEL_11:
  v78 = sub_2745C8470();
  v79 = v24;
  v59 = v74;
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(v75 + 8))(v23, v59);
}

BOOL sub_2745C7A28(uint64_t a1)
{
  if (!*(v1 + 96))
  {
    return *(a1 + 40) != MEMORY[0x277CE1428];
  }

  v3 = (*((*MEMORY[0x277D85000] & **v1) + 0x98))();
  v4 = *(v1 + 136);
  if (*(v1 + 144))
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3 < v4 || *(a1 + 40) != MEMORY[0x277CE1428];
}

uint64_t sub_2745C7ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *(a3 + a4 - 72);
  v14[0] = *(a3 + a4 - 88);
  v14[1] = v6;
  v7 = *(a3 + a4 - 40);
  v14[2] = *(a3 + a4 - 56);
  v14[3] = v7;
  v14[4] = *(a3 + a4 - 24);
  v15 = v5;
  type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor(255, v14);
  v8 = sub_27463C0AC();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v14 - v10;
  (*(v12 + 16))(v14 - v10, a1, v9);
  return sub_2745C4D9C(v11);
}

uint64_t sub_2745C7BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v36[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v36[-1] - v20;
  v23 = *(v22 + 72);
  v36[0] = v24;
  v36[1] = v25;
  v36[2] = v26;
  v36[3] = v27;
  v36[4] = v28;
  v36[5] = v29;
  v37 = v19;
  v38 = v31;
  v39 = v30;
  v40 = a13;
  v32 = type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor(0, v36);
  v23(a1 + *(v32 + 108));
  sub_2744E9688();
  v33 = *(v15 + 8);
  v33(v17, a8);
  sub_2744E9688();
  return (v33)(v21, a8);
}

uint64_t sub_2745C7D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v40 = a8;
  v56 = a2;
  v51 = a1;
  v48 = a13;
  v44 = a12;
  v41 = a11;
  v43 = a10;
  v19 = sub_27463AF4C();
  v54 = *(v19 - 8);
  v55 = v19;
  MEMORY[0x28223BE20](v19);
  v53 = v39 - v20;
  v21 = sub_274637EEC();
  MEMORY[0x28223BE20](v21 - 8);
  v50 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a3;
  v57 = a3;
  v58 = a4;
  v45 = a4;
  v59 = a5;
  v60 = a6;
  v46 = a6;
  v61 = a7;
  v62 = a8;
  v49 = a7;
  v42 = a9;
  v23 = v43;
  v63 = a9;
  v64 = v43;
  v24 = v44;
  v65 = a11;
  v66 = v44;
  v25 = v48;
  v67 = v48;
  v52 = type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor(255, &v57);
  v26 = sub_27463C0AC();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v39 - v27;
  v29 = *(v51 + 160);
  v39[2] = *(v51 + 152);
  v39[1] = v29;
  LODWORD(v51) = *(v51 + 168);
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v60 = a6;
  v30 = v40;
  v61 = a7;
  v62 = v40;
  v63 = a9;
  v64 = v23;
  v31 = v41;
  v65 = v41;
  v66 = v24;
  v32 = v24;
  v67 = v25;
  v33 = v25;
  type metadata accessor for ListParameterLayoutView.Model(0, &v57);
  swift_getWitnessTable();
  sub_27463920C();
  v34 = v50;
  sub_274637EDC();
  v35 = v53;
  (*(v54 + 16))(v53, v56, v55);
  *(&v38 + 1) = v32;
  *(&v37 + 1) = v23;
  *&v38 = v31;
  *&v37 = v42;
  sub_2745C49E8(v34, v35, v47, v45, a5, v46, v49, v30, v28, v37, v38, v33);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v52);
  sub_2745C4D9C(v28);
}

uint64_t sub_2745C807C()
{
  v0 = sub_274639B4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953700, &qword_27465DB98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FA0, &unk_2746487F0);
  sub_2744129AC();
  sub_27463ACAC();
  sub_274639B3C();
  sub_27440CA78(&qword_280953708, &qword_280953700, &qword_27465DB98, MEMORY[0x277CDEFF0]);
  sub_2745C8EBC(qword_280953710, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  sub_27463A67C();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2745C82E4@<X0>(uint64_t a1@<X8>)
{
  sub_27463B70C("Edit Item", 9);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v2 = qword_28094BB00;
  v3 = sub_27463B66C();
  v4 = sub_27463B66C();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_27463B6AC();
  sub_274412BBC();
  result = sub_27463A53C();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_2745C8404@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_27463AC2C();
  v3 = sub_27463A41C();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

unint64_t sub_2745C8470()
{
  result = qword_2809536B0;
  if (!qword_2809536B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A0, &qword_27465DB28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536B8, &qword_27465DB38);
    sub_2746396BC();
    sub_27440CA78(&qword_2809536C0, &qword_2809536B8, &qword_27465DB38, MEMORY[0x277CDF028]);
    sub_2745C8EBC(&qword_280949470, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809536B0);
  }

  return result;
}

unint64_t sub_2745C85B4()
{
  result = qword_2809536C8;
  if (!qword_2809536C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A8, &qword_27465DB30);
    sub_2745C8638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809536C8);
  }

  return result;
}

unint64_t sub_2745C8638()
{
  result = qword_2809536D0;
  if (!qword_2809536D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536D8, &qword_27465DB40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536E0, &qword_27465DB48);
    sub_274639EFC();
    sub_27440CA78(&qword_2809536E8, &qword_2809536E0, &qword_27465DB48, MEMORY[0x277CDF028]);
    sub_2745C8EBC(&qword_28094A6B8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809536D0);
  }

  return result;
}

uint64_t sub_2745C8808()
{
  OUTLINED_FUNCTION_57();
  v3 = v2;
  *v2 = sub_274639B2C();
  v3[1] = 0;
  *(v3 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953798, &qword_27465DCE8);
  sub_2745C8884(v1, v0, v3 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809537A0, &qword_27465DCF0);
  *(v3 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2745C8884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809537A8, &qword_27465DCF8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v46 - v9);
  v11 = sub_27463AC2C();
  v12 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA38, &unk_274649820) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA48, &unk_27464FD80) + 28);
  v14 = *MEMORY[0x277CE1048];
  v15 = sub_27463AC8C();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v10 = v11;
  v16 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA20, &unk_27465DD30) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094AA58, &qword_274649830) + 28);
  sub_274639C7C();
  v18 = sub_274639C9C();
  __swift_storeEnumTagSinglePayload(v16 + v17, 0, 1, v18);
  *v16 = swift_getKeyPath();
  LOBYTE(v11) = sub_27463A37C();
  sub_2746390AC();
  v19 = v10 + *(v6 + 44);
  *v19 = v11;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  v48 = a1;
  v49 = a2;
  sub_274412BBC();

  v24 = sub_27463A53C();
  v26 = v25;
  LOBYTE(v6) = v27;
  v28 = [objc_opt_self() lightGrayColor];
  sub_27463AB0C();
  v29 = sub_27463A4DC();
  v31 = v30;
  v33 = v32;

  sub_274412C10(v24, v26, v6 & 1);

  sub_27463A3AC();
  v34 = sub_27463A50C();
  v36 = v35;
  LOBYTE(v14) = v37;
  v39 = v38;

  sub_274412C10(v29, v31, v33 & 1);

  v40 = v46;
  sub_27440CAC0();
  v41 = v47;
  sub_27440CAC0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809537B0, &unk_27465DD70);
  v43 = v41 + *(v42 + 48);
  *v43 = v34;
  *(v43 + 8) = v36;
  *(v43 + 16) = v14 & 1;
  *(v43 + 24) = v39;
  v44 = v41 + *(v42 + 64);
  *v44 = 0;
  *(v44 + 8) = 0;
  sub_27440B094(v34, v36, v14 & 1);

  sub_27440CB1C(v10, &qword_2809537A8, &qword_27465DCF8);
  sub_274412C10(v34, v36, v14 & 1);

  return sub_27440CB1C(v40, &qword_2809537A8, &qword_27465DCF8);
}

uint64_t sub_2745C8C94()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 120);
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x98))();
  if (!__OFSUB__(result, 1))
  {
    return v1(v2, result - 1);
  }

  __break(1u);
  return result;
}

double sub_2745C8D10@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  a1[1] = v2;

  return result;
}

uint64_t objectdestroy_10Tm_1()
{

  if (*(v0 + 184))
  {
  }

  sub_2743F459C(*(v0 + 240), *(v0 + 248));
  if (*(v0 + 304))
  {
    if (*(v0 + 288))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 264));
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2745C8DC0@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  *v6 = *(v4 + 48);
  *&v6[16] = *(v4 + 64);
  return sub_2745C6AB8(a1, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), x8_0, *(v4 + 48), *&v6[8], *(v4 + 72), *(v4 + 80));
}

uint64_t sub_2745C8DFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);
  v7 = *(v0 + 96);
  v8 = *(sub_27463AF4C() - 8);
  return sub_2745C7D4C(v0 + 104, v0 + ((*(v8 + 80) + 321) & ~*(v8 + 80)), v1, v2, v3, v4, v5, v6, v11, *(&v11 + 1), v10, *(&v10 + 1), v7);
}

uint64_t sub_2745C8EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2745C8F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2745C8FA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809502A8, &qword_274657078);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v0);
  sub_27440CAC0();
  return sub_27463998C();
}

unint64_t sub_2745C908C()
{
  result = qword_2809537B8;
  if (!qword_2809537B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809537A0, &qword_27465DCF0);
    sub_27440CA78(&qword_2809537C0, &qword_2809537C8, &qword_27465DDA8, MEMORY[0x277CE1138]);
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809537B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_26()
{

  return swift_getWitnessTable();
}

uint64_t sub_2745C9248(uint64_t a1, Class *a2, void *a3)
{
  v14.super_class = *a2;
  v4 = objc_msgSendSuper2(&v14, sel_moduleSummarySlotsForState_, a1);
  if (v4)
  {
    v5 = v4;
    sub_274466DA4();
    v6 = sub_27463B81C();

    if (!a1)
    {
      return v6;
    }
  }

  else
  {
    v6 = 0;
    if (!a1)
    {
      return v6;
    }
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    swift_unknownObjectRetain();
    v9 = [v8 value];
    if (v9)
    {
      v10 = v9;
      if (v6 && sub_274453594())
      {
        sub_2744535A4();
        if ((v6 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x277C58B20](0, v6);
        }

        else
        {
          v11 = *(v6 + 32);
        }

        v12 = v11;

        if ([v10 requiresUserConfirmation])
        {
          [v12 setInvalid_];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_274648560;
        *(v6 + 32) = v12;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v6;
}

id sub_2745C93F4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a1;
  v6 = swift_unknownObjectRetain();
  v7 = a4(v6);
  swift_unknownObjectRelease();

  if (v7)
  {
    sub_274466DA4();
    v8 = sub_27463B7FC();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t WFPosterPickerParameter.view(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809537D0, &qword_27465DDB0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v9 = *(v8 + 56);
  *(v4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  swift_storeEnumTagMultiPayload();
  v10 = v4 + v2[15];
  *v10 = swift_getKeyPath();
  *(v10 + 4) = 0;
  v11 = v4 + v2[16];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v4 + v2[17];
  *v12 = swift_getKeyPath();
  v12[40] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v13 = v1;
  sub_27444A564(v13);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *v4 = sub_27463950C();
  v4[1] = v14;
  v15 = [v13 localizedLabel];
  v16 = sub_27463B6AC();
  v18 = v17;

  v19 = [v13 localizedDescription];
  if (v19)
  {
    v20 = v19;
    v21 = sub_27463B6AC();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v4[2] = v16;
  v4[3] = v18;
  v4[4] = v21;
  v4[5] = v23;
  v24 = v4 + v2[12];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = v2[11];
  v26 = v13;

  sub_27444AD2C(v26, 0, 4, 0, 0, v4 + v25);
  *(v4 + v2[13]) = 0;
  sub_2744CE5D8(v4, v7, &unk_2809537D0, &qword_27465DDB0);
  sub_27440CA78(&unk_2809537E0, &unk_2809537D0, &qword_27465DDB0, &protocol conformance descriptor for ParameterLayoutView<A>);
  return sub_27463AE9C();
}

id WFPosterPickerParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
  v3 = [v1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  v7 = sub_27444C12C(v1);
  v9 = v8;
  v10 = sub_27463B66C();
  v11 = sub_27444AEE4(v4, v6, v7, v9, v10);
  if (a1 && (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0) && (v13 = [v12 value]) != 0)
  {
    v14 = v13;
  }

  else if ([v1 handlesDefaultPoster])
  {
    v14 = [objc_opt_self() defaultPoster];
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    swift_unknownObjectRetain();
    v17 = [v16 variable];
    if (v17)
    {
      v18 = v17;
      [v11 populateWith_];
      swift_unknownObjectRelease();

      return v11;
    }

    swift_unknownObjectRelease();
  }

LABEL_13:
  if (v14)
  {
    v19 = [objc_allocWithZone(MEMORY[0x277D7C758]) init];
    v20 = dispatch_semaphore_create(0);
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v14;
    v21[4] = v11;
    OUTLINED_FUNCTION_0_33();
    v27[1] = 1107296256;
    v27[2] = sub_2745C9C0C;
    v27[3] = &block_descriptor_38;
    v22 = _Block_copy(v27);
    v23 = v20;
    v24 = v14;
    v25 = v11;

    [v19 findPosterMatchingRepresentation:v24 completionHandler:v22];
    _Block_release(v22);
    sub_27463BDDC();
  }

  else
  {
    [v11 populateWithString_];
  }

  return v11;
}

uint64_t sub_2745C9A34(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a1)
  {
    v6 = a1;
    v7 = [v6 name];
    v8 = sub_27463B6AC();
    v10 = v9;

    sub_274457D08(v8, v10, a5);
  }

  else
  {
    v12 = [objc_opt_self() defaultPoster];
    if (v12 && (v13 = v12, sub_274412734(0, &unk_280953860, 0x277D7C750), v14 = a4, v15 = sub_27463BF7C(), v13, v14, (v15 & 1) != 0))
    {
      [a5 populateWithString_];
    }

    else
    {
      sub_27463B70C("Wallpaper", 9);
      if (qword_2809492C0 != -1)
      {
        swift_once();
      }

      v16 = qword_28094BB00;
      v17 = sub_27463B66C();
      v18 = sub_27463B66C();

      v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

      v20 = sub_27463B6AC();
      v22 = v21;

      sub_274457D08(v20, v22, a5);
    }
  }

  return sub_27463BDEC();
}

void sub_2745C9C0C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_2745C9C98(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFPosterPickerParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2745C9D04()
{
  static WFPosterPickerParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2745C9D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277D7C758]) init];
  v7 = [v3 parameter];
  v8 = [v7 shouldOnlyShowEligiblePhotosPosters];

  OUTLINED_FUNCTION_39();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  OUTLINED_FUNCTION_0_33();
  v13[1] = 1107296256;
  if (v8)
  {
    v14 = sub_2745C9EC0;
    v15 = &block_descriptor_60_0;
    v10 = _Block_copy(v13);

    v11 = &selRef_fetchEligiblePostersWithCompletionHandler_;
  }

  else
  {
    OUTLINED_FUNCTION_3_38();
    v14 = v12;
    v15 = &block_descriptor_54;
    v10 = _Block_copy(v13);

    v11 = &selRef_getPostersWithCompletionHandler_;
  }

  [v6 *v11];

  _Block_release(v10);
}

uint64_t sub_2745C9EC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_274637EEC();
    sub_2745CBDF8(&qword_28094F940, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v4 = sub_27463BA4C();
  }

  v6 = a3;
  v5(v4, a3);
}

void *sub_2745C9F90(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v23 = sub_274637EEC();
  v7 = *(v23 - 8);
  v8 = MEMORY[0x28223BE20](v23);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return (a3)(0, v8);
  }

  v11 = sub_274453594();
  if (!v11)
  {
LABEL_12:
    sub_2745E1E6C();
    a3();
  }

  v12 = v11;
  v24 = MEMORY[0x277D84F90];
  result = sub_274451474(0, v11 & ~(v11 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v21 = a4;
    v22 = a3;
    v14 = 0;
    v15 = v24;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x277C58B20](v14, a1);
      }

      else
      {
        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 UUID];
      sub_274637ECC();

      v24 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_274451474((v19 > 1), v20 + 1, 1);
        v15 = v24;
      }

      ++v14;
      *(v15 + 16) = v20 + 1;
      (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v10, v23);
    }

    while (v12 != v14);
    a3 = v22;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2745CA1A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_274412734(0, &unk_280953860, 0x277D7C750);
    v4 = sub_27463B81C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_2745CA248(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_39();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a2;
  v5 = v2;
  v6 = a2;
  sub_2745C9D2C(sub_2745CBE4C, v4);
}

uint64_t sub_2745CA2C4(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_27463B1EC();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_27463B21C();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  v12 = sub_27463BCEC();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_2745CBE54;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27443E0E8;
  aBlock[3] = &block_descriptor_81;
  v14 = _Block_copy(aBlock);

  v15 = a3;
  v16 = a2;

  sub_27463B20C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2745CBDF8(&qword_28094E100, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
  sub_27440CA78(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
  sub_27463C1EC();
  MEMORY[0x277C58440](0, v11, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

void sub_2745CA5D0(char *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870, &qword_27464B0D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_274637EEC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = [a1 currentState];
  if (v15 && (v16 = v15, v17 = [v15 value], v16, v17))
  {
    v18 = [v17 UUID];
    sub_274637ECC();

    sub_27450A21C(v13);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
    v7 = v10;
  }

  else
  {
    v19 = [a1 parameter];
    v20 = [v19 handlesDefaultPoster];

    if (!v20)
    {
      goto LABEL_10;
    }

    v21 = [objc_opt_self() defaultPoster];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 UUID];

      sub_274637ECC();
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    sub_27450A21C(v13);
    __swift_storeEnumTagSinglePayload(v7, v24, 1, v14);
  }

  sub_2744CE5D8(v7, v13, &unk_280953870, &qword_27464B0D0);
LABEL_10:
  sub_2745CBE60(v13, v10);
  v25 = objc_allocWithZone(MEMORY[0x277D3EAE0]);

  v27 = sub_2745CBBAC(v26, v10);
  v28 = [objc_allocWithZone(MEMORY[0x277D3EAA0]) initWithEntryPoint_];
  [v28 setDelegate_];
  v29 = *&a1[OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_controller];
  *&a1[OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_controller] = v28;
  v30 = v28;

  v31 = [a3 sourceViewController];
  v32 = [v31 view];

  if (v32)
  {
    v33 = [v32 window];

    if (v33 && (v34 = [v33 windowScene], v33, v34))
    {
      [v30 presentFromWindowScene_];
      v35 = [a3 sourceViewController];

      sub_27450A21C(v13);
      v30 = *&a1[OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_presentedViewController];
      *&a1[OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_presentedViewController] = v35;
    }

    else
    {
      sub_27450A21C(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2745CAA08(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  aBlock[4] = sub_2745CBE40;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_7_19();
  aBlock[2] = v6;
  aBlock[3] = &block_descriptor_69;
  v7 = _Block_copy(aBlock);
  v8 = v2;

  v9.receiver = v8;
  v9.super_class = type metadata accessor for WFPosterPickerParameterSummaryEditor();
  objc_msgSendSuper2(&v9, sel_cancelEditingWithCompletionHandler_, v7);
  _Block_release(v7);
}

void sub_2745CAAF0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_presentedViewController);
  if (v3)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_27443E0E8;
    v6[3] = &block_descriptor_72;
    v4 = _Block_copy(v6);
    v5 = v3;

    [v5 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }

  else
  {
    a2();
  }
}

id sub_2745CAC5C(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_presentedViewController] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditor36WFPosterPickerParameterSummaryEditor_controller] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for WFPosterPickerParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745CAD20(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFPosterPickerParameterSummaryEditor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2745CADA0(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v51 = v6;
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v48 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_274637EEC();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v18 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v53 = v3;
    v27 = a2;
    v28 = [v26 configurationUUID];
    if (v28)
    {
      v29 = v28;
      sub_274637ECC();

      v30 = *(v14 + 32);
      v30(v24, v21, v12);
      v31 = [objc_allocWithZone(MEMORY[0x277D7C758]) init];
      v52 = v27;
      v32 = v31;
      (*(v14 + 16))(v18, v24, v12);
      v33 = (*(v14 + 80) + 24) & ~*(v14 + 80);
      v34 = swift_allocObject();
      v35 = v53;
      *(v34 + 16) = v53;
      v30((v34 + v33), v18, v12);
      v58 = sub_2745CBD1C;
      v59 = v34;
      OUTLINED_FUNCTION_2_34();
      v55 = 1107296256;
      OUTLINED_FUNCTION_3_38();
      v56 = v36;
      v57 = &block_descriptor_30_0;
      v37 = _Block_copy(&aBlock);
      v38 = v35;

      [v32 getPostersWithCompletionHandler_];
      _Block_release(v37);

      return (*(v14 + 8))(v24, v12);
    }

    else
    {
      sub_274412734(0, &qword_28094AF90, 0x277D85C78);
      v40 = sub_27463BCEC();
      v41 = swift_allocObject();
      v42 = v53;
      *(v41 + 16) = v53;
      v58 = sub_27444C524;
      v59 = v41;
      OUTLINED_FUNCTION_2_34();
      v55 = 1107296256;
      OUTLINED_FUNCTION_7_19();
      v56 = v43;
      v57 = &block_descriptor_24;
      v44 = _Block_copy(&aBlock);
      v45 = v42;

      sub_27463B20C();
      aBlock = MEMORY[0x277D84F90];
      sub_2745CBDF8(&qword_28094E100, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
      sub_27440CA78(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
      v46 = v49;
      v47 = v52;
      sub_27463C1EC();
      MEMORY[0x277C58440](0, v11, v46, v44);

      _Block_release(v44);
      (*(v51 + 8))(v46, v47);
      return (*(v48 + 8))(v11, v50);
    }
  }

  else
  {

    return [v3 completeEditing];
  }
}

uint64_t sub_2745CB2E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_27463B1EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27463B21C();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = v8;
    MEMORY[0x28223BE20](v12);
    *(&v31 - 2) = a4;

    sub_27448EBA8();
    v16 = v15;
    if (sub_274453594())
    {
      sub_2744535A4();
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x277C58B20](0, v16);
      }

      else
      {
        v17 = *(v16 + 32);
      }

      v18 = v17;

      sub_274412734(0, &qword_28094AF90, 0x277D85C78);
      v19 = sub_27463BCEC();
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = a3;
      v38 = sub_2745CBDC0;
      v39 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = sub_27443E0E8;
      v37 = &block_descriptor_42_1;
      v21 = _Block_copy(&aBlock);
      v22 = a3;
      v23 = v18;

      sub_27463B20C();
      aBlock = MEMORY[0x277D84F90];
      sub_2745CBDF8(&qword_28094E100, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
      sub_27440CA78(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
      sub_27463C1EC();
      MEMORY[0x277C58440](0, v14, v10, v21);
      _Block_release(v21);
    }

    else
    {

      sub_274412734(0, &qword_28094AF90, 0x277D85C78);
      v19 = sub_27463BCEC();
      v27 = swift_allocObject();
      *(v27 + 16) = a3;
      v38 = sub_27444C290;
      v39 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = sub_27443E0E8;
      v37 = &block_descriptor_48;
      v28 = _Block_copy(&aBlock);
      v29 = a3;

      sub_27463B20C();
      aBlock = MEMORY[0x277D84F90];
      sub_2745CBDF8(&qword_28094E100, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
      sub_27440CA78(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
      sub_27463C1EC();
      MEMORY[0x277C58440](0, v14, v10, v28);
      _Block_release(v28);
    }

    v8 = v31;
  }

  else
  {
    sub_274412734(0, &qword_28094AF90, 0x277D85C78);
    v19 = sub_27463BCEC();
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    v38 = sub_27444C524;
    v39 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_27443E0E8;
    v37 = &block_descriptor_36;
    v25 = _Block_copy(&aBlock);
    v26 = a3;

    sub_27463B20C();
    aBlock = MEMORY[0x277D84F90];
    sub_2745CBDF8(&qword_28094E100, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
    sub_27440CA78(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
    sub_27463C1EC();
    MEMORY[0x277C58440](0, v14, v10, v25);
    _Block_release(v25);
  }

  (*(v8 + 8))(v10, v7);
  return (*(v32 + 8))(v14, v33);
}

uint64_t sub_2745CB9A8(id *a1, uint64_t a2)
{
  v3 = sub_274637EEC();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 UUID];
  sub_274637ECC();

  v9 = sub_274637EBC();
  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

void sub_2745CBAB4(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D7C748]) initWithValue_];
  [a2 commitState_];
  [a2 completeEditing];
}

id sub_2745CBBAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_274637EEC();
    sub_2745CBDF8(&qword_28094F940, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v5 = sub_27463BA3C();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_274637EEC();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v6) != 1)
  {
    v7 = sub_274637EAC();
    (*(*(v6 - 8) + 8))(a2, v6);
  }

  v8 = [v3 initWithAllowedConfigurationUUIDs:v5 selectedConfigurationUUID:v7];

  return v8;
}

double block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2745CBD1C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_274637EEC() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_2745CB2E4(a1, a2, v6, v7);
}

uint64_t sub_2745CBDF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2745CBE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953870, &qword_27464B0D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745CBF64(void *a1, void *a2)
{
  v4 = sub_274638DAC();
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v67 - v8;
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v67 - v12;
  v14 = [a1 identifier];
  v15 = sub_27463B6AC();
  v17 = v16;

  if (v15 != 0x657469726F766166 || v17 != 0xE900000000000073)
  {
    OUTLINED_FUNCTION_1_38();
    if ((sub_27463C6BC() & 1) == 0)
    {
      objc_opt_self();
      v28 = OUTLINED_FUNCTION_1_38();
      if ((sub_2745CC5C0(v28, v29, v30) & 1) == 0)
      {
        return v15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_274648560;
      sub_2745CC608();

      v32 = OUTLINED_FUNCTION_1_38();
      *(v31 + 32) = sub_2745CC54C(v32, v33);
      v34 = sub_27463BC5C();

      v35 = sub_274442C98(v34);
      v24 = v36;
      v38 = v37;

      if (v35)
      {

        if ((v38 & 1) == 0)
        {

          return v24;
        }

        sub_274638C2C();

        v39 = OUTLINED_FUNCTION_0_45();
        sub_2744438B8(v39, v40, v41);
        v42 = sub_274638D9C();
        v43 = sub_27463BBFC();

        v44 = OUTLINED_FUNCTION_0_45();
        sub_2745CC64C(v44, v45, v46);
        if (os_log_type_enabled(v42, v43))
        {
          v47 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v70 = v68;
          *v47 = 136315394;
          v48 = OUTLINED_FUNCTION_1_38();
          v51 = sub_2745E7980(v48, v49, v50);

          *(v47 + 4) = v51;
          *(v47 + 12) = 2080;
          swift_getErrorValue();
          v52 = sub_27463C72C();
          v54 = sub_2745E7980(v52, v53, &v70);

          *(v47 + 14) = v54;
          _os_log_impl(&dword_2743F0000, v42, v43, "could not get local identifier for photo item %s with error %s", v47, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_14_6();
          OUTLINED_FUNCTION_14_6();
        }

        else
        {
        }

        v64 = OUTLINED_FUNCTION_0_45();
        sub_2745CC64C(v64, v65, v66);
        (*(v69 + 8))(v9, v4);
      }

      else
      {
        sub_274638C2C();

        v55 = sub_274638D9C();
        v56 = sub_27463BBFC();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v70 = v58;
          *v57 = 136315138;
          v59 = OUTLINED_FUNCTION_1_38();
          v62 = sub_2745E7980(v59, v60, v61);

          *(v57 + 4) = v62;
          _os_log_impl(&dword_2743F0000, v55, v56, "could not get local identifier for photo item %s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v58);
          OUTLINED_FUNCTION_14_6();
          OUTLINED_FUNCTION_14_6();
        }

        else
        {
        }

        (*(v69 + 8))(v6, v4);
      }

      return 0;
    }
  }

  v19 = objc_opt_self();
  v20 = [a2 librarySpecificFetchOptions];
  v21 = [v19 fetchAssetCollectionsWithType:2 subtype:203 options:v20];

  v22 = [v21 firstObject];
  if (!v22)
  {
    sub_274638C2C();
    v25 = sub_274638D9C();
    v26 = sub_27463BBFC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2743F0000, v25, v26, "could not get local identifier for favorites album", v27, 2u);
      OUTLINED_FUNCTION_14_6();
    }

    (*(v69 + 8))(v13, v4);
    return 0;
  }

  v23 = [v22 localIdentifier];
  v24 = sub_27463B6AC();

  return v24;
}

id sub_2745CC54C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_27463B66C();

  v4 = [v2 initWithStringValue_];

  return v4;
}

id sub_2745CC5C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();
  v5 = [a3 isValidCloudIdentifierStringValue_];

  return v5;
}

unint64_t sub_2745CC608()
{
  result = qword_280953880;
  if (!qword_280953880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280953880);
  }

  return result;
}

void sub_2745CC64C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2745CC678(uint64_t a1)
{
  v2 = sub_27463BB9C();
  v3 = v2;
  v4 = *(v2 + 16);
  if (a1 == 1)
  {
    v5 = 32;
    for (i = *(v2 + 16); i; --i)
    {
      v7 = sub_274412734(0, &unk_280953888, 0x277CFC530);
      v5 += 8;
      if (swift_dynamicCastMetatype())
      {

        return v7;
      }
    }
  }

  if (v4)
  {
    v7 = *(v3 + 32);

    if (v7 == sub_274412734(0, &qword_280949F00, 0x277CFC2F8))
    {
      return sub_274412734(0, &unk_280953888, 0x277CFC530);
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t sub_2745CC77C(uint64_t a1)
{
  result = [v1 supportsAggrandizements];
  if (!result)
  {
    return result;
  }

  v4 = [v1 type];
  v5 = sub_27463B6AC();
  v7 = v6;
  v8 = sub_27463B6AC();
  if (v5 == v8 && v7 == v9)
  {
    goto LABEL_19;
  }

  v11 = OUTLINED_FUNCTION_0_46(v8);

  if (v11)
  {
    return 0;
  }

  v4 = [v1 type];
  v12 = sub_27463B6AC();
  v14 = v13;
  v15 = sub_27463B6AC();
  if (v12 == v15 && v14 == v16)
  {
LABEL_19:

    return 0;
  }

  v18 = OUTLINED_FUNCTION_0_46(v15);

  if (v18)
  {
    return 0;
  }

  result = sub_2745CC678(1);
  if (result)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_274412734(0, &unk_280953888, 0x277CFC530);
    v20 = [ObjCClassFromMetadata isSubclassOfClass_];
    result = 0;
    if ((v20 & 1) == 0 && a1 == 1)
    {
      v21 = [ObjCClassFromMetadata allProperties];
      sub_274412734(0, &qword_28094F1F8, 0x277CFC330);
      sub_27463B81C();

      v22 = sub_274453594();

      if (v22 > 1)
      {
        return 1;
      }

      sub_274412734(0, &qword_28094F1B8, 0x277CFC368);
      if ([ObjCClassFromMetadata isSubclassOfClass_])
      {
        return 1;
      }

      sub_274412734(0, &qword_28094F1C0, 0x277CFC388);
      result = [ObjCClassFromMetadata isSubclassOfClass_];
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2745CC9D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOBYTE(a3) = sub_2745CC77C(a3);

  return a3 & 1;
}

uint64_t OUTLINED_FUNCTION_0_46(uint64_t a1)
{

  return sub_27463C6BC();
}

void sub_2745CCA38()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_commitState;
  if (*(*&v0[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_commitState] + 24) == 1)
  {
    v2 = [v0 currentState];
    [v0 commitState_];

    *(*&v0[v1] + 24) = 0;
  }
}

uint64_t sub_2745CCAB0()
{
  v1 = [v0 parameter];
  [v1 singleStateClass];

  swift_getObjCClassMetadata();
  sub_274412734(0, &unk_28094F530, 0x277D7CA30);
  OUTLINED_FUNCTION_21_2();
  swift_dynamicCastMetatypeUnconditional();
  OUTLINED_FUNCTION_19_8();
  return sub_27463BE9C();
}

uint64_t sub_2745CCB48()
{
  v1 = [v0 textEntry];
  if (v1)
  {
    [v1 selectedRange];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_274637CAC();
  }

  return OUTLINED_FUNCTION_5_0();
}

id sub_2745CCBBC(__n128 a1)
{
  v2 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v28 - v14;
  result = [v1 currentState];
  if (result)
  {
    v17 = result;
    sub_27463BE7C();

    v18 = sub_2745CCB48();
    v20 = v19;
    v21 = sub_27463822C();
    v22 = [v21 substringWithRange_];

    sub_27463827C();
    v23 = *(v4 + 8);
    v23(v8, v2);
    (*(v4 + 32))(v15, v11, v2);
    v24 = [objc_opt_self() generalPasteboard];
    v25 = objc_opt_self();
    v26 = sub_27463822C();
    [v25 copyVariableString:v26 toPasteboard:v24];

    v27 = OUTLINED_FUNCTION_4_3();
    return (v23)(v27);
  }

  return result;
}

uint64_t sub_2745CCDC0(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v86) = a4;
  v84 = a2;
  v85 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  v6 = OUTLINED_FUNCTION_53_0(v5);
  MEMORY[0x28223BE20](v6);
  v75 = &v73 - v7;
  OUTLINED_FUNCTION_51_3();
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v82 = v9;
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v80 = v11 - v10;
  OUTLINED_FUNCTION_51_3();
  v81 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v79 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v78 = v15 - v14;
  OUTLINED_FUNCTION_51_3();
  v87 = sub_27463B23C();
  OUTLINED_FUNCTION_1();
  v77 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  OUTLINED_FUNCTION_51_3();
  v24 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v88 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2();
  v76 = v27 - v28;
  *&v30 = MEMORY[0x28223BE20](v29).n128_u64[0];
  v32 = &v73 - v31;
  v33 = [a1 type];
  v34 = sub_27463B6AC();
  v36 = v35;
  if (v34 == sub_27463B6AC() && v36 == v37)
  {

    v40 = v89;
    goto LABEL_8;
  }

  v39 = sub_27463C6BC();

  v40 = v89;
  if (v39)
  {
LABEL_8:
    v41 = [v40 currentState];
    if (v41)
    {
      v42 = v41;
      sub_27463BE7C();

      sub_2746382AC();
      (*(v88 + 8))(v32, v24);
      v43 = sub_274453594();

      if (v43 > 0)
      {
        return result;
      }
    }
  }

  v45 = [objc_allocWithZone(WFSlotTemplateVariableToken) initWithVariable_];
  v46 = [objc_allocWithZone(MEMORY[0x277D7D7C8]) initWithSlotTemplateToken_];

  sub_2745CD664(v46);
  v47 = [objc_opt_self() attributedStringWithAttachment_];
  v48 = [v40 textEntry];
  if (v48)
  {
    v74 = v47;
    if (v86)
    {
      [v48 insertAttributedText_];
    }

    else
    {
      [v48 wf:v84 replaceRange:v85 withAttributedText:v47];
    }

    sub_274412734(0, &qword_28094AF90, 0x277D85C78);
    v86 = sub_27463BCEC();
    sub_27463B22C();
    sub_27463B28C();
    v88 = *(v77 + 8);
    (v88)(v20, v87);
    v54 = swift_allocObject();
    v55 = v89;
    v54[2] = v89;
    v54[3] = a1;
    v54[4] = v46;
    aBlock[4] = sub_2745D3E04;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_27443E0E8;
    aBlock[3] = &block_descriptor_96;
    v56 = _Block_copy(aBlock);
    v57 = v55;
    v58 = a1;
    v89 = v46;

    v59 = v78;
    sub_27463B20C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2745CE024(&qword_28094E100, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
    sub_274458A14(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0);
    v60 = v80;
    v61 = v83;
    sub_27463C1EC();
    v62 = v86;
    MEMORY[0x277C58400](v23, v59, v60, v56);
    _Block_release(v56);

    swift_unknownObjectRelease();
    (*(v82 + 8))(v60, v61);
    (*(v79 + 8))(v59, v81);
    return (v88)(v23, v87);
  }

  else
  {
    v49 = v47;
    v50 = [v40 currentState];
    if (v50)
    {
      v51 = v50;
      v52 = v75;
      sub_27463BE7C();

      __swift_storeEnumTagSinglePayload(v52, 0, 1, v24);
      v53 = v76;
      (*(v88 + 32))(v76, v52, v24);
    }

    else
    {
      v63 = v75;
      __swift_storeEnumTagSinglePayload(v75, 1, 1, v24);
      v53 = v76;
      sub_2746382CC();
      if (__swift_getEnumTagSinglePayload(v63, 1, v24) != 1)
      {
        sub_27440CB1C(v63, &unk_2809530C0, &qword_274655D40);
      }
    }

    v64 = sub_27463822C();
    v65 = [v64 attributedString];

    v66 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v67 = v66;
    v68 = [v67 length];
    if ((v86 & 1) != 0 || (v68 > v84 ? (v69 = v85 + v84 >= v68) : (v69 = 1), v69))
    {
      [v67 appendAttributedString_];
    }

    else
    {
      [v67 replaceCharactersInRange_withAttributedString_];
    }

    [objc_allocWithZone(MEMORY[0x277D7CA28]) initWithAttributedString_];
    sub_27463821C();

    v70 = v89;
    v71 = sub_2745CCAB0();
    v72 = *(v88 + 8);
    v72(v32, v24);
    [v70 commitState_];

    return (v72)(v53, v24);
  }
}

void sub_2745CD664(void *a1)
{
  v3 = [v1 textEntry];
  if (v3)
  {
    v4 = [v3 font];
    [a1 setFont_];

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      swift_unknownObjectRetain();
    }

    v6 = [v5 tintColor];

    [a1 setTintColor_];
    swift_unknownObjectRelease();
  }

  v7 = [a1 token];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v22 = [v8 variable];

    if (!v22)
    {
      return;
    }

    v9 = [v22 type];
    v10 = sub_27463B6AC();
    v12 = v11;
    if (v10 == sub_27463B6AC() && v12 == v13)
    {
    }

    else
    {
      v15 = sub_27463C6BC();

      if ((v15 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v17 = [v1 parameter];
    v18 = [v17 defaultPlaceholder];

    v19 = sub_27463B6AC();
    v21 = v20;

    sub_2745D3664(v19, v21, a1);
LABEL_17:
    v16 = v22;
    goto LABEL_18;
  }

  v16 = v7;
LABEL_18:
}

void sub_2745CD8D4(void *a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    if (a1 != 1)
    {
      [a1 copy];
      sub_27463C13C();
      swift_unknownObjectRelease();
      sub_274412734(0, &qword_28094BD90, 0x277D7C9F8);
      swift_dynamicCast();
      sub_2745CCDC0(v21, a2, a3, a4 & 1);
    }
  }

  else
  {
    v8 = [v4 variableProvider];
    if (v8)
    {
      v9 = v8;
      v10 = sub_274505FCC([v4 parameter]);
      if (v10)
      {
        v11 = sub_2744896FC(*MEMORY[0x277D7D068], v10);
      }

      else
      {
        v11 = 0;
      }

      v12 = sub_2745CCB48();
      v14 = v13;
      *(v4 + OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_isPickingActionOutput) = 1;
      sub_27448A8A0();
      v15 = [v4 variableUIDelegate];
      if (v15)
      {
        v16 = v15;
        v17 = swift_allocObject();
        *(v17 + 16) = v4;
        *(v17 + 24) = v12;
        *(v17 + 32) = v14;
        *(v17 + 40) = a2;
        *(v17 + 48) = a3;
        *(v17 + 56) = a4 & 1;
        aBlock[4] = sub_2745D3DF0;
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_274486F8C;
        aBlock[3] = &block_descriptor_90;
        v18 = _Block_copy(aBlock);
        v19 = v4;

        [v16 showActionOutputPickerAllowingShortcutInput:v11 variableProvider:v9 completionHandler:v18];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _Block_release(v18);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

__n128 TextFieldView.init(editingSession:style:prefix:placeholder:isSecureTextEntry:isClear:isRinglessOnFocus:padding:focusImmediatelyWhenPresented:variableTypes:variableResultType:syntaxHighlightingType:onCommit:keyboardType:autocapitalizationType:minHeight:maxHeight:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, char a13, char a14, __int128 a15, __int128 a16, __n128 a17, uint64_t a18)
{
  v26 = *a2;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
  *(a9 + 144) = sub_27463979C();
  *(a9 + 152) = v27;
  *a9 = a1;
  *(a9 + 8) = v26;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 49) = a8;
  *(a9 + 50) = a13;
  *(a9 + 56) = a10;
  *(a9 + 64) = a14;
  *(a9 + 72) = a15;
  *(a9 + 88) = a16;
  result = a17;
  *(a9 + 104) = a17;
  *(a9 + 120) = a18;
  *(a9 + 128) = a11;
  *(a9 + 136) = a12;
  return result;
}

uint64_t sub_2745CDCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_274464A50(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_27440CB1C(v13, &unk_28094A230, &qword_27464D1B0);
}

uint64_t WFTextInputParameter.view(with:)(uint64_t a1)
{
  v2 = type metadata accessor for TextInputRowView(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = (v5 - v4);
  type metadata accessor for ParameterStateStore();
  sub_2745CE024(&qword_28094B550, 255, type metadata accessor for ParameterStateStore);

  v16 = sub_27463950C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2745CE068;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_274458A90;
  *(v10 + 24) = a1;
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B5A0, &qword_27464B410));
  swift_retain_n();
  sub_27444A690(v17);
  sub_274458A14(&unk_280953898, &qword_28094B5A0, &qword_27464B410);
  *v6 = sub_27463950C();
  v6[1] = v12;
  v6[2] = v16;
  v6[3] = v8;
  v6[4] = sub_274458A60;
  v6[5] = v9;
  v6[6] = sub_274458A98;
  v6[7] = v10;
  v13 = *(v2 + 24);
  *(v6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  swift_storeEnumTagMultiPayload();
  v14 = v6 + *(v2 + 28);
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  sub_2745CE024(&unk_2809538A8, 255, type metadata accessor for TextInputRowView);
  OUTLINED_FUNCTION_4_3();
  return sub_27463AE9C();
}

uint64_t sub_2745CE024(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id WFTextInputParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  v5 = OUTLINED_FUNCTION_53_0(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v35 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
  v14 = [v1 localizedLabel];
  v15 = sub_27463B6AC();
  v17 = v16;

  v18 = sub_27444C12C(v1);
  v20 = v19;
  v21 = sub_27463B66C();
  v22 = sub_27444AEE4(v15, v17, v18, v20, v21);
  if (a1 && (objc_opt_self(), (v23 = swift_dynamicCastObjCClass()) != 0))
  {
    v24 = v23;
    swift_unknownObjectRetain();
    v25 = v24;
    sub_27463BE7C();

    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    v26 = v35;
    (*(v35 + 32))(v13, v7, v8);
    v27 = 0;
  }

  else
  {
    v27 = 1;
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_27440CB1C(v7, &unk_2809530C0, &qword_274655D40);
    }

    v25 = 0;
    v26 = v35;
  }

  v28 = [v2 defaultPlaceholder];
  v29 = sub_27463B6AC();
  v31 = v30;

  WFSlotTemplateSlot.populate(with:askVariableName:)(v13, v29, v31);

  (*(v26 + 8))(v13, v8);
  if (v27)
  {
    v32 = 0;
  }

  else
  {
    v32 = [v25 userInputInsertionIndex];
  }

  [v22 setUserInputInsertionIndex_];

  return v22;
}

id sub_2745CE398(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFTextInputParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t WFTextInputParameter.defaultStateForNewArrayElement()(__n128 a1)
{
  sub_2746382DC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  [v1 singleStateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &unk_28094F530, 0x277D7CA30);
  OUTLINED_FUNCTION_21_2();
  swift_dynamicCastMetatypeUnconditional();
  sub_27463828C();
  v3 = sub_27463BE9C();
  v4 = OUTLINED_FUNCTION_4_3();
  v5(v4);
  return v3;
}

id sub_2745CE508(void *a1)
{
  v1 = a1;
  v3 = WFTextInputParameter.defaultStateForNewArrayElement()(v2);

  return v3;
}

uint64_t sub_2745CE550()
{
  static WFTextInputParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

id sub_2745CE590(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_27463B66C();

  return v5;
}

uint64_t sub_2745CE610(const char *a1)
{
  v1 = sub_27463B70C(a1);
  if (qword_2809492C0 != -1)
  {
    OUTLINED_FUNCTION_2_22(&qword_2809492C0);
  }

  v2 = qword_28094BB00;
  v3 = sub_27463B66C();
  sub_27463B66C();
  OUTLINED_FUNCTION_19_8();

  v4 = [v2 localizedStringForKey:v3 value:v1 table:0];

  sub_27463B6AC();
  return OUTLINED_FUNCTION_25_1();
}

id sub_2745CE6D4(void *a1)
{
  v1 = a1;
  WFDateFieldParameter.defaultPlaceholder.getter();

  v2 = sub_27463B66C();

  return v2;
}

uint64_t WFDateFieldParameter.defaultPlaceholder.getter()
{
  if ([v0 timeOnlyMode])
  {
    v1 = "Time";
LABEL_5:
    v2 = 4;
    goto LABEL_7;
  }

  if ([v0 dateOnlyMode])
  {
    v1 = "Date";
    goto LABEL_5;
  }

  v1 = "Date and time";
  v2 = 13;
LABEL_7:
  sub_27463B70C(v1, v2);
  if (qword_2809492C0 != -1)
  {
    OUTLINED_FUNCTION_2_22(&qword_2809492C0);
  }

  v3 = qword_28094BB00;
  OUTLINED_FUNCTION_25_1();
  v4 = sub_27463B66C();
  OUTLINED_FUNCTION_25_1();
  v5 = sub_27463B66C();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  sub_27463B6AC();
  return OUTLINED_FUNCTION_5_0();
}

uint64_t sub_2745CE848@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953938, &qword_27465E200);
  MEMORY[0x28223BE20](v3);
  v5 = (&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v69 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953940, &qword_27465E208);
  MEMORY[0x28223BE20](v72);
  v74 = &v69 - v9;
  v10 = type metadata accessor for TextInputFieldView(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953948, &qword_27465E210);
  MEMORY[0x28223BE20](v73);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v71 = &v69 - v17;
  v18 = *(v2 + 8);
  v19 = qword_28094A100;
  v20 = [*(v18 + qword_28094A100) isMultiline];
  v21 = *(v18 + v19);
  v75 = v3;
  if (v20)
  {
    v22 = sub_2745D36D4(v21, &selRef_localizedPlaceholder);
    if (v23)
    {
      v24 = v22;
      v25 = v23;
    }

    else
    {
      v42 = [*(v18 + v19) localizedLabel];
      v24 = sub_27463B6AC();
      v25 = v43;
    }

    v44 = *(v18 + v19);
    v45 = *(v2 + 32);
    v77 = *(v2 + 16);
    v78 = v45;
    v79 = *(v2 + 48);
    v70 = v44;
    sub_2744342DC();
    v46 = sub_2745CF008();
    *(v12 + 14) = swift_getKeyPath();
    v12[120] = 0;
    *(v12 + 16) = swift_getKeyPath();
    v12[136] = 0;
    v47 = v10[11];
    *&v12[v47] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
    swift_storeEnumTagMultiPayload();
    v48 = &v12[v10[12]];
    *v48 = sub_2746390EC() & 1;
    *(v48 + 1) = v49;
    v48[16] = v50 & 1;
    v51 = &v12[v10[13]];
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
    *v51 = sub_27463979C();
    v51[1] = v52;
    v53 = &v12[v10[14]];
    *v53 = sub_2745CF698;
    *(v53 + 1) = 0;
    v53[16] = 0;
    *v12 = v24;
    *(v12 + 1) = v25;
    v54 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B5A0, &qword_27464B410));
    v55 = v70;
    sub_27444A690(v55);
    sub_274458A14(&unk_280953898, &qword_28094B5A0, &qword_27464B410);
    v56 = sub_27463950C();
    v58 = v57;

    *(v12 + 2) = v56;
    *(v12 + 3) = v58;
    v59 = v78;
    *(v12 + 2) = v77;
    *(v12 + 3) = v59;
    *(v12 + 4) = v79;
    v12[80] = v46;
    v60 = swift_allocObject();
    v61 = v78;
    *(v60 + 16) = v77;
    *(v60 + 32) = v61;
    *(v60 + 48) = v79;
    *(v60 + 64) = v55;
    *(v12 + 11) = sub_2745D3C30;
    *(v12 + 12) = v60;
    v12[104] = 0;
    sub_2745D3E68();
    *&v14[*(v73 + 36)] = 256;
    v62 = v71;
    sub_274433B6C();
    sub_2744342DC();
    swift_storeEnumTagMultiPayload();
    sub_2744342DC();
    sub_2745D3B70();
    sub_274458A14(&qword_280953960, &qword_280953938, &qword_27465E200);
    sub_274639DDC();
    v63 = v62;
    v64 = &qword_280953948;
    v65 = &qword_27465E210;
  }

  else
  {
    v26 = v3[14];
    *(v5 + v26) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
    swift_storeEnumTagMultiPayload();
    v27 = v5 + v3[15];
    *v27 = swift_getKeyPath();
    *(v27 + 4) = 0;
    v28 = v5 + v3[16];
    *v28 = swift_getKeyPath();
    v28[8] = 0;
    v29 = v5 + v3[17];
    *v29 = swift_getKeyPath();
    v29[40] = 0;
    v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
    v31 = v21;
    sub_27444A564(v31);
    sub_274458A14(&qword_28094CF70, &unk_28094B440, &qword_27464C470);
    *v5 = sub_27463950C();
    v5[1] = v32;
    v33 = [v31 localizedLabel];
    v34 = sub_27463B6AC();
    v36 = v35;

    v37 = [v31 localizedDescription];
    if (v37)
    {
      v38 = v37;
      v39 = sub_27463B6AC();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0xE000000000000000;
    }

    v5[2] = v34;
    v5[3] = v36;
    v5[4] = v39;
    v5[5] = v41;
    v66 = v75;
    v67 = v5 + v75[12];
    *v67 = 0;
    *(v67 + 1) = 0;
    v67[16] = 0;
    sub_2745CF290(v2, v5 + v66[11]);

    *(v5 + v66[13]) = 0;
    sub_274433B6C();
    sub_2744342DC();
    swift_storeEnumTagMultiPayload();
    sub_2745D3B70();
    sub_274458A14(&qword_280953960, &qword_280953938, &qword_27465E200);
    sub_274639DDC();
    v63 = v8;
    v64 = &qword_280953938;
    v65 = &qword_27465E200;
  }

  return sub_27440CB1C(v63, v64, v65);
}

uint64_t sub_2745CF008()
{
  v1 = v0;
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274639C4C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 8);
  v12 = qword_28094A100;
  if ([*(v11 + qword_28094A100) isMultiline])
  {
    return 0;
  }

  v20 = v3;
  v13 = type metadata accessor for TextInputRowView(0);
  sub_2744C6C14();
  v14 = sub_274639C3C();
  (*(v7 + 8))(v10, v6);
  if (v14)
  {
    return 0;
  }

  v16 = v1 + *(v13 + 28);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_27463BC0C();
    v18 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v17, 0);
    (*(v20 + 8))(v5, v2);
    if ((v21 & 1) == 0)
    {
LABEL_9:
      v19 = [*(v11 + v12) textAlignment];
      WFTextAlignmentFromString();

      return sub_27463944C();
    }
  }

  return 0;
}

uint64_t sub_2745CF290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[1] = a2;
  v4 = type metadata accessor for TextInputFieldView(0);
  MEMORY[0x28223BE20](v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953948, &qword_27465E210);
  MEMORY[0x28223BE20](v7);
  v9 = v38 - v8;
  v10 = *(a1 + 8);
  v11 = qword_28094A100;
  v12 = sub_2745D36D4(*(v10 + qword_28094A100), &selRef_localizedPlaceholder);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v16 = [*(v10 + v11) defaultPlaceholder];
    v14 = sub_27463B6AC();
    v15 = v17;
  }

  v18 = *(v10 + v11);
  v19 = *(a1 + 32);
  v39 = *(a1 + 16);
  v40 = v19;
  v41 = *(a1 + 48);
  v20 = v18;
  sub_2744342DC();
  v21 = sub_2745CF008();
  *(v6 + 14) = swift_getKeyPath();
  v6[120] = 0;
  *(v6 + 16) = swift_getKeyPath();
  v6[136] = 0;
  v22 = v4[11];
  *&v6[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  swift_storeEnumTagMultiPayload();
  v23 = &v6[v4[12]];
  *v23 = sub_2746390EC() & 1;
  *(v23 + 1) = v24;
  v23[16] = v25 & 1;
  v26 = &v6[v4[13]];
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
  *v26 = sub_27463979C();
  v26[1] = v27;
  v28 = &v6[v4[14]];
  *v28 = sub_2745CF698;
  *(v28 + 1) = 0;
  v28[16] = 0;
  *v6 = v14;
  *(v6 + 1) = v15;
  v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B5A0, &qword_27464B410));
  v30 = v20;
  sub_27444A690(v30);
  sub_274458A14(&unk_280953898, &qword_28094B5A0, &qword_27464B410);
  v31 = sub_27463950C();
  v33 = v32;

  *(v6 + 2) = v31;
  *(v6 + 3) = v33;
  v34 = v40;
  *(v6 + 2) = v39;
  *(v6 + 3) = v34;
  *(v6 + 4) = v41;
  v6[80] = v21;
  v35 = swift_allocObject();
  v36 = v40;
  *(v35 + 16) = v39;
  *(v35 + 32) = v36;
  *(v35 + 48) = v41;
  *(v35 + 64) = v30;
  *(v6 + 11) = sub_2745D48E8;
  *(v6 + 12) = v35;
  v6[104] = 0;
  sub_2745D3E68();
  *&v9[*(v7 + 36)] = 256;
  sub_274433B6C();
  return sub_2744342DC();
}

uint64_t sub_2745CF658@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TextInputFieldView.CommitState();
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

uint64_t sub_2745CF698()
{
  type metadata accessor for TextInputFieldView.CommitState();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2745CF6C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_2746382DC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + 16))(&v13, v7);
  v10 = v13;
  if (v13)
  {
    sub_27463BE7C();

    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    (*(v6 + 32))(v9, v4, v5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_27440CB1C(v4, &unk_2809530C0, &qword_274655D40);
    }
  }

  sub_2745CF8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  swift_allocObject();
  return sub_2746388DC();
}

void sub_2745CF8A4()
{
  if ([v0 isMonospace])
  {
    v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v2 = [v1 fontDescriptorWithSymbolicTraits_];

    if (v2)
    {
      [objc_opt_self() fontWithDescriptor:v2 size:0.0];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v3 = [objc_opt_self() preferredFontForTextStyle_];

    v4 = v3;
  }
}

uint64_t sub_2745CF9A4()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 112);
  if (*(v0 + 120) == 1)
  {
    if ((v5 & 1) == 0)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  else
  {

    sub_27463BC0C();
    v7 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v9[15] != 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  v8 = MEMORY[0x277D84FA0];
  result = sub_274505FCC(*(*(v0 + 24) + qword_28094A100));
  if (!result)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2745CFB30@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v127 = a1;
  v105 = type metadata accessor for TextInputFieldView(0);
  v129 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v131 = v4;
  v104 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_274639ABC();
  v5 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A70, &qword_27465E440);
  MEMORY[0x28223BE20](v102);
  v9 = &v85 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A78, &qword_27465E448);
  MEMORY[0x28223BE20](v130);
  v103 = &v85 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A80, &qword_27465E450);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = &v85 - v11;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A88, &qword_27465E458);
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = &v85 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A90, &qword_27465E460);
  MEMORY[0x28223BE20](v115);
  v108 = &v85 - v13;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A98, &qword_27465E468);
  v116 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v112 = &v85 - v14;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953AA0, &qword_27465E470);
  v119 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v117 = &v85 - v15;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953AA8, &qword_27465E478);
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v120 = &v85 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953AB0, &qword_27465E480);
  v122 = *(v17 - 8);
  v123 = v17;
  MEMORY[0x28223BE20](v17);
  v118 = &v85 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_274458A14(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610);
  v101 = sub_27463920C();
  v19 = *(v3 + 24);
  v20 = qword_28094A100;
  if ([*(v19 + qword_28094A100) isMultiline])
  {
    v100 = 0;
  }

  else
  {
    v21 = *(v3 + 128);
    if (*(v3 + 136) != 1)
    {

      sub_27463BC0C();
      v22 = sub_27463A2FC();
      sub_274638CEC();

      sub_274639AAC();
      swift_getAtKeyPath();
      sub_2743F45E8(v21, 0);
      (*(v5 + 8))(v7, v128);
      LOBYTE(v21) = v133;
    }

    if (v21)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }

    v100 = v23;
  }

  v99 = sub_2745D36D4(*(v19 + v20), &selRef_prefix);
  v98 = v24;
  v25 = *(v3 + 8);
  v97 = *v3;
  v96 = v25;
  v26 = *(v19 + v20);

  v95 = [v26 isSecureTextEntry];
  v27 = sub_2745D0A24();
  v94 = sub_2745CF9A4();
  v93 = [*(v19 + v20) processesIntoContentItems] ^ 1;
  v92 = [*(v19 + v20) syntaxHighlightingType];
  v128 = type metadata accessor for TextInputFieldView;
  sub_2745D3E10();
  v129 = *(v129 + 80);
  v91 = swift_allocObject();
  v88 = type metadata accessor for TextInputFieldView;
  sub_2745D3E68();
  v90 = [*(v19 + v20) keyboardType];
  v89 = [*(v19 + v20) autocapitalizationType];
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
  v28 = sub_27463979C();
  v106 = v19;
  v87 = v28;
  v86 = v29;
  v30 = v27 & 1;
  (*(v3 + 48))(&v133);
  v31 = v133;
  v32 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953F70, &qword_27465E488);
  sub_27463C09C();

  sub_2745D3E10();
  v33 = swift_allocObject();
  sub_2745D3E68();
  *v9 = v101;
  v9[8] = v100;
  v34 = v98;
  *(v9 + 2) = v99;
  *(v9 + 3) = v34;
  v35 = v96;
  *(v9 + 4) = v97;
  *(v9 + 5) = v35;
  v9[48] = v95;
  v9[49] = v30;
  v9[50] = 0;
  *(v9 + 7) = 0;
  v9[64] = 0;
  v36 = v93;
  *(v9 + 9) = v94;
  *(v9 + 10) = v36;
  *(v9 + 11) = v92;
  *(v9 + 12) = sub_2745D4250;
  v37 = v90;
  *(v9 + 13) = v91;
  *(v9 + 14) = v37;
  *(v9 + 15) = v89;
  *(v9 + 8) = xmmword_27464F170;
  v38 = v86;
  *(v9 + 18) = v87;
  *(v9 + 19) = v38;
  v39 = &v9[*(v32 + 56)];
  *v39 = sub_2745D4440;
  v39[1] = v33;
  v40 = v3 + *(v105 + 48);
  v42 = *(v40 + 8);
  v43 = *(v40 + 16);
  LOBYTE(v133) = *v40;
  v41 = v133;
  v134 = v42;
  v135 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951420, &unk_27465E490);
  sub_2746390BC();
  v44 = v3;
  v45 = v20;
  v46 = v132;
  v105 = v44;
  sub_2745D3E10();
  v47 = swift_allocObject();
  sub_2745D3E68();
  v48 = v103;
  sub_274433B6C();
  v49 = v48 + *(v130 + 36);
  *v49 = v46;
  v50 = v45;
  *(v49 + 8) = sub_2745D44AC;
  *(v49 + 16) = v47;
  LOBYTE(v133) = v41;
  v51 = v106;
  v134 = v42;
  v135 = v43;
  sub_2746390DC();
  v52 = sub_2745D4504();
  v53 = v110;
  sub_27463A99C();

  sub_27440CB1C(v48, &qword_280953A78, &qword_27465E448);
  v54 = [*(v51 + v50) autocorrectionType];
  v55 = sub_27463B6AC();
  v57 = v56;
  if (v55 == sub_27463B6AC() && v57 == v58)
  {
    v60 = 1;
  }

  else
  {
    v60 = sub_27463C6BC();
  }

  v133 = v130;
  v134 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v60 & 1;
  v63 = v107;
  v64 = v114;
  MEMORY[0x277C56F80](v62, v114, OpaqueTypeConformance2);
  (*(v113 + 8))(v53, v64);
  v65 = *(v105 + 80);
  KeyPath = swift_getKeyPath();
  v67 = v108;
  (*(v109 + 32))(v108, v63, v111);
  v68 = v115;
  v69 = v67 + *(v115 + 36);
  *v69 = KeyPath;
  *(v69 + 8) = v65;
  [*(v51 + v50) smartDashesDisabled];
  v70 = sub_2745D45E8();
  v71 = v112;
  sub_27463A59C();
  sub_27440555C(v67);
  [*(v51 + v50) smartQuotesDisabled];
  v133 = v68;
  v134 = v70;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v117;
  v74 = v121;
  sub_27463A5AC();
  (*(v116 + 8))(v71, v74);
  [*(v51 + v50) textReplacementDisabled];
  v133 = v74;
  v134 = v72;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v120;
  v77 = v125;
  sub_27463A5DC();
  (*(v119 + 8))(v73, v77);
  [*(v51 + v50) autoPeriodsDisabled];
  v133 = v77;
  v134 = v75;
  swift_getOpaqueTypeConformance2();
  v78 = v118;
  v79 = v126;
  sub_27463A57C();
  (*(v124 + 8))(v76, v79);
  v80 = sub_27463ABBC();
  v81 = swift_getKeyPath();
  v82 = v127;
  (*(v122 + 32))(v127, v78, v123);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953AE0, &qword_27465E508);
  v84 = (v82 + *(result + 36));
  *v84 = v81;
  v84[1] = v80;
  return result;
}

uint64_t sub_2745D0A24()
{
  v1 = v0;
  v2 = sub_27463918C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = sub_274639ABC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 128);
  if (*(v1 + 136) == 1)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_27463BC0C();
    v14 = sub_27463A2FC();
    v23 = v3;
    v15 = v14;
    sub_274638CEC();

    v3 = v23;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v13, 0);
    (*(v10 + 8))(v12, v9);
    if (v25 != 1)
    {
LABEL_7:
      type metadata accessor for TextInputFieldView(0);
      sub_2744C68C0();
      (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2);
      v19 = sub_27463917C();
      v20 = *(v3 + 8);
      v20(v5, v2);
      v20(v8, v2);
      return v19 & 1;
    }
  }

  v16 = (v1 + *(type metadata accessor for TextInputFieldView(0) + 48));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v16) = v16[16];
  v25 = v17;
  v26 = v18;
  v27 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951420, &unk_27465E490);
  sub_2746390BC();
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  v19 = 0;
  return v19 & 1;
}

void sub_2745D0D1C(uint64_t a1, __n128 a2)
{
  v12 = sub_2746382DC();
  v3 = *(v12 - 8);
  *&v4 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(*(a1 + 24) + qword_28094A100) singleStateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &unk_28094F530, 0x277D7CA30);
  swift_dynamicCastMetatype();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_274458A14(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610);
  sub_27463920C();
  sub_27463896C();

  v7 = sub_27463BE9C();
  (*(v3 + 8))(v6, v12);
  type metadata accessor for TextInputFieldView(0);
  type metadata accessor for TextInputFieldView.CommitState();
  sub_2745CE024(&qword_280953A58, 255, type metadata accessor for TextInputFieldView.CommitState);
  v8 = sub_27463920C();
  v9 = *(v8 + 16);
  *(v8 + 16) = v7;
  v10 = v7;

  v11 = *(a1 + 64);
  v13 = v7;
  v11(&v13);
}

void sub_2745D0F88(void **a1, uint64_t a2, __n128 a3)
{
  v4 = sub_2746382DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *a1;
  type metadata accessor for TextInputFieldView(0);
  type metadata accessor for TextInputFieldView.CommitState();
  sub_2745CE024(&qword_280953A58, 255, type metadata accessor for TextInputFieldView.CommitState);
  v6 = *(sub_27463920C() + 16);
  v7 = v6;

  if (!v6 || (v7, v5 != v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
    sub_274458A14(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610);
    sub_27463920C();
    sub_27463BE7C();
    sub_27463897C();

    v8 = sub_27463920C();
    v9 = *(v8 + 16);
    *(v8 + 16) = 0;
  }

  sub_2745D117C();
}

void sub_2745D117C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29[-v3];
  v5 = *(*(v0 + 24) + qword_28094A100);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v6 = type metadata accessor for TextInputFieldView(0);
    v7 = (v0 + *(v6 + 48));
    v8 = *v7;
    v9 = *(v7 + 1);
    LOBYTE(v7) = v7[16];
    LOBYTE(v30[0]) = v8;
    v30[1] = v9;
    v31 = v7;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951420, &unk_27465E490);
    v11 = sub_2746390BC();
    if (v29[7] == 1)
    {
      (*(v0 + 48))(v30, v11);
      v12 = v30[0];
      if (v30[0])
      {
        sub_27463BE7C();

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v16 = sub_2746382DC();
      __swift_storeEnumTagSinglePayload(v4, v13, 1, v16);
      v18 = WFDateFieldParameter.hintText(for:)(v4, v17);
      v20 = v19;
      sub_27440CB1C(v4, &unk_2809530C0, &qword_274655D40);
      if (v20)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }

      if (v20)
      {
        v15 = v20;
      }

      else
      {
        v15 = 0xE000000000000000;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    v21 = *(v1 + *(v6 + 52));
    if (v21)
    {
      v22 = v21;
      v23 = sub_27443CDC8();
      v25 = v24;

      if (v23 == v14 && v25 == v15)
      {

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v27 = sub_27463C6BC();

        if (v27)
        {
        }

        else
        {
          v28 = v22;
          sub_27443CE38(v14, v15);
        }
      }
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
      sub_27463978C();
      __break(1u);
    }
  }
}

uint64_t TextFieldView.Style.hashValue.getter()
{
  v1 = *v0;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v1);
  return sub_27463C7AC();
}

uint64_t TextFieldView.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(v5, v1, sizeof(v5));
  *a1 = sub_274639B2C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809538B8, &qword_27465DF40);
  return sub_2745D1544(v5, (a1 + *(v3 + 44)));
}

uint64_t sub_2745D1544@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for VariableTextEditor(0);
  MEMORY[0x28223BE20](v3);
  v55 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  MEMORY[0x28223BE20](v8);
  v53 = &v42 - v9;
  v10 = a1[3];
  if (v10)
  {
    *&v60 = a1[2];
    *(&v60 + 1) = v10;
    sub_274412BBC();

    v11 = sub_27463A53C();
    v13 = v12;
    v51 = v15;
    v52 = v11;
    v49 = v14 & 1;
    sub_27440B094(v11, v15, v14 & 1);
    v50 = v13;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
  }

  v48 = *a1;
  v16 = a1[18];
  if (v16)
  {
    v44 = *(a1 + 8);
    v60 = *(a1 + 2);
    v43 = *(a1 + 24);
    v17 = *(a1 + 50);
    v18 = a1[7];
    v19 = *(a1 + 64);
    v20 = a1[9];
    v47 = a1[10];
    v21 = a1[11];
    v46 = a1[12];
    v22 = a1[14];
    v45 = a1[13];
    v58 = v22;
    v59 = v20;
    v57 = a1[15];
    v23 = v57;
    v24 = a1[16];
    v25 = a1[17];
    *(v7 + 18) = sub_2745BBDFC;
    *(v7 + 19) = 0;
    v7[160] = 0;
    *(v7 + 25) = swift_getKeyPath();
    v7[208] = 0;
    *(v7 + 27) = swift_getKeyPath();
    v7[224] = 0;
    *(v7 + 29) = swift_getKeyPath();
    v7[240] = 0;
    v26 = *(v3 + 108);
    *&v7[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
    swift_storeEnumTagMultiPayload();
    v27 = &v7[*(v3 + 112)];
    *v27 = swift_getKeyPath();
    v27[9] = 0;
    *v7 = v44;
    *(v7 + 8) = v60;
    *(v7 + 12) = v43;
    v7[41] = v17;
    *(v7 + 4) = v18;
    v7[40] = v19;
    *(v7 + 6) = v20;
    *(v7 + 8) = v21;
    v7[104] = 0;
    *(v7 + 14) = v22;
    *(v7 + 15) = v23;
    *(v7 + 16) = v24;
    *(v7 + 17) = v25;
    v28 = v16;

    sub_27448E448(&v60, v56);
    sub_2744342DC();
    v29 = v45;

    sub_2745D3E10();
    sub_2745D3E10();
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
    *(v7 + 21) = sub_27463950C();
    *(v7 + 22) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
    sub_274458A14(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610);
    v31 = sub_27463950C();
    v33 = v32;

    *(v7 + 23) = v31;
    *(v7 + 24) = v33;
    *(v7 + 7) = v47;
    *(v7 + 9) = 0;
    *(v7 + 10) = 0;
    *(v7 + 11) = v46;
    *(v7 + 12) = v29;
    v34 = v53;
    sub_2745D3E68();
    v35 = v55;
    sub_2745D3E10();
    v36 = v54;
    v38 = v51;
    v37 = v52;
    *v54 = v52;
    v36[1] = v38;
    v40 = v49;
    v39 = v50;
    v36[2] = v49;
    v36[3] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953A10, &unk_27465E3D8);
    sub_2745D3E10();
    sub_274483EE8(v37, v38, v40, v39);
    sub_274483F2C(v37, v38, v40, v39);
    sub_2745D3EC0(v34);
    sub_2745D3EC0(v35);
    return sub_274483F2C(v37, v38, v40, v39);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2745CE024(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);

    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2745D1B04()
{
  OUTLINED_FUNCTION_79();
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  OUTLINED_FUNCTION_19_8();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_2745D1B94, v3, v2);
}

uint64_t sub_2745D1B94()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_27448A3C0;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_84_0;
  v0[7].receiver = v2;
  v3 = type metadata accessor for TextInputParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2745D1D28(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745D1DC0, v4, v3);
}

uint64_t sub_2745D1DC0()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2745D1B04();
}

id sub_2745D1EB0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TextInputParameterSummaryEditor();
  v1 = objc_msgSendSuper2(&v3, sel_variableProvider);

  return v1;
}

uint64_t sub_2745D1F58(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TextInputParameterSummaryEditor();
  objc_msgSendSuper2(&v4, sel_setVariableProvider_, a1);
  sub_2745D1FA8();
  return swift_unknownObjectRelease();
}

void sub_2745D1FA8()
{
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteDataSource];
  if (v1)
  {
    v2 = v1;
    sub_2745BEA48([v0 variableProvider]);
  }
}

void sub_2745D2028(uint64_t a1, unsigned __int8 *a2)
{
  v41.receiver = v2;
  v41.super_class = type metadata accessor for TextInputParameterSummaryEditor();
  objc_msgSendSuper2(&v41, sel_textEntryWillBegin_allowMultipleLines_, a1, a2);
  v40 = *(*&v2[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_commitState] + 16);
  *(swift_allocObject() + 16) = v2;

  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953978, &qword_27465E300);
  sub_274458A14(&qword_280953980, &qword_280953978, &qword_27465E300);
  v6 = sub_274638FFC();

  *&v5[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_timerSubscription] = v6;

  v7 = OUTLINED_FUNCTION_6_25();
  v8 = [v7 isMultiline];

  *a2 = v8;
  v9 = [objc_allocWithZone(type metadata accessor for VariableAutocompleter()) init];
  sub_2745BEA48([v5 variableProvider]);
  if (([v5 isProcessing] & 1) != 0 || (v10 = OUTLINED_FUNCTION_6_25(), (v11 = sub_274505FCC(v10)) == 0))
  {

    v11 = MEMORY[0x277D84FA0];
  }

  sub_2745BEB28(v11);
  v12 = *&v5[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteDataSource];
  *&v5[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteDataSource] = v9;
  v13 = v9;

  swift_dynamicCastObjCProtocolUnconditional();
  swift_getObjectType();
  sub_274412734(0, &unk_2809539E8, 0x277D75C40);
  v14 = OUTLINED_FUNCTION_25_1();
  v17 = dynamic_cast_existential_0_superclass_unconditional(v14, v15, v16);
  v18 = [objc_allocWithZone(sub_274638A6C()) init];
  swift_unknownObjectRetain();
  sub_274638A5C();
  sub_27463885C();
  swift_allocObject();
  sub_2745CE024(&qword_28094CF90, 255, type metadata accessor for VariableAutocompleter);
  v19 = v13;
  sub_27463886C();
  sub_274638A3C();
  sub_2745CE024(&qword_2809539F8, v20, type metadata accessor for TextInputParameterSummaryEditor);
  OUTLINED_FUNCTION_19_8();
  swift_unknownObjectRetain();
  sub_274638A4C();
  v21 = *&v5[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteCoordinator];
  *&v5[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteCoordinator] = v18;
  v22 = v18;

  v23 = OUTLINED_FUNCTION_6_25();
  v24 = [v23 isSecureTextEntry];

  [v17 setSecureTextEntry_];
  v25 = OUTLINED_FUNCTION_6_25();
  v26 = [v25 keyboardType];

  WFKeyboardTypeFromString();
  OUTLINED_FUNCTION_18_15(v27, sel_setKeyboardType_);
  v28 = OUTLINED_FUNCTION_6_25();
  v29 = [v28 textContentType];

  v30 = WFTextContentTypeFromString();
  OUTLINED_FUNCTION_18_15(v31, sel_setTextContentType_);

  v32 = OUTLINED_FUNCTION_6_25();
  v33 = [v32 autocapitalizationType];

  WFAutocapitalizationTypeFromString();
  OUTLINED_FUNCTION_18_15(v34, sel_setAutocapitalizationType_);
  v35 = OUTLINED_FUNCTION_6_25();
  v36 = [v35 autocorrectionType];

  WFAutocorrectionTypeFromString();
  OUTLINED_FUNCTION_18_15(v37, sel_setAutocorrectionType_);
  v38 = OUTLINED_FUNCTION_6_25();
  LODWORD(v36) = [v38 smartQuotesDisabled];

  [v17 setSmartQuotesType_];
  v39 = OUTLINED_FUNCTION_6_25();
  LODWORD(v38) = [v39 smartDashesDisabled];

  [v17 setSmartDashesType_];
}

void sub_2745D25E0(void *a1, __n128 a2)
{
  sub_2746382DC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  if (a1)
  {
    v5 = objc_allocWithZone(MEMORY[0x277D7CA28]);
    v6 = a1;
    [v5 initWithAttributedString_];
    sub_27463821C();
    a1 = sub_2745CCAB0();

    v7 = OUTLINED_FUNCTION_4_3();
    v8(v7);
  }

  [v2 stageState_];

  *(*&v2[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_commitState] + 24) = 1;
}

void sub_2745D2774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextInputParameterSummaryEditor();
  objc_msgSendSuper2(&v2, sel_textEntryDidFinish);
  v1 = OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_timerSubscription;
  if (*&v0[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_timerSubscription])
  {

    sub_274638EBC();
  }

  *&v0[v1] = 0;

  sub_2745CCA38();
  if ((v0[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_isPickingActionOutput] & 1) == 0)
  {
    [v0 completeEditingWithTextAttachmentToEdit_];
  }
}

uint64_t sub_2745D2870(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    return [v1 processesIntoContentItems] ^ 1;
  }

  else
  {
    return 1;
  }
}

void sub_2745D28F8(void *a1, void (**a2)(void))
{
  if ([a1 isProcessing])
  {
    a2[2](a2);
  }

  else
  {
    sub_2745CCBBC(v4);
    v5 = [a1 textEntry];
    if (v5)
    {
      [v5 deleteBackward];
      swift_unknownObjectRelease();
    }
  }

  _Block_release(a2);
}

void sub_2745D29A4(void *a1, void (**a2)(void))
{
  if ([a1 isProcessing])
  {
    a2[2](a2);
  }

  else
  {
    sub_2745CCBBC(v3);
  }

  _Block_release(a2);
}

void sub_2745D2A1C(void *a1, void (**a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = sub_2746382DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v43 - v19;
  if (([a1 isProcessing] & 1) != 0 || (v21 = objc_opt_self(), (objc_msgSend(v21, sel_clipboardContainsVariableString) & 1) == 0))
  {
    a2[2](a2);
    goto LABEL_8;
  }

  if (![a1 variableProvider])
  {
    goto LABEL_8;
  }

  v47 = v11;
  v22 = [objc_opt_self() generalPasteboard];
  v23 = [v21 serializedVariableStringFromPasteboard_];

  if (!v23)
  {
    swift_unknownObjectRelease();
LABEL_8:

    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_27463825C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_27440CB1C(v9, &unk_2809530C0, &qword_274655D40);
LABEL_10:
    _Block_release(a2);
    return;
  }

  v46 = v23;
  v24 = *(v47 + 32);
  v24(v20, v9, v10);
  v25 = [a1 currentState];
  if (v25)
  {
    v26 = v25;
    sub_27463BE7C();

    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
    v24(v16, v6, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
    sub_2746382CC();
    if (__swift_getEnumTagSinglePayload(v6, 1, v10) != 1)
    {
      sub_27440CB1C(v6, &unk_2809530C0, &qword_274655D40);
    }
  }

  v27 = sub_2745CCB48();
  v29 = v28;
  v30 = sub_27463822C();
  v31 = sub_27463822C();
  v32 = [v30 stringByReplacingCharactersInRange:v27 withVariableString:{v29, v31}];

  sub_27463827C();
  sub_2746382AC();
  v33 = sub_274453594();

  if (v33 >= 2)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v34 = *(v47 + 8);
    v34(v13, v10);
    v34(v16, v10);
    v34(v20, v10);
    goto LABEL_10;
  }

  v35 = sub_27463822C();
  v36 = [v35 attributedString];

  v45 = *MEMORY[0x277D74060];
  v44 = [v36 length];
  v37 = swift_allocObject();
  *(v37 + 16) = a1;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2745D3C8C;
  *(v38 + 24) = v37;
  v43 = v37;
  aBlock[4] = sub_2745D3C94;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2745CDCCC;
  aBlock[3] = &block_descriptor_39;
  v39 = _Block_copy(aBlock);
  v40 = a1;

  [v36 enumerateAttribute:v45 inRange:0 options:v44 usingBlock:{0, v39}];
  _Block_release(v39);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if ((v39 & 1) == 0)
  {
    v41 = [v40 textEntry];
    if (v41)
    {
      [v41 insertAttributedText_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v42 = *(v47 + 8);
    v42(v13, v10);
    v42(v16, v10);
    v42(v20, v10);

    goto LABEL_10;
  }

  __break(1u);
}

void sub_2745D30DC()
{
  sub_2744342DC();
  if (v2)
  {
    sub_274412734(0, &qword_280953970, 0x277D7D7C8);
    if (swift_dynamicCast())
    {
      sub_2745CD664(v0);
    }
  }

  else
  {
    sub_27440CB1C(v1, &unk_28094A230, &qword_27464D1B0);
  }
}

void sub_2745D31A4(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

id sub_2745D3218(char *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for TextInputParameterSummaryEditor();
  v7 = [a1 parameter];
  v8 = [v6 variableResultTypeForParameter_];

  result = [a2 shouldDisplayEditorOnInsertionInContext_];
  if (result)
  {
    v10 = *&a1[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_textAttachmentToEdit];
    *&a1[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_textAttachmentToEdit] = a3;
    v11 = a3;

    return sub_27448A8A0();
  }

  return result;
}

void sub_2745D32C4(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7)
{
  a2[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_isPickingActionOutput] = 0;
  [a2 requestTextEntry];
  v14 = [a2 textEntry];
  if (v14)
  {
    [v14 setSelectedRange_];
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    v15 = a1;
    sub_2745CCDC0(v15, a5, a6, a7 & 1);
  }
}

id sub_2745D33C4(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteDataSource] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_textAttachmentToEdit] = 0;
  v3[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_isPickingActionOutput] = 0;
  v7 = OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_commitState;
  type metadata accessor for CommitState();
  swift_allocObject();
  *&v3[v7] = sub_2745B9364();
  *&v3[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_timerSubscription] = 0;
  *&v3[OBJC_IVAR____TtC14WorkflowEditor31TextInputParameterSummaryEditor_autocompleteCoordinator] = 0;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for TextInputParameterSummaryEditor();
  v8 = objc_msgSendSuper2(&v10, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v8;
}

id sub_2745D34E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextInputParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2745D3590()
{
  sub_27448E094();
  sub_27463880C();
  if (v0 != 2)
  {
    sub_2745CD8D4(v0, 0, 0, 1);
    sub_27448E0E8(v0);
  }
}

uint64_t sub_2745D360C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27463992C();
  *a1 = result & 1;
  return result;
}

void sub_2745D3664(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  [a3 setOverrideVariableName_];
}

uint64_t sub_2745D36D4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_27463B6AC();
  }

  return OUTLINED_FUNCTION_25_1();
}

unint64_t sub_2745D3764()
{
  result = qword_2809538C0;
  if (!qword_2809538C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809538C0);
  }

  return result;
}

uint64_t sub_2745D3800(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_2745D3840(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextFieldView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_2745D39BC(uint64_t a1)
{
  sub_274457F78(319, &qword_280953920, &qword_280953928, 0x277D7C950, type metadata accessor for Parameter);
  if (v1 <= 0x3F)
  {
    sub_274457F78(319, &qword_280953930, &unk_28094F530, 0x277D7CA30, type metadata accessor for StoredParameterState);
    if (v2 <= 0x3F)
    {
      sub_2745D3AE4(319, qword_28094E1A8, MEMORY[0x277CE02A8]);
      if (v3 <= 0x3F)
      {
        sub_27453EAA0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2745D3AE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_21_2();
    v4 = sub_27463919C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2745D3B70()
{
  result = qword_280953950;
  if (!qword_280953950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953948, &qword_27465E210);
    sub_2745CE024(&qword_280953958, 255, type metadata accessor for TextInputFieldView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953950);
  }

  return result;
}

uint64_t objectdestroy_62Tm()
{

  return swift_deallocObject();
}

double block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t dynamic_cast_existential_0_superclass_unconditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2745D3D30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27444C34C;
  v2 = OUTLINED_FUNCTION_5_0();

  return v3(v2);
}

uint64_t sub_2745D3E10()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t sub_2745D3E68()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t sub_2745D3EC0(uint64_t a1)
{
  v2 = type metadata accessor for VariableTextEditor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2745D3F44(uint64_t a1)
{
  sub_274457F78(319, &qword_280953920, &qword_280953928, 0x277D7C950, type metadata accessor for Parameter);
  if (v1 <= 0x3F)
  {
    sub_274457F78(319, &qword_280953930, &unk_28094F530, 0x277D7CA30, type metadata accessor for StoredParameterState);
    if (v2 <= 0x3F)
    {
      sub_274510804(319);
      if (v3 <= 0x3F)
      {
        sub_27453EAA0();
        if (v4 <= 0x3F)
        {
          sub_2745D3AE4(319, &qword_280949EF8, MEMORY[0x277CDF3E0]);
          if (v5 <= 0x3F)
          {
            sub_2745681F0();
            if (v6 <= 0x3F)
            {
              sub_274481024(319);
              if (v7 <= 0x3F)
              {
                sub_2745D40E4(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2745D40E4(uint64_t a1)
{
  if (!qword_280953A50)
  {
    type metadata accessor for TextInputFieldView.CommitState();
    sub_2745CE024(&qword_280953A58, 255, type metadata accessor for TextInputFieldView.CommitState);
    v1 = sub_27463922C();
    if (!v2)
    {
      atomic_store(v1, &qword_280953A50);
    }
  }
}

unint64_t sub_2745D417C()
{
  result = qword_280953A60;
  if (!qword_280953A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A68, &qword_27465E3E8);
    sub_2745D3B70();
    sub_274458A14(&qword_280953960, &qword_280953938, &qword_27465E200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953A60);
  }

  return result;
}

void sub_2745D4250()
{
  v1 = type metadata accessor for TextInputFieldView(0);
  OUTLINED_FUNCTION_53_0(v1);
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_2745D0D1C(v4, v2);
}

uint64_t objectdestroy_124Tm()
{
  v1 = type metadata accessor for TextInputFieldView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_2743F459C(*(v2 + 88), *(v2 + 96));
  sub_2743F45E8(*(v2 + 112), *(v2 + 120));
  sub_2743F45E8(*(v2 + 128), *(v2 + 136));
  v3 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463918C();
    OUTLINED_FUNCTION_7();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  sub_2743F459C(*(v2 + v1[14]), *(v2 + v1[14] + 8));

  return swift_deallocObject();
}

void sub_2745D4440(void **a1)
{
  v3 = type metadata accessor for TextInputFieldView(0);
  OUTLINED_FUNCTION_53_0(v3);
  v6 = v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2745D0F88(a1, v6, v4);
}

void sub_2745D44AC()
{
  v0 = type metadata accessor for TextInputFieldView(0);
  OUTLINED_FUNCTION_53_0(v0);
  sub_2745D117C();
}

unint64_t sub_2745D4504()
{
  result = qword_280953AB8;
  if (!qword_280953AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A78, &qword_27465E448);
    sub_274458A14(&unk_280953AC0, &qword_280953A70, &qword_27465E440);
    sub_274458A14(&unk_28094DDA0, &qword_280953AD0, &qword_274651698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953AB8);
  }

  return result;
}

unint64_t sub_2745D45E8()
{
  result = qword_280953AD8;
  if (!qword_280953AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A90, &qword_27465E460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A80, &qword_27465E450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A78, &qword_27465E448);
    sub_2745D4504();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_274458A14(&unk_28094D030, &qword_28094BC80, &qword_27464FA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953AD8);
  }

  return result;
}

unint64_t sub_2745D4720()
{
  result = qword_280953AE8;
  if (!qword_280953AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953AE0, &qword_27465E508);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953AA8, &qword_27465E478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953AA0, &qword_27465E470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A98, &qword_27465E468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953A90, &qword_27465E460);
    sub_2745D45E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_274458A14(&unk_28094D180, &qword_28094C600, &qword_27464FD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953AE8);
  }

  return result;
}

id OUTLINED_FUNCTION_6_25()
{

  return [v0 (v1 + 780)];
}

id OUTLINED_FUNCTION_18_15(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_2745D491C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2745D495C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2745D49EC(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v52 = sub_274639ABC();
  v4 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_34:
    sub_2745D5948(v47);
    return;
  }

  v6 = sub_27463C27C();
  if (!v6)
  {
    goto LABEL_34;
  }

LABEL_3:
  v71 = MEMORY[0x277D84F90];
  sub_2744514D4(0, v6 & ~(v6 >> 63), 0);
  v63 = v71;
  v66 = sub_2745DDCC0(a1);
  v67 = v7;
  v68 = v8 & 1;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v46[1] = v2;
    v9 = *(v47 + 8);
    v70 = *(v47 + 136);
    v10 = *(v47 + 128);
    v58 = v9;
    v59 = v10;
    v69 = v10;
    v57 = v70;
    v56 = type metadata accessor for ParameterStateStore();
    v11 = 0;
    v50 = (v4 + 8);
    v55 = OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action;
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v12 = a1;
    }

    v53 = v12;
    v49 = a1 + 56;
    v48 = a1 + 64;
    v60 = a1;
    v54 = v6;
    while (!__OFADD__(v11++, 1))
    {
      v14 = v66;
      v15 = v68;
      v62 = v67;
      sub_2745D573C(v66, v67, v68, a1);
      v17 = v16;
      v18 = [v16 key];
      v19 = sub_27463B6AC();
      v21 = v20;

      v22 = *(v58 + v55);
      if (v57)
      {
        v65 = v59;
        v23 = v22;
        v24 = v17;
        sub_274439BF0(&v69, v64, &unk_28094C670, &unk_27464E120);
      }

      else
      {
        v25 = v22;
        v26 = v17;
        sub_274439BF0(&v69, v64, &unk_28094C670, &unk_27464E120);
        sub_27463BC0C();
        v27 = sub_27463A2FC();
        sub_274638CEC();

        v28 = v51;
        sub_274639AAC();
        swift_getAtKeyPath();
        sub_274415174(&v69, &unk_28094C670, &unk_27464E120);
        (*v50)(v28, v52);
      }

      v29 = ParameterStateStore.__allocating_init(action:parameter:undoManager:)();

      v30 = v63;
      v71 = v63;
      v32 = *(v63 + 16);
      v31 = *(v63 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_2744514D4((v31 > 1), v32 + 1, 1);
        v30 = v71;
      }

      *(v30 + 16) = v32 + 1;
      v33 = (v30 + 24 * v32);
      v33[4] = v19;
      v33[5] = v21;
      v33[6] = v29;
      v63 = v30;
      if (v61)
      {
        a1 = v60;
        if (!v15)
        {
          goto LABEL_40;
        }

        if (sub_27463C24C())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v38 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953CA0, &qword_27465E7A8);
        v39 = sub_27463BA6C();
        sub_27463C2DC();
        v39(v64, 0);
      }

      else
      {
        a1 = v60;
        if (v15)
        {
          goto LABEL_41;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        v34 = 1 << *(v60 + 32);
        if (v14 >= v34)
        {
          goto LABEL_36;
        }

        v35 = v14 >> 6;
        v36 = *(v49 + 8 * (v14 >> 6));
        if (((v36 >> v14) & 1) == 0)
        {
          goto LABEL_37;
        }

        if (*(v60 + 36) != v62)
        {
          goto LABEL_38;
        }

        v37 = v36 & (-2 << (v14 & 0x3F));
        if (v37)
        {
          v34 = __clz(__rbit64(v37)) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v40 = v35 << 6;
          v41 = v35 + 1;
          v42 = (v48 + 8 * v35);
          while (v41 < (v34 + 63) >> 6)
          {
            v44 = *v42++;
            v43 = v44;
            v40 += 64;
            ++v41;
            if (v44)
            {
              sub_274468390(v14, v62, 0);
              v34 = __clz(__rbit64(v43)) + v40;
              goto LABEL_30;
            }
          }

          sub_274468390(v14, v62, 0);
        }

LABEL_30:
        v45 = *(a1 + 36);
        v66 = v34;
        v67 = v45;
        v68 = 0;
        v38 = v54;
      }

      if (v11 == v38)
      {
        sub_274468390(v66, v67, v68);
        sub_2745D5948(v47);
        return;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

id sub_2745D4F48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_27463B66C();

  v7 = [swift_getObjCClassFromMetadata() colorNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

uint64_t sub_2745D4FCC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];

  sub_2745E1974(v7);
  v9 = v8;
  *a1 = sub_274639C6C();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  sub_2745D5060(v3, v4, v1, v5, v6, v9, (a1 + 24));
}

uint64_t sub_2745D5060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (a2)
  {
    *&v85[0] = a1;
    *(&v85[0] + 1) = a2;
    sub_274412BBC();

    v8 = sub_27463A53C();
    v10 = v9;
    v12 = v11;
    sub_27463A46C();
    v13 = sub_27463A50C();
    v15 = v14;
    v17 = v16;

    sub_274412C10(v8, v10, v12 & 1);

    sub_27463ABCC();
    v18 = sub_27463A4DC();
    v49 = v19;
    v50 = v18;
    LOBYTE(v10) = v20;
    v22 = v21;

    sub_274412C10(v13, v15, v17 & 1);

    LOBYTE(v15) = sub_27463A31C();
    sub_2746390AC();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    LOBYTE(v85[0]) = v10 & 1;
    v79[0] = 0;
    v31 = v10 & 1;
    v32 = v15;
  }

  else
  {
    v49 = 0;
    v50 = 0;
    v22 = 0;
    v32 = 0;
    v31 = 0;
    v24 = 0;
    v26 = 0;
    v28 = 0;
    v30 = 0;
  }

  sub_274412734(0, qword_28094A770, 0x277D75348);
  if (qword_280949280 != -1)
  {
    swift_once();
  }

  v33 = qword_280965DC8;
  v34 = objc_opt_self();
  v35 = v33;
  v36 = sub_2745D4F48(0xD000000000000015, 0x8000000274689B50, v33, [v34 currentTraitCollection]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809521A0, &unk_27465ACC0);
  sub_2745D5694(a3, v85);
  sub_2745D49EC(a6, a3);
  *&v85[0] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953C70, &unk_27465E680);
  sub_27440CA78(&qword_280953C78, &qword_280953C70, &unk_27465E680, MEMORY[0x277D83970]);
  v38 = sub_2746387DC();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v39 = v36;
    v40 = v36;
  }

  else
  {
    v40 = 0;
  }

  v41 = *(a3 + 64);
  v90[0] = *(a3 + 72);
  v88 = *(a3 + 80);
  v89 = *(a3 + 96);
  v86 = *(a3 + 104);
  v87 = *(a3 + 120);
  KeyPath = swift_getKeyPath();
  v66 = 0;
  v67 = swift_getKeyPath();
  v68 = 0;
  v69 = swift_getKeyPath();
  v70 = 0;
  v71 = swift_getKeyPath();
  v72 = 0;
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  sub_274439BF0(v90, v85, &qword_280953C80, &qword_27465E750);
  sub_274439BF0(&v88, v85, &qword_280953C88, &unk_27465E758);
  sub_274439BF0(&v86, v85, &qword_280953C88, &unk_27465E758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280951040, &qword_2746594F0);
  sub_27463ACDC();
  v73 = v85[0];
  v74 = v85[1];
  v75 = v85[2];
  v77 = 0;
  v78 = 0;
  v57[0] = a4;
  v57[1] = a5;
  v57[2] = a6;
  v57[3] = v38;
  v57[4] = v41;
  v58 = 0;
  v59 = v90[0];
  v61 = v89;
  v60 = v88;
  v63 = v87;
  v62 = v86;
  v76 = sub_274550400;
  v64 = v40;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274528610();

  v42 = sub_27463979C();
  v44 = v43;
  v45 = swift_getKeyPath();
  sub_274556FE0(v57, v79);
  v81 = v42;
  v82 = v44;
  v83 = v45;
  v84 = 0;
  sub_2745D56CC(v79, v85);
  sub_274439BF0(v85, v53, &qword_280953C90, &qword_27465E790);
  __src[0] = v50;
  __src[1] = v49;
  __src[2] = v31;
  __src[3] = v22;
  __src[4] = v32;
  __src[5] = v24;
  __src[6] = v26;
  __src[7] = v28;
  __src[8] = v30;
  LOBYTE(__src[9]) = 0;
  memcpy(a7, __src, 0x49uLL);
  sub_274439BF0(v53, a7 + 80, &qword_280953C90, &qword_27465E790);
  sub_274439BF0(__src, v55, &qword_280953C98, &unk_27465E798);

  sub_274415174(v85, &qword_280953C90, &qword_27465E790);
  sub_274415174(v53, &qword_280953C90, &qword_27465E790);
  v55[0] = v50;
  v55[1] = v49;
  v55[2] = v31;
  v55[3] = v22;
  v55[4] = v32;
  v55[5] = v24;
  v55[6] = v26;
  v55[7] = v28;
  v55[8] = v30;
  v56 = 0;
  return sub_274415174(v55, &qword_280953C98, &unk_27465E798);
}

uint64_t sub_2745D56CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953C90, &qword_27465E790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2745D573C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x277C589E0](a1, a2, v7);
      sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
    if (sub_27463C25C() == *(a4 + 36))
    {
      sub_27463C26C();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_27463BF6C();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_27463BF7C();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

uint64_t WFDynamicResolveParameter.view(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953CC0, &qword_27465E7C0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v9 = *(v8 + 56);
  *(v4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  swift_storeEnumTagMultiPayload();
  v10 = v4 + v2[15];
  *v10 = swift_getKeyPath();
  *(v10 + 4) = 0;
  v11 = v4 + v2[16];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v4 + v2[17];
  *v12 = swift_getKeyPath();
  v12[40] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v13 = v1;
  sub_27444A564(v13);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *v4 = sub_27463950C();
  v4[1] = v14;
  v15 = [v13 localizedLabel];
  v16 = sub_27463B6AC();
  v18 = v17;

  v19 = [v13 localizedDescription];
  if (v19)
  {
    v20 = v19;
    v21 = sub_27463B6AC();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v4[2] = v16;
  v4[3] = v18;
  v4[4] = v21;
  v4[5] = v23;
  v24 = v4 + v2[12];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = v2[11];
  v26 = v13;

  sub_27444AD40(v26, 0, 4, 0, 0, v4 + v25);
  *(v4 + v2[13]) = 0;
  sub_2745D5C40(v4, v7);
  sub_27440CA78(&unk_280953CD0, &unk_280953CC0, &qword_27465E7C0, &protocol conformance descriptor for ParameterLayoutView<A>);
  return sub_27463AE9C();
}

uint64_t sub_2745D5C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953CC0, &qword_27465E7C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id WFDynamicResolveParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  v2 = v1;
  sub_274466DA4();
  v4 = [v1 localizedLabel];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = sub_27444C12C(v1);
  v10 = v9;
  v11 = sub_27463B66C();
  v12 = sub_27444AEE4(v5, v7, v8, v10, v11);
  if (a1)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = [v14 variable];
      if (v15)
      {
        v16 = v15;
        [v12 populateWith_];
      }

      else
      {
        v16 = [v2 localizedLabelForState_];
        [v12 populateWithString_];
      }

      swift_unknownObjectRelease();
    }
  }

  return v12;
}

id sub_2745D5E14(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFDynamicResolveParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2745D5E80()
{
  static WFDynamicResolveParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2745D5EA8(uint64_t a1, void *a2)
{
  v4 = [v2 parameter];
  v5 = [objc_allocWithZone(WFParameterValuePickerViewController) initWithParameter:v4 widgetFamily:3 allowsVariables:0 initialCollection:0 currentState:0 delegate:v2];

  sub_27463B70C("No options available.", 21);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v6 = qword_28094BB00;
  v7 = sub_27463B66C();
  v8 = sub_27463B66C();

  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = sub_27463B6AC();
  v12 = v11;

  sub_2745D6BF4(v10, v12, v5);
  [v5 setVariableProvider_];
  swift_unknownObjectRelease();
  [v5 setVariableUIDelegate_];
  swift_unknownObjectRelease();
  v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v13 setModalPresentationStyle_];
  v14 = [v13 popoverPresentationController];
  if (v14)
  {
    v15 = v14;
    [v14 setDelegate_];
    v16 = [a2 sourceView];
    [v15 setSourceView_];

    [a2 sourceRect];
    [v15 setSourceRect_];
    [v15 wf_forcePresentationInPresenterSceneIfNeeded];
  }

  v17 = [a2 sourceViewController];
  [v17 presentViewController:v13 animated:1 completion:0];

  v18 = *&v2[OBJC_IVAR____TtC14WorkflowEditor36DynamicResolveParameterSummaryEditor_presentedViewController];
  *&v2[OBJC_IVAR____TtC14WorkflowEditor36DynamicResolveParameterSummaryEditor_presentedViewController] = v13;
}

uint64_t sub_2745D6208()
{
  OUTLINED_FUNCTION_79();
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_2745D629C, v3, v2);
}

uint64_t sub_2745D629C()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_2745D63B4;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_40;
  v0[7].receiver = v2;
  v3 = type metadata accessor for DynamicResolveParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2745D63B4()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2745D64B8, v2, v1);
}

uint64_t sub_2745D64B8()
{
  OUTLINED_FUNCTION_79();

  sub_2745D6728(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2745D6598(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745D6630, v4, v3);
}

uint64_t sub_2745D6630()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2745D6208();
}

void sub_2745D66DC(uint64_t a1)
{
  [v1 commitState_];
  [v1 completeEditing];

  sub_2745D6728(1);
}

void sub_2745D6728(char a1)
{
  if (a1)
  {
    v2 = *&v1[OBJC_IVAR____TtC14WorkflowEditor36DynamicResolveParameterSummaryEditor_presentedViewController];
    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }

  v3 = [v1 parameter];
  v4 = [v3 delegate];

  if (v4)
  {
    v5 = [v1 parameter];
    [v4 dynamicResolveParameterDidEndResolutionSession_];

    swift_unknownObjectRelease();
  }
}

id sub_2745D6804(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditor36DynamicResolveParameterSummaryEditor_presentedViewController] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DynamicResolveParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745D68BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicResolveParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2745D6900()
{
  [v0 completeEditing];

  sub_2745D6728(1);
}

void sub_2745D6A14()
{
  [v0 completeEditing];

  sub_2745D6728(0);
}

uint64_t sub_2745D6B30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_2745D6598(v2, v3);
}

void sub_2745D6BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  [a3 setNoOptionAvailableTitle_];
}

void sub_2745D6C58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x277D84F90];
    sub_27445128C(0, v1, 0);
    v5 = sub_2745DDDF0();
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v1;
    v25 = v2 + 56;
    v26 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v27 = v3;
        v9 = sub_27463B6AC();
        v11 = v10;
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_27445128C(v12 > 1, v13 + 1, 1);
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v25;
        v2 = v26;
        v15 = 1 << *(v26 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v25 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v26 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_274468390(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_274468390(v5, v27, 0);
        }

LABEL_19:
        if (++v6 == v24)
        {
          return;
        }

        v4 = 0;
        v3 = *(v26 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_2745D6E90@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v205 = a1;
  v206 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D58, &qword_27465EA20);
  OUTLINED_FUNCTION_3_24(v2, &__src[6]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D60, &qword_27465EA28);
  OUTLINED_FUNCTION_3_24(v5, &__dst[10]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D68, &qword_27465EA30);
  OUTLINED_FUNCTION_3_24(v8, &__src[4]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D70, &qword_27465EA38);
  OUTLINED_FUNCTION_3_24(v11, &__dst[2]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D78, &qword_27465EA40);
  OUTLINED_FUNCTION_3_24(v14, &__dst[5]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D80, &qword_27465EA48);
  OUTLINED_FUNCTION_3_24(v17, &__src[11]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D88, &qword_27465EA50);
  OUTLINED_FUNCTION_3_24(v20, &__dst[7]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D90, &qword_27465EA58);
  OUTLINED_FUNCTION_3_24(v23, &v212);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953D98, &qword_27465EA60);
  OUTLINED_FUNCTION_3_24(v26, &__src[10]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DA0, &qword_27465EA68);
  OUTLINED_FUNCTION_3_24(v29, &__src[5]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v30);
  v32 = v199 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DA8, &qword_27465EA70);
  OUTLINED_FUNCTION_3_24(v33, __src);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DB0, &qword_27465EA78);
  OUTLINED_FUNCTION_3_24(v36, &__dst[9]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DB8, &qword_27465EA80);
  OUTLINED_FUNCTION_3_24(v39, &__src[1]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v40);
  v42 = v199 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DC0, &qword_27465EA88);
  OUTLINED_FUNCTION_3_24(v43, &v209);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DC8, &qword_27465EA90);
  OUTLINED_FUNCTION_3_24(v46, &__dst[3]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DD0, &qword_27465EA98);
  OUTLINED_FUNCTION_3_24(v49, &v206);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v50);
  v52 = v199 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DD8, &qword_27465EAA0);
  OUTLINED_FUNCTION_3_24(v53, &__dst[4]);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953DE0, &qword_27465EAA8);
  OUTLINED_FUNCTION_3_24(v56, &v210);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953DE8, &unk_27465EAB0);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v60);
  OUTLINED_FUNCTION_33_6();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA40, &unk_274655700);
  MEMORY[0x277C575F0](__src);
  v62 = __src[0];
  v63 = [__src[0] valueType];

  switch(v63)
  {
    case 0uLL:
      v64 = OUTLINED_FUNCTION_30_12();
      v204 = sub_2745D86D0(v64, v65, v66);
      OUTLINED_FUNCTION_33_6();

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_31_12();
      v67 = __src[2];
      OUTLINED_FUNCTION_12_1();
      v68 = swift_allocObject();
      OUTLINED_FUNCTION_27_13(v68);
      OUTLINED_FUNCTION_12_1();
      v69 = swift_allocObject();
      OUTLINED_FUNCTION_27_13(v69);

      v70 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
      OUTLINED_FUNCTION_43_5(sub_2745DB928, v71, sub_2745DB92C);
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &unk_28094F530, 0x277D7CA30);
      OUTLINED_FUNCTION_4_33();
      OUTLINED_FUNCTION_44_6();
      v72 = __dst[2];
      v73 = *MEMORY[0x277D7A628];
      v74 = swift_allocObject();
      v75 = OUTLINED_FUNCTION_8_27(v74);
      __src[7] = sub_2745DB934;
      __src[8] = v75;
      LOBYTE(__src[9]) = 0;
      sub_2745DA57C();
      v76 = v73;

      v77 = v72;
      OUTLINED_FUNCTION_34_10();
      sub_27463A86C();
      memcpy(__dst, __src, 0x49uLL);
      sub_2745DA94C(__dst);
      OUTLINED_FUNCTION_36_8(v73, v52);
      OUTLINED_FUNCTION_21_16();
      goto LABEL_6;
    case 1uLL:
      OUTLINED_FUNCTION_23_15();

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_12_22();
      v143 = *(v142 - 256);
      OUTLINED_FUNCTION_12_1();
      v144 = swift_allocObject();
      OUTLINED_FUNCTION_26_13(v144);
      OUTLINED_FUNCTION_12_1();
      v145 = swift_allocObject();
      OUTLINED_FUNCTION_26_13(v145);

      v146 = v143;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
      OUTLINED_FUNCTION_42_8(sub_2745DA8A0, v147, sub_2745DA8A4);
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &qword_28094F9C0, 0x277D7C378);
      OUTLINED_FUNCTION_4_33();
      sub_27463AEDC();
      v106 = __dst[2];
      type metadata accessor for CollectionPropertyListItemConfiguration();
      OUTLINED_FUNCTION_14_17();
      sub_2745DA8A8(v148, v149, v150);
      OUTLINED_FUNCTION_21_2();
      v151 = sub_27463979C();
      OUTLINED_FUNCTION_40_8(v151, v152);
      v112 = "Configuration";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953E08, &qword_27465EAC0);
      OUTLINED_FUNCTION_20_18(&qword_280953E00);
      OUTLINED_FUNCTION_13_18();
      v153 = v199[3];
      sub_27463A86C();

      OUTLINED_FUNCTION_36_8(v153, v202);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      sub_2745DA0D0();
      OUTLINED_FUNCTION_34_10();
      sub_274639DDC();
      OUTLINED_FUNCTION_5_37("Configuration", &__dst[8]);
      OUTLINED_FUNCTION_15_20();
      goto LABEL_9;
    case 2uLL:
      OUTLINED_FUNCTION_23_15();

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_12_22();
      v101 = *(v100 - 256);
      OUTLINED_FUNCTION_12_1();
      v102 = swift_allocObject();
      OUTLINED_FUNCTION_26_13(v102);
      OUTLINED_FUNCTION_12_1();
      v103 = swift_allocObject();
      OUTLINED_FUNCTION_26_13(v103);

      v104 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
      OUTLINED_FUNCTION_42_8(sub_2745DB928, v105, sub_2745DB92C);
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &qword_28094F9B0, 0x277D7C148);
      OUTLINED_FUNCTION_4_33();
      sub_27463AEDC();
      v106 = __dst[2];
      type metadata accessor for CollectionPropertyListItemConfiguration();
      OUTLINED_FUNCTION_14_17();
      sub_2745DA8A8(v107, v108, v109);
      OUTLINED_FUNCTION_21_2();
      v110 = sub_27463979C();
      OUTLINED_FUNCTION_40_8(v110, v111);
      v112 = "editor.list.value.dictionary";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953E40, &unk_27465EAC8);
      OUTLINED_FUNCTION_20_18(&qword_280953E38);
      OUTLINED_FUNCTION_13_18();
      v113 = v199[2];
      sub_27463A86C();

      OUTLINED_FUNCTION_22_10(v113, __dst);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_16();
      sub_2745DA708(v114, v115, v116, v117);
      v118 = sub_2745DA2C8();
      OUTLINED_FUNCTION_32_12(v118);
      OUTLINED_FUNCTION_5_37("editor.list.value.dictionary", &__dst[8]);
      OUTLINED_FUNCTION_21_16();
LABEL_9:
      swift_storeEnumTagMultiPayload();
      sub_2745DA1BC();
      sub_2745DA3B4();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_24_11();
      sub_274639DDC();
      OUTLINED_FUNCTION_38_8(v112);
      OUTLINED_FUNCTION_5_37(v106, &v211);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA440();
      sub_2745DA814();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_3_39();
      sub_274639DDC();
      OUTLINED_FUNCTION_38_8(v106);
      goto LABEL_12;
    case 3uLL:
      v119 = OUTLINED_FUNCTION_30_12();
      v204 = sub_2745D86D0(v119, v120, v121);
      OUTLINED_FUNCTION_33_6();

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_31_12();
      v122 = __src[2];
      OUTLINED_FUNCTION_12_1();
      v123 = swift_allocObject();
      OUTLINED_FUNCTION_27_13(v123);
      OUTLINED_FUNCTION_12_1();
      v124 = swift_allocObject();
      OUTLINED_FUNCTION_27_13(v124);

      v125 = v122;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
      OUTLINED_FUNCTION_43_5(sub_2745DB928, v126, sub_2745DB92C);
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &unk_28094F530, 0x277D7CA30);
      OUTLINED_FUNCTION_4_33();
      OUTLINED_FUNCTION_44_6();
      v72 = __dst[2];
      v127 = *MEMORY[0x277D7A640];
      v128 = swift_allocObject();
      v129 = OUTLINED_FUNCTION_8_27(v128);
      __src[7] = sub_2745DA940;
      __src[8] = v129;
      LOBYTE(__src[9]) = 0;
      sub_2745DA57C();
      v130 = v127;

      v131 = v72;
      OUTLINED_FUNCTION_34_10();
      sub_27463A86C();
      memcpy(__dst, __src, 0x49uLL);
      sub_2745DA94C(__dst);
      OUTLINED_FUNCTION_36_8(v127, v52);
      OUTLINED_FUNCTION_15_20();
LABEL_6:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_1();
      sub_2745DA708(v132, v133, v134, v135);
      v136 = v201;
      sub_274639DDC();
      OUTLINED_FUNCTION_5_37(v136, &__dst[6]);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      sub_2745DA4CC();
      sub_2745DA5D0();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_17();
      sub_274639DDC();
      OUTLINED_FUNCTION_38_8(v136);
      OUTLINED_FUNCTION_5_37(v72, &v211);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      sub_2745DA440();
      sub_2745DA814();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_3_39();
      sub_274639DDC();
      OUTLINED_FUNCTION_38_8(v72);
      goto LABEL_12;
    case 4uLL:
      OUTLINED_FUNCTION_23_15();
      v79 = *(v78 - 256);

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_12_22();
      v81 = *(v80 - 256);
      OUTLINED_FUNCTION_12_1();
      v82 = swift_allocObject();
      v82[2] = 0;
      v82[3] = 0;
      v82[4] = v32;
      v82[5] = v63;
      v82[6] = v81;
      OUTLINED_FUNCTION_12_1();
      v83 = swift_allocObject();
      v83[2] = 0;
      v83[3] = 0;
      v83[4] = v32;
      v83[5] = v63;
      v83[6] = v81;

      v84 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
      sub_27463AF0C();
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &qword_280953EB0, 0x277D7C198);
      OUTLINED_FUNCTION_4_33();
      sub_27463AEDC();
      v85 = __dst[0];
      v86 = __dst[1];
      v87 = __dst[2];
      __dst[0] = v79;
      __dst[1] = v85;
      __dst[2] = v86;
      __dst[3] = v87;
      sub_2745DA6B4();
      OUTLINED_FUNCTION_13_18();
      sub_27463A86C();

      OUTLINED_FUNCTION_36_8(v42, v200);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_16();
      OUTLINED_FUNCTION_7_1();
      sub_2745DA708(v88, v89, v90, v91);
      OUTLINED_FUNCTION_16_20();
      sub_2745DA708(v92, v93, v94, v95);
      OUTLINED_FUNCTION_28_17();
      sub_274639DDC();
      OUTLINED_FUNCTION_41_6();
      sub_2744626F0(v96, v97, &qword_280953DB0, &qword_27465EA78);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA4CC();
      sub_2745DA5D0();
      OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_25_17();
      sub_274639DDC();
      sub_27440CB1C(v62, &qword_280953DB0, &qword_27465EA78);
      OUTLINED_FUNCTION_41_6();
      sub_2744626F0(v98, v99, &qword_280953DE0, &qword_27465EAA8);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      sub_2745DA440();
      sub_2745DA814();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_3_39();
      sub_274639DDC();
      sub_27440CB1C(v61, &qword_280953DE0, &qword_27465EAA8);
      goto LABEL_12;
    case 5uLL:
      OUTLINED_FUNCTION_23_15();
      v155 = *(v154 - 256);

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_31_12();
      v157 = *(v156 - 256);
      v158 = __src[2];
      OUTLINED_FUNCTION_12_1();
      v159 = swift_allocObject();
      v159[2] = 0;
      v159[3] = 0;
      v159[4] = v63;
      v159[5] = v157;
      v159[6] = v158;
      OUTLINED_FUNCTION_12_1();
      v160 = swift_allocObject();
      v160[2] = 0;
      v160[3] = 0;
      v160[4] = v63;
      v160[5] = v157;
      v160[6] = v158;

      v161 = v158;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
      sub_27463AF0C();
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &qword_280953EA8, 0x277D7CA18);
      OUTLINED_FUNCTION_4_33();
      OUTLINED_FUNCTION_44_6();
      v162 = __dst[0];
      v163 = __dst[1];
      v164 = __dst[2];
      __dst[0] = v155;
      __dst[1] = v162;
      __dst[2] = v163;
      __dst[3] = v164;
      sub_2745DA7C0();
      OUTLINED_FUNCTION_13_18();
      sub_27463A86C();

      sub_2744626F0(v32, v200, &qword_280953DA0, &qword_27465EA68);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_16();
      sub_2745DA708(v165, v166, v167, v168);
      OUTLINED_FUNCTION_16_20();
      sub_2745DA708(v169, &qword_280953DA0, &qword_27465EA68, v170);
      OUTLINED_FUNCTION_28_17();
      sub_274639DDC();
      OUTLINED_FUNCTION_41_6();
      sub_2744626F0(v171, v172, &qword_280953DB0, &qword_27465EA78);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA4CC();
      sub_2745DA5D0();
      OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_25_17();
      sub_274639DDC();
      sub_27440CB1C(v62, &qword_280953DB0, &qword_27465EA78);
      OUTLINED_FUNCTION_41_6();
      sub_2744626F0(v173, v174, &qword_280953DE0, &qword_27465EAA8);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      sub_2745DA440();
      sub_2745DA814();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_3_39();
      sub_274639DDC();
      sub_27440CB1C(v61, &qword_280953DE0, &qword_27465EAA8);
      v175 = v32;
      v176 = &qword_280953DA0;
      v177 = &qword_27465EA68;
      return sub_27440CB1C(v175, v176, v177);
    case 6uLL:
      v178 = OUTLINED_FUNCTION_30_12();
      v180 = *(v179 - 256);
      v183 = sub_2745D86D0(v178, v181, v182);
      v185 = v184;
      OUTLINED_FUNCTION_33_6();

      OUTLINED_FUNCTION_19_16();
      OUTLINED_FUNCTION_31_12();
      v187 = *(v186 - 256);
      v188 = __src[2];
      OUTLINED_FUNCTION_12_1();
      v189 = swift_allocObject();
      v189[2] = 0;
      v189[3] = 0;
      v189[4] = v63;
      v189[5] = v187;
      v189[6] = v188;
      OUTLINED_FUNCTION_12_1();
      v190 = swift_allocObject();
      v190[2] = 0;
      v190[3] = 0;
      v190[4] = v63;
      v190[5] = v187;
      v190[6] = v188;

      v191 = v188;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
      sub_27463AF0C();
      OUTLINED_FUNCTION_1_39();
      sub_274412734(0, &qword_280953EA0, 0x277D7C1D0);
      OUTLINED_FUNCTION_4_33();
      OUTLINED_FUNCTION_44_6();
      sub_27450B23C(v183, v185, v180, __dst[0], __dst[1], __dst[2], __src);
      sub_2745DA274();
      OUTLINED_FUNCTION_13_18();
      v192 = v199[1];
      sub_27463A86C();
      memcpy(__dst, __src, 0x61uLL);
      sub_2745DA8EC(__dst);
      OUTLINED_FUNCTION_22_10(v192, __dst);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_16();
      OUTLINED_FUNCTION_7_1();
      sub_2745DA708(v193, v194, v195, v196);
      v197 = sub_2745DA2C8();
      OUTLINED_FUNCTION_32_12(v197);
      OUTLINED_FUNCTION_5_37(v61, &__dst[8]);
      OUTLINED_FUNCTION_21_16();
      swift_storeEnumTagMultiPayload();
      sub_2745DA1BC();
      sub_2745DA3B4();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_24_11();
      sub_274639DDC();
      OUTLINED_FUNCTION_38_8(v61);
      OUTLINED_FUNCTION_5_37(v188, &v211);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA440();
      sub_2745DA814();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_3_39();
      sub_274639DDC();
      OUTLINED_FUNCTION_38_8(v188);
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA0D0();
      v137 = v203;
      sub_274639DDC();
      OUTLINED_FUNCTION_22_10(v137, &__dst[8]);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA1BC();
      sub_2745DA3B4();
      v138 = v204;
      OUTLINED_FUNCTION_24_11();
      sub_274639DDC();
      OUTLINED_FUNCTION_7_1();
      sub_27440CB1C(v139, v140, v141);
      OUTLINED_FUNCTION_22_10(v138, &v211);
      OUTLINED_FUNCTION_15_20();
      swift_storeEnumTagMultiPayload();
      sub_2745DA440();
      sub_2745DA814();
      OUTLINED_FUNCTION_6_26();
      OUTLINED_FUNCTION_3_39();
      sub_274639DDC();
LABEL_12:
      OUTLINED_FUNCTION_7_1();
      return sub_27440CB1C(v175, v176, v177);
  }
}

uint64_t sub_2745D86D0(void *a1, void *a2, void *a3)
{
  v6 = objc_opt_self();
  v13[1] = a1;
  v13[2] = a2;
  v13[3] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FA40, &unk_274655700);
  MEMORY[0x277C575F0](v13, v7);
  v8 = v13[0];
  v9 = [v13[0] valueType];

  v10 = [v6 localizedTitleForValueType_];
  v11 = sub_27463B6AC();

  return v11;
}

uint64_t sub_2745D87A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  v9 = sub_2746382DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280953EB8, &unk_27465EAD8);
  MEMORY[0x277C575F0](&v17, v13);
  v14 = v17;
  if (v17)
  {
    sub_27463BE7C();

    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    sub_27463828C();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_27440CB1C(v8, &unk_2809530C0, &qword_274655D40);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  swift_allocObject();
  return sub_2746388DC();
}

uint64_t sub_2745D89A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_274458A14(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610);
  v2 = sub_27463920C();
  v16 = *v0;
  v15 = *(v0 + 16);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v1, 0x49uLL);
  v14 = *(v1 + 24);
  v4 = *MEMORY[0x277D7A5C0];
  sub_27448E448(&v16, __dst);
  sub_2744626F0(&v15, __dst, &unk_280953A00, &qword_27464F8C0);
  sub_2745DB640(v1, __dst);
  sub_2745DB678(&v14, __dst);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745DA8A8(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
  v5 = v4;
  v6 = sub_27463979C();
  __src[2] = v16;
  *&__src[0] = v2;
  BYTE8(__src[0]) = 2;
  __src[1] = 0uLL;
  LOWORD(__src[3]) = 256;
  BYTE2(__src[3]) = 0;
  *(&__src[3] + 1) = 0;
  LOBYTE(__src[4]) = 0;
  *(&__src[4] + 1) = v15;
  __src[5] = xmmword_274653F30;
  *&__src[6] = sub_2745DB638;
  *(&__src[6] + 1) = v3;
  *&__src[7] = v14;
  *(&__src[7] + 1) = v5;
  __src[8] = xmmword_27464F170;
  *&__src[9] = v6;
  *(&__src[9] + 1) = v7;
  __dst[0] = *(v1 + 32);
  *&__dst[1] = *(v1 + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280953EB8, &unk_27465EAD8);
  MEMORY[0x277C575F0](&v12, v8);
  v9 = v12;
  v10 = swift_allocObject();
  memcpy((v10 + 16), v1, 0x49uLL);
  sub_2745DB640(v1, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953F70, &qword_27465E488);
  sub_274506594();
  sub_2745DB750();
  sub_27463AA4C();

  memcpy(__dst, __src, sizeof(__dst));
  return sub_274510984(__dst);
}

uint64_t sub_2745D8CA4(uint64_t a1, __n128 a2)
{
  v2 = sub_2746382DC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_274412734(0, &unk_28094F530, 0x277D7CA30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_274458A14(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610);
  sub_27463920C();
  sub_27463896C();

  sub_27463BE8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280953EB8, &unk_27465EAD8);
  return sub_27463AEBC();
}

uint64_t sub_2745D8E0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_2746382DC();
  v11 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809532C0, &qword_27464F610);
  sub_274458A14(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610);
  sub_27463920C();
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280953EB8, &unk_27465EAD8);
  MEMORY[0x277C575F0](&v12, v8);
  v9 = v12;
  if (v12)
  {
    sub_27463BE7C();

    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    (*(v11 + 32))(v7, v4, v5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    sub_27463828C();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_27440CB1C(v4, &unk_2809530C0, &qword_274655D40);
    }
  }

  sub_27463897C();
}

uint64_t sub_2745D90AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a3;
  *&v78 = a4;
  v75 = a1;
  v76 = a2;
  v80 = a5;
  v5 = sub_274637E2C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274637F2C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_274412734(0, &unk_28094D230, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953F58, &unk_27465EE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746541E0;
  v12 = *MEMORY[0x277D7CE70];
  v13 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CE70];
  *(inited + 40) = 0x6E61656C6F6F62;
  *(inited + 48) = 0xE700000000000000;
  v14 = *MEMORY[0x277D7CE38];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110, &qword_27464FCD0);
  *(inited + 80) = &unk_288361A88;
  v16 = *MEMORY[0x277D7CE30];
  v73 = v15;
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_27464AEE0;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  v72 = sub_27463B70C("True", 4);
  v22 = v21;
  v23 = sub_27463B70C("True", 4);
  v25 = v24;
  v26 = v10;
  sub_274637F0C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v27 = qword_28094BB00;
  v28 = [qword_28094BB00 bundleURL];
  sub_274637E0C();

  v29 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  *(v17 + 32) = sub_2745DB4BC(v72, v22, v23, v25, 0, 0, v26, v7);
  v30 = sub_27463B70C("False", 5);
  v32 = v31;
  v33 = sub_27463B70C("False", 5);
  v35 = v34;
  sub_274637F0C();
  v36 = [v27 bundleURL];
  sub_274637E0C();

  v37 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  *(v17 + 40) = sub_2745DB4BC(v30, v32, v33, v35, 0, 0, v26, v7);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953F98, &qword_27465EE38);
  *(inited + 120) = v17;
  v39 = *MEMORY[0x277D7CE00];
  *(inited + 144) = v38;
  *(inited + 152) = v39;
  *(inited + 160) = 0x65736C6166;
  *(inited + 168) = 0xE500000000000000;
  v40 = *MEMORY[0x277D7CE20];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v40;
  sub_274412734(0, &qword_280953FA0, 0x277D7C3E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = v39;
  v43 = v40;
  v44 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_2745DA8A8(&qword_28094BAE0, 255, type metadata accessor for WFVariableType);
  v45 = sub_27463BA4C();

  v46 = v75;
  v47 = sub_2745F3630(v75, v45);
  sub_2745D6C58(v47);
  v49 = v48;

  *(inited + 224) = v73;
  *(inited + 200) = v49;
  _s3__C3KeyVMa_0(0);
  sub_2745DA8A8(&qword_280949AD8, 255, _s3__C3KeyVMa_0);
  v50 = sub_27463B4DC();
  v51 = sub_274497328(v50);
  v74 = [objc_allocWithZone(MEMORY[0x277D7C3E8]) initWithDefinition_];

  sub_27463B9CC();
  v52 = v78;
  v53 = v78;

  v54 = v76;

  v55 = v77;

  v56 = sub_27463B9BC();
  v57 = swift_allocObject();
  v58 = MEMORY[0x277D85700];
  v57[2] = v56;
  v57[3] = v58;
  v57[4] = v46;
  v57[5] = v54;
  v57[6] = v55;
  v57[7] = v52;

  v59 = v53;
  v60 = sub_27463B9BC();
  v61 = swift_allocObject();
  v61[2] = v60;
  v61[3] = v58;
  v61[4] = v46;
  v61[5] = v54;
  v61[6] = v55;
  v61[7] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
  sub_27463AF0C();
  v78 = v81;
  v62 = v82;
  type metadata accessor for BindingParameterStateDataSource();
  v63 = swift_allocObject();
  *(v63 + 16) = v78;
  *(v63 + 32) = v62;
  type metadata accessor for ParameterStateStore();
  v64 = swift_allocObject();
  sub_27458265C(v63, v64, v65, v66, v67, v68, v69, v70, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, v80);
  return sub_27444AA9C(v74, 0, 4, 0, 0, v80);
}

void sub_2745D9728(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v8[1] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953FA8, &qword_27465EE40);
  MEMORY[0x277C575F0](v8, v5);
  v6 = v8[0];
  if (v8[0])
  {
    v7 = sub_2745D97A0();
  }

  else
  {
    v7 = 0;
  }

  *a4 = v7;
}

id sub_2745D97A0()
{
  v1 = [v0 variable];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithVariable_];
  }

  else
  {
    v4 = [v0 value];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 number];

      if (v6)
      {
        [v6 BOOLValue];
      }
    }

    v2 = sub_27463B66C();

    v3 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];
  }

  v7 = v3;

  return v7;
}

uint64_t sub_2745D98AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*a1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    sub_2745D9960();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D7C198]) initWithBoolValue_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953FA8, &qword_27465EE40);
  return sub_27463AEBC();
}

id sub_2745D9960()
{
  v1 = [v0 variable];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D7C198]) initWithVariable_];

    return v3;
  }

  else
  {
    v5 = [v0 value];
    if (!v5)
    {
      sub_274412734(0, &unk_28094D720, 0x277CCACA8);
      v5 = sub_27463BFAC();
    }

    v6 = sub_27463B6AC();
    v8 = v7;

    if (v6 == 1702195828 && v8 == 0xE400000000000000)
    {

      v10 = 1;
    }

    else
    {
      v10 = sub_27463C6BC();
    }

    v11 = objc_allocWithZone(MEMORY[0x277D7C198]);

    return [v11 initWithBoolValue_];
  }
}

uint64_t sub_2745D9AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_274412734(0, &unk_28094D230, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953F58, &unk_27465EE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746486A0;
  v10 = *MEMORY[0x277D7CE70];
  v11 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CE70];
  *(inited + 40) = 0x656C626169726176;
  *(inited + 48) = 0xE800000000000000;
  v12 = *MEMORY[0x277D7CE20];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  sub_274412734(0, &unk_280953F60, 0x277D7CA20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = v10;
  v15 = v12;
  v16 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_2745DA8A8(&qword_28094BAE0, 255, type metadata accessor for WFVariableType);
  v17 = sub_27463BA4C();

  v18 = sub_2745F3630(a1, v17);
  sub_2745D6C58(v18);
  v20 = v19;

  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D110, &qword_27464FCD0);
  *(inited + 80) = v20;
  _s3__C3KeyVMa_0(0);
  sub_2745DA8A8(&qword_280949AD8, 255, _s3__C3KeyVMa_0);
  v21 = sub_27463B4DC();
  v22 = sub_274497328(v21);
  v23 = [objc_allocWithZone(MEMORY[0x277D7CA20]) initWithDefinition_];

  sub_27463B9CC();
  v24 = a4;

  v25 = sub_27463B9BC();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = a1;
  v26[5] = a2;
  v26[6] = a3;
  v26[7] = a4;

  v28 = v24;
  v29 = sub_27463B9BC();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v27;
  v30[4] = a1;
  v30[5] = a2;
  v30[6] = a3;
  v30[7] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B380, &qword_27464B110);
  sub_27463AF0C();
  type metadata accessor for BindingParameterStateDataSource();
  v31 = swift_allocObject();
  *(v31 + 16) = v42;
  *(v31 + 32) = v43;
  type metadata accessor for ParameterStateStore();
  v32 = swift_allocObject();
  sub_27458265C(v31, v32, v33, v34, v35, v36, v37, v38, v42, *(&v42 + 1), a5, v42, *(&v42 + 1), v43, v44, v45, v46, v47);
  return sub_27444AD54(v23, 0, 4, 0, 0, v41);
}

void *sub_2745D9E7C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v7[1] = a1;
  v7[2] = a2;
  v7[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953FB8, &qword_27465EE48);
  result = MEMORY[0x277C575F0](v7, v5);
  *a4 = v7[0];
  return result;
}

uint64_t sub_2745D9ED4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953FB8, &qword_27465EE48);
  return sub_27463AEBC();
}

uint64_t sub_2745D9FAC(uint64_t a1)
{
  v5 = *(v1 + 8);
  v6 = *(v1 + 24);
  sub_27463C0AC();
  v2 = sub_27463AF4C();
  MEMORY[0x277C575F0](&v4, v2);
  return v4;
}

uint64_t sub_2745DA008(uint64_t a1, uint64_t a2)
{
  sub_27463C0AC();
  sub_27463AF4C();
  return sub_27463AEBC();
}

uint64_t sub_2745DA068@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CollectionPropertyListItemConfiguration();
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

unint64_t sub_2745DA0D0()
{
  result = qword_280953DF8;
  if (!qword_280953DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953D68, &qword_27465EA30);
    sub_274458A14(&qword_280953E00, &unk_280953E08, &qword_27465EAC0);
    sub_2745DA8A8(&qword_28094A6C0, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953DF8);
  }

  return result;
}

unint64_t sub_2745DA1BC()
{
  result = qword_280953E18;
  if (!qword_280953E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953D88, &qword_27465EA50);
    sub_2745DA708(&qword_280953E20, &qword_280953D98, &qword_27465EA60, sub_2745DA274);
    sub_2745DA2C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E18);
  }

  return result;
}

unint64_t sub_2745DA274()
{
  result = qword_280953E28;
  if (!qword_280953E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E28);
  }

  return result;
}

unint64_t sub_2745DA2C8()
{
  result = qword_280953E30;
  if (!qword_280953E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953D70, &qword_27465EA38);
    sub_274458A14(&qword_280953E38, &qword_280953E40, &unk_27465EAC8);
    sub_2745DA8A8(&qword_28094A6C0, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E30);
  }

  return result;
}

unint64_t sub_2745DA3B4()
{
  result = qword_280953E48;
  if (!qword_280953E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953D60, &qword_27465EA28);
    sub_2745DA0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E48);
  }

  return result;
}

unint64_t sub_2745DA440()
{
  result = qword_280953E50;
  if (!qword_280953E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953DE0, &qword_27465EAA8);
    sub_2745DA4CC();
    sub_2745DA5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E50);
  }

  return result;
}

unint64_t sub_2745DA4CC()
{
  result = qword_280953E58;
  if (!qword_280953E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953DD8, &qword_27465EAA0);
    sub_2745DA708(&qword_280953E60, &unk_280953DE8, &unk_27465EAB0, sub_2745DA57C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953E58);
  }

  return result;
}