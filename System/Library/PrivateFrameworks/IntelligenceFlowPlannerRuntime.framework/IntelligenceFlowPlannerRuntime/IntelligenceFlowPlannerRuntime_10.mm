uint64_t sub_22C4559A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v86 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  v10 = MEMORY[0x28223BE20](v86);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v74 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v83 = v74 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v74 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v74 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (v74 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v85 = v74 - v26;
  result = MEMORY[0x28223BE20](v25);
  v84 = v74 - v29;
  v31 = *(v30 + 72);
  if (!v31)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    return result;
  }

  v32 = a2 - a1 == 0x8000000000000000 && v31 == -1;
  if (v32)
  {
    goto LABEL_85;
  }

  v33 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_86;
  }

  v74[1] = v5;
  v89 = a1;
  v88 = a4;
  v35 = v33 / v31;
  if ((a2 - a1) / v31 < v33 / v31)
  {
    v81 = v21;
    sub_22C3D7440(a1, (a2 - a1) / v31, a4);
    v82 = a3;
    v83 = a4 + (a2 - a1) / v31 * v31;
    v87 = v83;
    v80 = v31;
    while (1)
    {
      if (a4 >= v83 || a2 >= a3)
      {
        goto LABEL_83;
      }

      v37 = v84;
      sub_22C3E8FB4(a2, v84, &qword_27D9BB0D0, &qword_22C90D970);
      sub_22C3E8FB4(a4, v85, &qword_27D9BB0D0, &qword_22C90D970);
      sub_22C3E8FB4(v37, v24, &qword_27D9BB0D0, &qword_22C90D970);
      v38 = v24[1];
      v39 = a2;
      v40 = a1;
      if (v38)
      {
        v41 = *v24;
      }

      else
      {
        v41 = 0;
        v38 = 0xE000000000000000;
      }

      v42 = a4;
      sub_22C456BD8(v24 + *(v86 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
      v43 = v81;
      sub_22C3E8FB4(v85, v81, &qword_27D9BB0D0, &qword_22C90D970);
      v44 = v43;
      v45 = *(v43 + 8);
      if (v45)
      {
        v46 = *v44;
      }

      else
      {
        v46 = 0;
        v45 = 0xE000000000000000;
      }

      sub_22C456BD8(v44 + *(v86 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
      if (v41 == v46 && v38 == v45)
      {

        sub_22C36DD28(v85, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C36DD28(v84, &qword_27D9BB0D0, &qword_22C90D970);
      }

      else
      {
        v48 = sub_22C90B4FC();

        sub_22C36DD28(v85, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C36DD28(v84, &qword_27D9BB0D0, &qword_22C90D970);
        if (v48)
        {
          v49 = v80;
          v50 = v40;
          v51 = v40 < v39 || v40 >= v39 + v80;
          a4 = v42;
          if (v51)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v39 + v49;
            v52 = v50;
          }

          else
          {
            v52 = v40;
            if (v40 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v39 + v49;
          }

          a3 = v82;
          goto LABEL_47;
        }
      }

      v53 = v42;
      v49 = v80;
      a4 = v42 + v80;
      v52 = v40;
      v54 = v40 < v53 || v40 >= a4;
      a2 = v39;
      if (v54)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v82;
      }

      else
      {
        a3 = v82;
        if (v52 != v53)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v88 = a4;
LABEL_47:
      a1 = v52 + v49;
      v89 = a1;
    }
  }

  v79 = v28;
  sub_22C3D7440(a2, v33 / v31, a4);
  v55 = a4 + v35 * v31;
  v56 = -v31;
  v57 = v55;
  v76 = a4;
  v77 = v13;
  v78 = v18;
  v85 = v56;
LABEL_49:
  v58 = a2 + v56;
  v59 = a3;
  v60 = v57;
  v80 = a2 + v56;
  v81 = a2;
  v82 = v57;
  while (1)
  {
    if (v55 <= a4)
    {
      v89 = v81;
      v87 = v60;
      goto LABEL_83;
    }

    if (v81 <= a1)
    {
      break;
    }

    v84 = v59;
    v75 = v60;
    v61 = v55 + v56;
    sub_22C3E8FB4(v55 + v56, v18, &qword_27D9BB0D0, &qword_22C90D970);
    sub_22C3E8FB4(v58, v83, &qword_27D9BB0D0, &qword_22C90D970);
    sub_22C3E8FB4(v18, v13, &qword_27D9BB0D0, &qword_22C90D970);
    v62 = v13[1];
    if (v62)
    {
      v63 = *v13;
    }

    else
    {
      v63 = 0;
      v62 = 0xE000000000000000;
    }

    sub_22C456BD8(v13 + *(v86 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
    v64 = v79;
    sub_22C3E8FB4(v83, v79, &qword_27D9BB0D0, &qword_22C90D970);
    v65 = v64;
    v66 = *(v64 + 8);
    if (v66)
    {
      v67 = *v65;
    }

    else
    {
      v67 = 0;
      v66 = 0xE000000000000000;
    }

    sub_22C456BD8(v65 + *(v86 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
    if (v63 == v67 && v62 == v66)
    {
      v69 = 0;
    }

    else
    {
      v69 = sub_22C90B4FC();
    }

    v70 = v84;
    a3 = v84 + v85;
    sub_22C36DD28(v83, &qword_27D9BB0D0, &qword_22C90D970);
    v18 = v78;
    sub_22C36DD28(v78, &qword_27D9BB0D0, &qword_22C90D970);
    if (v69)
    {
      v72 = v80;
      v73 = v70 < v81 || a3 >= v81;
      a4 = v76;
      if (v73)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v72;
        v57 = v75;
        v56 = v85;
        v13 = v77;
      }

      else
      {
        v57 = v75;
        v32 = v70 == v81;
        a2 = v80;
        v56 = v85;
        v13 = v77;
        if (!v32)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v72;
          v57 = v75;
        }
      }

      goto LABEL_49;
    }

    v71 = v70 < v55 || a3 >= v55;
    a4 = v76;
    v58 = v80;
    if (v71)
    {
      swift_arrayInitWithTakeFrontToBack();
      v59 = a3;
      v55 = v61;
      v60 = v61;
      v56 = v85;
      v57 = v82;
      v13 = v77;
    }

    else
    {
      v60 = v61;
      v32 = v55 == v70;
      v59 = a3;
      v55 = v61;
      v56 = v85;
      v57 = v82;
      v13 = v77;
      if (!v32)
      {
        swift_arrayInitWithTakeBackToFront();
        v57 = v82;
        v59 = a3;
        v55 = v61;
        v60 = v61;
      }
    }
  }

  v89 = v81;
  v87 = v57;
LABEL_83:
  sub_22C8381D0(&v89, &v88, &v87);
  return 1;
}

void *sub_22C45613C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C4568C8(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_22C4561B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v54 = a5;
  sub_22C8920A0();
  v6 = v49;
  v7 = v51;
  v8 = v52;
  v41 = v53;
  v42 = v48[4];
  v9 = (v50 + 64) >> 6;

  v39 = v9;
  v40 = v49;
  if (v52)
  {
    while (1)
    {
      v43 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v42 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v42 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v48[0] = v14;
      v48[1] = v15;
      v48[2] = v17;
      v48[3] = v18;

      v41(&v44, v48);

      v19 = v44;
      v20 = v45;
      v21 = v46;
      v22 = v47;
      v23 = *v54;
      v25 = sub_22C36E2BC(v44, v45);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v28 = v24;
      if (v23[3] >= v26 + v27)
      {
        if ((v43 & 1) == 0)
        {
          sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
          sub_22C90B16C();
        }
      }

      else
      {
        sub_22C88E938();
        v29 = sub_22C36E2BC(v19, v20);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_24;
        }

        v25 = v29;
      }

      v8 &= v8 - 1;
      v31 = *v54;
      if (v28)
      {

        v32 = (v31[7] + 16 * v25);
        *v32 = v21;
        v32[1] = v22;
      }

      else
      {
        v31[(v25 >> 6) + 8] |= 1 << v25;
        v33 = (v31[6] + 16 * v25);
        *v33 = v19;
        v33[1] = v20;
        v34 = (v31[7] + 16 * v25);
        *v34 = v21;
        v34[1] = v22;
        v35 = v31[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_23;
        }

        v31[2] = v37;
      }

      a4 = 1;
      v7 = v10;
      v9 = v39;
      v6 = v40;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_22C36A674(v42);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v43 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void sub_22C456470(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_22C90B54C();
      __break(1u);
      goto LABEL_22;
    }

    v28 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_22C36E2BC(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v15 = v11;
    if (v10[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
      sub_22C90B16C();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v7;
    v19[1] = v6;
    v20 = (v18[7] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    v21 = v18[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v18[2] = v23;
    v4 = v28 + 1;
    a2 = 1;
  }

  sub_22C88E938();
  v16 = sub_22C36E2BC(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_22C90AF5C();
  MEMORY[0x2318B7850](0xD00000000000001BLL, 0x800000022C9305A0);
  sub_22C90B12C();
  MEMORY[0x2318B7850](39, 0xE100000000000000);
  sub_22C90B1AC();
  __break(1u);
}

void *sub_22C456764(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_22C45613C(v8, v4, v2);
      MEMORY[0x2318B9880](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C4568C8(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_22C4568C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];

    if (v16 == sub_22C9074DC() && v15 == v17)
    {
      goto LABEL_26;
    }

    v19 = sub_22C90B4FC();

    if (v19)
    {
      v3 = a3;
      goto LABEL_27;
    }

    if (v16 == sub_22C9074EC() && v15 == v20)
    {
      v3 = a3;
LABEL_26:

LABEL_27:
    }

    else
    {
      v22 = sub_22C90B4FC();

      v3 = a3;
      if ((v22 & 1) == 0)
      {
        *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v26++, 1))
        {
          goto LABEL_30;
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      sub_22C839294(result, a2, v26, v3);
      return;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_22C456AA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C456B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C456B78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C456BD8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_22C456C30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {

    sub_22C456C94(a2, a3, a4);
  }
}

uint64_t sub_22C456C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

void sub_22C456CE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {

    sub_22C456D48(a2, a3, a4);
  }
}

void sub_22C456D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_22C456DD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C88FD90(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

_OWORD *sub_22C456E34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_22C456E44()
{
  result = qword_27D9BC3C8;
  if (!qword_27D9BC3C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BC3C8);
  }

  return result;
}

uint64_t sub_22C456EA4(uint64_t a1)
{
  result = sub_22C901FAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C456F38(uint64_t a1)
{
  sub_22C436620();
  if (v1 <= 0x3F)
  {
    type metadata accessor for StatefulExpressionParser.ToolData.Argument(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C456FE4(uint64_t a1)
{
  sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    sub_22C457168(319, qword_28142FF48, &protocol descriptor for RenderableToolDefinitionPromptRendering);
    if (v2 <= 0x3F)
    {
      sub_22C457168(319, &qword_281434518, &protocol descriptor for AppNameRendering);
      if (v3 <= 0x3F)
      {
        sub_22C457168(319, &qword_27D9BC400, &protocol descriptor for BuiltinNameRendering);
        if (v4 <= 0x3F)
        {
          sub_22C457168(319, qword_281433728, &protocol descriptor for RenderingArbitration);
          if (v5 <= 0x3F)
          {
            type metadata accessor for RenderingState(319);
            if (v6 <= 0x3F)
            {
              sub_22C4571BC(319);
              if (v7 <= 0x3F)
              {
                sub_22C4572BC(319);
                if (v8 <= 0x3F)
                {
                  sub_22C457368(319);
                  if (v9 <= 0x3F)
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
}

uint64_t sub_22C457168(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22C4571BC(uint64_t a1)
{
  if (!qword_27D9BC408)
  {
    sub_22C901FAC();
    sub_22C3AC1A0(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C457274(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BC408);
    }
  }
}

uint64_t sub_22C457274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22C4572BC(uint64_t a1)
{
  if (!qword_27D9BC410)
  {
    sub_22C901FAC();
    sub_22C9070DC();
    sub_22C457274(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BC410);
    }
  }
}

void sub_22C457368(uint64_t a1)
{
  if (!qword_27D9BC418)
  {
    sub_22C901FAC();
    sub_22C457274(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BC418);
    }
  }
}

uint64_t sub_22C457420(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_22C457454(char a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v32 = a2;
  v7 = type metadata accessor for PromptTreeIdentifier(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a4[1](a3, a4);
  v12 = v11;
  v13 = a4[2](a3, a4);
  v15 = v14;
  v16 = a4[3](a3, a4);
  *v9 = a1;
  *(v9 + 1) = v10;
  *(v9 + 2) = v12;
  *(v9 + 3) = v13;
  *(v9 + 4) = v15;
  *(v9 + 5) = v16;
  *(v9 + 6) = v17;
  type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  sub_22C90068C();
  swift_storeEnumTagMultiPayload();
  v18 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v19 = swift_allocBox();
  v21 = v20;
  v22 = *(v18 + 48);
  sub_22C45769C(v9, v20);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v23 = swift_allocBox();
  sub_22C486784();
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F870;
  v25 = v32;
  *(inited + 32) = v23 | 0x2000000000000000;
  *(inited + 40) = v25;

  v26 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  sub_22C457700(v9);
  sub_22C369AEC();
  v27 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 16) = v28;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v29 = swift_allocObject();
  *(v29 + 16) = v27 | 0x6000000000000000;
  *(v21 + v22) = v29;
  return v19 | 0x4000000000000000;
}

uint64_t sub_22C45769C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C457700(uint64_t a1)
{
  v2 = type metadata accessor for PromptTreeIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C457764(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 400))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 104);
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

uint64_t sub_22C4577A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ExternalAgentOutcomeParser_v1_0(uint64_t a1)
{
  result = qword_281430918;
  if (!qword_281430918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4578D0(uint64_t a1)
{
  result = sub_22C908AEC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C457964()
{
  v0 = sub_22C3A5908(&qword_27D9BC428, &unk_22C912FD0);
  v1 = sub_22C369914(v0);
  MEMORY[0x28223BE20](v1);
  v3 = v26 - v2;
  v4 = sub_22C3A5908(&qword_27D9BC430, &qword_22C92BFD0);
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  v7 = v26 - v6;
  sub_22C90258C();
  v8 = sub_22C90241C();
  if (sub_22C370B74(v3, 1, v8) == 1)
  {
    v9 = &qword_27D9BC428;
    v10 = &unk_22C912FD0;
    v11 = v3;
LABEL_5:
    sub_22C376B84(v11, v9, v10);
    return MEMORY[0x277D84F90];
  }

  sub_22C90236C();
  sub_22C36BBA8();
  (*(v12 + 8))(v3, v8);
  v13 = sub_22C90240C();
  if (sub_22C370B74(v7, 1, v13) == 1)
  {
    v9 = &qword_27D9BC430;
    v10 = &qword_22C92BFD0;
    v11 = v7;
    goto LABEL_5;
  }

  v16 = sub_22C9023FC();
  v18 = v17;
  sub_22C36BBA8();
  (*(v19 + 8))(v7, v13);
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_22C90F800;
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    *(v21 + 24) = v18;
    v22 = swift_allocObject();
    *(v22 + 16) = 3;
    *(v22 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v22 + 32) = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = 4;
    *(v24 + 24) = 1;
    sub_22C369AEC();
    v25 = swift_allocObject();
    *(v25 + 16) = v22 | 0xA000000000000000;
    *(v24 + 32) = v25;
    *(v14 + 32) = 0;
    *(v14 + 40) = v24 | 0xA000000000000002;
    return v14;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22C457C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22C9089DC();
  v4[6] = v5;
  sub_22C3699B8(v5);
  v4[7] = v6;
  v4[8] = sub_22C3699D4();
  v7 = sub_22C908A0C();
  v4[9] = v7;
  sub_22C3699B8(v7);
  v4[10] = v8;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v9 = type metadata accessor for PromptTreeIdentifier(0);
  v4[15] = v9;
  sub_22C369914(v9);
  v4[16] = sub_22C3699D4();
  v10 = sub_22C902D0C();
  v4[17] = v10;
  sub_22C3699B8(v10);
  v4[18] = v11;
  v4[19] = sub_22C3699D4();
  v12 = type metadata accessor for DirectionalTypedValue(0);
  v4[20] = v12;
  sub_22C369914(v12);
  v4[21] = sub_22C3699D4();
  v13 = sub_22C9063DC();
  v4[22] = v13;
  sub_22C3699B8(v13);
  v4[23] = v14;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v15 = sub_22C9093BC();
  v4[28] = v15;
  sub_22C3699B8(v15);
  v4[29] = v16;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v17 = sub_22C9020CC();
  v4[32] = v17;
  sub_22C3699B8(v17);
  v4[33] = v18;
  v4[34] = sub_22C3699D4();
  v19 = sub_22C9026BC();
  v4[35] = v19;
  sub_22C3699B8(v19);
  v4[36] = v20;
  v4[37] = sub_22C3699D4();

  return MEMORY[0x2822009F8](sub_22C457F78, 0, 0);
}

uint64_t sub_22C457F78()
{
  v218 = v0;
  v2 = sub_22C90761C();
  v3 = sub_22C3A5968(v2);
  v5 = v4;

  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    sub_22C3716D4();
    v7 = swift_allocObject();
    *(v7 + 16) = 3;
    *(v7 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v7 + 32) = v8;
    sub_22C3716D4();
    v9 = swift_allocObject();
    *(v9 + 16) = 4;
    *(v9 + 24) = 1;
    sub_22C369AEC();
    v10 = swift_allocObject();
    *(v10 + 16) = v7 | 0xA000000000000000;
    *(v9 + 32) = v10;
    sub_22C591F6C(0, 1, 1, MEMORY[0x277D84F90]);
    v12 = v11;
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_22C591F6C(v13 > 1, v14 + 1, 1, v11);
      v12 = v168;
    }

    *(v12 + 16) = v14 + 1;
    v15 = v12 + 16 * v14;
    *(v15 + 32) = 0;
    *(v15 + 40) = v9 | 0xA000000000000002;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v16 = v0[36];
  v17 = v0[37];
  v18 = v0[35];
  sub_22C9075FC();
  v19 = (*(v16 + 88))(v17, v18);
  v215 = v12;
  if (v19 != *MEMORY[0x277D1CBF0])
  {
    if (v19 == *MEMORY[0x277D1CB98] || v19 == *MEMORY[0x277D1CBA8] || v19 == *MEMORY[0x277D1CBB0] || v19 == *MEMORY[0x277D1CBB8] || v19 == *MEMORY[0x277D1CBD0] || v19 == *MEMORY[0x277D1CBD8] || v19 == *MEMORY[0x277D1CBC0] || v19 == *MEMORY[0x277D1CBE0] || v19 == *MEMORY[0x277D1CBA0] || v19 == *MEMORY[0x277D1CBC8] || v19 == *MEMORY[0x277D1CBE8])
    {
      v52 = v0[13];
      v51 = v0[14];
      v54 = v0[9];
      v53 = v0[10];
      v55 = v0[3];
      (*(v0[36] + 8))(v0[37], v0[35]);
      sub_22C903F7C();
      v56 = *(v53 + 16);
      (v56)(v51, v55, v54);
      (v56)(v52, v55, v54);
      v57 = sub_22C9063CC();
      sub_22C90AADC();
      sub_22C36D6F8();
      v59 = os_log_type_enabled(v57, v58);
      v209 = v0[25];
      v61 = v0[22];
      v60 = v0[23];
      v62 = v0[14];
      v64 = v0[9];
      v63 = v0[10];
      if (v59)
      {
        sub_22C36BC30();
        v65 = sub_22C38A8A0();
        v216[0] = v65;
        *v56 = 136315650;
        *(v56 + 4) = sub_22C374A78("handle(outcome:event:parsingState:)", v171, v176, v181, v186, v191, v196, v65, v205, v209, v215);
        *(v56 + 12) = 2080;
        sub_22C9088FC();
        v66 = sub_22C458FE4();
        v61(v66);
        sub_22C36F9F4(v57, v1, v216);

        sub_22C459004(v67);
        sub_22C90898C();
        v68 = sub_22C3726EC();
        v69(v68);
        v70 = sub_22C459028();
        v61(v70);
        v71 = sub_22C36F9F4(v60, v57, v216);

        *(v56 + 24) = v71;
        sub_22C38B840(&dword_22C366000, v72, v73, "[%s] Unsupported ExternalAgentOutcome outcome type. Please file a radar on Full Planner Runtime: %s %s", v74, v75, v76, v77, v172, v177, v182, v187, v192);
        sub_22C37F0D4(v78, v79, v80, v81, v82, v83, v84, v85, v173, v178, v183, v188, v193, v197, v202);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v206 + 8))(v210, v198);
      }

      else
      {

        v140 = *(v63 + 8);
        v141 = sub_22C459028();
        v140(v141);
        (v140)(v62, v64);
        (*(v60 + 8))(v209, v61);
      }
    }

    else
    {
      v105 = v0[12];
      v106 = v0[9];
      v107 = v0[10];
      v108 = v0[3];
      sub_22C903F7C();
      v109 = *(v107 + 16);
      (v109)(v105, v108, v106);
      v110 = sub_22C36D29C();
      (v109)(v110);
      v111 = sub_22C9063CC();
      sub_22C90AADC();
      sub_22C36D6F8();
      v113 = os_log_type_enabled(v111, v112);
      v114 = v0[23];
      v213 = v0[24];
      v115 = v0[22];
      v116 = v0[12];
      v118 = v0[9];
      v117 = v0[10];
      if (v113)
      {
        sub_22C36BC30();
        v119 = sub_22C38A8A0();
        v216[0] = v119;
        *v109 = 136315650;
        *(v109 + 4) = sub_22C374A78("handle(outcome:event:parsingState:)", v171, v176, v181, v186, v191, v196, v119, v205, v213, v215);
        *(v109 + 12) = 2080;
        sub_22C9088FC();
        v120 = sub_22C458FE4();
        v115(v120);
        sub_22C36F9F4(v111, v1, v216);

        sub_22C459004(v121);
        sub_22C90898C();
        v122 = sub_22C3726EC();
        v123(v122);
        v124 = sub_22C459028();
        v115(v124);
        v125 = sub_22C36F9F4(v114, v111, v216);

        *(v109 + 24) = v125;
        sub_22C38B840(&dword_22C366000, v126, v127, "[%s] Unknown ExternalAgentOutcome outcome type. Please file a radar on Full Planner Runtime: %s %s", v128, v129, v130, v131, v174, v179, v184, v189, v194);
        sub_22C37F0D4(v132, v133, v134, v135, v136, v137, v138, v139, v175, v180, v185, v190, v195, v200, v204);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v208 + 8))(v214, v201);
      }

      else
      {

        v151 = *(v117 + 8);
        v152 = sub_22C459028();
        v151(v152);
        (v151)(v116, v118);
        (*(v114 + 8))(v213, v115);
      }

      (*(v0[36] + 8))(v0[37], v0[35]);
    }

    goto LABEL_55;
  }

  v20 = v0[37];
  v21 = v0[34];
  v22 = v0[32];
  v23 = v0[33];
  v25 = v0[30];
  v24 = v0[31];
  v27 = v0[28];
  v26 = v0[29];
  (*(v0[36] + 96))(v20, v0[35]);
  (*(v23 + 32))(v21, v20, v22);
  sub_22C90207C();
  sub_22C90931C();
  v28 = swift_allocBox();
  sub_22C36BBA8();
  (*(v29 + 104))();
  *v25 = v28;
  (*(v26 + 104))(v25, *MEMORY[0x277D72A58], v27);
  sub_22C36D29C();
  LOBYTE(v20) = sub_22C9093AC();
  v30 = *(v26 + 8);
  v30(v25, v27);
  v30(v24, v27);
  if (v20)
  {
    sub_22C903F7C();
    v31 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C36D6F8();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[33];
    v35 = v0[34];
    v36 = v0[32];
    v37 = v0[27];
    v38 = v0[22];
    v39 = v0[23];
    if (v33)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22C366000, v31, v22, "[ExternalAgentOutcome] Primitive none provided as success value. Skipping rendering.", v40, 2u);
      sub_22C3699EC();
    }

    (*(v39 + 8))(v37, v38);
    goto LABEL_11;
  }

  v86 = v0[21];
  v87 = v0[18];
  v88 = v0[19];
  v89 = v0[17];
  v91 = v0[4];
  v90 = v0[5];
  v92 = v90 + *(type metadata accessor for ExternalAgentOutcomeParser_v1_0(0) + 20);
  v93 = *(v92 + 160);
  v94 = *(v92 + 168);
  ObjectType = swift_getObjectType();
  sub_22C90207C();
  swift_storeEnumTagMultiPayload();
  v95 = *(v91 + 32);
  v96 = *(v87 + 104);
  v96(v88, *MEMORY[0x277D1D7F8], v89);
  (*(v94 + 8))(v216, v86, 0, v95, v88, ObjectType, v94);
  (*(v87 + 8))(v88, v89);
  sub_22C458EC8(v86, type metadata accessor for DirectionalTypedValue);
  v97 = v216[0];
  v203 = v216[3];
  v207 = v216[2];
  v199 = v216[4];
  v212 = v216[1];
  if (v217)
  {
    sub_22C903F7C();
    v98 = sub_22C9063CC();
    sub_22C90AACC();
    sub_22C36D6F8();
    v100 = os_log_type_enabled(v98, v99);
    v34 = v0[33];
    v35 = v0[34];
    v36 = v0[32];
    v101 = v0[26];
    v103 = v0[22];
    v102 = v0[23];
    if (!v100)
    {

      (*(v102 + 8))(v101, v103);
LABEL_11:
      (*(v34 + 8))(v35, v36);
      goto LABEL_55;
    }

    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_22C366000, v98, v93, "[ExternalAgentOutcome] Unable to find a prompt reference for success.returnValue", v104, 2u);
    sub_22C3699EC();

    sub_22C456CE4(v97, v212, v207, v203, v199, 1);
    (*(v102 + 8))(v101, v103);
    (*(v34 + 8))(v35, v36);
  }

  else
  {
    v143 = v0[16];
    v142 = v0[17];
    sub_22C36C640(v143, 2, 3, v142);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
    swift_storeEnumTagMultiPayload();
    sub_22C901FAC();
    v144 = swift_allocBox();

    sub_22C9068FC();
    v145 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
    *(v143 + v145) = v144;
    v96(v143 + v145, *MEMORY[0x277D1D798], v142);
    sub_22C36D29C();
    swift_storeEnumTagMultiPayload();
    v146 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    v147 = swift_allocBox();
    v149 = v148;
    sub_22C45769C(v143, v148);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v150 = swift_allocBox();
    sub_22C486784();
    v155 = sub_22C458C64(v150 | 0x2000000000000000, v97);
    v156 = *(v146 + 48);
    sub_22C369C14();
    sub_22C458EC8(v157, v158);

    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v159 = swift_allocObject();
    *(v159 + 16) = v155;
    *(v149 + v156) = v159;
    v160 = v215;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C591F6C(0, *(v215 + 16) + 1, 1, v215);
      v160 = v169;
    }

    v162 = v147 | 0x4000000000000002;
    v164 = *(v160 + 16);
    v163 = *(v160 + 24);
    if (v164 >= v163 >> 1)
    {
      sub_22C591F6C(v163 > 1, v164 + 1, 1, v160);
      v160 = v170;
    }

    sub_22C456CE4(v97, v212, v207, v203, v199, 0);
    v165 = sub_22C36D29C();
    v166(v165);
    *(v160 + 16) = v164 + 1;
    v215 = v160;
    v167 = v160 + 16 * v164;
    *(v167 + 32) = 5;
    *(v167 + 40) = v162;
  }

LABEL_55:

  v153 = v0[1];

  return v153(v215);
}

uint64_t sub_22C458C64(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 2112800;
  *(v11 + 24) = 0xE300000000000000;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C458EC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36BBA8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C458F2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_22C458F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C459004(uint64_t a1)
{
  *(v2 + 14) = v1;
  *(v2 + 22) = 2080;

  return sub_22C9089EC();
}

uint64_t sub_22C45903C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_22C45907C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_22C459128(uint64_t a1)
{
  type metadata accessor for RenderableTool(319);
  if (v1 <= 0x3F)
  {
    sub_22C4591C4(319);
    if (v2 <= 0x3F)
    {
      sub_22C45924C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22C4591C4(uint64_t a1)
{
  if (!qword_27D9BC450)
  {
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(255);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BC450);
    }
  }
}

void sub_22C45924C(uint64_t a1)
{
  if (!qword_27D9BC458)
  {
    v2 = type metadata accessor for PromptTreeIdentifier(255);
    v3 = sub_22C45C768(&qword_27D9BC460, type metadata accessor for PromptTreeIdentifier, &unk_22C91662C);
    v5 = type metadata accessor for PromptTree(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D9BC458);
    }
  }
}

void sub_22C459308(uint64_t a1)
{
  sub_22C90981C();
  if (v1 <= 0x3F)
  {
    sub_22C45924C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22C45938C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22C45B7A4(a1, sub_22C45B734, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_22C459410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[41] = a4;
  v5[42] = v4;
  v5[39] = a2;
  v5[40] = a3;
  v5[38] = a1;
  v5[43] = sub_22C3A5908(&qword_27D9BC478, &unk_22C9134A0);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = sub_22C3A5908(&qword_27D9BC480, &unk_22C92B6E0);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v6 = sub_22C9063DC();
  v5[49] = v6;
  v5[50] = *(v6 - 8);
  v5[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C459568, 0, 0);
}

uint64_t sub_22C459568(uint64_t a1)
{
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    MEMORY[0x2318B9880](v4, -1, -1);
  }

  v6 = v1[50];
  v5 = v1[51];
  v7 = v1[49];
  v8 = v1[41];
  v9 = v1[42];

  (*(v6 + 8))(v5, v7);
  v1[33] = sub_22C49FB90(*v9, v8);
  v1[34] = v10;
  v1[35] = v11;
  v1[36] = v12;
  v1[52] = v10;
  v1[53] = v11;
  v1[54] = v12;
  v13 = v1[41];
  v14 = type metadata accessor for ToolPromptMap(0);
  v15 = MEMORY[0x277D84F90];
  sub_22C909F0C();
  *(swift_task_alloc() + 16) = v13;
  sub_22C6045F0();
  v17 = v16;
  v80 = v1[48];
  v79 = v1[46];
  v85 = v1[45];
  v84 = v1[43];

  sub_22C902D0C();
  sub_22C45C768(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
  sub_22C36BA70();
  v18 = sub_22C909F0C();
  sub_22C36BA70();
  v19 = sub_22C909F0C();
  sub_22C908EAC();
  sub_22C36BA70();
  v20 = sub_22C909F0C();
  sub_22C90941C();
  sub_22C36BA70();
  v21 = sub_22C909F0C();
  v1[2] = v17;
  v1[3] = v18;
  v1[4] = v15;
  v1[5] = v15;
  v1[6] = v19;
  v1[7] = v20;
  v1[8] = v21;
  v22 = v17 + 64;
  sub_22C36EC98();
  v83 = v24 & v23;
  v26 = (63 - v25) >> 6;
  v81 = v17;
  result = swift_bridgeObjectRetain_n();
  v28 = 0;
  v78 = v17 + 64;
  v77 = v26;
  v86 = v1;
LABEL_4:
  v29 = v83;
  if (v83)
  {
    v30 = v28;
LABEL_9:
    v32 = v1[47];
    v31 = v1[48];
    v82 = v30;
    v83 = (v29 - 1) & v29;
    v33 = (*(v81 + 48) + 16 * (__clz(__rbit64(v29)) | (v30 << 6)));
    v34 = *v33;
    v35 = v33[1];
    sub_22C45B550();
    *v31 = v34;
    *(v80 + 8) = v35;
    sub_22C3A7214();

    v36 = v32 + *(v79 + 48);
    v37 = *(v36 + *(v14 + 20));

    sub_22C45B5A8(v36, type metadata accessor for ToolPromptMap);
    v89 = v15;
    v38 = v37 + 64;
    sub_22C36EC98();
    v41 = v40 & v39;
    v15 = (63 - v42) >> 6;
    v87 = v37;

    v1 = 0;
    if (!v41)
    {
      goto LABEL_11;
    }

    while (2)
    {
      v43 = v1;
LABEL_15:
      v44 = v86[45];
      v88 = v86[44];
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = (*(v87 + 48) + 16 * (v45 | (v43 << 6)));
      v47 = *v46;
      v48 = v46[1];
      type metadata accessor for ParameterPromptMap(0);
      sub_22C45B550();
      *v44 = v47;
      *(v85 + 8) = v48;
      sub_22C407C2C();

      v49 = v88 + *(v84 + 48);

      sub_22C45B5A8(v49, type metadata accessor for ParameterPromptMap);
      sub_22C3CD674();
      if (v41)
      {
        continue;
      }

      break;
    }

LABEL_11:
    while (1)
    {
      v43 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v43 >= v15)
      {
        v1 = v86;
        sub_22C36DD28(v86[48], &qword_27D9BC480, &unk_22C92B6E0);

        result = sub_22C3CD648(v89);
        v28 = v82;
        v15 = MEMORY[0x277D84F90];
        v22 = v78;
        v26 = v77;
        goto LABEL_4;
      }

      v41 = *(v38 + 8 * v43);
      v1 = (v1 + 1);
      if (v41)
      {
        v1 = v43;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_27:
    sub_22C36DD28((v1 + 28), &qword_27D9BB758, &qword_22C90FE60);
    sub_22C377BD4();
    v69 = v1[38];
    v71 = *(v70 + 32);
    v72 = *(v1 + 26);
    *v69 = v73;
    *(v69 + 8) = v72;

    v74 = *(v1 + 8);
    v75 = *(v1 + 9);
    v76 = v1[22];
    *(v69 + 56) = *(v1 + 10);
    *(v69 + 40) = v75;
    *(v69 + 24) = v74;
    *(v69 + 72) = v76;
    *(v69 + 80) = v15;
    *(v69 + 88) = v71;

    sub_22C369A24();
    sub_22C386FF4();

    __asm { BRAA            X1, X16 }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
      v50 = v1[42];
      v51 = v1[39];

      sub_22C3ADB10();
      v53 = v52;
      v54 = *(v50 + 24);
      v55 = swift_task_alloc();
      *(v55 + 16) = v51;
      v58 = sub_22C604774(MEMORY[0x277D84F98], sub_22C45B600, v55, v54);

      v60 = sub_22C45BB2C(v59, v53);

      sub_22C494E64();
      v62 = v61;

      v63 = sub_22C45BCF0(v60);

      v64 = sub_22C909F0C();
      v65 = sub_22C909F0C();
      v1[9] = v64;
      v1[10] = v60;
      v1[11] = v62;
      v1[12] = v15;
      v1[13] = v63;
      v1[14] = v65;
      v1[15] = v58;
      sub_22C56F2A0(v1 + 9, v1 + 16);

      swift_bridgeObjectRelease_n();

      sub_22C3A7214();
      if (v1[31])
      {
        sub_22C3DBC3C(v1 + 14, (v1 + 23));
        sub_22C374168(v1 + 23, v1[26]);
        v66 = swift_task_alloc();
        v1[55] = v66;
        *v66 = v1;
        v66[1] = sub_22C459F68;
        sub_22C386FF4();

        __asm { BRAA            X4, X16 }
      }

      goto LABEL_27;
    }

    v29 = *(v22 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C459F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v9;
  *(*v9 + 448) = v8;

  if (v8)
  {
    sub_22C3DE2C8(v10 + 128);

    v11 = sub_22C45A1A0;
  }

  else
  {
    v11 = sub_22C45A0AC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_22C45A0AC()
{
  v1 = *(v0 + 296);
  sub_22C36FF94((v0 + 184));
  sub_22C377BD4();
  v2 = *(v0 + 304);
  v4 = *(v3 + 32);
  v5 = *(v0 + 416);
  *v2 = v6;
  *(v2 + 8) = v5;

  v7 = *(v0 + 128);
  v8 = *(v0 + 144);
  v9 = *(v0 + 176);
  *(v2 + 56) = *(v0 + 160);
  *(v2 + 40) = v8;
  *(v2 + 24) = v7;
  *(v2 + 72) = v9;
  *(v2 + 80) = v1;
  *(v2 + 88) = v4;

  sub_22C369A24();

  return v10();
}

uint64_t sub_22C45A1A0()
{
  sub_22C36FF94((v0 + 184));

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C45A240(uint64_t a1, uint64_t a2)
{
  v5 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = (&v34 - v6);
  v39 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  MEMORY[0x28223BE20](v39);
  v46 = &v34 - v7;
  v8 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_22C90963C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C3A7214();
  v15 = v44;
  if (!v44)
  {
    return sub_22C36DD28(v43, &qword_27D9BC498, &unk_22C919020);
  }

  v37 = a1;
  v40 = v2;
  v16 = v45;
  sub_22C374168(v43, v44);
  (*(v12 + 104))(v14, *MEMORY[0x277D72E08], v11);
  v17 = sub_22C906D3C();
  sub_22C36C640(v10, 1, 1, v17);
  type metadata accessor for RenderingState(0);
  swift_allocObject();
  v18 = sub_22C480800(v10);
  v19 = *(v16 + 24);
  v36 = a2;
  v19(v41, a2, v14, v18, v15, v16);

  (*(v12 + 8))(v14, v11);
  v21 = v41[0];
  v20 = v41[1];
  v23 = v41[2];
  v22 = v41[3];
  v24 = v41[4];
  v25 = v42;
  result = sub_22C36FF94(v43);
  if ((v25 & 1) == 0)
  {
    v34 = v22;
    v35 = v24;
    type metadata accessor for PromptTreeIdentifier.Label(0);

    sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C45C768(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label, &unk_22C916664);
    sub_22C909F0C();
    v27 = v40;
    sub_22C4A0390();

    if (v27)
    {
      sub_22C3D32C8(&qword_27D9BC4A8, &qword_27D9BC490, &unk_22C914240, &unk_22C917330);
      swift_allocError();
      sub_22C407C2C();
    }

    else
    {

      v28 = sub_22C90952C();
      v29 = swift_allocBox();
      (*(*(v28 - 8) + 16))(v30, v36, v28);
      v31 = v38;
      *v38 = v29;
      v32 = *MEMORY[0x277D72AD0];
      v33 = sub_22C90941C();
      (*(*(v33 - 8) + 104))(v31, v32, v33);
      sub_22C36C640(v31, 0, 1, v33);
      sub_22C603174();
    }

    sub_22C456CE4(v21, v20, v23, v34, v35, 0);
  }

  return result;
}

void sub_22C45A76C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  switch((a2 >> 58) & 4 | (a2 >> 1) & 3)
  {
    case 1uLL:
      if (((a4 >> 58) & 4 | (a4 >> 1) & 3) == 1)
      {
        switch(a1)
        {
          case 3:
            if (a3 == 3)
            {
              goto LABEL_23;
            }

            break;
          case 4:
            if (a3 == 4)
            {
              goto LABEL_23;
            }

            break;
          case 5:
            if (a3 == 5)
            {
              goto LABEL_23;
            }

            break;
          case 6:
            if (a3 == 6)
            {
              goto LABEL_23;
            }

            break;
          default:
            if (a3 - 3 >= 4 && a3 == a1)
            {
LABEL_23:
              sub_22C48819C(a2 & 0xEFFFFFFFFFFFFFF9, a4 & 0xEFFFFFFFFFFFFFF9);
            }

            break;
        }
      }

      break;
    case 2uLL:
      if (((a4 >> 58) & 4 | (a4 >> 1) & 3) == 2)
      {
        sub_22C5DBC6C();
      }

      break;
    case 3uLL:
      if (((a4 >> 58) & 4 | (a4 >> 1) & 3) == 3)
      {
        sub_22C749ED4();
      }

      break;
    case 4uLL:
      if (((a4 >> 58) & 4 | (a4 >> 1) & 3) == 4)
      {
        sub_22C46DAF8(a1, a3);
      }

      break;
    default:
      if (!((a4 >> 58) & 4 | (a4 >> 1) & 3))
      {
        sub_22C48819C(a1, a3);
      }

      break;
  }
}

void sub_22C45A8C4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22C9063DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  sub_22C369BE8();
  switch((a2 >> 58) & 4 | (a2 >> 1) & 3)
  {
    case 1uLL:
      v21 = v2[8];
      v22 = v3[9];
      sub_22C374168(v3 + 5, v3[8]);
      v23 = sub_22C457454(a1, a2 & 0xEFFFFFFFFFFFFFF9, v21, v22);
      sub_22C45A8C4(v23, 0);

      break;
    case 2uLL:

      sub_22C8B5628();
      break;
    case 3uLL:

      sub_22C903F7C();

      v14 = sub_22C9063CC();
      v15 = sub_22C90AACC();
      sub_22C45C7CC(a1, a2);
      if (os_log_type_enabled(v14, v15))
      {
        v25 = v15;
        v16 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26 = v24;
        *v16 = 136315138;

        sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
        type metadata accessor for _PromptMapper._ToolPromptMap(0);
        sub_22C3D32C8(&qword_27D9BB778, &qword_27D9BAF08, &qword_22C90D7B0, &unk_22C916CA4);
        v17 = sub_22C909F1C();
        v19 = v18;
        sub_22C45C7CC(a1, a2);
        v20 = sub_22C36F9F4(v17, v19, &v26);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_22C366000, v14, v25, "Setting additional mapping data: %s", v16, 0xCu);
        sub_22C36FF94(v24);
        MEMORY[0x2318B9880](v24, -1, -1);
        MEMORY[0x2318B9880](v16, -1, -1);
      }

      (*(v7 + 8))(v2, v6);
      v2[1] = sub_22C45938C(a1, v2[1]);
      break;
    case 4uLL:

      v2[2] = a1;
      break;
    default:
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F870;
      *(inited + 32) = *v3;
      v9 = swift_allocObject();
      *(v9 + 16) = 1;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      *(v9 + 24) = v10;
      *(inited + 40) = v9 | 0x8000000000000000;

      sub_22C45C81C(a1, a2);
      v11 = sub_22C3DB9B0(inited);
      swift_setDeallocating();
      sub_22C58FFB0();
      sub_22C369AEC();
      v12 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v12 + 16) = v13;

      *v3 = v12 | 0x6000000000000000;
      break;
  }
}

uint64_t sub_22C45ACE8()
{
  sub_22C36986C();
  if ((sub_22C9097CC() & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0) + 20);
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);

  return sub_22C48819C(v3, v4);
}

uint64_t sub_22C45AD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for RenderableTool(0);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22C369BE8();
  sub_22C45B550();
  v7 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  sub_22C435F74();
  if (v3)
  {
    return sub_22C3732B8();
  }

  v10 = v8;
  sub_22C49FB90(*(v2 + *(v7 + 24)), a1);
  v12 = v11;

  sub_22C45C86C();
  result = type metadata accessor for ToolPromptMap(0);
  *(a2 + *(result + 20)) = v10;
  *(a2 + *(result + 24)) = v12;
  return result;
}

uint64_t sub_22C45AEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C90981C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  sub_22C49FB90(*(a1 + *(v11 + 20)), a2);
  if (v3)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = v12;

  (*(v8 + 32))(a3, v10, v7);
  result = type metadata accessor for ParameterPromptMap(0);
  *(a3 + *(result + 20)) = v14;
  return result;
}

uint64_t sub_22C45B01C()
{
  sub_22C36986C();
  if (!sub_22C483418(v2, v3))
  {
    return 0;
  }

  v4 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  sub_22C74A28C();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(v1 + v6);
  v8 = *(v0 + v6);

  return sub_22C48819C(v7, v8);
}

void sub_22C45B0A0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9BC298, &unk_22C912630);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - v7;
  sub_22C49FB90(*a2, a3);
  if (!v3)
  {

    sub_22C3A5908(&qword_27D9BC4B0, &unk_22C9134C0);
    sub_22C45AD48(a3, v8);
    v9 = type metadata accessor for ToolPromptMap(0);
    sub_22C36C640(v8, 0, 1, v9);
    sub_22C603314();
  }
}

void sub_22C45B1E0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v11[0] = *a1;
  v11[1] = v2;
  v11[2] = v3;
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  swift_retain_n();

  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  v7 = static BNFGrammarRule.== infix(_:_:)(v11, v10);

  if (v7)
  {
    sub_22C46D2C8();
    v9 = v8;

    if (v9)
    {

      sub_22C46DF1C();
    }
  }

  else
  {
  }
}

uint64_t sub_22C45B370(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *a2;
  v4 = *(a2 + 2);
  v10 = *a1;
  v11 = v2;
  v12 = *(a1 + 24);
  v7 = v3;
  v8 = v4;
  v9 = *(a2 + 24);
  sub_22C45B1E0(&v10, &v7);
  return v5 & 1;
}

uint64_t sub_22C45B3E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 64);
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    v5 = *(v2 - 4);
    v4 = *(v2 - 3);
    v7 = *(v2 - 2);
    v6 = *(v2 - 1);
    v8 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C5912F4(0, *(i + 16) + 1, 1, i);
      i = v12;
    }

    v10 = *(i + 16);
    v9 = *(i + 24);
    if (v10 >= v9 >> 1)
    {
      sub_22C5912F4(v9 > 1, v10 + 1, 1, i);
      i = v13;
    }

    *(i + 16) = v10 + 1;
    v11 = (i + 40 * v10);
    v11[4] = v5;
    v11[5] = v4;
    v11[6] = v7;
    v11[7] = v6;
    v11[8] = v8;
    v2 += 5;
  }

  return i;
}

uint64_t sub_22C45B550()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C45B5A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_22C45B61C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C45BE54(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_22C45B694(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_22C45C27C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_22C45B734@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BC4B0, &unk_22C9134C0) + 48);
  v5 = sub_22C3A5908(&qword_27D9BC4B8, &qword_22C9134D0);
  result = sub_22C88FC98(a2 + *(v5 + 48), *a1, a1 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_22C45B7A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  v42 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v33 - v13;
  v15 = sub_22C3A5908(&qword_27D9BC4C0, &qword_22C9134D8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (v33 - v16);
  sub_22C8920A0();
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v33[2] = a1;

  v33[1] = a3;

  while (1)
  {
    sub_22C890844();
    v18 = sub_22C3A5908(&qword_27D9BC4B8, &qword_22C9134D0);
    if (sub_22C370B74(v17, 1, v18) == 1)
    {
      sub_22C36A674(v34);
    }

    v19 = *v17;
    sub_22C45C86C();
    v20 = *a5;
    v22 = sub_22C62821C();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v25 = v21;
    if (v20[3] >= v23 + v24)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC4C8, qword_22C9134E0);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88D114();
      v26 = sub_22C62821C();
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_16;
      }

      v22 = v26;
    }

    v28 = *a5;
    if (v25)
    {
      sub_22C45B550();
      sub_22C45B5A8(v14, type metadata accessor for _PromptMapper._ToolPromptMap);

      sub_22C45C8C4(v12, v28[7] + *(v42 + 72) * v22);
      a4 = 1;
    }

    else
    {
      v28[(v22 >> 6) + 8] |= 1 << v22;
      *(v28[6] + 8 * v22) = v19;
      sub_22C45C86C();
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_15;
      }

      v28[2] = v31;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

_BYTE *sub_22C45BB2C(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v4 = sub_22C45B694(v12, v7, v4, a2);
      MEMORY[0x2318B9880](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  v9 = v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v7, v9);

  v10 = sub_22C45C27C(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

void *sub_22C45BCF0(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_22C45B61C(v8, v4, v2);
      MEMORY[0x2318B9880](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_22C88FAFC(0, v4, v5);
  sub_22C45BE54(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_22C45BE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a1;
  v54 = sub_22C3A5908(&qword_27D9BC210, &unk_22C917470);
  v4 = MEMORY[0x28223BE20](v54);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = &v41 - v7;
  v8 = sub_22C902D0C();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v14 = &v41 - v13;
  v43 = 0;
  v15 = 0;
  v55 = a3;
  v18 = *(a3 + 64);
  v17 = a3 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v49 = v12 + 16;
  v47 = v12 + 88;
  v46 = *MEMORY[0x277D1D7C8];
  v51 = v6;
  v52 = v12;
  v45 = v12 + 8;
  v50 = v17;
  v48 = v22;
  while (v21)
  {
    v23 = v14;
    v24 = __clz(__rbit64(v21));
    v56 = (v21 - 1) & v21;
LABEL_11:
    v27 = v24 | (v15 << 6);
    v28 = v55;
    v29 = *(v55 + 48);
    v30 = v52;
    v31 = *(v52 + 72);
    v44 = v27;
    v32 = v31 * v27;
    v33 = *(v52 + 16);
    v33(v23, v29 + v31 * v27, v8);
    v33(v11, *(v28 + 56) + v32, v8);
    v34 = v53;
    v33(v53, v23, v8);
    v35 = v54;
    v33(&v34[*(v54 + 48)], v11, v8);
    v36 = v51;
    sub_22C407C2C();
    v37 = *(v35 + 48);
    v38 = (*(v30 + 88))(v36, v8);
    v39 = *(v30 + 8);
    if (v38 == v46)
    {
      v39(v36, v8);
      v39(&v36[v37], v8);
      v39(v11, v8);
      v39(v23, v8);
      *(v42 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      v40 = __OFADD__(v43++, 1);
      v14 = v23;
      v17 = v50;
      v22 = v48;
      v21 = v56;
      if (v40)
      {
        __break(1u);
LABEL_16:
        sub_22C838C18();
        return;
      }
    }

    else
    {
      v39(&v36[v37], v8);
      v39(v36, v8);
      v39(v11, v8);
      v39(v23, v8);
      v14 = v23;
      v17 = v50;
      v22 = v48;
      v21 = v56;
    }
  }

  v25 = v15;
  while (1)
  {
    v15 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      goto LABEL_16;
    }

    v26 = *(v17 + 8 * v15);
    ++v25;
    if (v26)
    {
      v23 = v14;
      v24 = __clz(__rbit64(v26));
      v56 = (v26 - 1) & v26;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22C45C27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v47 = a1;
  v52 = sub_22C3A5908(&qword_27D9BC210, &unk_22C917470);
  MEMORY[0x28223BE20](v52);
  v49 = &v45 - v6;
  v7 = sub_22C902D0C();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  result = MEMORY[0x28223BE20](v11);
  v58 = &v45 - v16;
  v53 = a3;
  v54 = 0;
  v17 = 0;
  v18 = *(a3 + 64);
  v46 = a3 + 64;
  v19 = 1 << *(a3 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v62 = v15 + 16;
  v59 = a4 + 56;
  v50 = v22;
  v51 = v15;
  v61 = (v15 + 8);
  v48 = v13;
LABEL_5:
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v56 = (v21 - 1) & v21;
LABEL_12:
    v57 = v17;
    v26 = v23 | (v17 << 6);
    v27 = v53;
    v28 = *(v53 + 48);
    v29 = *(v51 + 72);
    v55 = v26;
    v60 = v29;
    v30 = v29 * v26;
    v31 = *(v51 + 16);
    v32 = v58;
    v31(v58, v28 + v29 * v26, v7);
    v31(v13, *(v27 + 56) + v30, v7);
    v33 = v49;
    v31(v49, v32, v7);
    v31((v33 + *(v52 + 48)), v13, v7);
    if (*(a4 + 16))
    {
      sub_22C45C768(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
      v34 = v33;
      v35 = sub_22C909F7C();
      v36 = a4;
      v37 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v38 = v35 & v37;
        if (((*(v59 + (((v35 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v35 & v37)) & 1) == 0)
        {
          break;
        }

        v31(v10, *(v36 + 48) + v38 * v60, v7);
        sub_22C45C768(&qword_27D9BC488, MEMORY[0x277D1D800], MEMORY[0x277D1D810]);
        v39 = sub_22C90A0BC();
        v40 = *v61;
        (*v61)(v10, v7);
        v35 = v38 + 1;
        if (v39)
        {
          sub_22C36DD28(v34, &qword_27D9BC210, &unk_22C917470);
          v13 = v48;
          v40(v48, v7);
          result = (v40)(v58, v7);
          a4 = v36;
          v21 = v56;
          v17 = v57;
          v22 = v50;
          goto LABEL_5;
        }
      }

      a4 = v36;
      v33 = v34;
      v13 = v48;
    }

    v21 = v56;
    sub_22C36DD28(v33, &qword_27D9BC210, &unk_22C917470);
    v41 = *v61;
    (*v61)(v13, v7);
    result = (v41)(v58, v7);
    *(v47 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
    v42 = __OFADD__(v54++, 1);
    v17 = v57;
    v22 = v50;
    if (v42)
    {
      __break(1u);
LABEL_21:
      sub_22C838C18();
      v44 = v43;

      return v44;
    }
  }

  v24 = v17;
  while (1)
  {
    v17 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      goto LABEL_21;
    }

    v25 = *(v46 + 8 * v17);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v56 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C45C768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C45C7CC(uint64_t result, unint64_t a2)
{
  switch((a2 >> 58) & 4 | (a2 >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:

      break;
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_22C45C81C(uint64_t result, unint64_t a2)
{
  switch((a2 >> 58) & 4 | (a2 >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:

      break;
    case 2uLL:
    case 3uLL:
    case 4uLL:

      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_22C45C86C()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C45C8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C45C93C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xC && *(a1 + 16))
    {
      v2 = *a1 + 11;
    }

    else
    {
      v2 = ((((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7) >> 1) & 0xFFFFFFF7 | (8 * (*(a1 + 8) & 1))) ^ 0xF;
      if (v2 >= 0xB)
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

uint64_t sub_22C45C990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 1 | (2 * (-a2 & 0xF));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0x1000000000000007;
    }
  }

  return result;
}

uint64_t sub_22C45CA3C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0xF000000000000007;
  if ((a3 & 1) == 0)
  {
    sub_22C36A83C();
    v5 = swift_allocObject();
    *(v5 + 16) = 91;
    *(v5 + 24) = 0xE100000000000000;
    sub_22C591324();
    v7 = v6;
    v8 = *(v6 + 16);
    if (v8 >= *(v6 + 24) >> 1)
    {
      sub_22C369C2C();
      v7 = v35;
    }

    *(v7 + 16) = v8 + 1;
    *(v7 + 8 * v8 + 32) = v5;
    sub_22C36A83C();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_22C90B47C();
    *(v9 + 24) = v10;
    v11 = *(v7 + 16);
    v12 = v11 + 1;
    if (v11 >= *(v7 + 24) >> 1)
    {
      sub_22C591324();
      v7 = v36;
    }

    *(v7 + 16) = v12;
    *(v7 + 8 * v11 + 32) = v9;
    sub_22C36A83C();
    v13 = swift_allocObject();
    *(v13 + 16) = 93;
    *(v13 + 24) = 0xE100000000000000;
    if ((v11 + 2) > *(v7 + 24) >> 1)
    {
      sub_22C369C2C();
      v7 = v37;
    }

    *(v7 + 16) = v11 + 2;
    *(v7 + 8 * v12 + 32) = v13;
    v14 = sub_22C3DB9B0(v7);

    sub_22C369AEC();
    v15 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v15 + 16) = v16;
    v4 = v15 | 0x6000000000000000;
  }

  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90D070;
  sub_22C36A83C();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_22C90A49C();
  *(v18 + 24) = v19;
  *(inited + 32) = v18;
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v20 = swift_allocBox();
  v22 = v21;
  v23 = sub_22C901FAC();
  v24 = swift_allocBox();
  (*(*(v23 - 8) + 16))(v25, a1, v23);
  *v22 = v24;
  v26 = *MEMORY[0x277D1D798];
  v27 = sub_22C902D0C();
  (*(*(v27 - 8) + 104))(v22, v26, v27);
  swift_storeEnumTagMultiPayload();
  *(inited + 40) = v20 | 0x2000000000000000;
  v28 = v4;
  if ((~v4 & 0xF000000000000007) == 0)
  {
    sub_22C36A83C();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0xE000000000000000;
  }

  *(inited + 48) = v28;
  sub_22C36A83C();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_22C90A49C();
  *(v29 + 24) = v30;
  *(inited + 56) = v29;
  v31 = sub_22C3DB9B0(inited);
  sub_22C4546F8(v4);
  swift_setDeallocating();
  sub_22C58FFB0();
  sub_22C369AEC();
  v32 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v32 + 16) = v33;
  return v32 | 0x6000000000000000;
}

unsigned __int8 *sub_22C45CE18(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 3)
    {
      v7 = v6 - 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 5)
    {
      return (v7 - 4);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 6;
    if (a2 + 6 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 6);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_22C45CEC8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C45CF9C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_22C45CFB0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_22C45CFCC(char a1)
{
  result = 0x6D6574737973;
  switch(a1)
  {
    case 1:
      result = 0x6E61747369737361;
      break;
    case 2:
      result = 1919251317;
      break;
    case 3:
      result = 0x746C75736572;
      break;
    case 4:
      result = 1819242356;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22C45D050(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C90B21C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22C45D0C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C45D050(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22C45D0F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C45CFCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22C45D144(unsigned __int8 a1)
{
  if (a1 >= 7u)
  {
    return 1;
  }

  else
  {
    return (0x4030200010101uLL >> (8 * a1));
  }
}

BOOL sub_22C45D170(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 3u:
      if (a2 == 3)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    case 4u:
      if (a2 == 4)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    case 5u:
      if (a2 != 5)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    case 6u:
      if (a2 != 6)
      {
        goto LABEL_11;
      }

LABEL_9:
      result = 1;
      break;
    default:
      if (a2 - 3 >= 4)
      {
        result = a1 == a2;
      }

      else
      {
LABEL_11:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_22C45D1F8(uint64_t a1, unsigned __int8 a2)
{
  if ((a2 - 3) >= 4u)
  {
    MEMORY[0x2318B8B10](1);
    v2 = a2;
  }

  else
  {
    v2 = qword_22C913928[(a2 - 3)];
  }

  return MEMORY[0x2318B8B10](v2);
}

uint64_t sub_22C45D250(unsigned __int8 a1)
{
  sub_22C90B62C();
  sub_22C45D1F8(v3, a1);
  return sub_22C90B66C();
}

uint64_t sub_22C45D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

unint64_t sub_22C45D31C()
{
  result = qword_27D9BC4D0;
  if (!qword_27D9BC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC4D0);
  }

  return result;
}

_BYTE *sub_22C45D370(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C45D44C()
{
  result = qword_27D9BC4D8;
  if (!qword_27D9BC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC4D8);
  }

  return result;
}

_BYTE *sub_22C45D4A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C45D57C()
{
  result = qword_27D9BC4E0;
  if (!qword_27D9BC4E0)
  {
    sub_22C3AC1A0(&qword_27D9BC4E8, qword_22C913840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC4E0);
  }

  return result;
}

unint64_t sub_22C45D5E4()
{
  result = qword_27D9BC4F0;
  if (!qword_27D9BC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC4F0);
  }

  return result;
}

uint64_t GrammarToolDefinitionBundle.init(definition:enumerationDefinitions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22C908EAC();
  sub_22C36985C();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for GrammarToolDefinitionBundle(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void sub_22C45D6F4(uint64_t a1)
{
  sub_22C908EAC();
  if (v1 <= 0x3F)
  {
    sub_22C45D778(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C45D778(uint64_t a1)
{
  if (!qword_27D9BC508)
  {
    sub_22C90952C();
    sub_22C90998C();
    sub_22C45F73C(&qword_28142FA80, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BC508);
    }
  }
}

uint64_t sub_22C45D86C(uint64_t a1)
{
  result = type metadata accessor for GrammarToolDefinitionBundle(319);
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_27D9BC520, &protocol descriptor for ToolGrammarGenerating);
    if (v3 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_27D9BC528, &protocol descriptor for ToolParameterGrammarGenerating);
      if (v4 <= 0x3F)
      {
        result = sub_22C457168(319, &qword_27D9BC530, &protocol descriptor for CollectionGrammarGenerating);
        if (v5 <= 0x3F)
        {
          result = sub_22C457168(319, &qword_27D9BC538, &protocol descriptor for PrimitiveTypeGrammarGenerating);
          if (v6 <= 0x3F)
          {
            result = sub_22C457168(319, &qword_27D9BC540, &protocol descriptor for EnumerationGrammarGenerating);
            if (v7 <= 0x3F)
            {
              result = sub_22C457168(319, &qword_27D9BC548, &protocol descriptor for EntityTypeGrammarGenerating);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for FullPlannerPreferences(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C45D9F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22C45DA10, 0, 0);
}

uint64_t sub_22C45DA10()
{
  v24 = v0;
  v1 = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0);
  v2 = sub_22C908E8C();
  v4 = v3;
  *&v21 = sub_22C908DCC();

  sub_22C45F654(&v21);
  v5 = v0[3];

  v6 = v21;
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  v8 = sub_22C3B29B0(sub_22C45F6FC, v7, v6);

  v9 = v0[3];

  v10 = sub_22C374168((v9 + *(v1 + 24)), *(v9 + *(v1 + 24) + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v4;
  v12 = *v10;
  v13 = sub_22C49FB90(v11, v9 + *(v1 + 48));
  v15 = v14;

  sub_22C532604(v13, v15, v8, v12, &v21);
  v17 = v0[2];

  v18 = v22;
  v19 = v23;
  *v17 = v21;
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  v20 = v0[1];

  return v20();
}

uint64_t sub_22C45DC60()
{
  v0 = sub_22C9097EC();
  v2 = v1;
  if (v0 == sub_22C9097EC() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_22C90B4FC();
  }

  return v5 & 1;
}

uint64_t sub_22C45DCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v29 = a4;
  v30 = a3;
  v6 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  v9 = type metadata accessor for ToolDefinitionGrammarGeneratorError(0);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C90941C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28[1] = a1;
  MEMORY[0x2318B6CE0](v14);
  v17 = v35;
  sub_22C45DFDC(v16, v11, &v31);
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    sub_22C45F73C(&qword_27D9BC550, type metadata accessor for ToolDefinitionGrammarGeneratorError, &unk_22C913A34);
    v18 = swift_allocError();
    result = sub_22C45F814(v11, v19, type metadata accessor for ToolDefinitionGrammarGeneratorError);
    *v30 = v18;
  }

  else
  {
    v21 = v32;
    v35 = v31;
    v22 = v33;
    v23 = v34;
    v24 = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0);
    sub_22C374168((a2 + *(v24 + 28)), *(a2 + *(v24 + 28) + 24));
    v25 = sub_22C9097EC();
    v27 = v26;
    v31 = v35;
    v32 = v21;
    v33 = v22;
    v34 = v23;
    sub_22C36C640(v8, 1, 1, v12);
    sub_22C532128(v25, v27, &v31, v8, v29);

    sub_22C36DD28(v8, &qword_27D9BC028, &unk_22C9134B0);
  }

  return result;
}

uint64_t sub_22C45DFDC@<X0>(uint64_t (*a1)(uint64_t, unint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v205 = a2;
  v225 = a1;
  v206 = a3;
  v3 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22C369ABC();
  v210 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  sub_22C3698F8(&v186 - v7);
  v214 = sub_22C90993C();
  sub_22C369824();
  v201 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v209 = v10;
  v208 = sub_22C909A3C();
  sub_22C369824();
  v211 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v207 = v13;
  v14 = sub_22C3A5908(&qword_27D9BC558, &qword_22C9139B8);
  MEMORY[0x28223BE20](v14 - 8);
  sub_22C3698F8(&v186 - v15);
  v194 = sub_22C90998C();
  sub_22C369824();
  v193 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C3698A8();
  sub_22C3698F8(v18);
  v199 = sub_22C9094EC();
  sub_22C369824();
  v198 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22C3698A8();
  sub_22C3698F8(v21);
  v204 = sub_22C90952C();
  sub_22C369824();
  v203 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C369ABC();
  v26 = (v24 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = &v186 - v28;
  v212 = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0);
  sub_22C369824();
  v187 = v30;
  MEMORY[0x28223BE20](v31);
  v188 = v32;
  v33 = sub_22C3698F8(&v186 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v200 = type metadata accessor for ToolDefinitionGrammarGeneratorError(v33);
  sub_22C36985C();
  MEMORY[0x28223BE20](v34);
  sub_22C369ABC();
  v195 = v35 - v36;
  v38 = MEMORY[0x28223BE20](v37);
  v189 = &v186 - v39;
  MEMORY[0x28223BE20](v38);
  sub_22C3698F8(&v186 - v40);
  v41 = sub_22C90941C();
  sub_22C369824();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  sub_22C369ABC();
  v47 = (v45 - v46);
  v49 = MEMORY[0x28223BE20](v48);
  v51 = (&v186 - v50);
  MEMORY[0x28223BE20](v49);
  v53 = (&v186 - v52);
  v54 = *(v43 + 16);
  v54(&v186 - v52, v225, v41);
  v55 = sub_22C36EBF0();
  v57 = v56(v55);
  if (v57 == *MEMORY[0x277D72AD0])
  {
    v58 = sub_22C36EBF0();
    v59(v58);
    v60 = *v53;
    v61 = swift_projectBox();
    v62 = v203;
    v63 = *(v203 + 16);
    v64 = v204;
    v63(v29, v61, v204);
    TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v26);
    v65 = sub_22C37493C();
    v67 = v66(v65);
    v68 = v29;
    if (v67 == *MEMORY[0x277D72D50])
    {
      v69 = sub_22C37493C();
      v70(v69);
      v71 = swift_projectBox();
      v72 = v198;
      v73 = v197;
      v74 = v199;
      (*(v198 + 16))(v197, v71, v199);
      sub_22C374168((v215 + *(v212 + 36)), *(v215 + *(v212 + 36) + 24));
      sub_22C387010();
      sub_22C533C80(v73, v75, v76);
      (*(v72 + 8))(v73, v74);
LABEL_4:
      (*(v62 + 8))(v68, v64);
    }

    v84 = v215;
    v85 = v212;
    if (v67 == *MEMORY[0x277D72D30])
    {
LABEL_10:
      v86 = *(v62 + 8);
      v87 = sub_22C37493C();
      v86(v87);
      v63(v205, v68, v64);
      sub_22C372704();
      swift_storeEnumTagMultiPayload();
      sub_22C36A848();
      sub_22C45F73C(v88, v89, &unk_22C913A34);
      swift_willThrowTypedImpl();
      (v86)(v68, v64);
    }

    if (v67 != *MEMORY[0x277D72D28])
    {
      if (v67 != *MEMORY[0x277D72D18])
      {
        v63(v205, v68, v64);
        sub_22C372704();
        swift_storeEnumTagMultiPayload();
        sub_22C36A848();
        sub_22C45F73C(v119, v120, &unk_22C913A34);
        swift_willThrowTypedImpl();
        v121 = *(v62 + 8);
        v121(v68, v64);
        v122 = sub_22C37493C();
        (v121)(v122);
      }

      goto LABEL_10;
    }

    v97 = sub_22C37493C();
    v98(v97);
    v99 = *v26;
    v100 = *(*v26 + 24);
    v225 = *(*v26 + 16);
    v205 = v100;
    v101 = *(v99 + 40);
    v200 = *(v99 + 32);
    v199 = v101;
    v102 = v84 + *(v85 + 20);
    v103 = type metadata accessor for GrammarToolDefinitionBundle(0);
    v104 = v191;
    sub_22C60570C(v68, *(v102 + *(v103 + 20)));
    v105 = v194;
    if (sub_22C370B74(v104, 1, v194) == 1)
    {
      sub_22C36DD28(v104, &qword_27D9BC558, &qword_22C9139B8);
      sub_22C374168((v84 + *(v85 + 44)), *(v84 + *(v85 + 44) + 24));
      sub_22C387010();
      sub_22C533B78(v106);
      goto LABEL_4;
    }

    v128 = v85;
    v196 = v99;
    v197 = v60;
    v198 = v68;
    v129 = (*(v193 + 32))(v192, v104, v105);
    v130 = MEMORY[0x2318B6E50](v129);
    v131 = *(v130 + 16);
    if (v131)
    {
      v225 = *(v211 + 16);
      v132 = (*(v211 + 80) + 32) & ~*(v211 + 80);
      v195 = v130;
      v133 = v130 + v132;
      v205 = *(v211 + 72);
      v211 += 16;
      v134 = (v211 - 8);
      v135 = (v201 + 32);
      v136 = MEMORY[0x277D84F90];
      v137 = v202;
      do
      {
        v138 = v207;
        v139 = v208;
        v225(v207, v133, v208);
        v140 = v210;
        sub_22C909A1C();
        sub_22C45F784(v140, v137);
        (*v134)(v138, v139);
        v141 = v214;
        if (sub_22C370B74(v137, 1, v214) == 1)
        {
          sub_22C36DD28(v137, &qword_27D9BC390, &qword_22C912AC0);
        }

        else
        {
          v142 = *v135;
          (*v135)(v209, v137, v141);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C592CB0();
            v136 = v144;
          }

          v143 = *(v136 + 16);
          if (v143 >= *(v136 + 24) >> 1)
          {
            sub_22C592CB0();
            v136 = v145;
          }

          *(v136 + 16) = v143 + 1;
          v142(v136 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v143, v209, v214);
          v137 = v202;
        }

        v133 += v205;
        --v131;
      }

      while (v131);

      v128 = v212;
    }

    else
    {

      v136 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v167);
    v178 = v215;
    *(&v186 - 2) = v215;
    v179 = v213;
    v180 = sub_22C3B3E54(sub_22C45F7F4, (&v186 - 4), v136);
    v213 = v179;

    v181 = (v178 + *(v128 + 40));
    v182 = v181[4];
    sub_22C374168(v181, v181[3]);
    v222 = v180;
    v183 = *(v182 + 8);
    sub_22C3A5908(&qword_27D9BC560, &unk_22C9139C0);
    sub_22C3D32C8(&qword_27D9BC568, &qword_27D9BC560, &unk_22C9139C0, MEMORY[0x277D83988]);
    sub_22C387010();
    v183(v200, v199);
    (*(v193 + 8))(v192, v194);
    (*(v203 + 8))(v198, v204);
  }

  else
  {
    if (v57 == *MEMORY[0x277D72AB0])
    {
      v78 = sub_22C36EBF0();
      v79(v78);
      v80 = swift_projectBox();
      v54(v51, v80, v41);
      sub_22C378A4C(v215 + *(v212 + 32), &v222);
      sub_22C374168(&v222, v224);
      v81 = v213;
      v82 = v196;
      sub_22C45DFDC(v51, v196, &v219);
      if (v81)
      {
        (*(v43 + 8))(v51, v41);
        sub_22C461084();
        sub_22C45F814(v82, v205, v83);
      }

      else
      {
        v216 = v219;
        v217 = v220;
        v218 = v221;
        sub_22C387010();
        sub_22C533804(v117, v118);

        (*(v43 + 8))(v51, v41);
      }

      sub_22C36FF94(&v222);
    }

    if (v57 == *MEMORY[0x277D72AE8])
    {
      v90 = sub_22C36EBF0();
      v91(v90);
      v92 = swift_projectBox();
      v54(v47, v92, v41);
      sub_22C387010();
      v93 = v213;
      v94 = v195;
      sub_22C45DFDC(v47, v195, v95);
      (*(v43 + 8))(v47, v41);
      if (v93)
      {
        sub_22C461084();
        sub_22C45F814(v94, v205, v96);
      }
    }

    if (v57 == *MEMORY[0x277D72AD8])
    {
      v107 = sub_22C36EBF0();
      v108(v107);
      v109 = *v53;
      v110 = v190;
      sub_22C460FC8(v215, v190, type metadata accessor for ToolDefinitionGrammarGenerator_v5_0);
      v111 = (*(v187 + 80) + 16) & ~*(v187 + 80);
      v112 = swift_allocObject();
      sub_22C45F814(v110, v112 + v111, type metadata accessor for ToolDefinitionGrammarGenerator_v5_0);
      v113 = v213;
      v114 = v189;
      sub_22C3B3AA0();
      if (v113)
      {
        sub_22C461084();
        sub_22C45F814(v114, v205, v116);
      }

      v150 = v115;

      v155 = *(v150 + 16);
      if (!v155)
      {

        swift_storeEnumTagMultiPayload();
        sub_22C36A848();
        sub_22C45F73C(v184, v185, &unk_22C913A34);
        swift_willThrowTypedImpl();
      }

      v225 = v109;
      v213 = 0;
      v222 = 0x5F6E6F696E75;
      v223 = 0xE600000000000000;
      *&v219 = MEMORY[0x277D84F90];
      sub_22C3B5E2C(0, v155, 0, v151, v152, v153, v154);
      v156 = v219;
      v157 = (v150 + 40);
      do
      {
        v159 = *(v157 - 1);
        v158 = *v157;
        *&v219 = v156;
        v160 = *(v156 + 16);
        v161 = *(v156 + 24);

        if (v160 >= v161 >> 1)
        {
          sub_22C3B5E2C(v161 > 1, v160 + 1, 1, v162, v163, v164, v165);
          v156 = v219;
        }

        *(v156 + 16) = v160 + 1;
        v166 = v156 + 16 * v160;
        *(v166 + 32) = v159;
        *(v166 + 40) = v158;
        v157 += 4;
        --v155;
      }

      while (v155);
      *&v219 = v156;
      sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
      sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0, MEMORY[0x277D83958]);
      v168 = sub_22C90A04C();
      v170 = v169;

      MEMORY[0x2318B7850](v168, v170);

      v171 = v223;
      sub_22C387010();
      sub_22C46BF90(v172, v171, v150, v173, v174, v175, v176, v177);
    }

    else if (v57 == *MEMORY[0x277D72AB8] || v57 == *MEMORY[0x277D72AE0])
    {
      v124 = sub_22C36EBF0();
      v125(v124);
      v54(v205, v225, v41);
      sub_22C372704();
      swift_storeEnumTagMultiPayload();
      sub_22C36A848();
      sub_22C45F73C(v126, v127, &unk_22C913A34);
      return swift_willThrowTypedImpl();
    }

    else
    {
      v54(v205, v225, v41);
      sub_22C372704();
      swift_storeEnumTagMultiPayload();
      sub_22C36A848();
      sub_22C45F73C(v146, v147, &unk_22C913A34);
      swift_willThrowTypedImpl();
      v148 = sub_22C36EBF0();
      return v149(v148);
    }
  }
}

uint64_t sub_22C45F254@<X0>(uint64_t (*a1)(uint64_t, unint64_t, uint64_t)@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>)
{
  v7 = type metadata accessor for ToolDefinitionGrammarGeneratorError(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C45DFDC(a1, v9, a2);
  if (v3)
  {
    return sub_22C45F814(v9, a3, type metadata accessor for ToolDefinitionGrammarGeneratorError);
  }

  return result;
}

uint64_t sub_22C45F318(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0) + 40));
  v3 = v2[3];
  v4 = v2[4];
  sub_22C374168(v2, v3);
  sub_22C9098BC();
  v5 = sub_22C90A2CC();
  v7 = v6;

  sub_22C9098BC();
  v8 = sub_22C90A2AC();
  v10 = v9;

  (*(v4 + 16))(v5, v7, v8, v10, v3, v4);
}

uint64_t sub_22C45F404(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C3B00E8;

  return sub_22C45D9F0(a1);
}

uint64_t sub_22C45F49C()
{
  type metadata accessor for ToolDefinitionGrammarGeneratorError(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C460FC8(v0, v3, type metadata accessor for ToolDefinitionGrammarGeneratorError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v5 = 1;
    goto LABEL_5;
  }

  v5 = 0;
  if (EnumCaseMultiPayload == 1)
  {
    v5 = 2;
LABEL_5:
    sub_22C461028(v3);
  }

  return v5;
}

uint64_t sub_22C45F55C(uint64_t a1)
{
  v2 = sub_22C45F73C(qword_27D9BC580, type metadata accessor for ToolDefinitionGrammarGeneratorError, &unk_22C9139F4);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C45F5C8(uint64_t a1)
{
  v2 = sub_22C45F73C(qword_27D9BC580, type metadata accessor for ToolDefinitionGrammarGeneratorError, &unk_22C9139F4);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C45F654(uint64_t *a1)
{
  v2 = *(sub_22C90981C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C1AC();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C45F8F8(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C45F73C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C45F784(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C45F814(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C45F8F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C90981C();
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C90981C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C45FD48(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C45FA28(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C45FA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22C90981C();
  v9 = MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        v52(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = sub_22C9097EC();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == sub_22C9097EC() && v31 == v32)
        {
          break;
        }

        v34 = sub_22C90B4FC();

        v35 = *v51;
        (*v51)(v29, v8);
        result = (v35)(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return result;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v36)(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      result = (v39)(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C45FD48(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v148 = a1;
  v8 = sub_22C90981C();
  v9 = MEMORY[0x28223BE20](v8);
  v153 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v166 = &v144 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v144 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v162 = &v144 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v161 = &v144 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v21);
  v26 = &v144 - v22;
  v159 = v23;
  v160 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_114:
    v171 = *v148;
    if (!v171)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v167 = v24;
  v144 = a4;
  v28 = 0;
  v171 = v23 + 16;
  v169 = (v23 + 32);
  v170 = (v23 + 8);
  v29 = MEMORY[0x277D84F90];
  v163 = v8;
  v155 = v15;
  v145 = v25;
  v147 = &v144 - v22;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v150 = v28;
    if (v28 + 1 < v27)
    {
      v165 = v27;
      v146 = v29;
      v32 = v26;
      v33 = *v160;
      v34 = *(v23 + 72);
      v35 = v25;
      v158 = v28 + 1;
      v36 = v28;
      v37 = &v33[v34 * (v28 + 1)];
      v38 = *(v23 + 16);
      v38(v32, v37, v8);
      v39 = &v33[v34 * v36];
      v40 = v147;
      v157 = v38;
      v38(v35, v39, v8);
      LODWORD(v164) = sub_22C45DC60();
      if (v5)
      {
        v143 = *v170;
        (*v170)(v35, v8);
        (v143)(v40, v8);
LABEL_124:

        return;
      }

      v149 = 0;
      v41 = *v170;
      (*v170)(v35, v8);
      v156 = v41;
      (v41)(v40, v8);
      v42 = v150 + 2;
      v43 = &v33[v34 * (v150 + 2)];
      v31 = v158;
      v44 = v34;
      v168 = v34;
      v45 = v165;
      while (1)
      {
        v46 = v42;
        if (v31 + 1 >= v45)
        {
          break;
        }

        v47 = v31;
        v48 = v163;
        v5 = v157;
        (v157)(v161, v43, v163);
        v5(v162, v37, v48);
        v49 = sub_22C9097EC();
        v51 = v50;
        if (v49 == sub_22C9097EC() && v51 == v52)
        {
          v54 = 0;
        }

        else
        {
          v54 = sub_22C90B4FC();
        }

        v55 = v163;
        v56 = v156;
        (v156)(v162, v163);
        v56(v161, v55);
        v44 = v168;
        v43 += v168;
        v37 += v168;
        v31 = v47 + 1;
        v42 = v46 + 1;
        v45 = v165;
        if ((v164 ^ v54))
        {
          goto LABEL_16;
        }
      }

      v31 = v45;
LABEL_16:
      if (v164)
      {
        v30 = v150;
        if (v31 < v150)
        {
          goto LABEL_149;
        }

        v5 = v149;
        if (v150 >= v31)
        {
          v23 = v159;
          v29 = v146;
          v8 = v163;
          v15 = v155;
          goto LABEL_39;
        }

        if (v45 >= v46)
        {
          v57 = v46;
        }

        else
        {
          v57 = v45;
        }

        v58 = v44 * (v57 - 1);
        v59 = v44 * v57;
        v60 = v150;
        v61 = v150 * v44;
        v62 = v31;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v160;
            if (!*v160)
            {
              goto LABEL_154;
            }

            v64 = v163;
            v165 = *v169;
            v165(v153, &v63[v61], v163);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v165(&v63[v58], v153, v64);
            v5 = v149;
            v44 = v168;
          }

          ++v60;
          v58 -= v44;
          v59 -= v44;
          v61 += v44;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v149;
      }

      v23 = v159;
      v29 = v146;
      v8 = v163;
      v15 = v155;
      v30 = v150;
    }

LABEL_39:
    v66 = v160[1];
    if (v31 < v66)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_146;
      }

      if (v31 - v30 < v144)
      {
        break;
      }
    }

LABEL_62:
    if (v31 < v30)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v29 + 2) + 1, 1, v29);
      v29 = v133;
    }

    v89 = *(v29 + 2);
    v88 = *(v29 + 3);
    v90 = v89 + 1;
    v158 = v31;
    if (v89 >= v88 >> 1)
    {
      sub_22C590218(v88 > 1, v89 + 1, 1, v29);
      v29 = v134;
    }

    *(v29 + 2) = v90;
    v91 = v29 + 32;
    v92 = &v29[16 * v89 + 32];
    v93 = v158;
    *v92 = v150;
    *(v92 + 1) = v93;
    v168 = *v148;
    if (!v168)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v29[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v29 + 4);
          v98 = *(v29 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
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
          goto LABEL_148;
        }

        if (!*v160)
        {
          goto LABEL_152;
        }

        v126 = v29;
        v127 = &v91[16 * v94 - 16];
        v128 = *v127;
        v129 = &v91[16 * v94];
        v130 = *(v129 + 1);
        sub_22C460904(&(*v160)[*(v159 + 72) * *v127], &(*v160)[*(v159 + 72) * *v129], &(*v160)[*(v159 + 72) * v130], v168);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v130 < v128)
        {
          goto LABEL_127;
        }

        v131 = *(v126 + 2);
        if (v94 > v131)
        {
          goto LABEL_128;
        }

        *v127 = v128;
        *(v127 + 1) = v130;
        if (v94 >= v131)
        {
          goto LABEL_129;
        }

        v90 = v131 - 1;
        sub_22C56BFF0(v129 + 16, v131 - 1 - v94, &v91[16 * v94]);
        v29 = v126;
        *(v126 + 2) = v131 - 1;
        v132 = v131 > 2;
        v15 = v155;
        if (!v132)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v159;
    v27 = v160[1];
    v28 = v158;
    v8 = v163;
    v25 = v145;
    v26 = v147;
    if (v158 >= v27)
    {
      goto LABEL_114;
    }
  }

  v67 = (v30 + v144);
  if (__OFADD__(v30, v144))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v160[1];
  }

  if (v67 < v30)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v29 = sub_22C56BFD8();
LABEL_116:
    v135 = v29 + 16;
    v136 = *(v29 + 2);
    while (v136 >= 2)
    {
      if (!*v160)
      {
        goto LABEL_153;
      }

      v137 = v29;
      v138 = &v29[16 * v136];
      v139 = *v138;
      v140 = &v135[2 * v136];
      v141 = *(v140 + 1);
      sub_22C460904(&(*v160)[*(v159 + 72) * *v138], &(*v160)[*(v159 + 72) * *v140], &(*v160)[*(v159 + 72) * v141], v171);
      if (v5)
      {
        break;
      }

      if (v141 < v139)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v138 = v139;
      *(v138 + 1) = v141;
      v142 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      sub_22C56BFF0(v140 + 16, v142, v140);
      *v135 = v136;
      v29 = v137;
    }

    goto LABEL_124;
  }

  if (v31 == v67)
  {
    goto LABEL_62;
  }

  v146 = v29;
  v149 = v5;
  v68 = *v160;
  v69 = *(v23 + 72);
  v168 = *(v23 + 16);
  v70 = &v68[v69 * (v31 - 1)];
  v164 = -v69;
  v165 = v68;
  v71 = (v30 - v31);
  v151 = v69;
  v152 = v67;
  v72 = &v68[v31 * v69];
  v73 = v167;
LABEL_48:
  v157 = v70;
  v158 = v31;
  v154 = v72;
  v156 = v71;
  while (1)
  {
    v74 = v168;
    (v168)(v73, v72, v8);
    v74(v15, v70, v8);
    v75 = v15;
    v76 = sub_22C9097EC();
    v77 = v8;
    v79 = v78;
    if (v76 == sub_22C9097EC() && v79 == v80)
    {

      v87 = *v170;
      (*v170)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v15 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = sub_22C90B4FC();

    v84 = *v170;
    (*v170)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v15 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v167;
LABEL_60:
      v31 = v158 + 1;
      v70 = &v157[v151];
      v71 = v156 - 1;
      v72 = &v154[v151];
      if ((v158 + 1) == v152)
      {
        v31 = v152;
        v5 = v149;
        v29 = v146;
        v30 = v150;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v165)
    {
      break;
    }

    v85 = *v169;
    v86 = v166;
    (*v169)(v166, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v164;
    v72 += v164;
    v65 = __CFADD__(v71++, 1);
    v73 = v167;
    if (v65)
    {
      goto LABEL_60;
    }
  }

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
}

uint64_t sub_22C460904(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_22C90981C();
  v9 = MEMORY[0x28223BE20](v8);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  result = MEMORY[0x28223BE20](v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v24 = (a2 - a1) / v20;
  v77 = a1;
  v76 = a4;
  v72 = (v17 + 8);
  v73 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    v68 = &v64 - v18;
    v70 = v15;
    sub_22C3D7168(a1, (a2 - a1) / v20, a4);
    v71 = (a4 + v24 * v20);
    v75 = v71;
    v26 = a4;
    v27 = v20;
    v67 = v8;
    v69 = a3;
    while (1)
    {
      if (v26 >= v71 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v29 = a1;
      v30 = *v73;
      v31 = v68;
      v32 = a2;
      (*v73)(v68, a2, v8);
      v74 = v26;
      v33 = v70;
      v30();
      v34 = sub_22C9097EC();
      v36 = v35;
      if (v34 == sub_22C9097EC() && v36 == v37)
      {

        v44 = *v72;
        (*v72)(v33, v8);
        v44(v31, v8);
      }

      else
      {
        v39 = sub_22C90B4FC();

        v40 = *v72;
        (*v72)(v33, v8);
        v40(v31, v8);
        if (v39)
        {
          v41 = v32;
          a2 = v32 + v27;
          v42 = v29;
          if (v29 < v32 || v29 >= a2)
          {
            v8 = v67;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v69;
          }

          else
          {
            a3 = v69;
            v8 = v67;
            if (v29 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v74;
          goto LABEL_40;
        }
      }

      v26 = v74 + v27;
      v42 = v29;
      v45 = v29 < v74 || v29 >= v26;
      a2 = v32;
      if (v45)
      {
        v8 = v67;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v69;
      }

      else
      {
        a3 = v69;
        v8 = v67;
        if (v29 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v76 = v26;
LABEL_40:
      a1 = v42 + v27;
      v77 = a1;
    }
  }

  sub_22C3D7168(a2, v22 / v20, a4);
  v74 = a4;
  v46 = a4 + v25 * v20;
  v47 = -v20;
  v48 = v46;
  v68 = -v20;
LABEL_42:
  v69 = a2;
  v67 = a2 + v47;
  v49 = a3;
  v65 = v48;
  while (1)
  {
    if (v46 <= v74)
    {
      v77 = v69;
      v75 = v48;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v66 = v48;
    v50 = v46 + v47;
    v51 = *v73;
    (*v73)(v70, v46 + v47, v8);
    (v51)(v71, v67, v8);
    v52 = sub_22C9097EC();
    v54 = v53;
    if (v52 == sub_22C9097EC() && v54 == v55)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_22C90B4FC();
    }

    v58 = v49 + v68;
    v59 = *v72;
    (*v72)(v71, v8);
    v59(v70, v8);
    if (v57)
    {
      v61 = v49 < v69 || v58 >= v69;
      a3 = v58;
      if (v61)
      {
        a2 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v66;
        v47 = v68;
      }

      else
      {
        v63 = v66;
        v62 = v67;
        v48 = v66;
        v21 = v49 == v69;
        a2 = v67;
        v47 = v68;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v62;
          v48 = v63;
        }
      }

      goto LABEL_42;
    }

    if (v49 < v46 || v58 >= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
      v49 = v58;
      v46 = v50;
      v48 = v50;
      v47 = v68;
    }

    else
    {
      v48 = v50;
      v21 = v46 == v49;
      v49 = v58;
      v46 = v50;
      v47 = v68;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v49 = v58;
        v46 = v50;
        v48 = v50;
      }
    }
  }

  v77 = v69;
  v75 = v65;
LABEL_70:
  sub_22C838188(&v77, &v76, &v75);
  return 1;
}

uint64_t sub_22C460F0C(uint64_t a1)
{
  result = sub_22C90941C();
  if (v2 <= 0x3F)
  {
    result = sub_22C90952C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C460FC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C461028(uint64_t a1)
{
  v2 = type metadata accessor for ToolDefinitionGrammarGeneratorError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C46109C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 56) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 48) = *a2;
  return sub_22C36A77C();
}

uint64_t sub_22C4610C0()
{
  v9 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v8[1] = *(v0 + 48);
  sub_22C474F34(v3, v4, v1, v2, v8);
  *v5 = v8[0];
  sub_22C369C50();

  return v6();
}

uint64_t sub_22C461144(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return sub_22C36A77C();
}

uint64_t sub_22C46115C()
{
  v5 = v0;
  v1 = *(v0 + 16);
  v4[1] = *(v0 + 24);
  sub_22C475B54(v4);
  *v1 = v4[0];
  sub_22C369C50();

  return v2();
}

uint64_t sub_22C4611D4(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_22C46127C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = AssociatedTypeWitness;
  v14 = *(v6 + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v22 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v22 = ((a1 + v14) & ~v12);
    }

    return sub_22C370B74(v22, v10, v13);
  }

  v15 = (v14 & ~v12) + *(*(AssociatedTypeWitness - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_22C4614B0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = (v15 & ~v14) + *(*(AssociatedTypeWitness - 8) + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
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

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v12 = v9;
            AssociatedTypeWitness = v7;
          }

          else
          {
            v24 = (&a1[v15] & ~v14);
            v25 = a2;
          }

          sub_22C36C640(v24, v25, v12, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C461784(uint64_t a1)
{
  result = sub_22C90AC6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C4617F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  v14 = sub_22C370B74(a1, v5, v4);
  if (v14 >= 2)
  {
    return v14 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_22C46196C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
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
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            sub_22C36C640(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22C461BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[5] = AssociatedTypeWitness;
  v4[6] = sub_22C90AC6C();
  sub_22C369B5C();
  v4[7] = v9;
  v10 = swift_task_alloc();
  v4[8] = v10;
  v4[9] = *(AssociatedTypeWitness - 8);
  v4[10] = swift_task_alloc();
  sub_22C369B5C();
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  v4[11] = v12;
  *v12 = v4;
  v12[1] = sub_22C461DB4;

  return v14(v10, a2, v7, v6);
}

uint64_t sub_22C461DB4()
{
  sub_22C369980();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 96) = v0;

  if (v0)
  {
    v5 = sub_22C461FE0;
  }

  else
  {
    v5 = sub_22C461EBC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C461EBC()
{
  v1 = v0[8];
  v2 = v0[5];
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    v3 = v0[9];
    v5 = v0[3];
    v4 = v0[4];
    (*(v0[7] + 8))(v1, v0[6]);
    v6 = v4 + *(v5 + 36);
    v7 = *(v3 + 16);
  }

  else
  {
    v7 = *(v0[9] + 32);
    v7(v0[10], v1, v2);
    v6 = v0[10];
  }

  v8 = v0[5];
  v9 = v0[2];
  v7(v9, v6, v8);
  sub_22C36C640(v9, 0, 1, v8);

  sub_22C369C50();

  return v10();
}

uint64_t sub_22C461FE0()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C462048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C422A58;

  return sub_22C461BA4(a1, a2, a3);
}

uint64_t sub_22C4620F8()
{
  sub_22C369980();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *(v2 + 16);
  v1[7] = sub_22C90AC6C();
  sub_22C369B5C();
  v1[8] = v5;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C4621BC, 0, 0);
}

uint64_t sub_22C4621BC()
{
  v1 = v0[9];
  v2 = v0[6];
  (*(v0[8] + 16))(v1, v0[5], v0[7]);
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    v3 = v0[2];
    (*(v0[8] + 8))(v0[9], v0[7]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_22C36C640(v3, 1, 1, AssociatedTypeWitness);

    sub_22C369C50();

    return v5();
  }

  else
  {
    v7 = *(v0[4] + 24);
    sub_22C369B5C();
    v13 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_22C4623A0;
    v10 = v0[6];
    v11 = v0[2];
    v12 = v0[3];

    return v13(v11, v12, v10, v7);
  }
}

uint64_t sub_22C4623A0()
{
  sub_22C369980();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22C4624FC, 0, 0);
  }

  else
  {
    (*(*(v2[6] - 8) + 8))(v2[9]);

    sub_22C369A24();

    return v4();
  }
}

uint64_t sub_22C4624FC()
{
  sub_22C369980();
  (*(*(*(v0 + 48) - 8) + 8))(*(v0 + 72));

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C46258C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46263C;

  return sub_22C4620F8();
}

uint64_t sub_22C462648(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_22C4629F4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C4626D0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_22C370B74(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_22C46280C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_22C36C640(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_22C4629F4()
{
  result = qword_27D9BC708[0];
  if (!qword_27D9BC708[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27D9BC708);
  }

  return result;
}

uint64_t sub_22C462A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v6 = *(a3 + 32);
  v7 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[5] = AssociatedTypeWitness;
  v9 = sub_22C90AC6C();
  v4[6] = v9;
  v4[7] = *(v9 - 8);
  v10 = swift_task_alloc();
  v4[8] = v10;
  v4[9] = *(AssociatedTypeWitness - 8);
  v4[10] = swift_task_alloc();
  v13 = (*(v6 + 16) + **(v6 + 16));
  v11 = swift_task_alloc();
  v4[11] = v11;
  *v11 = v4;
  v11[1] = sub_22C462C58;

  return v13(v10, a2, v7, v6);
}

uint64_t sub_22C462C58()
{
  sub_22C369980();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 96) = v0;

  if (v0)
  {
    v5 = sub_22C4630AC;
  }

  else
  {
    v5 = sub_22C462D60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C462D60()
{
  v1 = v0[8];
  v2 = v0[5];
  if (sub_22C370B74(v1, 1, v2) == 1)
  {
    v3 = v0[2];
    v4 = v0[3];
    (*(v0[7] + 8))(v1, v0[6]);
    sub_22C36C640(v3, 1, 1, *(v4 + 24));

    sub_22C369A24();

    return v5();
  }

  else
  {
    v8 = v0[3];
    v7 = v0[4];
    (*(v0[9] + 32))(v0[10], v1, v2);
    v12 = (*(v7 + *(v8 + 44)) + **(v7 + *(v8 + 44)));
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_22C462F24;
    v10 = v0[10];
    v11 = v0[2];

    return v12(v11, v10);
  }
}

uint64_t sub_22C462F24()
{
  sub_22C369980();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 112) = v0;

  if (v0)
  {
    v5 = sub_22C463114;
  }

  else
  {
    v5 = sub_22C46302C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C46302C()
{
  sub_22C369980();
  (*(v0[9] + 8))(v0[10], v0[5]);

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C4630AC()
{
  sub_22C369980();

  sub_22C369A24();

  return v0();
}

uint64_t sub_22C463114()
{
  sub_22C369980();
  (*(v0[9] + 8))(v0[10], v0[5]);

  sub_22C369A24();

  return v1();
}

uint64_t sub_22C463194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C422A58;

  return sub_22C462A3C(a1, a2, a3);
}

uint64_t sub_22C46325C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C4632CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
    return sub_22C370B74(a1, v5, v4);
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
        return sub_22C370B74(a1, v5, v4);
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

void sub_22C463408(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

          sub_22C36C640(a1, a2, v7, v6);
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

uint64_t sub_22C463624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C46363C()
{
  sub_22C369980();
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  (*(*(v2 - 8) + 16))(v1, v0[4], v2);
  sub_22C36C640(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_22C4636E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C46403C;

  return sub_22C463624(a1, v6, a3);
}

uint64_t sub_22C46378C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_22C36A77C();
}

uint64_t sub_22C4637A4()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_22C46387C;
  v4 = v0[4];

  return sub_22C77751C(&unk_22C913CF0, v2, v4);
}

uint64_t sub_22C46387C()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v5 + 56) = v4;

  if (v0)
  {
    v6 = *(v2 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22C4639C0, 0, 0);
  }
}

void sub_22C4639C0()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v2 == v3)
      {
        v0 = v16;

        goto LABEL_21;
      }

      if (v3 >= *(v1 + 16))
      {
        break;
      }

      v5 = *(v1 + 32 + 8 * v3);
      v6 = *(v5 + 16);
      v7 = *(v4 + 16);
      v8 = v7 + v6;
      if (__OFADD__(v7, v6))
      {
        goto LABEL_25;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 24) >> 1)
      {
        if (v7 <= v8)
        {
          v10 = v7 + v6;
        }

        else
        {
          v10 = v7;
        }

        sub_22C590FE8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
        v4 = v11;
      }

      if (*(v5 + 16))
      {
        if ((*(v4 + 24) >> 1) - *(v4 + 16) < v6)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v12 = *(v4 + 16);
          v13 = __OFADD__(v12, v6);
          v14 = v12 + v6;
          if (v13)
          {
            goto LABEL_28;
          }

          *(v4 + 16) = v14;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_26;
        }
      }

      ++v3;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

    v4 = 0;
LABEL_21:
    **(v0 + 16) = v4;
    v15 = *(v0 + 8);

    v15();
  }
}

uint64_t sub_22C463B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22C463B8C, 0, 0);
}

uint64_t sub_22C463B8C()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  sub_22C374168(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22C463CBC;
  v5 = v0[5];

  return v7(v0 + 2, v5, v2, v3);
}

uint64_t sub_22C463CBC()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    v5 = sub_22C463DE0;
  }

  else
  {
    v5 = sub_22C463DC0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C463DF8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C463EA8;

  return sub_22C46378C(a1, a2, v6);
}

uint64_t sub_22C463EA8()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_22C463F8C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22C463EA8;

  return sub_22C463B68(a1, a2, v6);
}

uint64_t sub_22C464040(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C464058(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_22C464098(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C4640F8(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_22C9063DC();
  v3[16] = v4;
  sub_22C3699B8(v4);
  v3[17] = v5;
  v3[18] = swift_task_alloc();
  v6 = sub_22C90634C();
  v3[19] = v6;
  sub_22C3699B8(v6);
  v3[20] = v7;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v8 = sub_22C90636C();
  v3[23] = v8;
  sub_22C3699B8(v8);
  v3[24] = v9;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C464274, 0, 0);
}

uint64_t sub_22C464274(uint64_t a1)
{
  v54 = v1;
  v2 = *(v1 + 200);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v47 = *(v4 + 8);
  v47(v2, v3);
  v5 = sub_22C90635C();
  v6 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v5, v6, v8, "QuotableStringGrammarComponent.generate", "", v7, 2u);
    MEMORY[0x2318B9880](v7, -1, -1);
  }

  v45 = *(v1 + 208);
  v10 = *(v1 + 176);
  v9 = *(v1 + 184);
  v12 = *(v1 + 160);
  v11 = *(v1 + 168);
  v13 = *(v1 + 152);
  v14 = *(v1 + 120);

  (*(v12 + 16))(v11, v10, v13);
  sub_22C9063AC();
  swift_allocObject();
  v15 = sub_22C90639C();
  (*(v12 + 8))(v10, v13);
  v47(v45, v9);
  v16 = *v14;
  v17 = v14[1];
  v50 = MEMORY[0x277D84F90];
  sub_22C494E64();
  v19 = v18;
  v48 = v15;
  v21 = *(v1 + 112);
  v20 = *(v1 + 120);

  v22 = *(v20 + 56);
  v23 = *(v21 + 32);
  sub_22C464B30(v20 + 16, v1 + 16);
  if (*(v1 + 40))
  {
    sub_22C36C730((v1 + 16), v1 + 56);
    v24 = *(v1 + 80);
    v25 = *(v1 + 88);
    sub_22C374168((v1 + 56), v24);
    *(v1 + 96) = v19;
    (*(v25 + 16))(&v50, v1 + 96, v16, v17, v23, v24, v25);

    sub_22C36FF94((v1 + 56));
    v16 = v50;
    v17 = v51;
    v22 = v52;
    v26 = v53;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  sub_22C903F7C();

  v27 = sub_22C9063CC();
  v28 = sub_22C90AACC();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v1 + 136);
  v31 = *(v1 + 144);
  v32 = *(v1 + 128);
  if (v29)
  {
    v46 = v22;
    v33 = swift_slowAlloc();
    v44 = v31;
    v34 = swift_slowAlloc();
    v49 = v34;
    v50 = v16;
    *v33 = 136380675;
    v51 = v17;
    v52 = v46;
    v53 = v26;
    BNFGrammarRenderer.renderGrammar(grammar:)(&v50);
    v43 = v26;
    v37 = sub_22C36F9F4(v35, v36, &v49);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_22C366000, v27, v28, "Generated grammar for quotable content: \n%{private}s", v33, 0xCu);
    sub_22C36FF94(v34);
    MEMORY[0x2318B9880](v34, -1, -1);
    v38 = v33;
    v22 = v46;
    MEMORY[0x2318B9880](v38, -1, -1);

    (*(v30 + 8))(v44, v32);
    v39 = v43;
  }

  else
  {

    (*(v30 + 8))(v31, v32);
    v39 = v26;
  }

  v40 = *(v1 + 104);
  *v40 = v16;
  v40[1] = v17;
  v40[2] = v22;
  v40[3] = v39;
  sub_22C46479C(v48);

  v41 = *(v1 + 8);

  return v41();
}

uint64_t sub_22C46479C(uint64_t a1)
{
  v1 = sub_22C90637C();
  v19 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_22C90634C();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C90364C();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v18 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v12 = v19;
    if ((*(v19 + 88))(v3, v1) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v3, v1);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v18, v15, "QuotableStringGrammarComponent.generate", v13, v14, 2u);
    MEMORY[0x2318B9880](v14, -1, -1);
  }

  (*(v4 + 8))(v6, v20);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22C464A88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C3B00E8;

  return sub_22C4640F8(a1, a2);
}

uint64_t sub_22C464B8C()
{
  sub_22C369980();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v1[11] = sub_22C3699D4();
  v4 = type metadata accessor for _PromptToolData(0);
  v1[12] = v4;
  sub_22C3699B8(v4);
  v1[13] = v5;
  v1[14] = sub_22C36D0D4();
  v1[15] = swift_task_alloc();
  v6 = sub_22C9036EC();
  v1[16] = v6;
  sub_22C3699B8(v6);
  v1[17] = v7;
  v1[18] = sub_22C36D0D4();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v8 = sub_22C9063DC();
  v1[24] = v8;
  sub_22C3699B8(v8);
  v1[25] = v9;
  v1[26] = sub_22C36D0D4();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v10 = sub_22C90637C();
  v1[30] = v10;
  sub_22C3699B8(v10);
  v1[31] = v11;
  v1[32] = sub_22C3699D4();
  v12 = sub_22C90634C();
  v1[33] = v12;
  sub_22C3699B8(v12);
  v1[34] = v13;
  v1[35] = sub_22C36D0D4();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v14 = sub_22C90636C();
  v1[41] = v14;
  sub_22C3699B8(v14);
  v1[42] = v15;
  v1[43] = sub_22C36D0D4();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v16 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C464EC8(uint64_t a1)
{
  v2 = v1[47];
  v3 = v1[41];
  v4 = v1[42];
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v5 = *(v4 + 8);
  v1[49] = v5;
  v1[50] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33 = v5;
  v5(v2, v3);
  v6 = sub_22C90635C();
  sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    *sub_22C36D240() = 0;
    v7 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v8, v9, v7, "GlobalToolboxGrammarComponent.generate", "");
    sub_22C3699EC();
  }

  v10 = v1[48];
  v12 = v1[40];
  v11 = v1[41];
  v13 = v1[39];
  v15 = v1[33];
  v14 = v1[34];

  v32 = *(v14 + 16);
  v32(v13, v12, v15);
  sub_22C9063AC();
  swift_allocObject();
  v1[51] = sub_22C36D704();
  v16 = *(v14 + 8);
  v1[52] = v16;
  v1[53] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31 = v16;
  (v16)(v12, v15);
  v33(v10, v11);
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v17 = sub_22C36ECB4();
  (v33)(v17);
  v18 = sub_22C90635C();
  v19 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v20 = sub_22C36D240();
    sub_22C37585C(v20);
    v21 = sub_22C90632C();
    sub_22C46BC48(&dword_22C366000, v18, v19, v21, "GlobalToolboxGrammarComponent.generate.getToolList", "");
    sub_22C3699EC();
  }

  v23 = v1[38];
  v22 = v1[39];
  v24 = v1[33];
  v25 = v1[9];

  v32(v22, v23, v24);
  swift_allocObject();
  v1[54] = sub_22C36D704();
  v26 = sub_22C36FC2C();
  v31(v26);
  v27 = sub_22C36ECB4();
  (v33)(v27);
  v28 = *sub_22C374168((v25 + 16), *(v25 + 40));
  v29 = swift_task_alloc();
  v1[55] = v29;
  *v29 = v1;
  v29[1] = sub_22C4651E0;

  return sub_22C478EB0(v28);
}

uint64_t sub_22C4651E0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 448) = v4;
  *(v2 + 456) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_22C4652E4(uint64_t a1)
{
  v250 = v1;
  v2 = v1;
  sub_22C90364C();
  v3 = sub_22C90635C();
  sub_22C90638C();
  v4 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v5 = sub_22C36ECB4();
    if (v6(v5) == *MEMORY[0x277D85B00])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[31] + 8))(v1[32], v1[30]);
      v7 = "";
    }

    v8 = sub_22C36D240();
    sub_22C37585C(v8);
    v9 = sub_22C90632C();
    sub_22C46BC48(&dword_22C366000, v3, v4, v9, "GlobalToolboxGrammarComponent.generate.getToolList", v7);
    sub_22C3699EC();
  }

  v10 = v1[52];
  v11 = v2[49];
  v12 = v2[45];
  v13 = v2[41];
  v14 = v2[37];
  v15 = v3;
  v16 = v2[33];

  v10(v14, v16);
  v11(v12, v13);
  sub_22C903F7C();

  v17 = sub_22C9063CC();
  v18 = sub_22C90AACC();

  v242 = v2;
  if (os_log_type_enabled(v17, v18))
  {
    v213 = v18;
    log = v17;
    v19 = v2[56];
    v20 = v2[17];
    v21 = swift_slowAlloc();
    v22 = 0;
    v243[0] = swift_slowAlloc();
    buf = v21;
    *v21 = 136315394;
    v239 = *(v19 + 16);
    v230 = *MEMORY[0x277D1ECE0];
    v233 = *MEMORY[0x277D1ECE8];
    v228 = *MEMORY[0x277D1ECD8];
    v225 = *MEMORY[0x277D1ECD0];
    v223 = *MEMORY[0x277D1ECF8];
    v23 = (v20 + 8);
    v220 = (v20 + 32);
    v218 = MEMORY[0x277D84F90];
    while (v239 != v22)
    {
      if (v22 >= *(v19 + 16))
      {
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v25 = *(v20 + 72);
      v26 = *(v20 + 16);
      (v26)(v2[23], v2[56] + v24 + v25 * v22, v2[16]);
      v27 = sub_22C3773B8();
      v26(v27);
      v28 = sub_22C3726C4();
      v30 = v29(v28);
      if (v30 == v230 || v30 != v233 && (v30 != v228 ? (v31 = v30 == v225) : (v31 = 1), !v31 ? (v32 = v30 == v223) : (v32 = 1), v32))
      {
        (*v23)(v242[22], v242[16]);
        v35 = sub_22C3773B8();
        v215 = v36;
        (v36)(v35);
        v37 = v218;
        v246 = v218;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_22C38262C();
          sub_22C3B657C(v38, v39, 1);
          v37 = v246;
        }

        v41 = *(v37 + 16);
        v40 = *(v37 + 24);
        v2 = v242;
        if (v41 >= v40 >> 1)
        {
          v44 = sub_22C374A9C(v40);
          sub_22C3B657C(v44, v41 + 1, 1);
          v37 = v246;
        }

        ++v22;
        v42 = v242[21];
        v43 = v242[16];
        *(v37 + 16) = v41 + 1;
        v218 = v37;
        v215(v37 + v24 + v41 * v25, v42, v43);
      }

      else
      {
        v2 = v242;
        v33 = *v23;
        (*v23)(v242[22], v242[16]);
        v34 = sub_22C36FC2C();
        v33(v34);
        ++v22;
      }
    }

    MEMORY[0x2318B7AD0](v218, v2[16]);

    v51 = sub_22C36FC2C();
    v54 = sub_22C36F9F4(v51, v52, v53);

    v55 = 0;
    *(buf + 4) = v54;
    *(buf + 6) = 2080;
    v231 = MEMORY[0x277D84F90];
    while (v239 != v55)
    {
      if (v55 >= *(v19 + 16))
      {
        goto LABEL_73;
      }

      v56 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v57 = *(v20 + 72);
      v58 = *(v20 + 16);
      (v58)(v2[20], v2[56] + v56 + v57 * v55, v242[16]);
      v59 = sub_22C3773B8();
      v58(v59);
      v60 = sub_22C3726C4();
      v62 = v61(v60);
      v63 = *(v20 + 8);
      v64 = sub_22C3726C4();
      v2 = v242;
      v63(v64);
      if (v62 == v233)
      {
        v65 = *v220;
        (*v220)(v242[18], v242[20], v242[16]);
        v66 = v231;
        v246 = v231;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_22C38262C();
          sub_22C3B657C(v67, v68, 1);
          v66 = v246;
        }

        v70 = *(v66 + 16);
        v69 = *(v66 + 24);
        if (v70 >= v69 >> 1)
        {
          v74 = sub_22C374A9C(v69);
          sub_22C3B657C(v74, v70 + 1, 1);
          v66 = v246;
        }

        ++v55;
        v71 = v242[18];
        v72 = v242[16];
        *(v66 + 16) = v70 + 1;
        v231 = v66;
        v73 = v66 + v56 + v70 * v57;
        v2 = v242;
        v65(v73, v71, v72);
      }

      else
      {
        (v63)(v242[20], v242[16]);
        ++v55;
      }
    }

    v75 = MEMORY[0x2318B7AD0](v231, v2[16]);
    v77 = v76;

    v78 = v75;
    v2 = v242;
    v79 = sub_22C36F9F4(v78, v77, v243);

    *(buf + 14) = v79;
    _os_log_impl(&dword_22C366000, log, v213, "Generating global toolbox grammar for %s tools and %s assistant schemas.", buf, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    v49 = sub_22C36FC2C();
  }

  else
  {
    v45 = v2[29];
    v46 = v2[24];
    v47 = v2[25];

    v48 = *(v47 + 8);
    v49 = v45;
    v50 = v46;
  }

  v238 = v48;
  v48(v49, v50);
  v81 = v2[56];
  v80 = v2[57];
  v82 = v2;
  v83 = v2[49];
  v84 = v82[47];
  v85 = v82[41];
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v83(v84, v85);
  v86 = sub_22C36D240();
  sub_22C37585C(v86);
  v87 = sub_22C90635C();
  LOBYTE(v83) = sub_22C90AB6C();
  v88 = sub_22C90632C();
  sub_22C46BC48(&dword_22C366000, v87, v83, v88, "GlobalToolboxGrammarComponent.generate.buildDynamicEnumerationMap", "");
  v89 = sub_22C4668F0(v81);
  if (v80)
  {
    v91 = v82[51];
    v90 = v82[52];
    v235 = v82[49];
    v92 = v82[44];
    v93 = v82[41];

    v94 = sub_22C3726C4();
    v90(v94);
    v235(v92, v93);
    sub_22C468A20(v91, "GlobalToolboxGrammarComponent.generate");

    sub_22C369A24();
LABEL_43:

    v116();
    return;
  }

  v95 = v82[52];
  v236 = v89;
  v232 = v82[49];
  v96 = v82[44];
  v97 = v82[41];
  v98 = v82[36];
  v99 = v82[33];
  v100 = sub_22C90AB5C();
  v101 = sub_22C90632C();
  sub_22C46BC48(&dword_22C366000, v87, v100, v101, "GlobalToolboxGrammarComponent.generate.buildDynamicEnumerationMap", "");

  sub_22C3699EC();
  v95(v98, v99);
  v232(v96, v97);
  sub_22C903F7C();

  v102 = sub_22C9063CC();
  v103 = sub_22C90AACC();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = sub_22C36FB44();
    *v104 = 134217984;
    *(v104 + 4) = *(v236 + 16);

    _os_log_impl(&dword_22C366000, v102, v103, "Identified %ld dynamic enumeration types in global tools. Using empty case map to enforce correct rendering.", v104, 0xCu);
    sub_22C3699EC();
  }

  else
  {
  }

  v234 = v242[56];
  v105 = v242[49];
  v106 = v242[47];
  v107 = v242[41];
  v108 = v242[8];
  v109 = v242[9];
  v238(v242[28], v242[24]);
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v105(v106, v107);
  v110 = sub_22C36D240();
  sub_22C37585C(v110);
  v111 = sub_22C90635C();
  v112 = sub_22C90AB6C();
  v113 = sub_22C90632C();
  sub_22C46BC48(&dword_22C366000, v111, v112, v113, "GlobalToolboxGrammarComponent.generate.renderTools", "");
  v114 = swift_task_alloc();
  v114[2] = v109;
  v114[3] = v236;
  v114[4] = v108;
  sub_22C792E44(sub_22C46B834, v114, v234);
  v117 = v115;
  v118 = v242[52];
  v226 = v242[49];
  v221 = v242[43];
  v119 = v242[41];
  v120 = v242[35];
  v121 = v242[33];
  v122 = v242[9];

  v123 = sub_22C90AB5C();
  v124 = sub_22C90632C();
  sub_22C46BC48(&dword_22C366000, v111, v123, v124, "GlobalToolboxGrammarComponent.generate.renderTools", "");

  sub_22C3699EC();

  v125 = v120;
  v126 = v242;
  v118(v125, v121);
  v226(v221, v119);
  sub_22C378A4C(v122 + 328, (v242 + 2));
  sub_22C374168(v126 + 2, v126[5]);
  v127 = *(v117 + 16);
  v128 = MEMORY[0x277D84F90];
  v229 = v117;
  if (v127)
  {
    v129 = v242[13];
    v130 = (v242[15] + *(v242[12] + 36));
    v131 = v117 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
    v240 = *(v129 + 72);
    do
    {
      v132 = v126[15];
      sub_22C372714();
      v133 = sub_22C36A724();
      sub_22C46B904(v133, v134, v135);
      v136 = *v130;
      v137 = v130[1];
      v138 = v130[2];
      v139 = v130[3];
      v140 = sub_22C36ECB4();
      sub_22C456C94(v140, v141, v138);
      sub_22C36A860();
      sub_22C46B9D0(v132, v142);
      if (v137)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C591018(0, *(v128 + 16) + 1, 1, v128);
          v128 = v146;
        }

        sub_22C37F0F4();
        if (v144)
        {
          sub_22C369AB0(v143);
          sub_22C379FA0();
          sub_22C591018(v147, v148, v149, v128);
          v128 = v150;
        }

        *(v128 + 16) = v132;
        v145 = (v128 + 32 * v118);
        v145[4] = v136;
        v145[5] = v137;
        v145[6] = v138;
        v145[7] = v139;
      }

      v126 = v242;
      v131 += v240;
      --v127;
    }

    while (v127);
  }

  sub_22C531C50(v128, &v246);

  v152 = v246;
  v151 = v247;
  v153 = v248;
  v154 = v249;
  sub_22C36FF94(v126 + 2);
  if (!v151)
  {

    sub_22C903F7C();
    v207 = sub_22C9063CC();
    v208 = sub_22C90AACC();
    if (os_log_type_enabled(v207, v208))
    {
      v209 = sub_22C36D240();
      *v209 = 0;
      _os_log_impl(&dword_22C366000, v207, v208, "Failed to produce grammar when rendering global toolbox.", v209, 2u);
      sub_22C3699EC();

      sub_22C456D48(v152, 0, v153);
    }

    else
    {
    }

    v212 = v126[7];
    v238(v126[26], v126[24]);
    *(v212 + 32) = 0;
    *v212 = 0u;
    *(v212 + 16) = 0u;
LABEL_71:
    sub_22C468A20(v126[51], "GlobalToolboxGrammarComponent.generate");

    sub_22C369C50();
    goto LABEL_43;
  }

  v155 = v126[9];
  v246 = v152;
  v247 = v151;
  v248 = v153;
  v249 = v154;
  v156 = v155[1];
  v244 = *v155;
  v245 = v156;
  v222 = v151;
  v224 = v152;
  v227 = v153;
  sub_22C456C94(v152, v151, v153);

  MEMORY[0x2318B7850](0x5F6C61626F6C675FLL, 0xE800000000000000);
  sub_22C46763C(v244, v245, v243);

  v157 = v243[0];
  v158 = v243[1];
  v159 = v243[2];
  v160 = v243[3];
  sub_22C903F7C();

  v161 = sub_22C9063CC();
  v162 = sub_22C90AACC();

  v163 = os_log_type_enabled(v161, v162);
  v164 = v126[27];
  v165 = v126[24];
  v237 = v158;
  v241 = v157;
  bufa = v159;
  v219 = v160;
  if (v163)
  {
    v166 = sub_22C36FB44();
    v167 = swift_slowAlloc();
    v168 = v159;
    v169 = v167;
    v243[0] = v167;
    *v166 = 136315138;
    v246 = v241;
    v247 = v158;
    v248 = v168;
    v249 = v160;
    BNFGrammarRenderer.renderGrammar(grammar:)(&v246);
    v172 = sub_22C36F9F4(v170, v171, v243);

    *(v166 + 4) = v172;
    v126 = v242;
    sub_22C37B250(&dword_22C366000, v173, v174, "Generated grammar for global toolbox: \n%s");
    sub_22C36FF94(v169);
    sub_22C3699EC();
    v157 = v241;
    sub_22C3699EC();
  }

  v238(v164, v165);
  v175 = *(v229 + 16);
  if (!v175)
  {

    v184 = MEMORY[0x277D84F90];
LABEL_68:
    v210 = v126[7];
    v211 = sub_22C3AD928(v184);
    sub_22C456D48(v224, v222, v227);

    *v210 = v157;
    v210[1] = v158;
    v210[2] = bufa;
    v210[3] = v219;
    v210[4] = v211;
    goto LABEL_71;
  }

  v246 = MEMORY[0x277D84F90];
  v176 = sub_22C36D6CC();
  sub_22C3B5E2C(v176, v177, v178, v179, v180, v181, v182);
  v183 = 0;
  v184 = v246;
  while (v183 < *(v229 + 16))
  {
    v185 = v175;
    v186 = v126[14];
    sub_22C372714();
    sub_22C46B904(v187, v186, v188);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C3732E0();
    sub_22C46B854(&qword_27D9BC4A0, v189, &unk_22C916664);
    v190 = sub_22C909F0C();
    sub_22C4A0390();
    v191 = v126;
    v193 = v192;
    v195 = v194;
    v196 = v191[14];

    sub_22C36A860();
    sub_22C46B9D0(v196, v197);
    v246 = v184;
    sub_22C37F0F4();
    if (v144)
    {
      sub_22C374A9C(v198);
      sub_22C379FA0();
      sub_22C3B5E2C(v200, v201, v202, v203, v204, v205, v206);
      v184 = v246;
    }

    ++v183;
    *(v184 + 16) = v190;
    v199 = v184 + 16 * v191;
    *(v199 + 32) = v193;
    *(v199 + 40) = v195;
    v175 = v185;
    v157 = v241;
    v126 = v242;
    v158 = v237;
    if (v185 == v183)
    {

      goto LABEL_68;
    }
  }

LABEL_74:
  __break(1u);
}

uint64_t sub_22C466728()
{
  v1 = *(v0 + 408);

  sub_22C468A20(v1, "GlobalToolboxGrammarComponent.generate");

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C4668F0(uint64_t a1)
{
  v93 = type metadata accessor for DynamicEnumeration(0);
  v91 = *(v93 - 8);
  v3 = MEMORY[0x28223BE20](v93);
  v98 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v92 = &v73 - v5;
  v90 = sub_22C90941C();
  v78 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v99 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22C908EAC();
  v76 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v77 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationDynamicEnumerationQuery = type metadata accessor for QueryDecorationDynamicEnumerationQuery(0);
  v96 = *(DecorationDynamicEnumerationQuery - 8);
  MEMORY[0x28223BE20](DecorationDynamicEnumerationQuery);
  v97 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v73 - v10;
  v12 = sub_22C908ABC();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v73 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v73 - v20;
  MEMORY[0x28223BE20](v19);
  v95 = &v73 - v22;
  v23 = 0;
  v24 = *(a1 + 16);
  v88 = (v25 + 32);
  v89 = v25;
  v94 = MEMORY[0x277D84F90];
  v87 = v15;
  while (v24 != v23)
  {
    v26 = *(sub_22C9036EC() - 8);
    sub_22C467948(a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, v11);
    if (sub_22C370B74(v11, 1, v12) == 1)
    {
      sub_22C46B89C(v11);
      ++v23;
    }

    else
    {
      v82 = a1;
      v27 = v18;
      v28 = *v88;
      (*v88)(v21, v11, v12);
      v83 = v27;
      v84 = v28;
      v85 = v21;
      (v28)(v27, v21, v12);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v29 = v83;
      }

      else
      {
        v29 = v83;
        sub_22C592E40();
        v94 = v33;
      }

      v30 = *(v94 + 16);
      a1 = v82;
      if (v30 >= *(v94 + 24) >> 1)
      {
        sub_22C592E40();
        v94 = v34;
      }

      ++v23;
      v31 = v94;
      *(v94 + 16) = v30 + 1;
      v32 = v31 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v30;
      v18 = v29;
      (v84)(v32, v29, v12);
      v15 = v87;
      v21 = v85;
    }
  }

  v88 = v1;
  v35 = v94;
  v36 = MEMORY[0x277D84F90];
  v85 = *(v94 + 16);
  if (v85)
  {
    v37 = 0;
    v83 = (v94 + ((*(v89 + 80) + 32) & ~*(v89 + 80)));
    v81 = v89 + 88;
    v82 = v89 + 16;
    v80 = *MEMORY[0x277D1E8E0];
    v84 = (v89 + 8);
    v75 = (v89 + 96);
    v74 = (v76 + 4);
    ++v76;
    v38 = v86;
    v39 = v95;
    while (v37 < *(v35 + 16))
    {
      v40 = v89;
      v41 = *(v89 + 16);
      v41(v39, &v83[*(v89 + 72) * v37], v12);
      v41(v15, v39, v12);
      v42 = (*(v40 + 88))(v15, v12);
      if (v42 == v80)
      {
        (*v75)(v15, v12);
        v43 = v77;
        (*v74)(v77, v15, v38);
        v44 = sub_22C908DCC();
        MEMORY[0x28223BE20](v44);
        *(&v73 - 2) = v43;
        v45 = v88;
        v46 = sub_22C8F47F4(sub_22C46BA94, (&v73 - 4), v44);
        v88 = v45;
        if (v45)
        {

          (*v84)(v95, v12);

          (*v76)(v43, v38);
          return v37;
        }

        v47 = v46;
        (*v84)(v95, v12);

        (*v76)(v43, v38);
      }

      else
      {
        v48 = *v84;
        (*v84)(v15, v12);
        v48(v39, v12);
        v47 = MEMORY[0x277D84F90];
      }

      v49 = v47[2];
      v50 = *(v36 + 16);
      if (__OFADD__(v50, v49))
      {
        goto LABEL_49;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v50 + v49 > *(v36 + 24) >> 1)
      {
        sub_22C592D78();
        v36 = v51;
      }

      v38 = v86;
      v39 = v95;
      if (v47[2])
      {
        if ((*(v36 + 24) >> 1) - *(v36 + 16) < v49)
        {
          goto LABEL_51;
        }

        swift_arrayInitWithCopy();

        v35 = v94;
        if (v49)
        {
          v52 = *(v36 + 16);
          v53 = __OFADD__(v52, v49);
          v54 = v52 + v49;
          if (v53)
          {
            goto LABEL_53;
          }

          *(v36 + 16) = v54;
        }
      }

      else
      {

        v35 = v94;
        if (v49)
        {
          goto LABEL_50;
        }
      }

      ++v37;
      v15 = v87;
      if (v85 == v37)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_48;
  }

LABEL_29:

  v55 = *(v36 + 16);
  if (v55)
  {
    v56 = 0;
    v95 = (v36 + ((*(v96 + 80) + 32) & ~*(v96 + 80)));
    v94 = v78 + 16;
    v37 = MEMORY[0x277D84F98];
    v57 = (v78 + 8);
    while (v56 < *(v36 + 16))
    {
      v58 = sub_22C46B904(&v95[*(v96 + 72) * v56], v97, type metadata accessor for QueryDecorationDynamicEnumerationQuery);
      v59 = MEMORY[0x2318B6CE0](v58);
      v60 = v92;
      MEMORY[0x2318B6CE0](v59);
      *(v60 + *(v93 + 20)) = MEMORY[0x277D84F90];
      sub_22C46B96C(v60, v98);
      swift_isUniquelyReferenced_nonNull_native();
      v100 = v37;
      sub_22C6284D4();
      if (__OFADD__(*(v37 + 16), (v62 & 1) == 0))
      {
        goto LABEL_47;
      }

      v63 = v61;
      v64 = v62;
      sub_22C3A5908(&qword_27D9BC7A8, &qword_22C914298);
      if (sub_22C90B15C())
      {
        sub_22C6284D4();
        if ((v64 & 1) != (v66 & 1))
        {
          goto LABEL_54;
        }

        v63 = v65;
      }

      v37 = v100;
      if (v64)
      {
        sub_22C46BA30(v98, v100[7] + *(v91 + 72) * v63);
        (*v57)(v99, v90);
        sub_22C46B9D0(v97, type metadata accessor for QueryDecorationDynamicEnumerationQuery);
      }

      else
      {
        v100[(v63 >> 6) + 8] |= 1 << v63;
        v67 = v78;
        v68 = v99;
        v69 = v90;
        (*(v78 + 16))(*(v37 + 48) + *(v78 + 72) * v63, v99, v90);
        sub_22C46B96C(v98, *(v37 + 56) + *(v91 + 72) * v63);
        (*(v67 + 8))(v68, v69);
        sub_22C46B9D0(v97, type metadata accessor for QueryDecorationDynamicEnumerationQuery);
        v70 = *(v37 + 16);
        v53 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v53)
        {
          goto LABEL_52;
        }

        *(v37 + 16) = v71;
      }

      if (v55 == ++v56)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_47:
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
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v37 = MEMORY[0x277D84F98];
LABEL_43:

  return v37;
}

uint64_t sub_22C467448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, void, void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v14 = a3;
  v12 = a5;
  v13 = a2;
  v7 = type metadata accessor for RenderableTool(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C3A5908(&qword_27D9BB818, qword_22C910430);
  v10 = sub_22C9036EC();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  sub_22C9037DC();
  v15 = MEMORY[0x277D84F90];
  sub_22C46B854(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
  sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
  sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
  sub_22C90AE4C();
  swift_storeEnumTagMultiPayload();
  sub_22C4B8858(v9, (v13 + 56), v14, *(a4 + 32), v12);
  return sub_22C46B9D0(v9, type metadata accessor for RenderableTool);
}

uint64_t sub_22C46763C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = a2;
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v38 = a1;
  v39 = a2;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  MEMORY[0x2318B7850](v8, v7);
  v11 = v7;
  v12 = v38;
  v13 = v39;
  v37 = v9;
  v35 = v8;
  sub_22C4760BC(&v37, v8, v11, v4, &v38);

  v14 = v38;
  v15 = *(v10 + 16);
  if (v15)
  {
    v28 = v38;
    v29 = v13;
    v31 = a3;
    v32 = a1;
    v30 = v12;
    v37 = MEMORY[0x277D84F90];
    v33 = v11;
    sub_22C3B64F4(0, v15, 0);
    v16 = v37;
    v17 = (v10 + 48);
    do
    {
      v19 = *(v17 - 2);
      v18 = *(v17 - 1);
      v20 = *v17;
      v21 = v19 == v35 && v18 == v11;
      if (v21 || (sub_22C90B4FC() & 1) != 0)
      {
        v38 = v32;
        v39 = v4;
        swift_retain_n();

        MEMORY[0x2318B7850](v19, v18);
        v11 = v33;
        v19 = v38;
        v34 = v39;
        v22 = v4;
      }

      else
      {
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v34 = v18;
        v22 = v4;
      }

      v36 = v20;

      sub_22C4760BC(&v36, v35, v11, v22, &v38);

      v23 = v38;
      v37 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      v4 = v22;
      if (v25 >= v24 >> 1)
      {
        sub_22C3B64F4(v24 > 1, v25 + 1, 1);
        v16 = v37;
      }

      v17 += 3;
      *(v16 + 16) = v25 + 1;
      v26 = (v16 + 24 * v25);
      v11 = v33;
      v26[4] = v19;
      v26[5] = v34;
      v26[6] = v23;
      --v15;
    }

    while (v15);

    v12 = v30;
    a3 = v31;
    v14 = v28;
    v13 = v29;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  *a3 = v12;
  a3[1] = v13;
  a3[2] = v14;
  a3[3] = v16;
  return result;
}

uint64_t sub_22C467948@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C9063DC();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9036EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C908EAC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == *MEMORY[0x277D1ECE0])
  {
    goto LABEL_2;
  }

  if (v15 == *MEMORY[0x277D1ECE8])
  {
    goto LABEL_4;
  }

  if (v15 == *MEMORY[0x277D1ECD8])
  {
LABEL_2:
    (*(v8 + 96))(v10, v7);
    v16 = *(v12 + 32);
    v16(v14, v10, v11);
    v16(a2, v14, v11);
    v17 = *MEMORY[0x277D1E8E0];
    v18 = sub_22C908ABC();
    (*(*(v18 - 8) + 104))(a2, v17, v18);
    v19 = a2;
    v20 = 0;
    v21 = v18;
    return sub_22C36C640(v19, v20, 1, v21);
  }

  if (v15 == *MEMORY[0x277D1ECD0] || v15 == *MEMORY[0x277D1ECF8])
  {
LABEL_4:
    (*(v8 + 8))(v10, v7);
    v21 = sub_22C908ABC();
    v19 = a2;
    v20 = 1;
    return sub_22C36C640(v19, v20, 1, v21);
  }

  sub_22C903F7C();
  v24 = sub_22C9063CC();
  v25 = sub_22C90AADC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_22C366000, v24, v25, "Encountered unknown tool type whilst building dynamic enumeration map. Skipping.", v26, 2u);
    MEMORY[0x2318B9880](v26, -1, -1);
  }

  (*(v28 + 8))(v6, v29);
  v27 = sub_22C908ABC();
  sub_22C36C640(a2, 1, 1, v27);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22C467D40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C464B8C();
}

uint64_t sub_22C467DE8()
{
  sub_22C369980();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v0[13] = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v0[14] = sub_22C3699D4();
  v5 = sub_22C9063DC();
  v0[15] = v5;
  sub_22C3699B8(v5);
  v0[16] = v6;
  v0[17] = sub_22C3699D4();
  v7 = sub_22C90634C();
  v0[18] = v7;
  sub_22C3699B8(v7);
  v0[19] = v8;
  v0[20] = sub_22C36D0D4();
  v0[21] = swift_task_alloc();
  v9 = sub_22C90636C();
  v0[22] = v9;
  sub_22C3699B8(v9);
  v0[23] = v10;
  v0[24] = sub_22C36D0D4();
  v0[25] = swift_task_alloc();
  v11 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_22C467F74(uint64_t a1)
{
  v175 = v1;
  v2 = v1[24];
  v3 = v1[22];
  v4 = v1[23];
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v162 = *(v4 + 8);
  v162(v2, v3);
  v5 = sub_22C90635C();
  sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    *sub_22C36D240() = 0;
    v6 = sub_22C90632C();
    sub_22C3721A8(&dword_22C366000, v7, v8, v6, "ToolsFromPromptGrammarComponent.generate", "");
    sub_22C3699EC();
  }

  v9 = v1[25];
  v11 = v1[21];
  v10 = v1[22];
  v13 = v1[19];
  v12 = v1[20];
  v14 = v1[18];
  v15 = v1[10];

  (*(v13 + 16))(v12, v11, v14);
  sub_22C9063AC();
  swift_allocObject();
  v147 = sub_22C36D704();
  (*(v13 + 8))(v11, v14);
  v162(v9, v10);
  v16 = sub_22C45B3E0(*(v15 + 16));
  if (*(v16 + 16))
  {
    v158 = v1;
    *&v172 = MEMORY[0x277D84F90];
    v17 = sub_22C38262C();
    v160 = v18;
    sub_22C3B6440(v17, v18, 0, v19, v20, v21, v22);
    v23 = 0;
    v24 = v172;
    v155 = *(v172 + 16);
    v25 = 32 * v155 + 56;
    v144 = v16;
    v26 = (v16 + 56);
    do
    {
      v27 = *(v26 - 2);
      v163 = *(v26 - 3);
      v29 = *(v26 - 1);
      v28 = *v26;
      *&v172 = v24;
      v30 = v155 + v23 + 1;
      v31 = *(v24 + 24);

      if (v155 + v23 >= v31 >> 1)
      {
        sub_22C3B6440(v31 > 1, v155 + v23 + 1, 1, v32, v33, v34, v35);
        v24 = v172;
      }

      ++v23;
      *(v24 + 16) = v30;
      v36 = (v24 + v25);
      *(v36 - 3) = v163;
      *(v36 - 2) = v27;
      v25 += 32;
      v26 += 5;
      *(v36 - 1) = v29;
      *v36 = v28;
    }

    while (v160 != v23);
    *&v166 = MEMORY[0x277D84F90];
    v37 = v155 + v23;
    v156 = v24;
    v38 = sub_22C36D6CC();
    sub_22C3B6440(v38, v39, v40, v41, v42, v43, v44);
    v45 = v24;
    v46 = 0;
    v47 = *(v45 + 16);
    v48 = v166;
    v49 = (v45 + 56);
    v153 = v37 - 1;
    do
    {
      if (!v47)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
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
        return;
      }

      if (v46 >= *(v45 + 16))
      {
        goto LABEL_49;
      }

      v50 = *(v49 - 2);
      v52 = *(v49 - 1);
      v51 = *v49;
      *&v172 = *(v49 - 3);
      *(&v172 + 1) = v50;
      v173 = v52;
      v174 = v51;
      v164 = v46 + 1;
      *(v158 + 64) = v46 + 1;

      *&v169 = sub_22C90B47C();
      *(&v169 + 1) = v53;
      MEMORY[0x2318B7850](95, 0xE100000000000000);
      sub_22C46763C(v169, *(&v169 + 1), &v169);

      v54 = v169;
      v56 = v170;
      v55 = v171;
      *&v166 = v48;
      v58 = v48[2];
      v57 = v48[3];
      if (v58 >= v57 >> 1)
      {
        sub_22C369AB0(v57);
        sub_22C379FA0();
        sub_22C3B6440(v61, v62, v63, v64, v65, v66, v67);
        v48 = v166;
      }

      v48[2] = v58 + 1;
      v59 = &v48[4 * v58];
      *(v59 + 2) = v54;
      v59[6] = v56;
      v59[7] = v55;
      v49 += 4;
      --v47;
      v45 = v156;
    }

    while (v153 != v46++);

    v146 = v48;
    v69 = v48[2];
    v70 = v158;
    if (v69)
    {
      v71 = (*(v158 + 128) + 8);
      v72 = v48 + 7;
      *&v68 = 136315138;
      v148 = v68;
      v151 = v71;
      do
      {
        v73 = *(v72 - 3);
        v74 = *(v72 - 2);
        v75 = *(v72 - 1);
        v76 = *v72;

        sub_22C903F7C();

        v77 = sub_22C9063CC();
        v78 = sub_22C90AACC();

        v79 = os_log_type_enabled(v77, v78);
        v164 = v70[17];
        v156 = v70[15];
        if (v79)
        {
          v153 = v69;
          v80 = sub_22C36FB44();
          v81 = swift_slowAlloc();
          *&v169 = v81;
          *v80 = v148;
          *&v172 = v73;
          *(&v172 + 1) = v74;
          v173 = v75;
          v174 = v76;
          BNFGrammarRenderer.renderGrammar(grammar:)(&v172);
          v84 = sub_22C36F9F4(v82, v83, &v169);
          v70 = v158;

          *(v80 + 4) = v84;
          _os_log_impl(&dword_22C366000, v77, v78, "Using transcript generated tool grammar: \n%s", v80, 0xCu);
          sub_22C36FF94(v81);
          v71 = v151;
          sub_22C3699EC();
          v69 = v153;
          sub_22C3699EC();
        }

        else
        {
        }

        (*v71)(v164, v156);
        v72 += 4;
        --v69;
      }

      while (v69);
    }

    v85 = v70;
    v86 = v70[12];
    v87 = v85[11];

    sub_22C46BF90(v87, v86, v146, v88, v89, v90, v91, &v169);

    v172 = v169;
    v173 = v170;
    v174 = v171;
    sub_22C474C14(&v166);

    v172 = v166;
    v173 = v167;
    v174 = v168;
    *&v169 = v87;
    *(&v169 + 1) = v86;

    MEMORY[0x2318B7850](95, 0xE100000000000000);
    v92 = *(&v169 + 1);
    v93 = v169;
    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    *(inited + 32) = v87;
    *(inited + 40) = v86;
    sub_22C5EA364(inited, v95, v96, v97, v98, v99, v100, v101, v143, v144, v146, v147, v148, *(&v148 + 1), v150, v151, v153, v156, v158, v160, v164, v166, *(&v166 + 1), v167, v168, v169, *(&v169 + 1), v170, v171, v172);
    sub_22C475C50(v93, v92, v102, &v169);

    v103 = 0;
    v149 = v169;
    v157 = v170;
    v152 = *(&v169 + 1);
    v154 = v171;
    v104 = MEMORY[0x277D84F90];
    v105 = 64;
    while (v161 != v103)
    {
      if (v103 >= *(v145 + 16))
      {
        goto LABEL_50;
      }

      v106 = *(v145 + v105);
      v107 = *(v106 + 16);
      v108 = *(v104 + 16);
      if (__OFADD__(v108, v107))
      {
        goto LABEL_51;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v108 + v107 > *(v104 + 24) >> 1)
      {
        sub_22C591324();
        v104 = v109;
      }

      if (*(v106 + 16))
      {
        if ((*(v104 + 24) >> 1) - *(v104 + 16) < v107)
        {
          goto LABEL_53;
        }

        sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
        swift_arrayInitWithCopy();

        if (v107)
        {
          v110 = *(v104 + 16);
          v111 = __OFADD__(v110, v107);
          v112 = v110 + v107;
          if (v111)
          {
            goto LABEL_54;
          }

          *(v104 + 16) = v112;
        }
      }

      else
      {

        if (v107)
        {
          goto LABEL_52;
        }
      }

      v105 += 40;
      ++v103;
    }

    v113 = *(v104 + 16);
    if (v113)
    {
      *&v172 = MEMORY[0x277D84F90];
      v114 = sub_22C38262C();
      sub_22C3B5E2C(v114, v113, 0, v115, v116, v117, v118);
      v119 = 0;
      v120 = v172;
      v121 = v159;
      v165 = v113;
      while (v119 < *(v104 + 16))
      {
        v122 = *(v121 + 112);
        type metadata accessor for PromptTreeIdentifier.Label(0);

        sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
        sub_22C3732E0();
        sub_22C46B854(&qword_27D9BC4A0, v123, &unk_22C916664);
        v124 = sub_22C909F0C();
        sub_22C4A0390();
        v126 = v125;
        v128 = v127;

        *&v172 = v120;
        sub_22C37F0F4();
        if (v130)
        {
          sub_22C374A9C(v129);
          sub_22C379FA0();
          sub_22C3B5E2C(v132, v133, v134, v135, v136, v137, v138);
          v120 = v172;
        }

        ++v119;
        *(v120 + 16) = v124;
        v131 = v120 + 16 * v122;
        *(v131 + 32) = v126;
        *(v131 + 40) = v128;
        v121 = v159;
        if (v165 == v119)
        {

          goto LABEL_44;
        }
      }

      goto LABEL_55;
    }

    v120 = MEMORY[0x277D84F90];
    v121 = v159;
LABEL_44:
    v140 = *(v121 + 72);
    v141 = sub_22C3AD928(v120);
    *v140 = v149;
    v140[1] = v152;
    v140[2] = v157;
    v140[3] = v154;
    v140[4] = v141;
  }

  else
  {
    v139 = v1[9];

    *(v139 + 32) = 0;
    *v139 = 0u;
    *(v139 + 16) = 0u;
  }

  sub_22C468A20(v147, "ToolsFromPromptGrammarComponent.generate");

  sub_22C369C50();

  v142();
}

uint64_t sub_22C468A20(uint64_t a1, const char *a2)
{
  v2 = sub_22C90637C();
  sub_22C369824();
  v27 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  v29 = sub_22C90634C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C90636C();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  sub_22C90364C();
  v21 = sub_22C90635C();
  sub_22C90638C();
  v26 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    if ((*(v27 + 88))(v7, v2) == *MEMORY[0x277D85B00])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(v27 + 8))(v7, v2);
      v22 = "";
    }

    v23 = sub_22C36D240();
    *v23 = 0;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v21, v26, v24, a2, v22, v23, 2u);
    sub_22C3699EC();
  }

  (*(v9 + 8))(v13, v29);
  return (*(v16 + 8))(v20, v14);
}

uint64_t sub_22C468CC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C46BC08;

  return sub_22C467DE8();
}

uint64_t sub_22C468D74(uint64_t a1, uint64_t a2)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
  v4 = v2[1];
  *(v3 + 80) = *v2;
  *(v3 + 96) = v4;
  *(v3 + 112) = v2[2];
  return sub_22C36A77C();
}

uint64_t sub_22C468D98()
{
  sub_22C36FB38();
  v1 = v0[17];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *(v3 + 16) = v1;
  v4 = sub_22C36FB5C();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_22C468E64;

  return v6(&unk_22C914220, v3, v2);
}