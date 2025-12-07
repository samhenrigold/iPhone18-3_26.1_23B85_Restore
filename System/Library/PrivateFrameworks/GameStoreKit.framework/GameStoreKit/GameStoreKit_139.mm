uint64_t sub_24F435D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeInvite(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F435E14()
{
  v1 = v0;
  v2 = (type metadata accessor for ChallengesInvitesShelfIntent(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v25 = *(*v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  swift_unknownObjectRelease();

  v8 = v1 + v4 + v2[10];
  v9 = type metadata accessor for Game(0);
  v10 = (*(*(v9 - 1) + 48))(v8, 1, v9);
  v11 = v25;
  if (!v10)
  {
    v22 = v1;
    v23 = v6;
    v24 = v5;

    v12 = v9[18];
    v13 = sub_24F9289E8();
    v14 = *(v13 - 8);
    v15 = *(v14 + 8);
    v15(v8 + v12, v13);
    v16 = v9[19];
    if (!(*(v14 + 48))(v8 + v16, 1, v13))
    {
      v15(v8 + v16, v13);
    }

    v17 = v9[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v8 + v17, 1, v18))
    {
      (*(v19 + 8))(v8 + v17, v18);
    }

    v4 = (v3 + 32) & ~v3;
    v5 = v24;
    v11 = v25;
    v6 = v23;
    v1 = v22;
  }

  v20 = (((v11 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;

  (*(v6 + 8))(v1 + v20, v5);

  return swift_deallocObject();
}

uint64_t sub_24F43615C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesInvitesShelfIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4361C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ChallengesInvitesShelfIntent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E614970;

  return sub_24F4324C8(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_24F436368(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4363B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F436418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F436478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F433890(a1, v4, v5, v6);
}

uint64_t type metadata accessor for GameAchievementsListPageIntent(uint64_t a1)
{
  result = qword_27F243628;
  if (!qword_27F243628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameAchievementsListPageIntent.selectedAchievementID.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameAchievementsListPageIntent(0) + 24));

  return v1;
}

uint64_t GameAchievementsListPageIntent.init(gameSource:player:selectedAchievementID:background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_24F437584(a1, a6, type metadata accessor for GameSource);
  v12 = type metadata accessor for GameAchievementsListPageIntent(0);
  sub_24E60169C(a2, a6 + v12[5], &unk_27F23E1F0, &unk_24F9549C0);
  v13 = (a6 + v12[6]);
  *v13 = a3;
  v13[1] = a4;
  sub_24E60169C(a5, a6 + v12[7], &qword_27F21D8F8, &qword_24F95ADB0);
  v16[3] = &_s14descr2861AC041O5GamesON;
  v16[4] = sub_24EDA569C();
  LOBYTE(v16[0]) = 0;
  v14 = sub_24F91FE68();
  sub_24E601704(a5, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24E601704(a2, &unk_27F23E1F0, &unk_24F9549C0);
  sub_24E7A1744(a1, type metadata accessor for GameSource);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  *(a6 + v12[8]) = v14 & 1;
  return result;
}

unint64_t GameAchievementsListPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x72756F53656D6167;
  *(inited + 40) = 0xEA00000000006563;
  *(inited + 72) = type metadata accessor for GameSource(0);
  *(inited + 80) = sub_24E92E1C8(&qword_27F221F68, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F437584(v1, boxed_opaque_existential_1, type metadata accessor for GameSource);
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v5 = type metadata accessor for GameAchievementsListPageIntent(0);
  v6 = v5[5];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 136) = sub_24E7EDBB4();
  v7 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E60169C(v1 + v6, v7, &unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 144) = 0xD000000000000015;
  *(inited + 152) = 0x800000024FA75370;
  v8 = (v1 + v5[6]);
  v10 = *v8;
  v9 = v8[1];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v11 = sub_24E605DB4();
  *(inited + 160) = v10;
  *(inited + 168) = v9;
  *(inited + 192) = v11;
  *(inited + 200) = 0x756F72676B636162;
  *(inited + 208) = 0xEA0000000000646ELL;
  v12 = v5[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 248) = sub_24E7D17FC();
  v13 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v2 + v12, v13, &qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v14 = *(v2 + v5[8]);
  v15 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v15;
  *(inited + 272) = v14;

  v16 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v16;
  return result;
}

unint64_t sub_24F436AB4()
{
  v1 = *v0;
  v2 = 0x72756F53656D6167;
  v3 = 0xD000000000000015;
  v4 = 0x756F72676B636162;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726579616C70;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F436B60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F437B4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F436B88(uint64_t a1)
{
  v2 = sub_24F437530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F436BC4(uint64_t a1)
{
  v2 = sub_24F437530();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameAchievementsListPageIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243610, &qword_24F9F7450);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F437530();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for GameSource(0);
  sub_24E92E1C8(&qword_27F221F60, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for GameAchievementsListPageIntent(0);
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E92E1C8(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CCF8();
    v8[13] = 2;
    sub_24F92CCA8();
    v8[12] = 3;
    type metadata accessor for Page.Background(0);
    sub_24E92E1C8(&qword_27F21D920, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
    sub_24F92CCF8();
    v8[11] = 4;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GameAchievementsListPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for GameSource(0);
  MEMORY[0x28223BE20](v8);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243620, &qword_24F9F7458);
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for GameAchievementsListPageIntent(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F437530();
  v33 = v12;
  v16 = v36;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v7;
  v41 = 0;
  sub_24E92E1C8(&qword_27F221F50, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
  v19 = v32;
  v18 = v33;
  sub_24F92CC68();
  v20 = v19;
  v21 = v15;
  sub_24F063FF0(v20, v15);
  type metadata accessor for Player(0);
  v40 = 1;
  sub_24E92E1C8(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC18();
  sub_24E6009C8(v17, &v15[v13[5]], &unk_27F23E1F0, &unk_24F9549C0);
  v39 = 2;
  v22 = sub_24F92CBC8();
  v23 = a1;
  v24 = v34;
  v25 = (v21 + v13[6]);
  *v25 = v22;
  v25[1] = v26;
  type metadata accessor for Page.Background(0);
  v38 = 3;
  sub_24E92E1C8(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  v27 = v31;
  sub_24F92CC18();
  sub_24E6009C8(v27, v21 + v13[7], &qword_27F21D8F8, &qword_24F95ADB0);
  v37 = 4;
  LOBYTE(v27) = sub_24F92CC38();
  (*(v24 + 8))(v18, v35);
  *(v21 + v13[8]) = v27 & 1;
  sub_24F437584(v21, v30, type metadata accessor for GameAchievementsListPageIntent);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_24E7A1744(v21, type metadata accessor for GameAchievementsListPageIntent);
}

unint64_t sub_24F437530()
{
  result = qword_27F243618;
  if (!qword_27F243618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243618);
  }

  return result;
}

uint64_t sub_24F437584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F437600(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GameSource(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24F4377B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for GameSource(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_24F437940(uint64_t a1)
{
  type metadata accessor for GameSource(319);
  if (v1 <= 0x3F)
  {
    sub_24EE0050C(319, &qword_27F214988, type metadata accessor for Player);
    if (v2 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v3 <= 0x3F)
      {
        sub_24EE0050C(319, &qword_27F21D948, type metadata accessor for Page.Background);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F437A48()
{
  result = qword_27F243638;
  if (!qword_27F243638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243638);
  }

  return result;
}

unint64_t sub_24F437AA0()
{
  result = qword_27F243640;
  if (!qword_27F243640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243640);
  }

  return result;
}

unint64_t sub_24F437AF8()
{
  result = qword_27F243648;
  if (!qword_27F243648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243648);
  }

  return result;
}

uint64_t sub_24F437B4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72756F53656D6167 && a2 == 0xEA00000000006563 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA75370 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24F437D14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C61436F69647561;
  if (v2 != 1)
  {
    v3 = 0x6C61436F65646976;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6567617373656DLL;
  }

  if (v2)
  {
    v5 = 0xE90000000000006CLL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x6C61436F69647561;
  if (*a2 != 1)
  {
    v6 = 0x6C61436F65646976;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6567617373656DLL;
  }

  if (*a2)
  {
    v8 = 0xE90000000000006CLL;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  return v9 & 1;
}

uint64_t sub_24F437E08()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F437EB4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F437F4C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F437FF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F43C5C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F438024(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C61436F69647561;
  if (v2 != 1)
  {
    v4 = 0x6C61436F65646976;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6567617373656DLL;
  }

  if (!v5)
  {
    v3 = 0xE90000000000006CLL;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_24F4380EC()
{
  sub_24F43C27C(v0, v4);
  if (v5[40])
  {
    v1 = v4[0];
    v2 = v4[1];

    MEMORY[0x253050C20](v1, v2);

    sub_24E601704(v5, &qword_27F2169E8, &qword_24F943600);
    return 0x5F6D6F74737563;
  }

  else
  {

    return sub_24F92B0D8();
  }
}

uint64_t sub_24F4381B4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2437F8, &qword_24F9F7800);
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v4 = v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243800, &qword_24F9F7808);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243808, &qword_24F9F7810);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v34 - v10;
  v12 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24F43C028();
  v13 = v39;
  sub_24F92D108();
  if (!v13)
  {
    v14 = v4;
    v15 = v38;
    v39 = v9;
    v16 = sub_24F92CC78();
    v17 = (2 * *(v16 + 16)) | 1;
    v49 = v16;
    v50 = v16 + 32;
    v51 = 0;
    v52 = v17;
    v18 = sub_24E643430();
    if (v18 == 2 || v51 != v52 >> 1)
    {
      v19 = sub_24F92C918();
      swift_allocError();
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v21 = &type metadata for ProfileHeroQuickAction;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
      swift_willThrow();
      (*(v39 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v18)
      {
        LOBYTE(v42) = 1;
        sub_24F43C07C();
        sub_24F92CBA8();
        v41 = 0;
        v42 = sub_24F92CC28();
        v37 = v24;
        v43 = v24;
        v41 = 1;
        v44 = sub_24F92CC28();
        *&v45 = v26;
        v34[1] = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
        v41 = 2;
        sub_24EE076B8();
        sub_24F92CC68();
        (*(v36 + 8))(v14, v15);
        (*(v39 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v28 = 1;
        v48 = 1;
        v29 = v42;
        v56[0] = *(&v42 + 1);
        *(v56 + 3) = HIDWORD(v42);
        v30 = v43;
        v31 = v44;
        v53 = v45;
        v54 = v46;
        v55 = v47;
      }

      else
      {
        LOBYTE(v42) = 0;
        sub_24F43C0D0();
        v23 = v7;
        sub_24F92CBA8();
        v40 = 0;
        sub_24F43C124();
        sub_24F92CC68();
        v25 = v11;
        v29 = v41;
        v40 = 1;
        v30 = sub_24F92CC28();
        v31 = v27;
        (*(v37 + 8))(v23, v5);
        (*(v39 + 8))(v25, v8);
        swift_unknownObjectRelease();
        v28 = 0;
        LOBYTE(v42) = 0;
      }

      v32 = v35;
      *v35 = v29;
      *(v32 + 1) = v56[0];
      *(v32 + 1) = *(v56 + 3);
      *(v32 + 1) = v30;
      *(v32 + 2) = v31;
      *(v32 + 24) = v53;
      v33 = v55;
      *(v32 + 40) = v54;
      *(v32 + 56) = v33;
      v32[72] = v28;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_24F438964()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x73746361746E6F63;
  }
}

uint64_t sub_24F43899C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F438A74(uint64_t a1)
{
  v2 = sub_24F43C028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F438AB0(uint64_t a1)
{
  v2 = sub_24F43C028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F438AEC()
{
  if (*v0)
  {
    return 0x6D496D6574737973;
  }

  else
  {
    return 0x79546E6F69746361;
  }
}

uint64_t sub_24F438B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F438C24(uint64_t a1)
{
  v2 = sub_24F43C0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F438C60(uint64_t a1)
{
  v2 = sub_24F43C0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F438C9C()
{
  v1 = 0x6D496D6574737973;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24F438CFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F43C60C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F438D24(uint64_t a1)
{
  v2 = sub_24F43C07C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F438D60(uint64_t a1)
{
  v2 = sub_24F43C07C();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_24F438DB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9BA030;
  v1 = *MEMORY[0x277CBD028];
  v2 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v3 = v1;
  v4 = [v2 initWithString_];

  *(v0 + 32) = v4;
  v5 = *MEMORY[0x277CBD020];
  v6 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v7 = v5;
  v8 = [v6 initWithString_];

  *(v0 + 40) = v8;
  v9 = *MEMORY[0x277CBD158];
  v10 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v11 = v9;
  v12 = [v10 initWithString_];

  *(v0 + 48) = v12;
  result = [objc_opt_self() descriptorForRequiredKeys];
  *(v0 + 56) = result;
  qword_27F243650 = v0;
  return result;
}

id sub_24F438EF8()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  v3 = (v0 + *(type metadata accessor for ProfileHeroQuickActionsView(0) + 28));
  v4 = v3[1];
  *(v2 + 32) = *v3;
  *(v2 + 40) = v4;

  v5 = sub_24F92B588();

  v6 = [v1 predicateForContactsMatchingHandleStrings_];

  v7 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  if (qword_27F211280 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
  v8 = sub_24F92B588();
  v18[0] = 0;
  v9 = [v7 unifiedContactsMatchingPredicate:v6 keysToFetch:v8 error:v18];

  v10 = v18[0];
  if (!v9)
  {
    v15 = v18[0];
    v16 = sub_24F91F278();

    swift_willThrow();
LABEL_13:
    v14 = [objc_allocWithZone(MEMORY[0x277CBDA58]) init];

    return v14;
  }

  sub_24E69A5C4(0, &qword_27F223450, 0x277CBDA58);
  v11 = sub_24F92B5A8();
  v12 = v10;

  if (v11 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_6:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x253052270](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v13 = *(v11 + 32);
  }

  v14 = v13;

  return v14;
}

__n128 sub_24F439194@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2438D8, &qword_24F9F7CE0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v18 - v5;
  v7 = sub_24F438EF8();
  v8 = type metadata accessor for ProfileHeroQuickActionsView(0);
  v9 = *(v1 + *(v8 + 32));
  v10 = *(v1 + *(v8 + 36));

  sub_24F7695C8((v6 + 24));
  v11 = type metadata accessor for CNContactQuickActionsView(0);
  sub_24F76973C(&v6[*(v11 + 32)]);
  *v6 = v7;
  *(v6 + 1) = v9;
  v6[16] = v10;
  sub_24F927618();
  sub_24F9238C8();
  v12 = &v6[*(v4 + 44)];
  v13 = v18[1];
  *v12 = v18[0];
  *(v12 + 1) = v13;
  *(v12 + 2) = v18[2];
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, a1, &qword_27F2438D8, &qword_24F9F7CE0);
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2438E0, &qword_24F9F7CE8) + 36);
  v15 = v18[8];
  *(v14 + 64) = v18[7];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[9];
  v16 = v18[4];
  *v14 = v18[3];
  *(v14 + 16) = v16;
  result = v18[6];
  *(v14 + 32) = v18[5];
  *(v14 + 48) = result;
  return result;
}

void sub_24F4393E8()
{
  v1 = sub_24F921B58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v37 = *v0;
  LODWORD(v38) = *(v0 + 16);
  sub_24E60169C((v0 + 3), v46, &unk_27F212740, &unk_24F940730);
  v6 = type metadata accessor for CNContactQuickActionsView(0);
  v7 = *(v2 + 16);
  v7(v4, v0 + *(v6 + 32), v1);
  v8 = type metadata accessor for CNContactQuickActionsViewController(0);
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_performAction];
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  *&v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller] = 0;
  *&v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC] = 0;
  v11 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_stack;
  *&v9[v11] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *&v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_lastTimestamp] = 0;
  *&v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_quickActions] = v5;
  v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_direction] = v38;
  swift_beginAccess();

  sub_24F43D514(v46, v10);
  swift_endAccess();
  v38 = v4;
  v7(&v9[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_metricsFieldsContext], v4, v1);
  v45.receiver = v9;
  v45.super_class = v8;
  v12 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
  v13 = v12;
  v14 = *(v5 + 16);
  if (v14)
  {
    v35 = v2;
    v36 = v1;
    v44 = MEMORY[0x277D84F90];
    v34 = v12;
    v15 = v12;
    sub_24F4578E0(0, v14, 0);
    v16 = v5 + 32;
    v17 = v44;
    do
    {
      sub_24F43C27C(v16, v43);
      sub_24F43C27C(v43, v41);
      if (v42[40])
      {
        v18 = v41[0];
        v19 = v41[1];

        v39 = 0x5F6D6F74737563;
        v40 = 0xE700000000000000;
        MEMORY[0x253050C20](v18, v19);

        v20 = v39;
        v21 = v40;
        sub_24E601704(v42, &qword_27F2169E8, &qword_24F943600);
      }

      else
      {

        v20 = sub_24F92B0D8();
        v21 = v22;
      }

      sub_24F43C24C(v43);
      v44 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_24F4578E0((v23 > 1), v24 + 1, 1);
        v17 = v44;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v21;
      v16 += 80;
      --v14;
    }

    while (v14);
    v1 = v36;
    v2 = v35;
    v13 = v34;
  }

  else
  {
    v26 = v12;
  }

  v27 = objc_allocWithZone(MEMORY[0x277CBDC20]);
  v28 = v13;
  v29 = sub_24F92B588();

  v30 = [v27 initWithActionTypes:v29 contactQuickActionViewContainer:v28];

  v31 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller;
  v32 = *&v28[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller];
  *&v28[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller] = v30;

  if (v30)
  {
    [v30 setContact_];
    v33 = *&v28[v31];
    if (v33)
    {
      [v33 setDelegate_];

      (*(v2 + 8))(v38, v1);
      sub_24E601704(v46, &unk_27F212740, &unk_24F940730);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_24F43989C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F921B58();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  result = *(a1 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller);
  if (result)
  {
    [result setContact_];
    *(a1 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_quickActions) = *(v2 + 8);

    sub_24F439BF0(*(v2 + 16));
    sub_24E60169C(v2 + 24, v14, &unk_27F212740, &unk_24F940730);
    v10 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_performAction;
    swift_beginAccess();
    sub_24F43D4A4(v14, a1 + v10);
    swift_endAccess();
    v11 = type metadata accessor for CNContactQuickActionsView(0);
    (*(v5 + 16))(v8, v2 + *(v11 + 32), v4);
    v12 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_metricsFieldsContext;
    swift_beginAccess();
    (*(v5 + 40))(a1 + v12, v8, v4);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F439A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F43D414(&qword_27F243928, type metadata accessor for CNContactQuickActionsView, &unk_24F9F7D68);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24F439B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F43D414(&qword_27F243928, type metadata accessor for CNContactQuickActionsView, &unk_24F9F7D68);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24F439B98(uint64_t a1)
{
  sub_24F43D414(&qword_27F243928, type metadata accessor for CNContactQuickActionsView, &unk_24F9F7D68);
  sub_24F925628();
  __break(1u);
}

void sub_24F439BF0(char a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_direction;
  v3 = v1[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_direction];
  v1[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_direction] = a1 & 1;
  if (v3 != (a1 & 1))
  {
    v4 = [*&v1[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_stack] trailingAnchor];
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 trailingAnchor];

      v8 = [v4 constraintEqualToAnchor_];
      [v8 setActive_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24F439D38()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = type metadata accessor for CNContactQuickActionsViewController(0);
  objc_msgSendSuper2(&v43, sel_viewDidLoad);
  v2 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_stack;
  [*&v0[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_stack] setDistribution_];
  [*&v0[v2] setSpacing_];
  v3 = [*&v0[v2] arrangedSubviews];
  sub_24E69A5C4(0, &qword_27F220378, 0x277D75D18);
  v4 = sub_24F92B5A8();

  if (v4 >> 62)
  {
    v5 = sub_24F92C738();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x253052270](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [*&v1[v2] removeArrangedSubview_];
  }

LABEL_10:

  v9 = *&v1[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_quickActions];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;

    do
    {
      sub_24F43C27C(v11, v42);
      v12 = sub_24F4380EC();
      v14 = v13;
      sub_24F43C24C(v42);
      sub_24F43A49C(v12, v14);
      v16 = v15;

      [*&v1[v2] addArrangedSubview_];

      v11 += 80;
      --v10;
    }

    while (v10);
  }

  [*&v1[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [v1 view];
  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = v17;
  [v17 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F96E2B0;
  v20 = [*&v1[v2] leadingAnchor];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v19 + 32) = v24;
  v25 = [*&v1[v2] topAnchor];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v19 + 40) = v29;
  v30 = [*&v1[v2] bottomAnchor];
  v31 = [v1 view];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = v31;
  v33 = objc_opt_self();
  v34 = [v32 bottomAnchor];

  v35 = [v30 constraintEqualToAnchor_];
  *(v19 + 48) = v35;
  sub_24E69A5C4(0, &unk_27F243860, 0x277CCAAD0);
  v36 = sub_24F92B588();

  [v33 activateConstraints_];

  v37 = [*&v1[v2] trailingAnchor];
  v38 = [v1 view];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 trailingAnchor];

    v41 = [v37 constraintEqualToAnchor_];
    [v41 setActive_];

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_24F43A26C(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CNContactQuickActionsViewController(0);
  objc_msgSendSuper2(&v8, sel_viewWillDisappear_, a1 & 1);
  v3 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC;
  v4 = *&v1[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC];
  if (v4)
  {
    v5 = v4;
    if ([v5 isBeingPresented])
    {
      [v5 dismissViewControllerAnimated:a1 & 1 completion:0];
      v6 = *&v1[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      [v7 disambiguationViewControllerDismissedExternally_];

      v5 = *&v1[v3];
      *&v1[v3] = 0;
    }
  }
}

void sub_24F43A49C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_quickActions);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_24F43C27C(v8, v35);
      sub_24F43C27C(v35, v38);
      if (v40[24])
      {
        v9 = v38[0];

        v28 = 0x5F6D6F74737563;
        v29 = 0xE700000000000000;
        MEMORY[0x253050C20](v9, *(&v9 + 1));

        v10 = 0xE700000000000000;
        sub_24E601704(&v39, &qword_27F2169E8, &qword_24F943600);
        v11 = 0x5F6D6F74737563;
      }

      else
      {

        v11 = sub_24F92B0D8();
        v10 = v12;
      }

      if (v11 == a1 && v10 == a2)
      {
        goto LABEL_14;
      }

      v14 = sub_24F92CE08();

      if (v14)
      {
        goto LABEL_15;
      }

      ++v7;
      sub_24F43C24C(v35);
      v8 += 80;
      if (v6 == v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_13:

  __break(1u);
LABEL_14:

LABEL_15:

  v39 = v36;
  *v40 = *v37;
  *&v40[9] = *&v37[9];
  v38[0] = v35[0];
  v38[1] = v35[1];
  sub_24F43C27C(v38, v35);
  if (v37[24])
  {
    v16 = *(&v35[0] + 1);
    v15 = *&v35[0];

    sub_24E601704(&v36, &qword_27F2169E8, &qword_24F943600);
  }

  else
  {
    sub_24F43C24C(v35);
    v17 = *&v27[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller];
    if (!v17)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v18 = v17;
    sub_24F4380EC();
    v19 = sub_24F92B098();

    v20 = [v18 defaultTitleForActionType_];

    v15 = sub_24F92B0D8();
    v16 = v21;
  }

  sub_24F43C27C(v38, v35);
  v33 = v15;
  v34 = v16;
  sub_24E600AEC();
  v22 = sub_24F92C558();
  v24 = v23;

  sub_24F43C27C(v38, &v28);
  if (v32[40])
  {

    v25 = v30;
    v26 = v31;
    sub_24E601704(v32, &qword_27F2169E8, &qword_24F943600);
  }

  else
  {
    v25 = v29;
    v26 = v30;
  }

  sub_24F43C2B4(v27, v35, v22, v24, v25, v26, 1);
  sub_24F43C24C(v38);
}

void sub_24F43A838(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F921B58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_lastTimestamp;
  v13 = *(v2 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_lastTimestamp);
  sub_24F91F638();
  sub_24F91F5E8();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  *(v2 + v12) = v15;
  if (v15 - v13 > 0.5)
  {
    sub_24F43C27C(a1, v26);
    if (v30)
    {

      v24[0] = v27;
      v24[1] = v28;
      v25 = v29;
      v16 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_performAction;
      swift_beginAccess();
      sub_24E60169C(v2 + v16, v23, &unk_27F212740, &unk_24F940730);
      if (v23[3])
      {
        sub_24E615E00(v23, v22);
        sub_24E601704(v23, &unk_27F212740, &unk_24F940730);
        __swift_project_boxed_opaque_existential_1(v22, v22[3]);
        v17 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_metricsFieldsContext;
        swift_beginAccess();
        (*(v5 + 16))(v7, v2 + v17, v4);
        sub_24F9218A8();
        (*(v5 + 8))(v7, v4);
        sub_24E601704(v24, &qword_27F2169E8, &qword_24F943600);
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        sub_24E601704(v24, &qword_27F2169E8, &qword_24F943600);
        sub_24E601704(v23, &unk_27F212740, &unk_24F940730);
      }
    }

    else
    {
      v18 = *(v2 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller);
      if (v18)
      {
        v19 = v26[0];
        v20 = v18;

        [v20 executeTapBehaviorForActionType_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_24F43AB8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_lastTimestamp;
  v9 = *(v2 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_lastTimestamp);
  sub_24F91F638();
  sub_24F91F5E8();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *(v2 + v8) = v11;
  if (v11 - v9 > 0.5)
  {
    sub_24F43C27C(a1, v15);
    if (v16[40])
    {

      sub_24E601704(v16, &qword_27F2169E8, &qword_24F943600);
    }

    else
    {
      v12 = *(v2 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller);
      if (v12)
      {
        v13 = v15[0];
        v14 = v12;

        [v14 executeLongPressBehaviorForActionType_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void *sub_24F43AD24(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_stack) arrangedSubviews];
  sub_24E69A5C4(0, &qword_27F220378, 0x277D75D18);
  v6 = sub_24F92B5A8();

  v8 = sub_24E9E25A8(v6, v7);

  if (v8)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
    {
      v11 = 0;
      v12 = v8 & 0xC000000000000001;
      v30 = v8 & 0xC000000000000001;
      while (1)
      {
        if (v12)
        {
          v13 = MEMORY[0x253052270](v11, v8);
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_23;
          }

          v13 = *(v8 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        sub_24F43C27C(v13 + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_action, v32);
        v31 = v14;
        if (v33[40])
        {
          v16 = v8;
          v17 = a1;
          v18 = a2;
          v19 = i;
          v20 = v9;
          v22 = v32[0];
          v21 = v32[1];

          v23 = v22;
          v9 = v20;
          i = v19;
          a2 = v18;
          a1 = v17;
          v8 = v16;
          v12 = v30;
          MEMORY[0x253050C20](v23, v21);

          v24 = 0xE700000000000000;
          sub_24E601704(v33, &qword_27F2169E8, &qword_24F943600);
          v25 = 0x5F6D6F74737563;
        }

        else
        {

          v25 = sub_24F92B0D8();
          v24 = v26;
        }

        if (v25 == a1 && v24 == a2)
        {

LABEL_21:

          return v31;
        }

        v28 = sub_24F92CE08();

        if (v28)
        {
          goto LABEL_21;
        }

        ++v11;
        if (v15 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
  }

  return 0;
}

uint64_t sub_24F43B0D8(uint64_t a1)
{
  result = sub_24F921B58();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_24F43B34C()
{
  v1 = sub_24F91F6B8();
  v75 = *(v1 - 8);
  v76 = v1;
  MEMORY[0x28223BE20](v1);
  v74 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v73 - v4;
  v6 = sub_24F928AD8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - v11;
  *&v84 = 0;
  v82 = 0u;
  v83 = 0u;
  sub_24F928A98();
  v13 = swift_allocObject();
  v77 = v0;
  *(v13 + 16) = v0;
  v14 = type metadata accessor for LocalAction(0);
  v15 = swift_allocObject();
  v16 = (v15 + OBJC_IVAR____TtC12GameStoreKit11LocalAction_handler);
  *v16 = sub_24F43C1B0;
  v16[1] = v13;
  sub_24E60169C(&v82, v81, &qword_27F235830, &qword_24F93B8C0);
  v17 = *(v7 + 16);
  v78 = v9;
  v17(v9, v12, v6);
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v79 = v5;
  v19(v5, 1, 1, v18);
  v80 = v15;
  v20 = (v15 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  sub_24E60169C(v81, &v95, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v96 + 1))
  {
    v105 = v95;
    v106 = v96;
    *&v107 = v97;
    v21 = v77;
    v22 = v77;
  }

  else
  {
    v21 = v77;
    v23 = v77;
    v24 = v74;
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v75 + 8))(v24, v76);
    v103 = v25;
    v104 = v27;
    sub_24F92C7F8();
    sub_24E601704(&v95, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v81, &qword_27F235830, &qword_24F93B8C0);
  (*(v7 + 8))(v12, v6);
  sub_24E601704(&v82, &qword_27F235830, &qword_24F93B8C0);
  v28 = v79;
  v29 = v80;
  v30 = v80 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v31 = v106;
  *v30 = v105;
  *(v30 + 16) = v31;
  *(v30 + 32) = v107;
  sub_24E6009C8(v28, v29 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  (*(v7 + 32))(v29 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v78, v6);
  *(&v96 + 1) = v14;
  v32 = sub_24F43D414(&qword_27F23A788, type metadata accessor for LocalAction, &protocol conformance descriptor for Action);
  *&v95 = v29;
  v33 = *&v21[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_title];
  v34 = *&v21[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_title + 8];
  v35 = *&v21[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_systemImageName];
  v36 = *&v21[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_systemImageName + 8];
  v97 = v32;
  v98 = v33;
  v99 = v34;
  v100 = v35;
  v101 = v36;
  v102 = 1;

  sub_24F927618();
  sub_24F9242E8();
  sub_24F2AC180(&v95, v81);
  v81[5] = v105;
  v81[6] = v106;
  v81[9] = v109;
  v81[10] = v110;
  v81[7] = v107;
  v81[8] = v108;
  v86 = v81[4];
  v87 = v105;
  v88 = v106;
  v89 = v107;
  v92 = v110;
  v93 = v111;
  v90 = v108;
  v91 = v109;
  v84 = v81[2];
  v85 = v81[3];
  v83 = v81[1];
  v81[11] = v111;
  v82 = v81[0];
  v94 = 0;
  v37 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F243850, &qword_24F9F7818));
  v38 = sub_24F924D28();
  v39 = OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_rootView;
  [*&v21[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_rootView] removeFromSuperview];
  v40 = v38;
  v41 = [v40 view];
  v42 = *&v21[v39];
  *&v21[v39] = v41;

  v43 = [v40 view];
  if (!v43)
  {
    __break(1u);
    goto LABEL_13;
  }

  v44 = v43;
  v45 = v21;
  v46 = [objc_opt_self() clearColor];
  [v44 setBackgroundColor_];

  v47 = [v40 view];
  if (!v47)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v48 = v47;
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];

  v49 = [v40 view];
  if (!v49)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v50 = v49;
  [v21 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_24F9BA030;
  v52 = [v40 view];
  if (!v52)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v53 = v52;
  v54 = [v52 topAnchor];

  v55 = [v45 topAnchor];
  v56 = [v54 constraintEqualToAnchor_];

  *(v51 + 32) = v56;
  v57 = [v40 view];
  if (!v57)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v58 = v57;
  v59 = [v57 bottomAnchor];

  v60 = [v45 bottomAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v51 + 40) = v61;
  v62 = [v40 view];
  if (!v62)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v63 = v62;
  v64 = [v62 leadingAnchor];

  v65 = [v45 leadingAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(v51 + 48) = v66;
  v67 = [v40 view];

  if (v67)
  {
    v68 = objc_opt_self();
    v69 = [v67 trailingAnchor];

    v70 = [v45 trailingAnchor];
    v71 = [v69 constraintEqualToAnchor_];

    *(v51 + 56) = v71;
    sub_24E69A5C4(0, &unk_27F243860, 0x277CCAAD0);
    v72 = sub_24F92B588();

    [v68 activateConstraints_];

    sub_24F43C1F8(&v95);
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_24F43BD3C(void *a1, uint64_t a2, void *a3, void (*a4)(char *))
{
  v8 = a3;
  v6 = a1;
  if ([v8 state] == 3)
  {
    __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller], *&v6[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller + 24]);
    a4(&v6[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_action]);
    v7 = v6;
  }

  else
  {
    v7 = v8;
    v8 = v6;
  }
}

id sub_24F43BE74(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24F43BF60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F43BF9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_24F43BFEC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

unint64_t sub_24F43C028()
{
  result = qword_27F243810;
  if (!qword_27F243810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243810);
  }

  return result;
}

unint64_t sub_24F43C07C()
{
  result = qword_27F243820;
  if (!qword_27F243820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243820);
  }

  return result;
}

unint64_t sub_24F43C0D0()
{
  result = qword_27F243838;
  if (!qword_27F243838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243838);
  }

  return result;
}

unint64_t sub_24F43C124()
{
  result = qword_27F243840;
  if (!qword_27F243840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243840);
  }

  return result;
}

uint64_t sub_24F43C178()
{

  return swift_deallocObject();
}

void sub_24F43C1B0()
{
  v1 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller), *(v1 + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller + 24));
  sub_24F43A838(v1 + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_action);
}

void sub_24F43C2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  HIDWORD(v35) = a7;
  v13 = type metadata accessor for CNContactQuickActionsViewController(0);
  v38[3] = v13;
  v38[4] = &off_2862215D8;
  v38[0] = a1;
  v14 = type metadata accessor for QuickActionButtonView();
  v15 = objc_allocWithZone(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v38, v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v37[3] = v13;
  v37[4] = &off_2862215D8;
  v22 = a2;
  v37[0] = v21;
  *&v15[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_rootView] = 0;
  sub_24E615E00(v37, &v15[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller]);
  sub_24F43C27C(a2, &v15[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_action]);
  v23 = &v15[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_title];
  *v23 = a3;
  v23[1] = a4;
  v24 = &v15[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_systemImageName];
  *v24 = a5;
  v24[1] = a6;
  v15[OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_enabled] = BYTE4(v35);
  v36.receiver = v15;
  v36.super_class = v14;
  v25 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_24F43B34C();
  v26 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v25 action:sel_tappedWithSender_];
  v27 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v25 action:sel_longPressedWithSender_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9C29E0;
  *(inited + 32) = v26;
  *(inited + 40) = v27;
  v29 = v26;
  v30 = v27;
  if ((inited & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x253052270](0, inited);
  }

  else
  {
    v31 = v29;
  }

  v32 = v31;
  [v25 addGestureRecognizer_];

  if ((inited & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x253052270](1, inited);
LABEL_7:
    v34 = v33;

    [v25 addGestureRecognizer_];

    sub_24F43C24C(v22);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v33 = *(inited + 40);
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_24F43C5C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24F43C60C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

void sub_24F43C724()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_performAction;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_controller) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC) = 0;
  v2 = OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_stack;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *(v0 + OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_lastTimestamp) = 0;
  sub_24F92CA88();
  __break(1u);
}

void sub_24F43C7E4(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = sub_24F43AD24(a2, a3);
  v5 = [a1 popoverPresentationController];
  if (v5)
  {
    v6 = v5;
    [v5 setSourceView_];
  }

  v7 = [a1 popoverPresentationController];
  if (v7)
  {
    v8 = v7;
    if (v15)
    {
      [v15 bounds];
    }

    else
    {
      v9 = 0.0;
      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
    }

    [v8 setSourceRect_];
  }

  v13 = *&v3[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC];
  *&v3[OBJC_IVAR____TtC12GameStoreKit35CNContactQuickActionsViewController_disambiguationVC] = a1;
  v14 = a1;

  [v3 presentViewController:v14 animated:1 completion:0];
}

unint64_t sub_24F43C940()
{
  result = qword_27F243870;
  if (!qword_27F243870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243870);
  }

  return result;
}

unint64_t sub_24F43C998()
{
  result = qword_27F243878;
  if (!qword_27F243878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243878);
  }

  return result;
}

unint64_t sub_24F43C9F0()
{
  result = qword_27F243880;
  if (!qword_27F243880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243880);
  }

  return result;
}

unint64_t sub_24F43CA48()
{
  result = qword_27F243888;
  if (!qword_27F243888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243888);
  }

  return result;
}

unint64_t sub_24F43CAA0()
{
  result = qword_27F243890;
  if (!qword_27F243890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243890);
  }

  return result;
}

unint64_t sub_24F43CAF8()
{
  result = qword_27F243898;
  if (!qword_27F243898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243898);
  }

  return result;
}

unint64_t sub_24F43CB50()
{
  result = qword_27F2438A0;
  if (!qword_27F2438A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2438A0);
  }

  return result;
}

unint64_t sub_24F43CBA8()
{
  result = qword_27F2438A8;
  if (!qword_27F2438A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2438A8);
  }

  return result;
}

unint64_t sub_24F43CC00()
{
  result = qword_27F2438B0;
  if (!qword_27F2438B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2438B0);
  }

  return result;
}

unint64_t sub_24F43CC58()
{
  result = qword_27F2438B8;
  if (!qword_27F2438B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2438B8);
  }

  return result;
}

unint64_t sub_24F43CCAC()
{
  result = qword_27F2438C0;
  if (!qword_27F2438C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2438C0);
  }

  return result;
}

uint64_t sub_24F43CD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24F43CDF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24F43CEE4(uint64_t a1)
{
  sub_24EC3FF44(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24E6D74E4(319);
    if (v2 <= 0x3F)
    {
      sub_24F43CFCC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F43CFCC()
{
  if (!qword_27F21D020)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21D020);
    }
  }
}

uint64_t sub_24F43D06C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F921B58();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_24F43D12C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F921B58();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F43D1D0(uint64_t a1)
{
  sub_24E69A5C4(319, &qword_27F223450, 0x277CBDA58);
  if (v1 <= 0x3F)
  {
    sub_24F43CFCC();
    if (v2 <= 0x3F)
    {
      sub_24EC3FF44(319, &qword_27F2438F8, &unk_27F243900, &qword_24F9F7D10, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24F921B58();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F43D2CC()
{
  result = qword_27F243910;
  if (!qword_27F243910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2438E0, &qword_24F9F7CE8);
    sub_24F43D358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243910);
  }

  return result;
}

unint64_t sub_24F43D358()
{
  result = qword_27F243918;
  if (!qword_27F243918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2438D8, &qword_24F9F7CE0);
    sub_24F43D414(&qword_27F243920, type metadata accessor for CNContactQuickActionsView, &unk_24F9F7D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243918);
  }

  return result;
}

uint64_t sub_24F43D414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F43D4A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212740, &unk_24F940730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F43D514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212740, &unk_24F940730);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_24F43D594(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243968, &qword_24F9F7F40);
  sub_24E602068(&qword_27F243970, &qword_27F243968, &qword_24F9F7F40, &unk_24F966BF8);
  sub_24F922CB8();
  *(v2 + *((*v5 & *v2) + 0x78)) = 0;
  v6 = v2 + *((*v5 & *v2) + 0x80);
  *v6 = 0;
  v6[8] = 1;
  *(v2 + *((*v5 & *v2) + 0x88)) = 0;
  *(v2 + *((*v5 & *v2) + 0xA0)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243978, &qword_24F9F7F48);
  v7 = swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243980, &unk_24F9F7F50);
  sub_24E602068(&qword_27F243988, &qword_27F243980, &unk_24F9F7F50, &unk_24F966C38);
  sub_24F922CB8();
  *(v7 + 16) = a1;
  *(v2 + *((*v5 & *v2) + 0x70)) = v7;
  *(v2 + *((*v5 & *v2) + 0x60)) = MEMORY[0x277D84F90];
  v8 = v2 + *((*v5 & *v2) + 0x90);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  *(v8 + 2) = *(a2 + 32);
  v8[48] = *(a2 + 48);
  *(v2 + *((*v5 & *v2) + 0x98)) = *a2;
  *(v2 + *((*v5 & *v2) + 0xA8)) = 1;
  sub_24F43FD7C(a2, v26);
  v25.receiver = v2;
  v25.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243960, &qword_24F9F7F38);
  v10 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 displayLinkWithTarget:v12 selector:sel_animateScrollWithDisplayLink_];
  v14 = *((*v5 & *v12) + 0x78);
  v15 = *(v12 + v14);
  *(v12 + v14) = v13;

  if (v13)
  {
    [v13 setPreferredFramesPerSecond_];
    sub_24F43DDE4();
    v16 = *(v12 + v14);
    if (v16)
    {
      v17 = v16;
      sub_24F43FDD8(a2);
      v18 = [objc_opt_self() mainRunLoop];
      [v17 addToRunLoop:v18 forMode:*MEMORY[0x277CBE738]];

      v19 = v12;
      [v19 setClipsToBounds_];
      v20 = objc_opt_self();
      v21 = [v20 defaultCenter];
      [v21 addObserver:v19 selector:sel_lowMemoryWarning_ name:*MEMORY[0x277D76670] object:0];

      v22 = [v20 defaultCenter];
      [v22 addObserver:v19 selector:sel_reduceMotionStatusDidChange_ name:*MEMORY[0x277D764C0] object:0];

      v23 = [v20 defaultCenter];
      [v23 addObserver:v19 selector:sel_willEnterForeground_ name:*MEMORY[0x277D76758] object:0];

      v24 = [v20 defaultCenter];
      [v24 addObserver:v19 selector:sel_didEnterBackground_ name:*MEMORY[0x277D76660] object:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24F43DACC()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & v2) + 0xA8);
  swift_beginAccess();
  if (*(v1 + v4) == 1)
  {
    v5 = [v1 window];
    if (v5)
    {

      if (([v1 isHidden] & 1) == 0 && !UIAccessibilityIsReduceMotionEnabled())
      {
        return sub_24F43E3EC();
      }
    }
  }

  v6 = *((*v3 & *v1) + 0x78);
  result = *(v1 + v6);
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  result = [result isPaused];
  if (result)
  {
    return result;
  }

  result = *(v1 + v6);
  if (!result)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  [result setPaused_];
  [v1 bounds];
  Width = CGRectGetWidth(v28);
  v9 = *((*v3 & *v1) + 0x60);
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 >> 62)
  {
    goto LABEL_24;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v12 = *v3;
  v26 = *((*v3 & *v1) + 0x88);
  v3 = *((*v3 & *v1) + 0x90);
  v13 = *((v12 & *v1) + 0xA0);

  v25 = v13;
  swift_beginAccess();
  if (v11)
  {
    v14 = 0;
    v22 = v3 + v1;
    v23 = v10 & 0xFFFFFFFFFFFFFF8;
    v24 = v10 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v3 = MEMORY[0x253052270](v14, v10);
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_19:
          __break(1u);
        }
      }

      else
      {
        if (v14 >= *(v23 + 16))
        {
          __break(1u);
LABEL_24:
          v11 = sub_24F92C738();
          goto LABEL_10;
        }

        v3 = *(v10 + 8 * v14 + 32);

        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_19;
        }
      }

      v16 = *(v1 + v26);
      v17 = v10;
      v18 = v22[48];
      v27 = *(v1 + v25);
      v19 = [v1 traitCollection];
      v20 = [v19 layoutDirection];

      v21 = ((v14 & 1) == 0) & v18;
      v10 = v17;
      sub_24F43ED68(v1, v21, 1, 1, v27, v16, Width, v20);

      ++v14;
    }

    while (v15 != v11);
  }
}

void sub_24F43DDE4()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & v2) + 0x60);
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = v6 - 2;
  v7 = v6 == 2;
  if (v6 > 2)
  {
    while (1)
    {
      swift_beginAccess();
      v3 = *(v1 + v4);
      if (v3 >> 62)
      {
        if (!sub_24F92C738())
        {
LABEL_12:
          __break(1u);
          goto LABEL_13;
        }
      }

      else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v1 + v4) = v3;
      if (v3 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v3 = sub_24ECDE964(v3);
      }

      v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10 - 1;
        *(v1 + v4) = v3;
        swift_endAccess();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243950, &qword_24F9F7F28);
        sub_24F922CA8();
        swift_endAccess();

        if (!--v8)
        {
          return;
        }
      }

      else
      {
LABEL_13:
        __break(1u);
LABEL_14:
        v6 = sub_24F92C738();
        v8 = v6 - 2;
        v7 = v6 == 2;
        if (v6 <= 2)
        {
          break;
        }
      }
    }
  }

  if (!v7)
  {
    v11 = (v1 + *((*v3 & *v1) + 0x98));
    v12 = swift_beginAccess();
    v13 = (v1 + *((*v3 & *v1) + 0x90));
    v14 = (v11[1] + v13[2]) * v6;
    while (1)
    {
      v15 = *(*(v13 + 5) + 16);
      if (!v15)
      {
        break;
      }

      if (v6 % v15 < 0)
      {
        goto LABEL_25;
      }

      MEMORY[0x28223BE20](v12);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243950, &qword_24F9F7F28);
      sub_24F922C98();
      swift_endAccess();
      swift_beginAccess();

      MEMORY[0x253050F00](v16);
      if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      ++v6;
      sub_24F92B638();
      swift_endAccess();

      v14 = v14 + v11[1] + v13[2];
      if (v6 == 2)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }
}

void sub_24F43E188()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243950, &qword_24F9F7F28);
  sub_24F922C88();
  swift_endAccess();
  v3 = *((*v2 & *v0) + 0x60);
  swift_beginAccess();
  v4 = *(v3 + v0);
  v17 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {

    v6 = MEMORY[0x277D84F90];
    v16 = v3;
    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x253052270](v7, v4);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v6 = v17;
            break;
          }
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v8 = *(v4 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_12;
          }
        }

        swift_beginAccess();
        v10 = *(v8 + 72);

        sub_24EA0C2F8(v10);
        ++v7;
        if (v9 == i)
        {
          goto LABEL_13;
        }
      }
    }

    v11 = *(v6 + 16);
    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = (v6 + 40);
    v3 = &selRef_systemBackgroundColor;
    while (v12 < *(v6 + 16))
    {
      ++v12;
      v14 = *v13;
      v13 += 2;
      v4 = v14;
      v15 = [v4 layer];
      [v15 removeAllAnimations];

      [v4 removeFromSuperview];
      if (v11 == v12)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_18:

  *(v16 + v1) = MEMORY[0x277D84F90];

  sub_24F43DDE4();
}

id sub_24F43E3EC()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  result = *(v0 + v2);
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  result = [result isPaused];
  if (!result)
  {
    return result;
  }

  v4 = CACurrentMediaTime();
  v5 = (v25 + *((*v1 & *v25) + 0x80));
  if ((v5[1] & 1) == 0 && v4 - *v5 > 0.015)
  {
    *v5 = v4;
    *(v5 + 8) = 0;
  }

  [v25 bounds];
  Width = CGRectGetWidth(v27);
  v7 = *((*v1 & *v25) + 0x60);
  swift_beginAccess();
  v8 = *(v25 + v7);
  if (v8 >> 62)
  {
LABEL_22:
    v9 = sub_24F92C738();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = *((*v1 & *v25) + 0x88);
  v10 = *((*v1 & *v25) + 0x90);
  v11 = *((*v1 & *v25) + 0xA0);

  v23 = v11;
  swift_beginAccess();
  if (v9)
  {
    v1 = 0;
    v21 = v8 & 0xFFFFFFFFFFFFFF8;
    v22 = v8 & 0xC000000000000001;
    do
    {
      if (v22)
      {
        MEMORY[0x253052270](v1, v8);
        v12 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v1 >= *(v21 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v12 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_17;
        }
      }

      v13 = *(v25 + v24);
      v14 = v9;
      v15 = v8;
      v16 = *(v25 + v10 + 48);
      v26 = *(v25 + v23);
      v17 = [v25 traitCollection];
      v18 = [v17 layoutDirection];

      v19 = ((v1 & 1) == 0) & v16;
      v8 = v15;
      v9 = v14;
      sub_24F43ED68(v25, v19, 1, 1, v26, v13, Width, v18);

      v1 = (v1 + 1);
    }

    while (v12 != v14);
  }

  result = *(v25 + v20);
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  return [result setPaused_];
}

uint64_t sub_24F43E6F0(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = MEMORY[0x277D85000];
  v7 = (a1 + *((*MEMORY[0x277D85000] & *a1) + 0x98));
  swift_beginAccess();
  if (v4 != *v7 || v5 != v7[1])
  {
    *v7 = v4;
    v7[1] = v5;
    v8 = *(*(a1 + *((*v6 & *a1) + 0x70)) + 16);
    swift_beginAccess();
    *(v8 + 32) = v4;
    *(v8 + 40) = v5;
    sub_24F43E188();
  }

  v9 = *(a1 + *((*v6 & *a1) + 0x70));
  v10 = *(v9 + 16);
  v17 = *(v2 + 16);
  *(v10 + 24) = v17;

  sub_24E60169C(&v17, v15, &qword_27F243938, &qword_24F9F7F08);

  v11 = *(v9 + 16);
  v16 = *(v2 + 24);
  *(v11 + 48) = v16;

  sub_24E60169C(&v16, v15, &qword_27F243940, &qword_24F9F7F10);

  v12 = *(v2 + 32);
  v13 = *((*v6 & *a1) + 0xA8);
  swift_beginAccess();
  *(a1 + v13) = v12;
  return sub_24F43DACC();
}

void sub_24F43E8BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  type metadata accessor for ArcadeFooterRiverViewDataSource();
  v5 = swift_allocObject();
  v5[4] = v1;
  v5[5] = v2;
  v5[2] = 2;
  v5[3] = v3;
  v5[6] = v4;
  v11[0] = v1;
  v11[1] = v2;
  __asm { FMOV            V0.2D, #10.0 }

  v12 = _Q0;
  v13 = 0x4014000000000000;
  v14 = &unk_2861C12B8;
  v15 = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243960, &qword_24F9F7F38));

  sub_24F43D594(v5, v11);
}

id sub_24F43E980(void *a1)
{
  result = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x78));
  if (result)
  {
    return [result invalidate];
  }

  __break(1u);
  return result;
}

uint64_t sub_24F43E9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F43FE2C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24F43EA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F43FE2C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24F43EA88(uint64_t a1)
{
  sub_24F43FE2C();
  sub_24F924DC8();
  __break(1u);
}

unint64_t sub_24F43EAB4()
{
  result = qword_27F243930;
  if (!qword_27F243930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243930);
  }

  return result;
}

void sub_24F43EB08(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  v3 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  v4 = v2[v3];
  v2[v3] = 1;
  v8 = v4;
  sub_24F359430(&v8);
  if (qword_27F210430 != -1)
  {
    swift_once();
  }

  v5 = qword_27F22BEB0;
  v6 = *&v2[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor];
  *&v2[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor] = qword_27F22BEB0;
  sub_24E77ACC8();
  v7 = v5;
  if ((sub_24F92C408() & 1) == 0)
  {
    sub_24F357100();
  }

  *a1 = v2;
}

void *sub_24F43EC30@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v7 = MEMORY[0x277D85000];
  v8 = a2 - a3;
  if (__OFSUB__(a2, a3))
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = *(result + *((*MEMORY[0x277D85000] & *result) + 0x70));
    v13 = (result + *((*MEMORY[0x277D85000] & *result) + 0x98));
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v11 + *((*v7 & *v11) + 0x90) + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243958, &qword_24F9F7F30);
    v17 = swift_allocObject();
    *(v17 + 72) = sub_24E611C38(MEMORY[0x277D84F90]);
    *(v17 + 56) = a5;
    *(v17 + 64) = a6;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    *(v17 + 48) = v16;
    *(v17 + 16) = v12;
    *(v17 + 24) = v8;
    *a4 = v17;
  }

  return result;
}

void sub_24F43ED68(void *a1, int a2, int a3, int a4, int a5, double a6, double a7, uint64_t a8)
{
  v9 = v8;
  v129 = a8;
  LODWORD(v10) = a5;
  LODWORD(v11) = a4;
  v111 = a3;
  LODWORD(v134) = a2;
  v112 = a1;
  v128 = sub_24F92CDB8();
  v14 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_24F927D88();
  isUniquelyReferenced_nonNull_native = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_24F927DC8();
  v18 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v9 + 16);
  v21 = *(v20[2] + 24);
  if (v21 >> 62)
  {
    goto LABEL_116;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v23 = i < 1 || a7 <= COERCE_DOUBLE(1);
    v133 = v20;
    if (!v23)
    {
      break;
    }

    v14 = 1;
    swift_beginAccess();
    v24 = v20;
    v25 = *(v9 + 72);
    v27 = *(v25 + 64);
    v20 = (v25 + 64);
    v26 = v27;
    v28 = 1 << *(*(v9 + 72) + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v10 = v29 & v26;
    v30 = *(*v24 + 104);
    v31 = (v28 + 63) >> 6;
    v134 = *(v9 + 72);

    isUniquelyReferenced_nonNull_native = 0;
    while (v10)
    {
      v32 = isUniquelyReferenced_nonNull_native;
LABEL_16:
      v33 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v11 = v133;
      *&v138[0] = *(*(v134 + 56) + ((v32 << 9) | (8 * v33)));
      v34 = *&v138[0];
      swift_beginAccess();
      v18 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243948, &unk_24F9F7F18);
      v14 = v11 + v30;
      sub_24F922CA8();
      swift_endAccess();
    }

    while (1)
    {
      v32 = isUniquelyReferenced_nonNull_native + 1;
      if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
      {
        break;
      }

      if (v32 >= v31)
      {

        *(v9 + 72) = MEMORY[0x277D84F98];

        return;
      }

      v10 = v20[v32];
      ++isUniquelyReferenced_nonNull_native;
      if (v10)
      {
        isUniquelyReferenced_nonNull_native = v32;
        goto LABEL_16;
      }
    }

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
    ;
  }

  v35 = *(v9 + 24);
  v36 = (i >> 1) * v35;
  if (((i >> 1) * v35) >> 64 != v36 >> 63)
  {
    __break(1u);
    goto LABEL_118;
  }

  v37 = *(v9 + 32) + *(v9 + 48);
  v38 = a6 - *(v9 + 56);
  v39 = v38 / v37;
  if (COERCE__INT64(fabs(v38 / v37)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v108 = v10;
  v109 = v11;
  v121 = i;
  v125 = v36 % i;
  v40 = v39;
  v41 = fmod(v38, v37);
  v42 = *v20;
  v115 = (isUniquelyReferenced_nonNull_native + 8);
  v116 = v137;
  v114 = (v18 + 8);
  v124 = (v14 + 104);
  v126 = *(v42 + 104);
  v123 = (v14 + 8);
  v43 = v41 + a7;
  isUniquelyReferenced_nonNull_native = 0x27F23F000;
  v44 = -v41;
  if (v134)
  {
    v45 = -v37;
  }

  else
  {
    v45 = v37;
  }

  if (v134)
  {
    v46 = -v37;
  }

  else
  {
    v46 = v37 + a7;
  }

  if (v134)
  {
    a6 = v43;
  }

  else
  {
    a6 = v44;
  }

  v122 = *MEMORY[0x277D84688];
  v113 = 1107296256;
  v110 = v40;
  while (1)
  {
    v50 = a6 <= v46;
    if (v134)
    {
      v50 = v46 <= a6;
    }

    if (!v50)
    {
      break;
    }

    swift_beginAccess();
    v51 = *(v9 + 72);
    if (!*(v51 + 16) || (v52 = sub_24E7728CC(v40), (v53 & 1) == 0))
    {
      swift_endAccess();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243948, &unk_24F9F7F18);
      sub_24F922C98();
      swift_endAccess();
      v18 = v140[0];
      v20 = v20[2];
      v56 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_setImageDisablesAnimations;
      swift_beginAccess();
      if (*(v18 + v56) == 1)
      {
        v57 = *(v18 + *(isUniquelyReferenced_nonNull_native + 4040));
        v58 = v18;

        v59 = [v57 layer];
        [v59 removeAllAnimations];
      }

      else
      {
        v60 = v18;
      }

      v61 = *(v18 + *(isUniquelyReferenced_nonNull_native + 4040));
      [v61 setImage_];
      [v61 setHidden_];
      sub_24F357100();
      v62 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
      swift_beginAccess();
      if (((*(v18 + v62) - 2) & 0xFD) == 0)
      {
        if (sub_24F3595CC())
        {
          if (qword_27F211130 != -1)
          {
            swift_once();
          }

          v72 = qword_27F23FFB8;
          v11 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
          swift_beginAccess();
          v10 = *(v18 + v11);
          *(v18 + v11) = v72;
          v73 = v72;

          sub_24E9F322C();
          v63 = v20[6];
          if (!v63)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v74 = [objc_opt_self() clearColor];
          v75 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
          swift_beginAccess();
          v10 = *(v18 + v75);
          *(v18 + v75) = v74;
          v11 = v74;

          sub_24E9F322C();
          v63 = v20[6];
          if (!v63)
          {
            goto LABEL_56;
          }
        }

LABEL_48:

        v136[0] = sub_24F92AFE8();
        sub_24F92C7F8();
        v131 = *(v63 + 32);
        sub_24E65864C(v140, v138);
        v64 = swift_allocObject();
        v65 = v138[1];
        *(v64 + 24) = v138[0];
        *(v64 + 16) = v63;
        *(v64 + 40) = v65;
        *(v64 + 56) = v139;
        *(v64 + 64) = 1;
        v137[2] = sub_24EAFE234;
        v137[3] = v64;
        v136[0] = MEMORY[0x277D85DD0];
        v136[1] = v113;
        v137[0] = sub_24EAF8248;
        v137[1] = &block_descriptor_152;
        v66 = _Block_copy(v136);
        v130 = v20;
        v20 = v66;

        v132 = v40;
        v67 = v117;
        sub_24F927DA8();
        v135 = MEMORY[0x277D84F90];
        LODWORD(v10) = sub_24E858250();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
        sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
        v68 = v119;
        v11 = v9;
        v69 = v120;
        sub_24F92C6A8();
        MEMORY[0x2530518B0](0, v67, v68, v20);
        _Block_release(v20);

        v70 = v69;
        v9 = v11;
        (*v115)(v68, v70);
        v71 = v67;
        v40 = v132;
        (*v114)(v71, v118);
        sub_24E6585F8(v140);

        goto LABEL_56;
      }

      v63 = v20[6];
      if (v63)
      {
        goto LABEL_48;
      }

LABEL_56:

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140[0] = *(v9 + 72);
      v14 = v140[0];
      *(v9 + 72) = 0x8000000000000000;
      v76 = sub_24E7728CC(v40);
      v78 = *(v14 + 16);
      v79 = (v77 & 1) == 0;
      v49 = __OFADD__(v78, v79);
      v80 = v78 + v79;
      if (v49)
      {
        goto LABEL_110;
      }

      LODWORD(v11) = v77;
      if (*(v14 + 24) >= v80)
      {
        v20 = v133;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_61;
        }

        v10 = v76;
        sub_24E8B796C();
        v76 = v10;
        v14 = v140[0];
        if ((v11 & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_62:
        v82 = *(v14 + 56);
        v83 = *(v82 + 8 * v76);
        *(v82 + 8 * v76) = v18;
      }

      else
      {
        sub_24E8AAB08(v80, isUniquelyReferenced_nonNull_native);
        v76 = sub_24E7728CC(v40);
        v20 = v133;
        if ((v11 & 1) != (v81 & 1))
        {
          goto LABEL_122;
        }

LABEL_61:
        v14 = v140[0];
        if (v11)
        {
          goto LABEL_62;
        }

LABEL_64:
        *(v14 + 8 * (v76 >> 6) + 64) |= 1 << v76;
        *(*(v14 + 48) + 8 * v76) = v40;
        *(*(v14 + 56) + 8 * v76) = v18;
        v84 = *(v14 + 16);
        v49 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v49)
        {
          goto LABEL_113;
        }

        *(v14 + 16) = v85;
      }

      *(v9 + 72) = v14;
      swift_endAccess();
      v11 = &v40[v125];
      if (__OFADD__(v125, v40))
      {
        goto LABEL_111;
      }

      v14 = v20[2];
      v86 = *(v14 + 24);
      if (v86 >> 62)
      {
        v87 = sub_24F92C738();
      }

      else
      {
        v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      isUniquelyReferenced_nonNull_native = v11 % v121;
      if (v11 % v121 < v87)
      {
        v11 = *(v14 + 24);
        if ((v11 & 0xC000000000000001) != 0)
        {

          v88 = MEMORY[0x253052270](isUniquelyReferenced_nonNull_native, v11);
        }

        else
        {
          if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) != 0)
          {
            goto LABEL_114;
          }

          if (isUniquelyReferenced_nonNull_native >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_115;
          }

          v88 = *(v11 + 8 * isUniquelyReferenced_nonNull_native + 32);
        }

        v89 = *(v88 + 16);

        v11 = v20[2];
        swift_beginAccess();
        v90 = *(v11 + 32);
        v91 = *(v11 + 40);

        v92 = Artwork.config(_:mode:prefersLayeredImage:)([v18 contentMode], 0, v90, v91);
        sub_24F859894(v89, v92);
        v14 = *(v11 + 48);
        if (v14)
        {

          LODWORD(v10) = 1;
          sub_24F73FB34(v92, 1, v18);

LABEL_78:
          isUniquelyReferenced_nonNull_native = &qword_27F23F000;
          goto LABEL_79;
        }
      }

      LODWORD(v10) = 1;
      goto LABEL_78;
    }

    v14 = *(*(v51 + 56) + 8 * v52);
    swift_endAccess();
    v54 = v14;
    v18 = v54;
    if ((v111 & 1) != 0 || (v11 = [v54 layer], v55 = sub_24F92B098(), v14 = objc_msgSend(v11, sel_animationForKey_, v55), v11, v55, !v14))
    {
      LODWORD(v10) = 1;
    }

    else
    {

      LODWORD(v10) = 0;
    }

LABEL_79:
    v93 = [v18 superview];
    if (v93)
    {

      if ((v10 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      [v112 addSubview_];
    }

    v47 = *(v9 + 40);
    v48 = *(v9 + 64);
    v11 = v127;
    v14 = v128;
    (*v124)(v127, v122, v128);
    CGPoint.rounded(_:)(v11, a6, v48);
    (*v123)(v11, v14);
    [v18 setFrame_];
LABEL_34:

    a6 = v45 + a6;
    v49 = __OFADD__(v40++, 1);
    if (v49)
    {
      goto LABEL_109;
    }
  }

  if ((v108 & 1) == 0)
  {
    if (v40 >= v110)
    {
      swift_beginAccess();
      v94 = *(v9 + 72);
      v95 = *(v94 + 64);
      v130 = (v94 + 64);
      v96 = 1 << *(v94 + 32);
      v97 = -1;
      if (v96 < 64)
      {
        v97 = ~(-1 << v96);
      }

      isUniquelyReferenced_nonNull_native = v97 & v95;
      v131 = *(*v133 + 104);
      v10 = (v96 + 63) >> 6;
      v134 = v94;

      v98 = 0;
      v20 = v131;
      while (isUniquelyReferenced_nonNull_native)
      {
LABEL_97:
        v100 = __clz(__rbit64(isUniquelyReferenced_nonNull_native));
        isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
        v101 = (v98 << 9) | (8 * v100);
        v18 = *(*(v134 + 48) + v101);
        v11 = *(*(v134 + 56) + v101);
        if (v18 >= v110 && v18 < v40)
        {
          if (v109)
          {
            v14 = [v11 layer];
            [v14 removeAllAnimations];
          }
        }

        else
        {
          *&v138[0] = *(*(v134 + 56) + v101);
          swift_beginAccess();
          v132 = v11;
          v103 = v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243948, &unk_24F9F7F18);
          sub_24F922CA8();
          swift_endAccess();
          swift_beginAccess();
          v14 = *(v9 + 72);
          v104 = sub_24E7728CC(v18);
          if (v105)
          {
            v18 = v104;
            v106 = swift_isUniquelyReferenced_nonNull_native();
            v14 = *(v9 + 72);
            *&v138[0] = v14;
            *(v9 + 72) = 0x8000000000000000;
            if (!v106)
            {
              sub_24E8B796C();
              v14 = *&v138[0];
            }

            sub_24EB55CC8(v18, v14);
            *(v9 + 72) = v14;
          }

          swift_endAccess();
          LODWORD(v11) = v132;
        }
      }

      while (1)
      {
        v99 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_112;
        }

        if (v99 >= v10)
        {

          return;
        }

        isUniquelyReferenced_nonNull_native = v130[v99];
        ++v98;
        if (isUniquelyReferenced_nonNull_native)
        {
          v98 = v99;
          goto LABEL_97;
        }
      }
    }

LABEL_121:
    __break(1u);
LABEL_122:
    sub_24F92CF88();
    __break(1u);
  }
}

uint64_t sub_24F43FD14()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t block_copy_helper_152(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F43FE2C()
{
  result = qword_27F243990;
  if (!qword_27F243990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243990);
  }

  return result;
}

uint64_t LeaderboardSource.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LeaderboardSource(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F44118C(v1, v7, type metadata accessor for LeaderboardSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = v7[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x646E696B24;
    v11 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v11;
    *(inited + 40) = 0xE500000000000000;
    strcpy((inited + 48), "leaderboardID");
    *(inited + 62) = -4864;
    strcpy((inited + 88), "leaderboardID");
    *(inited + 102) = -4864;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_24F93DE60;
    *(v12 + 32) = 25705;
    v13 = v12 + 32;
    *(v12 + 40) = 0xE200000000000000;
    *(v12 + 48) = v8;
    *(v12 + 56) = v9;
    v14 = sub_24E6086DC(v12);
    swift_setDeallocating();
    sub_24E601704(v13, &qword_27F219F90, &qword_24F955020);
    *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    *(inited + 136) = sub_24EC73450(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0);
    *(inited + 104) = v14;
    v15 = sub_24E607E40(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
    swift_arrayDestroy();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
    result = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
    v18 = result;
  }

  else
  {
    sub_24F4412F0(v7, v4, type metadata accessor for Leaderboard);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
    v19 = swift_initStackObject();
    *(v19 + 32) = 0x646E696B24;
    v20 = MEMORY[0x277D837D0];
    *(v19 + 16) = xmmword_24F93A400;
    v21 = MEMORY[0x277D22580];
    *(v19 + 72) = v20;
    *(v19 + 80) = v21;
    *(v19 + 40) = 0xE500000000000000;
    *(v19 + 48) = 0x6F6272656461656CLL;
    *(v19 + 56) = 0xEB00000000647261;
    *(v19 + 88) = 0x6F6272656461656CLL;
    *(v19 + 96) = 0xEB00000000647261;
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_24F93DE60;
    *(v22 + 32) = 0x6461654C74616877;
    *(v22 + 40) = 0xEF6472616F627265;
    *(v22 + 72) = v2;
    *(v22 + 80) = sub_24E75033C(&qword_27F21B450, &protocol conformance descriptor for Leaderboard);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 48));
    sub_24F44118C(v4, boxed_opaque_existential_1, type metadata accessor for Leaderboard);
    v24 = sub_24E607E40(v22);
    swift_setDeallocating();
    sub_24E601704(v22 + 32, &qword_27F212FB0, &unk_24F93A440);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
    *(v19 + 128) = v16;
    v18 = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
    *(v19 + 136) = v18;
    *(v19 + 104) = v24;
    v15 = sub_24E607E40(v19);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
    swift_arrayDestroy();
    result = sub_24F3A3AEC(v4);
  }

  v25 = v27;
  v27[3] = v16;
  v25[4] = v18;
  *v25 = v15;
  return result;
}

uint64_t type metadata accessor for LeaderboardSource(uint64_t a1)
{
  result = qword_27F2439E0;
  if (!qword_27F2439E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F4403C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xED00004449647261)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F4404A0(uint64_t a1)
{
  v2 = sub_24F4411F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4404DC(uint64_t a1)
{
  v2 = sub_24F4411F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F44053C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6461654C74616877 && a2 == 0xEF6472616F627265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F4405CC(uint64_t a1)
{
  v2 = sub_24F44129C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F440608(uint64_t a1)
{
  v2 = sub_24F44129C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F440644(uint64_t a1)
{
  v2 = sub_24F441248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F440680(uint64_t a1)
{
  v2 = sub_24F441248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaderboardSource.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243998, &qword_24F9F7F60);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2439A0, &qword_24F9F7F68);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - v5;
  v21 = type metadata accessor for Leaderboard(0);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LeaderboardSource(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2439A8, &qword_24F9F7F70);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4411F4();
  sub_24F92D128();
  sub_24F44118C(v28, v10, type metadata accessor for LeaderboardSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = 1;
    sub_24F441248();
    v15 = v23;
    sub_24F92CC98();
    v16 = v27;
    sub_24F92CD08();

    (*(v26 + 8))(v15, v16);
  }

  else
  {
    sub_24F4412F0(v10, v7, type metadata accessor for Leaderboard);
    v29 = 0;
    sub_24F44129C();
    v17 = v22;
    sub_24F92CC98();
    sub_24E75033C(&qword_27F21B470, &protocol conformance descriptor for Leaderboard);
    v18 = v25;
    sub_24F92CD48();
    (*(v24 + 8))(v17, v18);
    sub_24F3A3AEC(v7);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t LeaderboardSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2439C8, &qword_24F9F7F78);
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v55 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2439D0, &qword_24F9F7F80);
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  MEMORY[0x28223BE20](v4);
  v54 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2439D8, &unk_24F9F7F88);
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for LeaderboardSource(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F4411F4();
  v20 = v58;
  sub_24F92D108();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v47 = v12;
  v48 = v15;
  v22 = v54;
  v21 = v55;
  v58 = 0;
  v49 = v18;
  v23 = v10;
  v24 = v57;
  v25 = sub_24F92CC78();
  v26 = (2 * *(v25 + 16)) | 1;
  v60 = v25;
  v61 = v25 + 32;
  v62 = 0;
  v63 = v26;
  v27 = sub_24E643430();
  v28 = v7;
  v29 = v9;
  if (v27 == 2 || v62 != v63 >> 1)
  {
    v34 = sub_24F92C918();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v36 = v23;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v27 & 1) == 0)
  {
    v64 = 0;
    sub_24F44129C();
    v38 = v22;
    v39 = v58;
    sub_24F92CBA8();
    v45 = v49;
    if (!v39)
    {
      type metadata accessor for Leaderboard(0);
      sub_24E75033C(&qword_27F21B488, &protocol conformance descriptor for Leaderboard);
      v40 = v51;
      sub_24F92CC68();
      v58 = 0;
      (*(v52 + 8))(v38, v40);
      (*(v56 + 8))(v9, v28);
      v43 = v48;
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v44 = v57;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v64 = 1;
  sub_24F441248();
  v30 = v58;
  sub_24F92CBA8();
  if (v30)
  {
LABEL_8:
    (*(v56 + 8))(v9, v28);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v31 = v50;
  v32 = sub_24F92CC28();
  v33 = v56;
  v58 = 0;
  v42 = v41;
  (*(v53 + 8))(v21, v31);
  (*(v33 + 8))(v29, v7);
  swift_unknownObjectRelease();
  v43 = v47;
  *v47 = v32;
  *(v43 + 8) = v42;
  swift_storeEnumTagMultiPayload();
  v44 = v24;
  v45 = v49;
LABEL_12:
  sub_24F4412F0(v43, v45, type metadata accessor for LeaderboardSource);
  sub_24F4412F0(v45, v44, type metadata accessor for LeaderboardSource);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_24F44118C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F4411F4()
{
  result = qword_27F2439B0;
  if (!qword_27F2439B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2439B0);
  }

  return result;
}

unint64_t sub_24F441248()
{
  result = qword_27F2439B8;
  if (!qword_27F2439B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2439B8);
  }

  return result;
}

unint64_t sub_24F44129C()
{
  result = qword_27F2439C0;
  if (!qword_27F2439C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2439C0);
  }

  return result;
}

uint64_t sub_24F4412F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24F441358(uint64_t a1)
{
  sub_24F4413CC();
  if (v1 <= 0x3F)
  {
    sub_24F41EC20();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24F4413CC()
{
  if (!qword_27F2439F0)
  {
    v0 = type metadata accessor for Leaderboard(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27F2439F0);
    }
  }
}

unint64_t sub_24F441448()
{
  result = qword_27F2439F8;
  if (!qword_27F2439F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2439F8);
  }

  return result;
}

unint64_t sub_24F4414A0()
{
  result = qword_27F243A00;
  if (!qword_27F243A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A00);
  }

  return result;
}

unint64_t sub_24F4414F8()
{
  result = qword_27F243A08;
  if (!qword_27F243A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A08);
  }

  return result;
}

unint64_t sub_24F441550()
{
  result = qword_27F243A10;
  if (!qword_27F243A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A10);
  }

  return result;
}

unint64_t sub_24F4415A8()
{
  result = qword_27F243A18;
  if (!qword_27F243A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A18);
  }

  return result;
}

unint64_t sub_24F441600()
{
  result = qword_27F243A20;
  if (!qword_27F243A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A20);
  }

  return result;
}

unint64_t sub_24F441658()
{
  result = qword_27F243A28;
  if (!qword_27F243A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A28);
  }

  return result;
}

unint64_t sub_24F4416B0()
{
  result = qword_27F243A30;
  if (!qword_27F243A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A30);
  }

  return result;
}

unint64_t sub_24F441708()
{
  result = qword_27F243A38;
  if (!qword_27F243A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A38);
  }

  return result;
}

uint64_t sub_24F441780(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ActivityInviteCard(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24F441918(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ActivityInviteCard(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for MultiplayerInviteLockup(uint64_t a1)
{
  result = qword_27F243A40;
  if (!qword_27F243A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F441AE8(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActivityInviteCard(319);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
        if (v4 <= 0x3F)
        {
          sub_24E61C938(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F441BE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v30 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v32);
  v6 = &v30 - v5;
  v7 = type metadata accessor for ActivityInviteCard(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243A68, &unk_24F9F8568);
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for MultiplayerInviteLockup(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 24)];
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_24E61DA68(&v40, v17, qword_27F21B590, &unk_24F93BE30);
  v18 = v13[7];
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v38 = v18;
  v39 = v15;
  v20(&v15[v18], 1, 1, v19);
  v21 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F4427F8();
  v35 = v12;
  v22 = v36;
  sub_24F92D108();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    v23 = v39;
    sub_24E601704(v17, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v23 + v38, &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v36 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v43 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v24 = v41;
    v25 = v39;
    *v39 = v40;
    v25[1] = v24;
    *(v25 + 4) = v42;
    LOBYTE(v40) = 1;
    sub_24F4428B0(&qword_27F2390D8, type metadata accessor for ActivityInviteCard, &unk_24F9C7BD0);
    sub_24F92CC68();
    sub_24F44284C(v9, v25 + v13[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v43 = 2;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v40, v17, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v40) = 3;
    sub_24E65CAA0();
    v26 = v36;
    sub_24F92CC68();
    v27 = v39;
    sub_24E61DA68(v26, v39 + v38, &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v40) = 4;
    sub_24F4428B0(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v28 = v31;
    sub_24F92CC18();
    (*(v33 + 8))(v35, v34);
    sub_24E6009C8(v28, v27 + v13[8], &qword_27F213E68, &unk_24F93BC80);
    sub_24F4428F8(v27, v30, type metadata accessor for MultiplayerInviteLockup);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return sub_24F442960(v27, type metadata accessor for MultiplayerInviteLockup);
  }
}

uint64_t sub_24F442294()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  v4 = 0x4D747865746E6F63;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6143657469766E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F442330@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F442ADC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F442358(uint64_t a1)
{
  v2 = sub_24F4427F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F442394(uint64_t a1)
{
  v2 = sub_24F4427F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4423D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 28), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

unint64_t sub_24F4424F8()
{
  result = qword_27F243A50;
  if (!qword_27F243A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A50);
  }

  return result;
}

uint64_t sub_24F44254C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for MultiplayerInviteLockup(0) + 20);
  *(a2 + 40) = type metadata accessor for ActivityInviteCard(0);
  *(a2 + 48) = sub_24F4428B0(&qword_27F21AA78, type metadata accessor for ActivityInviteCard, &unk_24F9C7C14);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 16));
  sub_24F4428F8(a1 + v4, boxed_opaque_existential_1, type metadata accessor for ActivityInviteCard);
  type metadata accessor for GSKComponentContentBuilder(0);
  sub_24F4428B0(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
  *a2 = sub_24F923598();
  *(a2 + 8) = v6 & 1;
  result = swift_getKeyPath();
  *(a2 + 56) = result;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_24F442660(uint64_t a1)
{
  sub_24F4424F8();

  return sub_24F9218E8();
}

unint64_t sub_24F4426F0()
{
  result = qword_27F243A60;
  if (!qword_27F243A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A60);
  }

  return result;
}

unint64_t sub_24F4427F8()
{
  result = qword_27F243A70;
  if (!qword_27F243A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A70);
  }

  return result;
}

uint64_t sub_24F44284C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityInviteCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4428B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4428F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F442960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F4429D8()
{
  result = qword_27F243A78;
  if (!qword_27F243A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A78);
  }

  return result;
}

unint64_t sub_24F442A30()
{
  result = qword_27F243A80;
  if (!qword_27F243A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A80);
  }

  return result;
}

unint64_t sub_24F442A88()
{
  result = qword_27F243A88;
  if (!qword_27F243A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243A88);
  }

  return result;
}

uint64_t sub_24F442ADC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6143657469766E69 && a2 == 0xEA00000000006472 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24F442CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_24F924958();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243A90, &qword_24F9F86E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  sub_24F925418();
  v19 = a1;
  sub_24F925428();
  sub_24EA1F004(&qword_27F243A98, MEMORY[0x277CDE2B0], MEMORY[0x277CDE2A8]);
  v11 = v18;
  sub_24F9270D8();
  sub_24F924948();
  sub_24E602068(&qword_27F243AA0, &qword_27F243A90, &qword_24F9F86E0, MEMORY[0x277CDF068]);
  sub_24EA1F004(&qword_27F243AA8, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
  sub_24F926238();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  if (qword_27F211278 != -1)
  {
    swift_once();
  }

  v12 = qword_27F2431D0;
  KeyPath = swift_getKeyPath();
  v20 = v12;

  v14 = sub_24F9238D8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AB0, &qword_24F9F8718);
  v16 = (v11 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  return result;
}

unint64_t sub_24F443014()
{
  result = qword_27F243AB8;
  if (!qword_27F243AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243AB0, &qword_24F9F8718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243A90, &qword_24F9F86E0);
    sub_24F924958();
    sub_24E602068(&qword_27F243AA0, &qword_27F243A90, &qword_24F9F86E0, MEMORY[0x277CDF068]);
    sub_24EA1F004(&qword_27F243AA8, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&unk_27F236270, &qword_27F219DB0, &qword_24F987E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243AB8);
  }

  return result;
}

uint64_t sub_24F443204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_24E60169C(a1, &v11 - v8, &qword_27F215598, &qword_24F945EF0);
  return a5(v9);
}

uint64_t sub_24F4432D8(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F924598();
}

uint64_t sub_24F4433A4(uint64_t a1)
{
  result = MEMORY[0x253051460](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

    sub_24ED7C5F0(&v13, v11, v12);
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

uint64_t sub_24F4434C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24EA90A64();
  result = MEMORY[0x253051460](v2, &type metadata for PersonalizationStyle, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_24ED7CC74(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F4435B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24E69103C();
  result = MEMORY[0x253051460](v2, &type metadata for AdamId, v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];

    sub_24ED7E42C(&v15, v13, v14);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v16;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t FlowDestination.callAsFunction(asPartOf:)@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v731 = a1;
  v735 = a2;
  v711 = type metadata accessor for InviteFriendsPageView(0);
  MEMORY[0x28223BE20](v711);
  v598 = &v556 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v712 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AC0, &unk_24F9F8730);
  v601 = *(v712 - 1);
  MEMORY[0x28223BE20](v712);
  v660 = &v556 - v5;
  v6 = type metadata accessor for InviteFriendsPageIntent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v658 = &v556 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D98, &unk_24F94D3E0);
  MEMORY[0x28223BE20](v606);
  v556 = &v556 - v8;
  v610 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AC8, &qword_24F9F8740);
  v558 = *(v610 - 8);
  MEMORY[0x28223BE20](v610);
  v557 = &v556 - v9;
  v603 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AD0, &qword_24F9F8748);
  MEMORY[0x28223BE20](v603);
  v605 = &v556 - v10;
  v693 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D68, &qword_24F9F8750);
  MEMORY[0x28223BE20](v693);
  v607 = &v556 - v11;
  v604 = type metadata accessor for AchievementDetailsPageView(0);
  MEMORY[0x28223BE20](v604);
  v596 = &v556 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v665 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AD8, &qword_24F9F8758);
  v662 = *(v665 - 8);
  MEMORY[0x28223BE20](v665);
  v661 = &v556 - v13;
  v14 = type metadata accessor for AchievementDetails(0);
  MEMORY[0x28223BE20](v14 - 8);
  v592 = &v556 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v657 = &v556 - v17;
  v653 = type metadata accessor for PlayTogetherWelcomePageView(0);
  MEMORY[0x28223BE20](v653);
  v591 = &v556 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AE0, &qword_24F9F8760);
  v651 = *(v673 - 8);
  MEMORY[0x28223BE20](v673);
  v646 = &v556 - v19;
  v20 = type metadata accessor for PlayTogetherWelcomePage(0);
  MEMORY[0x28223BE20](v20 - 8);
  v645 = &v556 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v707 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AE8, &qword_24F9F8768);
  MEMORY[0x28223BE20](v707);
  v709 = &v556 - v22;
  v690 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AF0, &qword_24F9F8770);
  MEMORY[0x28223BE20](v690);
  v692 = &v556 - v23;
  v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243AF8, &unk_24F9F8778);
  MEMORY[0x28223BE20](v638);
  v640 = &v556 - v24;
  v691 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D28, &qword_24F94D3B0);
  MEMORY[0x28223BE20](v691);
  v648 = &v556 - v25;
  v708 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D18, &qword_24F94D3A8);
  MEMORY[0x28223BE20](v708);
  v694 = &v556 - v26;
  v734 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D08, &qword_24F94D3A0);
  MEMORY[0x28223BE20](v734);
  v710 = (&v556 - v27);
  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D38, &qword_24F94D3B8);
  MEMORY[0x28223BE20](v636);
  v593 = &v556 - v28;
  v635 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219CD0, &unk_24F94D390);
  MEMORY[0x28223BE20](v635);
  v589 = &v556 - v29;
  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B00, &qword_24F9F8788);
  MEMORY[0x28223BE20](v629);
  v633 = &v556 - v30;
  v706 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219CB8, &unk_24F9F8790);
  MEMORY[0x28223BE20](v706);
  v637 = &v556 - v31;
  v32 = sub_24F924AD8();
  v579 = *(v32 - 8);
  v580 = v32;
  MEMORY[0x28223BE20](v32);
  v578 = &v556 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v577 = &v556 - v35;
  v628 = type metadata accessor for RecordingFullScreenView(0);
  MEMORY[0x28223BE20](v628);
  v588 = &v556 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for RecordingAssociation(0);
  MEMORY[0x28223BE20](v37 - 8);
  v587 = &v556 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v643 = type metadata accessor for MultiplayerActivityReviewView(0);
  MEMORY[0x28223BE20](v643);
  v581 = (&v556 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v644 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219CA0, &unk_24F94D380);
  v586 = *(v644 - 8);
  MEMORY[0x28223BE20](v644);
  v584 = &v556 - v40;
  v652 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C98, &qword_24F9F87A0);
  v585 = *(v652 - 8);
  MEMORY[0x28223BE20](v652);
  v583 = &v556 - v41;
  v663 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B08, &qword_24F9F87A8);
  v590 = *(v663 - 8);
  MEMORY[0x28223BE20](v663);
  v632 = &v556 - v42;
  v573 = type metadata accessor for MultiplayerActivityReviewBaseInfo(0);
  MEMORY[0x28223BE20](v573);
  v572 = &v556 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v669 = &v556 - v45;
  v701 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B10, &qword_24F9F87B0);
  MEMORY[0x28223BE20](v701);
  v703 = &v556 - v46;
  v634 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B18, &qword_24F9F87B8);
  MEMORY[0x28223BE20](v634);
  v641 = &v556 - v47;
  v702 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C80, &qword_24F9F87C0);
  MEMORY[0x28223BE20](v702);
  v650 = &v556 - v48;
  v724 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C70, &unk_24F94D360);
  MEMORY[0x28223BE20](v724);
  v705 = &v556 - v49;
  v627 = type metadata accessor for ChallengesReviewView(0);
  MEMORY[0x28223BE20](v627);
  v571 = &v556 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v630 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C88, &unk_24F94D370);
  v575 = *(v630 - 8);
  MEMORY[0x28223BE20](v630);
  v574 = &v556 - v51;
  v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B20, &qword_24F9F87C8);
  v582 = *(v649 - 8);
  MEMORY[0x28223BE20](v649);
  v625 = &v556 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B28, &unk_24F9F87D0);
  MEMORY[0x28223BE20](v53 - 8);
  v570 = &v556 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v624 = &v556 - v56;
  v569 = type metadata accessor for ChallengesReviewBaseInfo(0);
  MEMORY[0x28223BE20](v569);
  v568 = &v556 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v668 = &v556 - v59;
  v680 = sub_24F929888();
  v679 = *(v680 - 8);
  MEMORY[0x28223BE20](v680);
  v678 = &v556 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8, &unk_24F940C00);
  MEMORY[0x28223BE20](v61 - 8);
  v676 = &v556 - v62;
  v704 = sub_24F929158();
  v677 = *(v704 - 8);
  MEMORY[0x28223BE20](v704);
  v675 = &v556 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  MEMORY[0x28223BE20](v64 - 8);
  v674 = &v556 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v66 - 8);
  v631 = &v556 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v576 = &v556 - v69;
  v70 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v70 - 8);
  v623 = &v556 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v609 = &v556 - v73;
  MEMORY[0x28223BE20](v74);
  v670 = &v556 - v75;
  v666 = type metadata accessor for ChallengesPlayerPickerView(0);
  MEMORY[0x28223BE20](v666);
  v608 = (&v556 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v77);
  v594 = &v556 - v78;
  v659 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C58, &qword_24F9F87E0);
  v597 = *(v659 - 8);
  MEMORY[0x28223BE20](v659);
  v595 = &v556 - v79;
  v664 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B30, &qword_24F9F87E8);
  v600 = *(v664 - 8);
  MEMORY[0x28223BE20](v664);
  v599 = &v556 - v80;
  v719 = sub_24F928818();
  v725 = *(v719 - 8);
  MEMORY[0x28223BE20](v719);
  v695 = &v556 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v672 = &v556 - v83;
  v566 = type metadata accessor for ChallengesPlayerPickerMode(0);
  MEMORY[0x28223BE20](v566);
  v567 = &v556 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v626 = &v556 - v86;
  MEMORY[0x28223BE20](v87);
  v656 = &v556 - v88;
  v713 = sub_24F92A708();
  v655 = *(v713 - 8);
  MEMORY[0x28223BE20](v713);
  v671 = &v556 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v639 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B38, &qword_24F9F87F0);
  MEMORY[0x28223BE20](v639);
  v647 = &v556 - v90;
  v700 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C48, &unk_24F94D350);
  MEMORY[0x28223BE20](v700);
  v654 = &v556 - v91;
  v562 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219978, &qword_24F94D1C0);
  MEMORY[0x28223BE20](v562);
  v561 = &v556 - v92;
  v642 = type metadata accessor for PickActivityTransitionView(0);
  MEMORY[0x28223BE20](v642);
  v726 = &v556 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v617 = type metadata accessor for ReportPlayerProblemView(0);
  MEMORY[0x28223BE20](v617);
  v560 = (&v556 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  v622 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B40, &qword_24F9F87F8);
  v565 = *(v622 - 8);
  MEMORY[0x28223BE20](v622);
  v564 = &v556 - v95;
  v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B48, &qword_24F9F8800);
  MEMORY[0x28223BE20](v720);
  *&v722 = &v556 - v96;
  v696 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B50, &qword_24F9F8808);
  MEMORY[0x28223BE20](v696);
  v698 = &v556 - v97;
  v613 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B58, &unk_24F9F8810);
  MEMORY[0x28223BE20](v613);
  v614 = (&v556 - v98);
  v697 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C30, &qword_24F94D348);
  MEMORY[0x28223BE20](v697);
  v616 = &v556 - v99;
  v721 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C20, &qword_24F94D340);
  MEMORY[0x28223BE20](v721);
  v699 = &v556 - v100;
  v730 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C10, &qword_24F94D338);
  MEMORY[0x28223BE20](v730);
  v723 = &v556 - v101;
  v615 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B60, &unk_24F9F8820);
  MEMORY[0x28223BE20](v615);
  v619 = (&v556 - v102);
  v688 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219BF0, &qword_24F94D328);
  MEMORY[0x28223BE20](v688);
  v620 = &v556 - v103;
  v621 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B68, &qword_24F9F8830);
  v563 = *(v621 - 8);
  MEMORY[0x28223BE20](v621);
  v618 = &v556 - v104;
  v685 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B70, &qword_24F9F8838);
  MEMORY[0x28223BE20](v685);
  v687 = &v556 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B78, &unk_24F9F8840);
  MEMORY[0x28223BE20](v106);
  v108 = &v556 - v107;
  v686 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219BC8, &qword_24F94D318);
  MEMORY[0x28223BE20](v686);
  v602 = &v556 - v109;
  v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219BB8, &qword_24F94D310);
  MEMORY[0x28223BE20](v717);
  v689 = &v556 - v110;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219BD8, &qword_24F94D320);
  MEMORY[0x28223BE20](v111);
  v559 = &v556 - v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B80, &qword_24F9F8850);
  MEMORY[0x28223BE20](v113);
  v115 = &v556 - v114;
  v684 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A10, &qword_24F94D278);
  MEMORY[0x28223BE20](v684);
  v612 = &v556 - v116;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A18, &unk_24F94D280);
  MEMORY[0x28223BE20](v117);
  v119 = &v556 - v118;
  v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B88, &qword_24F9F8858);
  v611 = *(v667 - 8);
  MEMORY[0x28223BE20](v667);
  v121 = &v556 - v120;
  v732 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B90, &qword_24F9F8860);
  MEMORY[0x28223BE20](v732);
  v733 = &v556 - v122;
  v727 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B98, &qword_24F9F8868);
  MEMORY[0x28223BE20](v727);
  v729 = &v556 - v123;
  v714 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BA0, &qword_24F9F8870);
  MEMORY[0x28223BE20](v714);
  v716 = &v556 - v124;
  v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BA8, &qword_24F9F8878);
  MEMORY[0x28223BE20](v681);
  v682 = (&v556 - v125);
  v715 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199E8, &unk_24F9F8880);
  MEMORY[0x28223BE20](v715);
  v683 = &v556 - v126;
  v728 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199D8, &unk_24F94D260);
  MEMORY[0x28223BE20](v728);
  v718 = &v556 - v127;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199C8, &qword_24F9F8890);
  MEMORY[0x28223BE20](v128);
  v131 = &v556 - v130;
  v132 = *v3;
  switch((v132 >> 59) & 0x1E | (v132 >> 2) & 1)
  {
    case 1uLL:
      v726 = v129;
      v712 = &v556 - v130;
      sub_24E60169C((v132 & 0xFFFFFFFFFFFFFFBLL) + 16, v765, &qword_27F215768, "D5\r");
      sub_24F44C2A8(v765, v731, v119);
      v349 = type metadata accessor for FlowAction(0);
      v350 = sub_24E712330();
      v351 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
      v352 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
      sub_24F925E78();
      sub_24E601704(v119, &qword_27F219A18, &unk_24F94D280);
      (*(v611 + 16))(v115, v121, v667);
      swift_storeEnumTagMultiPayload();
      *&v758 = v117;
      *(&v758 + 1) = v349;
      *&v759 = v350;
      *(&v759 + 1) = v351;
      *&v760 = v352;
      swift_getOpaqueTypeConformance2();
      sub_24E712FF8();
      v353 = v612;
      v354 = v667;
      sub_24F924E28();
      sub_24E60169C(v353, v682, &qword_27F219A10, &qword_24F94D278);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199F8, &qword_24F94D270);
      sub_24E712100();
      sub_24E7121E0();
      v355 = v683;
      sub_24F924E28();
      sub_24E601704(v353, &qword_27F219A10, &qword_24F94D278);
      sub_24E60169C(v355, v716, &qword_27F2199E8, &unk_24F9F8880);
      swift_storeEnumTagMultiPayload();
      sub_24E712074();
      sub_24E71304C();
      v356 = v718;
      sub_24F924E28();
      sub_24E601704(v355, &qword_27F2199E8, &unk_24F9F8880);
      sub_24E60169C(v356, v729, &qword_27F2199D8, &unk_24F94D260);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v357 = v712;
      sub_24F924E28();
      sub_24E601704(v356, &qword_27F2199D8, &unk_24F94D260);
      sub_24E60169C(v357, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v357, &qword_27F2199C8, &qword_24F9F8890);
      (*(v611 + 8))(v121, v354);
      return sub_24E601704(v765, &qword_27F215768, "D5\r");
    case 2uLL:
      v726 = v129;
      v299 = (v132 & 0xFFFFFFFFFFFFFFBLL) + 16;
      v300 = &v556 - v130;
      sub_24E60169C(v299, &v758, &qword_27F243BF8, &unk_24F9F8BE0);
      sub_24E615E00(&v758, v765);
      *(&v765[2] + 1) = v731;
      sub_24F45E564(v765, v115);
      swift_storeEnumTagMultiPayload();
      v301 = type metadata accessor for FlowAction(255);
      v302 = sub_24E712330();
      v303 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
      v304 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);

      *&v742 = v117;
      *(&v742 + 1) = v301;
      *&v743 = v302;
      *(&v743 + 1) = v303;
      *&v744 = v304;
      swift_getOpaqueTypeConformance2();
      sub_24E712FF8();
      v305 = v612;
      sub_24F924E28();
      sub_24E60169C(v305, v682, &qword_27F219A10, &qword_24F94D278);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199F8, &qword_24F94D270);
      sub_24E712100();
      sub_24E7121E0();
      v306 = v683;
      sub_24F924E28();
      sub_24E601704(v305, &qword_27F219A10, &qword_24F94D278);
      sub_24E60169C(v306, v716, &qword_27F2199E8, &unk_24F9F8880);
      swift_storeEnumTagMultiPayload();
      sub_24E712074();
      sub_24E71304C();
      v307 = v718;
      sub_24F924E28();
      sub_24E601704(v306, &qword_27F2199E8, &unk_24F9F8880);
      sub_24E60169C(v307, v729, &qword_27F2199D8, &unk_24F94D260);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      sub_24F924E28();
      sub_24E601704(v307, &qword_27F2199D8, &unk_24F94D260);
      sub_24E60169C(v300, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v300, &qword_27F2199C8, &qword_24F9F8890);
      sub_24F45E5C0(v765);
      return sub_24E601704(&v758, &qword_27F243BF8, &unk_24F9F8BE0);
    case 3uLL:
      v326 = &v556 - v130;
      sub_24E60169C((v132 & 0xFFFFFFFFFFFFFFBLL) + 16, v765, &qword_27F227178, &qword_24F97DAA0);
      sub_24E615E00(v765, &v758);
      v327 = v731;

      v328 = v559;
      sub_24E65E804(&v758, v327, v559);
      sub_24E60169C(v328, v108, &qword_27F219BD8, &qword_24F94D320);
      swift_storeEnumTagMultiPayload();
      sub_24E713164();
      v329 = v602;
      sub_24F924E28();
      sub_24E60169C(v329, v687, &qword_27F219BC8, &qword_24F94D318);
      swift_storeEnumTagMultiPayload();
      sub_24E7130D8();
      sub_24E713220();
      v330 = v689;
      sub_24F924E28();
      sub_24E601704(v329, &qword_27F219BC8, &qword_24F94D318);
      sub_24E60169C(v330, v716, &qword_27F219BB8, &qword_24F94D310);
      swift_storeEnumTagMultiPayload();
      sub_24E712074();
      sub_24E71304C();
      v331 = v718;
      sub_24F924E28();
      sub_24E601704(v330, &qword_27F219BB8, &qword_24F94D310);
      sub_24E60169C(v331, v729, &qword_27F2199D8, &unk_24F94D260);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      sub_24F924E28();
      sub_24E601704(v331, &qword_27F2199D8, &unk_24F94D260);
      sub_24E60169C(v326, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v326, &qword_27F2199C8, &qword_24F9F8890);
      sub_24E601704(v328, &qword_27F219BD8, &qword_24F94D320);
      return sub_24E601704(v765, &qword_27F227178, &qword_24F97DAA0);
    case 4uLL:
      v712 = &v556 - v130;
      v726 = v129;
      v234 = *((v132 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_24E60169C((v132 & 0xFFFFFFFFFFFFFFBLL) + 24, v765, &qword_27F213EA8, &unk_24F93D030);
      sub_24E60169C((v132 & 0xFFFFFFFFFFFFFFBLL) + 64, &v758, &qword_27F213EA8, &unk_24F93D030);
      sub_24E60169C(v765, &v742, qword_27F21B590, &unk_24F93BE30);
      sub_24E60169C(&v758, &v736, qword_27F21B590, &unk_24F93BE30);
      v235 = type metadata accessor for FriendRequestComposeViewController();
      v236 = objc_allocWithZone(v235);
      sub_24E60169C(&v742, &v236[OBJC_IVAR____TtC12GameStoreKit34FriendRequestComposeViewController_successAction], qword_27F21B590, &unk_24F93BE30);
      sub_24E60169C(&v736, &v236[OBJC_IVAR____TtC12GameStoreKit34FriendRequestComposeViewController_failureAction], qword_27F21B590, &unk_24F93BE30);
      *&v236[OBJC_IVAR____TtC12GameStoreKit34FriendRequestComposeViewController_objectGraph] = v731;
      v749.receiver = v236;
      v749.super_class = v235;
      swift_retain_n();

      v237 = objc_msgSendSuper2(&v749, sel_initWithNibName_bundle_, 0, 0);
      if (v234)
      {
        v238 = sub_24F92B588();
      }

      else
      {
        v238 = 0;
      }

      [v237 setRecipients_];

      v485 = sub_24E753A54();
      v486 = sub_24F92B098();
      [v237 setMessage:v485 withExtensionBundleIdentifier:v486];

      [v237 setMessageComposeDelegate_];
      sub_24E601704(&v736, qword_27F21B590, &unk_24F93BE30);
      sub_24E601704(&v742, qword_27F21B590, &unk_24F93BE30);

      *&v742 = v237;
      v487 = sub_24E632AD0();
      v488 = v618;
      sub_24F925F48();

      v489 = v563;
      v490 = v488;
      v491 = v621;
      (*(v563 + 16))(v619, v490, v621);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C00, &qword_24F94D330);
      *&v742 = &type metadata for ViewControllerAdaptor;
      *(&v742 + 1) = v487;
      swift_getOpaqueTypeConformance2();
      sub_24E7132D8();
      v492 = v620;
      sub_24F924E28();
      sub_24E60169C(v492, v687, &qword_27F219BF0, &qword_24F94D328);
      swift_storeEnumTagMultiPayload();
      sub_24E7130D8();
      sub_24E713220();
      v493 = v689;
      sub_24F924E28();
      sub_24E601704(v492, &qword_27F219BF0, &qword_24F94D328);
      sub_24E60169C(v493, v716, &qword_27F219BB8, &qword_24F94D310);
      swift_storeEnumTagMultiPayload();
      sub_24E712074();
      sub_24E71304C();
      v494 = v718;
      sub_24F924E28();
      sub_24E601704(v493, &qword_27F219BB8, &qword_24F94D310);
      sub_24E60169C(v494, v729, &qword_27F2199D8, &unk_24F94D260);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v495 = v712;
      sub_24F924E28();
      sub_24E601704(v494, &qword_27F2199D8, &unk_24F94D260);
      sub_24E60169C(v495, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v495, &qword_27F2199C8, &qword_24F9F8890);
      (*(v489 + 8))(v618, v491);
      goto LABEL_44;
    case 5uLL:
      v379 = &v556 - v130;
      v380 = objc_allocWithZone(type metadata accessor for ChallengesInviteComposeViewController());

      v382 = sub_24E806C68(v381);
      *v614 = v382;
      swift_storeEnumTagMultiPayload();
      sub_24E632AD0();
      v383 = sub_24F457898(&qword_27F219C38, type metadata accessor for ReportPlayerProblemView, &unk_24F948738);
      v384 = v382;
      *&v765[0] = v617;
      *(&v765[0] + 1) = v383;
      swift_getOpaqueTypeConformance2();
      v385 = v616;
      sub_24F924E28();
      sub_24E60169C(v385, v698, &qword_27F219C30, &qword_24F94D348);
      swift_storeEnumTagMultiPayload();
      sub_24E713474();
      sub_24E713568();
      v386 = v699;
      sub_24F924E28();
      sub_24E601704(v385, &qword_27F219C30, &qword_24F94D348);
      sub_24E60169C(v386, v722, &qword_27F219C20, &qword_24F94D340);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v387 = v723;
      sub_24F924E28();
      sub_24E601704(v386, &qword_27F219C20, &qword_24F94D340);
      v388 = &qword_27F219C10;
      v389 = &qword_24F94D338;
      sub_24E60169C(v387, v729, &qword_27F219C10, &qword_24F94D338);
      goto LABEL_28;
    case 6uLL:
      v379 = &v556 - v130;
      v409 = type metadata accessor for TextMessageComposerViewController();
      v410 = 0;
      if ([swift_getObjCClassFromMetadata() canSendText])
      {
        v750.receiver = objc_allocWithZone(v409);
        v750.super_class = v409;
        v410 = objc_msgSendSuper2(&v750, sel_initWithNibName_bundle_, 0, 0);
        v411 = sub_24F92B588();
        [v410 setRecipients_];

        [v410 setMessageComposeDelegate_];
      }

      *v619 = v410;
      swift_storeEnumTagMultiPayload();
      v384 = v410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219C00, &qword_24F94D330);
      v412 = sub_24E632AD0();
      *&v765[0] = &type metadata for ViewControllerAdaptor;
      *(&v765[0] + 1) = v412;
      swift_getOpaqueTypeConformance2();
      sub_24E7132D8();
      v413 = v620;
      sub_24F924E28();
      sub_24E60169C(v413, v687, &qword_27F219BF0, &qword_24F94D328);
      swift_storeEnumTagMultiPayload();
      sub_24E7130D8();
      sub_24E713220();
      v414 = v689;
      sub_24F924E28();
      sub_24E601704(v413, &qword_27F219BF0, &qword_24F94D328);
      sub_24E60169C(v414, v716, &qword_27F219BB8, &qword_24F94D310);
      swift_storeEnumTagMultiPayload();
      sub_24E712074();
      sub_24E71304C();
      v387 = v718;
      sub_24F924E28();
      sub_24E601704(v414, &qword_27F219BB8, &qword_24F94D310);
      v388 = &qword_27F2199D8;
      v389 = &unk_24F94D260;
      sub_24E60169C(v387, v729, &qword_27F2199D8, &unk_24F94D260);
LABEL_28:
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      sub_24F924E28();
      sub_24E601704(v387, v388, v389);
      sub_24E60169C(v379, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();

      return sub_24E601704(v379, &qword_27F2199C8, &qword_24F9F8890);
    case 7uLL:
      v332 = v132 & 0xFFFFFFFFFFFFFFBLL;
      v334 = *((v132 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v333 = *(v332 + 24);
      v726 = v129;
      v712 = v131;
      KeyPath = swift_getKeyPath();
      v336 = v560;
      *v560 = KeyPath;
      *(v336 + 40) = 0;
      v337 = v617;
      v338 = *(v617 + 20);
      *(v336 + v338) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
      swift_storeEnumTagMultiPayload();
      v339 = *(v337 + 24);
      *&v758 = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218418, &qword_24F948730);
      sub_24F926F28();
      *(v336 + v339) = v765[0];
      v340 = (v336 + *(v337 + 28));
      *v340 = v334;
      v340[1] = v333;
      v341 = sub_24F457898(&qword_27F219C38, type metadata accessor for ReportPlayerProblemView, &unk_24F948738);
      v342 = v564;
      sub_24F925F48();
      sub_24F461E40(v336, type metadata accessor for ReportPlayerProblemView);
      v343 = v565;
      v344 = v622;
      (*(v565 + 16))(v614, v342, v622);
      swift_storeEnumTagMultiPayload();
      sub_24E632AD0();
      *&v765[0] = v337;
      *(&v765[0] + 1) = v341;
      swift_getOpaqueTypeConformance2();
      v345 = v616;
      sub_24F924E28();
      sub_24E60169C(v345, v698, &qword_27F219C30, &qword_24F94D348);
      swift_storeEnumTagMultiPayload();
      sub_24E713474();
      sub_24E713568();
      v346 = v699;
      sub_24F924E28();
      sub_24E601704(v345, &qword_27F219C30, &qword_24F94D348);
      sub_24E60169C(v346, v722, &qword_27F219C20, &qword_24F94D340);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v347 = v723;
      sub_24F924E28();
      sub_24E601704(v346, &qword_27F219C20, &qword_24F94D340);
      sub_24E60169C(v347, v729, &qword_27F219C10, &qword_24F94D338);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v348 = v712;
      sub_24F924E28();
      sub_24E601704(v347, &qword_27F219C10, &qword_24F94D338);
      sub_24E60169C(v348, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v348, &qword_27F2199C8, &qword_24F9F8890);
      return (*(v343 + 8))(v342, v344);
    case 8uLL:
      v457 = &v556 - v130;
      sub_24E60169C((v132 & 0xFFFFFFFFFFFFFFBLL) + 16, v765, &qword_27F243BF0, &qword_24F9F8BD8);
      sub_24E615E00(v765, &v758);
      v458 = __swift_project_boxed_opaque_existential_1(&v758, *(&v759 + 1));
      v459 = MEMORY[0x28223BE20](v458);
      (*(v461 + 16))(&v556 - ((v460 + 15) & 0xFFFFFFFFFFFFFFF0), v459);
      sub_24F9217D8();
      v462 = v726;
      sub_24F926F28();
      v463 = v642;
      sub_24E615E00(&v758, v462 + *(v642 + 20));
      *(v462 + *(v463 + 24)) = v731;

      __swift_destroy_boxed_opaque_existential_1(&v758);
      sub_24F461DD8(v462, v647, type metadata accessor for PickActivityTransitionView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219C50, type metadata accessor for PickActivityTransitionView, &unk_24F94D1CC);
      v464 = sub_24F457898(&qword_27F219C60, type metadata accessor for ChallengesPlayerPickerView, "uk}28d\t");
      *&v758 = v666;
      *(&v758 + 1) = v464;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v758 = v659;
      *(&v758 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v466 = v654;
      sub_24F924E28();
      sub_24E60169C(v466, v698, &qword_27F219C48, &unk_24F94D350);
      swift_storeEnumTagMultiPayload();
      sub_24E713474();
      sub_24E713568();
      v467 = v699;
      sub_24F924E28();
      sub_24E601704(v466, &qword_27F219C48, &unk_24F94D350);
      sub_24E60169C(v467, v722, &qword_27F219C20, &qword_24F94D340);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v468 = v723;
      sub_24F924E28();
      sub_24E601704(v467, &qword_27F219C20, &qword_24F94D340);
      sub_24E60169C(v468, v729, &qword_27F219C10, &qword_24F94D338);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      sub_24F924E28();
      sub_24E601704(v468, &qword_27F219C10, &qword_24F94D338);
      sub_24E60169C(v457, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v457, &qword_27F2199C8, &qword_24F9F8890);
      sub_24F461E40(v462, type metadata accessor for PickActivityTransitionView);
      return sub_24E601704(v765, &qword_27F243BF0, &qword_24F9F8BD8);
    case 9uLL:
      v712 = &v556 - v130;
      v726 = v129;
      v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB68, &qword_24F961B40);
      v266 = swift_projectBox();
      v267 = v266[1];
      v714 = *v266;
      v711 = v267;
      v268 = *(v266 + v265[16]);
      v269 = v265[20];
      v270 = v265[24];
      v271 = v265[28];
      v272 = v265[32];
      (*(v655 + 16))(v671, v266 + v265[12], v713);
      v710 = type metadata accessor for ChallengesPlayerPickerMode;
      v273 = v656;
      sub_24F461DD8(v266 + v269, v656, type metadata accessor for ChallengesPlayerPickerMode);
      sub_24E60169C(v266 + v270, v765, &qword_27F2169E8, &qword_24F943600);
      sub_24E60169C(v266 + v271, &v758, &qword_27F2169E8, &qword_24F943600);
      v274 = *(v725 + 16);
      v718 = (v725 + 16);
      v717 = v274;
      v274(v672, v266 + v272, v719);
      type metadata accessor for LocalPlayerProvider(0);

      v716 = v268;

      sub_24F928F28();
      v275 = v742;
      swift_getKeyPath();
      *&v742 = v275;
      sub_24F457898(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
      sub_24F91FD88();

      v276 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
      swift_beginAccess();
      v277 = v670;
      sub_24F461DD8(v275 + v276, v670, type metadata accessor for Player);

      v278 = v626;
      v279 = v710;
      sub_24F461DD8(v273, v626, v710);
      sub_24E615E00(v765, &v742);
      sub_24E615E00(&v758, &v736);
      v715 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
      v280 = swift_getKeyPath();
      v281 = v608;
      *v608 = v280;
      *(v281 + 40) = 0;
      v282 = v666;
      v283 = *(v666 + 20);
      *(v281 + v283) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
      swift_storeEnumTagMultiPayload();
      v284 = v282[6];
      *(v281 + v284) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
      swift_storeEnumTagMultiPayload();
      v285 = v282[7];
      *(v281 + v285) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v286 = v281 + v282[17];
      LOBYTE(v751) = 1;
      sub_24F926F28();
      v287 = v756;
      *v286 = v755;
      *(v286 + 8) = v287;
      sub_24F461DD8(v277, v281 + v282[8], type metadata accessor for Player);
      v288 = (v281 + v282[11]);
      v289 = v711;
      *v288 = v714;
      v288[1] = v289;
      type metadata accessor for GameActivityDraftBuilder();
      sub_24F928F28();
      v290 = v751;
      swift_beginAccess();
      v291 = *(v290 + 16);

      type metadata accessor for GameActivityPlayersDraft(0);
      swift_allocObject();

      v293 = sub_24F4A51AC(v292);

      *(v281 + v282[9]) = v293;
      v294 = v567;
      sub_24F461DD8(v278, v567, v279);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254CC0, &qword_24F9F8B28);
        v296 = v576;
        sub_24F461D70(v294 + *(v295 + 64), v576, type metadata accessor for GameActivityDraftGameInfo);
        v297 = type metadata accessor for GameActivityDraftGameInfo(0);
        (*(*(v297 - 8) + 56))(v296, 0, 1, v297);
        sub_24E6009C8(v296, v281 + v282[15], &qword_27F212B28, &qword_24F939910);
        v298 = v609;
        if (!v291)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v469 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB70, &unk_24FA3A200) + 48);
        v470 = sub_24F928AD8();
        (*(*(v470 - 8) + 8))(v294 + v469, v470);
        sub_24E601704(v294, &qword_27F2169E8, &qword_24F943600);
        v298 = v609;
        if (!v291)
        {
          v524 = type metadata accessor for GameActivityDraftGameInfo(0);
          v525 = v576;
          (*(*(v524 - 8) + 56))(v576, 1, 1, v524);
          sub_24E6009C8(v525, v281 + v282[15], &qword_27F212B28, &qword_24F939910);
LABEL_53:
          sub_24F461DD8(v670, v298, type metadata accessor for Player);
          v478 = MEMORY[0x277D84F90];
          v714 = MEMORY[0x277D84FA0];
          v711 = MEMORY[0x277D84FA0];
          goto LABEL_54;
        }

        swift_getKeyPath();
        v751 = v291;
        sub_24F457898(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);

        sub_24F91FD88();

        v471 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
        swift_beginAccess();
        v472 = v291 + v471;
        v473 = v576;
        sub_24E60169C(v472, v576, &qword_27F212B28, &qword_24F939910);

        sub_24E6009C8(v473, v281 + v282[15], &qword_27F212B28, &qword_24F939910);
      }

      swift_getKeyPath();
      v753 = v291;
      sub_24F457898(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);

      sub_24F91FD88();

      v714 = sub_24F4433A4(v474);

      swift_getKeyPath();
      v753 = v291;

      sub_24F91FD88();

      v711 = sub_24F4433A4(v475);

      sub_24F461DD8(v670, v298, type metadata accessor for Player);
      swift_getKeyPath();
      v753 = v291;

      sub_24F91FD88();

      v476 = *(v291 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite);

      v477 = *(v476 + 16);
      if (v477)
      {
        v753 = MEMORY[0x277D84F90];
        sub_24F4578E0(0, v477, 0);
        v478 = v753;
        v710 = v476;
        v479 = (v476 + 40);
        do
        {
          v481 = *(v479 - 1);
          v480 = *v479;
          v753 = v478;
          v483 = *(v478 + 16);
          v482 = *(v478 + 24);

          if (v483 >= v482 >> 1)
          {
            sub_24F4578E0((v482 > 1), v483 + 1, 1);
            v478 = v753;
          }

          *(v478 + 16) = v483 + 1;
          v484 = v478 + 16 * v483;
          *(v484 + 32) = v481;
          *(v484 + 40) = v480;
          v479 += 9;
          --v477;
        }

        while (v477);

        v282 = v666;
        v281 = v608;
      }

      else
      {

        v478 = MEMORY[0x277D84F90];
      }

      v298 = v609;
LABEL_54:
      v710 = sub_24F45D828(v478);

      v526 = v282;
      sub_24E60169C(v281 + v282[15], v631, &qword_27F212B28, &qword_24F939910);
      type metadata accessor for GameActivityPlayerPickerDataSource(0);
      v527 = swift_allocObject();
      v528 = MEMORY[0x277D84F90];
      v527[2] = MEMORY[0x277D84F90];
      v527[3] = v528;
      v527[4] = v528;
      v527[5] = v528;
      *(v527 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__friendsThatPlayInfo) = MEMORY[0x277D84F98];
      v529 = (v527 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText);
      *v529 = 0;
      v529[1] = 0xE000000000000000;
      *(v527 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__allPickerRows) = v528;
      v530 = v715;
      sub_24F91FDB8();
      sub_24F461DD8(v298, v527 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_initiator, type metadata accessor for Player);
      v531 = sub_24F45D828(v716);

      sub_24F461E40(v298, type metadata accessor for Player);
      *(v527 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_playerIDsToExclude) = v531;
      v532 = (v527 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_preselectedInfo);
      v533 = v710;
      *v532 = v714;
      v532[1] = v533;
      v532[2] = v711;
      v534 = v731;
      *(v527 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_objectGraph) = v731;
      *(v527 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_contactStore) = v530;
      *(v527 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_shouldIncludeContact) = 1;
      *(v527 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__hasAnyFriendSuggestions) = 1;
      sub_24E6009C8(v631, v527 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource_gameInfo, &qword_27F212B28, &qword_24F939910);
      v535 = (v281 + v282[10]);
      v752 = v527;

      sub_24F926F28();

      sub_24F461E40(v670, type metadata accessor for Player);
      v536 = v754;
      *v535 = v753;
      v535[1] = v536;
      sub_24F461D70(v626, v281 + v282[12], type metadata accessor for ChallengesPlayerPickerMode);
      sub_24E612C80(&v742, v281 + v282[13]);
      sub_24E612C80(&v736, v281 + v282[14]);
      *(v281 + v282[16]) = v534;
      v537 = v594;
      sub_24F461D70(v281, v594, type metadata accessor for ChallengesPlayerPickerView);
      v538 = v674;
      v539 = v719;
      v717(v674, v672, v719);
      (*(v725 + 56))(v538, 0, 1, v539);

      v540 = v675;
      v541 = v704;
      sub_24F928F28();
      v542 = sub_24F921B48();
      v543 = v676;
      (*(*(v542 - 8) + 56))(v676, 1, 1, v542);
      v544 = sub_24F457898(&qword_27F219C60, type metadata accessor for ChallengesPlayerPickerView, "uk}28d\t");
      v545 = v595;
      sub_24F925E58();
      sub_24E601704(v543, &qword_27F2157E8, &unk_24F940C00);
      (*(v677 + 8))(v540, v541);
      sub_24E601704(v538, &qword_27F2157F0, &qword_24F9846A0);
      sub_24F461E40(v537, type metadata accessor for ChallengesPlayerPickerView);
      *&v742 = 0;
      *(&v742 + 1) = 0xE000000000000000;
      sub_24F92CA38();
      v743 = 0u;
      v742 = 0u;
      v546 = v678;
      sub_24F929838();

      sub_24E601704(&v742, &qword_27F2129B0, &unk_24F945320);
      *&v742 = v526;
      *(&v742 + 1) = v544;
      v547 = swift_getOpaqueTypeConformance2();
      v548 = v599;
      v549 = v659;
      sub_24F925EE8();
      (*(v679 + 8))(v546, v680);
      (*(v597 + 8))(v545, v549);
      v550 = v600;
      v551 = v664;
      (*(v600 + 16))(v647, v548, v664);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219C50, type metadata accessor for PickActivityTransitionView, &unk_24F94D1CC);
      *&v742 = v549;
      *(&v742 + 1) = v547;
      swift_getOpaqueTypeConformance2();
      v552 = v654;
      sub_24F924E28();
      sub_24E60169C(v552, v698, &qword_27F219C48, &unk_24F94D350);
      swift_storeEnumTagMultiPayload();
      sub_24E713474();
      sub_24E713568();
      v553 = v699;
      sub_24F924E28();
      sub_24E601704(v552, &qword_27F219C48, &unk_24F94D350);
      sub_24E60169C(v553, v722, &qword_27F219C20, &qword_24F94D340);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v554 = v723;
      sub_24F924E28();
      sub_24E601704(v553, &qword_27F219C20, &qword_24F94D340);
      sub_24E60169C(v554, v729, &qword_27F219C10, &qword_24F94D338);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v555 = v712;
      sub_24F924E28();
      sub_24E601704(v554, &qword_27F219C10, &qword_24F94D338);
      sub_24E60169C(v555, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v555, &qword_27F2199C8, &qword_24F9F8890);
      (*(v550 + 8))(v548, v551);
      (*(v725 + 8))(v672, v719);
      sub_24E601704(&v758, &qword_27F2169E8, &qword_24F943600);
      sub_24E601704(v765, &qword_27F2169E8, &qword_24F943600);
      sub_24F461E40(v656, type metadata accessor for ChallengesPlayerPickerMode);
      return (*(v655 + 8))(v671, v713);
    case 0xAuLL:
      v726 = v129;
      v712 = &v556 - v130;
      v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BE8, &qword_24F9F8B20);
      v420 = swift_projectBox();
      v421 = *(v419 + 48);
      v422 = v668;
      sub_24F461DD8(v420, v668, type metadata accessor for ChallengesReviewBaseInfo);
      v423 = v624;
      sub_24E60169C(v420 + v421, v624, &qword_27F243B28, &unk_24F9F87D0);
      type metadata accessor for LocalPlayerProvider(0);
      v424 = v731;
      sub_24F928F28();
      v425 = *&v765[0];
      swift_getKeyPath();
      *&v765[0] = v425;
      sub_24F457898(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
      sub_24F91FD88();

      v426 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
      swift_beginAccess();
      v427 = v623;
      sub_24F461DD8(v425 + v426, v623, type metadata accessor for Player);

      v428 = v422;
      v429 = v422;
      v430 = v568;
      sub_24F461DD8(v429, v568, type metadata accessor for ChallengesReviewBaseInfo);
      v431 = v570;
      sub_24E60169C(v423, v570, &qword_27F243B28, &unk_24F9F87D0);

      v432 = v571;
      sub_24F6C5B30(v427, v430, v424, v431, v571);
      v433 = v725;
      v434 = v674;
      v435 = v719;
      (*(v725 + 16))(v674, v428 + *(v569 + 44), v719);
      (*(v433 + 56))(v434, 0, 1, v435);
      v436 = v675;
      v437 = v704;
      sub_24F928F28();
      v438 = sub_24F921B48();
      v439 = v676;
      (*(*(v438 - 8) + 56))(v676, 1, 1, v438);
      v440 = sub_24F457898(&qword_27F219C90, type metadata accessor for ChallengesReviewView, &unk_24FA1D2A8);
      v441 = v574;
      v442 = v627;
      sub_24F925E58();
      sub_24E601704(v439, &qword_27F2157E8, &unk_24F940C00);
      (*(v677 + 8))(v436, v437);
      sub_24E601704(v434, &qword_27F2157F0, &qword_24F9846A0);
      sub_24F461E40(v432, type metadata accessor for ChallengesReviewView);
      *&v765[0] = 0;
      *(&v765[0] + 1) = 0xE000000000000000;
      sub_24F92CA38();
      memset(v765, 0, 32);
      v443 = v678;
      sub_24F929838();

      sub_24E601704(v765, &qword_27F2129B0, &unk_24F945320);
      *&v765[0] = v442;
      *(&v765[0] + 1) = v440;
      v444 = swift_getOpaqueTypeConformance2();
      v445 = v625;
      v446 = v630;
      sub_24F925EE8();
      (*(v679 + 8))(v443, v680);
      (*(v575 + 8))(v441, v446);
      v447 = v582;
      v448 = v445;
      v449 = v649;
      (*(v582 + 16))(v641, v448, v649);
      swift_storeEnumTagMultiPayload();
      *&v765[0] = v446;
      *(&v765[0] + 1) = v444;
      swift_getOpaqueTypeConformance2();
      v450 = sub_24F457898(&qword_27F219CA8, type metadata accessor for MultiplayerActivityReviewView, &unk_24F96F3DC);
      *&v765[0] = v643;
      *(&v765[0] + 1) = v450;
      v451 = swift_getOpaqueTypeConformance2();
      *&v765[0] = v644;
      *(&v765[0] + 1) = v451;
      v452 = swift_getOpaqueTypeConformance2();
      *&v765[0] = v652;
      *(&v765[0] + 1) = v452;
      swift_getOpaqueTypeConformance2();
      v453 = v650;
      sub_24F924E28();
      sub_24E60169C(v453, v703, &qword_27F219C80, &qword_24F9F87C0);
      swift_storeEnumTagMultiPayload();
      sub_24E713754();
      sub_24E713954();
      v454 = v705;
      sub_24F924E28();
      sub_24E601704(v453, &qword_27F219C80, &qword_24F9F87C0);
      sub_24E60169C(v454, v722, &qword_27F219C70, &unk_24F94D360);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v455 = v723;
      sub_24F924E28();
      sub_24E601704(v454, &qword_27F219C70, &unk_24F94D360);
      sub_24E60169C(v455, v729, &qword_27F219C10, &qword_24F94D338);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v456 = v712;
      sub_24F924E28();
      sub_24E601704(v455, &qword_27F219C10, &qword_24F94D338);
      sub_24E60169C(v456, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v456, &qword_27F2199C8, &qword_24F9F8890);
      (*(v447 + 8))(v625, v449);
      sub_24E601704(v624, &qword_27F243B28, &unk_24F9F87D0);
      return sub_24F461E40(v668, type metadata accessor for ChallengesReviewBaseInfo);
    case 0xBuLL:
      v726 = v129;
      v712 = &v556 - v130;
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BE0, &qword_24F9F8AE8);
      v197 = swift_projectBox();
      v198 = (v197 + *(v196 + 48));
      v200 = *v198;
      v199 = v198[1];
      v201 = v198[3];
      v765[2] = v198[2];
      v765[3] = v201;
      v765[0] = v200;
      v765[1] = v199;
      v202 = v669;
      sub_24F461DD8(v197, v669, type metadata accessor for MultiplayerActivityReviewBaseInfo);
      type metadata accessor for LocalPlayerProvider(0);
      sub_24F352A58(v765, &v758);
      v203 = v731;
      sub_24F928F28();
      v204 = v758;
      swift_getKeyPath();
      *&v758 = v204;
      sub_24F457898(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
      sub_24F91FD88();

      v205 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
      swift_beginAccess();
      v206 = v623;
      sub_24F461DD8(v204 + v205, v623, type metadata accessor for Player);

      v758 = v765[0];
      v759 = v765[1];
      v760 = v765[2];
      v761 = v765[3];
      v207 = v572;
      sub_24F461DD8(v202, v572, type metadata accessor for MultiplayerActivityReviewBaseInfo);

      v208 = v581;
      sub_24E9A35B8(v206, &v758, v207, v203, v581);
      v209 = v725;
      v210 = v674;
      v211 = v719;
      (*(v725 + 16))(v674, v202 + *(v573 + 20), v719);
      (*(v209 + 56))(v210, 0, 1, v211);
      v212 = v675;
      v213 = v704;
      sub_24F928F28();
      v214 = sub_24F921B48();
      v215 = v676;
      (*(*(v214 - 8) + 56))(v676, 1, 1, v214);
      v216 = sub_24F457898(&qword_27F219CA8, type metadata accessor for MultiplayerActivityReviewView, &unk_24F96F3DC);
      v217 = v584;
      v218 = v643;
      sub_24F925E58();
      sub_24E601704(v215, &qword_27F2157E8, &unk_24F940C00);
      (*(v677 + 8))(v212, v213);
      sub_24E601704(v210, &qword_27F2157F0, &qword_24F9846A0);
      sub_24F461E40(v208, type metadata accessor for MultiplayerActivityReviewView);
      *&v758 = 0;
      *(&v758 + 1) = 0xE000000000000000;
      sub_24F92CA38();
      v758 = 0u;
      v759 = 0u;
      v219 = v678;
      sub_24F929838();

      sub_24E601704(&v758, &qword_27F2129B0, &unk_24F945320);
      *&v758 = v218;
      *(&v758 + 1) = v216;
      v220 = swift_getOpaqueTypeConformance2();
      v221 = v583;
      v222 = v644;
      sub_24F925EE8();
      (*(v679 + 8))(v219, v680);
      (*(v586 + 8))(v217, v222);
      *&v758 = v222;
      *(&v758 + 1) = v220;
      v223 = swift_getOpaqueTypeConformance2();
      v224 = v632;
      v225 = v652;
      sub_24F925F48();
      (*(v585 + 8))(v221, v225);
      v226 = v590;
      v227 = v663;
      (*(v590 + 16))(v641, v224, v663);
      swift_storeEnumTagMultiPayload();
      v228 = sub_24F457898(&qword_27F219C90, type metadata accessor for ChallengesReviewView, &unk_24FA1D2A8);
      *&v758 = v627;
      *(&v758 + 1) = v228;
      v229 = swift_getOpaqueTypeConformance2();
      *&v758 = v630;
      *(&v758 + 1) = v229;
      swift_getOpaqueTypeConformance2();
      *&v758 = v225;
      *(&v758 + 1) = v223;
      swift_getOpaqueTypeConformance2();
      v230 = v650;
      sub_24F924E28();
      sub_24E60169C(v230, v703, &qword_27F219C80, &qword_24F9F87C0);
      swift_storeEnumTagMultiPayload();
      sub_24E713754();
      sub_24E713954();
      v231 = v705;
      sub_24F924E28();
      sub_24E601704(v230, &qword_27F219C80, &qword_24F9F87C0);
      sub_24E60169C(v231, v722, &qword_27F219C70, &unk_24F94D360);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v232 = v723;
      sub_24F924E28();
      sub_24E601704(v231, &qword_27F219C70, &unk_24F94D360);
      sub_24E60169C(v232, v729, &qword_27F219C10, &qword_24F94D338);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v233 = v712;
      sub_24F924E28();
      sub_24E601704(v232, &qword_27F219C10, &qword_24F94D338);
      sub_24E60169C(v233, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v233, &qword_27F2199C8, &qword_24F9F8890);
      (*(v226 + 8))(v632, v227);
      return sub_24F461E40(v669, type metadata accessor for MultiplayerActivityReviewBaseInfo);
    case 0xCuLL:
      v726 = v129;
      v239 = &v556 - v130;
      v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BD8, &qword_24F9F8AE0);
      v241 = swift_projectBox();
      v242 = (v241 + *(v240 + 48));
      v244 = *v242;
      v243 = v242[1];
      v246 = v242[2];
      v245 = v242[3];
      v247 = v587;
      sub_24F461DD8(v241, v587, type metadata accessor for RecordingAssociation);
      v248 = v588;
      sub_24F461DD8(v247, v588, type metadata accessor for RecordingAssociation);

      v249 = v577;
      sub_24F924AC8();
      v250 = v628;
      v251 = (v248 + *(v628 + 20));
      *v251 = v244;
      v251[1] = v243;
      v251[2] = v246;
      v251[3] = v245;
      *(v248 + v250[6]) = v731;
      v252 = v248 + v250[7];
      *v252 = swift_getKeyPath();
      *(v252 + 40) = 0;
      v253 = v250[8];
      *(v248 + v253) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
      swift_storeEnumTagMultiPayload();
      v254 = v248 + v250[9];
      LOBYTE(v758) = 0;

      sub_24F926F28();
      v255 = *(&v765[0] + 1);
      *v254 = v765[0];
      *(v254 + 8) = v255;
      v256 = v579;
      v257 = v580;
      (*(v579 + 16))(v578, v249, v580);
      sub_24F926F28();
      (*(v256 + 8))(v249, v257);
      v258 = (v248 + v250[11]);
      *&v758 = 0x3FF0000000000000;
      sub_24F926F28();
      v259 = *(&v765[0] + 1);
      *v258 = *&v765[0];
      v258[1] = v259;
      v260 = (v248 + v250[12]);
      *&v758 = 0;
      sub_24F926F28();
      v261 = *(&v765[0] + 1);
      *v260 = *&v765[0];
      v260[1] = v261;
      sub_24F461DD8(v248, v633, type metadata accessor for RecordingFullScreenView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219CC0, type metadata accessor for RecordingFullScreenView, &unk_24F95AA30);
      sub_24E713A10();
      v262 = v637;
      sub_24F924E28();
      sub_24E60169C(v262, v703, &qword_27F219CB8, &unk_24F9F8790);
      swift_storeEnumTagMultiPayload();
      sub_24E713754();
      sub_24E713954();
      v263 = v705;
      sub_24F924E28();
      sub_24E601704(v262, &qword_27F219CB8, &unk_24F9F8790);
      sub_24E60169C(v263, v722, &qword_27F219C70, &unk_24F94D360);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v264 = v723;
      sub_24F924E28();
      sub_24E601704(v263, &qword_27F219C70, &unk_24F94D360);
      sub_24E60169C(v264, v729, &qword_27F219C10, &qword_24F94D338);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      sub_24F924E28();
      sub_24E601704(v264, &qword_27F219C10, &qword_24F94D338);
      sub_24E60169C(v239, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v239, &qword_27F2199C8, &qword_24F9F8890);
      sub_24F461E40(v248, type metadata accessor for RecordingFullScreenView);
      return sub_24F461E40(v247, type metadata accessor for RecordingAssociation);
    case 0xDuLL:
      v726 = v129;
      v712 = &v556 - v130;
      v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BD0, &qword_24F9F8AD8);
      v391 = swift_projectBox();
      v393 = *v391;
      v392 = v391[1];
      v394 = *(v390 + 80);
      sub_24E60169C((v391 + 2), v765, &qword_27F213EA8, &unk_24F93D030);
      sub_24E60169C((v391 + 7), &v758, &qword_27F213EA8, &unk_24F93D030);
      v395 = *(v725 + 16);
      v396 = v695;
      v397 = v719;
      v395(v695, v391 + v394, v719);
      v398 = v589;
      sub_24E60169C(v765, (v589 + 16), qword_27F21B590, &unk_24F93BE30);
      sub_24E60169C(&v758, (v398 + 56), qword_27F21B590, &unk_24F93BE30);
      v399 = type metadata accessor for ActivitySharingPromptView(0);
      v395(&v398[v399[8]], v396, v397);
      *v398 = v393;
      *(v398 + 1) = v392;
      *(v398 + 12) = v731;
      v400 = v399[9];
      *&v398[v400] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
      swift_storeEnumTagMultiPayload();
      v401 = v399[10];
      *&v398[v401] = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v402 = v399[11];
      *&v398[v402] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      v403 = &v398[v399[12]];
      *v403 = swift_getKeyPath();
      v403[40] = 0;
      v404 = v399[13];
      *&v398[v404] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
      swift_storeEnumTagMultiPayload();
      sub_24E60169C(v398, v633, &qword_27F219CD0, &unk_24F94D390);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219CC0, type metadata accessor for RecordingFullScreenView, &unk_24F95AA30);
      sub_24E713A10();

      v405 = v637;
      sub_24F924E28();
      sub_24E60169C(v405, v703, &qword_27F219CB8, &unk_24F9F8790);
      swift_storeEnumTagMultiPayload();
      sub_24E713754();
      sub_24E713954();
      v406 = v705;
      sub_24F924E28();
      sub_24E601704(v405, &qword_27F219CB8, &unk_24F9F8790);
      sub_24E60169C(v406, v722, &qword_27F219C70, &unk_24F94D360);
      swift_storeEnumTagMultiPayload();
      sub_24E7133E8();
      sub_24E7136C8();
      v407 = v723;
      sub_24F924E28();
      sub_24E601704(v406, &qword_27F219C70, &unk_24F94D360);
      sub_24E60169C(v407, v729, &qword_27F219C10, &qword_24F94D338);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v408 = v712;
      sub_24F924E28();
      sub_24E601704(v407, &qword_27F219C10, &qword_24F94D338);
      sub_24E60169C(v408, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v408, &qword_27F2199C8, &qword_24F9F8890);
      sub_24E601704(v398, &qword_27F219CD0, &unk_24F94D390);
      (*(v725 + 8))(v695, v397);
      goto LABEL_44;
    case 0xEuLL:
      v726 = v129;
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BC8, &qword_24F9F8AD0);
      v176 = swift_projectBox();
      v177 = *(v175 + 64);
      sub_24E60169C(v176, v765, &qword_27F213EA8, &unk_24F93D030);
      sub_24E60169C(v176 + 40, &v758, &qword_27F213EA8, &unk_24F93D030);
      v178 = *(v725 + 16);
      v179 = v695;
      v180 = v719;
      v178(v695, v176 + v177, v719);
      v181 = v593;
      sub_24E60169C(v765, v593, qword_27F21B590, &unk_24F93BE30);
      sub_24E60169C(&v758, v181 + 40, qword_27F21B590, &unk_24F93BE30);
      v182 = type metadata accessor for ContactsIntegrationPromptView(0);
      v178((v181 + v182[7]), v179, v180);
      *(v181 + 80) = v731;
      v183 = v182[8];
      *(v181 + v183) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
      swift_storeEnumTagMultiPayload();
      v184 = v182[9];
      *(v181 + v184) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v185 = v182[10];
      *(v181 + v185) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      v186 = v181 + v182[11];
      *v186 = swift_getKeyPath();
      *(v186 + 40) = 0;
      v187 = v182[12];
      *(v181 + v187) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
      swift_storeEnumTagMultiPayload();
      sub_24E60169C(v181, v640, &qword_27F219D38, &qword_24F94D3B8);
      swift_storeEnumTagMultiPayload();
      sub_24E713EFC();
      v188 = sub_24F457898(&qword_27F219D58, type metadata accessor for PlayTogetherWelcomePageView, &protocol conformance descriptor for PlayTogetherWelcomePageView);

      *&v742 = v653;
      *(&v742 + 1) = v188;
      swift_getOpaqueTypeConformance2();
      v189 = v648;
      sub_24F924E28();
      sub_24E60169C(v189, v692, &qword_27F219D28, &qword_24F94D3B0);
      swift_storeEnumTagMultiPayload();
      sub_24E713E08();
      sub_24E714044();
      v190 = v694;
      sub_24F924E28();
      sub_24E601704(v189, &qword_27F219D28, &qword_24F94D3B0);
      sub_24E60169C(v190, v709, &qword_27F219D18, &qword_24F94D3A8);
      swift_storeEnumTagMultiPayload();
      sub_24E713D7C();
      v191 = type metadata accessor for FlowAction(255);
      v192 = sub_24F457898(&qword_27F219DB8, type metadata accessor for InviteFriendsPageView, &protocol conformance descriptor for InviteFriendsPageView);
      v193 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
      v194 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
      *&v742 = v711;
      *(&v742 + 1) = v191;
      *&v743 = v192;
      *(&v743 + 1) = v193;
      *&v744 = v194;
      swift_getOpaqueTypeConformance2();
      v195 = v710;
      sub_24F924E28();
      sub_24E601704(v190, &qword_27F219D18, &qword_24F94D3A8);
      sub_24E60169C(v195, v733, &qword_27F219D08, &qword_24F94D3A0);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v195, &qword_27F219D08, &qword_24F94D3A0);
      sub_24E601704(v181, &qword_27F219D38, &qword_24F94D3B8);
      (*(v725 + 8))(v695, v719);
LABEL_44:
      sub_24E601704(&v758, &qword_27F213EA8, &unk_24F93D030);
      return sub_24E601704(v765, &qword_27F213EA8, &unk_24F93D030);
    case 0xFuLL:
      v726 = v129;
      v308 = swift_projectBox();
      v309 = v645;
      sub_24F461DD8(v308, v645, type metadata accessor for PlayTogetherWelcomePage);
      v310 = v591;
      sub_24F461DD8(v309, v591, type metadata accessor for PlayTogetherWelcomePage);
      v311 = v653;
      v312 = *(v653 + 24);
      *(v310 + v312) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
      swift_storeEnumTagMultiPayload();
      v313 = v311[7];
      *(v310 + v313) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v314 = v311[8];
      *(v310 + v314) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      v315 = v310 + v311[9];
      *v315 = swift_getKeyPath();
      *(v315 + 40) = 0;
      v316 = v311[10];
      *(v310 + v316) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
      swift_storeEnumTagMultiPayload();
      *(v310 + v311[5]) = v731;
      v317 = sub_24F457898(&qword_27F219D58, type metadata accessor for PlayTogetherWelcomePageView, &protocol conformance descriptor for PlayTogetherWelcomePageView);

      v318 = v646;
      sub_24F925F48();
      sub_24F461E40(v310, type metadata accessor for PlayTogetherWelcomePageView);
      (*(v651 + 16))(v640, v318, v673);
      swift_storeEnumTagMultiPayload();
      sub_24E713EFC();
      *&v765[0] = v311;
      *(&v765[0] + 1) = v317;
      swift_getOpaqueTypeConformance2();
      v319 = v648;
      sub_24F924E28();
      sub_24E60169C(v319, v692, &qword_27F219D28, &qword_24F94D3B0);
      swift_storeEnumTagMultiPayload();
      sub_24E713E08();
      sub_24E714044();
      v320 = v694;
      sub_24F924E28();
      sub_24E601704(v319, &qword_27F219D28, &qword_24F94D3B0);
      sub_24E60169C(v320, v709, &qword_27F219D18, &qword_24F94D3A8);
      swift_storeEnumTagMultiPayload();
      sub_24E713D7C();
      v321 = type metadata accessor for FlowAction(255);
      v322 = sub_24F457898(&qword_27F219DB8, type metadata accessor for InviteFriendsPageView, &protocol conformance descriptor for InviteFriendsPageView);
      v323 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
      v324 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
      *&v765[0] = v711;
      *(&v765[0] + 1) = v321;
      *&v765[1] = v322;
      *(&v765[1] + 1) = v323;
      *&v765[2] = v324;
      swift_getOpaqueTypeConformance2();
      v325 = v710;
      sub_24F924E28();
      sub_24E601704(v320, &qword_27F219D18, &qword_24F94D3A8);
      sub_24E60169C(v325, v733, &qword_27F219D08, &qword_24F94D3A0);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v325, &qword_27F219D08, &qword_24F94D3A0);
      (*(v651 + 8))(v646, v673);
      return sub_24F461E40(v645, type metadata accessor for PlayTogetherWelcomePage);
    case 0x10uLL:
      v726 = v129;
      v150 = swift_projectBox();
      v151 = v657;
      sub_24F461DD8(v150, v657, type metadata accessor for AchievementDetails);
      v152 = v592;
      sub_24F461DD8(v151, v592, type metadata accessor for AchievementDetails);
      v153 = v604;
      v154 = v596;
      v155 = &v596[*(v604 + 24)];
      if (qword_27F210E90 != -1)
      {
        swift_once();
      }

      memcpy(v765, &xmmword_27F237800, 0x178uLL);
      memcpy(v155, &xmmword_27F237800, 0x178uLL);
      v156 = (v154 + *(v153 + 28));
      sub_24F929EB8();
      sub_24E76A93C(v765, &v758);
      *&v742 = sub_24F929EA8();
      sub_24F926F28();
      v157 = *(&v758 + 1);
      *v156 = v758;
      v156[1] = v157;
      sub_24F461DD8(v152, v154, type metadata accessor for AchievementDetails);
      v158 = v731;
      *(v154 + *(v153 + 20)) = v731;

      sub_24F928F28();
      v730 = type metadata accessor for AchievementDetails;
      v159 = sub_24F461E40(v152, type metadata accessor for AchievementDetails);
      MEMORY[0x28223BE20](v159);
      *(&v556 - 2) = v151;
      *(&v556 - 1) = v158;
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D70, &unk_24F94D3D0);
      v161 = sub_24F457898(&qword_27F219D78, type metadata accessor for AchievementDetailsPageView, &unk_24FA0572C);
      v162 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D80, &qword_24FA19330);
      v163 = sub_24E7141DC();
      *&v758 = v162;
      *(&v758 + 1) = v163;
      v164 = swift_getOpaqueTypeConformance2();
      v165 = v661;
      sub_24F926A58();
      sub_24F461E40(v154, type metadata accessor for AchievementDetailsPageView);
      (*(v662 + 16))(v605, v165, v665);
      swift_storeEnumTagMultiPayload();
      *&v758 = v153;
      *(&v758 + 1) = v160;
      *&v759 = v161;
      *(&v759 + 1) = v164;
      swift_getOpaqueTypeConformance2();
      v166 = sub_24E7142E0();
      *&v758 = v606;
      *(&v758 + 1) = v166;
      swift_getOpaqueTypeConformance2();
      v167 = v607;
      sub_24F924E28();
      sub_24E60169C(v167, v692, &qword_27F219D68, &qword_24F9F8750);
      swift_storeEnumTagMultiPayload();
      sub_24E713E08();
      sub_24E714044();
      v168 = v694;
      sub_24F924E28();
      sub_24E601704(v167, &qword_27F219D68, &qword_24F9F8750);
      sub_24E60169C(v168, v709, &qword_27F219D18, &qword_24F94D3A8);
      swift_storeEnumTagMultiPayload();
      sub_24E713D7C();
      v169 = type metadata accessor for FlowAction(255);
      v170 = sub_24F457898(&qword_27F219DB8, type metadata accessor for InviteFriendsPageView, &protocol conformance descriptor for InviteFriendsPageView);
      v171 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
      v172 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
      *&v758 = v711;
      *(&v758 + 1) = v169;
      *&v759 = v170;
      *(&v759 + 1) = v171;
      *&v760 = v172;
      swift_getOpaqueTypeConformance2();
      v173 = v710;
      sub_24F924E28();
      sub_24E601704(v168, &qword_27F219D18, &qword_24F94D3A8);
      sub_24E60169C(v173, v733, &qword_27F219D08, &qword_24F94D3A0);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v173, &qword_27F219D08, &qword_24F94D3A0);
      (*(v662 + 8))(v661, v665);
      return sub_24F461E40(v657, v730);
    case 0x11uLL:
      v726 = v129;
      v358 = swift_projectBox();
      v359 = v658;
      sub_24F461DD8(v358, v658, type metadata accessor for InviteFriendsPageIntent);
      v360 = v598;
      sub_24F461DD8(v359, v598, type metadata accessor for InviteFriendsPageIntent);
      v361 = v711;
      *(v360 + *(v711 + 20)) = v731;
      v362 = (v360 + v361[6]);
      type metadata accessor for InviteFriendsSearchPagePresenter(0);
      swift_allocObject();

      *&v758 = sub_24EE48948();
      sub_24F926F28();
      v363 = *(&v765[0] + 1);
      *v362 = *&v765[0];
      v362[1] = v363;
      v364 = v360 + v361[7];
      *v364 = sub_24F923398() & 1;
      *(v364 + 8) = v365;
      *(v364 + 16) = v366 & 1;
      v367 = v360 + v361[8];
      *v367 = swift_getKeyPath();
      *(v367 + 8) = 0;
      v368 = v361[9];
      *(v360 + v368) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231510, &qword_24F9A6490);
      swift_storeEnumTagMultiPayload();
      *(v360 + v361[10]) = 1;
      v369 = v361[11];
      *(v360 + v369) = sub_24F9258F8();
      v370 = type metadata accessor for FlowAction(0);
      v371 = sub_24F457898(&qword_27F219DB8, type metadata accessor for InviteFriendsPageView, &protocol conformance descriptor for InviteFriendsPageView);
      v372 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
      v373 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
      v374 = v660;
      sub_24F925E78();
      sub_24F461E40(v360, type metadata accessor for InviteFriendsPageView);
      v375 = v601;
      v376 = v374;
      v377 = v712;
      (*(v601 + 16))(v709, v376, v712);
      swift_storeEnumTagMultiPayload();
      sub_24E713D7C();
      *&v765[0] = v361;
      *(&v765[0] + 1) = v370;
      *&v765[1] = v371;
      *(&v765[1] + 1) = v372;
      *&v765[2] = v373;
      swift_getOpaqueTypeConformance2();
      v378 = v710;
      sub_24F924E28();
      sub_24E60169C(v378, v733, &qword_27F219D08, &qword_24F94D3A0);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v378, &qword_27F219D08, &qword_24F94D3A0);
      (*(v375 + 8))(v660, v377);
      return sub_24F461E40(v658, type metadata accessor for InviteFriendsPageIntent);
    case 0x12uLL:
      if (v132 == 0x9000000000000000)
      {
        v496 = &v556 - v130;
        sub_24EE76C58(v765);
        v747 = v765[5];
        v748[0] = v765[6];
        *(v748 + 9) = *(&v765[6] + 9);
        v742 = v765[0];
        v743 = v765[1];
        v744 = v765[2];
        v745 = v765[3];
        v746 = v765[4];
        sub_24E71218C();
        sub_24F924E28();
        v497 = v763;
        v498 = v682;
        v682[4] = v762;
        v498[5] = v497;
        v498[6] = v764[0];
        *(v498 + 105) = *(v764 + 9);
        v499 = v759;
        *v498 = v758;
        v498[1] = v499;
        v500 = v761;
        v498[2] = v760;
        v498[3] = v500;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199F8, &qword_24F94D270);
        sub_24E712100();
        sub_24E7121E0();
        v501 = v683;
        sub_24F924E28();
        sub_24E60169C(v501, v716, &qword_27F2199E8, &unk_24F9F8880);
        swift_storeEnumTagMultiPayload();
        sub_24E712074();
        sub_24E71304C();
        v502 = v718;
        sub_24F924E28();
        sub_24E601704(v501, &qword_27F2199E8, &unk_24F9F8880);
        sub_24E60169C(v502, v729, &qword_27F2199D8, &unk_24F94D260);
        swift_storeEnumTagMultiPayload();
        sub_24E711FE8();
        sub_24E71335C();
        sub_24F924E28();
        sub_24E601704(v502, &qword_27F2199D8, &unk_24F94D260);
        sub_24E60169C(v496, v733, &qword_27F2199C8, &qword_24F9F8890);
        swift_storeEnumTagMultiPayload();
        sub_24E711F5C();
        sub_24E713C00();
        sub_24F924E28();
        v149 = v496;
        return sub_24E601704(v149, &qword_27F2199C8, &qword_24F9F8890);
      }

      v726 = v129;
      if (v132 == 0x9000000000000008)
      {
        *v108 = xmmword_24F9F8720;
        v108[16] = 0;
        *(v108 + 3) = MEMORY[0x277D84F90];
        v415 = &v556 - v130;
        swift_storeEnumTagMultiPayload();
        sub_24E713164();
        v416 = v602;
        sub_24F924E28();
        sub_24E60169C(v416, v687, &qword_27F219BC8, &qword_24F94D318);
        swift_storeEnumTagMultiPayload();
        sub_24E7130D8();
        sub_24E713220();
        v417 = v689;
        sub_24F924E28();
        sub_24E601704(v416, &qword_27F219BC8, &qword_24F94D318);
        sub_24E60169C(v417, v716, &qword_27F219BB8, &qword_24F94D310);
        swift_storeEnumTagMultiPayload();
        sub_24E712074();
        sub_24E71304C();
        v418 = v718;
        sub_24F924E28();
        sub_24E601704(v417, &qword_27F219BB8, &qword_24F94D310);
        sub_24E60169C(v418, v729, &qword_27F2199D8, &unk_24F94D260);
        swift_storeEnumTagMultiPayload();
        sub_24E711FE8();
        sub_24E71335C();
        sub_24F924E28();
        sub_24E601704(v418, &qword_27F2199D8, &unk_24F94D260);
        sub_24E60169C(v415, v733, &qword_27F2199C8, &qword_24F9F8890);
        swift_storeEnumTagMultiPayload();
        sub_24E711F5C();
        sub_24E713C00();
        sub_24F924E28();
        v149 = v415;
        return sub_24E601704(v149, &qword_27F2199C8, &qword_24F9F8890);
      }

      type metadata accessor for LocalPlayerProvider(0);
      sub_24F928F28();
      v503 = *&v765[0];
      type metadata accessor for ASKBagContract(0);
      sub_24F928F28();
      v504 = v556;
      sub_24EC87690(v503, v758, v556);
      if (qword_27F211278 != -1)
      {
        swift_once();
      }

      v505 = qword_27F2431D0;
      v506 = swift_getKeyPath();
      *&v765[0] = v505;

      v507 = sub_24F9238D8();
      v508 = v606;
      v509 = (v504 + *(v606 + 36));
      *v509 = v506;
      v509[1] = v507;
      v510 = sub_24E7142E0();
      v511 = v557;
      sub_24F925F48();
      sub_24E601704(v504, &qword_27F219D98, &unk_24F94D3E0);
      (*(v558 + 16))(v605, v511, v610);
      swift_storeEnumTagMultiPayload();
      v512 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D70, &unk_24F94D3D0);
      v513 = sub_24F457898(&qword_27F219D78, type metadata accessor for AchievementDetailsPageView, &unk_24FA0572C);
      v514 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219D80, &qword_24FA19330);
      v515 = sub_24E7141DC();
      *&v765[0] = v514;
      *(&v765[0] + 1) = v515;
      v516 = swift_getOpaqueTypeConformance2();
      *&v765[0] = v604;
      *(&v765[0] + 1) = v512;
      *&v765[1] = v513;
      *(&v765[1] + 1) = v516;
      swift_getOpaqueTypeConformance2();
      *&v765[0] = v508;
      *(&v765[0] + 1) = v510;
      swift_getOpaqueTypeConformance2();
      v517 = v607;
      sub_24F924E28();
      sub_24E60169C(v517, v692, &qword_27F219D68, &qword_24F9F8750);
      swift_storeEnumTagMultiPayload();
      sub_24E713E08();
      sub_24E714044();
      v518 = v694;
      sub_24F924E28();
      sub_24E601704(v517, &qword_27F219D68, &qword_24F9F8750);
      sub_24E60169C(v518, v709, &qword_27F219D18, &qword_24F94D3A8);
      swift_storeEnumTagMultiPayload();
      sub_24E713D7C();
      v519 = type metadata accessor for FlowAction(255);
      v520 = sub_24F457898(&qword_27F219DB8, type metadata accessor for InviteFriendsPageView, &protocol conformance descriptor for InviteFriendsPageView);
      v521 = sub_24F457898(&qword_27F219B98, type metadata accessor for FlowAction, &protocol conformance descriptor for FlowAction);
      v522 = sub_24F457898(&qword_27F219BA0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
      *&v765[0] = v711;
      *(&v765[0] + 1) = v519;
      *&v765[1] = v520;
      *(&v765[1] + 1) = v521;
      *&v765[2] = v522;
      swift_getOpaqueTypeConformance2();
      v523 = v710;
      sub_24F924E28();
      sub_24E601704(v518, &qword_27F219D18, &qword_24F94D3A8);
      sub_24E60169C(v523, v733, &qword_27F219D08, &qword_24F94D3A0);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24E601704(v523, &qword_27F219D08, &qword_24F94D3A0);
      return (*(v558 + 8))(v557, v610);
    default:
      v712 = &v556 - v130;
      v726 = v129;
      v133 = *(v132 + 24);
      v725 = *(v132 + 16);
      v134 = *(v132 + 32);
      type metadata accessor for ASKBagContract(0);
      v135 = v133;

      v724 = v134;

      v136 = v731;
      sub_24F928F28();
      v137 = v742;
      type metadata accessor for LocalPlayerProvider(0);
      sub_24F928F28();
      v138 = v736;
      type metadata accessor for ArcadeSubscription(0);
      sub_24F928F28();
      v139 = v757[0];
      if (qword_27F20FF08 != -1)
      {
        swift_once();
      }

      v758 = xmmword_27F39ACF8;
      v759 = xmmword_27F39AD08;
      LOBYTE(v760) = byte_27F39AD18;

      sub_24F926F28();
      v722 = v765[0];
      v720 = *(&v765[1] + 1);
      v721 = *&v765[1];
      LODWORD(v719) = LOBYTE(v765[2]);
      v723 = *(&v765[2] + 1);
      swift_retain_n();

      v140 = v724;

      v141 = v725;
      *&v758 = sub_24F35D2AC(v136, v139, v725, v135, v140);
      type metadata accessor for GenericPageViewModel(0);

      sub_24F926F28();

      *&v736 = v136;
      *(&v736 + 1) = v137;
      *&v737 = v138;
      *(&v737 + 1) = v139;
      *&v738 = v141;
      *(&v738 + 1) = v135;
      *v739 = v140;
      *&v739[8] = v765[0];
      *&v739[24] = v722;
      *&v739[40] = v721;
      *&v740 = v720;
      BYTE8(v740) = v719;
      HIDWORD(v740) = *(v765 + 3);
      *(&v740 + 9) = v765[0];
      v741 = v723;
      *&v765[7] = v723;
      v765[5] = *&v739[32];
      v765[6] = v740;
      v765[3] = *v739;
      v765[4] = *&v739[16];
      v765[1] = v737;
      v765[2] = v738;
      v765[0] = v736;
      sub_24EE76BCC(v765);
      v747 = v765[5];
      v748[0] = v765[6];
      *(v748 + 9) = *(&v765[6] + 9);
      v742 = v765[0];
      v743 = v765[1];
      v744 = v765[2];
      v745 = v765[3];
      v746 = v765[4];
      sub_24F35C490(&v736, &v758);
      sub_24E71218C();
      sub_24F924E28();
      v142 = v763;
      v143 = v682;
      v682[4] = v762;
      v143[5] = v142;
      v143[6] = v764[0];
      *(v143 + 105) = *(v764 + 9);
      v144 = v759;
      *v143 = v758;
      v143[1] = v144;
      v145 = v761;
      v143[2] = v760;
      v143[3] = v145;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2199F8, &qword_24F94D270);
      sub_24E712100();
      sub_24E7121E0();
      v146 = v683;
      sub_24F924E28();
      sub_24E60169C(v146, v716, &qword_27F2199E8, &unk_24F9F8880);
      swift_storeEnumTagMultiPayload();
      sub_24E712074();
      sub_24E71304C();
      v147 = v718;
      sub_24F924E28();
      sub_24E601704(v146, &qword_27F2199E8, &unk_24F9F8880);
      sub_24E60169C(v147, v729, &qword_27F2199D8, &unk_24F94D260);
      swift_storeEnumTagMultiPayload();
      sub_24E711FE8();
      sub_24E71335C();
      v148 = v712;
      sub_24F924E28();
      sub_24E601704(v147, &qword_27F2199D8, &unk_24F94D260);
      sub_24E60169C(v148, v733, &qword_27F2199C8, &qword_24F9F8890);
      swift_storeEnumTagMultiPayload();
      sub_24E711F5C();
      sub_24E713C00();
      sub_24F924E28();
      sub_24F45E614(&v736);
      v149 = v148;
      return sub_24E601704(v149, &qword_27F2199C8, &qword_24F9F8890);
  }
}

uint64_t static FlowDestination.page<A>(whatPage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 16));
  result = (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  *a4 = v8 | 4;
  return result;
}

uint64_t sub_24F44BDD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F457898(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F212B28, &qword_24F939910);
}

uint64_t sub_24F44BEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E60169C(a1, &v6 - v3, &qword_27F212B28, &qword_24F939910);
  return sub_24F34DCA8(v4);
}

double sub_24F44BF6C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24F457898(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD78();

  return result;
}

double sub_24F44C08C@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24F457898(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  *a4 = *(v6 + *a3);

  return result;
}

uint64_t static FlowDestination.pageContainer<A>(whatPageContainer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 16));
  result = (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  *a4 = v8 | 0x1000000000000000;
  return result;
}

uint64_t static FlowDestination.searchPageContainer<A>(whatPage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 16));
  result = (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  *a4 = v8 | 0x1000000000000004;
  return result;
}

uint64_t sub_24F44C2A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X8>)
{
  v378 = a2;
  v377 = a1;
  v374 = a3;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215760, &unk_24F940B30);
  MEMORY[0x28223BE20](v270);
  v264 = (&v260 - v3);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2441D8, &qword_24F9FAB90);
  MEMORY[0x28223BE20](v266);
  v269 = &v260 - v4;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B88, &unk_24F94D300);
  MEMORY[0x28223BE20](v380);
  v271 = &v260 - v5;
  v267 = type metadata accessor for SocialIntegrationContactsListPageView(0);
  MEMORY[0x28223BE20](v267);
  v263 = &v260 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = type metadata accessor for SocialIntegrationContactsListPageIntent(0);
  MEMORY[0x28223BE20](v265);
  v261 = &v260 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v262 = &v260 - v9;
  MEMORY[0x28223BE20](v10);
  v272 = &v260 - v11;
  v275 = type metadata accessor for OverlayNowPlayingPageIntent(0);
  MEMORY[0x28223BE20](v275);
  v268 = &v260 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v274 = &v260 - v14;
  v279 = type metadata accessor for OverlaySocialPageIntent(0);
  MEMORY[0x28223BE20](v279);
  v273 = &v260 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v278 = &v260 - v17;
  v287 = type metadata accessor for AchievementsByGameView(0);
  MEMORY[0x28223BE20](v287);
  v277 = &v260 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = type metadata accessor for AchievementsPageIntent(0);
  MEMORY[0x28223BE20](v281);
  v276 = &v260 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v280 = &v260 - v21;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2441E0, &qword_24F9FAB98);
  MEMORY[0x28223BE20](v288);
  v290 = &v260 - v22;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2441E8, &qword_24F9FABA0);
  MEMORY[0x28223BE20](v283);
  v285 = &v260 - v23;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B50, &unk_24F94D2F0);
  MEMORY[0x28223BE20](v289);
  v286 = &v260 - v24;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B40, &unk_24F9F8960);
  MEMORY[0x28223BE20](v311);
  v291 = &v260 - v25;
  v284 = type metadata accessor for OverlayActiveCallPageView(0);
  MEMORY[0x28223BE20](v284);
  v282 = (&v260 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v303 = type metadata accessor for PlayNowPageView(0);
  MEMORY[0x28223BE20](v303);
  v293 = &v260 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = type metadata accessor for PlayNowPageIntent(0);
  MEMORY[0x28223BE20](v295);
  v292 = &v260 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v298 = &v260 - v30;
  MEMORY[0x28223BE20](v31);
  v294 = &v260 - v32;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2441F0, &qword_24F9FABA8);
  MEMORY[0x28223BE20](v308);
  v310 = &v260 - v33;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2441F8, &qword_24F9FABB0);
  MEMORY[0x28223BE20](v304);
  v306 = (&v260 - v34);
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244200, &qword_24F9FABB8);
  MEMORY[0x28223BE20](v300);
  v301 = &v260 - v35;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B00, &unk_24F9F8950);
  MEMORY[0x28223BE20](v305);
  v302 = &v260 - v36;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219AF0, &unk_24F94D2D0);
  MEMORY[0x28223BE20](v309);
  v307 = &v260 - v37;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219AE0, &unk_24F9F8940);
  MEMORY[0x28223BE20](v370);
  v312 = &v260 - v38;
  v299 = type metadata accessor for GameDetailsMediaPreviewPageView(0);
  MEMORY[0x28223BE20](v299);
  v297 = &v260 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = type metadata accessor for GameDetailsMediaPreviewPageIntent(0);
  MEMORY[0x28223BE20](v314);
  v296 = &v260 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v313 = &v260 - v42;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244208, &qword_24F9FABC0);
  MEMORY[0x28223BE20](v317);
  v319 = (&v260 - v43);
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219AC0, &unk_24F94D2C0);
  MEMORY[0x28223BE20](v338);
  v320 = &v260 - v44;
  v318 = type metadata accessor for FriendsPlayingPageView(0);
  MEMORY[0x28223BE20](v318);
  v316 = &v260 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = type metadata accessor for FriendsPlayingPageIntent(0);
  MEMORY[0x28223BE20](v323);
  v315 = &v260 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v322 = &v260 - v48;
  v333 = type metadata accessor for AchievementsPageView(0);
  MEMORY[0x28223BE20](v333);
  v324 = &v260 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = type metadata accessor for GameAchievementsListPageIntent(0);
  MEMORY[0x28223BE20](v327);
  v321 = &v260 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v329 = &v260 - v52;
  MEMORY[0x28223BE20](v53);
  v326 = &v260 - v54;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244210, &qword_24F9FABC8);
  MEMORY[0x28223BE20](v334);
  v336 = &v260 - v55;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244218, &qword_24F9FABD0);
  MEMORY[0x28223BE20](v330);
  v331 = &v260 - v56;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219AA8, &unk_24F9F8930);
  MEMORY[0x28223BE20](v335);
  v332 = &v260 - v57;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A98, &unk_24F94D2B0);
  MEMORY[0x28223BE20](v365);
  v337 = &v260 - v58;
  v341 = type metadata accessor for LeaderboardsListPageIntent(0);
  MEMORY[0x28223BE20](v341);
  v325 = &v260 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v328 = &v260 - v61;
  MEMORY[0x28223BE20](v62);
  v340 = &v260 - v63;
  v345 = type metadata accessor for LeaderboardSetDetailsPageIntent(0);
  MEMORY[0x28223BE20](v345);
  v339 = &v260 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v342 = &v260 - v66;
  MEMORY[0x28223BE20](v67);
  v344 = &v260 - v68;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244220, &qword_24F9FABD8);
  MEMORY[0x28223BE20](v347);
  v348 = &v260 - v69;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A80, &unk_24F9F8920);
  MEMORY[0x28223BE20](v362);
  v349 = &v260 - v70;
  v351 = type metadata accessor for LeaderboardsPageView(0);
  MEMORY[0x28223BE20](v351);
  v350 = &v260 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = type metadata accessor for LeaderboardsOverviewPageIntent(0);
  MEMORY[0x28223BE20](v354);
  v343 = &v260 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v346 = &v260 - v74;
  MEMORY[0x28223BE20](v75);
  v353 = &v260 - v76;
  v372 = type metadata accessor for LeaderboardDetailsPageView(0);
  MEMORY[0x28223BE20](v372);
  v355 = &v260 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = type metadata accessor for LeaderboardDetailsPageIntent(0);
  MEMORY[0x28223BE20](v357);
  v352 = &v260 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v358 = &v260 - v80;
  MEMORY[0x28223BE20](v81);
  v356 = &v260 - v82;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244228, &qword_24F9FABE0);
  MEMORY[0x28223BE20](v376);
  v375 = &v260 - v83;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244230, &qword_24F9FABE8);
  MEMORY[0x28223BE20](v367);
  v369 = &v260 - v84;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244238, &qword_24F9FABF0);
  MEMORY[0x28223BE20](v364);
  v363 = &v260 - v85;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244240, &qword_24F9FABF8);
  MEMORY[0x28223BE20](v360);
  v371 = &v260 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244248, &qword_24F9FAC00);
  MEMORY[0x28223BE20](v87);
  v89 = &v260 - v88;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A60, &unk_24F94D2A0);
  MEMORY[0x28223BE20](v361);
  v91 = &v260 - v90;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A50, &unk_24F9F8910);
  MEMORY[0x28223BE20](v373);
  v93 = &v260 - v92;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A40, &unk_24F94D290);
  MEMORY[0x28223BE20](v368);
  v95 = &v260 - v94;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A30, &unk_24F9F8900);
  MEMORY[0x28223BE20](v379);
  v366 = &v260 - v96;
  v97 = type metadata accessor for LibraryPageView(0);
  MEMORY[0x28223BE20](v97);
  v99 = &v260 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for LibraryPageIntent(0);
  MEMORY[0x28223BE20](v100);
  v102 = &v260 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v103);
  v105 = &v260 - v104;
  sub_24E615E00(v377, &v396);
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243E08, &qword_24F9F8CD0);
  if (!swift_dynamicCast())
  {
    v112 = v371;
    v260 = v95;
    v113 = v356;
    if (swift_dynamicCast())
    {
      v114 = v358;
      sub_24F461D70(v113, v358, type metadata accessor for LeaderboardDetailsPageIntent);
      v115 = v352;
      sub_24F461DD8(v114, v352, type metadata accessor for LeaderboardDetailsPageIntent);
      v116 = v378;

      v117 = v355;
      sub_24F88AAEC(v115, v116, v355);
      sub_24F461DD8(v117, v89, type metadata accessor for LeaderboardDetailsPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219A68, type metadata accessor for LibraryPageView, &unk_24F95DFFC);
      sub_24F457898(&qword_27F219A70, type metadata accessor for LeaderboardDetailsPageView, &unk_24FA362C0);
      sub_24F924E28();
      sub_24E60169C(v91, v112, &qword_27F219A60, &unk_24F94D2A0);
      swift_storeEnumTagMultiPayload();
      sub_24E712560();
      sub_24E71264C();
      v118 = v93;
      sub_24F924E28();
      sub_24E601704(v91, &qword_27F219A60, &unk_24F94D2A0);
      sub_24E60169C(v93, v363, &qword_27F219A50, &unk_24F9F8910);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v119 = v260;
      sub_24F924E28();
      sub_24E601704(v118, &qword_27F219A50, &unk_24F9F8910);
      sub_24E60169C(v119, v369, &qword_27F219A40, &unk_24F94D290);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v120 = v366;
      sub_24F924E28();
      sub_24E601704(v119, &qword_27F219A40, &unk_24F94D290);
      sub_24E60169C(v120, v375, &qword_27F219A30, &unk_24F9F8900);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v120, &qword_27F219A30, &unk_24F9F8900);
      sub_24F461E40(v117, type metadata accessor for LeaderboardDetailsPageView);
      v110 = type metadata accessor for LeaderboardDetailsPageIntent;
      v111 = v358;
      goto LABEL_8;
    }

    v121 = v353;
    v122 = v112;
    if (swift_dynamicCast())
    {
      v123 = v346;
      sub_24F461D70(v121, v346, type metadata accessor for LeaderboardsOverviewPageIntent);
      v124 = v343;
      sub_24F461DD8(v123, v343, type metadata accessor for LeaderboardsOverviewPageIntent);
      v125 = v378;

      v126 = v350;
      sub_24EDA2C08(v124, v125, v350);
      sub_24F461DD8(v126, v348, type metadata accessor for LeaderboardsPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219A88, type metadata accessor for LeaderboardsPageView, &unk_24F99CCBC);
      v127 = v349;
      sub_24F924E28();
      sub_24E60169C(v127, v122, &qword_27F219A80, &unk_24F9F8920);
      swift_storeEnumTagMultiPayload();
      sub_24E712560();
      sub_24E71264C();
      sub_24F924E28();
      sub_24E601704(v127, &qword_27F219A80, &unk_24F9F8920);
      sub_24E60169C(v93, v363, &qword_27F219A50, &unk_24F9F8910);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v128 = v260;
      sub_24F924E28();
      sub_24E601704(v93, &qword_27F219A50, &unk_24F9F8910);
      sub_24E60169C(v128, v369, &qword_27F219A40, &unk_24F94D290);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v129 = v366;
      sub_24F924E28();
      sub_24E601704(v128, &qword_27F219A40, &unk_24F94D290);
      sub_24E60169C(v129, v375, &qword_27F219A30, &unk_24F9F8900);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v129, &qword_27F219A30, &unk_24F9F8900);
      sub_24F461E40(v126, type metadata accessor for LeaderboardsPageView);
      v110 = type metadata accessor for LeaderboardsOverviewPageIntent;
      v111 = v123;
      goto LABEL_8;
    }

    v131 = v344;
    v132 = swift_dynamicCast();
    v133 = v378;
    if (v132)
    {
      v107 = v342;
      sub_24F461D70(v131, v342, type metadata accessor for LeaderboardSetDetailsPageIntent);
      v134 = v339;
      sub_24F461DD8(v107, v339, type metadata accessor for LeaderboardSetDetailsPageIntent);

      v135 = v350;
      sub_24EDA2F94(v134, v133, v350);
      sub_24F461DD8(v135, v348, type metadata accessor for LeaderboardsPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219A88, type metadata accessor for LeaderboardsPageView, &unk_24F99CCBC);
      v136 = v349;
      sub_24F924E28();
      v137 = v375;
      sub_24E60169C(v136, v112, &qword_27F219A80, &unk_24F9F8920);
      swift_storeEnumTagMultiPayload();
      sub_24E712560();
      sub_24E71264C();
      sub_24F924E28();
      sub_24E601704(v136, &qword_27F219A80, &unk_24F9F8920);
      sub_24E60169C(v93, v363, &qword_27F219A50, &unk_24F9F8910);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v138 = v260;
      sub_24F924E28();
      sub_24E601704(v93, &qword_27F219A50, &unk_24F9F8910);
      sub_24E60169C(v138, v369, &qword_27F219A40, &unk_24F94D290);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v139 = v366;
      sub_24F924E28();
      sub_24E601704(v138, &qword_27F219A40, &unk_24F94D290);
      sub_24E60169C(v139, v137, &qword_27F219A30, &unk_24F9F8900);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v139, &qword_27F219A30, &unk_24F9F8900);
      sub_24F461E40(v135, type metadata accessor for LeaderboardsPageView);
      v109 = type metadata accessor for LeaderboardSetDetailsPageIntent;
      goto LABEL_3;
    }

    v140 = v340;
    if (swift_dynamicCast())
    {
      v107 = v328;
      sub_24F461D70(v140, v328, type metadata accessor for LeaderboardsListPageIntent);
      v141 = v325;
      sub_24F461DD8(v107, v325, type metadata accessor for LeaderboardsListPageIntent);

      v142 = v350;
      sub_24EDA3220(v141, v133, v350);
      sub_24F461DD8(v142, v331, type metadata accessor for LeaderboardsPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219A88, type metadata accessor for LeaderboardsPageView, &unk_24F99CCBC);
      sub_24F457898(&qword_27F219AB0, type metadata accessor for AchievementsPageView, &unk_24F9D2588);
      v143 = v332;
      sub_24F924E28();
      v144 = v375;
      sub_24E60169C(v143, v336, &qword_27F219AA8, &unk_24F9F8930);
      swift_storeEnumTagMultiPayload();
      sub_24E71278C();
      sub_24E712878();
      v145 = v337;
      sub_24F924E28();
      sub_24E601704(v143, &qword_27F219AA8, &unk_24F9F8930);
      sub_24E60169C(v145, v363, &qword_27F219A98, &unk_24F94D2B0);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v146 = v260;
      sub_24F924E28();
      sub_24E601704(v145, &qword_27F219A98, &unk_24F94D2B0);
      sub_24E60169C(v146, v369, &qword_27F219A40, &unk_24F94D290);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v147 = v366;
      sub_24F924E28();
      sub_24E601704(v146, &qword_27F219A40, &unk_24F94D290);
      sub_24E60169C(v147, v144, &qword_27F219A30, &unk_24F9F8900);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v147, &qword_27F219A30, &unk_24F9F8900);
      sub_24F461E40(v142, type metadata accessor for LeaderboardsPageView);
      v109 = type metadata accessor for LeaderboardsListPageIntent;
      goto LABEL_3;
    }

    v148 = v326;
    if (swift_dynamicCast())
    {
      v149 = v329;
      sub_24F461D70(v148, v329, type metadata accessor for GameAchievementsListPageIntent);
      v150 = v321;
      sub_24F461DD8(v149, v321, type metadata accessor for GameAchievementsListPageIntent);
      v151 = v333;
      v152 = v324;
      v153 = &v324[*(v333 + 28)];
      *v153 = swift_getKeyPath();
      v153[8] = 0;
      sub_24F461DD8(v150, v152, type metadata accessor for GameAchievementsListPageIntent);
      *(v152 + *(v151 + 20)) = v133;
      type metadata accessor for LocalPlayerProvider(0);

      sub_24F928F28();
      sub_24F461E40(v150, type metadata accessor for GameAchievementsListPageIntent);
      *(v152 + *(v151 + 24)) = v387;
      sub_24F461DD8(v152, v331, type metadata accessor for AchievementsPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219A88, type metadata accessor for LeaderboardsPageView, &unk_24F99CCBC);
      sub_24F457898(&qword_27F219AB0, type metadata accessor for AchievementsPageView, &unk_24F9D2588);
      v154 = v332;
      sub_24F924E28();
      sub_24E60169C(v154, v336, &qword_27F219AA8, &unk_24F9F8930);
      swift_storeEnumTagMultiPayload();
      sub_24E71278C();
      sub_24E712878();
      v155 = v337;
      sub_24F924E28();
      sub_24E601704(v154, &qword_27F219AA8, &unk_24F9F8930);
      sub_24E60169C(v155, v363, &qword_27F219A98, &unk_24F94D2B0);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v156 = v260;
      sub_24F924E28();
      sub_24E601704(v155, &qword_27F219A98, &unk_24F94D2B0);
      sub_24E60169C(v156, v369, &qword_27F219A40, &unk_24F94D290);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v157 = v366;
      sub_24F924E28();
      sub_24E601704(v156, &qword_27F219A40, &unk_24F94D290);
      sub_24E60169C(v157, v375, &qword_27F219A30, &unk_24F9F8900);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v157, &qword_27F219A30, &unk_24F9F8900);
      sub_24F461E40(v152, type metadata accessor for AchievementsPageView);
      v111 = v329;
      v110 = type metadata accessor for GameAchievementsListPageIntent;
      goto LABEL_8;
    }

    v158 = v322;
    if (swift_dynamicCast())
    {
      v107 = v315;
      sub_24F461D70(v158, v315, type metadata accessor for FriendsPlayingPageIntent);
      v159 = v316;
      sub_24F461DD8(v107, v316, type metadata accessor for FriendsPlayingPageIntent);
      *(v159 + *(v318 + 20)) = v133;
      sub_24F461DD8(v159, v319, type metadata accessor for FriendsPlayingPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219AC8, type metadata accessor for FriendsPlayingPageView, &unk_24F9D44F8);
      sub_24E712934();

      v160 = v320;
      sub_24F924E28();
      sub_24E60169C(v160, v336, &qword_27F219AC0, &unk_24F94D2C0);
      swift_storeEnumTagMultiPayload();
      sub_24E71278C();
      sub_24E712878();
      v161 = v337;
      sub_24F924E28();
      sub_24E601704(v160, &qword_27F219AC0, &unk_24F94D2C0);
      sub_24E60169C(v161, v363, &qword_27F219A98, &unk_24F94D2B0);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v162 = v260;
      sub_24F924E28();
      sub_24E601704(v161, &qword_27F219A98, &unk_24F94D2B0);
      sub_24E60169C(v162, v369, &qword_27F219A40, &unk_24F94D290);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v163 = v366;
      sub_24F924E28();
      sub_24E601704(v162, &qword_27F219A40, &unk_24F94D290);
      sub_24E60169C(v163, v375, &qword_27F219A30, &unk_24F9F8900);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v163, &qword_27F219A30, &unk_24F9F8900);
      sub_24F461E40(v159, type metadata accessor for FriendsPlayingPageView);
      v109 = type metadata accessor for FriendsPlayingPageIntent;
      goto LABEL_3;
    }

    if (swift_dynamicCast())
    {
      v164 = v390;
      LOBYTE(v381) = 1;
      *(&v381 + 1) = 0;
      sub_24F926F28();
      v165 = v387;
      v166 = *(&v387 + 1);
      LOBYTE(v387) = v164;
      *(&v387 + 1) = v133;
      LOBYTE(v388) = v165;
      *(&v388 + 1) = *(&v387 + 1);
      *(&v388 + 1) = v166;
      v167 = v388;
      v168 = v319;
      *v319 = v387;
      v168[1] = v167;
      swift_storeEnumTagMultiPayload();

      sub_24F461CB8(&v387, &v381);
      sub_24F457898(&qword_27F219AC8, type metadata accessor for FriendsPlayingPageView, &unk_24F9D44F8);
      sub_24E712934();
      v169 = v320;
      sub_24F924E28();
      v170 = v375;
      sub_24E60169C(v169, v336, &qword_27F219AC0, &unk_24F94D2C0);
      swift_storeEnumTagMultiPayload();
      sub_24E71278C();
      sub_24E712878();
      v171 = v337;
      sub_24F924E28();
      sub_24E601704(v169, &qword_27F219AC0, &unk_24F94D2C0);
      sub_24E60169C(v171, v363, &qword_27F219A98, &unk_24F94D2B0);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v172 = v260;
      sub_24F924E28();
      sub_24E601704(v171, &qword_27F219A98, &unk_24F94D2B0);
      sub_24E60169C(v172, v369, &qword_27F219A40, &unk_24F94D290);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v173 = v366;
      sub_24F924E28();
      sub_24E601704(v172, &qword_27F219A40, &unk_24F94D290);
      sub_24E60169C(v173, v170, &qword_27F219A30, &unk_24F9F8900);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24F461D14(&v387);
      v174 = v173;
      v175 = &qword_27F219A30;
      v176 = &unk_24F9F8900;
LABEL_20:
      sub_24E601704(v174, v175, v176);
      return __swift_destroy_boxed_opaque_existential_1(&v396);
    }

    v177 = v313;
    if (swift_dynamicCast())
    {
      v178 = v296;
      sub_24F461D70(v177, v296, type metadata accessor for GameDetailsMediaPreviewPageIntent);
      v179 = v299;
      v180 = v297;
      sub_24F461DD8(v178, &v297[*(v299 + 20)], type metadata accessor for GameDetailsMediaPreviewPageIntent);
      type metadata accessor for GameMediaPreviewPlatformOptionProvider(0);
      v181 = v133;
      v182 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D550, &qword_24F994EE8);
      swift_allocObject();
      *(v182 + 16) = sub_24F9280D8();
      *(v182 + 24) = 0;
      sub_24F91FDB8();
      v381 = v182;
      sub_24F926F28();
      v183 = *(&v387 + 1);
      *v180 = v387;
      v180[1] = v183;
      *(v180 + *(v179 + 24)) = v181;
      sub_24F461DD8(v180, v301, type metadata accessor for GameDetailsMediaPreviewPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219B08, type metadata accessor for GameDetailsMediaPreviewPageView, &unk_24F970020);
      sub_24F457898(&qword_27F219B10, type metadata accessor for PlayNowPageView, &unk_24FA278D4);

      v184 = v302;
      sub_24F924E28();
      sub_24E60169C(v184, v306, &qword_27F219B00, &unk_24F9F8950);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B20, &unk_24F94D2E0);
      sub_24E712AA0();
      sub_24E712B8C();
      v185 = v307;
      sub_24F924E28();
      sub_24E601704(v184, &qword_27F219B00, &unk_24F9F8950);
      sub_24E60169C(v185, v310, &qword_27F219AF0, &unk_24F94D2D0);
      swift_storeEnumTagMultiPayload();
      sub_24E712A14();
      sub_24E712CC0();
      v186 = v312;
      sub_24F924E28();
      sub_24E601704(v185, &qword_27F219AF0, &unk_24F94D2D0);
      sub_24E60169C(v186, v369, &qword_27F219AE0, &unk_24F9F8940);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v187 = v366;
      sub_24F924E28();
      sub_24E601704(v186, &qword_27F219AE0, &unk_24F9F8940);
      sub_24E60169C(v187, v375, &qword_27F219A30, &unk_24F9F8900);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v187, &qword_27F219A30, &unk_24F9F8900);
      sub_24F461E40(v180, type metadata accessor for GameDetailsMediaPreviewPageView);
      v188 = type metadata accessor for GameDetailsMediaPreviewPageIntent;
    }

    else
    {
      v189 = v294;
      v190 = v295;
      if (swift_dynamicCast())
      {
        v191 = v298;
        sub_24F461D70(v189, v298, type metadata accessor for PlayNowPageIntent);
        v192 = v292;
        sub_24F461DD8(v191, v292, type metadata accessor for PlayNowPageIntent);
        v193 = v293;
        sub_24F461DD8(v192, v293, type metadata accessor for PlayNowPageIntent);
        v194 = v303;
        *(v193 + *(v303 + 20)) = v133;
        v195 = v193 + *(v194 + 24);
        sub_24F461DD8(v192, v195, type metadata accessor for Player);
        v196 = *(v192 + v190[5]);
        v197 = v192 + v190[6];
        v198 = *v197;
        v199 = *(v197 + 8);
        v200 = v192 + v190[7];
        v201 = v375;
        v202 = *v200;
        v203 = *(v200 + 8);

        v378 = type metadata accessor for PlayNowPageIntent;
        sub_24F461E40(v192, type metadata accessor for PlayNowPageIntent);
        v204 = type metadata accessor for PlayNowFeedShelvesIntent(0);
        *(v195 + v204[5]) = v196;
        v205 = v195 + v204[6];
        *v205 = v198;
        *(v205 + 8) = v199;
        v206 = v195 + v204[7];
        *v206 = v202;
        *(v206 + 8) = v203;
        sub_24F461DD8(v193, v301, type metadata accessor for PlayNowPageView);
        swift_storeEnumTagMultiPayload();
        sub_24F457898(&qword_27F219B08, type metadata accessor for GameDetailsMediaPreviewPageView, &unk_24F970020);
        sub_24F457898(&qword_27F219B10, type metadata accessor for PlayNowPageView, &unk_24FA278D4);
        v207 = v302;
        sub_24F924E28();
        sub_24E60169C(v207, v306, &qword_27F219B00, &unk_24F9F8950);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B20, &unk_24F94D2E0);
        sub_24E712AA0();
        sub_24E712B8C();
        v208 = v307;
        sub_24F924E28();
        sub_24E601704(v207, &qword_27F219B00, &unk_24F9F8950);
        sub_24E60169C(v208, v310, &qword_27F219AF0, &unk_24F94D2D0);
        swift_storeEnumTagMultiPayload();
        sub_24E712A14();
        sub_24E712CC0();
        v209 = v312;
        sub_24F924E28();
        sub_24E601704(v208, &qword_27F219AF0, &unk_24F94D2D0);
        sub_24E60169C(v209, v369, &qword_27F219AE0, &unk_24F9F8940);
        swift_storeEnumTagMultiPayload();
        sub_24E712448();
        sub_24E712988();
        v210 = v366;
        sub_24F924E28();
        sub_24E601704(v209, &qword_27F219AE0, &unk_24F9F8940);
        sub_24E60169C(v210, v201, &qword_27F219A30, &unk_24F9F8900);
        swift_storeEnumTagMultiPayload();
        sub_24E7123BC();
        sub_24E712F10();
        sub_24F924E28();
        sub_24E601704(v210, &qword_27F219A30, &unk_24F9F8900);
        sub_24F461E40(v193, type metadata accessor for PlayNowPageView);
        v111 = v298;
        v110 = v378;
        goto LABEL_8;
      }

      if (swift_dynamicCast())
      {

        v381 = sub_24F53128C(v211);
        v382 = v212;
        v384 = 0;
        v383 = 0;
        v385 = 0;
        sub_24E712C18();
        sub_24E712C6C();

        sub_24F924E28();
        v213 = v389;
        v214 = v388;
        v215 = v306;
        *v306 = v387;
        v215[1] = v214;
        *(v215 + 32) = v213;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B20, &unk_24F94D2E0);
        sub_24E712AA0();
        sub_24E712B8C();
        v216 = v307;
        sub_24F924E28();
        sub_24E60169C(v216, v310, &qword_27F219AF0, &unk_24F94D2D0);
        swift_storeEnumTagMultiPayload();
        sub_24E712A14();
        sub_24E712CC0();
        v217 = v312;
        sub_24F924E28();
        sub_24E601704(v216, &qword_27F219AF0, &unk_24F94D2D0);
        sub_24E60169C(v217, v369, &qword_27F219AE0, &unk_24F9F8940);
        swift_storeEnumTagMultiPayload();
        sub_24E712448();
        sub_24E712988();
        v218 = v366;
        sub_24F924E28();
        sub_24E601704(v217, &qword_27F219AE0, &unk_24F9F8940);
        sub_24E60169C(v218, v375, &qword_27F219A30, &unk_24F9F8900);
        swift_storeEnumTagMultiPayload();
        sub_24E7123BC();
        sub_24E712F10();
        sub_24F924E28();

        v174 = v218;
        v175 = &qword_27F219A30;
        v176 = &unk_24F9F8900;
        goto LABEL_20;
      }

      if (swift_dynamicCast())
      {
        KeyPath = swift_getKeyPath();
        v381 = KeyPath;
        v382 = 0;
        v383 = 0;
        v384 = v133;
        v385 = 1;

        sub_24E9CC614(KeyPath, 0, 0);
        sub_24E712C18();
        sub_24E712C6C();

        sub_24F924E28();
        v220 = v389;
        v221 = v388;
        v222 = v306;
        *v306 = v387;
        v222[1] = v221;
        *(v222 + 32) = v220;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B20, &unk_24F94D2E0);
        sub_24E712AA0();
        sub_24E712B8C();
        v223 = v307;
        sub_24F924E28();
        sub_24E60169C(v223, v310, &qword_27F219AF0, &unk_24F94D2D0);
        swift_storeEnumTagMultiPayload();
        sub_24E712A14();
        sub_24E712CC0();
        v224 = v312;
        sub_24F924E28();
        sub_24E601704(v223, &qword_27F219AF0, &unk_24F94D2D0);
        sub_24E60169C(v224, v369, &qword_27F219AE0, &unk_24F9F8940);
        swift_storeEnumTagMultiPayload();
        sub_24E712448();
        sub_24E712988();
        v225 = v366;
        sub_24F924E28();
        sub_24E601704(v224, &qword_27F219AE0, &unk_24F9F8940);
        sub_24E60169C(v225, v375, &qword_27F219A30, &unk_24F9F8900);
        swift_storeEnumTagMultiPayload();
        sub_24E7123BC();
        sub_24E712F10();
        sub_24F924E28();
        sub_24E74C370(KeyPath, 0, 0);

        v174 = v225;
        v175 = &qword_27F219A30;
        v176 = &unk_24F9F8900;
        goto LABEL_20;
      }

      if (swift_dynamicCast())
      {
        v381 = [objc_allocWithZone(type metadata accessor for OverlayActiveCallPageViewModel(0)) init];
        sub_24F926F28();
        v226 = *(&v387 + 1);
        v227 = v282;
        *v282 = v387;
        *(v227 + 8) = v226;
        *(v227 + 24) = swift_getKeyPath();
        *(v227 + 32) = 0;
        *(v227 + 40) = 0;
        *(v227 + 48) = 0;
        *(v227 + 56) = 0;
        v228 = *(v284 + 32);
        *(v227 + v228) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
        swift_storeEnumTagMultiPayload();
        *(v227 + 16) = v133;
        sub_24F461DD8(v227, v285, type metadata accessor for OverlayActiveCallPageView);
        swift_storeEnumTagMultiPayload();
        sub_24F457898(&qword_27F219B58, type metadata accessor for OverlayActiveCallPageView, &unk_24F979148);
        sub_24F457898(&qword_27F219B60, type metadata accessor for AchievementsByGameView, &unk_24F9DD418);

        v229 = v286;
        sub_24F924E28();
        sub_24E60169C(v229, v290, &qword_27F219B50, &unk_24F94D2F0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B70, &unk_24F9F8970);
        sub_24E712D4C();
        sub_24E712E38();
        v230 = v291;
        sub_24F924E28();
        sub_24E601704(v229, &qword_27F219B50, &unk_24F94D2F0);
        sub_24E60169C(v230, v310, &qword_27F219B40, &unk_24F9F8960);
        swift_storeEnumTagMultiPayload();
        sub_24E712A14();
        sub_24E712CC0();
        v231 = v312;
        sub_24F924E28();
        sub_24E601704(v230, &qword_27F219B40, &unk_24F9F8960);
        sub_24E60169C(v231, v369, &qword_27F219AE0, &unk_24F9F8940);
        swift_storeEnumTagMultiPayload();
        sub_24E712448();
        sub_24E712988();
        v232 = v366;
        sub_24F924E28();
        sub_24E601704(v231, &qword_27F219AE0, &unk_24F9F8940);
        sub_24E60169C(v232, v375, &qword_27F219A30, &unk_24F9F8900);
        swift_storeEnumTagMultiPayload();
        sub_24E7123BC();
        sub_24E712F10();
        sub_24F924E28();
        sub_24E601704(v232, &qword_27F219A30, &unk_24F9F8900);
        v110 = type metadata accessor for OverlayActiveCallPageView;
        v111 = v227;
        goto LABEL_8;
      }

      v233 = v280;
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v243 = v273;
          sub_24F461D70(v278, v273, type metadata accessor for OverlaySocialPageIntent);
          v393 = v279;
          v394 = sub_24F457898(&qword_27F21D398, type metadata accessor for OverlaySocialPageIntent, &protocol conformance descriptor for OverlaySocialPageIntent);
          v244 = __swift_allocate_boxed_opaque_existential_1(&v392);
          sub_24F461DD8(v243, v244, type metadata accessor for OverlaySocialPageIntent);
          v390 = swift_getKeyPath();
          v391 = 0;
          v395 = v378;
          sub_24F461BF8(&v390, &v381);
          v386 = 0;
          sub_24E712EBC();

          sub_24F924E28();
          sub_24E60169C(&v387, v290, &qword_27F219B70, &unk_24F9F8970);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B70, &unk_24F9F8970);
          sub_24E712D4C();
          sub_24E712E38();
          v245 = v291;
          sub_24F924E28();
          sub_24E601704(&v387, &qword_27F219B70, &unk_24F9F8970);
          sub_24E60169C(v245, v310, &qword_27F219B40, &unk_24F9F8960);
          swift_storeEnumTagMultiPayload();
          sub_24E712A14();
          sub_24E712CC0();
          v246 = v312;
          sub_24F924E28();
          sub_24E601704(v245, &qword_27F219B40, &unk_24F9F8960);
          sub_24E60169C(v246, v369, &qword_27F219AE0, &unk_24F9F8940);
          swift_storeEnumTagMultiPayload();
          sub_24E712448();
          sub_24E712988();
          v247 = v366;
          sub_24F924E28();
          sub_24E601704(v246, &qword_27F219AE0, &unk_24F9F8940);
          sub_24E60169C(v247, v375, &qword_27F219A30, &unk_24F9F8900);
          swift_storeEnumTagMultiPayload();
          sub_24E7123BC();
          sub_24E712F10();
          sub_24F924E28();
          sub_24E601704(v247, &qword_27F219A30, &unk_24F9F8900);
          sub_24F461C54(&v390);
          v248 = type metadata accessor for OverlaySocialPageIntent;
        }

        else if (swift_dynamicCast())
        {
          v243 = v268;
          sub_24F461D70(v274, v268, type metadata accessor for OverlayNowPlayingPageIntent);
          v393 = v275;
          v394 = sub_24F457898(&qword_27F21D390, type metadata accessor for OverlayNowPlayingPageIntent, &protocol conformance descriptor for OverlayNowPlayingPageIntent);
          v249 = __swift_allocate_boxed_opaque_existential_1(&v392);
          sub_24F461DD8(v243, v249, type metadata accessor for OverlayNowPlayingPageIntent);
          v390 = swift_getKeyPath();
          v391 = 0;
          v395 = v378;
          sub_24F461BF8(&v390, &v381);
          v386 = 1;
          sub_24E712EBC();

          sub_24F924E28();
          sub_24E60169C(&v387, v290, &qword_27F219B70, &unk_24F9F8970);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B70, &unk_24F9F8970);
          sub_24E712D4C();
          sub_24E712E38();
          v250 = v291;
          sub_24F924E28();
          sub_24E601704(&v387, &qword_27F219B70, &unk_24F9F8970);
          sub_24E60169C(v250, v310, &qword_27F219B40, &unk_24F9F8960);
          swift_storeEnumTagMultiPayload();
          sub_24E712A14();
          sub_24E712CC0();
          v251 = v312;
          sub_24F924E28();
          sub_24E601704(v250, &qword_27F219B40, &unk_24F9F8960);
          sub_24E60169C(v251, v369, &qword_27F219AE0, &unk_24F9F8940);
          swift_storeEnumTagMultiPayload();
          sub_24E712448();
          sub_24E712988();
          v252 = v366;
          sub_24F924E28();
          sub_24E601704(v251, &qword_27F219AE0, &unk_24F9F8940);
          sub_24E60169C(v252, v375, &qword_27F219A30, &unk_24F9F8900);
          swift_storeEnumTagMultiPayload();
          sub_24E7123BC();
          sub_24E712F10();
          sub_24F924E28();
          sub_24E601704(v252, &qword_27F219A30, &unk_24F9F8900);
          sub_24F461C54(&v390);
          v248 = type metadata accessor for OverlayNowPlayingPageIntent;
        }

        else
        {
          if (!swift_dynamicCast())
          {
            sub_24E615E00(v377, &v387);
            v257 = v378;

            v258 = v264;
            sub_24F57BC34(&v387, v257, 1, v264);
            sub_24E60169C(v258, v269, &qword_27F215760, &unk_24F940B30);
            swift_storeEnumTagMultiPayload();
            sub_24F457898(&qword_27F219B90, type metadata accessor for SocialIntegrationContactsListPageView, &unk_24F978920);
            sub_24E602068(&qword_27F215758, &qword_27F215760, &unk_24F940B30, &unk_24FA0AFB0);
            v259 = v271;
            sub_24F924E28();
            sub_24E60169C(v259, v375, &qword_27F219B88, &unk_24F94D300);
            swift_storeEnumTagMultiPayload();
            sub_24E7123BC();
            sub_24E712F10();
            sub_24F924E28();
            sub_24E601704(v259, &qword_27F219B88, &unk_24F94D300);
            v174 = v258;
            v175 = &qword_27F215760;
            v176 = &unk_24F940B30;
            goto LABEL_20;
          }

          v243 = v262;
          sub_24F461D70(v272, v262, type metadata accessor for SocialIntegrationContactsListPageIntent);
          v253 = v261;
          sub_24F461DD8(v243, v261, type metadata accessor for SocialIntegrationContactsListPageIntent);
          v254 = v378;

          v255 = v263;
          sub_24EA54248(v253, v254, v263);
          sub_24F461DD8(v255, v269, type metadata accessor for SocialIntegrationContactsListPageView);
          swift_storeEnumTagMultiPayload();
          sub_24F457898(&qword_27F219B90, type metadata accessor for SocialIntegrationContactsListPageView, &unk_24F978920);
          sub_24E602068(&qword_27F215758, &qword_27F215760, &unk_24F940B30, &unk_24FA0AFB0);
          v256 = v271;
          sub_24F924E28();
          sub_24E60169C(v256, v375, &qword_27F219B88, &unk_24F94D300);
          swift_storeEnumTagMultiPayload();
          sub_24E7123BC();
          sub_24E712F10();
          sub_24F924E28();
          sub_24E601704(v256, &qword_27F219B88, &unk_24F94D300);
          sub_24F461E40(v255, type metadata accessor for SocialIntegrationContactsListPageView);
          v248 = type metadata accessor for SocialIntegrationContactsListPageIntent;
        }

        v110 = v248;
        v111 = v243;
        goto LABEL_8;
      }

      v178 = v276;
      sub_24F461D70(v233, v276, type metadata accessor for AchievementsPageIntent);
      v234 = v277;
      sub_24F461DD8(v178, v277, type metadata accessor for AchievementsPageIntent);
      v235 = v287;
      *(v234 + *(v287 + 20)) = v133;
      v236 = (v234 + *(v235 + 24));
      type metadata accessor for AchievementsByGameOptionProvider(0);
      v237 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215208, &qword_24F93F920);
      swift_allocObject();

      *(v237 + 16) = sub_24F9280D8();
      *(v237 + 24) = 0;
      sub_24F91FDB8();
      v381 = v237;
      sub_24F926F28();
      v238 = *(&v387 + 1);
      *v236 = v387;
      v236[1] = v238;
      sub_24F461DD8(v234, v285, type metadata accessor for AchievementsByGameView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219B58, type metadata accessor for OverlayActiveCallPageView, &unk_24F979148);
      sub_24F457898(&qword_27F219B60, type metadata accessor for AchievementsByGameView, &unk_24F9DD418);
      v239 = v286;
      sub_24F924E28();
      sub_24E60169C(v239, v290, &qword_27F219B50, &unk_24F94D2F0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B70, &unk_24F9F8970);
      sub_24E712D4C();
      sub_24E712E38();
      v240 = v291;
      sub_24F924E28();
      sub_24E601704(v239, &qword_27F219B50, &unk_24F94D2F0);
      sub_24E60169C(v240, v310, &qword_27F219B40, &unk_24F9F8960);
      swift_storeEnumTagMultiPayload();
      sub_24E712A14();
      sub_24E712CC0();
      v241 = v312;
      sub_24F924E28();
      sub_24E601704(v240, &qword_27F219B40, &unk_24F9F8960);
      sub_24E60169C(v241, v369, &qword_27F219AE0, &unk_24F9F8940);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v242 = v366;
      sub_24F924E28();
      sub_24E601704(v241, &qword_27F219AE0, &unk_24F9F8940);
      sub_24E60169C(v242, v375, &qword_27F219A30, &unk_24F9F8900);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v242, &qword_27F219A30, &unk_24F9F8900);
      sub_24F461E40(v234, type metadata accessor for AchievementsByGameView);
      v188 = type metadata accessor for AchievementsPageIntent;
    }

    v110 = v188;
    v111 = v178;
    goto LABEL_8;
  }

  v106 = v105;
  v107 = v102;
  sub_24F461D70(v106, v102, type metadata accessor for LibraryPageIntent);
  sub_24F461DD8(v102, v99, type metadata accessor for LibraryPageIntent);
  *&v99[*(v97 + 20)] = v378;
  sub_24F461DD8(v99, v89, type metadata accessor for LibraryPageView);
  swift_storeEnumTagMultiPayload();
  sub_24F457898(&qword_27F219A68, type metadata accessor for LibraryPageView, &unk_24F95DFFC);
  sub_24F457898(&qword_27F219A70, type metadata accessor for LeaderboardDetailsPageView, &unk_24FA362C0);

  sub_24F924E28();
  sub_24E60169C(v91, v371, &qword_27F219A60, &unk_24F94D2A0);
  swift_storeEnumTagMultiPayload();
  sub_24E712560();
  sub_24E71264C();
  sub_24F924E28();
  sub_24E601704(v91, &qword_27F219A60, &unk_24F94D2A0);
  sub_24E60169C(v93, v363, &qword_27F219A50, &unk_24F9F8910);
  swift_storeEnumTagMultiPayload();
  sub_24E7124D4();
  sub_24E712700();
  sub_24F924E28();
  sub_24E601704(v93, &qword_27F219A50, &unk_24F9F8910);
  sub_24E60169C(v95, v369, &qword_27F219A40, &unk_24F94D290);
  swift_storeEnumTagMultiPayload();
  sub_24E712448();
  sub_24E712988();
  v108 = v366;
  sub_24F924E28();
  sub_24E601704(v95, &qword_27F219A40, &unk_24F94D290);
  sub_24E60169C(v108, v375, &qword_27F219A30, &unk_24F9F8900);
  swift_storeEnumTagMultiPayload();
  sub_24E7123BC();
  sub_24E712F10();
  sub_24F924E28();
  sub_24E601704(v108, &qword_27F219A30, &unk_24F9F8900);
  sub_24F461E40(v99, type metadata accessor for LibraryPageView);
  v109 = type metadata accessor for LibraryPageIntent;
LABEL_3:
  v110 = v109;
  v111 = v107;
LABEL_8:
  sub_24F461E40(v111, v110);
  return __swift_destroy_boxed_opaque_existential_1(&v396);
}

uint64_t sub_24F4517C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244250, &qword_24F9FACC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D80, &qword_24FA19330);
  MEMORY[0x28223BE20](v25);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v13 = (a1 + *(type metadata accessor for AchievementDetails(0) + 44));
  v14 = v13[2];
  if (*v13 == 1 || v14 == 0)
  {
    (*(v5 + 56))(v9, 1, 1, v4);
    v16 = sub_24E71428C();
    v26 = &type metadata for PageToolbarItemGroupView;
    v27 = v16;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v9, v4, OpaqueTypeConformance2);
    sub_24E601704(v9, &qword_27F219D80, &qword_24FA19330);
  }

  else
  {
    type metadata accessor for LocalPlayerProvider(0);
    v24[3] = a2;

    sub_24F928F28();
    v18 = v26;
    type metadata accessor for ArcadeSubscription(0);
    sub_24F928F28();
    v19 = v32;
    v24[2] = v32;
    type metadata accessor for NetworkConnectionMonitor(0);
    sub_24F928F28();
    v24[0] = v31;
    v24[1] = v18;
    v26 = v18;
    v27 = v19;
    v28 = v31;
    v29 = 6;
    v30 = v14;
    v20 = sub_24E71428C();

    MEMORY[0x25304AA30](&v26, &type metadata for PageToolbarItemGroupView, v20);

    (*(v5 + 16))(v9, v7, v4);
    (*(v5 + 56))(v9, 0, 1, v4);
    v26 = &type metadata for PageToolbarItemGroupView;
    v27 = v20;
    v21 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v9, v4, v21);

    sub_24E601704(v9, &qword_27F219D80, &qword_24FA19330);
    (*(v5 + 8))(v7, v4);
  }

  v22 = sub_24E7141DC();
  MEMORY[0x25304AA30](v12, v25, v22);
  return sub_24E601704(v12, &qword_27F219D80, &qword_24FA19330);
}

unint64_t sub_24F451BA0(char a1)
{
  result = 0x7974706D65;
  switch(a1)
  {
    case 1:
      result = 0x6F53676E696D6F63;
      break;
    case 2:
      result = 0x6169726F74696465;
      break;
    case 3:
      result = 1701273968;
      break;
    case 4:
      result = 0x746E6F4365676170;
      break;
    case 5:
      result = 0x686372616573;
      break;
    case 6:
    case 14:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x7373654D646E6573;
      break;
    case 9:
      result = 0x504174726F706572;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
    case 16:
    case 17:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x45656C69666F7270;
      break;
    case 20:
      result = 0x7246657469766E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F451E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA42EA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24F451EF8(uint64_t a1)
{
  v2 = sub_24F45E79C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F451F34(uint64_t a1)
{
  v2 = sub_24F45E79C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F451F70()
{
  v1 = 0x614E646E65697266;
  v2 = 0x7261646E6F636573;
  if (*v0 != 2)
  {
    v2 = 0x7274654D65676170;
  }

  if (*v0)
  {
    v1 = 0x417972616D697270;
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

uint64_t sub_24F452010@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F460C74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F452038(uint64_t a1)
{
  v2 = sub_24F45E898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452074(uint64_t a1)
{
  v2 = sub_24F45E898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4520CC(uint64_t a1)
{
  v2 = sub_24F45EC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452108(uint64_t a1)
{
  v2 = sub_24F45EC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452144()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x444965676170;
    if (v1 != 1)
    {
      v5 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x697461676976616ELL;
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
    if (v1 != 5)
    {
      v2 = 0x7274654D65676170;
    }

    v3 = 0xD000000000000015;
    if (v1 == 3)
    {
      v3 = 1701080941;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F452234@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F460DF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F45225C(uint64_t a1)
{
  v2 = sub_24F45EA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452298(uint64_t a1)
{
  v2 = sub_24F45EA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4522D4()
{
  if (*v0)
  {
    return 0x666E497466617264;
  }

  else
  {
    return 0x6F666E4965736162;
  }
}

uint64_t sub_24F452318(uint64_t a1)
{
  v2 = sub_24F45EA3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452354(uint64_t a1)
{
  v2 = sub_24F45EA3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452398@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F46104C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4523CC(uint64_t a1)
{
  v2 = sub_24F45E6A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452408(uint64_t a1)
{
  v2 = sub_24F45E6A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452444(uint64_t a1)
{
  v2 = sub_24F45EFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452480(uint64_t a1)
{
  v2 = sub_24F45EFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4524BC()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x7274654D65676170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x417972616D697270;
  }
}

uint64_t sub_24F452538@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F4616F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F452560(uint64_t a1)
{
  v2 = sub_24F45E844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F45259C(uint64_t a1)
{
  v2 = sub_24F45E844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4525D8()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6449626174;
  }
}

uint64_t sub_24F452614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449626174 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA75720 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F4526F4(uint64_t a1)
{
  v2 = sub_24F45EE4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452730(uint64_t a1)
{
  v2 = sub_24F45EE4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F45276C(uint64_t a1)
{
  v2 = sub_24F45F044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4527A8(uint64_t a1)
{
  v2 = sub_24F45F044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4527E4()
{
  v1 = 0x4173736563637573;
  if (*v0 != 1)
  {
    v1 = 0x416572756C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65697069636572;
  }
}

uint64_t sub_24F45285C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F461820(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F452884(uint64_t a1)
{
  v2 = sub_24F45ECA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4528C0(uint64_t a1)
{
  v2 = sub_24F45ECA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E69 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F452994(uint64_t a1)
{
  v2 = sub_24F45E6F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4529D0(uint64_t a1)
{
  v2 = sub_24F45E6F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F666E4965736162 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x666E497466617264 && a2 == 0xE90000000000006FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F452AF0(uint64_t a1)
{
  v2 = sub_24F45E994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452B2C(uint64_t a1)
{
  v2 = sub_24F45E994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567615074616877 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F452C08(uint64_t a1)
{
  v2 = sub_24F45EDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452C44(uint64_t a1)
{
  v2 = sub_24F45EDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452C80(uint64_t a1)
{
  v2 = sub_24F45EDA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452CBC(uint64_t a1)
{
  v2 = sub_24F45EDA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000024FA756E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24F452DA8(uint64_t a1)
{
  v2 = sub_24F45EAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452DE4(uint64_t a1)
{
  v2 = sub_24F45EAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F452ED4(uint64_t a1)
{
  v2 = sub_24F45E7F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452F10(uint64_t a1)
{
  v2 = sub_24F45E7F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452F4C(uint64_t a1)
{
  v2 = sub_24F45E748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452F88(uint64_t a1)
{
  v2 = sub_24F45E748();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F452FC4()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_24F453000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x800000024FA75680 == a2;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA756A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F4530E0(uint64_t a1)
{
  v2 = sub_24F45E8EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F45311C(uint64_t a1)
{
  v2 = sub_24F45E8EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F453158(uint64_t a1)
{
  v2 = sub_24F45EB38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F453194(uint64_t a1)
{
  v2 = sub_24F45EB38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4531F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000024FA75700 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24F453284(uint64_t a1)
{
  v2 = sub_24F45ED50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4532C0(uint64_t a1)
{
  v2 = sub_24F45ED50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F453300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F453390(uint64_t a1)
{
  v2 = sub_24F45EBC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4533CC(uint64_t a1)
{
  v2 = sub_24F45EBC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlowDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v223 = a2;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C00, &qword_24F9F8BF0);
  v205 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v221 = &v165 - v3;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C08, &qword_24F9F8BF8);
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v218 = &v165 - v4;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C10, &qword_24F9F8C00);
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v220 = &v165 - v5;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C18, &qword_24F9F8C08);
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v229 = &v165 - v6;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C20, &qword_24F9F8C10);
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v228 = &v165 - v7;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C28, &qword_24F9F8C18);
  v207 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v219 = &v165 - v8;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C30, &qword_24F9F8C20);
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v217 = &v165 - v9;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C38, &qword_24F9F8C28);
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v216 = &v165 - v10;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C40, &qword_24F9F8C30);
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v215 = &v165 - v11;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C48, &qword_24F9F8C38);
  v224 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v222 = &v165 - v12;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C50, &qword_24F9F8C40);
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v214 = &v165 - v13;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C58, &qword_24F9F8C48);
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v213 = &v165 - v14;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C60, &qword_24F9F8C50);
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v212 = &v165 - v15;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C68, &qword_24F9F8C58);
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v211 = &v165 - v16;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C70, &qword_24F9F8C60);
  v186 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v226 = &v165 - v17;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C78, &qword_24F9F8C68);
  v179 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v225 = &v165 - v18;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C80, &qword_24F9F8C70);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v210 = &v165 - v19;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C88, &qword_24F9F8C78);
  v172 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v209 = &v165 - v20;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C90, &qword_24F9F8C80);
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v208 = &v165 - v21;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C98, &qword_24F9F8C88);
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v23 = &v165 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243CA0, &qword_24F9F8C90);
  v169 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v165 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243CA8, &qword_24F9F8C98);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v165 - v29;
  v31 = a1[3];
  v230 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_24F45E6A0();
  v32 = v231;
  sub_24F92D108();
  if (v32)
  {
LABEL_8:
    v48 = v230;
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v166 = v26;
  v165 = v24;
  v167 = v23;
  v33 = v225;
  v34 = v226;
  v36 = v227;
  v35 = v228;
  v37 = v229;
  v168 = 0;
  v231 = v28;
  v38 = sub_24F92CC78();
  v39 = (2 * *(v38 + 16)) | 1;
  v232 = v38;
  v233 = v38 + 32;
  v234 = 0;
  v235 = v39;
  v40 = sub_24E6413C0();
  if (v234 != v235 >> 1)
  {
LABEL_6:
    v44 = sub_24F92C918();
    swift_allocError();
    v45 = v27;
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v47 = &type metadata for FlowDestination;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v44 - 8) + 104))(v47, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    (*(v231 + 8))(v30, v45);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v40)
  {
    case 0:
      v236 = 0;
      sub_24F45F044();
      v41 = v166;
      v42 = v168;
      sub_24F92CBA8();
      if (v42)
      {
        goto LABEL_51;
      }

      (*(v169 + 8))(v41, v165);
      (*(v231 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v43 = 0x9000000000000000;
      goto LABEL_56;
    case 1:
      v236 = 1;
      sub_24F45EFF0();
      v107 = v167;
      v108 = v168;
      sub_24F92CBA8();
      if (v108)
      {
        goto LABEL_51;
      }

      v109 = v27;
      v43 = 0x9000000000000008;
      (*(v170 + 8))(v107, v171);
      (*(v231 + 8))(v30, v109);
      goto LABEL_32;
    case 2:
      v236 = 2;
      sub_24F45EE4C();
      v83 = v208;
      v84 = v168;
      sub_24F92CBA8();
      if (v84)
      {
        goto LABEL_51;
      }

      v85 = v27;
      v43 = swift_allocObject();
      v236 = 0;
      v86 = v174;
      v87 = sub_24F92CC28();
      v88 = v231;
      *(v43 + 16) = v87;
      *(v43 + 24) = v156;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227168, &qword_24F9F8CA0);
      v236 = 1;
      sub_24F45EEE0();
      sub_24F92CC68();
      (*(v173 + 8))(v83, v86);
      (*(v88 + 8))(v30, v85);
LABEL_32:
      swift_unknownObjectRelease();
      goto LABEL_56;
    case 3:
      v236 = 3;
      sub_24F45EDF8();
      v96 = v209;
      v97 = v168;
      sub_24F92CBA8();
      if (v97)
      {
        goto LABEL_51;
      }

      v98 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215768, "D5\r");
      sub_24E602068(&qword_27F243DB0, &qword_27F215768, "D5\r", MEMORY[0x277D21AB0]);
      v99 = v175;
      sub_24F92CC68();
      v100 = v231;
      (*(v172 + 8))(v96, v99);
      (*(v100 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v43 = v98 | 4;
      goto LABEL_54;
    case 4:
      v236 = 4;
      sub_24F45EDA4();
      v65 = v210;
      v66 = v168;
      sub_24F92CBA8();
      if (v66)
      {
        goto LABEL_51;
      }

      v67 = v27;
      v68 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BF8, &unk_24F9F8BE0);
      sub_24E602068(&qword_27F243DA0, &qword_27F243BF8, &unk_24F9F8BE0, MEMORY[0x277D21AB0]);
      v69 = v177;
      sub_24F92CC68();
      v70 = v231;
      (*(v176 + 8))(v65, v69);
      (*(v70 + 8))(v30, v67);
      swift_unknownObjectRelease();
      v43 = v68 | 0x1000000000000000;
      goto LABEL_54;
    case 5:
      v236 = 5;
      sub_24F45ED50();
      v115 = v168;
      sub_24F92CBA8();
      if (v115)
      {
        goto LABEL_51;
      }

      v116 = v27;
      v103 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227178, &qword_24F97DAA0);
      sub_24E602068(&qword_27F243D90, &qword_27F227178, &qword_24F97DAA0, MEMORY[0x277D21AB0]);
      v117 = v178;
      sub_24F92CC68();
      v118 = v231;
      (*(v179 + 8))(v33, v117);
      (*(v118 + 8))(v30, v116);
      swift_unknownObjectRelease();
      v106 = 0x1000000000000004;
      goto LABEL_39;
    case 6:
      v236 = 6;
      sub_24F45ECA4();
      v124 = v168;
      sub_24F92CBA8();
      if (v124)
      {
        goto LABEL_51;
      }

      v125 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      v236 = 0;
      sub_24E7C1498();
      sub_24F92CC18();
      v126 = v231;
      v229 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
      v236 = 1;
      sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FE8]);
      sub_24F92CC68();
      v236 = 2;
      sub_24F92CC68();
      (*(v186 + 8))(v34, v36);
      (*(v126 + 8))(v30, v229);
      swift_unknownObjectRelease();
      v43 = v125 | 0x2000000000000000;
      goto LABEL_56;
    case 7:
      v236 = 7;
      sub_24F45EC50();
      v101 = v211;
      v102 = v168;
      sub_24F92CBA8();
      if (v102)
      {
        goto LABEL_51;
      }

      v103 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      sub_24E7C1498();
      v104 = v181;
      sub_24F92CC18();
      v105 = v231;
      (*(v180 + 8))(v101, v104);
      (*(v105 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v106 = 0x2000000000000004;
      goto LABEL_39;
    case 8:
      v236 = 8;
      sub_24F45EBC4();
      v138 = v212;
      v139 = v168;
      sub_24F92CBA8();
      if (v139)
      {
        goto LABEL_51;
      }

      v140 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      sub_24E7C1498();
      v141 = v183;
      sub_24F92CC68();
      v142 = v231;
      (*(v182 + 8))(v138, v141);
      (*(v142 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v43 = v140 | 0x3000000000000000;
      goto LABEL_54;
    case 9:
      v236 = 9;
      sub_24F45EB38();
      v76 = v213;
      v77 = v168;
      sub_24F92CBA8();
      if (v77)
      {
        goto LABEL_51;
      }

      v78 = v30;
      v79 = swift_allocObject();
      v80 = v185;
      v81 = sub_24F92CC28();
      v82 = v231;
      v151 = v81;
      v152 = v76;
      v153 = v27;
      v155 = v154;
      (*(v184 + 8))(v152, v80);
      (*(v82 + 8))(v78, v153);
      swift_unknownObjectRelease();
      *(v79 + 16) = v151;
      *(v79 + 24) = v155;
      v43 = v79 | 0x3000000000000004;
      goto LABEL_56;
    case 10:
      v236 = 10;
      sub_24F45EAE4();
      v132 = v214;
      v133 = v168;
      sub_24F92CBA8();
      if (v133)
      {
        goto LABEL_51;
      }

      v134 = v27;
      v135 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BF0, &qword_24F9F8BD8);
      sub_24E602068(&qword_27F243D60, &qword_27F243BF0, &qword_24F9F8BD8, MEMORY[0x277D21AB0]);
      v136 = v188;
      sub_24F92CC68();
      v137 = v231;
      (*(v187 + 8))(v132, v136);
      (*(v137 + 8))(v30, v134);
      swift_unknownObjectRelease();
      v43 = v135 | 0x4000000000000000;
      goto LABEL_54;
    case 11:
      v236 = 11;
      sub_24F45EA90();
      v59 = v168;
      sub_24F92CBA8();
      if (v59)
      {
        goto LABEL_51;
      }

      v227 = v30;
      v229 = v27;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB68, &qword_24F961B40);
      v61 = swift_allocBox();
      v63 = v62;
      v236 = 0;
      v64 = sub_24F92CC28();
      v228 = v61;
      v148 = v60[12];
      *v63 = v64;
      v63[1] = v149;
      v150 = sub_24F92A708();
      v236 = 1;
      sub_24F457898(&qword_27F21F8C0, MEMORY[0x277D22408], MEMORY[0x277D22420]);
      sub_24F92CC68();
      v225 = v150;
      v226 = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      v236 = 2;
      sub_24E7C1498();
      sub_24F92CC68();
      v163 = v60[20];
      type metadata accessor for ChallengesPlayerPickerMode(0);
      v236 = 3;
      sub_24F457898(&qword_27F243D50, type metadata accessor for ChallengesPlayerPickerMode, &protocol conformance descriptor for ChallengesPlayerPickerMode);
      v221 = v163;
      sub_24F92CC68();
      v164 = v60[24];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
      v236 = 4;
      sub_24E602068(&qword_27F243830, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AB0]);
      v220 = v164;
      sub_24F92CC68();
      v236 = 5;
      sub_24F92CC68();
      sub_24F928818();
      v236 = 6;
      sub_24F457898(&qword_27F21F8C8, MEMORY[0x277D21BF8], MEMORY[0x277D21C08]);
      sub_24F92CC68();
      (*(v224 + 8))(v222, v206);
      (*(v231 + 8))(v227, v229);
      swift_unknownObjectRelease();
      v43 = v228 | 0x4000000000000004;
      v48 = v230;
      goto LABEL_57;
    case 12:
      v236 = 12;
      sub_24F45EA3C();
      v71 = v215;
      v72 = v168;
      sub_24F92CBA8();
      if (v72)
      {
        goto LABEL_51;
      }

      v229 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BE8, &qword_24F9F8B20);
      v73 = swift_allocBox();
      type metadata accessor for ChallengesReviewBaseInfo(0);
      v236 = 0;
      sub_24F457898(&qword_27F243D38, type metadata accessor for ChallengesReviewBaseInfo, &protocol conformance descriptor for ChallengesReviewBaseInfo);
      v74 = v190;
      sub_24F92CC68();
      v75 = v231;
      v228 = v73;
      type metadata accessor for ChallengeDefinitionDraftInfo(0);
      v236 = 1;
      sub_24F457898(&qword_27F243D40, type metadata accessor for ChallengeDefinitionDraftInfo, &protocol conformance descriptor for ChallengeDefinitionDraftInfo);
      sub_24F92CC18();
      (*(v189 + 8))(v71, v74);
      (*(v75 + 8))(v30, v229);
      swift_unknownObjectRelease();
      v161 = 0x5000000000000000;
      goto LABEL_55;
    case 13:
      v236 = 13;
      sub_24F45E994();
      v119 = v216;
      v120 = v168;
      sub_24F92CBA8();
      if (v120)
      {
        goto LABEL_51;
      }

      v229 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BE0, &qword_24F9F8AE8);
      v121 = swift_allocBox();
      type metadata accessor for MultiplayerActivityReviewBaseInfo(0);
      v236 = 0;
      sub_24F457898(&qword_27F243D20, type metadata accessor for MultiplayerActivityReviewBaseInfo, &protocol conformance descriptor for MultiplayerActivityReviewBaseInfo);
      v122 = v192;
      sub_24F92CC68();
      v123 = v231;
      v228 = v121;
      v236 = 1;
      sub_24F45E9E8();
      sub_24F92CC68();
      (*(v191 + 8))(v119, v122);
      (*(v123 + 8))(v30, v229);
      swift_unknownObjectRelease();
      v161 = 0x5000000000000004;
LABEL_55:
      v43 = v228 | v161;
      goto LABEL_56;
    case 14:
      v236 = 14;
      sub_24F45E8EC();
      v54 = v217;
      v55 = v168;
      sub_24F92CBA8();
      if (v55)
      {
        goto LABEL_51;
      }

      v229 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BD8, &qword_24F9F8AE0);
      v56 = swift_allocBox();
      type metadata accessor for RecordingAssociation(0);
      v236 = 0;
      sub_24F457898(&qword_27F243D08, type metadata accessor for RecordingAssociation, &protocol conformance descriptor for RecordingAssociation);
      v57 = v194;
      sub_24F92CC68();
      v58 = v231;
      v228 = v56;
      v236 = 1;
      sub_24F45E940();
      sub_24F92CC68();
      (*(v193 + 8))(v54, v57);
      (*(v58 + 8))(v30, v229);
      swift_unknownObjectRelease();
      v43 = v228 | 0x6000000000000000;
      goto LABEL_56;
    case 15:
      v236 = 15;
      sub_24F45E898();
      v89 = v219;
      v90 = v168;
      sub_24F92CBA8();
      if (v90)
      {
        goto LABEL_51;
      }

      v229 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BD0, &qword_24F9F8AD8);
      v91 = swift_allocBox();
      v93 = v92;
      v236 = 0;
      v94 = v201;
      v95 = sub_24F92CBC8();
      v228 = v91;
      *v93 = v95;
      v93[1] = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
      v236 = 1;
      sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FE8]);
      sub_24F92CC68();
      v236 = 2;
      sub_24F92CC68();
      sub_24F928818();
      v236 = 3;
      sub_24F457898(&qword_27F21F8C8, MEMORY[0x277D21BF8], MEMORY[0x277D21C08]);
      sub_24F92CC68();
      (*(v207 + 8))(v89, v94);
      (*(v231 + 8))(v30, v229);
      swift_unknownObjectRelease();
      v43 = v228 | 0x6000000000000004;
      v48 = v230;
      goto LABEL_57;
    case 16:
      v236 = 16;
      sub_24F45E844();
      v50 = v168;
      sub_24F92CBA8();
      if (v50)
      {
        goto LABEL_51;
      }

      v227 = v30;
      v229 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BC8, &qword_24F9F8AD0);
      v51 = swift_allocBox();
      v52 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
      v236 = 0;
      sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FE8]);
      v53 = v203;
      sub_24F92CC68();
      v226 = v51;
      v236 = 1;
      sub_24F92CC68();
      sub_24F928818();
      v236 = 2;
      sub_24F457898(&qword_27F21F8C8, MEMORY[0x277D21BF8], MEMORY[0x277D21C08]);
      sub_24F92CC68();
      v158 = v231;
      v159 = v53;
      v160 = v226;
      (*(v202 + 8))(v52, v159);
      (*(v158 + 8))(v227, v229);
      swift_unknownObjectRelease();
      v43 = v160 | 0x7000000000000000;
      v48 = v230;
      v162 = v223;
      goto LABEL_58;
    case 17:
      v236 = 17;
      sub_24F45E7F0();
      v110 = v168;
      sub_24F92CBA8();
      if (v110)
      {
        goto LABEL_51;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BC0, &qword_24F9F89C0);
      v103 = swift_allocBox();
      type metadata accessor for PlayTogetherWelcomePage(0);
      sub_24F457898(&qword_27F243CE8, type metadata accessor for PlayTogetherWelcomePage, &protocol conformance descriptor for PlayTogetherWelcomePage);
      v111 = v198;
      sub_24F92CC68();
      v112 = v231;
      (*(v197 + 8))(v37, v111);
      (*(v112 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v106 = 0x7000000000000004;
LABEL_39:
      v43 = v103 | v106;
      goto LABEL_54;
    case 18:
      v236 = 18;
      sub_24F45E79C();
      v127 = v220;
      v128 = v168;
      sub_24F92CBA8();
      if (v128)
      {
        goto LABEL_51;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BB8, &qword_24F9F89B8);
      v129 = swift_allocBox();
      type metadata accessor for AchievementDetails(0);
      sub_24F457898(&qword_27F243CD8, type metadata accessor for AchievementDetails, &protocol conformance descriptor for AchievementDetails);
      v130 = v200;
      sub_24F92CC68();
      v131 = v231;
      (*(v199 + 8))(v127, v130);
      (*(v131 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v43 = v129 | 0x8000000000000000;
LABEL_54:
      v48 = v230;
      v162 = v223;
      goto LABEL_58;
    case 19:
      v236 = 19;
      sub_24F45E748();
      v143 = v218;
      v144 = v168;
      sub_24F92CBA8();
      if (v144)
      {
LABEL_51:
        (*(v231 + 8))(v30, v27);
        goto LABEL_7;
      }

      (*(v195 + 8))(v143, v196);
      (*(v231 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v43 = 0x9000000000000010;
LABEL_56:
      v48 = v230;
LABEL_57:
      v162 = v223;
      goto LABEL_58;
    case 20:
      v236 = 20;
      sub_24F45E6F4();
      v113 = v221;
      v114 = v168;
      sub_24F92CBA8();
      if (v114)
      {
        (*(v231 + 8))(v30, v27);
        swift_unknownObjectRelease();
        v48 = v230;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BB0, &qword_24F9F8898);
        v145 = swift_allocBox();
        type metadata accessor for InviteFriendsPageIntent(0);
        sub_24F457898(&qword_27F243CC0, type metadata accessor for InviteFriendsPageIntent, &protocol conformance descriptor for InviteFriendsPageIntent);
        v146 = v204;
        sub_24F92CC68();
        v147 = v231;
        (*(v205 + 8))(v113, v146);
        (*(v147 + 8))(v30, v27);
        swift_unknownObjectRelease();
        v43 = v145 | 0x8000000000000004;
        v48 = v230;
        v162 = v223;
LABEL_58:
        *v162 = v43;
      }

      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}