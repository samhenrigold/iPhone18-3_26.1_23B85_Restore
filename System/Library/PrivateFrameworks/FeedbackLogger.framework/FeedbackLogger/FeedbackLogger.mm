uint64_t sub_24AB40A58()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92D40, &unk_24AB61ED0);
  }

  else
  {
    return OUTLINED_FUNCTION_0(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_24AB40A84()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92D48, &qword_24AB61EE0);
  }

  else
  {
    return OUTLINED_FUNCTION_0(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_24AB40AB0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF92D50, &qword_24AB61EE8);
  }

  else
  {
    return OUTLINED_FUNCTION_0(MEMORY[0x277D84F78]);
  }
}

uint64_t sub_24AB40ADC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AB40B14()
{
  MEMORY[0x24C228960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AB40B4C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AB40B94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AB40BCC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AB40C08()
{
  MEMORY[0x24C228960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AB40C40()
{

  v1 = *(v0 + 80);
  if (v1 >> 60 != 15)
  {
    sub_24AB4611C(*(v0 + 72), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_24AB40CB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AB40CE8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AB40E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AB5FE4C();
  OUTLINED_FUNCTION_23();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 <= 5)
    {
      v10 = 5;
    }

    else
    {
      v10 = *(a1 + *(a3 + 20));
    }

    v11 = v10 - 5;
    if (v9 >= 5)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

void sub_24AB40ECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_24AB5FE4C();
  OUTLINED_FUNCTION_23();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_25();

    __swift_storeEnumTagSinglePayload(v9, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }
}

uint64_t _s14FeedbackLogger41Com_Apple_Aiml_Dpg_Service_V1_PayloadTypeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_27(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14FeedbackLogger41Com_Apple_Aiml_Dpg_Service_V1_PayloadTypeOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24AB41128(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_27(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AB4113C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_24AB4115C()
{
  OUTLINED_FUNCTION_13();
  if (v3)
  {
    return OUTLINED_FUNCTION_9(*v1);
  }

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_23();
  if (*(v5 + 84) == v0)
  {
    v6 = v2[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E38, &unk_24AB62050);
    OUTLINED_FUNCTION_23();
    if (*(v7 + 84) == v0)
    {
      v6 = v2[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E40, &unk_24AB62D50);
      v6 = v2[7];
    }
  }

  v8 = OUTLINED_FUNCTION_16(v6);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_24AB41258()
{
  OUTLINED_FUNCTION_8();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    sub_24AB5FE4C();
    OUTLINED_FUNCTION_23();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E38, &unk_24AB62050);
      OUTLINED_FUNCTION_23();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E40, &unk_24AB62D50);
        v8 = v5[7];
      }
    }

    v10 = OUTLINED_FUNCTION_12(v8);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_24AB41360()
{
  OUTLINED_FUNCTION_13();
  if (v2)
  {
    return OUTLINED_FUNCTION_9(*(v0 + 8));
  }

  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_16(*(v1 + 44));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_24AB413C4()
{
  OUTLINED_FUNCTION_8();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    v4 = OUTLINED_FUNCTION_12(*(v2 + 44));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_24AB41428()
{
  OUTLINED_FUNCTION_13();
  if (v2)
  {
    return OUTLINED_FUNCTION_9(*(v0 + 24));
  }

  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_16(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_24AB4148C()
{
  OUTLINED_FUNCTION_8();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    v4 = OUTLINED_FUNCTION_12(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_24AB414F0()
{
  OUTLINED_FUNCTION_13();
  if (v2)
  {
    return OUTLINED_FUNCTION_9(*(v0 + 48));
  }

  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_16(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_24AB41554()
{
  OUTLINED_FUNCTION_8();
  if (v3)
  {
    *(v1 + 48) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    v4 = OUTLINED_FUNCTION_12(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_24AB415B8()
{
  OUTLINED_FUNCTION_13();
  if (v2)
  {
    return OUTLINED_FUNCTION_9(*v0);
  }

  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_16(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_24AB4161C()
{
  OUTLINED_FUNCTION_8();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    v4 = OUTLINED_FUNCTION_12(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_24AB41680()
{
  OUTLINED_FUNCTION_13();
  if (v2)
  {
    return OUTLINED_FUNCTION_9(*(v0 + 24));
  }

  OUTLINED_FUNCTION_19();
  v4 = OUTLINED_FUNCTION_16(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_24AB416E4()
{
  OUTLINED_FUNCTION_8();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    v4 = OUTLINED_FUNCTION_12(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_24AB41748()
{
  result = sub_24AB41770(5);
  byte_27EF93170 = result & 1;
  return result;
}

uint64_t sub_24AB41770(char a1)
{
  sub_24AB417FC(a1);
  v1 = sub_24AB6015C();

  v2 = MGCopyAnswer();

  if (!v2)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

unint64_t sub_24AB417FC(char a1)
{
  result = 0x726556646C697542;
  switch(a1)
  {
    case 1:
      result = 0x4E746375646F7250;
      break;
    case 2:
      result = 0x54746375646F7250;
      break;
    case 3:
      result = 0x56746375646F7250;
      break;
    case 4:
      result = 0x6F436E6F69676552;
      break;
    case 5:
      result = 0x6C616E7265746E49;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x48746375646F7250;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24AB41924()
{
  if (qword_27EF92BB0 != -1)
  {
    swift_once();
  }

  return byte_27EF93170;
}

FeedbackLoggerFBFClient __swiftcall FeedbackLoggerFBFClient.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.xpcConnector = v2;
  result.super.isa = v1;
  return result;
}

id FeedbackLoggerFBFClient.init()()
{
  *&v0[OBJC_IVAR___FeedbackLoggerFBFClient_xpcConnector] = [objc_allocWithZone(type metadata accessor for FBFXPCConnector()) init];
  v2.receiver = v0;
  v2.super_class = FeedbackLoggerFBFClient;
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_24AB41AA8(uint64_t a1, uint64_t a2, void *a3, void *aBlock)
{
  _Block_copy(aBlock);
  v8 = [a3 xpcConnector];
  sub_24AB41B2C(a1, a2, v8, aBlock);

  _Block_release(aBlock);
}

void sub_24AB41B2C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a4;
  _Block_copy(a4);
  v6 = sub_24AB429DC();
  if (v6)
  {
    v7 = v6;
    v8 = sub_24AB6015C();
    v10[4] = sub_24AB43828;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_24AB42EC0;
    v10[3] = &block_descriptor_35;
    v9 = _Block_copy(v10);

    [v7 requestSandboxExtensionForBundleID:v8 completion:v9];
    _Block_release(v9);

    sub_24AB42F74();

    swift_unknownObjectRelease();
    _Block_release(a4);
  }

  else
  {
    a4[2](a4, 0, 0);

    _Block_release(a4);
  }
}

void sub_24AB41D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = sub_24AB6015C();
    if (a4)
    {
LABEL_3:
      v8 = sub_24AB6015C();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a5 + 16))(a5, v7);
}

void sub_24AB41DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 xpcConnector];
  sub_24AB41E64(a1, a2, a3);
}

uint64_t sub_24AB41E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_24AB600AC();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = &v31 - v10;
  v33 = sub_24AB6005C();
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24AB6004C();
  MEMORY[0x28223BE20](v14);
  v15 = *(v3 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_notificationCenter);
  v16 = sub_24AB6015C();
  [v15 postNotificationName:v16 object:0];

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a1;
  v18[6] = ObjectType;
  aBlock[4] = sub_24AB435C4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB42998;
  aBlock[3] = &block_descriptor_19;
  _Block_copy(aBlock);
  v38 = MEMORY[0x277D84F90];
  sub_24AB435D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92D78, &qword_24AB61F00);
  sub_24AB4362C();
  sub_24AB602AC();
  sub_24AB600CC();
  swift_allocObject();
  sub_24AB600BC();

  if (qword_27EF92BB8 != -1)
  {
    swift_once();
  }

  v19 = sub_24AB6003C();
  __swift_project_value_buffer(v19, qword_27EF92CE0);
  v20 = sub_24AB6001C();
  v21 = sub_24AB601FC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_24AB3F000, v20, v21, "Waiting 2s for sqlite connections to close.", v22, 2u);
    MEMORY[0x24C228920](v22, -1, -1);
  }

  sub_24AB436D8(0, &qword_280FF13B8, 0x277D85C78);
  v23 = v33;
  (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v33);
  v24 = sub_24AB6025C();
  (*(v11 + 8))(v13, v23);
  v25 = v34;
  sub_24AB6009C();
  v26 = v35;
  sub_24AB600DC();
  v27 = *(v36 + 8);
  v28 = v25;
  v29 = v37;
  v27(v28, v37);
  sub_24AB6021C();

  return (v27)(v26, v29);
}

void sub_24AB42404(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_24AB5FD9C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_24AB4248C()
{
  v0 = sub_24AB6003C();
  __swift_allocate_value_buffer(v0, qword_27EF92CE0);
  __swift_project_value_buffer(v0, qword_27EF92CE0);
  return sub_24AB6002C();
}

id sub_24AB42510()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionFailure] = 0;
  v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionInvalid] = 0;
  v2 = &v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_proxyLock];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionLock];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = [objc_opt_self() defaultCenter];
  *&v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_notificationCenter] = v4;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = sub_24AB425E0();

  return v5;
}

uint64_t sub_24AB425E0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionLock];
  os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionLock]);
  sub_24AB42674(v2 + 1, v0, ObjectType, &v4);
  os_unfair_lock_unlock(v2);
  return v4;
}

id sub_24AB42674@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = *a1;
  }

  else
  {
    sub_24AB436D8(0, &qword_280FF1418, 0x277CCAE80);
    v10 = sub_24AB4282C(0xD000000000000018, 0x800000024AB63490, 0);
    v11 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setRemoteObjectInterface_];

    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v16[4] = sub_24AB43500;
    v16[5] = v12;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_24AB42998;
    v16[3] = &block_descriptor;
    v13 = _Block_copy(v16);
    v14 = a2;

    [v10 setInvalidationHandler_];
    _Block_release(v13);
    *a1 = v10;
    v6 = v10;
    [v6 resume];
    v5 = 0;
  }

  *a4 = v6;
  return v5;
}

id sub_24AB4282C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_24AB6015C();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_24AB428A8(uint64_t a1)
{
  if (qword_27EF92BB8 != -1)
  {
    swift_once();
  }

  v2 = sub_24AB6003C();
  __swift_project_value_buffer(v2, qword_27EF92CE0);
  v3 = sub_24AB6001C();
  v4 = sub_24AB601FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24AB3F000, v3, v4, "XPC connection to parsec-fbf invalidated", v5, 2u);
    MEMORY[0x24C228920](v5, -1, -1);
  }

  atomic_store(1u, (a1 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionInvalid));
}

uint64_t sub_24AB42998(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_24AB429DC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_24AB425E0();
  v3 = v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_proxyLock;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_proxyLock));
  sub_24AB42A64((v3 + 8), v2, ObjectType, &v5);
  os_unfair_lock_unlock(v3);

  return v5;
}

uint64_t sub_24AB42A64@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  if (v7)
  {
    goto LABEL_4;
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a4;
  v19[4] = sub_24AB43718;
  v19[5] = v11;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_24AB42E58;
  v19[3] = &block_descriptor_29;
  v12 = _Block_copy(v19);

  v13 = [a2 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  sub_24AB6029C();
  swift_unknownObjectRelease();
  sub_24AB43720(v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92D90, &qword_24AB61F08);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v20);
    v7 = v21;
    *a1 = v21;
LABEL_4:
    *a5 = v7;
    return swift_unknownObjectRetain();
  }

  if (qword_27EF92BB8 != -1)
  {
    swift_once();
  }

  v15 = sub_24AB6003C();
  __swift_project_value_buffer(v15, qword_27EF92CE0);
  v16 = sub_24AB6001C();
  v17 = sub_24AB601FC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24AB3F000, v16, v17, "proxy not type FeedbackLoggerDaemonXPC", v18, 2u);
    MEMORY[0x24C228920](v18, -1, -1);
  }

  result = __swift_destroy_boxed_opaque_existential_0(v20);
  *a5 = 0;
  return result;
}

void sub_24AB42CC8(void *a1, uint64_t a2)
{
  if (qword_27EF92BB8 != -1)
  {
    swift_once();
  }

  v3 = sub_24AB6003C();
  __swift_project_value_buffer(v3, qword_27EF92CE0);
  v4 = a1;
  v5 = sub_24AB6001C();
  v6 = sub_24AB601FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24AB3F000, v5, v6, "parsec-fbf remote object proxy failed with error %@", v7, 0xCu);
    sub_24AB437C8(v8, &qword_27EF92D98, &qword_24AB61F10);
    MEMORY[0x24C228920](v8, -1, -1);
    MEMORY[0x24C228920](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    atomic_store(1u, &Strong[OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionFailure]);
  }
}

void sub_24AB42E58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24AB42EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24AB6016C();
    v7 = v6;
    if (v3)
    {
LABEL_3:
      v8 = sub_24AB6016C();
      v3 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:

  v4(v5, v7, v8, v3);
}

void sub_24AB42F74()
{
  v3 = 1;
  v1 = 1;
  atomic_compare_exchange_strong((v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionInvalid), &v1, 0);
  v2 = v1 == 1;
  atomic_compare_exchange_strong((v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionFailure), &v3, 0);
  if (v1 == 1 || v3 == 1)
  {
    v4 = v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_proxyLock;
    os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_proxyLock));
    swift_unknownObjectRelease();
    *(v4 + 8) = 0;
    os_unfair_lock_unlock(v4);
    if (v2)
    {
      v5 = v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionLock;
      os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14FeedbackLoggerP33_CDF37950FCCA12A7A9834AFB22C1AC3415FBFXPCConnector_connectionLock));

      *(v5 + 8) = 0;

      os_unfair_lock_unlock(v5);
    }
  }
}

void sub_24AB43048(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (qword_27EF92BB8 != -1)
  {
    swift_once();
  }

  v8 = sub_24AB6003C();
  __swift_project_value_buffer(v8, qword_27EF92CE0);
  v9 = sub_24AB6001C();
  v10 = sub_24AB601FC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24AB3F000, v9, v10, "Telling FBF to upload immediately.", v11, 2u);
    MEMORY[0x24C228920](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v13 = Strong, v14 = sub_24AB429DC(), v13, v14))
  {
    if (a4)
    {
      a4 = sub_24AB600EC();
    }

    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AB432EC;
    aBlock[3] = &block_descriptor_22;
    v15 = _Block_copy(aBlock);

    [v14 scheduleImmediateUploadWithHeaders:a4 completion:v15];
    _Block_release(v15);

    sub_24AB43298(a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = sub_24AB6016C();
    v18 = v17;
    v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v20 = sub_24AB43450(v16, v18, -4, 0);
    a2();
  }
}

void sub_24AB43298(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_24AB42F74();
  }
}

void sub_24AB432EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_24AB43358()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

id sub_24AB43450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24AB6015C();

  if (a4)
  {
    v8 = sub_24AB600EC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_24AB435D4()
{
  result = qword_27EF92D70;
  if (!qword_27EF92D70)
  {
    sub_24AB6004C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92D70);
  }

  return result;
}

unint64_t sub_24AB4362C()
{
  result = qword_27EF92D80;
  if (!qword_27EF92D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF92D78, &qword_24AB61F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92D80);
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

uint64_t sub_24AB436D8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_24AB43720(uint64_t a1, uint64_t a2)
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

uint64_t sub_24AB437C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AB43858()
{
  v0 = sub_24AB6003C();
  __swift_allocate_value_buffer(v0, qword_27EF93178);
  __swift_project_value_buffer(v0, qword_27EF93178);
  return sub_24AB6002C();
}

id sub_24AB438D8()
{
  v1 = sub_24AB6020C();
  MEMORY[0x28223BE20](v1);
  v2 = sub_24AB6022C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24AB6008C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_24AB436D8(0, &qword_280FF13B8, 0x277D85C78);
  sub_24AB6006C();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  v10 = MEMORY[0x277D84F90];
  sub_24AB46900(&qword_280FF1380, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E28, &qword_24AB62028);
  sub_24AB46948(&qword_280FF1388, &qword_27EF92E28, &qword_24AB62028);
  sub_24AB602AC();
  *&v0[OBJC_IVAR___FLAutoBugCapture_queue] = sub_24AB6024C();
  *&v0[OBJC_IVAR___FLAutoBugCapture_nextTimeToTrigger] = 0;
  v9.receiver = v0;
  v9.super_class = FLAutoBugCapture;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_24AB43B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a7;
  v39 = a8;
  v36 = a3;
  v37 = a5;
  v13 = sub_24AB6004C();
  OUTLINED_FUNCTION_3();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24AB6008C();
  OUTLINED_FUNCTION_3();
  v40 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  if ([objc_opt_self() isInternalBuild])
  {
    v34[1] = *(v8 + OBJC_IVAR___FLAutoBugCapture_queue);
    v24 = swift_allocObject();
    v34[0] = v15;
    v35 = v19;
    v25 = v24;
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = a1;
    v28 = v36;
    v27 = v37;
    v26[4] = a2;
    v26[5] = v28;
    v26[6] = a4;
    v26[7] = v27;
    v30 = v38;
    v29 = v39;
    v26[8] = a6;
    v26[9] = v30;
    v31 = v41;
    v26[10] = v29;
    v26[11] = v31;
    v26[12] = &off_285E18868;
    aBlock[4] = sub_24AB46188;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AB42998;
    aBlock[3] = &block_descriptor_0;
    v32 = _Block_copy(aBlock);

    sub_24AB46174(v30, v29);
    v41 = v41;
    sub_24AB6007C();
    v42 = MEMORY[0x277D84F90];
    sub_24AB46900(&qword_27EF92D70, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92D78, &qword_24AB61F00);
    sub_24AB46948(&qword_27EF92D80, &qword_27EF92D78, &qword_24AB61F00);
    sub_24AB602AC();
    MEMORY[0x24C227EF0](0, v23, v18, v32);
    _Block_release(v32);
    (*(v34[0] + 8))(v18, v13);
    (*(v40 + 8))(v23, v35);
  }

  else
  {
    v33 = v41;
  }
}

void sub_24AB4406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_24AB44120(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

void sub_24AB44120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v90 = a8;
  v91 = a1;
  v87 = a7;
  v88 = a5;
  v92 = a2;
  ObjectType = swift_getObjectType();
  v16 = sub_24AB5FE0C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AB5FDFC();
  sub_24AB5FDDC();
  v21 = v20;
  (*(v17 + 8))(v19, v16);
  v22 = OBJC_IVAR___FLAutoBugCapture_nextTimeToTrigger;
  if (*&v11[OBJC_IVAR___FLAutoBugCapture_nextTimeToTrigger] >= v21)
  {
    if (qword_27EF92BC0 != -1)
    {
      swift_once();
    }

    v30 = sub_24AB6003C();
    __swift_project_value_buffer(v30, qword_27EF93178);
    v31 = v11;
    v32 = sub_24AB6001C();
    v33 = sub_24AB601EC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134218240;
      *(v34 + 4) = v21;
      *(v34 + 12) = 2048;
      *(v34 + 14) = *&v11[v22];
      _os_log_impl(&dword_24AB3F000, v32, v33, "SymptomDiagnosticReporter throttled since currentTime (%f) <= nextTime (%f)", v34, 0x16u);
      MEMORY[0x24C228920](v34, -1, -1);
    }

LABEL_22:

    return;
  }

  v85 = a6;
  v86 = ObjectType;
  *&v11[OBJC_IVAR___FLAutoBugCapture_nextTimeToTrigger] = v21 + 120.0;
  if (qword_27EF92BC0 != -1)
  {
    swift_once();
  }

  v89 = a9;
  v23 = sub_24AB6003C();
  __swift_project_value_buffer(v23, qword_27EF93178);
  v24 = v11;
  v25 = sub_24AB6001C();
  v26 = sub_24AB601EC();
  v84 = v24;

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = *&v11[v22];
    _os_log_impl(&dword_24AB3F000, v25, v26, "SymptomDiagnosticReporter updated nextTimeToTrigger with cooldown %f", v27, 0xCu);
    MEMORY[0x24C228920](v27, -1, -1);
  }

  if (sub_24AB6019C() < 1)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  else
  {
    v93 = 0x726F746365746544;
    v94 = 0xEA0000000000203ALL;
    MEMORY[0x24C227E60](a3, a4);
    v28 = v93;
    v29 = v94;
  }

  v35 = [objc_opt_self() processInfo];
  v36 = [v35 processName];

  v37 = sub_24AB6016C();
  v39 = v38;

  v40 = swift_getObjectType();
  v41 = (*(a10 + 8))(0x7372615065726F43, 0xEA00000000006365, 0x6B63616264656546, 0xEE00726567676F4CLL, v91, v92, v28, v29, v37, v39, 0, 0, v40, a10);

  if (!v41 || (v93 = 0, v42 = v41, sub_24AB600FC(), v42, (v43 = v93) == 0))
  {
    v57 = v41;
    v32 = sub_24AB6001C();
    v58 = sub_24AB601EC();

    if (os_log_type_enabled(v32, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v93 = v60;
      *v59 = 136315138;
      v95 = v41;
      v61 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92DD8, " 7");
      v62 = sub_24AB6017C();
      v64 = sub_24AB461E0(v62, v63, &v93);

      *(v59 + 4) = v64;
      _os_log_impl(&dword_24AB3F000, v32, v58, "SymptomDiagnosticReporter couldn't parse signature: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x24C228920](v60, -1, -1);
      MEMORY[0x24C228920](v59, -1, -1);

      return;
    }

    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92DE0, &qword_24AB61FE8);
  inited = swift_initStackObject();
  v81 = xmmword_24AB61F50;
  *(inited + 16) = xmmword_24AB61F50;
  v93 = sub_24AB6016C();
  v94 = v45;
  v46 = MEMORY[0x277D837D0];
  sub_24AB602DC();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 0;
  v83 = sub_24AB6011C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92DE8, &qword_24AB61FF0);
  v47 = swift_allocObject();
  *(v47 + 16) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92DF0, &qword_24AB61FF8);
  v82 = v40;
  if (v90 >> 60 == 15)
  {
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_24AB61F70;
    v49 = sub_24AB6016C();
    v50 = MEMORY[0x277D839F8];
    *(v48 + 32) = v49;
    *(v48 + 40) = v51;
    *(v48 + 72) = v50;
    *(v48 + 48) = v21;
    *(v48 + 80) = sub_24AB6016C();
    *(v48 + 88) = v52;
    *(v48 + 120) = v46;
    v53 = v86;
    v54 = v85;
    v55 = v88;
    if (!v85)
    {

      v55 = v91;
      v54 = v56;
    }

    *(v48 + 96) = v55;
    *(v48 + 104) = v54;
  }

  else
  {
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_24AB61F60;
    v66 = sub_24AB6016C();
    v67 = MEMORY[0x277D839F8];
    *(v65 + 32) = v66;
    *(v65 + 40) = v68;
    *(v65 + 72) = v67;
    *(v65 + 48) = v21;
    *(v65 + 80) = sub_24AB6016C();
    *(v65 + 88) = v69;
    *(v65 + 120) = v46;
    v53 = v86;
    v70 = v85;
    v71 = v88;
    if (!v85)
    {

      v71 = v91;
      v70 = v72;
    }

    *(v65 + 96) = v71;
    *(v65 + 104) = v70;
    *(v65 + 128) = sub_24AB6016C();
    *(v65 + 136) = v73;
    *(v65 + 168) = MEMORY[0x277CC9318];
    v74 = v87;
    v75 = v90;
    *(v65 + 144) = v87;
    *(v65 + 152) = v75;
    sub_24AB46174(v74, v75);
  }

  *(v47 + 32) = sub_24AB6011C();
  v76 = sub_24AB44980(v47);

  v77 = swift_allocObject();
  v78 = v84;
  *(v77 + 16) = v84;
  *(v77 + 24) = v53;
  v79 = *(a10 + 16);
  v80 = v78;
  v79(v43, v76, 0, v83, sub_24AB46750, v77, v82, a10, 0.0);
}

uint64_t sub_24AB44980(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_24AB467C0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E10, &qword_24AB62010);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24AB467C0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_24AB467E0(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_24AB44A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AB6004C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24AB6008C();
  isa = v10[-1].isa;
  v56 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24AB5FE0C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    *&v60 = sub_24AB6016C();
    *(&v60 + 1) = v17;
    sub_24AB602DC();
    sub_24AB45560(a1, &v60, aBlock);
    sub_24AB46758(aBlock);
    v53 = v7;
    v54 = a1;
    if (v61)
    {
      if (swift_dynamicCast())
      {
        v18 = v57;
        goto LABEL_14;
      }
    }

    else
    {
      sub_24AB437C8(&v60, &qword_27EF92DF8, &unk_24AB62000);
    }

    v18 = 0;
LABEL_14:
    sub_24AB5FDFC();
    sub_24AB5FDDC();
    v24 = v23;
    (*(v14 + 8))(v16, v13);
    v52[2] = *(a2 + OBJC_IVAR___FLAutoBugCapture_queue);
    v25 = swift_allocObject();
    v52[1] = a2;
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v18;
    *(v26 + 32) = v24;
    *(v26 + 40) = a3;
    aBlock[4] = sub_24AB467AC;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AB42998;
    aBlock[3] = &block_descriptor_17;
    v27 = _Block_copy(aBlock);

    sub_24AB6007C();
    *&v60 = MEMORY[0x277D84F90];
    sub_24AB46900(&qword_27EF92D70, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92D78, &qword_24AB61F00);
    sub_24AB46948(&qword_27EF92D80, &qword_27EF92D78, &qword_24AB61F00);
    sub_24AB602AC();
    MEMORY[0x24C227EF0](0, v12, v9, v27);
    _Block_release(v27);
    (*(v53 + 8))(v9, v6);
    (*(isa + 1))(v12, v56);

    if (v18)
    {
      v57 = sub_24AB6016C();
      v58 = v28;
      sub_24AB602DC();
      sub_24AB45560(v54, &v60, aBlock);
      sub_24AB46758(aBlock);
      if (v61)
      {
        sub_24AB436D8(0, &qword_27EF92E08, 0x277CCACA8);
        if (swift_dynamicCast())
        {
          v29 = v57;
LABEL_23:
          if (qword_27EF92BC0 != -1)
          {
            swift_once();
          }

          v34 = sub_24AB6003C();
          __swift_project_value_buffer(v34, qword_27EF93178);
          v35 = v29;
          v36 = sub_24AB6001C();
          v37 = sub_24AB601EC();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            *v38 = 138412290;
            *(v38 + 4) = v35;
            *v39 = v35;
            v40 = v35;
            _os_log_impl(&dword_24AB3F000, v36, v37, "SymptomDiagnosticReporter snapshot accepted with sessionID %@", v38, 0xCu);
            sub_24AB437C8(v39, &qword_27EF92D98, &qword_24AB61F10);
            MEMORY[0x24C228920](v39, -1, -1);
            MEMORY[0x24C228920](v38, -1, -1);

            return;
          }

          goto LABEL_46;
        }
      }

      else
      {
        sub_24AB437C8(&v60, &qword_27EF92DF8, &unk_24AB62000);
      }

      sub_24AB436D8(0, &qword_27EF92E08, 0x277CCACA8);
      v29 = sub_24AB6026C();
      goto LABEL_23;
    }

    v57 = sub_24AB6016C();
    v58 = v30;
    sub_24AB602DC();
    v31 = v54;
    sub_24AB45560(v54, &v60, aBlock);
    sub_24AB46758(aBlock);
    if (v61)
    {
      sub_24AB436D8(0, &qword_27EF92E00, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v32 = v57;
        v33 = [v57 integerValue];

        goto LABEL_30;
      }
    }

    else
    {
      sub_24AB437C8(&v60, &qword_27EF92DF8, &unk_24AB62000);
    }

    v33 = 0;
LABEL_30:
    v57 = sub_24AB6016C();
    v58 = v41;
    sub_24AB602DC();
    sub_24AB45560(v31, &v60, aBlock);
    sub_24AB46758(aBlock);
    if (v61)
    {
      if (swift_dynamicCast())
      {
        v43 = v57;
        v42 = v58;
        goto LABEL_35;
      }
    }

    else
    {
      sub_24AB437C8(&v60, &qword_27EF92DF8, &unk_24AB62000);
    }

    v43 = 0;
    v42 = 0xE000000000000000;
LABEL_35:
    if (sub_24AB4572C(v33))
    {
      if (qword_27EF92BC0 != -1)
      {
        swift_once();
      }

      v44 = sub_24AB6003C();
      __swift_project_value_buffer(v44, qword_27EF93178);

      v36 = sub_24AB6001C();
      v45 = sub_24AB601EC();

      if (os_log_type_enabled(v36, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock[0] = v47;
        *v46 = 134218242;
        *(v46 + 4) = v33;
        *(v46 + 12) = 2080;
        v48 = sub_24AB461E0(v43, v42, aBlock);

        *(v46 + 14) = v48;
        v49 = "SymptomDiagnosticReporter snapshot rejected with unexpected reason %ld %s";
LABEL_44:
        _os_log_impl(&dword_24AB3F000, v36, v45, v49, v46, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x24C228920](v47, -1, -1);
        MEMORY[0x24C228920](v46, -1, -1);
LABEL_46:

        return;
      }
    }

    else
    {
      if (qword_27EF92BC0 != -1)
      {
        swift_once();
      }

      v50 = sub_24AB6003C();
      __swift_project_value_buffer(v50, qword_27EF93178);

      v36 = sub_24AB6001C();
      v45 = sub_24AB601EC();

      if (os_log_type_enabled(v36, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock[0] = v47;
        *v46 = 134218242;
        *(v46 + 4) = v33;
        *(v46 + 12) = 2080;
        v51 = sub_24AB461E0(v43, v42, aBlock);

        *(v46 + 14) = v51;
        v49 = "SymptomDiagnosticReporter snapshot rejected with expected reason %ld %s";
        goto LABEL_44;
      }
    }

    goto LABEL_46;
  }

  if (qword_27EF92BC0 != -1)
  {
    swift_once();
  }

  v19 = sub_24AB6003C();
  __swift_project_value_buffer(v19, qword_27EF93178);
  v56 = sub_24AB6001C();
  v20 = sub_24AB601EC();
  if (os_log_type_enabled(v56, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_24AB3F000, v56, v20, "SymptomDiagnosticReporter reporter returned no response", v21, 2u);
    MEMORY[0x24C228920](v21, -1, -1);
  }

  v22 = v56;
}

double sub_24AB45560@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_24AB50EB0(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_24AB43720(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_24AB455C4(uint64_t a1, char a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = 3600.0;
    if (a2)
    {
      v7 = 86400.0;
    }

    v8 = OBJC_IVAR___FLAutoBugCapture_nextTimeToTrigger;
    *(Strong + OBJC_IVAR___FLAutoBugCapture_nextTimeToTrigger) = v7 + a3;
    if (qword_27EF92BC0 != -1)
    {
      swift_once();
    }

    v9 = sub_24AB6003C();
    __swift_project_value_buffer(v9, qword_27EF93178);
    v10 = v6;
    v11 = sub_24AB6001C();
    v12 = sub_24AB601EC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = *&v6[v8];
      _os_log_impl(&dword_24AB3F000, v11, v12, "SymptomDiagnosticReporter updated nextTimeToTrigger %f", v13, 0xCu);
      MEMORY[0x24C228920](v13, -1, -1);
    }
  }
}

BOOL sub_24AB4572C(_BOOL8 result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  return *MEMORY[0x277D6B040] != result && *MEMORY[0x277D6B058] != result && *MEMORY[0x277D6B038] != result && *MEMORY[0x277D6B088] != result && *MEMORY[0x277D6B098] != result;
}

id sub_24AB457C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v15 = a4;
  if (a2)
  {
    v16 = sub_24AB6015C();
    if (!v15)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = 0;
  if (a4)
  {
LABEL_3:
    v15 = sub_24AB6015C();
  }

LABEL_4:
  if (a6)
  {
    a6 = sub_24AB6015C();
  }

  if (a8)
  {
    a8 = sub_24AB6015C();
  }

  v17 = a12;
  if (!a10)
  {
    v18 = 0;
    if (!a12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v18 = sub_24AB6015C();
  if (a12)
  {
LABEL_10:
    v17 = sub_24AB6015C();
  }

LABEL_11:
  v19 = [v12 signatureWithDomain:v16 type:v15 subType:a6 subtypeContext:a8 detectedProcess:v18 triggerThresholdValues:v17];

  return v19;
}

id sub_24AB458F8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, double a7)
{
  v12 = a2;
  if (a1)
  {
    v14 = sub_24AB600EC();
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if (a2)
  {
LABEL_3:
    v12 = sub_24AB601DC();
  }

LABEL_4:
  if (a3)
  {
    a3 = sub_24AB600EC();
  }

  if (a4)
  {
    a4 = sub_24AB600EC();
  }

  if (a5)
  {
    v17[4] = a5;
    v17[5] = a6;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_24AB45A98;
    v17[3] = &block_descriptor_20;
    a5 = _Block_copy(v17);
  }

  v15 = [v7 snapshotWithSignature:v14 delay:v12 events:a3 payload:a4 actions:a5 reply:a7];
  _Block_release(a5);

  return v15;
}

uint64_t sub_24AB45A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_24AB6010C();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

id sub_24AB45B28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = &v5[OBJC_IVAR___FLAutoBugHelper_eventValue];
  *v8 = xmmword_24AB61F80;
  *&v5[OBJC_IVAR___FLAutoBugHelper_autoBugCapture] = a1;
  v9 = &v5[OBJC_IVAR___FLAutoBugHelper_bundleID];
  *v9 = a2;
  *(v9 + 1) = a3;
  v10 = *v8;
  v11 = *(v8 + 1);
  *v8 = a4;
  *(v8 + 1) = a5;
  v12 = a1;
  sub_24AB46174(a4, a5);
  sub_24AB46108(v10, v11);
  v15.receiver = v5;
  v15.super_class = FLAutoBugHelper;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_24AB46108(a4, a5);

  return v13;
}

void sub_24AB45C8C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___FLAutoBugHelper_autoBugCapture);
  v3 = sub_24AB6015C();

  v4 = sub_24AB6015C();

  v5 = sub_24AB6015C();
  OUTLINED_FUNCTION_2();
  if (!v14 & v13)
  {
    OUTLINED_FUNCTION_1(v6, sel_triggerABCWithSubtype_bundleID_eventName_eventValue_, v7, v8, v9, v10, v11, v12, v26, 0);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_0_0();
    sub_24AB460B0(v15, v16);
    OUTLINED_FUNCTION_0_0();
    v27 = sub_24AB5FDAC();
    v17 = OUTLINED_FUNCTION_0_0();
    v19 = sub_24AB46108(v17, v18);
    OUTLINED_FUNCTION_1(v19, sel_triggerABCWithSubtype_bundleID_eventName_eventValue_, v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

void sub_24AB45E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR___FLAutoBugHelper_autoBugCapture);
  v5 = sub_24AB6015C();

  v6 = sub_24AB6015C();

  v7 = sub_24AB6015C();
  OUTLINED_FUNCTION_2();
  if (!v16 & v15)
  {
    OUTLINED_FUNCTION_1(v8, sel_triggerABCWithSubtype_bundleID_eventName_eventValue_, v9, v10, v11, v12, v13, v14, v28, 0);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_0_0();
    sub_24AB460B0(v17, v18);
    OUTLINED_FUNCTION_0_0();
    v29 = sub_24AB5FDAC();
    v19 = OUTLINED_FUNCTION_0_0();
    v21 = sub_24AB46108(v19, v20);
    OUTLINED_FUNCTION_1(v21, sel_triggerABCWithSubtype_bundleID_eventName_eventValue_, v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

void __swiftcall FLAutoBugHelper.init()(FLAutoBugHelper *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_24AB460B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_24AB46108(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AB4611C(result, a2);
  }

  return result;
}

uint64_t sub_24AB4611C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_24AB46174(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AB460B0(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24AB461E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AB462A4(v11, 0, 0, 1, a1, a2);
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
    sub_24AB43720(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AB462A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AB463A4(a5, a6);
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
    result = sub_24AB602FC();
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

uint64_t sub_24AB463A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AB463F0(a1, a2);
  sub_24AB46508(&unk_285E184F8);
  return v3;
}

uint64_t sub_24AB463F0(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_24AB601BC())
  {
    result = sub_24AB465EC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_24AB602EC();
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
          result = sub_24AB602FC();
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

uint64_t sub_24AB46508(uint64_t result)
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

    result = sub_24AB4665C(result, v7, 1, v3);
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

void *sub_24AB465EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E20, &qword_24AB62020);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_24AB4665C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E20, &qword_24AB62020);
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

char *sub_24AB467C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24AB467F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_24AB467E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_24AB467F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E18, &qword_24AB62018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24AB46900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AB46948(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id OUTLINED_FUNCTION_1(int a1, const char *a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [v10 a2];
}

id sub_24AB46A04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a5;
  v56 = a6;
  v51 = a3;
  v52 = a4;
  v54 = a2;
  v50 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v7);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_24AB5FE0C();
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v49 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v48 = v20;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v47 - v23;
  v53 = xmmword_24AB62030;
  *(v24 + 2) = xmmword_24AB62030;
  *(v24 + 3) = xmmword_24AB62030;
  v47 = v22;
  sub_24AB5FE3C();
  v26 = *(v24 + 6);
  v25 = *(v24 + 7);
  v27 = v54;
  sub_24AB460B0(a1, v54);
  sub_24AB4611C(v26, v25);
  *(v24 + 6) = a1;
  *(v24 + 7) = v27;
  v28 = v56;
  *(v24 + 2) = v55;
  *(v24 + 3) = v28;
  *v24 = 2;
  v24[8] = 1;
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  *(v18 + 24) = v53;
  *(v18 + 5) = 0;
  *(v18 + 6) = 0xE000000000000000;
  *(v18 + 7) = 0;
  *(v18 + 8) = 0xE000000000000000;
  *(v18 + 9) = 0;
  *(v18 + 10) = 0xE000000000000000;

  v29 = MEMORY[0x277D84F90];
  *(v18 + 11) = sub_24AB6011C();
  sub_24AB5FE3C();
  sub_24AB5FDEC();
  sub_24AB5FDDC();
  v31 = v30;
  result = (*(v10 + 8))(v12, v57);
  v33 = v31 * 1000.0;
  if (COERCE__INT64(fabs(v31 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v18 + 2) = v33;
  *v9 = v29;
  v34 = v50;
  sub_24AB5FE3C();
  v35 = *(v34 + 24);
  v36 = v47;
  __swift_storeEnumTagSinglePayload(v9 + v35, 1, 1, v47);
  v37 = *(v34 + 28);
  __swift_storeEnumTagSinglePayload(v9 + v37, 1, 1, v13);
  v38 = v48;
  sub_24AB47554(v24, v48, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  sub_24AB475B4(v9 + v35, &qword_27EF92E38, &unk_24AB62050);
  sub_24AB4760C(v38, v9 + v35, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  __swift_storeEnumTagSinglePayload(v9 + v35, 0, 1, v36);
  v39 = v49;
  sub_24AB47554(v18, v49, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
  sub_24AB475B4(v9 + v37, &qword_27EF92E40, &unk_24AB62D50);
  sub_24AB4760C(v39, v9 + v37, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
  __swift_storeEnumTagSinglePayload(v9 + v37, 0, 1, v13);
  sub_24AB4766C();
  v40 = sub_24AB5FF3C();
  v42 = v41;
  v61 = v51;
  v62 = v52;
  v59 = 0x6C7070612E6D6F63;
  v60 = 0xEA00000000002E65;
  strcpy(v58, "com.apple.dpg.");
  v58[15] = -18;
  sub_24AB476C4();
  v43 = sub_24AB6028C();
  v45 = v44;
  objc_allocWithZone(FLDPGBatch);

  sub_24AB460B0(v40, v42);
  result = sub_24AB47444(v43, v45, v40, v42);
  if (result)
  {
    v46 = result;
    sub_24AB47718(v18, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
    sub_24AB4611C(v40, v42);

    sub_24AB47718(v9, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
    sub_24AB47718(v24, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
    return v46;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24AB470FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 16))(a3, a4))
  {
    return 1;
  }

  if (sub_24AB601CC())
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_0();
  if (sub_24AB601CC())
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_0();
  if (sub_24AB601CC())
  {
    return 1;
  }

  OUTLINED_FUNCTION_1_0();

  return sub_24AB601CC();
}

uint64_t sub_24AB47250(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = a1 == 0xD000000000000018 && 0x800000024AB63680 == a2;
    if (!v4 && (sub_24AB6030C() & 1) == 0)
    {
      return 1;
    }
  }

  return sub_24AB472B8();
}

id sub_24AB472B8()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = sub_24AB6016C();
    v4 = sub_24AB474D0(v2, v3, v1);

    return (v4 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

FLDPGBatchFactory __swiftcall FLDPGBatchFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for FLDPGBatchFactory()
{
  result = qword_27EF92E30;
  if (!qword_27EF92E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF92E30);
  }

  return result;
}

id sub_24AB47444(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_24AB6015C();

  v8 = sub_24AB5FDAC();
  v9 = [v4 initWithBundleID:v7 payload:v8];

  sub_24AB4611C(a3, a4);
  return v9;
}

id sub_24AB474D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24AB6015C();

  v5 = [a3 effectiveBoolValueForSetting_];

  return v5;
}

uint64_t sub_24AB47554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24AB475B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_24AB4760C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_24AB4766C()
{
  result = qword_27EF92E48;
  if (!qword_27EF92E48)
  {
    type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92E48);
  }

  return result;
}

unint64_t sub_24AB476C4()
{
  result = qword_27EF92E50;
  if (!qword_27EF92E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92E50);
  }

  return result;
}

uint64_t sub_24AB47718(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24AB477B4(uint64_t a1, char a2, uint64_t (*a3)(void *))
{
  v4 = sub_24AB6031C();
  v5 = a3(v4);
  OUTLINED_FUNCTION_33(v5, v6);
  return sub_24AB6032C();
}

uint64_t sub_24AB4780C(char a1)
{
  sub_24AB6031C();
  sub_24AB4D060();
  sub_24AB6013C();
  return sub_24AB6032C();
}

uint64_t sub_24AB47864(uint64_t a1, char a2)
{
  sub_24AB6031C();
  sub_24AB4D060();
  sub_24AB6013C();
  return sub_24AB6032C();
}

uint64_t sub_24AB478B8(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5 = sub_24AB6031C();
  v6 = a4(v5);
  OUTLINED_FUNCTION_33(v6, v7);
  return sub_24AB6032C();
}

uint64_t sub_24AB4790C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_24(a1);
  *(v1 + 32) = xmmword_24AB62030;
  *(v1 + 48) = xmmword_24AB62030;
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  return sub_24AB5FE3C();
}

uint64_t sub_24AB4794C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_24AB62060;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = sub_24AB6011C();
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  return sub_24AB5FE3C();
}

uint64_t sub_24AB479C8@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  sub_24AB5FE3C();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t sub_24AB47ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB51290();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_24AB47BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB512E4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_24AB47D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB51390();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_24AB47DE4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_24AB62030;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
  return sub_24AB5FE3C();
}

uint64_t sub_24AB47E3C@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_24AB62030;
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(0);
  return sub_24AB5FE3C();
}

uint64_t sub_24AB47E88@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_24(a1);
  *(v1 + 32) = MEMORY[0x277D84F90];
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(0);
  return sub_24AB5FE3C();
}

uint64_t sub_24AB47EC8()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF93190);
  __swift_project_value_buffer(v0, qword_27EF93190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB61F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PAYLOAD_UNKNOWN";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PAYLOAD_AVRO_RECORD";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PAYLOAD_PROTO_RECORD";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB480F0()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF931A8);
  __swift_project_value_buffer(v0, qword_27EF931A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB62070;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "EVENT_HEADERS_INVALID";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EVENT_BODY_INVALID";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EVENT_BODY_TOO_LARGE";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EVENT_SCHEMA_UNKNOWN";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EVENT_UNSUPPORTED";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "EVENT_TIMEOUT";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "EVENT_PRODUCER_FAILED";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB4840C()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF931C0);
  __swift_project_value_buffer(v0, qword_27EF931C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB61F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "OK";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FAILED_ALL";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FAILED_PARTIAL";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB48630()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF931D8);
  __swift_project_value_buffer(v0, qword_27EF931D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB61F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "payload";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 6;
  *v10 = "headers";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 7;
  *v12 = "metadata";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB48838()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 7:
        v14 = OUTLINED_FUNCTION_2_1();
        sub_24AB489B8(v14, v15, v16, v17);
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_2_1();
        sub_24AB4B4E4(v7, v8, v9, v10, v11, &qword_27EF92F40, v12, v13);
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_2_1();
        sub_24AB48904(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_24AB48904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  sub_24AB4CE90(&qword_27EF92F40, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage, &unk_24AB628C0);
  return sub_24AB5FF1C();
}

uint64_t sub_24AB489B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  sub_24AB4CE90(&qword_27EF92F60, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata, &unk_24AB62A28);
  return sub_24AB5FF1C();
}

uint64_t sub_24AB48A6C(uint64_t a1)
{
  OUTLINED_FUNCTION_15();
  result = sub_24AB48B68(v3, v4, v5, v6);
  if (!v2)
  {
    if (*(*v1 + 16))
    {
      type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
      sub_24AB4CE90(&qword_27EF92F40, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage, &unk_24AB628C0);
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_7();
      sub_24AB5FFCC();
    }

    OUTLINED_FUNCTION_15();
    sub_24AB48D9C(v8, v9, v10, v11);
    type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
    return OUTLINED_FUNCTION_10();
  }

  return result;
}

uint64_t sub_24AB48B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E38, &unk_24AB62050);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  sub_24AB4DC90();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_24AB475B4(v6, &qword_27EF92E38, &unk_24AB62050);
  }

  sub_24AB4DCE8();
  sub_24AB4CE90(&qword_27EF92F40, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage, &unk_24AB628C0);
  sub_24AB5FFDC();
  return sub_24AB4DD40(v9, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
}

BOOL sub_24AB48D48(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_24AB48D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E40, &unk_24AB62D50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  v7 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  MEMORY[0x28223BE20](v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  sub_24AB4DC90();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_24AB475B4(v6, &qword_27EF92E40, &unk_24AB62D50);
  }

  sub_24AB4DCE8();
  sub_24AB4CE90(&qword_27EF92F60, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata, &unk_24AB62A28);
  sub_24AB5FFDC();
  return sub_24AB4DD40(v9, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
}

uint64_t sub_24AB48F7C(uint64_t *a1, uint64_t *a2)
{
  v41 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E40, &unk_24AB62D50);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v38 = &v36 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FD8, &qword_24AB62D60);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v42 = &v36 - v9;
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E38, &unk_24AB62050);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FE0, &qword_24AB62D68) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  v40 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  v20 = *(v16 + 56);
  v43 = a1;
  sub_24AB4DC90();
  sub_24AB4DC90();
  OUTLINED_FUNCTION_34(v19);
  if (v21)
  {
    OUTLINED_FUNCTION_34(&v19[v20]);
    if (v21)
    {
      sub_24AB475B4(v19, &qword_27EF92E38, &unk_24AB62050);
      goto LABEL_12;
    }

LABEL_9:
    v22 = &qword_27EF92FE0;
    v23 = &qword_24AB62D68;
    v24 = v19;
LABEL_10:
    sub_24AB475B4(v24, v22, v23);
    goto LABEL_21;
  }

  sub_24AB4DC90();
  OUTLINED_FUNCTION_34(&v19[v20]);
  if (v21)
  {
    sub_24AB4DD40(v15, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
    goto LABEL_9;
  }

  sub_24AB4DCE8();
  v25 = sub_24AB4A664();
  sub_24AB4DD40(v12, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  sub_24AB4DD40(v15, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
  sub_24AB475B4(v19, &qword_27EF92E38, &unk_24AB62050);
  if ((v25 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((sub_24AB4FF28(*v43, *a2) & 1) == 0)
  {
    goto LABEL_21;
  }

  v26 = *(v39 + 48);
  v27 = v42;
  sub_24AB4DC90();
  sub_24AB4DC90();
  v28 = v41;
  if (__swift_getEnumTagSinglePayload(v27, 1, v41) != 1)
  {
    v29 = v38;
    sub_24AB4DC90();
    if (__swift_getEnumTagSinglePayload(v27 + v26, 1, v28) != 1)
    {
      v30 = v37;
      sub_24AB4DCE8();
      v31 = sub_24AB49DA4();
      sub_24AB4DD40(v30, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
      sub_24AB4DD40(v29, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
      sub_24AB475B4(v27, &qword_27EF92E40, &unk_24AB62D50);
      if (v31)
      {
        goto LABEL_20;
      }

LABEL_21:
      v34 = 0;
      return v34 & 1;
    }

    sub_24AB4DD40(v29, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
    goto LABEL_18;
  }

  if (__swift_getEnumTagSinglePayload(v27 + v26, 1, v28) != 1)
  {
LABEL_18:
    v22 = &qword_27EF92FD8;
    v23 = &qword_24AB62D60;
    v24 = v27;
    goto LABEL_10;
  }

  sub_24AB475B4(v27, &qword_27EF92E40, &unk_24AB62D50);
LABEL_20:
  sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_2();
  sub_24AB4CE90(v32, v33, MEMORY[0x277D216D0]);
  v34 = sub_24AB6014C();
  return v34 & 1;
}

uint64_t sub_24AB494DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AB49550(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_24AB49618(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF92FD0, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage, &unk_24AB62B58);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB496B8(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92E48, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage, &unk_24AB62B90);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB49780(uint64_t a1, uint64_t a2)
{
  sub_24AB4CE90(&qword_27EF92E48, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage, &unk_24AB62B90);

  return sub_24AB5FF5C();
}

uint64_t sub_24AB49800()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF931F0);
  __swift_project_value_buffer(v0, qword_27EF931F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24AB62070;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "fqn";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_24AB5FFEC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "timestamp_ms";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "request_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "topic_override";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "source_cluster";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "stream";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "legacyHeaders";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB49AFC()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_14();
        sub_24AB5FEFC();
        break;
      case 2:
        OUTLINED_FUNCTION_14();
        sub_24AB5FEEC();
        break;
      case 3:
        OUTLINED_FUNCTION_14();
        sub_24AB5FECC();
        break;
      case 7:
        v3 = OUTLINED_FUNCTION_2_1();
        sub_24AB49BC0(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_24AB49C38()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  if (!v3 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), (v0 = v1) == 0))
  {
    if (!*(v2 + 16) || (v1 = v0, OUTLINED_FUNCTION_15(), result = sub_24AB5FFAC(), !v0))
    {
      v5 = OUTLINED_FUNCTION_17();
      if (sub_24AB48D48(v5, v6) || (OUTLINED_FUNCTION_17(), OUTLINED_FUNCTION_1_1(), result = sub_24AB5FF8C(), (v0 = v1) == 0))
      {
        OUTLINED_FUNCTION_3_0();
        if (!v7 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), (v0 = v1) == 0))
        {
          OUTLINED_FUNCTION_3_0();
          if (!v8 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), (v0 = v1) == 0))
          {
            OUTLINED_FUNCTION_3_0();
            if (!v9 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), (v0 = v1) == 0))
            {
              if (!*(*(v2 + 88) + 16) || (sub_24AB5FE1C(), result = sub_24AB5FF6C(), !v0))
              {
                type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
                return OUTLINED_FUNCTION_10();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_24AB49DA4()
{
  OUTLINED_FUNCTION_18();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_24AB6030C() & 1) == 0)
  {
    return 0;
  }

  if (v1[2] != v0[2] || (MEMORY[0x24C227A70](v1[3], v1[4], v0[3], v0[4]) & 1) == 0)
  {
    return 0;
  }

  v4 = v1[5] == v0[5] && v1[6] == v0[6];
  if (!v4 && (sub_24AB6030C() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[7] == v0[7] && v1[8] == v0[8];
  if (!v5 && (sub_24AB6030C() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[9] == v0[9] && v1[10] == v0[10];
  if (!v6 && (sub_24AB6030C() & 1) == 0 || (sub_24AB50C98(v1[11], v0[11]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_2();
  v9 = sub_24AB4CE90(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_11(v9) & 1;
}

uint64_t sub_24AB49EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AB49F60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_24AB4A028(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF92FE8, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata, &unk_24AB629F0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB4A0C8(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92F60, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata, &unk_24AB62A28);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB4A190(uint64_t a1, uint64_t a2)
{
  sub_24AB4CE90(&qword_27EF92F60, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata, &unk_24AB62A28);

  return sub_24AB5FF5C();
}

uint64_t sub_24AB4A210()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF93208);
  __swift_project_value_buffer(v0, qword_27EF93208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB62080;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "payload_type";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "schema_name";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "schema_fingerprint";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "body";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB4A458()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_2_1();
        sub_24AB4A4F8(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_14();
        sub_24AB5FEFC();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_14();
        sub_24AB5FECC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_24AB4A560()
{
  OUTLINED_FUNCTION_5();
  if (!*v0 || (sub_24AB51290(), OUTLINED_FUNCTION_7(), result = sub_24AB5FF7C(), !v1))
  {
    OUTLINED_FUNCTION_3_0();
    if (!v3 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), !v1))
    {
      v4 = OUTLINED_FUNCTION_17();
      if (sub_24AB48D48(v4, v5) || (OUTLINED_FUNCTION_17(), OUTLINED_FUNCTION_1_1(), result = sub_24AB5FF8C(), !v1))
      {
        v6 = OUTLINED_FUNCTION_17();
        if (sub_24AB48D48(v6, v7) || (OUTLINED_FUNCTION_17(), OUTLINED_FUNCTION_1_1(), result = sub_24AB5FF8C(), !v1))
        {
          type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
          return OUTLINED_FUNCTION_10();
        }
      }
    }
  }

  return result;
}

uint64_t sub_24AB4A664()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_30();
  if (v4)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (v4 || (sub_24AB6030C()) && (MEMORY[0x24C227A70](v1[4], v1[5], v0[4], v0[5]) & 1) != 0 && (MEMORY[0x24C227A70](v1[6], v1[7], v0[6], v0[7]))
  {
    type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
    sub_24AB5FE4C();
    OUTLINED_FUNCTION_0_2();
    v7 = sub_24AB4CE90(v5, v6, MEMORY[0x277D216D0]);
    return OUTLINED_FUNCTION_11(v7) & 1;
  }

  return 0;
}

uint64_t sub_24AB4A7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF92FF0, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage, &unk_24AB62888);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB4A868(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92F40, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage, &unk_24AB628C0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB4A930(uint64_t a1, uint64_t a2)
{
  sub_24AB4CE90(&qword_27EF92F40, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage, &unk_24AB628C0);

  return sub_24AB5FF5C();
}

uint64_t sub_24AB4A9B0()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF93220);
  __swift_project_value_buffer(v0, qword_27EF93220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB62080;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "index";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request_id";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "code";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "message";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB4ABF8()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_14();
        sub_24AB5FEDC();
        break;
      case 2:
        OUTLINED_FUNCTION_14();
        sub_24AB5FECC();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_2_1();
        sub_24AB4ACA4(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_14();
        sub_24AB5FEFC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_24AB4AD0C()
{
  OUTLINED_FUNCTION_5();
  if (!*v1 || (v2 = v0, OUTLINED_FUNCTION_15(), result = sub_24AB5FF9C(), !v0))
  {
    v5 = OUTLINED_FUNCTION_17();
    if (sub_24AB48D48(v5, v6) || (OUTLINED_FUNCTION_17(), OUTLINED_FUNCTION_1_1(), result = sub_24AB5FF8C(), !v2))
    {
      if (!*(v3 + 24) || (sub_24AB512E4(), OUTLINED_FUNCTION_7(), result = sub_24AB5FF7C(), !v2))
      {
        OUTLINED_FUNCTION_3_0();
        if (!v7 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), !v2))
        {
          type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
          return OUTLINED_FUNCTION_10();
        }
      }
    }
  }

  return result;
}

uint64_t sub_24AB4AE0C(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_18();
    if (MEMORY[0x24C227A70](*(v4 + 8), v3[2], *(v2 + 8), *(v2 + 16)))
    {
      v5 = v3[3];
      v6 = *(v2 + 24);
      if (*(v2 + 32) == 1)
      {
        switch(v6)
        {
          case 1:
            if (v5 != 1)
            {
              return 0;
            }

            goto LABEL_8;
          case 2:
            if (v5 != 2)
            {
              return 0;
            }

            goto LABEL_8;
          case 3:
            if (v5 != 3)
            {
              return 0;
            }

            goto LABEL_8;
          case 4:
            if (v5 != 4)
            {
              return 0;
            }

            goto LABEL_8;
          case 5:
            if (v5 != 5)
            {
              return 0;
            }

            goto LABEL_8;
          case 6:
            if (v5 != 6)
            {
              return 0;
            }

            goto LABEL_8;
          default:
            if (!v5)
            {
              goto LABEL_8;
            }

            return 0;
        }
      }

      if (v5 == v6)
      {
LABEL_8:
        v7 = v3[5] == *(v2 + 40) && v3[6] == *(v2 + 48);
        if (v7 || (sub_24AB6030C() & 1) != 0)
        {
          type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
          sub_24AB5FE4C();
          OUTLINED_FUNCTION_0_2();
          v10 = sub_24AB4CE90(v8, v9, MEMORY[0x277D216D0]);
          return OUTLINED_FUNCTION_11(v10) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_24AB4AF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_24AB4AFD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_1();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_24AB4B074(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF93000, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError, &unk_24AB62720);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB4B114(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92F20, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError, &unk_24AB62758);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB4B1DC(uint64_t a1, uint64_t a2)
{
  sub_24AB4CE90(&qword_27EF92F20, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError, &unk_24AB62758);

  return sub_24AB5FF5C();
}

uint64_t sub_24AB4B25C()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF93238);
  __swift_project_value_buffer(v0, qword_27EF93238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB61F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "events";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB4B42C()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_14();
      sub_24AB5FECC();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_2_1();
      sub_24AB4B4E4(v3, v4, v5, v6, v7, &qword_27EF92E48, v8, v9);
    }
  }

  return result;
}

uint64_t sub_24AB4B4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  a5(0);
  sub_24AB4CE90(a6, a7, a8);
  return sub_24AB5FF0C();
}

uint64_t sub_24AB4B580()
{
  OUTLINED_FUNCTION_5();
  if (!*(*v0 + 16) || (type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0), sub_24AB4CE90(&qword_27EF92E48, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage, &unk_24AB62B90), OUTLINED_FUNCTION_25(), OUTLINED_FUNCTION_7(), result = sub_24AB5FFCC(), !v1))
  {
    v3 = OUTLINED_FUNCTION_17();
    if (sub_24AB48D48(v3, v4) || (OUTLINED_FUNCTION_17(), OUTLINED_FUNCTION_1_1(), result = sub_24AB5FF8C(), !v1))
    {
      type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(0);
      return OUTLINED_FUNCTION_10();
    }
  }

  return result;
}

uint64_t sub_24AB4B660()
{
  OUTLINED_FUNCTION_18();
  if ((sub_24AB4E5DC(*v2, *v3) & 1) == 0 || (MEMORY[0x24C227A70](*(v1 + 8), *(v1 + 16), *(v0 + 8), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest(0);
  sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_2();
  v6 = sub_24AB4CE90(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_11(v6) & 1;
}

uint64_t sub_24AB4B714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AB4B788(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_24AB4B850(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF93010, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest, &unk_24AB625B8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB4B8F0(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92F00, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest, &unk_24AB625F0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB4B9B8(uint64_t a1, uint64_t a2)
{
  sub_24AB4CE90(&qword_27EF92F00, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishRequest, &unk_24AB625F0);

  return sub_24AB5FF5C();
}

uint64_t sub_24AB4BA38()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF93250);
  __swift_project_value_buffer(v0, qword_27EF93250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AB61F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_24AB5FFEC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "message";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "errors";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_24AB5FFFC();
}

uint64_t sub_24AB4BC40()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_2_1();
        sub_24AB4BD28(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_14();
        sub_24AB5FEFC();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_2_1();
        sub_24AB4BCC0(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_24AB4BD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
  sub_24AB4CE90(&qword_27EF92F20, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError, &unk_24AB62758);
  return sub_24AB5FF0C();
}

uint64_t sub_24AB4BDC8()
{
  OUTLINED_FUNCTION_5();
  if (!*v0 || (sub_24AB51390(), OUTLINED_FUNCTION_7(), result = sub_24AB5FF7C(), !v1))
  {
    OUTLINED_FUNCTION_3_0();
    if (!v4 || (OUTLINED_FUNCTION_1_1(), result = sub_24AB5FFBC(), !v1))
    {
      if (!*(*(v2 + 32) + 16) || (type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0), sub_24AB4CE90(&qword_27EF92F20, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError, &unk_24AB62758), OUTLINED_FUNCTION_25(), OUTLINED_FUNCTION_7(), result = sub_24AB5FFCC(), !v1))
      {
        type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(0);
        return OUTLINED_FUNCTION_10();
      }
    }
  }

  return result;
}

uint64_t sub_24AB4BEE4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_30();
  if (v4)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (v4 || (sub_24AB6030C()) && (sub_24AB4DD98(v1[4], v0[4]))
  {
    type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse(0);
    sub_24AB5FE4C();
    OUTLINED_FUNCTION_0_2();
    v7 = sub_24AB4CE90(v5, v6, MEMORY[0x277D216D0]);
    return OUTLINED_FUNCTION_11(v7) & 1;
  }

  return 0;
}

uint64_t sub_24AB4BFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AB4C058(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_24AB5FE4C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_24AB4C120(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF93018, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse, &unk_24AB62450);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB4C1C0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_24AB6000C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_24AB4C25C(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92EE0, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse, &unk_24AB62488);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB4C324(uint64_t a1, uint64_t a2)
{
  sub_24AB4CE90(&qword_27EF92EE0, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_BatchPublishResponse, &unk_24AB62488);

  return sub_24AB5FF5C();
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.buildVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_21();
  v5 = *(v1 + v4);
  if (v5 == 5)
  {
    LOBYTE(v5) = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_24AB4C3F8@<X0>(_BYTE *a1@<X8>)
{
  result = Com_Apple_Ve_Common_Headers_IngestEnvironment.buildVariant.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.buildVariant.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_21();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Com_Apple_Ve_Common_Headers_IngestEnvironment.buildVariant.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_21();
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_24AB4C4EC;
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.unknownFields.getter()
{
  sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_1();
  v0 = OUTLINED_FUNCTION_32();

  return v1(v0);
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.unknownFields.setter(uint64_t a1)
{
  sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.init()@<X0>(uint64_t a2@<X8>)
{
  sub_24AB5FE3C();
  result = OUTLINED_FUNCTION_21();
  *(a2 + v4) = 5;
  return result;
}

uint64_t sub_24AB4C66C()
{
  v0 = sub_24AB6000C();
  __swift_allocate_value_buffer(v0, qword_27EF92E58);
  __swift_project_value_buffer(v0, qword_27EF92E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC0, &qword_24AB62D40);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FC8, &qword_24AB62D48) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24AB61F50;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "buildVariant";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_24AB5FFEC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_24AB5FFFC();
}

uint64_t static Com_Apple_Ve_Common_Headers_IngestEnvironment._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EF92C10 != -1)
  {
    swift_once();
  }

  v2 = sub_24AB6000C();
  v3 = __swift_project_value_buffer(v2, qword_27EF92E58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_4();
  while (1)
  {
    OUTLINED_FUNCTION_22();
    result = sub_24AB5FE9C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_2_1();
      sub_24AB4C8CC(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_24AB4C8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Ve_Common_Headers_IngestEnvironment(0);
  sub_24AB51440();
  return sub_24AB5FEAC();
}

uint64_t Com_Apple_Ve_Common_Headers_IngestEnvironment.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_14();
  result = sub_24AB4C990(v1);
  if (!v0)
  {
    OUTLINED_FUNCTION_22();
    return sub_24AB5FE2C();
  }

  return result;
}

uint64_t sub_24AB4C990(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Ve_Common_Headers_IngestEnvironment(0);
  if (*(a1 + *(result + 20)) != 5)
  {
    sub_24AB51440();
    return sub_24AB5FF7C();
  }

  return result;
}

uint64_t static Com_Apple_Ve_Common_Headers_IngestEnvironment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 == 5)
  {
    if (v4 != 5)
    {
      return 0;
    }
  }

  else if (v3 != v4)
  {
    return 0;
  }

  sub_24AB5FE4C();
  OUTLINED_FUNCTION_0_2();
  sub_24AB4CE90(v6, v7, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_25();
  return sub_24AB6014C() & 1;
}

uint64_t sub_24AB4CB00(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_24AB6031C();
  a1(0);
  sub_24AB4CE90(a2, a3, a4);
  sub_24AB6013C();
  return sub_24AB6032C();
}

uint64_t sub_24AB4CC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB4CE90(&qword_27EF93030, type metadata accessor for Com_Apple_Ve_Common_Headers_IngestEnvironment, &protocol conformance descriptor for Com_Apple_Ve_Common_Headers_IngestEnvironment);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_24AB4CC84(uint64_t a1)
{
  v2 = sub_24AB4CE90(&qword_27EF92E88, type metadata accessor for Com_Apple_Ve_Common_Headers_IngestEnvironment, &protocol conformance descriptor for Com_Apple_Ve_Common_Headers_IngestEnvironment);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_24AB4CCF4(uint64_t a1, uint64_t a2)
{
  sub_24AB4CE90(&qword_27EF92E88, type metadata accessor for Com_Apple_Ve_Common_Headers_IngestEnvironment, &protocol conformance descriptor for Com_Apple_Ve_Common_Headers_IngestEnvironment);

  return sub_24AB5FF5C();
}

uint64_t sub_24AB4CD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24AB6031C();
  sub_24AB6013C();
  return sub_24AB6032C();
}

FeedbackLogger::Com_Apple_Ve_Common_BuildVariant_optional __swiftcall Com_Apple_Ve_Common_BuildVariant.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24AB4CE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AB51440();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_24AB4CE68@<X0>(uint64_t *a1@<X8>)
{
  result = Com_Apple_Ve_Common_BuildVariant.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24AB4CE90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24AB4D008()
{
  result = qword_27EF92E98;
  if (!qword_27EF92E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92E98);
  }

  return result;
}

unint64_t sub_24AB4D060()
{
  result = qword_27EF92EA0;
  if (!qword_27EF92EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92EA0);
  }

  return result;
}

unint64_t sub_24AB4D0B8()
{
  result = qword_27EF92EA8;
  if (!qword_27EF92EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92EA8);
  }

  return result;
}

void sub_24AB4D19C(uint64_t a1)
{
  sub_24AB5FE4C();
  if (v1 <= 0x3F)
  {
    sub_24AB4D220();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AB4D220()
{
  if (!qword_27EF92ED0)
  {
    v0 = sub_24AB6027C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF92ED0);
    }
  }
}

uint64_t getEnumTagSinglePayload for Com_Apple_Ve_Common_BuildVariant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Com_Apple_Ve_Common_BuildVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24AB4DA9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AB4DC3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24AB4DC90()
{
  OUTLINED_FUNCTION_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0_1();
  v3 = OUTLINED_FUNCTION_32();
  v4(v3);
  return v0;
}

uint64_t sub_24AB4DCE8()
{
  OUTLINED_FUNCTION_18();
  v1(0);
  OUTLINED_FUNCTION_0_1();
  v2 = OUTLINED_FUNCTION_32();
  v3(v2);
  return v0;
}

uint64_t sub_24AB4DD40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24AB4DD98(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError(0);
  v4 = MEMORY[0x28223BE20](v29);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = v27 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      v25 = 1;
      return v25 & 1;
    }

    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = *(v7 + 72);
    v27[2] = 0;
    v28 = v14;
    while (1)
    {
      sub_24AB51338();
      v30 = v12;
      sub_24AB51338();
      if (*v9 != *v6)
      {
        break;
      }

      v16 = *(v6 + 1);
      v15 = *(v6 + 2);
      if (*(v9 + 1) || (*(v9 + 2) == 0xC000000000000000 ? (v17 = v15 >> 62 == 3) : (v17 = 0), !v17 || v16 || v15 != 0xC000000000000000))
      {
        switch(v15 >> 62)
        {
          case 1uLL:
            LODWORD(v18) = HIDWORD(v16) - v16;
            if (__OFSUB__(HIDWORD(v16), v16))
            {
              __break(1u);
LABEL_51:
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
              __break(1u);
            }

            v18 = v18;
LABEL_21:
            if (!v18)
            {
              break;
            }

            goto LABEL_46;
          case 2uLL:
            v20 = *(v16 + 16);
            v19 = *(v16 + 24);
            v21 = __OFSUB__(v19, v20);
            v18 = v19 - v20;
            if (!v21)
            {
              goto LABEL_21;
            }

            goto LABEL_51;
          case 3uLL:
            break;
          default:
            v18 = BYTE6(v15);
            goto LABEL_21;
        }
      }

      v22 = *(v9 + 3);
      v23 = *(v6 + 3);
      if (v6[32] == 1)
      {
        switch(v23)
        {
          case 1:
            if (v22 != 1)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 2:
            if (v22 != 2)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 3:
            if (v22 != 3)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 4:
            if (v22 != 4)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 5:
            if (v22 != 5)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          case 6:
            if (v22 != 6)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          default:
            if (v22)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
        }
      }

      if (v22 != v23)
      {
        break;
      }

LABEL_27:
      v24 = *(v9 + 5) == *(v6 + 5) && *(v9 + 6) == *(v6 + 6);
      if (!v24 && (sub_24AB6030C() & 1) == 0)
      {
        break;
      }

      sub_24AB5FE4C();
      sub_24AB4CE90(&qword_27EF92E70, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v25 = sub_24AB6014C();
      sub_24AB4DD40(v6, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
      sub_24AB4DD40(v9, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
      if (v25)
      {
        v13 += v28;
        v12 = v30 + v28;
        if (--v10)
        {
          continue;
        }
      }

      return v25 & 1;
    }

LABEL_46:
    sub_24AB4DD40(v6, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
    sub_24AB4DD40(v9, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError);
  }

  v25 = 0;
  return v25 & 1;
}

uint64_t sub_24AB4E5DC(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E40, &unk_24AB62D50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v181 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FD8, &qword_24AB62D60);
  MEMORY[0x28223BE20](v10);
  v192 = &v181 - v11;
  v191 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  MEMORY[0x28223BE20](v191);
  v195 = (&v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92E38, &unk_24AB62050);
  MEMORY[0x28223BE20](v13 - 8);
  v190 = &v181 - v14;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF92FE0, &qword_24AB62D68);
  MEMORY[0x28223BE20](v189);
  v194 = &v181 - v15;
  v197 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage(0);
  v16 = MEMORY[0x28223BE20](v197);
  v18 = (&v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    goto LABEL_268;
  }

  if (!v21 || a1 == a2)
  {
    v173 = 1;
    return v173 & 1;
  }

  v182 = 0;
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = a1 + v22;
  v193 = a2 + v22;
  v183 = *(v19 + 72);
  v184 = v10;
  v185 = v18;
  v186 = v4;
  v196 = (&v181 - v20);
  while (2)
  {
    sub_24AB51338();
    v188 = v23;
    sub_24AB51338();
    v24 = *(v189 + 48);
    v25 = v194;
    sub_24AB4DC90();
    v26 = v25;
    sub_24AB4DC90();
    v27 = v25;
    v28 = v191;
    if (__swift_getEnumTagSinglePayload(v27, 1, v191) == 1)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26 + v24, 1, v28);
      v30 = v186;
      if (EnumTagSinglePayload != 1)
      {
        goto LABEL_263;
      }

      sub_24AB475B4(v26, &qword_27EF92E38, &unk_24AB62050);
      goto LABEL_176;
    }

    v31 = v26;
    v32 = v190;
    sub_24AB4DC90();
    if (__swift_getEnumTagSinglePayload(v31 + v24, 1, v28) == 1)
    {
      sub_24AB4DD40(v32, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
      v26 = v31;
LABEL_263:
      v178 = &qword_27EF92FE0;
      v179 = &qword_24AB62D68;
LABEL_266:
      sub_24AB475B4(v26, v178, v179);
      goto LABEL_267;
    }

    v33 = v195;
    sub_24AB4DCE8();
    v34 = *v32;
    v35 = *v33;
    v36 = v32;
    if (*(v33 + 8) == 1)
    {
      v30 = v186;
      if (v35)
      {
        if (v35 == 1)
        {
          if (v34 != 1)
          {
            goto LABEL_260;
          }
        }

        else if (v34 != 2)
        {
          goto LABEL_260;
        }
      }

      else if (v34)
      {
        goto LABEL_260;
      }
    }

    else
    {
      v30 = v186;
      if (v34 != v35)
      {
        goto LABEL_260;
      }
    }

    v37 = v32[2] == v195[2] && v32[3] == v195[3];
    if (!v37)
    {
      v38 = sub_24AB6030C();
      v36 = v190;
      if ((v38 & 1) == 0)
      {
        goto LABEL_260;
      }
    }

    v39 = v36[4];
    v40 = v36[5];
    v41 = v40 >> 62;
    v43 = v195[4];
    v42 = v195[5];
    v44 = v42 >> 62;
    if (!v37)
    {
      v46 = 0;
      switch(v41)
      {
        case 0uLL:
          v46 = BYTE6(v40);
          goto LABEL_40;
        case 1uLL:
          v37 = HIDWORD(v39) == v39;
          if (__OFSUB__(HIDWORD(v39), v39))
          {
            goto LABEL_276;
          }

          v46 = HIDWORD(v39) - v39;
          goto LABEL_40;
        case 2uLL:
          v48 = *(v39 + 16);
          v47 = *(v39 + 24);
          v49 = __OFSUB__(v47, v48);
          v46 = v47 - v48;
          v37 = v46 == 0;
          if (!v49)
          {
            goto LABEL_40;
          }

LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
          goto LABEL_293;
        case 3uLL:
          goto LABEL_40;
        default:
          goto LABEL_314;
      }
    }

    v46 = 0;
    if (v39 || (v40 == 0xC000000000000000 ? (v45 = v42 >> 62 == 3, v37 = v44 == 3) : (v45 = 0, v37 = 0), !v45 || (v46 = 0, v43) || (v37 = v42 == 0xC000000000000000, v42 != 0xC000000000000000)))
    {
LABEL_40:
      switch(v44)
      {
        case 1uLL:
          LODWORD(v50) = HIDWORD(v43) - v43;
          if (__OFSUB__(HIDWORD(v43), v43))
          {
            goto LABEL_270;
          }

          v50 = v50;
LABEL_49:
          if (v46 != v50)
          {
            goto LABEL_260;
          }

          v37 = v46 == 1;
          if (v46 < 1)
          {
            goto LABEL_103;
          }

          break;
        case 2uLL:
          v52 = *(v43 + 16);
          v51 = *(v43 + 24);
          v49 = __OFSUB__(v51, v52);
          v50 = v51 - v52;
          if (!v49)
          {
            goto LABEL_49;
          }

          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
          goto LABEL_275;
        case 3uLL:
          if (v46)
          {
            goto LABEL_260;
          }

          goto LABEL_103;
        default:
          v50 = BYTE6(v42);
          goto LABEL_49;
      }

      v53 = v43 >> 32;
      switch(v41)
      {
        case 1:
          if (v39 >> 32 < v39)
          {
            goto LABEL_281;
          }

          v68 = v39;
          sub_24AB460B0(v43, v42);
          sub_24AB460B0(v43, v42);
          sub_24AB460B0(v43, v42);
          v60 = sub_24AB5FD6C();
          if (!v60)
          {
            goto LABEL_75;
          }

          v69 = sub_24AB5FD8C();
          if (__OFSUB__(v68, v69))
          {
            goto LABEL_288;
          }

          v60 += v68 - v69;
LABEL_75:
          sub_24AB5FD7C();
          v70 = v60;
          v71 = v182;
          sub_24AB5106C(__s1, v70, v43, v42);
          v182 = v71;
          sub_24AB4611C(v43, v42);
          sub_24AB4611C(v43, v42);
          sub_24AB4611C(v43, v42);
          v30 = v186;
          v36 = v190;
          if ((__s1[0] & 1) == 0)
          {
            goto LABEL_260;
          }

          break;
        case 2:
          v59 = *(v39 + 16);
          v58 = *(v39 + 24);
          sub_24AB460B0(v43, v42);
          sub_24AB460B0(v43, v42);
          sub_24AB460B0(v43, v42);
          v60 = sub_24AB5FD6C();
          if (!v60)
          {
            goto LABEL_63;
          }

          v61 = sub_24AB5FD8C();
          if (__OFSUB__(v59, v61))
          {
            goto LABEL_287;
          }

          v60 += v59 - v61;
LABEL_63:
          if (!__OFSUB__(v58, v59))
          {
            goto LABEL_75;
          }

          goto LABEL_282;
        case 3:
          memset(__s1, 0, 14);
          if (!v44)
          {
            goto LABEL_77;
          }

          if (v44 == 2)
          {
            v62 = *(v43 + 16);
            v63 = *(v43 + 24);
            sub_24AB460B0(v43, v42);
            v64 = sub_24AB5FD6C();
            if (v64)
            {
              v65 = v64;
              v66 = sub_24AB5FD8C();
              if (__OFSUB__(v62, v66))
              {
                goto LABEL_302;
              }

              v67 = (v62 - v66 + v65);
            }

            else
            {
              v67 = 0;
            }

            v49 = __OFSUB__(v63, v62);
            v81 = v63 - v62;
            if (v49)
            {
              goto LABEL_295;
            }

            v82 = sub_24AB5FD7C();
            v30 = v186;
            if (!v67)
            {
              goto LABEL_308;
            }

LABEL_99:
            if (v82 >= v81)
            {
              v83 = v81;
            }

            else
            {
              v83 = v82;
            }

            v84 = memcmp(__s1, v67, v83);
            sub_24AB4611C(v43, v42);
            v36 = v190;
            if (v84)
            {
              goto LABEL_260;
            }
          }

          else
          {
            if (v53 < v43)
            {
LABEL_293:
              __break(1u);
LABEL_294:
              __break(1u);
LABEL_295:
              __break(1u);
LABEL_296:
              __break(1u);
LABEL_297:
              __break(1u);
LABEL_298:
              __break(1u);
LABEL_299:
              __break(1u);
LABEL_300:
              __break(1u);
LABEL_301:
              __break(1u);
LABEL_302:
              __break(1u);
LABEL_303:
              __break(1u);
LABEL_304:
              __break(1u);
LABEL_305:
              __break(1u);
LABEL_306:
              __break(1u);
            }

            sub_24AB460B0(v43, v42);
            v54 = sub_24AB5FD6C();
            if (v54)
            {
              v73 = sub_24AB5FD8C();
              if (__OFSUB__(v43, v73))
              {
                goto LABEL_303;
              }

              v54 += v43 - v73;
            }

            v56 = sub_24AB5FD7C();
            if (!v54)
            {
              __break(1u);
LABEL_308:
              __break(1u);
LABEL_309:
              __break(1u);
LABEL_310:
              __break(1u);
LABEL_311:
              __break(1u);
LABEL_312:
              __break(1u);
LABEL_313:

              __break(1u);
LABEL_314:
              JUMPOUT(0);
            }

LABEL_84:
            if (v56 >= v53 - v43)
            {
              v74 = v53 - v43;
            }

            else
            {
              v74 = v56;
            }

            v75 = memcmp(__s1, v54, v74);
            sub_24AB4611C(v43, v42);
            v36 = v190;
            v30 = v186;
            if (v75)
            {
              goto LABEL_260;
            }
          }

          break;
        default:
          LOWORD(__s1[0]) = v36[4];
          BYTE2(__s1[0]) = BYTE2(v39);
          BYTE3(__s1[0]) = BYTE3(v39);
          BYTE4(__s1[0]) = BYTE4(v39);
          BYTE5(__s1[0]) = BYTE5(v39);
          BYTE6(__s1[0]) = BYTE6(v39);
          HIBYTE(__s1[0]) = HIBYTE(v39);
          LOWORD(__s1[1]) = v40;
          BYTE2(__s1[1]) = BYTE2(v40);
          BYTE3(__s1[1]) = BYTE3(v40);
          BYTE4(__s1[1]) = BYTE4(v40);
          BYTE5(__s1[1]) = BYTE5(v40);
          if (!v44)
          {
LABEL_77:
            __s2 = v43;
            v199 = v42;
            v200 = BYTE2(v42);
            v201 = BYTE3(v42);
            v202 = BYTE4(v42);
            v203 = BYTE5(v42);
            v72 = memcmp(__s1, &__s2, BYTE6(v42));
            v36 = v190;
            v30 = v186;
            if (v72)
            {
              goto LABEL_260;
            }

            break;
          }

          if (v44 == 1)
          {
            if (v53 < v43)
            {
              goto LABEL_294;
            }

            sub_24AB460B0(v43, v42);
            v54 = sub_24AB5FD6C();
            if (v54)
            {
              v55 = sub_24AB5FD8C();
              if (__OFSUB__(v43, v55))
              {
                goto LABEL_304;
              }

              v54 += v43 - v55;
            }

            v56 = sub_24AB5FD7C();
            if (!v54)
            {
              goto LABEL_310;
            }

            goto LABEL_84;
          }

          v76 = *(v43 + 16);
          v77 = *(v43 + 24);
          sub_24AB460B0(v43, v42);
          v78 = sub_24AB5FD6C();
          if (v78)
          {
            v79 = v78;
            v80 = sub_24AB5FD8C();
            if (__OFSUB__(v76, v80))
            {
              goto LABEL_301;
            }

            v67 = (v76 - v80 + v79);
          }

          else
          {
            v67 = 0;
          }

          v49 = __OFSUB__(v77, v76);
          v81 = v77 - v76;
          if (v49)
          {
            goto LABEL_296;
          }

          v82 = sub_24AB5FD7C();
          v30 = v186;
          if (!v67)
          {
            goto LABEL_309;
          }

          goto LABEL_99;
      }
    }

LABEL_103:
    v85 = v36[6];
    v86 = v36[7];
    v87 = v86 >> 62;
    v89 = v195[6];
    v88 = v195[7];
    v90 = v88 >> 62;
    if (v37)
    {
      v92 = 0;
      if (!v85 && v86 == 0xC000000000000000 && v88 >> 62 == 3)
      {
        v92 = 0;
        if (!v89 && v88 == 0xC000000000000000)
        {
          goto LABEL_175;
        }
      }
    }

    else
    {
      v92 = 0;
      switch(v87)
      {
        case 0uLL:
          v92 = BYTE6(v86);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v85), v85))
          {
            goto LABEL_277;
          }

          v92 = HIDWORD(v85) - v85;
          break;
        case 2uLL:
          v94 = *(v85 + 16);
          v93 = *(v85 + 24);
          v49 = __OFSUB__(v93, v94);
          v92 = v93 - v94;
          if (!v49)
          {
            break;
          }

          goto LABEL_278;
        case 3uLL:
          break;
        default:
          goto LABEL_314;
      }
    }

    switch(v90)
    {
      case 1uLL:
        LODWORD(v95) = HIDWORD(v89) - v89;
        if (__OFSUB__(HIDWORD(v89), v89))
        {
          goto LABEL_272;
        }

        v95 = v95;
LABEL_128:
        if (v92 != v95)
        {
          goto LABEL_260;
        }

        if (v92 < 1)
        {
          goto LABEL_175;
        }

        break;
      case 2uLL:
        v97 = *(v89 + 16);
        v96 = *(v89 + 24);
        v49 = __OFSUB__(v96, v97);
        v95 = v96 - v97;
        if (!v49)
        {
          goto LABEL_128;
        }

        goto LABEL_271;
      case 3uLL:
        if (v92)
        {
          goto LABEL_260;
        }

        goto LABEL_175;
      default:
        v95 = BYTE6(v88);
        goto LABEL_128;
    }

    v98 = v89 >> 32;
    switch(v87)
    {
      case 1:
        if (v85 >> 32 < v85)
        {
          goto LABEL_283;
        }

        v111 = v85;
        sub_24AB460B0(v89, v88);
        sub_24AB460B0(v89, v88);
        sub_24AB460B0(v89, v88);
        v106 = sub_24AB5FD6C();
        if (!v106)
        {
          goto LABEL_156;
        }

        v112 = sub_24AB5FD8C();
        if (__OFSUB__(v111, v112))
        {
          goto LABEL_290;
        }

        v106 += v111 - v112;
LABEL_156:
        sub_24AB5FD7C();
        v113 = v106;
        v114 = v182;
        sub_24AB5106C(__s1, v113, v89, v88);
        v182 = v114;
        sub_24AB4611C(v89, v88);
        sub_24AB4611C(v89, v88);
        sub_24AB4611C(v89, v88);
        v30 = v186;
        v36 = v190;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_260;
        }

        goto LABEL_175;
      case 2:
        v105 = *(v85 + 16);
        v104 = *(v85 + 24);
        sub_24AB460B0(v89, v88);
        sub_24AB460B0(v89, v88);
        sub_24AB460B0(v89, v88);
        v106 = sub_24AB5FD6C();
        if (!v106)
        {
          goto LABEL_146;
        }

        v107 = sub_24AB5FD8C();
        if (__OFSUB__(v105, v107))
        {
          goto LABEL_289;
        }

        v106 += v105 - v107;
LABEL_146:
        if (!__OFSUB__(v104, v105))
        {
          goto LABEL_156;
        }

        goto LABEL_284;
      case 3:
        memset(__s1, 0, 14);
        if (!v90)
        {
          goto LABEL_158;
        }

        if (v90 == 2)
        {
          v108 = *(v89 + 16);
          v98 = *(v89 + 24);
          sub_24AB460B0(v89, v88);
          sub_24AB460B0(v89, v88);
          v109 = v88 & 0x3FFFFFFFFFFFFFFFLL;
          v110 = v108;
        }

        else
        {
          if (v98 < v89)
          {
            goto LABEL_297;
          }

          sub_24AB460B0(v89, v88);
          sub_24AB460B0(v89, v88);
          v109 = v88 & 0x3FFFFFFFFFFFFFFFLL;
          v110 = v89;
        }

        v116 = v98;
        v117 = v182;
        v118 = sub_24AB511D8(v110, v116, v109, __s1);
        sub_24AB4611C(v89, v88);
        sub_24AB4611C(v89, v88);
        v57 = &v205;
        v182 = v117;
        if (v117)
        {
          goto LABEL_313;
        }

        v36 = v190;
        v30 = v186;
        if ((v118 & 1) == 0)
        {
          goto LABEL_260;
        }

        goto LABEL_175;
      default:
        LOWORD(__s1[0]) = v36[6];
        BYTE2(__s1[0]) = BYTE2(v85);
        BYTE3(__s1[0]) = BYTE3(v85);
        BYTE4(__s1[0]) = BYTE4(v85);
        BYTE5(__s1[0]) = BYTE5(v85);
        BYTE6(__s1[0]) = BYTE6(v85);
        HIBYTE(__s1[0]) = HIBYTE(v85);
        LOWORD(__s1[1]) = v86;
        BYTE2(__s1[1]) = BYTE2(v86);
        BYTE3(__s1[1]) = BYTE3(v86);
        BYTE4(__s1[1]) = BYTE4(v86);
        BYTE5(__s1[1]) = BYTE5(v86);
        if (!v90)
        {
LABEL_158:
          __s2 = v89;
          v199 = v88;
          v200 = BYTE2(v88);
          v201 = BYTE3(v88);
          v202 = BYTE4(v88);
          v203 = BYTE5(v88);
          v115 = memcmp(__s1, &__s2, BYTE6(v88));
          v36 = v190;
          v30 = v186;
          if (v115)
          {
            goto LABEL_260;
          }

LABEL_175:
          v129 = v36;
          sub_24AB5FE4C();
          sub_24AB4CE90(&qword_27EF92E70, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v130 = v195;
          v131 = sub_24AB6014C();
          sub_24AB4DD40(v130, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
          sub_24AB4DD40(v129, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
          sub_24AB475B4(v194, &qword_27EF92E38, &unk_24AB62050);
          v10 = v184;
          v18 = v185;
          if ((v131 & 1) == 0)
          {
            goto LABEL_267;
          }

LABEL_176:
          if ((sub_24AB4FF28(*v196, *v18) & 1) == 0)
          {
            goto LABEL_267;
          }

          v187 = v21;
          v132 = *(v10 + 48);
          v26 = v192;
          sub_24AB4DC90();
          sub_24AB4DC90();
          if (__swift_getEnumTagSinglePayload(v26, 1, v30) == 1)
          {
            if (__swift_getEnumTagSinglePayload(v26 + v132, 1, v30) != 1)
            {
              goto LABEL_265;
            }

            sub_24AB475B4(v26, &qword_27EF92E40, &unk_24AB62D50);
            v133 = v187;
            goto LABEL_255;
          }

          sub_24AB4DC90();
          if (__swift_getEnumTagSinglePayload(v26 + v132, 1, v30) == 1)
          {
            sub_24AB4DD40(v9, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
LABEL_265:
            v178 = &qword_27EF92FD8;
            v179 = &qword_24AB62D60;
            goto LABEL_266;
          }

          sub_24AB4DCE8();
          v134 = *v9 == *v6 && v9[1] == v6[1];
          v135 = v187;
          if (!v134 && (sub_24AB6030C() & 1) == 0 || (v136 = v9[2], v137 = v6[2], v138 = v136 == v137, v136 != v137))
          {
LABEL_259:
            sub_24AB4DD40(v6, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
            sub_24AB4DD40(v9, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
            v174 = &qword_27EF92E40;
            v175 = &unk_24AB62D50;
            v176 = v192;
            goto LABEL_261;
          }

          v139 = v9[3];
          v140 = v9[4];
          v141 = v140 >> 62;
          v143 = v6[3];
          v142 = v6[4];
          v144 = v142 >> 62;
          if (!v138)
          {
            v146 = 0;
            switch(v141)
            {
              case 0uLL:
                v146 = BYTE6(v140);
                break;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v139), v139))
                {
                  goto LABEL_280;
                }

                v146 = HIDWORD(v139) - v139;
                break;
              case 2uLL:
                v148 = *(v139 + 16);
                v147 = *(v139 + 24);
                v49 = __OFSUB__(v147, v148);
                v146 = v147 - v148;
                if (!v49)
                {
                  break;
                }

                goto LABEL_279;
              case 3uLL:
                break;
              default:
                goto LABEL_314;
            }

LABEL_203:
            switch(v144)
            {
              case 1uLL:
                LODWORD(v149) = HIDWORD(v143) - v143;
                if (__OFSUB__(HIDWORD(v143), v143))
                {
                  goto LABEL_273;
                }

                v149 = v149;
LABEL_212:
                if (v146 != v149)
                {
                  goto LABEL_259;
                }

                if (v146 < 1)
                {
                  goto LABEL_238;
                }

                break;
              case 2uLL:
                v151 = *(v143 + 16);
                v150 = *(v143 + 24);
                v49 = __OFSUB__(v150, v151);
                v149 = v150 - v151;
                if (!v49)
                {
                  goto LABEL_212;
                }

                goto LABEL_274;
              case 3uLL:
                if (v146)
                {
                  goto LABEL_259;
                }

                goto LABEL_238;
              default:
                v149 = BYTE6(v142);
                goto LABEL_212;
            }

            switch(v141)
            {
              case 1:
                if (v139 >> 32 < v139)
                {
                  goto LABEL_285;
                }

                v160 = v139;
                sub_24AB460B0(v6[3], v6[4]);
                sub_24AB460B0(v143, v142);
                sub_24AB460B0(v143, v142);
                v157 = sub_24AB5FD6C();
                if (!v157)
                {
                  goto LABEL_231;
                }

                v161 = sub_24AB5FD8C();
                if (__OFSUB__(v160, v161))
                {
                  goto LABEL_292;
                }

                v157 += v160 - v161;
LABEL_231:
                sub_24AB5FD7C();
                v162 = v157;
                v163 = v182;
                sub_24AB5106C(__s1, v162, v143, v142);
                v182 = v163;
                sub_24AB4611C(v143, v142);
                sub_24AB4611C(v143, v142);
                sub_24AB4611C(v143, v142);
                if ((__s1[0] & 1) == 0)
                {
                  goto LABEL_259;
                }

                goto LABEL_238;
              case 2:
                v156 = *(v139 + 16);
                v155 = *(v139 + 24);
                sub_24AB460B0(v6[3], v6[4]);
                sub_24AB460B0(v143, v142);
                sub_24AB460B0(v143, v142);
                v157 = sub_24AB5FD6C();
                if (!v157)
                {
                  goto LABEL_222;
                }

                v158 = sub_24AB5FD8C();
                if (__OFSUB__(v156, v158))
                {
                  goto LABEL_291;
                }

                v157 += v156 - v158;
LABEL_222:
                if (!__OFSUB__(v155, v156))
                {
                  goto LABEL_231;
                }

                goto LABEL_286;
              case 3:
                memset(__s1, 0, 14);
                sub_24AB460B0(v143, v142);
                sub_24AB460B0(v143, v142);
                v159 = v182;
                sub_24AB5106C(&__s2, __s1, v143, v142);
                v182 = v159;
                sub_24AB4611C(v143, v142);
                sub_24AB4611C(v143, v142);
                if ((__s2 & 1) == 0)
                {
                  goto LABEL_259;
                }

                goto LABEL_238;
              default:
                LOWORD(__s1[0]) = v9[3];
                BYTE2(__s1[0]) = BYTE2(v139);
                BYTE3(__s1[0]) = BYTE3(v139);
                BYTE4(__s1[0]) = BYTE4(v139);
                BYTE5(__s1[0]) = BYTE5(v139);
                BYTE6(__s1[0]) = BYTE6(v139);
                HIBYTE(__s1[0]) = HIBYTE(v139);
                LOWORD(__s1[1]) = v140;
                BYTE2(__s1[1]) = BYTE2(v140);
                BYTE3(__s1[1]) = BYTE3(v140);
                BYTE4(__s1[1]) = BYTE4(v140);
                BYTE5(__s1[1]) = BYTE5(v140);
                if (v144)
                {
                  if (v144 == 1)
                  {
                    if (v143 >> 32 < v143)
                    {
                      goto LABEL_300;
                    }

                    sub_24AB460B0(v143, v142);
                    sub_24AB460B0(v143, v142);
                    v152 = v142 & 0x3FFFFFFFFFFFFFFFLL;
                    v153 = v143;
                    v154 = v143 >> 32;
                  }

                  else
                  {
                    v164 = *(v143 + 16);
                    v165 = *(v143 + 24);
                    sub_24AB460B0(v143, v142);
                    sub_24AB460B0(v143, v142);
                    v152 = v142 & 0x3FFFFFFFFFFFFFFFLL;
                    v153 = v164;
                    v154 = v165;
                  }

                  v166 = v182;
                  v167 = sub_24AB511D8(v153, v154, v152, __s1);
                  sub_24AB4611C(v143, v142);
                  sub_24AB4611C(v143, v142);
                  v57 = &v205;
                  v182 = v166;
                  if (v166)
                  {
                    goto LABEL_313;
                  }

                  if ((v167 & 1) == 0)
                  {
                    goto LABEL_259;
                  }
                }

                else
                {
                  __s2 = v143;
                  v199 = v142;
                  v200 = BYTE2(v142);
                  v201 = BYTE3(v142);
                  v202 = BYTE4(v142);
                  v203 = BYTE5(v142);
                  if (memcmp(__s1, &__s2, BYTE6(v142)))
                  {
                    goto LABEL_259;
                  }
                }

                break;
            }

            goto LABEL_238;
          }

          v146 = 0;
          if (v139)
          {
            goto LABEL_203;
          }

          if (v140 != 0xC000000000000000 || v142 >> 62 != 3)
          {
            goto LABEL_203;
          }

          v146 = 0;
          if (v143 || v142 != 0xC000000000000000)
          {
            goto LABEL_203;
          }

LABEL_238:
          v168 = v9[5] == v6[5] && v9[6] == v6[6];
          if (!v168 && (sub_24AB6030C() & 1) == 0)
          {
            goto LABEL_259;
          }

          v169 = v9[7] == v6[7] && v9[8] == v6[8];
          if (!v169 && (sub_24AB6030C() & 1) == 0)
          {
            goto LABEL_259;
          }

          v170 = v9[9] == v6[9] && v9[10] == v6[10];
          if (!v170 && (sub_24AB6030C() & 1) == 0 || (sub_24AB50C98(v9[11], v6[11]) & 1) == 0)
          {
            goto LABEL_259;
          }

          sub_24AB5FE4C();
          sub_24AB4CE90(&qword_27EF92E70, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v171 = sub_24AB6014C();
          sub_24AB4DD40(v6, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
          sub_24AB4DD40(v9, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata);
          sub_24AB475B4(v192, &qword_27EF92E40, &unk_24AB62D50);
          v10 = v184;
          v18 = v185;
          v133 = v135;
          if ((v171 & 1) == 0)
          {
            goto LABEL_267;
          }

LABEL_255:
          sub_24AB5FE4C();
          sub_24AB4CE90(&qword_27EF92E70, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v172 = v196;
          v173 = sub_24AB6014C();
          sub_24AB4DD40(v18, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
          sub_24AB4DD40(v172, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
          if ((v173 & 1) == 0)
          {
            return v173 & 1;
          }

          v193 += v183;
          v23 = v188 + v183;
          v21 = v133 - 1;
          if (!v21)
          {
            return v173 & 1;
          }

          continue;
        }

        if (v90 == 1)
        {
          if (v98 < v89)
          {
            goto LABEL_298;
          }

          sub_24AB460B0(v89, v88);
          v99 = sub_24AB5FD6C();
          if (v99)
          {
            v100 = sub_24AB5FD8C();
            if (__OFSUB__(v89, v100))
            {
              goto LABEL_306;
            }

            v99 += v89 - v100;
          }

          v101 = sub_24AB5FD7C();
          if (!v99)
          {
            goto LABEL_312;
          }

          if (v101 >= v98 - v89)
          {
            v102 = v98 - v89;
          }

          else
          {
            v102 = v101;
          }

          v103 = memcmp(__s1, v99, v102);
          sub_24AB4611C(v89, v88);
          v36 = v190;
          v30 = v186;
          if (v103)
          {
            goto LABEL_260;
          }

          goto LABEL_175;
        }

        v119 = *(v89 + 16);
        v120 = *(v89 + 24);
        sub_24AB460B0(v89, v88);
        v121 = sub_24AB5FD6C();
        if (v121)
        {
          v122 = v121;
          v123 = sub_24AB5FD8C();
          if (__OFSUB__(v119, v123))
          {
            goto LABEL_305;
          }

          v124 = (v119 - v123 + v122);
        }

        else
        {
          v124 = 0;
        }

        v49 = __OFSUB__(v120, v119);
        v125 = v120 - v119;
        if (v49)
        {
          goto LABEL_299;
        }

        v126 = sub_24AB5FD7C();
        v30 = v186;
        if (!v124)
        {
          goto LABEL_311;
        }

        if (v126 >= v125)
        {
          v127 = v125;
        }

        else
        {
          v127 = v126;
        }

        v128 = memcmp(__s1, v124, v127);
        sub_24AB4611C(v89, v88);
        v36 = v190;
        if (!v128)
        {
          goto LABEL_175;
        }

LABEL_260:
        v177 = v36;
        sub_24AB4DD40(v195, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
        sub_24AB4DD40(v177, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
        v174 = &qword_27EF92E38;
        v175 = &unk_24AB62050;
        v176 = v194;
LABEL_261:
        sub_24AB475B4(v176, v174, v175);
        v18 = v185;
LABEL_267:
        sub_24AB4DD40(v18, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
        sub_24AB4DD40(v196, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage);
LABEL_268:
        v173 = 0;
        return v173 & 1;
    }
  }
}

uint64_t sub_24AB4FF28(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v99 = type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage(0);
  v4 = MEMORY[0x28223BE20](v99);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = (&v95 - v8);
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (v10 && a1 != a2)
    {
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = *(v7 + 72);
      v97 = 0;
      v98 = v14;
      while (1)
      {
        sub_24AB51338();
        sub_24AB51338();
        v15 = *v9;
        v16 = *v6;
        v17 = v6[8];
        v100 = v12;
        if (v17 == 1)
        {
          if (v16)
          {
            if (v16 == 1)
            {
              if (v15 != 1)
              {
                goto LABEL_181;
              }
            }

            else if (v15 != 2)
            {
              goto LABEL_181;
            }
          }

          else if (v15)
          {
            goto LABEL_181;
          }
        }

        else if (v15 != v16)
        {
          goto LABEL_181;
        }

        v18 = v9[2] == *(v6 + 2) && v9[3] == *(v6 + 3);
        if (!v18 && (sub_24AB6030C() & 1) == 0)
        {
LABEL_181:
          sub_24AB4DD40(v6, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
          sub_24AB4DD40(v9, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
          goto LABEL_182;
        }

        v19 = v9[4];
        v20 = v9[5];
        v21 = v20 >> 62;
        v23 = *(v6 + 4);
        v22 = *(v6 + 5);
        v24 = v22 >> 62;
        if (!v18)
        {
          v26 = 0;
          switch(v21)
          {
            case 0uLL:
              v26 = BYTE6(v20);
              goto LABEL_36;
            case 1uLL:
              v18 = HIDWORD(v19) == v19;
              if (__OFSUB__(HIDWORD(v19), v19))
              {
                goto LABEL_188;
              }

              v26 = HIDWORD(v19) - v19;
              goto LABEL_36;
            case 2uLL:
              v28 = *(v19 + 16);
              v27 = *(v19 + 24);
              v29 = __OFSUB__(v27, v28);
              v26 = v27 - v28;
              v18 = v26 == 0;
              if (!v29)
              {
                goto LABEL_36;
              }

LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
              goto LABEL_199;
            case 3uLL:
              goto LABEL_36;
            default:
              goto LABEL_224;
          }
        }

        v26 = 0;
        if (v19 || (v20 == 0xC000000000000000 ? (v25 = v22 >> 62 == 3, v18 = v24 == 3) : (v25 = 0, v18 = 0), !v25 || (v26 = 0, v23) || (v18 = v22 == 0xC000000000000000, v22 != 0xC000000000000000)))
        {
LABEL_36:
          switch(v24)
          {
            case 1uLL:
              LODWORD(v30) = HIDWORD(v23) - v23;
              if (__OFSUB__(HIDWORD(v23), v23))
              {
                goto LABEL_184;
              }

              v30 = v30;
LABEL_45:
              if (v26 != v30)
              {
                goto LABEL_181;
              }

              v18 = v26 == 1;
              if (v26 < 1)
              {
                goto LABEL_99;
              }

              break;
            case 2uLL:
              v32 = *(v23 + 16);
              v31 = *(v23 + 24);
              v29 = __OFSUB__(v31, v32);
              v30 = v31 - v32;
              if (!v29)
              {
                goto LABEL_45;
              }

              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
              goto LABEL_187;
            case 3uLL:
              if (v26)
              {
                goto LABEL_181;
              }

              goto LABEL_99;
            default:
              v30 = BYTE6(v22);
              goto LABEL_45;
          }

          v33 = v23 >> 32;
          switch(v21)
          {
            case 1:
              v96 = v13;
              if (v19 >> 32 < v19)
              {
                goto LABEL_191;
              }

              v47 = v19;
              sub_24AB460B0(v23, v22);
              sub_24AB460B0(v23, v22);
              sub_24AB460B0(v23, v22);
              v48 = sub_24AB5FD6C();
              if (!v48)
              {
                goto LABEL_75;
              }

              v49 = sub_24AB5FD8C();
              if (__OFSUB__(v47, v49))
              {
                goto LABEL_196;
              }

              v48 += v47 - v49;
LABEL_75:
              sub_24AB5FD7C();
              v50 = v97;
              sub_24AB5106C(__s1, v48, v23, v22);
              sub_24AB4611C(v23, v22);
              sub_24AB4611C(v23, v22);
              sub_24AB4611C(v23, v22);
              v97 = v50;
              if (v50)
              {
                goto LABEL_223;
              }

              v13 = v96;
              if ((__s1[0] & 1) == 0)
              {
                goto LABEL_181;
              }

              break;
            case 2:
              v37 = *(v19 + 16);
              v96 = *(v19 + 24);
              sub_24AB460B0(v23, v22);
              sub_24AB460B0(v23, v22);
              sub_24AB460B0(v23, v22);
              v38 = sub_24AB5FD6C();
              if (!v38)
              {
                goto LABEL_59;
              }

              v39 = sub_24AB5FD8C();
              if (__OFSUB__(v37, v39))
              {
                goto LABEL_195;
              }

              v38 += v37 - v39;
LABEL_59:
              if (__OFSUB__(v96, v37))
              {
                goto LABEL_192;
              }

              sub_24AB5FD7C();
              v40 = v97;
              sub_24AB5106C(__s1, v38, v23, v22);
              sub_24AB4611C(v23, v22);
              sub_24AB4611C(v23, v22);
              sub_24AB4611C(v23, v22);
              v97 = v40;
              if (v40)
              {
                goto LABEL_223;
              }

              if ((__s1[0] & 1) == 0)
              {
                goto LABEL_181;
              }

              break;
            case 3:
              memset(__s1, 0, 14);
              if (!v24)
              {
                goto LABEL_78;
              }

              if (v24 == 2)
              {
                v41 = *(v23 + 16);
                v42 = *(v23 + 24);
                sub_24AB460B0(v23, v22);
                v43 = sub_24AB5FD6C();
                if (v43)
                {
                  v44 = sub_24AB5FD8C();
                  if (__OFSUB__(v41, v44))
                  {
                    goto LABEL_207;
                  }

                  v43 += v41 - v44;
                }

                v29 = __OFSUB__(v42, v41);
                v45 = v42 - v41;
                if (v29)
                {
                  goto LABEL_202;
                }

                v46 = sub_24AB5FD7C();
                if (!v43)
                {
                  goto LABEL_218;
                }

LABEL_94:
                if (v46 >= v45)
                {
                  v52 = v45;
                }

                else
                {
                  v52 = v46;
                }

                v53 = v43;
              }

              else
              {
                if (v33 < v23)
                {
LABEL_199:
                  __break(1u);
LABEL_200:
                  __break(1u);
LABEL_201:
                  __break(1u);
LABEL_202:
                  __break(1u);
LABEL_203:
                  __break(1u);
LABEL_204:
                  __break(1u);
LABEL_205:
                  __break(1u);
LABEL_206:
                  __break(1u);
LABEL_207:
                  __break(1u);
LABEL_208:
                  __break(1u);
LABEL_209:
                  __break(1u);
LABEL_210:
                  __break(1u);
LABEL_211:
                  __break(1u);
LABEL_212:
                  __break(1u);
LABEL_213:
                  __break(1u);
LABEL_214:
                  __break(1u);
                }

                sub_24AB460B0(v23, v22);
                v34 = sub_24AB5FD6C();
                if (v34)
                {
                  v51 = sub_24AB5FD8C();
                  if (__OFSUB__(v23, v51))
                  {
                    goto LABEL_209;
                  }

                  v34 += v23 - v51;
                }

                v36 = sub_24AB5FD7C();
                if (!v34)
                {
                  goto LABEL_217;
                }

LABEL_85:
                if (v36 >= v33 - v23)
                {
                  v52 = v33 - v23;
                }

                else
                {
                  v52 = v36;
                }

                v53 = v34;
              }

              v57 = memcmp(__s1, v53, v52);
              sub_24AB4611C(v23, v22);
              if (v57)
              {
                goto LABEL_181;
              }

              break;
            default:
              LOWORD(__s1[0]) = v9[4];
              BYTE2(__s1[0]) = BYTE2(v19);
              BYTE3(__s1[0]) = BYTE3(v19);
              BYTE4(__s1[0]) = BYTE4(v19);
              BYTE5(__s1[0]) = BYTE5(v19);
              BYTE6(__s1[0]) = BYTE6(v19);
              HIBYTE(__s1[0]) = HIBYTE(v19);
              LOWORD(__s1[1]) = v20;
              BYTE2(__s1[1]) = BYTE2(v20);
              BYTE3(__s1[1]) = BYTE3(v20);
              BYTE4(__s1[1]) = BYTE4(v20);
              BYTE5(__s1[1]) = BYTE5(v20);
              if (!v24)
              {
LABEL_78:
                __s2 = v23;
                v102 = v22;
                v103 = BYTE2(v22);
                v104 = BYTE3(v22);
                v105 = BYTE4(v22);
                v106 = BYTE5(v22);
                if (memcmp(__s1, &__s2, BYTE6(v22)))
                {
                  goto LABEL_181;
                }

                break;
              }

              if (v24 == 1)
              {
                if (v33 < v23)
                {
                  goto LABEL_200;
                }

                sub_24AB460B0(v23, v22);
                v34 = sub_24AB5FD6C();
                if (v34)
                {
                  v35 = sub_24AB5FD8C();
                  if (__OFSUB__(v23, v35))
                  {
                    goto LABEL_210;
                  }

                  v34 += v23 - v35;
                }

                v36 = sub_24AB5FD7C();
                if (!v34)
                {
                  goto LABEL_216;
                }

                goto LABEL_85;
              }

              v54 = *(v23 + 16);
              v55 = *(v23 + 24);
              sub_24AB460B0(v23, v22);
              v43 = sub_24AB5FD6C();
              if (v43)
              {
                v56 = sub_24AB5FD8C();
                if (__OFSUB__(v54, v56))
                {
                  goto LABEL_208;
                }

                v43 += v54 - v56;
              }

              v29 = __OFSUB__(v55, v54);
              v45 = v55 - v54;
              if (v29)
              {
                goto LABEL_201;
              }

              v46 = sub_24AB5FD7C();
              if (!v43)
              {
                __break(1u);
LABEL_216:
                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:

                __break(1u);
LABEL_224:
                JUMPOUT(0);
              }

              goto LABEL_94;
          }
        }

LABEL_99:
        v58 = v9[6];
        v59 = v9[7];
        v60 = v59 >> 62;
        v62 = *(v6 + 6);
        v61 = *(v6 + 7);
        v63 = v61 >> 62;
        if (v18)
        {
          v65 = 0;
          if (!v58 && v59 == 0xC000000000000000 && v61 >> 62 == 3)
          {
            v65 = 0;
            if (!v62 && v61 == 0xC000000000000000)
            {
              goto LABEL_177;
            }
          }
        }

        else
        {
          v65 = 0;
          switch(v60)
          {
            case 0uLL:
              v65 = BYTE6(v59);
              break;
            case 1uLL:
              if (__OFSUB__(HIDWORD(v58), v58))
              {
                goto LABEL_189;
              }

              v65 = HIDWORD(v58) - v58;
              break;
            case 2uLL:
              v67 = *(v58 + 16);
              v66 = *(v58 + 24);
              v29 = __OFSUB__(v66, v67);
              v65 = v66 - v67;
              if (!v29)
              {
                break;
              }

              goto LABEL_190;
            case 3uLL:
              break;
            default:
              goto LABEL_224;
          }
        }

        switch(v63)
        {
          case 1uLL:
            LODWORD(v68) = HIDWORD(v62) - v62;
            if (__OFSUB__(HIDWORD(v62), v62))
            {
              goto LABEL_186;
            }

            v68 = v68;
LABEL_124:
            if (v65 != v68)
            {
              goto LABEL_181;
            }

            if (v65 < 1)
            {
              goto LABEL_177;
            }

            break;
          case 2uLL:
            v70 = *(v62 + 16);
            v69 = *(v62 + 24);
            v29 = __OFSUB__(v69, v70);
            v68 = v69 - v70;
            if (!v29)
            {
              goto LABEL_124;
            }

            goto LABEL_185;
          case 3uLL:
            if (v65)
            {
              goto LABEL_181;
            }

            goto LABEL_177;
          default:
            v68 = BYTE6(v61);
            goto LABEL_124;
        }

        v71 = v62 >> 32;
        switch(v60)
        {
          case 1:
            if (v58 >> 32 < v58)
            {
              goto LABEL_193;
            }

            v96 = v58;
            sub_24AB460B0(v62, v61);
            sub_24AB460B0(v62, v61);
            sub_24AB460B0(v62, v61);
            v76 = sub_24AB5FD6C();
            if (!v76)
            {
              goto LABEL_155;
            }

            v84 = sub_24AB5FD8C();
            if (__OFSUB__(v96, v84))
            {
              goto LABEL_198;
            }

            v76 += v96 - v84;
LABEL_155:
            sub_24AB5FD7C();
            v85 = v97;
            sub_24AB5106C(__s1, v76, v62, v61);
            sub_24AB4611C(v62, v61);
            sub_24AB4611C(v62, v61);
            sub_24AB4611C(v62, v61);
            v97 = v85;
            if (v85)
            {
              goto LABEL_223;
            }

            if ((__s1[0] & 1) == 0)
            {
              goto LABEL_181;
            }

            break;
          case 2:
            v75 = *(v58 + 16);
            v96 = *(v58 + 24);
            sub_24AB460B0(v62, v61);
            sub_24AB460B0(v62, v61);
            sub_24AB460B0(v62, v61);
            v76 = sub_24AB5FD6C();
            if (!v76)
            {
              goto LABEL_138;
            }

            v77 = sub_24AB5FD8C();
            if (__OFSUB__(v75, v77))
            {
              goto LABEL_197;
            }

            v76 += v75 - v77;
LABEL_138:
            if (!__OFSUB__(v96, v75))
            {
              goto LABEL_155;
            }

            goto LABEL_194;
          case 3:
            memset(__s1, 0, 14);
            if (!v63)
            {
              goto LABEL_153;
            }

            if (v63 == 2)
            {
              v78 = *(v62 + 16);
              v79 = *(v62 + 24);
              sub_24AB460B0(v62, v61);
              v80 = sub_24AB5FD6C();
              if (v80)
              {
                v81 = sub_24AB5FD8C();
                if (__OFSUB__(v78, v81))
                {
                  goto LABEL_211;
                }

                v80 += v78 - v81;
              }

              v29 = __OFSUB__(v79, v78);
              v82 = v79 - v78;
              if (v29)
              {
                goto LABEL_206;
              }

              v83 = sub_24AB5FD7C();
              if (!v80)
              {
                goto LABEL_220;
              }

              goto LABEL_172;
            }

            if (v71 < v62)
            {
              goto LABEL_204;
            }

            sub_24AB460B0(v62, v61);
            v72 = sub_24AB5FD6C();
            if (v72)
            {
              v86 = sub_24AB5FD8C();
              if (__OFSUB__(v62, v86))
              {
                goto LABEL_214;
              }

              v72 += v62 - v86;
            }

            v74 = sub_24AB5FD7C();
            if (!v72)
            {
              goto LABEL_219;
            }

            goto LABEL_163;
          default:
            LOWORD(__s1[0]) = v9[6];
            BYTE2(__s1[0]) = BYTE2(v58);
            BYTE3(__s1[0]) = BYTE3(v58);
            BYTE4(__s1[0]) = BYTE4(v58);
            BYTE5(__s1[0]) = BYTE5(v58);
            BYTE6(__s1[0]) = BYTE6(v58);
            HIBYTE(__s1[0]) = HIBYTE(v58);
            LOWORD(__s1[1]) = v59;
            BYTE2(__s1[1]) = BYTE2(v59);
            BYTE3(__s1[1]) = BYTE3(v59);
            BYTE4(__s1[1]) = BYTE4(v59);
            BYTE5(__s1[1]) = BYTE5(v59);
            if (v63)
            {
              if (v63 == 1)
              {
                if (v71 < v62)
                {
                  goto LABEL_203;
                }

                sub_24AB460B0(v62, v61);
                v72 = sub_24AB5FD6C();
                if (v72)
                {
                  v73 = sub_24AB5FD8C();
                  if (__OFSUB__(v62, v73))
                  {
                    goto LABEL_213;
                  }

                  v72 += v62 - v73;
                }

                v74 = sub_24AB5FD7C();
                if (!v72)
                {
                  goto LABEL_222;
                }

LABEL_163:
                if (v74 >= v71 - v62)
                {
                  v87 = v71 - v62;
                }

                else
                {
                  v87 = v74;
                }

                v88 = v72;
              }

              else
              {
                v89 = *(v62 + 16);
                v90 = *(v62 + 24);
                sub_24AB460B0(v62, v61);
                v80 = sub_24AB5FD6C();
                if (v80)
                {
                  v91 = sub_24AB5FD8C();
                  if (__OFSUB__(v89, v91))
                  {
                    goto LABEL_212;
                  }

                  v80 += v89 - v91;
                }

                v29 = __OFSUB__(v90, v89);
                v82 = v90 - v89;
                if (v29)
                {
                  goto LABEL_205;
                }

                v83 = sub_24AB5FD7C();
                if (!v80)
                {
                  goto LABEL_221;
                }

LABEL_172:
                if (v83 >= v82)
                {
                  v87 = v82;
                }

                else
                {
                  v87 = v83;
                }

                v88 = v80;
              }

              v92 = memcmp(__s1, v88, v87);
              sub_24AB4611C(v62, v61);
              if (v92)
              {
                goto LABEL_181;
              }
            }

            else
            {
LABEL_153:
              __s2 = v62;
              v102 = v61;
              v103 = BYTE2(v61);
              v104 = BYTE3(v61);
              v105 = BYTE4(v61);
              v106 = BYTE5(v61);
              if (memcmp(__s1, &__s2, BYTE6(v61)))
              {
                goto LABEL_181;
              }
            }

            break;
        }

LABEL_177:
        sub_24AB5FE4C();
        sub_24AB4CE90(&qword_27EF92E70, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v93 = sub_24AB6014C();
        sub_24AB4DD40(v6, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
        sub_24AB4DD40(v9, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage);
        if (v93)
        {
          v13 += v98;
          v12 = v100 + v98;
          if (--v10)
          {
            continue;
          }
        }

        return v93 & 1;
      }
    }

    v93 = 1;
  }

  else
  {
LABEL_182:
    v93 = 0;
  }

  return v93 & 1;
}

uint64_t sub_24AB50C98(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_24AB50E38(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_24AB6030C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24AB50E38(uint64_t a1, uint64_t a2)
{
  sub_24AB6031C();
  sub_24AB6018C();
  v4 = sub_24AB6032C();

  return sub_24AB50EF4(a1, a2, v4);
}

unint64_t sub_24AB50EB0(uint64_t a1)
{
  v2 = sub_24AB602BC();

  return sub_24AB50FA8(a1, v2);
}

unint64_t sub_24AB50EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_24AB6030C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_24AB50FA8(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_24AB513E4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x24C227F80](v8, a1);
    sub_24AB46758(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_24AB5106C(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      v8 = sub_24AB511D8(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v8 = 1;
LABEL_10:
        *a1 = v8 & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v8 = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      goto LABEL_10;
  }
}

char *sub_24AB511D8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_24AB5FD6C();
  v8 = result;
  if (result)
  {
    result = sub_24AB5FD8C();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_24AB5FD7C();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

unint64_t sub_24AB51290()
{
  result = qword_27EF92FF8;
  if (!qword_27EF92FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF92FF8);
  }

  return result;
}

unint64_t sub_24AB512E4()
{
  result = qword_27EF93008;
  if (!qword_27EF93008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF93008);
  }

  return result;
}

uint64_t sub_24AB51338()
{
  OUTLINED_FUNCTION_18();
  v1(0);
  OUTLINED_FUNCTION_0_1();
  v2 = OUTLINED_FUNCTION_32();
  v3(v2);
  return v0;
}

unint64_t sub_24AB51390()
{
  result = qword_27EF93020;
  if (!qword_27EF93020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF93020);
  }

  return result;
}

unint64_t sub_24AB51440()
{
  result = qword_27EF93028;
  if (!qword_27EF93028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF93028);
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

void sub_24AB51500(uint64_t a1)
{
  sub_24AB51644(319, &qword_27EF93048, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24AB5FE4C();
    if (v2 <= 0x3F)
    {
      sub_24AB51644(319, &qword_27EF93050, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataPayloadMessage, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24AB51644(319, &qword_27EF93058, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMetadata, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AB51644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24AB516D0(uint64_t a1)
{
  sub_24AB51780();
  if (v1 <= 0x3F)
  {
    sub_24AB5FE4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AB51780()
{
  if (!qword_27EF93070)
  {
    v0 = sub_24AB6012C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF93070);
    }
  }
}

uint64_t sub_24AB51870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_24AB5FE4C();
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24AB51910(uint64_t a1)
{
  sub_24AB51644(319, &qword_27EF930A8, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventMessage, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24AB5FE4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AB519F4(uint64_t a1)
{
  sub_24AB51644(319, &qword_27EF930C0, type metadata accessor for Com_Apple_Aiml_Dpg_Service_V1_DataEventError, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24AB5FE4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24AB51AC4()
{
  result = qword_27EF930C8;
  if (!qword_27EF930C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930C8);
  }

  return result;
}

unint64_t sub_24AB51B1C()
{
  result = qword_27EF930D0;
  if (!qword_27EF930D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930D0);
  }

  return result;
}

unint64_t sub_24AB51B74()
{
  result = qword_27EF930D8;
  if (!qword_27EF930D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930D8);
  }

  return result;
}

unint64_t sub_24AB51BCC()
{
  result = qword_27EF930E0;
  if (!qword_27EF930E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930E0);
  }

  return result;
}

unint64_t sub_24AB51C24()
{
  result = qword_27EF930E8;
  if (!qword_27EF930E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930E8);
  }

  return result;
}

unint64_t sub_24AB51C7C()
{
  result = qword_27EF930F0;
  if (!qword_27EF930F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930F0);
  }

  return result;
}

unint64_t sub_24AB51CD4()
{
  result = qword_27EF930F8;
  if (!qword_27EF930F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF930F8);
  }

  return result;
}

unint64_t sub_24AB51D2C()
{
  result = qword_27EF93100;
  if (!qword_27EF93100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF93100);
  }

  return result;
}

unint64_t sub_24AB51D84()
{
  result = qword_27EF93108;
  if (!qword_27EF93108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF93108);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return sub_24AB5FE2C();
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1)
{

  return sub_24AB6014C();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return sub_24AB5FE4C();
}

void OUTLINED_FUNCTION_24(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_28()
{

  return sub_24AB5FE4C();
}

uint64_t OUTLINED_FUNCTION_31(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1, uint64_t a2, ...)
{

  return sub_24AB6013C();
}

void sub_24AB5244C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24AB5390C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24AB53B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24AB53DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24AB53FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24AB54968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24AB559B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24AB5A3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t convertBatchStatusToCAOutcome(uint64_t result)
{
  if (result >= 7)
  {
    return 999;
  }

  else
  {
    return result;
  }
}

void sub_24AB5C780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24AB5DDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__403(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t convertUploadStatusToCAOutcome(unsigned int a1)
{
  if (a1 < 6)
  {
    return a1 + 1;
  }

  else
  {
    return 999;
  }
}

unsigned __int8 *tryGetTextProperty(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v2];
  }

  return v2;
}

id tryGetDateProperty(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_int64(a1, a2)}];
  }

  return v4;
}

id tryGetDataProperty(sqlite3 *a1, void *a2, sqlite3_stmt *a3, int a4)
{
  v7 = a2;
  v8 = sqlite3_column_blob(a3, a4);
  if (sqlite3_errcode(a1) == 7)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_24AB3F000, v7, OS_LOG_TYPE_ERROR, "SQLite payload blob iteration OOM", v12, 2u);
    }
  }

  else
  {
    v9 = sqlite3_column_bytes(a3, a4);
    if (v8)
    {
      v10 = [MEMORY[0x277CBEA90] dataWithBytes:v8 length:v9];
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

os_log_t flLogForObject(void *a1)
{
  ClassName = object_getClassName(a1);
  v2 = os_log_create("com.apple.feedbacklogger", ClassName);

  return v2;
}

os_log_t flAnnotatedLogForObject(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"%s[%@]", object_getClassName(a1), v4];

  v6 = os_log_create("com.apple.feedbacklogger", [v5 cStringUsingEncoding:4]);

  return v6;
}

void FLSignpostLoggingInit()
{
  if (FLSignpostLoggingInit_onceToken != -1)
  {
    dispatch_once(&FLSignpostLoggingInit_onceToken, &__block_literal_global_640);
  }
}

uint64_t __FLSignpostLoggingInit_block_invoke()
{
  FL_LOG_SIGNPOSTS = os_log_create("com.apple.feedbacklogger", "Signposts");

  return MEMORY[0x2821F96F8]();
}

void sub_24AB5F694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id FLGetBootSessionUUID()
{
  if (FLGetBootSessionUUID_onceToken != -1)
  {
    dispatch_once(&FLGetBootSessionUUID_onceToken, &__block_literal_global_724);
  }

  v1 = FLGetBootSessionUUID_bootSessionUUID;

  return v1;
}

void __FLGetBootSessionUUID_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v4 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v5, &v4, 0, 0))
  {
    v0 = [MEMORY[0x277CCAD78] UUID];
    v1 = [v0 UUIDString];
    v2 = FLGetBootSessionUUID_bootSessionUUID;
    FLGetBootSessionUUID_bootSessionUUID = v1;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v5];
    v0 = FLGetBootSessionUUID_bootSessionUUID;
    FLGetBootSessionUUID_bootSessionUUID = v3;
  }
}