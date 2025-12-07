uint64_t sub_25BEE4608()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BEE4640()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BEE4684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25BEE46F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25BEE478C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NewsChannelLogoCollection(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25BEE4838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NewsChannelLogoCollection(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25BEE48DC()
{
  MEMORY[0x25F881F60](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BEE4914()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BEE4958()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25BEE4990(uint64_t a1, uint64_t a2, int *a3)
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

  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_25BEF80D8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_25BEF8098();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = type metadata accessor for NewsChannel(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_25BEE4B74(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_25BEF80D8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_25BEF8098();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for NewsChannel(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_25BEE4D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BEE654C(0);
  v7 = v6;
  v8 = *(*(v6 - 8) + 48);
  v9 = a1 + *(a3 + 20);

  return v8(v9, a2, v7);
}

uint64_t sub_25BEE4DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BEE654C(0);
  v8 = v7;
  v9 = *(*(v7 - 8) + 56);
  v10 = a1 + *(a4 + 20);

  return v9(v10, a2, a2, v8);
}

uint64_t sub_25BEE4EF4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25BEE4F0C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EngagementFeatureSettings();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  result = sub_25BEE56A8(&qword_27FBE8D50, type metadata accessor for EngagementFeatureSettings, &unk_25BEFAE1C);
  *a1 = v2;
  a1[1] = result;
  return result;
}

unint64_t sub_25BEE4F84@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for FeatureAvailability;
  result = sub_25BEE512C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25BEE4FEC()
{
  sub_25BEF8488();
  sub_25BEE50D0(0, &qword_281558178, MEMORY[0x277D317A0], 0);
  sub_25BEF84F8();

  sub_25BEF8488();
  sub_25BEE50D0(0, qword_281557760, MEMORY[0x277D33D68], 1);
  sub_25BEF84F8();
}

uint64_t sub_25BEE50D0(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_25BEE512C()
{
  result = qword_27FBE8D48;
  if (!qword_27FBE8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE8D48);
  }

  return result;
}

uint64_t sub_25BEE5188(uint64_t a1, id *a2)
{
  result = sub_25BEF8A78();
  *a2 = 0;
  return result;
}

uint64_t sub_25BEE5200(uint64_t a1, id *a2)
{
  v3 = sub_25BEF8A88();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25BEE5280@<X0>(uint64_t *a1@<X8>)
{
  sub_25BEF8A98();
  v2 = sub_25BEF8A68();

  *a1 = v2;
  return result;
}

uint64_t sub_25BEE52C4()
{
  v0 = sub_25BEF8A98();
  v1 = MEMORY[0x25F8817B0](v0);

  return v1;
}

uint64_t sub_25BEE5300(uint64_t a1)
{
  sub_25BEF8A98();
  sub_25BEF8AA8();
}

uint64_t sub_25BEE5354(uint64_t a1)
{
  sub_25BEF8A98();
  sub_25BEF8D38();
  sub_25BEF8AA8();
  v1 = sub_25BEF8D58();

  return v1;
}

uint64_t sub_25BEE53C8(void *a1, uint64_t *a2)
{
  v2 = sub_25BEF8A98();
  v4 = v3;
  if (v2 == sub_25BEF8A98() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25BEF8CD8();
  }

  return v7 & 1;
}

void type metadata accessor for OpenExternalURLOptionsKey()
{
  if (!qword_27FBE8F98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FBE8F98);
    }
  }
}

uint64_t sub_25BEE54A0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25BEF8A68();

  *a2 = v3;
  return result;
}

uint64_t sub_25BEE54E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BEF8A98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25BEE5514(uint64_t a1)
{
  v2 = sub_25BEE56A8(&qword_27FBE9710, type metadata accessor for OpenExternalURLOptionsKey, &unk_25BEFAAF4);
  v3 = sub_25BEE56A8(&unk_27FBE8FC0, type metadata accessor for OpenExternalURLOptionsKey, &unk_25BEFAA48);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25BEE56A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BEE57D8@<X0>(uint64_t (*a1)(void)@<X1>, unint64_t *a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = a1(0);
  v10 = swift_allocObject();
  a5[3] = v9;
  result = sub_25BEE5A4C(a2, a3, a4);
  a5[4] = result;
  *a5 = v10;
  return result;
}

uint64_t sub_25BEE58BC(uint64_t a1)
{
  sub_25BEF8488();
  sub_25BEE59F0(0, &qword_281558148, MEMORY[0x277D35328]);
  sub_25BEF84F8();

  sub_25BEF8488();
  sub_25BEE59F0(0, &qword_281558140, MEMORY[0x277D35378]);
  sub_25BEF84F8();

  sub_25BEF8488();
  sub_25BEE59F0(0, &qword_2815581B0, MEMORY[0x277D30220]);
  sub_25BEF84F8();
}

uint64_t sub_25BEE59F0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25BEE5A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BEE5A94()
{
  sub_25BEF8D38();
  MEMORY[0x25F881A30](0);
  return sub_25BEF8D58();
}

uint64_t sub_25BEE5B00(uint64_t a1)
{
  sub_25BEF8D38();
  MEMORY[0x25F881A30](0);
  return sub_25BEF8D58();
}

void sub_25BEE5B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 16);
  v12 = swift_allocObject();
  v12[2] = sub_25BEE5F28;
  v12[3] = v10;
  v12[4] = a3;
  v12[5] = a4;
  v14[4] = sub_25BEE5F60;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_25BEE5DA0;
  v14[3] = &block_descriptor;
  v13 = _Block_copy(v14);

  [v11 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v13);
}

void sub_25BEE5C80(uint64_t a1, id a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(id))
{
  if (a1)
  {
    v8 = [swift_unknownObjectRetain() articleRecirculationConfigJSON];
    if (v8)
    {
      v9 = v8;
      v10 = sub_25BEF8A98();
      v12 = v11;

      a3(v10, v12);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    v13 = a2;
    a5(a2);
    v14 = a2;
  }

  else
  {
    sub_25BEE5F84();
    v15 = swift_allocError();
    (a5)();
    v14 = v15;
  }
}

uint64_t sub_25BEE5DA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_25BEE5E20()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25BEE5E7C()
{
  sub_25BEE5ED8();
  swift_allocObject();
  return sub_25BEF8548();
}

void sub_25BEE5ED8()
{
  if (!qword_27FBE9350)
  {
    v0 = sub_25BEF8558();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE9350);
    }
  }
}

uint64_t sub_25BEE5F28(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25BEE5F84()
{
  result = qword_27FBE9358;
  if (!qword_27FBE9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9358);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArticleRecirculationConfigurationService.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ArticleRecirculationConfigurationService.Errors(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25BEE60C4()
{
  result = qword_27FBE9360;
  if (!qword_27FBE9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9360);
  }

  return result;
}

uint64_t sub_25BEE6180(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_25BEE6248(char a1)
{
  result = swift_beginAccess();
  *(v1 + 18) = a1;
  return result;
}

uint64_t sub_25BEE63C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NewsArticleThumbnail.body.getter()
{
  sub_25BEE654C(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NewsArticle(0);
  sub_25BEE66E8(v0 + *(v4 + 24), v3, sub_25BEE654C);
  v5 = swift_allocObject();
  v5[2] = sub_25BEE65A4;
  v5[3] = 0;
  v5[4] = sub_25BEE66C0;
  v5[5] = 0;
  sub_25BEE69E4(0);
  sub_25BEE6A9C();
  return sub_25BEF87A8();
}

void sub_25BEE654C(uint64_t a1)
{
  if (!qword_2815581D0)
  {
    sub_25BEF8098();
    v1 = sub_25BEF8B58();
    if (!v2)
    {
      atomic_store(v1, &qword_2815581D0);
    }
  }
}

uint64_t sub_25BEE65A4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_25BEF88D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v7 = sub_25BEF88E8();
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_25BEE66C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BEF88C8();
  *a1 = result;
  return result;
}

uint64_t sub_25BEE66E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25BEE6774()
{
  sub_25BEE654C(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NewsArticle(0);
  sub_25BEE66E8(v0 + *(v4 + 24), v3, sub_25BEE654C);
  v5 = swift_allocObject();
  v5[2] = sub_25BEE65A4;
  v5[3] = 0;
  v5[4] = sub_25BEE66C0;
  v5[5] = 0;
  sub_25BEE69E4(0);
  sub_25BEE6A9C();
  return sub_25BEF87A8();
}

uint64_t sub_25BEE6894(uint64_t a1, void (*a2)(uint64_t *__return_ptr), uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  if (sub_25BEF87C8())
  {
    a2(&v7);
    sub_25BEE6A44();
    sub_25BEE6B1C();
    swift_retain_n();
    sub_25BEF87E8();
  }

  else
  {
    a4(&v7);
    sub_25BEE6A44();
    sub_25BEE6B1C();
    sub_25BEF87E8();
  }

  return v7;
}

void sub_25BEE69E4(uint64_t a1)
{
  if (!qword_27FBE9370)
  {
    sub_25BEE6A44();
    v1 = sub_25BEF87F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FBE9370);
    }
  }
}

void sub_25BEE6A44()
{
  if (!qword_27FBE9378)
  {
    v0 = sub_25BEF87D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE9378);
    }
  }
}

unint64_t sub_25BEE6A9C()
{
  result = qword_27FBE9380;
  if (!qword_27FBE9380)
  {
    sub_25BEE69E4(255);
    sub_25BEE6B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9380);
  }

  return result;
}

unint64_t sub_25BEE6B1C()
{
  result = qword_27FBE9388;
  if (!qword_27FBE9388)
  {
    sub_25BEE6A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9388);
  }

  return result;
}

uint64_t type metadata accessor for NewsArticleThumbnail(uint64_t a1)
{
  result = qword_27FBE9390;
  if (!qword_27FBE9390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BEE6C24(uint64_t a1)
{
  result = type metadata accessor for NewsArticle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25BEE6C90()
{
  result = qword_27FBE93A0;
  if (!qword_27FBE93A0)
  {
    sub_25BEE6CE8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE93A0);
  }

  return result;
}

void sub_25BEE6CE8(uint64_t a1)
{
  if (!qword_27FBE93A8)
  {
    sub_25BEE69E4(255);
    sub_25BEE6A9C();
    v1 = sub_25BEF87B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27FBE93A8);
    }
  }
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BEE6D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25BEE6894(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 18) = v7 & 1;
  return result;
}

uint64_t sub_25BEE6DCC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF8218();
  result = sub_25BEF8448();
  if (result)
  {
    v2 = sub_25BEF8208();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BEE6E38()
{
  v0 = sub_25BEF8508();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8218();
  sub_25BEF84E8();
  v4 = *(v1 + 104);
  v4(v3, *MEMORY[0x277D6CF00], v0);
  sub_25BEF8418();

  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_25BEF8148();
  sub_25BEF84E8();
  v4(v3, *MEMORY[0x277D6CF10], v0);
  sub_25BEF8418();

  return (v5)(v3, v0);
}

uint64_t sub_25BEE6FF8(void *a1)
{
  v25 = a1;
  v1 = sub_25BEF8268();
  MEMORY[0x28223BE20](v1 - 8);
  v24 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25BEF8188();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25BEF81F8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_25BEF82A8();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CEAD38];
  v8 = MEMORY[0x277D84560];
  sub_25BEE7900(0, &qword_27FBE93B0, MEMORY[0x277CEAD38], MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BEFAF20;
  sub_25BEF81D8();
  sub_25BEF81E8();
  v27[0] = v9;
  sub_25BEE78B8(&qword_27FBE93B8, MEMORY[0x277CEAD38], MEMORY[0x277CEAD40]);
  v10 = MEMORY[0x277D83940];
  sub_25BEE7900(0, &qword_27FBE93C0, v7, MEMORY[0x277D83940]);
  sub_25BEE77F0(&qword_27FBE93C8, &qword_27FBE93C0, v7);
  sub_25BEF8B78();
  v11 = sub_25BEF8228();
  v27[3] = v11;
  v27[4] = MEMORY[0x277CEAD58];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(v11 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CEAD50], v11);
  sub_25BEF82C8();
  swift_allocObject();
  sub_25BEF82B8();
  v13 = MEMORY[0x277CEAC90];
  sub_25BEE7900(0, &qword_27FBE93D0, MEMORY[0x277CEAC90], v8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25BEFAF30;
  sub_25BEF8178();
  sub_25BEF8158();
  sub_25BEF8168();
  v26 = v14;
  sub_25BEE78B8(&qword_27FBE93D8, MEMORY[0x277CEAC90], MEMORY[0x277CEAC98]);
  sub_25BEE7900(0, &qword_27FBE93E0, v13, v10);
  sub_25BEE77F0(&unk_27FBE93E8, &qword_27FBE93E0, v13);
  sub_25BEF8B78();
  sub_25BEF81C8();
  swift_allocObject();
  v15 = v21;
  sub_25BEF81B8();
  sub_25BEF8258();
  sub_25BEF8298();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_25BEF8148();
  result = sub_25BEF8448();
  if (result)
  {
    v17 = sub_25BEF8128();

    (*(v18 + 8))(v15, v19);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BEE7584()
{
  v0 = sub_25BEF8288();
  MEMORY[0x28223BE20](v0 - 8);
  sub_25BEF8148();
  sub_25BEF8248();
  sub_25BEF8238();
  sub_25BEF81A8();
  sub_25BEF8198();
  sub_25BEF8278();
  return sub_25BEF8138();
}

uint64_t sub_25BEE7674()
{
  v0 = sub_25BEF8508();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8488();
  sub_25BEF82D8();
  sub_25BEF84E8();

  (*(v1 + 104))(v3, *MEMORY[0x277D6CF00], v0);
  sub_25BEF8418();

  (*(v1 + 8))(v3, v0);
  sub_25BEF8498();
  sub_25BEF84D8();
}

uint64_t sub_25BEE77F0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25BEE7900(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25BEE78B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25BEE7900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25BEE79D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE7B54();
  result = sub_25BEF8448();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ArticleRecirculationConfigurationService();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_25BEE7BB8();
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BEE7A80(uint64_t a1)
{
  sub_25BEF8488();
  sub_25BEE7AF0();
  sub_25BEF84F8();
}

unint64_t sub_25BEE7AF0()
{
  result = qword_2815581A8;
  if (!qword_2815581A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2815581A8);
  }

  return result;
}

unint64_t sub_25BEE7B54()
{
  result = qword_281557620;
  if (!qword_281557620)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281557620);
  }

  return result;
}

unint64_t sub_25BEE7BB8()
{
  result = qword_27FBE93F8;
  if (!qword_27FBE93F8)
  {
    type metadata accessor for ArticleRecirculationConfigurationService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE93F8);
  }

  return result;
}

uint64_t sub_25BEE7C20()
{
  v1 = *v0;
  sub_25BEF8D38();
  MEMORY[0x25F881A30](v1);
  return sub_25BEF8D58();
}

uint64_t sub_25BEE7C68(uint64_t a1)
{
  v2 = *v1;
  sub_25BEF8D38();
  MEMORY[0x25F881A30](v2);
  return sub_25BEF8D58();
}

unint64_t sub_25BEE7CAC()
{
  v1 = 0x756F72676B636162;
  v2 = 0x756F726765726F66;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_25BEE7D38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BEE8C80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BEE7D78(uint64_t a1)
{
  v2 = sub_25BEE81E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BEE7DB4(uint64_t a1)
{
  v2 = sub_25BEE81E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsChannelTheme.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_25BEE8878(0, &qword_27FBE9400, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE81E8();
  sub_25BEF8D68();
  if (!v2)
  {
    v35 = 0;
    sub_25BEE8288();
    sub_25BEF8C78();
    v29 = v32;
    v30 = aBlock;
    v35 = 1;
    sub_25BEF8C78();
    v27 = v32;
    v28 = aBlock;
    v35 = 0;
    sub_25BEF8C78();
    v25 = v32;
    v26 = aBlock;
    v35 = 3;
    sub_25BEF8C78();
    v24 = aBlock;
    v23 = v32;
    v11 = objc_allocWithZone(MEMORY[0x277D75348]);
    v12 = swift_allocObject();
    v13 = v27;
    v12[1] = v28;
    v12[2] = v13;
    v14 = v29;
    v12[3] = v30;
    v12[4] = v14;
    v33 = sub_25BEE87E0;
    v34 = v12;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v32 = sub_25BEE87E4;
    *(&v32 + 1) = &block_descriptor_0;
    v15 = _Block_copy(&aBlock);

    v16 = [v11 initWithDynamicProvider_];
    _Block_release(v15);
    v17 = objc_allocWithZone(MEMORY[0x277D75348]);
    v18 = swift_allocObject();
    v19 = v23;
    v20 = v25;
    v18[1] = v24;
    v18[2] = v19;
    v18[3] = v26;
    v18[4] = v20;
    v33 = sub_25BEE8E04;
    v34 = v18;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v32 = sub_25BEE87E4;
    *(&v32 + 1) = &block_descriptor_7;
    v21 = _Block_copy(&aBlock);

    v22 = [v17 initWithDynamicProvider_];
    _Block_release(v21);
    (*(v7 + 8))(v9, v6);
    *a2 = v16;
    a2[1] = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_25BEE81E8()
{
  result = qword_27FBE9408;
  if (!qword_27FBE9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9408);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_25BEE8288()
{
  result = qword_27FBE9410;
  if (!qword_27FBE9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9410);
  }

  return result;
}

uint64_t NewsChannelTheme.encode(to:)(void *a1)
{
  sub_25BEE8878(0, &qword_27FBE9418, MEMORY[0x277D84538]);
  v4 = v3;
  v54 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE81E8();
  sub_25BEF8D78();
  v9 = objc_opt_self();
  v10 = [v9 traitCollectionWithUserInterfaceStyle_];
  v11 = [v8 resolvedColorWithTraitCollection_];

  sub_25BEF8B38();
  v53 = v12;
  sub_25BEF8B38();
  v52 = v13;
  sub_25BEF8B38();
  v51 = v14;
  sub_25BEF8B38();
  v50 = v15;

  v16 = [v9 traitCollectionWithUserInterfaceStyle_];
  v17 = [v8 resolvedColorWithTraitCollection_];

  sub_25BEF8B38();
  v49 = v18;
  sub_25BEF8B38();
  v48 = v19;
  sub_25BEF8B38();
  v47 = v20;
  sub_25BEF8B38();
  v46 = v21;

  v22 = [v9 traitCollectionWithUserInterfaceStyle_];
  v23 = [v7 resolvedColorWithTraitCollection_];

  sub_25BEF8B38();
  v25 = v24;
  sub_25BEF8B38();
  v27 = v26;
  sub_25BEF8B38();
  v29 = v28;
  sub_25BEF8B38();
  v31 = v30;

  v32 = [v9 traitCollectionWithUserInterfaceStyle_];
  v33 = [v7 resolvedColorWithTraitCollection_];

  sub_25BEF8B38();
  v35 = v34;
  sub_25BEF8B38();
  v37 = v36;
  sub_25BEF8B38();
  v39 = v38;
  sub_25BEF8B38();
  v41 = v40;

  v56 = v53;
  v57 = v52;
  v58 = v51;
  v59 = v50;
  v60 = 0;
  sub_25BEE88DC();
  v42 = v55;
  sub_25BEF8CB8();
  if (v42)
  {
    return (*(v54 + 8))(v6, v4);
  }

  v44 = v54;
  v56 = v49;
  v57 = v48;
  v58 = v47;
  v59 = v46;
  v60 = 1;
  sub_25BEF8CB8();
  v56 = v25;
  v57 = v27;
  v58 = v29;
  v59 = v31;
  v60 = 2;
  sub_25BEF8CB8();
  v56 = v35;
  v57 = v37;
  v58 = v39;
  v59 = v41;
  v60 = 3;
  sub_25BEF8CB8();
  return (*(v44 + 8))(v6, v4);
}

uint64_t static NewsChannelTheme.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_25BEE8930();
  if (sub_25BEF8B48())
  {
    return sub_25BEF8B48() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BEE8778(uint64_t *a1, uint64_t *a2)
{
  sub_25BEE8930();
  if (sub_25BEF8B48())
  {
    return sub_25BEF8B48() & 1;
  }

  else
  {
    return 0;
  }
}

id sub_25BEE87E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25BEE8878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BEE81E8();
    v7 = a3(a1, &type metadata for NewsChannelTheme.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25BEE88DC()
{
  result = qword_27FBE9420;
  if (!qword_27FBE9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9420);
  }

  return result;
}

unint64_t sub_25BEE8930()
{
  result = qword_27FBE9428;
  if (!qword_27FBE9428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBE9428);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25BEE8988(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25BEE89D0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for NewsChannelTheme.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsChannelTheme.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BEE8B7C()
{
  result = qword_27FBE9430;
  if (!qword_27FBE9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9430);
  }

  return result;
}

unint64_t sub_25BEE8BD4()
{
  result = qword_27FBE9438;
  if (!qword_27FBE9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9438);
  }

  return result;
}

unint64_t sub_25BEE8C2C()
{
  result = qword_27FBE9440;
  if (!qword_27FBE9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9440);
  }

  return result;
}

uint64_t sub_25BEE8C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v4 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025BEFC340 == a2 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF726F6C6F43646ELL || (sub_25BEF8CD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025BEFC360 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BEF8CD8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25BEE8E14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BEE8E34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_25BEE8E70(void *a1, double a2, double a3, double a4, double a5)
{
  sub_25BEE9648(0, &qword_27FBE9460, MEMORY[0x277D84538]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE95A0();
  sub_25BEF8D78();
  v19 = a2;
  v18 = 0;
  sub_25BEE96AC();
  sub_25BEF8CB8();
  if (!v5)
  {
    v19 = a3;
    v18 = 1;
    sub_25BEF8CB8();
    v19 = a4;
    v18 = 2;
    sub_25BEF8CB8();
    v19 = a5;
    v18 = 3;
    sub_25BEF8CB8();
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_25BEE9080()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_25BEE90E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BEE91D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BEE9108(uint64_t a1)
{
  v2 = sub_25BEE95A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BEE9144(uint64_t a1)
{
  v2 = sub_25BEE95A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25BEE9180(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_25BEE932C(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
    *(a1 + 3) = v7;
  }
}

uint64_t sub_25BEE91D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BEF8CD8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double sub_25BEE932C(void *a1)
{
  sub_25BEE9648(0, &qword_27FBE9448, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE95A0();
  sub_25BEF8D68();
  if (!v1)
  {
    HIBYTE(v10) = 0;
    sub_25BEE95F4();
    sub_25BEF8C78();
    v2 = v11;
    HIBYTE(v10) = 1;
    sub_25BEF8C78();
    HIBYTE(v10) = 2;
    sub_25BEF8C78();
    HIBYTE(v10) = 3;
    sub_25BEF8C78();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_25BEE95A0()
{
  result = qword_27FBE9450;
  if (!qword_27FBE9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9450);
  }

  return result;
}

unint64_t sub_25BEE95F4()
{
  result = qword_27FBE9458;
  if (!qword_27FBE9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9458);
  }

  return result;
}

void sub_25BEE9648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BEE95A0();
    v7 = a3(a1, &type metadata for RGBAColor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25BEE96AC()
{
  result = qword_27FBE9468;
  if (!qword_27FBE9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9468);
  }

  return result;
}

unint64_t sub_25BEE9714()
{
  result = qword_27FBE9470;
  if (!qword_27FBE9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9470);
  }

  return result;
}

unint64_t sub_25BEE976C()
{
  result = qword_27FBE9478;
  if (!qword_27FBE9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9478);
  }

  return result;
}

unint64_t sub_25BEE97C4()
{
  result = qword_27FBE9480;
  if (!qword_27FBE9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9480);
  }

  return result;
}

void sub_25BEE983C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_25BEF8068();
  sub_25BEE9AB8(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey();
  sub_25BEE9BB4();
  v2 = sub_25BEF8A48();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

unint64_t sub_25BEE9920(uint64_t a1)
{
  sub_25BEF8A98();
  sub_25BEF8D38();
  sub_25BEF8AA8();
  v2 = sub_25BEF8D58();

  return sub_25BEE99B4(a1, v2);
}

unint64_t sub_25BEE99B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_25BEF8A98();
      v8 = v7;
      if (v6 == sub_25BEF8A98() && v8 == v9)
      {
        break;
      }

      v11 = sub_25BEF8CD8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25BEE9AB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25BEE9C0C(0);
    v3 = sub_25BEF8C18();
    v4 = a1 + 32;

    while (1)
    {
      sub_25BEE9C7C(v4, &v11);
      v5 = v11;
      result = sub_25BEE9920(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25BEE9D4C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25BEE9BB4()
{
  result = qword_27FBE9710;
  if (!qword_27FBE9710)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9710);
  }

  return result;
}

void sub_25BEE9C0C(uint64_t a1)
{
  if (!qword_27FBE9488)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    sub_25BEE9BB4();
    v1 = sub_25BEF8C28();
    if (!v2)
    {
      atomic_store(v1, &qword_27FBE9488);
    }
  }
}

uint64_t sub_25BEE9C7C(uint64_t a1, uint64_t a2)
{
  sub_25BEE9CE0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25BEE9CE0(uint64_t a1)
{
  if (!qword_27FBE9490)
  {
    type metadata accessor for OpenExternalURLOptionsKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FBE9490);
    }
  }
}

_OWORD *sub_25BEE9D4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_25BEE9D5C()
{
  v0 = objc_allocWithZone(type metadata accessor for WebViewControllerFactory());

  return [v0 init];
}

uint64_t sub_25BEE9DB8(uint64_t a1)
{
  sub_25BEF8488();
  sub_25BEE9E28();
  sub_25BEF84E8();
}

unint64_t sub_25BEE9E28()
{
  result = qword_281557608;
  if (!qword_281557608)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281557608);
  }

  return result;
}

void *sub_25BEE9E8C()
{
  type metadata accessor for NewsService();
  v0 = swift_allocObject();
  result = sub_25BEE9F24();
  qword_281557E60 = v0;
  return result;
}

uint64_t static NewsService.shared.getter()
{
  if (qword_281557E50 != -1)
  {
    swift_once();
  }
}

void *sub_25BEE9F24()
{
  v1 = v0;
  if (qword_281557D88 != -1)
  {
    swift_once();
  }

  sub_25BEED0F4();
  v3 = v2;
  v4 = [v2 tagController];
  result = [v3 subscriptionController];
  if (result)
  {
    v6 = sub_25BEF8918();
    swift_allocObject();
    v7 = sub_25BEF8908();
    v8 = MEMORY[0x277D33258];
    v14 = v6;
    v15 = MEMORY[0x277D33258];
    *&v13 = v7;

    v9 = [v3 news_core_ConfigurationManager];
    result = [v3 paidAccessChecker];
    if (result)
    {
      v10 = sub_25BEF8938();
      swift_allocObject();
      v11 = v3;
      v12 = sub_25BEF8928();
      v1[5] = v6;
      v1[6] = v8;
      v1[2] = v7;
      v14 = v10;
      v15 = MEMORY[0x277D33580];

      *&v13 = v12;
      sub_25BEE4EF4(&v13, (v1 + 7));
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NewsService.storeFrontID.getter()
{
  if (qword_281557D88 != -1)
  {
    swift_once();
  }

  sub_25BEED0F4();
  v1 = v0;
  v2 = [v0 contentStoreFrontID];

  v3 = sub_25BEF8A98();
  return v3;
}

uint64_t NewsService.fetchArticles(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_25BEEA194, 0, 0);
}

uint64_t sub_25BEEA194()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v6 = *(v3 - 1);
      v5 = *v3;

      v7 = sub_25BEF8A68();
      v8 = [v7 fc_isValidArticleID];

      if ((v8 & 1) == 0)
      {
        v9 = sub_25BEF8A68();
        v10 = FCArticleCloudKitIDFromUUID();

        v6 = sub_25BEF8A98();
        v12 = v11;

        v5 = v12;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_25BEEAEF0(0, *(v4 + 2) + 1, 1, v4);
      }

      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      if (v14 >= v13 >> 1)
      {
        v4 = sub_25BEEAEF0((v13 > 1), v14 + 1, 1, v4);
      }

      *(v4 + 2) = v14 + 1;
      v15 = &v4[16 * v14];
      *(v15 + 4) = v6;
      *(v15 + 5) = v5;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v0[5] = v4;
  v16 = v0[4];
  v17 = swift_task_alloc();
  v0[6] = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v4;
  v18 = swift_task_alloc();
  v0[7] = v18;
  sub_25BEEBB20(0, &unk_281557748, type metadata accessor for NewsArticle, MEMORY[0x277D83940]);
  *v18 = v0;
  v18[1] = sub_25BEEA3E4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000025BEFC3C0, sub_25BEEB000, v17, v19);
}

uint64_t sub_25BEEA3E4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_25BEEA524;
  }

  else
  {

    v2 = sub_25BEEA508;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25BEEA524()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25BEEA590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  sub_25BEEB044(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v17[1] = v9;
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  v21 = a3;
  sub_25BEEBB20(0, &qword_281557738, sub_25BEEB164, MEMORY[0x277D83940]);
  sub_25BEF8568();
  v18 = *(v8 + 16);
  v18(v10, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v17[0] = *(v8 + 32);
  (v17[0])(v12 + v11, v10, v7);
  v13 = sub_25BEF8518();
  sub_25BEF8528();

  v18(v10, v19, v7);
  v14 = swift_allocObject();
  (v17[0])(v14 + v11, v10, v7);
  v15 = sub_25BEF8518();
  sub_25BEF8538();
}

uint64_t sub_25BEEA80C(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
  v2 = [objc_opt_self() defaultCachePolicy];
  v3 = sub_25BEF8948();

  return v3;
}

uint64_t sub_25BEEA8B0(unint64_t *a1, uint64_t a2)
{
  v42 = a2;
  v3 = type metadata accessor for NewsChannel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for NewsArticle(0);
  v49 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v42 - v9;
  v10 = *a1;
  v54 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
LABEL_25:
    v11 = sub_25BEF8C08();
    if (v11)
    {
LABEL_3:
      v12 = 0;
      v13 = v10 & 0xC000000000000001;
      v51 = v10 & 0xFFFFFFFFFFFFFF8;
      *&v8 = 136446210;
      v43 = v8;
      v44 = v11;
      v45 = v10;
      do
      {
        if (v13)
        {
          v14 = MEMORY[0x25F881880](v12, v10);
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v12 >= *(v51 + 16))
          {
            goto LABEL_24;
          }

          v14 = *(v10 + 8 * v12 + 32);
          swift_unknownObjectRetain();
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        if ([v14 isPaid] & 1) != 0 || (objc_msgSend(v14, sel_respondsToSelector_, sel_isBundlePaid) & 1) != 0 && (objc_msgSend(v14, sel_isBundlePaid))
        {
          if (qword_27FBE8D30 != -1)
          {
            swift_once();
          }

          v16 = sub_25BEF86B8();
          __swift_project_value_buffer(v16, qword_27FBEBB60);
          swift_unknownObjectRetain();
          v17 = sub_25BEF8698();
          v18 = sub_25BEF8B28();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v53 = v47;
            *v19 = v43;
            v20 = [v14 identifier];
            v21 = sub_25BEF8A98();
            v46 = v17;
            v22 = v13;
            v23 = v21;
            v25 = v24;

            v26 = v23;
            v13 = v22;
            v27 = sub_25BEEB570(v26, v25, &v53);
            v11 = v44;

            *(v19 + 4) = v27;
            v28 = v18;
            v10 = v45;
            v29 = v46;
            _os_log_impl(&dword_25BEE2000, v46, v28, "NewsService filtered paid headline, id=%{public}s", v19, 0xCu);
            v30 = v47;
            __swift_destroy_boxed_opaque_existential_1(v47);
            MEMORY[0x25F881EF0](v30, -1, -1);
            MEMORY[0x25F881EF0](v19, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          sub_25BEF8BB8();
          sub_25BEF8BD8();
          sub_25BEF8BE8();
          sub_25BEF8BC8();
        }

        ++v12;
      }

      while (v15 != v11);
      v31 = v54;
      if ((v54 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v31 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

LABEL_27:
  if ((v31 & 0x4000000000000000) != 0)
  {
    goto LABEL_45;
  }

  v51 = *(v31 + 16);
  if (!v51)
  {
    goto LABEL_46;
  }

  do
  {
    v32 = 0;
    v33 = MEMORY[0x277D84F90];
    while ((v31 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x25F881880](v32, v31);
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_43;
      }

LABEL_35:
      if ([v34 sourceChannel])
      {
        v36 = swift_unknownObjectRetain();
        v37 = v50;
        sub_25BEEBC30(v36, v50);
        v38 = v48;
        sub_25BEF0FE8(v34, v37, v48);
        swift_unknownObjectRelease();
        sub_25BEE63C8(v38, v52);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_25BEEB374(0, v33[2] + 1, 1, v33);
        }

        v40 = v33[2];
        v39 = v33[3];
        if (v40 >= v39 >> 1)
        {
          v33 = sub_25BEEB374((v39 > 1), v40 + 1, 1, v33);
        }

        v33[2] = v40 + 1;
        sub_25BEE63C8(v52, v33 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v40);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v32;
      if (v35 == v51)
      {
        goto LABEL_47;
      }
    }

    if (v32 >= *(v31 + 16))
    {
      goto LABEL_44;
    }

    v34 = *(v31 + 8 * v32 + 32);
    swift_unknownObjectRetain();
    v35 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
      goto LABEL_35;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v51 = sub_25BEF8C08();
  }

  while (v51);
LABEL_46:
  v33 = MEMORY[0x277D84F90];
LABEL_47:

  v54 = v33;
  sub_25BEEB044(0);
  return sub_25BEF8B08();
}

uint64_t sub_25BEEAE44(void *a1)
{
  v1 = a1;
  sub_25BEEB044(0);
  return sub_25BEF8AF8();
}

uint64_t NewsService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t NewsService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

char *sub_25BEEAEF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_25BEEBBE4(0, &unk_2815575B8, MEMORY[0x277D837D0]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_25BEEB044(uint64_t a1)
{
  if (!qword_281557728)
  {
    sub_25BEEBB20(255, &unk_281557748, type metadata accessor for NewsArticle, MEMORY[0x277D83940]);
    sub_25BEEB0E4();
    v1 = sub_25BEF8B18();
    if (!v2)
    {
      atomic_store(v1, &qword_281557728);
    }
  }
}

unint64_t sub_25BEEB0E4()
{
  result = qword_2815575A0;
  if (!qword_2815575A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2815575A0);
  }

  return result;
}

unint64_t sub_25BEEB164()
{
  result = qword_2815576E0;
  if (!qword_2815576E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2815576E0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  sub_25BEEB044(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25BEEB2CC(void *a1)
{
  sub_25BEEB044(0);

  return sub_25BEEAE44(a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_25BEEB374(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_25BEEBB20(0, &unk_2815575C8, type metadata accessor for NewsArticle, MEMORY[0x277D84560]);
  v10 = *(type metadata accessor for NewsArticle(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NewsArticle(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_25BEEB570(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25BEEB63C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25BEEBB88(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25BEEB63C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25BEEB748(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25BEF8BA8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25BEEB748(uint64_t a1, unint64_t a2)
{
  v3 = sub_25BEEB794(a1, a2);
  sub_25BEEB8C4(&unk_286D86AD8);
  return v3;
}

void *sub_25BEEB794(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25BEEB9B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25BEF8BA8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25BEF8AB8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25BEEB9B0(v10, 0);
        result = sub_25BEF8B88();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25BEEB8C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25BEEBA28(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25BEEB9B0(uint64_t a1, uint64_t a2)
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

  sub_25BEEBBE4(0, &qword_27FBE9500, MEMORY[0x277D84B78]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25BEEBA28(char *result, int64_t a2, char a3, char *a4)
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
    sub_25BEEBBE4(0, &qword_27FBE9500, MEMORY[0x277D84B78]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void sub_25BEEBB20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25BEEBB88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_25BEEBBE4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25BEF8CC8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25BEEBC30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_25BEF8A98();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [a1 name];
  v9 = sub_25BEF8A98();
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
  v12 = [a1 theme];
  v13 = type metadata accessor for NewsChannel(0);
  sub_25BEF45F4(v12, (a2 + *(v13 + 24)));
  if ([a1 theme])
  {
    ObjectType = swift_getObjectType();
    v15 = sub_25BEEEA38(ObjectType);
    v16 = sub_25BEEEA60(ObjectType);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    v15 = 0;
    v16 = 0;
  }

  v18 = (a2 + *(v13 + 28));
  *v18 = v15;
  v18[1] = v16;
  return result;
}

uint64_t NewsChannel.LogoTheme.hashValue.getter()
{
  v1 = *v0;
  sub_25BEF8D38();
  MEMORY[0x25F881A30](v1);
  return sub_25BEF8D58();
}

uint64_t NewsChannel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NewsChannel.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for NewsChannel(uint64_t a1)
{
  result = qword_281557EF0;
  if (!qword_281557EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id NewsChannel.theme.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsChannel(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  a1[1] = v5;

  return sub_25BEEBF28(v4, v5);
}

id sub_25BEEBF28(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_25BEEBF68()
{
  v1 = 25705;
  v2 = 1869049708;
  if (*v0 != 2)
  {
    v2 = 0x656D656874;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_25BEEBFC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BEECF84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BEEBFEC(uint64_t a1)
{
  v2 = sub_25BEEC298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BEEC028(uint64_t a1)
{
  v2 = sub_25BEEC298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsChannel.encode(to:)(void *a1)
{
  v3 = v1;
  sub_25BEEC768(0, &qword_27FBE9508, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEEC298();
  sub_25BEF8D78();
  LOBYTE(v15) = 0;
  sub_25BEF8C98();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_25BEF8C98();
    v10 = type metadata accessor for NewsChannel(0);
    LOBYTE(v15) = 2;
    type metadata accessor for NewsChannelLogoCollection(0);
    sub_25BEEC7CC(&qword_27FBE9518, &protocol conformance descriptor for NewsChannelLogoCollection);
    sub_25BEF8CB8();
    v11 = v3 + *(v10 + 28);
    v12 = *(v11 + 8);
    v15 = *v11;
    v16 = v12;
    v14[15] = 3;
    sub_25BEEBF28(v15, v12);
    sub_25BEEC2EC();
    sub_25BEF8C88();
    sub_25BEEC340(v15, v16);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_25BEEC298()
{
  result = qword_27FBE9510;
  if (!qword_27FBE9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9510);
  }

  return result;
}

unint64_t sub_25BEEC2EC()
{
  result = qword_27FBE9520;
  if (!qword_27FBE9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9520);
  }

  return result;
}

void sub_25BEEC340(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t NewsChannel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for NewsChannelLogoCollection(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEEC768(0, &qword_27FBE9528, MEMORY[0x277D844C8]);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for NewsChannel(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEEC298();
  v23 = v8;
  v12 = v24;
  sub_25BEF8D68();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v21;
  v15 = v22;
  LOBYTE(v25) = 0;
  *v11 = sub_25BEF8C58();
  v11[1] = v16;
  v24 = v16;
  LOBYTE(v25) = 1;
  v11[2] = sub_25BEF8C58();
  v11[3] = v17;
  LOBYTE(v25) = 2;
  sub_25BEEC7CC(&qword_27FBE9530, &protocol conformance descriptor for NewsChannelLogoCollection);
  sub_25BEF8C78();
  sub_25BEEC810(v5, v11 + *(v9 + 24));
  v26 = 3;
  sub_25BEEC874();
  sub_25BEF8C48();
  (*(v14 + 8))(v23, v15);
  *(v11 + *(v9 + 28)) = v25;
  sub_25BEEC8C8(v11, v20, type metadata accessor for NewsChannel);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_25BEEC930(v11, type metadata accessor for NewsChannel);
}

void sub_25BEEC768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BEEC298();
    v7 = a3(a1, &type metadata for NewsChannel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_25BEEC7CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NewsChannelLogoCollection(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BEEC810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsChannelLogoCollection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25BEEC874()
{
  result = qword_27FBE9538;
  if (!qword_27FBE9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9538);
  }

  return result;
}

uint64_t sub_25BEEC8C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25BEEC930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BEEC9C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL _s7NewsKit0A7ChannelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25BEF8CD8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_25BEF8CD8() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for NewsChannel(0);
  if ((static NewsChannelLogoCollection.== infix(_:_:)(a1 + *(v6 + 24), a2 + *(v6 + 24)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 28);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = a2 + v7;
  v12 = *v10;
  v11 = *(v10 + 1);
  if (v9)
  {
    if (v12)
    {
      sub_25BEE8930();
      sub_25BEEBF28(v9, v8);
      sub_25BEEBF28(v12, v11);
      sub_25BEEBF28(v9, v8);
      if (sub_25BEF8B48())
      {
        v13 = sub_25BEF8B48();
        sub_25BEEC340(v12, v11);

        sub_25BEEC340(v9, v8);
        return (v13 & 1) != 0;
      }

      sub_25BEEC340(v12, v11);

      v15 = v9;
      v16 = v8;
      goto LABEL_22;
    }

    sub_25BEEBF28(v9, v8);
    sub_25BEEBF28(0, v11);
    sub_25BEEBF28(v9, v8);

LABEL_20:
    sub_25BEEC340(v9, v8);
    v15 = v12;
    v16 = v11;
LABEL_22:
    sub_25BEEC340(v15, v16);
    return 0;
  }

  sub_25BEEBF28(0, v8);
  if (v12)
  {
    sub_25BEEBF28(v12, v11);
    goto LABEL_20;
  }

  sub_25BEEBF28(0, v11);
  sub_25BEEC340(0, v8);
  return 1;
}

unint64_t sub_25BEECBB0()
{
  result = qword_27FBE9540;
  if (!qword_27FBE9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9540);
  }

  return result;
}

void sub_25BEECC38(uint64_t a1)
{
  type metadata accessor for NewsChannelLogoCollection(319);
  if (v1 <= 0x3F)
  {
    sub_25BEECCCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25BEECCCC()
{
  if (!qword_2815580F0)
  {
    v0 = sub_25BEF8B58();
    if (!v1)
    {
      atomic_store(v0, &qword_2815580F0);
    }
  }
}

uint64_t getEnumTagSinglePayload for NewsChannel.LogoTheme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsChannel.LogoTheme(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BEECE80()
{
  result = qword_27FBE9548;
  if (!qword_27FBE9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9548);
  }

  return result;
}

unint64_t sub_25BEECED8()
{
  result = qword_27FBE9550;
  if (!qword_27FBE9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9550);
  }

  return result;
}

unint64_t sub_25BEECF30()
{
  result = qword_27FBE9558;
  if (!qword_27FBE9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9558);
  }

  return result;
}

uint64_t sub_25BEECF84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BEF8CD8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_25BEED0F4()
{
  v1 = v0;
  sub_25BEE654C(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v8 = *(v0 + 72);
  if (v8)
  {
    goto LABEL_14;
  }

  v35 = [objc_allocWithZone(MEMORY[0x277D30F18]) initWithEnvironment_];
  sub_25BEEDDC0();
  v34 = v9;
  v10 = FCURLForContainerizedUserAccountCachesDirectory();
  if (v10)
  {
    v11 = v10;
    sub_25BEF8088();

    v12 = sub_25BEF8098();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  }

  else
  {
    v13 = sub_25BEF8098();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  v14 = 1;
  v15 = FCURLForContainerizedUserAccountCachesDirectory();
  if (v15)
  {
    v16 = v15;
    sub_25BEF8088();

    v14 = 0;
  }

  v17 = sub_25BEF8098();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v5, v14, 1, v17);
  v33 = [objc_allocWithZone(type metadata accessor for PrivateDataActionProvider()) init];
  v32 = [objc_allocWithZone(type metadata accessor for StubAppActivityMonitor()) init];
  v19 = [objc_opt_self() defaultAvailability];
  v20 = *(v18 + 48);
  v21 = 0;
  if (v20(v7, 1, v17) != 1)
  {
    v21 = sub_25BEF8068();
    (*(v18 + 8))(v7, v17);
  }

  if (v20(v5, 1, v17) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_25BEF8068();
    (*(v18 + 8))(v5, v17);
  }

  v23 = objc_allocWithZone(MEMORY[0x277D30EE0]);
  LOWORD(v31) = 0;
  v24 = v32;
  v26 = v34;
  v25 = v35;
  v27 = v33;
  v28 = [v23 initWithConfiguration:v35 configurationManager:v34 contentHostDirectory:v21 privateDataHostDirectory:v22 privateDataActionProvider:v33 networkBehaviorMonitor:0 appActivityMonitor:v32 desiredHeadlineFieldOptions:0xF87FFFFC1 feedUsage:2 lockStoreFrontIfNeeded:v31 deviceIsiPad:0 backgroundTaskable:v19 privateDataSyncAvailability:0 pptContext:?];

  if (v28)
  {
    v29 = *(v1 + 72);
    *(v1 + 72) = v28;
    v28;

    v8 = 0;
LABEL_14:
    v30 = v8;
    return;
  }

  __break(1u);
}

uint64_t sub_25BEED4BC()
{
  type metadata accessor for NewsKitModule();
  v0 = swift_allocObject();
  result = sub_25BEED5B0();
  qword_2815586E0 = v0;
  return result;
}

uint64_t sub_25BEED4F8@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_25BEEE64C(v1 + 24, &v4);
  if (v5)
  {
    return sub_25BEE4EF4(&v4, a1);
  }

  sub_25BEEE55C(&v4);
  sub_25BEF8598();
  sub_25BEEE6DC(a1, &v4);
  swift_beginAccess();
  sub_25BEEE740(&v4, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_25BEED5B0()
{
  v1 = v0;
  v2 = sub_25BEF8578();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8478();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  swift_allocObject();
  *(v0 + 64) = sub_25BEF8468();
  v6 = MEMORY[0x277D84560];
  sub_25BEEE5E4(0, &unk_2815575D8, &unk_281558180, MEMORY[0x277D6CCC8], MEMORY[0x277D84560]);
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v7 = swift_allocObject();
  v47 = xmmword_25BEFB6B0;
  *(v7 + 16) = xmmword_25BEFB6B0;
  [objc_allocWithZone(MEMORY[0x277D550F8]) init];
  v8 = sub_25BEF84B8();
  swift_allocObject();
  v9 = sub_25BEF84C8();
  v10 = MEMORY[0x277D6CD70];
  *(v7 + 56) = v8;
  *(v7 + 64) = v10;
  *(v7 + 32) = v9;
  [objc_allocWithZone(MEMORY[0x277D355E0]) init];
  swift_allocObject();
  v11 = sub_25BEF84C8();
  *(v7 + 96) = v8;
  *(v7 + 104) = v10;
  *(v7 + 72) = v11;
  v12 = sub_25BEF84A8();
  v13 = [objc_allocWithZone(v12) init];
  v14 = MEMORY[0x277D6CC58];
  *(v7 + 136) = v12;
  *(v7 + 144) = v14;
  *(v7 + 112) = v13;
  v15 = sub_25BEF8728();
  v16 = [objc_allocWithZone(v15) init];
  *(v7 + 176) = v15;
  *(v7 + 184) = sub_25BEEE9C4(&unk_281558128, MEMORY[0x277D6D8F0], MEMORY[0x277D6D8E8]);
  *(v7 + 152) = v16;
  v17 = sub_25BEF8798();
  v18 = [objc_allocWithZone(v17) init];
  *(v7 + 216) = v17;
  *(v7 + 224) = sub_25BEEE9C4(&qword_281558100, MEMORY[0x277D2D690], MEMORY[0x277D2D688]);
  *(v7 + 192) = v18;
  v19 = sub_25BEF8A38();
  v20 = [objc_allocWithZone(v19) init];
  *(v7 + 256) = v19;
  *(v7 + 264) = sub_25BEEE9C4(&qword_281557758, MEMORY[0x277D34700], MEMORY[0x277D346F8]);
  *(v7 + 232) = v20;
  v21 = sub_25BEF83F8();
  v22 = [objc_allocWithZone(v21) init];
  *(v7 + 296) = v21;
  *(v7 + 304) = sub_25BEEE9C4(&qword_2815581A0, MEMORY[0x277D30350], MEMORY[0x277D30348]);
  *(v7 + 272) = v22;
  v23 = sub_25BEF8688();
  v24 = [objc_allocWithZone(v23) init];
  *(v7 + 336) = v23;
  *(v7 + 344) = sub_25BEEE9C4(&qword_281558138, MEMORY[0x277D353C0], MEMORY[0x277D353B8]);
  *(v7 + 312) = v24;
  v25 = sub_25BEF8628();
  v26 = [objc_allocWithZone(v25) init];
  *(v7 + 376) = v25;
  *(v7 + 384) = sub_25BEEE9C4(&qword_281558160, MEMORY[0x277D31920], MEMORY[0x277D31918]);
  *(v7 + 352) = v26;
  sub_25BEEE5E4(0, &qword_2815575E8, &unk_281558190, MEMORY[0x277D6CA90], v6);
  v27 = swift_allocObject();
  *(v27 + 16) = v47;
  v28 = type metadata accessor for AnalyticsAssembly();
  v29 = swift_allocObject();
  *(v27 + 56) = v28;
  *(v27 + 64) = sub_25BEEE9C4(qword_2815578A8, type metadata accessor for AnalyticsAssembly, &unk_25BEFAF54);
  *(v27 + 32) = v29;
  v30 = type metadata accessor for FactoryAssembly();
  v31 = swift_allocObject();
  *(v27 + 96) = v30;
  *(v27 + 104) = sub_25BEEE9C4(qword_281557C10, type metadata accessor for FactoryAssembly, &unk_25BEFB3D0);
  *(v27 + 72) = v31;
  v32 = type metadata accessor for NewsCoreAssembly();
  v33 = swift_allocObject();
  *(v27 + 136) = v32;
  *(v27 + 144) = sub_25BEEE9C4(&qword_2815580E8, type metadata accessor for NewsCoreAssembly, &unk_25BEFC124);
  *(v27 + 112) = v33;
  v34 = type metadata accessor for ProviderAssembly();
  v35 = swift_allocObject();
  *(v27 + 176) = v34;
  *(v27 + 184) = sub_25BEEE9C4(qword_281557AB0, type metadata accessor for ProviderAssembly, &unk_25BEFC084);
  *(v27 + 152) = v35;
  v36 = type metadata accessor for RouterAssembly();
  v37 = swift_allocObject();
  *(v27 + 216) = v36;
  *(v27 + 224) = sub_25BEEE9C4(qword_281557CB8, type metadata accessor for RouterAssembly, &unk_25BEFC0BC);
  *(v27 + 192) = v37;
  v38 = type metadata accessor for ServicesAssembly();
  v39 = swift_allocObject();
  *(v27 + 256) = v38;
  *(v27 + 264) = sub_25BEEE9C4(qword_281557A10, type metadata accessor for ServicesAssembly, &unk_25BEFAFE4);
  *(v27 + 232) = v39;
  v40 = type metadata accessor for SettingsAssembly();
  v41 = swift_allocObject();
  *(v27 + 296) = v40;
  *(v27 + 304) = sub_25BEEE9C4(qword_281557958, type metadata accessor for SettingsAssembly, &unk_25BEFA934);
  *(v27 + 272) = v41;
  v42 = type metadata accessor for SubscriptionAssembly();
  v43 = swift_allocObject();
  *(v27 + 336) = v42;
  *(v27 + 344) = sub_25BEEE9C4(qword_281557800, type metadata accessor for SubscriptionAssembly, &unk_25BEFAC88);
  *(v27 + 312) = v43;
  v44 = type metadata accessor for ToolbarAssembly();
  v45 = swift_allocObject();
  *(v27 + 376) = v44;
  *(v27 + 384) = sub_25BEEE9C4(qword_281557B58, type metadata accessor for ToolbarAssembly, &unk_25BEFBA54);
  *(v27 + 352) = v45;
  (*(v3 + 104))(v5, *MEMORY[0x277D6CF60], v2);
  sub_25BEF85A8();
  swift_allocObject();

  *(v1 + 16) = sub_25BEF8588();
  return v1;
}

void sub_25BEEDDC0()
{
  sub_25BEE654C(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 80);
  if (v4)
  {
    goto LABEL_23;
  }

  v5 = [objc_opt_self() defaultConfiguration];
  v6 = FCURLForContainerizedUserAccountCachesDirectory();
  if (v6)
  {
    v7 = v6;
    sub_25BEF8088();

    v8 = sub_25BEF8098();
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  }

  else
  {
    v9 = sub_25BEF8098();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  }

  v10 = [objc_opt_self() sharedInstance];
  v11 = FCBundle();
  if (!v11)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = v11;
  v13 = sub_25BEF8A68();
  v14 = [v12 objectForInfoDictionaryKey_];

  v30 = v5;
  if (v14)
  {
    sub_25BEF8B68();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (*(&v32 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_25BEEE494(&v33);
  }

  v15 = FCBundle();
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = v15;
  v17 = sub_25BEF8A68();
  v18 = [v16 objectForInfoDictionaryKey_];

  if (v18)
  {
    sub_25BEF8B68();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (*(&v32 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_25BEEE494(&v33);
  }

  v19 = sub_25BEF8098();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v3, 1, v19) != 1)
  {
    v21 = sub_25BEF8068();
    (*(v20 + 8))(v3, v19);
  }

  v22 = objc_allocWithZone(MEMORY[0x277D30EF8]);
  v23 = sub_25BEF8A68();

  v24 = sub_25BEF8A68();

  v25 = v30;
  v26 = [v22 initWithContextConfiguration:v30 contentHostDirectoryFileURL:v21 feldsparIDProvider:v10 appShortVersionString:v23 buildNumberString:v24 networkBehaviorMonitor:0];

  if (v26)
  {
    v27 = *(v0 + 80);
    *(v0 + 80) = v26;
    v26;

    v4 = 0;
LABEL_23:
    v28 = v4;
    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_25BEEE238()
{

  sub_25BEEE55C(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_25BEEE3B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_25BEEE438()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25BEEE494(uint64_t a1)
{
  sub_25BEEE4F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25BEEE4F0()
{
  if (!qword_281557590)
  {
    v0 = sub_25BEF8B58();
    if (!v1)
    {
      atomic_store(v0, &qword_281557590);
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BEEE55C(uint64_t a1)
{
  sub_25BEEE5E4(0, &qword_27FBE95C8, &unk_27FBE95D0, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25BEEE5E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_25BEE59F0(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_25BEEE64C(uint64_t a1, uint64_t a2)
{
  sub_25BEEE5E4(0, &qword_27FBE95C8, &unk_27FBE95D0, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BEEE6DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25BEEE740(uint64_t a1, uint64_t a2)
{
  sub_25BEEE5E4(0, &qword_27FBE95C8, &unk_27FBE95D0, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BEEE7D0()
{
  v0 = sub_25BEF88F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8118();
  sub_25BEF8108();
  sub_25BEF80E8();
  sub_25BEF80F8();

  v4 = (*(v1 + 88))(v3, v0);
  v5 = 0;
  if (v4 != *MEMORY[0x277D31C90])
  {
    if (v4 == *MEMORY[0x277D31CD0])
    {
      return 1;
    }

    else if (v4 == *MEMORY[0x277D31CA0])
    {
      return 2;
    }

    else if (v4 == *MEMORY[0x277D31CA8])
    {
      return 3;
    }

    else if (v4 == *MEMORY[0x277D31CC0])
    {
      return 4;
    }

    else if (v4 == *MEMORY[0x277D31CC8])
    {
      return 6;
    }

    else if (v4 == *MEMORY[0x277D31CB0])
    {
      return 7;
    }

    else if (v4 == *MEMORY[0x277D31CB8])
    {
      return 8;
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }
  }

  return v5;
}

uint64_t sub_25BEEE9C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_25BEEEA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v7;
  v9 = objc_allocWithZone(MEMORY[0x277D75348]);
  v13[4] = a3;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_25BEE87E4;
  v13[3] = a4;
  v10 = _Block_copy(v13);

  v11 = [v9 initWithDynamicProvider_];
  _Block_release(v10);

  return v11;
}

id sub_25BEEEBA4(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5, SEL *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [a1 userInterfaceStyle];
    if (v12 >= 2)
    {
      if (v12 == 2)
      {
        v13 = [v11 *a5];
        if (v13)
        {
          goto LABEL_16;
        }

        v13 = [v11 *a6];
        if (v13)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v13 = [v11 backgroundColor];
        if (v13)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v13 = [v11 *a6];
      if (v13)
      {
LABEL_16:
        v16 = v13;
        v17 = [v13 ne_color];
        swift_unknownObjectRelease();

        return v17;
      }
    }

    v18 = [objc_opt_self() *a4];
    swift_unknownObjectRelease();
    return v18;
  }

  else
  {
    v14 = [objc_opt_self() *a4];

    return v14;
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BEEEEA0()
{
  v0 = sub_25BEF86B8();
  __swift_allocate_value_buffer(v0, qword_27FBEBB60);
  __swift_project_value_buffer(v0, qword_27FBEBB60);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_25BEF8A98();
  }

  return sub_25BEF86A8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t NewsArticleView.init(articles:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t NewsArticleView.init(identifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

void *NewsArticleView.makeUIViewController(context:)()
{
  v1 = *(v0 + 8);

  if (v1)
  {

    return _s7NewsKit0A21ArticleViewControllerC11identifiersACSaySSG_tcfC_0(v2);
  }

  else
  {

    return _s7NewsKit0A21ArticleViewControllerC8articlesACSayAA0aC0VG_tcfC_0(v2);
  }
}

void *sub_25BEEF064()
{
  v1 = *(v0 + 8);

  if (v1)
  {

    return _s7NewsKit0A21ArticleViewControllerC11identifiersACSaySSG_tcfC_0(v2);
  }

  else
  {

    return _s7NewsKit0A21ArticleViewControllerC8articlesACSayAA0aC0VG_tcfC_0(v2);
  }
}

uint64_t sub_25BEEF104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BEEF330();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25BEEF168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25BEEF330();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25BEEF1CC(uint64_t a1)
{
  sub_25BEEF330();
  sub_25BEF8868();
  __break(1u);
}

unint64_t sub_25BEEF1F8()
{
  result = qword_27FBE9640;
  if (!qword_27FBE9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9640);
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

uint64_t sub_25BEEF288(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_25BEEF2D0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BEEF330()
{
  result = qword_27FBE9648;
  if (!qword_27FBE9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9648);
  }

  return result;
}

void *sub_25BEEF3D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25BEF8718();
  MEMORY[0x28223BE20](v4 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE50D0(0, &qword_27FBE9650, MEMORY[0x277D6D8E0], 0);
  result = sub_25BEF8458();
  if (v7)
  {
    sub_25BEF86F8();
    sub_25BEF8708();
    result = sub_25BEF86E8();
    v6 = MEMORY[0x277D6D600];
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25BEEF4E8@<X0>(void *a1@<X8>)
{
  v2 = sub_25BEF8748();
  result = [objc_allocWithZone(v2) init];
  v4 = MEMORY[0x277D6DC00];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25BEEF558()
{
  v0 = sub_25BEF8508();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8488();
  sub_25BEE50D0(0, &qword_281558110, MEMORY[0x277D6DA40], 0);
  sub_25BEF84F8();

  sub_25BEF8488();
  sub_25BEE50D0(0, &qword_281558108, MEMORY[0x277D6E170], 1);
  sub_25BEF84F8();

  (*(v1 + 104))(v3, *MEMORY[0x277D6CF10], v0);
  sub_25BEF8418();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25BEEF714()
{
  v0 = sub_25BEF8778();
  __swift_allocate_value_buffer(v0, qword_27FBEBB78);
  __swift_project_value_buffer(v0, qword_27FBEBB78);
  return sub_25BEF8768();
}

id NewsArticleViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_25BEEF8C4(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEE59F0(0, &qword_27FBE9670, MEMORY[0x277D2D578]);
  return sub_25BEF8428();
}

Swift::Void __swiftcall NewsArticleViewController.loadView()()
{
  sub_25BEEE6DC(v0 + OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_sceneProvider, v5);
  v1 = type metadata accessor for SceneProvidingView();
  v2 = objc_allocWithZone(v1);
  sub_25BEEE6DC(v5, v2 + OBJC_IVAR____TtC7NewsKit18SceneProvidingView_sceneProvider);
  v4.receiver = v2;
  v4.super_class = v1;
  v3 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v5);
  [v0 setView_];
}

Swift::Void __swiftcall NewsArticleViewController.viewDidLoad()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_contentViewController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v3 addSubview_];

      [v1 didMoveToParentViewController_];
      v6 = [*&v0[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_articleViewController] navigationItem];
      v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v0 action:sel_handleDone];
      [v6 setLeftBarButtonItem_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall NewsArticleViewController.viewDidLayoutSubviews()()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_contentViewController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id NewsArticleViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25BEF8A68();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id NewsArticleViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_25BEEFFC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BEEFFE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25BEEFFE0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_25BEF0F84(0, &qword_27FBE9688, MEMORY[0x277D2FE30], MEMORY[0x277D84560]);
  v10 = *(sub_25BEF8378() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25BEF8378() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_25BEF01DC(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v21[3] = sub_25BEF83D8();
  v21[4] = MEMORY[0x277D30218];
  v21[0] = a1;
  if (qword_281557D88 != -1)
  {
    swift_once();
  }

  sub_25BEED4F8(v19);
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_25BEE59F0(0, &qword_27FBE9670, MEMORY[0x277D2D578]);
  result = sub_25BEF8458();
  if (!v17)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BEE4EF4(&v16, v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  if (qword_27FBE8D38 != -1)
  {
    swift_once();
  }

  v6 = sub_25BEF8778();
  __swift_project_value_buffer(v6, qword_27FBEBB78);
  sub_25BEF0F24();
  sub_25BEF8788();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_25BEE59F0(0, &qword_27FBE9680, MEMORY[0x277D2FF28]);
  sub_25BEEE6DC(v18, &v16);
  v7 = swift_allocObject();
  sub_25BEE4EF4(&v16, v7 + 16);
  sub_25BEF8438();

  if (!v15)
  {
    goto LABEL_10;
  }

  sub_25BEE4EF4(&v14, &v16);
  __swift_project_boxed_opaque_existential_1(&v16, v17);
  v8 = sub_25BEF83A8();
  v9 = [objc_allocWithZone(sub_25BEF8758()) initWithRootViewController_];
  *&a2[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_articleViewController] = v8;
  *&a2[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_contentViewController] = v9;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_25BEE59F0(0, &unk_281558118, MEMORY[0x277D6D908]);
  v10 = v8;
  v11 = v9;
  result = sub_25BEF8458();
  if (v15)
  {
    sub_25BEE4EF4(&v14, &a2[OBJC_IVAR____TtC7NewsKit25NewsArticleViewController_sceneProvider]);
    v13.receiver = a2;
    v13.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);

    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(&v16);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v12;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *_s7NewsKit0A21ArticleViewControllerC8articlesACSayAA0aC0VG_tcfC_0(uint64_t a1)
{
  sub_25BEF0F84(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v29 - v3;
  v40 = sub_25BEF8358();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewsArticle(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_25BEF8378();
  v10 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25BEF8388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + 16);
  if (v16)
  {
    v29 = v13;
    v30 = v12;
    v31 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = MEMORY[0x277D84F90];
    sub_25BEEFFC0(0, v16, 0);
    v17 = v42;
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v32 = a1;
    v19 = a1 + v18;
    v37 = *(v7 + 72);
    v36 = *MEMORY[0x277D2FE18];
    v34 = v10 + 32;
    v35 = (v4 + 104);
    v20 = v33;
    do
    {
      v21 = v10;
      sub_25BEF0E64(v19, v9);
      v22 = sub_25BEF8098();
      (*(*(v22 - 8) + 56))(v41, 1, 1, v22);

      v23 = v38;
      sub_25BEF8308();
      (*v35)(v23, v36, v40);
      sub_25BEF8368();
      sub_25BEF0EC8(v9);
      v42 = v17;
      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_25BEEFFC0((v24 > 1), v25 + 1, 1);
        v20 = v33;
        v17 = v42;
      }

      *(v17 + 16) = v25 + 1;
      v10 = v21;
      (*(v21 + 32))(v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v25, v20, v39);
      v19 += v37;
      --v16;
    }

    while (v16);

    v12 = v30;
    v15 = v31;
    v13 = v29;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  *v15 = v17;
  (*(v13 + 104))(v15, *MEMORY[0x277D2FE60], v12);
  sub_25BEF83D8();
  swift_allocObject();
  v26 = sub_25BEF83C8();
  v27 = objc_allocWithZone(type metadata accessor for NewsArticleViewController());
  return sub_25BEF01DC(v26, v27);
}

void *_s7NewsKit0A21ArticleViewControllerC11identifiersACSaySSG_tcfC_0(uint64_t a1)
{
  sub_25BEF0F84(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v25 - v3;
  v36 = sub_25BEF8358();
  v4 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_25BEF8378();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25BEF8388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 16);
  if (v14)
  {
    v26 = v11;
    v27 = v10;
    v28 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = MEMORY[0x277D84F90];
    sub_25BEEFFC0(0, v14, 0);
    v15 = v38;
    v34 = sub_25BEF8098();
    v16 = *(v34 - 8);
    v17 = *(v16 + 56);
    v32 = v16 + 56;
    v33 = v17;
    v31 = *MEMORY[0x277D2FE18];
    v18 = (v4 + 104);
    v29 = a1;
    v30 = v7 + 32;
    v19 = a1 + 40;
    do
    {
      v33(v37, 1, 1, v34);
      swift_bridgeObjectRetain_n();
      sub_25BEF8308();
      (*v18)(v6, v31, v36);
      sub_25BEF8368();

      v38 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_25BEEFFC0((v20 > 1), v21 + 1, 1);
        v15 = v38;
      }

      *(v15 + 16) = v21 + 1;
      (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v9, v35);
      v19 += 16;
      --v14;
    }

    while (v14);

    v10 = v27;
    v13 = v28;
    v11 = v26;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  *v13 = v15;
  (*(v11 + 104))(v13, *MEMORY[0x277D2FE60], v10);
  sub_25BEF83D8();
  swift_allocObject();
  v22 = sub_25BEF83C8();
  v23 = objc_allocWithZone(type metadata accessor for NewsArticleViewController());
  return sub_25BEF01DC(v22, v23);
}

uint64_t sub_25BEF0E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsArticle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BEF0EC8(uint64_t a1)
{
  v2 = type metadata accessor for NewsArticle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25BEF0F24()
{
  result = qword_27FBE9678;
  if (!qword_27FBE9678)
  {
    sub_25BEF8778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9678);
  }

  return result;
}

void sub_25BEF0F84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25BEF0FE8(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v61 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_25BEF3A78(0, &qword_2815581C8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  *&v60 = &v54 - v7;
  v8 = sub_25BEF80D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v54 - v12;
  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], v5);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v54 - v14;
  v62 = type metadata accessor for NewsArticle(0);
  v16 = v62[6];
  v17 = sub_25BEF8098();
  v55 = *(*(v17 - 8) + 56);
  v56 = v16;
  v55(&a3[v16], 1, 1, v17);
  v18 = [a1 identifier];
  v19 = sub_25BEF8A98();
  v21 = v20;

  v57 = v21;
  v58 = v19;
  *a3 = v19;
  *(a3 + 1) = v21;

  v22 = a1;
  v23 = [a1 title];
  if (v23)
  {
    v24 = v23;
    v25 = sub_25BEF8A98();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  *(a3 + 2) = v25;
  *(a3 + 3) = v27;
  v28 = v22;
  v29 = [v22 thumbnail];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 thumbnailAssetHandle];

    if (!v31)
    {
      __break(1u);
      return;
    }

    v32 = [v31 remoteURL];

    sub_25BEF8088();
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v55(v15, v33, 1, v17);
  sub_25BEF1964(v15, &a3[v56]);
  v34 = [v22 publishDate];
  if (v34)
  {
    v35 = v54;
    v36 = v34;
    sub_25BEF80B8();

    v37 = *(v9 + 32);
    v38 = v60;
    v37(v60, v35, v8);
    (*(v9 + 56))(v38, 0, 1, v8);
    v39 = v59;
    v37(v59, v38, v8);
  }

  else
  {
    v40 = v60;
    (*(v9 + 56))(v60, 1, 1, v8);
    v39 = v59;
    sub_25BEF80C8();
    if ((*(v9 + 48))(v40, 1, v8) != 1)
    {
      sub_25BEF39B8(v40, &qword_2815581C8, MEMORY[0x277CC9578]);
    }
  }

  (*(v9 + 32))(&a3[v62[7]], v39, v8);
  sub_25BEF3A28(0, &qword_2815575A8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v41 = swift_allocObject();
  v60 = xmmword_25BEFBAC0;
  *(v41 + 16) = xmmword_25BEFBAC0;
  *(v41 + 56) = MEMORY[0x277D837D0];
  v42 = v57;
  *(v41 + 32) = v58;
  *(v41 + 40) = v42;
  v43 = sub_25BEF8AD8();

  sub_25BEF3A78(0, &qword_2815575F0, MEMORY[0x277CC8918], MEMORY[0x277D84560]);
  sub_25BEF8058();
  *(swift_allocObject() + 16) = v60;
  v44 = [objc_opt_self() mainBundle];
  v45 = [v44 bundleIdentifier];

  if (v45)
  {
    sub_25BEF8A98();
  }

  v46 = objc_opt_self();
  sub_25BEF8048();

  v47 = sub_25BEF8AD8();

  v48 = [v46 nss:v43 NewsURLWithPathComponents:v47 queryItems:0 internal:?];

  v49 = v62;
  sub_25BEF8088();

  v50 = v61;
  sub_25BEF1C48(v61, &a3[v49[9]], type metadata accessor for NewsChannel);
  v51 = [v28 authors];
  if (v51)
  {
    v52 = v51;
    v53 = sub_25BEF8AE8();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v53 = MEMORY[0x277D84F90];
  }

  sub_25BEF2CF4(v50, type metadata accessor for NewsChannel);
  *&a3[v62[10]] = v53;
}

uint64_t NewsArticle.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NewsArticle.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NewsArticle.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NewsArticle.thumbnailURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewsArticle(0) + 24);

  return sub_25BEF188C(v3, a1);
}

uint64_t type metadata accessor for NewsArticle(uint64_t a1)
{
  result = qword_281557F98;
  if (!qword_281557F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BEF188C(uint64_t a1, uint64_t a2)
{
  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NewsArticle.thumbnailURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NewsArticle(0) + 24);

  return sub_25BEF1964(a1, v3);
}

uint64_t sub_25BEF1964(uint64_t a1, uint64_t a2)
{
  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NewsArticle.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticle(0) + 28);
  v4 = sub_25BEF80D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticle.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewsArticle(0) + 32);
  v4 = sub_25BEF8098();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewsArticle.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticle(0) + 32);
  v4 = sub_25BEF8098();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_25BEF1C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NewsArticle.channel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NewsArticle(0) + 36);

  return sub_25BEF1CF4(a1, v3);
}

uint64_t sub_25BEF1CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsChannel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NewsArticle.authors.getter()
{
  type metadata accessor for NewsArticle(0);
}

uint64_t NewsArticle.authors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NewsArticle(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25BEF1E5C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6C656E6E616863;
  if (v1 != 5)
  {
    v3 = 0x73726F68747561;
  }

  v4 = 0x446873696C627570;
  if (v1 != 3)
  {
    v4 = 7107189;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x69616E626D756874;
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

uint64_t sub_25BEF1F30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BEF3698(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BEF1F64(uint64_t a1)
{
  v2 = sub_25BEF2394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BEF1FA0(uint64_t a1)
{
  v2 = sub_25BEF2394();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsArticle.encode(to:)(void *a1)
{
  v3 = v1;
  sub_25BEF2C90(0, &qword_27FBE9690, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF2394();
  sub_25BEF8D78();
  v19 = 0;
  sub_25BEF8C98();
  if (!v2)
  {
    v18 = 1;
    sub_25BEF8C98();
    v10 = type metadata accessor for NewsArticle(0);
    v17 = 2;
    sub_25BEF8098();
    sub_25BEF3970(&qword_27FBE96A0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_25BEF8C88();
    v12[0] = *(v10 + 28);
    v16 = 3;
    sub_25BEF80D8();
    sub_25BEF3970(&qword_27FBE96A8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_25BEF8CB8();
    v15 = 4;
    sub_25BEF8CB8();
    v14 = 5;
    type metadata accessor for NewsChannel(0);
    sub_25BEF3970(&qword_27FBE96B0, type metadata accessor for NewsChannel, &protocol conformance descriptor for NewsChannel);
    sub_25BEF8CB8();
    v12[1] = *(v3 + *(v10 + 40));
    v13 = 6;
    sub_25BEF3A28(0, &qword_281557740, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_25BEF2DB8(&qword_27FBE96B8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_25BEF8CB8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_25BEF2394()
{
  result = qword_27FBE9698;
  if (!qword_27FBE9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE9698);
  }

  return result;
}

uint64_t NewsArticle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = type metadata accessor for NewsChannel(0);
  MEMORY[0x28223BE20](v52);
  v53 = &v47[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_25BEF8098();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v54 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_25BEF80D8();
  v55 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47[-v9];
  sub_25BEF2C90(0, &qword_27FBE96C0, MEMORY[0x277D844C8]);
  v59 = v11;
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47[-v12];
  v14 = type metadata accessor for NewsArticle(0);
  v16 = *(MEMORY[0x28223BE20](v14) + 24);
  v17 = v5;
  v18 = *(v5 + 56);
  v63 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = v16;
  v18(v63 + v16, 1, 1, v4);
  v19 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_25BEF2394();
  v20 = v62;
  sub_25BEF8D68();
  if (v20)
  {
    v62 = v20;
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_25BEF39B8(v63 + v61, &qword_2815581D0, MEMORY[0x277CC9260]);
  }

  v21 = v56;
  v22 = v57;
  v49 = v14;
  v50 = v17;
  v23 = v58;
  v71 = 0;
  v24 = sub_25BEF8C58();
  v26 = v63;
  *v63 = v24;
  v26[1] = v27;
  v70 = 1;
  v28 = sub_25BEF8C58();
  v29 = v63;
  v63[2] = v28;
  v29[3] = v30;
  v69 = 2;
  sub_25BEF3970(&qword_27FBE96C8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_25BEF8C48();
  v62 = 0;
  sub_25BEF1964(v10, v63 + v61);
  v68 = 3;
  sub_25BEF3970(&qword_27FBE96D0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v31 = v62;
  sub_25BEF8C78();
  v48 = v31 == 0;
  v62 = v31;
  if (v31)
  {
    (*(v21 + 8))(v13, v59);
    v32 = 0;
    v33 = 0;
    v34 = v49;
    v35 = v50;
  }

  else
  {
    v34 = v49;
    (*(v55 + 32))(v63 + v49[7], v22, v23);
    v67 = 4;
    v36 = v54;
    v37 = v62;
    sub_25BEF8C78();
    v62 = v37;
    v35 = v50;
    if (v37)
    {
      (*(v21 + 8))(v13, v59);
      v32 = 0;
      v33 = 0;
    }

    else
    {
      (*(v50 + 32))(v63 + v34[8], v36, v4);
      v66 = 5;
      sub_25BEF3970(&qword_27FBE96D8, type metadata accessor for NewsChannel, &protocol conformance descriptor for NewsChannel);
      v38 = v53;
      v39 = v62;
      sub_25BEF8C78();
      v62 = v39;
      if (v39)
      {
        (*(v21 + 8))(v13, v59);
        v33 = 0;
        v32 = 1;
      }

      else
      {
        sub_25BEF2D54(v38, v63 + v34[9]);
        sub_25BEF3A28(0, &qword_281557740, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        v65 = 6;
        sub_25BEF2DB8(&qword_27FBE96E0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
        v40 = v62;
        sub_25BEF8C78();
        v62 = v40;
        if (!v40)
        {
          (*(v21 + 8))(v13, v59);
          v46 = v63;
          *(v63 + v34[10]) = v64;
          sub_25BEF1C48(v46, v51, type metadata accessor for NewsArticle);
          __swift_destroy_boxed_opaque_existential_1(v60);
          v44 = type metadata accessor for NewsArticle;
          v45 = v46;
          return sub_25BEF2CF4(v45, v44);
        }

        (*(v21 + 8))(v13, v59);
        v32 = 1;
        v33 = 1;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v60);
  v41 = v63;

  v42 = v58;
  v43 = v48;

  result = sub_25BEF39B8(v41 + v61, &qword_2815581D0, MEMORY[0x277CC9260]);
  if (v43)
  {
    result = (*(v55 + 8))(v41 + v34[7], v42);
    if ((v32 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (!v32)
  {
LABEL_15:
    if (v33)
    {
      goto LABEL_19;
    }

    return result;
  }

  result = (*(v35 + 8))(v41 + v34[8], v4);
  if (v33)
  {
LABEL_19:
    v44 = type metadata accessor for NewsChannel;
    v45 = v41 + v34[9];
    return sub_25BEF2CF4(v45, v44);
  }

  return result;
}

void sub_25BEF2C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BEF2394();
    v7 = a3(a1, &type metadata for NewsArticle.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_25BEF2CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BEF2D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsChannel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BEF2DB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_25BEF3A28(255, &qword_281557740, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BEF2E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_25BEF8CD8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _s7NewsKit0A7ArticleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_25BEF8098();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF3A78(0, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  sub_25BEF38DC(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_25BEF8CD8() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_25BEF8CD8() & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = type metadata accessor for NewsArticle(0);
  v15 = *(v24 + 24);
  v16 = *(v12 + 48);
  sub_25BEF188C(a1 + v15, v14);
  sub_25BEF188C(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_25BEF188C(v14, v10);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_25BEF3970(&qword_27FBE9708, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v18 = sub_25BEF8A58();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_25BEF39B8(v14, &qword_2815581D0, MEMORY[0x277CC9260]);
      if (v18)
      {
        goto LABEL_13;
      }

LABEL_17:
      v21 = 0;
      return v21 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_25BEF2CF4(v14, sub_25BEF38DC);
    goto LABEL_17;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_25BEF39B8(v14, &qword_2815581D0, MEMORY[0x277CC9260]);
LABEL_13:
  v20 = v24;
  if ((sub_25BEF80A8() & 1) == 0 || (sub_25BEF8078() & 1) == 0 || !_s7NewsKit0A7ChannelV2eeoiySbAC_ACtFZ_0((a1 + *(v20 + 36)), (a2 + *(v20 + 36))))
  {
    goto LABEL_17;
  }

  v21 = sub_25BEF2E70(*(a1 + *(v20 + 40)), *(a2 + *(v20 + 40)));
  return v21 & 1;
}

void sub_25BEF3310(uint64_t a1)
{
  sub_25BEF3A78(319, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25BEF80D8();
    if (v2 <= 0x3F)
    {
      sub_25BEF8098();
      if (v3 <= 0x3F)
      {
        type metadata accessor for NewsChannel(319);
        if (v4 <= 0x3F)
        {
          sub_25BEF3A28(319, &qword_281557740, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for NewsArticle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsArticle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BEF3594()
{
  result = qword_27FBE96E8;
  if (!qword_27FBE96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE96E8);
  }

  return result;
}

unint64_t sub_25BEF35EC()
{
  result = qword_27FBE96F0;
  if (!qword_27FBE96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE96F0);
  }

  return result;
}

unint64_t sub_25BEF3644()
{
  result = qword_27FBE96F8;
  if (!qword_27FBE96F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE96F8);
  }

  return result;
}

uint64_t sub_25BEF3698(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL || (sub_25BEF8CD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73726F68747561 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_25BEF8CD8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_25BEF38DC(uint64_t a1)
{
  if (!qword_27FBE9700)
  {
    sub_25BEF3A78(255, &qword_2815581D0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FBE9700);
    }
  }
}

uint64_t sub_25BEF3970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BEF39B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25BEF3A78(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_25BEF3A28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25BEF3A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25BEF3ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BEF8328();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25BEF82E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x277D2F9B0])
  {
    (*(v8 + 96))(v10, v7);
    v12 = *v10;
    v13 = objc_opt_self();
    sub_25BEF4394();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25BEFBAC0;
    v15 = [v12 identifier];
    v16 = sub_25BEF8A98();
    v18 = v17;

    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v19 = sub_25BEF8AD8();

    v20 = [v13 nss:v19 NewsURLWithPathComponents:0 internal:?];

    sub_25BEF8088();
    swift_unknownObjectRelease();

LABEL_3:
    v21 = sub_25BEF8098();
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }

  if (v11 == *MEMORY[0x277D2F9A8])
  {
    (*(v8 + 96))(v10, v7);
    v23 = *v10;
    sub_25BEF44AC(0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 64);
    swift_unknownObjectRelease();
    v27 = objc_opt_self();
    sub_25BEF4394();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_25BEFBAC0;
    v29 = [v23 identifier];
    v30 = sub_25BEF8A98();
    v32 = v31;

    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    v33 = sub_25BEF8AD8();

    v34 = [v27 nss:v33 NewsURLWithPathComponents:0 internal:?];

    sub_25BEF8088();
    swift_unknownObjectRelease();

    v35 = sub_25BEF8098();
    (*(*(v35 - 8) + 56))(a2, 0, 1, v35);
    __swift_destroy_boxed_opaque_existential_1((v10 + v26));
    v36 = sub_25BEF8398();
    return (*(*(v36 - 8) + 8))(v10 + v25, v36);
  }

  else
  {
    if (v11 == *MEMORY[0x277D2F980])
    {
      (*(v8 + 96))(v10, v7);
      sub_25BEF43E8(v10, v6);
      v37 = objc_opt_self();
      sub_25BEF4394();
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_25BEFBAC0;
      v39 = sub_25BEF8318();
      *(v38 + 56) = MEMORY[0x277D837D0];
      *(v38 + 32) = v39;
      *(v38 + 40) = v40;
      v41 = sub_25BEF8AD8();

      v42 = [v37 nss:v41 NewsURLWithPathComponents:0 internal:?];

      sub_25BEF8088();
      sub_25BEF444C(v6, MEMORY[0x277D2FB40]);
      goto LABEL_3;
    }

    if (v11 == *MEMORY[0x277D2F990])
    {
      (*(v8 + 96))(v10, v7);
      v43 = *v10;
      v44 = v10[1];
      v45 = objc_opt_self();
      sub_25BEF4394();
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_25BEFBAC0;
      *(v46 + 56) = MEMORY[0x277D837D0];
      *(v46 + 32) = v43;
      *(v46 + 40) = v44;
      v47 = sub_25BEF8AD8();

      v48 = [v45 nss:v47 NewsURLWithPathComponents:0 internal:?];

      sub_25BEF8088();
      goto LABEL_3;
    }

    v49 = sub_25BEF8098();
    (*(*(v49 - 8) + 56))(a2, 1, 1, v49);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_25BEF4170(uint64_t a1)
{
  sub_25BEE654C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25BEF8098();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF3ADC(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_25BEF444C(v4, sub_25BEE654C);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = [objc_opt_self() sharedApplication];
  v11 = sub_25BEF8068();
  sub_25BEE9AB8(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey();
  sub_25BEE9BB4();
  v12 = sub_25BEF8A48();

  [v10 openURL:v11 options:v12 completionHandler:0];

  return (*(v6 + 8))(v8, v5);
}

void sub_25BEF4394()
{
  if (!qword_2815575A8)
  {
    v0 = sub_25BEF8CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2815575A8);
    }
  }
}

uint64_t sub_25BEF43E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BEF8328();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BEF444C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25BEF44AC(uint64_t a1)
{
  if (!qword_27FBE9720)
  {
    MEMORY[0x28223BE20](a1);
    sub_25BEEB164();
    sub_25BEF8398();
    sub_25BEE50D0(255, &qword_27FBE9790, MEMORY[0x277D302A0], 1);
    sub_25BEE50D0(255, &qword_27FBE9798, MEMORY[0x277D30050], 0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27FBE9720);
    }
  }
}

void sub_25BEF45F4(void *a1@<X0>, double *a2@<X8>)
{
  sub_25BEE654C(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  if (a1 && (v13 = [a1 bannerImageForWhiteBackground]) != 0)
  {
    v14 = v13;
    v15 = [v13 assetHandle];

    if (!v15)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v16 = [v15 remoteURL];

    sub_25BEF8088();
    v17 = sub_25BEF8098();
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
  }

  else
  {
    v18 = sub_25BEF8098();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  }

  v19 = type metadata accessor for NewsChannelLogoCollection(0);
  sub_25BEF5BC0(v12, a2 + v19[5]);
  if (!a1 || (v20 = [a1 bannerImageForThemeBackground]) == 0)
  {
    v25 = sub_25BEF8098();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    sub_25BEF5BC0(v10, a2 + v19[6]);
    if (!a1)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v21 = v20;
  v22 = [v20 assetHandle];

  if (v22)
  {
    v23 = [v22 remoteURL];

    sub_25BEF8088();
    v24 = sub_25BEF8098();
    (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
    sub_25BEF5BC0(v10, a2 + v19[6]);
LABEL_11:
    v26 = [a1 bannerImageForMask];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 assetHandle];

      if (v28)
      {
        v29 = [v28 remoteURL];

        sub_25BEF8088();
        v30 = sub_25BEF8098();
        (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
        sub_25BEF5BC0(v7, a2 + v19[7]);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_14:
    v31 = sub_25BEF8098();
    (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
    sub_25BEF5BC0(v7, a2 + v19[7]);
    if (!a1)
    {
      v33 = 1.0;
      goto LABEL_16;
    }

LABEL_15:
    [a1 bannerImageScale];
    v33 = v32;
    swift_unknownObjectRelease();
LABEL_16:
    *a2 = v33;
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t NewsChannelLogoCollection.LogoTheme.hashValue.getter()
{
  v1 = *v0;
  sub_25BEF8D38();
  MEMORY[0x25F881A30](v1);
  return sub_25BEF8D58();
}

uint64_t NewsChannelLogoCollection.url(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for NewsChannelLogoCollection(0);
  return sub_25BEF5C24(v2 + *(v5 + qword_25BEFBF78[v4]), a2, sub_25BEE654C);
}

unint64_t sub_25BEF4B24()
{
  v1 = 0x656C616373;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6B73614D726F66;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_25BEF4BA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BEF5EB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BEF4BCC(uint64_t a1)
{
  v2 = sub_25BEF5B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BEF4C08(uint64_t a1)
{
  v2 = sub_25BEF5B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewsChannelLogoCollection.encode(to:)(void *a1)
{
  sub_25BEF5B5C(0, &qword_27FBE97A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF5B08();
  sub_25BEF8D78();
  v13 = 0;
  sub_25BEF8CA8();
  if (!v1)
  {
    type metadata accessor for NewsChannelLogoCollection(0);
    v12 = 1;
    sub_25BEF8098();
    sub_25BEF6088(&qword_27FBE96A0, MEMORY[0x277CC9268]);
    sub_25BEF8C88();
    v11 = 2;
    sub_25BEF8C88();
    v10 = 3;
    sub_25BEF8C88();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t NewsChannelLogoCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_25BEE654C(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  sub_25BEF5B5C(0, &qword_27FBE97B0, MEMORY[0x277D844C8]);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for NewsChannelLogoCollection(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF5B08();
  v36 = v13;
  v17 = v37;
  sub_25BEF8D68();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v10;
  v37 = a1;
  v19 = v34;
  v20 = v35;
  v41 = 0;
  sub_25BEF8C68();
  *v16 = v21;
  v22 = sub_25BEF8098();
  v40 = 1;
  v30 = sub_25BEF6088(&qword_27FBE96C8, MEMORY[0x277CC9280]);
  v31 = v22;
  sub_25BEF8C48();
  v23 = v14[5];
  v29 = v16;
  sub_25BEF5BC0(v18, v16 + v23);
  v39 = 2;
  sub_25BEF8C48();
  sub_25BEF5BC0(v8, v29 + v14[6]);
  v38 = 3;
  v24 = v33;
  sub_25BEF8C48();
  (*(v19 + 8))(v36, v20);
  v25 = v14[7];
  v26 = v29;
  sub_25BEF5BC0(v24, v29 + v25);
  sub_25BEF5C24(v26, v32, type metadata accessor for NewsChannelLogoCollection);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_25BEF6028(v26, type metadata accessor for NewsChannelLogoCollection);
}

BOOL _s7NewsKit0A21ChannelLogoCollectionV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = sub_25BEF8098();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25BEE654C(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v58[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v66 = &v58[-v13];
  MEMORY[0x28223BE20](v12);
  v15 = &v58[-v14];
  sub_25BEF38DC(0);
  v17 = v16;
  v18 = MEMORY[0x28223BE20](v16);
  v67 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v58[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v58[-v23];
  if (*a1 != *a2)
  {
    return 0;
  }

  v60 = v11;
  v61 = v7;
  v64 = type metadata accessor for NewsChannelLogoCollection(0);
  v25 = v64[5];
  v26 = a1;
  v27 = *(v17 + 48);
  v62 = v26;
  sub_25BEF5C24(v26 + v25, v24, sub_25BEE654C);
  v63 = a2;
  sub_25BEF5C24(a2 + v25, &v24[v27], sub_25BEE654C);
  v65 = v5;
  v28 = *(v5 + 48);
  if (v28(v24, 1, v4) == 1)
  {
    if (v28(&v24[v27], 1, v4) == 1)
    {
      sub_25BEF6028(v24, sub_25BEE654C);
      goto LABEL_9;
    }

LABEL_7:
    v29 = v24;
LABEL_22:
    sub_25BEF6028(v29, sub_25BEF38DC);
    return 0;
  }

  sub_25BEF5C24(v24, v15, sub_25BEE654C);
  if (v28(&v24[v27], 1, v4) == 1)
  {
    (*(v65 + 8))(v15, v4);
    goto LABEL_7;
  }

  v30 = v65;
  v31 = &v24[v27];
  v32 = v61;
  (*(v65 + 32))(v61, v31, v4);
  sub_25BEF6088(&qword_27FBE9708, MEMORY[0x277CC9278]);
  v59 = sub_25BEF8A58();
  v33 = *(v30 + 8);
  v33(v32, v4);
  v33(v15, v4);
  sub_25BEF6028(v24, sub_25BEE654C);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v34 = v64[6];
  v35 = *(v17 + 48);
  v36 = v62;
  sub_25BEF5C24(v62 + v34, v22, sub_25BEE654C);
  v37 = v63 + v34;
  v38 = v63;
  sub_25BEF5C24(v37, &v22[v35], sub_25BEE654C);
  if (v28(v22, 1, v4) != 1)
  {
    v39 = v66;
    sub_25BEF5C24(v22, v66, sub_25BEE654C);
    if (v28(&v22[v35], 1, v4) != 1)
    {
      v40 = v65;
      v41 = v61;
      (*(v65 + 32))(v61, &v22[v35], v4);
      sub_25BEF6088(&qword_27FBE9708, MEMORY[0x277CC9278]);
      v42 = sub_25BEF8A58();
      v43 = *(v40 + 8);
      v44 = v41;
      v36 = v62;
      v43(v44, v4);
      v43(v39, v4);
      v38 = v63;
      sub_25BEF6028(v22, sub_25BEE654C);
      if ((v42 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v65 + 8))(v39, v4);
    goto LABEL_14;
  }

  if (v28(&v22[v35], 1, v4) != 1)
  {
LABEL_14:
    v29 = v22;
    goto LABEL_22;
  }

  sub_25BEF6028(v22, sub_25BEE654C);
LABEL_16:
  v45 = v64[7];
  v46 = *(v17 + 48);
  v47 = v36 + v45;
  v48 = v67;
  sub_25BEF5C24(v47, v67, sub_25BEE654C);
  sub_25BEF5C24(v38 + v45, &v48[v46], sub_25BEE654C);
  if (v28(v48, 1, v4) == 1)
  {
    if (v28(&v67[v46], 1, v4) == 1)
    {
      sub_25BEF6028(v67, sub_25BEE654C);
      return 1;
    }

    goto LABEL_21;
  }

  v49 = v67;
  v50 = v60;
  sub_25BEF5C24(v67, v60, sub_25BEE654C);
  if (v28(&v49[v46], 1, v4) == 1)
  {
    (*(v65 + 8))(v50, v4);
LABEL_21:
    v29 = v67;
    goto LABEL_22;
  }

  v52 = v65;
  v53 = v67;
  v54 = &v67[v46];
  v55 = v61;
  (*(v65 + 32))(v61, v54, v4);
  sub_25BEF6088(&qword_27FBE9708, MEMORY[0x277CC9278]);
  v56 = sub_25BEF8A58();
  v57 = *(v52 + 8);
  v57(v55, v4);
  v57(v50, v4);
  sub_25BEF6028(v53, sub_25BEE654C);
  return (v56 & 1) != 0;
}

uint64_t type metadata accessor for NewsChannelLogoCollection(uint64_t a1)
{
  result = qword_281558030;
  if (!qword_281558030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25BEF5B08()
{
  result = qword_27FBE97A8;
  if (!qword_27FBE97A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE97A8);
  }

  return result;
}

void sub_25BEF5B5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25BEF5B08();
    v7 = a3(a1, &type metadata for NewsChannelLogoCollection.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_25BEF5BC0(uint64_t a1, uint64_t a2)
{
  sub_25BEE654C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BEF5C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25BEF5C90()
{
  result = qword_27FBE97B8;
  if (!qword_27FBE97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE97B8);
  }

  return result;
}

void sub_25BEF5D0C(uint64_t a1)
{
  sub_25BEE654C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_25BEF5DB4()
{
  result = qword_27FBE97C0;
  if (!qword_27FBE97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE97C0);
  }

  return result;
}

unint64_t sub_25BEF5E0C()
{
  result = qword_27FBE97C8;
  if (!qword_27FBE97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE97C8);
  }

  return result;
}

unint64_t sub_25BEF5E64()
{
  result = qword_27FBE97D0;
  if (!qword_27FBE97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE97D0);
  }

  return result;
}

uint64_t sub_25BEF5EB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025BEFC7F0 == a2 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025BEFC810 == a2 || (sub_25BEF8CD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B73614D726F66 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BEF8CD8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_25BEF6028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25BEF6088(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25BEF8098();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_25BEF6260(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D75348]);
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = a5;
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277D75348]);
    v18 = a6;
    v19 = a7;
    v20 = a8;
    v21 = a9;
  }

  return [v17 initWithRed:v18 green:v19 blue:v20 alpha:v21];
}

uint64_t sub_25BEF6328@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25BEF86D8();
  swift_allocObject();
  result = sub_25BEF86C8();
  v4 = MEMORY[0x277D6D498];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

unint64_t sub_25BEF6380@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for EngagementUpsellBannerPropertiesProvider();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_25BEF65AC();
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_25BEF63F8()
{
  v0 = sub_25BEF8508();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8488();
  sub_25BEE59F0(0, &unk_281558118, MEMORY[0x277D6D908]);
  sub_25BEF84F8();

  (*(v1 + 104))(v3, *MEMORY[0x277D6CF00], v0);
  sub_25BEF8418();

  (*(v1 + 8))(v3, v0);
  sub_25BEF8488();
  sub_25BEE59F0(0, &unk_281558168, MEMORY[0x277D318C0]);
  sub_25BEF84F8();
}

unint64_t sub_25BEF65AC()
{
  result = qword_27FBE97D8;
  if (!qword_27FBE97D8)
  {
    type metadata accessor for EngagementUpsellBannerPropertiesProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE97D8);
  }

  return result;
}

uint64_t sub_25BEF6694@<X0>(uint64_t (*a1)(void)@<X1>, unint64_t *a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = a1(0);
  v10 = swift_allocObject();
  a5[3] = v9;
  result = sub_25BEF68AC(a2, a3, a4);
  a5[4] = result;
  *a5 = v10;
  return result;
}

uint64_t sub_25BEF6778(uint64_t a1)
{
  sub_25BEF8488();
  sub_25BEE59F0(0, &qword_2815581C0, MEMORY[0x277D2F9B8]);
  sub_25BEF84F8();

  sub_25BEF8488();
  sub_25BEE59F0(0, &qword_2815581B8, MEMORY[0x277D2FB48]);
  sub_25BEF84F8();

  sub_25BEF8488();
  sub_25BEE59F0(0, &unk_281558150, MEMORY[0x277D35080]);
  sub_25BEF84F8();
}

uint64_t sub_25BEF68AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25BEF6AD0(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_281557D88 != -1)
  {
    v3 = a2;
    swift_once();
    a2 = v3;
  }

  return a2();
}

id sub_25BEF6B34()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t sub_25BEF6B74(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF7F8C(0, &qword_2815576F8, 0x277D30EE0);
  result = sub_25BEF8448();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_25BEF6BD8()
{
  result = [objc_opt_self() sharedNetworkReachability];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_25BEF6C14(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF7FD4(0, &qword_2815576F0, &protocolRef_FCContentContext);
  result = sub_25BEF8448();
  if (result)
  {
    v2 = [result news_core_ConfigurationManager];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25BEF6CAC(void *a1, SEL *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF7F8C(0, &qword_2815576F8, 0x277D30EE0);
  result = sub_25BEF8448();
  if (result)
  {
    v4 = result;
    v5 = [result *a2];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25BEF6D58(void *a1, SEL *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BEF7F8C(0, &qword_2815576F8, 0x277D30EE0);
  v3 = sub_25BEF8448();
  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [v3 *a2];

  if (!v5)
  {
LABEL_5:
    __break(1u);
  }
}

id sub_25BEF6E00()
{
  v0 = [objc_opt_self() defaultAvailability];

  return v0;
}

id sub_25BEF6E40()
{
  v0 = objc_allocWithZone(MEMORY[0x277D312A0]);

  return [v0 init];
}

uint64_t sub_25BEF6E9C(void **a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_25BEF7FD4(0, &unk_27FBE9A50, &protocolRef_FCEntitlementsOverrideProviderType);
  [v2 setEntitlementsOverrideProvider_];

  return swift_unknownObjectRelease();
}

id sub_25BEF6F38()
{
  v0 = objc_allocWithZone(type metadata accessor for StubAppActivityMonitor());

  return [v0 init];
}

uint64_t sub_25BEF6F98(uint64_t a1)
{
  v2 = sub_25BEF8508();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_2815576F8, 0x277D30EE0);
  sub_25BEF84E8();

  v6 = *MEMORY[0x277D6CF10];
  v7 = *(v3 + 104);
  v7(v5, v6, v2);
  sub_25BEF8418();

  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_25BEF8408();

  sub_25BEF8488();
  sub_25BEF7FD4(0, &unk_281557630, &protocolRef_FCCoreConfigurationManager);
  sub_25BEF84E8();

  v7(v5, v6, v2);
  v20 = v3 + 104;
  sub_25BEF8418();

  v8(v5, v2);
  sub_25BEF8498();
  sub_25BEF7FD4(0, &unk_2815576B8, &protocolRef_FCFeldsparIDProvider);
  sub_25BEF84E8();

  v16 = v6;
  v7(v5, v6, v2);
  sub_25BEF8418();

  v8(v5, v2);
  v19 = v8;
  sub_25BEF8488();
  sub_25BEF7FD4(0, &qword_2815576F0, &protocolRef_FCContentContext);
  sub_25BEF84E8();

  sub_25BEF8488();
  sub_25BEF7FD4(0, &unk_2815576A8, &protocolRef_FCPrivateDataContext);
  sub_25BEF84E8();

  sub_25BEF8488();
  sub_25BEF7F8C(0, &unk_281557690, 0x277D31140);
  sub_25BEF84E8();

  v7(v5, v6, v2);
  sub_25BEF8418();

  v8(v5, v2);
  sub_25BEF8488();
  sub_25BEF7FD4(0, &qword_281557620, &protocolRef_FCNewsAppConfigurationManager);
  sub_25BEF84E8();

  sub_25BEF8488();
  sub_25BEF7F8C(0, &unk_27FBE98C0, 0x277D310B8);
  sub_25BEF84E8();

  v9 = v16;
  v18 = v7;
  v7(v5, v16, v2);
  sub_25BEF8418();

  v10 = v19;
  v19(v5, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_2815576E8, 0x277D31278);
  sub_25BEF84E8();

  v7(v5, v9, v2);
  sub_25BEF8418();

  v10(v5, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_281557720, 0x277D31288);
  sub_25BEF84E8();

  v11 = v18;
  v18(v5, v9, v2);
  sub_25BEF8418();

  v10(v5, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_281557648, 0x277D31330);
  sub_25BEF84E8();

  v11(v5, v9, v2);
  sub_25BEF8418();

  v10(v5, v2);
  v15 = a1;
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_281557650, 0x277D31178);
  sub_25BEF84E8();

  v12 = v18;
  v18(v5, v9, v2);
  sub_25BEF8418();

  v10(v5, v2);
  sub_25BEF8488();
  v17 = sub_25BEF7F8C(0, &unk_281557678, 0x277D31078);
  sub_25BEF84E8();

  v12(v5, v9, v2);
  sub_25BEF8418();

  v10(v5, v2);
  sub_25BEF8488();
  sub_25BEF7FD4(0, &qword_281557640, &protocolRef_FCIssueReadingHistoryType);
  sub_25BEF84E8();

  v12(v5, v9, v2);
  sub_25BEF8418();

  v13 = v19;
  v19(v5, v2);
  sub_25BEF8488();
  sub_25BEF84E8();

  v12(v5, v9, v2);
  sub_25BEF8418();

  v13(v5, v2);
  sub_25BEF8488();
  sub_25BEF7FD4(0, &qword_281557658, &protocolRef_FCPaidAccessCheckerType);
  sub_25BEF84E8();

  v12(v5, v9, v2);
  sub_25BEF8418();

  v13(v5, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &unk_281557700, 0x277D30E10);
  sub_25BEF84E8();

  v12(v5, v9, v2);
  sub_25BEF8418();

  v13(v5, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_281557618, 0x277D31200);
  sub_25BEF84E8();

  sub_25BEF8488();
  sub_25BEF7FD4(0, &unk_281557660, &protocolRef_FCReceiptRefresherType);
  sub_25BEF84E8();

  sub_25BEF8488();
  sub_25BEF7F8C(0, &unk_2815576C8, 0x277D30F88);
  sub_25BEF84E8();

  v12(v5, v9, v2);
  sub_25BEF8418();

  v13(v5, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &qword_2815576A0, 0x277D31210);
  sub_25BEF84E8();

  sub_25BEF8408();

  v12(v5, v9, v2);
  sub_25BEF8418();

  v13(v5, v2);
  sub_25BEF8488();
  sub_25BEF7FD4(0, &qword_281557688, &protocolRef_FCPurchaseManagerType);
  sub_25BEF84E8();

  v12(v5, v9, v2);
  sub_25BEF8418();

  v13(v5, v2);
  sub_25BEF8488();
  sub_25BEF7FD4(0, &qword_281557670, &protocolRef_FCPurchaseProviderType);
  sub_25BEF84E8();

  v12(v5, v9, v2);
  sub_25BEF8418();

  v13(v5, v2);
  sub_25BEF8488();
  sub_25BEF7FD4(0, &unk_2815575F8, &protocolRef_FCBundleSubscriptionManagerType);
  sub_25BEF84E8();

  sub_25BEF8408();

  v12(v5, v9, v2);
  sub_25BEF8418();

  v13(v5, v2);
  sub_25BEF8488();
  sub_25BEF7F8C(0, &unk_281557710, 0x277D31368);
  sub_25BEF84E8();

  v12(v5, v9, v2);
  sub_25BEF8418();

  v13(v5, v2);
  sub_25BEF8498();
  sub_25BEF7FD4(0, &qword_2815576D8, &protocolRef_FCAppActivityMonitor);
  sub_25BEF84E8();
}

uint64_t sub_25BEF7F8C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25BEF7FD4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}