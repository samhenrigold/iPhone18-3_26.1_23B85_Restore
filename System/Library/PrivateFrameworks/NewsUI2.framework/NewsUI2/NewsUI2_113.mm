uint64_t sub_2193832C8(void *a1)
{
  a1[1] = sub_219383518(&qword_27CC19460, type metadata accessor for SportsEventInfoTagFeedGroup, &unk_219C73D4C);
  a1[2] = sub_219383518(&qword_27CC1C760, type metadata accessor for SportsEventInfoTagFeedGroup, &unk_219C73DF8);
  result = sub_219383518(&qword_27CC1C870, type metadata accessor for SportsEventInfoTagFeedGroup, &unk_219C73DD0);
  a1[3] = result;
  return result;
}

uint64_t sub_219383374(uint64_t a1)
{
  v2 = sub_219383518(&qword_27CC19460, type metadata accessor for SportsEventInfoTagFeedGroup, &unk_219C73D4C);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_2193833FC()
{
  result = qword_27CC19470;
  if (!qword_27CC19470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19470);
  }

  return result;
}

uint64_t sub_219383450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventInfoTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2193834B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193833FC();
    v7 = a3(a1, &type metadata for SportsEventInfoTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219383518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219383574()
{
  result = qword_27CC19480;
  if (!qword_27CC19480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19480);
  }

  return result;
}

unint64_t sub_2193835CC()
{
  result = qword_27CC19488;
  if (!qword_27CC19488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19488);
  }

  return result;
}

unint64_t sub_219383624()
{
  result = qword_27CC19490;
  if (!qword_27CC19490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19490);
  }

  return result;
}

void sub_2193836E0(uint64_t a1)
{
  sub_2186E3374();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SearchResponse.SearchResultGroups(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2193837A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2193837FC(uint64_t a1)
{
  sub_219219310(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_219383890(uint64_t a1)
{
  sub_2186E3374();
  if (v1 <= 0x3F)
  {
    sub_21921898C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21938393C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchResponse(0);
  sub_219219310(0);
  result = sub_219BE21E4();
  v34 = *(result + 16);
  if (v34)
  {
    v32 = v4;
    v33 = a2;
    v8 = 0;
    v9 = 0x736C656E6E616843;
    v35 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v36 = result;
    v10 = a1;
    while (v8 < *(result + 16))
    {
      v11 = v37;
      sub_219385B98(v35 + *(v5 + 72) * v8, v37, type metadata accessor for SearchResponse.SearchResultsGroup);
      v12 = *v11;
      if (v12 > 3)
      {
        if (*v11 > 5u)
        {
          if (v12 == 6)
          {
            v17 = 0x6365526465766153;
            v18 = 0xEC00000073657069;
          }

          else
          {
            v18 = 0xE700000000000000;
            v17 = 0x6E776F6E6B6E75;
          }
        }

        else
        {
          if (v12 == 4)
          {
            v17 = 0x7374726F7053;
          }

          else
          {
            v17 = 0x73657069636552;
          }

          if (v12 == 4)
          {
            v18 = 0xE600000000000000;
          }

          else
          {
            v18 = 0xE700000000000000;
          }
        }
      }

      else
      {
        if (v12 == 2)
        {
          v13 = v9;
        }

        else
        {
          v13 = 0x736369706F54;
        }

        if (v12 == 2)
        {
          v14 = 0xE800000000000000;
        }

        else
        {
          v14 = 0xE600000000000000;
        }

        if (*v11)
        {
          v15 = 0x736569726F7453;
        }

        else
        {
          v15 = 0x6C75736552706F54;
        }

        if (*v11)
        {
          v16 = 0xE700000000000000;
        }

        else
        {
          v16 = 0xE900000000000074;
        }

        if (*v11 <= 1u)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }

        if (*v11 <= 1u)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }
      }

      ++v8;
      v19 = 0x6365526465766153;
      if (v10 != 6)
      {
        v19 = 0x6E776F6E6B6E75;
      }

      v20 = 0xEC00000073657069;
      if (v10 != 6)
      {
        v20 = 0xE700000000000000;
      }

      v21 = 0x73657069636552;
      if (v10 == 4)
      {
        v21 = 0x7374726F7053;
        v22 = 0xE600000000000000;
      }

      else
      {
        v22 = 0xE700000000000000;
      }

      if (v10 <= 5)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = v9;
      if (v10 == 2)
      {
        v24 = v9;
      }

      else
      {
        v24 = 0x736369706F54;
      }

      if (v10 == 2)
      {
        v25 = 0xE800000000000000;
      }

      else
      {
        v25 = 0xE600000000000000;
      }

      if (v10)
      {
        v26 = 0x736569726F7453;
      }

      else
      {
        v26 = 0x6C75736552706F54;
      }

      if (v10)
      {
        v27 = 0xE700000000000000;
      }

      else
      {
        v27 = 0xE900000000000074;
      }

      if (v10 <= 1)
      {
        v24 = v26;
        v25 = v27;
      }

      if (v10 <= 3)
      {
        v28 = v24;
      }

      else
      {
        v28 = v19;
      }

      if (v10 <= 3)
      {
        v29 = v25;
      }

      else
      {
        v29 = v20;
      }

      if (v17 == v28 && v18 == v29)
      {

LABEL_69:

        a2 = v33;
        sub_219385B30(v37, v33, type metadata accessor for SearchResponse.SearchResultsGroup);
        v31 = 0;
        v4 = v32;
        return (*(v5 + 56))(a2, v31, 1, v4);
      }

      v30 = sub_219BF78F4();

      if (v30)
      {
        goto LABEL_69;
      }

      sub_219385C00(v37, type metadata accessor for SearchResponse.SearchResultsGroup);
      v9 = v23;
      result = v36;
      if (v34 == v8)
      {

        v31 = 1;
        v4 = v32;
        a2 = v33;
        return (*(v5 + 56))(a2, v31, 1, v4);
      }
    }

    __break(1u);
  }

  else
  {

    v31 = 1;
    return (*(v5 + 56))(a2, v31, 1, v4);
  }

  return result;
}

uint64_t sub_219383D38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_219219310(0);
  v4 = v3;
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219385DB0(0, &qword_27CC19538, sub_219385D5C, &type metadata for SearchResponse.SearchResultGroups.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SearchResponse.SearchResultGroups(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219385D5C();
  v13 = v21;
  sub_219BF7B34();
  if (!v13)
  {
    v14 = v18;
    v15 = v19;
    sub_2193837A0(&qword_27CC19548, sub_219219310, MEMORY[0x277D6CB88]);
    sub_219BF7734();
    (*(v14 + 8))(v9, v7);
    (*(v15 + 32))(v12, v20, v4);
    sub_219385B30(v12, v17, type metadata accessor for SearchResponse.SearchResultGroups);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_219384030(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000219D19E80 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_2193840C4(uint64_t a1)
{
  v2 = sub_219385D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219384100(uint64_t a1)
{
  v2 = sub_219385D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219384154(void *a1)
{
  sub_219385DB0(0, &qword_27CC19550, sub_219385D5C, &type metadata for SearchResponse.SearchResultGroups.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219385D5C();
  sub_219BF7B44();
  sub_219219310(0);
  sub_2193837A0(&qword_27CC19558, sub_219219310, MEMORY[0x277D6CB80]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_219384328@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2193857F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_219384358(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x6C75736552706F54;
  v5 = 0xEC00000073657069;
  v6 = 0x6365526465766153;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7374726F7053;
  if (v2 != 4)
  {
    v8 = 0x73657069636552;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x736C656E6E616843;
  if (v2 != 2)
  {
    v10 = 0x736369706F54;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x736569726F7453;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_219384460()
{
  result = qword_27CC194C8;
  if (!qword_27CC194C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC194C8);
  }

  return result;
}

uint64_t sub_2193844C0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21938459C(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_219384664(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_21938473C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21938583C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21938476C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x444970756F7267;
  v4 = 0x8000000219CD8060;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x6552686372616573;
    v4 = 0xED000073746C7573;
  }

  if (*v1)
  {
    v3 = 0x72754370756F7267;
    v2 = 0xEB00000000726F73;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_219384804()
{
  v1 = 0x444970756F7267;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x6552686372616573;
  }

  if (*v0)
  {
    v1 = 0x72754370756F7267;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_219384898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21938583C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2193848C0(uint64_t a1)
{
  v2 = sub_219385C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193848FC(uint64_t a1)
{
  v2 = sub_219385C60();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_219384938(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x212uLL);
  v4 = sub_218CD47C0(__dst);
  if (v4 <= 2 || v4 == 4)
  {
    nullsub_1();
    v7 = *v5;
    v6 = v5[1];
  }

  else
  {
    nullsub_1();
    v7 = *v8;
    v6 = v8[1];
    memcpy(v9, __src, sizeof(v9));
    nullsub_1();
  }

  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_219384A48(void *a1)
{
  v3 = v1;
  sub_219385DB0(0, &qword_27CC19520, sub_219385C60, &type metadata for SearchResponse.SearchResultsGroup.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219385C60();
  sub_219BF7B44();
  v16 = *v3;
  v15 = 0;
  sub_219385D08();
  sub_219BF7834();
  if (!v2)
  {
    v14 = 1;
    sub_219BF7794();
    v13 = 2;
    sub_219BF7824();
    type metadata accessor for SearchResponse.SearchResultsGroup(0);
    v12 = 3;
    sub_21921898C(0);
    sub_2193837A0(&qword_27CC19530, sub_21921898C, MEMORY[0x277D6CB80]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_219384C8C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_21921898C(0);
  v23 = v3;
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v22 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219385DB0(0, &qword_27CC19500, sub_219385C60, &type metadata for SearchResponse.SearchResultsGroup.CodingKeys, MEMORY[0x277D844C8]);
  v24 = v5;
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for SearchResponse.SearchResultsGroup(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219385C60();
  v11 = v25;
  sub_219BF7B34();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v25 = v8;
    v12 = v10;
    v13 = v21;
    v14 = v22;
    v15 = v23;
    v29 = 0;
    sub_219385CB4();
    v16 = v24;
    sub_219BF7734();
    *v12 = v30;
    v28 = 1;
    *(v12 + 8) = sub_219BF7694();
    *(v12 + 16) = v17;
    v27 = 2;
    *(v12 + 24) = sub_219BF7724();
    v26 = 3;
    sub_2193837A0(&qword_27CC19518, sub_21921898C, MEMORY[0x277D6CB88]);
    sub_219BF7734();
    (*(v13 + 8))(v7, v16);
    (*(v19 + 32))(v12 + *(v25 + 28), v14, v15);
    sub_219385B98(v12, v20, type metadata accessor for SearchResponse.SearchResultsGroup);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_219385C00(v12, type metadata accessor for SearchResponse.SearchResultsGroup);
  }
}

uint64_t sub_219385068(void *a1)
{
  sub_219385DB0(0, &qword_27CC194F0, sub_219385ADC, &type metadata for SearchResponse.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219385ADC();
  sub_219BF7B44();
  v12 = 0;
  sub_219BF7794();
  if (!v1)
  {
    v11 = 1;
    sub_219BF7814();
    type metadata accessor for SearchResponse(0);
    v10 = 2;
    type metadata accessor for SearchResponse.SearchResultGroups(0);
    sub_2193837A0(&qword_27CC194F8, type metadata accessor for SearchResponse.SearchResultGroups, &unk_219C740A8);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_219385278(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = type metadata accessor for SearchResponse.SearchResultGroups(0);
  MEMORY[0x28223BE20](v20);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219385DB0(0, &qword_27CC194D8, sub_219385ADC, &type metadata for SearchResponse.CodingKeys, MEMORY[0x277D844C8]);
  v21 = v5;
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v16 - v6;
  v8 = type metadata accessor for SearchResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219385ADC();
  v11 = v22;
  sub_219BF7B34();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v17 = v8;
    v12 = v10;
    v22 = a1;
    v13 = v19;
    v25 = 0;
    *v12 = sub_219BF7694();
    v12[1] = v14;
    v16[1] = v14;
    v24 = 1;
    sub_219BF7714();
    v12[2] = v15;
    v23 = 2;
    sub_2193837A0(&qword_27CC194E8, type metadata accessor for SearchResponse.SearchResultGroups, &unk_219C740D0);
    sub_219BF7734();
    (*(v13 + 8))(v7, v21);
    sub_219385B30(v4, v12 + *(v17 + 24), type metadata accessor for SearchResponse.SearchResultGroups);
    sub_219385B98(v12, v18, type metadata accessor for SearchResponse);
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_219385C00(v12, type metadata accessor for SearchResponse);
  }
}

uint64_t sub_219385630()
{
  v1 = 0x656B6154656D6974;
  if (*v0 != 1)
  {
    v1 = 0x6552686372616573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t sub_2193856A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219385888(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2193856CC(uint64_t a1)
{
  v2 = sub_219385ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219385708(uint64_t a1)
{
  v2 = sub_219385ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219385774@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_2193859B4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_2193857F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21938583C(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219385888(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xEE00797265755164;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656B6154656D6974 && a2 == 0xE90000000000006ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6552686372616573 && a2 == 0xEC000000746C7573)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2193859B4(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF7B14();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v4 = sub_219BF7904();
    v7 = sub_2193857F0(v4, v6);
    if (v7 == 8)
    {
      v3 = 7;
    }

    else
    {
      v3 = v7;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t sub_219385A88()
{
  result = qword_27CC194D0;
  if (!qword_27CC194D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC194D0);
  }

  return result;
}

unint64_t sub_219385ADC()
{
  result = qword_27CC194E0;
  if (!qword_27CC194E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC194E0);
  }

  return result;
}

uint64_t sub_219385B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219385B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219385C00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219385C60()
{
  result = qword_27CC19508;
  if (!qword_27CC19508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19508);
  }

  return result;
}

unint64_t sub_219385CB4()
{
  result = qword_27CC19510;
  if (!qword_27CC19510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19510);
  }

  return result;
}

unint64_t sub_219385D08()
{
  result = qword_27CC19528;
  if (!qword_27CC19528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19528);
  }

  return result;
}

unint64_t sub_219385D5C()
{
  result = qword_27CC19540;
  if (!qword_27CC19540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19540);
  }

  return result;
}

void sub_219385DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_219385E4C()
{
  result = qword_27CC19560;
  if (!qword_27CC19560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19560);
  }

  return result;
}

unint64_t sub_219385EA4()
{
  result = qword_27CC19568;
  if (!qword_27CC19568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19568);
  }

  return result;
}

unint64_t sub_219385EFC()
{
  result = qword_27CC19570;
  if (!qword_27CC19570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19570);
  }

  return result;
}

unint64_t sub_219385F54()
{
  result = qword_27CC19578;
  if (!qword_27CC19578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19578);
  }

  return result;
}

unint64_t sub_219385FAC()
{
  result = qword_27CC19580;
  if (!qword_27CC19580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19580);
  }

  return result;
}

unint64_t sub_219386004()
{
  result = qword_27CC19588;
  if (!qword_27CC19588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19588);
  }

  return result;
}

unint64_t sub_21938605C()
{
  result = qword_27CC19590;
  if (!qword_27CC19590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19590);
  }

  return result;
}

unint64_t sub_2193860B4()
{
  result = qword_27CC19598;
  if (!qword_27CC19598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19598);
  }

  return result;
}

unint64_t sub_21938610C()
{
  result = qword_27CC195A0;
  if (!qword_27CC195A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC195A0);
  }

  return result;
}

uint64_t sub_2193861E8(void *a1, uint64_t a2)
{
  v4 = sub_219BE4E74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v14 = qword_280F61728;
  v15 = sub_219BF6214();
  sub_219BE5314("Starting Personalizaiton Script", 31, 2, &dword_2186C1000, v14, v15, MEMORY[0x277D84F90]);
  sub_219691AA0(v13);
  v25 = sub_219BF6214();
  sub_2186F20D4(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_219BF7484();
  v26 = a1;
  v18 = v27;
  v17 = v28;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_2186FC3BC();
  *(v16 + 32) = v18;
  *(v16 + 40) = v17;
  sub_219BE5314("Found Personalizaiton Script %{public}@", 39, 2, &dword_2186C1000, v14, v25, v16);

  v19 = *(v5 + 16);
  v19(v10, v13, v4);
  v19(v7, v10, v4);
  v20 = sub_219BF7984();

  v21 = sub_219BF53D4();

  [v26 setObject:v20 forKey:v21];
  swift_unknownObjectRelease();

  v22 = *(v5 + 8);
  v22(v10, v4);
  (*(a2 + 16))(a2, 0);
  return (v22)(v13, v4);
}

void sub_21938656C()
{
  sub_2186C66AC();
  v1 = sub_219BF6F44();
  v2 = sub_219BF6214();
  sub_219BE5314("Welcome router attempting to route to main", 42, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);

  sub_21938669C(v0);
  if (v3)
  {
    v4 = v3;
    __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
    sub_219BE5D84();
    v5 = sub_219BE1E24();
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    sub_219BE5D54();
  }

  else
  {
    sub_219BF61F4();
    v6 = sub_219BF6F44();
    sub_219BE5314("Failed to obtain window from welcome flow; bootstrapping won't be able to finish", 80, 2, &dword_2186C1000);
  }
}

void sub_21938669C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v2 = Strong;
  v3 = [Strong view];

  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = [v3 window];

  if (!v4)
  {
LABEL_4:
    v5 = [objc_opt_self() sharedApplication];
    v6 = [v5 delegate];

    if (v6)
    {
      if ([v6 respondsToSelector_])
      {
        [v6 window];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_2193867AC()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_219386810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v27 = a1;
  sub_218985E18(0);
  v26 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_219BEF2A4();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEF974();
  v25 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HistoryFeedLayoutModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3E97C(0);
  sub_219BE75E4();
  (*(v12 + 32))(v14, v17, v11);
  v24[2] = *(v4 + 40);
  v24[1] = swift_getObjectType();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v26;
  (*(v6 + 16))(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v26);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v6 + 32))(v21 + v20, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19);

  sub_219BEECF4();

  v22 = sub_219BEF294();
  (*(v28 + 8))(v10, v29);
  (*(v12 + 8))(v14, v25);
  return v22;
}

double sub_219386B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BE8C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0894();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEDF44();
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D32F88])
  {
    (*(v9 + 96))(v11, v8);
    v12 = sub_219BF13B4();
    v13 = *(v12 - 8);
    if ((*(v13 + 88))(v11, v12) == *MEMORY[0x277D33338])
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v16 = *(Strong + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler);
          sub_219BE8C04();
          __swift_project_boxed_opaque_existential_1(v16 + 11, v16[14]);
          sub_218A8AB54();
          v17 = v16[5];
          ObjectType = swift_getObjectType();
          (*(v17 + 64))(a3, 1, v7, ObjectType, v17);

          (*(v5 + 8))(v7, v4);
          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    else
    {
      (*(v13 + 8))(v11, v12);
    }
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_219386F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219386F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_219386810(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

double sub_219386F80(uint64_t a1)
{
  sub_218985E18(0);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_219386B60(a1, v4, v5);
}

uint64_t type metadata accessor for FoodTodayFeedGroupHeadlineKnobs(uint64_t a1)
{
  result = qword_280EA9280;
  if (!qword_280EA9280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21938708C(uint64_t a1)
{
  sub_2186F9548();
  if (v1 <= 0x3F)
  {
    sub_2186ECA28();
    if (v2 <= 0x3F)
    {
      sub_219BEF244();
      if (v3 <= 0x3F)
      {
        sub_2186F95C4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21938714C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v56 = sub_219BEF244();
  v60 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v58 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for FoodTodayFeedGroupHeadlineKnobs(0);
  MEMORY[0x28223BE20](v57);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219388440(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = v44 - v10;
  sub_2193882C4(0, &qword_280E8CAC0, MEMORY[0x277D844C8]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v44 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193880CC();
  v16 = v61;
  sub_219BF7B34();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = v8;
  v48 = 0;
  v50 = v13;
  v51 = a1;
  v52 = v5;
  sub_2186F9548();
  LOBYTE(v66) = 0;
  v18 = MEMORY[0x277D32620];
  sub_219388120(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v54 = v67;
  sub_2186ECA28();
  LOBYTE(v65) = 1;
  sub_219388120(&qword_280E913D8, sub_2186ECA28, v18);
  sub_219BF7674();
  v19 = v66;
  LOBYTE(v64) = 2;
  sub_219BF7674();
  v53 = v65;
  LOBYTE(v63) = 3;
  sub_219BF7674();
  v61 = v64;
  v21 = v55;
  v20 = v56;
  (*(v60 + 56))(v55, 1, 1, v56);
  sub_2186F95C4();
  v23 = v22;
  LOBYTE(v62) = 5;
  sub_219388120(&qword_280E913F8, sub_2186F95C4, v18);
  v49 = v12;
  v44[1] = v23;
  sub_219BF7674();
  v24 = v19;
  v45 = v63;
  v25 = v20;
  v47 = v15;
  if (v19)
  {
    v26 = v19;
  }

  else
  {
    v62 = 0x40F5180000000000;
    swift_allocObject();
    v26 = sub_219BEF534();
    v24 = 0;
  }

  v27 = v52;
  v28 = v53;
  v52[1] = v26;
  v29 = v60;
  v30 = v54;
  v44[2] = v24;
  if (!v54)
  {

    v62 = sub_219BED694();
    swift_allocObject();
    *v27 = sub_219BEF534();
    if (v28)
    {
      goto LABEL_8;
    }

LABEL_10:
    v62 = 1;
    swift_allocObject();

    v31 = sub_219BEF534();
    goto LABEL_11;
  }

  *v27 = v30;
  if (!v28)
  {
    goto LABEL_10;
  }

LABEL_8:

  v31 = v28;
LABEL_11:
  v27[2] = v31;
  v32 = v61;
  if (v61)
  {

    v33 = v32;
  }

  else
  {
    v62 = 3;
    swift_allocObject();

    v33 = sub_219BEF534();
  }

  v27[3] = v33;
  v34 = v21;
  v35 = v46;
  sub_219388168(v21, v46);
  v36 = *(v29 + 48);
  if (v36(v35, 1, v25) == 1)
  {

    v37 = v58;
    sub_219BEF1C4();
    v38 = v36(v35, 1, v25);
    v39 = v50;
    v40 = v51;
    if (v38 != 1)
    {
      sub_2193881E8(v35);
    }
  }

  else
  {
    v37 = v58;
    (*(v29 + 32))(v58, v35, v25);

    v39 = v50;
    v40 = v51;
  }

  v41 = v57;
  (*(v29 + 32))(v27 + *(v57 + 32), v37, v25);
  v42 = v49;
  v43 = v45;
  if (!v45)
  {
    LOBYTE(v62) = 1;
    swift_allocObject();
    v43 = sub_219BEF534();
  }

  sub_2193881E8(v34);
  (*(v39 + 8))(v47, v42);
  *(v27 + *(v41 + 36)) = v43;
  sub_219388260(v27, v59);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_2193878B0(void *a1)
{
  v3 = v1;
  sub_2193882C4(0, &qword_280E8C390, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193880CC();
  sub_219BF7B44();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_2186F9548();
  sub_219388120(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
  sub_219BF7834();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_2186ECA28();
    sub_219388120(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
    sub_219BF7834();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_219BF7834();
    v13 = v3[3];
    HIBYTE(v12) = 3;
    sub_219BF7834();
    v10 = type metadata accessor for FoodTodayFeedGroupHeadlineKnobs(0);
    LOBYTE(v13) = 4;
    sub_219BEF244();
    sub_219388120(&unk_280E916E0, MEMORY[0x277D324F0], MEMORY[0x277D324F8]);
    sub_219BF7834();
    v13 = *(v3 + *(v10 + 36));
    HIBYTE(v12) = 5;
    sub_2186F95C4();
    sub_219388120(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219387C34()
{
  v1 = *v0;
  v2 = 0x756F436863746566;
  v3 = 0xD000000000000010;
  v4 = 0x676E6970756F7267;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69576863746566;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_219387D10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219388494(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219387D38(uint64_t a1)
{
  v2 = sub_2193880CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219387D74(uint64_t a1)
{
  v2 = sub_2193880CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_219387DE4(uint64_t a1, uint64_t a2)
{
  sub_219388440(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = v14 - v5;
  v7 = [*(a2 + 8) startDate];
  if (v7)
  {
    v8 = v7;
    sub_219BDBCA4();

    v9 = sub_219BDBD34();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  }

  else
  {
    v9 = sub_219BDBD34();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  sub_219BEF524();
  v10 = *&v14[1];
  sub_219BDBD34();
  v11 = *(v9 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v6, 1, v9) != 1)
  {
    v12 = sub_219BDBC04();
    (*(v11 + 8))(v6, v9);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D30F38]) initWithStartDate:v12 timeInterval:v10];

  if (!v13)
  {
    __break(1u);
  }
}

uint64_t sub_219387FF0(void *a1, void *a2)
{
  sub_2186F9548();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FoodTodayFeedGroupHeadlineKnobs(0);
  if ((MEMORY[0x21CEC5FB0](a1 + *(v4 + 32), a2 + *(v4 + 32)) & 1) == 0)
  {
    return 0;
  }

  sub_2186F95C4();
  return sub_219BEF504() & 1;
}

unint64_t sub_2193880CC()
{
  result = qword_280EA92B0[0];
  if (!qword_280EA92B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA92B0);
  }

  return result;
}

uint64_t sub_219388120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219388168(uint64_t a1, uint64_t a2)
{
  sub_219388440(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2193881E8(uint64_t a1)
{
  sub_219388440(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219388260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FoodTodayFeedGroupHeadlineKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2193882C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193880CC();
    v7 = a3(a1, &type metadata for FoodTodayFeedGroupHeadlineKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21938833C()
{
  result = qword_27CC195C0;
  if (!qword_27CC195C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC195C0);
  }

  return result;
}

unint64_t sub_219388394()
{
  result = qword_280EA92A0;
  if (!qword_280EA92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA92A0);
  }

  return result;
}

unint64_t sub_2193883EC()
{
  result = qword_280EA92A8;
  if (!qword_280EA92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA92A8);
  }

  return result;
}

void sub_219388440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219388494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F436863746566 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69576863746566 && a2 == 0xEB00000000776F64 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6970756F7267 && a2 == 0xED000073656C7552 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF5000 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t AudioHScrollBlueprintAnimator.__allocating_init(blueprintProvider:viewProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AudioHScrollBlueprintAnimator.init(blueprintProvider:viewProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void AudioHScrollBlueprintAnimator.animate(context:animation:applyUpdates:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_219BE88E4();
  v9 = *(v8 - 1);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v12, a1, v8, v10);
  if ((*(v9 + 88))(v12, v8) == *MEMORY[0x277D6E040])
  {
    v13 = *(v9 + 96);
    v9 += 96;
    v13(v12, v8);
    sub_2186CB1F0(v12, v18);
    v12 = objc_opt_self();
    sub_218718690(v18, v17);
    v8 = swift_allocObject();
    v8[2] = v4;
    sub_2186CB1F0(v17, (v8 + 3));
    v8[8] = a3;
    v8[9] = a4;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2193889C0;
    *(v14 + 24) = v8;
    aBlock[4] = sub_218807D28;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218807CE4;
    aBlock[3] = &block_descriptor_119;
    a3 = _Block_copy(aBlock);

    [v12 performWithoutAnimation_];
    _Block_release(a3);
    __swift_destroy_boxed_opaque_existential_1(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  (*(v9 + 8))(v12, v8);
  (a3)(sub_2187E8A38, 0);
}

void sub_2193889F0(void *a1, void (*a2)(uint64_t (*)(), void *), uint64_t a3)
{
  v4 = v3;
  v109 = a3;
  v110 = a2;
  v108 = a1;
  sub_21938B748(0, &unk_280EE5B30, sub_218B58CA4, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v130 = &v107 - v6;
  sub_21938B384(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  v127 = v7;
  v114 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v125 = &v107 - v8;
  sub_218B58CA4(0);
  v128 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v113 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v121 = &v107 - v13;
  v14 = sub_219BDC104();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v122 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v107 - v18;
  v20 = *(v3 + 3);
  v21 = sub_219BE7BC4();
  v22 = [v21 indexPathsForVisibleItems];

  v23 = sub_219BF5924();
  v24 = v23;
  v25 = *(v23 + 16);
  v126 = v14;
  v118 = v20;
  v129 = v4;
  v112 = v10;
  v111 = v15;
  if (v25)
  {
    v26 = v15 + 16;
    v27 = *(v15 + 16);
    v28 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v107 = v24;
    v29 = v24 + v28;
    v124 = *(v26 + 56);
    v116 = (v114 + 8);
    v115 = v10 + 1;
    v123 = v26 - 8;
    v119 = MEMORY[0x277D84F98];
    v120 = v26;
    v117 = v27;
    (v27)(v19, v24 + v28, v14);
    while (1)
    {
      v43 = sub_219BE7BC4();
      v44 = sub_219BDC094();
      v45 = [v43 cellForItemAtIndexPath_];

      if (v45)
      {
        v46 = v45;
        v47 = [v46 snapshotViewAfterScreenUpdates_];
        if (v47)
        {
          v30 = v47;
          [v46 frame];
          [v30 setFrame_];
          v31 = [v46 superview];
          [v31 insertSubview:v30 aboveSubview:v46];

          [v46 setHidden_];
          *&v131[0] = *(v129 + 2);
          sub_2189DB20C(0);
          sub_21938B700(&unk_280EE53B0, sub_2189DB20C, MEMORY[0x277D6D8C8]);
          v32 = v125;
          sub_219BE7B94();
          v33 = v121;
          v34 = v127;
          sub_219BEB344();
          (*v116)(v32, v34);
          v35 = v19;
          v36 = v128;
          v37 = sub_219BE5F84();
          v39 = v38;
          v40 = v119;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v131[0] = v40;
          sub_21948E2B4(v30, v46, v37, v39, isUniquelyReferenced_nonNull_native);

          v14 = v126;

          v119 = *&v131[0];
          v42 = v36;
          v19 = v35;
          v27 = v117;
          (*v115)(v33, v42);
        }

        else
        {
        }
      }

      (*v123)(v19, v14);
      v29 += v124;
      if (!--v25)
      {
        break;
      }

      (v27)(v19, v29, v14);
    }

    v4 = v129;
  }

  else
  {

    v119 = MEMORY[0x277D84F98];
  }

  v48 = v114;
  v49 = sub_219BE7BC4();
  [v49 contentOffset];
  v51 = v50;
  v53 = v52;

  v54 = sub_219BE7BC4();
  [v54 contentSize];
  v56 = v55;
  v58 = v57;

  v59 = sub_219BE7BC4();
  v60 = [v59 collectionViewLayout];

  v61 = [v60 layoutAttributesForElementsInRect_];
  if (v61)
  {
    sub_2186C6148(0, &qword_280E8DBF0, 0x277D75308);
    v62 = sub_219BF5924();
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

  v63 = v111;
  if (v62 >> 62)
  {
LABEL_44:
    v123 = v62 & 0xFFFFFFFFFFFFFF8;
    v64 = sub_219BF7214();
  }

  else
  {
    v123 = v62 & 0xFFFFFFFFFFFFFF8;
    v64 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v124 = v48 + 8;
  if (!v64)
  {
    v117 = MEMORY[0x277D84F98];
LABEL_41:

    *&v131[0] = *(v4 + 2);
    v96 = *&v131[0];
    sub_2189DB20C(0);
    sub_21938B700(&unk_280EE53B0, sub_2189DB20C, MEMORY[0x277D6D8C8]);
    v97 = v125;
    sub_219BE7B94();
    v98 = v108;
    v99 = v4;
    __swift_project_boxed_opaque_existential_1(v108, v108[3]);
    sub_219BE6E34();
    v100 = v127;
    v130 = sub_219BEB374();

    v101 = *v124;
    (*v124)(v97, v100);
    *&v131[0] = v96;
    sub_219BE7B94();
    v102 = sub_219BE7BC4();
    v103 = [v102 indexPathsForVisibleItems];

    sub_219BF5924();
    v104 = sub_219BEB374();

    v101(v97, v100);
    sub_218718690(v98, v131);
    v105 = swift_allocObject();
    v105[2] = v119;
    v105[3] = v99;
    v106 = v117;
    v105[4] = v104;
    v105[5] = v106;
    sub_2186CB1F0(v131, (v105 + 6));
    v105[11] = v130;
    v105[12] = v51;
    v105[13] = v53;

    v110(sub_21938B478, v105);

    return;
  }

  v65 = 0;
  v120 = (v63 + 1);
  v121 = (v62 & 0xC000000000000001);
  v63 = (v112 + 48);
  v116 = (v112 + 32);
  v115 = (v112 + 8);
  v117 = MEMORY[0x277D84F98];
  while (2)
  {
    v48 = v65;
    while (1)
    {
      if (v121)
      {
        v66 = MEMORY[0x21CECE0F0](v48, v62);
      }

      else
      {
        if (v48 >= *(v123 + 16))
        {
          goto LABEL_43;
        }

        v66 = *(v62 + 8 * v48 + 32);
      }

      v67 = v66;
      v65 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      *&v131[0] = *(v129 + 2);
      sub_2189DB20C(0);
      sub_21938B700(&unk_280EE53B0, sub_2189DB20C, MEMORY[0x277D6D8C8]);
      v68 = v125;
      sub_219BE7B94();
      v69 = [v67 indexPath];
      v4 = v122;
      sub_219BDC0B4();

      v70 = v127;
      sub_219BEB1D4();
      (*v120)(v4, v126);
      v71 = v130;
      (*v124)(v68, v70);
      if ((*v63)(v71, 1, v128) != 1)
      {
        break;
      }

      sub_21938B498(v71, &unk_280EE5B30, sub_218B58CA4);
      ++v48;
      if (v65 == v64)
      {
        v4 = v129;
        goto LABEL_41;
      }
    }

    (*v116)(v113, v71, v128);
    v72 = sub_219BE5F84();
    v74 = v73;
    v75 = v67;
    v76 = v117;
    v77 = swift_isUniquelyReferenced_nonNull_native();
    *&v131[0] = v76;
    v114 = v72;
    v79 = sub_21870F700(v72, v74);
    v80 = v76[2];
    v81 = (v78 & 1) == 0;
    v82 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      break;
    }

    v83 = v78;
    v112 = v75;
    if (v76[3] >= v82)
    {
      v84 = v74;
      v4 = v129;
      if (v77)
      {
        if ((v78 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_2194953CC();
        if ((v83 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_34;
    }

    sub_219486094(v82, v77);
    v84 = v74;
    v85 = sub_21870F700(v114, v74);
    v4 = v129;
    if ((v83 & 1) == (v86 & 1))
    {
      v79 = v85;
      if ((v83 & 1) == 0)
      {
LABEL_36:
        v90 = *&v131[0];
        *(*&v131[0] + 8 * (v79 >> 6) + 64) |= 1 << v79;
        v91 = (v90[6] + 16 * v79);
        *v91 = v114;
        v91[1] = v84;
        v92 = v112;
        *(v90[7] + 8 * v79) = v112;

        (*v115)(v113, v128);
        v93 = v90[2];
        v94 = __OFADD__(v93, 1);
        v95 = v93 + 1;
        if (!v94)
        {
          v117 = v90;
          v90[2] = v95;
LABEL_38:
          if (v65 != v64)
          {
            continue;
          }

          goto LABEL_41;
        }

        goto LABEL_46;
      }

LABEL_34:

      v117 = *&v131[0];
      v87 = *(*&v131[0] + 56);
      v88 = *(v87 + 8 * v79);
      v89 = v112;
      *(v87 + 8 * v79) = v112;

      (*v115)(v113, v128);
      goto LABEL_38;
    }

    break;
  }

  sub_219BF79A4();
  __break(1u);
}

void sub_219389708(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9, double a10)
{
  v173 = a8;
  v172 = a7;
  v175 = a6;
  v189 = a3;
  v165 = a2;
  v164 = a1;
  v171 = sub_219BED174();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v168 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_219BED1D4();
  v167 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v166 = &v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21938B748(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v177 = (&v160 - v18);
  v19 = sub_219BDC104();
  v196 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v193 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  *&v200 = &v160 - v22;
  sub_218B58CA4(0);
  v194 = v23;
  v188 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v191 = &v160 - v27;
  sub_21938B384(0, &qword_280EE35D0, MEMORY[0x277D6EC60]);
  *&v199 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  *&v198 = &v160 - v30;
  v31 = MEMORY[0x277D84F90];
  v203 = MEMORY[0x277D84F90];
  a = COERCE_DOUBLE(swift_allocObject());
  *(*&a + 16) = a3;

  v33 = sub_2191F67A4(0, 1, 1, v31);
  v35 = v33[2];
  v34 = v33[3];
  v36 = v35 + 1;
  if (v35 >= v34 >> 1)
  {
LABEL_64:
    v33 = sub_2191F67A4((v34 > 1), v36, 1, v33);
  }

  v33[2] = v36;
  v163 = v33;
  v37 = &v33[2 * v35];
  *(v37 + 4) = sub_21938B490;
  v37[5] = a;
  v186 = a4[2];
  aBlock.a = v186;
  sub_2189DB20C(0);
  v39 = v38;
  v40 = sub_21938B700(&unk_280EE53B0, sub_2189DB20C, MEMORY[0x277D6D8C8]);
  v41 = v198;
  v185 = v39;
  v184 = v40;
  sub_219BE7B94();
  v174 = a4;
  v197 = *(a4 + 3);
  v42 = sub_219BE7BC4();
  v43 = [v42 indexPathsForVisibleItems];

  sub_219BF5924();
  v190 = v19;

  v44 = v199;
  v45 = sub_219BEB374();
  v46 = v190;

  v47 = v29[1];
  v187 = ++v29;
  v183 = v47;
  v47(v41, v44);
  *&aBlock.a = a5;

  sub_2191EF9C0(v45);
  a = aBlock.a;
  v35 = sub_218C3DE20(*&aBlock.a);

  v48 = 0;
  a5 = v35 + 56;
  v49 = *(v35 + 56);
  v192 = v35;
  v50 = 1 << *(v35 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v19 = v51 & v49;
  v52 = (v50 + 63) >> 6;
  v182 = v188 + 16;
  v181 = v188 + 32;
  v180 = (v196 + 48);
  v176 = (v196 + 32);
  p_c = &aBlock.c;
  v195 = (v196 + 8);
  v178 = (v188 + 8);
  v36 = v194;
  a4 = v177;
  v179 = v52;
  while (v19)
  {
LABEL_12:
    v53 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v54 = v188;
    v55 = v191;
    (*(v188 + 16))(v191, *(v192 + 48) + *(v188 + 72) * (v53 | (v48 << 6)), v36);
    (*(v54 + 32))(v25, v55, v36);
    aBlock.a = v186;
    v35 = v25;
    v56 = *&v198;
    sub_219BE7B94();
    v29 = v199;
    a = v56;
    sub_219BEB2F4();
    v183(*&v56, v29);
    if ((*v180)(a4, 1, v46) == 1)
    {
      (*v178)(v35, v36);
      sub_21938B498(a4, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
      v25 = v35;
      goto LABEL_6;
    }

    (*v176)(v200, a4, v46);
    v57 = sub_219BE5F84();
    v25 = v35;
    if (*(v189 + 16))
    {
      v59 = sub_21870F700(v57, v58);
      v61 = v60;

      if (v61)
      {
        v62 = *(*(v189 + 56) + 16 * v59);
LABEL_18:
        v64 = sub_219BE5F84();
        a = *&v175;
        if (*(v175 + 16))
        {
          a = COERCE_DOUBLE(sub_21870F700(v64, v65));
          v67 = v66;

          if (v67)
          {
            v161 = v35;
            v35 = *(*(v175 + 56) + 8 * *&a);
            v68 = sub_219BE7BC4();
            v69 = [v68 collectionViewLayout];

            v70 = v200;
            v71 = sub_219BDC094();
            a = COERCE_DOUBLE([v69 layoutAttributesForItemAtIndexPath_]);

            if (a == 0.0)
            {

              v46 = v190;
              (*v195)(v70, v190);
            }

            else
            {
              [v35 center];
              [v62 setCenter_];
              v72 = swift_allocObject();
              *(v72 + 16) = v62;
              *(v72 + 24) = a;
              v73 = objc_allocWithZone(MEMORY[0x277D75A60]);
              v160 = v62;
              v74 = *&a;
              v75 = [v73 initWithMass:1.0 stiffness:175.0 damping:30.0 initialVelocity:{0.0, 0.0}];
              [v75 ts_settlingDuration];
              v29 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v75 timingParameters:v76];
              *&aBlock.tx = sub_21938B508;
              *&aBlock.ty = v72;
              *&aBlock.a = MEMORY[0x277D85DD0];
              *&aBlock.b = 1107296256;
              *&aBlock.c = sub_218793E0C;
              *&aBlock.d = &block_descriptor_17_3;
              v77 = _Block_copy(&aBlock);

              [v29 addAnimations_];
              _Block_release(v77);

              a = COERCE_DOUBLE(&v203);
              MEMORY[0x21CECC690]();
              v46 = v190;
              if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_219BF5A14();
              }

              sub_219BF5A54();

              (*v195)(v200, v46);
            }

            v78 = *v178;
            v25 = v161;
            goto LABEL_29;
          }
        }

        else
        {
        }

        v46 = v190;
        (*v195)(v200, v190);
        v78 = *v178;
LABEL_29:
        v36 = v194;
        v78(v25, v194);
        goto LABEL_30;
      }
    }

    else
    {
    }

    v63 = sub_219BE7BC4();
    a = COERCE_DOUBLE(sub_219BDC094());
    v62 = [v63 cellForItemAtIndexPath_];

    if (v62)
    {
      goto LABEL_18;
    }

    v46 = v190;
    (*v195)(v200, v190);
    (*v178)(v35, v36);
LABEL_30:
    a4 = v177;
LABEL_6:
    v52 = v179;
  }

  while (1)
  {
    v34 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v34 >= v52)
    {
      break;
    }

    v19 = *(a5 + 8 * v34);
    ++v48;
    if (v19)
    {
      v48 = v34;
      goto LABEL_12;
    }
  }

  __swift_project_boxed_opaque_existential_1(v172, v172[3]);
  v79 = sub_219BE6E44();
  v80 = *(v79 + 16);
  v81 = &xmmword_219C18000;
  v82 = "upID";
  if (v80)
  {
    v192 = *(v196 + 16);
    v83 = (*(v196 + 80) + 32) & ~*(v196 + 80);
    v187 = v79;
    v84 = v79 + v83;
    v196 += 16;
    v191 = *(v196 + 56);
    v85 = 0x277D75000;
    v86 = &selRef_boldSystemFontOfSize_;
    do
    {
      v87 = v193;
      (v192)(v193, v84, v46);
      v88 = sub_219BE7BC4();
      v89 = sub_219BDC094();
      (*v195)(v87, v46);
      v90 = [v88 cellForItemAtIndexPath_];

      if (v90)
      {
        CGAffineTransformMakeScale(&aBlock, 0.8, 0.8);
        v199 = *&aBlock.c;
        v200 = *&aBlock.a;
        v198 = *&aBlock.tx;
        v91 = v90;
        *&aBlock.a = v200;
        *&aBlock.c = v199;
        *&aBlock.tx = v198;
        [v91 setTransform_];
        v92 = swift_allocObject();
        *(v92 + 16) = v91;
        v93 = objc_allocWithZone(MEMORY[0x277D75A60]);
        v94 = v91;
        v95 = [v93 initWithMass:1.0 stiffness:175.0 damping:30.0 initialVelocity:{0.0, 0.0}];
        [v95 ts_settlingDuration];
        v97 = [objc_allocWithZone(*(v85 + 3392)) v86[157]];
        *&aBlock.tx = sub_21938B7C8;
        *&aBlock.ty = v92;
        *&aBlock.a = MEMORY[0x277D85DD0];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_218793E0C;
        *&aBlock.d = &block_descriptor_50_0;
        v98 = _Block_copy(&aBlock);

        [v97 addAnimations_];
        _Block_release(v98);

        MEMORY[0x21CECC690]();
        if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        [v94 setAlpha_];

        v99 = swift_allocObject();
        *(v99 + 16) = v94;
        v100 = objc_allocWithZone(MEMORY[0x277D753D0]);
        v101 = v94;
        v102 = [v100 initWithControlPoint1:0.33 controlPoint2:{0.0, 0.67, 1.0}];
        v86 = &selRef_boldSystemFontOfSize_;
        v103 = [objc_allocWithZone(*(v85 + 3392)) initWithDuration:v102 timingParameters:0.28];

        *&aBlock.tx = sub_218A47480;
        *&aBlock.ty = v99;
        *&aBlock.a = MEMORY[0x277D85DD0];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_218793E0C;
        *&aBlock.d = &block_descriptor_56_1;
        v104 = _Block_copy(&aBlock);

        [v103 addAnimations_];
        _Block_release(v104);

        MEMORY[0x21CECC690](v105);
        if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();

        v85 = 0x277D75000uLL;
        v46 = v190;
      }

      v84 += v191;
      --v80;
    }

    while (v80);

    v81 = &xmmword_219C18000;
    v82 = "SearchResultsGroupID" + 16;
  }

  else
  {

    v85 = 0x277D75000uLL;
  }

  v106 = *(v173 + 16);
  v107 = v189;
  if (v106)
  {
    v108 = v173 + ((*(v188 + 80) + 32) & ~*(v188 + 80));
    v109 = *(v188 + 72);
    v110 = &aBlock.c;
    v111 = *(v81 + 6);
    v112 = *(v82 + 276);
    *&v198 = v109;
    do
    {
      v113 = sub_219BE5F84();
      if (*(v107 + 16))
      {
        v115 = sub_21870F700(v113, v114);
        v117 = v116;

        if (v117)
        {
          v200 = *(*(v107 + 56) + 16 * v115);
          v118 = v200;
          v119 = *(&v200 + 1);
          v120 = [v118 superview];
          [v120 sendSubviewToBack_];

          v121 = swift_allocObject();
          *(v121 + 16) = v200;
          v122 = v85;
          v123 = objc_allocWithZone(MEMORY[0x277D75A60]);
          *&v199 = v118;
          v124 = v110;
          v125 = v119;
          v126 = [v123 initWithMass:1.0 stiffness:175.0 damping:30.0 initialVelocity:{0.0, 0.0}];
          [v126 ts_settlingDuration];
          v128 = [objc_allocWithZone(*(v122 + 3392)) initWithDuration:v126 timingParameters:v127];
          *&aBlock.tx = sub_21938B7AC;
          *&aBlock.ty = v121;
          *&aBlock.a = MEMORY[0x277D85DD0];
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_218793E0C;
          *&aBlock.d = &block_descriptor_38_2;
          v129 = _Block_copy(&aBlock);

          [v128 addAnimations_];
          _Block_release(v129);

          MEMORY[0x21CECC690]();
          if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          v130 = swift_allocObject();
          *(v130 + 16) = v200;
          v131 = objc_allocWithZone(MEMORY[0x277D753D0]);
          *&v200 = v199;
          *&v199 = v125;
          v132 = [v131 initWithControlPoint1:v111 controlPoint2:{0.0, v112, 1.0}];
          v133 = [objc_allocWithZone(*(v122 + 3392)) initWithDuration:v132 timingParameters:0.28];

          *&aBlock.tx = sub_21938B7B4;
          *&aBlock.ty = v130;
          *&aBlock.a = MEMORY[0x277D85DD0];
          *&aBlock.b = 1107296256;
          v110 = v124;
          *&aBlock.c = sub_218793E0C;
          *&aBlock.d = &block_descriptor_44_0;
          v134 = _Block_copy(&aBlock);

          [v133 addAnimations_];
          _Block_release(v134);

          MEMORY[0x21CECC690](v135);
          v85 = v122;
          if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();

          v107 = v189;
          v109 = v198;
        }
      }

      else
      {
      }

      v108 += v109;
      --v106;
    }

    while (v106);
  }

  v136 = sub_219BE7BC4();
  [v136 contentOffset];
  v138 = v137;
  v140 = v139;

  v141 = sub_219BE7BC4();
  [v141 setContentOffset_];

  v142 = swift_allocObject();
  v142[2] = v174;
  v142[3] = v138;
  v142[4] = v140;

  sub_21938B5B8(sub_21938B550, v142);

  MEMORY[0x21CECC690](v143);
  if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  v144 = v203;
  v145 = dispatch_group_create();
  if (v144 >> 62)
  {
    v146 = sub_219BF7214();
    if (!v146)
    {
      goto LABEL_66;
    }

LABEL_57:
    if (v146 >= 1)
    {
      v147 = 0;
      do
      {
        if ((v144 & 0xC000000000000001) != 0)
        {
          v148 = MEMORY[0x21CECE0F0](v147, v144);
        }

        else
        {
          v148 = *(v144 + 8 * v147 + 32);
        }

        v149 = v148;
        ++v147;
        dispatch_group_enter(v145);
        v150 = swift_allocObject();
        *(v150 + 16) = v145;
        *&aBlock.tx = sub_218A2B194;
        *&aBlock.ty = v150;
        *&aBlock.a = MEMORY[0x277D85DD0];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_218A8F318;
        *&aBlock.d = &block_descriptor_26_0;
        v151 = _Block_copy(&aBlock);
        v152 = v145;

        [v149 addCompletion_];
        _Block_release(v151);
        [v149 startAnimation];
      }

      while (v146 != v147);
      goto LABEL_66;
    }

    __break(1u);
  }

  else
  {
    v146 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v146)
    {
      goto LABEL_57;
    }

LABEL_66:

    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v153 = sub_219BF66A4();
    v154 = swift_allocObject();
    v155 = v164;
    v154[2] = v163;
    v154[3] = v155;
    v154[4] = v165;
    *&aBlock.tx = sub_21938B6F4;
    *&aBlock.ty = v154;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_218793E0C;
    *&aBlock.d = &block_descriptor_32_2;
    v156 = _Block_copy(&aBlock);

    v157 = v166;
    sub_219BED1A4();
    v201 = MEMORY[0x277D84F90];
    sub_21938B700(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_21938B748(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    v158 = v168;
    v159 = v171;
    sub_219BF7164();
    sub_219BF6654();
    _Block_release(v156);

    (*(v170 + 8))(v158, v159);
    (*(v167 + 8))(v157, v169);
  }
}

void sub_21938B0AC(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = *(a1 + 56) + ((v8 << 10) | (16 * v9));
      v11 = *(v10 + 8);
      v12 = *v10;
      v13 = v11;
      [v12 removeFromSuperview];
      [v13 setHidden_];

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_21938B230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return a2();
}

uint64_t AudioHScrollBlueprintAnimator.deinit()
{

  return v0;
}

uint64_t AudioHScrollBlueprintAnimator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_21938B384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_219BF33A4();
    v8[1] = sub_219BF13A4();
    v8[2] = sub_21938B700(&qword_280E90190, MEMORY[0x277D33DA8], MEMORY[0x277D33DA0]);
    v8[3] = sub_21938B700(&unk_280E908E0, MEMORY[0x277D33320], MEMORY[0x277D33310]);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21938B498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21938B748(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_21938B508()
{
  v1 = *(v0 + 16);
  [*(v0 + 24) center];

  return [v1 setCenter_];
}

void sub_21938B550(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = sub_219BE7BC4();
  [v4 setContentOffset_];
}

id sub_21938B5B8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:175.0 damping:30.0 initialVelocity:{0.0, 0.0}];
  [v4 ts_settlingDuration];
  v6 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v4 timingParameters:v5];
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_218793E0C;
  v9[3] = &block_descriptor_59_0;
  v7 = _Block_copy(v9);

  [v6 addAnimations_];
  _Block_release(v7);

  return v6;
}

uint64_t sub_21938B700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21938B748(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_21938B7C8()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

void sub_21938B8A0(unint64_t a1)
{
  v35 = sub_219BE5434();
  v3 = *(v35 - 8);
  v4 = MEMORY[0x28223BE20](v35);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v7 = sub_219BF7214();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = *(v1 + 16);
    v33 = (v3 + 8);
    v34 = a1 & 0xC000000000000001;
    v4.n128_u64[0] = 136446210;
    v30 = v4;
    v10 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v31 = v7;
    v29 = a1;
    do
    {
      if (v34)
      {
        v11 = MEMORY[0x21CECE0F0](v8, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v8 + 32);
      }

      v12 = v11;
      sub_219BE5404();
      v13 = v12;
      v14 = sub_219BE5414();
      v15 = sub_219BF6214();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v36 = v32;
        *v16 = v30.n128_u32[0];
        v17 = [v13 v10[278]];
        v18 = v9;
        v19 = v6;
        v20 = sub_219BF5414();
        v22 = v21;

        v23 = v20;
        v6 = v19;
        v9 = v18;
        v24 = sub_2186D1058(v23, v22, &v36);
        a1 = v29;

        *(v16 + 4) = v24;
        v10 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
        _os_log_impl(&dword_2186C1000, v14, v15, "Remove issue from my magazines marked for removal, %{public}s", v16, 0xCu);
        v25 = v32;
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x21CECF960](v25, -1, -1);
        v26 = v16;
        v7 = v31;
        MEMORY[0x21CECF960](v26, -1, -1);
      }

      (*v33)(v6, v35);
      v27 = [v13 v10[278]];
      if (!v27)
      {
        sub_219BF5414();
        v27 = sub_219BF53D4();
        v10 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      }

      ++v8;
      [v9 markIssueAsRemovedFromMyMagazinesWithID_];
    }

    while (v7 != v8);
  }
}

BOOL sub_21938BB8C(unint64_t a1)
{
  v49 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_21872679C(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - v4;
  v6 = type metadata accessor for MyMagazinesIssue(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v55 = &v48 - v10;
  sub_21872679C(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  sub_21872679C(0, qword_280ED8300, type metadata accessor for MyMagazinesState, v2);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v48 - v17;
  v19 = v1[6];
  v20 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v19);
  (*(v20 + 8))(v19, v20);
  sub_219BE1A44();

  sub_219BE2184();

  sub_219BE1A24();
  (*(v13 + 8))(v15, v12);
  v21 = type metadata accessor for MyMagazinesState(0);
  if ((*(*(v21 - 8) + 48))(v18, 1, v21) == 1)
  {
    sub_21938C240(v18, qword_280ED8300, type metadata accessor for MyMagazinesState);
    return 0;
  }

  else
  {
    sub_218C00858(v18, v5);
    v23 = v7;
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_21938C240(v5, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
      v24 = *&v18[*(v21 + 20)];
    }

    else
    {
      v25 = v55;
      sub_218C00790(v5, v55);
      sub_21872679C(0, &unk_280E8BBF0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D84560]);
      v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_219C09BA0;
      sub_218C007F4(v25, v27 + v26);
      v57 = v27;

      sub_2191EDC74(v28);
      sub_218C008EC(v25, type metadata accessor for MyMagazinesIssue);
      v24 = v57;
    }

    v29 = v56;
    sub_218C008EC(v18, type metadata accessor for MyMagazinesState);
    v30 = v49;
    if (v49 >> 62)
    {
      goto LABEL_30;
    }

    v31 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v31; i = 0)
    {
      v52 = v30 & 0xFFFFFFFFFFFFFF8;
      v53 = v30 & 0xC000000000000001;
      v50 = v31;
      v51 = v30 + 32;
      v30 = 0;
      while (1)
      {
        if (v53)
        {
          v32 = MEMORY[0x21CECE0F0](v30, v49);
        }

        else
        {
          if (v30 >= *(v52 + 16))
          {
            goto LABEL_29;
          }

          v32 = *(v51 + 8 * v30);
        }

        v56 = v32;
        if (__OFADD__(v30++, 1))
        {
          break;
        }

        v54 = v30;
        if (i)
        {
          i = 1;
        }

        else
        {
          v34 = 0;
          v55 = *(v24 + 16);
          do
          {
            i = v55 != v34;
            if (v55 == v34)
            {
              break;
            }

            if (v34 >= *(v24 + 16))
            {
              __break(1u);
              goto LABEL_28;
            }

            v35 = v24;
            v36 = v23;
            sub_218C007F4(v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v34, v29);
            v37 = [*v29 identifier];
            v38 = sub_219BF5414();
            v40 = v39;

            v41 = v29;
            v42 = [v56 identifier];
            v43 = sub_219BF5414();
            v45 = v44;

            if (v38 == v43 && v40 == v45)
            {

              sub_218C008EC(v41, type metadata accessor for MyMagazinesIssue);
              i = 1;
              v23 = v36;
              v29 = v41;
              v24 = v35;
              break;
            }

            ++v34;
            v30 = sub_219BF78F4();

            sub_218C008EC(v41, type metadata accessor for MyMagazinesIssue);
            v23 = v36;
            v29 = v41;
            v24 = v35;
          }

          while ((v30 & 1) == 0);
        }

        v30 = v54;
        if (v54 == v50)
        {
          goto LABEL_31;
        }
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v31 = sub_219BF7214();
    }

LABEL_31:
  }

  return i;
}

uint64_t sub_21938C240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21872679C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21938C2CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_21938C314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21938C384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21938C3E0(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_21938C450()
{
  v1 = 0;
  v2 = *(*v0 + 16);
  v3 = *v0 - 72;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v3 + 120 * v1;
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_27;
    }

    v7 = *(v5 + 112);
    ++v1;
    v5 += 120;
    if (v7)
    {
      v8 = *v5;
      v9 = *(v5 + 8);
      v10 = *(v5 + 16);
      *v27 = v7;
      *&v27[8] = v8;
      *&v27[16] = v9;
      v27[24] = v10;
      sub_218950CAC(v27, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2191F9AA0(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_2191F9AA0((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v12 + 1;
      v13 = &v4[32 * v12];
      *(v13 + 4) = v7;
      *(v13 + 5) = v8;
      *(v13 + 6) = v9;
      v13[56] = v10;
      v1 = v6;
      goto LABEL_2;
    }
  }

  v14 = *(v4 + 2);
  if (!v14)
  {
LABEL_25:

    return;
  }

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
LABEL_14:
  v17 = &v4[32 * v15 + 32];
  v18 = v15;
  while (v18 < *(v4 + 2))
  {
    v19 = *(v17 + 9);
    *v27 = *v17;
    *&v27[9] = v19;
    v20 = *v27;
    sub_218950CAC(v27, v26);
    if ([v20 isCurrent] && (v27[9] & 1) != 0 && v27[8] != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_218C34868(0, *(v16 + 16) + 1, 1);
      }

      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_218C34868((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
      }

      v15 = v18 + 1;
      *(v16 + 16) = v23;
      v24 = v16 + 32 * v22;
      v25 = *v27;
      *(v24 + 41) = *&v27[9];
      *(v24 + 32) = v25;
      if (v14 - 1 != v18)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }

    sub_218950D08(v27);
    ++v18;
    v17 += 32;
    if (v14 == v18)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_21938C6BC()
{
  v1 = v0[1];
  v2 = 0x7372616579;
  v3 = 0x64616F6C6E776F64;
  if (v1 != 2)
  {
    v3 = *v0;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x697A6167616D796DLL;
  }

  sub_218DB964C(*v0, v1);
  return v4;
}

uint64_t sub_21938C750(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_21938C82C(v7, v8) & 1;
}

uint64_t sub_21938C798()
{
  v1 = *(v0 + 32);
  v2 = 0x7372616579;
  v3 = 0x64616F6C6E776F64;
  if (v1 != 2)
  {
    v3 = *(v0 + 24);
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x697A6167616D796DLL;
  }

  sub_218DB964C(*(v0 + 24), v1);
  return v4;
}

uint64_t sub_21938C82C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v4)
    {
      v6 = a1;
      v7 = sub_219BF78F4();
      a1 = v6;
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  v9 = *(a2 + 24);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || v8 != v9)
  {
    v10 = a1;
    v11 = sub_219BF78F4();
    a1 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_17:
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (v12)
  {
    v14 = [*(a1 + 32) uniqueKey];
    v15 = sub_219BF5414();
    v17 = v16;

    v18 = *(a2 + 32);
    if (!v18)
    {
      if (!v17)
      {
        v19 = 0;
        v20 = 0.0;
        goto LABEL_38;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v18 = *(a2 + 32);
    if (!v18)
    {
      return 1;
    }

    v17 = 0;
    v15 = 0;
  }

  v20 = *(a2 + 40);
  v21 = [v18 uniqueKey];
  v22 = sub_219BF5414();
  v24 = v23;

  if (!v17)
  {
    if (!v24)
    {
LABEL_31:
      if (!v12)
      {
        return 0;
      }

LABEL_37:
      v19 = 1;
LABEL_38:
      if (v13 == v20)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

LABEL_30:

    return 0;
  }

  if (!v24)
  {
    goto LABEL_30;
  }

  if (v15 == v22 && v17 == v24)
  {

    goto LABEL_31;
  }

  v26 = sub_219BF78F4();

  result = 0;
  if (v12 && (v26 & 1) != 0)
  {
    goto LABEL_37;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI210IssueModelVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21938CA64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_21938CAAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21938CB28(uint64_t a1@<X2>, unint64_t *a2@<X8>)
{
  v4 = sub_219BF4AC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_218C31F14(3, a1))
  {
    v8 = *MEMORY[0x277D328E8];
    v9 = sub_219BEFBB4();
    v10 = *(*(v9 - 8) + 104);

    v10(a2, v8, v9);
  }

  else
  {
    sub_219BEF0B4();
    v11 = *(v19[1] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult);

    if (v11)
    {
      sub_219BF4404();
      sub_219BF3FA4();

      v12 = sub_219BF4A64();
      (*(v5 + 8))(v7, v4);
      if (sub_218C31F14(v12, a1))
      {
        v13 = *MEMORY[0x277D328E8];
        v14 = sub_219BEFBB4();
        (*(*(v14 - 8) + 104))(a2, v13, v14);

        return;
      }

      v15 = 0x8000000219D1A120;
      v16 = 0xD00000000000003BLL;
    }

    else
    {
      v15 = 0x8000000219D1A0E0;
      v16 = 0xD000000000000037;
    }

    *a2 = v16;
    a2[1] = v15;
    v17 = *MEMORY[0x277D328F0];
    v18 = sub_219BEFBB4();
    (*(*(v18 - 8) + 104))(a2, v17, v18);
  }
}

double sub_21938CDC8@<D0>(uint64_t a1@<X2>, unint64_t *a2@<X8>)
{
  v4 = sub_219BF4AC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    sub_219BEF0B4();
    v8 = *(v20[1] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult);

    if (!v8)
    {
      v10 = 0x8000000219D1A0E0;
      v11 = 0xD000000000000037;
      goto LABEL_9;
    }

    sub_219BF4404();
    sub_219BF3FA4();

    v9 = sub_219BF4A64();
    (*(v5 + 8))(v7, v4);
    if (sub_218C31F14(v9, a1))
    {

      v10 = 0x8000000219D1A120;
      v11 = 0xD00000000000003BLL;
LABEL_9:
      *a2 = v11;
      a2[1] = v10;
      v16 = *MEMORY[0x277D328F0];
      v17 = sub_219BEFBB4();
      (*(*(v17 - 8) + 104))(a2, v16, v17);
      return result;
    }

    v18 = *MEMORY[0x277D328E8];
    v19 = sub_219BEFBB4();
    (*(*(v19 - 8) + 104))(a2, v18, v19);
  }

  else
  {
    v12 = *MEMORY[0x277D328E8];
    v13 = sub_219BEFBB4();
    v14 = *(*(v13 - 8) + 104);

    v14(a2, v12, v13);
  }

  return result;
}

uint64_t sub_21938D060@<X0>(char a1@<W2>, unint64_t *a2@<X8>)
{
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9588 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  if (a1 == 1)
  {
    if (v22)
    {
      sub_219BEF0B4();
      v6 = *(v22 + 24);

      v7 = *(v6 + 16);

      v8 = *(v7 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_groups);

      v9 = *(v8 + 16);
      if (v9)
      {
        v21 = MEMORY[0x277D84F90];
        sub_218C37240(0, v9, 0);
        v10 = 32;
        v11 = v21;
        do
        {
          v12 = sub_2197A43B4(*(v8 + v10));
          v14 = *(v21 + 16);
          v13 = *(v21 + 24);
          if (v14 >= v13 >> 1)
          {
            v15 = v12;
            sub_218C37240((v13 > 1), v14 + 1, 1);
            v12 = v15;
          }

          *(v21 + 16) = v14 + 1;
          *(v21 + v14 + 32) = v12;
          v10 += 8;
          --v9;
        }

        while (v9);
      }

      else
      {

        v11 = MEMORY[0x277D84F90];
      }

      v16 = sub_2190893DC(31, v11);

      if (v16)
      {
        v4 = 0x8000000219D1A180;
        v5 = 0xD000000000000022;
        goto LABEL_17;
      }
    }

LABEL_18:
    v17 = MEMORY[0x277D328E8];
    goto LABEL_19;
  }

  if (a1 != 31 || v22)
  {
    goto LABEL_18;
  }

  v4 = 0x8000000219D1A1B0;
  v5 = 0xD00000000000001ELL;
LABEL_17:
  *a2 = v5;
  a2[1] = v4;
  v17 = MEMORY[0x277D328F0];
LABEL_19:
  v18 = *v17;
  v19 = sub_219BEFBB4();
  return (*(*(v19 - 8) + 104))(a2, v18, v19);
}

uint64_t sub_21938D2F0@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  sub_219BEF0B4();
  v5 = *(v11 + *a1);
  swift_unknownObjectRetain();

  v6 = [v5 useFood];
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = MEMORY[0x277D328E8];
  }

  else
  {
    *a2 = 0xD00000000000001BLL;
    a2[1] = 0x8000000219D1A160;
    v7 = MEMORY[0x277D328F0];
  }

  v8 = *v7;
  v9 = sub_219BEFBB4();
  return (*(*(v9 - 8) + 104))(a2, v8, v9);
}

uint64_t sub_21938D3DC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SearchFeedServiceConfig(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v6 = *&v5[*(v3 + 48)];
  swift_unknownObjectRetain();
  sub_21874576C(v5, type metadata accessor for SearchFeedServiceConfig);
  LODWORD(v3) = [v6 useFood];
  swift_unknownObjectRelease();
  if (v3)
  {
    v7 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD00000000000001BLL;
    a1[1] = 0x8000000219D1A160;
    v7 = MEMORY[0x277D328F0];
  }

  v8 = *v7;
  v9 = sub_219BEFBB4();
  return (*(*(v9 - 8) + 104))(a1, v8, v9);
}

uint64_t sub_21938D518@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SearchMoreFeedServiceConfig(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v6 = *&v5[*(v3 + 40)];
  swift_unknownObjectRetain();
  sub_21874576C(v5, type metadata accessor for SearchMoreFeedServiceConfig);
  LODWORD(v3) = [v6 useFood];
  swift_unknownObjectRelease();
  if (v3)
  {
    v7 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD00000000000001BLL;
    a1[1] = 0x8000000219D1A160;
    v7 = MEMORY[0x277D328F0];
  }

  v8 = *v7;
  v9 = sub_219BEFBB4();
  return (*(*(v9 - 8) + 104))(a1, v8, v9);
}

uint64_t sub_21938D654@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21938DE5C(0, &qword_27CC195E8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for HighlightsTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21938DDA4();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_21938DEC0(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21938DDF8(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21938D900(uint64_t a1)
{
  v2 = sub_21938DDA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21938D93C(uint64_t a1)
{
  v2 = sub_21938DDA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21938D9B8(void *a1)
{
  sub_21938DE5C(0, &qword_27CC195F8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21938DDA4();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_21938DEC0(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21938DC18(uint64_t a1)
{
  result = sub_21938DEC0(&qword_27CC195D8, type metadata accessor for HighlightsTagFeedGroup, &unk_219C74DAC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21938DC70(void *a1)
{
  a1[1] = sub_21938DEC0(&qword_27CC195E0, type metadata accessor for HighlightsTagFeedGroup, &unk_219C74CD8);
  a1[2] = sub_21938DEC0(&unk_27CC1C740, type metadata accessor for HighlightsTagFeedGroup, &unk_219C74D84);
  result = sub_21938DEC0(&unk_27CC1C850, type metadata accessor for HighlightsTagFeedGroup, "}P\\h");
  a1[3] = result;
  return result;
}

uint64_t sub_21938DD1C(uint64_t a1)
{
  v2 = sub_21938DEC0(&qword_27CC195E0, type metadata accessor for HighlightsTagFeedGroup, &unk_219C74CD8);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_21938DDA4()
{
  result = qword_27CC195F0;
  if (!qword_27CC195F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC195F0);
  }

  return result;
}

uint64_t sub_21938DDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightsTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21938DE5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21938DDA4();
    v7 = a3(a1, &type metadata for HighlightsTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21938DEC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21938DF1C()
{
  result = qword_27CC19600;
  if (!qword_27CC19600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19600);
  }

  return result;
}

unint64_t sub_21938DF74()
{
  result = qword_27CC19608;
  if (!qword_27CC19608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19608);
  }

  return result;
}

unint64_t sub_21938DFCC()
{
  result = qword_27CC19610;
  if (!qword_27CC19610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19610);
  }

  return result;
}

double sub_21938E044(uint64_t a1)
{
  sub_21896FA3C(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = *(v1 + 64);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 56) = 0;
  v12 = sub_219BDFA44();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = v10;
  sub_2187B14CC(v34, &v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v30 + 1))
  {
    sub_21875F93C(&v29, v31);
    v13 = qword_280ED32D0;

    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_280ED32D8;
    v14 = qword_280ED32E0;
    v16 = qword_280ED32E8;

    sub_2188202A8(v14);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {

    sub_2187448D0(&v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v15 = qword_280ED32D8;
    v14 = qword_280ED32E0;
    v16 = qword_280ED32E8;

    sub_2188202A8(v14);
  }

  v28 = v11;
  v30 = 0u;
  v29 = 0u;
  sub_2189B4E2C(v9, v6);
  sub_2187B14CC(v36, v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v18 = (v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 47) & 0xFFFFFFFFFFFFFFF8;
  v27 = v9;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  sub_2189B4EAC(v6, v20 + v17);
  v21 = v20 + v18;
  v22 = v31[1];
  *v21 = v31[0];
  *(v21 + 16) = v22;
  *(v21 + 32) = v32;
  v23 = (v20 + v19);
  v24 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v23 = 0;
  v23[1] = 0;
  *v24 = v15;
  v24[1] = v14;
  v24[2] = v16;

  sub_2188202A8(v14);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v14, v16);
  sub_2187448D0(v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v27);
  sub_2187448D0(&v29, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

double sub_21938E5E8(uint64_t a1)
{
  sub_21896FA3C(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = *(v1 + 64);
  v11 = *(a1 + 16);
  v12 = objc_allocWithZone(type metadata accessor for FeedViewContext(0));
  swift_unknownObjectRetain();
  v13 = [v12 init];
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  *(v14 + 32) = MEMORY[0x277D84F90];
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0;
  *(v14 + 96) = -1;
  v15 = v14 | 0x2000000000000006;
  v16 = *(v1 + 72);
  v17 = sub_219BDFA44();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_218718690(v1 + 80, v43);
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = v10;
  sub_2187B14CC(v41, &v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v37)
  {
    sub_21875F93C(&v36, v38);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v19 = qword_280ED32D8;
    v18 = qword_280ED32E0;
    v20 = qword_280ED32E8;

    v33 = v18;
    sub_2188202A8(v18);
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_2187448D0(&v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v19 = qword_280ED32D8;
    v21 = qword_280ED32E0;
    v20 = qword_280ED32E8;

    v33 = v21;
    sub_2188202A8(v21);
  }

  v35 = v15;
  v37 = sub_219BDD274();
  *&v36 = v16;
  sub_2189B4E2C(v9, v6);
  sub_2187B14CC(v43, v38, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v22 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v23 = (v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v9;
  v24 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v16;
  sub_2189B4EAC(v6, v25 + v22);
  v26 = v25 + v23;
  v27 = v38[1];
  *v26 = v38[0];
  *(v26 + 16) = v27;
  *(v26 + 32) = v39;
  v28 = (v25 + v24);
  v29 = (v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v28 = 0;
  v28[1] = 0;
  v30 = v33;
  *v29 = v19;
  v29[1] = v30;
  v29[2] = v20;
  swift_retain_n();

  sub_2188202A8(v30);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v30, v20);
  sub_2187448D0(v41, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v43, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v34);
  sub_2187448D0(&v36, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

uint64_t sub_21938EC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v4 = type metadata accessor for AudioHistoryFeedLayoutSectionDescriptor.Footer(0);
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v39 - v7;
  v8 = sub_219BF00D4();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AudioHistoryFeedLayoutSectionDescriptor.Header(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v18 = sub_219BE9834();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189BD3EC(0);
  sub_219BE8184();
  v22 = v48;
  v47 = v49;
  v42 = v50;
  sub_219BE95F4();
  v23 = (*(v19 + 88))(v21, v18);
  if (v23 == *MEMORY[0x277D6E758])
  {
    v24 = sub_219BE9604();
    if ((v24 & 0x8000000000000000) == 0)
    {
      if (v24 < *(v22 + 16))
      {
        sub_21938F2D0(v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, v17, type metadata accessor for AudioHistoryFeedLayoutSectionDescriptor.Header);
        sub_21938F2D0(v17, v14, type metadata accessor for AudioHistoryFeedLayoutSectionDescriptor.Header);
        v26 = v45;
        v25 = v46;
        (*(v45 + 32))(v10, v14, v46);
        __swift_project_boxed_opaque_existential_1((v43 + 16), *(v43 + 40));
        v27 = sub_219BF0234();

        (*(v26 + 8))(v10, v25);
        v28 = v17;
        v29 = type metadata accessor for AudioHistoryFeedLayoutSectionDescriptor.Header;
LABEL_10:
        sub_21938F338(v28, v29);
        return v27;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v23 == *MEMORY[0x277D6E750])
  {
    v30 = sub_219BE9604();
    v31 = *(v22 + 16);
    v32 = __OFSUB__(v30, v31);
    v33 = v30 - v31;
    if (!v32)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        if (v33 < *(v47 + 16))
        {
          v34 = v41;
          sub_21938F2D0(v47 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33, v41, type metadata accessor for AudioHistoryFeedLayoutSectionDescriptor.Footer);
          v35 = v40;
          sub_21938F2D0(v34, v40, type metadata accessor for AudioHistoryFeedLayoutSectionDescriptor.Footer);
          v37 = v45;
          v36 = v46;
          (*(v45 + 32))(v10, v35, v46);
          __swift_project_boxed_opaque_existential_1((v43 + 16), *(v43 + 40));
          v27 = sub_219BF0234();

          (*(v37 + 8))(v10, v36);
          v28 = v34;
          v29 = type metadata accessor for AudioHistoryFeedLayoutSectionDescriptor.Footer;
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_21938F2D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21938F338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SectionSupergroupConfig.themes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionSupergroupConfig(0) + 20);
  sub_218A42400(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SectionSupergroupConfig(uint64_t a1)
{
  result = qword_27CC19658;
  if (!qword_27CC19658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double SectionSupergroupConfig.selectors.getter()
{
  type metadata accessor for SectionSupergroupConfig(0);

  return result;
}

uint64_t sub_21938F49C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x73656D656874;
  if (v2 != 1)
  {
    v4 = 0x726F7463656C6573;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x69747265706F7270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007365;
  }

  v7 = 0xE600000000000000;
  v8 = 0x73656D656874;
  if (*a2 != 1)
  {
    v8 = 0x726F7463656C6573;
    v7 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x69747265706F7270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000007365;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21938F5A0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21938F648(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21938F6DC(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_21938F780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_219390664(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21938F7B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007365;
  v4 = 0xE600000000000000;
  v5 = 0x73656D656874;
  if (v2 != 1)
  {
    v5 = 0x726F7463656C6573;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69747265706F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21938F814()
{
  v1 = 0x73656D656874;
  if (*v0 != 1)
  {
    v1 = 0x726F7463656C6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69747265706F7270;
  }
}

unint64_t sub_21938F874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219390664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21938F89C(uint64_t a1)
{
  v2 = sub_21938FF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21938F8D8(uint64_t a1)
{
  v2 = sub_21938FF20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SectionSupergroupConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_218A42400(0);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SectionSupergroupConfig(0);
  MEMORY[0x28223BE20](v39);
  v41 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21938FF74(0, &unk_280E8FF30, sub_218A42400, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  sub_219390300(0, &qword_27CC19618, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21938FF20();
  v45 = v16;
  v17 = v46;
  sub_219BF7B34();
  if (v17)
  {
    v23 = a1;
  }

  else
  {
    v37 = v8;
    v38 = v11;
    v18 = v14;
    v46 = a1;
    v20 = v42;
    v19 = v43;
    v21 = v44;
    sub_21938FF74(0, &qword_27CC19628, MEMORY[0x277D334E0], MEMORY[0x277D83940]);
    LOBYTE(v48) = 0;
    sub_219390364(&qword_27CC19630, &qword_27CC19638, MEMORY[0x277D334F0], MEMORY[0x277D83978]);
    sub_219BF76E4();
    v22 = v49;
    LOBYTE(v48) = 1;
    sub_2186DED7C(&qword_280E8FF48, sub_218A42400, MEMORY[0x277D342B0]);
    sub_219BF76E4();
    v36 = v22;
    sub_2186E2394();
    v47 = 2;
    sub_218B9F868(&qword_280E8E9B8, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_219BF76E4();
    v34 = v48;
    v35 = v13;
    v25 = MEMORY[0x277D84F90];
    v26 = v37;
    if (v36)
    {
      v25 = v36;
    }

    *v41 = v25;
    sub_219300080(v38, v26);
    v27 = *(v19 + 48);
    if (v27(v26, 1, v21) == 1)
    {
      v36 = sub_219BF1944();
      sub_2186DED7C(&unk_280E907F0, MEMORY[0x277D33498], MEMORY[0x277D33490]);
      sub_219BF4064();
      v28 = v27(v26, 1, v21);
      v29 = v20;
      if (v28 != 1)
      {
        sub_219300008(v26);
      }
    }

    else
    {
      v29 = v20;
      (*(v19 + 32))(v20, v26, v21);
    }

    v30 = v39;
    v31 = v41;
    (*(v19 + 32))(v41 + *(v39 + 20), v29, v21);
    sub_219300008(v38);
    (*(v18 + 8))(v45, v35);
    v32 = MEMORY[0x277D84FA0];
    if (v34)
    {
      v32 = v34;
    }

    *(v31 + *(v30 + 24)) = v32;
    sub_21938FFD8(v31, v40);
    v23 = v46;
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

unint64_t sub_21938FF20()
{
  result = qword_27CC19620;
  if (!qword_27CC19620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19620);
  }

  return result;
}

void sub_21938FF74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21938FFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionSupergroupConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SectionSupergroupConfig.encode(to:)(void *a1)
{
  v3 = v1;
  sub_219390300(0, &qword_27CC19640, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21938FF20();
  sub_219BF7B44();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_21938FF74(0, &qword_27CC19628, MEMORY[0x277D334E0], MEMORY[0x277D83940]);
  sub_219390364(&qword_27CC19648, &qword_27CC19650, MEMORY[0x277D334E8], MEMORY[0x277D83948]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SectionSupergroupConfig(0);
    LOBYTE(v13) = 1;
    sub_218A42400(0);
    sub_2186DED7C(&qword_27CC18AF0, sub_218A42400, MEMORY[0x277D342A8]);
    sub_219BF7834();
    v13 = *(v3 + *(v10 + 24));
    HIBYTE(v12) = 2;
    sub_2186E2394();
    sub_218B9F868(&unk_280E8E9D0, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_219390300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21938FF20();
    v7 = a3(a1, &type metadata for SectionSupergroupConfig.Keys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219390364(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_21938FF74(255, &qword_27CC19628, MEMORY[0x277D334E0], MEMORY[0x277D83940]);
    sub_2186DED7C(a2, MEMORY[0x277D334E0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_219390480(uint64_t a1)
{
  sub_21938FF74(319, &qword_27CC19628, MEMORY[0x277D334E0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_218A42400(319);
    if (v2 <= 0x3F)
    {
      sub_2186E2394();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_219390560()
{
  result = qword_27CC19668;
  if (!qword_27CC19668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19668);
  }

  return result;
}

unint64_t sub_2193905B8()
{
  result = qword_27CC19670;
  if (!qword_27CC19670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19670);
  }

  return result;
}

unint64_t sub_219390610()
{
  result = qword_27CC19678;
  if (!qword_27CC19678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19678);
  }

  return result;
}

unint64_t sub_219390664(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_2193906B0(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(v5 + 6);
  sub_2193955F0(v13);
  os_unfair_lock_unlock(v5 + 6);
  if (v13[0])
  {
    if (qword_27CC085C0 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_27CCD8AE0);

    v8 = sub_219BE5414();
    v9 = sub_219BF61F4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13[0] = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_2186D1058(a1, a2, v13);
      _os_log_impl(&dword_2186C1000, v8, v9, "Cannot start a cooking session for %{public}s.  Already cooking.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CECF960](v11, -1, -1);
      MEMORY[0x21CECF960](v10, -1, -1);
    }
  }

  else
  {
    v12 = *(v2 + 40);
    MEMORY[0x28223BE20](v6);
    os_unfair_lock_lock((v12 + 24));
    sub_219395650((v12 + 16));
    os_unfair_lock_unlock((v12 + 24));
    sub_21939099C(a1, a2);
  }
}

uint64_t sub_2193908AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  if (!v7 || ((v8 = (*a1 + 16 + 16 * v7), result = *v8, *v8 == a2) ? (v10 = v8[1] == a3) : (v10 = 0), !v10 && (result = sub_219BF78F4(), (result & 1) == 0)))
  {

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_218840D24(0, v7 + 1, 1, v6);
      v6 = result;
    }

    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_218840D24((v11 > 1), v12 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 16 * v12;
    *(v13 + 32) = a2;
    *(v13 + 40) = a3;
    *a1 = v6;
  }

  return result;
}

void sub_21939099C(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 6);
  sub_219395768(&v14);
  os_unfair_lock_unlock(v5 + 6);
  if (v14)
  {

    v6 = sub_219BDD224();
    MEMORY[0x28223BE20](v6);
    v7 = *(v2 + 24);
    MEMORY[0x28223BE20](v8);
    os_unfair_lock_lock(v7 + 6);
    sub_2193957A0();
    os_unfair_lock_unlock(v7 + 6);
    sub_219BDD154();
  }

  else
  {
    if (qword_27CC085C0 != -1)
    {
      swift_once();
    }

    v9 = sub_219BE5434();
    __swift_project_value_buffer(v9, qword_27CCD8AE0);

    v10 = sub_219BE5414();
    v11 = sub_219BF61F4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_2186D1058(a1, a2, &v14);
      _os_log_impl(&dword_2186C1000, v10, v11, "Missing base tracker when starting cooking mode for %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x21CECF960](v13, -1, -1);
      MEMORY[0x21CECF960](v12, -1, -1);
    }
  }
}

void sub_219390C74(uint64_t a1, unint64_t a2)
{
  sub_219390F28(a1, a2);

  sub_219390E4C(v2);
}

void sub_219390E4C(void *a1)
{
  v2 = a1[5];
  os_unfair_lock_lock((v2 + 24));
  sub_21939543C((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  v3 = a1[3];
  os_unfair_lock_lock(v3 + 6);
  sub_2191870E8();
  os_unfair_lock_unlock(v3 + 6);
  v4 = a1[2];
  os_unfair_lock_lock((v4 + 24));
  sub_219394C58(*(v4 + 16));
  v6 = v5;

  *(v4 + 16) = v6;
  os_unfair_lock_unlock((v4 + 24));
}

void sub_219390F28(uint64_t a1, unint64_t a2)
{
  sub_2187A4DA8(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-v7];
  v23 = a1;
  v24 = a2;
  v9 = *(v2 + 24);
  v20 = sub_219395460;
  v21 = &v22;
  os_unfair_lock_lock(v9 + 6);
  sub_219395468(&v25);
  if (v3)
  {
    os_unfair_lock_unlock(v9 + 6);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v9 + 6);
    v10 = v25;
    if (v25)
    {
      v11 = sub_219BF5BF4();
      (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v2;
      v12[5] = a1;
      v12[6] = a2;
      v12[7] = v10;

      sub_218AB3D80(0, 0, v8, &unk_219C75428, v12);
    }

    else
    {
      if (qword_27CC085C0 != -1)
      {
        swift_once();
      }

      v13 = sub_219BE5434();
      __swift_project_value_buffer(v13, qword_27CCD8AE0);

      v14 = sub_219BE5414();
      v15 = sub_219BF61F4();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v25 = v17;
        *v16 = 136446210;
        *(v16 + 4) = sub_2186D1058(a1, a2, &v25);
        _os_log_impl(&dword_2186C1000, v14, v15, "Missing session when stopping cooking mode for %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x21CECF960](v17, -1, -1);
        MEMORY[0x21CECF960](v16, -1, -1);
      }

      sub_219394FFC();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_219391224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(*a1 + 16) && (sub_21870F700(a2, a3), (v5 & 1) != 0))
  {
  }

  else
  {
    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t sub_219391278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_21939129C, 0, 0);
}

uint64_t sub_21939129C()
{
  v1 = v0[2];
  v3 = v1[10];
  v2 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_219391360;
  v6 = v0[3];
  v5 = v0[4];

  return MEMORY[0x282192280](v6, v5, v3, v2);
}

uint64_t sub_219391360(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_219391540;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_21939148C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21939148C()
{
  v1 = *(v0 + 56);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  sub_219BDD154();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_219391540()
{
  *(swift_allocObject() + 16) = 0;
  sub_219BDD154();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193915DC(int a1, id a2)
{
  if (a2)
  {
    v2 = [a2 eventAggregationPersonalizationData];
    if (v2)
    {
      v3 = v2;
      sub_219BDBA04();
    }
  }

  sub_219BDFF54();
  v5[3] = sub_219BE04B4();
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_219BE04A4();
  sub_21939555C(&qword_27CC19688, MEMORY[0x277D2E260], MEMORY[0x277D2E258]);
  sub_219BDCCE4();
  return sub_2193952EC(v5, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186D0C48);
}

void sub_219391718(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 32);
  os_unfair_lock_lock(v5 + 6);
  sub_219395780(v13);
  os_unfair_lock_unlock(v5 + 6);
  if (v13[0])
  {
    if (qword_27CC085C0 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_27CCD8AE0);

    v8 = sub_219BE5414();
    v9 = sub_219BF61F4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13[0] = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_2186D1058(a1, a2, v13);
      _os_log_impl(&dword_2186C1000, v8, v9, "Cannot start an add to grocery list session for %{public}s. Already adding recipe.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CECF960](v11, -1, -1);
      MEMORY[0x21CECF960](v10, -1, -1);
    }
  }

  else
  {
    v12 = *(v2 + 48);
    MEMORY[0x28223BE20](v6);
    os_unfair_lock_lock(v12 + 6);
    sub_219395414(&v12[4]);
    os_unfair_lock_unlock(v12 + 6);
    sub_219391B34(a1, a2);
  }
}

void sub_21939191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for CookingKitExternalTracker.GroceryListRecipe(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(*a1 + 16);
  if (!v16 || ((v17 = (v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * (v16 - 1)), *v17 == a2) ? (v18 = v17[1] == a3) : (v18 = 0), !v18 && (v26 = a1, v19 = v12, v20 = sub_219BF78F4(), v12 = v19, v5 = v4, a1 = v26, (v20 & 1) == 0)))
  {
    v27 = v5;
    v21 = *(v12 + 20);
    v22 = sub_219BDAED4();
    (*(*(v22 - 8) + 16))(&v14[v21], a4, v22);
    *v14 = a2;
    *(v14 + 1) = a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_2191FAA24(0, v16 + 1, 1, v15);
    }

    v24 = v15[2];
    v23 = v15[3];
    if (v24 >= v23 >> 1)
    {
      v15 = sub_2191FAA24((v23 > 1), v24 + 1, 1, v15);
    }

    v15[2] = v24 + 1;
    sub_2193953B0(v14, v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24);
    *a1 = v15;
  }
}

void sub_219391B34(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 6);
  sub_219395768(&v14);
  os_unfair_lock_unlock(v5 + 6);
  if (v14)
  {
    MEMORY[0x28223BE20](v6);
    v7 = *(v2 + 32);
    MEMORY[0x28223BE20](v8);

    os_unfair_lock_lock(v7 + 6);
    sub_2193957A0();
    os_unfair_lock_unlock(v7 + 6);
    sub_219BDD154();
  }

  else
  {
    if (qword_27CC085C0 != -1)
    {
      swift_once();
    }

    v9 = sub_219BE5434();
    __swift_project_value_buffer(v9, qword_27CCD8AE0);

    v10 = sub_219BE5414();
    v11 = sub_219BF61F4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_2186D1058(a1, a2, &v14);
      _os_log_impl(&dword_2186C1000, v10, v11, "Missing base tracker when starting an add to grocery list session for %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x21CECF960](v13, -1, -1);
      MEMORY[0x21CECF960](v12, -1, -1);
    }
  }
}

void sub_219391D8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  sub_21948E454(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v9;
}

uint64_t sub_219391E60(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(0);
  sub_21939555C(a3, a4, a5);
  return sub_219BDCCD4();
}

void sub_219391ED4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_2193921AC(a1, a2, a3);

  sub_21939210C(v3);
}

void sub_21939210C(uint64_t a1)
{
  v2 = *(a1 + 48);
  os_unfair_lock_lock(v2 + 6);
  sub_2193957A0();
  os_unfair_lock_unlock(v2 + 6);
  v3 = *(a1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_219394C58(*(v3 + 16));
  v5 = v4;

  *(v3 + 16) = v5;
  os_unfair_lock_unlock((v3 + 24));
}

void sub_2193921AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v38 = a3;
  v44 = sub_219BDAEC4();
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v37 = v7;
  v43 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187A4DA8(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v34 - v9;
  v45 = sub_219BDAED4();
  v39 = *(v45 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = a1;
  v49 = a1;
  v50 = a2;
  v15 = *(v3 + 32);
  v46 = sub_219394FF4;
  v47 = &v48;
  os_unfair_lock_lock(v15 + 6);
  sub_219395768(&v51);
  if (v4)
  {
    os_unfair_lock_unlock(v15 + 6);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v15 + 6);
    v17 = v51;
    if (v51)
    {
      v35 = v3;
      v18 = *(v3 + 48);
      MEMORY[0x28223BE20](v16);
      *(&v34 - 2) = v14;
      *(&v34 - 1) = v19;
      v36 = v19;

      os_unfair_lock_lock((v18 + 24));
      sub_219395050((v18 + 16), v13);
      os_unfair_lock_unlock((v18 + 24));
      v28 = sub_219BF5BF4();
      (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
      v29 = v39;
      (*(v39 + 16))(v41, v13, v45);
      v34 = v13;
      v30 = v40;
      (*(v40 + 16))(v43, v38, v44);
      v31 = (*(v29 + 80) + 64) & ~*(v29 + 80);
      v32 = (v10 + *(v30 + 80) + v31) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 2) = 0;
      *(v33 + 3) = 0;
      *(v33 + 4) = v35;
      *(v33 + 5) = v14;
      *(v33 + 6) = v36;
      *(v33 + 7) = v17;
      (*(v29 + 32))(&v33[v31], v41, v45);
      (*(v30 + 32))(&v33[v32], v43, v44);

      sub_218AB3D80(0, 0, v42, &unk_219C75418, v33);

      (*(v29 + 8))(v34, v45);
    }

    else
    {
      if (qword_27CC085C0 != -1)
      {
        swift_once();
      }

      v20 = sub_219BE5434();
      __swift_project_value_buffer(v20, qword_27CCD8AE0);

      v21 = sub_219BE5414();
      v22 = sub_219BF61F4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = v14;
        v24 = a2;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v51 = v26;
        *v25 = 136446210;
        *(v25 + 4) = sub_2186D1058(v23, v24, &v51);
        _os_log_impl(&dword_2186C1000, v21, v22, "Missing session when stopping add to grocery list for recipeID %{public}s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x21CECF960](v26, -1, -1);
        MEMORY[0x21CECF960](v25, -1, -1);
      }

      sub_219394FFC();
      swift_allocError();
      *v27 = 0;
      swift_willThrow();
    }
  }
}

void sub_219392744(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  if (*(*a1 + 16) && (v8 = sub_21870F700(a2, a3), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  sub_2199D6788(0, a2, a3);
  *a4 = v10;
}

uint64_t sub_2193927D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v30 = type metadata accessor for CookingKitExternalTracker.GroceryListRecipe(0);
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = *a1;
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    while (v18 < *(v16 + 16))
    {
      sub_21939534C(v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v9);
      v19 = *v9 == a2 && v9[1] == a3;
      if (v19 || (sub_219BF78F4() & 1) != 0)
      {
        sub_2193953B0(v9, v12);
        sub_2193953B0(v12, v15);
        v27 = *(v30 + 20);
        v28 = sub_219BDAED4();
        (*(*(v28 - 8) + 16))(v31, &v15[v27], v28);
        return sub_219394F98(v15);
      }

      ++v18;
      sub_219394F98(v9);
      if (v17 == v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (qword_27CC085C0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v20 = sub_219BE5434();
  __swift_project_value_buffer(v20, qword_27CCD8AE0);

  v21 = sub_219BE5414();
  v22 = sub_219BF61F4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_2186D1058(a2, a3, &v32);
    _os_log_impl(&dword_2186C1000, v21, v22, "Missing recipe when stopping add to grocery list for recipeID %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x21CECF960](v24, -1, -1);
    MEMORY[0x21CECF960](v23, -1, -1);
  }

  sub_219394FFC();
  swift_allocError();
  *v25 = 1;
  return swift_willThrow();
}

uint64_t sub_219392B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v15;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_219BDAEC4();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v8[10] = *(v10 + 64);
  v8[11] = swift_task_alloc();
  v11 = sub_219BDAED4();
  v8[12] = v11;
  v12 = *(v11 - 8);
  v8[13] = v12;
  v8[14] = *(v12 + 64);
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219392C40, 0, 0);
}

uint64_t sub_219392C40()
{
  v1 = v0[2];
  v3 = v1[10];
  v2 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_219392D04;
  v6 = v0[3];
  v5 = v0[4];

  return MEMORY[0x282192280](v6, v5, v3, v2);
}

uint64_t sub_219392D04(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_219392FD4;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_219392E30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219392E30()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v16 = v6;
  v17 = v0[17];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  (*(v4 + 16))(v1, v0[6], v3);
  (*(v8 + 16))(v6, v9, v7);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = (v2 + *(v8 + 80) + v10) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v10, v1, v3);
  (*(v8 + 32))(v12 + v11, v16, v7);
  *(v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v13 = v17;
  sub_219BDD154();

  v14 = v0[1];

  return v14();
}

uint64_t sub_219392FD4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  v15 = v7;
  (*(v4 + 16))(v1, v0[6], v3);
  (*(v8 + 16))(v5, v9, v7);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = (v2 + *(v8 + 80) + v10) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v10, v1, v3);
  (*(v8 + 32))(v12 + v11, v5, v15);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
  sub_219BDD154();

  v13 = v0[1];

  return v13();
}

uint64_t sub_21939315C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v71 = a4;
  v62 = a3;
  v74 = a1;
  v65 = sub_219BDAEC4();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v72 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF014();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v56 - v9;
  v10 = sub_219BDF004();
  v69 = *(v10 - 8);
  v70 = v10;
  MEMORY[0x28223BE20](v10);
  v68 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDAED4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE1044();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - v21;
  v23 = sub_219BE0D64();
  v60 = *(v23 - 8);
  v61 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a2, v12, v24);
  v27 = (*(v13 + 88))(v15, v12);
  if (v27 == *MEMORY[0x277CFCD60])
  {
    v28 = MEMORY[0x277D2EE70];
LABEL_9:
    v29 = *v28;
    v30 = *(v17 + 104);
LABEL_10:
    v30(v19, v29, v16);
    goto LABEL_11;
  }

  if (v27 == *MEMORY[0x277CFCD68])
  {
    v28 = MEMORY[0x277D2EE78];
    goto LABEL_9;
  }

  if (v27 == *MEMORY[0x277CFCD58])
  {
    v28 = MEMORY[0x277D2EE68];
    goto LABEL_9;
  }

  if (v27 == *MEMORY[0x277CFCD50])
  {
    v28 = MEMORY[0x277D2EE88];
    goto LABEL_9;
  }

  v30 = *(v17 + 104);
  if (v27 == *MEMORY[0x277CFCD70])
  {
    v29 = *MEMORY[0x277D2EE80];
    goto LABEL_10;
  }

  v30(v19, *MEMORY[0x277D2EE90], v16);
  (*(v13 + 8))(v15, v12);
LABEL_11:
  (*(v17 + 32))(v22, v19, v16);
  sub_219BE0D54();
  sub_2187A4DA8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v32 = v31;
  v33 = sub_219BDCD44();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v57 = *(v34 + 72);
  v59 = v32;
  v36 = swift_allocObject();
  v56 = xmmword_219C09BA0;
  *(v36 + 16) = xmmword_219C09BA0;
  v37 = *MEMORY[0x277CEAD18];
  v38 = *(v34 + 104);
  v38(v36 + v35, v37, v33);
  sub_21939555C(&qword_27CC16F30, MEMORY[0x277D2ECB0], MEMORY[0x277D2ECA8]);
  v58 = "_groceryListRecipes";
  v39 = v61;
  sub_219BDCCC4();

  (*(v60 + 8))(v26, v39);
  v40 = v63;
  v41 = v72;
  v42 = v65;
  (*(v63 + 16))(v72, v62, v65);
  v43 = (*(v40 + 88))(v41, v42);
  if (v43 == *MEMORY[0x277CFCD48])
  {
    v44 = *MEMORY[0x277D2D7B8];
    v46 = v66;
    v45 = v67;
LABEL_15:
    v47 = *(v46 + 104);
    goto LABEL_16;
  }

  v46 = v66;
  v45 = v67;
  if (v43 == *MEMORY[0x277CFCD40])
  {
    v44 = *MEMORY[0x277D2D7C0];
    goto LABEL_15;
  }

  v47 = *(v66 + 104);
  if (v43 != *MEMORY[0x277CFCD38])
  {
    v47(v73, *MEMORY[0x277D2D7C8], v67);
    v55 = v42;
    v48 = v73;
    (*(v40 + 8))(v72, v55);
    goto LABEL_17;
  }

  v44 = *MEMORY[0x277D2D7B0];
LABEL_16:
  v48 = v73;
  v47(v73, v44, v45);
LABEL_17:
  (*(v46 + 32))(v64, v48, v45);
  v49 = v68;
  sub_219BDEFF4();
  v50 = swift_allocObject();
  *(v50 + 16) = v56;
  v38(v50 + v35, v37, v33);
  sub_21939555C(&qword_27CC152C8, MEMORY[0x277D2D7A8], MEMORY[0x277D2D7A0]);
  v51 = v70;
  sub_219BDCCC4();

  (*(v69 + 8))(v49, v51);
  if (v71)
  {
    v52 = [v71 eventAggregationPersonalizationData];
    if (v52)
    {
      v53 = v52;
      sub_219BDBA04();
    }
  }

  sub_219BE0CB4();
  v75[3] = sub_219BE04B4();
  __swift_allocate_boxed_opaque_existential_1(v75);
  sub_219BE04A4();
  sub_21939555C(&qword_27CC16F38, MEMORY[0x277D2EC48], MEMORY[0x277D2EC40]);
  sub_219BDCCE4();
  return sub_2193952EC(v75, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186D0C48);
}

void sub_219393AD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  os_unfair_lock_lock(v9 + 6);
  sub_219395768(&v16);
  os_unfair_lock_unlock(v9 + 6);
  if (v16)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;

    sub_219BDD154();
  }

  else
  {
    if (qword_27CC085C0 != -1)
    {
      swift_once();
    }

    v11 = sub_219BE5434();
    __swift_project_value_buffer(v11, qword_27CCD8AE0);

    v12 = sub_219BE5414();
    v13 = sub_219BF61F4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_2186D1058(a1, a2, &v16);
      _os_log_impl(&dword_2186C1000, v12, v13, "Missing base tracker when opening Reminders grocery list for recipeID %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x21CECF960](v15, -1, -1);
      MEMORY[0x21CECF960](v14, -1, -1);
    }
  }
}

uint64_t sub_219393CD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BE1464();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE1454();
  sub_2187A4DA8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v6 = sub_219BDCD44();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x277CEAD18], v6);
  sub_21939555C(&qword_280EE8020, MEMORY[0x277D2F270], MEMORY[0x277D2F268]);
  sub_219BDCCC4();

  (*(v3 + 8))(v5, v2);
  sub_219BDF334();
  sub_21939555C(&qword_280EE87E8, MEMORY[0x277D2DA10], MEMORY[0x277D2DA08]);
  memset(v11, 0, sizeof(v11));
  sub_219BDCCE4();
  return sub_2193952EC(v11, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186D0C48);
}

uint64_t sub_219393FC0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CookingKitExternalTracker.GroceryListRecipe(uint64_t a1)
{
  result = qword_280EBF1B0;
  if (!qword_280EBF1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219394094(uint64_t a1)
{
  result = sub_219BDAED4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2193941D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2187A4DA8(0, &unk_280EE7110, MEMORY[0x277CEAEA8], MEMORY[0x277D6CEF0]);
  swift_allocObject();

  v6 = sub_219BE2D54();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  sub_21948E5F8(v6, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v8;
}

void sub_2193942B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(*a1 + 16) && (sub_21870F700(a2, a3), (v5 & 1) != 0))
  {

    v6 = sub_219BE2D44();
  }

  else
  {
    v6 = 0;
  }

  *a4 = v6;
}

void sub_219394328()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_2193957A0();
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_21939439C()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_219395768(&v3);
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

double sub_219394414()
{
  v1 = sub_219BDAEC4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  v9 = *(v6 + 16);
  v7 = v6 + 16;
  v8 = v9;
  if (v9)
  {
    v10 = (v7 + 16 * v8);
    v12 = *v10;
    v11 = v10[1];

    os_unfair_lock_unlock((v5 + 24));
    if (v11)
    {

      sub_219390F28(v12, v11);
    }
  }

  else
  {
    os_unfair_lock_unlock((v5 + 24));
  }

  v13 = *(v0 + 48);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v15 - 1;
    v17 = *(type metadata accessor for CookingKitExternalTracker.GroceryListRecipe(0) - 8);
    v18 = (v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v16);
    v20 = *v18;
    v19 = v18[1];
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  os_unfair_lock_unlock((v13 + 24));

  if (v19)
  {
    (*(v2 + 104))(v4, *MEMORY[0x277CFCD48], v1);
    sub_2193921AC(v20, v19, v4);
    (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_219394944(uint64_t a1)
{
  if (!qword_280E8D588)
  {
    sub_2187A4DA8(255, &qword_280E8F0E0, type metadata accessor for CookingKitExternalTracker.GroceryListRecipe, MEMORY[0x277D83940]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_219BF73A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D588);
    }
  }
}

void sub_2193949DC(char **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 2);
  if (v4)
  {
    v6 = &(*a1)[16 * v4 + 16];
    v7 = *v6 == a2 && *(v6 + 1) == a3;
    if (v7 || (sub_219BF78F4() & 1) != 0)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = *(v3 + 2);
        if (v8)
        {
LABEL_9:
          *(v3 + 2) = v8 - 1;

          *a1 = v3;
          return;
        }
      }

      else
      {
        v3 = sub_2194ABAC4(v3);
        v8 = *(v3 + 2);
        if (v8)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }
}

void sub_219394A88(void *a1, uint64_t a2, uint64_t a3)
{

  sub_21870F700(a2, a3);
  v7 = v6;

  if (v7)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v10 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_219495568();
      v9 = v10;
    }

    sub_2194B7E5C();
    *a1 = v9;
  }
}

uint64_t sub_219394B3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v7 = result;
    v8 = v4 - 1;
    v9 = *(type metadata accessor for CookingKitExternalTracker.GroceryListRecipe(0) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = *(v9 + 72);
    v12 = (v3 + v10 + v11 * v8);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (result = sub_219BF78F4(), (result & 1) != 0))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v14 = v3[2];
        if (v14)
        {
LABEL_9:
          v15 = v14 - 1;
          result = sub_219394F98(v3 + v10 + (v14 - 1) * v11);
          v3[2] = v15;
          *v7 = v3;
          return result;
        }
      }

      else
      {
        result = sub_2194ABAEC(v3);
        v3 = result;
        v14 = *(result + 16);
        if (v14)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void sub_219394C58(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_219394F20(v7, v4, v2);
      MEMORY[0x21CECF960](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_219394DB8(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_219394DB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
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

    v14 = sub_219BE2D44();

    if (v14)
    {

      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
LABEL_15:
        sub_218B9E0BC(a1, a2, v18, a3);
        return;
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
      goto LABEL_15;
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
}

void *sub_219394F20(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_219394DB8(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_219394F98(uint64_t a1)
{
  v2 = type metadata accessor for CookingKitExternalTracker.GroceryListRecipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_219394FFC()
{
  result = qword_27CC19680;
  if (!qword_27CC19680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19680);
  }

  return result;
}

uint64_t sub_21939506C(uint64_t a1)
{
  v3 = *(sub_219BDAED4() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  sub_219BDAEC4();
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2187609C8;

  return sub_219392B04(a1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t sub_2193951EC(uint64_t a1)
{
  v3 = *(sub_219BDAED4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDAEC4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21939315C(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_2193952EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21939534C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingKitExternalTracker.GroceryListRecipe(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2193953B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CookingKitExternalTracker.GroceryListRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219395480(uint64_t a1)
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
  v10[1] = sub_2187608D4;

  return sub_219391278(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21939555C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2193955A8@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(*result + 16))
  {
    result = sub_21870F700(*(v2 + 16), *(v2 + 24));
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4 & 1;
  return result;
}

void *sub_219395608@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

void *sub_2193956A8@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

unint64_t sub_219395710()
{
  result = qword_27CC19690;
  if (!qword_27CC19690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19690);
  }

  return result;
}

uint64_t sub_2193957B8(uint64_t a1)
{
  sub_218747C64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v50 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v3;
  MEMORY[0x28223BE20](v4);
  v53 = &v49 - v5;
  v58 = sub_219BE22B4();
  v6 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = sub_219BE22F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  sub_218747C64(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v57 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v19 = *(v13 + 8);
  v19(v18, v12);
  v54 = sub_219BE22C4();
  v21 = v20;
  v22 = *(v6 + 8);
  v23 = v11;
  v24 = v58;
  v22(v23, v58);
  v56 = v21;
  if (!v21)
  {
    return 0;
  }

  sub_219BE2594();
  sub_219BE22D4();
  v19(v15, v12);
  v25 = sub_219BE22C4();
  v27 = v26;
  v22(v8, v24);
  if (v27)
  {
    v28 = v55;
    __swift_project_boxed_opaque_existential_1((v55 + 24), *(v55 + 48));
    v29 = v54;
    v30 = v56;
    if (sub_219BDE534())
    {

      swift_getObjectType();
      sub_219BDDB44();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = *(v28 + 16);
      v33 = swift_allocObject();
      *(v33 + 16) = v25;
      *(v33 + 24) = v27;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      v34 = v33 | 6;
      v35 = sub_219BDFA44();
      v36 = v53;
      (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
      v68 = 0;
      memset(v67, 0, sizeof(v67));
      v66 = 0;
      memset(v65, 0, sizeof(v65));
      v64 = v32;
      sub_2187B15C0(v65, &v60, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (*(&v61 + 1))
      {
        sub_21875F93C(&v60, v62);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v38 = qword_280ED32D8;
        v37 = qword_280ED32E0;
        v39 = qword_280ED32E8;

        sub_2188202A8(v37);
        __swift_destroy_boxed_opaque_existential_1(v62);
      }

      else
      {
        sub_2187449F0(&v60, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v38 = qword_280ED32D8;
        v37 = qword_280ED32E0;
        v39 = qword_280ED32E8;

        sub_2188202A8(v37);
      }

      v59 = v34;
      v61 = 0u;
      v60 = 0u;
      v40 = v52;
      sub_2187B15C0(v36, v52, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
      sub_2187B15C0(v67, v62, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      v41 = (*(v50 + 80) + 24) & ~*(v50 + 80);
      v42 = (v51 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = (v42 + 47) & 0xFFFFFFFFFFFFFFF8;
      v44 = swift_allocObject();
      *(v44 + 16) = 0;
      sub_2189B4EAC(v40, v44 + v41);
      v45 = v44 + v42;
      v46 = v62[1];
      *v45 = v62[0];
      *(v45 + 16) = v46;
      *(v45 + 32) = v63;
      v47 = (v44 + v43);
      v48 = (v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v47 = 0;
      v47[1] = 0;
      *v48 = v38;
      v48[1] = v37;
      v48[2] = v39;

      sub_2188202A8(v37);
      sub_2186CF94C(0);
      sub_2193962DC(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
      sub_219BEB464();

      sub_2187FABEC(v37, v39);
      sub_2187449F0(v65, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187449F0(v67, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_2187449F0(v53, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
      sub_2187449F0(&v60, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    }

    return 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2193961F4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_2193962DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_219396324()
{
  v22 = sub_219BE9C04();
  v0 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v2 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BDF074();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1544();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BE1524();
  v10 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v23 + 16);
  v13 = sub_219BE9924();
  v21[0] = v14;
  v21[1] = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D2F3C0], v6);
  sub_219BE9934();
  v15 = (*(v0 + 88))(v2, v22);
  if (v15 == *MEMORY[0x277D6E830])
  {
    v16 = MEMORY[0x277D2D868];
  }

  else
  {
    if (v15 != *MEMORY[0x277D6E840] && v15 != *MEMORY[0x277D6E848] && v15 != *MEMORY[0x277D6E838])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    v16 = MEMORY[0x277D2D810];
  }

  (*(v3 + 104))(v5, *v16, v25);
  sub_219BE1514();
  sub_2193970F4(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v19 = v24;
  sub_219BDD1F4();
  (*(v10 + 8))(v12, v19);
  return sub_219BDD134();
}

uint64_t sub_219396714()
{
  sub_219BE17A4();
  sub_2193970F4(&qword_280EE7F30, MEMORY[0x277D2F910], MEMORY[0x277D2F908]);
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_2187457CC(v1, sub_21880702C);
}

uint64_t sub_2193967C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v62 = a1;
  v4 = sub_219BDBD34();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF1E4();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE1444();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v50 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189DADA8(0);
  v11 = v10;
  v61 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219397070(0, &qword_27CC0AF58, MEMORY[0x277D6EC60]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = v45 - v17;
  sub_219396FFC(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219397070(0, &qword_27CC0AF28, MEMORY[0x277D6D710]);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v63 = v45 - v25;
  sub_219397070(0, &qword_27CC16398, MEMORY[0x277D6DA48]);
  v27 = v26;
  sub_219BE7594();
  v51 = v27;
  v58 = a2;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v61 + 8))(v13, v11);
  sub_219BEB244();

  (*(v16 + 8))(v18, v15);
  if ((*(v24 + 48))(v21, 1, v23) == 1)
  {
    return sub_2187457CC(v21, sub_219396FFC);
  }

  v47 = v24;
  v48 = v23;
  (*(v24 + 32))(v63, v21, v23);
  v29 = [*(v49 + 16) identifier];
  sub_219BF5414();

  v30 = v50;
  sub_219BE1424();
  sub_2187F3258(0);
  v61 = v31;
  v32 = sub_219BDCD44();
  v33 = *(v32 - 8);
  v49 = *(v33 + 72);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  v46 = xmmword_219C09BA0;
  *(v35 + 16) = xmmword_219C09BA0;
  v36 = *MEMORY[0x277CEAD18];
  v37 = *(v33 + 104);
  v37(v35 + v34, v36, v32);
  v45[1] = "vigationTracker.swift";
  sub_2193970F4(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v38 = v53;
  sub_219BDCCC4();

  (*(v52 + 8))(v30, v38);
  sub_219BE6944();
  v39 = v54;
  sub_219BDF1C4();
  v40 = swift_allocObject();
  *(v40 + 16) = v46;
  v37(v40 + v34, v36, v32);
  sub_2193970F4(&unk_280EE8840, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
  v41 = v56;
  sub_219BDCCC4();

  (*(v55 + 8))(v39, v41);
  sub_219BDFEC4();
  v42 = v57;
  sub_219BE75A4();
  sub_2193970F4(&unk_280EE8520, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
  sub_219BDCC64();
  v43 = v60;
  v44 = *(v59 + 8);
  v44(v42, v60);
  sub_219BE7574();
  sub_219BDCC74();
  v44(v42, v43);
  return (*(v47 + 8))(v63, v48);
}

void sub_219396FFC(uint64_t a1)
{
  if (!qword_27CC19698)
  {
    sub_219397070(255, &qword_27CC0AF28, MEMORY[0x277D6D710]);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC19698);
    }
  }
}

void sub_219397070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SportsNavigationSectionDescriptor;
    v8[1] = &type metadata for SportsNavigationModel;
    v8[2] = sub_2189520BC();
    v8[3] = sub_218952110();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2193970F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_21939713C()
{
  v1 = OBJC_IVAR____TtC7NewsUI223SavedFeedViewController____lazy_storage___clearButton;
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController____lazy_storage___clearButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController____lazy_storage___clearButton];
  }

  else
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v20[3] = ObjectType;
    v20[0] = v0;
    v7 = v0;
    v8 = sub_219BF53D4();

    if (ObjectType)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v20, ObjectType);
      v10 = *(ObjectType - 8);
      v11 = MEMORY[0x28223BE20](v9);
      v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_219BF78D4();
      (*(v10 + 8))(v13, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      v14 = 0;
    }

    v15 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v16 = [v15 initWithTitle:v8 style:0 target:v14 action:{sel_clearSaved, v20[0]}];

    swift_unknownObjectRelease();
    v17 = *&v0[v1];
    *&v0[v1] = v16;
    v3 = v16;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

id sub_219397500()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_blueprintViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = result;
  [result bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v6 setFrame_];
  sub_219BE8664();
  v16 = sub_219BE7BC4();

  sub_218807578(0);
  sub_2186E8B4C(&qword_280E90610, 255, sub_218807578, MEMORY[0x277D33560]);
  sub_219BF6C74();

  sub_219BE8664();
  v17 = sub_219BE7BC4();

  [v1 setContentScrollView:v17 forEdge:15];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v20 = sub_219BF53D4();

  [v1 setTitle_];

  v21 = sub_219BF65B4();
  v22 = [v1 title];
  [v21 setTitle_];

  if ((sub_219BF6564() & 1) == 0)
  {
    v23 = sub_219BF65B4();
    v24 = sub_21939713C();
    [v23 setRightBarButtonItem_];
  }

  v25 = [v1 traitCollection];
  sub_219399E6C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2186E8B4C(&qword_280EC39F8, v26, type metadata accessor for SavedFeedViewController, &unk_219C75618);
  sub_2186E8B4C(&qword_280EC39F0, v27, type metadata accessor for SavedFeedViewController, &unk_219C757F4);

  sub_219BEEA54();
}

uint64_t sub_21939797C()
{
  v0 = sub_219BEDA44();
  MEMORY[0x28223BE20](v0);
  sub_219BEDA34();
  sub_2186E8B4C(&qword_280E92580, 255, MEMORY[0x277D31D00], MEMORY[0x277D31CF8]);
  return sub_219BF1C54();
}

void sub_219397A70(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_blueprintViewController);

    sub_219BE8664();
    v4 = sub_219BE7BC4();

    [v4 reloadData];
  }
}

void sub_219397C48(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE7C14();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25.receiver = v2;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, sel_viewWillAppear_, a1 & 1, v7);
  v10 = [v2 view];
  if (v10)
  {
    v11 = v10;
    v12 = sub_219BF6C14();

    if (v12)
    {

      sub_219BE8664();
      v13 = sub_219BE7BC4();

      sub_219BF6C34();
    }

    sub_219BE8694();
    sub_219BE20E4();

    if ((v24 & 1) == 0)
    {
      sub_219BE8664();
      v14 = sub_219BE7BC4();

      [v14 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
    }

    v15 = *&v2[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_toolbarManager];
    swift_getObjectType();
    sub_219BE7544();
    sub_219BE5CC4();
    v24 = sub_219BE5CA4();
    v16 = [v2 title];
    if (v16)
    {
      v23 = v15;
      v17 = v6;
      v18 = v5;
      v19 = v16;
      v20 = sub_219BF5414();
      v22 = v21;

      v5 = v18;
      v6 = v17;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    *v9 = v20;
    v9[1] = v22;
    (*(v6 + 104))(v9, *MEMORY[0x277D6DCB0], v5);
    sub_219BE7C24();
    sub_2186E8B4C(&qword_280EE4E50, 255, MEMORY[0x277D6DCC8], MEMORY[0x277D6DCB8]);
    sub_219BE7514();
    (*(v6 + 8))(v9, v5);

    sub_219397F90([*&v2[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_userInfo] markSavedAsViewed]);
  }

  else
  {
    __break(1u);
  }
}

double sub_219397F90(uint64_t a1)
{
  sub_219BEAE34();
  sub_219BEE674();
  v6 = 0;
  v7 = sub_219BEE664();
  v4 = 0u;
  v5 = 0u;
  sub_219BE6A74();

  sub_21939A078(&v4, sub_219149814);

  sub_219BEAE44();
  v1 = sub_219BEE664();
  v6 = 0;
  v7 = v1;
  v4 = 0u;
  v5 = 0u;
  sub_219BE6A74();

  sub_21939A078(&v4, sub_219149814);

  sub_219BEAE54();
  v2 = sub_219BEE664();
  v6 = 0;
  v7 = v2;
  v4 = 0u;
  v5 = 0u;
  sub_219BE6A74();

  sub_21939A078(&v4, sub_219149814);

  return result;
}

id sub_21939814C(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (v5)
    {
      v6 = [v5 windowScene];

      if (v6)
      {
        v7 = [v1 title];
        [v6 setTitle_];
      }
    }

    return sub_219BE7884();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193984E4()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  *v7 = sub_219BF1554();
  v7[1] = v8;
  v9 = sub_219BE5AA4();
  v10 = MEMORY[0x277D6D2E8];
  v7[5] = v9;
  v7[6] = v10;
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_219BE5A94();
  v7[7] = sub_219BF1534();
  v7[8] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219398708()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BE8644();
  sub_2189DA200(0);
  v10 = &v6[*(v9 + 48)];
  v11 = *(v9 + 64);
  sub_219BE66B4();
  v12 = sub_219BE6C74();
  v13 = MEMORY[0x277D6D7C0];
  v10[3] = v12;
  v10[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_219BE6C64();
  v14 = *MEMORY[0x277D6D9C8];
  v15 = sub_219BE73A4();
  (*(*(v15 - 8) + 104))(&v6[v11], v14, v15);
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC90], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECA8], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219398A1C()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219398BF8()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v8 = sub_219BF01B4();
  v9 = __swift_project_value_buffer(v8, qword_280F61940);
  v7[3] = v8;
  v7[4] = sub_2186E8B4C(&qword_280E91000, 255, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v7[5] = v13;
  v7[6] = v15;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_219398F50(uint64_t a1)
{
  sub_219BE8664();
  v1 = sub_219BE7BC4();

  [v1 reloadData];
}

uint64_t sub_219398FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [v4 tabBarSplitViewFocusable];
  if (v7)
  {
    [v7 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  v8 = *&v4[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_eventHandler];
  __swift_project_boxed_opaque_existential_1(v8 + 11, v8[14]);
  sub_218E30550();
  v9 = v8[5];
  ObjectType = swift_getObjectType();
  return (*(v9 + 64))(a2, 0, a4, ObjectType, v9);
}

void sub_219399078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a3, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v11 + 40))(ObjectType, v11);
    return;
  }

  if (v10 == *MEMORY[0x277D6E928])
  {
    v13 = *(v3 + OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_eventHandler);
    v14 = sub_219BF6564();
    v15 = *(v13 + 40);
    v16 = swift_getObjectType();
    (*(v15 + 32))(v14 & 1, v16, v15);
  }

  else
  {
    if (v10 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v10 != *MEMORY[0x277D6E978])
    {
      if (v10 == *MEMORY[0x277D6E930])
      {
        goto LABEL_3;
      }

      if (v10 != *MEMORY[0x277D6E958])
      {
        if (v10 == *MEMORY[0x277D6E970])
        {
          sub_219BE8664();
          v17 = sub_219BE7BC4();

          v18 = [v17 collectionViewLayout];

          [v18 invalidateLayout];
          sub_219BE8664();
          v19 = sub_219BE7BC4();

          [v19 reloadData];
        }

        else
        {
          (*(v6 + 8))(v9, v5);
        }
      }
    }
  }
}

void sub_219399324(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v11 = sub_219BF01B4();
    v12 = __swift_project_value_buffer(v11, qword_280F61940);
    v10[3] = v11;
    v10[4] = sub_2186E8B4C(&qword_280E91000, 255, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v16 = sub_219BF54E4();
    v18 = v17;

    v10[5] = v16;
    v10[6] = v18;
    (*(v8 + 104))(v10, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_219399680()
{
  sub_218985EAC(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A74FF4(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_218E32330(0);
      v13 = type metadata accessor for SavedFeedGapLocation;
      v14 = &v7[*(v15 + 48)];
      goto LABEL_8;
    }

    v9 = type metadata accessor for SavedFeedModel;
LABEL_6:
    v13 = v9;
    v14 = v7;
LABEL_8:
    sub_21939A078(v14, v13);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_218A7535C(0);
    v11 = *(v10 + 48);
    v12 = sub_219BF1584();
    (*(*(v12 - 8) + 8))(&v7[v11], v12);
    v9 = type metadata accessor for SavedFeedGapLocation;
    goto LABEL_6;
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_219BE5F84();
  v17 = sub_219BF4FC4();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v4, v1);
  return v17;
}

double sub_219399978(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_eventHandler) + 88), *(*(v2 + OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_eventHandler) + 112));
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_219BDD154();

  return result;
}

uint64_t sub_219399B40(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a2, ObjectType, v4);
}

void sub_219399BA8(uint64_t a1)
{
  v1 = a1;
  v2 = sub_219BF65B4();
  if (v1)
  {
    sub_219399E20();
    v3 = sub_219BF5904();
    v4 = &selRef_setRightBarButtonItems_;
  }

  else
  {
    v3 = sub_21939713C();
    v4 = &selRef_setRightBarButtonItem_;
  }

  v5 = v3;
  [v2 *v4];
}

uint64_t sub_219399DB0(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218E2F514(a1, v4);
}

unint64_t sub_219399E20()
{
  result = qword_280E8E5D0;
  if (!qword_280E8E5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E5D0);
  }

  return result;
}

void sub_219399E6C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI223SavedFeedViewController_styler], v14);
  v3 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    [v5 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v14);
    v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 setBackgroundColor_];
    [v8 setAlwaysBounceVertical_];
    [v8 setContentInset_];

    v9 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v10 = [v1 navigationItem];
    v11 = *v9;
    if (sub_219BED0C4())
    {
      v12 = [objc_opt_self() clearColor];
    }

    else
    {
      v12 = *(*__swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    }

    v13 = v12;
    sub_219BEDA04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21939A078(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21939A0EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21939A134(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_21939A1A0()
{
  v1 = *(v0 + 8);
  if (*(v0 + 41))
  {
    v2 = [*v0 referringFeedItemIdentifier];
    if (!v2)
    {
      v2 = [v1 referringFeedItemIdentifier];
      if (!v2)
      {
        return 0;
      }
    }

LABEL_6:
    v4 = v2;
    v3 = sub_219BF5414();

    return v3;
  }

  v2 = [*(v0 + 8) referringFeedItemIdentifier];
  if (v2)
  {
    goto LABEL_6;
  }

  return 0;
}

void sub_21939A248(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v10 = HIBYTE(a4);
  if (HIBYTE(a4) - 1 < 2)
  {
    v16 = a1;
    v17 = [v16 backingChannel];
    if (v17)
    {
      if (v10 == 2)
      {
        sub_218B09E88(v8, v7, v6, v5, 2u);
        v7 = 0;
        v6 = 0;
        v18 = 0;
        v19 = 255;
      }

      else
      {
        sub_218CC4CB8(v7, v6, v5);
        sub_218B09E88(v8, v7, v6, v5, 1u);
        v18 = 0;
        v19 = v5;
      }

      goto LABEL_17;
    }

    sub_218B09E88(v8, v7, v6, v5, v10);

LABEL_13:
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v19 = 0;
    v18 = -256;
    goto LABEL_17;
  }

  if (HIBYTE(a4) - 3 >= 2)
  {
    sub_218B09E88(a1, a2, a3, a4, 0);
LABEL_11:
    v17 = 0;
    goto LABEL_13;
  }

  v11 = a1;
  v12 = v7;
  v13 = [v12 backingChannel];
  if (!v13)
  {
    sub_218B09E88(v8, v7, v6, v5, v10);

    goto LABEL_11;
  }

  v14 = v13;
  if (v10 == 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  sub_218B09E88(v8, v7, v6, v5, v15);
  v6 = 0;
  v19 = 0;
  v18 = 511;
  v17 = v8;
  v8 = v7;
  v7 = v14;
LABEL_17:
  *a5 = v17;
  *(a5 + 8) = v8;
  *(a5 + 16) = v7;
  *(a5 + 24) = v6;
  *(a5 + 32) = v19;
  *(a5 + 40) = v18;
}

void sub_21939A434(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      swift_getObjectType();
      v6 = *(v5 + 88);
      v7 = v3;
      v6();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21939A50C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ShortcutsConfig();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC7NewsUI215ShortcutsConfig_onRefresh];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v6[OBJC_IVAR____TtC7NewsUI215ShortcutsConfig_layoutOptionsProvider];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v6[OBJC_IVAR____TtC7NewsUI215ShortcutsConfig_identifier];
  *v9 = 0xD000000000000015;
  *(v9 + 1) = 0x8000000219D1B530;
  swift_beginAccess();
  *v7 = 0;
  *(v7 + 1) = 0;
  v17.receiver = v6;
  v17.super_class = v5;
  swift_unknownObjectRetain();
  v10 = objc_msgSendSuper2(&v17, sel_init);
  v11 = *(v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsPluginConfig);
  *(v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsPluginConfig) = v10;
  v12 = v10;

  v13 = *(v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsModule + 24);
  v14 = *(v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsModule + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsModule), v13);
  v15 = (*(v14 + 8))(v12, v13, v14);

  return v15;
}

uint64_t sub_21939A654(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC7NewsUI216TodayDataManager_sportsOnboardingManager];
  v3 = *(v2 + 3);
  v4 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 8))(v3, v4);
  sub_21882FE00(0, &unk_280EE6BB8, sub_2193A49AC, MEMORY[0x277D6CF30]);
  *(swift_allocObject() + 16) = a1;
  v5 = a1;
  sub_219BE2F54();
  v6 = sub_219BE31C4();

  return v6;
}

uint64_t sub_21939A768(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21882FE00(0, &unk_280E91B50, MEMORY[0x277D320B0], MEMORY[0x277D83D88]);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21939A828, 0, 0);
}

uint64_t sub_21939A828()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_bundleSessionManager + 24);
  v4 = *(v1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_bundleSessionManager + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_bundleSessionManager), v3);
  v5 = [*(v1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_bundleSubscriptionManager) cachedSubscription];
  v0[5] = v5;
  v6 = *MEMORY[0x277D320A0];
  v7 = sub_219BEE644();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_21939A9B0;
  v10 = v0[4];
  v11 = v0[2];

  return MEMORY[0x282192CC0](v11, v5, v10, v3, v4);
}

uint64_t sub_21939A9B0()
{
  v2 = *v1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {

    sub_218710864(v4, &unk_280E91B50, MEMORY[0x277D320B0]);
    v5 = sub_21939ABF8;
  }

  else
  {
    sub_218710864(v4, &unk_280E91B50, MEMORY[0x277D320B0]);

    v5 = sub_21939AB4C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21939AB4C()
{
  v1 = *(v0 + 16);
  v2 = sub_219BF1644();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21939ABF8()
{
  v1 = *(v0 + 16);
  v2 = sub_219BF1644();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

id sub_21939ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  sub_2193A493C(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2193A49AC(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218820178(a1, v10, sub_2193A493C);
  v14 = *v10;
  sub_2188201E0(v10 + *(v8 + 56), v13, sub_2193A49AC);
  v15 = sub_21939AE04(v14, v13, a3, v4);
  sub_218820248(v13, sub_2193A49AC);
  return v15;
}

id sub_21939AE04(uint64_t (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v108 = a3;
  v97 = a2;
  v102 = a1;
  ObjectType = swift_getObjectType();
  v8 = sub_219BDBD34();
  v103 = *(v8 - 8);
  v104 = v8;
  v9 = *(v103 + 64);
  MEMORY[0x28223BE20](v8);
  v100 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v107 = &v93 - v11;
  v12 = sub_219BF0BD4();
  v94 = *(v12 - 8);
  v95 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193A49AC(0);
  MEMORY[0x28223BE20](v15 - 8);
  v96 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v93 - v18;
  v99 = sub_219BF1644();
  v101 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v93 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v98 = &v93 - v22;
  v23 = sub_219BEF424();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE9468 != -1)
  {
    swift_once();
  }

  v105 = sub_2187EA20C(&qword_280ED7580, v25, type metadata accessor for TodayDataManager, &unk_219C75C08);
  v106 = ObjectType;
  sub_219BDC7D4();
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 != *MEMORY[0x277D325C0])
  {
    if (v28 == *MEMORY[0x277D325C8])
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v31 = qword_280F616D8;
      v32 = sub_219BF6214();
      sub_219BE5314("Auto-refresh is disabled due to settings", 40, 2, &dword_2186C1000, v31, v32, MEMORY[0x277D84F90]);
      goto LABEL_16;
    }

    if (v28 == *MEMORY[0x277D325B8])
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v36 = qword_280F616D8;
      v37 = sub_219BF6214();
      sub_219BE5314("Auto-refresh will be forced due to settings", 43, 2, &dword_2186C1000, v36, v37, MEMORY[0x277D84F90]);
      v111 = 1;
      goto LABEL_17;
    }

    v111 = 0;
    sub_2187EA1BC(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    v49 = sub_219BE3014();
    (*(v24 + 8))(v27, v23);
    return v49;
  }

  if (a4)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v29 = qword_280F616D8;
    v30 = sub_219BF6214();
    sub_219BE5314("Auto-refresh is disabled during ppt", 35, 2, &dword_2186C1000, v29, v30, MEMORY[0x277D84F90]);
LABEL_16:
    v111 = 0;
LABEL_17:
    sub_2187EA1BC(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  if (*(v4 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_blockNextAutoRefresh))
  {
    *(v4 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_blockNextAutoRefresh) = 0;
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v33 = qword_280F616D8;
    v34 = sub_219BF6214();
    sub_219BE5314("Auto-refresh was blocked for next fresh, clearing blocked state", 63, 2, &dword_2186C1000, v33, v34, MEMORY[0x277D84F90]);
    goto LABEL_16;
  }

  swift_beginAccess();

  sub_219BE2E84();

  v38 = v109;
  if (v109)
  {
    result = [*(v4 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_subscriptionList) subscribedTagIDs];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v39 = result;
    v24 = MEMORY[0x277D837D0];
    v40 = sub_219BF5D44();

    if (*(v38 + 16) <= *(v40 + 16) >> 3)
    {
      v109 = v40;
      sub_218EB3B08(v38);

      if (*(v109 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v41 = sub_218EB4048(v38, v40);

      if (*(v41 + 16))
      {
LABEL_27:
        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        v42 = qword_280F616D8;
        sub_2186F20D4(0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_219C09BA0;
        v44 = v24;
        v45 = sub_219BF5D54();
        v47 = v46;

        *(v43 + 56) = v44;
        *(v43 + 64) = sub_2186FC3BC();
        *(v43 + 32) = v45;
        *(v43 + 40) = v47;
        v48 = sub_219BF6214();
        sub_219BE5314("Auto-refresh should attempt due to subscription changes, tags=%@", 64, 2, &dword_2186C1000, v42, v48, v43);

LABEL_43:
        LOBYTE(v109) = 1;
        sub_2187EA1BC(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        return sub_219BE3014();
      }
    }
  }

  v50 = sub_218827310();
  if ((~v50 & 0xF000000000000007) != 0)
  {
    if (v50 < 0)
    {
      sub_21885AB78(v50);
    }

    else
    {
      v51 = v50;
      sub_219BF0944();
      v52 = *(v109 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState);

      if (v52 != v102)
      {
        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        v77 = qword_280F616D8;
        v78 = sub_219BF6214();
        sub_219BE5314("Auto-refresh should attempt due to sports onboarding state change", 65, 2, &dword_2186C1000, v77, v78, MEMORY[0x277D84F90]);
        LOBYTE(v109) = 1;
        sub_2187EA1BC(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        v79 = sub_219BE3014();
        sub_21885AB78(v51);
        return v79;
      }

      sub_218820178(v97, v19, sub_2193A49AC);
      v53 = v101;
      v24 = v101 + 48;
      v54 = *(v101 + 48);
      v55 = v99;
      if (v54(v19, 1, v99) == 1)
      {
        sub_21885AB78(v51);
        sub_218820248(v19, sub_2193A49AC);
      }

      else
      {
        v102 = *(v53 + 32);
        v102(v98, v19, v55);
        v108 = v51;
        sub_219BF08F4();
        v80 = v96;
        sub_219BF0BA4();
        v81 = v80;
        (*(v94 + 8))(v14, v95);
        if (v54(v80, 1, v55) == 1)
        {
          (*(v101 + 8))(v98, v55);
          sub_21885AB78(v108);
          sub_218820248(v80, sub_2193A49AC);
        }

        else
        {
          v82 = v108;
          v83 = v93;
          v102(v93, v81, v55);
          sub_2187EA20C(&qword_27CC197D8, 255, MEMORY[0x277D33418], MEMORY[0x277D33420]);
          v84 = v98;
          if ((sub_219BF53A4() & 1) == 0)
          {
            v87 = v101;
            if (qword_280E8D7A0 != -1)
            {
              swift_once();
            }

            v88 = qword_280F616D8;
            v89 = sub_219BF6214();
            sub_219BE5314("Auto-refresh should attempt due to bundle session state change", 62, 2, &dword_2186C1000, v88, v89, MEMORY[0x277D84F90]);
            LOBYTE(v109) = 1;
            sub_2187EA1BC(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
            swift_allocObject();
            v90 = sub_219BE3014();
            v91 = sub_21885AB78(v82);
            v92 = *(v87 + 8);
            v92(v83, v55, v91);
            (v92)(v84, v55);
            return v90;
          }

          v85 = sub_21885AB78(v82);
          v24 = v101 + 8;
          v86 = *(v101 + 8);
          v86(v83, v55, v85);
          (v86)(v84, v55);
        }
      }
    }
  }

  v56 = *(v5 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_sharedItemAdditions);

  sub_219BE2E84();

  if (v110 < v56)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v57 = qword_280F616D8;
    v58 = sub_219BF6214();
    sub_219BE5314("Auto-refresh should attempt due to shared item changes", 54, 2, &dword_2186C1000, v57, v58, MEMORY[0x277D84F90]);
    goto LABEL_43;
  }

  v59 = [objc_msgSend(*(v5 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_appConfigManager) appConfiguration)];
  swift_unknownObjectRelease();
  if (qword_280EE9490 != -1)
  {
    swift_once();
  }

  v60 = v107;
  sub_219BDC7D4();
  sub_219BDBC64();
  if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_65;
  }

  v62 = fabs(v61);
  if (v62 >= 9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v24 = v62;
  if (v59 > v62)
  {
    if (qword_280E8D7A0 == -1)
    {
LABEL_50:
      sub_2186F20D4(0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_219C09EC0;
      v64 = MEMORY[0x277D84A28];
      v65 = MEMORY[0x277D84A90];
      *(v63 + 56) = MEMORY[0x277D84A28];
      *(v63 + 64) = v65;
      *(v63 + 32) = v59;
      *(v63 + 96) = v64;
      *(v63 + 104) = v65;
      *(v63 + 72) = v24;
      sub_219BF6214();
      sub_219BE5314("Auto-refresh is disabled because last update has not exceeded refresh interval, interval=%ld, timeSinceLastUpdate=%ld", v93, v94);

      type metadata accessor for TodayFeedServiceConfig(0);
      sub_219BE31F4();
      v67 = v103;
      v66 = v104;
      v68 = v100;
      (*(v103 + 16))(v100, v60, v104);
      v69 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v70 = swift_allocObject();
      (*(v67 + 32))(v70 + v69, v68, v66);
      v71 = sub_219BE2E54();
      v72 = sub_219BE2F74();

      (*(v67 + 8))(v60, v66);
      return v72;
    }

LABEL_66:
    swift_once();
    goto LABEL_50;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v73 = swift_allocObject();
  v74 = MEMORY[0x277D84A28];
  *(v73 + 16) = xmmword_219C09BA0;
  v75 = MEMORY[0x277D84A90];
  *(v73 + 56) = v74;
  *(v73 + 64) = v75;
  *(v73 + 32) = v24;
  sub_219BF6214();
  sub_219BE5314("Auto-refresh should be attempted, timeSinceLastUpdate=%ld", v93);

  LOBYTE(v109) = 1;
  sub_2187EA1BC(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
  swift_allocObject();
  v76 = sub_219BE3014();
  (*(v103 + 8))(v60, v104);
  return v76;
}

uint64_t sub_21939BE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v59 = a4;
  v61 = a2;
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for TodayExpandContext(0);
  v60 = *(v13 - 8);
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v58 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  sub_219BEF3D4();
  v15 = sub_219BEE7F4();
  v17 = v16;

  if (v17)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v18 = qword_280F616D8;
    sub_2186F20D4(0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C09BA0;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_2186FC3BC();
    v20 = v61;
    *(v19 + 32) = v61;
    *(v19 + 40) = a3;

    v21 = sub_219BF6214();
    sub_219BE5314("TodayFeed can't find desired group in cursor, identifier=%{public}@", 67, 2, &dword_2186C1000, v18, v21, v19);

    MEMORY[0x28223BE20](v22);
    v57[-4] = v7;
    v57[-3] = a1;
    v23 = v59;
    v57[-2] = v59;
    sub_21881F258(0, &unk_280E91318, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D326E0]);
    sub_219BE3204();
    v24 = v58;
    sub_218820178(v23, v58, type metadata accessor for TodayExpandContext);
    v25 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v20;
    *(v26 + 24) = a3;
    sub_2188201E0(v24, v26 + v25, type metadata accessor for TodayExpandContext);

    v27 = sub_219BE2E54();
    type metadata accessor for TodayExpandResult(0);
  }

  else if (v15 < 1)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v39 = qword_280F616D8;
    sub_2186F20D4(0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_219C09BA0;
    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 64) = sub_2186FC3BC();
    v41 = v61;
    *(v40 + 32) = v61;
    *(v40 + 40) = a3;

    v42 = sub_219BF6214();
    sub_219BE5314("TodayFeed reached desired group in cursor, identifier=%{public}@", 64, 2, &dword_2186C1000, v39, v42, v40);

    MEMORY[0x28223BE20](v43);
    v57[-4] = v7;
    v57[-3] = a1;
    v44 = v59;
    v57[-2] = v59;
    sub_21881F258(0, &unk_280E91318, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D326E0]);
    sub_219BE3204();
    v45 = v58;
    sub_218820178(v44, v58, type metadata accessor for TodayExpandContext);
    v46 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v41;
    *(v47 + 24) = a3;
    sub_2188201E0(v45, v47 + v46, type metadata accessor for TodayExpandContext);

    v27 = sub_219BE2E54();
    type metadata accessor for TodayExpandResult(0);
  }

  else
  {
    if (v15 <= 0xA)
    {
      v50 = *(v7 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_accessQueue);
      *(swift_allocObject() + 16) = a1;
      sub_2193A4C80(0);

      v57[0] = ObjectType;
      v57[1] = v50;
      sub_219BE31F4();

      sub_21881F258(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
      sub_219BE2F84();

      v51 = v58;
      sub_218820178(v59, v58, type metadata accessor for TodayExpandContext);
      v52 = (*(v60 + 80) + 40) & ~*(v60 + 80);
      v53 = (v14 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      v55 = v61;
      v54[2] = a1;
      v54[3] = v55;
      v54[4] = a3;
      sub_2188201E0(v51, v54 + v52, type metadata accessor for TodayExpandContext);
      v56 = (v54 + v53);
      *v56 = a5;
      v56[1] = a6;
      type metadata accessor for TodayExpandResult(0);

      v48 = sub_219BE2F84();

      return v48;
    }

    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v28 = qword_280F616D8;
    sub_2186F20D4(0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_219C0B8C0;
    v30 = MEMORY[0x277D83B88];
    v31 = MEMORY[0x277D83C10];
    *(v29 + 56) = MEMORY[0x277D83B88];
    *(v29 + 64) = v31;
    *(v29 + 32) = v15;
    *(v29 + 96) = v30;
    *(v29 + 104) = v31;
    *(v29 + 72) = 10;
    *(v29 + 136) = MEMORY[0x277D837D0];
    *(v29 + 144) = sub_2186FC3BC();
    v32 = v61;
    *(v29 + 112) = v61;
    *(v29 + 120) = a3;

    v33 = sub_219BF6214();
    sub_219BE5314("TodayFeed can't expand far enough to reach desired group, depth=%lu, limit=%lu, identifier=%{public}@", 101, 2, &dword_2186C1000, v28, v33, v29);

    MEMORY[0x28223BE20](v34);
    v57[-4] = v7;
    v57[-3] = a1;
    v35 = v59;
    v57[-2] = v59;
    sub_21881F258(0, &unk_280E91318, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D326E0]);
    sub_219BE3204();
    v36 = v58;
    sub_218820178(v35, v58, type metadata accessor for TodayExpandContext);
    v37 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v32;
    *(v38 + 24) = a3;
    sub_2188201E0(v36, v38 + v37, type metadata accessor for TodayExpandContext);

    v27 = sub_219BE2E54();
    type metadata accessor for TodayExpandResult(0);
  }

  v48 = sub_219BE2F74();

  return v48;
}

uint64_t sub_21939C7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v28[0] = a2;
  v8 = sub_219BF11C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v12 = qword_280F616D8;
  sub_2186F20D4(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v14 = MEMORY[0x277D83A80];
  *(v13 + 56) = MEMORY[0x277D839F8];
  *(v13 + 64) = v14;
  *(v13 + 32) = v15;
  v16 = MEMORY[0x277D837D0];
  *(v13 + 96) = MEMORY[0x277D837D0];
  v17 = sub_2186FC3BC();
  *(v13 + 104) = v17;
  *(v13 + 72) = a3;
  *(v13 + 80) = a4;
  v29 = 0;
  v30 = 0xE000000000000000;
  v28[1] = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);

  sub_219BF7484();
  v18 = v29;
  v19 = v30;
  *(v13 + 136) = v16;
  *(v13 + 144) = v17;
  *(v13 + 112) = v18;
  *(v13 + 120) = v19;
  v20 = sub_219BF6214();
  sub_219BE5314("TodayFeed failed expanded gap, time=%fms, identifier=%{public}@, error=%{public}@", 81, 2, &dword_2186C1000, v12, v20, v13);

  v21 = *MEMORY[0x277D32EF0];
  v22 = sub_219BF0644();
  (*(*(v22 - 8) + 104))(v11, v21, v22);
  (*(v9 + 104))(v11, *MEMORY[0x277D331F0], v8);
  v23 = v28[0];
  v24 = v28[0] + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = *(v24 + 8);
    ObjectType = swift_getObjectType();
    (*(v25 + 96))(v23, &off_282A6CEF8, v11, ObjectType, v25);
    swift_unknownObjectRelease();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21939CADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a3;
  v37 = a2;
  swift_getObjectType();
  v6 = type metadata accessor for TodayExpandContext(0);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = v7;
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEE644();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&v11 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = *(v3 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsPluginConfig);
  if (v12)
  {
    v13 = v12 + OBJC_IVAR____TtC7NewsUI215ShortcutsConfig_onRefresh;
    swift_beginAccess();
    v14 = *v13;
    if (*v13)
    {
      v15 = *(v13 + 8);

      v14(v16);
      sub_2187FABEC(v14, v15);
    }
  }

  v17 = [*(v4 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_subscriptionList) subscribedTagIDs];
  if (v17)
  {
    v18 = v17;
    v32 = sub_219BF5D44();
  }

  else
  {
    v32 = 0;
  }

  v31 = *(v4 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_sharedItemAdditions);
  *(swift_allocObject() + 16) = a1;
  sub_21882FE00(0, &qword_280E90CC0, sub_2193A4C80, MEMORY[0x277D83D88]);

  sub_219BE31F4();

  v19 = sub_219BE2E54();
  sub_219BE3064();

  (*(v9 + 16))(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v8);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v9 + 32))(v21 + v20, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v22 = sub_219BE2E54();
  sub_2186EA98C(0);
  sub_219BE2F84();

  sub_21881F258(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
  sub_219BE2F84();

  sub_2187D9028();
  v23 = sub_219BF66A4();
  v24 = v36;
  sub_218820178(v37, v36, type metadata accessor for TodayExpandContext);
  v25 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v26 = swift_allocObject();
  v27 = v31;
  *(v26 + 16) = v32;
  *(v26 + 24) = v27;
  sub_2188201E0(v24, v26 + v25, type metadata accessor for TodayExpandContext);
  type metadata accessor for TodayPrewarmResult(0);
  sub_219BE2F84();

  v28 = sub_219BE2E54();
  v29 = sub_219BE2FD4();

  return v29;
}

uint64_t sub_21939D008(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  sub_219BEE814();
  v2 = sub_219BE2F04();

  return v2;
}

void sub_21939D070(void *a2@<X8>)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v3 = qword_280F616D8;
  v4 = sub_219BF61F4();
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_219BE5314("TodayFeed failed to acquire cursor from container due to error=%{public}@", 73, 2, &dword_2186C1000, v3, v4, v5);

  *a2 = 0;
}

uint64_t sub_21939D1B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v68 = a2;
  v65 = a3;
  v66 = sub_219BEE644();
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = v4;
  v62 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TodayFeedServiceContext(0);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF0BD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayConfig(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BEEAF4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v67 = &v57 - v19;
  v20 = *a1;
  if (*a1)
  {
    v58 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v60 = v18;
    v64 = v17;

    sub_219BF0944();
    sub_218820178(v70 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig, v13, type metadata accessor for TodayConfig);

    sub_218820248(v13, type metadata accessor for TodayConfig);
    sub_219BF08F4();
    sub_219BEF524();

    (*(v8 + 8))(v10, v7);
    if (qword_280EE9480 != -1)
    {
      swift_once();
    }

    v21 = v67;
    sub_2190EA6E0();
    v22 = v69;
    v23 = v68;
    sub_21939DAA8(v20, v21, v69);
    v24 = *v22;
    v59 = v20;
    if (v24)
    {
      v30 = sub_219BF78F4();

      if ((v30 & 1) == 0)
      {
        v68 = sub_2194CFA0C(v22);
        v43 = v21;
        v44 = v60;
        v45 = v58;
        (*(v60 + 16))(v58, v43, v64);
        v47 = v62;
        v46 = v63;
        v48 = v66;
        (*(v63 + 16))(v62, v65, v66);
        v49 = (*(v44 + 80) + 16) & ~*(v44 + 80);
        v50 = (v15 + *(v46 + 80) + v49) & ~*(v46 + 80);
        v51 = (v61 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
        v52 = swift_allocObject();
        v53 = v45;
        v54 = v64;
        (*(v44 + 32))(v52 + v49, v53, v64);
        (*(v46 + 32))(v52 + v50, v47, v48);
        *(v52 + v51) = v59;

        v55 = sub_219BE2E54();
        sub_2186EA98C(0);
        v29 = sub_219BE2F74();

        sub_218820248(v69, type metadata accessor for TodayFeedServiceContext);
        (*(v44 + 8))(v67, v54);
        return v29;
      }
    }

    else
    {
    }

    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v31 = qword_280F616D8;
    sub_2186F20D4(0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_219C09EC0;
    v33 = sub_219BEEAE4();
    v35 = v34;
    v36 = MEMORY[0x277D837D0];
    *(v32 + 56) = MEMORY[0x277D837D0];
    v37 = sub_2186FC3BC();
    *(v32 + 64) = v37;
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_219BF7484();
    v38 = v70;
    v39 = v71;
    *(v32 + 96) = v36;
    *(v32 + 104) = v37;
    *(v32 + 72) = v38;
    *(v32 + 80) = v39;
    v40 = sub_219BF6214();
    sub_219BE5314("TodayFeed refreshing from top with refresh strategy=%{public}@, trigger=%{public}@", 82, 2, &dword_2186C1000, v31, v40, v32);

    MEMORY[0x28223BE20](v41);
    *(&v57 - 2) = v23;
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_219BE3204();
    v42 = sub_219BE2E54();
    sub_2186EA98C(0);
    v29 = sub_219BE2F74();

    sub_218820248(v69, type metadata accessor for TodayFeedServiceContext);
    (*(v60 + 8))(v21, v64);
  }

  else
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v25 = qword_280F616D8;
    v26 = sub_219BF6214();
    sub_219BE5314("TodayFeed is falling back to topOfFeed on refresh due to missing cursor", 71, 2, &dword_2186C1000, v25, v26, MEMORY[0x277D84F90]);
    MEMORY[0x28223BE20](v27);
    *(&v57 - 2) = v68;
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_219BE3204();
    v28 = sub_219BE2E54();
    sub_2186EA98C(0);
    v29 = sub_219BE2F74();
  }

  return v29;
}

uint64_t sub_21939DAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BEDA64();
  MEMORY[0x28223BE20](v6);
  v7 = type metadata accessor for TodayFeedServiceContext(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF0944();
  sub_218820178(v11[5] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v9, type metadata accessor for TodayFeedServiceContext);

  sub_21935F664(a2, a1, a3);
  return sub_218820248(v9, type metadata accessor for TodayFeedServiceContext);
}

uint64_t sub_21939DDB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v44 = a5;
  v42 = sub_219BEDA64();
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a1;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v40 = qword_280F616D8;
  sub_2186F20D4(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = sub_219BEEAE4();
  v15 = v14;
  v41 = a2;
  v16 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v17 = sub_2186FC3BC();
  *(v12 + 64) = v17;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v45 = 0;
  v46 = 0xE000000000000000;
  v18 = sub_219BEE644();
  sub_219BF7484();
  v19 = v45;
  v20 = v46;
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 72) = v19;
  *(v12 + 80) = v20;
  sub_219BF0974();
  v21 = sub_219BEDA54();
  v39 = a3;
  v22 = a4;
  v24 = v23;
  (*(v9 + 8))(v11, v42);
  *(v12 + 136) = v16;
  *(v12 + 144) = v17;
  *(v12 + 112) = v21;
  *(v12 + 120) = v24;
  v25 = sub_219BF6214();
  sub_219BE5314("TodayFeed refreshing with refresh strategy=%{public}@, trigger=%{public}@, cursor=%{public}@", 92, 2, &dword_2186C1000, v40, v25, v12);

  sub_2193A5538(0);
  v27 = v26;
  v28 = swift_allocBox();
  v30 = v29;
  v31 = *(v27 + 64);
  v32 = *(v27 + 80);
  v33 = v43;
  *v29 = v22;
  v29[1] = v33;
  v34 = sub_219BEEAF4();
  (*(*(v34 - 8) + 16))(v30 + v31, v41, v34);
  (*(*(v18 - 8) + 16))(v30 + v32, v39, v18);
  v35 = v44;
  *v44 = v28;
  v36 = *MEMORY[0x277D33088];
  sub_2186EA98C(0);
  (*(*(v37 - 8) + 104))(v35, v36, v37);
}

uint64_t sub_21939E0D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2187DF448();
  sub_219BEF3D4();
  sub_219BEE794();

  if (qword_280EE9490 != -1)
  {
    swift_once();
  }

  type metadata accessor for TodayDataManager();
  sub_2187EA20C(&unk_280ED7570, v10, type metadata accessor for TodayDataManager, &unk_219C75BC8);
  sub_219BDCA54();
  swift_beginAccess();
  v18 = a3;
  v19 = v16;

  sub_219BE2E94();

  (*(v7 + 8))(v9, v6);
  objc_allocWithZone(sub_219BE9274());
  swift_unknownObjectRetain();
  v11 = sub_219BE9254();
  sub_219BEE4A4();

  v12 = sub_219BE2E54();
  type metadata accessor for TodayPrewarmResult(0);
  v13 = sub_219BE2F74();

  return v13;
}

void sub_21939E378(char *a1@<X8>)
{
  v2 = type metadata accessor for TodayExpandResult(0);
  v3 = *(v2 + 28);
  v4 = sub_219BEC514();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 32);
  v6 = sub_219BE6DF4();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *a1 = 0x68736572666572;
  *(a1 + 1) = 0xE700000000000000;
  *(a1 + 2) = sub_219BEF6F4();
  sub_219BEF704();
  sub_21882FE00(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_21882FF78();
  sub_2187EA20C(&unk_280EE5DD0, 255, MEMORY[0x277D6D310], MEMORY[0x277D6D308]);
  v7 = sub_219BF56C4();

  *(a1 + 3) = v7;
}

double sub_21939E51C(uint64_t a1)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v1 = qword_280F616D8;
  sub_2186F20D4(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  v3 = sub_219BF6214();
  sub_219BE5314("TodayFeed failed refresh, error=%{public}@", 42, 2, &dword_2186C1000, v1, v3, v2);

  return result;
}

uint64_t sub_21939E63C(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for TodayExpandRequest(0);
  v3 = v2 - 8;
  v60 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v61 = v4;
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE5354();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v57 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v63 = sub_219BE5384();
  v70 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v67 = v11;
  v68 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v57 - v13;
  v15 = type metadata accessor for TodayGapLocation(0);
  v58 = *(v15 - 8);
  v16 = *(v58 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v59 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = CACurrentMediaTime();
  v21 = a1[1];
  v62 = *a1;
  v22 = *(v3 + 28);
  v65 = a1;
  v71 = v19;
  sub_218820178(a1 + v22, v19, type metadata accessor for TodayGapLocation);
  v23 = qword_280E8D7A0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_280F616D8;
  sub_219BE5364();
  sub_219BE5374();
  sub_219BE5334();
  v69 = v14;
  v25 = sub_219BE5374();
  v26 = sub_219BF67E4();
  if (sub_219BF6F34())
  {
    v27 = v5;
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_219BE5344();
    _os_signpost_emit_with_name_impl(&dword_2186C1000, v25, v26, v29, "News.TodayFeed.DataManager.Expand", "", v28, 2u);
    v30 = v28;
    v5 = v27;
    MEMORY[0x21CECF960](v30, -1, -1);
  }

  (*(v6 + 16))(v57, v10, v5);
  sub_219BE53C4();
  swift_allocObject();
  v31 = sub_219BE53B4();
  (*(v6 + 8))(v10, v5);
  v32 = sub_219BF6214();
  sub_2186F20D4(0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_219C09BA0;
  *(v33 + 56) = MEMORY[0x277D837D0];
  *(v33 + 64) = sub_2186FC3BC();
  v34 = v62;
  *(v33 + 32) = v62;
  *(v33 + 40) = v21;

  sub_219BE5314("TodayFeed start expanding identifier=%{public}@", 47, 2, &dword_2186C1000, v24, v32, v33);

  v35 = v59;
  sub_218820178(v71, v59, type metadata accessor for TodayGapLocation);
  v36 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v37 = swift_allocObject();
  sub_2188201E0(v35, v37 + v36, type metadata accessor for TodayGapLocation);
  v38 = (v37 + ((v16 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v38 = v34;
  v38[1] = v21;
  sub_2186EA98C(0);

  sub_219BE31F4();

  sub_21881F258(0, &qword_280E91610, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32580]);
  sub_219BE2F84();

  sub_2187D9028();
  v39 = sub_219BF66A4();
  v40 = v64;
  sub_218820178(v65, v64, type metadata accessor for TodayExpandRequest);
  v41 = (*(v60 + 80) + 40) & ~*(v60 + 80);
  v42 = swift_allocObject();
  v42[2] = v20;
  *(v42 + 3) = v34;
  *(v42 + 4) = v21;
  sub_2188201E0(v40, v42 + v41, type metadata accessor for TodayExpandRequest);
  type metadata accessor for TodayExpandResult(0);

  sub_219BE2F84();

  v43 = swift_allocObject();
  v43[2] = v20;
  *(v43 + 3) = v34;
  *(v43 + 4) = v21;

  v44 = sub_219BE2E54();
  sub_219BE2F74();

  v45 = swift_allocObject();
  v45[2] = v20;
  *(v45 + 3) = v34;
  *(v45 + 4) = v21;
  v46 = sub_219BE2E54();
  sub_219BE2FD4();

  v48 = v69;
  v47 = v70;
  v49 = v68;
  v50 = v63;
  (*(v70 + 16))(v68, v69, v63);
  v51 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v52 = (v67 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v47 + 32))(v53 + v51, v49, v50);
  *(v53 + v52) = v31;

  v54 = sub_219BE2E54();
  v55 = sub_219BE3024();

  (*(v47 + 8))(v48, v50);
  sub_218820248(v71, type metadata accessor for TodayGapLocation);
  return v55;
}

uint64_t sub_21939EF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2186EA98C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for TodayGapLocation(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218820178(a2, v18, type metadata accessor for TodayGapLocation);
  if ((*(v10 + 48))(v18, 1, v9) == 1)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v19 = qword_280F616D8;
    v20 = sub_219BF6214();
    sub_2186F20D4(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09BA0;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_2186FC3BC();
    *(v21 + 32) = a3;
    *(v21 + 40) = a4;

    sub_219BE5314("TodayFeed will expand from top of feed, identifier=%{public}@", 61, 2, &dword_2186C1000, v19, v20, v21);

    MEMORY[0x28223BE20](v22);
    *(&v32 - 2) = a1;
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_219BE3204();
    v23 = sub_219BE2E54();
    v24 = sub_219BE2F74();
  }

  else
  {
    v33 = a3;
    (*(v10 + 32))(v15, v18, v9);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v32 = qword_280F616D8;
    v25 = sub_219BF6214();
    sub_2186F20D4(0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09EC0;
    v27 = MEMORY[0x277D837D0];
    *(v26 + 56) = MEMORY[0x277D837D0];
    v28 = sub_2186FC3BC();
    *(v26 + 64) = v28;
    *(v26 + 32) = v33;
    *(v26 + 40) = a4;
    v34 = 0;
    v35 = 0xE000000000000000;

    sub_219BF7484();
    v29 = v34;
    v30 = v35;
    *(v26 + 96) = v27;
    *(v26 + 104) = v28;
    *(v26 + 72) = v29;
    *(v26 + 80) = v30;
    sub_219BE5314("TodayFeed will expand from cursor, identifier=%{public}@, location=%{public}@", 77, 2, &dword_2186C1000, v32, v25, v26);

    (*(v10 + 16))(v12, v15, v9);
    sub_21882FE00(0, &unk_280EE6BF8, sub_2186EA98C, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v24 = sub_219BE3014();
    (*(v10 + 8))(v15, v9);
  }

  return v24;
}

uint64_t sub_21939F378(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, double a6)
{
  v11 = type metadata accessor for TodayExpandContext(0);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = *a1;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v14 = qword_280F616D8;
  sub_2186F20D4(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v16 = MEMORY[0x277D83A80];
  *(v15 + 56) = MEMORY[0x277D839F8];
  *(v15 + 64) = v16;
  *(v15 + 32) = v17;
  *(v15 + 96) = MEMORY[0x277D837D0];
  *(v15 + 104) = sub_2186FC3BC();
  *(v15 + 72) = a3;
  *(v15 + 80) = a4;

  v18 = sub_219BF6214();
  sub_219BE5314("TodayFeed got fetch result, time=%fms, identifier=%{public}@", 60, 2, &dword_2186C1000, v14, v18, v15);

  v20 = *a5;
  v19 = a5[1];
  v21 = type metadata accessor for TodayExpandRequest(0);
  v22 = a5 + *(v21 + 24);
  MEMORY[0x28223BE20](v21);
  *(&v28 - 4) = a2;
  *(&v28 - 3) = v13;
  *(&v28 - 2) = v22;
  sub_21881F258(0, &unk_280E91318, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D326E0]);
  sub_219BE3204();
  sub_218820178(v22, &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayExpandContext);
  v23 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v19;
  sub_2188201E0(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for TodayExpandContext);

  v25 = sub_219BE2E54();
  type metadata accessor for TodayExpandResult(0);
  v26 = sub_219BE2F74();

  return v26;
}

uint64_t sub_21939F6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v9 = qword_280F616D8;
  sub_2186F20D4(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v11 = MEMORY[0x277D83A80];
  *(v10 + 56) = MEMORY[0x277D839F8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v12;
  v13 = MEMORY[0x277D837D0];
  *(v10 + 96) = MEMORY[0x277D837D0];
  v14 = sub_2186FC3BC();
  *(v10 + 104) = v14;
  *(v10 + 72) = a2;
  *(v10 + 80) = a3;
  type metadata accessor for TodayExpandResult(0);
  sub_2187EA20C(&qword_280ED46B0, 255, type metadata accessor for TodayExpandResult, &unk_219C57924);

  v15 = sub_219BF7894();
  *(v10 + 136) = v13;
  *(v10 + 144) = v14;
  *(v10 + 112) = v15;
  *(v10 + 120) = v16;
  v17 = sub_219BF6214();
  sub_219BE5314("TodayFeed successfully expanded gap, time=%fms, identifier=%{public}@, fetchResultData=%@", 89, 2, &dword_2186C1000, v9, v17, v10);

  return sub_218820178(a1, a4, type metadata accessor for TodayExpandResult);
}

void sub_21939F854(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v6 = qword_280F616D8;
  sub_2186F20D4(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v8 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v8;
  *(v7 + 32) = v9;
  v10 = MEMORY[0x277D837D0];
  *(v7 + 96) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v7 + 104) = v11;
  *(v7 + 72) = a2;
  *(v7 + 80) = a3;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);

  sub_219BF7484();
  *(v7 + 136) = v10;
  *(v7 + 144) = v11;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0xE000000000000000;
  v12 = sub_219BF6214();
  sub_219BE5314("TodayFeed failed expanded gap, time=%fms, identifier=%{public}@, error=%{public}@", 81, 2, &dword_2186C1000, v6, v12, v7);
}