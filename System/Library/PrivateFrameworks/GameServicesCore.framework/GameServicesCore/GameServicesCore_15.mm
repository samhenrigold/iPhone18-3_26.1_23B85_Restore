unint64_t sub_227C8EFD8()
{
  result = qword_27D7E9D00;
  if (!qword_27D7E9D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9CD8, &unk_227D61090);
    sub_227C8EF10(&qword_27D7E9D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9D00);
  }

  return result;
}

unint64_t sub_227C8F08C()
{
  result = qword_27D7E9D10;
  if (!qword_27D7E9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9D10);
  }

  return result;
}

uint64_t static AssetService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AssetService(0);
  sub_227D49D78();
  OUTLINED_FUNCTION_1_28();
  sub_227B0F7BC(v5);
  OUTLINED_FUNCTION_0_46();
  sub_227B0F7BC(v6);
  v7 = sub_227D493A8();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC16GameServicesCore12AssetService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v10 + 16))(v8 + v9, a1);
    *(v8 + OBJC_IVAR____TtC16GameServicesCore12AssetService_actorSystem) = a2;
  }

  return v8;
}

uint64_t AssetService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore12AssetService_id;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_28();
  sub_227B0F7BC(v2);
  sub_227D493C8();
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  (*(v3 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore12AssetService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v2 + 8))(v0 + v1);

    swift_defaultActor_destroy();
  }

  else
  {
    AssetService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227C8F38C()
{
  sub_227D4DB58();
  type metadata accessor for AssetService(0);
  OUTLINED_FUNCTION_0_46();
  sub_227B0F7BC(v0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t AssetService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for AssetService(0);
    OUTLINED_FUNCTION_0_46();
    sub_227B0F7BC(v1);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227C8F480@<X0>(uint64_t *a1@<X8>)
{
  result = AssetService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227C8F524(uint64_t a1)
{
  type metadata accessor for AssetService(0);
  OUTLINED_FUNCTION_0_46();
  sub_227B0F7BC(v1);
  return sub_227D49418();
}

uint64_t sub_227C8F590(uint64_t a1)
{
  sub_227D4DB58();
  type metadata accessor for AssetService(0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227C8F798()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_12_14(v1);

  return AssetService.getImageData(images:size:)();
}

uint64_t sub_227C8F838(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for AssetService(0);
  OUTLINED_FUNCTION_0_46();
  sub_227B0F7BC(v2);

  return MEMORY[0x2821FF4E0](v1);
}

uint64_t sub_227C8F8B4(uint64_t a1)
{
  type metadata accessor for AssetService(0);
  OUTLINED_FUNCTION_0_46();
  sub_227B0F7BC(v1);
  OUTLINED_FUNCTION_2_32();
  sub_227B0F7BC(v2);
  return sub_227D49428();
}

uint64_t sub_227C8F95C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AssetService(0);
  OUTLINED_FUNCTION_0_46();
  sub_227B0F7BC(v3);
  OUTLINED_FUNCTION_2_32();
  sub_227B0F7BC(v4);
  OUTLINED_FUNCTION_10();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227C8FA0C(uint64_t a1)
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of AssetService.getImageData(images:size:)()
{
  v5 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v3.n128_f64[0] = OUTLINED_FUNCTION_12_14(v2);

  return v5(v3);
}

uint64_t sub_227C8FC1C(uint64_t a1, int a2)
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

uint64_t sub_227C8FC3C(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_4_26(uint64_t a1)
{

  return swift_once();
}

uint64_t InternalPlayerIDProvider.init(friendServiceSupport:profileServiceSupport:localPlayer:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_227B132F0(a1, a4);
  sub_227B132F0(a2, a4 + 40);
  v7 = a4 + *(type metadata accessor for InternalPlayerIDProvider(0) + 24);

  return sub_227C8FD50(a3, v7);
}

uint64_t type metadata accessor for InternalPlayerIDProvider(uint64_t a1)
{
  result = qword_27D8008E0;
  if (!qword_27D8008E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227C8FD50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t InternalPlayerIDProvider.getInternalPlayerID(player:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_36_0();
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_30();
  sub_227B27EC4();
  v1[7] = v4;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227C8FEB4()
{
  OUTLINED_FUNCTION_119();
  sub_227D4A8C8();
  sub_227C9032C(v0[9], v0[8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_227C90390(v0[9]);

    OUTLINED_FUNCTION_0_47();
    OUTLINED_FUNCTION_128();

    __asm { BRAA            X3, X16 }
  }

  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[4];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6898, &qword_227D4E5C8) + 48);
  v7 = *(v4 + 8);
  v0[10] = v7;
  v7(v3 + v6, v5);
  sub_227D4A8A8();
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_227C9009C;
  OUTLINED_FUNCTION_53(v0[6]);
  OUTLINED_FUNCTION_128();

  return sub_227C903EC(v9, v10);
}

uint64_t sub_227C9009C()
{
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *v8 = *v1;
  v7[12] = v0;

  v9 = v6[10];
  v10 = v6[6];
  v11 = v6[4];
  if (!v0)
  {
    v7[13] = v3;
    v7[14] = v5;
  }

  v9(v10, v11);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227C9022C()
{
  OUTLINED_FUNCTION_20();
  sub_227C90390(*(v0 + 72));

  v1 = OUTLINED_FUNCTION_0_47();

  return v2(v1);
}

uint64_t sub_227C902AC()
{
  OUTLINED_FUNCTION_20();
  sub_227C90390(*(v0 + 72));

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227C9032C(uint64_t a1, uint64_t a2)
{
  sub_227B27EC4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C90390(uint64_t a1)
{
  sub_227B27EC4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227C903EC(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  OUTLINED_FUNCTION_15();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227C9041C()
{
  OUTLINED_FUNCTION_51_0();
  sub_227D4A6A8();
  v0[30] = 0;
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_227C90554;
  OUTLINED_FUNCTION_33_0();

  return sub_227C911D8();
}

uint64_t sub_227C90554()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227C90658()
{
  OUTLINED_FUNCTION_51_0();
  if (!*(v0 + 80))
  {
    sub_227B2746C(v0 + 56, &qword_27D7E9D58, &qword_227D61438);
    goto LABEL_9;
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  sub_227B132F0((v0 + 56), v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v5 = sub_227C92848(v2, v3, v4);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_33_0();

    __asm { BRAA            X1, X16 }
  }

  if (v5)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v8 = OUTLINED_FUNCTION_16_10();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_9:
    OUTLINED_FUNCTION_0_47();
    OUTLINED_FUNCTION_33_0();

    __asm { BRAA            X3, X16 }
  }

  v12 = swift_task_alloc();
  *(v0 + 264) = v12;
  *v12 = v0;
  v12[1] = sub_227C907FC;
  OUTLINED_FUNCTION_33_0();

  return sub_227C91F48();
}

uint64_t sub_227C907FC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 272) = v4;
  *(v2 + 280) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227C90900()
{
  OUTLINED_FUNCTION_119();
  v1 = v0[35];
  v2 = sub_227D4A6A8();
  v0[36] = v3;
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_18();

    return v4();
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v8 = v0[29];
    v9 = v8[8];
    v10 = v8[9];
    __swift_project_boxed_opaque_existential_1(v8 + 5, v9);
    OUTLINED_FUNCTION_5_21(v10);
    v14 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[37] = v12;
    *v12 = v0;
    v12[1] = sub_227C90A94;
    v13 = v0[34];

    return v14(v6, v7, v13, v9, v10);
  }
}

uint64_t sub_227C90A94()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 304) = v4;
  *(v2 + 312) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_227C90B98()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 224);

  *(swift_task_alloc() + 16) = v3;
  sub_227C926E0(sub_227C92688, v1, v0 + 96);

  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_33_0();

    __asm { BRAA            X1, X16 }
  }

  sub_227C92798(v0 + 96, v0 + 136, &qword_27D7E9D58, &qword_227D61438);
  if (*(v0 + 160))
  {
    sub_227B132F0((v0 + 136), v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
    v6 = OUTLINED_FUNCTION_16_10();
    v7(v6);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  }

  sub_227B2746C(v0 + 96, &qword_27D7E9D58, &qword_227D61438);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_0_47();
  OUTLINED_FUNCTION_33_0();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_227C90D38()
{
  OUTLINED_FUNCTION_6();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227C90DA8()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_18();

  return v1();
}

void dispatch thunk of ProfileServiceSupport.getScopedIDs(gameBundleID:playerIDs:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_5_21(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_25_6(v2);
  OUTLINED_FUNCTION_128();

  __asm { BRAA            X5, X16 }
}

void dispatch thunk of FriendServiceSupport.getFriends(for:includeRecents:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_5_21(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_25_6(v2);
  OUTLINED_FUNCTION_128();

  __asm { BRAA            X5, X16 }
}

void sub_227C91064(uint64_t a1)
{
  sub_227C91120(319, &qword_27D7E9D40, &protocol descriptor for FriendServiceSupport);
  if (v1 <= 0x3F)
  {
    sub_227C91120(319, &qword_27D7E9D48, &protocol descriptor for ProfileServiceSupport);
    if (v2 <= 0x3F)
    {
      sub_227C91174(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_227C91120(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_227C91174(uint64_t a1)
{
  if (!qword_27D7E9D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E67C0, &unk_227D4FB20);
    v1 = sub_227D4D4F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7E9D50);
    }
  }
}

uint64_t sub_227C911D8()
{
  OUTLINED_FUNCTION_6();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[11] = sub_227D4CAB8();
  OUTLINED_FUNCTION_36_0();
  v1[12] = v5;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
  v1[16] = OUTLINED_FUNCTION_30();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_36_0();
  v1[18] = v6;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C91348()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[10];
  v4 = type metadata accessor for InternalPlayerIDProvider(0);
  sub_227C92798(v3 + *(v4 + 24), v1, &qword_27D7E6858, &qword_227D61390);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_227B2746C(v0[16], &qword_27D7E6858, &qword_227D61390);
    sub_227D4AA58();
    v5 = sub_227D4CA98();
    sub_227D4D438();
    OUTLINED_FUNCTION_19_13();
    if (os_log_type_enabled(v5, v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_95(&dword_227B0D000, v7, v8, "Can't get scoped IDs for nil local player");
      OUTLINED_FUNCTION_5_2();
    }

    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    v12 = v0[7];

    (*(v10 + 8))(v9, v11);
    *(v12 + 32) = 0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    OUTLINED_FUNCTION_7_21();

    OUTLINED_FUNCTION_18();

    return v13();
  }

  else
  {
    (*(v0[18] + 32))(v0[20], v0[16], v0[17]);
    v15 = swift_task_alloc();
    v0[21] = v15;
    *v15 = v0;
    v15[1] = sub_227C91550;
    OUTLINED_FUNCTION_53(v0[20]);

    return InternalPlayerIDProvider.getInternalPlayerID(player:)();
  }
}

uint64_t sub_227C91550()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;
  *(v2 + 184) = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_227C9165C()
{
  v8 = v1[23];
  if (v8)
  {
    v9 = v1[22];
    v10 = v1[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    v11 = swift_allocObject();
    v1[24] = v11;
    *(v11 + 16) = xmmword_227D4E520;
    *(v11 + 32) = v9;
    *(v11 + 40) = v8;
    __swift_project_boxed_opaque_existential_1((v10 + 40), *(v10 + 64));
    OUTLINED_FUNCTION_36_0();
    v12 = swift_task_alloc();
    v1[25] = v12;
    *v12 = v1;
    v12[1] = sub_227C91970;
    OUTLINED_FUNCTION_53(v1[8]);
    OUTLINED_FUNCTION_90();

    __asm { BRAA            X5, X16 }
  }

  OUTLINED_FUNCTION_29_9();
  v15 = OUTLINED_FUNCTION_24_10();
  v16(v15);
  v17 = v2;
  v18 = sub_227D4CA98();
  sub_227D4D438();
  OUTLINED_FUNCTION_19_13();
  os_log_type_enabled(v18, v19);
  OUTLINED_FUNCTION_17_14();
  if (v20)
  {
    swift_slowAlloc();
    v39 = v7;
    v21 = OUTLINED_FUNCTION_21_6();
    v40 = v21;
    OUTLINED_FUNCTION_28_11(4.8149e-34);
    v22 = OUTLINED_FUNCTION_13_16();
    MEMORY[0](v22);
    v23 = sub_227B1B1A4(v5, v3, &v40);

    *(v6 + 4) = v23;
    OUTLINED_FUNCTION_15_14(&dword_227B0D000, v24, v25, "Failed to extract internal playerID from: %s", v26, v27, v28, v29, v35, v36, *v37, v37[4]);
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();

    (*(v0 + 8))(v39);
    v30 = v38;
    v31 = v18;
  }

  else
  {

    v8 = *(v4 + 8);
    v8(v17, v6);
    (*(v0 + 8))(v7);
    v30 = v3;
    v31 = v6;
  }

  v8(v30, v31);
  v32 = v1[7];
  *(v32 + 32) = 0;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227C91970()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    *(v5 + 208) = v3;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C91A90()
{
  OUTLINED_FUNCTION_119();
  v8 = *(v2 + 208);

  sub_227C92800(v8, v2 + 16);

  if (*(v2 + 40))
  {
    v9 = *(v2 + 56);
    (*(*(v2 + 144) + 8))(*(v2 + 160), *(v2 + 136));
    sub_227B132F0((v2 + 16), v9);
  }

  else
  {
    sub_227B2746C(v2 + 16, &qword_27D7E9D58, &qword_227D61438);
    sub_227D4AA58();
    v10 = sub_227D4CA98();
    sub_227D4D438();
    OUTLINED_FUNCTION_19_13();
    if (os_log_type_enabled(v10, v11))
    {
      v1 = swift_slowAlloc();
      *v1 = 0;
      OUTLINED_FUNCTION_95(&dword_227B0D000, v12, v13, "No scoped IDs for local player");
      OUTLINED_FUNCTION_5_2();
    }

    OUTLINED_FUNCTION_22_10();
    (*(v6 + 8))(v3, v4);
    (*(v5 + 8))(v0, v1);
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
  }

  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_18();

  return v14();
}

uint64_t sub_227C91C28()
{
  OUTLINED_FUNCTION_119();
  *(v2 + 16) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0u;
  sub_227B2746C(v2 + 16, &qword_27D7E9D58, &qword_227D61438);
  sub_227D4AA58();
  v8 = sub_227D4CA98();
  sub_227D4D438();
  OUTLINED_FUNCTION_19_13();
  if (os_log_type_enabled(v8, v9))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    OUTLINED_FUNCTION_95(&dword_227B0D000, v10, v11, "No scoped IDs for local player");
    OUTLINED_FUNCTION_5_2();
  }

  OUTLINED_FUNCTION_22_10();
  (*(v6 + 8))(v3, v4);
  (*(v5 + 8))(v0, v1);
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_18();

  return v12();
}

void sub_227C91D7C()
{
  OUTLINED_FUNCTION_29_9();
  v9 = OUTLINED_FUNCTION_24_10();
  v10(v9);
  v11 = v3;
  v12 = sub_227D4CA98();
  sub_227D4D438();
  OUTLINED_FUNCTION_19_13();
  os_log_type_enabled(v12, v13);
  OUTLINED_FUNCTION_17_14();
  if (v14)
  {
    swift_slowAlloc();
    v33 = v8;
    v15 = OUTLINED_FUNCTION_21_6();
    v34 = v15;
    OUTLINED_FUNCTION_28_11(4.8149e-34);
    v16 = OUTLINED_FUNCTION_13_16();
    v0(v16);
    v17 = sub_227B1B1A4(v6, v4, &v34);

    *(v7 + 4) = v17;
    OUTLINED_FUNCTION_15_14(&dword_227B0D000, v18, v19, "Failed to extract internal playerID from: %s", v20, v21, v22, v23, v29, v30, *v31, v31[4]);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();

    (*(v1 + 8))(v33);
    v24 = v32;
    v25 = v12;
  }

  else
  {

    v0 = *(v5 + 8);
    (v0)(v11, v7);
    (*(v1 + 8))(v8);
    v24 = v4;
    v25 = v7;
  }

  (v0)(v24, v25);
  v26 = *(v2 + 56);
  *(v26 + 32) = 0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227C91F48()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
  v1[3] = OUTLINED_FUNCTION_30();
  v1[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_36_0();
  v1[5] = v2;
  v1[6] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227C92030()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for InternalPlayerIDProvider(0);
  sub_227C92798(v3 + *(v4 + 24), v1, &qword_27D7E6858, &qword_227D61390);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_227B2746C(v0[3], &qword_27D7E6858, &qword_227D61390);

    v5 = v0[1];
    v6 = MEMORY[0x277D84F90];

    return v5(v6);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_227C92194;
    OUTLINED_FUNCTION_53(v0[6]);

    return InternalPlayerIDProvider.getInternalPlayerID(player:)();
  }
}

uint64_t sub_227C92194()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v5[8] = v9;
  v5[9] = v0;

  if (!v0)
  {
    v5[10] = v3;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227C922A4()
{
  OUTLINED_FUNCTION_51_0();
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  OUTLINED_FUNCTION_36_0();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_227C923CC;
  v3 = OUTLINED_FUNCTION_53(*(v0 + 80));

  return v5(v3);
}

uint64_t sub_227C923CC()
{
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v3;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227C92504()
{
  OUTLINED_FUNCTION_6();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[13];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_227C92590()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_26_10();
  v1(v0);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C9260C()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_26_10();
  v1(v0);

  OUTLINED_FUNCTION_18();

  return v2();
}

unint64_t sub_227C92688(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return sub_227C92848(v2, v3, v4) & 1;
}

uint64_t (*sub_227C926E0@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(__int128 *)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_227B11EE8(v7, v9);
      v8 = v4(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_0(v9);
      }

      if (v8)
      {
        return sub_227B132F0(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v9);
      v7 += 40;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_227C92798(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_227C92800@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_227B11EE8(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void OUTLINED_FUNCTION_22_10()
{
}

unint64_t sub_227C92848(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v47 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  sub_227B27EC4();
  v14 = v13;
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227C9032C(a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_227D4D668();
      MEMORY[0x22AAA5DA0](0xD000000000000019, 0x8000000227D784F0);
      sub_227D4D7B8();
      v18 = v46;
      sub_227D49E08();
      sub_227BC0E2C();
      swift_allocError();
      sub_227D49D98();

      swift_willThrow();
      sub_227C90390(v16);
      return v18 & 1;
    }

    v44 = a2;
    v21 = *(v16 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6898, &qword_227D4E5C8);
    OUTLINED_FUNCTION_2_33();
    v22(v10);
    v18 = v10;
    sub_227D4A6A8();
    if (v3)
    {
      (*(v7 + 8))(v10, v6);
      goto LABEL_8;
    }

    v30 = OUTLINED_FUNCTION_0_48();
    v32 = v31(v30);
    if (v16 == v32 && v14 == v33)
    {
    }

    else
    {
      v35 = OUTLINED_FUNCTION_1_29(v32);

      if ((v35 & 1) == 0)
      {
        (*(v7 + 8))(v10, v6);
        goto LABEL_22;
      }
    }

    v39 = (*(v47 + 40))(v44);
    if (v39 == v43 && v40 == v21)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_227D4DA78();
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v44 = a2;
    v19 = *(v16 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6898, &qword_227D4E5C8);
    OUTLINED_FUNCTION_2_33();
    v20(v12);
    v18 = v12;
    sub_227D4A6A8();
    if (v3)
    {
      (*(v7 + 8))(v12, v6);
LABEL_8:

      return v18 & 1;
    }

    v24 = OUTLINED_FUNCTION_0_48();
    v26 = v25(v24);
    if (v16 == v26 && v14 == v27)
    {
    }

    else
    {
      v29 = OUTLINED_FUNCTION_1_29(v26);

      if ((v29 & 1) == 0)
      {
        (*(v7 + 8))(v12, v6);
LABEL_22:

        v18 = 0;
        return v18 & 1;
      }
    }

    v36 = (*(v47 + 32))(v44);
    if (v36 == v43 && v37 == v19)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_227D4DA78();
    }

    (*(v7 + 8))(v12, v6);
  }

  return v18 & 1;
}

uint64_t sub_227C92D60()
{
  OUTLINED_FUNCTION_6();
  v1[10] = v13;
  v1[11] = v0;
  v1[8] = v2;
  v1[9] = v3;
  v1[6] = v4;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[12] = v10;
  v1[13] = *(v10 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227C92E40, 0, 0);
}

uint64_t sub_227C92E40()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[13];
    v17 = MEMORY[0x277D84F90];
    sub_227B3CA88(0, v2, 0);
    v3 = v17;
    v16 = *(v4 + 16);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = (v4 + 8);
    v15 = *(v4 + 72);
    do
    {
      v16(v0[14], v5, v0[12]);
      v7 = sub_227D4A898();
      v9 = v8;
      (*v6)(v0[14], v0[12]);
      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_227B3CA88((v10 > 1), v11 + 1, 1);
      }

      *(v17 + 16) = v11 + 1;
      v12 = v17 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v5 += v15;
      --v2;
    }

    while (v2);
  }

  v0[15] = v3;
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_227C93064;

  return sub_227C8CC6C();
}

uint64_t sub_227C93064()
{
  OUTLINED_FUNCTION_6();
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_227C931DC;
  }

  else
  {
    v2 = sub_227C93174;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227C93174()
{
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227C931DC()
{
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GameDebuggerService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_id;
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_227C932C4()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BD08);
  v1 = OUTLINED_FUNCTION_58();
  __swift_project_value_buffer(v1, v2);
  return sub_227D49ED8();
}

uint64_t sub_227C9330C()
{
  if (_MergedGlobals_12 != -1)
  {
    OUTLINED_FUNCTION_131_2(&_MergedGlobals_12);
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BD08);
}

uint64_t static GameDebuggerService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_12 != -1)
  {
    OUTLINED_FUNCTION_131_2(&_MergedGlobals_12);
  }

  v2 = sub_227D49EF8();
  __swift_project_value_buffer(v2, qword_280E7BD08);
  OUTLINED_FUNCTION_14_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t GameDebuggerService.__allocating_init(actorSystem:dataProvider:)()
{
  OUTLINED_FUNCTION_104_0();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_150();
  GameDebuggerService.init(actorSystem:dataProvider:)(v1, v2);
  return v0;
}

uint64_t GameDebuggerService.init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v12 = sub_227D49EF8();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_actorSystem) = a1;
  type metadata accessor for GameDebuggerService(0);
  v14 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_14_13();
  sub_227B0F800(v8);
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v9);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_id, v6, v12);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider) = v13;
  v14 = *(v2 + v7);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for GameDebuggerService(uint64_t a1)
{
  result = qword_27D800D80;
  if (!qword_27D800D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameDebuggerService.describeAchievements(_:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  v0[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C9379C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_22(v14);
    sub_227B670B8();
    v15 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v18 = OUTLINED_FUNCTION_27_5();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D88, &qword_227D4F9B8);
      sub_227C93D30();
      v16 = sub_227C93DB4();
      OUTLINED_FUNCTION_17(v16);
      v17 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      OUTLINED_FUNCTION_98_4(v36);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v37);
      OUTLINED_FUNCTION_48();
      *v17 = v38;
      OUTLINED_FUNCTION_1_30(v39);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v40);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_92_1(v31);
    *v32 = v33;
    OUTLINED_FUNCTION_25(v32);
    OUTLINED_FUNCTION_46();

    return sub_227C93C84(v34);
  }
}

uint64_t sub_227C939EC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C93AE4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameDebuggerService.describeAchievements(_:)();
}

uint64_t sub_227C93C84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C93C9C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D1F88C(v3);
}

unint64_t sub_227C93D30()
{
  result = qword_27D7E6D90;
  if (!qword_27D7E6D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6D88, &qword_227D4F9B8);
    sub_227B67290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6D90);
  }

  return result;
}

unint64_t sub_227C93DB4()
{
  result = qword_27D7E6DB0;
  if (!qword_27D7E6DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6D88, &qword_227D4F9B8);
    sub_227B67344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6DB0);
  }

  return result;
}

uint64_t GameDebuggerService.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v0[10] = v5;
  OUTLINED_FUNCTION_5(v5);
  v0[11] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v0[12] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[13] = v7;
  v0[14] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v0[15] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v0[16] = v9;
  v0[17] = OUTLINED_FUNCTION_30();
  v10 = sub_227D49D58();
  v0[18] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[19] = v11;
  v0[20] = OUTLINED_FUNCTION_30();
  v12 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227C94000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[20];
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_51_1(v14);
    sub_227B67D40();
    v15 = sub_227B67DF0();
    OUTLINED_FUNCTION_8_3(v15);
    if (v13)
    {
      v16 = OUTLINED_FUNCTION_60();
      v17(v16);
      v18 = OUTLINED_FUNCTION_17_0();
      v19(v18);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      sub_227CA5D74(v12[5], v12[11], &qword_27D7E6908, &unk_227D4E690);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DE8, &unk_227D61550);
      sub_227B67EA0();
      v25 = sub_227B67F50();
      OUTLINED_FUNCTION_17(v25);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v34 = swift_task_alloc();
      v12[21] = v34;
      type metadata accessor for GameDebuggerService(0);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v35);
      OUTLINED_FUNCTION_48();
      *v34 = v36;
      v34[1] = sub_227B69670;
      OUTLINED_FUNCTION_1_2(v37);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v38);
    }
  }

  else
  {
    v20 = swift_task_alloc();
    v12[23] = v20;
    *v20 = v12;
    v20[1] = sub_227C94344;
    OUTLINED_FUNCTION_53(v12[4]);
    OUTLINED_FUNCTION_46();

    return sub_227C94950(v21, v22);
  }
}

uint64_t sub_227C94344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_62_1();
  v12 = *v11;
  OUTLINED_FUNCTION_5_4();
  *v13 = v12;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v10)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_163();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_227C944C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_227C9476C;

  return GameDebuggerService.listAchievements(games:after:)();
}

uint64_t sub_227C9476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  v13 = v12[8];
  v14 = v12[7];
  v15 = v12[6];
  v16 = v12[5];
  v17 = v12[4];
  v18 = v12[3];
  OUTLINED_FUNCTION_80_0();
  *v19 = v20;
  OUTLINED_FUNCTION_197(v21, v22);
  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227C94950(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227C94970, v2);
}

uint64_t sub_227C94970()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_164_1(v1);
  *v2 = v3;
  v2[1] = sub_227B68F1C;
  v4 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D1F9B0(v4, v5);
}

uint64_t GameDebuggerService.getAchievementsProgresses(_:player:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[16] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[17] = v10;
  v0[18] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v0[19] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[20] = v12;
  v0[21] = OUTLINED_FUNCTION_30();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227C94BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[21];
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_22(v14);
    sub_227B670B8();
    v15 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v15);
    if (v13)
    {
      (*(v12[17] + 8))(v12[18], v12[16]);
      v16 = OUTLINED_FUNCTION_17_0();
      v17(v16);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
    }

    else
    {
      v23 = OUTLINED_FUNCTION_56();
      v24(v23);
      OUTLINED_FUNCTION_102_4(0x726579616C70);
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_82_3();
      sub_227B15ABC(v25);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_82_3();
      sub_227B15ABC(v26);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E20, &unk_227D61610);
      sub_227B69008();
      v27 = sub_227B690BC();
      OUTLINED_FUNCTION_17(v27);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      v12[22] = v36;
      type metadata accessor for GameDebuggerService(0);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v37);
      OUTLINED_FUNCTION_48();
      *v36 = v38;
      v36[1] = sub_227C94F80;
      OUTLINED_FUNCTION_1_2(v39);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v40);
    }
  }

  else
  {
    v18 = swift_task_alloc();
    v12[24] = v18;
    *v18 = v12;
    v18[1] = sub_227C9515C;
    OUTLINED_FUNCTION_53(v12[4]);
    OUTLINED_FUNCTION_46();

    return sub_227C95668(v19, v20);
  }
}

uint64_t sub_227C94F80()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C95078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_43_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_166_4();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227C9515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_62_1();
  v12 = *v11;
  OUTLINED_FUNCTION_5_4();
  *v13 = v12;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v10)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_163();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_227C952D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_43_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_166_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227C953BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_227CAA934;

  return GameDebuggerService.getAchievementsProgresses(_:player:)();
}

uint64_t sub_227C95668(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227C95688, v2);
}

uint64_t sub_227C95688()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_164_1(v1);
  *v2 = v3;
  v2[1] = sub_227B6DC04;
  v4 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D1FAC8(v4, v5);
}

uint64_t GameDebuggerService.resetAchievementsProgress(_:players:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v0[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v0[16] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[17] = v10;
  v0[18] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227C958BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_178_4();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_22(v14);
    sub_227B670B8();
    v15 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v16 = OUTLINED_FUNCTION_156_4();
      v17(v16);
      v18 = OUTLINED_FUNCTION_17_0();
      v19(v18);
      OUTLINED_FUNCTION_60_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_163();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
    }

    else
    {
      v13[3] = v13[5];
      sub_227D4CE58();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_19_7(v25);
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v34 = swift_task_alloc();
      v13[19] = v34;
      type metadata accessor for GameDebuggerService(0);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v35);
      OUTLINED_FUNCTION_44_0();
      *v34 = v36;
      OUTLINED_FUNCTION_79_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_163();

      return MEMORY[0x282164B10](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }
  }

  else
  {
    v20 = swift_task_alloc();
    v13[21] = v20;
    *v20 = v13;
    v20[1] = sub_227CAA930;
    OUTLINED_FUNCTION_53(v13[4]);
    OUTLINED_FUNCTION_163();

    return sub_227C95F38(v21, v22);
  }
}

uint64_t sub_227C95B94()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C95C8C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B4AFB4;

  return GameDebuggerService.resetAchievementsProgress(_:players:)();
}

uint64_t sub_227C95F38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227C95F58, v2);
}

uint64_t sub_227C95F58()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_164_1(v1);
  *v2 = v3;
  v2[1] = sub_227B45D74;
  v4 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D1FBF4(v4, v5);
}

uint64_t GameDebuggerService.revealAchievements(_:players:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v0[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v0[16] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[17] = v10;
  v0[18] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227C9618C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_178_4();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_22(v14);
    sub_227B670B8();
    v15 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v16 = OUTLINED_FUNCTION_156_4();
      v17(v16);
      v18 = OUTLINED_FUNCTION_17_0();
      v19(v18);
      OUTLINED_FUNCTION_60_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_163();

      return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
    }

    else
    {
      v13[3] = v13[5];
      sub_227D4CE58();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_19_7(v23);
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v32 = swift_task_alloc();
      v13[19] = v32;
      type metadata accessor for GameDebuggerService(0);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v33);
      OUTLINED_FUNCTION_44_0();
      *v32 = v34;
      OUTLINED_FUNCTION_79_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_163();

      return MEMORY[0x282164B10](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
    }
  }

  else
  {
    v20 = swift_task_alloc();
    v13[21] = v20;
    *v20 = v13;
    OUTLINED_FUNCTION_159_3(v20);
    OUTLINED_FUNCTION_163();

    return sub_227C96A08(v21);
  }
}

uint64_t sub_227C96458()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C96550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_56_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227C9660C()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_164();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227C9675C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B45AF8;

  return GameDebuggerService.revealAchievements(_:players:)();
}

uint64_t GameDebuggerService.submitAchievementsProgress(_:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E78, &qword_227D4FDE0);
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v7 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_79_1(v7);
  v8 = sub_227D49D58();
  v1[11] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227C96B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E20, &unk_227D61610);
    v14 = OUTLINED_FUNCTION_26_11();
    OUTLINED_FUNCTION_137_0(v14, v15, v16, 0xE800000000000000);
    sub_227B69008();
    v17 = sub_227B690BC();
    OUTLINED_FUNCTION_8_3(v17);
    if (v12)
    {
      v19 = OUTLINED_FUNCTION_91();
      v20(v19);
      v21 = OUTLINED_FUNCTION_17_0();
      v22(v21);
      OUTLINED_FUNCTION_90_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_164();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v18 = v13[13];
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v35 = swift_task_alloc();
      OUTLINED_FUNCTION_174_5(v35);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v36);
      OUTLINED_FUNCTION_44_0();
      *v18 = v37;
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282164B10](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
    }
  }

  else
  {
    v32 = swift_task_alloc();
    v13[16] = v32;
    *v32 = v13;
    v32[1] = sub_227CAA928;
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_164();

    return sub_227C9704C(v33);
  }
}

uint64_t sub_227C96DB8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C96EB0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227B4AF94;

  return GameDebuggerService.submitAchievementsProgress(_:)();
}

uint64_t sub_227C9704C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C97064()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D1FD20(v3);
}

uint64_t GameDebuggerService.getImageData(_:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9C98, &qword_227D61078);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  v0[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C97234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9CA0, &qword_227D61088);
    OUTLINED_FUNCTION_7_22(v14);
    sub_227C976E4();
    v15 = sub_227C97794();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v18 = OUTLINED_FUNCTION_27_5();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9CD8, &unk_227D61090);
      sub_227C8EE5C();
      v16 = sub_227C8EFD8();
      OUTLINED_FUNCTION_17(v16);
      v17 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      OUTLINED_FUNCTION_98_4(v36);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v37);
      OUTLINED_FUNCTION_48();
      *v17 = v38;
      OUTLINED_FUNCTION_1_30(v39);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v40);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_92_1(v31);
    *v32 = v33;
    OUTLINED_FUNCTION_25(v32);
    OUTLINED_FUNCTION_46();

    return sub_227C97624(v34);
  }
}

uint64_t sub_227C97484(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameDebuggerService.getImageData(_:)();
}

uint64_t sub_227C97624(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9763C()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_165(v1);
  *v2 = v3;
  v2[1] = sub_227B4AFB8;
  v4 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D1FE44(v4, v5, v5);
}

unint64_t sub_227C976E4()
{
  result = qword_27D7E9CA8;
  if (!qword_27D7E9CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9CA0, &qword_227D61088);
    sub_227B15ABC(&unk_27D7E9CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9CA8);
  }

  return result;
}

unint64_t sub_227C97794()
{
  result = qword_27D7E9CB8;
  if (!qword_27D7E9CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9CA0, &qword_227D61088);
    sub_227B15ABC(&unk_27D7E9CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9CB8);
  }

  return result;
}

unint64_t sub_227C97844()
{
  result = qword_27D7E9CE8;
  if (!qword_27D7E9CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9CF0, &unk_227D618D0);
    sub_227C8EF84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9CE8);
  }

  return result;
}

unint64_t sub_227C978C8()
{
  result = qword_27D7E9D08;
  if (!qword_27D7E9D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9CF0, &unk_227D618D0);
    sub_227C8F08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9D08);
  }

  return result;
}

uint64_t GameDebuggerService.listLocalPlayers()()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v0;
  v2 = sub_227D49458();
  v1[4] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_30();
  v4 = sub_227D49D58();
  v1[7] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_30();
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227C97A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[9];
    OUTLINED_FUNCTION_36();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D28();
    if (v13)
    {
      (*(v12[8] + 8))(v12[9], v12[7]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      sub_227B47E34();
      v14 = sub_227B47EE4();
      OUTLINED_FUNCTION_17(v14);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v26 = swift_task_alloc();
      v27 = OUTLINED_FUNCTION_79_1(v26);
      type metadata accessor for GameDebuggerService(v27);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v28);
      OUTLINED_FUNCTION_48();
      *v26 = v29;
      v26[1] = sub_227C97C84;
      OUTLINED_FUNCTION_1_2(v30);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v31);
    }
  }

  else
  {
    v24 = swift_task_alloc();
    v12[12] = v24;
    *v24 = v12;
    v24[1] = sub_227C97E0C;
    OUTLINED_FUNCTION_46();

    return sub_227C9805C(v25);
  }
}

uint64_t sub_227C97C84()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C97D7C()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_110();
  v1(v0);
  v2 = OUTLINED_FUNCTION_39_0();
  v3(v2);

  v4 = OUTLINED_FUNCTION_8_0();

  return v5(v4);
}

uint64_t sub_227C97E0C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_62_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_208_0();
  }

  return v5(v4);
}

uint64_t sub_227C97F34()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_110();
  v1(v0);
  v2 = OUTLINED_FUNCTION_39_0();
  v3(v2);

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227C97FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_227B92CC0;

  return GameDebuggerService.listLocalPlayers()();
}

uint64_t sub_227C98074()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_35(v1);

  return sub_227D1FF70();
}

uint64_t sub_227C9810C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_8_0();

  return v4(v3);
}

uint64_t GameDebuggerService.describeLeaderboards(_:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  v0[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C9832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_7_22(v14);
    sub_227BC8E60();
    v15 = sub_227BC8F10();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v18 = OUTLINED_FUNCTION_27_5();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8270, &unk_227D619F0);
      sub_227BC8FC0();
      v16 = sub_227BC90F8();
      OUTLINED_FUNCTION_17(v16);
      v17 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      OUTLINED_FUNCTION_98_4(v36);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v37);
      OUTLINED_FUNCTION_48();
      *v17 = v38;
      OUTLINED_FUNCTION_1_30(v39);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v40);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_92_1(v31);
    *v32 = v33;
    OUTLINED_FUNCTION_25(v32);
    OUTLINED_FUNCTION_46();

    return sub_227C9871C(v34);
  }
}

uint64_t sub_227C9857C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameDebuggerService.describeLeaderboards(_:)();
}

uint64_t sub_227C9871C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C98734()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D20184(v3);
}

uint64_t GameDebuggerService.listLeaderboardEntries(_:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_6();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = sub_227D49458();
  v1[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  v1[15] = v9;
  OUTLINED_FUNCTION_5(v9);
  v1[16] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E8, &unk_227D58B80);
  v1[17] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[18] = v11;
  v1[19] = OUTLINED_FUNCTION_30();
  v12 = sub_227D49328();
  v1[20] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[21] = v13;
  v1[22] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82F0, &unk_227D61AA0);
  v1[23] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[24] = v15;
  v1[25] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82F8, &qword_227D58B90);
  v1[26] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[27] = v17;
  v1[28] = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v1[29] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[30] = v19;
  v1[31] = OUTLINED_FUNCTION_30();
  v20 = sub_227D49D58();
  v1[32] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[33] = v21;
  v1[34] = OUTLINED_FUNCTION_30();
  v22 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_227C98A9C()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 272);
    v2 = *(v0 + 48);
    OUTLINED_FUNCTION_36();
    *(v0 + 32) = v2;
    sub_227D4CE58();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_7_22(v3);
    sub_227BC8E60();
    v4 = sub_227BC8F10();
    OUTLINED_FUNCTION_8_3(v4);
    if (v1)
    {
      (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
      v5 = OUTLINED_FUNCTION_17_0();
      v6(v5);
      OUTLINED_FUNCTION_52_4();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_176_1();

      return v18();
    }

    else
    {
      *(v0 + 16) = *(v0 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8300, &unk_227D58BA0);
      sub_227D49478();
      sub_227C99D24(&qword_27D7E8308);
      sub_227C99D24(&qword_27D7E8310);
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v15 = OUTLINED_FUNCTION_56();
      v16(v15);
      OUTLINED_FUNCTION_102_4(0x656C61636F6CLL);
      OUTLINED_FUNCTION_106_4();
      sub_227B0F800(v17);
      OUTLINED_FUNCTION_116_4(&qword_27D7E8320);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      sub_227CA5D74(*(v0 + 80), *(v0 + 128), &qword_27D7E82E0, &unk_227D61A90);
      OUTLINED_FUNCTION_51_4();
      sub_227BCBBF0();
      sub_227BCBCA4();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8348, &unk_227D61AC0);
      sub_227BCBD58();
      v20 = sub_227BCBE08();
      OUTLINED_FUNCTION_17(v20);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v21 = swift_task_alloc();
      *(v0 + 280) = v21;
      type metadata accessor for GameDebuggerService(0);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v22);
      OUTLINED_FUNCTION_48();
      *v21 = v23;
      v21[1] = sub_227BCAC88;
      OUTLINED_FUNCTION_1_2(v24);
      OUTLINED_FUNCTION_176_1();

      return MEMORY[0x282164B00](v25);
    }
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 296) = v7;
    *v7 = v0;
    v7[1] = sub_227C991B4;
    OUTLINED_FUNCTION_53(*(v0 + 48));
    OUTLINED_FUNCTION_176_1();

    return sub_227C99B6C(v8, v9, v10, v11, v12);
  }
}

uint64_t sub_227C991B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v25 = v13;
  v14 = *v12;
  OUTLINED_FUNCTION_5_4();
  *v15 = v14;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  OUTLINED_FUNCTION_135_0();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_227C99390(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v8 = a2[2];
  v3[9] = v8;
  v3[10] = *(v8 - 8);
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v9 = a2[3];
  v3[12] = v9;
  v3[13] = *(v9 - 8);
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v10 = swift_task_alloc();
  v3[15] = v10;
  *v10 = v3;
  v10[1] = sub_227C99890;

  return GameDebuggerService.listLeaderboardEntries(_:range:locale:timeScope:)();
}

uint64_t sub_227C99890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_14();
  v58 = *(v21 + 112);
  OUTLINED_FUNCTION_69();
  v57 = *(v22 + 104);
  OUTLINED_FUNCTION_69();
  v54 = *(v23 + 96);
  OUTLINED_FUNCTION_69();
  v56 = *(v24 + 88);
  OUTLINED_FUNCTION_69();
  v55 = *(v25 + 80);
  OUTLINED_FUNCTION_69();
  v27 = *(v26 + 72);
  v52 = *(v28 + 64);
  OUTLINED_FUNCTION_69();
  v51 = *(v29 + 56);
  OUTLINED_FUNCTION_69();
  v31 = *(v30 + 48);
  v33 = v32[5];
  v34 = v32[4];
  v35 = v32[3];
  v53 = v36 - 8;
  OUTLINED_FUNCTION_80_0();
  v38 = v37;
  OUTLINED_FUNCTION_13();
  *v39 = v38;
  OUTLINED_FUNCTION_197(v40, v41);
  (*(v34 + 8))(v33, v35);
  (*(v51 + 8))(v52, v31);
  (*(v55 + 8))(v56, v27);
  (*(v57 + 8))(v58, v54);

  OUTLINED_FUNCTION_137();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, v51, v52, v53, v54, v55, v56, v57, v58, v20, a18, a19, a20);
}

uint64_t sub_227C99B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_2_0(sub_227C99B90, v5);
}

uint64_t sub_227C99B90()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_227C99C38;
  v2 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D203AC(v2, v3, v4, v5, v6);
}

uint64_t sub_227C99C38()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_115();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_227C99D24(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E8300, &unk_227D58BA0);
    result = OUTLINED_FUNCTION_221(v3);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t GameDebuggerService.listLeaderboardEntries(_:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v6 = sub_227D49458();
  v1[10] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E0, &unk_227D61A90);
  v1[13] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[14] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82E8, &unk_227D58B80);
  v1[15] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49328();
  v1[18] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[19] = v12;
  v1[20] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82F0, &unk_227D61AA0);
  v1[21] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[22] = v14;
  v1[23] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v1[24] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[25] = v16;
  v1[26] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v1[27] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[28] = v18;
  v1[29] = OUTLINED_FUNCTION_30();
  v19 = sub_227D49D58();
  v1[30] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v1[31] = v20;
  v1[32] = OUTLINED_FUNCTION_30();
  v21 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_227C9A050()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[32];
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_7_22(v2);
    sub_227BC8E60();
    v3 = sub_227BC8F10();
    OUTLINED_FUNCTION_8_3(v3);
    if (v1)
    {
      (*(v0[28] + 8))(v0[29], v0[27]);
      v4 = OUTLINED_FUNCTION_17_0();
      v5(v4);
      OUTLINED_FUNCTION_57_3(v0[32]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_176_1();

      return v17();
    }

    else
    {
      v0[3] = v0[6];
      sub_227D4CE58();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_19_7(v13);
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      v14 = OUTLINED_FUNCTION_56();
      v15(v14);
      OUTLINED_FUNCTION_102_4(0x656C61636F6CLL);
      OUTLINED_FUNCTION_106_4();
      sub_227B0F800(v16);
      OUTLINED_FUNCTION_116_4(&qword_27D7E8320);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      sub_227CA5D74(v0[8], v0[14], &qword_27D7E82E0, &unk_227D61A90);
      OUTLINED_FUNCTION_51_4();
      sub_227BCBBF0();
      sub_227BCBCA4();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8348, &unk_227D61AC0);
      sub_227BCBD58();
      v19 = sub_227BCBE08();
      OUTLINED_FUNCTION_17(v19);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v20 = swift_task_alloc();
      v0[33] = v20;
      type metadata accessor for GameDebuggerService(0);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v21);
      OUTLINED_FUNCTION_48();
      *v20 = v22;
      v20[1] = sub_227C9A6F0;
      OUTLINED_FUNCTION_1_2(v23);
      OUTLINED_FUNCTION_176_1();

      return MEMORY[0x282164B00](v24);
    }
  }

  else
  {
    v6 = swift_task_alloc();
    v0[35] = v6;
    *v6 = v0;
    v6[1] = sub_227C9A918;
    OUTLINED_FUNCTION_53(v0[5]);
    OUTLINED_FUNCTION_176_1();

    return sub_227C9B124(v7, v8, v9, v10);
  }
}

uint64_t sub_227C9A6F0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C9A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v25 = v13;
  v14 = *v12;
  OUTLINED_FUNCTION_5_4();
  *v15 = v14;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  OUTLINED_FUNCTION_135_0();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_227C9AC24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v8 = a2[2];
  v3[9] = v8;
  v3[10] = *(v8 - 8);
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v9 = a2[3];
  v3[12] = v9;
  v3[13] = *(v9 - 8);
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v10 = swift_task_alloc();
  v3[15] = v10;
  *v10 = v3;
  v10[1] = sub_227CAA918;

  return GameDebuggerService.listLeaderboardEntries(_:players:locale:timeScope:)();
}

uint64_t sub_227C9B124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227C9B148, v4);
}

uint64_t sub_227C9B148()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_227C9B1EC;
  v2 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D204E0(v2, v3, v4, v5);
}

uint64_t sub_227C9B1EC()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_115();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t GameDebuggerService.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_227D49458();
  v1[8] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[9] = v5;
  v1[10] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v1[11] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v1[14] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_30();
  v10 = sub_227D49D58();
  v1[17] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[18] = v11;
  v1[19] = OUTLINED_FUNCTION_30();
  v12 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227C9B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[19];
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_51_1(v14);
    sub_227B67D40();
    v15 = sub_227B67DF0();
    OUTLINED_FUNCTION_8_3(v15);
    if (v13)
    {
      (*(v12[15] + 8))(v12[16], v12[14]);
      v16 = OUTLINED_FUNCTION_17_0();
      v17(v16);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
    }

    else
    {
      v12[3] = v12[6];
      sub_227D4CE58();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      OUTLINED_FUNCTION_19_7(v23);
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82B0, &unk_227D58AC0);
      sub_227BCA150();
      v24 = sub_227BCA200();
      OUTLINED_FUNCTION_17(v24);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v33 = swift_task_alloc();
      v12[20] = v33;
      type metadata accessor for GameDebuggerService(0);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v34);
      OUTLINED_FUNCTION_48();
      *v33 = v35;
      v33[1] = sub_227C9B7BC;
      OUTLINED_FUNCTION_1_2(v36);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v37);
    }
  }

  else
  {
    v18 = swift_task_alloc();
    v12[22] = v18;
    *v18 = v12;
    v18[1] = sub_227C9B96C;
    OUTLINED_FUNCTION_53(v12[5]);
    OUTLINED_FUNCTION_46();

    return sub_227C9BE34(v19, v20);
  }
}

uint64_t sub_227C9B7BC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C9B8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_70_3();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_198_4();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227C9B96C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_209();

  OUTLINED_FUNCTION_198_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_208_0();
  }

  OUTLINED_FUNCTION_117_0();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_227C9BACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_70_3();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_198_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227C9BB84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_227C9476C;

  return GameDebuggerService.listLeaderboards(games:players:)();
}

uint64_t sub_227C9BE34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227C9BE54, v2);
}

uint64_t sub_227C9BE54()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_164_1(v1);
  *v2 = v3;
  v2[1] = sub_227B6DC04;
  v4 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D20294(v4, v5);
}

uint64_t GameDebuggerService.submitLeaderboardEntries(_:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83A8, &qword_227D58E40);
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v7 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_79_1(v7);
  v8 = sub_227D49D58();
  v1[11] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227C9C034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83B0, &unk_227D58E50);
    v14 = OUTLINED_FUNCTION_26_11();
    OUTLINED_FUNCTION_137_0(v14, v15, v16, 0xE700000000000000);
    sub_227BCE64C();
    v17 = sub_227BCE700();
    OUTLINED_FUNCTION_8_3(v17);
    if (v12)
    {
      v19 = OUTLINED_FUNCTION_91();
      v20(v19);
      v21 = OUTLINED_FUNCTION_17_0();
      v22(v21);
      OUTLINED_FUNCTION_90_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_164();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v18 = v13[13];
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v35 = swift_task_alloc();
      OUTLINED_FUNCTION_174_5(v35);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v36);
      OUTLINED_FUNCTION_44_0();
      *v18 = v37;
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282164B10](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
    }
  }

  else
  {
    v32 = swift_task_alloc();
    v13[16] = v32;
    *v32 = v13;
    v32[1] = sub_227CAA928;
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_164();

    return sub_227C9C428(v33);
  }
}

uint64_t sub_227C9C28C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227B4AF94;

  return GameDebuggerService.submitLeaderboardEntries(_:)();
}

uint64_t sub_227C9C428(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9C440()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D20610(v3);
}

uint64_t GameDebuggerService.resetLeaderboards(_:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8250, &qword_227D589E0);
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v7 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_79_1(v7);
  v8 = sub_227D49D58();
  v1[11] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_30();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227C9C618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8258, &unk_227D589F0);
    OUTLINED_FUNCTION_7_22(v14);
    sub_227BC8E60();
    v15 = sub_227BC8F10();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v17 = OUTLINED_FUNCTION_91();
      v18(v17);
      v19 = OUTLINED_FUNCTION_17_0();
      v20(v19);
      OUTLINED_FUNCTION_90_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_164();

      return v22(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v16 = v13[13];
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v33 = swift_task_alloc();
      OUTLINED_FUNCTION_174_5(v33);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v34);
      OUTLINED_FUNCTION_44_0();
      *v16 = v35;
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_164();

      return MEMORY[0x282164B10](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
    }
  }

  else
  {
    v30 = swift_task_alloc();
    v13[16] = v30;
    *v30 = v13;
    v30[1] = sub_227C852D0;
    OUTLINED_FUNCTION_53(v13[3]);
    OUTLINED_FUNCTION_164();

    return sub_227C9CC30(v31);
  }
}

uint64_t sub_227C9C854()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C9C94C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_59_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  OUTLINED_FUNCTION_90_1();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227C9C9E8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_59_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227C9CA94(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227B4AF94;

  return GameDebuggerService.resetLeaderboards(_:)();
}

uint64_t sub_227C9CC30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9CC48()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D20720(v3);
}

uint64_t GameDebuggerService.describeLeaderboardSets(_:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83D8, &qword_227D58F40);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  v0[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C9CE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83E0, &unk_227D58F50);
    OUTLINED_FUNCTION_7_22(v14);
    sub_227BCF728();
    v15 = sub_227BCF7D8();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v18 = OUTLINED_FUNCTION_27_5();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8410, &unk_227D58F60);
      sub_227BCF888();
      v16 = sub_227BCF9C0();
      OUTLINED_FUNCTION_17(v16);
      v17 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      OUTLINED_FUNCTION_98_4(v36);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v37);
      OUTLINED_FUNCTION_48();
      *v17 = v38;
      OUTLINED_FUNCTION_1_30(v39);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v40);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_92_1(v31);
    *v32 = v33;
    OUTLINED_FUNCTION_25(v32);
    OUTLINED_FUNCTION_46();

    return sub_227C9D208(v34);
  }
}

uint64_t sub_227C9D068(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameDebuggerService.describeLeaderboardSets(_:)();
}

uint64_t sub_227C9D208(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9D220()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D20844(v3);
}

uint64_t GameDebuggerService.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  v0[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C9D3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_51_1(v14);
    sub_227B67D40();
    v15 = sub_227B67DF0();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v18 = OUTLINED_FUNCTION_27_5();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8450, &unk_227D64DE0);
      sub_227BD058C();
      v16 = sub_227BD063C();
      OUTLINED_FUNCTION_17(v16);
      v17 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      OUTLINED_FUNCTION_98_4(v36);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v37);
      OUTLINED_FUNCTION_48();
      *v17 = v38;
      OUTLINED_FUNCTION_1_30(v39);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v40);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_92_1(v31);
    *v32 = v33;
    OUTLINED_FUNCTION_25(v32);
    OUTLINED_FUNCTION_46();

    return sub_227C9D7E0(v34);
  }
}

uint64_t sub_227C9D640(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameDebuggerService.listLeaderboardSets(games:)();
}

uint64_t sub_227C9D7E0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9D7F8()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D20968(v3);
}

uint64_t GameDebuggerService.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83D8, &qword_227D58F40);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  v0[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C9D9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83E0, &unk_227D58F50);
    OUTLINED_FUNCTION_137_0(0x6F6272656461656CLL, 0xEF73746553647261, 0x6F6272656461656CLL, 0xEF73746553647261);
    sub_227BCF728();
    v14 = sub_227BCF7D8();
    OUTLINED_FUNCTION_8_3(v14);
    if (v12)
    {
      v17 = OUTLINED_FUNCTION_27_5();
      v18(v17);
      v19 = OUTLINED_FUNCTION_17_0();
      v20(v19);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82B0, &unk_227D58AC0);
      sub_227BCA150();
      v15 = sub_227BCA200();
      OUTLINED_FUNCTION_17(v15);
      v16 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v35 = swift_task_alloc();
      OUTLINED_FUNCTION_98_4(v35);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v36);
      OUTLINED_FUNCTION_48();
      *v16 = v37;
      OUTLINED_FUNCTION_1_30(v38);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v39);
    }
  }

  else
  {
    v30 = swift_task_alloc();
    v31 = OUTLINED_FUNCTION_92_1(v30);
    *v31 = v32;
    OUTLINED_FUNCTION_25(v31);
    OUTLINED_FUNCTION_46();

    return sub_227C9DDE8(v33);
  }
}

uint64_t sub_227C9DC48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameDebuggerService.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_227C9DDE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9DE00()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_41(v1);

  return sub_227D20A8C(v3);
}

uint64_t GameDebuggerService.describePlayerProfiles(_:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  v0[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C9DFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    OUTLINED_FUNCTION_7_22(v14);
    sub_227B47E34();
    v15 = sub_227B47EE4();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v18 = OUTLINED_FUNCTION_27_5();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9D68, &qword_227D62058);
      sub_227C9E46C();
      v16 = sub_227C9E5A4();
      OUTLINED_FUNCTION_17(v16);
      v17 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      OUTLINED_FUNCTION_98_4(v36);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v37);
      OUTLINED_FUNCTION_48();
      *v17 = v38;
      OUTLINED_FUNCTION_1_30(v39);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v40);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_92_1(v31);
    *v32 = v33;
    OUTLINED_FUNCTION_25(v32);
    OUTLINED_FUNCTION_46();

    return sub_227C9E3C0(v34);
  }
}

uint64_t sub_227C9E220(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameDebuggerService.describePlayerProfiles(_:)();
}

uint64_t sub_227C9E3C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227C9E3D8()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_41(v1);

  return sub_227D20BB0();
}

unint64_t sub_227C9E46C()
{
  result = qword_27D7E9D70;
  if (!qword_27D7E9D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9D68, &qword_227D62058);
    sub_227C9E4F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9D70);
  }

  return result;
}

unint64_t sub_227C9E4F0()
{
  result = qword_27D7E9D78;
  if (!qword_27D7E9D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E67B0, &unk_227D62060);
    sub_227B0F800(&unk_27D7E9D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9D78);
  }

  return result;
}

unint64_t sub_227C9E5A4()
{
  result = qword_27D7E9D88;
  if (!qword_27D7E9D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9D68, &qword_227D62058);
    sub_227C9E628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9D88);
  }

  return result;
}

unint64_t sub_227C9E628()
{
  result = qword_27D7E9D90;
  if (!qword_27D7E9D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E67B0, &unk_227D62060);
    sub_227B0F800(&unk_27D7E9D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9D90);
  }

  return result;
}

uint64_t GameDebuggerService.describeGameLockups(_:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  v0[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C9E818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    OUTLINED_FUNCTION_7_22(v14);
    sub_227B67D40();
    v15 = sub_227B67DF0();
    OUTLINED_FUNCTION_8_3(v15);
    if (v12)
    {
      v18 = OUTLINED_FUNCTION_27_5();
      v19(v18);
      v20 = OUTLINED_FUNCTION_17_0();
      v21(v20);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DA0, &qword_227D620F8);
      sub_227C9ECC4();
      v16 = sub_227C9EDFC();
      OUTLINED_FUNCTION_17(v16);
      v17 = *(v13 + 112);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v35 = swift_task_alloc();
      OUTLINED_FUNCTION_98_4(v35);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v36);
      OUTLINED_FUNCTION_48();
      *v17 = v37;
      OUTLINED_FUNCTION_1_30(v38);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v39);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_92_1(v31);
    *v32 = v33;
    v32[1] = sub_227CAA920;
    OUTLINED_FUNCTION_46();

    return sub_227C9EC10(v34);
  }
}

uint64_t sub_227C9EA70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CAA938;

  return GameDebuggerService.describeGameLockups(_:)();
}

uint64_t sub_227C9EC24()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  OUTLINED_FUNCTION_6_17();
  v1 = sub_227B0F800(v0);
  OUTLINED_FUNCTION_5_5(v1);
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v2();
}

unint64_t sub_227C9ECC4()
{
  result = qword_27D7E9DA8;
  if (!qword_27D7E9DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9DA0, &qword_227D620F8);
    sub_227C9ED48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9DA8);
  }

  return result;
}

unint64_t sub_227C9ED48()
{
  result = qword_27D7E9DB0;
  if (!qword_27D7E9DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9DB8, &unk_227D62100);
    sub_227B0F800(&unk_27D7E9DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9DB0);
  }

  return result;
}

unint64_t sub_227C9EDFC()
{
  result = qword_27D7E9DC8;
  if (!qword_27D7E9DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9DA0, &qword_227D620F8);
    sub_227C9EE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9DC8);
  }

  return result;
}

unint64_t sub_227C9EE80()
{
  result = qword_27D7E9DD0;
  if (!qword_27D7E9DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9DB8, &unk_227D62100);
    sub_227B0F800(&unk_27D7E9DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9DD0);
  }

  return result;
}

uint64_t GameDebuggerService.listGames(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 25) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 32) = v8;
  v9 = sub_227D49458();
  *(v1 + 88) = v9;
  OUTLINED_FUNCTION_10_0(v9);
  *(v1 + 96) = v10;
  *(v1 + 104) = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  *(v1 + 112) = v11;
  OUTLINED_FUNCTION_10_0(v11);
  *(v1 + 120) = v12;
  *(v1 + 128) = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  *(v1 + 136) = v13;
  OUTLINED_FUNCTION_10_0(v13);
  *(v1 + 144) = v14;
  *(v1 + 152) = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  *(v1 + 160) = v15;
  OUTLINED_FUNCTION_5(v15);
  *(v1 + 168) = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  *(v1 + 176) = v16;
  OUTLINED_FUNCTION_10_0(v16);
  *(v1 + 184) = v17;
  *(v1 + 192) = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DE0, &unk_227D62190);
  *(v1 + 200) = v18;
  OUTLINED_FUNCTION_10_0(v18);
  *(v1 + 208) = v19;
  *(v1 + 216) = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9840, &qword_227D5EB60);
  *(v1 + 224) = v20;
  OUTLINED_FUNCTION_5(v20);
  *(v1 + 232) = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DE8, &unk_227D621A0);
  *(v1 + 240) = v21;
  OUTLINED_FUNCTION_10_0(v21);
  *(v1 + 248) = v22;
  *(v1 + 256) = OUTLINED_FUNCTION_30();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9848, &unk_227D5EB68);
  *(v1 + 264) = v23;
  OUTLINED_FUNCTION_5(v23);
  *(v1 + 272) = OUTLINED_FUNCTION_30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9DF0, &qword_227D621B0);
  *(v1 + 280) = v24;
  OUTLINED_FUNCTION_10_0(v24);
  *(v1 + 288) = v25;
  *(v1 + 296) = OUTLINED_FUNCTION_30();
  v26 = sub_227D49D58();
  *(v1 + 304) = v26;
  OUTLINED_FUNCTION_10_0(v26);
  *(v1 + 312) = v27;
  *(v1 + 320) = OUTLINED_FUNCTION_30();
  v28 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_227C9F2D4()
{
  OUTLINED_FUNCTION_152();
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 320);
    v2 = *(v0 + 272);
    v3 = *(v0 + 40);
    OUTLINED_FUNCTION_36();
    sub_227CA5D74(v3, v2, &qword_27D7E9848, &unk_227D5EB68);
    sub_227D49478();
    sub_227CA0BB4();
    sub_227CA0C68();
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v1)
    {
      (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
      v7 = OUTLINED_FUNCTION_39_0();
      v8(v7);
      OUTLINED_FUNCTION_147_2();

      OUTLINED_FUNCTION_18();

      return v9();
    }

    else
    {
      sub_227CA5D74(*(v0 + 48), *(v0 + 232), &qword_27D7E9840, &qword_227D5EB60);
      sub_227D49478();
      sub_227CA0D1C();
      sub_227CA0DD0();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v6 = *(v0 + 25);
      *(v0 + 16) = *(v0 + 56);
      *(v0 + 24) = v6 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9E38, &unk_227D621C0);
      sub_227D49478();
      sub_227CA0E84(&unk_27D7E9E40);
      sub_227CA0E84(&unk_27D7E9E48);
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      sub_227CA5D74(*(v0 + 64), *(v0 + 168), &qword_27D7E6908, &unk_227D4E690);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      v10 = OUTLINED_FUNCTION_56();
      v11(v10);
      sub_227D49478();
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_82_3();
      sub_227B15ABC(v12);
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_82_3();
      sub_227B15ABC(v13);
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v14 = OUTLINED_FUNCTION_113();
      __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
      OUTLINED_FUNCTION_53_1(&unk_27D7E9E58);
      v16 = OUTLINED_FUNCTION_52_0(&unk_27D7E9E60);
      OUTLINED_FUNCTION_17(v16);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v17 = swift_task_alloc();
      *(v0 + 328) = v17;
      type metadata accessor for GameDebuggerService(0);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v18);
      *v17 = v0;
      v17[1] = sub_227C9FC00;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_90();

      return MEMORY[0x282164B00](v19);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 344) = v4;
    *v4 = v0;
    v4[1] = sub_227C9FE60;

    return sub_227C96A08(v4);
  }
}

uint64_t sub_227C9FC00()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 336) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C9FCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v27 = OUTLINED_FUNCTION_81_7();
  v28(v27);
  v29 = OUTLINED_FUNCTION_9_2();
  v30(v29);
  (*(v26 + 8))(a9, v20);
  (*(v25 + 8))(a11, a10);
  (*(v24 + 8))(a13, a12);
  (*(v23 + 8))(a15, a14);
  (*(v22 + 8))(a17, a16);
  v40 = *(v21 + 104);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_137();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, v40, a18, a19, a20);
}

uint64_t sub_227C9FE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_77_0();
  v17 = *v16;
  OUTLINED_FUNCTION_5_4();
  *v18 = v17;

  OUTLINED_FUNCTION_81_1();
  v29 = *(v15 + 152);
  OUTLINED_FUNCTION_81_1();
  v30 = *(v19 + 128);
  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_16_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v14, a12, a13, a14);
}

uint64_t sub_227CA0080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v27 = OUTLINED_FUNCTION_81_7();
  v28(v27);
  v29 = OUTLINED_FUNCTION_9_2();
  v30(v29);
  (*(v26 + 8))(a9, v20);
  (*(v25 + 8))(a11, a10);
  (*(v24 + 8))(a13, a12);
  (*(v23 + 8))(a15, a14);
  (*(v22 + 8))(a17, a16);
  OUTLINED_FUNCTION_147_2();
  v41 = *(v21 + 104);
  v42 = v31;

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_137();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, v41, v42, a18, a19, a20);
}

uint64_t sub_227CA01DC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_227D49CF8();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_227D49CF8();
  v8 = a2[3];
  v2[11] = v8;
  v2[12] = *(v8 - 8);
  v2[13] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_227D49CF8();
  v9 = a2[4];
  v2[14] = v9;
  v2[15] = *(v9 - 8);
  v2[16] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v10 = swift_task_alloc();
  v2[17] = v10;
  *v10 = v2;
  v10[1] = sub_227CA0850;

  return GameDebuggerService.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227CA0850()
{
  OUTLINED_FUNCTION_14();
  v32 = *(v0 + 128);
  OUTLINED_FUNCTION_69();
  v31 = *(v1 + 120);
  OUTLINED_FUNCTION_69();
  v28 = *(v2 + 112);
  OUTLINED_FUNCTION_69();
  v30 = *(v3 + 104);
  OUTLINED_FUNCTION_69();
  v29 = *(v4 + 96);
  OUTLINED_FUNCTION_69();
  v25 = *(v5 + 88);
  OUTLINED_FUNCTION_69();
  v27 = *(v6 + 80);
  OUTLINED_FUNCTION_69();
  v26 = *(v7 + 72);
  OUTLINED_FUNCTION_69();
  v9 = *(v8 + 64);
  v24 = *(v10 + 56);
  OUTLINED_FUNCTION_69();
  v23 = *(v11 + 48);
  OUTLINED_FUNCTION_69();
  v13 = *(v12 + 40);
  v15 = v14[4];
  v16 = v14[3];
  v17 = v14[2];
  OUTLINED_FUNCTION_80_0();
  v19 = v18;
  OUTLINED_FUNCTION_5_4();
  *v20 = v19;

  (*(v16 + 8))(v15, v17);
  (*(v23 + 8))(v24, v13);
  (*(v26 + 8))(v27, v9);
  (*(v29 + 8))(v30, v25);
  (*(v31 + 8))(v32, v28);

  v21 = *(v19 + 8);

  return v21();
}

unint64_t sub_227CA0BB4()
{
  result = qword_27D7E9DF8;
  if (!qword_27D7E9DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9848, &unk_227D5EB68);
    sub_227B0F800(&unk_27D7E9E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9DF8);
  }

  return result;
}

unint64_t sub_227CA0C68()
{
  result = qword_27D7E9E08;
  if (!qword_27D7E9E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9848, &unk_227D5EB68);
    sub_227B0F800(&unk_27D7E9E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9E08);
  }

  return result;
}

unint64_t sub_227CA0D1C()
{
  result = qword_27D7E9E18;
  if (!qword_27D7E9E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9840, &qword_227D5EB60);
    sub_227B0F800(&unk_27D7E9E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9E18);
  }

  return result;
}

unint64_t sub_227CA0DD0()
{
  result = qword_27D7E9E28;
  if (!qword_27D7E9E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9840, &qword_227D5EB60);
    sub_227B0F800(&unk_27D7E9E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9E28);
  }

  return result;
}

unint64_t sub_227CA0E84(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9E38, &unk_227D621C0);
    result = OUTLINED_FUNCTION_221(v3);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t GameDebuggerService.enableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BF0, &unk_227D5FE20);
  v0[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v0[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CA101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_119();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_166_4();
    v14 = v13[5];
    v15 = v13[4];
    OUTLINED_FUNCTION_36();
    v13[2] = v15;
    v13[3] = v14;
    sub_227D4CE58();
    OUTLINED_FUNCTION_133_2();
    OUTLINED_FUNCTION_148();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v12)
    {
      v17 = OUTLINED_FUNCTION_86_5();
      v18(v17);
      v19 = OUTLINED_FUNCTION_17_0();
      v20(v19);
      OUTLINED_FUNCTION_87_7();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_128();

      __asm { BRAA            X1, X16 }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v16 = v13[15];
    sub_227D49D08();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v26 = swift_task_alloc();
    OUTLINED_FUNCTION_175_3(v26);
    OUTLINED_FUNCTION_0_49();
    sub_227B0F800(v27);
    OUTLINED_FUNCTION_44_0();
    *v16 = v28;
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_128();

    return MEMORY[0x282164B10](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }

  else
  {
    v23 = swift_task_alloc();
    v13[18] = v23;
    *v23 = v13;
    OUTLINED_FUNCTION_159_3(v23);
    OUTLINED_FUNCTION_128();

    return sub_227C9EC10(v24);
  }
}

uint64_t sub_227CA1270()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CA1368()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_158_3();
  v0 = OUTLINED_FUNCTION_43_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  OUTLINED_FUNCTION_87_7();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227CA140C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227CA1540()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_158_3();
  v0 = OUTLINED_FUNCTION_43_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227CA15F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227B3FFF4;

  return GameDebuggerService.enableGameDebugging(bundleID:)();
}

uint64_t GameDebuggerService.disableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9BF0, &unk_227D5FE20);
  v0[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v0[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CA18D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_119();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_166_4();
    v14 = v13[5];
    v15 = v13[4];
    OUTLINED_FUNCTION_36();
    v13[2] = v15;
    v13[3] = v14;
    sub_227D4CE58();
    OUTLINED_FUNCTION_133_2();
    OUTLINED_FUNCTION_148();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v12)
    {
      v17 = OUTLINED_FUNCTION_86_5();
      v18(v17);
      v19 = OUTLINED_FUNCTION_17_0();
      v20(v19);
      OUTLINED_FUNCTION_87_7();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_128();

      __asm { BRAA            X1, X16 }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v16 = v13[15];
    sub_227D49D08();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v26 = swift_task_alloc();
    OUTLINED_FUNCTION_175_3(v26);
    OUTLINED_FUNCTION_0_49();
    sub_227B0F800(v27);
    OUTLINED_FUNCTION_44_0();
    *v16 = v28;
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_128();

    return MEMORY[0x282164B10](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }

  else
  {
    v23 = swift_task_alloc();
    v13[18] = v23;
    *v23 = v13;
    OUTLINED_FUNCTION_159_3(v23);
    OUTLINED_FUNCTION_128();

    return sub_227C96A08(v24);
  }
}

uint64_t sub_227CA1B24()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CA1C1C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227B4AF94;

  return GameDebuggerService.disableGameDebugging(bundleID:)();
}

uint64_t GameDebuggerService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = sub_227D49458();
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[11] = v8;
  OUTLINED_FUNCTION_5(v8);
  v1[12] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[13] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A28, &qword_227D636E0);
  v1[16] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[17] = v12;
  v1[18] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[19] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[20] = v14;
  v1[21] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[22] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[23] = v16;
  v1[24] = OUTLINED_FUNCTION_30();
  v17 = sub_227D49D58();
  v1[25] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[26] = v18;
  v1[27] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227CA2044()
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[27];
    OUTLINED_FUNCTION_36();
    v2 = OUTLINED_FUNCTION_173();
    v3(v2);
    sub_227D49478();
    OUTLINED_FUNCTION_14_4();
    sub_227B15ABC(v4);
    OUTLINED_FUNCTION_13_4();
    sub_227B15ABC(v5);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v1)
    {
      (*(v0[23] + 8))(v0[24], v0[22]);
      v6 = OUTLINED_FUNCTION_17_0();
      v7(v6);
      OUTLINED_FUNCTION_115_0(v0[27]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_72();

      return v16();
    }

    else
    {
      v0[2] = v0[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A30, &unk_227D62390);
      sub_227D49478();
      sub_227B418A4();
      sub_227B419DC();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      sub_227CA5D74(v0[6], v0[12], &qword_27D7E6908, &unk_227D4E690);
      OUTLINED_FUNCTION_61_0();
      sub_227B15FB0();
      sub_227B16064();
      OUTLINED_FUNCTION_61_1();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      v18 = OUTLINED_FUNCTION_113();
      __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
      OUTLINED_FUNCTION_53_1(&qword_27D7E6A78);
      v20 = OUTLINED_FUNCTION_52_0(&qword_27D7E6A80);
      OUTLINED_FUNCTION_17(v20);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v21 = swift_task_alloc();
      v0[28] = v21;
      type metadata accessor for GameDebuggerService(0);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v22);
      *v21 = v0;
      v21[1] = sub_227CA25C0;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00](v23);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[30] = v8;
    *v8 = v9;
    v8[1] = sub_227B40E2C;
    OUTLINED_FUNCTION_72();

    return sub_227CA2F3C(v10, v11, v12, v13);
  }
}

uint64_t sub_227CA25C0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CA26B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  v15 = v14[26];
  v36 = v14[25];
  v37 = v14[27];
  v35 = v14[24];
  v17 = v14[22];
  v16 = v14[23];
  v18 = v14[17];
  v19 = v14[18];
  v21 = v14[15];
  v20 = v14[16];
  v23 = v14[13];
  v22 = v14[14];
  v24 = OUTLINED_FUNCTION_91();
  v25(v24);
  (*(v22 + 8))(v21, v23);
  (*(v18 + 8))(v19, v20);
  (*(v16 + 8))(v35, v17);
  (*(v15 + 8))(v37, v36);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_16_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, a12, a13, a14);
}

uint64_t sub_227CA27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  v15 = v14[26];
  v36 = v14[25];
  v37 = v14[27];
  v35 = v14[24];
  v17 = v14[22];
  v16 = v14[23];
  v18 = v14[17];
  v19 = v14[18];
  v21 = v14[15];
  v20 = v14[16];
  v23 = v14[13];
  v22 = v14[14];
  v24 = OUTLINED_FUNCTION_91();
  v25(v24);
  (*(v22 + 8))(v21, v23);
  (*(v18 + 8))(v19, v20);
  (*(v16 + 8))(v35, v17);
  (*(v15 + 8))(v37, v36);
  OUTLINED_FUNCTION_115_0(v14[27]);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, a12, a13, a14);
}

uint64_t sub_227CA291C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = sub_227CA2CDC;

  return GameDebuggerService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227CA2CDC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 80);
  v19 = *(v0 + 72);
  OUTLINED_FUNCTION_69();
  v3 = *(v2 + 64);
  v5 = *(v4 + 56);
  v18 = *(v4 + 48);
  OUTLINED_FUNCTION_69();
  v7 = *(v6 + 40);
  v9 = v8[4];
  v10 = v8[3];
  v11 = v8[2];
  OUTLINED_FUNCTION_80_0();
  v13 = v12;
  OUTLINED_FUNCTION_5_4();
  *v14 = v13;

  (*(v10 + 8))(v9, v11);
  (*(v18 + 8))(v5, v7);
  (*(v19 + 8))(v1, v3);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_176_1();

  return v15();
}

uint64_t sub_227CA2F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227CA2F60, v4);
}

uint64_t sub_227CA2F60()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 56) = v1;
  *v1 = v2;
  v1[1] = sub_227B417C4;

  return sub_227B53F5C();
}

uint64_t GameDebuggerService.describeGameActivityDefinitions(_:)()
{
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_111_0(v1);
  v0[6] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A88, &qword_227D62480);
  v0[9] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[10] = v5;
  v6 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v6);
  v7 = sub_227D49D58();
  v0[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[13] = v8;
  v0[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CA3140()
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A90, &unk_227D62490);
    v2 = OUTLINED_FUNCTION_26_11();
    OUTLINED_FUNCTION_137_0(v2, v3, 0xD000000000000017, v4);
    sub_227B42330();
    v5 = sub_227B423E0();
    OUTLINED_FUNCTION_8_3(v5);
    if (v0)
    {
      v8 = OUTLINED_FUNCTION_27_5();
      v9(v8);
      v10 = OUTLINED_FUNCTION_17_0();
      v11(v10);
      OUTLINED_FUNCTION_194();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_72();

      return v12();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      OUTLINED_FUNCTION_70();
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AC0, &unk_227D624A0);
      sub_227B42490();
      v6 = sub_227B425C8();
      OUTLINED_FUNCTION_17(v6);
      v7 = *(v1 + 112);
      sub_227D49D08();
      sub_227D49468();
      v20 = swift_task_alloc();
      OUTLINED_FUNCTION_98_4(v20);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v21);
      OUTLINED_FUNCTION_48();
      *v7 = v22;
      OUTLINED_FUNCTION_1_30(v23);
      OUTLINED_FUNCTION_135_0();

      return MEMORY[0x282164B00](v24);
    }
  }

  else
  {
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_92_1(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_25(v16);
    OUTLINED_FUNCTION_72();

    return sub_227CA3880(v18);
  }
}

uint64_t sub_227CA33D0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CA34C8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_83();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_117_0();

  return v8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227CA3574(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CA3714;

  return GameDebuggerService.describeGameActivityDefinitions(_:)();
}

uint64_t sub_227CA3714()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_80_0();
  *v0 = v1;
  OUTLINED_FUNCTION_197(v2, v3);
  v4 = OUTLINED_FUNCTION_9_2();
  v5(v4);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227CA3880(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_3_23(a1, v1);
}

uint64_t sub_227CA3898()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_165(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_41(v1);

  return sub_227B55528();
}

uint64_t GameDebuggerService.invokeActivity(_:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D49458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = sub_227D498E8();
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B90, &qword_227D4F000);
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v1[13] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CA3AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_166_4();
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_173();
    v15(v14);
    OUTLINED_FUNCTION_26_11();
    sub_227D49478();
    sub_227B0F800(&qword_27D7E6B68);
    sub_227B0F800(&off_27D7E6B80);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D18();
    if (v12)
    {
      v17 = v13[14];
      v18 = OUTLINED_FUNCTION_86_5();
      v19(v18);
      (*(v17 + 8))(v13[15], v13[13]);
      OUTLINED_FUNCTION_87_7();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      __asm { BRAA            X1, X16 }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v16 = v13[15];
    sub_227D49D08();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v25 = swift_task_alloc();
    OUTLINED_FUNCTION_175_3(v25);
    OUTLINED_FUNCTION_0_49();
    sub_227B0F800(v26);
    OUTLINED_FUNCTION_44_0();
    *v16 = v27;
    v16[1] = sub_227CA3DB4;
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  else
  {
    v22 = swift_task_alloc();
    v13[18] = v22;
    *v22 = v13;
    v22[1] = sub_227B3FC38;
    OUTLINED_FUNCTION_53(v13[2]);
    OUTLINED_FUNCTION_33();

    return sub_227CA41B4();
  }
}

uint64_t sub_227CA3DB4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CA3EAC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_158_3();
  v0 = OUTLINED_FUNCTION_163_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);
  OUTLINED_FUNCTION_87_7();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_117_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_227CA3F5C()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_163_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_39_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_156_4();
  v5(v4);

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227CA401C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227B3FFF4;

  return GameDebuggerService.invokeActivity(_:)();
}

uint64_t sub_227CA41B4()
{
  OUTLINED_FUNCTION_6();
  v1[29] = v2;
  v1[30] = v0;
  v3 = type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(0);
  OUTLINED_FUNCTION_5(v3);
  v1[31] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[32] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[33] = v5;
  v1[34] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v1[35] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[36] = v7;
  v1[37] = OUTLINED_FUNCTION_379();
  v1[38] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[39] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[40] = v9;
  v1[41] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9200, &unk_227D5C318);
  v1[42] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[43] = v11;
  v1[44] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF0, "ƈ");
  OUTLINED_FUNCTION_5(v12);
  v1[45] = OUTLINED_FUNCTION_30();
  v13 = sub_227D49AC8();
  v1[46] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[47] = v14;
  v1[48] = OUTLINED_FUNCTION_379();
  v1[49] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9E68, &qword_227D625C8);
  OUTLINED_FUNCTION_5(v15);
  v1[50] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  v1[51] = v16;
  OUTLINED_FUNCTION_5(v16);
  v1[52] = OUTLINED_FUNCTION_379();
  v1[53] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[54] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[55] = v18;
  v1[56] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v19);
  v1[57] = OUTLINED_FUNCTION_30();
  v20 = sub_227D49188();
  v1[58] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[59] = v21;
  v1[60] = OUTLINED_FUNCTION_379();
  v1[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227CA4568, v0, 0);
}

uint64_t sub_227CA4568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  sub_227D498B8();
  OUTLINED_FUNCTION_113_5();
  if (v21)
  {
    sub_227B1DE58(v20[57], &qword_27D7E6CD8, &qword_227D5C1C0);
    sub_227D49E08();
    OUTLINED_FUNCTION_6_17();
    sub_227B0F800(v22);
    v23 = swift_allocError();
    OUTLINED_FUNCTION_130_2();
    *v24 = v26;
    v24[1] = v25;
    OUTLINED_FUNCTION_14_0();
    (*(v27 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_48_6();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_137();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, v23, a17, a18, a19, a20);
  }

  else
  {
    (*(v20[59] + 32))(v20[61], v20[57], v20[58]);
    sub_227D49878();
    v20[62] = sub_227D4A898();
    v20[63] = v28;
    v38 = v20[30];
    (*(v20[55] + 8))(v20[56], v20[54]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE0, &qword_227D4F910);
    v39 = swift_allocObject();
    v20[64] = v39;
    *(v39 + 16) = xmmword_227D4E520;
    sub_227D497C8();
    v20[65] = *(v38 + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider);
    v40 = swift_task_alloc();
    v20[66] = v40;
    *v40 = v20;
    OUTLINED_FUNCTION_26(v40);
    OUTLINED_FUNCTION_137();

    return sub_227B55528();
  }
}

uint64_t sub_227CA491C()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v5[67] = v0;

  if (v0)
  {
    v9 = v5[30];
    v10 = sub_227CA54A4;
  }

  else
  {
    v11 = v5[30];

    v5[68] = v3;
    v10 = sub_227CA4A44;
    v9 = v11;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_227CA54A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();

  v19 = OUTLINED_FUNCTION_9_2();
  v20(v19);
  v30 = *(v18 + 536);
  OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_101_5();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, v30, a16, a17, a18);
}

uint64_t sub_227CA55B4()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;
  *v4 = *v1;
  v3[70] = v0;

  v5 = v2[30];
  if (v0)
  {
    memcpy(v3 + 11, v3 + 2, 0x48uLL);
    sub_227B6407C((v3 + 11));
    v6 = sub_227CA5A84;
  }

  else
  {
    memcpy(v3 + 20, v3 + 2, 0x48uLL);
    sub_227B6407C((v3 + 20));
    v6 = sub_227CA5708;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227CA5708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = OUTLINED_FUNCTION_148_2();
  v20(v19);
  sub_227B1DE58(v18, &qword_27D7E6AD8, &unk_227D4ED80);
  v21 = OUTLINED_FUNCTION_17_0();
  v22(v21);
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_90();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_227CA582C()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 576) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 240);
  sub_227B63FC4(v5);
  if (v0)
  {
    v7 = sub_227CA5BA0;
  }

  else
  {
    v7 = sub_227CA5968;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_227CA5968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  sub_227B1DE58(*(v18 + 424), &qword_27D7E6AD8, &unk_227D4ED80);
  v19 = OUTLINED_FUNCTION_39_0();
  v20(v19);
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_90();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_227CA5A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v20 = OUTLINED_FUNCTION_148_2();
  v21(v20);
  sub_227B1DE58(v18, &qword_27D7E6AD8, &unk_227D4ED80);
  v22 = OUTLINED_FUNCTION_17_0();
  v23(v22);
  v33 = *(v19 + 560);
  OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_101_5();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, v33, a16, a17, a18);
}

uint64_t sub_227CA5BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  sub_227B1DE58(*(v18 + 424), &qword_27D7E6AD8, &unk_227D4ED80);
  v19 = OUTLINED_FUNCTION_39_0();
  v20(v19);
  v30 = *(v18 + 576);
  OUTLINED_FUNCTION_29_10();
  OUTLINED_FUNCTION_101_5();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_90();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, v30, a16, a17, a18);
}

uint64_t sub_227CA5CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  v6 = v5;
  if (v4)
  {
    sub_227CA5D74(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &qword_27D7E6AD8, &unk_227D4ED80);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_227CA5D74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_62_0();
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return a2;
}

uint64_t GameDebuggerService.getDefaultGameActivityEnvironment()()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D49458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = sub_227D49D58();
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_30();
  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CA5EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = *(v12 + 72);
    OUTLINED_FUNCTION_36();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D28();
    if (v13)
    {
      v15 = OUTLINED_FUNCTION_43_0();
      v16(v15);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
    }

    else
    {
      sub_227D49528();
      sub_227B0F800(&unk_27D7E9E70);
      v14 = sub_227B0F800(&unk_27D7E9E78);
      OUTLINED_FUNCTION_17(v14);
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v29 = swift_task_alloc();
      v30 = OUTLINED_FUNCTION_79_1(v29);
      type metadata accessor for GameDebuggerService(v30);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v31);
      *v29 = v12;
      v29[1] = sub_227CA6150;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v32);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v12 + 96) = v26;
    *v26 = v27;
    v26[1] = sub_227CA62D4;
    OUTLINED_FUNCTION_46();

    return sub_227CA6514();
  }
}

uint64_t sub_227CA6150()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CA6248()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_110();
  v1(v0);
  v2 = OUTLINED_FUNCTION_39_0();
  v3(v2);

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_227CA62D4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_81_1();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227CA63EC()
{
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_163_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_43_0();
  v3(v2);

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227CA6474()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B355D0;

  return GameDebuggerService.getDefaultGameActivityEnvironment()();
}

uint64_t sub_227CA6514()
{
  OUTLINED_FUNCTION_6();
  v1[17] = v2;
  v1[18] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9E80, &qword_227D62650);
  OUTLINED_FUNCTION_5(v3);
  v1[19] = OUTLINED_FUNCTION_30();

  return MEMORY[0x2822009F8](sub_227CA65A0, v0, 0);
}

uint64_t sub_227CA65A0()
{
  OUTLINED_FUNCTION_51_0();
  sub_227C19454(*(v0[18] + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_dataProvider) + 104, (v0 + 7));
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v6 = (*(v2 + 24) + **(v2 + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[20] = v3;
  *v3 = v4;
  v3[1] = sub_227CA66E0;

  return v6(v0 + 2, v1, v2);
}

uint64_t sub_227CA66E0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_81_1();
  v5 = *(v4 + 144);
  if (v0)
  {
    v6 = sub_227CA6A0C;
  }

  else
  {
    v6 = sub_227CA67F8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_227CA67F8()
{
  OUTLINED_FUNCTION_119();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_227C19454((v0 + 2), (v0 + 12));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9E88, &qword_227D62658);
  v1 = sub_227D49528();
  v2 = swift_dynamicCast();
  v3 = v0[19];
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v1);
    OUTLINED_FUNCTION_14_0();
    v4 = OUTLINED_FUNCTION_150();
    v5(v4);

    OUTLINED_FUNCTION_15_0();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v0[19], 1, 1, v1);
    sub_227B1DE58(v3, &qword_27D7E9E80, &qword_227D62650);
    sub_227D4D668();

    OUTLINED_FUNCTION_130_2();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    swift_getDynamicType();
    v7 = sub_227D4DC98();
    MEMORY[0x22AAA5DA0](v7);

    sub_227D49E08();
    OUTLINED_FUNCTION_6_17();
    v9 = sub_227B0F800(v8);
    OUTLINED_FUNCTION_23_6(v9);
    OUTLINED_FUNCTION_57_0();
    sub_227D49D98();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    OUTLINED_FUNCTION_18();
  }

  return v6();
}

uint64_t sub_227CA6A0C()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t GameDebuggerService.getServiceVersion()()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v0;
  v2 = sub_227D49458();
  v1[5] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[6] = v3;
  v1[7] = OUTLINED_FUNCTION_30();
  v4 = sub_227D49D58();
  v1[8] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[9] = v5;
  v1[10] = OUTLINED_FUNCTION_30();
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227CA6B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[10];
    OUTLINED_FUNCTION_36();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_49_1();
    sub_227D49D28();
    if (v13)
    {
      (*(v12[9] + 8))(v12[10], v12[8]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
    }

    else
    {
      sub_227D49D38();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v25 = swift_task_alloc();
      v26 = OUTLINED_FUNCTION_64_0(v25);
      type metadata accessor for GameDebuggerService(v26);
      OUTLINED_FUNCTION_0_49();
      sub_227B0F800(v27);
      OUTLINED_FUNCTION_48();
      *v25 = v28;
      v25[1] = sub_227CA6DA4;
      OUTLINED_FUNCTION_1_2(v29);
      OUTLINED_FUNCTION_76_1();

      return MEMORY[0x282164B00](v30);
    }
  }

  else
  {
    v23 = swift_task_alloc();
    v12[13] = v23;
    *v23 = v12;
    OUTLINED_FUNCTION_35(v23);
    OUTLINED_FUNCTION_46();

    return sub_227CA729C();
  }
}

uint64_t sub_227CA6DA4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CA6E9C()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_180_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_39_0();
  v3(v2);

  v4 = OUTLINED_FUNCTION_57_0();

  return v5(v4);
}

uint64_t sub_227CA6F38()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_104_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  if (!v0)
  {
    OUTLINED_FUNCTION_150();
  }

  OUTLINED_FUNCTION_164();

  return v7(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_227CA7074()
{
  OUTLINED_FUNCTION_20();
  v0 = OUTLINED_FUNCTION_180_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_39_0();
  v3(v2);

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227CA7104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_227CA719C;

  return GameDebuggerService.getServiceVersion()();
}

uint64_t sub_227CA719C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 16);
  *v1 = v2;
  v1[1] = v3;

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t static GameDebuggerService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GameDebuggerService(0);
  sub_227D49D78();
  OUTLINED_FUNCTION_14_13();
  sub_227B0F800(v5);
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v6);
  v7 = sub_227D493A8();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v10 + 16))(v8 + v9, a1);
    *(v8 + OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_actorSystem) = a2;
  }

  return v8;
}

uint64_t GameDebuggerService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_id;
  sub_227D49D78();
  OUTLINED_FUNCTION_14_13();
  sub_227B0F800(v2);
  sub_227D493C8();
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  (*(v3 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GameDebuggerService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore19GameDebuggerService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v2 + 8))(v0 + v1);

    swift_defaultActor_destroy();
  }

  else
  {
    GameDebuggerService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227CA7578()
{
  sub_227D4DB58();
  type metadata accessor for GameDebuggerService(0);
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t GameDebuggerService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for GameDebuggerService(0);
    OUTLINED_FUNCTION_0_49();
    sub_227B0F800(v1);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227CA766C@<X0>(uint64_t *a1@<X8>)
{
  result = GameDebuggerService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227CA7714()
{
  OUTLINED_FUNCTION_109_0();
  type metadata accessor for GameDebuggerService(0);
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v0);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227CA7778(uint64_t a1)
{
  sub_227D4DB58();
  type metadata accessor for GameDebuggerService(0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227CA7980()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.describeAchievements(_:)();
}

uint64_t sub_227CA7A04()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.listAchievements(games:after:)();
}

uint64_t sub_227CA7A90()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.getAchievementsProgresses(_:player:)();
}

uint64_t sub_227CA7B1C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.resetAchievementsProgress(_:players:)();
}

uint64_t sub_227CA7BA8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.revealAchievements(_:players:)();
}

uint64_t sub_227CA7C34()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.submitAchievementsProgress(_:)();
}

uint64_t sub_227CA7CB8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.getImageData(_:)();
}

uint64_t sub_227CA7D3C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return GameDebuggerService.listLocalPlayers()();
}

uint64_t sub_227CA7DC0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.describeLeaderboards(_:)();
}

uint64_t sub_227CA7E44()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_96_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_117_0();

  return GameDebuggerService.listLeaderboardEntries(_:range:locale:timeScope:)();
}

uint64_t sub_227CA7ED8()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);
  OUTLINED_FUNCTION_121_3();
  OUTLINED_FUNCTION_164();

  return GameDebuggerService.listLeaderboardEntries(_:players:locale:timeScope:)();
}

uint64_t sub_227CA7F70()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.listLeaderboards(games:players:)();
}

uint64_t sub_227CA7FFC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.submitLeaderboardEntries(_:)();
}

uint64_t sub_227CA8080()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.resetLeaderboards(_:)();
}

uint64_t sub_227CA8104()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.describeLeaderboardSets(_:)();
}

uint64_t sub_227CA8188()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.listLeaderboardSets(games:)();
}

uint64_t sub_227CA820C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_227CA8290()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.describePlayerProfiles(_:)();
}

uint64_t sub_227CA8314()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.describeGameLockups(_:)();
}

uint64_t sub_227CA8398()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_150_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_36_1(v1);

  return GameDebuggerService.listGames(by:sortBy:upTo:after:belongingTo:)();
}

uint64_t sub_227CA8440()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.enableGameDebugging(bundleID:)();
}

uint64_t sub_227CA84CC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return GameDebuggerService.disableGameDebugging(bundleID:)();
}

uint64_t sub_227CA8558()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_121_3();
  OUTLINED_FUNCTION_164();

  return GameDebuggerService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227CA85F8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.describeGameActivityDefinitions(_:)();
}

uint64_t sub_227CA867C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return GameDebuggerService.invokeActivity(_:)();
}

uint64_t sub_227CA8700()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_109_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227B355D0;

  return GameDebuggerService.getDefaultGameActivityEnvironment()();
}

uint64_t sub_227CA8790()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return GameDebuggerService.getServiceVersion()();
}

uint64_t sub_227CA8814()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_150();
  }

  return v5(v4);
}

uint64_t sub_227CA890C()
{
  type metadata accessor for GameDebuggerService(0);
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v0);
  v1 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v1);
}

uint64_t sub_227CA8984(uint64_t a1)
{
  type metadata accessor for GameDebuggerService(0);
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v1);
  OUTLINED_FUNCTION_32_8();
  sub_227B0F800(v2);
  return sub_227D49428();
}

uint64_t sub_227CA8A2C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GameDebuggerService(0);
  OUTLINED_FUNCTION_0_49();
  sub_227B0F800(v3);
  OUTLINED_FUNCTION_32_8();
  sub_227B0F800(v4);
  OUTLINED_FUNCTION_10();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227CA8ADC(uint64_t a1)
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of GameDebuggerService.describeAchievements(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameDebuggerService.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 128) + **(v0 + 128));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameDebuggerService.getAchievementsProgresses(_:player:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 136) + **(v0 + 136));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameDebuggerService.resetAchievementsProgress(_:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 144) + **(v0 + 144));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameDebuggerService.revealAchievements(_:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 152) + **(v0 + 152));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameDebuggerService.submitAchievementsProgress(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameDebuggerService.getImageData(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameDebuggerService.listLocalPlayers()()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v5 = (*(v0 + 176) + **(v0 + 176));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_35(v2);

  return v5();
}

uint64_t dispatch thunk of GameDebuggerService.describeLeaderboards(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

void dispatch thunk of GameDebuggerService.listLeaderboardEntries(_:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_128();

  __asm { BRAA            X5, X16 }
}

uint64_t dispatch thunk of GameDebuggerService.listLeaderboardEntries(_:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v5 = (*(v0 + 200) + **(v0 + 200));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_35(v2);
  OUTLINED_FUNCTION_121_3();

  return v5();
}

uint64_t dispatch thunk of GameDebuggerService.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 208) + **(v0 + 208));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameDebuggerService.submitLeaderboardEntries(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameDebuggerService.resetLeaderboards(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameDebuggerService.describeLeaderboardSets(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameDebuggerService.listLeaderboardSets(games:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameDebuggerService.listLeaderboards(leaderboardSets:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameDebuggerService.describePlayerProfiles(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameDebuggerService.describeGameLockups(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

void dispatch thunk of GameDebuggerService.listGames(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_45();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_36_1(v1);
  OUTLINED_FUNCTION_33();

  __asm { BRAA            X7, X16 }
}

uint64_t dispatch thunk of GameDebuggerService.enableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 280) + **(v0 + 280));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameDebuggerService.disableGameDebugging(bundleID:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 288) + **(v0 + 288));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of GameDebuggerService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v5 = (*(v0 + 296) + **(v0 + 296));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v2[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_121_3();

  return v5();
}

uint64_t dispatch thunk of GameDebuggerService.describeGameActivityDefinitions(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameDebuggerService.invokeActivity(_:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of GameDebuggerService.getDefaultGameActivityEnvironment()()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_22_0();
  v6 = (*(v1 + 320) + **(v1 + 320));
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  v3[1] = sub_227B3E2E8;

  return v6(v0);
}

uint64_t dispatch thunk of GameDebuggerService.getServiceVersion()()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v5 = (*(v0 + 328) + **(v0 + 328));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_35(v2);

  return v5();
}

uint64_t sub_227CAA7F8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_150();

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_48_6()
{
}

uint64_t OUTLINED_FUNCTION_98_4(uint64_t a1)
{
  *(v1 + 120) = a1;

  return type metadata accessor for GameDebuggerService(0);
}

uint64_t OUTLINED_FUNCTION_101_5()
{
}

uint64_t OUTLINED_FUNCTION_102_4(uint64_t a1)
{

  return sub_227D49478();
}

unint64_t OUTLINED_FUNCTION_116_4(uint64_t a1)
{

  return sub_227B0F800(a1);
}

uint64_t OUTLINED_FUNCTION_131_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_133_2()
{

  return sub_227D49478();
}

uint64_t AuthenticationService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_id;
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_227CAAC44()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BD28);
  __swift_project_value_buffer(v0, qword_280E7BD28);
  return sub_227D49E68();
}

uint64_t sub_227CAAC90()
{
  if (_MergedGlobals_13 != -1)
  {
    OUTLINED_FUNCTION_5_22(&_MergedGlobals_13);
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BD28);
}

uint64_t static AuthenticationService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_13 != -1)
  {
    OUTLINED_FUNCTION_5_22(&_MergedGlobals_13);
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BD28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227CAAD7C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_227CAADCC(a1, a2);
  return v4;
}

uint64_t sub_227CAADCC(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v14 = sub_227D49EF8();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_actorSystem) = a1;
  type metadata accessor for AuthenticationService(0);
  v16 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_31();
  sub_227B0F844(v8, v9, MEMORY[0x277D0CE30]);
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v10, v11, &protocol conformance descriptor for AuthenticationService);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_id, v6, v14);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_dataProvider) = v15;
  v16 = *(v2 + v7);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for AuthenticationService(uint64_t a1)
{
  result = qword_27D801220;
  if (!qword_27D801220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AuthenticationService.listLocalPlayers()()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v0;
  v2 = sub_227D49458();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_227D49D58();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227CAB108, 0, 0);
}

uint64_t sub_227CAB108()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_227D49D68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    sub_227CAB9D8(&qword_27D7E6BD0, &qword_27D7E6BD8, MEMORY[0x277D0D520], MEMORY[0x277D83978]);
    sub_227CAB9D8(&qword_27D7E6BE0, &qword_27D7E6BE8, MEMORY[0x277D0D500], MEMORY[0x277D83948]);
    sub_227D49D38();
    sub_227D49D08();
    sub_227D49468();
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    type metadata accessor for AuthenticationService(0);
    OUTLINED_FUNCTION_0_50();
    sub_227B0F844(v4, v5, &protocol conformance descriptor for AuthenticationService);
    *v3 = v0;
    v3[1] = sub_227CAB454;

    return MEMORY[0x282164B00](v0 + 16);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_227B48470;

    return sub_227CAB830();
  }
}

uint64_t sub_227CAB454()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *(v4 + 88) = v0;

  if (v0)
  {
    v5 = sub_227CAB5F8;
  }

  else
  {
    v5 = sub_227CAB558;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227CAB558()
{
  OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  v6 = *(v3 + 16);

  OUTLINED_FUNCTION_115();

  return v7(v6);
}

uint64_t sub_227CAB5F8()
{
  OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  (*(v2 + 8))(v1, v0);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_227CAB694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_227CAB72C;

  return AuthenticationService.listLocalPlayers()();
}

uint64_t sub_227CAB72C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v5 = *v0;
  **(v1 + 16) = v2;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_227CAB850()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_227CAB8EC;

  return sub_227D1FF70();
}

uint64_t sub_227CAB8EC()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_115();

  return v5(v2);
}

uint64_t sub_227CAB9D8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    sub_227CABA60(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227CABA60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E67C0, &unk_227D4FB20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static AuthenticationService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AuthenticationService(0);
  sub_227D49D78();
  OUTLINED_FUNCTION_1_31();
  sub_227B0F844(v5, v6, MEMORY[0x277D0CE30]);
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v7, v8, &protocol conformance descriptor for AuthenticationService);
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v12 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_actorSystem) = a2;
  }

  return v10;
}

uint64_t AuthenticationService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_id;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_31();
  sub_227B0F844(v2, v3, MEMORY[0x277D0CE30]);
  sub_227D493C8();
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  (*(v4 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AuthenticationService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore21AuthenticationService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v2 + 8))(v0 + v1);

    swift_defaultActor_destroy();
  }

  else
  {
    AuthenticationService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227CABD5C()
{
  sub_227D4DB58();
  type metadata accessor for AuthenticationService(0);
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v0, v1, &protocol conformance descriptor for AuthenticationService);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t AuthenticationService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for AuthenticationService(0);
    OUTLINED_FUNCTION_0_50();
    sub_227B0F844(v1, v2, &protocol conformance descriptor for AuthenticationService);
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227CABE54@<X0>(uint64_t *a1@<X8>)
{
  result = AuthenticationService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227CABEF8(uint64_t a1)
{
  type metadata accessor for AuthenticationService(0);
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v1, v2, &protocol conformance descriptor for AuthenticationService);
  return sub_227D49418();
}

uint64_t sub_227CABF64(uint64_t a1)
{
  sub_227D4DB58();
  type metadata accessor for AuthenticationService(0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227CAC16C()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B35D04;

  return AuthenticationService.listLocalPlayers()();
}

uint64_t sub_227CAC1F8(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for AuthenticationService(0);
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v2, v3, &protocol conformance descriptor for AuthenticationService);

  return MEMORY[0x2821FF4E0](v1);
}

uint64_t sub_227CAC274(uint64_t a1)
{
  type metadata accessor for AuthenticationService(0);
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v1, v2, &protocol conformance descriptor for AuthenticationService);
  OUTLINED_FUNCTION_2_34();
  sub_227B0F844(v3, v4, MEMORY[0x277D0CE98]);
  return sub_227D49428();
}

uint64_t sub_227CAC31C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AuthenticationService(0);
  OUTLINED_FUNCTION_0_50();
  sub_227B0F844(v4, v5, &protocol conformance descriptor for AuthenticationService);
  OUTLINED_FUNCTION_2_34();
  sub_227B0F844(v6, v7, MEMORY[0x277D0CEA8]);
  result = sub_227D49438();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_227CAC3D4(uint64_t a1)
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of AuthenticationService.listLocalPlayers()()
{
  OUTLINED_FUNCTION_20();
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_227B4AD00;

  return v4();
}

uint64_t sub_227CAC5C8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_227CAC638()
{
  if (qword_280E7CE90 != -1)
  {
    OUTLINED_FUNCTION_16_11(&qword_280E7CE90);
  }
}

uint64_t *sub_227CAC684()
{
  if (qword_280E7CE90 != -1)
  {
    OUTLINED_FUNCTION_16_11(&qword_280E7CE90);
  }

  return &qword_280E7D408;
}

uint64_t sub_227CAC6CC(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_227CAC6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  if (qword_280E7CE90 != -1)
  {
    OUTLINED_FUNCTION_16_11(&qword_280E7CE90);
  }

  a5[12] = qword_280E7D408;
  *a5 = a1;
  a5[1] = a2;
  sub_227B132F0(a3, (a5 + 2));
  sub_227B132F0(a4, (a5 + 7));
}

uint64_t sub_227CAC794()
{
  type metadata accessor for GameKitDirectoryResources();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for GameData(0);
  result = sub_227D4CE28();
  *(v0 + 112) = result;
  qword_280E7D408 = v0;
  return result;
}

uint64_t sub_227CAC7FC()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for GameData(0);
  *(v0 + 112) = sub_227D4CE28();
  return v0;
}

uint64_t sub_227CAC860()
{
  type metadata accessor for GameData(0);

  return sub_227D4CE28();
}

uint64_t sub_227CAC8E0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_227CAC97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_45();
  v7 = *(v6 + 112);

  v8 = v7(v14);
  v10 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v10;
  sub_227CB6CF0(a3, a1, a2, isUniquelyReferenced_nonNull_native);
  *v10 = v13;
  return v8(v14, 0);
}

uint64_t sub_227CACA40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_45();
  v5 = (*(v4 + 112))(v7);
  sub_227CB6C14(a1, a2);

  return v5(v7, 0);
}

uint64_t sub_227CACAD0()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227CACAF8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227CACB30()
{
  swift_defaultActor_initialize();
  type metadata accessor for GameData(0);
  *(v0 + 112) = sub_227D4CE28();
  return v0;
}

uint64_t sub_227CACB7C()
{
  OUTLINED_FUNCTION_6();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_5(v4);
  v1[10] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v5);
  v1[11] = OUTLINED_FUNCTION_30();
  v6 = sub_227D492A8();
  v1[12] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_121();
  v1[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9ED0, &unk_227D62E58);
  OUTLINED_FUNCTION_5(v8);
  v1[16] = OUTLINED_FUNCTION_30();
  v9 = sub_227D48EF8();
  v1[17] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[18] = v10;
  v1[19] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v11);
  v1[20] = OUTLINED_FUNCTION_30();
  v12 = sub_227D49188();
  v1[21] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[22] = v13;
  v1[23] = OUTLINED_FUNCTION_121();
  v1[24] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227CACD84()
{
  OUTLINED_FUNCTION_6();
  v6 = (**(v0 + 72) + ***(v0 + 72));
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_227CACE78;
  v2 = *(v0 + 160);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return v6(v2, v3, v4);
}

uint64_t sub_227CACE78()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *(v4 + 208) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CACF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v16 = v14[20];
  v15 = v14[21];
  OUTLINED_FUNCTION_146_5(v16);
  if (v17)
  {
    v18 = &qword_27D7E6CD8;
    v19 = &qword_227D5C1C0;
    v20 = v16;
LABEL_8:
    sub_227B4DB00(v20, v18, v19);
    v42 = v14[7];
    v41 = v14[8];
    sub_227D4D668();

    OUTLINED_FUNCTION_3_7();
    v63 = v43;
    MEMORY[0x22AAA5DA0](v42, v41);
    MEMORY[0x22AAA5DA0](46, 0xE100000000000000);
    sub_227D49E08();
    OUTLINED_FUNCTION_1_32();
    v46 = sub_227B12A10(v44, v45, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v46);
    sub_227D49D98();

    swift_willThrow();
    OUTLINED_FUNCTION_48_7();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, 0xD000000000000022, v63, a11, a12, a13, a14);
  }

  v21 = v14[26];
  (*(v14[22] + 32))(v14[24], v16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9ED8, &qword_227D62E68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D4E520;
  v23 = *MEMORY[0x277CBE7B0];
  *(inited + 32) = *MEMORY[0x277CBE7B0];
  v24 = v23;
  sub_227CB6E2C(inited);
  sub_227D490D8();
  if (v21)
  {
    v26 = v14[16];
    v25 = v14[17];

    v27 = OUTLINED_FUNCTION_37_6();
    v28(v27);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
    v18 = &qword_27D7E9ED0;
    v19 = &unk_227D62E58;
    v20 = v26;
    goto LABEL_8;
  }

  v33 = v14[18];
  v32 = v14[19];
  v35 = v14[16];
  v34 = v14[17];
  v37 = v14[11];
  v36 = v14[12];

  __swift_storeEnumTagSinglePayload(v35, 0, 1, v34);
  (*(v33 + 32))(v32, v35, v34);
  sub_227D48EE8();
  if (__swift_getEnumTagSinglePayload(v37, 1, v36) == 1)
  {
    v38 = v14[11];
    (*(v14[18] + 8))(v14[19], v14[17]);
    v39 = OUTLINED_FUNCTION_57_0();
    v40(v39);
    v18 = &qword_27D7E6D08;
    v19 = &qword_227D59460;
    v20 = v38;
    goto LABEL_8;
  }

  v56 = v14[9];
  (*(v14[13] + 32))(v14[15], v14[11], v14[12]);
  v57 = *(v56 + 96);
  v14[27] = v57;
  v58 = (*v57 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v14[28] = *(*v57 + 96);
  v14[29] = v58;
  OUTLINED_FUNCTION_16_0();

  return MEMORY[0x2822009F8](v59, v60, v61);
}

uint64_t sub_227CAD2FC()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 240) = (*(v0 + 224))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CAD360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = sub_227BD8C70(v16[7], v16[8], v16[30]);

  if (v17)
  {

    OUTLINED_FUNCTION_79_7();
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v18, v19, v20);
  }

  else
  {
    v22 = v16[23];
    v23 = v16[21];
    v24 = v16[22];
    v25 = v16[14];
    v26 = v16[13];
    v41 = v16[24];
    v42 = v16[12];
    v27 = v16[10];
    v44 = v16[15];
    v46 = v16[9];
    type metadata accessor for GameData(0);
    sub_227D4CE58();
    sub_227D4A698();
    (*(v24 + 16))(v22, v41, v23);
    (*(v26 + 16))(v25, v44, v42);
    v28 = sub_227CB86B4(v27, v22, v25);
    v16[31] = v28;
    v43 = (*v28 + 656);
    v45 = *v43 + **v43;
    v29 = swift_task_alloc();
    v30 = OUTLINED_FUNCTION_117_4(v29);
    *v30 = v31;
    v30[1] = sub_227CAD580;
    OUTLINED_FUNCTION_23();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v43, v45, v46, a14, a15, a16);
  }
}

uint64_t sub_227CAD580()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  v3[33] = v0;

  if (v0)
  {
    v7 = sub_227CAE028;
    v8 = 0;
  }

  else
  {
    v8 = v3[27];
    v9 = (*v8 + 120) & 0xFFFFFFFFFFFFLL | 0xCDDB000000000000;
    v3[34] = *(*v8 + 120);
    v3[35] = v9;
    v7 = sub_227CAD6A0;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_227CAD6A0()
{
  OUTLINED_FUNCTION_6();
  (*(v0 + 272))(*(v0 + 56), *(v0 + 64), *(v0 + 248));
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CAD708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();

  v16 = OUTLINED_FUNCTION_8_14();
  v17(v16);
  v18 = OUTLINED_FUNCTION_141();
  v19(v18);
  v20 = OUTLINED_FUNCTION_76_7();
  v21(v20);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_23();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CAD7E4()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 288) = (*(v0 + 224))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CAD848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = sub_227BD8C70(v16[7], v16[8], v16[36]);
  v16[37] = v17;

  if (v17)
  {
    OUTLINED_FUNCTION_45();
    v18 += 78;
    v16[38] = *v18;
    v16[39] = v18 & 0xFFFFFFFFFFFFLL | 0x1470000000000000;
    OUTLINED_FUNCTION_85_7();
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v19, v20, v21);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_8_14();
    v24(v23);
    v25 = OUTLINED_FUNCTION_141();
    v26(v25);
    v27 = OUTLINED_FUNCTION_76_7();
    v28(v27);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_23();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_227CAD998()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 384) = (*(v0 + 304))(*(v0 + 192), *(v0 + 120)) & 1;
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CADA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  if (*(v16 + 384) == 1)
  {
    v17 = **(v16 + 296) + 616;
    *(v16 + 320) = *v17;
    *(v16 + 328) = v17 & 0xFFFFFFFFFFFFLL | 0xC4FC000000000000;
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v18, v19, v20);
  }

  else
  {

    v22 = OUTLINED_FUNCTION_8_14();
    v23(v22);
    v24 = OUTLINED_FUNCTION_141();
    v25(v24);
    v26 = OUTLINED_FUNCTION_76_7();
    v27(v26);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_23();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_227CADB50()
{
  OUTLINED_FUNCTION_6();
  (*(v0 + 320))(*(v0 + 192), *(v0 + 120));
  OUTLINED_FUNCTION_119_5();
  *(v0 + 336) = *(v1 + 128);
  *(v0 + 344) = (v1 + 128) & 0xFFFFFFFFFFFFLL | 0x8F59000000000000;
  OUTLINED_FUNCTION_89_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CADBD8()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 296);
  v2 = *(v0 + 72);
  (*(v0 + 336))(*(v0 + 56), *(v0 + 64));
  v5 = (*(*v1 + 656) + **(*v1 + 656));
  v3 = swift_task_alloc();
  *(v0 + 352) = v3;
  *v3 = v0;
  v3[1] = sub_227CADD24;

  return v5(v2 + 56);
}

uint64_t sub_227CADD24()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  v3[45] = v0;

  if (v0)
  {
    v7 = sub_227CAE10C;
    v8 = 0;
  }

  else
  {
    v8 = v3[27];
    v9 = (*v8 + 120) & 0xFFFFFFFFFFFFLL | 0xCDDB000000000000;
    v3[46] = *(*v8 + 120);
    v3[47] = v9;
    v7 = sub_227CADE44;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_227CADE44()
{
  OUTLINED_FUNCTION_6();
  (*(v0 + 368))(*(v0 + 56), *(v0 + 64), *(v0 + 296));
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CADEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();

  v16 = OUTLINED_FUNCTION_8_14();
  v17(v16);
  v18 = OUTLINED_FUNCTION_141();
  v19(v18);
  v20 = OUTLINED_FUNCTION_76_7();
  v21(v20);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_23();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CADF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_48_7();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_227CAE028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_113_6(*(v12 + 248));
  v13 = OUTLINED_FUNCTION_141();
  v14(v13);
  v15 = OUTLINED_FUNCTION_91_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_57_0();
  v18(v17);
  OUTLINED_FUNCTION_48_7();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_227CAE10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_113_6(*(v12 + 296));
  v13 = OUTLINED_FUNCTION_141();
  v14(v13);
  v15 = OUTLINED_FUNCTION_91_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_57_0();
  v18(v17);
  OUTLINED_FUNCTION_48_7();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_227CAE1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_227B2664C(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_227CAE2D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_227CB67B8(a3), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = sub_227D4A298();
    (*(*(v9 - 8) + 16))(a2, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_227D4A298();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_227CAE398()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DA0, &unk_227D4F9C0);
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_121();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = sub_227D4A4D8();
  v1[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49328();
  v1[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_30();
  v9 = type metadata accessor for GameServicesEnvironment(0);
  v1[16] = v9;
  OUTLINED_FUNCTION_5(v9);
  v1[17] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[18] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[19] = v11;
  v1[20] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D70, &unk_227D5E210);
  v1[21] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[22] = v13;
  v1[23] = OUTLINED_FUNCTION_30();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227CAE5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = *(v14[3] + 16);
  v16 = MEMORY[0x277D84F90];
  v14[25] = 0;
  v14[26] = v16;
  v14[24] = v15;
  if (v15)
  {
    v17 = OUTLINED_FUNCTION_106_5();
    v18(v17);
    sub_227D4A758();
    v14[27] = sub_227D4A6A8();
    v14[28] = v19;
    v29 = swift_task_alloc();
    v14[29] = v29;
    *v29 = v14;
    OUTLINED_FUNCTION_22_11(v29);
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_16_0();

    return sub_227CACB7C();
  }

  else
  {

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227CAE808()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *(v4 + 240) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CAE910()
{
  v0[31] = v0[30];
  v1 = *(v0[4] + 96);
  v0[32] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[33] = *(*v1 + 96);
  v0[34] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227CAE954, v1);
}

uint64_t sub_227CAE954()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_122_3();
  *(v0 + 280) = v1();
  v2 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227CAE9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  if (*(v14[35] + 16))
  {
    v15 = sub_227B2664C(v14[27], v14[28]);
    v17 = v16;

    if (v17)
    {
      v14[36] = *(*(v14[35] + 56) + 8 * v15);

      OUTLINED_FUNCTION_45();
      v18 += 296;
      v14[37] = *v18;
      v14[38] = v18 & 0xFFFFFFFFFFFFLL | 0x7BFE000000000000;
      OUTLINED_FUNCTION_85_7();
      OUTLINED_FUNCTION_16_0();

      return MEMORY[0x2822009F8](v19, v20, v21);
    }
  }

  else
  {
  }

  v23 = v14[10];

  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v14[26];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v59 = OUTLINED_FUNCTION_54();
    v28 = sub_227CB70A0(v59, v60, v61, v62, v63, v64, v65, v66);
  }

  v29 = v28[2];
  if (v29 >= v28[3] >> 1)
  {
    OUTLINED_FUNCTION_59_0();
    v28 = sub_227CB70A0(v67, v68, v69, v70, v71, v72, v73, v74);
  }

  v31 = v14[5];
  v30 = v14[6];
  (*(v14[19] + 8))(v14[20], v14[18]);
  v32 = OUTLINED_FUNCTION_91_0();
  v33(v32);
  v28[2] = v29 + 1;
  OUTLINED_FUNCTION_19();
  sub_227CB7030(v30, v28 + v34 + *(v31 + 72) * v29);
  v35 = v14[31];
  v36 = v14[24];
  v37 = v14[25] + 1;
  v14[25] = v37;
  v14[26] = v28;
  if (v37 == v36)
  {
    OUTLINED_FUNCTION_131_3();
    v77 = v14[6];

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_16_0();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, v77, a11, a12, a13, a14);
  }

  else
  {
    v46 = OUTLINED_FUNCTION_4_27();
    v47(v46);
    sub_227D4A758();
    if (v35)
    {
      v76 = v14[7];
      v78 = v14[6];
      (*(v14[22] + 8))(v14[23], v14[21]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_16_0();

      return v50(v49, v50, v51, v52, v53, v54, v55, v56, v76, v78, a11, a12, a13, a14);
    }

    else
    {
      v14[27] = sub_227D4A6A8();
      v14[28] = v48;
      v57 = swift_task_alloc();
      v14[29] = v57;
      *v57 = v14;
      OUTLINED_FUNCTION_22_11(v57);
      OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_16_0();

      return sub_227CACB7C();
    }
  }
}

uint64_t sub_227CAED94()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 312) = (*(v0 + 296))();
  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227CAEDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v21 = v20;
  if (*(v20[39] + 16) && (v22 = sub_227CB6728(v20[23]), (v23 & 1) != 0))
  {
    v149 = *(*(v20[39] + 56) + 8 * v22);
    sub_227D4CE58();
  }

  else
  {
    v149 = 0;
  }

  v25 = v20[16];
  v24 = *(v21 + 136);
  v26 = *(v21 + 112);
  v27 = *(v21 + 120);
  v28 = *(v21 + 104);
  v29 = *(v21 + 32);

  __swift_project_boxed_opaque_existential_1((v29 + 16), *(v29 + 40));
  v30 = OUTLINED_FUNCTION_173();
  v31(v30);
  (*(v26 + 16))(v27, v24 + *(v25 + 28), v28);
  sub_227B17A4C(v24, type metadata accessor for GameServicesEnvironment);
  v32 = v149;
  if (v149)
  {
    v33 = *(v149 + 16);
    v34._rawValue = MEMORY[0x277D84F90];
    if (v33)
    {
      *(v21 + 16) = MEMORY[0x277D84F90];
      sub_227D4CE58();
      sub_227B3CA88(0, v33, 0);
      v35 = *(v21 + 16);
      v38 = sub_227BB78B0(v149);
      v39 = 0;
      v40 = v149 + 64;
      a9 = v149 + 72;
      a10 = v33;
      a11 = v21;
      a12 = v149 + 64;
      if ((v38 & 0x8000000000000000) == 0)
      {
        while (v38 < 1 << *(v32 + 32))
        {
          v41 = v38 >> 6;
          if ((*(v40 + 8 * (v38 >> 6)) & (1 << v38)) == 0)
          {
            goto LABEL_60;
          }

          if (*(v32 + 36) != v36)
          {
            goto LABEL_61;
          }

          HIDWORD(a13) = v37;
          v150 = v36;
          a14 = v39;
          v42 = *(v32 + 48) + 16 * v38;
          v33 = *v42;
          v43 = *(v42 + 8);
          *(v21 + 16) = v35;
          v21 = v35[2];
          v44 = v35[3];
          sub_227D4CE58();
          if (v21 >= v44 >> 1)
          {
            sub_227B3CA88((v44 > 1), v21 + 1, 1);
            v35 = a11[2];
          }

          v35[2] = v21 + 1;
          a15 = v35;
          v45 = &v35[2 * v21];
          v45[4] = v33;
          v45[5] = v43;
          v46 = 1 << *(v32 + 32);
          if (v38 >= v46)
          {
            goto LABEL_62;
          }

          v40 = a12;
          v47 = *(a12 + 8 * v41);
          if ((v47 & (1 << v38)) == 0)
          {
            goto LABEL_63;
          }

          if (*(v32 + 36) != v150)
          {
            goto LABEL_64;
          }

          v48 = v47 & (-2 << (v38 & 0x3F));
          if (v48)
          {
            v46 = __clz(__rbit64(v48)) | v38 & 0x7FFFFFFFFFFFFFC0;
            v21 = a11;
          }

          else
          {
            v49 = v41 << 6;
            v50 = (a9 + 8 * v41);
            v51 = v41 + 1;
            v21 = a11;
            while (v51 < (v46 + 63) >> 6)
            {
              v53 = *v50++;
              v52 = v53;
              v49 += 64;
              ++v51;
              if (v53)
              {
                sub_227B3E218(v38, v150, BYTE4(a13) & 1);
                v46 = __clz(__rbit64(v52)) + v49;
                goto LABEL_23;
              }
            }

            sub_227B3E218(v38, v150, BYTE4(a13) & 1);
          }

LABEL_23:
          v39 = a14 + 1;
          v33 = a10;
          if ((a14 + 1) == a10)
          {

            v34._rawValue = v35;
            goto LABEL_28;
          }

          v37 = 0;
          v36 = *(v32 + 36);
          v38 = v46;
          if (v46 < 0)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }
  }

  else
  {
    v34._rawValue = MEMORY[0x277D84F90];
  }

LABEL_28:
  v54 = *(v21 + 112);
  v55 = *(v21 + 120);
  v56 = *(v21 + 104);
  object = Locale.getClosestLocale(from:)(v34).value._object;

  (*(v54 + 8))(v55, v56);
  if (!object)
  {

    goto LABEL_43;
  }

  if (!v32)
  {
    v75 = *(v21 + 80);

    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
LABEL_42:
    sub_227B4DB00(*(v21 + 72), &qword_27D7E6DA0, &unk_227D4F9C0);
LABEL_43:
    v33 = (v21 + 56);
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v21 + 208);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_44:
      v71 = v70[2];
      v84 = v70[3];
      v72 = v71 + 1;
      if (v71 >= v84 >> 1)
      {
        OUTLINED_FUNCTION_12(v84);
        OUTLINED_FUNCTION_59_0();
        v70 = sub_227CB70A0(v124, v125, v126, v127, v128, v129, v130, v131);
      }

      goto LABEL_47;
    }

LABEL_65:
    v116 = OUTLINED_FUNCTION_54();
    v70 = sub_227CB70A0(v116, v117, v118, v119, v120, v121, v122, v123);
    goto LABEL_44;
  }

  if (*(v32 + 16) && (v58 = OUTLINED_FUNCTION_147(), v60 = sub_227B2664C(v58, v59), (v61 & 1) != 0))
  {
    (*(*(v21 + 88) + 16))(*(v21 + 72), *(v32 + 56) + *(*(v21 + 88) + 72) * v60, *(v21 + 80));
    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  v64 = *(v21 + 72);
  v63 = *(v21 + 80);
  __swift_storeEnumTagSinglePayload(v64, v62, 1, v63);

  if (__swift_getEnumTagSinglePayload(v64, 1, v63) == 1)
  {
    goto LABEL_42;
  }

  v33 = (v21 + 64);
  v65 = *(v21 + 64);
  v66 = *(v21 + 80);
  (*(*(v21 + 88) + 32))(*(v21 + 96), *(v21 + 72), v66);
  v67 = OUTLINED_FUNCTION_147();
  v68(v67);
  __swift_storeEnumTagSinglePayload(v65, 0, 1, v66);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(v21 + 208);
  if ((v69 & 1) == 0)
  {
    v132 = OUTLINED_FUNCTION_54();
    v70 = sub_227CB70A0(v132, v133, v134, v135, v136, v137, v138, v139);
  }

  v71 = v70[2];
  v72 = v71 + 1;
  if (v71 >= v70[3] >> 1)
  {
    OUTLINED_FUNCTION_59_0();
    v70 = sub_227CB70A0(v140, v141, v142, v143, v144, v145, v146, v147);
  }

  v73 = OUTLINED_FUNCTION_91_0();
  v74(v73);
LABEL_47:
  v85 = *v33;
  v87 = *(v21 + 176);
  v86 = *(v21 + 184);
  v88 = *(v21 + 168);
  v89 = *(v21 + 40);
  (*(*(v21 + 152) + 8))(*(v21 + 160), *(v21 + 144));
  (*(v87 + 8))(v86, v88);
  v70[2] = v72;
  OUTLINED_FUNCTION_19();
  sub_227CB7030(v85, v70 + v90 + *(v89 + 72) * v71);
  v91 = *(v21 + 248);
  v92 = *(v21 + 192);
  v93 = *(v21 + 200) + 1;
  *(v21 + 200) = v93;
  *(v21 + 208) = v70;
  if (v93 == v92)
  {
    v151 = *(v21 + 48);

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_137();

    return v96(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14, a15, v151, a17, a18, a19, a20);
  }

  else
  {
    v103 = OUTLINED_FUNCTION_4_27();
    v104(v103);
    sub_227D4A758();
    if (v91)
    {
      v148 = *(v21 + 56);
      v152 = *(v21 + 48);
      (*(*(v21 + 176) + 8))(*(v21 + 184), *(v21 + 168));

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_137();

      return v107(v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, a12, a13, a14, v148, v152, a17, a18, a19, a20);
    }

    else
    {
      *(v21 + 216) = sub_227D4A6A8();
      *(v21 + 224) = v105;
      v114 = swift_task_alloc();
      *(v21 + 232) = v114;
      *v114 = v21;
      OUTLINED_FUNCTION_22_11(v114);
      OUTLINED_FUNCTION_137();

      return sub_227CACB7C();
    }
  }
}