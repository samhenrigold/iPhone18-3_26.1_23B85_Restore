uint64_t sub_22C56F004(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22C56F044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C56F0A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ToolPromptMap(0);
  v3 = MEMORY[0x277D84F90];
  v5 = sub_22C369F8C(v2, v4, v2);
  sub_22C902D0C();
  sub_22C56F694();
  v6 = sub_22C377F0C();
  v7 = sub_22C377F0C();
  v8 = sub_22C908EAC();
  v10 = sub_22C369F8C(v8, v9, v8);
  v11 = sub_22C90941C();
  result = sub_22C369F8C(v11, v12, v11);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v3;
  a1[3] = v3;
  a1[4] = v7;
  a1[5] = v10;
  a1[6] = result;
  return result;
}

uint64_t sub_22C56F15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(*v3 + 16) && (sub_22C36E2BC(a1, a2), (v5 & 1) != 0))
  {
    v6 = type metadata accessor for ToolPromptMap(0);
    sub_22C36985C();
    sub_22C571B94();
    v7 = a3;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for ToolPromptMap(0);
    v7 = a3;
    v8 = 1;
  }

  return sub_22C36C640(v7, v8, 1, v9);
}

uint64_t sub_22C56F218(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v12);
  v10 = v12;
  if (v4)
  {
  }

  return v10;
}

uint64_t sub_22C56F2A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  v22 = sub_22C56F218(v5, v4, sub_22C56FB08, sub_22C57081C);
  v6 = a1[1];

  v8 = sub_22C56F218(v7, v6, sub_22C4AA2B0, sub_22C56FBE8);
  v9 = a1[4];

  v11 = sub_22C56F218(v10, v9, sub_22C4AA2B0, sub_22C56FBE8);
  v25 = a1[2];
  v26 = v25;
  sub_22C56F9B8(&v26, &v24);

  sub_22C3CC46C(v12);
  v13 = v25;
  v25 = a1[3];
  v24 = v25;
  sub_22C56F9B8(&v25, v23);

  sub_22C3CC46C(v14);
  v15 = v24;
  v16 = a1[5];

  v18 = sub_22C56F218(v17, v16, sub_22C56FA98, sub_22C570424);
  v19 = a1[6];

  result = sub_22C56F218(v20, v19, sub_22C56FA28, sub_22C57002C);
  *a2 = v22;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v15;
  a2[4] = v11;
  a2[5] = v18;
  a2[6] = result;
  return result;
}

void sub_22C56F4C4()
{
  sub_22C36986C();
  if (sub_22C9097CC())
  {
    type metadata accessor for ParameterPromptMap(0);

    sub_22C74960C();
  }
}

void sub_22C56F520()
{
  sub_22C36986C();
  if (sub_22C483418(v0, v1))
  {
    type metadata accessor for ToolPromptMap(0);
    sub_22C74A5DC();
    if (v2)
    {

      sub_22C74960C();
    }
  }
}

void sub_22C56F5A8()
{
  sub_22C36986C();
  sub_22C74A92C();
  if (v0)
  {
    sub_22C74960C();
    if (v1)
    {
      sub_22C46CDD8();
      if (v2)
      {
        sub_22C46CDD8();
        if (v3)
        {
          sub_22C74960C();
          if (v4)
          {
            sub_22C74ACCC();
            if (v5)
            {

              sub_22C74AFDC();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22C56F694()
{
  result = qword_27D9BAAA8;
  if (!qword_27D9BAAA8)
  {
    sub_22C902D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAAA8);
  }

  return result;
}

void sub_22C56F714(uint64_t a1)
{
  sub_22C90981C();
  if (v1 <= 0x3F)
  {
    sub_22C436588(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22C56F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22C56F870(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_22C56F91C(uint64_t a1)
{
  type metadata accessor for RenderableTool(319);
  if (v1 <= 0x3F)
  {
    sub_22C436520(319);
    if (v2 <= 0x3F)
    {
      sub_22C436588(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C56F9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C56FA28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BDDD8, &qword_22C91BE80) + 48);
  v5 = sub_22C3A5908(&qword_27D9BDDE0, &off_22C91BE88);
  result = sub_22C88FD18(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_22C56FA98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BDDF8, &qword_22C91BEA0) + 48);
  v5 = sub_22C3A5908(&qword_27D9BDE00, &off_22C91BEA8);
  result = sub_22C88FD30(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_22C56FB08@<X0>(uint64_t *a2@<X8>)
{
  sub_22C3A5908(&qword_27D9BC480, &unk_22C92B6E0);
  sub_22C3A5908(&qword_27D9BDE18, &unk_22C91BEC0);
  result = sub_22C88FD48();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_22C56FB78@<X0>(uint64_t *a2@<X8>)
{
  sub_22C3A5908(&qword_27D9BC478, &unk_22C9134A0);
  sub_22C3A5908(&qword_27D9BDE40, &qword_22C91BEF0);
  result = sub_22C88FE30();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_22C56FBE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v56 = a5;
  v8 = sub_22C902D0C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v47 = v43 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v43 - v14;
  v16 = sub_22C3A5908(&qword_27D9BC248, &unk_22C912440);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v43 - v17;
  sub_22C8920A0();
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v45 = v9;
  v46 = (v9 + 32);
  v43[4] = v9 + 8;
  v43[5] = v9 + 16;
  v43[3] = v9 + 40;
  v43[1] = a1;

  v43[0] = a3;

  while (1)
  {
    sub_22C890534();
    v19 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
    if (sub_22C370B74(v18, 1, v19) == 1)
    {
      sub_22C36A674(v48);
    }

    v20 = *(v19 + 48);
    v21 = *v46;
    (*v46)(v15, v18, v8);
    v21(v47, &v18[v20], v8);
    v22 = *v56;
    sub_22C6280AC();
    v25 = v24;
    v26 = v22[2];
    v27 = (v23 & 1) == 0;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v26 + v27)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC250, qword_22C912450);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88CA14();
      sub_22C6280AC();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_16;
      }

      v25 = v29;
    }

    v31 = *v56;
    if (v28)
    {
      v33 = v44;
      v32 = v45;
      v34 = v15;
      v35 = v47;
      (*(v45 + 16))(v44, v47, v8);
      v36 = *(v32 + 8);
      v37 = v35;
      v15 = v34;
      v36(v37, v8);
      v36(v34, v8);
      (*(v32 + 40))(v31[7] + *(v32 + 72) * v25, v33, v8);
      a4 = 1;
    }

    else
    {
      v31[(v25 >> 6) + 8] |= 1 << v25;
      v38 = *(v45 + 72) * v25;
      v21((v31[6] + v38), v15, v8);
      v21((v31[7] + v38), v47, v8);
      v39 = v31[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_15;
      }

      v31[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C57002C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v43 = sub_22C90941C();
  v8 = *(v43 - 8);
  v9 = MEMORY[0x28223BE20](v43);
  v40 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - v11;
  v13 = sub_22C3A5908(&qword_27D9BDDE8, &qword_22C91BE90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v39 - v14);
  sub_22C8920A0();
  v44 = v48;
  v45 = v49;
  v46 = v50;
  v47 = v51;
  v41 = v8;
  v42 = (v8 + 32);
  v39[4] = v8 + 8;
  v39[5] = v8 + 16;
  v39[3] = v8 + 40;
  v39[1] = a1;

  v39[0] = a3;

  while (1)
  {
    sub_22C890AD8();
    v16 = sub_22C3A5908(&qword_27D9BDDE0, &off_22C91BE88);
    if (sub_22C370B74(v15, 1, v16) == 1)
    {
      sub_22C36A674(v44);
    }

    v18 = *v15;
    v17 = v15[1];
    v19 = *v42;
    v20 = v12;
    (*v42)(v12, v15 + *(v16 + 48), v43);
    v21 = *v52;
    v23 = sub_22C36E2BC(v18, v17);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BDDF0, &qword_22C91BE98);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88D9F0(v26);
      v28 = sub_22C36E2BC(v18, v17);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_16;
      }

      v23 = v28;
    }

    v30 = *v52;
    if (v27)
    {
      v32 = v40;
      v31 = v41;
      v12 = v20;
      v33 = v43;
      (*(v41 + 16))(v40, v20, v43);
      (*(v31 + 8))(v20, v33);

      (*(v31 + 40))(v30[7] + *(v31 + 72) * v23, v32, v33);
      a4 = 1;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v34 = (v30[6] + 16 * v23);
      *v34 = v18;
      v34[1] = v17;
      v12 = v20;
      v19((v30[7] + *(v41 + 72) * v23), v20, v43);
      v35 = v30[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_15;
      }

      v30[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C570424(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v43 = sub_22C908EAC();
  v8 = *(v43 - 8);
  v9 = MEMORY[0x28223BE20](v43);
  v40 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - v11;
  v13 = sub_22C3A5908(&qword_27D9BDE08, &qword_22C91BEB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v39 - v14);
  sub_22C8920A0();
  v44 = v48;
  v45 = v49;
  v46 = v50;
  v47 = v51;
  v41 = v8;
  v42 = (v8 + 32);
  v39[4] = v8 + 8;
  v39[5] = v8 + 16;
  v39[3] = v8 + 40;
  v39[1] = a1;

  v39[0] = a3;

  while (1)
  {
    sub_22C890D18();
    v16 = sub_22C3A5908(&qword_27D9BDE00, &off_22C91BEA8);
    if (sub_22C370B74(v15, 1, v16) == 1)
    {
      sub_22C36A674(v44);
    }

    v18 = *v15;
    v17 = v15[1];
    v19 = *v42;
    v20 = v12;
    (*v42)(v12, v15 + *(v16 + 48), v43);
    v21 = *v52;
    v23 = sub_22C36E2BC(v18, v17);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BDE10, &qword_22C91BEB8);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88DA18(v26);
      v28 = sub_22C36E2BC(v18, v17);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_16;
      }

      v23 = v28;
    }

    v30 = *v52;
    if (v27)
    {
      v32 = v40;
      v31 = v41;
      v12 = v20;
      v33 = v43;
      (*(v41 + 16))(v40, v20, v43);
      (*(v31 + 8))(v20, v33);

      (*(v31 + 40))(v30[7] + *(v31 + 72) * v23, v32, v33);
      a4 = 1;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v34 = (v30[6] + 16 * v23);
      *v34 = v18;
      v34[1] = v17;
      v12 = v20;
      v19((v30[7] + *(v41 + 72) * v23), v20, v43);
      v35 = v30[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_15;
      }

      v30[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C57081C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v184 = sub_22C3A5908(&qword_27D9BC210, &unk_22C917470);
  MEMORY[0x28223BE20](v184);
  v168 = v151 - v9;
  v197 = sub_22C902D0C();
  v10 = *(v197 - 8);
  v11 = MEMORY[0x28223BE20](v197);
  v190 = v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v196 = v151 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v174 = v151 - v16;
  MEMORY[0x28223BE20](v15);
  v173 = v151 - v17;
  v18 = sub_22C3A5908(&qword_27D9BC218, &unk_22C912410);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v185 = v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v183 = v151 - v21;
  v22 = sub_22C3A5908(&qword_27D9BC248, &unk_22C912440);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v151 - v23;
  v181 = sub_22C3A5908(&qword_27D9BC478, &unk_22C9134A0);
  MEMORY[0x28223BE20](v181);
  v171 = v151 - v25;
  v26 = type metadata accessor for ParameterPromptMap(0);
  v191 = *(v26 - 8);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v192 = v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v177 = v151 - v29;
  v30 = sub_22C3A5908(&qword_27D9BDE20, &qword_22C91BED0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v188 = v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v180 = (v151 - v33);
  v34 = sub_22C3A5908(&qword_27D9BDE28, &qword_22C91BED8);
  MEMORY[0x28223BE20](v34 - 8);
  v187 = (v151 - v35);
  v162 = type metadata accessor for ToolPromptMap(0);
  v36 = *(v162 - 8);
  v37 = MEMORY[0x28223BE20](v162);
  v161 = v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = v151 - v40;
  MEMORY[0x28223BE20](v39);
  v163 = v151 - v42;
  v43 = sub_22C3A5908(&qword_27D9BDE30, &unk_22C91BEE0);
  MEMORY[0x28223BE20](v43 - 8);
  v160 = (v151 - v44);
  sub_22C8920A0();
  v198 = v202;
  v199 = v203;
  v200 = v204;
  v201 = v205;
  v172 = v10 + 16;
  v175 = (v10 + 32);
  v167 = v10 + 8;
  v189 = v10;
  v166 = v10 + 40;
  v151[2] = a1;

  v151[1] = a3;

  v154 = a5;
  v182 = v24;
  v153 = v36;
  v152 = v41;
  while (1)
  {
LABEL_2:
    v45 = v160;
    sub_22C890F58();
    v46 = sub_22C3A5908(&qword_27D9BDE18, &unk_22C91BEC0);
    if (sub_22C370B74(v45, 1, v46) == 1)
    {
LABEL_59:
      sub_22C36A674(v198);
    }

    v48 = *v45;
    v47 = v45[1];
    sub_22C571BEC();
    v49 = *a5;
    v51 = sub_22C36E2BC(v48, v47);
    v52 = *(v49 + 16);
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      break;
    }

    v55 = v50;
    if (*(v49 + 24) >= v54)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BDE38, &unk_22C922890);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88DA40(v54, a4 & 1);
      v56 = sub_22C36E2BC(v48, v47);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_66;
      }

      v51 = v56;
    }

    v58 = *a5;
    if (v55)
    {
      v159 = v47;
      v158 = v58;
      v157 = *(v36 + 72) * v51;
      v59 = v161;
      sub_22C571B94();
      sub_22C571B94();
      v60 = *(v162 + 20);
      v61 = *(v59 + v60);
      v62 = *(v163 + v60);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v220 = v61;
      sub_22C8920A0();
      v179 = v212;
      v64 = v207;
      v186 = v206;
      v65 = v209;
      v66 = v210;
      v178 = v211;
      v170 = v208;
      v67 = (v208 + 64) >> 6;
      v176 = v62;

      while (1)
      {
        v68 = v66;
        v69 = v65;
        v195 = v61;
        v194 = isUniquelyReferenced_nonNull_native;
        if (!v66)
        {
          v70 = v65;
          while (1)
          {
            v69 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              break;
            }

            if (v69 >= v67)
            {
              v76 = v181;
              sub_22C36C640(v180, 1, 1, v181);
              v193 = 0;
              goto LABEL_17;
            }

            v68 = *(v64 + 8 * v69);
            ++v70;
            if (v68)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_58;
        }

LABEL_16:
        v193 = (v68 - 1) & v68;
        v71 = (v186[6] + 16 * (__clz(__rbit64(v68)) | (v69 << 6)));
        v72 = *v71;
        v73 = v71[1];
        sub_22C571B94();
        v74 = v181;
        v75 = v180;
        *v180 = v72;
        v75[1] = v73;
        v76 = v74;
        sub_22C571BEC();
        sub_22C36C640(v75, 0, 1, v76);

        v70 = v69;
LABEL_17:
        v77 = v188;
        sub_22C407C2C();
        v78 = 1;
        if (sub_22C370B74(v77, 1, v76) != 1)
        {
          v79 = v171;
          sub_22C407C2C();
          v178(v79);
          sub_22C36DD28(v79, &qword_27D9BC478, &unk_22C9134A0);
          v78 = 0;
        }

        v80 = sub_22C3A5908(&qword_27D9BDE40, &qword_22C91BEF0);
        v81 = v187;
        sub_22C36C640(v187, v78, 1, v80);
        v82 = sub_22C3A5908(&qword_27D9BDE40, &qword_22C91BEF0);
        if (sub_22C370B74(v81, 1, v82) == 1)
        {
          sub_22C36A674(v186);

          v100 = *(v162 + 24);
          v101 = *(v161 + v100);
          v102 = *(v163 + v100);

          v103 = swift_isUniquelyReferenced_nonNull_native();
          v220 = v101;
          sub_22C8920A0();
          v170 = v219;
          v176 = v213;
          v165 = v214;
          v104 = v216;
          v105 = v217;
          v169 = v218;
          v155 = v215;
          v164 = (v215 + 64) >> 6;
          v156 = v102;

          v106 = v175;
          while (1)
          {
            v107 = v105;
            v108 = v104;
            v194 = v103;
            v179 = v104;
            v178 = v105;
            if (!v105)
            {
              break;
            }

LABEL_40:
            v193 = (v107 - 1) & v107;
            v113 = v176;
            v114 = v189;
            v115 = *(v189 + 72) * (__clz(__rbit64(v107)) | (v108 << 6));
            v116 = *(v189 + 16);
            v117 = v173;
            v118 = v197;
            v116(v173, *(v176 + 48) + v115, v197);
            v119 = *(v113 + 56) + v115;
            v120 = v174;
            v116(v174, v119, v118);
            v106 = v175;
            v186 = v101;
            v121 = v184;
            v122 = *(v184 + 48);
            v123 = *(v114 + 32);
            v110 = v183;
            v123(v183, v117, v118);
            v124 = v118;
            v112 = v121;
            v101 = v186;
            v123((v110 + v122), v120, v124);
            v125 = 0;
            v109 = v108;
            v111 = v182;
LABEL_41:
            v126 = 1;
            sub_22C36C640(v110, v125, 1, v112);
            v127 = v185;
            sub_22C407C2C();
            if (sub_22C370B74(v127, 1, v112) != 1)
            {
              v128 = v168;
              sub_22C407C2C();
              v169(v128);
              sub_22C36DD28(v128, &qword_27D9BC210, &unk_22C917470);
              v126 = 0;
            }

            v129 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
            sub_22C36C640(v111, v126, 1, v129);
            v130 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
            if (sub_22C370B74(v111, 1, v130) == 1)
            {
              sub_22C36A674(v176);

              v148 = v162;
              v149 = v152;
              *&v152[*(v162 + 20)] = v195;
              *&v149[*(v148 + 24)] = v101;
              sub_22C571C44(v161);
              sub_22C571C44(v163);

              sub_22C571CA0();
              a4 = 1;
              a5 = v154;
              v36 = v153;
              goto LABEL_2;
            }

            v131 = *(v130 + 48);
            v132 = *v106;
            v133 = v197;
            (*v106)(v196, v111, v197);
            v132(v190, v111 + v131, v133);
            sub_22C6280AC();
            v136 = v135;
            v137 = v101[2];
            v138 = (v134 & 1) == 0;
            if (__OFADD__(v137, v138))
            {
              goto LABEL_61;
            }

            v139 = v134;
            if (v101[3] >= v137 + v138)
            {
              if ((v194 & 1) == 0)
              {
                sub_22C3A5908(&qword_27D9BC250, qword_22C912450);
                sub_22C90B16C();
              }
            }

            else
            {
              sub_22C88CA14();
              sub_22C6280AC();
              if ((v139 & 1) != (v141 & 1))
              {
                goto LABEL_66;
              }

              v136 = v140;
            }

            v101 = v220;
            if (v139)
            {
              v142 = v189;
              v143 = v197;
              (*(v189 + 8))(v196, v197);
              (*(v142 + 40))(v101[7] + *(v142 + 72) * v136, v190, v143);
            }

            else
            {
              v220[(v136 >> 6) + 8] |= 1 << v136;
              v144 = *(v189 + 72) * v136;
              v145 = v197;
              v132((v101[6] + v144), v196, v197);
              v132((v101[7] + v144), v190, v145);
              v146 = v101[2];
              v95 = __OFADD__(v146, 1);
              v147 = v146 + 1;
              if (v95)
              {
                goto LABEL_63;
              }

              v101[2] = v147;
            }

            v103 = 1;
            v104 = v109;
            v105 = v193;
          }

          v109 = v104;
          v110 = v183;
          v111 = v182;
          v112 = v184;
          while (1)
          {
            v108 = v109 + 1;
            if (__OFADD__(v109, 1))
            {
              break;
            }

            if (v108 >= v164)
            {
              v193 = 0;
              v125 = 1;
              goto LABEL_41;
            }

            v107 = *(v165 + 8 * v108);
            ++v109;
            if (v107)
            {
              goto LABEL_40;
            }
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v84 = *v81;
        v83 = v81[1];
        sub_22C571BEC();
        v85 = v195;
        v87 = sub_22C36E2BC(v84, v83);
        v88 = v85[2];
        v89 = (v86 & 1) == 0;
        if (__OFADD__(v88, v89))
        {
          break;
        }

        v90 = v86;
        if (v85[3] >= v88 + v89)
        {
          if ((v194 & 1) == 0)
          {
            sub_22C3A5908(&qword_27D9BDE48, qword_22C91BEF8);
            sub_22C90B16C();
          }
        }

        else
        {
          sub_22C88F0E4();
          v91 = sub_22C36E2BC(v84, v83);
          if ((v90 & 1) != (v92 & 1))
          {
            goto LABEL_66;
          }

          v87 = v91;
        }

        v61 = v220;
        if (v90)
        {

          sub_22C571CA0();
        }

        else
        {
          v220[(v87 >> 6) + 8] |= 1 << v87;
          v93 = (v61[6] + 16 * v87);
          *v93 = v84;
          v93[1] = v83;
          sub_22C571BEC();
          v94 = v61[2];
          v95 = __OFADD__(v94, 1);
          v96 = v94 + 1;
          if (v95)
          {
            goto LABEL_62;
          }

          v61[2] = v96;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v65 = v70;
        v66 = v193;
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      break;
    }

    *(v58 + 8 * (v51 >> 6) + 64) |= 1 << v51;
    v97 = (*(v58 + 48) + 16 * v51);
    *v97 = v48;
    v97[1] = v47;
    sub_22C571BEC();
    v98 = *(v58 + 16);
    v95 = __OFADD__(v98, 1);
    v99 = v98 + 1;
    if (v95)
    {
      goto LABEL_65;
    }

    *(v58 + 16) = v99;
    a4 = 1;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C571B94()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C571BEC()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C571C44(uint64_t a1)
{
  v2 = type metadata accessor for ToolPromptMap(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C571CA0()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

void sub_22C571CF8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    v12 = a1;
    v64 = MEMORY[0x277D84F90];
    sub_22C3B628C(0, v10, 0);
    v63 = v64;
    v13 = sub_22C57D74C();
    v16 = 0;
    v17 = v12 + 56;
    v18 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v18 = a2;
    }

    v19 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v19 = 11;
    }

    v56 = v19 | (v18 << 16);
    v49 = v12 + 64;
    v50 = v12 + 56;
    v20 = a3;
    v53 = a2;
    v54 = a3;
    v51 = v10;
    v52 = v12;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v12 + 32))
      {
        v59 = v16;
        v21 = v13 >> 6;
        v22 = 1 << v13;
        if ((*(v17 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v12 + 36) != v14)
        {
          goto LABEL_32;
        }

        v62 = v15;
        v60 = v13;
        v61 = v14;
        v23 = *(v12 + 48) + 24 * v13;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        sub_22C4A7C6C(0xFuLL, v56, a2, v20);
        v28 = v27;
        sub_22C4A7C6C(0xFuLL, v24, a5, a6);
        v30 = v29;
        sub_22C4A7C6C(0xFuLL, v25, a5, a6);
        if (__OFADD__(v28, v30))
        {
          goto LABEL_33;
        }

        v32 = v31;
        sub_22C4A7E20(0xFuLL, v28 + v30, a8, a9);
        if (__OFADD__(v28, v32))
        {
          goto LABEL_34;
        }

        v34 = v33;
        sub_22C4A7E20(0xFuLL, v28 + v32, a8, a9);
        if (v35 >> 14 < v34 >> 14)
        {
          goto LABEL_35;
        }

        v36 = v35;
        v37 = v63;
        v39 = *(v63 + 16);
        v38 = *(v63 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_22C3B628C(v38 > 1, v39 + 1, 1);
          v37 = v63;
        }

        *(v37 + 16) = v39 + 1;
        v40 = v37 + 24 * v39;
        *(v40 + 32) = v34;
        *(v40 + 40) = v36;
        *(v40 + 48) = v26;
        if (v62)
        {
          goto LABEL_39;
        }

        v12 = v52;
        a2 = v53;
        v41 = 1 << *(v52 + 32);
        v20 = v54;
        v17 = v50;
        if (v60 >= v41)
        {
          goto LABEL_36;
        }

        v42 = *(v50 + 8 * v21);
        if ((v42 & v22) == 0)
        {
          goto LABEL_37;
        }

        v63 = v37;
        if (*(v52 + 36) != v61)
        {
          goto LABEL_38;
        }

        v43 = v42 & (-2 << (v60 & 0x3F));
        if (v43)
        {
          v41 = __clz(__rbit64(v43)) | v60 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v44 = v21 << 6;
          v45 = v21 + 1;
          v46 = (v49 + 8 * v21);
          while (v45 < (v41 + 63) >> 6)
          {
            v48 = *v46++;
            v47 = v48;
            v44 += 64;
            ++v45;
            if (v48)
            {
              sub_22C4AB8BC(v60, v61, 0);
              v41 = __clz(__rbit64(v47)) + v44;
              goto LABEL_26;
            }
          }

          sub_22C4AB8BC(v60, v61, 0);
        }

LABEL_26:
        v16 = v59 + 1;
        if (v59 + 1 == v51)
        {
          goto LABEL_29;
        }

        v15 = 0;
        v14 = *(v52 + 36);
        v13 = v41;
        if (v41 < 0)
        {
          break;
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
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_22C572084(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v25 = MEMORY[0x277D84F90];
    v24 = *(a1 + 16);
    sub_22C3B6DF0(0, v1, 0);
    v4 = sub_22C57D74C();
    v6 = v5;
    v7 = v24;
    v8 = 0;
    v9 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v10 = v4 >> 6;
        if ((*(v9 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_25;
        }

        v11 = *(*(a1 + 48) + 24 * v4);
        v13 = *(v25 + 16);
        v12 = *(v25 + 24);
        if (v13 >= v12 >> 1)
        {
          v23 = v3;
          v22 = *(*(a1 + 48) + 24 * v4);
          sub_22C3B6DF0(v12 > 1, v13 + 1, 1);
          v11 = v22;
          v3 = v23;
          v9 = a1 + 56;
          v7 = v24;
        }

        *(v25 + 16) = v13 + 1;
        *(v25 + 16 * v13 + 32) = v11;
        if (v3)
        {
          goto LABEL_29;
        }

        v14 = 1 << *(a1 + 32);
        if (v4 >= v14)
        {
          goto LABEL_26;
        }

        v15 = *(v9 + 8 * v10);
        if ((v15 & (1 << v4)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_28;
        }

        v16 = v15 & (-2 << (v4 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v10 << 6;
          v18 = v10 + 1;
          v19 = (a1 + 64 + 8 * v10);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              sub_22C4AB8BC(v4, v6, 0);
              v9 = a1 + 56;
              v7 = v24;
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_19;
            }
          }

          sub_22C4AB8BC(v4, v6, 0);
          v9 = a1 + 56;
          v7 = v24;
        }

LABEL_19:
        if (++v8 == v7)
        {
          return;
        }

        v3 = 0;
        v6 = *(a1 + 36);
        v4 = v14;
        if (v14 < 0)
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

unint64_t sub_22C5722F0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  MEMORY[0x2318B7850](a4, a5);

  sub_22C575F14(a6, a1, a2, a3, v12, v13, v14, v15, a2);
  v17 = sub_22C4A0268(a3, v16);

  sub_22C3AD898(v17);
  return a1;
}

uint64_t sub_22C5723D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2318B7850]();

  v4 = MEMORY[0x277D84FA0];
  sub_22C575F14(a3, 0x20202020uLL, 0xE400000000000000, MEMORY[0x277D84FA0], v5, v6, v7, v8, 0xE400000000000000);
  v10 = sub_22C4A0268(v4, v9);

  sub_22C3AD898(v10);
  return 538976288;
}

uint64_t sub_22C572494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22C5741FC();
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = v7;
    v11 = v8;
    v23 = a4;
    v24 = MEMORY[0x277D84F90];

    sub_22C3B628C(0, v9, 0);
    v12 = v24;
    v13 = (a1 + 32);
    v14 = *(v24 + 16);
    v15 = 24 * v14;
    do
    {
      v17 = *v13++;
      v16 = v17;
      v18 = *(v24 + 24);
      v19 = v14 + 1;
      if (v14 >= v18 >> 1)
      {
        sub_22C3B628C(v18 > 1, v14 + 1, 1);
      }

      *(v24 + 16) = v19;
      v20 = v24 + v15;
      *(v20 + 32) = v10;
      *(v20 + 40) = v11;
      *(v20 + 48) = v16;
      v15 += 24;
      v14 = v19;
      --v9;
    }

    while (v9);
    a4 = v23;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v21 = sub_22C4A0268(a4, v12);

  sub_22C3AD898(v21);
  return a2;
}

uint64_t sub_22C5725E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C573C54(a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  MEMORY[0x2318B7850]();

  v9 = MEMORY[0x277D84FA0];
  sub_22C571CF8(v8, 0x22uLL, 0xE100000000000000, MEMORY[0x277D84FA0], v4, v6, v8, 0x22uLL, 0xE100000000000000);
  v11 = sub_22C4A0268(v9, v10);

  v12 = sub_22C3AD898(v11);

  sub_22C57A24C(v9, 0x22uLL, 0xE100000000000000);
  v14 = sub_22C3AD898(v13);

  MEMORY[0x2318B7850](34, 0xE100000000000000);

  sub_22C571CF8(v14, 0x22uLL, 0xE100000000000000, v12, 0x22uLL, 0xE100000000000000, v14, 0x22uLL, 0xE100000000000000);
  v16 = v15;

  v17 = sub_22C4A0268(v12, v16);

  sub_22C3AD898(v17);

  return 34;
}

void sub_22C572798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = sub_22C9063DC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C90A2DC();
  v14 = v12;
  v15 = v13;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v12;
  }

  if ((v12 & 0x800000000000000) == 0 && (v13 & 0x1000000000000000) != 0)
  {
    v17 = 11;
  }

  else
  {
    v17 = 7;
  }

  v67[3] = MEMORY[0x277D84FA0];
  v18 = v12 == a2 && v13 == a3;
  if (v18 || (sub_22C90B4FC() & 1) != 0)
  {
  }

  else
  {
    v55 = a2;
    v60 = a3;
    sub_22C6A45F4();
    v52[2] = v14;
    v52[1] = v15;
    sub_22C4A7E20(v17 | (v16 << 16), -3, v14, v15);
    v20 = a4 + 56;
    v21 = 1 << *(a4 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a4 + 56);
    v24 = (v21 + 63) >> 6;
    v63 = v19;
    v61 = v19 >> 14;
    v59 = (v8 + 8);

    v25 = 0;
    v53 = MEMORY[0x277D84F90];
    *&v26 = 136315394;
    v54 = v26;
    v62 = v24;
    v56 = a4;
    v58 = a4 + 56;
LABEL_16:
    v27 = v25;
    if (!v23)
    {
      goto LABEL_18;
    }

    do
    {
      v28 = v11;
      v25 = v27;
LABEL_22:
      v29 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v30 = *(a4 + 48) + 24 * (v29 | (v25 << 6));
      v31 = *(v30 + 16);
      if (v61 >= *v30 >> 14)
      {
        v32 = *v30;
      }

      else
      {
        v32 = v63;
      }

      if (v61 >= *(v30 + 8) >> 14)
      {
        v33 = *(v30 + 8);
      }

      else
      {
        v33 = v63;
      }

      if ((v33 ^ v32) >> 14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C36D270();
          sub_22C591170();
          v53 = v50;
        }

        v47 = *(v53 + 16);
        v46 = *(v53 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_22C369AB0(v46);
          sub_22C591170();
          v53 = v51;
        }

        v48 = v53;
        *(v53 + 16) = v47 + 1;
        v49 = v48 + 24 * v47;
        *(v49 + 32) = v32;
        *(v49 + 40) = v33;
        *(v49 + 48) = v31;
        v11 = v28;
        v24 = v62;
        goto LABEL_16;
      }

      sub_22C903F7C();

      v34 = sub_22C9063CC();
      v35 = sub_22C90AACC();

      v64 = v35;
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v67[0] = swift_slowAlloc();
        *v36 = v54;
        v66 = v31;
        v37 = sub_22C90A1AC();
        v57 = v34;
        v39 = sub_22C36F9F4(v37, v38, v67);

        *(v36 + 4) = v39;
        *(v36 + 12) = 2080;
        v40 = sub_22C90A4AC();
        v41 = MEMORY[0x2318B76D0](v40);
        v43 = v42;

        v44 = sub_22C36F9F4(v41, v43, v67);

        *(v36 + 14) = v44;
        v45 = v57;
        _os_log_impl(&dword_22C366000, v57, v64, "Dropped tag %s over substring %s due to full truncation of tagged range.", v36, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        a4 = v56;
        sub_22C3699EC();
      }

      else
      {
      }

      (*v59)(v28, v65);
      v27 = v25;
      v11 = v28;
      v24 = v62;
      v20 = v58;
    }

    while (v23);
LABEL_18:
    while (1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v25 >= v24)
      {

        sub_22C8B55C0(v53);
        return;
      }

      v23 = *(v20 + 8 * v25);
      ++v27;
      if (v23)
      {
        v28 = v11;
        goto LABEL_22;
      }
    }

    __break(1u);
  }
}

void sub_22C572C64(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_22C90B6FC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = 0;
  v115 = 0xE000000000000000;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v105 = a1;
  v110 = a1;
  v111 = a2;
  v112 = 0;
  v113 = v9;
  v107 = a2;

  while (1)
  {
    v10 = sub_22C90A3AC();
    if (!v11)
    {
      break;
    }

    v12 = v11;
    if ((v11 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {
      goto LABEL_91;
    }

    if ((v11 & 0x1000000000000000) != 0)
    {
      sub_22C36D8A0();
      v14 = sub_22C90A23C();
    }

    else
    {
      sub_22C36D8A0();
      v14 = sub_22C90AF3C() << 16;
    }

    if (4 * v13 == v14 >> 14)
    {
      v15 = sub_22C38BB08();
      if ((sub_22C763580(v15, v16) & 0x100000000) != 0)
      {
        goto LABEL_95;
      }

      sub_22C90B70C();
      sub_22C90B6EC();
      v17 = sub_22C388748();
      v18(v17);
      if (v8)
      {
        goto LABEL_16;
      }
    }

    sub_22C38BB08();
    if ((sub_22C909FCC() & 1) == 0 || (sub_22C38BB08(), (sub_22C909FBC() & 1) == 0))
    {
LABEL_16:
      sub_22C36D8A0();
      if ((v12 & 0x1000000000000000) != 0)
      {
        v19 = sub_22C90A23C();
      }

      else
      {
        v19 = sub_22C90AF3C() << 16;
      }

      if (4 * v13 != v19 >> 14)
      {
        goto LABEL_22;
      }

      v20 = sub_22C38BB08();
      if ((sub_22C763580(v20, v21) & 0x100000000) != 0)
      {
        goto LABEL_96;
      }

      sub_22C90B70C();
      sub_22C90B6DC();
      v22 = sub_22C388748();
      v23(v22);
      if ((v8 & 1) == 0)
      {
LABEL_22:
        sub_22C38BB08();
        if ((sub_22C909FCC() & 1) == 0)
        {
          goto LABEL_28;
        }

        sub_22C38BB08();
        if ((sub_22C909FEC() & 1) == 0)
        {
          goto LABEL_100;
        }

        v24 = sub_22C38BB08();
        if ((sub_22C763580(v24, v25) & 0x100000000) != 0)
        {
          goto LABEL_97;
        }

        sub_22C90B70C();
        sub_22C90B6EC();
        v26 = sub_22C388748();
        v27(v26);
        if ((v8 & 1) == 0)
        {
LABEL_100:
          sub_22C38BB08();
          if (sub_22C909FCC())
          {
            sub_22C38BB08();
            if (sub_22C909FBC())
            {
LABEL_28:
              v28 = sub_22C38BB08();
              MEMORY[0x2318B7840](v28);
            }
          }
        }
      }
    }
  }

  v87[1] = sub_22C4A3CCC(v114, v115);
  v30 = v29;
  v31 = *(v29 + 16);
  v88 = v29 + 32;

  v32 = 0;
  v87[3] = v30;
  v87[2] = v31;
  while (1)
  {
    if (v32 == v31)
    {

      return;
    }

    if (v32 >= *(v30 + 16))
    {
      goto LABEL_92;
    }

    v33 = (v88 + 16 * v32);
    v34 = *v33;
    v31 = v33[1];
    v35 = sub_22C90A1DC();
    v30 = v36;
    v110 = v105;
    v111 = v107;
    v114 = v34;
    v115 = v31;
    v108 = v35;
    v109 = v36;
    v37 = sub_22C3858B4();
    swift_bridgeObjectRetain_n();
    v101 = v37;
    sub_22C373544();
    v38 = sub_22C90AD4C();
    v103 = v39;
    v104 = v38;
    v40 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v40 = v35;
    }

    v41 = 7;
    if (((v30 >> 60) & ((v35 & 0x800000000000000) == 0)) != 0)
    {
      v42 = 11;
    }

    else
    {
      v42 = 7;
    }

    v90 = v30;
    sub_22C4A7C6C(0xFuLL, v42 | (v40 << 16), v35, v30);
    v44 = v43;
    v45 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v45 = v34;
    }

    if (((v31 >> 60) & ((v34 & 0x800000000000000) == 0)) != 0)
    {
      v46 = 11;
    }

    else
    {
      v46 = 7;
    }

    v102 = v34;
    sub_22C4A7C6C(0xFuLL, v46 | (v45 << 16), v34, v31);
    v48 = v47;
    v106 = v31;

    v100 = v44 - v48;
    if (__OFSUB__(v44, v48))
    {
      goto LABEL_93;
    }

    v49 = *(a3 + 16);
    if (v49)
    {
      break;
    }

    v50 = MEMORY[0x277D84F90];
    sub_22C370770();
LABEL_75:
    v83 = *(v50 + 16);
    v84 = sub_22C3AF8F8();
    v114 = MEMORY[0x2318B7DB0](v83, &type metadata for PromptString.TaggedRange, v84);
    v85 = *(v50 + 16);
    if (v85)
    {
      v86 = v50 + 48;
      do
      {
        v86 += 24;
        sub_22C6A45F4();
        --v85;
      }

      while (v85);
    }

    ++v32;

    a3 = v114;
    v105 = v104;
    v107 = v103;
  }

  v89 = v32;
  v108 = MEMORY[0x277D84F90];
  sub_22C3B628C(0, v49, 0);
  v50 = v108;
  v53 = sub_22C57D74C();
  v30 = 0;
  v54 = a3 + 56;
  v91 = a3 + 64;
  v94 = a3;
  v92 = v49;
  v93 = a3 + 56;
  if ((v53 & 0x8000000000000000) == 0)
  {
    while (v53 < 1 << *(a3 + 32))
    {
      v31 = v53 >> 6;
      if ((*(v54 + 8 * (v53 >> 6)) & (1 << v53)) == 0)
      {
        goto LABEL_81;
      }

      if (*(a3 + 36) != v51)
      {
        goto LABEL_82;
      }

      v96 = v51;
      v97 = 1 << v53;
      v95 = v30;
      v55 = *(a3 + 48) + 24 * v53;
      v56 = *v55;
      v57 = *(v55 + 8);
      v98 = *(v55 + 16);
      v99 = v52;
      sub_22C3774C0(15, v56);
      v58 = sub_22C90A47C();
      sub_22C575EF4(v58, v59);
      sub_22C90AD0C();

      sub_22C4A7C6C(0xFuLL, v56, v50, v41);
      sub_22C37A120();
      if (!v62)
      {
        goto LABEL_83;
      }

      if (__OFADD__(v60, v61))
      {
        goto LABEL_84;
      }

      sub_22C4A7E20(0xFuLL, v60 + v61, v104, v103);
      v64 = v63;
      sub_22C3774C0(15, v57);
      v65 = sub_22C90A47C();
      sub_22C575EF4(v65, v66);
      sub_22C90AD0C();

      sub_22C4A7C6C(0xFuLL, v57, v50, v41);
      sub_22C37A120();
      if (!v62)
      {
        goto LABEL_85;
      }

      if (__OFADD__(v67, v68))
      {
        goto LABEL_86;
      }

      sub_22C4A7E20(0xFuLL, v67 + v68, v104, v103);
      if (v69 >> 14 < v64 >> 14)
      {
        goto LABEL_87;
      }

      v70 = v69;
      v108 = v50;
      v72 = *(v50 + 16);
      v71 = *(v50 + 24);
      if (v72 >= v71 >> 1)
      {
        v82 = sub_22C369AB0(v71);
        sub_22C3B628C(v82, v72 + 1, 1);
        v50 = v108;
      }

      *(v50 + 16) = v72 + 1;
      v73 = v50 + 24 * v72;
      *(v73 + 32) = v64;
      *(v73 + 40) = v70;
      *(v73 + 48) = v98;
      if (v99)
      {
        goto LABEL_94;
      }

      a3 = v94;
      v41 = 1 << *(v94 + 32);
      if (v53 >= v41)
      {
        goto LABEL_88;
      }

      v54 = v93;
      v74 = *(v93 + 8 * v31);
      if ((v74 & v97) == 0)
      {
        goto LABEL_89;
      }

      if (*(v94 + 36) != v96)
      {
        goto LABEL_90;
      }

      v75 = v74 & (-2 << (v53 & 0x3F));
      if (v75)
      {
        v41 = __clz(__rbit64(v75)) | v53 & 0x7FFFFFFFFFFFFFC0;
        v76 = v95;
      }

      else
      {
        v77 = v31 << 6;
        v78 = v31 + 1;
        v79 = (v91 + 8 * v31);
        v76 = v95;
        while (v78 < (v41 + 63) >> 6)
        {
          v81 = *v79++;
          v80 = v81;
          v77 += 64;
          ++v78;
          if (v81)
          {
            sub_22C4AB8BC(v53, v96, 0);
            v41 = __clz(__rbit64(v80)) + v77;
            goto LABEL_70;
          }
        }

        sub_22C4AB8BC(v53, v96, 0);
      }

LABEL_70:
      v30 = v76 + 1;
      if (v30 == v92)
      {

        sub_22C370770();
        v32 = v89;
        goto LABEL_75;
      }

      v52 = 0;
      v51 = *(a3 + 36);
      v53 = v41;
      if (v41 < 0)
      {
        break;
      }
    }
  }

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
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}

uint64_t sub_22C573484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = (8 * v6);

  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    MEMORY[0x28223BE20](v8);
    v7 = (v26 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_22C88FAFC(0, v6, v7);
    v9 = 0;
    v10 = 0;
    v11 = 1 << *(a3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a3 + 56);
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v15 = v14 | (v10 << 6);
LABEL_12:
      if (!*(*(a3 + 48) + 24 * v15 + 16))
      {
        *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_16:
          sub_22C7EC1E8(v7, v6, v9, a3);
          v20 = v19;
          goto LABEL_17;
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= ((v11 + 63) >> 6))
      {
        goto LABEL_16;
      }

      v17 = *(a3 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v13 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v10 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();

  v20 = sub_22C575B5C(v25, v6, a3, sub_22C573820, 0);
  swift_bridgeObjectRelease_n();
  sub_22C3699EC();
LABEL_17:
  sub_22C572084(v20);
  v22 = v21;

  v23 = sub_22C573830(v22);

  return v23;
}

unint64_t sub_22C5736FC(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v11 = a3;

  sub_22C574AA8(&v11, sub_22C57521C, sub_22C574CB4);
  v5 = v11;
  v6 = *(v11 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      a1 = sub_22C5744A8(*(v7 - 1), *v7, 0x455443414445523CLL, 0xEA00000000003E44, a1, a2);
      v9 = v8;

      a2 = v9;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_22C573830(void *a1)
{
  v33 = a1;

  sub_22C574AA8(&v33, sub_22C574D28, sub_22C574C40);
  v1 = v33[2];
  if (v1)
  {
    v3 = v33 + 5;
    v2 = v33[5];
    v4 = v33[4];
    v5 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = v2 >> 14;
      v9 = v4 >> 14;
      v10 = *v3 >> 14;
      if (v7 >> 14 >= v2 >> 14 || v9 == v8 || v9 >= v10 || v7 >> 14 == v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_22C36D270();
          sub_22C59254C(v17, v18, v19, v5);
          v5 = v20;
        }

        v15 = *(v5 + 16);
        v14 = *(v5 + 24);
        if (v15 >= v14 >> 1)
        {
          v21 = sub_22C369AB0(v14);
          sub_22C59254C(v21, v15 + 1, 1, v5);
          v5 = v22;
        }

        *(v5 + 16) = v15 + 1;
        v16 = v5 + 16 * v15;
        *(v16 + 32) = v4;
        *(v16 + 40) = v2;
        v4 = v7;
        v2 = v6;
      }

      else
      {
        if (v10 >= v8)
        {
          v2 = *v3;
        }

        if (v9 > v2 >> 14)
        {
          __break(1u);
          goto LABEL_30;
        }
      }

      v3 += 2;
      --v1;
    }

    while (v1);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_24;
    }

LABEL_30:
    v27 = sub_22C36D270();
    sub_22C59254C(v27, v28, v29, v5);
    v5 = v30;
LABEL_24:
    v24 = *(v5 + 16);
    v23 = *(v5 + 24);
    if (v24 >= v23 >> 1)
    {
      v31 = sub_22C369AB0(v23);
      sub_22C59254C(v31, v24 + 1, 1, v5);
      v5 = v32;
    }

    *(v5 + 16) = v24 + 1;
    v25 = v5 + 16 * v24;
    *(v25 + 32) = v4;
    *(v25 + 40) = v2;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

BOOL sub_22C573A18(unint64_t a1, unint64_t a2, unsigned __int8 a3, unint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (a1 >> 14 == a4 >> 14)
  {
    v6 = a2 >> 14 < a5 >> 14;
  }

  else
  {
    v6 = a1 >> 14 < a4 >> 14;
  }

  if (a3 == a6)
  {
    return v6;
  }

  else
  {
    return a3 < a6;
  }
}

uint64_t sub_22C573A7C(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  MEMORY[0x2318B8B30](a2 >> 14);
  MEMORY[0x2318B8B30](a3 >> 14);
  return MEMORY[0x2318B8B10](a4);
}

uint64_t sub_22C573AC4(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  sub_22C90B62C();
  MEMORY[0x2318B8B30](a1 >> 14);
  MEMORY[0x2318B8B30](a2 >> 14);
  MEMORY[0x2318B8B10](a3);
  return sub_22C90B66C();
}

uint64_t sub_22C573BE8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_22C90B62C();
  MEMORY[0x2318B8B30](v2 >> 14);
  MEMORY[0x2318B8B30](v3 >> 14);
  MEMORY[0x2318B8B10](v4);
  return sub_22C90B66C();
}

void sub_22C573C54(uint64_t a1, uint64_t a2)
{
  v189 = a1;
  v190 = a2;
  sub_22C383108();
  sub_22C3858B4();
  sub_22C373544();
  sub_22C90AD4C();
  sub_22C38A99C();
  sub_22C4A7C6C(0xFuLL, 131079, 0x5C5CuLL, 0xE200000000000000);
  v3 = sub_22C575ED4();
  sub_22C4A7C6C(v3, v4, 0x5CuLL, 0xE100000000000000);
  v6 = &v189 - v5;
  if (__OFSUB__(&v189, v5))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_22C372924();
  sub_22C49F0FC(v7, v8, v9, v10, v11, v12, v13, v14, v2);
  sub_22C3AD898(v15);
  sub_22C37FE38();
  sub_22C36BF20();
  v22 = sub_22C36ABB4(v16, v17, v18, v19, v20, v21);
  v24 = v23;
  v25 = sub_22C369FA8();
  sub_22C4A7C6C(v25, v26, 0x615CuLL, 0xE200000000000000);
  v27 = sub_22C575ED4();
  sub_22C4A7C6C(v27, v28, 7uLL, 0xE100000000000000);
  v30 = __OFSUB__(v6, v29);
  v31 = &v6[-v29];
  if (v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_22C377F2C();
  sub_22C575EE8();
  sub_22C49F0FC(v32, v33, v34, v35, v36, v37, v38, v22, v182);
  sub_22C374CB8();

  sub_22C3AD898(v31);
  v189 = v22;
  v190 = v24;
  sub_22C383108();
  sub_22C36ABB4(v39, v40, v41, v42, v43, v44);
  sub_22C38A99C();
  v45 = sub_22C369FA8();
  sub_22C4A7C6C(v45, v46, 0x625CuLL, 0xE200000000000000);
  v47 = sub_22C575ED4();
  sub_22C4A7C6C(v47, v48, 8uLL, 0xE100000000000000);
  v30 = __OFSUB__(v31, v49);
  v50 = v31 - v49;
  if (v30)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_22C3719A8();
  sub_22C372924();
  sub_22C49F0FC(v51, v52, v53, v54, v55, v56, v57, v58, v183);
  sub_22C374CB8();

  sub_22C3AD898(v50);
  sub_22C37FE38();
  sub_22C36BF20();
  v65 = sub_22C36ABB4(v59, v60, v61, v62, v63, v64);
  v67 = v66;
  v68 = sub_22C369FA8();
  sub_22C4A7C6C(v68, v69, 0x665CuLL, 0xE200000000000000);
  v70 = sub_22C575ED4();
  sub_22C4A7C6C(v70, v71, 0xCuLL, 0xE100000000000000);
  v30 = __OFSUB__(v50, v72);
  v73 = v50 - v72;
  if (v30)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_22C377F2C();
  sub_22C575EE8();
  sub_22C49F0FC(v74, v75, v76, v77, v78, v79, v80, v65, v184);
  sub_22C374CB8();

  sub_22C3AD898(v73);
  v189 = v65;
  v190 = v67;
  sub_22C383108();
  sub_22C36ABB4(v81, v82, v83, v84, v85, v86);
  sub_22C38A99C();
  v87 = sub_22C369FA8();
  sub_22C4A7C6C(v87, v88, 0x6E5CuLL, 0xE200000000000000);
  v89 = sub_22C575ED4();
  sub_22C4A7C6C(v89, v90, 0xAuLL, 0xE100000000000000);
  v30 = __OFSUB__(v73, v91);
  v92 = v73 - v91;
  if (v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_22C3719A8();
  sub_22C372924();
  sub_22C49F0FC(v93, v94, v95, v96, v97, v98, v99, v100, v185);
  sub_22C374CB8();

  sub_22C3AD898(v92);
  sub_22C37FE38();
  sub_22C36BF20();
  v107 = sub_22C36ABB4(v101, v102, v103, v104, v105, v106);
  v109 = v108;
  v110 = sub_22C369FA8();
  sub_22C4A7C6C(v110, v111, 0x725CuLL, 0xE200000000000000);
  v112 = sub_22C575ED4();
  sub_22C4A7C6C(v112, v113, 0xDuLL, 0xE100000000000000);
  v30 = __OFSUB__(v92, v114);
  v115 = v92 - v114;
  if (v30)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_22C377F2C();
  sub_22C575EE8();
  sub_22C49F0FC(v116, v117, v118, v119, v120, v121, v122, v107, v186);
  sub_22C374CB8();

  sub_22C3AD898(v115);
  v189 = v107;
  v190 = v109;
  sub_22C383108();
  sub_22C36ABB4(v123, v124, v125, v126, v127, v128);
  sub_22C38A99C();
  v129 = sub_22C369FA8();
  sub_22C4A7C6C(v129, v130, 0x745CuLL, 0xE200000000000000);
  v131 = sub_22C575ED4();
  sub_22C4A7C6C(v131, v132, 9uLL, 0xE100000000000000);
  v30 = __OFSUB__(v115, v133);
  v134 = v115 - v133;
  if (v30)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_22C3719A8();
  sub_22C372924();
  sub_22C49F0FC(v135, v136, v137, v138, v139, v140, v141, v142, v187);
  sub_22C374CB8();

  sub_22C3AD898(v134);
  sub_22C37FE38();
  sub_22C36BF20();
  v149 = sub_22C36ABB4(v143, v144, v145, v146, v147, v148);
  v151 = v150;
  v152 = sub_22C369FA8();
  sub_22C4A7C6C(v152, v153, 0x765CuLL, 0xE200000000000000);
  v154 = sub_22C575ED4();
  sub_22C4A7C6C(v154, v155, 0xBuLL, 0xE100000000000000);
  v30 = __OFSUB__(v134, v156);
  v157 = v134 - v156;
  if (v30)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_22C377F2C();
  sub_22C575EE8();
  sub_22C49F0FC(v158, v159, v160, v161, v162, v163, v164, v149, v188);
  sub_22C374CB8();

  v165 = sub_22C3AD898(v157);
  v189 = v149;
  v190 = v151;
  v171 = sub_22C36ABB4(v165, v166, v167, v168, v169, v170);
  v173 = v172;
  v174 = sub_22C369FA8();
  sub_22C4A7C6C(v174, v175, 0x225CuLL, 0xE200000000000000);
  v177 = v176;
  sub_22C4A7C6C(0xFuLL, 65543, 0x22uLL, 0xE100000000000000);
  v30 = __OFSUB__(v177, v178);
  v179 = v177 - v178;
  if (!v30)
  {

    sub_22C49F0FC(v165, v149, v151, v165, 34, 0xE100000000000000, v179, v171, v173);
    v181 = v180;

    sub_22C3AD898(v181);
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_22C574304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 == a4 && a2 == a5;
  if (v6 || (sub_22C90B4FC() & 1) != 0)
  {

    sub_22C5DBAE4();
  }
}

uint64_t sub_22C574370(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  sub_22C909FFC();
  return sub_22C90B66C();
}

unint64_t sub_22C5743C0(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_22C57447C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C5743C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C5744A8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_22C90ACDC();
  v12 = v11;

  if ((v12 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  sub_22C90ACDC();
  v14 = v13;

  if ((v14 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v16 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v16) = 1;
  }

  v17 = 4 << v16;
  v18 = a1;
  if ((a1 & 0xC) == 4 << v16)
  {
    result = sub_22C8A3F0C(a1, a5, a6);
    v18 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v19 = v18 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v20 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v21 = (v20 << 16) | 7;
    LOBYTE(v22) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v20 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 < v18 >> 16)
  {
    goto LABEL_41;
  }

  result = sub_22C90A3EC();
  v19 = result;
  v25 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v25 = 7;
  }

  v21 = v25 | (v20 << 16);
  v22 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  v23 = a2;
  if ((a2 & 0xC) == 4 << v22)
  {
    result = sub_22C8A3F0C(a2, a5, a6);
    v23 = result;
  }

  if ((v21 & 0xC) == v17)
  {
    result = sub_22C8A3F0C(v21, a5, a6);
    v21 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_15:
    v24 = (v21 >> 16) - (v23 >> 16);
LABEL_28:
    if ((a4 & 0x1000000000000000) != 0)
    {
      result = sub_22C90A3BC();
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      result = HIBYTE(a4) & 0xF;
    }

    else
    {
      result = a3 & 0xFFFFFFFFFFFFLL;
    }

    v26 = v19 + result;
    if (__OFADD__(v19, result))
    {
      __break(1u);
    }

    else
    {
      result = v26 + v24;
      if (!__OFADD__(v26, v24))
      {
        MEMORY[0x2318B7700](result);
LABEL_35:
        sub_22C90A4AC();
        sub_22C575E6C();
        sub_22C90A35C();

        sub_22C90A35C();
        sub_22C8A5380(a2, a5, a6);
        sub_22C90A35C();

        return 0;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  if (v20 < v23 >> 16)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v20 >= v21 >> 16)
  {
    v24 = sub_22C90A3EC();
    goto LABEL_28;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_22C5747A4(uint64_t result, uint64_t a2)
{
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    sub_22C3A5908(&qword_27D9BDE70, &qword_22C91C090);
    sub_22C90A8EC();
    sub_22C90A8EC();
    return 0;
  }

  return result;
}

uint64_t sub_22C574834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_22C5747A4(a1, a2);
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = v5;
  return result;
}

void sub_22C574870(void *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

void sub_22C5748A8(void *a1@<X8>)
{
  sub_22C5722E4();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = MEMORY[0x277D84FA0];
}

void sub_22C5748E4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22C799F94(0);
  if (sub_22C7AA104(v5))
  {
    sub_22C5EA6B4();
  }

  else
  {

    v6 = MEMORY[0x277D84FA0];
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v6;
}

unint64_t sub_22C57494C()
{
  result = qword_27D9BDE50;
  if (!qword_27D9BDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE50);
  }

  return result;
}

unint64_t sub_22C5749A4()
{
  result = qword_27D9BDE58;
  if (!qword_27D9BDE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE58);
  }

  return result;
}

unint64_t sub_22C5749FC()
{
  result = qword_27D9BDE60;
  if (!qword_27D9BDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE60);
  }

  return result;
}

unint64_t sub_22C574A54()
{
  result = qword_27D9BDE68;
  if (!qword_27D9BDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE68);
  }

  return result;
}

uint64_t sub_22C574AA8(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C288();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_22C574B2C(v10, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_22C574B2C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_22C90B45C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22C3A5908(&qword_27D9BDE98, &unk_22C91C328);
        v10 = sub_22C90A64C();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_22C574C40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >> 14 >= *v9 >> 14)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22C574CB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >> 14 <= *v9 >> 14)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C574D28(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v85 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v80 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v14 = *v11;
        v13 = v11 + 4;
        v15 = v10 >> 14;
        v16 = v14 >> 14;
        v17 = v7 + 2;
        while (1)
        {
          v18 = v17;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 2;
          v20 = (v15 < v16) ^ (v19 >> 14 >= v10 >> 14);
          ++v17;
          v10 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v15 < v16)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6 - 16;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = *(v24 + v12);
                *(v24 + v12) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v26 = *a3;
            v27 = *a3 + 16 * v9 - 16;
            v28 = v7 - v9;
            do
            {
              v29 = *(v26 + 16 * v9);
              v30 = v28;
              v31 = v27;
              do
              {
                if (v29 >> 14 >= *v31 >> 14)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_111;
                }

                v32 = *(v31 + 24);
                *(v31 + 16) = *v31;
                *v31 = v29;
                *(v31 + 8) = v32;
                v31 -= 16;
              }

              while (!__CFADD__(v30++, 1));
              ++v9;
              v27 += 16;
              --v28;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v82 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C590218(0, v8[2] + 1, 1, v8);
        v8 = v78;
      }

      v35 = v8[2];
      v34 = v8[3];
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        sub_22C590218(v34 > 1, v35 + 1, 1, v8);
        v8 = v79;
      }

      v8[2] = v36;
      v37 = v8 + 4;
      v38 = &v8[2 * v35 + 4];
      *v38 = v7;
      v38[1] = v9;
      v83 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v35)
      {
        while (1)
        {
          v39 = v36 - 1;
          v40 = &v37[2 * v36 - 2];
          v41 = &v8[2 * v36];
          if (v36 >= 4)
          {
            break;
          }

          if (v36 == 3)
          {
            v42 = v8[4];
            v43 = v8[5];
            v52 = __OFSUB__(v43, v42);
            v44 = v43 - v42;
            v45 = v52;
LABEL_56:
            if (v45)
            {
              goto LABEL_96;
            }

            v57 = *v41;
            v56 = v41[1];
            v58 = __OFSUB__(v56, v57);
            v59 = v56 - v57;
            v60 = v58;
            if (v58)
            {
              goto LABEL_99;
            }

            v61 = v40[1];
            v62 = v61 - *v40;
            if (__OFSUB__(v61, *v40))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v59, v62))
            {
              goto LABEL_104;
            }

            if (v59 + v62 >= v44)
            {
              if (v44 < v62)
              {
                v39 = v36 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v36 < 2)
          {
            goto LABEL_98;
          }

          v64 = *v41;
          v63 = v41[1];
          v52 = __OFSUB__(v63, v64);
          v59 = v63 - v64;
          v60 = v52;
LABEL_71:
          if (v60)
          {
            goto LABEL_101;
          }

          v66 = *v40;
          v65 = v40[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_103;
          }

          if (v67 < v59)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v39 - 1 >= v36)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v71 = &v37[2 * v39 - 2];
          v72 = *v71;
          v73 = &v37[2 * v39];
          v74 = v73[1];
          sub_22C575844((*a3 + 16 * *v71), (*a3 + 16 * *v73), (*a3 + 16 * v74), v83);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v74 < v72)
          {
            goto LABEL_91;
          }

          v75 = v8;
          v76 = v8[2];
          if (v39 > v76)
          {
            goto LABEL_92;
          }

          *v71 = v72;
          v71[1] = v74;
          if (v39 >= v76)
          {
            goto LABEL_93;
          }

          v36 = v76 - 1;
          memmove(&v37[2 * v39], v73 + 2, 16 * (v76 - 1 - v39));
          v75[2] = v76 - 1;
          v77 = v76 > 2;
          v8 = v75;
          v5 = 0;
          if (!v77)
          {
            goto LABEL_85;
          }
        }

        v46 = &v37[2 * v36];
        v47 = *(v46 - 8);
        v48 = *(v46 - 7);
        v52 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        if (v52)
        {
          goto LABEL_94;
        }

        v51 = *(v46 - 6);
        v50 = *(v46 - 5);
        v52 = __OFSUB__(v50, v51);
        v44 = v50 - v51;
        v45 = v52;
        if (v52)
        {
          goto LABEL_95;
        }

        v53 = v41[1];
        v54 = v53 - *v41;
        if (__OFSUB__(v53, *v41))
        {
          goto LABEL_97;
        }

        v52 = __OFADD__(v44, v54);
        v55 = v44 + v54;
        if (v52)
        {
          goto LABEL_100;
        }

        if (v55 >= v49)
        {
          v69 = *v40;
          v68 = v40[1];
          v52 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v52)
          {
            goto LABEL_105;
          }

          if (v44 < v70)
          {
            v39 = v36 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v82;
      a4 = v80;
      if (v82 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_22C575710(&v85, *result, a3, sub_22C575844);
LABEL_89:
}

void sub_22C57521C(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v85 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v80 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v14 = *v11;
        v13 = v11 + 4;
        v15 = v14 >> 14;
        v16 = v10 >> 14;
        v17 = v7 + 2;
        while (1)
        {
          v18 = v17;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 2;
          v20 = (v15 < v16) ^ (v10 >> 14 >= v19 >> 14);
          ++v17;
          v10 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v15 < v16)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6 - 16;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = *(v24 + v12);
                *(v24 + v12) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v26 = *a3;
            v27 = *a3 + 16 * v9 - 16;
            v28 = v7 - v9;
            do
            {
              v29 = *(v26 + 16 * v9);
              v30 = v28;
              v31 = v27;
              do
              {
                if (v29 >> 14 <= *v31 >> 14)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_111;
                }

                v32 = *(v31 + 24);
                *(v31 + 16) = *v31;
                *v31 = v29;
                *(v31 + 8) = v32;
                v31 -= 16;
              }

              while (!__CFADD__(v30++, 1));
              ++v9;
              v27 += 16;
              --v28;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v82 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C590218(0, v8[2] + 1, 1, v8);
        v8 = v78;
      }

      v35 = v8[2];
      v34 = v8[3];
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        sub_22C590218(v34 > 1, v35 + 1, 1, v8);
        v8 = v79;
      }

      v8[2] = v36;
      v37 = v8 + 4;
      v38 = &v8[2 * v35 + 4];
      *v38 = v7;
      v38[1] = v9;
      v83 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v35)
      {
        while (1)
        {
          v39 = v36 - 1;
          v40 = &v37[2 * v36 - 2];
          v41 = &v8[2 * v36];
          if (v36 >= 4)
          {
            break;
          }

          if (v36 == 3)
          {
            v42 = v8[4];
            v43 = v8[5];
            v52 = __OFSUB__(v43, v42);
            v44 = v43 - v42;
            v45 = v52;
LABEL_56:
            if (v45)
            {
              goto LABEL_96;
            }

            v57 = *v41;
            v56 = v41[1];
            v58 = __OFSUB__(v56, v57);
            v59 = v56 - v57;
            v60 = v58;
            if (v58)
            {
              goto LABEL_99;
            }

            v61 = v40[1];
            v62 = v61 - *v40;
            if (__OFSUB__(v61, *v40))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v59, v62))
            {
              goto LABEL_104;
            }

            if (v59 + v62 >= v44)
            {
              if (v44 < v62)
              {
                v39 = v36 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v36 < 2)
          {
            goto LABEL_98;
          }

          v64 = *v41;
          v63 = v41[1];
          v52 = __OFSUB__(v63, v64);
          v59 = v63 - v64;
          v60 = v52;
LABEL_71:
          if (v60)
          {
            goto LABEL_101;
          }

          v66 = *v40;
          v65 = v40[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_103;
          }

          if (v67 < v59)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v39 - 1 >= v36)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v71 = &v37[2 * v39 - 2];
          v72 = *v71;
          v73 = &v37[2 * v39];
          v74 = v73[1];
          sub_22C5759D0((*a3 + 16 * *v71), (*a3 + 16 * *v73), (*a3 + 16 * v74), v83);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v74 < v72)
          {
            goto LABEL_91;
          }

          v75 = v8;
          v76 = v8[2];
          if (v39 > v76)
          {
            goto LABEL_92;
          }

          *v71 = v72;
          v71[1] = v74;
          if (v39 >= v76)
          {
            goto LABEL_93;
          }

          v36 = v76 - 1;
          memmove(&v37[2 * v39], v73 + 2, 16 * (v76 - 1 - v39));
          v75[2] = v76 - 1;
          v77 = v76 > 2;
          v8 = v75;
          v5 = 0;
          if (!v77)
          {
            goto LABEL_85;
          }
        }

        v46 = &v37[2 * v36];
        v47 = *(v46 - 8);
        v48 = *(v46 - 7);
        v52 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        if (v52)
        {
          goto LABEL_94;
        }

        v51 = *(v46 - 6);
        v50 = *(v46 - 5);
        v52 = __OFSUB__(v50, v51);
        v44 = v50 - v51;
        v45 = v52;
        if (v52)
        {
          goto LABEL_95;
        }

        v53 = v41[1];
        v54 = v53 - *v41;
        if (__OFSUB__(v53, *v41))
        {
          goto LABEL_97;
        }

        v52 = __OFADD__(v44, v54);
        v55 = v44 + v54;
        if (v52)
        {
          goto LABEL_100;
        }

        if (v55 >= v49)
        {
          v69 = *v40;
          v68 = v40[1];
          v52 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v52)
          {
            goto LABEL_105;
          }

          if (v44 < v70)
          {
            v39 = v36 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v82;
      a4 = v80;
      if (v82 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_22C575710(&v85, *result, a3, sub_22C5759D0);
LABEL_89:
}

uint64_t sub_22C575710(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t, int64_t, uint64_t))
{
  v5 = a1;
  v6 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C56BFD8();
    v6 = result;
  }

  v14 = v5;
  *v5 = v6;
  v8 = (v6 + 16);
  for (i = *(v6 + 16); ; *v8 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v14 = v6;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v5 = (v6 + 16 * i);
    v10 = *v5;
    v11 = &v8[2 * i];
    v12 = v11[1];
    a4(*a3 + 16 * *v5, *a3 + 16 * *v11, *a3 + 16 * v12, a2);
    if (v4)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v8)
    {
      goto LABEL_12;
    }

    *v5 = v10;
    v5[1] = v12;
    v13 = *v8 - i;
    if (*v8 < i)
    {
      goto LABEL_13;
    }

    i = *v8 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v6;
  __break(1u);
  return result;
}

uint64_t sub_22C575844(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_22C3A4F80(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >> 14 >= *v4 >> 14)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_22C3A4F80(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 2) >> 14 < *v14 >> 14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_22C5759D0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_22C3A4F80(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >> 14 >= *v6 >> 14)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_22C3A4F80(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*v14 >> 14 < *(v10 - 2) >> 14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

unint64_t *sub_22C575B5C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22C7ED470(v8, a2, a3, a4);
    v10 = v9;

    return v10;
  }

  return result;
}

_BYTE *sub_22C575BEC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PromptString.TaggedRange(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for PromptString.TaggedRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_22C575D6C()
{
  result = qword_27D9BDE78;
  if (!qword_27D9BDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE78);
  }

  return result;
}

unint64_t sub_22C575DC0()
{
  result = qword_27D9BDE80;
  if (!qword_27D9BDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE80);
  }

  return result;
}

unint64_t sub_22C575E18()
{
  result = qword_27D9BDE88;
  if (!qword_27D9BDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE88);
  }

  return result;
}

unint64_t sub_22C575E6C()
{
  result = qword_27D9BDE90;
  if (!qword_27D9BDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDE90);
  }

  return result;
}

uint64_t sub_22C575EF4(uint64_t a1, uint64_t a2)
{
  *(v2 - 136) = a1;
  *(v2 - 128) = a2;
  v3 = *(v2 - 168);
  *(v2 - 104) = *(v2 - 200);
  *(v2 - 96) = v3;
  return v2 - 104;
}

void sub_22C575F14(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_22C571CF8(a1, a2, a3, a4, v12, v11, v9, v10, a9);
}

uint64_t sub_22C575F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C90981C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v76 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  v8 = MEMORY[0x28223BE20](v64);
  v63 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = v52 - v10;
  v61 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v11 = MEMORY[0x28223BE20](v61);
  v60 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = v52 - v14;
  MEMORY[0x28223BE20](v13);
  v58 = v52 - v15;
  v16 = *(a3 + 16);
  v78 = MEMORY[0x277D84F90];
  sub_22C3B6FA0(0, v16, 0);
  v77 = v78;
  v57 = v16;
  v52[0] = a3;
  if (v16)
  {
    v54 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v53 = a2 + v54;
    v56 = *(a2 + 16);
    v75 = v6 + 16;
    v55 = v6;
    v17 = v6 + 32;

    v19 = 0;
    v20 = (a3 + 64);
    v74 = v17;
    while (v56 != v19)
    {
      v21 = v64;
      v22 = v62;
      v23 = &v62[*(v64 + 48)];
      v24 = v55;
      v73 = *(v55 + 72);
      v72 = *(v55 + 16);
      v72(v62, v53 + v73 * v19, v5);
      v26 = *(v20 - 4);
      v25 = *(v20 - 3);
      v28 = *(v20 - 1);
      v70 = *(v20 - 2);
      v27 = v70;
      v71 = v25;
      v69 = v28;
      v29 = *v20;
      v67 = v26;
      v68 = v29;
      *v23 = v26;
      *(v23 + 1) = v25;
      *(v23 + 2) = v27;
      *(v23 + 3) = v28;
      *(v23 + 4) = v29;
      v30 = v22;
      v31 = v63;
      sub_22C4E7208(v30, v63, &qword_27D9BD8E0, &qword_22C91B410);
      v32 = v31 + *(v21 + 48);
      v33 = v61;
      v34 = v58;
      v35 = &v58[*(v61 + 48)];
      v36 = *(v24 + 32);
      v36(v58, v31, v5);
      v37 = *(v32 + 32);
      v38 = *(v32 + 16);
      *v35 = *v32;
      *(v35 + 1) = v38;
      *(v35 + 4) = v37;
      v39 = v59;
      sub_22C4E719C(v34, v59, &qword_27D9BD8E8, &unk_22C919AD0);
      v40 = *(v33 + 48);
      v41 = v36;
      v42 = *(v39 + v40 + 32);
      v43 = v60;
      v44 = &v60[v40];
      v45 = *(v39 + v40);
      v65 = *(v39 + v40 + 16);
      v66 = v45;
      v41(v60, v39, v5);
      v46 = v65;
      *v44 = v66;
      *(v44 + 1) = v46;
      *(v44 + 4) = v42;
      v72(v76, v43, v5);

      sub_22C456C94(v71, v70, v69);
      sub_22C36DD28(v43, &qword_27D9BD8E8, &unk_22C919AD0);
      v47 = v77;
      sub_22C36DD28(v34, &qword_27D9BD8E8, &unk_22C919AD0);
      v78 = v47;
      v49 = *(v47 + 16);
      v48 = *(v47 + 24);
      v77 = v47;
      if (v49 >= v48 >> 1)
      {
        sub_22C3B6FA0(v48 > 1, v49 + 1, 1);
        v77 = v78;
      }

      ++v19;
      v50 = v76;
      v51 = v77;
      *(v77 + 16) = v49 + 1;
      result = (v41)(v51 + v54 + v49 * v73, v50, v5);
      v20 += 5;
      if (v57 == v19)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:

    return v77;
  }

  return result;
}

void sub_22C576428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  v5 = MEMORY[0x28223BE20](v60);
  v59 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = v48 - v7;
  v57 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v8 = MEMORY[0x28223BE20](v57);
  v56 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = v48 - v11;
  MEMORY[0x28223BE20](v10);
  v54 = v48 - v12;
  v13 = *(a3 + 16);
  v70 = MEMORY[0x277D84F90];
  sub_22C3B63D4(0, v13, 0);
  v14 = v70;
  v53 = v13;
  v48[0] = a3;
  if (v13)
  {
    v51 = sub_22C90981C();
    v15 = *(v51 - 8);
    v49 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v52 = *(a2 + 16);
    v48[3] = v15 + 16;
    v50 = v15;
    v48[2] = v15 + 32;

    v16 = 0;
    v17 = (a3 + 64);
    while (v52 != v16)
    {
      v68 = v14;
      v18 = v60;
      v19 = v58;
      v20 = &v58[*(v60 + 48)];
      v21 = v50;
      v22 = v49 + *(v50 + 72) * v16;
      v23 = *(v50 + 16);
      v24 = v51;
      v67 = v16;
      v23(v58, v22, v51);
      v26 = *(v17 - 4);
      v25 = *(v17 - 3);
      v28 = *(v17 - 1);
      v65 = *(v17 - 2);
      v27 = v65;
      v66 = v25;
      v64 = v28;
      v29 = *v17;
      v62 = v26;
      v63 = v29;
      *v20 = v26;
      *(v20 + 1) = v25;
      *(v20 + 2) = v27;
      *(v20 + 3) = v28;
      *(v20 + 4) = v29;
      v30 = v59;
      sub_22C4E7208(v19, v59, &qword_27D9BD8E0, &qword_22C91B410);
      v31 = v30 + *(v18 + 48);
      v32 = v57;
      v33 = v54;
      v34 = &v54[*(v57 + 48)];
      v35 = *(v21 + 32);
      v35(v54, v30, v24);
      v36 = *(v31 + 32);
      v37 = *(v31 + 16);
      *v34 = *v31;
      *(v34 + 1) = v37;
      *(v34 + 4) = v36;
      v38 = v55;
      sub_22C4E719C(v33, v55, &qword_27D9BD8E8, &unk_22C919AD0);
      v39 = *(v32 + 48);
      v40 = *(v38 + v39 + 32);
      v41 = v56;
      v42 = &v56[v39];
      v43 = *(v38 + v39 + 16);
      v69 = *(v38 + v39);
      v61 = v43;
      v35(v56, v38, v24);
      v44 = v61;
      *v42 = v69;
      *(v42 + 1) = v44;
      *(v42 + 4) = v40;
      v14 = v68;

      sub_22C456C94(v66, v65, v64);
      v45 = v69;

      sub_22C36DD28(v41, &qword_27D9BD8E8, &unk_22C919AD0);
      sub_22C36DD28(v33, &qword_27D9BD8E8, &unk_22C919AD0);
      v70 = v14;
      v47 = *(v14 + 16);
      v46 = *(v14 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_22C3B63D4(v46 > 1, v47 + 1, 1);
        v14 = v70;
      }

      v16 = v67 + 1;
      *(v14 + 16) = v47 + 1;
      *(v14 + 8 * v47 + 32) = v45;
      v17 += 5;
      if (v53 == v16)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
  }
}

void sub_22C57689C()
{
  sub_22C36BA7C();
  v88 = v0;
  sub_22C9063DC();
  sub_22C369824();
  v86 = v2;
  v87 = v1;
  MEMORY[0x28223BE20](v1);
  sub_22C369ABC();
  v78[1] = v3 - v4;
  sub_22C369930();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v78 - v7;
  MEMORY[0x28223BE20](v6);
  v82 = v78 - v9;
  v10 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  MEMORY[0x28223BE20](v10 - 8);
  sub_22C369ABC();
  v79 = v11 - v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  v84 = v78 - v14;
  sub_22C36BA0C();
  v85 = sub_22C90046C();
  sub_22C369824();
  v81 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v80 = v18 - v17;
  sub_22C36BA0C();
  v83 = sub_22C90634C();
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C369ABC();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v78 - v26;
  v28 = sub_22C90636C();
  sub_22C369824();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22C369ABC();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = v78 - v36;
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  if (v89 == 1)
  {
    sub_22C90364C();
    sub_22C90364C();
    sub_22C90635C();
    sub_22C90631C();
    v78[0] = *(v30 + 8);
    (v78[0])(v34, v28);
    v38 = sub_22C90635C();
    v39 = sub_22C90AB6C();
    if (sub_22C90AC5C())
    {
      v40 = sub_22C36D240();
      *v40 = 0;
      v41 = sub_22C90632C();
      _os_signpost_emit_with_name_impl(&dword_22C366000, v38, v39, v41, "PromptToolsHelper.loadToolsOverride", "", v40, 2u);
      sub_22C3699EC();
    }

    (*(v20 + 16))(v24, v27, v83);
    sub_22C9063AC();
    swift_allocObject();
    v42 = sub_22C90639C();
    v43 = sub_22C36BC58();
    v44(v43);
    (v78[0])(v37, v28);
    sub_22C47A574();
    v45 = sub_22C47A5B8(0xD000000000000039);
    if (v45)
    {
      v46 = sub_22C8C4FE8(0xD000000000000012, 0x800000022C932300, 1852797802, 0xE400000000000000, v45);
      v47 = v84;
      v48 = v85;
      if (v46)
      {
        v49 = v46;
        v50 = v79;
        sub_22C9003DC();

        v51 = 0;
      }

      else
      {
        v51 = 1;
        v50 = v79;
      }

      sub_22C36C640(v50, v51, 1, v48);
      v63 = sub_22C36BC58();
      sub_22C4E7208(v63, v64, v65, v66);
      if (sub_22C370B74(v47, 1, v48) != 1)
      {
        (*(v81 + 32))(v80, v47, v48);
        sub_22C9004AC();
        sub_22C8FFECC();
        swift_allocObject();
        sub_22C8FFEBC();
        v71 = sub_22C906A5C();
        sub_22C57A098(&qword_28142FAD8, MEMORY[0x277D1DD30], MEMORY[0x277D1DD38]);
        sub_22C8FFEAC();
        (*(v81 + 8))(v80, v48);

        v76 = sub_22C36EBF0();
        sub_22C38B120(v76, v77);
        sub_22C36BECC();
        v75 = v71;
LABEL_17:
        sub_22C36C640(v72, v73, v74, v75);
        sub_22C5793F8(v42);

        goto LABEL_18;
      }
    }

    else
    {
      v47 = v84;
      sub_22C36A748();
      sub_22C36C640(v59, v60, v61, v62);
    }

    sub_22C36DD28(v47, &qword_27D9BB138, &qword_22C90DB70);
    v67 = v82;
    sub_22C903F7C();
    v68 = sub_22C9063CC();
    v69 = sub_22C90AADC();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = sub_22C36D240();
      *v70 = 0;
      sub_22C3699EC();
    }

    (*(v86 + 8))(v67, v87);
    sub_22C906A5C();
    sub_22C36A748();
    goto LABEL_17;
  }

  sub_22C903F7C();
  v52 = sub_22C9063CC();
  v53 = sub_22C90AACC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = sub_22C36D240();
    *v54 = 0;
    _os_log_impl(&dword_22C366000, v52, v53, "FullPlanner is not configured to override tool descriptions. Skipping loading the overrides file.", v54, 2u);
    sub_22C3699EC();
  }

  (*(v86 + 8))(v8, v87);
  sub_22C906A5C();
  sub_22C36A748();
  sub_22C36C640(v55, v56, v57, v58);
LABEL_18:
  sub_22C36CC48();
}

void sub_22C57709C()
{
  sub_22C36BA7C();
  v93 = v0;
  v83 = v1;
  v2 = sub_22C908D6C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v92 = sub_22C9099FC();
  sub_22C369824();
  v84 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v94 = v12 - v11;
  v13 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  MEMORY[0x28223BE20](v13 - 8);
  sub_22C369ABC();
  v82 = v14 - v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  v81 = &v77 - v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  v20 = &v77 - v19;
  v21 = sub_22C9036EC();
  sub_22C369824();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v27 = v26 - v25;
  v28 = sub_22C908EAC();
  sub_22C369824();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v34 = v33 - v32;
  (*(v23 + 16))(v27, v93, v21);
  v35 = sub_22C37493C();
  v37 = v36(v35);
  if (v37 != *MEMORY[0x277D1ECE0])
  {
    if (v37 == *MEMORY[0x277D1ECE8])
    {
      v62 = sub_22C37493C();
      v63(v62);
      v64 = v92;
      (*(v84 + 32))(v83, v27, v92);
      sub_22C36BECC();
      v68 = v64;
    }

    else
    {
      if (v37 == *MEMORY[0x277D1ECD8])
      {
        goto LABEL_2;
      }

      if (v37 != *MEMORY[0x277D1ECD0] && v37 != *MEMORY[0x277D1ECF8])
      {
        goto LABEL_35;
      }

      v72 = sub_22C37493C();
      v73(v72);
      sub_22C36A748();
      v68 = v92;
    }

    sub_22C36C640(v65, v66, v67, v68);
    goto LABEL_32;
  }

LABEL_2:
  v38 = sub_22C37493C();
  v39(v38);
  v79 = v30;
  v80 = v28;
  (*(v30 + 32))(v34, v27, v28);
  v78 = v34;
  v40 = sub_22C908DEC();
  v41 = 0;
  v42 = *(v40 + 16);
  v43 = v4 + 16;
  LODWORD(v93) = *MEMORY[0x277D72148];
  v87 = (v4 + 96);
  v88 = (v4 + 8);
  v90 = v40;
  v91 = (v84 + 32);
  v85 = v4 + 88;
  v86 = 0x800000022C932110;
  v84 += 8;
  v44 = v92;
  v89 = v4;
  while (v42 != v41)
  {
    sub_22C389030();
    (*(v4 + 16))(v8, v45 + v46 * v41, v2);
    v47 = (*(v4 + 88))(v8, v2);
    if (v47 == v93)
    {
      v48 = v43;
      (*v87)(v8, v2);
      v49 = *v91;
      (*v91)(v94, v8, v44);
      if (sub_22C9099DC() == 0xD00000000000001CLL && v86 == v50)
      {
      }

      else
      {
        v52 = sub_22C90B4FC();

        if ((v52 & 1) == 0)
        {
          v44 = v92;
          v49(v20, v94, v92);
          sub_22C36BECC();
          sub_22C36C640(v74, v75, v76, v44);
          sub_22C36DD28(v20, &qword_27D9BDC50, &unk_22C91B470);
          v40 = v90;
          goto LABEL_16;
        }
      }

      v44 = v92;
      (*v84)(v94, v92);
      v43 = v48;
      v4 = v89;
      v40 = v90;
    }

    else
    {
      (*v88)(v8, v2);
    }

    sub_22C36A748();
    sub_22C36C640(v53, v54, v55, v44);
    sub_22C36DD28(v20, &qword_27D9BDC50, &unk_22C91B470);
    ++v41;
  }

  v41 = v42;
LABEL_16:
  v56 = *(v40 + 16);
  v58 = v79;
  v57 = v80;
  v59 = v78;
  if (v41 == v56)
  {
    v60 = 1;
    v61 = v83;
LABEL_23:
    sub_22C36C640(v61, v60, 1, v44);

    (*(v58 + 8))(v59, v57);
LABEL_32:
    sub_22C36CC48();
    return;
  }

  if (v41 >= v56)
  {
    __break(1u);
  }

  else
  {
    sub_22C389030();
    v69 = v81;
    sub_22C5791C0();
    v70 = v82;
    sub_22C4E719C(v69, v82, &qword_27D9BDC50, &unk_22C91B470);
    if (sub_22C370B74(v70, 1, v44) != 1)
    {
      v61 = v83;
      (*v91)(v83, v70, v44);
      sub_22C36DD28(v69, &qword_27D9BDC50, &unk_22C91B470);
      v60 = 0;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_35:
  sub_22C90B4EC();
  __break(1u);
}

uint64_t sub_22C577748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_22C3A5908(&qword_27D9BDEA0, &qword_22C91C338);
  sub_22C90A51C();
  return v9;
}

void sub_22C5777F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22C36BA7C();
  v50 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v48 = v35;
  v37 = v36;
  v49 = v38;
  sub_22C9037DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  sub_22C576428(v34, v32, v30);
  sub_22C578954(v37, v48, v34, v32, v30, a21, v49, v50, a24, a26, a27, a28);
  sub_22C578D6C();
  v41 = v40;

  if (a25)
  {
    sub_22C9037AC();
    sub_22C57A098(&qword_27D9BC7F8, MEMORY[0x277D1ED48], MEMORY[0x277D1ED68]);
    sub_22C36BC58();
    sub_22C90A56C();
    sub_22C36BC58();
    sub_22C90A56C();
    v42 = sub_22C36EBF0();
    v43(v42);
    if (v51 == v52)
    {
      sub_22C36A83C();
      v44 = swift_allocObject();
      *(v44 + 16) = sub_22C90A49C();
      *(v44 + 24) = v45;
      v46 = *(v41 + 16);
      if (!swift_isUniquelyReferenced_nonNull_native() || v46 >= *(v41 + 24) >> 1)
      {
        sub_22C591324();
        v41 = v47;
      }

      sub_22C41D69C(0, 0, 1, v44);
    }
  }

  sub_22C47D738(10, 0xE100000000000000, v41);

  sub_22C36CC48();
}

uint64_t sub_22C577AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45[3] = a2;
  v45[2] = a3;
  v3 = sub_22C908A8C();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v47 = sub_22C90952C();
  sub_22C369824();
  v45[1] = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v12 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v45 - v13;
  v15 = sub_22C90998C();
  sub_22C369824();
  v45[0] = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = (v19 - v18);
  sub_22C90994C();
  (*(v5 + 104))(v9, *MEMORY[0x277D1E8C0], v3);
  v21 = v46;
  sub_22C908B1C();
  if (v21)
  {

    (*(v5 + 8))(v9, v3);
    v22 = sub_22C382740();
    v23(v22);
    sub_22C90947C();
    sub_22C36A748();
    sub_22C36C640(v24, v25, v26, v27);
    sub_22C36DD28(v14, &qword_27D9BC3B0, &unk_22C912AF0);
LABEL_6:
    v41 = 2;
    v48 = 2;
    sub_22C3E01D8();
    swift_willThrowTypedImpl();
    return v41;
  }

  v46 = v20;
  (*(v5 + 8))(v9, v3);
  v28 = sub_22C382740();
  v29(v28);
  v30 = sub_22C90947C();
  sub_22C36BECC();
  sub_22C36C640(v31, v32, v33, v30);
  v34 = sub_22C36BA00();
  if (v35(v34) != *MEMORY[0x277D72B48])
  {
    v42 = sub_22C36BA00();
    v43(v42);
    goto LABEL_6;
  }

  v36 = sub_22C36BA00();
  v37(v36);
  v38 = v45[0];
  v39 = v46;
  v40 = (*(v45[0] + 32))(v46, v14, v15);
  v41 = MEMORY[0x2318B6E50](v40);
  (*(v38 + 8))(v39, v15);
  return v41;
}

void sub_22C577E5C()
{
  sub_22C36BA7C();
  v125 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v119 = sub_22C909A5C();
  sub_22C369824();
  v118 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v117 = v10 - v9;
  sub_22C36BA0C();
  v126 = sub_22C90998C();
  sub_22C369824();
  v124 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v123 = v14 - v13;
  sub_22C36BA0C();
  v122 = sub_22C9063DC();
  sub_22C369824();
  v121 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v127 = v18 - v17;
  sub_22C36BA0C();
  v139 = sub_22C909A3C();
  sub_22C369824();
  v137 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  v128 = v21 - v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v23);
  v136 = &v116 - v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  v129 = &v116 - v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  v134 = &v116 - v28;
  sub_22C36BA0C();
  v138 = sub_22C9090BC();
  sub_22C369824();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v135 = v33 - v32;
  v34 = *(v2 + 40);
  v120 = v6;
  v140[2] = v6;

  v39 = sub_22C47B590(sub_22C57A078, v140, v34);
  v40 = *(v39 + 16);
  v131 = v4;
  if (v40)
  {
    v141 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v40, 0, v35, v36, v37, v38);
    v41 = v141;
    v43 = *(v30 + 16);
    v42 = v30 + 16;
    v133 = v43;
    v44 = (*(v42 + 64) + 32) & ~*(v42 + 64);
    v130 = v39;
    v45 = v39 + v44;
    v132 = *(v42 + 56);
    v46 = (v42 - 8);
    do
    {
      v47 = v135;
      v48 = v138;
      v49 = v42;
      sub_22C57A240();
      v50();
      v51 = sub_22C90908C();
      v53 = v52;
      (*v46)(v47, v48);
      v141 = v41;
      v55 = *(v41 + 16);
      v54 = *(v41 + 24);
      if (v55 >= v54 >> 1)
      {
        v57 = sub_22C369AB0(v54);
        sub_22C3B5E2C(v57, v55 + 1, 1, v58, v59, v60, v61);
        v41 = v141;
      }

      *(v41 + 16) = v55 + 1;
      v56 = v41 + 16 * v55;
      *(v56 + 32) = v51;
      *(v56 + 40) = v53;
      v45 += v132;
      --v40;
      v42 = v49;
    }

    while (v40);

    v4 = v131;
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v62 = sub_22C3AD928(v41);
  v63 = 0;
  v138 = *(v4 + 16);
  v135 = v137 + 16;
  v133 = v137 + 32;
  v132 = (v137 + 8);
  v130 = MEMORY[0x277D84F90];
LABEL_9:
  while (v63 != v138)
  {
    (*(v137 + 16))(v134, v4 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v63++, v139);
    sub_22C909A2C();
    v65 = v64;
    if (*(v62 + 16))
    {
      sub_22C90B62C();
      sub_22C909FFC();
      sub_22C90B66C();
      sub_22C37676C();
      while (1)
      {
        sub_22C370784();
        if ((v66 & 1) == 0)
        {
          break;
        }

        sub_22C383114();
        v68 = v68 && v67 == v65;
        if (v68 || (sub_22C90B4FC() & 1) != 0)
        {

          sub_22C57A240();
          v70 = *v69;
          (*v69)(v129, v134, v139);
          v71 = v130;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = v71;
          v142 = v71;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22C37F818(*(v71 + 16));
            v73 = v142;
          }

          v75 = *(v73 + 16);
          v74 = *(v73 + 24);
          if (v75 >= v74 >> 1)
          {
            v76 = sub_22C369AB0(v74);
            sub_22C3B6B48(v76, v75 + 1, 1);
            v73 = v142;
          }

          *(v73 + 16) = v75 + 1;
          v130 = v73;
          sub_22C57A240();
          v70();
          goto LABEL_9;
        }
      }
    }

    (*v132)(v134, v139);
  }

  v77 = 0;
  v78 = MEMORY[0x277D84F90];
  while (v77 != v138)
  {
    (*(v137 + 16))(v136, v4 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v77++, v139);
    sub_22C909A2C();
    v80 = v79;
    if (*(v62 + 16))
    {
      sub_22C90B62C();
      sub_22C909FFC();
      sub_22C90B66C();
      sub_22C37676C();
      while (1)
      {
        sub_22C370784();
        if ((v81 & 1) == 0)
        {
          break;
        }

        sub_22C383114();
        v83 = v68 && v82 == v80;
        if (v83 || (sub_22C90B4FC() & 1) != 0)
        {

          (*v132)(v136, v139);
          goto LABEL_40;
        }
      }
    }

    sub_22C57A240();
    v85 = *v84;
    (*v84)(v128, v136, v139);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v142 = v78;
    if ((v86 & 1) == 0)
    {
      sub_22C37F818(*(v78 + 16));
      v78 = v142;
    }

    v88 = *(v78 + 16);
    v87 = *(v78 + 24);
    if (v88 >= v87 >> 1)
    {
      v89 = sub_22C369AB0(v87);
      sub_22C3B6B48(v89, v88 + 1, 1);
      v78 = v142;
    }

    *(v78 + 16) = v88 + 1;
    sub_22C57A240();
    v85();
LABEL_40:
    v4 = v131;
  }

  v141 = v130;
  sub_22C3CD58C(v78);
  v90 = v141;

  v91 = v125;
  v92 = sub_22C812574(v125, v90);
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v99 = v127;
  v100 = v126;
  if ((v97 & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_22C90B50C();
  swift_unknownObjectRetain_n();
  v103 = swift_dynamicCastClass();
  if (!v103)
  {
    swift_unknownObjectRelease();
    v103 = MEMORY[0x277D84F90];
  }

  v78 = *(v103 + 16);

  if (__OFSUB__(v98 >> 1, v96))
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v78 != (v98 >> 1) - v96)
  {
LABEL_57:
    swift_unknownObjectRelease();
LABEL_42:
    sub_22C470124(v92, v94, v96, v98);
    v102 = v101;
    sub_22C37F314();
    goto LABEL_49;
  }

  v102 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  sub_22C37F314();
  if (v102)
  {
    goto LABEL_50;
  }

  v102 = MEMORY[0x277D84F90];
LABEL_49:
  swift_unknownObjectRelease();
LABEL_50:
  if (*(v90 + 16) <= v91)
  {
  }

  else
  {
    sub_22C903F7C();
    (*(v98 + 16))(v78, v120, v100);
    swift_retain_n();

    v104 = sub_22C9063CC();
    v105 = sub_22C90AACC();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = v98;
      v107 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v141 = v139;
      *v107 = 136315650;
      v108 = v100;
      v109 = v117;
      LODWORD(v138) = v105;
      sub_22C90996C();
      v110 = sub_22C909A4C();
      v112 = v111;
      (*(v118 + 8))(v109, v119);
      (*(v106 + 8))(v78, v108);
      v113 = sub_22C36F9F4(v110, v112, &v141);

      *(v107 + 4) = v113;
      *(v107 + 12) = 2048;
      v114 = *(v102 + 16);

      *(v107 + 14) = v114;

      *(v107 + 22) = 2048;
      v115 = *(v90 + 16);

      *(v107 + 24) = v115;

      _os_log_impl(&dword_22C366000, v104, v138, "Enum cases for %s truncated to first %ld out of %ld cases", v107, 0x20u);
      sub_22C36FF94(v139);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v121 + 8))(v127, v122);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v98 + 8))(v78, v100);
      (*(v121 + 8))(v99, v122);
    }
  }

  sub_22C36CC48();
}

uint64_t sub_22C578954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = sub_22C575F38(a3, a4, a5);
  v53 = a11;
  v54 = a12;
  v55 = a6;
  v56 = a8;
  v57 = a7;
  v18 = sub_22C792E18(sub_22C57A0E0, v52, v17);

  v60 = v18;
  v19 = *(a10 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v51 = a2;
    v58 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v19, 0);
    v21 = (a10 + 32);
    v20 = v58;
    do
    {
      v22 = *v21++;
      sub_22C36D2A8();
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 1;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v23 + 32) = v24;
      v58 = v20;
      v25 = *(v20 + 16);
      v26 = *(v20 + 24);

      if (v25 >= v26 >> 1)
      {
        sub_22C3B63D4(v26 > 1, v25 + 1, 1);
        v20 = v58;
      }

      *(v20 + 16) = v25 + 1;
      *(v20 + 8 * v25 + 32) = v23 | 0xA000000000000000;
      --v19;
    }

    while (v19);
    a2 = v51;
  }

  sub_22C3CD124(v20);
  v27 = MEMORY[0x277D84F90];
  if (*(v60 + 16))
  {
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    sub_22C36D2A8();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_22C90F800;
    sub_22C36A83C();
    v29 = swift_allocObject();
    v58 = 0x3A73677241;
    v59 = 0xE500000000000000;
    *(v29 + 16) = sub_22C90A49C();
    *(v29 + 24) = v30;
    *(v28 + 32) = v29;
    v58 = v28;

    sub_22C3CD124(v31);
    v50 = v58;
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v32 = swift_allocObject();
  if (a9)
  {
    *(v32 + 16) = xmmword_22C90F870;
    *(v32 + 32) = a1;
    *(v32 + 40) = a2;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0xE000000000000000;
    v33 = 2;
  }

  else
  {
    *(v32 + 16) = xmmword_22C90F800;
    *(v32 + 32) = a1;
    *(v32 + 40) = a2;
    v33 = 1;
  }

  v58 = v27;

  sub_22C3B63D4(0, v33, 0);
  v34 = v58;
  v35 = (v32 + 40);
  do
  {
    v37 = *(v35 - 1);
    v36 = *v35;
    sub_22C36A83C();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v36;
    v58 = v34;
    v40 = *(v34 + 16);
    v39 = *(v34 + 24);

    if (v40 >= v39 >> 1)
    {
      sub_22C3B63D4(v39 > 1, v40 + 1, 1);
      v34 = v58;
    }

    *(v34 + 16) = v40 + 1;
    *(v34 + 8 * v40 + 32) = v38;
    v35 += 2;
    --v33;
  }

  while (v33);

  v58 = v34;
  sub_22C3CD124(v50);
  v41 = v58;
  v42 = sub_22C47D738(10, 0xE100000000000000, v58);
  v43 = *(v41 + 16);

  if (v43 > 1)
  {
    sub_22C36A83C();
    v44 = swift_allocObject();
    v58 = 10;
    v59 = 0xE100000000000000;
    *(v44 + 16) = sub_22C90A49C();
    *(v44 + 24) = v45;
    v46 = sub_22C36BA00();
    v48 = sub_22C47D60C(v46, v47);

    return v48;
  }

  return v42;
}

void sub_22C578D6C()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C90F870;
  sub_22C36A83C();
  v9 = swift_allocObject();
  *(v9 + 16) = 543581540;
  *(v9 + 24) = 0xE400000000000000;
  sub_22C591324();
  v11 = v10;
  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  v14 = v12 >> 1;
  v15 = v13 + 1;
  if (v12 >> 1 <= v13)
  {
    v47 = sub_22C369AB0(v12);
    sub_22C36FC14(v47, v13 + 1);
    v11 = v48;
    v12 = *(v48 + 24);
    v14 = v12 >> 1;
  }

  *(v11 + 16) = v15;
  *(v11 + 8 * v13 + 32) = v9;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    v49 = sub_22C369AB0(v12);
    sub_22C36FC14(v49, v13 + 2);
    v11 = v50;
  }

  *(v11 + 16) = v16;
  *(v11 + 8 * v15 + 32) = v7;
  sub_22C36A83C();
  v17 = swift_allocObject();
  *(v17 + 16) = 40;
  *(v17 + 24) = 0xE100000000000000;
  v18 = *(v11 + 24);
  v19 = v13 + 3;

  if (v19 > (v18 >> 1))
  {
    sub_22C36FC14(v18 > 1, v19);
    v11 = v51;
  }

  *(v11 + 16) = v19;
  *(v11 + 8 * v16 + 32) = v17;
  v20 = sub_22C47D738(8236, 0xE200000000000000, v5);
  v22 = *(v11 + 16);
  v21 = *(v11 + 24);
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    v52 = sub_22C369AB0(v21);
    sub_22C36FC14(v52, v22 + 1);
    v11 = v53;
  }

  *(v11 + 16) = v23;
  *(v11 + 8 * v22 + 32) = v20;
  sub_22C36A83C();
  v24 = swift_allocObject();
  *(v24 + 16) = 0x203E2D2029;
  *(v24 + 24) = 0xE500000000000000;
  v25 = *(v11 + 24);
  v26 = v22 + 2;
  if ((v22 + 2) > (v25 >> 1))
  {
    v54 = sub_22C369AB0(v25);
    sub_22C36FC14(v54, v22 + 2);
    v11 = v55;
  }

  *(v11 + 16) = v26;
  *(v11 + 8 * v23 + 32) = v24;
  v27 = *(v11 + 24);
  if ((v22 + 3) > (v27 >> 1))
  {
    v56 = sub_22C369AB0(v27);
    sub_22C36FC14(v56, v22 + 3);
    v11 = v57;
  }

  *(v11 + 16) = v22 + 3;
  *(v11 + 8 * v26 + 32) = v3;
  sub_22C36A83C();
  v28 = swift_allocObject();
  *(v28 + 16) = 58;
  *(v28 + 24) = 0xE100000000000000;
  v29 = *(v11 + 24);

  if ((v22 + 4) > (v29 >> 1))
  {
    sub_22C372934();
  }

  v30 = sub_22C372170();

  sub_22C369AEC();
  v31 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v31 + 16) = v32;
  *(v8 + 32) = v31 | 0x6000000000000000;
  sub_22C36A83C();
  v33 = swift_allocObject();
  *(v33 + 16) = 2236962;
  *(v33 + 24) = 0xE300000000000000;
  sub_22C591324();
  v35 = v34;
  v37 = *(v34 + 16);
  v36 = *(v34 + 24);
  v38 = v36 >> 1;
  v39 = v37 + 1;
  if (v36 >> 1 <= v37)
  {
    v58 = sub_22C369AB0(v36);
    sub_22C36FC14(v58, v37 + 1);
    v35 = v59;
    v36 = *(v59 + 24);
    v38 = v36 >> 1;
  }

  *(v35 + 16) = v39;
  *(v35 + 8 * v37 + 32) = v33;
  if (v38 < (v37 + 2))
  {
    v60 = sub_22C369AB0(v36);
    sub_22C36FC14(v60, v37 + 2);
    v35 = v61;
  }

  *(v35 + 16) = v37 + 2;
  *(v35 + 8 * v39 + 32) = v1;
  sub_22C36A83C();
  v40 = swift_allocObject();
  *(v40 + 16) = 2236962;
  *(v40 + 24) = 0xE300000000000000;
  v41 = *(v35 + 24);

  if ((v37 + 3) > (v41 >> 1))
  {
    sub_22C372934();
  }

  v42 = sub_22C372170();

  sub_22C369AEC();
  v43 = swift_allocObject();
  sub_22C369AEC();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v43 + 16) = v44;
  sub_22C36D2A8();
  v45 = swift_allocObject();
  *(v45 + 16) = 1;
  *(v45 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v46 = swift_allocObject();
  *(v46 + 16) = v43 | 0x6000000000000000;
  *(v45 + 32) = v46;
  *(v8 + 40) = v45 | 0xA000000000000000;
  sub_22C36CC48();
}

void sub_22C5791C0()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C908D6C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = sub_22C9099FC();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  (*(v6 + 16))(v10, v1, v4);
  v18 = sub_22C36EBF0();
  if (v19(v18) != *MEMORY[0x277D72148])
  {
    v28 = sub_22C36EBF0();
    v29(v28);
LABEL_11:
    v27 = 1;
    goto LABEL_12;
  }

  v20 = sub_22C36EBF0();
  v21(v20);
  v22 = *(v13 + 32);
  v22(v17, v10, v11);
  if (sub_22C9099DC() == 0xD00000000000001CLL && 0x800000022C932110 == v23)
  {

    goto LABEL_10;
  }

  v25 = sub_22C90B4FC();

  if (v25)
  {
LABEL_10:
    (*(v13 + 8))(v17, v11);
    goto LABEL_11;
  }

  v26 = sub_22C36BA00();
  (v22)(v26);
  v27 = 0;
LABEL_12:
  sub_22C36C640(v3, v27, 1, v11);
  sub_22C36CC48();
}

uint64_t sub_22C5793F8(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v18, v15, "PromptToolsHelper.loadToolsOverride", v13, v14, 2u);
    MEMORY[0x2318B9880](v14, -1, -1);
  }

  (*(v4 + 8))(v6, v20);
  return (*(v8 + 8))(v10, v7);
}

void sub_22C5796E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v48 = a7;
  v46 = a3;
  *&v47 = a5;
  v45 = a4;
  v40 = a1;
  v10 = type metadata accessor for PromptToolsHelper.RenderableParameter(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9063DC();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C90981C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v39 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  v38 = *(v16 + 16);
  v38(&v37 - v19, a2, v15);
  v21 = *(v11 + 28);
  v49 = a2;
  v22 = (a2 + v21);
  if (v22[1])
  {
    v23 = *v22;
    v24 = v22[1];
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = *(a9 + 24);

  v25(&v50, v20, v23, v24, v45, v47, v48, a9);

  (*(v16 + 8))(v20, v15);
  if (v53)
  {
    v26 = v42;
    sub_22C903F7C();
    v27 = v41;
    sub_22C56517C(v49, v41);
    v28 = sub_22C9063CC();
    v29 = sub_22C90AADC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v50 = v31;
      *v30 = 136315138;
      v32 = sub_22C9097DC();
      v34 = v33;
      sub_22C5651E0(v27);
      v35 = sub_22C36F9F4(v32, v34, &v50);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_22C366000, v28, v29, "Failed to get representation for parameter %s", v30, 0xCu);
      sub_22C36FF94(v31);
      MEMORY[0x2318B9880](v31, -1, -1);
      MEMORY[0x2318B9880](v30, -1, -1);
    }

    else
    {

      sub_22C5651E0(v27);
    }

    (*(v43 + 8))(v26, v44);
  }

  else
  {
    v47 = v51;
    v48 = v50;
    v36 = v52;
    v38(v39, v49, v15);
    v51 = v47;
    v50 = v48;
    v52 = v36;
    sub_22C7C6C34();
  }
}

uint64_t sub_22C579AC4()
{
  v0 = sub_22C90952C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  sub_22C9090AC();
  sub_22C90994C();
  v7 = sub_22C90950C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_22C579BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t *a6@<X8>, uint64_t a7@<X2>)
{
  v59 = a6;
  v14 = sub_22C3A5908(&qword_27D9BC0C0, &unk_22C911FA0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v57 - v15;
  sub_22C9097DC();
  sub_22C605600(a7, v16);

  v17 = sub_22C9097DC();
  v19 = sub_22C6054B8(v17, v18, a3);
  v21 = v20;

  v22 = *(a5 + 40);
  v57[1] = a2;
  v58 = a4;
  v23 = v22(a1, v16, v19, v21, a4, a5);

  result = sub_22C36DD28(v16, &qword_27D9BC0C0, &unk_22C911FA0);
  v25 = 0xF000000000000007;
  if ((~v23 & 0xF000000000000007) == 0)
  {
    goto LABEL_5;
  }

  v60 = MEMORY[0x277D84F90];
  sub_22C496A94();
  if (!v7)
  {
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0xE000000000000000;
      sub_22C591324();
      v31 = v30;
      v32 = *(v30 + 16);
      if (v32 >= *(v30 + 24) >> 1)
      {
        sub_22C591324();
        v31 = v52;
      }

      *(v31 + 16) = v32 + 1;
      *(v31 + 8 * v32 + 32) = v29;
      v33 = (*(a5 + 32))(a1, v58, a5);
      v35 = v34;
      v36 = swift_allocObject();
      *(v36 + 16) = v33;
      *(v36 + 24) = v35;
      v38 = *(v31 + 16);
      v37 = *(v31 + 24);

      if (v38 >= v37 >> 1)
      {
        sub_22C591324();
        v31 = v53;
      }

      *(v31 + 16) = v38 + 1;
      *(v31 + 8 * v38 + 32) = v36;

      v39 = swift_allocObject();
      *(v39 + 16) = 8250;
      *(v39 + 24) = 0xE200000000000000;
      v40 = *(v31 + 16);
      v41 = *(v31 + 24) >> 1;
      v42 = v40 + 1;
      if (v41 <= v40)
      {
        sub_22C591324();
        v31 = v54;
        v41 = *(v54 + 24) >> 1;
      }

      *(v31 + 16) = v42;
      *(v31 + 8 * v40 + 32) = v39;
      v43 = v40 + 2;
      if (v41 < (v40 + 2))
      {
        sub_22C591324();
        v31 = v55;
      }

      *(v31 + 16) = v43;
      *(v31 + 8 * v42 + 32) = v23;
      v44 = swift_allocObject();
      *(v44 + 16) = 0;
      *(v44 + 24) = 0xE000000000000000;
      v45 = *(v31 + 24);
      v46 = v40 + 3;

      if ((v40 + 3) > (v45 >> 1))
      {
        sub_22C591324();
        v31 = v56;
      }

      v28 = v59;
      *(v31 + 16) = v46;
      *(v31 + 8 * v43 + 32) = v44;
      v47 = sub_22C3DB9B0(v31);
      sub_22C4546F8(v23);

      v48 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v49 = swift_allocObject();
      *(v49 + 16) = v47;
      *(v48 + 16) = v49;
      v50 = v48 | 0x6000000000000000;
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
      *(v51 + 24) = 1;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      result = swift_allocObject();
      *(result + 16) = v50;
      *(v51 + 32) = result;
      v25 = v51 | 0xA000000000000000;
      goto LABEL_17;
    }

    result = sub_22C4546F8(v23);
    v25 = 0xF000000000000007;
LABEL_5:
    v28 = v59;
LABEL_17:
    *v28 = v25;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C57A098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PromptToolsHelper.RenderableParameter(uint64_t a1)
{
  result = qword_27D9BDEA8;
  if (!qword_27D9BDEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C57A1BC(uint64_t a1)
{
  sub_22C90981C();
  if (v1 <= 0x3F)
  {
    sub_22C436620();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C57A24C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v34 = MEMORY[0x277D84F90];
    v33 = *(a1 + 16);
    sub_22C3B628C(0, v3, 0);
    v7 = sub_22C57CF00(a1);
    v10 = v7;
    v11 = v33;
    v12 = 0;
    v13 = a1 + 56;
    v14 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v14 = a2;
    }

    v15 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v15 = 11;
    }

    v16 = v15 | (v14 << 16);
    v32 = v16;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(a1 + 32))
      {
        v17 = v10 >> 6;
        if ((*(v13 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_28;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_29;
        }

        v18 = *(*(a1 + 48) + v10);
        v20 = *(v34 + 16);
        v19 = *(v34 + 24);
        if (v20 >= v19 >> 1)
        {
          v31 = v8;
          v30 = v9;
          sub_22C3B628C(v19 > 1, v20 + 1, 1);
          v9 = v30;
          v8 = v31;
          v16 = v32;
          v13 = a1 + 56;
          v11 = v33;
        }

        *(v34 + 16) = v20 + 1;
        v21 = v34 + 24 * v20;
        *(v21 + 32) = 15;
        *(v21 + 40) = v16;
        *(v21 + 48) = v18;
        if (v9)
        {
          goto LABEL_33;
        }

        v22 = 1 << *(a1 + 32);
        if (v10 >= v22)
        {
          goto LABEL_30;
        }

        v23 = *(v13 + 8 * v17);
        if ((v23 & (1 << v10)) == 0)
        {
          goto LABEL_31;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_32;
        }

        v24 = v23 & (-2 << (v10 & 0x3F));
        if (v24)
        {
          v22 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = v17 << 6;
          v26 = v17 + 1;
          v27 = (a1 + 64 + 8 * v17);
          while (v26 < (v22 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              sub_22C3A5038(v10, v8, 0);
              v16 = v32;
              v13 = a1 + 56;
              v11 = v33;
              v22 = __clz(__rbit64(v28)) + v25;
              goto LABEL_23;
            }
          }

          sub_22C3A5038(v10, v8, 0);
          v16 = v32;
          v13 = a1 + 56;
          v11 = v33;
        }

LABEL_23:
        if (++v12 == v11)
        {
          goto LABEL_26;
        }

        v9 = 0;
        v8 = *(a1 + 36);
        v10 = v22;
        if (v22 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
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
    __break(1u);
  }

  else
  {
LABEL_26:
  }
}

uint64_t sub_22C57A51C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{

  sub_22C57A24C(MEMORY[0x277D84FA0], a1, a2);
  v9 = sub_22C3AD898(v8);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v9;
  type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  swift_storeEnumTagMultiPayload();
  result = sub_22C383128();
  *(a4 + v11) = a3;
  return result;
}

uint64_t sub_22C57A5D4(char a1)
{
  sub_22C37B5C8();
  MEMORY[0x2318B8B10](a1 & 1);
  return sub_22C90B66C();
}

void sub_22C57A64C()
{
  sub_22C36986C();
  sub_22C57ADA4();
  if (v2)
  {
    sub_22C383128();
    v4 = *(v1 + v3);
    v5 = *(v0 + v3);

    sub_22C472D84(v5, v4);
  }

  else
  {

    sub_22C57A6B4();
  }
}

void sub_22C57A6B4()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for SegmentedPrompt.DeferredReference(0);
  v7 = sub_22C369914(v6);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v54 = v8 - v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA58();
  v55 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA58();
  v56 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v60 = v18 - v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v57 = v21;
  sub_22C369930();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v53 - v24);
  MEMORY[0x28223BE20](v23);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v26);
  v27 = sub_22C3A5908(&qword_27D9BDF78, &unk_22C91CAA0);
  sub_22C369914(v27);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  sub_22C389048();
  v30 = (v0 + v29);
  sub_22C57D794();
  v58 = v5;
  sub_22C57D6F0();
  v59 = v3;
  sub_22C370018();
  sub_22C57D6F0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C373558();
      sub_22C37BD98();
      sub_22C57D6F0();
      v32 = *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48);
      v33 = *(v1 + v32);
      v34 = *(v1 + v32 + 8);
      v35 = *(v1 + v32 + 16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = v30 + v32;
        v37 = *(v30 + v32);
        v38 = *(v36 + 1);
        v39 = *(v36 + 2);
        v40 = v55;
        sub_22C57D698();
        v41 = v54;
        sub_22C57D698();
        if (sub_22C57B8F4(v40, v41))
        {
          v42 = v33 == v37 && v34 == v38;
          if (v42 || (sub_22C90B4FC() & 1) != 0)
          {
            sub_22C5DBAE4();
            if (v43)
            {

              sub_22C57D7AC();
              sub_22C57D644();
LABEL_36:
              sub_22C57D644();
LABEL_37:
              sub_22C57D76C();
              goto LABEL_38;
            }
          }

          sub_22C574230(v33, v34, v35, v37, v38, v39);
        }

        else
        {

          sub_22C57B324(v40);
        }

LABEL_35:
        sub_22C57D644();
        goto LABEL_36;
      }

      sub_22C36ABF0();
      sub_22C57D644();
    }

    else
    {
      sub_22C373558();
      sub_22C57D6F0();
      v46 = *v25;
      v45 = v25[1];
      v47 = v25[2];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v48 = *v30;
        v49 = v30[1];
        v50 = v30[2];
        v51 = v46 == v48 && v45 == v49;
        if (v51 || (sub_22C90B4FC()) && (sub_22C5DBAE4(), (v52))
        {
        }

        else
        {
          sub_22C574230(v46, v45, v47, v48, v49, v50);
        }

        goto LABEL_37;
      }
    }
  }

  else
  {
    v44 = v56;
    sub_22C373558();
    sub_22C57D6F0();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C57D698();
      sub_22C57D698();
      if (sub_22C57B8F4(v16, v44))
      {
        sub_22C57D7AC();
      }

      else
      {
        sub_22C57B324(v16);
        sub_22C36BF30();
      }

      goto LABEL_35;
    }

    sub_22C36ABF0();
    sub_22C57D644();
  }

  sub_22C373558();
  sub_22C57D6F0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
  }

  sub_22C57D644();
  sub_22C373558();
  sub_22C57D6F0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
  }

  sub_22C57D644();
  sub_22C36DD28(v0, &qword_27D9BDF78, &unk_22C91CAA0);
LABEL_38:
  sub_22C36CC48();
}

void sub_22C57ADA4()
{
  sub_22C36BA7C();
  v2 = type metadata accessor for SegmentedPrompt.DeferredReference(0);
  v3 = sub_22C369914(v2);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v34 = v4 - v5;
  sub_22C369930();
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  sub_22C3705C8();
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = sub_22C3A5908(&qword_27D9BDF78, &unk_22C91CAA0);
  sub_22C369914(v17);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C389048();
  v20 = (v0 + v19);
  sub_22C57D794();
  sub_22C57D6F0();
  sub_22C57D6F0();
  sub_22C36BAFC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_22C373558();
      sub_22C57D6F0();
      v31 = *v12;
      v30 = v12[1];
      sub_22C370018();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v32 = v31 == *v20 && v30 == v20[1];
        if (v32 || (sub_22C90B4FC() & 1) != 0)
        {
          sub_22C5DBAE4();

LABEL_28:
          sub_22C57D76C();
          goto LABEL_29;
        }

LABEL_27:

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    sub_22C373558();
    sub_22C37BD98();
    sub_22C57D6F0();
    v22 = *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48);
    v24 = *(v1 + v22);
    v23 = *(v1 + v22 + 8);
    sub_22C370018();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *(v20 + v22);
      v25 = *(v20 + v22 + 8);
      sub_22C377F48();
      v27 = v34;
      sub_22C57D698();
      v28 = sub_22C57B8F4(v1, v27);
      sub_22C36ABF0();
      sub_22C57D644();
      if (v28)
      {
        v29 = v24 == v26 && v23 == v25;
        if (v29 || (sub_22C36FC74(), (sub_22C90B4FC() & 1) != 0))
        {
          sub_22C5DBAE4();

          sub_22C36ABF0();
          sub_22C57D644();
        }

        else
        {

          sub_22C36ABF0();
          sub_22C57D644();
        }

        goto LABEL_28;
      }

      sub_22C36ABF0();
      sub_22C57D644();

      goto LABEL_27;
    }

    sub_22C36ABF0();
  }

  else
  {
    sub_22C373558();
    sub_22C57D6F0();
    sub_22C370018();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C377F48();
      sub_22C57D698();
      sub_22C57B8F4(v16, v8);
      sub_22C36BF30();
      sub_22C57D644();
      sub_22C57D644();
      sub_22C57D76C();
      goto LABEL_29;
    }

    sub_22C36ABF0();
  }

  sub_22C57D644();
LABEL_23:
  sub_22C36DD28(v0, &qword_27D9BDF78, &unk_22C91CAA0);
LABEL_29:
  sub_22C36CC48();
}

uint64_t sub_22C57B1DC()
{
  sub_22C36986C();
  sub_22C57ADA4();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  sub_22C383128();
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);

  return sub_22C46D658(v4, v5);
}

void sub_22C57B230()
{
  sub_22C57BD0C();
  sub_22C383128();

  sub_22C470F4C();
}

uint64_t sub_22C57B270()
{
  sub_22C37B5C8();
  sub_22C57BD0C();
  sub_22C383128();
  sub_22C470F4C();
  return sub_22C90B66C();
}

uint64_t sub_22C57B2D4(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C57BD0C();
  sub_22C470F4C();
  return sub_22C90B66C();
}

uint64_t sub_22C57BD0C()
{
  v0 = sub_22C3704C4();
  v1 = type metadata accessor for SegmentedPrompt.DeferredReference(v0);
  v2 = sub_22C369914(v1);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C373558();
  sub_22C57D6F0();
  sub_22C372164();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22C377F48();
    sub_22C57D698();
    MEMORY[0x2318B8B10](0);
    sub_22C57C528();
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
    sub_22C377F48();
    sub_22C57D698();
    MEMORY[0x2318B8B10](1);
    sub_22C57C528();
    sub_22C37BD98();
    sub_22C909FFC();

LABEL_5:
    sub_22C36ABF0();
    return sub_22C57D644();
  }

  MEMORY[0x2318B8B10](2);
  sub_22C36BAFC();
  sub_22C909FFC();
}

uint64_t sub_22C57C23C()
{
  sub_22C37B5C8();
  sub_22C4706F0();
  sub_22C7EDAF8(v11, *(v0 + 8), v1, v2, v3, v4, v5, v6, v10, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10]);
  type metadata accessor for SegmentedPrompt.DeferredReference.TypeIdentifierReference(0);
  sub_22C90963C();
  sub_22C372954();
  sub_22C57D554(v7, v8, MEMORY[0x277D72E20]);
  sub_22C909F8C();
  return sub_22C90B66C();
}

uint64_t sub_22C57C310()
{
  sub_22C46D6C8();
  if (v0)
  {
    v1 = sub_22C36BA00();

    return sub_22C472AD8(v1, v2);
  }

  else
  {
    v4 = sub_22C37335C();

    return sub_22C4730A0(v4, v5);
  }
}

void sub_22C57C388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C46D6C8();
  if (v28)
  {

    sub_22C46D710(a2, a4, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

void sub_22C57C3E0(uint64_t a1, uint64_t a2)
{
  sub_22C4720DC(a1, a2);

  sub_22C4706F0();
}

uint64_t sub_22C57C420()
{
  sub_22C36986C();
  sub_22C37B5C8();
  sub_22C4720DC(v2, v0);
  sub_22C4706F0();
  return sub_22C90B66C();
}

uint64_t sub_22C57C4E0(uint64_t a1)
{
  v2 = *v1;
  sub_22C90B62C();
  sub_22C57C3E0(v4, v2);
  return sub_22C90B66C();
}

uint64_t sub_22C57C7A4(uint64_t (*a1)(_BYTE *))
{
  sub_22C37B5C8();
  a1(v3);
  return sub_22C90B66C();
}

uint64_t sub_22C57C7E8()
{
  sub_22C37B5C8();
  sub_22C4706F0();
  return sub_22C90B66C();
}

uint64_t sub_22C57C884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_22C90B62C();
  a4(v6);
  return sub_22C90B66C();
}

uint64_t sub_22C57C914(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C4706F0();
  return sub_22C90B66C();
}

uint64_t sub_22C57C958()
{
  sub_22C36986C();
  sub_22C3A5908(&qword_27D9BDED8, &qword_22C91C4B8);
  v2 = (type metadata accessor for SegmentedPrompt.Segment(0) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C90F800;
  v5 = (v4 + v3);

  sub_22C57A24C(MEMORY[0x277D84FA0], v1, v0);
  v7 = sub_22C3AD898(v6);
  *v5 = v1;
  v5[1] = v0;
  v5[2] = v7;
  type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  swift_storeEnumTagMultiPayload();
  *(v5 + v2[7]) = MEMORY[0x277D84F90];
  return v4;
}

uint64_t sub_22C57CA94(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for SegmentedPrompt.Segment(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v9 = (v8 - v7);

  sub_22C57A24C(MEMORY[0x277D84FA0], a1, a2);
  v11 = sub_22C3AD898(v10);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = v11;
  type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  swift_storeEnumTagMultiPayload();
  *(v9 + *(v6 + 28)) = MEMORY[0x277D84F90];

  sub_22C3D0F98();
  v12 = *(*v2 + 16);
  sub_22C3D115C(v12);
  v13 = *v2;
  *(*v2 + 16) = v12 + 1;
  result = sub_22C57D698();
  *v2 = v13;
  return result;
}

uint64_t sub_22C57CC48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C57C958();
  *a1 = result;
  return result;
}

void sub_22C57CC78(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_22C3A5908(&qword_27D9BDED8, &qword_22C91C4B8);
  type metadata accessor for SegmentedPrompt.Segment(0);
  v5 = swift_allocObject();
  sub_22C48010C(v5, 1);
  v7 = v6;
  v8 = sub_22C799FA0(0);
  sub_22C57A51C(v3, v4, v8, v7);
  nullsub_1();
  *a2 = v9;
}

unint64_t sub_22C57CD64()
{
  result = qword_27D9BDEB8;
  if (!qword_27D9BDEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDEB8);
  }

  return result;
}

unint64_t sub_22C57CDBC()
{
  result = qword_27D9BDEC0;
  if (!qword_27D9BDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDEC0);
  }

  return result;
}

unint64_t sub_22C57CE14()
{
  result = qword_27D9BDEC8;
  if (!qword_27D9BDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDEC8);
  }

  return result;
}

unint64_t sub_22C57CE6C()
{
  result = qword_27D9BDED0;
  if (!qword_27D9BDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDED0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SegmentedPrompt.SegmentTransformation(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_22C57D070(uint64_t a1)
{
  if (!qword_27D9BDEF0)
  {
    type metadata accessor for SegmentedPrompt.DeferredReference(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BDEF0);
    }
  }
}

uint64_t sub_22C57D10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t a6)
{
  result = a4(319, a2, a3);
  if (v8 <= 0x3F)
  {
    result = a5(319);
    if (v9 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22C57D198()
{
  if (!qword_27D9BDF08)
  {
    v0 = type metadata accessor for SegmentedPrompt.DeferredReference.TypeIdentifierReference(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BDF08);
    }
  }
}

uint64_t sub_22C57D200(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22C57D240(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_22C57D2B4(uint64_t a1)
{
  sub_22C57D348(319);
  if (v1 <= 0x3F)
  {
    sub_22C90963C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C57D348(uint64_t a1)
{
  if (!qword_27D9BDF20)
  {
    sub_22C90430C();
    sub_22C57D554(&qword_27D9BC810, MEMORY[0x277D85578], MEMORY[0x277D85588]);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BDF20);
    }
  }
}

void sub_22C57D40C(uint64_t a1)
{
  type metadata accessor for SegmentedPrompt.SegmentPayload(319);
  if (v1 <= 0x3F)
  {
    sub_22C57D490();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C57D490()
{
  if (!qword_27D9BDF38)
  {
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BDF38);
    }
  }
}

unint64_t sub_22C57D500()
{
  result = qword_27D9BDF40;
  if (!qword_27D9BDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDF40);
  }

  return result;
}

uint64_t sub_22C57D554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22C57D59C()
{
  result = qword_27D9BDF58;
  if (!qword_27D9BDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDF58);
  }

  return result;
}

unint64_t sub_22C57D5F0()
{
  result = qword_27D9BDF70;
  if (!qword_27D9BDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDF70);
  }

  return result;
}

uint64_t sub_22C57D644()
{
  v1 = sub_22C3704C4();
  v2(v1);
  sub_22C36985C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C57D698()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C57D6F0()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C57D76C()
{

  return sub_22C57D644();
}

uint64_t sub_22C57D7C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v169 = a2;
  v166 = a1;
  v141 = sub_22C9063DC();
  sub_22C369824();
  v140 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v139 = &v134 - v9;
  v167 = sub_22C3A5908(&qword_27D9BDF90, &qword_22C91CAC0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v10);
  v163 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA58();
  v155 = v13;
  sub_22C369930();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v134 - v16;
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  v154 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA58();
  v170 = v20;
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA58();
  v23 = v22;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA58();
  v168 = v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA58();
  v143 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  v144 = &v134 - v29;
  v30 = sub_22C3A5908(&qword_27D9BDF98, &qword_22C91CAC8);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v134 - v31;
  v33 = sub_22C90952C();
  sub_22C369824();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  sub_22C369838();
  v39 = v38 - v37;
  v40 = sub_22C37EF10();
  v41(v40);
  if ((*(v35 + 88))(v39, v33) != *MEMORY[0x277D72D28])
  {
    (*(v35 + 8))(v39, v33);
LABEL_12:
    v55 = sub_22C909A7C();
    v56 = a3;
    return sub_22C36C640(v56, 1, 1, v55);
  }

  (*(v35 + 96))(v39, v33);
  v42 = *(*v39 + 16);
  v43 = *(*v39 + 24);
  v44 = *(*v39 + 40);
  v138 = *(*v39 + 32);
  v142 = v44;
  v45 = v42 == 0xD00000000000001BLL && 0x800000022C932350 == v43;
  if (!v45 && (sub_22C90B4FC() & 1) == 0)
  {

    goto LABEL_12;
  }

  v137 = a3;

  v46 = sub_22C909A6C();
  sub_22C36C640(v32, 1, 1, v46);

  v47 = sub_22C90811C();

  sub_22C36DD28(v32, &qword_27D9BDF98, &qword_22C91CAC8);
  v48 = v47 + 64;
  v49 = 1 << *(v47 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v47 + 64);
  if (v51)
  {
    v52 = 0;
    v53 = __clz(__rbit64(v51));
    v54 = (v51 - 1) & v51;
    v153 = (v49 + 63) >> 6;
    goto LABEL_18;
  }

  v58 = 0;
  v59 = (v49 + 63) >> 6;
  do
  {
    v52 = v58 + 1;
    if (v58 + 1 >= v59)
    {

      sub_22C903F7C();
      v127 = v142;

      v128 = sub_22C9063CC();
      v129 = sub_22C90AADC();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v171 = v131;
        *v130 = 136315138;
        v132 = sub_22C36F9F4(v138, v127, &v171);

        *(v130 + 4) = v132;
        _os_log_impl(&dword_22C366000, v128, v129, "Found no type schemas for kind %s", v130, 0xCu);
        sub_22C36FF94(v131);
        sub_22C3699EC();
        sub_22C3699EC();
      }

      else
      {
      }

      (*(v140 + 8))(v8, v141);
      v133 = v137;
      v55 = sub_22C909A7C();
      v56 = v133;
      return sub_22C36C640(v56, 1, 1, v55);
    }

    v60 = *(v47 + 8 * v58 + 72);
    v51 += 64;
    ++v58;
  }

  while (!v60);
  v153 = v59;
  v54 = (v60 - 1) & v60;
  v53 = __clz(__rbit64(v60)) + v51;
LABEL_18:
  v61 = *(v47 + 48);
  sub_22C9099FC();
  sub_22C369824();
  v63 = v62;
  v152 = *(v64 + 72);
  v66 = v64 + 16;
  v65 = *(v64 + 16);
  v166 = v67;
  v151 = v65;
  v150 = v66;
  (v65)(v23, v61 + v152 * v53);
  v68 = *(v47 + 56);
  sub_22C909A7C();
  sub_22C369824();
  v70 = v69;
  v149 = *(v71 + 72);
  v72 = *(v69 + 16);
  v73 = v23 + *(v167 + 48);
  v169 = v74;
  v148 = v69 + 16;
  v147 = v72;
  (v72)(v73, v68 + v149 * v53);
  sub_22C57EAE4(v23, v168);
  v135 = v63;
  v165 = (v63 + 8);
  v136 = v70;
  v164 = (v70 + 8);

  v75 = v163;
  v145 = v47 + 64;
  v146 = v47;
  while (2)
  {
    if (v54)
    {
LABEL_24:
      v77 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v78 = v77 | (v52 << 6);
      v79 = v154;
      v80 = v166;
      v151(v154, *(v47 + 48) + v78 * v152, v166);
      v81 = *(v47 + 56) + v78 * v149;
      v82 = v167;
      v147(v79 + *(v167 + 48), v81, v169);
      sub_22C57EAE4(v79, v170);
      v83 = v168;
      sub_22C57EB54(v168, v17);
      v159 = *(v82 + 48);
      v84 = v82;
      v162 = sub_22C9099EC();
      v86 = v85;
      v87 = *v165;
      (*v165)(v17, v80);
      v88 = v83;
      v89 = v155;
      sub_22C57EB54(v88, v155);
      v158 = *(v84 + 48);
      v161 = sub_22C9099DC();
      v91 = v90;
      v87(v89, v80);
      v171 = v162;
      v172 = v86;

      MEMORY[0x2318B7850](v161, v91);

      v161 = v172;
      v162 = v171;
      v92 = *v164;
      v160 = v92;
      v93 = v169;
      v92((v89 + v158), v169);
      v92(&v17[v159], v93);
      sub_22C57EB54(v170, v17);
      v94 = v167;
      v159 = *(v167 + 48);
      v157 = sub_22C9099EC();
      v96 = v95;
      v97 = v166;
      v87(v17, v166);
      sub_22C57EB54(v168, v89);
      v158 = *(v94 + 48);
      v156 = sub_22C9099DC();
      v99 = v98;
      v87(v89, v97);
      v171 = v157;
      v172 = v96;

      MEMORY[0x2318B7850](v156, v99);

      v101 = v171;
      v100 = v172;
      v102 = (v89 + v158);
      v104 = v160;
      v103 = v161;
      v105 = v169;
      v160(v102, v169);
      v104(&v17[v159], v105);
      if (v162 == v101 && v103 == v100)
      {
      }

      else
      {
        v107 = sub_22C90B4FC();

        if (v107)
        {
          v108 = v168;
          sub_22C36DD28(v168, &qword_27D9BDF90, &qword_22C91CAC0);
          result = sub_22C57EAE4(v170, v108);
LABEL_32:
          v75 = v163;
          v47 = v146;
          v48 = v145;
          continue;
        }
      }

      result = sub_22C36DD28(v170, &qword_27D9BDF90, &qword_22C91CAC0);
      goto LABEL_32;
    }

    break;
  }

  while (1)
  {
    v76 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
      return result;
    }

    if (v76 >= v153)
    {
      break;
    }

    v54 = *(v48 + 8 * v76);
    ++v52;
    if (v54)
    {
      v52 = v76;
      goto LABEL_24;
    }
  }

  v109 = v143;
  sub_22C57EAE4(v168, v143);
  v110 = v144;
  sub_22C57EAE4(v109, v144);
  v111 = *(v47 + 16);

  if (v111 < 2)
  {

    v117 = v137;
  }

  else
  {
    v112 = v139;
    sub_22C903F7C();
    sub_22C57EB54(v110, v75);
    v113 = v142;

    v114 = sub_22C9063CC();
    v115 = sub_22C90AADC();

    v116 = os_log_type_enabled(v114, v115);
    v117 = v137;
    if (v116)
    {
      v118 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v171 = v170;
      *v118 = 136315394;
      v119 = sub_22C36F9F4(v138, v113, &v171);

      *(v118 + 4) = v119;
      *(v118 + 12) = 2080;
      sub_22C57EB54(v75, v17);
      v120 = *(v167 + 48);
      v121 = v155;
      (*(v135 + 32))(v155, v17, v166);
      (*(v136 + 32))(v121 + v120, &v17[v120], v169);
      v122 = sub_22C90A1AC();
      v124 = v123;
      sub_22C36DD28(v163, &qword_27D9BDF90, &qword_22C91CAC0);
      v125 = sub_22C36F9F4(v122, v124, &v171);

      *(v118 + 14) = v125;
      _os_log_impl(&dword_22C366000, v114, v115, "Multiple type schema matches for kind %s. We have no way to tell them apart, so will arbitrarily pick to render %s!", v118, 0x16u);
      swift_arrayDestroy();
      sub_22C3699EC();
      sub_22C3699EC();
    }

    else
    {

      sub_22C36DD28(v75, &qword_27D9BDF90, &qword_22C91CAC0);
    }

    (*(v140 + 8))(v112, v141);
  }

  sub_22C57EAE4(v110, v17);
  v126 = v169;
  (*(v136 + 32))(v117, &v17[*(v167 + 48)], v169);
  sub_22C36C640(v117, 0, 1, v126);
  return (*v165)(v17, v166);
}

uint64_t sub_22C57E564()
{
  v1 = v0;
  v2 = sub_22C909ABC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C909A9C();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  v16 = sub_22C909A7C();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v22 = v21 - v20;
  (*(v18 + 16))(v21 - v20, v1, v16);
  v23 = (*(v18 + 88))(v22, v16);
  if (v23 == *MEMORY[0x277D733D0])
  {
    (*(v18 + 96))(v22, v16);
    (*(v11 + 32))(v15, v22, v9);
    sub_22C909A8C();
    v24 = sub_22C36D384();
    return v25(v24);
  }

  else if (v23 == *MEMORY[0x277D733C8])
  {
    (*(v18 + 96))(v22, v16);
    (*(v4 + 32))(v8, v22, v2);
    sub_22C909AAC();
    return (*(v4 + 8))(v8, v2);
  }

  else
  {
    result = sub_22C90B4EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22C57E808()
{
  v1 = v0;
  v2 = sub_22C90998C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C9095CC();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  v16 = sub_22C90947C();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v22 = v21 - v20;
  (*(v18 + 16))(v21 - v20, v1, v16);
  v23 = sub_22C36D384();
  v25 = v24(v23);
  if (v25 != *MEMORY[0x277D72B88])
  {
    if (v25 == *MEMORY[0x277D72B68])
    {
      v29 = sub_22C36D384();
      v30(v29);
      v31 = (*(v11 + 32))(v15, v22, v9);
      v28 = MEMORY[0x2318B6A80](v31);
      (*(v11 + 8))(v15, v9);
      return v28;
    }

    if (v25 == *MEMORY[0x277D72B48])
    {
      v32 = sub_22C36D384();
      v33(v32);
      (*(v4 + 32))(v8, v22, v2);
      v28 = sub_22C90995C();
      (*(v4 + 8))(v8, v2);
      return v28;
    }
  }

  v26 = sub_22C36D384();
  v27(v26);
  return MEMORY[0x277D84F90];
}

uint64_t sub_22C57EAE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BDF90, &qword_22C91CAC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C57EB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BDF90, &qword_22C91CAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C57EBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C9096DC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, a1, v4);
  v11 = sub_22C37EF10();
  if (v12(v11) == *MEMORY[0x277D73010])
  {
    v13 = sub_22C37EF10();
    v14(v13);
    v15 = sub_22C9099FC();
    sub_22C36985C();
    (*(v16 + 32))(a2, v10, v15);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_22C37EF10();
    v21(v20);
    v19 = sub_22C9099FC();
    v17 = a2;
    v18 = 1;
  }

  return sub_22C36C640(v17, v18, 1, v19);
}

uint64_t sub_22C57ED3C()
{
  v1 = sub_22C908D6C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  v8 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v35 - v9;
  v10 = sub_22C908EAC();
  sub_22C369824();
  v37 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v36 = v14 - v13;
  v15 = sub_22C9036EC();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v21 = v20 - v19;
  (*(v17 + 16))(v20 - v19, v0, v15);
  v22 = (*(v17 + 88))(v21, v15);
  v23 = *MEMORY[0x277D1ECE8];
  (*(v17 + 8))(v21, v15);
  if (v22 == v23)
  {
    return 0;
  }

  v24 = v38;
  sub_22C9036BC();
  if (sub_22C370B74(v24, 1, v10) == 1)
  {
    sub_22C3770B0(v24, &qword_27D9BC1E8, &qword_22C9123B0);
    return 0;
  }

  v26 = *(v37 + 32);
  v35 = v10;
  v26(v36, v24, v10);
  result = sub_22C908DEC();
  v27 = 0;
  v28 = *(result + 16);
  v38 = (v3 + 16);
  v29 = *MEMORY[0x277D72188];
  v30 = *MEMORY[0x277D72178];
  v31 = (v3 + 8);
  while (1)
  {
    if (v28 == v27)
    {
      v27 = v28;
      goto LABEL_14;
    }

    v32 = result;
    (*(v3 + 16))(v7, result + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27, v1);
    v33 = (*(v3 + 88))(v7, v1);
    if (v33 == v29)
    {
      break;
    }

    if (v33 == v30)
    {
      goto LABEL_13;
    }

    (*v31)(v7, v1);
    ++v27;
    result = v32;
  }

  (*v31)(v7, v1);
LABEL_13:
  result = v32;
LABEL_14:
  v34 = *(result + 16);
  if (v27 == v34)
  {

    (*(v37 + 8))(v36, v35);
    return 1;
  }

  if (v27 >= v34)
  {
    __break(1u);
  }

  else
  {
    result = sub_22C4AF1C0();
    if ((result & 1) == 0)
    {

      (*(v37 + 8))(v36, v35);
      return 2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C57F13C()
{
  v1 = sub_22C908D6C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  sub_22C9099FC();
  sub_22C369824();
  v65 = v9;
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v68 = v11 - v10;
  v12 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  MEMORY[0x28223BE20](v12 - 8);
  v58 = &v53 - v13;
  v14 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v56 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v55 = &v53 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v57 = &v53 - v22;
  v23 = sub_22C9036EC();
  sub_22C369824();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v29 = v28 - v27;
  (*(v25 + 16))(v28 - v27, v0, v23);
  v30 = (*(v25 + 88))(v29, v23);
  v31 = *MEMORY[0x277D1ECE8];
  (*(v25 + 8))(v29, v23);
  if (v30 == v31)
  {
    return 1;
  }

  v33 = v58;
  sub_22C9036BC();
  v34 = sub_22C908EAC();
  if (sub_22C370B74(v33, 1, v34) == 1)
  {
    sub_22C3770B0(v33, &qword_27D9BC1E8, &qword_22C9123B0);
    v35 = v57;
    sub_22C36C640(v57, 1, 1, v66);
    goto LABEL_25;
  }

  v54 = v34;
  result = sub_22C908DEC();
  v37 = result;
  v38 = 0;
  v39 = *(result + 16);
  v67 = *MEMORY[0x277D72148];
  v61 = (v3 + 96);
  v62 = (v3 + 8);
  v40 = v65;
  v41 = v66;
  v64 = (v65 + 32);
  v65 = result;
  v59 = (v40 + 8);
  v60 = 0x800000022C932110;
  v63 = v3;
  while (v39 != v38)
  {
    sub_22C369FD4();
    (*(v3 + 16))(v7, v42 + v43 * v38, v1);
    v44 = (*(v3 + 88))(v7, v1);
    if (v44 == v67)
    {
      (*v61)(v7, v1);
      v45 = *v64;
      (*v64)(v68, v7, v41);
      if (sub_22C9099DC() == 0xD00000000000001CLL && v60 == v46)
      {
      }

      else
      {
        v48 = sub_22C90B4FC();

        if ((v48 & 1) == 0)
        {
          v41 = v66;
          v45(v21, v68, v66);
          sub_22C36C640(v21, 0, 1, v41);
          result = sub_22C3770B0(v21, &qword_27D9BDC50, &unk_22C91B470);
          v37 = v65;
          goto LABEL_19;
        }
      }

      v41 = v66;
      (*v59)(v68, v66);
      v37 = v65;
      v3 = v63;
    }

    else
    {
      (*v62)(v7, v1);
    }

    sub_22C36C640(v21, 1, 1, v41);
    result = sub_22C3770B0(v21, &qword_27D9BDC50, &unk_22C91B470);
    ++v38;
  }

  v38 = v39;
LABEL_19:
  v49 = *(v37 + 16);
  if (v38 == v49)
  {
    v50 = 1;
    v35 = v57;
    goto LABEL_24;
  }

  if (v38 >= v49)
  {
    __break(1u);
  }

  else
  {
    sub_22C369FD4();
    v51 = v55;
    sub_22C5791C0();
    v52 = v56;
    sub_22C57F7EC(v51, v56);
    result = sub_22C370B74(v52, 1, v41);
    if (result != 1)
    {
      v35 = v57;
      (*v64)(v57, v52, v41);
      sub_22C3770B0(v51, &qword_27D9BDC50, &unk_22C91B470);
      v50 = 0;
LABEL_24:
      v32 = 1;
      sub_22C36C640(v35, v50, 1, v41);

      (*(*(v54 - 8) + 8))(v58);
      if (sub_22C370B74(v35, 1, v41) != 1)
      {
LABEL_26:
        sub_22C3770B0(v35, &qword_27D9BDC50, &unk_22C91B470);
        return v32;
      }

LABEL_25:
      v32 = 0;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C57F7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ToolRenderingClass(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C57F93C()
{
  result = qword_27D9BDFA0;
  if (!qword_27D9BDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BDFA0);
  }

  return result;
}

uint64_t sub_22C57F990@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22C901FAC();
  sub_22C369824();
  v42 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v47 = sub_22C9089DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v46 = v11 - v10;
  v53 = sub_22C9079FC();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v52 = v16 - v15;
  v17 = sub_22C908A0C();
  sub_22C369824();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v48 = v22 - v21;
  v23 = sub_22C9087DC();
  v24 = *(v23 + 16);
  if (v24)
  {
    v40 = a2;
    v51 = v23 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v50 = *MEMORY[0x277D1E808];
    v54 = v19;
    v49 = (v19 + 8);
    v41 = (v13 + 32);
    v25 = (v42 + 8);
    v43 = (v13 + 8);
    v44 = v23;
    v26 = v46;
    a2 = v47;
    v27 = v48;
    v28 = v23;
    v45 = v17;
    while (v24 <= *(v28 + 16))
    {
      --v24;
      (*(v54 + 16))(v27, v51 + *(v54 + 72) * v24, v17);
      sub_22C9089EC();
      v29 = sub_22C369E80();
      if (v30(v29) == v50)
      {
        v31 = sub_22C369E80();
        v32(v31);
        (*v41)(v52, v26, v53);
        v33 = 0;
        v34 = *(sub_22C9079EC() + 16);
        while (v34 != v33)
        {
          sub_22C9081CC();
          sub_22C9068FC();
          v35 = sub_22C901F6C();
          (*v25)(v8, v3);
          ++v33;
          if (v35)
          {

            (*v43)(v52, v53);

            a2 = v40;
            v17 = v45;
            (*(v54 + 32))(v40, v48, v45);
            v38 = 0;
            return sub_22C36C640(a2, v38, 1, v17);
          }
        }

        (*v43)(v52, v53);
        v27 = v48;
        v17 = v45;
        (*v49)(v48, v45);
        v26 = v46;
        a2 = v47;
        v28 = v44;
        if (!v24)
        {
LABEL_12:

          v38 = 1;
          a2 = v40;
          return sub_22C36C640(a2, v38, 1, v17);
        }
      }

      else
      {
        (*v49)(v27, v17);
        v36 = sub_22C369E80();
        v37(v36);
        if (!v24)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  v38 = 1;
  return sub_22C36C640(a2, v38, 1, v17);
}

id sub_22C57FE4C(uint64_t a1, uint64_t a2)
{
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C580120();

  return sub_22C7FE43C(a1, a2, 0);
}

uint64_t sub_22C58001C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9089DC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  sub_22C9089EC();
  v10 = sub_22C9089AC();
  (*(v5 + 8))(v9, v3);
  v13 = a2;
  LOBYTE(a2) = sub_22C5EC13C(sub_22C4F5E4C, v12, v10);

  return a2 & 1;
}

unint64_t sub_22C580120()
{
  result = qword_27D9BDFA8;
  if (!qword_27D9BDFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9BDFA8);
  }

  return result;
}

uint64_t type metadata accessor for RouteRequestToSearch(uint64_t a1)
{
  result = qword_27D9BDFB0;
  if (!qword_27D9BDFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C5801D8(uint64_t a1)
{
  v63 = a1;
  sub_22C9063DC();
  sub_22C369824();
  v54 = v2;
  v55 = v1;
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v5 = v4 - v3;
  v6 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v53 - v7;
  v8 = sub_22C90700C();
  MEMORY[0x28223BE20](v8 - 8);
  sub_22C369838();
  sub_22C90654C();
  sub_22C369824();
  v57 = v10;
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v13 = (v12 - v11);
  v56 = sub_22C901FAC();
  MEMORY[0x28223BE20](v56);
  sub_22C369838();
  sub_22C9070DC();
  sub_22C369824();
  v61 = v15;
  v62 = v14;
  v16 = MEMORY[0x28223BE20](v14);
  v59 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  v20 = sub_22C90880C();
  sub_22C369824();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v26 = v25 - v24;
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  v27 = 0;
  if (v67 == 1)
  {
    sub_22C90878C();
    v28 = sub_22C9087DC();
    (*(v22 + 8))(v26, v20);
    v66 = v28;
    sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
    sub_22C3AC13C();
    v29 = sub_22C907E9C();

    sub_22C3A5C94(v29);
    v31 = v30;
    v33 = v32;

    if (v33)
    {
      sub_22C9087AC();
      sub_22C90882C();

      *v13 = v31;
      v13[1] = v33;
      v34 = *MEMORY[0x277D1DEF8];
      v35 = sub_22C906F2C();
      (*(*(v35 - 8) + 104))(v13, v34, v35);
      v36 = *MEMORY[0x277D1DAA8];
      v37 = v58;
      v57 = *(v57 + 104);
      (v57)(v13, v36, v58);
      sub_22C9070BC();
      v65 = 0;
      sub_22C90708C();
      sub_22C9087AC();
      sub_22C90882C();

      sub_22C3A5908(&qword_27D9BC0B8, &qword_22C91CB80);
      v38 = *(sub_22C3A5908(&qword_27D9BAA38, &unk_22C911F90) - 8);
      v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_22C90F800;
      v41 = (v40 + v39);
      *v41 = 0x7972657551776172;
      v41[1] = 0xE800000000000000;
      sub_22C9068FC();
      sub_22C909F0C();
      v42 = sub_22C90941C();
      sub_22C36C640(v60, 1, 1, v42);
      sub_22C9082AC();
      sub_22C90829C();
      (v57)(v13, *MEMORY[0x277D1DA48], v37);
      sub_22C9070BC();
      v64 = 0;
      v43 = v59;
      sub_22C90708C();
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v44 = v61;
      v45 = *(v61 + 72);
      v46 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_22C90F870;
      v47 = v27 + v46;
      v48 = v62;
      (*(v44 + 16))(v47, v19, v62);
      (*(v44 + 32))(v47 + v45, v43, v48);
      (*(v44 + 8))(v19, v48);
    }

    else
    {
      sub_22C903F7C();
      v49 = sub_22C9063CC();
      v50 = sub_22C90AACC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_22C366000, v49, v50, "Running search bypass rule, but NOT triggering", v51, 2u);
        MEMORY[0x2318B9880](v51, -1, -1);
      }

      (*(v54 + 8))(v5, v55);
      return 0;
    }
  }

  return v27;
}

void sub_22C580908(uint64_t a1)
{
  sub_22C4DD758(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_22C5809B8()
{
  sub_22C36BA7C();
  sub_22C36D118();
  v5 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C381AB0();
  sub_22C58AA98();
  v7 = sub_22C90A75C();
  v8 = sub_22C3707B4();
  v10 = sub_22C370B74(v8, v9, v7);

  if (v10 == 1)
  {
    sub_22C36DD28(v1, &qword_27D9BBB48, &qword_22C910F00);
  }

  else
  {
    sub_22C90A74C();
    sub_22C58A9F8();
    (*(v11 + 8))(v1, v7);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v12)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);
    sub_22C36A83C();
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v0;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22C90A6DC();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22C90A1EC();
  sub_22C36A83C();
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v0;

  swift_task_create();
  sub_22C36A024();

  sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);

LABEL_9:
  sub_22C36CC48();
}

void sub_22C580C40()
{
  sub_22C36BA7C();
  sub_22C36D118();
  v5 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C381AB0();
  sub_22C58AA98();
  v7 = sub_22C90A75C();
  v8 = sub_22C3707B4();
  v10 = sub_22C370B74(v8, v9, v7);

  if (v10 == 1)
  {
    sub_22C36DD28(v1, &qword_27D9BBB48, &qword_22C910F00);
  }

  else
  {
    sub_22C90A74C();
    sub_22C58A9F8();
    (*(v11 + 8))(v1, v7);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v12)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);
    sub_22C36A83C();
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v0;
    sub_22C9071BC();
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_22C90A6DC();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22C90A1EC();
  sub_22C36A83C();
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v0;
  sub_22C9071BC();

  swift_task_create();
  sub_22C36A024();

  sub_22C36DD28(v3, &qword_27D9BBB48, &qword_22C910F00);

LABEL_9:
  sub_22C36CC48();
}

uint64_t sub_22C580ED4()
{
  sub_22C369980();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_22C9073DC();
  v1[12] = v6;
  sub_22C369914(v6);
  v1[13] = sub_22C3699D4();
  v7 = sub_22C908A0C();
  v1[14] = v7;
  sub_22C3699B8(v7);
  v1[15] = v8;
  v1[16] = sub_22C3699D4();
  v9 = type metadata accessor for EndCheckpoint(0);
  sub_22C369914(v9);
  v1[17] = sub_22C3699D4();
  v10 = sub_22C9063DC();
  v1[18] = v10;
  sub_22C3699B8(v10);
  v1[19] = v11;
  v1[20] = sub_22C36D0D4();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v12 = sub_22C9089DC();
  v1[23] = v12;
  sub_22C3699B8(v12);
  v1[24] = v13;
  v1[25] = sub_22C36D0D4();
  v1[26] = swift_task_alloc();
  v14 = sub_22C3A5908(&qword_27D9BBAB0, &qword_22C910D10);
  sub_22C369914(v14);
  v1[27] = sub_22C36D0D4();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v15 = sub_22C90880C();
  v1[31] = v15;
  sub_22C3699B8(v15);
  v1[32] = v16;
  v1[33] = sub_22C36D0D4();
  v1[34] = swift_task_alloc();
  v17 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v17);
  v1[35] = sub_22C36D0D4();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v18 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
  sub_22C369914(v18);
  v1[38] = sub_22C3699D4();
  v19 = sub_22C587924(0);
  sub_22C369914(v19);
  v1[39] = sub_22C3699D4();
  v20 = sub_22C587C84(0);
  v1[40] = v20;
  sub_22C369914(v20);
  v1[41] = sub_22C36D0D4();
  v1[42] = swift_task_alloc();
  v21 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v21);
  v1[43] = sub_22C3699D4();
  v22 = sub_22C90069C();
  v1[44] = v22;
  sub_22C3699B8(v22);
  v1[45] = v23;
  v1[46] = sub_22C36D0D4();
  v1[47] = swift_task_alloc();
  started = type metadata accessor for StartCheckpoint(0);
  sub_22C369914(started);
  v1[48] = sub_22C3699D4();
  v25 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_22C581C74()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 384);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  sub_22C589E50(v2, type metadata accessor for StartCheckpoint);
  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C582708()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 424) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C582D48()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 136);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  sub_22C589E50(v2, type metadata accessor for EndCheckpoint);
  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C583308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22C58A86C();
  sub_22C38B1C4();
  v30 = *(v28 + 360);
  v31 = *(v28 + 336);
  v32 = *(v28 + 96);
  sub_22C36D264();
  sub_22C59C6A0();
  swift_willThrow();
  v33 = *(v30 + 8);
  v34 = sub_22C36BBCC();
  v33(v34);
  sub_22C36D0A8(v31, 1, v32);
  if (!v35)
  {
    v36 = sub_22C58A7A0();
    v33(v36);
  }

  v37 = *(v28 + 456);
  sub_22C38A030();
  v39 = sub_22C373570(v38);
  v33(v39);
  sub_22C36DD28(v29 + v37, &qword_27D9BB7A0, &qword_22C9110D0);
  v40 = sub_22C58A794();
  v33(v40);
  v41 = sub_22C58A974();
  v33(v41);
  v42 = sub_22C58A788();
  v33(v42);
  v60 = *(v28 + 424);
  v43 = sub_22C58A8FC();
  sub_22C58A58C(v43, v44, v45, v46, v47, v48, v49, v50);

  sub_22C369A24();
  sub_22C58A680();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v60, a25, a26, a27, a28);
}

uint64_t sub_22C5834F8()
{
  v1 = v0;
  v2 = sub_22C9063DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = sub_22C90363C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x277D1EC10], v9);
  v13 = sub_22C90362C();
  (*(v10 + 8))(v12, v9);
  sub_22C586B68();
  v15 = v14;
  if (v13 & 1) != 0 && (v14)
  {
    sub_22C903F7C();
    v16 = sub_22C9063CC();
    v17 = sub_22C90AABC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22C366000, v16, v17, "Requesting imminent prewarm", v18, 2u);
      MEMORY[0x2318B9880](v18, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v19 = v1[10];
    v20 = v1[11];
    sub_22C374168(v1 + 7, v19);
    return (*(v20 + 24))(v19, v20);
  }

  else
  {
    sub_22C903F7C();
    v22 = sub_22C9063CC();
    v23 = sub_22C90AABC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109376;
      *(v24 + 4) = v13 & 1;
      *(v24 + 8) = 1024;
      *(v24 + 10) = v15 & 1;
      _os_log_impl(&dword_22C366000, v22, v23, "Not requesting imminent prewarm. FeatureFlag enabled: %{BOOL}d. Trial enabled: %{BOOL}d", v24, 0xEu);
      MEMORY[0x2318B9880](v24, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_22C583840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = *v4;
  v5[24] = *v4;
  v7 = sub_22C90883C();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  sub_22C901E8C();
  v5[28] = swift_task_alloc();
  v8 = sub_22C90885C();
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();
  sub_22C902D3C();
  v5[32] = swift_task_alloc();
  v9 = sub_22C90888C();
  v5[33] = v9;
  v5[34] = *(v9 - 8);
  v5[35] = swift_task_alloc();
  v10 = sub_22C9064BC();
  v5[36] = v10;
  v5[37] = *(v10 - 8);
  v5[38] = swift_task_alloc();
  v11 = sub_22C90637C();
  v5[39] = v11;
  v5[40] = *(v11 - 8);
  v5[41] = swift_task_alloc();
  v12 = sub_22C90634C();
  v5[42] = v12;
  v5[43] = *(v12 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v13 = sub_22C90636C();
  v5[47] = v13;
  v5[48] = *(v13 - 8);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v5[52] = swift_task_alloc();
  v14 = sub_22C9063DC();
  v5[53] = v14;
  v5[54] = *(v14 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v15 = sub_22C90363C();
  v5[59] = v15;
  v5[60] = *(v15 - 8);
  v5[61] = swift_task_alloc();
  v16 = sub_22C90649C();
  v5[62] = v16;
  v5[63] = *(v16 - 8);
  v5[64] = swift_task_alloc();
  v17 = sub_22C90880C();
  v5[65] = v17;
  v5[66] = *(v17 - 8);
  v5[67] = swift_task_alloc();
  v18 = *(v6 + 80);
  v5[68] = v18;
  v21 = type metadata accessor for PlannerPromptGeneratorOutput(0, v18, v19, v20);
  v5[69] = v21;
  v5[70] = *(v21 - 8);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C583E44, 0, 0);
}

uint64_t sub_22C583E44()
{
  sub_22C36D5EC();
  v1 = v0[23];
  v2 = v1[5];
  v3 = v1[6];
  sub_22C374168(v1 + 2, v2);
  sub_22C36CCA8();
  v11 = (v4 + *v4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[74] = v5;
  *v5 = v6;
  v5[1] = sub_22C583F68;
  v7 = v0[73];
  v8 = v0[20];
  v9 = v0[21];

  return v11(v7, v8, v9, v2, v3);
}

uint64_t sub_22C583F68()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 600) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C584064()
{
  sub_22C375EC8();
  v1 = v0[73];
  if (v0[22])
  {
    (*(*(v0[24] + 88) + 8))(v0[68]);
    v0[76] = v2;
    v3 = sub_22C37BE48(&unk_22C91CCF0);
    v0[77] = v3;
    *v3 = v0;
    v3[1] = sub_22C5847B8;
    v4 = sub_22C37170C();

    return v164(v4);
  }

  else
  {
    v157 = v0[70];
    v165 = v0[68];
    v6 = v0[64];
    v140 = v0[62];
    v145 = v0[63];
    v149 = v0[59];
    v153 = v0[61];
    v7 = v0[24];
    sub_22C90878C();
    sub_22C3A8E40();
    v9 = v8;
    v11 = v10;
    v0[78] = v8;
    v0[79] = v10;
    v12 = sub_22C36BAFC();
    v13(v12);
    v159 = v9;
    if (v11)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    v135 = v14;
    v15 = sub_22C900F8C();
    v0[80] = v15;
    v16 = *(v7 + 88);
    v0[81] = v16;
    v17 = *(v16 + 8);
    v0[82] = v17;
    sub_22C36D3C0(v16 + 8);
    v18 = v165;
    v166 = v16;
    v163 = v17;
    v17(v18, v16);
    sub_22C90648C();
    sub_22C58A704();
    sub_22C58A238(v19, v1, MEMORY[0x277D1D950]);
    sub_22C58A71C(&qword_27D9BE000);
    sub_22C900F7C();

    v20 = (*(v145 + 8))(v6, v140);
    v27 = sub_22C3869FC(v20, *MEMORY[0x277D1EC40], v21, v22, v23, v24, v25, v26, v130, v135, v140, v145, v149, v153);
    v28(v27);
    sub_22C90362C();
    v29 = sub_22C38B438();
    v30(v29);
    sub_22C375CD8();
    if (v15)
    {
      sub_22C903F7C();
      v31 = sub_22C376780();
      v32(v31);
      v33 = sub_22C9063CC();
      v34 = sub_22C90AABC();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v0[72];
      v37 = v0[70];
      if (v35)
      {
        v38 = v0[68];
        v150 = v0[54];
        v154 = v0[53];
        v157 = v0[58];
        LODWORD(v146) = v34;
        v39 = sub_22C36FB44();
        v40 = sub_22C370060();
        v168 = v40;
        *v39 = 136315138;
        v41 = v163(v38, v166);
        v43 = v42;
        v44 = *(v37 + 8);
        v45 = sub_22C37170C();
        v44(v45);
        sub_22C36F9F4(v41, v43, &v168);
        sub_22C36A024();

        *(v39 + 4) = v36;
        _os_log_impl(&dword_22C366000, v33, v146, "Full Planner Prompt:\n%s", v39, 0xCu);
        sub_22C36FF94(v40);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v150 + 8))(v157, v154);
      }

      else
      {
        v61 = v0[58];
        v62 = v0[53];
        v63 = v0[54];

        v64 = *(v37 + 8);
        v65 = sub_22C37170C();
        v64(v65);
        (*(v63 + 8))(v61, v62);
      }
    }

    else
    {
      sub_22C903F7C();
      v46 = sub_22C376780();
      v47(v46);
      v48 = sub_22C9063CC();
      v33 = sub_22C90AABC();
      v49 = os_log_type_enabled(v48, v33);
      v50 = v0[71];
      v51 = v0[70];
      v52 = v0[69];
      v53 = v0[53];
      v54 = v0[54];
      if (v49)
      {
        v157 = v0[57];
        v55 = sub_22C36FB44();
        v154 = v53;
        v56 = sub_22C370060();
        v168 = v56;
        *v55 = 136380675;
        v57 = (v50 + *(v52 + 28));
        v146 = *v57;
        LODWORD(v150) = v33;
        v33 = v57[1];
        v58 = *(v51 + 8);

        v59 = sub_22C36CC9C();
        v58(v59);
        v60 = sub_22C36F9F4(v146, v33, &v168);

        *(v55 + 4) = v60;
        _os_log_impl(&dword_22C366000, v48, v150, "Full Planner Prompt:\n%{private}s", v55, 0xCu);
        sub_22C36FF94(v56);
        sub_22C372FB0();
        sub_22C3699EC();

        (*(v54 + 8))(v157, v154);
      }

      else
      {

        v66 = *(v54 + 8);
        v67 = sub_22C36BAFC();
        v66(v67);
        v68 = *(v51 + 8);
        v69 = sub_22C36CC9C();
        v68(v69);
      }
    }

    sub_22C58A8C0();
    sub_22C36A748();
    sub_22C36C640(v70, v71, v72, v73);
    v74 = swift_allocObject();
    sub_22C58A90C(v74, v75, v76, v77, v78, v79, v80, v81, v131, v136, v141, v146, v150, v154, v157, v159, v161);
    sub_22C58A6D0();

    sub_22C90364C();
    sub_22C90364C();
    sub_22C90635C();
    sub_22C90631C();
    v82 = sub_22C58A808();
    v83(v82);
    v84 = sub_22C90635C();
    sub_22C90AB6C();
    if (sub_22C3806D0())
    {
      v85 = sub_22C36D240();
      v86 = sub_22C58AAD8(v85);
      sub_22C3721A8(&dword_22C366000, v87, v88, v86, "FullPlannerModelInterface.completion", "");
      sub_22C36D69C();
    }

    sub_22C58A69C();
    v89 = v0[43];
    sub_22C58AA0C();

    v90 = sub_22C37170C();
    v91(v90);
    v92 = sub_22C9063AC();
    sub_22C3856A0(v92);
    v0[92] = sub_22C36D704();
    v0[93] = *(v89 + 8);
    v93 = sub_22C3814D0();
    v94(v93);
    v160(v132, v33);
    sub_22C90878C();
    sub_22C3A909C();
    v97 = sub_22C58A8A4(v95, v96);
    v99 = v98(v97);
    v107 = sub_22C58A95C(v99, v100, v101, v102, v103, v104, v105, v106, v132, v137, v142);
    v109 = v108(v107);
    v111 = sub_22C58AA78(v109, v110);
    v119 = sub_22C58A934(v111, v112, v113, v114, v115, v116, v117, v118, v133, v138, v143, v147, v151, v155);
    sub_22C58A660(v119);
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    sub_22C58A7AC();
    swift_task_alloc();
    sub_22C36CC90();
    v0[98] = v120;
    *v120 = v121;
    sub_22C383144(v120, v122, v123, v124, v125, v126, v127, v128, v134, v139, v144, v148, v152, v156, v158, v160, v162);
    sub_22C3744A8();
    sub_22C377448();

    return MEMORY[0x282177648]();
  }
}

uint64_t sub_22C5847B8()
{
  sub_22C369980();
  sub_22C369A3C();
  v1 = *v0;
  sub_22C369970();
  *v2 = v1;

  v3 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C5848B8()
{
  sub_22C375EC8();
  v154 = v0[73];
  v153 = v0[68];
  v1 = v0[63];
  v2 = v0[64];
  v142 = v0[61];
  v146 = v0[70];
  v134 = v0[62];
  v138 = v0[59];
  v3 = v0[24];
  sub_22C90878C();
  sub_22C3A8E40();
  v5 = v4;
  v7 = v6;
  v0[78] = v4;
  v0[79] = v6;
  v8 = sub_22C36BAFC();
  v9(v8);
  v148 = v5;
  if (v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v129 = v10;
  v11 = sub_22C900F8C();
  v0[80] = v11;
  v12 = *(v3 + 88);
  v0[81] = v12;
  v13 = *(v12 + 8);
  v0[82] = v13;
  sub_22C36D3C0(v12 + 8);
  v152 = v13;
  v13(v153, v12);
  sub_22C90648C();
  sub_22C58A704();
  sub_22C58A238(v14, v154, MEMORY[0x277D1D950]);
  sub_22C58A71C(&qword_27D9BE000);
  sub_22C900F7C();

  v15 = (*(v1 + 8))(v2, v134);
  v22 = sub_22C3869FC(v15, *MEMORY[0x277D1EC40], v16, v17, v18, v19, v20, v21, v119, v124, v129, v134, v138, v142);
  v23(v22);
  sub_22C90362C();
  v24 = sub_22C38B438();
  v25(v24);
  sub_22C375CD8();
  if (v11)
  {
    sub_22C903F7C();
    v26 = sub_22C376780();
    v27(v26);
    v28 = sub_22C9063CC();
    v29 = sub_22C90AABC();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[72];
    v32 = v0[70];
    if (v30)
    {
      LODWORD(v135) = v29;
      v33 = v0[68];
      v139 = v0[54];
      v143 = v0[53];
      v146 = v0[58];
      v34 = sub_22C36FB44();
      v35 = sub_22C370060();
      v155 = v35;
      *v34 = 136315138;
      v36 = v152(v33, v12);
      v38 = v37;
      v39 = *(v32 + 8);
      v40 = sub_22C36BBCC();
      v39(v40);
      sub_22C36F9F4(v36, v38, &v155);
      sub_22C36A024();

      *(v34 + 4) = v31;
      _os_log_impl(&dword_22C366000, v28, v135, "Full Planner Prompt:\n%s", v34, 0xCu);
      sub_22C36FF94(v35);
      sub_22C36D69C();
      sub_22C3699EC();

      (*(v139 + 8))(v146, v143);
    }

    else
    {
      v36 = v0[58];
      v54 = v0[54];

      v55 = *(v32 + 8);
      v56 = sub_22C36BBCC();
      v55(v56);
      v57 = *(v54 + 8);
      v58 = sub_22C36D264();
      v57(v58);
    }
  }

  else
  {
    sub_22C903F7C();
    v41 = sub_22C376780();
    v42(v41);
    v43 = sub_22C9063CC();
    v44 = sub_22C90AABC();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v0[71];
    v47 = v0[70];
    v48 = v0[69];
    v36 = v0[57];
    v28 = v0[53];
    v49 = v0[54];
    if (v45)
    {
      v50 = sub_22C36FB44();
      v146 = v36;
      v36 = sub_22C370060();
      v155 = v36;
      *v50 = 136380675;
      v51 = (v46 + *(v48 + 28));
      v135 = *v51;
      v143 = v28;
      v28 = v51[1];
      LODWORD(v139) = v44;
      v52 = *(v47 + 8);

      v52(v46, v48);
      v53 = sub_22C36F9F4(v135, v28, &v155);

      *(v50 + 4) = v53;
      _os_log_impl(&dword_22C366000, v43, v44, "Full Planner Prompt:\n%{private}s", v50, 0xCu);
      sub_22C36FF94(v36);
      sub_22C372FB0();
      sub_22C3699EC();

      (*(v49 + 8))(v146, v143);
    }

    else
    {

      (*(v49 + 8))(v36, v28);
      (*(v47 + 8))(v46, v48);
    }
  }

  sub_22C58A8C0();
  sub_22C36A748();
  sub_22C36C640(v59, v60, v61, v62);
  v63 = swift_allocObject();
  sub_22C58A90C(v63, v64, v65, v66, v67, v68, v69, v70, v120, v125, v130, v135, v139, v143, v146, v148, v150);
  sub_22C58A6D0();

  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v71 = sub_22C58A808();
  v72(v71);
  v73 = sub_22C90635C();
  v74 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v75 = sub_22C36D240();
    sub_22C36C890(v75);
    v76 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v73, v74, v76, "FullPlannerModelInterface.completion", "", v36, 2u);
    sub_22C372FB0();
  }

  sub_22C58A69C();
  v77 = v0[43];
  sub_22C58AA0C();

  v78 = sub_22C37170C();
  v79(v78);
  v80 = sub_22C9063AC();
  sub_22C3856A0(v80);
  v0[92] = sub_22C36D704();
  v0[93] = *(v77 + 8);
  v81 = sub_22C3814D0();
  v82(v81);
  v149(v121, v28);
  sub_22C90878C();
  sub_22C3A909C();
  v85 = sub_22C58A8A4(v83, v84);
  v87 = v86(v85);
  v95 = sub_22C58A95C(v87, v88, v89, v90, v91, v92, v93, v94, v121, v126, v131);
  v97 = v96(v95);
  v99 = sub_22C58AA78(v97, v98);
  v107 = sub_22C58A934(v99, v100, v101, v102, v103, v104, v105, v106, v122, v127, v132, v136, v140, v144);
  sub_22C58A660(v107);
  sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  sub_22C58A7AC();
  swift_task_alloc();
  sub_22C36CC90();
  v0[98] = v108;
  *v108 = v109;
  sub_22C383144(v108, v110, v111, v112, v113, v114, v115, v116, v123, v128, v133, v137, v141, v145, v147, v149, v151);
  sub_22C3744A8();
  sub_22C377448();

  return MEMORY[0x282177648]();
}

uint64_t sub_22C584F7C()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;

  sub_22C36DD28(v3 + 72, &qword_27D9BE008, &qword_22C91CCE8);

  if (v0)
  {
  }

  else
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}