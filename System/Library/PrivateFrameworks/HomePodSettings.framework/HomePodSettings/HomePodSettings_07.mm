uint64_t sub_254371218()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 264);
  if (*(v0 + 280) == 1)
  {
    v2 = *(v0 + 88);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    *v2 = v1;

    OUTLINED_FUNCTION_27();

    return v3();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2542F1228();
      v6 = v12;
    }

    v7 = *(v6 + 16);
    v8 = v7 + 1;
    if (v7 >= *(v6 + 24) >> 1)
    {
      sub_2542F1228();
      v6 = v13;
    }

    *(v6 + 16) = v8;
    *(v0 + 264) = v6;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 272) = v9;
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_21_3(v9);

    return MEMORY[0x2822004E8](v11);
  }
}

uint64_t sub_254371390()
{
  OUTLINED_FUNCTION_40();
  (*(v0[27] + 8))(v0[28], v0[26]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t (*sub_254371434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return sub_254372194;
}

uint64_t sub_2543714BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = v11;
  v8[33] = v12;
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  v8[34] = *(a8 - 8);
  v8[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254371584);
}

uint64_t sub_254371584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_89();
  v9 = v7[34];
  v8 = v7[35];
  v10 = v7[33];
  v11 = v7[31];
  v12 = v7[28];
  v13 = v7[29];
  type metadata accessor for CoordinationObservationUpdate();
  (*(v9 + 16))(v8, v12, v11);
  v14 = sub_254396EFC(v8, v11, v10);
  v7[36] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF380, &unk_2543A6940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2543A6820;
  *(inited + 32) = v13;
  v16 = sub_2542EEECC(inited);
  v17 = v7[29];
  if (v16)
  {
    v18 = v17;
    sub_254371BCC(inited);
  }

  else
  {
    swift_setDeallocating();
    v19 = v17;
    sub_2542F14A8();
  }

  v20 = v7[27];
  sub_254371D74();
  sub_254371DB8();
  v21 = sub_2543A2DA8();
  v7[37] = v21;

  v7[2] = v7;
  v7[7] = v7 + 23;
  v7[3] = sub_25437178C;
  v22 = swift_continuation_init();
  v7[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF398, &unk_2543B0540);
  v7[10] = MEMORY[0x277D85DD0];
  v7[11] = 1107296256;
  v7[12] = sub_254372800;
  v7[13] = &block_descriptor_18;
  v7[14] = v22;
  [v20 sendRequest:v14 members:v21 withCompletionHandler:v7 + 10];
  OUTLINED_FUNCTION_52_2();

  return MEMORY[0x282200938](v23);
}

uint64_t sub_25437178C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_115();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_254371888()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);

  v3 = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2128, &unk_2543B0588);
  if (swift_dynamicCastClass())
  {
    v4 = *(v0 + 256);
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    sub_2543A3298();
    *(v0 + 200) = 0;
    *(v0 + 208) = 0xE000000000000000;
    MEMORY[0x259C093D0](0xD000000000000024, 0x80000002543B9C70);
    sub_2543A3358();
    v7 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x259C093D0](v7, 0xE800000000000000);
    v8 = [v6 description];
    v9 = sub_2543A2878();
    v11 = v10;

    MEMORY[0x259C093D0](v9, v11);

    static Logging.ulog(_:extended:)(*(v0 + 200), *(v0 + 208), 0, v5, *(*(*(v4 + 16) + 16) + 8));
  }

  else
  {
    swift_getObjectType();
    v13 = sub_2543A37B8();
    v15 = v14;
    v16 = sub_254357FB0();
    OUTLINED_FUNCTION_100(&type metadata for TransportMessagingError, v16);
    *v17 = v13;
    *(v17 + 8) = v15;
    *(v17 + 16) = 0xD00000000000001FLL;
    *(v17 + 24) = 0x80000002543BA500;
    *(v17 + 32) = 1;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();

  return v12();
}

uint64_t sub_254371AA4()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  swift_willThrow();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t *sub_254371B20(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    return sub_25436B6A0(v8, a4);
  }

  if (a2)
  {
    if (a3)
    {
      return sub_25436B70C(v8, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_254371BA4(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_254371BCC(unint64_t a1)
{
  if (sub_2542EEECC(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF560, &qword_2543A6D00);
    v2 = sub_2543A3268();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v18 = sub_2542EEECC(a1);
  if (v18)
  {
    v3 = 0;
    v4 = v2 + 56;
    v17 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_254371BA4(v3, v17 == 0, a1);
      result = v17 ? MEMORY[0x259C09DA0](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_2543A30A8();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_254371D74();
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_2543A30B8();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_254371D74()
{
  result = qword_27F5DF388;
  if (!qword_27F5DF388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5DF388);
  }

  return result;
}

unint64_t sub_254371DB8()
{
  result = qword_27F5DF390;
  if (!qword_27F5DF390)
  {
    sub_254371D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF390);
  }

  return result;
}

uint64_t sub_254371E3C()
{
  OUTLINED_FUNCTION_69_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2542DB160;
  OUTLINED_FUNCTION_77_0();

  return sub_25437092C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_254371F1C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 48))();
  *a1 = result;
  return result;
}

uint64_t sub_254371F5C()
{
  OUTLINED_FUNCTION_0_2();
  v3 = (*(v2 + 64) + ((*(v1 + 80) + 72) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = OUTLINED_FUNCTION_67_2();
  v5(v4);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254372024(uint64_t a1)
{
  v3 = v1[5];
  v15 = v1[4];
  OUTLINED_FUNCTION_0_2();
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[8];
  v10 = *(v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v2 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_2542D32CC;

  return sub_2543714BC(a1, v7, v8, v9, v1 + v5, v10, v15, v3);
}

uint64_t sub_25437215C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2543721D0()
{
  MEMORY[0x259C0AE60](v0 + 16);
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_254372204()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_254372294()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2543722E0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254372348()
{
  sub_2543A1F88();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_45_2();
  swift_unknownObjectRelease();

  v3 = OUTLINED_FUNCTION_67_2();
  v4(v3);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254372428(uint64_t a1)
{
  v2 = sub_2543A1F88();
  OUTLINED_FUNCTION_8(v2);
  OUTLINED_FUNCTION_40_4();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2542D32CC;
  OUTLINED_FUNCTION_69_4();

  return sub_25436FFC4(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_254372568()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2543725A4()
{
  sub_2543A1F88();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_45_2();
  swift_unknownObjectRelease();

  v3 = OUTLINED_FUNCTION_67_2();
  v4(v3);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2543726A0()
{
  OUTLINED_FUNCTION_94();
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_8(v1);
  OUTLINED_FUNCTION_40_4();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_2542DB160;
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_48();

  return sub_25436F350(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_2_33(uint64_t a1)
{
  *(v2 + 56) = a1;
  v3 = *(v1 + 112);
  v4 = *(v1 + 96);
  *(v2 + 16) = *(v1 + 80);
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_4_19@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  v3[1] = a2;
  v3[2] = a3;
  v3[3].n128_u64[0] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_10_16(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = result;
  v8[4] = a2;
  v8[11] = *(a6 + 16);
  return result;
}

void OUTLINED_FUNCTION_19_7(uint64_t a1, uint64_t a2)
{
  *a2 = 2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
}

uint64_t OUTLINED_FUNCTION_27_3()
{
  *(v0 + 16) = *(v0 + 96);

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_29_5()
{
  *(v0 + 16) = *(v0 + 80);

  return sub_2543A3298();
}

uint64_t OUTLINED_FUNCTION_31_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = a8;
  v9[12] = v8;
  v9[9] = a6;
  v9[10] = a7;
  v9[7] = a4;
  v9[8] = a5;
  v9[5] = a2;
  v9[6] = a3;
  v9[4] = result;
  v9[13] = *(a7 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_5(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = *(v1 + 8);

  return sub_2543A2B58();
}

void OUTLINED_FUNCTION_50_2()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_51_4(uint64_t a1)
{
  *(v1 + 96) = a1;

  return sub_2543A30C8();
}

void OUTLINED_FUNCTION_57_2()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_65_3()
{

  return sub_2542DF684();
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return sub_2542DF684();
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = *(v1 + 8);

  return sub_2543A2B58();
}

uint64_t OUTLINED_FUNCTION_76_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_77_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_78_2()
{
}

void OUTLINED_FUNCTION_79_2()
{

  JUMPOUT(0x259C093D0);
}

uint64_t OUTLINED_FUNCTION_80_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_88_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_89_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_90_2(uint64_t a1)
{
  *(v1 + 112) = a1;

  return sub_2543A30C8();
}

uint64_t OUTLINED_FUNCTION_91_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_92_2()
{
}

void OUTLINED_FUNCTION_93_2(Swift::String _, Swift::Bool extended)
{

  Logging.ulog(_:extended:)(_, extended);
}

uint64_t OUTLINED_FUNCTION_94_3()
{
}

uint64_t sub_254372F70(uint64_t a1)
{
  v2 = sub_254373100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254372FAC(uint64_t a1)
{
  v2 = sub_254373100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerOperationResponse.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2130, &qword_2543B0670);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_13_13();
  v1 = sub_254373100();
  OUTLINED_FUNCTION_14_12(&type metadata for TimerOperationResponse.CodingKeys, v2, v1);
  type metadata accessor for HPTimer(0);
  OUTLINED_FUNCTION_0_38();
  sub_254373344(v3, v4, &protocol conformance descriptor for HPTimer);
  OUTLINED_FUNCTION_11_14();
  v5 = OUTLINED_FUNCTION_16_10();
  return v6(v5);
}

unint64_t sub_254373100()
{
  result = qword_27F5E2138;
  if (!qword_27F5E2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2138);
  }

  return result;
}

uint64_t TimerOperationResponse.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_17_8(a1);
  type metadata accessor for HPTimer(v3);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2140, &qword_2543B0678);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_13_9();
  v7 = type metadata accessor for TimerOperationResponse(v6);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_9();
  v10 = v9 - v8;
  v11 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  v12 = sub_254373100();
  OUTLINED_FUNCTION_15_9(&type metadata for TimerOperationResponse.CodingKeys, v13, v12);
  if (!v2)
  {
    OUTLINED_FUNCTION_0_38();
    v16 = sub_254373344(v14, v15, &protocol conformance descriptor for HPTimer);
    OUTLINED_FUNCTION_9_13(v16, v17);
    v18 = OUTLINED_FUNCTION_12_18();
    v19(v18);
    OUTLINED_FUNCTION_1_34();
    sub_25437338C(v11, v10, v20);
    sub_25437338C(v10, v22, type metadata accessor for TimerOperationResponse);
  }

  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t sub_254373344(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25437338C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_26();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t TimerOperationRequest.Payload.timer.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TimerOperationRequest.Payload(0);
  OUTLINED_FUNCTION_7_15();
  return sub_254373C18(v1 + v3, a1, v4);
}

uint64_t TimerOperationRequest.Payload.init(operation:timer:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  type metadata accessor for TimerOperationRequest.Payload(0);
  OUTLINED_FUNCTION_1_34();
  return sub_25437338C(a2, &a3[v5], v6);
}

uint64_t sub_2543734D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

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

uint64_t sub_25437359C(char a1)
{
  if (a1)
  {
    return 0x72656D6974;
  }

  else
  {
    return 0x6F6974617265706FLL;
  }
}

uint64_t sub_2543735DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2543734D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254373604(uint64_t a1)
{
  v2 = sub_254373810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254373640(uint64_t a1)
{
  v2 = sub_254373810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerOperationRequest.Payload.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2148, &qword_2543B0680);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-v6];
  OUTLINED_FUNCTION_13_13();
  v8 = sub_254373810();
  OUTLINED_FUNCTION_14_12(&type metadata for TimerOperationRequest.Payload.CodingKeys, v9, v8);
  v13[15] = *v0;
  v13[14] = 0;
  sub_254373864();
  sub_2543A3578();
  if (!v1)
  {
    type metadata accessor for TimerOperationRequest.Payload(0);
    v13[13] = 1;
    type metadata accessor for HPTimer(0);
    OUTLINED_FUNCTION_0_38();
    sub_254373344(v10, v11, &protocol conformance descriptor for HPTimer);
    sub_2543A3578();
  }

  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_254373810()
{
  result = qword_27F5E2150;
  if (!qword_27F5E2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2150);
  }

  return result;
}

unint64_t sub_254373864()
{
  result = qword_27F5E2158;
  if (!qword_27F5E2158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2158);
  }

  return result;
}

uint64_t TimerOperationRequest.Payload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  type metadata accessor for HPTimer(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2160, &qword_2543B0688);
  OUTLINED_FUNCTION_3();
  v31 = v9;
  v32 = v8;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  type metadata accessor for TimerOperationRequest.Payload(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9();
  v16 = (v15 - v14);
  v17 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v17);
  sub_254373810();
  sub_2543A3768();
  if (!v2)
  {
    v18 = v16;
    v19 = v31;
    v35 = 0;
    sub_254373B44();
    v20 = v32;
    sub_2543A34D8();
    v29 = v18;
    *v18 = v36;
    v34 = 1;
    OUTLINED_FUNCTION_0_38();
    sub_254373344(v21, v22, &protocol conformance descriptor for HPTimer);
    sub_2543A34D8();
    (*(v19 + 8))(v12, v20);
    OUTLINED_FUNCTION_1_34();
    v23 = v29;
    sub_25437338C(v7, &v29[v24], v25);
    OUTLINED_FUNCTION_2_34();
    sub_25437338C(v23, v30, v26);
  }

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

unint64_t sub_254373B44()
{
  result = qword_27F5E2168;
  if (!qword_27F5E2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2168);
  }

  return result;
}

uint64_t sub_254373C18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_26();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_254373CA4(uint64_t a1)
{
  v2 = sub_254373E34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254373CE0(uint64_t a1)
{
  v2 = sub_254373E34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimerOperationRequest.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2170, &qword_2543B06A8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_13_13();
  v1 = sub_254373E34();
  OUTLINED_FUNCTION_14_12(&type metadata for TimerOperationRequest.CodingKeys, v2, v1);
  type metadata accessor for TimerOperationRequest.Payload(0);
  OUTLINED_FUNCTION_6_25();
  sub_254373344(v3, v4, &protocol conformance descriptor for TimerOperationRequest.Payload);
  OUTLINED_FUNCTION_11_14();
  v5 = OUTLINED_FUNCTION_16_10();
  return v6(v5);
}

unint64_t sub_254373E34()
{
  result = qword_27F5E2178;
  if (!qword_27F5E2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2178);
  }

  return result;
}

uint64_t TimerOperationRequest.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_17_8(a1);
  type metadata accessor for TimerOperationRequest.Payload(v3);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2188, &qword_2543B06B0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_13_9();
  v7 = type metadata accessor for TimerOperationRequest(v6);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_9();
  v10 = v9 - v8;
  v11 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  v12 = sub_254373E34();
  OUTLINED_FUNCTION_15_9(&type metadata for TimerOperationRequest.CodingKeys, v13, v12);
  if (!v2)
  {
    OUTLINED_FUNCTION_6_25();
    v16 = sub_254373344(v14, v15, &protocol conformance descriptor for TimerOperationRequest.Payload);
    OUTLINED_FUNCTION_9_13(v16, v17);
    v18 = OUTLINED_FUNCTION_12_18();
    v19(v18);
    OUTLINED_FUNCTION_2_34();
    sub_25437338C(v11, v10, v20);
    sub_25437338C(v10, v22, type metadata accessor for TimerOperationRequest);
  }

  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t sub_254374078(uint64_t a1)
{
  *(a1 + 8) = sub_254373344(&qword_27F5E2198, type metadata accessor for TimerOperationResponse, &protocol conformance descriptor for TimerOperationResponse);
  result = sub_254373344(&qword_27F5E21A0, type metadata accessor for TimerOperationResponse, &protocol conformance descriptor for TimerOperationResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2543740FC(uint64_t a1)
{
  result = sub_254373344(&qword_27F5E21A8, type metadata accessor for TimerOperationResponse, &protocol conformance descriptor for TimerOperationResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254374154(uint64_t a1)
{
  result = sub_254373344(&qword_27F5E21B0, type metadata accessor for TimerOperationRequest, &protocol conformance descriptor for TimerOperationRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254374214(uint64_t a1)
{
  result = sub_254373344(&qword_27F5E21C0, type metadata accessor for TimerOperationRequest, &protocol conformance descriptor for TimerOperationRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254374270(uint64_t a1)
{
  *(a1 + 8) = sub_254373344(&qword_27F5E21C8, type metadata accessor for TimerOperationRequest, &protocol conformance descriptor for TimerOperationRequest);
  result = sub_254373344(&qword_27F5E21D0, type metadata accessor for TimerOperationRequest, &protocol conformance descriptor for TimerOperationRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254374338()
{
  v2 = OUTLINED_FUNCTION_8_17();
  v3 = type metadata accessor for HPTimer(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_25437438C()
{
  v0 = OUTLINED_FUNCTION_8_17();
  type metadata accessor for HPTimer(v0);
  v1 = OUTLINED_FUNCTION_18_8();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_2543743F0()
{
  v2 = OUTLINED_FUNCTION_8_17();
  v3 = type metadata accessor for TimerOperationRequest.Payload(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v3);
}

uint64_t sub_254374444()
{
  v0 = OUTLINED_FUNCTION_8_17();
  type metadata accessor for TimerOperationRequest.Payload(v0);
  v1 = OUTLINED_FUNCTION_18_8();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_254374494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254374518(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for HPTimer(0);
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_2543745AC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = type metadata accessor for HPTimer(0);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_254374628(uint64_t a1)
{
  result = type metadata accessor for HPTimer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimerOperationRequest.Payload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254374784);
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

_BYTE *sub_2543747BC(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x254374858);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254374894()
{
  result = qword_27F5E2208;
  if (!qword_27F5E2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2208);
  }

  return result;
}

unint64_t sub_2543748EC()
{
  result = qword_27F5E2210;
  if (!qword_27F5E2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2210);
  }

  return result;
}

unint64_t sub_254374944()
{
  result = qword_27F5E2218;
  if (!qword_27F5E2218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2218);
  }

  return result;
}

unint64_t sub_25437499C()
{
  result = qword_27F5E2220;
  if (!qword_27F5E2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2220);
  }

  return result;
}

unint64_t sub_2543749F4()
{
  result = qword_27F5E2228;
  if (!qword_27F5E2228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2228);
  }

  return result;
}

unint64_t sub_254374A4C()
{
  result = qword_27F5E2230;
  if (!qword_27F5E2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2230);
  }

  return result;
}

unint64_t sub_254374AA4()
{
  result = qword_27F5E2238;
  if (!qword_27F5E2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2238);
  }

  return result;
}

unint64_t sub_254374AFC()
{
  result = qword_27F5E2240;
  if (!qword_27F5E2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2240);
  }

  return result;
}

unint64_t sub_254374B54()
{
  result = qword_27F5E2248[0];
  if (!qword_27F5E2248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E2248);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_13(uint64_t a1, uint64_t a2)
{

  return sub_2543A34D8();
}

uint64_t OUTLINED_FUNCTION_11_14()
{

  return sub_2543A3578();
}

uint64_t OUTLINED_FUNCTION_14_12(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2543A3778();
}

uint64_t OUTLINED_FUNCTION_15_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2543A3768();
}

uint64_t sub_254374D48()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_35(v1);

  return v4(v3);
}

uint64_t sub_254374E48()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_35(v1);

  return v4(v3);
}

uint64_t sub_254374F48()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_254375048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_39(v7);
  *v8 = v9;
  v8[1] = sub_254375168;

  return v11(a1, a2, a3);
}

uint64_t sub_254375168(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

uint64_t sub_25437525C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_42();
  v19 = (v14 + *v14);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_39(v15);
  *v16 = v17;
  v16[1] = sub_254374F48;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_25437541C()
{
  v0 = swift_allocObject();
  sub_254375824();
  return v0;
}

uint64_t sub_254375454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_2543A2848())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for TargetedObserverStore.Tuple(0, v12);
    v10 = sub_2543A2848();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_254375538()
{
  sub_2543A36E8();
  sub_2543754E8(v1);
  return sub_2543A3728();
}

uint64_t sub_254375580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for TargetedObserverStore.Tuple(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t sub_254375650(uint64_t a1)
{
  sub_2543A36E8();
  sub_2543754E8(v2);
  return sub_2543A3728();
}

uint64_t sub_2543756A4()
{
  OUTLINED_FUNCTION_97(v0 + 112, v16);
  v15[5] = *(v0 + 112);
  OUTLINED_FUNCTION_8_18();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_8_18();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_8_18();
  v6 = *(v5 + 96);
  OUTLINED_FUNCTION_8_18();
  v8 = *(v7 + 104);
  KeyPath = swift_getKeyPath();
  sub_2543A2768();
  v15[0] = v2;
  v15[1] = v4;
  v15[2] = v6;
  v15[3] = v8;
  type metadata accessor for TargetedObserverStore.Tuple(255, v15);
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  v10 = sub_2543A2EB8();
  OUTLINED_FUNCTION_0_34();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_254369100(sub_25433D320, KeyPath, v10, v2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  v15[0] = v13;
  OUTLINED_FUNCTION_45_0();
  sub_2543A2B38();
  OUTLINED_FUNCTION_2_35();
  return sub_2543A2EC8();
}

uint64_t *sub_254375824()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = *(v1 + 96);
  v4[0] = *(v1 + 80);
  v4[1] = v2;
  type metadata accessor for TargetedObserverStore.Tuple(0, v4);
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  v0[14] = sub_2543A26F8();
  return v0;
}

uint64_t sub_2543758B0(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_97((v1 + 14), v23);
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  v6 = v2[13];
  sub_2543A2768();
  v22[0] = v3;
  v22[1] = v4;
  v22[2] = v5;
  v22[3] = v6;
  type metadata accessor for TargetedObserverStore.Tuple(0, v22);
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  v22[0] = sub_2543A2E48();
  KeyPath = swift_getKeyPath();
  v8 = sub_2543A2EB8();
  OUTLINED_FUNCTION_0_34();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_254369100(sub_254376C48, KeyPath, v8, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  v22[0] = v11;
  OUTLINED_FUNCTION_45_0();
  sub_2543A2B38();
  v12 = OUTLINED_FUNCTION_2_35();
  return OUTLINED_FUNCTION_4_20(v12, v13, v14, v15, v16, v17, v18, v19, v3, v4, v5, v6, v21);
}

uint64_t sub_254375A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[3] = a6;
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  type metadata accessor for TargetedObserverStore.Tuple(0, v7);
  return sub_2543A2848() & 1;
}

uint64_t sub_254375AF0(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_97((v1 + 14), v24);
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  v22 = v2[13];
  sub_2543A2768();
  v23[0] = v3;
  v23[1] = v4;
  v23[2] = v5;
  v23[3] = v22;
  type metadata accessor for TargetedObserverStore.Tuple(0, v23);
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  v23[0] = sub_2543A2E48();
  v20 = v3;
  KeyPath = swift_getKeyPath();
  v7 = sub_2543A2EB8();
  OUTLINED_FUNCTION_0_34();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_254369100(sub_254376C48, KeyPath, v7, v4, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v23[0] = v10;
  OUTLINED_FUNCTION_45_0();
  sub_2543A2B38();
  v11 = OUTLINED_FUNCTION_2_35();
  return OUTLINED_FUNCTION_4_20(v11, v12, v13, v14, v15, v16, v17, v18, v20, v4, v5, v22, v21);
}

uint64_t sub_254375CA8(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  OUTLINED_FUNCTION_56_0();
  v4 = *(v3 + 88);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v28[-v6];
  OUTLINED_FUNCTION_56_0();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v28[-v12];
  v30 = *(v14 + 96);
  *&v15 = v8;
  *(&v15 + 1) = v4;
  v36[0] = v15;
  v36[1] = v30;
  v16 = type metadata accessor for TargetedObserverStore.Tuple(0, v36);
  OUTLINED_FUNCTION_0_2();
  v32 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v28[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v23 = &v28[-v22];
  OUTLINED_FUNCTION_97(v2 + 112, v36);
  sub_2543A2768();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  v29 = sub_2543A2E78();

  (*(v10 + 16))(v13, v34, v8);
  v24 = v31;
  (*(v33 + 16))(v31, v35, v4);
  sub_254375580(v13, v24, v8, v4, v30, *(&v30 + 1), v20);
  swift_beginAccess();
  sub_2543A2EB8();
  v25 = sub_2543A2E58();
  (*(v32 + 8))(v23, v16);
  swift_endAccess();
  if (v25)
  {
    v26 = 256;
  }

  else
  {
    v26 = 0;
  }

  return v26 | v25 & 1u & v29;
}

uint64_t sub_254375FD0(uint64_t a1, char *a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v53 = a1;
  v48 = v3 + 112;
  OUTLINED_FUNCTION_56_0();
  v5 = *(v4 + 88);
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  OUTLINED_FUNCTION_56_0();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v46 = *(v16 + 96);
  *&v17 = v10;
  *(&v17 + 1) = v5;
  v54[0] = v17;
  v54[1] = v46;
  v18 = type metadata accessor for TargetedObserverStore.Tuple(0, v54);
  OUTLINED_FUNCTION_0_2();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  sub_2543A30C8();
  OUTLINED_FUNCTION_0_2();
  v51 = v25;
  v52 = v24;
  MEMORY[0x28223BE20](v24);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v44 - v30;
  v32 = *(v12 + 16);
  v33 = v49;
  v49 = (v12 + 16);
  v45 = v32;
  (v32)(v15, v33, v10, v29);
  (*(v47 + 16))(v8, v50, v5);
  v34 = v15;
  v35 = v10;
  sub_254375580(v34, v8, v10, v5, v46, *(&v46 + 1), v23);
  swift_beginAccess();
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  sub_2543A2EB8();
  sub_2543A2E68();
  v36 = *(v20 + 8);
  v36(v23, v18);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v31, 1, v18) == 1)
  {
    v37 = 0;
  }

  else
  {
    sub_2543A2768();
    v37 = sub_2543A2E78();
  }

  v39 = v51;
  v38 = v52;
  (*(v51 + 32))(v27, v31, v52);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v18);
  v41 = v53;
  if (EnumTagSinglePayload == 1)
  {
    (*(v39 + 8))(v27, v38);
    v42 = 1;
  }

  else
  {
    v45(v53, v27, v35);
    v36(v27, v18);
    v42 = 0;
  }

  __swift_storeEnumTagSinglePayload(v41, v42, 1, v35);
  return v37 & 1;
}

BOOL sub_254376410(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  OUTLINED_FUNCTION_97((v2 + 14), v12);
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[12];
  v10 = v3[13];
  sub_2543A2768();
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v10;
  type metadata accessor for TargetedObserverStore.Tuple(0, v11);
  OUTLINED_FUNCTION_0_39();
  swift_getWitnessTable();
  v7 = sub_2543A2E48();
  swift_beginAccess();
  OUTLINED_FUNCTION_45_0();
  sub_2543A2EB8();
  sub_2543A2EA8();
  swift_endAccess();
  sub_2543A2768();
  LOBYTE(v2) = sub_2543A2E78();

  if (v2)
  {
    v11[0] = v7;
    OUTLINED_FUNCTION_0_34();
    swift_getWitnessTable();
    v8 = sub_254372EE4();
  }

  else
  {
    v8 = 0;
  }

  sub_2543A2E28();

  return v8;
}

uint64_t sub_2543765FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_254376688(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_254376860(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a2)
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        return;
      case 2:
        *&v6[v15] = v21;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x254376AECLL);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v9 < v11)
        {
          a1 = (&a1[v14] & ~v13);
          v9 = v11;
          v7 = v8;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
      }

      return;
  }
}

uint64_t sub_254376B88(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_35()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_4_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{

  return sub_2543A2EC8();
}

uint64_t static HPTimer.Status.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  v7 = OUTLINED_FUNCTION_110(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_10();
  v62 = v8 - v9;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v10);
  v61 = &v60 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF640, &qword_2543A6DF0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_10();
  v65 = v13 - v14;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v15);
  v64 = &v60 - v16;
  sub_2543A1F38();
  OUTLINED_FUNCTION_3();
  v67 = v18;
  v68 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_10();
  v63 = v19 - v20;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  type metadata accessor for HPTimer.Status(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_13_14();
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x28223BE20](v29);
  v31 = &v60 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2350, &qword_2543B0E00);
  OUTLINED_FUNCTION_110(v32);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_32_1();
  v35 = *(v34 + 56);
  sub_25437AD60(v36, a1, v2);
  sub_25437AD60(v37, v69, v2 + v35);
  OUTLINED_FUNCTION_46();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v47, v2, v4);
      if (OUTLINED_FUNCTION_29_6() != 1)
      {
        goto LABEL_20;
      }

      v48 = *v4 == *(v2 + v35);
      goto LABEL_23;
    case 2u:
      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v39, v2, v27);
      if (OUTLINED_FUNCTION_29_6() != 2)
      {
        v49 = v27;
        goto LABEL_19;
      }

      v40 = *(v66 + 48);
      v41 = v64;
      sub_2542DE374(v27, v64);
      sub_2542DE374(v2 + v35, v41 + v40);
      v42 = v68;
      OUTLINED_FUNCTION_36_5(v41, 1);
      if (v43)
      {
        goto LABEL_12;
      }

      v44 = v41;
      v45 = v61;
      goto LABEL_24;
    case 3u:
      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v46, v2, v3);
      if (OUTLINED_FUNCTION_29_6() == 3)
      {
        v41 = v65;
        v40 = *(v66 + 48);
        sub_2542DE374(v3, v65);
        sub_2542DE374(v2 + v35, v41 + v40);
        v42 = v68;
        OUTLINED_FUNCTION_36_5(v41, 1);
        if (v43)
        {
LABEL_12:
          OUTLINED_FUNCTION_36_5(v41 + v40, 1);
          if (v43)
          {
            sub_2542DE3E4(v41, &qword_27F5DF638, &unk_2543B0DF0);
LABEL_30:
            OUTLINED_FUNCTION_2_36();
            sub_25437ADBC();
            v48 = 1;
            return v48 & 1;
          }
        }

        else
        {
          v44 = v41;
          v45 = v62;
LABEL_24:
          sub_2542DE304(v44, v45);
          OUTLINED_FUNCTION_36_5(v41 + v40, 1);
          if (!v43)
          {
            v53 = v67;
            v54 = v63;
            (*(v67 + 32))(v63, v41 + v40, v42);
            OUTLINED_FUNCTION_1_36();
            sub_25437812C(v55, v56, MEMORY[0x277CC9598]);
            v57 = sub_2543A2848();
            v58 = *(v53 + 8);
            v58(v54, v42);
            v58(v45, v42);
            sub_2542DE3E4(v41, &qword_27F5DF638, &unk_2543B0DF0);
            if (v57)
            {
              goto LABEL_30;
            }

LABEL_28:
            OUTLINED_FUNCTION_2_36();
            sub_25437ADBC();
            goto LABEL_21;
          }

          (*(v67 + 8))(v45, v42);
        }

        sub_2542DE3E4(v41, &qword_27F5DF640, &qword_2543A6DF0);
        goto LABEL_28;
      }

      v49 = v3;
LABEL_19:
      sub_2542DE3E4(v49, &qword_27F5DF638, &unk_2543B0DF0);
LABEL_20:
      sub_2542DE3E4(v2, &qword_27F5E2350, &qword_2543B0E00);
LABEL_21:
      v48 = 0;
      return v48 & 1;
    case 4u:
      if (OUTLINED_FUNCTION_29_6() == 4)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    default:
      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v38, v2, v31);
      if (OUTLINED_FUNCTION_29_6())
      {
        (*(v67 + 8))(v31, v68);
        goto LABEL_20;
      }

      v51 = v67;
      v50 = v68;
      (*(v67 + 32))(v23, v2 + v35, v68);
      OUTLINED_FUNCTION_18_9();
      v48 = sub_2543A1F28();
      v52 = *(v51 + 8);
      v52(v23, v50);
      v52(v31, v50);
LABEL_23:
      OUTLINED_FUNCTION_2_36();
      sub_25437ADBC();
      return v48 & 1;
  }
}

uint64_t sub_25437730C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646573756170 && a2 == 0xE600000000000000;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E69726966 && a2 == 0xE600000000000000;
      if (v7 || (sub_2543A3608() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657373696D736964 && a2 == 0xE900000000000064;
        if (v8 || (sub_2543A3608() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2543A3608();

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

uint64_t sub_2543774B4(char a1)
{
  result = 0x676E696E6E7572;
  switch(a1)
  {
    case 1:
      result = 0x646573756170;
      break;
    case 2:
      result = 0x676E69726966;
      break;
    case 3:
      result = 0x657373696D736964;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254377588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25437730C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2543775B0(uint64_t a1)
{
  v2 = sub_254378030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2543775EC(uint64_t a1)
{
  v2 = sub_254378030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25437762C(uint64_t a1)
{
  v2 = sub_2543780D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254377668(uint64_t a1)
{
  v2 = sub_2543780D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2543776A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542FA5E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2543776D4(uint64_t a1)
{
  v2 = sub_254378174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254377710(uint64_t a1)
{
  v2 = sub_254378174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25437774C(uint64_t a1)
{
  v2 = sub_2543781C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254377788(uint64_t a1)
{
  v2 = sub_2543781C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2543777C4(uint64_t a1)
{
  v2 = sub_25437821C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254377800(uint64_t a1)
{
  v2 = sub_25437821C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25437783C(uint64_t a1)
{
  v2 = sub_254378084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254377878(uint64_t a1)
{
  v2 = sub_254378084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPTimer.Status.encode(to:)(void *a1)
{
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2358, &qword_2543B0E08);
  OUTLINED_FUNCTION_3();
  v84 = v3;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_0();
  v82 = v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2360, &qword_2543B0E10);
  OUTLINED_FUNCTION_3();
  v85 = v6;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_0();
  v83 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2368, &qword_2543B0E18);
  OUTLINED_FUNCTION_3();
  v80 = v10;
  v81 = v9;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_0();
  v79 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  v14 = OUTLINED_FUNCTION_110(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_10();
  v78 = v15 - v16;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v17);
  v77 = &v71 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2370, &qword_2543B0E20);
  OUTLINED_FUNCTION_3();
  v73 = v19;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2378, &qword_2543B0E28);
  OUTLINED_FUNCTION_3();
  v74 = v23;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v24);
  v26 = &v71 - v25;
  v88 = sub_2543A1F38();
  OUTLINED_FUNCTION_3();
  v72 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9();
  v31 = v30 - v29;
  v32 = type metadata accessor for HPTimer.Status(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_32_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2380, &qword_2543B0E30);
  OUTLINED_FUNCTION_3();
  v90 = v35;
  v91 = v34;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v36);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_254378030();
  sub_2543A3778();
  OUTLINED_FUNCTION_0_40();
  sub_25437AD60(v37, v89, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v93 = 1;
      v65 = sub_2543781C8();
      OUTLINED_FUNCTION_12_19(&type metadata for HPTimer.Status.PausedCodingKeys, &v93, v66, v67, v65);
      v68 = v75;
      sub_2543A3568();
      (*(v73 + 8))(v22, v68);
      goto LABEL_8;
    case 2u:
      v51 = v77;
      sub_2542DE374(v1, v77);
      v94 = 2;
      v52 = sub_254378174();
      v53 = v79;
      OUTLINED_FUNCTION_12_19(&type metadata for HPTimer.Status.FiringCodingKeys, &v94, v54, v55, v52);
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v56, v57, MEMORY[0x277CC9580]);
      v58 = v81;
      sub_2543A3538();
      v59 = v80;
      goto LABEL_6;
    case 3u:
      v51 = v78;
      sub_2542DE374(v1, v78);
      v95[0] = 3;
      v60 = sub_2543780D8();
      v53 = v83;
      OUTLINED_FUNCTION_12_19(&type metadata for HPTimer.Status.DismissedCodingKeys, v95, v61, v62, v60);
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v63, v64, MEMORY[0x277CC9580]);
      v58 = v87;
      sub_2543A3538();
      v59 = v85;
LABEL_6:
      (*(v59 + 8))(v53, v58);
      sub_2542DE3E4(v51, &qword_27F5DF638, &unk_2543B0DF0);
      goto LABEL_8;
    case 4u:
      v95[1] = 4;
      sub_254378084();
      v46 = v82;
      v47 = v91;
      sub_2543A3508();
      (*(v84 + 8))(v46, v86);
      v48 = OUTLINED_FUNCTION_30_5();
      return v49(v48, v47);
    default:
      v38 = v72;
      v39 = v88;
      (*(v72 + 32))(v31, v1, v88);
      v92 = 0;
      v40 = sub_25437821C();
      OUTLINED_FUNCTION_12_19(&type metadata for HPTimer.Status.RunningCodingKeys, &v92, v41, v42, v40);
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v43, v44, MEMORY[0x277CC9580]);
      v45 = v76;
      sub_2543A3578();
      (*(v74 + 8))(v26, v45);
      (*(v38 + 8))(v31, v39);
LABEL_8:
      v69 = OUTLINED_FUNCTION_30_5();
      return v70(v69, v32);
  }
}

unint64_t sub_254378030()
{
  result = qword_27F5E2388;
  if (!qword_27F5E2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2388);
  }

  return result;
}

unint64_t sub_254378084()
{
  result = qword_27F5E2390;
  if (!qword_27F5E2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2390);
  }

  return result;
}

unint64_t sub_2543780D8()
{
  result = qword_27F5E2398;
  if (!qword_27F5E2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2398);
  }

  return result;
}

uint64_t sub_25437812C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_254378174()
{
  result = qword_27F5E23A0;
  if (!qword_27F5E23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E23A0);
  }

  return result;
}

unint64_t sub_2543781C8()
{
  result = qword_27F5E23A8;
  if (!qword_27F5E23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E23A8);
  }

  return result;
}

unint64_t sub_25437821C()
{
  result = qword_27F5E23B0;
  if (!qword_27F5E23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E23B0);
  }

  return result;
}

uint64_t HPTimer.Status.hash(into:)()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  v5 = OUTLINED_FUNCTION_110(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_13_14();
  MEMORY[0x28223BE20](v6);
  v8 = v42 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_35_6();
  OUTLINED_FUNCTION_3();
  v42[1] = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9();
  type metadata accessor for HPTimer.Status(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9();
  v17 = (v16 - v15);
  OUTLINED_FUNCTION_0_40();
  sub_25437AD60(v18, v0, v17);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = *v17;
      MEMORY[0x259C0A1D0](1);
      v28 = 0.0;
      if (v27 != 0.0)
      {
        v28 = v27;
      }

      result = MEMORY[0x259C0A1F0](*&v28);
      break;
    case 2u:
      sub_2542DE374(v17, v1);
      MEMORY[0x259C0A1D0](2);
      sub_2542DE304(v1, v3);
      OUTLINED_FUNCTION_52_1(v3);
      if (v26)
      {
        sub_2543A3708();
      }

      else
      {
        v29 = OUTLINED_FUNCTION_20_9();
        v30(v29, v3, v11);
        sub_2543A3708();
        OUTLINED_FUNCTION_1_36();
        sub_25437812C(v31, v32, MEMORY[0x277CC9588]);
        OUTLINED_FUNCTION_15_10();
        v33 = OUTLINED_FUNCTION_5_10();
        v34(v33);
      }

      v35 = v1;
      goto LABEL_15;
    case 3u:
      sub_2542DE374(v17, v8);
      MEMORY[0x259C0A1D0](3);
      sub_2542DE304(v8, v2);
      OUTLINED_FUNCTION_52_1(v2);
      if (v26)
      {
        sub_2543A3708();
      }

      else
      {
        v36 = OUTLINED_FUNCTION_20_9();
        v37(v36, v2, v11);
        sub_2543A3708();
        OUTLINED_FUNCTION_1_36();
        sub_25437812C(v38, v39, MEMORY[0x277CC9588]);
        OUTLINED_FUNCTION_15_10();
        v40 = OUTLINED_FUNCTION_5_10();
        v41(v40);
      }

      v35 = v8;
LABEL_15:
      result = sub_2542DE3E4(v35, &qword_27F5DF638, &unk_2543B0DF0);
      break;
    case 4u:
      result = MEMORY[0x259C0A1D0](4);
      break;
    default:
      v19 = OUTLINED_FUNCTION_20_9();
      v20(v19, v17, v11);
      MEMORY[0x259C0A1D0](0);
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v21, v22, MEMORY[0x277CC9588]);
      OUTLINED_FUNCTION_15_10();
      v23 = OUTLINED_FUNCTION_5_10();
      result = v24(v23);
      break;
  }

  return result;
}

uint64_t HPTimer.Status.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23C0, &qword_2543B0E38);
  OUTLINED_FUNCTION_3();
  v122 = v4;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_0();
  v127 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23C8, &qword_2543B0E40);
  OUTLINED_FUNCTION_3();
  v123 = v7;
  v124 = v8;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_0();
  v134 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23D0, &qword_2543B0E48);
  OUTLINED_FUNCTION_3();
  v120 = v12;
  v121 = v11;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_0();
  v126 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23D8, &qword_2543B0E50);
  OUTLINED_FUNCTION_3();
  v118 = v16;
  v119 = v15;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_0();
  v125 = v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23E0, &qword_2543B0E58);
  OUTLINED_FUNCTION_3();
  v116 = v19;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_0();
  v128 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23E8, &unk_2543B0E60);
  OUTLINED_FUNCTION_3();
  v132 = v23;
  v133 = v22;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v24);
  v26 = &v111 - v25;
  v131 = type metadata accessor for HPTimer.Status(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_10();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_13_14();
  MEMORY[0x28223BE20](v32);
  v34 = &v111 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v111 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v111 - v39;
  v41 = a1[3];
  v135 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v41);
  sub_254378030();
  v42 = v136;
  sub_2543A3768();
  if (v42)
  {
    goto LABEL_8;
  }

  v112 = v34;
  v113 = v37;
  v114 = v2;
  v115 = v30;
  v43 = v133;
  v136 = v40;
  v44 = sub_2543A34E8();
  sub_2542DF254(v44, 0);
  if (v46 == v47 >> 1)
  {
    goto LABEL_7;
  }

  v111 = 0;
  if (v46 >= (v47 >> 1))
  {
    __break(1u);
    JUMPOUT(0x254379064);
  }

  v48 = *(v45 + v46);
  sub_2542DF244(v46 + 1);
  v50 = v49;
  v52 = v51;
  swift_unknownObjectRelease();
  if (v50 != v52 >> 1)
  {
LABEL_7:
    v60 = v131;
    v61 = sub_2543A32E8();
    swift_allocError();
    v63 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0);
    *v63 = v60;
    sub_2543A3468();
    sub_2543A32D8();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D84160], v61);
    swift_willThrow();
    swift_unknownObjectRelease();
    v64 = OUTLINED_FUNCTION_7_16();
    v65(v64);
LABEL_8:
    v66 = v135;
    return __swift_destroy_boxed_opaque_existential_0(v66);
  }

  v53 = v129;
  switch(v48)
  {
    case 1:
      v138 = 1;
      v88 = sub_2543781C8();
      OUTLINED_FUNCTION_10_17(&type metadata for HPTimer.Status.PausedCodingKeys, &v138, v89, v90, v88);
      sub_2543A34C8();
      v91 = v132;
      v106 = v105;
      swift_unknownObjectRelease();
      v107 = OUTLINED_FUNCTION_18_9();
      v108(v107);
      (*(v91 + 8))(v26, v43);
      v109 = v112;
      *v112 = v106;
      swift_storeEnumTagMultiPayload();
      v110 = v109;
      goto LABEL_15;
    case 2:
      v139 = 2;
      v76 = sub_254378174();
      OUTLINED_FUNCTION_10_17(&type metadata for HPTimer.Status.FiringCodingKeys, &v139, v77, v78, v76);
      sub_2543A1F38();
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v79, v80, MEMORY[0x277CC95A0]);
      v59 = v114;
      OUTLINED_FUNCTION_25_7();
      sub_2543A3498();
      swift_unknownObjectRelease();
      v92 = OUTLINED_FUNCTION_22_3();
      v93(v92);
      v94 = OUTLINED_FUNCTION_7_16();
      v95(v94);
      goto LABEL_14;
    case 3:
      v140 = 3;
      v81 = sub_2543780D8();
      OUTLINED_FUNCTION_10_17(&type metadata for HPTimer.Status.DismissedCodingKeys, &v140, v82, v83, v81);
      sub_2543A1F38();
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v84, v85, MEMORY[0x277CC95A0]);
      v86 = v115;
      v87 = v123;
      sub_2543A3498();
      swift_unknownObjectRelease();
      v96 = OUTLINED_FUNCTION_30_5();
      v97(v96, v87);
      v98 = OUTLINED_FUNCTION_7_16();
      v99(v98);
      swift_storeEnumTagMultiPayload();
      v75 = v136;
      sub_25437AC24(v86, v136);
      v100 = v135;
      v53 = v129;
      goto LABEL_17;
    case 4:
      v141[0] = 4;
      v68 = sub_254378084();
      OUTLINED_FUNCTION_10_17(&type metadata for HPTimer.Status.UnknownCodingKeys, v141, v69, v70, v68);
      swift_unknownObjectRelease();
      v71 = OUTLINED_FUNCTION_22_3();
      v72(v71);
      v73 = OUTLINED_FUNCTION_7_16();
      v74(v73);
      v75 = v136;
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    default:
      v137 = 0;
      v54 = sub_25437821C();
      OUTLINED_FUNCTION_10_17(&type metadata for HPTimer.Status.RunningCodingKeys, &v137, v55, v56, v54);
      sub_2543A1F38();
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v57, v58, MEMORY[0x277CC95A0]);
      v59 = v113;
      sub_2543A34D8();
      swift_unknownObjectRelease();
      v101 = OUTLINED_FUNCTION_18_9();
      v102(v101);
      v103 = OUTLINED_FUNCTION_7_16();
      v104(v103);
LABEL_14:
      swift_storeEnumTagMultiPayload();
      v110 = v59;
LABEL_15:
      v75 = v136;
      sub_25437AC24(v110, v136);
LABEL_16:
      v100 = v135;
LABEL_17:
      sub_25437AC24(v75, v53);
      v66 = v100;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0(v66);
}

uint64_t HPTimer.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HPTimer(0) + 20);
  sub_2543A1F88();
  OUTLINED_FUNCTION_26();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t HPTimer.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for HPTimer(0) + 24));
  sub_2543A2768();
  return v1;
}

uint64_t HPTimer.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HPTimer(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*HPTimer.title.modify())()
{
  v0 = OUTLINED_FUNCTION_177();
  type metadata accessor for HPTimer(v0);
  return nullsub_1;
}

uint64_t HPTimer.status.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for HPTimer(0);
  OUTLINED_FUNCTION_0_40();
  return sub_25437AD60(v4, v1 + v3, a1);
}

uint64_t HPTimer.status.setter()
{
  v2 = OUTLINED_FUNCTION_177();
  v3 = v1 + *(type metadata accessor for HPTimer(v2) + 28);

  return sub_25437ACA8(v0, v3);
}

void (*HPTimer.status.modify())()
{
  v0 = OUTLINED_FUNCTION_177();
  type metadata accessor for HPTimer(v0);
  return nullsub_1;
}

uint64_t HPTimer.init(duration:id:title:status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for HPTimer(0);
  v13 = (a5 + v12[6]);
  *a5 = a6;
  v14 = v12[5];
  sub_2543A1F88();
  OUTLINED_FUNCTION_26();
  (*(v15 + 32))(a5 + v14, a1);
  *v13 = a2;
  v13[1] = a3;
  v16 = a5 + v12[7];

  return sub_25437AC24(a4, v16);
}

uint64_t static HPTimer.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_26_4();
  v5 = type metadata accessor for HPTimer(v4);
  if ((sub_2543A1F68() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = (v2 + v6);
  v8 = *(v2 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (v10)
    {
      v11 = *v7 == *v9 && v8 == v10;
      if (v11 || (sub_2543A3608() & 1) != 0)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_10:
  v12 = *(v5 + 28);

  return static HPTimer.Status.== infix(_:_:)(v2 + v12, a2 + v12);
}

uint64_t sub_254379488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_2543A3608() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2543A3608();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2543795D0(char a1)
{
  result = 0x6E6F697461727564;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x737574617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254379658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254379488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254379680(uint64_t a1)
{
  v2 = sub_25437AD0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2543796BC(uint64_t a1)
{
  v2 = sub_25437AD0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPTimer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E23F0, &qword_2543B0E70);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25437AD0C();
  sub_2543A3778();
  v14[15] = 0;
  sub_2543A3568();
  if (!v1)
  {
    type metadata accessor for HPTimer(0);
    v14[14] = 1;
    sub_2543A1F88();
    OUTLINED_FUNCTION_6_26();
    sub_25437812C(v9, v10, MEMORY[0x277CC95F8]);
    OUTLINED_FUNCTION_25_7();
    sub_2543A3578();
    v14[13] = 2;
    sub_2543A3518();
    v14[12] = 3;
    type metadata accessor for HPTimer.Status(0);
    OUTLINED_FUNCTION_11_15();
    sub_25437812C(v11, v12, &protocol conformance descriptor for HPTimer.Status);
    OUTLINED_FUNCTION_25_7();
    sub_2543A3578();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t HPTimer.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x259C0A1F0](*&v2);
  v3 = type metadata accessor for HPTimer(0);
  sub_2543A1F88();
  OUTLINED_FUNCTION_6_26();
  sub_25437812C(v4, v5, MEMORY[0x277CC9600]);
  sub_2543A2808();
  if (*(v1 + *(v3 + 24) + 8))
  {
    sub_2543A3708();
    sub_2543A28C8();
  }

  else
  {
    sub_2543A3708();
  }

  return HPTimer.Status.hash(into:)();
}

uint64_t sub_254379A24(uint64_t (*a1)(void *))
{
  sub_2543A36E8();
  a1(v3);
  return sub_2543A3728();
}

uint64_t HPTimer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for HPTimer.Status(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9();
  v8 = v7 - v6;
  v33 = sub_2543A1F88();
  OUTLINED_FUNCTION_3();
  v31 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_32_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2408, &qword_2543B0E78);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v11);
  v30 = type metadata accessor for HPTimer(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  v32 = (v14 - v13);
  v15 = OUTLINED_FUNCTION_18_9();
  __swift_project_boxed_opaque_existential_0(v15, v16);
  sub_25437AD0C();
  sub_2543A3768();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_33_4();
  sub_2543A34C8();
  *v32 = v17;
  OUTLINED_FUNCTION_6_26();
  sub_25437812C(v18, v19, MEMORY[0x277CC9618]);
  OUTLINED_FUNCTION_33_4();
  sub_2543A34D8();
  (*(v31 + 32))(&v32[v30[5]], v2, v33);
  OUTLINED_FUNCTION_33_4();
  v20 = sub_2543A3478();
  v21 = &v32[v30[6]];
  *v21 = v20;
  v21[1] = v22;
  OUTLINED_FUNCTION_11_15();
  sub_25437812C(v23, v24, &protocol conformance descriptor for HPTimer.Status);
  OUTLINED_FUNCTION_33_4();
  sub_2543A34D8();
  v25 = OUTLINED_FUNCTION_24_9();
  v26(v25);
  sub_25437AC24(v8, &v32[v30[7]]);
  sub_25437AD60(v27, v32, a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25437ADBC();
}

uint64_t sub_254379EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_2543A36E8();
  a4(v6);
  return sub_2543A3728();
}

uint64_t HPTimer.Status.shortDescription.getter()
{
  type metadata accessor for HPTimer.Status(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_0_40();
  sub_25437AD60(v3, v1, v0);
  OUTLINED_FUNCTION_46();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646573756170;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      return result;
    case 2:
      sub_25437ADBC();
      result = 0x676E69726966;
      break;
    case 3:
      sub_25437ADBC();
      result = 0x657373696D736964;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      sub_25437ADBC();
      result = 0x676E696E6E7572;
      break;
  }

  return result;
}

uint64_t HPTimer.Status.description.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF638, &unk_2543B0DF0);
  v4 = OUTLINED_FUNCTION_110(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x28223BE20](v5);
  v74[0] = v74 - v6;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v7);
  v9 = v74 - v8;
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_35_6();
  OUTLINED_FUNCTION_3();
  v74[1] = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_13_14();
  MEMORY[0x28223BE20](v14);
  type metadata accessor for HPTimer.Status(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_10();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v74 - v20;
  OUTLINED_FUNCTION_0_40();
  v22 = OUTLINED_FUNCTION_18_9();
  sub_25437AD60(v24, v22, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = HPTimer.Status.shortDescription.getter();
      v49 = v48;
      v75 = 0;
      v76 = 0xE000000000000000;
      MEMORY[0x259C093D0](40, 0xE100000000000000);
      sub_2543A2D98();
      OUTLINED_FUNCTION_37_4();
      v50 = v75;
      v51 = v76;
      v75 = v47;
      v76 = v49;
      sub_2543A2768();
      MEMORY[0x259C093D0](v50, v51);

      v35 = v75;
      break;
    case 2u:
      sub_2542DE374(v21, v1);
      v39 = HPTimer.Status.shortDescription.getter();
      v41 = v40;
      OUTLINED_FUNCTION_21_4();
      sub_2542DE304(v1, v9);
      OUTLINED_FUNCTION_52_1(v9);
      if (v42)
      {
        v56 = 7104878;
        v58 = 0xE300000000000000;
      }

      else
      {
        v52 = OUTLINED_FUNCTION_20_9();
        v53(v52, v9, v11);
        v54 = OUTLINED_FUNCTION_27_4();
        v55(v54);
        v56 = sub_2543A2888();
        v58 = v57;
        v59 = OUTLINED_FUNCTION_5_10();
        v60(v59);
      }

      MEMORY[0x259C093D0](v56, v58);

      OUTLINED_FUNCTION_37_4();
      v75 = v39;
      v76 = v41;
      sub_2543A2768();
      v61 = OUTLINED_FUNCTION_46();
      MEMORY[0x259C093D0](v61);

      v35 = v75;
      v62 = v1;
      goto LABEL_14;
    case 3u:
      v43 = v74[0];
      sub_2542DE374(v21, v74[0]);
      v44 = HPTimer.Status.shortDescription.getter();
      v46 = v45;
      OUTLINED_FUNCTION_21_4();
      sub_2542DE304(v43, v2);
      OUTLINED_FUNCTION_52_1(v2);
      if (v42)
      {
        v67 = 7104878;
        v69 = 0xE300000000000000;
      }

      else
      {
        v63 = OUTLINED_FUNCTION_20_9();
        v64(v63, v2, v11);
        v65 = OUTLINED_FUNCTION_27_4();
        v66(v65);
        v67 = sub_2543A2888();
        v69 = v68;
        v70 = OUTLINED_FUNCTION_5_10();
        v71(v70);
      }

      MEMORY[0x259C093D0](v67, v69);

      OUTLINED_FUNCTION_37_4();
      v75 = v44;
      v76 = v46;
      sub_2543A2768();
      v72 = OUTLINED_FUNCTION_46();
      MEMORY[0x259C093D0](v72);

      v35 = v75;
      v62 = v43;
LABEL_14:
      sub_2542DE3E4(v62, &qword_27F5DF638, &unk_2543B0DF0);
      break;
    case 4u:
      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v38, v0, v18);
      v35 = 0x646573756170;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          return v35;
        case 2u:
          OUTLINED_FUNCTION_2_36();
          sub_25437ADBC();
          v35 = 0x676E69726966;
          break;
        case 3u:
          OUTLINED_FUNCTION_2_36();
          sub_25437ADBC();
          v35 = 0x657373696D736964;
          break;
        case 4u:
          v35 = 0x6E776F6E6B6E75;
          break;
        default:
          OUTLINED_FUNCTION_2_36();
          sub_25437ADBC();
          v35 = 0x676E696E6E7572;
          break;
      }

      break;
    default:
      v25 = OUTLINED_FUNCTION_20_9();
      v26(v25, v21, v11);
      v27 = HPTimer.Status.shortDescription.getter();
      v29 = v28;
      OUTLINED_FUNCTION_21_4();
      OUTLINED_FUNCTION_1_36();
      sub_25437812C(v30, v31, MEMORY[0x277CC95B8]);
      v32 = sub_2543A35A8();
      MEMORY[0x259C093D0](v32);

      OUTLINED_FUNCTION_37_4();
      v33 = v75;
      v34 = v76;
      v75 = v27;
      v76 = v29;
      sub_2543A2768();
      MEMORY[0x259C093D0](v33, v34);

      v35 = v75;
      v36 = OUTLINED_FUNCTION_5_10();
      v37(v36);
      break;
  }

  return v35;
}

uint64_t sub_25437A6D8()
{
  v1 = type metadata accessor for HPTimer.Status(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HPTimer(0);
  sub_25437AD60(v5, v0 + *(v4 + 28), v3);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      return result;
    case 2:
      sub_25437ADBC();
      result = 3;
      break;
    case 3:
      sub_25437ADBC();
      result = 4;
      break;
    case 4:
      result = 0;
      break;
    default:
      sub_25437ADBC();
      result = 2;
      break;
  }

  return result;
}

uint64_t static HPTimer.< infix(_:_:)(double *a1, double *a2)
{
  sub_2543A1F38();
  OUTLINED_FUNCTION_3();
  v41 = v5;
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_10();
  v40 = (v6 - v7);
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  type metadata accessor for HPTimer.Status(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_10();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2350, &qword_2543B0E00);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  v22 = sub_25437A6D8();
  if (v22 == sub_25437A6D8())
  {
    v23 = *(type metadata accessor for HPTimer(0) + 28);
    v24 = *(v18 + 48);
    sub_25437AD60(v25, a1 + v23, v21);
    sub_25437AD60(v26, a2 + v23, &v21[v24]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2 && swift_getEnumCaseMultiPayload() == 2)
        {
          v28 = *a2 < *a1;
          sub_25437ADBC();
LABEL_15:
          sub_25437ADBC();
          return v28 & 1;
        }

        goto LABEL_12;
      }

      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v30, v21, v14);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *v14 < *&v21[v24];
LABEL_14:
        OUTLINED_FUNCTION_2_36();
        goto LABEL_15;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_40();
      sub_25437AD60(v31, v21, v17);
      if (!swift_getEnumCaseMultiPayload())
      {
        v33 = v41;
        v32 = v42;
        v34 = *(v41 + 32);
        v34(v10, v17, v42);
        v35 = &v21[v24];
        v36 = v40;
        v34(v40, v35, v32);
        v28 = sub_2543A1F18();
        v37 = *(v33 + 8);
        v37(v36, v32);
        v37(v10, v32);
        goto LABEL_14;
      }

      (*(v41 + 8))(v17, v42);
    }

LABEL_12:
    v28 = *a1 < *a2;
    sub_2542DE3E4(v21, &qword_27F5E2350, &qword_2543B0E00);
    return v28 & 1;
  }

  v29 = sub_25437A6D8();
  v28 = sub_25437A6D8() < v29;
  return v28 & 1;
}

uint64_t sub_25437AC24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HPTimer.Status(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25437ACA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HPTimer.Status(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25437AD0C()
{
  result = qword_27F5E23F8;
  if (!qword_27F5E23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E23F8);
  }

  return result;
}

uint64_t sub_25437AD60(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_26_4();
  v6(v5);
  OUTLINED_FUNCTION_26();
  (*(v7 + 16))(a3, v3);
  return a3;
}

uint64_t sub_25437ADBC()
{
  v1 = OUTLINED_FUNCTION_177();
  v2(v1);
  OUTLINED_FUNCTION_26();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_25437AEFC(double a1, uint64_t a2, uint64_t a3, int *a4)
{
  OUTLINED_FUNCTION_26_4();
  v7 = sub_2543A1F88();
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = v7;
    v9 = a4[5];
LABEL_10:

    return __swift_getEnumTagSinglePayload(v4 + v9, a3, v8);
  }

  if (a3 != 2147483646)
  {
    v8 = type metadata accessor for HPTimer.Status(0);
    v9 = a4[7];
    goto LABEL_10;
  }

  v10 = *(v4 + a4[6] + 8);
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

uint64_t sub_25437AFEC(double a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  OUTLINED_FUNCTION_26_4();
  result = sub_2543A1F88();
  if (*(*(result - 8) + 84) == a4)
  {
    v10 = result;
    v11 = a5[5];
  }

  else
  {
    if (a4 == 2147483646)
    {
      *(v5 + a5[6] + 8) = a3;
      return result;
    }

    v10 = type metadata accessor for HPTimer.Status(0);
    v11 = a5[7];
  }

  return __swift_storeEnumTagSinglePayload(v5 + v11, a3, a3, v10);
}

void sub_25437B0B8(uint64_t a1)
{
  sub_2543A1F88();
  if (v1 <= 0x3F)
  {
    sub_25437B164();
    if (v2 <= 0x3F)
    {
      type metadata accessor for HPTimer.Status(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25437B164()
{
  if (!qword_27F5E2438)
  {
    v0 = sub_2543A30C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5E2438);
    }
  }
}

void sub_25437B1B4(uint64_t a1)
{
  sub_2543A1F38();
  if (v1 <= 0x3F)
  {
    sub_2542DE900(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HPTimer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x25437B2FCLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HPTimer.Status.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25437B400);
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

_BYTE *sub_25437B46C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x25437B508);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25437B554()
{
  result = qword_27F5E2450;
  if (!qword_27F5E2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2450);
  }

  return result;
}

unint64_t sub_25437B5AC()
{
  result = qword_27F5E2458;
  if (!qword_27F5E2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2458);
  }

  return result;
}

unint64_t sub_25437B604()
{
  result = qword_27F5E2460;
  if (!qword_27F5E2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2460);
  }

  return result;
}

unint64_t sub_25437B65C()
{
  result = qword_27F5E2468;
  if (!qword_27F5E2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2468);
  }

  return result;
}

unint64_t sub_25437B6B4()
{
  result = qword_27F5E2470;
  if (!qword_27F5E2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2470);
  }

  return result;
}

unint64_t sub_25437B70C()
{
  result = qword_27F5E2478;
  if (!qword_27F5E2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2478);
  }

  return result;
}

unint64_t sub_25437B764()
{
  result = qword_27F5E2480;
  if (!qword_27F5E2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2480);
  }

  return result;
}

unint64_t sub_25437B7BC()
{
  result = qword_27F5E2488;
  if (!qword_27F5E2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2488);
  }

  return result;
}

unint64_t sub_25437B814()
{
  result = qword_27F5E2490;
  if (!qword_27F5E2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2490);
  }

  return result;
}

unint64_t sub_25437B86C()
{
  result = qword_27F5E2498;
  if (!qword_27F5E2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2498);
  }

  return result;
}

unint64_t sub_25437B8C4()
{
  result = qword_27F5E24A0;
  if (!qword_27F5E24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E24A0);
  }

  return result;
}

unint64_t sub_25437B91C()
{
  result = qword_27F5E24A8;
  if (!qword_27F5E24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E24A8);
  }

  return result;
}

unint64_t sub_25437B974()
{
  result = qword_27F5E24B0;
  if (!qword_27F5E24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E24B0);
  }

  return result;
}

unint64_t sub_25437B9CC()
{
  result = qword_27F5E24B8;
  if (!qword_27F5E24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E24B8);
  }

  return result;
}

unint64_t sub_25437BA24()
{
  result = qword_27F5E24C0;
  if (!qword_27F5E24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E24C0);
  }

  return result;
}

unint64_t sub_25437BA7C()
{
  result = qword_27F5E24C8;
  if (!qword_27F5E24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E24C8);
  }

  return result;
}

unint64_t sub_25437BAD4()
{
  result = qword_27F5E24D0;
  if (!qword_27F5E24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E24D0);
  }

  return result;
}

unint64_t sub_25437BB2C()
{
  result = qword_27F5E24D8;
  if (!qword_27F5E24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E24D8);
  }

  return result;
}

unint64_t sub_25437BB84()
{
  result = qword_27F5E24E0;
  if (!qword_27F5E24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E24E0);
  }

  return result;
}

unint64_t sub_25437BBDC()
{
  result = qword_27F5E24E8;
  if (!qword_27F5E24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E24E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2543A3458();
}

uint64_t OUTLINED_FUNCTION_12_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2543A3508();
}

uint64_t OUTLINED_FUNCTION_15_10()
{

  return sub_2543A2808();
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_35_6()
{

  return sub_2543A1F38();
}

void OUTLINED_FUNCTION_37_4()
{

  JUMPOUT(0x259C093D0);
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v18[-v7];
  sub_2543A2F28();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_2543A29F8();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if (v9)
  {
    v10 = sub_2543A2FA8();
    v12 = v11;
    v13 = swift_getAssociatedTypeWitness();
    (*(*(v13 - 8) + 16))(a4, v12, v13);
    v10(v18, 0);
    v14 = a4;
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v16 = swift_getAssociatedTypeWitness();
    v14 = a4;
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t Collection.split(maxLength:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2543A2EF8();
  if (a1)
  {
    v12[7] = 0;
    v12[8] = result;
    v12[9] = a1;
    MEMORY[0x28223BE20](result);
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = v3;
    v12[5] = a1;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E24F0, &qword_2543B1878);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = sub_25437D50C();
    return sub_25437C1C4(sub_25437D4E8, v12, v8, AssociatedTypeWitness, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25437C1C4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v9 = v8;
  v56 = a2;
  v57 = a4;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = a5;
  v44 = &v38 - v14;
  v41 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v53 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v51 = &v38 - v18;
  v19 = sub_2543A30C8();
  v39 = *(v19 - 8);
  v40 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  MEMORY[0x28223BE20](v25);
  v52 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v49 = *(a3 - 8);
  MEMORY[0x28223BE20](v28);
  v48 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a6;
  v58 = swift_getAssociatedTypeWitness();
  v45 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v31 = &v38 - v30;
  v32 = sub_2543A2978();
  v59 = sub_2543A3328();
  v54 = sub_2543A3338();
  sub_2543A3308();
  (*(v49 + 16))(v48, v46, a3);
  v57 = v31;
  v49 = a3;
  result = sub_2543A2968();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v50 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2543A3118();
      result = __swift_getEnumTagSinglePayload(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v55(v24, v51);
      if (v9)
      {
        (*(v45 + 8))(v57, v58);

        (*(v41 + 32))(v42, v51, v43);
        return (*v34)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v34)(v24, AssociatedTypeWitness);
      sub_2543A3318();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v35 = (v50 + 32);
  v36 = (v50 + 8);
  v37 = v44;
  while (1)
  {
    sub_2543A3118();
    if (__swift_getEnumTagSinglePayload(v21, 1, AssociatedTypeWitness) == 1)
    {
      (*(v45 + 8))(v57, v58);
      (*(v39 + 8))(v21, v40);
      return v59;
    }

    (*v35)(v37, v21, AssociatedTypeWitness);
    v55(v37, v53);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v36)(v37, AssociatedTypeWitness);
    sub_2543A3318();
  }

  (*v36)(v37, AssociatedTypeWitness);
  (*(v45 + 8))(v57, v58);

  return (*(v41 + 32))(v42, v53, v43);
}

Swift::String __swiftcall String.filled(to:with:)(Swift::Int to, Swift::String with)
{
  v4 = v3;
  v5 = v2;
  v7 = sub_2543A28D8();
  v9 = __OFSUB__(to, v7);
  v10 = to - v7;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_2543A2768();
    if (v10 >= 1)
    {
      v11 = sub_2543A2928();
      v13 = v12;
      sub_2543A2768();
      MEMORY[0x259C093D0](v11, v13);
    }

    v7 = v5;
    v8 = v4;
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t Error.nsError.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = sub_2543A35B8();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_2543A1E78();

  return v11;
}

uint64_t sub_25437CA94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + *MEMORY[0x277D84DE8] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v13 = sub_2543A2828();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  return v13 & 1;
}

uint64_t Collection.reduceToDictionary<A>(by:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getTupleTypeMetadata2();
  sub_2543A2A88();
  sub_2543A2748();
  sub_2543A27B8();
  sub_2543A29B8();
  return v5;
}

uint64_t sub_25437CD1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[1] = a1;
  v7 = (*a3 + *MEMORY[0x277D84DE8]);
  v8 = *v7;
  v9 = sub_2543A30C8();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v21 - v10;
  v12 = v7[1];
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v21 - v18;
  swift_getAtKeyPath();
  (*(v13 + 16))(v16, v19, v12);
  (*(*(v8 - 8) + 16))(v11, a2, v8);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v8);
  sub_2543A27B8();
  sub_2543A27E8();
  return (*(v13 + 8))(v19, v12);
}

uint64_t sub_25437CF3C@<X0>(uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a6;
  v60 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v55 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v56 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v46 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_2543A2FD8();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v51 = &v46 - v14;
  v15 = sub_2543A30C8();
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v19);
  v62 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v46 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v46 - v25;
  sub_2543A2ED8();
  sub_2543A2F18();
  v59 = v18;
  v27 = *(v18 + 8);
  v27(v23, AssociatedTypeWitness);
  sub_2543A2F48();
  v63 = v26;
  sub_2543A2F08();
  v60 = v27;
  v27(v23, AssociatedTypeWitness);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness);
  v49 = a2;
  v50 = a4;
  if (EnumTagSinglePayload == 1)
  {
    v29 = v62;
    sub_2543A2F48();
    v30 = __swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness);
    v31 = v29;
    v32 = v59;
    if (v30 != 1)
    {
      (*(v47 + 8))(v17, v48);
    }
  }

  else
  {
    v32 = v59;
    v33 = v62;
    (*(v59 + 32))(v62, v17, AssociatedTypeWitness);
    v31 = v33;
  }

  v34 = v63;
  result = sub_2543A2838();
  if (result)
  {
    v36 = *(v32 + 16);
    v37 = v52;
    v36(v52, v34, AssociatedTypeWitness);
    AssociatedConformanceWitness = a5;
    v38 = TupleTypeMetadata2;
    v36(&v37[*(TupleTypeMetadata2 + 48)], v31, AssociatedTypeWitness);
    v40 = v55;
    v39 = v56;
    (*(v55 + 16))(v56, v37, v38);
    v41 = *(v38 + 48);
    v59 = *(v32 + 32);
    v42 = v51;
    (v59)(v51, v39, AssociatedTypeWitness);
    v43 = &v39[v41];
    v44 = v60;
    v60(v43, AssociatedTypeWitness);
    (*(v40 + 32))(v39, v37, v38);
    v45 = v54;
    (v59)(&v42[*(v54 + 36)], &v39[*(v38 + 48)], AssociatedTypeWitness);
    v44(v39, AssociatedTypeWitness);
    sub_2543A2F98();
    (*(v53 + 8))(v42, v45);
    v44(v62, AssociatedTypeWitness);
    return (v44)(v63, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25437D50C()
{
  result = qword_27F5E24F8;
  if (!qword_27F5E24F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E24F0, &qword_2543B1878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E24F8);
  }

  return result;
}

Swift::Void __swiftcall String.print(terminator:)(Swift::String terminator)
{
  v3 = v2;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E2500, &qword_2543B1880);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2543A7E00;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  sub_2543A2768();
  sub_2543A36C8();
}

uint64_t sub_25437D6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25437D744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_45_0();
  swift_getTupleTypeMetadata2();
  sub_2543A2A88();
  v5 = sub_2543A2748();
  OUTLINED_FUNCTION_2_37();
  swift_getTupleTypeMetadata2();
  sub_2543A2A88();
  sub_2543A2748();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_2543A2A88();
  swift_getAssociatedConformanceWitness();
  sub_2543A2748();
  return v5;
}

uint64_t sub_25437D88C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v31 = a1;
  v33 = a7;
  v14 = (*a2 + *MEMORY[0x277D84DE8]);
  v15 = *v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = sub_2543A30C8();
  OUTLINED_FUNCTION_0_2();
  v29 = v16;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v51 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v47 = a8;
  v48 = a9;
  v49 = a2;
  v50 = v31;
  v34 = a4;
  v35 = v15;
  v36 = v14[1];
  v37 = a5;
  v38 = a6;
  v39 = a8;
  v40 = a9;
  v41 = sub_25437E588;
  v42 = &v43;
  OUTLINED_FUNCTION_2_37();
  sub_2543A27B8();
  sub_2543A2768();
  swift_getWitnessTable();
  sub_2543A2998();
  v20 = TupleTypeMetadata2;

  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    (*(v29 + 8))(v19, v30);
    OUTLINED_FUNCTION_73_0();
    return __swift_storeEnumTagSinglePayload(v21, v22, v23, a4);
  }

  else
  {
    (*(*(a4 - 8) + 32))(v33, &v19[*(v20 + 48)], a4);
    OUTLINED_FUNCTION_7_17();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, a4);
    return (*(*(v15 - 8) + 8))(v19, v15);
  }
}

uint64_t sub_25437DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_2543A27D8();
}

uint64_t sub_25437DC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2543A2798();
  sub_2543A2778();
  swift_getWitnessTable();
  return sub_2543A2B48();
}

uint64_t sub_25437DCA0(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = a2;
  v46 = a3[5];
  v5 = a3[2];
  v43 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_0();
  v45 = v8;
  sub_2543A30C8();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_0();
  v44 = v10;
  v11 = a3[3];
  OUTLINED_FUNCTION_0_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9();
  v42 = (v16 - v15);
  OUTLINED_FUNCTION_45_0();
  sub_2543A30C8();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  OUTLINED_FUNCTION_0_2();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9();
  v23 = *(v21 + 16);
  v23(v25 - v24, a2, v5);
  v26 = *(v13 + 16);
  v39 = v13 + 16;
  v40 = v23;
  v26(v19, a1, v11);
  OUTLINED_FUNCTION_7_17();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v11);
  sub_2543A27B8();
  sub_2543A27E8();
  v26(v42, a1, v11);
  v30 = v44;
  v31 = v41;
  v23(v44, v41, v5);
  OUTLINED_FUNCTION_7_17();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v5);
  OUTLINED_FUNCTION_45_0();
  sub_2543A27B8();
  sub_2543A27E8();
  sub_2543A32A8();
  v40(v30, v31, v5);
  OUTLINED_FUNCTION_7_17();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v5);
  swift_getAssociatedConformanceWitness();
  sub_2543A27B8();
  return sub_2543A27E8();
}

uint64_t sub_25437E024@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v54 = a1;
  v49 = a3;
  v6 = a2[3];
  OUTLINED_FUNCTION_0_2();
  v52 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  v53 = v10 - v9;
  v12 = a2[2];
  v47 = *(v11 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_0();
  v46 = v14;
  OUTLINED_FUNCTION_45_0();
  sub_2543A30C8();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_0();
  v43 = v16;
  v17 = sub_2543A30C8();
  OUTLINED_FUNCTION_0_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  OUTLINED_FUNCTION_0_2();
  v44 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v43 - v29;
  v48 = v4;
  v50 = v4 + 8;
  v31 = v49;
  v51 = a2[6];
  sub_2543A27D8();
  (*(v19 + 16))(v23, v31, v17);
  if (__swift_getEnumTagSinglePayload(v23, 1, v12) == 1)
  {
    (*(v19 + 8))(v23, v17);
  }

  else
  {
    v32 = v44;
    (*(v44 + 32))(v30, v23, v12);
    (*(v32 + 16))(v27, v30, v12);
    OUTLINED_FUNCTION_73_0();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v6);
    OUTLINED_FUNCTION_2_37();
    sub_2543A27B8();
    sub_2543A27E8();
    sub_2543A32A8();
    OUTLINED_FUNCTION_73_0();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v12);
    swift_getAssociatedConformanceWitness();
    sub_2543A27B8();
    sub_2543A27E8();
    (*(v32 + 8))(v30, v12);
  }

  (*(v52 + 16))(v53, v54, v6);
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v12);
  OUTLINED_FUNCTION_45_0();
  sub_2543A27B8();
  return sub_2543A27E8();
}

uint64_t sub_25437E470(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(*a3 + *MEMORY[0x277D84DE8] + 8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - v11;
  swift_getAtKeyPath();
  v13 = sub_2543A2848();
  (*(v10 + 8))(v12, v9);
  return v13 & 1;
}

uint64_t sub_25437E5C0(uint64_t a1)
{
  v3 = *(v1 + 72);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t dispatch thunk of MemberMessaging.activate()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_35(v1);

  return v4(v3);
}

uint64_t dispatch thunk of MemberMessaging.deactivate()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_35(v1);

  return v4(v3);
}

uint64_t dispatch thunk of MemberMessaging.sendTransportMessage<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_4_6(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_42();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_39(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_11(v8);

  return v11(v10);
}

{
  OUTLINED_FUNCTION_4_6(a1, a2, a3, a4, a5, a6, a7);
  OUTLINED_FUNCTION_42();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_39(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_11(v8);

  return v11(v10);
}

void static CoordinationTransport.serverTransport<A, B>(cluster:topic:handshakeHandler:sessionToMember:requestHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19[1] = a5;
  v19[2] = a7;
  v12 = *(a10 - 8);
  *&v13 = MEMORY[0x28223BE20](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = v16;
  v20[1] = a10;
  v21 = v13;
  v22 = v17;
  type metadata accessor for CoordinationTransportServer(0, v20);
  (*(v12 + 16))(v15, a4, a10);
  v18 = a1;
  sub_2543A2768();

  sub_25430519C();
}

uint64_t static CoordinationTransport.clientTransport<A, B>(cluster:topic:introductionToMember:requestHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  type metadata accessor for CoordinationTransportClient(0, &v20);
  v18 = a1;
  sub_2543A2768();

  return sub_2543434B4(v18, a2, a3, a4, a5, a6, a7);
}

_BYTE *storeEnumTagSinglePayload for CoordinationTransport(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x25437ED14);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t get_witness_table_15HomePodSettings15TransportMemberRzSHRzAA36CoordinationSessionConsumerHandshakeR_r0_lAA0fD6ServerCyxq_GAA0D0HPyHCTm(uint64_t a1, void (*a2)(uint64_t, _OWORD *), uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3;
  a2(255, v6);
  return swift_getWitnessTable();
}

uint64_t *Loader.deinit()
{
  v1 = *v0;
  sub_2542D7A3C(v0[14], v0[15]);
  v2 = *(*v0 + 104);
  type metadata accessor for Loader.CacheEntry(0, *(v1 + 80), v3, v4);
  OUTLINED_FUNCTION_2_3();
  (*(v5 + 8))(v0 + v2);
  v6 = *(*v0 + 112);
  sub_2543A1FB8();
  OUTLINED_FUNCTION_2_3();
  (*(v7 + 8))(v0 + v6);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t Loader.__deallocating_deinit()
{
  Loader.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25437EF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Loader.CacheEntry(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = sub_2543A1FB8();
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25437F068(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  result = sub_2543A2C68();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25437F108(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_25437F23C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x25437F400);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_25437F430(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x25437F4CCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25437F528(uint64_t a1)
{
  sub_2543A36E8();
  sub_2542E1334();
  return sub_2543A3728();
}

uint64_t sub_25437F5B8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_2543A2768();
  return v1;
}

uint64_t sub_25437F604()
{
  OUTLINED_FUNCTION_102();
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t CarrySettings.LivabilityDataDownloader.__allocating_init(with:)()
{
  OUTLINED_FUNCTION_102();
  v0 = swift_allocObject();
  CarrySettings.LivabilityDataDownloader.init(with:)();
  return v0;
}

uint64_t CarrySettings.LivabilityDataDownloader.init(with:)()
{
  OUTLINED_FUNCTION_102();
  sub_2543A1FA8();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  v3 = [objc_opt_self() ephemeralSessionConfiguration];
  [v3 set:1 preventsAppSSO:?];
  v4 = [objc_opt_self() sessionWithConfiguration_];

  *(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings24LivabilityDataDownloader_urlSession) = v4;
  return v1;
}

uint64_t CarrySettings.LivabilityDataDownloader.deinit()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings24LivabilityDataDownloader_urlSession;
  [*(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings24LivabilityDataDownloader_urlSession) invalidateAndCancel];

  v2 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings24LivabilityDataDownloader_logger;
  v3 = sub_2543A1FB8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t CarrySettings.LivabilityDataDownloader.__deallocating_deinit()
{
  CarrySettings.LivabilityDataDownloader.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25437F868()
{
  OUTLINED_FUNCTION_28();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2543A1EB8();
  v1[4] = v3;
  OUTLINED_FUNCTION_8(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_25437F910()
{
  OUTLINED_FUNCTION_31();
  sub_254380AD8(0xD000000000000047, v0[6]);
  v0[7] = sub_2543A2748();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_25437FA44;

  return sub_254380204();
}

uint64_t sub_25437FA44()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_41();
  v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  v7[9] = v0;

  if (!v0)
  {
    v7[10] = v3;
    v7[11] = v5;
  }

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_25437FB80()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  sub_2543A1DD8();
  swift_allocObject();
  sub_2543A1DC8();
  sub_254380CC8();
  sub_2543A1DB8();
  (*(v4 + 8))(v3, v5);

  sub_2542D7D40(v1, v2);

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_25437FC90()
{
  OUTLINED_FUNCTION_28();
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_25437FD04()
{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v1[38] = v0;
  v4 = sub_2543A1EB8();
  v1[39] = v4;
  OUTLINED_FUNCTION_8(v4);
  v1[40] = v5;
  v1[41] = OUTLINED_FUNCTION_146();
  memcpy(v1 + 2, v3, 0x8AuLL);
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_25437FDC0()
{
  OUTLINED_FUNCTION_40();
  if (v0[18])
  {
    sub_254380AD8(v0[17], v0[41]);
    sub_254380D1C(v0[41]);
    v10 = swift_task_alloc();
    v0[42] = v10;
    *v10 = v0;
    v10[1] = sub_25437FFF0;

    return sub_254380204();
  }

  else
  {
    sub_2542F9388((v0 + 2), (v0 + 20));
    v1 = sub_2543A1F98();
    v2 = sub_2543A2FF8();
    sub_2542F93C0((v0 + 2));
    if (os_log_type_enabled(v1, v2))
    {
      OUTLINED_FUNCTION_8_19();
      v3 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_11();
      v11 = swift_slowAlloc();
      *v3 = 136315138;
      *(v3 + 4) = sub_2542D5198(v0[2]);
      _os_log_impl(&dword_2542B7000, v1, v2, "Audience %s does not have a profile URL", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x259C0AD90](v4);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x259C0AD90](v5);
    }

    sub_254380FA4();
    OUTLINED_FUNCTION_7_18();
    v6 = swift_allocError();
    OUTLINED_FUNCTION_2_38(v6, v7);
    swift_willThrow();

    OUTLINED_FUNCTION_27();

    return v8();
  }
}

uint64_t sub_25437FFF0()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_41();
  v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  v7[43] = v0;

  if (!v0)
  {
    v7[44] = v3;
    v7[45] = v5;
  }

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_254380110()
{
  OUTLINED_FUNCTION_28();
  (*(v0[40] + 8))(v0[41], v0[39]);

  v1 = v0[1];
  v3 = v0[44];
  v2 = v0[45];

  return v1(v2, v3);
}

uint64_t sub_254380190()
{
  OUTLINED_FUNCTION_28();
  (*(v0[40] + 8))(v0[41], v0[39]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_254380204()
{
  OUTLINED_FUNCTION_28();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 152) = v3;
  *(v1 + 40) = v4;
  v5 = sub_2543A1EB8();
  *(v1 + 64) = v5;
  OUTLINED_FUNCTION_8(v5);
  *(v1 + 72) = v6;
  *(v1 + 80) = OUTLINED_FUNCTION_146();
  v7 = sub_2543A1DA8();
  *(v1 + 88) = v7;
  OUTLINED_FUNCTION_8(v7);
  *(v1 + 96) = v8;
  *(v1 + 104) = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_254380300()
{
  v1 = *(v0 + 48);
  (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 40), *(v0 + 64));
  sub_2543A1D88();
  if (v1)
  {
    v2 = *(v0 + 48);
    v5 = *(v2 + 64);
    v4 = v2 + 64;
    v3 = v5;
    v6 = -1;
    v7 = -1 << *(*(v0 + 48) + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & v3;
    v9 = (63 - v7) >> 6;
    sub_2543A2768();
    v10 = 0;
    if (v8)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        goto LABEL_13;
      }

      v8 = *(v4 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        do
        {
LABEL_10:
          v8 &= v8 - 1;
          sub_2543A2768();
          sub_2543A2768();
          sub_2543A1D98();
        }

        while (v8);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v12 = *(v0 + 56);
    v13 = *(v0 + 152);
    sub_2543A3298();

    swift_beginAccess();
    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    sub_2543A2768();
    MEMORY[0x259C093D0](v14, v15);

    if (v13 == 1)
    {
      sub_2543A1D98();
    }

    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    *v16 = v0;
    v16[1] = sub_2543805A8;
    OUTLINED_FUNCTION_128();
  }

  return MEMORY[0x28211ECF8]();
}

uint64_t sub_2543805A8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3[15] = v1;
  v3[16] = v2;
  v3[17] = v4;
  v3[18] = v0;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v5);
}

void sub_2543806B4()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v0[17];
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v3 statusCode];
    v6 = v0[17];
    if (v5 == 200)
    {
      v7 = OUTLINED_FUNCTION_12_20();
      v8(v7);

      OUTLINED_FUNCTION_128();

      __asm { BRAA            X3, X16 }
    }

    v24 = v6;
    v25 = sub_2543A1F98();
    v26 = sub_2543A2FF8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[17];
      OUTLINED_FUNCTION_8_19();
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = [v3 statusCode];

      _os_log_impl(&dword_2542B7000, v25, v26, "Invalid HTTP status %ld", v28, 0xCu);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x259C0AD90]();
      v16 = v0[17];
    }

    else
    {

      v16 = v0[17];
      v25 = v16;
    }

    v30 = v0[15];
    v29 = v0[16];

    v31 = [v3 statusCode];
    sub_254380FA4();
    OUTLINED_FUNCTION_7_18();
    swift_allocError();
    *v32 = v31;
    *(v32 + 8) = 0;
    swift_willThrow();
    sub_2542D7D40(v30, v29);
  }

  else
  {
    v11 = v2;
    v12 = sub_2543A1F98();
    v13 = sub_2543A2FF8();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[16];
    v16 = v0[17];
    v17 = v0[15];
    if (v14)
    {
      OUTLINED_FUNCTION_8_19();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_11();
      v37 = swift_slowAlloc();
      *v18 = 136315138;
      v16 = v16;
      v19 = [v16 description];
      v20 = sub_2543A2878();

      v21 = sub_2542D5198(v20);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_2542B7000, v12, v13, "Cannot convert response %s to an HTTPURLResponse type", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x259C0AD90]();
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x259C0AD90]();
    }

    sub_254380FA4();
    OUTLINED_FUNCTION_7_18();
    v22 = swift_allocError();
    OUTLINED_FUNCTION_11_16(v22, v23);
    sub_2542D7D40(v17, v15);
  }

  v33 = OUTLINED_FUNCTION_12_20();
  v34(v33);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_128();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_254380A50()
{
  OUTLINED_FUNCTION_31();
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_254380AD8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5E2740, &qword_2543B1CF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  sub_2543A1EA8();
  v8 = sub_2543A1EB8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    return (*(*(v8 - 8) + 32))(a3, v7, v8);
  }

  sub_254381698(v7);
  sub_2543A2768();
  v9 = sub_2543A1F98();
  v10 = sub_2543A2FF8();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_8_19();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_11();
    v12 = swift_slowAlloc();
    v16[1] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2542D5198(a1);
    _os_log_impl(&dword_2542B7000, v9, v10, "Cannot convert URL string %s to URL type", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_3_26();
    MEMORY[0x259C0AD90]();
    OUTLINED_FUNCTION_3_26();
    MEMORY[0x259C0AD90]();
  }

  sub_254380FA4();
  OUTLINED_FUNCTION_7_18();
  v13 = swift_allocError();
  OUTLINED_FUNCTION_2_38(v13, v14);
  return swift_willThrow();
}

unint64_t sub_254380CC8()
{
  result = qword_27F5E2718;
  if (!qword_27F5E2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2718);
  }

  return result;
}

uint64_t sub_254380D1C(uint64_t a1)
{
  v2 = sub_2543A1EB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2543A1E98();
  if (v7)
  {
    v20 = v6;
    v21 = v7;
    v19[0] = 0x706D756A65736162;
    v19[1] = 0xEA00000000007265;
    sub_2542F9024();
    v8 = sub_2543A3148();

    v9 = v8 ^ 1;
  }

  else
  {
    (*(v3 + 16))(v5, a1, v2);
    v10 = sub_2543A1F98();
    v11 = sub_2543A2FF8();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_8_19();
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_11();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      sub_254381640();
      v14 = sub_2543A35A8();
      (*(v3 + 8))(v5, v2);
      v15 = sub_2542D5198(v14);

      *(v12 + 4) = v15;
      _os_log_impl(&dword_2542B7000, v10, v11, "URL %s does not have a host name", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x259C0AD90]();
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x259C0AD90]();
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    sub_254380FA4();
    OUTLINED_FUNCTION_7_18();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_2_38(v16, v17);
    swift_willThrow();
  }

  return v9 & 1;
}

unint64_t sub_254380FA4()
{
  result = qword_27F5E2720;
  if (!qword_27F5E2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2720);
  }

  return result;
}

void *sub_254380FF8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25438101C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25438104C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25437F5B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for CarrySettings.LivabilityDataDownloader(uint64_t a1)
{
  result = qword_27F5E2728;
  if (!qword_27F5E2728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2543810D0(uint64_t a1)
{
  result = sub_2543A1FB8();
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

uint64_t dispatch thunk of CarrySettings.LivabilityDataDownloader.getAllSoftwareUpdateAudiences()()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v6 = (*(*v0 + 136) + **(*v0 + 136));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2542D32CC;

  return v6(v3);
}

uint64_t dispatch thunk of CarrySettings.LivabilityDataDownloader.getProfileData(forAudience:)()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v6 = (*(*v0 + 144) + **(*v0 + 144));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_254381404;

  return v6(v3);
}

uint64_t sub_254381404()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_41();
  v3 = *v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v1, v0);
}

uint64_t dispatch thunk of CarrySettings.LivabilityDataDownloader.getData(forURL:useACToken:additionalHeaders:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v10 = (*(*v0 + 152) + **(*v0 + 152));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_254381700;

  return v10(v7, v5, v3);
}

unint64_t sub_254381640()
{
  result = qword_27F5E2738;
  if (!qword_27F5E2738)
  {
    sub_2543A1EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2738);
  }

  return result;
}

uint64_t sub_254381698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5E2740, &qword_2543B1CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_16(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 1;

  return swift_willThrow();
}

HomePodSettings::BetaEnrollment::State_optional __swiftcall BetaEnrollment.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomePodSettings::BetaEnrollment::Availability_optional __swiftcall BetaEnrollment.Availability.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25438180C@<X0>(uint64_t *a1@<X8>)
{
  result = BetaEnrollment.Availability.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25438183C@<X0>(uint64_t *a1@<X8>)
{
  result = BetaEnrollment.State.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t BetaProgram.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HomePodSettings11BetaProgram_title);
  sub_2543A2768();
  return v1;
}

id BetaProgram.init(title:ID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC15HomePodSettings11BetaProgram_title];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC15HomePodSettings11BetaProgram_ID] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for BetaProgram();
  return objc_msgSendSuper2(&v6, sel_init);
}

id BetaProgram.init(coder:)(void *a1)
{
  v2 = v1;
  sub_25430CAE0();
  v4 = sub_2543A3088();
  if (v4)
  {
    v5 = v4;
    v6 = sub_2543A2878();
    v8 = v7;

    v9 = sub_2543A2858();
    v10 = [a1 decodeIntegerForKey_];

    v11 = &v2[OBJC_IVAR____TtC15HomePodSettings11BetaProgram_title];
    *v11 = v6;
    v11[1] = v8;
    *&v2[OBJC_IVAR____TtC15HomePodSettings11BetaProgram_ID] = v10;
    v14.receiver = v2;
    v14.super_class = type metadata accessor for BetaProgram();
    v12 = objc_msgSendSuper2(&v14, sel_init);
  }

  else
  {

    type metadata accessor for BetaProgram();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

void sub_254381ADC(void *a1)
{
  v3 = sub_2543A2858();
  v4 = sub_2543A2858();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC15HomePodSettings11BetaProgram_ID);
  v6 = sub_2543A2858();
  [a1 encodeInteger:v5 forKey:v6];
}

BOOL sub_254381C08(uint64_t a1)
{
  sub_2542E576C(a1, v7);
  if (v8)
  {
    type metadata accessor for BetaProgram();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR____TtC15HomePodSettings11BetaProgram_title) == *&v6[OBJC_IVAR____TtC15HomePodSettings11BetaProgram_title] && *(v1 + OBJC_IVAR____TtC15HomePodSettings11BetaProgram_title + 8) == *&v6[OBJC_IVAR____TtC15HomePodSettings11BetaProgram_title + 8];
      if (v2 || (sub_2543A3608() & 1) != 0)
      {
        v3 = *(v1 + OBJC_IVAR____TtC15HomePodSettings11BetaProgram_ID);
        v4 = *&v6[OBJC_IVAR____TtC15HomePodSettings11BetaProgram_ID];

        return v3 == v4;
      }
    }
  }

  else
  {
    sub_2542E1050(v7);
  }

  return 0;
}

id BetaProgram.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BetaProgram.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BetaProgram();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_254381DF8()
{
  result = qword_27F5E2770;
  if (!qword_27F5E2770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2770);
  }

  return result;
}

unint64_t sub_254381E50()
{
  result = qword_27F5E2778;
  if (!qword_27F5E2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E2778);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BetaEnrollment(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x254381F40);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BetaEnrollment.Availability(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254382040);
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

_BYTE *storeEnumTagSinglePayload for BetaEnrollment.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254382140);
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

void (*sub_2543821FC(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      v8[0] = *(v6 - 1);
      v8[1] = v7;
      sub_2543A2768();
      v4(v8);
      if (v3)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_254382290(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_46_5();
  v5 = type metadata accessor for CarrySettings.CarryDevice(0);
  v6 = OUTLINED_FUNCTION_110(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9();
  v7 = _s13DataModelCRDTVMa(0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v7) == 1)
  {
    sub_2542DA948(a1, &qword_27F5DFA80);
    OUTLINED_FUNCTION_104_0();
    v8 = 1;
  }

  else
  {
    sub_254393194(a1);
    sub_25438704C(a1, _s13DataModelCRDTVMa);
    OUTLINED_FUNCTION_104_0();
    v8 = 0;
  }

  __swift_storeEnumTagSinglePayload(v1, v8, 1, a1);
  _s20CarryDeviceMergeableVMa(0);
  v9 = OUTLINED_FUNCTION_71_3();
  __swift_storeEnumTagSinglePayload(v9, v10, 1, a1);
  sub_25439313C(v1);
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_5_10();
  return sub_254382EC4();
}

uint64_t sub_25438240C(uint64_t a1, char a2)
{
  sub_2543A28C8();
}

uint64_t sub_254382568(uint64_t a1, uint64_t a2)
{
  sub_2542F7A6C(a2);
  sub_2543A28C8();
}

uint64_t sub_2543825BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = OUTLINED_FUNCTION_171(a1, a2);
  sub_2542F46E4(v3, v4);
  sub_2543A28C8();
}

uint64_t sub_2543826BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2543A36E8();
  sub_2543825BC(v6, a2, a3);
  return sub_2543A3728();
}

uint64_t sub_254382720(uint64_t a1, unsigned __int8 a2)
{
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](a2 - 1);
  return sub_2543A3728();
}

uint64_t sub_254382768(uint64_t a1, char a2)
{
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](a2 & 1);
  return sub_2543A3728();
}

uint64_t sub_2543827AC(uint64_t a1, unsigned __int8 a2)
{
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](a2);
  return sub_2543A3728();
}

uint64_t sub_254382828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2543A36E8();
  sub_2543A28C8();
  return sub_2543A3728();
}

uint64_t sub_25438288C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_2543A36E8();
  a3(a2);
  sub_2543A28C8();

  return sub_2543A3728();
}

void sub_2543828F4(uint64_t a1@<X8>)
{
  *(a1 + *(_s13DataModelCRDTVMa(0) + 20)) = MEMORY[0x277D84F98];

  sub_254382940();
}

void sub_254382940()
{
  OUTLINED_FUNCTION_132_1();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x28223BE20](v5);
  _s29AppleConnectSettingsMergeableVMa(0);
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_50_3();
  sub_25439331C(v10);
  sub_25434F5E4();
  sub_2543A2188();
  OUTLINED_FUNCTION_58_3();
  sub_2542DA948(v11, v12);
  v13 = _s20CarryDeviceMergeableVMa(0);
  sub_2543036DC(v29);
  memcpy(v28, v29, sizeof(v28));
  v14 = OUTLINED_FUNCTION_37_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_64_3();
  v20 = sub_25438F290(v16, v17, v18, v19);
  OUTLINED_FUNCTION_124_1(v20);
  sub_25434F768();
  sub_25434F7BC();
  sub_2543A2478();
  memset(v28, 0, 88);
  v21 = OUTLINED_FUNCTION_37_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_64_3();
  v27 = sub_25438F290(v23, v24, v25, v26);
  OUTLINED_FUNCTION_124_1(v27);
  *(v1 + *(v13 + 32)) = MEMORY[0x277D84F98];
  OUTLINED_FUNCTION_133_1();
}

uint64_t sub_254382BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarrySettings.CarryDevice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_254382C80()
{
  OUTLINED_FUNCTION_88();
  v3 = v2;
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  OUTLINED_FUNCTION_110(v8);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_95_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2780, &unk_2543B1EB8);
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_46_5();
  v13 = *(v12 + 56);
  v14 = OUTLINED_FUNCTION_77_4();
  sub_25439331C(v14);
  sub_25439331C(v3);
  OUTLINED_FUNCTION_35_7(v0);
  if (!v15)
  {
    sub_25439331C(v0);
    OUTLINED_FUNCTION_35_7(v0 + v13);
    if (!v15)
    {
      sub_254382EC4();
      OUTLINED_FUNCTION_5_10();
      sub_25438695C();
      sub_25438704C(v7, _s20CarryDeviceMergeableVMa);
      sub_25438704C(v1, _s20CarryDeviceMergeableVMa);
      sub_2542DA948(v0, &qword_27F5E0370);
      goto LABEL_10;
    }

    sub_25438704C(v1, _s20CarryDeviceMergeableVMa);
LABEL_9:
    sub_2542DA948(v0, &qword_27F5E2780);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_35_7(v0 + v13);
  if (!v15)
  {
    goto LABEL_9;
  }

  sub_2542DA948(v0, &qword_27F5E0370);
LABEL_10:
  OUTLINED_FUNCTION_86();
}

uint64_t sub_254382EC4()
{
  OUTLINED_FUNCTION_59_3();
  v1(0);
  OUTLINED_FUNCTION_26();
  v2 = OUTLINED_FUNCTION_5_1();
  v3(v2);
  return v0;
}

uint64_t sub_254382F1C(uint64_t a1, uint64_t a2)
{
  qword_27F5F8898 = 0x656369766564;
  unk_27F5F88A0 = 0xE600000000000000;
  result = swift_getKeyPath();
  qword_27F5F88A8 = result;
  return result;
}

uint64_t sub_254382F64()
{
  if (qword_27F5DF090 != -1)
  {
    swift_once();
  }

  v0 = qword_27F5F8898;
  sub_2543A2768();

  return v0;
}

uint64_t sub_254382FE4(uint64_t a1)
{
  v2 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D840](a1, v2);
}

uint64_t sub_25438305C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_2543830BC(uint64_t a1)
{
  v2 = sub_25438F8C0(&qword_27F5E2A78, _s13DataModelCRDTVMa);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_254383128(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D828](a1, a2, v4);
}

uint64_t sub_2543831A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D7D0](a1, a2, v4);
}

uint64_t sub_254383228(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D7F8](a1, a2, v4);
}

uint64_t sub_2543832A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D838](a1, a2, v4);
}

uint64_t sub_254383320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D800](a1, a2, a3, v6);
}

uint64_t sub_2543833B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D830](a1, a2, v4);
}

uint64_t sub_254383430(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D808](a1, a2, v4);
}

uint64_t sub_2543834AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D7E8](a1, a2, v4);
}

uint64_t sub_254383530(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D7E0](a1, a2, v4);
}

uint64_t sub_2543835B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D7C8](a1, a2, a3, v6);
}

uint64_t sub_254383648(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D7B0](a1, a2, v4);
}

uint64_t sub_2543836C4(uint64_t a1)
{
  v2 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D7D8](a1, v2);
}

uint64_t sub_254383730(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D7B8](a1, a2, v4);
}

uint64_t sub_2543837AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D810](a1, a2, v4);
}

void sub_254383830()
{
  sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  JUMPOUT(0x259C08D70);
}

uint64_t sub_2543839BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25438F8C0(&qword_27F5E19F8, _s13DataModelCRDTVMa);

  return MEMORY[0x28214E180](a1, a2, a3, v6);
}

uint64_t sub_254383B38(uint64_t a1)
{
  v2 = sub_25438F8C0(&qword_27F5E2AD0, _s13DataModelCRDTVMa);

  return MEMORY[0x28214D7C0](a1, v2);
}

void CarrySettings.CarryDevice.appleConnectSettings.getter()
{
  OUTLINED_FUNCTION_88();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  OUTLINED_FUNCTION_110(v4);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_46_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0368, &qword_2543A9910);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_21();
  v8 = _s29AppleConnectSettingsMergeableVMa(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_10();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_77_4();
  sub_25439331C(v14);
  _s20CarryDeviceMergeableVMa(0);
  v15 = OUTLINED_FUNCTION_79_3();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17) == 1)
  {
    sub_2542DA948(v0, &qword_27F5E0370);
    OUTLINED_FUNCTION_73_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v8);
LABEL_5:
    sub_2542DA948(v1, &qword_27F5E0368);
    type metadata accessor for CarrySettings.AppleConnectSettings(0);
    OUTLINED_FUNCTION_73_0();
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  sub_2543A2198();
  OUTLINED_FUNCTION_0_41();
  sub_25438704C(v0, v21);
  OUTLINED_FUNCTION_35_7(v1);
  if (v22)
  {
    goto LABEL_5;
  }

  sub_254382EC4();
  sub_254382EC4();
  v23 = v12[1];
  *v3 = *v12;
  v3[1] = v23;
  v24 = v12[3];
  v3[2] = v12[2];
  v3[3] = v24;
  v25 = *(v8 + 24);
  v26 = type metadata accessor for CarrySettings.AppleConnectSettings(0);
  sub_25439331C(v12 + v25);
  sub_2543A2768();
  sub_2543A2768();
  OUTLINED_FUNCTION_3_27();
  sub_25438704C(v12, v27);
  OUTLINED_FUNCTION_7_17();
  v31 = v26;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_86();
}

void sub_254383E24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2788, &unk_2543B1EC8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25439331C(a1);
  CarrySettings.CarryDevice.appleConnectSettings.setter();
}

void CarrySettings.CarryDevice.appleConnectSettings.setter()
{
  OUTLINED_FUNCTION_88();
  v27 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2788, &unk_2543B1EC8);
  OUTLINED_FUNCTION_110(v3);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0368, &qword_2543A9910);
  v6 = OUTLINED_FUNCTION_110(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_93_3();
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  v11 = OUTLINED_FUNCTION_110(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  sub_25439331C(v0);
  v15 = _s20CarryDeviceMergeableVMa(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  sub_2542DA948(v14, &qword_27F5E0370);
  if (EnumTagSinglePayload == 1)
  {
    sub_254382940();
    OUTLINED_FUNCTION_7_17();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
    v20 = OUTLINED_FUNCTION_77_4();
    sub_25439313C(v20);
  }

  v21 = OUTLINED_FUNCTION_79_3();
  if (__swift_getEnumTagSinglePayload(v21, v22, v15))
  {
    v23 = &qword_27F5E2788;
    v24 = v27;
  }

  else
  {
    v25 = v27;
    sub_25439331C(v27);
    sub_254384140(v1);
    sub_25439331C(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
    sub_2543A21A8();
    sub_2542DA948(v25, &qword_27F5E2788);
    v24 = OUTLINED_FUNCTION_4_1();
  }

  sub_2542DA948(v24, v23);
  OUTLINED_FUNCTION_86();
}

void sub_254384140(uint64_t a1)
{
  OUTLINED_FUNCTION_132_1();
  v2 = v1;
  v3 = type metadata accessor for CarrySettings.AppleConnectSettings(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9();
  v7 = v6 - v5;
  v8 = _s29AppleConnectSettingsMergeableVMa(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  v12 = v11 - v10;
  v14 = *(v13 + 24);
  sub_2543A1F38();
  OUTLINED_FUNCTION_73_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  *(v12 + *(v8 + 28)) = MEMORY[0x277D84F98];
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2542DA948(v2, &qword_27F5E2788);
    sub_2542DA948(v12 + v14, &qword_27F5DF638);
    OUTLINED_FUNCTION_73_0();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v8);
  }

  else
  {
    sub_254382EC4();
    v22 = *(v7 + 8);
    *v12 = *v7;
    *(v12 + 8) = v22;
    *(v12 + 16) = *(v7 + 16);
    sub_25439313C(v7 + *(v3 + 24));
    OUTLINED_FUNCTION_56_2();
    v23 = OUTLINED_FUNCTION_5_10();
    sub_254393194(v23);
    OUTLINED_FUNCTION_7_17();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v8);
    OUTLINED_FUNCTION_3_27();
    sub_25438704C(v12, v27);
  }

  OUTLINED_FUNCTION_133_1();
}

void (*CarrySettings.CarryDevice.appleConnectSettings.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2788, &unk_2543B1EC8);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  CarrySettings.CarryDevice.appleConnectSettings.getter();
  return sub_254384388;
}

void sub_254384388(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_5_10();
    sub_25439331C(v4);
    CarrySettings.CarryDevice.appleConnectSettings.setter();
    OUTLINED_FUNCTION_64_3();
    sub_2542DA948(v5, v6);
  }

  else
  {
    CarrySettings.CarryDevice.appleConnectSettings.setter();
  }

  free(v3);

  free(v2);
}

void *CarrySettings.CarryDevice.deviceInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_92();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_64_3();
  sub_25439331C(v7);
  _s20CarryDeviceMergeableVMa(0);
  OUTLINED_FUNCTION_14_0(v1);
  if (v8)
  {
    sub_2542DA948(v1, &qword_27F5E0370);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
    sub_2543A2198();
    OUTLINED_FUNCTION_0_41();
    sub_25438704C(v1, v9);
    memcpy(v15, v14, sizeof(v15));
    v10 = sub_2543036E4(v15);
    if (v10 != 1)
    {
      memcpy(__dst, v15, sizeof(__dst));
      sub_254384780(__dst, v13);
      nullsub_1();
      v11 = v13;
      return memcpy(a1, v11, 0x88uLL);
    }
  }

  sub_2543870A4(__dst);
  v11 = __dst;
  return memcpy(a1, v11, 0x88uLL);
}

void sub_254384578(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_25439331C(__dst);
  CarrySettings.CarryDevice.deviceInfo.setter();
}

void CarrySettings.CarryDevice.deviceInfo.setter()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_92();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v5 = OUTLINED_FUNCTION_110(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_10();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10 + 160;
  memcpy(v22, v1, sizeof(v22));
  v12 = OUTLINED_FUNCTION_45_3();
  sub_25439331C(v12);
  v13 = _s20CarryDeviceMergeableVMa(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v13);
  sub_2542DA948(v11, &qword_27F5E0370);
  if (EnumTagSinglePayload == 1)
  {
    sub_254382940();
    OUTLINED_FUNCTION_7_17();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
    sub_25439313C(v8);
  }

  v18 = OUTLINED_FUNCTION_79_3();
  if (__swift_getEnumTagSinglePayload(v18, v19, v13))
  {
    sub_2542DA948(v22, &unk_27F5E2790);
  }

  else
  {
    memcpy(v21, v22, sizeof(v21));
    sub_254384918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
    sub_2543A21A8();
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_254384780@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = *(a1 + 40);
  v23 = *(a1 + 56);
  v4 = v23;
  *(a2 + 32) = v24;
  *(a2 + 48) = v4;
  *(a2 + 96) = *(a1 + 112);
  v5 = a1[1];
  v20 = *a1;
  v21 = v5;
  v22 = *(a1 + 4);
  v6 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v7 = *(&v21 + 1);
    v8 = v21;
    v9 = v20;
    v25 = v22;
    sub_2543932C0(&v24, v19);
    sub_2543932C0(&v23, v19);
    sub_25439331C(&v20);
    sub_2542DA948(&v25, &qword_27F5E2AF0);
  }

  else
  {
    sub_2543932C0(&v24, v19);
    sub_2543932C0(&v23, v19);
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v7;
  v10 = *(a1 + 10);
  if (v10)
  {
    v12 = *(a1 + 11);
    v11 = *(a1 + 12);
    v13 = *(a1 + 9);
    sub_2543A2768();
    sub_2543A2768();
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
  }

  *(a2 + 64) = v13;
  *(a2 + 72) = v10;
  *(a2 + 80) = v12;
  *(a2 + 88) = v11;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(a1 + 18);
    v16 = *(a1 + 17);
    v17 = *(a1 + 15);
    sub_2543A2768();
    sub_2543A2768();
    sub_2543A2768();
    sub_254393034(a1);
  }

  else
  {
    result = sub_254393034(a1);
    v17 = 0;
    v16 = 0;
    v15 = 0;
  }

  *(a2 + 104) = v17;
  *(a2 + 112) = v14;
  *(a2 + 120) = v16;
  *(a2 + 128) = v15;
  return result;
}

void sub_254384918()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v3 = v2;
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v42, v1, 0x88uLL);
  if (sub_2543932A8(v42) == 1)
  {
    sub_2543036DC(v40);
  }

  else
  {
    v25 = v3;
    v4 = v42[5];
    v5 = v42[7];
    v24 = v42[12];
    v28 = v42[4];
    v29 = v42[6];
    v6 = v42[1];
    if (v42[1])
    {
      v7 = v42[3];
      v27 = v42[2];
      v17 = v42[0];
      sub_2543A2768();
      sub_2543A2768();
      v26 = MEMORY[0x277D84F98];
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v7 = 0;
      v17 = 0;
    }

    v8 = v42[9];
    if (v42[9])
    {
      v9 = v42[11];
      v21 = v42[8];
      v22 = v42[10];
      sub_2543A2768();
      v23 = v9;
      sub_2543A2768();
      v20 = MEMORY[0x277D84F98];
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    v10 = v42[14];
    if (v42[14])
    {
      v12 = v42[15];
      v11 = v42[16];
      v13 = v42[13];
      sub_2543A2768();
      sub_2543A2768();
      sub_25438E238(v13, v10);
      sub_2542DA948(__dst, &unk_27F5E2790);
      sub_2543A2768();
      sub_2543A2768();
      v14 = v13;
      v18 = v12;
      v19 = v11;
      sub_25438E27C(v13, v10);
      v15 = MEMORY[0x277D84F98];
    }

    else
    {
      sub_2543A2768();
      sub_2543A2768();
      sub_2542DA948(__dst, &unk_27F5E2790);
      v14 = 0;
      v18 = 0;
      v19 = 0;
      v15 = 0;
    }

    v16 = v15;
    __src[0] = v17;
    __src[1] = v6;
    __src[2] = v27;
    __src[3] = v7;
    __src[4] = v26;
    __src[5] = v28;
    __src[6] = v4;
    __src[7] = v29;
    __src[8] = v5;
    __src[9] = v21;
    __src[10] = v8;
    __src[11] = v22;
    __src[12] = v23;
    __src[13] = v20;
    LOBYTE(__src[14]) = v24;
    __src[15] = v14;
    __src[16] = v10;
    __src[17] = v18;
    __src[18] = v19;
    __src[19] = v15;
    __src[20] = MEMORY[0x277D84F98];
    memcpy(v31, __src, sizeof(v31));
    nullsub_1();
    v32[0] = v17;
    v32[1] = v6;
    v32[2] = v27;
    v32[3] = v7;
    v32[4] = v26;
    v32[5] = v28;
    v32[6] = v4;
    v32[7] = v29;
    v32[8] = v5;
    v32[9] = v21;
    v32[10] = v8;
    v32[11] = v22;
    v32[12] = v23;
    v32[13] = v20;
    v33 = v24;
    v34 = v14;
    v35 = v10;
    v36 = v18;
    v37 = v19;
    v38 = v16;
    v39 = MEMORY[0x277D84F98];
    sub_254392FFC(__src, v40);
    sub_254393034(v32);
    memcpy(v40, v31, sizeof(v40));
    v3 = v25;
  }

  memcpy(v3, v40, 0xA8uLL);
  OUTLINED_FUNCTION_86();
}

void (*CarrySettings.CarryDevice.deviceInfo.modify(void *a1))(char **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x4B0uLL);
  *a1 = v3;
  v3[148] = v1;
  v4 = OUTLINED_FUNCTION_92();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[149] = v8;
  OUTLINED_FUNCTION_64_3();
  sub_25439331C(v9);
  _s20CarryDeviceMergeableVMa(0);
  OUTLINED_FUNCTION_14_0(v8);
  if (v10)
  {
    sub_2542DA948(v8, &qword_27F5E0370);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
    sub_2543A2198();
    OUTLINED_FUNCTION_0_41();
    sub_25438704C(v8, v11);
    memcpy(v3 + 21, v3 + 42, 0xA8uLL);
    v12 = sub_2543036E4((v3 + 21));
    if (v12 != 1)
    {
      memcpy(v3, v3 + 21, 0xA8uLL);
      sub_254384780(v3, (v3 + 131));
      nullsub_1();
      memcpy(v3 + 63, v3 + 131, 0x88uLL);
      return sub_254384D88;
    }
  }

  sub_2543870A4(v3 + 63);
  return sub_254384D88;
}

void sub_254384D88(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 149);
  if (a2)
  {
    OUTLINED_FUNCTION_128_1(v2 + 97);
    OUTLINED_FUNCTION_128_1(v6);
    sub_25439331C((v2 + 97));
    CarrySettings.CarryDevice.deviceInfo.setter();
    OUTLINED_FUNCTION_128_1(v2 + 80);
    OUTLINED_FUNCTION_64_3();
    sub_2542DA948(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_128_1(v6);
    CarrySettings.CarryDevice.deviceInfo.setter();
  }

  free(v3);

  free(v2);
}

void CarrySettings.CarryDevice.serverConfiguration.getter()
{
  OUTLINED_FUNCTION_88();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_37_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_58_3();
  sub_25439331C(v7);
  _s20CarryDeviceMergeableVMa(0);
  OUTLINED_FUNCTION_14_0(v0);
  if (v8)
  {
    sub_2542DA948(v0, &qword_27F5E0370);
LABEL_10:
    *v2 = xmmword_2543A6830;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
  sub_2543A2198();
  OUTLINED_FUNCTION_0_41();
  sub_25438704C(v0, v9);
  memcpy(v24, v23, 0x58uLL);
  if (!v24[10])
  {
    goto LABEL_10;
  }

  v11 = v24[0];
  v10 = v24[1];
  v12 = v24[3];
  if (v24[3])
  {
    v13 = BYTE1(v24[6]);
    v22 = v24[0];
    v14 = v24[6];
    v16 = v24[4];
    v15 = v24[5];
    v17 = v24[2];
    v19 = v24[7];
    v18 = v24[8];
    sub_2543A2768();
    sub_25439331C(&v24[2]);
    sub_2542DA948(v23, &qword_27F5E19E0);
    if (v13)
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20 & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
    v11 = v22;
    sub_2543A2768();
    sub_2543A2768();
    sub_2543A2768();
    sub_2542DA948(&v24[2], &unk_27F5E2798);
  }

  else
  {
    sub_2543A2768();
    sub_2542DA948(v23, &qword_27F5E19E0);
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v21 = 0;
    v19 = 0;
    v18 = 0;
  }

  *v2 = v11;
  *(v2 + 8) = v10;
  *(v2 + 16) = v17;
  *(v2 + 24) = v12;
  *(v2 + 32) = v16;
  *(v2 + 40) = v15;
  *(v2 + 48) = v21;
  *(v2 + 56) = v19;
  *(v2 + 64) = v18;
LABEL_13:
  OUTLINED_FUNCTION_86();
}

void sub_254385078(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_25439331C(__dst);
  CarrySettings.CarryDevice.serverConfiguration.setter(__src);
}

void CarrySettings.CarryDevice.serverConfiguration.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_132_1();
  v1 = OUTLINED_FUNCTION_37_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v4 = OUTLINED_FUNCTION_110(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_10();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  OUTLINED_FUNCTION_111_1(v24);
  v11 = OUTLINED_FUNCTION_102_2();
  sub_25439331C(v11);
  v12 = _s20CarryDeviceMergeableVMa(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v12);
  OUTLINED_FUNCTION_64_3();
  sub_2542DA948(v14, v15);
  if (EnumTagSinglePayload == 1)
  {
    sub_254382940();
    OUTLINED_FUNCTION_7_17();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    sub_25439313C(v7);
  }

  v19 = OUTLINED_FUNCTION_79_3();
  if (__swift_getEnumTagSinglePayload(v19, v20, v12))
  {
    sub_2542DA948(v24, &unk_27F5E27A0);
  }

  else
  {
    memcpy(v23, v24, sizeof(v23));
    sub_254385268(&v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
    sub_2543A21A8();
  }

  OUTLINED_FUNCTION_133_1();
}

__n128 sub_254385268@<Q0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  v9 = v31;
  memcpy(__dst, __src, 0x48uLL);
  v10 = *(&__dst[0] + 1);
  if (*(&__dst[0] + 1) == 1)
  {
    v11 = 0;
    OUTLINED_FUNCTION_8_20();
    v10 = 0;
    v15.n128_f64[0] = OUTLINED_FUNCTION_98_1();
  }

  else if (*(&__dst[0] + 1))
  {
    v26 = __dst[0];
    v11 = *(&__dst[1] + 1);
    v5 = *&__dst[1];
    v4 = *(&__dst[2] + 1);
    v2 = *&__dst[2];
    v3 = *(&__dst[3] + 1);
    v6 = *&__dst[3];
    v7 = *&__dst[4];
    OUTLINED_FUNCTION_83_3();
    sub_25438E2C0(v18, v19);
    sub_2543A2768();
    sub_2542DA948(__dst, &unk_27F5E27A0);
    if (v11)
    {
      v20 = v6 & 1;
      sub_2543A2768();
      sub_2543A2768();
      sub_2543A2768();
      v29 = v5;
      OUTLINED_FUNCTION_83_3();
      sub_25438E310(v21, v22);
      memset(v31, 0, sizeof(v31));
      sub_2542DA948(v31, &unk_27F5E2798);
      v32 = v26;
      v33 = v5;
      v34 = v11;
      v35 = v2;
      v36 = v4;
      LOWORD(v37) = v6 & 0x101;
      v23 = BYTE1(v6) & 1;
      v38 = v3;
      v39 = v7;
      v24 = MEMORY[0x277D84F98];
      v40 = MEMORY[0x277D84F98];
      v41 = MEMORY[0x277D84F98];
      v6 = v37;
      sub_254392E10(&v32, v30);
      v15 = v26;
      v14 = v23;
      v13 = v20;
      v17 = v24;
      v16 = __PAIR128__(v11, v29);
      v12 = v24;
      v5 = v4;
      v9 = v7;
      v10 = v17;
      v28 = v26;
    }

    else
    {
      OUTLINED_FUNCTION_8_20();
      v10 = 0;
      OUTLINED_FUNCTION_98_1();
      v17 = MEMORY[0x277D84F98];
      v15 = v26;
    }
  }

  else
  {
    sub_2542DA948(__dst, &unk_27F5E27A0);
    v11 = 0;
    OUTLINED_FUNCTION_8_20();
    v15.n128_f64[0] = OUTLINED_FUNCTION_98_1();
    v17 = MEMORY[0x277D84F98];
  }

  v27 = v16;
  v32 = v15;
  v33 = v16;
  v34 = v11;
  v35 = v2;
  v36 = v4;
  LOBYTE(v37) = v13;
  BYTE1(v37) = v14;
  HIWORD(v37) = 0;
  *(&v37 + 2) = 0;
  v38 = v3;
  v39 = v7;
  v40 = v12;
  v41 = v17;
  sub_254392D24(&v32);
  result = v28;
  *a1 = v28;
  *(a1 + 1) = v27;
  a1[4] = v2;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v3;
  a1[8] = v9;
  a1[9] = v10;
  a1[10] = v10;
  return result;
}

void (*CarrySettings.CarryDevice.serverConfiguration.modify(void *a1))(void **a1, char a2, double a3)
{
  v3 = __swift_coroFrameAllocStub(0x128uLL);
  *a1 = v3;
  v3[36] = v1;
  CarrySettings.CarryDevice.serverConfiguration.getter();
  return sub_2543854FC;
}

void sub_2543854FC(void **a1, char a2, double a3)
{
  v3 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_111_1((v3 + 144));
    OUTLINED_FUNCTION_111_1(v7);
    OUTLINED_FUNCTION_50_3();
    sub_25439331C(v4);
    CarrySettings.CarryDevice.serverConfiguration.setter(v7);
    OUTLINED_FUNCTION_111_1((v3 + 72));
    OUTLINED_FUNCTION_58_3();
    sub_2542DA948(v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_111_1(v7);
    CarrySettings.CarryDevice.serverConfiguration.setter(v7);
  }

  free(v3);
}

void CarrySettings.CarryDevice.profiles.getter()
{
  OUTLINED_FUNCTION_88();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E27A8, &unk_2543B1EF0);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_95_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  OUTLINED_FUNCTION_110(v6);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_46_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_93_3();
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = OUTLINED_FUNCTION_77_4();
  sub_25439331C(v15);
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_35_7(v0);
  if (v16)
  {
    sub_2542DA948(v0, &qword_27F5E0370);
LABEL_15:
    OUTLINED_FUNCTION_86();
  }

  else
  {
    v38 = v4;
    (*(v10 + 16))(v2, v0 + dword_27F5E0388, v8);
    OUTLINED_FUNCTION_0_41();
    sub_25438704C(v0, v17);
    v36 = v10;
    (*(v10 + 32))(v14, v2, v8);
    v37 = v8;
    sub_2543A2448();
    v18 = MEMORY[0x277D84F98];
    v39 = v14;
    for (i = v1; ; v1 = i)
    {
      sub_2543A2468();
      v19 = *(&v47 + 1);
      if (!*(&v47 + 1))
      {
        (*(v38 + 8))(v1, v41);
        (*(v36 + 8))(v14, v37);
        goto LABEL_15;
      }

      v20 = v47;
      v42 = *(&v48 + 1);
      v43 = v49;
      v44 = v51;
      v45 = v52;

      swift_isUniquelyReferenced_nonNull_native();
      v46 = v18;
      v21 = sub_25438E0D0(v20, v19);
      if (__OFADD__(v18[2], (v22 & 1) == 0))
      {
        break;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E27B0, &qword_2543B1F00);
      if (sub_2543A3368())
      {
        v25 = sub_25438E0D0(v20, v19);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_18;
        }

        v23 = v25;
      }

      if (v24)
      {

        v18 = v46;
        v27 = v46[7] + 56 * v23;
        v29 = *(v27 + 16);
        v28 = *(v27 + 32);
        v30 = *v27;
        v50 = *(v27 + 48);
        v48 = v29;
        v49 = v28;
        v47 = v30;
        OUTLINED_FUNCTION_52_3(v27);
        sub_25438E208(&v47);
      }

      else
      {
        v18 = v46;
        v46[(v23 >> 6) + 8] |= 1 << v23;
        v31 = (v18[6] + 16 * v23);
        *v31 = v20;
        v31[1] = v19;
        OUTLINED_FUNCTION_52_3(v18[7] + 56 * v23);
        v32 = v18[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_17;
        }

        v18[2] = v34;
      }

      v14 = v39;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_2543A3648();
    __break(1u);
  }
}

void CarrySettings.CarryDevice.profiles.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_132_1();
  a17 = v21;
  a18 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  v26 = OUTLINED_FUNCTION_110(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_93_3();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  OUTLINED_FUNCTION_104_0();
  v30 = OUTLINED_FUNCTION_79_3();
  if (!__swift_getEnumTagSinglePayload(v30, v31, v19))
  {
    sub_254385B38();
  }

  sub_25439331C(v18);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v19);
  v33 = OUTLINED_FUNCTION_77_4();
  sub_2542DA948(v33, v34);
  if (EnumTagSinglePayload == 1)
  {
    sub_254382940();
    OUTLINED_FUNCTION_7_17();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v19);
    sub_25439313C(v20);
  }

  v38 = OUTLINED_FUNCTION_71_3();
  if (!__swift_getEnumTagSinglePayload(v38, v39, v19))
  {
    sub_254385DA0(v24);
  }

  OUTLINED_FUNCTION_133_1();
}

uint64_t sub_254385B38()
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E27A8, &unk_2543B1EF0);
  v15[0] = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v2 = v15 - v1;
  v15[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  v16 = v0;
  sub_2543A2448();
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2543A2468();
    v4 = *(&v24[0] + 1);
    if (!*(&v24[0] + 1))
    {
      break;
    }

    v5 = *&v24[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2542F0D64();
      v3 = v8;
    }

    v6 = v3[2];
    if (v6 >= v3[3] >> 1)
    {
      sub_2542F0D64();
      v3 = v9;
    }

    v3[2] = v6 + 1;
    v7 = &v3[2 * v6];
    v7[4] = v5;
    v7[5] = v4;
  }

  (*(v15[0] + 8))(v2, v17);
  v10 = v3[2];
  if (v10)
  {
    v11 = v10 - 1;
    for (i = v3 + 5; ; i += 2)
    {
      v13 = *i;
      v22 = *(i - 1);
      v23 = v13;
      sub_2543A2768();
      sub_2543A2438();
      v24[0] = v18;
      v24[1] = v19;
      v24[2] = v20;
      v24[3] = v21;
      sub_2542DA948(v24, &unk_27F5E2798);

      if (!v11)
      {
        break;
      }

      --v11;
    }
  }
}

uint64_t sub_254385DA0(uint64_t a1)
{
  v1 = a1 + 64;
  OUTLINED_FUNCTION_84_1();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  result = sub_2543A2768();
  v8 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v4 = *(v1 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      do
      {
LABEL_7:
        v4 &= v4 - 1;
        sub_2543A2768();
        sub_2543A2768();
        sub_2543A2768();
        sub_2543A2768();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
        result = sub_2543A24A8();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*CarrySettings.CarryDevice.profiles.modify(void *a1))()
{
  a1[1] = v1;
  CarrySettings.CarryDevice.profiles.getter();
  *a1 = v3;
  return sub_254385F38;
}

void CarrySettings.CarryDevice.init(appleConnectSettings:deviceInfo:serverConfig:profiles:)()
{
  OUTLINED_FUNCTION_88();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v57 = v7;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2788, &unk_2543B1EC8);
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_46_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0368, &qword_2543A9910);
  v13 = OUTLINED_FUNCTION_110(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  OUTLINED_FUNCTION_110(v17);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11_3();
  memcpy(v67, v6, sizeof(v67));
  memcpy(v68, v4, 0x48uLL);
  v19 = _s20CarryDeviceMergeableVMa(0);
  v20 = OUTLINED_FUNCTION_71_3();
  __swift_storeEnumTagSinglePayload(v20, v21, 1, v19);
  sub_254382940();
  OUTLINED_FUNCTION_7_17();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v19);
  v25 = OUTLINED_FUNCTION_2_12();
  sub_25439313C(v25);
  v26 = OUTLINED_FUNCTION_71_3();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, v27, v19);
  v59 = v9;
  if (!EnumTagSinglePayload)
  {
    sub_25439331C(v57);
    sub_254384140(v0);
    OUTLINED_FUNCTION_50_3();
    sub_25439331C(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
    sub_2543A21A8();
    sub_2542DA948(v16, &qword_27F5E0368);
  }

  v30 = OUTLINED_FUNCTION_71_3();
  if (__swift_getEnumTagSinglePayload(v30, v31, v19))
  {
    sub_2542DA948(v67, &unk_27F5E2790);
  }

  else
  {
    memcpy(v66, v67, sizeof(v66));
    sub_254384918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
    sub_2543A21A8();
  }

  v32 = OUTLINED_FUNCTION_71_3();
  if (__swift_getEnumTagSinglePayload(v32, v33, v19))
  {
    sub_2542DA948(v68, &unk_27F5E27A0);
  }

  else
  {
    memcpy(v66, v68, 0x48uLL);
    sub_254385268(v60, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
    sub_2543A21A8();
  }

  v34 = 0;
  v35 = v2 + 64;
  OUTLINED_FUNCTION_84_1();
  v38 = v37 & v36;
  v40 = (v39 + 63) >> 6;
  v58 = v2;
  while (v38)
  {
    v41 = v38;
LABEL_16:
    v38 = (v41 - 1) & v41;
    v43 = OUTLINED_FUNCTION_71_3();
    if (!__swift_getEnumTagSinglePayload(v43, v44, v19))
    {
      v45 = __clz(__rbit64(v41)) | (v34 << 6);
      v46 = *(v2 + 56) + 56 * v45;
      v47 = *(v46 + 40);
      v48 = *(v46 + 48);
      v49 = *(v46 + 33);
      v50 = *(v46 + 32);
      v51 = *(v46 + 16);
      v52 = *(v46 + 24);
      v53 = *(v46 + 8);
      v56 = (*(v2 + 48) + 16 * v45);
      v55 = *v56;
      v54 = v56[1];
      v60[0] = *v46;
      v60[1] = v53;
      v60[2] = v51;
      v60[3] = v52;
      v61 = v50;
      v62 = v49;
      v63 = v47;
      v64 = v48;
      v65 = MEMORY[0x277D84F98];
      v66[0] = v55;
      v66[1] = v54;
      sub_2543A2768();
      sub_2543A2768();
      sub_2543A2768();
      sub_2543A2768();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
      v2 = v58;
      sub_2543A24A8();
    }
  }

  while (1)
  {
    v42 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v42 >= v40)
    {

      sub_2542DA948(v57, &qword_27F5E2788);
      OUTLINED_FUNCTION_86();
      return;
    }

    v41 = *(v35 + 8 * v42);
    ++v34;
    if (v41)
    {
      v34 = v42;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_2543863D4(uint64_t a1, uint64_t a2)
{
  qword_27F5F88B0 = 0xD000000000000014;
  *algn_27F5F88B8 = 0x80000002543BA790;
  qword_27F5F88C0 = swift_getKeyPath();
  unk_27F5F88C8 = 0x6E49656369766564;
  qword_27F5F88D0 = 0xEA00000000006F66;
  qword_27F5F88D8 = swift_getKeyPath();
  qword_27F5F88E0 = 0x73656C69666F7270;
  qword_27F5F88E8 = 0xE800000000000000;
  qword_27F5F88F0 = swift_getKeyPath();
  unk_27F5F88F8 = 0xD000000000000013;
  qword_27F5F8900 = 0x80000002543BA7B0;
  result = swift_getKeyPath();
  qword_27F5F8908 = result;
  return result;
}

void sub_2543864A0()
{
  OUTLINED_FUNCTION_88();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E27A8, &unk_2543B1EF0);
  OUTLINED_FUNCTION_3();
  v22 = v5;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0368, &qword_2543A9910);
  OUTLINED_FUNCTION_110(v9);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_96_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  sub_2543A2198();
  sub_2543925F0(v3);
  sub_2542DA948(v1, &qword_27F5E0368);
  _s20CarryDeviceMergeableVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
  sub_2543A2198();
  memcpy(v30, v29, 0xA8uLL);
  if (sub_2543036E4(v30) == 1)
  {
    sub_2543A3708();
  }

  else
  {
    memcpy(v28, v29, sizeof(v28));
    sub_2543A3708();
    sub_254388EB0(v3);
    sub_2542DA948(v29, &dword_27F5E0388);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
  sub_2543A2198();
  if (v26[10])
  {
    memcpy(v27, v26, sizeof(v27));
    sub_2543A3708();
    sub_25438BC98(v3);
    sub_2542DA948(v26, &qword_27F5E19E0);
  }

  else
  {
    sub_2543A3708();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  v23 = v0;
  sub_2543A2448();
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2543A2468();
    v12 = v25;
    if (!v25)
    {
      break;
    }

    v13 = v24;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2542F0D64();
      v11 = v16;
    }

    v14 = *(v11 + 16);
    if (v14 >= *(v11 + 24) >> 1)
    {
      sub_2542F0D64();
      v11 = v17;
    }

    *(v11 + 16) = v14 + 1;
    v15 = v11 + 16 * v14;
    *(v15 + 32) = v13;
    *(v15 + 40) = v12;
  }

  (*(v22 + 8))(v8, v4);
  v24 = v11;
  sub_2543A2768();
  v18 = sub_254391ADC(&v24);
  v19 = v24;
  MEMORY[0x28223BE20](v18);
  v20 = v23;
  *(&v21 - 2) = v3;
  *(&v21 - 1) = v20;
  sub_2543821FC(sub_25439310C, (&v21 - 4), v19);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_254386874(uint64_t *a1, uint64_t a2)
{
  _s20CarryDeviceMergeableVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  sub_2543A2498();
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  v8[3] = v7;
  if (!*(&v4 + 1))
  {
    return sub_2543A3708();
  }

  sub_2543A3708();
  sub_25438ABC8(a2);
  return sub_2542DA948(v8, &unk_27F5E2798);
}

void sub_25438695C()
{
  OUTLINED_FUNCTION_88();
  v2 = v1;
  v4 = v3;
  _s29AppleConnectSettingsMergeableVMa(0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9();
  v59[0] = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E2B98, &qword_2543B39F8) - 8;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_21();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0368, &qword_2543A9910);
  v11 = OUTLINED_FUNCTION_110(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_10();
  v60 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v59 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v59 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  v59[1] = v4;
  sub_2543A2198();
  v59[2] = v2;
  sub_2543A2198();
  v20 = *(v8 + 56);
  sub_25439331C(v19);
  sub_25439331C(v16);
  OUTLINED_FUNCTION_131_1(v0);
  if (v26)
  {
    OUTLINED_FUNCTION_17_4();
    sub_2542DA948(v21, v22);
    OUTLINED_FUNCTION_17_4();
    sub_2542DA948(v23, v24);
    OUTLINED_FUNCTION_131_1(v0 + v20);
    if (v26)
    {
      sub_2542DA948(v0, &qword_27F5E0368);
LABEL_11:
      _s20CarryDeviceMergeableVMa(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
      sub_2543A2198();
      sub_2543A2198();
      memcpy(v68, v69, 0xA8uLL);
      memcpy(&v68[21], v70, 0xA8uLL);
      memcpy(v71, v69, 0xA8uLL);
      if (sub_2543036E4(v71) == 1)
      {
        memcpy(v67, &v68[21], 0xA8uLL);
        if (sub_2543036E4(v67) == 1)
        {
          memcpy(v66, v68, sizeof(v66));
          sub_2542DA948(v66, &dword_27F5E0388);
LABEL_19:
          sub_25434F768();
          sub_25434F7BC();
          if ((sub_2543A2458() & 1) == 0)
          {
            goto LABEL_17;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
          sub_2543A2198();
          sub_2543A2198();
          OUTLINED_FUNCTION_126_1(v65);
          v47 = v61[10];
          v48 = v66[10];
          if (v61[10])
          {
            if (v66[10])
            {
              memcpy(v62, v66, 0x50uLL);
              v62[10] = v66[10];
              memcpy(v68, v62, 0x58uLL);
              OUTLINED_FUNCTION_126_1(v67);
              v67[10] = v47;
              OUTLINED_FUNCTION_50_3();
              sub_25439331C(v49);
              OUTLINED_FUNCTION_50_3();
              sub_25439331C(v50);
              sub_25438B884(v67);
              OUTLINED_FUNCTION_58_3();
              sub_2542DA948(v51, v52);
              OUTLINED_FUNCTION_58_3();
              sub_2542DA948(v53, v54);
              OUTLINED_FUNCTION_58_3();
              sub_2542DA948(v55, v56);
              memcpy(v63, v65, sizeof(v63));
              v64 = v47;
              OUTLINED_FUNCTION_58_3();
              sub_2542DA948(v57, v58);
              goto LABEL_17;
            }
          }

          else if (!v66[10])
          {
            OUTLINED_FUNCTION_126_1(v68);
            v68[10] = 0;
            sub_2542DA948(v68, &qword_27F5E19E0);
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_126_1(v68);
          v68[10] = v47;
          memcpy(&v68[11], v66, 0x50uLL);
          v68[21] = v48;
          v32 = &unk_27F5E2BA8;
          v33 = v68;
          goto LABEL_16;
        }
      }

      else
      {
        memcpy(v67, &v68[21], 0xA8uLL);
        if (sub_2543036E4(v67) != 1)
        {
          memcpy(v61, &v68[21], sizeof(v61));
          sub_25439331C(v69);
          sub_25439331C(v70);
          sub_2543888E0();
          v38 = v37;
          OUTLINED_FUNCTION_17_4();
          sub_2542DA948(v39, v40);
          OUTLINED_FUNCTION_17_4();
          sub_2542DA948(v41, v42);
          OUTLINED_FUNCTION_17_4();
          sub_2542DA948(v43, v44);
          memcpy(v66, v68, sizeof(v66));
          OUTLINED_FUNCTION_17_4();
          sub_2542DA948(v45, v46);
          if ((v38 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_19;
        }
      }

      memcpy(v67, v68, sizeof(v67));
      v32 = &unk_27F5E2BA0;
      v33 = v67;
LABEL_16:
      sub_2542DA948(v33, v32);
      goto LABEL_17;
    }

LABEL_9:
    v32 = &qword_27F5E2B98;
    v33 = v0;
    goto LABEL_16;
  }

  v25 = v60;
  sub_25439331C(v0);
  OUTLINED_FUNCTION_131_1(v0 + v20);
  if (v26)
  {
    OUTLINED_FUNCTION_17_4();
    sub_2542DA948(v27, v28);
    OUTLINED_FUNCTION_17_4();
    sub_2542DA948(v29, v30);
    OUTLINED_FUNCTION_3_27();
    sub_25438704C(v25, v31);
    goto LABEL_9;
  }

  v34 = v59[0];
  sub_254382EC4();
  sub_25438C9F4();
  v36 = v35;
  sub_25438704C(v34, _s29AppleConnectSettingsMergeableVMa);
  sub_2542DA948(v16, &qword_27F5E0368);
  sub_2542DA948(v19, &qword_27F5E0368);
  sub_25438704C(v25, _s29AppleConnectSettingsMergeableVMa);
  sub_2542DA948(v0, &qword_27F5E0368);
  if (v36)
  {
    goto LABEL_11;
  }

LABEL_17:
  OUTLINED_FUNCTION_86();
}

uint64_t sub_25438704C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_26();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_254387110@<X0>(void *a1@<X8>)
{
  if (qword_27F5DF098 != -1)
  {
    swift_once();
  }

  v2 = *algn_27F5F88B8;
  v4 = qword_27F5F88C0;
  v3 = unk_27F5F88C8;
  v5 = qword_27F5F88D0;
  v6 = qword_27F5F88D8;
  v7 = qword_27F5F88E0;
  v8 = qword_27F5F88E8;
  v10 = qword_27F5F88F0;
  v9 = unk_27F5F88F8;
  v11 = qword_27F5F8900;
  v12 = qword_27F5F8908;
  *a1 = qword_27F5F88B0;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v9;
  a1[10] = v11;
  a1[11] = v12;
  sub_2543A2768();

  sub_2543A2768();

  sub_2543A2768();

  sub_2543A2768();
}

uint64_t sub_2543871F8(uint64_t a1)
{
  v2 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214DA08](a1, v2);
}

uint64_t sub_254387270(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_2543872D8(uint64_t a1)
{
  v2 = sub_25438F8C0(&qword_27F5E2950, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_254387344(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D9F0](a1, a2, v4);
}

uint64_t sub_2543873C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D998](a1, a2, v4);
}

uint64_t sub_254387444(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D9C0](a1, a2, v4);
}

uint64_t sub_2543874C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214DA00](a1, a2, v4);
}

uint64_t sub_25438753C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D9C8](a1, a2, a3, v6);
}

uint64_t sub_2543875D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D9F8](a1, a2, v4);
}

uint64_t sub_25438764C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D9D0](a1, a2, v4);
}

uint64_t sub_2543876C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D9B0](a1, a2, v4);
}

uint64_t sub_25438774C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D9A8](a1, a2, v4);
}

uint64_t sub_2543877D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D990](a1, a2, a3, v6);
}

uint64_t sub_254387864(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D978](a1, a2, v4);
}

uint64_t sub_2543878E0(uint64_t a1)
{
  v2 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D9A0](a1, v2);
}

uint64_t sub_25438794C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D980](a1, a2, v4);
}

uint64_t sub_2543879D0(uint64_t a1, uint64_t a2)
{
  sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return sub_2543A23B8();
}

void sub_254387A54()
{
  sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  JUMPOUT(0x259C08EA0);
}

uint64_t sub_254387CD8(uint64_t a1)
{
  v2 = sub_25438F8C0(&qword_27F5E1A40, _s20CarryDeviceMergeableVMa);

  return MEMORY[0x28214D988](a1, v2);
}

__n128 CarrySettings.DeviceDisplayMetaData.init(name:model:pairInfo:prodFused:groupInfo:roomInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, char a6@<W5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a5[1];
  *(a9 + 64) = *a5;
  *(a9 + 80) = v9;
  v10 = a7[1];
  *a9 = *a7;
  *(a9 + 16) = v10;
  result = *a8;
  v12 = *(a8 + 16);
  *(a9 + 104) = *a8;
  *(a9 + 48) = a1;
  *(a9 + 56) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 96) = a6;
  *(a9 + 120) = v12;
  return result;
}

BOOL static CarrySettings.DeviceDisplayMetaData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v157 = a1[9];
  v158 = a1[8];
  v159 = a1[10];
  v160 = a1[11];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v155 = a2[9];
  v156 = a2[8];
  if (!v3)
  {
    v149 = a2[7];
    v150 = a2[6];
    v153 = a1[5];
    v154 = a1[4];
    v151 = a1[7];
    v152 = a1[6];
    v147 = a2[10];
    v148 = a2[11];
    v145 = *(a2 + 96);
    v146 = *(a1 + 96);
    OUTLINED_FUNCTION_121_1();
    sub_25438E238(v2, 0);
    if (!v7)
    {
      OUTLINED_FUNCTION_125_0();
      goto LABEL_24;
    }

    v24 = OUTLINED_FUNCTION_15_12();
    sub_25438E238(v24, v25);
LABEL_17:
    v161 = v2;
    v162 = v3;
    v163 = v4;
    v164 = v5;
    v165 = v6;
    v166 = v7;
    v167 = v9;
LABEL_18:
    v168 = v8;
LABEL_19:
    sub_2542DA948(&v161, &unk_27F5E27B8);
    return 0;
  }

  if (!v7)
  {
    v26 = OUTLINED_FUNCTION_4_21();
    sub_25438E238(v26, v27);
    OUTLINED_FUNCTION_125_0();
    v28 = OUTLINED_FUNCTION_4_21();
    sub_25438E238(v28, v29);

    goto LABEL_17;
  }

  v149 = a2[7];
  v150 = a2[6];
  v153 = a1[5];
  v154 = a1[4];
  v151 = a1[7];
  v152 = a1[6];
  v147 = a2[10];
  v148 = a2[11];
  v145 = *(a2 + 96);
  v146 = *(a1 + 96);
  OUTLINED_FUNCTION_121_1();
  v12 = v2 == v6 && v3 == v7;
  if (!v12 && (sub_2543A3608() & 1) == 0)
  {
    v59 = OUTLINED_FUNCTION_4_21();
    sub_25438E238(v59, v60);
    v61 = OUTLINED_FUNCTION_15_12();
    sub_25438E238(v61, v62);
    v63 = OUTLINED_FUNCTION_4_21();
    sub_25438E238(v63, v64);
    v65 = OUTLINED_FUNCTION_15_12();
    sub_25438E27C(v65, v66);

    v67 = OUTLINED_FUNCTION_4_21();
LABEL_48:
    sub_25438E27C(v67, v68);
    return 0;
  }

  if (v4 == v9 && v5 == v8)
  {
    v31 = OUTLINED_FUNCTION_4_21();
    sub_25438E238(v31, v32);
    v33 = OUTLINED_FUNCTION_120_1();
    sub_25438E238(v33, v34);
    v35 = OUTLINED_FUNCTION_4_21();
    sub_25438E238(v35, v36);
    v37 = OUTLINED_FUNCTION_120_1();
    sub_25438E27C(v37, v38);

LABEL_24:
    v39 = OUTLINED_FUNCTION_4_21();
    sub_25438E27C(v39, v40);
    goto LABEL_25;
  }

  v136 = sub_2543A3608();
  v14 = OUTLINED_FUNCTION_4_21();
  sub_25438E238(v14, v15);
  v16 = OUTLINED_FUNCTION_15_12();
  sub_25438E238(v16, v17);
  v18 = OUTLINED_FUNCTION_4_21();
  sub_25438E238(v18, v19);
  v20 = OUTLINED_FUNCTION_15_12();
  sub_25438E27C(v20, v21);

  v22 = OUTLINED_FUNCTION_4_21();
  sub_25438E27C(v22, v23);
  if ((v136 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  if (v154 != v10 || v153 != v11)
  {
    OUTLINED_FUNCTION_50_3();
    if ((sub_2543A3608() & 1) == 0)
    {
      return 0;
    }
  }

  v42 = v152 == v150 && v151 == v149;
  if (!v42 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

  if (!v157)
  {
    v45 = v158;
    v44 = v159;
    v43 = v160;
    OUTLINED_FUNCTION_38_2();
    sub_25438E238(v69, v70);
    v47 = v155;
    v46 = v156;
    if (!v155)
    {
      sub_25438E238(v156, 0);
      OUTLINED_FUNCTION_38_2();
      sub_25438E27C(v88, v89);
      if (v146 != v145)
      {
        return 0;
      }

      goto LABEL_59;
    }

    OUTLINED_FUNCTION_65();
    v71 = v147;
    v8 = v148;
    OUTLINED_FUNCTION_100_1();
    sub_25438E238(v72, v73);
    goto LABEL_52;
  }

  v44 = v159;
  v43 = v160;
  v45 = v158;
  v47 = v155;
  v46 = v156;
  if (!v155)
  {
    v74 = OUTLINED_FUNCTION_2_39();
    sub_25438E238(v74, v75);
    v71 = v147;
    v8 = v148;
    OUTLINED_FUNCTION_100_1();
    sub_25438E238(v76, v77);
    v78 = OUTLINED_FUNCTION_2_39();
    sub_25438E238(v78, v79);

LABEL_52:
    v161 = v45;
    v162 = v157;
    v163 = v44;
    v164 = v43;
    v165 = v46;
    v166 = v47;
    v167 = v71;
    goto LABEL_18;
  }

  v48 = v158 == v156 && v157 == v155;
  if (v48 || (OUTLINED_FUNCTION_37_5(), (sub_2543A3608() & 1) != 0))
  {
    if (v159 == v147 && v160 == v148)
    {
      v80 = OUTLINED_FUNCTION_2_39();
      sub_25438E238(v80, v81);
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_38_2();
      sub_25438E238(v82, v83);
      v84 = OUTLINED_FUNCTION_2_39();
      sub_25438E238(v84, v85);
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_38_2();
      sub_25438E27C(v86, v87);
      v8 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_89_4();
      v50 = sub_2543A3608();
      v51 = OUTLINED_FUNCTION_2_39();
      sub_25438E238(v51, v52);
      v53 = OUTLINED_FUNCTION_32_2();
      sub_25438E238(v53, v54);
      v55 = OUTLINED_FUNCTION_2_39();
      sub_25438E238(v55, v56);
      v57 = OUTLINED_FUNCTION_32_2();
      sub_25438E27C(v57, v58);
      v8 = v50 ^ 1u;
    }
  }

  else
  {
    v90 = OUTLINED_FUNCTION_2_39();
    sub_25438E238(v90, v91);
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_100_1();
    sub_25438E238(v92, v93);
    v94 = OUTLINED_FUNCTION_2_39();
    sub_25438E238(v94, v95);
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_100_1();
    sub_25438E27C(v96, v97);
    v8 = 1;
  }

  v98 = OUTLINED_FUNCTION_2_39();
  sub_25438E27C(v98, v99);
  result = 0;
  if ((v8 & 1) == 0 && ((v146 ^ v145) & 1) == 0)
  {
LABEL_59:
    v100 = v141;
    if (v141)
    {
      v101 = v142;
      v102 = v143;
      if (v139)
      {
        v103 = v142 == v140 && v141 == v139;
        if (v103 || (v104 = sub_2543A3608(), v100 = v141, v101 = v142, v102 = v143, (v104 & 1) != 0))
        {
          if (v102 != v137 || v144 != v138)
          {
            OUTLINED_FUNCTION_89_4();
            v106 = sub_2543A3608();
            v107 = OUTLINED_FUNCTION_2_39();
            sub_25438E238(v107, v108);
            v109 = OUTLINED_FUNCTION_32_2();
            sub_25438E238(v109, v110);
            v111 = OUTLINED_FUNCTION_2_39();
            sub_25438E238(v111, v112);
            v113 = OUTLINED_FUNCTION_32_2();
            sub_25438E27C(v113, v114);

            v115 = OUTLINED_FUNCTION_2_39();
            sub_25438E27C(v115, v116);
            return (v106 & 1) != 0;
          }

          sub_25438E238(v101, v100);
          OUTLINED_FUNCTION_65();
          OUTLINED_FUNCTION_20_10();
          sub_25438E238(v122, v123);
          OUTLINED_FUNCTION_4_1();
          OUTLINED_FUNCTION_20_10();
          sub_25438E238(v124, v125);
          OUTLINED_FUNCTION_65();
          OUTLINED_FUNCTION_20_10();
          sub_25438E27C(v126, v127);

          OUTLINED_FUNCTION_4_1();
LABEL_78:
          OUTLINED_FUNCTION_20_10();
          sub_25438E27C(v128, v129);
          return 1;
        }

        OUTLINED_FUNCTION_74_2();
        v130 = OUTLINED_FUNCTION_92();
        sub_25438E238(v130, v131);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_20_10();
        sub_25438E238(v132, v133);
        v134 = OUTLINED_FUNCTION_92();
        sub_25438E27C(v134, v135);

        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_20_10();
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_74_2();
      v117 = v140;
      v119 = v137;
      v118 = v138;
      sub_25438E238(v140, 0);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_20_10();
      sub_25438E238(v120, v121);
    }

    else
    {
      v102 = v142;
      v43 = v143;
      v8 = v144;
      sub_25438E238(v142, 0);
      if (!v139)
      {
        sub_25438E238(v140, 0);
        goto LABEL_78;
      }

      v117 = v140;
      v119 = v137;
      v118 = v138;
      v46 = v139;
      sub_25438E238(v140, v139);
    }

    v161 = v102;
    v162 = 0;
    v163 = v43;
    v164 = v8;
    v165 = v117;
    v166 = v46;
    v167 = v119;
    v168 = v118;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_2543884CC(uint64_t a1)
{
  if ((a1 + 1) < 7)
  {
    return a1 + 1;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_2543884E0()
{
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_92_3();
  v3 = v3 && v2 == v0;
  if (v3 || (OUTLINED_FUNCTION_12_21() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x666E4970756F7267 && v0 == 0xE90000000000006FLL;
    if (v5 || (OUTLINED_FUNCTION_19_8(0x666E4970756F7267) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 0x6C65646F6DLL && v0 == 0xE500000000000000;
      if (v6 || (OUTLINED_FUNCTION_19_8(0x6C65646F6DLL) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v7 = v1 == 1701667182 && v0 == 0xE400000000000000;
        if (v7 || (OUTLINED_FUNCTION_19_8(1701667182) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v8 = v1 == 0x6F666E4972696170 && v0 == 0xE800000000000000;
          if (v8 || (OUTLINED_FUNCTION_19_8(0x6F666E4972696170) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v9 = v1 == 0x65737546646F7270 && v0 == 0xE900000000000064;
            if (v9 || (OUTLINED_FUNCTION_19_8(0x65737546646F7270) & 1) != 0)
            {

              return 5;
            }

            else if (v1 == 0x6F666E496D6F6F72 && v0 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              OUTLINED_FUNCTION_19_8(0x6F666E496D6F6F72);
              OUTLINED_FUNCTION_109_0();
              if (v1)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2543886C0(char a1)
{
  result = 0x666E4970756F7267;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C65646F6DLL;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x6F666E4972696170;
      break;
    case 5:
      result = 0x65737546646F7270;
      break;
    case 6:
      result = 0x6F666E496D6F6F72;
      break;
    default:
      result = OUTLINED_FUNCTION_18_10();
      break;
  }

  return result;
}

uint64_t sub_2543887A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2543884CC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2543887DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2543884E0();
  *a1 = result;
  return result;
}

uint64_t sub_254388804@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2543886B0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_254388868(uint64_t a1)
{
  v2 = sub_2543906E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2543888A4(uint64_t a1)
{
  v2 = sub_2543906E0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2543888E0()
{
  OUTLINED_FUNCTION_59_3();
  v4 = *v2;
  v3 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = v8[4];
  if (v3)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    v61 = v2[4];
    v64 = v2[3];
    if (v4 != v9 || v3 != v10)
    {
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_89_4();
      v15 = sub_2543A3608();
      v5 = v64;
      if ((v15 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    v16 = v6 == v11 && v5 == v12;
    if (!v16 && (OUTLINED_FUNCTION_68_3() & 1) == 0)
    {
      goto LABEL_57;
    }

    v17 = OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_110_1(v17, v18);
    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_85_0();
    sub_254303B4C(v19, v20);
    sub_25438DB54(v61, v13);
    v58 = v21;

    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_85_0();
    sub_254392F58(v22, v23);
    if ((v58 & 1) == 0)
    {
      return;
    }
  }

  else if (v10)
  {
    goto LABEL_16;
  }

  v28 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (v28 || (sub_2543A3608() & 1) != 0)
  {
    v29 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
    if (v29 || (sub_2543A3608() & 1) != 0)
    {
      v4 = *(v1 + 72);
      v3 = *(v1 + 80);
      v6 = *(v1 + 88);
      v5 = *(v1 + 96);
      v7 = *(v1 + 104);
      v9 = *(v0 + 72);
      v10 = *(v0 + 80);
      v11 = *(v0 + 88);
      v12 = *(v0 + 96);
      v13 = *(v0 + 104);
      if (v3)
      {
        if (!v10)
        {
          goto LABEL_16;
        }

        v62 = *(v1 + 104);
        v65 = *(v1 + 96);
        if (v4 != v9 || v3 != v10)
        {
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_89_4();
          v31 = sub_2543A3608();
          v5 = v65;
          if ((v31 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        v32 = v6 == v11 && v5 == v12;
        if (!v32 && (OUTLINED_FUNCTION_68_3() & 1) == 0)
        {
          goto LABEL_57;
        }

        v33 = OUTLINED_FUNCTION_28_5();
        OUTLINED_FUNCTION_110_1(v33, v34);
        OUTLINED_FUNCTION_9_14();
        OUTLINED_FUNCTION_85_0();
        sub_254303B4C(v35, v36);
        sub_25438DB54(v62, v13);
        v59 = v37;

        OUTLINED_FUNCTION_9_14();
        OUTLINED_FUNCTION_85_0();
        sub_254392F58(v38, v39);
        if ((v59 & 1) == 0)
        {
          return;
        }
      }

      else if (v10)
      {
        goto LABEL_16;
      }

      if ((*(v1 + 112) ^ *(v0 + 112)))
      {
        return;
      }

      v4 = *(v1 + 120);
      v3 = *(v1 + 128);
      v6 = *(v1 + 136);
      v5 = *(v1 + 144);
      v7 = *(v1 + 152);
      v9 = *(v0 + 120);
      v10 = *(v0 + 128);
      v11 = *(v0 + 136);
      v12 = *(v0 + 144);
      v13 = *(v0 + 152);
      if (v3)
      {
        if (v10)
        {
          v63 = *(v1 + 152);
          v66 = *(v1 + 144);
          v40 = v4 == v9 && v3 == v10;
          if (v40 || (OUTLINED_FUNCTION_61_0(), OUTLINED_FUNCTION_89_4(), v41 = sub_2543A3608(), v5 = v66, (v41 & 1) != 0))
          {
            v42 = v6 == v11 && v5 == v12;
            if (v42 || (OUTLINED_FUNCTION_68_3() & 1) != 0)
            {
              v43 = OUTLINED_FUNCTION_28_5();
              OUTLINED_FUNCTION_110_1(v43, v44);
              OUTLINED_FUNCTION_9_14();
              OUTLINED_FUNCTION_85_0();
              sub_254303B4C(v45, v46);
              sub_25438DB54(v63, v13);
              v60 = v47;

              OUTLINED_FUNCTION_9_14();
              OUTLINED_FUNCTION_85_0();
              sub_254392F58(v48, v49);
              if ((v60 & 1) == 0)
              {
                return;
              }

              goto LABEL_60;
            }
          }

LABEL_57:
          v50 = OUTLINED_FUNCTION_28_5();
          OUTLINED_FUNCTION_110_1(v50, v51);
          v52 = OUTLINED_FUNCTION_9_14();
          sub_254303B4C(v52, v53);

          v54 = OUTLINED_FUNCTION_9_14();
          sub_254392F58(v54, v55);
          return;
        }
      }

      else if (!v10)
      {
LABEL_60:
        v56 = *(v1 + 160);
        v57 = *(v0 + 160);

        sub_25438DB54(v56, v57);
        return;
      }

LABEL_16:
      v67[0] = v4;
      v67[1] = v3;
      v67[2] = v6;
      v67[3] = v5;
      v67[4] = v7;
      v67[5] = v9;
      v67[6] = v10;
      v67[7] = v11;
      v67[8] = v12;
      v67[9] = v13;
      v24 = OUTLINED_FUNCTION_28_5();
      sub_254303B4C(v24, v25);
      v26 = OUTLINED_FUNCTION_9_14();
      sub_254303B4C(v26, v27);
      sub_2542DA948(v67, &unk_27F5E2B28);
    }
  }
}