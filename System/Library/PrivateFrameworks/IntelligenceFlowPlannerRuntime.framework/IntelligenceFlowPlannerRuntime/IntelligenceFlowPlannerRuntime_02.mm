uint64_t sub_22C39FC00()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C39FC58()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C39FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);

  return sub_22C370B74(a1 + v5, a2, DecorationEntityValue);
}

uint64_t sub_22C39FCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);

  return sub_22C36C640(a1 + v6, a2, a2, DecorationEntityValue);
}

uint64_t sub_22C39FD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3704C4();
  sub_22C9037EC();
  sub_22C3699C8();
  if (*(v7 + 84) == a2)
  {

    return sub_22C370B74(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_22C39FDF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C371718();
  sub_22C9037EC();
  sub_22C3699C8();
  if (*(v9 + 84) == a3)
  {

    sub_22C36C640(v5, v4, v4, v8);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }
}

uint64_t sub_22C39FE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C371718();
  sub_22C90981C();
  sub_22C3699C8();
  if (*(v7 + 84) == v3)
  {
    DecorationEntity = v6;
    v9 = v4;
  }

  else
  {
    DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
    v9 = v4 + *(a3 + 20);
  }

  return sub_22C370B74(v9, v3, DecorationEntity);
}

uint64_t sub_22C39FF1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C371718();
  sub_22C90981C();
  sub_22C3699C8();
  if (*(v9 + 84) == a3)
  {
    DecorationEntity = v8;
    v11 = v5;
  }

  else
  {
    DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
    v11 = v5 + *(a4 + 20);
  }

  return sub_22C36C640(v11, v4, v4, DecorationEntity);
}

uint64_t sub_22C39FFB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C3A0044()
{
  swift_unknownObjectRelease();
  sub_22C36FF94((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

void sub_22C3A00A4()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C9037EC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v27 = (v8 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v34 = MEMORY[0x277D84F90];
  sub_22C3B60C0(0, v1 & ~(v1 >> 63), 0);
  v13 = 0;
  v14 = v34;
  v33 = v6 + 16;
  v31 = (v6 + 8);
  v24[1] = v6 + 32;
  v25 = v3;
  v26 = v1;
  while (1)
  {
    if (v13 == v1)
    {
LABEL_11:

      sub_22C36FB20();
      return;
    }

    if (v1 < 0)
    {
      break;
    }

    v15 = *(v6 + 72);
    v28 = v13;
    v29 = *(v6 + 16);
    v30 = v13 + 1;
    v29(v12, v3 + v15 * v13, v4);
    v16 = *(v14 + 16) + 1;
    v32 = v14;
    while (--v16)
    {
      sub_22C373A7C();
      sub_22C7FB604(&qword_281435760, v17, MEMORY[0x277D1EDA8]);
      v14 += v15;
      if (sub_22C90A0BC())
      {
        (*v31)(v12, v4);
        goto LABEL_11;
      }
    }

    v18 = v27;
    v29(v27, v12, v4);
    v35 = v32;
    v20 = *(v32 + 16);
    v19 = *(v32 + 24);
    v1 = v26;
    if (v20 >= v19 >> 1)
    {
      sub_22C3B60C0(v19 > 1, v20 + 1, 1);
      v18 = v27;
    }

    (*(v6 + 8))(v12, v4);
    *(v35 + 16) = v20 + 1;
    sub_22C36BA94();
    v22 = v18;
    v14 = v23;
    (*(v6 + 32))(v23 + v21 + v20 * v15, v22, v4);
    v13 = v30;
    v3 = v25;
  }

  __break(1u);
}

void sub_22C3A0354()
{
  sub_22C370030();
  v41 = v1;
  v3 = v2;
  v5 = v4;
  v57 = v6;
  v7 = sub_22C9037EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v47 = v3;
      v39 = v0;
      v16 = 0;
      v17 = (v13 + 8);
      v38 = v5;
      v37 = v13;
      while (!__OFADD__(v16, 1))
      {
        v40 = v16 + 1;
        v18 = *(v13 + 72);
        v46 = v16;
        v48 = v18;
        v19 = v57 + v18 * v16;
        v20 = *(v13 + 16);
        v20(v15, v19, v7);
        v21 = v47;
        sub_22C373A7C();
        sub_22C7FB604(&qword_281435768, v22, MEMORY[0x277D1EDA0]);
        v23 = sub_22C909F7C();
        v24 = 1 << *v21;
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (v25)
        {
          goto LABEL_13;
        }

        v45 = v26 & v23;
        v27 = v41;
        v28 = sub_22C9030FC();
        v43 = v29;
        v44 = v28;
        v42 = v30;
        v31 = *v17;
        (*v17)(v15, v7);
        *&v49 = v47;
        *(&v49 + 1) = v27;
        *&v50 = v45;
        *(&v50 + 1) = v44;
        *&v51 = v43;
        *(&v51 + 1) = v42;
        v52 = 0;
        while (1)
        {
          v53 = v49;
          v54 = v50;
          v55 = v51;
          v56 = v52;
          v32 = sub_22C90313C();
          if (v33)
          {
            break;
          }

          v20(v15, v57 + v32 * v48, v7);
          v20(v11, v19, v7);
          sub_22C373A7C();
          sub_22C7FB604(&qword_281435760, v34, MEMORY[0x277D1EDA8]);
          v35 = sub_22C90A0BC();
          v31(v11, v7);
          v31(v15, v7);
          if (v35)
          {
            goto LABEL_11;
          }

          sub_22C90315C();
        }

        sub_22C90314C();
        v16 = v40;
        v13 = v37;
        if (v40 == v38)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    sub_22C36FB20();
  }
}

uint64_t sub_22C3A0680()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22C3A06C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C3A0708(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9037EC();

  return sub_22C370B74(v2, a2, v4);
}

uint64_t sub_22C3A074C(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9037EC();

  return sub_22C36C640(v2, a2, a2, v4);
}

uint64_t sub_22C3A079C()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  sub_22C36FF94(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_22C3A082C@<X0>(uint64_t a1@<X8>)
{
  result = sub_22C901E4C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_22C3A08B0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22C90981C();
  sub_22C3699C8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_22C909ADC();
    sub_22C3699C8();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_22C908ECC();
      sub_22C3699C8();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        v8 = sub_22C90966C();
        v12 = a3[7];
      }
    }

    v9 = a1 + v12;
  }

  return sub_22C370B74(v9, a2, v8);
}

uint64_t sub_22C3A09C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22C90981C();
  sub_22C3699C8();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_22C909ADC();
    sub_22C3699C8();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_22C908ECC();
      sub_22C3699C8();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        v10 = sub_22C90966C();
        v14 = a4[7];
      }
    }

    v11 = a1 + v14;
  }

  return sub_22C36C640(v11, a2, a2, v10);
}

uint64_t sub_22C3A0BE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C814BF8();
  *a1 = result;
  return result;
}

uint64_t sub_22C3A0C48()
{
  sub_22C36BA7C();
  v1 = sub_22C90069C();
  sub_22C369824();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_22C90622C();
  sub_22C369824();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  sub_22C36CC48();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_22C3A0D80()
{
  v24 = sub_22C905A5C();
  sub_22C369824();
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  v23 = sub_22C90069C();
  sub_22C369824();
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  v13 = sub_22C90622C();
  sub_22C369824();
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v10 + v12 + v18) & ~v18;
  v22 = *(v17 + 64);
  v20 = v3 | v9 | v18;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v24);
  (*(v8 + 8))(v0 + v10, v23);
  (*(v15 + 8))(v0 + v19, v13);

  return MEMORY[0x2821FE8E8](v0, v19 + v22, v20 | 7);
}

uint64_t sub_22C3A0F40()
{
  sub_22C90622C();
  sub_22C369824();
  swift_unknownObjectRelease();

  v0 = sub_22C823694();
  v1(v0);
  v2 = sub_22C8236B4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3A0FF0()
{
  sub_22C90622C();
  sub_22C369824();
  swift_unknownObjectRelease();

  v0 = sub_22C823694();
  v1(v0);
  v2 = sub_22C8236B4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3A10B8()
{
  sub_22C90622C();
  sub_22C369824();
  swift_unknownObjectRelease();

  v0 = sub_22C823694();
  v1(v0);
  v2 = sub_22C8236B4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3A1168()
{
  sub_22C90622C();
  sub_22C369824();
  swift_unknownObjectRelease();

  v0 = sub_22C823694();
  v1(v0);
  v2 = sub_22C8236B4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3A1230()
{
  sub_22C36BA7C();
  v1 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C3699B8(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_22C90622C();
  sub_22C369824();
  v8 = v7;
  v9 = *(v7 + 80);
  swift_unknownObjectRelease();

  v10 = sub_22C903F4C();
  if (!sub_22C370B74(v0 + v3, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  (*(v8 + 8))(v0 + ((v3 + v5 + v9) & ~v9), v6);
  sub_22C36CC48();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_22C3A13C8()
{
  sub_22C90622C();
  sub_22C369824();
  swift_unknownObjectRelease();

  v0 = sub_22C823694();
  v1(v0);
  v2 = sub_22C8236B4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3A1478()
{
  sub_22C90622C();
  sub_22C369824();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 40) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = sub_22C823694();
  v6(v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22C3A1548@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22C8242BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22C3A15A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90069C();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_22C90B0EC();
      v10 = *(a3 + 28);
    }

    return sub_22C370B74(a1 + v10, a2, v9);
  }
}

uint64_t sub_22C3A166C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C90069C();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_22C90B0EC();
      v10 = *(a4 + 28);
    }

    return sub_22C36C640(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_22C3A1734()
{
  v1 = sub_22C90399C();
  sub_22C369824();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  sub_22C36FF94((v0 + v7));

  return MEMORY[0x2821FE8E8](v0, v7 + 40, v4 | 7);
}

uint64_t sub_22C3A1808()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C3A1840()
{
  v1 = sub_22C903E7C();
  sub_22C369824();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 88) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_22C36FF94((v0 + 48));
  (*(v3 + 8))(v0 + v5, v1);
  sub_22C36FF94((v0 + v7));

  return MEMORY[0x2821FE8E8](v0, v7 + 40, v4 | 7);
}

uint64_t sub_22C3A1924()
{
  sub_22C903E7C();
  sub_22C36985C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22C3A19B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C3A1A18()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C3A1A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_22C3E07B0(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_22C3A1AAC()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22C90413C();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22C3A1AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C83AAA8(255, *(a3 + 16), a3, a4);
  sub_22C3699C8();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return sub_22C3725D8(*(a1 + *(a3 + 32) + 8));
    }

    sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
    sub_22C3699C8();
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 40);
    }

    else
    {
      v9 = sub_22C3A5908(&qword_27D9C0588, &qword_22C927FD0);
      v14 = *(a3 + 52);
    }

    v10 = a1 + v14;
  }

  return sub_22C370B74(v10, a2, v9);
}

void sub_22C3A1C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  sub_22C83AAA8(255, *(a4 + 16), a3, a4);
  sub_22C3699C8();
  if (*(v9 + 84) == v5)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (v5 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return;
    }

    sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
    sub_22C3699C8();
    if (*(v13 + 84) == v5)
    {
      v10 = v12;
      v14 = *(a4 + 40);
    }

    else
    {
      v10 = sub_22C3A5908(&qword_27D9C0588, &qword_22C927FD0);
      v14 = *(a4 + 52);
    }

    v11 = a1 + v14;
  }

  sub_22C36C640(v11, a2, a2, v10);
}

uint64_t sub_22C3A1D90()
{

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C3A1DD4()
{
  v1 = sub_22C903F4C();
  sub_22C369824();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22C3A1EA4()
{

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22C3A1EF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C3A1F78()
{

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22C3A1FAC()
{

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C3A1FF4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C3A2044()
{

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C3A20B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C9037EC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 <= 6)
    {
      v9 = 6;
    }

    else
    {
      v9 = *(a1 + *(a3 + 20));
    }

    v10 = v9 - 6;
    if (v8 >= 6)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22C3A2168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C9037EC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

uint64_t sub_22C3A2298()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C3A22D0()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C3A2318()
{

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22C3A2360(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x4449746E65746E69;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C3A2414()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22C3A2464()
{
  sub_22C37B4A0();
  result = sub_22C86ADD8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_22C3A24B8()
{
  sub_22C37B4A0();
  result = sub_22C86AEAC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_22C3A250C()
{
  sub_22C37B4A0();
  result = sub_22C86AFB8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_22C3A2560()
{
  sub_22C37B4A0();
  result = sub_22C86B08C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_22C3A25B4()
{
  sub_22C37B4A0();
  result = sub_22C86B160();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_22C3A2608()
{
  sub_22C37B4A0();
  result = sub_22C86B26C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_22C3A26AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22C90806C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return sub_22C370B74(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
    v8 = a3[7];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[6] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_22C3A278C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_22C90806C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6] + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
    v10 = a4[7];
  }

  return sub_22C36C640(a1 + v10, a2, a2, v9);
}

BOOL sub_22C3A2890(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C90B21C();

  return v2 != 0;
}

uint64_t sub_22C3A28D8()
{

  v0 = sub_22C36A8CC();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22C3A2908@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C8744A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C3A29DC(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C90240C();

  return sub_22C370B74(v2, a2, v4);
}

uint64_t sub_22C3A2A20(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C90240C();

  return sub_22C36C640(v2, a2, a2, v4);
}

uint64_t sub_22C3A2A68(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TypedValueFormatter(0);
    v9 = a1 + *(a3 + 20);

    return sub_22C370B74(v9, a2, v8);
  }
}

void *sub_22C3A2AF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TypedValueFormatter(0);
    v8 = v5 + *(a4 + 20);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C3A2B70(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9093BC();

  return sub_22C370B74(v2, a2, v4);
}

uint64_t sub_22C3A2BB4(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9093BC();

  return sub_22C36C640(v2, a2, a2, v4);
}

uint64_t sub_22C3A2C1C()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C3A2C58()
{
  v1 = sub_22C9093BC();
  sub_22C369824();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22C3A2D18(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9093BC();
  v5 = sub_22C370B74(v2, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3A2D5C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22C9093BC();

  return sub_22C36C640(a1, v5, a3, v6);
}

uint64_t sub_22C3A2E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C908AEC();
  sub_22C3699C8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_22C90077C();
    sub_22C3699C8();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_22C9021BC();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_22C370B74(v9, a2, v8);
}

uint64_t sub_22C3A2F1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C908AEC();
  sub_22C3699C8();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_22C90077C();
    sub_22C3699C8();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_22C9021BC();
      v14 = *(a4 + 24);
    }

    v11 = a1 + v14;
  }

  return sub_22C36C640(v11, a2, a2, v10);
}

uint64_t sub_22C3A3050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9C0F60, &qword_22C92B9A0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22C3A3118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C3A5908(&qword_27D9C0F60, &qword_22C92B9A0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22C3A3278(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 == 254)
  {
    v2 = *a1;
    if (v2 >= 2)
    {
      return v2 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
    v5 = sub_22C37EE84();

    return sub_22C370B74(v5, a2, v6);
  }
}

_BYTE *sub_22C3A3300(_BYTE *result, uint64_t a2, int a3)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
    v4 = sub_22C37EE84();

    return sub_22C36C640(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_22C3A3388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  sub_22C3699C8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_22C370B74(v9, a2, v8);
  }

  sub_22C3A5908(&qword_27D9C1110, &unk_22C92C180);
  sub_22C3699C8();
  if (*(v10 + 84) == a2)
  {
    v9 = sub_22C37EE84();
    goto LABEL_5;
  }

  v12 = *(a1 + *(a3 + 40) + 8);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

void sub_22C3A348C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  sub_22C3699C8();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_22C3A5908(&qword_27D9C1110, &unk_22C92C180);
    sub_22C3699C8();
    if (*(v12 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return;
    }

    v11 = sub_22C37EE84();
  }

  sub_22C36C640(v11, a2, a2, v10);
}

uint64_t sub_22C3A3C28(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C3699C8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
    sub_22C3699C8();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
      sub_22C3699C8();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
        sub_22C3699C8();
        if (*(v16 + 84) == a2)
        {
          v8 = v15;
          v12 = a3[10];
        }

        else
        {
          sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
          sub_22C3699C8();
          if (*(v18 + 84) == a2)
          {
            v8 = v17;
            v12 = a3[11];
          }

          else
          {
            sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
            sub_22C3699C8();
            if (*(v20 + 84) == a2)
            {
              v8 = v19;
              v12 = a3[15];
            }

            else
            {
              v8 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
              v12 = a3[17];
            }
          }
        }
      }
    }

    v9 = a1 + v12;
  }

  return sub_22C370B74(v9, a2, v8);
}

uint64_t sub_22C3A3E54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  sub_22C3699C8();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
    sub_22C3699C8();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
      sub_22C3699C8();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
        sub_22C3699C8();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[10];
        }

        else
        {
          sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
          sub_22C3699C8();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[11];
          }

          else
          {
            sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
            sub_22C3699C8();
            if (*(v22 + 84) == a3)
            {
              v10 = v21;
              v14 = a4[15];
            }

            else
            {
              v10 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
              v14 = a4[17];
            }
          }
        }
      }
    }

    v11 = a1 + v14;
  }

  return sub_22C36C640(v11, a2, a2, v10);
}

void sub_22C3A4108(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22C90A0EC();
  [a3 setString_];
}

uint64_t sub_22C3A4160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369A48();
  sub_22C90806C();
  sub_22C3699C8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    v8 = type metadata accessor for DialogValues(0);
    v9 = v3 + *(a3 + 20);
  }

  return sub_22C370B74(v9, a2, v8);
}

uint64_t sub_22C3A41F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  sub_22C90806C();
  sub_22C3699C8();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v10 = type metadata accessor for DialogValues(0);
    v11 = v4 + *(a4 + 20);
  }

  return sub_22C36C640(v11, a2, a2, v10);
}

uint64_t sub_22C3A42B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C3A4300()
{
  v1 = (type metadata accessor for ResponseValidationContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  sub_22C36FF94((v0 + 32));

  sub_22C90806C();
  sub_22C369848();
  (*(v5 + 8))(v0 + v3);
  v6 = v0 + v3 + v1[7];

  v7 = v6 + *(type metadata accessor for DialogValues(0) + 20);
  sub_22C90077C();
  sub_22C369848();
  (*(v8 + 8))(v7);
  type metadata accessor for TypedValueFormatter(0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22C3A4474()
{
  v24 = sub_22C90806C();
  sub_22C369824();
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v23 = sub_22C90069C();
  sub_22C369824();
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  v13 = sub_22C9087BC();
  sub_22C369824();
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v10 + v12 + v18) & ~v18;
  v22 = *(v17 + 64);
  v20 = v3 | v9 | v18;

  (*(v2 + 8))(v0 + v4, v24);
  (*(v8 + 8))(v0 + v10, v23);
  (*(v15 + 8))(v0 + v19, v13);

  return MEMORY[0x2821FE8E8](v0, v19 + v22, v20 | 7);
}

uint64_t sub_22C3A4654@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C901DEC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22C3A4718()
{
  if (*(v0 + 16) >= 0x11uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C3A4758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90302C();
    v9 = a1 + *(a3 + 20);

    return sub_22C370B74(v9, a2, v8);
  }
}

uint64_t sub_22C3A47E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22C90302C();
    v8 = v5 + *(a4 + 20);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C3A48B0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C9007EC();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for TypedValueFormatter(0);
      v10 = *(a3 + 24);
    }

    return sub_22C370B74(a1 + v10, a2, v9);
  }
}

void *sub_22C3A497C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22C9007EC();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for TypedValueFormatter(0);
      v10 = *(a4 + 24);
    }

    return sub_22C36C640(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_22C3A4A90()
{

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22C3A4ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90077C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22C3A4B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C90077C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22C3A4C6C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22C3A4CE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C3A4D1C()
{
  v1 = sub_22C3A5908(&qword_27D9BBB28, &qword_22C910DF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22C3A4DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90069C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
    v8 = a1 + *(a3 + 20);
  }

  return sub_22C370B74(v8, a2, v7);
}

uint64_t sub_22C3A4E98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C90069C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
    v10 = a1 + *(a4 + 20);
  }

  return sub_22C36C640(v10, a2, a2, v9);
}

char *sub_22C3A4F80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C3A4FA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

uint64_t sub_22C3A5038(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_22C3A5074@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C3FD26C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_22C3A50BC()
{
  v1 = sub_22C372564();
  result = sub_22C38C5C8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_22C3A50F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3A4FF4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C3A5124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_22C3E07B0(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t Session.Event.init(planText:prompt:sessionState:fullyResolvedProgram:overrideId:source:eventId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v94 = a8;
  v82 = a7;
  v93 = a4;
  v80 = a3;
  v92 = a2;
  v81 = a1;
  v83 = a9;
  v98 = a10;
  v99 = a11;
  v97 = sub_22C902D3C();
  sub_22C369824();
  v90 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v78 = v16 - v15;
  sub_22C36BA0C();
  v89 = sub_22C90888C();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v77 = v21 - v20;
  sub_22C36BA0C();
  v76 = sub_22C9089DC();
  sub_22C369824();
  v79 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v26 = v25 - v24;
  v27 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v85 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v86 = &v72 - v30;
  sub_22C36BA0C();
  v31 = sub_22C90880C();
  sub_22C369824();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  v37 = v36 - v35;
  v87 = sub_22C908A0C();
  sub_22C369824();
  v84 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  v42 = v41 - v40;
  sub_22C9075EC();
  sub_22C369824();
  v95 = v44;
  v96 = v43;
  MEMORY[0x28223BE20](v43);
  sub_22C369838();
  v47 = v46 - v45;
  v103 = a5;
  sub_22C9087AC();
  MEMORY[0x2318B4A90]();
  sub_22C9075AC();
  v91 = v47;
  v48 = v88;
  v49 = sub_22C9075DC();
  if (v48)
  {

    (*(v18 + 8))(v98, v89);
    (*(v90 + 8))(a6, v97);
    sub_22C9087BC();
    sub_22C369848();
    (*(v50 + 8))(v103);
  }

  else
  {
    v74 = v49;
    v75 = v42;
    v51 = v84;
    v73 = v26;
    v88 = a6;
    sub_22C90878C();
    sub_22C9087DC();
    (*(v33 + 8))(v37, v31);
    sub_22C38B744();
    v52 = v86;
    sub_22C3A59F0();

    v53 = v85;
    sub_22C3A7214();
    if (sub_22C370B74(v53, 1, v87) != 1)
    {
      sub_22C3A5E98(v52);
      (*(v51 + 32))(v75, v53, v87);
      v62 = v18;
      v63 = *(v18 + 16);
      v86 = 0;
      v64 = v98;
      v65 = v89;
      v63(v77, v98, v89);
      sub_22C9088AC();
      v66 = v73;
      sub_22C90889C();
      v67 = v79;
      v68 = v76;
      (*(v79 + 104))(v66, *MEMORY[0x277D1E6F8], v76);
      sub_22C90892C();
      (*(v62 + 8))(v64, v65);
      v69 = sub_22C3A785C();
      v70(v69);
      sub_22C9087BC();
      sub_22C369848();
      (*(v71 + 8))(v103);
      (*(v67 + 8))(v66, v68);
      (*(v51 + 8))(v75, v87);
      return (*(v95 + 8))(v91);
    }

    sub_22C3A5E98(v53);
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v54 = v102;
    v55 = v101;
    *v56 = v100;
    *(v56 + 16) = v55;
    *(v56 + 32) = v54;
    swift_willThrow();
    (*(v18 + 8))(v98, v89);
    v57 = sub_22C3A785C();
    v58(v57);
    sub_22C9087BC();
    sub_22C369848();
    (*(v59 + 8))(v103);
    sub_22C3A5E98(v52);
  }

  (*(v95 + 8))(v91, v96);
  sub_22C90069C();
  sub_22C369848();
  return (*(v60 + 8))(v99);
}

uint64_t sub_22C3A5908(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22C3A5968(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    sub_22C3A7850();
  }

  return sub_22C36BA00();
}

uint64_t sub_22C3A59F0()
{
  sub_22C3704AC();
  if (v3)
  {
    v4 = v1;
    v5 = v3 - 1;
    v6 = v2(0);
    sub_22C36985C();
    (*(v7 + 16))(v0, v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    v8 = sub_22C37049C();
    v11 = v6;
  }

  else
  {
    v2(0);
    v8 = sub_22C37582C();
  }

  return sub_22C36C640(v8, v9, v10, v11);
}

uint64_t sub_22C3A5AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3A5AFC()
{
  sub_22C3704AC();
  if (v1)
  {
    v2 = v0(0);
    sub_22C372570();
    sub_22C3A726C();
    v3 = sub_22C37049C();
    v6 = v2;
  }

  else
  {
    v0(0);
    v3 = sub_22C37582C();
  }

  return sub_22C36C640(v3, v4, v5, v6);
}

uint64_t sub_22C3A5BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24 * v1 + 24);
    v3 = sub_22C36BA00();
    sub_22C3A775C(v3, v4, v2);
  }

  else
  {
    sub_22C3A7850();
  }

  return sub_22C36BA00();
}

void sub_22C3A5C2C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    sub_22C3A7850();
LABEL_5:
    sub_22C36BA00();
    return;
  }

  if ((a4 >> 1) > a3)
  {
    v4 = *(a2 + 24 * (a4 >> 1) - 8);
    v5 = sub_22C36BA00();
    sub_22C3A775C(v5, v6, v4);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_22C3A5C94(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    sub_22C3A7850();
  }

  return sub_22C36BA00();
}

uint64_t sub_22C3A5CEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    sub_22C3A7850();
  }

  return sub_22C36BA00();
}

void sub_22C3A5D48()
{
  sub_22C3704AC();
  if (v2)
  {
    v3 = (v1 + 24 * v2);
    v5 = v3[1];
    v4 = v3[2];
    v6 = v3[3];
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v6 = 0;
  }

  *v0 = v5;
  v0[1] = v4;
  v0[2] = v6;
}

uint64_t sub_22C3A5DAC()
{
  sub_22C3704AC();
  if (v0)
  {
    v1 = sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
    sub_22C372570();
    sub_22C3A7214();
    v2 = sub_22C37049C();
    v5 = v1;
  }

  else
  {
    sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
    v2 = sub_22C37582C();
  }

  return sub_22C36C640(v2, v3, v4, v5);
}

uint64_t sub_22C3A5E98(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C3A5F00()
{
  result = qword_27D9BA810;
  if (!qword_27D9BA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BA810);
  }

  return result;
}

uint64_t Session.Event.init(programStatements:transcript:overrideId:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a6;
  v57 = a5;
  v54 = a1;
  v55 = a4;
  v51 = a3;
  v7 = sub_22C902D3C();
  MEMORY[0x28223BE20](v7 - 8);
  sub_22C369838();
  v49 = v9 - v8;
  sub_22C36BA0C();
  v56 = sub_22C90888C();
  sub_22C369824();
  v53 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v14 = v13 - v12;
  v50 = sub_22C9089DC();
  sub_22C369824();
  v48 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v47 = v18 - v17;
  v19 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  v25 = sub_22C908A0C();
  sub_22C369824();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v31 = v30 - v29;
  v61 = a2;
  sub_22C9087DC();
  sub_22C38B744();
  sub_22C3A59F0();

  sub_22C3A7214();
  if (sub_22C370B74(v22, 1, v25) == 1)
  {

    sub_22C3A5E98(v22);
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v32 = v60;
    v33 = v59;
    *v34 = v58;
    *(v34 + 16) = v33;
    *(v34 + 32) = v32;
    swift_willThrow();
    (*(v53 + 8))(v57, v56);
    sub_22C90880C();
    sub_22C369848();
    (*(v35 + 8))(v61);
    return sub_22C3A5E98(v24);
  }

  else
  {
    sub_22C3A5E98(v24);
    v37 = *(v27 + 32);
    v46 = v31;
    v37(v31, v22, v25);
    v38 = v53;
    v40 = v56;
    v39 = v57;
    (*(v53 + 16))(v14, v57, v56);
    sub_22C9088AC();
    v41 = v47;
    sub_22C90889C();
    v42 = v48;
    v43 = v50;
    (*(v48 + 104))(v41, *MEMORY[0x277D1E6F8], v50);
    v44 = v46;
    sub_22C90893C();
    (*(v38 + 8))(v39, v40);
    sub_22C90880C();
    sub_22C369848();
    (*(v45 + 8))(v61);
    (*(v42 + 8))(v41, v43);
    return (*(v27 + 8))(v44, v25);
  }
}

uint64_t sub_22C3A6410@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22C9089DC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v43 = sub_22C90069C();
  sub_22C369824();
  v39 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C908A0C();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v21 = v20 - v19;
  v22 = sub_22C9087DC();
  v23 = *(v22 + 16);
  if (v23)
  {
    v41 = v9;
    v36 = a2;
    v42 = v22 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v24 = (v39 + 8);
    v25 = (v17 + 8);
    v40 = (v5 + 88);
    v38 = *MEMORY[0x277D1E710];
    v35 = v5;
    v37 = (v5 + 8);
    v26 = v22;
    while (v23 <= *(v26 + 16))
    {
      --v23;
      (*(v17 + 16))(v21, v42 + *(v17 + 72) * v23, v15);
      sub_22C9087FC();
      v27 = sub_22C90067C();
      (*v24)(v14, v43);
      if (v27)
      {
        sub_22C9089EC();
        (*v25)(v21, v15);
        if ((*v40)(v41, v3) == v38)
        {

          (*(v35 + 96))(v41, v3);
          v32 = sub_22C9086FC();
          sub_22C36985C();
          (*(v33 + 32))(v36, v41, v32);
          v28 = v36;
          v29 = 0;
          v30 = 1;
          v31 = v32;
          return sub_22C36C640(v28, v29, v30, v31);
        }

        (*v37)(v41, v3);
        if (!v23)
        {
          goto LABEL_9;
        }
      }

      else
      {
        (*v25)(v21, v15);
        if (!v23)
        {
          goto LABEL_9;
        }
      }
    }

    __break(1u);
  }

LABEL_9:

  sub_22C9086FC();
  v28 = sub_22C37582C();
  return sub_22C36C640(v28, v29, v30, v31);
}

uint64_t default argument 0 of AgenticRemotePlanningService.init(endpoint:)()
{
  swift_getKeyPath();
  sub_22C901F3C();

  return v1;
}

uint64_t sub_22C3A6830@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C901E0C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t default argument 1 of ActionResolverRequestEvaluator.init<A, B>(toolbox:actionRequirements:toolExecutionSession:)@<X0>(void *a1@<X8>)
{
  if (qword_281430890 != -1)
  {
    swift_once();
  }

  *a1 = qword_281437500;
}

uint64_t _s30IntelligenceFlowPlannerRuntime14QueryDecoratorC27clientApplicationIdentifier16toolboxResources17selfLoggerFactory10signposter13contextClientACSSSg_AA07ToolboxK0CSgAA0E29DecorationSELFLoggingBuilding_pAA0eS11Signposting_pAA016ContextRetrievalQ0_ptcfcfA3__0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22C9043BC();
  swift_allocObject();
  result = sub_22C9043AC();
  a1[3] = v2;
  a1[4] = &protocol witness table for ContextRetrieval;
  *a1 = result;
  return result;
}

uint64_t sub_22C3A69F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3A6A18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_22C3A6A68(uint64_t a1)
{
  v1 = sub_22C90A11C();
  v2 = MEMORY[0x2318B7920](v1);

  return v2;
}

uint64_t sub_22C3A6AA0(uint64_t a1, uint64_t a2)
{
  sub_22C90A11C();
  sub_22C909FFC();
}

uint64_t sub_22C3A6AF4(uint64_t a1, uint64_t a2)
{
  sub_22C90A11C();
  sub_22C90B62C();
  sub_22C909FFC();
  v2 = sub_22C90B66C();

  return v2;
}

uint64_t sub_22C3A6B68()
{
  sub_22C36986C();

  result = sub_22C90A0FC();
  *v0 = 0;
  return result;
}

uint64_t sub_22C3A6BDC()
{
  sub_22C36986C();

  v2 = sub_22C90A10C();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_22C3A6C64@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C3A6C98(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_22C3A6CD8()
{
  v1 = sub_22C372564();
  result = sub_22C8C6100(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_22C3A6D00(uint64_t a1)
{
  v2 = sub_22C3A70C8(&qword_28142F9A0, type metadata accessor for MLModelMetadataKey, &unk_22C90CFAC);
  v3 = sub_22C3A70C8(&qword_27D9BA9C8, type metadata accessor for MLModelMetadataKey, &unk_22C90CC80);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22C3A6DBC(uint64_t a1)
{
  v2 = sub_22C3A70C8(&qword_27D9BA9B8, type metadata accessor for DocumentReadingOptionKey, &unk_22C90CF6C);
  v3 = sub_22C3A70C8(&qword_27D9BA9C0, type metadata accessor for DocumentReadingOptionKey, &unk_22C90CD8C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22C3A6E78(uint64_t a1)
{
  v2 = sub_22C3A70C8(&qword_27D9BA9A8, type metadata accessor for DocumentType, &unk_22C90CEE4);
  v3 = sub_22C3A70C8(&qword_27D9BA9B0, type metadata accessor for DocumentType, &unk_22C90CE8C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22C3A6F34@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22C90A0EC();

  *a2 = v3;
  return result;
}

uint64_t sub_22C3A6F7C(uint64_t a1)
{
  v2 = sub_22C3A70C8(&qword_27D9BA900, type metadata accessor for NLLanguage, &unk_22C90C8CC);
  v3 = sub_22C3A70C8(&qword_27D9BA908, type metadata accessor for NLLanguage, &unk_22C90C86C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22C3A70C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C3A7158(uint64_t a1)
{
  v2 = sub_22C3A70C8(&qword_27D9BA9D0, type metadata accessor for NLTagScheme, &unk_22C90CB80);
  v3 = sub_22C3A70C8(&qword_27D9BA9D8, type metadata accessor for NLTagScheme, &unk_22C90CB20);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22C3A7214()
{
  sub_22C36986C();
  sub_22C3A5908(v1, v2);
  sub_22C36985C();
  v3 = sub_22C36BA00();
  v4(v3);
  return v0;
}

uint64_t sub_22C3A726C()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

__n128 sub_22C3A7350(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_22C3A7364(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3A7384(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_22C3A7724(uint64_t a1)
{
  sub_22C90A11C();
  v1 = sub_22C90A0EC();

  return v1;
}

uint64_t sub_22C3A775C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for UIControlToolRetriever(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for UIControlToolRetriever(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UIControlToolRetriever(uint64_t result, int a2, int a3)
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

void sub_22C3A77D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t Dictionary.asyncMapValues<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  sub_22C90AC6C();
  v7[10] = swift_task_alloc();
  v7[11] = *(a5 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = *(a4 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_getTupleTypeMetadata2();
  v10 = sub_22C90AC6C();
  v7[18] = v10;
  v7[19] = *(v10 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3A7A7C, 0, 0);
}

uint64_t sub_22C3A7A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  v14 = v12[5];
  v12[2] = sub_22C909E8C();
  v15 = v12[5];
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v14 = sub_22C90B18C() | 0x8000000000000000;
  }

  else
  {
    v16 = v15 + 64;
    v19 = -1 << *(v15 + 32);
    v17 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v15 + 64);
  }

  v12[22] = v14;
  v12[23] = v16;
  v22 = v12[14];
  v23 = v12[11];
  v12[25] = 0;
  v12[26] = v18;
  v12[24] = v17;

  if ((v14 & 0x8000000000000000) != 0)
  {
    if (sub_22C90B19C())
    {
      sub_22C90B4CC();
      swift_unknownObjectRelease();
      sub_22C90B4CC();
      swift_unknownObjectRelease();
      v24 = 0;
      v13 = v18;
LABEL_17:
      v32 = v12[20];
      v33 = v12[13];
      v34 = v12[11];
      v35 = v12[7];
      v36 = *(v12[17] + 48);
      (*(v12[14] + 32))(v32, v12[16], v12[6]);
      (*(v34 + 32))(v32 + v36, v33, v35);
      v37 = 0;
      v26 = v24;
      goto LABEL_18;
    }

    v26 = 0;
    v37 = 1;
    v13 = v18;
  }

  else
  {
    if (v18)
    {
      v24 = 0;
      a9 = v18;
LABEL_16:
      v28 = v12[13];
      v29 = v12[7];
      sub_22C377B0C();
      v31 = v30 | (v24 << 6);
      (*(v22 + 16))();
      (*(v23 + 16))(v28, *(v14 + 56) + *(v23 + 72) * v31, v29);
      goto LABEL_17;
    }

    v25 = 0;
    v26 = ((v17 + 64) >> 6) - 1;
    while (v26 != v25)
    {
      v24 = v25 + 1;
      if (*(v16 + 8 + 8 * v25++))
      {
        a9 = 0;
        goto LABEL_16;
      }
    }

    v13 = 0;
    v37 = 1;
  }

LABEL_18:
  v12[27] = v26;
  v12[28] = v13;
  v39 = v12[20];
  v38 = v12[21];
  v41 = v12[18];
  v40 = v12[19];
  v42 = v12[17];
  sub_22C36C640(v39, v37, 1, v42);
  (*(v40 + 32))(v38, v39, v41);
  if (sub_22C370B74(v38, 1, v42) == 1)
  {
    sub_22C36A674(v12[22]);

    sub_22C3714CC();
    sub_22C372034();
  }

  else
  {
    v52 = sub_22C369880();
    v53(v52);
    v54 = sub_22C38B75C();
    v55(v54);
    sub_22C36A67C();
    a9 = v56;
    v57 = swift_task_alloc();
    v12[29] = v57;
    *v57 = v12;
    sub_22C37310C(v57);
    sub_22C372034();
  }

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_22C3A7E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v9;
  *(*v9 + 240) = v8;

  if (v8)
  {
    (*(v10[14] + 8))(v10[15], v10[6]);

    v11 = sub_22C3A82C8;
  }

  else
  {
    v11 = sub_22C3A7F50;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_22C3A7F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  v14 = v12[11];
  v13 = v12[12];
  v15 = v12[7];
  v16 = v12[6];
  sub_22C36C640(v12[10], 0, 1, v12[8]);
  sub_22C909F2C();
  sub_22C909F3C();
  result = (*(v14 + 8))(v13, v15);
  v19 = v12[27];
  v18 = v12[28];
  v12[25] = v19;
  v12[26] = v18;
  v20 = v12[22];
  if (v20 < 0)
  {
    if (!sub_22C90B19C())
    {
      v34 = 1;
      v22 = v19;
      v16 = v18;
      goto LABEL_11;
    }

    sub_22C90B4CC();
    swift_unknownObjectRelease();
    sub_22C90B4CC();
    swift_unknownObjectRelease();
    v21 = v19;
    v16 = v18;
LABEL_10:
    v29 = v12[20];
    v30 = v12[13];
    v31 = v12[11];
    v32 = v12[7];
    v33 = *(v12[17] + 48);
    (*(v12[14] + 32))(v29, v12[16], v12[6]);
    (*(v31 + 32))(v29 + v33, v30, v32);
    v34 = 0;
    v22 = v21;
LABEL_11:
    v12[27] = v22;
    v12[28] = v16;
    v36 = v12[20];
    v35 = v12[21];
    v37 = v12[18];
    v38 = v12[19];
    v39 = v12[17];
    sub_22C36C640(v36, v34, 1, v39);
    (*(v38 + 32))(v35, v36, v37);
    if (sub_22C370B74(v35, 1, v39) == 1)
    {
      sub_22C36A674(v12[22]);

      sub_22C3714CC();
      sub_22C372034();
    }

    else
    {
      v48 = sub_22C369880();
      v49(v48);
      v50 = sub_22C38B75C();
      v51(v50);
      sub_22C36A67C();
      a9 = v52;
      v53 = swift_task_alloc();
      v12[29] = v53;
      *v53 = v12;
      sub_22C37310C(v53);
      sub_22C372034();
    }

    return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }

  v21 = v19;
  if (v18)
  {
LABEL_7:
    v23 = v12[13];
    v24 = v12[11];
    v25 = v12[7];
    sub_22C377B0C();
    v27 = v26 | (v21 << 6);
    (*(v28 + 16))();
    (*(v24 + 16))(v23, *(v20 + 56) + *(v24 + 72) * v27, v25);
    goto LABEL_10;
  }

  v22 = v19;
  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= ((v12[24] + 64) >> 6))
    {
      v16 = 0;
      v34 = 1;
      goto LABEL_11;
    }

    ++v22;
    if (*(v12[23] + 8 * v21))
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3A82C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  v13 = v12[12];
  v14 = v12[11];
  v15 = v12[7];
  sub_22C36A674(v12[22]);
  (*(v14 + 8))(v13, v15);

  sub_22C372034();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t StructuredContext.SiriRequestContext.mode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C9063DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  v9 = sub_22C903A5C();
  if (!v10)
  {
    sub_22C90405C();
    v22 = sub_22C9063CC();
    v23 = sub_22C90AADC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22C366000, v22, v23, "No response mode", v24, 2u);
      MEMORY[0x2318B9880](v24, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    goto LABEL_14;
  }

  v11 = v9;
  v12 = v10;
  v13 = sub_22C90A1BC();
  v15 = v14;
  if (v13 != 0x6C6E6F6563696F76 || v14 != 0xE900000000000079)
  {
    v17 = v13;
    if ((sub_22C36A6B0(0x6C6E6F6563696F76, 0xE900000000000079) & 1) == 0)
    {
      v26 = v17 == 0x726F666563696F76 && v15 == 0xEC00000064726177;
      if (v26 || (sub_22C36A6B0(0x726F666563696F76, 0xEC00000064726177) & 1) != 0)
      {

        v18 = MEMORY[0x277D1DC20];
        goto LABEL_8;
      }

      v27 = v17 == 0x6679616C70736964 && v15 == 0xEE0064726177726FLL;
      if (v27 || (sub_22C36A6B0(0x6679616C70736964, 0xEE0064726177726FLL) & 1) != 0)
      {

        v18 = MEMORY[0x277D1DC28];
        goto LABEL_8;
      }

      if (v17 == 0x6F79616C70736964 && v15 == 0xEB00000000796C6ELL)
      {
      }

      else
      {
        v29 = sub_22C36A6B0(0x6F79616C70736964, 0xEB00000000796C6ELL);

        if ((v29 & 1) == 0)
        {
          sub_22C90405C();

          v30 = sub_22C9063CC();
          v31 = sub_22C90AAEC();

          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v36 = v33;
            *v32 = 136315138;
            v34 = sub_22C36F9F4(v11, v12, &v36);

            *(v32 + 4) = v34;
            _os_log_impl(&dword_22C366000, v30, v31, "Unknown response mode %s", v32, 0xCu);
            sub_22C36FF94(v33);
            MEMORY[0x2318B9880](v33, -1, -1);
            MEMORY[0x2318B9880](v32, -1, -1);
          }

          else
          {
          }

          (*(v3 + 8))(v8, v2);
LABEL_14:
          v25 = sub_22C90687C();
          return sub_22C36C640(a1, 1, 1, v25);
        }
      }

      v18 = MEMORY[0x277D1DC18];
      goto LABEL_8;
    }
  }

  v18 = MEMORY[0x277D1DC30];
LABEL_8:
  v19 = *v18;
  v20 = sub_22C90687C();
  (*(*(v20 - 8) + 104))(a1, v19, v20);

  return sub_22C36C640(a1, 0, 1, v20);
}

char *sub_22C3A880C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22C3A5908(&qword_27D9BA9E8, &qword_22C90D030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void static Session.Transcript.userQuery(event:)()
{
  sub_22C36BA7C();
  sub_22C906B9C();
  sub_22C369824();
  v52[1] = v1;
  v52[2] = v0;
  MEMORY[0x28223BE20](v0);
  sub_22C3698A8();
  v52[0] = v2;
  sub_22C36BA0C();
  sub_22C906B6C();
  sub_22C369824();
  v52[4] = v4;
  v52[5] = v3;
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v52[3] = v5;
  sub_22C36BA0C();
  sub_22C90720C();
  sub_22C369824();
  v54 = v7;
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22C3698A8();
  v53 = v8;
  sub_22C36BA0C();
  v9 = sub_22C90873C();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  sub_22C9089DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  v56 = sub_22C906C4C();
  sub_22C369824();
  v21 = v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v52 - v26;
  sub_22C9089EC();
  v28 = sub_22C36EBF0();
  v30 = v29(v28);
  if (v30 == *MEMORY[0x277D1E858])
  {
    v31 = sub_22C36EBF0();
    v32(v31);
    (*(v11 + 32))(v15, v19, v9);
    sub_22C90763C();
    (*(v11 + 8))(v15, v9);
  }

  else
  {
    if (v30 != *MEMORY[0x277D1E778])
    {
      v44 = sub_22C36EBF0();
      v45(v44);
      goto LABEL_12;
    }

    v33 = sub_22C36EBF0();
    v34(v33);
    v35 = v53;
    v36 = v54;
    v37 = v55;
    (*(v54 + 32))(v53, v19, v55);
    sub_22C9071FC();
    (*(v36 + 8))(v35, v37);
  }

  v38 = v56;
  (*(v21 + 16))(v25, v27, v56);
  v39 = sub_22C37493C();
  v41 = v40(v39);
  if (v41 == *MEMORY[0x277D1DDC8])
  {
    goto LABEL_6;
  }

  if (v41 == *MEMORY[0x277D1DDD0] || v41 == *MEMORY[0x277D1DDD8])
  {
    v46 = sub_22C37493C();
    v47(v46);
    v48 = sub_22C380424();
    v49(v48);
    sub_22C906B5C();
    v50 = sub_22C370018();
    v51(v50);
    (*(v21 + 8))(v27, v38);
    goto LABEL_12;
  }

  if (v41 == *MEMORY[0x277D1DD78])
  {
LABEL_6:
    v42 = *(v21 + 8);
    v42(v27, v38);
    v43 = sub_22C37493C();
    (v42)(v43);
LABEL_12:
    sub_22C36CC48();
    return;
  }

  sub_22C90B4EC();
  __break(1u);
}

void sub_22C3A8E40()
{
  sub_22C36BA7C();
  v0 = sub_22C908A0C();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = *(sub_22C9087DC() + 16);
  if (v7)
  {
    v8 = v2 + 16;
    sub_22C36BA94();
    v11 = v9 + v10;
    v28 = *(v8 + 56);
    v29 = v12;
    v27 = (v8 - 8);
    v13 = MEMORY[0x277D84F90];
    v26 = v0;
    do
    {
      v29(v6, v11, v0);
      v30[0] = sub_22C90891C();
      v30[1] = v14;
      MEMORY[0x28223BE20](v30[0]);
      sub_22C369920();
      *(v15 - 16) = v30;
      v17 = sub_22C5EC08C(sub_22C3AC11C, v16, v13);

      if (v17)
      {
        (*v27)(v6, v0);
      }

      else
      {
        v18 = sub_22C90891C();
        v20 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C590270(0, *(v13 + 16) + 1, 1, v13);
          v13 = v24;
        }

        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_22C590270(v21 > 1, v22 + 1, 1, v13);
          v13 = v25;
        }

        v0 = v26;
        (*v27)(v6, v26);
        *(v13 + 16) = v22 + 1;
        v23 = v13 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      v11 += v28;
      --v7;
    }

    while (v7);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  sub_22C3A5968(v13);

  sub_22C36CC48();
}

void sub_22C3A909C()
{
  sub_22C36BA7C();
  v0 = sub_22C90069C();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C3A8E40();
  if (!v8)
  {
    sub_22C903F6C();
    v9 = sub_22C9063CC();
    v10 = sub_22C90AADC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22C366000, v9, v10, "No newestClientRequestId, returning a UUID.", v11, 2u);
      MEMORY[0x2318B9880](v11, -1, -1);
    }

    v12 = sub_22C36EBF0();
    v13(v12);
    sub_22C90068C();
    sub_22C90065C();
    (*(v2 + 8))(v6, v0);
  }

  sub_22C372FA4();
  sub_22C36CC48();
}

uint64_t sub_22C3A9268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v5 = sub_22C9089DC();
  sub_22C369824();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = sub_22C90873C();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  v28[1] = a1;
  sub_22C9089EC();
  v21 = sub_22C9087DC();
  v32[3] = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  v32[4] = sub_22C3AC13C();
  v32[0] = v21;
  sub_22C9089CC();
  v22 = *(v7 + 8);
  v22(v11, v5);
  sub_22C36FF94(v32);
  if ((*(v7 + 88))(v13, v5) != *MEMORY[0x277D1E858])
  {
    v22(v13, v5);
    goto LABEL_9;
  }

  (*(v7 + 96))(v13, v5);
  (*(v16 + 32))(v20, v13, v14);
  if (sub_22C90891C() == v29 && v23 == v30)
  {
  }

  else
  {
    v25 = sub_22C90B4FC();

    if ((v25 & 1) == 0)
    {
      (*(v16 + 8))(v20, v14);
LABEL_9:
      v26 = sub_22C903B1C();
      return sub_22C36C640(v31, 1, 1, v26);
    }
  }

  sub_22C90871C();
  return (*(v16 + 8))(v20, v14);
}

void sub_22C3A9540()
{
  sub_22C36BA7C();
  v1 = v0;
  sub_22C9089DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v3 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = sub_22C908A0C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C9087DC();
  sub_22C3A5950(v14);

  if (sub_22C370B74(v6, 1, v7) == 1)
  {
    sub_22C3AC228(v6, &qword_27D9BA808, &qword_22C90C6E0);
    v15 = 1;
  }

  else
  {
    v26 = v1;
    v16 = *(v9 + 32);
    v16(v13, v6, v7);
    sub_22C9089EC();
    v17 = sub_22C370018();
    if (v18(v17) == *MEMORY[0x277D1E838])
    {
      v19 = sub_22C370018();
      v20(v19);
      v21 = v26;
      v22 = sub_22C372FA4();
      (v16)(v22);
      v1 = v21;
      v15 = 0;
    }

    else
    {
      (*(v9 + 8))(v13, v7);
      v23 = sub_22C370018();
      v24(v23);
      v15 = 1;
      v1 = v26;
    }
  }

  sub_22C36C640(v1, v15, 1, v7);
  sub_22C36CC48();
}

void sub_22C3A97AC()
{
  sub_22C36BA7C();
  v1 = v0;
  v40 = sub_22C901FAC();
  sub_22C369824();
  v34 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v39 = v4;
  sub_22C36BA0C();
  v5 = sub_22C9089DC();
  sub_22C369824();
  v43 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v42 = v8;
  sub_22C36BA0C();
  v9 = sub_22C908CEC();
  sub_22C369824();
  v32 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C908A0C();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v21 = v20 - v19;
  v22 = sub_22C9087DC();
  v23 = *(v22 + 16);
  if (v23)
  {
    v41 = v9;
    v31 = v1;
    sub_22C36BA94();
    v9 = v22 + v24;
    v1 = v42;
    v46 = (v43 + 88);
    v45 = *MEMORY[0x277D1E730];
    v36 = (v43 + 96);
    v37 = (v43 + 8);
    v44 = (v32 + 32);
    v33 = v22 + v24;
    v35 = (v34 + 8);
    v38 = v22;
    while (v23 <= *(v22 + 16))
    {
      --v23;
      (*(v17 + 16))(v21, v9 + *(v17 + 72) * v23, v15);
      sub_22C9089EC();
      (*(v17 + 8))(v21, v15);
      if ((*v46)(v1, v5) == v45)
      {
        (*v36)(v1, v5);
        v25 = v14;
        v26 = *v44;
        v9 = v41;
        (*v44)(v25, v1, v41);
        sub_22C9068FC();
        v27 = sub_22C901F6C();
        (*v35)(v39, v40);
        if (v27)
        {

          v1 = v31;
          v26(v31, v25, v41);
          v30 = 0;
          goto LABEL_11;
        }

        sub_22C372050();
        v28 = sub_22C372FA4();
        v29(v28);
        v14 = v25;
        v1 = v42;
        v22 = v38;
        v9 = v33;
        if (!v23)
        {
          goto LABEL_9;
        }
      }

      else
      {
        (*v37)(v1, v5);
        if (!v23)
        {
LABEL_9:

          v30 = 1;
          v1 = v31;
          v9 = v41;
          goto LABEL_11;
        }
      }
    }

    __break(1u);
  }

  v30 = 1;
LABEL_11:
  sub_22C36C640(v1, v30, 1, v9);
  sub_22C36CC48();
}

uint64_t sub_22C3A9BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v326 = sub_22C906AFC();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  sub_22C36D234(v4);
  v5 = sub_22C3A5908(&qword_27D9BAA00, &qword_22C911F60);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  sub_22C36D5B4();
  sub_22C36D234(v7);
  v8 = sub_22C3A5908(&qword_27D9BAA08, &qword_22C90D038);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C36D5B4();
  sub_22C3698F8(v10);
  v323 = sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  sub_22C3698F8(v12);
  v319 = sub_22C90769C();
  sub_22C369824();
  v318 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  sub_22C36D234(v15);
  v16 = sub_22C3A5908(&qword_27D9BAA10, &qword_22C90D040);
  v17 = sub_22C369914(v16);
  MEMORY[0x28223BE20](v17);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v18);
  sub_22C36BA64();
  sub_22C3698F8(v19);
  v320 = sub_22C90658C();
  sub_22C369824();
  v315 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA64();
  sub_22C3698F8(v24);
  v25 = sub_22C906ACC();
  sub_22C369824();
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA64();
  sub_22C36D234(v28);
  v29 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v29);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  sub_22C36D5B4();
  sub_22C36D234(v31);
  v32 = sub_22C3A5908(&qword_27D9BAA20, &qword_22C90D048);
  sub_22C369914(v32);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v33);
  sub_22C36D5B4();
  sub_22C3698F8(v34);
  v337 = sub_22C90839C();
  sub_22C369824();
  v328 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22C3698A8();
  sub_22C3698F8(v37);
  v336 = sub_22C9083DC();
  sub_22C369824();
  v344 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA64();
  sub_22C3698F8(v41);
  v341 = sub_22C906DDC();
  sub_22C369824();
  MEMORY[0x28223BE20](v42);
  sub_22C3698A8();
  sub_22C3698F8(v43);
  v369 = sub_22C90654C();
  sub_22C369824();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v47);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v57);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA64();
  v362 = v59;
  sub_22C36BA0C();
  v60 = sub_22C901FAC();
  sub_22C369824();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v64);
  sub_22C36BA64();
  sub_22C36BA0C();
  sub_22C9070DC();
  sub_22C369824();
  v363 = v66;
  v364 = v65;
  MEMORY[0x28223BE20](v65);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA64();
  v368 = v68;
  sub_22C36BA0C();
  v353 = sub_22C9089DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v69);
  sub_22C3698A8();
  sub_22C3698F8(v70);
  v350 = sub_22C9088CC();
  sub_22C369824();
  v72 = v71;
  MEMORY[0x28223BE20](v73);
  sub_22C3698A8();
  sub_22C3698F8(v74);
  v352 = sub_22C908A0C();
  sub_22C369824();
  v76 = v75;
  MEMORY[0x28223BE20](v77);
  sub_22C3698A8();
  sub_22C36D234(v78);
  if (!*(sub_22C9087DC() + 16))
  {
    goto LABEL_79;
  }

  v332 = v25;
  sub_22C36BA94();
  v359 = (v45 + 88);
  v345 = (v45 + 16);
  v356 = (v45 + 96);
  v357 = *MEMORY[0x277D1DAA8];
  v347 = (v72 + 8);
  v81 = v363;
  v358 = (v363 + 8);
  v82 = v362;
  v83 = v348;
  v349 = v76;
  while (1)
  {
    if (v80 > *(v79 + 16))
    {
      __break(1u);
LABEL_85:
      sub_22C37EFC0();

      v236 = *v82;
      v237 = v82[1];
      v238 = *(v81 + 48);
      v239 = sub_22C3A5908(&qword_27D9BAA38, &unk_22C911F90);
      v240 = *(v239 + 48);
      *v329 = v236;
      v329[1] = v237;
      (*(v62 + 32))(v329 + v240, v82 + v238, v60);
      sub_22C36C640(v329, 0, 1, v239);
      v365(v329 + *(v239 + 48), v60);
      sub_22C906ABC();
      sub_22C37205C();
      sub_22C908A2C();
      v241 = *(v318 + 8);
      v241(v321, v319);
      if (sub_22C370B74(v236, 1, v320) == 1)
      {

        sub_22C3AC228(v236, &qword_27D9BAA10, &qword_22C90D040);
        type metadata accessor for InterpreterError(0);
        sub_22C37FC10();
        sub_22C3AC27C(v242, v243, &protocol conformance descriptor for InterpreterError);
        swift_allocError();
        v245 = v244;
        sub_22C906ABC();
        v246 = sub_22C90768C();
        v248 = v247;
        v241(v321, v319);
        *v245 = v246;
        v245[1] = v248;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_22C36BA4C();
        v249(v331, v332);
LABEL_96:
        v282 = sub_22C3884F0();
        v283(v282, v364);
        v284 = sub_22C3AC2C4();
        v285(v284);
        sub_22C372050();
        return v286(v362, v369);
      }

      (*(v315 + 32))(v311, v236, v320);
      sub_22C9068FC();
      (*(v315 + 16))(v314, v311, v320);
      sub_22C906ABC();
      sub_22C907D4C();
      (*(v315 + 8))(v311, v320);
      sub_22C36BA4C();
      v256(v83, v332);
      v257 = sub_22C3884F0();
      v258(v257, v364);
      v259 = sub_22C3AC2C4();
      v260(v259);
      v261 = sub_22C907D6C();
      v262 = a2;
      goto LABEL_98;
    }

    v354 = v80 - 1;
    v84 = sub_22C382584();
    v85(v84);
    sub_22C37205C();
    sub_22C9089EC();
    (*(v76 + 8))(v81, v352);
    sub_22C36BA4C();
    v81 = v353;
    v86(v76, v353);
    sub_22C369908();
    if (v114)
    {
      break;
    }

    sub_22C36BA4C();
    v220(v76, v353);
    v79 = sub_22C37EFC0();
    v76 = v349;
LABEL_73:
    v80 = v354;
    if (!v354)
    {
      goto LABEL_79;
    }
  }

  sub_22C36BA4C();
  v87(v76, v353);
  sub_22C36BA4C();
  v88(v83, v76, v350);
  v81 = v83;
  v355 = *(sub_22C90887C() + 16);
  if (!v355)
  {

    sub_22C36BA4C();
    v221(v83, v350);
    v79 = sub_22C37EFC0();
    v76 = v349;
    goto LABEL_73;
  }

  v367 = 0;
  v89 = 0;
  v81 = v363;
  v90 = v364;
  sub_22C36BA94();
  v360 = v91 + v92;
  v93 = v345;
  v361 = v91;
  while (2)
  {
    if (v89 >= *(v91 + 16))
    {
      __break(1u);
LABEL_81:
      sub_22C37EFC0();

      (*(v328 + 32))(v327, v81, v337);
      sub_22C3860DC();
      MEMORY[0x2318B5880]();
      sub_22C37205C();
      sub_22C646D68();
      v231 = sub_22C3AC2F4();
      v232(v231);
      if (sub_22C370B74(v89, 1, v364) == 1)
      {
        v233 = &qword_27D9BAA18;
        v234 = &qword_22C911C40;
        v235 = v89;
LABEL_83:
        sub_22C3AC228(v235, v233, v234);
LABEL_92:
        sub_22C903F8C();
        v266 = v336;
        (*(v344 + 16))(v322, v338, v336);
        v267 = sub_22C9063CC();
        v268 = sub_22C90AADC();
        if (os_log_type_enabled(v267, v268))
        {
          v269 = swift_slowAlloc();
          v370 = swift_slowAlloc();
          *v269 = 136315138;
          MEMORY[0x2318B5880]();
          sub_22C3698BC();
          sub_22C3AC27C(v270, v271, MEMORY[0x277D1C368]);
          sub_22C90B47C();
          v272 = sub_22C3AC2F4();
          v273(v272);
          sub_22C37B4D4();
          v90(v322, v336);
          v274 = sub_22C372FA4();
          v277 = sub_22C36F9F4(v274, v275, v276);

          *(v269 + 4) = v277;
          _os_log_impl(&dword_22C366000, v267, v268, "expected call transcript expression for statementId %s", v269, 0xCu);
          sub_22C36FF94(v370);
          MEMORY[0x2318B9880](v370, -1, -1);
          v266 = v336;
          MEMORY[0x2318B9880](v269, -1, -1);
        }

        else
        {

          sub_22C37B4D4();
          v90(v322, v336);
        }

        sub_22C36FB04();
        v278(v324, v323);
        type metadata accessor for InterpreterError(0);
        sub_22C37FC10();
        sub_22C3AC27C(v279, v280, &protocol conformance descriptor for InterpreterError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_22C36FB04();
        v281(v327, v337);
        v90(v338, v266);
        goto LABEL_96;
      }

      v250 = sub_22C36EBF0();
      v251(v250);
      sub_22C90702C();
      (v82)(v316, v369);
      sub_22C369908();
      if (!v114)
      {
        sub_22C3704B8();
        v263 = sub_22C36EBF0();
        v264(v263);
        sub_22C372050();
        v265(v316, v369);
        goto LABEL_92;
      }

      v306(v316, v369);
      sub_22C36BA4C();
      v252(v312, v316, v332);
      sub_22C37205C();
      sub_22C906ABC();
      sub_22C908A2C();
      sub_22C36FB04();
      v253(v364, v319);
      if (sub_22C370B74(v313, 1, v320) == 1)
      {
        sub_22C36BA4C();
        v254(v312, v332);
        sub_22C3704B8();
        v255(v317, v364);
        v233 = &qword_27D9BAA10;
        v234 = &qword_22C90D040;
        v235 = v313;
        goto LABEL_83;
      }

      v287 = sub_22C37493C();
      v289 = v288(v287);
      MEMORY[0x2318B5880](v289);
      (*(v315 + 16))(v314, v310, v320);
      sub_22C906ABC();
      sub_22C90825C();
      sub_22C907D4C();
      v290 = sub_22C379ED8();
      v291(v290);
      sub_22C36BA4C();
      v292(v312, v332);
      v293 = *v358;
      (*v358)(v317, v364);
      sub_22C36FB04();
      v294(v327, v337);
      sub_22C36BA4C();
      v295(v338, v336);
      v293(v368, v364);
      v296 = sub_22C3AC2C4();
      v297(v296);
      v261 = sub_22C907D6C();
      v262 = a2;
LABEL_98:
      sub_22C36C640(v262, 0, 1, v261);
      sub_22C372050();
      v299 = v362;
      return v298(v299, v369);
    }

    (*(v81 + 16))(v368, v360 + *(v81 + 72) * v89, v90);
    sub_22C3860DC();
    sub_22C9068FC();
    v366 = sub_22C3AC304();
    v94 = sub_22C379ED8();
    v365 = v95;
    (v95)(v94);
    sub_22C90702C();
    v96 = v82;
    v82 = *v359;
    if ((*v359)(v96, v369) == v357)
    {
      v83 = v351;
      v97 = sub_22C36BA70();
      v98(v97);
      sub_22C38A840();
      v99 = sub_22C36BA70();
      v100(v99);
      sub_22C906F2C();
      v101 = sub_22C36BA70();
      v102(v101);
      sub_22C369908();
      if (!v114)
      {
        v110 = sub_22C36BA34();
        v111(v110);
        v112 = sub_22C36BA70();
        v113(v112);
        goto LABEL_27;
      }

      v103 = sub_22C36BA70();
      v104(v103);
      v105 = 0;
      v83 = *(*v351 + 16);
      while (v83 != v105)
      {
        sub_22C379EC4();
        sub_22C3698BC();
        v107 = sub_22C3AC27C(&qword_27D9BAA28, v106, MEMORY[0x277D1C358]);
        v108 = sub_22C3772A8(v107);
        v105 = v90;
        if (v108)
        {
          goto LABEL_15;
        }
      }

LABEL_26:

      v124 = sub_22C36BA34();
      v125(v124);
LABEL_27:
      v82 = v362;
LABEL_28:
      ++v89;
      v367 |= v366;
      sub_22C372050();
      v126(v82, v369);
      v81 = v363;
      v91 = v361;
      if (v89 != v355)
      {
        continue;
      }

      v222 = sub_22C3AC2C4();
      v223(v222);
      v76 = v349;
      if ((v367 & 1) == 0)
      {
        v83 = v348;
        v79 = sub_22C37EFC0();
        goto LABEL_73;
      }

      sub_22C37EFC0();
LABEL_79:

      v230 = sub_22C907D6C();
      return sub_22C36C640(a2, 1, 1, v230);
    }

    break;
  }

  sub_22C369908();
  if (v114)
  {
    v82 = v362;
    (*v93)(v346, v362, v369);
    sub_22C38A840();
    v109(v346, v369);
    goto LABEL_23;
  }

  sub_22C369908();
  if (v114)
  {
    sub_22C382584();
    v82 = v362;
    sub_22C370008();
    v115();
    v116 = sub_22C3AC2E4();
    v117(v116, v83);
    sub_22C906FDC();
    sub_22C906FFC();
LABEL_22:
    sub_22C369848();
    (*(v118 + 8))(v96);
LABEL_23:
    v119 = sub_22C3AC304();
    v120 = sub_22C3AC2F4();
    v121(v120);
    if (v119)
    {
      goto LABEL_76;
    }

    goto LABEL_24;
  }

  sub_22C369908();
  if (v127)
  {
    v82 = v362;
    (*v93)(v339, v362, v369);
    sub_22C38A840();
    v128 = sub_22C36BA70();
    v129(v128);
    sub_22C36BA4C();
    v130(v340, v339, v341);
    sub_22C906DAC();
    v308 = sub_22C3AC304();
    v131 = sub_22C379ED8();
    v83 = v62 + 8;
    (v365)(v131);
    if (v308)
    {
      sub_22C37EFC0();

      sub_22C36BA4C();
      v229(v340, v341);
    }

    else
    {
      sub_22C906DBC();
      v309 = a1;
      v132 = sub_22C901F6C();
      v133 = sub_22C379ED8();
      (v365)(v133);
      sub_22C36BA4C();
      v134(v340, v341);
      if ((v132 & 1) == 0)
      {
        v135 = sub_22C36BA34();
        v136(v135);
        a1 = v309;
        v93 = v345;
        goto LABEL_28;
      }

LABEL_76:
      sub_22C37EFC0();
    }

LABEL_75:
    sub_22C372050();
    v224(v82, v369);
    sub_22C9068FC();
    sub_22C3A9BB4(v342, a2);
    v225 = sub_22C3AC2F4();
    v226(v225);
    sub_22C3704B8();
    v227(v368, v364);
    return (*v347)(v348, v350);
  }

  sub_22C369908();
  if (v137)
  {
    sub_22C382584();
    v82 = v362;
    sub_22C370008();
    v138();
    v139 = sub_22C3AC2E4();
    v141 = v140(v139, v83);
    MEMORY[0x2318B4220](v141);
    sub_22C906D7C();
    goto LABEL_22;
  }

  sub_22C369908();
  if (v142)
  {
    (*v93)(v334, v362, v369);
    v307 = *v356;
    (*v356)(v334, v369);
    sub_22C36BA4C();
    v90 = v336;
    v143(v338, v334, v336);
    v83 = sub_22C9083CC();
    sub_22C37B198(v83, v144, v145, v146, v147, v148, v149, v150, v307);
    MEMORY[0x28223BE20](v151);
    sub_22C369920();
    *(v152 - 16) = a1;
    v81 = v335;
    sub_22C6B05BC(sub_22C3AC208, v153, v83);

    if (sub_22C370B74(v335, 1, v337) != 1)
    {
      goto LABEL_81;
    }

    sub_22C36BA4C();
    v154(v338, v336);
    v155 = sub_22C36BA34();
    v156(v155);
    v157 = v335;
    v158 = &qword_27D9BAA20;
    v159 = &qword_22C90D048;
    goto LABEL_46;
  }

  sub_22C369908();
  if (v160)
  {
    v161 = sub_22C382584();
    v162(v161, v362, v369);
    v163 = sub_22C3AC2E4();
    v164(v163, v369);
    sub_22C36BA4C();
    v83 = v331;
    v165 = sub_22C36BA70();
    v90 = v332;
    v166(v165);
    v167 = sub_22C906A8C();
    sub_22C37B198(v167, v168, v169, v170, v171, v172, v173, v174, v306);
    MEMORY[0x28223BE20](v175);
    sub_22C369920();
    *(v176 - 16) = a1;
    v82 = v330;
    sub_22C6B05E8();

    v81 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
    if (sub_22C370B74(v330, 1, v81) != 1)
    {
      goto LABEL_85;
    }

    sub_22C36BA4C();
    v177(v331, v332);
    v178 = sub_22C36BA34();
    v179(v178);
    sub_22C3AC228(v330, &qword_27D9BAA00, &qword_22C911F60);
    v180 = sub_22C3A5908(&qword_27D9BAA38, &unk_22C911F90);
    sub_22C36C640(v329, 1, 1, v180);
    v157 = v329;
    v158 = &qword_27D9BAA08;
    v159 = &qword_22C90D038;
LABEL_46:
    sub_22C3AC228(v157, v158, v159);
    goto LABEL_27;
  }

  sub_22C369908();
  v82 = v362;
  v90 = v364;
  v96 = v333;
  if (v181)
  {
    v122 = sub_22C3884F0();
    goto LABEL_25;
  }

  sub_22C369908();
  if (v182)
  {
    v183 = sub_22C382584();
    v184(v183, v362, v369);
    v185 = sub_22C3AC2E4();
    v186(v185, v369);
    sub_22C3860DC();
    MEMORY[0x2318B4800]();
    sub_22C90734C();
    goto LABEL_22;
  }

  sub_22C369908();
  if (!v187)
  {
    sub_22C369908();
    if (v196)
    {
      v197 = sub_22C382584();
      v198(v197, v362, v369);
      v199 = sub_22C3AC2E4();
      v201 = v200(v199, v369);
      v83 = MEMORY[0x2318B47E0](v201);
      sub_22C90731C();
      sub_22C369848();
      (*(v202 + 8))();
      v203 = 0;
      v204 = *(v83 + 16);
      while (v204 != v203)
      {
        sub_22C379EC4();
        sub_22C3698BC();
        v206 = sub_22C3AC27C(&qword_27D9BAA28, v205, MEMORY[0x277D1C358]);
        v207 = sub_22C3772A8(v206);
        v203 = v364;
        if (v207)
        {
LABEL_15:
          sub_22C37EFC0();

          v82 = v362;
          goto LABEL_75;
        }
      }

      goto LABEL_26;
    }

    sub_22C369908();
    if (v208)
    {
      v209 = sub_22C382584();
      v210(v209, v362, v369);
      v211 = sub_22C3AC2E4();
      v213 = v212(v211, v369);
      v83 = MEMORY[0x2318B4480](v213);
      sub_22C906FBC();
      sub_22C369848();
      (*(v214 + 8))();
      v215 = 0;
      v216 = *(v83 + 16);
      while (v216 != v215)
      {
        sub_22C379EC4();
        sub_22C3698BC();
        v218 = sub_22C3AC27C(&qword_27D9BAA28, v217, MEMORY[0x277D1C358]);
        v219 = sub_22C3772A8(v218);
        v215 = v364;
        if (v219)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_26;
    }

LABEL_24:
    v122 = sub_22C3884F0();
    v90 = v364;
LABEL_25:
    v123(v122, v90);
    goto LABEL_28;
  }

  sub_22C370008();
  v188();
  sub_22C38A840();
  v189 = v83;
  v83 = v326;
  v190(v325, v189);
  sub_22C36BA4C();
  v191(v333, v325, v326);
  sub_22C3860DC();
  MEMORY[0x2318B3FB0]();
  v192 = sub_22C3AC304();
  v193 = sub_22C3AC2F4();
  v194(v193);
  if ((v192 & 1) == 0)
  {
    sub_22C36BA4C();
    v195(v333, v326);
    goto LABEL_24;
  }

  sub_22C37EFC0();

  sub_22C9068FC();
  v300 = (*(v315 + 104))(v314, *MEMORY[0x277D1DB18], v320);
  MEMORY[0x2318B4B50](v300);
  sub_22C37205C();
  sub_22C90766C();
  sub_22C907D4C();
  sub_22C36BA4C();
  v301(v333, v326);
  sub_22C3704B8();
  v302(v368, v364);
  v303 = sub_22C3AC2C4();
  v304(v303);
  v305 = sub_22C907D6C();
  sub_22C36C640(a2, 0, 1, v305);
  sub_22C372050();
  v299 = v362;
  return v298(v299, v369);
}

uint64_t sub_22C3ABFA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C901FAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90838C();
  v6 = sub_22C901F6C();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

unint64_t sub_22C3AC13C()
{
  result = qword_27D9BA9F8;
  if (!qword_27D9BA9F8)
  {
    sub_22C3AC1A0(&qword_27D9BA9F0, &qword_22C912420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BA9F8);
  }

  return result;
}

uint64_t sub_22C3AC1A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22C3AC228(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_22C3A5908(a2, a3);
  sub_22C369848();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C3AC27C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C3AC304()
{

  return sub_22C901F6C();
}

uint64_t sub_22C3AC31C(uint64_t a1)
{
  v2 = v1;
  sub_22C90910C();
  sub_22C369824();
  v116 = v5;
  v117 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  v105 = v6;
  sub_22C369930();
  MEMORY[0x28223BE20](v7);
  sub_22C36BA64();
  v107 = v8;
  sub_22C36BA0C();
  sub_22C90952C();
  sub_22C369824();
  v114 = v10;
  v115 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v112 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  v113 = v13;
  sub_22C36BA0C();
  v119 = sub_22C90919C();
  sub_22C369824();
  v122 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v104 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA58();
  v106 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA58();
  v109 = v20;
  sub_22C369930();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA64();
  v118 = v22;
  sub_22C36BA0C();
  v23 = sub_22C9093BC();
  sub_22C369824();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22C3698E4();
  v108 = v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v120 = v29;
  v30 = sub_22C3A5908(&qword_27D9BAA50, &qword_22C90D058);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v104 - v32;
  v34 = *(v31 + 56);
  v35 = v25[2];
  v110 = v2;
  v35(&v104 - v32, v2, v23);
  v111 = a1;
  v35(&v33[v34], a1, v23);
  v36 = v25[11];
  v37 = v36(v33, v23);
  v38 = v37;
  v39 = *MEMORY[0x277D72A38];
  v121 = v25;
  if (v37 == v39)
  {
    v40 = v120;
    v35(v120, v33, v23);
    v41 = v25[12];
    v41(v40, v23);
    v108 = *v40;
    v42 = swift_projectBox();
    v43 = v36(&v33[v34], v23);
    if (v43 == v38)
    {
      v120 = v23;
      v41(&v33[v34], v23);
      v117 = *&v33[v34];
      v44 = swift_projectBox();
      v45 = v122;
      v46 = *(v122 + 16);
      v48 = v118;
      v47 = v119;
      v46(v118, v42, v119);
      v49 = v109;
      v46(v109, v44, v47);
      v50 = v113;
      sub_22C9090AC();
      v51 = v112;
      sub_22C9090AC();
      v52 = sub_22C90950C();
      v53 = *(v114 + 8);
      v54 = v51;
      v55 = v115;
      v53(v54, v115);
      v53(v50, v55);
      if (v52)
      {
        v56 = sub_22C90908C();
        v58 = v57;
        v60 = v56 == sub_22C90908C() && v58 == v59;
        v61 = v121;
        if (v60)
        {
          v62 = 1;
        }

        else
        {
          v62 = sub_22C90B4FC();
        }

        v45 = v122;
        v48 = v118;
      }

      else
      {
        v62 = 0;
        v61 = v121;
      }

      v98 = *(v45 + 8);
      v98(v49, v47);
      v98(v48, v47);

      (v61[1])(v33, v120);
      return v62 & 1;
    }

    v82 = v122;
    if (v43 == *MEMORY[0x277D729F8])
    {
      v120 = v23;
      v41(&v33[v34], v23);
      v118 = *&v33[v34];
      v83 = swift_projectBox();
      v84 = v106;
      v85 = v119;
      (*(v82 + 16))(v106, v42, v119);
      v86 = v107;
      (*(v116 + 16))(v107, v83, v117);
      v87 = v113;
      sub_22C9090AC();
      v88 = v112;
      sub_22C9090AC();
      v89 = sub_22C90950C();
      v90 = *(v114 + 8);
      v91 = v88;
      v92 = v115;
      v90(v91, v115);
      v90(v87, v92);
      if (v89)
      {
        v93 = sub_22C90908C();
        v95 = v94;
        if (v93 == sub_22C90908C() && v95 == v96)
        {
          v62 = 1;
        }

        else
        {
          v62 = sub_22C90B4FC();
        }

        v101 = v120;

        v85 = v119;
        v84 = v106;
        v102 = v107;
      }

      else
      {
        v62 = 0;
        v101 = v120;
        v102 = v86;
      }

      (*(v116 + 8))(v102, v117);
      (*(v82 + 8))(v84, v85);

      (v121[1])(v33, v101);
      return v62 & 1;
    }

    v118 = v33;
    goto LABEL_26;
  }

  v118 = v33;
  v120 = v23;
  if (v37 != *MEMORY[0x277D729F8])
  {
LABEL_27:
    v62 = sub_22C9093AC();
    sub_22C3AD35C(v118);
    return v62 & 1;
  }

  v63 = v108;
  v64 = v118;
  v65 = v120;
  v35(v108, v118, v120);
  v66 = v121[12];
  v66(v63, v65);
  if (v36((v64 + v34), v65) != v39)
  {
LABEL_26:

    goto LABEL_27;
  }

  v67 = swift_projectBox();
  v66(v64 + v34, v65);
  v111 = *(v64 + v34);
  v68 = swift_projectBox();
  v69 = v105;
  (*(v116 + 16))(v105, v67, v117);
  v70 = v104;
  v71 = v119;
  (*(v122 + 16))(v104, v68, v119);
  v72 = v113;
  sub_22C9090AC();
  v73 = v112;
  sub_22C9090AC();
  LOBYTE(v67) = sub_22C90950C();
  v74 = *(v114 + 8);
  v75 = v73;
  v76 = v115;
  v74(v75, v115);
  v74(v72, v76);
  if (v67)
  {
    v77 = sub_22C90908C();
    v79 = v78;
    if (v77 == sub_22C90908C() && v79 == v80)
    {
      v62 = 1;
    }

    else
    {
      v62 = sub_22C90B4FC();
    }

    v99 = v120;

    v100 = v121;
    v71 = v119;
  }

  else
  {
    v62 = 0;
    v99 = v120;
    v100 = v121;
  }

  (*(v122 + 8))(v70, v71);
  (*(v116 + 8))(v69, v117);

  (v100[1])(v118, v99);
  return v62 & 1;
}

void sub_22C3ACC84(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C90952C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C9093BC();
  sub_22C369824();
  v79 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C3698E4();
  v82 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA58();
  v83 = v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  v73 = v14;
  sub_22C36BA0C();
  v15 = sub_22C90906C();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C3698E4();
  v72 = v19;
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  v81 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  v24 = v67 - v23;
  v84 = sub_22C9063DC();
  sub_22C369824();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  v29 = v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90405C();
  v70 = *(v17 + 16);
  v71 = v17 + 16;
  v70(v24, v1, v15);
  v30 = sub_22C9063CC();
  v78 = sub_22C90AACC();
  v31 = os_log_type_enabled(v30, v78);
  v67[2] = v6;
  v67[3] = a1;
  if (v31)
  {
    v32 = v17;
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    v34 = v2;
    v35 = v30;
    v36 = *(sub_22C90905C() + 16);

    v37 = sub_22C377B20(v32);
    v38(v37);
    *(v33 + 4) = v36;
    v30 = v35;
    v2 = v34;
    _os_log_impl(&dword_22C366000, v30, v78, "Flattening collection with %ld values", v33, 0xCu);
    v39 = v33;
    v17 = v32;
    MEMORY[0x2318B9880](v39, -1, -1);
  }

  else
  {
    v40 = sub_22C377B20(v17);
    v41(v40);
  }

  (*(v26 + 8))(v29, v84);
  v42 = sub_22C90905C();
  v43 = *(v42 + 16);
  if (!v43)
  {
LABEL_24:

    sub_22C90904C();
    sub_22C90903C();
    return;
  }

  v76 = v15;
  v67[0] = v42;
  v67[1] = v2;
  v45 = v79 + 16;
  v44 = *(v79 + 16);
  v74 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v46 = v42 + v74;
  v47 = *(v79 + 72);
  v79 += 88;
  v78 = *MEMORY[0x277D729E0];
  v84 = (v45 - 8);
  v68 = (v45 + 80);
  v69 = (v45 + 16);
  v75 = v17 + 8;
  v48 = MEMORY[0x277D84F90];
  v49 = v83;
  v50 = v73;
  v77 = v44;
  while (1)
  {
    v44(v50, v46, v7);
    v44(v49, v50, v7);
    v51 = (*v79)(v49, v7);
    if (v51 != v78)
    {
      v63 = *v84;
      (*v84)(v49, v7);
      v44(v82, v50, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C5903C0();
        v48 = v65;
      }

      v64 = *(v48 + 16);
      if (v64 >= *(v48 + 24) >> 1)
      {
        sub_22C5903C0();
        v48 = v66;
      }

      v63(v50, v7);
      *(v48 + 16) = v64 + 1;
      (*v69)(v48 + v74 + v64 * v47, v82, v7);
      v44 = v77;
      goto LABEL_23;
    }

    v52 = v45;
    (*v68)(v49, v7);
    v53 = swift_projectBox();
    v54 = v76;
    v70(v81, v53, v76);

    v55 = v72;
    sub_22C3ACC84(v72);
    v56 = sub_22C90905C();
    v80(v55, v54);
    v57 = *(v56 + 16);
    v58 = *(v48 + 16);
    if (__OFADD__(v58, v57))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v58 + v57 > *(v48 + 24) >> 1)
    {
      sub_22C5903C0();
      v48 = v59;
    }

    v45 = v52;
    v44 = v77;
    v50 = v73;
    if (*(v56 + 16))
    {
      if ((*(v48 + 24) >> 1) - *(v48 + 16) < v57)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v57)
      {
        v60 = *(v48 + 16);
        v61 = __OFADD__(v60, v57);
        v62 = v60 + v57;
        if (v61)
        {
          goto LABEL_28;
        }

        *(v48 + 16) = v62;
      }
    }

    else
    {

      if (v57)
      {
        goto LABEL_26;
      }
    }

    v80(v81, v76);
    (*v84)(v50, v7);
LABEL_23:
    v46 += v47;
    --v43;
    v49 = v83;
    if (!v43)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_22C3AD35C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BAA50, &qword_22C90D058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter@<X0>(void *a1@<X8>)
{
  sub_22C90977C();
  sub_22C369824();
  v31 = v3;
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C90952C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = (v12 - v11);
  v14 = sub_22C9094AC();
  sub_22C369824();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = *(v9 + 16);
  v21(v13, v1, v7);
  if ((*(v9 + 88))(v13, v7) == *MEMORY[0x277D72D18])
  {
    (*(v9 + 96))(v13, v7);
    v22 = swift_projectBox();
    (*(v16 + 16))(v20, v22, v14);

    v23 = swift_allocObject();
    sub_22C90948C();
    v24 = sub_22C9096FC();
    v26 = v25;
    (*(v31 + 8))(v6, v32);
    v23[2] = v24;
    v23[3] = v26;
    v27 = sub_22C90949C();
    v29 = v28;
    (*(v16 + 8))(v20, v14);
    v23[4] = v27;
    v23[5] = v29;
    *a1 = v23;
    return (*(v9 + 104))();
  }

  else
  {
    (*(v9 + 8))(v13, v7);
    return v21(a1, v1, v7);
  }
}

uint64_t ComponentwiseRouter.__allocating_init(planGenerationService:planInterpreterService:queryDecorationService:responseGenerationService:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = swift_allocObject();
  v7 = sub_22C36EBF0();
  ComponentwiseRouter.init(planGenerationService:planInterpreterService:queryDecorationService:responseGenerationService:)(v7, v8, a3, a4);
  return v6;
}

void *ComponentwiseRouter.init(planGenerationService:planInterpreterService:queryDecorationService:responseGenerationService:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = a3[1];
  v10 = *a4;
  v11 = a4[1];
  v4[2] = *a1;
  v4[3] = v5;
  v4[4] = v6;
  v4[5] = v7;
  v4[6] = v8;
  v4[7] = v9;
  v4[8] = v10;
  v4[9] = v11;
  return v4;
}

uint64_t ComponentwiseRouter.routableServiceIdentifiers()()
{
  sub_22C3A5908(&qword_27D9BAA58, &qword_22C90D080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90D070;
  v2 = v0[3];
  *(inited + 32) = v0[2];
  *(inited + 40) = v2;
  v3 = v0[5];
  *(inited + 48) = v0[4];
  *(inited + 56) = v3;
  v4 = v0[7];
  *(inited + 64) = v0[6];
  *(inited + 72) = v4;
  v5 = v0[8];
  v6 = v0[9];
  *(inited + 80) = v5;
  *(inited + 88) = v6;

  return sub_22C3AD7D4(inited);
}

uint64_t sub_22C3AD898(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22C3AF8F8();
  v7 = MEMORY[0x2318B7DB0](v2, &type metadata for PromptString.TaggedRange, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 48;
    do
    {
      v5 += 24;
      sub_22C6A45F4();
      --v4;
    }

    while (v4);

    return v7;
  }

  else
  {
    sub_22C3743B4();
  }

  return v2;
}

void sub_22C3AD9E8()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  sub_22C90952C();
  sub_22C369958();
  MEMORY[0x28223BE20](v2);
  sub_22C36993C();
  MEMORY[0x28223BE20](v3);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_28142FA80, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
  sub_22C388E14();
  sub_22C37FC28(v4);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v5 = sub_22C386F08();
      v1(v5);
      sub_22C3AFF48();
      sub_22C6A521C();
      v6 = sub_22C3AFF38();
      v7(v6);
      sub_22C36D5C0();
    }

    while (!v8);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3ADB10()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  sub_22C902D0C();
  sub_22C369958();
  MEMORY[0x28223BE20](v2);
  sub_22C36993C();
  MEMORY[0x28223BE20](v3);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
  sub_22C388E14();
  sub_22C37FC28(v4);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v5 = sub_22C386F08();
      v1(v5);
      sub_22C3AFF48();
      sub_22C6A538C();
      v6 = sub_22C3AFF38();
      v7(v6);
      sub_22C36D5C0();
    }

    while (!v8);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3ADC38()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  sub_22C901FAC();
  sub_22C369958();
  MEMORY[0x28223BE20](v2);
  sub_22C36993C();
  MEMORY[0x28223BE20](v3);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
  sub_22C388E14();
  sub_22C37FC28(v4);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v5 = sub_22C386F08();
      v1(v5);
      sub_22C3AFF48();
      sub_22C6A54FC();
      v6 = sub_22C3AFF38();
      v7(v6);
      sub_22C36D5C0();
    }

    while (!v8);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3ADD60()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  sub_22C90941C();
  sub_22C369958();
  MEMORY[0x28223BE20](v2);
  sub_22C36993C();
  MEMORY[0x28223BE20](v3);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_27D9BAAA0, MEMORY[0x277D72B00], MEMORY[0x277D72B10]);
  sub_22C388E14();
  sub_22C37FC28(v4);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v5 = sub_22C386F08();
      v1(v5);
      sub_22C3AFF48();
      sub_22C6A566C();
      v6 = sub_22C3AFF38();
      v7(v6);
      sub_22C36D5C0();
    }

    while (!v8);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3ADE88()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = _s14TypedCandidateVMa(0);
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C36993C();
  MEMORY[0x28223BE20](v7);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v8);
  v10 = v50 - v9;
  v11 = *(v2 + 16);
  v12 = sub_22C3AFE98(&qword_27D9BAA88, _s14TypedCandidateVMa, &unk_22C925018);
  v54 = v3;
  v62 = MEMORY[0x2318B7DB0](v11, v3, v12);
  v51 = *(v2 + 16);
  if (v51)
  {
    v13 = 0;
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v50[1] = v2;
    v50[3] = v2 + v14;
    v61 = *(v5 + 72);
    while (1)
    {
      v52 = v13;
      sub_22C372584();
      sub_22C3AFDE4(v15, v10, v16);
      v17 = v62;
      sub_22C90B62C();
      sub_22C9093BC();
      sub_22C3AFE98(&qword_28142FA90, MEMORY[0x277D72A78], MEMORY[0x277D72A88]);
      sub_22C909F8C();
      v18 = &v10[*(v54 + 20)];
      v19 = *v18;
      v20 = *(v18 + 1);
      v21 = *(v18 + 2);
      v22 = *(v18 + 3);
      v53 = v18;
      v57 = v20;
      v58 = v19;
      sub_22C909FFC();
      v55 = v22;
      v56 = v21;
      sub_22C909FFC();
      v23 = sub_22C90B66C();
      v24 = -1 << *(v17 + 32);
      v25 = v23 & ~v24;
      v60 = v17 + 56;
      if ((*(v17 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        break;
      }

LABEL_35:
      v48 = v62;
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C372584();
      sub_22C3AFDE4(v10, v50[2], v49);
      v63 = v48;
      sub_22C6A881C();
      v62 = v63;
LABEL_37:
      sub_22C388500();
      sub_22C3AFE44();
      v13 = v52 + 1;
      if (v52 + 1 == v51)
      {
        goto LABEL_38;
      }
    }

    v59 = ~v24;
    while (1)
    {
      sub_22C372584();
      sub_22C3AFDE4(v26, v0, v27);
      v28 = v10;
      if (sub_22C9093AC())
      {
        v29 = (v0 + *(v54 + 20));
        v30 = v29[2];
        v31 = v29[3];
        v32 = v29[4];
        v33 = *(v53 + 4);
        v34 = *v29 == v58 && v29[1] == v57;
        if (v34 || (sub_22C90B4FC() & 1) != 0)
        {
          v35 = v30 == v56 && v31 == v55;
          if (v35 || (sub_22C90B4FC() & 1) != 0)
          {
            if (v32 == v33)
            {
LABEL_36:
              sub_22C388500();
              sub_22C3AFE44();
              v10 = v28;
              goto LABEL_37;
            }

            if (*(v32 + 16) == *(v33 + 16))
            {
              break;
            }
          }
        }
      }

LABEL_34:
      sub_22C388500();
      sub_22C3AFE44();
      v25 = (v25 + 1) & v59;
      v10 = v28;
      if (((*(v60 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v36 = 0;
    v37 = 1 << *(v32 + 32);
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v39 = v38 & *(v32 + 64);
    v40 = (v37 + 63) >> 6;
    while (v39)
    {
      v41 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v42 = v41 | (v36 << 6);
LABEL_28:
      v45 = *(*(v32 + 48) + v42) | (*(*(v32 + 56) + 4 * v42) << 32);
LABEL_29:
      if (v45 == 8)
      {
        goto LABEL_36;
      }

      v46 = sub_22C633A1C();
      if ((v47 & 1) == 0 || *(*(v33 + 56) + 4 * v46) != *(&v45 + 1))
      {
        goto LABEL_34;
      }
    }

    while (1)
    {
      v43 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        v39 = 0;
        v45 = 8;
        goto LABEL_29;
      }

      v44 = *(v32 + 64 + 8 * v43);
      ++v36;
      if (v44)
      {
        v39 = (v44 - 1) & v44;
        v42 = __clz(__rbit64(v44)) | (v43 << 6);
        v36 = v43;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_38:

    sub_22C36CC48();
  }
}

void sub_22C3AE31C()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  sub_22C9069BC();
  sub_22C369958();
  MEMORY[0x28223BE20](v2);
  sub_22C36993C();
  MEMORY[0x28223BE20](v3);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_27D9BAA98, MEMORY[0x277D1DCF0], MEMORY[0x277D1DCF8]);
  sub_22C388E14();
  sub_22C37FC28(v4);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v5 = sub_22C386F08();
      v1(v5);
      sub_22C3AFF48();
      sub_22C6A5A3C();
      v6 = sub_22C3AFF38();
      v7(v6);
      sub_22C36D5C0();
    }

    while (!v8);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3AE444()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  sub_22C908C5C();
  sub_22C369958();
  MEMORY[0x28223BE20](v2);
  sub_22C36993C();
  MEMORY[0x28223BE20](v3);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_27D9BAA90, MEMORY[0x277D1E968], MEMORY[0x277D1E970]);
  sub_22C388E14();
  sub_22C37FC28(v4);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v5 = sub_22C386F08();
      v1(v5);
      sub_22C3AFF48();
      sub_22C6A58CC();
      v6 = sub_22C3AFF38();
      v7(v6);
      sub_22C36D5C0();
    }

    while (!v8);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3AE56C()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  sub_22C903CCC();
  sub_22C369958();
  MEMORY[0x28223BE20](v2);
  sub_22C36993C();
  MEMORY[0x28223BE20](v3);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_281435738, MEMORY[0x277D1F0E0], MEMORY[0x277D1F0E8]);
  sub_22C388E14();
  sub_22C37FC28(v4);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v5 = sub_22C386F08();
      v1(v5);
      sub_22C3AFF48();
      sub_22C6A5D9C();
      v6 = sub_22C3AFF38();
      v7(v6);
      sub_22C36D5C0();
    }

    while (!v8);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3AE7B0()
{
  sub_22C36BA7C();
  v1 = v0;
  v95 = sub_22C90399C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v85 = v6 - v5;
  v96 = sub_22C9039FC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v82 = v11 - v10;
  v99 = sub_22C3A5908(&qword_27D9BAA78, &unk_22C90D110);
  sub_22C36985C();
  MEMORY[0x28223BE20](v12);
  v14 = &v80 - v13;
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);
  sub_22C36985C();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v19);
  v92 = &v80 - v20;
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
  sub_22C369824();
  v23 = v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v28);
  v104 = &v80 - v29;
  v30 = *(v1 + 16);
  v31 = sub_22C3AFE98(qword_281430F90, type metadata accessor for QueryDecorationTupleParameter, &protocol conformance descriptor for QueryDecorationTupleParameter);
  v98 = DecorationTupleParameter;
  v32 = MEMORY[0x2318B7DB0](v30, DecorationTupleParameter, v31);
  v88 = *(v1 + 16);
  if (v88)
  {
    v33 = 0;
    v34 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v80 = v1;
    v87 = v1 + v34;
    v35 = *(v23 + 72);
    v93 = (v3 + 8);
    v94 = (v8 + 8);
    v83 = v3 + 32;
    v81 = v8 + 32;
    v36 = v104;
    v90 = v18;
    v103 = v35;
    v84 = v14;
    do
    {
      v97 = v33;
      sub_22C36BAA0();
      sub_22C3AFDE4(v37, v36, v38);
      sub_22C90B62C();
      sub_22C9097DC();
      sub_22C909FFC();

      v39 = (v36 + *(v98 + 20));
      v105 = *v39;
      MEMORY[0x2318B8B10]();
      DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
      sub_22C38B770();
      v102 = v39;
      v100 = v40;
      sub_22C3AFDE4(v39 + v40, v92, v41);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v43 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_8;
        }

        v44 = v93;
        v45 = v95;
        v43 = 1;
      }

      else
      {
        v44 = v94;
        v45 = v96;
      }

      (*v44)(v92, v45);
LABEL_8:
      sub_22C90B62C();
      MEMORY[0x2318B8B10](v43);
      v46 = sub_22C90B66C();
      MEMORY[0x2318B8B10](v46);
      v47 = sub_22C90B66C();
      v48 = -1 << *(v32 + 32);
      v49 = v47 & ~v48;
      if ((*(v32 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
      {
        v50 = ~v48;
        sub_22C37F6DC();
        v36 = v104;
        while (1)
        {
          sub_22C36BAA0();
          sub_22C3AFDE4(v51, v27, v52);
          if ((sub_22C9097CC() & 1) != 0 && (v53 = &v27[*(v18 + 5)], *v53 == v105))
          {
            v54 = *(v99 + 48);
            sub_22C3AFDE4(&v53[*(DecorationEntity + 20)], v14, type metadata accessor for QueryDecorationEntityValue);
            sub_22C3AFDE4(v102 + v100, &v14[v54], type metadata accessor for QueryDecorationEntityValue);
            v55 = swift_getEnumCaseMultiPayload();
            if (v55)
            {
              if (v55 == 1)
              {
                sub_22C38B770();
                v18 = v90;
                sub_22C3AFDE4(v14, v90, v56);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  sub_22C36BA4C();
                  v57 = v85;
                  v58 = v95;
                  v59(v85, &v14[v54], v95);
                  HIDWORD(v89) = sub_22C90393C();
                  v60 = *v93;
                  (*v93)(v57, v58);
                  sub_22C36A6CC();
                  sub_22C3AFE44();
                  v60(v18, v58);
                  v14 = v84;
                  sub_22C37F6DC();
                  v36 = v104;
                  if ((v89 & 0x100000000) != 0)
                  {
                    goto LABEL_34;
                  }

                  sub_22C374948();
                  goto LABEL_25;
                }

                sub_22C36A6CC();
                sub_22C3AFE44();
                sub_22C36BA4C();
                v65(v18, v95);
                sub_22C37F6DC();
LABEL_23:
                v36 = v104;
              }

              else
              {
                sub_22C36A6CC();
                sub_22C3AFE44();
                v64 = swift_getEnumCaseMultiPayload();
                v36 = v104;
                if (v64 == 2)
                {
LABEL_34:
                  sub_22C374948();
                  sub_22C372068();
                  goto LABEL_32;
                }
              }

              sub_22C3AFD28(v14);
LABEL_25:
              sub_22C372068();
              goto LABEL_26;
            }

            sub_22C38B770();
            v61 = v91;
            sub_22C3AFDE4(v14, v91, v62);
            if (swift_getEnumCaseMultiPayload())
            {
              sub_22C36A6CC();
              sub_22C3AFE44();
              sub_22C36BA4C();
              v63(v61, v96);
              goto LABEL_23;
            }

            sub_22C36BA4C();
            v66 = v82;
            v18 = v61;
            v67 = v96;
            v68(v82, &v14[v54], v96);
            HIDWORD(v89) = sub_22C9039EC();
            v69 = v66;
            v70 = *v94;
            (*v94)(v69, v67);
            sub_22C36A6CC();
            sub_22C3AFE44();
            sub_22C37F6DC();
            v70();
            sub_22C374948();
            v36 = v104;
            sub_22C372068();
            if ((v89 & 0x100000000) != 0)
            {
              goto LABEL_32;
            }
          }

          else
          {
            sub_22C36A6CC();
            sub_22C3AFE44();
          }

LABEL_26:
          v49 = (v49 + 1) & v50;
          if (((*(v32 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      v36 = v104;
LABEL_31:
      swift_isUniquelyReferenced_nonNull_native();
      sub_22C36BAA0();
      sub_22C3AFDE4(v36, v86, v71);
      v107 = v32;
      sub_22C372068();
      sub_22C6A9B74(v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
      v36 = v104;
      v32 = v107;
LABEL_32:
      sub_22C36A6CC();
      sub_22C3AFE44();
      v33 = v97 + 1;
    }

    while (v97 + 1 != v88);
  }

  sub_22C36CC48();
}

uint64_t sub_22C3AF068(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = a1[4];
  HIDWORD(v36) = *(a1 + 40);
  v7 = a1[6];
  v8 = sub_22C3AF94C(*a1, v2, v4, v5, v6, BYTE4(v36) & 1, v7);
  v9 = sub_22C3A5908(&qword_27D9BAA68, &qword_22C90D108);
  v10 = sub_22C3AFA4C();
  v39 = MEMORY[0x2318B7DB0](v8, v9, v10);
  HIDWORD(v35) = *(a1 + 16);
  LODWORD(v36) = *(a1 + 40);
  v37 = v3;
  v11 = v2;
  v12 = v4;
  result = sub_22C3AFAB0(v3, v2, v4);
  if (v36 & 0x100000000) != 0 || (v14 = v3, v4 = v2, (v12))
  {
LABEL_6:
    __break(1u);
LABEL_7:
    sub_22C3A5038(v37, v11, BYTE4(v35) & 1);
    sub_22C3A5038(v5, v6, v36 & 1);

    sub_22C3A5038(v5, v4, 0);
    return v39;
  }

  else
  {
    while (v4 == v6)
    {
      if (v14 == v5)
      {
        goto LABEL_7;
      }

      v40 = v37;
      v41 = v11;
      LOBYTE(v42) = v12;
      v43 = v5;
      v44 = v6;
      LOBYTE(v45) = 0;
      v15 = sub_22C3772CC();
      sub_22C3AFABC(v15, v16, v17, v18);
      v19 = sub_22C3772CC();
      v22 = sub_22C3AFCD8(v19, v20, v21, v7);
      v23 = sub_22C3772CC();
      v14 = sub_22C3AFB1C(v23, v24, v25, v7);
      v4 = v26;
      v28 = v27;
      sub_22C6A6204(&v38, v22, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, vars0, vars8);

      if (v28)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22C3AF220()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  sub_22C9037EC();
  sub_22C369958();
  MEMORY[0x28223BE20](v2);
  sub_22C36993C();
  MEMORY[0x28223BE20](v3);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_281435768, MEMORY[0x277D1ED90], MEMORY[0x277D1EDA0]);
  sub_22C388E14();
  sub_22C37FC28(v4);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v5 = sub_22C386F08();
      v1(v5);
      sub_22C3AFF48();
      sub_22C6A65FC();
      v6 = sub_22C3AFF38();
      v7(v6);
      sub_22C36D5C0();
    }

    while (!v8);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

void sub_22C3AF348()
{
  sub_22C36BA7C();
  sub_22C3704C4();
  sub_22C908EAC();
  sub_22C369958();
  MEMORY[0x28223BE20](v2);
  sub_22C36993C();
  MEMORY[0x28223BE20](v3);
  sub_22C3714E0();
  sub_22C3AFE98(&qword_27D9BAA80, MEMORY[0x277D72238], MEMORY[0x277D72248]);
  sub_22C388E14();
  sub_22C37FC28(v4);
  if (v0)
  {
    sub_22C373140();
    do
    {
      v5 = sub_22C386F08();
      v1(v5);
      sub_22C3AFF48();
      sub_22C6A676C();
      v6 = sub_22C3AFF38();
      v7(v6);
      sub_22C36D5C0();
    }

    while (!v8);
  }

  else
  {
    sub_22C3743B4();
  }

  sub_22C37EFCC();
  sub_22C36CC48();
}

uint64_t ComponentwiseRouter.route(event:)@<X0>(void *a1@<X8>)
{
  sub_22C9089DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C9089EC();
  v4 = sub_22C36EBF0();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D1E858])
  {
    goto LABEL_2;
  }

  if (v6 == *MEMORY[0x277D1E6F8] || v6 == *MEMORY[0x277D1E708] || v6 == *MEMORY[0x277D1E748] || v6 == *MEMORY[0x277D1E830])
  {
    goto LABEL_14;
  }

  if (v6 == *MEMORY[0x277D1E838])
  {
    v16 = sub_22C36EBF0();
    v17(v16);
    v10 = v1[8];
    v9 = v1[9];
    goto LABEL_17;
  }

  if (v6 == *MEMORY[0x277D1E760] || v6 == *MEMORY[0x277D1E740] || v6 == *MEMORY[0x277D1E788])
  {
    goto LABEL_2;
  }

  if (v6 == *MEMORY[0x277D1E798])
  {
    goto LABEL_14;
  }

  if (v6 == *MEMORY[0x277D1E738])
  {
LABEL_2:
    v7 = sub_22C36EBF0();
    v8(v7);
    v10 = v1[2];
    v9 = v1[3];
LABEL_17:
    *a1 = v10;
    a1[1] = v9;
  }

  if (v6 == *MEMORY[0x277D1E7D8])
  {
    goto LABEL_14;
  }

  if (v6 == *MEMORY[0x277D1E808] || v6 == *MEMORY[0x277D1E768])
  {
    goto LABEL_2;
  }

  if (v6 == *MEMORY[0x277D1E720] || v6 == *MEMORY[0x277D1E850])
  {
LABEL_14:
    v14 = sub_22C36EBF0();
    v15(v14);
    v10 = v1[4];
    v9 = v1[5];
    goto LABEL_17;
  }

  if (v6 == *MEMORY[0x277D1E7D0] || v6 == *MEMORY[0x277D1E818] || v6 == *MEMORY[0x277D1E780])
  {
    v25 = sub_22C36EBF0();
    v26(v25);
    v10 = v1[6];
    v9 = v1[7];
    goto LABEL_17;
  }

  if (v6 == *MEMORY[0x277D1E7B8])
  {
    goto LABEL_2;
  }

  v27 = sub_22C36EBF0();
  result = v28(v27);
  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t ComponentwiseRouter.deinit()
{

  return v0;
}

uint64_t ComponentwiseRouter.__deallocating_deinit()
{
  ComponentwiseRouter.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_22C3AF8F8()
{
  result = qword_27D9BAA60;
  if (!qword_27D9BAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAA60);
  }

  return result;
}

uint64_t sub_22C3AF94C(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_29;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 != a2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      v9 = v7 >> 6;
      v10 = *(a7 + 56 + 8 * (v7 >> 6));
      if (((v10 >> v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

unint64_t sub_22C3AFA4C()
{
  result = qword_27D9BAA70;
  if (!qword_27D9BAA70)
  {
    sub_22C3AC1A0(&qword_27D9BAA68, &qword_22C90D108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAA70);
  }

  return result;
}

uint64_t sub_22C3AFAB0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_22C3AFABC(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    goto LABEL_13;
  }

  if (*(a4 + 8) != a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*a4 > result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a4 + 32) != a2)
  {
    goto LABEL_11;
  }

  if (*(a4 + 24) <= result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_22C3AFB1C(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return sub_22C90AE7C();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22C3AFBA4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22C3AFC20@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  sub_22C90952C();
  sub_22C36985C();
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_22C3AFCD8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22C3AFD28(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BAA78, &unk_22C90D110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C3AFD90()
{
  result = qword_281434880;
  if (!qword_281434880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281434880);
  }

  return result;
}

uint64_t sub_22C3AFDE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C3AFE44()
{
  v1 = sub_22C3704C4();
  v2(v1);
  sub_22C36985C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C3AFE98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22C3AFEE0()
{
  result = qword_27D9BAAB0;
  if (!qword_27D9BAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAAB0);
  }

  return result;
}

uint64_t AgenticActionResolutionService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D910];
  v3 = sub_22C90645C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22C3B005C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B00E8;

  return AgenticActionResolutionService.setup(sessionState:)();
}

uint64_t sub_22C3B00E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *v8;

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_22C3B01DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B0268;

  return AgenticActionResolutionService.handle(_:plannerServiceContext:)();
}

uint64_t sub_22C3B0268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *v9;

  v12 = *(v14 + 8);
  if (!v8)
  {
    v11 = a1;
  }

  return v12(v11);
}

uint64_t AgenticPlanGenerationService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D8F0];
  v3 = sub_22C90645C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AgenticPlanGenerationService.__allocating_init(toolboxResources:toolExecutionSession:identityChain:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AgenticPlanGenerationService.init(toolboxResources:toolExecutionSession:identityChain:)(a1, a2, a3);
  return v6;
}

uint64_t AgenticPlanGenerationService.init(toolboxResources:toolExecutionSession:identityChain:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  sub_22C378A4C(a2, v10);
  type metadata accessor for FullPlannerService();
  swift_allocObject();
  v8 = FullPlannerService.init(toolboxResources:toolExecutionSession:identityChain:)(a1, v10, a3);
  sub_22C36FF94(a2);
  *(v4 + 16) = v8;
  return v4;
}

uint64_t AgenticPlanGenerationService.setup(sessionState:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22C3B0584, 0, 0);
}

uint64_t AgenticPlanGenerationService.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  type metadata accessor for AgenticPlannerServiceContext(0);
  v1[5] = swift_task_alloc();
  type metadata accessor for PlannerServiceContext(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3B06C0, 0, 0);
}

uint64_t sub_22C3B06C0()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_22C3B0C34(v0[3], v1);
  PlannerServiceContext.init(adapting:)(v1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_22C3B0784;

  return FullPlannerService.handle(_:plannerServiceContext:)();
}

uint64_t sub_22C3B0784(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_22C369970();
  *v6 = v5;
  v7 = *v2;
  *v6 = *v2;
  *(v5 + 64) = v1;

  v8 = *(v4 + 48);
  if (v1)
  {
    sub_22C3B0C98(v8);

    return MEMORY[0x2822009F8](sub_22C3B0910, 0, 0);
  }

  else
  {
    sub_22C3B0C98(v8);

    v9 = *(v7 + 8);

    return v9(a1);
  }
}

uint64_t sub_22C3B0910()
{
  sub_22C369980();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AgenticPlanGenerationService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22C3B09D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C37524C;

  return AgenticPlanGenerationService.setup(sessionState:)(a1);
}

uint64_t sub_22C3B0A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B0B10;

  return AgenticPlanGenerationService.handle(_:plannerServiceContext:)();
}

uint64_t sub_22C3B0B10()
{
  sub_22C369980();
  v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_22C3B0C34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgenticPlannerServiceContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C3B0C98(uint64_t a1)
{
  v2 = type metadata accessor for PlannerServiceContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C3B0D64()
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](0);
  return sub_22C90B66C();
}

uint64_t sub_22C3B0DAC(uint64_t a1)
{
  sub_22C90B62C();
  MEMORY[0x2318B8B10](0);
  return sub_22C90B66C();
}

uint64_t sub_22C3B0DEC(uint64_t a1)
{
  v2 = sub_22C3B6014();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C3B0E28(uint64_t a1)
{
  v2 = sub_22C3B6014();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t AgenticPlanInterpreterService.telemetryTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1D900];
  sub_22C90645C();
  sub_22C36985C();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

void AgenticPlanInterpreterService.__allocating_init<A, B>(toolboxResources:actionRequirements:toolExecutionSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22C3BDA38();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  swift_allocObject();
  AgenticPlanInterpreterService.init<A, B>(toolboxResources:actionRequirements:toolExecutionSession:)(v20, v18, v16, v14, v12, v10, v8);
  sub_22C3BDA24();
}

void *AgenticPlanInterpreterService.init<A, B>(toolboxResources:actionRequirements:toolExecutionSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[6] = a4;
  v7[7] = a6;
  v13 = sub_22C36D548(v7 + 3);
  v14 = *(a4 - 8);
  (*(v14 + 16))(v13, a2, a4);
  v18 = a5;
  v19 = a7;
  v15 = sub_22C36D548(&v17);
  (*(*(a5 - 8) + 32))(v15, a3, a5);
  (*(v14 + 8))(a2, a4);
  sub_22C36C730(&v17, (v7 + 8));
  return v7;
}

uint64_t AgenticPlanInterpreterService.handle(_:plannerServiceContext:)()
{
  sub_22C369980();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_22C9089DC();
  v1[15] = v4;
  sub_22C3699B8(v4);
  v1[16] = v5;
  v1[17] = sub_22C3699D4();
  v6 = sub_22C9063DC();
  v1[18] = v6;
  sub_22C3699B8(v6);
  v1[19] = v7;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v8 = type metadata accessor for StepResolution(0);
  sub_22C369914(v8);
  v1[23] = sub_22C3699D4();
  v9 = type metadata accessor for PlanCycleId(0);
  sub_22C369914(v9);
  v1[24] = sub_22C3699D4();
  v10 = sub_22C90069C();
  v1[25] = v10;
  sub_22C3699B8(v10);
  v1[26] = v11;
  v1[27] = sub_22C3699D4();
  v12 = type metadata accessor for Interpreter2(0);
  sub_22C369914(v12);
  v1[28] = sub_22C3699D4();
  v13 = sub_22C90634C();
  v1[29] = v13;
  sub_22C3699B8(v13);
  v1[30] = v14;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v15 = sub_22C90636C();
  v1[33] = v15;
  sub_22C3699B8(v15);
  v1[34] = v16;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3B1324, 0, 0);
}

uint64_t sub_22C3B1324()
{
  v46 = v0;
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v40 = *(v3 + 8);
  v40(v1, v2);
  v4 = sub_22C90635C();
  v5 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v4, v5, v7, "PlanResolverService.run", "", v6, 2u);
    sub_22C3699EC();
  }

  v8 = v0[36];
  v10 = v0[32];
  v9 = v0[33];
  v12 = v0[30];
  v11 = v0[31];
  v13 = v0[29];
  v41 = v0[28];
  v14 = v0[14];

  (*(v12 + 16))(v11, v10, v13);
  sub_22C9063AC();
  swift_allocObject();
  v0[37] = sub_22C90639C();
  (*(v12 + 8))(v10, v13);
  v40(v8, v9);
  v0[5] = &type metadata for PlanResolutionBiomeTelemetryStream;
  v0[6] = &off_283FC01A8;
  v15 = v14[6];
  v16 = v14[7];
  v17 = sub_22C374168(v14 + 3, v15);
  v18 = v14[11];
  v19 = v14[12];
  sub_22C374168(v14 + 8, v18);
  v20 = v14[2];
  v21 = *(v15 - 8);
  v22 = sub_22C3699D4();
  (*(v21 + 16))(v22, v17, v15);
  v23 = *(v18 - 8);
  sub_22C3699D4();
  (*(v23 + 16))();
  sub_22C3B5C4C((v0 + 2), (v0 + 7));

  sub_22C3B2528(v42);
  v44 = &type metadata for PersonCandidateGenerator;
  v45 = &protocol witness table for PersonCandidateGenerator;
  sub_22C6B0CF8(v20, v22, sub_22C3B5AC0, 0, (v0 + 7), v42, v43, v41, v15, v18, v16, v19);
  v24 = v0[24];
  v25 = v0[25];
  v26 = v0[13];

  v27 = type metadata accessor for AgenticPlannerServiceContext(0);
  sub_22C3B5CFC(v26 + *(v27 + 20), v24);
  if (sub_22C370B74(v24, 1, v25) == 1)
  {
    sub_22C3B5DD4(v0[24], type metadata accessor for PlanCycleId);
    sub_22C903FEC();
    v28 = sub_22C9063CC();
    v29 = sub_22C90AADC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22C366000, v28, v29, "Plan Resolution has been called, but we don't have a plan cycle id. Throwing", v30, 2u);
      sub_22C3699EC();
    }

    v31 = v0[28];
    v33 = v0[19];
    v32 = v0[20];
    v34 = v0[18];

    (*(v33 + 8))(v32, v34);
    sub_22C3B5D60();
    swift_allocError();
    swift_willThrow();
    sub_22C373164();
    sub_22C3B5DD4(v31, v35);
    sub_22C3B5CA8((v0 + 2));
    v36 = v0[37];
    sub_22C3BD9FC();
    sub_22C3B2184(v36);

    v37 = v0[1];

    return v37();
  }

  else
  {
    (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
    v39 = swift_task_alloc();
    v0[38] = v39;
    *v39 = v0;
    v39[1] = sub_22C3B18F4;

    return Interpreter2.resolve(sessionState:contextId:planCycleId:)();
  }
}

uint64_t sub_22C3B18F4()
{
  sub_22C369980();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 312) = v0;

  if (v0)
  {
    v5 = sub_22C3B2044;
  }

  else
  {
    v5 = sub_22C3B19FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C3B19FC()
{
  v87 = v0;
  v1 = v0;
  v2 = StepResolution.toEventPayloads(omittingResponseEvents:)(1);
  sub_22C903F8C();

  v3 = sub_22C9063CC();
  v4 = sub_22C90AABC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v85 = v80;
    buf = v5;
    *v5 = 136315138;
    v10 = *(v2 + 16);
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v77 = v4;
      v78 = v3;
      v12 = v1[16];
      v86 = MEMORY[0x277D84F90];
      sub_22C3B5E2C(0, v10, 0, v6, v7, v8, v9);
      v11 = v86;
      v12 += 16;
      sub_22C36BA94();
      v79 = v2;
      v14 = v2 + v13;
      v82 = *(v12 + 56);
      v83 = v15;
      v16 = (v12 - 8);
      do
      {
        v17 = v1[17];
        v18 = v1;
        v19 = v1[15];
        v83(v17, v14, v19);
        v20 = sub_22C9089BC();
        v22 = v21;
        (*v16)(v17, v19);
        v86 = v11;
        v28 = *(v11 + 16);
        v27 = *(v11 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22C3B5E2C(v27 > 1, v28 + 1, 1, v23, v24, v25, v26);
          v11 = v86;
        }

        *(v11 + 16) = v28 + 1;
        v29 = v11 + 16 * v28;
        *(v29 + 32) = v20;
        *(v29 + 40) = v22;
        v14 += v82;
        --v10;
        v1 = v18;
      }

      while (v10);
      v3 = v78;
      v2 = v79;
      v4 = v77;
    }

    v34 = v1[22];
    v36 = v1[18];
    v35 = v1[19];
    v37 = MEMORY[0x2318B7AD0](v11, MEMORY[0x277D837D0]);
    v39 = v38;

    v40 = sub_22C36F9F4(v37, v39, &v85);

    *(buf + 4) = v40;
    _os_log_impl(&dword_22C366000, v3, v4, "resolved to %s", buf, 0xCu);
    sub_22C36FF94(v80);
    sub_22C3699EC();
    sub_22C3699EC();

    v33 = *(v35 + 8);
    v33(v34, v36);
  }

  else
  {
    v30 = v0[22];
    v32 = v0[18];
    v31 = v0[19];

    v33 = *(v31 + 8);
    v33(v30, v32);
  }

  sub_22C903F8C();

  v41 = sub_22C9063CC();
  v42 = sub_22C90AACC();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v1[21];
  v45 = v1[18];
  if (v43)
  {
    v46 = v1[15];
    v84 = v1[18];
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v86 = v48;
    *v47 = 136315138;
    v49 = MEMORY[0x2318B7AD0](v2, v46);
    v51 = sub_22C36F9F4(v49, v50, &v86);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_22C366000, v41, v42, "Payloads: %s", v47, 0xCu);
    sub_22C36FF94(v48);
    sub_22C3699EC();
    sub_22C3699EC();

    v52 = v44;
    v53 = v84;
  }

  else
  {

    v52 = v44;
    v53 = v45;
  }

  v33(v52, v53);
  v54 = v1[39];
  v55 = v1[12];
  *(swift_task_alloc() + 16) = v55;
  sub_22C3B25C8();
  if (v54)
  {
    v58 = v1[27];
    v57 = v1[28];
    v60 = v1[25];
    v59 = v1[26];
    v61 = v1[23];

    sub_22C3797C8();
    sub_22C3B5DD4(v61, v62);
    (*(v59 + 8))(v58, v60);
    sub_22C373164();
    sub_22C3B5DD4(v57, v63);
    sub_22C3B5CA8((v1 + 2));
    v64 = v1[37];
    sub_22C3BD9FC();
    sub_22C3B2184(v64);

    v65 = v1[1];

    return v65();
  }

  else
  {
    v67 = v56;
    v68 = v1[37];
    v70 = v1[27];
    v69 = v1[28];
    v72 = v1[25];
    v71 = v1[26];
    v73 = v1[23];

    sub_22C3797C8();
    sub_22C3B5DD4(v73, v74);
    (*(v71 + 8))(v70, v72);
    sub_22C373164();
    sub_22C3B5DD4(v69, v75);
    sub_22C3B5CA8((v1 + 2));
    sub_22C3B2184(v68);

    v76 = v1[1];

    return v76(v67);
  }
}

uint64_t sub_22C3B2044()
{
  v1 = v0[28];
  (*(v0[26] + 8))(v0[27], v0[25]);
  sub_22C373164();
  sub_22C3B5DD4(v1, v2);
  sub_22C3B5CA8((v0 + 2));
  v3 = v0[37];
  sub_22C3BD9FC();
  sub_22C3B2184(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22C3B2184(uint64_t a1)
{
  v29 = sub_22C90637C();
  v27 = *(v29 - 1);
  MEMORY[0x28223BE20](v29);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90636C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90365C();
  v11 = sub_22C90635C();
  sub_22C90638C();
  v28 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v24 = v8;
    v25 = v7;
    v26 = v3;

    sub_22C9063BC();

    v12 = v27;
    v13 = v29;
    if ((*(v27 + 88))(v2, v29) == *MEMORY[0x277D85B00])
    {
      v14 = 0;
      v15 = 0;
      v29 = "[Error] Interval already ended";
    }

    else
    {
      (*(v12 + 8))(v2, v13);
      v29 = "%s";
      v15 = 2;
      v14 = 1;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = v15;
    *(v17 + 1) = v14;
    *(v17 + 2) = 2080;
    sub_22C90366C();
    v19 = sub_22C90AF7C();
    v21 = sub_22C36F9F4(v19, v20, &v30);

    *(v17 + 4) = v21;
    v22 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v11, v28, v22, "PlanResolverService.run", v29, v17, 0xCu);
    sub_22C36FF94(v18);
    MEMORY[0x2318B9880](v18, -1, -1);
    MEMORY[0x2318B9880](v17, -1, -1);

    (*(v4 + 8))(v6, v26);
    return (*(v24 + 8))(v10, v25);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_22C3B2528@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22C907BFC();
  result = sub_22C907BEC();
  v4 = MEMORY[0x277D1E210];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void sub_22C3B25C8()
{
  sub_22C370030();
  sub_22C3BDA6C();
  v16 = v2;
  sub_22C908A0C();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v4 = *(v1 + 16);
  if (v4)
  {
    v18 = MEMORY[0x277D84F90];
    v5 = sub_22C370024();
    sub_22C3B6068(v5, v4, 0);
    v6 = sub_22C9089DC();
    sub_22C3699B8(v6);
    v8 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = *(v9 + 72);
    while (1)
    {
      v16(v8, &v17);
      if (v0)
      {
        break;
      }

      v0 = 0;
      v11 = *(v18 + 16);
      v10 = *(v18 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_22C3B6068(v10 > 1, v11 + 1, 1);
      }

      *(v18 + 16) = v11 + 1;
      sub_22C36BA94();
      v13 = sub_22C3BDA0C(v12);
      v14(v13);
      v8 += v15;
      if (!--v4)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  sub_22C3772F0();
  sub_22C36FB20();
}

void sub_22C3B2880()
{
  sub_22C389FC4();
  if (v1)
  {
    v3 = v2;
    v19 = MEMORY[0x277D84F90];
    v4 = sub_22C3BD82C();
    sub_22C3B64D4(v4, v5, v6);
    v7 = 0;
    v8 = v19;
    v9 = (v3 + 40);
    while (v1 != v7)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v17[0] = v7;
      v17[1] = v10;
      v17[2] = v11;

      v15(&v18, v17, &v16);
      if (v0)
      {

        goto LABEL_10;
      }

      v0 = 0;

      v12 = v18;
      v19 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22C3B64D4(v13 > 1, v14 + 1, 1);
        v8 = v19;
      }

      ++v7;
      *(v8 + 16) = v14 + 1;
      *(v8 + 8 * v14 + 32) = v12;
      v9 += 2;
      if (v1 == v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_22C3BD86C();
  }
}

uint64_t sub_22C3B29B0(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  if (*(a3 + 16))
  {
    v28 = MEMORY[0x277D84F90];
    v6 = sub_22C3BD82C();
    sub_22C3B6440(v6, v7, v8, v9, v10, v11, v12);
    v4 = v28;
    v13 = sub_22C90981C();
    sub_22C3699B8(v13);
    v15 = a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    while (1)
    {
      a1(&v27, v15, &v26);
      if (v3)
      {
        break;
      }

      v28 = v4;
      if (*(v4 + 16) >= *(v4 + 24) >> 1)
      {
        sub_22C3BD85C();
        sub_22C3B6440(v17, v18, v19, v20, v21, v22, v23);
        v4 = v28;
      }

      sub_22C38B3F8();
      sub_22C382C30();
      if (v16)
      {
        return v4;
      }
    }
  }

  return v4;
}

void sub_22C3B2B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3BDAA8();
  if (*(v4 + 16))
  {
    v5 = sub_22C3BD82C();
    sub_22C3B6C50(v5, v6, v7);
    v8 = sub_22C90965C();
    sub_22C3699B8(v8);
    while (1)
    {
      v9 = sub_22C386C3C();
      v10(v9);
      if (v3)
      {
        break;
      }

      sub_22C382EB4();
      if (v11)
      {
        sub_22C379C28();
        sub_22C3B6C50(v13, v14, v15);
      }

      sub_22C3BD9AC();
      sub_22C382C30();
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    sub_22C3BD86C();
    sub_22C3BDA8C();
  }
}

uint64_t sub_22C3B2C0C(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (!*(a3 + 16))
  {
    return sub_22C3BD86C();
  }

  v32 = MEMORY[0x277D84F90];
  v6 = sub_22C3BD82C();
  sub_22C3B68D4(v6, v7, v8);
  v9 = v32;
  v10 = sub_22C9093BC();
  sub_22C3699B8(v10);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  while (1)
  {
    a1(v29, v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v13 = v29[0];
    v14 = v29[1];
    v15 = v30;
    v16 = v31;
    v32 = v9;
    v17 = *(v9 + 16);
    if (v17 >= *(v9 + 24) >> 1)
    {
      sub_22C3BD85C();
      v26 = v21;
      v27 = v20;
      sub_22C3B68D4(v22, v23, v24);
      v14 = v26;
      v13 = v27;
      v9 = v32;
    }

    *(v9 + 16) = v17 + 1;
    v18 = v9 + 48 * v17;
    *(v18 + 32) = v13;
    *(v18 + 48) = v14;
    *(v18 + 64) = v15;
    *(v18 + 72) = v16;
    sub_22C382C30();
    if (v19)
    {
      return sub_22C3BD86C();
    }
  }

  __break(1u);
  return result;
}

void sub_22C3B2D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3BDAA8();
  if (*(v4 + 16))
  {
    v5 = sub_22C3BD82C();
    sub_22C3B5E2C(v5, v6, v7, v8, v9, v10, v11);
    v12 = sub_22C908EAC();
    sub_22C3699B8(v12);
    while (1)
    {
      v13 = sub_22C386C3C();
      v14(v13);
      if (v3)
      {
        break;
      }

      sub_22C382EB4();
      if (v15)
      {
        sub_22C379C28();
        sub_22C3B5E2C(v17, v18, v19, v20, v21, v22, v23);
      }

      sub_22C3BD9AC();
      sub_22C382C30();
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    sub_22C3BD86C();
    sub_22C3BDA8C();
  }
}

void sub_22C3B2ED0()
{
  sub_22C370030();
  v3 = v0;
  v5 = v4;
  v52 = v6;
  v53 = v7;
  sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v51 = v10 - v9;
  v11 = *(v5 + 16);
  if (v11)
  {
    v58 = MEMORY[0x277D84F90];
    sub_22C370024();
    sub_22C3BDA4C();
    sub_22C3B6C50(v12, v13, v14);
    v15 = sub_22C57D74C();
    v17 = v16;
    sub_22C3BDA78();
    v49 = v11;
    v21 = 1;
    v50 = v1;
    if ((v15 & 0x8000000000000000) == 0)
    {
      while (v15 < v21 << *(v5 + 32))
      {
        v22 = v21 << v15;
        if ((*(v1 + 8 * (v15 >> 6)) & (v21 << v15)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v5 + 36) != v19)
        {
          goto LABEL_27;
        }

        v55 = v15 >> 6;
        v56 = v19;
        v54 = v20;
        v23 = v3;
        v24 = v18;
        sub_22C388C3C();
        v25(v51);
        v15 = v53;
        v52(&v57, v51);
        if (v23)
        {
          goto LABEL_31;
        }

        v26 = sub_22C37B1AC();
        v27(v26);
        v28 = v57;
        v29 = sub_22C3BD980();
        if (v31)
        {
          sub_22C3BD9EC();
          v48 = v42;
          sub_22C3B6C50(v43, v44, v45);
          v30 = v48;
          v29 = v58;
        }

        *(v29 + 16) = v51;
        v32 = v29 + 16 * v24;
        *(v32 + 32) = v28;
        *(v32 + 40) = v30;
        if (v17)
        {
          goto LABEL_32;
        }

        sub_22C3837C8();
        if (v2 >= v53)
        {
          goto LABEL_28;
        }

        v3 = 0;
        v1 = v50;
        if ((*(v50 + 8 * v55) & v22) == 0)
        {
          goto LABEL_29;
        }

        if (*(v5 + 36) != v56)
        {
          goto LABEL_30;
        }

        sub_22C379EE4();
        if (v33)
        {
          sub_22C3819A0();
          v40 = v39 + 1;
          v35 = v49;
          while (v40 < v38)
          {
            sub_22C37B918();
            if (v28)
            {
              v15 = v36;
              sub_22C3A5038(v2, v37, 0);
              sub_22C385508();
              goto LABEL_20;
            }
          }

          v41 = v36;
          sub_22C3A5038(v2, v37, 0);
          v18 = v41;
LABEL_20:
          v21 = 1;
        }

        else
        {
          sub_22C3860E8();
          v15 = v34 | v2 & 0x7FFFFFFFFFFFFFC0;
          v35 = v49;
        }

        v20 = v54 + 1;
        if (v54 + 1 == v35)
        {
          goto LABEL_24;
        }

        v17 = 0;
        v19 = *(v5 + 36);
        if ((v15 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v46 = sub_22C37B1AC();
    v47(v46);

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_22C36FB20();
  }
}

void sub_22C3B31C4()
{
  sub_22C370030();
  v2 = v0;
  v4 = v3;
  v58 = v5;
  v59 = v6;
  sub_22C90941C();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v57 = v9 - v8;
  v10 = *(v4 + 16);
  if (v10)
  {
    v63 = MEMORY[0x277D84F90];
    sub_22C370024();
    sub_22C3BDA4C();
    sub_22C3B68D4(v11, v12, v13);
    v14 = sub_22C57D74C();
    v16 = v15;
    sub_22C3BDA78();
    v54 = v10;
    v20 = 1;
    v55 = v1;
    v56 = v4;
    if ((v14 & 0x8000000000000000) == 0)
    {
      while (v14 < v20 << *(v4 + 32))
      {
        v21 = v14 >> 6;
        v22 = v20 << v14;
        if ((*(v1 + 8 * (v14 >> 6)) & (v20 << v14)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v4 + 36) != v18)
        {
          goto LABEL_27;
        }

        v60 = v19;
        v61 = v18;
        v23 = v2;
        v24 = v17;
        sub_22C388C3C();
        v25(v57);
        v14 = v59;
        v58(v62, v57);
        if (v23)
        {
          goto LABEL_31;
        }

        v26 = sub_22C37B1AC();
        v27(v26);
        v28 = v62[4];
        v29 = sub_22C3BD980();
        if (v33)
        {
          sub_22C3BD9EC();
          v53 = v43;
          v52 = v44;
          v51 = v45;
          sub_22C3B68D4(v46, v47, v48);
          v30 = v51;
          v32 = v52;
          v31 = v53;
          v29 = v63;
        }

        *(v29 + 16) = v57;
        v34 = v29 + 48 * v24;
        *(v34 + 32) = v31;
        *(v34 + 48) = v32;
        *(v34 + 64) = v28;
        *(v34 + 72) = v30;
        if (v16)
        {
          goto LABEL_32;
        }

        v4 = v56;
        sub_22C3837C8();
        if (v10 >= v59)
        {
          goto LABEL_28;
        }

        v2 = 0;
        v1 = v55;
        if ((*(v55 + 8 * v21) & v22) == 0)
        {
          goto LABEL_29;
        }

        if (*(v56 + 36) != v61)
        {
          goto LABEL_30;
        }

        sub_22C379EE4();
        if (v35)
        {
          sub_22C3819A0();
          v41 = v21 + 1;
          v10 = v54;
          while (v41 < v40)
          {
            sub_22C37B918();
            if (v28)
            {
              v14 = v38;
              sub_22C3BDAC4(v38, v39);
              sub_22C385508();
              goto LABEL_20;
            }
          }

          v42 = v38;
          sub_22C3BDAC4(v38, v39);
          v17 = v42;
LABEL_20:
          v20 = 1;
        }

        else
        {
          sub_22C3860E8();
          v14 = v37 | v36 & 0x7FFFFFFFFFFFFFC0;
          v10 = v54;
        }

        v19 = v60 + 1;
        if (v60 + 1 == v10)
        {
          goto LABEL_24;
        }

        v16 = 0;
        v18 = *(v56 + 36);
        if ((v14 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v49 = sub_22C37B1AC();
    v50(v49);

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_22C36FB20();
  }
}

uint64_t sub_22C3B34E0(void *(*a1)(__n128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = *(a3 + 16);
  if (!v7)
  {
    return sub_22C3BD86C();
  }

  v34 = MEMORY[0x277D84F90];
  v9 = sub_22C3BD82C();
  sub_22C3B6810(v9, v10, v11);
  v12 = v34;
  v13 = sub_22C908EAC();
  sub_22C3699B8(v13);
  v15 = a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v16 + 72);
  while (1)
  {
    a1(&v32, v15);
    if (v6)
    {
      break;
    }

    v6 = 0;
    v18 = v33;
    v34 = v12;
    sub_22C3BD9BC();
    if (v21)
    {
      sub_22C3BD85C();
      v29 = v24;
      v30 = v23;
      sub_22C3B6810(v25, v26, v27);
      v20 = v29;
      v19 = v30;
      v12 = v34;
    }

    *(v12 + 16) = v5;
    v22 = v12 + 40 * v4;
    *(v22 + 32) = v19;
    *(v22 + 48) = v20;
    *(v22 + 64) = v18;
    v15 += v17;
    if (!--v7)
    {
      return sub_22C3BD86C();
    }
  }

  __break(1u);
  return result;
}

void sub_22C3B362C()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v68 = v4;
  v69 = v5;
  v67 = sub_22C3A5908(&qword_27D9BAF30, &unk_22C90FAA0);
  sub_22C369824();
  v64 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - v12;
  v14 = *(v3 + 16);
  if (v14)
  {
    v78 = MEMORY[0x277D84F90];
    v15 = sub_22C370024();
    sub_22C3B70B8(v15, v14, 0);
    v16 = v78;
    v19 = sub_22C6339F8();
    v20 = 0;
    v21 = v3 + 64;
    v59 = v17;
    v60 = v14;
    v58 = v3 + 72;
    v22 = 1;
    v62 = v3;
    v63 = v13;
    v61 = v3 + 64;
    while ((v19 & 0x8000000000000000) == 0 && v19 < v22 << *(v3 + 32))
    {
      v23 = v22 << v19;
      if ((*(v21 + 8 * (v19 >> 6)) & v23) == 0)
      {
        goto LABEL_25;
      }

      if (*(v3 + 36) != v17)
      {
        goto LABEL_26;
      }

      v73 = v23;
      v74 = v19 >> 6;
      v71 = v20;
      v72 = v17;
      v70 = v18;
      v76 = v16;
      v24 = v67;
      v25 = *(v67 + 48);
      v26 = *(v3 + 48);
      v27 = sub_22C902C9C();
      sub_22C369824();
      v75 = v1;
      v29 = v28;
      v31 = v65;
      (*(v30 + 16))(v65, v26 + *(v30 + 72) * v19, v27);
      v32 = *(v3 + 56);
      v33 = sub_22C902D0C();
      sub_22C369824();
      v35 = v34;
      (*(v34 + 16))(&v31[v25], v32 + *(v36 + 72) * v19, v33);
      v37 = v66;
      (*(v29 + 32))(v66, v31, v27);
      v38 = *(v24 + 48);
      v39 = v63;
      (*(v35 + 32))(v37 + v38, &v31[v25], v33);
      v40 = v69;
      v41 = v75;
      v68(v37, &v77);
      if (v41)
      {
        sub_22C36DD28(v37, &qword_27D9BAF30, &unk_22C90FAA0);

        goto LABEL_23;
      }

      v1 = 0;
      sub_22C36DD28(v37, &qword_27D9BAF30, &unk_22C90FAA0);
      v16 = v76;
      v79 = v76;
      v42 = *(v76 + 16);
      if (v42 >= *(v76 + 24) >> 1)
      {
        sub_22C3BD85C();
        sub_22C3B70B8(v54, v55, v56);
        v16 = v79;
      }

      *(v16 + 16) = v42 + 1;
      sub_22C36BA94();
      sub_22C3BD6DC(v39, v16 + v43 + *(v44 + 72) * v42);
      v3 = v62;
      sub_22C3837C8();
      if (v19 >= v40)
      {
        goto LABEL_27;
      }

      v21 = v61;
      if ((*(v61 + 8 * v74) & v73) == 0)
      {
        goto LABEL_28;
      }

      if (*(v3 + 36) != v72)
      {
        goto LABEL_29;
      }

      sub_22C379EE4();
      if (v45)
      {
        sub_22C3819A0();
        v49 = v48 << 6;
        v50 = v48 + 1;
        v51 = (v58 + 8 * v48);
        while (v50 < v47)
        {
          v53 = *v51++;
          v52 = v53;
          v49 += 64;
          ++v50;
          if (v53)
          {
            sub_22C3A5038(v19, v46, v70 & 1);
            v22 = 1;
            v40 = __clz(__rbit64(v52)) + v49;
            goto LABEL_20;
          }
        }

        sub_22C3A5038(v19, v46, v70 & 1);
        v22 = 1;
      }

      else
      {
        sub_22C3815D8();
      }

LABEL_20:
      v18 = 0;
      v20 = v71 + 1;
      v19 = v40;
      v17 = v59;
      if (v71 + 1 == v60)
      {
        goto LABEL_23;
      }
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
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_23:
    sub_22C36FB20();
  }
}

void sub_22C3B3AA0()
{
  sub_22C370030();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v77 = v6;
  v7 = type metadata accessor for ToolDefinitionGrammarGeneratorError(0);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v78 = v10 - v9;
  v11 = sub_22C90941C();
  sub_22C369824();
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v79 = v14 - v13;
  v15 = *(v5 + 16);
  if (v15)
  {
    v71 = v2;
    v86 = MEMORY[0x277D84F90];
    v16 = sub_22C3BD82C();
    v18 = v17;
    sub_22C3B6440(v16, v19, v20, v21, v22, v23, v24);
    v25 = sub_22C57D74C();
    v27 = v5;
    v28 = v25;
    v29 = v86;
    v31 = v30;
    v32 = 0;
    v84 = v5 + 56;
    v72 = v5 + 64;
    v73 = v15;
    v33 = v79;
    v75 = v11;
    v76 = v5;
    v74 = v18;
    if ((v28 & 0x8000000000000000) == 0)
    {
      while (v28 < 1 << *(v27 + 32))
      {
        v34 = v28 >> 6;
        if ((*(v84 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v27 + 36) != v26)
        {
          goto LABEL_28;
        }

        v80 = v32;
        v81 = 1 << v28;
        v82 = v28;
        v83 = v26;
        v35 = v3;
        v36 = v29;
        (*(v18 + 16))(v33, *(v27 + 48) + *(v18 + 72) * v28, v11);
        v77(v85, v33, v78);
        if (v35)
        {
          v69 = sub_22C3BDA58();
          v70(v69);

          sub_22C3BD7BC(v78, v71, type metadata accessor for ToolDefinitionGrammarGeneratorError);
          goto LABEL_25;
        }

        v37 = sub_22C3BDA58();
        v38(v37);
        v44 = v85[0];
        v43 = v85[1];
        v46 = v85[2];
        v45 = v85[3];
        v47 = v36;
        v49 = *(v36 + 16);
        v48 = *(v36 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_22C3B6440(v48 > 1, v49 + 1, 1, v39, v40, v41, v42);
          v47 = v36;
        }

        *(v47 + 16) = v49 + 1;
        v50 = (v47 + 32 * v49);
        v50[4] = v44;
        v50[5] = v43;
        v50[6] = v46;
        v50[7] = v45;
        if (v31)
        {
          goto LABEL_32;
        }

        v11 = v75;
        v28 = 1 << *(v76 + 32);
        v33 = v79;
        v3 = 0;
        v18 = v74;
        if (v82 >= v28)
        {
          goto LABEL_29;
        }

        v51 = *(v84 + 8 * v34);
        if ((v51 & v81) == 0)
        {
          goto LABEL_30;
        }

        if (*(v76 + 36) != v83)
        {
          goto LABEL_31;
        }

        if ((v51 & (-2 << (v82 & 0x3F))) != 0)
        {
          sub_22C3860E8();
          v28 = v53 | v52 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          sub_22C3819A0();
          v56 = v34 << 6;
          v57 = v34 + 1;
          v58 = (v72 + 8 * v34);
          while (v57 < v55)
          {
            v60 = *v58++;
            v59 = v60;
            v56 += 64;
            ++v57;
            if (v60)
            {
              v61 = v54;
              sub_22C3BDA4C();
              sub_22C3A5038(v62, v63, v64);
              v27 = v43;
              v29 = v61;
              v28 = __clz(__rbit64(v59)) + v56;
              goto LABEL_20;
            }
          }

          v65 = v54;
          sub_22C3BDA4C();
          sub_22C3A5038(v66, v67, v68);
          v27 = v43;
          v29 = v65;
LABEL_20:
          v33 = v79;
        }

        v32 = v80 + 1;
        if (v80 + 1 == v73)
        {
          goto LABEL_25;
        }

        v31 = 0;
        v26 = *(v27 + 36);
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
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
  }

  else
  {
LABEL_25:
    sub_22C36FB20();
  }
}

uint64_t sub_22C3B3E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  if (!*(a3 + 16))
  {
    return v4;
  }

  v24 = MEMORY[0x277D84F90];
  v5 = sub_22C3BD82C();
  sub_22C3B6440(v5, v6, v7, v8, v9, v10, v11);
  v4 = v24;
  v12 = sub_22C90993C();
  sub_22C3699B8(v12);
  while (1)
  {
    v13 = sub_22C386C3C();
    v14(v13);
    if (v3)
    {
      break;
    }

    if (*(v24 + 16) >= *(v24 + 24) >> 1)
    {
      sub_22C379C28();
      sub_22C3B6440(v16, v17, v18, v19, v20, v21, v22);
    }

    sub_22C38B3F8();
    sub_22C382C30();
    if (v15)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3B3FC8()
{
  sub_22C389FC4();
  if (!v2)
  {
    return sub_22C3BD86C();
  }

  v5 = v4;
  v6 = v3;
  v24 = MEMORY[0x277D84F90];
  v7 = sub_22C3BD82C();
  sub_22C3B63D4(v7, v8, v9);
  v10 = v24;
  v11 = v5(0);
  sub_22C3699B8(v11);
  v13 = v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v14 + 72);
  while (1)
  {
    v22(&v23, v13);
    if (v0)
    {
      break;
    }

    v0 = 0;
    v16 = v23;
    v24 = v10;
    sub_22C3BD9BC();
    if (v17)
    {
      sub_22C379C28();
      sub_22C3B63D4(v18, v19, v20);
      v10 = v24;
    }

    *(v10 + 16) = v5;
    *(v10 + 8 * v1 + 32) = v16;
    v13 += v15;
    if (!--v2)
    {
      return sub_22C3BD86C();
    }
  }

  __break(1u);
  return result;
}

void sub_22C3B4130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C3BDAA8();
  a25 = v28;
  a26 = v29;
  sub_22C389FC4();
  if (v27)
  {
    v32 = v31;
    v33 = v30;
    a16 = MEMORY[0x277D84F90];
    v34 = sub_22C3BD82C();
    sub_22C3B5E2C(v34, v35, v36, v37, v38, v39, v40);
    v41 = v32(0);
    sub_22C3699B8(v41);
    v43 = v33 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    while (1)
    {
      a10(&a13, v43, &a12);
      if (v26)
      {
        break;
      }

      sub_22C382EB4();
      if (v44)
      {
        sub_22C379C28();
        sub_22C3B5E2C(v46, v47, v48, v49, v50, v51, v52);
      }

      sub_22C3BD9AC();
      sub_22C382C30();
      if (v45)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_10:
  sub_22C3BD86C();
  sub_22C3BDA8C();
}

uint64_t sub_22C3B4248(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = *(a3 + 16);
  if (v7)
  {
    v23 = MEMORY[0x277D84F90];
    v9 = sub_22C3BD82C();
    sub_22C3B7908(v9);
    v10 = v23;
    v11 = sub_22C9093BC();
    sub_22C3699B8(v11);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v14 + 72);
    while (1)
    {
      a1(&v22, v13, &v21);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v16 = v22;
      v23 = v10;
      sub_22C3BD9BC();
      if (v17)
      {
        sub_22C379C28();
        sub_22C3B7908(v18);
        v10 = v23;
      }

      *(v10 + 16) = v5;
      *(v10 + v4 + 32) = v16;
      v13 += v15;
      if (!--v7)
      {
        return sub_22C3BD86C();
      }
    }
  }

  return sub_22C3BD86C();
}

void sub_22C3B4388(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = a3;
    v42 = MEMORY[0x277D84F90];
    v6 = sub_22C370024();
    sub_22C3B79B8(v6, v4, 0);
    v8 = sub_22C57D74C();
    v9 = v42;
    v11 = v10;
    v12 = 0;
    v13 = v5 + 56;
    v33 = v4;
    v14 = 1;
    v37 = v5;
    v34 = v5 + 56;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < v14 << *(v5 + 32))
      {
        v15 = v8 >> 6;
        v16 = v14 << v8;
        if ((*(v13 + 8 * (v8 >> 6)) & (v14 << v8)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v5 + 36) != v7)
        {
          goto LABEL_27;
        }

        v38 = v12;
        v39 = v7;
        v17 = v9;
        v18 = v8;
        v40 = *(*(v5 + 48) + 8 * v8);

        v19 = a2;
        a1(&v41, &v40);
        if (v3)
        {
          goto LABEL_31;
        }

        v20 = v41;
        v21 = v17;
        v42 = v17;
        v22 = *(v17 + 16);
        if (v22 >= *(v21 + 24) >> 1)
        {
          sub_22C3BD9DC();
          sub_22C3B79B8(v30, v31, v32);
          v21 = v42;
        }

        *(v21 + 16) = v22 + 1;
        *(v21 + 8 * v22 + 32) = v20;
        if (v11)
        {
          goto LABEL_32;
        }

        v5 = v37;
        sub_22C3837C8();
        v13 = v34;
        if (v18 >= a2)
        {
          goto LABEL_28;
        }

        if ((*(v34 + 8 * v15) & v16) == 0)
        {
          goto LABEL_29;
        }

        if (*(v37 + 36) != v39)
        {
          goto LABEL_30;
        }

        v3 = 0;
        sub_22C379EE4();
        if (v23)
        {
          sub_22C3819A0();
          v28 = v15 + 1;
          v24 = v33;
          while (v28 < v27)
          {
            sub_22C37B918();
            if (v37)
            {
              v19 = v25;
              sub_22C3A5038(v18, v26, 0);
              sub_22C385508();
              goto LABEL_20;
            }
          }

          v29 = v25;
          sub_22C3A5038(v18, v26, 0);
          v9 = v29;
LABEL_20:
          v5 = v37;
          v14 = 1;
        }

        else
        {
          sub_22C3815D8();
          v24 = v33;
        }

        v12 = v38 + 1;
        if (v38 + 1 == v24)
        {
          return;
        }

        v11 = 0;
        v7 = *(v5 + 36);
        v8 = v19;
        if (v19 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
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
  }
}

void sub_22C3B4604()
{
  sub_22C370030();
  sub_22C3BDA6C();
  v13 = v2;
  sub_22C908C5C();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v4 = *(v1 + 16);
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];
    v5 = sub_22C370024();
    sub_22C3B7A30(v5, v4, 0);
    v6 = (v1 + 32);
    while (1)
    {
      v7 = *v6++;
      v15 = v7;
      v13(&v15, &v14);
      if (v0)
      {
        break;
      }

      v0 = 0;
      v9 = *(v16 + 16);
      v8 = *(v16 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_22C3B7A30(v8 > 1, v9 + 1, 1);
      }

      *(v16 + 16) = v9 + 1;
      sub_22C36BA94();
      v11 = sub_22C3BDA0C(v10);
      v12(v11);
      if (!--v4)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  sub_22C3772F0();
  sub_22C36FB20();
}

void sub_22C3B47C8()
{
  sub_22C370030();
  sub_22C3BDA6C();
  v31 = v2;
  v30 = sub_22C906D2C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v37 = v7 - v6;
  v8 = *(v1 + 16);
  if (v8)
  {
    v36 = v0;
    v40 = MEMORY[0x277D84F90];
    v9 = sub_22C370024();
    sub_22C3B7B38(v9, v8, 0);
    v35 = v40;
    v11 = sub_22C57D74C();
    v13 = v12;
    v14 = 0;
    v34 = v1 + 56;
    v15 = 1;
    v16 = v1;
    v32 = v1;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < v15 << *(v16 + 32))
      {
        v17 = v11 >> 6;
        v18 = v15 << v11;
        if ((*(v34 + 8 * (v11 >> 6)) & (v15 << v11)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v16 + 36) != v10)
        {
          goto LABEL_27;
        }

        v33 = v14;
        v19 = v10;
        v39 = *(*(v16 + 48) + 8 * v11);

        v31(&v39, &v38);
        if (v36)
        {

          goto LABEL_24;
        }

        v20 = v35;
        v21 = *(v35 + 16);
        v36 = 0;
        if (v21 >= *(v35 + 24) >> 1)
        {
          sub_22C3BD85C();
          sub_22C3B7B38(v27, v28, v29);
          v20 = v35;
        }

        *(v20 + 16) = v21 + 1;
        sub_22C36BA94();
        v35 = v22;
        (*(v4 + 32))(v22 + v23 + *(v4 + 72) * v21, v37, v30);
        if (v13)
        {
          goto LABEL_31;
        }

        v16 = v32;
        sub_22C3837C8();
        if (v11 >= 0)
        {
          goto LABEL_28;
        }

        if ((*(v34 + 8 * v17) & v18) == 0)
        {
          goto LABEL_29;
        }

        if (*(v32 + 36) != v19)
        {
          goto LABEL_30;
        }

        sub_22C379EE4();
        if (v24)
        {
          sub_22C3819A0();
          v26 = v17 + 1;
          while (v26 < v25)
          {
            sub_22C37B918();
            if (v32)
            {
              sub_22C3A5038(v11, v19, 0);
              sub_22C385508();
              goto LABEL_20;
            }
          }

          sub_22C3A5038(v11, v19, 0);
LABEL_20:
          v15 = 1;
          v16 = v32;
        }

        else
        {
          sub_22C3815D8();
        }

        v14 = v33 + 1;
        if (v33 + 1 == v8)
        {
          goto LABEL_24;
        }

        v13 = 0;
        v10 = *(v16 + 36);
        v11 = 0;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_22C3772F0();
    sub_22C36FB20();
  }
}

void sub_22C3B4D04()
{
  sub_22C370030();
  v27 = v3;
  v28 = v2;
  v5 = v4;
  v7 = v6;
  sub_22C3BDA6C();
  v29 = v8;
  v10 = v9(0);
  v11 = sub_22C3699B8(v10);
  v13 = v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = *(v1 + 16);
  if (v16)
  {
    v30 = MEMORY[0x277D84F90];
    v17 = sub_22C370024();
    v25 = v7;
    (v7)(v17, v16, 0);
    v18 = v5(0);
    sub_22C3699B8(v18);
    v20 = v1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v26 = *(v21 + 72);
    while (1)
    {
      v28(v20);
      if (v0)
      {
        break;
      }

      v0 = 0;
      v22 = *(v30 + 16);
      if (v22 >= *(v30 + 24) >> 1)
      {
        sub_22C3BD9DC();
        v25();
      }

      *(v30 + 16) = v22 + 1;
      sub_22C36BA94();
      sub_22C3BD7BC(v15, v30 + v23 + *(v13 + 72) * v22, v27);
      v20 += v26;
      if (!--v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_22C3772F0();
    sub_22C36FB20();
  }
}

void sub_22C3B4ED8()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v20 = v4;
  v5 = type metadata accessor for RetrievedToolWithAttribution(0);
  v6 = sub_22C3699B8(v5);
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = *(v3 + 16);
  if (v12)
  {
    v22 = MEMORY[0x277D84F90];
    v13 = sub_22C370024();
    sub_22C3B7CA0(v13, v12, 0);
    sub_22C36BA94();
    v19 = v14;
    v15 = v3 + v14;
    v16 = *(v8 + 72);
    while (1)
    {
      v20(v15, &v21);
      if (v1)
      {
        break;
      }

      v1 = 0;
      v18 = *(v22 + 16);
      v17 = *(v22 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22C3B7CA0(v17 > 1, v18 + 1, 1);
      }

      *(v22 + 16) = v18 + 1;
      sub_22C3BD7BC(v11, v22 + v19 + v18 * v16, type metadata accessor for RetrievedToolWithAttribution);
      v15 += v16;
      if (!--v12)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  sub_22C3772F0();
  sub_22C36FB20();
}

void sub_22C3B5114(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v58 = MEMORY[0x277D84F90];
    v7 = sub_22C370024();
    sub_22C3B5E2C(v7, v5, 0, v8, v9, v10, v11);
    v12 = v58;
    v14 = sub_22C57D74C();
    v16 = v15;
    v17 = 0;
    v54 = a3 + 56;
    v18 = 1;
    if ((v14 & 0x8000000000000000) == 0)
    {
      while (v14 < v18 << *(a3 + 32))
      {
        v19 = v14 >> 6;
        v20 = v18 << v14;
        if ((*(v54 + 8 * (v14 >> 6)) & (v18 << v14)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a3 + 36) != v13)
        {
          goto LABEL_27;
        }

        v52 = v17;
        v53 = v13;
        v21 = v14;
        v22 = *(a3 + 48) + 24 * v14;
        v24 = *v22;
        v23 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 16);
        v55[0] = v24;
        v55[1] = v23;
        v56 = v22;

        v25 = a2;
        a1(v57, v55);
        if (v4)
        {
          goto LABEL_31;
        }

        v4 = 0;

        v26 = v57[0];
        v27 = v57[1];
        v28 = v12;
        v58 = v12;
        v29 = *(v12 + 16);
        if (v29 >= *(v28 + 24) >> 1)
        {
          sub_22C3BD9EC();
          v48 = v40;
          v49 = v39;
          sub_22C3B5E2C(v41, v42, v43, v44, v45, v46, v47);
          v27 = v48;
          v26 = v49;
          v28 = v58;
        }

        *(v28 + 16) = v29 + 1;
        v30 = v28 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v27;
        if (v16)
        {
          goto LABEL_32;
        }

        sub_22C3837C8();
        if (v21 >= a2)
        {
          goto LABEL_28;
        }

        if ((*(v54 + 8 * v19) & v20) == 0)
        {
          goto LABEL_29;
        }

        v12 = v31;
        if (*(a3 + 36) != v53)
        {
          goto LABEL_30;
        }

        sub_22C379EE4();
        if (v32)
        {
          sub_22C3819A0();
          v38 = v19 + 1;
          while (v38 < v37)
          {
            sub_22C37B918();
            if (a3)
            {
              sub_22C3BDAC4(v35, v36);
              sub_22C385508();
              goto LABEL_20;
            }
          }

          sub_22C3BDAC4(v35, v36);
LABEL_20:
          v18 = 1;
        }

        else
        {
          sub_22C3860E8();
          v25 = v34 | v33 & 0x7FFFFFFFFFFFFFC0;
        }

        v17 = v52 + 1;
        if (v52 + 1 == v5)
        {
          return;
        }

        v16 = 0;
        v13 = *(a3 + 36);
        v14 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
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
  }
}

void sub_22C3B53D8()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v28 = v8;
  v29 = v9;
  v27 = v10(0);
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = *(v7 + 16);
  if (v16)
  {
    v30 = MEMORY[0x277D84F90];
    v17 = sub_22C370024();
    v24 = v4;
    (v4)(v17, v16, 0);
    v18 = v2(0);
    sub_22C3699B8(v18);
    v20 = v7 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v26 = v12 + 32;
    v25 = *(v21 + 72);
    while (1)
    {
      v28(v20);
      if (v5)
      {
        break;
      }

      v5 = 0;
      v22 = *(v30 + 16);
      if (v22 >= *(v30 + 24) >> 1)
      {
        sub_22C3BD9DC();
        v24();
      }

      *(v30 + 16) = v22 + 1;
      sub_22C36BA94();
      (*(v12 + 32))(v30 + v23 + *(v12 + 72) * v22, v15, v27);
      v20 += v25;
      if (!--v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_22C3772F0();
    sub_22C36FB20();
  }
}

uint64_t sub_22C3B55C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a2;
  v23[1] = a1;
  v23[0] = a3;
  v3 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = sub_22C90880C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C908A0C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90878C();
  v17 = sub_22C9087DC();
  (*(v10 + 8))(v12, v9);
  sub_22C3A5950(v17);

  sub_22C3BD74C(v8, v6);
  if (sub_22C370B74(v6, 1, v13) == 1)
  {
    sub_22C36DD28(v6, &qword_27D9BA808, &qword_22C90C6E0);
    sub_22C90735C();
    sub_22C3A5F00();
    v18 = swift_allocError();
    v19 = v26;
    v20 = v25;
    *v21 = v24;
    *(v21 + 16) = v20;
    *(v21 + 32) = v19;
    swift_willThrow();
    result = sub_22C36DD28(v8, &qword_27D9BA808, &qword_22C90C6E0);
    *v27 = v18;
  }

  else
  {
    sub_22C36DD28(v8, &qword_27D9BA808, &qword_22C90C6E0);
    (*(v14 + 32))(v16, v6, v13);
    sub_22C90893C();
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

void *AgenticPlanInterpreterService.deinit()
{

  sub_22C36FF94((v0 + 24));
  sub_22C36FF94((v0 + 64));
  return v0;
}

uint64_t AgenticPlanInterpreterService.__deallocating_deinit()
{
  AgenticPlanInterpreterService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22C3B595C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C37524C;

  return AgenticPlanInterpreterService.setup(sessionState:)();
}

uint64_t sub_22C3B59E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B0B10;

  return AgenticPlanInterpreterService.handle(_:plannerServiceContext:)();
}

uint64_t sub_22C3B5AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C649FAC();
  if (!v1)
  {
    v4 = result;
    result = type metadata accessor for ToolResolver();
    a1[3] = result;
    a1[4] = &off_283FBEC60;
    *a1 = v4;
  }

  return result;
}

uint64_t sub_22C3B5BBC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

uint64_t sub_22C3B5CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanCycleId(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C3B5D60()
{
  result = qword_27D9BAAB8;
  if (!qword_27D9BAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAAB8);
  }

  return result;
}

uint64_t sub_22C3B5DD4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_22C3B5E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22C3BD890();
  sub_22C3B8910();
  *v7 = v8;
}

uint64_t getEnumTagSinglePayload for AgenticPlanInterpreterService.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AgenticPlanInterpreterService.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C3B5FC0()
{
  result = qword_27D9BAAC0;
  if (!qword_27D9BAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAAC0);
  }

  return result;
}

unint64_t sub_22C3B6014()
{
  result = qword_27D9BAAC8;
  if (!qword_27D9BAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BAAC8);
  }

  return result;
}

uint64_t sub_22C3B626C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B81C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22C3B6304(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B82D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B6440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22C3BD878();
  sub_22C3BD2CC();
  *v7 = v8;
}

void sub_22C3B6540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22C3BD950();
  sub_22C3BCD34(v8, v9, v10, v11, v12, v13, v14, v15);
  *v7 = v16;
}

void sub_22C3B65D4()
{
  sub_22C388198();
  sub_22C3BD544(v1, v2, v3, v4, v5, v6, v7, sub_22C3D70E0);
  *v0 = v8;
}

void sub_22C3B663C()
{
  sub_22C375DEC();
  sub_22C3BD544(v1, v2, v3, v4, v5, v6, v7, sub_22C3D70C8);
  *v0 = v8;
}

void sub_22C3B66A4()
{
  sub_22C36EBFC();
  sub_22C3B8864();
  *v0 = v1;
}

void *sub_22C3B672C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B89BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22C3B68B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B8C78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22C3B68D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B8D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22C3B68F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B8EA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22C3B6A74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B906C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B6AB4()
{
  sub_22C3743CC();
  sub_22C3BBC08(v1, v2, v3, v4, v5, v6, v7, v8);
  *v0 = v9;
}

uint64_t sub_22C3B6C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B9260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22C3B6CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B9438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22C3B6D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B9550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22C3B6D28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B9660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22C3B6D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B98E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B6D88()
{
  sub_22C38C318();
  sub_22C3BD544(v1, v2, v3, v4, v5, v6, v7, sub_22C3D7198);
  *v0 = v8;
}

void *sub_22C3B6DD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B9A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22C3B6E9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B9D70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22C3B6EBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22C3B9F3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22C3B6EDC()
{
  sub_22C37EB6C();
  sub_22C3BD544(v1, v2, v3, v4, v5, v6, v7, sub_22C3D735C);
  *v0 = v8;
}

void sub_22C3B6F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3BD938();
  sub_22C3BBB48();
  *v3 = v4;
}

void sub_22C3B6F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3BD920();
  sub_22C3BD544(v4, v5, v6, v7, v8, v9, v10, sub_22C3D738C);
  *v3 = v11;
}

void sub_22C3B6FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3BD908();
  sub_22C3BD544(v4, v5, v6, v7, v8, v9, v10, sub_22C3D7168);
  *v3 = v11;
}