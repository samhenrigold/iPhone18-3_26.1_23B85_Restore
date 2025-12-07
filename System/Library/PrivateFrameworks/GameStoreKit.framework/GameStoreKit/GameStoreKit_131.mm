uint64_t sub_24F353834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_24F35387C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F353924()
{
  result = qword_27F23FF38;
  if (!qword_27F23FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FF38);
  }

  return result;
}

unint64_t sub_24F35397C()
{
  result = qword_27F23FF40;
  if (!qword_27F23FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FF40);
  }

  return result;
}

unint64_t sub_24F3539D4()
{
  result = qword_27F23FF48;
  if (!qword_27F23FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FF48);
  }

  return result;
}

unint64_t sub_24F353A2C()
{
  result = qword_27F23FF50;
  if (!qword_27F23FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FF50);
  }

  return result;
}

unint64_t sub_24F353A84()
{
  result = qword_27F23FF58;
  if (!qword_27F23FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FF58);
  }

  return result;
}

unint64_t sub_24F353ADC()
{
  result = qword_27F23FF60;
  if (!qword_27F23FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FF60);
  }

  return result;
}

unint64_t sub_24F353B34()
{
  result = qword_27F23FF68;
  if (!qword_27F23FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FF68);
  }

  return result;
}

unint64_t sub_24F353B8C()
{
  result = qword_27F23FF70;
  if (!qword_27F23FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FF70);
  }

  return result;
}

unint64_t sub_24F353BE4()
{
  result = qword_27F23FF78;
  if (!qword_27F23FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FF78);
  }

  return result;
}

unint64_t sub_24F353C3C()
{
  result = qword_27F23FF80;
  if (!qword_27F23FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FF80);
  }

  return result;
}

unint64_t sub_24F353C94()
{
  result = qword_27F23FF88;
  if (!qword_27F23FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FF88);
  }

  return result;
}

unint64_t sub_24F353CEC()
{
  result = qword_27F23FF90;
  if (!qword_27F23FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23FF90);
  }

  return result;
}

uint64_t sub_24F353D40(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_24F353DEC;

  return sub_24EAD67DC(a1);
}

uint64_t sub_24F353DEC(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_24F353EEC, 0, 0);
}

void sub_24F353EEC()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v22 = v0[4];
    v4 = v1 + 88;
    v5 = MEMORY[0x277D84F90];
    v19 = v4;
    while (1)
    {
      v6 = v4 + 72 * v3;
      while (1)
      {
        if (v3 >= v2)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_22;
        }

        if (*(v22 + 16))
        {
          break;
        }

LABEL_4:
        ++v3;
        v6 += 72;
        if (v7 == v2)
        {
          goto LABEL_18;
        }
      }

      v23 = v3 + 1;
      v9 = *(v6 - 56);
      v8 = *(v6 - 48);

      swift_bridgeObjectRetain_n();

      v10 = sub_24E76D644(v9, v8);
      LOBYTE(v9) = v11;

      if ((v9 & 1) == 0)
      {
        break;
      }

      v12 = (*(v22 + 56) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E615CF4(0, *(v5 + 2) + 1, 1, v5);
      }

      v16 = *(v5 + 2);
      v15 = *(v5 + 3);
      if (v16 >= v15 >> 1)
      {
        v5 = sub_24E615CF4((v15 > 1), v16 + 1, 1, v5);
      }

      *(v5 + 2) = v16 + 1;
      v17 = &v5[16 * v16];
      *(v17 + 4) = v14;
      *(v17 + 5) = v13;
      v2 = v20;
      v0 = v21;
      v3 = v23;
      v4 = v19;
      if (v23 == v20)
      {
        goto LABEL_18;
      }
    }

    v2 = v20;
    v0 = v21;
    v7 = v3 + 1;
    goto LABEL_4;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_18:

  v18 = v0[1];

  v18(v5);
}

uint64_t sub_24F354150(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F920A88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FFB0, &qword_24F9E96F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_24E60169C(a1, &v21 - v12, &qword_27F2198F8, &unk_24F94CFA0);
  sub_24E60169C(a2, &v13[v15], &qword_27F2198F8, &unk_24F94CFA0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24E60169C(v13, v10, &qword_27F2198F8, &unk_24F94CFA0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24F35295C(&qword_27F23BE90, MEMORY[0x277D0D0F8], MEMORY[0x277D0D108]);
      v18 = sub_24F92AFF8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_24E601704(v13, &qword_27F2198F8, &unk_24F94CFA0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_24E601704(v13, &qword_27F23FFB0, &qword_24F9E96F0);
    v17 = 1;
    return v17 & 1;
  }

  sub_24E601704(v13, &qword_27F2198F8, &unk_24F94CFA0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_24F354470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameActivityDraftGameInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FFA8, &unk_24FA18950);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_24E60169C(a1, &v20 - v12, &qword_27F212B28, &qword_24F939910);
  sub_24E60169C(a2, &v13[v15], &qword_27F212B28, &qword_24F939910);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24E60169C(v13, v10, &qword_27F212B28, &qword_24F939910);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_24F355A6C(&v13[v15], v7, type metadata accessor for GameActivityDraftGameInfo);
      v18 = _s12GameStoreKit0a13ActivityDraftA4InfoV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_24F3529A4(v7, type metadata accessor for GameActivityDraftGameInfo);
      sub_24F3529A4(v10, type metadata accessor for GameActivityDraftGameInfo);
      sub_24E601704(v13, &qword_27F212B28, &qword_24F939910);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_24F3529A4(v10, type metadata accessor for GameActivityDraftGameInfo);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_24E601704(v13, &qword_27F23FFA8, &unk_24FA18950);
    v17 = 1;
    return v17 & 1;
  }

  sub_24E601704(v13, &qword_27F212B28, &qword_24F939910);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_24F354754(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F920418();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FF98, &qword_24F9E96B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_24E60169C(a1, &v21 - v12, &qword_27F2142B8, &unk_24F954820);
  sub_24E60169C(a2, &v13[v15], &qword_27F2142B8, &unk_24F954820);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24E60169C(v13, v10, &qword_27F2142B8, &unk_24F954820);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24F35295C(&qword_27F23FFA0, MEMORY[0x277D0CB18], MEMORY[0x277D0CB28]);
      v18 = sub_24F92AFF8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_24E601704(v13, &qword_27F2142B8, &unk_24F954820);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_24E601704(v13, &qword_27F23FF98, &qword_24F9E96B8);
    v17 = 1;
    return v17 & 1;
  }

  sub_24E601704(v13, &qword_27F2142B8, &unk_24F954820);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_24F354A74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEC00000044496E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5265726975716572 && a2 == 0xEE00687365726665 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F666E49656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C74706D65747461 && a2 == 0xEC00000074696D69)
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

uint64_t sub_24F354C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEC00000044496E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F437974726170 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA64170 == a2)
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

BOOL sub_24F354DF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v41 - v3;
  v4 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Leaderboard(0);
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00, &qword_24F9A23B0);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v10 - 8);
  v48 = &v41 - v11;
  v12 = type metadata accessor for ChallengeDefinitionDetail(0);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - v18;
  swift_getKeyPath();
  v53 = v0;
  sub_24F35295C(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v20 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  sub_24E60169C(v1 + v20, v19, &qword_27F212B28, &qword_24F939910);
  v21 = type metadata accessor for GameActivityDraftGameInfo(0);
  LODWORD(v20) = (*(*(v21 - 8) + 48))(v19, 1, v21);
  sub_24E601704(v19, &qword_27F212B28, &qword_24F939910);
  if (v20 != 1)
  {
    swift_getKeyPath();
    v52 = v1;
    sub_24F91FD88();

    v23 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
    swift_beginAccess();
    sub_24E60169C(v1 + v23, v16, &qword_27F212890, &qword_24F939670);
    v22 = 1;
    v24 = (*(v49 + 48))(v16, 1, v6);
    sub_24E601704(v16, &qword_27F212890, &qword_24F939670);
    if (v24 != 1)
    {
      return v22;
    }

    swift_getKeyPath();
    v51 = v1;
    sub_24F91FD88();

    v25 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
    swift_beginAccess();
    v26 = v1 + v25;
    v27 = v48;
    sub_24E60169C(v26, v48, &qword_27F212A08, &qword_24F9397D0);
    v28 = v47;
    if ((*(v46 + 48))(v27, 1, v47) == 1)
    {
      sub_24E601704(v27, &qword_27F212A08, &qword_24F9397D0);
    }

    else
    {
      v29 = v45;
      sub_24F355A6C(v27, v45, type metadata accessor for ChallengeDefinitionDetail);
      v30 = v44;
      sub_24E60169C(v29 + *(v28 + 52), v44, &qword_27F212A00, &qword_24F9A23B0);
      v31 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31) != 1)
      {
        v32 = v42;
        sub_24F355A6C(v30, v42, type metadata accessor for Leaderboard);
        v33 = v43;
        sub_24F352B70(v32 + *(v6 + 24), v43, type metadata accessor for Leaderboard.LeaderboardType);
        sub_24F3529A4(v32, type metadata accessor for Leaderboard);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
        if ((*(*(v34 - 8) + 48))(v33, 1, v34) != 1)
        {
          v39 = sub_24F91F648();
          (*(*(v39 - 8) + 8))(v43, v39);
          sub_24F3529A4(v29, type metadata accessor for ChallengeDefinitionDetail);
          return 1;
        }
      }

      swift_getKeyPath();
      v50 = v1;
      sub_24F91FD88();

      if (*(v1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule))
      {
        swift_getKeyPath();
        v50 = v1;
        sub_24F91FD88();

        sub_24F3529A4(v29, type metadata accessor for ChallengeDefinitionDetail);
        v35 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
        swift_beginAccess();
        v36 = v1 + v35;
        v37 = v41;
        sub_24E60169C(v36, v41, &qword_27F2198F8, &unk_24F94CFA0);
        v38 = sub_24F920A88();
        v22 = (*(*(v38 - 8) + 48))(v37, 1, v38) != 1;
        sub_24E601704(v37, &qword_27F2198F8, &unk_24F94CFA0);
        return v22;
      }

      sub_24F3529A4(v29, type metadata accessor for ChallengeDefinitionDetail);
    }
  }

  return 0;
}

uint64_t sub_24F355658(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6564616372417369 && a2 == 0xE800000000000000)
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

uint64_t sub_24F355804(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA73FB0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA73FD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA73FF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA74010 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F355A6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F355B34(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_24F355C2C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule) = *(v0 + 24);
}

uint64_t sub_24F355C70()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
  *v2 = v0[3];
  v2[1] = v1;
}

Swift::Void __swiftcall ArtworkView.setImage(image:animated:)(UIImage_optional image, Swift::Bool animated)
{
  is_nil = image.is_nil;
  isa = image.value.super.isa;
  v5 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_setImageDisablesAnimations;
  swift_beginAccess();
  if (v2[v5] == 1)
  {
    v6 = [*&v2[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView] layer];
    [v6 removeAllAnimations];
  }

  if (isa)
  {
    v7 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_artworkTintColor;
    swift_beginAccess();
    v8 = *&v2[v7];
    v9 = isa;
    v10 = v9;
    if (v8)
    {
      v11 = [(objc_class *)v9 imageWithRenderingMode:2];
    }

    else
    {
      v11 = v9;
    }

    v13 = v11;
    v14 = *&v2[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView];
    if (is_nil)
    {
      [v14 setAlpha_];
      [v14 setImage_];
      [v14 setHidden_];
      sub_24F3567DC(0);
      v15 = [objc_allocWithZone(MEMORY[0x277D753D0]) init];
      v16 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v15 timingParameters:0.15];

      v17 = swift_allocObject();
      *(v17 + 16) = v2;
      v27 = sub_24F35A2DC;
      v28 = v17;
      v23 = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_24EAF8248;
      v26 = &block_descriptor_144;
      v18 = _Block_copy(&v23);
      v19 = v2;

      [v16 addAnimations_];
      _Block_release(v18);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v27 = sub_24F35A2FC;
      v28 = v20;
      v23 = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_24F35A320;
      v26 = &block_descriptor_6_7;
      v21 = _Block_copy(&v23);
      v22 = v19;

      [v16 addCompletion_];
      _Block_release(v21);
      [v16 startAnimation];
    }

    else
    {
      [v14 setImage_];
      sub_24F3567DC(0);
      [v14 setHidden_];
      sub_24F357100();
      sub_24F359A04();
    }
  }

  else
  {
    v12 = *&v2[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView];
    [v12 setImage_];
    [v12 setHidden_];
    sub_24F357100();
    sub_24F359A04();
  }
}

void ArtworkView.imageSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageSize];
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v6 != a1 || v7 != a2)
  {
    v2[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
    [v2 setNeedsLayout];
  }
}

uint64_t ArtworkView.style.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v4;
  return sub_24F359430(&v6);
}

void ArtworkView.backgroundColor.setter(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor);
    *(v1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor) = a1;
    sub_24E77ACC8();
    v4 = a1;
    if ((sub_24F92C408() & 1) == 0)
    {
      sub_24F357100();
    }
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
    v6 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor) = v5;
    sub_24E77ACC8();
    v4 = v5;
    if ((sub_24F92C408() & 1) == 0)
    {
      sub_24F357100();
    }
  }
}

id ArtworkView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void ArtworkView.image.setter(UIImage_optional a1, Swift::Bool a2)
{
  isa = a1.value.super.isa;
  a1.is_nil = 0;
  ArtworkView.setImage(image:animated:)(a1, a2);
}

id sub_24F3562D8()
{
  if (qword_27F210470 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22BEF0;
  qword_27F23FFB8 = qword_27F22BEF0;

  return v1;
}

id static ArtworkView.iconBorderColor.getter()
{
  if (qword_27F211130 != -1)
  {
    swift_once();
  }

  v1 = qword_27F23FFB8;

  return v1;
}

char *ArtworkView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadowView] = 0;
  v10 = &v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadow];
  *v10 = 0u;
  v10[1] = 0u;
  v11 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor;
  if (qword_27F210428 != -1)
  {
    swift_once();
  }

  v12 = qword_27F22BEA8;
  *&v4[v11] = qword_27F22BEA8;
  *&v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_placeholderColor] = v12;
  v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_updatingFrameForSymbolSizeChange] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_frameUpdatesImageSize] = 1;
  v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_clipImageToBounds] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shouldSymbolImageSelfSize] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_setImageDisablesAnimations] = 1;
  v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isStyleInvalid] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style] = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_artworkTintColor] = 0;
  v13 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v14 = v12;
  v15 = [v13 initWithFrame_];
  *&v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView] = v15;
  v16 = &v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageSize];
  *v16 = a3;
  v16[1] = a4;
  v26.receiver = v4;
  v26.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = objc_allocWithZone(type metadata accessor for ShadowView());
  v19 = v17;
  v20 = [v18 initWithFrame_];
  v21 = *&v19[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor];
  *&v19[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor] = v14;

  [v20 setBackgroundColor_];
  v22 = v19;
  [v22 addSubview_];
  v23 = *&v22[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadowView];
  *&v22[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadowView] = v20;
  v24 = v20;

  [v22 setContentMode_];
  [v22 setClipsToBounds_];

  [v22 setEdgesInsettingLayoutMarginsFromSafeArea_];
  [v22 addSubview_];
  [v22 setAccessibilityIgnoresInvertColors_];

  return v22;
}

Swift::Void __swiftcall ArtworkView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!isa)
  {

    goto LABEL_9;
  }

  v5 = [(objc_class *)isa preferredContentSizeCategory];
  v6 = sub_24F92B0D8();
  v8 = v7;
  if (v6 == sub_24F92B0D8() && v8 == v9)
  {

    return;
  }

  v11 = sub_24F92CE08();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    sub_24F3567DC(0);
  }
}

void sub_24F3567DC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shouldSymbolImageSelfSize;
  swift_beginAccess();
  if (v1[v4] == 1)
  {
    v5 = *&v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView];
    v6 = [v5 image];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 isSymbolImage];

      if (v8)
      {
        v9 = [v5 image];
        if (v9)
        {
          v10 = v9;
          if (a1)
          {
            v11 = a1;
          }

          else
          {
            v12 = [v5 preferredSymbolConfiguration];
            if (!v12)
            {
              v11 = v10;
LABEL_15:

              return;
            }

            v11 = v12;
          }

          v13 = a1;
          v14 = [v10 imageWithConfiguration_];
          [v14 size];
          v16 = v15;
          v18 = v17;

          v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_updatingFrameForSymbolSizeChange] = 1;
          v37.receiver = v1;
          v37.super_class = ObjectType;
          objc_msgSendSuper2(&v37, sel_frame);
          v20 = v19;
          v22 = v21;
          v36.receiver = v1;
          v36.super_class = ObjectType;
          objc_msgSendSuper2(&v36, sel_frame);
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v35.receiver = v1;
          v35.super_class = ObjectType;
          objc_msgSendSuper2(&v35, sel_frame);
          if (v32 != v16 || v31 != v18)
          {
            v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
          }

          v34.receiver = v1;
          v34.super_class = ObjectType;
          objc_msgSendSuper2(&v34, sel_setFrame_, v20, v22, v16, v18);
          sub_24F358818(v24, v26, v28, v30);

          goto LABEL_15;
        }
      }
    }
  }
}

_BYTE *sub_24F356A70(char a1)
{
  v3 = [objc_allocWithZone(v1) initWithFrame_];
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  v5 = v3[v4];
  v3[v4] = a1;
  v7 = v5;
  sub_24F359430(&v7);
  return v3;
}

_BYTE *static ArtworkView.iapIconArtworkView.getter()
{
  v1 = [objc_allocWithZone(v0) initWithFrame_];
  v2 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  v3 = v1[v2];
  v1[v2] = 6;
  v7[0] = v3;
  sub_24F359430(v7);
  v4 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners;
  swift_beginAccess();
  *&v1[v4] = 2;
  v5 = [v1 layer];
  [v5 setMaskedCorners_];

  sub_24E9F322C();
  sub_24F3575A8();
  return v1;
}

void ArtworkView.roundedCorners.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners;
  swift_beginAccess();
  *&v1[v3] = a1;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) != 0)
    {
      v4 = 2;
      if ((a1 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v4 = 0;
    if ((a1 & 8) != 0)
    {
LABEL_12:
      v4 |= 8uLL;
      goto LABEL_13;
    }

LABEL_7:
    if ((a1 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((a1 & 2) == 0)
  {
    v4 = 1;
    if ((a1 & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = 3;
  if ((a1 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((a1 & 4) != 0 && (v4 & 4) == 0)
  {
LABEL_15:
    v4 |= 4uLL;
  }

LABEL_16:
  v5 = [v1 layer];
  [v5 setMaskedCorners_];

  sub_24E9F322C();
  sub_24F3575A8();
}

void ArtworkView.setCorner(radius:style:)(char *a1, double a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadowView);
  if (v6)
  {
    *&v6[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerRadius] = a2;
    v6[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerStyle] = v5;
    v7 = v6;
    CornerStyle.apply(withRadius:to:)(v7, a2);
    v8 = &v7[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds];
    *v8 = 0u;
    *(v8 + 1) = 0u;
    v8[32] = 1;
    v9 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow;
    swift_beginAccess();
    if (*&v7[v9])
    {
      [v7 setNeedsLayout];
    }
  }

  v10 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius;
  swift_beginAccess();
  *(v3 + v10) = a2;
  v11 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerStyle;
  swift_beginAccess();
  *(v3 + v11) = v5;
  v12 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  v13 = 0.0;
  if (((*(v3 + v12) - 2) & 0xFD) != 0)
  {
    v13 = a2;
  }

  [*(v3 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) setClipsToBounds_];
  sub_24E9F322C();
}

char *_s12GameStoreKit11ArtworkViewC04carddE0ACvgZ_0()
{
  v1 = [objc_allocWithZone(v0) initWithFrame_];
  v10[0] = 1;
  ArtworkView.setCorner(radius:style:)(v10, 20.0);
  v2 = qword_27F211130;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_27F23FFB8;
  v5 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
  swift_beginAccess();
  v6 = *&v3[v5];
  *&v3[v5] = v4;
  v7 = v4;

  sub_24E9F322C();
  v8 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth;
  swift_beginAccess();
  *&v3[v8] = 0x3FF0000000000000;
  sub_24E9F322C();

  return v3;
}

id ArtworkView.shadow.getter@<X0>(__int128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadow);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return v4;
}

id sub_24F356FC4@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadow);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;

  return v4;
}

void sub_24F35702C(__int128 *a1, void *a2)
{
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadow;
  swift_beginAccess();
  v4 = *v3;
  v5 = *a1;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v6;
  v7 = v5;

  sub_24F357100();
}

void ArtworkView.shadow.setter(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadow;
  swift_beginAccess();
  v4 = *v3;
  v5 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v5;

  sub_24F357100();
}

void sub_24F357100()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadow];
  swift_beginAccess();
  if (*v2 || (v3 = *&v0[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView], ([*&v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView] isHidden] & 1) != 0) || (v4 = objc_msgSend(v3, sel_image)) == 0)
  {
    v6 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadowView;
    v7 = *&v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadowView];
    if (v7)
    {
      v8 = *&v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadowView];
    }

    else
    {
      type metadata accessor for ShadowView();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v10 = *&v1[v6];
      v11 = v9;
      if (v10)
      {
        [v10 removeFromSuperview];
        v10 = *&v1[v6];
      }

      *&v1[v6] = v9;
      v8 = v9;

      [v1 insertSubview:v8 belowSubview:*&v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView]];
      v7 = 0;
    }

    v12 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius;
    swift_beginAccess();
    v13 = *&v1[v12];
    v14 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerStyle;
    swift_beginAccess();
    v15 = v1[v14];
    *&v8[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerRadius] = v13;
    v8[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerStyle] = v15;
    v16 = v8;
    v17 = v7;
    v18 = v16;
    v19 = v17;
    CornerStyle.apply(withRadius:to:)(v18, v13);
    v20 = &v18[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds];
    *v20 = 0u;
    *(v20 + 1) = 0u;
    v20[32] = 1;
    v21 = &v18[OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow];
    swift_beginAccess();
    if (*v21)
    {
      [v18 setNeedsLayout];
    }

    v22 = [v18 layer];
    v23 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners;
    swift_beginAccess();
    v24 = *&v1[v23];
    if (v24)
    {
      if ((v24 & 2) != 0)
      {
        v25 = 3;
        if ((v24 & 8) == 0)
        {
LABEL_25:
          if ((v24 & 4) == 0 || (v25 & 4) != 0)
          {
            goto LABEL_28;
          }

LABEL_27:
          v25 |= 4uLL;
LABEL_28:
          [v22 setMaskedCorners_];

          [v18 setBackgroundColor_];
          v26 = *v21;
          v27 = *v2;
          v28 = *(v2 + 1);
          *v21 = *v2;
          *(v21 + 1) = v28;
          v29 = v27;

          sub_24F0F9A68();
          [v18 setHidden_];

          return;
        }

        goto LABEL_24;
      }

      v25 = 1;
      if ((v24 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if ((v24 & 2) != 0)
      {
        v25 = 2;
        if ((v24 & 8) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v25 = 0;
      if ((v24 & 8) != 0)
      {
LABEL_24:
        v25 |= 8uLL;
        goto LABEL_25;
      }
    }

    if ((v24 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v5 = *&v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadowView];
  if (v5)
  {
    [v5 setHidden_];
  }
}

void (*ArtworkView.shadow.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F3574C0;
}

void sub_24F3574C0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24F357100();
  }
}

id ArtworkView.image.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) image];

  return v1;
}

uint64_t ArtworkView.roundedCorners.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24F3575A8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      v3 = 3;
      if ((v2 & 8) == 0)
      {
LABEL_13:
        if ((v2 & 4) != 0 && (v3 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v3 = 1;
    if ((v2 & 8) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((v2 & 2) != 0)
    {
      v3 = 2;
      if ((v2 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v3 = 0;
    if ((v2 & 8) != 0)
    {
LABEL_12:
      v3 |= 8uLL;
      goto LABEL_13;
    }
  }

  if ((v2 & 4) != 0)
  {
LABEL_15:
    v3 |= 4uLL;
  }

LABEL_16:
  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadowView);
  if (v4)
  {
    v5 = [v4 layer];
    [v5 setMaskedCorners_];
  }

  v6 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) layer];
  [v6 setMaskedCorners_];

  sub_24E9F322C();
}

uint64_t (*ArtworkView.roundedCorners.modify(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_24E9F2E64(v3);
  return sub_24F357730;
}

void sub_24F357730(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_24F3575A8();
  }

  free(v3);
}

id ArtworkView.placeholderColor.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_placeholderColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ArtworkView.placeholderColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_placeholderColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadowView);
  if (v6)
  {
    v7 = *(v1 + v3);
    v8 = v6;
    v9 = v7;
    [v8 setBackgroundColor_];
  }
}

uint64_t (*ArtworkView.placeholderColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_placeholderColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_24F35790C;
}

void sub_24F35790C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadowView);
    if (v5)
    {
      [v5 setBackgroundColor_];
    }
  }

  free(v3);
}

void *ArtworkView.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor);
  v2 = v1;
  return v1;
}

void (*ArtworkView.backgroundColor.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_internalBackgroundColor;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_24F357B34;
}

void sub_24F357B34(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a1;
  if (a2)
  {
    if (v5)
    {
      v6 = *(v4 + v3);
      *(v4 + v3) = v5;
      sub_24E77ACC8();
      v7 = v5;
      if ((sub_24F92C408() & 1) == 0)
      {
        sub_24F357100();
      }
    }

    else
    {
      v9 = [objc_opt_self() clearColor];
      v6 = *(v4 + v3);
      *(v4 + v3) = v9;
      sub_24E77ACC8();
      v7 = v9;
      if ((sub_24F92C408() & 1) == 0)
      {
        sub_24F357100();
      }
    }

    v10 = *a1;
  }

  else
  {
    if (v5)
    {
      v12 = *(v4 + v3);
      *(v4 + v3) = v5;
      sub_24E77ACC8();
      v8 = v5;
      if ((sub_24F92C408() & 1) == 0)
      {
        sub_24F357100();
      }
    }

    else
    {
      v11 = [objc_opt_self() clearColor];
      v12 = *(v4 + v3);
      *(v4 + v3) = v11;
      sub_24E77ACC8();
      v8 = v11;
      if ((sub_24F92C408() & 1) == 0)
      {
        sub_24F357100();
      }
    }

    v10 = v12;
  }
}

Swift::Void __swiftcall ArtworkView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 contentMode];
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_clipImageToBounds;
  swift_beginAccess();
  v13 = v0[v12];
  v14 = &v0[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageSize];
  if (v13)
  {
    swift_beginAccess();
    width = *v14;
    height = v14[1];
  }

  else
  {
    swift_beginAccess();
    v17 = CGSize.fitting(_:mode:)(__PAIR128__(*&v11, *&v9), v3);
    width = v17.width;
    height = v17.height;
  }

  v18 = 0.0;
  v19 = 0.0;
  if (v3 <= UIViewContentModeBottomRight)
  {
    if (((1 << v3) & 0x7F) != 0)
    {
      v79.origin.x = v5;
      v79.origin.y = v7;
      v79.size.width = v9;
      v79.size.height = v11;
      v19 = CGRectGetMidX(v79) + width * -0.5;
    }

    else if (((1 << v3) & 0x1500) != 0)
    {
      v80.origin.x = v5;
      v80.origin.y = v7;
      v80.size.width = v9;
      v80.size.height = v11;
      v19 = CGRectGetMaxX(v80) - width;
    }
  }

  v75 = v19;
  if (v3 <= UIViewContentModeBottomRight)
  {
    if (((1 << v3) & 0x19F) != 0)
    {
      v81.origin.x = v5;
      v81.origin.y = v7;
      v81.size.width = v9;
      v81.size.height = v11;
      v18 = CGRectGetMidY(v81) + height * -0.5;
    }

    else if (((1 << v3) & 0x1840) != 0)
    {
      v82.origin.x = v5;
      v82.origin.y = v7;
      v82.size.width = v9;
      v82.size.height = v11;
      v18 = CGRectGetMaxY(v82) - height;
    }
  }

  v20 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isStyleInvalid;
  v76 = v11;
  if ((v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isStyleInvalid] & 1) != 0 || v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] == 1)
  {
    v21 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
    swift_beginAccess();
    if (v1[v21] == 6)
    {
      v83.origin.x = v75;
      v83.origin.y = v18;
      v83.size.width = width;
      v83.size.height = height;
      v28 = CGRectGetWidth(v83);
      v29 = v28 + v28;
      v84.origin.x = v75;
      v84.origin.y = v18;
      v84.size.width = width;
      v84.size.height = height;
      v30 = CGRectGetHeight(v84);
      v31 = v30 + v30;
      v32 = v29;
      v11 = v76;
      v33 = Artwork.Style.iconCornerRadius(for:isPlaceholder:)(0, v32, v31);
      v77[0] = 0;
      ArtworkView.setCorner(radius:style:)(v77, v33);
      v34 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_roundedCorners;
      swift_beginAccess();
      *&v1[v34] = 2;
      v35 = [v1 layer];
      [v35 setMaskedCorners_];

      sub_24E9F322C();
      sub_24F3575A8();
    }

    else
    {
      if (v1[v21])
      {
        v77[0] = v1[v21];
        v27 = Artwork.Style.iconCornerRadius(for:isPlaceholder:)(1, width, height);
        v77[0] = (0x108u >> v1[v21]) & 1;
      }

      else
      {
        v22 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerRadius;
        swift_beginAccess();
        v23 = width;
        v24 = v11;
        v25 = *&v1[v22];
        v26 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_cornerStyle;
        swift_beginAccess();
        v77[0] = v1[v26];
        v27 = v25;
        v11 = v24;
        width = v23;
      }

      ArtworkView.setCorner(radius:style:)(v77, v27);
    }

    v1[v20] = 0;
    v104.origin.x = 0.0;
    v104.origin.y = 0.0;
    v104.size.width = 0.0;
    v104.size.height = 0.0;
    v85.origin.x = v5;
    v85.origin.y = v7;
    v85.size.width = v9;
    v85.size.height = v11;
    v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] = CGRectEqualToRect(v85, v104);
  }

  rect_16 = v18;
  v78.receiver = v1;
  v78.super_class = ObjectType;
  objc_msgSendSuper2(&v78, sel_layoutSubviews);
  v36 = v5;
  rect_24 = v7;
  rect_8 = v9;
  if (v3 != UIViewContentModeScaleAspectFill)
  {
    if (v1[v12])
    {
      v11 = v76;
    }

    else
    {
      v5 = v75;
      v7 = rect_16;
      v9 = width;
      v11 = height;
    }
  }

  v37 = *&v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView];
  [v37 setFrame_];
  v38 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderView;
  swift_beginAccess();
  v39 = *&v1[v38];
  if (v39)
  {
    [v39 setFrame_];
  }

  v40 = *&v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shadowView];
  if (v40)
  {
    [v40 setFrame_];
  }

  v41 = [v37 layer];
  [v41 setAnchorPoint_];

  if (v3 <= UIViewContentModeRight)
  {
    v42 = height;
    v43 = v36;
    if (v3 == UIViewContentModeScaleAspectFill)
    {
      v45 = [v37 layer];
      v97.origin.x = v75;
      v97.origin.y = rect_16;
      v59 = width;
      v97.size.width = width;
      v97.size.height = height;
      v60 = v43;
      rect = v43;
      v61 = 0.0 - CGRectGetMinX(v97);
      v98.origin.x = v75;
      v98.origin.y = rect_16;
      v98.size.width = v59;
      v98.size.height = height;
      v70 = v61 / CGRectGetWidth(v98);
      v99.origin.x = v75;
      v99.origin.y = rect_16;
      v99.size.width = v59;
      v99.size.height = height;
      v62 = 0.0 - CGRectGetMinY(v99);
      v100.origin.x = v75;
      v100.origin.y = rect_16;
      v100.size.width = v59;
      v100.size.height = height;
      v69 = v62 / CGRectGetHeight(v100);
      v101.origin.x = v60;
      v101.origin.y = rect_24;
      v101.size.width = rect_8;
      v101.size.height = v76;
      v63 = CGRectGetWidth(v101);
      v102.origin.x = v75;
      v102.origin.y = rect_16;
      v102.size.width = v59;
      v102.size.height = height;
      v50 = v63 / CGRectGetWidth(v102);
      v103.origin.x = rect;
      v103.origin.y = rect_24;
      v103.size.width = rect_8;
      v103.size.height = v76;
      v51 = CGRectGetHeight(v103);
      v52 = v75;
      v53 = rect_16;
      v54 = v59;
      v55 = height;
      goto LABEL_47;
    }

    v44 = width;
    if (v3 != UIViewContentModeLeft)
    {
      if (v3 == UIViewContentModeRight)
      {
        goto LABEL_38;
      }

      goto LABEL_49;
    }

LABEL_44:
    if (v1[v12])
    {
      goto LABEL_45;
    }

LABEL_49:
    v65 = [v37 layer];
    v45 = v65;
    v66 = 0.0;
    v67 = 0.0;
    v68 = 1.0;
    v64 = 1.0;
    goto LABEL_50;
  }

  v42 = height;
  v43 = v36;
  if (v3 <= UIViewContentModeTopRight)
  {
    v44 = width;
    if (v3 != UIViewContentModeTopLeft)
    {
LABEL_38:
      if ((v1[v12] & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v44 = width;
  if (v3 != UIViewContentModeBottomLeft)
  {
    if (v3 != UIViewContentModeBottomRight || v1[v12] != 1)
    {
      goto LABEL_49;
    }

LABEL_43:
    v45 = [v37 layer];
    v86.origin.x = v75;
    v86.origin.y = rect_16;
    v86.size.width = v44;
    v86.size.height = v42;
    v46 = 0.0 - CGRectGetMinX(v86);
    v87.origin.x = v75;
    v87.origin.y = rect_16;
    v87.size.width = v44;
    v87.size.height = v42;
    v70 = v46 / CGRectGetWidth(v87);
    v88.origin.x = v75;
    v88.origin.y = rect_16;
    v88.size.width = v44;
    v88.size.height = v42;
    v47 = 0.0 - CGRectGetMinY(v88);
    v89.origin.x = v75;
    v89.origin.y = rect_16;
    v89.size.width = v44;
    v89.size.height = v42;
    v69 = v47 / CGRectGetHeight(v89);
    v90.origin.x = v43;
    v48 = v42;
    v90.origin.y = rect_24;
    v90.size.width = rect_8;
    v90.size.height = v76;
    v49 = CGRectGetWidth(v90);
    v91.origin.x = v75;
    v91.origin.y = rect_16;
    v91.size.width = v44;
    v91.size.height = v48;
    v50 = v49 / CGRectGetWidth(v91);
    v92.origin.x = v43;
    v92.origin.y = rect_24;
    v92.size.width = rect_8;
    v92.size.height = v76;
    v51 = CGRectGetHeight(v92);
    v52 = v75;
    v53 = rect_16;
    v54 = v44;
    v55 = v48;
LABEL_47:
    v64 = v51 / CGRectGetHeight(*&v52);
    v65 = v45;
    v67 = v69;
    v66 = v70;
    v68 = v50;
LABEL_50:
    [v65 setContentsRect_];
    goto LABEL_51;
  }

  if (v1[v12] != 1)
  {
    goto LABEL_49;
  }

LABEL_45:
  v45 = [v37 layer];
  v93.origin.x = v43;
  v93.origin.y = rect_24;
  v93.size.width = rect_8;
  v93.size.height = v76;
  v56 = CGRectGetWidth(v93);
  v94.origin.x = v75;
  v94.origin.y = rect_16;
  v94.size.width = v44;
  v94.size.height = v42;
  v57 = v56 / CGRectGetWidth(v94);
  v95.origin.x = v43;
  v95.origin.y = rect_24;
  v95.size.width = rect_8;
  v95.size.height = v76;
  v58 = CGRectGetHeight(v95);
  v96.origin.x = v75;
  v96.origin.y = rect_16;
  v96.size.width = v44;
  v96.size.height = v42;
  [v45 setContentsRect_];
LABEL_51:
}

id ArtworkView.frame.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_frame);
}

void ArtworkView.frame.setter(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v23.receiver = v4;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, sel_frame);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_frame);
  if (v19 != a3 || v18 != a4)
  {
    *(v4 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid) = 1;
  }

  v21.receiver = v4;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_setFrame_, a1, a2, a3, a4);
  sub_24F358818(v11, v13, v15, v17);
}

void sub_24F358818(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_frameUpdatesImageSize;
  swift_beginAccess();
  if (v4[v8] == 1)
  {
    if ((v9 = &v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageSize], swift_beginAccess(), v10 = *v9, v11 = v9[1], *v9 == 0.0) && v11 == 0.0 || (v10 == a3 ? (v12 = v11 == a4) : (v12 = 0), v12 || v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_updatingFrameForSymbolSizeChange] == 1))
    {
      v18.receiver = v4;
      v18.super_class = ObjectType;
      objc_msgSendSuper2(&v18, sel_frame, v10);
      v14 = *v9;
      v15 = v9[1];
      *v9 = v16;
      v9[1] = v13;
      if (v16 != v14 || v13 != v15)
      {
        v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
        [v4 setNeedsLayout];
      }
    }
  }

  v4[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_updatingFrameForSymbolSizeChange] = 0;
}

void (*ArtworkView.frame.modify(objc_super **a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[9].receiver = v1;
  ObjectType = swift_getObjectType();
  v4[9].super_class = ObjectType;
  v4[2].receiver = v1;
  v4[2].super_class = ObjectType;
  objc_msgSendSuper2(v4 + 2, sel_frame);
  v4->receiver = v6;
  v4->super_class = v7;
  v4[1].receiver = v8;
  v4[1].super_class = v9;
  return sub_24F3589CC;
}

void sub_24F3589CC(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)->receiver;
  super_class = (*a1)->super_class;
  v6 = (*a1)[1].receiver;
  v5 = (*a1)[1].super_class;
  v8 = (*a1)[9].receiver;
  v7 = (*a1)[9].super_class;
  v9 = *a1;
  if (a2)
  {
    v9[3].receiver = v8;
    v2[3].super_class = v7;
    objc_msgSendSuper2(v9 + 3, sel_frame);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v2[4].receiver = v8;
    v2[4].super_class = v7;
    objc_msgSendSuper2(v2 + 4, sel_frame);
    if (v19 != *&v6 || v18 != *&v5)
    {
      *(v2[9].receiver + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid) = 1;
    }

    v28 = v2[9];
    v2[5] = v28;
    objc_msgSendSuper2(v2 + 5, sel_setFrame_, *&receiver, *&super_class, *&v6, *&v5, v28);
  }

  else
  {
    v9[6].receiver = v8;
    v2[6].super_class = v7;
    objc_msgSendSuper2(v9 + 6, sel_frame);
    v11 = v21;
    v13 = v22;
    v15 = v23;
    v17 = v24;
    v2[7].receiver = v8;
    v2[7].super_class = v7;
    objc_msgSendSuper2(v2 + 7, sel_frame);
    if (v26 != *&v6 || v25 != *&v5)
    {
      *(v2[9].receiver + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid) = 1;
    }

    v29 = v2[9];
    v2[8] = v29;
    objc_msgSendSuper2(v2 + 8, sel_setFrame_, *&receiver, *&super_class, *&v6, *&v5, v29);
  }

  sub_24F358818(v11, v13, v15, v17);

  free(v2);
}

double ArtworkView.imageSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageSize;
  swift_beginAccess();
  return *v1;
}

void (*ArtworkView.imageSize.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageSize;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_24F358C2C;
}

void sub_24F358C2C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = (*(*a1 + 40) + *(*a1 + 48));
  v4 = *(*a1 + 32);
  v5 = *v3;
  v6 = v3[1];
  *v3 = v2;
  v3[1] = v4;
  if (v2 != v5 || v4 != v6)
  {
    v8 = v1[5];
    v8[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
    [v8 setNeedsLayout];
  }

  free(v1);
}

uint64_t ArtworkView.frameUpdatesImageSize.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_frameUpdatesImageSize;
  swift_beginAccess();
  return *(v0 + v1);
}

void ArtworkView.frameUpdatesImageSize.setter(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_frameUpdatesImageSize;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 & 1) == 0 && (a1)
  {
    v14.receiver = v1;
    v14.super_class = ObjectType;
    objc_msgSendSuper2(&v14, sel_frame);
    v7 = v6;
    v9 = v8;
    v10 = &v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageSize];
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    *v10 = v7;
    v10[1] = v9;
    if (v7 != v11 || v9 != v12)
    {
      v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
      [v1 setNeedsLayout];
    }

    [v1 setNeedsLayout];
  }
}

void (*ArtworkView.frameUpdatesImageSize.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_frameUpdatesImageSize;
  *(v4 + 72) = ObjectType;
  *(v4 + 80) = v6;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v6);
  return sub_24F358E78;
}

void sub_24F358E78(objc_super **a1, char a2)
{
  v2 = *a1;
  super_class_low = LOBYTE((*a1)[5].super_class);
  if (a2)
  {
    ArtworkView.frameUpdatesImageSize.setter(super_class_low);
  }

  else
  {
    receiver = v2[5].receiver;
    v5 = v2[4].receiver;
    v6 = receiver[v5];
    receiver[v5] = super_class_low;
    if ((v6 & 1) == 0 && super_class_low)
    {
      v16 = v2[4];
      v2[3] = v16;
      objc_msgSendSuper2(v2 + 3, sel_frame);
      v8 = v7;
      v10 = v9;
      v11 = (v16.receiver + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageSize);
      swift_beginAccess();
      v12 = *v11;
      v13 = v11[1];
      *v11 = v8;
      v11[1] = v10;
      if (v8 != v12 || v10 != v13)
      {
        v15 = v2[4].receiver;
        v15[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isCornerRadiusInvalid] = 1;
        [v15 setNeedsLayout];
      }

      [v2[4].receiver setNeedsLayout];
    }
  }

  free(v2);
}

uint64_t ArtworkView.clipImageToBounds.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_clipImageToBounds;
  swift_beginAccess();
  return *(v0 + v1);
}

id ArtworkView.clipImageToBounds.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_clipImageToBounds;
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsLayout];
}

id (*ArtworkView.clipImageToBounds.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24E9FD08C;
}

uint64_t ArtworkView.shouldSymbolImageSelfSize.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shouldSymbolImageSelfSize;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24F3590C8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shouldSymbolImageSelfSize;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v5)
  {
    sub_24F3567DC(0);
  }
}

void ArtworkView.shouldSymbolImageSelfSize.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shouldSymbolImageSelfSize;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    sub_24F3567DC(0);
  }
}

void (*ArtworkView.shouldSymbolImageSelfSize.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_shouldSymbolImageSelfSize;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24F35922C;
}

void sub_24F35922C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    sub_24F3567DC(0);
  }

  free(v1);
}

uint64_t ArtworkView.setImageDisablesAnimations.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_setImageDisablesAnimations;
  swift_beginAccess();
  return *(v0 + v1);
}

void ArtworkView.setImageDisablesAnimations.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_setImageDisablesAnimations;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void ArtworkView.style.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_24F3593CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_24F359430(&v7);
}

uint64_t sub_24F359430(unsigned __int8 *a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  v3 = *a1;
  swift_beginAccess();
  result = sub_24F0C97AC(v1[v2], v3);
  if ((result & 1) == 0)
  {
    v5 = sub_24F3595CC();
    v6 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderWidth;
    if (v5)
    {
      swift_beginAccess();
      *&v1[v6] = 0x3FF0000000000000;
      sub_24E9F322C();
      if (qword_27F211130 != -1)
      {
        swift_once();
      }

      v7 = qword_27F23FFB8;
      v8 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
      swift_beginAccess();
      v9 = *&v1[v8];
      *&v1[v8] = v7;
      v10 = v7;

      sub_24E9F322C();
    }

    else
    {
      swift_beginAccess();
      *&v1[v6] = 0;
      sub_24E9F322C();
      v11 = [objc_opt_self() clearColor];
      v12 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
      swift_beginAccess();
      v13 = *&v1[v12];
      *&v1[v12] = v11;
      v14 = v11;

      sub_24E9F322C();
    }

    v1[OBJC_IVAR____TtC12GameStoreKit11ArtworkView_isStyleInvalid] = 1;
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_24F3595CC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) image];
  if (v1)
  {

    v2 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
    swift_beginAccess();
    v3 = ((*(v0 + v2) - 2) & 0xFD) != 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  if (*(v0 + v4) <= 3u && !*(v0 + v4))
  {
    goto LABEL_9;
  }

  v5 = sub_24F92CE08();

  v6 = 0;
  if ((v5 & 1) == 0)
  {
    if (*(v0 + v4) < 8u)
    {
      v7 = sub_24F92CE08();

      v6 = (v7 ^ 1) & v3;
      return v6 & 1;
    }

LABEL_9:

    v6 = 0;
  }

  return v6 & 1;
}

void (*ArtworkView.style.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24F359994;
}

void sub_24F359994(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_24F359430(v6);

  free(v2);
}

void sub_24F359A04()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  if (((*(v0 + v1) - 2) & 0xFD) == 0)
  {
    if (sub_24F3595CC())
    {
      if (qword_27F211130 != -1)
      {
        swift_once();
      }

      v2 = qword_27F23FFB8;
      v3 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
      swift_beginAccess();
      v4 = *(v0 + v3);
      *(v0 + v3) = v2;
      v5 = v2;

      sub_24E9F322C();
    }

    else
    {
      v6 = [objc_opt_self() clearColor];
      v7 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
      swift_beginAccess();
      v8 = *(v0 + v7);
      *(v0 + v7) = v6;
      v9 = v6;

      sub_24E9F322C();
    }
  }
}

void *ArtworkView.artworkTintColor.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_artworkTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id sub_24F359B84(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_artworkTintColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return [*(v3 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) setTintColor_];
}

void ArtworkView.artworkTintColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_artworkTintColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  [*(v1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) setTintColor_];
}

uint64_t (*ArtworkView.artworkTintColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_artworkTintColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_24F359D0C;
}

void sub_24F359D0C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) setTintColor_];
  }

  free(v3);
}

id ArtworkView.preferredSymbolConfiguration.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) preferredSymbolConfiguration];

  return v1;
}

void ArtworkView.preferredSymbolConfiguration.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) setPreferredSymbolConfiguration_];
  sub_24F3567DC(a1);
}

void (*ArtworkView.preferredSymbolConfiguration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = [v3 preferredSymbolConfiguration];
  return sub_24F359E6C;
}

void sub_24F359E6C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v5 = *a1;
  if (a2)
  {
    v3 = v5;
    [v2 setPreferredSymbolConfiguration_];
    sub_24F3567DC(v5);

    v4 = v3;
  }

  else
  {
    [v2 setPreferredSymbolConfiguration_];
    sub_24F3567DC(v5);
    v4 = v5;
  }
}

uint64_t ArtworkView.imageBaselineOffsetFromBottom.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) image];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24F92C3C8();

  return v3;
}

id ArtworkView.isDisplayingSymbolImage.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) image];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isSymbolImage];

  return v3;
}

id (*ArtworkView.isImageHidden.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView);
  *a1 = v3;
  *(a1 + 8) = [v3 isHidden];
  return sub_24F35A060;
}

void (*ArtworkView.image.modify(void *a1))(Class *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(v1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) image];
  return sub_24F35A0DC;
}

void sub_24F35A0DC(Class *a1, char a2)
{
  v2 = *a1;
  v6 = *a1;
  if (a2)
  {
    v3 = v6;
    v8.value.super.isa = v6;
    v8.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v8, v4);

    v5 = v3;
  }

  else
  {
    v9.value.super.isa = *a1;
    v9.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v9, v2);
    v5 = v6;
  }
}

void sub_24F35A150(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) setAlpha_];
  v2 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  if (((*(a1 + v2) - 2) & 0xFD) == 0)
  {
    if (sub_24F3595CC())
    {
      if (qword_27F211130 != -1)
      {
        swift_once();
      }

      v3 = qword_27F23FFB8;
      v4 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
      swift_beginAccess();
      v5 = *(a1 + v4);
      *(a1 + v4) = v3;
      v6 = v3;

      sub_24E9F322C();
    }

    else
    {
      v7 = [objc_opt_self() clearColor];
      v8 = OBJC_IVAR____TtC12GameStoreKit17RoundedCornerView_borderColor;
      swift_beginAccess();
      v9 = *(a1 + v8);
      *(a1 + v8) = v7;
      v10 = v7;

      sub_24E9F322C();
    }
  }
}

uint64_t sub_24F35A2A4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_24F35A320(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

Swift::Void __swiftcall ArtworkView.show(image:isAnimationPermitted:)(UIImage_optional image, Swift::Bool isAnimationPermitted)
{
  if (image.is_nil)
  {
    isa = image.value.super.isa;
    v4 = [*(v2 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) image];
    if (v4)
    {

      image.is_nil = 0;
    }

    else
    {
      image.is_nil = 1;
    }

    image.value.super.isa = isa;
  }

  else
  {
    image.is_nil = 0;
  }

  ArtworkView.setImage(image:animated:)(image, isAnimationPermitted);
}

void sub_24F35A3E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_artworkTintColor);
}

id ArtworkView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24F35A52C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) image];

  return v1;
}

void sub_24F35A56C(UIImage_optional a1, Swift::Bool a2)
{
  isa = a1.value.super.isa;
  a1.is_nil = 0;
  ArtworkView.setImage(image:animated:)(a1, a2);
}

void (*sub_24F35A5A8(void *a1))(Class *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(v1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) image];
  return sub_24F35A0DC;
}

void sub_24F35A60C(UIImage_optional a1, _BOOL8 a2)
{
  if (a1.is_nil)
  {
    isa = a1.value.super.isa;
    v4 = [*(v2 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) image];
    if (v4)
    {

      a1.is_nil = 0;
    }

    else
    {
      a1.is_nil = 1;
    }

    a1.value.super.isa = isa;
  }

  else
  {
    a1.is_nil = 0;
  }

  ArtworkView.setImage(image:animated:)(a1, a2);
}

unint64_t sub_24F35A680(uint64_t a1)
{
  result = sub_24F35A6A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24F35A6A8()
{
  result = qword_27F240038;
  if (!qword_27F240038)
  {
    type metadata accessor for ArtworkView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240038);
  }

  return result;
}

id sub_24F35A728@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_placeholderColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

__n128 sub_24F35A7BC@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id sub_24F35A87C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_clipImageToBounds;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsLayout];
}

void sub_24F35A8F0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_style;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_24F35A94C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit11ArtworkView_artworkTintColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_24F35A9C4(void *a1, void *a2)
{
  v2 = *a1;
  [*(*a2 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) setPreferredSymbolConfiguration_];
  sub_24F3567DC(v2);
}

id sub_24F35AA0C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) isHidden];
  *a2 = result;
  return result;
}

id keypath_get_26Tm@<X0>(void *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC12GameStoreKit11ArtworkView_imageView) *a2];
  *a3 = result;
  return result;
}

void sub_24F35AAC0(Class *a1, uint64_t a2, Swift::Bool a3)
{
  v3.value.super.isa = *a1;
  v3.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v3, a3);
}

uint64_t sub_24F35AB14(uint64_t *a1, int a2)
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

uint64_t sub_24F35AB5C(uint64_t result, int a2, int a3)
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

uint64_t sub_24F35ABE4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240040, &qword_24F9E9830);
  MEMORY[0x28223BE20](v35);
  v3 = &v33 - v2;
  v4 = v1[1];
  v43 = *v1;
  v44 = v4;
  v5 = v1[5];
  v46[1] = v1[4];
  v46[2] = v5;
  v46[3] = v1[6];
  *&v46[4] = *(v1 + 14);
  v6 = v1[3];
  v45 = v1[2];
  v46[0] = v6;
  v7 = v44;
  v8 = *(&v43 + 1);
  type metadata accessor for NetworkConnectionMonitor(0);

  sub_24F928F28();
  v9 = v42;
  v37[0] = *(&v46[1] + 8);
  v37[1] = *(&v46[2] + 8);
  v37[2] = *(&v46[3] + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240048, &unk_24F9E9838);
  sub_24F926F38();
  v10 = v41;
  v11 = swift_allocObject();
  v12 = v46[2];
  *(v11 + 80) = v46[1];
  *(v11 + 96) = v12;
  *(v11 + 112) = v46[3];
  *(v11 + 128) = *&v46[4];
  v13 = v44;
  *(v11 + 16) = v43;
  *(v11 + 32) = v13;
  v14 = v46[0];
  *(v11 + 48) = v45;
  *(v11 + 64) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C5E0, &unk_24F990880);
  v16 = v15[16];
  v33 = v40;
  v34 = v39;
  *&v3[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *&v3[v15[17]] = 0;
  v17 = &v3[v15[18]];
  v38 = 0;
  sub_24F35C490(&v43, v37);
  sub_24F926F28();
  v18 = *(&v37[0] + 1);
  *v17 = v37[0];
  *(v17 + 1) = v18;
  *v3 = v8;
  *(v3 + 8) = v7;
  *(v3 + 3) = v9;
  v19 = v34;
  *(v3 + 72) = v33;
  *(v3 + 56) = v19;
  v3[88] = v10;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24F35C438;
  *(v20 + 24) = v11;
  *(v3 + 4) = sub_24EC6A444;
  *(v3 + 5) = v20;
  v3[48] = 0;
  v37[0] = *(v46 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240050, &unk_24F9E9880);
  sub_24F926F38();
  v21 = *(v39 + 16);

  sub_24E60169C(v21 + qword_27F39CBF8, &v3[*(v35 + 52)], &qword_27F228530, &unk_24F93C6E0);

  swift_getKeyPath();
  *&v37[0] = *(&v7 + 1);
  sub_24F35D094(&qword_27F21FE50, type metadata accessor for ArcadeSubscription, &protocol conformance descriptor for ArcadeSubscription);
  sub_24F91FD88();

  LOBYTE(v39) = *(*(&v7 + 1) + 16) < 2u;
  v22 = swift_allocObject();
  v23 = v46[2];
  *(v22 + 80) = v46[1];
  *(v22 + 96) = v23;
  *(v22 + 112) = v46[3];
  *(v22 + 128) = *&v46[4];
  v24 = v44;
  *(v22 + 16) = v43;
  *(v22 + 32) = v24;
  v25 = v46[0];
  *(v22 + 48) = v45;
  *(v22 + 64) = v25;
  sub_24F35C490(&v43, v37);
  sub_24F35C510();
  v26 = v36;
  sub_24F926AB8();

  sub_24E601704(v3, &qword_27F240040, &qword_24F9E9830);
  v27 = swift_allocObject();
  v28 = v46[2];
  *(v27 + 80) = v46[1];
  *(v27 + 96) = v28;
  *(v27 + 112) = v46[3];
  *(v27 + 128) = *&v46[4];
  v29 = v44;
  *(v27 + 16) = v43;
  *(v27 + 32) = v29;
  v30 = v46[0];
  *(v27 + 48) = v45;
  *(v27 + 64) = v30;
  v31 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240060, &unk_24F9E98B8) + 36));
  *v31 = sub_24F35C60C;
  v31[1] = v27;
  v31[2] = 0;
  v31[3] = 0;
  return sub_24F35C490(&v43, v37);
}

uint64_t sub_24F35B08C(uint64_t result, unsigned __int8 *a2, uint64_t *a3)
{
  v4 = *result;
  v5 = *a2;
  v6 = a3[4];
  v7 = a3[5];
  if (v6 == 0x656461637261 && v7 == 0xE600000000000000)
  {
    if (v4 == v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = sub_24F92CE08();
  if (result & 1) != 0 && ((v4 ^ v5))
  {
LABEL_9:

    sub_24F35B19C();
    v9 = *a3;
    v10 = a3[3];
    v11 = a3[6];

    sub_24F35D2AC(v9, v10, v6, v7, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240050, &unk_24F9E9880);
    return sub_24F926F48();
  }

  return result;
}

double sub_24F35B19C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29 - v2;
  v4 = type metadata accessor for ArcadePageToolbarItemGroupsIntent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v29 - v9);
  v11 = v0[5];
  v41 = v0[4];
  v42 = v11;
  v43 = v0[6];
  v44 = *(v0 + 14);
  v12 = v0[1];
  v37 = *v0;
  v38 = v12;
  v13 = v0[3];
  v39 = v0[2];
  v40 = v13;
  if (*&v39 == __PAIR128__(0xE600000000000000, 0x656461637261) || (sub_24F92CE08() & 1) != 0)
  {
    v30 = v5;
    v14 = v38;
    swift_getKeyPath();
    *&v31[0] = v14;
    sub_24F35D094(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD88();

    v15 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
    swift_beginAccess();
    sub_24F35C638(v14 + v15, v10 + *(v4 + 20), type metadata accessor for Player);
    *v10 = 0xD000000000000018;
    v10[1] = 0x800000024FA74310;
    v16 = sub_24F92B858();
    (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
    sub_24F35C638(v10, v7, type metadata accessor for ArcadePageToolbarItemGroupsIntent);
    sub_24F92B7F8();
    sub_24F35C490(&v37, v31);
    v17 = sub_24F92B7E8();
    v18 = (*(v30 + 80) + 152) & ~*(v30 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v17;
    *(v19 + 24) = v20;
    v21 = v42;
    *(v19 + 96) = v41;
    *(v19 + 112) = v21;
    *(v19 + 128) = v43;
    *(v19 + 144) = v44;
    v22 = v38;
    *(v19 + 32) = v37;
    *(v19 + 48) = v22;
    v23 = v39;
    v24 = v40;
    *(v19 + 64) = v39;
    *(v19 + 80) = v24;
    sub_24F35CD90(v7, v19 + v18, v23);
    sub_24EA998B8(0, 0, v3, &unk_24F9E98F8, v19);

    sub_24F35CEE8(v10, v25);
  }

  else
  {
    if (qword_27F20FF08 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 88);
    v31[0] = *(v0 + 72);
    v31[1] = v27;
    v31[2] = *(v0 + 104);
    v28 = *(v0 + 88);
    v34 = *(v0 + 72);
    v35 = v28;
    v36 = *(v0 + 104);
    v32[3] = xmmword_27F39ACF8;
    v32[4] = xmmword_27F39AD08;
    v33 = byte_27F39AD18;

    sub_24E60169C(v31, v32, &qword_27F240048, &unk_24F9E9838);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240048, &unk_24F9E9838);
    sub_24F926F48();
  }

  return result;
}

uint64_t sub_24F35B61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[47] = a4;
  v5[48] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v5[49] = swift_task_alloc();
  v5[50] = sub_24F92B7F8();
  v7 = sub_24F92B7E8();
  v8 = *a4;
  v5[51] = v7;
  v5[52] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v10 = swift_task_alloc();
  v5[53] = v10;
  *v10 = v5;
  v10[1] = sub_24F35B730;

  return MEMORY[0x28217F228](v5 + 32, v9, v9);
}

uint64_t sub_24F35B730()
{
  v2 = *v1;
  v2[54] = v0;

  v4 = sub_24F92B778();
  v2[55] = v4;
  v2[56] = v3;
  if (v0)
  {
    v5 = sub_24F35BC54;
  }

  else
  {
    v5 = sub_24F35B890;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F35B890()
{
  v1 = v0[35];
  v2 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v1);
  v3 = swift_task_alloc();
  v0[57] = v3;
  v4 = type metadata accessor for ArcadePageToolbarItemGroupsIntent(0);
  v5 = sub_24F35D094(&qword_27F240068, type metadata accessor for ArcadePageToolbarItemGroupsIntent, &unk_24F9F0778);
  *v3 = v0;
  v3[1] = sub_24F35B9A4;
  v6 = v0[52];
  v7 = v0[48];

  return MEMORY[0x28217F4B0](v0 + 42, v7, v6, v4, v5, v1, v2);
}

uint64_t sub_24F35B9A4()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 448);
  v4 = *(v2 + 440);
  if (v0)
  {
    v5 = sub_24F35BE4C;
  }

  else
  {
    v5 = sub_24F35BAE0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F35BAE0()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);

  v3 = *(v0 + 352);
  *(v0 + 296) = *(v0 + 336);
  *(v0 + 312) = v3;
  *(v0 + 328) = *(v0 + 368);
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_24F35C490(v2, v0 + 136);
  v5 = sub_24F92B7E8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = *(v2 + 48);
  v9 = *v2;
  v10 = *(v2 + 16);
  *(v6 + 64) = *(v2 + 32);
  *(v6 + 80) = v8;
  *(v6 + 32) = v9;
  *(v6 + 48) = v10;
  v11 = *(v2 + 112);
  v12 = *(v2 + 96);
  v13 = *(v2 + 64);
  *(v6 + 112) = *(v2 + 80);
  *(v6 + 128) = v12;
  *(v6 + 144) = v11;
  *(v6 + 96) = v13;
  v14 = *(v0 + 312);
  *(v6 + 152) = *(v0 + 296);
  *(v6 + 168) = v14;
  *(v6 + 184) = *(v0 + 328);
  sub_24EA998B8(0, 0, v1, &unk_24F9E9920, v6);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24F35BC54()
{

  v1 = v0[54];
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v2 = v0[49];
  v3 = v0[47];
  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E7F0);
  *(swift_task_alloc() + 16) = v1;
  sub_24EDACD00(sub_24F35C204, 0, sub_24EDB4894);

  v5 = sub_24F92B858();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_24F35C490(v3, (v0 + 2));
  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = *(v3 + 48);
  v11 = *v3;
  v10 = *(v3 + 16);
  *(v7 + 64) = *(v3 + 32);
  *(v7 + 80) = v9;
  *(v7 + 32) = v11;
  *(v7 + 48) = v10;
  v13 = *(v3 + 80);
  v12 = *(v3 + 96);
  v14 = *(v3 + 64);
  *(v7 + 144) = *(v3 + 112);
  *(v7 + 112) = v13;
  *(v7 + 128) = v12;
  *(v7 + 96) = v14;
  sub_24EA998B8(0, 0, v2, &unk_24F9E9910, v7);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24F35BE4C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v1 = v0[58];
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v2 = v0[49];
  v3 = v0[47];
  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E7F0);
  *(swift_task_alloc() + 16) = v1;
  sub_24EDACD00(sub_24F35C204, 0, sub_24EDB4894);

  v5 = sub_24F92B858();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_24F35C490(v3, (v0 + 2));
  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = *(v3 + 48);
  v11 = *v3;
  v10 = *(v3 + 16);
  *(v7 + 64) = *(v3 + 32);
  *(v7 + 80) = v9;
  *(v7 + 32) = v11;
  *(v7 + 48) = v10;
  v13 = *(v3 + 80);
  v12 = *(v3 + 96);
  v14 = *(v3 + 64);
  *(v7 + 144) = *(v3 + 112);
  *(v7 + 112) = v13;
  *(v7 + 128) = v12;
  *(v7 + 96) = v14;
  sub_24EA998B8(0, 0, v2, &unk_24F9E9910, v7);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24F35C04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  sub_24F92B7F8();
  v5[27] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F35C0E4, v7, v6);
}

uint64_t sub_24F35C0E4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);

  v3 = *(v2 + 72);
  v4 = *(v2 + 104);
  *(v0 + 32) = *(v2 + 88);
  *(v0 + 48) = v4;
  *(v0 + 16) = v3;
  v5 = *(v2 + 72);
  v6 = *(v2 + 104);
  *(v0 + 80) = *(v2 + 88);
  *(v0 + 96) = v6;
  *(v0 + 64) = v5;
  v7 = *v1;
  v8 = *(v1 + 16);
  *(v0 + 192) = *(v1 + 32);
  *(v0 + 160) = v7;
  *(v0 + 176) = v8;
  sub_24E60169C(v0 + 16, v0 + 112, &qword_27F240048, &unk_24F9E9838);
  sub_24F35D250(v1, v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240048, &unk_24F9E9838);
  sub_24F926F48();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24F35C220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 200) = a4;
  sub_24F92B7F8();
  *(v4 + 208) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F35C2B8, v6, v5);
}

uint64_t sub_24F35C2B8()
{

  if (qword_27F20FF08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = xmmword_27F39ACF8;
  v3 = xmmword_27F39AD08;
  v4 = byte_27F39AD18;
  v5 = *(v1 + 104);
  v6 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 72);
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  v7 = *(v1 + 72);
  v8 = *(v1 + 104);
  *(v0 + 80) = *(v1 + 88);
  *(v0 + 96) = v8;
  *(v0 + 64) = v7;
  *(v0 + 160) = v2;
  *(v0 + 176) = v3;
  *(v0 + 192) = v4;

  sub_24E60169C(v0 + 16, v0 + 112, &qword_27F240048, &unk_24F9E9838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240048, &unk_24F9E9838);
  sub_24F926F48();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24F35C438()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240050, &unk_24F9E9880);
  sub_24F926F38();
  return v1;
}

uint64_t sub_24F35C4C8()
{

  return swift_deallocObject();
}

unint64_t sub_24F35C510()
{
  result = qword_27F240058;
  if (!qword_27F240058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240040, &qword_24F9E9830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240058);
  }

  return result;
}

uint64_t objectdestroyTm_65()
{

  return swift_deallocObject();
}

uint64_t sub_24F35C638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F35C6A0(__n128 a1)
{
  v2 = (type metadata accessor for ArcadePageToolbarItemGroupsIntent(0) - 8);
  v3 = *(*v2 + 80);
  swift_unknownObjectRelease();

  v4 = v1 + ((v3 + 152) & ~v3) + v2[7];

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v7 = sub_24F9289E8();
  v33 = *(v7 - 8);
  v32 = *(v33 + 8);
  v32(v4 + v6, v7);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v8 = v4 + v5[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v31 = v7;
    v10 = type metadata accessor for CallProviderConversationHandle(0);
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v33 + 48))(v8 + v12, 1, v31))
      {
        v32(v8 + v12, v31);
      }
    }

    v13 = v8 + *(v9 + 20);
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v33 + 48))(v13 + v14, 1, v31))
      {
        v32(v13 + v14, v31);
      }
    }

    v7 = v31;
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v15 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {

    v17 = type metadata accessor for Game(0);
    v32(v15 + v17[18], v7);
    v18 = v17[19];
    if (!(*(v33 + 48))(v15 + v18, 1, v7))
    {
      v32(v15 + v18, v7);
    }

    v19 = v7;

    v20 = v17[21];
    v21 = sub_24F920818();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v15 + v20, 1, v21))
    {
      (*(v22 + 8))(v15 + v20, v21);
    }

    v7 = v19;
  }

  v23 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
  {

    v25 = type metadata accessor for Game(0);
    v32(v23 + v25[18], v7);
    v26 = v25[19];
    if (!(*(v33 + 48))(v23 + v26, 1, v7))
    {
      v32(v23 + v26, v7);
    }

    v27 = v25[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F35CD90(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ArcadePageToolbarItemGroupsIntent(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F35CDF4(uint64_t a1, __n128 a2)
{
  v5 = *(type metadata accessor for ArcadePageToolbarItemGroupsIntent(0) - 8);
  v6 = (*(v5 + 80) + 152) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24E614970;

  return sub_24F35B61C(a1, v7, v8, v2 + 4, v2 + v6);
}

uint64_t sub_24F35CEE8(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for ArcadePageToolbarItemGroupsIntent(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F35CF44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F35CFE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24F35C220(a1, v4, v5, v1 + 32);
}

uint64_t sub_24F35D094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F35D0DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F35D19C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24F35C04C(a1, v4, v5, v1 + 32, v1 + 152);
}

char *sub_24F35D2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v70 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C658, &qword_24F9909F0);
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v65 = &v61 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C660, &unk_24F9DDBA0);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v61 - v14;
  MEMORY[0x28223BE20](v15);
  v61 = &v61 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v61 - v27;
  v29 = sub_24F91F4A8();
  v30 = *(v29 - 8);
  v71 = *(v30 + 56);
  v71(v28, 1, 1, v29);
  if (a3 == 0x656461637261 && a4 == 0xE600000000000000)
  {
  }

  else
  {
    v31 = sub_24F92CE08();

    if ((v31 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  swift_getKeyPath();
  *&v79[0] = a2;
  sub_24F35D094(&qword_27F21FE50, type metadata accessor for ArcadeSubscription, &protocol conformance descriptor for ArcadeSubscription);
  sub_24F91FD88();

  v32 = v72;
  v33 = *(v72 + 16);
  if (*(a2 + 16) > 1u)
  {
    v25 = v22;
    v36 = 1;
    if (!v33)
    {
      goto LABEL_12;
    }

    v34 = sub_24E76D758(1);
    if ((v37 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v33)
  {
    v34 = sub_24E76D758(2);
    if (v35)
    {
LABEL_11:
      (*(v30 + 16))(v25, *(v32 + 56) + *(v30 + 72) * v34, v29);
      v36 = 0;
      goto LABEL_12;
    }
  }

  v36 = 1;
LABEL_12:
  sub_24E601704(v28, &qword_27F228530, &unk_24F93C6E0);
  v71(v25, v36, 1, v29);
  sub_24E911D90(v25, v28);
LABEL_13:
  sub_24E60169C(v28, v19, &qword_27F228530, &unk_24F93C6E0);
  if ((*(v30 + 48))(v19, 1, v29) == 1)
  {
    sub_24E601704(v19, &qword_27F228530, &unk_24F93C6E0);
    v38 = v72;
    v39 = v69;
    if (*(v72 + 16))
    {
      v40 = sub_24E76D758(0);
      v41 = v61;
      if (v42)
      {
        (*(v30 + 16))(v61, *(v38 + 56) + *(v30 + 72) * v40, v29);
        sub_24E601704(v28, &qword_27F228530, &unk_24F93C6E0);

        v43 = 0;
      }

      else
      {

        sub_24E601704(v28, &qword_27F228530, &unk_24F93C6E0);
        v43 = 1;
      }
    }

    else
    {

      sub_24E601704(v28, &qword_27F228530, &unk_24F93C6E0);
      v43 = 1;
      v41 = v61;
    }

    v71(v41, v43, 1, v29);
    sub_24E911D90(v41, v28);
  }

  else
  {

    sub_24E601704(v19, &qword_27F228530, &unk_24F93C6E0);
    v39 = v69;
  }

  sub_24E60169C(v28, v39, &qword_27F228530, &unk_24F93C6E0);
  type metadata accessor for GenericPageViewModel(0);
  memset(v79, 0, sizeof(v79));
  v80 = 0;
  v44 = swift_allocObject();
  v45 = qword_27F23DBC0;
  v75 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C668, &unk_24F9909F8);
  v46 = v62;
  sub_24F923058();
  v47 = *(v63 + 32);
  v48 = v64;
  v47(&v44[v45], v46, v64);
  v49 = qword_27F23DBC8;
  v75 = 0;
  sub_24F923058();
  v47(&v44[v49], v46, v48);
  v50 = qword_27F23DBD0;
  v75 = 0;
  v76 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
  v51 = v65;
  sub_24F923058();
  v52 = v68;
  v53 = *(v67 + 32);
  v53(&v44[v50], v51, v68);
  v54 = qword_27F23DBD8;
  v75 = 0;
  v76 = 1;
  sub_24F923058();
  v53(&v44[v54], v51, v52);
  *&v44[qword_27F39E160] = 0;
  *&v44[qword_27F39E168] = 0;
  type metadata accessor for PersonalizationDataProvider();
  v55 = v70;

  sub_24F928EF8();
  v56 = v75;
  v57 = v66;
  sub_24E60169C(v39, v66, &qword_27F228530, &unk_24F93C6E0);
  type metadata accessor for GenericDiffablePagePresenter(0);
  swift_allocObject();
  v58 = GenericDiffablePagePresenter.init(objectGraph:personalizationProvider:sidePackedPage:sidePackedPageRenderMetrics:pageUrl:)(v55, v56, 0, 0, v57);
  sub_24E60169C(v79, &v73, &qword_27F22C670, &unk_24F990A08);
  if (v74)
  {
    sub_24E612E28(&v73, &v75);
  }

  else
  {
    v77 = &type metadata for EditorialPageGridProvider;
    v78 = &off_2861EDD58;
  }

  v59 = sub_24EC6A8B4(v58, &v75, v55, v44);

  sub_24E601704(v79, &qword_27F22C670, &unk_24F990A08);
  sub_24E601704(v39, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v28, &qword_27F228530, &unk_24F93C6E0);
  return v59;
}

unint64_t sub_24F35DB5C()
{
  result = qword_27F240070;
  if (!qword_27F240070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240060, &unk_24F9E98B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240040, &qword_24F9E9830);
    sub_24F35C510();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240070);
  }

  return result;
}

uint64_t ChallengesHubEmptyStateShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F35DC94(uint64_t a1)
{
  v2 = sub_24F35DED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F35DCD0(uint64_t a1)
{
  v2 = sub_24F35DED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHubEmptyStateShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240078, &qword_24F9E9958);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v11 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F35DED0();
  sub_24F92D128();
  v14 = 0;
  v8 = v10[3];
  sub_24F92CD08();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24F92CD18();
  v12 = 2;
  sub_24F92CCA8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F35DED0()
{
  result = qword_27F240080;
  if (!qword_27F240080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240080);
  }

  return result;
}

uint64_t ChallengesHubEmptyStateShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240088, &qword_24F9E9960);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F35DED0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  v20 = sub_24F92CC38();
  v21 = 2;
  v13 = sub_24F92CBC8();
  v16 = v15;
  v20 &= 1u;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 24) = v19;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F35E1D4()
{
  result = qword_27F240090;
  if (!qword_27F240090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240090);
  }

  return result;
}

unint64_t sub_24F35E22C()
{
  result = qword_27F240098;
  if (!qword_27F240098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240098);
  }

  return result;
}

unint64_t sub_24F35E284()
{
  result = qword_27F2400A0;
  if (!qword_27F2400A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2400A0);
  }

  return result;
}

uint64_t ComponentBackgroundStyle.resolve(in:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0, &unk_24F9E9B60);
  MEMORY[0x28223BE20](v2);
  v4 = (&v11 - v3);
  sub_24F35E4E0();
  sub_24F924868();
  v5 = v12;
  if (qword_27F210D28 == -1)
  {
    if (!v12)
    {
LABEL_6:
      _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
      v6 = sub_24F926D08();

      v7 = *(v2 + 36);
      v8 = *MEMORY[0x277CE13B8];
      v9 = sub_24F927748();
      (*(*(v9 - 8) + 104))(v4 + v7, v8, v9);
      *v4 = v6;
      sub_24E602068(&qword_27F236200, &qword_27F217DC0, &unk_24F9E9B60, MEMORY[0x277CE03C0]);
      goto LABEL_7;
    }
  }

  else
  {
    swift_once();
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if (byte_27F39D1B1)
  {
    goto LABEL_6;
  }

  v11 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2346A8, &qword_24F9B34A0);
  sub_24E602068(&qword_27F2346B0, &qword_27F2346A8, &qword_24F9B34A0, MEMORY[0x277CE0848]);
LABEL_7:
  result = sub_24F9238D8();
  *a1 = result;
  return result;
}

unint64_t sub_24F35E4E0()
{
  result = qword_27F2400A8;
  if (!qword_27F2400A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2400A8);
  }

  return result;
}

id sub_24F35E5A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GSKClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24F35E6DC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = sub_24F9289E8();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_24F35E8BC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = sub_24F9289E8();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_24F35EAA8(uint64_t a1)
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
        sub_24F35EC84(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            sub_24F9289E8();
            if (v6 <= 0x3F)
            {
              sub_24F35EC84(319, &qword_27F2400C8, type metadata accessor for ChallengeCompletedCard.ParticipantResult, MEMORY[0x277D83940]);
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

uint64_t sub_24F35EC3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24F35EC84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F35ED1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F35ED9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerAvatar(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24F35EE0C(uint64_t a1)
{
  type metadata accessor for PlayerAvatar(319);
  if (v1 <= 0x3F)
  {
    sub_24E659BE8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F35EE90()
{
  if (*(v0 + *(type metadata accessor for ChallengeCompletedCard.ParticipantResult(0) + 20) + 8))
  {
    v1 = *v0;
  }

  else
  {
    v2 = *v0;
    v3 = sub_24F92CD88();
    MEMORY[0x253050C20](v3);

    MEMORY[0x253050C20](95, 0xE100000000000000);

    return v2;
  }

  return v1;
}

uint64_t sub_24F35EF64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240128, &qword_24F9E9D98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3604B4();
  sub_24F92D128();
  v8[15] = 0;
  type metadata accessor for PlayerAvatar(0);
  sub_24F35EC3C(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ChallengeCompletedCard.ParticipantResult(0);
    v8[14] = 1;
    sub_24F92CCE8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F35F124@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240118, &qword_24F9E9D90);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ChallengeCompletedCard.ParticipantResult(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3604B4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v8;
  v11 = v10;
  v12 = v24;
  v28 = 0;
  sub_24F35EC3C(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
  v14 = v25;
  v13 = v26;
  sub_24F92CC68();
  sub_24E7CB43C(v14, v11, type metadata accessor for PlayerAvatar);
  v27 = 1;
  v15 = sub_24F92CC08();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = v23;
  v19 = v11 + *(v22 + 20);
  *v19 = v15;
  *(v19 + 8) = v17 & 1;
  sub_24F3603EC(v11, v18, type metadata accessor for ChallengeCompletedCard.ParticipantResult);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F360454(v11, type metadata accessor for ChallengeCompletedCard.ParticipantResult);
}

uint64_t sub_24F35F460()
{
  if (*v0)
  {
    return 1802396018;
  }

  else
  {
    return 0x726174617661;
  }
}

uint64_t sub_24F35F490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726174617661 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000)
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

uint64_t sub_24F35F568(uint64_t a1)
{
  v2 = sub_24F3604B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F35F5A4(uint64_t a1)
{
  v2 = sub_24F3604B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F35F610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F35EE90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24F35F638@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_24F9289E8();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v39);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2400F0, &unk_24F9E9D78);
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v36 - v12;
  v14 = type metadata accessor for ChallengeCompletedCard(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + 40) = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 9) = 0;
  v46 = v16 + 40;
  sub_24E61DA68(&v50, (v16 + 40), qword_27F21B590, &unk_24F93BE30);
  v47 = v14;
  v17 = *(v14 + 24);
  v18 = sub_24F92A6D8();
  v19 = *(*(v18 - 8) + 56);
  v49 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24F3602E4();
  v21 = v45;
  sub_24F92D108();
  if (v21)
  {
    v23 = v46;
    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_24E601704(v23, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v16[v49], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v45 = v11;
    v36 = v8;
    v22 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v53 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v24 = v51;
    *v16 = v50;
    *(v16 + 1) = v24;
    *(v16 + 4) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v53 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v25 = v22;
    sub_24E61DA68(&v50, v46, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v50) = 2;
    sub_24E65CAA0();
    v26 = v45;
    sub_24F92CC68();
    sub_24E61DA68(v26, &v16[v49], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v50) = 3;
    sub_24F35EC3C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v27 = v36;
    sub_24F92CC18();
    v28 = v47;
    sub_24E6009C8(v27, &v16[v47[7]], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v50) = 4;
    sub_24F35EC3C(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v29 = v40;
    sub_24F92CC68();
    sub_24E7CB43C(v29, &v16[v28[8]], type metadata accessor for CommonCardAttributes);
    LOBYTE(v50) = 5;
    sub_24F35EC3C(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v30 = v38;
    v31 = v43;
    sub_24F92CC68();
    (*(v42 + 32))(&v16[v28[9]], v30, v31);
    LOBYTE(v50) = 6;
    v32 = sub_24F92CC28();
    v33 = &v16[v28[10]];
    *v33 = v32;
    v33[1] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240100, &qword_24F9E9D88);
    v53 = 7;
    sub_24F360338();
    sub_24F92CC68();
    (*(v25 + 8))(v13, v44);
    *&v16[v28[11]] = v50;
    sub_24F3603EC(v16, v37, type metadata accessor for ChallengeCompletedCard);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return sub_24F360454(v16, type metadata accessor for ChallengeCompletedCard);
  }
}

uint64_t sub_24F35FF6C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x656D614E656D6167;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000014;
    if (v1 != 4)
    {
      v6 = 0x6E6F6349656D6167;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 25705;
    v3 = 0x4D747865746E6F63;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0x6575676573;
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
}

uint64_t sub_24F360068@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F360738(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F360090(uint64_t a1)
{
  v2 = sub_24F3602E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3600CC(uint64_t a1)
{
  v2 = sub_24F3602E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F360140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F360218(uint64_t a1)
{
  *(a1 + 8) = sub_24F35EC3C(&qword_27F21AAC8, type metadata accessor for ChallengeCompletedCard, &unk_24F9E9D38);
  result = sub_24F35EC3C(&qword_27F2400E0, type metadata accessor for ChallengeCompletedCard, &unk_24F9E9CF4);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F3602E4()
{
  result = qword_27F2400F8;
  if (!qword_27F2400F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2400F8);
  }

  return result;
}

unint64_t sub_24F360338()
{
  result = qword_27F240108;
  if (!qword_27F240108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240100, &qword_24F9E9D88);
    sub_24F35EC3C(&qword_27F240110, type metadata accessor for ChallengeCompletedCard.ParticipantResult, &unk_24F9E9CA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240108);
  }

  return result;
}

uint64_t sub_24F3603EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F360454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F3604B4()
{
  result = qword_27F240120;
  if (!qword_27F240120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240120);
  }

  return result;
}

unint64_t sub_24F36052C()
{
  result = qword_27F240130;
  if (!qword_27F240130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240130);
  }

  return result;
}

unint64_t sub_24F360584()
{
  result = qword_27F240138;
  if (!qword_27F240138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240138);
  }

  return result;
}

unint64_t sub_24F3605DC()
{
  result = qword_27F240140;
  if (!qword_27F240140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240140);
  }

  return result;
}

unint64_t sub_24F360634()
{
  result = qword_27F240148;
  if (!qword_27F240148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240148);
  }

  return result;
}

unint64_t sub_24F36068C()
{
  result = qword_27F240150;
  if (!qword_27F240150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240150);
  }

  return result;
}

unint64_t sub_24F3606E4()
{
  result = qword_27F240158;
  if (!qword_27F240158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240158);
  }

  return result;
}

uint64_t sub_24F360738(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA743F0 == a2)
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

uint64_t sub_24F3609CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2401A8, &qword_24F9EA238);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3623B8();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for ProfileEditor(0);
    v8[13] = 2;
    sub_24F929608();
    sub_24F3624D4(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F360C58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240198, &unk_24F9EA228);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ProfileEditor(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v13 = (v12 + 40);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  sub_24E61DA68(&v30, (v12 + 40), qword_27F21B590, &unk_24F93BE30);
  v14 = *(v10 + 32);
  v15 = sub_24F929608();
  v16 = *(*(v15 - 8) + 56);
  v28 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24F3623B8();
  v18 = v27;
  sub_24F92D108();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_24E601704(v13, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v12[v28], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v27 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v33 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v19 = v26;
    sub_24F92CC68();
    v20 = v31;
    *v12 = v30;
    *(v12 + 1) = v20;
    *(v12 + 4) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v33 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v21 = v25;
    sub_24E61DA68(&v30, v13, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v30) = 2;
    sub_24F3624D4(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v22 = v27;
    sub_24F92CC18();
    (*(v21 + 8))(v8, v19);
    sub_24E61DA68(v22, &v12[v28], &qword_27F213E68, &unk_24F93BC80);
    sub_24F36240C(v12, v24, type metadata accessor for ProfileEditor);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return sub_24F362474(v12, type metadata accessor for ProfileEditor);
  }
}

unint64_t sub_24F361144()
{
  v1 = 0x6575676573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_24F361194@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F361B20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3611BC(uint64_t a1)
{
  v2 = sub_24F3623B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3611F8(uint64_t a1)
{
  v2 = sub_24F3623B8();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_24F361264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  v72 = a3;
  v67 = type metadata accessor for NicknameSection(0);
  MEMORY[0x28223BE20](v67);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - v9;
  MEMORY[0x28223BE20](v11);
  v68 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v69 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  v21 = type metadata accessor for AvatarSection(0);
  MEMORY[0x28223BE20](v21);
  v66 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  MEMORY[0x28223BE20](v26);
  v73 = &v62 - v27;
  v28 = objc_opt_self();
  v70 = a1;

  v74 = v28;
  result = [v28 shared];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v30 = result;
  v31 = [result isAccountModificationRestricted];

  v63 = v7;
  v64 = a4;
  if (v31)
  {
    v65 = 1;
  }

  else
  {
    result = [v74 shared];
    if (!result)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v32 = result;
    v65 = [result isProfileModificationRestricted];
  }

  v33 = v21[7];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CD60, &unk_24F9CEF00);
  (*(*(v34 - 8) + 56))(&v25[v33], 1, 1, v34);
  v35 = &v25[v21[8]];
  LOBYTE(v75) = 0;
  sub_24F926F28();
  v36 = v77;
  *v35 = v76;
  *(v35 + 1) = v36;
  v37 = sub_24F9289E8();
  (*(*(v37 - 8) + 56))(v20, 1, 1, v37);
  sub_24E60169C(v20, v17, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24F926F28();
  sub_24E601704(v20, &qword_27F213FB0, &qword_24F93E6B0);
  v38 = &v25[v21[10]];
  *v38 = swift_getKeyPath();
  v38[40] = 0;
  v39 = v21[11];
  *&v25[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  v40 = &v25[v21[12]];
  LOBYTE(v75) = 0;
  sub_24F926F28();
  v41 = v77;
  *v40 = v76;
  *(v40 + 1) = v41;
  v42 = v70;
  *v25 = 0x405E000000000000;
  *(v25 + 1) = v42;
  v43 = sub_24F92B858();
  v44 = v69;
  (*(*(v43 - 8) + 56))(v69, 1, 1, v43);
  sub_24F92B7F8();

  v45 = sub_24F92B7E8();
  v46 = swift_allocObject();
  v47 = MEMORY[0x277D85700];
  v46[2] = v45;
  v46[3] = v47;
  v46[4] = v42;
  sub_24EA998B8(0, 0, v44, &unk_24F9923E0, v46);

  v25[16] = v65;
  v48 = v73;
  sub_24F362350(v25, v73, type metadata accessor for AvatarSection);
  v76 = v71;
  v77 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CCD8, &qword_24F992110);
  sub_24F926F38();
  result = [v74 shared];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v49 = result;
  v50 = [result isAccountModificationRestricted];

  v51 = v64;
  if (v50)
  {
    v52 = 1;
LABEL_11:
    *v10 = swift_getKeyPath();
    v10[40] = 0;
    v54 = v67;
    v55 = *(v67 + 20);
    *&v10[v55] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for NicknameModel(0);
    sub_24F3624D4(&unk_27F241D30, type metadata accessor for NicknameModel, &unk_24FA07B98);
    sub_24F927378();
    v10[*(v54 + 28)] = v52;
    v56 = &v10[*(v54 + 32)];
    LOBYTE(v75) = 0;
    sub_24F926F28();
    v57 = v77;
    *v56 = v76;
    *(v56 + 1) = v57;
    v58 = v68;
    sub_24F362350(v10, v68, type metadata accessor for NicknameSection);
    v59 = v66;
    sub_24F36240C(v48, v66, type metadata accessor for AvatarSection);
    v60 = v63;
    sub_24F36240C(v58, v63, type metadata accessor for NicknameSection);
    sub_24F36240C(v59, v51, type metadata accessor for AvatarSection);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240190, &qword_24F9EA220);
    sub_24F36240C(v60, v51 + *(v61 + 48), type metadata accessor for NicknameSection);
    sub_24F362474(v58, type metadata accessor for NicknameSection);
    sub_24F362474(v48, type metadata accessor for AvatarSection);
    sub_24F362474(v60, type metadata accessor for NicknameSection);
    return sub_24F362474(v59, type metadata accessor for AvatarSection);
  }

  result = [v74 shared];
  if (result)
  {
    v53 = result;
    v52 = [result isProfileModificationRestricted];

    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_24F361A34@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240188, &unk_24F9EA1A8);
  return sub_24F361264(v4, v5, v6, a2 + *(v7 + 44));
}

uint64_t sub_24F361AA0(uint64_t a1)
{
  sub_24F362168();

  return sub_24F9218E8();
}

uint64_t sub_24F361B20(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
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

uint64_t sub_24F361C34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0, &qword_24F95E500);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - v4;
  v6 = qword_27F210A50;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v8 = v13;
  if (qword_27F210A58 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  v7(v5, v2);
  v9 = v13;
  type metadata accessor for NicknameModel(0);
  swift_allocObject();
  v10 = sub_24F54A3C0(a1, v8, v9);

  v12[1] = v10;

  sub_24F926F28();

  return a1;
}

uint64_t sub_24F361EB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F361F80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ProfileEditor(uint64_t a1)
{
  result = qword_27F240160;
  if (!qword_27F240160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F36207C(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C8D4(319);
    if (v2 <= 0x3F)
    {
      sub_24E61C938(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F362168()
{
  result = qword_27F240170;
  if (!qword_27F240170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240170);
  }

  return result;
}

unint64_t sub_24F362208()
{
  result = qword_27F240180;
  if (!qword_27F240180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240180);
  }

  return result;
}

uint64_t sub_24F362310()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F362350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F3623B8()
{
  result = qword_27F2401A0;
  if (!qword_27F2401A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2401A0);
  }

  return result;
}

uint64_t sub_24F36240C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F362474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F3624D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F362574()
{
  result = qword_27F2401C0;
  if (!qword_27F2401C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2401C0);
  }

  return result;
}

unint64_t sub_24F3625CC()
{
  result = qword_27F2401C8;
  if (!qword_27F2401C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2401C8);
  }

  return result;
}

unint64_t sub_24F362624()
{
  result = qword_27F2401D0;
  if (!qword_27F2401D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2401D0);
  }

  return result;
}

double sub_24F362678(uint64_t a1)
{
  v1 = sub_24F9258D8();
  v2 = sub_24F925A08();
  result = 8.0;
  xmmword_27F39E3C0 = xmmword_24F9EA360;
  qword_27F39E3D0 = v1;
  unk_27F39E3D8 = v2;
  return result;
}

uint64_t sub_24F3626CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F36279C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ActivitySharingSection(uint64_t a1)
{
  result = qword_27F240290;
  if (!qword_27F240290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F362898(uint64_t a1)
{
  type metadata accessor for GKPlayerAgeCategory(319);
  if (v1 <= 0x3F)
  {
    sub_24F3629D0(319, &qword_27F23A8B0, &type metadata for Player.ProfilePrivacyVisibilityLevel, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_24F3629D0(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_24E600550(319);
        if (v4 <= 0x3F)
        {
          sub_24E6D74E4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F3629D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24F362A20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F362A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F362AD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_24F924E98();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivitySharingSection(0);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2402A0, &qword_24F9EA418);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2402A8, &qword_24F9EA420);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2402B0, &qword_24F9EA428);
  v17 = *(v16 - 8);
  v43 = v16;
  v44 = v17;
  MEMORY[0x28223BE20](v16);
  v39 = &v38 - v18;
  v19 = sub_24F924C98();
  v20 = *(v2 + 48);
  *v12 = v19;
  *(v12 + 1) = v20;
  v12[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2402B8, &qword_24F9EA430);
  sub_24F362FE8(v2, &v12[*(v21 + 44)]);
  v22 = *(v2 + 40);
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = &v12[*(v10 + 44)];
  *v25 = KeyPath;
  v25[1] = sub_24E600A48;
  v25[2] = v24;
  if (v22)
  {
    v26 = 0.5;
  }

  else
  {
    v26 = 1.0;
  }

  sub_24F36542C(v12, v15);
  *&v15[*(v13 + 36)] = v26;
  sub_24F365B00(v2, &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivitySharingSection);
  v27 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v28 = swift_allocObject();
  sub_24F36549C(&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  sub_24F925228();
  v29 = sub_24F365578();
  v30 = MEMORY[0x277CE0380];
  v31 = v39;
  v32 = v41;
  sub_24F9262A8();

  (*(v42 + 8))(v6, v32);
  sub_24E601704(v15, &qword_27F2402A8, &qword_24F9EA420);
  v33._object = 0x800000024FA65DE0;
  v33._countAndFlagsBits = 0xD00000000000001CLL;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v52 = localizedString(_:comment:)(v33, v34);
  v35 = *(v2 + 112);
  v50 = *(v2 + 104);
  v51 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  v46 = v13;
  v47 = v32;
  v48 = v29;
  v49 = v30;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v36 = v43;
  sub_24F926918();

  return (*(v44 + 8))(v31, v36);
}

uint64_t sub_24F362FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = type metadata accessor for ActivitySharingSection(0);
  KeyPath = *(v3 - 8);
  v78 = *(KeyPath + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2402E0, &qword_24F9EA478);
  MEMORY[0x28223BE20](v80);
  v84 = &v75 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2402E8, &qword_24F9EA480) - 8;
  MEMORY[0x28223BE20](v81);
  v86 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v75 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2402F0, &qword_24F9EA488) - 8;
  MEMORY[0x28223BE20](v75);
  v85 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v87 = &v75 - v11;
  v12 = *(a1 + 16);
  *&v109 = *(a1 + 8);
  *(&v109 + 1) = v12;
  v77 = sub_24E600AEC();

  v13 = sub_24F925E18();
  v15 = v14;
  v17 = v16;
  v18 = sub_24F925C98();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_24E600B40(v13, v15, v17 & 1);

  LOBYTE(v13) = sub_24F9257F8();
  sub_24F923318();
  v135 = v22 & 1;
  v134 = 0;
  *&v136 = v18;
  *(&v136 + 1) = v20;
  LOBYTE(v137) = v22 & 1;
  *(&v137 + 1) = v95;
  DWORD1(v137) = *(&v95 + 3);
  *(&v137 + 1) = v24;
  LOBYTE(v138) = v13;
  DWORD1(v138) = *(&v88 + 3);
  *(&v138 + 1) = v88;
  *(&v138 + 1) = v25;
  *v139 = v26;
  *&v139[8] = v27;
  *&v139[16] = v28;
  v139[24] = 0;
  v110 = v137;
  v111 = v138;
  *v112 = *v139;
  *&v112[9] = *&v139[9];
  v109 = v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217790, &qword_24F946350);
  sub_24E6AF8AC();
  v29 = v87;
  sub_24F9268B8();
  sub_24E601704(&v136, &qword_27F217790, &qword_24F946350);
  *(v29 + *(v75 + 44)) = sub_24F925198();
  sub_24F363930(v84);
  v30 = *(a1 + 88);
  v31 = *(a1 + 96);
  *&v109 = *(a1 + 80);
  *(&v109 + 1) = v30;
  LOBYTE(v110) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8, &qword_24F9CEEE0);
  MEMORY[0x25304CAF0](&v95, v32);
  v33 = v76;
  sub_24F365B00(a1, v76, type metadata accessor for ActivitySharingSection);
  v34 = (*(KeyPath + 80) + 16) & ~*(KeyPath + 80);
  v35 = swift_allocObject();
  sub_24F36549C(v33, v35 + v34);
  sub_24F365D14(&qword_27F2402F8, &qword_27F2402E0, &qword_24F9EA478, sub_24F365704);
  sub_24F365848();
  v36 = v83;
  v37 = v84;
  sub_24F926AC8();

  sub_24E601704(v37, &qword_27F2402E0, &qword_24F9EA478);
  sub_24F365B00(a1, v33, type metadata accessor for ActivitySharingSection);
  v38 = swift_allocObject();
  sub_24F36549C(v33, v38 + v34);
  v39 = (v36 + *(v81 + 44));
  v40 = v36;
  *v39 = sub_24F365A10;
  v39[1] = v38;
  v39[2] = 0;
  v39[3] = 0;
  v41 = *(a1 + 32);
  *&v109 = *(a1 + 24);
  *(&v109 + 1) = v41;

  v42 = sub_24F925E18();
  v44 = v43;
  LOBYTE(v36) = v45;
  v46 = sub_24F925C98();
  v80 = v47;
  v81 = v46;
  LOBYTE(v33) = v48;
  v84 = v49;
  sub_24E600B40(v42, v44, v36 & 1);

  LOBYTE(v36) = sub_24F9257F8();
  sub_24F923318();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  LOBYTE(v109) = v33 & 1;
  LOBYTE(v95) = 0;
  LODWORD(v24) = sub_24F9251C8();
  sub_24F927628();
  sub_24F9242E8();
  KeyPath = swift_getKeyPath();
  v58 = v85;
  sub_24E60169C(v87, v85, &qword_27F2402F0, &qword_24F9EA488);
  v59 = v86;
  sub_24E60169C(v40, v86, &qword_27F2402E8, &qword_24F9EA480);
  v60 = v58;
  v61 = v82;
  sub_24E60169C(v60, v82, &qword_27F2402F0, &qword_24F9EA488);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240338, &qword_24F9EA4D8);
  sub_24E60169C(v59, v61 + *(v62 + 48), &qword_27F2402E8, &qword_24F9EA480);
  v63 = v61 + *(v62 + 64);
  v65 = v80;
  v64 = v81;
  *&v95 = v81;
  *(&v95 + 1) = v80;
  LOBYTE(v96) = v33 & 1;
  *(&v96 + 1) = *v129;
  DWORD1(v96) = *&v129[3];
  v66 = v84;
  *(&v96 + 1) = v84;
  LOBYTE(v97) = v36;
  *(&v97 + 1) = *v128;
  DWORD1(v97) = *&v128[3];
  *(&v97 + 1) = v51;
  *&v98 = v53;
  *(&v98 + 1) = v55;
  *&v99 = v57;
  BYTE8(v99) = 0;
  *(&v99 + 9) = v130;
  BYTE11(v99) = v131;
  HIDWORD(v99) = v24;
  v104 = v92;
  v105 = v93;
  v106 = v94;
  v100 = v88;
  v101 = v89;
  v103 = v91;
  v102 = v90;
  LOWORD(v107) = 256;
  WORD3(v107) = v133;
  *(&v107 + 2) = v132;
  v67 = KeyPath;
  *(&v107 + 1) = KeyPath;
  v108 = 0;
  *(v63 + 208) = 0;
  v68 = v96;
  *v63 = v95;
  *(v63 + 16) = v68;
  v69 = v100;
  *(v63 + 64) = v99;
  *(v63 + 80) = v69;
  v70 = v98;
  *(v63 + 32) = v97;
  *(v63 + 48) = v70;
  v71 = v104;
  *(v63 + 128) = v103;
  *(v63 + 144) = v71;
  v72 = v102;
  *(v63 + 96) = v101;
  *(v63 + 112) = v72;
  v73 = v106;
  *(v63 + 160) = v105;
  *(v63 + 176) = v73;
  *(v63 + 192) = v107;
  sub_24E60169C(&v95, &v109, &qword_27F240340, &qword_24F9EA4E0);
  sub_24E601704(v83, &qword_27F2402E8, &qword_24F9EA480);
  sub_24E601704(v87, &qword_27F2402F0, &qword_24F9EA488);
  *&v109 = v64;
  *(&v109 + 1) = v65;
  LOBYTE(v110) = v33 & 1;
  *(&v110 + 1) = *v129;
  DWORD1(v110) = *&v129[3];
  *(&v110 + 1) = v66;
  LOBYTE(v111) = v36;
  *(&v111 + 1) = *v128;
  DWORD1(v111) = *&v128[3];
  *(&v111 + 1) = v51;
  *v112 = v53;
  *&v112[8] = v55;
  *&v112[16] = v57;
  v112[24] = 0;
  v114 = v131;
  v113 = v130;
  v115 = v24;
  v120 = v92;
  v121 = v93;
  v122 = v94;
  v116 = v88;
  v117 = v89;
  v118 = v90;
  v119 = v91;
  v123 = 256;
  v125 = v133;
  v124 = v132;
  v126 = v67;
  v127 = 0;
  sub_24E601704(&v109, &qword_27F240340, &qword_24F9EA4E0);
  sub_24E601704(v86, &qword_27F2402E8, &qword_24F9EA480);
  return sub_24E601704(v85, &qword_27F2402F0, &qword_24F9EA488);
}

uint64_t sub_24F363930@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240348, &qword_24F9EA4E8);
  MEMORY[0x28223BE20](v3);
  v7 = *v1 == 3 || *v1 == 0;
  v47 = v6;
  v48 = v4;
  v46 = &v46 - v5;
  if (v7)
  {
    if (qword_27F211160 != -1)
    {
      swift_once();
    }

    v8 = &qword_27F240288;
  }

  else
  {
    if (qword_27F211158 != -1)
    {
      swift_once();
    }

    v8 = &qword_27F240280;
  }

  v9 = *v8;

  MEMORY[0x28223BE20](v10);
  *(&v46 - 2) = v1;
  *(&v46 - 1) = v9;
  MEMORY[0x28223BE20](v11);
  *(&v46 - 2) = v9;
  *(&v46 - 1) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240350, &qword_24F9EA4F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240358, &qword_24F9EA4F8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240360, &qword_24F9EA500);
  v13 = sub_24F365B78();
  v49[0] = v12;
  v49[1] = v13;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F2403B0, &qword_27F240358, &qword_24F9EA4F8, MEMORY[0x277CDF038]);
  v14 = v46;
  sub_24F925AB8();

  v49[3] = sub_24F9271D8();
  v49[4] = sub_24F366088(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24F924B38();
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, v16, v17);
  sub_24E60169C(v49, a1, &qword_27F2403B8, &qword_24F9EA530);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240328, &qword_24F9EA4A0);
  v20 = v47;
  v19 = v48;
  (*(v47 + 16))(a1 + v18[9], v14, v48);
  v21 = a1 + v18[10];
  *v21 = sub_24F923398() & 1;
  *(v21 + 8) = v22;
  *(v21 + 16) = v23 & 1;
  v24 = a1 + v18[11];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v25 = qword_27F24E488;
  v26 = sub_24F923398();
  v28 = v27;
  v30 = v29;
  v31 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240318, &qword_24F9EA498) + 36);
  *v31 = v25;
  *(v31 + 8) = v26 & 1;
  *(v31 + 16) = v28;
  *(v31 + 24) = v30 & 1;
  LOBYTE(v25) = sub_24F923398();
  v33 = v32;
  LOBYTE(v28) = v34;
  sub_24E601704(v49, &qword_27F2403B8, &qword_24F9EA530);
  (*(v20 + 8))(v14, v19);
  v35 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240308, &qword_24F9EA490) + 36);
  *v35 = v25 & 1;
  *(v35 + 8) = v33;
  *(v35 + 16) = v28 & 1;
  LOBYTE(v25) = sub_24F925868();
  sub_24F923318();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2402E0, &qword_24F9EA478);
  v45 = a1 + *(result + 36);
  *v45 = v25;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_24F363E54(uint64_t a1)
{
  v2 = sub_24F921B58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SetProfilePrivacyAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v16[0] = *(a1 + 80);
  v16[1] = v9;
  v17 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8, &qword_24F9CEEE0);
  MEMORY[0x25304CAF0](v15, v11);
  v12 = v15[0];
  sub_24F928A98();
  *v8 = v12;
  sub_24F7695C8(v16);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(v16, v18);
    v15[3] = v6;
    v15[4] = sub_24F366088(&qword_27F216398, type metadata accessor for SetProfilePrivacyAction, &unk_24FA1ECA8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    sub_24F365B00(v8, boxed_opaque_existential_1, type metadata accessor for SetProfilePrivacyAction);
    type metadata accessor for ActivitySharingSection(0);
    sub_24F76973C(v5);
    sub_24F9218A8();
    (*(v3 + 8))(v5, v2);
    sub_24F365AA4(v8);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_24F365AA4(v8);
    return sub_24E601704(v16, &unk_27F212740, &unk_24F940730);
  }
}

void sub_24F3640B4(uint64_t a1)
{
  v2 = sub_24F921B58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SetProfilePrivacyAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 40))
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E8E0);
    v19 = sub_24F9220B8();
    v10 = sub_24F92BD98();
    if (os_log_type_enabled(v19, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v19, v10, "Privacy editing is restricted. Skipping changing the default privacy.", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    v12 = v19;
  }

  else
  {
    v13 = *(a1 + 88);
    v14 = *(a1 + 96);
    v21[0] = *(a1 + 80);
    v21[1] = v13;
    v22 = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8, &qword_24F9CEEE0);
    MEMORY[0x25304CAF0](v20, v15);
    v16 = v20[0];
    sub_24F928A98();
    *v8 = v16;
    sub_24F7695C8(v21);
    if (v23)
    {
      __swift_project_boxed_opaque_existential_1(v21, v23);
      v20[3] = v6;
      v20[4] = sub_24F366088(&qword_27F216398, type metadata accessor for SetProfilePrivacyAction, &unk_24FA1ECA8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
      sub_24F365B00(v8, boxed_opaque_existential_1, type metadata accessor for SetProfilePrivacyAction);
      type metadata accessor for ActivitySharingSection(0);
      sub_24F76973C(v5);
      sub_24F9218A8();
      (*(v3 + 8))(v5, v2);
      sub_24F365AA4(v8);
      __swift_destroy_boxed_opaque_existential_1(v20);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      sub_24F365AA4(v8);
      sub_24E601704(v21, &unk_27F212740, &unk_24F940730);
    }
  }
}

uint64_t sub_24F364400(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24F364470(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8, &qword_24F9CEEE0);
  sub_24F927198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2403D0, &qword_24F9EA5A8);
  sub_24F365EB4();
  sub_24F365F08();
  return sub_24F927088();
}

uint64_t sub_24F364550(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2403F8, &qword_24F9EA5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2403F0, &qword_24F9EA5B0);
  sub_24E602068(&qword_27F240400, &qword_27F2403F8, &qword_24F9EA5B8, MEMORY[0x277D83980]);
  sub_24F365F8C();
  sub_24F3660D0();
  return sub_24F927238();
}

uint64_t sub_24F364640(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240410, &qword_24F9EA5C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = a1[3];
  v7 = *(a1 + 48);
  v13 = a1[2];
  v14 = v6;
  sub_24E600AEC();

  *v5 = sub_24F925E18();
  *(v5 + 1) = v8;
  v5[16] = v9 & 1;
  *(v5 + 3) = v10;
  v5[32] = v7;
  v5[33] = 1;
  v11 = sub_24F365EB4();
  v13 = MEMORY[0x277CE0BD8];
  v14 = &type metadata for Player.ProfilePrivacyVisibilityLevel;
  v15 = MEMORY[0x277CE0BC8];
  v16 = v11;
  swift_getOpaqueTypeConformance2();
  sub_24F9262F8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F3647D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = sub_24F9248C8();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240360, &qword_24F9EA500);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v22 = sub_24F9249A8();
  v32 = 1;
  sub_24F364B44(a1, a2, &v27);
  v35 = v29;
  v36[0] = v30[0];
  *(v36 + 12) = *(v30 + 12);
  v33 = v27;
  v34 = v28;
  v37[2] = v29;
  v38[0] = v30[0];
  *(v38 + 12) = *(v30 + 12);
  v37[0] = v27;
  v37[1] = v28;
  sub_24E60169C(&v33, v26, &qword_27F2403C8, &unk_24F9EA568);
  sub_24E601704(v37, &qword_27F2403C8, &unk_24F9EA568);
  *&v31[23] = v34;
  *&v31[39] = v35;
  *&v31[55] = v36[0];
  *&v31[67] = *(v36 + 12);
  *&v31[7] = v33;
  v21 = v32;
  v10 = objc_opt_self();
  v11 = [v10 labelColor];
  v20 = sub_24F926BF8();
  LOBYTE(a1) = sub_24F925808();
  LOBYTE(v27) = 0;
  v12 = [v10 secondarySystemBackgroundColor];
  v13 = sub_24F926BF8();
  LOBYTE(v10) = sub_24F925808();
  v14 = &v9[*(v7 + 36)];
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_24F924B38();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0, &qword_24F951970) + 36)] = 256;
  v17 = *&v31[48];
  *(v9 + 49) = *&v31[32];
  *(v9 + 65) = v17;
  *(v9 + 81) = *&v31[64];
  v18 = *&v31[16];
  *(v9 + 17) = *v31;
  *v9 = v22;
  *(v9 + 1) = 0;
  v9[16] = v21;
  *(v9 + 24) = *&v31[79];
  *(v9 + 33) = v18;
  *(v9 + 13) = v20;
  v9[112] = a1;
  *(v9 + 113) = v27;
  *(v9 + 29) = *(&v27 + 3);
  *(v9 + 120) = xmmword_24F956A30;
  *(v9 + 136) = xmmword_24F956A30;
  v9[152] = 0;
  *(v9 + 153) = v26[0];
  *(v9 + 39) = *(v26 + 3);
  *(v9 + 20) = v13;
  v9[168] = v10;
  sub_24F9248B8();
  sub_24F365B78();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v23 + 8))(v6, v25);
  return sub_24E601704(v9, &qword_27F240360, &qword_24F9EA500);
}

uint64_t sub_24F364B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v30 = a2;
  sub_24E7AB11C(sub_24F365E84, a1, &v31);
  v9 = v32;
  if (v32)
  {
    v28 = v35;
    v29 = v36;
    v11 = v33;
    v10 = v34;
    v12 = v31;
    v27[3] = v37;
    v31 = v33;
    v32 = v34;
    sub_24E600AEC();

    v13 = sub_24F925E18();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_24E687F7C(v12, v9, v11, v10, v28, v29);
    v9 = v17 & 1;
    sub_24E5FD138(v13, v15, v17 & 1);
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v19 = 0;
  }

  v20 = sub_24F926DF8();
  v21 = sub_24F925908();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v22 = sub_24F925968();
  sub_24E601704(v8, &qword_27F214698, &unk_24F95F810);
  KeyPath = swift_getKeyPath();
  v24 = sub_24F9251C8();
  LOBYTE(v31) = 1;
  sub_24E65D2B4(v13, v15, v9, v19);

  sub_24E65D2F8(v13, v15, v9, v19);
  v25 = v31;
  *a3 = v13;
  *(a3 + 8) = v15;
  *(a3 + 16) = v9;
  *(a3 + 24) = v19;
  *(a3 + 32) = 0;
  *(a3 + 40) = v25;
  *(a3 + 48) = v20;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = v22;
  *(a3 + 72) = v24;

  return sub_24E65D2F8(v13, v15, v9, v19);
}

uint64_t sub_24F364DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 88);
  v4 = *(a2 + 96);
  v17 = *(a2 + 80);
  v18 = v3;
  v19 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A8D8, &qword_24F9CEEE0);
  MEMORY[0x25304CAF0](&v16, v5);
  v6 = 0x4F73646E65697266;
  v7 = 0xEB00000000796C6ELL;
  if (v2 != 1)
  {
    v6 = 0x796C6E4F656DLL;
    v7 = 0xE600000000000000;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x656E6F7972657665;
  }

  if (v2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  v10 = 0x4F73646E65697266;
  v11 = 0xEB00000000796C6ELL;
  if (v16 != 1)
  {
    v10 = 0x796C6E4F656DLL;
    v11 = 0xE600000000000000;
  }

  if (v16)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x656E6F7972657665;
  }

  if (v16)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  if (v8 == v12 && v9 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_24F92CE08();
  }

  return v14 & 1;
}

double sub_24F364F24()
{
  if (qword_27F2116C8 != -1)
  {
    swift_once();
  }

  qword_27F2401D8 = 0x656E6F7972657645;
  unk_27F2401E0 = 0xE800000000000000;
  qword_27F2401E8 = qword_27F39EE58;
  unk_27F2401F0 = unk_27F39EE60;
  qword_27F2401F8 = 0x6C6C69662E657965;
  unk_27F240200 = 0xE800000000000000;
  byte_27F240208 = 0;

  return result;
}

double sub_24F364FC0()
{
  if (qword_27F2116D0 != -1)
  {
    swift_once();
  }

  qword_27F240210 = 0x4F73646E65697246;
  *algn_27F240218 = 0xEB00000000796C6ELL;
  qword_27F240220 = qword_27F39EE68;
  unk_27F240228 = unk_27F39EE70;
  strcpy(&qword_27F240230, "person.2.fill");
  unk_27F24023E = -4864;
  byte_27F240240 = 1;

  return result;
}

double sub_24F365078()
{
  if (qword_27F2116D8 != -1)
  {
    swift_once();
  }

  qword_27F240248 = 0x756F59796C6E4FLL;
  unk_27F240250 = 0xE700000000000000;
  qword_27F240258 = qword_27F39EE78;
  unk_27F240260 = unk_27F39EE80;
  strcpy(&qword_27F240268, "eye.slash.fill");
  unk_27F240277 = -18;
  byte_27F240278 = 2;

  return result;
}

double sub_24F365128()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2403C0, &qword_24F9EA560);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9479A0;
  if (qword_27F211140 != -1)
  {
    swift_once();
  }

  v1 = unk_27F2401E0;
  v2 = qword_27F2401E8;
  v3 = unk_27F2401F0;
  v4 = qword_27F2401F8;
  v5 = unk_27F240200;
  v6 = byte_27F240208;
  *(v0 + 32) = qword_27F2401D8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  v7 = qword_27F211148;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *algn_27F240218;
  v9 = qword_27F240220;
  v10 = unk_27F240228;
  v11 = qword_27F240230;
  v12 = unk_27F240238;
  v13 = byte_27F240240;
  *(v0 + 88) = qword_27F240210;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v13;
  v14 = qword_27F211150;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = unk_27F240250;
  v16 = qword_27F240258;
  v17 = unk_27F240260;
  v18 = qword_27F240268;
  v19 = unk_27F240270;
  v20 = byte_27F240278;
  *(v0 + 144) = qword_27F240248;
  *(v0 + 152) = v15;
  *(v0 + 160) = v16;
  *(v0 + 168) = v17;
  *(v0 + 176) = v18;
  *(v0 + 184) = v19;
  *(v0 + 192) = v20;
  qword_27F240280 = v0;

  return result;
}

double sub_24F3652D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2403C0, &qword_24F9EA560);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93A400;
  if (qword_27F211148 != -1)
  {
    swift_once();
  }

  v1 = *algn_27F240218;
  v2 = qword_27F240220;
  v3 = unk_27F240228;
  v4 = qword_27F240230;
  v5 = unk_27F240238;
  v6 = byte_27F240240;
  *(v0 + 32) = qword_27F240210;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  v7 = qword_27F211150;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = unk_27F240250;
  v9 = qword_27F240258;
  v10 = unk_27F240260;
  v11 = qword_27F240268;
  v12 = unk_27F240270;
  v13 = byte_27F240278;
  *(v0 + 88) = qword_27F240248;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v13;
  qword_27F240288 = v0;

  return result;
}

uint64_t sub_24F36542C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2402A0, &qword_24F9EA418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F36549C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F365500()
{
  v1 = *(type metadata accessor for ActivitySharingSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24F364400(v2);
}

unint64_t sub_24F365578()
{
  result = qword_27F2402C0;
  if (!qword_27F2402C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2402A8, &qword_24F9EA420);
    sub_24F365604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2402C0);
  }

  return result;
}

unint64_t sub_24F365604()
{
  result = qword_27F2402C8;
  if (!qword_27F2402C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2402A0, &qword_24F9EA418);
    sub_24E602068(&qword_27F2402D0, &qword_27F2402D8, &qword_24F9EA470, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2402C8);
  }

  return result;
}

unint64_t sub_24F365704()
{
  result = qword_27F240300;
  if (!qword_27F240300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240308, &qword_24F9EA490);
    sub_24F365790();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240300);
  }

  return result;
}

unint64_t sub_24F365790()
{
  result = qword_27F240310;
  if (!qword_27F240310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240318, &qword_24F9EA498);
    sub_24E602068(&qword_27F240320, &qword_27F240328, &qword_24F9EA4A0, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240310);
  }

  return result;
}

unint64_t sub_24F365848()
{
  result = qword_27F240330;
  if (!qword_27F240330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240330);
  }

  return result;
}

uint64_t objectdestroy_8Tm_1()
{
  v1 = type metadata accessor for ActivitySharingSection(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 160))
  {
    if (*(v2 + 144))
    {
      __swift_destroy_boxed_opaque_existential_1((v2 + 120));
    }
  }

  else
  {
  }

  v3 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F921B58();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F365A28(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ActivitySharingSection(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24F365AA4(uint64_t a1)
{
  v2 = type metadata accessor for SetProfilePrivacyAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F365B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F365B78()
{
  result = qword_27F240368;
  if (!qword_27F240368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240360, &qword_24F9EA500);
    sub_24F365C30();
    sub_24E602068(&qword_27F21B728, &unk_27F2552C0, &qword_24F951970, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240368);
  }

  return result;
}

unint64_t sub_24F365C30()
{
  result = qword_27F240370;
  if (!qword_27F240370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240378, &qword_24F9EA508);
    sub_24F365D14(&qword_27F240380, &qword_27F240388, &qword_24F9EA510, sub_24F365D98);
    sub_24E602068(&qword_27F216518, &qword_27F216520, &qword_24F9423F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240370);
  }

  return result;
}

uint64_t sub_24F365D14(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24F365D98()
{
  result = qword_27F240390;
  if (!qword_27F240390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240398, &qword_24F9EA518);
    sub_24E602068(&qword_27F2403A0, &qword_27F2403A8, &unk_24F9EA520, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240390);
  }

  return result;
}

unint64_t sub_24F365EB4()
{
  result = qword_27F2403D8;
  if (!qword_27F2403D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2403D8);
  }

  return result;
}

unint64_t sub_24F365F08()
{
  result = qword_27F2403E0;
  if (!qword_27F2403E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2403D0, &qword_24F9EA5A8);
    sub_24F365F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2403E0);
  }

  return result;
}

unint64_t sub_24F365F8C()
{
  result = qword_27F2403E8;
  if (!qword_27F2403E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2403F0, &qword_24F9EA5B0);
    sub_24F365EB4();
    swift_getOpaqueTypeConformance2();
    sub_24F366088(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2403E8);
  }

  return result;
}

uint64_t sub_24F366088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F3660D0()
{
  result = qword_27F240408;
  if (!qword_27F240408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240408);
  }

  return result;
}

uint64_t sub_24F366134()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2402B0, &qword_24F9EA428);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2402A8, &qword_24F9EA420);
  sub_24F924E98();
  sub_24F365578();
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  return swift_getOpaqueTypeConformance2();
}

void static GameOverlayDashboardVisibilityNotifier.notify(id:isPresented:scene:)(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  if (a2)
  {
    v12 = *a4;
    v13 = sub_24F92B858();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v4;
    *(v14 + 40) = a1;
    *(v14 + 48) = a2;
    *(v14 + 56) = a3 & 1;
    *(v14 + 57) = v12;

    sub_24EA998B8(0, 0, v11, &unk_24F9EA650, v14);
  }

  else
  {
    if (qword_27F2113F8 != -1)
    {
      swift_once();
    }

    v15 = sub_24F9220D8();
    __swift_project_value_buffer(v15, qword_27F39E838);
    v20 = sub_24F9220B8();
    v16 = sub_24F92BDB8();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24E5DD000, v20, v16, "GameOverlayDashboardVisibilityNotifier: Unable to use nil id for notification", v17, 2u);
      MEMORY[0x2530542D0](v17, -1, -1);
    }

    v18 = v20;
  }
}

uint64_t sub_24F366448()
{
  v0 = sub_24F92B138();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0xD00000000000003ALL;
  v6[1] = 0x800000024FA74490;
  sub_24F92B128();
  sub_24E600AEC();
  v4 = sub_24F92C5D8();
  result = (*(v1 + 8))(v3, v0);
  qword_27F240418 = v4;
  return result;
}

uint64_t GameOverlayDashboardVisibilityNotifier.Scene.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F3665F8(uint64_t a1, __n128 a2)
{
  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  swift_allocObject();
  result = sub_24F366634();
  qword_27F240420 = result;
  return result;
}

unint64_t sub_24F366634()
{
  v1 = v0;
  swift_defaultActor_initialize();
  *(v0 + 112) = -1;
  *(v0 + 120) = sub_24E611754(MEMORY[0x277D84F90]);
  v2 = (v0 + 120);
  v3 = byte_2861C21F8;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v2;
  v28 = *v2;
  *v2 = 0x8000000000000000;
  result = sub_24E76EBE8(v3);
  v8 = v5[2];
  v9 = (v7 & 1) == 0;
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    goto LABEL_18;
  }

  LOBYTE(v12) = v7;
  if (v5[3] >= v11)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = result;
      sub_24E8B7044();
      result = v15;
      v14 = v28;
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_24E8A9D6C(v11, isUniquelyReferenced_nonNull_native);
    result = sub_24E76EBE8(v3);
    if ((v12 & 1) != (v13 & 1))
    {
      goto LABEL_14;
    }
  }

  v14 = v28;
  if (v12)
  {
LABEL_7:
    *(v14[7] + 8 * result) = MEMORY[0x277D84FA0];

    goto LABEL_11;
  }

LABEL_9:
  v14[(result >> 6) + 8] |= 1 << result;
  *(v14[6] + result) = v3;
  *(v14[7] + 8 * result) = MEMORY[0x277D84FA0];
  v16 = v14[2];
  v10 = __OFADD__(v16, 1);
  v17 = v16 + 1;
  if (v10)
  {
    goto LABEL_23;
  }

  v14[2] = v17;
LABEL_11:
  *v2 = v14;
  swift_endAccess();
  v3 = byte_2861C21F9;
  swift_beginAccess();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v2;
  v28 = *v2;
  *v2 = 0x8000000000000000;
  result = sub_24E76EBE8(v3);
  v20 = v18[2];
  v21 = (v19 & 1) == 0;
  v10 = __OFADD__(v20, v21);
  v22 = v20 + v21;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v2) = v19;
  if (v18[3] >= v22)
  {
    goto LABEL_15;
  }

  sub_24E8A9D6C(v22, v12);
  result = sub_24E76EBE8(v3);
  if ((v2 & 1) == (v23 & 1))
  {
    goto LABEL_16;
  }

LABEL_14:
  result = sub_24F92CF88();
  __break(1u);
LABEL_15:
  if (v12)
  {
LABEL_16:
    v24 = v28;
    if (v2)
    {
LABEL_17:
      *(v24[7] + 8 * result) = MEMORY[0x277D84FA0];

LABEL_22:
      *(v1 + 120) = v24;
      swift_endAccess();
      return v1;
    }

    goto LABEL_20;
  }

LABEL_19:
  v25 = result;
  sub_24E8B7044();
  result = v25;
  v24 = v28;
  if (v2)
  {
    goto LABEL_17;
  }

LABEL_20:
  v24[(result >> 6) + 8] |= 1 << result;
  *(v24[6] + result) = v3;
  *(v24[7] + 8 * result) = MEMORY[0x277D84FA0];
  v26 = v24[2];
  v10 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v10)
  {
    v24[2] = v27;
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t GameOverlayDashboardVisibilityNotifier.deinit()
{
  swift_beginAccess();
  if (notify_is_valid_token(*(v0 + 112)))
  {
    notify_cancel(*(v0 + 112));
  }

  swift_beginAccess();
  if (notify_is_valid_token(*(v0 + 116)))
  {
    notify_cancel(*(v0 + 116));
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GameOverlayDashboardVisibilityNotifier.__deallocating_deinit()
{
  swift_beginAccess();
  if (notify_is_valid_token(*(v0 + 112)))
  {
    notify_cancel(*(v0 + 112));
  }

  swift_beginAccess();
  if (notify_is_valid_token(*(v0 + 116)))
  {
    notify_cancel(*(v0 + 116));
  }

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_24F3669FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 42) = a8;
  *(v8 + 41) = a7;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  return MEMORY[0x2822009F8](sub_24F366A24, 0, 0);
}

uint64_t sub_24F366A24()
{
  if (qword_27F211170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 42);
  v2 = qword_27F240420;
  *(v0 + 32) = qword_27F240420;
  *(v0 + 40) = v1 & 1;

  return MEMORY[0x2822009F8](sub_24F366AC8, v2, 0);
}

uint64_t sub_24F366AC8()
{
  sub_24F3673AC(*(v0 + 16), *(v0 + 24), *(v0 + 41), (v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

double static GameOverlayDashboardVisibilityNotifier.reset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  sub_24EA998B8(0, 0, v3, &unk_24F9EA660, v5);

  return result;
}

uint64_t sub_24F366C44()
{
  if (qword_27F211170 != -1)
  {
    swift_once();
  }

  v1 = qword_27F240420;
  *(v0 + 16) = qword_27F240420;

  return MEMORY[0x2822009F8](sub_24F366CDC, v1, 0);
}

uint64_t sub_24F366CDC()
{
  sub_24F366F6C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F366D58()
{
  if (qword_27F211170 != -1)
  {
    swift_once();
  }

  v1 = qword_27F240420;
  *(v0 + 16) = qword_27F240420;

  return MEMORY[0x2822009F8](sub_24F366DF0, v1, 0);
}

uint64_t sub_24F366DF0()
{
  v1 = sub_24F367808();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_24F366E70()
{
  if (qword_27F211170 != -1)
  {
    swift_once();
  }

  v1 = qword_27F240420;
  *(v0 + 16) = qword_27F240420;

  return MEMORY[0x2822009F8](sub_24F366F08, v1, 0);
}

uint64_t sub_24F366F08()
{
  v1 = sub_24F367B68();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_24F366F6C()
{
  v1 = v0;
  if (qword_27F2113F8 != -1)
  {
LABEL_38:
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E838);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "GameOverlayDashboardVisibilityNotifier: Resetting visibility status", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 120);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_14:
    v13 = *(*(v6 + 48) + (__clz(__rbit64(v9)) | (v11 << 6)));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v1 + 120);
    *(v1 + 120) = 0x8000000000000000;
    v16 = sub_24E76EBE8(v13);
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v22 = v17;
    if (v15[3] < v21)
    {
      sub_24E8A9D6C(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_24E76EBE8(v13);
      if ((v22 & 1) != (v23 & 1))
      {
        result = sub_24F92CF88();
        __break(1u);
        return result;
      }

LABEL_19:
      if (v22)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v26 = v16;
    sub_24E8B7044();
    v16 = v26;
    if (v22)
    {
LABEL_7:
      *(v15[7] + 8 * v16) = MEMORY[0x277D84FA0];

      goto LABEL_8;
    }

LABEL_20:
    v15[(v16 >> 6) + 8] |= 1 << v16;
    *(v15[6] + v16) = v13;
    *(v15[7] + 8 * v16) = MEMORY[0x277D84FA0];
    v24 = v15[2];
    v20 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v20)
    {
      goto LABEL_37;
    }

    v15[2] = v25;
LABEL_8:
    v9 &= v9 - 1;
    *(v1 + 120) = v15;
    swift_endAccess();
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  if (byte_2861C2220 == 1)
  {
    if (qword_27F211168 != -1)
    {
      swift_once();
    }

    v27 = qword_27F240418;
    swift_beginAccess();

    v28 = (v1 + 116);
  }

  else
  {
    sub_24F921F38();
    v27 = sub_24F921F08();
    swift_beginAccess();
    v28 = (v1 + 112);
  }

  sub_24F3681EC(0, v28, v27);
  swift_endAccess();

  if (byte_2861C2221)
  {
    if (qword_27F211168 != -1)
    {
      swift_once();
    }

    v29 = qword_27F240418;
    swift_beginAccess();

    v30 = (v1 + 116);
  }

  else
  {
    sub_24F921F38();
    v29 = sub_24F921F08();
    swift_beginAccess();
    v30 = (v1 + 112);
  }

  sub_24F3681EC(0, v30, v29);
  swift_endAccess();
}

void sub_24F3673AC(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4)
{
  v5 = v4;
  v9 = *a4;
  if (qword_27F2113F8 != -1)
  {
    swift_once();
  }

  v10 = sub_24F9220D8();
  __swift_project_value_buffer(v10, qword_27F39E838);
  v11 = sub_24F9220B8();
  v12 = sub_24F92BD98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41[0] = v38;
    *v13 = 136315394;
    LOBYTE(v40) = v9;
    v14 = sub_24F92B188();
    v16 = v5;
    v17 = a1;
    v18 = v9;
    v19 = a2;
    v20 = sub_24E7620D4(v14, v15, v41);

    *(v13 + 4) = v20;
    a2 = v19;
    v9 = v18;
    a1 = v17;
    v5 = v16;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a3 & 1;
    _os_log_impl(&dword_24E5DD000, v11, v12, "GameOverlayDashboardVisibilityNotifier: Notifying dashboard visibility status for %s, visible = %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2530542D0](v38, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  if ((v9 & 1) == 0 && (a3 & 1) == 0)
  {
    LOBYTE(v41[0]) = 1;
    sub_24F3673AC(a1, a2, 0, v41);
  }

  swift_beginAccess();
  v21 = *(v5 + 120);
  if (*(v21 + 16) && (v22 = sub_24E76EBE8(v9), (v23 & 1) != 0))
  {
    v42 = *(*(v21 + 56) + 8 * v22);
    v24 = *(v42 + 16);

    if (a3)
    {

      sub_24ED7C5F0(&v40, a1, a2);
    }

    else
    {
      sub_24F7A57A0(a1, a2);
    }

    v32 = v42;
    v33 = *(v42 + 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v5 + 120);
    *(v5 + 120) = 0x8000000000000000;
    sub_24E822A08(v32, v9, isUniquelyReferenced_nonNull_native);
    *(v5 + 120) = v39;
    swift_endAccess();
    if ((v24 == 0) == (v33 != 0))
    {
      if (v9)
      {
        if (qword_27F211168 != -1)
        {
          swift_once();
        }

        LOBYTE(v35) = v33 != 0;
        v36 = qword_27F240418;
        swift_beginAccess();

        v37 = (v5 + 116);
      }

      else
      {
        v35 = v33 != 0;
        sub_24F921F38();
        v36 = sub_24F921F08();
        swift_beginAccess();
        v37 = (v5 + 112);
      }

      sub_24F3681EC(v35, v37, v36);
      swift_endAccess();
    }
  }

  else
  {
    v25 = sub_24F9220B8();
    v26 = sub_24F92BDB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315138;
      LOBYTE(v42) = v9;
      v29 = sub_24F92B188();
      v31 = sub_24E7620D4(v29, v30, &v40);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_24E5DD000, v25, v26, "GameOverlayDashboardVisibilityNotifier: Unable to locate ids set for scene %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x2530542D0](v28, -1, -1);
      MEMORY[0x2530542D0](v27, -1, -1);
    }
  }
}

BOOL sub_24F367808()
{
  v1 = v0;
  state64[7] = *MEMORY[0x277D85DE8];
  v2 = sub_24F921F28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = state64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2113F8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E838);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v7, v8, "GameOverlayDashboardVisibilityNotifier: Querying presentation state", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  state64[0] = 0;
  swift_beginAccess();
  if (*(v1 + 112) == -1)
  {
    sub_24F921F38();
    v10 = sub_24F921F08();
    v11 = v10 ? (v10 + 32) : 0;
    swift_beginAccess();
    v12 = notify_register_check(v11, (v1 + 112));
    swift_endAccess();

    if (v12)
    {
      v13 = sub_24F9220B8();
      v14 = sub_24F92BDB8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24E5DD000, v13, v14, "GameOverlayDashboardVisibilityNotifier: Could not register dashboard visibility token", v15, 2u);
        MEMORY[0x2530542D0](v15, -1, -1);
      }
    }
  }

  if (notify_get_state(*(v1 + 112), state64))
  {
    v16 = sub_24F9220B8();
    v17 = sub_24F92BDB8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24E5DD000, v16, v17, "GameOverlayDashboardVisibilityNotifier: Could not get dashboard visibility dashboard visibility status", v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }
  }

  v19 = state64[0];
  (*(v3 + 104))(v5, *MEMORY[0x277D0C2D8], v2);
  v20 = sub_24F921F18();
  (*(v3 + 8))(v5, v2);
  return v19 == v20;
}

BOOL sub_24F367B68()
{
  v1 = v0;
  state64[7] = *MEMORY[0x277D85DE8];
  v2 = sub_24F921F28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = state64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2113F8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E838);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v7, v8, "GameOverlayDashboardVisibilityNotifier: Querying presentation state", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  state64[0] = 0;
  swift_beginAccess();
  if (*(v1 + 116) == -1)
  {
    sub_24F921F38();
    v10 = sub_24F921F08();
    v11 = v10 ? (v10 + 32) : 0;
    swift_beginAccess();
    v12 = notify_register_check(v11, (v1 + 116));
    swift_endAccess();

    if (v12)
    {
      v13 = sub_24F9220B8();
      v14 = sub_24F92BDB8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24E5DD000, v13, v14, "GameOverlayDashboardVisibilityNotifier: Could not register check token", v15, 2u);
        MEMORY[0x2530542D0](v15, -1, -1);
      }
    }
  }

  if (notify_get_state(*(v1 + 116), state64))
  {
    v16 = sub_24F9220B8();
    v17 = sub_24F92BDB8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24E5DD000, v16, v17, "GameOverlayDashboardVisibilityNotifier: Could not get controls tab visibility status", v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }
  }

  v19 = state64[0];
  (*(v3 + 104))(v5, *MEMORY[0x277D0C2D8], v2);
  v20 = sub_24F921F18();
  (*(v3 + 8))(v5, v2);
  return v19 == v20;
}

uint64_t sub_24F367ED4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F367F14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24F3669FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24F367FF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F36802C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24F366C28();
}

unint64_t sub_24F3680E4()
{
  result = qword_27F240428;
  if (!qword_27F240428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240428);
  }

  return result;
}

unint64_t sub_24F36813C()
{
  result = qword_27F240430;
  if (!qword_27F240430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240438, &qword_24F9EA6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240430);
  }

  return result;
}

uint64_t sub_24F3681EC(char a1, int *a2, uint64_t a3)
{
  v6 = sub_24F921F28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == -1)
  {
    v10 = a3 ? (a3 + 32) : 0;
    if (notify_register_check(v10, a2))
    {
      if (qword_27F2113F8 != -1)
      {
        swift_once();
      }

      v11 = sub_24F9220D8();
      __swift_project_value_buffer(v11, qword_27F39E838);
      v12 = sub_24F9220B8();
      v13 = sub_24F92BDB8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_24E5DD000, v12, v13, "GameOverlayDashboardVisibilityNotifier: Could not register visibility token", v14, 2u);
        MEMORY[0x2530542D0](v14, -1, -1);
      }
    }
  }

  v15 = MEMORY[0x277D0C2D8];
  if ((a1 & 1) == 0)
  {
    v15 = MEMORY[0x277D0C2D0];
  }

  (*(v7 + 104))(v9, *v15, v6);
  v16 = *a2;
  v17 = sub_24F921F18();
  if (notify_set_state(v16, v17))
  {
    if (qword_27F2113F8 != -1)
    {
      swift_once();
    }

    v18 = sub_24F9220D8();
    __swift_project_value_buffer(v18, qword_27F39E838);
    v19 = sub_24F9220B8();
    v20 = sub_24F92BDB8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24E5DD000, v19, v20, "GameOverlayDashboardVisibilityNotifier: Could not set visibility status", v21, 2u);
      MEMORY[0x2530542D0](v21, -1, -1);
    }
  }

  if (a3)
  {
    v22 = (a3 + 32);
  }

  else
  {
    v22 = 0;
  }

  if (notify_post(v22))
  {
    if (qword_27F2113F8 != -1)
    {
      swift_once();
    }

    v23 = sub_24F9220D8();
    __swift_project_value_buffer(v23, qword_27F39E838);
    v24 = sub_24F9220B8();
    v25 = sub_24F92BDB8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24E5DD000, v24, v25, "GameOverlayDashboardVisibilityNotifier: Could not post visibility darwin notification", v26, 2u);
      MEMORY[0x2530542D0](v26, -1, -1);
    }
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24F36857C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F36864C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ChallengesInvitesShelfIntent(uint64_t a1)
{
  result = qword_27F240440;
  if (!qword_27F240440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F368748(uint64_t a1)
{
  sub_24E7C92C0(319, &qword_27F21D768, type metadata accessor for ChallengeInvite, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24E7C92C0(319, &qword_27F21ADC8, type metadata accessor for Game, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F36884C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240450, &unk_24F9EA858);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ChallengesInvitesShelfIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F368E90();
  v14 = v9;
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v26 = v6;
  v15 = v28;
  v16 = v29;
  LOBYTE(v32) = 0;
  *v12 = sub_24F92CC28();
  *(v12 + 1) = v18;
  LOBYTE(v32) = 1;
  *(v12 + 2) = sub_24F92CC28();
  *(v12 + 3) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D770, &unk_24F959420);
  v31 = 2;
  sub_24F368EE4();
  sub_24F92CC68();
  *(v12 + 4) = v32;
  v31 = 3;
  sub_24F368F98();
  sub_24F92CC68();
  v25 = 0;
  v12[40] = v32;
  type metadata accessor for Game(0);
  LOBYTE(v32) = 4;
  sub_24E7C9714(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v21 = v25;
  v20 = v26;
  sub_24F92CC18();
  v25 = v21;
  if (v21)
  {
    (*(v15 + 8))(v14, v16);
    v22 = 0;
  }

  else
  {
    sub_24E7374E4(v20, &v12[*(v10 + 32)]);
    v31 = 5;
    sub_24F368FEC();
    v23 = v25;
    sub_24F92CC68();
    v25 = v23;
    if (!v23)
    {
      (*(v15 + 8))(v14, v16);
      v12[*(v10 + 36)] = v32;
      sub_24F369040(v12, v27);
      __swift_destroy_boxed_opaque_existential_1(v30);
      return sub_24F3690A4(v12);
    }

    (*(v15 + 8))(v14, v16);
    v22 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);

  if (v22)
  {
    return sub_24E7D0014(&v12[*(v10 + 32)]);
  }

  return result;
}

uint64_t sub_24F368CE8()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x5479616C70736964;
  v4 = 1701667175;
  if (v1 != 4)
  {
    v4 = 0x4379616C70736964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616C506C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x73657469766E69;
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

uint64_t sub_24F368DB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F369218(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F368DE0(uint64_t a1)
{
  v2 = sub_24F368E90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F368E1C(uint64_t a1)
{
  v2 = sub_24F368E90();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F368E90()
{
  result = qword_27F240458;
  if (!qword_27F240458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240458);
  }

  return result;
}

unint64_t sub_24F368EE4()
{
  result = qword_27F240460;
  if (!qword_27F240460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D770, &unk_24F959420);
    sub_24E7C9714(&qword_27F240468, type metadata accessor for ChallengeInvite, &unk_24FA1BDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240460);
  }

  return result;
}

unint64_t sub_24F368F98()
{
  result = qword_27F240470;
  if (!qword_27F240470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240470);
  }

  return result;
}

unint64_t sub_24F368FEC()
{
  result = qword_27F240478;
  if (!qword_27F240478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240478);
  }

  return result;
}

uint64_t sub_24F369040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesInvitesShelfIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3690A4(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesInvitesShelfIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F369114()
{
  result = qword_27F240480;
  if (!qword_27F240480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240480);
  }

  return result;
}

unint64_t sub_24F36916C()
{
  result = qword_27F240488;
  if (!qword_27F240488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240488);
  }

  return result;
}

unint64_t sub_24F3691C4()
{
  result = qword_27F240490;
  if (!qword_27F240490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240490);
  }

  return result;
}

uint64_t sub_24F369218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xED00004449726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73657469766E69 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4379616C70736964 && a2 == 0xEE00747865746E6FLL)
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

char *sub_24F369478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v33 = sub_24F9285B8();
  v7 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24F928388();
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = a1;
  sub_24F928398();
  v32 = v6;
  v16 = v34;
  sub_24F369810(v14, a2, &v35);
  if (v16)
  {
    (*(v7 + 8))(a2, v33);
    v17 = *(v9 + 8);
    v18 = v37;
    (v17)(v15, v37);
    (v17)(v14, v18);
    swift_deallocPartialClassInstance();
    return v17;
  }

  v19 = v7;
  v34 = a2;
  v20 = *(v9 + 8);
  v21 = v37;
  v32 = v9 + 8;
  v30 = v20;
  result = (v20)(v14, v37);
  if (v36)
  {
    sub_24E612C80(&v35, v3 + OBJC_IVAR____TtC12GameStoreKit16GSKWrappedAction_wrappedAction);
    v23 = v11;
    v24 = v15;
    (*(v9 + 16))(v11, v15, v21);
    v25 = v19;
    v26 = *(v19 + 16);
    v27 = v31;
    v29 = v33;
    v28 = v34;
    v26(v31, v34, v33);
    v17 = Action.init(deserializing:using:)(v23, v27);
    (*(v25 + 8))(v28, v29);
    v30(v24, v21);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F369810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30[-2] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v10 = sub_24F928348();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (!v12)
  {
    goto LABEL_10;
  }

  if (qword_27F20FD98 != -1)
  {
    swift_once();
  }

  v13 = off_27F2161E8;
  if (!*(off_27F2161E8 + 2))
  {

    goto LABEL_10;
  }

  v14 = sub_24E76D644(v10, v12);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_10:
    sub_24F369CDC();
    swift_allocError();
    return swift_willThrow();
  }

  v17 = *(v13[7] + 16 * v14);
  v18 = dynamic_cast_existential_2_conditional(v17, v17, MEMORY[0x277D21B38], MEMORY[0x277D83A88]);
  if (v18)
  {
    *&v31 = v18;
    *(&v31 + 1) = v19;
    v32 = v20;
    __swift_allocate_boxed_opaque_existential_1(v30);
    sub_24F9282F8();
    if (v3)
    {
      return __swift_deallocate_boxed_opaque_existential_2(v30);
    }

    else
    {
      v29 = v31;
      v25 = v31;
      v26 = __swift_project_boxed_opaque_existential_1(v30, v31);
      v27 = v33;
      *(v33 + 24) = v29;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  else
  {
    v22 = type metadata accessor for Action(0);
    result = static Action.makeInstance(byDeserializing:using:)(a1, a2);
    if (!v3)
    {
      v23 = result;
      v24 = v33;
      *(v33 + 24) = v22;
      result = sub_24F00D9C8();
      v24[4] = result;
      *v24 = v23;
    }
  }

  return result;
}

uint64_t sub_24F369B28()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12GameStoreKit16GSKWrappedAction_wrappedAction));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GSKWrappedAction(uint64_t a1)
{
  result = qword_27F240498;
  if (!qword_27F240498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F369CDC()
{
  result = qword_27F2404A8;
  if (!qword_27F2404A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2404A8);
  }

  return result;
}

unint64_t sub_24F369D44()
{
  result = qword_27F2404B0;
  if (!qword_27F2404B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2404B0);
  }

  return result;
}

uint64_t sub_24F369DF0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F927D88();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v12 = sub_24F92BEF8();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_24F36A438;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_6_8;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F36A444(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_24F36A0C8(uint64_t a1, void *a2)
{
  v4 = sub_24F928AE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + OBJC_IVAR____TtC12GameStoreKit19LocalAskToBuyAction_completion))(a2, v6);
  if (a2)
  {
    v9 = a2;
    sub_24F92A9A8();
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D21CA8], v4);
    sub_24F92A9C8();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_24F36A234(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v2 = sub_24F92A9E8();
  v3 = objc_opt_self();

  v4 = sub_24F92B098();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v8[4] = sub_24F36A3D0;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24E9FABA0;
  v8[3] = &block_descriptor_145;
  v6 = _Block_copy(v8);

  [v3 localApproveRequestWithItemIdentifier:v4 completion:v6];
  _Block_release(v6);

  return v2;
}

uint64_t sub_24F36A390()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_145(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F36A3F0()
{

  return swift_deallocObject();
}

uint64_t sub_24F36A444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LeaderboardEntry.formattedScore.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for LeaderboardEntry(uint64_t a1)
{
  result = qword_27F2404D8;
  if (!qword_27F2404D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t LeaderboardEntry.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  strcpy((inited + 32), "formattedScore");
  *(inited + 47) = -18;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = type metadata accessor for LeaderboardEntry(0);
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F36AEB8(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 1802396018;
  *(inited + 152) = 0xE400000000000000;
  v10 = *(v1 + v7[6]);
  v11 = MEMORY[0x277D83B88];
  *(inited + 184) = MEMORY[0x277D83B88];
  v12 = sub_24E65901C();
  *(inited + 160) = v10;
  *(inited + 192) = v12;
  *(inited + 200) = 0x65726F6373;
  *(inited + 208) = 0xE500000000000000;
  v13 = *(v1 + v7[7]);
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 216) = v13;

  v14 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_24F36A79C()
{
  v1 = 0x657474616D726F66;
  v2 = 1802396018;
  if (*v0 != 2)
  {
    v2 = 0x65726F6373;
  }

  if (*v0)
  {
    v1 = 0x726579616C70;
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

uint64_t sub_24F36A814@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F36B29C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F36A83C(uint64_t a1)
{
  v2 = sub_24F36AE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F36A878(uint64_t a1)
{
  v2 = sub_24F36AE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaderboardEntry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2404C0, &qword_24F9EAAD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F36AE64();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for LeaderboardEntry(0);
    v8[14] = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CD38();
    v8[12] = 3;
    sub_24F92CD38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t LeaderboardEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2404D0, &qword_24F9EAAE0);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v16 - v6;
  v8 = type metadata accessor for LeaderboardEntry(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F36AE64();
  v19 = v7;
  v11 = v21;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v25 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = v13;
  v24 = 1;
  sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v5, v10 + v8[5]);
  v23 = 2;
  *(v10 + v8[6]) = sub_24F92CC58();
  v22 = 3;
  v15 = sub_24F92CC58();
  (*(v12 + 8))(v19, v20);
  *(v10 + v8[7]) = v15;
  sub_24F36AEB8(v10, v17, type metadata accessor for LeaderboardEntry);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F36AF20(v10, type metadata accessor for LeaderboardEntry);
}

unint64_t sub_24F36AE64()
{
  result = qword_27F2404C8;
  if (!qword_27F2404C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2404C8);
  }

  return result;
}

uint64_t sub_24F36AEB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F36AF20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F36AF94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F36B054(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F36B0F8(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F36B198()
{
  result = qword_27F2404E8;
  if (!qword_27F2404E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2404E8);
  }

  return result;
}

unint64_t sub_24F36B1F0()
{
  result = qword_27F2404F0;
  if (!qword_27F2404F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2404F0);
  }

  return result;
}

unint64_t sub_24F36B248()
{
  result = qword_27F2404F8;
  if (!qword_27F2404F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2404F8);
  }

  return result;
}

uint64_t sub_24F36B29C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657474616D726F66 && a2 == 0xEE0065726F635364;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
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

uint64_t ChallengesHubHeaderShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  updated = type metadata accessor for ChallengesUpdateNotifier(0);
  v7 = swift_task_alloc();
  v3[13] = v7;
  *v7 = v3;
  v7[1] = sub_24F36B594;

  return MEMORY[0x28217F228](v3 + 2, updated, updated);
}

uint64_t sub_24F36B594()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E7CC784;
  }

  else
  {
    v2 = sub_24F36B6A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F36B6A8()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v13 = v0[6];
  v14 = v0[11];
  v7 = v0[4];
  v15 = v0[3];
  v8 = v0[2];
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;
  type metadata accessor for GSKShelf(0);
  (*(v4 + 104))(v5, *MEMORY[0x277D85778], v13);
  sub_24F92B928();

  (*(v2 + 16))(v14, v1, v3);
  sub_24E613678();
  sub_24F9280F8();

  (*(v2 + 8))(v1, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v10 - 8) + 56))(v15, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

double sub_24F36B888(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v41 = *(v38 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  v40 = v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = v34 - v8;
  v9 = type metadata accessor for ChallengesHubHeaderShelfIntent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_24F92C888();
  v14 = *a2;
  v13 = a2[1];

  v45 = v14;
  v46 = v13;
  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA74530);
  v16 = v45;
  v15 = v46;
  v37 = v45;
  sub_24F36EBE4(a2, v12, type metadata accessor for ChallengesHubHeaderShelfIntent);
  v17 = *(v10 + 80);
  v34[1] = v17 | 7;
  v18 = swift_allocObject();
  v35 = v15;
  v36 = a3;
  v18[2] = a3;
  v18[3] = v16;
  v18[4] = v15;
  sub_24F36E01C(v12, v18 + ((v17 + 40) & ~v17));

  v20 = v38;
  v19 = v39;
  sub_24F92B898();
  v21 = sub_24F92B858();
  (*(*(v21 - 8) + 56))(v44, 1, 1, v21);
  sub_24F36EBE4(a2, v12, type metadata accessor for ChallengesHubHeaderShelfIntent);
  v22 = v40;
  v23 = v41;
  v24 = v20;
  (*(v41 + 16))(v40, v19, v20);
  v25 = (v17 + 32) & ~v17;
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + *(v23 + 80) + 8) & ~*(v23 + 80);
  v28 = (v42 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  sub_24F36E01C(v12, v29 + v25);
  *(v29 + v26) = v43;
  (*(v23 + 32))(v29 + v27, v22, v24);
  v30 = v37;
  *(v29 + v28) = v36;
  v31 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v35;
  *v31 = v30;
  v31[1] = v32;

  sub_24F1D3DA4(0, 0, v44, &unk_24F9EAD58, v29);

  return result;
}

double sub_24F36BCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ChallengesHubHeaderShelfIntent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_24F36EBE4(a5, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengesHubHeaderShelfIntent);
  v16 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  sub_24F36E01C(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);

  sub_24EA998B8(0, 0, v14, &unk_24F9EAD70, v17);

  return result;
}

uint64_t sub_24F36BE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  v7[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F36BF34, 0, 0);
}

uint64_t sub_24F36BF34()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = type metadata accessor for ChallengesHubHeaderShelfIntent(0);
  sub_24E736938(v1 + *(v3 + 36), v2);
  v4 = type metadata accessor for Game(0);
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  v6 = v0[6];
  if (v5 == 1)
  {
    sub_24E7D0014(v0[6]);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = *v6;
    v8 = v6[1];

    sub_24F36EC4C(v6, type metadata accessor for Game);
  }

  v0[7] = v7;
  v0[8] = v8;
  v9 = v0[2];

  return MEMORY[0x2822009F8](sub_24F36C040, v9, 0);
}

uint64_t sub_24F36C040()
{
  sub_24F5EA3E0(v0[3], v0[4], v0[7], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F36C0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a8;
  v8[22] = v14;
  v8[19] = a6;
  v8[20] = a7;
  v8[17] = a4;
  v8[18] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  v8[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213780, &unk_24F9FCA40);
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213788, &unk_24F93B040);
  v8[27] = v10;
  v8[28] = *(v10 - 8);
  v8[29] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v8[30] = v11;
  v8[31] = *(v11 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = type metadata accessor for ChallengesHubHeaderShelfConstructionIntent(0);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F36C32C, 0, 0);
}

uint64_t sub_24F36C32C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 136);
  v4 = type metadata accessor for ChallengesHubHeaderShelfIntent(0);
  v5 = v4[5];
  v6 = *(v3 + v4[6]);
  v7 = *(v3 + v4[7]);
  v8 = *(v3 + v4[8]);
  *(v0 + 496) = v5;
  v9 = *v3;
  *(v0 + 312) = *v3;
  v10 = v3[1];
  *(v0 + 320) = v10;
  v11 = v4[9];
  *(v0 + 500) = v11;
  sub_24F36EBE4(v3 + v5, v1 + v2[6], type metadata accessor for Player);
  sub_24E736938(v3 + v11, v1 + v2[8]);
  *v1 = v6;
  v1[1] = v7;
  v1[2] = v8;
  v12 = (v1 + v2[7]);
  *v12 = v9;
  v12[1] = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  *(v0 + 328) = v13;

  v14 = swift_task_alloc();
  *(v0 + 336) = v14;
  *v14 = v0;
  v14[1] = sub_24F36C4A4;

  return MEMORY[0x28217F228](v0 + 16, v13, v13);
}

uint64_t sub_24F36C4A4()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_24F36C7D0;
  }

  else
  {
    v2 = sub_24F36C5B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F36C5B8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[44] = v3;
  v4 = sub_24F36EB9C(&qword_27F21D550, type metadata accessor for ChallengesHubHeaderShelfConstructionIntent, &protocol conformance descriptor for ChallengesHubHeaderShelfConstructionIntent);
  v0[45] = v4;
  *v3 = v0;
  v3[1] = sub_24F36C6BC;
  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v0[18];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F36C6BC()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_24F36CA94;
  }

  else
  {
    v2 = sub_24F36C8C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F36C7D0(__n128 a1)
{
  sub_24F36EC4C(*(v1 + 280), type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24F36C8C8()
{
  v17 = *(v0 + 500);
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 184);
  v8 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_24F36EC4C(v3, type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);
  sub_24F36EBE4(v2, v1, type metadata accessor for GSKShelf);
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  v9 = *(v5 + 8);
  *(v0 + 384) = v9;
  *(v0 + 392) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v6);
  sub_24E736938(v8 + v17, v7);
  v10 = type metadata accessor for Game(0);
  v11 = (*(*(v10 - 8) + 48))(v7, 1, v10);
  v12 = *(v0 + 184);
  if (v11 == 1)
  {
    sub_24E7D0014(*(v0 + 184));
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = *v12;
    v14 = v12[1];

    sub_24F36EC4C(v12, type metadata accessor for Game);
  }

  *(v0 + 400) = v13;
  *(v0 + 408) = v14;
  v15 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_24F36CB94, v15, 0);
}

uint64_t sub_24F36CA94()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24F36EC4C(v0[35], type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F36CB94()
{
  sub_24F5E9B3C(v0[21], v0[22], v0[50], v0[51], v0[26]);

  return MEMORY[0x2822009F8](sub_24F36CC14, 0, 0);
}

uint64_t sub_24F36CC14()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[52] = v4;
  *v4 = v0;
  v4[1] = sub_24F36CCF0;
  v5 = v0[27];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v5);
}

uint64_t sub_24F36CCF0()
{

  return MEMORY[0x2822009F8](sub_24F36CDEC, 0, 0);
}

uint64_t sub_24F36CDEC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 424) = v1;
  *(v0 + 432) = v2;
  v3 = *(v0 + 72);
  *(v0 + 440) = v3;
  *(v0 + 456) = *(v0 + 88);
  if (v3)
  {
    v4 = *(v0 + 500);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 136);
    v10 = *(v3 + 16);
    sub_24F36EBE4(v9 + *(v0 + 496), v7 + v8[6], type metadata accessor for Player);
    sub_24E736938(v9 + v4, v7 + v8[8]);
    *v7 = v1;
    v7[1] = v2;
    v7[2] = v10;
    v11 = (v7 + v8[7]);
    *v11 = v6;
    v11[1] = v5;

    v12 = swift_task_alloc();
    *(v0 + 464) = v12;
    *v12 = v0;
    v12[1] = sub_24F36D018;
    v13 = *(v0 + 328);

    return MEMORY[0x28217F228](v0 + 96, v13, v13);
  }

  else
  {
    v14 = *(v0 + 304);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    sub_24F36EC4C(v14, type metadata accessor for GSKShelf);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_24F36D018()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_24F36D308;
  }

  else
  {
    v2 = sub_24F36D12C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F36D12C()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_24F36D1F4;
  v4 = v0[45];
  v5 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[18];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F36D1F4()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_24F36D600;
  }

  else
  {
    v2 = sub_24F36D46C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F36D308(__n128 a1)
{
  v3 = v1[56];
  v2 = v1[57];
  v5 = v1[54];
  v4 = v1[55];
  v6 = v1[53];
  v7 = v1[38];
  v8 = v1[28];
  v9 = v1[29];
  v10 = v1[27];
  sub_24F36EC4C(v1[34], type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);
  sub_24E614F20(v6, v5, v4, v3, v2);
  (*(v8 + 8))(v9, v10);
  sub_24F36EC4C(v7, type metadata accessor for GSKShelf);

  v11 = v1[1];

  return v11();
}

uint64_t sub_24F36D46C()
{
  v1 = v0[56];
  v2 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v5 = v0[53];
  v14 = v0[48];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[34];
  v9 = v0[32];
  v13 = v0[30];
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_24E614F20(v5, v4, v3, v1, v2);
  sub_24F36EC4C(v8, type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);
  sub_24F36EBE4(v7, v6, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v14(v9, v13);
  sub_24F36EC4C(v7, type metadata accessor for GSKShelf);
  v10 = swift_task_alloc();
  v0[52] = v10;
  *v10 = v0;
  v10[1] = sub_24F36CCF0;
  v11 = v0[27];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v11);
}

uint64_t sub_24F36D600()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v5 = v0[53];
  v6 = v0[38];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[27];
  sub_24F36EC4C(v0[34], type metadata accessor for ChallengesHubHeaderShelfConstructionIntent);
  sub_24E614F20(v5, v4, v3, v2, v1);
  (*(v7 + 8))(v8, v9);
  sub_24F36EC4C(v6, type metadata accessor for GSKShelf);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24F36D76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengesHubHeaderShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}