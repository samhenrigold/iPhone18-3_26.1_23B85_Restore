uint64_t sub_1B7647FE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7648050(uint64_t *a1)
{
  v2[2] = v1;
  v4 = sub_1B77FE858();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[5] = v5;
  v2[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B7648118, 0, 0);
}

uint64_t sub_1B7648118()
{
  sub_1B7438C40(v0[2] + OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_baseURL, v0[6], v0[5]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1B7648218;
  v2 = v0[5];

  return sub_1B7645640(v2);
}

uint64_t sub_1B7648218(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *v4;
  v8[8] = a3;
  v8[9] = v3;

  (*(v7[4] + 8))(v7[5], v7[3]);
  if (v3)
  {
    v9 = sub_1B7648588;
  }

  else
  {
    sub_1B720A388(a1, a2);
    v9 = sub_1B764839C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B764839C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 64);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v3 statusCode];
    v2 = *(v0 + 64);
    if (v5 == 200)
    {

      v6 = *(v0 + 8);
      goto LABEL_7;
    }

    v11 = v5;
    type metadata accessor for FinanceNetworkError(0);
    sub_1B764A048(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
    swift_allocError();
    *v12 = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for FinanceNetworkError(0);
    sub_1B764A048(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
    swift_allocError();
    v8 = v7;
    v9 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v8 = v9;
    v8[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v6 = *(v0 + 8);
LABEL_7:

  return v6();
}

uint64_t sub_1B7648588()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B76485EC(uint64_t a1, int *a2)
{
  *(v3 + 16) = v2;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1B76486F0;

  return v7(a1);
}

uint64_t sub_1B76486F0()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1B76488D8;
  }

  else
  {
    v2 = sub_1B7648804;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7648804()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B743BE9C;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, sub_1B764A1DC, v2, v3);
}

uint64_t sub_1B76488D8()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B743C06C;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD000000000000015, 0x80000001B787ECF0, sub_1B76491CC, v2, v3);
}

void sub_1B76489AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8, &qword_1B781A1E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_sessionDelegateQueue);
  v10 = *(a2 + OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_session);
  v11 = *(a2 + OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_sessionDelegate);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v5 + 32))(v13 + v12, v8, v4);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  aBlock[4] = sub_1B764A0F0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B72A58C8;
  aBlock[3] = &block_descriptor_18;
  v14 = _Block_copy(aBlock);
  v15 = v10;
  v16 = v11;

  [v9 addOperationWithBlock_];
  _Block_release(v14);
}

id sub_1B7648BA8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8, &qword_1B781A1E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  if (*(a1 + OBJC_IVAR____TtC10FinanceKitP33_BBE0122A3E1307DE2D47D62BE8CA3C6615SessionDelegate_sessionDidBecomeInvalid) == 1)
  {
    return sub_1B7800D08();
  }

  (*(v7 + 16))(v9, a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  v13 = (a1 + OBJC_IVAR____TtC10FinanceKitP33_BBE0122A3E1307DE2D47D62BE8CA3C6615SessionDelegate_sessionDidBecomeInvalidHandler);
  v14 = *(a1 + OBJC_IVAR____TtC10FinanceKitP33_BBE0122A3E1307DE2D47D62BE8CA3C6615SessionDelegate_sessionDidBecomeInvalidHandler);
  v15 = *(a1 + OBJC_IVAR____TtC10FinanceKitP33_BBE0122A3E1307DE2D47D62BE8CA3C6615SessionDelegate_sessionDidBecomeInvalidHandler + 8);
  *v13 = sub_1B743E68C;
  v13[1] = v12;
  sub_1B71F4844(v14, v15);
  return [a3 invalidateAndCancel];
}

uint64_t OrderWebServiceClient.deinit()
{
  v1 = OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_baseURL;
  v2 = sub_1B77FF4F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t OrderWebServiceClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_baseURL;
  v2 = sub_1B77FF4F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1B7648F58(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s10FinanceKit15SessionDelegateCMa_0();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B7648FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_baseURL;
  v10 = sub_1B77FF4F8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v4 + v9, a1, v10);
  v12 = (v4 + OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_walletPreferences);
  *v12 = a3;
  v12[1] = a4;
  v13 = [objc_allocWithZone(_s10FinanceKit15SessionDelegateCMa_0()) init];
  v14 = OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_sessionDelegate;
  *(v4 + OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_sessionDelegate) = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v16 = OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_sessionDelegateQueue;
  *(v4 + OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_sessionDelegateQueue) = v15;
  v17 = v15;
  v18 = sub_1B7800838();
  [v17 setName_];

  [*(v4 + v16) setMaxConcurrentOperationCount_];
  v19 = [objc_opt_self() sessionWithConfiguration:a2 delegate:*(v4 + v14) delegateQueue:*(v4 + v16)];
  (*(v11 + 8))(a1, v10);
  *(v4 + OBJC_IVAR____TtC10FinanceKit21OrderWebServiceClient_session) = v19;
  return v4;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit20OrderWebServiceErrorO(uint64_t a1)
{
  if ((*(a1 + 64) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

uint64_t sub_1B76491F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B764922C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B764927C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t type metadata accessor for OrderWebServiceClient(uint64_t a1)
{
  result = qword_1EB99A5D8;
  if (!qword_1EB99A5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7649308(uint64_t a1)
{
  result = sub_1B77FF4F8();
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

uint64_t dispatch thunk of OrderWebServiceClient.register(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B723838C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of OrderWebServiceClient.unregister(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B7201BB0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of OrderWebServiceClient.fetch(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B723838C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of OrderWebServiceClient.fetchChanges(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B723838C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of OrderWebServiceClient.log(with:)(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B723838C;

  return v6(a1);
}

uint64_t dispatch thunk of OrderWebServiceClient.invalidateAndCancelAfter<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 176) + **(*v4 + 176));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B723838C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1B7649B18(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_1B77FEBC8();
      swift_allocObject();
      sub_1B77FEBB8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B77FF558();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B7649BBC(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = a1;
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v5 = sub_1B78000B8();
    __swift_project_value_buffer(v5, qword_1EDAF6550);
    v6 = a1;
    v7 = sub_1B7800098();
    v8 = sub_1B78011D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1B7198000, v7, v8, "Order web service client session did become invalid with error: %@", v9, 0xCu);
      sub_1B7205418(v10, &qword_1EB9910D0, &unk_1B780D910);
      MEMORY[0x1B8CA7A40](v10, -1, -1);
      MEMORY[0x1B8CA7A40](v9, -1, -1);

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v13 = sub_1B78000B8();
    __swift_project_value_buffer(v13, qword_1EDAF6550);
    v7 = sub_1B7800098();
    v14 = sub_1B78011B8();
    if (os_log_type_enabled(v7, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B7198000, v7, v14, "Order web service client session did become invalid", v15, 2u);
      MEMORY[0x1B8CA7A40](v15, -1, -1);
    }
  }

LABEL_12:
  *(v2 + OBJC_IVAR____TtC10FinanceKitP33_BBE0122A3E1307DE2D47D62BE8CA3C6615SessionDelegate_sessionDidBecomeInvalid) = 1;
  v16 = (v2 + OBJC_IVAR____TtC10FinanceKitP33_BBE0122A3E1307DE2D47D62BE8CA3C6615SessionDelegate_sessionDidBecomeInvalidHandler);
  v17 = *(v2 + OBJC_IVAR____TtC10FinanceKitP33_BBE0122A3E1307DE2D47D62BE8CA3C6615SessionDelegate_sessionDidBecomeInvalidHandler);
  if (v17)
  {
    v18 = v16[1];

    v17(v19);
    sub_1B71F4844(v17, v18);
    v20 = *v16;
  }

  else
  {
    v20 = 0;
  }

  v21 = v16[1];
  *v16 = 0;
  v16[1] = 0;

  return sub_1B71F4844(v20, v21);
}

unint64_t sub_1B7649E48()
{
  result = qword_1EB99A608;
  if (!qword_1EB99A608)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.PaymentInfoRequestBody, &type metadata for RawBankConnectData.PaymentInfoRequestBody, v0, v1);
    atomic_store(result, &qword_1EB99A608);
  }

  return result;
}

unint64_t sub_1B7649E9C()
{
  result = qword_1EB99A620;
  if (!qword_1EB99A620)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.AccountRequestBody, &type metadata for RawBankConnectData.AccountRequestBody, v0, v1);
    atomic_store(result, &qword_1EB99A620);
  }

  return result;
}

unint64_t sub_1B7649EF0()
{
  result = qword_1EB99A628;
  if (!qword_1EB99A628)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.AccountsRequestBody, &type metadata for RawBankConnectData.AccountsRequestBody, v0, v1);
    atomic_store(result, &qword_1EB99A628);
  }

  return result;
}

unint64_t sub_1B7649F44()
{
  result = qword_1EB99A630;
  if (!qword_1EB99A630)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.TermsAndConditionsRequestBody, &type metadata for RawBankConnectData.TermsAndConditionsRequestBody, v0, v1);
    atomic_store(result, &qword_1EB99A630);
  }

  return result;
}

unint64_t sub_1B7649F98()
{
  result = qword_1EB99A638;
  if (!qword_1EB99A638)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RawBankConnectData.PassLinkUpdatingBody, &type metadata for RawBankConnectData.PassLinkUpdatingBody, v0, v1);
    atomic_store(result, &qword_1EB99A638);
  }

  return result;
}

uint64_t sub_1B764A048(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B764A090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1B764A0F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9924A8, &qword_1B781A1E0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B7648BA8(v3, v0 + v2, v4);
}

uint64_t static JSONDecoder.makeBankConnectJSONDecoder()()
{
  v0 = sub_1B77FE8B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE8F8();
  swift_allocObject();
  v4 = sub_1B77FE8E8();
  if (qword_1EB98E9B0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB991BC8);
  (*(v1 + 16))(v3, v5, v0);
  sub_1B77FE8C8();
  return v4;
}

uint64_t static JSONEncoder.makeBankConnectJSONEncoder()()
{
  v0 = sub_1B77FE968();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE9B8();
  swift_allocObject();
  v4 = sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB991BE8);
  (*(v1 + 16))(v3, v5, v0);
  sub_1B77FE988();
  return v4;
}

uint64_t sub_1B764A430(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *(type metadata accessor for InternalTransaction(0) - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B764A4F8, 0, 0);
}

void *sub_1B764A4F8()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    v2 = sub_1B7801958();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v25 = MEMORY[0x1E69E7CC0];
    result = sub_1B71FDEE0(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v3 = v25;
    v5 = v0[10];
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v7 = v0[12];
        v8 = MEMORY[0x1B8CA5DC0](i, v0[8]);
        v9 = OBJC_IVAR___XPCInternalTransaction_value;
        swift_beginAccess();
        sub_1B73B4A10(v8 + v9, v7);
        swift_unknownObjectRelease();
        v11 = *(v25 + 16);
        v10 = *(v25 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B71FDEE0((v10 > 1), v11 + 1, 1);
        }

        v12 = v0[12];
        *(v25 + 16) = v11 + 1;
        sub_1B7304D10(v12, v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11);
      }
    }

    else
    {
      v13 = (v0[8] + 32);
      do
      {
        v14 = v0[11];
        v15 = *v13;
        v16 = OBJC_IVAR___XPCInternalTransaction_value;
        swift_beginAccess();
        sub_1B73B4A10(v15 + v16, v14);
        v18 = *(v25 + 16);
        v17 = *(v25 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1B71FDEE0((v17 > 1), v18 + 1, 1);
        }

        v19 = v0[11];
        *(v25 + 16) = v18 + 1;
        sub_1B7304D10(v19, v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18);
        ++v13;
        --v2;
      }

      while (v2);
    }
  }

  v0[13] = v3;
  v20 = v0[9];
  v21 = v20[5];
  v22 = v20[6];
  __swift_project_boxed_opaque_existential_1(v20 + 2, v21);
  v24 = (*(v22 + 8) + **(v22 + 8));
  v23 = swift_task_alloc();
  v0[14] = v23;
  *v23 = v0;
  v23[1] = sub_1B764A804;

  return v24(v3, v21, v22);
}

uint64_t sub_1B764A804(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B764A924, 0, 0);
}

uint64_t sub_1B764A924()
{
  v1 = sub_1B7454128();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B764AB40(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  type metadata accessor for InternalTransaction.XPC(0);
  v4 = sub_1B7800C38();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1B764AC18;

  return sub_1B764A430(v4);
}

uint64_t sub_1B764AC18(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v6 = *v1;

  type metadata accessor for Transaction.Insight.XPC(0);
  v3 = sub_1B7800708();

  (v2)[2](v2, v3);

  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1B764AF38(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1B764AFB4, 0, 0);
}

uint64_t sub_1B764AFB4()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1B764B0DC;

  return v6(v2, v3);
}

uint64_t sub_1B764B0DC(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B764B1DC, 0, 0);
}

uint64_t sub_1B764B1DC()
{
  v1 = *(v0 + 24);
  sub_1B7454128();

  type metadata accessor for Transaction.Insight.XPC(0);
  v2 = sub_1B7800708();

  (v1)[2](v1, v2);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B764B2B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B7201BB0;

  return sub_1B764AF38(v2, v3);
}

uint64_t sub_1B764B35C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B723838C;

  return sub_1B764AB40(v2, v3, v4);
}

uint64_t sub_1B764B410(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 == *a2)
  {
    return 0;
  }

  if (sub_1B7800DB8())
  {
    return 1;
  }

  return (v4 < v3) & sub_1B7800DC8();
}

uint64_t sub_1B764B490(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 == *a1)
  {
    v5 = 1;
  }

  else if (sub_1B7800DB8())
  {
    v5 = 0;
  }

  else
  {
    v5 = (v4 >= v3) | sub_1B7800DC8() ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1B764B518(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 == *a2)
  {
    v5 = 1;
  }

  else if (sub_1B7800DB8())
  {
    v5 = 0;
  }

  else
  {
    v5 = (v4 >= v3) | sub_1B7800DC8() ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1B764B5A0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 == *a1)
  {
    return 0;
  }

  if (sub_1B7800DB8())
  {
    return 1;
  }

  return (v4 < v3) & sub_1B7800DC8();
}

uint64_t sub_1B764B620@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TaskPriorityQueue.PendingTask(0);
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(*v1 + 16);
  if (v7 >= 3)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B77E4D44(v6);
      v6 = result;
    }

    v9 = v6[2];
    if (v9)
    {
      v10 = v9 - 1;
      v11 = v6 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v12 = v11 + *(v20 + 72) * v10;
      v6[2] = v10;
      sub_1B764EEAC(v12, v5, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764F9D8(v11, v6[2], v5);
      *v1 = v6;
      sub_1B764EFE4(v5, a1, type metadata accessor for TaskPriorityQueue.PendingTask);
      (*(v20 + 56))(a1, 0, 1, v3);
      return sub_1B764EF14(v5, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v7)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B77E4D44(v6);
      v6 = result;
    }

    v13 = v6[2];
    if (!v13)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v14 = v13 - 1;
    v15 = v6 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v14;
    v6[2] = v14;
    *v1 = v6;
    sub_1B764EEAC(v15, a1, type metadata accessor for TaskPriorityQueue.PendingTask);
    v16 = *(v20 + 56);
    v17 = a1;
    v18 = 0;
  }

  else
  {
    v16 = *(v20 + 56);
    v17 = a1;
    v18 = 1;
  }

  return v16(v17, v18, 1, v3);
}

uint64_t sub_1B764B870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v41 = a1;
  v5 = type metadata accessor for TaskPriorityQueue.PendingTask(0);
  v40 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  v11 = type metadata accessor for TaskPriorityQueue.State(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TaskPriorityQueue.CurrentTask(0);
  MEMORY[0x1EEE9AC00](v36);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B764EFE4(v3, v13, type metadata accessor for TaskPriorityQueue.State);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A6F0, &unk_1B7854900);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v13, 1, v16) != 1)
  {
    v38 = v3;
    sub_1B764EF14(v3, type metadata accessor for TaskPriorityQueue.State);
    v18 = &v13[*(v16 + 48)];
    v20 = *v18;
    v19 = *(v18 + 1);
    sub_1B764EEAC(v13, v15, type metadata accessor for TaskPriorityQueue.CurrentTask);
    v42 = v19;
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
    }

    else
    {
      v37 = v20 + 1;
      v22 = *(v5 + 20);
      v23 = sub_1B7800DF8();
      (*(*(v23 - 8) + 16))(&v10[v22], v41, v23);
      *v10 = v20;
      v24 = &v10[*(v5 + 24)];
      *v24 = v39;
      v24[1] = a3;
      sub_1B764EFE4(v10, v8, type metadata accessor for TaskPriorityQueue.PendingTask);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B71FE690(0, *(v19 + 16) + 1, 1);
        v19 = v42;
      }

      v5 = *(v19 + 16);
      v21 = *(v19 + 24);
      v13 = (v5 + 1);
      if (v5 < v21 >> 1)
      {
LABEL_6:
        *(v19 + 16) = v13;
        v26 = v19 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        sub_1B764EEAC(v8, v26 + *(v40 + 72) * v5, type metadata accessor for TaskPriorityQueue.PendingTask);
        sub_1B764F04C(v5, __clz(v13) ^ 0x3F, v26, v13);
        sub_1B764EF14(v10, type metadata accessor for TaskPriorityQueue.PendingTask);
        if (sub_1B7800DB8())
        {
          v27 = &v15[*(v36 + 20)];
          v28 = *v27;
          if (v27[16])
          {
            v29 = *(v27 + 1);
            *v27 = 0;
            *(v27 + 1) = 0;
            v27[16] = 1;
            v30 = v38;
            v31 = (v38 + *(v16 + 48));
            sub_1B764EFE4(v15, v38, type metadata accessor for TaskPriorityQueue.CurrentTask);
            *v31 = v37;
            v31[1] = v19;
            (*(v17 + 56))(v30, 0, 1, v16);
            if (v28)
            {
              sub_1B71B6A14(v28, v29);
              v28(1);
              sub_1B7651244(v28, v29, 1);
              sub_1B7651244(v28, v29, 1);
            }

            return sub_1B764EF14(v15, type metadata accessor for TaskPriorityQueue.CurrentTask);
          }

          *v27 = *v27 & 1 | 0x100;
          *(v27 + 1) = 0;
          v27[16] = 0;
        }

        v32 = v38;
        v33 = (v38 + *(v16 + 48));
        sub_1B764EFE4(v15, v38, type metadata accessor for TaskPriorityQueue.CurrentTask);
        *v33 = v37;
        v33[1] = v19;
        (*(v17 + 56))(v32, 0, 1, v16);
        return sub_1B764EF14(v15, type metadata accessor for TaskPriorityQueue.CurrentTask);
      }
    }

    sub_1B71FE690((v21 > 1), v13, 1);
    v19 = v42;
    goto LABEL_6;
  }

  result = sub_1B764EF14(v13, type metadata accessor for TaskPriorityQueue.State);
  __break(1u);
  return result;
}

uint64_t sub_1B764BD7C()
{
  v1 = type metadata accessor for TaskPriorityQueue.State(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TaskPriorityQueue.CurrentTask(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B764EFE4(v0, v3, type metadata accessor for TaskPriorityQueue.State);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A6F0, &unk_1B7854900);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) != 1)
  {
    sub_1B764EF14(v0, type metadata accessor for TaskPriorityQueue.State);
    v9 = (v3 + *(v7 + 48));
    v11 = *v9;
    v10 = v9[1];
    sub_1B764EEAC(v3, v6, type metadata accessor for TaskPriorityQueue.CurrentTask);
    v12 = &v6[*(v4 + 20)];
    v3 = *v12;
    if (v12[16])
    {
      v13 = *(v12 + 1);
      *v12 = 0;
      *(v12 + 1) = 0;
      v12[16] = 1;
      v14 = (v0 + *(v7 + 48));
      sub_1B764EFE4(v6, v0, type metadata accessor for TaskPriorityQueue.CurrentTask);
      *v14 = v11;
      v14[1] = v10;
      (*(v8 + 56))(v0, 0, 1, v7);
      if (v3)
      {
        sub_1B71B6A14(v3, v13);
        (v3)(0);
        sub_1B7651244(v3, v13, 1);
        sub_1B7651244(v3, v13, 1);
      }

      return sub_1B764EF14(v6, type metadata accessor for TaskPriorityQueue.CurrentTask);
    }

    if ((v3 & 1) == 0)
    {
      *v12 = *v12 & 0x100 | 1;
      *(v12 + 1) = 0;
      v12[16] = 0;
      v15 = (v0 + *(v7 + 48));
      sub_1B764EFE4(v6, v0, type metadata accessor for TaskPriorityQueue.CurrentTask);
      *v15 = v11;
      v15[1] = v10;
      (*(v8 + 56))(v0, 0, 1, v7);
      return sub_1B764EF14(v6, type metadata accessor for TaskPriorityQueue.CurrentTask);
    }

    __break(1u);
  }

  result = sub_1B764EF14(v3, type metadata accessor for TaskPriorityQueue.State);
  __break(1u);
  return result;
}

uint64_t sub_1B764C070()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A700, &qword_1B7854A68);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v60 = type metadata accessor for TaskPriorityQueue.PendingTask(0);
  v5 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A708, &qword_1B7854A70);
  v7 = MEMORY[0x1EEE9AC00](v58);
  v57 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v56 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v48 - v11;
  v12 = type metadata accessor for TaskPriorityQueue.State(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TaskPriorityQueue.CurrentTask(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - v19;
  v21 = v1;
  sub_1B764EFE4(v1, v14, type metadata accessor for TaskPriorityQueue.State);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A6F0, &unk_1B7854900);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    goto LABEL_9;
  }

  v24 = &v14[*(v22 + 48)];
  v25 = *(v24 + 1);
  v54 = *v24;
  sub_1B764EEAC(v14, v20, type metadata accessor for TaskPriorityQueue.CurrentTask);
  v61 = v25;
  v26 = &v20[*(v15 + 20)];
  if (v26[16] != 1 || *v26)
  {
    __break(1u);
LABEL_9:
    result = sub_1B764EF14(v14, type metadata accessor for TaskPriorityQueue.State);
    __break(1u);
    return result;
  }

  v27 = v15;
  sub_1B764EF14(v21, type metadata accessor for TaskPriorityQueue.State);
  sub_1B764B620(v4);
  v28 = v60;
  if ((*(v5 + 48))(v4, 1, v60) == 1)
  {
    sub_1B7205418(v4, &qword_1EB99A700, &qword_1B7854A68);

    sub_1B764EF14(v20, type metadata accessor for TaskPriorityQueue.CurrentTask);
    return (*(v23 + 56))(v21, 1, 1, v22);
  }

  else
  {
    v30 = v55;
    sub_1B764EEAC(v4, v55, type metadata accessor for TaskPriorityQueue.PendingTask);
    v51 = v27;
    v48 = *(v58 + 48);
    v53 = v20;
    v31 = *(v28 + 20);
    v49 = sub_1B7800DF8();
    v50 = v18;
    v32 = *(v49 - 8);
    v52 = v23;
    v33 = v59;
    v34 = v21;
    v35 = *(v32 + 32);
    v36 = v30 + v31;
    v38 = v56;
    v37 = v57;
    v35(v56, v36, v49);
    *(v38 + v48) = *(v30 + *(v28 + 24));
    sub_1B764EF74(v38, v33);
    sub_1B7205588(v33, v37, &qword_1EB99A708, &qword_1B7854A70);
    v39 = v58;

    v41 = v49;
    v40 = v50;
    v35(v50, v37, v49);
    v42 = v40 + *(v51 + 20);
    *v42 = 0;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
    v43 = (v34 + *(v22 + 48));
    sub_1B764EFE4(v40, v34, type metadata accessor for TaskPriorityQueue.CurrentTask);
    v44 = v61;
    *v43 = v54;
    v43[1] = v44;
    (*(v52 + 56))(v34, 0, 1, v22);
    v45 = v59;
    sub_1B7205588(v59, v37, &qword_1EB99A708, &qword_1B7854A70);
    v46 = *(v37 + *(v39 + 48));
    v47 = (*(v32 + 8))(v37, v41);
    v46(v47);

    sub_1B764EF14(v40, type metadata accessor for TaskPriorityQueue.CurrentTask);
    sub_1B7205418(v45, &qword_1EB99A708, &qword_1B7854A70);
    return sub_1B764EF14(v53, type metadata accessor for TaskPriorityQueue.CurrentTask);
  }
}

uint64_t TaskPriorityQueue.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TaskPriorityQueue.State(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A6F0, &unk_1B7854900);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A6F8, &qword_1B785F640);
  v6 = swift_allocObject();
  *(v6 + ((*(*v6 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  result = sub_1B764EEAC(v4, v6 + *(*v6 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for TaskPriorityQueue.State);
  *a1 = v6;
  return result;
}

uint64_t TaskPriorityQueue.addTask<A>(priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a4;
  v6[14] = a5;
  v6[11] = a2;
  v6[12] = a3;
  v6[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280, &unk_1B7808CA0);
  v6[15] = swift_task_alloc();
  v7 = sub_1B7800DF8();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *v5;
  v6[18] = v8;
  v6[19] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B764C92C, 0, 0);
}

uint64_t sub_1B764C92C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_1B7205588(v0[11], v3, &unk_1EB99C280, &unk_1B7808CA0);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[15];
    v6 = v0[16];
    sub_1B7800EA8();
    if (v4(v5, 1, v6) != 1)
    {
      sub_1B7205418(v0[15], &unk_1EB99C280, &unk_1B7808CA0);
    }
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B764CA44, 0, 0);
}

uint64_t sub_1B764CA44()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1B764CB80;
  v3 = swift_continuation_init();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v6));
  sub_1B764D250(v1 + v5);
  os_unfair_lock_unlock((v1 + v6));

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B764CB80()
{

  return MEMORY[0x1EEE6DFA0](sub_1B764CC60, 0, 0);
}

uint64_t sub_1B764CC60()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 112);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = *(v0 + 96);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v5;
  *(v4 + 48) = v1;
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_1B764CD5C;
  v7 = *(v0 + 80);

  return MEMORY[0x1EEE6DBF8](v7);
}

uint64_t sub_1B764CD5C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B764CE74, 0, 0);
}

uint64_t sub_1B764CE74()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

void sub_1B764CEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v4 = type metadata accessor for TaskPriorityQueue.CurrentTask(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TaskPriorityQueue.State(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  sub_1B764EFE4(a1, &v21 - v11, type metadata accessor for TaskPriorityQueue.State);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A6F0, &unk_1B7854900);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    v22 = v4;
    sub_1B764EF14(v12, type metadata accessor for TaskPriorityQueue.State);
    sub_1B764EFE4(a1, v10, type metadata accessor for TaskPriorityQueue.State);
    if (v15(v10, 1, v13) == 1)
    {
      sub_1B764EF14(a1, type metadata accessor for TaskPriorityQueue.State);
      sub_1B764EF14(v10, type metadata accessor for TaskPriorityQueue.State);
      v16 = sub_1B7800DF8();
      (*(*(v16 - 8) + 16))(v6, v23, v16);
      v17 = &v6[*(v22 + 20)];
      *v17 = 0;
      *(v17 + 1) = 0;
      v17[16] = 0;
      v18 = (a1 + *(v13 + 48));
      sub_1B764EEAC(v6, a1, type metadata accessor for TaskPriorityQueue.CurrentTask);
      v19 = MEMORY[0x1E69E7CC0];
      *v18 = 1;
      v18[1] = v19;
      (*(v14 + 56))(a1, 0, 1, v13);
      swift_continuation_throwingResume();
    }

    else
    {
      sub_1B764EF14(v10, type metadata accessor for TaskPriorityQueue.State);
      __break(1u);
    }
  }

  else
  {

    sub_1B764EF14(v12, type metadata accessor for TaskPriorityQueue.CurrentTask);
    v20 = swift_allocObject();
    *(v20 + 16) = v24;
    sub_1B764B870(v23, sub_1B7651250, v20);
  }
}

uint64_t sub_1B764D26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  sub_1B7801768();
  v7[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280, &unk_1B7808CA0);
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B764D344, 0, 0);
}

uint64_t sub_1B764D344()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = sub_1B7800DF8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v1, v6, v7);
  (*(v8 + 56))(v1, 0, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v5;
  v9[6] = v4;
  v9[7] = v2;
  v10 = sub_1B7800D58();
  v0[19] = v10;

  sub_1B764DD70(v1, &unk_1B7854A60, v9, v10);
  sub_1B7205418(v1, &unk_1EB99C280, &unk_1B7808CA0);

  return MEMORY[0x1EEE6DFA0](sub_1B764D4CC, 0, 0);
}

uint64_t sub_1B764D4CC()
{
  v1 = v0 + 16;
  v2 = *(v0 + 120);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 180;
  *(v0 + 24) = sub_1B764D600;
  v3 = swift_continuation_init();
  v4 = *v2;
  v5 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  *(v0 + 160) = v5;
  v6 = *(v4 + 48);
  *(v0 + 176) = v6;
  v7 = (v6 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v7));
  sub_1B764DF90(v2 + v5, v3);
  os_unfair_lock_unlock((v2 + v7));

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1B764D600()
{
  *(*v0 + 181) = *(*v0 + 180);

  return MEMORY[0x1EEE6DFA0](sub_1B764D6E4, 0, 0);
}

uint64_t sub_1B764D6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 181) == 1)
  {
    sub_1B7800D48();
  }

  v5 = swift_task_alloc();
  *(v4 + 168) = v5;
  *v5 = v4;
  v5[1] = sub_1B764D7A8;
  v6 = *(v4 + 152);
  v7 = *(v4 + 136);

  return MEMORY[0x1EEE6D8A0](v7, 0, 0, v6);
}

uint64_t sub_1B764D7A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B764D8A4, 0, 0);
}

uint64_t sub_1B764D8A4()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v2 - 8);
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 120);
    v6 = (*(v0 + 176) + 3) & 0x1FFFFFFFCLL;
    (*(v3 + 32))(*(v0 + 80), v1, v2);
    os_unfair_lock_lock((v5 + v6));
    sub_1B764C070();
    os_unfair_lock_unlock((v5 + v6));

    v7 = *(v0 + 8);

    return v7();
  }

  return result;
}

uint64_t sub_1B764D9E0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B723838C;

  return sub_1B764D26C(a1, a2, v7, v8, v9, v10, v6);
}

uint64_t sub_1B764DAB8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_1B764DBB4;

  return v10(a1);
}

uint64_t sub_1B764DBB4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B764DCB0, 0, 0);
}

uint64_t sub_1B764DCB0()
{
  v1 = *(v0 + 16);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_1B764BD7C();
  os_unfair_lock_unlock((v1 + v2));
  v3 = *(v0 + 8);

  return v3();
}

double sub_1B764DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280, &unk_1B7808CA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v22 - v11;
  sub_1B7205588(a1, v22 - v11, &unk_1EB99C280, &unk_1B7808CA0);
  v13 = sub_1B7800DF8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B7205418(v12, &unk_1EB99C280, &unk_1B7808CA0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1B7800CD8();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B7800DE8();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();

  return result;
}

uint64_t sub_1B764DF90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskPriorityQueue.State(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TaskPriorityQueue.CurrentTask(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v23 = a2;
  *(v10 + 16) = a2;
  sub_1B764EFE4(a1, v6, type metadata accessor for TaskPriorityQueue.State);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A6F0, &unk_1B7854900);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    result = sub_1B764EF14(v6, type metadata accessor for TaskPriorityQueue.State);
    __break(1u);
  }

  else
  {
    v13 = &v6[*(v11 + 48)];
    v15 = *v13;
    v14 = *(v13 + 1);
    result = sub_1B764EEAC(v6, v9, type metadata accessor for TaskPriorityQueue.CurrentTask);
    v17 = &v9[*(v7 + 20)];
    if ((v17[16] & 1) == 0)
    {
      v18 = *v17;
      sub_1B764EF14(a1, type metadata accessor for TaskPriorityQueue.State);
      if (v18)
      {
        *v17 = 0;
        *(v17 + 1) = 0;
        v17[16] = 1;
        v19 = (a1 + *(v11 + 48));
        sub_1B764EFE4(v9, a1, type metadata accessor for TaskPriorityQueue.CurrentTask);
        *v19 = v15;
        v19[1] = v14;
        (*(v12 + 56))(a1, 0, 1, v11);
        **(*(v23 + 64) + 40) = 0;
      }

      else
      {
        if ((v18 & 0x100) == 0)
        {
          *v17 = sub_1B7651154;
          *(v17 + 1) = v10;
          v17[16] = 1;
          v20 = (a1 + *(v11 + 48));
          sub_1B764EFE4(v9, a1, type metadata accessor for TaskPriorityQueue.CurrentTask);
          *v20 = v15;
          v20[1] = v14;
          (*(v12 + 56))(a1, 0, 1, v11);
          return sub_1B764EF14(v9, type metadata accessor for TaskPriorityQueue.CurrentTask);
        }

        *v17 = 0;
        *(v17 + 1) = 0;
        v17[16] = 1;
        v21 = (a1 + *(v11 + 48));
        sub_1B764EFE4(v9, a1, type metadata accessor for TaskPriorityQueue.CurrentTask);
        *v21 = v15;
        v21[1] = v14;
        (*(v12 + 56))(a1, 0, 1, v11);
        **(*(v23 + 64) + 40) = 1;
      }

      swift_continuation_resume();

      return sub_1B764EF14(v9, type metadata accessor for TaskPriorityQueue.CurrentTask);
    }
  }

  __break(1u);
  return result;
}

uint64_t TaskPriorityQueue.addThrowingTask<A>(priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a4;
  v6[8] = a5;
  v6[5] = a2;
  v6[6] = a3;
  v6[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  v7 = sub_1B7802388();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v5;
  v6[12] = v8;
  v6[13] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B764E42C, 0, 0);
}

uint64_t sub_1B764E42C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v0[2] = v0[13];
  v4 = swift_allocObject();
  v0[14] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;

  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1B764E534;
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[5];

  return TaskPriorityQueue.addTask<A>(priority:operation:)(v6, v8, &unk_1B7854948, v4, v7);
}

uint64_t sub_1B764E534()
{

  return MEMORY[0x1EEE6DFA0](sub_1B764E64C, 0, 0);
}

uint64_t sub_1B764E64C()
{
  v1 = v0[9];
  v2 = v0[4];
  (*(v0[10] + 16))(v0[11], v0[12], v1);
  sub_1B741A2BC(v1, (v0 + 3), v2);
  (*(v0[10] + 8))(v0[12], v0[9]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B764E740(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = *(a4 - 8);
  v6 = swift_task_alloc();
  v4[5] = v6;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_1B764E894;

  return v9(v6);
}

uint64_t sub_1B764E894()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B764EA64;
  }

  else
  {
    v2 = sub_1B764E9A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B764E9A8()
{
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  sub_1B7802388();
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B764EA64()
{
  **(v0 + 16) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB991110, &qword_1B780C5F0);
  sub_1B7802388();
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B764EB0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7201BB0;

  return sub_1B764E740(a1, v5, v6, v4);
}

uint64_t sub_1B764EC28(uint64_t a1)
{
  result = sub_1B7800DF8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit17TaskPriorityQueueV0C5EventOIeghy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B764ECF8(uint64_t a1)
{
  sub_1B764ED50(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1B764ED50(uint64_t a1)
{
  if (!qword_1EDAF9D88[0])
  {
    type metadata accessor for TaskPriorityQueue.CurrentTask(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDAF9D88);
    }
  }
}

uint64_t sub_1B764EDB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B723838C;

  return sub_1B764DAB8(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_1B764EEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B764EF14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B764EF74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A708, &qword_1B7854A70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B764EFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B764F04C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v82 = a3;
  v81 = type metadata accessor for TaskPriorityQueue.PendingTask(0);
  v7 = MEMORY[0x1EEE9AC00](v81);
  v9 = (&v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v73 - v11);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v76 = &v73 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v73 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v75 = &v73 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v77 = (&v73 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v73 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = (&v73 - v27);
  result = MEMORY[0x1EEE9AC00](v26);
  v33 = (&v73 - v31);
  if (!a1)
  {
    return result;
  }

  v78 = v32;
  v79 = a4;
  v34 = *(v30 + 72);
  v35 = v82 + v34 * a1;
  v80 = v34;
  v74 = (a1 - 1) / 2;
  v36 = v82 + v34 * v74;
  if (a2)
  {
    sub_1B764EFE4(v35, v12, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EFE4(v36, v9, type metadata accessor for TaskPriorityQueue.PendingTask);
    v40 = *v12;
    v41 = *v9;
    if (*v12 == *v9)
    {
      sub_1B764EF14(v9, type metadata accessor for TaskPriorityQueue.PendingTask);
      v39 = v12;
      goto LABEL_7;
    }

    v73 = a2;
    a2 = a1;
    v43 = sub_1B7800DB8();
    v42 = v78;
    if (v43)
    {
      LOBYTE(a2) = v73;
      goto LABEL_12;
    }

    v71 = sub_1B7800DC8();
    sub_1B764EF14(v9, type metadata accessor for TaskPriorityQueue.PendingTask);
    result = sub_1B764EF14(v12, type metadata accessor for TaskPriorityQueue.PendingTask);
    if (v41 >= v40)
    {
      a1 = a2;
      LOBYTE(a2) = v73;
    }

    else
    {
      v72 = v71;
      a1 = a2;
      LOBYTE(a2) = v73;
      if (v72)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    sub_1B764EFE4(v35, &v73 - v31, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EFE4(v36, v28, type metadata accessor for TaskPriorityQueue.PendingTask);
    v37 = *v28;
    v38 = *v33;
    if (*v28 == *v33)
    {
      sub_1B764EF14(v28, type metadata accessor for TaskPriorityQueue.PendingTask);
      v39 = v33;
LABEL_7:
      result = sub_1B764EF14(v39, type metadata accessor for TaskPriorityQueue.PendingTask);
      v42 = v78;
      goto LABEL_14;
    }

    if (sub_1B7800DB8())
    {
      v9 = v28;
      v12 = v33;
      v42 = v78;
LABEL_12:
      sub_1B764EF14(v9, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v12, type metadata accessor for TaskPriorityQueue.PendingTask);
LABEL_13:
      LOBYTE(a2) = a2 - 1;
      v44 = a1;
      a1 = v74;
      result = sub_1B764F874(v44, v74, v82);
      goto LABEL_14;
    }

    v70 = sub_1B7800DC8();
    sub_1B764EF14(v28, type metadata accessor for TaskPriorityQueue.PendingTask);
    result = sub_1B764EF14(v33, type metadata accessor for TaskPriorityQueue.PendingTask);
    if (v38 >= v37)
    {
      v42 = v78;
    }

    else
    {
      v42 = v78;
      if (v70)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  if ((a2 & 1) == 0)
  {
    if (a1 < 3)
    {
      return result;
    }

    while (1)
    {
      v79 = a1 - 3;
      v45 = (a1 - 3) >> 2;
      v46 = v80;
      v47 = a1;
      v48 = v80 * a1;
      v49 = v82;
      v78 = v48;
      v50 = v82 + v48;
      sub_1B764EFE4(v82 + v48, v25, type metadata accessor for TaskPriorityQueue.PendingTask);
      v51 = v45;
      v52 = v46 * v45;
      v53 = v49 + v46 * v45;
      v54 = v77;
      sub_1B764EFE4(v53, v77, type metadata accessor for TaskPriorityQueue.PendingTask);
      v55 = *v25;
      v56 = *v54;
      if (*v25 == *v54)
      {
        v17 = v54;
        v42 = v25;
        goto LABEL_54;
      }

      if (sub_1B7800DB8())
      {
        sub_1B764EF14(v54, type metadata accessor for TaskPriorityQueue.PendingTask);
        result = sub_1B764EF14(v25, type metadata accessor for TaskPriorityQueue.PendingTask);
      }

      else
      {
        v57 = sub_1B7800DC8();
        sub_1B764EF14(v54, type metadata accessor for TaskPriorityQueue.PendingTask);
        result = sub_1B764EF14(v25, type metadata accessor for TaskPriorityQueue.PendingTask);
        if (v56 >= v55 || (v57 & 1) == 0)
        {
          return result;
        }
      }

      if (v47 != v51)
      {
        if (!v82)
        {
          __break(1u);
LABEL_59:
          __break(1u);
          return result;
        }

        sub_1B764EEAC(v50, v75, type metadata accessor for TaskPriorityQueue.PendingTask);
        if (v78 < v52 || v50 >= v53 + v80)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v78 != v52)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        result = sub_1B764EEAC(v75, v53, type metadata accessor for TaskPriorityQueue.PendingTask);
      }

      a1 = v51;
      if (v79 <= 0xB)
      {
        return result;
      }
    }
  }

  if (a1 < 3)
  {
    return result;
  }

  do
  {
    v79 = a1 - 3;
    v58 = (a1 - 3) >> 2;
    v59 = v80;
    v60 = a1;
    v61 = v80 * a1;
    v62 = v82;
    v63 = v82 + v61;
    sub_1B764EFE4(v82 + v61, v42, type metadata accessor for TaskPriorityQueue.PendingTask);
    v64 = v58;
    v65 = v59 * v58;
    v77 = (v62 + v65);
    sub_1B764EFE4(v62 + v65, v17, type metadata accessor for TaskPriorityQueue.PendingTask);
    v66 = *v17;
    v67 = *v42;
    if (*v17 == *v42)
    {
LABEL_54:
      sub_1B764EF14(v17, type metadata accessor for TaskPriorityQueue.PendingTask);
      return sub_1B764EF14(v42, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    if (sub_1B7800DB8())
    {
      sub_1B764EF14(v17, type metadata accessor for TaskPriorityQueue.PendingTask);
      result = sub_1B764EF14(v42, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    else
    {
      v68 = sub_1B7800DC8();
      sub_1B764EF14(v17, type metadata accessor for TaskPriorityQueue.PendingTask);
      v42 = v78;
      result = sub_1B764EF14(v78, type metadata accessor for TaskPriorityQueue.PendingTask);
      if (v67 >= v66 || (v68 & 1) == 0)
      {
        return result;
      }
    }

    if (v60 != v64)
    {
      if (!v82)
      {
        goto LABEL_59;
      }

      sub_1B764EEAC(v63, v76, type metadata accessor for TaskPriorityQueue.PendingTask);
      v69 = v77;
      if (v61 < v65 || v63 >= v77 + v80)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v61 != v65)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      result = sub_1B764EEAC(v76, v69, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    a1 = v64;
  }

  while (v79 > 0xB);
  return result;
}

uint64_t sub_1B764F874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TaskPriorityQueue.PendingTask(0);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != a2)
  {
    if (a3)
    {
      v11 = *(v8 + 72);
      v12 = v11 * a1;
      v13 = a3 + v11 * a1;
      v14 = v11 * a2;
      v15 = a3 + v14;
      sub_1B764EEAC(v13, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TaskPriorityQueue.PendingTask);
      if (v12 < v14 || v13 >= v15 + v11)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v12 != v14)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return sub_1B764EEAC(v10, v15, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B764F9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TaskPriorityQueue.PendingTask(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v33 - v11);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v33 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v33 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v33 - v19);
  v22 = *(v21 + 72);
  if (a2 != 2)
  {
    v34 = a3;
    sub_1B764EFE4(a1 + 2 * v22, v15, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EFE4(a1 + v22, v12, type metadata accessor for TaskPriorityQueue.PendingTask);
    v27 = *v15;
    v28 = *v12;
    if (*v15 == *v12)
    {
      sub_1B764EF14(v12, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v15, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    else
    {
      if (sub_1B7800DB8())
      {
        sub_1B764EF14(v12, type metadata accessor for TaskPriorityQueue.PendingTask);
        sub_1B764EF14(v15, type metadata accessor for TaskPriorityQueue.PendingTask);
        v29 = 1;
        goto LABEL_18;
      }

      v31 = sub_1B7800DC8();
      sub_1B764EF14(v12, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v15, type metadata accessor for TaskPriorityQueue.PendingTask);
      if (v31)
      {
        if (v28 < v27)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        goto LABEL_18;
      }
    }

    v29 = 2;
LABEL_18:
    sub_1B764EEAC(a1 + v29 * v22, v9, type metadata accessor for TaskPriorityQueue.PendingTask);
    v32 = v34;
    sub_1B764EEAC(v34, a1 + v29 * v22, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EEAC(v9, v32, type metadata accessor for TaskPriorityQueue.PendingTask);
    return sub_1B764FDD0(v29, 1, a1, a2);
  }

  sub_1B764EFE4(a1 + v22, &v33 - v19, type metadata accessor for TaskPriorityQueue.PendingTask);
  v23 = a3;
  sub_1B764EFE4(a3, v18, type metadata accessor for TaskPriorityQueue.PendingTask);
  v24 = *v18;
  v25 = *v20;
  if (*v18 == *v20)
  {
    sub_1B764EF14(v18, type metadata accessor for TaskPriorityQueue.PendingTask);
    return sub_1B764EF14(v20, type metadata accessor for TaskPriorityQueue.PendingTask);
  }

  if (sub_1B7800DB8())
  {
    sub_1B764EF14(v18, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EF14(v20, type metadata accessor for TaskPriorityQueue.PendingTask);
LABEL_13:
    sub_1B764EEAC(a1 + v22, v9, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EEAC(v23, a1 + v22, type metadata accessor for TaskPriorityQueue.PendingTask);
    return sub_1B764EEAC(v9, v23, type metadata accessor for TaskPriorityQueue.PendingTask);
  }

  v30 = sub_1B7800DC8();
  sub_1B764EF14(v18, type metadata accessor for TaskPriorityQueue.PendingTask);
  result = sub_1B764EF14(v20, type metadata accessor for TaskPriorityQueue.PendingTask);
  if (v25 < v24 && (v30 & 1) != 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1B764FDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = type metadata accessor for TaskPriorityQueue.PendingTask(0);
  v8 = MEMORY[0x1EEE9AC00](v117);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v99 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v103 = (&v99 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v111 = &v99 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v106 = (&v99 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v99 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v105 = (&v99 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v104 = (&v99 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v107 = &v99 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v110 = &v99 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v109 = &v99 - v32;
  result = MEMORY[0x1EEE9AC00](v31);
  v36 = (&v99 - v35);
  if (!a3)
  {
    __break(1u);
    return result;
  }

  v37 = *(v34 + 72);
  sub_1B764EEAC(a3 + v37 * a1, &v99 - v35, type metadata accessor for TaskPriorityQueue.PendingTask);
  v38 = (4 * a1) | 3;
  v108 = v36;
  if (4 * a1 + 6 >= a4)
  {
    v82 = a2 + 2;
    goto LABEL_49;
  }

  v99 = v13;
  v100 = v10;
  v101 = a4;
  v102 = v22;
  v114 = v37;
  v40 = v109;
  v39 = v110;
  do
  {
    v112 = a2;
    v116 = v38 + 1;
    sub_1B764EFE4(a3 + (v38 + 1) * v37, v40, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EFE4(a3 + v38 * v37, v39, type metadata accessor for TaskPriorityQueue.PendingTask);
    v41 = *v40;
    v42 = *v39;
    v43 = *v40 == *v39;
    v113 = a1;
    if (v43)
    {
      sub_1B764EF14(v39, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v40, type metadata accessor for TaskPriorityQueue.PendingTask);
      v44 = v107;
    }

    else
    {
      v45 = sub_1B7800DB8();
      v44 = v107;
      if (v45)
      {
        sub_1B764EF14(v39, type metadata accessor for TaskPriorityQueue.PendingTask);
        sub_1B764EF14(v40, type metadata accessor for TaskPriorityQueue.PendingTask);
        v116 = v38;
      }

      else
      {
        v46 = sub_1B7800DC8();
        sub_1B764EF14(v39, type metadata accessor for TaskPriorityQueue.PendingTask);
        sub_1B764EF14(v40, type metadata accessor for TaskPriorityQueue.PendingTask);
        v47 = v116;
        if (v42 < v41)
        {
          v47 = v38;
        }

        if ((v46 & 1) == 0)
        {
          v47 = v38 + 1;
        }

        v116 = v47;
      }
    }

    v48 = v38 + 2;
    v115 = v38 + 3;
    v49 = (v38 + 3) * v37;
    sub_1B764EFE4(a3 + v49, v44, type metadata accessor for TaskPriorityQueue.PendingTask);
    v50 = v37;
    v51 = (v38 + 2) * v37;
    v52 = a3;
    v53 = a3 + v51;
    v54 = v104;
    sub_1B764EFE4(v53, v104, type metadata accessor for TaskPriorityQueue.PendingTask);
    v55 = *v44;
    v56 = v44;
    v57 = *v54;
    if (v55 == *v54)
    {
      sub_1B764EF14(v54, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v56, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    else if (sub_1B7800DB8())
    {
      sub_1B764EF14(v54, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v56, type metadata accessor for TaskPriorityQueue.PendingTask);
      v49 = v51;
      v115 = v38 + 2;
    }

    else
    {
      v58 = sub_1B7800DC8();
      sub_1B764EF14(v54, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v56, type metadata accessor for TaskPriorityQueue.PendingTask);
      v59 = v115;
      if (v57 >= v55)
      {
        v60 = v115;
      }

      else
      {
        v60 = v48;
      }

      if (v58)
      {
        v49 = v60 * v50;
        v59 = v60;
      }

      v115 = v59;
    }

    a3 = v52;
    v61 = v105;
    sub_1B764EFE4(v52 + v49, v105, type metadata accessor for TaskPriorityQueue.PendingTask);
    v62 = v116;
    v63 = v116 * v114;
    v64 = v102;
    sub_1B764EFE4(v52 + v116 * v114, v102, type metadata accessor for TaskPriorityQueue.PendingTask);
    v65 = *v61;
    v66 = *v64;
    if (*v61 == *v64)
    {
      sub_1B764EF14(v64, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v61, type metadata accessor for TaskPriorityQueue.PendingTask);
      v37 = v114;
      a1 = v115;
    }

    else if (sub_1B7800DB8())
    {
      sub_1B764EF14(v64, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v61, type metadata accessor for TaskPriorityQueue.PendingTask);
      v49 = v63;
      a1 = v62;
      v37 = v114;
    }

    else
    {
      v67 = sub_1B7800DC8();
      sub_1B764EF14(v64, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v61, type metadata accessor for TaskPriorityQueue.PendingTask);
      v37 = v114;
      a1 = v115;
      if (v66 >= v65)
      {
        v68 = v115;
      }

      else
      {
        v68 = v62;
      }

      if (v67)
      {
        v49 = v68 * v114;
        a1 = v68;
      }
    }

    v69 = v106;
    sub_1B764EFE4(a3 + v49, v106, type metadata accessor for TaskPriorityQueue.PendingTask);
    v36 = v108;
    v70 = *v108;
    v71 = *v69;
    if (*v108 == *v69)
    {
      sub_1B764EF14(v69, type metadata accessor for TaskPriorityQueue.PendingTask);
      v83 = v113;
      return sub_1B764EEAC(v36, a3 + v83 * v37, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    if (sub_1B7800DB8())
    {
      sub_1B764EF14(v69, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    else
    {
      v72 = sub_1B7800DC8();
      sub_1B764EF14(v69, type metadata accessor for TaskPriorityQueue.PendingTask);
      if (v71 >= v70 || (v72 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    v73 = a3 + v49;
    v74 = v111;
    sub_1B764EEAC(v73, v111, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EEAC(v74, a3 + v113 * v37, type metadata accessor for TaskPriorityQueue.PendingTask);
    v75 = a3 + (a1 - 1) / 2 * v37;
    v76 = v103;
    sub_1B764EFE4(v75, v103, type metadata accessor for TaskPriorityQueue.PendingTask);
    v77 = *v76;
    if (v70 == *v76)
    {
      sub_1B764EF14(v76, type metadata accessor for TaskPriorityQueue.PendingTask);
      goto LABEL_5;
    }

    if (sub_1B7800DB8())
    {
      sub_1B764EF14(v76, type metadata accessor for TaskPriorityQueue.PendingTask);
LABEL_45:
      v81 = v111;
      sub_1B764EEAC(v75, v111, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EEAC(v36, v75, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EEAC(v81, v36, type metadata accessor for TaskPriorityQueue.PendingTask);
      goto LABEL_5;
    }

    v78 = sub_1B7800DC8();
    v79 = v76;
    v80 = v78;
    sub_1B764EF14(v79, type metadata accessor for TaskPriorityQueue.PendingTask);
    if (v77 < v70 && (v80 & 1) != 0)
    {
      goto LABEL_45;
    }

LABEL_5:
    v38 = (4 * a1) | 3;
    a2 = v112 + 2;
    a4 = v101;
    v40 = v109;
    v39 = v110;
  }

  while (4 * a1 + 6 < v101);
  v82 = v112 + 4;
  v13 = v99;
  v10 = v100;
LABEL_49:
  v84 = (2 * a1) | 1;
  if (v84 >= a4)
  {
LABEL_52:
    v83 = a1;
    return sub_1B764EEAC(v36, a3 + v83 * v37, type metadata accessor for TaskPriorityQueue.PendingTask);
  }

  v113 = sub_1B7650924(v84, a2 + 1, v38, v82, a3, a4);
  v85 = a3 + v113 * v37;
  sub_1B764EFE4(v85, v13, type metadata accessor for TaskPriorityQueue.PendingTask);
  v86 = *v36;
  v87 = *v13;
  if (*v36 == *v13)
  {
    sub_1B764EF14(v13, type metadata accessor for TaskPriorityQueue.PendingTask);
    goto LABEL_52;
  }

  v100 = v10;
  if (sub_1B7800DB8())
  {
    sub_1B764EF14(v13, type metadata accessor for TaskPriorityQueue.PendingTask);
    goto LABEL_58;
  }

  v88 = sub_1B7800DC8();
  sub_1B764EF14(v13, type metadata accessor for TaskPriorityQueue.PendingTask);
  if (v87 < v86 && (v88 & 1) != 0)
  {
LABEL_58:
    v89 = v111;
    sub_1B764EEAC(v85, v111, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EEAC(v89, a3 + a1 * v37, type metadata accessor for TaskPriorityQueue.PendingTask);
    v83 = v113;
    if (v113 < v38)
    {
      v36 = v108;
      return sub_1B764EEAC(v36, a3 + v83 * v37, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    v90 = v37;
    v91 = a3 + (v113 - 1) / 2 * v37;
    v92 = v100;
    sub_1B764EFE4(v91, v100, type metadata accessor for TaskPriorityQueue.PendingTask);
    v93 = *v92;
    if (v86 == *v92)
    {
      sub_1B764EF14(v92, type metadata accessor for TaskPriorityQueue.PendingTask);
      v36 = v108;
      v37 = v90;
      return sub_1B764EEAC(v36, a3 + v83 * v37, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    v116 = (v83 - 1) / 2;
    v94 = v108;
    if (sub_1B7800DB8())
    {
      sub_1B764EF14(v92, type metadata accessor for TaskPriorityQueue.PendingTask);
      v36 = v94;
      v37 = v90;
      goto LABEL_68;
    }

    v95 = sub_1B7800DC8();
    sub_1B764EF14(v92, type metadata accessor for TaskPriorityQueue.PendingTask);
    v96 = v93 < v86;
    v36 = v94;
    v37 = v90;
    if (v96)
    {
      v83 = v113;
      if (v95)
      {
LABEL_68:
        v97 = v91;
        v98 = v111;
        sub_1B764EEAC(v97, v111, type metadata accessor for TaskPriorityQueue.PendingTask);
        sub_1B764EEAC(v98, v85, type metadata accessor for TaskPriorityQueue.PendingTask);
        v83 = v116;
      }
    }

    else
    {
LABEL_69:
      v83 = v113;
    }
  }

  else
  {
    v83 = a1;
    v36 = v108;
  }

  return sub_1B764EEAC(v36, a3 + v83 * v37, type metadata accessor for TaskPriorityQueue.PendingTask);
}

uint64_t sub_1B7650924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a2;
  v80 = a5;
  v77 = a4;
  v78 = type metadata accessor for TaskPriorityQueue.PendingTask(0);
  v8 = MEMORY[0x1EEE9AC00](v78);
  v10 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v72[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = MEMORY[0x1EEE9AC00](&v72[-v14]);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v72[-v17];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v72[-v20];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v72[-v23];
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v72[-v26];
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v72[-v29];
  v31 = MEMORY[0x1EEE9AC00](v28);
  v36 = &v72[-v33];
  if (v34 >= a6)
  {
    v44 = a1 + 1;
    if (a1 + 1 < a6)
    {
      v45 = *(v32 + 72);
      v46 = v80;
      sub_1B764EFE4(v80 + v45 * v44, v13, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EFE4(v46 + v45 * a1, v10, type metadata accessor for TaskPriorityQueue.PendingTask);
      v47 = *v13;
      v48 = *v10;
      if (*v13 == *v10)
      {
        sub_1B764EF14(v10, type metadata accessor for TaskPriorityQueue.PendingTask);
        sub_1B764EF14(v13, type metadata accessor for TaskPriorityQueue.PendingTask);
        return v44;
      }

      if ((sub_1B7800DB8() & 1) == 0)
      {
        v61 = sub_1B7800DC8();
        sub_1B764EF14(v10, type metadata accessor for TaskPriorityQueue.PendingTask);
        sub_1B764EF14(v13, type metadata accessor for TaskPriorityQueue.PendingTask);
        if ((v61 & 1) != 0 && v48 < v47)
        {
          return a1;
        }

        return v44;
      }

      sub_1B764EF14(v10, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v13, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    return a1;
  }

  v37 = *(v32 + 72);
  v75 = v34 + 2;
  if (v34 + 2 < a6)
  {
    v38 = v34 + 1;
    v39 = v80;
    v79 = v37 * (v34 + 1);
    v40 = v34;
    sub_1B764EFE4(v80 + v79, &v72[-v33], type metadata accessor for TaskPriorityQueue.PendingTask);
    v76 = v40;
    v41 = v37 * v40;
    sub_1B764EFE4(v39 + v41, v30, type metadata accessor for TaskPriorityQueue.PendingTask);
    v42 = *v36;
    v43 = *v30;
    if (*v36 == *v30)
    {
      sub_1B764EF14(v30, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v36, type metadata accessor for TaskPriorityQueue.PendingTask);
      v76 = v38;
      v41 = v79;
    }

    else if (sub_1B7800DB8())
    {
      sub_1B764EF14(v30, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v36, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    else
    {
      v55 = sub_1B7800DC8();
      sub_1B764EF14(v30, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v36, type metadata accessor for TaskPriorityQueue.PendingTask);
      if (v43 >= v42)
      {
        v56 = v38;
      }

      else
      {
        v56 = v76;
      }

      v41 = v79;
      if (v55)
      {
        v41 = v56 * v37;
        v57 = v56;
      }

      else
      {
        v57 = v76 + 1;
      }

      v76 = v57;
    }

    v58 = v80;
    v44 = v75;
    sub_1B764EFE4(v80 + v37 * v75, v21, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EFE4(v58 + v41, v18, type metadata accessor for TaskPriorityQueue.PendingTask);
    v59 = *v21;
    v60 = *v18;
    if (*v21 == *v18)
    {
      sub_1B764EF14(v18, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v21, type metadata accessor for TaskPriorityQueue.PendingTask);
    }

    else if (sub_1B7800DB8())
    {
      sub_1B764EF14(v18, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v21, type metadata accessor for TaskPriorityQueue.PendingTask);
      return v76;
    }

    else
    {
      v69 = sub_1B7800DC8();
      sub_1B764EF14(v18, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v21, type metadata accessor for TaskPriorityQueue.PendingTask);
      if ((v69 & 1) != 0 && v60 < v59)
      {
        return v76;
      }
    }

    return v44;
  }

  v74 = v31;
  v75 = v35;
  v49 = a1 + 1;
  v50 = v80;
  v51 = v34;
  sub_1B764EFE4(v80 + v37 * v34, v27, type metadata accessor for TaskPriorityQueue.PendingTask);
  sub_1B764EFE4(v50 + v37 * v49, v24, type metadata accessor for TaskPriorityQueue.PendingTask);
  v52 = *v27;
  v53 = *v24;
  if (*v27 == *v24)
  {
    sub_1B764EF14(v24, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EF14(v27, type metadata accessor for TaskPriorityQueue.PendingTask);
    v54 = v51;
  }

  else
  {
    v76 = v51;
    if (sub_1B7800DB8())
    {
      sub_1B764EF14(v24, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v27, type metadata accessor for TaskPriorityQueue.PendingTask);
      v54 = v49;
      v51 = v76;
    }

    else
    {
      v73 = sub_1B7800DC8();
      sub_1B764EF14(v24, type metadata accessor for TaskPriorityQueue.PendingTask);
      sub_1B764EF14(v27, type metadata accessor for TaskPriorityQueue.PendingTask);
      v51 = v76;
      v54 = v76;
      if (v73)
      {
        if (v53 >= v52)
        {
          v54 = v76;
        }

        else
        {
          v54 = v49;
        }
      }
    }
  }

  v62 = v51 + 1;
  if (v51 + 1 >= a6)
  {
    return v54;
  }

  v63 = v80;
  v64 = v62;
  v65 = v75;
  sub_1B764EFE4(v80 + v37 * v62, v75, type metadata accessor for TaskPriorityQueue.PendingTask);
  v66 = v74;
  sub_1B764EFE4(v63 + v54 * v37, v74, type metadata accessor for TaskPriorityQueue.PendingTask);
  v67 = *v65;
  v68 = *v66;
  if (*v65 == *v66)
  {
    sub_1B764EF14(v66, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EF14(v65, type metadata accessor for TaskPriorityQueue.PendingTask);
    return v64;
  }

  if (sub_1B7800DB8())
  {
    sub_1B764EF14(v66, type metadata accessor for TaskPriorityQueue.PendingTask);
    sub_1B764EF14(v65, type metadata accessor for TaskPriorityQueue.PendingTask);
    return v54;
  }

  v71 = sub_1B7800DC8();
  sub_1B764EF14(v66, type metadata accessor for TaskPriorityQueue.PendingTask);
  sub_1B764EF14(v65, type metadata accessor for TaskPriorityQueue.PendingTask);
  if ((v71 & 1) == 0)
  {
    return v64;
  }

  if (v68 < v67)
  {
    return v54;
  }

  return v64;
}

uint64_t sub_1B765117C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7201BB0;

  return sub_1B759CDD8(a1, v4);
}

uint64_t sub_1B7651244(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B71F4844(result, a2);
  }

  return result;
}

unint64_t sub_1B7651280(uint64_t a1)
{
  result = sub_1B7800DF8();
  if (v2 <= 0x3F)
  {
    result = sub_1B742F978();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B7651328()
{
  result = qword_1EB99A720;
  if (!qword_1EB99A720)
  {
    result = swift_getWitnessTable(byte_1B7854AA0, &type metadata for TaskPriorityQueue.TaskEvent, v0, v1);
    atomic_store(result, &qword_1EB99A720);
  }

  return result;
}

unint64_t sub_1B7651380()
{
  result = qword_1EB99A728;
  if (!qword_1EB99A728)
  {
    v3 = type metadata accessor for TaskPriorityQueue.PendingTask(255);
    result = swift_getWitnessTable(aAcd7, v3, v0, v1);
    atomic_store(result, &qword_1EB99A728);
  }

  return result;
}

void ManagedAnnotationDeleter.deleteAnnotation(with:in:)(uint64_t a1, void *a2)
{
  v4 = sub_1B7452294();
  v5 = v2;
  if (!v2)
  {
    if (v4)
    {
      v14 = v4;
      [a2 deleteObject_];

      return;
    }

    sub_1B76515F4();
    v5 = swift_allocError();
    swift_willThrow();
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v6 = sub_1B78000B8();
  __swift_project_value_buffer(v6, qword_1EDAFAF58);
  v7 = v5;
  v8 = sub_1B7800098();
  v9 = sub_1B78011D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B7198000, v8, v9, "Failed to delete annotation: %@", v10, 0xCu);
    sub_1B726B694(v11);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
    MEMORY[0x1B8CA7A40](v10, -1, -1);
  }

  swift_willThrow();
}

uint64_t ManagedAnnotationDeleter.AnnotationDeletingError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

unint64_t sub_1B76515F4()
{
  result = qword_1EB99A730;
  if (!qword_1EB99A730)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManagedAnnotationDeleter.AnnotationDeletingError, &type metadata for ManagedAnnotationDeleter.AnnotationDeletingError, v0, v1);
    atomic_store(result, &qword_1EB99A730);
  }

  return result;
}

unint64_t sub_1B765164C()
{
  result = qword_1EB99A738;
  if (!qword_1EB99A738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManagedAnnotationDeleter.AnnotationDeletingError, &type metadata for ManagedAnnotationDeleter.AnnotationDeletingError, v0, v1);
    atomic_store(result, &qword_1EB99A738);
  }

  return result;
}

void sub_1B76516C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7B0, &unk_1B7824CD0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v22 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  v15 = *(v2 + 16);
  os_unfair_lock_lock((v15 + 24));
  if (*(v15 + 16))
  {
    v16 = *(v15 + 16);
  }

  else
  {
    v16 = sub_1B73ADA9C();
    *(v15 + 16) = v16;
  }

  os_unfair_lock_unlock((v15 + 24));
  v17 = [*(v16 + 2) newBackgroundContext];

  MEMORY[0x1EEE9AC00](v18);
  v22[-2] = a1;
  v22[-1] = v17;
  sub_1B7801468();

  if (v3)
  {
    sub_1B7201CA4();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
  }

  else
  {
    sub_1B7653548(v12, v14);
    sub_1B7205588(v14, v9, &qword_1EB98F7B0, &unk_1B7824CD0);
    v20 = type metadata accessor for InternalTransaction(0);
    if ((*(*(v20 - 8) + 48))(v9, 1, v20) == 1)
    {
      sub_1B7205418(v9, &qword_1EB98F7B0, &unk_1B7824CD0);
      sub_1B7201CA4();
      swift_allocError();
      *v21 = 6;
      swift_willThrow();
      sub_1B7205418(v14, &qword_1EB98F7B0, &unk_1B7824CD0);
    }

    else
    {
      sub_1B7205418(v14, &qword_1EB98F7B0, &unk_1B7824CD0);
      sub_1B76535B8(v9, a2, type metadata accessor for InternalTransaction);
    }
  }
}

unint64_t sub_1B76519A4(uint64_t a1)
{

  sub_1B723AF4C(v3);

  v9 = sub_1B72049A0(MEMORY[0x1E69E7CC0]);
  v4 = *(v1 + 16);
  os_unfair_lock_lock((v4 + 24));
  if (*(v4 + 16))
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = sub_1B73ADA9C();
    *(v4 + 16) = v5;
  }

  os_unfair_lock_unlock((v4 + 24));
  v6 = [*(v5 + 2) newBackgroundContext];

  MEMORY[0x1EEE9AC00](v7);
  sub_1B7801468();

  if (v2)
  {
  }

  return v9;
}

void sub_1B7651AE4(uint64_t a1, uint64_t *a2, void *a3, unsigned int (**a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1B76521EC(0xD000000000000031, 0x80000001B7888960, a2, a3, a4);
  if (!v4)
  {
    sub_1B76521EC(0xD000000000000034, 0x80000001B78889A0, a2, a3, a4);
    sub_1B76521EC(0xD000000000000040, 0x80000001B78889E0, a2, a3, a4);
    sub_1B76521EC(0xD00000000000002ELL, 0x80000001B787D440, a2, a3, a4);
  }
}

uint64_t sub_1B7651BBC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964C8, &qword_1B7836D70);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v17 = swift_projectBox();
  sub_1B7205588(v17, v16, &qword_1EB9964C8, &qword_1B7836D70);
  v18 = type metadata accessor for TransactionGroup.StylingMetadata(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    return sub_1B76535B8(v16, a6, type metadata accessor for TransactionGroup.StylingMetadata);
  }

  sub_1B7205418(v16, &qword_1EB9964C8, &qword_1B7836D70);
  v20 = *(v18 + 20);
  v21 = sub_1B77FFA18();
  (*(*(v21 - 8) + 16))(&a6[v20], a4, v21);
  *a6 = a2;
  *(a6 + 1) = a3;
  a6[*(v18 + 24)] = a5;
  sub_1B7653458(a6, v14);
  (*(v19 + 56))(v14, 0, 1, v18);
  swift_beginAccess();

  return sub_1B76534BC(v14, v17);
}

id sub_1B7651E04()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  v1 = sub_1B7800838();
  [v0 setName_];

  v2 = sub_1B7800838();
  v3 = [objc_opt_self() expressionForKeyPath_];

  [v0 setExpression_];
  [v0 setExpressionResultType_];
  return v0;
}

id sub_1B7651F00()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  v1 = sub_1B7800838();
  [v0 setName_];

  v2 = sub_1B7800838();
  v3 = [objc_opt_self() expressionForKeyPath_];

  [v0 setExpression_];
  [v0 setExpressionResultType_];
  return v0;
}

id sub_1B7651FF0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  v3 = sub_1B7800838();
  [v2 setName_];

  v4 = sub_1B7800838();
  v5 = [objc_opt_self() expressionForKeyPath_];

  [v2 setExpression_];
  [v2 setExpressionResultType_];
  return v2;
}

id sub_1B76520EC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  v1 = sub_1B7800838();
  [v0 setName_];

  v2 = sub_1B7800838();
  v3 = [objc_opt_self() expressionForKeyPath_];

  [v0 setExpression_];
  [v0 setExpressionResultType_];
  return v0;
}

void sub_1B76521EC(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, unsigned int (**a5)(uint64_t, uint64_t, uint64_t))
{
  v143 = a5;
  v128 = a4;
  v130 = a3;
  v142 = a1;
  v129 = type metadata accessor for TransactionGroup.StylingMetadata(0);
  v126 = *(v129 - 8);
  v6 = MEMORY[0x1EEE9AC00](v129);
  v120 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v119 = &v113 - v8;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964C8, &qword_1B7836D70);
  v9 = MEMORY[0x1EEE9AC00](v127);
  v122 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v125 = &v113 - v11;
  v145 = sub_1B77FFA18();
  v131 = *(v145 - 8);
  v12 = MEMORY[0x1EEE9AC00](v145);
  v124 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v132 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v113 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v123 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v133 = &v113 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v141 = &v113 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v154 = &v113 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v146 = &v113 - v26;
  type metadata accessor for ManagedInternalTransaction();
  v153.receiver = swift_getObjCClassFromMetadata();
  v153.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v27 = objc_msgSendSuper2(&v153, sel_fetchRequest);
  [v27 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v28 = swift_allocObject();
  v139 = xmmword_1B780C060;
  *(v28 + 16) = xmmword_1B780C060;
  v29 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v30 = sub_1B7800838();
  v31 = [v29 initWithKey:v30 ascending:0];

  *(v28 + 32) = v31;
  v32 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v33 = sub_1B7800838();
  v34 = [v32 initWithKey:v33 ascending:0];

  v35 = v130;
  *(v28 + 40) = v34;
  sub_1B7205540(0, &qword_1EDAF6470, 0x1E696AEB0);
  v36 = sub_1B7800C18();

  [v27 setSortDescriptors_];

  v37 = swift_allocObject();
  *(v37 + 16) = v139;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1B7807CD0;
  v39 = *v35;
  *(v38 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
  *(v38 + 64) = sub_1B72A6DD4();
  *(v38 + 32) = v39;

  *(v37 + 32) = sub_1B78010E8();
  v40 = v142;
  *&v151 = v142;
  *(&v151 + 1) = a2;

  MEMORY[0x1B8CA4D30](0x4C494E203D2120, 0xE700000000000000);
  v41 = sub_1B78010E8();

  *(v37 + 40) = v41;
  v42 = sub_1B7800C18();

  v43 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v27 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50, &qword_1B780C3E0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B78123D0;
  v45 = sub_1B7651E04();
  v46 = sub_1B7205540(0, &qword_1EB99AA60, 0x1E695D5C8);
  *(v44 + 56) = v46;
  *(v44 + 32) = v45;
  v47 = sub_1B7651F00();
  *(v44 + 88) = v46;
  *(v44 + 64) = v47;
  v48 = sub_1B7651FF0(v40, a2);
  *(v44 + 120) = v46;
  *(v44 + 96) = v48;
  v49 = sub_1B76520EC();
  *(v44 + 152) = v46;
  *(v44 + 128) = v49;
  v50 = sub_1B7800C18();

  [v27 setPropertiesToFetch_];

  sub_1B7205540(0, &qword_1EB994458, 0x1E695DF20);
  v51 = v144;
  v52 = sub_1B7801498();
  if (v51)
  {

    return;
  }

  v53 = v52;
  v54 = v131;
  v118 = v27;
  v117 = 0;
  if (v52 >> 62)
  {
    v112 = v52;
    v55 = sub_1B7801958();
    v53 = v112;
  }

  else
  {
    v55 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v146;
  if (v55)
  {
    if (v55 >= 1)
    {
      v57 = 0;
      v137 = v53 & 0xC000000000000001;
      v136 = 0x80000001B78793A0;
      v143 = (v54 + 48);
      v144 = (v54 + 56);
      v135 = (v54 + 32);
      v121 = (v126 + 56);
      v114 = (v126 + 48);
      v134 = (v54 + 8);
      v113 = (v54 + 16);
      *&v139 = v53;
      v138 = v55;
      while (1)
      {
        if (v137)
        {
          v59 = MEMORY[0x1B8CA5DC0](v57);
        }

        else
        {
          v59 = *(v53 + 8 * v57 + 32);
        }

        v60 = v59;
        v61 = v145;
        *&v149 = 0x444970756F7267;
        *(&v149 + 1) = 0xE700000000000000;
        v62 = [v59 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v62)
        {
          sub_1B7801848();
          swift_unknownObjectRelease();
        }

        else
        {
          v149 = 0u;
          v150 = 0u;
        }

        v151 = v149;
        v152 = v150;
        if (*(&v150 + 1))
        {
          v63 = swift_dynamicCast();
          v64 = *v144;
          (*v144)(v56, v63 ^ 1u, 1, v61);
        }

        else
        {
          sub_1B7205418(&v151, &qword_1EB98FCB0, &qword_1B7808CE0);
          v64 = *v144;
          (*v144)(v56, 1, 1, v61);
        }

        *&v151 = 0x7470697263736564;
        *(&v151 + 1) = 0xEB000000006E6F69;
        v65 = [v60 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v65)
        {
          sub_1B7801848();
          swift_unknownObjectRelease();
        }

        else
        {
          v149 = 0u;
          v150 = 0u;
        }

        v151 = v149;
        v152 = v150;
        if (*(&v150 + 1))
        {
          v66 = swift_dynamicCast();
          if (v66)
          {
            v67 = v147;
          }

          else
          {
            v67 = 0;
          }

          if (v66)
          {
            v68 = v148;
          }

          else
          {
            v68 = 0;
          }
        }

        else
        {
          sub_1B7205418(&v151, &qword_1EB98FCB0, &qword_1B7808CE0);
          v67 = 0;
          v68 = 0;
        }

        *&v149 = 25705;
        *(&v149 + 1) = 0xE200000000000000;
        v69 = [v60 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v69)
        {
          sub_1B7801848();
          swift_unknownObjectRelease();
        }

        else
        {
          v149 = 0u;
          v150 = 0u;
        }

        v151 = v149;
        v152 = v150;
        if (*(&v150 + 1))
        {
          v70 = v154;
          v71 = swift_dynamicCast() ^ 1;
          v72 = v70;
        }

        else
        {
          sub_1B7205418(&v151, &qword_1EB98FCB0, &qword_1B7808CE0);
          v72 = v154;
          v71 = 1;
        }

        v64(v72, v71, 1, v61);
        *&v149 = 0xD000000000000010;
        *(&v149 + 1) = v136;
        v73 = [v60 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        v74 = v141;
        if (v73)
        {
          sub_1B7801848();
          swift_unknownObjectRelease();
        }

        else
        {
          v149 = 0u;
          v150 = 0u;
        }

        v151 = v149;
        v152 = v150;
        if (*(&v150 + 1))
        {
          if (swift_dynamicCast())
          {
            TransactionCategory.init(rawValue:)(v147);
            v75 = v151;
            goto LABEL_45;
          }
        }

        else
        {
          sub_1B7205418(&v151, &qword_1EB98FCB0, &qword_1B7808CE0);
        }

        v75 = 13;
LABEL_45:
        LODWORD(v142) = v75;
        sub_1B7205588(v146, v74, &unk_1EB993A10, &qword_1B780B4A0);
        v76 = *v143;
        v77 = v145;
        if ((*v143)(v74, 1, v145) == 1)
        {

          v58 = v74;
        }

        else
        {
          v78 = v74;
          v79 = *v135;
          v80 = v140;
          (*v135)(v140, v78, v77);
          if (!v68)
          {
            (*v134)(v80, v77);

            goto LABEL_10;
          }

          v131 = v67;
          v81 = v68;
          v82 = v133;
          sub_1B7205588(v154, v133, &unk_1EB993A10, &qword_1B780B4A0);
          if (v76(v82, 1, v77) != 1)
          {
            v83 = v132;
            v79(v132, v82, v77);
            v84 = v77;
            if (v142 == 13)
            {

              v85 = *v134;
              (*v134)(v83, v77);
              v85(v140, v77);
            }

            else
            {
              v86 = swift_allocBox();
              v87 = *v121;
              (*v121)(v88, 1, 1, v129);
              v89 = v140;
              if (sub_1B72C3EFC(v140, *v130))
              {
                v116 = v86;
                v90 = v123;
                v115 = v81;
                sub_1B7239CB4(v89, v123);
                sub_1B7205418(v90, &unk_1EB993A10, &qword_1B780B4A0);
                v91 = v124;
                (*v113)(v124, v89, v84);
                v92 = v132;
                v93 = v91;
                v94 = v125;
                sub_1B7651BBC(v131, v115, v132, v142, v125);

                v87(v94, 0, 1, v129);
                sub_1B74E4BA8(v94, v93);

                v95 = *v134;
                (*v134)(v92, v84);
                v95(v140, v84);
              }

              else
              {
                v96 = *v128;
                if (*(*v128 + 16) && (v97 = sub_1B72454E8(v140), (v98 & 1) != 0))
                {
                  v99 = v122;
                  sub_1B7653458(*(v96 + 56) + *(v126 + 72) * v97, v122);
                  v100 = 0;
                }

                else
                {
                  v100 = 1;
                  v99 = v122;
                }

                v101 = v129;
                v87(v99, v100, 1, v129);
                if ((*v114)(v99, 1, v101))
                {

                  v102 = *v134;
                  (*v134)(v132, v84);
                  v102(v140, v84);
                  sub_1B7205418(v99, &qword_1EB9964C8, &qword_1B7836D70);
                }

                else
                {
                  sub_1B7205418(v99, &qword_1EB9964C8, &qword_1B7836D70);
                  if (qword_1EB98E960 != -1)
                  {
                    swift_once();
                  }

                  if (sub_1B72C60DC())
                  {

                    v103 = *v134;
                    (*v134)(v132, v84);
                    v103(v140, v84);
                  }

                  else
                  {
                    v104 = v119;
                    v105 = v132;
                    sub_1B7651BBC(v131, v81, v132, v142, v119);

                    v106 = v120;
                    sub_1B76535B8(v104, v120, type metadata accessor for TransactionGroup.StylingMetadata);
                    v107 = v128;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *&v151 = *v107;
                    v109 = v106;
                    v110 = v140;
                    sub_1B7393ADC(v109, v140, isUniquelyReferenced_nonNull_native);

                    *v107 = v151;
                    v111 = *v134;
                    (*v134)(v105, v84);
                    v111(v110, v84);
                  }
                }
              }
            }

            goto LABEL_10;
          }

          (*v134)(v140, v77);

          v58 = v82;
        }

        sub_1B7205418(v58, &unk_1EB993A10, &qword_1B780B4A0);
LABEL_10:
        ++v57;
        sub_1B7205418(v154, &unk_1EB993A10, &qword_1B780B4A0);
        v56 = v146;
        sub_1B7205418(v146, &unk_1EB993A10, &qword_1B780B4A0);
        v53 = v139;
        if (v138 == v57)
        {
          goto LABEL_66;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_66:
  }
}

uint64_t sub_1B7653458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionGroup.StylingMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76534BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9964C8, &qword_1B7836D70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7653548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7B0, &unk_1B7824CD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76535B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id ManagedAuthorizationSessionImporter.replaceCurrentSession(with:context:)(uint64_t a1, id a2)
{
  v5 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for BankConnectAuthorizationSession(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedAuthorizationSession();
  static ManagedAuthorizationSession.deleteAllSessions(in:)(a2);
  if (!v2)
  {
    sub_1B7618114(a1, v10, type metadata accessor for BankConnectAuthorizationSession);
    v11 = a2;
    a2 = sub_1B7617BA4(v10, v11);

    v12 = (a1 + *(v8 + 32));
    type metadata accessor for ManagedInstitution();
    v13 = static ManagedInstitution.existingInstitution(withInstitutionID:in:)(*v12, v12[1]);
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      _s10FinanceKit18ManagedInstitutionC6update_4with7contextyAC_AA0D0VSo22NSManagedObjectContextCtFZ_0(v15, v12, v11);
    }

    else
    {
      sub_1B7618114(v12, v7, type metadata accessor for Institution);
      v16 = v11;
      v15 = sub_1B74FA170(v7, v16);
    }

    sub_1B7688858(v12 + *(v5 + 60), v15, v11);

    [a2 setInstitutionObject_];
  }

  return a2;
}

uint64_t sub_1B76538CC(int *a1)
{
  v2 = *v1;
  v3 = a1[5];
  v4 = v1 + a1[6];
  v5 = *v4;
  v6 = *(v1 + a1[8]);
  v7 = v4[8];
  v8 = *__swift_project_boxed_opaque_existential_1((v1 + a1[7]), *(v1 + a1[7] + 24));

  return sub_1B76546B4(v1 + v3, v5, v7, v6, v8, v2);
}

void FinanceStore.transactionHistory(forAccountID:since:isMonitoring:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  static DeviceInfo.deviceType.getter(&v20);
  if (v20)
  {
    __break(1u);
  }

  else
  {
    v19 = v9;
    v10 = a1;
    v11 = *(v4 + 16);
    v12 = _s34TransactionHistoryIteratorProviderVMa(0);
    a4[3] = v12;
    a4[4] = sub_1B765466C(&qword_1EB99A740, _s34TransactionHistoryIteratorProviderVMa, byte_1B7854D04);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    v14 = v12[5];
    v15 = sub_1B77FFA18();
    v16 = *(v15 - 8);
    (*(v16 + 16))(boxed_opaque_existential_1 + v14, v10, v15);
    (*(v16 + 56))(boxed_opaque_existential_1 + v14, 0, 1, v15);
    v17 = (boxed_opaque_existential_1 + v12[7]);
    v17[3] = type metadata accessor for FinanceStore();
    v17[4] = &off_1F2F66960;
    *v17 = v4;
    *boxed_opaque_existential_1 = v11;
    v18 = boxed_opaque_existential_1 + v12[6];
    *v18 = v8;
    v18[8] = v19;
    *(boxed_opaque_existential_1 + v12[8]) = a3 & 1;

    sub_1B72274E8(v8, v19);
  }
}

uint64_t _s34TransactionHistoryIteratorProviderVMa(uint64_t a1)
{
  result = qword_1EB99A748;
  if (!qword_1EB99A748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7653B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7653B68, 0, 0);
}

uint64_t sub_1B7653B68()
{
  v7 = v0;
  v6[0] = 2;
  if (FinanceStore.isDataRestricted(for:)(v6))
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 2;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1B72BA7BC;
    v5 = v0[4];

    return sub_1B73A2BEC(v5);
  }
}

uint64_t FinanceStore.transactions(query:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7653CA4, 0, 0);
}

void sub_1B7653CA4()
{
  v14 = v0;
  static DeviceInfo.deviceType.getter(v13);
  if (v13[0])
  {
    __break(1u);
  }

  else
  {
    v1 = v0[3];
    v2 = type metadata accessor for TransactionQuery(0);
    v3 = v1 + *(v2 + 28);
    if ((*(v3 + 8) & 1) != 0 || (*v3 & 0x8000000000000000) == 0)
    {
      v4 = (v1 + *(v2 + 24));
      if (v4[1])
      {
        goto LABEL_7;
      }

      v5 = *v4;
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (!v5)
        {
          v10 = v0[1];
          v9 = MEMORY[0x1E69E7CC0];

          goto LABEL_9;
        }

LABEL_7:
        v6 = v0[4];
        v7 = swift_task_alloc();
        v0[5] = v7;
        *(v7 + 16) = v6;
        *(v7 + 24) = v1;
        v8 = swift_task_alloc();
        v0[6] = v8;
        *v8 = v0;
        v8[1] = sub_1B7653E74;
        v9 = &unk_1B7854CC0;
        v10 = sub_1B72B98D8;

LABEL_9:
        v10(v9);
        return;
      }
    }

    sub_1B7201CA4();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
    v12 = v0[1];

    v12();
  }
}

uint64_t sub_1B7653E74()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7653FCC, 0, 0);
}

uint64_t sub_1B7653FCC()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110, &qword_1B780C5F0);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 64) == 4)
  {
    return sub_1B7801C88();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B76540E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7201BB0;

  return sub_1B7653B44(a1, v5, v4);
}

void FinanceStore.transactionHistory(since:isMonitoring:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  static DeviceInfo.deviceType.getter(&v15);
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 16);
    v9 = _s34TransactionHistoryIteratorProviderVMa(0);
    a3[3] = v9;
    a3[4] = sub_1B765466C(&qword_1EB99A740, _s34TransactionHistoryIteratorProviderVMa, byte_1B7854D04);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    v11 = v9[5];
    v12 = sub_1B77FFA18();
    (*(*(v12 - 8) + 56))(boxed_opaque_existential_1 + v11, 1, 1, v12);
    v13 = (boxed_opaque_existential_1 + v9[7]);
    v13[3] = type metadata accessor for FinanceStore();
    v13[4] = &off_1F2F66960;
    *v13 = v3;
    *boxed_opaque_existential_1 = v8;
    v14 = boxed_opaque_existential_1 + v9[6];
    *v14 = v6;
    v14[8] = v7;
    *(boxed_opaque_existential_1 + v9[8]) = a2 & 1;

    sub_1B72274E8(v6, v7);
  }
}

uint64_t FinanceStore.privateTransactions(query:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = *(a1 + 1);
  *(v2 + 57) = *(a1 + 24);
  *(v2 + 96) = a1[4];
  *(v2 + 58) = *(a1 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1B7654338, 0, 0);
}

void sub_1B7654338()
{
  v9 = v0;
  static DeviceInfo.deviceType.getter(&v7);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8[0] = 2;
    if (FinanceStore.isDataRestricted(for:)(v8))
    {
      sub_1B7201CA4();
      swift_allocError();
      *v1 = 2;
      swift_willThrow();
      v2 = *(v0 + 8);

      v2();
    }

    else
    {
      v3 = *(v0 + 58);
      v4 = *(v0 + 96);
      v5 = *(v0 + 57);
      *(v0 + 16) = *(v0 + 72);
      *(v0 + 24) = *(v0 + 80);
      *(v0 + 40) = v5;
      *(v0 + 48) = v4;
      *(v0 + 56) = v3;
      v6 = swift_task_alloc();
      *(v0 + 104) = v6;
      *v6 = v0;
      v6[1] = sub_1B72BAE3C;

      sub_1B73A3F4C((v0 + 16));
    }
  }
}

void sub_1B76544B4(uint64_t a1)
{
  type metadata accessor for FinanceDataStore();
  if (v1 <= 0x3F)
  {
    sub_1B73F170C(319);
    if (v2 <= 0x3F)
    {
      sub_1B7654570();
      if (v3 <= 0x3F)
      {
        sub_1B76545C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7654570()
{
  if (!qword_1EB99A758)
  {
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB99A758);
    }
  }
}

unint64_t sub_1B76545C0()
{
  result = qword_1EB99A760;
  if (!qword_1EB99A760)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB99A760);
  }

  return result;
}

uint64_t sub_1B765466C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B76546B4(uint64_t a1, unint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(v8) = a4;
  LOBYTE(v9) = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10, &qword_1B780B4A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v53 - v13;
  v15 = type metadata accessor for FinanceStore();
  v16 = &off_1F2F66960;
  v64[3] = v15;
  v64[4] = &off_1F2F66960;
  v64[0] = a5;
  v57 = v14;
  sub_1B7227AFC(a1, v14);
  sub_1B719B06C(v64, v62);

  v55 = sub_1B73ADED8();
  v17 = *(a6 + 16);
  os_unfair_lock_lock((v17 + 24));
  if (*(v17 + 16))
  {
    v56 = *(v17 + 16);
  }

  else
  {
    v18 = sub_1B73ADA9C();
    *(v17 + 16) = v18;
    v56 = v18;
  }

  os_unfair_lock_unlock((v17 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A770, &unk_1B7854D20);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  *(v19 + qword_1EDB08720) = 0;
  v20 = v19 + qword_1EDB086F0;
  *v20 = 0;
  *(v20 + 8) = -1;
  v21 = qword_1EDB08700;
  if (qword_1EDAF6588 != -1)
  {
LABEL_26:
    swift_once();
  }

  v22 = sub_1B78000B8();
  v23 = __swift_project_value_buffer(v22, qword_1EDAF6590);
  (*(*(v22 - 8) + 16))(v19 + v21, v23, v22);
  sub_1B7227AFC(v57, v19 + qword_1EDB086F8);
  *(v19 + 32) = v8 & 1;
  v24 = v56;
  *(v19 + qword_1EDB08748) = v56;
  v25 = (v19 + qword_1EDB08740);
  *v25 = sub_1B7654D58;
  v25[1] = 0;
  v26 = *v20;
  LOBYTE(v8) = *(v20 + 8);

  sub_1B72274E8(a2, v9);
  *v20 = a2;
  *(v20 + 8) = v9;
  sub_1B7201CF8(v26, v8);
  v27 = *__swift_project_boxed_opaque_existential_1(v62, v63);
  v60 = v15;
  v61 = v16;
  v59[0] = v27;
  sub_1B719B06C(v59, v58);
  v28 = swift_allocObject();
  sub_1B71E4C44(v58, v28 + 16);

  __swift_destroy_boxed_opaque_existential_1(v59);
  v29 = (v19 + qword_1EDB08708);
  *v29 = &unk_1B7810520;
  v29[1] = v28;
  v30 = *__swift_project_boxed_opaque_existential_1(v62, v63);
  v60 = v15;
  v61 = v16;
  v59[0] = v30;
  sub_1B719B06C(v59, v58);
  v31 = swift_allocObject();
  sub_1B71E4C44(v58, v31 + 16);

  __swift_destroy_boxed_opaque_existential_1(v59);
  v32 = (v19 + qword_1EDB08718);
  *v32 = &unk_1B7824A70;
  v32[1] = v31;
  *(v19 + qword_1EDB08710) = 0;
  v33 = [objc_opt_self() defaultCenter];
  sub_1B78013F8();

  v54 = v19;
  sub_1B78013C8();
  v34 = [*(v24 + 2) persistentStoreCoordinator];
  v35 = [v34 persistentStores];

  sub_1B72BB97C();
  v15 = sub_1B7800C38();

  if (!(v15 >> 62))
  {
    v9 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_28:

    v44 = 0;
    v46 = 0;
    v43 = v54;
    goto LABEL_29;
  }

  v9 = sub_1B7801958();
  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_7:
  a2 = 0;
  v20 = v15 & 0xC000000000000001;
  v21 = v15 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v20)
    {
      v36 = MEMORY[0x1B8CA5DC0](a2, v15);
    }

    else
    {
      if (a2 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v36 = *(v15 + 8 * a2 + 32);
    }

    v19 = v36;
    v8 = (a2 + 1);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v37 = [v36 configurationName];
    v38 = sub_1B7800868();
    v40 = v39;

    if (v38 == 0x6C61636F4CLL && v40 == 0xE500000000000000)
    {
      break;
    }

    v16 = sub_1B78020F8();

    if (v16)
    {
      goto LABEL_21;
    }

    ++a2;
    if (v8 == v9)
    {
      goto LABEL_28;
    }
  }

LABEL_21:

  v42 = [v19 identifier];

  v43 = v54;
  if (v42)
  {
    v44 = sub_1B7800868();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

LABEL_29:
  v47 = (v43 + qword_1EDB08730);
  *v47 = v44;
  v47[1] = v46;
  v48 = v55;
  *(v43 + qword_1EDB08728) = v55;
  v49 = qword_1EDAFA648;
  v50 = v48;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = _os_activity_create(&dword_1B7198000, "FinancialDataAsyncIterator", qword_1EDAFA650, OS_ACTIVITY_FLAG_DETACHED);

  sub_1B72BB9C8(v57);
  __swift_destroy_boxed_opaque_existential_1(v62);
  *(v43 + qword_1EDB08738) = v51;
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v43;
}

uint64_t OrderedDateFormatter.format(_:now:)(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v4 = sub_1B77FF378();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v96 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1B77FFCF8();
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FFC88();
  v90 = *(v7 - 8);
  v91 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FFAF8();
  v87 = *(v9 - 8);
  v88 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D700, &qword_1B780F110);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v86 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B18, &unk_1B7817CD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v82 = &v72 - v14;
  v15 = sub_1B77FF7D8();
  v83 = *(v15 - 8);
  v84 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B77FFC68();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WeekdayCustomFormatter(0);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B77FED28();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for FormatterConfiguration(0);
  v26 = *(v97 + 20);
  if (sub_1B77FFB38())
  {
    if (qword_1EDAF93A8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

  if (sub_1B77FFB98())
  {
    if (qword_1EDAF93A8 == -1)
    {
LABEL_6:
      v27 = qword_1EDAF93B0;
      v28 = sub_1B7800838();
      v29 = sub_1B7800838();
      v30 = sub_1B7800838();
      v31 = [v27 localizedStringForKey:v28 value:v29 table:v30];

      v32 = sub_1B7800868();
      return v32;
    }

LABEL_29:
    swift_once();
    goto LABEL_6;
  }

  v73 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99C000, &qword_1B78100F0);
  v34 = *(v18 + 80);
  v78 = a1;
  v79 = v2;
  v35 = (v34 + 32) & ~v34;
  v36 = swift_allocObject();
  v72 = xmmword_1B7807CD0;
  *(v36 + 16) = xmmword_1B7807CD0;
  v37 = *MEMORY[0x1E6969A48];
  v38 = *(v18 + 104);
  v75 = v18 + 104;
  v74 = v38;
  v38((v36 + v35), v37, v17);
  sub_1B7545E58(v36);
  swift_setDeallocating();
  v39 = v23;
  v40 = *(v18 + 8);
  v76 = v17;
  v77 = v18 + 8;
  v40(v36 + v35, v17);
  swift_deallocClassInstance();
  sub_1B77FFB58();

  v41 = sub_1B77FEC08();
  v43 = v42;
  (*(v39 + 8))(v25, v22);
  if ((v43 & 1) != 0 || (v41 + 1) < 0xFFFFFFFFFFFFFFFALL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
    v57 = swift_allocObject();
    *(v57 + 16) = v72;
    v58 = v82;
    sub_1B77FF618();
    v59 = sub_1B77FF648();
    (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
    v60 = sub_1B77FF628();
    (*(*(v60 - 8) + 56))(v86, 1, 1, v60);
    v61 = v79;
    (*(v87 + 16))(v89, v79, v88);
    (*(v90 + 16))(v92, v61 + v26, v91);
    (*(v93 + 16))(v94, v61 + *(v97 + 24), v95);
    sub_1B77FF368();
    v62 = v81;
    sub_1B77FF668();
    v63 = sub_1B77FF788();
    v65 = v64;
    (*(v83 + 8))(v62, v84);
    *(v57 + 56) = MEMORY[0x1E69E6158];
    *(v57 + 64) = sub_1B721FF04();
    *(v57 + 32) = v63;
    *(v57 + 40) = v65;
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v66 = qword_1EDAF93B0;
    v67 = sub_1B7800838();
    v68 = sub_1B7800838();
    v69 = sub_1B7800838();
    v70 = [v66 localizedStringForKey:v67 value:v68 table:v69];

    sub_1B7800868();
    v71 = sub_1B78008A8();

    return v71;
  }

  v44 = v85;
  sub_1B7519EB8(v79, v85);
  v45 = v73;
  v46 = (v44 + v73[5]);
  *v46 = sub_1B76559F8;
  v46[1] = 0;
  v47 = (v44 + v45[6]);
  *v47 = sub_1B7655AF8;
  v47[1] = 0;
  v48 = (v44 + v45[7]);
  *v48 = sub_1B7655BF8;
  v48[1] = 0;
  v49 = (v44 + v45[8]);
  *v49 = sub_1B7655CF8;
  v49[1] = 0;
  v50 = (v44 + v45[9]);
  *v50 = sub_1B7655DF8;
  v50[1] = 0;
  v51 = (v44 + v45[10]);
  *v51 = sub_1B7655EF8;
  v51[1] = 0;
  v52 = (v44 + v45[11]);
  *v52 = sub_1B7655FF8;
  v52[1] = 0;
  v53 = v80;
  v54 = v76;
  v74(v80, *MEMORY[0x1E6969AB0], v76);
  v55 = sub_1B77FFC78();
  v40(v53, v54);
  if (v55 <= 3)
  {
    switch(v55)
    {
      case 1:
        v56 = sub_1B76559F8();
        goto LABEL_27;
      case 2:
        v56 = sub_1B7655AF8();
LABEL_27:
        v71 = v56;
        sub_1B7656EDC(v44);
        return v71;
      case 3:
        v56 = sub_1B7655BF8();
        goto LABEL_27;
    }
  }

  else
  {
    if (v55 <= 5)
    {
      if (v55 == 4)
      {
        v56 = sub_1B7655CF8();
      }

      else
      {
        v56 = sub_1B7655DF8();
      }

      goto LABEL_27;
    }

    if (v55 == 6)
    {
      v56 = sub_1B7655EF8();
      goto LABEL_27;
    }

    if (v55 == 7)
    {
      v56 = sub_1B7655FF8();
      goto LABEL_27;
    }
  }

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

uint64_t sub_1B76559F8()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

uint64_t sub_1B7655AF8()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

uint64_t sub_1B7655BF8()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

uint64_t sub_1B7655CF8()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

uint64_t sub_1B7655DF8()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

uint64_t sub_1B7655EF8()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

uint64_t sub_1B7655FF8()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

BOOL static OrderedDateFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x1B8CA3D90]())
  {
    v4 = type metadata accessor for FormatterConfiguration(0);
    if (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) != 0 && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B765616C(uint64_t a1)
{
  v2 = sub_1B7656F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76561A8(uint64_t a1)
{
  v2 = sub_1B7656F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OrderedDateFormatter.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A778, &qword_1B7854D30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7656F38();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B76571B8(&qword_1EB990850, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t OrderedDateFormatter.hash(into:)(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B76571B8(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76571B8(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76571B8(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1B7800768();
}

uint64_t OrderedDateFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76571B8(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76571B8(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76571B8(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t OrderedDateFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for FormatterConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A788, &qword_1B7854D38);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for OrderedDateFormatter(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7656F38();
  sub_1B78023C8();
  if (!v2)
  {
    v12 = v15;
    sub_1B76571B8(&qword_1EB990870, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
    v13 = v17;
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B7656FD8(v13, v11, type metadata accessor for FormatterConfiguration);
    sub_1B7656FD8(v11, v12, type metadata accessor for OrderedDateFormatter);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7656860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = OrderedDateFormatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B7656888@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = OrderedDateFormatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B7656988(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A778, &qword_1B7854D30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7656F38();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B76571B8(&qword_1EB990850, type metadata accessor for FormatterConfiguration, protocol conformance descriptor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B7656B00()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76571B8(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76571B8(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76571B8(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B7656C50(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B76571B8(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76571B8(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76571B8(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1B7800768();
}

uint64_t sub_1B7656D90(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B76571B8(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B76571B8(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B76571B8(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B7656EDC(uint64_t a1)
{
  v2 = type metadata accessor for WeekdayCustomFormatter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7656F38()
{
  result = qword_1EB99A780;
  if (!qword_1EB99A780)
  {
    result = swift_getWitnessTable(aQrd7, &type metadata for OrderedDateFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A780);
  }

  return result;
}

uint64_t type metadata accessor for OrderedDateFormatter(uint64_t a1)
{
  result = qword_1EB99A7B8;
  if (!qword_1EB99A7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7656FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7657040(uint64_t a1)
{
  result = sub_1B76571B8(&qword_1EB99A790, type metadata accessor for OrderedDateFormatter, protocol conformance descriptor for OrderedDateFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B76571B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B765723C()
{
  result = qword_1EB99A7C8;
  if (!qword_1EB99A7C8)
  {
    result = swift_getWitnessTable(aD7_6, &type metadata for OrderedDateFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A7C8);
  }

  return result;
}

unint64_t sub_1B7657294()
{
  result = qword_1EB99A7D0;
  if (!qword_1EB99A7D0)
  {
    result = swift_getWitnessTable(aAld7p, &type metadata for OrderedDateFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A7D0);
  }

  return result;
}

unint64_t sub_1B76572EC()
{
  result = qword_1EB99A7D8;
  if (!qword_1EB99A7D8)
  {
    result = swift_getWitnessTable(aYhd7, &type metadata for OrderedDateFormatter.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A7D8);
  }

  return result;
}

uint64_t sub_1B7657340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectConsent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1B76574F4(uint64_t (*a1)(void))
{
  a1(0);

  return result;
}

void sub_1B7657548(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);

  *(v2 + v4) = a1;
}

uint64_t sub_1B76575EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  sub_1B75E79FC(a1, a4);
  result = a3(0);
  *(a4 + *(result + 20)) = a2;
  return result;
}

void sub_1B765765C(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v15 = a2;
    v16 = MEMORY[0x1E69E7CC0];
    sub_1B71FDAC8(0, v5, 0);
    v6 = v16;
    v7 = (v4 + 56);
    do
    {
      v9 = *(v7 - 3);
      v8 = *(v7 - 2);
      v11 = *(v7 - 1);
      v10 = *v7;
      v13 = *(v16 + 16);
      v12 = *(v16 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_1B71FDAC8((v12 > 1), v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = (v16 + 32 * v13);
      v14[4] = v9;
      v14[5] = v8;
      v14[6] = v11;
      v14[7] = v10;
      v7 += 4;
      --v5;
    }

    while (v5);
    a2 = v15;
  }

  *a2 = v6;
}

void *sub_1B7657784()
{
  v1 = sub_1B77FE968();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60, &qword_1B780CC30);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B7807CD0;
  v3 = type metadata accessor for BankConnectConsent(0);
  v4 = v3[6];
  v5 = (v0 + v3[5]);
  v6 = *v5;
  v30 = v5[1];
  v31 = v6;
  v7 = type metadata accessor for RawBankConnectData.Consent(0);
  v37 = v7;
  v38 = sub_1B7657D88(&qword_1EB990658, type metadata accessor for RawBankConnectData.Consent, protocol conformance descriptor for RawBankConnectData.Consent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  v9 = v7[5];
  v10 = sub_1B77FF988();
  v11 = *(*(v10 - 8) + 16);
  v11(boxed_opaque_existential_1 + v9, v0 + v4, v10);
  v11(boxed_opaque_existential_1 + v7[6], v0 + v3[7], v10);
  v12 = *(v0 + v3[9]);
  v13 = (v0 + v3[10]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v30;
  *boxed_opaque_existential_1 = v31;
  boxed_opaque_existential_1[1] = v16;
  *(boxed_opaque_existential_1 + v7[7]) = v12;
  v17 = (boxed_opaque_existential_1 + v7[8]);
  *v17 = v14;
  v17[1] = v15;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  sub_1B77FE9B8();
  swift_allocObject();

  sub_1B77FE9A8();
  if (qword_1EB98E9C0 != -1)
  {
    swift_once();
  }

  v18 = v34;
  v19 = __swift_project_value_buffer(v34, qword_1EB991BE8);
  (*(v33 + 16))(v32, v19, v18);
  sub_1B77FE988();
  v20 = v35;
  v21 = sub_1B77FE998();
  v23 = v22;

  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
    v24 = v39;
    *(v39 + 16) = 0;
  }

  else
  {
    v25 = sub_1B77FF5A8();
    v27 = v26;
    sub_1B720A388(v21, v23);
    v24 = v39;
    *(v39 + 32) = 0x746E65736E6F43;
    v24[5] = 0xE700000000000000;
    v24[6] = v25;
    v24[7] = v27;
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return v24;
}

void sub_1B7657AEC(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 statusCode];
    if (v5 != 204)
    {
      v6 = v5;
      type metadata accessor for FinanceNetworkError(0);
      sub_1B7657D88(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
      swift_allocError();
      *v7 = v6;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError(0);
    sub_1B7657D88(&qword_1EB994C00, type metadata accessor for FinanceNetworkError, protocol conformance descriptor for FinanceNetworkError);
    swift_allocError();
    v9 = v8;
    v10 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v9 = v10;
    v9[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t BankConnectWebServicePassDetails.fpanId.getter()
{
  v1 = *v0;

  return v1;
}

void BankConnectWebServicePassDetails.fpanId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t BankConnectWebServicePassDetails.accountIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void BankConnectWebServicePassDetails.accountIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

FinanceKit::BankConnectWebServicePassDetails __swiftcall BankConnectWebServicePassDetails.init(fpanId:accountIdentifier:)(Swift::String fpanId, Swift::String accountIdentifier)
{
  *v2 = fpanId;
  v2[1] = accountIdentifier;
  result.accountIdentifier = accountIdentifier;
  result.fpanId = fpanId;
  return result;
}

uint64_t sub_1B7657D88(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B7657E18()
{
  if (!qword_1EB99A7F0)
  {
    v0 = sub_1B7800CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB99A7F0);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BankConnectConsent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BankConnectConsent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1B7658014(uint64_t a1)
{
  type metadata accessor for BankConnectConsent(319);
  if (v1 <= 0x3F)
  {
    sub_1B7657E18();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void InternalAccount.Preferences.init(_:)(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v4 = [a1 userSuppressedNotifications];

  *a2 = v4;
}

void sub_1B76581CC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001B7888CE0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1B7658260(uint64_t a1)
{
  v2 = sub_1B7658410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B765829C(uint64_t a1)
{
  v2 = sub_1B7658410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InternalAccount.Preferences.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A810, &qword_1B7855128);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7658410();
  sub_1B78023F8();
  sub_1B7801F88();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B7658410()
{
  result = qword_1EB99A818;
  if (!qword_1EB99A818)
  {
    result = swift_getWitnessTable(byte_1B7855300, &_s11PreferencesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99A818);
  }

  return result;
}

uint64_t InternalAccount.Preferences.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A820, &qword_1B7855130);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7658410();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801E08();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B76585D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A810, &qword_1B7855128);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7658410();
  sub_1B78023F8();
  sub_1B7801F88();
  return (*(v3 + 8))(v5, v2);
}

unint64_t static ManagedAccountPreferences.mappedKeyPaths.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8, &qword_1B7809FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001B7888CE0;
  v1 = sub_1B7202424(inited);
  swift_setDeallocating();
  sub_1B7287620(inited + 32);
  return v1;
}

unint64_t sub_1B7658834()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8, &qword_1B7809FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001B7888CE0;
  v1 = sub_1B7202424(inited);
  swift_setDeallocating();
  sub_1B7287620(inited + 32);
  return v1;
}

double static ManagedAccountPreferences.attributeNamesByKeyPath.getter()
{
  if (qword_1EB98EB28 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_1B765894C()
{
  if (qword_1EB98EB28 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_1B76589CC()
{
  result = qword_1EB99A828;
  if (!qword_1EB99A828)
  {
    result = swift_getWitnessTable(aQD7_0, &_s11PreferencesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99A828);
  }

  return result;
}

unint64_t sub_1B7658A24()
{
  result = qword_1EB99A830;
  if (!qword_1EB99A830)
  {
    result = swift_getWitnessTable(byte_1B7855248, &_s11PreferencesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99A830);
  }

  return result;
}

unint64_t sub_1B7658A7C()
{
  result = qword_1EB99A838;
  if (!qword_1EB99A838)
  {
    result = swift_getWitnessTable(byte_1B7855270, &_s11PreferencesV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB99A838);
  }

  return result;
}

void FinanceStore.representativeTransactionForGroup(withID:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static DeviceInfo.deviceType.getter(&v5);
  if (v5)
  {
    sub_1B7201CA4();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
  }

  else
  {
    sub_1B76516C0(a1, a2);
  }
}

unint64_t FinanceStore.stylingMetadata(forGroupIDs:)(uint64_t a1)
{
  static DeviceInfo.deviceType.getter(&v4);
  if (!v4)
  {
    return sub_1B76519A4(a1);
  }

  sub_1B7201CA4();
  swift_allocError();
  *v2 = 3;
  return swift_willThrow();
}

void sub_1B7658BF4(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B77FF8B8();
  [v2 setLastUpdatedAt_];
}

id static ManagedInternalAccountBalance.fetchRequest()()
{
  v3.receiver = swift_getObjCClassFromMetadata();
  v3.super_class = &OBJC_METACLASS____TtC10FinanceKit29ManagedInternalAccountBalance;
  v0 = objc_msgSendSuper2(&v3, sel_fetchRequest);
  v1 = sub_1B7800C18();
  [v0 setRelationshipKeyPathsForPrefetching_];

  return v0;
}

id static ManagedInternalAccountBalance.fetchRequest(for:)(__int128 *a1)
{
  v9 = *a1;
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit29ManagedInternalAccountBalance;
  v3 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  v4 = sub_1B7800C18();
  [v3 setRelationshipKeyPathsForPrefetching_];

  v10 = v9;
  v11 = v1;
  v12 = v2;
  v5 = _s10FinanceKit29ManagedInternalAccountBalanceC012predicateForE8Balances3forSo11NSPredicateCAA014FullyQualifiedE10IdentifierV_tFZ_0(&v10);
  [v3 setPredicate_];

  [v3 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAF6470, 0x1E696AEB0);
  swift_getKeyPath();
  *(v6 + 32) = sub_1B7801288();
  v7 = sub_1B7800C18();

  [v3 setSortDescriptors_];

  return v3;
}

unint64_t static ManagedInternalAccountBalance.existingAccountBalance(withID:in:)()
{
  v1 = v0;
  v11.receiver = swift_getObjCClassFromMetadata();
  v11.super_class = &OBJC_METACLASS____TtC10FinanceKit29ManagedInternalAccountBalance;
  v2 = objc_msgSendSuper2(&v11, sel_fetchRequest);
  v3 = sub_1B7800C18();
  [v2 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  v5 = sub_1B77FF9B8();
  *(v4 + 56) = sub_1B7205540(0, &qword_1EB9905A8, 0x1E696AFB0);
  *(v4 + 64) = sub_1B726E47C();
  *(v4 + 32) = v5;
  v6 = sub_1B78010E8();
  [v2 setPredicate_];

  result = sub_1B7801498();
  if (v0)
  {

    return v1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v9 = result;
  v10 = sub_1B7801958();
  result = v9;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_8:
    v1 = v8;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedInternalAccountBalance.predicateForAccountBalance(withID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9905A8, 0x1E696AFB0);
  *(v0 + 64) = sub_1B726E47C();
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

unint64_t static ManagedInternalAccountBalance.latestAccountBalance(forAccountID:in:)()
{
  v1 = v0;
  v16.receiver = swift_getObjCClassFromMetadata();
  v16.super_class = &OBJC_METACLASS____TtC10FinanceKit29ManagedInternalAccountBalance;
  v2 = objc_msgSendSuper2(&v16, sel_fetchRequest);
  v3 = sub_1B7800C18();
  [v2 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  v5 = sub_1B77FF9B8();
  *(v4 + 56) = sub_1B7205540(0, &qword_1EB9905A8, 0x1E696AFB0);
  *(v4 + 64) = sub_1B726E47C();
  *(v4 + 32) = v5;
  v6 = sub_1B78010E8();
  [v2 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B780B190;
  v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v9 = sub_1B7800838();
  v10 = [v8 initWithKey:v9 ascending:0];

  *(v7 + 32) = v10;
  sub_1B7205540(0, &qword_1EDAF6470, 0x1E696AEB0);
  v11 = sub_1B7800C18();

  [v2 setSortDescriptors_];

  [v2 setFetchLimit_];
  [v2 setReturnsObjectsAsFaults_];
  result = sub_1B7801498();
  if (v0)
  {

    return v1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v14 = result;
  v15 = sub_1B7801958();
  result = v14;
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(result + 32);
LABEL_8:
    v1 = v13;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedInternalAccountBalance.predicateForAccountBalances(forAccountID:)()
{
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  v1 = sub_1B77FF9B8();
  *(v0 + 56) = sub_1B7205540(0, &qword_1EB9905A8, 0x1E696AFB0);
  *(v0 + 64) = sub_1B726E47C();
  *(v0 + 32) = v1;
  return sub_1B78010E8();
}

void static ManagedInternalAccountBalance.deleteAccountBalance(withID:in:)(uint64_t a1, void *a2)
{
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC10FinanceKit29ManagedInternalAccountBalance;
  v4 = objc_msgSendSuper2(&v15, sel_fetchRequest);
  v5 = sub_1B7800C18();
  [v4 setRelationshipKeyPathsForPrefetching_];

  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B7807CD0;
  v7 = sub_1B77FF9B8();
  *(v6 + 56) = sub_1B7205540(0, &qword_1EB9905A8, 0x1E696AFB0);
  *(v6 + 64) = sub_1B726E47C();
  *(v6 + 32) = v7;
  v8 = sub_1B78010E8();
  [v4 setPredicate_];

  [v4 setIncludesPropertyValues_];
  v9 = sub_1B7801498();
  if (v2)
  {
    goto LABEL_12;
  }

  if (v9 >> 62)
  {
    v13 = v9;
    if (sub_1B7801958() > 1)
    {
      goto LABEL_15;
    }

    v14 = sub_1B7801958();
    v9 = v13;
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 > 1)
  {
    goto LABEL_15;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);
LABEL_8:
    v12 = v11;

    [a2 deleteObject_];

    v4 = v12;
LABEL_12:

    return;
  }

  __break(1u);
LABEL_15:
  sub_1B7801C88();
  __break(1u);
}

id _s10FinanceKit29ManagedInternalAccountBalanceC012predicateForE8Balances3forSo11NSPredicateCAA014FullyQualifiedE10IdentifierV_tFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[3];
  v12 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B721FF04();
  *(v5 + 64) = v7;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;

  *(v4 + 32) = sub_1B78010E8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = v12;
  *(v8 + 40) = v3;
  *(v4 + 40) = sub_1B78010E8();
  v9 = sub_1B7800C18();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v10;
}

id static MapsInsightsServiceConfiguration.serviceInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1B74BCDA8(v0);
  return v0;
}

id sub_1B7659A28()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1B74BCDA8(v0);
  return v0;
}

uint64_t MapsBrand.resultProviderIdentifier.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t MapsBrand.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void MapsBrand.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MapsBrand.phoneNumber.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void MapsBrand.phoneNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t type metadata accessor for MapsBrand(uint64_t a1)
{
  result = qword_1EB99A858;
  if (!qword_1EB99A858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MapsBrand.heroImageAttributionName.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsBrand(0) + 40));

  return v1;
}

void MapsBrand.heroImageAttributionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapsBrand(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t MapsBrand.mapsCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MapsBrand(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t MapsBrand.mapsCategory.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MapsBrand(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t MapsBrand.mapsCategoryIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MapsBrand(0) + 48));

  return v1;
}

void MapsBrand.mapsCategoryIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapsBrand(0) + 48));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t MapsBrand.encodedStylingInfo.getter()
{
  v1 = v0 + *(type metadata accessor for MapsBrand(0) + 52);
  v2 = *v1;
  sub_1B7228588(*v1, *(v1 + 8));
  return v2;
}

uint64_t MapsBrand.encodedStylingInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MapsBrand(0) + 52);
  result = sub_1B72380B8(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t MapsBrand.init(muid:resultProviderIdentifier:name:phoneNumber:url:heroImageURL:heroImageAttributionName:mapsCategory:mapsCategoryIdentifier:encodedStylingInfo:businessChatURL:lastProcessedDate:logoURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v41 = *a12;
  v20 = type metadata accessor for MapsBrand(0);
  v21 = v20[8];
  v34 = v21;
  v22 = sub_1B77FF4F8();
  v23 = *(*(v22 - 8) + 56);
  v23(a9 + v21, 1, 1, v22);
  v33 = v20[9];
  v23(a9 + v33, 1, 1, v22);
  v24 = v20[11];
  v25 = (a9 + v20[10]);
  *(a9 + v24) = 8;
  v26 = (a9 + v20[12]);
  v27 = a9 + v20[13];
  *v27 = xmmword_1B7810080;
  v32 = v20[14];
  v23(a9 + v32, 1, 1, v22);
  v28 = v20[15];
  v29 = sub_1B77FF988();
  (*(*(v29 - 8) + 56))(a9 + v28, 1, 1, v29);
  v30 = v20[16];
  v23(a9 + v30, 1, 1, v22);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 12) = BYTE4(a2) & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  sub_1B7213740(a7, a9 + v34, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7213740(a8, a9 + v33, &unk_1EB994C70, &qword_1B7809800);
  *v25 = a10;
  v25[1] = a11;
  *(a9 + v24) = v41;
  *v26 = a13;
  v26[1] = a14;
  sub_1B72380B8(*v27, *(v27 + 8));
  *v27 = a15;
  *(v27 + 8) = a16;
  sub_1B7213740(a17, a9 + v32, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7213740(a18, a9 + v28, &qword_1EB98EBD0, &unk_1B7809780);
  return sub_1B7213740(a19, a9 + v30, &unk_1EB994C70, &qword_1B7809800);
}

unint64_t sub_1B765A668(char a1)
{
  result = 1684632941;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x6D754E656E6F6870;
      break;
    case 4:
      result = 7107189;
      break;
    case 5:
      result = 0x67616D496F726568;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x657461437370616DLL;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x7373656E69737562;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x4C52556F676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B765A7EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B765DAB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B765A814(uint64_t a1)
{
  v2 = sub_1B765D730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B765A850(uint64_t a1)
{
  v2 = sub_1B765D730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MapsBrand.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A840, &qword_1B78553E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B765D730();
  sub_1B78023F8();
  LOBYTE(v15) = 0;
  sub_1B7802008();
  if (!v2)
  {
    v9 = *(v3 + 12);
    LOBYTE(v15) = 1;
    v17 = v9;
    sub_1B7801F58();
    LOBYTE(v15) = 2;
    sub_1B7801EF8();
    LOBYTE(v15) = 3;
    sub_1B7801EF8();
    v10 = type metadata accessor for MapsBrand(0);
    LOBYTE(v15) = 4;
    sub_1B77FF4F8();
    sub_1B765DEDC(&qword_1EB98F700, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B7801F38();
    LOBYTE(v15) = 5;
    sub_1B7801F38();
    LOBYTE(v15) = 6;
    sub_1B7801EF8();
    LOBYTE(v15) = *(v3 + v10[11]);
    v17 = 7;
    sub_1B75D7724();
    sub_1B7801F38();
    LOBYTE(v15) = 8;
    sub_1B7801EF8();
    v11 = (v3 + v10[13]);
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v17 = 9;
    sub_1B7228588(v15, v12);
    sub_1B727A60C();
    sub_1B7801F38();
    sub_1B72380B8(v15, v16);
    LOBYTE(v15) = 10;
    sub_1B7801F38();
    v14[1] = v10[15];
    LOBYTE(v15) = 11;
    sub_1B77FF988();
    sub_1B765DEDC(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B7801F38();
    LOBYTE(v15) = 12;
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MapsBrand.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v66 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v68 = v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v69 = v62 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v70 = v62 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v73 = v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A850, &qword_1B78553F0);
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v62 - v13;
  v15 = type metadata accessor for MapsBrand(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v16 + 32);
  v20 = sub_1B77FF4F8();
  v21 = *(*(v20 - 8) + 56);
  v79 = v19;
  (v21)(v18 + v19, 1, 1, v20);
  v81 = v15[9];
  (v21)(v18 + v81, 1, 1, v20);
  v22 = v15[11];
  *(v18 + v22) = 8;
  v23 = v18 + v15[13];
  *v23 = xmmword_1B7810080;
  v77 = v15[14];
  v78 = v23;
  (v21)(v18 + v77, 1, 1, v20);
  v24 = v15[15];
  v25 = sub_1B77FF988();
  v26 = *(*(v25 - 8) + 56);
  v76 = v24;
  v26(v18 + v24, 1, 1, v25);
  v27 = v15[16];
  v80 = v18;
  v75 = v18 + v27;
  v21();
  __swift_project_boxed_opaque_existential_1(v83, v83[3]);
  sub_1B765D730();
  v74 = v14;
  v28 = v82;
  sub_1B78023C8();
  if (v28)
  {
    v82 = v28;
    v29 = v79;
LABEL_4:
    v34 = v80;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v83);

    sub_1B7205418(v34 + v29, &unk_1EB994C70, &qword_1B7809800);
    sub_1B7205418(v34 + v81, &unk_1EB994C70, &qword_1B7809800);

    sub_1B72380B8(*v78, *(v78 + 1));
    sub_1B7205418(v34 + v77, &unk_1EB994C70, &qword_1B7809800);
    sub_1B7205418(v34 + v76, &qword_1EB98EBD0, &unk_1B7809780);
    return sub_1B7205418(v75, &unk_1EB994C70, &qword_1B7809800);
  }

  v64 = v15;
  v63 = v22;
  v30 = v70;
  v65 = v20;
  LOBYTE(v84) = 0;
  v31 = v72;
  v32 = sub_1B7801E88();
  v29 = v79;
  v34 = v80;
  *v80 = v32;
  LOBYTE(v84) = 1;
  v35 = sub_1B7801DD8();
  v36 = v71;
  *(v34 + 2) = v35;
  *(v34 + 12) = BYTE4(v35) & 1;
  LOBYTE(v84) = 2;
  v34[2] = sub_1B7801D78();
  v34[3] = v37;
  LOBYTE(v84) = 3;
  v38 = sub_1B7801D78();
  v82 = 0;
  v34[4] = v38;
  v34[5] = v39;
  v62[1] = v39;
  LOBYTE(v84) = 4;
  sub_1B765DEDC(&qword_1EB98F730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v40 = v82;
  sub_1B7801DB8();
  v82 = v40;
  if (v40 || (sub_1B7213740(v73, v34 + v29, &unk_1EB994C70, &qword_1B7809800), LOBYTE(v84) = 5, v41 = v82, sub_1B7801DB8(), (v82 = v41) != 0))
  {
    (*(v36 + 8))(v74, v31);
    goto LABEL_5;
  }

  sub_1B7213740(v30, v34 + v81, &unk_1EB994C70, &qword_1B7809800);
  LOBYTE(v84) = 6;
  v42 = v82;
  v43 = sub_1B7801D78();
  v82 = v42;
  if (v42)
  {
    (*(v36 + 8))(v74, v72);
    goto LABEL_5;
  }

  v45 = v64;
  v46 = (v34 + v64[10]);
  *v46 = v43;
  v46[1] = v44;
  v86 = 7;
  sub_1B75D7778();
  v47 = v82;
  sub_1B7801DB8();
  if (v47)
  {
    v82 = v47;
    (*(v36 + 8))(v74, v72);
    goto LABEL_5;
  }

  *(v34 + v63) = v84;
  LOBYTE(v84) = 8;
  v48 = sub_1B7801D78();
  v82 = 0;
  v49 = (v34 + v45[12]);
  *v49 = v48;
  v49[1] = v50;
  v86 = 9;
  sub_1B727A53C();
  v51 = v82;
  sub_1B7801DB8();
  v82 = v51;
  if (v51 || (v53 = v84, v52 = v85, v54 = v78, sub_1B72380B8(*v78, *(v78 + 1)), *v54 = v53, *(v54 + 1) = v52, LOBYTE(v84) = 10, v55 = v82, sub_1B7801DB8(), (v82 = v55) != 0) || (sub_1B7213740(v69, v80 + v77, &unk_1EB994C70, &qword_1B7809800), LOBYTE(v84) = 11, sub_1B765DEDC(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]), v56 = v82, sub_1B7801DB8(), (v82 = v56) != 0))
  {
    (*(v71 + 8))(v74, v72);
    v29 = v79;
    goto LABEL_4;
  }

  v57 = v80;
  sub_1B7213740(v68, v80 + v76, &qword_1EB98EBD0, &unk_1B7809780);
  LOBYTE(v84) = 12;
  v58 = v72;
  v59 = v74;
  v60 = v82;
  sub_1B7801DB8();
  v61 = v58;
  v34 = v57;
  (*(v71 + 8))(v59, v61);
  v82 = v60;
  v29 = v79;
  if (v60)
  {
    goto LABEL_5;
  }

  sub_1B7213740(v67, v75, &unk_1EB994C70, &qword_1B7809800);
  sub_1B73D6DD4(v57, v66);
  __swift_destroy_boxed_opaque_existential_1(v83);
  return sub_1B765D784(v57, type metadata accessor for MapsBrand);
}

uint64_t sub_1B765B6CC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1B765B730(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t sub_1B765B778(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t sub_1B765B7B0(uint64_t a1)
{
  v2 = v1 + *(a1 + 52);
  v3 = *v2;
  sub_1B7228588(*v2, *(v2 + 8));
  return v3;
}

unsigned __int8 *MapsBrand.init(from:encodedStylingInfo:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a2;
  v129 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498, &qword_1B78587F0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v120 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v113 = &v103 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v103 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975B8, &qword_1B783D6F0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v116 = (&v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v110 = &v103 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v119 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v118 = &v103 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v114 = &v103 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490, &qword_1B783D680);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v117 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v103 - v25;
  v27 = type metadata accessor for MapsBrand(0);
  v127 = *(v27 - 1);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v28 + 32);
  v32 = sub_1B77FF4F8();
  v109 = *(v32 - 8);
  v33 = *(v109 + 56);
  v122 = v31;
  v33(v31 + v30, 1, 1, v32);
  v123 = v27[9];
  v33(&v123[v30], 1, 1, v32);
  v115 = v27[11];
  *(v30 + v115) = 8;
  v34 = (v30 + v27[12]);
  *v34 = 0;
  *(v34 + 1) = 0;
  v126 = (v30 + v27[13]);
  *v126 = xmmword_1B7810080;
  v124 = v27[14];
  v33((v30 + v124), 1, 1, v32);
  v35 = v27[15];
  v36 = sub_1B77FF988();
  (*(*(v36 - 8) + 56))(v30 + v35, 1, 1, v36);
  v125 = v27[16];
  v130 = v32;
  v121 = v33;
  result = (v33)(v30 + v125, 1, 1, v32);
  v39 = *a1;
  v38 = a1[1];
  v40 = HIBYTE(v38) & 0xF;
  v41 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v38 & 0x2000000000000000) != 0)
  {
    v42 = HIBYTE(v38) & 0xF;
  }

  else
  {
    v42 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {
    goto LABEL_65;
  }

  if ((v38 & 0x1000000000000000) != 0)
  {

    sub_1B75D5318(v39, v38, 10);
    v44 = v57;
    v59 = v58;

    if (v59)
    {
      goto LABEL_65;
    }

    goto LABEL_67;
  }

  if ((v38 & 0x2000000000000000) != 0)
  {
    v131[0] = *a1;
    v131[1] = v38 & 0xFFFFFFFFFFFFFFLL;
    if (v39 == 43)
    {
      if (v40)
      {
        if (--v40)
        {
          v44 = 0;
          v52 = v131 + 1;
          while (1)
          {
            v53 = *v52 - 48;
            if (v53 > 9)
            {
              break;
            }

            if (!is_mul_ok(v44, 0xAuLL))
            {
              break;
            }

            v47 = __CFADD__(10 * v44, v53);
            v44 = 10 * v44 + v53;
            if (v47)
            {
              break;
            }

            ++v52;
            if (!--v40)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_96:
      __break(1u);
      return result;
    }

    if (v39 != 45)
    {
      if (v40)
      {
        v44 = 0;
        v55 = v131;
        while (1)
        {
          v56 = *v55 - 48;
          if (v56 > 9)
          {
            break;
          }

          if (!is_mul_ok(v44, 0xAuLL))
          {
            break;
          }

          v47 = __CFADD__(10 * v44, v56);
          v44 = 10 * v44 + v56;
          if (v47)
          {
            break;
          }

          ++v55;
          if (!--v40)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v40)
    {
      if (--v40)
      {
        v44 = 0;
        v48 = v131 + 1;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          if (!is_mul_ok(v44, 0xAuLL))
          {
            break;
          }

          v47 = 10 * v44 >= v49;
          v44 = 10 * v44 - v49;
          if (!v47)
          {
            break;
          }

          ++v48;
          if (!--v40)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_94;
  }

  if ((v39 & 0x1000000000000000) != 0)
  {
    result = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1B7801B48();
  }

  v43 = *result;
  if (v43 == 43)
  {
    if (v41 >= 1)
    {
      v40 = v41 - 1;
      if (v41 != 1)
      {
        v44 = 0;
        if (result)
        {
          v50 = result + 1;
          while (1)
          {
            v51 = *v50 - 48;
            if (v51 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v44, 0xAuLL))
            {
              goto LABEL_63;
            }

            v47 = __CFADD__(10 * v44, v51);
            v44 = 10 * v44 + v51;
            if (v47)
            {
              goto LABEL_63;
            }

            ++v50;
            if (!--v40)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_55;
      }

      goto LABEL_63;
    }

    goto LABEL_95;
  }

  if (v43 == 45)
  {
    if (v41 >= 1)
    {
      v40 = v41 - 1;
      if (v41 != 1)
      {
        v44 = 0;
        if (result)
        {
          v45 = result + 1;
          while (1)
          {
            v46 = *v45 - 48;
            if (v46 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v44, 0xAuLL))
            {
              goto LABEL_63;
            }

            v47 = 10 * v44 >= v46;
            v44 = 10 * v44 - v46;
            if (!v47)
            {
              goto LABEL_63;
            }

            ++v45;
            if (!--v40)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v40) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v41)
  {
    v44 = 0;
    if (result)
    {
      while (1)
      {
        v54 = *result - 48;
        if (v54 > 9)
        {
          goto LABEL_63;
        }

        if (!is_mul_ok(v44, 0xAuLL))
        {
          goto LABEL_63;
        }

        v47 = __CFADD__(10 * v44, v54);
        v44 = 10 * v44 + v54;
        if (v47)
        {
          goto LABEL_63;
        }

        ++result;
        if (!--v41)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_63:
  v44 = 0;
  LOBYTE(v40) = 1;
LABEL_64:
  v132 = v40;
  if (v40)
  {
LABEL_65:
    sub_1B72380B8(v128, v129);
    sub_1B765D784(a1, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
    sub_1B7205418(v122 + v30, &unk_1EB994C70, &qword_1B7809800);
    sub_1B7205418(&v123[v30], &unk_1EB994C70, &qword_1B7809800);
    sub_1B72380B8(*v126, *(v126 + 1));
    sub_1B7205418(v30 + v124, &unk_1EB994C70, &qword_1B7809800);
    sub_1B7205418(v30 + v35, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B7205418(v30 + v125, &unk_1EB994C70, &qword_1B7809800);
    return (*(v127 + 56))(a4, 1, 1, v27);
  }

LABEL_67:
  v108 = a4;
  *v30 = v44;
  v60 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  v61 = v60;
  v62 = a1 + *(v60 + 32);
  v64 = *(v62 + 1);
  v63 = *(v62 + 2);
  if (v64 == 1)
  {
    LODWORD(v63) = 0;
    v65 = 1;
  }

  else
  {
    v65 = BYTE4(v63) & 1;
  }

  *(v30 + 8) = v63;
  *(v30 + 12) = v65;
  v66 = a1[3];
  *(v30 + 16) = a1[2];
  *(v30 + 24) = v66;
  v107 = *(v60 + 24);
  sub_1B7205588(a1 + v107, v26, &qword_1EB997490, &qword_1B783D680);
  v67 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v68 = *(v67 - 8);
  v106 = *(v68 + 48);
  v105 = v68 + 48;
  if (v106(v26, 1, v67) == 1)
  {

    sub_1B7205418(v26, &qword_1EB997490, &qword_1B783D680);
    v69 = 0;
    v70 = 0;
  }

  else
  {
    v71 = &v26[*(v67 + 20)];
    v69 = *v71;
    v70 = *(v71 + 1);

    sub_1B765D784(v26, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  }

  *(v30 + 32) = v69;
  *(v30 + 40) = v70;
  sub_1B75D781C(a1 + v61[10], v122 + v30);
  v72 = v61[7];
  v73 = v112;
  sub_1B7205588(a1 + v72, v112, &qword_1EB997498, &qword_1B78587F0);
  v74 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  v75 = *(v74 - 8);
  v122 = *(v75 + 48);
  v111 = v75 + 48;
  v76 = v122(v73, 1, v74);
  v77 = v113;
  if (v76 == 1)
  {
    sub_1B7205418(v73, &qword_1EB997498, &qword_1B78587F0);
    v78 = 1;
    v79 = v114;
  }

  else
  {
    v104 = v72;
    v80 = v110;
    sub_1B7205588(v73, v110, &qword_1EB9975B8, &qword_1B783D6F0);
    sub_1B765D784(v73, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    v81 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
    if ((*(*(v81 - 8) + 48))(v80, 1, v81) == 1)
    {
      sub_1B7205418(v80, &qword_1EB9975B8, &qword_1B783D6F0);
      v78 = 1;
      v79 = v114;
    }

    else
    {
      v82 = v80 + *(v81 + 20);
      v79 = v114;
      (*(v109 + 16))(v114, v82, v130);
      sub_1B765D784(v80, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
      v78 = 0;
    }

    v72 = v104;
  }

  v121(v79, v78, 1, v130);
  sub_1B7213740(v79, &v123[v30], &unk_1EB994C70, &qword_1B7809800);
  sub_1B7205588(a1 + v72, v77, &qword_1EB997498, &qword_1B78587F0);
  v83 = v122(v77, 1, v74);
  v84 = v116;
  if (v83 == 1)
  {
    v85 = &qword_1EB997498;
    v86 = &qword_1B78587F0;
    v87 = v77;
  }

  else
  {
    sub_1B7205588(v77, v116, &qword_1EB9975B8, &qword_1B783D6F0);
    sub_1B765D784(v77, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    v88 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
    if ((*(*(v88 - 8) + 48))(v84, 1, v88) != 1)
    {
      v123 = a1;
      v91 = v67;
      v92 = v72;
      v93 = v84;
      v89 = *v84;
      v90 = v84[1];

      v94 = v93;
      v72 = v92;
      v67 = v91;
      a1 = v123;
      sub_1B765D784(v94, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
      goto LABEL_85;
    }

    v85 = &qword_1EB9975B8;
    v86 = &qword_1B783D6F0;
    v87 = v84;
  }

  sub_1B7205418(v87, v85, v86);
  v89 = 0;
  v90 = 0;
LABEL_85:
  v95 = (v30 + v27[10]);
  *v95 = v89;
  *(v95 + 1) = v90;
  *(v30 + v115) = 0x3070204060501uLL >> (8 * *(a1 + v61[9] + 1));
  v96 = v117;
  sub_1B7205588(a1 + v107, v117, &qword_1EB997490, &qword_1B783D680);
  if (v106(v96, 1, v67) == 1)
  {
    sub_1B7205418(v96, &qword_1EB997490, &qword_1B783D680);
    v97 = v118;
    v121(v118, 1, 1, v130);
  }

  else
  {
    v97 = v118;
    sub_1B7205588(v96, v118, &unk_1EB994C70, &qword_1B7809800);
    sub_1B765D784(v96, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  }

  v99 = v119;
  v98 = v120;
  sub_1B7213740(v97, v30 + v124, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7205588(a1 + v72, v98, &qword_1EB997498, &qword_1B78587F0);
  sub_1B765D784(a1, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
  if (v122(v98, 1, v74) == 1)
  {
    sub_1B7205418(v98, &qword_1EB997498, &qword_1B78587F0);
    v121(v99, 1, 1, v130);
  }

  else
  {
    sub_1B7205588(v98 + *(v74 + 20), v99, &unk_1EB994C70, &qword_1B7809800);
    sub_1B765D784(v98, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
  }

  sub_1B7213740(v99, v30 + v125, &unk_1EB994C70, &qword_1B7809800);
  v100 = v126;
  sub_1B72380B8(*v126, *(v126 + 1));
  v101 = v129;
  *v100 = v128;
  *(v100 + 1) = v101;
  v102 = v108;
  sub_1B73D6DD4(v30, v108);
  (*(v127 + 56))(v102, 0, 1, v27);
  return sub_1B765D784(v30, type metadata accessor for MapsBrand);
}

BOOL _s10FinanceKit9MapsBrandV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v128[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v142 = &v128[-v9];
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  MEMORY[0x1EEE9AC00](v143);
  v145 = &v128[-v10];
  v11 = sub_1B77FF4F8();
  v147 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v146 = &v128[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v141 = &v128[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v144 = &v128[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v128[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v128[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30, &unk_1B7816E10);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v128[-v27];
  v29 = MEMORY[0x1EEE9AC00](v26);
  v33 = &v128[-v32];
  if (*a1 != *a2)
  {
    return 0;
  }

  v34 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v34 = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = *(a1 + 24);
  v36 = *(a2 + 24);
  if (v35)
  {
    if (!v36)
    {
      return 0;
    }

    v37 = v29;
    if (*(a1 + 16) != *(a2 + 16) || v35 != v36)
    {
      v135 = v7;
      v136 = a2;
      v139 = v5;
      v38 = v4;
      v39 = v30;
      v40 = a1;
      v41 = v29;
      v42 = v31;
      v43 = sub_1B78020F8();
      v31 = v42;
      v37 = v41;
      a1 = v40;
      v30 = v39;
      v4 = v38;
      v5 = v139;
      v7 = v135;
      a2 = v136;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v37 = v29;
    if (v36)
    {
      return 0;
    }
  }

  v44 = *(a1 + 40);
  v45 = *(a2 + 40);
  if (v44)
  {
    if (!v45)
    {
      return 0;
    }

    v133 = v30;
    v134 = v31;
    v138 = v37;
    if ((*(a1 + 32) != *(a2 + 32) || v44 != v45) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v133 = v30;
    v134 = v31;
    v138 = v37;
    if (v45)
    {
      return 0;
    }
  }

  v139 = v5;
  v46 = type metadata accessor for MapsBrand(0);
  v140 = v11;
  v132 = v46;
  v47 = *(v46 + 32);
  v48 = *(v138 + 48);
  sub_1B7205588(a1 + v47, v33, &unk_1EB994C70, &qword_1B7809800);
  v137 = v48;
  sub_1B7205588(a2 + v47, &v33[v48], &unk_1EB994C70, &qword_1B7809800);
  v50 = v147 + 48;
  v49 = *(v147 + 48);
  if (v49(v33, 1, v140) == 1)
  {
    if (v49(&v33[v137], 1, v140) == 1)
    {
      v131 = v50;
      sub_1B7205418(v33, &unk_1EB994C70, &qword_1B7809800);
      v51 = v49;
      goto LABEL_29;
    }

LABEL_27:
    v52 = &qword_1EB991C30;
    v53 = &unk_1B7816E10;
    v54 = v33;
LABEL_35:
    sub_1B7205418(v54, v52, v53);
    return 0;
  }

  sub_1B7205588(v33, v22, &unk_1EB994C70, &qword_1B7809800);
  v131 = v50;
  if (v49(&v33[v137], 1, v140) == 1)
  {
    (*(v147 + 8))(v22, v140);
    goto LABEL_27;
  }

  v55 = *(v147 + 32);
  v130 = v49;
  v56 = v140;
  v55(v146, &v33[v137], v140);
  sub_1B765DEDC(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v129 = sub_1B7800828();
  v57 = *(v147 + 8);
  v137 = v147 + 8;
  v57(v146, v56);
  v58 = v22;
  v59 = v130;
  v57(v58, v56);
  v51 = v59;
  sub_1B7205418(v33, &unk_1EB994C70, &qword_1B7809800);
  if ((v129 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v60 = v132[9];
  v61 = *(v138 + 48);
  sub_1B7205588(a1 + v60, v28, &unk_1EB994C70, &qword_1B7809800);
  v62 = a2 + v60;
  v63 = v61;
  sub_1B7205588(v62, &v28[v61], &unk_1EB994C70, &qword_1B7809800);
  v64 = v140;
  v65 = v51(v28, 1, v140);
  v130 = v51;
  if (v65 == 1)
  {
    v66 = v51(&v28[v63], 1, v64);
    v67 = v139;
    if (v66 == 1)
    {
      sub_1B7205418(v28, &unk_1EB994C70, &qword_1B7809800);
      goto LABEL_38;
    }

LABEL_34:
    v52 = &qword_1EB991C30;
    v53 = &unk_1B7816E10;
    v54 = v28;
    goto LABEL_35;
  }

  sub_1B7205588(v28, v20, &unk_1EB994C70, &qword_1B7809800);
  if (v51(&v28[v63], 1, v64) == 1)
  {
    (*(v147 + 8))(v20, v64);
    goto LABEL_34;
  }

  v70 = v146;
  v69 = v147;
  (*(v147 + 32))(v146, &v28[v63], v64);
  sub_1B765DEDC(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  LODWORD(v137) = sub_1B7800828();
  v71 = *(v69 + 8);
  v72 = v70;
  v67 = v139;
  v71(v72, v64);
  v71(v20, v64);
  sub_1B7205418(v28, &unk_1EB994C70, &qword_1B7809800);
  if ((v137 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  v73 = v132[10];
  v74 = (a1 + v73);
  v75 = *(a1 + v73 + 8);
  v76 = (a2 + v73);
  v77 = v76[1];
  if (v75)
  {
    if (!v77 || (*v74 != *v76 || v75 != v77) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v77)
  {
    return 0;
  }

  v78 = v132[11];
  v79 = *(a1 + v78);
  v80 = *(a2 + v78);
  if (v79 == 8)
  {
    if (v80 != 8)
    {
      return 0;
    }
  }

  else if (v79 != v80)
  {
    return 0;
  }

  v81 = v132[12];
  v82 = (a1 + v81);
  v83 = *(a1 + v81 + 8);
  v84 = (a2 + v81);
  v85 = v84[1];
  if (v83)
  {
    if (!v85 || (*v82 != *v84 || v83 != v85) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v85)
  {
    return 0;
  }

  v86 = v132[13];
  v88 = *(a1 + v86);
  v87 = *(a1 + v86 + 8);
  v89 = (a2 + v86);
  v91 = *v89;
  v90 = v89[1];
  if (v87 >> 60 == 15)
  {
    if (v90 >> 60 == 15)
    {
      sub_1B7228588(v88, v87);
      sub_1B7228588(v91, v90);
      sub_1B72380B8(v88, v87);
      goto LABEL_62;
    }

LABEL_60:
    sub_1B7228588(v88, v87);
    sub_1B7228588(v91, v90);
    sub_1B72380B8(v88, v87);
    sub_1B72380B8(v91, v90);
    return 0;
  }

  if (v90 >> 60 == 15)
  {
    goto LABEL_60;
  }

  sub_1B7228588(v88, v87);
  sub_1B7228588(v91, v90);
  v92 = sub_1B73FC434(v88, v87, v91, v90);
  sub_1B72380B8(v91, v90);
  sub_1B72380B8(v88, v87);
  if (!v92)
  {
    return 0;
  }

LABEL_62:
  v93 = v132[14];
  v94 = *(v138 + 48);
  v28 = v134;
  sub_1B7205588(a1 + v93, v134, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7205588(a2 + v93, &v28[v94], &unk_1EB994C70, &qword_1B7809800);
  v95 = v140;
  v96 = v130;
  v97 = v130(v28, 1, v140);
  v135 = v7;
  v136 = a2;
  v98 = v67;
  if (v97 == 1)
  {
    if (v96(&v28[v94], 1, v95) == 1)
    {
      sub_1B7205418(v28, &unk_1EB994C70, &qword_1B7809800);
      goto LABEL_68;
    }

    goto LABEL_34;
  }

  v99 = v144;
  sub_1B7205588(v28, v144, &unk_1EB994C70, &qword_1B7809800);
  v100 = v28;
  if (v96(&v28[v94], 1, v95) == 1)
  {
    (*(v147 + 8))(v99, v95);
    goto LABEL_34;
  }

  v102 = v146;
  v101 = v147;
  (*(v147 + 32))(v146, v100 + v94, v95);
  sub_1B765DEDC(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v103 = v95;
  v104 = sub_1B7800828();
  v105 = *(v101 + 8);
  v105(v102, v103);
  v105(v99, v103);
  sub_1B7205418(v100, &unk_1EB994C70, &qword_1B7809800);
  if ((v104 & 1) == 0)
  {
    return 0;
  }

LABEL_68:
  v106 = v132[15];
  v107 = *(v143 + 48);
  v108 = v145;
  sub_1B7205588(a1 + v106, v145, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205588(v136 + v106, &v108[v107], &qword_1EB98EBD0, &unk_1B7809780);
  v109 = *(v98 + 48);
  if (v109(v108, 1, v4) == 1)
  {
    if (v109(&v108[v107], 1, v4) == 1)
    {
      sub_1B7205418(v145, &qword_1EB98EBD0, &unk_1B7809780);
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  sub_1B7205588(v108, v142, &qword_1EB98EBD0, &unk_1B7809780);
  if (v109(&v108[v107], 1, v4) == 1)
  {
    (*(v98 + 8))(v142, v4);
LABEL_73:
    v52 = &qword_1EB98FCE0;
    v53 = &qword_1B7813550;
    v54 = v145;
    goto LABEL_35;
  }

  v110 = v145;
  v111 = &v145[v107];
  v112 = v135;
  (*(v98 + 32))(v135, v111, v4);
  sub_1B765DEDC(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v113 = v142;
  v114 = sub_1B7800828();
  v115 = *(v98 + 8);
  v115(v112, v4);
  v115(v113, v4);
  sub_1B7205418(v110, &qword_1EB98EBD0, &unk_1B7809780);
  if ((v114 & 1) == 0)
  {
    return 0;
  }

LABEL_75:
  v116 = v132[16];
  v117 = *(v138 + 48);
  v118 = a1 + v116;
  v119 = v133;
  sub_1B7205588(v118, v133, &unk_1EB994C70, &qword_1B7809800);
  sub_1B7205588(v136 + v116, v119 + v117, &unk_1EB994C70, &qword_1B7809800);
  v120 = v119;
  if (v130(v119, 1, v140) != 1)
  {
    sub_1B7205588(v119, v141, &unk_1EB994C70, &qword_1B7809800);
    if (v130((v119 + v117), 1, v140) == 1)
    {
      (*(v147 + 8))(v141, v140);
      goto LABEL_80;
    }

    v121 = v147;
    v122 = v120 + v117;
    v123 = v146;
    v124 = v140;
    (*(v147 + 32))(v146, v122, v140);
    sub_1B765DEDC(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    v125 = v141;
    v126 = sub_1B7800828();
    v127 = *(v121 + 8);
    v127(v123, v124);
    v127(v125, v124);
    sub_1B7205418(v120, &unk_1EB994C70, &qword_1B7809800);
    return (v126 & 1) != 0;
  }

  if (v130((v119 + v117), 1, v140) != 1)
  {
LABEL_80:
    v52 = &qword_1EB991C30;
    v53 = &unk_1B7816E10;
    v54 = v119;
    goto LABEL_35;
  }

  sub_1B7205418(v119, &unk_1EB994C70, &qword_1B7809800);
  return 1;
}

unint64_t sub_1B765D730()
{
  result = qword_1EB99A848;
  if (!qword_1EB99A848)
  {
    result = swift_getWitnessTable(byte_1B78555A8, &type metadata for MapsBrand.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A848);
  }

  return result;
}

uint64_t sub_1B765D784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B765D80C(uint64_t a1)
{
  sub_1B72F2CB8(319, &qword_1EB998DC0, MEMORY[0x1E69E72F0]);
  if (v1 <= 0x3F)
  {
    sub_1B72F2CB8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1B72FA020(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB998DC8, &type metadata for MapsCategory);
        if (v4 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EB991370, MEMORY[0x1E6969080]);
          if (v5 <= 0x3F)
          {
            sub_1B72FA020(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B765D9B0()
{
  result = qword_1EB99A868;
  if (!qword_1EB99A868)
  {
    result = swift_getWitnessTable(byte_1B7855580, &type metadata for MapsBrand.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A868);
  }

  return result;
}

unint64_t sub_1B765DA08()
{
  result = qword_1EB99A870;
  if (!qword_1EB99A870)
  {
    result = swift_getWitnessTable(byte_1B78554F0, &type metadata for MapsBrand.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A870);
  }

  return result;
}

unint64_t sub_1B765DA60()
{
  result = qword_1EB99A878;
  if (!qword_1EB99A878)
  {
    result = swift_getWitnessTable(byte_1B7855518, &type metadata for MapsBrand.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A878);
  }

  return result;
}

uint64_t sub_1B765DAB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632941 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B7885060 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x67616D496F726568 && a2 == 0xEC0000004C525565 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B78824A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657461437370616DLL && a2 == 0xEC00000079726F67 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B78824E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7882500 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7373656E69737562 && a2 == 0xEF4C525574616843 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7882520 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4C52556F676F6CLL && a2 == 0xE700000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1B765DEDC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

id PendingApplePayOrderImporter.__allocating_init(store:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC10FinanceKit28PendingApplePayOrderImporter_store] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PendingApplePayOrderImporter.init(store:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10FinanceKit28PendingApplePayOrderImporter_store] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PendingApplePayOrderImporter();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1B765E0D4(void *a1)
{
  v2 = sub_1B77FF4F8();
  v46 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 orderTypeIdentifier];
  v50 = sub_1B7800868();
  v7 = v6;

  v8 = [a1 orderIdentifier];
  v9 = sub_1B7800868();
  v11 = v10;

  if (qword_1EDAF6548 != -1)
  {
    swift_once();
  }

  v12 = sub_1B78000B8();
  v13 = __swift_project_value_buffer(v12, qword_1EDAF6550);
  v14 = a1;

  v48 = v13;
  v15 = sub_1B7800098();
  v16 = sub_1B78011B8();

  v17 = os_log_type_enabled(v15, v16);
  v47 = v9;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v45 = v19;
    *v18 = 136315651;
    v51 = 0;
    v52 = 0xE000000000000000;
    v53[0] = v19;

    sub_1B7801A78();

    v51 = 0xD000000000000016;
    v52 = 0x80000001B7881280;
    MEMORY[0x1B8CA4D30](v50, v7);
    MEMORY[0x1B8CA4D30](0xD000000000000013, 0x80000001B78812A0);
    MEMORY[0x1B8CA4D30](v9, v11);
    MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

    v20 = sub_1B71A3EF8(v51, v52, v53);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    v21 = [v14 webServiceBaseURL];
    sub_1B77FF478();

    sub_1B755CD04();
    v22 = sub_1B7802068();
    v24 = v23;
    (*(v46 + 8))(v4, v2);
    v25 = sub_1B71A3EF8(v22, v24, v53);

    *(v18 + 14) = v25;
    *(v18 + 22) = 2085;
    v26 = [v14 authenticationToken];
    v27 = sub_1B7800868();
    v29 = v28;

    v30 = sub_1B71A3EF8(v27, v29, v53);

    *(v18 + 24) = v30;
    _os_log_impl(&dword_1B7198000, v15, v16, "Saving pending Apple Pay order %s with webServiceURL=%s, authenticationToken=%{sensitive}s", v18, 0x20u);
    v31 = v45;
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v31, -1, -1);
    MEMORY[0x1B8CA7A40](v18, -1, -1);
  }

  v32 = [*(*(v49 + OBJC_IVAR____TtC10FinanceKit28PendingApplePayOrderImporter_store) + 16) newBackgroundContext];
  v33 = MEMORY[0x1EEE9AC00](v32);
  *(&v45 - 2) = v33;
  *(&v45 - 1) = v14;
  v34 = MEMORY[0x1EEE9AC00](v33);
  *(&v45 - 4) = sub_1B765EFF4;
  *(&v45 - 3) = v35;
  *(&v45 - 2) = v34;
  sub_1B723C524();
  sub_1B7801468();

  v36 = v51;

  v37 = v36;
  v38 = sub_1B7800098();
  v39 = sub_1B78011B8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v40 = 136315394;
    v51 = 0;
    v52 = 0xE000000000000000;
    v53[0] = v42;
    sub_1B7801A78();

    v51 = 0xD000000000000016;
    v52 = 0x80000001B7881280;
    MEMORY[0x1B8CA4D30](v50, v7);
    MEMORY[0x1B8CA4D30](0xD000000000000013, 0x80000001B78812A0);
    MEMORY[0x1B8CA4D30](v47, v11);
    MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

    v43 = sub_1B71A3EF8(v51, v52, v53);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v37;
    *v41 = v37;
    v44 = v37;
    _os_log_impl(&dword_1B7198000, v38, v39, "Saved pending Apple Pay order %s with ID %@", v40, 0x16u);
    sub_1B726B694(v41);
    MEMORY[0x1B8CA7A40](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1B8CA7A40](v42, -1, -1);
    MEMORY[0x1B8CA7A40](v40, -1, -1);
  }

  else
  {
  }
}

void sub_1B765E9CC()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC10FinanceKit28PendingApplePayOrderImporter_store) + 16) newBackgroundContext];
  sub_1B723C524();
  sub_1B7801468();
}

void sub_1B765EA88(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v27 = a3;
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B77FF4F8();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedPendingApplePayOrder();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v10 = [a2 transactionIdentifier];
  if (!v10)
  {
    sub_1B7800868();
    v10 = sub_1B7800838();
  }

  [v9 setTransactionIdentifier_];

  v11 = [a2 orderTypeIdentifier];
  if (!v11)
  {
    sub_1B7800868();
    v11 = sub_1B7800838();
  }

  v12 = sub_1B7800868();
  v14 = sub_1B74DAFEC(v12, v13);
  if (v3)
  {
  }

  else
  {
    v15 = v14;
    v26 = v8;

    if (!v15)
    {
      type metadata accessor for ManagedOrderType();
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v15 setOrderTypeIdentifier_];
    }

    [v9 setOrderType_];
    v16 = [a2 orderTypeIdentifier];
    if (!v16)
    {
      sub_1B7800868();
      v16 = sub_1B7800838();
    }

    [v9 setOrderTypeIdentifier_];

    v17 = [a2 orderIdentifier];
    if (!v17)
    {
      sub_1B7800868();
      v17 = sub_1B7800838();
    }

    [v9 setOrderIdentifier_];

    v18 = [a2 authenticationToken];
    v19 = v26;
    if (!v18)
    {
      sub_1B7800868();
      v18 = sub_1B7800838();
    }

    [v9 setAuthenticationToken_];

    v20 = [a2 webServiceBaseURL];
    sub_1B77FF478();

    v21 = sub_1B74EBBFC(v15, v19, a1);
    (*(v28 + 8))(v19, v29);
    [v9 setOrderWebService_];

    v30[0] = 0;
    if ([a1 save_])
    {
      v22 = v30[0];
      v23 = v9;
      v24 = [v23 objectID];

      *v27 = v24;
    }

    else
    {
      v25 = v30[0];
      sub_1B77FF318();

      swift_willThrow();
    }
  }
}

id PendingApplePayOrderImporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PendingApplePayOrderImporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B765EF18()
{
  if (qword_1EDAF8960 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDAF8968;
  os_unfair_lock_lock((qword_1EDAF8968 + 24));
  sub_1B75E5458((v1 + 16), &v6);
  os_unfair_lock_unlock((v1 + 24));
  if (!v0)
  {
    v2 = *(v6 + 16);

    v3 = type metadata accessor for PendingApplePayOrderImporter();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC10FinanceKit28PendingApplePayOrderImporter_store] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    objc_msgSendSuper2(&v5, sel_init);
  }
}

void sub_1B765F028(void *a1@<X8>)
{
  sub_1B71FB8F4(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t sub_1B765F15C(void *a1)
{
  result = type metadata accessor for FinanceXPCSession.SessionType(319, a1[10], a1[11], a1[12]);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_1B765F20C()
{
  v1 = *v0;

  v2 = *(*v0 + 15);
  v3 = type metadata accessor for FinanceXPCSession.SessionType(0, v1[10], v1[11], v1[12]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1B765F2D0()
{
  sub_1B765F20C();

  return swift_deallocClassInstance();
}

uint64_t sub_1B765F358(uint64_t a1)
{
  result = sub_1B7800158();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

id static Query.predicateFor(id:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50, &qword_1B780C3E0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 16) = xmmword_1B7808C50;
  *(v2 + 56) = v3;
  *(v2 + 32) = 25705;
  *(v2 + 40) = 0xE200000000000000;
  v4 = sub_1B77FFA18();
  *(v2 + 88) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 64));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  v6 = sub_1B7800838();
  v7 = sub_1B7800C18();

  v8 = [objc_opt_self() predicateWithFormat:v6 argumentArray:v7];

  return v8;
}

id static Query.predicateFor(ids:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50, &qword_1B780C3E0);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 16) = xmmword_1B7808C50;
  *(v2 + 56) = v3;
  *(v2 + 32) = 25705;
  *(v2 + 40) = 0xE200000000000000;
  *(v2 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
  *(v2 + 64) = a1;

  v4 = sub_1B7800838();
  v5 = sub_1B7800C18();

  v6 = [objc_opt_self() predicateWithFormat:v4 argumentArray:v5];

  return v6;
}

id static InternalAccountQuery.predicateFor(id:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50, &qword_1B780C3E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7808C50;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x80000001B7875930;
  v3 = sub_1B77FFA18();
  *(v2 + 88) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 64));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, a1, v3);
  v5 = sub_1B7800838();
  v6 = sub_1B7800C18();

  v7 = [objc_opt_self() predicateWithFormat:v5 argumentArray:v6];

  return v7;
}

id static InternalAccountQuery.predicateFor(ids:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50, &qword_1B780C3E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7808C50;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x80000001B7875930;
  *(v2 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
  *(v2 + 64) = a1;

  v3 = sub_1B7800838();
  v4 = sub_1B7800C18();

  v5 = [objc_opt_self() predicateWithFormat:v3 argumentArray:v4];

  return v5;
}

uint64_t FormatterConfiguration.init(locale:calendar:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B77FFAF8();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for FormatterConfiguration(0);
  v10 = *(v9 + 20);
  v11 = sub_1B77FFC88();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = *(v9 + 24);
  v13 = sub_1B77FFCF8();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

uint64_t type metadata accessor for FormatterConfiguration(uint64_t a1)
{
  result = qword_1EB99A8C8;
  if (!qword_1EB99A8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FormatterConfiguration.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFAF8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FormatterConfiguration.locale.setter(uint64_t a1)
{
  v3 = sub_1B77FFAF8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FormatterConfiguration.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatterConfiguration(0) + 20);
  v4 = sub_1B77FFC88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FormatterConfiguration.calendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatterConfiguration(0) + 20);
  v4 = sub_1B77FFC88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FormatterConfiguration.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatterConfiguration(0) + 24);
  v4 = sub_1B77FFCF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FormatterConfiguration.timeZone.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatterConfiguration(0) + 24);
  v4 = sub_1B77FFCF8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

BOOL FormatterConfiguration.isSingularHour(_:)(uint64_t a1)
{
  v51 = a1;
  v1 = sub_1B77FFC68();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v38 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B77FFCF8();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFC88();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FFAF8();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FF6E8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B77FF6F8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B77FF7D8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v38 - v23;
  MEMORY[0x1B8CA3160](v22);
  sub_1B77FF6D8();
  sub_1B77FF6C8();
  v25 = v12;
  v26 = v47;
  (*(v10 + 8))(v25, v9);
  sub_1B77FF678();
  (*(v14 + 8))(v16, v13);
  v27 = *(v18 + 8);
  v27(v21, v17);
  (*(v42 + 16))(v41, v26, v43);
  sub_1B77FF798();
  v28 = type metadata accessor for FormatterConfiguration(0);
  (*(v45 + 16))(v44, v26 + *(v28 + 20), v46);
  sub_1B77FF7B8();
  (*(v49 + 16))(v48, v26 + *(v28 + 24), v50);
  sub_1B77FF7C8();
  sub_1B766139C(&qword_1EB992E00, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  sub_1B77FF968();
  v29 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  v30 = sub_1B7800838();

  v31 = [v29 numberFromString_];

  if (v31)
  {
    v32 = [v31 integerValue];
  }

  else
  {
    v33 = *MEMORY[0x1E6969A58];
    v50 = v17;
    v35 = v39;
    v34 = v40;
    v36 = v38;
    (*(v39 + 104))(v38, v33, v40);
    v32 = sub_1B77FFC78();
    (*(v35 + 8))(v36, v34);
    v17 = v50;
  }

  v27(v24, v17);
  return v32 == 1;
}

uint64_t static FormatterConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1B8CA3D90]())
  {
    v4 = type metadata accessor for FormatterConfiguration(0);
    if (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20)))
    {

      JUMPOUT(0x1B8CA3FF0);
    }
  }

  return 0;
}

uint64_t sub_1B76603AC()
{
  v1 = 0x7261646E656C6163;
  if (*v0 != 1)
  {
    v1 = 0x656E6F5A656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_1B7660404@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B766163C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B766042C(uint64_t a1)
{
  v2 = sub_1B766071C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7660468(uint64_t a1)
{
  v2 = sub_1B766071C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatterConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A888, &qword_1B78556C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B766071C();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B77FFAF8();
  sub_1B766139C(&qword_1EDAF65D8, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for FormatterConfiguration(0);
    v8[14] = 1;
    sub_1B77FFC88();
    sub_1B766139C(&qword_1EB99A898, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF0]);
    sub_1B7801FC8();
    v8[13] = 2;
    sub_1B77FFCF8();
    sub_1B766139C(&qword_1EB99A8A0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B766071C()
{
  result = qword_1EB99A890;
  if (!qword_1EB99A890)
  {
    result = swift_getWitnessTable(aId7_0, &type metadata for FormatterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A890);
  }

  return result;
}

uint64_t FormatterConfiguration.hash(into:)(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B766139C(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B766139C(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B766139C(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1B7800768();
}

uint64_t FormatterConfiguration.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B766139C(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration(0);
  sub_1B77FFC88();
  sub_1B766139C(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B766139C(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t FormatterConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_1B77FFCF8();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FFC88();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FFAF8();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A8A8, &qword_1B78556C8);
  v32 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v25 - v9;
  v11 = type metadata accessor for FormatterConfiguration(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B766071C();
  v36 = v10;
  v14 = v38;
  sub_1B78023C8();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v11;
  v38 = v13;
  v15 = a1;
  v17 = v32;
  v16 = v33;
  v18 = v34;
  v41 = 0;
  sub_1B766139C(&qword_1EDAF65D0, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  v19 = v35;
  sub_1B7801E48();
  v20 = *(v31 + 32);
  v35 = v7;
  v20(v38, v19, v7);
  v40 = 1;
  sub_1B766139C(&qword_1EB99A8B0, MEMORY[0x1E6969AE8], MEMORY[0x1E6969B08]);
  v21 = v6;
  sub_1B7801E48();
  v22 = v38;
  (*(v16 + 32))(&v38[*(v26 + 20)], v21, v18);
  v39 = 2;
  sub_1B766139C(&qword_1EB99A8B8, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
  v23 = v29;
  sub_1B7801E48();
  (*(v17 + 8))(v36, v37);
  (*(v27 + 32))(v22 + *(v26 + 24), v30, v23);
  sub_1B7519EB8(v22, v28);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return sub_1B75497B0(v22);
}

uint64_t sub_1B7660F90()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B766139C(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  sub_1B77FFC88();
  sub_1B766139C(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B766139C(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B76610D8(uint64_t a1)
{
  sub_1B77FFAF8();
  sub_1B766139C(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  sub_1B77FFC88();
  sub_1B766139C(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B766139C(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1B7800768();
}

uint64_t sub_1B7661210(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B766139C(&qword_1EB990858, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1B7800768();
  sub_1B77FFC88();
  sub_1B766139C(&unk_1EB99D750, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B766139C(&qword_1EB990860, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B766139C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B76613E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (MEMORY[0x1B8CA3EF0](a1 + *(a3 + 20), a2 + *(a3 + 20)))
  {

    JUMPOUT(0x1B8CA3FF0);
  }

  return 0;
}

uint64_t sub_1B7661488(uint64_t a1)
{
  result = sub_1B77FFAF8();
  if (v2 <= 0x3F)
  {
    result = sub_1B77FFC88();
    if (v3 <= 0x3F)
    {
      result = sub_1B77FFCF8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B7661538()
{
  result = qword_1EB99A8D8;
  if (!qword_1EB99A8D8)
  {
    result = swift_getWitnessTable(byte_1B7855864, &type metadata for FormatterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A8D8);
  }

  return result;
}

unint64_t sub_1B7661590()
{
  result = qword_1EB99A8E0;
  if (!qword_1EB99A8E0)
  {
    result = swift_getWitnessTable(byte_1B78557D4, &type metadata for FormatterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A8E0);
  }

  return result;
}

unint64_t sub_1B76615E8()
{
  result = qword_1EB99A8E8;
  if (!qword_1EB99A8E8)
  {
    result = swift_getWitnessTable(a5D7, &type metadata for FormatterConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A8E8);
  }

  return result;
}

uint64_t sub_1B766163C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t TransactionMerchantInformation.merchantCategoryCode.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t TransactionMerchantInformation.standardIndustrialClassificationCode.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void TransactionMerchantInformation.standardIndustrialClassificationCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t TransactionMerchantInformation.categoryDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void TransactionMerchantInformation.categoryDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t TransactionMerchantInformation.merchantName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void TransactionMerchantInformation.merchantName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t TransactionMerchantInformation.merchantNumber.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void TransactionMerchantInformation.merchantNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void *TransactionMerchantInformation.merchantAddress.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void (*TransactionMerchantInformation.merchantAddress.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + 72);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1B7661A58;
}

void sub_1B7661A58(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *(v3 + 72);
    v5 = v2;

    *(v3 + 72) = v2;
  }

  else
  {

    *(v3 + 72) = v2;
  }
}

uint64_t TransactionMerchantInformation.init(merchantCategoryCode:standardIndustrialClassificationCode:categoryDescription:merchantName:merchantNumber:merchantAddress:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 2) = BYTE2(result) & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

unint64_t sub_1B7661B00()
{
  v1 = 0x746E61686372656DLL;
  v2 = *v0;
  v3 = 0xD000000000000016;
  if (v2 == 4)
  {
    v3 = 0x746E61686372656DLL;
  }

  if (v2 != 3)
  {
    v1 = v3;
  }

  v4 = 0xD000000000000024;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B7661BC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7663430(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7661BF0(uint64_t a1)
{
  v2 = sub_1B7663058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7661C2C(uint64_t a1)
{
  v2 = sub_1B7663058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransactionMerchantInformation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A8F0, &unk_1B78558E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = v1[1];
  v22 = v1[2];
  v23 = v7;
  v8 = v1[3];
  v20 = v1[4];
  v21 = v8;
  v9 = v1[5];
  v18 = v1[6];
  v19 = v9;
  v10 = v1[7];
  v16 = v1[8];
  v17 = v10;
  v15 = v1[9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7663058();
  sub_1B78023F8();
  v31 = 0;
  v11 = v24;
  sub_1B7801F48();
  if (!v11)
  {
    v30[0] = 1;
    sub_1B7801EF8();
    v29 = 2;
    sub_1B7801EF8();
    v28 = 3;
    sub_1B7801EF8();
    v27 = 4;
    sub_1B7801EF8();
    v25 = v15;
    v26 = 5;
    v12 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D88, &qword_1B7847B90);
    sub_1B75D77CC(&qword_1EB998D90, protocol conformance descriptor for CodableWrapper<A>);
    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TransactionMerchantInformation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  if (*(v1 + 2) == 1)
  {
    sub_1B7802318();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B7802318();
    sub_1B7802328();
    if (v2)
    {
LABEL_3:
      sub_1B7802318();
      sub_1B7800798();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  sub_1B7802318();
  if (v3)
  {
LABEL_4:
    sub_1B7802318();
    sub_1B7800798();
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  sub_1B7802318();
  if (v4)
  {
LABEL_5:
    sub_1B7802318();
    sub_1B7800798();
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_1B7802318();
    if (v6)
    {
      goto LABEL_7;
    }

    return sub_1B7802318();
  }

LABEL_11:
  sub_1B7802318();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_1B7802318();
  sub_1B7800798();
  if (v6)
  {
LABEL_7:
    sub_1B7802318();
    return sub_1B7801568();
  }

  return sub_1B7802318();
}

uint64_t TransactionMerchantInformation.hashValue.getter()
{
  sub_1B78022F8();
  TransactionMerchantInformation.hash(into:)(v1);
  return sub_1B7802368();
}

uint64_t TransactionMerchantInformation.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99A900, &unk_1B78558F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v69 = 1;
  v9 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B7663058();
  sub_1B78023C8();
  if (v2)
  {
    v47 = v2;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    LOBYTE(v54) = 0;
    v45 = sub_1B7801DC8();
    v69 = BYTE2(v45) & 1;
    LOBYTE(v54) = 1;
    v43 = sub_1B7801D78();
    v44 = v20;
    LOBYTE(v54) = 2;
    v41 = sub_1B7801D78();
    v42 = v21;
    LOBYTE(v54) = 3;
    v12 = sub_1B7801D78();
    v22 = a2;
    v40 = v23;
    LOBYTE(v54) = 4;
    v24 = sub_1B7801D78();
    v47 = 0;
    v39 = v25;
    v10 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB998D88, &qword_1B7847B90);
    v70 = 5;
    sub_1B75D77CC(&qword_1EB998DA8, protocol conformance descriptor for CodableWrapper<A>);
    v26 = v47;
    sub_1B7801DB8();
    v47 = v26;
    if (!v26)
    {
      (*(v6 + 8))(v8, v5);
      v27 = v53;
      LOWORD(v48) = v45;
      v37 = v69;
      BYTE2(v48) = v69;
      v28 = v43;
      v29 = v44;
      *(&v48 + 1) = v43;
      *&v49 = v44;
      v30 = v41;
      v31 = v42;
      *(&v49 + 1) = v41;
      *&v50 = v42;
      *(&v50 + 1) = v12;
      v38 = v12;
      v32 = v40;
      *&v51 = v40;
      *(&v51 + 1) = v10;
      v33 = v39;
      *&v52 = v39;
      *(&v52 + 1) = v53;
      v34 = v51;
      v22[2] = v50;
      v22[3] = v34;
      v22[4] = v52;
      v35 = v49;
      *v22 = v48;
      v22[1] = v35;
      sub_1B76630DC(&v48, &v54);
      __swift_destroy_boxed_opaque_existential_1(v46);
      v54 = v45;
      v55 = v37;
      v58 = v28;
      v59 = v29;
      v60 = v30;
      v61 = v31;
      v62 = v38;
      v63 = v32;
      v64 = v10;
      v65 = v33;
      v66 = v27;
      return sub_1B76630AC(&v54);
    }

    (*(v6 + 8))(v8, v5);
    v17 = v45;
    v15 = v44;
    v16 = v43;
    v13 = v42;
    v14 = v41;
    v11 = v40;
    v18 = v39;
  }

  __swift_destroy_boxed_opaque_existential_1(v46);
  v54 = v17;
  v55 = v69;
  v56 = v67;
  v57 = v68;
  v58 = v16;
  v59 = v15;
  v60 = v14;
  v61 = v13;
  v62 = v12;
  v63 = v11;
  v64 = v10;
  v65 = v18;
  v66 = 0;
  return sub_1B76630AC(&v54);
}

uint64_t sub_1B76626E8()
{
  sub_1B78022F8();
  TransactionMerchantInformation.hash(into:)(v1);
  return sub_1B7802368();
}

uint64_t sub_1B766272C(uint64_t a1)
{
  sub_1B78022F8();
  TransactionMerchantInformation.hash(into:)(v2);
  return sub_1B7802368();
}

__int128 *TransactionMerchantInformation.init(_:)@<X0>(__int128 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[7];
  v45 = result[6];
  v46 = v3;
  v4 = result[9];
  v47 = result[8];
  v48 = v4;
  v5 = result[3];
  *&v43[16] = result[2];
  *&v43[32] = v5;
  v6 = result[5];
  *&v43[48] = result[4];
  v44 = v6;
  v7 = result[1];
  v42 = *result;
  *v43 = v7;
  if (!*(&v42 + 1) || ((v8 = HIBYTE(*(&v42 + 1)) & 0xFLL, v9 = v42 & 0xFFFFFFFFFFFFLL, (*(&v42 + 1) & 0x2000000000000000) != 0) ? (v10 = HIBYTE(*(&v42 + 1)) & 0xFLL) : (v10 = v42 & 0xFFFFFFFFFFFFLL), !v10))
  {
    v16 = 0;
    LOBYTE(v8) = 1;
    goto LABEL_68;
  }

  if ((*(&v42 + 1) & 0x1000000000000000) == 0)
  {
    if ((*(&v42 + 1) & 0x2000000000000000) != 0)
    {
      *&v40[0] = v42;
      *(&v40[0] + 1) = *(&v42 + 1) & 0xFFFFFFFFFFFFFFLL;
      if (v42 == 43)
      {
        if (v8)
        {
          if (--v8)
          {
            LOWORD(v12) = 0;
            v23 = v40 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              v25 = (10 * v12);
              if (v25 != 10 * v12)
              {
                break;
              }

              v12 = v25 + v24;
              if ((v25 + v24) != v12)
              {
                break;
              }

              ++v23;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_77:
        __break(1u);
        return result;
      }

      if (v42 != 45)
      {
        if (v8)
        {
          LOWORD(v12) = 0;
          v28 = v40;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = (10 * v12);
            if (v30 != 10 * v12)
            {
              break;
            }

            v12 = v30 + v29;
            if ((v30 + v29) != v12)
            {
              break;
            }

            ++v28;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v8)
      {
        if (--v8)
        {
          LOWORD(v12) = 0;
          v17 = v40 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = (10 * v12);
            if (v19 != 10 * v12)
            {
              break;
            }

            v12 = v19 - v18;
            if ((v19 - v18) != v12)
            {
              break;
            }

            ++v17;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v42 & 0x1000000000000000) != 0)
      {
        result = ((*(&v42 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1B7801B48();
      }

      v11 = *result;
      if (v11 == 43)
      {
        if (v9 >= 1)
        {
          v8 = v9 - 1;
          if (v9 != 1)
          {
            LOWORD(v12) = 0;
            if (result)
            {
              v20 = result + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  goto LABEL_63;
                }

                v22 = (10 * v12);
                if (v22 != 10 * v12)
                {
                  goto LABEL_63;
                }

                v12 = v22 + v21;
                if ((v22 + v21) != v12)
                {
                  goto LABEL_63;
                }

                ++v20;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_76;
      }

      if (v11 != 45)
      {
        if (v9)
        {
          LOWORD(v12) = 0;
          if (result)
          {
            while (1)
            {
              v26 = *result - 48;
              if (v26 > 9)
              {
                goto LABEL_63;
              }

              v27 = (10 * v12);
              if (v27 != 10 * v12)
              {
                goto LABEL_63;
              }

              v12 = v27 + v26;
              if ((v27 + v26) != v12)
              {
                goto LABEL_63;
              }

              result = (result + 1);
              if (!--v9)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        LOWORD(v12) = 0;
        LOBYTE(v8) = 1;
        goto LABEL_64;
      }

      if (v9 >= 1)
      {
        v8 = v9 - 1;
        if (v9 != 1)
        {
          LOWORD(v12) = 0;
          if (result)
          {
            v13 = result + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_63;
              }

              v15 = (10 * v12);
              if (v15 != 10 * v12)
              {
                goto LABEL_63;
              }

              v12 = v15 - v14;
              if ((v15 - v14) != v12)
              {
                goto LABEL_63;
              }

              ++v13;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v8) = 0;
LABEL_64:
          v39[0] = v8;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  sub_1B75D589C(v42, *(&v42 + 1), 10);
  v12 = v35;

  LODWORD(v8) = HIWORD(v12) & 1;
LABEL_65:
  if (v8)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

LABEL_68:
  v41 = v8;
  v31 = *v43;
  v32 = *&v43[56];
  v37 = *&v43[24];
  v38 = *&v43[8];
  v36 = *&v43[40];
  if (*(&v44 + 1) == 1)
  {

    result = sub_1B7586478(&v42);
    v33 = 0;
  }

  else
  {
    v40[2] = v46;
    v40[3] = v47;
    v40[4] = v48;
    v40[0] = v44;
    v40[1] = v45;
    sub_1B7205540(0, &qword_1EB990D70, 0x1E695CF30);
    sub_1B7663114(&v44, v39);
    sub_1B7663114(&v44, v39);

    v33 = sub_1B7662C1C(v40);
    sub_1B7586478(&v42);
    result = sub_1B7663184(&v44);
  }

  v34 = v41;
  *a2 = v16;
  *(a2 + 2) = v34;
  *(a2 + 8) = v31;
  *(a2 + 16) = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v36;
  *(a2 + 64) = v32;
  *(a2 + 72) = v33;
  return result;
}

id sub_1B7662C1C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v3 = a1[5];
  v4 = a1[7];
  v5 = a1[9];
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (v1)
  {

    v7 = sub_1B7800838();

    [v6 setStreet_];
  }

  if (v2)
  {

    v8 = sub_1B7800838();

    [v6 setCity_];
  }

  if (v3)
  {

    v9 = sub_1B7800838();

    [v6 setState_];
  }

  if (v4)
  {

    v10 = sub_1B7800838();

    [v6 setPostalCode_];
  }

  if (v5)
  {
    v11 = sub_1B7800838();

    [v6 setISOCountryCode_];
  }

  else
  {
  }

  return v6;
}

BOOL _s10FinanceKit30TransactionMerchantInformationV2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v9 = *(a1 + 4);
  v8 = *(a1 + 5);
  v11 = *(a1 + 6);
  v10 = *(a1 + 7);
  v13 = *(a1 + 8);
  v12 = *(a1 + 9);
  v14 = *(a2 + 2);
  v16 = *(a2 + 3);
  v15 = *(a2 + 4);
  v18 = *(a2 + 5);
  v17 = *(a2 + 6);
  v20 = *(a2 + 7);
  v19 = *(a2 + 8);
  v21 = *(a2 + 9);
  if (v4)
  {
    if (!*(a2 + 2))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v22 = *(a2 + 2);
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v14)
    {
      return 0;
    }

    if (v5 != *(a2 + 1) || v6 != v14)
    {
      v45 = *(a2 + 9);
      v46 = v10;
      v43 = v12;
      v44 = *(a2 + 8);
      v23 = v13;
      v24 = *(a2 + 7);
      v25 = sub_1B78020F8();
      v20 = v24;
      v12 = v43;
      v19 = v44;
      v13 = v23;
      v21 = v45;
      v10 = v46;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v9)
  {
    if (!v15)
    {
      return 0;
    }

    if (v7 != v16 || v9 != v15)
    {
      v26 = v12;
      v27 = v13;
      v28 = v19;
      v29 = v20;
      v30 = sub_1B78020F8();
      v20 = v29;
      v19 = v28;
      v13 = v27;
      v12 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v11)
  {
    if (!v17)
    {
      return 0;
    }

    if (v8 != v18 || v11 != v17)
    {
      v31 = v12;
      v32 = v13;
      v33 = v19;
      v34 = v20;
      v35 = sub_1B78020F8();
      v20 = v34;
      v19 = v33;
      v13 = v32;
      v12 = v31;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v13)
  {
    if (!v19)
    {
      return 0;
    }

    if (v10 != v20 || v13 != v19)
    {
      v36 = v12;
      v37 = sub_1B78020F8();
      v12 = v36;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v12)
  {
    if (!v21)
    {
      return 0;
    }

    v38 = v12;
    sub_1B7205540(0, &qword_1EDAFC4C0, 0x1E69E58C0);
    v39 = v38;
    v40 = v21;
    v41 = sub_1B7801558();

    return (v41 & 1) != 0;
  }

  return !v21;
}

unint64_t sub_1B7663058()
{
  result = qword_1EB99A8F8;
  if (!qword_1EB99A8F8)
  {
    result = swift_getWitnessTable(byte_1B7855AF4, &type metadata for TransactionMerchantInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB99A8F8);
  }

  return result;
}

uint64_t sub_1B7663114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995670, &qword_1B785BD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7663184(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995670, &qword_1B785BD20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B76631F0()
{
  result = qword_1EB99A908;
  if (!qword_1EB99A908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TransactionMerchantInformation, &type metadata for TransactionMerchantInformation, v0, v1);
    atomic_store(result, &qword_1EB99A908);
  }

  return result;
}

uint64_t sub_1B7663244(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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