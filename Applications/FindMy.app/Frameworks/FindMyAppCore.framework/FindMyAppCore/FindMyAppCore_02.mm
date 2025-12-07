uint64_t DeviceLostModeManagementViewModel.init(lostDevice:dependencies:)(__int128 *a1, uint64_t a2)
{
  v9 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  sub_B65F0();
  v6 = v2 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice;
  *v6 = v9;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  sub_32DE0(a2, v2 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_dependencies, type metadata accessor for DeviceLostModeManagementViewModel.Dependencies);
  type metadata accessor for DeviceLostModeReportingState(0);
  swift_storeEnumTagMultiPayload();
  v7 = (v2 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModePresentationBlock);
  *v7 = ItemContactInfoSetupIntroductionViewModel.bind();
  v7[1] = 0;
  return v2;
}

uint64_t sub_31AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for DeviceLostModeReportingState(0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFE68, &qword_BEFC8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFE70, &unk_BEFD0);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  type metadata accessor for DeviceLostModeStatusProvider(0);
  v4[11] = swift_task_alloc();
  type metadata accessor for DeviceLostModeManagementViewModel.Dependencies(0);
  v4[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFBE0, &unk_BEB00);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = sub_B7A60();
  v4[17] = sub_B7A50();
  v9 = sub_B7A00();
  v4[18] = v9;
  v4[19] = v8;

  return _swift_task_switch(sub_31D04, v9, v8);
}

uint64_t sub_31D04()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  sub_32ED0(v0[3] + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_dependencies, v4, type metadata accessor for DeviceLostModeManagementViewModel.Dependencies);
  sub_32DE0(v4, v5, type metadata accessor for DeviceLostModeStatusProvider);
  (*(v2 + 32))(v1, v5, v3);
  sub_B7A90();
  v0[20] = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel___observationRegistrar;
  v0[21] = 0;
  v6 = sub_B7A50();
  v0[22] = v6;
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_31E58;
  v8 = v0[7];
  v9 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v8, v6, &protocol witness table for MainActor, v9);
}

uint64_t sub_31E58()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_31F9C, v3, v2);
}

uint64_t sub_31F9C()
{
  v1 = v0[7];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    v3 = v0[14];
    v2 = v0[15];
    v4 = v0[13];
    v5 = v0[10];
    v6 = v0[8];
    v7 = v0[9];

    (*(v7 + 8))(v5, v6);
    (*(v3 + 8))(v2, v4);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[21];
    v11 = v0[6];
    v12 = v0[3];
    sub_32DE0(v1, v11, type metadata accessor for DeviceLostModeReportingState);
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    v0[2] = v12;
    sub_32264();
    sub_B65B0();

    sub_323F8(v11, type metadata accessor for DeviceLostModeReportingState);
    v0[21] = v10;
    v14 = sub_B7A50();
    v0[22] = v14;
    v15 = swift_task_alloc();
    v0[23] = v15;
    *v15 = v0;
    v15[1] = sub_31E58;
    v16 = v0[7];
    v17 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v16, v14, &protocol witness table for MainActor, v17);
  }
}

uint64_t sub_3221C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_32264()
{
  result = qword_EFD70;
  if (!qword_EFD70)
  {
    type metadata accessor for DeviceLostModeManagementViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD70);
  }

  return result;
}

uint64_t type metadata accessor for DeviceLostModeManagementViewModel(uint64_t a1)
{
  result = qword_EFDB8;
  if (!qword_EFDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeviceLostModeManagementViewModel.deinit()
{
  sub_323F8(v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState, type metadata accessor for DeviceLostModeReportingState);

  sub_323F8(v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_dependencies, type metadata accessor for DeviceLostModeManagementViewModel.Dependencies);

  v1 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel___observationRegistrar;
  v2 = sub_B6600();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_323F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DeviceLostModeManagementViewModel.__deallocating_deinit()
{
  sub_323F8(v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState, type metadata accessor for DeviceLostModeReportingState);

  sub_323F8(v0 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_dependencies, type metadata accessor for DeviceLostModeManagementViewModel.Dependencies);

  v1 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel___observationRegistrar;
  v2 = sub_B6600();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_3256C(uint64_t a1)
{
  type metadata accessor for DeviceLostModeReportingState(319);
  if (v1 <= 0x3F)
  {
    sub_2E144(319);
    if (v2 <= 0x3F)
    {
      sub_B6600();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_326B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_32720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_32788(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_32880;

  return v6(a1);
}

uint64_t sub_32880()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_32978(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_32A6C;

  return v5(v2 + 32);
}

uint64_t sub_32A6C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_32B80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2184C;

  return sub_32978(a1, v4);
}

uint64_t sub_32C38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_F248;

  return sub_32978(a1, v4);
}

uint64_t sub_32CF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_32D28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2184C;

  return sub_32788(a1, v4);
}

uint64_t sub_32DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_32E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceLostModeReportingState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_32ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static DeviceLostModeManagementViewModel.mockDependencies.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFE78, &qword_BF020);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  type metadata accessor for DeviceLostModeReportingState(0);
  (*(v1 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0);
  return sub_B7AC0();
}

uint64_t sub_330BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFF10, &qword_BF040);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_B7A80();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v5, v2);
  sub_30A3C(0, 0, v8, &unk_BF050, v11);
}

uint64_t sub_332AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceLostModeStatusProvider(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_3332C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceLostModeStatusProvider(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeviceLostModeManagementViewModel.Dependencies(uint64_t a1)
{
  result = qword_EFED8;
  if (!qword_EFED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_333E8(uint64_t a1)
{
  result = type metadata accessor for DeviceLostModeStatusProvider(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_33454()
{
  v1 = sub_B7CF0();
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v2 = sub_B7D00();
  v0[11] = v2;
  v0[12] = *(v2 - 8);
  v0[13] = swift_task_alloc();
  v0[14] = type metadata accessor for DeviceLostModeReportingState(0);
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();

  return _swift_task_switch(sub_335C0, 0, 0);
}

uint64_t sub_335C0()
{
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  sub_B7E20();
  *(v0 + 40) = xmmword_BF010;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v4 = sub_340FC(&qword_EFF18, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_B7E00();
  sub_340FC(&qword_EFF20, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_B7D10();
  v5 = *(v2 + 8);
  *(v0 + 144) = v5;
  *(v0 + 152) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_33788;
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 16, v7, v4);
}

uint64_t sub_33788()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[10];
    v5 = v2[7];

    v3(v4, v5);
    v6 = sub_33C10;
  }

  else
  {
    v8 = v2[12];
    v7 = v2[13];
    v9 = v2[11];
    (v2[18])(v2[10], v2[7]);
    (*(v8 + 8))(v7, v9);
    v6 = sub_338F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_338F4()
{
  sub_30968(*(v0 + 136), *(v0 + 128));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 136);
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v3 = *(v0 + 120);
      sub_B6520();
      sub_309CC(v2);
      swift_storeEnumTagMultiPayload();
      sub_34144(v3, v2, type metadata accessor for DeviceLostModeReportingState);
    }

    else
    {
      sub_309CC(*(v0 + 136));
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      v4 = *(v0 + 128);
      sub_309CC(*(v0 + 136));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v5 = *(v0 + 120);
      v4 = *(v0 + 128);
      sub_B6520();
      sub_309CC(v2);
      swift_storeEnumTagMultiPayload();
      sub_34144(v5, v2, type metadata accessor for DeviceLostModeReportingState);
    }

    sub_309CC(v4);
  }

  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  sub_B7E20();
  *(v0 + 40) = xmmword_BF010;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v9 = sub_340FC(&qword_EFF18, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_B7E00();
  sub_340FC(&qword_EFF20, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_B7D10();
  v10 = *(v7 + 8);
  *(v0 + 144) = v10;
  *(v0 + 152) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_33788;
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 16, v12, v9);
}

uint64_t sub_33C10()
{
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  sub_30968(*(v0 + 136), *(v0 + 128));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 136);
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v3 = *(v0 + 120);
      sub_B6520();
      sub_309CC(v2);
      swift_storeEnumTagMultiPayload();
      sub_34144(v3, v2, type metadata accessor for DeviceLostModeReportingState);
    }

    else
    {
      sub_309CC(*(v0 + 136));
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      v4 = *(v0 + 128);
      sub_309CC(*(v0 + 136));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v5 = *(v0 + 120);
      v4 = *(v0 + 128);
      sub_B6520();
      sub_309CC(v2);
      swift_storeEnumTagMultiPayload();
      sub_34144(v5, v2, type metadata accessor for DeviceLostModeReportingState);
    }

    sub_309CC(v4);
  }

  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  sub_B7E20();
  *(v0 + 40) = xmmword_BF010;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v9 = sub_340FC(&qword_EFF18, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_B7E00();
  sub_340FC(&qword_EFF20, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_B7D10();
  v10 = *(v7 + 8);
  *(v0 + 144) = v10;
  *(v0 + 152) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_33788;
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 16, v12, v9);
}

uint64_t sub_33F30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFF10, &qword_BF040);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_34000()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFF10, &qword_BF040);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_F248;

  return sub_33454();
}

uint64_t sub_340FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_34144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_341D0()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_EFFC0);
  __swift_project_value_buffer(v0, qword_EFFC0);
  type metadata accessor for ItemsModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.devices.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEAA0 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_EFFC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

FindMyAppCore::ManagedItem __swiftcall ManagedItem.init(isOwnedByMe:properties:)(Swift::Bool isOwnedByMe, FindMyAppCore::ManagedItem::Properties properties)
{
  v3 = *properties.rawValue;
  *v2 = isOwnedByMe;
  *(v2 + 8) = v3;
  result.properties = properties;
  result.isOwnedByMe = isOwnedByMe;
  return result;
}

unint64_t sub_34374()
{
  result = qword_EFFD8;
  if (!qword_EFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFFD8);
  }

  return result;
}

unint64_t sub_343CC()
{
  result = qword_EFFE0;
  if (!qword_EFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFFE0);
  }

  return result;
}

unint64_t sub_34424()
{
  result = qword_EFFE8;
  if (!qword_EFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFFE8);
  }

  return result;
}

unint64_t sub_3447C()
{
  result = qword_EFFF0;
  if (!qword_EFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFFF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_345A8()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_F0090);
  __swift_project_value_buffer(v0, qword_F0090);
  type metadata accessor for ItemManagementModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.itemManagement.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_F0090);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *ItemManagementSectionView.init(viewModel:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for ItemManagementSectionViewModel(0);
  result = sub_B75B0();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t ItemManagementSectionView.body.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_B63C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28[-1] - v8;
  v10 = *v1;
  v11 = v1[1];
  if (qword_EEAA8 != -1)
  {
    swift_once();
  }

  v12 = sub_B62F0();
  v13 = __swift_project_value_buffer(v12, qword_F0090);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v9, v13, v12);
  (*(v14 + 56))(v9, 0, 1, v12);
  v15 = sub_B78D0();
  v17 = v16;
  sub_2B630(v9);
  sub_B63B0();
  v28[0] = v10;
  v28[1] = v11;
  v18 = sub_34A58();
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  v28[3] = &type metadata for SolariumFeatureFlag;
  v28[4] = sub_28360();
  v19 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v28);
  if (v19)
  {
    v20 = 0;
    v21 = 26.0;
  }

  else
  {
    if (qword_EEAE0 != -1)
    {
      swift_once();
    }

    v20 = *(&xmmword_FAE50 + 1);
    v21 = *&xmmword_FAE50;
  }

  v22 = type metadata accessor for DetailsSectionTemplate(0);
  v23 = &a1[v22[8]];
  *v23 = v21;
  *(v23 + 1) = v20;
  v24 = &a1[v22[5]];
  *v24 = v15;
  *(v24 + 1) = v17;
  result = (*(v4 + 32))(&a1[v22[6]], v6, v3);
  *&a1[v22[7]] = v18;
  v26 = &a1[v22[9]];
  *v26 = 0;
  *(v26 + 1) = 0;
  return result;
}

char *sub_34A58()
{
  v1 = sub_B65A0();
  v89 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v4 - 8);
  v88 = &v80 - v5;
  v6 = *v0;
  v7 = v0[1];
  *&v96[0] = *v0;
  *(&v96[0] + 1) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F00A8, &qword_BF350);
  sub_B75C0();
  v9 = v90;
  swift_getKeyPath();
  *&v96[0] = v9;
  v10 = sub_35870(&qword_F00B0, type metadata accessor for ItemManagementSectionViewModel, &protocol conformance descriptor for ItemManagementSectionViewModel);
  sub_B65C0();

  v11 = *(v9 + 24);

  if ((v11 & 8) != 0)
  {
    if (qword_EEAA8 != -1)
    {
      swift_once();
    }

    v16 = sub_B62F0();
    v17 = __swift_project_value_buffer(v16, qword_F0090);
    v18 = *(v16 - 8);
    v19 = v88;
    (*(v18 + 16))(v88, v17, v16);
    (*(v18 + 56))(v19, 0, 1, v16);
    v20 = sub_B78D0();
    v22 = v21;
    sub_2B630(v19);
    *(&v96[7] + 8) = 0u;
    *(&v96[8] + 8) = 0u;
    *(&v96[9] + 1) = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    sub_B6590();
    v23 = sub_B6560();
    v25 = v24;
    (*(v89 + 8))(v3, v1);
    *&v96[0] = v23;
    *(&v96[0] + 1) = v25;
    *&v96[1] = v20;
    *(&v96[1] + 1) = v22;
    LOBYTE(v96[2]) = 0;
    *(&v96[2] + 1) = 0;
    *&v96[3] = 0;
    BYTE8(v96[3]) = 0;
    memset(&v96[4], 0, 17);
    *(&v96[5] + 8) = 0u;
    *(&v96[6] + 8) = 0u;
    memset(&v96[10], 0, 112);
    sub_2C360(&v90, &v96[11]);
    v14 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
    v27 = *(v14 + 2);
    v26 = *(v14 + 3);
    goto LABEL_37;
  }

  v84 = v1;
  v85 = v8;
  *&v96[0] = v6;
  *(&v96[0] + 1) = v7;
  sub_B75C0();
  v12 = v90;
  swift_getKeyPath();
  *&v96[0] = v12;
  v86 = v10;
  sub_B65C0();

  v13 = *(v12 + 24);

  v82 = v7;
  v83 = v3;
  v87 = v6;
  if (v13)
  {
    v15 = v88;
    if (qword_EEAA8 != -1)
    {
      swift_once();
    }

    v28 = sub_B62F0();
    v29 = __swift_project_value_buffer(v28, qword_F0090);
    v30 = *(v28 - 8);
    (*(v30 + 16))(v15, v29, v28);
    (*(v30 + 56))(v15, 0, 1, v28);
    v31 = sub_B78D0();
    v33 = v32;
    sub_2B630(v15);
    v34 = swift_allocObject();
    *(v34 + 16) = v87;
    *(v34 + 24) = v7;
    *(&v96[7] + 8) = 0u;
    *(&v96[8] + 8) = 0u;
    *(&v96[9] + 1) = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;

    v35 = v83;
    sub_B6590();
    v36 = sub_B6560();
    v38 = v37;
    (*(v89 + 8))(v35, v84);
    *&v96[0] = v36;
    *(&v96[0] + 1) = v38;
    *&v96[1] = v31;
    *(&v96[1] + 1) = v33;
    LOBYTE(v96[2]) = 1;
    *(&v96[2] + 1) = 0;
    *&v96[3] = 0;
    BYTE8(v96[3]) = 0;
    v96[4] = 0uLL;
    LOBYTE(v96[5]) = 1;
    *(&v96[5] + 1) = sub_35914;
    v96[6] = v34;
    *&v96[7] = 0;
    memset(&v96[10], 0, 112);
    sub_2C360(&v90, &v96[11]);
    v14 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
    v40 = *(v14 + 2);
    v39 = *(v14 + 3);
    if (v40 >= v39 >> 1)
    {
      v14 = sub_5358C((v39 > 1), v40 + 1, 1, v14);
    }

    *(v14 + 2) = v40 + 1;
    memcpy(&v14[272 * v40 + 32], v96, 0x110uLL);
    v6 = v87;
    v7 = v82;
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
    v15 = v88;
  }

  *&v96[0] = v6;
  *(&v96[0] + 1) = v7;
  sub_B75C0();
  v41 = v90;
  swift_getKeyPath();
  *&v96[0] = v41;
  sub_B65C0();

  v42 = *(v41 + 24);

  if ((v42 & 2) != 0)
  {
    if (qword_EEAA8 != -1)
    {
      swift_once();
    }

    v43 = sub_B62F0();
    v44 = __swift_project_value_buffer(v43, qword_F0090);
    v45 = *(v43 - 8);
    (*(v45 + 16))(v15, v44, v43);
    (*(v45 + 56))(v15, 0, 1, v43);
    v46 = sub_B78D0();
    v88 = v47;
    sub_2B630(v15);
    *(&v96[1] + 1) = &type metadata for SolariumFeatureFlag;
    *&v96[2] = sub_28360();
    LOBYTE(v43) = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v96);
    if (v43)
    {
      v48 = 1;
    }

    else
    {
      v48 = 3;
    }

    v49 = swift_allocObject();
    *(v49 + 16) = v87;
    *(v49 + 24) = v7;
    *(&v96[7] + 8) = 0u;
    *(&v96[8] + 8) = 0u;
    *(&v96[9] + 1) = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;

    v50 = v83;
    sub_B6590();
    v51 = sub_B6560();
    v53 = v52;
    (*(v89 + 8))(v50, v84);
    *&v96[0] = v51;
    *(&v96[0] + 1) = v53;
    *&v96[1] = v46;
    *(&v96[1] + 1) = v88;
    LOBYTE(v96[2]) = v48;
    *(&v96[2] + 1) = 0;
    *&v96[3] = 0;
    BYTE8(v96[3]) = 0;
    v96[4] = 0uLL;
    LOBYTE(v96[5]) = 1;
    *(&v96[5] + 1) = sub_358E8;
    v96[6] = v49;
    *&v96[7] = 0;
    memset(&v96[10], 0, 112);
    sub_2C360(&v90, &v96[11]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_5358C(0, *(v14 + 2) + 1, 1, v14);
    }

    v55 = *(v14 + 2);
    v54 = *(v14 + 3);
    v6 = v87;
    v7 = v82;
    if (v55 >= v54 >> 1)
    {
      v14 = sub_5358C((v54 > 1), v55 + 1, 1, v14);
    }

    *(v14 + 2) = v55 + 1;
    memcpy(&v14[272 * v55 + 32], v96, 0x110uLL);
  }

  *&v96[0] = v6;
  *(&v96[0] + 1) = v7;
  sub_B75C0();
  v56 = v90;
  swift_getKeyPath();
  *&v96[0] = v56;
  sub_B65C0();

  v57 = *(v56 + 24);

  if ((v57 & 4) != 0)
  {
    if (qword_EEAA8 != -1)
    {
      swift_once();
    }

    v58 = sub_B62F0();
    v59 = __swift_project_value_buffer(v58, qword_F0090);
    v60 = *(v58 - 8);
    v61 = *(v60 + 16);
    v61(v15, v59, v58);
    v62 = *(v60 + 56);
    v62(v15, 0, 1, v58);
    v88 = sub_B78D0();
    v81 = v63;
    sub_2B630(v15);
    v61(v15, v59, v58);
    v62(v15, 0, 1, v58);
    v64 = sub_B78D0();
    v66 = v65;
    sub_2B630(v15);
    v67 = v87;
    v68 = v82;
    *&v96[0] = v87;
    *(&v96[0] + 1) = v82;
    sub_B75C0();
    v69 = v90;
    swift_getKeyPath();
    *&v96[0] = v69;
    sub_B65C0();

    v70 = *(v69 + 16);

    if (v70)
    {
      v71 = v81;
    }

    else
    {
      v71 = v66;
    }

    if (v70)
    {
      v64 = v88;
    }

    *(&v96[1] + 1) = &type metadata for SolariumFeatureFlag;
    *&v96[2] = sub_28360();
    v72 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v96);
    if (v72)
    {
      v73 = 1;
    }

    else
    {
      v73 = 3;
    }

    v74 = swift_allocObject();
    *(v74 + 16) = v67;
    *(v74 + 24) = v68;
    *(&v96[7] + 8) = 0u;
    *(&v96[8] + 8) = 0u;
    *(&v96[9] + 1) = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;

    v75 = v83;
    sub_B6590();
    v76 = sub_B6560();
    v78 = v77;
    (*(v89 + 8))(v75, v84);
    *&v96[0] = v76;
    *(&v96[0] + 1) = v78;
    *&v96[1] = v64;
    *(&v96[1] + 1) = v71;
    LOBYTE(v96[2]) = v73;
    *(&v96[2] + 1) = 0;
    *&v96[3] = 0;
    BYTE8(v96[3]) = 0;
    v96[4] = 0uLL;
    LOBYTE(v96[5]) = 1;
    *(&v96[5] + 1) = sub_358BC;
    v96[6] = v74;
    *&v96[7] = 0;
    memset(&v96[10], 0, 112);
    sub_2C360(&v90, &v96[11]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_5358C(0, *(v14 + 2) + 1, 1, v14);
    }

    v27 = *(v14 + 2);
    v26 = *(v14 + 3);
LABEL_37:
    if (v27 >= v26 >> 1)
    {
      v14 = sub_5358C((v26 > 1), v27 + 1, 1, v14);
    }

    *(v14 + 2) = v27 + 1;
    memcpy(&v14[272 * v27 + 32], v96, 0x110uLL);
  }

  return v14;
}

uint64_t sub_3572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F00A8, &qword_BF350);
  sub_B75C0();
  swift_getKeyPath();
  sub_35870(&qword_F00B0, type metadata accessor for ItemManagementSectionViewModel, &protocol conformance descriptor for ItemManagementSectionViewModel);
  sub_B65C0();

  v6 = (v10 + *a5);
  swift_beginAccess();
  v7 = *v6;

  v7(v8);
}

uint64_t sub_35870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_35960@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_35F48();
  sub_B65C0();

  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_35A1C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_35F48();
  sub_B65C0();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_35AB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_35F48();
  sub_B65C0();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_35B34(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_35F48();
  sub_B65B0();
}

uint64_t ItemManagementSectionViewModel.__allocating_init(managedItem:)(char *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  v4 = *(a1 + 1);
  sub_B69B0();
  v5 = (v2 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onRename);
  *v5 = ItemContactInfoSetupIntroductionViewModel.bind();
  v5[1] = 0;
  v6 = (v2 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onRemove);
  *v6 = ItemContactInfoSetupIntroductionViewModel.bind();
  v6[1] = 0;
  v7 = (v2 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onStopSharing);
  *v7 = ItemContactInfoSetupIntroductionViewModel.bind();
  v7[1] = 0;
  sub_B65F0();
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  return v2;
}

uint64_t ItemManagementSectionViewModel.init(managedItem:)(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  sub_B69B0();
  v4 = (v1 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onRename);
  *v4 = ItemContactInfoSetupIntroductionViewModel.bind();
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onRemove);
  *v5 = ItemContactInfoSetupIntroductionViewModel.bind();
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel__onStopSharing);
  *v6 = ItemContactInfoSetupIntroductionViewModel.bind();
  v6[1] = 0;
  sub_B65F0();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_35E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_35F48();
  sub_B65B0();
}

unint64_t sub_35F48()
{
  result = qword_F00B0;
  if (!qword_F00B0)
  {
    type metadata accessor for ItemManagementSectionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F00B0);
  }

  return result;
}

uint64_t type metadata accessor for ItemManagementSectionViewModel(uint64_t a1)
{
  result = qword_F0100;
  if (!qword_F0100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*ItemManagementSectionViewModel.onRename.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_35F48();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_36104;
}

uint64_t (*ItemManagementSectionViewModel.onRemove.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_35F48();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_3629C;
}

uint64_t sub_362D8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_35F48();
  sub_B65C0();

  v10 = (v9 + *a3);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  *a6 = a5;
  a6[1] = v13;
}

uint64_t sub_363E0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  swift_getKeyPath();
  sub_35F48();

  sub_B65B0();
}

uint64_t (*ItemManagementSectionViewModel.onStopSharing.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_35F48();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_3664C;
}

Swift::Void __swiftcall ItemManagementSectionViewModel.updateProperties(with:)(FindMyAppCore::ManagedItem with)
{
  v1 = sub_B69A0();
  v2 = sub_B7B60();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Updating General section for item", v3, 2u);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_35F48();
  sub_B65B0();
}

void sub_367A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}

uint64_t ItemManagementSectionViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ItemManagementSectionViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13FindMyAppCore30ItemManagementSectionViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_369BC(uint64_t a1)
{
  result = sub_B69C0();
  if (v2 <= 0x3F)
  {
    result = sub_B6600();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_36AD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t DelegatedURLShare.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_B64C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DelegatedURLShare.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DelegatedURLShare(0) + 20);
  v4 = sub_B6550();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DelegatedURLShare(uint64_t a1)
{
  result = qword_F0230;
  if (!qword_F0230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DelegatedURLShare.accessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DelegatedURLShare(0) + 24);
  v4 = sub_B65A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DelegatedURLShare.accessoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for DelegatedURLShare(0) + 28));

  return v1;
}

uint64_t DelegatedURLShare.accessoryType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DelegatedURLShare(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t DelegatedURLShare.init(url:expirationDate:accessoryId:accessoryName:accessoryType:numberOfViews:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a6;
  v16 = sub_B64C0();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for DelegatedURLShare(0);
  v18 = v17[5];
  v19 = sub_B6550();
  (*(*(v19 - 8) + 32))(a8 + v18, a2, v19);
  v20 = v17[6];
  v21 = sub_B65A0();
  result = (*(*(v21 - 8) + 32))(a8 + v20, a3, v21);
  v23 = (a8 + v17[7]);
  *v23 = a4;
  v23[1] = a5;
  *(a8 + v17[8]) = v15;
  *(a8 + v17[9]) = a7;
  return result;
}

void DelegatedURLShare.hash(into:)(uint64_t a1)
{
  sub_B64C0();
  sub_377B8(&qword_F01B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_B7880();
  v2 = type metadata accessor for DelegatedURLShare(0);
  sub_B6550();
  sub_377B8(&qword_F01B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_B7880();
  sub_B65A0();
  sub_377B8(&qword_F01C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_B7880();
  sub_B7980();
  sub_B7EC0(*(v1 + *(v2 + 32)));
  sub_B7EC0(*(v1 + *(v2 + 36)));
}

Swift::Int DelegatedURLShare.hashValue.getter()
{
  sub_B7EB0();
  sub_B64C0();
  sub_377B8(&qword_F01B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_B7880();
  v1 = type metadata accessor for DelegatedURLShare(0);
  sub_B6550();
  sub_377B8(&qword_F01B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_B7880();
  sub_B65A0();
  sub_377B8(&qword_F01C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_B7880();
  sub_B7980();
  sub_B7EC0(*(v0 + *(v1 + 32)));
  sub_B7EC0(*(v0 + *(v1 + 36)));
  return sub_B7EE0();
}

Swift::Int sub_371F8(int *a1)
{
  sub_B7EB0();
  sub_B64C0();
  sub_377B8(&qword_F01B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_B7880();
  sub_B6550();
  sub_377B8(&qword_F01B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_B7880();
  sub_B65A0();
  sub_377B8(&qword_F01C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_B7880();
  sub_B7980();
  sub_B7EC0(*(v1 + a1[8]));
  sub_B7EC0(*(v1 + a1[9]));
  return sub_B7EE0();
}

void sub_37374(uint64_t a1, int *a2)
{
  sub_B64C0();
  sub_377B8(&qword_F01B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_B7880();
  sub_B6550();
  sub_377B8(&qword_F01B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_B7880();
  sub_B65A0();
  sub_377B8(&qword_F01C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_B7880();
  sub_B7980();
  sub_B7EC0(*(v2 + a2[8]));
  sub_B7EC0(*(v2 + a2[9]));
}

Swift::Int sub_374DC(uint64_t a1, int *a2)
{
  sub_B7EB0();
  sub_B64C0();
  sub_377B8(&qword_F01B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  sub_B7880();
  sub_B6550();
  sub_377B8(&qword_F01B8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_B7880();
  sub_B65A0();
  sub_377B8(&qword_F01C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_B7880();
  sub_B7980();
  sub_B7EC0(*(v2 + a2[8]));
  sub_B7EC0(*(v2 + a2[9]));
  return sub_B7EE0();
}

BOOL _s13FindMyAppCore17DelegatedURLShareV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_B6490() & 1) != 0 && (v4 = type metadata accessor for DelegatedURLShare(0), (sub_B6510()) && (sub_B6570() & 1) != 0 && ((v5 = v4[7], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_B7DD0()) && *(a1 + v4[8]) == *(a2 + v4[8])))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_3771C()
{
  result = qword_F01C8;
  if (!qword_F01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F01C8);
  }

  return result;
}

uint64_t sub_377B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_37824(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_B64C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_B6550();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_B65A0();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_37990(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_B64C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_B6550();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_B65A0();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_37AE4(uint64_t a1)
{
  result = sub_B64C0();
  if (v2 <= 0x3F)
  {
    result = sub_B6550();
    if (v3 <= 0x3F)
    {
      result = sub_B65A0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t LostAccessory.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_B65A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LostAccessory.capabilities.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for LostAccessory(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for LostAccessory(uint64_t a1)
{
  result = qword_F02F8;
  if (!qword_F02F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LostAccessory.capabilities.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for LostAccessory(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t LostAccessory.accessoryType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LostAccessory(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t LostAccessory.init(id:capabilities:accessoryType:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_B65A0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for LostAccessory(0);
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

unint64_t sub_37DBC()
{
  result = qword_F0278;
  if (!qword_F0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0278);
  }

  return result;
}

unint64_t sub_37E14()
{
  result = qword_F0280;
  if (!qword_F0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0280);
  }

  return result;
}

unint64_t sub_37E6C()
{
  result = qword_F0288;
  if (!qword_F0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0288);
  }

  return result;
}

unint64_t sub_37EC4()
{
  result = qword_F0290;
  if (!qword_F0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0290);
  }

  return result;
}

unint64_t sub_37F1C()
{
  result = qword_F0298;
  if (!qword_F0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0298);
  }

  return result;
}

uint64_t sub_37F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_B65A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_38060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_B65A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_38118(uint64_t a1)
{
  result = sub_B65A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DelegatedSharesUpdater.init(stream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0338, &unk_BF940);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_38248(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0338, &unk_BF940);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_382D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0338, &unk_BF940);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DelegatedSharesUpdater(uint64_t a1)
{
  result = qword_F0398;
  if (!qword_F0398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3839C(uint64_t a1)
{
  sub_38408(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_38408(uint64_t a1)
{
  if (!qword_F03A8)
  {
    type metadata accessor for DelegatedURLShare(255);
    v1 = sub_B7AB0();
    if (!v2)
    {
      atomic_store(v1, &qword_F03A8);
    }
  }
}

FindMyAppCore::ItemProximityProvider::Proximity_optional __swiftcall ItemProximityProvider.Proximity.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_E29E0;
  v8._object = object;
  v5 = sub_B7D70(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t ItemProximityProvider.Proximity.rawValue.getter()
{
  v1 = 7496038;
  if (*v0 != 1)
  {
    v1 = 0x54426E6968746977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_3851C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7496038;
  if (v2 != 1)
  {
    v4 = 0x54426E6968746977;
    v3 = 0xED000065676E6152;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7496038;
  if (*a2 != 1)
  {
    v8 = 0x54426E6968746977;
    v7 = 0xED000065676E6152;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_B7DD0();
  }

  return v11 & 1;
}

Swift::Int sub_38628()
{
  sub_B7EB0();
  sub_B7980();

  return sub_B7EE0();
}

uint64_t sub_386D0(uint64_t a1)
{
  sub_B7980();
}

Swift::Int sub_38764()
{
  sub_B7EB0();
  sub_B7980();

  return sub_B7EE0();
}

void sub_38814(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7496038;
  if (v2 != 1)
  {
    v5 = 0x54426E6968746977;
    v4 = 0xED000065676E6152;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ItemProximityProvider.init(stream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

unint64_t sub_388F4()
{
  result = qword_F03E0;
  if (!qword_F03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F03E0);
  }

  return result;
}

uint64_t sub_3895C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_389E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ItemProximityProvider(uint64_t a1)
{
  result = qword_F0440;
  if (!qword_F0440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_38AB0(uint64_t a1)
{
  sub_38B1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_38B1C()
{
  if (!qword_F0450)
  {
    v0 = sub_B7AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_F0450);
    }
  }
}

uint64_t getEnumTagSinglePayload for ItemProximityProvider.Proximity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemProximityProvider.Proximity(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ItemContactInfoEditItemsProvider.init(visibleEditItemsBlock:userInteractableEditItemsBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_38CEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_38D34(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *ShareLiveLocationURLGenerator.init(maxShareLocationLimit:shareURLGenerator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for SPBeaconSharingError(0);
  sub_38F44(&_swiftEmptyArrayStorage);
  sub_39054();
  result = sub_B6430();
  a4[2] = a1;
  a4[3] = v9;
  *a4 = a2;
  a4[1] = a3;
  return result;
}

unint64_t sub_38E14(uint64_t a1, uint64_t a2)
{
  sub_B7EB0();
  sub_B7980();
  v4 = sub_B7EE0();

  return sub_38E8C(a1, a2, v4);
}

unint64_t sub_38E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_B7DD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_38F44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0480, &qword_BFB20);
    v3 = sub_B7D60();
    v4 = a1 + 32;

    while (1)
    {
      sub_390BC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_38E14(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_3912C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_39054()
{
  result = qword_EEC98;
  if (!qword_EEC98)
  {
    type metadata accessor for SPBeaconSharingError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EEC98);
  }

  return result;
}

uint64_t sub_390BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0488, &qword_BFB28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_3912C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_39160()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_FAD48);
  __swift_project_value_buffer(v0, qword_FAD48);
  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t sub_39208@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_B6DE0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_A310(v2, &v14 - v9, &qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_B6B50();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_B7B50();
    v13 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void *DelegatedSharesManagementView.init(viewModel:)@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for DelegatedSharesManagementView(0);
  v4 = a2 + *(v3 + 24);
  *v4 = xmmword_BFB50;
  *(v4 + 1) = xmmword_BFB60;
  *(v4 + 4) = 0x4000000000000000;
  v5 = (a2 + *(v3 + 20));
  type metadata accessor for DelegatedSharesManagementViewModel(0);
  result = sub_B75B0();
  *v5 = v7;
  v5[1] = v8;
  return result;
}

uint64_t DelegatedSharesManagementView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_B6980();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v7 - 8);
  v9 = v36 - v8;
  v41 = sub_B6850();
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0528, &unk_BFBA0);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = v36 - v11;
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v12 = sub_B62F0();
  v13 = __swift_project_value_buffer(v12, qword_FAD48);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v9, v13, v12);
  (*(v14 + 56))(v9, 0, 1, v12);
  v15 = sub_B78D0();
  v36[1] = v16;
  v36[2] = v15;
  sub_A194(v9, &unk_F17B0, &qword_BE7D0);
  v48 = &type metadata for SolariumFeatureFlag;
  v49 = sub_28360();
  v17 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v45);
  if (v17)
  {
    v18 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_40D5C();
    if (qword_EEB08 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v3, qword_FAEA0);
    (*(v4 + 16))(v6, v19, v3);
    v18 = sub_B7B90();
  }

  v36[0] = v18;
  v20 = __chkstk_darwin(v18);
  __chkstk_darwin(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0540, &qword_BFBB0);
  sub_40DB8();
  sub_A8CC(&qword_F0550, &qword_F0540, &qword_BFBB0, &protocol conformance descriptor for VStack<A>);
  v21 = v37;
  v22 = sub_B6840();
  __chkstk_darwin(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0558, &qword_BFBB8);
  v24 = sub_42B9C(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0568, &qword_BFBC0);
  v26 = sub_A8CC(&qword_F0570, &qword_F0568, &qword_BFBC0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v45 = v25;
  v46 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v39;
  v29 = v41;
  sub_B7450();
  (*(v38 + 8))(v21, v29);
  v30 = (v2 + *(type metadata accessor for DelegatedSharesManagementView(0) + 20));
  v32 = *v30;
  v31 = v30[1];
  v45 = v32;
  v46 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v33 = v44;
  swift_getKeyPath();
  v45 = v33;
  sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v45 = v29;
  v46 = v23;
  v47 = v24;
  v48 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  sub_B73A0();
  return (*(v40 + 8))(v28, v34);
}

uint64_t sub_39BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_B7550();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for DelegatedSharesManagementView(0) + 20));
  v10 = *v8;
  v9 = v8[1];
  v15[2] = v10;
  v15[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  sub_42D1C();

  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_B7580();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v13 = sub_B7570();

  result = (*(v5 + 8))(v7, v4);
  *a2 = v13;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  return result;
}

uint64_t sub_39DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0540, &qword_BFBB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  *v7 = sub_B6EA0();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06B0, &qword_BFDA0);
  sub_3AEC4(a1, &v7[*(v8 + 44)]);
  sub_4182C(v7, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_39ED4(uint64_t a1)
{
  v2 = sub_B6F50();
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0568, &qword_BFBC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - v5;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11[3] = &type metadata for SolariumFeatureFlag;
  v11[4] = sub_28360();
  v7 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v7)
  {
    v8 = sub_B6F30();
  }

  else
  {
    v8 = sub_B6F40();
  }

  __chkstk_darwin(v8);
  *(&v10 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0630, &unk_BFD20);
  sub_41428();
  sub_B6A80();
  sub_A8CC(&qword_F0570, &qword_F0568, &qword_BFBC0, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_B6F60();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_3A150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v76 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0690, &unk_BFD50);
  __chkstk_darwin(v66);
  v3 = &v62 - v2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0680, &qword_BFD48);
  __chkstk_darwin(v75);
  v67 = &v62 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0698, &qword_BFD60);
  __chkstk_darwin(v73);
  v74 = &v62 - v5;
  v6 = type metadata accessor for DelegatedSharesManagementView(0);
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  __chkstk_darwin(v6);
  v8 = sub_B7950();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0658, &unk_BFD30);
  __chkstk_darwin(v64);
  v63 = &v62 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0648, &unk_C1FC0);
  __chkstk_darwin(v72);
  v65 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0630, &unk_BFD20);
  __chkstk_darwin(v17 - 8);
  v71 = &v62 - v18;
  sub_B7A60();
  v70 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v80 = &type metadata for SolariumFeatureFlag;
  v81 = sub_28360();
  v19 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v78);
  if (v19)
  {
    v67 = v6;
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v20 = sub_B62F0();
    v21 = __swift_project_value_buffer(v20, qword_FAD48);
    v22 = *(v20 - 8);
    (*(v22 + 16))(v14, v21, v20);
    (*(v22 + 56))(v14, 0, 1, v20);
    v23 = sub_B78D0();
    v25 = v24;
    sub_A194(v14, &unk_F17B0, &qword_BE7D0);
    (*(v9 + 104))(v11, enum case for String.ButtonType.cancel(_:), v8);
    v26 = sub_B7960();
    v28 = v27;
    (*(v9 + 8))(v11, v8);
    v29 = v69;
    sub_42C40(v69, &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DelegatedSharesManagementView);
    v30 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v31 = swift_allocObject();
    v32 = sub_41914(&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for DelegatedSharesManagementView);
    v78 = v23;
    v79 = v25;
    __chkstk_darwin(v32);
    *(&v62 - 4) = &v78;
    *(&v62 - 3) = v26;
    *(&v62 - 2) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06A0, &unk_C06B0);
    sub_A8CC(&qword_F06A8, &qword_F06A0, &unk_C06B0, &protocol conformance descriptor for Label<A, B>);
    v33 = v63;
    sub_B7610();

    v34 = (v29 + *(v67 + 5));
    v36 = *v34;
    v35 = v34[1];
    v78 = v36;
    v79 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
    sub_B75C0();
    v37 = v77;
    swift_getKeyPath();
    v78 = v37;
    sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
    sub_B65C0();

    LOBYTE(v25) = *(v37 + 16);

    KeyPath = swift_getKeyPath();
    v39 = swift_allocObject();
    *(v39 + 16) = v25;
    v40 = (v33 + *(v64 + 36));
    *v40 = KeyPath;
    v40[1] = sub_42D18;
    v40[2] = v39;
    sub_415C0();
    v41 = v65;
    sub_B7360();
    sub_A194(v33, &qword_F0658, &unk_BFD30);
    v42 = &qword_F0648;
    v43 = &unk_C1FC0;
    sub_A310(v41, v74, &qword_F0648, &unk_C1FC0);
    swift_storeEnumTagMultiPayload();
    sub_4150C(&qword_F0640, &qword_F0648, &unk_C1FC0, sub_415C0);
  }

  else
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v44 = sub_B62F0();
    v45 = __swift_project_value_buffer(v44, qword_FAD48);
    v46 = *(v44 - 8);
    (*(v46 + 16))(v14, v45, v44);
    (*(v46 + 56))(v14, 0, 1, v44);
    v47 = sub_B78D0();
    v49 = v48;
    sub_A194(v14, &unk_F17B0, &qword_BE7D0);
    v78 = v47;
    v79 = v49;
    v50 = v69;
    sub_42C40(v69, &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DelegatedSharesManagementView);
    v51 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v52 = swift_allocObject();
    sub_41914(&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v51, type metadata accessor for DelegatedSharesManagementView);
    sub_97E8();
    sub_B7640();
    v53 = (v50 + *(v6 + 20));
    v55 = *v53;
    v54 = v53[1];
    v78 = v55;
    v79 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
    sub_B75C0();
    v56 = v77;
    swift_getKeyPath();
    v78 = v56;
    sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
    sub_B65C0();

    LOBYTE(v51) = *(v56 + 16);

    v57 = swift_getKeyPath();
    v58 = swift_allocObject();
    *(v58 + 16) = v51;
    v59 = &v3[*(v66 + 36)];
    *v59 = v57;
    v59[1] = sub_417AC;
    v59[2] = v58;
    sub_416A4();
    v41 = v67;
    sub_B7360();
    sub_A194(v3, &qword_F0690, &unk_BFD50);
    v42 = &qword_F0680;
    v43 = &qword_BFD48;
    sub_A310(v41, v74, &qword_F0680, &qword_BFD48);
    swift_storeEnumTagMultiPayload();
    sub_4150C(&qword_F0640, &qword_F0648, &unk_C1FC0, sub_415C0);
  }

  sub_4150C(&qword_F0678, &qword_F0680, &qword_BFD48, sub_416A4);
  v60 = v71;
  sub_B6F00();
  sub_A194(v41, v42, v43);
  sub_AB00(v60, v76, &qword_F0630, &unk_BFD20);
}

uint64_t sub_3AD7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_B6B50();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_39208(v5);
  sub_B6B40();
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_3AEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v140 = type metadata accessor for DelegatedSharesManagementView(0);
  v133 = *(v140 - 8);
  __chkstk_darwin(v140);
  v137 = v3;
  v138 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_B6E50();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v125 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06B8, &qword_BFDA8);
  v107 = *(v113 - 8);
  __chkstk_darwin(v113);
  v106 = &v99 - v5;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06C0, &qword_BFDB0);
  v112 = *(v115 - 8);
  __chkstk_darwin(v115);
  v109 = &v99 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06C8, &qword_BFDB8);
  v110 = *(v114 - 8);
  __chkstk_darwin(v114);
  v108 = &v99 - v7;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06D0, &qword_BFDC0);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v111 = &v99 - v8;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06D8, &qword_BFDC8);
  __chkstk_darwin(v119);
  v118 = &v99 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06E0, &qword_BFDD0);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v99 - v10;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06E8, &qword_BFDD8);
  __chkstk_darwin(v142);
  v126 = &v99 - v11;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06F0, &qword_BFDE0);
  v130 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v99 - v12;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06F8, &qword_BFDE8);
  v135 = *(v136 - 8);
  v13 = __chkstk_darwin(v136);
  v134 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v131 = &v99 - v15;
  v99 = sub_B64C0();
  v16 = *(v99 - 8);
  __chkstk_darwin(v99);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for ShareWebLinkPlatterView(0);
  __chkstk_darwin(v100);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0700, &qword_BFDF0);
  __chkstk_darwin(v101);
  v22 = &v99 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0708, &qword_BFDF8);
  v24 = __chkstk_darwin(v23 - 8);
  v124 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v141 = &v99 - v26;
  sub_B7A60();
  v123 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = *(v140 + 20);
  v143 = a1;
  v28 = (a1 + v27);
  v29 = v28[1];
  v144 = *v28;
  v30 = v144;
  v145 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v32 = v150;
  swift_getKeyPath();
  v144 = v32;
  v102 = sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v33 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  v34 = v99;
  (*(v16 + 16))(v18, v32 + v33, v99);

  v105 = v30;
  v144 = v30;
  v145 = v29;
  v104 = v29;
  v103 = v31;
  sub_B75C0();
  v35 = v149;
  (*(v16 + 32))(v20, v18, v34);
  v36 = v100;
  v37 = &v20[*(v100 + 20)];
  *v37 = sub_418A4;
  v37[1] = v35;
  v147 = &type metadata for SolariumFeatureFlag;
  v38 = sub_28360();
  v148 = v38;

  v39 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v144);
  if (v39)
  {
    v40 = 26.0;
    v41 = 16.0;
    v42 = v143;
    v43 = v113;
  }

  else
  {
    v43 = v113;
    if (qword_EEAB8 != -1)
    {
      swift_once();
    }

    v40 = *(&xmmword_FAD90 + 1);
    v41 = *&xmmword_FAD90;
    v42 = v143;
  }

  v44 = &v20[*(v36 + 24)];
  *v44 = v41;
  v44[1] = v40;
  v45 = sub_B70C0();
  v147 = &type metadata for SolariumFeatureFlag;
  v148 = v38;
  sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v144);
  sub_B6A10();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_41914(v20, v22, type metadata accessor for ShareWebLinkPlatterView);
  v54 = &v22[*(v101 + 36)];
  *v54 = v45;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  sub_4197C();
  sub_B7360();
  v55 = sub_A194(v22, &qword_F0700, &qword_BFDF0);
  __chkstk_darwin(v55);
  *(&v99 - 2) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0720, &qword_BFE28);
  sub_A8CC(&qword_F0728, &qword_F0720, &qword_BFE28, &protocol conformance descriptor for TupleView<A>);
  v56 = v106;
  sub_B7190();
  sub_B70C0();
  v57 = sub_A8CC(&qword_F0730, &qword_F06B8, &qword_BFDA8, &protocol conformance descriptor for List<A, B>);
  v58 = v109;
  sub_B7270();
  (*(v107 + 8))(v56, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0738, &qword_BFE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_BD800;
  v60 = sub_B70E0();
  *(inited + 32) = v60;
  v61 = sub_B7100();
  *(inited + 33) = v61;
  sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v60)
  {
    sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v61)
  {
    sub_B70F0();
  }

  v144 = v43;
  v145 = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v108;
  v64 = v115;
  sub_B7270();
  (*(v112 + 8))(v58, v64);
  v144 = v64;
  v145 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v65 = v111;
  v66 = v114;
  sub_B7390();
  (*(v110 + 8))(v63, v66);
  v67 = v125;
  sub_B6E40();
  v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0740, &qword_BFE38) + 36);
  v69 = v127;
  v70 = v118;
  v71 = v128;
  (*(v127 + 16))(&v118[v68], v67, v128);
  v72 = *(v69 + 56);
  v72(v70 + v68, 0, 1, v71);
  (*(v116 + 32))(v70, v65, v117);
  KeyPath = swift_getKeyPath();
  v74 = (v70 + *(v119 + 36));
  v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0748, &qword_BFE70) + 28);
  (*(v69 + 32))(v74 + v75, v67, v71);
  v72(v74 + v75, 0, 1, v71);
  *v74 = KeyPath;
  sub_41A48();
  v76 = v120;
  sub_B7370();
  sub_A194(v70, &qword_F06D8, &qword_BFDC8);
  v77 = v138;
  sub_42C40(v143, v138, type metadata accessor for DelegatedSharesManagementView);
  v78 = (*(v133 + 80) + 16) & ~*(v133 + 80);
  v79 = swift_allocObject();
  sub_41914(v77, v79 + v78, type metadata accessor for DelegatedSharesManagementView);
  v80 = v126;
  (*(v121 + 32))(v126, v76, v122);
  v81 = (v80 + *(v142 + 36));
  *v81 = sub_41C9C;
  v81[1] = v79;
  v81[2] = 0;
  v81[3] = 0;
  v144 = v105;
  v145 = v104;
  sub_B75C0();
  v82 = v149;
  swift_getKeyPath();
  v144 = v82;
  sub_B65C0();

  LOBYTE(v79) = *(v82 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss);

  LOBYTE(v144) = v79;
  sub_42C40(v143, v77, type metadata accessor for DelegatedSharesManagementView);
  v83 = swift_allocObject();
  sub_41914(v77, v83 + v78, type metadata accessor for DelegatedSharesManagementView);
  v84 = sub_41DA8();
  v85 = v129;
  v86 = v142;
  sub_B7470();

  sub_A194(v80, &qword_F06E8, &qword_BFDD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0780, &qword_C0EC0);
  sub_B6C80();
  *(swift_allocObject() + 16) = xmmword_BDA30;
  sub_B6C70();
  v144 = v86;
  v145 = &type metadata for Bool;
  v146 = v84;
  v147 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v87 = v131;
  v88 = v132;
  sub_B7300();

  (*(v130 + 8))(v85, v88);
  v89 = v141;
  v90 = v124;
  sub_A310(v141, v124, &qword_F0708, &qword_BFDF8);
  v91 = v135;
  v92 = *(v135 + 16);
  v93 = v134;
  v94 = v136;
  v92(v134, v87, v136);
  v95 = v139;
  sub_A310(v90, v139, &qword_F0708, &qword_BFDF8);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0788, &unk_BFEB0);
  v92((v95 + *(v96 + 48)), v93, v94);
  v97 = *(v91 + 8);
  v97(v87, v94);
  sub_A194(v89, &qword_F0708, &qword_BFDF8);
  v97(v93, v94);
  sub_A194(v90, &qword_F0708, &qword_BFDF8);
}

uint64_t sub_3C250@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = sub_B62F0();
  v40 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0790, &qword_BFEC8);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = __chkstk_darwin(v6);
  v47 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0798, &qword_BFED0);
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = __chkstk_darwin(v10);
  v41 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v39 - v13;
  sub_B7A60();
  v44 = sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  v39[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F07A0, &qword_BFED8);
  sub_A8CC(&qword_F07A8, &qword_F07A0, &qword_BFED8, &protocol conformance descriptor for TupleView<A>);
  v16 = sub_B7720();
  v39[1] = v39;
  __chkstk_darwin(v16);
  v39[-2] = a1;
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6E60();
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_FAD48);
  (*(v40 + 16))(v5, v17, v3);
  v18 = sub_B71B0();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v50 = v18;
  v51 = v20;
  v52 = v22 & 1;
  v53 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F07B0, &qword_BFEE0);
  sub_41F74();
  v25 = v49;
  sub_B7730();
  v27 = v41;
  v26 = v42;
  v28 = *(v42 + 16);
  v39[0] = v14;
  v29 = v43;
  v28(v41, v14, v43);
  v30 = v45;
  v40 = *(v45 + 16);
  v31 = v47;
  v32 = v25;
  v33 = v46;
  (v40)(v47, v32, v46);
  v34 = v48;
  v28(v48, v27, v29);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0820, &qword_BFF20);
  (v40)(&v34[*(v35 + 48)], v31, v33);
  v36 = *(v30 + 8);
  v36(v49, v33);
  v37 = *(v26 + 8);
  v37(v39[0], v29);
  v36(v31, v33);
  v37(v27, v29);
}

uint64_t sub_3C818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a1;
  v132 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0890, &qword_BFFD8);
  __chkstk_darwin(v122);
  v3 = &v108 - v2;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0898, &qword_BFFE0);
  __chkstk_darwin(v129);
  v128 = &v108 - v4;
  v121 = type metadata accessor for ShareLinkRow(0);
  __chkstk_darwin(v121);
  v6 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F08A0, &qword_BFFE8);
  v8 = __chkstk_darwin(v7 - 8);
  v131 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v130 = &v108 - v10;
  v11 = sub_B6550();
  v119 = *(v11 - 8);
  v120 = v11;
  __chkstk_darwin(v11);
  v118 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v108 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F08A8, &unk_BFFF0);
  v17 = __chkstk_darwin(v16 - 8);
  v125 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v124 = &v108 - v20;
  v21 = __chkstk_darwin(v19);
  v142 = &v108 - v22;
  __chkstk_darwin(v21);
  v143 = &v108 - v23;
  sub_B7A60();
  v123 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v126 = v3;
  v127 = v6;
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v24 = sub_B62F0();
  v25 = __swift_project_value_buffer(v24, qword_FAD48);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v27(v15, v25, v24);
  v28 = *(v26 + 56);
  v28(v15, 0, 1, v24);
  v29 = sub_B78D0();
  v109 = v30;
  v110 = v29;
  sub_A194(v15, &unk_F17B0, &qword_BE7D0);
  v114 = v26 + 16;
  v115 = v25;
  v113 = v27;
  v27(v15, v25, v24);
  v111 = v24;
  v112 = v28;
  v116 = v26 + 56;
  v28(v15, 0, 1, v24);
  sub_B78D0();
  sub_A194(v15, &unk_F17B0, &qword_BE7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_BDA30;
  v32 = type metadata accessor for DelegatedSharesManagementView(0);
  v33 = v137;
  v34 = (v137 + *(v32 + 20));
  v35 = *v34;
  v140 = v34[1];
  v141 = v35;
  *&v158 = v35;
  *(&v158 + 1) = v140;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v36 = *&v156[0];
  swift_getKeyPath();
  *&v158 = v36;
  v138 = sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v37 = v36 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  v108 = type metadata accessor for DelegatedURLShare(0);
  v38 = *(v37 + *(v108 + 36));

  *(v31 + 56) = &type metadata for UInt;
  *(v31 + 64) = &protocol witness table for UInt;
  *(v31 + 32) = v38;
  v39 = sub_B7920();
  v133 = v40;

  v117 = (v33 + *(v32 + 24));
  v41 = v117[2];
  *&v158 = 1;
  WORD4(v158) = 256;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0850, &qword_BFF60);
  v43 = sub_A8CC(&qword_F0858, &qword_F0850, &qword_BFF60, &protocol conformance descriptor for _ShapeView<A, B>);
  v137 = v42;
  v135 = v43;
  v44 = sub_B76A0();
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0738, &qword_BFE30);
  inited = swift_initStackObject();
  v134 = xmmword_BD800;
  *(inited + 16) = xmmword_BD800;
  v46 = sub_B70C0();
  *(inited + 32) = v46;
  v47 = sub_B70D0();
  *(inited + 33) = v47;
  v48 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v46)
  {
    v48 = sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v47)
  {
    v48 = sub_B70F0();
  }

  sub_B6A10();
  *&v158 = v110;
  *(&v158 + 1) = v109;
  *&v159 = v39;
  *(&v159 + 1) = v133;
  *&v160 = v44;
  BYTE8(v160) = v48;
  *&v161 = v49;
  *(&v161 + 1) = v50;
  *&v162 = v51;
  *(&v162 + 1) = v52;
  v163 = 0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F08B0, &qword_C0000);
  sub_421CC(&qword_F08B8, &qword_F08B0, &qword_C0000, sub_429A8);
  v133 = v53;
  sub_B7360();
  v156[2] = v160;
  v156[3] = v161;
  v156[4] = v162;
  v157 = v163;
  v156[0] = v158;
  v156[1] = v159;
  sub_A194(v156, &qword_F08B0, &qword_C0000);
  v54 = v111;
  v113(v15, v115, v111);
  v112(v15, 0, 1, v54);
  v55 = sub_B78D0();
  v115 = v56;
  v116 = v55;
  sub_A194(v15, &unk_F17B0, &qword_BE7D0);
  *&v150 = v141;
  *(&v150 + 1) = v140;
  sub_B75C0();
  v57 = *&v148[0];
  swift_getKeyPath();
  *&v150 = v57;
  sub_B65C0();

  v58 = v57 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  v60 = v118;
  v59 = v119;
  v61 = v120;
  (*(v119 + 16))(v118, v58 + *(v108 + 20), v120);

  v62 = sub_B6540();
  v64 = v63;
  (*(v59 + 8))(v60, v61);
  *&v150 = 1;
  WORD4(v150) = 256;
  v65 = sub_B76A0();
  v66 = swift_initStackObject();
  *(v66 + 16) = v134;
  LOBYTE(v60) = sub_B70C0();
  *(v66 + 32) = v60;
  v67 = sub_B70D0();
  *(v66 + 33) = v67;
  v68 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v60)
  {
    v68 = sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v67)
  {
    v68 = sub_B70F0();
  }

  sub_B6A10();
  *&v150 = v116;
  *(&v150 + 1) = v115;
  *&v151 = v62;
  *(&v151 + 1) = v64;
  *&v152 = v65;
  BYTE8(v152) = v68;
  *&v153 = v69;
  *(&v153 + 1) = v70;
  *&v154 = v71;
  *(&v154 + 1) = v72;
  v155 = 0;
  sub_B7360();
  v148[2] = v152;
  v148[3] = v153;
  v148[4] = v154;
  v149 = v155;
  v148[0] = v150;
  v148[1] = v151;
  sub_A194(v148, &qword_F08B0, &qword_C0000);
  v73 = *v117;
  v74 = v117[1];
  v75 = v117[3];
  v76 = v117[4];
  v146 = v141;
  v147 = v140;
  sub_B75C0();
  v77 = v144;
  swift_getKeyPath();
  v146 = v77;
  sub_B65C0();

  v78 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  v79 = v121;
  v80 = *(v121 + 20);
  v81 = sub_B64C0();
  v82 = v127;
  (*(*(v81 - 8) + 16))(v127 + v80, v77 + v78, v81);

  *v82 = v73;
  v82[1] = v74;
  v82[2] = v41;
  v82[3] = v75;
  v82[4] = v76;
  v83 = (v82 + *(v79 + 24));
  *v83 = 0x6172672D6E65706FLL;
  v83[1] = 0xEA00000000006870;
  v144 = 1;
  v145 = 256;
  v84 = sub_B76A0();
  v85 = v126;
  sub_42C40(v82, v126, type metadata accessor for ShareLinkRow);
  *(v85 + *(v122 + 36)) = v84;
  v86 = swift_initStackObject();
  *(v86 + 16) = v134;
  LOBYTE(v79) = sub_B70C0();
  *(v86 + 32) = v79;
  v87 = sub_B70D0();
  *(v86 + 33) = v87;
  v88 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v79)
  {
    v88 = sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v87)
  {
    v88 = sub_B70F0();
  }

  sub_B6A10();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v97 = v85;
  v98 = v128;
  sub_AB00(v97, v128, &qword_F0890, &qword_BFFD8);
  v99 = v98 + *(v129 + 36);
  *v99 = v88;
  *(v99 + 8) = v90;
  *(v99 + 16) = v92;
  *(v99 + 24) = v94;
  *(v99 + 32) = v96;
  *(v99 + 40) = 0;
  sub_421CC(&qword_F08D8, &qword_F0898, &qword_BFFE0, sub_42AB4);
  v100 = v130;
  sub_B7360();
  sub_A194(v98, &qword_F0898, &qword_BFFE0);
  sub_42BE4(v82);
  v101 = v124;
  sub_A310(v143, v124, &qword_F08A8, &unk_BFFF0);
  v102 = v142;
  v103 = v125;
  sub_A310(v142, v125, &qword_F08A8, &unk_BFFF0);
  v104 = v131;
  sub_A310(v100, v131, &qword_F08A0, &qword_BFFE8);
  v105 = v132;
  sub_A310(v101, v132, &qword_F08A8, &unk_BFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F08F0, &qword_C0010);
  sub_A310(v103, v105 + *(v106 + 48), &qword_F08A8, &unk_BFFF0);
  sub_A310(v104, v105 + *(v106 + 64), &qword_F08A0, &qword_BFFE8);
  sub_A194(v100, &qword_F08A0, &qword_BFFE8);
  sub_A194(v102, &qword_F08A8, &unk_BFFF0);
  sub_A194(v143, &qword_F08A8, &unk_BFFF0);
  sub_A194(v104, &qword_F08A0, &qword_BFFE8);
  sub_A194(v103, &qword_F08A8, &unk_BFFF0);
  sub_A194(v101, &qword_F08A8, &unk_BFFF0);
}

uint64_t sub_3D774@<X0>(uint64_t a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3D824(a1);
}

uint64_t sub_3D824@<X0>(uint64_t a1@<X8>)
{
  v146 = a1;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0828, &qword_BFF28);
  v127 = *(v147 - 8);
  __chkstk_darwin(v147);
  v142 = &v122 - v1;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0830, &qword_BFF30);
  __chkstk_darwin(v143);
  v145 = &v122 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v123 = &v122 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  v7 = __chkstk_darwin(v6 - 8);
  v125 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v124 = &v122 - v9;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0838, &unk_BFF38);
  v126 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v122 - v10;
  v137 = type metadata accessor for DelegatedSharesManagementView(0);
  v11 = *(v137 - 8);
  v12 = __chkstk_darwin(v137);
  v128 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v13;
  __chkstk_darwin(v12);
  v149 = (&v122 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v122 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0808, &qword_BFF10);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v122 - v18;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F07F8, &qword_BFF08);
  __chkstk_darwin(v129);
  v133 = &v122 - v19;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F07E8, &qword_BFF00);
  __chkstk_darwin(v134);
  v21 = &v122 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F07D8, &qword_BFEF8);
  __chkstk_darwin(v22 - 8);
  v136 = &v122 - v23;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F07C0, &qword_BFEE8);
  __chkstk_darwin(v150);
  v151 = &v122 - v24;
  v156 = &type metadata for SolariumFeatureFlag;
  v135 = sub_28360();
  v157 = v135;
  v25 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v153);
  v140 = v3;
  v139 = v4;
  if (v25)
  {
    sub_B69F0();
  }

  else
  {
    sub_B69E0();
  }

  v26 = sub_B6A00();
  (*(*(v26 - 8) + 56))(v17, 0, 1, v26);
  v27 = v152;
  v28 = v149;
  sub_42C40(v152, v149, type metadata accessor for DelegatedSharesManagementView);
  v29 = *(v11 + 80);
  v30 = (v29 + 16) & ~v29;
  v31 = swift_allocObject();
  sub_41914(v28, v31 + v30, type metadata accessor for DelegatedSharesManagementView);
  v32 = v27;
  v33 = v128;
  sub_42C40(v32, v128, type metadata accessor for DelegatedSharesManagementView);
  v138 = v29;
  v34 = swift_allocObject();
  sub_41914(v33, v34 + v30, type metadata accessor for DelegatedSharesManagementView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0840, &qword_BFF58);
  sub_A8CC(&qword_F0848, &qword_F0840, &qword_BFF58, &protocol conformance descriptor for HStack<A>);
  v35 = v130;
  sub_B66D0();
  v153 = 1;
  LOWORD(v154) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0850, &qword_BFF60);
  sub_A8CC(&qword_F0858, &qword_F0850, &qword_BFF60, &protocol conformance descriptor for _ShapeView<A, B>);
  v36 = sub_B76A0();
  v37 = v133;
  (*(v131 + 32))(v133, v35, v132);
  *(v37 + *(v129 + 36)) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0738, &qword_BFE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_BD800;
  v39 = sub_B70C0();
  *(inited + 32) = v39;
  v40 = sub_B70D0();
  *(inited + 33) = v40;
  v41 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v39)
  {
    v41 = sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v40)
  {
    v41 = sub_B70F0();
  }

  v42 = v139;
  v43 = v138;
  v44 = ~v138;
  v45 = v137;
  v46 = v152;
  sub_B6A10();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_AB00(v37, v21, &qword_F07F8, &qword_BFF08);
  v55 = &v21[*(v134 + 36)];
  *v55 = v41;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  sub_4219C();
  v56 = v136;
  sub_B7360();
  sub_A194(v21, &qword_F07E8, &qword_BFF00);
  v57 = (v46 + *(v45 + 20));
  v58 = *v57;
  v59 = v57[1];
  v153 = *v57;
  v154 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v60 = v159;
  swift_getKeyPath();
  v153 = v60;
  sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v61 = *(v60 + 16);

  KeyPath = swift_getKeyPath();
  v63 = swift_allocObject();
  *(v63 + 16) = v61;
  v64 = v151;
  sub_AB00(v56, v151, &qword_F07D8, &qword_BFEF8);
  v65 = (v64 + *(v150 + 36));
  *v65 = KeyPath;
  v65[1] = sub_42D18;
  v65[2] = v63;
  v156 = &type metadata for SolariumFeatureFlag;
  v157 = v135;
  LOBYTE(KeyPath) = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v153);
  v66 = (v42 + 48);
  if (KeyPath)
  {
    v153 = v58;
    v154 = v59;
    sub_B75C0();
    v67 = v124;
    sub_43130(v124);

    v68 = v140;
    if ((*v66)(v67, 1, v140))
    {
      sub_A194(v67, &qword_EEE08, &qword_BD530);
      v69 = 0;
      v70 = 0xE000000000000000;
    }

    else
    {
      v75 = v123;
      (*(v42 + 16))(v123, v67, v68);
      sub_A194(v67, &qword_EEE08, &qword_BD530);
      v69 = sub_B6920();
      v70 = v76;
      (*(v42 + 8))(v75, v68);
    }

    v153 = v69;
    v154 = v70;
    sub_97E8();
    v142 = sub_B7200();
    v140 = v77;
    LODWORD(v138) = v78;
    v139 = v79;
    v80 = v152;
    v81 = v149;
    sub_42C40(v152, v149, type metadata accessor for DelegatedSharesManagementView);
    sub_B7A60();
    v82 = sub_B7A50();
    v83 = (v43 + 32) & v44;
    v84 = swift_allocObject();
    *(v84 + 16) = v82;
    *(v84 + 24) = &protocol witness table for MainActor;
    sub_41914(v81, v84 + v83, type metadata accessor for DelegatedSharesManagementView);
    sub_42C40(v80, v81, type metadata accessor for DelegatedSharesManagementView);
    v85 = sub_B7A50();
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    *(v86 + 24) = &protocol witness table for MainActor;
    sub_41914(v81, v86 + v83, type metadata accessor for DelegatedSharesManagementView);
    v87 = sub_B76D0();
    v149 = &v122;
    v88 = __chkstk_darwin(v87);
    __chkstk_darwin(v88);
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
    v152 = sub_420B8();
    v121 = sub_9BD4();
    v89 = v150;
    LOBYTE(v81) = v138;
    v90 = v141;
    v91 = v142;
    v92 = v140;
    sub_B7310();
    sub_9C84(v91, v92, v81 & 1);

    v93 = v126;
    v94 = v144;
    (*(v126 + 16))(v145, v90, v144);
    swift_storeEnumTagMultiPayload();
    v95 = v148;
    v153 = v89;
    v154 = v148;
    v96 = v152;
    v155 = &type metadata for Text;
    v156 = v152;
    v157 = v121;
    v158 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v153 = v89;
    v154 = v95;
    v155 = &type metadata for Text;
    v156 = v96;
    v157 = v121;
    v158 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_B6F00();
    (*(v93 + 8))(v141, v94);
  }

  else
  {
    v153 = v58;
    v154 = v59;
    sub_B75C0();
    v71 = v125;
    sub_43130(v125);

    v72 = v140;
    if ((*v66)(v71, 1, v140))
    {
      sub_A194(v71, &qword_EEE08, &qword_BD530);
      v73 = 0;
      v74 = 0xE000000000000000;
    }

    else
    {
      v97 = v123;
      (*(v42 + 16))(v123, v71, v72);
      sub_A194(v71, &qword_EEE08, &qword_BD530);
      v73 = sub_B6920();
      v74 = v98;
      (*(v42 + 8))(v97, v72);
    }

    v153 = v73;
    v154 = v74;
    sub_97E8();
    v141 = sub_B7200();
    v140 = v99;
    LODWORD(v138) = v100;
    v139 = v101;
    v102 = v152;
    v103 = v149;
    sub_42C40(v152, v149, type metadata accessor for DelegatedSharesManagementView);
    sub_B7A60();
    v104 = sub_B7A50();
    v105 = (v43 + 32) & v44;
    v106 = swift_allocObject();
    *(v106 + 16) = v104;
    *(v106 + 24) = &protocol witness table for MainActor;
    sub_41914(v103, v106 + v105, type metadata accessor for DelegatedSharesManagementView);
    sub_42C40(v102, v103, type metadata accessor for DelegatedSharesManagementView);
    v107 = sub_B7A50();
    v108 = swift_allocObject();
    *(v108 + 16) = v107;
    *(v108 + 24) = &protocol witness table for MainActor;
    sub_41914(v103, v108 + v105, type metadata accessor for DelegatedSharesManagementView);
    v109 = sub_B76D0();
    v149 = &v122;
    v110 = __chkstk_darwin(v109);
    __chkstk_darwin(v110);
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
    v152 = sub_420B8();
    v120 = sub_9BD4();
    v111 = v150;
    LOBYTE(v103) = v138;
    v112 = v142;
    v113 = v141;
    v114 = v140;
    sub_B7400();
    sub_9C84(v113, v114, v103 & 1);

    v115 = v127;
    v116 = v147;
    (*(v127 + 16))(v145, v112, v147);
    swift_storeEnumTagMultiPayload();
    v117 = v148;
    v153 = v111;
    v154 = v148;
    v118 = v152;
    v155 = &type metadata for Text;
    v156 = v152;
    v157 = v120;
    v158 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    v153 = v111;
    v154 = v117;
    v155 = &type metadata for Text;
    v156 = v118;
    v157 = v120;
    v158 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_B6F00();
    (*(v115 + 8))(v142, v116);
  }

  return sub_A194(v151, &qword_F07C0, &qword_BFEE8);
}

uint64_t sub_3ECDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (a1 + *(type metadata accessor for DelegatedSharesManagementView(0) + 20));
  v7 = *v5;
  v6 = v5[1];
  v13[2] = v7;
  v13[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v8 = v13[1];
  v9 = sub_B7A80();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);

  v10 = sub_B7A50();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  sub_30A3C(0, 0, v4, &unk_BFEC0, v11);
}

uint64_t sub_3EEB8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_B6B50();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v7)
  {
    sub_39208(v6);
    sub_B6B40();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
  }
}

uint64_t sub_3F038(uint64_t a1)
{
  v1[5] = a1;
  sub_B7A60();
  v1[6] = sub_B7A50();
  v3 = sub_B7A00();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_3F0D0, v3, v2);
}

uint64_t sub_3F0D0()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for DelegatedSharesManagementView(0) + 20));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v0[9] = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_3F1A4;

  return sub_42FEC();
}

uint64_t sub_3F1A4()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_3F2E8, v3, v2);
}

uint64_t sub_3F2E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3F348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_B6E30();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0860, &unk_C2200);
  return sub_3F39C(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_3F39C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0868, &unk_BFFB0);
  v55 = *(v2 - 8);
  v56 = v2;
  __chkstk_darwin(v2);
  v49 = (&v47 - v3);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0870, &unk_C2210);
  v4 = *(v48 - 8);
  v5 = __chkstk_darwin(v48);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0878, &unk_BFFC0);
  v11 = __chkstk_darwin(v10 - 8);
  v54 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v47 - v13;
  v14 = sub_B62F0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  v53 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6E60();
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_FAD48);
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_B71B0();
  v21 = v20;
  v50 = v22;
  v24 = v23;
  v25 = (v51 + *(type metadata accessor for DelegatedSharesManagementView(0) + 20));
  v27 = *v25;
  v26 = v25[1];
  v59 = v27;
  v60 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  v28 = v58;
  swift_getKeyPath();
  v59 = v28;
  sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v29 = *(v28 + 16);

  v30 = 1;
  if (v29 == 1)
  {
    v51 = v21;
    v31 = v19;
    v32 = v24;
    v33 = v9;
    sub_B6A90();
    v34 = *(v4 + 16);
    v35 = v9;
    v36 = v48;
    v34(v7, v35, v48);
    v37 = v49;
    *v49 = 0;
    *(v37 + 8) = 1;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0888, &qword_BFFD0);
    v34((v37 + *(v38 + 48)), v7, v36);
    v39 = *(v4 + 8);
    v40 = v33;
    v24 = v32;
    v19 = v31;
    v21 = v51;
    v39(v40, v36);
    v39(v7, v36);
    sub_AB00(v37, v57, &qword_F0868, &unk_BFFB0);
    v30 = 0;
  }

  v41 = v57;
  (*(v55 + 56))(v57, v30, 1, v56);
  v42 = v54;
  sub_A310(v41, v54, &qword_F0878, &unk_BFFC0);
  v43 = v52;
  *v52 = v19;
  v43[1] = v21;
  v44 = v50 & 1;
  *(v43 + 16) = v50 & 1;
  v43[3] = v24;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0880, &unk_C2220);
  sub_A310(v42, v43 + *(v45 + 48), &qword_F0878, &unk_BFFC0);
  sub_41410(v19, v21, v44);

  sub_A194(v41, &qword_F0878, &unk_BFFC0);
  sub_A194(v42, &qword_F0878, &unk_BFFC0);
  sub_9C84(v19, v21, v44);
}

uint64_t sub_3F9AC@<X0>(uint64_t a1@<X2>, BOOL *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (a1 + *(type metadata accessor for DelegatedSharesManagementView(0) + 20));
  v10 = *v8;
  v9 = v8[1];
  v14[2] = v10;
  v14[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  sub_43130(v7);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v12 = (*(*(v11 - 8) + 48))(v7, 1, v11) != 1;
  sub_A194(v7, &qword_EEE08, &qword_BD530);

  *a3 = v12;
  return result;
}

uint64_t sub_3FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a4 + *(type metadata accessor for DelegatedSharesManagementView(0) + 20));
  v8 = *v6;
  v7 = v6[1];
  v10[0] = v8;
  v10[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  LOWORD(v10[0]) = -256;
  sub_44260(v10);
}

uint64_t sub_3FC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = (a1 + *(type metadata accessor for DelegatedSharesManagementView(0) + 20));
  v13 = *v11;
  v12 = v11[1];
  v22[0] = v13;
  v22[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  sub_43130(v10);

  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v14 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v14 = sub_B6930();
    (*(v5 + 8))(v7, v4);
  }

  v22[0] = v14;
  KeyPath = swift_getKeyPath();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v18 = sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50, &protocol conformance descriptor for [A]);
  v19 = sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
  sub_B76E0(v22, KeyPath, v21, 0, v16, v17, v18, &protocol witness table for String, v19);
}

uint64_t sub_3FFC8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[2] = a5;
  v23[3] = a4;
  v23[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  __chkstk_darwin(v13 - 8);
  v15 = v23 - v14;
  sub_B7A60();
  v23[0] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[4] = sub_B68C0();
  v23[5] = v16;
  sub_B68A0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    sub_A194(v12, &qword_EEF48, &unk_C01F0);
    v19 = sub_B6A00();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  else
  {
    sub_B6890();
    (*(v18 + 8))(v12, v17);
  }

  (*(v7 + 16))(v9, a1, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = swift_allocObject();
  (*(v7 + 32))(v21 + v20, v9, v6);
  sub_97E8();
  sub_B7630();
}

uint64_t sub_40324(uint64_t a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v2 = sub_B68D0();
  v4(v2);
}

uint64_t sub_403F8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = (a1 + *(type metadata accessor for DelegatedSharesManagementView(0) + 20));
  v14 = *v12;
  v13 = v12[1];
  v27 = v14;
  v28 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0578, &qword_BFBC8);
  sub_B75C0();
  sub_43130(v11);

  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_A194(v11, &qword_EEE08, &qword_BD530);
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_A194(v11, &qword_EEE08, &qword_BD530);
    v15 = sub_B6940();
    v16 = v17;
    (*(v6 + 8))(v8, v5);
  }

  v27 = v15;
  v28 = v16;
  sub_97E8();
  v18 = sub_B7200();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  *a3 = v18;
  *(a3 + 8) = v20;
  *(a3 + 16) = v22 & 1;
  *(a3 + 24) = v24;
  return result;
}

uint64_t sub_406B0@<X0>(uint64_t a5@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_97E8();

  v24 = sub_B7200();
  v25 = v6;
  v8 = v7;
  v23 = v9;

  v10 = sub_B7200();
  v12 = v11;
  v14 = v13;
  sub_B6FA0();
  v15 = sub_B71C0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_9C84(v10, v12, v14 & 1);

  *a5 = v24;
  *(a5 + 8) = v8;
  *(a5 + 16) = v23 & 1;
  *(a5 + 24) = v25;
  *(a5 + 32) = 0x4020000000000000;
  *(a5 + 40) = 0;
  *(a5 + 48) = v15;
  *(a5 + 56) = v17;
  *(a5 + 64) = v19 & 1;
  *(a5 + 72) = v21;
  sub_41410(v24, v8, v23 & 1);

  sub_41410(v15, v17, v19 & 1);

  sub_9C84(v15, v17, v19 & 1);

  sub_9C84(v24, v8, v23 & 1);
}

double sub_408CC@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_B6E30();
  v15 = 0;
  sub_406B0(&v9);
  v18 = v11;
  v19 = v12;
  v16 = v9;
  v17 = v10;
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v21[1] = v10;
  v20 = v13;
  v21[0] = v9;
  sub_A310(&v16, &v8, &qword_F0628, &qword_BFD18);
  sub_A194(v21, &qword_F0628, &qword_BFD18);
  *&v14[7] = v16;
  *&v14[71] = v20;
  *&v14[55] = v19;
  *&v14[39] = v18;
  *&v14[23] = v17;
  v4 = *&v14[48];
  *(a2 + 49) = *&v14[32];
  *(a2 + 65) = v4;
  *(a2 + 81) = *&v14[64];
  result = *v14;
  v6 = *&v14[16];
  *(a2 + 17) = *v14;
  v7 = v15;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 96) = *&v14[79];
  *(a2 + 33) = v6;
  return result;
}

uint64_t sub_409E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_40AB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  return sub_42C40(v3 + v4, a2, type metadata accessor for DelegatedURLShare);
}

uint64_t sub_40B94(uint64_t a1)
{
  v2 = type metadata accessor for DelegatedURLShare(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_42C40(a1, v4, type metadata accessor for DelegatedURLShare);
  return sub_4439C(v4);
}

uint64_t sub_40C34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_42B9C(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss);
  return result;
}

uint64_t type metadata accessor for DelegatedSharesManagementView(uint64_t a1)
{
  result = qword_F05E0;
  if (!qword_F05E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_40D5C()
{
  result = qword_F0530;
  if (!qword_F0530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_F0530);
  }

  return result;
}

unint64_t sub_40DB8()
{
  result = qword_F0548;
  if (!qword_F0548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0538, &qword_C04E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0548);
  }

  return result;
}

uint64_t sub_40EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
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

uint64_t sub_40F7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE90, &unk_BD680);
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

void sub_41040(uint64_t a1)
{
  sub_4112C(319, &qword_EEF00, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_4112C(319, &unk_F05F0, type metadata accessor for DelegatedSharesManagementViewModel, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_4112C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_41190()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0528, &unk_BFBA0);
  sub_B6850();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0558, &qword_BFBB8);
  sub_42B9C(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0568, &qword_BFBC0);
  sub_A8CC(&qword_F0570, &qword_F0568, &qword_BFBC0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_412F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_41318(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_4135C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_413A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_41410(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_41428()
{
  result = qword_F0638;
  if (!qword_F0638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0630, &unk_BFD20);
    sub_4150C(&qword_F0640, &qword_F0648, &unk_C1FC0, sub_415C0);
    sub_4150C(&qword_F0678, &qword_F0680, &qword_BFD48, sub_416A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0638);
  }

  return result;
}

uint64_t sub_4150C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_42B9C(&qword_F0670, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_415C0()
{
  result = qword_F0650;
  if (!qword_F0650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0658, &unk_BFD30);
    sub_A8CC(&qword_F0660, &qword_F0668, &qword_C1FD0, &protocol conformance descriptor for Button<A>);
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0650);
  }

  return result;
}

unint64_t sub_416A4()
{
  result = qword_F0688;
  if (!qword_F0688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0690, &unk_BFD50);
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0688);
  }

  return result;
}

uint64_t sub_4182C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0540, &qword_BFBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_418A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies);
  v2 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_delegatedURLShare;

  v1(v0 + v2);
}

uint64_t sub_41914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_4197C()
{
  result = qword_F0710;
  if (!qword_F0710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0700, &qword_BFDF0);
    sub_42B9C(&qword_F0718, type metadata accessor for ShareWebLinkPlatterView, &unk_C0D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0710);
  }

  return result;
}

unint64_t sub_41A48()
{
  result = qword_F0750;
  if (!qword_F0750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F06D8, &qword_BFDC8);
    sub_41B00();
    sub_A8CC(&qword_F0770, &qword_F0748, &qword_BFE70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0750);
  }

  return result;
}

unint64_t sub_41B00()
{
  result = qword_F0758;
  if (!qword_F0758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0740, &qword_BFE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F06C8, &qword_BFDB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F06C0, &qword_BFDB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F06B8, &qword_BFDA8);
    sub_A8CC(&qword_F0730, &qword_F06B8, &qword_BFDA8, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_A8CC(&qword_F0760, &qword_F0768, &qword_BFE78, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0758);
  }

  return result;
}

uint64_t sub_41C9C()
{
  v1 = *(type metadata accessor for DelegatedSharesManagementView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_3ECDC(v2);
}

uint64_t sub_41D28(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for DelegatedSharesManagementView(0);

  return sub_3EEB8(a1, a2);
}

unint64_t sub_41DA8()
{
  result = qword_F0778;
  if (!qword_F0778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F06E8, &qword_BFDD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F06D8, &qword_BFDC8);
    sub_41A48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0778);
  }

  return result;
}

uint64_t sub_41E70()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_41EB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2184C;

  return sub_45900(a1, v4, v5, v6);
}

unint64_t sub_41F74()
{
  result = qword_F07B8;
  if (!qword_F07B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F07B0, &qword_BFEE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F07C0, &qword_BFEE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
    sub_420B8();
    sub_9BD4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F07B8);
  }

  return result;
}

unint64_t sub_420B8()
{
  result = qword_F07C8;
  if (!qword_F07C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F07C0, &qword_BFEE8);
    sub_4150C(&qword_F07D0, &qword_F07D8, &qword_BFEF8, sub_4219C);
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F07C8);
  }

  return result;
}

uint64_t sub_421CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_42250()
{
  result = qword_F07F0;
  if (!qword_F07F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F07F8, &qword_BFF08);
    sub_A8CC(&qword_F0800, &qword_F0808, &qword_BFF10, &protocol conformance descriptor for AsyncButton<A>);
    sub_A8CC(&qword_F0810, &qword_F0818, &qword_BFF18, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F07F0);
  }

  return result;
}

uint64_t sub_42334()
{
  v2 = *(type metadata accessor for DelegatedSharesManagementView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_F248;

  return sub_3F038(v0 + v3);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(type metadata accessor for DelegatedSharesManagementView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_B6B50();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4252C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DelegatedSharesManagementView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_3F348(v4, a1);
}

uint64_t objectdestroy_72Tm()
{
  v1 = *(type metadata accessor for DelegatedSharesManagementView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_B6B50();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_87Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_429A8()
{
  result = qword_F08C0;
  if (!qword_F08C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F08C8, &qword_C0008);
    sub_42A60();
    sub_A8CC(&qword_F0810, &qword_F0818, &qword_BFF18, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F08C0);
  }

  return result;
}

unint64_t sub_42A60()
{
  result = qword_F08D0;
  if (!qword_F08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F08D0);
  }

  return result;
}

unint64_t sub_42AB4()
{
  result = qword_F08E0;
  if (!qword_F08E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0890, &qword_BFFD8);
    sub_42B9C(&qword_F08E8, type metadata accessor for ShareLinkRow, &unk_C0404);
    sub_A8CC(&qword_F0810, &qword_F0818, &qword_BFF18, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F08E0);
  }

  return result;
}

uint64_t sub_42B9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_42BE4(uint64_t a1)
{
  v2 = type metadata accessor for ShareLinkRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_42C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_42D1C()
{
  swift_getKeyPath();
  v5[0] = v0;
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v1 = v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  if (*(v1 + *(type metadata accessor for DelegatedURLShare(0) + 32)) == 1)
  {
    v6 = &type metadata for SolariumFeatureFlag;
    v7 = sub_28360();
    v2 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v5);
    if (v2)
    {
      return 0xD000000000000033;
    }

    else
    {
      return 0xD00000000000002CLL;
    }
  }

  else
  {
    v6 = &type metadata for SolariumFeatureFlag;
    v7 = sub_28360();
    v4 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v5);
    if (v4)
    {
      return 0xD00000000000002BLL;
    }

    else
    {
      return 0xD000000000000024;
    }
  }
}

uint64_t sub_42EA4()
{
  swift_getKeyPath();
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  return *(v0 + 16);
}

uint64_t sub_42F44()
{
  swift_getKeyPath();
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  return *(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss);
}

uint64_t sub_42FEC()
{
  *(v1 + 56) = v0;
  sub_B7A60();
  *(v1 + 64) = sub_B7A50();
  v3 = sub_B7A00();

  return _swift_task_switch(sub_43084, v3, v2);
}

uint64_t sub_43084()
{
  v6 = v0;

  v0[5] = &type metadata for SolariumFeatureFlag;
  v0[6] = sub_28360();
  v1 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1)
  {
    v2 = 256;
  }

  else
  {
    v2 = 513;
  }

  v5 = v2;
  sub_44260(&v5);
  v3 = v0[1];

  return v3();
}

uint64_t sub_43130@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v59 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v59 - v8;
  swift_getKeyPath();
  v75 = v1;
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v10 = *(v1 + 17);
  v11 = v10 >> 8;
  if (v10 >> 8 <= 0xFE && v11)
  {
    v73 = v6;
    v74 = a1;
    if (v11 == 1)
    {
      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v12 = sub_B62F0();
      v13 = __swift_project_value_buffer(v12, qword_FAD48);
      v14 = *(v12 - 8);
      v15 = *(v14 + 16);
      v15(v9, v13, v12);
      v16 = *(v14 + 56);
      (v16)(v9, 0, 1, v12);
      v17 = sub_B78D0();
      v71 = v18;
      v72 = v17;
      sub_A194(v9, &unk_F17B0, &qword_BE7D0);
      v63 = v13;
      v15(v9, v13, v12);
      v64 = v14 + 16;
      v65 = v16;
      v66 = v15;
      v19 = v16;
      (v16)(v9, 0, 1, v12);
      v20 = sub_B78D0();
      v69 = v21;
      v70 = v20;
      sub_A194(v9, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v67 = *(v22 + 72);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      v68 = v24;
      *(v24 + 16) = xmmword_BD800;
      v62 = v24 + v23;
      v15(v9, v13, v12);
      (v19)(v9, 0, 1, v12);
      sub_B78D0();
      v59 = v25;
      sub_A194(v9, &unk_F17B0, &qword_BE7D0);
      v26 = enum case for AlertInfo.ActionInfo.Style.destructive<A>(_:);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      v28 = *(v27 - 8);
      v61 = *(v28 + 104);
      v29 = v73;
      v61(v73, v26, v27);
      v60 = *(v28 + 56);
      v60(v29, 0, 1, v27);
      v75 = sub_46948;
      v76 = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
      sub_B68B0();
      v66(v9, v63, v12);
      (v65)(v9, 0, 1, v12);
      sub_B78D0();
      sub_A194(v9, &unk_F17B0, &qword_BE7D0);
      v61(v29, enum case for AlertInfo.ActionInfo.Style.cancel<A>(_:), v27);
      v60(v29, 0, 1, v27);
      v75 = ItemContactInfoSetupIntroductionViewModel.bind();
      v76 = 0;
    }

    else
    {
      if ((v10 & 1) == 0)
      {
        if (qword_EEAB0 != -1)
        {
          swift_once();
        }

        v47 = sub_B62F0();
        v48 = __swift_project_value_buffer(v47, qword_FAD48);
        v49 = *(v47 - 8);
        v50 = *(v49 + 16);
        v50(v9, v48, v47);
        v51 = *(v49 + 56);
        v51(v9, 0, 1, v47);
        v52 = sub_B78D0();
        v71 = v53;
        v72 = v52;
        sub_A194(v9, &unk_F17B0, &qword_BE7D0);
        v50(v9, v48, v47);
        v51(v9, 0, 1, v47);
        v54 = sub_B78D0();
        v69 = v55;
        v70 = v54;
        sub_A194(v9, &unk_F17B0, &qword_BE7D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
        *(swift_allocObject() + 16) = xmmword_BDA30;
        v50(v9, v48, v47);
        v51(v9, 0, 1, v47);
        sub_B78D0();
        sub_A194(v9, &unk_F17B0, &qword_BE7D0);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
        (*(*(v56 - 8) + 56))(v73, 1, 1, v56);
        v75 = ItemContactInfoSetupIntroductionViewModel.bind();
        v76 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
        sub_B68B0();
        a1 = v74;
        goto LABEL_16;
      }

      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v31 = sub_B62F0();
      v32 = __swift_project_value_buffer(v31, qword_FAD48);
      v33 = *(v31 - 8);
      v34 = *(v33 + 16);
      v34(v9, v32, v31);
      v35 = *(v33 + 56);
      v35(v9, 0, 1, v31);
      v36 = sub_B78D0();
      v71 = v37;
      v72 = v36;
      sub_A194(v9, &unk_F17B0, &qword_BE7D0);
      v64 = v32;
      v65 = v34;
      v34(v9, v32, v31);
      v66 = (v33 + 16);
      v35(v9, 0, 1, v31);
      v63 = v35;
      v38 = sub_B78D0();
      v69 = v39;
      v70 = v38;
      sub_A194(v9, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v67 = *(v40 + 72);
      v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v42 = swift_allocObject();
      v68 = v42;
      *(v42 + 16) = xmmword_BD800;
      v62 = v42 + v41;
      v34(v9, v32, v31);
      v35(v9, 0, 1, v31);
      sub_B78D0();
      v60 = v43;
      sub_A194(v9, &unk_F17B0, &qword_BE7D0);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      v45 = *(v44 - 8);
      v61 = *(v45 + 56);
      v46 = v73;
      (v61)(v73, 1, 1, v44);
      v75 = sub_46910;
      v76 = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
      sub_B68B0();
      v65(v9, v64, v31);
      v63(v9, 0, 1, v31);
      sub_B78D0();
      sub_A194(v9, &unk_F17B0, &qword_BE7D0);
      (*(v45 + 104))(v46, enum case for AlertInfo.ActionInfo.Style.cancel<A>(_:), v44);
      (v61)(v46, 0, 1, v44);
      v75 = ItemContactInfoSetupIntroductionViewModel.bind();
      v76 = 0;
    }

    sub_B68B0();
    a1 = v74;
LABEL_16:
    sub_B6910();
    v30 = 0;
    goto LABEL_17;
  }

  v30 = 1;
LABEL_17:
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  return (*(*(v57 - 8) + 56))(a1, v30, 1, v57);
}

uint64_t sub_43F24(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_44034@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  v3 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  return sub_466F8(v5 + v3, a1, type metadata accessor for DelegatedURLShare);
}

uint64_t sub_44110@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  *a1 = *(v1 + 17);
  return result;
}

uint64_t sub_441B8@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65C0();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_44260(unsigned __int16 *a1)
{
  v2 = *a1;
  result = *(v1 + 17);
  if (result >> 8 <= 0xFE)
  {
    if (v2 >> 8 > 0xFE)
    {
      goto LABEL_7;
    }

    result = sub_8090C(result, v2);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 17) = v2;
    return result;
  }

  if (v2 >> 8 > 0xFE)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65B0();
}

uint64_t sub_4439C(uint64_t a1)
{
  v3 = type metadata accessor for DelegatedURLShare(0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  sub_466F8(v1 + v6, v5, type metadata accessor for DelegatedURLShare);
  v7 = sub_4684C(v5, a1);
  sub_457E4(v5, type metadata accessor for DelegatedURLShare);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
    sub_B65B0();
  }

  else
  {
    swift_beginAccess();
    sub_467E8(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_457E4(a1, type metadata accessor for DelegatedURLShare);
}

uint64_t sub_4458C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  swift_beginAccess();
  sub_467E8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_445F8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_44710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_B7A60();
  v4[5] = sub_B7A50();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_447C0;

  return sub_44A54();
}

uint64_t sub_447C0(char a1)
{
  *(*v1 + 56) = a1;

  v3 = sub_B7A00();

  return _swift_task_switch(sub_44904, v3, v2);
}

uint64_t sub_44904()
{
  v1 = *(v0 + 56);

  if (v1 == 1)
  {
    v2 = *(v0 + 24);
    if (*(v2 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss) == 1)
    {
      *(v2 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss) = 1;
    }

    else
    {
      swift_getKeyPath();
      v3 = swift_task_alloc();
      *(v3 + 16) = v2;
      *(v3 + 24) = 1;
      *(v0 + 16) = v2;
      sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
      sub_B65B0();
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_44A54()
{
  v1[5] = v0;
  sub_B7A60();
  v1[6] = sub_B7A50();
  v3 = sub_B7A00();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_44AEC, v3, v2);
}

uint64_t sub_44AEC()
{
  v19 = v0;
  v1 = *(v0 + 40);
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
    *(v0 + 16) = v1;
    sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
    sub_B65B0();
  }

  *(v0 + 72) = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_logger;

  v3 = sub_B69A0();
  v4 = sub_B7B60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    type metadata accessor for DelegatedURLShare(0);
    sub_B65A0();
    sub_46A38(&qword_F0A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = sub_B7DA0();
    v9 = sub_17834(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Invalidating delegate url share for accessory id: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v10 = *(v0 + 40);
  v11 = *(v10 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies + 16);
  v12 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_delegatedURLShare;
  *(v0 + 80) = *(v10 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies + 24);
  *(v0 + 88) = v12;
  v13 = v10 + v12;
  v14 = *(type metadata accessor for DelegatedURLShare(0) + 24);
  *(v0 + 112) = v14;

  v17 = (v11 + *v11);
  v15 = swift_task_alloc();
  *(v0 + 96) = v15;
  *v15 = v0;
  v15[1] = sub_44E50;

  return v17(v13 + v14);
}

uint64_t sub_44E50(char a1)
{
  v3 = *v2;
  *(v3 + 116) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_45270;
  }

  else
  {
    v4 = sub_44F68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_44F68()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_44FCC, v1, v2);
}

uint64_t sub_44FCC()
{
  v16 = v0;

  v1 = sub_B69A0();
  v2 = sub_B7B60();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 116);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315394;
    sub_B65A0();
    sub_46A38(&qword_F0A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v6 = sub_B7DA0();
    v8 = sub_17834(v6, v7, &v15);

    *(v4 + 4) = v8;
    *(v4 + 12) = 1024;
    *(v4 + 14) = v3;
    _os_log_impl(&dword_0, v1, v2, "Invalidating delegate url called back for accessory id: %s with isSuccessful: %{BOOL}d", v4, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v10 = *(v0 + 40);
  if ((*(v10 + 16) & 1) == 0)
  {
    *(v10 + 16) = 0;
    v12 = *(v0 + 116);
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  swift_getKeyPath();
  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = 0;
  *(v0 + 32) = v10;
  sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
  sub_B65B0();

  v12 = *(v0 + 116);
  if ((v12 & 1) == 0)
  {
LABEL_7:
    sub_45844(v9);
  }

LABEL_8:
  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_45270()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_452D4, v1, v2);
}

uint64_t sub_452D4()
{

  swift_errorRetain();
  v1 = sub_B69A0();
  v2 = sub_B7B40();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Error with invalidating delegated url share %@", v3, 0xCu);
    sub_A194(v4, &qword_EF4F8, &qword_C16D0);
  }

  v6 = v0[5];

  v8 = v0[5];
  if (*(v6 + 16))
  {
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    v0[3] = v8;
    sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
    sub_B65B0();
  }

  else
  {
    *(v8 + 16) = 0;
  }

  sub_45844(v7);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_45508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_B7A80();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_B7A60();

  v9 = sub_B7A50();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a1;
  sub_30A3C(0, 0, v7, a3, v10);
}

uint64_t DelegatedSharesManagementViewModel.__allocating_init(initialDestination:delegatedURLShare:dependencies:)(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  DelegatedSharesManagementViewModel.init(initialDestination:delegatedURLShare:dependencies:)(a1, a2, a3);
  return v6;
}

uint64_t DelegatedSharesManagementViewModel.init(initialDestination:delegatedURLShare:dependencies:)(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 17) = -256;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__dismiss) = 0;
  v6 = *a1;
  sub_B69B0();
  sub_B65F0();
  sub_466F8(a2, v3 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare, type metadata accessor for DelegatedURLShare);
  sub_466F8(a2, v3 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_delegatedURLShare, type metadata accessor for DelegatedURLShare);
  sub_466F8(a3, v3 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies, type metadata accessor for DelegatedSharesManagementViewModel.Dependencies);
  *(v3 + 16) = 0;
  v8 = v6;
  sub_44260(&v8);
  sub_457E4(a3, type metadata accessor for DelegatedSharesManagementViewModel.Dependencies);
  sub_457E4(a2, type metadata accessor for DelegatedURLShare);
  return v3;
}

uint64_t sub_457E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_45844(uint64_t a1)
{
  v1 = sub_B69A0();
  v2 = sub_B7B60();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Share invalidation failed, presenting alert", v3, 2u);
  }

  v5 = 512;
  return sub_44260(&v5);
}

uint64_t sub_45900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for DelegatedURLShare(0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A18, &unk_C01B8);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  type metadata accessor for DelegatedSharesUpdater(0);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0338, &unk_BF940);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = sub_B7A60();
  v4[23] = sub_B7A50();
  v9 = sub_B7A00();
  v4[24] = v9;
  v4[25] = v8;

  return _swift_task_switch(sub_45B38, v9, v8);
}

uint64_t sub_45B38()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[9] + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies;
  v6 = type metadata accessor for DelegatedSharesManagementViewModel.Dependencies(0);
  sub_466F8(v5 + *(v6 + 24), v4, type metadata accessor for DelegatedSharesUpdater);
  (*(v2 + 32))(v1, v4, v3);
  sub_B7A90();
  v7 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel___observationRegistrar;
  v0[26] = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare;
  v0[27] = v7;
  swift_beginAccess();
  v0[28] = 0;
  v8 = sub_B7A50();
  v0[29] = v8;
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_45CA4;
  v10 = v0[14];
  v11 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v10, v8, &protocol witness table for MainActor, v11);
}

uint64_t sub_45CA4()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return _swift_task_switch(sub_45DE8, v3, v2);
}

uint64_t sub_45DE8()
{
  v1 = v0[14];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[19];
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];

    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);

    v8 = v0[1];

    return v8();
  }

  v10 = v0[26];
  v11 = v0[12];
  v12 = v0[9];
  sub_46760(v1, v0[13]);
  sub_466F8(v12 + v10, v11, type metadata accessor for DelegatedURLShare);
  v13 = sub_B6490();
  v14 = v0[12];
  v15 = v0[13];
  if ((v13 & 1) == 0)
  {
    goto LABEL_17;
  }

  v16 = sub_B6510();
  v14 = v0[12];
  v15 = v0[13];
  if ((v16 & 1) == 0)
  {
    goto LABEL_17;
  }

  v17 = sub_B6570();
  v14 = v0[12];
  v15 = v0[13];
  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

  v18 = v0[10];
  v19 = v18[7];
  v21 = *(v14 + v19);
  v20 = *(v14 + v19 + 8);
  v22 = (v15 + v19);
  if (v21 != *v22 || v20 != v22[1])
  {
    v24 = sub_B7DD0();
    v14 = v0[12];
    v15 = v0[13];
    if ((v24 & 1) == 0)
    {
LABEL_17:
      v27 = v0[28];
      v28 = v0[9];
      sub_457E4(v14, type metadata accessor for DelegatedURLShare);
      swift_getKeyPath();
      v29 = swift_task_alloc();
      *(v29 + 16) = v28;
      *(v29 + 24) = v15;
      v0[8] = v28;
      sub_46A38(&qword_F0580, type metadata accessor for DelegatedSharesManagementViewModel, &protocol conformance descriptor for DelegatedSharesManagementViewModel);
      sub_B65B0();

      goto LABEL_18;
    }

    v18 = v0[10];
  }

  if (*(v14 + v18[8]) != *(v15 + v18[8]) || *(v14 + v18[9]) != *(v15 + v18[9]))
  {
    goto LABEL_17;
  }

  v25 = v0[26];
  v26 = v0[9];
  sub_457E4(v14, type metadata accessor for DelegatedURLShare);
  swift_beginAccess();
  sub_467E8(v15, v26 + v25);
  swift_endAccess();
  v27 = v0[28];
LABEL_18:
  sub_457E4(v0[13], type metadata accessor for DelegatedURLShare);
  v0[28] = v27;
  v30 = sub_B7A50();
  v0[29] = v30;
  v31 = swift_task_alloc();
  v0[30] = v31;
  *v31 = v0;
  v31[1] = sub_45CA4;
  v32 = v0[14];
  v33 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v32, v30, &protocol witness table for MainActor, v33);
}

uint64_t DelegatedSharesManagementViewModel.deinit()
{
  sub_457E4(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare, type metadata accessor for DelegatedURLShare);
  sub_457E4(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_delegatedURLShare, type metadata accessor for DelegatedURLShare);
  sub_457E4(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies, type metadata accessor for DelegatedSharesManagementViewModel.Dependencies);
  v1 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DelegatedSharesManagementViewModel.__deallocating_deinit()
{
  sub_457E4(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel__currentDelegatedShare, type metadata accessor for DelegatedURLShare);
  sub_457E4(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_delegatedURLShare, type metadata accessor for DelegatedURLShare);
  sub_457E4(v0 + OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_dependencies, type metadata accessor for DelegatedSharesManagementViewModel.Dependencies);
  v1 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13FindMyAppCore34DelegatedSharesManagementViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

Swift::Int DelegatedSharesShareeItemDescriptionViewModel.hashValue.getter()
{
  sub_B7EB0();
  sub_B7EC0(v0);
  return sub_B7EE0();
}

uint64_t type metadata accessor for DelegatedSharesManagementViewModel(uint64_t a1)
{
  result = qword_F0950;
  if (!qword_F0950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_464F0(uint64_t a1)
{
  result = type metadata accessor for DelegatedURLShare(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DelegatedSharesManagementViewModel.Dependencies(319);
    if (v3 <= 0x3F)
    {
      result = sub_B69C0();
      if (v4 <= 0x3F)
      {
        result = sub_B6600();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_466F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_46760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedURLShare(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_467E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedURLShare(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL sub_4684C(uint64_t a1, uint64_t a2)
{
  if (sub_B6490() & 1) != 0 && (v4 = type metadata accessor for DelegatedURLShare(0), (sub_B6510()) && (sub_B6570() & 1) != 0 && ((v5 = v4[7], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_B7DD0()) && *(a1 + v4[8]) == *(a2 + v4[8])))
  {
    return *(a1 + v4[9]) != *(a2 + v4[9]);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_46984(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2184C;

  return sub_44710(a1, v4, v5, v6);
}

uint64_t sub_46A38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_46AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F248;

  return sub_44710(a1, v4, v5, v6);
}

uint64_t DelegatedSharesManagementViewModel.Dependencies.init(pasteboardHandler:delegatedSharesInvalidator:delegatedSharesUpdater:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *a2;
  *a4 = *a1;
  a4[1] = v5;
  v6 = a4 + *(type metadata accessor for DelegatedSharesManagementViewModel.Dependencies(0) + 24);

  return sub_46C60(a3, v6);
}

uint64_t type metadata accessor for DelegatedSharesManagementViewModel.Dependencies(uint64_t a1)
{
  result = qword_F0A88;
  if (!qword_F0A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_46C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedSharesUpdater(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_46CD8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DelegatedSharesUpdater(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_46D98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DelegatedSharesUpdater(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_46E3C(uint64_t a1)
{
  result = type metadata accessor for DelegatedSharesUpdater(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_46EC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_B7EB0();
  sub_B7EC0(v3);
  result = sub_B7EE0();
  *a1 = result;
  return result;
}

Swift::Int ItemContactInfoSetupIntroductionViewModel.Alert.hashValue.getter()
{
  sub_B7EB0();
  sub_B7EC0(0);
  return sub_B7EE0();
}

Swift::Int sub_46F8C()
{
  sub_B7EB0();
  sub_B7EC0(0);
  return sub_B7EE0();
}

Swift::Int sub_46FCC@<X0>(uint64_t *a1@<X8>)
{
  sub_B7EB0();
  sub_B7EC0(0);
  result = sub_B7EE0();
  *a1 = result;
  return result;
}

unint64_t sub_4701C()
{
  result = qword_F0AC8;
  if (!qword_F0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0AC8);
  }

  return result;
}

unint64_t sub_4709C()
{
  result = qword_F0AD0;
  if (!qword_F0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0AD0);
  }

  return result;
}

unint64_t sub_470F0()
{
  result = qword_F0AD8;
  if (!qword_F0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0AD8);
  }

  return result;
}

unint64_t sub_47148()
{
  result = qword_F0AE0;
  if (!qword_F0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0AE0);
  }

  return result;
}

uint64_t sub_471C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_47204()
{
  result = qword_F0AE8;
  if (!qword_F0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0AE8);
  }

  return result;
}

unint64_t sub_47258()
{
  result = qword_F0AF0;
  if (!qword_F0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0AF0);
  }

  return result;
}

uint64_t sub_472E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_B64C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_473C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_B64C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ShareLinkRow(uint64_t a1)
{
  result = qword_F0B50;
  if (!qword_F0B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_474CC(uint64_t a1)
{
  result = sub_B64C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_4756C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v1 - 8);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0B90, &unk_C0B60);
  __chkstk_darwin(v4 - 8);
  v5 = sub_B64C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShareLinkRow(0);
  (*(v6 + 16))(v8, v0 + *(v9 + 20), v5);
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v10 = sub_B62F0();
  v11 = __swift_project_value_buffer(v10, qword_FAD48);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v3, v11, v10);
  (*(v12 + 56))(v3, 0, 1, v10);
  v13 = sub_B78D0();
  v15 = v14;
  sub_2B630(v3);
  v20[2] = v13;
  v20[3] = v15;
  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();

  v18 = [v17 bundleForClass:ObjCClassFromMetadata];
  v20[1] = sub_B7580();
  sub_47AD4();
  sub_97E8();
  sub_B6AE0();
  sub_47B28();
  return sub_B7780();
}

uint64_t sub_478F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_B62F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6E60();
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_FAD48);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_B71B0();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

unint64_t sub_47AD4()
{
  result = qword_F0B98;
  if (!qword_F0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0B98);
  }

  return result;
}

unint64_t sub_47B28()
{
  result = qword_F0BA0;
  if (!qword_F0BA0)
  {
    sub_B64C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0BA0);
  }

  return result;
}

unint64_t sub_47B84()
{
  result = qword_F0BA8;
  if (!qword_F0BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BB0, &unk_C0458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0BA8);
  }

  return result;
}

void *DelegatedSharesSetupIntroductionView.init(viewModel:onDismiss:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v14[3] = &type metadata for SolariumFeatureFlag;
  v14[4] = sub_28360();
  v7 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v14);
  v8 = (v7 & 1) == 0;
  if (v7)
  {
    v9 = 0xD000000000000023;
  }

  else
  {
    v9 = 0xD00000000000001CLL;
  }

  if (v8)
  {
    v10 = "_MANAGEMENT_SHARE_WEBPAGE_TITLE";
  }

  else
  {
    v10 = "airtag-briefcase-cover-photo";
  }

  v11 = v10 | 0x8000000000000000;
  type metadata accessor for DelegatedSharesSetupIntroductionViewModel(0);
  result = sub_B75B0();
  v13 = v14[1];
  *a4 = v14[0];
  a4[1] = v13;
  a4[2] = a2;
  a4[3] = a3;
  a4[4] = v9;
  a4[5] = v11;
  return result;
}

unint64_t sub_47CB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  v0 = v2 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_lostAccessory;
  LODWORD(v0) = *(v0 + *(type metadata accessor for LostAccessory(0) + 24));

  if (v0)
  {
    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD000000000000022;
  }
}

uint64_t sub_47D60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = *v0;
  v5 = *(v0 + 3);
  v13 = *(v0 + 1);
  v14 = v5;
  v6 = v0[5];
  *&v17 = &type metadata for SolariumFeatureFlag;
  *(&v17 + 1) = sub_28360();
  v7 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v15);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v15 = v4;
  v16 = v13;
  v17 = v14;
  v18 = v6;
  sub_47CB4();
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v8 = sub_B62F0();
  v9 = __swift_project_value_buffer(v8, qword_FAD48);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v3, v9, v8);
  (*(v10 + 56))(v3, 0, 1, v8);
  v11 = sub_B78D0();

  sub_A194(v3, &unk_F17B0, &qword_BE7D0);
  return v11;
}

uint64_t DelegatedSharesSetupIntroductionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v155 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v144 = *(v2 - 8);
  v145 = v2;
  __chkstk_darwin(v2);
  v116 = &v115 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v4 - 8);
  v143 = (&v115 - v5);
  v134 = sub_B67E0();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v135 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_B67D0();
  v130 = *(v7 - 8);
  v131 = v7;
  __chkstk_darwin(v7);
  v133 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_B6980();
  v125 = *(v123 - 1);
  __chkstk_darwin(v123);
  v124 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v115 - v11;
  v13 = sub_B6850();
  v137 = *(v13 - 8);
  v138 = v13;
  __chkstk_darwin(v13);
  OpaqueTypeConformance2 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BB8, &qword_C0468);
  v140 = *(v15 - 8);
  v141 = v15;
  __chkstk_darwin(v15);
  v139 = &v115 - v16;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BC0, &qword_C0470);
  v142 = *(v157 - 8);
  __chkstk_darwin(v157);
  v156 = &v115 - v17;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BC8, &qword_C0478);
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v158 = &v115 - v18;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BD0, &qword_C0480);
  v151 = *(v153 - 8);
  __chkstk_darwin(v153);
  v147 = &v115 - v19;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BD8, &qword_C0488);
  __chkstk_darwin(v146);
  v150 = &v115 - v20;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE0, &unk_C0490);
  __chkstk_darwin(v148);
  v149 = &v115 - v21;
  v22 = v1[1];
  v177 = *v1;
  v178 = v22;
  v179 = v1[2];
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v23 = sub_B62F0();
  v24 = __swift_project_value_buffer(v23, qword_FAD48);
  v25 = *(v23 - 8);
  v26 = v24;
  v121 = *(v25 + 16);
  v121(v12);
  v27 = v23;
  v28 = v23;
  v29 = *(v25 + 56);
  v29(v12, 0, 1, v28);
  v30 = sub_B78D0();
  v128 = v31;
  v129 = v30;
  sub_A194(v12, &unk_F17B0, &qword_BE7D0);
  v174 = v177;
  v175 = v178;
  v176 = v179;
  v32 = sub_47D60();
  v126 = v33;
  v127 = v32;
  v172 = &type metadata for SolariumFeatureFlag;
  v173 = sub_28360();
  v34 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v170);
  if (v34)
  {
    v35 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_40D5C();
    if (qword_EEB10 != -1)
    {
      swift_once();
    }

    v36 = v123;
    v37 = __swift_project_value_buffer(v123, qword_FAEB8);
    v125[2](v124, v37, v36);
    v35 = sub_B7B90();
  }

  v124 = &v115;
  v125 = v35;
  v38 = __chkstk_darwin(v35);
  v123 = &v112;
  __chkstk_darwin(v38);
  v122 = &v112;
  v114 = v39;
  v117 = v26;
  v40 = v121;
  (v121)(v12, v26, v27);
  v29(v12, 0, 1, v27);
  v41 = sub_B78D0();
  v119 = v42;
  v120 = v41;
  sub_A194(v12, &unk_F17B0, &qword_BE7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
  v43 = *(sub_B6800() - 8);
  v118 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  *(swift_allocObject() + 16) = xmmword_BDA30;
  v40(v12, v117, v27);
  v29(v12, 0, 1, v27);
  sub_B78D0();
  sub_A194(v12, &unk_F17B0, &qword_BE7D0);
  v180 = v177;
  v170 = v177;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  v45 = v165;
  swift_getKeyPath();
  *&v170 = v45;
  sub_4C6CC(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  v46 = *(v45 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL);

  v47 = &enum case for OnboardingTrayAction.State.loading(_:);
  if (!v46)
  {
    v47 = &enum case for OnboardingTrayAction.State.enabled(_:);
  }

  (*(v130 + 104))(v133, *v47, v131);
  (*(v132 + 104))(v135, enum case for OnboardingTrayAction.Style.bold(_:), v134);
  v48 = swift_allocObject();
  v49 = v178;
  v48[1] = v177;
  v48[2] = v49;
  v48[3] = v179;
  sub_4BC94(&v177, &v170);
  sub_B67F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C00, &qword_C04D0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C08, &qword_C04D8);
  v51 = sub_4BCCC();
  v52 = sub_A8CC(&qword_F0C28, &qword_F0C08, &qword_C04D8, &protocol conformance descriptor for TupleView<A>);
  v113 = v51;
  v114 = v52;
  v112 = v50;
  v53 = OpaqueTypeConformance2;
  sub_B6840();
  v174 = v180;
  v121 = v44;
  sub_B75C0();
  v54 = v170;
  swift_getKeyPath();
  *&v174 = v54;
  sub_B65C0();

  v55 = sub_4C6CC(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
  v57 = v138;
  v56 = v139;
  sub_B73A0();
  v58 = (*(v137 + 8))(v53, v57);
  __chkstk_darwin(v58);
  v114 = &v177;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C30, &qword_C04F0);
  *&v174 = v57;
  *(&v174 + 1) = v55;
  v137 = v59;
  v138 = &opaque type descriptor for <<opaque return type of View.interactiveDismissDisabled(_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C38, &qword_C04F8);
  v61 = sub_A8CC(&qword_F0C40, &qword_F0C38, &qword_C04F8, &protocol conformance descriptor for ToolbarItem<A, B>);
  *&v174 = v60;
  *(&v174 + 1) = v61;
  v135 = swift_getOpaqueTypeConformance2();
  v62 = v141;
  sub_B7450();
  (*(v140 + 8))(v56, v62);
  v170 = v180;
  sub_B75E0();
  v63 = v174;
  v64 = v175;
  swift_getKeyPath();
  v168 = v63;
  v169 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C48, &qword_C0528);
  sub_B76B0();

  v65 = v170;
  v66 = v171;
  LOBYTE(v56) = v172;

  swift_getKeyPath();
  v165 = v65;
  v166 = v66;
  v167 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C50, &qword_C0558);
  sub_B76B0();

  sub_4BE18(v66, v56);
  v159 = v162;
  v160 = v163;
  v161 = v164;
  v67 = swift_allocObject();
  v68 = v178;
  v67[1] = v177;
  v67[2] = v68;
  v67[3] = v179;
  sub_4BC94(&v177, &v174);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C58, &qword_C0560);
  *&v174 = v62;
  *(&v174 + 1) = v137;
  *&v175 = OpaqueTypeConformance2;
  *(&v175 + 1) = v135;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = sub_4BE44();
  v72 = sub_4BE98();
  *&v174 = &type metadata for DelegatedSharesSetupWebsiteView;
  *(&v174 + 1) = v72;
  v73 = swift_getOpaqueTypeConformance2();
  v114 = v73;
  v74 = v157;
  v140 = v70;
  v141 = v69;
  v139 = v71;
  v75 = v156;
  sub_B7340();

  (*(v142 + 8))(v75, v74);
  v174 = v180;
  sub_B75C0();
  v76 = v143;
  sub_4CF60(v143);

  v78 = v144;
  v77 = v145;
  if ((*(v144 + 48))(v76, 1, v145))
  {
    sub_A194(v76, &qword_EEE08, &qword_BD530);
    v79 = 0;
    v80 = 0xE000000000000000;
  }

  else
  {
    v81 = v116;
    (*(v78 + 16))(v116, v76, v77);
    sub_A194(v76, &qword_EEE08, &qword_BD530);
    v79 = sub_B6920();
    v80 = v82;
    (*(v78 + 8))(v81, v77);
  }

  *&v174 = v79;
  *(&v174 + 1) = v80;
  sub_97E8();
  v156 = sub_B7200();
  v144 = v84;
  v145 = v83;
  v86 = v85;
  sub_B7A60();
  sub_4BC94(&v177, &v174);
  v87 = sub_B7A50();
  v88 = swift_allocObject();
  *(v88 + 16) = v87;
  *(v88 + 24) = &protocol witness table for MainActor;
  v89 = v178;
  *(v88 + 32) = v177;
  *(v88 + 48) = v89;
  *(v88 + 64) = v179;
  sub_4BC94(&v177, &v174);
  v90 = sub_B7A50();
  v91 = swift_allocObject();
  *(v91 + 16) = v90;
  *(v91 + 24) = &protocol witness table for MainActor;
  v92 = v178;
  *(v91 + 32) = v177;
  *(v91 + 48) = v92;
  *(v91 + 64) = v179;
  v93 = sub_B76D0();
  v143 = &v115;
  v94 = __chkstk_darwin(v93);
  __chkstk_darwin(v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
  *&v174 = v157;
  *(&v174 + 1) = &_s5StackON;
  *&v175 = v141;
  *(&v175 + 1) = v140;
  *&v176 = v139;
  *(&v176 + 1) = v73;
  v95 = swift_getOpaqueTypeConformance2();
  v113 = sub_9BD4();
  v114 = &protocol witness table for Text;
  v112 = v95;
  v96 = v154;
  v97 = v86;
  v98 = v147;
  v99 = v156;
  v100 = v145;
  v101 = v158;
  sub_B7400();

  sub_9C84(v99, v100, v97 & 1);

  (*(v152 + 8))(v101, v96);
  v102 = swift_allocObject();
  v103 = v178;
  *(v102 + 1) = v177;
  *(v102 + 2) = v103;
  *(v102 + 3) = v179;
  v104 = v150;
  (*(v151 + 32))(v150, v98, v153);
  v105 = &v104[*(v146 + 36)];
  *v105 = sub_4BF78;
  v105[1] = v102;
  v105[2] = 0;
  v105[3] = 0;
  v106 = swift_allocObject();
  v107 = v178;
  v106[1] = v177;
  v106[2] = v107;
  v106[3] = v179;
  v108 = v104;
  v109 = v149;
  sub_AB00(v108, v149, &qword_F0BD8, &qword_C0488);
  v110 = (v109 + *(v148 + 36));
  *v110 = 0;
  v110[1] = 0;
  v110[2] = sub_4BFAC;
  v110[3] = v106;
  sub_AB00(v109, v155, &qword_F0BE0, &unk_C0490);
  sub_4BC94(&v177, &v174);
  return sub_4BC94(&v177, &v174);
}

__n128 sub_4947C@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_B7550();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.n128_u64[1] = &type metadata for SolariumFeatureFlag;
  *v30 = sub_28360();
  v7 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  if (v7)
  {
    type metadata accessor for DelegatedSharesReportingModule();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();

    v10 = [v9 bundleForClass:ObjCClassFromMetadata];
    sub_B7580();
    (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
    v11 = sub_B7570();

    (*(v4 + 8))(v6, v3);
    *&v19[2] = v24;
    LOBYTE(v21) = 1;
    v27 = 0;
    v17 = v11;
    v18 = 0;
    *v19 = 257;
    *&v19[18] = v25;
    *&v19[34] = *v26;
    *&v19[50] = *&v26[16];
    v20 = 0;
  }

  else
  {
    v12 = sub_B7760();
    v14 = v13;
    sub_497A8(&v28);
    v21 = v28;
    v22 = v29;
    v23[0] = *v30;
    *(v23 + 10) = *&v30[10];
    v24 = v28;
    v25 = v29;
    *v26 = *v30;
    *&v26[10] = *&v30[10];
    sub_A310(&v21, &v17, &qword_F0CC0, &qword_C06F8);
    sub_A194(&v24, &qword_F0CC0, &qword_C06F8);
    *v19 = v21;
    *&v19[16] = v22;
    *&v19[32] = v23[0];
    *&v19[42] = *(v23 + 10);
    v27 = 1;
    v17 = v12;
    v18 = v14;
    v20 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C20, &qword_C04E8);
  sub_40DB8();
  sub_A8CC(&qword_F0C18, &qword_F0C20, &qword_C04E8, &protocol conformance descriptor for ZStack<A>);
  sub_B6F00();
  v15 = *&v30[16];
  *(a2 + 32) = *v30;
  *(a2 + 48) = v15;
  *(a2 + 59) = *&v30[27];
  result = v29;
  *a2 = v28;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_497A8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_B7550();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_B6EA0();
  sub_499E8(&v15);
  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = v15;
  v9 = objc_opt_self();

  v10 = [v9 bundleForClass:ObjCClassFromMetadata];
  sub_B7580();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v11 = sub_B7570();

  (*(v4 + 8))(v6, v3);
  LOBYTE(v15) = 0;
  v14 = 1;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v13;
  *(a2 + 40) = v11;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 57) = 1;
}

uint64_t sub_499E8@<X0>(uint64_t *a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_B74E0();
  v3 = [objc_opt_self() systemBackgroundColor];
  v4 = sub_B7530();
  *a1 = v2;
  a1[1] = v4;
}

uint64_t sub_49AAC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  *(&v28 + 1) = &type metadata for SolariumFeatureFlag;
  *&v29 = sub_28360();
  v7 = sub_B6610();
  result = __swift_destroy_boxed_opaque_existential_0(&v27);
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    KeyPath = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = a1[1];
    v27 = *a1;
    v28 = v17;
    v29 = a1[2];
    sub_47CB4();
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v18 = sub_B62F0();
    v19 = __swift_project_value_buffer(v18, qword_FAD48);
    v20 = *(v18 - 8);
    (*(v20 + 16))(v6, v19, v18);
    v14 = 1;
    (*(v20 + 56))(v6, 0, 1, v18);
    v21 = sub_B78D0();
    v23 = v22;

    sub_A194(v6, &unk_F17B0, &qword_BE7D0);
    *&v27 = v21;
    *(&v27 + 1) = v23;
    sub_97E8();
    v10 = sub_B7200();
    v11 = v24;
    LOBYTE(v20) = v25;
    v12 = v26;
    KeyPath = swift_getKeyPath();
    LOBYTE(v27) = 0;
    LOBYTE(v20) = v20 & 1;
    v30 = v20;
    sub_41410(v10, v11, v20);

    sub_9C84(v10, v11, v20);

    v16 = v27;
    v15 = v30;
    v9 = 0x4030000000000000;
  }

  *a2 = v9;
  *(a2 + 8) = v16;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v15;
  *(a2 + 40) = v12;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v14;
  return result;
}

uint64_t sub_49D44(uint64_t a1, __int128 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  v12 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  v6 = v11[1];
  v7 = sub_B7A80();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_B7A60();

  v8 = sub_B7A50();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;
  sub_30A3C(0, 0, v5, &unk_C06C0, v9);
}

uint64_t sub_49EA0(uint64_t a1)
{
  v2 = sub_B6F50();
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C38, &qword_C04F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_B6F30();
  __chkstk_darwin(v7);
  *(&v9 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C88, &qword_C0688);
  sub_4C558();
  sub_B6A80();
  sub_A8CC(&qword_F0C40, &qword_F0C38, &qword_C04F8, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_B6F60();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_4A0E4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v5 = &v46 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CB0, &qword_C06A0);
  __chkstk_darwin(v58);
  v51 = &v46 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CB8, &qword_C06A8);
  __chkstk_darwin(v56);
  v57 = &v46 - v7;
  v8 = sub_B7950();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0668, &qword_C1FD0);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v16 = &v46 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CA0, &unk_C0690);
  __chkstk_darwin(v55);
  v48 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C88, &qword_C0688);
  __chkstk_darwin(v18 - 8);
  v54 = &v46 - v19;
  sub_B7A60();
  v53 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v59[3] = &type metadata for SolariumFeatureFlag;
  v59[4] = sub_28360();
  v20 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v59);
  if (v20)
  {
    v52 = a2;
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v21 = sub_B62F0();
    v22 = __swift_project_value_buffer(v21, qword_FAD48);
    v23 = *(v21 - 8);
    (*(v23 + 16))(v14, v22, v21);
    (*(v23 + 56))(v14, 0, 1, v21);
    v24 = sub_B78D0();
    v26 = v25;
    sub_A194(v14, &unk_F17B0, &qword_BE7D0);
    (*(v9 + 104))(v11, enum case for String.ButtonType.cancel(_:), v8);
    v27 = sub_B7960();
    v29 = v28;
    (*(v9 + 8))(v11, v8);
    v30 = swift_allocObject();
    v31 = a1[1];
    v30[1] = *a1;
    v30[2] = v31;
    v30[3] = a1[2];
    v60 = v24;
    v61 = v26;
    __chkstk_darwin(v30);
    *(&v46 - 4) = &v60;
    *(&v46 - 3) = v27;
    *(&v46 - 2) = v29;
    sub_4BC94(a1, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06A0, &unk_C06B0);
    sub_A8CC(&qword_F06A8, &qword_F06A0, &unk_C06B0, &protocol conformance descriptor for Label<A, B>);
    sub_B7610();

    sub_A8CC(&qword_F0660, &qword_F0668, &qword_C1FD0, &protocol conformance descriptor for Button<A>);
    v33 = v48;
    v32 = v49;
    sub_B7360();
    (*(v47 + 8))(v16, v32);
    sub_A310(v33, v57, &qword_F0CA0, &unk_C0690);
    swift_storeEnumTagMultiPayload();
    sub_4C5E4();
    sub_4C714();
    v34 = v54;
    sub_B6F00();
    sub_A194(v33, &qword_F0CA0, &unk_C0690);
    a2 = v52;
  }

  else
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v35 = sub_B62F0();
    v36 = __swift_project_value_buffer(v35, qword_FAD48);
    v37 = *(v35 - 8);
    (*(v37 + 16))(v14, v36, v35);
    (*(v37 + 56))(v14, 0, 1, v35);
    v38 = sub_B78D0();
    v40 = v39;
    sub_A194(v14, &unk_F17B0, &qword_BE7D0);
    v60 = v38;
    v61 = v40;
    v41 = swift_allocObject();
    v42 = a1[1];
    v41[1] = *a1;
    v41[2] = v42;
    v41[3] = a1[2];
    sub_4BC94(a1, v59);
    sub_97E8();
    sub_B7640();
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
    v44 = v51;
    v43 = v52;
    sub_B7360();
    (*(v50 + 8))(v5, v43);
    sub_A310(v44, v57, &qword_F0CB0, &qword_C06A0);
    swift_storeEnumTagMultiPayload();
    sub_4C5E4();
    sub_4C714();
    v34 = v54;
    sub_B6F00();
    sub_A194(v44, &qword_F0CB0, &qword_C06A0);
  }

  sub_4C81C(v34, a2);
}

uint64_t sub_4AA68(uint64_t a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v4(isCurrentExecutor);
  }
}

uint64_t sub_4AB20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4C6CC(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  v4 = v3 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination;
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination);
  *a2 = v5;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_4C52C(v5, v6);
}

uint64_t sub_4ABE0(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_4C52C(v3, v1);
  return sub_4CDC8(&v3);
}

uint64_t *sub_4AC28(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  if (*result)
  {
    v4 = *(a2 + 8);
    if (v4 != 255)
    {
      v5 = *a2;

      result = sub_4BE2C(v5, v4);
      *a2 = v3;
      *(a2 + 8) = 0;
    }
  }

  else
  {
    result = sub_4BE18(*a2, *(a2 + 8));
    *a2 = 0;
    *(a2 + 8) = -1;
  }

  return result;
}

uint64_t sub_4ACA0(uint64_t *a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a2 + 16);
  v4 = *(a2 + 24);

  sub_C5D8(v3, v4);
  sub_B75B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C80, &qword_C0680);
  sub_B75D0();
  sub_4BE98();
  sub_B73A0();

  sub_C618(v3, v4);
}

uint64_t sub_4AE00@<X0>(__int128 *a1@<X2>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v4 - 8);
  v6 = v10 - v5;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10[1] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  sub_4CF60(v6);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_A194(v6, &qword_EEE08, &qword_BD530);

  *a2 = v8;
  return result;
}

uint64_t sub_4AF94(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  *&v6 = 0;
  BYTE8(v6) = -1;
  sub_4CDC8(&v6);
}

uint64_t sub_4B070(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  sub_4CF60(v8);

  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_A194(v8, &qword_EEE08, &qword_BD530);
    v9 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_A194(v8, &qword_EEE08, &qword_BD530);
    v9 = sub_B6930();
    (*(v3 + 8))(v5, v2);
  }

  *&v17 = v9;
  KeyPath = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v13 = sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50, &protocol conformance descriptor for [A]);
  v14 = sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
  sub_B76E0(&v17, KeyPath, sub_4B3BC, 0, v11, v12, v13, &protocol witness table for String, v14);
}

uint64_t sub_4B3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  __chkstk_darwin(v7 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  __chkstk_darwin(v10 - 8);
  v12 = v20 - v11;
  sub_B7A60();
  v20[0] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[2] = sub_B68C0();
  v20[3] = v13;
  sub_B68A0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_A194(v9, &qword_EEF48, &unk_C01F0);
    v16 = sub_B6A00();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  else
  {
    sub_B6890();
    (*(v15 + 8))(v9, v14);
  }

  (*(v4 + 16))(v6, a1, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v6, v3);
  sub_97E8();
  sub_B7630();
}

uint64_t sub_4B728()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v0 = sub_B68D0();
  v2(v0);
}

uint64_t sub_4B7F0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  sub_B75C0();
  sub_4CF60(v10);

  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v11 = sub_B6940();
    v12 = v13;
    (*(v5 + 8))(v7, v4);
  }

  *&v23 = v11;
  *(&v23 + 1) = v12;
  sub_97E8();
  v14 = sub_B7200();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  return result;
}

uint64_t sub_4BA90(__int128 *a1, uint64_t a2, void (*a3)(void *))
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BF0, &qword_C04A0);
  v4 = sub_B75C0();
  a3(v4);
}

uint64_t sub_4BB74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4C6CC(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL);
  return result;
}

unint64_t sub_4BCCC()
{
  result = qword_F0C10;
  if (!qword_F0C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C00, &qword_C04D0);
    sub_40DB8();
    sub_A8CC(&qword_F0C18, &qword_F0C20, &qword_C04E8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C10);
  }

  return result;
}

uint64_t sub_4BD90(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_4C52C(v3, v1);
  return sub_4CDC8(&v3);
}

uint64_t sub_4BDD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    result = 0;
  }

  else
  {
  }

  *a2 = result;
  return result;
}

uint64_t sub_4BE18(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_4BE2C(result, a2);
  }

  return result;
}

uint64_t sub_4BE2C(uint64_t result, char a2)
{
  if (!a2)
  {
  }

  return v2;
}

unint64_t sub_4BE44()
{
  result = qword_F0C60;
  if (!qword_F0C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C60);
  }

  return result;
}

unint64_t sub_4BE98()
{
  result = qword_F0C68;
  if (!qword_F0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C68);
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_4C014(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_4C05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_4C0BC()
{
  result = qword_F0C70;
  if (!qword_F0C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BE0, &unk_C0490);
    sub_4C148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C70);
  }

  return result;
}

unint64_t sub_4C148()
{
  result = qword_F0C78;
  if (!qword_F0C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BD8, &qword_C0488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BC8, &qword_C0478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BC0, &qword_C0470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C58, &qword_C0560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0BB8, &qword_C0468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C30, &qword_C04F0);
    sub_B6850();
    sub_4C6CC(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C38, &qword_C04F8);
    sub_A8CC(&qword_F0C40, &qword_F0C38, &qword_C04F8, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_4BE44();
    sub_4BE98();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_9BD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C78);
  }

  return result;
}

uint64_t sub_4C42C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_4C4C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);

  return sub_4B728();
}

uint64_t sub_4C52C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_4C540(a1, a2);
  }

  return a1;
}

uint64_t sub_4C540(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

unint64_t sub_4C558()
{
  result = qword_F0C90;
  if (!qword_F0C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C88, &qword_C0688);
    sub_4C5E4();
    sub_4C714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C90);
  }

  return result;
}

unint64_t sub_4C5E4()
{
  result = qword_F0C98;
  if (!qword_F0C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0CA0, &unk_C0690);
    sub_A8CC(&qword_F0660, &qword_F0668, &qword_C1FD0, &protocol conformance descriptor for Button<A>);
    sub_4C6CC(&qword_F0670, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0C98);
  }

  return result;
}

uint64_t sub_4C6CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_4C714()
{
  result = qword_F0CA8;
  if (!qword_F0CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0CB0, &qword_C06A0);
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
    sub_4C6CC(&qword_F0670, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0CA8);
  }

  return result;
}

uint64_t sub_4C81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C88, &qword_C0688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_4C904()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4C944(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F248;

  return sub_4E524(a1, v4, v5, v6);
}

uint64_t sub_4CA2C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ItemProximityProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_4CAEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ItemProximityProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies(uint64_t a1)
{
  result = qword_F0D20;
  if (!qword_F0D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4CBDC(uint64_t a1)
{
  result = type metadata accessor for ItemProximityProvider(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_4CC60()
{
  swift_getKeyPath();
  sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  return *(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL);
}

uint64_t sub_4CD08@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  v3 = v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination;
  v4 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination);
  *a1 = v4;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_4C52C(v4, v5);
}

uint64_t sub_4CDC8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination;
  v5 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination);
  v6 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination + 8);
  sub_4C52C(v5, *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination + 8));
  v7 = sub_4FDB0(v5, v6, v2, v3);
  sub_4BE18(v5, v6);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65B0();
    sub_4BE18(v2, v3);
  }

  else
  {
    v10 = *v4;
    *v4 = v2;
    v11 = *(v4 + 8);
    *(v4 + 8) = v3;

    return sub_4BE18(v10, v11);
  }
}

uint64_t sub_4CF60@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  swift_getKeyPath();
  v52 = v1;
  sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination + 8) == 2)
  {
    v9 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination);
    v50 = v5;
    v51 = a1;
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
        v11 = swift_allocObject();
        v47 = xmmword_BDA30;
        *(v11 + 16) = xmmword_BDA30;
        *(v11 + 56) = &type metadata for UInt;
        *(v11 + 64) = &protocol witness table for UInt;
        *(v11 + 32) = v10;
        if (qword_EEAB0 != -1)
        {
          swift_once();
        }

        v12 = sub_B62F0();
        v13 = __swift_project_value_buffer(v12, qword_FAD48);
        v14 = *(v12 - 8);
        v15 = *(v14 + 16);
        v15(v8, v13, v12);
        v16 = *(v14 + 56);
        v16(v8, 0, 1, v12);
        v17 = sub_B78D0();
        v48 = v18;
        v49 = v17;

        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        v15(v8, v13, v12);
        v16(v8, 0, 1, v12);
        v19 = sub_B78D0();
        v45 = v20;
        v46 = v19;
        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
        *(swift_allocObject() + 16) = v47;
        v15(v8, v13, v12);
        v16(v8, 0, 1, v12);
        sub_B78D0();
        sub_A194(v8, &unk_F17B0, &qword_BE7D0);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
        (*(*(v21 - 8) + 56))(v50, 1, 1, v21);
        v52 = ItemContactInfoSetupIntroductionViewModel.bind();
        v53 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
        sub_B68B0();
        a1 = v51;
        goto LABEL_15;
      }

      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v33 = sub_B62F0();
      v34 = __swift_project_value_buffer(v33, qword_FAD48);
      v35 = *(v33 - 8);
      v36 = *(v35 + 16);
      v36(v8, v34, v33);
      v37 = *(v35 + 56);
      v37(v8, 0, 1, v33);
      v38 = sub_B78D0();
      v48 = v39;
      v49 = v38;
      sub_A194(v8, &unk_F17B0, &qword_BE7D0);
      v36(v8, v34, v33);
      v37(v8, 0, 1, v33);
      v40 = sub_B78D0();
      v46 = v41;
      *&v47 = v40;
      sub_A194(v8, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
      *(swift_allocObject() + 16) = xmmword_BDA30;
      v36(v8, v34, v33);
      v37(v8, 0, 1, v33);
      sub_B78D0();
      sub_A194(v8, &unk_F17B0, &qword_BE7D0);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      (*(*(v42 - 8) + 56))(v50, 1, 1, v42);
      v52 = ItemContactInfoSetupIntroductionViewModel.bind();
      v53 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
    }

    else
    {
      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v23 = sub_B62F0();
      v24 = __swift_project_value_buffer(v23, qword_FAD48);
      v25 = *(v23 - 8);
      v26 = *(v25 + 16);
      v26(v8, v24, v23);
      v27 = *(v25 + 56);
      v27(v8, 0, 1, v23);
      v28 = sub_B78D0();
      v48 = v29;
      v49 = v28;
      sub_A194(v8, &unk_F17B0, &qword_BE7D0);
      v26(v8, v24, v23);
      v27(v8, 0, 1, v23);
      v30 = sub_B78D0();
      v46 = v31;
      *&v47 = v30;
      sub_A194(v8, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
      *(swift_allocObject() + 16) = xmmword_BDA30;
      v26(v8, v24, v23);
      v27(v8, 0, 1, v23);
      sub_B78D0();
      sub_A194(v8, &unk_F17B0, &qword_BE7D0);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
      v52 = ItemContactInfoSetupIntroductionViewModel.bind();
      v53 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
    }

    sub_B68B0();
    a1 = v51;
LABEL_15:
    sub_B6910();
    v22 = 0;
    goto LABEL_16;
  }

  v22 = 1;
LABEL_16:
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  return (*(*(v43 - 8) + 56))(a1, v22, 1, v43);
}

void sub_4DB08()
{
  if (*(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65B0();
  }
}

uint64_t sub_4DC0C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_4DD24()
{
  swift_getKeyPath();
  sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();
}

uint64_t sub_4DDD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask);
}

uint64_t sub_4DE84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask;
  if (!*(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65B0();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_B7AD0();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_4E018()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v1 - 8);
  v56 = &v43 - v2;
  v3 = type metadata accessor for ItemProximityProvider(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v55 = *(v6 - 8);
  v53 = *(v55 + 64);
  v7 = __chkstk_darwin(v6);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v43 - v9;
  v11 = type metadata accessor for LostAccessory(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_B65A0();
  v44 = v14;
  v54 = *(v14 - 8);
  v15 = v54;
  v16 = *(v54 + 64);
  v17 = __chkstk_darwin(v14);
  v49 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  sub_50754(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_lostAccessory, v13, type metadata accessor for LostAccessory);
  v20 = *(v15 + 32);
  v50 = v15 + 32;
  v51 = v20;
  v45 = v19;
  v20(v19, v13, v14);
  v21 = v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies;
  v47 = v0;
  v22 = type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies(0);
  sub_50754(v21 + *(v22 + 24), v5, type metadata accessor for ItemProximityProvider);
  v23 = v55;
  v48 = *(v55 + 32);
  v46 = v10;
  v24 = v5;
  v25 = v6;
  v43 = v6;
  v48(v10, v24, v6);
  v26 = sub_B7A80();
  (*(*(v26 - 8) + 56))(v56, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v23;
  v29 = v52;
  (*(v23 + 16))(v52, v10, v25);
  v30 = v54;
  v31 = v49;
  v32 = v19;
  v33 = v44;
  (*(v54 + 16))(v49, v32, v44);
  sub_B7A60();

  v34 = sub_B7A50();
  v35 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v36 = (v53 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (*(v30 + 80) + v36 + 8) & ~*(v30 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v34;
  *(v38 + 24) = &protocol witness table for MainActor;
  v39 = v29;
  v40 = v43;
  v48((v38 + v35), v39, v43);
  *(v38 + v36) = v27;
  v51(v38 + v37, v31, v33);

  v41 = sub_30A3C(0, 0, v56, &unk_C07F8, v38);
  sub_4DE84(v41);
  (*(v55 + 8))(v46, v40);
  return (*(v54 + 8))(v45, v33);
}

uint64_t sub_4E524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  type metadata accessor for LostAccessory(0);
  v4[12] = swift_task_alloc();
  type metadata accessor for DelegatedURLShare(0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_B7A60();
  v4[15] = sub_B7A50();
  v6 = sub_B7A00();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_4E620, v6, v5);
}

uint64_t sub_4E620()
{
  v24 = v0;
  v1 = v0[11];
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission))
  {
    v2 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL;
    v0[18] = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL;
    if (*(v1 + v2) == 1)
    {
      *(v1 + v2) = 1;
    }

    else
    {
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v1;
      *(v5 + 24) = 1;
      v0[2] = v1;
      sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
      sub_B65B0();
    }

    v0[19] = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_logger;

    v6 = sub_B69A0();
    v7 = sub_B7B20();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[11];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      swift_getKeyPath();
      v0[10] = v9;
      sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
      sub_B65C0();

      *(v10 + 4) = *(v1 + v2);

      _os_log_impl(&dword_0, v6, v7, "Building share url. isLoadingShareURL: %{BOOL}d", v10, 8u);
    }

    else
    {
    }

    v12 = v0[11];
    v11 = v0[12];
    v13 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies;
    v0[20] = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies;
    v14 = (v12 + v13);
    v15 = *v14;
    v0[21] = v14[1];
    v16 = v14[3];
    v0[22] = v16;
    sub_50754(v12 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_lostAccessory, v11, type metadata accessor for LostAccessory);

    v17 = v16;
    v21 = (v15 + *v15);
    v18 = swift_task_alloc();
    v0[23] = v18;
    *v18 = v0;
    v18[1] = sub_4E9FC;
    v19 = v0[14];
    v20 = v0[12];

    return v21(v19, v20);
  }

  else
  {

    v22 = 2;
    v23 = 2;
    sub_4CDC8(&v22);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_4E9FC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_4EEF0;
  }

  else
  {
    v2 = sub_4EB10;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_4EB10()
{
  v1 = v0[22];
  v2 = v0[12];

  v3 = sub_B65A0();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v0[16];
  v5 = v0[17];

  return _swift_task_switch(sub_4EBB4, v4, v5);
}

uint64_t sub_4EBB4()
{
  v20 = v0;
  v1 = v0[18];
  v2 = v0[11];
  if (*(v2 + v1))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[9] = v2;
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65B0();
  }

  else
  {

    *(v2 + v1) = 0;
  }

  v4 = sub_B69A0();
  v5 = sub_B7B20();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    v7 = v0[11];
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    swift_getKeyPath();
    v0[8] = v7;
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65C0();

    *(v8 + 4) = *(v7 + v6);

    _os_log_impl(&dword_0, v4, v5, "End building share url. isLoadingShareURL: %{BOOL}d", v8, 8u);
  }

  else
  {
  }

  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[11] + v0[20];
  sub_50754(v9, v10, type metadata accessor for DelegatedURLShare);
  v13 = *(v11 + 32);
  v12 = *(v11 + 40);
  type metadata accessor for DelegatedSharesSetupWebsiteViewModel(0);
  v14 = swift_allocObject();
  sub_507BC(v10, v14 + OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_delegatedURLShare, type metadata accessor for DelegatedURLShare);
  v15 = (v14 + OBJC_IVAR____TtC13FindMyAppCore36DelegatedSharesSetupWebsiteViewModel_dependencies);
  *v15 = v13;
  v15[1] = v12;
  v18 = v14;
  v19 = 0;

  sub_4CDC8(&v18);
  sub_50824(v9, type metadata accessor for DelegatedURLShare);

  v16 = v0[1];

  return v16();
}

uint64_t sub_4EEF0()
{
  v1 = v0[22];
  v2 = v0[12];

  v3 = sub_B65A0();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v0[16];
  v5 = v0[17];

  return _swift_task_switch(sub_4EF94, v4, v5);
}

uint64_t sub_4EF94()
{
  v20 = v0;
  v1 = v0[18];
  v2 = v0[11];
  if (*(v2 + v1))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[7] = v2;
    sub_5070C(&qword_F0BF8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
    sub_B65B0();
  }

  else
  {

    *(v2 + v1) = 0;
  }

  v4 = *(v0[11] + v0[20] + 24);
  v0[3] = v0[24];
  swift_errorRetain();

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF518, &qword_C0860);
  type metadata accessor for SPBeaconSharingError(0);
  if (swift_dynamicCast())
  {
    v6 = v0[4];
    v0[5] = v6;
    v0[6] = v5;
    sub_5070C(&qword_EEC30, type metadata accessor for SPBeaconSharingError, &unk_BCED4);
    v7 = sub_B78C0();

    if (v7)
    {
      v8 = sub_B69A0();
      v9 = sub_B7B40();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_0, v8, v9, "Failed to build share URL. Delegation limit reached.", v10, 2u);
      }

      v18 = 1;
      goto LABEL_13;
    }
  }

  else
  {
  }

  swift_errorRetain();
  v11 = sub_B69A0();
  v12 = sub_B7B40();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_0, v11, v12, "Failed to build share URL with error %@", v13, 0xCu);
    sub_A194(v14, &qword_EF4F8, &qword_C16D0);
  }

  v18 = 0;
LABEL_13:
  v19 = 2;
  sub_4CDC8(&v18);

  v16 = v0[1];

  return v16();
}

uint64_t sub_4F37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_B65A0();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0E70, &qword_C0800);
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = sub_B7A60();
  v6[16] = sub_B7A50();
  v10 = sub_B7A00();
  v6[17] = v10;
  v6[18] = v9;

  return _swift_task_switch(sub_4F4E0, v10, v9);
}

uint64_t sub_4F4E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  sub_B7A90();
  swift_beginAccess();
  v1 = sub_B7A50();
  v0[19] = v1;
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_4F5DC;
  v3 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 21, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_4F5DC()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_4F720, v3, v2);
}

uint64_t sub_4F720()
{
  v1 = *(v0 + 168);
  if (v1 != 3)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
      v4 = sub_B69A0();
      v5 = sub_B7B20();
      v6 = os_log_type_enabled(v4, v5);
      v8 = *(v0 + 80);
      v7 = *(v0 + 88);
      v9 = *(v0 + 72);
      if (v6)
      {
        v26 = v5;
        log = v4;
        v10 = swift_slowAlloc();
        *(v0 + 40) = swift_slowAlloc();
        *v10 = 141558531;
        *(v10 + 4) = 1752392040;
        *(v10 + 12) = 2081;
        sub_5070C(&qword_F0A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v11 = sub_B7DA0();
        v13 = v12;
        (*(v8 + 8))(v7, v9);
        v14 = sub_17834(v11, v13, (v0 + 40));

        *(v10 + 14) = v14;
        *(v10 + 22) = 2082;
        v15 = 0xE300000000000000;
        v16 = 7496038;
        if (v1 != 1)
        {
          v16 = 0x54426E6968746977;
          v15 = 0xED000065676E6152;
        }

        if (v1)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0x6E776F6E6B6E75;
        }

        if (v1)
        {
          v18 = v15;
        }

        else
        {
          v18 = 0xE700000000000000;
        }

        v19 = sub_17834(v17, v18, (v0 + 40));

        *(v10 + 24) = v19;
        _os_log_impl(&dword_0, log, v26, "%{private,mask.hash}s proximity: %{public}s", v10, 0x20u);
        swift_arrayDestroy();

        if (!v1)
        {
          goto LABEL_19;
        }
      }

      else
      {

        (*(v8 + 8))(v7, v9);
        if (!v1)
        {
          goto LABEL_19;
        }
      }

      if (v1 == 1)
      {
        v20 = 1;
LABEL_20:

        *(v3 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) = v20 & 1;

        v23 = sub_B7A50();
        *(v0 + 152) = v23;
        v24 = swift_task_alloc();
        *(v0 + 160) = v24;
        *v24 = v0;
        v24[1] = sub_4F5DC;
        v25 = *(v0 + 96);

        return AsyncStream.Iterator.next(isolation:)(v0 + 168, v23, &protocol witness table for MainActor, v25);
      }

LABEL_19:
      v20 = sub_B7DD0();
      goto LABEL_20;
    }
  }

  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t DelegatedSharesSetupIntroductionViewModel.deinit()
{
  sub_50824(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies, type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies);
  sub_50824(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);

  v1 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_4BE18(*(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination + 8));
  v3 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DelegatedSharesSetupIntroductionViewModel.__deallocating_deinit()
{
  sub_50824(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies, type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies);
  sub_50824(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);

  v1 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_4BE18(*(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination + 8));
  v3 = OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_4FDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a2 == 0xFF)
  {
    if (a4 == 0xFF)
    {
      sub_4C52C(a1, 255);
      sub_4C52C(a3, 255);
      sub_4BE18(a1, 255);
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_5;
  }

  if (a4 == 0xFF)
  {
LABEL_5:
    v11 = a2;
    sub_4C52C(a1, a2);
    sub_4C52C(a3, v4);
    sub_4BE18(a1, v11);
    sub_4BE18(a3, v4);
    v9 = 1;
    return v9 & 1;
  }

  v7 = a2;
  sub_4C52C(a1, a2);
  sub_4C52C(a3, v4);
  v8 = sub_80950(a1, v7, a3, v4);
  sub_4BE18(a3, v4);
  sub_4BE18(a1, v7);
  v9 = !v8;
  return v9 & 1;
}

uint64_t _s13FindMyAppCore41DelegatedSharesSetupIntroductionViewModelC13lostAccessory12dependencies40hasValidItemLocationToContinueSubmissionAcA04LostL0V_AC12DependenciesVSbtcfC_0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LostAccessory(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_50754(a1, v11, type metadata accessor for LostAccessory);
  sub_50754(a2, v8, type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies);
  type metadata accessor for DelegatedSharesSetupIntroductionViewModel(0);
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask) = 0;
  sub_B69B0();
  v13 = v12 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination;
  *v13 = 0;
  *(v13 + 8) = -1;
  sub_B65F0();
  sub_50824(a2, type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies);
  sub_50824(a1, type metadata accessor for LostAccessory);
  sub_4BE18(*v13, *(v13 + 8));
  *v13 = 0;
  *(v13 + 8) = -1;
  sub_507BC(v11, v12 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_507BC(v8, v12 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_dependencies, type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies);
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__isLoadingShareURL) = 0;
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) = a3;
  return v12;
}

uint64_t type metadata accessor for DelegatedSharesSetupIntroductionViewModel(uint64_t a1)
{
  result = qword_F0DB0;
  if (!qword_F0DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_50160(uint64_t a1)
{
  result = type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LostAccessory(319);
    if (v3 <= 0x3F)
    {
      result = sub_B69C0();
      if (v4 <= 0x3F)
      {
        result = sub_B6600();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_50320()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__itemProximityTask) = *(v0 + 24);
}

uint64_t sub_50364(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_5039C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_B65A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_5050C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_B65A0() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_F248;

  return sub_4F37C(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_5068C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC13FindMyAppCore41DelegatedSharesSetupIntroductionViewModel__destination;
  v3 = *v2;
  v4 = *(v0 + 32);
  *v2 = v1;
  v5 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_4C52C(v1, v4);
  return sub_4BE18(v3, v5);
}

uint64_t sub_5070C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_50754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_507BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_50824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int ItemContactInfoSetupIntroductionViewModel.Stack.hashValue.getter()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7EC0(0);
  sub_B7EC0(v1);
  return sub_B7EE0();
}

void ItemContactInfoSetupIntroductionViewModel.Stack.hash(into:)()
{
  v1 = *v0;
  sub_B7EC0(0);
  sub_B7EC0(v1);
}

Swift::Int sub_50948()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7EC0(0);
  sub_B7EC0(v1);
  return sub_B7EE0();
}

Swift::Int sub_50998@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_B7EB0();
  sub_B7EC0(0);
  sub_B7EC0(v3);
  result = sub_B7EE0();
  *a1 = result;
  return result;
}

uint64_t sub_50A10(uint64_t a1)
{
  result = sub_50A88(&qword_F0E78, &protocol conformance descriptor for DelegatedSharesSetupIntroductionViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_50A88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DelegatedSharesSetupIntroductionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t _s5StackOwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t _s5StackOwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_50C44()
{
  result = qword_F0E88;
  if (!qword_F0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0E88);
  }

  return result;
}

uint64_t sub_50CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_50D00()
{
  result = qword_F0E90;
  if (!qword_F0E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0E90);
  }

  return result;
}

unint64_t sub_50D54()
{
  result = qword_F0E98;
  if (!qword_F0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0E98);
  }

  return result;
}

unint64_t sub_50DAC()
{
  result = qword_F0EA0;
  if (!qword_F0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0EA0);
  }

  return result;
}

unint64_t sub_50E04()
{
  result = qword_F0EA8;
  if (!qword_F0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F0EA8);
  }

  return result;
}

uint64_t sub_50E84@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0B90, &unk_C0B60);
  v85 = *(v1 - 8);
  v86 = v1;
  __chkstk_darwin(v1);
  v84 = v66 - v2;
  v3 = sub_B6980();
  v67 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v6 - 8);
  v8 = v66 - v7;
  v75 = sub_B6850();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EB0, &qword_C0B70);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = v66 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EB8, &qword_C0B78);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v90 = v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EC0, &unk_C0B80);
  v82 = *(v12 - 8);
  v83 = v12;
  __chkstk_darwin(v12);
  v79 = v66 - v13;
  if (qword_EEAB0 != -1)
  {
    swift_once();
  }

  v14 = sub_B62F0();
  v15 = __swift_project_value_buffer(v14, qword_FAD48);
  v16 = *(v14 - 8);
  v17 = *(v16 + 16);
  v18 = v15;
  v88 = v16 + 16;
  v19 = v17;
  (v17)(v8);
  v21 = *(v16 + 56);
  v20 = v16 + 56;
  v22 = v21;
  v21(v8, 0, 1, v14);
  v69 = sub_B78D0();
  v68 = v23;
  sub_A194(v8, &unk_F17B0, &qword_BE7D0);
  v66[7] = sub_538B0();
  v66[6] = v24;
  v94 = &type metadata for SolariumFeatureFlag;
  v95 = sub_28360();
  v25 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v91);
  if (v25)
  {
    v26 = v8;
    v27 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_40D5C();
    if (qword_EEB08 != -1)
    {
      swift_once();
    }

    v26 = v8;
    v28 = __swift_project_value_buffer(v3, qword_FAEA0);
    (*(v67 + 16))(v5, v28, v3);
    v27 = sub_B7B90();
  }

  v66[4] = v27;
  v66[3] = v66;
  v29 = __chkstk_darwin(v27);
  v66[2] = &v63;
  __chkstk_darwin(v29);
  v30 = v26;
  v71 = v18;
  v72 = v19;
  v19(v26, v18, v14);
  v70 = v22;
  v22(v26, 0, 1, v14);
  v31 = sub_B78D0();
  v67 = v14;
  v66[1] = v31;
  sub_A194(v26, &unk_F17B0, &qword_BE7D0);
  sub_52570();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EC8, &qword_C1D70);
  v66[5] = v20;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0ED0, &unk_C0B90);
  v33 = sub_53A6C();
  v34 = sub_A8CC(&qword_F0EE0, &qword_F0ED0, &unk_C0B90, &protocol conformance descriptor for VStack<A>);
  v64 = v33;
  v65 = v34;
  v63 = v32;
  v35 = v73;
  sub_B6840();
  v36 = sub_53BF4(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
  v37 = v76;
  v38 = v75;
  sub_B73B0();
  v39 = (*(v74 + 8))(v35, v38);
  __chkstk_darwin(v39);
  v40 = v89;
  v65 = v89;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0EE8, &qword_C0BA0);
  v91 = v38;
  v92 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0EF0, &qword_C0BA8);
  v44 = sub_53AF8();
  v91 = v43;
  v92 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v78;
  sub_B7450();
  (*(v77 + 8))(v37, v46);
  v99 = *(v40 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C80, &qword_C0680);
  sub_B75E0();
  v76 = v91;
  v75 = v92;
  LODWORD(v77) = v93;
  v89 = *v40;
  v47 = v67;
  v72(v30, v71, v67);
  v70(v30, 0, 1, v47);
  v48 = sub_B78D0();
  v50 = v49;
  sub_A194(v30, &unk_F17B0, &qword_BE7D0);
  v91 = v48;
  v92 = v50;
  type metadata accessor for DelegatedSharesReportingModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *&v99 = sub_B7580();
  v53 = sub_47AD4();
  sub_97E8();
  v54 = v84;
  sub_B6AE0();
  v55 = sub_B64C0();
  v91 = v46;
  v92 = v41;
  v93 = OpaqueTypeConformance2;
  v94 = v45;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = sub_53BF4(&qword_F0BA0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v64 = v53;
  v65 = &protocol witness table for Never;
  v63 = v57;
  v58 = v81;
  v59 = v79;
  v60 = v90;
  sub_B7290();

  (*(v85 + 8))(v54, v86);
  (*(v80 + 8))(v60, v58);
  v91 = v58;
  v92 = v55;
  v93 = &type metadata for Image;
  v94 = &type metadata for Never;
  v95 = v56;
  v96 = v57;
  v97 = v53;
  v98 = &protocol witness table for Never;
  swift_getOpaqueTypeConformance2();
  v61 = v83;
  sub_B7300();
  return (*(v82 + 8))(v59, v61);
}