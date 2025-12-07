uint64_t sub_24F36D82C()
{
  v1 = type metadata accessor for ChallengesHubHeaderShelfIntent(0);
  v2 = *(*(v1 - 8) + 80);

  v35 = v0 + ((v2 + 40) & ~v2);
  v36 = v1;
  v3 = v35 + *(v1 + 20);

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v37 = *(v6 - 8);
  v38 = *(v37 + 8);
  v38(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle(0);
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v37 + 48))(v7 + v11, 1, v6))
      {
        v38(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v37 + 48))(v12 + v13, 1, v6))
      {
        v38(v12 + v13, v6);
      }
    }
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game(0);
    v38(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v37 + 48))(v14 + v17, 1, v6))
    {
      v38(v14 + v17, v6);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game(0);
    v38(v21 + v23[18], v6);
    v24 = v23[19];
    if (!(*(v37 + 48))(v21 + v24, 1, v6))
    {
      v38(v21 + v24, v6);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  v28 = v35 + *(v36 + 36);
  v29 = type metadata accessor for Game(0);
  if (!(*(*(v29 - 1) + 48))(v28, 1, v29))
  {

    v38(v28 + v29[18], v6);
    v30 = v29[19];
    if (!(*(v37 + 48))(v28 + v30, 1, v6))
    {
      v38(v28 + v30, v6);
    }

    v31 = v29[21];
    v32 = sub_24F920818();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v28 + v31, 1, v32))
    {
      (*(v33 + 8))(v28 + v31, v32);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F36E01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesHubHeaderShelfIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24F36E080(uint64_t a1)
{
  v3 = *(type metadata accessor for ChallengesHubHeaderShelfIntent(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_24F36BCB8(a1, v4, v5, v6, v7);
}

uint64_t sub_24F36E0F8()
{
  v1 = type metadata accessor for ChallengesHubHeaderShelfIntent(0);
  v2 = *(*(v1 - 8) + 80);
  v43 = *(*(v1 - 8) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v4 = *(v3 - 8);
  v42 = *(v4 + 80);
  swift_unknownObjectRelease();

  v41 = v1;
  v5 = v0 + ((v2 + 32) & ~v2) + *(v1 + 20);

  v6 = type metadata accessor for Player(0);
  v7 = v6[6];
  v8 = sub_24F9289E8();
  v45 = *(v8 - 8);
  v44 = *(v45 + 8);
  v44(v5 + v7, v8);

  if (*(v5 + v6[9] + 8) != 1)
  {
  }

  v9 = v5 + v6[13];
  v10 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v37 = v4;
    v39 = v3;
    v11 = type metadata accessor for CallProviderConversationHandle(0);
    v12 = *(*(v11 - 8) + 48);
    if (!v12(v9, 1, v11))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v45 + 48))(v9 + v13, 1, v8))
      {
        v44(v9 + v13, v8);
      }
    }

    v14 = v9 + *(v10 + 20);
    if (!v12(v14, 1, v11))
    {

      v15 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v45 + 48))(v14 + v15, 1, v8))
      {
        v44(v14 + v15, v8);
      }
    }

    v4 = v37;
    v3 = v39;
  }

  if (*(v5 + v6[15] + 8))
  {
  }

  v16 = v5 + v6[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
  {
    v38 = v4;
    v40 = v3;

    v18 = type metadata accessor for Game(0);
    v44(v16 + v18[18], v8);
    v19 = v18[19];
    if (!(*(v45 + 48))(v16 + v19, 1, v8))
    {
      v44(v16 + v19, v8);
    }

    v20 = v18[21];
    v21 = sub_24F920818();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }

    v4 = v38;
    v3 = v40;
  }

  v23 = v5 + v6[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
  {

    v25 = type metadata accessor for Game(0);
    v44(v23 + v25[18], v8);
    v26 = v25[19];
    if (!(*(v45 + 48))(v23 + v26, 1, v8))
    {
      v44(v23 + v26, v8);
    }

    v27 = v25[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }
  }

  v30 = v0 + ((v2 + 32) & ~v2) + *(v41 + 36);
  v31 = type metadata accessor for Game(0);
  if (!(*(*(v31 - 1) + 48))(v30, 1, v31))
  {

    v44(v30 + v31[18], v8);
    v32 = v31[19];
    if (!(*(v45 + 48))(v30 + v32, 1, v8))
    {
      v44(v30 + v32, v8);
    }

    v33 = v31[21];
    v34 = sub_24F920818();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v30 + v33, 1, v34))
    {
      (*(v35 + 8))(v30 + v33, v34);
    }
  }

  (*(v4 + 8))(v0 + ((((v43 + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + v42 + 8) & ~v42), v3);

  return swift_deallocObject();
}

uint64_t sub_24F36E9D0(uint64_t a1)
{
  v3 = *(type metadata accessor for ChallengesHubHeaderShelfIntent(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v8);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_24E614970;

  return sub_24F36C0C8(a1, v11, v12, v1 + v4, v9, v1 + v7, v10, v13);
}

uint64_t sub_24F36EB9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F36EBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F36EC4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F36ECAC()
{
  v1 = type metadata accessor for ChallengesHubHeaderShelfIntent(0);
  v2 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v35 = v0 + ((v2 + 56) & ~v2);
  v36 = v1;
  v3 = v35 + *(v1 + 20);

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v37 = *(v6 - 8);
  v38 = *(v37 + 8);
  v38(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle(0);
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v37 + 48))(v7 + v11, 1, v6))
      {
        v38(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v37 + 48))(v12 + v13, 1, v6))
      {
        v38(v12 + v13, v6);
      }
    }
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game(0);
    v38(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v37 + 48))(v14 + v17, 1, v6))
    {
      v38(v14 + v17, v6);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game(0);
    v38(v21 + v23[18], v6);
    v24 = v23[19];
    if (!(*(v37 + 48))(v21 + v24, 1, v6))
    {
      v38(v21 + v24, v6);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  v28 = v35 + *(v36 + 36);
  v29 = type metadata accessor for Game(0);
  if (!(*(*(v29 - 1) + 48))(v28, 1, v29))
  {

    v38(v28 + v29[18], v6);
    v30 = v29[19];
    if (!(*(v37 + 48))(v28 + v30, 1, v6))
    {
      v38(v28 + v30, v6);
    }

    v31 = v29[21];
    v32 = sub_24F920818();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v28 + v31, 1, v32))
    {
      (*(v33 + 8))(v28 + v31, v32);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F36F4A4(uint64_t a1)
{
  v4 = *(type metadata accessor for ChallengesHubHeaderShelfIntent(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24F36BE94(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24F36F5B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v35 = a8;
  v36 = a7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v35 - v19;
  *(a9 + 24) = xmmword_24F9CA410;
  *(a9 + 40) = 0x403E000000000000;
  v22 = type metadata accessor for Marquee(0, a10, a11, v21);
  v23 = a9 + v22[15];
  *v23 = sub_24F36F810(0, 1);
  *(v23 + 8) = v24 & 1;
  *(v23 + 16) = v25;
  v26 = (a9 + v22[16]);
  v27 = sub_24E6102E8(MEMORY[0x277D84F90]);
  *v26 = sub_24F36F868(v27);
  v26[1] = v28;
  v29 = sub_24F91F648();
  (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
  sub_24F36F8B0(v20);
  v30 = v22[18];
  *(a9 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v31 = v22[19];
  *(a9 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  v32 = swift_storeEnumTagMultiPayload();
  if (a2)
  {
    v32 = sub_24F924C88();
    a1 = v32;
  }

  *a9 = a1;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4 & 1;
  v33 = a5;
  if (a6)
  {
    v33 = 8.0;
  }

  *(a9 + 48) = v33;
  return v36(v32);
}

uint64_t sub_24F36F810(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFA8, &qword_24F958530);
  sub_24F926F28();
  return v3;
}

uint64_t sub_24F36F868(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239808, &qword_24F9CA888);
  sub_24F926F28();
  return v2;
}

uint64_t sub_24F36F8B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3);
  sub_24E60169C(a1, &v6 - v4, &unk_27F22EC30, &qword_24F939880);
  sub_24F926F28();
  return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
}

uint64_t sub_24F36F978(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D050, &qword_24F9587F0);
  sub_24F926F38();
  return v2;
}

uint64_t sub_24F36F9E4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D050, &qword_24F9587F0);
  sub_24F926F58();
  return v2;
}

uint64_t sub_24F36FA54(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240638, &qword_24F9EAF08);
  sub_24F926F38();
  return v2;
}

uint64_t sub_24F36FAAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24E60169C(a1, &v5 - v3, &unk_27F22EC30, &qword_24F939880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);
  sub_24F926F48();
  return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
}

uint64_t sub_24F36FB84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_24E60169C(v2 + *(a1 + 72), &v15 - v10, &qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923F78();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t Marquee.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F925468();
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[2] = v10;
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  sub_24F370140(a1);
  (*(v4 + 16))(v6, v2, a1);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = *(a1 + 16);
  (*(v4 + 32))(v15 + v14, v6, a1);
  (*(v8 + 16))(v10, v13, v7);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_24F3706E8;
  *(v16 + 24) = v15;
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240500, &qword_24F9EAD78);
  v34[0] = sub_24F372D58();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240508, &qword_24F9EAD80);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240510, &qword_24F9EAD88);
  v19 = sub_24E602068(&qword_27F240518, &qword_27F240508, &qword_24F9EAD80, MEMORY[0x277CE1198]);
  v20 = sub_24E602068(&qword_27F240520, &qword_27F240510, &qword_24F9EAD88, MEMORY[0x277CDD818]);
  v38 = v17;
  v39 = v18;
  v40 = v19;
  v41 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v37;
  v22 = v35;
  sub_24F923828();
  (*(v36 + 8))(v13, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240528, &qword_24F9EAD90);
  v24 = v21;
  sub_24F371E10(a1, v21 + *(v23 + 36));
  v25 = sub_24F36F9E4(a1);
  v27 = v26;
  v29 = v28;
  LOBYTE(v13) = v30;
  v31 = *v2;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F240530, &qword_24F9EAD98);
  v33 = v24 + *(result + 36);
  *v33 = v25;
  *(v33 + 8) = v27;
  *(v33 + 16) = v29;
  *(v33 + 24) = v13 & 1;
  *(v33 + 32) = v31;
  return result;
}

uint64_t sub_24F370140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_24F923418();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  if (sub_24F3723EC(a1))
  {
    sub_24F372460(a1, v11);
    (*(v6 + 104))(v8, *MEMORY[0x277CDD6B0], v5);
    v12 = sub_24F923408();
    v13 = *(v6 + 8);
    v13(v8, v5);
    v13(v11, v5);
    if ((v12 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);
      sub_24F926F38();
      v14 = sub_24F91F648();
      (*(*(v14 - 8) + 48))(v4, 1, v14);
      sub_24E601704(v4, &unk_27F22EC30, &qword_24F939880);
    }
  }

  return sub_24F925458();
}

uint64_t sub_24F370388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v9 = type metadata accessor for Marquee(0, a3, a4, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240510, &qword_24F9EAD88);
  v14 = *(v13 - 8);
  v25 = v13;
  v26 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240508, &qword_24F9EAD80);
  MEMORY[0x28223BE20](v24);
  v18 = &v24 - v17;
  LOBYTE(v17) = *(a2 + 16);
  *v18 = *a2;
  v18[16] = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240648, &qword_24F9EAF20);
  sub_24F370784(a2, a1, a3, a4, &v18[*(v19 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0, &qword_24F9EAF10);
  sub_24F923818();
  (*(v10 + 16))(v12, a2, v9);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  (*(v10 + 32))(v21 + v20, v12, v9);
  sub_24E602068(&qword_27F240518, &qword_27F240508, &qword_24F9EAD80, MEMORY[0x277CE1198]);
  sub_24E602068(&qword_27F240520, &qword_27F240510, &qword_24F9EAD88, MEMORY[0x277CDD818]);
  v22 = v25;
  sub_24F926AB8();

  (*(v26 + 8))(v16, v22);
  return sub_24E601704(v18, &qword_27F240508, &qword_24F9EAD80);
}

uint64_t sub_24F3706E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for Marquee(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_24F370388(a1, v9, v6, v7, a3);
}

uint64_t sub_24F370784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v33 = a2;
  v34 = a5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0, &qword_24F9EAF10);
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v10 = &v30 - v9;
  v31 = &v30 - v9;
  v12 = type metadata accessor for Marquee(0, a3, a4, v11);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v20, a1 + *(v21 + 56), a3, v18);
  (*(v13 + 16))(v16, a1, v12);
  (*(v8 + 16))(v10, v33, v35);
  v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v24 = (v14 + *(v8 + 80) + v23) & ~*(v8 + 80);
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = a3;
  *(v25 + 24) = v26;
  (*(v13 + 32))(v25 + v23, v16, v12);
  (*(v8 + 32))(v25 + v24, v31, v35);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240650, &qword_24F9EAF28);
  v28 = sub_24F374514();
  return MEMORY[0x25304CBA0](v20, sub_24F374408, v25, v27, a3, v28, v26);
}

uint64_t sub_24F370A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a6;
  v64 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238E10, &qword_24F9C6AB0);
  MEMORY[0x28223BE20](v10 - 8);
  v61 = &v53 - v11;
  v57 = sub_24F923E08();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F923F78();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24F9272E8();
  v14 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240678, &qword_24F9EAF38);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - v22;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240668, &qword_24F9EAF30);
  MEMORY[0x28223BE20](v54);
  v65 = &v53 - v24;
  v25 = *(a2 + 24);
  *v23 = sub_24F9249A8();
  *(v23 + 1) = v25;
  v23[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240690, &qword_24F9EAF48);
  sub_24F371160(a1, a2, a4, a5, &v23[*(v26 + 44)]);
  sub_24F9272F8();
  v28 = type metadata accessor for Marquee(0, a4, a5, v27);
  sub_24F371B08(v64, v19, v28);
  v30 = v29;
  v31 = *(v14 + 8);
  v32 = v19;
  v33 = v53;
  v31(v32, v53);
  v34 = &v23[*(v21 + 44)];
  *v34 = v30;
  *(v34 + 1) = 0;
  v58 = a1;
  sub_24F9272F8();
  v64 = v28;
  if (*(sub_24F36FA54(v28) + 16) && (sub_24E76E99C(v16), (v35 & 1) != 0))
  {
    v31(v16, v33);
  }

  else
  {

    v31(v16, v33);
  }

  sub_24F36F978(v64);
  sub_24F927628();
  v36 = v62;
  v37 = v60;
  v38 = v59;
  sub_24F9242E8();
  v39 = v65;
  sub_24E6009C8(v23, v65, &qword_27F240678, &qword_24F9EAF38);
  v40 = (v39 + *(v54 + 36));
  v41 = v71;
  v40[4] = v70;
  v40[5] = v41;
  v40[6] = v72;
  v42 = v67;
  *v40 = v66;
  v40[1] = v42;
  v43 = v69;
  v40[2] = v68;
  v40[3] = v43;
  KeyPath = swift_getKeyPath();
  v45 = v55;
  sub_24F9272D8();
  sub_24F374718();
  v46 = v61;
  sub_24F923E18();
  (*(v56 + 8))(v45, v57);
  v47 = *(v37 + 48);
  if (v47(v46, 1, v36) == 1)
  {
    sub_24F36FB84(v64, v38);
    if (v47(v46, 1, v36) != 1)
    {
      sub_24E601704(v46, &qword_27F238E10, &qword_24F9C6AB0);
    }
  }

  else
  {
    (*(v37 + 32))(v38, v46, v36);
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240650, &qword_24F9EAF28);
  v49 = v63;
  v50 = (v63 + *(v48 + 36));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AE0, &qword_24F973530);
  (*(v37 + 32))(v50 + *(v51 + 28), v38, v36);
  *v50 = KeyPath;
  return sub_24E6009C8(v65, v49, &qword_27F240668, &qword_24F9EAF30);
}

uint64_t sub_24F371160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a3;
  v69 = a4;
  v83 = a2;
  v81 = a5;
  v8 = sub_24F9272E8();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2406A0, &qword_24F9EAF80);
  MEMORY[0x28223BE20](v82);
  v72 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2406A8, &qword_24F9EAF88);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v61 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2406B0, &qword_24F9EAF90);
  MEMORY[0x28223BE20](v76);
  v80 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v75 = &v61 - v15;
  MEMORY[0x28223BE20](v16);
  v79 = &v61 - v17;
  v18 = sub_24F927308();
  v19 = *(v18 - 8);
  v70 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v67 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Marquee(0, a3, a4, v21);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v61 - v25;
  v62 = &v61 - v25;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2406B8, &qword_24F9EAF98) - 8;
  MEMORY[0x28223BE20](v66);
  v74 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v61 - v30;
  v32 = *(v19 + 16);
  v64 = a1;
  v63 = v18;
  v32(&v61 - v30, a1, v18, v29);
  v65 = v32;
  v33 = v83;
  *&v31[*(v82 + 36)] = 257;
  (*(v23 + 16))(v26, v33, v22);
  v34 = v67;
  (v32)(v67, a1, v18);
  v35 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v36 = (v24 + *(v19 + 80) + v35) & ~*(v19 + 80);
  v37 = swift_allocObject();
  v38 = v69;
  *(v37 + 16) = v68;
  *(v37 + 24) = v38;
  (*(v23 + 32))(v37 + v35, v62, v22);
  v39 = v63;
  (*(v19 + 32))(v37 + v36, v34, v63);
  v40 = v31;
  v41 = &v31[*(v66 + 44)];
  *v41 = sub_24E72DE30;
  v41[1] = 0;
  v41[2] = sub_24F374A98;
  v41[3] = v37;
  v42 = v71;
  v43 = v72;
  v65(v72, v64, v39);
  v44 = v73;
  *(v43 + *(v82 + 36)) = 257;
  sub_24F374B88();
  sub_24F9265E8();
  sub_24E601704(v43, &qword_27F2406A0, &qword_24F9EAF80);
  sub_24F9272F8();
  v45 = sub_24F36FA54(v22);
  if (*(v45 + 16) && (v46 = sub_24E76E99C(v44), (v47 & 1) != 0))
  {
    v48 = *(*(v45 + 56) + 8 * v46);
    (*(v77 + 8))(v44, v78);

    v49 = COERCE_DOUBLE(sub_24F36F978(v22));
    if (v50)
    {
      v51 = 1.0;
      if (v48 > 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {

    (*(v77 + 8))(v44, v78);
    v49 = COERCE_DOUBLE(sub_24F36F978(v22));
    if (v52)
    {
LABEL_9:
      v51 = 0.0;
      goto LABEL_10;
    }

    v48 = 0.0;
  }

  v51 = 1.0;
  if (v48 <= v49)
  {
    goto LABEL_9;
  }

LABEL_10:
  v53 = v42;
  v54 = v75;
  sub_24E6009C8(v53, v75, &qword_27F2406A8, &qword_24F9EAF88);
  *(v54 + *(v76 + 36)) = v51;
  v55 = v79;
  sub_24E6009C8(v54, v79, &qword_27F2406B0, &qword_24F9EAF90);
  v56 = v74;
  sub_24E60169C(v40, v74, &qword_27F2406B8, &qword_24F9EAF98);
  v57 = v80;
  sub_24E60169C(v55, v80, &qword_27F2406B0, &qword_24F9EAF90);
  v58 = v81;
  sub_24E60169C(v56, v81, &qword_27F2406B8, &qword_24F9EAF98);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2406C8, &qword_24F9EAFA0);
  sub_24E60169C(v57, v58 + *(v59 + 48), &qword_27F2406B0, &qword_24F9EAF90);
  sub_24E601704(v55, &qword_27F2406B0, &qword_24F9EAF90);
  sub_24E601704(v40, &qword_27F2406B8, &qword_24F9EAF98);
  sub_24E601704(v57, &qword_27F2406B0, &qword_24F9EAF90);
  return sub_24E601704(v56, &qword_27F2406B8, &qword_24F9EAF98);
}

uint64_t sub_24F371890(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24F9272E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_24F9272F8();
  v15 = (a2 + *(type metadata accessor for Marquee(0, a4, a5, v14) + 64));
  v17 = v15[1];
  v24 = *v15;
  v16 = v24;
  v25 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240638, &qword_24F9EAF08);
  sub_24F926F38();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v26;
  sub_24E822B2C(v12, isUniquelyReferenced_nonNull_native, v13);
  (*(v10 + 8))(v12, v9);
  v19 = v22;
  v22 = v16;
  v23 = v17;
  v21 = v19;
  sub_24F926F48();

  return sub_24F371A3C();
}

uint64_t sub_24F371A3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_24F91F618();
  v3 = sub_24F91F648();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_24F36FAAC(v2);
}

void sub_24F371B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);
  sub_24F926F38();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(v9, &unk_27F22EC30, &qword_24F939880);
    return;
  }

  (*(v11 + 32))(v16, v9, v10);
  v17 = sub_24F36FA54(a3);
  if (*(v17 + 16) && (v18 = sub_24E76E99C(a2), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);

    v21 = COERCE_DOUBLE(sub_24F36F978(a3));
    if ((v22 & 1) == 0 && v20 > v21)
    {
      v23 = sub_24F36FA54(a3);
      v24 = COERCE_DOUBLE(sub_24ED6ECC8(v23));
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0, &qword_24F9EAF10);
        sub_24F923808();
        sub_24F91F558();
        v28 = v27;
        v29 = *(v11 + 8);
        v29(v13, v10);
        v29(v16, v10);
        fmod(-((v28 - v4[4]) * v4[5]), v24 - v20 + v4[3] + v20 + v4[4] * v4[5]);
        return;
      }
    }
  }

  else
  {
  }

  (*(v11 + 8))(v16, v10);
}

uint64_t sub_24F371E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9249A8();
  v44 = 0;
  sub_24F3720D0(*(a1 + 16), *(a1 + 24), &v31);
  v53 = v39;
  v54 = v40;
  v55 = v41;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v52 = v38;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v57[8] = v39;
  v57[9] = v40;
  v57[10] = v41;
  v57[4] = v35;
  v57[5] = v36;
  v57[6] = v37;
  v57[7] = v38;
  v57[0] = v31;
  v57[1] = v32;
  v56 = v42;
  v58 = v42;
  v57[2] = v33;
  v57[3] = v34;
  sub_24E60169C(&v45, v30, &qword_27F240618, &qword_24F9EAEE8);
  sub_24E601704(v57, &qword_27F240618, &qword_24F9EAEE8);
  *(&v43[8] + 7) = v53;
  *(&v43[9] + 7) = v54;
  *(&v43[10] + 7) = v55;
  *(&v43[4] + 7) = v49;
  *(&v43[5] + 7) = v50;
  *(&v43[6] + 7) = v51;
  *(&v43[7] + 7) = v52;
  *(v43 + 7) = v45;
  *(&v43[1] + 7) = v46;
  *(&v43[2] + 7) = v47;
  *(&v43[11] + 7) = v56;
  *(&v43[3] + 7) = v48;
  LOBYTE(a1) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240620, &qword_24F9EAEF0);
  sub_24F9252C8();
  v5 = v43[9];
  *(a2 + 145) = v43[8];
  *(a2 + 161) = v5;
  *(a2 + 177) = v43[10];
  *(a2 + 192) = *(&v43[10] + 15);
  v6 = v43[5];
  *(a2 + 81) = v43[4];
  *(a2 + 97) = v6;
  v7 = v43[7];
  *(a2 + 113) = v43[6];
  *(a2 + 129) = v7;
  v8 = v43[1];
  *(a2 + 17) = v43[0];
  *(a2 + 33) = v8;
  v9 = v43[3];
  *(a2 + 49) = v43[2];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  *(a2 + 65) = v9;
  LOBYTE(v4) = sub_24F9257F8();
  sub_24F923318();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240628, &qword_24F9EAEF8) + 36);
  *v18 = v4;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  v19 = sub_24F925868();
  sub_24F923318();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240630, &qword_24F9EAF00);
  v29 = a2 + *(result + 36);
  *v29 = v19;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_24F3720D0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93A400;
  *(v7 + 32) = sub_24F926C98();
  *(v7 + 40) = sub_24F926C88();
  sub_24F9278B8();
  sub_24F9278C8();
  MEMORY[0x25304CD70](v7);
  sub_24F923BD8();
  v9 = type metadata accessor for Marquee(0, a2, a3, v8);
  sub_24F3723EC(v9);
  sub_24F927618();
  sub_24F9238C8();
  v41 = v47;
  v42 = v48;
  *&v43 = v49;
  v10 = sub_24F926C88();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93A400;
  *(v11 + 32) = sub_24F926C88();
  *(v11 + 40) = sub_24F926C98();
  sub_24F9278B8();
  sub_24F9278C8();
  MEMORY[0x25304CD70](v11);
  sub_24F923BD8();
  sub_24F3723EC(v9);
  sub_24F927618();
  sub_24F9238C8();
  v35 = v50;
  v36 = v51;
  *&v37 = v52;
  v12 = v43;
  v13 = v44;
  v27[2] = v43;
  v27[3] = v44;
  v14 = v45;
  v27[4] = v45;
  v15 = v42;
  v27[0] = v41;
  v27[1] = v42;
  v29[0] = v50;
  v29[1] = v51;
  v16 = v39;
  v29[3] = v38;
  v29[4] = v39;
  v29[2] = v37;
  *a4 = v41;
  *(a4 + 16) = v15;
  *(a4 + 48) = v13;
  *(a4 + 64) = v14;
  *(a4 + 32) = v12;
  v17 = v35;
  v19 = v36;
  v18 = v37;
  v20 = v36;
  v21 = v37;
  *(a4 + 96) = v35;
  *(a4 + 112) = v19;
  *(a4 + 160) = v16;
  v23 = v38;
  v22 = v39;
  v24 = v38;
  *(a4 + 128) = v18;
  *(a4 + 144) = v23;
  v28 = v46;
  v25 = v40;
  v30 = v40;
  *(a4 + 80) = v46;
  *(a4 + 88) = v10;
  *(a4 + 176) = v25;
  v31[0] = v17;
  v31[1] = v20;
  v32 = v40;
  v31[3] = v24;
  v31[4] = v22;
  v31[2] = v21;
  sub_24E60169C(v27, v33, &qword_27F2248A0, &qword_24F9736E0);

  sub_24E60169C(v29, v33, &qword_27F2248A0, &qword_24F9736E0);
  sub_24E601704(v31, &qword_27F2248A0, &qword_24F9736E0);

  v33[2] = v43;
  v33[3] = v44;
  v33[4] = v45;
  v34 = v46;
  v33[0] = v41;
  v33[1] = v42;
  return sub_24E601704(v33, &qword_27F2248A0, &qword_24F9736E0);
}

BOOL sub_24F3723EC(uint64_t a1)
{
  v2 = sub_24F36F978(a1);
  if (v3)
  {
    return 0;
  }

  v5 = *&v2;
  v6 = sub_24F36FA54(a1);
  v7 = COERCE_DOUBLE(sub_24ED6ECC8(v6));
  v9 = v8;

  return (v9 & 1) == 0 && v5 < v7;
}

uint64_t sub_24F372460@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_24E60169C(v2 + *(a1 + 76), &v15 - v10, &qword_27F235CD8, &qword_24F9B9820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923418();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_24F372668@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F923F78();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double sub_24F3726D4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240600, &qword_24F9EAEC8);
  v24 = *(v5 - 8);
  v6 = v24;
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v33 = *a1;
  v9 = swift_allocObject();
  v10 = *(a1 + 1);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v10;
  *(v9 + 48) = a1[4];
  sub_24F373C50(&v33, &v27);

  sub_24F927618();
  sub_24F9238C8();
  v11 = v27;
  v12 = v28;
  v13 = v29;
  v14 = v30;
  v22 = v32;
  v23 = v31;
  v35 = v28;
  v34 = v30;
  v15 = *(v6 + 16);
  v16 = v25;
  v15(v8, v26, v25);
  *a3 = sub_24F373C48;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = v14;
  v17 = v22;
  *(a3 + 48) = v23;
  *(a3 + 56) = v17;
  v18 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240608, &qword_24F9EAED0) + 48));
  v19 = v16;
  v15(v18, v8, v16);
  v20 = *(v24 + 8);

  v20(v8, v19);

  return result;
}

double sub_24F3728D4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24F9239C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v14 = sub_24F926C98();
  sub_24F923998();
  v13 = v7;
  v15 = *a2;
  (*(v5 + 16))(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v8 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = *(a2 + 1);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  *(v9 + 48) = a2[4];
  (*(v5 + 32))(v9 + v8, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  sub_24F373C50(&v15, v12);
  sub_24E7DDA4C();

  sub_24F926AC8();

  return result;
}

uint64_t sub_24F372A9C(_OWORD *a1)
{
  sub_24F923998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240610, &unk_24F9EAED8);
  return sub_24F927178();
}

double sub_24F372B08@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  v10 = *(v2 + 32);
  v6 = sub_24F9249A8();
  *a2 = v10;
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2405F8, &qword_24F9EAEC0);
  return sub_24F3726D4(v9, a1, a2 + *(v7 + 44));
}

uint64_t sub_24F372BA4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0, &qword_24F9EAF10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v16 = *(v14 - 8);
  result = v14 - 8;
  if (*(v16 + 64) == v11)
  {
    (*(v10 + 16))(v13, a1, v9);
    a2(v13);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F372CF4()
{

  return swift_deallocObject();
}

unint64_t sub_24F372D58()
{
  result = qword_27F21BAC8;
  if (!qword_27F21BAC8)
  {
    sub_24F925468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BAC8);
  }

  return result;
}

void sub_24F372DFC(uint64_t a1)
{
  sub_24EB5FE28();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_24EB8E864(319, &qword_27F21CFF8, &qword_27F21CFA8, &qword_24F958530);
      if (v3 <= 0x3F)
      {
        sub_24EB8E864(319, &qword_27F2405B8, &qword_27F239808, &qword_24F9CA888);
        if (v4 <= 0x3F)
        {
          sub_24EB8E864(319, &qword_27F22A040, &unk_27F22EC30, &qword_24F939880);
          if (v5 <= 0x3F)
          {
            sub_24F373898(319, &qword_27F2168D0, MEMORY[0x277CDFAA0]);
            if (v6 <= 0x3F)
            {
              sub_24F373898(319, &qword_27F235C80, MEMORY[0x277CDD6C8]);
              if (v7 <= 0x3F)
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

uint64_t sub_24F372FA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v36 = *(a3 + 16);
  v4 = *(v36 - 8);
  v5 = *(v4 + 84);
  v34 = sub_24F91F648();
  v6 = *(v34 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v35 = v9;
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v37 = *(sub_24F923F78() - 8);
  v11 = *(v37 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v38 = v11;
  v12 = *(sub_24F923418() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v4 + 80);
  if (v7)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v4 + 64) + 7;
  v17 = *(v6 + 80) & 0xF8;
  v18 = ~v17 & 0xFFFFFFFFFFFFFFF8;
  v19 = v17 + 23;
  if (a2 <= v10)
  {
    goto LABEL_39;
  }

  v20 = (v15 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v37 + 80) & 0xF8 | 7;
  v22 = *(v12 + 80) & 0xF8 | 7;
  v23 = v13 + ((v38 + v22 + ((v20 + v21 + ((v19 + ((((v16 + ((v14 + 56) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & v18) + 8) & ~v21) + 1) & ~v22) + 1;
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v27 = ((a2 - v10 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v27 < 2)
    {
LABEL_39:
      v29 = (((((((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14;
      if (v5 == v10)
      {
        v30 = *(v4 + 48);

        return v30(v29, v5, v36);
      }

      else
      {
        v31 = ((((v16 + v29) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
        if ((v35 & 0x80000000) != 0)
        {
          v33 = (*(v6 + 48))((v31 + v19) & v18, v7, v34);
          if (v33 >= 2)
          {
            return v33 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v32 = *v31;
          if (v32 >= 0xFFFFFFFF)
          {
            LODWORD(v32) = -1;
          }

          return (v32 + 1);
        }
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_39;
  }

LABEL_28:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 > 3)
    {
      LODWORD(v23) = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        LODWORD(v23) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v23) = *a1;
      }
    }

    else if (v23 == 1)
    {
      LODWORD(v23) = *a1;
    }

    else
    {
      LODWORD(v23) = *a1;
    }
  }

  return v10 + (v23 | v28) + 1;
}

void sub_24F3733AC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v40 = *(a4 + 16);
  v4 = *(v40 - 8);
  v5 = *(v4 + 84);
  v6 = *(sub_24F91F648() - 8);
  v42 = v6;
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  v41 = v5;
  v39 = v8;
  if (v5 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_24F923F78() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = sub_24F923418();
  v14 = v7;
  v15 = 0;
  v16 = *(v13 - 8);
  if (*(v16 + 64) <= 8uLL)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(v16 + 64);
  }

  v18 = *(v4 + 80);
  v19 = *(v4 + 64) + 7;
  v20 = *(v6 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 23;
  v23 = *(v6 + 64);
  if (!v14)
  {
    ++v23;
  }

  v24 = *(v11 + 80) & 0xF8 | 7;
  v25 = *(v16 + 80) & 0xF8 | 7;
  v26 = v17 + ((v12 + v25 + ((((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + v24 + ((v22 + ((((v19 + ((v18 + 56) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & v21) + 8) & ~v24) + 1) & ~v25) + 1;
  if (a3 > v10)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v10 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
      if (HIWORD(v27))
      {
        v15 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v15 = v28;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  if (v10 < a2)
  {
    v29 = ~v10 + a2;
    if (v26 < 4)
    {
      v30 = (v29 >> (8 * v26)) + 1;
      if (v26)
      {
        v31 = v29 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v31;
            if (v15 > 1)
            {
LABEL_63:
              if (v15 == 2)
              {
                *&a1[v26] = v30;
              }

              else
              {
                *&a1[v26] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v15 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v15 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v29;
      v30 = 1;
      if (v15 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v15)
    {
      a1[v26] = v30;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *&a1[v26] = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v15)
  {
    goto LABEL_45;
  }

  a1[v26] = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  v32 = (((((((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v18 + 8) & ~v18;
  if (v41 == v10)
  {
    v33 = *(v4 + 56);

    v33(v32, a2, v41, v40);
  }

  else
  {
    v34 = ((((v19 + v32) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    if ((v9 & 0x80000000) != 0)
    {
      v35 = ((v34 + v22) & v21);
      if (v39 >= a2)
      {
        v38 = *(v42 + 56);

        v38(v35, a2 + 1);
      }

      else
      {
        v36 = (v23 + 7) & 0xFFFFFFF8;
        if (v36 != -8)
        {
          v37 = ((v34 + v22) & v21);
          bzero(v35, (v36 + 8));
          *v37 = ~v39 + a2;
        }
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v34 = a2 & 0x7FFFFFFF;
      v34[1] = 0;
    }

    else
    {
      *v34 = a2 - 1;
    }
  }
}

void sub_24F373898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F3738F0()
{
  result = qword_27F2405C0;
  if (!qword_27F2405C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F240530, &qword_24F9EAD98);
    sub_24F37397C();
    sub_24F373B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2405C0);
  }

  return result;
}

unint64_t sub_24F37397C()
{
  result = qword_27F2405C8;
  if (!qword_27F2405C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240528, &qword_24F9EAD90);
    sub_24F373A34();
    sub_24E602068(&qword_27F2405E0, &qword_27F2405E8, &qword_24F9EAE30, MEMORY[0x277CDF520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2405C8);
  }

  return result;
}

unint64_t sub_24F373A34()
{
  result = qword_27F2405D0;
  if (!qword_27F2405D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2405D8, &qword_24F9EAE28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240508, &qword_24F9EAD80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240510, &qword_24F9EAD88);
    sub_24E602068(&qword_27F240518, &qword_27F240508, &qword_24F9EAD80, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F240520, &qword_27F240510, &qword_24F9EAD88, MEMORY[0x277CDD818]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2405D0);
  }

  return result;
}

unint64_t sub_24F373B88()
{
  result = qword_27F2405F0;
  if (!qword_27F2405F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2405F0);
  }

  return result;
}

uint64_t sub_24F373C08()
{

  return swift_deallocObject();
}

uint64_t sub_24F373CAC()
{
  v1 = sub_24F9239C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F373D78()
{
  sub_24F9239C8();

  return sub_24F372A9C((v0 + 16));
}

uint64_t objectdestroyTm_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for Marquee(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  (*(*(v5 - 8) + 8))(v7 + v6[14], v5);

  v8 = v7 + v6[17];
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);

  v11 = v6[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923F78();
    (*(*(v12 - 8) + 8))(v7 + v11, v12);
  }

  else
  {
  }

  v13 = v6[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_24F923418();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F3740D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for Marquee(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v20 = *(*(v6 - 1) + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0, &qword_24F9EAF10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v4 + ((v7 + 32) & ~v7);
  (*(*(v5 - 8) + 8))(v11 + v6[14], v5);

  v12 = v11 + v6[17];
  v13 = sub_24F91F648();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);

  v15 = v6[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_24F923F78();
    (*(*(v16 - 8) + 8))(v11 + v15, v16);
  }

  else
  {
  }

  v17 = v6[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F923418();
    (*(*(v18 - 8) + 8))(v11 + v17, v18);
  }

  else
  {
  }

  (*(v9 + 8))(v4 + ((((v7 + 32) & ~v7) + v20 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_24F374408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for Marquee(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0, &qword_24F9EAF10) - 8);
  v12 = v3 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_24F370A78(a1, v3 + v9, v12, v6, v7, a3);
}

unint64_t sub_24F374514()
{
  result = qword_27F240658;
  if (!qword_27F240658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240650, &qword_24F9EAF28);
    sub_24F3745CC();
    sub_24E602068(&qword_27F224BE0, &qword_27F224AE0, &qword_24F973530, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240658);
  }

  return result;
}

unint64_t sub_24F3745CC()
{
  result = qword_27F240660;
  if (!qword_27F240660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240668, &qword_24F9EAF30);
    sub_24F374658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240660);
  }

  return result;
}

unint64_t sub_24F374658()
{
  result = qword_27F240670;
  if (!qword_27F240670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240678, &qword_24F9EAF38);
    sub_24E602068(&qword_27F240680, &qword_27F240688, &qword_24F9EAF40, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240670);
  }

  return result;
}

unint64_t sub_24F374718()
{
  result = qword_27F240698;
  if (!qword_27F240698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240698);
  }

  return result;
}

uint64_t sub_24F37476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for Marquee(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v20 = *(*(v6 - 1) + 64);
  v8 = sub_24F927308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v4 + ((v7 + 32) & ~v7);
  (*(*(v5 - 8) + 8))(v11 + v6[14], v5);

  v12 = v11 + v6[17];
  v13 = sub_24F91F648();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2362B0, &unk_24F986B90);

  v15 = v6[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_24F923F78();
    (*(*(v16 - 8) + 8))(v11 + v15, v16);
  }

  else
  {
  }

  v17 = v6[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F923418();
    (*(*(v18 - 8) + 8))(v11 + v17, v18);
  }

  else
  {
  }

  (*(v9 + 8))(v4 + ((((v7 + 32) & ~v7) + v20 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_24F374A98(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for Marquee(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_24F927308() - 8);
  v12 = v4 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_24F371890(a1, v4 + v9, v12, v6, v7);
}

unint64_t sub_24F374B88()
{
  result = qword_27F2406C0;
  if (!qword_27F2406C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2406A0, &qword_24F9EAF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2406C0);
  }

  return result;
}

uint64_t sub_24F374C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = *a2;
  *(v3 + 56) = *(a2 + 8);
  return MEMORY[0x2822009F8](sub_24F374CB0, 0, 0);
}

uint64_t sub_24F374CB0()
{
  if (*(*(v0 + 32) + 16))
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_24EA32408;
    v2 = *(v0 + 56);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);

    return sub_24F374D9C(v4, v2, v3);
  }

  else
  {
    **(v0 + 16) = sub_24E611A50(MEMORY[0x277D84F90]);
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24F374D9C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 488) = a2;
  *(v3 + 136) = a1;
  *(v3 + 144) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3B0, &unk_24F95CD60);
  *(v3 + 152) = swift_task_alloc();
  type metadata accessor for Game(0);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6C8, &unk_24F95CD50) - 8);
  *(v3 + 184) = swift_task_alloc();
  v4 = sub_24F920358();
  *(v3 + 192) = v4;
  *(v3 + 200) = *(v4 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8, &qword_24F953700);
  *(v3 + 224) = v5;
  *(v3 + 232) = *(v5 - 8);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  v6 = sub_24F9207B8();
  *(v3 + 264) = v6;
  *(v3 + 272) = *(v6 - 8);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048, &qword_24F9762B0);
  *(v3 + 296) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6D0, &unk_24F95CD70);
  *(v3 + 304) = v7;
  *(v3 + 312) = *(v7 - 8);
  *(v3 + 320) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  *(v3 + 328) = v8;
  v9 = *(v8 - 8);
  *(v3 + 336) = v9;
  *(v3 + 344) = *(v9 + 64);
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  v10 = type metadata accessor for LocalPlayerProvider(0);
  v11 = swift_task_alloc();
  *(v3 + 368) = v11;
  *v11 = v3;
  v11[1] = sub_24F375194;

  return MEMORY[0x28217F210](v3 + 120, v10, v10);
}

uint64_t sub_24F375194()
{

  if (v0)
  {

    v1 = sub_24F376BEC;
  }

  else
  {
    v1 = sub_24F3752AC;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24F3752AC()
{
  v1 = v0[15];
  v0[47] = v1;
  if (v1)
  {
    sub_24F92B7F8();
    v0[48] = sub_24F92B7E8();
    v3 = sub_24F92B778();

    return MEMORY[0x2822009F8](sub_24F37553C, v3, v2);
  }

  else
  {
    if (qword_27F2113E0 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E7F0);
    v5 = sub_24F9220B8();
    v6 = sub_24F92BDB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24E5DD000, v5, v6, "GamesDataIntentImplementation Failed to fetch LocalPlayerProvider from the ObjectGraph", v7, 2u);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    sub_24F3770A4();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24F37553C()
{
  v1 = v0[47];

  swift_getKeyPath();
  v0[16] = v1;
  sub_24E80BDF0(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[49] = *v2;
  v0[50] = v2[1];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v4 = swift_task_alloc();
  v0[51] = v4;
  *v4 = v0;
  v4[1] = sub_24F3756AC;

  return MEMORY[0x28217F228](v0 + 7, v3, v3);
}

uint64_t sub_24F3756AC()
{
  *(*v1 + 416) = v0;

  if (v0)
  {

    v2 = sub_24F375BB0;
  }

  else
  {
    v2 = sub_24F3757C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3757C8()
{
  v1 = *(v0 + 488);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_24F920FC8();
  if (v1 == 1)
  {
    v3 = *(v0 + 352);
    v2 = *(v0 + 360);
    v4 = *(v0 + 336);
    v5 = *(v0 + 328);
    v6 = *(v0 + 296);
    v7 = *(v0 + 144);
    v8 = sub_24F921038();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    (*(v4 + 16))(v3, v2, v5);
    v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    (*(v4 + 32))(v10 + v9, v3, v5);
    v11 = MEMORY[0x277D0CE08];
    sub_24E80BDF0(&qword_27F21E6D8, MEMORY[0x277D0CE08], MEMORY[0x277D0CE20]);
    sub_24E80BDF0(&qword_27F21E6E0, v11, MEMORY[0x277D0CE10]);

    sub_24F920A28();
    v12 = swift_task_alloc();
    *(v0 + 424) = v12;
    *v12 = v0;
    v12[1] = sub_24F375CE0;
    v13 = *(v0 + 304);

    return MEMORY[0x282164EA8](v13);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
    *(v0 + 448) = sub_24E611864(MEMORY[0x277D84F90]);
    v15 = *(v0 + 136);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = *(v0 + 232);
      sub_24F457F58(0, v16, 0);
      v18 = v15 + 40;
      do
      {

        sub_24F920EF8();
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_24F457F58((v19 > 1), v20 + 1, 1);
        }

        v21 = *(v0 + 248);
        v22 = *(v0 + 224);
        *(v14 + 16) = v20 + 1;
        (*(v17 + 32))(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v20, v21, v22);
        v18 += 16;
        --v16;
      }

      while (v16);
    }

    *(v0 + 456) = v14;
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
    v25 = swift_task_alloc();
    *(v0 + 464) = v25;
    *v25 = v0;
    v25[1] = sub_24F37644C;

    return MEMORY[0x282164950](v14, v23, v24);
  }
}

uint64_t sub_24F375BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F375CE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[54] = a1;
  v4[55] = v1;

  (*(v3[39] + 8))(v3[40], v3[38]);
  if (v1)
  {
    v5 = sub_24F376DF4;
  }

  else
  {
    v5 = sub_24F375E50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F375E50(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[54];
  v56 = *(v4 + 16);
  if (v56)
  {
    v5 = 0;
    v6 = v3[34];
    v57 = v6;
    v58 = (v3[29] + 8);
    v55 = (v6 + 8);
    v52 = (v6 + 40);
    v53 = (v6 + 32);
    v7 = v3[55];
    v8 = MEMORY[0x277D84F98];
    v54 = v3[54];
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return MEMORY[0x282164950](a1, a2, a3);
      }

      v59 = *(v57 + 72);
      v10 = *(v57 + 16);
      v10(v3[36], v3[54] + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + v59 * v5, v3[33]);
      sub_24F9207A8();
      v11 = sub_24F920F08();
      if (v7)
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      v16 = v3[35];
      v15 = v3[36];
      v17 = v3[33];
      (*v58)(v3[32], v3[28]);
      v10(v16, v15, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v8;
      a1 = sub_24E76D644(v13, v14);
      v19 = v8[2];
      v20 = (a2 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_32;
      }

      v23 = a2;
      if (v8[3] >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = a1;
          sub_24E8B7698();
          a1 = v31;
        }
      }

      else
      {
        sub_24E8AA738(v22, isUniquelyReferenced_nonNull_native);
        a1 = sub_24E76D644(v13, v14);
        if ((v23 & 1) != (v24 & 1))
        {

          return sub_24F92CF88();
        }
      }

      v26 = v3[35];
      v25 = v3[36];
      v27 = v3[33];
      if (v23)
      {
        v9 = a1;

        v8 = v61;
        (*v52)(v61[7] + v9 * v59, v26, v27);
        a1 = (*v55)(v25, v27);
      }

      else
      {
        v8 = v61;
        v61[(a1 >> 6) + 8] |= 1 << a1;
        v28 = (v61[6] + 16 * a1);
        *v28 = v13;
        v28[1] = v14;
        (*v53)(v61[7] + a1 * v59, v26, v27);
        a1 = (*v55)(v25, v27);
        v29 = v61[2];
        v21 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v21)
        {
          goto LABEL_33;
        }

        v61[2] = v30;
      }

      v7 = 0;
      ++v5;
      v4 = v54;
      if (v56 == v5)
      {
        goto LABEL_20;
      }
    }

    v32 = v3[45];
    v33 = v3[42];
    v60 = v3[41];
    v34 = v3[36];
    v36 = v3[32];
    v35 = v3[33];
    v37 = v3[28];

    (*v58)(v36, v37);
    (*v55)(v34, v35);
    (*(v33 + 8))(v32, v60);

    __swift_destroy_boxed_opaque_existential_1(v3 + 2);

    v38 = v3[1];

    return v38();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
LABEL_20:

    v3[56] = v8;
    v40 = v3[17];
    v41 = *(v40 + 16);
    v42 = MEMORY[0x277D84F90];
    if (v41)
    {
      v43 = v3[29];
      v62 = MEMORY[0x277D84F90];
      sub_24F457F58(0, v41, 0);
      v42 = v62;
      v44 = v40 + 40;
      do
      {

        sub_24F920EF8();
        v46 = *(v62 + 16);
        v45 = *(v62 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_24F457F58((v45 > 1), v46 + 1, 1);
        }

        v47 = v3[31];
        v48 = v3[28];
        *(v62 + 16) = v46 + 1;
        (*(v43 + 32))(v62 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v46, v47, v48);
        v44 += 16;
        --v41;
      }

      while (v41);
    }

    v3[57] = v42;
    v49 = v3[5];
    v50 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v49);
    v51 = swift_task_alloc();
    v3[58] = v51;
    *v51 = v3;
    v51[1] = sub_24F37644C;
    a1 = v42;
    a2 = v49;
    a3 = v50;

    return MEMORY[0x282164950](a1, a2, a3);
  }
}

uint64_t sub_24F37644C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {

    v4 = sub_24F376F4C;
  }

  else
  {
    v4 = sub_24F376598;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24F376598()
{
  v1 = v0[59];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v58 = v0[56];
    v4 = v0[25];
    v5 = v0[22];
    v52 = v0[21];
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = (v4 + 48);
    v56 = (v4 + 16);
    v57 = (v4 + 32);
    v53 = (v0[34] + 56);
    v54 = (v0[29] + 8);
    v49 = v0[34];
    v55 = (v4 + 8);
    v8 = v0[60];
    v63 = MEMORY[0x277D84F98];
    v50 = (v4 + 48);
    v51 = v6;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v10 = v0[23];
      v9 = v0[24];
      sub_24F377100(v6 + *(v5 + 72) * v3, v10);
      if ((*v7)(v10, 1, v9) != 1)
      {
        break;
      }

      sub_24E601704(v0[23], &qword_27F21E6C8, &unk_24F95CD50);
LABEL_4:
      if (v2 == ++v3)
      {
        v36 = v63;
        goto LABEL_16;
      }
    }

    v12 = v0[26];
    v11 = v0[27];
    v13 = v0[24];
    (*v57)(v11, v0[23], v13);
    (*v56)(v12, v11, v13);
    sub_24F920318();
    v14 = sub_24F920F08();
    if (v8)
    {
      v41 = v0[42];
      v60 = v0[41];
      v62 = v0[45];
      v42 = v0[30];
      v44 = v0[27];
      v43 = v0[28];
      v45 = v0[26];
      v46 = v0[24];

      (*v54)(v42, v43);
      v47 = *v55;
      (*v55)(v45, v46);
      v47(v44, v46);
      (*(v41 + 8))(v62, v60);

      __swift_destroy_boxed_opaque_existential_1(v0 + 2);

      v48 = v0[1];

      v48();
      return;
    }

    v16 = v14;
    v17 = v15;
    (*v54)(v0[30], v0[28]);
    if (*(v58 + 16))
    {
      v18 = sub_24E76D644(v16, v17);
      v20 = v19;

      if (v20)
      {
        (*(v49 + 16))(v0[19], *(v58 + 56) + *(v49 + 72) * v18, v0[33]);
        v21 = 0;
LABEL_13:
        v22 = v0[26];
        v23 = v0[21];
        v25 = v0[18];
        v24 = v0[19];
        (*v53)(v24, v21, 1, v0[33]);

        sub_24E7EEEDC(v22, v24, v25, v23);
        v59 = v0[24];
        v61 = v0[27];
        v27 = v0[20];
        v26 = v0[21];
        v28 = v2;
        v29 = v1;
        v30 = *v26;
        v31 = v5;
        v32 = *(v52 + 8);
        sub_24E69BF7C(v26, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v30;
        v1 = v29;
        v2 = v28;
        v35 = v32;
        v5 = v31;
        sub_24E822CD0(v27, v34, v35, isUniquelyReferenced_nonNull_native);
        (*v55)(v61, v59);
        sub_24E69BFE0(v26);
        v8 = 0;
        v7 = v50;
        v6 = v51;
        goto LABEL_4;
      }
    }

    else
    {
    }

    v21 = 1;
    goto LABEL_13;
  }

  v36 = MEMORY[0x277D84F98];
LABEL_16:
  v37 = v0[45];
  v39 = v0[41];
  v38 = v0[42];

  (*(v38 + 8))(v37, v39);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v40 = v0[1];

  v40(v36);
}

uint64_t sub_24F376BEC()
{
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E7F0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BDB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "GamesDataIntentImplementation Failed to fetch LocalPlayerProvider from the ObjectGraph", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  sub_24F3770A4();
  swift_allocError();
  *v5 = 1;
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24F376DF4()
{
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[42];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F376F4C()
{
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[42];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

unint64_t sub_24F3770A4()
{
  result = qword_27F2406F0;
  if (!qword_27F2406F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2406F0);
  }

  return result;
}

uint64_t sub_24F377100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6C8, &unk_24F95CD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F377170()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F377240(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24E614970;

  return sub_24E80A2C0(a1, a2, v8, v2 + v7);
}

unint64_t sub_24F377354()
{
  result = qword_27F2406F8;
  if (!qword_27F2406F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2406F8);
  }

  return result;
}

uint64_t RemoveFriendAction.friendID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RemoveFriendAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveFriendAction(0) + 20);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RemoveFriendAction(uint64_t a1)
{
  result = qword_27F240718;
  if (!qword_27F240718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoveFriendAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoveFriendAction(0) + 20);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_24F377564()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x4449646E65697266;
  }
}

uint64_t sub_24F3775AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449646E65697266 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_24F377690(uint64_t a1)
{
  v2 = sub_24F3778AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3776CC(uint64_t a1)
{
  v2 = sub_24F3778AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoveFriendAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240700, &qword_24F9EB1B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3778AC();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for RemoveFriendAction(0);
    v8[14] = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F3778AC()
{
  result = qword_27F240708;
  if (!qword_27F240708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240708);
  }

  return result;
}

uint64_t RemoveFriendAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_24F928AD8();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240710, &qword_24F9EB1B8);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for RemoveFriendAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3778AC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = 1;
  sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
  sub_24F92CC68();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_24E693FCC(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F377C10(v10);
}

uint64_t sub_24F377C10(uint64_t a1)
{
  v2 = type metadata accessor for RemoveFriendAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F377CB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F377D70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24F377E28()
{
  result = qword_27F240728;
  if (!qword_27F240728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240728);
  }

  return result;
}

unint64_t sub_24F377E80()
{
  result = qword_27F240730;
  if (!qword_27F240730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240730);
  }

  return result;
}

unint64_t sub_24F377ED8()
{
  result = qword_27F240738;
  if (!qword_27F240738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240738);
  }

  return result;
}

uint64_t sub_24F377F2C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a4;
  v7 = sub_24F924038();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  KeyPath = swift_getKeyPath();
  v19[0] = a1;
  v20 = KeyPath;
  v21 = 0;
  MEMORY[0x25304C420](v19, a2, &type metadata for HeroGradientFadeOutModifier, a3);

  v15 = sub_24F3147F4();
  v18[1] = a3;
  v18[2] = v15;
  swift_getWitnessTable();
  sub_24E7896B8();
  v16 = *(v8 + 8);
  v16(v10, v7);
  sub_24E7896B8();
  return (v16)(v13, v7);
}

uint64_t sub_24F3780E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_24F924848();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 1) == 0)
  {

    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a3, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(a3) = v19[15];
  }

  v15 = qword_24F9EB788[a3];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240740, &qword_24F9EB620);
  (*(*(v16 - 8) + 16))(a5, a1, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240748, &qword_24F9EB628);
  v18 = a5 + *(result + 36);
  *v18 = a2 & 1;
  *(v18 + 8) = v15;
  return result;
}

uint64_t sub_24F3782DC(uint64_t a1, char a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2407E0, &qword_24F9EB750);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2407E8, &qword_24F9EB758);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  if (a2)
  {
    v12 = sub_24F927618();
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    *(v15 + 24) = a3;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2407F0, &qword_24F9EB760);
    (*(*(v16 - 8) + 16))(v11, a1, v16);
    v17 = &v11[*(v9 + 36)];
    *v17 = v12;
    v17[1] = v14;
    v17[2] = sub_24F379BBC;
    v17[3] = v15;
    sub_24E60169C(v11, v8, &qword_27F2407E8, &qword_24F9EB758);
    swift_storeEnumTagMultiPayload();
    sub_24F379AC8();
    sub_24E602068(&qword_27F240800, &qword_27F2407F0, &qword_24F9EB760, MEMORY[0x277CE04B0]);
    sub_24F924E28();
    return sub_24E601704(v11, &qword_27F2407E8, &qword_24F9EB758);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2407F0, &qword_24F9EB760);
    (*(*(v19 - 8) + 16))(v8, a1, v19);
    swift_storeEnumTagMultiPayload();
    sub_24F379AC8();
    sub_24E602068(&qword_27F240800, &qword_27F2407F0, &qword_24F9EB760, MEMORY[0x277CE04B0]);
    return sub_24F924E28();
  }
}

double sub_24F3785C8@<D0>(uint64_t a1@<X8>)
{
  sub_24F927898();
  sub_24F923998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F93A400;
  *(v3 + 32) = sub_24F926C98();
  *(v3 + 40) = sub_24F926C88();
  MEMORY[0x25304CD70](v3);
  sub_24F923BD8();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_24F3786A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240778, &qword_24F9EB658);
  MEMORY[0x28223BE20](v30);
  v4 = (&v28 - v3);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240780, &unk_24F9EB660);
  MEMORY[0x28223BE20](v31);
  v6 = &v28 - v5;
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a1 + 8);
  v11 = *a1;
  v68 = *a1;
  if (v69 == 1)
  {
    v12 = v11;
  }

  else
  {

    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v68, &qword_27F218208, &qword_24F94E940);
    (*(v8 + 8))(v10, v7);
    v12 = *v66;
  }

  if (v12 <= 1580.0)
  {
    *v4 = sub_24F926C88();
    swift_storeEnumTagMultiPayload();
    sub_24F37966C();
    return sub_24F924E28();
  }

  else
  {
    v29 = sub_24F9249A8();
    v50 = 0;
    sub_24F378C00(a1, &v34);
    v63 = v46;
    v64 = v47;
    v59 = v42;
    v60 = v43;
    v61 = v44;
    v62 = v45;
    v55 = v38;
    v56 = v39;
    v57 = v40;
    v58 = v41;
    v51 = v34;
    v52 = v35;
    v53 = v36;
    v54 = v37;
    v66[12] = v46;
    v66[13] = v47;
    v66[8] = v42;
    v66[9] = v43;
    v66[10] = v44;
    v66[11] = v45;
    v66[4] = v38;
    v66[5] = v39;
    v66[6] = v40;
    v66[7] = v41;
    v66[0] = v34;
    v66[1] = v35;
    v65 = v48;
    v67 = v48;
    v66[2] = v36;
    v66[3] = v37;
    sub_24E60169C(&v51, &v33, &qword_27F2407A0, &qword_24F9EB680);
    sub_24E601704(v66, &qword_27F2407A0, &qword_24F9EB680);
    *(&v49[11] + 7) = v62;
    *(&v49[12] + 7) = v63;
    *(&v49[13] + 7) = v64;
    *(&v49[7] + 7) = v58;
    *(&v49[8] + 7) = v59;
    *(&v49[9] + 7) = v60;
    *(&v49[10] + 7) = v61;
    *(&v49[3] + 7) = v54;
    *(&v49[4] + 7) = v55;
    *(&v49[5] + 7) = v56;
    *(&v49[6] + 7) = v57;
    *(v49 + 7) = v51;
    *(&v49[1] + 7) = v52;
    *(&v49[14] + 7) = v65;
    *(&v49[2] + 7) = v53;
    v14 = v50;
    KeyPath = swift_getKeyPath();
    v16 = &v6[*(v31 + 36)];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224AE0, &qword_24F973530) + 28);
    v18 = *MEMORY[0x277CDFA88];
    v19 = sub_24F923F78();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = KeyPath;
    v20 = v49[10];
    *(v6 + 193) = v49[11];
    v21 = v49[13];
    *(v6 + 209) = v49[12];
    *(v6 + 225) = v21;
    *(v6 + 15) = *(&v49[13] + 15);
    v22 = v49[6];
    *(v6 + 129) = v49[7];
    v23 = v49[9];
    *(v6 + 145) = v49[8];
    *(v6 + 161) = v23;
    *(v6 + 177) = v20;
    v24 = v49[2];
    *(v6 + 65) = v49[3];
    v25 = v49[5];
    *(v6 + 81) = v49[4];
    *(v6 + 97) = v25;
    *(v6 + 113) = v22;
    v26 = v49[1];
    *(v6 + 17) = v49[0];
    *(v6 + 33) = v26;
    *v6 = v29;
    *(v6 + 1) = 0;
    v6[16] = v14;
    *(v6 + 49) = v24;
    sub_24E60169C(v6, v4, &qword_27F240780, &unk_24F9EB660);
    swift_storeEnumTagMultiPayload();
    sub_24F37966C();
    sub_24F924E28();
    return sub_24E601704(v6, &qword_27F240780, &unk_24F9EB660);
  }
}

uint64_t sub_24F378C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_bridgeObjectRetain_n();
  sub_24F9273D8();
  sub_24F9278B8();
  sub_24F9278C8();
  sub_24F923BD8();
  sub_24F927618();
  sub_24F9238C8();
  v8 = sub_24F926C88();
  v66 = *(a1 + 24);
  v9 = *(a1 + 16);
  v65 = v9;
  if (v66 == 1)
  {
    v52 = v9;
  }

  else
  {

    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    v35 = v8;
    v11 = v4;
    v12 = v10;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v65, &qword_27F218208, &qword_24F94E940);
    v13 = v11;
    v8 = v35;
    (*(v5 + 8))(v7, v13);
  }

  sub_24F927618();
  sub_24F9238C8();
  v14 = v60;
  v34 = v61;
  v35 = v59;
  v15 = v62;
  v16 = v63;
  v17 = v64;
  sub_24F9273D8();
  sub_24F9278C8();
  sub_24F9278B8();
  sub_24F923BD8();
  sub_24F927618();
  sub_24F9238C8();
  v18 = v55;
  v19 = v56;
  v44[2] = v55;
  v44[3] = v56;
  v20 = v57;
  v44[4] = v57;
  v21 = v54;
  v44[0] = v53;
  v44[1] = v54;
  v22 = v38;
  v23 = v38;
  v46[0] = v38;
  v46[1] = v39;
  v24 = v42;
  v46[4] = v42;
  v25 = v40;
  v26 = v40;
  v46[2] = v40;
  v46[3] = v41;
  *a2 = v53;
  *(a2 + 16) = v21;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 32) = v18;
  v27 = v39;
  v28 = v39;
  *(a2 + 144) = v22;
  *(a2 + 160) = v27;
  v29 = v41;
  *(a2 + 192) = v41;
  *(a2 + 208) = v24;
  *(a2 + 176) = v25;
  v45 = v58;
  v37 = v14;
  v36 = v15;
  v30 = v43;
  v47 = v43;
  *(a2 + 80) = v58;
  *(a2 + 88) = v8;
  v31 = v34;
  *(a2 + 96) = v35;
  *(a2 + 104) = v14;
  *(a2 + 112) = v31;
  *(a2 + 120) = v15;
  *(a2 + 128) = v16;
  *(a2 + 136) = v17;
  *(a2 + 224) = v30;
  v48[0] = v23;
  v48[1] = v28;
  v49 = v43;
  v48[3] = v29;
  v48[4] = v42;
  v48[2] = v26;
  sub_24E60169C(v44, v50, &qword_27F2248A0, &qword_24F9736E0);

  sub_24E60169C(v46, v50, &qword_27F2248A0, &qword_24F9736E0);
  sub_24E601704(v48, &qword_27F2248A0, &qword_24F9736E0);

  v50[2] = v55;
  v50[3] = v56;
  v50[4] = v57;
  v51 = v58;
  v50[0] = v53;
  v50[1] = v54;
  return sub_24E601704(v50, &qword_27F2248A0, &qword_24F9736E0);
}

uint64_t sub_24F379084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v5;
  v26 = *(v2 + 32);
  v6 = sub_24F927618();
  v8 = v7;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240750, &qword_24F9EB630) + 36));
  v10 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240758, &qword_24F9EB638) + 36);
  sub_24F3786A0(v25, v10);
  v11 = sub_24F925818();
  sub_24F923318();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240760, &qword_24F9EB640) + 36);
  *v20 = v11;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  *v9 = v6;
  v9[1] = v8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240768, &qword_24F9EB648);
  (*(*(v21 - 8) + 16))(a2, a1, v21);
  v22 = sub_24F927728();
  LOBYTE(v6) = sub_24F379510(*&v25[0], BYTE8(v25[0]) & 1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240770, &qword_24F9EB650);
  v24 = a2 + *(result + 36);
  *v24 = v22;
  *(v24 + 8) = v6 & 1;
  return result;
}

uint64_t sub_24F37921C@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F9AF330;
  sub_24F926C88();
  sub_24F926D08();

  *(v4 + 32) = sub_24F9273C8();
  *(v4 + 40) = v5;
  sub_24F926C88();
  sub_24F926D08();

  *(v4 + 48) = sub_24F9273C8();
  *(v4 + 56) = v6;
  sub_24F926C88();
  sub_24F926D08();

  *(v4 + 64) = sub_24F9273C8();
  *(v4 + 72) = v7;
  sub_24F926C88();
  sub_24F926D08();

  *(v4 + 80) = sub_24F9273C8();
  *(v4 + 88) = v8;
  sub_24F926C88();
  sub_24F926D08();

  *(v4 + 96) = sub_24F9273C8();
  *(v4 + 104) = v9;
  sub_24F926C88();
  sub_24F926D08();

  *(v4 + 112) = sub_24F9273C8();
  *(v4 + 120) = v10;
  sub_24F926C88();
  result = sub_24F9273C8();
  *(v4 + 128) = result;
  *(v4 + 136) = v12;
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_24F379420(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24F379474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL sub_24F379510(uint64_t a1, char a2)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = *&a1;
  }

  else
  {

    sub_24F92BDC8();
    v9 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a1, 0);
    (*(v5 + 8))(v7, v4);
    v8 = *&v11[1];
  }

  return v8 > 1580.0;
}

unint64_t sub_24F37966C()
{
  result = qword_27F240788;
  if (!qword_27F240788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240780, &unk_24F9EB660);
    sub_24E602068(&qword_27F240790, &qword_27F240798, &unk_24F9EB670, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F224BE0, &qword_27F224AE0, &qword_24F973530, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240788);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeroFadeOutModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeroFadeOutModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24F379800()
{
  result = qword_27F2407A8;
  if (!qword_27F2407A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240748, &qword_24F9EB628);
    sub_24E602068(&qword_27F2407B0, &qword_27F240740, &qword_24F9EB620, MEMORY[0x277CE04B0]);
    sub_24F3798B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2407A8);
  }

  return result;
}

unint64_t sub_24F3798B8()
{
  result = qword_27F2407B8;
  if (!qword_27F2407B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2407B8);
  }

  return result;
}

unint64_t sub_24F379910()
{
  result = qword_27F2407C0;
  if (!qword_27F2407C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240770, &qword_24F9EB650);
    sub_24F3799C8();
    sub_24E602068(&qword_27F218870, &unk_27F2364C0, qword_24F962AC0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2407C0);
  }

  return result;
}

unint64_t sub_24F3799C8()
{
  result = qword_27F2407C8;
  if (!qword_27F2407C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240750, &qword_24F9EB630);
    sub_24E602068(&qword_27F2407D0, &qword_27F240768, &qword_24F9EB648, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F2407D8, &qword_27F240758, &qword_24F9EB638, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2407C8);
  }

  return result;
}

unint64_t sub_24F379AC8()
{
  result = qword_27F2407F8;
  if (!qword_27F2407F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2407E8, &qword_24F9EB758);
    sub_24E602068(&qword_27F240800, &qword_27F2407F0, &qword_24F9EB760, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F240808, &qword_27F240810, &unk_24F9EB768, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2407F8);
  }

  return result;
}

unint64_t sub_24F379BCC()
{
  result = qword_27F240818;
  if (!qword_27F240818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240820, &unk_24F9EB778);
    sub_24F379AC8();
    sub_24E602068(&qword_27F240800, &qword_27F2407F0, &qword_24F9EB760, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240818);
  }

  return result;
}

uint64_t sub_24F379CA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F379DEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ActiveChallengesShelfIntent(uint64_t a1)
{
  result = qword_27F240828;
  if (!qword_27F240828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F379F68(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24F37A0E4(319, &qword_27F240838, type metadata accessor for Challenge, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24E8EF898(319, &qword_27F240840, &qword_27F231BE8, &qword_24F9A7620);
      if (v3 <= 0x3F)
      {
        sub_24E8EF898(319, &qword_27F240848, &qword_27F231BF8, qword_24FA24E10);
        if (v4 <= 0x3F)
        {
          sub_24F37A0E4(319, &qword_27F21ADC8, type metadata accessor for Game, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F37A0E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F37A148@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240860, &unk_24F9EB930);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v20 - v9;
  active = type metadata accessor for ActiveChallengesShelfIntent(0);
  MEMORY[0x28223BE20](active);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24F37ADD0();
  v23 = v10;
  v15 = v25;
  sub_24F92D108();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v25 = v5;
  v16 = v22;
  LOBYTE(v28) = 0;
  *v13 = sub_24F92CC28();
  v13[1] = v17;
  LOBYTE(v28) = 1;
  sub_24F37B040(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v8, v13 + active[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AEE0, &qword_24F9598D0);
  v27 = 2;
  sub_24F37AE24();
  sub_24F92CC68();
  *(v13 + active[6]) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231BE8, &qword_24F9A7620);
  v27 = 3;
  sub_24F37AED8();
  sub_24F92CC18();
  *(v13 + active[7]) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231BF8, qword_24FA24E10);
  v27 = 4;
  sub_24F37AF8C();
  sub_24F92CC18();
  *(v13 + active[8]) = v28;
  v27 = 5;
  sub_24F368F98();
  sub_24F92CC68();
  *(v13 + active[9]) = v28;
  type metadata accessor for Game(0);
  LOBYTE(v28) = 6;
  sub_24F37B040(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v18 = v25;
  sub_24F92CC18();
  sub_24E7374E4(v18, active[10]);
  v27 = 7;
  sub_24F368FEC();
  sub_24F92CC68();
  (*(v16 + 8))(v23, v24);
  *active[11] = v28;
  sub_24F37B088(0, v21);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_24F37B0EC(0, type metadata accessor for ActiveChallengesShelfIntent);
}

uint64_t sub_24F37A7D0()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 1701667175;
  if (v1 != 6)
  {
    v3 = 0x4379616C70736964;
  }

  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0x5479616C70736964;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0x726579616C70;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F37A8E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F37B264(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F37A908(uint64_t a1)
{
  v2 = sub_24F37ADD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F37A944(uint64_t a1)
{
  v2 = sub_24F37ADD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F37A9B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65676F5479616C70;
  }

  else
  {
    v3 = 0x676E656C6C616863;
  }

  if (v2)
  {
    v4 = 0xEC00000062754865;
  }

  else
  {
    v4 = 0xEC00000072656874;
  }

  if (*a2)
  {
    v5 = 0x65676F5479616C70;
  }

  else
  {
    v5 = 0x676E656C6C616863;
  }

  if (*a2)
  {
    v6 = 0xEC00000072656874;
  }

  else
  {
    v6 = 0xEC00000062754865;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F37AA70()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F37AB04(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F37AB84()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F37AC14@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24F37AC74(uint64_t *a1@<X8>)
{
  v2 = 0x676E656C6C616863;
  if (*v1)
  {
    v2 = 0x65676F5479616C70;
  }

  v3 = 0xEC00000062754865;
  if (*v1)
  {
    v3 = 0xEC00000072656874;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24F37AD28()
{
  result = qword_27F240850;
  if (!qword_27F240850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240850);
  }

  return result;
}

unint64_t sub_24F37AD7C()
{
  result = qword_27F240858;
  if (!qword_27F240858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240858);
  }

  return result;
}

unint64_t sub_24F37ADD0()
{
  result = qword_27F240868;
  if (!qword_27F240868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240868);
  }

  return result;
}

unint64_t sub_24F37AE24()
{
  result = qword_27F21AF08;
  if (!qword_27F21AF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21AEE0, &qword_24F9598D0);
    sub_24F37B040(&qword_27F21AF10, type metadata accessor for Challenge, &protocol conformance descriptor for Challenge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21AF08);
  }

  return result;
}

unint64_t sub_24F37AED8()
{
  result = qword_27F240870;
  if (!qword_27F240870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231BE8, &qword_24F9A7620);
    sub_24F37B040(&qword_27F21DD48, type metadata accessor for ChallengeDetail, &protocol conformance descriptor for ChallengeDetail);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240870);
  }

  return result;
}

unint64_t sub_24F37AF8C()
{
  result = qword_27F240878;
  if (!qword_27F240878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231BF8, qword_24FA24E10);
    sub_24F37B040(&qword_27F240880, type metadata accessor for CompletedChallengeSummary, &unk_24F9A722C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240878);
  }

  return result;
}

uint64_t sub_24F37B040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F37B088(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveChallengesShelfIntent(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_24F37B0EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F37B160()
{
  result = qword_27F240888;
  if (!qword_27F240888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240888);
  }

  return result;
}

unint64_t sub_24F37B1B8()
{
  result = qword_27F240890;
  if (!qword_27F240890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240890);
  }

  return result;
}

unint64_t sub_24F37B210()
{
  result = qword_27F240898;
  if (!qword_27F240898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240898);
  }

  return result;
}

uint64_t sub_24F37B264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA74550 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA465A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024FA5FBA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4379616C70736964 && a2 == 0xEE00747865746E6FLL)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t Player.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F37B534()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F68, &qword_24F93A2E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v23 - v2;
  v4 = sub_24F91F1A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_24F92B098();
  v10 = [v8 BOOLForKey_];

  v11 = type metadata accessor for Player(0);
  if (v10)
  {
    v12 = (v0 + v11[9]);
    if (v12[1] == 1)
    {
      v13 = (v0 + v11[8]);
      v14 = *v13;
      if (!v13[1])
      {
        v14 = *(v0 + v11[7]);
      }
    }

    else
    {
      v15 = v12[10];
      v16 = v12[9];
      v26 = v12[8];
      v27 = v15;
      v17 = v12[6];
      v28 = v12[4];
      v29 = v17;
      v25 = v12[2];
      v18 = *v12;
      v23[1] = v16;
      v23[2] = v18;
      v30 = v11;
      v24 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
      [v24 setStyle_];
      (*(v5 + 56))(v3, 1, 1, v4);

      sub_24F91F178();
      v19 = sub_24F91F188();
      (*(v5 + 8))(v7, v4);
      v20 = v24;
      v21 = [v24 stringFromPersonNameComponents_];

      v14 = sub_24F92B0D8();
    }
  }

  else
  {
    v14 = *(v0 + v11[7]);
  }

  return v14;
}

uint64_t Player.debugDescription.getter()
{
  v1 = v0;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220, &unk_24F9DFEB0);
  MEMORY[0x28223BE20](v115);
  v113 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v114 = &v107 - v4;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220, &unk_24F9F2E30);
  MEMORY[0x28223BE20](v112);
  v110 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v107 - v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  MEMORY[0x28223BE20](v109);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v108 = &v107 - v13;
  *&v129[0] = 0x3C726579616C50;
  *(&v129[0] + 1) = 0xE700000000000000;
  MEMORY[0x253050C20](*v0, v0[1], v12);
  MEMORY[0x253050C20](2622, 0xE200000000000000);
  v14 = v129[0];
  *&v129[0] = 0x203A656D616E2020;
  *(&v129[0] + 1) = 0xE800000000000000;
  v15 = type metadata accessor for Player(0);
  MEMORY[0x253050C20](*(v1 + *(v15 + 28)), *(v1 + *(v15 + 28) + 8));
  MEMORY[0x253050C20](10, 0xE100000000000000);
  v16 = v129[0];
  v129[0] = v14;

  MEMORY[0x253050C20](v16, *(&v16 + 1));

  v17 = v129[0];
  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v129[0] = 0x6361746E6F632020;
  *(&v129[0] + 1) = 0xEF203A656D614E74;
  v116 = v15;
  v111 = v8;

  MEMORY[0x253050C20](*(&v14 + 1), *(&v16 + 1));

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v18 = v129[0];
  v129[0] = v17;

  MEMORY[0x253050C20](v18, *(&v18 + 1));

  v19 = v129[0];
  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v129[0] = 0xD000000000000016;
  *(&v129[0] + 1) = 0x800000024FA74570;
  v20 = v116;
  *&v123 = *(v0 + v116[11]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225240, &qword_24F974E70);
  v21 = sub_24F92B188();
  MEMORY[0x253050C20](v21);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v22 = v129[0];
  v129[0] = v19;

  MEMORY[0x253050C20](v22, *(&v22 + 1));

  v23 = v129[0];
  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v129[0] = 0xD000000000000017;
  *(&v129[0] + 1) = 0x800000024FA74590;
  *&v123 = *(v0 + v20[12]);

  v24 = sub_24F92B188();
  MEMORY[0x253050C20](v24);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v25 = v129[0];
  v129[0] = v23;

  MEMORY[0x253050C20](v25, *(&v25 + 1));

  v26 = v129[0];
  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  strcpy(v134, "  handleSet: ");
  HIWORD(v134[1]) = -4864;
  sub_24E60169C(v0 + v20[13], v10, &unk_27F23E170, &unk_24F9EBA60);
  v27 = type metadata accessor for CallProviderConversationHandleSet(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v10, 1, v27) == 1)
  {
    (*(v28 + 56))(v108, 1, 1, v27);
    if (v29(v10, 1, v27) != 1)
    {
      sub_24E601704(v10, &unk_27F23E170, &unk_24F9EBA60);
    }
  }

  else
  {
    v30 = v108;
    sub_24F37CA40(v10, v108, type metadata accessor for CallProviderConversationHandleSet);
    (*(v28 + 56))(v30, 0, 1, v27);
  }

  v31 = sub_24F92B188();
  MEMORY[0x253050C20](v31);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v32 = v134[0];
  v33 = v134[1];
  v129[0] = v26;

  MEMORY[0x253050C20](v32, v33);

  v34 = v129[0];
  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  v35 = v116;
  v36 = (v1 + v116[9]);
  v37 = v36[3];
  v38 = v36[1];
  v130 = v36[2];
  v131 = v37;
  v39 = v36[3];
  v40 = v36[5];
  v132 = v36[4];
  v133 = v40;
  v41 = v36[1];
  v129[0] = *v36;
  v129[1] = v41;
  v125 = v130;
  v126 = v39;
  v42 = v36[5];
  v127 = v132;
  v128 = v42;
  v117 = 0xD000000000000019;
  v118 = 0x800000024FA745B0;
  v123 = v129[0];
  v124 = v38;
  sub_24E60169C(v129, v122, &qword_27F212F50, &qword_24F9EBA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F50, &qword_24F9EBA70);
  v43 = sub_24F92B188();
  MEMORY[0x253050C20](v43);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v44 = v117;
  v45 = v118;
  v123 = v34;

  MEMORY[0x253050C20](v44, v45);

  v46 = v123;
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v123 = 0xD000000000000011;
  *(&v123 + 1) = 0x800000024FA745D0;
  v47 = (v1 + v35[10]);
  if (v47[1])
  {
    v48 = *v47;
    v49 = v47[1];
  }

  else
  {
    v48 = 7104878;
    v49 = 0xE300000000000000;
  }

  MEMORY[0x253050C20](v48, v49);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v50 = v123;
  v123 = v46;

  MEMORY[0x253050C20](v50, *(&v50 + 1));

  v51 = v123;
  *&v123 = 0x7261746176612020;
  *(&v123 + 1) = 0xEA0000000000203ALL;
  MEMORY[0x253050C20](v1[2], v1[3]);
  MEMORY[0x253050C20](10, 0xE100000000000000);
  v52 = v123;
  v123 = v51;

  MEMORY[0x253050C20](v52, *(&v52 + 1));

  v53 = v123;
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  sub_24F92C888();

  v54 = v116;
  v55 = *(v1 + v116[14]);
  v120 = 0xD000000000000016;
  v121 = 0x800000024FA745F0;
  if (v55)
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if (v55)
  {
    v57 = 0xE400000000000000;
  }

  else
  {
    v57 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v56, v57);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v58 = v120;
  v59 = v121;
  v123 = v53;

  MEMORY[0x253050C20](v58, v59);

  v60 = v123;
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  sub_24F92C888();

  v61 = (v1 + v54[15]);
  v62 = v61[1];
  v123 = *v61;
  v124 = v62;
  v63 = v61[3];
  v65 = *v61;
  v64 = v61[1];
  v125 = v61[2];
  v126 = v63;
  strcpy(v119, "  inboxEntry: ");
  HIBYTE(v119[1]) = -18;
  v122[0] = v65;
  v122[1] = v64;
  v66 = v61[3];
  v122[2] = v61[2];
  v122[3] = v66;
  sub_24E60169C(&v123, &v117, &qword_27F2408A0, &qword_24F9EBA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2408A0, &qword_24F9EBA78);
  v67 = sub_24F92B188();
  MEMORY[0x253050C20](v67);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v68 = v119[0];
  v69 = v119[1];
  v122[0] = v60;

  MEMORY[0x253050C20](v68, v69);

  v70 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v122[0] = 0xD00000000000001ALL;
  *(&v122[0] + 1) = 0x800000024FA74610;
  v71 = v1 + v54[16];
  v72 = v110;
  sub_24E60169C(v71, v110, &unk_27F23E220, &unk_24F9F2E30);
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v74 = *(PlayedTogetherInfo - 8);
  v75 = *(v74 + 48);
  if (v75(v72, 1, PlayedTogetherInfo) == 1)
  {
    (*(v74 + 56))(v111, 1, 1, PlayedTogetherInfo);
    v76 = v75(v72, 1, PlayedTogetherInfo) == 1;
    v77 = v72;
    v78 = v114;
    if (!v76)
    {
      sub_24E601704(v77, &unk_27F23E220, &unk_24F9F2E30);
    }
  }

  else
  {
    v79 = v111;
    sub_24F37CA40(v72, v111, type metadata accessor for Player.LastPlayedTogetherInfo);
    (*(v74 + 56))(v79, 0, 1, PlayedTogetherInfo);
    v78 = v114;
  }

  v80 = sub_24F92B188();
  MEMORY[0x253050C20](v80);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v81 = v122[0];
  v122[0] = v70;

  MEMORY[0x253050C20](v81, *(&v81 + 1));

  v82 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v122[0] = 0xD000000000000015;
  *(&v122[0] + 1) = 0x800000024FA74630;
  v83 = v113;
  sub_24E60169C(v1 + v116[17], v113, &unk_27F247220, &unk_24F9DFEB0);
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v85 = *(ChallengeInfo - 8);
  v86 = *(v85 + 48);
  if (v86(v83, 1, ChallengeInfo) == 1)
  {
    (*(v85 + 56))(v78, 1, 1, ChallengeInfo);
    if (v86(v83, 1, ChallengeInfo) != 1)
    {
      sub_24E601704(v83, &unk_27F247220, &unk_24F9DFEB0);
    }
  }

  else
  {
    sub_24F37CA40(v83, v78, type metadata accessor for Player.LastChallengeInfo);
    (*(v85 + 56))(v78, 0, 1, ChallengeInfo);
  }

  v87 = sub_24F92B188();
  MEMORY[0x253050C20](v87);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v88 = v122[0];
  v122[0] = v82;

  MEMORY[0x253050C20](v88, *(&v88 + 1));

  v89 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  v90 = v116;
  v91 = *(v1 + v116[18]);
  *&v122[0] = 0xD00000000000001ELL;
  *(&v122[0] + 1) = 0x800000024FA74650;
  if (v91)
  {
    v92 = 1702195828;
  }

  else
  {
    v92 = 0x65736C6166;
  }

  if (v91)
  {
    v93 = 0xE400000000000000;
  }

  else
  {
    v93 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v92, v93);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v94 = v122[0];
  v122[0] = v89;

  MEMORY[0x253050C20](v94, *(&v94 + 1));

  v95 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA74670);
  LOBYTE(v117) = *(v1 + v90[19]);
  sub_24F92CA38();
  MEMORY[0x253050C20](10, 0xE100000000000000);
  v96 = v122[0];
  v122[0] = v95;

  MEMORY[0x253050C20](v96, *(&v96 + 1));

  v97 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v122[0] = 0xD000000000000014;
  *(&v122[0] + 1) = 0x800000024FA74690;
  LOBYTE(v117) = *(v1 + v90[20]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8, &unk_24F9C4EF0);
  v98 = sub_24F92B188();
  MEMORY[0x253050C20](v98);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v99 = v122[0];
  v122[0] = v97;

  MEMORY[0x253050C20](v99, *(&v99 + 1));

  v100 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v122[0] = 0xD00000000000001FLL;
  *(&v122[0] + 1) = 0x800000024FA746B0;
  LOBYTE(v117) = *(v1 + v90[21]);
  v101 = sub_24F92B188();
  MEMORY[0x253050C20](v101);

  MEMORY[0x253050C20](10, 0xE100000000000000);
  v102 = v122[0];
  v122[0] = v100;

  MEMORY[0x253050C20](v102, *(&v102 + 1));

  v103 = v122[0];
  *&v122[0] = 0;
  *(&v122[0] + 1) = 0xE000000000000000;
  sub_24F92C888();

  *&v122[0] = 0xD000000000000013;
  *(&v122[0] + 1) = 0x800000024FA746D0;
  LOBYTE(v117) = *(v1 + v90[22]);
  v104 = sub_24F92B188();
  MEMORY[0x253050C20](v104);

  v105 = v122[0];
  v122[0] = v103;

  MEMORY[0x253050C20](v105, *(&v105 + 1));

  return *&v122[0];
}

uint64_t sub_24F37CA40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F37CAA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2409D0, &qword_24F9EC098);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F384CB8();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Game(0);
  sub_24F380998(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for Player.LastChallengeInfo(0);
    v8[14] = 1;
    sub_24F92CD28();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F37CC60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2409F0, &qword_24F9EC0A8);
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v19 - v6;
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  MEMORY[0x28223BE20](ChallengeInfo);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F384CB8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v10;
  v12 = v20;
  v13 = v21;
  v25 = 0;
  sub_24F380998(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CC68();
  v14 = v11;
  sub_24F37CA40(v22, v11, type metadata accessor for Game);
  v24 = 1;
  v15 = v23;
  sub_24F92CC48();
  v17 = v16;
  (*(v12 + 8))(v7, v15);
  *(v14 + *(ChallengeInfo + 20)) = v17;
  sub_24F38456C(v14, v13, type metadata accessor for Player.LastChallengeInfo);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F384D60(v14, type metadata accessor for Player.LastChallengeInfo);
}

uint64_t sub_24F37CFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA74790 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA747B0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24F37D090(uint64_t a1)
{
  v2 = sub_24F384CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F37D0CC(uint64_t a1)
{
  v2 = sub_24F384CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F37D138@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000024FA74790;
  *(inited + 72) = type metadata accessor for Game(0);
  *(inited + 80) = sub_24F380998(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F38456C(v4, boxed_opaque_existential_1, type metadata accessor for Game);
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA747B0;
  v8 = *(v4 + *(a1 + 20));
  v9 = MEMORY[0x277D225A0];
  *(inited + 128) = MEMORY[0x277D839F8];
  *(inited + 136) = v9;
  *(inited + 104) = v8;
  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v10;
  return result;
}

uint64_t sub_24F37D334(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(v2 + 24))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  v4 = *(v2 + *(a2(0) + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x253052A30](*&v4);
}

uint64_t sub_24F37D3C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2409C0, &qword_24F9EC090);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F384C64();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for Game(0);
  sub_24F380998(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for Player.LastPlayedTogetherInfo(0);
    v8[14] = 1;
    sub_24F92CD28();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F37D57C(uint64_t (*a1)(void))
{
  sub_24F92D068();
  if (*(v1 + 24))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  v3 = *(v1 + *(a1(0) + 20));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x253052A30](*&v3);
  return sub_24F92D0B8();
}

uint64_t sub_24F37D630@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2409E8, &qword_24F9EC0A0);
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v19 - v6;
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  MEMORY[0x28223BE20](PlayedTogetherInfo);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F384C64();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v10;
  v12 = v20;
  v13 = v21;
  v25 = 0;
  sub_24F380998(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CC68();
  v14 = v11;
  sub_24F37CA40(v22, v11, type metadata accessor for Game);
  v24 = 1;
  v15 = v23;
  sub_24F92CC48();
  v17 = v16;
  (*(v12 + 8))(v7, v15);
  *(v14 + *(PlayedTogetherInfo + 20)) = v17;
  sub_24F38456C(v14, v13, type metadata accessor for Player.LastPlayedTogetherInfo);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F384D60(v14, type metadata accessor for Player.LastPlayedTogetherInfo);
}

uint64_t sub_24F37D948()
{
  if (*v0)
  {
    return 0x79616C507473616CLL;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24F37D988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79616C507473616CLL && a2 == 0xEE00657461446465)
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

uint64_t sub_24F37DA6C(uint64_t a1)
{
  v2 = sub_24F384C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F37DAA8(uint64_t a1)
{
  v2 = sub_24F384C64();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F37DB14@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 1701667175;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = type metadata accessor for Game(0);
  *(inited + 80) = sub_24F380998(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F38456C(v4, boxed_opaque_existential_1, type metadata accessor for Game);
  strcpy((inited + 88), "lastPlayedDate");
  *(inited + 103) = -18;
  v8 = *(v4 + *(a1 + 20));
  v9 = MEMORY[0x277D225A0];
  *(inited + 128) = MEMORY[0x277D839F8];
  *(inited + 136) = v9;
  *(inited + 104) = v8;
  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v10;
  return result;
}

uint64_t sub_24F37DD58(uint64_t a1, uint64_t a2)
{
  sub_24F92D068();
  if (*(v2 + 24))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x253052A30](*&v4);
  return sub_24F92D0B8();
}

unint64_t sub_24F37DDFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x7972616D697270;
    v11 = MEMORY[0x277D837D0];
    v12 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v12;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 88) = 0x7261646E6F636573;
    *(inited + 96) = 0xE900000000000079;
    *(inited + 128) = v11;
    *(inited + 136) = v12;
    *(inited + 104) = a3;
    *(inited + 112) = a4;

    v13 = sub_24E607D0C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
    swift_arrayDestroy();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_24F93DE60;
    *(v14 + 32) = 0x7972616D697270;
    v15 = MEMORY[0x277D22580];
    *(v14 + 72) = MEMORY[0x277D837D0];
    *(v14 + 80) = v15;
    *(v14 + 40) = 0xE700000000000000;
    *(v14 + 48) = a1;
    *(v14 + 56) = a2;

    v13 = sub_24E607D0C(v14);
    swift_setDeallocating();
    sub_24E601704(v14 + 32, &qword_27F212F18, &unk_24F93A2B0);
  }

  v16 = sub_24E80FFAC(v13);

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a5[3] = v17;
  a5[4] = result;
  *a5 = v16;
  return result;
}

unint64_t sub_24F37E014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F3845D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F37E044(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB00000000796C6ELL;
  v5 = 0x4F73646E65697266;
  if (v2 != 1)
  {
    v5 = 0x796C6E4F656DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E6F7972657665;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_24F37E158(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB00000000796C6ELL;
  v5 = 0x4F73646E65697266;
  if (v2 != 1)
  {
    v5 = 0x796C6E4F656DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E6F7972657665;
  }

  if (!v6)
  {
    v3 = v4;
  }

  v8 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v8;
  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24F37E1D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4F73646E65697266;
  v4 = 0xEB00000000796C6ELL;
  if (v2 != 1)
  {
    v3 = 0x796C6E4F656DLL;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656E6F7972657665;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x4F73646E65697266;
  v8 = 0xEB00000000796C6ELL;
  if (*a2 != 1)
  {
    v7 = 0x796C6E4F656DLL;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656E6F7972657665;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F37E2DC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F37E384(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F37E418()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F37E4BC(char *a1, char *a2)
{
  v2 = *a2;
  result = sub_24EB9B4E0(*a1, &unk_2861B2128);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_24EB9B4E0(v2, &unk_2861B2128);
    if ((v6 & 1) == 0)
    {
      return v5 < result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F37E518(char *a1, char *a2)
{
  v2 = *a1;
  result = sub_24EB9B4E0(*a2, &unk_2861B2128);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_24EB9B4E0(v2, &unk_2861B2128);
    if ((v6 & 1) == 0)
    {
      return v5 >= result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F37E574(char *a1, char *a2)
{
  v2 = *a2;
  result = sub_24EB9B4E0(*a1, &unk_2861B2178);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_24EB9B4E0(v2, &unk_2861B2178);
    if ((v6 & 1) == 0)
    {
      return v5 >= result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F37E5D0(char *a1, char *a2)
{
  v2 = *a1;
  result = sub_24EB9B4E0(*a2, &unk_2861B2150);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_24EB9B4E0(v2, &unk_2861B2150);
    if ((v6 & 1) == 0)
    {
      return v5 < result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Player.avatar.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Player.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for Player(0) + 28));

  return v1;
}

uint64_t sub_24F37E69C@<X0>(uint64_t a1@<X8>)
{
  v122 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A00, &qword_24F9EC0C8);
  MEMORY[0x28223BE20](v106);
  v107 = &v103 - v2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A08, &qword_24F9EC0D0);
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v104 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v109 = &v103 - v5;
  MEMORY[0x28223BE20](v6);
  v114 = &v103 - v7;
  MEMORY[0x28223BE20](v8);
  v115 = &v103 - v9;
  MEMORY[0x28223BE20](v10);
  v105 = &v103 - v11;
  MEMORY[0x28223BE20](v12);
  v112 = &v103 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220, &unk_24F9F2E30);
  MEMORY[0x28223BE20](v14 - 8);
  v117 = &v103 - v15;
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v116 = *(PlayedTogetherInfo - 8);
  MEMORY[0x28223BE20](PlayedTogetherInfo);
  v110 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220, &unk_24F9DFEB0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v103 - v18;
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v21 = *(ChallengeInfo - 8);
  MEMORY[0x28223BE20](ChallengeInfo);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A10, &qword_24F9EC0D8);
  MEMORY[0x28223BE20](v24 - 8);
  v108 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v113 = &v103 - v27;
  MEMORY[0x28223BE20](v28);
  v111 = &v103 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v103 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v103 - v34;
  MEMORY[0x28223BE20](v36);
  v120 = &v103 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v103 - v39;
  MEMORY[0x28223BE20](v41);
  v119 = (&v103 - v42);
  v43 = type metadata accessor for Player(0);
  v44 = v1;
  sub_24E60169C(v1 + *(v43 + 68), v19, &unk_27F247220, &unk_24F9DFEB0);
  if ((*(v21 + 48))(v19, 1, ChallengeInfo) == 1)
  {
    sub_24E601704(v19, &unk_27F247220, &unk_24F9DFEB0);
    v45 = 1;
  }

  else
  {
    sub_24F37CA40(v19, v23, type metadata accessor for Player.LastChallengeInfo);
    v46 = *(v123 + 48);
    sub_24F91F5D8();
    sub_24F37CA40(v23, &v40[v46], type metadata accessor for Game);
    v45 = 0;
  }

  v47 = v121;
  v48 = *(v121 + 56);
  v49 = v123;
  v48(v40, v45, 1, v123);
  v50 = v40;
  v51 = v119;
  sub_24E6009C8(v50, v119, &qword_27F240A10, &qword_24F9EC0D8);
  v52 = v44 + *(v43 + 64);
  v53 = v117;
  sub_24E60169C(v52, v117, &unk_27F23E220, &unk_24F9F2E30);
  if ((*(v116 + 48))(v53, 1, PlayedTogetherInfo) == 1)
  {
    sub_24E601704(v53, &unk_27F23E220, &unk_24F9F2E30);
    v54 = 1;
  }

  else
  {
    v55 = v110;
    sub_24F37CA40(v53, v110, type metadata accessor for Player.LastPlayedTogetherInfo);
    v56 = *(v49 + 48);
    sub_24F91F5D8();
    sub_24F37CA40(v55, &v35[v56], type metadata accessor for Game);
    v54 = 0;
  }

  v57 = v120;
  v48(v35, v54, 1, v49);
  sub_24E6009C8(v35, v57, &qword_27F240A10, &qword_24F9EC0D8);
  sub_24E60169C(v51, v32, &qword_27F240A10, &qword_24F9EC0D8);
  v58 = *(v47 + 48);
  if (v58(v32, 1, v49) != 1)
  {
    v59 = v112;
    sub_24E6009C8(v32, v112, &qword_27F240A08, &qword_24F9EC0D0);
    v32 = v111;
    sub_24E60169C(v57, v111, &qword_27F240A10, &qword_24F9EC0D8);
    if (v58(v32, 1, v49) != 1)
    {
      v76 = v105;
      sub_24E6009C8(v32, v105, &qword_27F240A08, &qword_24F9EC0D0);
      v77 = sub_24F91F588();
      sub_24E601704(v57, &qword_27F240A10, &qword_24F9EC0D8);
      sub_24E601704(v51, &qword_27F240A10, &qword_24F9EC0D8);
      LODWORD(v121) = v77 & 1;
      if (v77)
      {
        v78 = v76;
      }

      else
      {
        v78 = v59;
      }

      if (v77)
      {
        v79 = v59;
      }

      else
      {
        v79 = v76;
      }

      sub_24E601704(v78, &qword_27F240A08, &qword_24F9EC0D0);
      v80 = v106;
      v81 = *(v106 + 64);
      v82 = v115;
      sub_24E60169C(v79, v115, &qword_27F240A08, &qword_24F9EC0D0);
      v120 = *(v49 + 48);
      v83 = sub_24F91F648();
      v84 = *(v83 - 8);
      v119 = *(v84 + 32);
      v85 = v107;
      (v119)(v107, v82, v83);
      v86 = v79;
      v87 = v114;
      sub_24E6009C8(v86, v114, &qword_27F240A08, &qword_24F9EC0D0);
      sub_24F37CA40(v87 + *(v49 + 48), &v85[v81], type metadata accessor for Game);
      (*(v84 + 8))(v87, v83);
      sub_24F384D60(v82 + v120, type metadata accessor for Game);
      v88 = *(v80 + 64);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255210, &qword_24F9EC0E0);
      v90 = *(v89 + 48);
      v91 = *(v89 + 64);
      v92 = v122;
      (v119)(v122, v85, v83);
      *(v92 + v90) = v121;
      sub_24F37CA40(&v85[v88], v92 + v91, type metadata accessor for Game);
      return (*(*(v89 - 8) + 56))(v92, 0, 1, v89);
    }

    sub_24E601704(v59, &qword_27F240A08, &qword_24F9EC0D0);
  }

  sub_24E601704(v32, &qword_27F240A10, &qword_24F9EC0D8);
  v60 = v51;
  v61 = v113;
  sub_24E6009C8(v60, v113, &qword_27F240A10, &qword_24F9EC0D8);
  if (v58(v61, 1, v49) == 1)
  {
    sub_24E601704(v61, &qword_27F240A10, &qword_24F9EC0D8);
    v62 = v108;
    sub_24E6009C8(v57, v108, &qword_27F240A10, &qword_24F9EC0D8);
    if (v58(v62, 1, v49) == 1)
    {
      sub_24E601704(v62, &qword_27F240A10, &qword_24F9EC0D8);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255210, &qword_24F9EC0E0);
      return (*(*(v63 - 8) + 56))(v122, 1, 1, v63);
    }

    v93 = v104;
    sub_24E6009C8(v62, v104, &qword_27F240A08, &qword_24F9EC0D0);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255210, &qword_24F9EC0E0);
    v95 = *(v94 + 48);
    v96 = *(v94 + 64);
    v97 = v115;
    sub_24E60169C(v93, v115, &qword_27F240A08, &qword_24F9EC0D0);
    v121 = *(v49 + 48);
    v98 = sub_24F91F648();
    v99 = *(v98 - 8);
    v100 = v49;
    v101 = v122;
    (*(v99 + 32))(v122, v97, v98);
    *(v101 + v95) = 0;
    v102 = v114;
    sub_24E6009C8(v93, v114, &qword_27F240A08, &qword_24F9EC0D0);
    sub_24F37CA40(v102 + *(v100 + 48), v101 + v96, type metadata accessor for Game);
    (*(*(v94 - 8) + 56))(v101, 0, 1, v94);
    (*(v99 + 8))(v102, v98);
    v75 = v97 + v121;
  }

  else
  {
    sub_24E601704(v57, &qword_27F240A10, &qword_24F9EC0D8);
    v65 = v109;
    sub_24E6009C8(v61, v109, &qword_27F240A08, &qword_24F9EC0D0);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255210, &qword_24F9EC0E0);
    v67 = *(v66 + 48);
    v68 = *(v66 + 64);
    v69 = v115;
    sub_24E60169C(v65, v115, &qword_27F240A08, &qword_24F9EC0D0);
    v121 = *(v49 + 48);
    v70 = sub_24F91F648();
    v71 = v49;
    v72 = *(v70 - 8);
    v73 = v122;
    (*(v72 + 32))(v122, v69, v70);
    *(v73 + v67) = 1;
    v74 = v114;
    sub_24E6009C8(v65, v114, &qword_27F240A08, &qword_24F9EC0D0);
    sub_24F37CA40(v74 + *(v71 + 48), v73 + v68, type metadata accessor for Game);
    (*(*(v66 - 8) + 56))(v73, 0, 1, v66);
    (*(v72 + 8))(v74, v70);
    v75 = v69 + v121;
  }

  return sub_24F384D60(v75, type metadata accessor for Game);
}

uint64_t sub_24F37F45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v94 = a1;
  v95 = a2;
  v93 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2409F8, &unk_24F9EC0B0);
  MEMORY[0x28223BE20](v3 - 8);
  v82 = &v80 - v4;
  v5 = sub_24F91F648();
  v92 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v80 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v80 - v8;
  MEMORY[0x28223BE20](v9);
  v81 = &v80 - v10;
  MEMORY[0x28223BE20](v11);
  v87 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220, &unk_24F9F2E30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v80 - v14;
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v89 = *(PlayedTogetherInfo - 8);
  v90 = PlayedTogetherInfo;
  MEMORY[0x28223BE20](PlayedTogetherInfo);
  v85 = (&v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220, &unk_24F9DFEB0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v80 - v19;
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v22 = *(ChallengeInfo - 8);
  MEMORY[0x28223BE20](ChallengeInfo);
  v24 = (&v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v25 - 8);
  v83 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v88 = &v80 - v28;
  MEMORY[0x28223BE20](v29);
  v86 = &v80 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v80 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v80 - v35;
  MEMORY[0x28223BE20](v37);
  v96 = &v80 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v80 - v40;
  MEMORY[0x28223BE20](v42);
  v91 = &v80 - v43;
  v44 = type metadata accessor for Player(0);
  sub_24E60169C(v97 + *(v44 + 68), v20, &unk_27F247220, &unk_24F9DFEB0);
  if ((*(v22 + 48))(v20, 1, ChallengeInfo) == 1)
  {
    sub_24E601704(v20, &unk_27F247220, &unk_24F9DFEB0);
LABEL_3:
    v45 = 1;
    goto LABEL_8;
  }

  sub_24F37CA40(v20, v24, type metadata accessor for Player.LastChallengeInfo);
  if ((*v24 != v94 || v24[1] != v95) && (sub_24F92CE08() & 1) == 0)
  {
    sub_24F384D60(v24, type metadata accessor for Player.LastChallengeInfo);
    goto LABEL_3;
  }

  sub_24F91F5D8();
  sub_24F384D60(v24, type metadata accessor for Player.LastChallengeInfo);
  v45 = 0;
LABEL_8:
  v46 = v92;
  v47 = *(v92 + 56);
  v47(v41, v45, 1, v5);
  v48 = v91;
  sub_24E6009C8(v41, v91, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(v97 + *(v44 + 64), v15, &unk_27F23E220, &unk_24F9F2E30);
  if ((*(v89 + 48))(v15, 1, v90) == 1)
  {
    sub_24E601704(v15, &unk_27F23E220, &unk_24F9F2E30);
LABEL_10:
    v49 = 1;
    goto LABEL_15;
  }

  v50 = v85;
  sub_24F37CA40(v15, v85, type metadata accessor for Player.LastPlayedTogetherInfo);
  if ((*v50 != v94 || v50[1] != v95) && (sub_24F92CE08() & 1) == 0)
  {
    sub_24F384D60(v50, type metadata accessor for Player.LastPlayedTogetherInfo);
    goto LABEL_10;
  }

  sub_24F91F5D8();
  sub_24F384D60(v50, type metadata accessor for Player.LastPlayedTogetherInfo);
  v49 = 0;
LABEL_15:
  v47(v36, v49, 1, v5);
  v51 = v36;
  v52 = v96;
  sub_24E6009C8(v51, v96, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(v52, v33, &unk_27F22EC30, &qword_24F939880);
  v53 = *(v46 + 48);
  if (v53(v33, 1, v5) != 1)
  {
    v54 = *(v46 + 32);
    v55 = v87;
    v54(v87, v33, v5);
    v33 = v86;
    sub_24E60169C(v48, v86, &unk_27F22EC30, &qword_24F939880);
    if (v53(v33, 1, v5) != 1)
    {
      v65 = v33;
      v66 = v81;
      v54(v81, v65, v5);
      v67 = v55;
      v68 = sub_24F91F598();
      sub_24E601704(v96, &unk_27F22EC30, &qword_24F939880);
      sub_24E601704(v48, &unk_27F22EC30, &qword_24F939880);
      v69 = v68 & 1;
      if (v68)
      {
        v70 = v67;
      }

      else
      {
        v70 = v66;
      }

      if (v68)
      {
        v71 = v66;
      }

      else
      {
        v71 = v67;
      }

      (*(v46 + 8))(v70, v5);
      v72 = v82;
      v54(v82, v71, v5);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2551F0, &qword_24F9EC0C0);
      v73 = *(v62 + 48);
      v64 = v93;
      v54(v93, v72, v5);
      v64[v73] = v69;
      goto LABEL_29;
    }

    (*(v46 + 8))(v55, v5);
  }

  sub_24E601704(v33, &unk_27F22EC30, &qword_24F939880);
  v56 = v88;
  sub_24E6009C8(v96, v88, &unk_27F22EC30, &qword_24F939880);
  if (v53(v56, 1, v5) != 1)
  {
    sub_24E601704(v48, &unk_27F22EC30, &qword_24F939880);
    v60 = *(v46 + 32);
    v61 = v84;
    v60(v84, v56, v5);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2551F0, &qword_24F9EC0C0);
    v63 = *(v62 + 48);
    v64 = v93;
    v60(v93, v61, v5);
    v64[v63] = 0;
LABEL_29:
    v74 = *(*(v62 - 8) + 56);
    v75 = v64;
    return v74(v75, 0, 1, v62);
  }

  sub_24E601704(v56, &unk_27F22EC30, &qword_24F939880);
  v57 = v83;
  sub_24E6009C8(v48, v83, &unk_27F22EC30, &qword_24F939880);
  if (v53(v57, 1, v5) == 1)
  {
    sub_24E601704(v57, &unk_27F22EC30, &qword_24F939880);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2551F0, &qword_24F9EC0C0);
    return (*(*(v58 - 8) + 56))(v93, 1, 1, v58);
  }

  v76 = *(v46 + 32);
  v77 = v80;
  v76(v80, v57, v5);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2551F0, &qword_24F9EC0C0);
  v78 = *(v62 + 48);
  v79 = v93;
  v76(v93, v77, v5);
  v79[v78] = 1;
  v74 = *(*(v62 - 8) + 56);
  v75 = v79;
  return v74(v75, 0, 1, v62);
}

unint64_t Player.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F95BE60;
  *(v2 + 32) = 0x4449726579616C70;
  v3 = MEMORY[0x277D837D0];
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(v2 + 72) = MEMORY[0x277D837D0];
  *(v2 + 80) = v6;
  v7 = v3;
  v8 = v6;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = v4;
  *(v2 + 56) = v5;
  *(v2 + 88) = 1701667182;
  *(v2 + 96) = 0xE400000000000000;
  v9 = type metadata accessor for Player(0);
  v10 = (v1 + v9[7]);
  v11 = *v10;
  v58 = v10[1];
  *(v2 + 128) = v7;
  *(v2 + 136) = v8;
  *(v2 + 104) = v11;
  *(v2 + 112) = v58;
  *(v2 + 144) = 0x4E746361746E6F63;
  *(v2 + 152) = 0xEB00000000656D61;
  v12 = (v1 + v9[8]);
  v13 = *v12;
  v14 = v12[1];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(v2 + 184) = v15;
  v16 = sub_24E605DB4();
  *(v2 + 160) = v13;
  *(v2 + 168) = v14;
  *(v2 + 192) = v16;
  *(v2 + 200) = 0xD000000000000012;
  *(v2 + 208) = 0x800000024FA73FB0;
  v17 = *(v1 + v9[11]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225240, &qword_24F974E70);
  *(v2 + 240) = v18;
  v19 = sub_24F3807C0(&qword_27F225248, &qword_27F225240, &qword_24F974E70, sub_24F340CD8);
  *(v2 + 216) = v17;
  *(v2 + 248) = v19;
  *(v2 + 256) = 0xD000000000000013;
  *(v2 + 264) = 0x800000024FA73FD0;
  v20 = *(v1 + v9[12]);
  *(v2 + 296) = v18;
  *(v2 + 304) = v19;
  *(v2 + 272) = v20;
  *(v2 + 312) = 0x6553656C646E6168;
  *(v2 + 320) = 0xE900000000000074;
  v21 = v9[13];
  *(v2 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  *(v2 + 360) = sub_24F141A10();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 328));
  sub_24E60169C(v1 + v21, boxed_opaque_existential_1, &unk_27F23E170, &unk_24F9EBA60);
  *(v2 + 368) = 0xD000000000000015;
  *(v2 + 376) = 0x800000024FA746F0;
  v23 = (v1 + v9[9]);
  v24 = v23[3];
  v61[2] = v23[2];
  v61[3] = v24;
  v25 = v23[5];
  v61[4] = v23[4];
  v61[5] = v25;
  v26 = v23[1];
  v61[0] = *v23;
  v61[1] = v26;
  *(v2 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F50, &qword_24F9EBA70);
  *(v2 + 416) = sub_24F3807C0(&qword_27F2408A8, &qword_27F212F50, &qword_24F9EBA70, sub_24EDD6DBC);
  v27 = swift_allocObject();
  *(v2 + 384) = v27;
  v28 = v23[3];
  v27[3] = v23[2];
  v27[4] = v28;
  v29 = v23[5];
  v27[5] = v23[4];
  v27[6] = v29;
  v30 = v23[1];
  v27[1] = *v23;
  v27[2] = v30;
  strcpy((v2 + 424), "contactHandle");
  *(v2 + 438) = -4864;
  v31 = (v1 + v9[10]);
  v32 = *v31;
  v33 = v31[1];
  *(v2 + 464) = v15;
  *(v2 + 472) = v16;
  *(v2 + 440) = v32;
  *(v2 + 448) = v33;
  *(v2 + 480) = 0x726174617661;
  *(v2 + 488) = 0xE600000000000000;
  v34 = v1[2];
  v35 = v1[3];
  *(v2 + 520) = MEMORY[0x277D837D0];
  *(v2 + 528) = MEMORY[0x277D22580];
  *(v2 + 496) = v34;
  *(v2 + 504) = v35;
  *(v2 + 536) = 0xD000000000000012;
  *(v2 + 544) = 0x800000024FA74710;
  LOBYTE(v34) = *(v1 + v9[14]);
  *(v2 + 576) = MEMORY[0x277D839B0];
  *(v2 + 584) = MEMORY[0x277D22598];
  *(v2 + 552) = v34;
  *(v2 + 592) = 0x746E45786F626E69;
  *(v2 + 600) = 0xEA00000000007972;
  v36 = (v1 + v9[15]);
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[3];
  v62[2] = v36[2];
  v62[3] = v39;
  v62[0] = v37;
  v62[1] = v38;
  *(v2 + 632) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2408A0, &qword_24F9EBA78);
  *(v2 + 640) = sub_24F3807C0(&qword_27F2408B0, &qword_27F2408A0, &qword_24F9EBA78, sub_24F38083C);
  v40 = swift_allocObject();
  *(v2 + 608) = v40;
  v41 = v36[1];
  v40[1] = *v36;
  v40[2] = v41;
  v42 = v36[3];
  v40[3] = v36[2];
  v40[4] = v42;
  *(v2 + 648) = 0xD000000000000016;
  *(v2 + 656) = 0x800000024FA74730;
  v43 = v9[16];
  *(v2 + 688) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220, &unk_24F9F2E30);
  *(v2 + 696) = sub_24F3808E4();
  v44 = __swift_allocate_boxed_opaque_existential_1((v2 + 664));
  sub_24E60169C(v1 + v43, v44, &unk_27F23E220, &unk_24F9F2E30);
  *(v2 + 704) = 0xD000000000000011;
  *(v2 + 712) = 0x800000024FA74750;
  v45 = v9[17];
  *(v2 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220, &unk_24F9DFEB0);
  *(v2 + 752) = sub_24F3809E0();
  v46 = __swift_allocate_boxed_opaque_existential_1((v2 + 720));
  sub_24E60169C(v1 + v45, v46, &unk_27F247220, &unk_24F9DFEB0);
  *(v2 + 760) = 0xD00000000000001ALL;
  *(v2 + 768) = 0x800000024FA74770;
  v47 = *(v1 + v9[18]);
  *(v2 + 800) = MEMORY[0x277D839B0];
  *(v2 + 808) = MEMORY[0x277D22598];
  *(v2 + 776) = v47;
  strcpy((v2 + 816), "profilePrivacy");
  *(v2 + 831) = -18;
  LOBYTE(v36) = *(v1 + v9[19]);
  *(v2 + 856) = &type metadata for Player.ProfilePrivacyVisibilityLevel;
  *(v2 + 864) = sub_24F380A94();
  *(v2 + 832) = v36;
  strcpy((v2 + 872), "avatarArtwork");
  *(v2 + 886) = -4864;
  v48 = v9[6];
  v49 = sub_24F9289E8();
  *(v2 + 912) = v49;
  *(v2 + 920) = sub_24F380998(&qword_27F21E338, MEMORY[0x277D21C48], &protocol conformance descriptor for MediaArtwork);
  v50 = __swift_allocate_boxed_opaque_existential_1((v2 + 888));
  (*(*(v49 - 8) + 16))(v50, v1 + v48, v49);
  *(v2 + 928) = 0xD000000000000011;
  *(v2 + 936) = 0x800000024FA73FF0;
  LOBYTE(v48) = *(v1 + v9[20]);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8, &unk_24F9C4EF0);
  *(v2 + 968) = v51;
  v52 = sub_24F352BD8();
  *(v2 + 976) = v52;
  *(v2 + 944) = v48;
  *(v2 + 984) = 0xD00000000000001CLL;
  *(v2 + 992) = 0x800000024FA74010;
  v53 = *(v1 + v9[21]);
  *(v2 + 1024) = v51;
  *(v2 + 1032) = v52;
  *(v2 + 1000) = v53;
  *(v2 + 1040) = 0x547265646E557369;
  *(v2 + 1048) = 0xEF6E656574726968;
  v54 = *(v1 + v9[22]);
  *(v2 + 1080) = v51;
  *(v2 + 1088) = v52;
  *(v2 + 1056) = v54;

  sub_24E60169C(v61, v60, &qword_27F212F50, &qword_24F9EBA70);

  sub_24E60169C(v62, v60, &qword_27F2408A0, &qword_24F9EBA78);
  v55 = sub_24E607D0C(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v56 = sub_24E80FFAC(v55);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v56;
  return result;
}

uint64_t sub_24F380758()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F3807C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F38083C()
{
  result = qword_27F2408B8;
  if (!qword_27F2408B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2408B8);
  }

  return result;
}

uint64_t sub_24F380890()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_24F3808E4()
{
  result = qword_27F2408C0;
  if (!qword_27F2408C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23E220, &unk_24F9F2E30);
    sub_24F380998(&qword_27F2408C8, type metadata accessor for Player.LastPlayedTogetherInfo, &unk_24F9EC054);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2408C0);
  }

  return result;
}

uint64_t sub_24F380998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F3809E0()
{
  result = qword_27F2408D0;
  if (!qword_27F2408D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247220, &unk_24F9DFEB0);
    sub_24F380998(&qword_27F2408D8, type metadata accessor for Player.LastChallengeInfo, &unk_24F9EC01C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2408D0);
  }

  return result;
}

unint64_t sub_24F380A94()
{
  result = qword_27F2408E0;
  if (!qword_27F2408E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2408E0);
  }

  return result;
}

unint64_t sub_24F380AEC(char a1)
{
  result = 0x4449726579616C70;
  switch(a1)
  {
    case 1:
      result = 0x726174617661;
      break;
    case 2:
      result = 0x7241726174617661;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x4E746361746E6F63;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x48746361746E6F63;
      break;
    case 7:
    case 10:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x6553656C646E6168;
      break;
    case 11:
      result = 0x746E45786F626E69;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0x50656C69666F7270;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD00000000000001CLL;
      break;
    case 18:
      result = 0x547265646E557369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F380D84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F384620(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F380DAC(uint64_t a1)
{
  v2 = sub_24F3839E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F380DE8(uint64_t a1)
{
  v2 = sub_24F3839E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Player.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2408E8, &qword_24F9EBA80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3839E8();
  sub_24F92D128();
  LOBYTE(v47[0]) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v47[0]) = 1;
    sub_24F92CD08();
    v9 = type metadata accessor for Player(0);
    LOBYTE(v47[0]) = 2;
    sub_24F9289E8();
    sub_24F380998(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CD48();
    LOBYTE(v47[0]) = 3;
    sub_24F92CD08();
    v52[0] = 4;
    sub_24F92CCA8();
    v10 = (v3 + v9[9]);
    v11 = v10[3];
    v12 = v10[1];
    v48 = v10[2];
    v49 = v11;
    v13 = v10[3];
    v14 = v10[5];
    v50 = v10[4];
    v51 = v14;
    v15 = v10[1];
    v47[0] = *v10;
    v47[1] = v15;
    v43 = v48;
    v44 = v13;
    v16 = v10[5];
    v45 = v50;
    v46 = v16;
    v41 = v47[0];
    v42 = v12;
    v40 = 5;
    sub_24E60169C(v47, v39, &qword_27F212F50, &qword_24F9EBA70);
    sub_24F383A3C();
    sub_24F92CCF8();
    v39[2] = v43;
    v39[3] = v44;
    v39[4] = v45;
    v39[5] = v46;
    v39[0] = v41;
    v39[1] = v42;
    sub_24E601704(v39, &qword_27F212F50, &qword_24F9EBA70);
    LOBYTE(v34) = 6;
    sub_24F92CCA8();
    *&v34 = *(v3 + v9[11]);
    LOBYTE(v30) = 7;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v18 = sub_24F352CA8();
    v53 = v17;
    v25 = v18;
    sub_24F92CCF8();
    *&v34 = *(v3 + v9[12]);
    LOBYTE(v30) = 8;
    sub_24F92CCF8();
    v53 = v9[13];
    LOBYTE(v34) = 9;
    type metadata accessor for CallProviderConversationHandleSet(0);
    sub_24F380998(&qword_27F23A0C0, type metadata accessor for CallProviderConversationHandleSet, &protocol conformance descriptor for CallProviderConversationHandleSet);
    sub_24F92CCF8();
    v38 = 10;
    sub_24F92CD18();
    v19 = (v3 + v9[15]);
    v20 = *v19;
    v21 = v19[2];
    v35 = v19[1];
    v36 = v21;
    v22 = v19[2];
    v37 = v19[3];
    v30 = v20;
    v31 = v35;
    v23 = *v19;
    v32 = v22;
    v33 = v19[3];
    v34 = v23;
    v29 = 11;
    sub_24E60169C(&v34, v28, &qword_27F2408A0, &qword_24F9EBA78);
    sub_24F383A90();
    sub_24F92CCF8();
    v28[0] = v30;
    v28[1] = v31;
    v28[2] = v32;
    v28[3] = v33;
    sub_24E601704(v28, &qword_27F2408A0, &qword_24F9EBA78);
    v27 = 12;
    type metadata accessor for Player.LastPlayedTogetherInfo(0);
    sub_24F380998(&qword_27F240908, type metadata accessor for Player.LastPlayedTogetherInfo, &unk_24F9EBF6C);
    sub_24F92CCF8();
    v27 = 13;
    type metadata accessor for Player.LastChallengeInfo(0);
    sub_24F380998(&qword_27F240910, type metadata accessor for Player.LastChallengeInfo, &unk_24F9EBF44);
    sub_24F92CCF8();
    v27 = 14;
    sub_24F92CD18();
    v27 = *(v3 + v9[19]);
    v26 = 15;
    sub_24F383AE4();
    sub_24F92CD48();
    v27 = 16;
    sub_24F92CCB8();
    v27 = 17;
    sub_24F92CCB8();
    v27 = 18;
    sub_24F92CCB8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Player.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220, &unk_24F9DFEB0);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = &v85 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220, &unk_24F9F2E30);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v85 - v8;
  v10 = sub_24F9289E8();
  v94 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240920, &qword_24F9EBA88);
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v14 = &v85 - v13;
  v15 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24F3839E8();
  v96 = v14;
  v19 = v113;
  sub_24F92D108();
  if (v19)
  {
    v113 = v19;
    return __swift_destroy_boxed_opaque_existential_1(v98);
  }

  v20 = v12;
  v87 = v9;
  v88 = v10;
  v89 = v15;
  v90 = v17;
  LOBYTE(v107) = 0;
  v21 = v97;
  v22 = v96;
  v23 = sub_24F92CC28();
  v25 = v90;
  *v90 = v23;
  *(v25 + 1) = v26;
  LOBYTE(v107) = 1;
  *(v25 + 2) = sub_24F92CC28();
  *(v25 + 3) = v27;
  LOBYTE(v107) = 2;
  sub_24F380998(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
  v28 = v88;
  v86 = 0;
  sub_24F92CC68();
  v113 = 0;
  v29 = v89;
  (*(v94 + 32))(&v25[v89[6]], v20, v28);
  LOBYTE(v107) = 3;
  v30 = v113;
  v31 = sub_24F92CC28();
  if (v30)
  {
    v113 = v30;
    (*(v95 + 8))(v22, v21);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    LODWORD(v93) = 0;
    LODWORD(v95) = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    v38 = 0;
    goto LABEL_17;
  }

  v39 = &v25[v29[7]];
  *v39 = v31;
  v39[1] = v32;
  LOBYTE(v107) = 4;
  v40 = sub_24F92CBC8();
  v113 = 0;
  v41 = v29;
  v42 = &v25[v29[8]];
  *v42 = v40;
  v42[1] = v43;
  v106 = 5;
  sub_24E606978();
  v44 = v113;
  sub_24F92CC18();
  v45 = v95;
  if (v44)
  {
    v113 = v44;
    (*(v95 + 8))(v22, v21);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    LODWORD(v93) = 0;
    LODWORD(v95) = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    v38 = 0;
    v33 = 1;
    v34 = 1;
    goto LABEL_17;
  }

  v46 = &v25[v41[9]];
  v47 = v110;
  *(v46 + 2) = v109;
  *(v46 + 3) = v47;
  v48 = v112;
  *(v46 + 4) = v111;
  *(v46 + 5) = v48;
  v49 = v108;
  *v46 = v107;
  *(v46 + 1) = v49;
  LOBYTE(v101) = 6;
  v50 = sub_24F92CBC8();
  v113 = 0;
  v51 = &v25[v41[10]];
  *v51 = v50;
  v51[1] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  v105 = 7;
  sub_24E7C1498();
  v53 = v113;
  sub_24F92CC18();
  if (v53)
  {
    v113 = v53;
    (*(v45 + 8))(v22, v21);
    v37 = 0;
    LODWORD(v93) = 0;
    LODWORD(v95) = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    v38 = 0;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    goto LABEL_17;
  }

  *(v90 + v89[11]) = v101;
  v105 = 8;
  sub_24F92CC18();
  v113 = 0;
  *(v90 + v89[12]) = v101;
  type metadata accessor for CallProviderConversationHandleSet(0);
  LOBYTE(v101) = 9;
  sub_24F380998(&qword_27F23A0D0, type metadata accessor for CallProviderConversationHandleSet, &protocol conformance descriptor for CallProviderConversationHandleSet);
  v54 = v113;
  sub_24F92CC18();
  v113 = v54;
  if (v54)
  {
    (*(v95 + 8))(v96, v97);
    LODWORD(v95) = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    v38 = 0;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v55 = &v114;
LABEL_16:
    *(v55 - 64) = 1;
    goto LABEL_17;
  }

  sub_24E6009C8(v87, v90 + v89[13], &unk_27F23E170, &unk_24F9EBA60);
  LOBYTE(v101) = 10;
  v56 = v113;
  v57 = sub_24F92CC38();
  v113 = v56;
  if (v56 || (*(v90 + v89[14]) = v57 & 1, v105 = 11, sub_24F383B38(), v58 = v113, sub_24F92CC18(), (v113 = v58) != 0))
  {
    (*(v95 + 8))(v96, v97);
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    v38 = 0;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    LODWORD(v93) = 1;
    v55 = &v115;
    goto LABEL_16;
  }

  v69 = (v90 + v89[15]);
  v70 = v102;
  *v69 = v101;
  v69[1] = v70;
  v71 = v104;
  v69[2] = v103;
  v69[3] = v71;
  type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v100 = 12;
  sub_24F380998(&qword_27F240930, type metadata accessor for Player.LastPlayedTogetherInfo, &unk_24F9EBEF4);
  v72 = v113;
  sub_24F92CC18();
  v113 = v72;
  if (v72)
  {
    (*(v95 + 8))(v96, v97);
    LODWORD(v97) = 0;
    v38 = 0;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    LODWORD(v93) = 1;
    LODWORD(v95) = 1;
    v55 = &v116;
    goto LABEL_16;
  }

  sub_24E6009C8(v93, v90 + v89[16], &unk_27F23E220, &unk_24F9F2E30);
  type metadata accessor for Player.LastChallengeInfo(0);
  v100 = 13;
  sub_24F380998(&qword_27F240938, type metadata accessor for Player.LastChallengeInfo, &unk_24F9EBECC);
  v73 = v113;
  sub_24F92CC18();
  v113 = v73;
  if (v73)
  {
    (*(v95 + 8))(v96, v97);
    v38 = 0;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    LODWORD(v93) = 1;
    LODWORD(v95) = 1;
    LODWORD(v96) = 1;
    v55 = &v117;
    goto LABEL_16;
  }

  sub_24E6009C8(v92, v90 + v89[17], &unk_27F247220, &unk_24F9DFEB0);
  v100 = 14;
  v74 = v113;
  v75 = sub_24F92CC38();
  v113 = v74;
  if (v74)
  {
    (*(v95 + 8))(v96, v97);
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    LODWORD(v93) = 1;
    LODWORD(v95) = 1;
    LODWORD(v96) = 1;
    LODWORD(v97) = 1;
    v38 = 1;
LABEL_17:
    v59 = v86;
    __swift_destroy_boxed_opaque_existential_1(v98);
    v60 = v90;

    if (!v59)
    {
    }

    goto LABEL_19;
  }

  *(v90 + v89[18]) = v75 & 1;
  v99 = 15;
  sub_24F383B8C();
  v76 = v113;
  sub_24F92CC68();
  v113 = v76;
  if (!v76)
  {
    *(v90 + v89[19]) = v100;
    v100 = 16;
    v77 = v113;
    v78 = sub_24F92CBD8();
    v113 = v77;
    if (!v77)
    {
      *(v90 + v89[20]) = v78;
      v100 = 17;
      v79 = v113;
      v80 = sub_24F92CBD8();
      v113 = v79;
      if (!v79)
      {
        *(v90 + v89[21]) = v80;
        v100 = 18;
        v81 = v113;
        v82 = sub_24F92CBD8();
        v113 = v81;
        if (!v81)
        {
          v83 = v82;
          (*(v95 + 8))(v96, v97);
          v84 = v90;
          *(v90 + v89[22]) = v83;
          sub_24F38456C(v84, v91, type metadata accessor for Player);
          __swift_destroy_boxed_opaque_existential_1(v98);
          return sub_24F384D60(v84, type metadata accessor for Player);
        }
      }
    }
  }

  (*(v95 + 8))(v96, v97);
  __swift_destroy_boxed_opaque_existential_1(v98);
  v60 = v90;

  v33 = 1;
  v34 = 1;
  v35 = 1;
  v36 = 1;
  v37 = 1;
  LODWORD(v93) = 1;
  LODWORD(v95) = 1;
  LODWORD(v96) = 1;
  LODWORD(v97) = 1;
  v38 = 1;
LABEL_19:
  v61 = v89;
  result = (*(v94 + 8))(v60 + v89[6], v88);
  if (v33)
  {

    if ((v34 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (!v34)
  {
LABEL_21:
    if (v35)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  if (v35)
  {
LABEL_22:
    v62 = (v60 + v61[9]);
    v63 = v62[3];
    v109 = v62[2];
    v110 = v63;
    v64 = v62[5];
    v111 = v62[4];
    v112 = v64;
    v65 = v62[1];
    v107 = *v62;
    v108 = v65;
    result = sub_24E601704(&v107, &qword_27F212F50, &qword_24F9EBA70);
    if ((v36 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!v36)
  {
LABEL_23:
    if (v37)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_33:

  if (v37)
  {
LABEL_24:

    if ((v93 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!v93)
  {
LABEL_25:
    if (v95)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

LABEL_35:

  if (v95)
  {
LABEL_26:
    result = sub_24E601704(v60 + v61[13], &unk_27F23E170, &unk_24F9EBA60);
    if ((v96 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!v96)
  {
LABEL_27:
    if (v97)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

LABEL_37:
  v66 = (v60 + v61[15]);
  v67 = v66[1];
  v107 = *v66;
  v108 = v67;
  v68 = v66[3];
  v109 = v66[2];
  v110 = v68;
  result = sub_24E601704(&v107, &qword_27F2408A0, &qword_24F9EBA78);
  if (v97)
  {
LABEL_28:
    result = sub_24E601704(v60 + v61[16], &unk_27F23E220, &unk_24F9F2E30);
    if (v38)
    {
      return sub_24E601704(v60 + v61[17], &unk_27F247220, &unk_24F9DFEB0);
    }

    return result;
  }

LABEL_38:
  if (v38)
  {
    return sub_24E601704(v60 + v61[17], &unk_27F247220, &unk_24F9DFEB0);
  }

  return result;
}

BOOL _s12GameStoreKit6PlayerV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v130 = *(ChallengeInfo - 8);
  MEMORY[0x28223BE20](ChallengeInfo);
  v129 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220, &unk_24F9DFEB0);
  MEMORY[0x28223BE20](v5 - 8);
  v131 = &v124 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A18, &qword_24F9EC0E8);
  MEMORY[0x28223BE20](v7);
  v9 = &v124 - v8;
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v135 = *(PlayedTogetherInfo - 8);
  v136 = PlayedTogetherInfo;
  MEMORY[0x28223BE20](PlayedTogetherInfo);
  v132 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220, &unk_24F9F2E30);
  MEMORY[0x28223BE20](v12 - 8);
  v137 = &v124 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A20, &qword_24F9EC0F0);
  MEMORY[0x28223BE20](v134);
  v138 = (&v124 - v14);
  v15 = type metadata accessor for CallProviderConversationHandleSet(0);
  v139 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v124 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A28, &qword_24F9EC0F8);
  MEMORY[0x28223BE20](v21);
  v23 = &v124 - v22;
  if (*a1 != *a2 && (sub_24F92CE08() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v128 = v7;
  v24 = type metadata accessor for Player(0);
  if ((MEMORY[0x25304E2E0](a1 + v24[6], a2 + v24[6]) & 1) == 0)
  {
    return 0;
  }

  v25 = v24[7];
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if ((v26 != *v28 || v27 != v28[1]) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  v29 = v24[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v127 = v9;
  v34 = (a1 + v24[9]);
  v35 = v34[3];
  v36 = v34[1];
  v180 = v34[2];
  v181 = v35;
  v37 = v34[3];
  v38 = v34[5];
  v182 = v34[4];
  v183 = v38;
  v39 = v34[1];
  v179[0] = *v34;
  v179[1] = v39;
  v40 = (a2 + v24[9]);
  v41 = v40[1];
  v184[0] = *v40;
  v184[1] = v41;
  v42 = v40[5];
  v184[4] = v40[4];
  v184[5] = v42;
  v43 = v40[3];
  v184[2] = v40[2];
  v184[3] = v43;
  v176 = v37;
  v177 = v182;
  v178 = v34[5];
  v44 = *(&v179[0] + 1);
  v174 = v36;
  v175 = v180;
  if (*(&v179[0] + 1) == 1)
  {
    if (*(&v184[0] + 1) == 1)
    {
      v126 = v24;
      *&v162 = *&v179[0];
      *(&v162 + 1) = 1;
      v45 = v34[4];
      v165 = v34[3];
      v166 = v45;
      v167 = v34[5];
      v46 = v34[2];
      v163 = v34[1];
      v164 = v46;
      sub_24E60169C(v179, v186, &qword_27F212F50, &qword_24F9EBA70);
      sub_24E60169C(v184, v186, &qword_27F212F50, &qword_24F9EBA70);
      sub_24E601704(&v162, &qword_27F212F50, &qword_24F9EBA70);
      goto LABEL_26;
    }

LABEL_21:
    v162 = v179[0];
    v47 = v34[4];
    v165 = v34[3];
    v166 = v47;
    v167 = v34[5];
    v48 = v34[2];
    v163 = v34[1];
    v164 = v48;
    v168 = v184[0];
    v49 = v40[5];
    v172 = v40[4];
    v173 = v49;
    v50 = v40[3];
    v170 = v40[2];
    v171 = v50;
    v169 = v40[1];
    sub_24E60169C(v179, v186, &qword_27F212F50, &qword_24F9EBA70);
    sub_24E60169C(v184, v186, &qword_27F212F50, &qword_24F9EBA70);
    v51 = &unk_27F240A30;
    v52 = &unk_24F9EC100;
LABEL_22:
    v53 = &v162;
LABEL_23:
    sub_24E601704(v53, v51, v52);
    return 0;
  }

  if (*(&v184[0] + 1) == 1)
  {
    goto LABEL_21;
  }

  v126 = v24;
  v140 = v184[0];
  v55 = v40[4];
  v143 = v40[3];
  v144 = v55;
  v145 = v40[5];
  v56 = v40[2];
  v141 = v40[1];
  v142 = v56;
  v186[4] = v55;
  v186[5] = v145;
  v186[2] = v56;
  v186[3] = v143;
  v186[0] = v184[0];
  v186[1] = v141;
  v57 = v34[4];
  v185[3] = v34[3];
  v185[4] = v57;
  v185[5] = v34[5];
  v58 = v34[1];
  v185[2] = v34[2];
  v185[1] = v58;
  v185[0] = v179[0];
  v124 = *&v179[0];
  v125 = sub_24E605E30(v185, v186);
  sub_24E60169C(v179, &v162, &qword_27F212F50, &qword_24F9EBA70);
  sub_24E60169C(v184, &v162, &qword_27F212F50, &qword_24F9EBA70);
  sub_24E601704(&v140, &qword_27F212F50, &qword_24F9EBA70);
  *&v162 = v124;
  *(&v162 + 1) = v44;
  v165 = v176;
  v166 = v177;
  v167 = v178;
  v163 = v174;
  v164 = v175;
  sub_24E601704(&v162, &qword_27F212F50, &qword_24F9EBA70);
  if ((v125 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v59 = v126;
  v60 = v126[10];
  v61 = (a1 + v60);
  v62 = *(a1 + v60 + 8);
  v63 = (a2 + v60);
  v64 = v63[1];
  if (v62)
  {
    if (!v64 || (*v61 != *v63 || v62 != v64) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  v65 = v59[11];
  v66 = *(a1 + v65);
  v67 = *(a2 + v65);
  if (v66)
  {
    if (!v67 || (sub_24EA14BB8(v66, v67) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v67)
  {
    return 0;
  }

  v68 = v59[12];
  v69 = *(a1 + v68);
  v70 = *(a2 + v68);
  if (v69)
  {
    if (!v70 || (sub_24EA14BB8(v69, v70) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  v126 = v59;
  v71 = v59[13];
  v72 = *(v21 + 48);
  sub_24E60169C(a1 + v71, v23, &unk_27F23E170, &unk_24F9EBA60);
  sub_24E60169C(a2 + v71, &v23[v72], &unk_27F23E170, &unk_24F9EBA60);
  v73 = *(v139 + 48);
  if (v73(v23, 1, v15) == 1)
  {
    if (v73(&v23[v72], 1, v15) == 1)
    {
      sub_24E601704(v23, &unk_27F23E170, &unk_24F9EBA60);
      goto LABEL_50;
    }

LABEL_48:
    v51 = &qword_27F240A28;
    v52 = &qword_24F9EC0F8;
    v53 = v23;
    goto LABEL_23;
  }

  sub_24E60169C(v23, v20, &unk_27F23E170, &unk_24F9EBA60);
  if (v73(&v23[v72], 1, v15) == 1)
  {
    sub_24F384D60(v20, type metadata accessor for CallProviderConversationHandleSet);
    goto LABEL_48;
  }

  sub_24F37CA40(&v23[v72], v17, type metadata accessor for CallProviderConversationHandleSet);
  v74 = static CallProviderConversationHandleSet.== infix(_:_:)(v20, v17);
  sub_24F384D60(v17, type metadata accessor for CallProviderConversationHandleSet);
  sub_24F384D60(v20, type metadata accessor for CallProviderConversationHandleSet);
  sub_24E601704(v23, &unk_27F23E170, &unk_24F9EBA60);
  if ((v74 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  if (*(a1 + v126[14]) != *(a2 + v126[14]))
  {
    return 0;
  }

  v75 = (a1 + v126[15]);
  v76 = v75[1];
  v174 = *v75;
  v175 = v76;
  v77 = v75[1];
  v78 = v75[3];
  v176 = v75[2];
  v177 = v78;
  v79 = (a2 + v126[15]);
  v80 = v79[1];
  v140 = *v79;
  v141 = v80;
  v81 = v79[1];
  v82 = v79[3];
  v142 = v79[2];
  v143 = v82;
  v159 = v77;
  v160 = v176;
  v161 = v75[3];
  v83 = v174;
  v84 = v140;
  v156 = v81;
  v157 = v142;
  v158 = v79[3];
  if (!*(&v174 + 1))
  {
    if (!*(&v140 + 1))
    {
      v162 = v174;
      v88 = v75[2];
      v163 = v75[1];
      v164 = v88;
      v165 = v75[3];
      sub_24E60169C(&v174, &v152, &qword_27F2408A0, &qword_24F9EBA78);
      sub_24E60169C(&v140, &v152, &qword_27F2408A0, &qword_24F9EBA78);
      sub_24E601704(&v162, &qword_27F2408A0, &qword_24F9EBA78);
      goto LABEL_60;
    }

    sub_24E60169C(&v174, &v162, &qword_27F2408A0, &qword_24F9EBA78);
    sub_24E60169C(&v140, &v162, &qword_27F2408A0, &qword_24F9EBA78);
    goto LABEL_58;
  }

  v162 = v174;
  v85 = v75[2];
  v163 = v75[1];
  v164 = v85;
  v165 = v75[3];
  v152 = v174;
  v153 = v163;
  v154 = v85;
  v155 = v165;
  if (!*(&v140 + 1))
  {
    v148 = v162;
    v149 = v163;
    v150 = v164;
    v151 = v165;
    sub_24E60169C(&v174, v147, &qword_27F2408A0, &qword_24F9EBA78);
    sub_24E60169C(&v140, v147, &qword_27F2408A0, &qword_24F9EBA78);
    sub_24E60169C(&v162, v147, &qword_27F2408A0, &qword_24F9EBA78);
    sub_24F384DC0(&v148);
LABEL_58:
    v162 = v83;
    v163 = v159;
    v164 = v160;
    v165 = v161;
    v166 = v84;
    v167 = v156;
    v168 = v157;
    v169 = v158;
    v51 = &unk_27F240A38;
    v52 = &unk_24F9EC108;
    goto LABEL_22;
  }

  v86 = v79[2];
  v149 = v79[1];
  v150 = v86;
  v151 = v79[3];
  v148 = v140;
  v87 = _s12GameStoreKit6PlayerV23FriendRequestInboxEntryV2eeoiySbAE_AEtFZ_0(&v152, &v148);
  v146[0] = v148;
  v146[1] = v149;
  v146[2] = v150;
  v146[3] = v151;
  sub_24E60169C(&v174, v147, &qword_27F2408A0, &qword_24F9EBA78);
  sub_24E60169C(&v140, v147, &qword_27F2408A0, &qword_24F9EBA78);
  sub_24E60169C(&v162, v147, &qword_27F2408A0, &qword_24F9EBA78);
  sub_24F384DC0(v146);
  v147[0] = v152;
  v147[1] = v153;
  v147[2] = v154;
  v147[3] = v155;
  sub_24F384DC0(v147);
  v148 = v83;
  v149 = v159;
  v150 = v160;
  v151 = v161;
  sub_24E601704(&v148, &qword_27F2408A0, &qword_24F9EBA78);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

LABEL_60:
  v89 = v126[16];
  v90 = *(v134 + 48);
  v91 = v138;
  sub_24E60169C(a1 + v89, v138, &unk_27F23E220, &unk_24F9F2E30);
  sub_24E60169C(a2 + v89, v91 + v90, &unk_27F23E220, &unk_24F9F2E30);
  v92 = v136;
  v93 = *(v135 + 48);
  if (v93(v91, 1, v136) == 1)
  {
    if (v93(v91 + v90, 1, v92) == 1)
    {
      sub_24E601704(v91, &unk_27F23E220, &unk_24F9F2E30);
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  sub_24E60169C(v91, v137, &unk_27F23E220, &unk_24F9F2E30);
  if (v93(v91 + v90, 1, v92) == 1)
  {
    sub_24F384D60(v137, type metadata accessor for Player.LastPlayedTogetherInfo);
    v91 = v138;
LABEL_65:
    v51 = &qword_27F240A20;
    v52 = &qword_24F9EC0F0;
    v53 = v91;
    goto LABEL_23;
  }

  sub_24F37CA40(v138 + v90, v132, type metadata accessor for Player.LastPlayedTogetherInfo);
  if ((static Game.== infix(_:_:)() & 1) == 0)
  {
    sub_24F384D60(v132, type metadata accessor for Player.LastPlayedTogetherInfo);
    sub_24F384D60(v137, type metadata accessor for Player.LastPlayedTogetherInfo);
    v51 = &unk_27F23E220;
    v52 = &unk_24F9F2E30;
    v53 = v138;
    goto LABEL_23;
  }

  v94 = v137;
  v95 = *(v136 + 20);
  v96 = *(v137 + v95);
  v97 = *(v132 + v95);
  sub_24F384D60(v132, type metadata accessor for Player.LastPlayedTogetherInfo);
  sub_24F384D60(v94, type metadata accessor for Player.LastPlayedTogetherInfo);
  sub_24E601704(v138, &unk_27F23E220, &unk_24F9F2E30);
  if (v96 != v97)
  {
    return 0;
  }

LABEL_68:
  v98 = v127;
  v99 = v126[17];
  v100 = *(v128 + 48);
  sub_24E60169C(a1 + v99, v127, &unk_27F247220, &unk_24F9DFEB0);
  sub_24E60169C(a2 + v99, v98 + v100, &unk_27F247220, &unk_24F9DFEB0);
  v101 = *(v130 + 48);
  if (v101(v98, 1, ChallengeInfo) == 1)
  {
    if (v101(&v127[v100], 1, ChallengeInfo) == 1)
    {
      sub_24E601704(v127, &unk_27F247220, &unk_24F9DFEB0);
      goto LABEL_78;
    }

    goto LABEL_73;
  }

  v102 = v127;
  sub_24E60169C(v127, v131, &unk_27F247220, &unk_24F9DFEB0);
  if (v101((v102 + v100), 1, ChallengeInfo) == 1)
  {
    sub_24F384D60(v131, type metadata accessor for Player.LastChallengeInfo);
LABEL_73:
    v51 = &qword_27F240A18;
    v52 = &qword_24F9EC0E8;
LABEL_74:
    v53 = v127;
    goto LABEL_23;
  }

  sub_24F37CA40(&v127[v100], v129, type metadata accessor for Player.LastChallengeInfo);
  if ((static Game.== infix(_:_:)() & 1) == 0)
  {
    sub_24F384D60(v129, type metadata accessor for Player.LastChallengeInfo);
    sub_24F384D60(v131, type metadata accessor for Player.LastChallengeInfo);
    v51 = &unk_27F247220;
    v52 = &unk_24F9DFEB0;
    goto LABEL_74;
  }

  v103 = *(ChallengeInfo + 20);
  v104 = v131;
  v105 = *(v131 + v103);
  v106 = *(v129 + v103);
  sub_24F384D60(v129, type metadata accessor for Player.LastChallengeInfo);
  sub_24F384D60(v104, type metadata accessor for Player.LastChallengeInfo);
  sub_24E601704(v127, &unk_27F247220, &unk_24F9DFEB0);
  if (v105 != v106)
  {
    return 0;
  }

LABEL_78:
  if (*(a1 + v126[18]) != *(a2 + v126[18]))
  {
    return 0;
  }

  v107 = 0x656E6F7972657665;
  v108 = v126[19];
  v109 = *(a1 + v108);
  v110 = *(a2 + v108);
  if (v109)
  {
    if (v109 == 1)
    {
      v111 = 0x4F73646E65697266;
      v112 = 0xEB00000000796C6ELL;
    }

    else
    {
      v112 = 0xE600000000000000;
      v111 = 0x796C6E4F656DLL;
    }
  }

  else
  {
    v112 = 0xE800000000000000;
    v111 = 0x656E6F7972657665;
  }

  if (v110)
  {
    if (v110 == 1)
    {
      v107 = 0x4F73646E65697266;
      v113 = 0xEB00000000796C6ELL;
    }

    else
    {
      v113 = 0xE600000000000000;
      v107 = 0x796C6E4F656DLL;
    }
  }

  else
  {
    v113 = 0xE800000000000000;
  }

  if (v111 == v107 && v112 == v113)
  {
  }

  else
  {
    v114 = sub_24F92CE08();

    if ((v114 & 1) == 0)
    {
      return 0;
    }
  }

  v115 = v126[20];
  v116 = *(a1 + v115);
  v117 = *(a2 + v115);
  if (v116 == 2)
  {
    if (v117 != 2)
    {
      return 0;
    }
  }

  else if (v117 == 2 || ((v117 ^ v116) & 1) != 0)
  {
    return 0;
  }

  v118 = v126[21];
  v119 = *(a1 + v118);
  v120 = *(a2 + v118);
  if (v119 == 2)
  {
    if (v120 != 2)
    {
      return 0;
    }
  }

  else if (v120 == 2 || ((v120 ^ v119) & 1) != 0)
  {
    return 0;
  }

  v121 = v126[22];
  v122 = *(a1 + v121);
  v123 = *(a2 + v121);
  if (v122 != 2)
  {
    return v123 != 2 && ((v123 ^ v122) & 1) == 0;
  }

  return v123 == 2;
}

unint64_t sub_24F3839E8()
{
  result = qword_27F2408F0;
  if (!qword_27F2408F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2408F0);
  }

  return result;
}

unint64_t sub_24F383A3C()
{
  result = qword_27F2408F8;
  if (!qword_27F2408F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2408F8);
  }

  return result;
}

unint64_t sub_24F383A90()
{
  result = qword_27F240900;
  if (!qword_27F240900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240900);
  }

  return result;
}

unint64_t sub_24F383AE4()
{
  result = qword_27F240918;
  if (!qword_27F240918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240918);
  }

  return result;
}

unint64_t sub_24F383B38()
{
  result = qword_27F240928;
  if (!qword_27F240928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240928);
  }

  return result;
}

unint64_t sub_24F383B8C()
{
  result = qword_27F240940;
  if (!qword_27F240940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240940);
  }

  return result;
}

uint64_t sub_24F383BF4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220, &unk_24F9F2E30);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[16];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220, &unk_24F9DFEB0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[17];

  return v16(v17, a2, v15);
}

uint64_t sub_24F383DE0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220, &unk_24F9F2E30);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[16];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220, &unk_24F9DFEB0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[17];

  return v16(v17, a2, a2, v15);
}

void sub_24F383FB8(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_24F9289E8();
  if (v2 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0, v1);
    if (v3 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F240958, &type metadata for JSPersonNameComponentsFormatter.Components);
      if (v4 <= 0x3F)
      {
        sub_24E6BCB54(319);
        if (v5 <= 0x3F)
        {
          sub_24F3841B0(319, &qword_27F23A0E8, type metadata accessor for CallProviderConversationHandleSet);
          if (v6 <= 0x3F)
          {
            v7 = MEMORY[0x277D839B0];
            sub_24E66ECF0(319, &qword_27F240960, &type metadata for Player.FriendRequestInboxEntry);
            if (v8 <= 0x3F)
            {
              sub_24F3841B0(319, &qword_27F240968, type metadata accessor for Player.LastPlayedTogetherInfo);
              if (v9 <= 0x3F)
              {
                sub_24F3841B0(319, &qword_27F240970, type metadata accessor for Player.LastChallengeInfo);
                if (v10 <= 0x3F)
                {
                  sub_24E66ECF0(319, &qword_27F2169A0, v7);
                  if (v11 <= 0x3F)
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

void sub_24F3841B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_21Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Game(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Game(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F38435C(uint64_t a1)
{
  result = type metadata accessor for Game(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F384468()
{
  result = qword_27F2409A8;
  if (!qword_27F2409A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2409A8);
  }

  return result;
}

unint64_t sub_24F3844C0()
{
  result = qword_27F2409B0;
  if (!qword_27F2409B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2409B0);
  }

  return result;
}

unint64_t sub_24F384518()
{
  result = qword_27F2409B8;
  if (!qword_27F2409B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2409B8);
  }

  return result;
}

uint64_t sub_24F38456C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F3845D4(uint64_t a1, uint64_t a2)
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

uint64_t sub_24F384620(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7241726174617661 && a2 == 0xED00006B726F7774 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA746F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x48746361746E6F63 && a2 == 0xED0000656C646E61 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA73FB0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA73FD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6553656C646E6168 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA74710 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746E45786F626E69 && a2 == 0xEA00000000007972 || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA74730 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA74750 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FA74770 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x50656C69666F7270 && a2 == 0xEE00796361766972 || (sub_24F92CE08() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA73FF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA74010 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x547265646E557369 && a2 == 0xEF6E656574726968)
  {

    return 18;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

unint64_t sub_24F384C64()
{
  result = qword_27F2409C8;
  if (!qword_27F2409C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2409C8);
  }

  return result;
}

unint64_t sub_24F384CB8()
{
  result = qword_27F2409D8;
  if (!qword_27F2409D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2409D8);
  }

  return result;
}

unint64_t sub_24F384D0C()
{
  result = qword_27F2409E0;
  if (!qword_27F2409E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2409E0);
  }

  return result;
}

uint64_t sub_24F384D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F384E38()
{
  result = qword_27F240A40;
  if (!qword_27F240A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240A40);
  }

  return result;
}

unint64_t sub_24F384E90()
{
  result = qword_27F240A48;
  if (!qword_27F240A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240A48);
  }

  return result;
}

unint64_t sub_24F384EE8()
{
  result = qword_27F240A50;
  if (!qword_27F240A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240A50);
  }

  return result;
}

unint64_t sub_24F384F40()
{
  result = qword_27F240A58;
  if (!qword_27F240A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240A58);
  }

  return result;
}

unint64_t sub_24F384F98()
{
  result = qword_27F240A60;
  if (!qword_27F240A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240A60);
  }

  return result;
}

unint64_t sub_24F384FF0()
{
  result = qword_27F240A68;
  if (!qword_27F240A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240A68);
  }

  return result;
}

uint64_t sub_24F3850E4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v498 = a5;
  v569 = a4;
  v592 = a3;
  v579 = a2;
  LODWORD(v585) = a1;
  v584 = a6;
  v548 = type metadata accessor for ChallengeCardCapsuleSubtitle(0);
  MEMORY[0x28223BE20](v548);
  v506 = &v424 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A78, &qword_24F9EC3F8);
  MEMORY[0x28223BE20](v550);
  v551 = &v424 - v7;
  v545 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A80, &qword_24F9EC400);
  MEMORY[0x28223BE20](v545);
  v546 = &v424 - v8;
  v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A88, &qword_24F9EC408);
  MEMORY[0x28223BE20](v547);
  v549 = &v424 - v9;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A90, &qword_24F9EC410);
  MEMORY[0x28223BE20](v522);
  v521 = &v424 - v10;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240A98, &qword_24F9EC418);
  v524 = *(v525 - 8);
  MEMORY[0x28223BE20](v525);
  v523 = &v424 - v11;
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AA0, &qword_24F9EC420);
  MEMORY[0x28223BE20](v544);
  v526 = &v424 - v12;
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AA8, &qword_24F9EC428);
  MEMORY[0x28223BE20](v555);
  v562 = &v424 - v13;
  v553 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AB0, &qword_24F9EC430);
  MEMORY[0x28223BE20](v553);
  v554 = &v424 - v14;
  v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AB8, &qword_24F9EC438);
  MEMORY[0x28223BE20](v568);
  v556 = &v424 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v16 - 8);
  v442 = &v424 - v17;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10, &unk_24F94BD90);
  MEMORY[0x28223BE20](v459);
  v443 = (&v424 - v18);
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AC0, &qword_24F9EC440);
  MEMORY[0x28223BE20](v455);
  v457 = &v424 - v19;
  v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AC8, &qword_24F9EC448);
  MEMORY[0x28223BE20](v456);
  v441 = (&v424 - v20);
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AD0, &qword_24F9EC450);
  MEMORY[0x28223BE20](v487);
  v458 = &v424 - v21;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AD8, &qword_24F9EC458);
  MEMORY[0x28223BE20](v485);
  v486 = &v424 - v22;
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AE0, &qword_24F9EC460);
  MEMORY[0x28223BE20](v552);
  v488 = &v424 - v23;
  v543 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v543);
  v480 = &v424 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v481 = &v424 - v26;
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AE8, &qword_24F9EC468);
  MEMORY[0x28223BE20](v564);
  v566 = &v424 - v27;
  v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AF0, &qword_24F9EC470);
  MEMORY[0x28223BE20](v538);
  v541 = &v424 - v28;
  v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240AF8, &qword_24F9EC478);
  MEMORY[0x28223BE20](v565);
  v542 = &v424 - v29;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B00, &unk_24F9EC480);
  MEMORY[0x28223BE20](v574);
  v567 = &v424 - v30;
  v590 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v510 = *(v590 - 8);
  MEMORY[0x28223BE20](v590);
  v580 = &v424 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v594 = type metadata accessor for PlayerAvatarView(0);
  v589 = *(v594 - 8);
  MEMORY[0x28223BE20](v594);
  v591 = &v424 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = type metadata accessor for OverlappingPlayerAvatarsView(0);
  v517 = *(v519 - 8);
  MEMORY[0x28223BE20](v519);
  v511 = &v424 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B08, &qword_24FA2DCF0);
  MEMORY[0x28223BE20](v532);
  v518 = &v424 - v34;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B10, &qword_24F9EC490);
  MEMORY[0x28223BE20](v530);
  v531 = &v424 - v35;
  v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B18, &qword_24F9EC498);
  MEMORY[0x28223BE20](v535);
  v533 = &v424 - v36;
  v429 = type metadata accessor for ChallengeCardTitleView(0);
  MEMORY[0x28223BE20](v429);
  v425 = (&v424 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B20, &qword_24F9EC4A0);
  MEMORY[0x28223BE20](v426);
  v428 = &v424 - v38;
  v509 = sub_24F91F648();
  v507 = *(v509 - 8);
  MEMORY[0x28223BE20](v509);
  v508 = &v424 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B28, &qword_24F9EC4A8);
  v453 = *(v454 - 8);
  MEMORY[0x28223BE20](v454);
  v427 = &v424 - v40;
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B30, &qword_24F9EC4B0);
  MEMORY[0x28223BE20](v468);
  v465 = &v424 - v41;
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B38, &qword_24F9EC4B8);
  MEMORY[0x28223BE20](v482);
  v484 = &v424 - v42;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B40, &qword_24F9EC4C0);
  MEMORY[0x28223BE20](v466);
  v467 = (&v424 - v43);
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B48, &qword_24F9EC4C8);
  MEMORY[0x28223BE20](v483);
  v469 = &v424 - v44;
  v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B50, &qword_24F9EC4D0);
  MEMORY[0x28223BE20](v539);
  v489 = &v424 - v45;
  v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B58, &qword_24F9EC4D8);
  MEMORY[0x28223BE20](v536);
  v537 = &v424 - v46;
  v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B60, &unk_24F9EC4E0);
  MEMORY[0x28223BE20](v561);
  v540 = &v424 - v47;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98, &unk_24F93E740);
  MEMORY[0x28223BE20](v516);
  v494 = &v424 - v48;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A060, &unk_24F9EC4F0);
  MEMORY[0x28223BE20](v528);
  v529 = &v424 - v49;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A068, &unk_24F94D9E0);
  MEMORY[0x28223BE20](v513);
  v514 = &v424 - v50;
  v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A070, &unk_24F9EC500);
  MEMORY[0x28223BE20](v527);
  v515 = &v424 - v51;
  v492 = type metadata accessor for HeroCardGameHeadingView(0);
  v491 = *(v492 - 8);
  MEMORY[0x28223BE20](v492);
  v470 = &v424 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50, &unk_24F94D9F0);
  MEMORY[0x28223BE20](v512);
  v493 = &v424 - v53;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A078, &qword_24F9EC510);
  MEMORY[0x28223BE20](v534);
  v563 = &v424 - v54;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B68, &qword_24F9EC518);
  MEMORY[0x28223BE20](v474);
  v464 = &v424 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v56 - 8);
  v588 = &v424 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v431 = &v424 - v59;
  v595 = type metadata accessor for PlayerAvatar(0);
  v520 = *(v595 - 8);
  MEMORY[0x28223BE20](v595);
  v61 = &v424 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v587 = &v424 - v63;
  MEMORY[0x28223BE20](v64);
  v490 = &v424 - v65;
  MEMORY[0x28223BE20](v66);
  v430 = (&v424 - v67);
  v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  MEMORY[0x28223BE20](v448);
  v432 = &v424 - v68;
  v69 = type metadata accessor for ChallengeCard.ParticipantsInfo.Participant(0);
  v495 = *(v69 - 8);
  MEMORY[0x28223BE20](v69 - 8);
  v496 = &v424 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B70, &qword_24F9EC520);
  MEMORY[0x28223BE20](v471);
  v473 = &v424 - v71;
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B78, &qword_24F9EC528);
  MEMORY[0x28223BE20](v445);
  v446 = &v424 - v72;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B80, &unk_24F9EC530);
  MEMORY[0x28223BE20](v472);
  v447 = &v424 - v73;
  v439 = sub_24F924B38();
  v435 = *(v439 - 8);
  MEMORY[0x28223BE20](v439);
  v433 = &v424 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = sub_24F921AF8();
  v437 = *(v438 - 8);
  MEMORY[0x28223BE20](v438);
  v436 = &v424 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v505 = sub_24F9289E8();
  v504 = *(v505 - 8);
  MEMORY[0x28223BE20](v505);
  v434 = &v424 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C10, &unk_24F94FFD0);
  MEMORY[0x28223BE20](v444);
  v440 = &v424 - v77;
  v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B88, &qword_24F9EC540);
  MEMORY[0x28223BE20](v499);
  v475 = &v424 - v78;
  v575 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B90, &qword_24F9EC548);
  MEMORY[0x28223BE20](v575);
  v577 = &v424 - v79;
  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B98, &qword_24F9EC550);
  MEMORY[0x28223BE20](v570);
  v572 = &v424 - v80;
  v557 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BA0, &qword_24F9EC558);
  MEMORY[0x28223BE20](v557);
  v559 = &v424 - v81;
  v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BA8, &qword_24F9EC560);
  MEMORY[0x28223BE20](v501);
  v502 = &v424 - v82;
  v558 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BB0, &qword_24F9EC568);
  MEMORY[0x28223BE20](v558);
  v503 = &v424 - v83;
  v571 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BB8, &qword_24F9EC570);
  MEMORY[0x28223BE20](v571);
  v560 = &v424 - v84;
  v576 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BC0, &unk_24F9EC578);
  MEMORY[0x28223BE20](v576);
  v573 = &v424 - v85;
  v581 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v581);
  v497 = &v424 - v86;
  v450 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BC8, &qword_24F9EC588);
  MEMORY[0x28223BE20](v450);
  v451 = &v424 - v87;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BD0, &qword_24F9EC590);
  MEMORY[0x28223BE20](v479);
  v452 = &v424 - v88;
  v449 = type metadata accessor for CompactVisualView(0);
  MEMORY[0x28223BE20](v449);
  v90 = &v424 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v462 = type metadata accessor for PortraitVisualView(0);
  MEMORY[0x28223BE20](v462);
  v92 = &v424 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BD8, &qword_24F9EC598);
  MEMORY[0x28223BE20](v476);
  v478 = &v424 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BE0, &qword_24F9EC5A0);
  MEMORY[0x28223BE20](v94);
  v461 = &v424 - v95;
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BE8, &qword_24F9EC5A8);
  MEMORY[0x28223BE20](v477);
  v463 = &v424 - v96;
  v460 = type metadata accessor for LargeVisualView(0);
  MEMORY[0x28223BE20](v460);
  v98 = &v424 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BF0, &qword_24F9EC5B0);
  MEMORY[0x28223BE20](v500);
  v100 = &v424 - v99;
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240BF8, &qword_24F9EC5B8);
  v583 = *(v586 - 8);
  MEMORY[0x28223BE20](v586);
  v578 = &v424 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240C00, &unk_24F9EC5C0);
  MEMORY[0x28223BE20](v102 - 8);
  v582 = &v424 - v103;
  v104 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v104);
  v106 = &v424 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v107);
  v109 = (&v424 - v108);
  MEMORY[0x28223BE20](v110);
  v112 = &v424 - v111;
  MEMORY[0x28223BE20](v113);
  v593 = &v424 - v114;
  if (v592 <= 2u)
  {
    if (!v592)
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v117 = __swift_project_value_buffer(v104, qword_27F39E640);
      sub_24F391C98(v117, v112, type metadata accessor for CardLayoutMetrics);
      goto LABEL_18;
    }

    if (v592 == 1)
    {
      sub_24F4E9E44(v569, v109);
      sub_24F391D78(v109, v112, type metadata accessor for CardLayoutMetrics);
LABEL_18:
      v115 = v585;
      goto LABEL_23;
    }

    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v118 = __swift_project_value_buffer(v104, qword_27F39E628);
    sub_24F391C98(v118, v112, type metadata accessor for CardLayoutMetrics);
    v119 = &v112[v104[12]];
    *v119 = 0;
    *(v119 + 1) = 0;
    *(v119 + 2) = 0;
    *(v119 + 3) = 0x4024000000000000;
LABEL_17:
    *&v112[v104[30]] = 0x403A000000000000;
    goto LABEL_18;
  }

  if (v592 == 3)
  {
    sub_24F4E9558(v569, v109);
    sub_24F391D78(v109, v112, type metadata accessor for CardLayoutMetrics);
    v112[v104[17]] = 0;
    goto LABEL_17;
  }

  if (v592 == 4)
  {
    v115 = v585;
    if (qword_27F2112F0 != -1)
    {
      swift_once();
    }

    v116 = qword_27F39E610;
  }

  else
  {
    v115 = v585;
    if (qword_27F211308 != -1)
    {
      swift_once();
    }

    v116 = qword_27F39E658;
  }

  v120 = __swift_project_value_buffer(v104, v116);
  sub_24F391C98(v120, v112, type metadata accessor for CardLayoutMetrics);
LABEL_23:
  sub_24F391D78(v112, v593, type metadata accessor for CardLayoutMetrics);
  if (v115 == 1)
  {
    LOBYTE(v121) = v592;
    if (v592 <= 1u)
    {
      goto LABEL_49;
    }

    goto LABEL_33;
  }

  v121 = v592;
  if (v115 == 8)
  {
    if (v592 > 2u)
    {
      v155 = type metadata accessor for ChallengeCard(0);
      v156 = v579;
      v157 = v579 + *(v155 + 32);
      v158 = (v157 + *(type metadata accessor for CommonCardAttributes(0) + 60));
      v159 = v158[1];
      if (v159)
      {
        v160 = v521;
        sub_24F38BA0C(v156, *v158, v159, v521);
        v161 = sub_24F925A18();
        KeyPath = swift_getKeyPath();
        v163 = (v160 + *(v522 + 36));
        *v163 = KeyPath;
        v163[1] = v161;
        sub_24F391AA0();
        v164 = v523;
        sub_24F9268B8();
        sub_24E601704(v160, &qword_27F240A90, &qword_24F9EC410);
        LODWORD(v161) = sub_24F9251C8();
        *(v164 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240D10, &qword_24F9EC5D8) + 36)) = v161;
        v165 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240D00, &qword_24F9EC5D0) + 36);
        v166 = *MEMORY[0x277CE13B8];
        v167 = sub_24F927748();
        (*(*(v167 - 8) + 104))(v164 + v165, v166, v167);
        v168 = *(v593 + v104[28]);
        v169 = swift_getKeyPath();
        v170 = v525;
        v171 = v164 + *(v525 + 36);
        *v171 = v169;
        *(v171 + 8) = v168;
        *(v171 + 16) = 0;
        v172 = v526;
        sub_24E6009C8(v164, v526, &qword_27F240A98, &qword_24F9EC418);
        v173 = 0;
        v132 = v556;
        v133 = v554;
        v174 = v546;
      }

      else
      {
        v173 = 1;
        v132 = v556;
        v133 = v554;
        v174 = v546;
        v172 = v526;
        v170 = v525;
      }

      (*(v524 + 56))(v172, v173, 1, v170);
      sub_24E60169C(v172, v174, &qword_27F240AA0, &qword_24F9EC420);
      swift_storeEnumTagMultiPayload();
      sub_24F3917E4();
      sub_24F390BB4(&qword_27F21A0F8, type metadata accessor for ChallengeCardCapsuleSubtitle, &unk_24F958E70);
      v230 = v549;
      sub_24F924E28();
      sub_24E60169C(v230, v551, &qword_27F240A88, &qword_24F9EC408);
      swift_storeEnumTagMultiPayload();
      sub_24F391728();
      sub_24E701970();
      v123 = v562;
      sub_24F924E28();
      sub_24E601704(v230, &qword_27F240A88, &qword_24F9EC408);
      sub_24E601704(v172, &qword_27F240AA0, &qword_24F9EC420);
    }

    else
    {
      v123 = v562;
      if (v592 != 1)
      {
        goto LABEL_49;
      }

      v124 = type metadata accessor for ChallengeCard(0);
      v125 = v507;
      v126 = *(v507 + 16);
      v127 = v508;
      v128 = v509;
      v126(v508, v579 + *(v124 + 48), v509);
      v129 = v506;
      v126(v506, v127, v128);
      v130 = sub_24F268DBC();
      (*(v125 + 8))(v127, v128);
      *(v129 + *(v548 + 20)) = v130;
      sub_24F391C98(v129, v546, type metadata accessor for ChallengeCardCapsuleSubtitle);
      swift_storeEnumTagMultiPayload();
      sub_24F3917E4();
      sub_24F390BB4(&qword_27F21A0F8, type metadata accessor for ChallengeCardCapsuleSubtitle, &unk_24F958E70);
      v131 = v549;
      sub_24F924E28();
      sub_24E60169C(v131, v551, &qword_27F240A88, &qword_24F9EC408);
      swift_storeEnumTagMultiPayload();
      sub_24F391728();
      sub_24E701970();
      sub_24F924E28();
      sub_24E601704(v131, &qword_27F240A88, &qword_24F9EC408);
      sub_24F391D00(v129, type metadata accessor for ChallengeCardCapsuleSubtitle);
      v132 = v556;
      v133 = v554;
    }

    v231 = &qword_27F240AA8;
    v232 = &qword_24F9EC428;
    sub_24E60169C(v123, v133, &qword_27F240AA8, &qword_24F9EC428);
    swift_storeEnumTagMultiPayload();
    sub_24F3914C8();
    sub_24F39169C();
    sub_24F924E28();
    sub_24E60169C(v132, v566, &qword_27F240AB8, &qword_24F9EC438);
    swift_storeEnumTagMultiPayload();
    sub_24F39121C();
    sub_24F39143C();
    v233 = v567;
    sub_24F924E28();
    sub_24E601704(v132, &qword_27F240AB8, &qword_24F9EC438);
    sub_24E60169C(v233, v572, &qword_27F240B00, &unk_24F9EC480);
    swift_storeEnumTagMultiPayload();
    sub_24F390924();
    sub_24F391190();
    v234 = v573;
    sub_24F924E28();
    sub_24E601704(v233, &qword_27F240B00, &unk_24F9EC480);
    sub_24E60169C(v234, v577, &qword_27F240BC0, &unk_24F9EC578);
    swift_storeEnumTagMultiPayload();
    sub_24F390898();
    sub_24E701970();
    v147 = v578;
    goto LABEL_69;
  }

  if (v115 == 4)
  {
    if ((v592 & 0xFE) == 4)
    {
      goto LABEL_27;
    }

LABEL_49:
    v154 = v582;
    (*(v583 + 56))(v582, 1, 1, v586);
LABEL_123:
    sub_24E6009C8(v154, v584, &qword_27F240C00, &unk_24F9EC5C0);
    return sub_24F391D00(v593, type metadata accessor for CardLayoutMetrics);
  }

  if ((sub_24E92D030(v115, v579, v592) & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v115 > 3u)
  {
    if (v115 > 0xAu)
    {
      if (v115 == 11)
      {
        v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        v255 = v480;
        (*(*(v254 - 8) + 56))(v480, dword_24F9ECB54[v121], 5, v254);
        v256 = v481;
        sub_24F391D78(v255, v481, type metadata accessor for CardContentBackgroundStyle);
        sub_24F391C98(v256, v541, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24F391304(&qword_27F240CA8, &qword_27F240B18, &qword_24F9EC498, sub_24F391388);
        sub_24F390BB4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        v257 = v542;
        sub_24F924E28();
        sub_24E60169C(v257, v566, &qword_27F240AF8, &qword_24F9EC478);
        swift_storeEnumTagMultiPayload();
        sub_24F39121C();
        sub_24F39143C();
        v258 = v567;
        sub_24F924E28();
        sub_24E601704(v257, &qword_27F240AF8, &qword_24F9EC478);
        sub_24E60169C(v258, v572, &qword_27F240B00, &unk_24F9EC480);
        swift_storeEnumTagMultiPayload();
        sub_24F390924();
        sub_24F391190();
        v259 = v573;
        sub_24F924E28();
        sub_24E601704(v258, &qword_27F240B00, &unk_24F9EC480);
        sub_24E60169C(v259, v577, &qword_27F240BC0, &unk_24F9EC578);
        swift_storeEnumTagMultiPayload();
        sub_24F390898();
        sub_24E701970();
        v147 = v578;
        sub_24F924E28();
        sub_24E601704(v259, &qword_27F240BC0, &unk_24F9EC578);
        sub_24F391D00(v256, type metadata accessor for CardContentBackgroundStyle);
        goto LABEL_121;
      }

      v147 = v578;
      if (v115 == 12)
      {
        if (v121 > 1u)
        {
          v316 = type metadata accessor for ChallengeCard(0);
          v317 = v579;
          v318 = *(v579 + *(v316 + 56)) - 1;
          v319 = sub_24F926C98();
          v238 = v556;
          v239 = v554;
          if (v318 > 1)
          {
            v399 = v504;
            v400 = v317 + *(v316 + 36);
            v401 = v442;
            v402 = v505;
            (*(v504 + 16))(v442, v400, v505);
            (*(v399 + 56))(v401, 0, 1, v402);
            v320 = v443;
            sub_24F6C4E24(v401, v121 != 5, v319, v443);

            sub_24E601704(v401, &qword_27F213FB0, &qword_24F93E6B0);
            v324 = &qword_27F214A10;
            v325 = &unk_24F94BD90;
            sub_24E60169C(v320, v457, &qword_27F214A10, &unk_24F94BD90);
          }

          else
          {
            v320 = v441;
            v321 = v441 + *(v456 + 36);
            v322 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
            v323 = type metadata accessor for GradientBackground(0);
            (*(*(v323 - 8) + 56))(&v321[v322], 1, 1, v323);
            *v321 = swift_getKeyPath();
            v321[8] = 0;
            *(v321 + 3) = 0;
            *(v321 + 4) = 0;
            *(v321 + 2) = 0x403A000000000000;
            *(v321 + 20) = 257;
            *v320 = v319;
            v324 = &qword_27F240AC8;
            v325 = &qword_24F9EC448;
            sub_24E60169C(v320, v457, &qword_27F240AC8, &qword_24F9EC448);
          }

          swift_storeEnumTagMultiPayload();
          sub_24F3915E0();
          sub_24E63D150();
          v326 = v458;
          sub_24F924E28();
          sub_24E601704(v320, v324, v325);
          v148 = v586;
          sub_24E60169C(v326, v486, &qword_27F240AD0, &qword_24F9EC450);
          swift_storeEnumTagMultiPayload();
          sub_24E701970();
          sub_24F391554();
          v403 = v326;
          v237 = v488;
          sub_24F924E28();
          sub_24E601704(v403, &qword_27F240AD0, &qword_24F9EC450);
        }

        else
        {
          v236 = v497;
          sub_24E91E394(0xC, v579, v121, v569, v498, v497);
          sub_24E60169C(v236, v486, &qword_27F214A20, &unk_24F94D670);
          swift_storeEnumTagMultiPayload();
          sub_24E701970();
          sub_24F391554();
          v237 = v488;
          sub_24F924E28();
          sub_24E601704(v236, &qword_27F214A20, &unk_24F94D670);
          v238 = v556;
          v239 = v554;
          v148 = v586;
        }

        sub_24E60169C(v237, v239, &qword_27F240AE0, &qword_24F9EC460);
        swift_storeEnumTagMultiPayload();
        sub_24F3914C8();
        sub_24F39169C();
        sub_24F924E28();
        sub_24E60169C(v238, v566, &qword_27F240AB8, &qword_24F9EC438);
        swift_storeEnumTagMultiPayload();
        sub_24F39121C();
        sub_24F39143C();
        v404 = v237;
        v405 = v567;
        sub_24F924E28();
        sub_24E601704(v238, &qword_27F240AB8, &qword_24F9EC438);
        sub_24E60169C(v405, v572, &qword_27F240B00, &unk_24F9EC480);
        swift_storeEnumTagMultiPayload();
        sub_24F390924();
        sub_24F391190();
        v406 = v573;
        sub_24F924E28();
        sub_24E601704(v405, &qword_27F240B00, &unk_24F9EC480);
        sub_24E60169C(v406, v577, &qword_27F240BC0, &unk_24F9EC578);
        swift_storeEnumTagMultiPayload();
        sub_24F390898();
        sub_24E701970();
        sub_24F924E28();
        sub_24E601704(v406, &qword_27F240BC0, &unk_24F9EC578);
        sub_24E601704(v404, &qword_27F240AE0, &qword_24F9EC460);
        goto LABEL_122;
      }
    }

    else
    {
      if (v115 == 4)
      {
LABEL_27:
        if (v121 >= 4u)
        {
          if (v121 != 4)
          {
            v240 = type metadata accessor for ChallengeCard(0);
            v241 = v579;
            v242 = v579 + *(v240 + 32);
            v243 = (v242 + *(type metadata accessor for CommonCardAttributes(0) + 44));
            v244 = v243[1];
            v222 = v572;
            v122 = v563;
            if (v244)
            {
              v245 = *v243;
              v246 = v241 + *(v240 + 36);
              v247 = v470;
              (*(v504 + 16))(v470, v246, v505);
              v248 = v492;
              v249 = &v247[*(v492 + 20)];
              *v249 = v245;
              *(v249 + 1) = v244;
              v250 = v247;
              v251 = v493;
              sub_24F391D78(v250, v493, type metadata accessor for HeroCardGameHeadingView);
              v252 = 0;
            }

            else
            {
              v252 = 1;
              v251 = v493;
              v248 = v492;
            }

            (*(v491 + 56))(v251, v252, 1, v248);
            sub_24E60169C(v251, v514, &qword_27F219E50, &unk_24F94D9F0);
            swift_storeEnumTagMultiPayload();
            sub_24E7179AC();
            sub_24E63C774();

            v265 = v251;
            v266 = v515;
            sub_24F924E28();
            sub_24E60169C(v266, v529, &qword_27F21A070, &unk_24F9EC500);
            swift_storeEnumTagMultiPayload();
            sub_24E725CB8();
            sub_24F924E28();
            sub_24E601704(v266, &qword_27F21A070, &unk_24F9EC500);
            sub_24E601704(v265, &qword_27F219E50, &unk_24F94D9F0);
            v223 = v537;
            goto LABEL_65;
          }

          v194 = (v579 + *(type metadata accessor for ChallengeCard(0) + 40));
          v195 = v194[1];
          *&v597 = *v194;
          *(&v597 + 1) = v195;
          sub_24E600AEC();

          v196 = sub_24F925E18();
          v198 = v197;
          v200 = v199;
          v201 = v593;
          v202 = sub_24F925C98();
          v204 = v203;
          v206 = v205;
          sub_24E600B40(v196, v198, v200 & 1);

          LODWORD(v597) = sub_24F9251C8();
          v207 = sub_24F925C58();
          v209 = v208;
          v211 = v210;
          v213 = v212;
          sub_24E600B40(v202, v204, v206 & 1);

          v214 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
          v215 = *MEMORY[0x277CE13B8];
          v216 = sub_24F927748();
          v217 = v494;
          (*(*(v216 - 8) + 104))(&v494[v214], v215, v216);
          *v217 = v207;
          *(v217 + 8) = v209;
          *(v217 + 16) = v211 & 1;
          *(v217 + 24) = v213;
          v218 = *(v201 + v104[19]);
          v219 = swift_getKeyPath();
          v220 = v217 + *(v516 + 36);
          *v220 = v219;
          *(v220 + 8) = v218;
          *(v220 + 16) = 0;
          sub_24E60169C(v217, v514, &qword_27F214B98, &unk_24F93E740);
          swift_storeEnumTagMultiPayload();
          sub_24E7179AC();
          sub_24E63C774();
          v221 = v515;
          sub_24F924E28();
          sub_24E60169C(v221, v529, &qword_27F21A070, &unk_24F9EC500);
          swift_storeEnumTagMultiPayload();
          sub_24E725CB8();
          v122 = v563;
          sub_24F924E28();
          sub_24E601704(v221, &qword_27F21A070, &unk_24F9EC500);
          sub_24E601704(v217, &qword_27F214B98, &unk_24F93E740);
        }

        else
        {
          swift_storeEnumTagMultiPayload();
          sub_24E725CB8();
          v122 = v563;
          sub_24F924E28();
        }

        v222 = v572;
        v223 = v537;
LABEL_65:
        sub_24E60169C(v122, v223, &qword_27F21A078, &qword_24F9EC510);
        swift_storeEnumTagMultiPayload();
        sub_24E725C2C();
        sub_24F390F38();
        v224 = v540;
        sub_24F924E28();
        sub_24E60169C(v224, v559, &qword_27F240B60, &unk_24F9EC4E0);
        swift_storeEnumTagMultiPayload();
        sub_24F3909B0();
        sub_24F390EAC();
        v225 = v560;
        sub_24F924E28();
        sub_24E601704(v224, &qword_27F240B60, &unk_24F9EC4E0);
        sub_24E60169C(v225, v222, &qword_27F240BB8, &qword_24F9EC570);
        swift_storeEnumTagMultiPayload();
        sub_24F390924();
        sub_24F391190();
        v226 = v573;
        sub_24F924E28();
        sub_24E601704(v225, &qword_27F240BB8, &qword_24F9EC570);
        sub_24E60169C(v226, v577, &qword_27F240BC0, &unk_24F9EC578);
        swift_storeEnumTagMultiPayload();
        sub_24F390898();
        sub_24E701970();
        v147 = v578;
        sub_24F924E28();
        sub_24E601704(v226, &qword_27F240BC0, &unk_24F9EC578);
        v227 = v563;
        v228 = &qword_27F21A078;
        v229 = &qword_24F9EC510;
LABEL_120:
        sub_24E601704(v227, v228, v229);
        goto LABEL_121;
      }

      v147 = v578;
      if (v115 == 7)
      {
        if (v121 > 2u)
        {
          v294 = v579 + *(type metadata accessor for ChallengeCard(0) + 32);
          v295 = (v294 + *(type metadata accessor for CommonCardAttributes(0) + 56));
          v296 = v295[1];
          v148 = v586;
          if (v296)
          {
            v297 = *v295;
            v298 = (v593 + v104[22]);
            v299 = v298[3];
            v595 = v298[4];
            v594 = __swift_project_boxed_opaque_existential_1(v298, v299);
            *&v597 = v297;
            *(&v597 + 1) = v296;
            sub_24E600AEC();

            v300 = sub_24F925E18();
            v302 = v301;
            v304 = v303;
            v305 = sub_24F925C98();
            v307 = v306;
            LOBYTE(v297) = v308;
            sub_24E600B40(v300, v302, v304 & 1);

            v309 = sub_24F925C58();
            v311 = v310;
            LOBYTE(v300) = v312;
            v314 = v313;
            v315 = v307;
            v147 = v578;
            sub_24E600B40(v305, v315, v297 & 1);

            v296 = v300 & 1;
            sub_24E5FD138(v309, v311, v296);
          }

          else
          {
            v309 = 0;
            v311 = 0;
            v314 = 0;
          }

          v410 = v467;
          *v467 = v309;
          v410[1] = v311;
          v410[2] = v296;
          v410[3] = v314;
          swift_storeEnumTagMultiPayload();
          sub_24E65D2B4(v309, v311, v296, v314);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0, &qword_24F9477E0);
          sub_24E6C08EC();
          sub_24F391050();
          v411 = v469;
          sub_24F924E28();
          sub_24E60169C(v411, v484, &qword_27F240B48, &qword_24F9EC4C8);
          swift_storeEnumTagMultiPayload();
          sub_24F390FC4();
          sub_24E701970();
          v150 = v489;
          sub_24F924E28();
          sub_24E65D2F8(v309, v311, v296, v314);
          sub_24E65D2F8(v309, v311, v296, v314);
          v151 = v411;
          v152 = &qword_27F240B48;
          v153 = &qword_24F9EC4C8;
        }

        else
        {
          v148 = v586;
          if (v121 == 1)
          {
            v149 = v497;
            sub_24E91E394(7, v579, 1u, v569, v498, v497);
            sub_24E60169C(v149, v484, &qword_27F214A20, &unk_24F94D670);
            swift_storeEnumTagMultiPayload();
            sub_24F390FC4();
            sub_24E701970();
            v150 = v489;
            sub_24F924E28();
            v151 = v149;
            v152 = &qword_27F214A20;
            v153 = &unk_24F94D670;
          }

          else
          {
            v379 = type metadata accessor for ChallengeCard(0);
            v380 = v579 + v379[8];
            v381 = (v380 + *(type metadata accessor for CommonCardAttributes(0) + 56));
            v382 = v381[1];
            v150 = v489;
            if (!v382)
            {
              goto LABEL_140;
            }

            v383 = *v381;
            v384 = HIBYTE(v382) & 0xF;
            if ((v382 & 0x2000000000000000) == 0)
            {
              v384 = v383 & 0xFFFFFFFFFFFFLL;
            }

            if (v384)
            {
              v385 = v379[12];

              v386 = v579;
              sub_24F91F5C8();
              if (v387 >= *(v386 + v379[13]) && (v388 = v508, sub_24F91F638(), v389 = sub_24F91F588(), v595 = *(v507 + 8), (v595)(v388, v509), (v389 & 1) != 0))
              {
                v390 = *(v507 + 16);
                v391 = v386 + v385;
                v392 = v508;
                v393 = v509;
                v390(v508, v391, v509);
                v394 = v390;
                sub_24F391C98(v593, v106, type metadata accessor for CardLayoutMetrics);
                v395 = v425;
                *v425 = v383;
                *(v395 + 8) = v382;
                v396 = v429;
                v394(v395 + *(v429 + 20), v392, v393);
                v148 = v586;
                v147 = v578;
                sub_24F391C98(v106, v395 + *(v396 + 24), type metadata accessor for CardLayoutMetrics);
                v397 = sub_24F268DBC();
                sub_24F391D00(v106, type metadata accessor for CardLayoutMetrics);
                (v595)(v392, v393);
                *(v395 + *(v396 + 28)) = v397;
                sub_24F391C98(v395, v428, type metadata accessor for ChallengeCardTitleView);
                swift_storeEnumTagMultiPayload();
                sub_24E701970();
                sub_24F390BB4(&qword_27F21A178, type metadata accessor for ChallengeCardTitleView, &unk_24F99E508);
                v398 = v427;
                sub_24F924E28();
                sub_24F391D00(v395, type metadata accessor for ChallengeCardTitleView);
              }

              else
              {

                v419 = v497;
                sub_24E91E394(7, v386, v121, v569, v498, v497);
                sub_24E60169C(v419, v428, &qword_27F214A20, &unk_24F94D670);
                swift_storeEnumTagMultiPayload();
                sub_24E701970();
                sub_24F390BB4(&qword_27F21A178, type metadata accessor for ChallengeCardTitleView, &unk_24F99E508);
                v398 = v427;
                sub_24F924E28();
                sub_24E601704(v419, &qword_27F214A20, &unk_24F94D670);
                v147 = v578;
              }

              v150 = v489;
              v409 = v465;
              sub_24E6009C8(v398, v465, &qword_27F240B28, &qword_24F9EC4A8);
              v407 = 0;
              v408 = v484;
            }

            else
            {
LABEL_140:
              v407 = 1;
              v408 = v484;
              v409 = v465;
            }

            (*(v453 + 56))(v409, v407, 1, v454);
            sub_24E60169C(v409, v467, &qword_27F240B30, &qword_24F9EC4B0);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0, &qword_24F9477E0);
            sub_24E6C08EC();
            sub_24F391050();
            v420 = v469;
            sub_24F924E28();
            sub_24E60169C(v420, v408, &qword_27F240B48, &qword_24F9EC4C8);
            swift_storeEnumTagMultiPayload();
            sub_24F390FC4();
            sub_24E701970();
            sub_24F924E28();
            sub_24E601704(v420, &qword_27F240B48, &qword_24F9EC4C8);
            v151 = v465;
            v152 = &qword_27F240B30;
            v153 = &qword_24F9EC4B0;
          }
        }

        sub_24E601704(v151, v152, v153);
        v373 = &qword_24F9EC4D0;
        sub_24E60169C(v150, v537, &qword_27F240B50, &qword_24F9EC4D0);
        swift_storeEnumTagMultiPayload();
        sub_24E725C2C();
        sub_24F390F38();
        v421 = v540;
        sub_24F924E28();
        sub_24E60169C(v421, v559, &qword_27F240B60, &unk_24F9EC4E0);
        swift_storeEnumTagMultiPayload();
        sub_24F3909B0();
        sub_24F390EAC();
        v422 = v560;
        sub_24F924E28();
        sub_24E601704(v421, &qword_27F240B60, &unk_24F9EC4E0);
        sub_24E60169C(v422, v572, &qword_27F240BB8, &qword_24F9EC570);
        swift_storeEnumTagMultiPayload();
        sub_24F390924();
        sub_24F391190();
        v423 = v573;
        sub_24F924E28();
        sub_24E601704(v422, &qword_27F240BB8, &qword_24F9EC570);
        sub_24E60169C(v423, v577, &qword_27F240BC0, &unk_24F9EC578);
        swift_storeEnumTagMultiPayload();
        sub_24F390898();
        sub_24E701970();
        sub_24F924E28();
        sub_24E601704(v423, &qword_27F240BC0, &unk_24F9EC578);
        v377 = v150;
        v378 = &qword_27F240B50;
        goto LABEL_150;
      }
    }

    goto LABEL_81;
  }

  if (v115 == 1)
  {
LABEL_33:
    if ((v121 - 1) >= 4u)
    {
      swift_storeEnumTagMultiPayload();
      sub_24F391388();
      v175 = v533;
      sub_24F924E28();
      v147 = v578;
LABEL_119:
      sub_24E60169C(v175, v541, &qword_27F240B18, &qword_24F9EC498);
      swift_storeEnumTagMultiPayload();
      sub_24F391304(&qword_27F240CA8, &qword_27F240B18, &qword_24F9EC498, sub_24F391388);
      sub_24F390BB4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
      v335 = v542;
      sub_24F924E28();
      sub_24E60169C(v335, v566, &qword_27F240AF8, &qword_24F9EC478);
      swift_storeEnumTagMultiPayload();
      sub_24F39121C();
      sub_24F39143C();
      v336 = v567;
      sub_24F924E28();
      sub_24E601704(v335, &qword_27F240AF8, &qword_24F9EC478);
      sub_24E60169C(v336, v572, &qword_27F240B00, &unk_24F9EC480);
      swift_storeEnumTagMultiPayload();
      sub_24F390924();
      sub_24F391190();
      v337 = v573;
      sub_24F924E28();
      sub_24E601704(v336, &qword_27F240B00, &unk_24F9EC480);
      sub_24E60169C(v337, v577, &qword_27F240BC0, &unk_24F9EC578);
      swift_storeEnumTagMultiPayload();
      sub_24F390898();
      sub_24E701970();
      sub_24F924E28();
      sub_24E601704(v337, &qword_27F240BC0, &unk_24F9EC578);
      v227 = v175;
      v228 = &qword_27F240B18;
      v229 = &qword_24F9EC498;
      goto LABEL_120;
    }

    v134 = type metadata accessor for ChallengeCard(0);
    v135 = v579;
    sub_24F91F5C8();
    if (v136 < *(v135 + *(v134 + 52)))
    {
      v137 = *(v135 + *(v134 + 44));
      v138 = *(v137 + 16);
      v139 = MEMORY[0x277D84F90];
      if (v138)
      {
        *&v597 = MEMORY[0x277D84F90];
        sub_24F457BF8(0, v138, 0);
        v139 = v597;
        v140 = v137 + ((*(v495 + 80) + 32) & ~*(v495 + 80));
        v585 = *(v495 + 72);
        v141 = v591;
        v142 = v496;
        v143 = v520;
        v144 = v490;
        do
        {
          sub_24F391C98(v140, v142, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
          sub_24F391D78(v142, v144, type metadata accessor for PlayerAvatar);
          *&v597 = v139;
          v146 = *(v139 + 16);
          v145 = *(v139 + 24);
          if (v146 >= v145 >> 1)
          {
            sub_24F457BF8((v145 > 1), v146 + 1, 1);
            v143 = v520;
            v139 = v597;
          }

          *(v139 + 16) = v146 + 1;
          sub_24F391D78(v144, v139 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v146, type metadata accessor for PlayerAvatar);
          v140 += v585;
          --v138;
        }

        while (v138);
LABEL_95:
        v270 = *(v139 + 16);
        if (!v270)
        {

          v292 = 1;
          v147 = v578;
          v291 = v519;
          v293 = v518;
LABEL_118:
          (*(v517 + 56))(v293, v292, 1, v291);
          sub_24E60169C(v293, v531, &qword_27F240B08, &qword_24FA2DCF0);
          swift_storeEnumTagMultiPayload();
          sub_24F391388();
          v175 = v533;
          sub_24F924E28();
          sub_24E601704(v293, &qword_27F240B08, &qword_24FA2DCF0);
          goto LABEL_119;
        }

        v596 = MEMORY[0x277D84F90];
        sub_24F457C7C(0, v270, 0);
        v271 = v596;
        v272 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        v579 = v139;
        v273 = v139 + v272;
        v274 = (v510 + 56);
        v585 = *(v143 + 72);
        do
        {
          v275 = v587;
          sub_24F391C98(v273, v587, type metadata accessor for PlayerAvatar);
          sub_24F391C98(v275, v61, type metadata accessor for PlayerAvatar);

          sub_24F928948();
          sub_24F391D00(v275, type metadata accessor for PlayerAvatar);
          type metadata accessor for PlayerAvatarView.AvatarType(0);
          swift_storeEnumTagMultiPayload();
          v276 = v588;
          sub_24E60169C(&v61[*(v595 + 20)], v588, &qword_27F22DF80, &unk_24F942E50);
          v277 = *(v594 + 20);
          v278 = type metadata accessor for PlayerAvatar.Overlay(0);
          if ((*(*(v278 - 8) + 48))(v276, 1, v278) == 1)
          {
            sub_24E601704(v276, &qword_27F22DF80, &unk_24F942E50);
            v279 = 1;
            v280 = v590;
          }

          else
          {
            v281 = v580;
            sub_24F391D78(v276, v580, type metadata accessor for PlayerAvatar.Overlay);
            v280 = v590;
            v282 = v281 + *(v590 + 20);
            *v282 = 0;
            *(v282 + 8) = 1;
            v283 = (v281 + *(v280 + 24));
            *v283 = 0;
            v283[1] = 0;
            v284 = v281;
            v141 = v591;
            sub_24F391D78(v284, &v591[v277], type metadata accessor for PlayerAvatarView.Overlay);
            v279 = 0;
          }

          (*v274)(&v141[v277], v279, 1, v280);
          v285 = v594;
          v286 = &v141[*(v594 + 24)];
          sub_24E60169C(&v61[*(v595 + 24)], &v597, qword_27F24EC90, &unk_24F93C1D0);
          sub_24F391D00(v61, type metadata accessor for PlayerAvatar);
          v287 = v598;
          *v286 = v597;
          *(v286 + 1) = v287;
          *(v286 + 4) = v599;
          v141[*(v285 + 28)] = 7;
          v596 = v271;
          v288 = v141;
          v290 = *(v271 + 16);
          v289 = *(v271 + 24);
          if (v290 >= v289 >> 1)
          {
            sub_24F457C7C((v289 > 1), v290 + 1, 1);
            v271 = v596;
          }

          *(v271 + 16) = v290 + 1;
          sub_24F391D78(v288, v271 + ((*(v589 + 80) + 32) & ~*(v589 + 80)) + *(v589 + 72) * v290, type metadata accessor for PlayerAvatarView);
          v273 += v585;
          --v270;
          v141 = v288;
        }

        while (v270);

        if (v592 > 2u)
        {
          v147 = v578;
          v291 = v519;
        }

        else
        {
          v147 = v578;
          v291 = v519;
          if (v592 && v592 != 1)
          {

            v332 = 1;
LABEL_117:
            *&v597 = 0x4010000000000000;
            sub_24E66ED98();
            v333 = v511;
            sub_24F9237C8();
            *(v333 + v291[5]) = v271;
            v334 = v333 + v291[6];
            *v334 = v332;
            *(v334 + 8) = 1;
            *(v333 + v291[7]) = 3;
            v293 = v518;
            sub_24F391D78(v333, v518, type metadata accessor for OverlappingPlayerAvatarsView);
            v292 = 0;
            goto LABEL_118;
          }
        }

        v331 = sub_24F92CE08();

        if (v331)
        {
          v332 = 1;
        }

        else
        {
          v332 = 3;
        }

        goto LABEL_117;
      }

      v141 = v591;
LABEL_94:
      v143 = v520;
      goto LABEL_95;
    }

    if (v121 > 2u)
    {
      v141 = v591;
    }

    else
    {
      v141 = v591;
      if (v121 != 1)
      {
        v267 = 1;
LABEL_93:

        sub_24F637D70(v267 & 1, v268);
        v139 = v269;

        goto LABEL_94;
      }
    }

    v267 = sub_24F92CE08();
    goto LABEL_93;
  }

  if (v115 == 2)
  {
    if (v121 > 2u)
    {
      sub_24F391C98(v579, v98, type metadata accessor for ChallengeCard);
      v327 = v460;
      v98[*(v460 + 20)] = v121;
      v328 = &v98[*(v327 + 24)];
      type metadata accessor for CardSafeArea(0);
      sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
      *v328 = sub_24F923598();
      v328[8] = v329 & 1;
      sub_24F391C98(v98, v461, type metadata accessor for LargeVisualView);
      swift_storeEnumTagMultiPayload();
      sub_24F390BB4(&qword_27F240C30, type metadata accessor for LargeVisualView, &unk_24F9EC7D4);
      sub_24F390BB4(&qword_27F240C38, type metadata accessor for PortraitVisualView, &unk_24F9EC784);
      v330 = v463;
      sub_24F924E28();
      sub_24E60169C(v330, v478, &qword_27F240BE8, &qword_24F9EC5A8);
      swift_storeEnumTagMultiPayload();
      sub_24F390AC8();
      sub_24F390BFC();
      v260 = v100;
      sub_24F924E28();
      sub_24E601704(v330, &qword_27F240BE8, &qword_24F9EC5A8);
      sub_24F391D00(v98, type metadata accessor for LargeVisualView);
    }

    else
    {
      v260 = v100;
      if (v121)
      {
        v261 = v503;
        if (v121 == 1)
        {
          sub_24F391C98(v579, v90, type metadata accessor for ChallengeCard);
          v262 = &v90[*(v449 + 20)];
          type metadata accessor for CardSafeArea(0);
          sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
          *v262 = sub_24F923598();
          v262[8] = v263 & 1;
          sub_24F391C98(v90, v451, type metadata accessor for CompactVisualView);
          swift_storeEnumTagMultiPayload();
          sub_24F390BB4(&qword_27F240C48, type metadata accessor for CompactVisualView, &unk_24F9EC734);
          sub_24E701970();
          v264 = v452;
          sub_24F924E28();
          sub_24E60169C(v264, v478, &qword_27F240BD0, &qword_24F9EC590);
          swift_storeEnumTagMultiPayload();
          sub_24F390AC8();
          sub_24F390BFC();
          sub_24F924E28();
          sub_24E601704(v264, &qword_27F240BD0, &qword_24F9EC590);
          sub_24F391D00(v90, type metadata accessor for CompactVisualView);
        }

        else
        {
          sub_24F391C98(v579, v92, type metadata accessor for ChallengeCard);
          v414 = v462;
          v92[*(v462 + 20)] = 2;
          v415 = &v92[*(v414 + 24)];
          type metadata accessor for CardSafeArea(0);
          sub_24F390BB4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
          *v415 = sub_24F923598();
          v415[8] = v416 & 1;
          sub_24F391C98(v92, v461, type metadata accessor for PortraitVisualView);
          swift_storeEnumTagMultiPayload();
          sub_24F390BB4(&qword_27F240C30, type metadata accessor for LargeVisualView, &unk_24F9EC7D4);
          sub_24F390BB4(&qword_27F240C38, type metadata accessor for PortraitVisualView, &unk_24F9EC784);
          v417 = v463;
          sub_24F924E28();
          sub_24E60169C(v417, v478, &qword_27F240BE8, &qword_24F9EC5A8);
          swift_storeEnumTagMultiPayload();
          sub_24F390AC8();
          sub_24F390BFC();
          sub_24F924E28();
          sub_24E601704(v417, &qword_27F240BE8, &qword_24F9EC5A8);
          sub_24F391D00(v92, type metadata accessor for PortraitVisualView);
        }

        goto LABEL_145;
      }

      v412 = v497;
      sub_24E91E394(2, v579, 0, v569, v498, v497);
      sub_24E60169C(v412, v451, &qword_27F214A20, &unk_24F94D670);
      swift_storeEnumTagMultiPayload();
      sub_24F390BB4(&qword_27F240C48, type metadata accessor for CompactVisualView, &unk_24F9EC734);
      sub_24E701970();
      v413 = v452;
      sub_24F924E28();
      sub_24E60169C(v413, v478, &qword_27F240BD0, &qword_24F9EC590);
      swift_storeEnumTagMultiPayload();
      sub_24F390AC8();
      sub_24F390BFC();
      sub_24F924E28();
      sub_24E601704(v413, &qword_27F240BD0, &qword_24F9EC590);
      sub_24E601704(v412, &qword_27F214A20, &unk_24F94D670);
    }

    v261 = v503;
LABEL_145:
    v231 = &qword_27F240BF0;
    v232 = &qword_24F9EC5B0;
    sub_24E60169C(v260, v502, &qword_27F240BF0, &qword_24F9EC5B0);
    swift_storeEnumTagMultiPayload();
    sub_24F390A3C();
    sub_24F390CB8();
    sub_24F924E28();
    v123 = v260;
    sub_24E60169C(v261, v559, &qword_27F240BB0, &qword_24F9EC568);
    swift_storeEnumTagMultiPayload();
    sub_24F3909B0();
    sub_24F390EAC();
    v418 = v560;
    sub_24F924E28();
    sub_24E601704(v261, &qword_27F240BB0, &qword_24F9EC568);
    sub_24E60169C(v418, v572, &qword_27F240BB8, &qword_24F9EC570);
    swift_storeEnumTagMultiPayload();
    sub_24F390924();
    sub_24F391190();
    v234 = v573;
    sub_24F924E28();
    sub_24E601704(v418, &qword_27F240BB8, &qword_24F9EC570);
    sub_24E60169C(v234, v577, &qword_27F240BC0, &unk_24F9EC578);
    swift_storeEnumTagMultiPayload();
    sub_24F390898();
    sub_24E701970();
    v147 = v578;
LABEL_69:
    sub_24F924E28();
    sub_24E601704(v234, &qword_27F240BC0, &unk_24F9EC578);
    v235 = v123;
LABEL_70:
    sub_24E601704(v235, v231, v232);
LABEL_121:
    v148 = v586;
LABEL_122:
    v154 = v582;
    sub_24E6009C8(v147, v582, &qword_27F240BF8, &qword_24F9EC5B8);
    (*(v583 + 56))(v154, 0, 1, v148);
    goto LABEL_123;
  }

  v147 = v578;
  if (v115 != 3)
  {
LABEL_81:
    v253 = v497;
    sub_24E91E394(v115, v579, v121, v569, v498, v497);
    v231 = &qword_27F214A20;
    v232 = &unk_24F94D670;
    sub_24E60169C(v253, v577, &qword_27F214A20, &unk_24F94D670);
    swift_storeEnumTagMultiPayload();
    sub_24F390898();
    sub_24E701970();
    sub_24F924E28();
    v235 = v253;
    goto LABEL_70;
  }

  if (v121 > 3u)
  {
    v176 = v579;
    if (v121 == 4)
    {
      type metadata accessor for ChallengeCard(0);
      v338 = v434;
      sub_24F9289C8();
      LODWORD(v595) = *MEMORY[0x277CE0118];
      v339 = v435;
      v594 = *(v435 + 104);
      v340 = v433;
      v341 = v439;
      (v594)(v433);
      v342 = v436;
      sub_24F9219A8();
      (*(v339 + 8))(v340, v341);
      sub_24F390BB4(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
      sub_24F390BB4(&qword_27F214C30, MEMORY[0x277D7EBE8], MEMORY[0x277D7EBE0]);
      v343 = v440;
      v344 = v505;
      v345 = v438;
      sub_24F925ED8();
      (*(v437 + 8))(v342, v345);
      (*(v504 + 8))(v338, v344);
      v346 = sub_24F927618();
      v348 = v347;
      v349 = (v343 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20, &unk_24F93E780) + 36));
      v350 = sub_24F924258();
      (v594)(v349 + *(v350 + 20), v595, v341);
      __asm { FMOV            V0.2D, #8.0 }

      *v349 = _Q0;
      v356 = v593;
      v357 = (v593 + v104[32]);
      v358 = *v357;
      v359 = v357[1];
      v360 = v357[2];
      v361 = v357[3];
      v362 = (v349 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8, &unk_24F97E300) + 36));
      *v362 = v361;
      v362[1] = v360;
      v362[2] = v358;
      v362[3] = v359;
      v363 = (v349 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40, &unk_24F94FFE0) + 36));
      *v363 = v346;
      v363[1] = v348;
      v364 = *(v356 + v104[31]);

      sub_24F9278A8();
      v365 = (v343 + *(v444 + 36));
      *v365 = v364;
      v365[1] = v366;
      v365[2] = v367;
      sub_24E60169C(v343, v446, &qword_27F214C10, &unk_24F94FFD0);
      swift_storeEnumTagMultiPayload();
      sub_24E63CB8C();
      sub_24E680290();
      v368 = v447;
      sub_24F924E28();
      sub_24E60169C(v368, v473, &qword_27F240B80, &unk_24F9EC530);
      swift_storeEnumTagMultiPayload();
      sub_24F390D44();
      sub_24F390DD0();
      v181 = v475;
      sub_24F924E28();
      sub_24E601704(v368, &qword_27F240B80, &unk_24F9EC530);
      sub_24E601704(v343, &qword_27F214C10, &unk_24F94FFD0);
LABEL_128:
      v193 = v503;
      v148 = v586;
      goto LABEL_129;
    }

LABEL_127:
    v369 = type metadata accessor for ChallengeCard(0);
    v370 = v464;
    (*(v504 + 16))(v464, v176 + *(v369 + 36), v505);
    *(v370 + *(_s12GameStoreKit15PrimaryIconViewVMa_0(0) + 20)) = v121;
    sub_24F927618();
    sub_24F9238C8();
    v371 = (v370 + *(v474 + 36));
    v372 = v598;
    *v371 = v597;
    v371[1] = v372;
    v371[2] = v599;
    sub_24E60169C(v370, v473, &qword_27F240B68, &qword_24F9EC518);
    swift_storeEnumTagMultiPayload();
    sub_24F390D44();
    sub_24F390DD0();
    v181 = v475;
    sub_24F924E28();
    sub_24E601704(v370, &qword_27F240B68, &qword_24F9EC518);
    goto LABEL_128;
  }

  v176 = v579;
  if (v121 - 1 < 3)
  {
    goto LABEL_127;
  }

  result = type metadata accessor for ChallengeCard(0);
  v178 = (v176 + *(result + 44));
  v179 = v178[1];
  if ((v179 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v180 = *v178;
    v181 = v475;
    v148 = v586;
    if (v179 < *(v180 + 16))
    {
      v182 = result;
      v183 = v496;
      sub_24F391C98(v180 + ((*(v495 + 80) + 32) & ~*(v495 + 80)) + *(v495 + 72) * v179, v496, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
      v184 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0, &unk_24F94DAF0) + 48);
      v185 = v176 + *(v182 + 36);
      v186 = v431;
      (*(v504 + 16))(v431, v185, v505);
      *(v186 + v184) = 0xC024000000000000;
      v187 = type metadata accessor for PlayerAvatar.Overlay(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v187 - 8) + 56))(v186, 0, 1, v187);
      v188 = v430;
      sub_24F391C98(v183, v430, type metadata accessor for PlayerAvatar);
      sub_24E717FD0(v186, v188 + *(v595 + 20));
      LOBYTE(v597) = 7;
      v189 = v432;
      sub_24F8319B8(v188, &v597, v432);
      sub_24F927618();
      sub_24F9238C8();
      v190 = (v189 + *(v448 + 36));
      v191 = v598;
      *v190 = v597;
      v190[1] = v191;
      v190[2] = v599;
      sub_24E60169C(v189, v446, &qword_27F2233D0, &qword_24F958810);
      swift_storeEnumTagMultiPayload();
      sub_24E63CB8C();
      sub_24E680290();
      v192 = v447;
      sub_24F924E28();
      sub_24E60169C(v192, v473, &qword_27F240B80, &unk_24F9EC530);
      swift_storeEnumTagMultiPayload();
      sub_24F390D44();
      sub_24F390DD0();
      sub_24F924E28();
      sub_24E601704(v192, &qword_27F240B80, &unk_24F9EC530);
      sub_24E601704(v189, &qword_27F2233D0, &qword_24F958810);
      sub_24F391D00(v496, type metadata accessor for ChallengeCard.ParticipantsInfo.Participant);
      v193 = v503;
LABEL_129:
      v373 = &qword_24F9EC540;
      sub_24E60169C(v181, v502, &qword_27F240B88, &qword_24F9EC540);
      swift_storeEnumTagMultiPayload();
      sub_24F390A3C();
      sub_24F390CB8();
      sub_24F924E28();
      sub_24E60169C(v193, v559, &qword_27F240BB0, &qword_24F9EC568);
      swift_storeEnumTagMultiPayload();
      sub_24F3909B0();
      sub_24F390EAC();
      v374 = v181;
      v375 = v560;
      sub_24F924E28();
      sub_24E601704(v193, &qword_27F240BB0, &qword_24F9EC568);
      sub_24E60169C(v375, v572, &qword_27F240BB8, &qword_24F9EC570);
      swift_storeEnumTagMultiPayload();
      sub_24F390924();
      sub_24F391190();
      v376 = v573;
      sub_24F924E28();
      sub_24E601704(v375, &qword_27F240BB8, &qword_24F9EC570);
      sub_24E60169C(v376, v577, &qword_27F240BC0, &unk_24F9EC578);
      swift_storeEnumTagMultiPayload();
      sub_24F390898();
      sub_24E701970();
      sub_24F924E28();
      sub_24E601704(v376, &qword_27F240BC0, &unk_24F9EC578);
      v377 = v374;
      v378 = &qword_27F240B88;
LABEL_150:
      sub_24E601704(v377, v378, v373);
      goto LABEL_122;
    }
  }

  __break(1u);
  return result;
}