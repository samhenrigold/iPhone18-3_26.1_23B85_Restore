id sub_265FFCB50()
{
  OUTLINED_FUNCTION_12();
  v0 = sub_266039184();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_266039764();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = objc_opt_self();
  [v8 currentVersion];
  [v8 currentGamesPrivacyNoticeVersion];
  [v8 currentGamesCrossUseNoticeVersion];
  sub_266039754();
  result = [objc_opt_self() shared];
  if (result)
  {
    v10 = result;
    [result cacheTTLOverride];

    sub_266039174();
    result = [objc_opt_self() currentDevice];
    if (result)
    {
      sub_265FFE378(result);
      (*(v2 + 16))(v5, v7, v1);
      sub_266039724();
      return (*(v2 + 8))(v7, v1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_265FFCDB8()
{
  OUTLINED_FUNCTION_12();
  sub_266039734();
  OUTLINED_FUNCTION_5();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t sub_265FFCE14()
{
  OUTLINED_FUNCTION_10();
  sub_266039734();
  OUTLINED_FUNCTION_5();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

id sub_265FFCE94()
{
  v1 = *(v0 + *(type metadata accessor for FakeGameServicesSupport(0) + 20));

  return v1;
}

void sub_265FFCEC8()
{
  v2 = OUTLINED_FUNCTION_10();
  v3 = *(type metadata accessor for FakeGameServicesSupport(v2) + 20);

  *(v1 + v3) = v0;
}

void (*sub_265FFCF04())()
{
  v0 = OUTLINED_FUNCTION_10();
  type metadata accessor for FakeGameServicesSupport(v0);
  return nullsub_1;
}

uint64_t sub_265FFCF54()
{
  v1 = *(v0 + *(type metadata accessor for FakeGameServicesSupport(0) + 24));

  return v1;
}

uint64_t sub_265FFCF94(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FakeGameServicesSupport(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*sub_265FFCFDC())()
{
  v0 = OUTLINED_FUNCTION_10();
  type metadata accessor for FakeGameServicesSupport(v0);
  return nullsub_1;
}

uint64_t sub_265FFD034()
{
  OUTLINED_FUNCTION_8();
  sub_266039224();
  v0 = sub_265FFE434();
  OUTLINED_FUNCTION_6(v0);
  sub_266039204();
  swift_willThrow();
  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t sub_265FFD0B4()
{
  OUTLINED_FUNCTION_12();
  v1 = sub_2660390F4();

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t sub_265FFD178()
{
  sub_266039224();
  sub_265FFE434();
  swift_allocError();
  sub_266039204();
  return swift_willThrow();
}

id sub_265FFD1D0@<X0>(uint64_t a1@<X8>)
{
  sub_265FFCB50();
  v2 = type metadata accessor for FakeGameServicesSupport(0);
  v3 = *(v2 + 20);
  result = [objc_opt_self() defaultCenter];
  *(a1 + v3) = result;
  v5 = (a1 + *(v2 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

id sub_265FFD23C()
{
  v0 = [objc_opt_self() defaultCenter];

  return v0;
}

uint64_t sub_265FFD27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_266039734();
  OUTLINED_FUNCTION_5();
  (*(v10 + 32))(a5, a1);
  result = type metadata accessor for FakeGameServicesSupport(0);
  *(a5 + *(result + 20)) = a2;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t sub_265FFD318()
{
  OUTLINED_FUNCTION_8();
  v2 = (v0 + *(v1 + 24));
  v4 = *v2;
  v3 = v2[1];
  OUTLINED_FUNCTION_11();
  v7 = v5;

  return v7(v4, v3);
}

uint64_t sub_265FFD3AC()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFD42C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFD4AC()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD020();
}

uint64_t sub_265FFD52C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_265FFD60C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD020();
}

uint64_t sub_265FFD68C()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_265FFD78C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFD80C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFD88C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD11C();
}

uint64_t sub_265FFD90C()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_265FFD9F8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2(v1);

  return sub_265FFD138(v3);
}

uint64_t sub_265FFDA78()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDAF8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDB90()
{
  OUTLINED_FUNCTION_8();
  sub_265FFD178();
  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_265FFDC00()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDC80()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDD00()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDD80()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDE00()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFDE80()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD020();
}

uint64_t sub_265FFDF00()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_265FFDFF0()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE070()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE0F0()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE174()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE1F4()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE274()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE2F8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_265FFD0F8();
}

uint64_t sub_265FFE378(void *a1)
{
  v2 = [a1 udid];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2660398E4();

  return v3;
}

uint64_t type metadata accessor for FakeGameServicesSupport(uint64_t a1)
{
  result = qword_280058860;
  if (!qword_280058860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_265FFE434()
{
  result = qword_2800584E0;
  if (!qword_2800584E0)
  {
    sub_266039224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800584E0);
  }

  return result;
}

uint64_t sub_265FFE4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10();
  v6 = sub_266039734();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_265FFE5AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266039734();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_265FFE654(uint64_t a1)
{
  sub_266039734();
  if (v1 <= 0x3F)
  {
    sub_265FFE6F0();
    if (v2 <= 0x3F)
    {
      sub_265FFE734();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_265FFE6F0()
{
  result = qword_280057D90;
  if (!qword_280057D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280057D90);
  }

  return result;
}

void sub_265FFE734()
{
  if (!qword_280057D98)
  {
    v0 = sub_266039A34();
    if (!v1)
    {
      atomic_store(v0, &qword_280057D98);
    }
  }
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1)
{

  return swift_allocError();
}

void GKPlayer.ref.getter(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  OUTLINED_FUNCTION_2_0();
  v64 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v10 = [v3 internal];
  v11 = [v10 scopedIDs];

  if (v11)
  {
    if ([v11 arePersistent])
    {
      v12 = [v11 gameBundleID];
      v13 = sub_2660398E4();
      v62 = a1;
      v63 = v2;
      v14 = v13;
      v16 = v15;

      OUTLINED_FUNCTION_14(v14, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
      sub_265FFED20();
      v58 = v17;
      OUTLINED_FUNCTION_6_0();
      v19 = *(v18 + 72);
      v21 = *(v20 + 80);
      v59 = v19;
      v60 = v5;
      v22 = (v21 + 32) & ~v21;
      v23 = swift_allocObject();
      v61 = v23;
      *(v23 + 16) = xmmword_26603B710;
      v24 = (v23 + v22);
      v25 = [v3 internal];
      v26 = [v25 playerID];

      v27 = sub_2660398E4();
      v28 = v9;
      v56 = v9;
      v30 = v29;

      *v24 = v27;
      v24[1] = v30;
      swift_storeEnumTagMultiPayload();
      v31 = (v24 + v19);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DA0, &qword_26603B750);
      v33 = *(v32 + 48);
      v34 = [v11 gamePlayerID];
      v35 = sub_2660398E4();
      v37 = v36;

      *v31 = v35;
      v31[1] = v37;
      v57 = *(v64 + 16);
      v38 = v28;
      v39 = v60;
      v57(v31 + v33, v38, v60);
      swift_storeEnumTagMultiPayload();
      v40 = (v24 + 2 * v59);
      v41 = *(v32 + 48);
      v42 = [v11 teamPlayerID];
      v43 = sub_2660398E4();
      v45 = v44;

      *v40 = v43;
      v40[1] = v45;
      v46 = v56;
      v57(v40 + v41, v56, v39);
      swift_storeEnumTagMultiPayload();
      sub_266039584();
      (*(v64 + 8))(v46, v39);

      return;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
  sub_265FFED20();
  OUTLINED_FUNCTION_6_0();
  v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_26603B720;
  v50 = (v49 + v48);
  v51 = [v3 &selRef_reportMultiplayerActivityMetricsEvent_];
  v52 = [v51 playerID];

  v53 = sub_2660398E4();
  v55 = v54;

  *v50 = v53;
  v50[1] = v55;
  swift_storeEnumTagMultiPayload();
  sub_266039584();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_265FFED20()
{
  if (!qword_280058180)
  {
    v0 = sub_266039564();
    if (!v1)
    {
      atomic_store(v0, &qword_280058180);
    }
  }
}

uint64_t GKGameDescriptor.ref.getter()
{
  v1 = v0;
  v2 = [v0 bundleIdentifier];
  v3 = sub_2660398E4();
  v5 = v4;

  v6 = [v1 adamID];
  v7 = [v6 stringValue];

  v8 = sub_2660398E4();
  v10 = v9;

  v11 = [objc_opt_self() stringForPlatform_];
  v12 = sub_2660398E4();
  v14 = v13;

  v15 = [v1 shortBundleVersion];
  v16 = sub_2660398E4();
  v18 = v17;

  return MEMORY[0x2821652B8](v3, v5, v8, v10, v12, v14, v16, v18);
}

id sub_265FFEED4()
{
  result = sub_2660394B4();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    v5 = sub_2660394C4();
    v7 = v6;
    if (v4 | v6)
    {
      v8 = v5;
      v9 = sub_266039504();
      v11 = v10;
      v12 = sub_2660394D4();
      v14 = v13;
      sub_265FFFCFC(0, &qword_280057DB0, 0x277D0C050);
      return sub_265FFF030(v3, v4, v8, v7, v9, v11, v12, v14);
    }

    else
    {
      sub_266039224();
      sub_265FFE434();
      OUTLINED_FUNCTION_15();
      swift_allocError();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DA8, &qword_26603B758);
      sub_2660391F4();
      return swift_willThrow();
    }
  }

  return result;
}

id sub_265FFF030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v11 = sub_2660398D4();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
LABEL_3:
      v12 = sub_2660398D4();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = 0;
      if (a8)
      {
        goto LABEL_5;
      }

LABEL_9:
      v14 = 0;
      goto LABEL_10;
    }
  }

  v12 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v13 = sub_2660398D4();

  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v14 = sub_2660398D4();

LABEL_10:
  v15 = [swift_getObjCClassFromMetadata() gameDescriptorWithAdamID:v11 bundleID:v12 platform:v13 shortBundleVersion:v14];

  return v15;
}

id sub_265FFF154()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D0C118]) init];
  sub_266039544();
  v2 = v1;
  if (!v0)
  {
    v2 = sub_2660398D4();

    [v1 setBaseLeaderboardID_];
  }

  return v1;
}

uint64_t sub_265FFF218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_5();
  (*(v7 + 16))(a4, v4);
  v8 = *a3;
  sub_266039264();
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);

  return v11(a4, v8, v9);
}

uint64_t sub_265FFF2B8()
{
  OUTLINED_FUNCTION_1();
  *(v1 + 120) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_3_0(v4);
  *(v1 + 40) = v5;
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  sub_265FFED20();
  *(v1 + 64) = v6;
  OUTLINED_FUNCTION_3_0(v6);
  *(v1 + 72) = v7;
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265FFF3DC, 0, 0);
}

uint64_t sub_265FFF3DC()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_1_0();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_265FFF4F4;
  v6 = v0[3];

  return v8(v6, v2, v3);
}

uint64_t sub_265FFF4F4()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = v5;
  v3[12] = v6;
  v3[13] = v7;
  v3[14] = v0;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_265FFF648, 0, 0);
  }
}

uint64_t sub_265FFF648()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    sub_265FFFCFC(0, &qword_280058210, 0x277D0C1C8);

    OUTLINED_FUNCTION_12_0();
    v2 = sub_265FFFD3C();
  }

  else
  {
    if (*(v0 + 120) == 1)
    {
      sub_266039224();
      sub_265FFE434();
      OUTLINED_FUNCTION_15();
      swift_allocError();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057F80, &qword_26603B9F0);
      sub_2660391F4();
      swift_willThrow();
LABEL_9:

      v5 = *(v0 + 8);

      return v5();
    }

    v2 = [objc_allocWithZone(MEMORY[0x277D0C248]) init];
  }

  v3 = *(v0 + 112);
  v4 = sub_2660395A4();
  if (v3)
  {

LABEL_8:

    goto LABEL_9;
  }

  v7 = v4;
  v27 = v2;
  v8 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v9 = *(v0 + 72);
  v10 = *(v4 + 16);
  v28 = *(v0 + 80);
  v11 = *(v0 + 40) + 8;
  while (v10 != v8)
  {
    sub_265FFFC3C(v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8, *(v0 + 80));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_265FFFCA0(*(v0 + 80));
      ++v8;
    }

    else
    {
      v29 = *(v28 + 8);
      if (EnumCaseMultiPayload)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DA0, &qword_26603B750);
        v16 = OUTLINED_FUNCTION_11_0();
        v17(v16);
        sub_2660394F4();
        OUTLINED_FUNCTION_19();
        v18(*(v0 + 48), *(v0 + 32));

        v30 = v29;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DA0, &qword_26603B750);
        v13 = OUTLINED_FUNCTION_11_0();
        v14(v13);
        sub_2660394F4();
        OUTLINED_FUNCTION_19();
        v15(*(v0 + 56), *(v0 + 32));

        v31 = v29;
      }

      v32 = v11;
      v11 = 0;
    }
  }

  if (!v1)
  {

LABEL_27:

    v25 = v27;
    goto LABEL_28;
  }

  if (!v32)
  {

    goto LABEL_27;
  }

  if (!v31 || !v30)
  {

    sub_266039224();
    sub_265FFE434();
    OUTLINED_FUNCTION_15();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057F80, &qword_26603B9F0);
    sub_2660391F4();
    swift_willThrow();

    goto LABEL_8;
  }

  v19 = objc_opt_self();
  OUTLINED_FUNCTION_12_0();
  v20 = sub_2660398D4();

  v21 = sub_2660398D4();
  v22 = sub_2660398D4();
  v23 = sub_2660398D4();
  v24 = [v19 makePersistentWithPlayerID:v20 gameBundleID:v21 gamePlayerID:v22 teamPlayerID:{v23, v0 + 48, v0 + 56}];

  v25 = v27;
  [v27 setScopedIDs_];

LABEL_28:

  v26 = *(v0 + 8);

  return v26(v25);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_265FFFC3C(uint64_t a1, uint64_t a2)
{
  sub_265FFED20();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FFFCA0(uint64_t a1)
{
  sub_265FFED20();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265FFFCFC(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_265FFFD3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D0C1C8]) init];
  OUTLINED_FUNCTION_12_0();
  v1 = sub_2660398D4();
  [v0 setPlayerID_];

  return v0;
}

uint64_t sub_265FFFDAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

void sub_265FFFDC0()
{
  v1 = *(v0[3] + 16);
  v0[4] = v1;
  v2 = sub_2660015A4(0, v1, 0, MEMORY[0x277D84F90]);
  v0[5] = 0;
  v0[6] = v2;
  if (v0[4])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
    OUTLINED_FUNCTION_16(v3);
    v4 = OUTLINED_FUNCTION_12_0();
    __swift_project_boxed_opaque_existential_1(v4, v5);
    OUTLINED_FUNCTION_1_0();
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_8_0(v6);
    OUTLINED_FUNCTION_21();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_265FFFF64()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 64) = v6;
  *(v3 + 72) = v7;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2660000A8, 0, 0);
  }
}

uint64_t sub_2660000A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    a1 = sub_2660015A4((v5 > 1), v6 + 1, 1, v4);
    v4 = a1;
  }

  v7 = *(v3 + 64);
  v4[2] = v6 + 1;
  *&v4[2 * v6 + 4] = v7;
  v8 = *(v3 + 32);
  v9 = *(v3 + 40) + 1;
  *(v3 + 40) = v9;
  *(v3 + 48) = v4;
  if (v9 == v8)
  {
    v10 = OUTLINED_FUNCTION_18(a1, a2, a3, v4);

    return v11(v10);
  }

  else
  {
    v13 = *(v3 + 16);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
    OUTLINED_FUNCTION_3_0(v14);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    OUTLINED_FUNCTION_10_0();
    v15 = swift_task_alloc();
    *(v3 + 56) = v15;
    *v15 = v3;
    v16 = OUTLINED_FUNCTION_9_0(v15);

    return v17(v16);
  }
}

uint64_t sub_26600029C(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return OUTLINED_FUNCTION_0_0();
}

void sub_2660002B0()
{
  v1 = *(v0[7] + 16);
  v0[8] = v1;
  v2 = sub_2660016D4(0, v1, 0, MEMORY[0x277D84F90]);
  v0[9] = 0;
  v0[10] = v2;
  if (v0[8])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
    OUTLINED_FUNCTION_16(v3);
    v4 = OUTLINED_FUNCTION_12_0();
    __swift_project_boxed_opaque_existential_1(v4, v5);
    OUTLINED_FUNCTION_1_0();
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_8_0(v6);
    OUTLINED_FUNCTION_21();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_21();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_266000454(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v2;
  v5[12] = v8;
  v5[13] = v1;

  if (v1)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v5[14] = a1;

    return MEMORY[0x2822009F8](sub_2660005A0, 0, 0);
  }
}

void sub_2660005A0()
{
  v0[2] = v0[14];
  v1 = v0[13];
  v0[3] = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
  sub_266039A24();
  v2 = v0[10];
  if (v1)
  {

    OUTLINED_FUNCTION_21();

    __asm { BRAA            X1, X16 }
  }

  v8 = v0[4];
  v9 = v0[5];
  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v12 = v0[10];
  if (v11 >= v10 >> 1)
  {
    v5 = sub_2660016D4((v10 > 1), v11 + 1, 1, v12);
    v12 = v5;
  }

  *(v12 + 16) = v11 + 1;
  v13 = v12 + 16 * v11;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  v14 = v0[8];
  v15 = v0[9] + 1;
  v0[9] = v15;
  v0[10] = v12;
  if (v15 == v14)
  {
    OUTLINED_FUNCTION_18(v5, v6, v7, v12);
    OUTLINED_FUNCTION_21();

    __asm { BRAA            X2, X16 }
  }

  v18 = v0[6];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_3_0(v19);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  OUTLINED_FUNCTION_10_0();
  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  OUTLINED_FUNCTION_9_0(v20);
  OUTLINED_FUNCTION_21();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_266000818(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 88) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266000830()
{
  OUTLINED_FUNCTION_1();
  v0[2] = MEMORY[0x277D84F90];
  v1 = *(v0[4] + 16);
  v0[5] = v1;
  sub_2660017DC(v1, 0);
  v2 = v0[5];
  v3 = v0[2];
  v0[6] = 0;
  v0[7] = v3;
  if (v2)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
    OUTLINED_FUNCTION_16(v4);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_4_0(v5);

    return sub_265FFF2B8();
  }

  else
  {
    OUTLINED_FUNCTION_5_0();

    return v7();
  }
}

uint64_t sub_26600094C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 72) = v5;
  *(v3 + 80) = v0;

  if (v0)
  {

    v6 = sub_266000BBC;
  }

  else
  {
    v6 = sub_266000A58;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_266000A58()
{
  OUTLINED_FUNCTION_1();
  MEMORY[0x266776E60]();
  if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_266039974();
  }

  sub_266039994();
  v1 = v0[5];
  v2 = v0[6] + 1;
  v3 = v0[2];
  v0[6] = v2;
  v0[7] = v3;
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_5_0();

    return v4();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
    OUTLINED_FUNCTION_3_0(v6);
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_4_0(v7);

    return sub_265FFF2B8();
  }
}

void sub_266000BD4(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  OUTLINED_FUNCTION_2_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v11 = [v3 scopedIDs];
  if (v11)
  {
    v12 = v11;
    v60 = v11;
    v13 = [v11 gameBundleID];
    v66 = v5;
    v14 = v13;
    v15 = sub_2660398E4();
    v63 = a1;
    v64 = v2;
    v16 = v15;
    v18 = v17;

    OUTLINED_FUNCTION_14(v16, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
    sub_265FFED20();
    v65 = v19;
    OUTLINED_FUNCTION_6_0();
    v57 = v3;
    v56 = *(v20 + 72);
    v22 = *(v21 + 80);
    v23 = v10;
    v58 = v10;
    v24 = (v22 + 32) & ~v22;
    v25 = swift_allocObject();
    v62 = v25;
    *(v25 + 16) = xmmword_26603B710;
    v26 = (v25 + v24);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DA0, &qword_26603B750);
    v27 = *(v61 + 48);
    v28 = [v12 gamePlayerID];
    v29 = sub_2660398E4();
    v31 = v30;

    *v26 = v29;
    v26[1] = v31;
    v59 = *(v7 + 16);
    v59(v26 + v27, v23, v66);
    swift_storeEnumTagMultiPayload();
    v32 = v56;
    v33 = (v26 + v56);
    v34 = [v57 playerID];
    v35 = sub_2660398E4();
    v37 = v36;

    *v33 = v35;
    v33[1] = v37;
    OUTLINED_FUNCTION_12_0();
    swift_storeEnumTagMultiPayload();
    v38 = (v26 + 2 * v32);
    v39 = v60;
    v40 = *(v61 + 48);
    v41 = [v60 teamPlayerID];
    v42 = sub_2660398E4();
    v44 = v43;

    *v38 = v42;
    v38[1] = v44;
    v45 = v38 + v40;
    v46 = v58;
    v47 = v66;
    v59(v45, v58, v66);
    swift_storeEnumTagMultiPayload();
    sub_266039584();
    (*(v7 + 8))(v46, v47);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
    sub_265FFED20();
    OUTLINED_FUNCTION_6_0();
    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_26603B720;
    v51 = (v50 + v49);
    v52 = [v3 playerID];
    v53 = sub_2660398E4();
    v55 = v54;

    *v51 = v53;
    v51[1] = v55;
    swift_storeEnumTagMultiPayload();
    sub_266039584();
  }
}

uint64_t sub_266000FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = MEMORY[0x277D0CFF0];
    goto LABEL_5;
  }

  if (!a1)
  {
    v3 = MEMORY[0x277D0CFE8];
LABEL_5:
    v4 = *v3;
    sub_2660392C4();
    OUTLINED_FUNCTION_5();
    return (*(v5 + 104))(a2, v4);
  }

  v7 = sub_266039224();
  sub_265FFE434();
  OUTLINED_FUNCTION_15();
  swift_allocError();
  v9 = v8;
  sub_266039B04();
  MEMORY[0x266776E20](0xD00000000000001ELL, 0x800000026603AD00);
  type metadata accessor for GKLeaderboardType();
  sub_266039B94();
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D0CE68], v7);
  return swift_willThrow();
}

uint64_t Artwork.init(templateURL:metadata:)@<X0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a4;
  sub_266039864();
  OUTLINED_FUNCTION_2_0();
  v28 = v6;
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E70, &unk_26603B7A0);
  v8 = OUTLINED_FUNCTION_16(v7);
  MEMORY[0x28223BE20](v8);
  v9 = sub_266039624();
  OUTLINED_FUNCTION_2_0();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v18 = [a3 width];
  [v18 doubleValue];

  v19 = [a3 height];
  [v19 doubleValue];

  sub_266039614();
  sub_266039534();
  (*(v11 + 16))(v15, v17, v9);
  v20 = sub_266001934(a3, &selRef_backgroundColor);
  v29 = v21;
  v30 = v20;
  v22 = sub_266001934(a3, &selRef_textColor1);
  v27 = v23;
  v28 = v22;
  sub_266001934(a3, &selRef_textColor2);
  sub_266001934(a3, &selRef_textColor3);
  sub_266001934(a3, &selRef_textColor4);
  v24 = v31;
  sub_266039604();

  (*(v11 + 8))(v17, v9);
  v25 = sub_266039634();
  return __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
}

void *sub_2660015A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057DD0, &qword_26603B7E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2660016D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DC8, &qword_26603CCA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_2660017DC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_266039BB4();
LABEL_9:
  result = sub_266039B24();
  *v2 = result;
  return result;
}

void type metadata accessor for GKLeaderboardType()
{
  if (!qword_280057DC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280057DC0);
    }
  }
}

uint64_t sub_2660018CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800583F0, &qword_26603C340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266001934(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2660398E4();

  return v4;
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821652B8](a1, a2, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_266001B38()
{
  OUTLINED_FUNCTION_1();
  v0[19] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057E48, &qword_26603B938);
  v0[20] = v2;
  v0[21] = *(v2 - 8);
  v0[22] = swift_task_alloc();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266001BFC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_266001DC8;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057E50, &unk_26603B940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057E58, &qword_26603C6E0);
  sub_2660399B4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_266001FA4;
  v1[13] = &block_descriptor;
  [v11 getFriendsLatestActivityWithCompletion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_266001DC8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  *(v0 + 184) = *(v0 + 48);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_266001ECC()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_266001F34(uint64_t a1)
{
  swift_willThrow();

  OUTLINED_FUNCTION_11();

  return v1();
}

void sub_266001FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    sub_266002058(v4, v6);
  }

  else
  {
    sub_266003284();
    v5 = sub_266039964();

    sub_2660020A4(v4, v5);
  }
}

uint64_t sub_2660020F0()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_266001B38();
}

uint64_t sub_266002178@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for ShimActivityService.GCFFriendActivityServiceAdapter;
  a3[4] = &off_2877B8390;
  *a3 = a1;
  return sub_2660021E4(a2, (a3 + 5));
}

uint64_t sub_2660021A0@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2660021E4(a1, a3);

  return sub_2660021E4(a2, a3 + 40);
}

uint64_t sub_2660021E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t ShimActivityService.listFriendActivities(player:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  OUTLINED_FUNCTION_7_1();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266002228()
{
  v1 = v0[4];
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  OUTLINED_FUNCTION_3_1();
  v10 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DE0, &unk_26603B808);
  *v6 = v0;
  v6[1] = sub_2660023A0;
  v8 = v0[3];

  return (v10)(v0 + 2, v8, &unk_26603B800, v4, v7, v2, v3);
}

uint64_t sub_2660023A0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660024C4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_266002520()
{
  OUTLINED_FUNCTION_1();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2660392B4();
  v0[4] = v3;
  v0[5] = *(v3 - 8);
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2660025D8()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_3_1();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_2(v5);

  return v7(v2, v3);
}

uint64_t sub_2660026F0()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  *(v4 + 64) = v3;
  *(v4 + 72) = v0;

  if (v0)
  {

    v5 = *(v2 + 8);

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

void *sub_266002838()
{
  v24 = v0;
  v1 = sub_266003570(*(v0 + 64));
  if (v1)
  {
    v2 = v1;
    v21 = MEMORY[0x277D84F90];
    result = sub_2660032C8(0, v1 & ~(v1 >> 63), 0);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      v5 = *(v0 + 40);
      v6 = v21;
      v7 = *(v0 + 64);
      v8 = *(v0 + 72);
      v9 = v7 & 0xC000000000000001;
      v19 = v7 + 32;
      v20 = v7 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v9)
        {
          v11 = MEMORY[0x266777030](v4, *(v0 + 64));
        }

        else
        {
          if (v4 >= *(v20 + 16))
          {
            goto LABEL_21;
          }

          v11 = *(v19 + 8 * v4);
        }

        v12 = v11;
        v13 = *(v0 + 48);
        v22 = v11;
        sub_266002AD4(&v22, &v23, v13);
        if (v8)
        {

          OUTLINED_FUNCTION_11();
          goto LABEL_17;
        }

        v15 = *(v21 + 16);
        v14 = *(v21 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_2660032C8((v14 > 1), v15 + 1, 1);
        }

        v16 = *(v0 + 48);
        v17 = *(v0 + 32);
        *(v21 + 16) = v15 + 1;
        result = (*(v5 + 32))(v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v16, v17);
        v8 = 0;
        ++v4;
        if (v10 == v2)
        {

          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_16:
    **(v0 + 16) = v6;

    OUTLINED_FUNCTION_11();
LABEL_17:

    return v18();
  }

  return result;
}

uint64_t sub_266002A3C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v1[1] = sub_265FFD52C;

  return sub_266002520();
}

uint64_t sub_266002AD4@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v23[2] = a3;
  v4 = sub_266039154();
  MEMORY[0x28223BE20](v4 - 8);
  v23[1] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E70, &unk_26603B7A0);
  MEMORY[0x28223BE20](v6 - 8);
  v23[4] = v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v23[3] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v9 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
  sub_265FFED20();
  v11 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26603B720;
  v13 = (v12 + v11);
  v14 = [v9 playerID];
  v15 = sub_2660398E4();
  v17 = v16;

  *v13 = v15;
  v13[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = v25;
  result = sub_266039584();
  if (v18)
  {
    *v24 = v18;
  }

  else
  {
    v20 = [v9 context];
    v25 = sub_2660398E4();

    v21 = [v9 imageURL];
    sub_2660398E4();

    sub_266039534();
    v22 = [v9 timestamp];
    sub_266039144();

    return sub_2660392A4();
  }

  return result;
}

uint64_t sub_266002E2C()
{
  OUTLINED_FUNCTION_1();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2(v3);

  return ShimActivityService.listFriendActivities(player:)(v1);
}

uint64_t dispatch thunk of GCFFriendActivityService.getFriendsLatestActivity()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_1();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2(v6);

  return v9(a1, a2);
}

uint64_t sub_266002FBC()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2660030B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2660030F0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2660031D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

unint64_t sub_266003284()
{
  result = qword_280057E60;
  if (!qword_280057E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280057E60);
  }

  return result;
}

void *sub_2660032C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2660032E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2660032E8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057E68, &unk_26603B950);
  v10 = *(sub_2660392B4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2660392B4() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26600349C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26600349C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_2660392B4(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_2660392B4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_266003570(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_266039BB4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2660035B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660035CC()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2660036B8;
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822008A0](v5);
}

uint64_t sub_2660036B8()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2660037E8, 0, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_2660037E8()
{
  OUTLINED_FUNCTION_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266003848(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t), uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280057E58, &qword_26603C6E0);
  v7 = sub_2660399E4();
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v7);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  (*(v9 + 32))(v14 + v13, v12, v7);
  a2(sub_266004364, v14);
}

uint64_t sub_2660039C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_266039A34();
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v27 - v19;
  if (a2)
  {
    sub_266039224();
    sub_265FFE434();
    v21 = swift_allocError();
    *v22 = a2;
    OUTLINED_FUNCTION_5_1();
    (*(v23 + 104))();
    *&v27[0] = v21;
    v24 = a2;
  }

  else
  {
    (*(v9 + 16))(v12, a1, v7);
    if (__swift_getEnumTagSinglePayload(v12, 1, a4) != 1)
    {
      (*(v14 + 32))(v20, v12, a4);
      (*(v14 + 16))(v18, v20, a4);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280057E58, &qword_26603C6E0);
      sub_2660399E4();
      sub_2660399D4();
      return (*(v14 + 8))(v20, a4);
    }

    (*(v9 + 8))(v12, v7);
    sub_266039224();
    sub_265FFE434();
    memset(v27, 0, sizeof(v27));
    v25 = swift_allocError();
    sub_266039214();
    sub_266004410(v27);
    *&v27[0] = v25;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280057E58, &qword_26603C6E0);
  sub_2660399E4();
  return sub_2660399C4();
}

uint64_t sub_266003CE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266003CFC()
{
  OUTLINED_FUNCTION_1();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_266003DD4;
  OUTLINED_FUNCTION_3_2();

  return MEMORY[0x2822008A0](v3);
}

uint64_t sub_266003DD4()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  *(v2 + 48) = v0;

  if (v0)
  {
    v6 = sub_266003EFC;
  }

  else
  {

    v6 = sub_266003EE4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_266003EFC()
{
  OUTLINED_FUNCTION_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266003F5C(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058600, &unk_26603B9B0);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v4);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v4);
  a2(sub_26600414C, v11);
}

uint64_t sub_2660040BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058600, &unk_26603B9B0);
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26600414C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058600, &unk_26603B9B0);
  if (!a1)
  {
    return sub_2660399D4();
  }

  sub_266039224();
  sub_265FFE434();
  swift_allocError();
  *v2 = a1;
  OUTLINED_FUNCTION_5_1();
  (*(v3 + 104))();
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058600, &unk_26603B9B0);
  return sub_2660399C4();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2660042B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280057E58, &qword_26603C6E0);
  sub_2660399E4();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_266004364(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280057E58, &qword_26603C6E0);
  v6 = *(sub_2660399E4() - 8);
  v7 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return sub_2660039C4(a1, a2, v7, v5);
}

uint64_t sub_266004410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F50, &qword_26603B9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2660045BC@<X0>(uint64_t *a1@<X8>)
{
  result = ShimGameServicesRoot.delegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2660045E8(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return ShimGameServicesRoot.delegate.setter(v2, v1);
}

uint64_t ShimGameServicesRoot.delegate.setter(uint64_t a1, uint64_t a2)
{
  sub_2660046C0(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_266004660()
{
  v1 = OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_lock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_lock));
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock((v0 + v1));
  return Strong;
}

void sub_2660046C0(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_lock;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_lock));
  *(v2 + OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_value + 8) = a2;
  swift_unknownObjectWeakAssign();
  v6 = [*(v2 + OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_serviceProxy) baseProxy];
  v7 = v6;
  v8 = &selRef_removeDataUpdateDelegate_;
  if (a1)
  {
    v8 = &selRef_addDataUpdateDelegate_;
  }

  [v6 *v8];

  os_unfair_lock_unlock((v2 + v5));
}

uint64_t (*ShimGameServicesRoot.delegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *(v1 + 376);
  *a1 = sub_266004660();
  a1[1] = v3;
  return sub_2660047C4;
}

uint64_t sub_2660047C4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {
    v4 = swift_unknownObjectRetain();
    sub_2660046C0(v4, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2660046C0(v3, v2);
  }

  return swift_unknownObjectRelease();
}

void ShimGameServicesRoot.init(localPlayer:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  OUTLINED_FUNCTION_16(v6);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  sub_265FFED20();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_2();
  sub_266039594();
  if (!v2)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = [objc_allocWithZone(MEMORY[0x277D0C138]) init];
      v12 = [v11 internal];
      v13 = sub_2660398D4();

      [v12 setPlayerID_];

      v14 = [objc_opt_self() proxyForPlayer_];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
      v16 = *(v15 - 8);
      (*(v16 + 16))(v9, a1, v15);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
      ShimGameServicesRoot.init(serviceProxy:localPlayer:)(v14, v9, a2);
      (*(v16 + 8))(a1, v15);

      return;
    }

    sub_265FFFCA0(v3);
    sub_266039224();
    sub_266006120(&qword_2800584E0, MEMORY[0x277D0CE80], MEMORY[0x277D0CE88]);
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057F80, &qword_26603B9F0);
    sub_2660391F4();
    swift_willThrow();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_5();
  (*(v17 + 8))(a1);
}

uint64_t ShimGameServicesRoot.init(serviceProxy:localPlayer:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  OUTLINED_FUNCTION_16(v6);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  *a3 = a1;
  v10 = objc_allocWithZone(type metadata accessor for GameServiceDelegateReference());
  v11 = a1;
  ObjectType = swift_getObjectType();
  *&v10[OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_lock] = 0;
  *&v10[OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_value + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtC16ShimGameServicesP33_BB4D3006578329CF5C2F6C1B26EE34E428GameServiceDelegateReference_serviceProxy] = v11;
  v25.receiver = v10;
  v25.super_class = ObjectType;
  a3[47] = objc_msgSendSuper2(&v25, sel_init);
  sub_266005C18(a2, v9);
  v13 = [v11 friendServicePrivate];
  v14 = [v11 profileServicePrivate];
  v15 = [v11 utilityServicePrivate];
  v16 = OUTLINED_FUNCTION_5_2();
  a3[4] = type metadata accessor for InternalService(v16);
  a3[5] = &off_2877B8648;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 1);
  sub_266007CA0(v9, v14, boxed_opaque_existential_0);
  v18 = [v11 gameStatService];
  sub_266005E54((a3 + 1), &v25);
  a3[15] = &type metadata for ShimAchievementService;
  a3[16] = sub_266005C88();
  OUTLINED_FUNCTION_14_0();
  v19 = swift_allocObject();
  a3[12] = v19;
  sub_26600DE38(v18, &v25, (v19 + 16));
  v20 = sub_266039704();
  OUTLINED_FUNCTION_13();
  *(swift_allocObject() + 16) = v11;
  sub_2660391C4();
  swift_allocObject();
  v21 = v11;
  sub_2660391B4();
  a3[11] = sub_2660396A4();

  sub_2660396C4();
  OUTLINED_FUNCTION_5_2();
  a3[20] = sub_2660397C4();
  a3[21] = sub_266006120(&qword_280057F90, MEMORY[0x277D0D5E8], MEMORY[0x277D0D5E0]);
  a3[17] = v20;
  sub_266039684();
  OUTLINED_FUNCTION_5_2();
  a3[25] = sub_266039774();
  a3[26] = sub_266006120(&qword_280057F98, MEMORY[0x277D0D5A8], MEMORY[0x277D0D5A0]);
  a3[22] = v20;
  sub_2660396D4();
  OUTLINED_FUNCTION_5_2();
  a3[30] = sub_266039714();
  a3[31] = sub_266006120(&qword_280057FA0, MEMORY[0x277D0D588], MEMORY[0x277D0D580]);
  a3[27] = v20;
  sub_2660396E4();
  sub_2660396F4();
  OUTLINED_FUNCTION_5_2();
  a3[9] = sub_266039744();
  a3[10] = sub_266006120(&qword_280057FA8, MEMORY[0x277D0D598], MEMORY[0x277D0D590]);
  a3[6] = v20;
  sub_2660396B4();
  OUTLINED_FUNCTION_5_2();
  a3[40] = sub_266039794();
  a3[41] = sub_266006120(&qword_280057FB0, MEMORY[0x277D0D5C8], MEMORY[0x277D0D5C0]);
  a3[37] = v20;
  v22 = sub_266039694();

  a3[45] = sub_266039784();
  a3[46] = sub_266006120(&qword_280057FB8, MEMORY[0x277D0D5B8], MEMORY[0x277D0D5B0]);

  a3[42] = v22;
  return sub_2660078E8(a2, &unk_280057F60, &unk_26603B9E0);
}

uint64_t ShimGameServicesRoot.init(daemonProxy:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  OUTLINED_FUNCTION_16(v4);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  return ShimGameServicesRoot.init(serviceProxy:localPlayer:)(a1, v7, a2);
}

uint64_t ShimGameServicesRoot.activities.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*v1 friendServicePrivate];
  sub_266005E54((v1 + 1), v6);
  a1[3] = &type metadata for ShimActivityService;
  a1[4] = sub_266005D70();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  *a1 = v4;
  return sub_266002178(v3, v6, (v4 + 16));
}

uint64_t ShimGameServicesRoot.friends.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [*v1 friendServicePrivate];
  v5 = [v3 utilityServicePrivate];
  sub_266005E54((v1 + 1), v8);
  a1[3] = &type metadata for ShimFriendService;
  a1[4] = sub_266005E00();
  OUTLINED_FUNCTION_14_0();
  v6 = swift_allocObject();
  *a1 = v6;
  return sub_26602BB48(v4, v5, v8, (v6 + 16));
}

uint64_t ShimGameServicesRoot.profiles.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_266005E54((v1 + 6), v7);
  v3 = [*v1 profileServicePrivate];
  sub_266005E54((v1 + 1), v6);
  a1[3] = &type metadata for ShimProfileService;
  a1[4] = sub_266005EB8();
  v4 = swift_allocObject();
  *a1 = v4;
  return sub_266016660(v7, v3, v6, (v4 + 16));
}

uint64_t static ShimGameServicesRoot.makeActivitiesMessageExtensionService(serviceProxy:)()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_2();
  v4 = sub_266039824();
  sub_266039244();
  OUTLINED_FUNCTION_13();
  *(swift_allocObject() + 16) = v1;
  sub_2660391C4();
  swift_allocObject();
  v5 = v1;
  sub_2660391B4();
  OUTLINED_FUNCTION_11_1();
  v6 = sub_266039814();
  if (v2)
  {
    v7 = OUTLINED_FUNCTION_3_3();
    v8(v7);
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_3_3();
    v12(v11);

    v0[3] = v4;
    result = sub_266006120(&qword_280057FD8, MEMORY[0x277D0D600], MEMORY[0x277D0D5F8]);
    v0[4] = result;
    *v0 = v10;
  }

  return result;
}

uint64_t static ShimGameServicesRoot.makePreferencesService(serviceProxy:)()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_2();
  v4 = sub_2660397B4();
  sub_266039234();
  OUTLINED_FUNCTION_13();
  *(swift_allocObject() + 16) = v1;
  sub_2660391C4();
  swift_allocObject();
  v5 = v1;
  sub_2660391B4();
  OUTLINED_FUNCTION_11_1();
  v6 = sub_2660397A4();
  if (v2)
  {
    v7 = OUTLINED_FUNCTION_3_3();
    v8(v7);
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_3_3();
    v12(v11);

    v0[3] = v4;
    result = sub_266006120(&unk_280057FE0, MEMORY[0x277D0D5D8], MEMORY[0x277D0D5D0]);
    v0[4] = result;
    *v0 = v10;
  }

  return result;
}

uint64_t sub_266005568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800580B0, &qword_26603BC00);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266005638, 0, 0);
}

uint64_t sub_266005638()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = [v1[22] baseProxy];
  v1[26] = v7;
  v8 = sub_266039104();
  v1[27] = v8;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_266005828;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057E58, &qword_26603C6E0);
  sub_2660399B4();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_266005A44;
  v1[13] = &block_descriptor_0;
  [v7 gameServicesRemoteCall:v8 completionHandler:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_266005828()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_2660059BC;
  }

  else
  {
    v2 = sub_266005938;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_266005938()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 216);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_2660059BC(uint64_t a1)
{
  v2 = v1[27];
  v3 = v1[26];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

void sub_266005A44(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v10 = a3;
    sub_266005B04(v5, v10);
  }

  else
  {
    v6 = a2;
    v7 = sub_266039114();
    v9 = v8;

    sub_266005B50(v5, v7, v9);
  }
}

uint64_t (*sub_266005BCC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *(v1 + 376);
  *a1 = sub_266004660();
  a1[1] = v3;
  return sub_2660047C4;
}

uint64_t sub_266005C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266005C88()
{
  result = qword_280057F88;
  if (!qword_280057F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280057F88);
  }

  return result;
}

uint64_t sub_266005CE0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_1(v1);

  return sub_266005568(v2, v3, v4);
}

unint64_t sub_266005D70()
{
  result = qword_280057FC0;
  if (!qword_280057FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280057FC0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

unint64_t sub_266005E00()
{
  result = qword_280057FC8;
  if (!qword_280057FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280057FC8);
  }

  return result;
}

uint64_t sub_266005E54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_266005EB8()
{
  result = qword_280057FD0;
  if (!qword_280057FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280057FD0);
  }

  return result;
}

uint64_t sub_266005F0C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_266005F54()
{
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_266005F88()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_1(v1);

  return sub_266005568(v2, v3, v4);
}

uint64_t sub_266006018()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5(v4, v2);
}

uint64_t sub_266006120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266006170(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
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

uint64_t sub_2660061B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
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
      *(result + 384) = 1;
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

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266006264(unsigned int a1, uint64_t a2)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058058, &qword_26603BBA8);
  OUTLINED_FUNCTION_16(v3);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v83 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058060, &qword_26603BBB0);
  OUTLINED_FUNCTION_2_0();
  v85 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_2();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - v14;
  sub_266039864();
  OUTLINED_FUNCTION_2_0();
  v89 = v17;
  v90 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_2();
  v20 = (v18 - v19);
  v22 = MEMORY[0x28223BE20](v21);
  v87 = (&v83 - v23);
  MEMORY[0x28223BE20](v22);
  v86 = (&v83 - v24);
  sub_2660391A4();
  OUTLINED_FUNCTION_2_0();
  v92 = v26;
  v93 = v25;
  MEMORY[0x28223BE20](v25);
  v91 = (&v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058068, &qword_26603BBB8);
  OUTLINED_FUNCTION_16(v28);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v29);
  v31 = &v83 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058070, &unk_26603BBC0);
  OUTLINED_FUNCTION_2_0();
  v84 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_2();
  v37 = (v35 - v36);
  MEMORY[0x28223BE20](v38);
  v40 = &v83 - v39;
  if (a1 > 0x18)
  {
    goto LABEL_21;
  }

  if (((1 << a1) & 0xD00020) == 0)
  {
    if (a1 == 1)
    {
      OUTLINED_FUNCTION_16_0();
      sub_266039AC4();
      sub_266006E54(v88, v96, v95);
      sub_266007894(v95);
      if (v97)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058080, &qword_26603BBD0);
        result = swift_dynamicCast();
        if (result)
        {
          v60 = 0;
          v84 = v85 + 4;
          v86 = MEMORY[0x277D84F90];
          v61 = v94;
          v62 = v94 + 40;
          v63 = *(v94 + 16);
          v83 = v94 + 40;
LABEL_26:
          v64 = v62 + 16 * v60;
          while (v63 != v60)
          {
            if (v60 >= *(v61 + 16))
            {
LABEL_58:
              __break(1u);
              return result;
            }

            swift_bridgeObjectRetain_n();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058088, &qword_26603BBD8);
            sub_266039484();
            __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);

            if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
            {
              v65 = *v84;
              (*v84)(v15, v6, v7);
              v65(v12, v15, v7);
              v66 = v86;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v66 = sub_266007030(0, v66[2] + 1, 1, v66, &qword_2800580A0, &qword_26603BBF0, &qword_280058060, &qword_26603BBB0);
              }

              v68 = v66[2];
              v67 = v66[3];
              v86 = v66;
              if (v68 >= v67 >> 1)
              {
                v86 = sub_266007030((v67 > 1), v68 + 1, 1, v86, &qword_2800580A0, &qword_26603BBF0, &qword_280058060, &qword_26603BBB0);
              }

              ++v60;
              v86[2] = v68 + 1;
              OUTLINED_FUNCTION_12_1();
              result = (v65)(v69 + v70 * v68, v12, v7);
              v62 = v83;
              goto LABEL_26;
            }

            result = sub_2660078E8(v6, &qword_280058058, &qword_26603BBA8);
            v64 += 16;
            ++v60;
          }

          v79 = v86;
          if (!v86[2])
          {

            goto LABEL_51;
          }

          if (sub_266004660())
          {
            swift_getObjectType();
            v44 = v91;
            *v91 = v79;
            v78 = MEMORY[0x277D0CCB8];
            goto LABEL_47;
          }
        }
      }

      else
      {
        sub_2660078E8(v96, &unk_280057F50, &qword_26603B9C0);
      }

LABEL_51:
      v20 = v87;
      sub_266039834();

      v57 = sub_266039854();
      v71 = sub_266039A04();

      if (os_log_type_enabled(v57, v71))
      {
        v59 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v95[0] = v72;
        *v59 = 136315138;
        v80 = sub_266039894();
        v82 = sub_266007324(v80, v81, v95);

        *(v59 + 4) = v82;
        v76 = "No valid ChallengeRef found for: %s";
LABEL_53:
        _os_log_impl(&dword_265FFB000, v57, v71, v76, v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v72);
        MEMORY[0x266777640](v72, -1, -1);
        goto LABEL_54;
      }

LABEL_55:

      return (*(v89 + 8))(v20, v90);
    }

    if (a1 == 24)
    {
      OUTLINED_FUNCTION_16_0();
      sub_266039AC4();
      sub_266006E54(v88, v96, v95);
      sub_266007894(v95);
      if (v97)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058080, &qword_26603BBD0);
        result = swift_dynamicCast();
        if (result)
        {
          v46 = 0;
          v85 = v84 + 4;
          v87 = MEMORY[0x277D84F90];
          v47 = v94;
          v48 = v94 + 40;
          v49 = *(v94 + 16);
          v83 = v94 + 40;
LABEL_11:
          v50 = v48 + 16 * v46;
          while (v49 != v46)
          {
            if (v46 >= *(v47 + 16))
            {
              __break(1u);
              goto LABEL_58;
            }

            swift_bridgeObjectRetain_n();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058090, &qword_26603BBE0);
            sub_266039484();
            __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);

            if (__swift_getEnumTagSinglePayload(v31, 1, v32) != 1)
            {
              v51 = *v85;
              (*v85)(v40, v31, v32);
              v51(v37, v40, v32);
              v52 = v87;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v52 = sub_266007030(0, v52[2] + 1, 1, v52, &qword_280058098, &qword_26603BBE8, &unk_280058070, &unk_26603BBC0);
              }

              v54 = v52[2];
              v53 = v52[3];
              v87 = v52;
              if (v54 >= v53 >> 1)
              {
                v87 = sub_266007030((v53 > 1), v54 + 1, 1, v87, &qword_280058098, &qword_26603BBE8, &unk_280058070, &unk_26603BBC0);
              }

              ++v46;
              v87[2] = v54 + 1;
              OUTLINED_FUNCTION_12_1();
              result = (v51)(v55 + v56 * v54, v37, v32);
              v48 = v83;
              goto LABEL_11;
            }

            result = sub_2660078E8(v31, &qword_280058068, &qword_26603BBB8);
            v50 += 16;
            ++v46;
          }

          v77 = v87;
          if (!v87[2])
          {

            v20 = v86;
            goto LABEL_38;
          }

          if (!sub_266004660())
          {
          }

          swift_getObjectType();
          v44 = v91;
          *v91 = v77;
          v78 = MEMORY[0x277D0CCC0];
LABEL_47:
          v42 = *v78;
          v43 = v92;
          goto LABEL_5;
        }
      }

      else
      {
        sub_2660078E8(v96, &unk_280057F50, &qword_26603B9C0);
      }

      v20 = v86;
LABEL_38:
      sub_266039834();

      v57 = sub_266039854();
      v71 = sub_266039A04();

      if (!os_log_type_enabled(v57, v71))
      {
        goto LABEL_55;
      }

      v59 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v95[0] = v72;
      *v59 = 136315138;
      v73 = sub_266039894();
      v75 = sub_266007324(v73, v74, v95);

      *(v59 + 4) = v75;
      v76 = "No valid ChallengeDefinitionRef found for: %s";
      goto LABEL_53;
    }

LABEL_21:
    sub_266039834();
    v57 = sub_266039854();
    v58 = sub_266039A04();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 67109120;
      *(v59 + 4) = a1;
      _os_log_impl(&dword_265FFB000, v57, v58, "Ignoring service delegate event for type: %u", v59, 8u);
LABEL_54:
      MEMORY[0x266777640](v59, -1, -1);
      goto LABEL_55;
    }

    goto LABEL_55;
  }

  result = sub_266004660();
  if (result)
  {
    swift_getObjectType();
    v42 = *MEMORY[0x277D0CCC8];
    v44 = v91;
    v43 = v92;
LABEL_5:
    v45 = v93;
    (*(v43 + 104))(v44, v42, v93);
    sub_266039194();
    swift_unknownObjectRelease();
    return (*(v43 + 8))(v44, v45);
  }

  return result;
}

double sub_266006E54@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_266007940(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_2660031D4(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

id sub_266006F7C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266007000()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058050, &qword_26603BBA0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void *sub_266007030(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_266007144(v14, v13, a5, a6);
  v16 = OUTLINED_FUNCTION_15_0();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v16, v17) - 8);
  if (v11)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    sub_266007240(a4 + v19, v14, v15 + v19, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_266007144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_15_0();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v6, v7) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_266007240(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_5(), a1 + *(v10 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_15_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_15_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

unint64_t sub_266007324(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2660073E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2660031D4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2660073E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2660074E8(a5, a6);
    *a1 = v9;
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
    result = sub_266039B34();
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

uint64_t sub_2660074E8(uint64_t a1, unint64_t a2)
{
  v3 = sub_266007534(a1, a2);
  sub_26600764C(&unk_2877B8438);
  return v3;
}

uint64_t sub_266007534(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_266039914())
  {
    result = sub_266007730(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_266039AF4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_266039B34();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26600764C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2660077A0(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_266007730(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580A8, &qword_26603BBF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2660077A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580A8, &qword_26603BBF8);
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

uint64_t sub_2660078E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_266007940(uint64_t a1)
{
  v2 = sub_266039AA4();

  return sub_266007984(a1, v2);
}

unint64_t sub_266007984(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_266007A48(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x266776FD0](v8, a1);
    sub_266007894(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_17()
{

  return MEMORY[0x282164C30](0);
}

uint64_t type metadata accessor for InternalService(uint64_t a1)
{
  result = qword_280058970;
  if (!qword_280058970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266007CA0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a5@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  v9 = OUTLINED_FUNCTION_16(v8);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  nullsub_1();
  v13 = v12;
  v15 = v14;
  v20[1] = a3;
  swift_unknownObjectRetain();
  nullsub_1();
  v17 = v16;
  v20[10] = &unk_2877B8DF0;
  v20[11] = sub_266007E80();
  v20[7] = v13;
  v20[8] = v15;
  v20[5] = &type metadata for ShimProfileService.GCFProfileServiceAdapter;
  v20[6] = sub_266007ED4();
  v20[2] = v17;
  sub_26600C95C(a1, v11, &unk_280057F60, &unk_26603B9E0);
  v18 = type metadata accessor for InternalService(0);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_2660397F4();
  sub_26600C95C(a1, a5 + *(v18 + 28), &unk_280057F60, &unk_26603B9E0);
  a5[3] = &unk_2877B8DF0;
  a5[4] = sub_266007FF0();
  *a5 = v13;
  a5[1] = v15;
  a5[8] = &type metadata for ShimProfileService.GCFProfileServiceAdapter;
  a5[9] = sub_266008044();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  a5[5] = v17;
  return sub_2660078E8(a1, &unk_280057F60, &unk_26603B9E0);
}

unint64_t sub_266007E80()
{
  result = qword_280058640;
  if (!qword_280058640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280058640);
  }

  return result;
}

unint64_t sub_266007ED4()
{
  result = qword_2800582E0;
  if (!qword_2800582E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800582E0);
  }

  return result;
}

uint64_t sub_266007F28@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for InternalService(0);
  sub_26600CA38(a1, a5 + *(v10 + 28), &unk_280057F60, &unk_26603B9E0);
  sub_2660021E4(a2, a5);
  sub_2660021E4(a3, a5 + 40);
  v11 = *(v10 + 24);
  sub_266039804();
  OUTLINED_FUNCTION_5();
  v13 = *(v12 + 32);

  return v13(a5 + v11, a4);
}

unint64_t sub_266007FF0()
{
  result = qword_280058610;
  if (!qword_280058610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280058610);
  }

  return result;
}

unint64_t sub_266008044()
{
  result = qword_2800582B0;
  if (!qword_2800582B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800582B0);
  }

  return result;
}

uint64_t sub_266008098()
{
  OUTLINED_FUNCTION_8();
  v1 = v0;
  type metadata accessor for InternalService(0);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v3[1] = sub_265FFD68C;

  return MEMORY[0x282165640](v1);
}

uint64_t sub_266008140(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266008158()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 240);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_3_1();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_2(v5);

  return v7(v2, v3);
}

uint64_t sub_26600826C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 256) = v4;
  *(v2 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

void sub_26600838C()
{
  v12 = v0;
  v1 = 0;
  v11 = MEMORY[0x277D84F90];
  v3 = v0[32];
  v2 = v0[33];
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  while (v4 != v1)
  {
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v7 = v0[28];
    v6 = v0[29];
    sub_266008E00(v5, (v0 + 2));
    sub_2660084D0(&v11, v0 + 2, v7, v6);
    if (v2)
    {

      sub_266008E5C((v0 + 2));

      OUTLINED_FUNCTION_11();

      v10();
      return;
    }

    ++v1;
    sub_266008E5C((v0 + 2));
    v5 += 208;
  }

  v8 = v11;
  v9 = v0[1];

  v9(v8);
}

uint64_t sub_2660084D0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v84 = a1;
  sub_2660393F4();
  OUTLINED_FUNCTION_2_0();
  v78 = v9;
  v79 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_0();
  v81 = v10;
  v11 = sub_266039154();
  v12 = OUTLINED_FUNCTION_16(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19_0();
  v85 = v13;
  sub_266039444();
  OUTLINED_FUNCTION_2_0();
  v82 = v15;
  v83 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_0();
  v80 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058390, &qword_26603C300);
  v18 = OUTLINED_FUNCTION_16(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_41();
  v77 = v19;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v76 - v22;
  MEMORY[0x28223BE20](v21);
  v88 = &v76 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_2_0();
  v86 = v26;
  v87 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_41();
  v76 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v76 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v76 - v33;
  MEMORY[0x28223BE20](v32);
  v94 = &v76 - v35;
  v36 = a2[7];
  v37 = a2[8];
  v38 = v36 == a3 && v37 == a4;
  if (v38 || (sub_266039BE4() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
    sub_265FFED20();
    OUTLINED_FUNCTION_39();
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_26603B720;
    v42 = (v41 + v40);
    v43 = a2[6];
    *v42 = a2[5];
    v42[1] = v43;
    swift_storeEnumTagMultiPayload();

    result = sub_266039584();
    if (v4)
    {
      return result;
    }

    v46 = v86;
    v45 = v87;
    (*(v86 + 32))(v94, v34, v87);
    if (a2[10])
    {
      swift_bridgeObjectRetain_n();
      sub_2660395C4();

      v54 = 0;
    }

    else
    {
      v54 = 1;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
    __swift_storeEnumTagSinglePayload(v23, v54, 1, v55);
    sub_26600CA38(v23, v88, &qword_280058390, &qword_26603C300);
  }

  else
  {
    if (a2[5] != a3 || a2[6] != a4)
    {
      result = sub_266039BE4();
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
    sub_265FFED20();
    OUTLINED_FUNCTION_39();
    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_26603B720;
    v51 = (v50 + v49);
    *v51 = v36;
    v51[1] = v37;
    swift_storeEnumTagMultiPayload();

    result = sub_266039584();
    if (v4)
    {
      return result;
    }

    v46 = v86;
    v52 = v31;
    v45 = v87;
    (*(v86 + 32))(v94, v52, v87);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v53);
  }

  if (a2[13])
  {
    sub_26600C95C((a2 + 14), &v89, &unk_2800585E0, &unk_26603BD10);
    if (v90)
    {
      sub_2660021E4(&v89, v91);
      v56 = v92;
      v57 = v93;
      v58 = __swift_project_boxed_opaque_existential_1(v91, v92);

      sub_26602821C(v56, v57);
      OUTLINED_FUNCTION_23();
      (*(v78 + 104))(v58, *MEMORY[0x277D0D348], v79);
      (*(v46 + 16))(v76, v94, v45);
      sub_26600C95C(v88, v77, &qword_280058390, &qword_26603C300);
      v59 = v80;
      sub_266039414();
      v60 = v84;
      sub_26600C9AC();
      v61 = *(*v60 + 16);
      sub_26600C9F8(v61);
      v62 = *v60;
      *(v62 + 16) = v61 + 1;
      (*(v82 + 32))(v62 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v61, v59, v83);
      *v60 = v62;
      __swift_destroy_boxed_opaque_existential_0(v91);
    }

    else
    {
      sub_2660078E8(&v89, &unk_2800585E0, &unk_26603BD10);
    }
  }

  if (a2[20])
  {
    sub_26600C95C((a2 + 21), &v89, &unk_2800585E0, &unk_26603BD10);
    if (v90)
    {
      sub_2660021E4(&v89, v91);
      v63 = v92;
      v64 = v93;
      v65 = __swift_project_boxed_opaque_existential_1(v91, v92);

      sub_26602821C(v63, v64);
      OUTLINED_FUNCTION_23();
      (*(v78 + 104))(v65, *MEMORY[0x277D0D350], v79);
      v66 = v94;
      (*(v46 + 16))(v76, v94, v45);
      v67 = v88;
      sub_26600C95C(v88, v77, &qword_280058390, &qword_26603C300);
      v68 = v80;
      sub_266039414();
      v69 = v84;
      sub_26600C9AC();
      v70 = *(*v69 + 16);
      sub_26600C9F8(v70);
      sub_2660078E8(v67, &qword_280058390, &qword_26603C300);
      (*(v46 + 8))(v66, v45);
      v71 = *v69;
      *(v71 + 16) = v70 + 1;
      (*(v82 + 32))(v71 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v70, v68, v83);
      *v69 = v71;
      return __swift_destroy_boxed_opaque_existential_0(v91);
    }

    else
    {
      sub_2660078E8(v88, &qword_280058390, &qword_26603C300);
      v74 = OUTLINED_FUNCTION_27();
      v75(v74);
      return sub_2660078E8(&v89, &unk_2800585E0, &unk_26603BD10);
    }
  }

  else
  {
    sub_2660078E8(v88, &qword_280058390, &qword_26603C300);
    v72 = OUTLINED_FUNCTION_27();
    return v73(v72);
  }
}

uint64_t sub_266008EE4()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_266008098();
}

uint64_t sub_266008F6C()
{
  OUTLINED_FUNCTION_8();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2(v5);

  return sub_266008140(v3, v1);
}

uint64_t sub_266009004()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v1[1] = sub_265FFE784;
  OUTLINED_FUNCTION_38();

  return sub_266009BC8();
}

uint64_t sub_2660090BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 96) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  *(v5 + 136) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  *(v5 + 144) = v7;
  *(v5 + 152) = *(v7 - 8);
  *(v5 + 160) = swift_task_alloc();
  v8 = type metadata accessor for InternalService(0);
  *(v5 + 168) = v8;
  *(v5 + 288) = *(v8 + 24);
  v9 = swift_task_alloc();
  *(v5 + 176) = v9;
  *v9 = v5;
  v9[1] = sub_266009220;

  return MEMORY[0x282165640](a2);
}

uint64_t sub_266009220()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v5[23] = v9;
  v5[24] = v0;

  if (v0)
  {

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    v5[25] = v3;
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_266009368()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v0[25];
  v1 = v0[24];
  v0[3] = v0[23];
  v0[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
  sub_266039A24();
  if (v1)
  {

LABEL_5:

    OUTLINED_FUNCTION_11();

    return v11();
  }

  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];

  v6 = v0[5];
  v0[27] = v0[4];
  v0[28] = v6;
  sub_26600C95C(v5 + *(v2 + 28), v4, &unk_280057F60, &unk_26603B9E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v3) == 1)
  {
    v7 = v0[17];

    sub_2660078E8(v7, &unk_280057F60, &unk_26603B9E0);
    sub_266039224();
    v8 = sub_265FFE434();
    OUTLINED_FUNCTION_6(v8);
    OUTLINED_FUNCTION_32(v9, "Nil local player");
    OUTLINED_FUNCTION_5_1();
    (*(v10 + 104))();
    swift_willThrow();
    goto LABEL_5;
  }

  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  v13 = swift_task_alloc();
  v0[29] = v13;
  *v13 = v0;
  v13[1] = sub_26600959C;
  v14 = v0[20];

  return MEMORY[0x282165640](v14);
}

uint64_t sub_26600959C()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v5[30] = v9;
  v5[31] = v0;

  if (!v0)
  {
    v5[32] = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_2660096A4()
{
  v0[6] = v0[32];
  v1 = v0[31];
  v0[7] = v0[30];
  sub_266039A24();
  v2 = v0[28];
  if (v1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    goto LABEL_3;
  }

  v5 = v0[27];

  v6 = v0[8];
  v7 = v0[9];
  v0[33] = v7;
  if (v5 == v6 && v2 == v7)
  {
  }

  else
  {
    v9 = OUTLINED_FUNCTION_48(v0[27]);

    if ((v9 & 1) == 0)
    {
      v11 = v0[19];
      v10 = v0[20];
      v12 = v0[18];

      sub_266039224();
      v13 = sub_265FFE434();
      OUTLINED_FUNCTION_47(v13);
      OUTLINED_FUNCTION_29();
      v0[10] = v20;
      v0[11] = v21;
      sub_266039B94();
      OUTLINED_FUNCTION_33();
      v14 = v0[11];
      *v7 = v0[10];
      v7[1] = v14;
      OUTLINED_FUNCTION_5_1();
      (*(v15 + 104))(v7);
      swift_willThrow();
      (*(v11 + 8))(v10, v12);
LABEL_3:

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_31();

      __asm { BRAA            X1, X16 }
    }
  }

  OUTLINED_FUNCTION_9_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_26();
  v0[34] = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_25(v16);
  OUTLINED_FUNCTION_31();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_266009914()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t sub_2660099AC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 280) = v0;

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266009ACC()
{
  OUTLINED_FUNCTION_1();
  (*(v0[19] + 8))(v0[20], v0[18]);

  OUTLINED_FUNCTION_7_3();

  return v1();
}

uint64_t sub_266009B48()
{
  OUTLINED_FUNCTION_1();
  (*(v0[19] + 8))(v0[20], v0[18]);

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t sub_266009BC8()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v4;
  v1[16] = v5;
  v1[13] = v6;
  v1[14] = v7;
  v1[12] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  OUTLINED_FUNCTION_16(v9);
  v1[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v1[20] = v10;
  v1[21] = *(v10 - 8);
  v1[22] = swift_task_alloc();
  v11 = *(v3 + 16);
  v1[23] = v11;
  v1[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0x66C8000000000000;
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  v1[25] = v12;
  *v12 = v1;
  OUTLINED_FUNCTION_2(v12);
  OUTLINED_FUNCTION_37();

  return v14();
}

uint64_t sub_266009D9C()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v5[26] = v9;
  v5[27] = v0;

  if (v0)
  {

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    v5[28] = v3;
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_266009EE4()
{
  OUTLINED_FUNCTION_36();
  v0[2] = v0[28];
  v1 = v0[27];
  v0[3] = v0[26];
  v0[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
  sub_266039A24();
  if (v1)
  {

LABEL_5:

    OUTLINED_FUNCTION_11();

    return v11();
  }

  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[16];

  v6 = v0[5];
  v0[30] = v0[4];
  v0[31] = v6;
  (*(v4 + 8))(v5, v4);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v7 = v0[19];

    sub_2660078E8(v7, &unk_280057F60, &unk_26603B9E0);
    sub_266039224();
    v8 = sub_265FFE434();
    OUTLINED_FUNCTION_6(v8);
    OUTLINED_FUNCTION_32(v9, "Nil local player");
    OUTLINED_FUNCTION_5_1();
    (*(v10 + 104))();
    swift_willThrow();
    goto LABEL_5;
  }

  v13 = v0[23];
  (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
  v18 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[32] = v14;
  *v14 = v0;
  v14[1] = sub_26600A174;
  v15 = v0[22];
  v16 = v0[17];
  v17 = v0[16];

  return v18(v15, v17, v16);
}

uint64_t sub_26600A174()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v5[33] = v9;
  v5[34] = v0;

  if (v0)
  {
  }

  else
  {
    v5[35] = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_26600A284()
{
  v0[6] = v0[35];
  v1 = v0[34];
  v0[7] = v0[33];
  sub_266039A24();
  v2 = v0[31];
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_28();
    v4(v3);

    goto LABEL_3;
  }

  v7 = v0[30];

  v8 = v0[8];
  v9 = v0[9];
  v0[36] = v9;
  if (v7 == v8 && v2 == v9)
  {
  }

  else
  {
    v11 = OUTLINED_FUNCTION_48(v0[30]);

    if ((v11 & 1) == 0)
    {
      v13 = v0[21];
      v12 = v0[22];
      v14 = v0[20];

      sub_266039224();
      v15 = sub_265FFE434();
      OUTLINED_FUNCTION_47(v15);
      OUTLINED_FUNCTION_29();
      v0[10] = v22;
      v0[11] = v23;
      sub_266039B94();
      OUTLINED_FUNCTION_33();
      v16 = v0[11];
      *v9 = v0[10];
      v9[1] = v16;
      OUTLINED_FUNCTION_5_1();
      (*(v17 + 104))(v9);
      swift_willThrow();
      (*(v13 + 8))(v12, v14);
LABEL_3:

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_31();

      __asm { BRAA            X1, X16 }
    }
  }

  OUTLINED_FUNCTION_9_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_26();
  v0[37] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_25(v18);
  OUTLINED_FUNCTION_31();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_26600A4EC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 304) = v0;

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26600A60C()
{
  OUTLINED_FUNCTION_1();
  (*(v0[21] + 8))(v0[22], v0[20]);

  OUTLINED_FUNCTION_7_3();

  return v1();
}

uint64_t sub_26600A688()
{
  OUTLINED_FUNCTION_1();
  v0 = OUTLINED_FUNCTION_28();
  v1(v0);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_26600A700()
{
  OUTLINED_FUNCTION_1();
  v0 = OUTLINED_FUNCTION_28();
  v1(v0);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_26600A778()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_44();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);
  v3 = OUTLINED_FUNCTION_40();

  return v5(v3);
}

uint64_t sub_26600A814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_26600A83C, 0, 0);
}

uint64_t sub_26600A83C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = OUTLINED_FUNCTION_44();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_26600A914;

  return v7();
}

uint64_t sub_26600A914()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26600AA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26600AA90()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 64);
  v10 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v2;
  *(v4 + 24) = v10;
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v5;
  OUTLINED_FUNCTION_3_1();
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_26600ABF8;

  return v9();
}

uint64_t sub_26600ABF8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26600ACF8()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_26600AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26600AD70()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[10];
  v0[5] = type metadata accessor for InternalService(0);
  v0[6] = &off_2877B8648;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_26600C8F8(v1, boxed_opaque_existential_0);
  swift_task_alloc();
  OUTLINED_FUNCTION_26();
  v0[13] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_43(v3);

  return sub_26600029C(v5, v6);
}

uint64_t sub_26600AE24()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v4;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26600AF28()
{
  OUTLINED_FUNCTION_8();
  result = v0[14];
  v2 = *(result + 16);
  v0[16] = v2;
  v0[17] = 0;
  if (v2)
  {
    if (*(result + 16))
    {
      v0[18] = *(result + 40);

      OUTLINED_FUNCTION_0_1();
      v3 = swift_task_alloc();
      v0[19] = v3;
      *v3 = v0;
      v4 = OUTLINED_FUNCTION_1_3(v3);

      return v5(v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_5_3();

    return v6();
  }

  return result;
}

uint64_t sub_26600B048()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_26600B09C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_26600B19C()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[16];
  v2 = v0[17] + 1;
  v0[17] = v2;
  if (v2 == v1)
  {

    OUTLINED_FUNCTION_5_3();

    v3();
  }

  else
  {
    v4 = v0[14];
    if (v2 >= *(v4 + 16))
    {
      __break(1u);
    }

    else
    {
      v0[18] = *(v4 + 16 * v2 + 40);

      OUTLINED_FUNCTION_0_1();
      v5 = swift_task_alloc();
      v0[19] = v5;
      *v5 = v0;
      v6 = OUTLINED_FUNCTION_1_3(v5);

      v7(v6);
    }
  }
}

uint64_t sub_26600B2D0()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_26600B338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v13;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a2;
  v8[8] = a3;
  OUTLINED_FUNCTION_7_1();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26600B378()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 40) = *(v0 + 104);
  __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_5_1();
  (*(v1 + 16))();
  swift_task_alloc();
  OUTLINED_FUNCTION_26();
  *(v0 + 120) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_43(v2);

  return sub_26600029C(v4, v5);
}

uint64_t sub_26600B448()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26600B54C()
{
  OUTLINED_FUNCTION_8();
  result = v0[16];
  v2 = *(result + 16);
  v0[18] = v2;
  v0[19] = 0;
  if (v2)
  {
    if (*(result + 16))
    {
      v0[20] = *(result + 40);

      OUTLINED_FUNCTION_0_1();
      v3 = swift_task_alloc();
      v0[21] = v3;
      *v3 = v0;
      v4 = OUTLINED_FUNCTION_1_3(v3);

      return v5(v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_5_3();

    return v6();
  }

  return result;
}

uint64_t sub_26600B66C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_26600B6C0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_26600B7C0()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[18];
  v2 = v0[19] + 1;
  v0[19] = v2;
  if (v2 == v1)
  {

    OUTLINED_FUNCTION_5_3();

    v3();
  }

  else
  {
    v4 = v0[16];
    if (v2 >= *(v4 + 16))
    {
      __break(1u);
    }

    else
    {
      v0[20] = *(v4 + 16 * v2 + 40);

      OUTLINED_FUNCTION_0_1();
      v5 = swift_task_alloc();
      v0[21] = v5;
      *v5 = v0;
      v6 = OUTLINED_FUNCTION_1_3(v5);

      v7(v6);
    }
  }
}

uint64_t sub_26600B8F4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_26600B95C()
{
  OUTLINED_FUNCTION_36();
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3(v6);
  *v7 = v8;
  v7[1] = sub_265FFE784;
  OUTLINED_FUNCTION_37();

  return sub_26600B338(v9, v10, v11, v2, v3, v5, v4, v1);
}

uint64_t sub_26600BA2C()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v4 = v3;
  v0[2] = v5;
  v0[3] = v6;
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_2(v7);

  return sub_26600029C(v4, v2);
}

uint64_t sub_26600BAC8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_26600BBE8()
{
  OUTLINED_FUNCTION_8();
  result = v0[5];
  v2 = *(result + 16);
  v0[6] = v2;
  v0[7] = 0;
  if (v2)
  {
    if (*(result + 16))
    {
      v0[8] = *(result + 40);

      OUTLINED_FUNCTION_10_1();
      v3 = swift_task_alloc();
      v0[9] = v3;
      *v3 = v0;
      v4 = OUTLINED_FUNCTION_13_0(v3);

      return v5(v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    OUTLINED_FUNCTION_7_3();

    return v6();
  }

  return result;
}

uint64_t sub_26600BCEC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_26600BE24()
{
  OUTLINED_FUNCTION_8();

  v1 = v0[6];
  v2 = v0[7] + 1;
  v0[7] = v2;
  result = v0[5];
  if (v2 == v1)
  {

    OUTLINED_FUNCTION_7_3();

    return v4();
  }

  else if (v2 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v0[8] = *(result + 16 * v2 + 40);

    OUTLINED_FUNCTION_10_1();
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_13_0(v5);

    return v7(v6);
  }

  return result;
}

uint64_t sub_26600BF54()
{
  OUTLINED_FUNCTION_24();
  v5 = (*(v0 + 16) + **(v0 + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2(v2);
  OUTLINED_FUNCTION_37();

  return v5();
}

uint64_t sub_26600C06C()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_9();
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t sub_26600C168()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_3_1();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2(v2);
  v4 = OUTLINED_FUNCTION_40();

  return v6(v4);
}

uint64_t sub_26600C26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(a7 + 32) + **(a7 + 32));
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3(v14);
  *v15 = v16;
  v15[1] = sub_265FFE784;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_26600C3C4(uint64_t a1)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_3_1();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2(v3);
  OUTLINED_FUNCTION_38();

  return v6();
}

uint64_t sub_26600C4F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_266039804();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_26600C5E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_266039804();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_26600C6B8(uint64_t a1)
{
  sub_26600C78C(319, &qword_2800580D8, &protocol descriptor for GCFFriendService);
  if (v1 <= 0x3F)
  {
    sub_26600C78C(319, &qword_2800580E0, &protocol descriptor for GCFProfileService);
    if (v2 <= 0x3F)
    {
      sub_266039804();
      if (v3 <= 0x3F)
      {
        sub_26600C7E0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26600C78C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_26600C7E0(uint64_t a1)
{
  if (!qword_2800580E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280057F70, &unk_26603B960);
    v1 = sub_266039A34();
    if (!v2)
    {
      atomic_store(v1, &qword_2800580E8);
    }
  }
}

uint64_t sub_26600C844()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2(v6);
  OUTLINED_FUNCTION_37();

  return sub_26600AD54(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t sub_26600C8F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalService(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26600C95C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_45(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 16))(v4, v5);
  return v4;
}

void *sub_26600C9AC()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_26600CA88(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_26600C9F8(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_26600CA88((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_26600CA38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_45(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 32))(v4, v5);
  return v4;
}

void *sub_26600CA88(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_26600CB74(v8, v7);
  v10 = *(sub_266039444() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_26600CC70(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_26600CB74(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058380, &qword_26603C2F0);
  v4 = *(sub_266039444() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26600CC70(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_266039444(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_266039444();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23()
{

  return MEMORY[0x2821652B8](v1, v0, 0, 0, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_29()
{

  return sub_266039B04();
}

void OUTLINED_FUNCTION_33()
{

  JUMPOUT(0x266776E20);
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1)
{

  return sub_266039BE4();
}

uint64_t sub_26600D0C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_0(sub_26600D0E0);
}

uint64_t sub_26600D0E0()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800581F8, &qword_26603BFD8);
  *v2 = v0;
  v2[1] = sub_26600D1E0;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822008A0](v3);
}

uint64_t sub_26600D1E0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_26600D308(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
  OUTLINED_FUNCTION_2_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = aBlock - v10;
  (*(v8 + 16))(aBlock - v10, a1, v6);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v6);
  aBlock[4] = sub_266014CD8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26600D5C0;
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);

  [a2 getAchievementDescriptionsForGameDescriptor:a3 handler:v14];
  _Block_release(v14);
}

uint64_t sub_26600D4B4(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_266039B64();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_2660031D4(v3, v5);
    sub_265FFFCFC(0, &qword_280058220, 0x277D0BFC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_266039B44();
    sub_266039B74();
    sub_266039B84();
    sub_266039B54();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_26600D5C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_266039964();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_26600D654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0(sub_26600D670);
}

uint64_t sub_26600D670()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800581F8, &qword_26603BFD8);
  *v4 = v0;
  v4[1] = sub_26600D774;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822008A0](v5);
}

uint64_t sub_26600D774()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26600D874()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_11();

  return v0();
}

void sub_26600D8D0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
  OUTLINED_FUNCTION_2_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = aBlock - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058760, &qword_26603BFE8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26603B720;
  *(v14 + 56) = sub_265FFFCFC(0, &qword_280058210, 0x277D0C1C8);
  *(v14 + 32) = a4;
  v15 = a4;
  v16 = sub_266039954();

  (*(v10 + 16))(v13, a1, v8);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v17, v13, v8);
  aBlock[4] = sub_266014AEC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26600DB68;
  aBlock[3] = &block_descriptor_1;
  v19 = _Block_copy(aBlock);

  [a2 getAchievementsForGameDescriptor:a3 players:v16 handler:v19];
  _Block_release(v19);
}

uint64_t sub_26600DB04(uint64_t a1)
{
  result = sub_2660147A8(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2660147E8(result, v3, 0, a1);
  }
}

void sub_26600DB68(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800581F8, &qword_26603BFD8);
  v5 = sub_266039884();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_26600DC24()
{
  OUTLINED_FUNCTION_1();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_4_2(v3);

  return sub_26600D0C8(v5, v1);
}

uint64_t sub_26600DCB0()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_31_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26600DD9C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v3 = *v1;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2(v5);

  return sub_26600D654(v2, v0, v3);
}

uint64_t sub_26600DE38@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for ShimAchievementService.GCFGameStatServiceAchievementsAdapter;
  a3[4] = &off_2877B8720;
  *a3 = a1;
  return sub_2660021E4(a2, (a3 + 5));
}

uint64_t ShimAchievementService.describe(achievements:)()
{
  OUTLINED_FUNCTION_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580F0, &qword_26603BD38);
  OUTLINED_FUNCTION_16(v3);
  v1[4] = OUTLINED_FUNCTION_28_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580F8, &qword_26603BD40);
  OUTLINED_FUNCTION_16(v4);
  v1[5] = OUTLINED_FUNCTION_28_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058100, &unk_26603BD48);
  OUTLINED_FUNCTION_3_0(v5);
  v1[6] = v6;
  v1[7] = OUTLINED_FUNCTION_43_0();
  v1[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[9] = v7;
  OUTLINED_FUNCTION_3_0(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_43_0();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058110, &qword_26603BD58);
  v1[14] = v9;
  OUTLINED_FUNCTION_3_0(v9);
  v1[15] = v10;
  v1[16] = OUTLINED_FUNCTION_28_0();
  v11 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26600E038()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[17] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_26600E0EC;
  OUTLINED_FUNCTION_18_0(v0[2]);

  return sub_26600EC88();
}

uint64_t sub_26600E0EC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  v3[19] = v5;
  v3[20] = v6;
  v3[21] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_26600E1F8(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v78 = v2[10];
  v4 = v2 + 7;
  v5 = MEMORY[0x277D84F90];
  v79 = v2[20];
  v80 = *(v2[2] + 16);
  v81 = v2[19];
  v6 = v2[21];
  while (v3 != v80)
  {
    v7 = v2[16];
    OUTLINED_FUNCTION_35_0();
    v82 = v3;
    (*(v9 + 16))(v7, v8 + *(v9 + 72) * v3);
    v10 = sub_266039514();
    if (v6)
    {
      v73 = OUTLINED_FUNCTION_49();
      v74(v73);

      OUTLINED_FUNCTION_11();

      v75();
      return;
    }

    v12 = v11;
    if (!*(v81 + 16) || (v13 = v10, v14 = sub_26601368C(v2[16], &unk_280058110, &qword_26603BD58, &qword_280058270, &qword_280058278), (v15 & 1) == 0))
    {

LABEL_24:
      sub_2660393A4();
      OUTLINED_FUNCTION_34_0();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
      v37 = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_11_2();
        sub_266013738();
        v5 = v68;
      }

      v39 = *(v5 + 16);
      v38 = *(v5 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        OUTLINED_FUNCTION_22(v38);
        sub_266013738();
        v5 = v69;
      }

      v41 = v4;
      goto LABEL_29;
    }

    v77 = *(v78 + 16);
    v77(v2[12], *(v81 + 56) + *(v78 + 72) * v14, v2[9]);
    v16 = OUTLINED_FUNCTION_53();
    v17(v16);
    if (!*(v79 + 16) || (v18 = sub_26601368C(v2[13], &qword_2800584D0, &unk_26603B740, &qword_280058258, &qword_280058260), (v19 & 1) == 0))
    {

      v31 = OUTLINED_FUNCTION_53();
      v32(v31);
LABEL_23:
      v4 = v2 + 7;
      goto LABEL_24;
    }

    v76 = v5;
    v20 = *(*(v79 + 56) + 8 * v18);
    v21 = sub_266003570(v20);

    for (i = 0; ; ++i)
    {
      if (v21 == i)
      {

        v47 = OUTLINED_FUNCTION_12_0();
        v48(v47);
        v5 = v76;
        goto LABEL_23;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x266777030](i, v20);
      }

      else
      {
        if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v23 = *(v20 + 8 * i + 32);
      }

      v24 = v23;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        return;
      }

      v25 = [v23 identifier];
      v26 = sub_2660398E4();
      v28 = v27;

      if (v26 == v13 && v28 == v12)
      {
        break;
      }

      v30 = sub_266039BE4();

      if (v30)
      {
        goto LABEL_32;
      }
    }

LABEL_32:
    v49 = v2[13];
    v50 = v2[11];
    v51 = v2[9];

    v77(v50, v49, v51);
    v52 = [v24 identifier];
    sub_2660398E4();

    sub_2660143C8(v24);
    v53 = [v24 title];
    sub_2660398E4();

    v54 = [v24 unachievedDescription];
    sub_2660398E4();

    v55 = [v24 achievedDescription];
    sub_2660398E4();

    [v24 maximumPoints];
    [v24 isHidden];
    [v24 isReplayable];
    v56 = [v24 rarityPercent];
    v57 = v56;
    if (v56)
    {
      [v56 doubleValue];
    }

    v58 = v2[8];
    v59 = v2[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E70, &unk_26603B7A0);
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    sub_26600FD7C([v24 releaseState], v59);
    sub_266039394();
    v64 = sub_2660393A4();
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v64);
    v5 = v76;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      sub_266013738();
      v5 = v70;
    }

    v37 = v82;
    v39 = *(v5 + 16);
    v65 = *(v5 + 24);
    v40 = v39 + 1;
    if (v39 >= v65 >> 1)
    {
      OUTLINED_FUNCTION_22(v65);
      sub_266013738();
      v5 = v71;
    }

    v66 = OUTLINED_FUNCTION_36_0();
    v67(v66);
    v41 = v2 + 8;
    v4 = v2 + 7;
LABEL_29:
    v3 = v37 + 1;
    v42 = *v41;
    v43 = OUTLINED_FUNCTION_49();
    v44(v43);
    *(v5 + 16) = v40;
    OUTLINED_FUNCTION_32_0();
    sub_2660146BC(v42, v5 + v45 + *(v46 + 72) * v39, &unk_280058100, &unk_26603BD48);
    v6 = 0;
  }

  OUTLINED_FUNCTION_31_0();

  v72(v5);
}

uint64_t sub_26600EA9C()
{

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_26600EB64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0(sub_26600EB7C);
}

uint64_t sub_26600EB7C()
{
  OUTLINED_FUNCTION_24();
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  OUTLINED_FUNCTION_6_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_25_0(v1);

  return v3(v2);
}

uint64_t sub_26600EC88()
{
  OUTLINED_FUNCTION_1();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v0[7] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v0[8] = v5;
  v0[9] = OUTLINED_FUNCTION_43_0();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058110, &qword_26603BD58);
  v0[12] = v6;
  OUTLINED_FUNCTION_3_0(v6);
  v0[13] = v7;
  v0[14] = OUTLINED_FUNCTION_43_0();
  v0[15] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26600EDB8(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  v5 = *(v2[4] + 16);
  v2[16] = v5;
  v6 = v4;
  while (1)
  {
    v2[18] = v3;
    v2[19] = v4;
    v2[17] = v4;
    v7 = v2[15];
    if (v3 == v5)
    {

      OUTLINED_FUNCTION_38_0();

      __asm { BRAA            X3, X16 }
    }

    v8 = v2[13];
    v9 = *(v8 + 16);
    v10 = *(v8 + 72);
    v11 = OUTLINED_FUNCTION_39_0();
    v9(v11);
    sub_266039524();
    v12 = OUTLINED_FUNCTION_48_0();
    v49 = v9;
    v9(v12);
    v13 = OUTLINED_FUNCTION_24_0();
    v47 = v14;
    v14(v13);
    swift_isUniquelyReferenced_nonNull_native();
    v2[2] = v6;
    v15 = sub_26601368C(v7, &unk_280058110, &qword_26603BD58, &qword_280058270, &qword_280058278);
    if (__OFADD__(*(v6 + 16), (v16 & 1) == 0))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return MEMORY[0x2821FE290](v15);
    }

    v17 = v15;
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058280, &qword_26603C038);
    if (sub_266039BA4())
    {
      break;
    }

LABEL_7:
    v21 = v2[2];
    v2[22] = v21;
    v22 = v2[13];
    v23 = v2[14];
    v24 = v2[12];
    v26 = v2[7];
    v25 = v2[8];
    v50 = v21;
    if (v18)
    {
      v27 = *(v25 + 72);
      (*(v25 + 40))(*(v21 + 56) + v27 * v17, v2[10], v26);
      v28 = *(v22 + 8);
      v28(v23, v24);
    }

    else
    {
      OUTLINED_FUNCTION_51(v21 + 8 * (v17 >> 6));
      v48 = v30;
      v49(v29 + v17 * v10, v23, v24);
      v27 = *(v25 + 72);
      (*(v25 + 32))(*(v50 + 56) + v27 * v17, v48, v26);
      v28 = *(v22 + 8);
      v15 = (v28)(v23, v24);
      v31 = *(v50 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      *(v50 + 16) = v33;
    }

    v2[23] = v27;
    v2[24] = v28;
    v4 = MEMORY[0x277D84F98];
    if (!*(MEMORY[0x277D84F98] + 16) || (v34 = v2[11], , sub_26601368C(v34, &qword_2800584D0, &unk_26603B740, &qword_280058258, &qword_280058260), LOBYTE(v34) = v35, , (v34 & 1) == 0))
    {
      v39 = OUTLINED_FUNCTION_50();
      v47(v39);
      v2[25] = sub_265FFEED4();
      OUTLINED_FUNCTION_7_4();
      v42 = swift_task_alloc();
      v2[26] = v42;
      *v42 = v2;
      OUTLINED_FUNCTION_12_2(v42);
      OUTLINED_FUNCTION_38_0();

      __asm { BRAA            X1, X16 }
    }

    v36 = OUTLINED_FUNCTION_30();
    v37(v36);
    v38 = OUTLINED_FUNCTION_53();
    (v28)(v38);
    v6 = v2[22];
    v3 = v2[18] + 1;
    v5 = v2[16];
  }

  v19 = sub_26601368C(v2[14], &unk_280058110, &qword_26603BD58, &qword_280058270, &qword_280058278);
  if ((v18 & 1) == (v20 & 1))
  {
    v17 = v19;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38_0();

  return MEMORY[0x2821FE290](v15);
}

uint64_t sub_26600F308()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v3[27] = v7;
  v3[28] = v0;

  v8 = v2[25];
  if (v0)
  {
    v10 = v3[8];
    v9 = v3[9];
    v11 = v3[7];
    v12 = *(v10 + 8);
    v3[29] = v12;
    v3[30] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v9, v11);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26600F46C()
{
  v1 = v0[17];
  v2 = v0[9];
  swift_isUniquelyReferenced_nonNull_native();
  v0[3] = v1;
  v3 = sub_26601368C(v2, &qword_2800584D0, &unk_26603B740, &qword_280058258, &qword_280058260);
  if (__OFADD__(*(v1 + 16), (v4 & 1) == 0))
  {
    goto LABEL_38;
  }

  v5 = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058288, &unk_26603C040);
  if ((sub_266039BA4() & 1) == 0)
  {
LABEL_5:
    v9 = v0[3];
    v10 = v0[27];
    v72 = v9;
    if (v6)
    {
      *(v9[7] + 8 * v5) = v10;
    }

    else
    {
      v11 = v0[23];
      v12 = v0[20];
      v13 = v0[9];
      v14 = v0[7];
      v9[(v5 >> 6) + 8] |= 1 << v5;
      v3 = v12(v9[6] + v11 * v5, v13, v14);
      *(v9[7] + 8 * v5) = v10;
      v15 = v9[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
LABEL_39:
        __break(1u);
        return MEMORY[0x2821FE290](v3);
      }

      v9[2] = v17;
    }

    v18 = v0[24];
    v19 = v0[11];
    v20 = v0[7];
    v21 = *(v0[8] + 8);
    v21(v0[9], v20);
    v21(v19, v20);
    v22 = OUTLINED_FUNCTION_15_0();
    v18(v22);
    v23 = v0[28];
    v24 = v72;
    while (1)
    {
      v25 = v0[22];
      v26 = v0[18] + 1;
      v0[18] = v26;
      v0[19] = v24;
      v0[17] = v24;
      v27 = v0[15];
      if (v26 == v0[16])
      {

        OUTLINED_FUNCTION_37_0();

        __asm { BRAA            X3, X16 }
      }

      v28 = v0[13];
      v29 = *(v28 + 16);
      v30 = *(v28 + 72);
      v31 = OUTLINED_FUNCTION_39_0();
      v29(v31);
      v32 = sub_266039524();
      if (v23)
      {
        v62 = OUTLINED_FUNCTION_45_0(v32, v0[15]);
        v63(v62);

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_37_0();

        __asm { BRAA            X1, X16 }
      }

      v33 = OUTLINED_FUNCTION_48_0();
      v29(v33);
      v34 = OUTLINED_FUNCTION_24_0();
      v71 = v35;
      v35(v34);
      swift_isUniquelyReferenced_nonNull_native();
      v0[2] = v25;
      v3 = sub_26601368C(v27, &unk_280058110, &qword_26603BD58, &qword_280058270, &qword_280058278);
      if (__OFADD__(*(v25 + 16), (v36 & 1) == 0))
      {
        break;
      }

      v37 = v3;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058280, &qword_26603C038);
      if (sub_266039BA4())
      {
        v39 = sub_26601368C(v0[14], &unk_280058110, &qword_26603BD58, &qword_280058270, &qword_280058278);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_33;
        }

        v37 = v39;
      }

      v41 = v0[2];
      v0[22] = v41;
      v42 = v0[13];
      v43 = v0[14];
      v44 = v0[12];
      v46 = v0[7];
      v45 = v0[8];
      v74 = v41;
      if (v38)
      {
        v47 = *(v45 + 72);
        (*(v45 + 40))(*(v41 + 56) + v47 * v37, v0[10], v46);
        v48 = *(v42 + 8);
        v48(v43, v44);
      }

      else
      {
        OUTLINED_FUNCTION_51(v41 + 8 * (v37 >> 6));
        v73 = v50;
        v51(v49 + v37 * v30, v43, v44);
        v47 = *(v45 + 72);
        (*(v45 + 32))(*(v74 + 56) + v47 * v37, v73, v46);
        v48 = *(v42 + 8);
        v3 = (v48)(v43, v44);
        v52 = *(v74 + 16);
        v16 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v16)
        {
          goto LABEL_37;
        }

        *(v74 + 16) = v53;
      }

      v0[23] = v47;
      v0[24] = v48;
      v24 = v72;
      if (!v72[2] || (v54 = v0[11], , sub_26601368C(v54, &qword_2800584D0, &unk_26603B740, &qword_280058258, &qword_280058260), LOBYTE(v54) = v55, , (v54 & 1) == 0))
      {
        v59 = OUTLINED_FUNCTION_50();
        v71(v59);
        v0[25] = sub_265FFEED4();
        OUTLINED_FUNCTION_7_4();
        v66 = swift_task_alloc();
        v0[26] = v66;
        *v66 = v0;
        OUTLINED_FUNCTION_12_2(v66);
        OUTLINED_FUNCTION_37_0();

        __asm { BRAA            X1, X16 }
      }

      v56 = OUTLINED_FUNCTION_30();
      v57(v56);
      v58 = OUTLINED_FUNCTION_53();
      (v48)(v58);
      v23 = 0;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = sub_26601368C(v0[9], &qword_2800584D0, &unk_26603B740, &qword_280058258, &qword_280058260);
  if ((v6 & 1) == (v8 & 1))
  {
    v5 = v7;
    goto LABEL_5;
  }

LABEL_33:
  OUTLINED_FUNCTION_37_0();

  return MEMORY[0x2821FE290](v3);
}

uint64_t sub_26600FB4C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 192);
  (*(v0 + 232))(*(v0 + 88), *(v0 + 56));
  v2 = OUTLINED_FUNCTION_12_0();
  v1(v2);

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_26600FC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_26601368C(a1, &unk_280058110, &qword_26603BD58, &qword_280058270, &qword_280058278), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_26600FD0C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_26601368C(a1, &qword_2800584D0, &unk_26603B740, &qword_280058258, &qword_280058260);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26600FD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = MEMORY[0x277D0CEE8];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v3 = MEMORY[0x277D0CEF0];
LABEL_5:
    v4 = *v3;
    v5 = sub_266039274();
    OUTLINED_FUNCTION_5();
    (*(v6 + 104))(a2, v4, v5);
    v7 = a2;
    v8 = 0;
    v9 = 1;
    v10 = v5;
    goto LABEL_7;
  }

  sub_266039274();
  OUTLINED_FUNCTION_34_0();
LABEL_7:

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t ShimAchievementService.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_1();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  OUTLINED_FUNCTION_16(v3);
  v1[9] = OUTLINED_FUNCTION_28_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058128, &qword_26603BD90);
  v1[10] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_28_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[13] = v6;
  OUTLINED_FUNCTION_3_0(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_28_0();
  v8 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26600FF70()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v0[17] = 0;
  v0[18] = v4;
  v0[16] = v3;
  if (v3)
  {
    v5 = v0[8];
    (*(v1 + 16))(v0[15], v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0[13]);
    sub_266005E54(v5, (v0 + 2));
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v8 = sub_265FFEED4();
    v0[19] = v8;
    v12 = v8;
    OUTLINED_FUNCTION_6_2();
    v15 = (v13 + *v13);
    v14 = swift_task_alloc();
    v0[20] = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_2(v14);

    return v15(v12, v6, v7);
  }

  else
  {

    OUTLINED_FUNCTION_31_0();
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }
}

uint64_t sub_2660101F4()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  *(v3 + 168) = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_266010328()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[15];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  sub_26601081C(sub_26601442C, v4, v1);
  if (v2)
  {

    OUTLINED_FUNCTION_55();
    v5 = OUTLINED_FUNCTION_12_0();
    v6(v5);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_54();

    __asm { BRAA            X1, X16 }
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2660395F4();
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058110, &qword_26603BD58);
  OUTLINED_FUNCTION_14_2();
  sub_266014E7C(v13, &unk_280058110, &qword_26603BD58);
  OUTLINED_FUNCTION_13_1();
  sub_266014E7C(v14, &unk_280058110, &qword_26603BD58);
  sub_2660395E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v0[18];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_266013738();
    v16 = v32;
  }

  v17 = *(v16 + 16);
  if (v17 >= *(v16 + 24) >> 1)
  {
    sub_266013738();
    v16 = v33;
  }

  v19 = v0[14];
  v18 = v0[15];
  v20 = v0[12];
  v21 = v0[13];
  v22 = v0[10];
  v23 = v0[11];
  *(v16 + 16) = v17 + 1;
  (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v17, v20, v22);
  (*(v19 + 8))(v18, v21);
  v24 = v0[16];
  v25 = v0[17] + 1;
  v0[17] = v25;
  v0[18] = v16;
  if (v25 == v24)
  {

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_54();

    __asm { BRAA            X2, X16 }
  }

  v28 = v0[8];
  (*(v0[14] + 16))(v0[15], v0[7] + ((*(v0[14] + 80) + 32) & ~*(v0[14] + 80)) + *(v0[14] + 72) * v25, v0[13]);
  sub_266005E54(v28, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[19] = sub_265FFEED4();
  OUTLINED_FUNCTION_6_2();
  v29 = swift_task_alloc();
  v0[20] = v29;
  *v29 = v0;
  OUTLINED_FUNCTION_2(v29);
  OUTLINED_FUNCTION_54();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_266010780()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_55();
  v3(v1, v2);

  OUTLINED_FUNCTION_11();

  return v4();
}

void sub_26601081C(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058110, &qword_26603BD58);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v16 - v7;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266039BB4())
  {
    v25 = MEMORY[0x277D84F90];
    sub_26601319C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v9 = 0;
    v10 = v25;
    v17 = i;
    v18 = a3 & 0xC000000000000001;
    v16[0] = a3 & 0xFFFFFFFFFFFFFF8;
    v16[1] = v6 + 32;
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v18)
      {
        v12 = MEMORY[0x266777030](v9, a3);
      }

      else
      {
        if (v9 >= *(v16[0] + 16))
        {
          goto LABEL_19;
        }

        v12 = *(a3 + 8 * v9 + 32);
      }

      v13 = v12;
      v24 = v12;
      v20(&v24, &v23);
      if (v4)
      {

        return;
      }

      v4 = 0;

      v25 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26601319C(v14 > 1, v15 + 1, 1);
        v10 = v25;
      }

      *(v10 + 16) = v15 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v22, v19);
      ++v9;
      if (v11 == v17)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

uint64_t ShimAchievementService.getProgress(achievements:belongingTo:)()
{
  OUTLINED_FUNCTION_1();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058140, &unk_26603BDA0);
  OUTLINED_FUNCTION_16(v4);
  v1[5] = OUTLINED_FUNCTION_43_0();
  v1[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v1[7] = v5;
  OUTLINED_FUNCTION_3_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_28_0();
  v7 = sub_266039354();
  v1[10] = v7;
  OUTLINED_FUNCTION_3_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_28_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058150, &qword_26603BDB0);
  OUTLINED_FUNCTION_16(v9);
  v1[13] = OUTLINED_FUNCTION_28_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[14] = v10;
  OUTLINED_FUNCTION_3_0(v10);
  v1[15] = v11;
  v1[16] = OUTLINED_FUNCTION_28_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058110, &qword_26603BD58);
  v1[17] = v12;
  OUTLINED_FUNCTION_3_0(v12);
  v1[18] = v13;
  v1[19] = OUTLINED_FUNCTION_43_0();
  v1[20] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266010C8C()
{
  OUTLINED_FUNCTION_1();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_266010D44;
  OUTLINED_FUNCTION_18_0(*(v0 + 16));

  return sub_26600EC88();
}

uint64_t sub_266010D44()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  v3[23] = v5;
  v3[24] = v6;
  v3[25] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_266010E50(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v76 = *(v2[2] + 16);
  v72 = (v2[8] + 16);
  v74 = (v2[15] + 32);
  v75 = (v2[18] + 8);
  v79 = MEMORY[0x277D84F90];
  v4 = v2[25];
  while (v3 != v76)
  {
    v5 = v2[23];
    v6 = v2[20];
    v8 = v2[13];
    v7 = v2[14];
    OUTLINED_FUNCTION_35_0();
    v11 = *(v10 + 16);
    v11(v6, v9 + *(v10 + 72) * v3);
    sub_26600FC10(v6, v5, v8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v7);
    v13 = v2[24];
    if (EnumTagSinglePayload == 1)
    {
      v60 = v2[13];

      sub_266014654(v60);
LABEL_38:
      sub_266039224();
      sub_265FFE434();
      v62 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_44_0(v62, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058160, &qword_26603BDC8);
      sub_2660391F4();
      swift_willThrow();
      v64 = OUTLINED_FUNCTION_36_0();
      v65(v64);
LABEL_40:
      OUTLINED_FUNCTION_42();

      OUTLINED_FUNCTION_11();

      v71();
      return;
    }

    v14 = v2[16];
    (*v74)(v14, v2[13], v2[14]);
    v15 = sub_26600FD0C(v14, v13);
    if (!v15)
    {
      OUTLINED_FUNCTION_33_0();
      v61();

      goto LABEL_38;
    }

    v16 = v15;
    v17 = sub_266039514();
    if (v4)
    {
      v66 = v2[20];
      v68 = v2[16];
      v67 = v2[17];
      v69 = v2[14];

      OUTLINED_FUNCTION_33_0();
      v70(v68, v69);
      (*v75)(v66, v67);

      goto LABEL_40;
    }

    v19 = v17;
    v20 = v18;
    v77 = v11;
    v78 = v3 + 1;
    v21 = sub_266003570(v16);
    for (i = 0; ; ++i)
    {
      if (v21 == i)
      {

        v24 = 0;
        goto LABEL_22;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x266777030](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v23 = *(v16 + 8 * i + 32);
      }

      v24 = v23;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v25 = [v23 identifier];
      v26 = sub_2660398E4();
      v28 = v27;

      if (v26 == v19 && v28 == v20)
      {
        break;
      }

      OUTLINED_FUNCTION_29_0();
      v30 = sub_266039BE4();

      if (v30)
      {
        goto LABEL_21;
      }
    }

LABEL_21:

LABEL_22:
    v2 = v73;
    v32 = v73[19];
    v31 = v73[20];
    v33 = v73[17];
    (*v72)(v73[9], v73[3], v73[7]);
    v77(v32, v31, v33);
    if (v24)
    {
      [v24 percentComplete];
      [v24 isCompleted];
      v34 = [v24 lastReportedDate];
      if (v34)
      {
        v35 = v34;
        sub_266039144();

        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      v42 = v73[5];
      v41 = v73[6];
      v43 = sub_266039154();
      __swift_storeEnumTagSinglePayload(v42, v36, 1, v43);
      sub_2660146BC(v42, v41, &unk_280058140, &unk_26603BDA0);
    }

    else
    {
      sub_266039154();
      OUTLINED_FUNCTION_34_0();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    }

    sub_266039344();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_26601383C(0, v79[2] + 1, 1, v79);
    }

    v45 = v79[2];
    v44 = v79[3];
    if (v45 >= v44 >> 1)
    {
      v56 = OUTLINED_FUNCTION_22(v44);
      v79 = sub_26601383C(v56, v57, v58, v79);
    }

    v46 = v73[16];
    v47 = v73[14];
    v48 = v73[12];
    v49 = v73[10];

    OUTLINED_FUNCTION_33_0();
    v50(v46, v47);
    v51 = OUTLINED_FUNCTION_36_0();
    v52(v51);
    v79[2] = v45 + 1;
    OUTLINED_FUNCTION_32_0();
    (*(v55 + 32))(v54 + v53 + *(v55 + 72) * v45, v48, v49);
    v4 = 0;
    v3 = v78;
  }

  OUTLINED_FUNCTION_31_0();

  v59(v79);
}

uint64_t sub_26601151C()
{

  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_2660115D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0(sub_2660115EC);
}

uint64_t sub_2660115EC()
{
  OUTLINED_FUNCTION_1();
  sub_266005E54(*(v0 + 64), v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 80) = v1;
  *(v0 + 96) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_2660116B0;

  return sub_265FFF2B8();
}

uint64_t sub_2660116B0()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v5[14] = v3;
  v5[15] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_14_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_6_2();
    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v5[16] = v13;
    *v13 = v7;
    v13[1] = sub_26601189C;
    v14 = v5[11];
    v15 = v5[10];
    v16 = v5[7];

    return v18(v16, v3, v15, v14);
  }
}

uint64_t sub_26601189C()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v5 + 136) = v0;

  if (!v0)
  {

    *(v5 + 144) = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2660119AC()
{
  OUTLINED_FUNCTION_1();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_31_0();
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_266011A0C()
{
  OUTLINED_FUNCTION_1();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t sub_266011A68()
{
  OUTLINED_FUNCTION_1();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t ShimAchievementService.listFriends(having:after:)()
{
  OUTLINED_FUNCTION_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v1[4] = v3;
  OUTLINED_FUNCTION_3_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_28_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  OUTLINED_FUNCTION_16(v5);
  v1[7] = OUTLINED_FUNCTION_28_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058168, &qword_26603BDD8);
  v1[8] = v6;
  OUTLINED_FUNCTION_3_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_28_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058150, &qword_26603BDB0);
  OUTLINED_FUNCTION_16(v8);
  v1[11] = OUTLINED_FUNCTION_28_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[12] = v9;
  OUTLINED_FUNCTION_3_0(v9);
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_28_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058110, &qword_26603BD58);
  v1[15] = v11;
  OUTLINED_FUNCTION_3_0(v11);
  v1[16] = v12;
  v1[17] = OUTLINED_FUNCTION_28_0();
  v13 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_266011CDC()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[18] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_266011D90;
  OUTLINED_FUNCTION_18_0(v0[2]);

  return sub_26600EC88();
}

uint64_t sub_266011D90()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  v3[20] = v5;
  v3[21] = v6;
  v3[22] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266011E9C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v85 = (v3[13] + 32);
  v5 = (v3[16] + 8);
  v6 = MEMORY[0x277D84F90];
  v7 = *(v3[2] + 16);
  v97 = v3[22];
  v82 = v5;
  for (i = v7; ; v7 = i)
  {
    v8 = v3[11];
    if (v4 == v7)
    {

      OUTLINED_FUNCTION_31_0();

      return v75(v6);
    }

    v9 = v3[20];
    v10 = v3[17];
    v11 = v3[12];
    OUTLINED_FUNCTION_35_0();
    v86 = v12;
    (*(v14 + 16))(v10, v13 + *(v14 + 72) * v12);
    sub_26600FC10(v10, v9, v8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    v16 = v3[21];
    if (EnumTagSinglePayload == 1)
    {
      v76 = v3[11];

      sub_266014654(v76);
      goto LABEL_50;
    }

    v17 = v3[14];
    (*v85)(v17, v3[11], v3[12]);
    v18 = sub_26600FD0C(v17, v16);
    if (!v18)
    {
      break;
    }

    v19 = v18;
    v87 = v86 + 1;
    v98 = MEMORY[0x277D84FA0];
    v20 = sub_266003570(v18);
    v21 = 0;
    v22 = v19 & 0xC000000000000001;
    while (v20 != v21)
    {
      sub_2660130EC(v21, v22 == 0, v19);
      if (v22)
      {
        result = MEMORY[0x266777030](v21, v19);
      }

      else
      {
        result = *(v19 + 8 * v21 + 32);
      }

      v24 = result;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        return result;
      }

      v25 = [result friendsWhoHaveThis];
      sub_265FFFCFC(0, &unk_280058170, 0x277D0BFC8);
      v26 = sub_266039964();

      v2 = v97;
      sub_266012ABC(v26);

      ++v21;
    }

    v27 = v98;
    v28 = *(v98 + 16);
    if (v28)
    {
      v84 = v6;
      v99 = MEMORY[0x277D84F90];
      sub_2660131DC(0, v28, 0);
      result = sub_266014838(v27);
      v31 = result;
      v32 = 0;
      v96 = v27 + 56;
      v88 = v27 + 64;
      v90 = v27;
      v89 = v28;
      if ((result & 0x8000000000000000) == 0)
      {
        while (v31 < 1 << *(v27 + 32))
        {
          v33 = v31 >> 6;
          if ((*(v96 + 8 * (v31 >> 6)) & (1 << v31)) == 0)
          {
            goto LABEL_53;
          }

          if (*(v27 + 36) != v29)
          {
            goto LABEL_54;
          }

          v95 = v30;
          v93 = v32;
          v94 = v29;
          v34 = (*(v27 + 48) + 16 * v31);
          v35 = *v34;
          v36 = v34[1];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
          sub_265FFED20();
          v38 = (*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_26603B720;
          v40 = (v39 + v38);
          *v40 = v35;
          v40[1] = v36;
          swift_storeEnumTagMultiPayload();
          swift_bridgeObjectRetain_n();
          sub_266039584();
          v91 = v97;
          if (v97)
          {
            v69 = v92[17];
            v71 = v92[14];
            v70 = v92[15];
            v72 = v92[12];

            OUTLINED_FUNCTION_33_0();
            v73(v71, v72);
            (*v82)(v69, v70);

            goto LABEL_42;
          }

          v42 = *(v99 + 16);
          v41 = *(v99 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_2660131DC(v41 > 1, v42 + 1, 1);
          }

          *(v99 + 16) = v42 + 1;
          OUTLINED_FUNCTION_32_0();
          result = (*(v44 + 32))(v99 + v43 + *(v44 + 72) * v42);
          v27 = v90;
          if (v95)
          {
            goto LABEL_58;
          }

          v45 = 1 << *(v90 + 32);
          if (v31 >= v45)
          {
            goto LABEL_55;
          }

          v46 = *(v96 + 8 * v33);
          if ((v46 & (1 << v31)) == 0)
          {
            goto LABEL_56;
          }

          if (*(v90 + 36) != v94)
          {
            goto LABEL_57;
          }

          v47 = v46 & (-2 << (v31 & 0x3F));
          if (v47)
          {
            v45 = __clz(__rbit64(v47)) | v31 & 0x7FFFFFFFFFFFFFC0;
            v48 = v89;
          }

          else
          {
            v49 = v33 << 6;
            v50 = (v88 + 8 * v33);
            v51 = v33 + 1;
            v48 = v89;
            while (v51 < (v45 + 63) >> 6)
            {
              v53 = *v50++;
              v52 = v53;
              v49 += 64;
              ++v51;
              if (v53)
              {
                result = sub_266014878(v31, v94, 0);
                v45 = __clz(__rbit64(v52)) + v49;
                goto LABEL_31;
              }
            }

            result = sub_266014878(v31, v94, 0);
          }

LABEL_31:
          v32 = v93 + 1;
          if (v93 + 1 == v48)
          {

            v97 = 0;
            v5 = v82;
            v6 = v84;
            goto LABEL_36;
          }

          v97 = 0;
          v30 = 0;
          v29 = *(v90 + 36);
          v31 = v45;
          if (v45 < 0)
          {
            goto LABEL_52;
          }
        }
      }

      goto LABEL_52;
    }

    v91 = v2;

LABEL_36:
    sub_2660395F4();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    OUTLINED_FUNCTION_14_2();
    sub_266014E7C(&qword_280058188, &unk_280057F70, &unk_26603B960);
    OUTLINED_FUNCTION_13_1();
    sub_266014E7C(&qword_280058190, &unk_280057F70, &unk_26603B960);
    OUTLINED_FUNCTION_29_0();
    sub_2660395E4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      sub_266013738();
      v6 = v67;
    }

    v2 = v91;
    v58 = *(v6 + 16);
    if (v58 >= *(v6 + 24) >> 1)
    {
      sub_266013738();
      v6 = v68;
    }

    v59 = v92[17];
    v60 = v92[15];
    v61 = v92[10];
    v62 = v92[8];
    OUTLINED_FUNCTION_33_0();
    v63();
    (*v5)(v59, v60);
    *(v6 + 16) = v58 + 1;
    OUTLINED_FUNCTION_32_0();
    v66 = v6 + v64 + *(v65 + 72) * v58;
    v3 = v92;
    (*(v65 + 32))(v66, v61, v62);
    v4 = v87;
  }

  OUTLINED_FUNCTION_33_0();
  v77();

LABEL_50:
  v78 = sub_266039224();
  v79 = sub_265FFE434();
  OUTLINED_FUNCTION_44_0(v78, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058160, &qword_26603BDC8);
  sub_2660391F4();
  swift_willThrow();
  v80 = OUTLINED_FUNCTION_29_0();
  v81(v80);
LABEL_42:

  OUTLINED_FUNCTION_11();

  return v74();
}

uint64_t sub_266012804()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_2660128AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0(sub_2660128C4);
}

uint64_t sub_2660128C4()
{
  OUTLINED_FUNCTION_24();
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  OUTLINED_FUNCTION_6_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_25_0(v1);

  return v3(v2);
}

uint64_t sub_2660129D0()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_31_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

void sub_266012ABC(unint64_t a1)
{
  v2 = sub_266003570(a1);
  v3 = 0;
  v13 = a1 & 0xC000000000000001;
  while (v2 != v3)
  {
    if (v13)
    {
      v4 = MEMORY[0x266777030](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v6 = [v4 friendPlayer];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 playerID];
      v9 = sub_2660398E4();
      v11 = v10;

      sub_266013B2C(&v12, v9, v11);
    }

    else
    {
    }

    ++v3;
  }
}

uint64_t sub_266012C48()
{
  OUTLINED_FUNCTION_8();
  sub_266039224();
  sub_265FFE434();
  v0 = OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_44_0(v0, v1);
  sub_266039204();
  swift_willThrow();
  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_266012CCC()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_2(v1);

  return ShimAchievementService.describe(achievements:)();
}

uint64_t sub_266012D50()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_2(v1);

  return ShimAchievementService.listAchievements(games:after:)();
}

uint64_t sub_266012DD4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimAchievementService.getProgress(achievements:belongingTo:)();
}

uint64_t sub_266012E68()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_2(v1);

  return ShimAchievementService.listFriends(having:after:)();
}

uint64_t sub_266012EEC()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimAchievementService.resetProgress(achievements:belongingTo:)();
}

uint64_t sub_266012F6C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimAchievementService.reveal(achievements:belongingTo:)();
}

uint64_t sub_266012FEC()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimAchievementService.submit(progress:)();
}

uint64_t sub_26601306C()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimAchievementService.clearCache()();
}

unint64_t sub_2660130EC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_266013110()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_4_2(v3);

  return sub_26600EB64(v5, v1);
}

void *sub_26601321C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058240, &qword_26603C018);
  v4 = *(sub_266039354() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_266013318(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_15_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_3_0(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_26601340C()
{
  OUTLINED_FUNCTION_46();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  if (v9 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v12 = OUTLINED_FUNCTION_15_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_3_0(v14);
  v16 = *(v15 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v16)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v10;
  v19[3] = 2 * ((v20 - v18) / v16);
LABEL_19:
  v22 = OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_32_0();
  if (v3)
  {
    sub_266007240(v0 + v24, v10, v19 + v24, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_2660135B8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_266039354(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_266039354();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_26601368C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v9 = OUTLINED_FUNCTION_45_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  sub_266014E7C(a4, a2, a3);
  sub_2660398B4();
  v11 = OUTLINED_FUNCTION_52();
  return sub_266013928(v11, v12, a2, a3, a5);
}

void sub_266013738()
{
  OUTLINED_FUNCTION_46();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  v11 = sub_266013318(v10, v9, v5, v6);
  v12 = OUTLINED_FUNCTION_15_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_32_0();
  if (v3)
  {
    sub_266007240(v0 + v14, v10, v11 + v14, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_26601383C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_26601321C(v8, v7);
  v10 = *(sub_266039354() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_2660135B8(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

unint64_t sub_266013928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v20 = a4;
  v21 = a5;
  v17 = a1;
  v19 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v22 = v5 + 64;
  v18 = v5;
  v13 = ~(-1 << *(v5 + 32));
  for (i = a2 & v13; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v9 + 16))(v12, *(v18 + 48) + *(v9 + 72) * i, v7);
    sub_266014E7C(v21, v19, v20);
    v15 = sub_2660398C4();
    (*(v9 + 8))(v12, v7);
    if (v15)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_266013AC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26603BD20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_266013B2C(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_266039C24();
  sub_2660398F4();
  v8 = sub_266039C34();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_266039BE4() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_266013ED4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_266013C78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800583B0, &qword_26603C010);
  result = sub_266039AE4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_266013AC8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_266039C24();
    sub_2660398F4();
    result = sub_266039C34();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_266013ED4(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_266013C78(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_266014194(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_266039C24();
      sub_2660398F4();
      result = sub_266039C34();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_266039BE4() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_26601403C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_266039C04();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_26601403C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800583B0, &qword_26603C010);
  v2 = *v0;
  v3 = sub_266039AD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_266014194(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800583B0, &qword_26603C010);
  result = sub_266039AE4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_266039C24();

        sub_2660398F4();
        result = sub_266039C34();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2660143C8(void *a1)
{
  v1 = [a1 groupIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2660398E4();

  return v3;
}

uint64_t sub_26601442C(id *a1, void *a2)
{
  v4 = [*a1 identifier];
  sub_2660398E4();

  sub_266039494();

  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t sub_2660144D4()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_2(v4);

  return sub_2660115D0(v6, v2, v1);
}

uint64_t sub_26601456C()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  OUTLINED_FUNCTION_31_0();

  return v5(v2);
}

uint64_t sub_266014654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058150, &qword_26603BDB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2660146BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26601471C()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_4_2(v3);

  return sub_2660128AC(v5, v1);
}

uint64_t sub_2660147E8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
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

uint64_t sub_266014878(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t dispatch thunk of GCFGameStatServiceAchievements.getAchievementDescriptions(gameDescriptor:)()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_2(v8);

  return v11(v5, v3, v1);
}

uint64_t dispatch thunk of GCFGameStatServiceAchievements.getAchievements(gameDescriptor:player:)()
{
  OUTLINED_FUNCTION_6_2();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2(v2);
  v4 = OUTLINED_FUNCTION_29_0();

  return v6(v4);
}

uint64_t sub_266014AEC()
{
  OUTLINED_FUNCTION_47_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
  OUTLINED_FUNCTION_16(v2);
  if (v0)
  {
    v3 = sub_266039224();
    v4 = sub_265FFE434();
    v5 = OUTLINED_FUNCTION_44_0(v3, v4);
    *v6 = v0;
    (*(*(v3 - 8) + 104))(v6, *MEMORY[0x277D0CE60], v3);
    v7 = v0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
    OUTLINED_FUNCTION_19_1(v8, v9, v10, v11, v12, v13, v14, v15, v27, v5);
    return sub_2660399C4();
  }

  else
  {
    v17 = sub_26600DB04(v1);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v18 = v17;
    }

    v28 = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
    OUTLINED_FUNCTION_19_1(v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    return sub_2660399D4();
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_266014CD8()
{
  OUTLINED_FUNCTION_47_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
  OUTLINED_FUNCTION_16(v2);
  if (v0)
  {
    v3 = sub_266039224();
    v4 = sub_265FFE434();
    v5 = OUTLINED_FUNCTION_44_0(v3, v4);
    *v6 = v0;
    (*(*(v3 - 8) + 104))(v6, *MEMORY[0x277D0CE60], v3);
    v29 = v5;
    v7 = v0;
LABEL_3:
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
    OUTLINED_FUNCTION_19_1(v8, v9, v10, v11, v12, v13, v14, v15, v28, v29);
    return sub_2660399C4();
  }

  v17 = sub_26600D4B4(v1);
  if (!v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058218, &qword_26603BFF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800581F8, &qword_26603BFD8);
    v26 = sub_266039224();
    v27 = sub_265FFE434();
    LOBYTE(v26) = OUTLINED_FUNCTION_44_0(v26, v27);
    sub_2660391D4();
    v29 = v26;
    goto LABEL_3;
  }

  v30 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058200, &qword_26603BFE0);
  OUTLINED_FUNCTION_19_1(v18, v19, v20, v21, v22, v23, v24, v25, v28, v30);
  return sub_2660399D4();
}

uint64_t sub_266014E7C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v5 = OUTLINED_FUNCTION_45_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5, v6);
    OUTLINED_FUNCTION_52();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_0()
{
  *(v1 + 160) = *(v0 + 16);
  *(v1 + 168) = (v0 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v2;
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_42()
{
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_44_0(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_266015328(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_2660398E4();

  return v3;
}

uint64_t sub_266015380(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266015394()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058290, &qword_26603C6A0);
  *v2 = v0;
  v2[1] = sub_266015490;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822008A0](v3);
}

uint64_t sub_266015490()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_266015590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_41_1();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058730, &unk_26603C370);
  OUTLINED_FUNCTION_2_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  v13 = objc_opt_self();
  v14 = sub_266039954();
  (*(v9 + 16))(v12, v6, v7);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v7);
  OUTLINED_FUNCTION_13_2();
  v18[1] = 1107296256;
  v18[2] = sub_266015750;
  v18[3] = &block_descriptor_41;
  v17 = _Block_copy(v18);

  [v13 getProfilesForPlayerIDs:v14 fetchOptions:1 from:v4 handler:v17];
  _Block_release(v17);

  OUTLINED_FUNCTION_42_0();
}

uint64_t sub_266015750(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_265FFFCFC(0, &qword_280058210, 0x277D0C1C8);
    v4 = sub_266039964();
  }

  v6 = a3;
  v5(v4, a3);
}