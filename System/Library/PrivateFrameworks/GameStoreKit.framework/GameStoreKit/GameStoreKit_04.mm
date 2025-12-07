uint64_t sub_24E652DB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AchievementsByGameShelfIntent(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = *(v1 + v7);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_24E6541E4;

  return sub_24E6505D4(a1, v10, v11, v12, v13, v1 + v6, v14, v1 + v9);
}

uint64_t sub_24E652F44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E654148(&qword_27F215218, type metadata accessor for AchievementsByGameOptionProvider, &unk_24F98F2B8);
  sub_24F91FD88();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_24E653060@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E654148(&qword_27F215218, type metadata accessor for AchievementsByGameOptionProvider, &unk_24F98F2B8);
  sub_24F91FD88();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_24E65317C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6531E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E653244()
{
  v1 = type metadata accessor for AchievementsByGameShelfIntent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v53 = *(*(v1 - 8) + 64);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v4 = *(v54 - 8);
  v52 = *(v4 + 80);
  swift_unknownObjectRelease();

  v50 = v0 + v3;
  v51 = v1;
  v5 = v0 + v3 + *(v1 + 20);

  v6 = type metadata accessor for Player(0);
  v7 = v6[6];
  v8 = sub_24F9289E8();
  v55 = *(v8 - 8);
  v56 = *(v55 + 8);
  v56(v5 + v7, v8);

  if (*(v5 + v6[9] + 8) != 1)
  {
  }

  v9 = v5 + v6[13];
  v10 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v46 = (v2 + 56) & ~v2;
    v47 = v4;
    v11 = type metadata accessor for CallProviderConversationHandle(0);
    v12 = *(*(v11 - 8) + 48);
    if (!v12(v9, 1, v11))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v55 + 48))(v9 + v13, 1, v8))
      {
        v56(v9 + v13, v8);
      }
    }

    v14 = v9 + *(v10 + 20);
    v3 = v46;
    if (!v12(v14, 1, v11))
    {

      v15 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v55 + 48))(v14 + v15, 1, v8))
      {
        v56(v14 + v15, v8);
      }
    }

    v4 = v47;
  }

  if (*(v5 + v6[15] + 8))
  {
  }

  v16 = v5 + v6[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
  {
    v48 = v4;

    v18 = type metadata accessor for Game(0);
    v56(v16 + v18[18], v8);
    v19 = v18[19];
    if (!(*(v55 + 48))(v16 + v19, 1, v8))
    {
      v56(v16 + v19, v8);
    }

    v20 = v18[21];
    v21 = sub_24F920818();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }

    v4 = v48;
  }

  v23 = v5 + v6[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
  {

    v25 = type metadata accessor for Game(0);
    v56(v23 + v25[18], v8);
    v26 = v25[19];
    if (!(*(v55 + 48))(v23 + v26, 1, v8))
    {
      v56(v23 + v26, v8);
    }

    v27 = v25[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }
  }

  v30 = v50 + *(v51 + 24);
  v31 = type metadata accessor for Page.Background(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v56(v30, v8);
          v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v36 = sub_24F922348();
          v37 = *(v36 - 8);
          if (!(*(v37 + 48))(v30 + v35, 1, v36))
          {
            (*(v37 + 8))(v30 + v35, v36);
          }
        }
      }

      else
      {
        v56(v30, v8);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      if (!(*(v55 + 48))(v30, 1, v8))
      {
        v56(v30, v8);
      }

      v38 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v39 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v39 - 1) + 48))(v38, 1, v39))
      {
        v49 = v4;
        v40 = sub_24F91F4A8();
        (*(*(v40 - 8) + 8))(v38, v40);
        v56(v38 + v39[5], v8);
        v41 = v39[9];
        v42 = sub_24F928698();
        v43 = *(v42 - 8);
        v44 = *(v43 + 48);
        if (!v44(v38 + v41, 1, v42))
        {
          (*(v43 + 8))(v38 + v41, v42);
        }

        v45 = v39[10];
        if (!v44(v38 + v45, 1, v42))
        {
          (*(v43 + 8))(v38 + v45, v42);
        }

        v4 = v49;
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v34 = sub_24F928388();
      (*(*(v34 - 8) + 8))(v30, v34);
    }
  }

  (*(v4 + 8))(v0 + ((((v53 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v52 + 8) & ~v52), v54);

  return swift_deallocObject();
}

uint64_t sub_24E653D0C(uint64_t a1)
{
  v3 = *(type metadata accessor for AchievementsByGameShelfIntent(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = *(v1 + v5);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24E614970;

  return sub_24E64FAC8(a1, v6, v7, v8, v9, v10, v1 + v4, v11);
}

unint64_t sub_24E653EA8()
{
  result = qword_27F215238;
  if (!qword_27F215238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215238);
  }

  return result;
}

unint64_t sub_24E653EFC()
{
  result = qword_27F215240;
  if (!qword_27F215240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215240);
  }

  return result;
}

unint64_t sub_24E653F50()
{
  result = qword_27F215248;
  if (!qword_27F215248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215248);
  }

  return result;
}

unint64_t sub_24E653FA4()
{
  result = qword_27F215250;
  if (!qword_27F215250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215250);
  }

  return result;
}

unint64_t sub_24E653FF8()
{
  result = qword_27F215258;
  if (!qword_27F215258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215258);
  }

  return result;
}

unint64_t sub_24E65404C()
{
  result = qword_27F215260;
  if (!qword_27F215260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215260);
  }

  return result;
}

unint64_t sub_24E6540A0()
{
  result = qword_27F215268;
  if (!qword_27F215268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215268);
  }

  return result;
}

unint64_t sub_24E6540F4()
{
  result = qword_27F215270;
  if (!qword_27F215270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215270);
  }

  return result;
}

uint64_t sub_24E654148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E654220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215280, &unk_24F93FA90);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24E6542FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215280, &unk_24F93FA90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ToolbarTransitionViewModifier(uint64_t a1)
{
  result = qword_27F215288;
  if (!qword_27F215288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E6543F8(uint64_t a1)
{
  sub_24E654564(319, &qword_27F215298, type metadata accessor for TransientToolbarConfiguration, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24E654514();
    if (v2 <= 0x3F)
    {
      sub_24E654564(319, &qword_27F2152A0, type metadata accessor for TransientToolbarConfiguration.ToolbarItem, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E654514()
{
  if (!qword_27F254E10)
  {
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F254E10);
    }
  }
}

void sub_24E654564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E6545E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152A8, &qword_24F93FB10);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for ToolbarTransitionViewModifier(0);
  v9 = v8 - 8;
  v42 = *(v8 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152B0, &qword_24F93FB18);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152B8, &qword_24F93FB20);
  MEMORY[0x28223BE20](v44);
  v15 = &v37 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152C0, &qword_24F93FB28);
  MEMORY[0x28223BE20](v45);
  if (*(v3 + *(v9 + 48)) == 1)
  {
    v37 = &v37 - v16;
    v40 = v17;
    sub_24E656200(v3, &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarTransitionViewModifier);
    v41 = v5;
    v18 = *(v42 + 80);
    v38 = v7;
    v19 = (v18 + 16) & ~v18;
    v20 = swift_allocObject();
    v42 = a2;
    v21 = v20;
    sub_24E656198(&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ToolbarTransitionViewModifier);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152C8, &qword_24F93FB30);
    (*(*(v39 - 8) + 16))(v13, v43, v39);
    v22 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152E8, &qword_24F93FB38) + 36)];
    *v22 = sub_24E6554CC;
    v22[1] = v21;
    v22[2] = 0;
    v22[3] = 0;
    sub_24E656200(v3, &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarTransitionViewModifier);
    v23 = swift_allocObject();
    sub_24E656198(&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v19, type metadata accessor for ToolbarTransitionViewModifier);
    v24 = &v13[*(v11 + 36)];
    *v24 = 0;
    *(v24 + 1) = 0;
    *(v24 + 2) = sub_24E6554D4;
    *(v24 + 3) = v23;
    v25 = *(v3 + 40);
    LOBYTE(v47) = *(v3 + 32);
    v48 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F38();
    if (v46)
    {
      v26 = 1.0;
    }

    else
    {
      v26 = 0.0;
    }

    sub_24E655540(v13, v15);
    v27 = v15;
    v28 = v44;
    *(v27 + *(v44 + 36)) = v26;
    sub_24E656200(v3, &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ToolbarTransitionViewModifier);
    v29 = swift_allocObject();
    sub_24E656198(&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v19, type metadata accessor for ToolbarTransitionViewModifier);
    v30 = sub_24E6552F8();
    v31 = v37;
    sub_24F9267B8();

    sub_24E601704(v27, &qword_27F2152B8, &qword_24F93FB20);
    v32 = v40;
    v33 = v45;
    (*(v40 + 16))(v38, v31, v45);
    swift_storeEnumTagMultiPayload();
    v47 = v28;
    v48 = v30;
    swift_getOpaqueTypeConformance2();
    sub_24E655464();
    sub_24F924E28();
    return (*(v32 + 8))(v31, v33);
  }

  else
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152C8, &qword_24F93FB30);
    (*(*(v35 - 8) + 16))(v7, v43, v35);
    swift_storeEnumTagMultiPayload();
    v36 = sub_24E6552F8();
    v47 = v44;
    v48 = v36;
    swift_getOpaqueTypeConformance2();
    sub_24E655464();
    return sub_24F924E28();
  }
}

void *sub_24E654C24(char a1, void *a2)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215280, &unk_24F93FA90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
  v44 = *(v16 - 8);
  v45 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  v22 = a2[3];
  LOBYTE(v47) = *(a2 + 16);
  v48 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  result = sub_24F926F38();
  if (v46 == 1)
  {
    v39 = v5;
    v40 = v4;
    if (qword_27F211930 != -1)
    {
      swift_once();
    }

    MEMORY[0x28223BE20](qword_27F39F0D8);
    *(&v36 - 2) = a2;
    v42 = a1 & 1;
    *(&v36 - 8) = a1 & 1;
    sub_24F923B18();
    v41 = type metadata accessor for ToolbarTransitionViewModifier(0);
    sub_24E656128(a2 + *(v41 + 32), v15);
    v24 = v45;
    v25 = *(v44 + 48);
    if (v25(v15, 1, v45) != 1)
    {
      v37 = v25;
      v38 = v18;
      sub_24E656198(v15, v21, type metadata accessor for TransientToolbarConfiguration.ToolbarItem);
      v26 = *a2;
      v27 = *(a2 + 8);

      if ((v27 & 1) == 0)
      {
        sub_24F92BDC8();
        v28 = sub_24F9257A8();
        sub_24F921FD8();

        v24 = v45;
        v29 = v43;
        sub_24F924838();
        swift_getAtKeyPath();

        (*(v39 + 8))(v29, v40);
        v26 = v47;
      }

      *v21 = v42;
      sub_24E656200(v21, v12, type metadata accessor for TransientToolbarConfiguration.ToolbarItem);
      (*(v44 + 56))(v12, 0, 1, v24);
      KeyPath = swift_getKeyPath();
      v36 = &v36;
      MEMORY[0x28223BE20](KeyPath);
      *(&v36 - 2) = v26;
      *(&v36 - 1) = v12;
      v47 = v26;
      sub_24E65628C();
      sub_24F91FD78();
      v24 = v45;

      sub_24E6562E4(v21);

      v25 = v37;
      v15 = v12;
      v18 = v38;
    }

    sub_24E601704(v15, &qword_27F215280, &unk_24F93FA90);
    sub_24E656128(a2 + *(v41 + 36), v9);
    if (v25(v9, 1, v24) == 1)
    {
      v12 = v9;
    }

    else
    {
      sub_24E656198(v9, v18, type metadata accessor for TransientToolbarConfiguration.ToolbarItem);
      v31 = *a2;
      v32 = *(a2 + 8);

      if ((v32 & 1) == 0)
      {
        sub_24F92BDC8();
        v33 = sub_24F9257A8();
        sub_24F921FD8();

        v24 = v45;
        v34 = v43;
        sub_24F924838();
        swift_getAtKeyPath();

        (*(v39 + 8))(v34, v40);
        v31 = v47;
      }

      *v18 = v42;
      sub_24E656200(v18, v12, type metadata accessor for TransientToolbarConfiguration.ToolbarItem);
      (*(v44 + 56))(v12, 0, 1, v24);
      v35 = swift_getKeyPath();
      MEMORY[0x28223BE20](v35);
      *(&v36 - 2) = v31;
      *(&v36 - 1) = v12;
      v47 = v31;
      sub_24E65628C();
      sub_24F91FD78();

      sub_24E6562E4(v18);
    }

    return sub_24E601704(v12, &qword_27F215280, &unk_24F93FA90);
  }

  return result;
}

unint64_t sub_24E6552F8()
{
  result = qword_27F2152D0;
  if (!qword_27F2152D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2152B8, &qword_24F93FB20);
    sub_24E6553B0(&qword_27F2152D8, &qword_27F2152B0, &qword_24F93FB18, sub_24E655434);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2152D0);
  }

  return result;
}

uint64_t sub_24E6553B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24E655464()
{
  result = qword_27F2152F0;
  if (!qword_27F2152F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2152C8, &qword_24F93FB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2152F0);
  }

  return result;
}

uint64_t sub_24E655540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152B0, &qword_24F93FB18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for ToolbarTransitionViewModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
  v6 = *(*(v5 - 8) + 48);
  if (v6(v4, 1, v5))
  {
    goto LABEL_2;
  }

  v9 = v4 + *(v5 + 20);
  v10 = type metadata accessor for TransientToolbarItem(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    goto LABEL_7;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        v55 = *(type metadata accessor for OfferButtonInfo(0) + 24);
        v45 = sub_24F91F4A8();
        v50 = *(v45 - 8);
        v52 = v45;
        if (!(*(v50 + 48))(v9 + v55, 1))
        {
          (*(v50 + 8))(v9 + v55, v52);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152F8, &unk_24F93FB40);
      }

      else if (EnumCaseMultiPayload == 2)
      {

        v51 = type metadata accessor for PlayerAvatar(0);
        v54 = *(v51 + 20);
        v49 = type metadata accessor for PlayerAvatar.Overlay(0);
        if (!(*(*(v49 - 8) + 48))(v9 + v54, 1) && !swift_getEnumCaseMultiPayload())
        {
          v27 = sub_24F9289E8();
          (*(*(v27 - 8) + 8))(v9 + v54, v27);
        }

        v28 = (v9 + *(v51 + 24));
        if (v28[3])
        {
          __swift_destroy_boxed_opaque_existential_1(v28);
        }
      }

      goto LABEL_7;
    }

    v43 = sub_24F9289E8();
LABEL_77:
    (*(*(v43 - 8) + 8))(v9, v43);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v43 = sub_24F91F4A8();
    goto LABEL_77;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v11 = v4 + *(v5 + 24);
  v12 = swift_getEnumCaseMultiPayload();
  if (v12 <= 2)
  {
    if (v12)
    {
      if (v12 == 1)
      {

        v37 = *(type metadata accessor for OfferButtonInfo(0) + 24);
        v38 = sub_24F91F4A8();
        v39 = *(v38 - 8);
        if (!(*(v39 + 48))(v11 + v37, 1, v38))
        {
          (*(v39 + 8))(v11 + v37, v38);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152F8, &unk_24F93FB40);
      }

      else if (v12 == 2)
      {

        v53 = type metadata accessor for PlayerAvatar(0);
        v13 = *(v53 + 20);
        v14 = type metadata accessor for PlayerAvatar.Overlay(0);
        if (!(*(*(v14 - 8) + 48))(v11 + v13, 1, v14) && !swift_getEnumCaseMultiPayload())
        {
          v15 = sub_24F9289E8();
          (*(*(v15 - 8) + 8))(v11 + v13, v15);
        }

        v16 = (v11 + *(v53 + 24));
        if (v16[3])
        {
          __swift_destroy_boxed_opaque_existential_1(v16);
        }
      }

      goto LABEL_2;
    }

    v35 = sub_24F9289E8();
LABEL_63:
    (*(*(v35 - 8) + 8))(v11, v35);
    goto LABEL_2;
  }

  if (v12 == 3)
  {
    v35 = sub_24F91F4A8();
    goto LABEL_63;
  }

  if (v12 != 4)
  {
    if (v12 != 5)
    {
      goto LABEL_2;
    }
  }

LABEL_2:
  v7 = v3 + *(v1 + 36);
  if (v6(v7, 1, v5))
  {
    goto LABEL_3;
  }

  v17 = v7 + *(v5 + 20);
  v18 = type metadata accessor for TransientToolbarItem(0);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    goto LABEL_17;
  }

  v29 = swift_getEnumCaseMultiPayload();
  if (v29 <= 2)
  {
    if (v29)
    {
      if (v29 == 1)
      {

        v46 = *(type metadata accessor for OfferButtonInfo(0) + 24);
        v47 = sub_24F91F4A8();
        v48 = *(v47 - 8);
        if (!(*(v48 + 48))(v17 + v46, 1, v47))
        {
          (*(v48 + 8))(v17 + v46, v47);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152F8, &unk_24F93FB40);
      }

      else if (v29 == 2)
      {

        v30 = type metadata accessor for PlayerAvatar(0);
        v31 = *(v30 + 20);
        v32 = type metadata accessor for PlayerAvatar.Overlay(0);
        if (!(*(*(v32 - 8) + 48))(v17 + v31, 1, v32) && !swift_getEnumCaseMultiPayload())
        {
          v33 = sub_24F9289E8();
          (*(*(v33 - 8) + 8))(v17 + v31, v33);
        }

        v34 = (v17 + *(v30 + 24));
        if (v34[3])
        {
          __swift_destroy_boxed_opaque_existential_1(v34);
        }
      }

      goto LABEL_17;
    }

    v44 = sub_24F9289E8();
LABEL_79:
    (*(*(v44 - 8) + 8))(v17, v44);
    goto LABEL_17;
  }

  if (v29 == 3)
  {
    v44 = sub_24F91F4A8();
    goto LABEL_79;
  }

  if (v29 != 4)
  {
    if (v29 != 5)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  v19 = v7 + *(v5 + 24);
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 <= 2)
  {
    if (v20)
    {
      if (v20 == 1)
      {

        v40 = *(type metadata accessor for OfferButtonInfo(0) + 24);
        v41 = sub_24F91F4A8();
        v42 = *(v41 - 8);
        if (!(*(v42 + 48))(v19 + v40, 1, v41))
        {
          (*(v42 + 8))(v19 + v40, v41);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2152F8, &unk_24F93FB40);
      }

      else if (v20 == 2)
      {

        v21 = type metadata accessor for PlayerAvatar(0);
        v22 = *(v21 + 20);
        v23 = type metadata accessor for PlayerAvatar.Overlay(0);
        if (!(*(*(v23 - 8) + 48))(v19 + v22, 1, v23) && !swift_getEnumCaseMultiPayload())
        {
          v24 = sub_24F9289E8();
          (*(*(v24 - 8) + 8))(v19 + v22, v24);
        }

        v25 = (v19 + *(v21 + 24));
        if (v25[3])
        {
          __swift_destroy_boxed_opaque_existential_1(v25);
        }
      }

      goto LABEL_3;
    }

    v36 = sub_24F9289E8();
LABEL_65:
    (*(*(v36 - 8) + 8))(v19, v36);
    goto LABEL_3;
  }

  if (v20 == 3)
  {
    v36 = sub_24F91F4A8();
    goto LABEL_65;
  }

  if (v20 != 4)
  {
    if (v20 != 5)
    {
      goto LABEL_3;
    }
  }

LABEL_3:

  return swift_deallocObject();
}

void *sub_24E65604C(char a1)
{
  v3 = *(type metadata accessor for ToolbarTransitionViewModifier(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24E654C24(a1, v4);
}

uint64_t sub_24E656128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215280, &unk_24F93FA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E656198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E656200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24E65628C()
{
  result = qword_27F215300;
  if (!qword_27F215300)
  {
    type metadata accessor for TransientToolbarConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215300);
  }

  return result;
}

uint64_t sub_24E6562E4(uint64_t a1)
{
  v2 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E656368()
{
  result = qword_27F215308;
  if (!qword_27F215308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215310, qword_24F93FBA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2152B8, &qword_24F93FB20);
    sub_24E6552F8();
    swift_getOpaqueTypeConformance2();
    sub_24E655464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215308);
  }

  return result;
}

uint64_t sub_24E656438(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_24F457A7C(0, v1, 0);
  v2 = v29;
  v3 = a1 + 64;
  result = sub_24F92C6B8();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v25 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v26 = *(v6 + 36);
    v11 = *(*(v6 + 56) + 8 * v5);
    sub_24E65864C(v11 + OBJC_IVAR____TtC12GameStoreKit6Action_id, v27);
    *(&v28 + 1) = v11;
    v29 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);

    if (v13 >= v12 >> 1)
    {
      result = sub_24F457A7C((v12 > 1), v13 + 1, 1);
      v2 = v29;
    }

    *(v2 + 16) = v13 + 1;
    v14 = (v2 + 48 * v13);
    v15 = v27[0];
    v16 = v28;
    v14[3] = v27[1];
    v14[4] = v16;
    v14[2] = v15;
    v8 = 1 << *(v6 + 32);
    v3 = a1 + 64;
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(a1 + 64 + 8 * v10);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      v9 = v25;
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_24E6586A8(v5, v26, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_24E6586A8(v5, v26, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_24E656698()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39A4F0);
  __swift_project_value_buffer(v4, qword_27F39A4F0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

void *sub_24E6567EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v68 = a4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330, &unk_24F93FBE0);
  MEMORY[0x28223BE20](v65);
  v64 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v54 - v11;
  v78 = sub_24F91EF38();
  v72 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_24F91EF18();
  v69 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v76 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v74 = &v54 - v15;
  v16 = sub_24F91EF48();
  v70 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v73 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215348, &unk_24F93FBF0);
  MEMORY[0x28223BE20](v71);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v54 - v21;
  v62 = sub_24F91F008();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v67 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);

  v25 = sub_24E656438(v24);

  if (*(v25 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215350, &unk_24F963E70);
    v26 = sub_24F92CB58();
  }

  else
  {
    v26 = MEMORY[0x277D84F98];
  }

  v80[0] = v26;

  sub_24E6580EC(v27, 1, v80);

  *(v4 + qword_27F215320) = v80[0];
  *(v4 + 24) = a3;
  *(v4 + 32) = a2;

  LinkableText.asMarkdownAttributedString()(v22);
  v28 = v61;
  v29 = v62;
  if ((*(v61 + 48))(v22, 1, v62) == 1)
  {

    sub_24E601704(v22, &qword_27F215340, &qword_24F943530);
    (*(v28 + 56))(v4 + qword_27F215318, 1, 1, v29);
  }

  else
  {
    v57 = a2;
    v58 = a3;
    v59 = a1;
    v60 = v4;
    v30 = *(v28 + 32);
    v56 = v28 + 32;
    v55 = v30;
    v30(v67, v22, v29);
    v80[0] = v68;
    v31 = sub_24E6584A4();

    v63 = v31;
    sub_24F91F038();
    v32 = v73;
    sub_24F91EF68();
    v33 = v70;
    v70[2](v19, v32, v16);
    sub_24E6584F8(&qword_27F215360, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
    sub_24F92BB88();
    v34 = v33[1];
    v73 = v16;
    (v34)(v32, v16);
    v71 = (v69 + 2);
    ++v72;
    v35 = (v69 + 4);
    ++v69;
    v70 = v35;
    v36 = v66;
    v37 = v76;
    while (1)
    {
      v44 = v77;
      sub_24F92BC08();
      sub_24E6584F8(&unk_27F237EA0, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
      v45 = v78;
      v46 = sub_24F92AFF8();
      (*v72)(v44, v45);
      if (v46)
      {
        break;
      }

      v47 = sub_24F92BC88();
      v49 = v74;
      v48 = v75;
      (*v71)(v74);
      v47(v80, 0);
      sub_24F92BC18();
      (*v70)(v37, v49, v48);
      sub_24E658540();
      sub_24F91EF28();
      v50 = sub_24F91F4A8();
      if ((*(*(v50 - 8) + 48))(v36, 1, v50) == 1)
      {
        (*v69)(v37, v48);
        sub_24E601704(v36, &qword_27F228530, &unk_24F93C6E0);
      }

      else
      {
        sub_24E601704(v36, &qword_27F228530, &unk_24F93C6E0);
        v38 = v64;
        sub_24F91EF08();
        v39 = v48;
        v40 = sub_24F9258E8();
        sub_24E658594();
        v41 = sub_24F91F048();
        v79 = v40;
        sub_24F91F148();
        v41(v80, 0);
        v42 = v38;
        v36 = v66;
        sub_24E601704(v42, &qword_27F22D330, &unk_24F93FBE0);
        v43 = v39;
        v37 = v76;
        (*v69)(v76, v43);
      }
    }

    sub_24E601704(v19, &qword_27F215348, &unk_24F93FBF0);
    v51 = qword_27F215318;
    v5 = v60;
    v52 = v62;
    v55(v60 + qword_27F215318, v67, v62);
    (*(v61 + 56))(v5 + v51, 0, 1, v52);
    a1 = v59;
  }

  *(v5 + 16) = a1;
  return v5;
}

uint64_t sub_24E657190()
{
  v1 = *(v0 + qword_27F215320);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_24EAEACA0(*(v1 + 16), 0);
  v4 = sub_24EAEAC98();

  sub_24E6586B4(v6);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_24E657254@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215378, &unk_24F93FC10);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v54 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330, &unk_24F93FBE0);
  MEMORY[0x28223BE20](v62);
  v61 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = &v54 - v10;
  v73 = sub_24F91EF38();
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_24F91EF18();
  v13 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = &v54 - v16;
  v65 = sub_24F91EF48();
  v17 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215348, &unk_24F93FBF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v54 - v24;
  v26 = sub_24F91F008();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v66 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return sub_24E60169C(v71 + qword_27F215318, a2, &qword_27F215340, &qword_24F943530);
  }

  v30 = v19;
  v31 = a2;
  v32 = v28;
  sub_24E60169C(v71 + qword_27F215318, v25, &qword_27F215340, &qword_24F943530);
  if ((*(v27 + 48))(v25, 1, v32) == 1)
  {
    sub_24E601704(v25, &qword_27F215340, &qword_24F943530);
    return (*(v27 + 56))(v31, 1, 1, v32);
  }

  else
  {
    v59 = v31;
    v57 = v27;
    v34 = *(v27 + 32);
    v58 = v32;
    v56 = v27 + 32;
    v55 = v34;
    v34(v66, v25, v32);
    sub_24F91EF68();
    v35 = v65;
    (*(v17 + 16))(v22, v30, v65);
    v36 = sub_24E6584F8(&qword_27F215360, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
    sub_24F92BB88();
    (*(v17 + 8))(v30, v35);
    v37 = (v70 + 1);
    v70 = (v13 + 16);
    v71 = v37;
    v68 = (v13 + 8);
    v69 = (v13 + 32);
    v67 = v36;
    v60 = v12;
    while (1)
    {
      sub_24F92BC08();
      sub_24E6584F8(&unk_27F237EA0, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
      v45 = v73;
      v46 = sub_24F92AFF8();
      (*v71)(v12, v45);
      if (v46)
      {
        break;
      }

      v47 = sub_24F92BC88();
      v48 = v72;
      v49 = v75;
      (*v70)(v72);
      v47(v77, 0);
      sub_24F92BC18();
      (*v69)(v74, v48, v49);
      sub_24E658540();
      v50 = v76;
      sub_24F91EF28();
      v51 = sub_24F91F4A8();
      if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
      {
        (*v68)(v74, v75);
        sub_24E601704(v76, &qword_27F228530, &unk_24F93C6E0);
      }

      else
      {
        sub_24E601704(v76, &qword_27F228530, &unk_24F93C6E0);
        v38 = v61;
        v39 = v74;
        sub_24F91EF08();
        v40 = v63;
        sub_24F925D88();
        v41 = sub_24F925D98();
        (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
        sub_24E658594();
        v42 = sub_24F91F048();
        sub_24E60169C(v40, v64, &qword_27F215378, &unk_24F93FC10);
        sub_24E658720();
        v43 = v75;
        sub_24F91F148();
        v44 = v40;
        v12 = v60;
        sub_24E601704(v44, &qword_27F215378, &unk_24F93FC10);
        v42(v77, 0);
        sub_24E601704(v38, &qword_27F22D330, &unk_24F93FBE0);
        (*v68)(v39, v43);
      }
    }

    sub_24E601704(v22, &qword_27F215348, &unk_24F93FBF0);
    v52 = v59;
    v53 = v58;
    v55(v59, v66, v58);
    return (*(v57 + 56))(v52, 0, 1, v53);
  }
}

uint64_t sub_24E657BB4()
{
  v1 = sub_24F92AAE8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91F438();
  if (v6)
  {
    v7 = *(v0 + qword_27F215320);
    v16[1] = v5;
    v16[2] = v6;
    sub_24F92C7F8();
    if (*(v7 + 16))
    {
      v8 = sub_24E76D934(v17);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        sub_24E6585F8(v17);
        return v10;
      }
    }

    sub_24E6585F8(v17);
  }

  if (qword_27F20FD80 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_27F39A4F0);
  (*(v2 + 16))(v4, v12, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v13 = sub_24F91F438();
  if (v14)
  {
    v15 = MEMORY[0x277D837D0];
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v17[2] = 0;
  }

  v17[0] = v13;
  v17[1] = v14;
  v17[3] = v15;
  sub_24F928458();
  sub_24E601704(v17, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t sub_24E657E80()
{

  sub_24E601704(v0 + qword_27F215318, &qword_27F215340, &qword_24F943530);
}

uint64_t sub_24E657EE0()
{

  sub_24E601704(v0 + qword_27F215318, &qword_27F215340, &qword_24F943530);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LinkableTextViewModel(uint64_t a1)
{
  result = qword_27F215328;
  if (!qword_27F215328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E657FE8(uint64_t a1)
{
  sub_24E658094(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_24E658094(uint64_t a1)
{
  if (!qword_27F215338)
  {
    sub_24F91F008();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F215338);
    }
  }
}

void sub_24E6580EC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  sub_24E60169C(a1 + 32, &v43, &qword_27F215370, &unk_24F93FC00);
  v40 = v43;
  v41 = v44;
  v7 = v46;
  v42 = v45;
  v8 = *a3;
  v9 = sub_24E76D934(&v40);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v15) = v10;
  if (v8[3] < v14)
  {
    sub_24E89908C(v14, v6 & 1);
    v9 = sub_24E76D934(&v40);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v9 = sub_24F92CF88();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v9;
  sub_24E8ADC1C();
  v9 = v19;
  if (v15)
  {
LABEL_8:
    v17 = swift_allocError();
    swift_willThrow();
    v47 = v17;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_24E6585F8(&v40);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  v21 = v20[6] + 40 * v9;
  v22 = v40;
  v23 = v41;
  *(v21 + 32) = v42;
  *v21 = v22;
  *(v21 + 16) = v23;
  *(v20[7] + 8 * v9) = v7;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v13)
  {
    v20[2] = v25;
    if (v4 != 1)
    {
      v15 = a1 + 80;
      v6 = 1;
      while (v6 < *(a1 + 16))
      {
        sub_24E60169C(v15, &v43, &qword_27F215370, &unk_24F93FC00);
        v40 = v43;
        v41 = v44;
        v7 = v46;
        v42 = v45;
        v26 = *a3;
        v27 = sub_24E76D934(&v40);
        v29 = v26[2];
        v30 = (v28 & 1) == 0;
        v13 = __OFADD__(v29, v30);
        v31 = v29 + v30;
        if (v13)
        {
          goto LABEL_22;
        }

        v32 = v28;
        if (v26[3] < v31)
        {
          sub_24E89908C(v31, 1);
          v27 = sub_24E76D934(&v40);
          if ((v32 & 1) != (v33 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v32)
        {
          goto LABEL_8;
        }

        v34 = *a3;
        *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
        v35 = v34[6] + 40 * v27;
        v36 = v40;
        v37 = v41;
        *(v35 + 32) = v42;
        *v35 = v36;
        *(v35 + 16) = v37;
        *(v34[7] + 8 * v27) = v7;
        v38 = v34[2];
        v13 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v13)
        {
          goto LABEL_23;
        }

        ++v6;
        v34[2] = v39;
        v15 += 48;
        if (v4 == v6)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_24F92C888();
  MEMORY[0x253050C20](0xD00000000000001BLL, 0x800000024FA45540);
  sub_24F92CA38();
  MEMORY[0x253050C20](39, 0xE100000000000000);
  sub_24F92CA88();
  __break(1u);
}

unint64_t sub_24E6584A4()
{
  result = qword_27F215358;
  if (!qword_27F215358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215358);
  }

  return result;
}

uint64_t sub_24E6584F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E658540()
{
  result = qword_27F215368;
  if (!qword_27F215368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215368);
  }

  return result;
}

unint64_t sub_24E658594()
{
  result = qword_27F22D340;
  if (!qword_27F22D340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D330, &unk_24F93FBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D340);
  }

  return result;
}

uint64_t sub_24E6586A8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
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

unint64_t sub_24E658720()
{
  result = qword_27F215380;
  if (!qword_27F215380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215380);
  }

  return result;
}

GameStoreKit::PlayNowPageIntent::PlayNowFeedShelfName_optional __swiftcall PlayNowPageIntent.PlayNowFeedShelfName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
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

  *v2 = v5;
  return result;
}

uint64_t PlayNowPageIntent.PlayNowFeedShelfName.rawValue.getter()
{
  if (*v0)
  {
    return 0x676F742D79616C70;
  }

  else
  {
    return 1701670760;
  }
}

uint64_t sub_24E658818(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676F742D79616C70;
  }

  else
  {
    v3 = 1701670760;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xED00007265687465;
  }

  if (*a2)
  {
    v5 = 0x676F742D79616C70;
  }

  else
  {
    v5 = 1701670760;
  }

  if (*a2)
  {
    v6 = 0xED00007265687465;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_24E6588C4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E65894C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E6589C0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E658A44@<X0>(char *a2@<X8>)
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

void sub_24E658AA4(uint64_t *a1@<X8>)
{
  v2 = 1701670760;
  if (*v1)
  {
    v2 = 0x676F742D79616C70;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xED00007265687465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PlayNowPageIntent.name.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PlayNowPageIntent(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for PlayNowPageIntent(uint64_t a1)
{
  result = qword_27F2153D8;
  if (!qword_27F2153D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *PlayNowPageIntent.init(player:name:sparseCount:contentLimit:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  sub_24E61C0A8(a1, a7);
  result = type metadata accessor for PlayNowPageIntent(0);
  *(a7 + result[5]) = v12;
  v14 = a7 + result[6];
  *v14 = a3;
  *(v14 + 8) = a4 & 1;
  v15 = a7 + result[7];
  *v15 = a5;
  *(v15 + 8) = a6 & 1;
  return result;
}

unint64_t PlayNowPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6598A4(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  v6 = type metadata accessor for PlayNowPageIntent(0);
  v7 = v6;
  v8 = 0x676F742D79616C70;
  if (!*(v2 + *(v6 + 20)))
  {
    v8 = 1701670760;
  }

  v9 = 0xED00007265687465;
  if (!*(v2 + *(v6 + 20)))
  {
    v9 = 0xE400000000000000;
  }

  v10 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v10;
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  *(inited + 144) = 0x6F43657372617073;
  *(inited + 152) = 0xEB00000000746E75;
  v11 = v2 + *(v6 + 24);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
  *(inited + 184) = v14;
  v15 = sub_24E658F98();
  *(inited + 160) = v12;
  *(inited + 168) = v13;
  *(inited + 192) = v15;
  strcpy((inited + 200), "contentLimit");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v16 = v2 + *(v7 + 28);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *(inited + 240) = v14;
  *(inited + 248) = v15;
  *(inited + 216) = v17;
  *(inited + 224) = v16;
  v18 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v18;
  return result;
}

unint64_t sub_24E658F98()
{
  result = qword_27F215398;
  if (!qword_27F215398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215390, &qword_24F93FC50);
    sub_24E65901C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215398);
  }

  return result;
}

unint64_t sub_24E65901C()
{
  result = qword_27F2153A0;
  if (!qword_27F2153A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2153A0);
  }

  return result;
}

uint64_t sub_24E659070()
{
  v1 = 0x726579616C70;
  v2 = 0x6F43657372617073;
  if (*v0 != 2)
  {
    v2 = 0x4C746E65746E6F63;
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

uint64_t sub_24E6590F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E659D60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E659118(uint64_t a1)
{
  v2 = sub_24E6597A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E659154(uint64_t a1)
{
  v2 = sub_24E6597A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayNowPageIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2153A8, &qword_24F93FC58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6597A8();
  sub_24F92D128();
  v10[15] = 0;
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for PlayNowPageIntent(0) + 20));
    v10[13] = 1;
    sub_24E6597FC();
    sub_24F92CD48();
    v10[12] = 2;
    sub_24F92CCE8();
    v10[11] = 3;
    sub_24F92CCE8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PlayNowPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2153C0, &qword_24F93FC60);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for PlayNowPageIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24E6597A8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v14 = v26;
  v15 = v12;
  v33 = 0;
  sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  v16 = v27;
  sub_24F92CC68();
  sub_24E61C0A8(v6, v15);
  v31 = 1;
  sub_24E659850();
  sub_24F92CC68();
  *(v15 + v10[5]) = v32;
  v30 = 2;
  v17 = sub_24F92CC08();
  v18 = v15 + v10[6];
  *v18 = v17;
  *(v18 + 8) = v19 & 1;
  v29 = 3;
  v21 = sub_24F92CC08();
  v23 = v22;
  (*(v14 + 8))(v9, v16);
  v24 = v15 + v10[7];
  *v24 = v21;
  *(v24 + 8) = v23 & 1;
  sub_24E6598A4(v15, v25, type metadata accessor for PlayNowPageIntent);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_24E65990C(v15, type metadata accessor for PlayNowPageIntent);
}

unint64_t sub_24E6597A8()
{
  result = qword_27F2153B0;
  if (!qword_27F2153B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2153B0);
  }

  return result;
}

unint64_t sub_24E6597FC()
{
  result = qword_27F2153B8;
  if (!qword_27F2153B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2153B8);
  }

  return result;
}

unint64_t sub_24E659850()
{
  result = qword_27F2153C8;
  if (!qword_27F2153C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2153C8);
  }

  return result;
}

uint64_t sub_24E6598A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E65990C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24E659970()
{
  result = qword_27F2153D0;
  if (!qword_27F2153D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2153D0);
  }

  return result;
}

uint64_t sub_24E6599D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24E659AA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_24E659B5C(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24E659BE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E659BE8()
{
  if (!qword_27F2153E8)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2153E8);
    }
  }
}

unint64_t sub_24E659C5C()
{
  result = qword_27F2153F0;
  if (!qword_27F2153F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2153F0);
  }

  return result;
}

unint64_t sub_24E659CB4()
{
  result = qword_27F2153F8;
  if (!qword_27F2153F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2153F8);
  }

  return result;
}

unint64_t sub_24E659D0C()
{
  result = qword_27F215400;
  if (!qword_27F215400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215400);
  }

  return result;
}

uint64_t sub_24E659D60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43657372617073 && a2 == 0xEB00000000746E75 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C746E65746E6F63 && a2 == 0xEC00000074696D69)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24E659EC8()
{
  result = qword_27F215408;
  if (!qword_27F215408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215408);
  }

  return result;
}

uint64_t LeaderboardSet.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LeaderboardSet.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LeaderboardSet.artworkURL.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t LeaderboardSet.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  v16 = v1[4];
  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 25705;
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v11;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x656C746974;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  *(inited + 104) = v6;
  *(inited + 112) = v5;
  *(inited + 144) = 0x556B726F77747261;
  *(inited + 152) = 0xEA00000000004C52;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v12 = sub_24E605DB4();
  *(inited + 160) = v16;
  *(inited + 168) = v7;
  *(inited + 192) = v12;
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x800000024FA45580;
  *(inited + 240) = MEMORY[0x277D83B88];
  *(inited + 248) = sub_24E65901C();
  *(inited + 216) = v8;

  v13 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v14 = sub_24E80FFAC(v13);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

unint64_t sub_24E65A190()
{
  v1 = 25705;
  v2 = 0x556B726F77747261;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_24E65A204@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E65AAD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E65A22C(uint64_t a1)
{
  v2 = sub_24E65A8AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E65A268(uint64_t a1)
{
  v2 = sub_24E65A8AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaderboardSet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215410, &qword_24F93FF98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  v11[0] = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E65A8AC();
  sub_24F92D128();
  v15 = 0;
  v9 = v11[5];
  sub_24F92CD08();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = 1;
  sub_24F92CD08();
  v13 = 2;
  sub_24F92CCA8();
  v12 = 3;
  sub_24F92CD38();
  return (*(v4 + 8))(v6, v3);
}

uint64_t LeaderboardSet.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215420, &qword_24F93FFA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E65A8AC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_24F92CC28();
  v25 = v10;
  v28 = 1;
  v11 = sub_24F92CC28();
  v24 = v12;
  v22 = v11;
  v27 = 2;
  v21 = sub_24F92CBC8();
  v23 = v13;
  v26 = 3;
  v15 = sub_24F92CC58();
  (*(v6 + 8))(v8, v5);
  v17 = v24;
  v16 = v25;
  *a2 = v9;
  a2[1] = v16;
  v18 = v21;
  a2[2] = v22;
  a2[3] = v17;
  v19 = v23;
  a2[4] = v18;
  a2[5] = v19;
  a2[6] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s12GameStoreKit14LeaderboardSetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_24F92CE08()) && (v2 == v7 && v4 == v8 || (sub_24F92CE08()))
  {
    if (v5)
    {
      if (v9 && (v3 == v10 && v5 == v9 || (sub_24F92CE08() & 1) != 0))
      {
        return v6 == v11;
      }
    }

    else if (!v9)
    {
      return v6 == v11;
    }
  }

  return 0;
}

unint64_t sub_24E65A8AC()
{
  result = qword_27F215418;
  if (!qword_27F215418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215418);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24E65A91C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E65A964(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_24E65A9D4()
{
  result = qword_27F215428;
  if (!qword_27F215428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215428);
  }

  return result;
}

unint64_t sub_24E65AA2C()
{
  result = qword_27F215430;
  if (!qword_27F215430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215430);
  }

  return result;
}

unint64_t sub_24E65AA84()
{
  result = qword_27F215438;
  if (!qword_27F215438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215438);
  }

  return result;
}

uint64_t sub_24E65AAD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA45580 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E65AC64(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E65ADB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FriendRequestsPrivacyToggle(uint64_t a1)
{
  result = qword_27F215448;
  if (!qword_27F215448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E65AF3C(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E65B038(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24F928DE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24E65B08C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2154B8, &qword_24F940390);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E65CA4C();
  sub_24F92D128();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v11[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v9 = type metadata accessor for FriendRequestsPrivacyToggle(0);
    v11[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v11[12] = 3;
    sub_24F929608();
    sub_24E65D33C(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v11[11] = *(v3 + *(v9 + 32));
    v11[10] = 4;
    sub_24E65CDC8();
    sub_24F92CD48();
    v11[9] = 5;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24E65B3DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215488, &unk_24F940380);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v32 - v8;
  v10 = type metadata accessor for FriendRequestsPrivacyToggle(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v39 = v12 + 40;
  sub_24E61DA68(&v42, (v12 + 40), qword_27F21B590, &unk_24F93BE30);
  v13 = v10[6];
  v14 = sub_24F92A6D8();
  v15 = *(*(v14 - 8) + 56);
  v40 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = v10[7];
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v38 = v16;
  v18(&v12[v16], 1, 1, v17);
  v19 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24E65CA4C();
  v35 = v9;
  v20 = v37;
  sub_24F92D108();
  if (v20)
  {
    v21 = v38;
    v22 = v39;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v23 = v40;
    sub_24E601704(v22, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v12[v23], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v12[v21], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v37 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v45 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v24 = v43;
    *v12 = v42;
    *(v12 + 1) = v24;
    *(v12 + 4) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v45 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v25 = v38;
    sub_24E61DA68(&v42, v39, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v42) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    v26 = v34;
    sub_24E61DA68(v7, &v12[v40], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v42) = 3;
    sub_24E65D33C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v27 = v33;
    sub_24F92CC18();
    sub_24E61DA68(v27, &v12[v25], &qword_27F213E68, &unk_24F93BC80);
    v45 = 4;
    sub_24E65CBF8();
    sub_24F92CC68();
    v12[v10[8]] = v42;
    LOBYTE(v42) = 5;
    v28 = v26;
    v29 = v35;
    v30 = v36;
    LODWORD(v37) = sub_24F92CC38();
    (*(v28 + 8))(v29, v30);
    v12[v10[9]] = v37 & 1;
    sub_24E65CC4C(v12, v32);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_24E65CCB0(v12);
  }
}

unint64_t sub_24E65BA48()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x536C616974696E69;
  if (v1 != 4)
  {
    v4 = 0x686563616C507369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0x4D747865746E6F63;
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

uint64_t sub_24E65BB14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E65D07C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E65BB3C(uint64_t a1)
{
  v2 = sub_24E65CA4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E65BB78(uint64_t a1)
{
  v2 = sub_24E65CA4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E65BBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

unint64_t sub_24E65BD28()
{
  result = qword_27F215468;
  if (!qword_27F215468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215468);
  }

  return result;
}

void *sub_24E65BD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FriendRequestsPrivacyToggle(0);
  if (*(a1 + *(v4 + 32)))
  {
    sub_24F92CE08();
  }

  v5 = *(a1 + *(v4 + 36));
  result = sub_24F926F28();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_24E65BE5C@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v80 = a3;
  v82 = a4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v75);
  v76 = &v71 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215508, &qword_24F940550);
  MEMORY[0x28223BE20](v77);
  v8 = &v71 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215510, &qword_24F940558);
  MEMORY[0x28223BE20](v79);
  v10 = &v71 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215518, &unk_24F940560);
  MEMORY[0x28223BE20](v78);
  v81 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - v13;
  MEMORY[0x28223BE20](v15);
  v83 = &v71 - v16;
  if (qword_27F211540 != -1)
  {
    swift_once();
  }

  v18 = qword_27F39EB48;
  v17 = unk_27F39EB50;
  v74 = a1 & 1;
  LOBYTE(v85) = a1 & 1;
  v86 = a2;

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  v72 = a2;
  v73 = v19;
  sub_24F926F58();
  v20 = v87;
  v21 = v88;
  *v8 = swift_getKeyPath();
  v8[40] = 0;
  v22 = type metadata accessor for ActionToggle(0);
  v23 = v22[5];
  *&v8[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  v24 = &v8[v22[6]];
  LOBYTE(v85) = 0;
  sub_24F926F28();
  v25 = *(&v87 + 1);
  *v24 = v87;
  *(v24 + 1) = v25;
  v26 = &v8[v22[8]];
  *v26 = v18;
  v26[1] = v17;
  v27 = &v8[v22[7]];
  *v27 = v20;
  v27[16] = v21;
  v28 = &v8[v22[9]];
  *v28 = &unk_24F940570;
  *(v28 + 1) = 0;
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  LOBYTE(v18) = v80;
  *(v30 + 16) = v80 & 1;
  v31 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215520, &qword_24F940610) + 36)];
  *v31 = KeyPath;
  v31[1] = sub_24E600A48;
  v31[2] = v30;
  v32 = sub_24F925898();
  v33 = swift_getKeyPath();
  v34 = &v8[*(v77 + 36)];
  *v34 = v33;
  v34[1] = v32;
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v8, v10, &qword_27F215508, &qword_24F940550);
  v35 = &v10[*(v79 + 36)];
  v36 = v92;
  *(v35 + 4) = v91;
  *(v35 + 5) = v36;
  *(v35 + 6) = v93;
  v37 = v88;
  *v35 = v87;
  *(v35 + 1) = v37;
  v38 = v90;
  *(v35 + 2) = v89;
  *(v35 + 3) = v38;
  v39 = &v14[*(v78 + 36)];
  v40 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v41 = type metadata accessor for GradientBackground(0);
  (*(*(v41 - 8) + 56))(&v39[v40], 1, 1, v41);
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  *(v39 + 1) = xmmword_24F93CFD0;
  *(v39 + 4) = 0x4030000000000000;
  *(v39 + 20) = 257;
  sub_24E6009C8(v10, v14, &qword_27F215510, &qword_24F940558);
  v42 = v83;
  sub_24E6009C8(v14, v83, &qword_27F215518, &unk_24F940560);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ((v18 & 1) == 0)
  {
    LOBYTE(v85) = v74;
    v86 = v72;
    sub_24F926F38();
    if (v84 == 1)
    {
      if (qword_27F211548 != -1)
      {
        swift_once();
      }

      v47 = &qword_27F39EB58;
    }

    else
    {
      if (qword_27F211550 != -1)
      {
        swift_once();
      }

      v47 = &qword_27F39EB68;
    }

    v48 = *v47;

    v85 = v48;
    v86 = v49;
    sub_24E600AEC();
    v50 = sub_24F925E18();
    v52 = v51;
    v54 = v53;
    sub_24F9259E8();
    v55 = sub_24F925C98();
    v57 = v56;
    v59 = v58;

    sub_24E600B40(v50, v52, v54 & 1);

    LODWORD(v50) = sub_24F9251C8();
    v60 = *(v75 + 36);
    v61 = *MEMORY[0x277CE13B8];
    v62 = sub_24F927748();
    v63 = v76;
    (*(*(v62 - 8) + 104))(&v76[v60], v61, v62);
    *v63 = v50;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    v43 = sub_24F925C58();
    v44 = v64;
    LOBYTE(v60) = v65;
    v46 = v66;
    sub_24E600B40(v55, v57, v59 & 1);

    sub_24E601704(v63, &qword_27F213F10, &unk_24F93BE10);
    v45 = v60 & 1;
    sub_24E5FD138(v43, v44, v60 & 1);

    v42 = v83;
  }

  v67 = v81;
  sub_24E60169C(v42, v81, &qword_27F215518, &unk_24F940560);
  v68 = v82;
  sub_24E60169C(v67, v82, &qword_27F215518, &unk_24F940560);
  v69 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215528, &qword_24F940678) + 48));
  sub_24E65D2B4(v43, v44, v45, v46);
  sub_24E65D2F8(v43, v44, v45, v46);
  *v69 = v43;
  v69[1] = v44;
  v69[2] = v45;
  v69[3] = v46;
  sub_24E601704(v42, &qword_27F215518, &unk_24F940560);
  sub_24E65D2F8(v43, v44, v45, v46);
  return sub_24E601704(v67, &qword_27F215518, &unk_24F940560);
}

uint64_t sub_24E65C6D0(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 16) = a1;
  sub_24F92B7F8();
  *(v2 + 24) = sub_24F92B7E8();
  v4 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E65C76C, v4, v3);
}

uint64_t sub_24E65C76C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v2[3] = type metadata accessor for UpdateFriendRequestsPrivacyStateAction(0);
  v2[4] = sub_24E65D33C(&qword_27F215530, type metadata accessor for UpdateFriendRequestsPrivacyStateAction, &protocol conformance descriptor for UpdateFriendRequestsPrivacyStateAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  sub_24F928A98();
  *boxed_opaque_existential_1 = (v1 & 1) == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24E65C848@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215500, &unk_24F940540);
  return sub_24E65BE5C(v4, v5, v6, a2 + *(v7 + 44));
}

uint64_t sub_24E65C8BC(uint64_t a1)
{
  sub_24E65BD28();

  return sub_24F9218E8();
}

unint64_t sub_24E65C94C()
{
  result = qword_27F215478;
  if (!qword_27F215478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215478);
  }

  return result;
}

unint64_t sub_24E65CA4C()
{
  result = qword_27F215490;
  if (!qword_27F215490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215490);
  }

  return result;
}

unint64_t sub_24E65CAA0()
{
  result = qword_27F215498;
  if (!qword_27F215498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CB5C(&qword_27F2154A0, &qword_27F2154A8, MEMORY[0x277D22400], MEMORY[0x277D225E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215498);
  }

  return result;
}

uint64_t sub_24E65CB5C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215460, &qword_24F942C00);
    sub_24E65D33C(a2, MEMORY[0x277D223F0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E65CBF8()
{
  result = qword_27F2154B0;
  if (!qword_27F2154B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2154B0);
  }

  return result;
}

uint64_t sub_24E65CC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendRequestsPrivacyToggle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E65CCB0(uint64_t a1)
{
  v2 = type metadata accessor for FriendRequestsPrivacyToggle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E65CD0C()
{
  result = qword_27F2154C0;
  if (!qword_27F2154C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CB5C(&qword_27F2154C8, &qword_27F2154D0, MEMORY[0x277D223F8], MEMORY[0x277D225E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2154C0);
  }

  return result;
}

unint64_t sub_24E65CDC8()
{
  result = qword_27F2154D8;
  if (!qword_27F2154D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2154D8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24E65CE40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_24E65CE9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24E65CF04()
{
  result = qword_27F2154E0;
  if (!qword_27F2154E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2154E0);
  }

  return result;
}

unint64_t sub_24E65CF78()
{
  result = qword_27F2154E8;
  if (!qword_27F2154E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2154E8);
  }

  return result;
}

unint64_t sub_24E65CFD0()
{
  result = qword_27F2154F0;
  if (!qword_27F2154F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2154F0);
  }

  return result;
}

unint64_t sub_24E65D028()
{
  result = qword_27F2154F8;
  if (!qword_27F2154F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2154F8);
  }

  return result;
}

uint64_t sub_24E65D07C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x536C616974696E69 && a2 == 0xEC00000065746174 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x686563616C507369 && a2 == 0xED00007265646C6FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24E65D2B4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24E5FD138(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24E65D2F8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24E600B40(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24E65D33C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E65D388()
{
  result = qword_27F215538;
  if (!qword_27F215538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215540, &qword_24F940680);
    sub_24E602068(&qword_27F215548, &qword_27F215550, &qword_24F940688, MEMORY[0x277CE1198]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215538);
  }

  return result;
}

uint64_t SignInAction.__allocating_init()()
{
  v0 = sub_24F91F6B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = sub_24F928AD8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_24F928A98();
  v12 = sub_24F929608();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = (v11 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v13 = 0u;
  v13[1] = 0u;
  sub_24E65E064(v27, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v1 + 8))(v3, v0);
    v20[1] = v14;
    v20[2] = v16;
    sub_24F92C7F8();
    sub_24E601704(&v21, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v27, &qword_27F235830, &qword_24F93B8C0);
  v17 = v11 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v18 = v25;
  *v17 = v24;
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  sub_24E65E0D4(v6, v11 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v11 + 16) = xmmword_24F9406A0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  (*(v8 + 32))(v11 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v10, v7);
  return v11;
}

uint64_t SignInAction.init()()
{
  v1 = v0;
  v2 = sub_24F91F6B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_24F928A98();
  v13 = sub_24F929608();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v14 = 0u;
  v14[1] = 0u;
  sub_24E65E064(v28, &v22);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v21[1] = v15;
    v21[2] = v17;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v28, &qword_27F235830, &qword_24F93B8C0);
  v18 = v1 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v18 + 32) = v27;
  v19 = v26;
  *v18 = v25;
  *(v18 + 16) = v19;
  sub_24E65E0D4(v8, v1 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v1 + 16) = xmmword_24F9406A0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  (*(v10 + 32))(v1 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v12, v9);
  return v1;
}

char *SignInAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *SignInAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t SignInAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t SignInAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t sub_24E65E064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235830, &qword_24F93B8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E65E0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SignInAction(uint64_t a1)
{
  result = qword_27F215558;
  if (!qword_27F215558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E65E220(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24E65E370(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24E65E4CC(uint64_t a1)
{
  sub_24E65E6D0();
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      sub_24E669D10(319, &qword_27F215580, type metadata accessor for SearchPagePresenter, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_24E65E73C();
        if (v4 <= 0x3F)
        {
          sub_24E669CC0(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_24E669CC0(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24E65E794(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730);
              if (v7 <= 0x3F)
              {
                sub_24E669D10(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_24E65E794(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0);
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

unint64_t sub_24E65E6D0()
{
  result = qword_27F215578;
  if (!qword_27F215578)
  {
    type metadata accessor for SearchPageContainer(255);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_27F215578);
  }

  return result;
}

void sub_24E65E73C()
{
  if (!qword_27F215588)
  {
    v0 = sub_24F9233B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F215588);
    }
  }
}

void sub_24E65E794(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24F923578();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24E65E804@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = sub_24F923398() & 1;
  *(a3 + 72) = v6;
  *(a3 + 80) = v7 & 1;
  *(a3 + 88) = sub_24F923398() & 1;
  *(a3 + 96) = v8;
  *(a3 + 104) = v9 & 1;
  sub_24F926F28();
  *(a3 + 112) = v17;
  *(a3 + 120) = v18;
  *(a3 + 128) = swift_getKeyPath();
  *(a3 + 136) = 0;
  *(a3 + 144) = swift_getKeyPath();
  *(a3 + 184) = 0;
  v10 = type metadata accessor for SearchPageContainerView(0);
  v11 = v10[12];
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  v12 = v10[13];
  *(a3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v13 = v10[14];
  *(a3 + v13) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_24E615E00(a1, a3);
  *(a3 + 40) = a2;
  type metadata accessor for SearchPagePresenter(0);
  swift_allocObject();

  v15 = sub_24E709ED8(v14);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *(a3 + 48) = v15;
  *(a3 + 56) = 0;
  return result;
}

uint64_t sub_24E65E9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24E60169C(v1 + 144, v10, &qword_27F215690, &unk_24F98D8E0);
  if (v12 == 1)
  {
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v11;
  }

  else
  {
    sub_24F92BDC8();
    v9 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_24E65EB20@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SearchPageContainerView(0);
  sub_24E60169C(v1 + *(v10 + 48), v9, &qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F921B58();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24E65ED28@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SearchPageContainerView(0);
  sub_24E60169C(v1 + *(v10 + 52), v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v9, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24E65EF00@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SearchPageContainerView(0);
  sub_24E60169C(v1 + *(v10 + 56), v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v9, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_24E65F0D8()
{
  v1 = sub_24F925218();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v53 = &v50[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v4);
  v61 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v50[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v63 = &v50[-v12];
  MEMORY[0x28223BE20](v13);
  v60 = &v50[-v14];
  MEMORY[0x28223BE20](v15);
  v65 = &v50[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v50[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v50[-v21];
  v62 = v0;
  sub_24E65ED28(&v50[-v21]);
  v23 = v2[13];
  v56 = *MEMORY[0x277CE0558];
  v55 = v23;
  v23(v19);
  v24 = v2[7];
  v57 = v2 + 7;
  v54 = v24;
  v24(v19, 0, 1, v1);
  v59 = v4;
  v25 = *(v4 + 48);
  sub_24E60169C(v22, v8, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v19, &v8[v25], &qword_27F215598, &qword_24F945EF0);
  v64 = v2;
  v26 = v2[6];
  v27 = v26(v8, 1, v1);
  v58 = v26;
  if (v27 == 1)
  {
    sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    if (v26(&v8[v25], 1, v1) == 1)
    {
      v28 = v8;
LABEL_10:
      sub_24E601704(v28, &qword_27F215598, &qword_24F945EF0);
      return 0.0;
    }

    goto LABEL_6;
  }

  sub_24E60169C(v8, v65, &qword_27F215598, &qword_24F945EF0);
  if (v26(&v8[v25], 1, v1) == 1)
  {
    sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    (v64[1])(v65, v1);
LABEL_6:
    sub_24E601704(v8, &unk_27F254F20, &qword_24F940790);
    v29 = v62;
    goto LABEL_7;
  }

  v45 = v53;
  (v64[4])(v53, &v8[v25], v1);
  sub_24E667F24(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v51 = sub_24F92AFF8();
  v46 = v64[1];
  v46(v45, v1);
  sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
  v46(v65, v1);
  sub_24E601704(v8, &qword_27F215598, &qword_24F945EF0);
  result = 0.0;
  v29 = v62;
  if (v51)
  {
    return result;
  }

LABEL_7:
  v30 = v60;
  sub_24E65EF00(v60);
  v31 = v63;
  v55(v63, v56, v1);
  v54(v31, 0, 1, v1);
  v32 = *(v59 + 48);
  v33 = v61;
  sub_24E60169C(v30, v61, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v31, &v33[v32], &qword_27F215598, &qword_24F945EF0);
  v34 = v58;
  if (v58(v33, 1, v1) == 1)
  {
    sub_24E601704(v31, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v30, &qword_27F215598, &qword_24F945EF0);
    if (v34(&v33[v32], 1, v1) == 1)
    {
      v28 = v33;
      goto LABEL_10;
    }
  }

  else
  {
    v36 = v52;
    sub_24E60169C(v33, v52, &qword_27F215598, &qword_24F945EF0);
    if (v34(&v33[v32], 1, v1) != 1)
    {
      v47 = v64;
      v48 = v53;
      (v64[4])(v53, &v33[v32], v1);
      sub_24E667F24(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      LODWORD(v65) = sub_24F92AFF8();
      v49 = v47[1];
      v49(v48, v1);
      sub_24E601704(v63, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v30, &qword_27F215598, &qword_24F945EF0);
      v49(v36, v1);
      sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
      result = 0.0;
      if (v65)
      {
        return result;
      }

      goto LABEL_14;
    }

    sub_24E601704(v63, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v30, &qword_27F215598, &qword_24F945EF0);
    (v64[1])(v36, v1);
  }

  sub_24E601704(v33, &unk_27F254F20, &qword_24F940790);
LABEL_14:
  v37 = *(v29 + 56);
  *&v78[0] = *(v29 + 48);
  *(&v78[0] + 1) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215668, &qword_24F940820);
  sub_24F926F38();
  v38 = *&v79[0];
  swift_getKeyPath();
  *&v78[0] = v38;
  sub_24E667F24(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v39 = *(v38 + 152);
  v73 = *(v38 + 136);
  v74 = v39;
  v40 = *(v38 + 184);
  v75 = *(v38 + 168);
  v76 = v40;
  v41 = *(v38 + 88);
  v69 = *(v38 + 72);
  v70 = v41;
  v42 = *(v38 + 120);
  v71 = *(v38 + 104);
  v72 = v42;
  v43 = *(v38 + 40);
  v66 = *(v38 + 24);
  v67 = v43;
  v68 = *(v38 + 56);
  sub_24E6691F8(&v66, v78);

  sub_24E669254(v77);
  v78[8] = v74;
  v78[9] = v75;
  v78[4] = v70;
  v78[5] = v71;
  v78[6] = v72;
  v78[7] = v73;
  v78[0] = v66;
  v78[1] = v67;
  v78[2] = v68;
  v78[3] = v69;
  v78[18] = v77[7];
  v78[19] = v77[8];
  v78[20] = v77[9];
  v78[21] = v77[10];
  v78[14] = v77[3];
  v78[15] = v77[4];
  v78[16] = v77[5];
  v78[17] = v77[6];
  v78[10] = v76;
  v78[11] = v77[0];
  v78[12] = v77[1];
  v78[13] = v77[2];
  v79[8] = v74;
  v79[9] = v75;
  v79[10] = v76;
  v79[4] = v70;
  v79[5] = v71;
  v79[6] = v72;
  v79[7] = v73;
  v79[0] = v66;
  v79[1] = v67;
  v79[2] = v68;
  v79[3] = v69;
  v44 = sub_24E66927C(v79);
  sub_24E601704(v78, &qword_27F2156E8, &unk_24F940A50);
  result = 20.0;
  if (v44 < 2)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_24E65FA64@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if (v8 != 1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215668, &qword_24F940820);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24E667F24(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v2 = *(v8 + 216);
  v3 = *(v8 + 224);

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_24F926F38();
    swift_getKeyPath();
    sub_24F91FD88();

    v5 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__searchSuggestions;
    swift_beginAccess();
    sub_24E60169C(v8 + v5, a1, &qword_27F2156B8, &qword_24F940900);
  }

  else
  {
LABEL_6:
    v7 = type metadata accessor for SearchSuggestionsResult(0);
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_24E65FC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v94 = sub_24F925218();
  v111 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v82 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v107);
  v85 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v106 = &v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v80 - v10;
  MEMORY[0x28223BE20](v11);
  v84 = (&v80 - v12);
  MEMORY[0x28223BE20](v13);
  v95 = &v80 - v14;
  MEMORY[0x28223BE20](v15);
  v109 = &v80 - v16;
  MEMORY[0x28223BE20](v17);
  v110 = (&v80 - v18);
  v19 = sub_24F925758();
  v103 = *(v19 - 8);
  v104 = v19;
  MEMORY[0x28223BE20](v19);
  v102 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2155A0, &qword_24F940798);
  v89 = *(v21 - 8);
  v22 = v89;
  MEMORY[0x28223BE20](v21);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v80 - v26;
  v28 = sub_24F921A78();
  v87 = v28;
  v93 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v92 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v80 - v31;
  v33 = type metadata accessor for SearchPageContainerView(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2155A8, &qword_24F9407A0);
  v100 = *(v36 - 8);
  v101 = v36;
  MEMORY[0x28223BE20](v36);
  v112 = &v80 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2155B0, &qword_24F9407A8);
  v98 = *(v38 - 8);
  v99 = v38;
  MEMORY[0x28223BE20](v38);
  v97 = &v80 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2155B8, &unk_24F9407B0);
  MEMORY[0x28223BE20](v40 - 8);
  v96 = &v80 - v41;
  sub_24E66804C(v2, &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchPageContainerView);
  v42 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v90 = swift_allocObject();
  sub_24E6680B8(&v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v90 + v42, type metadata accessor for SearchPageContainerView);
  v91 = sub_24F923678();
  v86 = v32;
  sub_24F921A68();
  v108 = v2;
  v43 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v44 = MEMORY[0x28223BE20](v43);
  (*(v46 + 16))(&v80 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
  type metadata accessor for SearchPageContainer(0);
  v88 = v27;
  sub_24F928D38();
  (*(v22 + 16))(v24, v27, v21);
  v47 = v93;
  (*(v93 + 16))(v92, v32, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2155C0, &qword_24F9407C8);
  sub_24F921AA8();
  sub_24F921A58();
  sub_24E602068(&qword_27F2155C8, &qword_27F2155A0, &qword_24F940798, MEMORY[0x277D21CF8]);
  sub_24E66798C();
  sub_24E667F24(&qword_27F215638, MEMORY[0x277D7EBB0], MEMORY[0x277D7EBA8]);
  sub_24E667F24(&qword_27F215640, MEMORY[0x277D7EB90], MEMORY[0x277D7EB88]);
  v48 = v109;
  v49 = v106;
  sub_24F9216E8();
  (*(v89 + 8))(v88, v21);
  (*(v47 + 8))(v86, v87);
  v50 = v110;
  sub_24E65ED28(v110);
  v51 = v111;
  v52 = *(v111 + 104);
  LODWORD(v92) = *MEMORY[0x277CE0560];
  v53 = v94;
  v93 = v111 + 104;
  v91 = v52;
  v52(v48);
  v90 = *(v51 + 56);
  v90(v48, 0, 1, v53);
  v54 = *(v107 + 48);
  v55 = v50;
  sub_24E60169C(v50, v49, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v48, v49 + v54, &qword_27F215598, &qword_24F945EF0);
  v56 = *(v51 + 48);
  v57 = v53;
  if (v56(v49, 1, v53) == 1)
  {
    sub_24E601704(v48, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v55, &qword_27F215598, &qword_24F945EF0);
    if (v56(v49 + v54, 1, v53) != 1)
    {
LABEL_14:
      sub_24E601704(v49, &unk_27F254F20, &qword_24F940790);
      goto LABEL_15;
    }

    sub_24E601704(v49, &qword_27F215598, &qword_24F945EF0);
LABEL_7:
    v60 = v84;
    sub_24E65EF00(v84);
    v66 = v83;
    v91(v83, v92, v57);
    v90(v66, 0, 1, v57);
    v67 = *(v107 + 48);
    v68 = v85;
    sub_24E60169C(v60, v85, &qword_27F215598, &qword_24F945EF0);
    sub_24E60169C(v66, v68 + v67, &qword_27F215598, &qword_24F945EF0);
    if (v56(v68, 1, v57) == 1)
    {
      sub_24E601704(v66, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v60, &qword_27F215598, &qword_24F945EF0);
      if (v56(v68 + v67, 1, v57) == 1)
      {
        sub_24E601704(v68, &qword_27F215598, &qword_24F945EF0);
LABEL_18:
        v69 = v102;
        sub_24F925738();
        goto LABEL_16;
      }

      v49 = v68;
      goto LABEL_14;
    }

    v58 = v81;
    sub_24E60169C(v68, v81, &qword_27F215598, &qword_24F945EF0);
    if (v56(v68 + v67, 1, v57) == 1)
    {
      v59 = v66;
      v49 = v68;
      goto LABEL_12;
    }

    v75 = v111;
    v76 = v68 + v67;
    v77 = v82;
    (*(v111 + 32))(v82, v76, v57);
    sub_24E667F24(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    v78 = sub_24F92AFF8();
    v79 = *(v75 + 8);
    v79(v77, v57);
    sub_24E601704(v66, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v60, &qword_27F215598, &qword_24F945EF0);
    v79(v58, v57);
    sub_24E601704(v68, &qword_27F215598, &qword_24F945EF0);
    if (v78)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  sub_24E60169C(v49, v95, &qword_27F215598, &qword_24F945EF0);
  if (v56(v49 + v54, 1, v53) == 1)
  {
    v58 = v95;
    v59 = v109;
    v60 = v110;
LABEL_12:
    sub_24E601704(v59, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v60, &qword_27F215598, &qword_24F945EF0);
    (*(v111 + 8))(v58, v57);
    goto LABEL_14;
  }

  v61 = v111;
  v62 = v49 + v54;
  v63 = v82;
  (*(v111 + 32))(v82, v62, v57);
  sub_24E667F24(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v64 = v95;
  LODWORD(v89) = sub_24F92AFF8();
  v65 = *(v61 + 8);
  v65(v63, v57);
  sub_24E601704(v109, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v110, &qword_27F215598, &qword_24F945EF0);
  v65(v64, v57);
  sub_24E601704(v106, &qword_27F215598, &qword_24F945EF0);
  if (v89)
  {
    goto LABEL_7;
  }

LABEL_15:
  v69 = v102;
  sub_24F925748();
LABEL_16:
  sub_24E602068(&qword_27F215648, &qword_27F2155A8, &qword_24F9407A0, MEMORY[0x277D7EAD8]);
  v70 = v97;
  v71 = v101;
  v72 = v112;
  sub_24F926898();
  (*(v103 + 8))(v69, v104);
  (*(v100 + 8))(v72, v71);
  v73 = v96;
  (*(v98 + 32))(v96, v70, v99);
  return sub_24E6009C8(v73, v105, &qword_27F2155B8, &unk_24F9407B0);
}

uint64_t sub_24E660BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v138 = a3;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215658, &qword_24F940810);
  MEMORY[0x28223BE20](v137);
  v136 = &v105 - v5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2155F0, &qword_24F9407D8);
  MEMORY[0x28223BE20](v135);
  v154 = &v105 - v6;
  v134 = sub_24F923D08();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchPageContainer(0);
  v151 = v8;
  v144 = *(v8 - 8);
  v147 = *(v144 + 64);
  MEMORY[0x28223BE20](v8);
  v159 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchPageContainerView(0);
  v155 = *(v10 - 8);
  v142 = *(v155 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v158 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_24F924F28();
  v114 = *(v115 - 1);
  MEMORY[0x28223BE20](v115);
  v112 = (&v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = sub_24F924F58();
  v116 = *(v143 - 1);
  MEMORY[0x28223BE20](v143);
  v111 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215620, &qword_24F940808);
  MEMORY[0x28223BE20](v113);
  v157 = (&v105 - v14);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215618, &qword_24F940800);
  v122 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v146 = &v105 - v15;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215610, &qword_24F9407F8);
  v126 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v145 = &v105 - v16;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215608, &qword_24F9407F0);
  v128 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v123 = &v105 - v17;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215600, &qword_24F9407E8);
  v130 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v124 = &v105 - v18;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2155F8, &qword_24F9407E0);
  v131 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v105 - v19;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215660, &qword_24F940818);
  v153 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v149 = &v105 - v20;
  v141 = *(a2 + 48);
  v140 = *(a2 + 56);
  v162 = v141;
  v163 = v140;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215668, &qword_24F940820);
  sub_24F926F38();
  v21 = *(v8 + 24);
  v156 = a1;
  v22 = (a1 + v21);
  v23 = *v22;
  v24 = v22[1];
  v120 = *(a2 + 64);
  v119 = *(a2 + 72);
  v118 = *(a2 + 80);
  v25 = a2;
  LOBYTE(v162) = v120;
  v163 = v119;
  LOBYTE(v164) = v118;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
  sub_24F923348();
  v26 = v174;
  v27 = v175;
  v28 = v176;
  v160 = v25;
  v29 = *(v25 + 120);
  LOBYTE(v174) = *(v25 + 112);
  v175 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  sub_24E707654(v23, v24, v26, v27, v28, v162, v163, v164);

  v30 = sub_24F927618();
  v31 = v157;
  *v157 = v30;
  *(v31 + 1) = v32;
  v33 = v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215678, &qword_24F940828);
  sub_24E6621F0(v160, a1, v33 + *(v34 + 44));
  v35 = v141;
  v36 = v140;
  v174 = v141;
  v175 = v140;
  sub_24F926F58();
  v37 = v162;
  v38 = v163;
  v39 = v164;
  swift_getKeyPath();
  v174 = v37;
  v175 = v38;
  v176 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215680, &qword_24F940858);
  sub_24F927188();

  v109 = v163;
  v110 = v164;
  v108 = v165;

  v169 = v35;
  v170 = v36;
  sub_24F926F58();
  v40 = v171;
  v41 = v172;
  v42 = v173;
  swift_getKeyPath();
  v171 = v40;
  v172 = v41;
  v173 = v42;
  sub_24F927188();

  v43 = v112;
  sub_24F924F18();
  v44 = v111;
  sub_24F924F08();
  (*(v114 + 8))(v43, v115);
  v45 = v156;
  v46 = (v156 + *(v151 + 20));
  v47 = v46[1];
  v167 = *v46;
  v168 = v47;
  v106 = sub_24E602068(&qword_27F215628, &qword_27F215620, &qword_24F940808, MEMORY[0x277CE11A8]);
  v107 = sub_24E600AEC();

  v48 = v113;
  v49 = v157;
  sub_24F926128();

  (*(v116 + 8))(v44, v143);
  sub_24E601704(v49, &qword_27F215620, &qword_24F940808);
  v143 = type metadata accessor for SearchPageContainerView;
  v50 = v158;
  sub_24E66804C(v160, v158, type metadata accessor for SearchPageContainerView);
  v157 = type metadata accessor for SearchPageContainer;
  v51 = v159;
  sub_24E66804C(v45, v159, type metadata accessor for SearchPageContainer);
  v52 = *(v155 + 80);
  v116 = ((v52 + 16) & ~v52) + v142;
  v53 = (v52 + 16) & ~v52;
  v155 = v53;
  v142 = v52 | 7;
  v144 = *(v144 + 80);
  v54 = (v116 + v144) & ~v144;
  v55 = swift_allocObject();
  v112 = type metadata accessor for SearchPageContainerView;
  sub_24E6680B8(v50, v55 + v53, type metadata accessor for SearchPageContainerView);
  v115 = type metadata accessor for SearchPageContainer;
  sub_24E6680B8(v51, v55 + v54, type metadata accessor for SearchPageContainer);
  v162 = v48;
  v163 = MEMORY[0x277D837D0];
  v164 = v106;
  v165 = v107;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v121;
  v58 = v146;
  sub_24F9264F8();

  v59 = v57;
  (*(v122 + 8))(v58, v57);
  v162 = v141;
  v163 = v140;
  sub_24F926F38();
  v60 = v174;
  swift_getKeyPath();
  v162 = v60;
  sub_24E667F24(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  LOBYTE(v58) = *(v60 + 289);

  LOBYTE(v174) = v58;
  v61 = v158;
  sub_24E66804C(v160, v158, v143);
  v62 = v159;
  sub_24E66804C(v45, v159, v157);
  v114 = v54;
  v63 = swift_allocObject();
  sub_24E6680B8(v61, v63 + v155, type metadata accessor for SearchPageContainerView);
  sub_24E6680B8(v62, v63 + v54, type metadata accessor for SearchPageContainer);
  v162 = v59;
  v163 = OpaqueTypeConformance2;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = v123;
  v66 = v125;
  v67 = MEMORY[0x277D839B0];
  v68 = MEMORY[0x277D839C8];
  v69 = v145;
  sub_24F926AB8();

  (*(v126 + 8))(v69, v66);
  LOBYTE(v162) = v120;
  v163 = v119;
  LOBYTE(v164) = v118;
  sub_24F923348();
  v162 = v66;
  v163 = v67;
  v164 = v64;
  v165 = v68;
  v146 = MEMORY[0x277CE0E30];
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v124;
  v72 = v127;
  sub_24F926328();

  (*(v128 + 8))(v65, v72);
  v73 = v160;
  v74 = *(v160 + 96);
  v75 = *(v160 + 104);
  LOBYTE(v162) = *(v160 + 88);
  v163 = v74;
  LOBYTE(v164) = v75;
  sub_24F923328();
  v76 = v158;
  v77 = v143;
  sub_24E66804C(v73, v158, v143);
  v78 = swift_allocObject();
  v79 = v112;
  sub_24E6680B8(v76, v78 + v155, v112);
  v162 = v72;
  v163 = v70;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v129;
  sub_24F926AB8();

  (*(v130 + 8))(v71, v81);
  v82 = v132;
  sub_24F923CF8();
  sub_24E66804C(v73, v76, v77);
  v83 = v159;
  sub_24E66804C(v156, v159, v157);
  v84 = v114;
  v85 = swift_allocObject();
  sub_24E6680B8(v76, v85 + v155, v79);
  sub_24E6680B8(v83, v85 + v84, v115);
  v162 = v81;
  v163 = MEMORY[0x277D839B0];
  v164 = v80;
  v165 = MEMORY[0x277D839C8];
  v159 = swift_getOpaqueTypeConformance2();
  v86 = v149;
  v87 = v82;
  v88 = v150;
  v89 = v148;
  sub_24F926AD8();

  (*(v133 + 8))(v87, v134);
  (*(v131 + 8))(v89, v88);
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();
  v160 = v171;
  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  v158 = v162;
  type metadata accessor for ArcadeSubscription(0);
  sub_24F928F28();
  v90 = v169;
  type metadata accessor for NetworkConnectionMonitor(0);
  sub_24F928F28();
  v91 = v167;
  v165 = v151;
  v166 = &protocol witness table for SearchPageContainer;
  v92 = __swift_allocate_boxed_opaque_existential_1(&v162);
  sub_24E66804C(v156, v92, v157);
  v93 = v154;
  (*(v153 + 16))(v154, v86, v152);
  v94 = v93 + *(v135 + 36);
  sub_24E615E00(&v162, v94 + 32);
  *(v94 + 72) = swift_getKeyPath();
  *(v94 + 80) = 0;
  *(v94 + 88) = swift_getKeyPath();
  *(v94 + 96) = 0;
  type metadata accessor for TransientToolbarConfiguration(0);
  v95 = swift_allocObject();
  v96 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__principal;
  v97 = type metadata accessor for TransientToolbarConfiguration.ToolbarItem(0);
  v98 = *(*(v97 - 8) + 56);
  v98(v95 + v96, 1, 1, v97);
  v98(v95 + v96, 1, 1, v97);
  v99 = OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__topBarTrailing;
  v98(v95 + OBJC_IVAR____TtC12GameStoreKit29TransientToolbarConfiguration__topBarTrailing, 1, 1, v97);
  v98(v95 + v99, 1, 1, v97);
  v100 = v158;

  sub_24F91FDB8();
  v161 = v95;
  sub_24F926F28();
  v101 = v175;
  *(v94 + 104) = v174;
  *(v94 + 112) = v101;
  *v94 = v160;
  *(v94 + 8) = v100;
  *(v94 + 16) = v90;
  *(v94 + 24) = v91;
  v102 = v154;
  sub_24E60169C(v154, v136, &qword_27F2155F0, &qword_24F9407D8);
  swift_storeEnumTagMultiPayload();
  sub_24E667C70();

  v174 = v150;
  v175 = v159;
  swift_getOpaqueTypeConformance2();
  v103 = v152;
  sub_24F924E28();
  sub_24E601704(v102, &qword_27F2155F0, &qword_24F9407D8);

  (*(v153 + 8))(v149, v103);
  return __swift_destroy_boxed_opaque_existential_1(&v162);
}

uint64_t sub_24E6621F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215698, &qword_24F9408E0);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = v50 - v6;
  v7 = type metadata accessor for SearchSuggestionsResult(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v51 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156A0, &qword_24F9408E8);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156A8, &qword_24F9408F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v50 - v15;
  v54 = v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156B0, &qword_24F9408F8);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v56 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v50 - v21;
  MEMORY[0x28223BE20](v23);
  v53 = v50 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156B8, &qword_24F940900);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v50 - v29;
  sub_24E65FA64(v50 - v29);
  v50[1] = a1;
  sub_24E6627D0(a2, v16);
  v31 = *(v8 + 48);
  v32 = v7;
  LOBYTE(v7) = v31(v30, 1, v7) != 1;
  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = v7;
  sub_24E6009C8(v54, v22, &qword_27F2156A8, &qword_24F9408F0);
  v35 = &v22[*(v18 + 44)];
  *v35 = KeyPath;
  v36 = v53;
  v35[1] = sub_24E600A48;
  v35[2] = v34;
  sub_24E6009C8(v22, v36, &qword_27F2156B0, &qword_24F9408F8);
  v54 = v30;
  sub_24E60169C(v30, v27, &qword_27F2156B8, &qword_24F940900);
  if (v31(v27, 1, v32) == 1)
  {
    sub_24E601704(v27, &qword_27F2156B8, &qword_24F940900);
    v37 = 1;
    v39 = v57;
    v38 = v58;
    v40 = v55;
  }

  else
  {
    v41 = v51;
    sub_24E6680B8(v27, v51, type metadata accessor for SearchSuggestionsResult);
    v42 = v52;
    sub_24E66362C(v41);
    sub_24E66B6DC(v41, type metadata accessor for SearchSuggestionsResult);
    v44 = v57;
    v43 = v58;
    v40 = v55;
    (*(v57 + 32))(v55, v42, v58);
    v37 = 0;
    v38 = v43;
    v39 = v44;
  }

  (*(v39 + 56))(v40, v37, 1, v38);
  v45 = v56;
  sub_24E60169C(v36, v56, &qword_27F2156B0, &qword_24F9408F8);
  v46 = v59;
  sub_24E60169C(v40, v59, &qword_27F2156A0, &qword_24F9408E8);
  v47 = v60;
  sub_24E60169C(v45, v60, &qword_27F2156B0, &qword_24F9408F8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156C0, &qword_24F940938);
  sub_24E60169C(v46, v47 + *(v48 + 48), &qword_27F2156A0, &qword_24F9408E8);
  sub_24E601704(v40, &qword_27F2156A0, &qword_24F9408E8);
  sub_24E601704(v36, &qword_27F2156B0, &qword_24F9408F8);
  sub_24E601704(v54, &qword_27F2156B8, &qword_24F940900);
  sub_24E601704(v46, &qword_27F2156A0, &qword_24F9408E8);
  return sub_24E601704(v45, &qword_27F2156B0, &qword_24F9408F8);
}

uint64_t sub_24E6627D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a1;
  v130 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v122 = *(v3 - 8);
  v123 = v3;
  MEMORY[0x28223BE20](v3);
  v121 = &v107 - v4;
  v5 = sub_24F92A498();
  v6 = *(v5 - 8);
  v119 = v5;
  v120 = v6;
  MEMORY[0x28223BE20](v5);
  v118 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v8 - 8);
  v125 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v131 = &v107 - v11;
  v133 = type metadata accessor for SearchResultsPageView(0);
  MEMORY[0x28223BE20](v133);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F8, &qword_24F940A60);
  v124 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v15 = &v107 - v14;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215700, &qword_24F940A68);
  MEMORY[0x28223BE20](v127);
  v17 = &v107 - v16;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215708, &qword_24F940A70);
  MEMORY[0x28223BE20](v128);
  v19 = (&v107 - v18);
  v20 = v2[6];
  v21 = v2[7];
  v132 = v2;
  v117 = v20;
  *&v169 = v20;
  *(&v169 + 1) = v21;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215668, &qword_24F940820);
  sub_24F926F38();
  v22 = v158;
  swift_getKeyPath();
  *&v169 = v22;
  sub_24E667F24(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v23 = *(v22 + 152);
  v165 = *(v22 + 136);
  v166 = v23;
  v24 = *(v22 + 184);
  v167 = *(v22 + 168);
  v168 = v24;
  v25 = *(v22 + 88);
  v161 = *(v22 + 72);
  v162 = v25;
  v26 = *(v22 + 120);
  v163 = *(v22 + 104);
  v164 = v26;
  v27 = *(v22 + 40);
  v158 = *(v22 + 24);
  v159 = v27;
  v160 = *(v22 + 56);
  sub_24E6691F8(&v158, &v169);

  v177 = v166;
  v178 = v167;
  v179 = v168;
  v173 = v162;
  v174 = v163;
  v175 = v164;
  v176 = v165;
  v169 = v158;
  v170 = v159;
  v171 = v160;
  v172 = v161;
  if (sub_24E66927C(&v169))
  {
    v28 = type metadata accessor for SearchPageContainer(0);
    sub_24E60169C(v126 + *(v28 + 28), &v134, &qword_27F215768, "D5\r");
    sub_24E612C80(&v134, &v140);
    v29 = v132[5];

    sub_24F57BC34(&v140, v29, 0, v19);
    v30 = sub_24E65F0D8();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_24F925808();
    *&v134 = v30;
    *(&v134 + 1) = v32;
    v135 = v34;
    v136 = v36;
    v137 = 0;
    sub_24F9252D8();
    sub_24E60169C(v19, v17, &qword_27F215708, &qword_24F940A70);
    swift_storeEnumTagMultiPayload();
    sub_24E6694A4();
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215728, &qword_24F940B28);
    v38 = sub_24E667F24(&qword_27F215730, type metadata accessor for SearchResultsPageView, &unk_24F984250);
    v39 = sub_24E669340();
    v40 = sub_24E669394();
    v140 = v133;
    v141 = &type metadata for IsDebugFlashBackgroundOnIdentityChangeEnabled;
    *&v142 = v37;
    *(&v142 + 1) = v38;
    v143 = v39;
    v144 = v40;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return sub_24E601704(v19, &qword_27F215708, &qword_24F940A70);
  }

  else
  {
    v113 = v15;
    v114 = v17;
    v112 = v132[5];
    v115 = type metadata accessor for Player;
    sub_24E66804C(v126, v131, type metadata accessor for Player);
    v42 = v21;
    v111 = v21;
    v43 = v117;
    *&v134 = v117;
    *(&v134 + 1) = v42;
    sub_24F926F58();
    v44 = v140;
    v45 = v141;
    v46 = v142;
    swift_getKeyPath();
    v155 = v44;
    v156 = v45;
    v157 = v46;
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215680, &qword_24F940858);
    sub_24F927188();

    v109 = v153;
    v110 = v152;
    v108 = v154;

    *&v134 = v43;
    *(&v134 + 1) = v111;
    sub_24F926F58();
    v47 = v140;
    v48 = v141;
    v49 = v142;
    swift_getKeyPath();
    v149 = v47;
    v150 = v48;
    v151 = v49;
    sub_24F927188();

    v116 = *(&v134 + 1);
    v117 = v134;
    v50 = v135;
    v111 = v135;
    v126 = v136;

    v51 = sub_24E65F0D8();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v146 = 0;
    sub_24F926F28();
    v58 = v141;
    *(v13 + 35) = v140;
    *(v13 + 36) = v58;
    v59 = v133;
    v60 = *(v133 + 56);
    *&v13[v60] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v61 = *(v59 + 60);
    *&v13[v61] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v62 = v178;
    *(v13 + 8) = v177;
    *(v13 + 9) = v62;
    *(v13 + 10) = v179;
    v63 = v174;
    *(v13 + 4) = v173;
    *(v13 + 5) = v63;
    v64 = v176;
    *(v13 + 6) = v175;
    *(v13 + 7) = v64;
    v65 = v170;
    *v13 = v169;
    *(v13 + 1) = v65;
    v66 = v172;
    *(v13 + 2) = v171;
    *(v13 + 3) = v66;
    v68 = v109;
    v67 = v110;
    *(v13 + 28) = v110;
    *(v13 + 29) = v68;
    v69 = v108;
    *(v13 + 30) = v108;
    v70 = v116;
    *(v13 + 24) = v117;
    *(v13 + 25) = v70;
    v71 = v126;
    *(v13 + 26) = v50;
    *(v13 + 27) = v71;
    v72 = v125;
    sub_24E66804C(v131, v125, v115);
    v146 = v67;
    v147 = v68;
    v148 = v69;
    sub_24E6691F8(&v158, &v140);

    v73 = v70;

    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215710, &unk_24F984330);
    MEMORY[0x25304CAF0](&v145, v74);
    v75 = v145;
    type metadata accessor for SearchResultsPageViewModel(0);
    v76 = swift_allocObject();
    v138 = 0;
    v139 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
    sub_24F9271B8();
    v77 = v141;
    v78 = v142;
    v79 = v76 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__selectedTabID;
    *v79 = v140;
    *(v79 + 8) = v77;
    *(v79 + 16) = v78;
    v80 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__page;
    v81 = type metadata accessor for GameSearchResultsPage(0);
    (*(*(v81 - 8) + 56))(v76 + v80, 1, 1, v81);
    v82 = MEMORY[0x277D84F90];
    *(v76 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__tabStates) = sub_24E608BA4(MEMORY[0x277D84F90]);
    *(v76 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__cachedSelectedGroup) = sub_24E6086DC(v82);
    *(v76 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__groupStates) = sub_24E608D8C(v82);
    v83 = OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel_fetchGroupShelfTasks;
    *(v76 + v83) = sub_24E608F94(v82);
    sub_24F91FDB8();
    v84 = v178;
    *(v76 + 144) = v177;
    *(v76 + 160) = v84;
    *(v76 + 176) = v179;
    v85 = v174;
    *(v76 + 80) = v173;
    *(v76 + 96) = v85;
    v86 = v176;
    *(v76 + 112) = v175;
    *(v76 + 128) = v86;
    v87 = v170;
    *(v76 + 16) = v169;
    *(v76 + 32) = v87;
    v88 = v172;
    *(v76 + 48) = v171;
    *(v76 + 64) = v88;
    *(v76 + 192) = v112;
    sub_24E66804C(v72, v76 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel_player, v115);
    *(v76 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel_friendsPlayingGames) = v75;
    KeyPath = swift_getKeyPath();
    v132 = &v107;
    MEMORY[0x28223BE20](KeyPath);
    v90 = v117;
    *(&v107 - 6) = v76;
    *(&v107 - 5) = v90;
    v91 = v111;
    *(&v107 - 4) = v73;
    *(&v107 - 3) = v91;
    v106 = v126;
    v140 = v76;
    sub_24E667F24(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);

    sub_24F91FD78();

    sub_24E66B6DC(v125, type metadata accessor for Player);
    *(v13 + 22) = v76;
    *(v13 + 23) = 0;
    v93 = v118;
    v92 = v119;
    sub_24F928F28();
    if (qword_27F2108A8 != -1)
    {
      swift_once();
    }

    v94 = v121;
    sub_24F92A448();
    v95 = v123;
    sub_24F92A408();
    (*(v122 + 8))(v94, v95);
    (*(v120 + 8))(v93, v92);
    v96 = v141;
    *(v13 + 43) = v140;
    *(v13 + 44) = v96;
    sub_24F929158();
    v97 = v133;
    sub_24F928F28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720, &qword_24F940B20);
    sub_24F928F28();
    type metadata accessor for NetworkConnectionMonitor(0);
    sub_24F928F28();
    sub_24E66B6DC(v131, type metadata accessor for Player);
    *(v13 + 42) = v140;
    *(v13 + 31) = v51;
    *(v13 + 32) = v53;
    *(v13 + 33) = v55;
    *(v13 + 34) = v57;
    v98 = sub_24F926C28();
    v132 = &v107;
    MEMORY[0x28223BE20](v98);
    *(&v107 - 4) = v99;
    *(&v107 - 3) = 0x3FE0000000000000;
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215728, &qword_24F940B28);
    v100 = sub_24E667F24(&qword_27F215730, type metadata accessor for SearchResultsPageView, &unk_24F984250);
    v101 = sub_24E669340();
    v102 = sub_24E669394();
    v106 = v102;
    v103 = v113;
    sub_24F926B08();

    sub_24E66B6DC(v13, type metadata accessor for SearchResultsPageView);
    v104 = v124;
    v105 = v129;
    (*(v124 + 16))(v114, v103, v129);
    swift_storeEnumTagMultiPayload();
    sub_24E6694A4();
    v140 = v97;
    v141 = &type metadata for IsDebugFlashBackgroundOnIdentityChangeEnabled;
    *&v142 = v131;
    *(&v142 + 1) = v100;
    v143 = v101;
    v144 = v102;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v104 + 8))(v103, v105);
  }
}

uint64_t sub_24E66362C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156C8, &qword_24F940940);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  sub_24E66804C(a1, &v29 - v5, type metadata accessor for SearchSuggestionsResult);
  v7 = *(v2 + 56);
  v33 = *(v2 + 48);
  v34 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215668, &qword_24F940820);
  sub_24F926F38();
  v8 = v30;
  sub_24F929158();
  v9 = type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0);
  sub_24F928F28();
  KeyPath = swift_getKeyPath();
  v11 = &v6[v9[7]];
  *v11 = KeyPath;
  v11[40] = 0;
  *&v6[v9[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  *&v6[v9[5]] = v8;
  v14 = &v6[v9[9]];
  *v14 = v12;
  v14[8] = 0;
  v15 = &v6[v9[10]];
  *v15 = v13;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v15[32] = 0;
  v16 = v9[11];
  *&v6[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v17 = &v6[v9[12]];
  sub_24F929EB8();
  v30 = sub_24F929EA8();
  sub_24F926F28();
  v18 = v34;
  *v17 = v33;
  *(v17 + 1) = v18;
  v19 = sub_24E65F0D8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_24F925808();
  v33 = v19;
  v34 = v21;
  v35 = v23;
  v36 = v25;
  v37 = 0;
  sub_24F9252D8();
  v26 = *(v2 + 96);
  v27 = *(v2 + 104);
  LOBYTE(v30) = *(v2 + 88);
  v31 = v26;
  v32 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
  sub_24F923348();
  sub_24E669104();
  sub_24F9269C8();

  return sub_24E601704(v6, &qword_27F2156C8, &qword_24F940940);
}

uint64_t sub_24E663930@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E667F24(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v4 = *(v3 + 224);
  *a2 = *(v3 + 216);
  a2[1] = v4;
}

uint64_t sub_24E6639DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24E707BCC(v1, v2);
}

uint64_t sub_24E663A1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E667F24(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  *a2 = *(v3 + 289);
  return result;
}

uint64_t sub_24E663AEC(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v21 = sub_24F921B58();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24F928AD8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24F924848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1 + 144, &v23, &qword_27F215690, &unk_24F98D8E0);
  if (v26 == 1)
  {
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v13 = *(&v24 + 1);
    if (*(&v24 + 1))
    {
LABEL_3:
      __swift_project_boxed_opaque_existential_1(&v27, v13);
      v14 = *(a1 + 56);
      *&v23 = *(a1 + 48);
      *(&v23 + 1) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215668, &qword_24F940820);
      sub_24F926F38();
      v15 = v22;
      swift_getKeyPath();
      *&v23 = v15;
      sub_24E667F24(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
      sub_24F91FD88();

      v16 = *(v15 + 216);
      v17 = *(v15 + 224);

      sub_24F567DE0(v16, v17, v8);

      *(&v24 + 1) = sub_24F9284A8();
      v25 = MEMORY[0x277D21B60];
      __swift_allocate_boxed_opaque_existential_1(&v23);
      sub_24F928498();
      sub_24E65EB20(v5);
      sub_24F9218A8();
      (*(v3 + 8))(v5, v21);
      __swift_destroy_boxed_opaque_existential_1(&v23);
      return __swift_destroy_boxed_opaque_existential_1(&v27);
    }
  }

  else
  {
    sub_24F92BDC8();
    v19 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v13 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      goto LABEL_3;
    }
  }

  return sub_24E601704(&v27, &unk_27F212740, &unk_24F940730);
}

void sub_24E663E9C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24F921B58();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_24F928AD8();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_24F924848();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a2 & 1) == 0)
  {
    sub_24E60169C(a3 + 144, &v26, &qword_27F215690, &unk_24F98D8E0);
    v23[1] = a4;
    v24 = v8;
    if (v29 == 1)
    {
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v18 = *(&v27 + 1);
      if (*(&v27 + 1))
      {
LABEL_4:
        __swift_project_boxed_opaque_existential_1(&v30, v18);
        v19 = *(a3 + 56);
        *&v26 = *(a3 + 48);
        *(&v26 + 1) = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215668, &qword_24F940820);
        sub_24F926F38();
        v21 = *(v25 + 200);
        v20 = *(v25 + 208);

        sub_24F568388(v21, v20, v13);

        *(&v27 + 1) = sub_24F9284A8();
        v28 = MEMORY[0x277D21B60];
        __swift_allocate_boxed_opaque_existential_1(&v26);
        sub_24F928498();
        sub_24E65EB20(v10);
        sub_24F9218A8();
        (*(v24 + 8))(v10, v7);
        __swift_destroy_boxed_opaque_existential_1(&v26);
        __swift_destroy_boxed_opaque_existential_1(&v30);
        return;
      }
    }

    else
    {
      sub_24F92BDC8();
      v22 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v15 + 8))(v17, v14);
      v18 = *(&v31 + 1);
      if (*(&v31 + 1))
      {
        goto LABEL_4;
      }
    }

    sub_24E601704(&v30, &unk_27F212740, &unk_24F940730);
  }
}

void sub_24E6641F4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
      sub_24F923338();
    }

    else
    {
      v5 = [objc_opt_self() sharedApplication];
      [v5 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
    }
  }
}

uint64_t sub_24E664318(uint64_t a1, uint64_t a2)
{
  v16[2] = a2;
  v3 = sub_24F921B58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24F928AD8();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v18[0] = v10;
  v18[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215668, &qword_24F940820);
  sub_24F926F38();
  LOBYTE(v18[0]) = 10;
  sub_24E707EEC(0, 0, v18);

  sub_24E65E9B0(v18);
  if (!v19)
  {
    return sub_24E601704(v18, &unk_27F212740, &unk_24F940730);
  }

  v16[1] = v20;
  v16[0] = __swift_project_boxed_opaque_existential_1(v18, v19);
  v17[0] = v10;
  v17[1] = v11;
  sub_24F926F38();
  v12 = v16[3];
  swift_getKeyPath();
  v17[0] = v12;
  sub_24E667F24(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v13 = *(v12 + 216);
  v14 = *(v12 + 224);

  sub_24F568930(v13, v14, v9);

  v17[3] = sub_24F9284A8();
  v17[4] = MEMORY[0x277D21B60];
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_24F928498();
  sub_24E65EB20(v6);
  sub_24F9218A8();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_24E6645DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0);
  result = sub_24E60169C(v1 + *(v7 + 28), v11, &qword_27F215690, &unk_24F98D8E0);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_24E664758@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0);
  sub_24E60169C(v1 + *(v10 + 32), v9, &qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F921B58();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_24E664960()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0) + 36));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

double sub_24E664ABC()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0) + 40);
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (*(v5 + 32) == 1)
  {
    return *v5;
  }

  sub_24F92BDC8();
  v11 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E669FC4(v7, v6, v9, v8, 0);
  (*(v2 + 8))(v4, v1);
  return v12;
}

uint64_t sub_24E664C48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8, &unk_24F940C00);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v36 - v6;
  v7 = type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0);
  v8 = v7 - 8;
  v37 = *(v7 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F8, &qword_24F940C10);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  sub_24E665368(&v36 - v11);
  v13 = sub_24F927618();
  v15 = v14;
  v16 = sub_24F924058();
  v17 = sub_24F925808();
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215800, &qword_24F940C18) + 36)];
  *v18 = 256;
  *(v18 + 1) = v16;
  v18[16] = v17;
  *(v18 + 3) = v13;
  *(v18 + 4) = v15;
  v20 = *v2;
  v19 = *(v2 + 1);
  sub_24E66804C(v2, &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchPageContainerView.SearchSuggestionsView);
  v21 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v22 = swift_allocObject();
  sub_24E6680B8(&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for SearchPageContainerView.SearchSuggestionsView);
  v23 = &v12[*(v10 + 36)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215808, &unk_24F940C30);

  sub_24F92B818();
  v25 = &v23[*(v24 + 40)];
  *v25 = v20;
  *(v25 + 1) = v19;
  *v23 = &unk_24F940C28;
  *(v23 + 1) = v22;
  v26 = *(type metadata accessor for SearchSuggestionsResult(0) + 28);
  v27 = sub_24F928818();
  v28 = *(v27 - 8);
  v29 = v38;
  (*(v28 + 16))(v38, &v2[v26], v27);
  (*(v28 + 56))(v29, 0, 1, v27);
  v30 = &v2[*(v8 + 56)];
  v32 = *v30;
  v31 = *(v30 + 1);
  v41 = v32;
  v42 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215810, &unk_24F9D5560);
  sub_24F926F38();
  v33 = sub_24F921B48();
  v34 = v39;
  (*(*(v33 - 8) + 56))(v39, 1, 1, v33);
  sub_24E66A09C();
  sub_24F925E58();

  sub_24E601704(v34, &qword_27F2157E8, &unk_24F940C00);
  sub_24E601704(v29, &qword_27F2157F0, &qword_24F9846A0);
  return sub_24E601704(v12, &qword_27F2157F8, &qword_24F940C10);
}

uint64_t sub_24E665094(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_24F921B58();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = sub_24F928AD8();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  sub_24F92B7F8();
  v1[19] = sub_24F92B7E8();
  v5 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E6651E4, v5, v4);
}

uint64_t sub_24E6651E4()
{

  sub_24E6645DC((v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[17];
    v3 = v0[18];
    v4 = v0[15];
    v5 = v0[16];
    v6 = v0[14];
    v13 = v0[13];
    v7 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
    v8 = type metadata accessor for SearchSuggestionsResult(0);
    (*(v2 + 16))(v3, v7 + *(v8 + 24), v5);
    v9 = sub_24F9284A8();
    v10 = MEMORY[0x277D21B60];
    v0[10] = v9;
    v0[11] = v10;
    __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    sub_24F928498();
    sub_24E664758(v4);
    sub_24F9218A8();
    (*(v6 + 8))(v4, v13);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    sub_24E601704((v0 + 2), &unk_27F212740, &unk_24F940730);
  }

  v11 = v0[1];

  return v11();
}

__n128 sub_24E665368@<Q0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v60 = sub_24F923C68();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215848, &qword_24F940C50);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215870, &qword_24F940C60);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v48 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215840, &qword_24F940C48);
  MEMORY[0x28223BE20](v51);
  v59 = &v48 - v7;
  v8 = sub_24F925218();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v15 - 8);
  v62 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = (&v48 - v21);
  v23 = sub_24E664960();
  type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0);
  v49 = v1;
  sub_24F769764(v22);
  (*(v9 + 104))(v19, *MEMORY[0x277CE0558], v8);
  (*(v9 + 56))(v19, 0, 1, v8);
  v24 = *(v12 + 56);
  sub_24E60169C(v22, v14, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v19, &v14[v24], &qword_27F215598, &qword_24F945EF0);
  v25 = *(v9 + 48);
  if (v25(v14, 1, v8) == 1)
  {
    sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    if (v25(&v14[v24], 1, v8) == 1)
    {
      sub_24E601704(v14, &qword_27F215598, &qword_24F945EF0);
      v26 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_24E60169C(v14, v62, &qword_27F215598, &qword_24F945EF0);
  if (v25(&v14[v24], 1, v8) == 1)
  {
    sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    (*(v9 + 8))(v62, v8);
LABEL_6:
    sub_24E601704(v14, &unk_27F254F20, &qword_24F940790);
    v26 = 0;
    goto LABEL_8;
  }

  v27 = &v14[v24];
  v28 = v48;
  (*(v9 + 32))(v48, v27, v8);
  sub_24E667F24(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v26 = sub_24F92AFF8();
  v29 = *(v9 + 8);
  v29(v28, v8);
  sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
  v29(v62, v8);
  sub_24E601704(v14, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  sub_24E664ABC();
  if (v23 <= 1580.0)
  {
    v30 = v23;
  }

  else
  {
    v30 = 1580.0;
  }

  LOBYTE(v70) = 2;
  v31 = sub_24F422FFC(v26 & 1, v30);
  v77 = v23;
  v78 = 0x4098B00000000000;
  v79 = v30;
  v80 = v30 - (v32 + v32);
  v81 = v32;
  v82 = (v23 - v30) * 0.5 + v32;
  MEMORY[0x28223BE20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215878, &qword_24F940C68);
  sub_24E66A3BC();
  v33 = v50;
  sub_24F925A98();
  v34 = v55;
  sub_24F923C58();
  sub_24E602068(&qword_27F215850, &qword_27F215848, &qword_24F940C50, MEMORY[0x277CDE5A0]);
  v35 = v52;
  v36 = v54;
  v37 = v60;
  sub_24F926B98();
  (*(v58 + 8))(v34, v37);
  (*(v53 + 8))(v33, v36);
  sub_24F927628();
  sub_24F9242E8();
  v38 = v59;
  (*(v56 + 32))(v59, v35, v57);
  v39 = (v38 + *(v51 + 36));
  v40 = v68;
  v39[4] = v67;
  v39[5] = v40;
  v39[6] = v69;
  v41 = v64;
  *v39 = v63;
  v39[1] = v41;
  v42 = v66;
  v39[2] = v65;
  v39[3] = v42;
  sub_24F927618();
  sub_24F9242E8();
  v43 = v61;
  sub_24E6009C8(v38, v61, &qword_27F215840, &qword_24F940C48);
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215830, &qword_24F940C40) + 36);
  v45 = v75;
  *(v44 + 64) = v74;
  *(v44 + 80) = v45;
  *(v44 + 96) = v76;
  v46 = v71;
  *v44 = v70;
  *(v44 + 16) = v46;
  result = v73;
  *(v44 + 32) = v72;
  *(v44 + 48) = result;
  return result;
}

uint64_t sub_24E665CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v34 = a2;
  v4 = type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2158B0, &qword_24F940C88);
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2158A8, &qword_24F940C80);
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v29 - v12;
  v39 = *(a1 + 16);
  v29[1] = swift_getKeyPath();
  sub_24E66804C(a1, v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchPageContainerView.SearchSuggestionsView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_24E6680B8(v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SearchPageContainerView.SearchSuggestionsView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2158E0, &qword_24F940CC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2158E8, &unk_24F940CD0);
  sub_24E602068(&qword_27F2158F0, &qword_27F2158E0, &qword_24F940CC8, MEMORY[0x277D83980]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2158C0, &qword_24F940C90);
  v17 = sub_24E602068(&qword_27F2158C8, &qword_27F2158C0, &qword_24F940C90, MEMORY[0x277D7EB00]);
  v18 = sub_24E62A2EC();
  v35 = v16;
  v36 = &type metadata for FillFocusButtonStyle;
  v37 = v17;
  v38 = v18;
  swift_getOpaqueTypeConformance2();
  sub_24F927228();
  sub_24F923858();
  v19 = sub_24E66A600();
  sub_24F9264B8();
  (*(v30 + 8))(v9, v7);
  sub_24F923848();
  v35 = v7;
  v36 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v33;
  v21 = v31;
  sub_24F9264B8();
  (*(v32 + 8))(v13, v21);
  v22 = *(v34 + 32);
  v23 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2158A0, &qword_24F940C78) + 36);
  *v23 = 0;
  *(v23 + 8) = v22;
  *(v23 + 16) = 0;
  *(v23 + 24) = v22;
  *(v23 + 32) = 0;
  v24 = sub_24F924C58();
  v25 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215890, &qword_24F940C70) + 36));
  *v25 = v24;
  v25[1] = sub_24E666BC0;
  v25[2] = 0;
  v26 = sub_24F924C68();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215878, &qword_24F940C68);
  v28 = (v20 + *(result + 36));
  *v28 = v26;
  v28[1] = sub_24E666BE8;
  v28[2] = 0;
  return result;
}

uint64_t sub_24E666164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v58 = type metadata accessor for AsymmetricalInsetRoundedRectangle(0);
  MEMORY[0x28223BE20](v58);
  v59 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v49 - v7;
  v8 = type metadata accessor for SearchPromptItem(0);
  v9 = v8 - 8;
  v52 = *(v8 - 8);
  v51 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v49 - v19;
  v53 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2158C0, &qword_24F940C90);
  v22 = *(v21 - 8);
  v55 = v21;
  v56 = v22;
  MEMORY[0x28223BE20](v21);
  v54 = &v49 - v23;
  v24 = sub_24F9232F8();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = *(v9 + 56);
  v26 = *(v15 + 16);
  v49 = a1;
  v26(v17, a1 + v25, v14);
  sub_24E66804C(a2, &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchPageContainerView.SearchSuggestionsView);
  sub_24E66804C(a1, v11, type metadata accessor for SearchPromptItem);
  v27 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v28 = *(v52 + 80);
  v29 = swift_allocObject();
  sub_24E6680B8(&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v27, type metadata accessor for SearchPageContainerView.SearchSuggestionsView);
  sub_24E6680B8(v11, v29 + ((v13 + v28 + v27) & ~v28), type metadata accessor for SearchPromptItem);
  *(&v62 + 1) = sub_24F928B08();
  v63 = MEMORY[0x277D21CB8];
  __swift_allocate_boxed_opaque_existential_1(&v61);
  sub_24F928AF8();
  sub_24E66804C(v49, v11, type metadata accessor for SearchPromptItem);
  v30 = swift_allocObject();
  sub_24E6680B8(v11, v30 + ((v28 + 16) & ~v28), type metadata accessor for SearchPromptItem);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2158F8, &qword_24F940CE0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215900, &qword_24F940CE8);
  v32 = sub_24E66B48C();
  v66 = v31;
  v67 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v54;
  sub_24F921788();
  v34 = sub_24F924258();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v35 = *(v34 + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_24F924B38();
  v38 = v57;
  (*(*(v37 - 8) + 104))(&v57[v35], v36, v37);
  __asm { FMOV            V0.2D, #12.0 }

  *v38 = _Q0;
  v44 = (v38 + *(v58 + 20));
  *v44 = xmmword_24F9406E0;
  v44[1] = xmmword_24F9406E0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v45 = sub_24F926D08();

  sub_24E66804C(v38, v59, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  sub_24E667F24(&qword_27F215938, type metadata accessor for AsymmetricalInsetRoundedRectangle, &unk_24F9DB160);
  v46 = sub_24F927348();
  sub_24E66B6DC(v38, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  v64 = v46;
  v65 = v45;
  sub_24E602068(&qword_27F2158C8, &qword_27F2158C0, &qword_24F940C90, MEMORY[0x277D7EB00]);
  sub_24E62A2EC();
  v47 = v55;
  sub_24F926178();
  sub_24E64594C(&v61);
  return (*(v56 + 8))(v33, v47);
}

void sub_24E666844(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0);
  v3 = (a2 + *(type metadata accessor for SearchPromptItem(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = 3;
  sub_24E707EEC(v4, v5, &v6);
}

uint64_t sub_24E6668B4@<X0>(uint64_t a2@<X8>)
{
  v28[1] = a2;
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215928, &qword_24F940CF8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215918, &qword_24F940CF0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215900, &qword_24F940CE8);
  MEMORY[0x28223BE20](v14);
  v16 = v28 - v15;
  sub_24E66B688();
  sub_24F921D38();
  v17 = sub_24F925868();
  sub_24F923318();
  v18 = &v9[*(v7 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v9, v13, &qword_27F215928, &qword_24F940CF8);
  v23 = &v13[*(v11 + 44)];
  v24 = v34;
  *(v23 + 4) = v33;
  *(v23 + 5) = v24;
  *(v23 + 6) = v35;
  v25 = v30;
  *v23 = v29;
  *(v23 + 1) = v25;
  v26 = v32;
  *(v23 + 2) = v31;
  *(v23 + 3) = v26;
  sub_24E6009C8(v13, v16, &qword_27F215918, &qword_24F940CF0);
  v16[*(v14 + 36)] = 0;
  sub_24F9248B8();
  sub_24E66B48C();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v16, &qword_27F215900, &qword_24F940CE8);
}

uint64_t sub_24E666C14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E667F24(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__friendsPlayingGames);
}

uint64_t sub_24E666CF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E667F24(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v4 = *(v3 + 304);
  *a2 = *(v3 + 296);
  a2[1] = v4;
}

uint64_t sub_24E666DA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24E708804(v1, v2);
}

uint64_t sub_24E666E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v13 = type metadata accessor for SearchResultsPageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215770, &qword_24F940B40);
  v8 = sub_24F92B188();
  v10 = v9;
  sub_24F926F28();
  sub_24E66804C(a1, a3, type metadata accessor for SearchResultsPageView);
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215728, &qword_24F940B28) + 36);
  *v11 = a2;
  *(v11 + 8) = a4;
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
}

uint64_t sub_24E666F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v13 = type metadata accessor for SearchResultsPageView.TabContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215958, &qword_24F940D18);
  v8 = sub_24F92B188();
  v10 = v9;
  sub_24F926F28();
  sub_24E66804C(a1, a3, type metadata accessor for SearchResultsPageView.TabContentView);
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215960, &unk_24F940D20) + 36);
  *v11 = a2;
  *(v11 + 8) = a4;
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
}

uint64_t sub_24E66701C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215940, &qword_24F940D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215948, &qword_24F940D08);
  v8 = sub_24F92B188();
  v10 = v9;
  sub_24F926F28();
  sub_24E60169C(a1, a3, &qword_27F215940, &qword_24F940D00);
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215950, &qword_24F940D10) + 36);
  *v11 = a2;
  *(v11 + 8) = a4;
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
}

uint64_t sub_24E667130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>, double a5@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215968, &unk_24F9A8BE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215970, &qword_24F940D30);
  sub_24E66B7FC();
  sub_24E6695B8();
  sub_24E66BF00();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  DynamicType = swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AA0, &qword_24F940DC8);
  v10 = sub_24F92B188();
  v12 = v11;
  sub_24F926F28();
  (*(*(OpaqueTypeMetadata2 - 8) + 16))(a4, a1, OpaqueTypeMetadata2);
  v13 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AA8, &unk_24F940DD0) + 36);
  *v13 = a2;
  *(v13 + 8) = a5;
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  *(v13 + 32) = DynamicType;
  *(v13 + 40) = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
}

uint64_t sub_24E6672D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>, double a5@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AE0, &qword_24F940DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AE8, &qword_24F940E00);
  sub_24E66C09C();
  sub_24E6695B8();
  sub_24E66DAE0();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  DynamicType = swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D90, &qword_24F940F10);
  v10 = sub_24F92B188();
  v12 = v11;
  sub_24F926F28();
  (*(*(OpaqueTypeMetadata2 - 8) + 16))(a4, a1, OpaqueTypeMetadata2);
  v13 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215D98, &qword_24F940F18) + 36);
  *v13 = a2;
  *(v13 + 8) = a5;
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  *(v13 + 32) = DynamicType;
  *(v13 + 40) = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
}

uint64_t sub_24E667478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>, double a5@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AB0, &unk_24F9A8BF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AB8, &qword_24F940DE0);
  sub_24E602068(&qword_27F215AC0, &qword_27F215AB0, &unk_24F9A8BF0, MEMORY[0x277CE04B0]);
  sub_24E6695B8();
  sub_24E66BFB8();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  DynamicType = swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AD0, &qword_24F940DE8);
  v10 = sub_24F92B188();
  v12 = v11;
  sub_24F926F28();
  (*(*(OpaqueTypeMetadata2 - 8) + 16))(a4, a1, OpaqueTypeMetadata2);
  v13 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AD8, &qword_24F940DF0) + 36);
  *v13 = a2;
  *(v13 + 8) = a5;
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  *(v13 + 32) = DynamicType;
  *(v13 + 40) = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
}

uint64_t sub_24E667648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>, double a5@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215778, &qword_24F940B70);
  sub_24E6695B8();
  sub_24E66960C();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  DynamicType = swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215798, &qword_24F940B78);
  v10 = sub_24F92B188();
  v12 = v11;
  sub_24F926F28();
  (*(*(OpaqueTypeMetadata2 - 8) + 16))(a4, a1, OpaqueTypeMetadata2);
  v13 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157A0, &unk_24F940B80) + 36);
  *v13 = a2;
  *(v13 + 8) = a5;
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  *(v13 + 32) = DynamicType;
  *(v13 + 40) = &type metadata for IsDebugComponentNameOrSizeOverlayEnabled;
}

uint64_t sub_24E6677DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E667F24(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);
  sub_24F91FD88();

  v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__selectedTabID + 8);
  v6 = *(v3 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__selectedTabID + 16);
  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__selectedTabID + 24);
  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit26SearchResultsPageViewModel__selectedTabID);
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_24E6678AC(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24E667F24(&qword_27F215718, type metadata accessor for SearchResultsPageViewModel, &unk_24FA2C540);
  sub_24F91FD78();
}

unint64_t sub_24E66798C()
{
  result = qword_27F2155D0;
  if (!qword_27F2155D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2155C0, &qword_24F9407C8);
    sub_24E667A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2155D0);
  }

  return result;
}

unint64_t sub_24E667A10()
{
  result = qword_27F2155D8;
  if (!qword_27F2155D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2155E0, &qword_24F9407D0);
    sub_24E667C70();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2155F8, &qword_24F9407E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215600, &qword_24F9407E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215608, &qword_24F9407F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215610, &qword_24F9407F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215618, &qword_24F940800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215620, &qword_24F940808);
    sub_24E602068(&qword_27F215628, &qword_27F215620, &qword_24F940808, MEMORY[0x277CE11A8]);
    sub_24E600AEC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2155D8);
  }

  return result;
}

unint64_t sub_24E667C70()
{
  result = qword_27F2155E8;
  if (!qword_27F2155E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2155F0, &qword_24F9407D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2155F8, &qword_24F9407E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215600, &qword_24F9407E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215608, &qword_24F9407F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215610, &qword_24F9407F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215618, &qword_24F940800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215620, &qword_24F940808);
    sub_24E602068(&qword_27F215628, &qword_27F215620, &qword_24F940808, MEMORY[0x277CE11A8]);
    sub_24E600AEC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E667ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2155E8);
  }

  return result;
}

unint64_t sub_24E667ED0()
{
  result = qword_27F215630;
  if (!qword_27F215630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215630);
  }

  return result;
}

uint64_t sub_24E667F24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E667F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E667FE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24E707BCC(v1, v2);
}

uint64_t sub_24E66804C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6680B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_12Tm()
{
  v1 = v0;
  v2 = type metadata accessor for SearchPageContainerView(0);
  v51 = *(*(v2 - 1) + 80);
  v3 = (v51 + 16) & ~v51;
  v4 = *(*(v2 - 1) + 64);
  v5 = type metadata accessor for SearchPageContainer(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v1 + v3;
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  sub_24E62A5EC(*(v7 + 128), *(v7 + 136));
  if (*(v1 + v3 + 184))
  {
    if (*(v7 + 168))
    {
      __swift_destroy_boxed_opaque_existential_1((v7 + 144));
    }
  }

  else
  {
  }

  v8 = v4 + v6;
  v9 = v2[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F921B58();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v8;
  v12 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24F925218();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v7 + v12, 1, v13))
    {
      (*(v14 + 8))(v7 + v12, v13);
    }
  }

  else
  {
  }

  v15 = v11 & ~v6;
  v16 = v2[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_24F925218();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v7 + v16, 1, v17))
    {
      (*(v18 + 8))(v7 + v16, v17);
    }
  }

  else
  {
  }

  v19 = v1 + v15;

  v20 = type metadata accessor for Player(0);
  v21 = v20[6];
  v22 = sub_24F9289E8();
  v52 = *(v22 - 8);
  v50 = *(v52 + 8);
  v50(v1 + v15 + v21, v22);

  if (*(v1 + v15 + v20[9] + 8) != 1)
  {
  }

  v23 = v19 + v20[13];
  v24 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    v49 = v22;
    v25 = type metadata accessor for CallProviderConversationHandle(0);
    v26 = *(*(v25 - 8) + 48);
    if (!v26(v23, 1, v25))
    {

      v27 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v52 + 48))(v23 + v27, 1, v49))
      {
        v50(v23 + v27, v49);
      }
    }

    v28 = v23 + *(v24 + 20);
    if (!v26(v28, 1, v25))
    {

      v29 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v52 + 48))(v28 + v29, 1, v49))
      {
        v50(v28 + v29, v49);
      }
    }

    v22 = v49;
  }

  if (*(v19 + v20[15] + 8))
  {
  }

  v30 = v19 + v20[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v30, 1, PlayedTogetherInfo))
  {

    v32 = type metadata accessor for Game(0);
    v50(v30 + v32[18], v22);
    v33 = v32[19];
    if (!(*(v52 + 48))(v30 + v33, 1, v22))
    {
      v50(v30 + v33, v22);
    }

    v34 = v22;

    v35 = v32[21];
    v36 = sub_24F920818();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v30 + v35, 1, v36))
    {
      (*(v37 + 8))(v30 + v35, v36);
    }

    v22 = v34;
  }

  v38 = v19 + v20[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v38, 1, ChallengeInfo))
  {

    v40 = type metadata accessor for Game(0);
    v50(v38 + v40[18], v22);
    v41 = v40[19];
    if (!(*(v52 + 48))(v38 + v41, 1, v22))
    {
      v50(v38 + v41, v22);
    }

    v42 = v40[21];
    v43 = sub_24F920818();
    v44 = *(v43 - 8);
    if (!(*(v44 + 48))(v38 + v42, 1, v43))
    {
      (*(v44 + 8))(v38 + v42, v43);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v19 + v5[7]));
  v45 = v5[8];
  v46 = sub_24F928AD8();
  v47 = *(*(v46 - 8) + 8);
  v47(v19 + v45, v46);
  v47(v19 + v5[9], v46);
  v47(v19 + v5[10], v46);

  return swift_deallocObject();
}

void sub_24E668B40(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for SearchPageContainerView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SearchPageContainer(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_24E663E9C(a1, a2, v2 + v6, v9);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for SearchPageContainerView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);

  sub_24E62A5EC(*(v2 + 128), *(v2 + 136));
  if (*(v2 + 184))
  {
    if (*(v2 + 168))
    {
      __swift_destroy_boxed_opaque_existential_1((v2 + 144));
    }
  }

  else
  {
  }

  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F921B58();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_24E668F24(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for SearchPageContainerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_24E6641F4(a1, a2, v6);
}

uint64_t sub_24E668FBC(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for SearchPageContainerView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for SearchPageContainer(0) - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

unint64_t sub_24E669104()
{
  result = qword_27F2156D0;
  if (!qword_27F2156D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2156C8, &qword_24F940940);
    sub_24E667F24(&qword_27F2156D8, type metadata accessor for SearchPageContainerView.SearchSuggestionsView, &unk_24F940BB0);
    sub_24E667F24(&qword_27F2156E0, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2156D0);
  }

  return result;
}

double sub_24E669254(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_24F9406F0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  return result;
}

uint64_t sub_24E66927C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E6692C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24E708804(v1, v2);
}

unint64_t sub_24E669340()
{
  result = qword_27F215738;
  if (!qword_27F215738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215738);
  }

  return result;
}

unint64_t sub_24E669394()
{
  result = qword_27F215740;
  if (!qword_27F215740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215728, &qword_24F940B28);
    sub_24E667F24(&qword_27F215730, type metadata accessor for SearchResultsPageView, &unk_24F984250);
    sub_24E669450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215740);
  }

  return result;
}

unint64_t sub_24E669450()
{
  result = qword_27F215748;
  if (!qword_27F215748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215748);
  }

  return result;
}

unint64_t sub_24E6694A4()
{
  result = qword_27F215750;
  if (!qword_27F215750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215708, &qword_24F940A70);
    sub_24E602068(&qword_27F215758, &qword_27F215760, &unk_24F940B30, &unk_24FA0AFB0);
    sub_24E667F24(&qword_27F2156E0, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215750);
  }

  return result;
}

unint64_t sub_24E6695B8()
{
  result = qword_27F215780;
  if (!qword_27F215780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215780);
  }

  return result;
}

unint64_t sub_24E66960C()
{
  result = qword_27F215788;
  if (!qword_27F215788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215778, &qword_24F940B70);
    sub_24E669698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215788);
  }

  return result;
}

unint64_t sub_24E669698()
{
  result = qword_27F215790;
  if (!qword_27F215790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215790);
  }

  return result;
}

uint64_t sub_24E669700(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SearchSuggestionsResult(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_24F929158();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[11];

  return v18(v19, a2, v17);
}

uint64_t sub_24E6698E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SearchSuggestionsResult(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_24F929158();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

void sub_24E669ABC(uint64_t a1)
{
  type metadata accessor for SearchSuggestionsResult(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SearchPagePresenter(319);
    if (v2 <= 0x3F)
    {
      sub_24F929158();
      if (v3 <= 0x3F)
      {
        sub_24E65E794(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730);
        if (v4 <= 0x3F)
        {
          sub_24E669D10(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24E669CC0(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24E669CC0(319, &qword_27F254DF0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_24E65E794(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0);
                if (v8 <= 0x3F)
                {
                  sub_24E669D10(319, &qword_27F2157B8, MEMORY[0x277D221C8], MEMORY[0x277CE10B8]);
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

void sub_24E669CC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24E669D10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24E669D78()
{
  result = qword_27F2157C0;
  if (!qword_27F2157C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2157C8, &qword_24F940BA8);
    sub_24E669E04();
    sub_24E669F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2157C0);
  }

  return result;
}

unint64_t sub_24E669E04()
{
  result = qword_27F2157D0;
  if (!qword_27F2157D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2155B8, &unk_24F9407B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2155A8, &qword_24F9407A0);
    sub_24E602068(&qword_27F215648, &qword_27F2155A8, &qword_24F9407A0, MEMORY[0x277D7EAD8]);
    swift_getOpaqueTypeConformance2();
    sub_24E669F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2157D0);
  }

  return result;
}

unint64_t sub_24E669F00()
{
  result = qword_27F2157D8;
  if (!qword_27F2157D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2157D8);
  }

  return result;
}

unint64_t sub_24E669F54()
{
  result = qword_27F2157E0;
  if (!qword_27F2157E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2157E0);
  }

  return result;
}

uint64_t sub_24E669FC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

uint64_t sub_24E669FD0()
{
  v2 = *(type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E614970;

  return sub_24E665094(v0 + v3);
}

unint64_t sub_24E66A09C()
{
  result = qword_27F215818;
  if (!qword_27F215818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2157F8, &qword_24F940C10);
    sub_24E66A154();
    sub_24E602068(&qword_27F215868, &qword_27F215808, &unk_24F940C30, MEMORY[0x277CDDEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215818);
  }

  return result;
}

unint64_t sub_24E66A154()
{
  result = qword_27F215820;
  if (!qword_27F215820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215800, &qword_24F940C18);
    sub_24E66A20C();
    sub_24E602068(&qword_27F215858, &qword_27F215860, &qword_24F940C58, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215820);
  }

  return result;
}

unint64_t sub_24E66A20C()
{
  result = qword_27F215828;
  if (!qword_27F215828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215830, &qword_24F940C40);
    sub_24E66A298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215828);
  }

  return result;
}

unint64_t sub_24E66A298()
{
  result = qword_27F215838;
  if (!qword_27F215838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215840, &qword_24F940C48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215848, &qword_24F940C50);
    sub_24F923C68();
    sub_24E602068(&qword_27F215850, &qword_27F215848, &qword_24F940C50, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215838);
  }

  return result;
}

unint64_t sub_24E66A3BC()
{
  result = qword_27F215880;
  if (!qword_27F215880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215878, &qword_24F940C68);
    sub_24E66A448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215880);
  }

  return result;
}

unint64_t sub_24E66A448()
{
  result = qword_27F215888;
  if (!qword_27F215888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215890, &qword_24F940C70);
    sub_24E66A4D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215888);
  }

  return result;
}

unint64_t sub_24E66A4D4()
{
  result = qword_27F215898;
  if (!qword_27F215898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2158A0, &qword_24F940C78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2158A8, &qword_24F940C80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2158B0, &qword_24F940C88);
    sub_24E66A600();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2158D0, &qword_27F2158D8, &qword_24F940C98, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215898);
  }

  return result;
}

unint64_t sub_24E66A600()
{
  result = qword_27F2158B8;
  if (!qword_27F2158B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2158B0, &qword_24F940C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2158C0, &qword_24F940C90);
    sub_24E602068(&qword_27F2158C8, &qword_27F2158C0, &qword_24F940C90, MEMORY[0x277D7EB00]);
    sub_24E62A2EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2158B8);
  }

  return result;
}

double sub_24E66A708@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t objectdestroy_94Tm()
{
  v1 = type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = type metadata accessor for SearchSuggestionsResult(0);
  v4 = *(v3 + 24);
  v5 = sub_24F928AD8();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = *(v3 + 28);
  v7 = sub_24F928818();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  v8 = v1[6];
  v9 = sub_24F929158();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);
  v10 = v2 + v1[7];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
  }

  v11 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F921B58();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  sub_24E62A5EC(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  v13 = v2 + v1[10];
  sub_24E669FC4(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32));
  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24F925218();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v2 + v14, 1, v15))
    {
      (*(v16 + 8))(v2 + v14, v15);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24E66AAC0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_24E66AB58()
{
  v1 = type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for SearchPromptItem(0);
  v5 = *(*(v4 - 1) + 80);
  v6 = v3 + v5;
  v35 = v0;
  v7 = v0 + v2;

  v8 = type metadata accessor for SearchSuggestionsResult(0);
  v9 = *(v8 + 24);
  v10 = sub_24F928AD8();
  v34 = *(*(v10 - 8) + 8);
  v34(v7 + v9, v10);
  v11 = *(v8 + 28);
  v12 = sub_24F928818();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);

  v13 = v1[6];
  v14 = sub_24F929158();
  (*(*(v14 - 8) + 8))(v7 + v13, v14);
  v15 = v7 + v1[7];
  if (*(v15 + 40))
  {
    if (*(v15 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  else
  {
  }

  v16 = v2 + v6;
  v17 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24F921B58();
    (*(*(v18 - 8) + 8))(v7 + v17, v18);
  }

  else
  {
  }

  v19 = v16 & ~v5;
  sub_24E62A5EC(*(v7 + v1[9]), *(v7 + v1[9] + 8));
  v20 = v7 + v1[10];
  sub_24E669FC4(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32));
  v21 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_24F925218();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v7 + v21, 1, v22))
    {
      (*(v23 + 8))(v7 + v21, v22);
    }
  }

  else
  {
  }

  v24 = v35 + v19;
  __swift_destroy_boxed_opaque_existential_1((v35 + v19));
  if (*(v35 + v19 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v24 + 40));
  }

  v25 = v4[6];
  v26 = sub_24F92A6D8();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v24 + v25, 1, v26))
  {
    (*(v27 + 8))(v24 + v25, v26);
  }

  v28 = v4[7];
  v29 = sub_24F929608();
  v30 = *(v29 - 8);
  if (!(*(v30 + 48))(v24 + v28, 1, v29))
  {
    (*(v30 + 8))(v24 + v28, v29);
  }

  v31 = v4[8];
  v32 = sub_24F9289E8();
  (*(*(v32 - 8) + 8))(v24 + v31, v32);

  v34(v24 + v4[12], v10);

  return swift_deallocObject();
}

void sub_24E66B0C4()
{
  v1 = *(type metadata accessor for SearchPageContainerView.SearchSuggestionsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SearchPromptItem(0) - 8);
  sub_24E666844(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_24E66B18C()
{
  v1 = type metadata accessor for SearchPromptItem(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v2 + 8))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  v3 = v1[6];
  v4 = sub_24F92A6D8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(&v2[v3], 1, v4))
  {
    (*(v5 + 8))(&v2[v3], v4);
  }

  v6 = v1[7];
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v2[v6], 1, v7))
  {
    (*(v8 + 8))(&v2[v6], v7);
  }

  v9 = v1[8];
  v10 = sub_24F9289E8();
  (*(*(v10 - 8) + 8))(&v2[v9], v10);

  v11 = v1[12];
  v12 = sub_24F928AD8();
  (*(*(v12 - 8) + 8))(&v2[v11], v12);

  return swift_deallocObject();
}

uint64_t sub_24E66B41C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchPromptItem(0);

  return sub_24E6668B4(a1);
}

unint64_t sub_24E66B48C()
{
  result = qword_27F215908;
  if (!qword_27F215908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215900, &qword_24F940CE8);
    sub_24E66B544();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215908);
  }

  return result;
}

unint64_t sub_24E66B544()
{
  result = qword_27F215910;
  if (!qword_27F215910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215918, &qword_24F940CF0);
    sub_24E66B5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215910);
  }

  return result;
}

unint64_t sub_24E66B5D0()
{
  result = qword_27F215920;
  if (!qword_27F215920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215928, &qword_24F940CF8);
    sub_24E66B688();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215920);
  }

  return result;
}

unint64_t sub_24E66B688()
{
  result = qword_27F215930;
  if (!qword_27F215930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215930);
  }

  return result;
}

uint64_t sub_24E66B6DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E66B798()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2157F8, &qword_24F940C10);
  sub_24E66A09C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E66B7FC()
{
  result = qword_27F215978;
  if (!qword_27F215978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215968, &unk_24F9A8BE0);
    sub_24E66B8B4();
    sub_24E602068(&qword_27F215A80, &qword_27F215A88, &unk_24F9C5180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215978);
  }

  return result;
}

unint64_t sub_24E66B8B4()
{
  result = qword_27F215980;
  if (!qword_27F215980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215988, &qword_24F940D38);
    sub_24E66B96C();
    sub_24E602068(&qword_27F215A70, &qword_27F215A78, &unk_24F940DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215980);
  }

  return result;
}

unint64_t sub_24E66B96C()
{
  result = qword_27F215990;
  if (!qword_27F215990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215998, &qword_24F940D40);
    sub_24E66BA24();
    sub_24E602068(&qword_27F215A60, &qword_27F215A68, &unk_24F9C5170, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215990);
  }

  return result;
}

unint64_t sub_24E66BA24()
{
  result = qword_27F2159A0;
  if (!qword_27F2159A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2159A8, &qword_24F940D48);
    sub_24E66BADC();
    sub_24E602068(&qword_27F215A50, &qword_27F215A58, &unk_24F940DA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2159A0);
  }

  return result;
}

unint64_t sub_24E66BADC()
{
  result = qword_27F2159B0;
  if (!qword_27F2159B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2159B8, &qword_24F940D50);
    sub_24E66BB94();
    sub_24E602068(&qword_27F215A40, &qword_27F215A48, &unk_24F958F00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2159B0);
  }

  return result;
}

unint64_t sub_24E66BB94()
{
  result = qword_27F2159C0;
  if (!qword_27F2159C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2159C8, &qword_24F940D58);
    sub_24E66BC4C();
    sub_24E602068(&qword_27F215A40, &qword_27F215A48, &unk_24F958F00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2159C0);
  }

  return result;
}

unint64_t sub_24E66BC4C()
{
  result = qword_27F2159D0;
  if (!qword_27F2159D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2159D8, &qword_24F940D60);
    sub_24E66BD04();
    sub_24E602068(&qword_27F215A30, &qword_27F215A38, &unk_24F940D90, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2159D0);
  }

  return result;
}

unint64_t sub_24E66BD04()
{
  result = qword_27F2159E0;
  if (!qword_27F2159E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2159E8, &qword_24F940D68);
    sub_24E66BDBC();
    sub_24E602068(&qword_27F215A20, &qword_27F215A28, &qword_24F940D88, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2159E0);
  }

  return result;
}

unint64_t sub_24E66BDBC()
{
  result = qword_27F2159F0;
  if (!qword_27F2159F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2159F8, &qword_24F940D70);
    sub_24E66BE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2159F0);
  }

  return result;
}

unint64_t sub_24E66BE48()
{
  result = qword_27F215A00;
  if (!qword_27F215A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A08, &qword_24F940D78);
    sub_24E602068(&qword_27F215A10, &qword_27F215A18, &qword_24F940D80, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215A00);
  }

  return result;
}

unint64_t sub_24E66BF00()
{
  result = qword_27F215A90;
  if (!qword_27F215A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215970, &qword_24F940D30);
    sub_24E66B7FC();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215A90);
  }

  return result;
}

unint64_t sub_24E66BFB8()
{
  result = qword_27F215AC8;
  if (!qword_27F215AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AB8, &qword_24F940DE0);
    sub_24E602068(&qword_27F215AC0, &qword_27F215AB0, &unk_24F9A8BF0, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215AC8);
  }

  return result;
}

unint64_t sub_24E66C09C()
{
  result = qword_27F215AF0;
  if (!qword_27F215AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AE0, &qword_24F940DF8);
    sub_24E66C128();
    sub_24E66C234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215AF0);
  }

  return result;
}

unint64_t sub_24E66C128()
{
  result = qword_27F215AF8;
  if (!qword_27F215AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215B00, &qword_24F940E08);
    sub_24E66C1E0();
    sub_24E602068(&qword_27F215B10, &qword_27F215B18, &qword_24F940E10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215AF8);
  }

  return result;
}

unint64_t sub_24E66C1E0()
{
  result = qword_27F215B08;
  if (!qword_27F215B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215B08);
  }

  return result;
}

unint64_t sub_24E66C234()
{
  result = qword_27F215B20;
  if (!qword_27F215B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215B28, &qword_24F940E18);
    sub_24E66C2C0();
    sub_24E66C4B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215B20);
  }

  return result;
}

unint64_t sub_24E66C2C0()
{
  result = qword_27F215B30;
  if (!qword_27F215B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215B38, &qword_24F940E20);
    sub_24E66C1E0();
    sub_24E66C34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215B30);
  }

  return result;
}

unint64_t sub_24E66C34C()
{
  result = qword_27F215B40;
  if (!qword_27F215B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215B48, &qword_24F940E28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215B50, &unk_24F940E30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215B58, &qword_24F9FB190);
    sub_24E602068(&qword_27F215B60, &qword_27F215B58, &qword_24F9FB190, &unk_24F960108);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F215B10, &qword_27F215B18, &qword_24F940E10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215B40);
  }

  return result;
}

unint64_t sub_24E66C4B8()
{
  result = qword_27F215B68;
  if (!qword_27F215B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215B70, &qword_24F940E40);
    sub_24E66C544();
    sub_24E66C598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215B68);
  }

  return result;
}

unint64_t sub_24E66C544()
{
  result = qword_27F215B78;
  if (!qword_27F215B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215B78);
  }

  return result;
}

unint64_t sub_24E66C598()
{
  result = qword_27F215B80;
  if (!qword_27F215B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215B88, &qword_24F940E48);
    sub_24E66C624();
    sub_24E66D3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215B80);
  }

  return result;
}

unint64_t sub_24E66C624()
{
  result = qword_27F215B90;
  if (!qword_27F215B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215B98, &qword_24F940E50);
    sub_24E66C6B0();
    sub_24E66CC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215B90);
  }

  return result;
}

unint64_t sub_24E66C6B0()
{
  result = qword_27F215BA0;
  if (!qword_27F215BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215BA8, &qword_24F940E58);
    sub_24E66C73C();
    sub_24E66C9E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215BA0);
  }

  return result;
}

unint64_t sub_24E66C73C()
{
  result = qword_27F215BB0;
  if (!qword_27F215BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215BB8, &qword_24F940E60);
    sub_24E66C7C8();
    sub_24E66C84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215BB0);
  }

  return result;
}

unint64_t sub_24E66C7C8()
{
  result = qword_27F215BC0;
  if (!qword_27F215BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215BC8, &qword_24F940E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215BC0);
  }

  return result;
}

unint64_t sub_24E66C84C()
{
  result = qword_27F215BD0;
  if (!qword_27F215BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215BD8, &qword_24F940E70);
    sub_24E66C8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215BD0);
  }

  return result;
}

unint64_t sub_24E66C8D8()
{
  result = qword_27F215BE0;
  if (!qword_27F215BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215BE8, &qword_24F940E78);
    sub_24E66C990();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215BE0);
  }

  return result;
}

unint64_t sub_24E66C990()
{
  result = qword_27F215BF0;
  if (!qword_27F215BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215BF0);
  }

  return result;
}

unint64_t sub_24E66C9E4()
{
  result = qword_27F215BF8;
  if (!qword_27F215BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215C00, &unk_24F940E80);
    sub_24E66CA70();
    sub_24E66CB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215BF8);
  }

  return result;
}

unint64_t sub_24E66CA70()
{
  result = qword_27F215C08;
  if (!qword_27F215C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215C10, &unk_24F991270);
    type metadata accessor for BrickView(255);
    sub_24E667F24(&qword_27F215C18, type metadata accessor for BrickView, &unk_24F9988E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215C08);
  }

  return result;
}

unint64_t sub_24E66CB54()
{
  result = qword_27F215C20;
  if (!qword_27F215C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215C28, &unk_24F940E90);
    type metadata accessor for BrickView(255);
    sub_24E667F24(&qword_27F215C18, type metadata accessor for BrickView, &unk_24F9988E0);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for ImageLockupView(255);
    sub_24E667F24(&qword_27F215C30, type metadata accessor for ImageLockupView, &unk_24F99A5C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215C20);
  }

  return result;
}

unint64_t sub_24E66CC9C()
{
  result = qword_27F215C38;
  if (!qword_27F215C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215C40, &qword_24F991240);
    sub_24E66CD28();
    sub_24E66CFE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215C38);
  }

  return result;
}

unint64_t sub_24E66CD28()
{
  result = qword_27F215C48;
  if (!qword_27F215C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215C50, &unk_24F940EA0);
    sub_24E66CDB4();
    sub_24E66CEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215C48);
  }

  return result;
}

unint64_t sub_24E66CDB4()
{
  result = qword_27F215C58;
  if (!qword_27F215C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215C60, &unk_24F991230);
    type metadata accessor for ImageLockupView(255);
    sub_24E667F24(&qword_27F215C30, type metadata accessor for ImageLockupView, &unk_24F99A5C8);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for StoryCardView(255);
    sub_24E667F24(&qword_27F215C68, type metadata accessor for StoryCardView, &unk_24FA0DC0C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215C58);
  }

  return result;
}

unint64_t sub_24E66CEFC()
{
  result = qword_27F215C70;
  if (!qword_27F215C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215C78, &unk_24F940EB0);
    type metadata accessor for StoryCardView(255);
    sub_24E667F24(&qword_27F215C68, type metadata accessor for StoryCardView, &unk_24FA0DC0C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215C70);
  }

  return result;
}

unint64_t sub_24E66CFE0()
{
  result = qword_27F215C80;
  if (!qword_27F215C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215C88, &qword_24F9911F0);
    sub_24E66D06C();
    sub_24E66D1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215C80);
  }

  return result;
}

unint64_t sub_24E66D06C()
{
  result = qword_27F215C90;
  if (!qword_27F215C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215C98, &unk_24F940EC0);
    type metadata accessor for LargeBreakoutView(255);
    sub_24E667F24(&qword_27F215CA0, type metadata accessor for LargeBreakoutView, &unk_24F9F4984);
    swift_getOpaqueTypeConformance2();
    sub_24E66D180();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215C90);
  }

  return result;
}

unint64_t sub_24E66D180()
{
  result = qword_27F215CA8;
  if (!qword_27F215CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215CA8);
  }

  return result;
}

unint64_t sub_24E66D1D4()
{
  result = qword_27F215CB0;
  if (!qword_27F215CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215CB8, &unk_24F9911C0);
    sub_24E66D28C();
    swift_getOpaqueTypeConformance2();
    sub_24E66D2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215CB0);
  }

  return result;
}

unint64_t sub_24E66D28C()
{
  result = qword_27F215CC0;
  if (!qword_27F215CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215CC0);
  }

  return result;
}

unint64_t sub_24E66D2E0()
{
  result = qword_27F215CC8;
  if (!qword_27F215CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215CD0, &unk_24F940ED0);
    type metadata accessor for GamesArcadeFooterView(255);
    sub_24E667F24(&qword_27F215CD8, type metadata accessor for GamesArcadeFooterView, &unk_24F9691F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215CC8);
  }

  return result;
}

unint64_t sub_24E66D3CC()
{
  result = qword_27F215CE0;
  if (!qword_27F215CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215CE8, &qword_24F9911A0);
    sub_24E66D458();
    sub_24E66D7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215CE0);
  }

  return result;
}

unint64_t sub_24E66D458()
{
  result = qword_27F215CF0;
  if (!qword_27F215CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215CF8, &unk_24F940EE0);
    sub_24E66D4E4();
    sub_24E66D66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215CF0);
  }

  return result;
}

unint64_t sub_24E66D4E4()
{
  result = qword_27F215D00;
  if (!qword_27F215D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215D08, &unk_24F991190);
    sub_24E66D5C4();
    swift_getOpaqueTypeConformance2();
    sub_24E66D618();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D00);
  }

  return result;
}

unint64_t sub_24E66D5C4()
{
  result = qword_27F215D10;
  if (!qword_27F215D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D10);
  }

  return result;
}

unint64_t sub_24E66D618()
{
  result = qword_27F215D18;
  if (!qword_27F215D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D18);
  }

  return result;
}

unint64_t sub_24E66D66C()
{
  result = qword_27F215D20;
  if (!qword_27F215D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215D28, &unk_24F940EF0);
    sub_24E66D74C();
    swift_getOpaqueTypeConformance2();
    sub_24E66D7A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D20);
  }

  return result;
}

unint64_t sub_24E66D74C()
{
  result = qword_27F215D30;
  if (!qword_27F215D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D30);
  }

  return result;
}

unint64_t sub_24E66D7A0()
{
  result = qword_27F215D38;
  if (!qword_27F215D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D38);
  }

  return result;
}

unint64_t sub_24E66D7F4()
{
  result = qword_27F215D40;
  if (!qword_27F215D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215D48, &qword_24F991140);
    sub_24E66D880();
    sub_24E66DA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D40);
  }

  return result;
}

unint64_t sub_24E66D880()
{
  result = qword_27F215D50;
  if (!qword_27F215D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215D58, &unk_24F940F00);
    sub_24E66D960();
    swift_getOpaqueTypeConformance2();
    sub_24E66D9B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D50);
  }

  return result;
}

unint64_t sub_24E66D960()
{
  result = qword_27F215D60;
  if (!qword_27F215D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D60);
  }

  return result;
}

unint64_t sub_24E66D9B4()
{
  result = qword_27F215D68;
  if (!qword_27F215D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D68);
  }

  return result;
}

unint64_t sub_24E66DA08()
{
  result = qword_27F215D70;
  if (!qword_27F215D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215D78, &unk_24F9912D0);
    sub_24E66DA8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D70);
  }

  return result;
}

unint64_t sub_24E66DA8C()
{
  result = qword_27F215D80;
  if (!qword_27F215D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D80);
  }

  return result;
}

unint64_t sub_24E66DAE0()
{
  result = qword_27F215D88;
  if (!qword_27F215D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AE8, &qword_24F940E00);
    sub_24E66C09C();
    sub_24E669698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215D88);
  }

  return result;
}

uint64_t sub_24E66DB94(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24E66DC6C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24E66DCC8(double a1)
{
  *(v2 + 160) = v1;
  *(v2 + 152) = a1;
  return MEMORY[0x2822009F8](sub_24E66DCEC, 0, 0);
}

uint64_t sub_24E66DCEC()
{
  v1 = v0[19];
  v2 = *(*(v0 + 20) + 16);
  v3 = sub_24E608448(MEMORY[0x277D84F90]);
  sub_24E953AD0(v3);

  v4 = sub_24F92AE28();

  v5 = [v2 enqueueData_];
  *(v0 + 21) = v5;

  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 18;
  *(v0 + 3) = sub_24E66DE9C;
  v6 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DA0, &qword_24F940F58);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_24E66DB94;
  *(v0 + 13) = &block_descriptor_1;
  *(v0 + 14) = v6;
  [v5 resultWithTimeout:v0 + 10 completion:v1];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E66DE9C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_24E66E018;
  }

  else
  {
    v2 = sub_24E66DFAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E66DFAC()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24E66E018(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24E66E0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
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

uint64_t sub_24E66E140(uint64_t a1)
{
  v2 = sub_24E66E2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E66E17C(uint64_t a1)
{
  v2 = sub_24E66E2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameLibraryArcadeChicletMetadata.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DA8, &qword_24F940F60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E66E2F4();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E66E2F4()
{
  result = qword_27F215DB0;
  if (!qword_27F215DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215DB0);
  }

  return result;
}

uint64_t GameLibraryArcadeChicletMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DB8, &qword_24F940F68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E66E2F4();
  sub_24F92D108();
  if (!v2)
  {
    v9 = sub_24F92CC28();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24E66E4D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DA8, &qword_24F940F60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E66E2F4();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E66E634()
{
  result = qword_27F215DC0;
  if (!qword_27F215DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215DC0);
  }

  return result;
}

unint64_t sub_24E66E68C()
{
  result = qword_27F215DC8;
  if (!qword_27F215DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215DC8);
  }

  return result;
}

unint64_t sub_24E66E6E4()
{
  result = qword_27F215DD0;
  if (!qword_27F215DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215DD0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24E66E77C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 98))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_24E66E7D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_24E66E87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DD8, &unk_24F9411B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 64);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24E66E9DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DD8, &unk_24F9411B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 64);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for LargeButtonContentView(uint64_t a1)
{
  result = qword_27F215DE8;
  if (!qword_27F215DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E66EB68(uint64_t a1)
{
  sub_24E66EC98(319);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F215E00, MEMORY[0x277CE0AE0]);
      if (v3 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F215E08, MEMORY[0x277D85048]);
        if (v4 <= 0x3F)
        {
          sub_24E66ED3C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E66EC98(uint64_t a1)
{
  if (!qword_27F215DF8)
  {
    sub_24F924C48();
    v1 = sub_24F923578();
    if (!v2)
    {
      atomic_store(v1, &qword_27F215DF8);
    }
  }
}

void sub_24E66ECF0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24E66ED3C(uint64_t a1)
{
  if (!qword_27F215E10)
  {
    sub_24E66ED98();
    v1 = sub_24F9237E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F215E10);
    }
  }
}

unint64_t sub_24E66ED98()
{
  result = qword_27F215E18;
  if (!qword_27F215E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215E18);
  }

  return result;
}

uint64_t sub_24E66EDEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E6F7A69726F68;
  }

  else
  {
    v3 = 0x6C61636974726576;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v5 = 0x746E6F7A69726F68;
  }

  else
  {
    v5 = 0x6C61636974726576;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006C61;
  }

  else
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_24E66EE98()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E66EF20(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24E66EF94()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24E66F018@<X0>(char *a2@<X8>)
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

void sub_24E66F078(uint64_t *a1@<X8>)
{
  v2 = 0x6C61636974726576;
  if (*v1)
  {
    v2 = 0x746E6F7A69726F68;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24E66F120()
{
  result = qword_27F215E20;
  if (!qword_27F215E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F215E20);
  }

  return result;
}

double sub_24E66F190@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_24E60169C(v1, v21, qword_27F21B590, &unk_24F93BE30);
  sub_24E67290C(v1, &v25);
  v4 = swift_allocObject();
  v5 = v28;
  v6 = v30;
  *(v4 + 80) = v29;
  *(v4 + 96) = v6;
  *(v4 + 112) = v31;
  v7 = v26;
  *(v4 + 16) = v25;
  *(v4 + 32) = v7;
  *(v4 + 48) = v27;
  *(v4 + 64) = v5;
  sub_24E67290C(v2, v18);
  v8 = swift_allocObject();
  v9 = v18[5];
  *(v8 + 80) = v18[4];
  *(v8 + 96) = v9;
  *(v8 + 112) = v19;
  v10 = v18[1];
  *(v8 + 16) = v18[0];
  *(v8 + 32) = v10;
  v11 = v18[3];
  *(v8 + 48) = v18[2];
  *(v8 + 64) = v11;
  sub_24F926F28();
  LOBYTE(v20) = v16;
  *(&v20 + 1) = v17;
  *(&v22 + 1) = sub_24E672948;
  *&v23 = v4;
  *(&v23 + 1) = sub_24E6729B0;
  v24 = v8;
  sub_24F927618();
  sub_24F9242E8();
  v12 = v22;
  v13 = v23;
  v14 = v21[0];
  *(a1 + 32) = v21[1];
  *(a1 + 48) = v12;
  *(a1 + 64) = v13;
  *(a1 + 80) = v24;
  *a1 = v20;
  *(a1 + 16) = v14;
  *(a1 + 136) = v28;
  *(a1 + 152) = v29;
  *(a1 + 168) = v30;
  *(a1 + 184) = v31;
  *(a1 + 88) = v25;
  *(a1 + 104) = v26;
  result = *&v27;
  *(a1 + 120) = v27;
  return result;
}

uint64_t sub_24E66F36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_24F9248C8();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LargeButtonContentView(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v22 = *(a1 + 40);
  v23 = v9;
  v11 = *(a1 + 72);
  v24 = *(a1 + 80);
  v12 = *(a1 + 88);
  v25 = *(a1 + 96);
  sub_24E60169C(a1, v30, qword_27F21B590, &unk_24F93BE30);
  v26 = v30[3] != 0;

  sub_24E601704(v30, qword_27F21B590, &unk_24F93BE30);
  v13 = *(a1 + 97);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
  swift_storeEnumTagMultiPayload();
  v14 = (v7 + v5[5]);
  v15 = v23;
  *v14 = v22;
  v14[1] = v8;
  v16 = (v7 + v5[6]);
  *v16 = v15;
  v16[1] = v10;
  *(v7 + v5[7]) = v11;
  v17 = (v7 + v5[8]);
  *v17 = v24;
  v17[1] = v12;
  *(v7 + v5[9]) = v25;
  *(v7 + v5[10]) = 0;
  v18 = v7 + v5[11];
  *v18 = 0;
  v18[8] = 1;
  v19 = v7 + v5[12];
  *v19 = 0;
  v19[8] = 1;
  v20 = v7 + v5[13];
  *v20 = 0x7FF0000000000000;
  v20[8] = 0;
  *(v7 + v5[14]) = v26;
  *(v7 + v5[15]) = v13;
  v30[0] = 0x4028000000000000;
  sub_24E66ED98();
  sub_24F9237C8();
  sub_24E60169C(a1, v30, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v30, qword_27F21B590, &unk_24F93BE30);
  sub_24F9248B8();
  sub_24E6729C0(&qword_27F215FE0, type metadata accessor for LargeButtonContentView, &unk_24F9412F0);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v27 + 8))(v4, v29);
  return sub_24E672A08(v7);
}

uint64_t sub_24E66F6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0, &qword_24F9415F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  sub_24F923798();
  if (*(a1 + 96))
  {
    v8 = sub_24F92CE08();

    if (v8)
    {
      v9 = sub_24F926C88();
    }

    else
    {
      v9 = sub_24F926D18();
    }
  }

  else
  {

    v9 = sub_24F926C88();
  }

  v10 = v9;
  KeyPath = swift_getKeyPath();
  v15[1] = v10;
  v12 = sub_24F9238D8();
  (*(v5 + 32))(a2, v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD8, &qword_24F941628);
  v14 = (a2 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = v12;
  return result;
}

uint64_t sub_24E66F888@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215E28, &qword_24F941340);
  MEMORY[0x28223BE20](v2);
  v4 = &v63 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215E30, &qword_24F941348);
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215E38, &qword_24F941350);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215E40, &qword_24F941358);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  v14 = type metadata accessor for LargeButtonContentView(0);
  if (*(v1 + *(v14 + 40)))
  {
    *v4 = sub_24F9249A8();
    *(v4 + 1) = 0x4018000000000000;
    v4[16] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215E48, &qword_24F941360);
    sub_24E6703F0(v1, &v4[*(v15 + 44)]);
    sub_24E60169C(v4, v7, &qword_27F215E28, &qword_24F941340);
    swift_storeEnumTagMultiPayload();
    sub_24E672338();
    sub_24E602068(&qword_27F215EA8, &qword_27F215E28, &qword_24F941340, MEMORY[0x277CE1138]);
    sub_24F924E28();
    v16 = v4;
    v17 = &qword_27F215E28;
    v18 = &qword_24F941340;
  }

  else
  {
    v19 = v14;
    v68 = v13;
    v69 = v5;
    v70 = v11;
    v71 = v7;
    v72 = v2;
    *v10 = sub_24F924C88();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB0, &qword_24F941390);
    sub_24E66FE4C(v1, &v10[*(v20 + 44)]);
    v21 = sub_24F925868();
    sub_24F923318();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215E88, &qword_24F941378) + 36)];
    *v30 = v21;
    *(v30 + 1) = v23;
    *(v30 + 2) = v25;
    *(v30 + 3) = v27;
    *(v30 + 4) = v29;
    v30[40] = 0;
    v31 = sub_24F9257F8();
    sub_24F923318();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215E78, &qword_24F941370) + 36)];
    *v40 = v31;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215E68, &qword_24F941368) + 36)] = 0;
    v66 = *(v1 + v19[9]);
    v41 = *(v1 + v19[14]);
    v42 = v1 + v19[11];
    v43 = *v42;
    v44 = *(v42 + 8);
    v45 = v1 + v19[12];
    v46 = *v45;
    v47 = *(v45 + 8);
    v48 = v1 + v19[13];
    v65 = *v48;
    LODWORD(v48) = *(v48 + 8);
    v63 = v47;
    v64 = v48;
    v67 = v8;
    v49 = &v10[*(v8 + 36)];
    *v49 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
    swift_storeEnumTagMultiPayload();
    v50 = type metadata accessor for LargeButtonForegroundStyleViewModifier(0);
    v51 = v49 + v50[5];
    *v51 = swift_getKeyPath();
    v51[8] = 0;
    *(v49 + v50[6]) = v66;
    *(v49 + v50[7]) = v41;
    v52 = v49 + v50[8];
    *v52 = v43;
    v52[8] = v44;
    v53 = v49 + v50[9];
    *v53 = v46;
    v53[8] = v63;
    v54 = v49 + v50[10];
    *v54 = v65;
    v54[8] = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_24F93DE60;
    v56 = (v1 + v19[5]);
    v57 = v56[1];
    if (v57)
    {
      v58 = *v56;
      v59 = v57;
    }

    else
    {
      v58 = 0;
      v59 = 0xE000000000000000;
    }

    v60 = v71;
    *(v55 + 32) = v58;
    *(v55 + 40) = v59;
    sub_24E6723F4();
    sub_24E600AEC();

    v61 = v68;
    sub_24F9267A8();

    sub_24E601704(v10, &qword_27F215E38, &qword_24F941350);
    sub_24E60169C(v61, v60, &qword_27F215E40, &qword_24F941358);
    swift_storeEnumTagMultiPayload();
    sub_24E672338();
    sub_24E602068(&qword_27F215EA8, &qword_27F215E28, &qword_24F941340, MEMORY[0x277CE1138]);
    sub_24F924E28();
    v16 = v61;
    v17 = &qword_27F215E40;
    v18 = &qword_24F941358;
  }

  return sub_24E601704(v16, v17, v18);
}

uint64_t sub_24E66FE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EC0, &qword_24F941408);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v23 - v9);
  *v10 = sub_24F927618();
  v10[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EC8, &qword_24F941410);
  sub_24E670A34(a1, v10 + *(v12 + 44));
  KeyPath = swift_getKeyPath();
  v14 = (v10 + *(v5 + 44));
  *v14 = KeyPath;
  v14[1] = 0x3FE6666666666666;
  v15 = (a1 + *(type metadata accessor for LargeButtonContentView(0) + 32));
  v16 = v15[1];
  if (v16)
  {
    sub_24E67006C(*v15, v16, &v23);
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v20 = v26;
    sub_24E5FD138(v23, v24, v25);
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  sub_24E60169C(v10, v7, &qword_27F215EC0, &qword_24F941408);
  sub_24E60169C(v7, a2, &qword_27F215EC0, &qword_24F941408);
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215ED0, &qword_24F941448) + 48));
  sub_24E65D2B4(v17, v18, v19, v20);
  sub_24E65D2F8(v17, v18, v19, v20);
  *v21 = v17;
  v21[1] = v18;
  v21[2] = v19;
  v21[3] = v20;
  sub_24E601704(v10, &qword_27F215EC0, &qword_24F941408);
  sub_24E65D2F8(v17, v18, v19, v20);
  return sub_24E601704(v7, &qword_27F215EC0, &qword_24F941408);
}

uint64_t sub_24E67006C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v43);
  v42 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - v8;
  v45 = a1;
  v46 = a2;
  sub_24E600AEC();

  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  sub_24E671F88();
  v15 = sub_24F925908();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_24F925968();
  sub_24E601704(v9, &qword_27F214698, &unk_24F95F810);
  v16 = sub_24F925C98();
  v18 = v17;
  v20 = v19;

  sub_24E600B40(v10, v12, v14 & 1);

  sub_24F925948();
  v21 = sub_24F925B78();
  v23 = v22;
  v25 = v24;
  sub_24E600B40(v16, v18, v20 & 1);

  v26 = *(v3 + *(type metadata accessor for LargeButtonContentView(0) + 36));
  v27 = sub_24F9251C8();
  v28 = v27;
  if (v26 == 1)
  {
    v29 = *(v43 + 36);
    v30 = *MEMORY[0x277CE13B8];
    v31 = sub_24F927748();
    v32 = v42;
    (*(*(v31 - 8) + 104))(&v42[v29], v30, v31);
    *v32 = v28;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  }

  else
  {
    LODWORD(v45) = v27;
  }

  v45 = sub_24F9238D8();
  v33 = sub_24F925C58();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_24E600B40(v21, v23, v25 & 1);

  v41 = v44;
  *v44 = v33;
  v41[1] = v35;
  *(v41 + 16) = v37 & 1;
  v41[3] = v39;
  return result;
}

uint64_t sub_24E6703F0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v74 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215F98, &qword_24F941580);
  MEMORY[0x28223BE20](v69);
  v75 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v63 - v5);
  v7 = type metadata accessor for LargeButtonContentView(0);
  v8 = (a1 + v7[8]);
  v9 = v8[1];
  if (v9)
  {
    sub_24E67006C(*v8, v9, &v87);
    v73 = v87;
    v72 = v88;
    v10 = v89;
    v71 = v90;
    KeyPath = swift_getKeyPath();
    sub_24F927638();
    sub_24F9238C8();
    LOBYTE(v87) = v10;
    v70 = v99;
    v68 = v100;
    v67 = v101;
    v66 = v102;
    v79 = v103;
    v78 = v104;
    v76 = 2;
    v77 = v10;
  }

  else
  {
    v73 = 0;
    v72 = 0;
    v71 = 0;
    KeyPath = 0;
    v70 = 0;
    v68 = 0;
    v67 = 0;
    v66 = 0;
    v79 = 0;
    v78 = 0;
    v76 = 0;
    v77 = 0;
  }

  *v6 = sub_24F927618();
  v6[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EC8, &qword_24F941410);
  sub_24E670A34(a1, v6 + *(v12 + 44));
  v13 = sub_24F925868();
  sub_24F923318();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FA0, &qword_24F941588) + 36);
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = sub_24F9257F8();
  sub_24F923318();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FA8, &qword_24F941590) + 36);
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FB0, &qword_24F941598) + 36)) = 0;
  v65 = *(a1 + v7[9]);
  v33 = *(a1 + v7[14]);
  v34 = v7[12];
  v35 = (a1 + v7[11]);
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = *(a1 + v34);
  v39 = *(a1 + v34 + 8);
  v40 = (a1 + v7[13]);
  v41 = *v40;
  v64 = *(v40 + 8);
  v42 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FB8, &qword_24F9415A0) + 36));
  *v42 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215EB8, &qword_24F9471F0);
  swift_storeEnumTagMultiPayload();
  v43 = type metadata accessor for LargeButtonForegroundStyleViewModifier(0);
  v44 = v42 + v43[5];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  *(v42 + v43[6]) = v65;
  *(v42 + v43[7]) = v33;
  v45 = v42 + v43[8];
  *v45 = v36;
  v45[8] = v37;
  v46 = v42 + v43[9];
  *v46 = v38;
  v46[8] = v39;
  v47 = v42 + v43[10];
  *v47 = v41;
  v47[8] = v64;
  v48 = *(v69 + 36);
  v63 = v6;
  *(v6 + v48) = 257;
  v49 = v75;
  sub_24E60169C(v6, v75, &qword_27F215F98, &qword_24F941580);
  v50 = v73;
  *&v81 = v73;
  v51 = v72;
  *(&v81 + 1) = v72;
  *&v82 = v77;
  v52 = v71;
  *(&v82 + 1) = v71;
  *&v83 = KeyPath;
  *(&v83 + 1) = v76;
  v53 = v70;
  *&v84 = v70;
  v54 = v68;
  *(&v84 + 1) = v68;
  v55 = v67;
  *&v85 = v67;
  v56 = v66;
  *(&v85 + 1) = v66;
  *&v86 = v79;
  *(&v86 + 1) = v78;
  v57 = v84;
  v58 = v74;
  v74[2] = v83;
  v58[3] = v57;
  v59 = v86;
  v58[4] = v85;
  v58[5] = v59;
  v60 = v82;
  *v58 = v81;
  v58[1] = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FC0, &qword_24F9415A8);
  sub_24E60169C(v49, v58 + *(v61 + 48), &qword_27F215F98, &qword_24F941580);
  sub_24E60169C(&v81, &v87, &qword_27F215FC8, &qword_24F9415B0);
  sub_24E601704(v63, &qword_27F215F98, &qword_24F941580);
  sub_24E601704(v49, &qword_27F215F98, &qword_24F941580);
  v87 = v50;
  v88 = v51;
  v89 = v77;
  v90 = v52;
  v91 = KeyPath;
  v92 = v76;
  v93 = v53;
  v94 = v54;
  v95 = v55;
  v96 = v56;
  v97 = v79;
  v98 = v78;
  return sub_24E601704(&v87, &qword_27F215FC8, &qword_24F9415B0);
}