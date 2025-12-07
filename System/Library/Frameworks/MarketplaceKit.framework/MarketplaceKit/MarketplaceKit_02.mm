uint64_t static AppDistributor.availableApps(for:distributor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D9617374, 0, 0);
}

uint64_t sub_1D9617374()
{
  v1 = qword_1EDCF6860;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1D9617488;
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  return sub_1D95EFF3C(v4, v3, v5, sub_1D96175E0, 0);
}

uint64_t sub_1D9617488(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    a1 = 0;
  }

  v5 = *(v4 + 8);

  return v5(a1);
}

uint64_t static AppDistributor.requestProductPage(_:itemID:versionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 25) = a5;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  type metadata accessor for LaunchAngelXPCRequest(0);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D961768C, 0, 0);
}

uint64_t sub_1D961768C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 25);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *v1 = *(v0 + 48);
  *(v1 + 16) = v2 & 1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1D961776C;
  v6 = *(v0 + 64);

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)(v0 + 16, v6);
}

uint64_t sub_1D961776C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1D9618814;
  }

  else
  {
    sub_1D9604030(*(v2 + 16), *(v2 + 24));
    v3 = sub_1D9618834;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t static AppDistributor.requestSearchPage(_:searchString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  type metadata accessor for LaunchAngelXPCRequest(0);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9617920, 0, 0);
}

uint64_t sub_1D9617920()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  *v2 = v0[6];
  v2[1] = v1;
  v2[2] = v4;
  v2[3] = v3;
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D9617A04;
  v6 = v0[8];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v6);
}

uint64_t sub_1D9617A04()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1D9617B94;
  }

  else
  {
    sub_1D9604030(*(v2 + 16), *(v2 + 24));
    v3 = sub_1D9617B24;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9617B24()
{
  sub_1D9611758(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9617B94()
{
  sub_1D9611758(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static AppDistributor.requestAuthorization(_:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  type metadata accessor for LaunchAngelXPCRequest(0);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9617C98, 0, 0);
}

uint64_t sub_1D9617C98()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  *v2 = v0[6];
  v2[1] = v1;
  v2[2] = v4;
  v2[3] = v3;
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D961776C;
  v6 = v0[8];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v6);
}

uint64_t sub_1D9617D98()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D95EAF50;

  return sub_1D95F0358(1, sub_1D9617E8C, 0);
}

void sub_1D9617E8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D96587B0;
  v7[3] = &block_descriptor_33;
  v6 = _Block_copy(v7);

  [a1 handleEmergencyResetRequestWithReply_];
  _Block_release(v6);
}

uint64_t static AppDistributor.addAllowedDeveloper(_:name:supportURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = 0;
  v6 = qword_1EDCF6860;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_1D95EC0A0(&v8, sub_1D9618024, 0);
}

uint64_t static AppDistributor.addConditionallyAllowedDeveloper(_:)(uint64_t a1, uint64_t a2)
{
  *&v3[0] = a1;
  *(&v3[0] + 1) = a2;
  memset(&v3[1], 0, 32);
  v4 = 1;
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  return sub_1D95EC0A0(v3, sub_1D96180D4, 0);
}

void sub_1D96180E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v12 = sub_1D966E5D8();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D96587B0;
  v14[3] = a6;
  v13 = _Block_copy(v14);

  [a1 *a7];
  _Block_release(v13);
}

uint64_t sub_1D96181D8(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (!a3 || a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3 > 7u)
  {
    if (a3 == 8 || a3 == 9)
    {
    }
  }

  else if (a3 == 4)
  {
    return sub_1D95EA68C(result, a2);
  }

  else if (a3 == 7)
  {
  }

  return result;
}

uint64_t sub_1D9618238(uint64_t *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return result;
}

uint64_t sub_1D9618284(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(a1 + 8) = v3;
  return result;
}

unint64_t sub_1D96182D0()
{
  result = qword_1ECB21800;
  if (!qword_1ECB21800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21800);
  }

  return result;
}

uint64_t sub_1D9618324(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB21808, &qword_1D96747B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D96183C4()
{
  result = qword_1ECB21830;
  if (!qword_1ECB21830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21830);
  }

  return result;
}

unint64_t sub_1D961841C()
{
  result = qword_1ECB21838;
  if (!qword_1ECB21838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21838);
  }

  return result;
}

unint64_t sub_1D9618474()
{
  result = qword_1ECB21840;
  if (!qword_1ECB21840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21840);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D96184E0()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = sub_1D966E918();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21848, &qword_1D96749D0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  out_token = -1;
  sub_1D96186E0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F98], v0);

  v5 = sub_1D966EBF8();
  (*(v1 + 8))(v3, v0);
  aBlock[4] = sub_1D961872C;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D96150EC;
  aBlock[3] = &block_descriptor_42_0;
  v6 = _Block_copy(aBlock);

  notify_register_dispatch("com.apple.managedappdistributiond.priorityOrAllowedDevelopersChanged", &out_token, v5, v6);
  _Block_release(v6);

  return v4;
}

unint64_t sub_1D96186E0()
{
  result = qword_1EDCF66A0;
  if (!qword_1EDCF66A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCF66A0);
  }

  return result;
}

uint64_t sub_1D9618744(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D96187A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t LicenseResolutionContext.logKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LicenseResolutionContext.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LicenseResolutionContext(0) + 20);
  v4 = sub_1D966E5B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LicenseResolutionContext(uint64_t a1)
{
  result = qword_1ECB21868;
  if (!qword_1ECB21868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LicenseResolutionContext.init(logKey:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for LicenseResolutionContext(0) + 20);
  v7 = sub_1D966E5B8();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1D96189C8()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

uint64_t sub_1D96189F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D9618AD0(uint64_t a1)
{
  v2 = sub_1D9618CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9618B0C(uint64_t a1)
{
  v2 = sub_1D9618CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LicenseResolutionContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21850, &qword_1D9674A60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9618CEC();
  sub_1D966F118();
  v8[15] = 0;
  sub_1D966EF38();
  if (!v1)
  {
    type metadata accessor for LicenseResolutionContext(0);
    v8[14] = 1;
    sub_1D966E5B8();
    sub_1D95E63E8(&qword_1ECB20860, MEMORY[0x1E6968FB8]);
    sub_1D966EF68();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9618CEC()
{
  result = qword_1ECB21858;
  if (!qword_1ECB21858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21858);
  }

  return result;
}

uint64_t LicenseResolutionContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_1D966E5B8();
  v16 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21860, &qword_1D9674A68);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for LicenseResolutionContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9618CEC();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_1D966EE58();
  v10[1] = v13;
  v21 = 1;
  sub_1D95E63E8(&qword_1ECB20870, MEMORY[0x1E6968FD0]);
  sub_1D966EE88();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_1D9619050(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D96190B4(v10);
}

uint64_t sub_1D9619050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LicenseResolutionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D96190B4(uint64_t a1)
{
  v2 = type metadata accessor for LicenseResolutionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9619168(uint64_t a1)
{
  result = sub_1D966E5B8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D96191F8()
{
  result = qword_1ECB21878;
  if (!qword_1ECB21878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21878);
  }

  return result;
}

unint64_t sub_1D9619250()
{
  result = qword_1ECB21880;
  if (!qword_1ECB21880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21880);
  }

  return result;
}

unint64_t sub_1D96192A8()
{
  result = qword_1ECB21888;
  if (!qword_1ECB21888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21888);
  }

  return result;
}

uint64_t sub_1D9619318()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D9619414;

  return sub_1D95F06D0(0, 0, 2, sub_1D9619538, 0);
}

uint64_t sub_1D9619414()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_1D961B46C;
  }

  else
  {
    v2 = sub_1D961B458;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

MarketplaceKit::DiscoverRestoresRequest __swiftcall DiscoverRestoresRequest.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
  return result;
}

uint64_t static Restores.discover(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D961956C, 0, 0);
}

uint64_t sub_1D961956C()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D9619684;
  v3 = v0[2];

  return sub_1D95F06D0(v3, v1, 2, sub_1D9619870, 0);
}

uint64_t sub_1D9619684()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1D96197FC;
  }

  else
  {
    v2 = sub_1D9619798;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9619798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D96197FC()
{

  v1 = *(v0 + 8);

  return v1();
}

MarketplaceKit::DiscoverRestoresRequest __swiftcall DiscoverRestoresRequest.init(accountID:)(MarketplaceKit::DiscoverRestoresRequest accountID)
{
  *v1 = accountID.field1D9688E50;
  *(v1 + 16) = 2;
  return accountID;
}

uint64_t sub_1D96198A0()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D961999C;

  return sub_1D95F06D0(0, 0, 1, sub_1D9619B84, 0);
}

uint64_t sub_1D961999C()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_1D9619B14;
  }

  else
  {
    v2 = sub_1D9619AB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9619AB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9619B14()
{

  v1 = *(v0 + 8);

  return v1();
}

MarketplaceKit::DiscoverRestoresRequest __swiftcall DiscoverRestoresRequest.init(accountID:promptToInstallDistributors:)(MarketplaceKit::DiscoverRestoresRequest accountID, Swift::Bool_optional promptToInstallDistributors)
{
  *v2 = accountID.field1D9688E50;
  *(v2 + 16) = promptToInstallDistributors;
  accountID.field1D9688E5C = promptToInstallDistributors;
  return accountID;
}

uint64_t static Restores.prioritize(app:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D9619BB8, 0, 0);
}

uint64_t sub_1D9619BB8()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D9619CB0;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1D95F0A00(v3, v2, sub_1D9619DAC, 0);
}

uint64_t sub_1D9619CB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D9619DE0()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D9611BC8;
  v2 = *(v0 + 16);

  return sub_1D95F0E18(v2, sub_1D9619EE0, 0);
}

uint64_t DiscoverRestoresRequest.accountID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D9619F2C()
{
  if (*v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_1D9619F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D9680BE0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D961A05C(uint64_t a1)
{
  v2 = sub_1D961AEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961A098(uint64_t a1)
{
  v2 = sub_1D961AEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiscoverRestoresRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21890, &qword_1D9674C28);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AEFC();
  sub_1D966F118();
  v12 = 0;
  v7 = v9[1];
  sub_1D966EEE8();
  if (!v7)
  {
    v11 = 1;
    sub_1D966EEF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DiscoverRestoresRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB218A0, &qword_1D9674C30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AEFC();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_1D966EE08();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_1D966EE18();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PromoteAppsRequest.appsToPromote.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1D961A4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72506F5473707061 && a2 == 0xED000065746F6D6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D961A560(uint64_t a1)
{
  v2 = sub_1D961AF50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961A59C(uint64_t a1)
{
  v2 = sub_1D961AF50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromoteAppsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB218A8, &unk_1D9674C38);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AF50();

  sub_1D966F118();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
  sub_1D96125F8(&qword_1EDCF6200, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1D966EF68();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PromoteAppsRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB218B8, &qword_1D9674C48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AF50();
  sub_1D966F0F8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
    sub_1D96125F8(&qword_1EDCF6670, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D966EE88();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PrioritizeAppRequest.appToPrioritize.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrioritizeAppRequest.appToPrioritize.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1D961A9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6972506F54707061 && a2 == 0xEF657A697469726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D961AA80(uint64_t a1)
{
  v2 = sub_1D961AFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961AABC(uint64_t a1)
{
  v2 = sub_1D961AFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PrioritizeAppRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB218C0, &qword_1D9674C50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AFA4();
  sub_1D966F118();
  sub_1D966EF38();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PrioritizeAppRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB218D0, &qword_1D9674C58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AFA4();
  sub_1D966F0F8();
  if (!v2)
  {
    v9 = sub_1D966EE58();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D961ADC0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB218C0, &qword_1D9674C50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D961AFA4();
  sub_1D966F118();
  sub_1D966EF38();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D961AEFC()
{
  result = qword_1ECB21898;
  if (!qword_1ECB21898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21898);
  }

  return result;
}

unint64_t sub_1D961AF50()
{
  result = qword_1ECB218B0;
  if (!qword_1ECB218B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218B0);
  }

  return result;
}

unint64_t sub_1D961AFA4()
{
  result = qword_1ECB218C8;
  if (!qword_1ECB218C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218C8);
  }

  return result;
}

uint64_t sub_1D961B008(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D961B064(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D961B11C()
{
  result = qword_1ECB218D8;
  if (!qword_1ECB218D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218D8);
  }

  return result;
}

unint64_t sub_1D961B174()
{
  result = qword_1ECB218E0;
  if (!qword_1ECB218E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218E0);
  }

  return result;
}

unint64_t sub_1D961B1CC()
{
  result = qword_1ECB218E8;
  if (!qword_1ECB218E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218E8);
  }

  return result;
}

unint64_t sub_1D961B224()
{
  result = qword_1ECB218F0;
  if (!qword_1ECB218F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218F0);
  }

  return result;
}

unint64_t sub_1D961B27C()
{
  result = qword_1ECB218F8;
  if (!qword_1ECB218F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB218F8);
  }

  return result;
}

unint64_t sub_1D961B2D4()
{
  result = qword_1ECB21900;
  if (!qword_1ECB21900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21900);
  }

  return result;
}

unint64_t sub_1D961B32C()
{
  result = qword_1ECB21908;
  if (!qword_1ECB21908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21908);
  }

  return result;
}

unint64_t sub_1D961B384()
{
  result = qword_1ECB21910;
  if (!qword_1ECB21910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21910);
  }

  return result;
}

unint64_t sub_1D961B3DC()
{
  result = qword_1ECB21918;
  if (!qword_1ECB21918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21918);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.installType.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.appName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.metricsFieldData.getter()
{
  v1 = v0 + *(type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0) + 32);
  v2 = *v1;
  sub_1D961B554(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1D961B554(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D95EA68C(result, a2);
  }

  return result;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.init(showBiometrics:installType:metricsFieldData:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v13 = *(v12 + 28);
  v14 = sub_1D966E5B8();
  result = (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0xE000000000000000;
  v16 = (a6 + *(v12 + 32));
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.init(showBiometrics:installType:appName:iconURL:metricsFieldData:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v13 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  result = sub_1D961B690(a6, a9 + *(v13 + 28));
  v15 = (a9 + *(v13 + 32));
  *v15 = a7;
  v15[1] = a8;
  return result;
}

uint64_t sub_1D961B690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D961B704()
{
  v1 = *v0;
  v2 = 0x6D6F6942776F6873;
  v3 = 0x656D614E707061;
  v4 = 0x4C52556E6F6369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x546C6C6174736E69;
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

uint64_t sub_1D961B7B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D962413C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D961B7E0(uint64_t a1)
{
  v2 = sub_1D9621C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961B81C(uint64_t a1)
{
  v2 = sub_1D9621C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21920, &qword_1D9675158);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9621C44();
  sub_1D966F118();
  LOBYTE(v14) = 0;
  sub_1D966EF48();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1D966EF38();
    LOBYTE(v14) = 2;
    sub_1D966EF38();
    v9 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
    LOBYTE(v14) = 3;
    sub_1D966E5B8();
    sub_1D9621D00(&qword_1ECB20860, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1D966EF18();
    v10 = (v3 + *(v9 + 32));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 4;
    sub_1D961B554(v14, v11);
    sub_1D9621C98();
    sub_1D966EF18();
    sub_1D9621CEC(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t InstallSheetContext.Source.AppStoreSheetContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21938, &qword_1D9675160);
  v7 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v18 - v8;
  v10 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D9621C44();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v14 = v19;
  LOBYTE(v22) = 0;
  *v12 = sub_1D966EE68() & 1;
  LOBYTE(v22) = 1;
  *(v12 + 1) = sub_1D966EE58();
  *(v12 + 2) = v15;
  LOBYTE(v22) = 2;
  *(v12 + 3) = sub_1D966EE58();
  *(v12 + 4) = v16;
  sub_1D966E5B8();
  LOBYTE(v22) = 3;
  sub_1D9621D00(&qword_1ECB20870, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1D966EE38();
  sub_1D961B690(v6, &v12[*(v10 + 28)]);
  v23 = 4;
  sub_1D9621D48();
  sub_1D966EE38();
  (*(v7 + 8))(v9, v20);
  *&v12[*(v10 + 32)] = v22;
  sub_1D96221B8(v12, v14, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1D9622220(v12, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
}

uint64_t InstallSheetContext.Source.WebInstallContext.appName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t InstallSheetContext.Source.WebInstallContext.iconURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);

  return sub_1D95E5820(v3, a1);
}

uint64_t InstallSheetContext.Source.WebInstallContext.init(domain:developerName:developerID:appName:isUpdate:iconURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v11 = a9 + *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);

  return sub_1D961B690(a11, v11);
}

uint64_t sub_1D961C034()
{
  v1 = *v0;
  v2 = 0x6E69616D6F64;
  v3 = 0x656D614E707061;
  v4 = 0x6574616470557369;
  if (v1 != 4)
  {
    v4 = 0x4C52556E6F6369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65706F6C65766564;
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

uint64_t sub_1D961C100@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9624300(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D961C128(uint64_t a1)
{
  v2 = sub_1D9622164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961C164(uint64_t a1)
{
  v2 = sub_1D9622164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallSheetContext.Source.WebInstallContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21948, &qword_1D9675168);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9622164();
  sub_1D966F118();
  v8[15] = 0;
  sub_1D966EF38();
  if (!v1)
  {
    v8[14] = 1;
    sub_1D966EF38();
    v8[13] = 2;
    sub_1D966EF38();
    v8[12] = 3;
    sub_1D966EF38();
    v8[11] = 4;
    sub_1D966EF48();
    type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
    v8[10] = 5;
    sub_1D966E5B8();
    sub_1D9621D00(&qword_1ECB20860, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1D966EF18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InstallSheetContext.Source.WebInstallContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21958, &qword_1D9675170);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9622164();
  v26 = v9;
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v6;
  v13 = v24;
  v14 = v25;
  v32 = 0;
  *v12 = sub_1D966EE58();
  *(v12 + 1) = v15;
  v31 = 1;
  *(v12 + 2) = sub_1D966EE58();
  *(v12 + 3) = v16;
  v30 = 2;
  *(v12 + 4) = sub_1D966EE58();
  *(v12 + 5) = v17;
  v29 = 3;
  *(v12 + 6) = sub_1D966EE58();
  *(v12 + 7) = v18;
  v28 = 4;
  v12[64] = sub_1D966EE68() & 1;
  sub_1D966E5B8();
  v27 = 5;
  sub_1D9621D00(&qword_1ECB20870, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v19 = v22;
  sub_1D966EE38();
  (*(v13 + 8))(v26, v14);
  sub_1D961B690(v19, &v12[*(v10 + 36)]);
  sub_1D96221B8(v12, v23, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9622220(v12, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
}

uint64_t InstallSheetContext.Source.DistributorContext.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InstallSheetContext.Source.DistributorContext.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InstallSheetContext.Source.DistributorContext.appName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D961C97C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_1D95E5820(v4, a2);
}

uint64_t InstallSheetContext.Source.DistributorContext.init(name:id:appName:iconURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v9 = a8 + *(type metadata accessor for InstallSheetContext.Source.DistributorContext(0) + 28);

  return sub_1D961B690(a7, v9);
}

uint64_t sub_1D961CA20()
{
  v1 = 1701667182;
  v2 = 0x656D614E707061;
  if (*v0 != 2)
  {
    v2 = 0x4C52556E6F6369;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t sub_1D961CA88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9624504(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D961CAB0(uint64_t a1)
{
  v2 = sub_1D9622614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961CAEC(uint64_t a1)
{
  v2 = sub_1D9622614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallSheetContext.Source.DistributorContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21960, &qword_1D9675178);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9622614();
  sub_1D966F118();
  v8[15] = 0;
  sub_1D966EF38();
  if (!v1)
  {
    v8[14] = 1;
    sub_1D966EF38();
    v8[13] = 2;
    sub_1D966EF38();
    type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
    v8[12] = 3;
    sub_1D966E5B8();
    sub_1D9621D00(&qword_1ECB20860, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1D966EF18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t InstallSheetContext.Source.DistributorContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21970, &qword_1D9675180);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9622614();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v6;
  v15 = v23;
  v14 = v24;
  v28 = 0;
  *v12 = sub_1D966EE58();
  v12[1] = v16;
  v27 = 1;
  v12[2] = sub_1D966EE58();
  v12[3] = v17;
  v26 = 2;
  v20[1] = 0;
  v12[4] = sub_1D966EE58();
  v12[5] = v18;
  sub_1D966E5B8();
  v25 = 3;
  sub_1D9621D00(&qword_1ECB20870, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1D966EE38();
  (*(v15 + 8))(v9, v14);
  sub_1D961B690(v13, v12 + *(v21 + 28));
  sub_1D96221B8(v12, v22, type metadata accessor for InstallSheetContext.Source.DistributorContext);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9622220(v12, type metadata accessor for InstallSheetContext.Source.DistributorContext);
}

uint64_t InstallSheetContext.Source.isAppStore.getter()
{
  v1 = type metadata accessor for InstallSheetContext.Source(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D96221B8(v0, v3, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 1;
  v6 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext;
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_9:
      sub_1D9622220(v3, v6);
      return v5;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v5 = 0;
      v6 = type metadata accessor for InstallSheetContext.Source.DistributorContext;
      goto LABEL_9;
    }

LABEL_8:
    v5 = 0;
    v6 = type metadata accessor for InstallSheetContext.Source;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v5 = 0;
    v6 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
    goto LABEL_9;
  }

  return v5;
}

uint64_t InstallSheetContext.Source.isWebInstall.getter()
{
  v1 = v0;
  v2 = type metadata accessor for InstallSheetContext.Source(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InstallSheetContext.Source;
  sub_1D96221B8(v1, v4, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v7 = 1;
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v7 = 1;
      v8 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
    }

    else
    {
      v7 = 0;
      v8 = type metadata accessor for InstallSheetContext.Source;
    }

    v5 = v8;
  }

  sub_1D9622220(v4, v5);
  return v7;
}

uint64_t sub_1D961D398(uint64_t a1)
{
  v2 = sub_1D96228E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D3D4(uint64_t a1)
{
  v2 = sub_1D96228E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961D410(uint64_t a1)
{
  v2 = sub_1D9622894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D44C(uint64_t a1)
{
  v2 = sub_1D9622894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D961D488()
{
  v1 = *v0;
  v2 = 0x65726F7453707061;
  v3 = 0xD000000000000016;
  v4 = 6448503;
  if (v1 != 4)
  {
    v4 = 0x4368746957626577;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x7562697274736964;
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

uint64_t sub_1D961D55C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9624660(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D961D584(uint64_t a1)
{
  v2 = sub_1D9622688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D5C0(uint64_t a1)
{
  v2 = sub_1D9622688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961D5FC()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D961D624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D961D6F8(uint64_t a1)
{
  v2 = sub_1D9622840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D734(uint64_t a1)
{
  v2 = sub_1D9622840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961D770(uint64_t a1)
{
  v2 = sub_1D96227EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D7AC(uint64_t a1)
{
  v2 = sub_1D96227EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961D7E8()
{
  if (*v0)
  {
    return 0x65706F6C65766564;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1D961D82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D961D90C(uint64_t a1)
{
  v2 = sub_1D9622730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D948(uint64_t a1)
{
  v2 = sub_1D9622730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961D984(uint64_t a1)
{
  v2 = sub_1D96226DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961D9C0(uint64_t a1)
{
  v2 = sub_1D96226DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallSheetContext.Source.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21978, &qword_1D9675188);
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v48 - v3;
  v62 = type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21980, &qword_1D9675190);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21988, &qword_1D9675198);
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v48 - v7;
  v54 = type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21990, &qword_1D96751A0);
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v48 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21998, &qword_1D96751A8);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v48 - v11;
  v49 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB219A0, &qword_1D96751B0);
  v48 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for InstallSheetContext.Source(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB219A8, &qword_1D96751B8);
  v70 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9622688();
  v71 = v21;
  sub_1D966F118();
  sub_1D96221B8(v73, v18, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v34 = v50;
      sub_1D9622784(v18, v50, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v75[0] = 1;
      sub_1D9622894();
      v35 = v51;
      v36 = v71;
      sub_1D966EED8();
      sub_1D9621D00(&qword_1ECB219F0, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext, &protocol conformance descriptor for InstallSheetContext.Source.AppStoreSheetContext);
      v37 = v53;
      sub_1D966EF68();
      (*(v52 + 8))(v35, v37);
      sub_1D9622220(v34, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      return (*(v70 + 8))(v36, v19);
    }

    v23 = v72;
    v24 = v19;
    if (EnumCaseMultiPayload == 1)
    {
      v78 = 2;
      sub_1D9622840();
      v25 = v55;
      v26 = v71;
      sub_1D966EED8();
      v77 = 0;
      v27 = v57;
      sub_1D966EF38();

      if (!v23)
      {
        v76 = 1;
        sub_1D966EF38();
      }

      (*(v56 + 8))(v25, v27);
      v46 = *(v70 + 8);
      v47 = v26;
    }

    else
    {
      v42 = v58;
      sub_1D9622784(v18, v58, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v79 = 3;
      sub_1D96227EC();
      v43 = v59;
      v44 = v71;
      sub_1D966EED8();
      sub_1D9621D00(&qword_1ECB219D8, type metadata accessor for InstallSheetContext.Source.DistributorContext, &protocol conformance descriptor for InstallSheetContext.Source.DistributorContext);
      v45 = v61;
      sub_1D966EF68();
      (*(v60 + 8))(v43, v45);
      sub_1D9622220(v42, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v46 = *(v70 + 8);
      v47 = v44;
    }

    return v46(v47, v24);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v82 = 4;
    sub_1D9622730();
    v38 = v63;
    v24 = v19;
    v39 = v71;
    sub_1D966EED8();
    v81 = 0;
    v40 = v67;
    v41 = v72;
    sub_1D966EF38();

    if (!v41)
    {
      v80 = 1;
      sub_1D966EF38();
    }

    (*(v65 + 8))(v38, v40);
    v46 = *(v70 + 8);
    v47 = v39;
    return v46(v47, v24);
  }

  v28 = v19;
  v29 = v71;
  if (EnumCaseMultiPayload == 4)
  {
    v30 = v64;
    sub_1D9622784(v18, v64, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
    v83 = 5;
    sub_1D96226DC();
    v31 = v66;
    sub_1D966EED8();
    sub_1D9621D00(&qword_1ECB219C0, type metadata accessor for InstallSheetContext.Source.WebInstallContext, &protocol conformance descriptor for InstallSheetContext.Source.WebInstallContext);
    v32 = v69;
    sub_1D966EF68();
    (*(v68 + 8))(v31, v32);
    sub_1D9622220(v30, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
  }

  else
  {
    v74 = 0;
    sub_1D96228E8();
    sub_1D966EED8();
    (*(v48 + 8))(v15, v13);
  }

  return (*(v70 + 8))(v29, v28);
}

uint64_t InstallSheetContext.Source.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A00, &qword_1D96751C0);
  v4 = *(v3 - 8);
  v94 = v3;
  v95 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v104 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A08, &qword_1D96751C8);
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v77 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A10, &qword_1D96751D0);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v102 = &v77 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A18, &qword_1D96751D8);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v101 = &v77 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A20, &qword_1D96751E0);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v96 = &v77 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A28, &qword_1D96751E8);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v99 = &v77 - v11;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A30, &unk_1D96751F0);
  v105 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v13 = &v77 - v12;
  v98 = type metadata accessor for InstallSheetContext.Source(0);
  v14 = MEMORY[0x1EEE9AC00](v98);
  v85 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v77 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v77 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v77 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v77 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v77 - v28;
  v30 = a1[3];
  v107 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1D9622688();
  v31 = v106;
  sub_1D966F0F8();
  if (!v31)
  {
    v80 = v27;
    v32 = v99;
    v81 = v21;
    v78 = v24;
    v79 = v18;
    v106 = 0;
    v33 = v101;
    v34 = v102;
    v36 = v103;
    v35 = v104;
    v82 = v29;
    v37 = v100;
    v38 = sub_1D966EEB8();
    v39 = (2 * *(v38 + 16)) | 1;
    v108 = v38;
    v109 = v38 + 32;
    v110 = 0;
    v111 = v39;
    v40 = sub_1D9605E28();
    if (v40 == 6 || v110 != v111 >> 1)
    {
      v47 = sub_1D966ED58();
      swift_allocError();
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
      *v49 = v98;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
      swift_willThrow();
      goto LABEL_10;
    }

    if (v40 <= 2u)
    {
      if (!v40)
      {
        v112 = 0;
        sub_1D96228E8();
        v54 = v106;
        sub_1D966EDE8();
        v41 = v97;
        if (!v54)
        {
          (*(v83 + 8))(v32, v84);
          (*(v105 + 8))(v13, v37);
          swift_unknownObjectRelease();
          v46 = v82;
          swift_storeEnumTagMultiPayload();
          goto LABEL_29;
        }

        goto LABEL_10;
      }

      v41 = v97;
      v42 = v106;
      if (v40 == 1)
      {
        v112 = 1;
        sub_1D9622894();
        v43 = v96;
        sub_1D966EDE8();
        if (!v42)
        {
          type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
          sub_1D9621D00(&qword_1ECB21A48, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext, &protocol conformance descriptor for InstallSheetContext.Source.AppStoreSheetContext);
          v44 = v80;
          v45 = v87;
          sub_1D966EE88();
          (*(v86 + 8))(v43, v45);
          (*(v105 + 8))(v13, v37);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v46 = v82;
          sub_1D9622784(v44, v82, type metadata accessor for InstallSheetContext.Source);
LABEL_29:
          sub_1D9622784(v46, v41, type metadata accessor for InstallSheetContext.Source);
          return __swift_destroy_boxed_opaque_existential_1(v107);
        }

        goto LABEL_10;
      }

      v112 = 2;
      sub_1D9622840();
      sub_1D966EDE8();
      if (v42)
      {
LABEL_10:
        (*(v105 + 8))(v13, v37);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v107);
      }

      v112 = 0;
      v61 = v89;
      v62 = sub_1D966EE58();
      v69 = v68;
      v106 = v62;
      v112 = 1;
      v104 = sub_1D966EE58();
      v70 = v61;
      v71 = (v105 + 8);
      v76 = v75;
      (*(v88 + 8))(v33, v70);
      (*v71)(v13, v37);
      swift_unknownObjectRelease();
      v74 = v78;
      *v78 = v106;
      v74[1] = v69;
      v74[2] = v104;
      v74[3] = v76;
      goto LABEL_27;
    }

    if (v40 == 3)
    {
      v112 = 3;
      sub_1D96227EC();
      v55 = v106;
      sub_1D966EDE8();
      if (v55)
      {
        goto LABEL_10;
      }

      type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
      sub_1D9621D00(&qword_1ECB21A40, type metadata accessor for InstallSheetContext.Source.DistributorContext, &protocol conformance descriptor for InstallSheetContext.Source.DistributorContext);
      v56 = v81;
      v57 = v91;
      sub_1D966EE88();
      v58 = v105;
      (*(v90 + 8))(v34, v57);
      (*(v58 + 8))(v13, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v40 == 4)
      {
        v112 = 4;
        sub_1D9622730();
        v51 = v106;
        sub_1D966EDE8();
        if (v51)
        {
          goto LABEL_10;
        }

        v112 = 0;
        v52 = v93;
        v53 = sub_1D966EE58();
        v64 = v63;
        v65 = v13;
        v106 = v53;
        v112 = 1;
        v104 = sub_1D966EE58();
        v66 = (v105 + 8);
        v73 = v72;
        (*(v92 + 8))(v36, v52);
        (*v66)(v65, v37);
        swift_unknownObjectRelease();
        v74 = v79;
        *v79 = v106;
        v74[1] = v64;
        v74[2] = v104;
        v74[3] = v73;
LABEL_27:
        swift_storeEnumTagMultiPayload();
        v67 = v74;
        goto LABEL_28;
      }

      v112 = 5;
      sub_1D96226DC();
      v59 = v106;
      sub_1D966EDE8();
      if (v59)
      {
        goto LABEL_10;
      }

      type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
      sub_1D9621D00(&qword_1ECB21A38, type metadata accessor for InstallSheetContext.Source.WebInstallContext, &protocol conformance descriptor for InstallSheetContext.Source.WebInstallContext);
      v56 = v85;
      v60 = v94;
      sub_1D966EE88();
      (*(v95 + 8))(v35, v60);
      (*(v105 + 8))(v13, v37);
      swift_unknownObjectRelease();
    }

    swift_storeEnumTagMultiPayload();
    v67 = v56;
LABEL_28:
    v46 = v82;
    sub_1D9622784(v67, v82, type metadata accessor for InstallSheetContext.Source);
    v41 = v97;
    goto LABEL_29;
  }

  return __swift_destroy_boxed_opaque_existential_1(v107);
}

uint64_t sub_1D961F3D8(uint64_t a1)
{
  v2 = sub_1D96229E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961F414(uint64_t a1)
{
  v2 = sub_1D96229E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961F450()
{
  if (*v0)
  {
    return 0x6C7074656B72616DLL;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_1D961F48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xEB00000000656361)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D961F56C(uint64_t a1)
{
  v2 = sub_1D962293C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961F5A8(uint64_t a1)
{
  v2 = sub_1D962293C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D961F5E4(uint64_t a1)
{
  v2 = sub_1D9622990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D961F620(uint64_t a1)
{
  v2 = sub_1D9622990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallSheetContext.InstallType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A50, &qword_1D9675200);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A58, &qword_1D9675208);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A60, &qword_1D9675210);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D962293C();
  sub_1D966F118();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D9622990();
    v14 = v18;
    sub_1D966EED8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D96229E4();
    sub_1D966EED8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t InstallSheetContext.InstallType.hashValue.getter()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733F80](v1);
  return sub_1D966F0C8();
}

uint64_t InstallSheetContext.InstallType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A80, &qword_1D9675218);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A88, &qword_1D9675220);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A90, &qword_1D9675228);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D962293C();
  v12 = v31;
  sub_1D966F0F8();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D966EEB8();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D9605E20();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D966ED58();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
      *v22 = &type metadata for InstallSheetContext.InstallType;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D9622990();
        sub_1D966EDE8();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D96229E4();
        sub_1D966EDE8();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t InstallSheetContext.versionID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InstallSheetContext.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InstallSheetContext(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t InstallSheetContext.authenticationContextData.getter()
{
  v1 = v0 + *(type metadata accessor for InstallSheetContext(0) + 36);
  v2 = *v1;
  sub_1D961B554(*v1, *(v1 + 8));
  return v2;
}

uint64_t InstallSheetContext.learnMoreURL.getter()
{
  v1 = *(v0 + *(type metadata accessor for InstallSheetContext(0) + 40));

  return v1;
}

uint64_t InstallSheetContext.init(itemID:versionID:source:type:logKey:learnMoreURL:authenticationContextData:showBiometricsForAppStoreInstall:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *a6;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a7;
  a9[5] = a8;
  v17 = type metadata accessor for InstallSheetContext(0);
  result = sub_1D9622784(a5, a9 + v17[7], type metadata accessor for InstallSheetContext.Source);
  *(a9 + v17[8]) = v16;
  v19 = (a9 + v17[10]);
  *v19 = a10;
  v19[1] = a11;
  v20 = (a9 + v17[9]);
  *v20 = a12;
  v20[1] = a13;
  *(a9 + v17[11]) = a14;
  return result;
}

unint64_t sub_1D962007C()
{
  v1 = *v0;
  v2 = 0x44496D657469;
  v3 = 0x726F4D6E7261656CLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000020;
  }

  v4 = 1701869940;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x79654B676F6CLL;
  if (v1 != 2)
  {
    v5 = 0x656372756F73;
  }

  if (*v0)
  {
    v2 = 0x496E6F6973726576;
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

uint64_t sub_1D962017C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9624874(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D96201B0(uint64_t a1)
{
  v2 = sub_1D9622A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96201EC(uint64_t a1)
{
  v2 = sub_1D9622A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InstallSheetContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21A98, &qword_1D9675230);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9622A58();
  sub_1D966F118();
  LOBYTE(v14) = 0;
  sub_1D966EF38();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1D966EEE8();
    LOBYTE(v14) = 2;
    sub_1D966EF38();
    v9 = type metadata accessor for InstallSheetContext(0);
    LOBYTE(v14) = 3;
    type metadata accessor for InstallSheetContext.Source(0);
    sub_1D9621D00(&qword_1ECB21AA8, type metadata accessor for InstallSheetContext.Source, &protocol conformance descriptor for InstallSheetContext.Source);
    sub_1D966EF68();
    LOBYTE(v14) = *(v3 + *(v9 + 32));
    v16 = 4;
    sub_1D9622AAC();
    sub_1D966EF68();
    v10 = (v3 + *(v9 + 36));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v16 = 5;
    sub_1D961B554(v14, v11);
    sub_1D9621C98();
    sub_1D966EF18();
    sub_1D9621CEC(v14, v15);
    LOBYTE(v14) = 6;
    sub_1D966EF38();
    LOBYTE(v14) = 7;
    sub_1D966EF48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t InstallSheetContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for InstallSheetContext.Source(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21AB8, &qword_1D9675238);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v27 - v7;
  v9 = type metadata accessor for InstallSheetContext(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D9622A58();
  v30 = v8;
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v13 = v29;
  LOBYTE(v33) = 0;
  *v11 = sub_1D966EE58();
  v11[1] = v15;
  LOBYTE(v33) = 1;
  v11[2] = sub_1D966EE08();
  v11[3] = v16;
  LOBYTE(v33) = 2;
  v17 = sub_1D966EE58();
  v27 = 0;
  v11[4] = v17;
  v11[5] = v18;
  LOBYTE(v33) = 3;
  sub_1D9621D00(&qword_1ECB21AC0, type metadata accessor for InstallSheetContext.Source, &protocol conformance descriptor for InstallSheetContext.Source);
  v19 = v27;
  sub_1D966EE88();
  v27 = v19;
  if (v19)
  {
    (*(v13 + 8))(v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    sub_1D9622784(v6, v11 + v9[7], type metadata accessor for InstallSheetContext.Source);
    v34 = 4;
    sub_1D9622B00();
    v20 = v30;
    v21 = v31;
    v22 = v27;
    sub_1D966EE88();
    if (v22)
    {
      (*(v13 + 8))(v20, v21);
      __swift_destroy_boxed_opaque_existential_1(v32);

      return sub_1D9622220(v11 + v9[7], type metadata accessor for InstallSheetContext.Source);
    }

    else
    {
      *(v11 + v9[8]) = v33;
      v34 = 5;
      sub_1D9621D48();
      sub_1D966EE38();
      *(v11 + v9[9]) = v33;
      LOBYTE(v33) = 6;
      v23 = sub_1D966EE58();
      v24 = (v11 + v9[10]);
      *v24 = v23;
      v24[1] = v25;
      LOBYTE(v33) = 7;
      v26 = sub_1D966EE68();
      (*(v13 + 8))(v20, v21);
      *(v11 + v9[11]) = v26 & 1;
      sub_1D96221B8(v11, v28, type metadata accessor for InstallSheetContext);
      __swift_destroy_boxed_opaque_existential_1(v32);
      return sub_1D9622220(v11, type metadata accessor for InstallSheetContext);
    }
  }
}

uint64_t sub_1D9620B18@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D966E518();
    if (v10)
    {
      v11 = sub_1D966E538();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D966E528();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D966E518();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D966E538();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D966E528();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D9620D48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D9620ED8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D95EA55C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1D9620B18(v13, a3, a4, &v12);
  v10 = v4;
  sub_1D95EA55C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1D9620ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D966E518();
  v11 = result;
  if (result)
  {
    result = sub_1D966E538();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D966E528();
  sub_1D9620B18(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1D9620F90(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D95EA68C(a3, a4);
          return sub_1D9620D48(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s14MarketplaceKit19InstallSheetContextV6SourceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = type metadata accessor for InstallSheetContext.Source.WebInstallContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InstallSheetContext.Source.DistributorContext(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for InstallSheetContext.Source(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v57 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v57 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v57 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v57 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21C10, &qword_1D9676478);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = (&v57 + *(v26 + 56) - v27);
  v29 = a1;
  v30 = &v57 - v27;
  sub_1D96221B8(v29, &v57 - v27, type metadata accessor for InstallSheetContext.Source);
  sub_1D96221B8(v60, v28, type metadata accessor for InstallSheetContext.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D96221B8(v30, v16, type metadata accessor for InstallSheetContext.Source);
      v47 = *v16;
      v46 = v16[1];
      v49 = v16[2];
      v48 = v16[3];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v51 = v28[2];
        v50 = v28[3];
        if (v47 == *v28 && v46 == v28[1])
        {
        }

        else
        {
          v53 = sub_1D966EFB8();

          if ((v53 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        if (v49 == v51 && v48 == v50)
        {
          goto LABEL_43;
        }

LABEL_44:
        v55 = sub_1D966EFB8();

        if (v55)
        {
          goto LABEL_45;
        }

        goto LABEL_47;
      }

      goto LABEL_28;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    sub_1D96221B8(v30, v13, type metadata accessor for InstallSheetContext.Source);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v40 = v59;
      sub_1D9622784(v28, v59, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
      v41 = _s14MarketplaceKit19InstallSheetContextV6SourceO03WebcE0V2eeoiySbAG_AGtFZ_0(v13, v40);
      v42 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
      sub_1D9622220(v40, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
      v43 = v13;
LABEL_35:
      sub_1D9622220(v43, v42);
      sub_1D9622220(v30, type metadata accessor for InstallSheetContext.Source);
      return v41;
    }

    v44 = type metadata accessor for InstallSheetContext.Source.WebInstallContext;
    v45 = v13;
LABEL_31:
    sub_1D9622220(v45, v44);
    goto LABEL_32;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D96221B8(v30, v24, type metadata accessor for InstallSheetContext.Source);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1D9622784(v28, v9, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v41 = _s14MarketplaceKit19InstallSheetContextV6SourceO08AppStoredE0V2eeoiySbAG_AGtFZ_0(v24, v9);
      v42 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext;
      sub_1D9622220(v9, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
      v43 = v24;
      goto LABEL_35;
    }

    v44 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext;
    v45 = v24;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D96221B8(v30, v19, type metadata accessor for InstallSheetContext.Source);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v54 = v58;
      sub_1D9622784(v28, v58, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v41 = _s14MarketplaceKit19InstallSheetContextV6SourceO011DistributorE0V2eeoiySbAG_AGtFZ_0(v19, v54);
      v42 = type metadata accessor for InstallSheetContext.Source.DistributorContext;
      sub_1D9622220(v54, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      v43 = v19;
      goto LABEL_35;
    }

    v44 = type metadata accessor for InstallSheetContext.Source.DistributorContext;
    v45 = v19;
    goto LABEL_31;
  }

  sub_1D96221B8(v30, v22, type metadata accessor for InstallSheetContext.Source);
  v33 = *v22;
  v32 = v22[1];
  v35 = v22[2];
  v34 = v22[3];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v28[2];
    v36 = v28[3];
    if (v33 == *v28 && v32 == v28[1])
    {

LABEL_41:
      if (v35 == v37 && v34 == v36)
      {
LABEL_43:

LABEL_45:
        sub_1D9622220(v30, type metadata accessor for InstallSheetContext.Source);
        return 1;
      }

      goto LABEL_44;
    }

    v39 = sub_1D966EFB8();

    if (v39)
    {
      goto LABEL_41;
    }

LABEL_23:

LABEL_47:
    sub_1D9622220(v30, type metadata accessor for InstallSheetContext.Source);
    return 0;
  }

LABEL_28:

LABEL_32:
  sub_1D95EA898(v30, &qword_1ECB21C10, &qword_1D9676478);
  return 0;
}

BOOL _s14MarketplaceKit19InstallSheetContextV6SourceO08AppStoredE0V2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D966E5B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21C18, &unk_1D9676480);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  if (*a1 != *a2 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1D966EFB8() & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_1D966EFB8() & 1) == 0)
  {
    return 0;
  }

  v29 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext(0);
  v14 = *(v29 + 28);
  v15 = *(v11 + 48);
  sub_1D95E5820(a1 + v14, v13);
  sub_1D95E5820(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D95EA898(v13, &qword_1ECB20848, &qword_1D9670000);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  sub_1D95E5820(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_1D95EA898(v13, &qword_1ECB21C18, &unk_1D9676480);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1D9621D00(&unk_1ECB21C20, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v17 = sub_1D966E978();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  sub_1D95EA898(v13, &qword_1ECB20848, &qword_1D9670000);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v19 = *(v29 + 32);
  v20 = a1 + v19;
  v22 = *(a1 + v19);
  v21 = *(v20 + 1);
  v23 = (a2 + v19);
  v25 = *v23;
  v24 = v23[1];
  if (v21 >> 60 == 15)
  {
    if (v24 >> 60 == 15)
    {
      sub_1D961B554(v22, *(v20 + 1));
      sub_1D961B554(v25, v24);
      sub_1D9621CEC(v22, v21);
      return 1;
    }

    goto LABEL_19;
  }

  if (v24 >> 60 == 15)
  {
LABEL_19:
    sub_1D961B554(v22, *(v20 + 1));
    sub_1D961B554(v25, v24);
    sub_1D9621CEC(v22, v21);
    sub_1D9621CEC(v25, v24);
    return 0;
  }

  sub_1D961B554(v22, *(v20 + 1));
  sub_1D961B554(v25, v24);
  v27 = sub_1D9620F90(v22, v21, v25, v24);
  sub_1D9621CEC(v25, v24);
  sub_1D9621CEC(v22, v21);
  return v27;
}

unint64_t sub_1D9621C44()
{
  result = qword_1ECB21928;
  if (!qword_1ECB21928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21928);
  }

  return result;
}

unint64_t sub_1D9621C98()
{
  result = qword_1ECB21930;
  if (!qword_1ECB21930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21930);
  }

  return result;
}

uint64_t sub_1D9621CEC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D95EA55C(result, a2);
  }

  return result;
}

uint64_t sub_1D9621D00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D9621D48()
{
  result = qword_1ECB21940;
  if (!qword_1ECB21940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21940);
  }

  return result;
}

BOOL _s14MarketplaceKit19InstallSheetContextV6SourceO03WebcE0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D966E5B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21C18, &unk_1D9676480);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 && (sub_1D966EFB8() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D966EFB8() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D966EFB8() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D966EFB8() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v14 = *(type metadata accessor for InstallSheetContext.Source.WebInstallContext(0) + 36);
  v15 = *(v11 + 48);
  sub_1D95E5820(a1 + v14, v13);
  sub_1D95E5820(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D95E5820(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1D9621D00(&unk_1ECB21C20, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v18 = sub_1D966E978();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D95EA898(v13, &qword_1ECB20848, &qword_1D9670000);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_18:
    sub_1D95EA898(v13, &qword_1ECB21C18, &unk_1D9676480);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_18;
  }

  sub_1D95EA898(v13, &qword_1ECB20848, &qword_1D9670000);
  return 1;
}

unint64_t sub_1D9622164()
{
  result = qword_1ECB21950;
  if (!qword_1ECB21950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21950);
  }

  return result;
}

uint64_t sub_1D96221B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9622220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s14MarketplaceKit19InstallSheetContextV6SourceO011DistributorE0V2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D966E5B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20848, &qword_1D9670000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21C18, &unk_1D9676480);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 && (sub_1D966EFB8() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D966EFB8() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D966EFB8() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for InstallSheetContext.Source.DistributorContext(0) + 28);
  v15 = *(v11 + 48);
  sub_1D95E5820(a1 + v14, v13);
  sub_1D95E5820(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D95E5820(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1D9621D00(&unk_1ECB21C20, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v18 = sub_1D966E978();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D95EA898(v13, &qword_1ECB20848, &qword_1D9670000);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_14:
    sub_1D95EA898(v13, &qword_1ECB21C18, &unk_1D9676480);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_1D95EA898(v13, &qword_1ECB20848, &qword_1D9670000);
  return 1;
}

unint64_t sub_1D9622614()
{
  result = qword_1ECB21968;
  if (!qword_1ECB21968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21968);
  }

  return result;
}

unint64_t sub_1D9622688()
{
  result = qword_1ECB219B0;
  if (!qword_1ECB219B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219B0);
  }

  return result;
}

unint64_t sub_1D96226DC()
{
  result = qword_1ECB219B8;
  if (!qword_1ECB219B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219B8);
  }

  return result;
}

unint64_t sub_1D9622730()
{
  result = qword_1ECB219C8;
  if (!qword_1ECB219C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219C8);
  }

  return result;
}

uint64_t sub_1D9622784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D96227EC()
{
  result = qword_1ECB219D0;
  if (!qword_1ECB219D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219D0);
  }

  return result;
}

unint64_t sub_1D9622840()
{
  result = qword_1ECB219E0;
  if (!qword_1ECB219E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219E0);
  }

  return result;
}

unint64_t sub_1D9622894()
{
  result = qword_1ECB219E8;
  if (!qword_1ECB219E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219E8);
  }

  return result;
}

unint64_t sub_1D96228E8()
{
  result = qword_1ECB219F8;
  if (!qword_1ECB219F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB219F8);
  }

  return result;
}

unint64_t sub_1D962293C()
{
  result = qword_1ECB21A68;
  if (!qword_1ECB21A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21A68);
  }

  return result;
}

unint64_t sub_1D9622990()
{
  result = qword_1ECB21A70;
  if (!qword_1ECB21A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21A70);
  }

  return result;
}

unint64_t sub_1D96229E4()
{
  result = qword_1ECB21A78;
  if (!qword_1ECB21A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21A78);
  }

  return result;
}

unint64_t sub_1D9622A58()
{
  result = qword_1ECB21AA0;
  if (!qword_1ECB21AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AA0);
  }

  return result;
}

unint64_t sub_1D9622AAC()
{
  result = qword_1ECB21AB0;
  if (!qword_1ECB21AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AB0);
  }

  return result;
}

unint64_t sub_1D9622B00()
{
  result = qword_1ECB21AC8;
  if (!qword_1ECB21AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AC8);
  }

  return result;
}

unint64_t sub_1D9622B58()
{
  result = qword_1ECB21AD0;
  if (!qword_1ECB21AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AD0);
  }

  return result;
}

void sub_1D9622BD4(uint64_t a1)
{
  sub_1D960D9D8(319, &qword_1EDCF6218, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for InstallSheetContext.Source(319);
    if (v2 <= 0x3F)
    {
      sub_1D960D9D8(319, &qword_1EDCF6660, MEMORY[0x1E6969080]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9622CB4(uint64_t a1)
{
  sub_1D9622DD8(319, qword_1EDCF64F8, type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext);
  if (v1 <= 0x3F)
  {
    sub_1D960450C(319, &qword_1EDCF6228, "name id ");
    if (v2 <= 0x3F)
    {
      sub_1D9622DD8(319, &qword_1EDCF6640, type metadata accessor for InstallSheetContext.Source.DistributorContext);
      if (v3 <= 0x3F)
      {
        sub_1D960450C(319, &qword_1EDCF6220, "domain developerName ");
        if (v4 <= 0x3F)
        {
          sub_1D9622DD8(319, qword_1EDCF65A0, type metadata accessor for InstallSheetContext.Source.WebInstallContext);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D9622DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

void sub_1D9622E4C(uint64_t a1)
{
  sub_1D95E9634(319);
  if (v1 <= 0x3F)
  {
    sub_1D960D9D8(319, &qword_1EDCF6660, MEMORY[0x1E6969080]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9622F28(uint64_t a1)
{
  sub_1D95E9634(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D9622FE0(uint64_t a1)
{
  sub_1D95E9634(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for InstallSheetContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InstallSheetContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetPrivateDataRequest.Request.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SetPrivateDataRequest.Request.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D96233D8()
{
  result = qword_1ECB21AD8;
  if (!qword_1ECB21AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AD8);
  }

  return result;
}

unint64_t sub_1D9623430()
{
  result = qword_1ECB21AE0;
  if (!qword_1ECB21AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AE0);
  }

  return result;
}

unint64_t sub_1D9623488()
{
  result = qword_1ECB21AE8;
  if (!qword_1ECB21AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AE8);
  }

  return result;
}

unint64_t sub_1D96234E0()
{
  result = qword_1ECB21AF0;
  if (!qword_1ECB21AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AF0);
  }

  return result;
}

unint64_t sub_1D9623538()
{
  result = qword_1ECB21AF8;
  if (!qword_1ECB21AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21AF8);
  }

  return result;
}

unint64_t sub_1D9623590()
{
  result = qword_1ECB21B00;
  if (!qword_1ECB21B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B00);
  }

  return result;
}

unint64_t sub_1D96235E8()
{
  result = qword_1ECB21B08;
  if (!qword_1ECB21B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B08);
  }

  return result;
}

unint64_t sub_1D9623640()
{
  result = qword_1ECB21B10;
  if (!qword_1ECB21B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B10);
  }

  return result;
}

unint64_t sub_1D9623698()
{
  result = qword_1ECB21B18;
  if (!qword_1ECB21B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B18);
  }

  return result;
}

unint64_t sub_1D96236F0()
{
  result = qword_1ECB21B20;
  if (!qword_1ECB21B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B20);
  }

  return result;
}

unint64_t sub_1D9623748()
{
  result = qword_1ECB21B28;
  if (!qword_1ECB21B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B28);
  }

  return result;
}

unint64_t sub_1D96237A0()
{
  result = qword_1ECB21B30;
  if (!qword_1ECB21B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B30);
  }

  return result;
}

unint64_t sub_1D96237F8()
{
  result = qword_1ECB21B38;
  if (!qword_1ECB21B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B38);
  }

  return result;
}

unint64_t sub_1D9623850()
{
  result = qword_1ECB21B40;
  if (!qword_1ECB21B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B40);
  }

  return result;
}

unint64_t sub_1D96238A8()
{
  result = qword_1ECB21B48;
  if (!qword_1ECB21B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B48);
  }

  return result;
}

unint64_t sub_1D9623900()
{
  result = qword_1ECB21B50;
  if (!qword_1ECB21B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B50);
  }

  return result;
}

unint64_t sub_1D9623958()
{
  result = qword_1ECB21B58;
  if (!qword_1ECB21B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B58);
  }

  return result;
}

unint64_t sub_1D96239B0()
{
  result = qword_1ECB21B60;
  if (!qword_1ECB21B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B60);
  }

  return result;
}

unint64_t sub_1D9623A08()
{
  result = qword_1ECB21B68;
  if (!qword_1ECB21B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B68);
  }

  return result;
}

unint64_t sub_1D9623A60()
{
  result = qword_1ECB21B70;
  if (!qword_1ECB21B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B70);
  }

  return result;
}

unint64_t sub_1D9623AB8()
{
  result = qword_1ECB21B78;
  if (!qword_1ECB21B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B78);
  }

  return result;
}

unint64_t sub_1D9623B10()
{
  result = qword_1ECB21B80;
  if (!qword_1ECB21B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B80);
  }

  return result;
}

unint64_t sub_1D9623B68()
{
  result = qword_1ECB21B88;
  if (!qword_1ECB21B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B88);
  }

  return result;
}

unint64_t sub_1D9623BC0()
{
  result = qword_1ECB21B90;
  if (!qword_1ECB21B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B90);
  }

  return result;
}

unint64_t sub_1D9623C18()
{
  result = qword_1ECB21B98;
  if (!qword_1ECB21B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21B98);
  }

  return result;
}

unint64_t sub_1D9623C70()
{
  result = qword_1ECB21BA0;
  if (!qword_1ECB21BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BA0);
  }

  return result;
}

unint64_t sub_1D9623CC8()
{
  result = qword_1ECB21BA8;
  if (!qword_1ECB21BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BA8);
  }

  return result;
}

unint64_t sub_1D9623D20()
{
  result = qword_1ECB21BB0;
  if (!qword_1ECB21BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BB0);
  }

  return result;
}

unint64_t sub_1D9623D78()
{
  result = qword_1ECB21BB8;
  if (!qword_1ECB21BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BB8);
  }

  return result;
}

unint64_t sub_1D9623DD0()
{
  result = qword_1ECB21BC0;
  if (!qword_1ECB21BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BC0);
  }

  return result;
}

unint64_t sub_1D9623E28()
{
  result = qword_1ECB21BC8;
  if (!qword_1ECB21BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BC8);
  }

  return result;
}

unint64_t sub_1D9623E80()
{
  result = qword_1ECB21BD0;
  if (!qword_1ECB21BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BD0);
  }

  return result;
}

unint64_t sub_1D9623ED8()
{
  result = qword_1ECB21BD8;
  if (!qword_1ECB21BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BD8);
  }

  return result;
}

unint64_t sub_1D9623F30()
{
  result = qword_1ECB21BE0;
  if (!qword_1ECB21BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BE0);
  }

  return result;
}

unint64_t sub_1D9623F88()
{
  result = qword_1ECB21BE8;
  if (!qword_1ECB21BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BE8);
  }

  return result;
}

unint64_t sub_1D9623FE0()
{
  result = qword_1ECB21BF0;
  if (!qword_1ECB21BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BF0);
  }

  return result;
}

unint64_t sub_1D9624038()
{
  result = qword_1ECB21BF8;
  if (!qword_1ECB21BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21BF8);
  }

  return result;
}

unint64_t sub_1D9624090()
{
  result = qword_1ECB21C00;
  if (!qword_1ECB21C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21C00);
  }

  return result;
}

unint64_t sub_1D96240E8()
{
  result = qword_1ECB21C08;
  if (!qword_1ECB21C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21C08);
  }

  return result;
}

uint64_t sub_1D962413C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F6942776F6873 && a2 == 0xEE00736369727465;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546C6C6174736E69 && a2 == 0xEB00000000657079 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9680C30 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t sub_1D9624300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574616470557369 && a2 == 0xE800000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t sub_1D9624504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C52556E6F6369 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t sub_1D9624660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F7453707061 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9680C50 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEB00000000726F74 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D9680C70 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 6448503 && a2 == 0xE300000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4368746957626577 && a2 == 0xEE00747865746E6FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

uint64_t sub_1D9624874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D966EFB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_1D966EFB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D966EFB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D9680C90 == a2 || (sub_1D966EFB8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEC0000004C525565 || (sub_1D966EFB8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D9680CB0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D966EFB8();

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

MarketplaceKit::SecureButtonTag::ButtonImagePlacement_optional __swiftcall SecureButtonTag.ButtonImagePlacement.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SecureButtonTag.label.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label);

  return v1;
}

uint64_t SecureButtonTag.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName);

  return v1;
}

id SecureButtonTag.__allocating_init(label:imageName:imagePlacement:backgroundColor:foregroundColor:cornerRadius:size:fontSize:borderWidth:borderColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  v27 = objc_allocWithZone(v13);
  v28 = *a5;
  v29 = &v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label];
  *v29 = a1;
  v29[1] = a2;
  v30 = &v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName];
  *v30 = a3;
  v30[1] = a4;
  if (v28 == 4)
  {
    LOBYTE(v28) = 1;
  }

  v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement] = v28;
  *&v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_backgroundColor] = a6;
  *&v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_foregroundColor] = a7;
  *&v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius] = a9;
  v31 = &v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size];
  *v31 = a10;
  v31[1] = a11;
  *&v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize] = a12;
  *&v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth] = a13;
  *&v27[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderColor] = a8;
  v33.receiver = v27;
  v33.super_class = v13;
  return objc_msgSendSuper2(&v33, sel_init);
}

id SecureButtonTag.init(label:imageName:imagePlacement:backgroundColor:foregroundColor:cornerRadius:size:fontSize:borderWidth:borderColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  ObjectType = swift_getObjectType();
  v28 = *a5;
  v29 = &v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label];
  *v29 = a1;
  v29[1] = a2;
  v30 = &v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName];
  *v30 = a3;
  v30[1] = a4;
  if (v28 == 4)
  {
    LOBYTE(v28) = 1;
  }

  v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement] = v28;
  *&v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_backgroundColor] = a6;
  *&v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_foregroundColor] = a7;
  *&v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius] = a9;
  v31 = &v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size];
  *v31 = a10;
  v31[1] = a11;
  *&v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize] = a12;
  *&v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth] = a13;
  *&v13[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderColor] = a8;
  v33.receiver = v13;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_init);
}

id SecureButtonTag.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D9625D30(a1);

  return v4;
}

id SecureButtonTag.init(coder:)(void *a1)
{
  v2 = sub_1D9625D30(a1);

  return v2;
}

Swift::Void __swiftcall SecureButtonTag.encode(with:)(NSCoder with)
{
  v3 = sub_1D966E988();
  v4 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName + 8))
  {
    v5 = sub_1D966E988();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement);
  v8 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_backgroundColor);
  v10 = type metadata accessor for SerializableColor();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor] = v9;
  v37.receiver = v11;
  v37.super_class = v10;
  v12 = v9;
  v13 = objc_msgSendSuper2(&v37, sel_init);
  v14 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_foregroundColor);
  v16 = objc_allocWithZone(v10);
  *&v16[OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor] = v15;
  v36.receiver = v16;
  v36.super_class = v10;
  v17 = v15;
  v18 = objc_msgSendSuper2(&v36, sel_init);
  v19 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

  v20 = sub_1D966E668();
  v21 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];

  v22 = sub_1D966E668();
  v23 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];

  v24 = sub_1D966E668();
  v25 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];

  v26 = sub_1D966E668();
  v27 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];

  v28 = sub_1D966E668();
  v29 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];

  v30 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderColor);
  v31 = objc_allocWithZone(v10);
  *&v31[OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor] = v30;
  v35.receiver = v31;
  v35.super_class = v10;
  v32 = v30;
  v33 = objc_msgSendSuper2(&v35, sel_init);
  v34 = sub_1D966E988();
  [(objc_class *)with.super.isa encodeObject:v33 forKey:v34, v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class];
}

uint64_t SecureButtonTag.hash.getter()
{
  sub_1D966F0D8();
  sub_1D966E9D8();
  if (*(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName + 8))
  {
    sub_1D966F098();
    sub_1D966E9D8();
  }

  else
  {
    sub_1D966F098();
  }

  MEMORY[0x1DA733F80](*(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement));
  type metadata accessor for CGColor(0);
  sub_1D9626180();
  sub_1D966E698();
  sub_1D966E698();
  v1 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA733FA0](*&v1);
  v2 = v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size;
  v3 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1DA733FA0](*&v3);
  v4 = *(v2 + 8);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA733FA0](*&v4);
  v5 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1DA733FA0](*&v5);
  v6 = *(v0 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x1DA733FA0](*&v6);
  sub_1D966E698();
  return sub_1D966F0B8();
}

uint64_t SecureButtonTag.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1D96261D8(a1, v16);
  if (!v17)
  {
    sub_1D9626248(v16);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v13 = 0;
    return v13 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label) == *&v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label] && *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label + 8) == *&v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label + 8];
  if (!v3 && (sub_1D966EFB8() & 1) == 0)
  {
    goto LABEL_27;
  }

  v4 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName + 8);
  v5 = *&v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName + 8];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_27;
    }

    v6 = *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName) == *&v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName] && v4 == v5;
    if (!v6 && (sub_1D966EFB8() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v5)
  {
LABEL_27:

    goto LABEL_28;
  }

  if (*(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement) != v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement])
  {
    goto LABEL_27;
  }

  type metadata accessor for CGColor(0);
  v7 = *&v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_backgroundColor];
  sub_1D9626180();
  v8 = v7;
  v9 = sub_1D966E688();

  if ((v9 & 1) == 0)
  {
    goto LABEL_27;
  }

  v10 = *&v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_foregroundColor];
  v11 = sub_1D966E688();

  if ((v11 & 1) == 0 || *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius) != *&v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius] || *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size) != *&v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size] || *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size + 8) != *&v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size + 8] || *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize) != *&v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize] || *(v1 + OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth) != *&v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth])
  {
    goto LABEL_27;
  }

  v12 = *&v15[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderColor];
  v13 = sub_1D966E688();

  return v13 & 1;
}

id SecureButtonTag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecureButtonTag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D9625A70(void *a1)
{
  v2 = sub_1D966EA58();
  *(v2 + 16) = 4;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  UISGetColorSRGBComponents();
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = sub_1D966E668();
  v4 = sub_1D966E988();
  [a1 encodeObject:v3 forKey:v4];

  if (*(v2 + 16) < 2uLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = sub_1D966E668();
  v6 = sub_1D966E988();
  [a1 encodeObject:v5 forKey:v6];

  if (*(v2 + 16) < 3uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = sub_1D966E668();
  v8 = sub_1D966E988();
  [a1 encodeObject:v7 forKey:v8];

  if (*(v2 + 16) < 4uLL)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v9 = sub_1D966E668();
  v10 = sub_1D966E988();
  [a1 encodeObject:v9 forKey:v10];
}

id sub_1D9625CEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SerializableColor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D9625D30(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D9626498();
  v5 = sub_1D966EC08();
  if (v5)
  {
    v6 = v5;
    sub_1D966E998();
  }

  v7 = &v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_label];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = sub_1D966EC08();
  sub_1D966E998();

  v9 = &v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imageName];
  *v9 = 0;
  v9[1] = 0;
  v10 = sub_1D966E988();
  v11 = [a1 decodeIntegerForKey_];

  if (v11 >= 4)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_imagePlacement] = v12;
  type metadata accessor for SerializableColor();
  v13 = sub_1D966EC08();
  if (!v13 || (v14 = *(v13 + OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor), v15 = v13, GenericRGB = v14, v15, !v14))
  {
    GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  }

  *&v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_backgroundColor] = GenericRGB;
  v17 = sub_1D966EC08();
  if (!v17 || (v18 = *(v17 + OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor), v19 = v17, v20 = v18, v19, !v18))
  {
    v20 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  }

  *&v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_foregroundColor] = v20;
  v21 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v23 = v22;

  *&v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_cornerRadius] = v23;
  v24 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v26 = v25;

  v27 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v29 = v28;

  v30 = &v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_size];
  *v30 = v26;
  v30[1] = v29;
  v31 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v33 = v32;

  *&v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_fontSize] = v33;
  v34 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v36 = v35;

  *&v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderWidth] = v36;
  v37 = sub_1D966EC08();
  if (!v37 || (v38 = *(v37 + OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor), v39 = v37, v40 = v38, v39, !v38))
  {
    v40 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 0.0);
  }

  *&v2[OBJC_IVAR____TtC14MarketplaceKit15SecureButtonTag_borderColor] = v40;
  v42.receiver = v2;
  v42.super_class = ObjectType;
  return objc_msgSendSuper2(&v42, sel_init, 0);
}

unint64_t sub_1D9626180()
{
  result = qword_1ECB21C88;
  if (!qword_1ECB21C88)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21C88);
  }

  return result;
}

uint64_t sub_1D96261D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21C90, &qword_1D9676490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9626248(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21C90, &qword_1D9676490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D96262B4()
{
  result = qword_1ECB21C98;
  if (!qword_1ECB21C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21C98);
  }

  return result;
}

id sub_1D962637C(void *a1)
{
  v3 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v5 = v4;

  v6 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v8 = v7;

  v9 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v11 = v10;

  v12 = sub_1D966E988();
  [a1 decodeDoubleForKey_];
  v14 = v13;

  *&v1[OBJC_IVAR____TtC14MarketplaceKit17SerializableColor_underlyingColor] = CGColorCreateSRGB(v5, v8, v11, v14);
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SerializableColor();
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t sub_1D9626498()
{
  result = qword_1ECB21D70;
  if (!qword_1ECB21D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB21D70);
  }

  return result;
}

uint64_t static UpdateService.availableUpdate(for:checkInWithServer:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D962650C, 0, 0);
}

uint64_t sub_1D962650C()
{
  v1 = qword_1EDCF6860;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1D9626614;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return sub_1D95F1230(v6, v4, v5, v3, sub_1D9626730, 0);
}

uint64_t sub_1D9626614()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

MarketplaceKit::UpdateMetadataRequest __swiftcall UpdateMetadataRequest.init(bundleID:shouldCheckInWithServer:)(MarketplaceKit::UpdateMetadataRequest bundleID, Swift::Bool shouldCheckInWithServer)
{
  *v2 = bundleID.field1D9689480;
  *(v2 + 16) = shouldCheckInWithServer;
  bundleID.field1D968948C = shouldCheckInWithServer;
  return bundleID;
}

uint64_t static UpdateService.requestUpdate(for:)(_OWORD *a1)
{
  v2 = a1[1];
  v1[1] = *a1;
  v1[2] = v2;
  v3 = a1[3];
  v1[3] = a1[2];
  v1[4] = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D9626770, 0, 0);
}

uint64_t sub_1D9626770()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1D9615770;

  return sub_1D95F1560((v0 + 16), sub_1D9626868, 0);
}

uint64_t UpdateMetadataRequest.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D96268B4()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_1D96268F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9680E70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D96269D8(uint64_t a1)
{
  v2 = sub_1D9626DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9626A14(uint64_t a1)
{
  v2 = sub_1D9626DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UpdateMetadataRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21D78, &qword_1D96765D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9626DF4();
  sub_1D966F118();
  v12 = 0;
  v7 = v9[1];
  sub_1D966EF38();
  if (!v7)
  {
    v11 = 1;
    sub_1D966EF48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t UpdateMetadataRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21D88, &qword_1D96765D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9626DF4();
  sub_1D966F0F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_1D966EE58();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_1D966EE68();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9626DF4()
{
  result = qword_1ECB21D80;
  if (!qword_1ECB21D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21D80);
  }

  return result;
}

unint64_t sub_1D9626E7C()
{
  result = qword_1ECB21D90;
  if (!qword_1ECB21D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21D90);
  }

  return result;
}

unint64_t sub_1D9626ED4()
{
  result = qword_1ECB21D98;
  if (!qword_1ECB21D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21D98);
  }

  return result;
}

unint64_t sub_1D9626F2C()
{
  result = qword_1ECB21DA0;
  if (!qword_1ECB21DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB21DA0);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static AppLibrary.getSearchTerritory(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D9626FC0, 0, 0);
}

uint64_t sub_1D9626FC0()
{
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 24) = *(v0 + 104);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1;
  v1 = qword_1EDCF6860;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1D96270E8;

  return sub_1D95EEF68(v0 + 72, v0 + 16, sub_1D962B900, 0);
}

uint64_t sub_1D96270E8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D9627278;
  }

  else
  {
    v2 = sub_1D96271FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D96271FC()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if (v3 != 7)
  {
    sub_1D95FD1C4(v1, v2, v3);
    v1 = 0;
    v2 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v1, v2);
}

uint64_t sub_1D9627278()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2(0, 0);
}

uint64_t static AppLibrary.setSearchTerritory(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_1D966EAB8();
  v4[13] = sub_1D966EAA8();
  v6 = sub_1D966EA78();
  v4[14] = v6;
  v4[15] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D9627388, v6, v5);
}

uint64_t sub_1D9627388()
{
  *(v0 + 16) = *(v0 + 72);
  v1 = *(v0 + 96);
  *(v0 + 24) = *(v0 + 80);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = v1;
  *(v0 + 64) = 5;
  v2 = qword_1EDCF6860;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_1D96274BC;

  return sub_1D95EFB10(v0 + 16, sub_1D96276D4, 0);
}

uint64_t sub_1D96274BC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1D9628E00;
  }

  else
  {
    v5 = sub_1D9627604;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D9627604()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D9627674, v1, v2);
}

uint64_t sub_1D9627674()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D96276D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D966E5D8();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D96587B0;
  v10[3] = &block_descriptor_7;
  v9 = _Block_copy(v10);

  [a1 setPrivateDataRequest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t static AppLibrary.associatedApps(developerID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D96277D0, 0, 0);
}

uint64_t sub_1D96277D0()
{
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 24) = *(v0 + 104);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0x1000000000000000;
  *(v0 + 64) = 0;
  v1 = qword_1EDCF6860;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1D96278F8;

  return sub_1D95EEF68(v0 + 72, v0 + 16, sub_1D962B900, 0);
}

uint64_t sub_1D96278F8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D9627AA0;
  }

  else
  {
    v2 = sub_1D9627A0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9627A0C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 88);

  if (v3 != 2)
  {
    sub_1D95FD1C4(v2, v1, v3);
    v2 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1D9627AA0()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);
  v3 = MEMORY[0x1E69E7CC0];

  return v2(v3);
}

uint64_t static AppLibrary.synchronousAssociatedApps(developerID:)(uint64_t a1, uint64_t a2)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0x1000000000000000;
  v13 = 0;
  v2 = qword_1EDCF6860;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_1D95EBB94(&v8, sub_1D962B914, 0, &v6);
  v3 = v6;
  v4 = v7;

  result = v3;
  if (v4 != 2)
  {
    sub_1D95FD1C4(v3, *(&v3 + 1), v4);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D9627C24()
{
  *(v0 + 16) = 3;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0x2000000000000000;
  *(v0 + 64) = 1;
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1D9627D4C;

  return sub_1D95EEF68(v0 + 72, v0 + 16, sub_1D962B900, 0);
}

uint64_t sub_1D9627D4C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1D9627FA8;
  }

  else
  {
    v2 = sub_1D9627E60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9627E60()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  if (v2 == 9)
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 72);

    return v3(v4);
  }

  else
  {
    v6 = *(v0 + 80);
    type metadata accessor for MarketplaceKitError(0);
    sub_1D9628C6C(&qword_1ECB20B98, type metadata accessor for MarketplaceKitError, &protocol conformance descriptor for MarketplaceKitError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D95FD1C4(v1, v6, v2);
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D9627FA8(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

Swift::Void __swiftcall AppLibrary.beginIndeterminantProgress(itemID:versionID:version:shortVersion:account:)(Swift::UInt64 itemID, Swift::UInt64 versionID, Swift::String version, Swift::String shortVersion, Swift::String_optional account)
{
  object = account.value._object;
  countAndFlagsBits = account.value._countAndFlagsBits;
  v7 = shortVersion._object;
  v21 = shortVersion._countAndFlagsBits;
  v8 = version._object;
  *(&v20 + 1) = version._countAndFlagsBits;
  *&v20 = versionID;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v23 = v5;
  v13 = AppLibrary.app(forAppleItemID:)(itemID);
  swift_getKeyPath();
  *&v29[0] = v13;
  sub_1D9628C6C(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E638();

  if (!*(v13 + 96))
  {
    v14 = objc_allocWithZone(type metadata accessor for InstallationNSProgress());

    v15 = sub_1D965D1EC(itemID);
    v25 = v20;
    *&v26 = v8;
    *(&v26 + 1) = v21;
    *&v27 = v7;
    *(&v27 + 1) = countAndFlagsBits;
    *&v28 = object;
    *(&v28 + 1) = v15;
    v29[0] = v20;
    v29[1] = v26;
    v29[2] = v27;
    v29[3] = v28;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v19 - 2) = v13;
    *(&v19 - 1) = v29;
    v24 = v13;
    sub_1D966E628();
    sub_1D9628CD0(&v25);

    v17 = type metadata accessor for MarketplaceKitError(0);
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    v18 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v18);
    *(&v19 - 2) = v13;
    *(&v19 - 1) = v12;
    v24 = v13;
    sub_1D966E628();

    sub_1D9628D40(v12);
    AppLibrary.updateInstallState(forUpdated:)(v13);
  }
}

uint64_t AppLibrary.resetAppToAvailable(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7[-v3];
  memset(v13, 0, sizeof(v13));
  swift_getKeyPath();
  v10 = a1;
  v11 = v13;
  v12 = a1;
  sub_1D9628C6C(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E628();

  v5 = type metadata accessor for MarketplaceKitError(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  swift_getKeyPath();
  v8 = a1;
  v9 = v4;
  v12 = a1;
  sub_1D966E628();

  sub_1D9628D40(v4);
  return AppLibrary.updateInstallState(forUpdated:)(a1);
}

uint64_t RepairRequest.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RepairRequest.init(bundleID:isBackground:reason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t AppLibrary.handleRepairRequest(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 56) = *(a1 + 16);
  *(v1 + 32) = *(a1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D96285DC, 0, 0);
}

uint64_t sub_1D96285DC()
{
  v3 = *(v2 + 32);
  if (v3 >> 31)
  {
    __break(1u);
  }

  else
  {
    v0 = *(v2 + 56);
    v1 = *(v2 + 24);
    if (qword_1EDCF6860 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_1D9628704;
  v5 = *(v2 + 16);

  return sub_1D95F1900(sub_1D95F1900, v5, v1, v0 ^ 1u | (v3 << 32), 1, sub_1D964C90C, 0);
}

uint64_t sub_1D9628704()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D9628838;
  }

  else
  {

    v2 = sub_1D9628820;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9628838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D962889C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v9[0] = v3;
  sub_1D9628C6C(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E638();

  v4 = v3[6];
  v9[0] = v3[5];
  v9[1] = v4;
  v6 = v3[8];
  v10 = v3[7];
  v5 = v10;
  v11 = v6;
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return sub_1D95FEFC8(v9, &v8, &qword_1ECB21DB8, &unk_1D9676870);
}

uint64_t sub_1D9628970(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D9628C6C(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E628();
}

uint64_t sub_1D9628A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D9628C6C(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E638();

  v4 = OBJC_IVAR____TtCC14MarketplaceKit10AppLibrary3App__installationError;
  swift_beginAccess();
  return sub_1D95FEFC8(v3 + v4, a2, &qword_1ECB21DA8, &qword_1D967D6C0);
}

uint64_t sub_1D9628B24(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1D95FEFC8(a1, &v9[-v5], &qword_1ECB21DA8, &qword_1D967D6C0);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1D9628C6C(&qword_1ECB21DB0, type metadata accessor for AppLibrary.App, &protocol conformance descriptor for AppLibrary.App);
  sub_1D966E628();

  return sub_1D9628D40(v6);
}

uint64_t sub_1D9628C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9628D40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DA8, &qword_1D967D6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 FetchPrivateDataRequest.init(request:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v2;
  return result;
}

uint64_t FetchPrivateDataRequest.run()(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1D9628E58, 0, 0);
}

uint64_t sub_1D9628E58()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1D9615770;
  v2 = *(v0 + 72);

  return sub_1D95EEF68(v2, v0 + 16, sub_1D962B900, 0);
}

uint64_t FetchPrivateDataRequest.runSynchronously()@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v2;
  v5[2] = *(v1 + 32);
  v6 = *(v1 + 48);
  if (qword_1EDCF6860 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  return sub_1D95EBB94(v5, sub_1D962B914, 0, a1);
}

uint64_t SetPrivateDataRequest.run()()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1D962902C, 0, 0);
}

uint64_t sub_1D962902C()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D9629124;

  return sub_1D95EFB10(v0 + 16, sub_1D963144C, 0);
}

uint64_t sub_1D9629124()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SetPrivateDataRequest.runSynchronously()()
{
  v1 = *(v0 + 16);
  v2[0] = *v0;
  v2[1] = v1;
  v2[2] = *(v0 + 32);
  v3 = *(v0 + 48);
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  sub_1D95EC0A0(v2, sub_1D9631460, 0);
}

uint64_t sub_1D96292B4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD00000000000001DLL;
    if (a1 != 8)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v6 = v5;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0xD00000000000001BLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746169636F737361;
    v2 = 0xD000000000000017;
    if (a1 != 3)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (!a1)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D9629418(uint64_t a1)
{
  v2 = sub_1D96342B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629454(uint64_t a1)
{
  v2 = sub_1D96342B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9629490(uint64_t a1)
{
  v2 = sub_1D96345F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96294CC(uint64_t a1)
{
  v2 = sub_1D96345F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9629508(uint64_t a1)
{
  v2 = sub_1D96345A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629544(uint64_t a1)
{
  v2 = sub_1D96345A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96295A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D962962C(uint64_t a1)
{
  v2 = sub_1D9634550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629668(uint64_t a1)
{
  v2 = sub_1D9634550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96296AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9638C84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D96296D4(uint64_t a1)
{
  v2 = sub_1D963425C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629710(uint64_t a1)
{
  v2 = sub_1D963425C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962974C(uint64_t a1)
{
  v2 = sub_1D96344FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629788(uint64_t a1)
{
  v2 = sub_1D96344FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96297C4(uint64_t a1)
{
  v2 = sub_1D9634304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629800(uint64_t a1)
{
  v2 = sub_1D9634304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962983C(uint64_t a1)
{
  v2 = sub_1D9634454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629878(uint64_t a1)
{
  v2 = sub_1D9634454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96298B4(uint64_t a1)
{
  v2 = sub_1D9634358();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96298F0(uint64_t a1)
{
  v2 = sub_1D9634358();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962992C(uint64_t a1)
{
  v2 = sub_1D96343AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9629968(uint64_t a1)
{
  v2 = sub_1D96343AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D96299A4(uint64_t a1)
{
  v2 = sub_1D9634400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96299E0(uint64_t a1)
{
  v2 = sub_1D9634400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchPrivateDataRequest.Request.encode(to:)(void *a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DC0, &qword_1D9676890);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DC8, &qword_1D9676898);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v56 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DD0, &qword_1D96768A0);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v56 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DD8, &qword_1D96768A8);
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v56 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DE0, &qword_1D96768B0);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v56 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DE8, &qword_1D96768B8);
  v73 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v87 = &v56 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DF0, &qword_1D96768C0);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21DF8, &qword_1D96768C8);
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E00, &qword_1D96768D0);
  v83 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E08, &qword_1D96768D8);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E10, &unk_1D96768E0);
  v91 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v20 = *(v1 + 8);
  v90 = *v1;
  v88 = v20;
  v21 = *(v1 + 24);
  v81 = *(v1 + 16);
  v82 = v21;
  v22 = *(v1 + 40);
  v80 = *(v1 + 32);
  v23 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963425C();
  v89 = v19;
  sub_1D966F118();
  v24 = v22;
  if (v23)
  {
    v25 = 4;
  }

  else
  {
    v25 = 0;
  }

  v26 = (v22 >> 60) & 3 | v25;
  if (v26 > 2)
  {
    if (v26 > 4)
    {
      v27 = v89;
      if (v26 != 5)
      {
        if (v81 | v88 | v90 | v82 | v80 || v22 != 0x2000000000000000)
        {
          v52 = v81 | v88 | v82 | v80;
          if (v22 != 0x2000000000000000 || v90 != 1 || v52)
          {
            if (v22 == 0x2000000000000000 && v90 == 2 && !v52)
            {
              LOBYTE(v93) = 6;
              sub_1D96343AC();
              v54 = v57;
              sub_1D966EED8();
              (*(v58 + 8))(v54, v59);
            }

            else
            {
              LOBYTE(v93) = 9;
              sub_1D96342B0();
              v55 = v60;
              sub_1D966EED8();
              (*(v61 + 8))(v55, v62);
            }

            goto LABEL_20;
          }

          LOBYTE(v93) = 3;
          sub_1D96344FC();
          v53 = v63;
          sub_1D966EED8();
          (*(v64 + 8))(v53, v65);
        }

        else
        {
          LOBYTE(v93) = 0;
          sub_1D96345F8();
          v51 = v66;
          sub_1D966EED8();
          (*(v67 + 8))(v51, v68);
        }

        return (*(v91 + 8))(v27, v17);
      }

      LOBYTE(v93) = 8;
      sub_1D9634304();
      v28 = v77;
      sub_1D966EED8();
      v93 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C20, &qword_1D96708C8);
      sub_1D95FD2CC(&qword_1ECB20C28, sub_1D95FD278, MEMORY[0x1E69E6300]);
      v29 = v79;
      sub_1D966EF68();
      v39 = v78;
    }

    else
    {
      v27 = v89;
      if (v26 == 3)
      {
        LOBYTE(v93) = 5;
        sub_1D9634400();
        v28 = v70;
        sub_1D966EED8();
        v29 = v72;
        sub_1D966EF38();
        v30 = &v100;
      }

      else
      {
        LOBYTE(v93) = 7;
        sub_1D9634358();
        v28 = v74;
        sub_1D966EED8();
        v29 = v76;
        sub_1D966EF38();
        v30 = &v101;
      }

      v39 = *(v30 - 32);
    }

    (*(v39 + 8))(v28, v29);
LABEL_20:
    v41 = *(v91 + 8);
    v42 = v27;
    return v41(v42, v17);
  }

  v31 = v15;
  v33 = v83;
  v32 = v84;
  v34 = v85;
  v35 = v86;
  v36 = v87;
  if (!v26)
  {
    LOBYTE(v93) = 1;
    sub_1D96345A4();
    v40 = v89;
    sub_1D966EED8();
    sub_1D966EF38();
    (*(v33 + 8))(v31, v13);
    v41 = *(v91 + 8);
    v42 = v40;
    return v41(v42, v17);
  }

  if (v26 == 1)
  {
    LOBYTE(v93) = 2;
    sub_1D9634550();
    v37 = v89;
    sub_1D966EED8();
    sub_1D966EF38();
    (*(v34 + 8))(v32, v35);
    return (*(v91 + 8))(v37, v17);
  }

  else
  {
    v43 = v90;
    v44 = HIDWORD(v90);
    v45 = v88;
    v46 = v81;
    v47 = v82;
    v83 = HIDWORD(v88);
    v84 = HIDWORD(v81);
    v85 = HIDWORD(v82);
    LOBYTE(v93) = 4;
    sub_1D9634454();
    v86 = v17;
    v48 = v89;
    sub_1D966EED8();
    v93 = __PAIR64__(v44, v43);
    v94 = __PAIR64__(v83, v45);
    v95 = v46;
    v96 = v84;
    v97 = v47;
    v98 = v85;
    v99 = 0;
    sub_1D96344A8();
    v49 = v69;
    v50 = v92;
    sub_1D966EF68();
    if (!v50)
    {
      v93 = v80;
      v94 = v24 & 0xCFFFFFFFFFFFFFFFLL;
      v99 = 1;
      sub_1D9621C98();
      sub_1D966EF68();
    }

    (*(v73 + 8))(v36, v49);
    return (*(v91 + 8))(v48, v86);
  }
}

uint64_t FetchPrivateDataRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E60, &qword_1D96768F0);
  v95 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v102 = &v77 - v3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E68, &qword_1D96768F8);
  v97 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v101 = &v77 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E70, &qword_1D9676900);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  *&v105 = &v77 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E78, &qword_1D9676908);
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v99 = &v77 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E80, &qword_1D9676910);
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v104 = &v77 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E88, &qword_1D9676918);
  v91 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v98 = &v77 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E90, &qword_1D9676920);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v100 = &v77 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21E98, &qword_1D9676928);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v103 = &v77 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EA0, &qword_1D9676930);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v12 = &v77 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EA8, &qword_1D9676938);
  v79 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EB0, &unk_1D9676940);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v77 - v18;
  v20 = a1[3];
  v107 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D963425C();
  v21 = v108;
  sub_1D966F0F8();
  if (v21)
  {
    goto LABEL_13;
  }

  v22 = v15;
  v77 = v13;
  v24 = v103;
  v23 = v104;
  v25 = v105;
  v78 = 0;
  v108 = v17;
  v26 = v106;
  v27 = sub_1D966EEB8();
  v28 = (2 * *(v27 + 16)) | 1;
  v114 = v27;
  v115 = v27 + 32;
  v116 = 0;
  v117 = v28;
  v29 = sub_1D9605E24();
  if (v29 == 10 || v116 != v117 >> 1)
  {
    v40 = sub_1D966ED58();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
    *v42 = &type metadata for FetchPrivateDataRequest.Request;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
LABEL_11:
    (*(v108 + 8))(v19, v16);
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    v38 = v107;
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  if (v29 > 4u)
  {
    v44 = v19;
    v45 = v16;
    v39 = v26;
    if (v29 <= 6u)
    {
      if (v29 == 5)
      {
        LOBYTE(v111) = 5;
        sub_1D9634400();
        v53 = v23;
        v47 = v45;
        v48 = v44;
        v54 = v78;
        sub_1D966EDE8();
        if (!v54)
        {
          v55 = v89;
          v35 = sub_1D966EE58();
          v32 = v75;
          (*(v87 + 8))(v53, v55);
          (*(v108 + 8))(v44, v45);
          swift_unknownObjectRelease();
          v33 = 0;
          v37 = 0;
          v34 = 0uLL;
          v36 = 0x3000000000000000;
          goto LABEL_42;
        }

        goto LABEL_29;
      }

      LOBYTE(v111) = 6;
      sub_1D96343AC();
      v68 = v99;
      v69 = v78;
      sub_1D966EDE8();
      if (!v69)
      {
        (*(v88 + 8))(v68, v90);
        (*(v108 + 8))(v44, v45);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0;
        v34 = 0uLL;
        v37 = 1;
        v36 = 0x2000000000000000;
        v35 = 2;
        goto LABEL_42;
      }
    }

    else
    {
      if (v29 == 7)
      {
        LOBYTE(v111) = 7;
        sub_1D9634358();
        v47 = v45;
        v48 = v44;
        v60 = v78;
        sub_1D966EDE8();
        if (!v60)
        {
          v70 = v94;
          v35 = sub_1D966EE58();
          v32 = v74;
          (*(v93 + 8))(v25, v70);
          (*(v108 + 8))(v44, v45);
          swift_unknownObjectRelease();
          v33 = 0;
          v36 = 0;
          v34 = 0uLL;
          v37 = 1;
          goto LABEL_42;
        }

        goto LABEL_29;
      }

      if (v29 == 8)
      {
        LOBYTE(v111) = 8;
        sub_1D9634304();
        v46 = v101;
        v47 = v45;
        v48 = v44;
        v49 = v78;
        sub_1D966EDE8();
        if (!v49)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20C20, &qword_1D96708C8);
          sub_1D95FD2CC(&qword_1ECB20C40, sub_1D95FD344, MEMORY[0x1E69E6330]);
          v50 = v96;
          sub_1D966EE88();
          (*(v97 + 8))(v46, v50);
          (*(v108 + 8))(v44, v45);
          swift_unknownObjectRelease();
          v32 = 0;
          v33 = 0;
          v35 = v111;
          v34 = 0uLL;
          v37 = 1;
          v36 = 0x1000000000000000;
          goto LABEL_42;
        }

LABEL_29:
        (*(v108 + 8))(v48, v47);
        swift_unknownObjectRelease();
        v38 = v107;
        return __swift_destroy_boxed_opaque_existential_1(v38);
      }

      LOBYTE(v111) = 9;
      sub_1D96342B0();
      v65 = v102;
      v66 = v78;
      sub_1D966EDE8();
      if (!v66)
      {
        (*(v95 + 8))(v65, v92);
        (*(v108 + 8))(v44, v45);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0;
        v34 = 0uLL;
        v37 = 1;
        v36 = 0x2000000000000000;
        v35 = 3;
        goto LABEL_42;
      }
    }

    (*(v108 + 8))(v44, v45);
    goto LABEL_12;
  }

  if (v29 > 1u)
  {
    v30 = v78;
    if (v29 == 2)
    {
      LOBYTE(v111) = 2;
      sub_1D9634550();
      v56 = v24;
      sub_1D966EDE8();
      if (!v30)
      {
        v57 = v82;
        v58 = sub_1D966EE58();
        v59 = v108;
        v35 = v58;
        v32 = v73;
        (*(v83 + 8))(v56, v57);
        (*(v59 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v33 = 0;
        v37 = 0;
        v34 = 0uLL;
        v36 = 0x1000000000000000;
        v38 = v107;
        v39 = v26;
        goto LABEL_43;
      }

      goto LABEL_11;
    }

    if (v29 == 3)
    {
      LOBYTE(v111) = 3;
      sub_1D96344FC();
      v31 = v100;
      sub_1D966EDE8();
      if (!v30)
      {
        (*(v84 + 8))(v31, v85);
        (*(v108 + 8))(v19, v16);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0;
        v34 = 0uLL;
        v35 = 1;
        v36 = 0x2000000000000000;
        v37 = 1;
        v38 = v107;
        v39 = v26;
LABEL_43:
        *v39 = v35;
        *(v39 + 8) = v32;
        *(v39 + 16) = v34;
        *(v39 + 32) = v33;
        *(v39 + 40) = v36;
        *(v39 + 48) = v37;
        return __swift_destroy_boxed_opaque_existential_1(v38);
      }

      goto LABEL_11;
    }

    LOBYTE(v111) = 4;
    sub_1D9634454();
    v61 = v98;
    sub_1D966EDE8();
    v62 = v16;
    if (!v30)
    {
      v39 = v26;
      v63 = v62;
      v119 = 0;
      sub_1D963464C();
      v64 = v86;
      sub_1D966EE88();
      v35 = v111;
      v32 = v112;
      v105 = v113;
      v118 = 1;
      sub_1D9621D48();
      sub_1D966EE88();
      (*(v91 + 8))(v61, v64);
      (*(v108 + 8))(v19, v63);
      swift_unknownObjectRelease();
      v37 = 0;
      v33 = v109;
      v36 = v110 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v38 = v107;
      v34 = v105;
      goto LABEL_43;
    }

LABEL_35:
    (*(v108 + 8))(v19, v62);
    goto LABEL_12;
  }

  v51 = v78;
  if (v29)
  {
    LOBYTE(v111) = 1;
    sub_1D96345A4();
    v67 = v12;
    sub_1D966EDE8();
    v62 = v16;
    if (v51)
    {
      goto LABEL_35;
    }

    v39 = v26;
    v71 = v62;
    v72 = v81;
    v35 = sub_1D966EE58();
    v32 = v76;
    (*(v80 + 8))(v67, v72);
    (*(v108 + 8))(v19, v71);
    swift_unknownObjectRelease();
    v33 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0uLL;
LABEL_42:
    v38 = v107;
    goto LABEL_43;
  }

  LOBYTE(v111) = 0;
  sub_1D96345F8();
  sub_1D966EDE8();
  v52 = v16;
  if (!v51)
  {
    v39 = v26;
    (*(v79 + 8))(v22, v77);
    (*(v108 + 8))(v19, v52);
    swift_unknownObjectRelease();
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0uLL;
    v37 = 1;
    v36 = 0x2000000000000000;
    v38 = v107;
    goto LABEL_43;
  }

  (*(v108 + 8))(v19, v16);
  swift_unknownObjectRelease();
  v38 = v107;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t FetchPrivateDataRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return sub_1D96346A0(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D962B940(uint64_t a1)
{
  v2 = sub_1D9634704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962B97C(uint64_t a1)
{
  v2 = sub_1D9634704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchPrivateDataRequest.encode(to:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EC0, &qword_1D9676950);
  v27 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v18 = v15 - v3;
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = *(v1 + 48);
  v16 = v10;
  v11 = a1[3];
  v17 = a1[4];
  v15[1] = __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D96346A0(v4, v5, v6, v7, v9, v8, v10);
  sub_1D9634704();
  v12 = v18;
  sub_1D966F118();
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v9;
  v25 = v8;
  v26 = v16;
  sub_1D9634758();
  v13 = v19;
  sub_1D966EF68();
  sub_1D96347AC(v20, v21, v22, v23, v24, v25, v26);
  return (*(v27 + 8))(v12, v13);
}

uint64_t FetchPrivateDataRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EC8, &qword_1D9676958);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634704();
  sub_1D966F0F8();
  if (!v2)
  {
    sub_1D9634810();
    sub_1D966EE88();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v13[1];
    v11 = v13[2];
    *a2 = v13[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 48) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D962BCEC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6554686372616573;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0xD00000000000001BLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746169636F737361;
    v2 = 0xD000000000000017;
    if (a1 != 3)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (!a1)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D962BE88(uint64_t a1)
{
  v2 = sub_1D96348B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962BEC4(uint64_t a1)
{
  v2 = sub_1D96348B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962BF00(uint64_t a1)
{
  v2 = sub_1D9634BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962BF3C(uint64_t a1)
{
  v2 = sub_1D9634BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962BF78(uint64_t a1)
{
  v2 = sub_1D9634B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962BFB4(uint64_t a1)
{
  v2 = sub_1D9634B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962BFF0(uint64_t a1)
{
  v2 = sub_1D9634B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C02C(uint64_t a1)
{
  v2 = sub_1D9634B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C070@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9638FBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D962C098(uint64_t a1)
{
  v2 = sub_1D9634864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C0D4(uint64_t a1)
{
  v2 = sub_1D9634864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C110(uint64_t a1)
{
  v2 = sub_1D9634AB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C14C(uint64_t a1)
{
  v2 = sub_1D9634AB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C188(uint64_t a1)
{
  v2 = sub_1D963490C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C1C4(uint64_t a1)
{
  v2 = sub_1D963490C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C200(uint64_t a1)
{
  v2 = sub_1D9634A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C23C(uint64_t a1)
{
  v2 = sub_1D9634A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C278(uint64_t a1)
{
  v2 = sub_1D9634960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C2B4(uint64_t a1)
{
  v2 = sub_1D9634960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C2F0(uint64_t a1)
{
  v2 = sub_1D96349B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C32C(uint64_t a1)
{
  v2 = sub_1D96349B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962C368(uint64_t a1)
{
  v2 = sub_1D9634A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962C3A4(uint64_t a1)
{
  v2 = sub_1D9634A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchDataResponse.Response.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21ED0, &qword_1D9676960);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21ED8, &qword_1D9676968);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EE0, &qword_1D9676970);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EE8, &qword_1D9676978);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EF0, &qword_1D9676980);
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v36 - v12;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21EF8, &qword_1D9676988);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v36 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F00, &qword_1D9676990);
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v36 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F08, &qword_1D9676998);
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v36 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F10, &qword_1D96769A0);
  v37 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F18, &qword_1D96769A8);
  v36 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F20, &qword_1D96769B0);
  v23 = *(v22 - 8);
  v65 = v22;
  v66 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v36 - v24;
  v26 = *v1;
  v62 = v1[1];
  v63 = v26;
  v27 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634864();
  v64 = v25;
  sub_1D966F118();
  if (v27 > 4)
  {
    if (v27 <= 6)
    {
      if (v27 == 5)
      {
        LOBYTE(v67) = 5;
        sub_1D9634A08();
        v28 = v45;
        v30 = v64;
        v29 = v65;
        sub_1D966EED8();
        v31 = v49;
        sub_1D966EF48();
        v32 = v48;
      }

      else
      {
        LOBYTE(v67) = 6;
        sub_1D96349B4();
        v28 = v50;
        v30 = v64;
        v29 = v65;
        sub_1D966EED8();
        v31 = v52;
        sub_1D966EF48();
        v32 = v51;
      }
    }

    else if (v27 == 7)
    {
      LOBYTE(v67) = 7;
      sub_1D9634960();
      v28 = v53;
      v30 = v64;
      v29 = v65;
      sub_1D966EED8();
      v31 = v55;
      sub_1D966EEE8();
      v32 = v54;
    }

    else if (v27 == 8)
    {
      LOBYTE(v67) = 8;
      sub_1D963490C();
      v28 = v56;
      v30 = v64;
      v29 = v65;
      sub_1D966EED8();
      v67 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BE8, &qword_1D9671060);
      sub_1D95EDFE4(&qword_1ECB20BF0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
      v31 = v58;
      sub_1D966EF68();
      v32 = v57;
    }

    else
    {
      LOBYTE(v67) = 9;
      sub_1D96348B8();
      v28 = v59;
      v30 = v64;
      v29 = v65;
      sub_1D966EED8();
      v67 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F30, &qword_1D96769B8);
      sub_1D9634CCC(&qword_1ECB21F38, &qword_1ECB21F40, &protocol conformance descriptor for AppLibrary.ExceptionRequest, MEMORY[0x1E69E6300]);
      v31 = v61;
      sub_1D966EF68();
      v32 = v60;
    }

    goto LABEL_20;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      LOBYTE(v67) = 2;
      sub_1D9634B04();
      v28 = v38;
      v30 = v64;
      v29 = v65;
      sub_1D966EED8();
      v67 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
      sub_1D96125F8(&qword_1EDCF6200, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v31 = v40;
      sub_1D966EF68();
      v32 = v39;
    }

    else if (v27 == 3)
    {
      LOBYTE(v67) = 3;
      sub_1D9634AB0();
      v28 = v41;
      v30 = v64;
      v29 = v65;
      sub_1D966EED8();
      v67 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
      sub_1D96125F8(&qword_1EDCF6200, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v31 = v43;
      sub_1D966EF68();
      v32 = v42;
    }

    else
    {
      LOBYTE(v67) = 4;
      sub_1D9634A5C();
      v28 = v44;
      v30 = v64;
      v29 = v65;
      sub_1D966EED8();
      v67 = v63;
      v68 = v62;
      sub_1D9621C98();
      v31 = v47;
      sub_1D966EF68();
      v32 = v46;
    }

LABEL_20:
    (*(v32 + 8))(v28, v31);
    return (*(v66 + 8))(v30, v29);
  }

  if (!v27)
  {
    LOBYTE(v67) = 0;
    sub_1D9634BAC();
    v34 = v64;
    v33 = v65;
    sub_1D966EED8();
    v67 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F80, &qword_1D96769C0);
    sub_1D9634C00(&qword_1ECB21F88, sub_1D9634C78, MEMORY[0x1E69E6300]);
    sub_1D966EF68();
    (*(v36 + 8))(v21, v19);
    return (*(v66 + 8))(v34, v33);
  }

  LOBYTE(v67) = 1;
  sub_1D9634B58();
  v30 = v64;
  v29 = v65;
  sub_1D966EED8();
  sub_1D966EF48();
  (*(v37 + 8))(v18, v16);
  return (*(v66 + 8))(v30, v29);
}

uint64_t FetchDataResponse.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F98, &qword_1D96769C8);
  v4 = *(v3 - 8);
  v95 = v3;
  v96 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v100 = &v73[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FA0, &qword_1D96769D0);
  v7 = *(v6 - 8);
  v93 = v6;
  v94 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v73[-v8];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FA8, &qword_1D96769D8);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v103 = &v73[-v9];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FB0, &qword_1D96769E0);
  v90 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v102 = &v73[-v10];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FB8, &qword_1D96769E8);
  v88 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v99 = &v73[-v11];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FC0, &qword_1D96769F0);
  v86 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v97 = &v73[-v12];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FC8, &qword_1D96769F8);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v98 = &v73[-v13];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FD0, &qword_1D9676A00);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v101 = &v73[-v14];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FD8, &qword_1D9676A08);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v16 = &v73[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FE0, &qword_1D9676A10);
  v78 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21FE8, &qword_1D9676A18);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v73[-v22];
  v24 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D9634864();
  v25 = v114;
  sub_1D966F0F8();
  if (v25)
  {
    goto LABEL_14;
  }

  v76 = v19;
  v75 = v17;
  v26 = v101;
  v27 = v102;
  v28 = v103;
  v77 = 0;
  v114 = v21;
  v29 = v104;
  v30 = v105;
  v31 = sub_1D966EEB8();
  v32 = (2 * *(v31 + 16)) | 1;
  v109 = v31;
  v110 = v31 + 32;
  v111 = 0;
  v112 = v32;
  v33 = sub_1D9605E24();
  if (v33 != 10 && v111 == v112 >> 1)
  {
    v74 = v33;
    if (v33 <= 4u)
    {
      v34 = v77;
      if (v33 > 1u)
      {
        if (v33 == 2)
        {
          LOBYTE(v107) = 2;
          sub_1D9634B04();
          v36 = v26;
          sub_1D966EDE8();
          v35 = v114;
          if (!v34)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
            sub_1D96125F8(&qword_1EDCF6670, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
            v37 = v82;
            sub_1D966EE88();
            v38 = &v113;
            goto LABEL_10;
          }

          goto LABEL_42;
        }

        v35 = v114;
        if (v33 == 3)
        {
          LOBYTE(v107) = 3;
          sub_1D9634AB0();
          v36 = v98;
          sub_1D966EDE8();
          if (!v34)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
            sub_1D96125F8(&qword_1EDCF6670, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
            v37 = v85;
            sub_1D966EE88();
            v38 = &v115;
LABEL_10:
            (*(*(v38 - 32) + 8))(v36, v37);
            (*(v35 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v39 = 0;
            v40 = v106;
            v41 = v107;
LABEL_46:
            *v30 = v41;
            *(v30 + 8) = v39;
            *(v30 + 16) = v74;
            return __swift_destroy_boxed_opaque_existential_1(v40);
          }

          goto LABEL_42;
        }

        LOBYTE(v107) = 4;
        sub_1D9634A5C();
        v60 = v97;
        sub_1D966EDE8();
        if (v34)
        {
LABEL_42:
          (*(v35 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v40 = v106;
          return __swift_destroy_boxed_opaque_existential_1(v40);
        }

        v47 = v30;
        sub_1D9621D48();
        v61 = v83;
        sub_1D966EE88();
        (*(v86 + 8))(v60, v61);
        (*(v35 + 8))(v23, v20);
        swift_unknownObjectRelease();
        v41 = v107;
        v39 = v108;
        goto LABEL_43;
      }

      if (v33)
      {
        LOBYTE(v107) = 1;
        sub_1D9634B58();
        sub_1D966EDE8();
        if (!v34)
        {
          v65 = v80;
          v72 = sub_1D966EE68();
          (*(v79 + 8))(v16, v65);
          (*(v114 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v39 = 0;
          v41 = v72 & 1;
          v40 = v106;
          goto LABEL_46;
        }
      }

      else
      {
        LOBYTE(v107) = 0;
        sub_1D9634BAC();
        v51 = v76;
        sub_1D966EDE8();
        if (!v34)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F80, &qword_1D96769C0);
          sub_1D9634C00(&qword_1ECB22000, sub_1D9634DB0, MEMORY[0x1E69E6330]);
          v52 = v75;
          sub_1D966EE88();
          (*(v78 + 8))(v51, v52);
          (*(v114 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v39 = 0;
          v40 = v106;
          v41 = v107;
          goto LABEL_46;
        }
      }

      goto LABEL_12;
    }

    if (v33 > 6u)
    {
      if (v33 != 7)
      {
        v46 = v114;
        if (v33 == 8)
        {
          v47 = v30;
          LOBYTE(v107) = 8;
          sub_1D963490C();
          v48 = v29;
          v49 = v77;
          sub_1D966EDE8();
          if (!v49)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20BE8, &qword_1D9671060);
            sub_1D95EDFE4(&qword_1ECB20C00, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
            v50 = v93;
            sub_1D966EE88();
            (*(v94 + 8))(v48, v50);
            (*(v46 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v39 = 0;
            v41 = v107;
            goto LABEL_43;
          }
        }

        else
        {
          LOBYTE(v107) = 9;
          sub_1D96348B8();
          v62 = v77;
          sub_1D966EDE8();
          if (!v62)
          {
            v47 = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21F30, &qword_1D96769B8);
            sub_1D9634CCC(&qword_1ECB21FF0, &qword_1ECB21FF8, &protocol conformance descriptor for AppLibrary.ExceptionRequest, MEMORY[0x1E69E6330]);
            v63 = v95;
            v64 = v100;
            sub_1D966EE88();
            (*(v96 + 8))(v64, v63);
            (*(v46 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v39 = 0;
            v40 = v106;
            v41 = v107;
LABEL_44:
            v30 = v47;
            goto LABEL_46;
          }
        }

        (*(v46 + 8))(v23, v20);
        goto LABEL_13;
      }

      LOBYTE(v107) = 7;
      sub_1D9634960();
      v57 = v28;
      v58 = v77;
      sub_1D966EDE8();
      v59 = v114;
      if (v58)
      {
        (*(v114 + 8))(v23, v20);
        swift_unknownObjectRelease();
        v40 = v106;
        return __swift_destroy_boxed_opaque_existential_1(v40);
      }

      v47 = v30;
      v69 = v91;
      v41 = sub_1D966EE08();
      v39 = v70;
      (*(v92 + 8))(v57, v69);
      (*(v59 + 8))(v23, v20);
      swift_unknownObjectRelease();
LABEL_43:
      v40 = v106;
      goto LABEL_44;
    }

    if (v33 == 5)
    {
      LOBYTE(v107) = 5;
      sub_1D9634A08();
      v53 = v99;
      v54 = v77;
      sub_1D966EDE8();
      v55 = v114;
      if (!v54)
      {
        v56 = v87;
        v71 = sub_1D966EE68();
        (*(v88 + 8))(v53, v56);
LABEL_45:
        (*(v55 + 8))(v23, v20);
        swift_unknownObjectRelease();
        v39 = 0;
        v41 = v71 & 1;
        v30 = v105;
        v40 = v106;
        goto LABEL_46;
      }
    }

    else
    {
      LOBYTE(v107) = 6;
      sub_1D96349B4();
      v66 = v27;
      v67 = v77;
      sub_1D966EDE8();
      v55 = v114;
      if (!v67)
      {
        v68 = v89;
        v71 = sub_1D966EE68();
        (*(v90 + 8))(v66, v68);
        goto LABEL_45;
      }
    }

    (*(v55 + 8))(v23, v20);
    goto LABEL_13;
  }

  v42 = sub_1D966ED58();
  swift_allocError();
  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
  *v44 = &type metadata for FetchDataResponse.Response;
  sub_1D966EDF8();
  sub_1D966ED48();
  (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
  swift_willThrow();
LABEL_12:
  (*(v114 + 8))(v23, v20);
LABEL_13:
  swift_unknownObjectRelease();
LABEL_14:
  v40 = v106;
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t FetchDataResponse.response.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D96181D8(v2, v3, v4);
}

__n128 FetchDataResponse.init(response:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1D962E29C(uint64_t a1)
{
  v2 = sub_1D9634E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962E2D8(uint64_t a1)
{
  v2 = sub_1D9634E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchDataResponse.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22010, &qword_1D9676A20);
  v3 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D96181D8(v6, v7, v8);
  sub_1D9634E04();
  sub_1D966F118();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_1D9634E58();
  v9 = v11;
  sub_1D966EF68();
  sub_1D95FD1C4(v12, v13, v14);
  return (*(v3 + 8))(v5, v9);
}

uint64_t FetchDataResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22018, &qword_1D9676A28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634E04();
  sub_1D966F0F8();
  if (!v2)
  {
    sub_1D9634EAC();
    sub_1D966EE88();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D962E64C(uint64_t a1)
{
  v2 = sub_1D9634F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962E688(uint64_t a1)
{
  v2 = sub_1D9634F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962E6C4()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6554686372616573;
  }
}

uint64_t sub_1D962E710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6554686372616573 && a2 == 0xEF79726F74697272;
  if (v6 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9681060 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D962E7FC(uint64_t a1)
{
  v2 = sub_1D9634F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962E838(uint64_t a1)
{
  v2 = sub_1D9634F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962E874(uint64_t a1)
{
  v2 = sub_1D9634FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962E8B0(uint64_t a1)
{
  v2 = sub_1D9634FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchPublicDataRequest.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22020, &qword_1D9676A30);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22028, &qword_1D9676A38);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22030, &qword_1D9676A40);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634F00();
  sub_1D966F118();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D9634F54();
    v14 = v18;
    sub_1D966EED8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D9634FA8();
    sub_1D966EED8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t FetchPublicDataRequest.Request.hashValue.getter()
{
  v1 = *v0;
  sub_1D966F078();
  MEMORY[0x1DA733F80](v1);
  return sub_1D966F0C8();
}

uint64_t FetchPublicDataRequest.Request.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22050, &qword_1D9676A48);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22058, &qword_1D9676A50);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22060, &qword_1D9676A58);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634F00();
  v12 = v31;
  sub_1D966F0F8();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D966EEB8();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D9605E20();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D966ED58();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
      *v22 = &type metadata for FetchPublicDataRequest.Request;
      sub_1D966EDF8();
      sub_1D966ED48();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D9634F54();
        sub_1D966EDE8();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D9634FA8();
        sub_1D966EDE8();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t FetchPublicDataRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 32) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D962F13C, 0, 0);
}

uint64_t sub_1D962F13C()
{
  if (qword_1EDCF6860 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D9611BC8;
  v3 = *(v0 + 16);

  return sub_1D95F1B00(v3, v1, sub_1D962F240, 0);
}

uint64_t sub_1D962F254(uint64_t a1)
{
  v2 = sub_1D9634FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F290(uint64_t a1)
{
  v2 = sub_1D9634FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FetchPublicDataRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22068, &qword_1D9676A68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634FFC();
  sub_1D966F118();
  v10 = v7;
  sub_1D9635050();
  sub_1D966EF68();
  return (*(v4 + 8))(v6, v3);
}

uint64_t FetchPublicDataRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22080, &qword_1D9676A70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9634FFC();
  sub_1D966F0F8();
  if (!v2)
  {
    sub_1D96350A4();
    sub_1D966EE88();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D962F5B4(uint64_t a1)
{
  v2 = sub_1D96352F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F5F0(uint64_t a1)
{
  v2 = sub_1D96352F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D962F62C()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000017;
  if (v2 == 4)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xD00000000000001DLL;
  }

  if (v2 == 3)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = v4;
  }

  if (v2 == 1)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v1 = v3;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1D962F6CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9639300(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D962F6F4(uint64_t a1)
{
  v2 = sub_1D96350F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F730(uint64_t a1)
{
  v2 = sub_1D96350F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962F76C(uint64_t a1)
{
  v2 = sub_1D963529C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F7A8(uint64_t a1)
{
  v2 = sub_1D963529C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962F7E4(uint64_t a1)
{
  v2 = sub_1D9635248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F820(uint64_t a1)
{
  v2 = sub_1D9635248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962F85C(uint64_t a1)
{
  v2 = sub_1D96351F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F898(uint64_t a1)
{
  v2 = sub_1D96351F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962F8D4(uint64_t a1)
{
  v2 = sub_1D963514C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962F910(uint64_t a1)
{
  v2 = sub_1D963514C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D962F94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D966EFB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D966EFB8();

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

uint64_t sub_1D962FA18(uint64_t a1)
{
  v2 = sub_1D96351A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D962FA54(uint64_t a1)
{
  v2 = sub_1D96351A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetPrivateDataRequest.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22090, &qword_1D9676A78);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22098, &qword_1D9676A80);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB220A0, &qword_1D9676A88);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB220A8, &qword_1D9676A90);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v42 = v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB220B0, &qword_1D9676A98);
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB220B8, &qword_1D9676AA0);
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB220C0, &qword_1D9676AA8);
  v58 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v18 = *v1;
  v55 = v1[1];
  v56 = v18;
  v19 = v1[3];
  v54 = v1[2];
  v38[2] = v19;
  v20 = v1[5];
  v38[1] = v1[4];
  v38[0] = v20;
  v21 = *(v1 + 48);
  v22 = a1[3];
  v23 = a1;
  v25 = v38 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_1D96350F8();
  sub_1D966F118();
  if (v21 > 2)
  {
    if (v21 == 3)
    {
      LOBYTE(v59) = 3;
      sub_1D96351F4();
      v28 = v45;
      sub_1D966EED8();
      LOBYTE(v59) = 0;
      v11 = v47;
      v35 = v57;
      sub_1D966EF38();
      if (!v35)
      {
        LOBYTE(v59) = 1;
        sub_1D966EF48();
        v36 = v46;
        goto LABEL_22;
      }

      v30 = v46;
    }

    else if (v21 == 4)
    {
      LOBYTE(v59) = 4;
      sub_1D96351A0();
      v28 = v48;
      sub_1D966EED8();
      LOBYTE(v59) = 0;
      v11 = v50;
      v29 = v57;
      sub_1D966EF38();
      if (!v29)
      {
        LOBYTE(v59) = 1;
        sub_1D966EF48();
        v36 = v49;
        goto LABEL_22;
      }

      v30 = v49;
    }

    else
    {
      LOBYTE(v59) = 5;
      sub_1D963514C();
      v28 = v51;
      sub_1D966EED8();
      LOBYTE(v59) = 0;
      v11 = v53;
      v37 = v57;
      sub_1D966EEE8();
      if (!v37)
      {
        LOBYTE(v59) = 1;
        sub_1D966EF38();
        v36 = v52;
        goto LABEL_22;
      }

      v30 = v52;
    }

    (*(v30 + 8))(v28, v11);
    return (*(v58 + 8))(v25, v17);
  }

  if (v21)
  {
    if (v21 == 1)
    {
      LOBYTE(v59) = 1;
      sub_1D963529C();
      sub_1D966EED8();
      sub_1D966EF38();
      v26 = *(v39 + 8);
      v27 = v13;
LABEL_23:
      v26(v27, v11);
      return (*(v58 + 8))(v25, v17);
    }

    LOBYTE(v59) = 2;
    sub_1D9635248();
    v28 = v42;
    sub_1D966EED8();
    v59 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
    sub_1D96125F8(&qword_1EDCF6200, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    v11 = v44;
    sub_1D966EF68();
    v36 = v43;
LABEL_22:
    v26 = *(v36 + 8);
    v27 = v28;
    goto LABEL_23;
  }

  LOBYTE(v59) = 0;
  sub_1D96352F0();
  v31 = v17;
  sub_1D966EED8();
  LOBYTE(v59) = 0;
  v32 = v41;
  v33 = v57;
  sub_1D966EF38();
  if (v33)
  {
    (*(v40 + 8))(v16, v32);
  }

  else
  {
    LOBYTE(v59) = 1;
    sub_1D966EF38();
    LOBYTE(v59) = 2;
    sub_1D966EEE8();
    (*(v40 + 8))(v16, v32);
  }

  return (*(v58 + 8))(v25, v31);
}

uint64_t SetPrivateDataRequest.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22100, &qword_1D9676AB0);
  v93 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v98 = &v79 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22108, &qword_1D9676AB8);
  v5 = *(v4 - 8);
  v91 = v4;
  v92 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v79 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22110, &qword_1D9676AC0);
  v90 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v96 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22118, &qword_1D9676AC8);
  v87 = *(v8 - 8);
  v88 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v79 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22120, &qword_1D9676AD0);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22128, &qword_1D9676AD8);
  v94 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v79 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22130, &qword_1D9676AE0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v79 - v17;
  v19 = a1[3];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D96350F8();
  v20 = v100;
  sub_1D966F0F8();
  v21 = v20;
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v101);
  }

  v83 = v11;
  v22 = v14;
  v82 = v12;
  v23 = v96;
  v24 = v97;
  v100 = v16;
  v25 = v98;
  v26 = v99;
  v27 = sub_1D966EEB8();
  v28 = (2 * *(v27 + 16)) | 1;
  v102 = v27;
  v103 = v27 + 32;
  v104 = 0;
  v105 = v28;
  v29 = sub_1D9605E28();
  if (v29 == 6 || v104 != v105 >> 1)
  {
    v34 = sub_1D966ED58();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21050, &qword_1D9671020);
    *v36 = &type metadata for SetPrivateDataRequest.Request;
    sub_1D966EDF8();
    sub_1D966ED48();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v100 + 8))(v18, v15);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v101);
  }

  v81 = v29;
  if (v29 > 2u)
  {
    if (v29 == 3)
    {
      LOBYTE(v106) = 3;
      sub_1D96351F4();
      sub_1D966EDE8();
      v45 = v100;
      LOBYTE(v106) = 0;
      v46 = v86;
      v47 = sub_1D966EE58();
      v63 = v60;
      v61 = v23;
      v98 = v47;
      LOBYTE(v106) = 1;
      v21 = 0;
      v73 = sub_1D966EE68();
      v80 = 0;
      (*(v90 + 8))(v61, v46);
      (*(v45 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v67 = 0;
      v68 = 0;
      v66 = (v73 & 1);
      v65 = v98;
    }

    else
    {
      v96 = v15;
      v38 = v100;
      if (v29 == 4)
      {
        LOBYTE(v106) = 4;
        sub_1D96351A0();
        sub_1D966EDE8();
        LOBYTE(v106) = 0;
        v39 = v91;
        v40 = v24;
        v41 = sub_1D966EE58();
        v63 = v69;
        v70 = v41;
        LOBYTE(v106) = 1;
        v21 = 0;
        v77 = sub_1D966EE68();
        v80 = 0;
        (*(v92 + 8))(v40, v39);
        (*(v38 + 8))(v18, v96);
        swift_unknownObjectRelease();
        v67 = 0;
        v68 = 0;
        v66 = (v77 & 1);
        v65 = v70;
        v26 = v99;
      }

      else
      {
        v51 = v26;
        LOBYTE(v106) = 5;
        sub_1D963514C();
        v52 = v25;
        sub_1D966EDE8();
        LOBYTE(v106) = 0;
        v53 = v89;
        v54 = sub_1D966EE08();
        v56 = v55;
        v65 = v54;
        LOBYTE(v106) = 1;
        v57 = sub_1D966EE58();
        v80 = 0;
        v74 = v57;
        v76 = v75;
        (*(v93 + 8))(v52, v53);
        (*(v38 + 8))(v18, v96);
        swift_unknownObjectRelease();
        v67 = v76;
        v66 = v74;
        v68 = 0;
        v21 = 0;
        v26 = v51;
        v63 = v56;
      }
    }
  }

  else if (v29)
  {
    if (v29 == 1)
    {
      LOBYTE(v106) = 1;
      sub_1D963529C();
      v30 = v83;
      sub_1D966EDE8();
      v31 = v100;
      v32 = v85;
      v33 = sub_1D966EE58();
      v21 = 0;
      v63 = v62;
      v80 = 0;
      v64 = v30;
      v65 = v33;
      (*(v84 + 8))(v64, v32);
      (*(v31 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v66 = 0;
      v67 = 0;
      v68 = 0;
    }

    else
    {
      LOBYTE(v106) = 2;
      sub_1D9635248();
      v48 = v95;
      sub_1D966EDE8();
      v49 = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB21720, &qword_1D9673F90);
      sub_1D96125F8(&qword_1EDCF6670, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      v50 = v88;
      sub_1D966EE88();
      v80 = 0;
      (*(v87 + 8))(v48, v50);
      (*(v49 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v63 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v65 = v106;
    }
  }

  else
  {
    LOBYTE(v106) = 0;
    sub_1D96352F0();
    v42 = v22;
    sub_1D966EDE8();
    LOBYTE(v106) = 0;
    v43 = v82;
    v44 = sub_1D966EE58();
    v63 = v58;
    v59 = v44;
    LOBYTE(v106) = 1;
    v97 = sub_1D966EE58();
    v98 = v71;
    LOBYTE(v106) = 2;
    v72 = sub_1D966EE08();
    v80 = 0;
    v68 = v72;
    v21 = v78;
    (*(v94 + 8))(v42, v43);
    (*(v100 + 8))(v18, v15);
    swift_unknownObjectRelease();
    v66 = v97;
    v67 = v98;
    v65 = v59;
  }

  *v26 = v65;
  *(v26 + 8) = v63;
  *(v26 + 16) = v66;
  *(v26 + 24) = v67;
  *(v26 + 32) = v68;
  *(v26 + 40) = v21;
  *(v26 + 48) = v81;
  return __swift_destroy_boxed_opaque_existential_1(v101);
}

uint64_t SetPrivateDataRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  return sub_1D9635344(v2, v3, v4, v5, v6, v7, v8);
}

unint64_t SetPrivateDataRequest.stringValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v15 = 0;

      sub_1D966ED28();
      MEMORY[0x1DA7338E0](0xD00000000000001ALL, 0x80000001D9680ED0);
      MEMORY[0x1DA7338E0](v2, v1);
      sub_1D96353E8(v2, v1, v3, v4, v6, v5, 3u);
      v8 = 0xD000000000000016;
      v9 = 0x80000001D9680EF0;
    }

    else
    {
      if (v7 != 4)
      {

        sub_1D966ED28();

        v15 = 0xD000000000000019;
        MEMORY[0x1DA7338E0](v3, v4);

        MEMORY[0x1DA7338E0](8250, 0xE200000000000000);
        if (v1)
        {
          v10 = v2;
        }

        else
        {
          v10 = 7104878;
        }

        if (!v1)
        {
          v1 = 0xE300000000000000;
        }

        goto LABEL_22;
      }

      sub_1D966ED28();

      v15 = 0xD00000000000001BLL;
      MEMORY[0x1DA7338E0](v2, v1);
      sub_1D96353E8(v2, v1, v3, v4, v6, v5, 4u);
      v8 = 8250;
      v9 = 0xE200000000000000;
    }

    MEMORY[0x1DA7338E0](v8, v9);
    if (v3)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v3)
    {
      v1 = 0xE400000000000000;
    }

    else
    {
      v1 = 0xE500000000000000;
    }

LABEL_22:
    MEMORY[0x1DA7338E0](v10, v1);
    goto LABEL_23;
  }

  if (!*(v0 + 48))
  {

    sub_1D966ED28();

    v15 = 0xD000000000000012;
    MEMORY[0x1DA7338E0](v3, v4);

    MEMORY[0x1DA7338E0](10272, 0xE200000000000000);
    MEMORY[0x1DA7338E0](v2, v1);

    MEMORY[0x1DA7338E0](41, 0xE100000000000000);
    return v15;
  }

  if (v7 != 1)
  {

    sub_1D966ED28();

    v15 = 0xD00000000000001FLL;
    v11 = MEMORY[0x1DA733940](v2, MEMORY[0x1E69E6158]);
    v13 = v12;
    sub_1D96353E8(v2, v1, v3, v4, v6, v5, 2u);
    MEMORY[0x1DA7338E0](v11, v13);
LABEL_23:

    return v15;
  }

  sub_1D966ED28();

  v15 = 0xD000000000000021;
  MEMORY[0x1DA7338E0](v2, v1);
  sub_1D96353E8(v2, v1, v3, v4, v6, v5, 1u);
  return v15;
}

uint64_t sub_1D9631474(uint64_t a1)
{
  v2 = sub_1D963548C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D96314B0(uint64_t a1)
{
  v2 = sub_1D963548C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetPrivateDataRequest.encode(to:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22138, &qword_1D9676AE8);
  v27 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v18 = v15 - v3;
  v4 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = a1[3];
  v17 = a1[4];
  v11 = *(v1 + 48);
  v16 = v11;
  v15[1] = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D9635344(v4, v5, v7, v6, v9, v8, v11);
  sub_1D963548C();
  v12 = v18;
  sub_1D966F118();
  v20 = v4;
  v21 = v5;
  v22 = v7;
  v23 = v6;
  v24 = v9;
  v25 = v8;
  v26 = v16;
  sub_1D96354E0();
  v13 = v19;
  sub_1D966EF68();
  sub_1D96353E8(v20, v21, v22, v23, v24, v25, v26);
  return (*(v27 + 8))(v12, v13);
}

uint64_t SetPrivateDataRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB22150, &qword_1D9676AF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D963548C();
  sub_1D966F0F8();
  if (!v2)
  {
    sub_1D9635534();
    sub_1D966EE88();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v13[1];
    v11 = v13[2];
    *a2 = v13[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 48) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9631868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496863746162 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D96318F0(uint64_t a1)
{
  v2 = sub_1D9635724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D963192C(uint64_t a1)
{
  v2 = sub_1D9635724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9631984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496C6C6174736E69 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D966EFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9631A14(uint64_t a1)
{
  v2 = sub_1D96357CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9631A50(uint64_t a1)
{
  v2 = sub_1D96357CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9631A8C()
{
  v1 = *v0;
  v2 = 0x6554686372616573;
  v3 = 0xD00000000000001ALL;
  if (v1 == 3)
  {
    v3 = 0xD000000000000019;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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