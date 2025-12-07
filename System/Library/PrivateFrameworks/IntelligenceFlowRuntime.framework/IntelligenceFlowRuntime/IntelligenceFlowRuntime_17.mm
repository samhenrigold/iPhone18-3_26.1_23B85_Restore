unint64_t sub_22BD10908()
{
  result = qword_27D8E5B88;
  if (!qword_27D8E5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B88);
  }

  return result;
}

unint64_t sub_22BD10960()
{
  result = qword_27D8E5B90;
  if (!qword_27D8E5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B90);
  }

  return result;
}

unint64_t sub_22BD109B8()
{
  result = qword_27D8E5B98;
  if (!qword_27D8E5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5B98);
  }

  return result;
}

unint64_t sub_22BD10A10()
{
  result = qword_27D8E5BA0;
  if (!qword_27D8E5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BA0);
  }

  return result;
}

unint64_t sub_22BD10A68()
{
  result = qword_27D8E5BA8;
  if (!qword_27D8E5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BA8);
  }

  return result;
}

unint64_t sub_22BD10AC0()
{
  result = qword_27D8E5BB0;
  if (!qword_27D8E5BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BB0);
  }

  return result;
}

unint64_t sub_22BD10B18()
{
  result = qword_27D8E5BB8;
  if (!qword_27D8E5BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BB8);
  }

  return result;
}

unint64_t sub_22BD10B6C()
{
  result = qword_27D8E5BC8;
  if (!qword_27D8E5BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BC8);
  }

  return result;
}

unint64_t sub_22BD10BC0()
{
  result = qword_27D8E5BD0;
  if (!qword_27D8E5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BD0);
  }

  return result;
}

unint64_t sub_22BD10C14(uint64_t a1)
{
  result = sub_22BBBEE20(a1);
  if (!result)
  {
    v4 = v3;
    sub_22BBEB2E0(&qword_27D8E5BD8, &qword_22BDCBA18);
    sub_22BD0B918(v4);
    result = sub_22BD110E4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BD10C9C()
{
  result = qword_27D8E5BF8;
  if (!qword_27D8E5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5BF8);
  }

  return result;
}

_BYTE *sub_22BD10CF0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BB697A0(result, v6);
        break;
      case 2:
        result = sub_22BB97778(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_22BBC0270(result, v6);
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
          result = sub_22BB75604(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BD10DC0()
{
  result = qword_27D8E5C10;
  if (!qword_27D8E5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C10);
  }

  return result;
}

unint64_t sub_22BD10E18()
{
  result = qword_27D8E5C18;
  if (!qword_27D8E5C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C18);
  }

  return result;
}

unint64_t sub_22BD10E70()
{
  result = qword_27D8E5C20;
  if (!qword_27D8E5C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C20);
  }

  return result;
}

uint64_t sub_22BD10F48(uint64_t a1, uint64_t a2)
{

  return sub_22BDBB664();
}

uint64_t sub_22BD10F74(uint64_t a1, uint64_t a2)
{

  return sub_22BDBB664();
}

uint64_t sub_22BD10FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22BDBB5D4();
}

uint64_t sub_22BD11014()
{
  *v0 = *(v1 - 66);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BD11038(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22BDBB894();
}

uint64_t sub_22BD1105C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22BDBB664();
}

uint64_t sub_22BD110E4()
{

  return swift_getWitnessTable();
}

uint64_t sub_22BD11104()
{
  *v1 = v0;

  return sub_22BDBB564();
}

uint64_t sub_22BD11124()
{
  *v0 = *(v1 - 88);

  return sub_22BDBB564();
}

uint64_t sub_22BD1119C(uint64_t a1)
{
  result = sub_22BDB9774();
  if (v2 <= 0x3F)
  {
    result = sub_22BCB69BC(319, qword_28142CD18, &_s14ActionQueryingPMp);
    if (v3 <= 0x3F)
    {
      result = sub_22BCB69BC(319, qword_28142B648, &_s24PromptResponseRetrievingPMp);
      if (v4 <= 0x3F)
      {
        result = sub_22BCB69BC(319, qword_28142B290, &_s25ResolvedParameterQueryingPMp);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22BD112B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *, uint64_t))
{
  v8 = *v5;
  v9 = sub_22BB69FEC(a2, a2[3]);
  return sub_22BD17CE8(a1, v9, v8, a5);
}

void sub_22BD11304(char a1, char a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a1 == a5 && a2 == a6)
  {
    sub_22BCF018C();
    if (v6)
    {

      sub_22BCEFC84();
    }
  }
}

void sub_22BD11378(char a1, uint64_t a2, char a3)
{
  if (a1 == a3)
  {
    sub_22BCF018C();
  }
}

void sub_22BD11398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BB31014();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = sub_22BBE6DE0(&qword_27D8E5D60, &qword_22BDCC060);
  sub_22BB30444();
  v36 = v35;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v37);
  sub_22BB3721C();
  sub_22BB699E4(v33, v33[3]);
  sub_22BD17B60();
  sub_22BDBB8A4();
  a14 = v31;
  a13 = 0;
  v38 = sub_22BD10C9C();
  sub_22BB38154(&a14, &a13, v34, &_s17EvaluatorVoteTypeON, v38);
  if (!v24)
  {
    v41 = v29;
    a12 = 1;
    v39 = sub_22BBE6DE0(&qword_27D8E5D18, &qword_22BDCC028);
    v40 = sub_22BD17BB4(&qword_27D8E5D68, &qword_27D8E5D70, &unk_22BDC8BAC, MEMORY[0x277D83948]);
    sub_22BB38154(&v41, &a12, v34, v39, v40);
  }

  (*(v36 + 8))(v25, v34);
  sub_22BB376A8();
}

uint64_t sub_22BD11540(void *a1)
{
  v3 = sub_22BBE6DE0(&qword_27D8E5D08, &qword_22BDCC020);
  sub_22BB30444();
  v5 = v4;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB32750();
  sub_22BB699E4(a1, a1[3]);
  sub_22BD17B60();
  sub_22BDBB894();
  sub_22BD10BC0();
  sub_22BB32800();
  sub_22BDBB5D4();
  sub_22BBE6DE0(&qword_27D8E5D18, &qword_22BDCC028);
  sub_22BD17BB4(&qword_27D8E5D20, &qword_27D8E5D28, &unk_22BDC8BD4, MEMORY[0x277D83978]);
  sub_22BDBB5D4();
  (*(v5 + 8))(v1, v3);
  sub_22BB32FA4(a1);
  return v8;
}

uint64_t sub_22BD11744(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696174736261 && a2 == 0xE700000000000000;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22BDBB6D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_22BD11870()
{
  sub_22BB31014();
  v33 = v1;
  v3 = v2;
  sub_22BBE6DE0(&qword_27D8E5E48, &qword_22BDCC730);
  sub_22BB30444();
  v31 = v5;
  v32 = v4;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30BA8();
  v30 = v7;
  sub_22BBE6DE0(&qword_27D8E5E50, &qword_22BDCC738);
  sub_22BB30444();
  v28 = v9;
  v29 = v8;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_22BBE6DE0(&qword_27D8E5E58, &qword_22BDCC740);
  sub_22BB30444();
  v27 = v14;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v18 = sub_22BBE6DE0(&qword_27D8E5E60, &qword_22BDCC748);
  sub_22BB30444();
  v20 = v19;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB34298();
  sub_22BB699E4(v3, v3[3]);
  sub_22BD18694();
  sub_22BDBB8A4();
  v22 = (v20 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      sub_22BD1873C();
      sub_22BB31D34();
      sub_22BDBB5F4();
      (*(v28 + 8))(v12, v29);
    }

    else
    {
      sub_22BB3CF44();
      sub_22BD186E8();
      sub_22BB32C74();
      sub_22BDBB5F4();
      v23 = sub_22BB37D64();
      v25(v23, v24);
    }
  }

  else
  {
    sub_22BD18790();
    sub_22BB31D34();
    sub_22BDBB5F4();
    (*(v27 + 8))(v17, v13);
  }

  (*v22)(v0, v18);
  sub_22BB376A8();
}

void sub_22BD11B78()
{
  sub_22BB31014();
  v2 = v1;
  v43 = sub_22BBE6DE0(&qword_27D8E5E08, &qword_22BDCC710);
  sub_22BB30444();
  v42 = v3;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB30BA8();
  v40 = v5;
  v41 = sub_22BBE6DE0(&qword_27D8E5E10, &qword_22BDCC718);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB32750();
  v7 = sub_22BBE6DE0(&qword_27D8E5E18, &qword_22BDCC720);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB34298();
  v9 = sub_22BBE6DE0(&qword_27D8E5E20, &qword_22BDCC728);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB699E4(v2, v2[3]);
  sub_22BD18694();
  sub_22BDBB894();
  if (!v0)
  {
    sub_22BDBB5E4();
    v11 = sub_22BD006D0();
    v13 = v9;
    if (v14 != v12 >> 1)
    {
      sub_22BB2F4F4();
      if (v18 == v19)
      {
        __break(1u);
        return;
      }

      v20 = v9;
      v21 = *(v17 + v16);
      sub_22BD006A8(v16 + 1, v15, v11, v17);
      v23 = v22;
      v25 = v24;
      swift_unknownObjectRelease();
      if (v23 == v25 >> 1)
      {
        if (v21)
        {
          if (v21 == 1)
          {
            sub_22BD1873C();
            sub_22BB32800();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v26 = sub_22BB37D64();
            v27(v26, v41);
          }

          else
          {
            sub_22BB3CF44();
            sub_22BD186E8();
            sub_22BB32800();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            (*(v42 + 8))(v40, v43);
          }

          v28 = sub_22BB38B68();
          v29(v28);
        }

        else
        {
          sub_22BD18790();
          sub_22BB32800();
          sub_22BDBB554();
          swift_unknownObjectRelease();
          v36 = sub_22BB37D64();
          v37(v36, v7);
          v38 = sub_22BB35750();
          v39(v38, v20);
        }

        goto LABEL_12;
      }

      v13 = v20;
    }

    v30 = sub_22BDBB3A4();
    swift_allocError();
    v32 = v31;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    *v32 = &_s17EvaluatorVoteTypeON;
    v33 = sub_22BDBB564();
    sub_22BB36D74(v33);
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    v34 = sub_22BB35750();
    v35(v34, v13);
  }

LABEL_12:
  sub_22BB32FA4(v2);
  sub_22BB376A8();
}

uint64_t sub_22BD120C4(uint64_t a1)
{
  v2 = sub_22BD17B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD12100(uint64_t a1)
{
  v2 = sub_22BD17B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD1213C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22BD11540(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_22BD121A4(uint64_t a1)
{
  v2 = sub_22BD18790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD121E0(uint64_t a1)
{
  v2 = sub_22BD18790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD12224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD11744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD1224C(uint64_t a1)
{
  v2 = sub_22BD18694();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD12288(uint64_t a1)
{
  v2 = sub_22BD18694();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD122C4(uint64_t a1)
{
  v2 = sub_22BD1873C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD12300(uint64_t a1)
{
  v2 = sub_22BD1873C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD1233C(uint64_t a1)
{
  v2 = sub_22BD186E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD12378(uint64_t a1)
{
  v2 = sub_22BD186E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BD123B4(_BYTE *a1@<X8>)
{
  sub_22BD11B78();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_22BD123FC(char a1)
{
  result = 0x72506E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6465786966;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x706D6F436B736174;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BD124B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72506E6F69746361 && a2 == 0xEC00000074706D6FLL;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465786966 && a2 == 0xE500000000000000;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000022BDD3410 == a2;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x706D6F436B736174 && a2 == 0xEE006E6F6974656CLL;
        if (v8 || (sub_22BDBB6D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000011 && 0x800000022BDD33F0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_22BDBB6D4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_22BD12668(char a1)
{
  result = 0x72506E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x6465786966;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x706D6F436B736174;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_22BD12720()
{
  sub_22BB31014();
  v44 = v0;
  v2 = v1;
  sub_22BBE6DE0(&qword_27D8E5D30, &qword_22BDCC030);
  sub_22BB30444();
  v42 = v4;
  v43 = v3;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB30BA8();
  v41 = v6;
  sub_22BBE6DE0(&qword_27D8E5D38, &qword_22BDCC038);
  sub_22BB30444();
  v39 = v8;
  v40 = v7;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB30BA8();
  v38 = v10;
  sub_22BBE6DE0(&qword_27D8E5D40, &qword_22BDCC040);
  sub_22BB30444();
  v36 = v12;
  v37 = v11;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB30BA8();
  v35 = v14;
  sub_22BBE6DE0(&qword_27D8E5D48, &qword_22BDCC048);
  sub_22BB30444();
  v33 = v16;
  v34 = v15;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v20 = sub_22BBE6DE0(&qword_27D8E5D50, &qword_22BDCC050);
  sub_22BB30444();
  v32 = v21;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  v23 = sub_22BBE6DE0(&qword_27D8E5D58, &qword_22BDCC058);
  sub_22BB30444();
  v25 = v24;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  v28 = &v32 - v27;
  sub_22BB699E4(v2, v2[3]);
  sub_22BD17968();
  sub_22BDBB8A4();
  switch(v44)
  {
    case 1:
      sub_22BD17AB8();
      sub_22BB31D34();
      sub_22BDBB5F4();
      v31 = v34;
      v30 = *(v33 + 8);
      v29 = v19;
      break;
    case 2:
      sub_22BD17A64();
      sub_22BB32C74();
      sub_22BDBB5F4();
      goto LABEL_6;
    case 3:
      sub_22BD17A10();
      sub_22BB32C74();
      sub_22BDBB5F4();
      goto LABEL_6;
    case 4:
      sub_22BD179BC();
      sub_22BB32C74();
      sub_22BDBB5F4();
LABEL_6:
      v29 = sub_22BB37D64();
      break;
    default:
      sub_22BD17B0C();
      sub_22BB32C74();
      sub_22BDBB5F4();
      v29 = sub_22BB37D64();
      v31 = v20;
      break;
  }

  v30(v29, v31);
  (*(v25 + 8))(v28, v23);
  sub_22BB376A8();
}

void sub_22BD12B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BB31014();
  a25 = v29;
  a26 = v30;
  v98 = v26;
  v32 = v31;
  v97 = sub_22BBE6DE0(&qword_27D8E5CA8, &qword_22BDCBFE8);
  sub_22BB30444();
  v92 = v33;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v34);
  sub_22BB30BA8();
  v96 = v35;
  sub_22BBE6DE0(&qword_27D8E5CB0, &qword_22BDCBFF0);
  sub_22BB30444();
  v90 = v37;
  v91 = v36;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  sub_22BB30BA8();
  v94 = v39;
  sub_22BBE6DE0(&qword_27D8E5CB8, &qword_22BDCBFF8);
  sub_22BB30444();
  v88 = v41;
  v89 = v40;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v42);
  sub_22BB30BA8();
  v93 = v43;
  sub_22BBE6DE0(&qword_27D8E5CC0, &qword_22BDCC000);
  sub_22BB30444();
  v86 = v45;
  v87 = v44;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v46);
  sub_22BB3721C();
  v47 = sub_22BBE6DE0(&qword_27D8E5CC8, &qword_22BDCC008);
  sub_22BB30444();
  v85 = v48;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v49);
  sub_22BB34298();
  v50 = sub_22BBE6DE0(&qword_27D8E5CD0, &unk_22BDCC010);
  sub_22BB30444();
  v95 = v51;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v52);
  v54 = &v81 - v53;
  sub_22BB699E4(v32, v32[3]);
  sub_22BD17968();
  v55 = v98;
  sub_22BDBB894();
  if (!v55)
  {
    v82 = v47;
    v83 = v28;
    v84 = v27;
    v57 = v96;
    v56 = v97;
    v98 = v32;
    v58 = v54;
    sub_22BDBB5E4();
    v59 = sub_22BD006D0();
    if (v61 != v60 >> 1)
    {
      sub_22BB2F4F4();
      if (v65 == v66)
      {
        __break(1u);
        return;
      }

      v67 = *(v64 + v63);
      sub_22BD006A8(v63 + 1, v62, v59, v64);
      v69 = v68;
      v71 = v70;
      swift_unknownObjectRelease();
      v58 = v54;
      if (v69 == v71 >> 1)
      {
        v72 = v95;
        switch(v67)
        {
          case 1:
            a13 = 1;
            sub_22BD17AB8();
            v78 = v84;
            sub_22BB323B0(&_s13EvaluatorTypeO15FixedCodingKeysON, &a13);
            swift_unknownObjectRelease();
            v80 = v86;
            v79 = v87;
            goto LABEL_15;
          case 2:
            a14 = 2;
            sub_22BD17A64();
            v78 = v93;
            sub_22BB323B0(&_s13EvaluatorTypeO26MajorityMediatorCodingKeysON, &a14);
            swift_unknownObjectRelease();
            v80 = v88;
            v79 = v89;
            goto LABEL_15;
          case 3:
            a15 = 3;
            sub_22BD17A10();
            v78 = v94;
            sub_22BB323B0(&_s13EvaluatorTypeO24TaskCompletionCodingKeysON, &a15);
            swift_unknownObjectRelease();
            v80 = v90;
            v79 = v91;
LABEL_15:
            (*(v80 + 8))(v78, v79);
            break;
          case 4:
            a16 = 4;
            sub_22BD179BC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            (*(v92 + 8))(v57, v56);
            break;
          default:
            a12 = 0;
            sub_22BD17B0C();
            v73 = v83;
            sub_22BB323B0(&_s13EvaluatorTypeO22ActionPromptCodingKeysON, &a12);
            swift_unknownObjectRelease();
            (*(v85 + 8))(v73, v82);
            break;
        }

        (*(v72 + 8))(v54, v50);
        sub_22BB32FA4(v98);
        goto LABEL_10;
      }
    }

    v74 = sub_22BDBB3A4();
    swift_allocError();
    v76 = v75;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    *v76 = &_s13EvaluatorTypeON;
    v77 = sub_22BDBB564();
    sub_22BB36D74(v77);
    (*(*(v74 - 8) + 104))(v76, *MEMORY[0x277D84160], v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v95 + 8))(v58, v50);
    v32 = v98;
  }

  sub_22BB32FA4(v32);
LABEL_10:
  sub_22BB376A8();
}

uint64_t sub_22BD131C4(uint64_t a1)
{
  v2 = sub_22BD17B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD13200(uint64_t a1)
{
  v2 = sub_22BD17B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD13244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD124B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD1326C(uint64_t a1)
{
  v2 = sub_22BD17968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD132A8(uint64_t a1)
{
  v2 = sub_22BD17968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD132E4(uint64_t a1)
{
  v2 = sub_22BD17AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD13320(uint64_t a1)
{
  v2 = sub_22BD17AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD1335C(uint64_t a1)
{
  v2 = sub_22BD17A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD13398(uint64_t a1)
{
  v2 = sub_22BD17A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD133D4(uint64_t a1)
{
  v2 = sub_22BD17A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD13410(uint64_t a1)
{
  v2 = sub_22BD17A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD1344C(uint64_t a1)
{
  v2 = sub_22BD179BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD13488(uint64_t a1)
{
  v2 = sub_22BD179BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BD13514()
{
  sub_22BB31014();
  v3 = v2;
  v4 = sub_22BBE6DE0(&qword_27D8E5C58, &unk_22BDCBCD0);
  sub_22BB30444();
  v6 = v5;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB3721C();
  sub_22BB699E4(v3, v3[3]);
  sub_22BD13A18();
  sub_22BDBB8A4();
  sub_22BD0F6BC();
  v8 = sub_22BB3A6FC();
  sub_22BB38154(v8, v9, v10, v11, v12);
  if (!v0)
  {
    sub_22BD13B14();
    v13 = sub_22BB3A6FC();
    sub_22BB38154(v13, v14, v15, v16, v17);
    sub_22BB3CF44();
    v18 = sub_22BBE6DE0(&qword_27D8E5C40, &qword_22BDCBCC8);
    sub_22BD13B68(&qword_27D8E5C68, sub_22BD13BE0, MEMORY[0x277D83948]);
    v19 = sub_22BB3A6FC();
    sub_22BB38154(v19, v20, v21, v18, v22);
  }

  (*(v6 + 8))(v1, v4);
  sub_22BB376A8();
}

void sub_22BD136E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB31014();
  v25 = v24;
  v26 = sub_22BBE6DE0(&qword_27D8E5C28, &qword_22BDCBCC0);
  sub_22BB30444();
  v28 = v27;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB32750();
  sub_22BB699E4(v25, v25[3]);
  sub_22BD13A18();
  sub_22BDBB894();
  sub_22BD0F614();
  sub_22BB31D34();
  sub_22BDBB5D4();
  sub_22BD13A6C();
  sub_22BB31D34();
  sub_22BDBB5D4();
  sub_22BBE6DE0(&qword_27D8E5C40, &qword_22BDCBCC8);
  sub_22BB3CF44();
  sub_22BD13B68(&qword_27D8E5C48, sub_22BD13AC0, MEMORY[0x277D83978]);
  sub_22BDBB5D4();
  (*(v28 + 8))(v23, v26);
  sub_22BB32FA4(v25);
  sub_22BB376A8();
}

uint64_t sub_22BD1392C(uint64_t a1)
{
  v2 = sub_22BD13A18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD13968(uint64_t a1)
{
  v2 = sub_22BD13A18();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22BD13A18()
{
  result = qword_27D8E5C30;
  if (!qword_27D8E5C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C30);
  }

  return result;
}

unint64_t sub_22BD13A6C()
{
  result = qword_27D8E5C38;
  if (!qword_27D8E5C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C38);
  }

  return result;
}

unint64_t sub_22BD13AC0()
{
  result = qword_27D8E5C50;
  if (!qword_27D8E5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C50);
  }

  return result;
}

unint64_t sub_22BD13B14()
{
  result = qword_27D8E5C60;
  if (!qword_27D8E5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C60);
  }

  return result;
}

uint64_t sub_22BD13B68(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BBEB2E0(&qword_27D8E5C40, &qword_22BDCBCC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BD13BE0()
{
  result = qword_27D8E5C70;
  if (!qword_27D8E5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C70);
  }

  return result;
}

uint64_t sub_22BD13C34(uint64_t a1, void *a2)
{
  v4 = *(v2 + 1);
  v5 = v2[16];
  v6 = *v2;
  v7 = sub_22BB69FEC(a2, a2[3]);

  return sub_22BD17C50(a1, v7, v6, v4, v5);
}

uint64_t sub_22BD13C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v4 = sub_22BDB4C34();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v73 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB43E4();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6);
  v79 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB77D4();
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v78 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v72 - v11;
  v12 = _s20ActionStepEvaluationVMa(0);
  MEMORY[0x28223BE20](v12);
  v77 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v72 - v15;
  v17 = _s23StatementStepEvaluationOMa(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v72 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v72 - v24;
  v26 = _s19TranscriptRetrieverVMa(0);
  v87 = v26;
  v88 = &off_283F7A608;
  sub_22BB8B8A0(v86, v27, v28, v29, v30, v31, v32, v33);
  sub_22BD17DF8();
  v34 = sub_22BB69FEC(v86, v87);
  sub_22BB69FEC((v34 + *(v26 + 24)), *(v34 + *(v26 + 24) + 24));
  v35 = a3;
  sub_22BCBD54C(a3, v16);
  if (sub_22BB3AA28(v16, 1, v17) != 1)
  {
    sub_22BD17DA4();
    sub_22BD17DF8();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_22BD17E4C(v23, _s23StatementStepEvaluationOMa);
      v59 = v78;
      sub_22BDB6404();
      sub_22BD17DF8();
      v60 = sub_22BDB77C4();
      v61 = sub_22BDBB114();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v85[0] = v63;
        *v62 = 136315138;
        v64 = sub_22BCC87B8();
        v66 = v65;
        sub_22BD17E4C(v20, _s23StatementStepEvaluationOMa);
        v67 = sub_22BB32EE0(v64, v66, v85);

        *(v62 + 4) = v67;
        _os_log_impl(&dword_22BB2C000, v60, v61, "Cannot make an action prompt vote outcome, %s is not for an action", v62, 0xCu);
        sub_22BB32FA4(v63);
        MEMORY[0x2318A6080](v63, -1, -1);
        MEMORY[0x2318A6080](v62, -1, -1);
      }

      else
      {

        sub_22BD17E4C(v20, _s23StatementStepEvaluationOMa);
      }

      (*(v83 + 8))(v59, v84);
      sub_22BD17E4C(v25, _s23StatementStepEvaluationOMa);
      goto LABEL_16;
    }

    v49 = v77;
    sub_22BD17DA4();
    v50 = *(v12 + 20);
    v51 = *(v49 + v50);
    if (*(v49 + v50))
    {
      if (v51 != 1)
      {
        v52 = sub_22BB69FEC(v86, v87);
        sub_22BB69088(v52 + *(v26 + 20), v85);
        sub_22BB69FEC(v85, v85[3]);
        v53 = v75;
        v54 = v73;
        v55 = v76;
        (*(v75 + 16))(v73, v74, v76);
        _s14ActionExecutedVMa(0);
        sub_22BBBCB1C();
        v57 = v56;
        (*(v53 + 8))(v54, v55);
        sub_22BB32FA4(v85);
        v58 = 0;
        if ((v57 & 1) == 0)
        {
LABEL_19:
          sub_22BD17E4C(v49, _s20ActionStepEvaluationVMa);
          sub_22BD17E4C(v25, _s23StatementStepEvaluationOMa);
          goto LABEL_20;
        }

        LOBYTE(v51) = 1;
      }

      v58 = 1;
    }

    else
    {
      v58 = 2;
    }

    sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
    v68 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
    v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_22BDBCBD0;
    *(v70 + v69) = v51;
    swift_storeEnumTagMultiPayload();
    goto LABEL_19;
  }

  sub_22BB58728(v16, &qword_27D8E3E10, &qword_22BDC1258);
  v36 = v80;
  sub_22BDB6404();
  v38 = v81;
  v37 = v82;
  v39 = v79;
  (*(v81 + 16))(v79, v35, v82);
  v40 = sub_22BDB77C4();
  v41 = sub_22BDBB114();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v85[0] = v43;
    *v42 = 136315138;
    sub_22BD17CA0(&qword_28142DD38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v44 = sub_22BDBB684();
    v45 = v39;
    v47 = v46;
    (*(v38 + 8))(v45, v37);
    v48 = sub_22BB32EE0(v44, v47, v85);

    *(v42 + 4) = v48;
    _os_log_impl(&dword_22BB2C000, v40, v41, "Cannot make an action prompt vote outcome, a statement step for statementEventId=%s is not found", v42, 0xCu);
    sub_22BB32FA4(v43);
    MEMORY[0x2318A6080](v43, -1, -1);
    MEMORY[0x2318A6080](v42, -1, -1);
  }

  else
  {

    (*(v38 + 8))(v39, v37);
  }

  (*(v83 + 8))(v36, v84);
LABEL_16:
  v58 = 0;
LABEL_20:
  sub_22BB32FA4(v86);
  return v58;
}

uint64_t sub_22BD145BC(uint64_t a1, uint64_t a2, int a3)
{
  v77 = a3;
  v114 = a2;
  v75 = sub_22BDB43E4();
  v116 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_22BDB8D84();
  v83 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_22BDB90B4();
  v115 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB5404();
  v81 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v72 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v85 = &v72 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v97 = &v72 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - v18;
  v109 = sub_22BDB87F4();
  v20 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22BDB9B14();
  v22 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22BDB9B54();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = _s19TranscriptRetrieverVMa(0);
  v121 = &off_283F7A608;
  sub_22BB8B8A0(&v119, v28, v29, v30, v31, v32, v33, v34);
  sub_22BD17DF8();
  v35 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  v78 = 0;
  v36 = 0;
  v37 = *(v35 + 20);
  v76 = a1;
  v38 = *(a1 + v37);
  v39 = v10;
  v40 = v25;
  v114 = *(v38 + 16);
  v111 = (v22 + 88);
  v112 = v25 + 16;
  v110 = *MEMORY[0x277D1E718];
  v107 = *MEMORY[0x277D1E798];
  v95 = *MEMORY[0x277D1E7C0];
  v84 = *MEMORY[0x277D1E720];
  v80 = *MEMORY[0x277D1E860];
  v79 = *MEMORY[0x277D1E868];
  v113 = (v25 + 8);
  v86 = (v22 + 8);
  v104 = (v22 + 96);
  v41 = v20;
  v94 = (v20 + 32);
  v93 = (v115 + 1);
  v42 = v81 + 2;
  v106 = (v81 + 11);
  v103 = *MEMORY[0x277D1CBF0];
  v102 = *MEMORY[0x277D1CBE8];
  v115 = (v81 + 1);
  v89 = *MEMORY[0x277D1CBA8];
  v92 = (v41 + 8);
  v82 = (v83 + 4);
  v81 += 4;
  ++v83;
  v73 = (v116 + 8);
  v88 = v13;
  v96 = v24;
  v87 = v25;
  v105 = v38;
  v90 = v39;
  v91 = v42;
  while (1)
  {
    if (v114 == v36)
    {
      goto LABEL_33;
    }

    v43 = *(v38 + 16);
    if (v36 >= v43)
    {
      break;
    }

    v44 = v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v45 = *(v40 + 72);
    v116 = v36;
    (*(v40 + 16))(v27, v44 + v45 * v36, v24);
    v46 = v117;
    v22 = v27;
    sub_22BDB9B24();
    v47 = (*v111)(v46, v118);
    if (v47 == v110)
    {
      (*v86)(v117, v118);
    }

    else
    {
      if (v47 == v107)
      {
        v48 = v27;
        v49 = v117;
        (*v104)(v117, v118);
        (*v94)(v108, v49, v109);
        v50 = v98;
        sub_22BDB87E4();
        sub_22BDB9094();
        (*v93)(v50, v99);
        v51 = *v91;
        v52 = v7;
        v53 = v97;
        (*v91)(v97, v19, v52);
        v54 = *v106;
        v55 = (*v106)(v53, v52);
        v13 = *v115;
        v56 = v53;
        v7 = v52;
        (*v115)(v56, v52);
        if (v55 == v103 || v55 == v102)
        {
          (v13)(v19, v52);
          (*v92)(v108, v109);
          (*v113)(v48, v96);
          goto LABEL_33;
        }

        v22 = v90;
        v51(v90, v19, v52);
        v58 = v54(v22, v52);
        v27 = v48;
        if (v58 == v89)
        {
          v64 = v74;
          sub_22BDB8F24();
          v65 = sub_22BB69FEC(&v119, v120);
          v22 = sub_22BD13C9C(v76, v65, v64);
          v67 = v66;
          (*v73)(v64, v75);
          (v13)(v19, v7);
          (*v92)(v108, v109);
          v24 = v96;
          (*v113)(v48, v96);
          v43 = &v121;
          if (v67)
          {
            goto LABEL_37;
          }

          (v13)(v90, v7);
          v78 = 1;
          v13 = v88;
        }

        else
        {
          (v13)(v19, v7);
          (*v92)(v108, v109);
          v24 = v96;
          (*v113)(v48, v96);
          (v13)(v22, v7);
          v13 = v88;
        }

        v40 = v87;
        goto LABEL_23;
      }

      v59 = v106;
      if (v47 == v95)
      {
        v60 = v117;
        (*v104)(v117, v118);
        (*v82)(v100, v60, v101);
        v61 = v85;
        sub_22BDB8D44();
        (*v81)(v13, v61, v7);
        v62 = (*v59)(v13, v7);
        if (v62 == v103)
        {
          (*v115)(v13, v7);
LABEL_32:
          (*v83)(v100, v101);
          (*v113)(v27, v24);
LABEL_33:
          v22 = 0;
          goto LABEL_34;
        }

        v22 = v62;
        (*v115)(v13, v7);
        if (v22 == v102)
        {
          goto LABEL_32;
        }

        (*v83)(v100, v101);
        (*v113)(v27, v24);
        goto LABEL_23;
      }

      if (v47 == v84)
      {
        (*v113)(v27, v24);
        (*v86)(v117, v118);
        goto LABEL_33;
      }

      if (v47 != v80 && v47 != v79)
      {
        (*v113)(v27, v24);
        (*v86)(v117, v118);
        goto LABEL_23;
      }
    }

    if (v78)
    {
      sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
      v69 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
      v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_22BDBCBD0;
      *(v71 + v70) = 2;
      v22 = 1;
      swift_storeEnumTagMultiPayload();
      (*v113)(v27, v24);
      goto LABEL_34;
    }

    (*v113)(v27, v24);
    v78 = 0;
LABEL_23:
    v36 = v116 + 1;
    v38 = v105;
  }

  __break(1u);
LABEL_37:
  (v13)(*(v43 - 32), v7);
LABEL_34:
  sub_22BB32FA4(&v119);
  return v22;
}

uint64_t sub_22BD15340(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v187 = a3;
  v232 = a2;
  v234 = a1;
  v180 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  v178 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v177 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v181 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v179 = &v162 - v7;
  v164 = _s23StatementFailureOutcomeVMa(0);
  MEMORY[0x28223BE20](v164);
  v166 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_22BDB4CE4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v165 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = _s23StatementSuccessOutcomeVMa(0);
  MEMORY[0x28223BE20](v169);
  v171 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_22BDB4E24();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v170 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_22BDB5404();
  v182 = *(v222 - 8);
  v12 = MEMORY[0x28223BE20](v222);
  v201 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v203 = &v162 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v193 = &v162 - v17;
  MEMORY[0x28223BE20](v16);
  v217 = &v162 - v18;
  v200 = sub_22BDB90B4();
  v225 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v199 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v198 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v192 = &v162 - v23;
  v176 = sub_22BDB8294();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v174 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_22BDB8D84();
  v211 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v224 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  v26 = MEMORY[0x28223BE20](v221);
  v212 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v226 = &v162 - v28;
  v29 = sub_22BBE6DE0(&qword_27D8E4320, &unk_22BDC2EA0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v219 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v197 = &v162 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v214 = &v162 - v35;
  MEMORY[0x28223BE20](v34);
  v213 = &v162 - v36;
  v223 = _s28StatementResolutionReferenceOMa(0);
  v37 = MEMORY[0x28223BE20](v223);
  v202 = &v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v215 = &v162 - v39;
  v233 = sub_22BDB87F4();
  v218 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v237 = &v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22BDB9B14();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v162 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_22BDB9B54();
  v45 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v235 = &v162 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = _s24StatementExecutionResultOMa(0);
  MEMORY[0x28223BE20](v47);
  v49 = &v162 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22BDB4C34();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = &v162 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = _s19TranscriptRetrieverVMa(0);
  v240 = v54;
  v241 = &off_283F7A608;
  sub_22BB8B8A0(&v239, v55, v56, v57, v58, v59, v60, v61);
  sub_22BD17DF8();
  v62 = sub_22BB69FEC(&v239, v240);
  sub_22BB69088(v62 + *(v54 + 20), v238);
  sub_22BB69FEC(v238, v238[3]);
  (*(v51 + 16))(v53, v234, v50);
  _s14ActionExecutedVMa(0);
  sub_22BBBCB1C();
  LOBYTE(v54) = v63;
  v64 = *(v51 + 8);
  v196 = v50;
  v195 = v51 + 8;
  v194 = v64;
  v64(v53, v50);
  sub_22BB32FA4(v238);
  if ((v54 & 1) == 0)
  {
    v162 = v47;
    result = type metadata accessor for FeedbackLearning.FlowExpression(0);
    v66 = 0;
    v163 = result;
    v67 = v234;
    v68 = *(v234 + *(result + 20));
    v69 = *(v68 + 16);
    v231 = v45 + 16;
    v232 = v69;
    v229 = (v42 + 88);
    v230 = v45 + 8;
    v228 = *MEMORY[0x277D1E718];
    v227 = *MEMORY[0x277D1E798];
    v210 = *MEMORY[0x277D1E7C0];
    v190 = *MEMORY[0x277D1E720];
    v184 = *MEMORY[0x277D1E860];
    v183 = *MEMORY[0x277D1E868];
    v186 = (v42 + 8);
    v220 = (v42 + 96);
    v189 = (v211 + 4);
    v207 = (v182 + 16);
    v206 = (v182 + 88);
    v205 = *MEMORY[0x277D1CBF0];
    v208 = (v182 + 8);
    v191 = v211 + 1;
    v209 = (v218 + 32);
    v188 = (v225 + 8);
    v211 = (v218 + 8);
    v204 = *MEMORY[0x277D1CBE8];
    v70 = v219;
    v225 = v41;
    v71 = v193;
    v218 = v44;
    v185 = v45;
    while (1)
    {
      if (v232 == v66)
      {
        v113 = 0;
        goto LABEL_56;
      }

      if (v66 >= *(v68 + 16))
      {
        __break(1u);
        return result;
      }

      v72 = v68;
      v73 = v235;
      v74 = v236;
      (*(v45 + 16))(v235, v68 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v66, v236);
      sub_22BDB9B24();
      (*(v45 + 8))(v73, v74);
      v75 = (*v229)(v44, v41);
      if (v75 == v228)
      {
        (*v220)(v44, v41);
        v114 = v175;
        v115 = v174;
        v116 = v176;
        (*(v175 + 32))(v174, v44, v176);
        sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
        v117 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
        v118 = (*(v117 + 80) + 32) & ~*(v117 + 80);
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_22BDBCBD0;
        v120 = v119 + v118;
        v121 = *(sub_22BBE6DE0(&qword_27D8E3DB0, &qword_22BDC1148) + 48);
        sub_22BCD5C90(v67, v120);
        (*(v114 + 16))(v120 + v121, v115, v116);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        (*(v114 + 8))(v115, v116);
        goto LABEL_55;
      }

      if (v75 == v227)
      {
        (*v220)(v44, v41);
        (*v209)(v237, v44, v233);
        type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
        sub_22BD17DF8();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v77 = v70;
          v78 = v71;
          if (EnumCaseMultiPayload == 1)
          {
            v194(v226, v196);
          }

          v79 = v214;
          sub_22BDB8794();
          v80 = v223;
LABEL_12:
          swift_storeEnumTagMultiPayload();
          v81 = 0;
        }

        else
        {
          v78 = v71;
          sub_22BD17E4C(v226, type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType);
          v94 = v192;
          sub_22BDB87D4();
          v95 = v198;
          sub_22BBCD82C(v94, v198, &qword_27D8E3218, &qword_22BDBE390);
          v96 = sub_22BDB43E4();
          v81 = 1;
          v77 = v219;
          v97 = sub_22BB3AA28(v95, 1, v96);
          v79 = v214;
          v80 = v223;
          if (v97 != 1)
          {
            (*(*(v96 - 8) + 32))(v214, v198, v96);
            goto LABEL_12;
          }
        }

        sub_22BB336D0(v79, v81, 1, v80);
        v82 = v213;
        sub_22BBCD82C(v79, v213, &qword_27D8E4320, &unk_22BDC2EA0);
        if (sub_22BB3AA28(v82, 1, v80) == 1)
        {
          (*v211)(v237, v233);
          result = sub_22BB58728(v82, &qword_27D8E4320, &unk_22BDC2EA0);
          v67 = v234;
          v71 = v78;
          v41 = v225;
          v70 = v77;
        }

        else
        {
          sub_22BD17DA4();
          v87 = v199;
          sub_22BDB87E4();
          v88 = v217;
          sub_22BDB9094();
          (*v188)(v87, v200);
          v71 = v78;
          v89 = v222;
          (*v207)(v78, v88, v222);
          v90 = (*v206)(v78, v89);
          if (v90 == v205)
          {
            v125 = v182 + 96;
            v126 = v78;
            v127 = v222;
            (*(v182 + 96))(v126, v222);
            v128 = v71;
            v129 = v172;
            v130 = v170;
            v131 = v173;
            (*(v172 + 32))(v170, v128, v173);
            sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
            _s19EvaluatorVoteSourceOMa(0);
            *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
            v132 = v215;
            v133 = v171;
            sub_22BD17DF8();
            (*(v129 + 16))(v133 + *(v169 + 20), v130, v131);
            sub_22BD17DF8();
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            sub_22BD17E4C(v133, _s23StatementSuccessOutcomeVMa);
            (*(v129 + 8))(v130, v131);
            (*(v125 - 88))(v217, v127);
            sub_22BD17E4C(v132, _s28StatementResolutionReferenceOMa);
            (*v211)(v237, v233);
            goto LABEL_53;
          }

          if (v90 == v204)
          {
            v134 = v182 + 96;
            v135 = v78;
            v136 = v222;
            (*(v182 + 96))(v135, v222);
            v137 = v71;
            v138 = v167;
            v139 = v165;
            v140 = v168;
            (*(v167 + 32))(v165, v137, v168);
            sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
            _s19EvaluatorVoteSourceOMa(0);
            *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
            v141 = v215;
            v142 = v166;
            sub_22BD17DF8();
            (*(v138 + 16))(v142 + *(v164 + 20), v139, v140);
            sub_22BD17DF8();
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            sub_22BD17E4C(v142, _s23StatementFailureOutcomeVMa);
            (*(v138 + 8))(v139, v140);
            (*(v134 - 88))(v217, v136);
            sub_22BD17E4C(v141, _s28StatementResolutionReferenceOMa);
            (*v211)(v237, v233);
            goto LABEL_55;
          }

          v91 = *v208;
          v92 = v222;
          (*v208)(v217, v222);
          sub_22BD17E4C(v215, _s28StatementResolutionReferenceOMa);
          (*v211)(v237, v233);
          result = (v91)(v78, v92);
          v67 = v234;
          v70 = v219;
          v41 = v225;
        }

        v44 = v218;
        goto LABEL_39;
      }

      if (v75 != v210)
      {
        if (v75 == v190)
        {
          sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
          _s19EvaluatorVoteSourceOMa(0);
          *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v122 = *v186;
          v123 = v44;
          v124 = &v243;
          goto LABEL_52;
        }

        if (v75 == v184 || v75 == v183)
        {
          sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
          v143 = *(_s19EvaluatorVoteSourceOMa(0) - 8);
          v144 = (*(v143 + 80) + 32) & ~*(v143 + 80);
          v145 = swift_allocObject();
          *(v145 + 16) = xmmword_22BDBCBD0;
          sub_22BCD5C90(v67, v145 + v144);
          v113 = 1;
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          goto LABEL_56;
        }

        v41 = v225;
        result = (*v186)(v44, v225);
        goto LABEL_39;
      }

      (*v220)(v44, v41);
      (*v189)(v224, v44, v216);
      type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
      sub_22BD17DF8();
      v83 = swift_getEnumCaseMultiPayload();
      if (v83)
      {
        if (v83 == 1)
        {
          v194(v212, v196);
        }

        sub_22BDB8174();
      }

      else
      {
        sub_22BD17E4C(v212, type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType);
        if (*(*(v67 + *(v163 + 24)) + 16))
        {
          v105 = v179;
          sub_22BD17DF8();
          v106 = 0;
        }

        else
        {
          v106 = 1;
          v105 = v179;
        }

        v85 = 1;
        v107 = v180;
        sub_22BB336D0(v105, v106, 1, v180);
        v108 = v105;
        v109 = v181;
        sub_22BBCD82C(v108, v181, &qword_27D8E4328, &unk_22BDCC070);
        v110 = sub_22BB3AA28(v109, 1, v107);
        v71 = v193;
        v41 = v225;
        v84 = v223;
        if (v110 == 1)
        {
          goto LABEL_21;
        }

        v111 = v177;
        sub_22BD17DA4();
        v112 = sub_22BDB43E4();
        (*(*(v112 - 8) + 16))(v70, v111, v112);
        sub_22BD17E4C(v111, type metadata accessor for FeedbackLearning.FlowActionEvent);
      }

      v84 = v223;
      swift_storeEnumTagMultiPayload();
      v85 = 0;
LABEL_21:
      sub_22BB336D0(v70, v85, 1, v84);
      v86 = v197;
      sub_22BBCD82C(v70, v197, &qword_27D8E4320, &unk_22BDC2EA0);
      if (sub_22BB3AA28(v86, 1, v84) == 1)
      {
        (*v191)(v224, v216);
        result = sub_22BB58728(v86, &qword_27D8E4320, &unk_22BDC2EA0);
        v44 = v218;
      }

      else
      {
        sub_22BD17DA4();
        v98 = v203;
        sub_22BDB8D44();
        v99 = v201;
        v100 = v222;
        (*v207)(v201, v98, v222);
        v101 = (*v206)(v99, v100);
        if (v101 == v205)
        {
          v146 = v182 + 96;
          v147 = v201;
          v148 = v222;
          (*(v182 + 96))(v201, v222);
          v149 = v202;
          v150 = v172;
          v151 = v170;
          v152 = v173;
          (*(v172 + 32))(v170, v147, v173);
          sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
          _s19EvaluatorVoteSourceOMa(0);
          *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
          v153 = v171;
          sub_22BD17DF8();
          (*(v150 + 16))(v153 + *(v169 + 20), v151, v152);
          sub_22BD17DF8();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_22BD17E4C(v153, _s23StatementSuccessOutcomeVMa);
          (*(v150 + 8))(v151, v152);
          (*(v146 - 88))(v203, v148);
          sub_22BD17E4C(v149, _s28StatementResolutionReferenceOMa);
          v122 = *v191;
          v123 = v224;
          v124 = &v242;
LABEL_52:
          v122(v123, *(v124 - 32));
LABEL_53:
          v113 = 2;
          goto LABEL_56;
        }

        v41 = v225;
        if (v101 == v204)
        {
          v154 = v182 + 96;
          v155 = v201;
          v156 = v222;
          (*(v182 + 96))(v201, v222);
          v157 = v202;
          v158 = v167;
          v159 = v165;
          v160 = v168;
          (*(v167 + 32))(v165, v155, v168);
          sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
          _s19EvaluatorVoteSourceOMa(0);
          *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
          v161 = v166;
          sub_22BD17DF8();
          (*(v158 + 16))(v161 + *(v164 + 20), v159, v160);
          sub_22BD17DF8();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_22BD17E4C(v161, _s23StatementFailureOutcomeVMa);
          (*(v158 + 8))(v159, v160);
          (*(v154 - 88))(v203, v156);
          sub_22BD17E4C(v157, _s28StatementResolutionReferenceOMa);
          (*v191)(v224, v216);
          goto LABEL_55;
        }

        v102 = *v208;
        v103 = v222;
        (*v208)(v203, v222);
        sub_22BD17E4C(v202, _s28StatementResolutionReferenceOMa);
        (*v191)(v224, v216);
        v104 = v234;
        result = (v102)(v201, v103);
        v67 = v104;
        v70 = v219;
        v44 = v218;
      }

      v45 = v185;
LABEL_39:
      ++v66;
      v68 = v72;
    }
  }

  sub_22BCD5758(v234, v187, v49);
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E5D78, &qword_22BDCC068);
  _s19EvaluatorVoteSourceOMa(0);
  *(swift_allocObject() + 16) = xmmword_22BDBCBD0;
  sub_22BD17DF8();
  swift_storeEnumTagMultiPayload();
  sub_22BD17E4C(v49, _s24StatementExecutionResultOMa);
LABEL_55:
  v113 = 1;
LABEL_56:
  sub_22BB32FA4(&v239);
  return v113;
}

uint64_t sub_22BD176F4()
{
  v1 = sub_22BB2F474();
  v2(v1);
  sub_22BB2F330();
  v3 = sub_22BB31F54();
  v4(v3);
  return v0;
}

uint64_t sub_22BD17748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22BD17788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22BD1780C()
{
  result = qword_27D8E5C88;
  if (!qword_27D8E5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C88);
  }

  return result;
}

unint64_t sub_22BD17864()
{
  result = qword_27D8E5C90;
  if (!qword_27D8E5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C90);
  }

  return result;
}

unint64_t sub_22BD178BC()
{
  result = qword_27D8E5C98;
  if (!qword_27D8E5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5C98);
  }

  return result;
}

unint64_t sub_22BD17914()
{
  result = qword_27D8E5CA0;
  if (!qword_27D8E5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5CA0);
  }

  return result;
}

unint64_t sub_22BD17968()
{
  result = qword_27D8E5CD8;
  if (!qword_27D8E5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5CD8);
  }

  return result;
}

unint64_t sub_22BD179BC()
{
  result = qword_27D8E5CE0;
  if (!qword_27D8E5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5CE0);
  }

  return result;
}

unint64_t sub_22BD17A10()
{
  result = qword_27D8E5CE8;
  if (!qword_27D8E5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5CE8);
  }

  return result;
}

unint64_t sub_22BD17A64()
{
  result = qword_27D8E5CF0;
  if (!qword_27D8E5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5CF0);
  }

  return result;
}

unint64_t sub_22BD17AB8()
{
  result = qword_27D8E5CF8;
  if (!qword_27D8E5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5CF8);
  }

  return result;
}

unint64_t sub_22BD17B0C()
{
  result = qword_27D8E5D00;
  if (!qword_27D8E5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5D00);
  }

  return result;
}

unint64_t sub_22BD17B60()
{
  result = qword_27D8E5D10;
  if (!qword_27D8E5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5D10);
  }

  return result;
}

uint64_t sub_22BD17BB4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22BBEB2E0(&qword_27D8E5D18, &qword_22BDCC028);
    sub_22BD17CA0(a2, _s19EvaluatorVoteSourceOMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BD17CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BD17CE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *, uint64_t))
{
  v17 = _s19TranscriptRetrieverVMa(0);
  v18 = &off_283F7A608;
  sub_22BB8B8A0(v16, v7, v8, v9, v10, v11, v12, v13);
  sub_22BD17DF8();
  v14 = sub_22BB69FEC(v16, v17);
  a4(a1, v14, a3);
  sub_22BB32FA4(v16);
  return a3;
}

uint64_t sub_22BD17DA4()
{
  v1 = sub_22BB2F474();
  v2(v1);
  sub_22BB2F330();
  v3 = sub_22BB31F54();
  v4(v3);
  return v0;
}

uint64_t sub_22BD17DF8()
{
  v1 = sub_22BB2F474();
  v2(v1);
  sub_22BB2F330();
  v3 = sub_22BB31F54();
  v4(v3);
  return v0;
}

uint64_t sub_22BD17E4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *_s13VotingOutcomeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22BD17F80(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BD180C0()
{
  result = qword_27D8E5D80;
  if (!qword_27D8E5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5D80);
  }

  return result;
}

unint64_t sub_22BD18118()
{
  result = qword_27D8E5D88;
  if (!qword_27D8E5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5D88);
  }

  return result;
}

unint64_t sub_22BD18170()
{
  result = qword_27D8E5D90;
  if (!qword_27D8E5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5D90);
  }

  return result;
}

unint64_t sub_22BD181C8()
{
  result = qword_27D8E5D98;
  if (!qword_27D8E5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5D98);
  }

  return result;
}

unint64_t sub_22BD18220()
{
  result = qword_27D8E5DA0;
  if (!qword_27D8E5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DA0);
  }

  return result;
}

unint64_t sub_22BD18278()
{
  result = qword_27D8E5DA8;
  if (!qword_27D8E5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DA8);
  }

  return result;
}

unint64_t sub_22BD182D0()
{
  result = qword_27D8E5DB0;
  if (!qword_27D8E5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DB0);
  }

  return result;
}

unint64_t sub_22BD18328()
{
  result = qword_27D8E5DB8;
  if (!qword_27D8E5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DB8);
  }

  return result;
}

unint64_t sub_22BD18380()
{
  result = qword_27D8E5DC0;
  if (!qword_27D8E5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DC0);
  }

  return result;
}

unint64_t sub_22BD183D8()
{
  result = qword_27D8E5DC8;
  if (!qword_27D8E5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DC8);
  }

  return result;
}

unint64_t sub_22BD18430()
{
  result = qword_27D8E5DD0;
  if (!qword_27D8E5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DD0);
  }

  return result;
}

unint64_t sub_22BD18488()
{
  result = qword_27D8E5DD8;
  if (!qword_27D8E5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DD8);
  }

  return result;
}

unint64_t sub_22BD184E0()
{
  result = qword_27D8E5DE0;
  if (!qword_27D8E5DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DE0);
  }

  return result;
}

unint64_t sub_22BD18538()
{
  result = qword_27D8E5DE8;
  if (!qword_27D8E5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DE8);
  }

  return result;
}

unint64_t sub_22BD18590()
{
  result = qword_27D8E5DF0;
  if (!qword_27D8E5DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DF0);
  }

  return result;
}

unint64_t sub_22BD185E8()
{
  result = qword_27D8E5DF8;
  if (!qword_27D8E5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5DF8);
  }

  return result;
}

unint64_t sub_22BD18640()
{
  result = qword_27D8E5E00;
  if (!qword_27D8E5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E00);
  }

  return result;
}

unint64_t sub_22BD18694()
{
  result = qword_27D8E5E28;
  if (!qword_27D8E5E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E28);
  }

  return result;
}

unint64_t sub_22BD186E8()
{
  result = qword_27D8E5E30;
  if (!qword_27D8E5E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E30);
  }

  return result;
}

unint64_t sub_22BD1873C()
{
  result = qword_27D8E5E38;
  if (!qword_27D8E5E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E38);
  }

  return result;
}

unint64_t sub_22BD18790()
{
  result = qword_27D8E5E40;
  if (!qword_27D8E5E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E40);
  }

  return result;
}

_BYTE *sub_22BD187E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BD188F4()
{
  result = qword_27D8E5E68;
  if (!qword_27D8E5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E68);
  }

  return result;
}

unint64_t sub_22BD1894C()
{
  result = qword_27D8E5E70;
  if (!qword_27D8E5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E70);
  }

  return result;
}

unint64_t sub_22BD189A4()
{
  result = qword_27D8E5E78;
  if (!qword_27D8E5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E78);
  }

  return result;
}

unint64_t sub_22BD189FC()
{
  result = qword_27D8E5E80;
  if (!qword_27D8E5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E80);
  }

  return result;
}

unint64_t sub_22BD18A54()
{
  result = qword_27D8E5E88;
  if (!qword_27D8E5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E88);
  }

  return result;
}

unint64_t sub_22BD18AAC()
{
  result = qword_27D8E5E90;
  if (!qword_27D8E5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E90);
  }

  return result;
}

unint64_t sub_22BD18B04()
{
  result = qword_27D8E5E98;
  if (!qword_27D8E5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5E98);
  }

  return result;
}

unint64_t sub_22BD18B5C()
{
  result = qword_27D8E5EA0;
  if (!qword_27D8E5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5EA0);
  }

  return result;
}

unint64_t sub_22BD18BB4()
{
  result = qword_27D8E5EA8;
  if (!qword_27D8E5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5EA8);
  }

  return result;
}

uint64_t FeedbackLearning.StandardTupleGenerator.generateInteractionRecordFromEvaluation(evaluation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedbackLearningInteractionRecord(0);
  sub_22BD18CBC(a1, a2 + *(v4 + 20));
  v5 = sub_22BD19F48(a1);
  v6 = *(type metadata accessor for FeedbackLearning.TaskEvaluation(0) + 24);
  sub_22BDB7A84();
  sub_22BB2F330();
  result = (*(v7 + 16))(a2, a1 + v6);
  *(a2 + *(v4 + 24)) = v5;
  return result;
}

uint64_t sub_22BD18CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v244 = a1;
  v235 = a2;
  v2 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v3);
  sub_22BB30C74();
  v232 = v4 - v5;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v6);
  sub_22BB2F384();
  v228 = v7;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v8);
  sub_22BB2F384();
  v225 = v9;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v10);
  sub_22BB2F39C();
  sub_22BB30B8C(v11);
  v234 = sub_22BDB77D4();
  sub_22BB30444();
  v242 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BB30C74();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  sub_22BB2F384();
  v229 = v18;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v19);
  sub_22BB2F384();
  v226 = v20;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v21);
  sub_22BB2F384();
  v222 = v22;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v23);
  sub_22BB2F39C();
  sub_22BB30B8C(v24);
  sub_22BDB7BD4();
  sub_22BB30444();
  v240 = v25;
  v241 = v26;
  MEMORY[0x28223BE20](v25);
  sub_22BB305A8();
  sub_22BB30B8C(v27);
  v28 = sub_22BDB7A94();
  v29 = sub_22BB2F0C8(v28);
  MEMORY[0x28223BE20](v29);
  sub_22BB305A8();
  v31 = sub_22BB30B8C(v30);
  v237 = _s23ParameterCandidateValueVMa(v31);
  sub_22BB30444();
  v214 = v32;
  MEMORY[0x28223BE20](v33);
  sub_22BB305A8();
  v236 = v34;
  v219 = sub_22BDB7A84();
  sub_22BB30444();
  v218 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22BB305A8();
  sub_22BB30B8C(v37);
  v243 = sub_22BDB7B44();
  sub_22BB30444();
  v227 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22BB30C74();
  v239 = v40 - v41;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v42);
  sub_22BB2F384();
  v238 = v43;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v44);
  sub_22BB2F384();
  v215 = v45;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v46);
  sub_22BB2F39C();
  v48 = sub_22BB30B8C(v47);
  type metadata accessor for FeedbackLearning.ActionValue(v48);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v49);
  sub_22BB30C74();
  v52 = v50 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v211 - v54;
  v217 = type metadata accessor for FeedbackLearning.TaskAction(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v56);
  sub_22BB305A8();
  v230 = v57;
  v58 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v59);
  sub_22BB30C74();
  v62 = v60 - v61;
  MEMORY[0x28223BE20](v63);
  sub_22BB2F39C();
  v231 = v64;
  v65 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(0);
  v66 = sub_22BB2F0C8(v65);
  MEMORY[0x28223BE20](v66);
  v68 = &v211 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  v70 = sub_22BB2F0C8(v69);
  MEMORY[0x28223BE20](v70);
  sub_22BB30C74();
  v73 = v71 - v72;
  MEMORY[0x28223BE20](v74);
  v76 = &v211 - v75;
  v233 = v2;
  v77 = *(v2 + 32);
  v78 = v244;
  sub_22BD1BD2C(v244 + v77, v68);
  v79 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  if (sub_22BB3AA28(v68, 1, v79) != 1)
  {
    sub_22BD1BC64(v68, v76);
    sub_22BC7E3C4(v76, v73, &qword_27D8E3D98, &qword_22BDC1130);
    if (sub_22BB3AA28(v73, 1, v58) == 1)
    {
      v94 = v76;
      sub_22BB58728(v73, &qword_27D8E3D98, &qword_22BDC1130);
      v95 = v229;
      sub_22BDB6404();
      sub_22BB32C9C();
      v96 = v228;
      sub_22BD1BD2C(v78, v228);
      v97 = sub_22BDB77C4();
      v98 = sub_22BDBB104();
      v99 = sub_22BB69B08(v98);
      v92 = v235;
      if (v99)
      {
        sub_22BB31AD8();
        v245 = sub_22BB2F548();
        sub_22BB34388(4.8149e-34);
        sub_22BB33DD0();
        sub_22BD1BC1C(v100, v101, MEMORY[0x277D1C368]);
        v102 = sub_22BDBB684();
        v92 = v103;
        sub_22BB35B90();
        sub_22BD1BD84(v96, v104);
        sub_22BB53D88();
        sub_22BB368DC();
        *(v73 + 4) = v102;
        sub_22BB37744(&dword_22BB2C000, v105, v106, "Statement id %s is not associated with a resolved statement, skipping generating a tuple interaction");
        sub_22BB37D70();
        sub_22BB35600();
      }

      else
      {

        sub_22BB35B90();
        sub_22BD1BD84(v96, v129);
      }

      sub_22BB38B78();
      v130(v95, v234);
    }

    else
    {
      v110 = v73;
      v111 = v231;
      sub_22BD1BCD4(v110, v231);
      sub_22BD1BD2C(v111, v62);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v92 = v235;
      if (EnumCaseMultiPayload == 1)
      {
        v113 = v62;
        v114 = v230;
        sub_22BD1BCD4(v113, v230);
        v115 = *(type metadata accessor for FeedbackLearning.FlowActionEvent(0) + 20);
        v116 = sub_22BB31188();
        sub_22BD1BD2C(v116, v55);
        v117 = swift_getEnumCaseMultiPayload();
        sub_22BD1BD84(v55, type metadata accessor for FeedbackLearning.ActionValue);
        v212 = v76;
        if (v117 == 1)
        {
          v118 = v222;
          sub_22BDB6404();
          sub_22BB32C9C();
          v119 = v221;
          sub_22BD1BD2C(v244, v221);
          v120 = sub_22BDB77C4();
          v121 = sub_22BDBB104();
          if (sub_22BB69B08(v121))
          {
            sub_22BB31AD8();
            v245 = sub_22BB2F548();
            sub_22BB34388(4.8149e-34);
            sub_22BB33DD0();
            sub_22BD1BC1C(v122, v123, MEMORY[0x277D1C368]);
            v124 = sub_22BDBB684();
            v92 = v125;
            sub_22BB35B90();
            sub_22BD1BD84(v119, v126);
            sub_22BB53D88();
            sub_22BB368DC();
            *(v115 + 4) = v124;
            sub_22BB37744(&dword_22BB2C000, v127, v128, "Statement id %s is not associated with an IntelligenceFlow action statement, skipping generating a tuple interaction");
            sub_22BB37D70();
            sub_22BB35600();
          }

          else
          {

            sub_22BB35B90();
            sub_22BD1BD84(v119, v185);
          }

          sub_22BB38B78();
          v186(v118, v234);
          sub_22BB31D58();
          sub_22BD1BD84(v114, v187);
          sub_22BB30878();
          sub_22BD1BD84(v231, v188);
          v162 = v212;
        }

        else
        {
          v143 = sub_22BB31188();
          sub_22BD1BD2C(v143, v52);
          _s13ActionCreatedCMa(0);
          v144 = swift_allocObject();
          *(v144 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters) = 0;
          sub_22BD1BCD4(v52, v144 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated_action);
          v145 = sub_22BCB1C94();
          swift_setDeallocating();
          sub_22BCB3E8C();
          v146 = 1 << *(v145 + 32);
          v147 = -1;
          if (v146 < 64)
          {
            v147 = ~(-1 << v146);
          }

          v148 = v147 & *(v145 + 64);
          v149 = (v146 + 63) >> 6;
          v229 = v145;

          v151 = 0;
          v152 = MEMORY[0x277D84F90];
          if (!v148)
          {
            while (1)
            {
LABEL_19:
              v153 = v151 + 1;
              if (__OFADD__(v151, 1))
              {
                __break(1u);
                return result;
              }

              if (v153 >= v149)
              {
                break;
              }

              v148 = *(v145 + 64 + 8 * v153);
              ++v151;
              if (v148)
              {
                v151 = v153;
                goto LABEL_23;
              }
            }

            v164 = v230;
            v165 = v223;
            sub_22BDBA004();
            sub_22BBE6DE0(&qword_27D8E5ED0, &unk_22BDCD5E0);
            v166 = v227;
            v167 = (*(v227 + 80) + 32) & ~*(v227 + 80);
            v242 = *(v227 + 72);
            v168 = swift_allocObject();
            *(v168 + 16) = xmmword_22BDBCBD0;
            v169 = *(v166 + 16);
            v234 = v167;
            v169(v168 + v167, v165, v243);
            sub_22BCDF920(v152);
            v171 = v170;

            v172 = *(v171 + 16);
            if (v172)
            {
              v228 = v168;
              v245 = MEMORY[0x277D84F90];
              sub_22BD27D08(0, v172, 0);
              v173 = v243;
              v174 = v245;
              v175 = *(v214 + 80);
              v226 = v171;
              v176 = v171 + ((v175 + 32) & ~v175);
              v232 = *(v214 + 72);
              v177 = (v166 + 32);
              v178 = v215;
              do
              {
                v179 = v236;
                sub_22BD1BD2C(v176, v236);
                v169(v178, v179 + *(v237 + 20), v173);
                sub_22BD1BD84(v179, _s23ParameterCandidateValueVMa);
                v245 = v174;
                v181 = *(v174 + 16);
                v180 = *(v174 + 24);
                if (v181 >= v180 >> 1)
                {
                  v182 = sub_22BB3816C(v180);
                  sub_22BD27D08(v182, v183, v184);
                  v173 = v243;
                  v174 = v245;
                }

                *(v174 + 16) = v181 + 1;
                (*v177)(v174 + v234 + v181 * v242, v178, v173);
                v176 += v232;
                --v172;
              }

              while (v172);

              v92 = v235;
              v164 = v230;
              v168 = v228;
            }

            else
            {

              v174 = MEMORY[0x277D84F90];
            }

            v245 = v168;
            sub_22BD66AFC(v174);
            v189 = v245;
            (*(v218 + 16))(v224, v244 + *(v233 + 24), v219);
            v190 = *(v189 + 16);
            if (v190)
            {
              v245 = MEMORY[0x277D84F90];
              sub_22BD27CB0(0, v190, 0);
              v191 = v245;
              v192 = v189 + v234;
              v193 = (v227 + 8);
              v236 = v189;
              v237 = v241 + 32;
              v194 = v216;
              v195 = v238;
              do
              {
                v196 = v243;
                v169(v195, v192, v243);
                v169(v239, v195, v196);
                sub_22BDB7BA4();
                (*v193)(v195, v196);
                v245 = v191;
                v198 = *(v191 + 16);
                v197 = *(v191 + 24);
                if (v198 >= v197 >> 1)
                {
                  v199 = sub_22BB3816C(v197);
                  sub_22BD27CB0(v199, v200, v201);
                  v191 = v245;
                }

                *(v191 + 16) = v198 + 1;
                (*(v241 + 32))(v191 + ((*(v241 + 80) + 32) & ~*(v241 + 80)) + *(v241 + 72) * v198, v194, v240);
                v192 += v242;
                --v190;
              }

              while (v190);

              v164 = v230;
              v92 = v235;
            }

            else
            {
            }

            sub_22BD1A148(v244 + *(v233 + 36), v220);
            sub_22BDB7AB4();

            (*(v227 + 8))(v223, v243);
            sub_22BB31D58();
            sub_22BD1BD84(v164, v202);
            sub_22BB30878();
            sub_22BD1BD84(v231, v203);
            sub_22BB58728(v212, &qword_27D8E3D98, &qword_22BDC1130);
            v109 = 0;
            goto LABEL_35;
          }

LABEL_23:
          while (1)
          {
            v154 = *(*(v229 + 56) + ((v151 << 9) | (8 * __clz(__rbit64(v148)))));
            if (!v154)
            {
              break;
            }

            swift_bridgeObjectRetain_n();
            v155 = v76;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22BD8FB8C();
              v152 = v157;
            }

            v156 = *(v152 + 16);
            if (v156 >= *(v152 + 24) >> 1)
            {
              sub_22BD8FB8C();
              v152 = v158;
            }

            v148 &= v148 - 1;

            *(v152 + 16) = v156 + 1;
            *(v152 + 8 * v156 + 32) = v154;
            v76 = v155;
            if (!v148)
            {
              goto LABEL_19;
            }
          }

          v204 = v213;
          sub_22BDB6404();
          v205 = sub_22BDB77C4();
          v206 = sub_22BDBB114();
          if (os_log_type_enabled(v205, v206))
          {
            v207 = swift_slowAlloc();
            *v207 = 0;
            _os_log_impl(&dword_22BB2C000, v205, v206, "The final action parameters are not all candidate id extractable, skipping generating a tuple interaction", v207, 2u);
            sub_22BB35600();
          }

          sub_22BB38B78();
          v208(v204, v234);
          sub_22BB31D58();
          sub_22BD1BD84(v230, v209);
          sub_22BB30878();
          sub_22BD1BD84(v231, v210);
          v162 = v76;
        }

LABEL_33:
        sub_22BB58728(v162, &qword_27D8E3D98, &qword_22BDC1130);
        goto LABEL_34;
      }

      v94 = v76;
      sub_22BB30878();
      sub_22BD1BD84(v62, v131);
      v132 = v226;
      sub_22BDB6404();
      sub_22BB32C9C();
      v133 = v225;
      sub_22BD1BD2C(v244, v225);
      v134 = sub_22BDB77C4();
      v135 = sub_22BDBB104();
      if (sub_22BB69B08(v135))
      {
        sub_22BB31AD8();
        v245 = sub_22BB2F548();
        sub_22BB34388(4.8149e-34);
        sub_22BB33DD0();
        sub_22BD1BC1C(v136, v137, MEMORY[0x277D1C368]);
        v138 = sub_22BDBB684();
        v92 = v139;
        sub_22BB35B90();
        sub_22BD1BD84(v133, v140);
        sub_22BB53D88();
        sub_22BB368DC();
        *(v111 + 4) = v138;
        sub_22BB37744(&dword_22BB2C000, v141, v142, "Statement id %s is not associated with an action statement, skipping generating a tuple interaction");
        sub_22BB37D70();
        sub_22BB35600();
      }

      else
      {

        sub_22BB35B90();
        sub_22BD1BD84(v133, v159);
      }

      sub_22BB38B78();
      v160(v132, v234);
      sub_22BB30878();
      sub_22BD1BD84(v231, v161);
    }

    v162 = v94;
    goto LABEL_33;
  }

  sub_22BD1BD84(v68, type metadata accessor for FeedbackLearning.TaskFinalResolutionState);
  sub_22BDB6404();
  sub_22BB32C9C();
  v80 = v232;
  sub_22BD1BD2C(v78, v232);
  v81 = sub_22BDB77C4();
  v82 = sub_22BDBB104();
  if (os_log_type_enabled(v81, v82))
  {
    sub_22BB31AD8();
    v83 = sub_22BB2F548();
    v245 = v83;
    sub_22BB34388(4.8149e-34);
    sub_22BB33DD0();
    sub_22BD1BC1C(v84, v85, MEMORY[0x277D1C368]);
    v86 = sub_22BDBB684();
    v88 = v87;
    sub_22BB35B90();
    sub_22BD1BD84(v80, v89);
    v90 = sub_22BB32EE0(v86, v88, &v245);

    *(v73 + 4) = v90;
    _os_log_impl(&dword_22BB2C000, v81, v82, "The final resolution state for statement id %s is incomplete, skipping generating a tuple interaction", v73, 0xCu);
    sub_22BB32FA4(v83);
    v91 = v83;
    v92 = v235;
    MEMORY[0x2318A6080](v91, -1, -1);
    sub_22BB35600();

    sub_22BB38B78();
    v93(v16, v234);
LABEL_34:
    v109 = 1;
    goto LABEL_35;
  }

  sub_22BB35B90();
  sub_22BD1BD84(v80, v107);
  sub_22BB38B78();
  v108(v16, v234);
  v109 = 1;
  v92 = v235;
LABEL_35:
  v163 = sub_22BDB7AD4();
  return sub_22BB336D0(v92, v109, 1, v163);
}

uint64_t sub_22BD19F48(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22BB30C74();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-v8];
  type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  v21 = a1;
  sub_22BCA8038();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    v14 = MEMORY[0x277D84F90];
    do
    {
      sub_22BD1BD2C(v12, v9);
      sub_22BB372F0();
      sub_22BD1BCD4(v9, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BD8FC50();
        v14 = v17;
      }

      v15 = *(v14 + 16);
      if (v15 >= *(v14 + 24) >> 1)
      {
        sub_22BD8FC50();
        v14 = v18;
      }

      *(v14 + 16) = v15 + 1;
      sub_22BB372F0();
      sub_22BD1BCD4(v6, v16);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v14;
}

uint64_t sub_22BD1A148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB7A94();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB77D4();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BBE6DE0(&qword_27D8E5EC8, &qword_22BDCCC18);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v19 = *(a1 + *(type metadata accessor for FeedbackLearning.TaskOutcome(0) + 20));
  if (v19 != 3)
  {
    v45 = v6;
    v20 = v10;
    v21 = a2;
    v22 = *(v16 + 48);
    *v18 = v19;
    sub_22BD1BD2C(a1, &v18[v22]);
    v23 = *v18;
    v24 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
    v25 = sub_22BB3AA28(&v18[v22], 4, v24);
    if (v23)
    {
      if (v23 == 1)
      {
        a2 = v21;
        v10 = v20;
        switch(v25)
        {
          case 1:
          case 3:
          case 4:
            break;
          case 2:
            goto LABEL_12;
          default:
            sub_22BD1BD84(&v18[v22], type metadata accessor for FeedbackLearning.TaskFailureReason);
            break;
        }

        v26 = MEMORY[0x277D1D5C8];
        return (*(v11 + 104))(a2, *v26, v10);
      }

      a2 = v21;
      v10 = v20;
      if ((v25 | 2) == 3)
      {
        v26 = MEMORY[0x277D1D5D8];
        return (*(v11 + 104))(a2, *v26, v10);
      }
    }

    else
    {
      a2 = v21;
      v10 = v20;
      if ((v25 - 1) <= 1)
      {
        v26 = MEMORY[0x277D1D5C0];
        return (*(v11 + 104))(a2, *v26, v10);
      }
    }

LABEL_12:
    sub_22BDB6404();
    v28 = sub_22BDB77C4();
    v29 = sub_22BDBB134();
    if (os_log_type_enabled(v28, v29))
    {
      v43 = v29;
      v44 = v28;
      v30 = 0xEA00000000006465;
      v31 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      v42 = v31;
      *v31 = 136315138;
      v32 = 0xE900000000000064;
      v33 = 0x657463656A65722ELL;
      if (v19 != 1)
      {
        v33 = 0x6E6F646E6162612ELL;
        v32 = 0xEA00000000006465;
      }

      if (v19)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0x6D7269666E6F632ELL;
      }

      if (v19)
      {
        v30 = v32;
      }

      v6 = v45;
      v40 = sub_22BB32EE0(v34, v30, &v49);

      v35 = v42;
      *(v42 + 1) = v40;
      _os_log_impl(&dword_22BB2C000, v44, v43, "Generating a score based on task outcome, ignoring task confirmation %s", v35, 0xCu);
      v36 = v41;
      sub_22BB32FA4(v41);
      MEMORY[0x2318A6080](v36, -1, -1);
      MEMORY[0x2318A6080](v35, -1, -1);

      (*(v46 + 8))(v15, v47);
    }

    else
    {

      (*(v46 + 8))(v15, v47);
      v6 = v45;
    }

    sub_22BB58728(v18, &qword_27D8E5EC8, &qword_22BDCCC18);
  }

  sub_22BD1BD2C(a1, v9);
  v37 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  switch(sub_22BB3AA28(v9, 4, v37))
  {
    case 1u:
    case 3u:
      v38 = MEMORY[0x277D1D5E8];
      goto LABEL_28;
    case 2u:
      v38 = MEMORY[0x277D1D5F0];
      goto LABEL_28;
    case 4u:
      v38 = MEMORY[0x277D1D5C8];
LABEL_28:
      v39 = v48;
      (*(v11 + 104))(v48, *v38, v10);
      break;
    default:
      sub_22BD1BCD4(v9, v6);
      v39 = v48;
      sub_22BD1AEC0(v6, v48);
      sub_22BD1BD84(v6, type metadata accessor for FeedbackLearning.TaskFailureReason);
      break;
  }

  return (*(v11 + 32))(a2, v39, v10);
}

uint64_t sub_22BD1A73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v51 = a2;
  v4 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  MEMORY[0x28223BE20](v4);
  v52 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22BDB77D4();
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = (v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22BDB7A94();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB7B44();
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BDB7BD4();
  MEMORY[0x28223BE20](v12 - 8);
  v47[1] = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB7A84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BDB7B94();
  v19 = MEMORY[0x28223BE20](v18);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  if (*(a1 + v4[10]))
  {
    v53 = v20;
    v54 = v19;
    v35 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
    v36 = *(v35 + 24);
    v37 = *(v15 + 16);
    v52 = v9;
    v38 = v10;
    v39 = v51;
    v37(v17, v51 + v36, v14);
    (*(v49 + 16))(v48, v23 + v4[7], v38);
    sub_22BDB7BA4();
    v56 = *(v23 + v4[9]);
    sub_22BD1AD34(&v56, v39 + *(v35 + 36), v52);
    sub_22BDB7B54();
    v40 = v55;
    sub_22BD1BD2C(v23 + v4[6], v55);
    v41 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
    v53[4](v40 + *(v41 + 20), v22, v54);
    v42 = v40;
    v43 = 0;
    v44 = v41;
  }

  else
  {
    v24 = v53;
    sub_22BDB6404();
    v25 = v52;
    sub_22BD1BD2C(a1, v52);
    v26 = sub_22BDB77C4();
    v27 = sub_22BDBB104();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v57 = v29;
      *v28 = 136315138;
      sub_22BD1BC1C(&qword_27D8E3E70, MEMORY[0x277D1D608], MEMORY[0x277D1D630]);
      v30 = sub_22BDBB684();
      v31 = v25;
      v33 = v32;
      sub_22BD1BD84(v31, type metadata accessor for FeedbackLearning.CandidateEvaluation);
      v34 = sub_22BB32EE0(v30, v33, &v57);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_22BB2C000, v26, v27, "Discarding a candidate interaction with candidateId=%s, interaction store donation is not enabled for this candidate", v28, 0xCu);
      sub_22BB32FA4(v29);
      MEMORY[0x2318A6080](v29, -1, -1);
      MEMORY[0x2318A6080](v28, -1, -1);
    }

    else
    {

      sub_22BD1BD84(v25, type metadata accessor for FeedbackLearning.CandidateEvaluation);
    }

    (*(v54 + 8))(v24, v50);
    v45 = v55;
    v44 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
    v42 = v45;
    v43 = 1;
  }

  return sub_22BB336D0(v42, v43, 1, v44);
}

uint64_t sub_22BD1AD34@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (v4 >> 6)
  {
    if (v4 >> 6 != 1)
    {
      switch(*a1)
      {
        case 0x81:
          v9 = MEMORY[0x277D1D5D8];
          goto LABEL_14;
        case 0x82:
          return sub_22BD1A148(a2, a3);
        default:
          v9 = MEMORY[0x277D1D5F0];
LABEL_14:
          v12 = *v9;
          v13 = sub_22BDB7A94();
          v6 = *(*(v13 - 8) + 104);
          v7 = v13;
          v11 = a3;
          v10 = v12;
          goto LABEL_15;
      }
    }

    v5 = sub_22BDB7A94();
    v6 = *(*(v5 - 8) + 104);
    v7 = v5;
    switch(v4 & 0x3F)
    {
      case 1u:
        v8 = MEMORY[0x277D1D5A8];
        break;
      case 2u:
        goto LABEL_11;
      case 3u:
        goto LABEL_7;
      default:
        goto LABEL_10;
    }
  }

  else
  {
    v7 = sub_22BDB7A94();
    v6 = *(*(v7 - 8) + 104);
    if (v4)
    {
      if (v4 == 1)
      {
LABEL_7:
        v8 = MEMORY[0x277D1D5C8];
      }

      else
      {
LABEL_11:
        v8 = MEMORY[0x277D1D5D8];
      }
    }

    else
    {
LABEL_10:
      v8 = MEMORY[0x277D1D5C0];
    }
  }

  v10 = *v8;
  v11 = a3;
LABEL_15:

  return v6(v11, v10, v7);
}

uint64_t sub_22BD1AEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB7A94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB4C84();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BD1BD2C(a1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 104))(a2, *MEMORY[0x277D1D5B0], v4);
    return sub_22BD1BD84(v16, type metadata accessor for FeedbackLearning.TaskFailureReason);
  }

  (*(v8 + 32))(v13, v16, v7);
  (*(v8 + 16))(v11, v13, v7);
  v18 = (*(v8 + 88))(v11, v7);
  if (v18 != *MEMORY[0x277D1C3F0] && v18 != *MEMORY[0x277D1C3F8])
  {
    if (v18 == *MEMORY[0x277D1C388])
    {
LABEL_10:
      (*(v8 + 8))(v13, v7);
      v20 = v24;
      (*(v5 + 104))(v24, *MEMORY[0x277D1D5B8], v4);
      goto LABEL_6;
    }

    v21 = a2;
    if (v18 == *MEMORY[0x277D1C408] || v18 == *MEMORY[0x277D1C3D8] || v18 == *MEMORY[0x277D1C3A8] || v18 == *MEMORY[0x277D1C3E0] || v18 == *MEMORY[0x277D1C390])
    {
      (*(v8 + 8))(v13, v7);
      v22 = MEMORY[0x277D1D5E0];
    }

    else
    {
      if (v18 != *MEMORY[0x277D1C398] && v18 != *MEMORY[0x277D1C3E8] && v18 != *MEMORY[0x277D1C410] && v18 != *MEMORY[0x277D1C3B8] && v18 != *MEMORY[0x277D1C3D0])
      {
        if (v18 != *MEMORY[0x277D1C418] && v18 != *MEMORY[0x277D1C3C0] && v18 != *MEMORY[0x277D1C3A0] && v18 != *MEMORY[0x277D1C3B0] && v18 != *MEMORY[0x277D1C3C8] && v18 != *MEMORY[0x277D1C420] && v18 != *MEMORY[0x277D1C400])
        {
          result = sub_22BDBB6C4();
          __break(1u);
          return result;
        }

        goto LABEL_10;
      }

      (*(v8 + 8))(v13, v7);
      v22 = MEMORY[0x277D1D5B8];
    }

    v20 = v24;
    (*(v5 + 104))(v24, *v22, v4);
    return (*(v5 + 32))(v21, v20, v4);
  }

  v19 = *(v8 + 8);
  v19(v13, v7);
  v20 = v24;
  (*(v5 + 104))(v24, *MEMORY[0x277D1D5B8], v4);
  v19(v11, v7);
LABEL_6:
  v21 = a2;
  return (*(v5 + 32))(v21, v20, v4);
}

uint64_t FeedbackLearning.EvaluationTrigger.hashValue.getter()
{
  v1 = *v0;
  sub_22BDBB814();
  MEMORY[0x2318A57F0](v1);
  return sub_22BDBB834();
}

uint64_t FeedbackLearningInteractionRecord.deviceContext.getter()
{
  sub_22BDB7A84();
  sub_22BB2F330();
  v0 = sub_22BB31F54();

  return v1(v0);
}

uint64_t FeedbackLearningInteractionRecord.candidateInteractions.getter()
{
  type metadata accessor for FeedbackLearningInteractionRecord(0);
}

uint64_t static FeedbackLearningInteractionRecord.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB7AD4();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BBE6DE0(&qword_27D8E3E20, &qword_22BDCCAB0);
  v11 = sub_22BB2F0C8(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = sub_22BBE6DE0(&qword_27D8E5EB0, &qword_22BDCCAB8);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  if ((sub_22BDB7A54() & 1) == 0)
  {
    goto LABEL_11;
  }

  v27 = v6;
  v26 = type metadata accessor for FeedbackLearningInteractionRecord(0);
  v18 = *(v26 + 20);
  v19 = *(v14 + 48);
  sub_22BC7E3C4(a1 + v18, v17, &qword_27D8E3E20, &qword_22BDCCAB0);
  sub_22BC7E3C4(a2 + v18, &v17[v19], &qword_27D8E3E20, &qword_22BDCCAB0);
  sub_22BB2F164(v17);
  if (v20)
  {
    sub_22BB2F164(&v17[v19]);
    if (v20)
    {
      sub_22BB58728(v17, &qword_27D8E3E20, &qword_22BDCCAB0);
LABEL_14:
      sub_22BCEF80C();
      return v21 & 1;
    }

    goto LABEL_10;
  }

  sub_22BC7E3C4(v17, v13, &qword_27D8E3E20, &qword_22BDCCAB0);
  sub_22BB2F164(&v17[v19]);
  if (v20)
  {
    (*(v27 + 8))(v13, v4);
LABEL_10:
    sub_22BB58728(v17, &qword_27D8E5EB0, &qword_22BDCCAB8);
    goto LABEL_11;
  }

  v23 = v27;
  (*(v27 + 32))(v9, &v17[v19], v4);
  sub_22BD1BC1C(&qword_27D8E5EB8, MEMORY[0x277D1D5F8], MEMORY[0x277D1D600]);
  v24 = sub_22BDBABD4();
  v25 = *(v23 + 8);
  v25(v9, v4);
  v25(v13, v4);
  sub_22BB58728(v17, &qword_27D8E3E20, &qword_22BDCCAB0);
  if (v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = 0;
  return v21 & 1;
}

unint64_t sub_22BD1B898()
{
  result = qword_27D8E5EC0;
  if (!qword_27D8E5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5EC0);
  }

  return result;
}

_BYTE *_s22StandardTupleGeneratorVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s17EvaluationTriggerOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_22BD1BAA0(uint64_t a1)
{
  sub_22BDB7A84();
  if (v1 <= 0x3F)
  {
    sub_22BD1BB9C(319, &qword_281428AC8, MEMORY[0x277D1D5F8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22BD1BB9C(319, &qword_281428848, type metadata accessor for FeedbackLearning.TypedCandidateInteraction, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BD1BB9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22BD1BC1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BD1BC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD1BCD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v4(v3);
  sub_22BB2F330();
  v5 = sub_22BB31F54();
  v6(v5);
  return a2;
}

uint64_t sub_22BD1BD2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v4(v3);
  sub_22BB2F330();
  v5 = sub_22BB31F54();
  v6(v5);
  return a2;
}

uint64_t sub_22BD1BD84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BD1BDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB77D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6404();
  v8 = sub_22BDB77C4();
  v9 = sub_22BDBB0F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22BB2C000, v8, v9, "Received a signal for termination, setting a flag to cancel task evaluations", v10, 2u);
    MEMORY[0x2318A6080](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  *(*(a1 + 104) + 16) = 1;
  v11 = *MEMORY[0x277D41D58];
  v12 = sub_22BDB64B4();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

uint64_t sub_22BD1BF90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_22BD1BFD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BD1C03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a4;
  v83 = a2;
  v72 = a1;
  v4 = sub_22BBE6DE0(&qword_27D8E3D18, &unk_22BDC1070);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v61 - v5;
  v6 = sub_22BBE6DE0(&qword_27D8E34D0, &qword_22BDBEF30);
  MEMORY[0x28223BE20](v6 - 8);
  v82 = &v61 - v7;
  v8 = sub_22BBE6DE0(&qword_27D8E3D20, &unk_22BDC1080);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v61 - v9;
  v10 = sub_22BDB6664();
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x28223BE20](v10);
  v75 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BBE6DE0(&qword_27D8E3D28, &unk_22BDCCD20);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v78 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = &v61 - v15;
  v16 = sub_22BDB6714();
  v80 = *(v16 - 8);
  v81 = v16;
  MEMORY[0x28223BE20](v16);
  v71 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BBE6DE0(&qword_27D8E3D30, &unk_22BDC1090);
  MEMORY[0x28223BE20](v18 - 8);
  v70 = &v61 - v19;
  v20 = sub_22BBE6DE0(&qword_27D8E3D38, &unk_22BDCCD30);
  MEMORY[0x28223BE20](v20 - 8);
  v64 = &v61 - v21;
  v66 = sub_22BDB6C84();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22BBE6DE0(&qword_27D8E3D40, &unk_22BDC10A0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v61 - v25;
  v27 = sub_22BDB6A44();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22BDB6D04();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22BBE6DE0(&qword_27D8E3D48, &unk_22BDCCD40);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v61 - v33;
  v35 = sub_22BDB6C64();
  v68 = v35;
  v69 = *(v35 - 8);
  v36 = v69;
  MEMORY[0x28223BE20](v35);
  v38 = &v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6C54();
  v39 = sub_22BDB6C34();
  (*(*(v39 - 8) + 16))(v34, v72, v39);
  sub_22BB336D0(v34, 0, 1, v39);
  v67 = v38;
  sub_22BDB6C44();
  (*(v36 + 16))(v30, v38, v35);
  (*(v28 + 104))(v30, *MEMORY[0x277D1F868], v27);
  v40 = v61;
  sub_22BDB6CF4();
  v41 = sub_22BDB6CC4();
  v85 = v74;
  sub_22BDB76D4();
  sub_22BB336D0(v26, 0, 1, v41);
  sub_22BDB6CD4();
  sub_22BDB6C74();
  v42 = v64;
  (*(v28 + 16))(v64, v30, v27);
  sub_22BB336D0(v42, 0, 1, v27);
  sub_22BDB6A54();
  v43 = v65;
  v44 = v70;
  v45 = v66;
  (*(v65 + 16))(v70, v23, v66);
  sub_22BB336D0(v44, 0, 1, v45);
  sub_22BDB6C94();
  (*(v43 + 8))(v23, v45);
  (*(v28 + 8))(v30, v27);
  v46 = v62;
  v47 = v73;
  v48 = v63;
  (*(v62 + 16))(v73, v40, v63);
  v49 = *MEMORY[0x277D1F700];
  v50 = sub_22BDB66E4();
  (*(*(v50 - 8) + 104))(v47, v49, v50);
  sub_22BB336D0(v47, 0, 1, v50);
  v52 = v75;
  v51 = v76;
  v53 = v77;
  (*(v76 + 104))(v75, *MEMORY[0x277D1F6D8], v77);
  v54 = v71;
  sub_22BDB6704();
  v55 = v79;
  sub_22BCA485C();
  v56 = sub_22BDB66C4();
  sub_22BB336D0(v55, 0, 1, v56);
  sub_22BDB66D4();
  v57 = v82;
  sub_22BDB7604();
  v58 = sub_22BDB7614();
  sub_22BB336D0(v57, 0, 1, v58);
  sub_22BDB6674();
  sub_22BD1CB84(v47, v78);
  sub_22BDB66F4();
  v59 = v84;
  (*(v51 + 16))(v84, v52, v53);
  sub_22BB336D0(v59, 0, 1, v53);
  sub_22BDB6684();
  (*(v51 + 8))(v52, v53);
  sub_22BB325EC(v47, &qword_27D8E3D28, &unk_22BDCCD20);
  sub_22BDB8814();
  sub_22BDB8804();
  (*(v80 + 8))(v54, v81);
  (*(v46 + 8))(v40, v48);
  return (*(v69 + 8))(v67, v68);
}

uint64_t sub_22BD1CA68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD1CACC(uint64_t a1, uint64_t a2)
{
  v4 = _s18TaskDefinitionThinO18TaskEvaluationThinVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD1CB30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB31F70();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BD1CB84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3D28, &unk_22BDCCD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD1CBF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v36 = a5;
  v35 = a2;
  v7 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_22BDB4C34();
  v29 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v31 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v27 - v13;
  v14 = sub_22BDB9B54();
  v15 = *(v14 - 8);
  result = MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a4 >> 1;
  v34 = (v29 + 32);
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    if (a3 == v19)
    {

      return v32;
    }

    if (__OFSUB__(v19--, 1))
    {
      break;
    }

    if (v19 < a3)
    {
      goto LABEL_14;
    }

    (*(v15 + 16))(v18, v35 + *(v15 + 72) * v19, v14);
    sub_22BD26AF4(v36, v9);
    (*(v15 + 8))(v18, v14);
    if (sub_22BB3AA28(v9, 1, v10) == 1)
    {
      result = sub_22BB58728(v9, &qword_27D8E27C0, &qword_22BDBCDF0);
    }

    else
    {
      v33 = *v34;
      v33(v30, v9, v10);
      v33(v31, v30, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BBB22CC();
        v32 = v25;
      }

      v21 = *(v32 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v32 + 24) >> 1)
      {
        v27 = *(v32 + 16);
        v28 = v21 + 1;
        sub_22BBB22CC();
        v21 = v27;
        v22 = v28;
        v32 = v26;
      }

      v23 = v31;
      v24 = v32;
      *(v32 + 16) = v22;
      result = (v33)(v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v21, v23, v10);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_22BD1CF68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = *(result + 16);
  v8 = MEMORY[0x277D84F90];
  v9 = v7;
  while (1)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    if (--v9 >= v7)
    {
      break;
    }

    v10 = *(sub_22BDB89F4() - 8);
    sub_22BD23C8C((result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9), a2, a3, &v16);
    if (v3)
    {

LABEL_12:

      return;
    }

    v11 = v16;
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BD91244();
        v8 = v14;
      }

      v12 = *(v8 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_22BD91244();
        v13 = v12 + 1;
        v8 = v15;
      }

      *(v8 + 16) = v13;
      *(v8 + 8 * v12 + 32) = v11;
    }
  }

  __break(1u);
}

uint64_t sub_22BD1D0F4(uint64_t a1)
{
  result = MEMORY[0x2318A5070](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

    sub_22BD2B728(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD1D1B4(uint64_t a1)
{
  result = MEMORY[0x2318A5070](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22BD2B728(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD1D2D0(uint64_t a1)
{
  v2 = MEMORY[0x2318A5070](*(a1 + 16), MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_22BD2B874(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void sub_22BD1D364()
{
  sub_22BB30F94();
  sub_22BB35760();
  v5 = sub_22BDB7B44();
  sub_22BB30444();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v9);
  sub_22BB72E1C();
  sub_22BB3A720();
  sub_22BBB9968(v10, v11, MEMORY[0x277D1D618]);
  v12 = sub_22BB2F3F0();
  MEMORY[0x2318A5070](v12);
  v13 = *(v0 + 16);
  if (v13)
  {
    v14 = *(v7 + 16);
    sub_22BB2F390();
    sub_22BB32E54();
    do
    {
      v14(v1, v3, v5);
      sub_22BB3AAD8();
      sub_22BD2BAC0();
      (*v0)(v2, v5);
      v3 += v4;
      --v13;
    }

    while (v13);
  }

  sub_22BB314EC();
}

void sub_22BD1D4C0()
{
  sub_22BB30F94();
  sub_22BBB79D8();
  sub_22BDB81A4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB3A434();
  v2 = sub_22BDB9564();
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  sub_22BB345CC();
  type metadata accessor for FeedbackLearning.ActionValue(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB89D24();
  sub_22BB33DE8();
  sub_22BD1FA4C();
  sub_22BB35464();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB51840();
    v7 = sub_22BB313A8();
    v8(v7);
    sub_22BDB8194();
    MEMORY[0x2318A2DC0]();
    sub_22BDB8DE4();
    v9 = sub_22BB2F3F0();
    v10(v9);
  }

  else
  {
    v11 = sub_22BB32E04();
    v12(v11);
    sub_22BDB9544();
    (*(v4 + 8))(v0, v2);
  }

  sub_22BB314EC();
}

void sub_22BD1D6A4()
{
  sub_22BB30F94();
  sub_22BBB79D8();
  sub_22BDB81A4();
  sub_22BB30444();
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB3A434();
  v2 = sub_22BDB9564();
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  sub_22BB345CC();
  type metadata accessor for FeedbackLearning.ActionValue(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB89D24();
  sub_22BB33DE8();
  sub_22BD1FA4C();
  sub_22BB35464();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB51840();
    v7 = sub_22BB313A8();
    v8(v7);
    sub_22BDB8174();
    v9 = sub_22BB2F3F0();
    v10(v9);
  }

  else
  {
    v11 = sub_22BB32E04();
    v12(v11);
    sub_22BDB8174();
    (*(v4 + 8))(v0, v2);
  }

  sub_22BB314EC();
}

void sub_22BD1D87C()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_22BDB4C34();
  sub_22BB30444();
  v48[1] = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  sub_22BB89D24();
  sub_22BDB77D4();
  sub_22BB30444();
  v49 = v9;
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BBE6DE0(&qword_27D8E3E08, &qword_22BDC1250);
  sub_22BB2F0C8(v13);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  v16 = v48 - v15;
  v17 = sub_22BDB43E4();
  v18 = sub_22BB2F0C8(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v19 = sub_22BDB5F24();
  v20 = sub_22BB2F0C8(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  if (sub_22BD206DC(v3, v1))
  {
    sub_22BDB8F24();
    sub_22BDB5F04();
    sub_22BBD5E2C();
    v22 = v21;

    v23 = sub_22BD2EAAC();
    MEMORY[0x28223BE20](v23);
    v48[-2] = v3;
    sub_22BD79948(sub_22BD2F720, &v48[-4], v22);

    v24 = type metadata accessor for FeedbackLearning.FlowTask(0);
    if (sub_22BB3AA28(v16, 1, v24) == 1)
    {
      sub_22BB58728(v16, &qword_27D8E3E08, &qword_22BDC1250);
      sub_22BDB6404();
      v25 = sub_22BB35464();
      v26(v25);
      v27 = sub_22BDB77C4();
      v28 = sub_22BDBB114();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v48[0] = swift_slowAlloc();
        v51 = v48[0];
        *v29 = 136315138;
        sub_22BB31D8C();
        sub_22BBB9968(v30, v31, MEMORY[0x277D1C368]);
        sub_22BDBB684();
        v32 = sub_22BB31528();
        v33(v32);
        v34 = sub_22BB53C48();
        v37 = sub_22BB32EE0(v34, v35, v36);

        *(v29 + 4) = v37;
        _os_log_impl(&dword_22BB2C000, v27, v28, "Could not find a task containing an expression with statementId=%s", v29, 0xCu);
        v38 = v48[0];
        sub_22BB32FA4(v48[0]);
        MEMORY[0x2318A6080](v38, -1, -1);
        MEMORY[0x2318A6080](v29, -1, -1);
      }

      else
      {

        v46 = sub_22BB31528();
        v47(v46);
      }

      (*(v49 + 8))(v12, v50);
      v44 = v5;
      v45 = 1;
    }

    else
    {
      sub_22BB3A86C();
      sub_22BD2EB00();
      v44 = v5;
      v45 = 0;
    }

    sub_22BB336D0(v44, v45, 1, v24);
    sub_22BB314EC();
  }

  else
  {
    type metadata accessor for FeedbackLearning.FlowTask(0);
    sub_22BB314EC();

    sub_22BB336D0(v39, v40, v41, v42);
  }
}

uint64_t FeedbackLearning.FlowExpressionValue.referredStatements.getter()
{
  v2 = sub_22BDB4C34();
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v6 = sub_22BB319F8();
  v7 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(v6);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v9 = sub_22BB3DFC0();
  type metadata accessor for FeedbackLearning.FlowExpressionValue(v9);
  sub_22BB35BA8();
  sub_22BD1FA4C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = *(v4 + 32);
  v12 = sub_22BB3AC54();
  v11(v12);
  v13 = sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
  v14 = sub_22BB8AC8C(v13);
  *(v14 + 16) = xmmword_22BDBCBD0;
  (v11)(v14 + v7, v1, v2);
  return v14;
}

void static FeedbackLearning.FlowActionEvent.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB43B4())
  {
    v0 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
    sub_22BB36D64(v0);

    static FeedbackLearning.ActionValue.== infix(_:_:)();
  }
}

void static FeedbackLearning.ActionValue.== infix(_:_:)()
{
  sub_22BB30F94();
  v31 = v2;
  v32 = v3;
  sub_22BDB81A4();
  sub_22BB30444();
  v29 = v5;
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB319F8();
  v6 = sub_22BDB9564();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v10 = sub_22BB52E94();
  type metadata accessor for FeedbackLearning.ActionValue(v10);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v11);
  sub_22BB30C74();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = sub_22BBE6DE0(&qword_27D8E4E60, &qword_22BDC7258);
  sub_22BB2F0C8(v18);
  sub_22BB30B9C();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  sub_22BD1FA4C();
  sub_22BD1FA4C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB33DE8();
    sub_22BB313A8();
    sub_22BD1FA4C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v29;
      v24 = v30;
      (*(v29 + 32))(v0, &v22[v23], v30);
      sub_22BDB8184();
      v26 = *(v25 + 8);
      v27 = sub_22BB3AC54();
      v26(v27);
      (v26)(v14, v24);
LABEL_9:
      sub_22BD2EAAC();
      goto LABEL_10;
    }

    (*(v29 + 8))(v14, v30);
  }

  else
  {
    sub_22BB33DE8();
    sub_22BD1FA4C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v8 + 32))(v1, &v22[v23], v6);
      sub_22BDB9534();
      v28 = *(v8 + 8);
      v28(v1, v6);
      v28(v17, v6);
      goto LABEL_9;
    }

    (*(v8 + 8))(v17, v6);
  }

  sub_22BB58728(v22, &qword_27D8E4E60, &qword_22BDC7258);
LABEL_10:
  sub_22BB314EC();
}

uint64_t sub_22BD1E218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6341746E65696C63 && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BD1E2E0(char a1)
{
  if (a1)
  {
    return 0x6341746E65696C63;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_22BD1E31C(uint64_t a1)
{
  v2 = sub_22BD1FB4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD1E358(uint64_t a1)
{
  v2 = sub_22BD1FB4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD1E394(uint64_t a1)
{
  v2 = sub_22BD1FAF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD1E3D0(uint64_t a1)
{
  v2 = sub_22BD1FAF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD1E414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD1E218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD1E43C(uint64_t a1)
{
  v2 = sub_22BD1FAA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD1E478(uint64_t a1)
{
  v2 = sub_22BD1FAA4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.ActionValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB31014();
  v76 = v24;
  v74 = v23;
  sub_22BBE6DE0(&qword_27D8E5EE8, &qword_22BDCCD70);
  sub_22BB30444();
  v72 = v27;
  v73 = v26;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v28);
  v69 = v64 - v29;
  sub_22BB2F120();
  sub_22BDB81A4();
  sub_22BB30444();
  v70 = v31;
  v71 = v30;
  MEMORY[0x28223BE20](v30);
  sub_22BB305A8();
  v68 = v32;
  sub_22BBE6DE0(&qword_27D8E5EF0, &qword_22BDCCD78);
  sub_22BB30444();
  v66 = v34;
  v67 = v33;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v35);
  sub_22BB52E94();
  sub_22BDB9564();
  sub_22BB30444();
  v64[1] = v37;
  v65 = v36;
  MEMORY[0x28223BE20](v36);
  sub_22BB30574();
  sub_22BB89D24();
  type metadata accessor for FeedbackLearning.ActionValue(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v38);
  sub_22BB30574();
  v41 = v40 - v39;
  sub_22BBE6DE0(&qword_27D8E5EF8, &qword_22BDCCD80);
  sub_22BB30444();
  v75 = v42;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v43);
  sub_22BB345CC();
  v44 = sub_22BB53C48();
  sub_22BB69FEC(v44, v45);
  sub_22BD1FAA4();
  sub_22BDBB8A4();
  sub_22BB33DE8();
  sub_22BD1FA4C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = v70;
    v46 = v71;
    sub_22BB379C8();
    v48 = v68;
    v49(v68, v41, v46);
    sub_22BD1FAF8();
    sub_22BDBB5F4();
    sub_22BB3A998();
    sub_22BBB9968(v50, v51, MEMORY[0x277D1DBC0]);
    sub_22BDBB664();
    v52 = sub_22BB3ADA8();
    v53(v52);
    (*(v47 + 8))(v48, v46);
  }

  else
  {
    v54 = v65;
    sub_22BB51840();
    v55(v25, v41, v54);
    sub_22BD1FB4C();
    sub_22BDBB5F4();
    sub_22BB397B4();
    sub_22BBB9968(v56, v57, MEMORY[0x277D1E5C8]);
    sub_22BDBB664();
    v58 = sub_22BB3AAD8();
    v59(v58);
    v60 = sub_22BB35464();
    v61(v60);
  }

  v62 = sub_22BB95B90();
  v63(v62);
  sub_22BB376A8();
}

void FeedbackLearning.ActionValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB31014();
  a22 = v25;
  a23 = v26;
  v88 = v23;
  v28 = v27;
  v79 = v29;
  v87 = sub_22BBE6DE0(&qword_27D8E5F20, &qword_22BDCCD88);
  sub_22BB30444();
  v82 = v30;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  v84 = v77 - v32;
  sub_22BBE6DE0(&qword_27D8E5F28, &qword_22BDCCD90);
  sub_22BB30444();
  v80 = v34;
  v81 = v33;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v35);
  v83 = v77 - v36;
  sub_22BBE6DE0(&qword_27D8E5F30, &unk_22BDCCD98);
  sub_22BB30444();
  v85 = v38;
  v86 = v37;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v39);
  v40 = sub_22BB52E94();
  v41 = type metadata accessor for FeedbackLearning.ActionValue(v40);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v42);
  sub_22BB30C74();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v47);
  v49 = v77 - v48;
  sub_22BB69FEC(v28, v28[3]);
  sub_22BD1FAA4();
  v50 = v88;
  sub_22BDBB894();
  if (v50)
  {
    goto LABEL_7;
  }

  v77[0] = v45;
  v77[1] = v24;
  v77[2] = v49;
  v78 = v41;
  v88 = v28;
  sub_22BDBB5E4();
  v54 = sub_22BD006D0();
  if (v52 == v53 >> 1)
  {
LABEL_6:
    v66 = v78;
    v67 = sub_22BDBB3A4();
    swift_allocError();
    v69 = v68;
    sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    *v69 = v66;
    sub_22BDBB564();
    sub_22BDBB394();
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x277D84160], v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    v70 = sub_22BB95B90();
    v71(v70);
    v28 = v88;
LABEL_7:
    v76 = v28;
    goto LABEL_8;
  }

  if (v52 < (v53 >> 1))
  {
    sub_22BD006A8(v52 + 1, v53 >> 1, v54, v51);
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    if (v56 == v58 >> 1)
    {
      a13 = 1;
      sub_22BD1FAF8();
      sub_22BBC7F9C(&type metadata for FeedbackLearning.ActionValue.ClientActionCodingKeys, &a13);
      v59 = sub_22BDB81A4();
      sub_22BB3A998();
      v62 = sub_22BBB9968(v60, v61, MEMORY[0x277D1DBC8]);
      sub_22BB97C28(v59, v63, v64, v65, v62);
      swift_unknownObjectRelease();
      v72 = sub_22BB3FCC8();
      v73(v72);
      v74 = sub_22BB32E04();
      v75(v74);
      swift_storeEnumTagMultiPayload();
      sub_22BD2EB00();
      sub_22BD2EB00();
      v76 = v88;
LABEL_8:
      sub_22BB32FA4(v76);
      sub_22BB376A8();
      return;
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t FeedbackLearning.FlowActionEvent.action.getter()
{
  v0 = sub_22BBB79D8();
  type metadata accessor for FeedbackLearning.FlowActionEvent(v0);
  sub_22BB33DE8();
  return sub_22BD1FA4C();
}

uint64_t sub_22BD1EFB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BD1F074(char a1)
{
  if (a1)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x6449746E657665;
  }
}

uint64_t sub_22BD1F0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD1EFB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD1F0D8(uint64_t a1)
{
  v2 = sub_22BD2EA58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD1F114(uint64_t a1)
{
  v2 = sub_22BD2EA58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedbackLearning.FlowActionEvent.encode(to:)(uint64_t a1)
{
  v3 = sub_22BBE6DE0(&qword_27D8E5F40, &qword_22BDCCDA8);
  sub_22BB30444();
  v5 = v4;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = sub_22BB313A8();
  sub_22BB69FEC(v9, v10);
  sub_22BD2EA58();
  sub_22BDBB8A4();
  v25 = 0;
  sub_22BDB43E4();
  sub_22BB30D8C();
  v13 = sub_22BBB9968(v11, v12, MEMORY[0x277CC95F8]);
  sub_22BB38588(v1, &v25, v14, v15, v13);
  if (!v2)
  {
    v16 = *(type metadata accessor for FeedbackLearning.FlowActionEvent(0) + 20);
    v24 = 1;
    type metadata accessor for FeedbackLearning.ActionValue(0);
    sub_22BB6B6D8();
    v19 = sub_22BBB9968(v17, v18, &protocol conformance descriptor for FeedbackLearning.ActionValue);
    sub_22BB38588(v1 + v16, &v24, v20, v21, v19);
  }

  return (*(v5 + 8))(v8, v3);
}

void FeedbackLearning.FlowActionEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BB31014();
  v26 = v25;
  type metadata accessor for FeedbackLearning.ActionValue(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v27);
  sub_22BB30574();
  sub_22BB345CC();
  v42 = sub_22BDB43E4();
  sub_22BB30444();
  v40 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22BB305A8();
  v41 = v30;
  sub_22BBE6DE0(&qword_27D8E5F58, &unk_22BDCCDB0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  v32 = sub_22BB319F8();
  type metadata accessor for FeedbackLearning.FlowActionEvent(v32);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v33);
  sub_22BB30574();
  sub_22BB89D24();
  sub_22BB69FEC(v26, v26[3]);
  sub_22BD2EA58();
  sub_22BDBB894();
  if (v23)
  {
    sub_22BB32FA4(v26);
  }

  else
  {
    sub_22BB30D8C();
    sub_22BBB9968(v34, v35, MEMORY[0x277CC9618]);
    sub_22BDBB5D4();
    (*(v40 + 32))(v24, v41, v42);
    sub_22BB6B6D8();
    sub_22BBB9968(v36, v37, &protocol conformance descriptor for FeedbackLearning.ActionValue);
    sub_22BDBB5D4();
    v38 = sub_22BB3E158();
    v39(v38);
    sub_22BD2EB00();
    sub_22BD1FA4C();
    sub_22BB32FA4(v26);
    sub_22BD2EAAC();
  }

  sub_22BB376A8();
}

uint64_t FeedbackLearning.FlowExpressionValue.FlowExpressionType.description.getter()
{
  v1 = sub_22BDB4C34();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v5 = sub_22BB3DFC0();
  type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(v5);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB35BA8();
  sub_22BD1FA4C();
  sub_22BB345A8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_22BB37494();
      v9(v8);
      sub_22BB31D8C();
      sub_22BBB9968(v10, v11, MEMORY[0x277D1C368]);
      v12 = sub_22BDBB684();
      MEMORY[0x2318A4C40](v12);

      MEMORY[0x2318A4C40](41, 0xE100000000000000);
      (*(v3 + 8))(v0, v1);
    }
  }

  else
  {
    v13 = sub_22BB2F324();
    v14 = MEMORY[0x2318A4D50](v13);
    v16 = v15;

    MEMORY[0x2318A4C40](v14, v16);

    MEMORY[0x2318A4C40](41, 0xE100000000000000);
  }

  return sub_22BB53C48();
}

uint64_t FeedbackLearning.FlowExpressionValue.FlowExpressionType.referredStatements.getter()
{
  v1 = sub_22BDB4C34();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v5 = sub_22BB3A434();
  v6 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(v5);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v10 = v9 - v8;
  sub_22BB35BA8();
  sub_22BB3AC54();
  sub_22BD1FA4C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v3 + 32);
  v13 = sub_22BB2F3F0();
  v12(v13);
  v14 = sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
  v15 = sub_22BB8AC8C(v14);
  *(v15 + 16) = xmmword_22BDBCBD0;
  (v12)(v15 + v6, v0, v1);
  return v15;
}

uint64_t sub_22BD1FA4C()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB2F330();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

unint64_t sub_22BD1FAA4()
{
  result = qword_27D8E5F00;
  if (!qword_27D8E5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F00);
  }

  return result;
}

unint64_t sub_22BD1FAF8()
{
  result = qword_27D8E5F08;
  if (!qword_27D8E5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F08);
  }

  return result;
}

unint64_t sub_22BD1FB4C()
{
  result = qword_27D8E5F18;
  if (!qword_27D8E5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F18);
  }

  return result;
}

void static FeedbackLearning.FlowExpressionValue.FlowExpressionType.== infix(_:_:)()
{
  sub_22BB30F94();
  v2 = sub_22BDB4C34();
  sub_22BB30444();
  v22 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v5 = sub_22BB3DFC0();
  type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(v5);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v6);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22BBE6DE0(&qword_27D8E4E50, &qword_22BDC7250);
  sub_22BB2F0C8(v8);
  sub_22BB30B9C();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = *(v10 + 56);
  sub_22BD1FA4C();
  sub_22BD1FA4C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BB35BA8();
      sub_22BD1FA4C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = v22;
        sub_22BB379C8();
        v16(v0, &v12[v13], v2);
        sub_22BB3AC54();
        sub_22BDB4C04();
        v17 = *(v15 + 8);
        v18 = sub_22BB37494();
        v17(v18);
        (v17)(v1, v2);
LABEL_12:
        sub_22BB35FEC();
        goto LABEL_13;
      }

      (*(v22 + 8))(v1, v2);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_22BB35BA8();
    sub_22BD1FA4C();
    if (!swift_getEnumCaseMultiPayload())
    {
      v19 = sub_22BB2F3F0();
      sub_22BCF162C(v19, v20);

      goto LABEL_12;
    }
  }

  sub_22BB58728(v12, &qword_27D8E4E50, &qword_22BDC7250);
LABEL_13:
  sub_22BB314EC();
}

uint64_t FeedbackLearning.FlowExpressionValue.init(statementId:originTaskStatementId:expressionType:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_22BDB4C34();
  sub_22BB2F330();
  v7 = *(v6 + 32);
  v8 = sub_22BB3AC54();
  v7(v8);
  v9 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  (v7)(a3 + *(v9 + 20), a1, v5);
  sub_22BB6BD38();
  return sub_22BD2EB00();
}

uint64_t FeedbackLearning.FlowExpressionValue.init(statementId:expressionType:)()
{
  sub_22BB35F54();
  v2 = v1;
  v3 = sub_22BDB4C34();
  sub_22BB30444();
  v5 = v4;
  v6 = sub_22BB37494();
  v7(v6);
  v8 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  (*(v5 + 32))(v2 + *(v8 + 20), v0, v3);
  sub_22BB6BD38();
  return sub_22BD2EB00();
}

uint64_t sub_22BD1FFDC()
{
  v0 = sub_22BBB79D8();
  v1(v0);
  sub_22BB2F330();
  v2 = sub_22BB31F54();

  return v3(v2);
}

uint64_t FeedbackLearning.FlowExpressionValue.expressionType.getter()
{
  v0 = sub_22BBB79D8();
  type metadata accessor for FeedbackLearning.FlowExpressionValue(v0);
  sub_22BB35BA8();
  return sub_22BD1FA4C();
}

uint64_t FeedbackLearning.FlowExpressionValue.forming(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB4C34();
  sub_22BB2F330();
  v6 = *(v5 + 16);
  v7 = sub_22BB37494();
  v6(v7);
  v8 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  (v6)(a2 + *(v8 + 20), a1, v4);
  sub_22BB35BA8();
  return sub_22BD1FA4C();
}

void static FeedbackLearning.FlowExpressionValue.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB4C04())
  {
    v0 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
    sub_22BB36D64(v0);
    if (sub_22BDB4C04())
    {
      sub_22BB39610();

      static FeedbackLearning.FlowExpressionValue.FlowExpressionType.== infix(_:_:)();
    }
  }
}

uint64_t FeedbackLearning.FlowExpression.events.getter()
{
  type metadata accessor for FeedbackLearning.FlowExpression(0);
}

void static FeedbackLearning.FlowExpression.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB4C04())
  {
    v0 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
    sub_22BB36D64(v0);
    if (sub_22BDB4C04())
    {
      sub_22BB39610();
      static FeedbackLearning.FlowExpressionValue.FlowExpressionType.== infix(_:_:)();
      if (v1)
      {
        v2 = type metadata accessor for FeedbackLearning.FlowExpression(0);
        v3 = sub_22BB31A38(*(v2 + 20));
        sub_22BCF10EC(v3, v4);
        if (v5)
        {
          sub_22BB31A38(*(v2 + 24));

          sub_22BCF1134();
        }
      }
    }
  }
}

uint64_t sub_22BD20310()
{
  v2 = sub_22BBB79D8();
  v4 = *(v3(v2) + 20);
  sub_22BDB4C34();
  sub_22BB2F330();
  v7 = *(v6 + 16);

  return v7(v0, v1 + v4, v5);
}

uint64_t sub_22BD203A0(void (*a1)(void))
{
  a1(0);
}

uint64_t FeedbackLearning.FlowTask.taskEvents.getter()
{
  type metadata accessor for FeedbackLearning.FlowTask(0);
}

uint64_t FeedbackLearning.FlowTask.actionEvents.getter()
{
  type metadata accessor for FeedbackLearning.FlowTask(0);
}

void FeedbackLearning.FlowTask.originProgramStatementIds.getter()
{
  sub_22BB30F94();
  v2 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  v3 = sub_22BB30434(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v8 = v7 - v6;
  v9 = sub_22BDB4C34();
  sub_22BB30444();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v13 = sub_22BB52E94();
  v14 = *(v0 + *(type metadata accessor for FeedbackLearning.FlowTask(v13) + 24));
  v15 = *(v14 + 16);
  if (v15)
  {
    v22 = MEMORY[0x277D84F90];
    sub_22BD27F28();
    sub_22BB2F390();
    v17 = v14 + v16;
    v21 = *(v5 + 72);
    do
    {
      sub_22BB323D0();
      sub_22BD1FA4C();
      (*(v11 + 16))(v1, v8, v9);
      sub_22BB38E5C();
      sub_22BD2EAAC();
      v19 = *(v22 + 16);
      v18 = *(v22 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_22BB2F158(v18);
        sub_22BD27F28();
      }

      *(v22 + 16) = v19 + 1;
      sub_22BB2F390();
      (*(v11 + 32))(v22 + v20 + *(v11 + 72) * v19, v1, v9);
      v17 += v21;
      --v15;
    }

    while (v15);
  }

  sub_22BBB2394();
  sub_22BB314EC();
}

void static FeedbackLearning.FlowTask.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB43B4())
  {
    v0 = type metadata accessor for FeedbackLearning.FlowTask(0);
    sub_22BB36D64(v0);
    if (sub_22BDB4C04())
    {
      sub_22BB31A38(v0[6]);
      sub_22BCF0818();
      if (v1)
      {
        v2 = sub_22BB31A38(v0[7]);
        sub_22BCF10EC(v2, v3);
        if (v4)
        {
          sub_22BB31A38(v0[8]);

          sub_22BCF1134();
        }
      }
    }
  }
}

uint64_t sub_22BD206DC(uint64_t a1, char *a2)
{
  v98 = a1;
  v104 = sub_22BDB9954();
  v94 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_22BDB9B14();
  v93 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v111 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22BDB9B54();
  v110 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  MEMORY[0x28223BE20](v109);
  v108 = (&v91 - v6);
  v7 = sub_22BBE6DE0(&qword_27D8E6220, &unk_22BDCD7C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v107 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v91 - v10;
  v11 = &qword_27D8E60F0;
  v12 = sub_22BBE6DE0(&qword_27D8E60F0, &qword_22BDCD648);
  v116 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v114 = (&v91 - v13);
  v14 = sub_22BDB4C34();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v123 = (&v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v125 = &v91 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v91 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = &v91 - v23;
  v25 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v92 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v97 = &v91 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v96 = &v91 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v91 - v33);
  MEMORY[0x28223BE20](v32);
  v100 = (&v91 - v35);
  v99 = a2;
  v36 = sub_22BDB9744();
  v37 = sub_22BBD7224(v36);

  v38 = *(v15 + 16);
  v15 += 16;
  v95 = v24;
  v39 = v24;
  v40 = v98;
  v38(v39, v98, v14);
  v120 = v22;
  v117 = v38;
  v38(v22, v40, v14);
  i = 0;
  v121 = *(v37 + 16);
  v122 = v37;
  v124 = v15 - 8;
  v118 = v15;
  v119 = (v15 - 8);
  v112 = (v15 + 16);
  v113 = v12;
  v115 = v34;
  while (v121 != i)
  {
    v36 = (v122 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * i);
    v42 = v114;
    sub_22BC5E5C4();
    v43 = v125;
    v117(v125, v42 + *(v12 + 48), v14);
    sub_22BD2EAAC();
    v44 = sub_22BDB4C04();
    v45 = v11;
    v46 = *v119;
    (*v119)(v43, v14);
    v46(v42, v14);
    if (v44)
    {
      sub_22BC5E5C4();
      v47 = v42;
      v48 = v115;
      (*v112)(v115, v47, v14);
      sub_22BB336D0(v48, 0, 1, v14);
      sub_22BD2EAAC();
      v11 = v45;
      if (sub_22BB3AA28(v48, 1, v14) != 1)
      {
        sub_22BB58728(v48, &qword_27D8E27C0, &qword_22BDBCDF0);
        goto LABEL_9;
      }
    }

    else
    {
      v48 = v115;
      sub_22BB336D0(v115, 1, 1, v14);
      v11 = v45;
    }

    sub_22BB58728(v48, &qword_27D8E27C0, &qword_22BDBCDF0);
    ++i;
    v12 = v113;
  }

  i = v121;
LABEL_9:
  v49 = *(v122 + 16);
  v124 = v124 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v50 = v102;
  v51 = v101;
  v52 = v97;
  v53 = v96;
  if (i == v49)
  {
    v36 = *v119;
    (*v119)(v95, v14);
    v54 = 1;
    v55 = v100;
  }

  else
  {
    if (i >= v49)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      swift_unknownObjectRelease_n();
LABEL_37:
      sub_22BD942B8(v50, i, v52, v51);
      v85 = v84;
      v86 = v102;
      v87 = v101;
LABEL_44:
      swift_unknownObjectRelease();
      goto LABEL_45;
    }

    v56 = v95;
    sub_22BD23A50(v96);
    v36 = *v119;
    (*v119)(v56, v14);
    sub_22BC5E5C4();
    if (sub_22BB3AA28(v52, 1, v14) == 1)
    {
      result = v36(v120, v14);
      __break(1u);
      return result;
    }

    v55 = v100;
    (*v112)(v100, v52, v14);
    sub_22BB58728(v53, &qword_27D8E27C0, &qword_22BDBCDF0);
    v54 = 0;
  }

  sub_22BB336D0(v55, v54, 1, v14);

  v36(v120, v14);
  v57 = v92;
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v57, 1, v14) == 1)
  {
    v117(v123, v98, v14);
    if (sub_22BB3AA28(v57, 1, v14) != 1)
    {
      sub_22BB58728(v57, &qword_27D8E27C0, &qword_22BDBCDF0);
    }
  }

  else
  {
    (*v112)(v123, v57, v14);
  }

  v58 = sub_22BDB9744();
  v52 = 0;
  v59 = *(v58 + 16);
  v121 = (v110 + 32);
  v122 = v110 + 16;
  v120 = (v93 + 88);
  LODWORD(v119) = *MEMORY[0x277D1E6F8];
  v118 = (v110 + 8);
  v115 = (v93 + 96);
  v116 = v93 + 8;
  v113 = (v94 + 8);
  v114 = (v94 + 32);
LABEL_19:
  for (i = v111; ; (*v116)(i, v70))
  {
    v60 = v108;
    v61 = v109;
    if (v59)
    {
      if (--v59 >= *(v58 + 16))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v62 = v110;
      v63 = v58 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v59;
      v64 = *(v109 + 48);
      *v108 = v52;
      (*(v62 + 16))(v60 + v64, v63, v50);
      if (__OFADD__(v52++, 1))
      {
        goto LABEL_49;
      }

      v66 = v107;
      sub_22BC8D26C();
      v67 = v66;
      v68 = 0;
    }

    else
    {
      v67 = v107;
      v68 = 1;
    }

    sub_22BB336D0(v67, v68, 1, v61);
    v69 = v106;
    sub_22BC8D26C();
    if (sub_22BB3AA28(v69, 1, v61) == 1)
    {
      sub_22BB58728(v100, &qword_27D8E27C0, &qword_22BDBCDF0);

      v85 = 0;
      goto LABEL_46;
    }

    v117 = *v69;
    (*v121)(v51, &v69[*(v61 + 48)], v50);
    sub_22BDB9B24();
    i = v111;
    v70 = v105;
    v71 = (*v120)(v111, v105);
    if (v71 == v119)
    {
      break;
    }

    (*v118)(v51, v50);
  }

  (*v115)(i, v70);
  (*v114)(v103, i, v104);
  v51 = 0;
  v72 = *(sub_22BDB9914() + 16);
  do
  {
    if (v72 == v51)
    {

      (*v113)(v103, v104);
      v51 = v101;
      v50 = v102;
      (*v118)(v101, v102);
      goto LABEL_19;
    }

    sub_22BDB89F4();
    v73 = v51 + 1;
    v74 = v125;
    sub_22BDB8174();
    v75 = sub_22BDB4C04();
    v36(v74, v14);
    v51 = v73;
  }

  while ((v75 & 1) == 0);

  i = v99;
  v76 = sub_22BDB9744();
  v50 = *(sub_22BDB9744() + 16);

  v77 = v117 + 1;
  if (__OFADD__(v117, 1))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v78 = v50 - v77;
  if (__OFSUB__(v50, v77))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v79 = *(v76 + 16);
  if (v79 < v78)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_22BB8EC88(v78, v79, v76);
  v50 = v80;
  i = v81;
  v52 = v82;
  v51 = v83;

  if ((v51 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22BDBB6F4();
  swift_unknownObjectRetain_n();
  v88 = swift_dynamicCastClass();
  if (!v88)
  {
    swift_unknownObjectRelease();
    v88 = MEMORY[0x277D84F90];
  }

  v89 = *(v88 + 16);

  if (__OFSUB__(v51 >> 1, v52))
  {
    goto LABEL_54;
  }

  if (v89 != (v51 >> 1) - v52)
  {
    goto LABEL_55;
  }

  v85 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v86 = v102;
  v87 = v101;
  if (!v85)
  {
    v85 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

LABEL_45:
  (*v113)(v103, v104);
  (*v118)(v87, v86);
  sub_22BB58728(v100, &qword_27D8E27C0, &qword_22BDBCDF0);
LABEL_46:
  v36(v123, v14);
  return v85;
}

uint64_t sub_22BD215A0()
{
  FeedbackLearning.FlowTask.originProgramStatementIds.getter();
  sub_22BBBCB1C();
  v1 = v0;

  return v1 & 1;
}

uint64_t sub_22BD215F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v91 = a3;
  v95 = sub_22BDB81A4();
  v101 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB43E4();
  v96 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v103 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22BDB9564();
  v85 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_22BDB9B14();
  v102 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  MEMORY[0x28223BE20](v11 - 8);
  v121 = &v85 - v12;
  v115 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  v98 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v14 = *(v119 - 8);
  v15 = MEMORY[0x28223BE20](v119);
  v118 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v117 = &v85 - v17;
  v18 = sub_22BDB9B54();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v86 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v85 - v23;
  MEMORY[0x28223BE20](v22);
  v113 = &v85 - v25;
  v90 = a1;
  v26 = sub_22BD85C50();
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  v28 = *(v27 + 16);
  v120 = v19;
  v114 = v10;
  v89 = a2;
  v104 = v6;
  v88 = v14;
  v87 = v27;
  if (v28)
  {
    v122 = MEMORY[0x277D84F90];
    sub_22BB6FF1C(0, v28, 0);
    v29 = v122;
    v30 = v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v116 = *(v14 + 72);
    v31 = (v19 + 32);
    v32 = v18;
    do
    {
      sub_22BC5E5C4();
      v33 = v118;
      sub_22BC8D26C();
      v34 = *v31;
      (*v31)(v24, &v33[*(v119 + 48)], v32);
      v122 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22BB6FF1C(v35 > 1, v36 + 1, 1);
        v29 = v122;
      }

      *(v29 + 16) = v36 + 1;
      v34((v29 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v36), v24, v32);
      v30 += v116;
      --v28;
    }

    while (v28);
    v18 = v32;
    v19 = v120;
    v10 = v114;
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v37 = *(v29 + 16);
  v38 = v121;
  v39 = v115;
  if (v37)
  {
    v41 = *(v19 + 16);
    v40 = v19 + 16;
    v42 = v29 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v108 = *(v40 + 56);
    v109 = v41;
    v107 = (v102 + 11);
    v106 = *MEMORY[0x277D1E710];
    v97 = *MEMORY[0x277D1E7A0];
    v110 = v40;
    v105 = (v40 - 8);
    v93 = v102 + 1;
    v102 += 12;
    v92 = (v101 + 4);
    v101 = (v96 + 4);
    v96 = (v85 + 32);
    v116 = MEMORY[0x277D84F90];
    v43 = v113;
    while (1)
    {
      v109(v43, v42, v18);
      sub_22BDB9B24();
      v44 = v112;
      v45 = (*v107)(v10, v112);
      if (v45 == v106)
      {
        (*v102)(v10, v44);
        v46 = v43;
        v47 = *v96;
        v48 = v99;
        v49 = v10;
        v50 = v100;
        (*v96)(v99, v49, v100);
        v51 = v103;
        sub_22BDB8F24();
        (*v105)(v46, v18);
        v52 = v48;
        v39 = v115;
        v47((v121 + *(v115 + 20)), v52, v50);
        type metadata accessor for FeedbackLearning.ActionValue(0);
        swift_storeEnumTagMultiPayload();
        v53 = v51;
        v38 = v121;
        (*v101)(v121, v53, v104);
        v54 = v38;
        v55 = v39;
      }

      else
      {
        if (v45 != v97)
        {
          (*v105)(v43, v18);
          sub_22BB336D0(v38, 1, 1, v39);
          (*v93)(v10, v44);
          goto LABEL_19;
        }

        (*v102)(v10, v44);
        v56 = v43;
        v57 = *v92;
        v58 = v94;
        v59 = v18;
        v60 = v95;
        (*v92)(v94, v10, v95);
        v61 = v103;
        sub_22BDB8F24();
        (*v105)(v56, v59);
        v62 = v58;
        v38 = v121;
        v63 = v60;
        v18 = v59;
        v64 = v115;
        v57((v121 + *(v115 + 20)), v62, v63);
        v39 = v64;
        type metadata accessor for FeedbackLearning.ActionValue(0);
        swift_storeEnumTagMultiPayload();
        (*v101)(v38, v61, v104);
        v54 = v38;
        v55 = v64;
      }

      sub_22BB336D0(v54, 0, 1, v55);
LABEL_19:
      if (sub_22BB3AA28(v38, 1, v39) == 1)
      {
        sub_22BB58728(v38, &qword_27D8E4328, &unk_22BDCC070);
        v10 = v114;
      }

      else
      {
        sub_22BD2EB00();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = v114;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BD9117C();
          v116 = v67;
        }

        v66 = *(v116 + 16);
        if (v66 >= *(v116 + 24) >> 1)
        {
          sub_22BD9117C();
          v116 = v68;
        }

        *(v116 + 16) = v66 + 1;
        sub_22BD2EB00();
      }

      v43 = v113;
      v42 += v108;
      if (!--v37)
      {

        v19 = v120;
        goto LABEL_29;
      }
    }
  }

  v116 = MEMORY[0x277D84F90];
LABEL_29:
  v122 = v87;

  sub_22BD66C8C(v69);

  sub_22BD294B8(&v122);
  v70 = v88;

  v71 = v122;
  v72 = *(v122 + 16);
  if (v72)
  {
    v122 = MEMORY[0x277D84F90];
    sub_22BB6FF1C(0, v72, 0);
    v73 = v122;
    v74 = *(v70 + 80);
    v115 = v71;
    v75 = v71 + ((v74 + 32) & ~v74);
    v121 = *(v70 + 72);
    v76 = v18;
    v77 = (v19 + 32);
    v78 = v86;
    do
    {
      sub_22BC5E5C4();
      v79 = v118;
      sub_22BC8D26C();
      v80 = *v77;
      (*v77)(v78, &v79[*(v119 + 48)], v76);
      v122 = v73;
      v82 = *(v73 + 16);
      v81 = *(v73 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_22BB6FF1C(v81 > 1, v82 + 1, 1);
        v73 = v122;
      }

      *(v73 + 16) = v82 + 1;
      v80((v73 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v82), v78, v76);
      v75 += v121;
      --v72;
    }

    while (v72);
  }

  else
  {

    v73 = MEMORY[0x277D84F90];
  }

  v83 = v91;
  sub_22BD1FA4C();
  result = type metadata accessor for FeedbackLearning.FlowExpression(0);
  *(v83 + *(result + 20)) = v73;
  *(v83 + *(result + 24)) = v116;
  return result;
}

uint64_t sub_22BD222F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v7 = *a1;
  sub_22BD44B04();
  v9 = v8;
  sub_22BD66840();
  sub_22BD22374(a2, v7, v9, v10, x8_0);
}

uint64_t sub_22BD22374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v115 = a4;
  v113 = sub_22BDB81A4();
  v110 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_22BDB43E4();
  v109 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22BDB9564();
  v108 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_22BDB9B14();
  v107 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v128 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  MEMORY[0x28223BE20](v13 - 8);
  v124 = &v101 - v14;
  v129 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  v116 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v123 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v126 = *(v136 - 8);
  v16 = MEMORY[0x28223BE20](v136);
  v122 = (&v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v121 = (&v101 - v18);
  v130 = sub_22BDB9B54();
  v137 = *(v130 - 8);
  v19 = MEMORY[0x28223BE20](v130);
  v114 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v127 = &v101 - v21;
  v22 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22BDB4C34();
  v27 = MEMORY[0x28223BE20](v26);
  v134 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v101 - v30;
  MEMORY[0x28223BE20](v29);
  v34 = *(a2 + 16);
  if (v34)
  {
    v104 = a1;
    v105 = a5;
    v35 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v106 = a2;
    v36 = a2 + v35;
    v37 = &v101 - v32;
    v38 = v33;
    v39 = v36 + *(type metadata accessor for FeedbackLearning.FlowExpressionValue(0) + 20);
    v132 = *(v38 + 16);
    v133 = v38 + 16;
    (v132)(v31, v39, v26);
    v40 = *(v38 + 32);
    v102 = v37;
    v101 = v40;
    v40(v37, v31, v26);
    v131 = *(v23 + 72);
    v103 = v38 + 32;
    v41 = (v38 + 8);
    v42 = MEMORY[0x277D84F90];
    v135 = v26;
    do
    {
      sub_22BD1FA4C();
      v43 = v134;
      (v132)(v134, v25, v26);
      if (*(a3 + 16) && (sub_22BBDAE68(), (v45 & 1) != 0))
      {
        v46 = *(*(a3 + 56) + 8 * v44);
        v47 = *v41;

        v47(v43, v26);
      }

      else
      {
        (*v41)(v43, v26);
        v46 = MEMORY[0x277D84F90];
      }

      sub_22BD2EAAC();
      v48 = *(v46 + 16);
      v49 = *(v42 + 16);
      if (__OFADD__(v49, v48))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);

        __break(1u);
        return result;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v49 + v48 > *(v42 + 24) >> 1)
      {
        sub_22BD910B0();
        v42 = v50;
      }

      if (*(v46 + 16))
      {
        if ((*(v42 + 24) >> 1) - *(v42 + 16) < v48)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        if (v48)
        {
          v51 = *(v42 + 16);
          v52 = __OFADD__(v51, v48);
          v53 = v51 + v48;
          if (v52)
          {
            goto LABEL_50;
          }

          *(v42 + 16) = v53;
        }
      }

      else
      {

        if (v48)
        {
          goto LABEL_48;
        }
      }

      v36 += v131;
      --v34;
      v26 = v135;
    }

    while (v34);
    v138 = v42;

    sub_22BD66C8C(v54);

    sub_22BD294B8(&v138);

    v55 = v138;
    v56 = *(v138 + 16);
    v57 = v114;
    if (v56)
    {
      v138 = MEMORY[0x277D84F90];
      sub_22BB6FF1C(0, v56, 0);
      v58 = v138;
      v59 = v55 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
      v60 = *(v126 + 72);
      v133 = v55;
      v134 = v60;
      v61 = (v137 + 32);
      v62 = v130;
      do
      {
        sub_22BC5E5C4();
        v63 = v122;
        sub_22BC8D26C();
        v64 = *v61;
        (*v61)(v57, v63 + *(v136 + 48), v62);
        v138 = v58;
        v65 = v57;
        v67 = *(v58 + 16);
        v66 = *(v58 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_22BB6FF1C(v66 > 1, v67 + 1, 1);
          v62 = v130;
          v58 = v138;
        }

        *(v58 + 16) = v67 + 1;
        v64((v58 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v67), v65, v62);
        v59 += v134;
        --v56;
        v57 = v65;
      }

      while (v56);
    }

    else
    {

      v58 = MEMORY[0x277D84F90];
      v62 = v130;
    }

    v70 = *(v58 + 16);
    v72 = v127;
    v71 = v128;
    if (v70)
    {
      v73 = *(v137 + 16);
      v74 = v58 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
      v133 = *(v137 + 72);
      v134 = v73;
      v132 = (v107 + 88);
      LODWORD(v131) = *MEMORY[0x277D1E710];
      LODWORD(v115) = *MEMORY[0x277D1E7A0];
      v137 += 16;
      v126 = v137 - 8;
      v111 = (v107 + 8);
      v122 = (v107 + 96);
      v110 += 4;
      v121 = (v109 + 32);
      v114 = (v108 + 32);
      v136 = MEMORY[0x277D84F90];
      while (1)
      {
        (v134)(v72, v74, v62);
        v75 = v62;
        sub_22BDB9B24();
        v76 = v125;
        v77 = (*v132)(v71, v125);
        if (v77 == v131)
        {
          (*v122)(v71, v76);
          v78 = v71;
          v79 = v72;
          v80 = *v114;
          v81 = v117;
          v82 = v118;
          (*v114)(v117, v78, v118);
          v83 = v119;
          sub_22BDB8F24();
          (*v126)(v79, v75);
          v84 = v81;
          v85 = v124;
          v80(v124 + *(v129 + 20), v84, v82);
          v86 = v129;
          type metadata accessor for FeedbackLearning.ActionValue(0);
          swift_storeEnumTagMultiPayload();
          (*v121)(v85, v83, v120);
        }

        else
        {
          if (v77 != v115)
          {
            (*v126)(v72, v130);
            v93 = v124;
            v94 = v129;
            sub_22BB336D0(v124, 1, 1, v129);
            v95 = v71;
            v85 = v93;
            v86 = v94;
            (*v111)(v95, v76);
            goto LABEL_36;
          }

          (*v122)(v71, v76);
          v87 = v71;
          v88 = *v110;
          v89 = v112;
          v90 = v113;
          (*v110)(v112, v87, v113);
          v91 = v119;
          sub_22BDB8F24();
          (*v126)(v72, v130);
          v86 = v129;
          v92 = v89;
          v85 = v124;
          v88((v124 + *(v129 + 20)), v92, v90);
          type metadata accessor for FeedbackLearning.ActionValue(0);
          swift_storeEnumTagMultiPayload();
          (*v121)(v85, v91, v120);
        }

        sub_22BB336D0(v85, 0, 1, v86);
LABEL_36:
        if (sub_22BB3AA28(v85, 1, v86) == 1)
        {
          sub_22BB58728(v85, &qword_27D8E4328, &unk_22BDCC070);
        }

        else
        {
          sub_22BD2EB00();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BD9117C();
            v136 = v97;
          }

          v96 = *(v136 + 16);
          if (v96 >= *(v136 + 24) >> 1)
          {
            sub_22BD9117C();
            v136 = v98;
          }

          *(v136 + 16) = v96 + 1;
          sub_22BD2EB00();
        }

        v72 = v127;
        v71 = v128;
        v62 = v130;
        v74 += v133;
        if (!--v70)
        {
          goto LABEL_46;
        }
      }
    }

    v136 = MEMORY[0x277D84F90];
LABEL_46:
    v99 = v105;
    sub_22BD1FA4C();
    v100 = type metadata accessor for FeedbackLearning.FlowTask(0);
    v101(v99 + v100[5], v102, v135);
    *(v99 + v100[6]) = v106;
    *(v99 + v100[7]) = v58;
    *(v99 + v100[8]) = v136;
    sub_22BB336D0(v99, 0, 1, v100);
  }

  else
  {
    v68 = type metadata accessor for FeedbackLearning.FlowTask(0);

    return sub_22BB336D0(a5, 1, 1, v68);
  }
}

uint64_t sub_22BD2329C(uint64_t a1, uint64_t a2)
{
  v65 = sub_22BBE6DE0(&qword_27D8E60F0, &qword_22BDCD648);
  v4 = *(v65 - 8);
  v5 = MEMORY[0x28223BE20](v65);
  v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v63 = &v55 - v8;
  MEMORY[0x28223BE20](v7);
  v62 = &v55 - v9;
  v10 = sub_22BBE6DE0(&qword_27D8E6100, &qword_22BDCD658);
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x28223BE20](v10);
  v57 = &v55 - v11;
  v68 = sub_22BBE6DE0(&qword_27D8E6108, &unk_22BDCD660);
  MEMORY[0x28223BE20](v68);
  v13 = &v55 - v12;
  v58 = a1;
  v14 = sub_22BDB9914();
  v15 = *(v14 + 16);
  if (v15)
  {
    v56 = v4;
    v59 = a2;
    v71 = MEMORY[0x277D84F90];
    sub_22BD285C8(0, v15, 0);
    v16 = v71;
    v67 = sub_22BDB89F4();
    v17 = *(v67 - 8);
    v66 = *(v17 + 16);
    v18 = *(v17 + 80);
    v55 = v14;
    v19 = v14 + ((v18 + 32) & ~v18);
    v20 = *(v17 + 72);
    do
    {
      v66(&v13[*(v68 + 48)], v19, v67);
      sub_22BDB8174();
      v71 = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22BD285C8(v21 > 1, v22 + 1, 1);
        v16 = v71;
      }

      *(v16 + 16) = v22 + 1;
      sub_22BC8D26C();
      v19 += v20;
      --v15;
    }

    while (v15);

    a2 = v59;
    v4 = v56;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v23 = v57;
  if (*(v16 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E6110, &unk_22BDCE620);
    v24 = sub_22BDBB524();
  }

  else
  {
    v24 = MEMORY[0x277D84F98];
  }

  v71 = v24;
  v25 = 0;
  sub_22BD2E59C(v16, 1, &v71);
  v26 = v71;
  v27 = *(a2 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v55 = 0;
    v56 = v71;
    v71 = MEMORY[0x277D84F90];
    sub_22BD28588(0, v27, 0);
    v28 = v71;
    v29 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v59 = *(v4 + 72);
    do
    {
      v68 = v28;
      sub_22BC5E5C4();
      v66 = *(v61 + 48);
      v30 = v63;
      sub_22BC5E5C4();
      v31 = v65;
      v67 = *(v65 + 48);
      v32 = sub_22BDB4C34();
      v33 = *(v32 - 8);
      (*(v33 + 32))(v23, v30, v32);
      v34 = v64;
      sub_22BC8D26C();
      (*(v33 + 16))(v66 + v23, &v34[*(v31 + 48)], v32);
      sub_22BD2EAAC();
      (*(v33 + 8))(v34, v32);
      v28 = v68;
      sub_22BD2EAAC();
      v71 = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22BD28588(v35 > 1, v36 + 1, 1);
        v28 = v71;
      }

      *(v28 + 16) = v36 + 1;
      sub_22BC8D26C();
      v29 += v59;
      --v27;
    }

    while (v27);
    v25 = v55;
    v26 = v56;
  }

  if (*(v28 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E6118, &qword_22BDCD670);
    v37 = sub_22BDBB524();
  }

  else
  {
    v37 = MEMORY[0x277D84F98];
  }

  v71 = v37;
  sub_22BD2E15C(v28, 1, &v71);
  v38 = v71;
  if (v25)
  {
LABEL_37:

    __break(1u);
  }

  else
  {
    v71 = MEMORY[0x277D84FA0];
    v39 = sub_22BDB9914();

    sub_22BD1CF68(v39, &v71, v26);
    v41 = v40;

    v42 = *(v41 + 16);
    v43 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F90];
    if (v42)
    {
      while (v42 <= *(v41 + 16))
      {
        v70 = *(v41 + 8 * v42 + 24);

        sub_22BD264F0(&v70, v38, &v69);

        v45 = v69;
        if (v69)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BD91244();
            v44 = v47;
          }

          v46 = *(v44 + 16);
          if (v46 >= *(v44 + 24) >> 1)
          {
            sub_22BD91244();
            v44 = v48;
          }

          *(v44 + 16) = v46 + 1;
          *(v44 + 8 * v46 + 32) = v45;
        }

        if (!--v42)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_30:

      v49 = 0;
      v70 = v43;
      v50 = *(v44 + 16);
      while (v50 != v49)
      {
        if (v49 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_37;
        }

        v51 = v49 + 1;

        sub_22BD66C08(v52);
        v49 = v51;
      }
    }

    v53 = v70;

    return v53;
  }

  return result;
}

uint64_t sub_22BD23A50@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22BDB4C34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BBE6DE0(&qword_27D8E60F0, &qword_22BDCD648);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_22BC5E5C4();
  (*(v4 + 16))(v6, &v9[*(v7 + 48)], v3);
  sub_22BD2EAAC();
  v10 = sub_22BDB4C04();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if ((v10 & 1) == 0)
  {
    return sub_22BB336D0(a2, 1, 1, v3);
  }

  sub_22BC5E5C4();
  (*(v4 + 32))(a2, v9, v3);
  sub_22BB336D0(a2, 0, 1, v3);
  return sub_22BD2EAAC();
}

void *sub_22BD23C8C@<X0>(void (**a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v149 = a3;
  v150 = a1;
  v117 = a4;
  v5 = sub_22BBE6DE0(&qword_27D8E6120, &unk_22BDCD678);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v116 - v6);
  v127 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  MEMORY[0x28223BE20](v127);
  v119 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BBE6DE0(&qword_27D8E60E8, &qword_22BDCD640);
  MEMORY[0x28223BE20](v9 - 8);
  v126 = &v116 - v10;
  v125 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v118 = *(v125 - 8);
  v11 = MEMORY[0x28223BE20](v125);
  v124 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v123 = &v116 - v13;
  v14 = sub_22BBE6DE0(&qword_27D8E3F38, &unk_22BDC1590);
  MEMORY[0x28223BE20](v14 - 8);
  v128 = &v116 - v15;
  v148 = sub_22BDB89F4();
  v130 = *(v148 - 8);
  v16 = MEMORY[0x28223BE20](v148);
  v137 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v145 = &v116 - v19;
  MEMORY[0x28223BE20](v18);
  v136 = &v116 - v20;
  v129 = sub_22BDB80F4();
  v21 = *(v129 - 8);
  v22 = MEMORY[0x28223BE20](v129);
  v122 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v133 = &v116 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v116 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v116 - v29;
  v31 = sub_22BDB4C34();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v138 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v134 = &v116 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v153 = &v116 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v116 - v39;
  v139 = a2;

  sub_22BDB8174();
  sub_22BBBCB1C();
  LOBYTE(a2) = v41;

  v151 = v32;
  v42 = v32 + 8;
  v155 = *(v32 + 8);
  result = v155(v40, v31);
  if ((a2 & 1) == 0 && ((sub_22BDB89D4(), v44 = v28, v45 = v30, v46 = v129, (*(v21 + 32))(v28, v45, v129), v47 = (*(v21 + 88))(v28, v46), LODWORD(v147) = *MEMORY[0x277D1DA78], v154 = v42, v48 = *MEMORY[0x277D1DAD0], v152 = v40, v49 = *MEMORY[0x277D1DA48], v50 = *MEMORY[0x277D1DAE8], v52 = *(v21 + 8), v51 = v21 + 8, v132 = v52, result = (v52)(v44, v46), v47 != v147) ? (v53 = v47 == v48) : (v53 = 1), !v53 ? (v54 = v47 == v49) : (v54 = 1), !v54 ? (v55 = v47 == v50) : (v55 = 1), v56 = v128, v55))
  {
    v57 = v150;
    v131 = v51;
    result = sub_22BDB6004();
    v157 = *result;
    v58 = v157;
    v156 = MEMORY[0x277D84FA0];
    v59 = v157[3];
    v60 = v59 + 1;
    if (!__OFADD__(v59, 1))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v58[2] < v60 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BD5DE58(isUniquelyReferenced_nonNull_native, v60, 0);
        v58 = v157;
      }

      v62 = (*(v130 + 80) + 40) & ~*(v130 + 80);
      v147 = v58;
      v142 = v62;
      v63 = v146;
      sub_22BD5E348(v58 + 2, v58 + v62, v57);
      v146 = v63;
      sub_22BDB8174();
      v64 = v152;
      sub_22BBB97EC();
      v65 = v155;
      v155(v64, v31);
      sub_22BDB8174();
      sub_22BBB97EC();
      v65(v64, v31);
      v144 = v130 + 32;
      v150 = (v151 + 16);
      v135 = (v130 + 16);
      v141 = (v130 + 8);
      v121 = MEMORY[0x277D84F90];
      v120 = v7;
      v66 = v138;
      while (1)
      {
        if (v147[3] < 1)
        {
          sub_22BB336D0(v56, 1, 1, v148);

          sub_22BB58728(v56, &qword_27D8E3F38, &unk_22BDC1590);
          v115 = sub_22BD2631C(v121);

          *v117 = v115;
          return result;
        }

        v67 = v157;
        v68 = swift_isUniquelyReferenced_nonNull_native();
        if ((v68 & 1) == 0)
        {
          sub_22BD5E414(v68);
          v67 = v157;
        }

        v147 = v67;
        v69 = v67[4];
        v140 = *(v130 + 72);
        v143 = *(v130 + 32);
        result = v143(v56, v67 + v142 + v140 * v69, v148);
        v70 = v147;
        v71 = v147[4];
        v72 = __OFADD__(v71, 1);
        v73 = v71 + 1;
        if (v72)
        {
          break;
        }

        v74 = v147[3];
        if (v73 >= v147[2])
        {
          v73 = 0;
        }

        v147[4] = v73;
        if (__OFSUB__(v74, 1))
        {
          goto LABEL_55;
        }

        v70[3] = v74 - 1;
        v75 = v148;
        sub_22BB336D0(v56, 0, 1, v148);
        v143(v136, v56, v75);
        sub_22BDB8174();
        v76 = v133;
        sub_22BDB89D4();
        sub_22BD26DE0(v76, v7);
        if (sub_22BB3AA28(v7, 1, v127) == 1)
        {
          sub_22BB58728(v7, &qword_27D8E6120, &unk_22BDCD678);
          v77 = 1;
          v78 = v126;
          v79 = v125;
        }

        else
        {
          sub_22BD2EB00();
          v79 = v125;
          v80 = *(v125 + 20);
          v81 = *v150;
          v78 = v126;
          (*v150)(&v126[v80], v134, v31);
          sub_22BD2EB00();
          v81(v78, (v78 + v80), v31);
          v77 = 0;
        }

        v82 = v129;
        sub_22BB336D0(v78, v77, 1, v79);
        v132(v133, v82);
        v155(v134, v31);
        if (sub_22BB3AA28(v78, 1, v79) == 1)
        {
          sub_22BB58728(v78, &qword_27D8E60E8, &qword_22BDCD640);
        }

        else
        {
          sub_22BD2EB00();
          sub_22BD1FA4C();
          v83 = v121;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BBD948C();
            v83 = v113;
          }

          v84 = *(v83 + 16);
          if (v84 >= *(v83 + 24) >> 1)
          {
            sub_22BBD948C();
            v83 = v114;
          }

          sub_22BD2EAAC();
          *(v83 + 16) = v84 + 1;
          v121 = v83;
          sub_22BD2EB00();
        }

        v85 = v122;
        sub_22BDB89D4();
        sub_22BD24AC4();
        v87 = v86;
        result = (v132)(v85, v82);
        v88 = *(v87 + 16);
        if (v88)
        {
          v89 = 0;
          v90 = v87 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          while (v89 < *(v87 + 16))
          {
            v91 = *(v151 + 16);
            v91(v66, v90 + *(v151 + 72) * v89, v31);
            v91(v153, v66, v31);
            v92 = v152;
            sub_22BBB97EC();
            LOBYTE(v91) = v93;
            v94 = v92;
            v95 = v66;
            v96 = v155;
            v155(v94, v31);
            if (v91)
            {
              v97 = v149;
              v66 = v95;
              if (*(v149 + 16) && (sub_22BBDAE68(), (v99 & 1) != 0))
              {
                v100 = *(v97 + 56) + v98 * v140;
                v101 = v137;
                v102 = v148;
                (*v135)(v137, v100, v148);
                result = v143(v145, v101, v102);
                v103 = v147[3];
                v104 = v103 + 1;
                if (__OFADD__(v103, 1))
                {
                  goto LABEL_53;
                }

                v105 = v157;
                v106 = swift_isUniquelyReferenced_nonNull_native();
                if (v105[2] < v104 || (v106 & 1) == 0)
                {
                  sub_22BD5DE58(v106, v104, 0);
                  v105 = v157;
                }

                v147 = v105;
                v108 = v145;
                v107 = v146;
                sub_22BD5E348(v105 + 2, v105 + v142, v145);
                v146 = v107;
                sub_22BDB8174();
                v109 = v152;
                sub_22BBB97EC();
                v110 = v109;
                v111 = v155;
                v155(v110, v31);
                v112 = v138;
                v111(v138, v31);
                v66 = v112;
                result = (*v141)(v108, v148);
              }

              else
              {
                result = v155(v95, v31);
              }
            }

            else
            {
              result = v96(v95, v31);
              v66 = v95;
            }

            if (v88 == ++v89)
            {
              goto LABEL_49;
            }
          }

          __break(1u);
LABEL_53:
          __break(1u);
          break;
        }

LABEL_49:

        (*v141)(v136, v148);
        v7 = v120;
        v56 = v128;
      }

      __break(1u);
LABEL_55:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    *v117 = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22BD24AC4()
{
  sub_22BB30F94();
  v303 = v2;
  v254 = sub_22BDB8984();
  sub_22BB30444();
  v253 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BB305A8();
  sub_22BB30B8C(v5);
  v256 = sub_22BDB8BA4();
  sub_22BB30444();
  v255 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  sub_22BB30B8C(v8);
  v258 = sub_22BDB8554();
  sub_22BB30444();
  v257 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  sub_22BB30B8C(v11);
  v260 = sub_22BDB8964();
  sub_22BB30444();
  v259 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BB305A8();
  sub_22BB30B8C(v14);
  v263 = sub_22BDB8B14();
  sub_22BB30444();
  v262 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22BB305A8();
  v261 = v17;
  v18 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v19 = sub_22BB2F0C8(v18);
  MEMORY[0x28223BE20](v19);
  sub_22BB30560();
  v265 = v20;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v21);
  sub_22BB2F39C();
  sub_22BB30B8C(v22);
  v269 = sub_22BDB86B4();
  sub_22BB30444();
  v267 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22BB305A8();
  sub_22BB30B8C(v25);
  v271 = sub_22BDB8BC4();
  sub_22BB30444();
  v270 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22BB305A8();
  sub_22BB30B8C(v28);
  v273 = sub_22BDB92E4();
  sub_22BB30444();
  v272 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22BB305A8();
  sub_22BB30B8C(v31);
  v275 = sub_22BDB8B84();
  sub_22BB30444();
  v274 = v32;
  MEMORY[0x28223BE20](v33);
  sub_22BB305A8();
  sub_22BB30B8C(v34);
  v277 = sub_22BDB8584();
  sub_22BB30444();
  v276 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22BB305A8();
  sub_22BB30B8C(v37);
  v279 = sub_22BDB8474();
  sub_22BB30444();
  v278 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22BB305A8();
  sub_22BB30B8C(v40);
  v281 = sub_22BDB84D4();
  sub_22BB30444();
  v280 = v41;
  MEMORY[0x28223BE20](v42);
  sub_22BB305A8();
  sub_22BB30B8C(v43);
  v299 = sub_22BDB9324();
  sub_22BB30444();
  v283 = v44;
  MEMORY[0x28223BE20](v45);
  sub_22BB305A8();
  v298 = v46;
  sub_22BB2F120();
  sub_22BDB9354();
  sub_22BB30444();
  v290 = v48;
  v291 = v47;
  MEMORY[0x28223BE20](v47);
  sub_22BB305A8();
  v289 = v49;
  sub_22BB2F120();
  sub_22BDB8724();
  sub_22BB30444();
  v287 = v51;
  v288 = v50;
  MEMORY[0x28223BE20](v50);
  sub_22BB305A8();
  v286 = v52;
  sub_22BB2F120();
  sub_22BDB8754();
  sub_22BB30444();
  v293 = v54;
  v294 = v53;
  MEMORY[0x28223BE20](v53);
  sub_22BB305A8();
  v292 = v55;
  sub_22BB2F120();
  sub_22BDB89C4();
  sub_22BB30444();
  v295 = v57;
  v296 = v56;
  MEMORY[0x28223BE20](v56);
  sub_22BB30574();
  sub_22BB3A434();
  sub_22BDB4C34();
  sub_22BB30444();
  v301 = v59;
  v302 = v58;
  MEMORY[0x28223BE20](v58);
  sub_22BB30560();
  v282 = v60;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v61);
  sub_22BB2F39C();
  v297 = v62;
  sub_22BB2F120();
  v63 = sub_22BDB80F4();
  sub_22BB30444();
  v65 = v64;
  MEMORY[0x28223BE20](v66);
  sub_22BB30560();
  v264 = v67;
  sub_22BB30B70();
  v69 = MEMORY[0x28223BE20](v68);
  v71 = &v252 - v70;
  v72 = MEMORY[0x28223BE20](v69);
  v74 = &v252 - v73;
  MEMORY[0x28223BE20](v72);
  sub_22BB3FBEC();
  MEMORY[0x28223BE20](v75);
  sub_22BB2F384();
  v300 = v76;
  sub_22BB30B70();
  v78 = MEMORY[0x28223BE20](v77);
  v80 = &v252 - v79;
  MEMORY[0x28223BE20](v78);
  v82 = &v252 - v81;
  v83 = *(v65 + 16);
  (v83)(&v252 - v81, v303, v63);
  v84 = (*(v65 + 88))(v82, v63);
  if (v84 == *MEMORY[0x277D1DAA8])
  {
    v85 = sub_22BB32E04();
    (v83)(v85);
    (*(v65 + 96))(v80, v63);
    sub_22BDB8944();
    sub_22BB314BC();
    v86 = sub_22BB95B90();
    if (v87(v86) == *MEMORY[0x277D1DEE8])
    {
      v88 = sub_22BB95B90();
      v89(v88);
    }

    else
    {
      v98 = sub_22BB95B90();
      v99(v98);
    }

    goto LABEL_4;
  }

  v90 = v83;
  v303 = v82;
  v284 = v63;
  v285 = v65;
  if (v84 == *MEMORY[0x277D1D9F8])
  {
    v91 = v300;
    v80 = v303;
    v71 = v284;
    (v83)(v300, v303, v284);
    v83 = v285;
    v92 = sub_22BB345A8();
    v93(v92);
    v94 = v302;
    v95 = *(v301 + 32);
    v96 = v297;
    v95(v297, v91, v302);
    sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v97 = sub_22BB36904();
    *(v97 + 16) = xmmword_22BDBCBD0;
    v95(v97 + v91, v96, v94);
LABEL_12:
    (*(v83 + 8))(v80, v71);
    goto LABEL_13;
  }

  if (v84 == *MEMORY[0x277D1DAC0])
  {
    v100 = sub_22BB343A8();
    v101(v100);
    v102 = sub_22BB37DC4();
    v103(v102);
    v104 = sub_22BB2F324();
    v105(v104);
    v106 = sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v107 = sub_22BB311CC(v106);
    sub_22BB36C14(v107, xmmword_22BDBCBD0);
    sub_22BDB89B4();
LABEL_11:
    v108 = sub_22BB313A8();
    v109(v108);
    goto LABEL_12;
  }

  if (v84 == *MEMORY[0x277D1DAA0])
  {
    v110 = v284;
    (v83)(v300, v303, v284);
    v111 = sub_22BD2F7B0();
    v112(v111, v110);
    v113 = v292;
    v114 = v293;
    sub_22BB51840();
    v115 = sub_22BB2F324();
    v116 = v294;
    v117(v115);
    v118 = sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    *(sub_22BB31598(v118) + 16) = xmmword_22BDBCBC0;
    sub_22BDB8734();
    sub_22BDB8744();
    (*(v114 + 8))(v113, v116);
    v119 = sub_22BB31528();
LABEL_18:
    v121(v119, v120);
    goto LABEL_13;
  }

  v63 = v284;
  if (v84 == *MEMORY[0x277D1DA98])
  {
    v122 = v303;
    (v83)(v300, v303, v284);
    v123 = sub_22BD2F7B0();
    v124(v123, v63);
    v125 = sub_22BB2F324();
    v126(v125);
    v127 = sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    *(sub_22BB31598(v127) + 16) = xmmword_22BDBCBC0;
    MEMORY[0x2318A26D0]();
    sub_22BDB8714();
    v128 = sub_22BB313A8();
    v129(v128);
    v121 = *(v71 + 1);
    v119 = v122;
    v120 = v63;
    goto LABEL_18;
  }

  v65 = v285;
  if (v84 == *MEMORY[0x277D1DA50])
  {
    (v83)(v1, v303, v284);
    (*(v65 + 96))(v1, v63);
    v130 = sub_22BB2F3F0();
    v131(v130);
    sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v132 = v301;
    v133 = (*(v301 + 80) + 32) & ~*(v301 + 80);
    v300 = *(v301 + 72);
    v134 = swift_allocObject();
    *(v134 + 16) = xmmword_22BDBCBD0;
    v297 = v133;
    MEMORY[0x2318A3300]();
    v135 = sub_22BDB9344();
    v136 = *(v135 + 16);
    if (v136)
    {
      v294 = v134;
      v304 = MEMORY[0x277D84F90];
      sub_22BD27F28();
      v137 = v304;
      sub_22BB2F390();
      v293 = v135;
      v139 = v135 + v138;
      v295 = *(v140 + 56);
      v296 = v141;
      v142 = (v140 - 8);
      v143 = (v132 + 32);
      v144 = v282;
      do
      {
        v145 = v298;
        v146 = v299;
        v147 = sub_22BB313A8();
        v296(v147);
        sub_22BDB9314();
        (*v142)(v145, v146);
        v304 = v137;
        v149 = *(v137 + 16);
        v148 = *(v137 + 24);
        if (v149 >= v148 >> 1)
        {
          sub_22BB2F158(v148);
          sub_22BD27F28();
          v137 = v304;
        }

        *(v137 + 16) = v149 + 1;
        (*v143)(v137 + v297 + v149 * v300, v144, v302);
        v139 += v295;
        --v136;
      }

      while (v136);

      v65 = v285;
      v63 = v284;
      v134 = v294;
    }

    else
    {

      v137 = MEMORY[0x277D84F90];
    }

    v304 = v134;
    sub_22BBB22A0(v137);
    (*(v290 + 8))(v289, v291);
    (*(v65 + 8))(v303, v63);
    goto LABEL_13;
  }

  if (v84 == *MEMORY[0x277D1DA78])
  {
    v150 = v303;
    v90(v74, v303, v284);
    v151 = sub_22BB38184();
    v152(v151);
    v153 = sub_22BB69B24();
    v154(v153);
    v155 = sub_22BDB84C4();
    v304 = sub_22BDA24FC(v155);

    sub_22BD2954C();

    v156 = sub_22BB345A8();
    v157(v156);
    (*(v65 + 8))(v150, v63);
    goto LABEL_13;
  }

  v82 = v303;
  if (v84 == *MEMORY[0x277D1DA70])
  {
    v158 = sub_22BB38760();
    v159(v158);
    v160 = sub_22BB38184();
    v161(v160);
    v162 = sub_22BB69B24();
    v164 = v163(v162);
    MEMORY[0x2318A2430](v164);
    v165 = sub_22BB2F324();
    v166(v165);
LABEL_4:
    (*(v65 + 8))(v82, v63);
    goto LABEL_13;
  }

  if (v84 == *MEMORY[0x277D1DA88])
  {
    v167 = sub_22BB38760();
    v168(v167);
    v169 = sub_22BB38184();
    v170(v169);
    sub_22BB92288();
    sub_22BB69B24();
    sub_22BB52808();
    v171();
    v172 = sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v173 = sub_22BB311CC(v172);
    v174 = sub_22BB36C14(v173, xmmword_22BDBCBD0);
    MEMORY[0x2318A2530](v174);
LABEL_36:
    v183 = sub_22BB53C48();
    v184(v183);
    goto LABEL_4;
  }

  if (v84 == *MEMORY[0x277D1DAD8])
  {
    v175 = sub_22BB38760();
    v176(v175);
    v177 = sub_22BB38184();
    v178(v177);
    sub_22BB92288();
    sub_22BB69B24();
    sub_22BB52808();
    v179();
    v180 = sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v181 = sub_22BB311CC(v180);
    v182 = sub_22BB36C14(v181, xmmword_22BDBCBD0);
    MEMORY[0x2318A2B40](v182);
    goto LABEL_36;
  }

  if (v84 == *MEMORY[0x277D1DAD0])
  {
    goto LABEL_4;
  }

  if (v84 == *MEMORY[0x277D1DA48])
  {
    (v83)(v71, v303, v284);
    (*(v65 + 96))(v71, v63);
    sub_22BB35F34();
    sub_22BB52808();
    v186 = v185();
    v187 = MEMORY[0x2318A32A0](v186);
    v304 = sub_22BDA24FC(v187);

    sub_22BD2954C();

    v188 = sub_22BB53C48();
    v189(v188);
    goto LABEL_4;
  }

  if (v84 == *MEMORY[0x277D1DAE8])
  {
    v190 = sub_22BB38760();
    v191(v190);
    v192 = sub_22BB38184();
    v193(v192);
    sub_22BB92288();
    sub_22BB69B24();
    sub_22BB52808();
    v194();
    v195 = sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v196 = sub_22BB311CC(v195);
    v197 = sub_22BB36C14(v196, xmmword_22BDBCBD0);
    MEMORY[0x2318A2B80](v197);
    goto LABEL_36;
  }

  if (v84 == *MEMORY[0x277D1D9F0])
  {
    goto LABEL_4;
  }

  if (v84 != *MEMORY[0x277D1DA90])
  {
    if (v84 == *MEMORY[0x277D1DAC8])
    {
      v203 = sub_22BB343A8();
      v204(v203);
      v205 = sub_22BB37DC4();
      v206(v205);
      sub_22BB37A30();
      v207 = sub_22BB69B24();
      v208(v207);
      v209 = sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
      v210 = sub_22BB311CC(v209);
      v211 = sub_22BB36C14(v210, xmmword_22BDBCBD0);
      MEMORY[0x2318A2AD0](v211);
      goto LABEL_11;
    }

    if (v84 == *MEMORY[0x277D1DAB0])
    {
      v216 = sub_22BB343A8();
      v217(v216);
      v218 = sub_22BB37DC4();
      v219(v218);
      sub_22BB37A30();
      v220 = sub_22BB69B24();
      v221(v220);
      v222 = sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
      v223 = sub_22BB311CC(v222);
      v224 = sub_22BB36C14(v223, xmmword_22BDBCBD0);
      MEMORY[0x2318A2920](v224);
      goto LABEL_11;
    }

    if (v84 == *MEMORY[0x277D1DA80])
    {
      v225 = sub_22BB343A8();
      v226(v225);
      v227 = sub_22BB37DC4();
      v228(v227);
      sub_22BB37A30();
      v229 = sub_22BB69B24();
      v230(v229);
      v231 = sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
      v232 = sub_22BB311CC(v231);
      v233 = sub_22BB36C14(v232, xmmword_22BDBCBD0);
      MEMORY[0x2318A2510](v233);
      goto LABEL_11;
    }

    if (v84 == *MEMORY[0x277D1DAE0])
    {
      v234 = sub_22BB33268();
      v235(v234);
      v236 = sub_22BB586C0();
      v237(v236);
      v238 = v255;
      sub_22BB379C8();
      v239 = sub_22BB35F34();
      v240 = v256;
      v242 = v241(v239, v1, v256);
      MEMORY[0x2318A2B60](v242);
    }

    else
    {
      if (v84 != *MEMORY[0x277D1DAB8])
      {
        v65 = v285;
        v63 = v284;
        v82 = v303;
        goto LABEL_4;
      }

      v243 = sub_22BB33268();
      v244(v243);
      v245 = sub_22BB586C0();
      v246(v245);
      v238 = v253;
      sub_22BB379C8();
      v247 = sub_22BB35F34();
      v240 = v254;
      v249 = v248(v247, v1, v254);
      MEMORY[0x2318A2940](v249);
    }

    (*(v238 + 8))(v0, v240);
    v250 = sub_22BB3AAD8();
    v251(v250);
    goto LABEL_13;
  }

  v198 = v264;
  v199 = v284;
  (v83)(v264, v303, v284);
  (*(v285 + 96))(v198, v199);
  v200 = sub_22BB35F34();
  v201(v200, v198, v269);
  sub_22BDB86A4();
  v202 = v265;
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v202, 1, v302) != 1)
  {
    v212 = v302;
    v213 = *(v301 + 32);
    v214 = v297;
    v213(v297, v265, v302);
    sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v215 = sub_22BB36904();
    *(v215 + 16) = xmmword_22BDBCBD0;
    v213(v215 + v0, v214, v212);
  }

  sub_22BB58728(v268, &qword_27D8E27C0, &qword_22BDBCDF0);
  (*(v267 + 8))(v266, v269);
  (*(v285 + 8))(v303, v284);
LABEL_13:
  sub_22BB314EC();
}

uint64_t sub_22BD2631C(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v16 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v17 = &v16 - v7;
  v8 = *(a1 + 16);
  if (v8 < 2)
  {
    return a1;
  }

  v9 = 0;
  v10 = v8 >> 1;
  for (i = v8 - 1; ; --i)
  {
    if (v9 == i)
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 16);
    if (v9 >= v12)
    {
      break;
    }

    v13 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v14 = *(v16 + 72);
    result = sub_22BD1FA4C();
    if (i >= v12)
    {
      goto LABEL_14;
    }

    sub_22BD1FA4C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BD7DEAC();
      a1 = v15;
    }

    result = sub_22BD2F6BC(v5, a1 + v13 + v14 * v9);
    if (i >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    result = sub_22BD2F6BC(v17, a1 + v13 + v14 * i);
LABEL_11:
    if (v10 == ++v9)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22BD264F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v37[1] = a2;
  v41 = a1;
  v3 = sub_22BDB4C34();
  v40 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v38 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37[0] = v37 - v6;
  v7 = sub_22BBE6DE0(&qword_27D8E60E8, &qword_22BDCD640);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v37 - v11;
  v13 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v37 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v37 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v37 - v24;
  v41 = *v41;
  sub_22BD39480(v41);
  if (sub_22BB3AA28(v12, 1, v13) == 1)
  {
    v26 = &qword_27D8E60E8;
    v27 = &qword_22BDCD640;
    v28 = v12;
    goto LABEL_5;
  }

  sub_22BD2EB00();
  sub_22BD811C0();
  sub_22BD2EAAC();
  if (sub_22BB3AA28(v20, 1, v3) == 1)
  {
    v26 = &qword_27D8E27C0;
    v27 = &qword_22BDBCDF0;
    v28 = v20;
LABEL_5:
    sub_22BB58728(v28, v26, v27);
    sub_22BD39480(v41);
    if (sub_22BB3AA28(v10, 1, v13) == 1)
    {
      sub_22BB58728(v10, &qword_27D8E60E8, &qword_22BDCD640);
      v29 = 1;
    }

    else
    {
      (*(v40 + 16))(v23, v10, v3);
      sub_22BD2EAAC();
      v29 = 0;
    }

    goto LABEL_9;
  }

  v30 = *(v40 + 32);
  v31 = v37[0];
  v30(v37[0], v20, v3);
  v30(v23, v31, v3);
  v29 = 0;
LABEL_9:
  sub_22BB336D0(v23, v29, 1, v3);
  sub_22BC8D26C();
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v17, 1, v3) == 1)
  {
    sub_22BB58728(v25, &qword_27D8E27C0, &qword_22BDBCDF0);
    result = sub_22BB58728(v17, &qword_27D8E27C0, &qword_22BDBCDF0);
    *v39 = 0;
  }

  else
  {
    v33 = v40;
    v34 = v38;
    v35 = (*(v40 + 32))(v38, v17, v3);
    MEMORY[0x28223BE20](v35);
    v37[-2] = v34;
    v36 = sub_22BD659A4(sub_22BD2F69C, &v37[-4], v41);
    sub_22BB58728(v25, &qword_27D8E27C0, &qword_22BDBCDF0);
    *v39 = v36;
    return (*(v33 + 8))(v34, v3);
  }

  return result;
}

uint64_t sub_22BD26A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB4C34();
  v7 = *(*(v6 - 8) + 16);
  v7(a3, a1, v6);
  v8 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v7(a3 + *(v8 + 20), a2, v6);
  return sub_22BD1FA4C();
}

uint64_t sub_22BD26AF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_22BDB4C34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB87F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB9B14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x277D1E798])
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    sub_22BDB8794();
    sub_22BBBCB1C();
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    if (v15)
    {
      v16 = v21;
      sub_22BDB8794();
      (*(v7 + 8))(v9, v6);
      v17 = v16;
      v18 = 0;
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v17 = v21;
      v18 = 1;
    }

    return sub_22BB336D0(v17, v18, 1, v2);
  }

  else
  {
    sub_22BB336D0(v21, 1, 1, v2);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_22BD26DE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22BDB8BC4();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB84D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB80F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277D1DA78])
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 32))(v10, v14, v7);
    v16 = sub_22BDB84C4();
    v25 = sub_22BDA24FC(v16);

    sub_22BD2954C();

    (*(v8 + 8))(v10, v7);
    *a2 = v25;
    v17 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  }

  else if (v15 == *MEMORY[0x277D1DAD0] || v15 == *MEMORY[0x277D1DA48])
  {
    (*(v12 + 8))(v14, v11);
    v17 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  }

  else
  {
    if (v15 != *MEMORY[0x277D1DAE8])
    {
      v22 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
      sub_22BB336D0(a2, 1, 1, v22);
      return (*(v12 + 8))(v14, v11);
    }

    (*(v12 + 96))(v14, v11);
    v19 = v24;
    v20 = (*(v24 + 32))(v6, v14, v4);
    MEMORY[0x2318A2B80](v20);
    (*(v19 + 8))(v6, v4);
    v17 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  }

  swift_storeEnumTagMultiPayload();
  return sub_22BB336D0(a2, 0, 1, v17);
}

uint64_t sub_22BD271CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3EA0, &qword_22BDC1370);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  sub_22BCB5EE0();
  v5 = sub_22BDB5B14();
  if (sub_22BB3AA28(v4, 1, v5) == 1)
  {
    sub_22BB58728(v4, &qword_27D8E3EA0, &qword_22BDC1370);
    v6 = 1;
  }

  else
  {
    sub_22BDB5AE4();
    (*(*(v5 - 8) + 8))(v4, v5);
    v6 = 0;
  }

  v7 = sub_22BDB4C34();
  return sub_22BB336D0(a1, v6, 1, v7);
}

void sub_22BD27320(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_22BB35F54();
  if (v9 < v8 || (a4(0), sub_22BB2F330(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    sub_22BB391C0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_22BB391C0();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_22BD27424(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_22BB308A8(a3, result);
  }

  return result;
}

char *sub_22BD2752C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_22BB308A8(a3, result);
  }

  return result;
}

char *sub_22BD278BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_22BB308A8(a3, result);
  }

  return result;
}

void sub_22BD278F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_22BB35F54();
  if (v7 < v6 || (v8 = sub_22BB3AAD8(), sub_22BBE6DE0(v8, v9), sub_22BB2F330(), v4 + *(v10 + 72) * v3 <= a3))
  {
    v11 = sub_22BB3AAD8();
    sub_22BBE6DE0(v11, v12);
    sub_22BB391C0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    sub_22BB391C0();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_22BD27A00(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_22BD27B30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BD28A58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BD27F28()
{
  sub_22BB3ABD8();
  sub_22BD2934C();
  *v0 = v1;
}

void sub_22BD27FC8()
{
  sub_22BB51890();
  sub_22BD2934C();
  *v0 = v1;
}

char *sub_22BD284B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BD28CD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22BD28608(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BD28DD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22BD28680(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BD28F10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22BD286A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BD29040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22BD28808(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BD2924C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BD288FC()
{
  sub_22BB30F94();
  sub_22BB70C08();
  if (v6)
  {
    sub_22BB3665C();
    if (v8 != v9)
    {
      sub_22BB368F8();
      if (v8)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_22BB30DA4();
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = *(v0 + 16);
  if (v7 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (!v11)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_22BBE6DE0(v4, v5);
  v12 = sub_22BB37494();
  v14 = sub_22BBE6DE0(v12, v13);
  sub_22BB30434(v14);
  v16 = *(v15 + 72);
  v17 = sub_22BB351C0();
  v18 = j__malloc_size(v17);
  if (!v16)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18 - v2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_23;
  }

  v17[2] = v10;
  v17[3] = 2 * ((v18 - v2) / v16);
LABEL_18:
  v20 = sub_22BB37494();
  sub_22BBE6DE0(v20, v21);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    sub_22BD278F0(v0 + v22, v10, v17 + v22);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BBCC134();
  }

  sub_22BB314EC();
}

char *sub_22BD28A58(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BBE6DE0(&qword_27D8E5FE0, &unk_22BDCD508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_22BD28BB8(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_22BB3665C();
    if (v7 != v8)
    {
      sub_22BB368F8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BB30DA4();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_22BBE6DE0(&qword_27D8E2B48, &qword_22BDBD250);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_22BD28CD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BBE6DE0(&qword_27D8E61E8, &qword_22BDCD780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22BD28DD8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22BBE6DE0(&qword_27D8E6060, &qword_22BDCD590);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E6068, &qword_22BDCD598);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22BD28F10(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22BBE6DE0(&qword_27D8E6028, &qword_22BDCD558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E6030, &unk_22BDCD560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22BD29040(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BBE6DE0(&qword_27D8E5FF8, &qword_22BDCD528);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_22BD29148()
{
  sub_22BB70C08();
  if (v5)
  {
    sub_22BB3665C();
    if (v7 != v8)
    {
      sub_22BB368F8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BB30DA4();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_22BBE6DE0(v3, v4);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[v9 + 4] <= v11 + 4)
    {
      v14 = sub_22BB35464();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = sub_22BB37494();
    sub_22BBE6DE0(v17, v18);
    sub_22BB35464();
    swift_arrayInitWithCopy();
  }
}

char *sub_22BD2924C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BBE6DE0(&qword_27D8E6080, &qword_22BDCD5B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void sub_22BD2934C()
{
  sub_22BB30F94();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    sub_22BB3665C();
    if (v14 != v15)
    {
      sub_22BB368F8();
      if (v14)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_22BB30DA4();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_22BBE6DE0(v2, v3);
  v18 = v7(0);
  sub_22BB30434(v18);
  v20 = *(v19 + 72);
  v21 = sub_22BB351C0();
  v22 = j__malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v0 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v16;
  v21[3] = 2 * ((v22 - v0) / v20);
LABEL_18:
  v7(0);
  sub_22BB314BC();
  sub_22BB2F390();
  if (v11)
  {
    sub_22BD27320(v9 + v24, v16, v21 + v24, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    sub_22BBCC134();
  }

  sub_22BB314EC();
}

void sub_22BD294B8(uint64_t *a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  sub_22BB2F0C8(v2);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BDB1684(v3, v4, v5, v6);
    v3 = v7;
  }

  sub_22BB3B6C8();
  sub_22BD295D0(v8);
  *a1 = v3;
}

void sub_22BD2954C()
{
  sub_22BB35760();
  v1 = sub_22BDB4C34();
  sub_22BB2F0C8(v1);
  v2 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BDB169C(v2, v3, v4, v5);
    v2 = v6;
  }

  sub_22BB3B6C8();
  sub_22BD296CC(v7);
  *v0 = v2;
}

void sub_22BD295D0(uint64_t a1)
{
  if (sub_22BB3DE90(a1) < v2)
  {
    if (v2 >= -1)
    {
      sub_22BB71FF4();
      if (v4 ^ v5 | v3)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
        v6 = sub_22BDBADC4();
        *(v6 + 16) = v1;
      }

      v7 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
      sub_22BB2F0C8(v7);
      sub_22BB2F390();
      sub_22BB720AC();
      sub_22BD29C1C();
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
    sub_22BB8D25C();
    sub_22BD297B0();
  }
}

void sub_22BD296CC(uint64_t a1)
{
  if (sub_22BB3DE90(a1) < v2)
  {
    if (v2 >= -1)
    {
      sub_22BB71FF4();
      if (v4 ^ v5 | v3)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BDB4C34();
        v6 = sub_22BDBADC4();
        *(v6 + 16) = v1;
      }

      v7 = sub_22BDB4C34();
      sub_22BB2F0C8(v7);
      sub_22BB2F390();
      sub_22BB720AC();
      sub_22BD2A4E4();
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
    sub_22BB8D25C();
    sub_22BD299D8();
  }
}

void sub_22BD297B0()
{
  sub_22BB31014();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v35 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v25 - v11);
  MEMORY[0x28223BE20](v10);
  v15 = (&v25 - v14);
  v27 = v5;
  if (v3 != v5)
  {
    v16 = *v1;
    v17 = *(v13 + 72);
    v18 = *v1 + v17 * (v3 - 1);
    v32 = -v17;
    v33 = v16;
    v19 = v7 - v3;
    v26 = v17;
    v20 = v16 + v17 * v3;
    while (2)
    {
      v30 = v18;
      v31 = v3;
      v28 = v20;
      v29 = v19;
      v21 = v19;
      do
      {
        sub_22BD2F790();
        sub_22BC5E5C4();
        sub_22BD2F790();
        sub_22BC5E5C4();
        v22 = *v15;
        v23 = *v12;
        sub_22BB58728(v12, &qword_27D8E42E0, &unk_22BDD03F0);
        sub_22BB58728(v15, &qword_27D8E42E0, &unk_22BDD03F0);
        if (v22 >= v23)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        sub_22BD2F790();
        sub_22BC8D26C();
        swift_arrayInitWithTakeFrontToBack();
        sub_22BB3AAD8();
        sub_22BD2F790();
        sub_22BC8D26C();
        v18 += v32;
        v20 += v32;
      }

      while (!__CFADD__(v21++, 1));
      v3 = v31 + 1;
      v18 = v30 + v26;
      v19 = v29 - 1;
      v20 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }

  sub_22BB376A8();
}