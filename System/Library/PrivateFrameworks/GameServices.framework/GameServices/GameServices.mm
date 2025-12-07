uint64_t sub_1D8434478(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_349()
{
}

uint64_t OUTLINED_FUNCTION_349_0()
{
}

uint64_t sub_1D8434558()
{
  OUTLINED_FUNCTION_148();
  v0 = type metadata accessor for GameServicesActorSystem.TaskQueue(0);
  OUTLINED_FUNCTION_363(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  v2[1] = sub_1D8442F30;

  return sub_1D8435724();
}

uint64_t OUTLINED_FUNCTION_145(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_1D844A4B0(v7, v6, v9, v8, a5, a6);
}

uint64_t OUTLINED_FUNCTION_205()
{
}

uint64_t OUTLINED_FUNCTION_235()
{
}

void OUTLINED_FUNCTION_145_1(uint64_t a1, uint64_t a2)
{

  sub_1D843808C();
}

void GameServicesActorSystem.init(invoker:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_386();
  v4 = v2;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A608, &qword_1D85AAD30);
  OUTLINED_FUNCTION_363(v9);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v13 = type metadata accessor for GameServicesActorSystem.TaskQueue(0);
  OUTLINED_FUNCTION_1();
  v68 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v69 = v17;
  v70 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ADF8, &qword_1D85AAD38);
  OUTLINED_FUNCTION_363(v20);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v21);
  v71 = &v64 - v22;
  v23 = sub_1D85810A8();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_283();
  OUTLINED_FUNCTION_123();
  v72 = v13;
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v13);
  *(v2 + OBJC_IVAR____TtC12GameServices23GameServicesActorSystem_taskRef) = 0;
  *(v2 + 16) = v8;
  *(v2 + 24) = v6;
  type metadata accessor for GameServicesActorRegistry();
  OUTLINED_FUNCTION_70_3();
  v30 = swift_allocObject();
  v31 = sub_1D843628C(v8, v6);
  sub_1D8435098(v31, v32, v33);
  *(v4 + 32) = v30;
  v37 = sub_1D84355A0(v34, v35, v36);
  v38 = *(v25 + 16);
  v73 = v23;
  v38(v3, v37, v23);
  sub_1D843628C(v8, v6);

  v39 = sub_1D8581088();
  v40 = sub_1D8581668();

  sub_1D84364C8(v8, v6);
  v41 = os_log_type_enabled(v39, v40);
  v74 = v8;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v66 = v12;
    v43 = v42;
    v44 = swift_slowAlloc();
    v65 = v19;
    v75[0] = v44;
    *v43 = 136315394;
    v45 = sub_1D8581C28();
    v67 = v6;
    v47 = sub_1D84355C8(v45, v46, v75);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    if (v8)
    {
      v48 = 0;
    }

    else
    {
      v48 = 7632239;
    }

    if (v8)
    {
      v49 = 0xE000000000000000;
    }

    else
    {
      v49 = 0xE300000000000000;
    }

    v50 = sub_1D84355C8(v48, v49, v75);

    *(v43 + 14) = v50;
    v6 = v67;
    _os_log_impl(&dword_1D8433000, v39, v40, "%s ready with%s remote invoker", v43, 0x16u);
    swift_arrayDestroy();
    v19 = v65;
    OUTLINED_FUNCTION_41_4();
    v12 = v66;
    OUTLINED_FUNCTION_41_4();
  }

  (*(v25 + 8))(v3, v73);
  if (*(v4 + 16))
  {
    sub_1D84364C8(v74, v6);
  }

  else
  {
    swift_allocObject();
    swift_weakInit();
    v51 = v71;
    sub_1D8436C54();
    v52 = v72;
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v72);
    v53 = OBJC_IVAR____TtC12GameServices23GameServicesActorSystem_taskQueue;
    swift_beginAccess();
    sub_1D8436EE0(v51, v4 + v53);
    swift_endAccess();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4 + v53, 1, v52);
    v55 = v74;
    if (EnumTagSinglePayload)
    {
      sub_1D84364C8(v74, v6);
      v56 = 0;
    }

    else
    {
      sub_1D8437068(v4 + v53, v19);
      sub_1D8581528();
      OUTLINED_FUNCTION_123();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
      v61 = v70;
      sub_1D8437068(v19, v70);
      v62 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = 0;
      *(v63 + 24) = 0;
      sub_1D84370CC(v61, v63 + v62);
      v56 = sub_1D857DDAC(0, 0, v12, &unk_1D85AAD68, v63);
      sub_1D84364C8(v55, v6);
      sub_1D8437130(v19);
    }

    *(v4 + OBJC_IVAR____TtC12GameServices23GameServicesActorSystem_taskRef) = v56;
  }

  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D8434C3C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D8434C74()
{
  v1 = type metadata accessor for GameServicesActorSystem.TaskQueue(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE00, &qword_1D85AAD58);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE08, &qword_1D85AAD60);
  OUTLINED_FUNCTION_4_0();
  (*(v7 + 8))(v0 + v3 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t OUTLINED_FUNCTION_378(uint64_t a1)
{

  return sub_1D8473E40(a1);
}

uint64_t OUTLINED_FUNCTION_342()
{
}

uint64_t OUTLINED_FUNCTION_355()
{

  return GameServicesActorSystem.makeInvocationEncoder()((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_116_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 168);
  *(v4 + 48) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1)
{

  return sub_1D8581A58();
}

void OUTLINED_FUNCTION_8()
{
  v3[3] = v0;
  v3[4] = v1;
  v3[2] = v2;
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

void OUTLINED_FUNCTION_6_7()
{
  v3[3] = v0;
  v3[4] = v1;
  v3[2] = v2;
}

void sub_1D8435098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_386();
  v11 = sub_1D85816B8();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_309();
  sub_1D8581698();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_228_1();
  v9 = sub_1D85810E8();
  v10 = OUTLINED_FUNCTION_363(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_283();
  sub_1D84362C0();
  sub_1D85810D8();
  sub_1D8436304(&unk_1EE0E0478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE68, &qword_1D85AB5E0);
  sub_1D8436360(&unk_1EE0E0490);
  sub_1D8581748();
  (*(v6 + 104))(v4, *MEMORY[0x1E69E8090], v11);
  *(v3 + 16) = sub_1D85816D8();
  type metadata accessor for GameServicesActorRegistry.WeakDistributedActorReference();
  sub_1D84363B0();
  *(v3 + 24) = sub_1D85811B8();
  OUTLINED_FUNCTION_388();
}

uint64_t OUTLINED_FUNCTION_2(unint64_t *a1)
{

  return sub_1D844A16C(a1, v1, v2, &protocol conformance descriptor for Ref<A>);
}

unint64_t OUTLINED_FUNCTION_1_2(uint64_t a1)
{

  return sub_1D848211C(a1);
}

uint64_t OUTLINED_FUNCTION_90()
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(v0);
}

uint64_t OUTLINED_FUNCTION_42_1(uint64_t a1)
{

  return Ref.init(rawValue:)(v1, v2, a1);
}

unint64_t sub_1D84355C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D84364D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1D8435CE4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_171_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_171_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D8581BA8();
}

uint64_t sub_1D8435724()
{
  OUTLINED_FUNCTION_148();
  v0[6] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE58, &qword_1D85AB5C8);
  v0[7] = v2;
  OUTLINED_FUNCTION_39(v2);
  v0[8] = v3;
  v0[9] = OUTLINED_FUNCTION_332();
  v4 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v0, v0);
}

uint64_t OUTLINED_FUNCTION_369()
{
}

uint64_t OUTLINED_FUNCTION_69_0()
{
  *(v0 + 120) = $DistributedGameKitServiceProtocol.actorSystem.getter();

  return GameServicesActorSystem.makeInvocationEncoder()((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_69_4(unint64_t *a1)
{

  return sub_1D8440D9C(a1, v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_69_6()
{
  *(v3 + 48) = v2;

  return sub_1D8581798();
}

uint64_t sub_1D84359F0()
{
  OUTLINED_FUNCTION_174();
  *(v0 + 80) = type metadata accessor for GameServicesActorSystem.TaskQueue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE08, &qword_1D85AAD60);
  sub_1D8581558();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_7(v1);

  return MEMORY[0x1EEE6D9C8](v2);
}

uint64_t OUTLINED_FUNCTION_175(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[13] = a2;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_175_0()
{
  *(v0 + 40) = *(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_175_2(uint64_t a1, uint64_t a2)
{

  return sub_1D8581AB8();
}

uint64_t OUTLINED_FUNCTION_175_3(uint64_t a1)
{
}

void OUTLINED_FUNCTION_9_0(uint64_t a1@<X8>)
{
  v3[3] = a1;
  v3[4] = v1;
  v3[2] = v2;
}

uint64_t sub_1D8435CE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D8435D40()
{
  v1 = *(v0 + 16);
  sub_1D8436E18(v1, &qword_1ECA3AE28, &qword_1D85AB468);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE00, &qword_1D85AAD58);
  OUTLINED_FUNCTION_4_0();
  v3 = OUTLINED_FUNCTION_151();
  v4(v3);

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_3_1(unint64_t *a1)
{

  return sub_1D844A16C(a1, v1, v2, &protocol conformance descriptor for Ref<A>);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2)
{

  return sub_1D8581AB8();
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1)
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_6(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6340];

  return sub_1D8535E3C(a1, a2, a3, v4);
}

void sub_1D8436030(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE28, &qword_1D85AB468);
  OUTLINED_FUNCTION_366_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE08, &qword_1D85AAD60);
    OUTLINED_FUNCTION_366_0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t OUTLINED_FUNCTION_457()
{
}

uint64_t OUTLINED_FUNCTION_5_1@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

unint64_t OUTLINED_FUNCTION_26(uint64_t a1)
{

  return sub_1D848211C(a1);
}

uint64_t sub_1D843628C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D84362C0()
{
  result = qword_1EE0E0470;
  if (!qword_1EE0E0470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0E0470);
  }

  return result;
}

unint64_t sub_1D8436304(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D8436360(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D84363B0()
{
  result = qword_1EE0E04B8[0];
  if (!qword_1EE0E04B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E04B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_389()
{
}

uint64_t sub_1D843643C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1D85810A8();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D84364C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D84364D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D84372F0(a5, a6);
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
    result = sub_1D85817D8();
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

uint64_t GameServicesActorSystem.assignID<A>(_:)(uint64_t a1)
{
  if (dynamic_cast_existential_1_conditional(a1, a1, &protocol descriptor for GameServicesIdentifiableActor))
  {
    return (*(v1 + 8))();
  }

  sub_1D8581768();

  v3 = sub_1D8581C28();
  MEMORY[0x1DA718990](v3);

  MEMORY[0x1DA718990](0xD000000000000016, 0x80000001D8589650);
  result = sub_1D8581838("Fatal error", 11, 2, 0xD000000000000013, 0x80000001D8589630, "GameServices/GameServicesActorSystem.swift", 42, 2, 337);
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v1, v1);
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = 1;
  *v2 = result;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t a1)
{

  return sub_1D85818E8();
}

void sub_1D8436790(uint64_t a1)
{
  if (!qword_1EE0E05E8[0])
  {
    type metadata accessor for GameServicesActorSystem.TaskQueue(255);
    v1 = sub_1D85816F8();
    if (!v2)
    {
      atomic_store(v1, qword_1EE0E05E8);
    }
  }
}

void sub_1D84367E8(uint64_t a1)
{
  sub_1D8436790(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D8436898(uint64_t a1)
{
  sub_1D8436934(319);
  if (v1 <= 0x3F)
  {
    sub_1D84369A8();
    if (v2 <= 0x3F)
    {
      sub_1D84369F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8436934(uint64_t a1)
{
  if (!qword_1EE0E0488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3AE00, &qword_1D85AAD58);
    v1 = sub_1D85816F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0E0488);
    }
  }
}

void sub_1D84369A8()
{
  if (!qword_1EE0E0480)
  {
    v0 = sub_1D8581578();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E0480);
    }
  }
}

unint64_t sub_1D84369F8()
{
  result = qword_1EE0E02F8;
  if (!qword_1EE0E02F8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE0E02F8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_1D8436A4C(uint64_t a1, uint64_t a2)
{
  sub_1D8581B58();
  sub_1D85812B8();
  v4 = sub_1D8581B98();

  return sub_1D8438A7C(a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_41_1(uint64_t a1)
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v1, v1);
}

void OUTLINED_FUNCTION_41_4()
{

  JUMPOUT(0x1DA719810);
}

void *sub_1D8436BE4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38980, &qword_1D85AB5C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_1D8436C54()
{
  OUTLINED_FUNCTION_386();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE60, &qword_1D85AB5D0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_228_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE28, &qword_1D85AB468);
  OUTLINED_FUNCTION_363(v10);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_128();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE00, &qword_1D85AAD58);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
  (*(v8 + 104))(v0, *MEMORY[0x1E69E8650], v6);
  v19 = type metadata accessor for GameServicesActorSystem.TaskQueue(0);
  sub_1D8581588();
  sub_1D8436E70(v1, v5);
  v20 = (v5 + *(v19 + 24));
  *v20 = &unk_1D85AAD48;
  v20[1] = v3;
  sub_1D8436E18(v1, &qword_1ECA3AE28, &qword_1D85AB468);
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D8436E18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D8436E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE28, &qword_1D85AB468);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8436EE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ADF8, &qword_1D85AAD38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8436F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE28, &qword_1D85AB468);
  OUTLINED_FUNCTION_366_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE08, &qword_1D85AAD60);
  OUTLINED_FUNCTION_366_0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1D8437068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameServicesActorSystem.TaskQueue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D84370CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameServicesActorSystem.TaskQueue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8437130(uint64_t a1)
{
  v2 = type metadata accessor for GameServicesActorSystem.TaskQueue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

void *sub_1D84371D8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
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

  for (; v5; v5 = sub_1D8581328())
  {
    result = sub_1D8436BE4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1D8581758();
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

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_1D85817D8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
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

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D84372F0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D84371D8(a1, a2);
  sub_1D843733C(&unk_1F5392FF8);
  return v3;
}

uint64_t sub_1D843733C(uint64_t result)
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

    result = sub_1D8437420(result, v7, 1, v3);
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

char *sub_1D8437420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38980, &qword_1D85AB5C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1D8437518()
{
  result = qword_1EE0E04B0;
  if (!qword_1EE0E04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E04B0);
  }

  return result;
}

uint64_t sub_1D8437594(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D85810A8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D8581098();
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

uint64_t GameServicesActorSystem.resolve<A>(id:as:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 16))
  {
    return 0;
  }

  v5 = a1[1];
  v7 = *a1;
  v8 = v5;
  result = sub_1D843F288(&v7);
  if (result)
  {
    v7 = result;
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE10, &qword_1D85AAD88);
    if (swift_dynamicCast())
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8437788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D84377E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void Ref<A>.init(bundleID:)()
{
  OUTLINED_FUNCTION_96_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0E8, &unk_1D85A2270);
  *(swift_initStackObject() + 16) = xmmword_1D8590A70;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_97_0();
  v5 = sub_1D84379E4(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_200_2(v5, v6);
  OUTLINED_FUNCTION_160_1();
  sub_1D85811B8();
  v7 = OUTLINED_FUNCTION_221();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = sub_1D8437BA8(v9);
  OUTLINED_FUNCTION_145_1(v10, v11);
  OUTLINED_FUNCTION_68_0();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39470, &unk_1D8592720);
  v13 = OUTLINED_FUNCTION_35_4(v12);
  OUTLINED_FUNCTION_63_1(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t OUTLINED_FUNCTION_227()
{
}

uint64_t OUTLINED_FUNCTION_414()
{

  return sub_1D8581B78();
}

uint64_t OUTLINED_FUNCTION_165()
{
}

uint64_t OUTLINED_FUNCTION_115_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t sub_1D84379E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void))
{
  v7 = OUTLINED_FUNCTION_198_0(a1, a2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = sub_1D8437BA8(v9);
  MEMORY[0x1DA718990](v10);

  v11 = OUTLINED_FUNCTION_115_1();
  MEMORY[0x1DA718990](v11);
  sub_1D8438004(0, a4, a5);
  sub_1D85817E8();
  return 0;
}

uint64_t OUTLINED_FUNCTION_83()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 160);
  *(v0 + 104) = *(v0 + 168);
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = *(v0 + 288);
  return *(v3 + 16);
}

uint64_t OUTLINED_FUNCTION_214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_229(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return sub_1D8580F98();
}

uint64_t sub_1D8437BA8(uint64_t a1)
{
  v1 = sub_1D8581078();
  if (v2)
  {
    if (v2 <= 0)
    {
      __break(1u);
    }

    else if (*v1)
    {
      sub_1D8581C28();
      sub_1D8581288();

      OUTLINED_FUNCTION_111_1();
      sub_1D8437DA4();
      v3 = sub_1D8437DF8();
      OUTLINED_FUNCTION_122_2(v3, v4, v5, MEMORY[0x1E69E6158], v6, v7, v8, v3, v3, MEMORY[0x1E69E5EF8], v19, v20, v21);
      sub_1D8581658();

      return v22;
    }
  }

  sub_1D8581768();

  OUTLINED_FUNCTION_149_0();
  v10 = sub_1D8581C28();
  MEMORY[0x1DA718990](v10);

  OUTLINED_FUNCTION_92_2();
  result = sub_1D8581838(v11, v12, v13, v14, v15, v16, v17, v18, 757);
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_93()
{
}

unint64_t sub_1D8437DA4()
{
  result = qword_1EE0E0498;
  if (!qword_1EE0E0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E0498);
  }

  return result;
}

unint64_t sub_1D8437DF8()
{
  result = qword_1EE0E04A0;
  if (!qword_1EE0E04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E04A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_105_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_105_5(uint64_t a1)
{
  *(v1 + 136) = a1;

  return GameServicesActorSystem.makeInvocationEncoder()((v1 + 16));
}

uint64_t OUTLINED_FUNCTION_94()
{

  return sub_1D8580F98();
}

uint64_t OUTLINED_FUNCTION_331()
{
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581AB8();
}

uint64_t OUTLINED_FUNCTION_94_1()
{

  return sub_1D8581038();
}

void sub_1D8438004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D843808C()
{
  OUTLINED_FUNCTION_386();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v44 = sub_1D8580B88();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v45 = v10 - v9;
  sub_1D8580C68();
  OUTLINED_FUNCTION_1();
  v41 = v12;
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  v15 = v14 - v13;
  sub_1D8580C58();
  sub_1D8580C28();
  MEMORY[0x1DA718270](0x70612E73656D6167, 0xEF6D6F632E656C70);
  MEMORY[0x1DA718990](v5, v3);
  v40 = v15;
  MEMORY[0x1DA718290](47, 0xE100000000000000);
  v16 = 1 << *(v1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v1 + 64);
  v19 = (v16 + 63) >> 6;
  v43 = v7;

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v1 + 64 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      do
      {
LABEL_8:

        OUTLINED_FUNCTION_121_3();
        sub_1D8580B48();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = OUTLINED_FUNCTION_95_3();
          v21 = sub_1D8439370(v24, v25, v26, v21);
        }

        v23 = v21[2];
        if (v23 >= v21[3] >> 1)
        {
          OUTLINED_FUNCTION_87_1();
          v21 = sub_1D8439370(v27, v28, v29, v21);
        }

        v18 &= v18 - 1;

        v21[2] = v23 + 1;
        (*(v43 + 32))(v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v23, v45, v44);
      }

      while (v18);
    }
  }

  sub_1D8439558();

  sub_1D8580BA8();
  sub_1D8580C48();
  if (v30)
  {
    (*(v41 + 8))(v40, v42);
    OUTLINED_FUNCTION_388();
    return;
  }

LABEL_17:
  sub_1D8581768();

  OUTLINED_FUNCTION_149_0();
  MEMORY[0x1DA718990](v5, v3);
  MEMORY[0x1DA718990](0x203A6874697720, 0xE700000000000000);
  OUTLINED_FUNCTION_160_1();
  v31 = sub_1D85811A8();
  MEMORY[0x1DA718990](v31);

  OUTLINED_FUNCTION_92_2();
  sub_1D8581838(v32, v33, v34, v35, v36, v37, v38, v39, 803);
  __break(1u);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void GameServicesActorSystem.actorReady<A>(_:)()
{
  OUTLINED_FUNCTION_386();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1D85810A8();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  v13 = v12 - v11;
  v14 = *(v0 + 32);
  v15 = *(v14 + 16);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v2;
  v16[4] = v14;
  v16[5] = v6;
  OUTLINED_FUNCTION_70_3();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D8438994;
  *(v17 + 24) = v16;
  v37 = sub_1D843896C;
  v38 = v17;
  OUTLINED_FUNCTION_15_5();
  v34 = 1107296256;
  v35 = sub_1D8438944;
  v36 = &block_descriptor_98;
  v18 = _Block_copy(&v33);

  swift_unknownObjectRetain();

  dispatch_sync(v15, v18);
  _Block_release(v18);
  LODWORD(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v22 = sub_1D84355A0(v19, v20, v21);
    (*(v9 + 16))(v13, v22, v7);
    swift_unknownObjectRetain();
    v23 = sub_1D8581088();
    v24 = sub_1D8581668();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v25 = 136315394;
      sub_1D8581798();
      v26 = sub_1D84355C8(v33, v34, &v32);

      *(v25 + 4) = v26;
      *(v25 + 12) = 2080;
      swift_getObjectType();
      v27 = sub_1D8581C28();
      v29 = sub_1D84355C8(v27, v28, &v32);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_1D8433000, v23, v24, "Registered actor id: %s, type: %s", v25, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_41_4();
      OUTLINED_FUNCTION_41_4();
    }

    v30 = OUTLINED_FUNCTION_506();
    v31(v30);
    OUTLINED_FUNCTION_388();
  }
}

uint64_t sub_1D84387E4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t a1, uint64_t a2)
{

  return sub_1D8581AB8();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D8438994()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1D8581798();
  type metadata accessor for GameServicesActorRegistry.WeakDistributedActorReference();
  OUTLINED_FUNCTION_70_3();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  *(v3 + 24) = v1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 24);
  v4 = OUTLINED_FUNCTION_40_0();
  sub_1D857FD5C(v4, v5, v6, v7);
  *(v2 + 24) = v9;

  return swift_endAccess();
}

unint64_t sub_1D8438A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1D8581AB8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_332()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_453()
{
}

void *OUTLINED_FUNCTION_163_2()
{

  return sub_1D8533A40(0, v0, 0);
}

uint64_t sub_1D8438BDC()
{
  OUTLINED_FUNCTION_174();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_4(v1);

  return v4(v3);
}

uint64_t sub_1D8438C74()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_17_5();
  sub_1D85815F8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v1[1] = sub_1D8442FA8;

  return sub_1D8438E8C();
}

uint64_t sub_1D8438D94(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D84440DC;

  return v6(a1);
}

uint64_t sub_1D8438E8C()
{
  OUTLINED_FUNCTION_148();
  v0[17] = v1;
  v0[18] = v10;
  v0[15] = v2;
  v0[16] = v3;
  v0[13] = v4;
  v0[14] = v5;
  v0[19] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C88, &qword_1D859EDF0);
  v6 = sub_1D85815B8();
  v0[20] = v6;
  v0[21] = *(v6 - 8);
  v0[22] = swift_task_alloc();
  v7 = *(v10 - 8);
  v0[23] = v7;
  v0[24] = *(v7 + 64);
  v0[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8438FD8);
}

uint64_t sub_1D8438FD8()
{
  OUTLINED_FUNCTION_174();
  v1 = v0[15];
  v2 = v0[13];

  v0[7] = v2;
  v0[8] = v3;
  v6 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_3_7(v4);

  return (v6)(v0 + 2, v0 + 7);
}

uint64_t dispatch thunk of GameKitServiceProtocol.listGameActivities(game:filters:excludedFilters:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_220_1(v12, v13, v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_131();
  v33 = v19 + *v19;
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_97(v20);
  *v21 = v22;
  v21[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_230_0();
  OUTLINED_FUNCTION_240();

  return v30(v23, v24, v25, v26, v27, v28, v29, v30, a9, v33, a11, a12);
}

uint64_t OUTLINED_FUNCTION_222_0()
{
}

uint64_t OUTLINED_FUNCTION_331_0()
{
}

uint64_t OUTLINED_FUNCTION_170_2(uint64_t a1)
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(a1);
}

uint64_t OUTLINED_FUNCTION_452()
{
}

void *sub_1D8439370(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1D843945C(v8, v7);
  v10 = *(sub_1D8580B88() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1D84E742C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1D843945C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0C0, &unk_1D859E560);
  v4 = *(sub_1D8580B88() - 8);
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

void sub_1D8439558()
{
  OUTLINED_FUNCTION_386();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A5B8, &qword_1D85A32A8);
  OUTLINED_FUNCTION_1();
  v29 = v3;
  v30 = v2;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - v5;
  v6 = sub_1D8580B88();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = 0;
  v15 = *(v1 + 16);
  v33 = v8 + 16;
  v34 = v1;
  v31 = (v8 + 32);
  v16 = MEMORY[0x1E69E7CC0];
  while (v15 != v14)
  {
    v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v18 = *(v8 + 72);
    (*(v8 + 16))(v13, v34 + v17 + v18 * v14, v6);
    sub_1D8580B78();
    if (v19)
    {

      v27 = *v31;
      v27(v32, v13, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D8439A88(0, *(v16 + 16) + 1, 1);
        v16 = v35;
      }

      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v26 = v22 + 1;
        sub_1D8439A88((v21 > 1), v22 + 1, 1);
        v23 = v26;
        v16 = v35;
      }

      ++v14;
      *(v16 + 16) = v23;
      v27((v16 + v17 + v22 * v18), v32, v6);
    }

    else
    {
      (*(v8 + 8))(v13, v6);
      ++v14;
    }
  }

  v35 = v16;
  swift_getKeyPath();
  v24 = v28;
  sub_1D8580D18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A5C0, &unk_1D85A32E0);
  sub_1D8535E3C(&qword_1EE0E0308, &qword_1ECA3A5C0, &unk_1D85A32E0, MEMORY[0x1E69E6328]);
  sub_1D8535E3C(&qword_1EE0E0468, &qword_1ECA3A5B8, &qword_1D85A32A8, MEMORY[0x1E6968898]);
  v25 = v30;
  sub_1D8581398();
  (*(v29 + 8))(v24, v25);

  OUTLINED_FUNCTION_388();
}

void *sub_1D84398D4(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0C0, &unk_1D859E560);
  v10 = *(sub_1D8580B88() - 8);
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
  v15 = *(sub_1D8580B88() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1D84E742C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1D8439A88(void *a1, int64_t a2, char a3)
{
  result = sub_1D84398D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_518()
{
}

uint64_t OUTLINED_FUNCTION_166_0()
{
}

uint64_t OUTLINED_FUNCTION_332_0()
{
}

uint64_t OUTLINED_FUNCTION_107_1@<X0>(char a3@<W8>)
{
  *(v3 - 88) = a3;

  return sub_1D8581998();
}

uint64_t OUTLINED_FUNCTION_220()
{
}

uint64_t OUTLINED_FUNCTION_107_3()
{
}

uint64_t Ref.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_311()
{
}

uint64_t OUTLINED_FUNCTION_110_0()
{
  v0[20] = v0[6];

  return GameServicesActorSystem.makeInvocationEncoder()(v0 + 2);
}

unint64_t OUTLINED_FUNCTION_133_0(uint64_t a1, uint64_t a2)
{

  return sub_1D84FF498(a1);
}

uint64_t sub_1D8439DAC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D8439DE8()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = *(v0 + 88);
  v2 = v1[2];
  *(v0 + 56) = sub_1D8581478();
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v3[2] = v2;
  v3[3] = v1[3];
  v3[4] = v1[4];
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  v5 = sub_1D85814D8();
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_1D84441C0;
  v7 = *(v0 + 64);

  return MEMORY[0x1EEE6DB28](v0 + 48, v0 + 56, &unk_1D85A34C8, v3, v7, v5, WitnessTable);
}

uint64_t PaginatedSequence.makeAsyncIterator()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C88, &qword_1D859EDF0);
  v3 = sub_1D8581618();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = v1[1];
  v11[0] = *v1;
  v11[1] = v9;
  sub_1D843A080(a1);
  sub_1D8581558();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1D843A040(uint64_t a1)
{
  PaginatedSequence.makeAsyncIterator()(a1);
}

uint64_t sub_1D843A080(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_17_5();
  sub_1D85815C8();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v4);
  v9 = v3;
  v10 = *(a1 + 24);
  v5 = v1[1];
  v11 = *v1;
  v12 = v5;
  sub_1D843A1E0(&v8[-v6]);
  return sub_1D8581628();
}

uint64_t sub_1D843A1E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C88, &qword_1D859EDF0);
  v3 = sub_1D85815C8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D843A284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a4;
  v31 = a8;
  v29 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C88, &qword_1D859EDF0);
  v13 = sub_1D85815F8();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A608, &qword_1D85AAD30);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v22 = sub_1D8581528();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  (*(v15 + 16))(v18, a1, v13);
  v23 = (*(v15 + 80) + 88) & ~*(v15 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v29;
  *(v24 + 4) = a6;
  *(v24 + 5) = v25;
  v26 = v30;
  *(v24 + 6) = v31;
  *(v24 + 7) = a2;
  *(v24 + 8) = a3;
  *(v24 + 9) = v26;
  *(v24 + 10) = a5;
  (*(v15 + 32))(&v24[v23], v18, v13);

  sub_1D85374F4(0, 0, v21, &unk_1D85A3838, v24);
}

uint64_t sub_1D843A490()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_17_5();
  v1 = sub_1D85815F8();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 88) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1D843A590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A608, &qword_1D85AAD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_295()
{
}

uint64_t OUTLINED_FUNCTION_230_1()
{
}

uint64_t OUTLINED_FUNCTION_335()
{
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_1D8581038();
}

void OUTLINED_FUNCTION_104_1()
{
  v2 = (v0 + *(v1 + 40));
  *v2 = 0;
  v2[1] = 0;
}

unint64_t OUTLINED_FUNCTION_104_2(uint64_t a1, uint64_t a2)
{

  return sub_1D84BB220(a1);
}

uint64_t OUTLINED_FUNCTION_248()
{
  *(v1 - 80) = *(v0 + 416);
}

uint64_t OUTLINED_FUNCTION_248_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[51] = a5;
  v6[52] = v5;
  v6[49] = a3;
  v6[50] = a4;
  v6[47] = a1;
  v6[48] = a2;

  return sub_1D8581018();
}

uint64_t GameServicesActorSystem.makeInvocationEncoder()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D8580B18();
  OUTLINED_FUNCTION_46_4(v3);
  result = sub_1D8580B08();
  a1[1] = result;
  a1[2] = v2;
  return result;
}

uint64_t GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v4 = swift_conformsToProtocol();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  sub_1D8581058();
  sub_1D8581048();
  OUTLINED_FUNCTION_228();
  v5 = sub_1D8580AF8();
  if (v3)
  {
    v7 = OUTLINED_FUNCTION_228();
    return v8(v7);
  }

  else
  {
    v10 = v5;
    v11 = v6;
    v12 = OUTLINED_FUNCTION_228();
    v13(v12);
    sub_1D843AEC0(sub_1D843AF1C);
    v14 = *(*v2 + 16);
    v15 = OUTLINED_FUNCTION_228();
    result = sub_1D843B024(v15, v16);
    v17 = *v2;
    *(v17 + 16) = v14 + 1;
    v18 = v17 + 16 * v14;
    *(v18 + 32) = v10;
    *(v18 + 40) = v11;
    *v2 = v17;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_125()
{
  *(v0 + 176) = $DistributedChallengeServiceProtocol.actorSystem.getter();

  return GameServicesActorSystem.makeInvocationEncoder()((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_263()
{
}

uint64_t sub_1D843AB70()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_0_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t OUTLINED_FUNCTION_38@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = v2;
  *(v3 + 48) = a1;
  return *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1)
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordGenericSubstitution<A>(_:)(a1);
}

uint64_t sub_1D843AE68@<X0>(uint64_t *a1@<X8>)
{
  result = Ref.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Ref.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D843AEC0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

char *sub_1D843AF1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE70, &qword_1D85AB5E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D843B024(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void GameActivityFilter.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CB8, &qword_1D859A830);
  OUTLINED_FUNCTION_1();
  v37 = v5;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CC0, &qword_1D859A838);
  OUTLINED_FUNCTION_1();
  v36 = v7;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CC8, &qword_1D859A840);
  OUTLINED_FUNCTION_1();
  v35 = v9;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_196();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CD0, &qword_1D859A848);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CD8, &qword_1D859A850);
  OUTLINED_FUNCTION_1();
  v32 = v13;
  v33 = v12;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_199();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CE0, &qword_1D859A858);
  OUTLINED_FUNCTION_1();
  v31 = v16;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_250_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CE8, &qword_1D859A860);
  OUTLINED_FUNCTION_1();
  v40 = v18;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_129();
  v38 = v0[1];
  v39 = *v0;
  v20 = *(v0 + 16);
  OUTLINED_FUNCTION_260(v4, v4[3]);
  sub_1D843BFB4();
  OUTLINED_FUNCTION_494();
  sub_1D8581BB8();
  switch(v20)
  {
    case 1:
      LOBYTE(v41[0]) = 1;
      sub_1D84E8E0C();
      v27 = v40;
      OUTLINED_FUNCTION_113_0(&type metadata for GameActivityFilter.GameActivityCodingKeys, v41);
      v41[0] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
      OUTLINED_FUNCTION_103_1(&unk_1EE0E0040);
      sub_1D8581A58();
      (*(v32 + 8))(v2, v33);
      goto LABEL_9;
    case 2:
      LOBYTE(v41[0]) = 2;
      sub_1D84E8DB8();
      v27 = v40;
      OUTLINED_FUNCTION_113_0(&type metadata for GameActivityFilter.InstancesCodingKeys, v41);
      v41[0] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
      OUTLINED_FUNCTION_103_1(&unk_1EE0E0040);
      v28 = v34;
      OUTLINED_FUNCTION_256_2();
      sub_1D8581A58();
      goto LABEL_8;
    case 3:
      LOBYTE(v41[0]) = 3;
      sub_1D84E8D10();
      v27 = v40;
      OUTLINED_FUNCTION_113_0(&type metadata for GameActivityFilter.StateCodingKeys, v41);
      LOBYTE(v41[0]) = v39;
      sub_1D84E8D64();
      v28 = v35;
      OUTLINED_FUNCTION_151_1();
      sub_1D8581A58();
      goto LABEL_8;
    case 4:
      LOBYTE(v41[0]) = 4;
      sub_1D843C008();
      v27 = v40;
      OUTLINED_FUNCTION_113_0(&type metadata for GameActivityFilter.ConsumptionStateCodingKeys, v41);
      LOBYTE(v41[0]) = v39;
      sub_1D843C310();
      v28 = v36;
      OUTLINED_FUNCTION_151_1();
      sub_1D8581A58();
      goto LABEL_8;
    case 5:
      LOBYTE(v41[0]) = 5;
      sub_1D84E8CBC();
      v27 = v40;
      OUTLINED_FUNCTION_113_0(&type metadata for GameActivityFilter.LanguageCodingKeys, v41);
      v28 = v37;
      OUTLINED_FUNCTION_256_2();
      sub_1D8581A08();
LABEL_8:
      v29 = OUTLINED_FUNCTION_275();
      v30(v29, v28);
LABEL_9:
      v24 = OUTLINED_FUNCTION_276();
      v26 = v27;
      break;
    default:
      LOBYTE(v41[0]) = 0;
      sub_1D84E8E60();
      OUTLINED_FUNCTION_516_0(&type metadata for GameActivityFilter.CreatorCodingKeys, v41);
      v41[0] = v39;
      v41[1] = v38;
      v21 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v23);
      sub_1D8581A58();
      (*(v31 + 8))(v1, v15);
      v24 = OUTLINED_FUNCTION_275();
      v26 = v40;
      break;
  }

  v25(v24, v26);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

uint64_t OUTLINED_FUNCTION_333(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_280_1()
{
  v0[59] = v0[46];

  return GameServicesActorSystem.makeInvocationEncoder()(v0 + 42);
}

unint64_t sub_1D843B79C()
{
  result = qword_1EE0E2120;
  if (!qword_1EE0E2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E2120);
  }

  return result;
}

unint64_t sub_1D843B7F4()
{
  result = qword_1EE0E2128[0];
  if (!qword_1EE0E2128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E2128);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_2(unint64_t *a1)
{

  return sub_1D844A16C(a1, v1, v2, &protocol conformance descriptor for Ref<A>);
}

unint64_t OUTLINED_FUNCTION_2_3(uint64_t a1)
{

  return sub_1D848211C(a1);
}

void OUTLINED_FUNCTION_2_4(uint64_t a1@<X8>)
{
  v3[3] = a1;
  v3[4] = v1;
  v3[2] = v2;
}

uint64_t OUTLINED_FUNCTION_2_8@<X0>(char a1@<W8>)
{
  *(v1 - 216) = a1;

  return sub_1D8581898();
}

void OUTLINED_FUNCTION_429()
{

  JUMPOUT(0x1DA7191F0);
}

unint64_t sub_1D843B9D8()
{
  result = qword_1EE0E25D0;
  if (!qword_1EE0E25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E25D0);
  }

  return result;
}

unint64_t sub_1D843BA30()
{
  result = qword_1EE0E25D8;
  if (!qword_1EE0E25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E25D8);
  }

  return result;
}

unint64_t sub_1D843BA98()
{
  result = qword_1EE0E22B0;
  if (!qword_1EE0E22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E22B0);
  }

  return result;
}

unint64_t sub_1D843BAF0()
{
  result = qword_1EE0E22B8[0];
  if (!qword_1EE0E22B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E22B8);
  }

  return result;
}

unint64_t sub_1D843BB58()
{
  result = qword_1EE0E2910;
  if (!qword_1EE0E2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E2910);
  }

  return result;
}

unint64_t sub_1D843BBB0()
{
  result = qword_1EE0E2918[0];
  if (!qword_1EE0E2918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E2918);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_56()
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v0, v0);
}

unint64_t OUTLINED_FUNCTION_27_3(uint64_t a1)
{

  return sub_1D8526788(a1);
}

unint64_t sub_1D843BD18()
{
  result = qword_1EE0E2440;
  if (!qword_1EE0E2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E2440);
  }

  return result;
}

unint64_t sub_1D843BD70()
{
  result = qword_1EE0E2448[0];
  if (!qword_1EE0E2448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E2448);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_373(uint64_t a1)
{
}

unint64_t sub_1D843BE28()
{
  result = qword_1EE0E2770;
  if (!qword_1EE0E2770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E2770);
  }

  return result;
}

unint64_t sub_1D843BE80()
{
  result = qword_1EE0E2778;
  if (!qword_1EE0E2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E2778);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_184()
{
}

uint64_t OUTLINED_FUNCTION_240_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581878();
}

uint64_t OUTLINED_FUNCTION_240_2()
{
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D843BFB4()
{
  result = qword_1EE0E2788[0];
  if (!qword_1EE0E2788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E2788);
  }

  return result;
}

unint64_t sub_1D843C008()
{
  result = qword_1EE0E1008[0];
  if (!qword_1EE0E1008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E1008);
  }

  return result;
}

uint64_t sub_1D843C064(char a1)
{
  result = 0x726F7461657263;
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_434_0();
      result = OUTLINED_FUNCTION_300_1();
      break;
    case 2:
      result = 0x65636E6174736E69;
      break;
    case 3:
      result = OUTLINED_FUNCTION_321_1();
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65676175676E616CLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GameActivityState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1D843C1F8);
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChallengeState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

uint64_t OUTLINED_FUNCTION_215()
{
}

unint64_t sub_1D843C310()
{
  result = qword_1EE0E0178[0];
  if (!qword_1EE0E0178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E0178);
  }

  return result;
}

_BYTE *_s12GameServices18GameActivityFilterO22GameActivityCodingKeysOwst_0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1D843C40CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s12GameServices15ChallengeFilterO14GameCodingKeysOwet_0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_192();
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

  return OUTLINED_FUNCTION_49(a1);
}

uint64_t sub_1D843C484()
{
  OUTLINED_FUNCTION_99();
  sub_1D843C4BC();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

unint64_t sub_1D843C4BC()
{
  result = qword_1EE0E0450;
  if (!qword_1EE0E0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E0450);
  }

  return result;
}

uint64_t sub_1D843C510@<X0>(uint64_t *a1@<X8>)
{
  result = GameActivityConsumptionState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t GameActivityConsumptionState.rawValue.getter()
{
  result = 0x6465766965636572;
  switch(*v0)
  {
    case 1:
      result = 0x676E69646E6570;
      break;
    case 2:
      result = 0x65726576696C6564;
      break;
    case 3:
      result = 0x65737365636F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_293()
{
}

uint64_t OUTLINED_FUNCTION_341_0(uint64_t a1)
{
  *(v1 + 56) = a1;
}

uint64_t OUTLINED_FUNCTION_164_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static GameServicesError.invalidReference<A>(ref:)(&a9, v9);
}

uint64_t OUTLINED_FUNCTION_130_0()
{
}

uint64_t OUTLINED_FUNCTION_255()
{
}

uint64_t OUTLINED_FUNCTION_281_1()
{

  return sub_1D84EB9C4(v0 + 16, v0 + 56);
}

__n128 *OUTLINED_FUNCTION_308(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = (v2 & 1) == 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_463()
{
}

uint64_t OUTLINED_FUNCTION_252(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t sub_1D843C790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0 && *(a1 + 16))
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

  return OUTLINED_FUNCTION_226(v2);
}

uint64_t GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(uint64_t a1)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  if (result != a1)
  {
    sub_1D857FB24();
    OUTLINED_FUNCTION_10_0();
    swift_allocError();
    *v3 = 0xD00000000000002FLL;
    v3[1] = 0x80000001D8589590;
    OUTLINED_FUNCTION_27_5(v3, 2);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D843C86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)()
{
  OUTLINED_FUNCTION_148();
  v1[14] = v12;
  v1[15] = v0;
  v1[12] = v2;
  v1[13] = v11;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[7] = v7;
  v1[16] = swift_conformsToProtocol();
  swift_conformsToProtocol();
  v8 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t sub_1D843C93C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_69_6();
  OUTLINED_FUNCTION_32_3();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1D844366C;
  v2 = OUTLINED_FUNCTION_57_4();

  return sub_1D843CA8C(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_92()
{
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t sub_1D843CA8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v6 = a1[1];
  v5[12] = *a1;
  v5[13] = v6;
  return OUTLINED_FUNCTION_0_20();
}

uint64_t sub_1D843CB3C()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v0[14] = v2;
  v3 = *(v1 + 24);
  v0[15] = v3;
  if (v2)
  {
    v5 = v0[12];
    v4 = v0[13];
    v7 = v0[9];
    v6 = v0[10];
    sub_1D843628C(v2, v3);

    v8 = sub_1D8581008();
    v10 = v9;
    v11 = sub_1D8580B18();
    OUTLINED_FUNCTION_46_4(v11);

    sub_1D8580B08();
    v0[2] = v5;
    v0[3] = v4;
    v0[4] = v8;
    v0[5] = v10;
    v0[6] = v7;
    v0[7] = v6;
    sub_1D843CDB4();
    v12 = sub_1D8580AF8();
    v14 = v13;
    v21 = v12;
    v0[16] = v12;
    v0[17] = v13;

    v20 = (v2 + *v2);
    v19 = swift_task_alloc();
    v0[18] = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_191(v19);

    return v20(v21, v14);
  }

  else
  {
    sub_1D857FB24();
    OUTLINED_FUNCTION_10_0();
    v15 = swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    OUTLINED_FUNCTION_24_4(v15, v16);
    swift_willThrow();
    OUTLINED_FUNCTION_146();

    return v17();
  }
}

unint64_t sub_1D843CDB4()
{
  result = qword_1EE0E0EF0[0];
  if (!qword_1EE0E0EF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E0EF0);
  }

  return result;
}

void sub_1D843CE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE80, &qword_1D85AB698);
  OUTLINED_FUNCTION_1();
  v29 = v28;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_309();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1D843D12C();

  sub_1D8581BB8();
  sub_1D843D180();
  sub_1D8581A58();

  if (!v23)
  {
    sub_1D8581A08();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE88, &unk_1D85AB6A0);
    sub_1D843D634(&unk_1EE0E0300);
    OUTLINED_FUNCTION_29_5();
    sub_1D8581A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
    sub_1D843D7B8(&unk_1EE0E0040);
    OUTLINED_FUNCTION_29_5();
    sub_1D85819E8();
  }

  (*(v29 + 8))(v24, v27);
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D843D080()
{
  result = qword_1EE0E1E80;
  if (!qword_1EE0E1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E1E80);
  }

  return result;
}

unint64_t sub_1D843D0D8()
{
  result = qword_1EE0E1E88;
  if (!qword_1EE0E1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E1E88);
  }

  return result;
}

unint64_t sub_1D843D12C()
{
  result = qword_1EE0E1E90[0];
  if (!qword_1EE0E1E90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E1E90);
  }

  return result;
}

unint64_t sub_1D843D180()
{
  result = qword_1EE0E0318[0];
  if (!qword_1EE0E0318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E0318);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GameServicesActorSystem.Invocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1D843D2A0);
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

uint64_t getEnumTagSinglePayload for FriendActivity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void GameServicesActorID.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ADE0, &qword_1D85AAD00);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_128();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1D843D538();
  sub_1D8581BB8();
  sub_1D8581A08();
  v3 = OUTLINED_FUNCTION_233();
  v4(v3);
  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D843D48C()
{
  result = qword_1EE0E1C40;
  if (!qword_1EE0E1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E1C40);
  }

  return result;
}

unint64_t sub_1D843D4E4()
{
  result = qword_1EE0E1C48;
  if (!qword_1EE0E1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E1C48);
  }

  return result;
}

unint64_t sub_1D843D538()
{
  result = qword_1EE0E1C50;
  if (!qword_1EE0E1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E1C50);
  }

  return result;
}

unint64_t sub_1D843D5A0(char a1)
{
  result = 0x726F746361;
  switch(a1)
  {
    case 1:
      result = 0x746567726174;
      break;
    case 2:
      result = 0x746E656D75677261;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D843D634(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA3AE88, &unk_1D85AB6A0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D843D6A8()
{
  result = qword_1EE0E0460;
  if (!qword_1EE0E0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E0460);
  }

  return result;
}

void OUTLINED_FUNCTION_24_3(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{

  sub_1D857C668(319, a2, a3, a4, type metadata accessor for Ref);
}

unint64_t sub_1D843D7B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D843D820(uint64_t a1)
{
  result = OUTLINED_FUNCTION_505(a1);
  if (!result)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
    result = OUTLINED_FUNCTION_524(v3);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_188_1()
{
}

uint64_t OUTLINED_FUNCTION_188_3()
{
}

void GameServicesActorSystem.routeToLocalActor(invocationData:completionHandler:)()
{
  OUTLINED_FUNCTION_386();
  v14 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ADF8, &qword_1D85AAD38);
  OUTLINED_FUNCTION_363(v4);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_128();
  v6 = type metadata accessor for GameServicesActorSystem.TaskQueue(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_228_1();
  v8 = OBJC_IVAR____TtC12GameServices23GameServicesActorSystem_taskQueue;
  swift_beginAccess();
  sub_1D843DACC(v0 + v8, v2, &qword_1ECA3ADF8, &qword_1D85AAD38);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_1D8436E18(v2, &qword_1ECA3ADF8, &qword_1D85AAD38);
    sub_1D857FB24();
    OUTLINED_FUNCTION_10_0();
    v9 = swift_allocError();
    *v10 = xmmword_1D85AAC10;
    *(v10 + 16) = 4;
    v11 = OUTLINED_FUNCTION_25_7();
    v14(v11);
    MEMORY[0x1DA719650](v9);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_233();
    sub_1D84370CC(v12, v13);
    sub_1D843DB6C();
    sub_1D8437130(v1);
  }

  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D843DACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_0();
  v5 = OUTLINED_FUNCTION_194();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_274_1()
{
}

void sub_1D843DB6C()
{
  OUTLINED_FUNCTION_285();
  v2 = v0;
  v25 = v3;
  v26 = v4;
  v23 = v6;
  v24 = v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE38, &qword_1D85AB5A0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE28, &qword_1D85AB468);
  OUTLINED_FUNCTION_363(v12);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_283();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE00, &qword_1D85AAD58);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22 - v18;
  sub_1D843DACC(v2, v1, &qword_1ECA3AE28, &qword_1D85AB468);
  if (__swift_getEnumTagSinglePayload(v1, 1, v14) == 1)
  {
    sub_1D8436E18(v1, &qword_1ECA3AE28, &qword_1D85AB468);
    sub_1D857FB24();
    OUTLINED_FUNCTION_10_0();
    v20 = swift_allocError();
    *v21 = xmmword_1D859EDA0;
    OUTLINED_FUNCTION_24_4(v20, v21);
    swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v19, v1, v14);
    v28 = v24;
    v29 = v25;
    v30 = v23;
    v31 = v26;
    sub_1D843DDD8(v24, v25);

    sub_1D8581538();
    (*(v8 + 8))(v11, v27);
    (*(v16 + 8))(v19, v14);
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D843DDD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
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

uint64_t sub_1D843DE3C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D843DE7C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D843DFB0()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v1 = v0[3];
  v0[12] = v0[2];
  v0[13] = v1;
  v2 = v0[4];
  v3 = v0[5];
  v0[14] = v2;
  v0[15] = v3;
  if (v2)
  {
    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_191(v4);
    OUTLINED_FUNCTION_535();

    return v9(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    sub_1D857DAB8();

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_535();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

uint64_t sub_1D843E124()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_535();

  return sub_1D843E3DC();
}

uint64_t OUTLINED_FUNCTION_201_1(uint64_t result, uint64_t a2)
{
  v4[8] = result;
  v4[9] = a2;
  v4[10] = v3;
  v4[11] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_314_0()
{
  *(v0 + 56) = *(v0 + 80);
}

uint64_t OUTLINED_FUNCTION_465()
{
  v2 = v0[15];
  v0[7] = v0[14];
  v0[8] = v2;
}

uint64_t OUTLINED_FUNCTION_250(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D8580FA8();
}

uint64_t OUTLINED_FUNCTION_279()
{
}

uint64_t OUTLINED_FUNCTION_202()
{
}

void OUTLINED_FUNCTION_142_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  sub_1D852B9F0(v12, a11, a10, va);
}

void *OUTLINED_FUNCTION_142_3()
{

  return memcpy(&STACK[0x248], (v0 + 16), 0x60uLL);
}

uint64_t sub_1D843E3DC()
{
  OUTLINED_FUNCTION_148();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[5] = v5;
  v6 = sub_1D85810A8();
  v0[10] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[11] = v7;
  v0[12] = OUTLINED_FUNCTION_332();
  v8 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t sub_1D843E488()
{
  OUTLINED_FUNCTION_148();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[14] = v5;
  v1[19] = *v0;
  v6 = sub_1D8581018();
  v1[20] = v6;
  OUTLINED_FUNCTION_39(v6);
  v1[21] = v7;
  v1[22] = OUTLINED_FUNCTION_332();
  v8 = sub_1D85810A8();
  v1[23] = v8;
  OUTLINED_FUNCTION_39(v8);
  v1[24] = v9;
  v1[25] = OUTLINED_FUNCTION_332();
  v10 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v10);
}

uint64_t sub_1D843E5A8()
{
  v42 = v0;
  v1 = sub_1D8580AE8();
  OUTLINED_FUNCTION_46_4(v1);
  sub_1D8580AD8();
  sub_1D843EAA0();
  sub_1D8580AC8();

  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v41[0] = v4;
  v41[1] = v5;

  v10 = sub_1D843F288(v41);
  *(v0 + 208) = v10;
  if (v10)
  {
    v36 = v4;
    v37 = v6;
    v39 = v10;
    v40 = v11;
    sub_1D84355A0(v10, v11, v12);
    v13 = OUTLINED_FUNCTION_59_3();
    v14(v13);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v15 = sub_1D8581088();
    v16 = sub_1D8581678();
    swift_bridgeObjectRelease_n();

    v35 = v16;
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 184);
    if (v17)
    {
      log = v15;
      v21 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v21 = 136315394;

      v34 = v20;
      v22 = sub_1D84355C8(v37, v7, v41);

      *(v21 + 4) = v22;
      *(v21 + 12) = 2080;
      v23 = sub_1D84355C8(v36, v5, v41);

      *(v21 + 14) = v23;
      _os_log_impl(&dword_1D8433000, log, v35, "Routing invocation target: %s to actor id: %s", v21, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_41_4();
      OUTLINED_FUNCTION_41_4();

      (*(v19 + 8))(v18, v34);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      (*(v19 + 8))(v18, v20);
    }

    v27 = *(v0 + 152);
    v28 = *(v0 + 128);
    if (!v9)
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v38 = *(v0 + 136);
    sub_1D8581028();
    *(v0 + 64) = v8;
    swift_allocObject();
    *(v0 + 72) = sub_1D8580AD8();
    *(v0 + 80) = v9;
    ObjectType = swift_getObjectType();
    *(v0 + 88) = v28;
    *(v0 + 96) = v38;

    v30 = swift_task_alloc();
    *(v0 + 216) = v30;
    v31 = sub_1D8436304(&unk_1EE0E0160);
    *v30 = v0;
    v30[1] = sub_1D8443088;
    v32 = *(v0 + 176);

    return MEMORY[0x1EEE6CC70](v39, v32, v0 + 64, v0 + 88, v27, ObjectType, v31, v40);
  }

  else
  {
    v24 = *(v0 + 128);

    sub_1D857FB24();
    OUTLINED_FUNCTION_10_0();
    v25 = swift_allocError();
    *v26 = v4;
    *(v26 + 8) = v5;
    *(v26 + 16) = 0;
    v24(0, 0xF000000000000000, v25);
    MEMORY[0x1DA719650](v25);

    OUTLINED_FUNCTION_57();

    return v2();
  }
}

unint64_t sub_1D843EAA0()
{
  result = qword_1EE0E0B48[0];
  if (!qword_1EE0E0B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E0B48);
  }

  return result;
}

void sub_1D843EAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA3AE90, &qword_1D85AB6B0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v28);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1D843D12C();
  sub_1D8581BA8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_1D843EE3C();
    sub_1D8581958();
    v29 = v36;
    LOBYTE(v36) = 1;
    v30 = sub_1D8581908();
    v35 = v31;
    v34 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE88, &unk_1D85AB6A0);
    sub_1D843D634(&unk_1EE0E0058);
    OUTLINED_FUNCTION_30_4();
    sub_1D8581958();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
    sub_1D843D7B8(&unk_1EE0E0038);
    OUTLINED_FUNCTION_30_4();
    sub_1D85818E8();
    v32 = OUTLINED_FUNCTION_10_9();
    v33(v32);
    *v27 = v29;
    v27[1] = v37;
    v27[2] = v34;
    v27[3] = v35;
    v27[4] = v36;
    v27[5] = v36;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  OUTLINED_FUNCTION_284_0();
}

unint64_t sub_1D843EE3C()
{
  result = qword_1EE0E0158;
  if (!qword_1EE0E0158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E0158);
  }

  return result;
}

void GameServicesActorID.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ADE8, &unk_1D85AAD08);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_128();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D843D538();
  sub_1D8581BA8();
  if (!v0)
  {
    v6 = sub_1D8581908();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_233();
    v10(v9);
    *v4 = v6;
    v4[1] = v8;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_284_0();
}

_BYTE *storeEnumTagSinglePayload for GameServicesActorID.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1D843F088);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

void OUTLINED_FUNCTION_23_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_1D857C6CC(319, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1)
{

  return sub_1D85811E8();
}

uint64_t OUTLINED_FUNCTION_10_6()
{

  return sub_1D85819E8();
}

uint64_t sub_1D843F288(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE50, &qword_1D85AB5B8);
  sub_1D85816C8();
  return v2;
}

uint64_t sub_1D843F308@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (*(v4 + 16) && (v5 = OUTLINED_FUNCTION_233(), v7 = sub_1D8436A4C(v5, v6), (v8 & 1) != 0))
  {
    v9 = *(*(v4 + 56) + 8 * v7);
    swift_endAccess();
    result = swift_unknownObjectWeakLoadStrong();
    v11 = *(v9 + 24);
    *a1 = result;
    a1[1] = v11;
  }

  else
  {
    result = swift_endAccess();
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t GameServicesActorSystem.JSONInvocationDecoder.decodeNextArgument<A>()(uint64_t a1)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v2 = *v1;
  if (*(*v1 + 16))
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    sub_1D843DDD8(v3, v4);
    sub_1D843F4C4(0, 1);
    sub_1D8580AC8();
    return sub_1D843F6E8(v3, v4);
  }

  else
  {
    sub_1D857FB24();
    OUTLINED_FUNCTION_10_0();
    swift_allocError();
    *v6 = 0xD00000000000001CLL;
    v6[1] = 0x80000001D85895E0;
    OUTLINED_FUNCTION_27_5(v6, 1);
    return swift_willThrow();
  }
}

uint64_t sub_1D843F4C4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1D843F5B4(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 16 * a2);
  if (v5 != a2 || v12 + 16 * v11 <= v9 + 16 * v5)
  {
    result = memmove((v9 + 16 * v5), v12, 16 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_1D843F5B4(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1D843AF1C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1D843F61C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_0_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D843F668@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = Ref.init(stringLiteral:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1D843F6A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D843F6E8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void GameActivityFilter.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v66 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF8, &qword_1D859A868);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_196();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D00, &qword_1D859A870);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_196();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D08, &qword_1D859A878);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_409_0(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D10, &qword_1D859A880);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_469_0(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D18, &qword_1D859A888);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D20, &qword_1D859A890);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_129();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D28, &qword_1D859A898);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_199();
  v67 = v3;
  v17 = OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_260(v17, v18);
  sub_1D843BFB4();
  OUTLINED_FUNCTION_419_0();
  sub_1D8581BA8();
  if (v0)
  {
    goto LABEL_9;
  }

  v69 = v15;
  v19 = sub_1D8581968();
  sub_1D8440880(v19, 0);
  v21 = v20;
  if (v23 == v22 >> 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_360();
  if (v28 == v29)
  {
    __break(1u);
    JUMPOUT(0x1D84401B4);
  }

  v63 = *(v27 + v25);
  sub_1D84408DC(v25 + 1, v24, v21, v27, v25, v26);
  v31 = v30;
  v33 = v32;
  swift_unknownObjectRelease();
  if (v31 != v33 >> 1)
  {
LABEL_8:
    v34 = sub_1D85817C8();
    OUTLINED_FUNCTION_446(v34, MEMORY[0x1E69E6B28]);
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v36 = &type metadata for GameActivityFilter;
    v37 = sub_1D8581888();
    OUTLINED_FUNCTION_186(v37);
    OUTLINED_FUNCTION_206_0();
    (*(v38 + 104))(v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_220_0();
    v39(v1, v13);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v67);
    goto LABEL_10;
  }

  switch(v63)
  {
    case 1:
      LOBYTE(v68[0]) = 1;
      sub_1D84E8E0C();
      OUTLINED_FUNCTION_92_0(&type metadata for GameActivityFilter.GameActivityCodingKeys, v68);
      OUTLINED_FUNCTION_484_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
      OUTLINED_FUNCTION_102_1(&unk_1EE0E0038);
      OUTLINED_FUNCTION_501_0();
      OUTLINED_FUNCTION_163_0();
      sub_1D8581958();
      OUTLINED_FUNCTION_262_0();
      swift_unknownObjectRelease();
      goto LABEL_17;
    case 2:
      LOBYTE(v68[0]) = 2;
      sub_1D84E8DB8();
      OUTLINED_FUNCTION_92_0(&type metadata for GameActivityFilter.InstancesCodingKeys, v68);
      OUTLINED_FUNCTION_484_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
      OUTLINED_FUNCTION_102_1(&unk_1EE0E0038);
      OUTLINED_FUNCTION_501_0();
      OUTLINED_FUNCTION_163_0();
      sub_1D8581958();
      OUTLINED_FUNCTION_262_0();
      swift_unknownObjectRelease();
LABEL_17:
      v55 = OUTLINED_FUNCTION_325();
      v56(v55);
      v57 = OUTLINED_FUNCTION_308_0();
      v58(v57);
      v53 = 0;
      v54 = v68[0];
      break;
    case 3:
      LOBYTE(v68[0]) = 3;
      sub_1D84E8D10();
      OUTLINED_FUNCTION_263_1();
      sub_1D8581878();
      OUTLINED_FUNCTION_484_0();
      sub_1D84E8EB4();
      sub_1D8581958();
      OUTLINED_FUNCTION_262_0();
      swift_unknownObjectRelease();
      v47 = OUTLINED_FUNCTION_276();
      v48(v47, v64);
      v45 = OUTLINED_FUNCTION_415_0();
      goto LABEL_16;
    case 4:
      LOBYTE(v68[0]) = 4;
      sub_1D843C008();
      OUTLINED_FUNCTION_92_0(&type metadata for GameActivityFilter.ConsumptionStateCodingKeys, v68);
      OUTLINED_FUNCTION_484_0();
      sub_1D8440A64();
      OUTLINED_FUNCTION_263_1();
      sub_1D8581958();
      OUTLINED_FUNCTION_262_0();
      swift_unknownObjectRelease();
      v43 = OUTLINED_FUNCTION_276();
      v44(v43, v65);
      v45 = OUTLINED_FUNCTION_308_0();
LABEL_16:
      v46(v45);
      v53 = 0;
      v54 = LOBYTE(v68[0]);
      break;
    case 5:
      LOBYTE(v68[0]) = 5;
      sub_1D84E8CBC();
      OUTLINED_FUNCTION_263_1();
      sub_1D8581878();
      v33 = v67;
      v54 = sub_1D8581908();
      v60 = v59;
      swift_unknownObjectRelease();
      v61 = OUTLINED_FUNCTION_480_0();
      v62(v61);
      (*(v69 + 8))(v1, v13);
      v53 = v60;
      break;
    default:
      LOBYTE(v68[0]) = 0;
      sub_1D84E8E60();
      OUTLINED_FUNCTION_92_0(&type metadata for GameActivityFilter.CreatorCodingKeys, v68);
      v40 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v42);
      OUTLINED_FUNCTION_501_0();
      OUTLINED_FUNCTION_89_0();
      sub_1D8581958();
      swift_unknownObjectRelease();
      v49 = OUTLINED_FUNCTION_325();
      v50(v49);
      OUTLINED_FUNCTION_220_0();
      v51 = OUTLINED_FUNCTION_308_0();
      v52(v51);
      v54 = v68[0];
      v53 = v68[1];
      v33 = v67;
      break;
  }

  *v66 = v54;
  *(v66 + 8) = v53;
  *(v66 + 16) = v63;
  __swift_destroy_boxed_opaque_existential_1(v33);
LABEL_10:
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

void OUTLINED_FUNCTION_361_0(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_186(uint64_t a1)
{

  return sub_1D85817B8();
}

uint64_t OUTLINED_FUNCTION_324_1()
{
}

uint64_t OUTLINED_FUNCTION_462(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_462_0()
{
}

uint64_t sub_1D84402F0()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_403_0();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_7(v2, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_434_0();
    v6 = OUTLINED_FUNCTION_300_1();
    v8 = v1 == v6 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_7(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = v1 == 0x65636E6174736E69 && v0 == 0xE900000000000073;
      if (v9 || (OUTLINED_FUNCTION_7(0x65636E6174736E69, 0xE900000000000073) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_474_0();
        v11 = v4 && v0 == 0xE500000000000000;
        if (v11 || (OUTLINED_FUNCTION_7(v10, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_184_0();
          v14 = v1 == v13 && v12 == v0;
          if (v14 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v15 = OUTLINED_FUNCTION_216_1();
            if (v4 && v0 == 0xE800000000000000)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_7(v15, 0xE800000000000000);
              OUTLINED_FUNCTION_369();
              if (v1)
              {
                return 5;
              }

              else
              {
                return 6;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D8440448@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84402F0();
  *a1 = result;
  return result;
}

void OUTLINED_FUNCTION_7_2()
{
  *(v0 - 268) = 0;
  *(v0 - 264) = 0;
  *(v0 - 260) = 0;
  *(v0 - 72) = 0;
  *(v0 - 256) = 0;
}

unint64_t OUTLINED_FUNCTION_7_6(uint64_t a1)
{

  return sub_1D8545B58(a1);
}

double OUTLINED_FUNCTION_7_8()
{
  if (v0 == 0.0)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t OUTLINED_FUNCTION_353(uint64_t a1, uint64_t a2)
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(a1, a2);
}

void OUTLINED_FUNCTION_273_1(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v2 - 240);
  *v1 = v3;
  v1[1] = v4;
  v5 = *(v2 - 384);
  v1[2] = *(v2 - 376);
  v1[3] = v5;
}

uint64_t OUTLINED_FUNCTION_264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[20] = a7;
  v8[21] = v7;
  v8[18] = a5;
  v8[19] = a6;
  v8[16] = a1;
  v8[17] = a3;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_264_0()
{
}

uint64_t OUTLINED_FUNCTION_266()
{
}

uint64_t OUTLINED_FUNCTION_330()
{
}

uint64_t OUTLINED_FUNCTION_172_0(uint64_t a1)
{

  return sub_1D8581808();
}

void *OUTLINED_FUNCTION_172_1()
{

  return sub_1D8581958();
}

uint64_t OUTLINED_FUNCTION_172_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_257_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_202_0(uint64_t result)
{
  v3 = *v1;
  v4 = v1[1];
  v2[26] = result;
  v2[27] = v3;
  v2[28] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_202_1@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  result = v3[1];
  *v1 = *v3;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_202_3(uint64_t result, uint64_t a2)
{
  v4[4] = result;
  v4[5] = a2;
  v4[6] = v3;
  v4[7] = v2;
  return result;
}

void sub_1D8440880(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_344();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_401(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D8580FA8();
}

void sub_1D84408DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_235_0();
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_346()
{
  v2 = v0[28];
  v0[7] = v0[27];
  v0[8] = v2;
}

uint64_t OUTLINED_FUNCTION_476@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
}

uint64_t OUTLINED_FUNCTION_65(uint64_t a1)
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(a1, v1);
}

uint64_t OUTLINED_FUNCTION_346_0()
{
  *(v0 + 56) = *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_184_1@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;

  return sub_1D8581898();
}

uint64_t OUTLINED_FUNCTION_241()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_266_0()
{
}

unint64_t sub_1D8440A64()
{
  result = qword_1EE0E0170;
  if (!qword_1EE0E0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E0170);
  }

  return result;
}

uint64_t sub_1D8440AB8()
{
  OUTLINED_FUNCTION_99();
  sub_1D843C4BC();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

GameServices::GameActivityConsumptionState_optional __swiftcall GameActivityConsumptionState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  sub_1D8581868();
  result.value = OUTLINED_FUNCTION_467_0();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_410_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581028();
}

uint64_t getEnumTagSinglePayload for ParticipantInteraction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_226(v8);
}

uint64_t OUTLINED_FUNCTION_414_0()
{
  *(v0 + 48) = *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_371(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;

  return sub_1D8581018();
}

unint64_t OUTLINED_FUNCTION_134_0(uint64_t a1, uint64_t a2)
{

  return sub_1D84FF498(a1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void Ref<A>.bundleID.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_215_1();
  a21 = v22;
  a22 = v23;
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_71_0();
  sub_1D8438004(0, &qword_1EE0E04A8, v24);
  a13 = v25;
  OUTLINED_FUNCTION_84_1(qword_1EE0E00B0);
  OUTLINED_FUNCTION_137_1();
  OUTLINED_FUNCTION_47_0();
  sub_1D8440DE0(v26);
  OUTLINED_FUNCTION_38_1();
  __swift_destroy_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_214_4();
}

{
  OUTLINED_FUNCTION_215_1();
  a21 = v22;
  a22 = v23;
  OUTLINED_FUNCTION_127_2();
  sub_1D8438004(0, &qword_1ECA3A3A8, type metadata accessor for Ref<A>.ImageRefFields);
  a13 = v24;
  OUTLINED_FUNCTION_97_0();
  sub_1D8440D9C(v25, v26, v27, v28);
  OUTLINED_FUNCTION_137_1();
  OUTLINED_FUNCTION_47_0();
  sub_1D8440DE0(v29);
  OUTLINED_FUNCTION_38_1();
  __swift_destroy_boxed_opaque_existential_1(&a10);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_214_4();
}

uint64_t sub_1D8440D9C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D8438004(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D8440EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_144_0();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1D8441004();
  v40 = v39;
  if (!v22)
  {
    v41 = v37;
    a12 = v38;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v26);
    if (sub_1D8437BA8(v42) == v40 && v43 == v41)
    {
    }

    else
    {
      v45 = sub_1D8581AB8();

      if ((v45 & 1) == 0)
      {

        a9 = v36;
        a10 = v34;
        v46 = sub_1D8448448();
        OUTLINED_FUNCTION_446(&type metadata for GameServicesError, v46);
        v48 = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(v32, v30);
        static GameServicesError.invalidReference<A>(ref:)(&a9, v48);
        swift_willThrow();
      }
    }
  }

  OUTLINED_FUNCTION_143_1();
}

void sub_1D8441004()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1D8580B88();
  OUTLINED_FUNCTION_1();
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E50, &unk_1D859AA30);
  OUTLINED_FUNCTION_363(v10);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_206_2();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v18 = v17 - v16;
  sub_1D8580C38();
  if (__swift_getEnumTagSinglePayload(v0, 1, v12) == 1)
  {
    sub_1D8535DE0(v0, &qword_1ECA39E50);
LABEL_42:
    v86 = v8;
    v87 = v6;
    v74 = sub_1D8448448();
    OUTLINED_FUNCTION_446(&type metadata for GameServicesError, v74);
    v76 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
    static GameServicesError.invalidReference<A>(ref:)(&v86, v76);
    swift_willThrow();
    goto LABEL_43;
  }

  v84 = v4;
  (*(v14 + 32))(v18, v0, v12);
  sub_1D8580C18();
  if (!v19)
  {
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_153_1();
  v21 = v21 && v20 == 0xE500000000000000;
  if (v21)
  {
  }

  else
  {
    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    if ((v18 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  sub_1D8580BD8();
  if (!v22)
  {
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_90_2();
  if (v21 && v23 == v24)
  {

    goto LABEL_19;
  }

  sub_1D8581AB8();
  OUTLINED_FUNCTION_369();
  if ((v18 & 1) == 0)
  {
LABEL_41:
    v72 = OUTLINED_FUNCTION_233();
    v73(v72);
    goto LABEL_42;
  }

LABEL_19:
  v26 = sub_1D8580B98();
  if (!v26)
  {
    goto LABEL_41;
  }

  v82 = v26;
  v83 = v2;
  v27 = sub_1D8580BF8();
  v29 = OUTLINED_FUNCTION_173_1(v27, v28);
  v30 = MEMORY[0x1DA718930](v29);
  v32 = v31;

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    v86 = v8;
    v87 = v6;
    v77 = sub_1D8448448();
    OUTLINED_FUNCTION_446(&type metadata for GameServicesError, v77);
    v79 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(v84, v83);
    static GameServicesError.invalidReference<A>(ref:)(&v86, v79);
    swift_willThrow();
    v80 = OUTLINED_FUNCTION_233();
    v81(v80);
    goto LABEL_43;
  }

  v34 = sub_1D85811B8();
  if (!*(v82 + 16))
  {
LABEL_40:

    v70 = OUTLINED_FUNCTION_233();
    v71(v70);
LABEL_43:
    OUTLINED_FUNCTION_284_0();
    return;
  }

  v35 = v85;
  v36 = OUTLINED_FUNCTION_89_1(v82);
  while (*(v36 + 16))
  {
    v37 = OUTLINED_FUNCTION_114_1();
    v38(v37);
    v39 = sub_1D8580B58();
    v41 = v40;
    sub_1D8580B78();
    if (v42)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v86 = v34;
      v43 = OUTLINED_FUNCTION_69_1();
      sub_1D8436A4C(v43, v44);
      OUTLINED_FUNCTION_189_1();
      if (__OFADD__(v47, v48))
      {
        goto LABEL_46;
      }

      v49 = v45;
      v50 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
      if (sub_1D8581808())
      {
        v51 = OUTLINED_FUNCTION_69_1();
        v53 = sub_1D8436A4C(v51, v52);
        if ((v50 & 1) != (v54 & 1))
        {
          goto LABEL_48;
        }

        v49 = v53;
      }

      v35 = v85;
      if (v50)
      {

        v34 = v86;
        OUTLINED_FUNCTION_197_2((*(v86 + 56) + 16 * v49));

        v55 = OUTLINED_FUNCTION_40();
        v56(v55, v85);
      }

      else
      {
        v34 = v86;
        OUTLINED_FUNCTION_91_2(v86 + 8 * (v49 >> 6));
        v64 = (*(v86 + 48) + 16 * v49);
        *v64 = v39;
        v64[1] = v41;
        OUTLINED_FUNCTION_197_2((*(v34 + 56) + 16 * v49));
        v65 = OUTLINED_FUNCTION_40();
        v66(v65, v85);
        v67 = *(v34 + 16);
        v68 = __OFADD__(v67, 1);
        v69 = v67 + 1;
        if (v68)
        {
          goto LABEL_47;
        }

        *(v34 + 16) = v69;
      }
    }

    else
    {
      v57 = OUTLINED_FUNCTION_69_1();
      sub_1D8436A4C(v57, v58);
      v60 = v59;

      if (v60)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v86 = v34;
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
        OUTLINED_FUNCTION_172_0(v61);
        OUTLINED_FUNCTION_212_4();
        OUTLINED_FUNCTION_212_4();
        sub_1D8581828();
      }

      v62 = OUTLINED_FUNCTION_40();
      v63(v62, v35);
    }

    v36 = OUTLINED_FUNCTION_193_1();
    if (v21)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  sub_1D8581AF8();
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_60_0(unint64_t *a1)
{
  v3 = MEMORY[0x1E6969778];

  return sub_1D84A6058(a1, 255, v1, v3);
}

unint64_t OUTLINED_FUNCTION_60_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D848211C(a1);
}

uint64_t OUTLINED_FUNCTION_60_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

void OUTLINED_FUNCTION_129_1()
{

  JUMPOUT(0x1DA718990);
}

uint64_t OUTLINED_FUNCTION_129_2()
{

  return GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_232_0()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

unint64_t OUTLINED_FUNCTION_146_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D848211C(a1);
}

uint64_t OUTLINED_FUNCTION_146_4()
{
}

unint64_t sub_1D8441878(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1D85812E8();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1D8581388();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_307()
{
}

void OUTLINED_FUNCTION_136_0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = MEMORY[0x1E69E6720];

  sub_1D84BC8D4(319, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_136_1(uint64_t a1, uint64_t a2)
{

  return sub_1D8581988();
}

unint64_t OUTLINED_FUNCTION_136_2(uint64_t a1, uint64_t a2)
{

  return sub_1D8508ED4(a1);
}

uint64_t OUTLINED_FUNCTION_136_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(v10 + 16);
  *(v9 + 200) = *(v10 + 24);
  *(v9 + 208) = v8;
  *(v9 + 184) = a8;
  *(v9 + 192) = v12;
  *(v9 + 149) = a5;
  *(v9 + 168) = a1;
  *(v9 + 176) = a4;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_73()
{

  return sub_1D8580F98();
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_187()
{
}

uint64_t OUTLINED_FUNCTION_446(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

unint64_t OUTLINED_FUNCTION_103_1(uint64_t a1)
{

  return sub_1D843D7B8(a1);
}

uint64_t OUTLINED_FUNCTION_522()
{
}

uint64_t OUTLINED_FUNCTION_162_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8441FB0(a1, a2, v2);
}

unint64_t OUTLINED_FUNCTION_119_1(uint64_t a1)
{

  return sub_1D8526788(a1);
}

uint64_t OUTLINED_FUNCTION_119_2()
{

  return sub_1D8581768();
}

uint64_t OUTLINED_FUNCTION_187_0()
{
}

uint64_t OUTLINED_FUNCTION_155_1(uint64_t result, uint64_t a2)
{
  v4[4] = result;
  v4[5] = a2;
  v4[6] = v3;
  v4[7] = v2;
  return result;
}

uint64_t sub_1D8441DB4()
{
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_1_4();
  return sub_1D84379E4(v0, v1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_181(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

void OUTLINED_FUNCTION_135_0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{

  sub_1D84BC8D4(319, a2, a3, a4, type metadata accessor for Ref);
}

uint64_t OUTLINED_FUNCTION_135_2()
{
  v2 = v0[28];
  v0[7] = v0[27];
  v0[8] = v2;
}

unint64_t OUTLINED_FUNCTION_25(uint64_t a1)
{

  return sub_1D848211C(a1);
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_6(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1D8441FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1D8436A4C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

_BYTE *sub_1D8442058(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1D8442114);
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
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
          result = OUTLINED_FUNCTION_262(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

__n128 Page.init(_:next:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0uLL;
  v6 = *a2;
  Page.init(_:previous:next:)(a1, &v7, &v6, &v8);
  result = v9;
  v5 = v10;
  *a3 = v8;
  *(a3 + 8) = result;
  *(a3 + 24) = v5;
  return result;
}

__n128 Page.init(_:previous:next:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = *a2;
  *a4 = a1;
  swift_bridgeObjectRelease_n();
  result = v7;
  *(a4 + 24) = v6;
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_1D84421E4()
{
  OUTLINED_FUNCTION_174();
  v1 = v0;
  OUTLINED_FUNCTION_129_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_191(v3);
  v5 = OUTLINED_FUNCTION_506();

  return GameServicesActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(v5, v6, v1);
}

uint64_t sub_1D844229C()
{
  OUTLINED_FUNCTION_174();
  dynamic_cast_existential_2_unconditional(*(v0 + 24), *(v0 + 24), MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1D8442E50;

  return sub_1D84424C0();
}

uint64_t GameServicesActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = *a1;
  return OUTLINED_FUNCTION_0_20();
}

uint64_t dynamic_cast_existential_2_unconditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8442404()
{
  OUTLINED_FUNCTION_174();
  v3 = *(v0 + 48);
  sub_1D85813C8();
  *(v0 + 16) = v3;
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1D8442C04;

  return GameServicesActorSystem.JSONResultHandler.onReturn<A>(value:)();
}

uint64_t sub_1D84424C0()
{
  OUTLINED_FUNCTION_148();
  v0[9] = v1;
  v0[10] = v2;
  v0[7] = v3;
  v0[8] = v4;
  v0[5] = v5;
  v0[6] = v6;
  v0[4] = v7;
  v0[11] = *(v4 - 8);
  v0[12] = OUTLINED_FUNCTION_332();
  v8 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t GameServicesActorSystem.JSONResultHandler.onReturn<A>(value:)()
{
  OUTLINED_FUNCTION_148();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  swift_conformsToProtocol();
  *(v1 + 32) = swift_conformsToProtocol();
  *(v1 + 40) = *v0;
  v4 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84425F4()
{
  OUTLINED_FUNCTION_204();
  v1 = sub_1D8580B18();
  OUTLINED_FUNCTION_46_4(v1);
  sub_1D8580B08();
  OUTLINED_FUNCTION_40_0();
  sub_1D8580AF8();

  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_344_1();
  sub_1D843DDD8(v3, v4);
  v5 = OUTLINED_FUNCTION_344_1();
  v2(v5);
  v6 = OUTLINED_FUNCTION_344_1();
  sub_1D843F6E8(v6, v7);
  v8 = OUTLINED_FUNCTION_344_1();
  sub_1D843F6E8(v8, v9);
  OUTLINED_FUNCTION_57();

  return v10();
}

uint64_t Page.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v25 = a2[2];
  v26 = v5;
  type metadata accessor for Page.CodingKeys(255, v25, v4, v5);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  v6 = sub_1D8581A68();
  OUTLINED_FUNCTION_1();
  v27 = v7;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *v2;
  v12 = v2[2];
  v13 = v2[3];
  v23 = v2[1];
  v24 = v12;
  v21 = v2[4];
  v22 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v14 = v6;
  sub_1D8581BB8();
  v29 = v11;
  v32 = 0;
  sub_1D85814D8();
  v31 = v26;
  swift_getWitnessTable();
  v15 = v28;
  sub_1D8581A58();
  if (v15)
  {

    return (*(v27 + 8))(v10, v6);
  }

  else
  {
    v17 = v21;
    v18 = v22;
    v19 = v27;

    v29 = v23;
    v30 = v24;
    v32 = 1;
    sub_1D8442B28();

    OUTLINED_FUNCTION_10_6();

    v29 = v18;
    v30 = v17;
    v32 = 2;

    OUTLINED_FUNCTION_10_6();

    return (*(v19 + 8))(v10, v14);
  }
}

_BYTE *sub_1D8442954(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1D8442A20);
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

uint64_t getEnumTagSinglePayload for ReleaseState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D8442AD8(char a1)
{
  if (!a1)
  {
    return 0x73746E656D656C65;
  }

  if (a1 == 1)
  {
    return 0x73756F6976657270;
  }

  return 1954047342;
}

unint64_t sub_1D8442B28()
{
  result = qword_1EE0E0080;
  if (!qword_1EE0E0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E0080);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_178()
{

  return sub_1D85817B8();
}

uint64_t OUTLINED_FUNCTION_178_1(uint64_t *a1, uint64_t *a2)
{

  return sub_1D852B3A0(a1, a2, v3, v2);
}

uint64_t sub_1D8442C04()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t OUTLINED_FUNCTION_140_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581878();
}

uint64_t sub_1D8442D48()
{
  OUTLINED_FUNCTION_148();
  v0 = OUTLINED_FUNCTION_63_2();
  v1(v0);

  OUTLINED_FUNCTION_57();

  return v2();
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

void OUTLINED_FUNCTION_51_2()
{
  *(v0 + v1[13]) = 3;
  *(v0 + v1[14]) = 0;
  v2 = (v0 + v1[15]);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1D8442E50()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t OUTLINED_FUNCTION_144()
{

  return sub_1D8580F98();
}

uint64_t OUTLINED_FUNCTION_519()
{
}

uint64_t sub_1D8442FA8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t sub_1D8443088()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 224) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8443190()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_151();
  v1(v0);

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_535();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_68_0()
{
}

uint64_t sub_1D84432A8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84433A0()
{
  OUTLINED_FUNCTION_148();
  sub_1D8443420(v0[12], v0[13], v0[14], v0[15]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_7(v1);

  return MEMORY[0x1EEE6D9C8](v2);
}

uint64_t sub_1D8443420(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1D843F6E8(result, a2);
  }

  return result;
}

uint64_t sub_1D8443460()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_153();
  v7 = v6;
  OUTLINED_FUNCTION_62();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_37();
  *v10 = v9;
  v7[19] = v0;

  if (!v0)
  {
    v7[20] = v3;
    v7[21] = v5;
  }

  OUTLINED_FUNCTION_38_5();
  OUTLINED_FUNCTION_535();

  return MEMORY[0x1EEE6DFA0](v11);
}

uint64_t sub_1D844356C()
{
  OUTLINED_FUNCTION_148();
  sub_1D843F6E8(v0[16], v0[17]);
  v1 = OUTLINED_FUNCTION_194();
  sub_1D84364C8(v1, v2);
  v3 = v0[1];
  v5 = v0[20];
  v4 = v0[21];

  return v3(v4, v5);
}

void OUTLINED_FUNCTION_32_1()
{
  *(v0 - 260) = 0;
  *(v0 - 72) = 0;
  *(v0 - 256) = 0;
}

void OUTLINED_FUNCTION_32_3()
{
  v1 = v0[3];
  v0[4] = v0[2];
  v0[5] = v1;
}

uint64_t sub_1D844366C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  *v4 = *v1;
  v3[18] = v5;
  v3[19] = v6;
  v3[20] = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8443780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  if (*(v12 + 152) >> 60 == 15)
  {
    sub_1D857FB24();
    OUTLINED_FUNCTION_10_0();
    swift_allocError();
    *v13 = xmmword_1D85AAC20;
    OUTLINED_FUNCTION_27_5(v13, 1);
    swift_willThrow();
  }

  else
  {
    v14 = sub_1D8580AE8();
    OUTLINED_FUNCTION_46_4(v14);
    sub_1D8580AD8();
    sub_1D8580AC8();

    sub_1D8443C38(*(v12 + 144), *(v12 + 152));
  }

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t Page.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for Page.CodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  sub_1D8581978();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8581BA8();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1D85814D8();
    swift_getWitnessTable();
    sub_1D8581958();
    sub_1D8443BE4();
    OUTLINED_FUNCTION_8_2(&type metadata for Cursor);

    OUTLINED_FUNCTION_8_2(&type metadata for Cursor);
    v9 = OUTLINED_FUNCTION_9_4();
    v10(v9);

    *a5 = v12;
    a5[1] = v12;
    a5[2] = v13;
    a5[3] = v12;
    a5[4] = v13;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_1D8443BE4()
{
  result = qword_1EE0E0310;
  if (!qword_1EE0E0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E0310);
  }

  return result;
}

uint64_t sub_1D8443C38(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D843F6E8(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_169_2()
{

  return GameServicesActorSystem.makeInvocationEncoder()((v0 + 16));
}

uint64_t sub_1D8443C8C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v3 + 216) = v0;

  if (v0)
  {
    v6 = sub_1D8537464;
  }

  else
  {
    v6 = sub_1D8443DA0;
  }

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1D8443DA0()
{
  v1 = v0[2];
  v17 = v0[5];
  v18 = v0[6];

  v2 = sub_1D8581458();
  v0[10] = v2;
  v3 = sub_1D85814B8();
  while (v2 != v3)
  {
    v4 = sub_1D8581498();
    sub_1D8581468();
    if (v4)
    {
      (*(v0[23] + 16))(v0[25], v1 + ((*(v0[23] + 80) + 32) & ~*(v0[23] + 80)) + *(v0[23] + 72) * v2, v0[18]);
    }

    else
    {
      v8 = v0[24];
      result = sub_1D85817A8();
      if (v8 != 8)
      {
        __break(1u);
        return result;
      }

      v10 = result;
      v11 = v0[25];
      v12 = v0[23];
      v13 = v0[18];
      v0[11] = v10;
      (*(v12 + 16))(v11, v0 + 11, v13);
      swift_unknownObjectRelease();
    }

    v5 = v0[21];
    v6 = v0[22];
    v7 = v0[20];
    sub_1D85814C8();
    sub_1D85815F8();
    sub_1D85815D8();
    (*(v5 + 8))(v6, v7);
    v3 = sub_1D85814B8();
    v2 = v0[10];
  }

  if (v18)
  {

    v14 = v0[15];
    v0[7] = v17;
    v0[8] = v18;
    v19 = (v14 + *v14);
    v15 = swift_task_alloc();
    v0[26] = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_3_7(v15);

    return (v19)(v0 + 2, v0 + 7);
  }

  else
  {

    v0[12] = 0;
    OUTLINED_FUNCTION_17_5();
    sub_1D85815F8();
    sub_1D85815E8();

    OUTLINED_FUNCTION_146();

    return v16();
  }
}

uint64_t sub_1D84440DC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t sub_1D84441C0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v3 + 120) = v0;

  if (v0)
  {
    v6 = sub_1D85377C4;
  }

  else
  {

    v6 = sub_1D84442CC;
  }

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1D8444308(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D8580EA8();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D8444390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D8580EA8();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8444794()
{
  OUTLINED_FUNCTION_415();
  if (v1)
  {
    return OUTLINED_FUNCTION_241();
  }

  OUTLINED_FUNCTION_417();
  sub_1D8580EA8();
  v3 = OUTLINED_FUNCTION_400(*(v0 + 36));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1D84447F8()
{
  OUTLINED_FUNCTION_319();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1D8580EA8();
    v5 = OUTLINED_FUNCTION_400(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1D8444868()
{
  OUTLINED_FUNCTION_415();
  if (v2)
  {
    return OUTLINED_FUNCTION_241();
  }

  OUTLINED_FUNCTION_417();
  v4 = *(sub_1D8580EA8() - 8);
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
    v5 = *(v1 + 28);
  }

  v6 = OUTLINED_FUNCTION_400(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1D844491C()
{
  OUTLINED_FUNCTION_319();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(sub_1D8580EA8() - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
      v8 = *(v5 + 28);
    }

    v9 = OUTLINED_FUNCTION_400(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1D84449E0()
{
  OUTLINED_FUNCTION_415();
  if (v1)
  {
    return OUTLINED_FUNCTION_241();
  }

  v3 = OUTLINED_FUNCTION_417();
  type metadata accessor for ChallengeInvite.Details(v3);
  v4 = OUTLINED_FUNCTION_400(*(v0 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1D8444A44()
{
  OUTLINED_FUNCTION_319();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for ChallengeInvite.Details(0);
    v5 = OUTLINED_FUNCTION_400(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1D8444C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8580EA8();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D8444CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8580EA8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D8444CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_257_0(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A78, &qword_1D8598298);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D8444D7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39A78, &qword_1D8598298);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8444E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_85_1();
  v6 = sub_1D8580EA8();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_257_0(*(v3 + *(a3 + 24) + 8));
  }

  v7 = v6;
  v8 = v3 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D8444EAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8580EA8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8445420()
{
  OUTLINED_FUNCTION_415();
  if (v2)
  {
    return OUTLINED_FUNCTION_257_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_417();
  sub_1D8580D78();
  v4 = OUTLINED_FUNCTION_400(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

uint64_t sub_1D84454A0()
{
  OUTLINED_FUNCTION_415();
  if (v3)
  {
    return OUTLINED_FUNCTION_257_0(*(v1 + 8));
  }

  OUTLINED_FUNCTION_417();
  sub_1D8580D78();
  OUTLINED_FUNCTION_366_0();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
    v6 = *(v2 + 52);
  }

  v7 = OUTLINED_FUNCTION_400(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1D8445554()
{
  OUTLINED_FUNCTION_319();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_1D8580D78();
    OUTLINED_FUNCTION_366_0();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
      v8 = *(v5 + 52);
    }

    v9 = OUTLINED_FUNCTION_288_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_1D8445610()
{
  OUTLINED_FUNCTION_415();
  if (v3)
  {
    return OUTLINED_FUNCTION_257_0(*(v1 + 8));
  }

  OUTLINED_FUNCTION_417();
  sub_1D8580EA8();
  OUTLINED_FUNCTION_366_0();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
    v6 = *(v2 + 40);
  }

  v7 = OUTLINED_FUNCTION_400(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1D84456C4()
{
  OUTLINED_FUNCTION_319();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_1D8580EA8();
    OUTLINED_FUNCTION_366_0();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
      v8 = *(v5 + 40);
    }

    v9 = OUTLINED_FUNCTION_288_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_1D8445780()
{
  OUTLINED_FUNCTION_415();
  if (v2)
  {
    return OUTLINED_FUNCTION_257_0(*(v0 + 8));
  }

  v4 = OUTLINED_FUNCTION_417();
  type metadata accessor for GameActivityInstance(v4);
  v5 = OUTLINED_FUNCTION_400(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t sub_1D8445800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39968, &qword_1D8596368);
  OUTLINED_FUNCTION_366_0();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_257_0(*(a1 + *(a3 + 52)));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1D84458AC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39968, &qword_1D8596368);
  OUTLINED_FUNCTION_366_0();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_288_1(*(a4 + 24));

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }
}

uint64_t sub_1D8445C14()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D8445C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8580EA8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D8445D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8580EA8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8445F00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D8445F94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_1D84462A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*v2 & a1) != 0)
  {
    *v2 &= ~a1;
  }

  OUTLINED_FUNCTION_244_2(a2);
}

uint64_t sub_1D8446378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_263_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ABE0, &qword_1D85A7978);
  OUTLINED_FUNCTION_366_0();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_268_2();
LABEL_5:

    return __swift_getEnumTagSinglePayload(v7, v3, v8);
  }

  type metadata accessor for GameHistory.InstallHistory(0);
  OUTLINED_FUNCTION_366_0();
  if (*(v9 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_273_2();
    goto LABEL_5;
  }

  v11 = *(v4 + *(a3 + 24) + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_1D8446468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_263_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3ABE0, &qword_1D85A7978);
  OUTLINED_FUNCTION_366_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    type metadata accessor for GameHistory.InstallHistory(0);
    OUTLINED_FUNCTION_366_0();
    if (*(v12 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = (v4 - 1);
      return;
    }

    v11 = OUTLINED_FUNCTION_273_2();
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1D8446558()
{
  OUTLINED_FUNCTION_263_0();
  sub_1D8580EA8();
  v1 = OUTLINED_FUNCTION_268_2();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D8446598()
{
  OUTLINED_FUNCTION_263_0();
  v2 = sub_1D8580EA8();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_1D84465E0(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 == 254)
  {
    v2 = *a1;
    if (v2 >= 2)
    {
      return v2 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
    v5 = OUTLINED_FUNCTION_273_2();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

void sub_1D8446668()
{
  OUTLINED_FUNCTION_263_0();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
    v3 = OUTLINED_FUNCTION_273_2();

    __swift_storeEnumTagSinglePayload(v3, v0, v0, v4);
  }
}

uint64_t sub_1D8446800()
{
  OUTLINED_FUNCTION_59_2();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_257_0(*v0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v4 = OUTLINED_FUNCTION_28_6();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1D844687C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59_2();
  if (v4 == v5)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
    v6 = OUTLINED_FUNCTION_28_6();

    __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }
}

uint64_t sub_1D84468FC()
{
  OUTLINED_FUNCTION_59_2();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_257_0(*(v0 + 8));
  }

  sub_1D8580D78();
  v4 = OUTLINED_FUNCTION_28_6();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1D844696C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59_2();
  if (v4 == v5)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    sub_1D8580D78();
    v6 = OUTLINED_FUNCTION_28_6();

    __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }
}

uint64_t sub_1D8446A80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3AE30, &qword_1D85AB598);
  OUTLINED_FUNCTION_4_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D8446B0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

BOOL sub_1D8446B8C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1D8446C04()
{
  result = sub_1D85812C8();
  if (!result)
  {
    goto LABEL_4;
  }

  v1 = result;
  v2 = sub_1D8448174(result, 0);
  v3 = sub_1D84480A8(&v4, v2 + 4, v1, 0xD00000000000003ELL, 0x80000001D85822F0);

  if (v3 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x1E69E7CC0];
  }

  qword_1ECA5CED0 = v2;
  return result;
}

uint64_t *sub_1D8446CA4()
{
  if (qword_1ECA3AEA0 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  return &qword_1ECA5CED0;
}

uint64_t sub_1D8446CE8()
{
  if (qword_1ECA3AEA0 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }
}

uint64_t sub_1D8446D38@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a3;
  v92 = a4;
  v94 = a5;
  v99 = *MEMORY[0x1E69E9840];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38950, &qword_1D85907F0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v75 - v6;
  OUTLINED_FUNCTION_5_0();
  v82 = sub_1D8581168();
  OUTLINED_FUNCTION_1();
  v81 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v80 = v10 - v9;
  OUTLINED_FUNCTION_5_0();
  v11 = sub_1D8581148();
  OUTLINED_FUNCTION_1();
  v86 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v85 = v15 - v14;
  OUTLINED_FUNCTION_5_0();
  v16 = sub_1D8580EE8();
  OUTLINED_FUNCTION_1();
  v79 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  v78 = v20 - v19;
  OUTLINED_FUNCTION_5_0();
  v21 = sub_1D8581158();
  OUTLINED_FUNCTION_1();
  v90 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  v26 = v25 - v24;
  sub_1D8581178();
  OUTLINED_FUNCTION_1();
  v87 = v28;
  v88 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  v93 = (v30 - v29);
  OUTLINED_FUNCTION_5_0();
  v31 = sub_1D8581268();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  v37 = v36 - v35;
  sub_1D8581258();
  v38 = sub_1D8581238();
  v40 = v39;
  v41 = *(v33 + 8);
  v89 = v31;
  (v41)(v37, v31);
  if (v40 >> 60 == 15)
  {
    v42 = v94;
    v43 = v16;
    return __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
  }

  v75 = v11;
  v77 = v16;
  v44 = MEMORY[0x1E6966688];
  v45 = MEMORY[0x1E6966680];
  sub_1D8448B3C(&qword_1ECA38958, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  v76 = v41;
  sub_1D8581118();
  sub_1D843DDD8(v38, v40);
  sub_1D8447FCC(v38, v40, v26, MEMORY[0x1E6966688], &qword_1ECA38958, v44, v45);
  sub_1D8443C38(v38, v40);
  v46 = v93;
  LOBYTE(v41) = v26;
  sub_1D8581108();
  (*(v90 + 8))(v26, v21);
  sub_1D8581258();
  v47 = sub_1D8581238();
  v49 = v48;
  v76(v37, v89);
  v50 = v46;
  if (v49 >> 60 == 15)
  {
    (*(v87 + 8))(v46, v88);
    sub_1D8443C38(v38, v40);
    v42 = v94;
    v43 = v77;
    return __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
  }

  v91 = v38;
  v92 = v40;
  v52 = MEMORY[0x1DA7184E0](v47, v49);
  v53 = v77;
  if (__OFADD__(v52, 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v97 = sub_1D8580E18();
  v98 = v54;
  v55 = v78;
  sub_1D8447564(v50);
  v56 = sub_1D8580ED8();
  v58 = v57;
  (*(v79 + 8))(v55, v53);
  sub_1D844773C(v56, v58);
  v89 = v49;
  v90 = v47;
  sub_1D8580E68();
  v59 = MEMORY[0x1E6966698];
  v60 = MEMORY[0x1E6966690];
  sub_1D8448B3C(&qword_1ECA38960, MEMORY[0x1E6966698], MEMORY[0x1E6966690]);
  v61 = v80;
  v62 = v82;
  sub_1D8581118();
  v63 = OUTLINED_FUNCTION_7_0();
  sub_1D843DDD8(v63, v64);
  v65 = OUTLINED_FUNCTION_7_0();
  sub_1D8447FCC(v65, v66, v61, v67, &qword_1ECA38960, v59, v60);
  v68 = OUTLINED_FUNCTION_7_0();
  sub_1D843F6E8(v68, v69);
  v70 = v85;
  sub_1D8581108();
  (*(v81 + 8))(v61, v62);
  v41 = v84;
  (*(v86 + 16))(v84, v70, v75);
  *(v41 + *(v83 + 36)) = 16;
  v50 = sub_1D84481F0(v41);
  sub_1D8436E18(v41, &qword_1ECA38950, &qword_1D85907F0);
  if (v50[2] < 7uLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  LOBYTE(v41) = *(v50 + 38);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v50 = sub_1D8447FB8(v50);
  }

  v71 = v94;
  v72 = v77;
  *(v50 + 38) = v41 & 0xF | 0x50;
  if (v50[2] < 9uLL)
  {
    __break(1u);
  }

  *(v50 + 40) = v50[5] & 0x3F | 0x80;
  v95[1] = 0;
  v96 = v50;
  v95[0] = 0;
  sub_1D84476D4(v95, &v96);
  OUTLINED_FUNCTION_3_0();
  sub_1D8580EC8();
  sub_1D8443C38(v90, v89);
  sub_1D8443C38(v91, v92);
  v73 = OUTLINED_FUNCTION_6_0();
  v74(v73);
  (*(v87 + 8))(v93, v88);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v72);

  return sub_1D843F6E8(v97, v98);
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

uint64_t sub_1D8447564(uint64_t a1)
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38998, &qword_1D8590800);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  sub_1D8581178();
  v11[0] = 0;
  v11[1] = 0;
  OUTLINED_FUNCTION_4_0();
  (*(v6 + 16))(v5, a1);
  *&v5[*(v3 + 44)] = 16;
  v7 = sub_1D844849C(v5);
  sub_1D8436E18(v5, &qword_1ECA38998, &qword_1D8590800);
  v10 = v7;
  v12[3] = &v10;
  v12[4] = v11;
  v12[5] = v12;
  v12[6] = v11;
  sub_1D8448B84(v7 + 4, v7[2]);

  OUTLINED_FUNCTION_3_0();
  return sub_1D8580EC8();
}

uint64_t sub_1D84476D4(uint64_t a1, void *a2)
{
  v2 = *a2;

  sub_1D8448B1C((v2 + 32), *(v2 + 16));
}

uint64_t sub_1D844773C(uint64_t a1, uint64_t a2)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[0] = a1;
  v3[1] = a2;
  v4[3] = MEMORY[0x1E69E6290];
  v4[4] = MEMORY[0x1E6969DF8];
  v4[0] = v3;
  v4[1] = v4;
  __swift_project_boxed_opaque_existential_1(v4, MEMORY[0x1E69E6290]);
  sub_1D8580E08();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

unint64_t sub_1D84477D8(unint64_t result)
{
  v12 = 0;
  v13 = 0xE000000000000000;
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  v1 = result;
  if (!result)
  {
    return 0;
  }

  if (qword_1ECA3AEA0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v2 = qword_1ECA5CED0;
    v3 = *(qword_1ECA5CED0 + 16);
    if (!v3)
    {
      break;
    }

    v4 = 0;
    v5 = -v3 % v3;
    while (v4 < v1)
    {
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_17;
      }

      v11 = 0;
      MEMORY[0x1DA719830](&v11, 8);
      v7 = (v11 * v3) >> 64;
      if (v3 > v11 * v3 && v5 > v11 * v3)
      {
        do
        {
          v11 = 0;
          MEMORY[0x1DA719830](&v11, 8);
        }

        while (v5 > v11 * v3);
        v7 = (v11 * v3) >> 64;
      }

      if (v7 >= *(v2 + 16))
      {
        goto LABEL_18;
      }

      v8 = (v2 + 32 + 16 * v7);
      v9 = *v8;
      v10 = v8[1];

      MEMORY[0x1DA718980](v9, v10);

      if (v4 == v1)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    OUTLINED_FUNCTION_0();
    result = swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8447938(uint64_t a1, uint64_t a2)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38968, &qword_1D85907F8);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v49 - v5;
  OUTLINED_FUNCTION_5_0();
  v6 = sub_1D8581138();
  OUTLINED_FUNCTION_1();
  v49 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v11 = v10 - v9;
  sub_1D8581128();
  OUTLINED_FUNCTION_1();
  v52 = v13;
  v53 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v51 = v15 - v14;
  OUTLINED_FUNCTION_5_0();
  v16 = sub_1D8581268();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  v22 = v21 - v20;
  v55 = a1;
  v56 = a2;

  MEMORY[0x1DA718990](45, 0xE100000000000000);
  v23 = OUTLINED_FUNCTION_6_0();
  MEMORY[0x1DA718990](v23);
  sub_1D8581258();
  sub_1D8581238();
  v25 = v24;

  v27 = *(v18 + 8);
  v26 = v18 + 8;
  v27(v22, v16);
  if (v25 >> 60 == 15)
  {
    sub_1D8448448();
    swift_allocError();
    static GameServicesError.illegalCast<A, B>(from:to:)(v28);
    swift_willThrow();
  }

  else
  {
    v29 = MEMORY[0x1E6966620];
    v30 = MEMORY[0x1E6966618];
    sub_1D8448B3C(&qword_1ECA38978, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1D8581118();
    v31 = OUTLINED_FUNCTION_6_0();
    sub_1D843DDD8(v31, v32);
    v33 = OUTLINED_FUNCTION_6_0();
    v34 = v50;
    sub_1D8447FCC(v33, v35, v11, v36, &qword_1ECA38978, v29, v30);
    v50 = v34;
    v37 = OUTLINED_FUNCTION_6_0();
    sub_1D8443C38(v37, v38);
    v39 = v51;
    sub_1D8581108();
    (*(v49 + 8))(v11, v6);
    v41 = v52;
    v40 = v53;
    v42 = v57;
    v43 = OUTLINED_FUNCTION_7_0();
    v44(v43);
    *(v42 + *(v54 + 36)) = 10;
    v45 = sub_1D84486F4(v42);
    sub_1D8436E18(v42, &qword_1ECA38968, &qword_1D85907F8);
    v26 = sub_1D8447D38(v45);
    v46 = OUTLINED_FUNCTION_6_0();
    sub_1D8443C38(v46, v47);

    (*(v41 + 8))(v39, v40);
  }

  return v26;
}

uint64_t sub_1D8447D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 48;
  }

  v2 = a1;
  v3 = 0;
  v4 = 48;
  while (v1 != v3)
  {
    v5 = a1 + v3++;
    if (*(v5 + 32))
    {

      v4 = 0;
      v6 = 0xE000000000000000;
      while (1)
      {
        v16 = v4;
        v7 = 0;
        v8 = 32;
        v9 = MEMORY[0x1E69E7CC0];
        do
        {
          v10 = *(v2 + v8) | (v7 << 8);
          v11 = *(v9 + 2);
          if (v11 || v10 > 0x3D)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_1D8437420(0, v11 + 1, 1, v9);
            }

            v13 = *(v9 + 2);
            v12 = *(v9 + 3);
            if (v13 >= v12 >> 1)
            {
              v9 = sub_1D8437420((v12 > 1), v13 + 1, 1, v9);
            }

            *(v9 + 2) = v13 + 1;
            v9[v13 + 32] = v10 / 0x3E;
          }

          v7 = v10 % 0x3E;
          ++v8;
          --v1;
        }

        while (v1);

        if (qword_1ECA3AEA0 != -1)
        {
          OUTLINED_FUNCTION_0();
          result = swift_once();
        }

        if (v7 >= *(qword_1ECA5CED0 + 16))
        {
          break;
        }

        v15 = qword_1ECA5CED0 + 16 * v7;
        v17 = *(v15 + 32);
        v18 = *(v15 + 40);
        swift_bridgeObjectRetain_n();
        MEMORY[0x1DA718990](v16, v6);

        v4 = v17;
        v6 = v18;
        v2 = v9;
        v1 = *(v9 + 2);
        if (!v1)
        {

          return v4;
        }
      }

      __break(1u);
      return result;
    }
  }

  return v4;
}

uint64_t static UUID.generateUUIDFromPartyCodeAndShortID(partyCode:shortID:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  MEMORY[0x1DA718990](45, 0xE100000000000000);
  MEMORY[0x1DA718990](a3, a4);
  sub_1D8446D38(a1, a2, a5);
}

uint64_t sub_1D8447FCC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v17 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_11;
      }

      result = result;
      v15 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v17;
      goto LABEL_9;
    case 2uLL:
      v14 = *(result + 24);
      v15 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v16 = v14;
LABEL_9:
      result = sub_1D8448A20(result, v16, v15, a3, a4, a5, a6, a7);
      if (v7)
      {
        goto LABEL_10;
      }

      return result;
    case 3uLL:
      result = 0;
      v13 = 0;
      goto LABEL_5;
    default:
      v13 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1D844894C(result, v13, a3, a4, a5, a6, a7);
      if (v7)
      {
LABEL_10:
        result = MEMORY[0x1DA719650](v7);
        __break(1u);
LABEL_11:
        __break(1u);
      }

      return result;
  }
}

void *sub_1D8448088(void *__src, size_t __len, int a3, int a4, int a5, void *__dst)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(__dst, __src, __len);
    }
  }

  return __src;
}

uint64_t sub_1D84480A8(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_1D8581318();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D8448174(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389A8, &qword_1D8590808);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_1D84481F0(uint64_t a1)
{
  v2 = sub_1D8581148();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_1D8448B3C(&qword_1ECA38990, MEMORY[0x1E6966670], MEMORY[0x1E6966678]);
  sub_1D85813A8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38950, &qword_1D85907F0);
  v6 = 0;
  v7 = *(a1 + *(result + 9));
  v8 = v26[0];
  v9 = v26[1];
  v10 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); v7; ++v9)
  {
    v12 = *(v8 + 16);
    if (v9 == v12)
    {
      break;
    }

    if (v9 >= v12)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 = *(v8 + v9 + 32);
    if (!v6)
    {
      v14 = v10[3];
      if (((v14 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38980, &qword_1D85AB5C0);
      v17 = swift_allocObject();
      v18 = 2 * _swift_stdlib_malloc_size(v17) - 64;
      v17[2] = v16;
      v17[3] = v18;
      v19 = (v17 + 4);
      v20 = v10[3];
      if (v10[2])
      {
        if (v17 != v10 || v19 >= v10 + (v20 >> 1) + 32)
        {
          memmove(v17 + 4, v10 + 4, v20 >> 1);
        }

        v10[2] = 0;
      }

      i = (v19 + (v20 >> 1));
      v6 = (v18 >> 1) - (v20 >> 1);

      v10 = v17;
    }

    v22 = __OFSUB__(v6--, 1);
    if (v22)
    {
      goto LABEL_25;
    }

    --v7;
    *i++ = v13;
  }

  v23 = v10[3];
  if (v23 < 2)
  {
    return v10;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v6);
  v25 = v24 - v6;
  if (!v22)
  {
    v10[2] = v25;
    return v10;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1D8448448()
{
  result = qword_1ECA38970;
  if (!qword_1ECA38970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38970);
  }

  return result;
}

void *sub_1D844849C(uint64_t a1)
{
  v2 = sub_1D8581178();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_1D8448B3C(&qword_1ECA389A0, MEMORY[0x1E69666B0], MEMORY[0x1E69666B8]);
  sub_1D85813A8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38998, &qword_1D8590800);
  v6 = 0;
  v7 = *(a1 + *(result + 9));
  v8 = v26[0];
  v9 = v26[1];
  v10 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); v7; ++v9)
  {
    v12 = *(v8 + 16);
    if (v9 == v12)
    {
      break;
    }

    if (v9 >= v12)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 = *(v8 + v9 + 32);
    if (!v6)
    {
      v14 = v10[3];
      if (((v14 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38980, &qword_1D85AB5C0);
      v17 = swift_allocObject();
      v18 = 2 * _swift_stdlib_malloc_size(v17) - 64;
      v17[2] = v16;
      v17[3] = v18;
      v19 = (v17 + 4);
      v20 = v10[3];
      if (v10[2])
      {
        if (v17 != v10 || v19 >= v10 + (v20 >> 1) + 32)
        {
          memmove(v17 + 4, v10 + 4, v20 >> 1);
        }

        v10[2] = 0;
      }

      i = (v19 + (v20 >> 1));
      v6 = (v18 >> 1) - (v20 >> 1);

      v10 = v17;
    }

    v22 = __OFSUB__(v6--, 1);
    if (v22)
    {
      goto LABEL_25;
    }

    --v7;
    *i++ = v13;
  }

  v23 = v10[3];
  if (v23 < 2)
  {
    return v10;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v6);
  v25 = v24 - v6;
  if (!v22)
  {
    v10[2] = v25;
    return v10;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D84486F4(uint64_t a1)
{
  v2 = sub_1D8581128();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_1D8448B3C(&qword_1ECA38988, MEMORY[0x1E69663E0], MEMORY[0x1E69663F0]);
  sub_1D85813A8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38968, &qword_1D85907F8);
  v6 = 0;
  v7 = *(a1 + *(result + 9));
  v8 = v26[0];
  v9 = v26[1];
  v10 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); v7; ++v9)
  {
    v12 = *(v8 + 16);
    if (v9 == v12)
    {
      break;
    }

    if (v9 >= v12)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 = *(v8 + v9 + 32);
    if (!v6)
    {
      v14 = v10[3];
      if (((v14 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38980, &qword_1D85AB5C0);
      v17 = swift_allocObject();
      v18 = 2 * _swift_stdlib_malloc_size(v17) - 64;
      v17[2] = v16;
      v17[3] = v18;
      v19 = (v17 + 4);
      v20 = v10[3];
      if (v10[2])
      {
        if (v17 != v10 || v19 >= v10 + (v20 >> 1) + 32)
        {
          memmove(v17 + 4, v10 + 4, v20 >> 1);
        }

        v10[2] = 0;
      }

      i = (v19 + (v20 >> 1));
      v6 = (v18 >> 1) - (v20 >> 1);

      v10 = v17;
    }

    v22 = __OFSUB__(v6--, 1);
    if (v22)
    {
      goto LABEL_25;
    }

    --v7;
    *i++ = v13;
  }

  v23 = v10[3];
  if (v23 < 2)
  {
    return v10;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v6);
  v25 = v24 - v6;
  if (!v22)
  {
    v10[2] = v25;
    return v10;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D844894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  a4(0);
  sub_1D8448B3C(a5, a6, a7);
  return sub_1D85810F8();
}

uint64_t sub_1D8448A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  result = sub_1D8580C98();
  if (!result || (result = sub_1D8580CB8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1D8580CA8();
      a5(0);
      sub_1D8448B3C(a6, a7, a8);
      return sub_1D85810F8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8448B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FriendActivity.context.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FriendActivity.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FriendActivity(0) + 28);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FriendActivity(uint64_t a1)
{
  result = qword_1ECA3B0C0;
  if (!qword_1ECA3B0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FriendActivity.init(player:context:image:date:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v8 = a1[1];
  v9 = *a4;
  v10 = a4[1];
  *a6 = *a1;
  *(a6 + 1) = v8;
  *(a6 + 2) = a2;
  *(a6 + 3) = a3;
  *(a6 + 4) = v9;
  *(a6 + 5) = v10;
  v11 = *(type metadata accessor for FriendActivity(0) + 28);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v13 = *(v12 + 32);

  return v13(&a6[v11], a5);
}

uint64_t static FriendActivity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1D8448DF4(*a1, a1[1], *a2, a2[1], &qword_1ECA389B8, &qword_1D8590B30, &qword_1ECA38A38) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1D8581AB8() & 1) == 0 || (sub_1D8448DF4(a1[4], a1[5], a2[4], a2[5], &qword_1ECA389C8, &qword_1D8590820, &qword_1ECA38A30) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FriendActivity(0);

  return _s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D8448DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1D844A16C(a7, a5, a6, &protocol conformance descriptor for Ref<A>);
  sub_1D85813D8();
  sub_1D85813D8();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D8581AB8();
  }

  return v11 & 1;
}

uint64_t sub_1D8448ED8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_7(0x726579616C70, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_7(0x747865746E6F63, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_7(0x6567616D69, 0xE500000000000000) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1702125924 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_7(1702125924, 0xE400000000000000);

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

uint64_t sub_1D8449030(unsigned __int8 a1)
{
  sub_1D8581B58();
  MEMORY[0x1DA7191F0](a1);
  return sub_1D8581B98();
}

uint64_t sub_1D8449078(char a1)
{
  result = 0x726579616C70;
  switch(a1)
  {
    case 1:
      result = 0x747865746E6F63;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8449108(uint64_t a1)
{
  v2 = *v1;
  sub_1D8581B58();
  MEMORY[0x1DA7191F0](v2);
  return sub_1D8581B98();
}

uint64_t sub_1D8449154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8448ED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8449188(uint64_t a1)
{
  v2 = sub_1D8449444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D84491C4(uint64_t a1)
{
  v2 = sub_1D8449444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B0, &unk_1D8590810);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8449444();
  sub_1D8581BB8();
  v11 = v3[1];
  v20 = *v3;
  v21 = v11;
  v19 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  v12 = OUTLINED_FUNCTION_2(&qword_1ECA389C0);
  OUTLINED_FUNCTION_6_1(v12);

  if (!v2)
  {
    LOBYTE(v20) = 1;
    sub_1D8581A08();
    v13 = v3[5];
    v20 = v3[4];
    v21 = v13;
    v19 = 2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
    v14 = OUTLINED_FUNCTION_2(&qword_1ECA389D0);
    OUTLINED_FUNCTION_6_1(v14);

    type metadata accessor for FriendActivity(0);
    LOBYTE(v20) = 3;
    sub_1D8580EA8();
    OUTLINED_FUNCTION_0_0();
    sub_1D8449BCC(v15, v16, MEMORY[0x1E6969538]);
    sub_1D8581A58();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1D8449444()
{
  result = qword_1ECA3AEB0[0];
  if (!qword_1ECA3AEB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3AEB0);
  }

  return result;
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

uint64_t FriendActivity.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  v1 = sub_1D844A16C(&qword_1EE0E0090, &qword_1ECA389B8, &qword_1D8590B30, &protocol conformance descriptor for Ref<A>);
  OUTLINED_FUNCTION_10_1(v1);
  sub_1D85812B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
  v2 = sub_1D844A16C(&qword_1ECA389E0, &qword_1ECA389C8, &qword_1D8590820, &protocol conformance descriptor for Ref<A>);
  OUTLINED_FUNCTION_10_1(v2);
  type metadata accessor for FriendActivity(0);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_0_0();
  sub_1D8449BCC(v3, v4, MEMORY[0x1E6969540]);
  return sub_1D85811E8();
}

uint64_t FriendActivity.hashValue.getter()
{
  sub_1D8581B58();
  FriendActivity.hash(into:)(v1);
  return sub_1D8581B98();
}

uint64_t FriendActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v29 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389F0, &qword_1D8590828);
  OUTLINED_FUNCTION_1();
  v33 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for FriendActivity(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8449444();
  v32 = v11;
  v16 = v34;
  sub_1D8581BA8();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v12;
  v28 = v7;
  v34 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  v37 = 0;
  OUTLINED_FUNCTION_3_1(&qword_1ECA389F8);
  OUTLINED_FUNCTION_9();
  sub_1D8581958();
  v17 = v36;
  v18 = v34;
  *v34 = v35;
  *(v18 + 1) = v17;
  LOBYTE(v35) = 1;
  *(v18 + 2) = sub_1D8581908();
  *(v18 + 3) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
  v37 = 2;
  OUTLINED_FUNCTION_3_1(&qword_1ECA38A00);
  OUTLINED_FUNCTION_9();
  sub_1D8581958();
  v20 = v36;
  *(v18 + 4) = v35;
  *(v18 + 5) = v20;
  LOBYTE(v35) = 3;
  OUTLINED_FUNCTION_0_0();
  sub_1D8449BCC(v21, v22, MEMORY[0x1E6969558]);
  v23 = v28;
  sub_1D8581958();
  v24 = OUTLINED_FUNCTION_1_0();
  v25(v24);
  (*(v29 + 32))(&v18[*(v27 + 28)], v23, v3);
  sub_1D8449AC4(v18, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D8449B28(v18);
}

uint64_t sub_1D8449A88(uint64_t a1)
{
  sub_1D8581B58();
  FriendActivity.hash(into:)(v2);
  return sub_1D8581B98();
}

uint64_t sub_1D8449AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8449B28(uint64_t a1)
{
  v2 = type metadata accessor for FriendActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8449BCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of ActivityServiceProtocol.listFriendActivities(player:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D8449D3C;

  return v9(a1, a2, a3);
}

uint64_t sub_1D8449D3C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1D8449E60(uint64_t a1)
{
  sub_1D8449F34(319, &qword_1EE0E0088, &qword_1ECA38A18, &qword_1D8590940);
  if (v1 <= 0x3F)
  {
    sub_1D8449F34(319, &qword_1ECA38A20, &qword_1ECA38A28, &qword_1D8590948);
    if (v2 <= 0x3F)
    {
      sub_1D8580EA8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8449F34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = type metadata accessor for Ref(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FriendActivity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D844A068()
{
  result = qword_1ECA3B1D0[0];
  if (!qword_1ECA3B1D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3B1D0);
  }

  return result;
}

unint64_t sub_1D844A0C0()
{
  result = qword_1ECA3B2E0;
  if (!qword_1ECA3B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B2E0);
  }

  return result;
}

unint64_t sub_1D844A118()
{
  result = qword_1ECA3B2E8[0];
  if (!qword_1ECA3B2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3B2E8);
  }

  return result;
}

uint64_t sub_1D844A16C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ChallengeDefinitionFilter.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  switch(v3)
  {
    case 1u:
      if (v6 != 1)
      {
        goto LABEL_15;
      }

      v78 = OUTLINED_FUNCTION_188();
      sub_1D84669C0(v78, v79, 1u);
      v80 = OUTLINED_FUNCTION_189();
      sub_1D84669C0(v80, v81, 1u);
      v19 = v4 ^ v2 ^ 1;
      return v19 & 1;
    case 2u:
      if (v6 != 2)
      {
        goto LABEL_9;
      }

      if (a1[1])
      {
        if (v5)
        {
          v29 = OUTLINED_FUNCTION_89();
          sub_1D84669A4(v29, v30, v31);
          v32 = OUTLINED_FUNCTION_88();
          sub_1D84669A4(v32, v33, v34);
          v35 = OUTLINED_FUNCTION_88();
          sub_1D84669A4(v35, v36, v37);
          v38 = OUTLINED_FUNCTION_89();
          sub_1D84669A4(v38, v39, v40);
          v41 = OUTLINED_FUNCTION_89();
          sub_1D84669A4(v41, v42, v43);
          v44 = OUTLINED_FUNCTION_88();
          sub_1D84669A4(v44, v45, v46);
          v47 = OUTLINED_FUNCTION_88();
          sub_1D84669A4(v47, v48, v49);
          v50 = OUTLINED_FUNCTION_89();
          sub_1D84669A4(v50, v51, v52);
          v53 = OUTLINED_FUNCTION_188();
          v57 = sub_1D844A4B0(v53, v54, v4, v5, v55, v56);

          v58 = OUTLINED_FUNCTION_89();
          sub_1D84669C0(v58, v59, v60);
          v61 = OUTLINED_FUNCTION_88();
          sub_1D84669C0(v61, v62, v63);
          v64 = OUTLINED_FUNCTION_88();
          sub_1D84669C0(v64, v65, v66);
          v67 = OUTLINED_FUNCTION_89();
          sub_1D84669C0(v67, v68, v69);
          v70 = OUTLINED_FUNCTION_89();
          sub_1D84669C0(v70, v71, v72);
          v73 = OUTLINED_FUNCTION_88();
          sub_1D84669C0(v73, v74, v75);
          if ((v57 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }

LABEL_20:
        v90 = OUTLINED_FUNCTION_88();
        sub_1D84669A4(v90, v91, v92);
        v93 = OUTLINED_FUNCTION_89();
        sub_1D84669A4(v93, v94, v95);
        v96 = OUTLINED_FUNCTION_89();
        sub_1D84669A4(v96, v97, v98);
        v99 = OUTLINED_FUNCTION_88();
        sub_1D84669A4(v99, v100, v101);
        v102 = OUTLINED_FUNCTION_88();
        sub_1D84669A4(v102, v103, v104);
        v105 = OUTLINED_FUNCTION_89();
        sub_1D84669A4(v105, v106, v107);

        v108 = OUTLINED_FUNCTION_88();
        sub_1D84669C0(v108, v109, v110);
        v111 = OUTLINED_FUNCTION_89();
        sub_1D84669C0(v111, v112, v113);
        v114 = OUTLINED_FUNCTION_89();
        sub_1D84669C0(v114, v115, v116);
        v86 = OUTLINED_FUNCTION_88();
        goto LABEL_16;
      }

      if (v5)
      {
        goto LABEL_20;
      }

      v117 = OUTLINED_FUNCTION_326();
      sub_1D84669A4(v117, v118, v119);
      v120 = OUTLINED_FUNCTION_420();
      sub_1D84669A4(v120, v121, v122);
      v123 = OUTLINED_FUNCTION_326();
      sub_1D84669A4(v123, v124, v125);
      swift_bridgeObjectRelease_n();
      v126 = OUTLINED_FUNCTION_420();
      sub_1D84669C0(v126, v127, v128);
      v129 = OUTLINED_FUNCTION_326();
      sub_1D84669C0(v129, v130, v131);
      v132 = OUTLINED_FUNCTION_326();
      sub_1D84669C0(v132, v133, v134);
      v135 = OUTLINED_FUNCTION_420();
      sub_1D84669C0(v135, v136, v137);
LABEL_22:
      v19 = 1;
      return v19 & 1;
    case 3u:
      if (v6 != 3)
      {
        goto LABEL_15;
      }

      v19 = sub_1D844AB18(*a1, *a2);
      v76 = OUTLINED_FUNCTION_188();
      sub_1D84669C0(v76, v77, 3u);
      v26 = OUTLINED_FUNCTION_189();
      v28 = 3;
      goto LABEL_12;
    default:
      if (*(a2 + 16))
      {
LABEL_9:

LABEL_15:
        v82 = OUTLINED_FUNCTION_189();
        sub_1D84669A4(v82, v83, v6);
        v84 = OUTLINED_FUNCTION_188();
        sub_1D84669C0(v84, v85, v3);
        v86 = OUTLINED_FUNCTION_189();
        v88 = v6;
LABEL_16:
        sub_1D84669C0(v86, v87, v88);
LABEL_17:
        v19 = 0;
      }

      else
      {
        v7 = OUTLINED_FUNCTION_189();
        sub_1D84669A4(v7, v8, 0);
        v9 = OUTLINED_FUNCTION_188();
        sub_1D84669A4(v9, v10, 0);
        v11 = OUTLINED_FUNCTION_188();
        sub_1D84669A4(v11, v12, 0);
        v13 = OUTLINED_FUNCTION_189();
        sub_1D84669A4(v13, v14, 0);
        v15 = OUTLINED_FUNCTION_188();
        v19 = sub_1D844A4B0(v15, v16, v4, v5, v17, v18);
        v20 = OUTLINED_FUNCTION_188();
        sub_1D84669C0(v20, v21, 0);
        v22 = OUTLINED_FUNCTION_189();
        sub_1D84669C0(v22, v23, 0);
        v24 = OUTLINED_FUNCTION_189();
        sub_1D84669C0(v24, v25, 0);
        v26 = OUTLINED_FUNCTION_188();
        v28 = 0;
LABEL_12:
        sub_1D84669C0(v26, v27, v28);
      }

      return v19 & 1;
  }
}

uint64_t sub_1D844A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v6 = OUTLINED_FUNCTION_188();
  sub_1D848211C(v6);
  OUTLINED_FUNCTION_291();
  sub_1D85813D8();
  OUTLINED_FUNCTION_291();
  sub_1D85813D8();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_333_0(v12, v13, v10);
  }

  return v8 & 1;
}

uint64_t sub_1D844A580(unsigned __int8 a1, char a2)
{
  v2 = 0xEC0000006465646ELL;
  v3 = 0x4579646165726C61;
  v4 = a1;
  v5 = 0x4579646165726C61;
  v6 = 0xEC0000006465646ELL;
  switch(v4)
  {
    case 1:
      v6 = 0xE700000000000000;
      v5 = 0x64696C61766E69;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1952867692;
      break;
    case 3:
      v5 = 0x656E696F4A746F6ELL;
      v6 = 0xE900000000000064;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE700000000000000;
      v3 = 0x64696C61766E69;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1952867692;
      break;
    case 3:
      v3 = 0x656E696F4A746F6ELL;
      v2 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D844A6CC(unsigned __int8 a1, char a2)
{
  v2 = 0x657669746361;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x657669746361;
  switch(v4)
  {
    case 1:
      v5 = 0x4179646165726C61;
      v3 = 0xEF64657470656363;
      break;
    case 2:
      v5 = 0x4979646165726C61;
      v3 = 0xEE0064657469766ELL;
      break;
    case 3:
      v3 = 0x80000001D85823B0;
      v5 = 0xD000000000000015;
      break;
    case 4:
      v3 = 0x80000001D85823D0;
      v5 = 0xD000000000000016;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x64696C61766E69;
      break;
    case 6:
      v5 = 0xD000000000000013;
      v3 = 0x80000001D85823F0;
      break;
    case 7:
      v5 = 0x616C696176616E75;
      v3 = 0xEB00000000656C62;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x4179646165726C61;
      v6 = 0xEF64657470656363;
      break;
    case 2:
      v2 = 0x4979646165726C61;
      v6 = 0xEE0064657469766ELL;
      break;
    case 3:
      v6 = 0x80000001D85823B0;
      v2 = 0xD000000000000015;
      break;
    case 4:
      v6 = 0x80000001D85823D0;
      v2 = 0xD000000000000016;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x64696C61766E69;
      break;
    case 6:
      v2 = 0xD000000000000013;
      v6 = 0x80000001D85823F0;
      break;
    case 7:
      v2 = 0x616C696176616E75;
      v6 = 0xEB00000000656C62;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}