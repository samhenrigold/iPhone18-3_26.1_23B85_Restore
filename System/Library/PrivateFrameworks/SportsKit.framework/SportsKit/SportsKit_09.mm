void sub_26B6DE2B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_26B6DE318()
{
  OUTLINED_FUNCTION_4_9();
  v0[7] = v1;
  v0[8] = v2;
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B578, &qword_26B6FA158);
  v0[9] = v4;
  OUTLINED_FUNCTION_32_2(v4);
  v0[10] = v5;
  v0[11] = OUTLINED_FUNCTION_35_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B580, &qword_26B6FA160);
  v0[12] = v6;
  OUTLINED_FUNCTION_32_2(v6);
  v0[13] = v7;
  v0[14] = OUTLINED_FUNCTION_35_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B588, &qword_26B6FA168);
  v0[15] = v8;
  OUTLINED_FUNCTION_32_2(v8);
  v0[16] = v9;
  v0[17] = OUTLINED_FUNCTION_35_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B590, &qword_26B6FA170);
  v0[18] = v10;
  OUTLINED_FUNCTION_32_2(v10);
  v0[19] = v11;
  v0[20] = OUTLINED_FUNCTION_35_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B598, &qword_26B6FA178);
  v0[21] = OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](sub_26B6DE50C, 0, 0);
}

uint64_t sub_26B6DE50C()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[6];
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0[9]);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5A0, &qword_26B6FA180);
  (*(v4 + 104))(v2, *MEMORY[0x277D858A0], v3);
  sub_26B6E9E04();

  sub_26B6E9DE4();
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_0_21(v7);

  return MEMORY[0x2822005A8](v8);
}

uint64_t sub_26B6DE658()
{
  OUTLINED_FUNCTION_4_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v3 = v2;

  if (v0)
  {
    v4 = sub_26B6DEA40;
  }

  else
  {
    v4 = sub_26B6DE75C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26B6DE75C()
{
  v1 = v0[2];
  v0[23] = v1;
  if (v1)
  {
    v2 = v0[7];
    v0[4] = v1;
    v10 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[24] = v3;
    *v3 = v0;
    v3[1] = sub_26B6DE938;

    return v10(v0 + 4);
  }

  else
  {
    v5 = v0[20];
    v6 = v0[21];
    v7 = v0[18];
    v8 = v0[19];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v8 + 8))(v5, v7);
    sub_26B6DF948(v6);

    OUTLINED_FUNCTION_16_5();

    return v9();
  }
}

uint64_t sub_26B6DE938()
{
  OUTLINED_FUNCTION_4_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v3 = v2;
  *(v4 + 200) = v0;

  if (v0)
  {
    v5 = sub_26B6DEC28;
  }

  else
  {
    v5 = sub_26B6DEB1C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26B6DEA40()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_16_5();

  return v4();
}

uint64_t sub_26B6DEB1C()
{
  v1 = v0[21];
  v2 = v0[9];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = v0[10];
    v3 = v0[11];
    (*(v4 + 16))(v3, v1, v2);
    v0[5] = 0;
    sub_26B6E9DD4();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v3, v2);
  }

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_0_21(v5);

  return MEMORY[0x2822005A8](v6);
}

uint64_t sub_26B6DEC28()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  swift_unknownObjectRelease();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_16_5();

  return v7();
}

void *sub_26B6DED14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5A8, &qword_26B6FA188);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B578, &qword_26B6FA158);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  sub_26B6DF948(a2);
  v11 = *(v8 + 16);
  v11(a2, a1, v7);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v7);
  result = sub_26B6DF0AC();
  if (result)
  {
    v13 = result;
    v11(v10, a1, v7);
    v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v15 = swift_allocObject();
    (*(v8 + 32))(v15 + v14, v10, v7);
    aBlock[4] = sub_26B6DF9B0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26B6DE2B0;
    aBlock[3] = &block_descriptor_30;
    v16 = _Block_copy(aBlock);

    v17 = [v13 remoteObjectProxyWithErrorHandler_];
    _Block_release(v16);

    sub_26B6EA084();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5A0, &qword_26B6FA180);
    if (swift_dynamicCast())
    {
      aBlock[0] = v23;
      sub_26B6E9DC4();
      return (*(v21 + 8))(v6, v22);
    }

    else
    {
      sub_26B66BB5C();
      v18 = swift_allocError();
      *v19 = -96;
      aBlock[0] = v18;
      return sub_26B6E9DD4();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B6DF05C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B578, &qword_26B6FA158);
  return sub_26B6E9DD4();
}

uint64_t sub_26B6DF0AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B570, &qword_26B6FA148);
  sub_26B6E9EC4();
  return v1;
}

id sub_26B6DF120@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = v3;
  if (!v3)
  {
    sub_26B67826C(0, &qword_2810CC270, 0x277CCAE80);
    v4 = sub_26B6DF34C(0xD000000000000015, 0x800000026B6FDD60, 4096);
    v6 = [objc_opt_self() interfaceWithProtocol_];
    [v4 setRemoteObjectInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v17 = sub_26B6DF920;
    v18 = v7;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_26B66CB58;
    v16 = &block_descriptor_5;
    v8 = _Block_copy(&v13);

    [v4 setInvalidationHandler_];
    _Block_release(v8);
    v17 = sub_26B6DF4E4;
    v18 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_26B66CB58;
    v16 = &block_descriptor_21;
    v9 = _Block_copy(&v13);
    [v4 setInterruptionHandler_];
    _Block_release(v9);
    [v4 resume];
    v10 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v4;
  }

  *a2 = v4;
  return v3;
}

id sub_26B6DF34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_26B6E99F4();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_26B6DF3C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_2810CD798 != -1)
    {
      swift_once();
    }

    v3 = sub_26B6E95C4();
    __swift_project_value_buffer(v3, qword_2810D4250);
    v4 = sub_26B6E95A4();
    v5 = sub_26B6E9E74();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26B630000, v4, v5, "Connection to daemon invalidated", v6, 2u);
      MEMORY[0x26D67E950](v6, -1, -1);
    }

    v7 = *(v2 + 24);
    *(v2 + 24) = 0;
  }
}

void sub_26B6DF4E4()
{
  if (qword_2810CD798 != -1)
  {
    swift_once();
  }

  v0 = sub_26B6E95C4();
  __swift_project_value_buffer(v0, qword_2810D4250);
  oslog = sub_26B6E95A4();
  v1 = sub_26B6E9E74();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_26B630000, oslog, v1, "Connection to daemon interrupted", v2, 2u);
    MEMORY[0x26D67E950](v2, -1, -1);
  }
}

uint64_t sub_26B6DF5CC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 invalidate];
  }

  return v0;
}

uint64_t sub_26B6DF608()
{
  sub_26B6DF5CC();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26B6DF660()
{
  v8 = sub_26B6E9EA4();
  v1 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v4 = v3 - v2;
  sub_26B6E9E84();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v6 = sub_26B6E98D4();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_5_0();
  sub_26B67826C(0, &qword_2810CDBA8, 0x277D85C78);
  sub_26B6E98B4();
  sub_26B6DFA54(&qword_2810CDBB0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A470, &qword_26B6FA190);
  sub_26B6DFA9C();
  sub_26B6EA0B4();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v8);
  *(v0 + 16) = sub_26B6E9EE4();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_26B6DF88C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B6DF948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B598, &qword_26B6FA178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B6DF9B0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B578, &qword_26B6FA158);

  return sub_26B6DF05C(a1);
}

uint64_t sub_26B6DFA54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26B6DFA9C()
{
  result = qword_2810CDBD8;
  if (!qword_2810CDBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A470, &qword_26B6FA190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDBD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_14()
{
  v2 = *(v0 + 168);

  return sub_26B6DF948(v2);
}

uint64_t sub_26B6DFB7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26B6E9644();

  return v1;
}

uint64_t sub_26B6DFBF0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_26B6E9654();
}

id sub_26B6DFC5C()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F00, &qword_26B6F17D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = OBJC_IVAR____TtC9SportsKit8AppState__state;
  v22 = 2;
  sub_26B6E9624();
  (*(v3 + 32))(&v0[v6], v5, v2);
  v21.receiver = v0;
  v21.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v21, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 defaultCenter];
  OUTLINED_FUNCTION_0_22(v10, v11, v12, sel_applicationWillTerminate, *MEMORY[0x277D76770]);

  v13 = [v8 defaultCenter];
  OUTLINED_FUNCTION_0_22(v13, v14, v15, sel_applicationDidEnterBackgroundNotification, *MEMORY[0x277D76660]);

  v16 = [v8 defaultCenter];
  OUTLINED_FUNCTION_0_22(v16, v17, v18, sel_applicationWillEnterForegroundNotification, *MEMORY[0x277D76758]);

  return v9;
}

id sub_26B6DFE5C()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for AppState(uint64_t a1)
{
  result = qword_2810CC2F8;
  if (!qword_2810CC2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B6E0084(const char *a1, char a2)
{
  if (qword_2810CE9F0 != -1)
  {
    swift_once();
  }

  v4 = sub_26B6E95C4();
  __swift_project_value_buffer(v4, qword_2810D4308);
  v5 = sub_26B6E95A4();
  v6 = sub_26B6E9E64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26B630000, v5, v6, a1, v7, 2u);
    MEMORY[0x26D67E950](v7, -1, -1);
  }

  return sub_26B6DFBF0(a2);
}

void sub_26B6E01D8(uint64_t a1)
{
  sub_26B6E0268();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26B6E0268()
{
  if (!qword_2810CD758)
  {
    v0 = sub_26B6E9664();
    if (!v1)
    {
      atomic_store(v0, &qword_2810CD758);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AppState.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B6E0398()
{
  result = qword_28040B5B0;
  if (!qword_28040B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B5B0);
  }

  return result;
}

id OUTLINED_FUNCTION_0_22(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v6 + 2040)];
}

void *sub_26B6E0408()
{
  type metadata accessor for CloudChannelSubscriptionManager();
  swift_allocObject();
  result = sub_26B6C27A0();
  qword_2810CC528 = result;
  return result;
}

uint64_t static CloudChannelSubscriptionManager.shared.getter()
{
  if (qword_2810CC520 != -1)
  {
    swift_once();
  }
}

uint64_t CloudChannelSubscriptionManager.__allocating_init(store:)(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2)
{
  v3 = swift_allocObject();
  CloudChannelSubscriptionManager.init(store:)(a1);
  return v3;
}

uint64_t CloudChannelSubscriptionManager.init(store:)(void (*a1)(__int128 *__return_ptr, uint64_t))
{
  v3 = swift_defaultActor_initialize();
  a1(v5, v3);
  sub_26B6367F0(v5, v1 + 112);
  return v1;
}

uint64_t sub_26B6E0568(uint64_t a1)
{
  sub_26B6E9564();
  OUTLINED_FUNCTION_2_16();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[17];
  v11 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v10);
  v12 = (*(v11 + 136))(v10, v11);
  if (!v2)
  {
    v13 = v12;
    sub_26B6E9534();
    CloudChannelSubscription.audit(clearExpiredEntries:deadline:limit:)(a1 & 1, v9, 10);
    a1 = v14;
    (*(v6 + 8))(v9, v3);

    v15 = v1[17];
    v16 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v15);
    (*(v16 + 144))(v13, v15, v16);
  }

  return a1;
}

uint64_t sub_26B6E0700(uint64_t a1)
{
  v22 = a1;
  sub_26B6E9564();
  OUTLINED_FUNCTION_2_16();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = v1[17];
  v13 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v12);
  v14 = (*(v13 + 136))(v12, v13);
  if (!v2)
  {
    v15 = v14;
    v16 = v5;
    v17 = sub_26B6E0D44(v22);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v3);
    CloudChannelSubscription.updateDemand(for:deadline:)(v17, v11);

    sub_26B6E121C(v11);
    sub_26B6E9534();
    v5 = CloudChannelSubscription.audit(clearExpiredEntries:deadline:limit:)(1, v8, 10);
    (*(v16 + 8))(v8, v3);
    v18 = v1[17];
    v19 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v18);
    (*(v19 + 144))(v15, v18, v19);
  }

  return v5;
}

unint64_t sub_26B6E0944()
{
  v2 = v0[17];
  v3 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v2);
  OUTLINED_FUNCTION_0_23();
  v5 = v4(v2, v3);
  if (v1)
  {
    sub_26B6EA134();

    swift_getErrorValue();
    v6 = sub_26B6EA6B4();
    MEMORY[0x26D67D4D0](v6);

    v7 = 0xD000000000000026;
    sub_26B6E1284();
    swift_allocError();
    *v8 = 0xD000000000000026;
    *(v8 + 8) = 0x800000026B6FDDE0;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v9 = v5;
    swift_beginAccess();
    v7 = *(v9 + 24);
  }

  return v7;
}

void sub_26B6E0A88(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = v1[17];
  v8 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v7);
  OUTLINED_FUNCTION_0_23();
  v10 = v9(v7, v8);
  if (v2)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_26B6EA134();

    v20 = 0xD00000000000001DLL;
    v21 = 0x800000026B6FDE10;
    swift_getErrorValue();
    v15 = sub_26B6EA6B4();
    MEMORY[0x26D67D4D0](v15);

    v16 = v20;
    v17 = v21;
    sub_26B6E1284();
    swift_allocError();
    *v18 = v16;
    *(v18 + 8) = v17;
    *(v18 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v11 = v10;
    v12 = sub_26B6E9564();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
    CloudChannelSubscription.updateChannelMap(_:deadline:)(a1, v6);
    sub_26B6E121C(v6);
    v13 = v1[17];
    v14 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v13);
    (*(v14 + 144))(v11, v13, v14);
  }
}

uint64_t sub_26B6E0C88()
{
  v2 = v0[17];
  v3 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v2);
  OUTLINED_FUNCTION_0_23();
  result = v4(v2, v3);
  if (!v1)
  {
    v6 = result;
    CloudChannelSubscription.clearChannelMap()();
    v7 = v0[17];
    v8 = v0[18];
    __swift_project_boxed_opaque_existential_1(v0 + 14, v7);
    (*(v8 + 144))(v6, v7, v8);
  }

  return result;
}

uint64_t sub_26B6E0D44(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CloudChannelSubscription.CacheValue(0);
  v63 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v68 = (v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v62 = v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5C8, &qword_26B6FA418);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v60 - v13;
  v15 = MEMORY[0x277D84FA0];
  v71 = MEMORY[0x277D84FA0];
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = (a1 + 40);
    do
    {
      if (*v17 && *v17 != 1)
      {
        sub_26B652648(&v69, 0x4C4C41uLL, 0xE300000000000000);
      }

      else
      {
        v2 = v71;

        v71 = sub_26B64D7FC(v18, v2);
      }

      v17 += 16;
      --v16;
    }

    while (v16);
  }

  v66 = v14;
  v67 = v12;
  v70 = v15;
  v19 = v3[17];
  v20 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v19);
  OUTLINED_FUNCTION_0_23();
  v22 = v21(v19, v20);
  if (v2)
  {
  }

  v24 = v22;
  v60[1] = 0;
  swift_beginAccess();
  v25 = *(v24 + 24);

  v26 = 0;
  v28 = v25 + 64;
  v27 = *(v25 + 64);
  v61 = v25;
  v29 = 1 << *(v25 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & v27;
  v32 = (v29 + 63) >> 6;
  v33 = v71;
  v64 = v32;
  v65 = v25 + 64;
  if ((v30 & v27) != 0)
  {
    while (1)
    {
      v34 = v26;
LABEL_20:
      v37 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v38 = v37 | (v34 << 6);
      v39 = v62;
      v40 = (*(v61 + 48) + 16 * v38);
      v42 = *v40;
      v41 = v40[1];
      sub_26B67A9B4(*(v61 + 56) + *(v63 + 72) * v38, v62);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5D0, &unk_26B6FA420);
      v44 = *(v43 + 48);
      v45 = v67;
      *v67 = v42;
      v45[1] = v41;
      v35 = v45;
      sub_26B67E34C(v39, v45 + v44);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v43);

      v36 = v66;
LABEL_21:
      sub_26B6E1750(v35, v36);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5D0, &unk_26B6FA420);
      if (__swift_getEnumTagSinglePayload(v36, 1, v46) == 1)
      {
        break;
      }

      v47 = *v36;
      v48 = v36[1];
      sub_26B67E34C(v36 + *(v46 + 48), v68);
      if (*(v33 + 16))
      {
        sub_26B6EA714();
        sub_26B6E9AE4();
        v49 = sub_26B6EA744();
        v50 = ~(-1 << *(v33 + 32));
        while (1)
        {
          v51 = v49 & v50;
          if (((*(v33 + 56 + (((v49 & v50) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v49 & v50)) & 1) == 0)
          {
            break;
          }

          v52 = (*(v33 + 48) + 16 * v51);
          if (*v52 != v47 || v52[1] != v48)
          {
            v54 = sub_26B6EA5D4();
            v49 = v51 + 1;
            if ((v54 & 1) == 0)
            {
              continue;
            }
          }

          v55 = v68;
          v57 = *v68;
          v56 = v68[1];

          sub_26B652648(&v69, v57, v56);

          v58 = v55;
          goto LABEL_32;
        }
      }

      v58 = v68;
LABEL_32:
      result = sub_26B67AA18(v58);
      v32 = v64;
      v28 = v65;
      if (!v31)
      {
        goto LABEL_15;
      }
    }

    return v70;
  }

  else
  {
LABEL_15:
    v36 = v66;
    v35 = v67;
    while (1)
    {
      v34 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v34 >= v32)
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5D0, &unk_26B6FA420);
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v59);
        v31 = 0;
        goto LABEL_21;
      }

      v31 = *(v28 + 8 * v34);
      ++v26;
      if (v31)
      {
        v26 = v34;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B6E121C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B6E1284()
{
  result = qword_28040B5B8;
  if (!qword_28040B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B5B8);
  }

  return result;
}

uint64_t CloudChannelSubscriptionManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CloudChannelSubscriptionManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t CloudChannelError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409CB0, &qword_26B6F0BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B6EBA50;
  *(inited + 32) = sub_26B6E9A24();
  *(inited + 40) = v5;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  sub_26B6E1444(v1, v2, v3);
  return sub_26B6E9944();
}

uint64_t sub_26B6E1444(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_26B6E1488(uint64_t a1)
{
  v2 = sub_26B6E16FC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26B6E14C4(uint64_t a1)
{
  v2 = sub_26B6E16FC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26B6E1660(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B6E16A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_26B6E16FC()
{
  result = qword_28040B5C0;
  if (!qword_28040B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B5C0);
  }

  return result;
}

uint64_t sub_26B6E1750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5C8, &qword_26B6FA418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B6E17E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3A0, &qword_26B6FA4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v11 - v7;

  sub_26B6EA2B4();
  v9 = sub_26B6EA2D4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    return (*(*(v9 - 8) + 32))(a3, v8, v9);
  }

  sub_26B6413B4(v8, &qword_28040B3A0, &qword_26B6FA4A0);
  v11[2] = 0;
  v11[3] = 0xE000000000000000;
  sub_26B6EA134();
  MEMORY[0x26D67D4D0](0xD000000000000012, 0x800000026B6FD9C0);
  v11[0] = a1;
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5D8, &qword_26B6FA4A8);
  sub_26B6EA244();
  MEMORY[0x26D67D4D0](0xD00000000000001ALL, 0x800000026B6FD9E0);
  result = sub_26B6EA314();
  __break(1u);
  return result;
}

uint64_t sub_26B6E19CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_26B6EA2D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B6429C0(a1, &v29);
  if (!v30)
  {
    sub_26B6413B4(&v29, &qword_280409280, &qword_26B6ECC28);
    sub_26B6E17E8(a2, a3, v9);

    sub_26B676120(v9, v11, v12, v13, v14, v15, v16, v17, v26[0], v26[1]);
    sub_26B6413B4(a1, &qword_280409280, &qword_26B6ECC28);
    (*(v7 + 8))(v9, v6);
    v18 = v31;
    return sub_26B6413B4(v18, &qword_2804092A0, &qword_26B6F2850);
  }

  sub_26B6367F0(&v29, v31);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804092A8, &unk_26B6ECF90);
  *&v27 = swift_allocObject();
  sub_26B642140(v31, v27 + 16);
  sub_26B6E17E8(a2, a3, v9);
  sub_26B6D2904();
  (*(v7 + 8))(v9, v6);
  if (!v30)
  {

    sub_26B6413B4(a1, &qword_280409280, &qword_26B6ECC28);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v18 = &v29;
    return sub_26B6413B4(v18, &qword_2804092A0, &qword_26B6F2850);
  }

  sub_26B643E0C(&v29, &v27);
  sub_26B643E1C(&v27, v26);
  if (swift_dynamicCast())
  {

    sub_26B6413B4(a1, &qword_280409280, &qword_26B6ECC28);
    __swift_destroy_boxed_opaque_existential_1(&v27);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v10 = &v29;
  }

  else
  {
    if (qword_280408DB0 != -1)
    {
      swift_once();
    }

    v20 = sub_26B6E95C4();
    __swift_project_value_buffer(v20, qword_280421AF8);

    v21 = sub_26B6E95A4();
    v22 = sub_26B6E9E74();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v29 = v24;
      *v23 = 136315138;
      v25 = sub_26B6D22D8(a2, a3, &v29);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_26B630000, v21, v22, "New value stored for property %s does not match old type. This may indicate a bug.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x26D67E950](v24, -1, -1);
      MEMORY[0x26D67E950](v23, -1, -1);
    }

    else
    {
    }

    sub_26B6413B4(a1, &qword_280409280, &qword_26B6ECC28);
    __swift_destroy_boxed_opaque_existential_1(&v27);
    v10 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t *sub_26B6E1DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 56) = 0;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;

  sub_26B6E1FA8(a1, a2, a3, 0);

  type metadata accessor for FileSystemMonitor(0);
  swift_allocObject();
  v15 = sub_26B679110(v14);
  if (v4)
  {
    (*(v11 + 8))(a3, v9);

    sub_26B67836C(v5 + 40);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v15;
    (*(v11 + 8))(a3, v9);
    *(v5 + 16) = v16;
    *(v16 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_delegate + 8) = &off_287C30210;
    swift_unknownObjectWeakAssign();
  }

  return v5;
}

uint64_t sub_26B6E1FA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[2] = a1;
  v17[3] = a2;
  v17[0] = 11822;
  v17[1] = 0xE200000000000000;
  sub_26B641414();
  if (sub_26B6EA074())
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_3_6(&qword_2810CE9F0);
    }

    v12 = sub_26B6E95C4();
    __swift_project_value_buffer(v12, qword_2810D4308);
    v13 = sub_26B6E95A4();
    v14 = sub_26B6E9E74();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26B630000, v13, v14, "canonicalId cannot contain parental traversal string patterns", v15, 2u);
      OUTLINED_FUNCTION_3_4();
    }

    return sub_26B6E9304();
  }

  else
  {
    sub_26B6E9344();
    sub_26B6E9354();

    return (*(v8 + 8))(v11, v6);
  }
}

void sub_26B6E21B0(double a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (v4)
  {
    [v4 invalidate];
  }

  sub_26B6E2BA0();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = sub_26B6E2370(0, sub_26B6E2BE4, v5, a1);
  v7 = *(v1 + 56);
  *(v2 + 56) = v6;
  v8 = v6;

  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 mainRunLoop];
    [v11 addTimer:v10 forMode:*MEMORY[0x277CBE738]];
  }
}

uint64_t sub_26B6E22F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_26B67402C();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

id sub_26B6E2370(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26B6E2440;
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);
  v7 = [swift_getObjCClassFromMetadata() timerWithTimeInterval:a1 & 1 repeats:v6 block:a4];
  _Block_release(v6);

  return v7;
}

void sub_26B6E2440(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_26B6E24A8()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    [v1 invalidate];
  }

  sub_26B67836C(v0 + 40);

  return v0;
}

uint64_t sub_26B6E24F4()
{
  sub_26B6E24A8();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_26B6E254C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_26B6E9054();
  swift_allocObject();
  sub_26B6E9044();
  v26[3] = type metadata accessor for DefaultSportsJSONInitFailureObserver();
  v26[4] = &protocol witness table for DefaultSportsJSONInitFailureObserver;
  v26[0] = swift_allocObject();
  v4 = sub_26B6E9034();
  v6 = v5;
  v24 = *v5;
  swift_bridgeObjectRetain_n();
  sub_26B6E19CC(v26, 0xD000000000000027, 0x800000026B6FB4B0);
  *v6 = v24;

  v4(v25, 0);

  type metadata accessor for SportingEventSubscription(0);
  sub_26B6E2B48();
  sub_26B6E9024();
  v7 = v26[0];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_26B674720();
    swift_unknownObjectRelease();
  }

  v8 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  swift_beginAccess();
  switch(*(*&v7[v8] + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus))
  {
    case 3:

      goto LABEL_6;
    default:
      v9 = sub_26B6EA5D4();

      if (v9)
      {
LABEL_6:
        v10 = *(v3 + 56);
        if (v10)
        {
          v11 = v10;
          [v11 invalidate];
        }

        v12 = *(v3 + 56);
        *(v3 + 56) = 0;
      }

      else
      {
        v13 = &v7[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatTTLSeconds];
        swift_beginAccess();
        if (v13[1])
        {
          if (qword_2810CE9F0 != -1)
          {
            OUTLINED_FUNCTION_3_6(&qword_2810CE9F0);
          }

          v14 = sub_26B6E95C4();
          __swift_project_value_buffer(v14, qword_2810D4308);
          v15 = v7;
          v16 = sub_26B6E95A4();
          v17 = sub_26B6E9E64();

          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            v19 = swift_slowAlloc();
            v24 = v19;
            *v18 = 136315138;
            v20 = *&v15[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId];
            v21 = *&v15[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId + 8];

            v22 = sub_26B6D22D8(v20, v21, &v24);

            *(v18 + 4) = v22;
            _os_log_impl(&dword_26B630000, v16, v17, "Failed to reset heartbeat TTL timer for canonicalID: %s, error: heartbeatTTLSeconds is nil.", v18, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v19);
            OUTLINED_FUNCTION_3_4();
            OUTLINED_FUNCTION_3_4();
          }
        }

        else
        {
          v23 = *v13;

          sub_26B6E21B0(v23);
        }
      }

      return;
  }
}

unint64_t sub_26B6E2B48()
{
  result = qword_2810CC610;
  if (!qword_2810CC610)
  {
    type metadata accessor for SportingEventSubscription(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC610);
  }

  return result;
}

unint64_t sub_26B6E2BA0()
{
  result = qword_2810CC238;
  if (!qword_2810CC238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810CC238);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_26B6E2C04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26B6E3B18(*(a1 + 16), 0);
  v4 = sub_26B6E3DA4(&v6, v3 + 4, v2, a1);
  sub_26B63686C(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_26B6E2C94(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26B6E3B18(*(a1 + 16), 0);
  v4 = sub_26B6E3F00(&v6, v3 + 4, v2, a1);
  sub_26B63686C(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_26B6E2D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974697669746361 && a2 == 0xEA00000000007365;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026B6FDF40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

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

uint64_t sub_26B6E2DFC(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6974697669746361;
  }
}

uint64_t sub_26B6E2E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6E2D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6E2E6C(uint64_t a1)
{
  v2 = sub_26B6E309C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6E2EA8(uint64_t a1)
{
  v2 = sub_26B6E309C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersistentActivities.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5E0, &qword_26B6FA4B0);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *v1;
  v14 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_26B6E309C();

  sub_26B6EA7C4();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409248, &qword_26B6ECA18);
  v11 = sub_26B641C48(&qword_2810CC288, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
  OUTLINED_FUNCTION_2_17(v11);

  if (!v10)
  {
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F70, &qword_26B6F1910);
    v12 = sub_26B67E468();
    OUTLINED_FUNCTION_2_17(v12);
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_26B6E309C()
{
  result = qword_2810CE3A8;
  if (!qword_2810CE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE3A8);
  }

  return result;
}

uint64_t PersistentActivities.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5E8, &qword_26B6FA4B8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6E309C();
  sub_26B6EA784();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409248, &qword_26B6ECA18);
  v6 = sub_26B641C48(&qword_2810CDBC0, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
  OUTLINED_FUNCTION_1_18(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F70, &qword_26B6F1910);
  v7 = sub_26B67E5E0();
  OUTLINED_FUNCTION_1_18(v7);
  v8 = OUTLINED_FUNCTION_2_2();
  v9(v8);
  *a2 = v11;
  a2[1] = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B6E3320(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26B6E3360(uint64_t result, int a2, int a3)
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

uint64_t *sub_26B6E33AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = v4;
  v37 = a4;
  v36 = a2;
  v43 = a1;
  v38 = *v6;
  v39 = v5;
  v8 = sub_26B6E92C4();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  v6[4] = 0;
  swift_unknownObjectWeakInit();
  v41 = 0xD000000000000011;
  v42 = 0x800000026B6FD950;
  (*(v10 + 104))(v13, *MEMORY[0x277CC91D8], v8);
  sub_26B641414();
  v40 = a3;
  sub_26B6E93A4();
  (*(v10 + 8))(v13, v8);
  (*(v16 + 16))(v20, v22, v14);
  type metadata accessor for FileSystemMonitor(0);
  swift_allocObject();
  v23 = v39;
  v24 = sub_26B679110(v20);
  if (v23)
  {
    swift_unknownObjectRelease();
    v25 = *(v16 + 8);
    v25(v40, v14);
    v26 = OUTLINED_FUNCTION_2_2();
    (v25)(v26);
    sub_26B67836C((v6 + 3));
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v40;
    v6[2] = v24;
    *(v24 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_delegate + 8) = &off_287C303A8;
    swift_unknownObjectWeakAssign();
    v6[4] = v36;
    swift_unknownObjectWeakAssign();
    if (v37)
    {
      v28 = sub_26B6E93F4();
      v30 = v29;
      sub_26B6E9314();
      v39 = v31;
      sub_26B6E3738(v28, v30);

      sub_26B645A94(v28, v30);
    }

    swift_unknownObjectRelease();
    v32 = *(v16 + 8);
    v32(v27, v14);
    v33 = OUTLINED_FUNCTION_2_2();
    (v32)(v33);
  }

  return v6;
}

uint64_t sub_26B6E3738(uint64_t a1, uint64_t a2)
{
  sub_26B6E9054();
  swift_allocObject();
  sub_26B6E9044();
  sub_26B6CEC38();
  sub_26B6E9024();

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v2 = sub_26B6E2C04(v4);
  sub_26B674B78(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_26B6E38CC()
{

  sub_26B67836C(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for PersistentActivities.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B6E3A10()
{
  result = qword_28040B5F0;
  if (!qword_28040B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B5F0);
  }

  return result;
}

unint64_t sub_26B6E3A6C()
{
  result = qword_2810CE398;
  if (!qword_2810CE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE398);
  }

  return result;
}

unint64_t sub_26B6E3AC4()
{
  result = qword_2810CE3A0;
  if (!qword_2810CE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE3A0);
  }

  return result;
}

void *sub_26B6E3B18(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409058, &qword_26B6F8D20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_26B6E3B94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F98, &qword_26B6FA6D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_26B6E3CA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
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

void *sub_26B6E3DA4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26B6E3F00(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B6E405C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  OUTLINED_FUNCTION_4();
  v41 = v8;
  v10 = MEMORY[0x28223BE20](v9);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v42 = &v38 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
    v19 = 0;
    a3 = 0;
LABEL_22:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v19;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v38 = -1 << *(a4 + 32);
    v39 = a1;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v15) >> 6;
    v40 = a3;
    while (1)
    {
      if (v18 >= a3)
      {
        goto LABEL_25;
      }

      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        while (1)
        {
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v22 >= v20)
          {
            v17 = 0;
            a3 = v18;
            a1 = v39;
            goto LABEL_20;
          }

          v17 = *(v14 + 8 * v22);
          ++v19;
          if (v17)
          {
            v45 = a2;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v45 = a2;
      v22 = v19;
LABEL_16:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v22 << 6);
      v25 = a4;
      v26 = *(a4 + 48);
      v27 = *(a4 + 56);
      v28 = (v26 + 16 * v24);
      v29 = *v28;
      v30 = v28[1];
      v31 = sub_26B6E9564();
      v32 = *(v31 - 8);
      v33 = v27 + *(v32 + 72) * v24;
      v34 = v43;
      (*(v32 + 16))(&v43[*(v44 + 48)], v33, v31);
      *v34 = v29;
      v34[1] = v30;
      v35 = v34;
      v36 = v42;
      sub_26B6E4300(v35, v42);
      v37 = v45;
      sub_26B6E4300(v36, v45);
      a3 = v40;
      if (v21 == v40)
      {
        break;
      }

      a2 = v37 + *(v41 + 72);

      v18 = v21;
      v19 = v22;
      a4 = v25;
    }

    v19 = v22;
    a1 = v39;
    a4 = v25;
LABEL_20:
    v15 = v38;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26B6E4300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_18(uint64_t a1)
{

  return sub_26B6EA464();
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1)
{

  return sub_26B6EA534();
}

_BYTE *storeEnumTagSinglePayload for DateProvider(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_26B6E4478@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = sub_26B6E99F4();
  v10 = [v8 containerURLForSecurityApplicationGroupIdentifier_];

  if (v10)
  {
    sub_26B6E9374();

    v11 = sub_26B6E93B4();
    v12 = 0;
  }

  else
  {
    v11 = sub_26B6E93B4();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v12, 1, v11);
  sub_26B6672A4(v5, v7);
  sub_26B6E93B4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    sub_26B665C44(v7);
    v13 = 1;
  }

  else
  {
    sub_26B6E9334();
    (*(*(v11 - 8) + 8))(v7, v11);
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v13, 1, v11);
}

uint64_t SportsImageStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  SportsImageStorage.init()();
  return v0;
}

uint64_t SportsImageStorage.init()()
{
  v1 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24[-v3];
  v5 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir;
  sub_26B6E4478(v1 + OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir);
  sub_26B6E4950(v1 + v11, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    (*(v7 + 32))(v10, v4, v5);
    v12 = objc_opt_self();
    v13 = [v12 defaultManager];
    sub_26B6E9384();
    v14 = sub_26B6E99F4();

    v15 = [v13 fileExistsAtPath_];

    if ((v15 & 1) == 0)
    {
      v16 = [v12 defaultManager];
      v17 = sub_26B6E9324();
      v25[0] = 0;
      v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v25];

      if (v18)
      {
        v19 = *(v7 + 8);
        v20 = v25[0];
        v19(v10, v5);
        return v1;
      }

      v21 = v25[0];
      v22 = sub_26B6E92B4();

      swift_willThrow();
    }

    (*(v7 + 8))(v10, v5);
    return v1;
  }

  sub_26B665C44(v4);
  return v1;
}

uint64_t sub_26B6E4950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void SportsImageStorage.setImage(imageData:forKey:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v41 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v41 - v20;
  v42 = a3;
  v43[0] = a3;
  v43[1] = a4;
  v22 = OUTLINED_FUNCTION_6_14();
  if (OUTLINED_FUNCTION_44_3(v22, MEMORY[0x277D837D0], v23, v22))
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_3_6(&qword_2810CE9F0);
    }

    v24 = sub_26B6E95C4();
    __swift_project_value_buffer(v24, qword_2810D4308);
    v25 = sub_26B6E95A4();
    v26 = sub_26B6E9E74();
    if (!OUTLINED_FUNCTION_5_12(v26))
    {
      goto LABEL_12;
    }

    *swift_slowAlloc() = 0;
    v29 = "key cannot contain parental traversal string patterns";
LABEL_11:
    OUTLINED_FUNCTION_33_5(&dword_26B630000, v27, v28, v29);
    OUTLINED_FUNCTION_3_4();
LABEL_12:

    return;
  }

  v30 = OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir;
  if (__swift_getEnumTagSinglePayload(v5 + OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir, 1, v10))
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_3_6(&qword_2810CE9F0);
    }

    v31 = sub_26B6E95C4();
    __swift_project_value_buffer(v31, qword_2810D4308);
    v25 = sub_26B6E95A4();
    v32 = sub_26B6E9E74();
    if (!OUTLINED_FUNCTION_5_12(v32))
    {
      goto LABEL_12;
    }

    *swift_slowAlloc() = 0;
    v29 = "error resolving logos cache directory";
    goto LABEL_11;
  }

  (*(v12 + 16))(v16, v5 + v30, v10);
  sub_26B6E9344();
  v41[0] = *(v12 + 8);
  v41[1] = v12 + 8;
  (v41[0])(v16, v10);
  (*(v12 + 32))(v21, v19, v10);
  sub_26B6E5318();
  sub_26B645A3C(a1, a2);
  v33 = sub_26B6E4F44(a1, a2);
  if (v33)
  {
    v34 = v33;
    [v33 size];
    if (v35 > 250.0)
    {
      if (qword_2810CE9F0 != -1)
      {
        OUTLINED_FUNCTION_3_6(&qword_2810CE9F0);
      }

      v36 = sub_26B6E95C4();
      __swift_project_value_buffer(v36, qword_2810D4308);

      v37 = sub_26B6E95A4();
      v38 = sub_26B6E9E64();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43[0] = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_26B6D22D8(v42, a4, v43);
        _os_log_impl(&dword_26B630000, v37, v38, "image for key %s is too large, ignoring..", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_3_4();
      }

      goto LABEL_22;
    }
  }

  sub_26B6E9484();
LABEL_22:
  (v41[0])(v21, v10);
}

id sub_26B6E4F44(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_26B6E9464();
  v6 = [v4 initWithData_];

  sub_26B645A94(a1, a2);
  return v6;
}

uint64_t SportsImageStorage.getImage(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v38 - v16;
  v38[4] = a1;
  v38[5] = a2;
  v18 = OUTLINED_FUNCTION_6_14();
  if (OUTLINED_FUNCTION_44_3(v18, MEMORY[0x277D837D0], v19, v18))
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_3_6(&qword_2810CE9F0);
    }

    v20 = sub_26B6E95C4();
    __swift_project_value_buffer(v20, qword_2810D4308);
    v21 = sub_26B6E95A4();
    v22 = sub_26B6E9E74();
    if (OUTLINED_FUNCTION_5_12(v22))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_33_5(&dword_26B630000, v23, v24, "key cannot contain parental traversal string patterns");
      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v25 = OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir;
    if (!__swift_getEnumTagSinglePayload(v3 + OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir, 1, v6))
    {
      (*(v8 + 16))(v12, v3 + v25, v6);
      sub_26B6E9344();
      v26 = *(v8 + 8);
      v26(v12, v6);
      (*(v8 + 32))(v17, v15, v6);
      sub_26B6E93F4();
      v29 = v26;
      sub_26B6E5318();
      v30 = OUTLINED_FUNCTION_12_3();
      sub_26B645A3C(v30, v31);
      v32 = OUTLINED_FUNCTION_12_3();
      if (sub_26B6E4F44(v32, v33))
      {
        v27 = sub_26B6E9864();
        v34 = OUTLINED_FUNCTION_12_3();
        sub_26B645A94(v34, v35);
        v29(v17, v6);
        return v27;
      }

      v26(v17, v6);
      v36 = OUTLINED_FUNCTION_12_3();
      sub_26B645A94(v36, v37);
    }
  }

  return 0;
}

uint64_t SportsImageStorage.__deallocating_deinit()
{
  sub_26B665C44(v0 + OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_26B6E5318()
{
  result = qword_28040B610;
  if (!qword_28040B610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28040B610);
  }

  return result;
}

uint64_t type metadata accessor for SportsImageStorage(uint64_t a1)
{
  result = qword_28040B618;
  if (!qword_28040B618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B6E53B0(uint64_t a1)
{
  sub_26B6CF678(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t OUTLINED_FUNCTION_6_14()
{
  *(v0 - 112) = 3092014;
  *(v0 - 104) = 0xE300000000000000;

  return sub_26B641414();
}

uint64_t RunningClockView.init(viewModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = qword_280408D30;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_280408D38;

  type metadata accessor for RunningClockLayout();
  result = swift_allocObject();
  *(result + 16) = v4;
  a2[1] = result;
  return result;
}

uint64_t RunningClockLayout.__allocating_init(shootoutsLayout:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t RunningClockView.init(viewModel:layout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t RunningClockView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v7 = v1[1];
  sub_26B6BA094();
  *a1 = sub_26B6E9784();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B628, &qword_26B6FA740);
  sub_26B6E564C(v6, v7, v5, a1 + *(v8 + 44));
  OUTLINED_FUNCTION_1_19();
  return sub_26B6E6DC4(v5, v9);
}

uint64_t sub_26B6E564C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B680, &qword_26B6FA840);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v34[0] = a1;
  v34[1] = a2;
  RunningClockView.headerTitle.getter(&v29 - v12);
  v32 = sub_26B6E9764();
  v35[0] = 0;
  sub_26B6E5E14(a3, a1, v34);
  memcpy(v37, v34, sizeof(v37));
  memcpy(__dst, v34, 0x88uLL);
  sub_26B67E194(v37, v33, &qword_28040B698, &qword_26B6FA888);
  sub_26B650BBC(__dst, &qword_28040B698, &qword_26B6FA888);
  memcpy(&v36[7], v37, 0x88uLL);
  v31 = v35[0];
  swift_beginAccess();
  v14 = *(a1 + 88);
  if (v14)
  {
    v34[0] = *(a1 + 80);
    v34[1] = v14;
    sub_26B641414();

    v15 = sub_26B6E9804();
    v17 = v16;
    v19 = v18;
    v21 = v20 & 1;
    sub_26B6E6C40(v15, v16, v20 & 1);
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v21 = 0;
    v19 = 0;
  }

  sub_26B67E194(v13, v11, &qword_28040B680, &qword_26B6FA840);
  sub_26B67E194(v11, a4, &qword_28040B680, &qword_26B6FA840);
  v22 = a4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B6A0, &qword_26B6FA890);
  v29 = v13;
  v30 = v11;
  v24 = *(v23 + 48);
  v25 = v32;
  v33[0] = v32;
  v33[1] = 0x4008000000000000;
  v26 = v31;
  LOBYTE(v33[2]) = v31;
  memcpy(&v33[2] + 1, v36, 0x8FuLL);
  memcpy((v22 + v24), v33, 0xA0uLL);
  v27 = (v22 + *(v23 + 64));
  sub_26B67E194(v33, v34, &qword_28040B6A8, &qword_26B6FA898);
  sub_26B6E6C60(v15, v17, v21, v19);
  sub_26B6E6CA4(v15, v17, v21, v19);
  *v27 = v15;
  v27[1] = v17;
  v27[2] = v21;
  v27[3] = v19;
  sub_26B650BBC(v29, &qword_28040B680, &qword_26B6FA840);
  sub_26B6E6CA4(v15, v17, v21, v19);
  v34[0] = v25;
  v34[1] = 0x4008000000000000;
  LOBYTE(v34[2]) = v26;
  memcpy(&v34[2] + 1, v36, 0x8FuLL);
  sub_26B650BBC(v34, &qword_28040B6A8, &qword_26B6FA898);
  return sub_26B650BBC(v30, &qword_28040B680, &qword_26B6FA840);
}

uint64_t RunningClockView.headerTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B630, &qword_26B6FA748);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B638, &qword_26B6FA750);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v45 - v7);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B640, &qword_26B6FA758);
  OUTLINED_FUNCTION_16();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v45 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B648, &qword_26B6FA760);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  v48 = &v45 - v15;
  v16 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 8);
  sub_26B6BA094();
  v21 = *(v18 + 6);
  v20 = *(v18 + 7);

  OUTLINED_FUNCTION_1_19();
  sub_26B6E6DC4(v18, v22);
  if (v20)
  {
    sub_26B6BAA3C(v52);
    v23 = v52[0];
    if (v52[0])
    {
      v46 = a1;
      v24 = sub_26B6E9764();
      swift_beginAccess();

      v25 = sub_26B63A3B8();

      *v8 = v24;
      v8[1] = v25;
      *(v8 + 16) = 0;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B650, &qword_26B6FA768);
      sub_26B6E6544(v23, v19, v21, v20, v8 + *(v26 + 44));

      v27 = sub_26B6E97C4();
      v28 = sub_26B6E97D4();
      sub_26B6E97D4();
      if (sub_26B6E97D4() != v27)
      {
        v28 = sub_26B6E97D4();
      }

      sub_26B6E96F4();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      sub_26B67EDE8(v8, v12, &qword_28040B638, &qword_26B6FA750);
      v37 = &v12[*(v49 + 36)];
      *v37 = v28;
      *(v37 + 1) = v30;
      *(v37 + 2) = v32;
      *(v37 + 3) = v34;
      *(v37 + 4) = v36;
      v37[40] = 0;
      v38 = v47;
      sub_26B67EDE8(v12, v47, &qword_28040B640, &qword_26B6FA758);
      sub_26B67E194(v38, v5, &qword_28040B640, &qword_26B6FA758);
      swift_storeEnumTagMultiPayload();
      sub_26B6E695C();
      v39 = v48;
      sub_26B6E9794();
      sub_26B650BBC(v38, &qword_28040B640, &qword_26B6FA758);
      a1 = v46;
    }

    else
    {

      v52[0] = v21;
      v52[1] = v20;
      sub_26B641414();
      *v5 = sub_26B6E9804();
      *(v5 + 1) = v41;
      v5[16] = v42 & 1;
      *(v5 + 3) = v43;
      swift_storeEnumTagMultiPayload();
      sub_26B6E695C();
      v39 = v48;
      sub_26B6E9794();
    }

    sub_26B67EDE8(v39, a1, &qword_28040B648, &qword_26B6FA760);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a1, v40, 1, v51);
}

uint64_t sub_26B6E5E14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[1];
  if (v17)
  {
    *&v60 = *a1;
    *(&v60 + 1) = v17;
    sub_26B641414();

    v56 = sub_26B6E9804();
    v55 = v18;
    v53 = v19;
    v54 = v20;
    swift_beginAccess();
    sub_26B642140(a2 + 104, &v60);
    v21 = *(&v61 + 1);
    v22 = v62;
    __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
    v23 = (*(v22 + 16))(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(&v60);
    if (v23)
    {
      sub_26B6E9774();
      v24 = sub_26B6E97F4();
      v26 = v25;
      v28 = v27 & 1;
      v52 = v24;
      v51 = v29;
      sub_26B6E6C40(v24, v29, v27 & 1);
    }

    else
    {
      v52 = 0;
      v51 = 0;
      v28 = 0;
      v26 = 0;
    }
  }

  else
  {
    v52 = 0;
    v51 = 0;
    v28 = 0;
    v26 = 0;
    v56 = 0;
    v55 = 0;
    v53 = 0;
    v54 = 0;
  }

  v30 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  sub_26B67E194(a1 + *(v30 + 32), v13, &qword_28040B410, &qword_26B6F94B0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_26B650BBC(v13, &qword_28040B410, &qword_26B6F94B0);
    v31 = a1[5];
    *&v60 = a1[4];
    *(&v60 + 1) = v31;
    sub_26B641414();

    v75 = sub_26B6E9804();
    v76 = v32;
    v77 = (v33 & 1);
    v78 = v34;
    v79 = 1;
    sub_26B6E9794();
  }

  else
  {
    sub_26B6E6D60(v13, v16);
    sub_26B67E194(v16, v10, &qword_28040B420, &unk_26B6F94C0);
    sub_26B67E194(&v16[*(v14 + 20)], v7, &qword_280409370, &qword_26B6ED070);
    v75 = sub_26B6E97E4();
    v76 = v35;
    v77 = (v36 & 1);
    v78 = v37;
    v79 = 0;
    sub_26B6E9794();
    sub_26B6E6DC4(v16, type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents);
  }

  v38 = v60;
  v39 = v62;
  v40 = a1[3];
  v41 = *(&v60 + 1);
  v59 = v60;
  v58 = v61;
  if (v40)
  {
    *&v60 = a1[2];
    *(&v60 + 1) = v40;
    sub_26B6E6CE8(v38, v41, v61);
    sub_26B641414();

    v42 = sub_26B6E9804();
    v46 = v45 & 1;
  }

  else
  {
    sub_26B6E6CE8(v60, *(&v60 + 1), v61);
    v42 = 0;
    v43 = 0;
    v46 = 0;
    v44 = 0;
  }

  v71 = v56;
  v72 = v55;
  v73 = v53 & 1;
  v74 = v54;
  v75 = &v71;
  v47 = v52;
  v48 = v51;
  v67 = v52;
  v68 = v51;
  v69 = v28;
  v70 = v26;
  v76 = &v67;
  v60 = v59;
  v61 = v58;
  LOBYTE(v62) = v39;
  v63 = v42;
  v64 = v43;
  v65 = v46;
  v66 = v44;
  v77 = &v60;
  v78 = &v63;
  sub_26B6E6450(&v75, v57);
  sub_26B6E6D24(v59, v41, v58);
  sub_26B6E6CA4(v47, v48, v28, v26);
  sub_26B6E6CA4(v63, v64, v65, v66);
  sub_26B6E6D24(v60, *(&v60 + 1), v61);
  sub_26B6E6CA4(v67, v68, v69, v70);
  return sub_26B6E6CA4(v71, v72, v73, v74);
}

uint64_t sub_26B6E6450@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *v11;
  v14 = v11[1];
  v15 = v11[2];
  v16 = v11[3];
  v22 = *(v11 + 32);
  v17 = *v12;
  v20 = v12[2];
  v21 = v12[1];
  v19 = v12[3];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v13;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v16;
  *(a2 + 96) = v22;
  *(a2 + 104) = v17;
  *(a2 + 112) = v21;
  *(a2 + 120) = v20;
  *(a2 + 128) = v19;
  sub_26B6E6C60(v4, v3, v5, v6);
  sub_26B6E6C60(v8, v7, v9, v10);
  sub_26B6E6CE8(v13, v14, v15);

  return sub_26B6E6C60(v17, v21, v20, v19);
}

uint64_t sub_26B6E6544@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CompetitorShootoutsView(0);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v37 - v14);
  result = MEMORY[0x28223BE20](v13);
  v20 = (&v37 - v19);
  v21 = a1[2];
  if (v21)
  {
    v39 = a5;
    v40 = v18;
    v41 = v17;
    v22 = a1[4];
    swift_beginAccess();
    v38 = a2;
    v23 = *(a2 + 16);
    *v20 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E50, &qword_26B6EBAC8);
    swift_storeEnumTagMultiPayload();
    *(v20 + *(v10 + 20)) = v22;
    *(v20 + *(v10 + 24)) = v23;
    v42 = a3;
    v43 = a4;
    sub_26B641414();

    result = sub_26B6E9804();
    if (v21 != 1)
    {
      v27 = a1[5];
      v37 = *(v38 + 16);
      v28 = v37;
      v38 = v26;
      v29 = result;
      v30 = v24;
      v31 = v25;
      *v15 = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v15 + *(v10 + 20)) = v27;
      *(v15 + *(v10 + 24)) = v28;
      v32 = v41;
      sub_26B63CA78(v20, v41);
      v33 = v40;
      sub_26B63CA78(v15, v40);
      v34 = v39;
      sub_26B63CA78(v32, v39);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B690, &qword_26B6FA880);
      v36 = v34 + *(v35 + 48);
      *v36 = v29;
      *(v36 + 8) = v30;
      *(v36 + 16) = v31 & 1;
      *(v36 + 24) = v38;
      sub_26B63CA78(v33, v34 + *(v35 + 64));

      sub_26B6E6C40(v29, v30, v31 & 1);

      sub_26B6E6DC4(v15, type metadata accessor for CompetitorShootoutsView);
      sub_26B6E6DC4(v20, type metadata accessor for CompetitorShootoutsView);
      sub_26B6E6DC4(v33, type metadata accessor for CompetitorShootoutsView);
      sub_26B6E6C50(v29, v30, v31 & 1);

      return sub_26B6E6DC4(v32, type metadata accessor for CompetitorShootoutsView);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B6E68B8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

unint64_t sub_26B6E695C()
{
  result = qword_28040B658;
  if (!qword_28040B658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B640, &qword_26B6FA758);
    sub_26B689EC8(&qword_28040B660, &qword_28040B638, &qword_26B6FA750, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B658);
  }

  return result;
}

uint64_t RunningClockLayout.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_26B6E6B30()
{
  result = qword_28040B678;
  if (!qword_28040B678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B680, &qword_26B6FA840);
    sub_26B6E6BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B678);
  }

  return result;
}

unint64_t sub_26B6E6BB4()
{
  result = qword_28040B688;
  if (!qword_28040B688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B648, &qword_26B6FA760);
    sub_26B6E695C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B688);
  }

  return result;
}

uint64_t sub_26B6E6C40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26B6E6C50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26B6E6C60(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26B6E6C40(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26B6E6CA4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26B6E6C50(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26B6E6CE8(uint64_t a1, uint64_t a2, char a3)
{
  sub_26B6E6C40(a1, a2, a3 & 1);
}

uint64_t sub_26B6E6D24(uint64_t a1, uint64_t a2, char a3)
{
  sub_26B6E6C50(a1, a2, a3 & 1);
}

uint64_t sub_26B6E6D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B6E6DC4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_16();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26B6E6E34(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_26B6542CC();
  v5 = sub_26B6E792C(v4, -a1, 0);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_26B6E7978(v7, a2);
  result = sub_26B6E7978(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    type metadata accessor for SportingEventPlay();

    result = v7;
    do
    {
      v9 = result + 1;
      sub_26B6EA154();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_26B6EA334();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

BOOL sub_26B6E6F84(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels);
  v3 = *(a1 + 16);
  v16 = a1 + 32;

  v4 = 0;
LABEL_2:
  v5 = v3;
  if (v4 != v3)
  {
    v6 = (v2 + 32);
    v7 = *(v16 + v4);
    v8 = *(v2 + 16);
    while (v8)
    {
      v9 = 0xE600000000000000;
      v10 = 0x737472656C41;
      switch(*v6)
      {
        case 1:
          v9 = 0xE300000000000000;
          v10 = 7105601;
          break;
        case 2:
          v10 = 0x6867696C68676948;
          v9 = 0xE900000000000074;
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = 0x79616C5079654BLL;
          break;
        case 4:
          v9 = 0xE700000000000000;
          v10 = 0x6E6F6973736553;
          break;
        default:
          break;
      }

      v11 = 0xE600000000000000;
      v12 = 0x737472656C41;
      switch(v7)
      {
        case 1:
          v11 = 0xE300000000000000;
          v12 = 7105601;
          break;
        case 2:
          v12 = 0x6867696C68676948;
          v11 = 0xE900000000000074;
          break;
        case 3:
          v11 = 0xE700000000000000;
          v12 = 0x79616C5079654BLL;
          break;
        case 4:
          v11 = 0xE700000000000000;
          v12 = 0x6E6F6973736553;
          break;
        default:
          break;
      }

      if (v10 == v12 && v9 == v11)
      {

LABEL_22:
        ++v4;
        v3 = v5;
        goto LABEL_2;
      }

      v14 = sub_26B6EA5D4();

      ++v6;
      --v8;
      if (v14)
      {
        goto LABEL_22;
      }
    }
  }

  return v4 == v5;
}

uint64_t SportingEventClock.totalSeconds.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes);
  if (*(v0 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes + 8) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__seconds + 8))
  {
    return 0;
  }

  v3 = *v1;
  v4 = 60 * *v1;
  if ((v3 * 60) >> 64 != v4 >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v0 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__seconds);
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t SportingEvent.isEventClockRunning.getter()
{
  if (SportingEvent.isRunningClockSupported.getter())
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock__runningState);
    if (v1)
    {
      LOBYTE(v1) = *(v1 + 17);
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t SportingEvent.isRunningClockSupported.getter()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock__runningState);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 16);
  }

  return v1 & 1;
}

id SportingEvent.partialSportingEvent.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId);
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId + 8);
  v3 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_version + 8);
  v27 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_version);
  v28 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus);
  v4 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors);
  v5 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock);
  v6 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__plays);

  v26 = v5;

  v7 = sub_26B6E6E34(2, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ((v12 & 1) == 0)
  {
    goto LABEL_2;
  }

  v25 = v2;
  sub_26B6EA654();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v13 >> 1, v11))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v18 != (v13 >> 1) - v11)
  {
LABEL_12:
    swift_unknownObjectRelease();
    v2 = v25;
LABEL_2:
    sub_26B67C52C(v7, v9, v11, v13);
    v15 = v14;
    v16 = v27;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v15 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v2 = v25;
  v16 = v27;
  if (!v15)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_10:
  v19 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament);
  v20 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage);
  v21 = objc_allocWithZone(type metadata accessor for SportingEvent());
  v22 = v20;
  v23 = v19;
  return SportingEvent.init(canonicalId:version:progressStatus:competitors:clock:plays:tournament:coverage:schedule:league:localizedShortName:alertUpdates:)(v2, v1, v16, v3, &v28, v4, v26, v15, v19, v20, 0, 0, 0, 0);
}

void SportingEventSubscription.ingestionErrors.getter()
{
  v1 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates);
      if (v4)
      {
        v5 = sub_26B6542CC();

        v6 = 0;
        v7 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v5 == v6)
          {

            return;
          }

          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x26D67DB30](v6, v4);
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v8 = *(v4 + 8 * v6 + 32);
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          v10 = v8[OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode];

          ++v6;
          if (v10 != 2)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_26B63A9CC(0, *(v7 + 16) + 1, 1, v7);
              v7 = v14;
            }

            v11 = *(v7 + 16);
            v12 = *(v7 + 24);
            v13 = v11 + 1;
            if (v11 >= v12 >> 1)
            {
              v15 = v7;
              v16 = *(v7 + 16);
              sub_26B63A9CC(v12 > 1, v11 + 1, 1, v15);
              v11 = v16;
              v7 = v17;
            }

            *(v7 + 16) = v13;
            *(v7 + v11 + 32) = v10 & 1;
            v6 = v9;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
      }
    }
  }
}

id static SportingEventFactory.unknown(canonicalId:)(uint64_t a1, uint64_t a2)
{
  v13 = 9;
  v4 = objc_allocWithZone(type metadata accessor for SportingEventClockPeriod());

  v5 = SportingEventClockPeriod.init(index:type:subdivision:subPeriod:)();
  type metadata accessor for SportingEventClockRunningState();
  swift_allocObject();
  v6 = SportingEventClockRunningState.init(isReliable:isActive:)(0, 0);
  v7 = objc_allocWithZone(type metadata accessor for SportingEventClock());
  v8 = SportingEventClock.init(minutes:seconds:milliseconds:period:runningState:isCountingDown:activityStatus:additional:)(0, 1, 0, 1, 0, 1, v5, v6, 2, 0, 0);
  v9 = objc_allocWithZone(type metadata accessor for SportingEventCurrentClock());
  v10 = SportingEventCurrentClock.init(current:total:periods:)(v8, 0, 0);
  v11 = objc_allocWithZone(type metadata accessor for SportingEvent());
  return SportingEvent.init(canonicalId:version:progressStatus:competitors:clock:plays:tournament:coverage:schedule:league:localizedShortName:alertUpdates:)(a1, a2, 12589, 0xE200000000000000, &v13, MEMORY[0x277D84F90], v10, MEMORY[0x277D84F90], 0, 0, 0, 0, 0, 0);
}

id static SportingEventFactory.eventWithProgressStatus(event:progressStatus:)(uint64_t a1, char *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId);
  v3 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId + 8);
  v4 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_version);
  v5 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_version + 8);
  v6 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors);
  v15 = *a2;
  v7 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock);
  v8 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__plays);
  v9 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament);
  v10 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage);
  objc_allocWithZone(type metadata accessor for SportingEvent());
  v11 = v10;

  v12 = v7;

  v13 = v9;
  return SportingEvent.init(canonicalId:version:progressStatus:competitors:clock:plays:tournament:coverage:schedule:league:localizedShortName:alertUpdates:)(v2, v3, v4, v5, &v15, v6, v12, v8, v9, v10, 0, 0, 0, 0);
}

uint64_t sub_26B6E792C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_26B6E7978(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_26B6EA324();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_26B6E79D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v36 = MEMORY[0x277D84F90];
  sub_26B63B9AC(0, v1, 0);
  v2 = v36;
  result = sub_26B6E8B80(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 64;
  v28 = v5;
  v29 = v1;
  v27 = v3 + 72;
  v30 = v3 + 64;
  v31 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_26;
    }

    if (*(v3 + 36) != v5)
    {
      goto LABEL_27;
    }

    v32 = v6;
    v33 = v8 + 1;
    v34 = v5;
    v11 = *(*(v3 + 48) + v7);
    v12 = (*(v3 + 56) + 16 * v7);
    v13 = v12[1];
    v35 = *v12;

    v14 = 0xE700000000000000;
    v15 = 0x644974726F7073;
    switch(v11)
    {
      case 1:
        v15 = 0xD000000000000012;
        v14 = 0x800000026B6FB010;
        break;
      case 2:
        v14 = 0xE800000000000000;
        v15 = 0x644965756761656CLL;
        break;
      case 3:
        v14 = 0xE600000000000000;
        v15 = 0x656372756F73;
        break;
      default:
        break;
    }

    v17 = *(v36 + 16);
    v16 = *(v36 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_26B63B9AC((v16 > 1), v17 + 1, 1);
    }

    *(v36 + 16) = v17 + 1;
    v18 = (v36 + 32 * v17);
    v18[4] = v15;
    v18[5] = v14;
    v18[6] = v35;
    v18[7] = v13;
    v3 = v31;
    v19 = 1 << *(v31 + 32);
    if (v7 >= v19)
    {
      goto LABEL_28;
    }

    v9 = v30;
    v20 = *(v30 + 8 * v10);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_29;
    }

    if (*(v31 + 36) != v34)
    {
      goto LABEL_30;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v19 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (v27 + 8 * v10);
      while (v23 < (v19 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_26B6784F0(v7, v34, v32 & 1);
          v19 = __clz(__rbit64(v25)) + v22;
          goto LABEL_23;
        }
      }

      result = sub_26B6784F0(v7, v34, v32 & 1);
    }

LABEL_23:
    v6 = 0;
    v7 = v19;
    v5 = v28;
    v8 = v33;
    if (v33 == v29)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t SportingEventSubscriptionRequest.SubscriptionType.rawValue.getter()
{
  v1 = 0x6C50794279616C70;
  if (*v0 != 1)
  {
    v1 = 0x536B636F6C437674;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746174536576696CLL;
  }
}

SportsKit::SportingEventSubscriptionRequest::SubscriptionType_optional __swiftcall SportingEventSubscriptionRequest.SubscriptionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B6EA394();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26B6E7DB4@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventSubscriptionRequest.SubscriptionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SportsKit::SportingEventSubscriptionRequest::ContextKey_optional __swiftcall SportingEventSubscriptionRequest.ContextKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B6EA394();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SportingEventSubscriptionRequest.ContextKey.rawValue.getter()
{
  result = 0x644974726F7073;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x644965756761656CLL;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26B6E7EE8@<X0>(unint64_t *a1@<X8>)
{
  result = SportingEventSubscriptionRequest.ContextKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SportingEventSubscriptionRequest.canonicalId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId);

  return v1;
}

void *sub_26B6E7F5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26B6E7FD0(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_26B6E7FD0@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_subscriptionType;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_26B6E8024(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_subscriptionType;
  result = OUTLINED_FUNCTION_2_18(v2 + OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_subscriptionType, a2);
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_26B6E811C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_context;
  OUTLINED_FUNCTION_2_18(v2 + OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_context, a2);
  *(v2 + v4) = a1;
}

double sub_26B6E81B8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_requestTimeout;
  OUTLINED_FUNCTION_1_20(a1);
  return *(v1 + v2);
}

uint64_t sub_26B6E81EC(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_requestTimeout;
  result = OUTLINED_FUNCTION_2_18(v3 + OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_requestTimeout, a3);
  *(v3 + v5) = a1;
  return result;
}

uint64_t sub_26B6E8280(uint64_t a1)
{
  OUTLINED_FUNCTION_1_20(a1);

  v2 = sub_26B6E79D0(v1);

  return sub_26B671F5C(v2);
}

id SportingEventSubscriptionRequest.__allocating_init(canonicalId:playByPlay:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return SportingEventSubscriptionRequest.init(canonicalId:playByPlay:)(a1, a2, v4);
}

id SportingEventSubscriptionRequest.init(canonicalId:playByPlay:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_context;
  sub_26B6E83F8();
  *&v3[v7] = sub_26B6E9944();
  *&v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_requestTimeout] = 0x403E000000000000;
  v8 = &v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId];
  *v8 = a1;
  v8[1] = a2;
  v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_playByPlay] = a3;
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_subscriptionType] = v9;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for SportingEventSubscriptionRequest();
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_26B6E83F8()
{
  result = qword_28040B6D8;
  if (!qword_28040B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B6D8);
  }

  return result;
}

id SportingEventSubscriptionRequest.init(canonicalId:subscriptionType:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_context;
  sub_26B6E83F8();
  *&v3[v7] = sub_26B6E9944();
  *&v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_requestTimeout] = 0x403E000000000000;
  v8 = &v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId];
  *v8 = a1;
  v8[1] = a2;
  if (v6 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26B6EA5D4();
  }

  v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_playByPlay] = v9 & 1;
  v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_subscriptionType] = v6;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for SportingEventSubscriptionRequest();
  return objc_msgSendSuper2(&v11, sel_init);
}

id SportingEventSubscriptionRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SportingEventSubscriptionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportingEventSubscriptionRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26B6E86B8()
{
  result = qword_28040B6E0;
  if (!qword_28040B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B6E0);
  }

  return result;
}

unint64_t sub_26B6E8710()
{
  result = qword_28040B6E8;
  if (!qword_28040B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B6E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportingEventSubscriptionRequest.SubscriptionType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportingEventSubscriptionRequest.ContextKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_24()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_18(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t Color.init(hex:)(unint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = sub_26B6E9844();
  OUTLINED_FUNCTION_4();
  v24[0] = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26B6E9104();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;
  sub_26B6E90E4();
  sub_26B641414();
  v15 = sub_26B6EA034();
  v17 = v16;
  (*(v11 + 8))(v14, v9);

  v25 = v15;
  v26 = v17;
  v24[3] = 35;
  v24[4] = 0xE100000000000000;
  v24[1] = 0;
  v24[2] = 0xE000000000000000;
  v18 = sub_26B6EA044();
  v20 = v19;

  v25 = 0;
  v21 = sub_26B6E9AF4();
  sub_26B6E8F3C();
  v22 = sub_26B6E8F80(v18, v20);
  LODWORD(v20) = [v22 scanHexLongLong_];

  if (!v20 || v21 != 8 && v21 != 6)
  {
    return 0;
  }

  (*(v24[0] + 104))(v8, *MEMORY[0x277CE0EE0], v4);
  return sub_26B6E9854();
}

unint64_t sub_26B6E8F3C()
{
  result = qword_28040B6F0;
  if (!qword_28040B6F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28040B6F0);
  }

  return result;
}

id sub_26B6E8F80(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_26B6E99F4();

  v4 = [v2 initWithString_];

  return v4;
}