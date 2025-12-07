uint64_t PhotosObservableSocialGroup.item.getter@<X0>(uint64_t a1@<X8>)
{
  v7 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  sub_1C119B55C(KeyPath);

  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 112);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a1, v1 + v5);
}

uint64_t sub_1C119B49C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return PhotosObservableSocialGroup.item.setter(v3);
}

uint64_t sub_1C119B55C(uint64_t a1)
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_0_59();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C119B5E4(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 112);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(&a1[v5], a2);
  return swift_endAccess();
}

uint64_t sub_1C119B6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_59();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

double (*PhotosObservableSocialGroup.item.modify(void *a1))(uint64_t a1)
{
  a1[3] = v1;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5();
  KeyPath = swift_getKeyPath();
  sub_1C119B55C(KeyPath);

  OUTLINED_FUNCTION_10_2();
  *a1 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_59();
  swift_getWitnessTable();
  sub_1C1261F50();

  swift_beginAccess();
  return sub_1C119B8FC;
}

double sub_1C119B8FC(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();

  return sub_1C119B934(v1);
}

double sub_1C119B934(void *a1)
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C1261F40();

  return result;
}

uint64_t PhotosObservableSocialGroup.selectionIdentifier.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_30(v3, v9);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_7_35();
  v5(v4);
  v6 = OUTLINED_FUNCTION_2_39();
  v7(v6);
  return v1;
}

uint64_t PhotosObservableSocialGroup.id.getter()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  PhotosObservableSocialGroup.item.getter(&v8 - v5);
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v3 + 8))(v6, v1);
}

uint64_t PhotosObservableSocialGroup.title.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_30(v3, v9);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_7_35();
  v5(v4);
  v6 = OUTLINED_FUNCTION_2_39();
  v7(v6);
  return v1;
}

uint64_t PhotosObservableSocialGroup.deinit()
{
  OUTLINED_FUNCTION_2_15();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 112));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 120);
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PhotosObservableSocialGroup.__deallocating_deinit()
{
  PhotosObservableSocialGroup.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C119BDA0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1C119BDE8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PhotosObservableSocialGroup.item.modify(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C119BE44(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void static Gradient.rainbow.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810, &qword_1C12BADD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C12BF7D0;
  *(v0 + 32) = sub_1C1265120();
  *(v0 + 40) = sub_1C12651B0();
  *(v0 + 48) = sub_1C12651D0();
  *(v0 + 56) = sub_1C1265180();
  *(v0 + 64) = sub_1C1265130();
  *(v0 + 72) = sub_1C12651C0();

  JUMPOUT(0x1C68EF140);
}

uint64_t PhotosMockCollectionTitleOverlayModel.__allocating_init(title:subtitle:subtitleSymbolName:position:topLeadingChromeWidth:topTrailingChromeWidth:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, char a9, uint64_t a10, unsigned __int8 a11)
{
  v34 = a8;
  v35 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906C8, &qword_1C12BF800);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - v16;
  v18 = sub_1C1262250();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v24 = v23 - v22;
  v33 = *a7;
  if (qword_1EBE8FD28 != -1)
  {
    OUTLINED_FUNCTION_11_29(&qword_1EBE8FD28);
  }

  v25 = __swift_project_value_buffer(v18, qword_1EBE96468);
  (*(v20 + 16))(v24, v25, v18);
  v26 = a6;
  if (!a2)
  {
    sub_1C1262230();
    v26 = a6;
  }

  v32 = a10;
  if (a4 == 1)
  {
    sub_1C1262240();
    v26 = a6;
  }

  v31 = a11;
  if (v26 == 1)
  {
    v35 = sub_1C1262210();
  }

  v27 = sub_1C1262260();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v27);
  v37[3] = v18;
  v37[4] = MEMORY[0x1E69C43A8];
  __swift_allocate_boxed_opaque_existential_1(v37);
  sub_1C1262220();
  v36 = v33;
  type metadata accessor for PhotosMockCollectionTitleOverlayModel(0);
  v28 = swift_allocObject();
  PhotosMockCollectionTitleOverlayModel.init(titleModel:position:topLeadingChromeWidth:topTrailingChromeWidth:)(v37, &v36, v34, a9 & 1, v32, v31 & 1);
  (*(v20 + 8))(v24, v18);
  return v28;
}

uint64_t PhotosCollectionTitleOverlayStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

void PhotosMockCollectionTitleOverlayModel.__allocating_init(titleModel:position:topLeadingChromeWidth:topTrailingChromeWidth:)()
{
  OUTLINED_FUNCTION_19_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  swift_allocObject();
  PhotosMockCollectionTitleOverlayModel.init(titleModel:position:topLeadingChromeWidth:topTrailingChromeWidth:)(v11, v9, v7, v5 & 1, v3, v1 & 1);
  OUTLINED_FUNCTION_18_4();
}

uint64_t PhotosMockCollectionTitleOverlayModel.init(titleModel:position:topLeadingChromeWidth:topTrailingChromeWidth:)(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v9 = sub_1C1262130();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v15 = v14 - v13;
  v16 = *a2;
  v17 = v6 + OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__banner;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_1C1261F60();
  sub_1C10D1A1C(a1, &v22, &qword_1EBE96490, &qword_1C12BF808);
  if (v23)
  {
    sub_1C0FDBA58(&v22, &v24);
  }

  else
  {
    if (qword_1EBE8FD28 != -1)
    {
      OUTLINED_FUNCTION_11_29(&qword_1EBE8FD28);
    }

    v18 = sub_1C1262250();
    v19 = __swift_project_value_buffer(v18, qword_1EBE96468);
    v25 = v18;
    v26 = MEMORY[0x1E69C43A8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v19, v18);
    if (v23)
    {
      sub_1C0FD1A5C(&v22, &qword_1EBE96490, &qword_1C12BF808);
    }
  }

  sub_1C0FDBA58(&v24, v6 + 16);
  *(v6 + 56) = 0x3FF0000000000000;
  *(v6 + 64) = v16 & 1;
  *(v6 + 72) = xmmword_1C12BF7F0;
  sub_1C12620F0();
  sub_1C0FD1A5C(a1, &qword_1EBE96490, &qword_1C12BF808);
  (*(v11 + 32))(v6 + OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__topChromeGeometry, v15, v9);
  return v6;
}

uint64_t sub_1C119C65C(void *a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1C119DE14(KeyPath, sub_1C119CE4C, &v5);

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void sub_1C119C6D0(double a1)
{
  OUTLINED_FUNCTION_9_5(v1 + 56);
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_22_18(v5, v6, v7);
  }
}

void sub_1C119C76C(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (v2 == *(v1 + 64))
  {
    *(v1 + 64) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_22_18(v5, v6, v7);
  }
}

void sub_1C119C814(double a1)
{
  OUTLINED_FUNCTION_9_5(v1 + 72);
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_22_18(v5, v6, v7);
  }
}

void sub_1C119C8B0(double a1)
{
  OUTLINED_FUNCTION_9_5(v1 + 80);
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_22_18(v5, v6, v7);
  }
}

uint64_t sub_1C119C94C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1262130();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__topChromeGeometry;
  swift_beginAccess();
  v12 = *(v6 + 16);
  v12(v10, v2 + v11, v4);
  sub_1C119DF58(&qword_1EBE964A0, MEMORY[0x1E69C4370], MEMORY[0x1E69C4378]);
  v18 = a1;
  LOBYTE(a1) = sub_1C1265DE0();
  v13 = *(v6 + 8);
  v13(v10, v4);
  if (a1)
  {
    v12(v10, v18, v4);
    swift_beginAccess();
    (*(v6 + 40))(v2 + v11, v10, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v15 = v18;
    *(&v18 - 2) = v2;
    *(&v18 - 1) = v15;
    sub_1C119DE14(v16, sub_1C119DF3C, (&v18 - 4));
  }

  return (v13)(v18, v4);
}

uint64_t sub_1C119CB7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906C8, &qword_1C12BF800);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C1262250();
  __swift_allocate_value_buffer(v3, qword_1EBE96468);
  __swift_project_value_buffer(v3, qword_1EBE96468);
  v4 = sub_1C1262260();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  return sub_1C1262220();
}

uint64_t type metadata accessor for PhotosMockCollectionTitleOverlayModel(uint64_t a1)
{
  result = qword_1EBE964B0;
  if (!qword_1EBE964B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C119CD40@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_0_1(v5, v6, v7, v8, v9, v10, v11, v12, v15, v1);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v1 + 16, v13);
  return sub_1C0FDB0A8(v1 + 16, a1);
}

uint64_t sub_1C119CDDC(uint64_t a1, uint64_t a2)
{
  sub_1C0FDB0A8(a2, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + 16));
  sub_1C0FDBA58(v4, a1 + 16);
  return swift_endAccess();
}

void sub_1C119CE68()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDEEC4();
  OUTLINED_FUNCTION_18_4();
}

double sub_1C119CF88()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_60();
  v3 = sub_1C119DF58(v1, v2, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 56, v11);
  return *(v0 + 56);
}

uint64_t sub_1C119D018(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 56) = a2;
  return result;
}

void sub_1C119D06C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF5E8();
  OUTLINED_FUNCTION_18_4();
}

void *sub_1C119D138()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_1C119D1A8(&v2);
  *v0 = v2;
  return result;
}

uint64_t sub_1C119D1A8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_0_1(v5, v6, v7, v8, v9, v10, v11, v12, v15, v1);
  sub_1C1261F30();

  result = OUTLINED_FUNCTION_7_4(v1 + 64, v13);
  *a1 = *(v1 + 64);
  return result;
}

uint64_t sub_1C119D240(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 64) = a2 & 1;
  return result;
}

void sub_1C119D298()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE88E4();
  OUTLINED_FUNCTION_18_4();
}

double sub_1C119D364()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_60();
  v3 = sub_1C119DF58(v1, v2, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 72, v11);
  return *(v0 + 72);
}

uint64_t sub_1C119D3F4(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 72) = a2;
  return result;
}

void sub_1C119D448()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF860();
  OUTLINED_FUNCTION_18_4();
}

double sub_1C119D514()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_60();
  v3 = sub_1C119DF58(v1, v2, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 80, v11);
  return *(v0 + 80);
}

uint64_t sub_1C119D5A4(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 80) = a2;
  return result;
}

void sub_1C119D5F8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10746C8();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C119D73C(uint64_t a1)
{
  v2 = sub_1C1262130();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1C119C94C(v5);
}

uint64_t sub_1C119D808@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  OUTLINED_FUNCTION_0_60();
  sub_1C119DF58(v3, v4, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  sub_1C1261F30();

  v5 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__topChromeGeometry;
  OUTLINED_FUNCTION_7_4(v9 + OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__topChromeGeometry, v6);
  sub_1C1262130();
  OUTLINED_FUNCTION_3();
  return (*(v7 + 16))(a1, v9 + v5);
}

uint64_t sub_1C119D8DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1262130();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__topChromeGeometry;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

void sub_1C119D9F8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C119D6C4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C119DB88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_60();
  v6 = sub_1C119DF58(v4, v5, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v17, v1);
  sub_1C1261F30();

  v14 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__banner;
  OUTLINED_FUNCTION_7_4(v2 + OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__banner, v15);
  return sub_1C10D1A1C(v2 + v14, a1, &qword_1EBE90488, &qword_1C12A3260);
}

uint64_t sub_1C119DC3C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1C119DE14(KeyPath, sub_1C119DFA0, &v5);

  return sub_1C0FD1A5C(a1, &qword_1EBE90488, &qword_1C12A3260);
}

uint64_t sub_1C119DCC0(uint64_t a1, uint64_t a2)
{
  sub_1C10D1A1C(a2, v5, &qword_1EBE90488, &qword_1C12A3260);
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__banner;
  swift_beginAccess();
  sub_1C119E798(v5, a1 + v3);
  return swift_endAccess();
}

void sub_1C119DD48()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_60();
  v5 = sub_1C119DF58(v3, v4, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C119DAC4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C119DE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_60();
  sub_1C119DF58(v3, v4, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  return sub_1C1261F20();
}

uint64_t sub_1C119DF58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PhotosMockCollectionTitleOverlayModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__topChromeGeometry;
  sub_1C1262130();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  sub_1C0FD1A5C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel__banner, &qword_1EBE90488, &qword_1C12A3260);
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore37PhotosMockCollectionTitleOverlayModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t PhotosMockCollectionTitleOverlayModel.__deallocating_deinit()
{
  PhotosMockCollectionTitleOverlayModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1C119E0D0()
{
  result = qword_1EBE964A8;
  if (!qword_1EBE964A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE964A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosCollectionTitleOverlayStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C119E2DC(uint64_t a1)
{
  result = sub_1C1262130();
  if (v2 <= 0x3F)
  {
    result = sub_1C1261F70();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C119E798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90488, &qword_1C12A3260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_29(uint64_t a1)
{

  return swift_once();
}

void sub_1C119E864(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x1C68EE920);
}

void sub_1C119E8D0(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x1C68EE920);
}

uint64_t sub_1C119E93C@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_1C12632E0();
  v2 = *(v1 - 8);
  v19 = v1;
  v20 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C12630D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE964C0, &qword_1C12BFBB8);
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v18 - v10;
  sub_1C12630C0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE964C8, &qword_1C12BFBC0);
  v13 = sub_1C119EE2C(&qword_1EDE7BAD0, &qword_1EBE964C8, &qword_1C12BFBC0);
  v14 = sub_1C119EDE4(&qword_1EDE7BFA0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  sub_1C12650B0();
  (*(v6 + 8))(v8, v5);
  sub_1C12632D0();
  v22 = v12;
  v23 = v5;
  v24 = v13;
  v25 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1C119EDE4(&qword_1EDE7BCF0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v16 = v18;
  v15 = v19;
  sub_1C12649F0();
  (*(v20 + 8))(v4, v15);
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_1C119EC64()
{
  v0 = sub_1C12632E0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C12632D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE964D0, &qword_1C12BFBC8);
  sub_1C119EE2C(&qword_1EDE7BAC8, &unk_1EBE964D0, &qword_1C12BFBC8);
  sub_1C119EDE4(&qword_1EDE7BCF0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  sub_1C12649F0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C119EDE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C119EE2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C119EE80(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(&v12[v16], v19, v10);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return sub_1C1265B10();
}

uint64_t PhotosCollectionKeyAssetsView.init(model:overlayStyle:placeholderSymbolContainerWidthRatio:accessoryContent:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, uint64_t a10)
{
  v16 = *a2;
  *&v23[0] = a6;
  *(&v23[0] + 1) = a7;
  v23[1] = a9;
  *&v23[2] = a10;
  v17 = type metadata accessor for PhotosCollectionKeyAssetsView(0, v23);
  v18 = v17[18];
  *&v23[0] = swift_getKeyPath();
  sub_1C0FFCFE4(v23);
  memcpy((a8 + v18), v23, 0xD1uLL);
  v19 = *(a6 - 8);
  v20 = (*(v19 + 16))(a8, a1, a6);
  *(a8 + v17[15]) = v16;
  v21 = a8 + v17[16];
  *v21 = a3;
  *(v21 + 8) = a4 & 1;
  a5(v20);

  return (*(v19 + 8))(a1, a6);
}

uint64_t PhotosCollectionKeyAssetsView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v4 = a1[3];
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_1_3();
  v61 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v60 - v7;
  v78 = type metadata accessor for PhotosAssetView(255);
  v8 = sub_1C1263C30();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v71 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_3();
  v70 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v60 - v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v60 - v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v60 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE964E0, &qword_1C12BFBF8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_3();
  v68 = v22;
  OUTLINED_FUNCTION_7();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v60 - v25;
  v27 = a1[4];
  v28 = a1[2];
  (*(v27 + 80))(v28, v27, v24);
  OUTLINED_FUNCTION_3_42(0, v26);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE964E8, &qword_1C12BFC00);
  v30 = sub_1C0FF746C();
  v31 = sub_1C119FA90();
  v65 = v30;
  v34 = sub_1C10A0734(v78, v29, v30, v31, v32, v33);
  v36 = v35;
  v37 = a1[5];
  v38 = v28;
  v39 = v63;
  v76 = a1[6];
  sub_1C119F92C(v2, v38, v63, v27, v37, v76, v86);
  memcpy(v87, v86, 0x128uLL);
  v87[37] = v34;
  v87[38] = v36;
  v67 = v20;
  v40 = *(v20 + 36);
  v77 = v26;
  memcpy(&v26[v40], v87, 0x138uLL);
  memcpy(v88, v86, sizeof(v88));
  v89 = v34;
  v90 = v36;
  sub_1C10D1A1C(v87, v85, &qword_1EBE96510, &qword_1C12BFC10);
  sub_1C0FD1A5C(v88, &qword_1EBE96510, &qword_1C12BFC10);
  v41 = v75;
  OUTLINED_FUNCTION_3_42(1, v75);
  v42 = v64;
  OUTLINED_FUNCTION_3_42(2, v64);
  if (v39 == MEMORY[0x1E6981E70])
  {
    v48 = v66;
    OUTLINED_FUNCTION_3_42(3, v66);

    v45 = v69;
    v46 = v65;
    sub_1C1112E18();
    sub_1C0FF753C(v48);
  }

  else
  {

    v43 = v60;
    sub_1C0FDBA4C();
    v44 = v61;
    sub_1C0FDBA4C();
    v45 = v69;
    v46 = v65;
    sub_1C1112D68();
    v47 = *(v62 + 8);
    v47(v44, v39);
    v47(v43, v39);
    v48 = v66;
  }

  v49 = v68;
  sub_1C10D1A1C(v77, v68, &qword_1EBE964E0, &qword_1C12BFBF8);
  v85[0] = v49;
  sub_1C0FF74D8(v41, v48);
  v85[1] = v48;
  v50 = v42;
  v51 = v42;
  v52 = v70;
  sub_1C0FF74D8(v51, v70);
  v85[2] = v52;
  v54 = v71;
  v53 = v72;
  v55 = v45;
  v56 = v45;
  v57 = v73;
  (*(v72 + 16))(v71, v56, v73);
  v85[3] = v54;
  v86[0] = v67;
  v86[1] = v78;
  v86[2] = v78;
  v86[3] = v57;
  v81 = sub_1C119FB40();
  v82 = v46;
  v83 = v46;
  v79 = v76;
  v80 = v46;
  WitnessTable = swift_getWitnessTable();
  sub_1C119EE80(v85, 4, v86);
  v58 = *(v53 + 8);
  v58(v55, v57);
  sub_1C0FF753C(v50);
  sub_1C0FF753C(v75);
  sub_1C0FD1A5C(v77, &qword_1EBE964E0, &qword_1C12BFBF8);
  v58(v54, v57);
  sub_1C0FF753C(v52);
  sub_1C0FF753C(v48);
  return sub_1C0FD1A5C(v49, &qword_1EBE964E0, &qword_1C12BFBF8);
}

double sub_1C119F764@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v8 = 0;
  if (sub_1C1266170() > a1)
  {
    sub_1C12661D0();
    v8 = v18;
  }

  v9 = v4 + *(a3 + 64);
  v10 = a1 == 0;
  if (*(v9 + 8))
  {
    v11 = 0x3FC3333333333333;
  }

  else
  {
    v11 = *v9;
  }

  swift_unknownObjectRetain();
  v12 = sub_1C1200D04();
  [v12 setNetworkAccessAllowed_];
  swift_unknownObjectRelease();
  *(a4 + 152) = swift_getKeyPath();
  *(a4 + 160) = 0;
  v13 = type metadata accessor for PhotosAssetView(0);
  v14 = v13[12];
  *(a4 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v15 = a4 + v13[13];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a4 + v13[14];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *a4 = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 8) = v10;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 68) = 256;
  *(a4 + 52) = 0;
  *(a4 + 60) = 0;
  *(a4 + 72) = v11;
  *(a4 + 80) = 0;
  *(a4 + 88) = v8;
  *(a4 + 96) = 0;
  *(a4 + 104) = v12;
  result = 0.0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 2;
  return result;
}

void *sub_1C119F92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  v14 = *(a1 + *(type metadata accessor for PhotosCollectionKeyAssetsView(0, __src) + 60));
  if (v14 == 2)
  {
    sub_1C11A0FE4(__src);
  }

  else
  {
    v15 = sub_1C1265960();
    v17 = v16;
    sub_1C119FC44(a1, v14 & 1, a2, a3, a4, a5, a6, __src);
    memcpy(__dst, __src, 0x111uLL);
    memcpy(v20, __src, 0x111uLL);
    sub_1C10D1A1C(__dst, v21, &qword_1EBE96530, &qword_1C12BFCF0);
    sub_1C0FD1A5C(v20, &qword_1EBE96530, &qword_1C12BFCF0);
    memcpy(&v21[2], __dst, 0x111uLL);
    v21[0] = v15;
    v21[1] = v17;
    nullsub_1();
    memcpy(__src, v21, 0x121uLL);
  }

  return memcpy(a7, __src, 0x121uLL);
}

unint64_t sub_1C119FA90()
{
  result = qword_1EBE964F8;
  if (!qword_1EBE964F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE964E8, &qword_1C12BFC00);
    sub_1C0FDB6D4(&qword_1EDE76BB0, &qword_1EBE96508, &qword_1C12BFC08, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE964F8);
  }

  return result;
}

unint64_t sub_1C119FB40()
{
  result = qword_1EBE96518;
  if (!qword_1EBE96518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE964E0, &qword_1C12BFBF8);
    sub_1C0FF746C();
    sub_1C0FDB6D4(&unk_1EBE96520, &qword_1EBE96510, &qword_1C12BFC10, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96518);
  }

  return result;
}

uint64_t sub_1C119FC44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(a5 + 72))(__src, a3, a5);
  v15 = *__src;
  if (*__src)
  {
    swift_unknownObjectRelease();
  }

  if (qword_1EDE812F8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(&type metadata for PhotosLegibilityGradient, qword_1EBE93F88);
  v37 = *(v16 + 16);
  v38 = *v16;
  v17 = *(v16 + 32);
  v36 = *(v16 + 40);
  v18 = sub_1C1263AB0();
  v61 = 1;
  v35 = a4;
  v19 = a4;
  v20 = a6;
  v21 = a6;
  v22 = a7;
  sub_1C119FFFC(a1, a2 & 1, a3, v19, a5, v21, a7, __src);
  memcpy(__dst, __src, 0x79uLL);
  memcpy(v66, __src, 0x79uLL);
  sub_1C10D1A1C(__dst, v46, &qword_1EBE96538, &qword_1C12BFCF8);
  sub_1C0FD1A5C(v66, &qword_1EBE96538, &qword_1C12BFCF8);
  memcpy(&v60[7], __dst, 0x79uLL);
  v23 = v61;
  if (v15)
  {
    v24 = 1.0;
    v25 = sub_1C1265190();
  }

  else
  {
    if (qword_1EDE7B868 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDE7B870;

    v24 = 0.0;
  }

  KeyPath = swift_getKeyPath();
  *__src = a3;
  *&__src[8] = v35;
  *&__src[16] = a5;
  *&__src[24] = v20;
  *&__src[32] = v22;
  v26 = type metadata accessor for PhotosCollectionKeyAssetsView(0, __src);
  sub_1C11A06C0(v26, v41);
  sub_1C100C7D0(v41);
  v27 = v42;
  v28 = v43;
  v30 = v44;
  v29 = v45;
  v31 = sub_1C1264470();
  v62 = 0;
  v46[0] = v18;
  v46[1] = 0;
  LOBYTE(v46[2]) = v23;
  memcpy(&v46[2] + 1, v60, 0x80uLL);
  *(&v46[18] + 1) = *v40;
  HIDWORD(v46[18]) = *&v40[3];
  v46[19] = v25;
  v46[20] = KeyPath;
  LOBYTE(v46[21]) = 0;
  *(&v46[21] + 1) = *v64;
  HIDWORD(v46[21]) = *&v64[3];
  LOBYTE(v46[22]) = v31;
  *(&v46[22] + 1) = *v63;
  HIDWORD(v46[22]) = *&v63[3];
  v46[23] = v27;
  v46[24] = v28;
  v46[25] = v30;
  v46[26] = v29;
  LOBYTE(v46[27]) = 0;
  *a8 = v38;
  *(a8 + 16) = v37;
  *(a8 + 32) = v17;
  *(a8 + 40) = v36;
  *(a8 + 48) = v24;
  memcpy((a8 + 56), v46, 0xD9uLL);
  *__src = v18;
  *&__src[8] = 0;
  __src[16] = v23;
  memcpy(&__src[17], v60, 0x80uLL);
  *v48 = *v40;
  *&v48[3] = *&v40[3];
  v49 = v25;
  v50 = KeyPath;
  v51 = 0;
  *v52 = *v64;
  *&v52[3] = *&v64[3];
  v53 = v31;
  *v54 = *v63;
  *&v54[3] = *&v63[3];
  v55 = v27;
  v56 = v28;
  v57 = v30;
  v58 = v29;
  v59 = 0;
  sub_1C10D1A1C(v46, v39, &unk_1EBE96540, &qword_1C12BFD30);
  return sub_1C0FD1A5C(__src, &unk_1EBE96540, &qword_1C12BFD30);
}

uint64_t sub_1C119FFFC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v88 = a6;
  v89 = a7;
  v87 = a4;
  v96 = a8;
  v97 = sub_1C1264680();
  v12 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v86 - v16;
  v18 = sub_1C1264700();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a5 + 40);
  v92 = a1;
  v93 = a3;
  v94 = a5;
  v24 = v23(a3, a5, v20);
  v26 = MEMORY[0x1E6980EA8];
  if (v25)
  {
    v102 = v24;
    v103 = v25;
    sub_1C0FDB9AC();
    v27 = sub_1C12648F0();
    v100 = v28;
    v101 = v27;
    LODWORD(v95) = a2;
    v30 = v29;
    v99 = v31;
    (*(v19 + 104))(v22, *MEMORY[0x1E6980EF0], v18);
    v32 = *MEMORY[0x1E6980E20];
    v33 = sub_1C1264590();
    (*(*(v33 - 8) + 104))(v17, v32, v33);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v33);
    sub_1C12645B0();
    sub_1C1264640();
    sub_1C0FD1A5C(v17, &qword_1EBE96550, &qword_1C12AC4C0);
    (*(v19 + 8))(v22, v18);
    v34 = *v26;
    v35 = v12;
    v91 = v12;
    v36 = *(v12 + 104);
    v37 = v97;
    v36(v14, v34, v97);
    sub_1C12646C0();

    (*(v35 + 8))(v14, v37);
    LOBYTE(v35) = v30;
    v38 = v101;
    v90 = v14;
    v39 = v100;
    v40 = sub_1C1264870();
    v42 = v41;
    LOBYTE(v33) = v43;
    v45 = v44;

    sub_1C0FDB8E8(v38, v39, v35 & 1);

    KeyPath = swift_getKeyPath();
    v47 = v33 & 1;
    v48 = v40;
    v49 = v42;
    v100 = v47;
    sub_1C0FDB850(v40, v42, v47);
    v98 = v45;

    v101 = KeyPath;
    LOBYTE(KeyPath) = v95;

    v99 = 2;
    v50 = v37;
    v52 = v90;
    v51 = v91;
    if ((KeyPath & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v100 = 0;
    v101 = 0;
    v98 = 0;
    v99 = 0;
    v50 = v97;
    v51 = v12;
    v52 = v14;
    if ((a2 & 1) == 0)
    {
LABEL_11:
      v68 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      goto LABEL_12;
    }
  }

  v53 = (*(v94 + 48))(v93);
  if (!v54)
  {
    goto LABEL_11;
  }

  v55 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v55 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {

    goto LABEL_11;
  }

  v102 = v53;
  v103 = v54;
  sub_1C0FDB9AC();
  v92 = sub_1C12648F0();
  v57 = v56;
  v59 = v58;
  v102 = v93;
  v103 = v87;
  v104 = v94;
  v105 = v88;
  v106 = v89;
  type metadata accessor for PhotosCollectionKeyAssetsView(0, &v102);
  sub_1C12646A0();
  (*(v51 + 104))(v52, *MEMORY[0x1E6980EA8], v50);
  sub_1C12646C0();

  (*(v51 + 8))(v52, v50);
  v60 = v92;
  v61 = sub_1C1264870();
  v63 = v62;
  LODWORD(v94) = v64;
  v66 = v65;

  sub_1C0FDB8E8(v60, v57, v59 & 1);

  v67 = swift_getKeyPath();
  v68 = v61;
  v69 = v61;
  v70 = v63;
  v71 = v94 & 1;
  sub_1C0FDB850(v69, v63, v94 & 1);
  v72 = v66;

  v73 = v67;

  v74 = 1;
LABEL_12:
  LOBYTE(v102) = 1;
  v97 = v49;
  v75 = v100;
  sub_1C100D6EC(v48, v49, v100, v98, v101);
  sub_1C100D6EC(v68, v70, v71, v72, v73);
  v95 = v48;
  v76 = v49;
  v77 = v75;
  v79 = v98;
  v78 = v99;
  sub_1C100D73C(v48, v76, v77, v98);
  sub_1C100D73C(v68, v70, v71, v72);
  v80 = v102;
  v81 = v96;
  *v96 = 0;
  *(v81 + 8) = v80;
  v82 = v97;
  v81[2] = v48;
  v81[3] = v82;
  v83 = v100;
  v84 = v101;
  v81[4] = v100;
  v81[5] = v79;
  v81[6] = v84;
  v81[7] = v78;
  *(v81 + 64) = 0;
  v81[9] = v68;
  v81[10] = v70;
  v81[11] = v71;
  v81[12] = v72;
  v81[13] = v73;
  v81[14] = v74;
  *(v81 + 120) = 0;
  sub_1C100D73C(v68, v70, v71, v72);
  return sub_1C100D73C(v95, v97, v83, v79);
}

uint64_t sub_1C11A06C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 72);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v17, &qword_1EBE91C80, &qword_1C12A75B0);
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1C11A08E0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C11A0EB8(319, &qword_1EDE78E28, &type metadata for PhotosCollectionKeyAssetsViewOverlayStyle, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C11A0EB8(319, &qword_1EDE7B4C0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_1C11A0EB8(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1C11A0A20(unint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(*(v5 - 8) + 84);
  }

  v10 = *(*(v5 - 8) + 64);
  v11 = *(v7 + 80);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v4 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_29:
    if (v6 == v12)
    {
      v8 = *(*(v5 - 8) + 84);
      v4 = v5;
    }

    else
    {
      result = (((v10 + result) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11;
      if (v8 != v12)
      {
        v21 = *(((v13 + result) & 0xFFFFFFFFFFFFFFF8) + 208);
        if (v21 > 1)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }

    return __swift_getEnumTagSinglePayload(result, v8, v4);
  }

  v14 = ((v13 + ((v11 + (v10 & 0xFFFFFFFFFFFFFFF8) + 17) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 209;
  v15 = (a2 - v12 + 255) >> 8;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    LODWORD(v17) = 4;
  }

  else
  {
    LODWORD(v17) = 2;
  }

  if (v16 < 0x100)
  {
    LODWORD(v17) = 1;
  }

  if (v16 >= 2)
  {
    v17 = v17;
  }

  else
  {
    v17 = 0;
  }

  switch(v17)
  {
    case 1:
      v18 = *(result + v14);
      if (!*(result + v14))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    case 2:
      v18 = *(result + v14);
      if (!*(result + v14))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v18 = *(result + v14);
      if (!v18)
      {
        goto LABEL_29;
      }

LABEL_25:
      v19 = (v18 - 1) << (8 * (((v13 + ((v11 + (v10 & 0xF8) + 17) & ~v11)) & 0xF8) - 47));
      if (v14 <= 3)
      {
        v20 = *result;
      }

      else
      {
        v19 = 0;
        v20 = *result;
      }

      result = v12 + (v20 | v19) + 1;
      break;
    default:
      goto LABEL_29;
  }

  return result;
}

void sub_1C11A0BFC(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a1;
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(v6 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(*(v7 - 8) + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  v12 = *(*(v7 - 8) + 64);
  v13 = *(v9 + 80);
  v14 = *(*(v6 - 8) + 64) + 7;
  v15 = ((v14 + ((v13 + (v12 & 0xFFFFFFFFFFFFFFF8) + 17) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v11 >= a3)
  {
    v19 = 0;
  }

  else
  {
    v16 = (a3 - v11 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (v11 >= a2)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v8 == v11)
        {
          v10 = v8;
          v6 = v7;
        }

        else
        {
          a1 = ((((a1 + v12) & 0xFFFFFFFFFFFFFFF8) + v13 + 17) & ~v13);
          if (v10 != v11)
          {
            v22 = (a1 + v14) & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFE)
            {
              *(v22 + 200) = 0;
              *(v22 + 184) = 0u;
              *(v22 + 168) = 0u;
              *(v22 + 152) = 0u;
              *(v22 + 136) = 0u;
              *(v22 + 120) = 0u;
              *(v22 + 104) = 0u;
              *(v22 + 88) = 0u;
              *(v22 + 72) = 0u;
              *(v22 + 56) = 0u;
              *(v22 + 40) = 0u;
              *(v22 + 24) = 0u;
              *(v22 + 8) = 0u;
              *(v22 + 208) = 0;
              *v22 = (a2 - 255);
            }

            else
            {
              *(v22 + 208) = -a2;
            }

            return;
          }
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v10, v6);
        break;
    }
  }

  else
  {
    v20 = ~v11 + a2;
    bzero(a1, ((v14 + ((v13 + (v12 & 0xFFFFFFFFFFFFFFF8) + 17) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 209);
    if (v15 <= 3)
    {
      v21 = (v20 >> 8) + 1;
    }

    else
    {
      v21 = 1;
    }

    if (v15 > 3)
    {
      *v5 = v20;
    }

    else
    {
      *v5 = v20;
    }

    switch(v19)
    {
      case 1:
        *(v5 + v15) = v21;
        break;
      case 2:
        *(v5 + v15) = v21;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(v5 + v15) = v21;
        break;
      default:
        return;
    }
  }
}

void sub_1C11A0EB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for PhotosCollectionKeyAssetsViewOverlayStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhotosObservableBasicItem.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableBasicItem.init(_:)(a1);
  return v2;
}

uint64_t PhotosObservableBasicItem.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_2_15();
  sub_1C10342F0(a1, v4, v1 + *(v3 + 96));
  return v1;
}

uint64_t sub_1C11A10C0(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_2();
  sub_1C11A1208(v9);
  v10 = *(v7 + 8);
  v10(v2, v5);
  v17 = v5;
  OUTLINED_FUNCTION_20();
  v18 = *(v11 + 88);
  KeyPath = swift_getKeyPath();
  v15 = v1;
  v16 = a1;
  sub_1C11A1940(KeyPath, sub_1C11A1A14, v14, MEMORY[0x1E69E7CA8] + 8);

  return v10(a1, v5);
}

uint64_t sub_1C11A1208@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  return (*(*(*(v5 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C11A129C(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  (*(*(*(v5 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1C11A135C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C11A10C0(v3);
}

uint64_t sub_1C11A141C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_2();
  KeyPath = swift_getKeyPath();
  sub_1C11A18A4(KeyPath);

  return sub_1C11A1208(a1);
}

uint64_t sub_1C11A149C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C11A129C(v3);
}

uint64_t (*sub_1C11A1568(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_2_15();
  v5 = *(v4 + 80);
  v7 = *(v6 + 88);
  KeyPath = swift_getKeyPath();
  sub_1C11A18A4(KeyPath);

  OUTLINED_FUNCTION_10_2();
  *v3 = v1;
  swift_getKeyPath();
  type metadata accessor for PhotosObservableBasicItem(255, v5, v7, v9);
  OUTLINED_FUNCTION_0_62();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[5] = sub_1C118D93C(v3);
  return sub_1C11A169C;
}

void sub_1C11A169C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1C11A16F0(v2);

  free(v1);
}

double sub_1C11A16F0(void *a1)
{
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  swift_getKeyPath();
  type metadata accessor for PhotosObservableBasicItem(255, v1, v2, v3);
  swift_getWitnessTable();
  sub_1C1261F40();

  return result;
}

uint64_t sub_1C11A17D0()
{
  OUTLINED_FUNCTION_2_16();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_14_5();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_2();
  sub_1C11A141C(v6);
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1C11A18A4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_62();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C11A1940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_62();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosObservableBasicItem.deinit()
{
  OUTLINED_FUNCTION_2_15();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 96));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 104);
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PhotosObservableBasicItem.__deallocating_deinit()
{
  PhotosObservableBasicItem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C11A1B64(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C11A1568(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C11A1BC0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void *PhotosReliveCollectionTitleWithSubtitleView.init(title:subtitle:isLargeCell:style:trailingPaddingEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v15 = *a6;
  *(a8 + 40) = swift_getKeyPath();
  *(a8 + 48) = 0;
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  result = memcpy((a8 + 56), __src, 0xD1uLL);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = v15;
  *(a8 + 34) = a7;
  return result;
}

uint64_t PhotosReliveCollectionTitleWithSubtitleView.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t PhotosReliveCollectionTitleWithSubtitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(v14, v1, 0x109uLL);
  *a1 = sub_1C12638D0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96558, &qword_1C12BFFE0);
  sub_1C11A1F18(v14, (a1 + *(v3 + 44)));
  v4 = sub_1C11A2DD4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1C1264470();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96560, &qword_1C12BFFE8);
  v13 = a1 + *(result + 36);
  *v13 = v11;
  *(v13 + 8) = v4;
  *(v13 + 16) = v6;
  *(v13 + 24) = v8;
  *(v13 + 32) = v10;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_1C11A1F18@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0, &qword_1C12A7730);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96588, &qword_1C12C0248);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v23 = &v21 - v11;
  v12 = sub_1C1263AB0();
  memcpy(v26, a1, 0x109uLL);
  v13 = sub_1C11A2308();
  v28 = 0;
  sub_1C11A2474(a1, v24);
  memcpy(v29, v24, sizeof(v29));
  memcpy(__dst, v24, 0x78uLL);
  sub_1C102EFA0(v29, &v25, &qword_1EBE96590, &qword_1C12C0250);
  sub_1C0F9E21C(__dst, &qword_1EBE96590, &qword_1C12C0250);
  memcpy(&v27[7], v29, 0x78uLL);
  v24[0] = v12;
  *&v24[1] = v13;
  LOBYTE(v24[2]) = v28;
  memcpy(&v24[2] + 1, v27, 0x7FuLL);
  v14 = *MEMORY[0x1E697E6D0];
  v15 = sub_1C1263130();
  (*(*(v15 - 8) + 104))(v5, v14, v15);
  sub_1C1190AD4();
  result = sub_1C1265DE0();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96598, &qword_1C12C0258);
    sub_1C0FDB6D4(&qword_1EBE965A0, &qword_1EBE96598, &qword_1C12C0258, MEMORY[0x1E6981870]);
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    v17 = v23;
    sub_1C1264BC0();
    sub_1C0F9E21C(v5, &qword_1EBE92FE0, &qword_1C12A7730);
    memcpy(v26, v24, 0x90uLL);
    sub_1C0F9E21C(v26, &qword_1EBE96598, &qword_1C12C0258);
    v18 = *(v7 + 16);
    v18(v9, v17, v6);
    v18(a2, v9, v6);
    v19 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE965A8, &qword_1C12C0260) + 48)];
    *v19 = 0;
    v19[8] = 1;
    v20 = *(v7 + 8);
    v20(v17, v6);
    return (v20)(v9, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1C11A2308()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = 3.0;
  if (*(v0 + 33) == 1)
  {
    v6 = *(v0 + 40);
    if (*(v0 + 48) == 1)
    {
      v7 = *(v0 + 40);
    }

    else
    {

      sub_1C1266420();
      v8 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FA03F4(v6, 0);
      (*(v2 + 8))(v4, v1);
      v7 = v9[15];
    }

    result = 3.0;
    if (!v7)
    {
      return 7.0;
    }
  }

  return result;
}

void *sub_1C11A2474@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    v4 = result;
    *__dst = *result;
    *&__dst[8] = v3;
    sub_1C0FDB9AC();

    v5 = sub_1C12648F0();
    v50 = v6;
    v51 = v5;
    v8 = v7;
    v10 = v9;
    KeyPath = swift_getKeyPath();
    memcpy(__dst, v4, sizeof(__dst));
    v47 = sub_1C11A27EC();
    v46 = swift_getKeyPath();
    v44 = v10 & 1;
    LOBYTE(v52) = v10 & 1;
    v11 = swift_getKeyPath();
    __dst[0] = 1;
    v45 = v11;
    v12 = v4[3];
    v48 = v8;
    if (v12)
    {
      *__dst = v4[2];
      *&__dst[8] = v12;
      v52 = sub_1C12667A0();
      v53 = v13;
      v14 = sub_1C12648F0();
      v16 = v15;
      v18 = v17;
      memcpy(__dst, v4, sizeof(__dst));
      sub_1C11A2B24();
      v19 = sub_1C1264870();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = v16;
      v8 = v48;
      sub_1C0FDB8E8(v14, v26, v18 & 1);

      v27 = v19;
      v28 = v21;
      v43 = v23 & 1;
      sub_1C0FDB850(v19, v21, v23 & 1);
      v29 = v25;
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v43 = 0;
      v29 = 0;
    }

    v52 = v51;
    v53 = v8;
    LOBYTE(v54) = v44;
    *(&v54 + 1) = v65[0];
    HIDWORD(v54) = *(v65 + 3);
    v55 = v50;
    v56 = KeyPath;
    LOBYTE(v57) = 0;
    *(&v57 + 1) = *v64;
    HIDWORD(v57) = *&v64[3];
    v58 = v46;
    v59 = v47;
    v37 = v45;
    v60 = v45;
    v61 = 0;
    v62 = 1;
    v41 = v57;
    v42 = v54;
    sub_1C102EFA0(&v52, __dst, &qword_1EBE965B0, &qword_1C12C02F8);
    sub_1C0FDB860(v27, v28, v43, v29);
    sub_1C0FDB8A4(v27, v28, v43, v29);
    sub_1C0FDB8A4(v27, v28, v43, v29);
    *__dst = v51;
    *&__dst[8] = v48;
    __dst[16] = v44;
    *&__dst[17] = v65[0];
    *&__dst[20] = *(v65 + 3);
    *&__dst[24] = v50;
    *&__dst[32] = KeyPath;
    __dst[40] = 0;
    *&__dst[41] = *v64;
    v38 = 1;
    v3 = v46;
    *&__dst[44] = *&v64[3];
    v36 = v47;
    *&__dst[48] = v46;
    *&__dst[56] = v47;
    *&__dst[64] = v45;
    *&__dst[72] = 0;
    __dst[80] = 1;
    v31 = v48;
    result = sub_1C0F9E21C(__dst, &qword_1EBE965B0, &qword_1C12C02F8);
    v35 = v41;
    v32 = v42;
    v39 = v43;
    v40 = v29;
    v34 = KeyPath;
    v33 = v50;
    v30 = v51;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v27 = 0;
    v28 = 0;
    v39 = 0;
    v40 = 0;
  }

  *a2 = v30;
  a2[1] = v31;
  a2[2] = v32;
  a2[3] = v33;
  a2[4] = v34;
  a2[5] = v35;
  a2[6] = v3;
  a2[7] = v36;
  a2[8] = v37;
  a2[9] = 0;
  a2[10] = v38;
  a2[11] = v27;
  a2[12] = v28;
  a2[13] = v39;
  a2[14] = v40;
  return result;
}

uint64_t sub_1C11A27EC()
{
  v1 = sub_1C1264680();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 32);
  v10 = *(v0 + 33);
  v11 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    v12 = *(v0 + 40);
    v23 = *(v0 + 40);
    if ((v10 & 1) == 0)
    {
LABEL_3:
      if (v12 == 5)
      {
        sub_1C12644F0();
        sub_1C12645B0();
        v13 = sub_1C1264670();
        goto LABEL_15;
      }

      if (v12 == 2)
      {
        sub_1C1264570();
        v13 = sub_1C1264540();
LABEL_15:
        v19 = v13;

        return v19;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v22 = *(v0 + 32);
    v14 = v10;

    sub_1C1266420();
    v15 = v2;
    v16 = v1;
    v17 = sub_1C1264410();
    sub_1C1262620();

    v1 = v16;
    v2 = v15;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v11, 0);
    (*(v6 + 8))(v8, v5);
    v18 = v14;
    v9 = v22;
    v12 = v23;
    if ((v18 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (v12 == 1)
  {
LABEL_8:
    if (v9)
    {
      sub_1C1264660();
    }

    else
    {
      sub_1C1264530();
    }

    sub_1C12645E0();
    sub_1C1264670();

    (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v1);
    v19 = sub_1C12646C0();
    goto LABEL_13;
  }

  sub_1C1264570();
  sub_1C12645E0();
  sub_1C1264670();

  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v1);
  v19 = sub_1C12646C0();
LABEL_13:

  (*(v2 + 8))(v4, v1);
  return v19;
}

uint64_t sub_1C11A2B24()
{
  v1 = sub_1C1264680();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + 33);
  v10 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    v11 = *(v0 + 40);
    v16 = *(v0 + 40);
    if ((v9 & 1) == 0)
    {
LABEL_3:
      if (v11 == 5)
      {
        sub_1C1264660();
        sub_1C1264600();
        goto LABEL_12;
      }

      if (v11 == 2)
      {
        sub_1C12646A0();
        sub_1C1264620();
LABEL_12:
        v13 = sub_1C1264670();

        return v13;
      }

      goto LABEL_8;
    }
  }

  else
  {

    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
    v11 = v16;
    if ((v9 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (v11 != 1)
  {
    sub_1C1264510();
    goto LABEL_10;
  }

LABEL_8:
  sub_1C12646D0();
LABEL_10:
  sub_1C1264620();
  sub_1C1264670();

  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v1);
  v13 = sub_1C12646C0();

  (*(v2 + 8))(v4, v1);
  return v13;
}

double sub_1C11A2DD4()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v13, (v0 + 56), 0xD1uLL);
  memcpy(v14, (v0 + 56), 0xD1uLL);
  if (sub_1C100D688(v14) == 1)
  {
    nullsub_1();
    memcpy(v10, v13, sizeof(v10));
    nullsub_1();
    memcpy(v12, v5, sizeof(v12));
    memcpy(v11, v13, 0xD1uLL);
    nullsub_1();
    sub_1C100D690(v6, v9);
  }

  else
  {
    nullsub_1();
    memcpy(v10, v13, sizeof(v10));
    nullsub_1();
    memcpy(v11, v13, 0xD1uLL);
    nullsub_1();

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(v13, &qword_1EBE91C80, &qword_1C12A75B0);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v11, v12, 0xD0uLL);
  sub_1C100C7D0(v11);
  return *&v11[5];
}

unint64_t sub_1C11A3018()
{
  result = qword_1EBE96568;
  if (!qword_1EBE96568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96568);
  }

  return result;
}

uint64_t sub_1C11A3094(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 265))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C11A30E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 264) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 265) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 265) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosReliveCollectionTitleWithSubtitleView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C11A326C()
{
  result = qword_1EBE96570;
  if (!qword_1EBE96570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96560, &qword_1C12BFFE8);
    sub_1C0FDB6D4(&qword_1EBE96578, &qword_1EBE96580, &qword_1C12C0240, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96570);
  }

  return result;
}

double EdgeInsets.ensuringMinimum(top:leading:bottom:trailing:)(uint64_t a1, char a2, double result)
{
  if ((a2 & 1) == 0 && *&a1 > result)
  {
    return *&a1;
  }

  return result;
}

BOOL sub_1C11A33B4(double a1, double a2)
{
  sub_1C1262F40();
  sub_1C11A3D88(v2, v3);
  sub_1C12662D0();
  sub_1C1266310();
  return v6 == v5;
}

uint64_t sub_1C11A3420(uint64_t a1, char a2, double a3, double a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_1C11A33B4(a3, a4);
  if ((result & 1) == 0)
  {
    LOBYTE(v19[0]) = a2 & 1;
    sub_1C11A3530(a1, a2 & 1, a5, a6 & 1, a7, v19);
    sub_1C1262F40();
    sub_1C11A3D88(v16, v17);
    sub_1C12662D0();
    sub_1C1266310();
    result = sub_1C1266300();
    if (result >= a9)
    {
      v18 = a9;
    }

    else
    {
      v18 = result;
    }

    if (__OFSUB__(v18, 1))
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1C11A3530(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v53 = sub_1C1262E10();
  OUTLINED_FUNCTION_0();
  v47 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v6 + 48) & 1) == 0)
  {
    v15 = *(v6 + 32);
    v16 = *(v6 + 40);
    v17 = *(v6 + 24);
    v18 = *(v6 + 16);
    v19 = *(v6 + 8);
    v20 = *v6;
    v56[0] = a2 & 1;
    LOBYTE(v57) = a4 & 1;
    v21 = v18;
    if (sub_1C1263300())
    {
      a1 = v20;
LABEL_18:
      *a6 = a1;
      *(a6 + 8) = v19 & 1;
      *(a6 + 16) = v21;
      *(a6 + 24) = v17 & 1;
      *(a6 + 32) = v15;
      *(a6 + 40) = v16;
      return;
    }
  }

  v54 = a2;
  v48 = a4;
  v49 = v6;
  sub_1C1262F40();
  sub_1C11A3D88(v22, v23);
  v24 = sub_1C12662E0();
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v26 = v24;
    v57 = MEMORY[0x1E69E7CC0];
    sub_1C1102430(0, v24 & ~(v24 >> 63), 0);
    v25 = v57;
    sub_1C12662D0();
    if (v26 < 0)
    {
      __break(1u);
      goto LABEL_20;
    }

    v45 = a3;
    v46 = a6;
    v51 = (v47 + 16);
    v27 = (v47 + 8);
    do
    {
      v28 = sub_1C12663A0();
      v29 = v52;
      v30 = v53;
      (*v51)(v52);
      v28(v56, 0);
      v56[0] = v54 & 1;
      v55 = 1;
      v31 = a1;
      sub_1C1262DF0();
      v33 = v32;
      v35 = v34;
      (*v27)(v29, v30);
      v57 = v25;
      v37 = v25[2];
      v36 = v25[3];
      if (v37 >= v36 >> 1)
      {
        sub_1C1102430((v36 > 1), v37 + 1, 1);
        v25 = v57;
      }

      v25[2] = v37 + 1;
      v38 = &v25[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
      sub_1C1266320();
      --v26;
      a1 = v31;
    }

    while (v26);
    v21 = v45;
    a6 = v46;
  }

  else
  {
    v21 = a3;
  }

  v39 = v25[2];
  v40 = v54;
  if (v39)
  {
    v15 = 0.0;
    v41 = 4;
    do
    {
      if (v15 <= *&v25[v41])
      {
        v15 = *&v25[v41];
      }

      v41 += 2;
      --v39;
    }

    while (v39);
    v16 = v25[5];

    v43 = v48;
    v42 = v49;
    v44 = v48 & 1;
    *v49 = a1;
    *(v42 + 1) = v40 & 1;
    *(v42 + 2) = v21;
    *(v42 + 3) = v44;
    v42[4] = v15;
    *(v42 + 5) = v16;
    LOBYTE(v19) = v40;
    LOBYTE(v17) = v43;
    *(v42 + 48) = 0;
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1C11A3884(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12)
{
  v46 = a6;
  v19 = sub_1C1262E10();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v25 = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C11A33B4(v23, v26);
  if ((result & 1) == 0)
  {
    v47 = a12;
    v49[0] = a2 & 1;
    LOBYTE(v48) = a4 & 1;
    v45 = a7;
    sub_1C11A3530(a1, a2 & 1, a3, a4 & 1, a5, v49);
    v28 = v50;
    v46 = v51;
    v29 = v51;
    v52.origin.x = OUTLINED_FUNCTION_1_46();
    CGRectGetMinX(v52);
    v53.origin.x = OUTLINED_FUNCTION_1_46();
    CGRectGetMinY(v53);
    sub_1C1265B40();
    sub_1C1262F50();
    OUTLINED_FUNCTION_0_63();
    OUTLINED_FUNCTION_3_43(v28);
    v32 = *(v21 + 8);
    v31 = v21 + 8;
    v30 = v32;
    v32(v25, v19);
    v33 = sub_1C1262F40();
    v36 = sub_1C11A3D88(v34, v35);
    sub_1C12662D0();
    sub_1C1266310();
    v43[6] = v36;
    v44 = v33;
    result = sub_1C1266300();
    if (result >= v45)
    {
      v37 = v45;
    }

    else
    {
      v37 = result;
    }

    if (v37 < 1)
    {
      __break(1u);
      goto LABEL_17;
    }

    v43[1] = v30;
    v43[2] = v29;
    v43[3] = v28;
    v43[4] = v31;
    v43[5] = v19;
    if (v37 != 1)
    {
      v38 = 1;
      OUTLINED_FUNCTION_2_52();
      do
      {
        v54.origin.x = OUTLINED_FUNCTION_1_46();
        CGRectGetMinX(v54);
        v55.origin.x = OUTLINED_FUNCTION_1_46();
        CGRectGetMinY(v55);
        sub_1C1265B50();
        sub_1C1262F50();
        OUTLINED_FUNCTION_0_63();
        OUTLINED_FUNCTION_3_43(a5);
        v30(v25, v31);
        ++v38;
      }

      while (v37 != v38);
    }

    v39 = v44;
    OUTLINED_FUNCTION_42_0();
    sub_1C12662D0();
    OUTLINED_FUNCTION_42_0();
    sub_1C1266310();
    result = OUTLINED_FUNCTION_7_36();
    if (result > v45)
    {
      OUTLINED_FUNCTION_42_0();
      sub_1C12662D0();
      OUTLINED_FUNCTION_42_0();
      sub_1C1266310();
      result = OUTLINED_FUNCTION_7_36();
      if (result >= v45)
      {
        if (result == v45)
        {
          return result;
        }

        v40 = result;
        if (result > v45)
        {
          OUTLINED_FUNCTION_2_52();
          do
          {
            v42 = v41 + 1;
            sub_1C1262F50();
            OUTLINED_FUNCTION_0_63();
            OUTLINED_FUNCTION_3_43(a5);
            result = v39(v25, v31);
            v41 = v42;
          }

          while (v40 != v42);
          return result;
        }

LABEL_18:
        __break(1u);
        return result;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }

  return result;
}

double sub_1C11A3BF8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

double sub_1C11A3C14@<D0>(uint64_t a1@<X8>)
{
  sub_1C11A3BF8(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

void (*sub_1C11A3CB8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C12627D0();
  return sub_1C10115B8;
}

unint64_t sub_1C11A3D34()
{
  result = qword_1EBE965B8;
  if (!qword_1EBE965B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE965B8);
  }

  return result;
}

unint64_t sub_1C11A3D88(double a1, double a2)
{
  result = qword_1EDE7BFC8;
  if (!qword_1EDE7BFC8)
  {
    sub_1C1262F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BFC8);
  }

  return result;
}

uint64_t sub_1C11A3DE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C11A3E00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

uint64_t PhotosObservableListCellModel.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableListCellModel.init(_:)(a1);
  return v2;
}

uint64_t PhotosObservableListCellModel.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_5();
  sub_1C10342F0(a1, v4, v1 + *(v3 + 112));
  return v1;
}

uint64_t sub_1C11A3F18(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v5 = v4;
  v6 = *(v2 + 80);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  sub_1C10344AC(&v16[-v10]);
  v12 = *(v8 + 8);
  v12(v11, v6);
  v19 = v6;
  v20 = *(v5 + 88);
  OUTLINED_FUNCTION_20();
  v21 = *(v13 + 104);
  KeyPath = swift_getKeyPath();
  v17 = v1;
  v18 = a1;
  sub_1C11A4C00(KeyPath, sub_1C11A4CD4, v16, MEMORY[0x1E69E7CA8] + 8);

  return v12(a1, v6);
}

uint64_t sub_1C11A40C0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C11A3F18(v3);
}

uint64_t sub_1C11A4180@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1C11A4B64(KeyPath);

  return sub_1C10344AC(a1);
}

uint64_t sub_1C11A4204(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C1034540(v3);
}

uint64_t (*sub_1C11A42D0(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  KeyPath = swift_getKeyPath();
  sub_1C11A4B64(KeyPath);

  OUTLINED_FUNCTION_10_2();
  v3[4] = v1;
  swift_getKeyPath();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosObservableListCellModel(255, v3);
  OUTLINED_FUNCTION_0_64();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[6] = sub_1C10345DC(v3);
  return sub_1C11A4440;
}

void sub_1C11A4440(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  (*(*a1 + 48))(*a1, 0);
  sub_1C11A4494(v2);

  free(v1);
}

double sub_1C11A4494(void *a1)
{
  v1 = *a1;
  v7[4] = a1;
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  swift_getKeyPath();
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  type metadata accessor for PhotosObservableListCellModel(255, v7);
  swift_getWitnessTable();
  sub_1C1261F40();

  return result;
}

uint64_t sub_1C11A45B0()
{
  OUTLINED_FUNCTION_2_16();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_26(v6, v8);
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1C11A4680()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_47(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C11A4748()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_47(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C11A4810()
{
  OUTLINED_FUNCTION_3_6();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1_28();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_47(v6, v11);
  OUTLINED_FUNCTION_7_0();
  v7 = OUTLINED_FUNCTION_10_19();
  v9 = v8(v7);
  (*(v4 + 8))(v0, v2);
  return v9;
}

uint64_t sub_1C11A48F4()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_47(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C11A49BC()
{
  OUTLINED_FUNCTION_2_16();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_26(v6, v9);
  OUTLINED_FUNCTION_20();
  (*(*(v7 + 88) + 40))(v2);
  return (*(v4 + 8))(v0, v2);
}

uint64_t sub_1C11A4A9C()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_47(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_2_39();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C11A4B64(uint64_t a1)
{
  OUTLINED_FUNCTION_0_64();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C11A4C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_64();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosObservableListCellModel.deinit()
{
  OUTLINED_FUNCTION_5();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 112));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 120);
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PhotosObservableListCellModel.__deallocating_deinit()
{
  PhotosObservableListCellModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C11A4E58(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C11A42D0(v2);
  return sub_1C10115B8;
}

uint64_t PhotosObservableListCellModel<>.isContentPrivacyEnabled.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_1_28();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_47(v8, v12);
  v9 = OUTLINED_FUNCTION_10_19();
  LOBYTE(a1) = v10(v9, a1);
  (*(v6 + 8))(v1, v4);
  return a1 & 1;
}

uint64_t PhotosProcessingView.DisclosureStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C11A524C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C0FDB800(v2, &v14 - v9, &qword_1EBE904D0, &unk_1C12BB4A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1263150();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PhotosProcessingView.init(visibility:localizedTitle:wantsDynamicPopoverBackground:localizedPopoverInformation:disclosureStyle:wantsLeftAlignment:isOverContent:infoActionOverride:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  v19 = *a7;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for PhotosProcessingView(0);
  v21 = a9 + v20[13];
  sub_1C1265410();
  *v21 = v28;
  *(v21 + 1) = *(&v28 + 1);
  v22 = a9 + v20[14];
  type metadata accessor for CGRect(0);
  sub_1C1265410();
  *v22 = v28;
  *(v22 + 1) = v29;
  *(v22 + 4) = v30;
  sub_1C11A6A78();
  result = sub_1C12628D0();
  *(a9 + v20[5]) = a1;
  v24 = (a9 + v20[6]);
  *v24 = a2;
  v24[1] = a3;
  v25 = (a9 + v20[7]);
  *v25 = a5;
  v25[1] = a6;
  *(a9 + v20[8]) = a4 & 1;
  *(a9 + v20[9]) = v19;
  *(a9 + v20[10]) = a8;
  *(a9 + v20[11]) = a10;
  v26 = (a9 + v20[12]);
  *v26 = a11;
  v26[1] = a12;
  return result;
}

uint64_t type metadata accessor for PhotosProcessingView(uint64_t a1)
{
  result = qword_1EDE7A980;
  if (!qword_1EDE7A980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C11A5660@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0, &qword_1C12A7730);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96600, &unk_1C12C0748);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96630, &qword_1C12C08A8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  type metadata accessor for PhotosProcessingView(0);
  if (sub_1C12629A0())
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v10);
  }

  else
  {
    *v9 = sub_1C12638E0();
    *(v9 + 1) = 0x4010000000000000;
    v9[16] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96638, &qword_1C12C08B0);
    sub_1C11A59C0(a1, &v9[*(v15 + 44)]);
    sub_1C1264510();
    sub_1C1264620();
    v16 = sub_1C1264670();

    KeyPath = swift_getKeyPath();
    v18 = &v9[*(v7 + 36)];
    *v18 = KeyPath;
    v18[1] = v16;
    v19 = *MEMORY[0x1E697E728];
    v20 = sub_1C1263130();
    (*(*(v20 - 8) + 104))(v6, v19, v20);
    sub_1C1190AD4();
    result = sub_1C1265DE0();
    if (result)
    {
      sub_1C11A6FC8();
      sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
      sub_1C1264BC0();
      sub_1C0FD1A5C(v6, &qword_1EBE92FE0, &qword_1C12A7730);
      sub_1C0FD1A5C(v9, &qword_1EBE96600, &unk_1C12C0748);
      (*(v11 + 32))(a2, v13, v10);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

double sub_1C11A59C0@<D0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96640, &qword_1C12C08E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-v6];
  v8 = type metadata accessor for PhotosProcessingView(0);
  v9 = &a1[*(v8 + 24)];
  v10 = *(v9 + 1);
  v38 = *v9;
  v39 = v10;
  sub_1C0FDB9AC();

  v11 = sub_1C12648F0();
  v13 = v12;
  v15 = v14;
  v36 = v8;
  if (a1[*(v8 + 44)] == 1)
  {
    v16 = sub_1C1265190();
  }

  else
  {
    v17 = [objc_opt_self() secondaryLabelColor];
    v16 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  }

  v38 = v16;
  v18 = sub_1C1264850();
  v20 = v19;
  v33 = v21;
  v34 = v22;
  sub_1C0FDB8E8(v11, v13, v15 & 1);

  *v7 = sub_1C12659A0();
  v7[1] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96648, &qword_1C12C08F0);
  sub_1C11A5C94(a1, (v7 + *(v24 + 44)));
  v25 = a1[*(v36 + 40)];
  v26 = v37;
  sub_1C0FDB800(v7, v37, &qword_1EBE96640, &qword_1C12C08E8);
  v27 = v35;
  *v35 = v18;
  v27[1] = v20;
  v28 = v33 & 1;
  *(v27 + 16) = v33 & 1;
  v27[3] = v34;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96650, &qword_1C12C08F8);
  sub_1C0FDB800(v26, v27 + *(v29 + 48), &qword_1EBE96640, &qword_1C12C08E8);
  v30 = v27 + *(v29 + 64);
  *v30 = 0;
  v30[8] = v25;
  v30[9] = v25 ^ 1;
  sub_1C0FDB850(v18, v20, v28);

  sub_1C0FD1A5C(v7, &qword_1EBE96640, &qword_1C12C08E8);
  sub_1C0FD1A5C(v26, &qword_1EBE96640, &qword_1C12C08E8);
  sub_1C0FDB8E8(v18, v20, v28);

  return result;
}

void sub_1C11A5C94(char *a1@<X0>, void *a2@<X8>)
{
  v74 = a2;
  v59 = sub_1C1263070();
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhotosProcessingView(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96658, &qword_1C12C0900);
  MEMORY[0x1EEE9AC00](v60);
  v75 = &v58 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96660, &qword_1C12C0908);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v58 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96668, &qword_1C12C0910);
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v58 - v14;
  if (*&a1[v4[12]])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE965C8, &unk_1C12C06F0);
    sub_1C12628E0();
    v15 = v80;
    v16 = &a1[v4[14]];
    v18 = *(v16 + 1);
    v19 = *(v16 + 2);
    v20 = *(v16 + 3);
    v21 = *(v16 + 4);
    v80 = *v16;
    v17 = v80;
    v81 = v18;
    v82 = v19;
    v83 = v20;
    v84 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE96690, &qword_1C12C64C0);
    sub_1C1265420();
    CGRectGetWidth(v77);
    v80 = v17;
    v81 = v18;
    v82 = v19;
    v83 = v20;
    v84 = v21;
    sub_1C1265420();
    CGRectGetHeight(v77);
    sub_1C12659A0();
    sub_1C1262C80();
    v66 = v80;
    v65 = v81;
    v64 = v82;
    v63 = v83;
    v62 = v84;
    v61 = v85;
    v70 = v15;
    v22 = v15;
  }

  else
  {
    v70 = 0;
    v66 = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    v62 = 0;
    v61 = 0;
  }

  v23 = v76;
  sub_1C11A7190(a1, v76);
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = swift_allocObject();
  v26 = sub_1C11A71F4(v23, v25 + v24);
  MEMORY[0x1EEE9AC00](v26);
  *(&v58 - 2) = a1;
  v27 = v75;
  sub_1C1265480();
  sub_1C11A7190(a1, v23);
  v28 = swift_allocObject();
  sub_1C11A71F4(v23, v28 + v24);
  v29 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96680, &unk_1C12C0928) + 36));
  *v29 = sub_1C11A673C;
  v29[1] = 0;
  v29[2] = sub_1C11A72C0;
  v29[3] = v28;
  v30 = v27 + *(v60 + 36);
  *v30 = 0xC020000000000000;
  *(v30 + 8) = 0;
  v31 = a1[v4[11]] == 1;
  v71 = v6;
  if (v31)
  {
    v32 = sub_1C1265190();
  }

  else
  {
    if (a1[v4[9]] != 1)
    {
      sub_1C1263060();
      goto LABEL_11;
    }

    v33 = [objc_opt_self() secondaryLabelColor];
    v32 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  }

  *&v77.origin.x = v32;
LABEL_11:
  v34 = sub_1C1262C90();
  v35 = v68;
  sub_1C0FDB71C(v75, v68, &qword_1EBE96658, &qword_1C12C0900);
  *(v35 + *(v67 + 36)) = v34;
  v36 = &a1[v4[13]];
  v37 = *v36;
  v38 = *(v36 + 1);
  v78 = v37;
  v79 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265440();
  x = v77.origin.x;
  y = v77.origin.y;
  width_low = LOBYTE(v77.size.width);
  v42 = a1[v4[8]];
  v43 = a1;
  v44 = v76;
  sub_1C11A7190(v43, v76);
  v45 = swift_allocObject();
  sub_1C11A71F4(v44, v45 + v24);
  sub_1C0FDB71C(v35, v12, &qword_1EBE96660, &qword_1C12C0908);
  v46 = v69;
  v47 = &v12[*(v69 + 52)];
  *v47 = x;
  *(v47 + 1) = y;
  v47[16] = width_low;
  v12[v46[14]] = v42;
  v48 = &v12[v46[15]];
  *v48 = sub_1C11A74F8;
  v48[1] = v45;
  v49 = v46[16];
  *&v12[v49] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  swift_storeEnumTagMultiPayload();
  v50 = v72;
  sub_1C0FDB71C(v12, v72, &qword_1EBE96668, &qword_1C12C0910);
  v51 = v73;
  sub_1C0FDB800(v50, v73, &qword_1EBE96668, &qword_1C12C0910);
  v52 = v74;
  v53 = v70;
  v54 = v66;
  *v74 = v70;
  v52[1] = v54;
  v55 = v64;
  v52[2] = v65;
  v52[3] = v55;
  v56 = v62;
  v52[4] = v63;
  v52[5] = v56;
  v52[6] = v61;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96688, &unk_1C12C0970);
  sub_1C0FDB800(v51, v52 + *(v57 + 48), &qword_1EBE96668, &qword_1C12C0910);
  sub_1C0FD1A5C(v50, &qword_1EBE96668, &qword_1C12C0910);
  sub_1C0FD1A5C(v51, &qword_1EBE96668, &qword_1C12C0910);
}

double sub_1C11A6488(uint64_t a1)
{
  v2 = type metadata accessor for PhotosProcessingView(0);
  v3 = a1 + *(v2 + 48);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE965C8, &unk_1C12C06F0);
    sub_1C12628E0();
    v4(v7, *(a1 + *(v2 + 28)), *(a1 + *(v2 + 28) + 8));

    sub_1C0FCF004(v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
    sub_1C1265430();
  }

  return result;
}

uint64_t sub_1C11A6584@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C1263150();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  if (*(a1 + *(type metadata accessor for PhotosProcessingView(0) + 36)) == 1)
  {
    sub_1C11A524C(v10);
    (*(v5 + 104))(v7, *MEMORY[0x1E697E7D8], v4);
    sub_1C1263140();
    v11 = *(v5 + 8);
    v11(v7, v4);
    v11(v10, v4);
  }

  result = sub_1C12652F0();
  *a2 = result;
  return result;
}

uint64_t sub_1C11A673C@<X0>(double *a1@<X8>)
{
  v2 = sub_1C1263CE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1263F10();
  sub_1C1262D50();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

double sub_1C11A6848(_OWORD *a1, uint64_t a2)
{
  type metadata accessor for PhotosProcessingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE96690, &qword_1C12C64C0);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C11A68C0@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PhotosProcessingView(0);
  sub_1C0FDB9AC();

  result = sub_1C12648F0();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1C11A6948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11A713C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C11A69AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C11A713C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C11A6A10(uint64_t a1)
{
  sub_1C11A713C();
  sub_1C1263BD0();
  __break(1u);
}

id sub_1C11A6A3C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *a1 = result;
  return result;
}

unint64_t sub_1C11A6A78()
{
  result = qword_1EDE7B5F8;
  if (!qword_1EDE7B5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE7B5F8);
  }

  return result;
}

unint64_t sub_1C11A6AC0()
{
  result = qword_1EBE965C0;
  if (!qword_1EBE965C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE965C0);
  }

  return result;
}

void sub_1C11A6B58(uint64_t a1)
{
  sub_1C11A6CE4(319, &qword_1EDE77570, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1C1007F24(319);
    if (v2 <= 0x3F)
    {
      sub_1C106B1CC();
      if (v3 <= 0x3F)
      {
        sub_1C11A6CE4(319, &qword_1EBE965D0, type metadata accessor for CGRect, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1C11A6CE4(319, &qword_1EBE965D8, sub_1C11A6A78, MEMORY[0x1E697DA80]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C11A6CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for PhotosProcessingView.DisclosureStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C11A6E24()
{
  result = qword_1EBE965E0;
  if (!qword_1EBE965E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE965E8, &qword_1C12C0738);
    sub_1C11A6EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE965E0);
  }

  return result;
}

unint64_t sub_1C11A6EA8()
{
  result = qword_1EBE965F0;
  if (!qword_1EBE965F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE965F8, &qword_1C12C0740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96600, &unk_1C12C0748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
    sub_1C11A6FC8();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE965F0);
  }

  return result;
}

unint64_t sub_1C11A6FC8()
{
  result = qword_1EBE96608;
  if (!qword_1EBE96608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96600, &unk_1C12C0748);
    sub_1C0FDB6D4(&qword_1EBE96610, &qword_1EBE96618, &unk_1C12C0758, MEMORY[0x1E69817F8]);
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96608);
  }

  return result;
}

unint64_t sub_1C11A70C0()
{
  result = qword_1EBE96620;
  if (!qword_1EBE96620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96620);
  }

  return result;
}

unint64_t sub_1C11A7114(uint64_t a1)
{
  result = sub_1C11A713C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C11A713C()
{
  result = qword_1EBE96628;
  if (!qword_1EBE96628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96628);
  }

  return result;
}

uint64_t sub_1C11A7190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosProcessingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11A71F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosProcessingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1C11A7258()
{
  v1 = *(type metadata accessor for PhotosProcessingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C11A6488(v2);
}

double sub_1C11A72C0(_OWORD *a1)
{
  v3 = *(type metadata accessor for PhotosProcessingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C11A6848(a1, v4);
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for PhotosProcessingView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_3();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  if (*(v3 + *(v1 + 48)))
  {
  }

  v5 = v3 + *(v1 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96670, &qword_1C12C0918);
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96678, &qword_1C12C0920);

  return swift_deallocObject();
}

uint64_t sub_1C11A74F8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhotosProcessingView(0);

  return sub_1C11A68C0(a1);
}

uint64_t BasicViewRepresentable.init(viewCreator:viewUpdater:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t BasicViewRepresentable.updateView(_:context:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1C11A75E4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11A763C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return PlatformViewRepresentable.makeUIView(context:)(a1, a2, WitnessTable);
}

uint64_t sub_1C11A769C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return PlatformViewRepresentable.updateUIView(_:context:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1C11A7708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C11A7784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1C11A7800(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1C1263BD0();
  __break(1u);
}

uint64_t sub_1C11A7848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_xRlzCRi_zRi0_zlyxIsegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t EnvironmentValues.oneUpVideoScrubberPaletteShadowSpec.getter()
{
  sub_1C11A78FC();

  return sub_1C12637F0();
}

unint64_t sub_1C11A78FC()
{
  result = qword_1EDE76F68;
  if (!qword_1EDE76F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F68);
  }

  return result;
}

void (*EnvironmentValues.oneUpVideoScrubberPaletteShadowSpec.modify(void *a1))(__int128 **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = sub_1C11A78FC();
  sub_1C12637F0();
  return sub_1C11A7A1C;
}

uint64_t EnvironmentValues.oneUpVideoScrubberTrackShadowSpec.getter()
{
  sub_1C11A7A70();

  return sub_1C12637F0();
}

unint64_t sub_1C11A7A70()
{
  result = qword_1EDE76F78;
  if (!qword_1EDE76F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F78);
  }

  return result;
}

double sub_1C11A7ADC@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1C11A7B34(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *, __n128))
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;

  return (a5)(v8);
}

void (*EnvironmentValues.oneUpVideoScrubberTrackShadowSpec.modify(void *a1))(__int128 **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  v3[9] = sub_1C11A7A70();
  sub_1C12637F0();
  return sub_1C11A7C64;
}

void sub_1C11A7C70(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v2[2] = **a1;
  v2[3] = v3;
  if (a2)
  {

    OUTLINED_FUNCTION_0_66();
  }

  else
  {
    OUTLINED_FUNCTION_0_66();
  }

  free(v2);
}

unint64_t sub_1C11A7D0C()
{
  result = qword_1EBE96718;
  if (!qword_1EBE96718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96720, &unk_1C12C0C00);
    sub_1C11A7D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96718);
  }

  return result;
}

unint64_t sub_1C11A7D90()
{
  result = qword_1EBE96728;
  if (!qword_1EBE96728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96728);
  }

  return result;
}

double sub_1C11A7E18@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = a1 & 1;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v11 = a4 & 1;
  *(v10 + 40) = v11;
  KeyPath = swift_getKeyPath();
  *a5 = v9;
  *(a5 + 8) = nullsub_1;
  *(a5 + 16) = 0;
  *(a5 + 24) = sub_1C11A8108;
  *(a5 + 32) = v10;
  *(a5 + 40) = nullsub_1;
  *(a5 + 48) = 0;
  *(a5 + 56) = KeyPath;
  *(a5 + 64) = 0;
  *(a5 + 65) = v9;

  return sub_1C1058CE4(a2, a3, v11);
}

uint64_t sub_1C11A7F00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = sub_1C12637E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    swift_unknownObjectRetain();
    if (!a1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1C1266420();
  v12 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  v13 = sub_1C0FF9034(a1, a2, 0);
  (*(v9 + 8))(v11, v8, v13);
  LOBYTE(a1) = v19[0];
  a2 = v19[1];
  if (v19[0])
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    (*(a2 + 248))(ObjectType, a2);
    v16 = v15;
    swift_unknownObjectRelease();
    v17 = swift_getObjectType();
    LOBYTE(v19[0]) = 2;
    LOBYTE(a1) = (*(v16 + 8))(v19, v17, v16);
    swift_unknownObjectRelease();
  }

LABEL_6:
  result = swift_getKeyPath();
  *a4 = a1 & 1;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  return result;
}

unint64_t sub_1C11A8120()
{
  result = qword_1EBE96730;
  if (!qword_1EBE96730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96738, &qword_1C12C0D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96730);
  }

  return result;
}

uint64_t sub_1C11A8184@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, void *a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __src[0] = a7;
  __src[1] = a9;
  __src[2] = a10;
  __src[3] = a11;
  v18 = type metadata accessor for PhotosDraggableItemView(0, __src);
  v19 = a8 + v18[18];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a8 + v18[19];
  *v20 = swift_getKeyPath();
  *(v20 + 40) = 0;
  v21 = v18[20];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a8 + v21), __src, 0xD1uLL);
  v22 = v18[21];
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v23 = OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_17_26(v23, v24);
  v25 = OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_17_26(v25, v26);
  v27 = OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_17_26(v27, v28);
  v29 = OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_17_26(v29, v30);
  v31 = a8 + v18[26];
  sub_1C11A83D8(0, a7, a10, v37);
  v32 = v37[1];
  *v31 = v37[0];
  *(v31 + 16) = v32;
  *(v31 + 32) = v38;
  sub_1C11A8444(sub_1C11A84C8, 0);
  v33 = *(a7 - 8);
  (*(v33 + 16))(a8, a1, a7);
  *(a8 + v18[13]) = a2;
  *(a8 + v18[14]) = a3;
  *(a8 + v18[15]) = a4;
  v34 = sub_1C0FDB0A8(a5, a8 + v18[16]);
  a6(v34);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  return (*(v33 + 8))(a1, a7);
}

double sub_1C11A83D8@<D0>(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  type metadata accessor for PhotosDraggingData(255, a5, a6, a4);
  sub_1C1266790();
  sub_1C1265410();
  result = *&v9;
  *a7 = v9;
  *(a7 + 16) = v10;
  *(a7 + 32) = v11;
  return result;
}

uint64_t sub_1C11A8444(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for PhotosDraggableItemViewModel(0);

  return sub_1C12628D0();
}

void *sub_1C11A84C8()
{
  type metadata accessor for PhotosDraggableItemViewModel(0);
  v0 = swift_allocObject();
  return sub_1C11ADAE8(v0);
}

uint64_t sub_1C11A8500@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v337 = a1;
  v325 = a2;
  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v366[0] = *(a1 + 2);
  v5 = v366[0];
  v346 = v366[0];
  v366[1] = v2;
  v6 = v2;
  v366[2] = v3;
  v7 = v3;
  v347 = v3;
  v366[3] = v4;
  v8 = v4;
  type metadata accessor for PhotosDraggableItemView.DropDelegateProxy(0, v366);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  v322 = v10;
  v366[0] = v5;
  v366[1] = v6;
  v366[2] = v7;
  v366[3] = v8;
  v349 = v8;
  v334 = type metadata accessor for PhotosDraggableItemView.OnDropModifier(0, v366);
  OUTLINED_FUNCTION_0();
  v324 = v11;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34();
  v323 = v13;
  OUTLINED_FUNCTION_49();
  v335 = sub_1C12630A0();
  OUTLINED_FUNCTION_0();
  v321 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v320 = v16;
  OUTLINED_FUNCTION_49();
  sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v280 = v18;
  v281 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v279 = v19;
  OUTLINED_FUNCTION_49();
  v341 = sub_1C1263320();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v340 = v21;
  OUTLINED_FUNCTION_49();
  v339 = sub_1C1263420();
  OUTLINED_FUNCTION_0();
  v338 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v336 = v24;
  OUTLINED_FUNCTION_1();
  v286 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v285 = v27;
  OUTLINED_FUNCTION_49();
  v348 = v6;
  v28 = sub_1C1263900();
  OUTLINED_FUNCTION_0();
  v293 = v29;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_34();
  v290 = v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96748, &unk_1C12C0F30);
  v32 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v297 = v33;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_34();
  v295 = v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BF0, &qword_1C12A6E10);
  v36 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v311 = v37;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_34();
  v333 = v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  v40 = sub_1C1263190();
  OUTLINED_FUNCTION_11_30();
  v294 = v28;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_39();
  v44 = sub_1C0FDB6D4(v42, &qword_1EBE96748, &unk_1C12C0F30, v43);
  v287 = WitnessTable;
  v366[38] = WitnessTable;
  v366[39] = v44;
  v298 = v32;
  v45 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  v48 = sub_1C0FDB6D4(v46, &qword_1EBE91BF0, &qword_1C12A6E10, v47);
  v288 = v45;
  v366[36] = v45;
  v366[37] = v48;
  v49 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  v52 = sub_1C0FDB6D4(v50, qword_1EBE92178, &unk_1C12AD460, v51);
  v366[34] = v349;
  v366[35] = v52;
  v366[32] = swift_getWitnessTable();
  v366[33] = v44;
  v53 = swift_getWitnessTable();
  v54 = sub_1C11ADA7C();
  v366[30] = v53;
  v366[31] = v54;
  v55 = v337;
  v366[28] = swift_getWitnessTable();
  v366[29] = v48;
  v56 = swift_getWitnessTable();
  v366[0] = v36;
  v366[1] = v40;
  v366[2] = v49;
  v366[3] = v56;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v299 = v58;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_34();
  v326 = v60;
  v313 = v36;
  v366[0] = v36;
  v301 = v40;
  v366[1] = v40;
  v291 = v49;
  v366[2] = v49;
  v289 = v56;
  v366[3] = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_20();
  v64 = sub_1C11AE598(v62, v63, MEMORY[0x1E697C100]);
  v330 = OpaqueTypeConformance2;
  v331 = OpaqueTypeMetadata2;
  v366[0] = OpaqueTypeMetadata2;
  v366[1] = v335;
  v366[2] = OpaqueTypeConformance2;
  v327 = v64;
  v366[3] = v64;
  OUTLINED_FUNCTION_10_31();
  v65 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v303 = v66;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_34();
  v329 = v68;
  v366[0] = v346;
  v366[1] = v348;
  v69 = v345;
  v366[2] = v347;
  v366[3] = v349;
  type metadata accessor for PhotosDraggableItemView.RectTuple(255, v366);
  v70 = sub_1C1266790();
  OUTLINED_FUNCTION_16_23();
  v366[27] = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v296 = v70;
  v292 = v71;
  v305 = v65;
  v300 = sub_1C1263FF0();
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v302 = v72;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_34();
  v328 = v74;
  v304 = v75;
  v76 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v306 = v77;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_34();
  v332 = v79;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93AE8, &qword_1C12B77B0);
  v308 = v76;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v309 = v80;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_34();
  v307 = v82;
  v310 = v83;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v315 = v84;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_34();
  v312 = v86;
  OUTLINED_FUNCTION_49();
  v317 = v87;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v318 = v89;
  v319 = v88;
  MEMORY[0x1EEE9AC00](v88);
  v314 = &v270[-((v90 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v91);
  v316 = &v270[-v92];
  OUTLINED_FUNCTION_1();
  v277 = v93;
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_8();
  v276 = v95;
  OUTLINED_FUNCTION_49();
  v96 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v278 = v97;
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_8();
  v282 = v99;
  OUTLINED_FUNCTION_1();
  v101 = v100;
  MEMORY[0x1EEE9AC00](v102);
  v284 = &v270[-((v103 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v104);
  v283 = &v270[-v105];
  MEMORY[0x1EEE9AC00](v106);
  v342 = &v270[-v107];
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v270[-v109];
  v343 = v111;
  MEMORY[0x1EEE9AC00](v112);
  v114 = &v270[-v113];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v270[-v116];
  v118 = swift_getWitnessTable();
  View.photosTrace.getter();
  v119 = sub_1C1262680();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v117, 1, v119);
  v344 = v101;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C0FD1A5C(v117, &qword_1EBE919B0, &qword_1C12A8810);
    v121 = v336;
    v122 = v290;
  }

  else
  {
    v274 = v119;
    v275 = v96;
    v123 = *(v101 + 16);
    v123(v114, v69, v55);
    v123(v110, v69, v55);
    sub_1C1262640();
    v124 = sub_1C1262670();
    v125 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v126 = swift_slowAlloc();
      v272 = v124;
      v271 = v125;
      v127 = v126;
      v273 = swift_slowAlloc();
      v366[0] = v273;
      *v127 = 136446466;
      v128 = View.photosChangedProperties.getter(v55, v118);
      v130 = v129;
      v131 = *(v101 + 8);
      v132 = OUTLINED_FUNCTION_34_0();
      v131(v132);
      v133 = sub_1C0FA0E80(v128, v130, v366);

      *(v127 + 4) = v133;
      *(v127 + 12) = 2080;
      (*(v277 + 16))(v276, v110, v346);
      v134 = sub_1C1265ED0();
      v136 = v135;
      (v131)(v110, v55);
      v69 = v345;
      v137 = sub_1C0FA0E80(v134, v136, v366);

      *(v127 + 14) = v137;
      v138 = sub_1C1262630();
      v139 = v272;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v272, v271, v138, "PhotosDraggableItemView", "PhotosDraggableItemView %{public}s itemID:%s", v127, 0x16u);
      v140 = v273;
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v140, -1, -1);
      MEMORY[0x1C68F1630](v127, -1, -1);

      v141 = OUTLINED_FUNCTION_21_11();
      v142(v141, v275);
    }

    else
    {

      (*(v278 + 8))(v282, v275);
      v143 = *(v101 + 8);
      (v143)(v110, v55);
      v144 = OUTLINED_FUNCTION_34_0();
      v143(v144);
    }

    v122 = v290;
    (*(*(v274 - 8) + 8))(v117);
    v121 = v336;
  }

  (*(v286 + 16))(v285, v69 + v55[17], v348);
  sub_1C1263910();
  sub_1C12633E0();
  v145 = v55[20];
  memcpy(v365, (v69 + v145), 0xD1uLL);
  memcpy(v366, (v69 + v145), 0xD1uLL);
  if (sub_1C100D688(v366) == 1)
  {
    nullsub_1();
    OUTLINED_FUNCTION_26_13(&v361);
    nullsub_1();
    memcpy(v364, v146, sizeof(v364));
    OUTLINED_FUNCTION_26_13(v363);
    nullsub_1();
    sub_1C100D690(v147, v350);
  }

  else
  {
    nullsub_1();
    OUTLINED_FUNCTION_26_13(&v361);
    nullsub_1();
    OUTLINED_FUNCTION_26_13(v363);
    nullsub_1();

    sub_1C1266420();
    v148 = sub_1C1264410();
    sub_1C1262620();

    v149 = v279;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v365, &qword_1EBE91C80, &qword_1C12A75B0);
    (*(v280 + 8))(v149, v281);
  }

  memcpy(v363, v364, 0xD0uLL);
  sub_1C100C7D0(v363);
  v150 = v363[0];
  v151 = *(v341 + 20);
  v152 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v154 = v340;
  (*(v153 + 104))(v340 + v151, v152);
  *v154 = v150;
  v154[1] = v150;
  sub_1C11AE598(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v155 = v294;
  v156 = v295;
  sub_1C1264AD0();
  sub_1C100867C(v154);
  (*(v338 + 8))(v121, v339);
  (*(v293 + 8))(v122, v155);
  swift_getKeyPath();
  v157 = (v69 + v55[23]);
  v158 = *v157;
  v159 = *(v157 + 1);
  LOBYTE(v361) = v158;
  *(&v361 + 1) = v159;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  LOBYTE(v361) = v350[0];
  v160 = v298;
  sub_1C1264A30();

  (v297[1])(v156, v160);
  LODWORD(v298) = *(v69 + v55[13]);
  v361 = 0u;
  v362 = 0u;
  v161 = v344;
  v162 = v344 + 16;
  v163 = *(v344 + 16);
  v164 = v342;
  v163(v342, v69, v55);
  v165 = v163;
  v166 = v162;
  v167 = v55;
  v168 = v69;
  v169 = (*(v161 + 80) + 48) & ~*(v161 + 80);
  v340 = *(v161 + 80);
  v170 = swift_allocObject();
  v297 = v170;
  v171 = v348;
  v170[2] = v346;
  v170[3] = v171;
  v172 = v349;
  v170[4] = v347;
  v170[5] = v172;
  v341 = *(v161 + 32);
  (v341)(v170 + v169, v164, v167);
  v344 = v161 + 32;
  v173 = v283;
  v165(v283, v168, v167);
  v336 = v166;
  v339 = v165;
  v174 = v343;
  v338 = v169;
  v175 = swift_allocObject();
  v176 = v346;
  v177 = v348;
  v175[2] = v346;
  v175[3] = v177;
  v178 = v349;
  v175[4] = v347;
  v175[5] = v178;
  v179 = v337;
  v180 = v341;
  (v341)(v175 + v169, v173, v337);
  v181 = v284;
  v165(v284, v345, v179);
  v182 = v338;
  v183 = OUTLINED_FUNCTION_25_9(&unk_1F407C1C8, v338 + v174);
  v184 = v348;
  v183[2] = v176;
  v183[3] = v184;
  v185 = v349;
  v183[4] = v347;
  v183[5] = v185;
  v186 = v183 + v182;
  v187 = v337;
  v188 = v180(v186, v181, v337);
  MEMORY[0x1EEE9AC00](v188);
  v189 = v345;
  swift_checkMetadataState();
  v190 = v313;
  sub_1C1264EE0();

  sub_1C0FD1A5C(&v361, &qword_1EBE90620, &qword_1C12A8B00);
  v191 = OUTLINED_FUNCTION_21_11();
  v192(v191, v190);
  v193 = v342;
  v194 = v187;
  v339(v342, v189, v187);
  v195 = v338;
  v196 = OUTLINED_FUNCTION_25_9(&unk_1F407C1F0, v338 + v343);
  v197 = v346;
  v198 = v348;
  v196[2] = v346;
  v196[3] = v198;
  v199 = v349;
  v196[4] = v347;
  v196[5] = v199;
  v200 = v196 + v195;
  v201 = v194;
  (v341)(v200, v193, v194);
  v202 = v320;
  sub_1C1263090();
  sub_1C1262A90();
  v203 = v331;
  v204 = v335;
  sub_1C1264D30();
  (*(v321 + 8))(v202, v204);
  v205 = OUTLINED_FUNCTION_21_11();
  v206(v205, v203);
  v207 = v342;
  v208 = v345;
  v339(v342, v345, v201);
  v209 = v338;
  v210 = swift_allocObject();
  v210[2] = v197;
  v210[3] = v198;
  v211 = v197;
  v212 = v347;
  v213 = v349;
  v210[4] = v347;
  v210[5] = v213;
  (v341)(v210 + v209, v207, v201);
  v339(v207, v208, v201);
  v214 = v338;
  v215 = swift_allocObject();
  v216 = v348;
  v215[2] = v211;
  v215[3] = v216;
  v215[4] = v212;
  v215[5] = v213;
  v217 = v342;
  v218 = v341;
  (v341)(v215 + v214, v342, v201);
  *&v361 = v331;
  *(&v361 + 1) = v335;
  *&v362 = v330;
  *(&v362 + 1) = v327;
  v333 = swift_getOpaqueTypeConformance2();
  v219 = v305;
  sub_1C1264C40();

  v220 = OUTLINED_FUNCTION_21_11();
  v221(v220, v219);
  v222 = v217;
  v223 = v217;
  v224 = v337;
  v225 = v339;
  v339(v223, v345, v337);
  v226 = v214;
  v227 = OUTLINED_FUNCTION_25_9(&unk_1F407C268, v214 + v343);
  v228 = v348;
  *(v227 + 2) = v346;
  *(v227 + 3) = v228;
  v229 = v347;
  v230 = v349;
  *(v227 + 4) = v347;
  *(v227 + 5) = v230;
  v218(&v227[v226], v222, v224);
  v335 = MEMORY[0x1E69802E0];
  v231 = swift_getWitnessTable();
  v359 = v333;
  v360 = v231;
  v333 = MEMORY[0x1E697E858];
  v232 = v304;
  v233 = swift_getWitnessTable();
  sub_1C1264A60();

  v234 = OUTLINED_FUNCTION_21_11();
  v235(v234, v232);
  v236 = v222;
  v237 = v222;
  v238 = v224;
  v225(v237, v345, v224);
  v239 = v338;
  v240 = OUTLINED_FUNCTION_25_9(&unk_1F407C290, v338 + v343);
  v241 = v348;
  v240[2] = v346;
  v240[3] = v241;
  v242 = v349;
  v240[4] = v229;
  v240[5] = v242;
  (v341)(v240 + v239, v236, v224);
  type metadata accessor for CGSize(0);
  v357 = v233;
  v358 = MEMORY[0x1E69805D0];
  v243 = v308;
  v244 = swift_getWitnessTable();
  sub_1C11AE598(&qword_1EDE7B618, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
  v245 = v307;
  sub_1C1264C40();

  v246 = OUTLINED_FUNCTION_21_11();
  v247(v246, v243);
  v248 = v345;
  v249 = sub_1C0FDB6D4(&qword_1EDE7BA88, &qword_1EBE93AE8, &qword_1C12B77B0, v335);
  v355 = v244;
  v356 = v249;
  v250 = v310;
  v251 = swift_getWitnessTable();
  v252 = v312;
  OUTLINED_FUNCTION_34_0();
  sub_1C1264F50();
  (*(v309 + 8))(v245, v250);
  v253 = v342;
  v339(v342, v248, v238);
  v254 = v322;
  v255 = v346;
  v256 = v348;
  v257 = v347;
  v258 = v349;
  sub_1C11ABC5C(v253, v346, v348, v347, v349, v322);
  v259 = v323;
  sub_1C11ABE5C(v254, v255, v256, v257, v258, v323);
  v353 = v251;
  v354 = MEMORY[0x1E697E5C0];
  v260 = v317;
  v261 = swift_getWitnessTable();
  v262 = v314;
  MEMORY[0x1C68EE920](v259, v260, v334, v261);
  v263 = OUTLINED_FUNCTION_34_0();
  v264(v263);
  (*(v315 + 8))(v252, v260);
  OUTLINED_FUNCTION_3_44();
  v265 = swift_getWitnessTable();
  v351 = v261;
  v352 = v265;
  v266 = v319;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v267 = *(v318 + 8);
  (v267)(v262, v266);
  OUTLINED_FUNCTION_34_0();
  sub_1C0FDBA4C();
  v268 = OUTLINED_FUNCTION_34_0();
  return v267(v268);
}

uint64_t sub_1C11AA178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v6 = (a1 + *(type metadata accessor for PhotosDraggableItemView(0, v10) + 64));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  return (*(v8 + 32))(a1, v7, v8);
}

void sub_1C11AA1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v8 = type metadata accessor for PhotosDraggableItemView(0, &v21);
  v9 = (a1 + *(v8 + 100));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v21) = v10;
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  v12 = (a1 + *(v8 + 64));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_1C1102024(a2, a2);
  v15 = *(a2 - 8);
  swift_allocObject();
  v16 = sub_1C12660D0();
  (*(v15 + 16))(v17, a1, a2);
  v18 = sub_1C10FD3D4(v16, a2);
  if (sub_1C1266170())
  {
    v19 = sub_1C11AE1D4(v18, a2, a4);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CD0];
  }

  (*(v14 + 48))(v19, v13, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96758, &unk_1C12C0F78);
  sub_1C12628E0();
  v20 = sub_1C11ACBA0();

  [v20 draggedObjectLifted];
}

void sub_1C11AA404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v8 = type metadata accessor for PhotosDraggableItemView(0, &v22);
  v9 = (a1 + *(v8 + 64));
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  sub_1C1102024(a2, a2);
  v12 = *(a2 - 8);
  swift_allocObject();
  v13 = sub_1C12660D0();
  (*(v12 + 16))(v14, a1, a2);
  v15 = sub_1C10FD3D4(v13, a2);
  if (sub_1C1266170())
  {
    v16 = sub_1C11AE1D4(v15, a2, a4);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CD0];
  }

  v17 = (a1 + *(v8 + 100));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v22) = v18;
  v23 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  (*(v11 + 56))(v16, v21, v10, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96758, &unk_1C12C0F78);
  sub_1C12628E0();
  v20 = sub_1C11ACBA0();

  [v20 setReorderFeedbackEnabled_];
}

uint64_t sub_1C11AA618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v100 = a6;
  v99 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1263420();
  v96 = *(v12 - 8);
  v97 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C12629F0();
  v80 = *(v14 - 8);
  v81 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v76 - v17;
  v19 = sub_1C12637E0();
  v101 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  v22 = sub_1C1263190();
  v84 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v102 = &v76 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96748, &unk_1C12C0F30);
  v85 = v22;
  v24 = sub_1C1263190();
  v87 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v83 = &v76 - v25;
  v88 = v26;
  v27 = sub_1C1263190();
  v91 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v89 = &v76 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BF0, &qword_1C12A6E10);
  v93 = v27;
  v86 = sub_1C1263190();
  v95 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v90 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v92 = &v76 - v31;
  v114[0] = a2;
  v82 = a3;
  v114[1] = a3;
  v114[2] = a4;
  v103 = a5;
  v114[3] = a5;
  v104 = type metadata accessor for PhotosDraggableItemView(0, v114);
  v32 = *(v104 + 80);
  memcpy(v113, (a1 + v32), 0xD1uLL);
  v33 = a1;
  memcpy(v114, (a1 + v32), 0xD1uLL);
  v34 = sub_1C100D688(v114);
  v78 = v21;
  v79 = v19;
  if (v34 == 1)
  {
    v35 = v101;
    nullsub_1();
    memcpy(v110, v113, 0xD1uLL);
    nullsub_1();
    memcpy(v112, v36, sizeof(v112));
    memcpy(v111, v113, 0xD1uLL);
    nullsub_1();
    sub_1C100D690(v37, v107);
  }

  else
  {
    nullsub_1();
    memcpy(v110, v113, 0xD1uLL);
    nullsub_1();
    memcpy(v111, v113, 0xD1uLL);
    nullsub_1();

    sub_1C1266420();
    v38 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v113, &qword_1EBE91C80, &qword_1C12A75B0);
    v39 = v21;
    v35 = v101;
    (*(v101 + 8))(v39, v19);
  }

  memcpy(v109, v112, sizeof(v109));
  v40 = LOBYTE(v109[20]);
  sub_1C0FD7494(v18);
  if (v40 != 1)
  {
    goto LABEL_9;
  }

  v41 = v109[16];
  if (!(v109[19] >> 62))
  {
    (*(v80 + 8))(v18, v81);

    goto LABEL_10;
  }

  if (v109[19] >> 62 != 1)
  {
LABEL_9:
    v41 = sub_1C1265170();
    (*(v80 + 8))(v18, v81);
    goto LABEL_10;
  }

  v42 = v109[18];
  v44 = v80;
  v43 = v81;
  v45 = v77;
  (*(v80 + 104))(v77, *MEMORY[0x1E697DBB8], v81);

  v76 = v42;

  v46 = sub_1C12629D0();
  v47 = *(v44 + 8);
  v47(v45, v43);
  v47(v18, v43);

  if ((v46 & 1) == 0)
  {
    v41 = v76;
  }

  a1 = v33;
  v35 = v101;
LABEL_10:
  sub_1C100C7D0(v109);
  v111[0] = v41;
  sub_1C100C6E8(v82);
  sub_1C1264960();

  v48 = v94;
  sub_1C12633E0();
  memcpy(v110, (a1 + v32), 0xD1uLL);
  memcpy(v111, (a1 + v32), 0xD1uLL);
  if (sub_1C100D688(v111) == 1)
  {
    nullsub_1();
    memcpy(v106, v110, 0xD1uLL);
    nullsub_1();
    memcpy(v108, v49, sizeof(v108));
    memcpy(v107, v110, 0xD1uLL);
    nullsub_1();
    sub_1C100D690(v50, v105);
  }

  else
  {
    nullsub_1();
    memcpy(v106, v110, 0xD1uLL);
    nullsub_1();
    memcpy(v107, v110, 0xD1uLL);
    nullsub_1();

    sub_1C1266420();
    v51 = sub_1C1264410();
    sub_1C1262620();

    v52 = v78;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v110, &qword_1EBE91C80, &qword_1C12A75B0);
    (*(v35 + 8))(v52, v79);
  }

  memcpy(v107, v108, 0xD0uLL);
  sub_1C100C7D0(v107);
  v53 = v107[0];
  v54 = *(v99 + 20);
  v55 = *MEMORY[0x1E697F468];
  v56 = sub_1C12639D0();
  v57 = v98;
  (*(*(v56 - 8) + 104))(&v98[v54], v55, v56);
  *v57 = v53;
  v57[1] = v53;
  v58 = sub_1C0FDB6D4(&qword_1EDE7BA68, qword_1EBE92178, &unk_1C12AD460, MEMORY[0x1E6980468]);
  v105[32] = v103;
  v105[33] = v58;
  v59 = v85;
  WitnessTable = swift_getWitnessTable();
  sub_1C11AE598(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v61 = v83;
  v62 = v102;
  sub_1C1264AD0();
  sub_1C100867C(v57);
  (*(v96 + 8))(v48, v97);
  (*(v84 + 8))(v62, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96758, &unk_1C12C0F78);
  sub_1C12628E0();
  v63 = sub_1C0FDB6D4(&qword_1EDE7BA38, &qword_1EBE96748, &unk_1C12C0F30, MEMORY[0x1E69805E8]);
  v105[30] = WitnessTable;
  v105[31] = v63;
  v64 = v88;
  v65 = swift_getWitnessTable();
  v66 = v89;
  MEMORY[0x1C68EE920](v106, v64, &type metadata for PhotosDraggableItemFrame, v65);

  (*(v87 + 8))(v61, v64);
  swift_getKeyPath();
  v106[0] = 1;
  v67 = sub_1C11ADA7C();
  v105[28] = v65;
  v105[29] = v67;
  v68 = v93;
  v69 = swift_getWitnessTable();
  v70 = v90;
  sub_1C1264A30();

  (*(v91 + 8))(v66, v68);
  v71 = sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0, &qword_1C12A6E10, MEMORY[0x1E6980A18]);
  v105[26] = v69;
  v105[27] = v71;
  v72 = v86;
  swift_getWitnessTable();
  v73 = v92;
  sub_1C0FDBA4C();
  v74 = *(v95 + 8);
  v74(v70, v72);
  sub_1C0FDBA4C();
  return (v74)(v73, v72);
}

double sub_1C11AB2B8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v6 = (a2 + *(type metadata accessor for PhotosDraggableItemView(0, &v10) + 88));
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v10) = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

void sub_1C11AB338(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a1;
  v50 = sub_1C1263D00();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C1263DB0();
  v47 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C12637E0();
  v45 = *(v18 - 8);
  v46 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v21 = type metadata accessor for PhotosDraggableItemView(0, &v52);
  v22 = (a2 + *(v21 + 88));
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v52) = v23;
  v53 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  if (v51)
  {
    goto LABEL_5;
  }

  v25 = *(a2 + *(v21 + 72) + 8);

  if ((v25 & 1) == 0)
  {
    sub_1C1266420();
    v26 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v45 + 8))(v20, v46);
  }

  v27 = PhotosSelection.isSelectionBandActive.getter();

  if (v27)
  {
LABEL_5:
    sub_1C1263F40();
    sub_1C1262D50();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    (*(v47 + 8))(v17, v15);
    sub_1C1263F20();
    v36 = v50;
    sub_1C1262D50();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    (*(v48 + 8))(v14, v36);
    LOBYTE(v52) = 0;
    *a7 = v29;
    *(a7 + 8) = v31;
    *(a7 + 16) = v33;
    *(a7 + 24) = v35;
    *(a7 + 32) = v38;
    *(a7 + 40) = v40;
    *(a7 + 48) = v42;
    *(a7 + 56) = v44;
    *(a7 + 64) = 0;
  }

  else
  {
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 1;
  }
}

void sub_1C11AB6EC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1C12637E0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1[4] & 1) == 0)
  {
    v16 = *a1;
    v34 = a1[1];
    v35 = v16;
    v17 = a1[2];
    v32 = a1[3];
    v33 = v17;
    v44[0] = a3;
    v44[1] = a4;
    v44[2] = a5;
    v44[3] = a6;
    v18 = type metadata accessor for PhotosDraggableItemView(0, v44);
    v19 = (a2 + *(v18 + 64));
    v20 = v19[3];
    v21 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v21 + 24))(&v45, a2, v20, v21);
    if (v46)
    {
      sub_1C0F9DDE4(&v45, v47);
      sub_1C0FDB0A8(v47, v42);
      v22 = *(v18 + 80);
      memcpy(v43, (a2 + v22), 0xD1uLL);
      memcpy(v44, (a2 + v22), 0xD1uLL);
      if (sub_1C100D688(v44) == 1)
      {
        nullsub_1();
        memcpy(v39, v43, 0xD1uLL);
        nullsub_1();
        memcpy(v41, v23, sizeof(v41));
        memcpy(v40, v43, 0xD1uLL);
        nullsub_1();
        sub_1C100D690(v24, v36);
      }

      else
      {
        nullsub_1();
        memcpy(v39, v43, 0xD1uLL);
        nullsub_1();
        memcpy(v40, v43, 0xD1uLL);
        nullsub_1();

        sub_1C1266420();
        v28 = sub_1C1264410();
        sub_1C1262620();

        sub_1C12637D0();
        swift_getAtKeyPath();
        sub_1C0FD1A5C(v43, &qword_1EBE91C80, &qword_1C12A75B0);
        (*(v13 + 8))(v15, v12);
      }

      memcpy(v40, v41, 0xD0uLL);
      sub_1C100C7D0(v40);
      v29 = v40[0];
      sub_1C0F9DDE4(v42, v39);
      *&v39[7] = v34;
      *&v39[5] = v35;
      *&v39[11] = v32;
      *&v39[9] = v33;
      v39[13] = v29;
      sub_1C0FD77D8(v36);
      v30 = v37;
      if (v37)
      {
        v31 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        (*(v31 + 8))(v39, v30, v31);
        sub_1C1033D88(v39);
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        return;
      }

      sub_1C1033D88(v39);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      v25 = &qword_1EBE94050;
      v26 = &qword_1C12B71D8;
      v27 = v36;
    }

    else
    {
      v25 = &qword_1EBE91420;
      v26 = &unk_1C12B70C0;
      v27 = &v45;
    }

    sub_1C0FD1A5C(v27, v25, v26);
  }
}

uint64_t sub_1C11ABAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v6 = (a1 + *(type metadata accessor for PhotosDraggableItemView(0, v17) + 64));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 24))(&v14, a1, v7, v8);
  if (v15)
  {
    sub_1C0F9DDE4(&v14, v17);
    sub_1C0FD77D8(&v14);
    v9 = v15;
    if (v15)
    {
      v10 = v16;
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      (*(v10 + 16))(v17, v9, v10);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v14);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    v12 = &qword_1EBE94050;
    v13 = &qword_1C12B71D8;
  }

  else
  {
    v12 = &qword_1EBE91420;
    v13 = &unk_1C12B70C0;
  }

  return sub_1C0FD1A5C(&v14, v12, v13);
}

void sub_1C11ABBD8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = a1[1];
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  type metadata accessor for PhotosDraggableItemView(0, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96758, &unk_1C12C0F78);
  sub_1C12628E0();
  sub_1C11AC9C8(v6, v7);
}

uint64_t sub_1C11ABC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2;
  (*(*(a2 - 8) + 16))(a6, a1, a2);
  v25 = v9;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v12 = type metadata accessor for PhotosDraggableItemView(0, &v25);
  v13 = *(v12 + 64);
  v25 = v9;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v14 = type metadata accessor for PhotosDraggableItemView.DropDelegateProxy(0, &v25);
  sub_1C0FDB0A8(a1 + v13, a6 + v14[13]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96758, &unk_1C12C0F78);
  sub_1C12628E0();
  *(a6 + v14[14]) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265440();
  v15 = v26;
  v16 = v27;
  v17 = a6 + v14[15];
  *v17 = v25;
  *(v17 + 8) = v15;
  *(v17 + 16) = v16;
  sub_1C1265440();
  v18 = v26;
  v19 = v27;
  v20 = a6 + v14[16];
  *v20 = v25;
  *(v20 + 8) = v18;
  *(v20 + 16) = v19;
  sub_1C1265440();
  v21 = v25;
  v22 = v26;
  LOBYTE(v9) = v27;
  result = (*(*(v12 - 8) + 8))(a1, v12);
  v24 = a6 + v14[17];
  *v24 = v21;
  *(v24 + 8) = v22;
  *(v24 + 16) = v9;
  return result;
}

uint64_t sub_1C11ABE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v8 = type metadata accessor for PhotosDraggableItemView.DropDelegateProxy(0, v10);
  return (*(*(v8 - 8) + 32))(a6, a1, v8);
}

BOOL sub_1C11ABED0(CGRect *a1, CGRect *a2)
{
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    return CGRectEqualToRect(a1[1], a2[1]);
  }

  return result;
}

BOOL sub_1C11ABF20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7.origin = *a1;
  v7.size = v2;
  v3 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v3;
  v4 = *(a2 + 16);
  v10.origin = *a2;
  v10.size = v4;
  v5 = *(a2 + 48);
  v11 = *(a2 + 32);
  v12 = v5;
  return sub_1C11ABED0(&v7, &v10);
}

uint64_t sub_1C11ABF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[2] = a1;
  v22[3] = a3;
  swift_getWitnessTable();
  *&v23 = sub_1C1263DE0();
  *(&v23 + 1) = swift_getWitnessTable();
  v22[0] = *(&v23 + 1);
  v22[1] = MEMORY[0x1E697D558];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v6 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  v12 = *(a2 + 32);
  v23 = *(a2 + 16);
  v24 = v12;
  v13 = type metadata accessor for PhotosDraggableItemView.DropDelegateProxy(0, &v23);
  v14 = (v3 + *(v13 + 52));
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v16 + 64))(v3, v15, v16);
  *(&v24 + 1) = v13;
  WitnessTable = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v3, v13);
  v18 = swift_checkMetadataState();
  v19 = v22[0];
  sub_1C1264EF0();

  __swift_destroy_boxed_opaque_existential_0Tm(&v23);
  *&v23 = v18;
  *(&v23 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C();
  v20 = *(v6 + 8);
  v20(v8, OpaqueTypeMetadata2);
  sub_1C0FDBA4C();
  return (v20)(v11, OpaqueTypeMetadata2);
}

uint64_t sub_1C11AC230(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 52));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return (*(v6 + 80))(a1, v2, v5, v6) & 1;
}

uint64_t sub_1C11AC29C(uint64_t a1, int *a2)
{
  v3 = v2;
  v5 = sub_1C11ACBA0();
  [v5 setReorderFeedbackEnabled_];

  v6 = sub_1C11ACBA0();
  [v6 performFeedback];

  v7 = (v3 + a2[13]);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v10 = *(v9 + 72);

  v10(v3, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  sub_1C12655F0();

  v11 = v7[3];
  v12 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v11);
  v13 = *(v12 + 88);

  v13(a1, v3, v11, v12);
  sub_1C12655F0();

  v14 = v7[3];
  v15 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v14);
  return (*(v15 + 104))(a1, v3, v14, v15);
}

uint64_t sub_1C11AC48C@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (v3 + a2[15]);
  v8 = *v7;
  v9 = v7[1];
  LOBYTE(v7) = *(v7 + 16);
  v23 = v8;
  v24 = v9;
  v25 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  MEMORY[0x1C68EEF20](&v22);
  if (v22 == 1)
  {
    v11 = (v3 + a2[13]);
    v12 = v11[3];
    v13 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v14 = sub_1C11ACA20();
    v16 = v15;
    v17 = (v3 + a2[16]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v17) = *(v17 + 16);
    v23 = v18;
    v24 = v19;
    v25 = v17;
    MEMORY[0x1C68EEF20](&v22, v10);
    return (*(v13 + 112))(a1, v3, v22, v12, v13, v14, v16);
  }

  else
  {
    v21 = sub_1C1262BB0();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v21);
  }
}

uint64_t sub_1C11AC5DC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  sub_1C12655F0();
  v5 = (v2 + *(a2 + 52));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  return (*(v7 + 120))(a1, v2, v6, v7);
}

uint64_t sub_1C11AC698(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  return (*(v4 + 128))(v1, v3, v4);
}

uint64_t sub_1C11AC6F8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  sub_1C12655F0();
  sub_1C1265A30();
  sub_1C1262EA0();

  v5 = (v2 + *(a2 + 52));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = (*(v7 + 96))(a1, v2, v6, v7) & 1;
  sub_1C12655F0();
  return v8;
}

uint64_t sub_1C11AC83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[3] = a6;
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a5;
  type metadata accessor for PhotosDraggableItemView.DropDelegateProxy(0, v7);
  sub_1C11ACA20();
  return sub_1C12657A0();
}

double sub_1C11AC8E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C11ACA20();
  sub_1C11ACA20();
  sub_1C12659A0();
  sub_1C1262C80();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96760, &qword_1C12C12A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96768, &qword_1C12C12A8) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

void sub_1C11AC9C8(double a1, double a2)
{
  if (sub_1C11ACA20() != a1 || v4 != a2)
  {

    sub_1C11ACAE8(a1, a2);
  }
}

double sub_1C11ACA20()
{
  swift_getKeyPath();
  sub_1C11AE598(&qword_1EDE79FD8, type metadata accessor for PhotosDraggableItemViewModel, &unk_1C12C0EC0);
  sub_1C1261F30();

  return *(v0 + 16);
}

void sub_1C11ACAE8(double a1, double a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v2;
    *&v8[3] = a1;
    *&v8[4] = a2;
    sub_1C11ACC0C(v7, sub_1C11AE588, v8);
  }
}

id sub_1C11ACBA0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69C44D0]) init];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1C11ACCC4()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICoreP33_E176AF03D988E435FD5966ED7E607D1628PhotosDraggableItemViewModel___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for PhotosDraggableItemViewModel(uint64_t a1)
{
  result = qword_1EDE79FC8;
  if (!qword_1EDE79FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C11ACDBC(uint64_t a1)
{
  result = sub_1C1261F70();
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

uint64_t sub_1C11ACE68(void *a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_getExtendedExistentialTypeMetadata_unique();
    v4 = swift_checkMetadataState();
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1C11AD994(319, &qword_1EDE775F8, type metadata accessor for PhotosSelection, MEMORY[0x1E697DCC0]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1C11AD918(319);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1C11AEA44(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_1C11AD994(319, &qword_1EDE77590, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_1C11AEA44(319, &qword_1EDE76CA0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v11 > 0x3F)
    {
      return v4;
    }

    else
    {
      type metadata accessor for PhotosDraggingData(255, v2, a1[4], v10);
      sub_1C1266790();
      v2 = sub_1C1265450();
      if (v12 <= 0x3F)
      {
        sub_1C11AD994(319, &qword_1EDE776B0, type metadata accessor for PhotosDraggableItemViewModel, MEMORY[0x1E697DA80]);
        v2 = v13;
        if (v14 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

unint64_t sub_1C11AD0E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v39 = *(a3 + 16);
  v4 = *(v39 - 8);
  v5 = *(v4 + 84);
  v37 = *(a3 + 24);
  v6 = *(v37 - 8);
  v38 = *(v6 + 84);
  if (v5 <= v38)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(sub_1C12629F0() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96740, &unk_1C12C0DD0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v4 + 64);
  v16 = *(v6 + 80);
  v17 = *(*(v10 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v18 = v10;
  v19 = *(v6 + 64) + 71;
  v20 = *(v8 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 216;
  v23 = v9 + 8;
  v24 = *(v11 + 80) & 0xF8;
  v25 = ~v24 & 0xFFFFFFFFFFFFFFF8;
  v26 = v24 + 47;
  result = a1;
  if (v14 >= a2)
  {
LABEL_34:
    if (v5 == v14)
    {
      v12 = v5;
      v18 = v39;
    }

    else
    {
      v35 = (a1 + v15 + 10) & 0xFFFFFFFFFFFFFFF8;
      if ((v13 & 0x80000000) == 0)
      {
        v36 = *(v35 + 24);
        if (v36 >= 0xFFFFFFFF)
        {
          LODWORD(v36) = -1;
        }

        return (v36 + 1);
      }

      result = (v35 + v16 + 40) & ~v16;
      if (v38 == v14)
      {
        v12 = v38;
        v18 = v37;
      }

      else
      {
        result = (v26 + ((((((((((v23 + ((v22 + ((v19 + result) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v25;
      }
    }

    return __swift_getEnumTagSinglePayload(result, v12, v18);
  }

  v28 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v26 + ((((((((((v23 + ((v22 + ((v19 + ((v16 + ((v15 + 10) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v25) + 8;
  if ((v28 & 0xFFFFFFF8) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = a2 - v14 + 1;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  switch(v31)
  {
    case 1:
      v32 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 2:
      v32 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    case 3:
      __break(1u);
      return result;
    case 4:
      v32 = *(a1 + v28);
      if (!v32)
      {
        goto LABEL_34;
      }

LABEL_31:
      v33 = v32 - 1;
      if ((v28 & 0xFFFFFFF8) != 0)
      {
        v33 = 0;
        v34 = *a1;
      }

      else
      {
        v34 = 0;
      }

      result = v14 + (v34 | v33) + 1;
      break;
    default:
      goto LABEL_34;
  }

  return result;
}

void sub_1C11AD4A8(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v41 = *(a4 + 16);
  v5 = *(v41 - 8);
  v6 = *(v5 + 84);
  v39 = *(a4 + 24);
  v7 = *(v39 - 8);
  v40 = *(v7 + 84);
  if (v6 <= v40)
  {
    v8 = *(v7 + 84);
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(sub_1C12629F0() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96740, &unk_1C12C0DD0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  if (v8 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v8;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v5 + 64);
  v18 = *(v7 + 80);
  v19 = *(v7 + 64) + 71;
  v20 = *(v9 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 216;
  v23 = (((((((((v10 + 8 + ((v20 + 216 + ((v19 + ((v18 + ((v17 + 10) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v12 + 80) & 0xF8;
  v25 = ~v24 & 0xFFFFFFFFFFFFFFF8;
  v26 = ((*(*(v11 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v27 = ((v24 + 47 + v23) & v25) + v26;
  if (v16 >= a3)
  {
    v30 = 0;
  }

  else
  {
    if (v27)
    {
      v28 = 2;
    }

    else
    {
      v28 = a3 - v16 + 1;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  if (a2 > v16)
  {
    if (v27)
    {
      v31 = 1;
    }

    else
    {
      v31 = a2 - v16;
    }

    if (v27)
    {
      v32 = ~v16 + a2;
      bzero(a1, v27);
      *a1 = v32;
    }

    switch(v30)
    {
      case 1:
        *(a1 + v27) = v31;
        break;
      case 2:
        *(a1 + v27) = v31;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *(a1 + v27) = v31;
        break;
      default:
        return;
    }

    return;
  }

  switch(v30)
  {
    case 1:
      *(a1 + v27) = 0;
      if (a2)
      {
        goto LABEL_44;
      }

      return;
    case 2:
      *(a1 + v27) = 0;
      if (a2)
      {
        goto LABEL_44;
      }

      return;
    case 3:
LABEL_62:
      __break(1u);
      return;
    case 4:
      *(a1 + v27) = 0;
      goto LABEL_43;
    default:
LABEL_43:
      if (!a2)
      {
        return;
      }

LABEL_44:
      if (v6 == v16)
      {
        v33 = a1;
        v34 = a2;
        v13 = v6;
        v11 = v41;
LABEL_46:

        __swift_storeEnumTagSinglePayload(v33, v34, v13, v11);
        return;
      }

      v35 = (a1 + v17 + 10) & 0xFFFFFFFFFFFFFFF8;
      if ((v15 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *(v35 + 8) = 0u;
          *(v35 + 24) = 0u;
          *v35 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v35 + 24) = a2 - 1;
        }

        return;
      }

      v33 = ((v35 + v18 + 40) & ~v18);
      if (v40 == v16)
      {
        v34 = a2;
        v13 = v40;
        v11 = v39;
        goto LABEL_46;
      }

      v36 = v24 + 47 + ((((((((((v10 + 8 + ((v22 + ((v33 + v19) & 0xFFFFFFFFFFFFFFF8)) & v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      v37 = (v36 & v25);
      if (v14 >= a2)
      {
        v33 = (v36 & v25);
        v34 = a2;
        goto LABEL_46;
      }

      if (v26)
      {
        v38 = ~v14 + a2;
        bzero(v37, v26);
        *v37 = v38;
      }

      return;
  }
}

void sub_1C11AD918(uint64_t a1)
{
  if (!qword_1EDE77620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94050, &qword_1C12B71D8);
    v1 = sub_1C1262A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE77620);
    }
  }
}

void sub_1C11AD994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C11AD9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C11ADA7C()
{
  result = qword_1EDE7A4E8[0];
  if (!qword_1EDE7A4E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7A4E8);
  }

  return result;
}

void *sub_1C11ADAE8(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  sub_1C1261F60();
  return v1;
}

uint64_t sub_1C11ADB18(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v11[0] = v1[2];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  OUTLINED_FUNCTION_4_48(a1, v11);
  OUTLINED_FUNCTION_24_4();

  return sub_1C11AA178(v5, v6, v7, v8, v9);
}

double sub_1C11ADBE8(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v11[0] = v1[2];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  OUTLINED_FUNCTION_4_48(a1, v11);
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_24_4();

  return sub_1C11AB2B8(v5, v6, v7, v8, v9, v4);
}

void sub_1C11ADC78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10[0] = v2[2];
  v5 = v10[0];
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  OUTLINED_FUNCTION_4_48(a1, v10);
  OUTLINED_FUNCTION_18_27();

  sub_1C11AB338(a1, v9, v5, v6, v7, v8, a2);
}

void sub_1C11ADD20(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v10[0] = v1[2];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  OUTLINED_FUNCTION_4_48(a1, v10);
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_24_4();

  sub_1C11AB6EC(v5, v6, v7, v8, v9, v4);
}

uint64_t sub_1C11ADDC8(uint64_t (*a1)(void))
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v7[0] = v1[2];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  OUTLINED_FUNCTION_4_48(a1, v7);
  OUTLINED_FUNCTION_24_4();

  return a1();
}

uint64_t objectdestroyTm_15()
{
  v2 = *(v0 + 40);
  v13 = *(v0 + 16);
  v1 = v13;
  v14 = *(v0 + 24);
  v12 = v14;
  v15 = v2;
  v3 = type metadata accessor for PhotosDraggableItemView(0, &v13);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  __swift_destroy_boxed_opaque_existential_0Tm((v4 + v3[16]));
  (*(*(v12 - 8) + 8))(v4 + v3[17]);

  v5 = v4 + v3[19];
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
    }
  }

  else
  {
  }

  v6 = v4 + v3[20];
  sub_1C1001C10(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 80), *(v6 + 88), *(v6 + 96), *(v6 + 104), *(v6 + 112), *(v6 + 120), *(v6 + 128), *(v6 + 136), *(v6 + 144), *(v6 + 152), *(v6 + 160), *(v6 + 168), *(v6 + 176), *(v6 + 184), *(v6 + 192), *(v6 + 200), *(v6 + 208));
  v7 = v3[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_24_12();
  if (*(v4 + v3[26]))
  {
  }

  v9 = v4 + v3[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96740, &unk_1C12C0DD0);
  OUTLINED_FUNCTION_3();
  (*(v10 + 8))(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96750, &unk_1C12C0F68);

  return swift_deallocObject();
}

void sub_1C11AE144(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v10[0] = v1[2];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  OUTLINED_FUNCTION_4_48(a1, v10);
  OUTLINED_FUNCTION_18_27();
  OUTLINED_FUNCTION_24_4();

  sub_1C11ABBD8(v5, v6, v7, v8, v9, v4);
}

uint64_t sub_1C11AE1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  if (sub_1C1266170())
  {
    sub_1C1266920();
    v14 = sub_1C1266910();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  v36 = sub_1C1266170();
  if (v36)
  {
    v33 = v7;
    v34 = v5;
    v15 = 0;
    v41 = (v6 + 16);
    v42 = v14 + 56;
    v38 = (v6 + 32);
    v40 = v6 + 8;
    v35 = v13;
    while (1)
    {
      v16 = sub_1C1266150();
      sub_1C12660E0();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = (v17)(v13, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, a2);
      }

      else
      {
        v39 = v15;
        result = sub_1C1266980();
        if (v33 != 8)
        {
          goto LABEL_23;
        }

        v44 = result;
        v17 = *v41;
        (*v41)(v13, &v44, a2);
        result = swift_unknownObjectRelease();
        v15 = v39;
      }

      v39 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v37 = *v38;
      v37(v43, v13, a2);
      v19 = sub_1C1265D20();
      v20 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = *(v42 + 8 * v22);
        v24 = 1 << (v19 & v20);
        if ((v24 & v23) == 0)
        {
          break;
        }

        v25 = v14;
        v17(v8, (*(v14 + 48) + *(v6 + 72) * v21), a2);
        v26 = a3;
        v27 = sub_1C1265DE0();
        v28 = *(v6 + 8);
        v28(v8, a2);
        if (v27)
        {
          v28(v43, a2);
          a3 = v26;
          v13 = v35;
          v14 = v25;
          v15 = v39;
          goto LABEL_16;
        }

        v19 = v21 + 1;
        a3 = v26;
        v14 = v25;
      }

      v29 = v43;
      *(v42 + 8 * v22) = v24 | v23;
      result = (v37)(*(v14 + 48) + *(v6 + 72) * v21, v29, a2);
      v30 = *(v14 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      v13 = v35;
      v15 = v39;
      if (v31)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v32;
LABEL_16:
      v5 = v34;
      if (v15 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

__n128 sub_1C11AE588()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_1C11AE598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C11AE5E0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getExtendedExistentialTypeMetadata_unique();
    type metadata accessor for PhotosDraggableItemViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1C11AEA44(319, &qword_1EDE76B80, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C11AE6D4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C11AE838(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1C11AEA44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C11AEA94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for PhotosDraggableItemView.DropDelegateProxy(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C11AEB0C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C11AEC70(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v17 + 8) = 0u;
              *(v17 + 24) = 0u;
              *v17 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C11AEE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C11AEF3C()
{
  result = qword_1EBE96770;
  if (!qword_1EBE96770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96768, &qword_1C12C12A8);
    sub_1C0FDB6D4(&qword_1EBE96778, &qword_1EBE96760, &qword_1C12C12A0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96770);
  }

  return result;
}

uint64_t sub_1C11AF00C(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1C11AF080(v3, v2);
}

uint64_t sub_1C11AF048()
{
  OUTLINED_FUNCTION_0_67();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1C11AF080(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_67();
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C11AF0DC(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1C10B4638;
}

uint64_t PhotosExportManager.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PhotosExportManager.init(delegate:)(a1, a2);
  return v4;
}

uint64_t PhotosExportManager.init(delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_0_67();
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1C11AF21C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_67();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PhotosExportManager.__deallocating_deinit()
{
  sub_1C0FF4BE4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C11AF308()
{
  type metadata accessor for PhotosExportManager();
  v0 = swift_allocObject();
  result = PhotosExportManager.init(delegate:)(0, 0);
  qword_1EDE7A718 = v0;
  return result;
}

double sub_1C11AF34C@<D0>(void *a1@<X8>)
{
  if (qword_1EDE7A710 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE7A718;

  return result;
}

uint64_t EnvironmentValues.photosExportManager.getter()
{
  sub_1C11AF3F4();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C11AF3F4()
{
  result = qword_1EDE7A700;
  if (!qword_1EDE7A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7A700);
  }

  return result;
}

uint64_t sub_1C11AF448@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosExportManager.getter();
  *a1 = result;
  return result;
}

void (*EnvironmentValues.photosExportManager.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C11AF3F4();
  sub_1C12637F0();
  return sub_1C11AF53C;
}

void sub_1C11AF53C(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_1C1263800();
  }

  else
  {
    sub_1C1263800();
  }
}

double View.photosExportManager(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1C1264A30();

  return result;
}

unint64_t sub_1C11AF738()
{
  result = qword_1EBE96788;
  if (!qword_1EBE96788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96780, &unk_1C12C1330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96788);
  }

  return result;
}

double sub_1C11AF7D8@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {

    sub_1C1266420();
    v17 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v18 = sub_1C0FF9034(a2, a3, 0);
    (*(v11 + 8))(v13, v10, v18);
    v14 = v24[1];
    if (v24[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  v14 = a3;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  (*(v14 + 216))(v24, ObjectType, v14);
  swift_unknownObjectRelease();
  v16 = v24[0];
LABEL_6:
  v19 = a1 & 1;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  v21 = a4 & 1;
  *(v20 + 40) = v21;
  *(v20 + 41) = v16;
  KeyPath = swift_getKeyPath();
  LOBYTE(v24[0]) = 0;
  *a5 = v19;
  *(a5 + 8) = nullsub_1;
  *(a5 + 16) = 0;
  *(a5 + 24) = sub_1C11AFC44;
  *(a5 + 32) = v20;
  *(a5 + 40) = nullsub_1;
  *(a5 + 48) = 0;
  *(a5 + 56) = KeyPath;
  *(a5 + 64) = 0;
  *(a5 + 65) = v19;
  return sub_1C1058CE4(a2, a3, v21);
}

uint64_t sub_1C11AFA20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, unsigned __int8 a4@<W4>, uint64_t a5@<X8>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    sub_1C1266420();
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v17 = sub_1C0FF9034(a1, a2, 0);
    (*(v11 + 8))(v13, v10, v17);
    a2 = v21[1];
    if (v21[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  v15 = (*(a2 + 192))(ObjectType, a2);
  swift_unknownObjectRelease();
LABEL_6:
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = a4 > 1u;
  *a5 = v15;
  *(a5 + 8) = a4;
  *(a5 + 16) = KeyPath;
  *(a5 + 24) = 0;
  *(a5 + 32) = v19;
  *(a5 + 40) = sub_1C1023064;
  *(a5 + 48) = result;
  return result;
}

unint64_t sub_1C11AFC60()
{
  result = qword_1EBE96790;
  if (!qword_1EBE96790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96798, &unk_1C12C14F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96790);
  }

  return result;
}

uint64_t PhotosAlbumCell.TitleAndContentLayoutStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C11AFD4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 92);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E27C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C11AFF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 96), &v15 - v10, &unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C11B016C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 100), &v15 - v10, &qword_1EBE904D8, &qword_1C12A32C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C1263130();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1C11B0370(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 104);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C11B04CC(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 108);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C11B064C(uint64_t a1)
{
  sub_1C1266E90();
  PhotosAlbumCell.TitleAndContentLayoutStyle.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t PhotosAlbumCell.init(_:titleAndContentLayoutStyle:badgeConfiguration:content:accessoryContent:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v18 = *a2;
  __src[0] = a7;
  *&__src[1] = a9;
  *&__src[3] = a10;
  __src[5] = a11;
  __src[6] = a12;
  v19 = type metadata accessor for PhotosAlbumCell(0, __src);
  v20 = v19[23];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a8 + v20), __src, 0xD1uLL);
  v21 = v19[24];
  *(a8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v22 = v19[25];
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  swift_storeEnumTagMultiPayload();
  v23 = a8 + v19[26];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = a8 + v19[27];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = *(a7 - 8);
  (*(v25 + 16))(a8, a1, a7);
  *(a8 + v19[19]) = v18;
  v26 = (a8 + v19[20]);
  v27 = a3[1];
  *v26 = *a3;
  v26[1] = v27;
  v28 = (a8 + v19[21]);
  *v28 = a4;
  v28[1] = a5;

  a6(v29);

  return (*(v25 + 8))(a1, a7);
}

__n128 sub_1C11B0914@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_1C11AFD4C(a1, a2);
  if (qword_1EDE82B78 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE82B80;
  v6 = *&qword_1EDE82B88;
  v4 = qword_1EDE82B98;

  a2->n128_u64[1] = v3;
  result = v6;
  a2[1] = v6;
  a2[2].n128_u64[0] = v4;
  return result;
}

uint64_t PhotosAlbumCell.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v303 = a2;
  v3 = a1[3];
  v313 = a1[7];
  v4 = v3;
  sub_1C12655A0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  OUTLINED_FUNCTION_6_0();
  v312 = v5;
  sub_1C1263190();
  v300 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A0, &qword_1C12C1600);
  v6 = a1;
  v311 = a1[4];
  v7 = a1[2];
  v8 = v6;
  v9 = OUTLINED_FUNCTION_37();
  v304 = v10;
  v299 = type metadata accessor for PhotosCellBadgeView(v9, v11, v10, v12);
  v307 = sub_1C1266790();
  v13 = MEMORY[0x1E6981840];
  v14 = OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_22_2(v14, v15, v311, v16);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  v17 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  v18 = sub_1C1263190();
  v19 = v13;
  OUTLINED_FUNCTION_22_2(255, v300, v13, v18);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  v20 = v17;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v21 = sub_1C12654C0();
  OUTLINED_FUNCTION_33_11(v21, v21);
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  v22 = OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_4(v22, v23, v24);
  OUTLINED_FUNCTION_22();
  v25 = sub_1C1265B00();
  OUTLINED_FUNCTION_32_11(v25);
  OUTLINED_FUNCTION_5_32();
  v306 = sub_1C12654C0();
  v314 = OUTLINED_FUNCTION_33_11(v306, v306);
  v302 = sub_1C1263C30();
  v26 = v8[5];
  v27 = v8;
  *&v315 = v8;
  v28 = *(*(v26 + 8) + 8);
  v305 = v7;
  type metadata accessor for PhotosFavoriteBadge(255, v7, v28, v29);
  v30 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v30, v19, v31);
  OUTLINED_FUNCTION_22();
  v32 = sub_1C1265B00();
  OUTLINED_FUNCTION_32_11(v32);
  OUTLINED_FUNCTION_5_32();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  v33 = OUTLINED_FUNCTION_11_0();
  v309 = v4;
  OUTLINED_FUNCTION_4(v33, v4, v34);
  OUTLINED_FUNCTION_22();
  v35 = sub_1C1265B00();
  OUTLINED_FUNCTION_32_11(v35);
  OUTLINED_FUNCTION_5_32();
  v36 = sub_1C12655C0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A8, &qword_1C12C1608);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B0, &qword_1C12C1610);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B8, &qword_1C12C1618);
  v40 = sub_1C11B248C();
  v41 = sub_1C11B26B8();
  v42 = sub_1C11B2B94();
  v43 = v27[8];
  v358 = v37;
  v359 = v38;
  v360 = v39;
  v361 = v311;
  v362 = v40;
  v363 = v41;
  v364 = v42;
  v365 = v43;
  v44 = type metadata accessor for PhotosTitleAccessoryStack(255, &v358);
  OUTLINED_FUNCTION_13_0();
  v310 = v45;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_21();
  v47 = swift_getWitnessTable();
  v358 = v36;
  v359 = v44;
  v360 = WitnessTable;
  v361 = v47;
  type metadata accessor for PhotosContentTitleCard(255, &v358);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93660, &qword_1C12B42E8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_37();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96868, &unk_1C12C1690);
  v48 = OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_4(v48, v49, v307);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_34_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  v50 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_22_2(v50, v51, MEMORY[0x1E6981840], v52);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  v308 = v20;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  v53 = OUTLINED_FUNCTION_5_32();
  OUTLINED_FUNCTION_4(v53, v54, v55);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_34_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  v294 = sub_1C12655A0();
  sub_1C1263C30();
  v56 = sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v285 = v57;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_34();
  v284 = v59;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  v60 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v291 = v61;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_34();
  v289 = v63;
  v307 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_37();
  sub_1C1263190();
  v297 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  v296 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v64 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v290 = v65;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_34();
  v288 = v67;
  OUTLINED_FUNCTION_1_11();
  v399 = swift_getWitnessTable();
  v400 = MEMORY[0x1E697EBF8];
  v397 = swift_getWitnessTable();
  v398 = v313;
  v68 = MEMORY[0x1E697F968];
  v69 = swift_getWitnessTable();
  OUTLINED_FUNCTION_18_28();
  v70 = swift_getWitnessTable();
  v71 = MEMORY[0x1E6980A18];
  v72 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660, &qword_1C12B42E8, MEMORY[0x1E6980A18]);
  v395 = v70;
  v396 = v72;
  v73 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  v74 = swift_getWitnessTable();
  v393 = v73;
  v394 = v74;
  *&v298 = v68;
  v75 = swift_getWitnessTable();
  v391 = v69;
  v392 = v75;
  v287 = v56;
  v76 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  v79 = sub_1C10239B0(v77, qword_1EBE92178, &unk_1C12AD460, v78);
  v278 = v76;
  v389 = v76;
  v390 = v79;
  v293 = v60;
  v80 = swift_getWitnessTable();
  v81 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, v71);
  v280 = v80;
  v387 = v80;
  v388 = v81;
  v82 = v81;
  v83 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v86 = sub_1C10239B0(v84, &qword_1EBE91C40, &unk_1C12A7010, v85);
  v385 = v83;
  v386 = v86;
  v87 = v86;
  v88 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v295 = sub_1C10239B0(v89, &unk_1EBE92ED0, &unk_1C12A8E80, v90);
  v383 = v88;
  v384 = v295;
  v292 = v64;
  v279 = swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView(0, v64, v279, v91);
  OUTLINED_FUNCTION_0();
  v282 = v92;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_34();
  v281 = v94;
  v306 = v95;
  v314 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v286 = v96;
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_30();
  v283 = v98 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v302 = &v268 - v101;
  sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v276 = v103;
  v277 = v102;
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_8();
  v275 = v104;
  sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v272 = v106;
  v273 = v105;
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_8();
  v274 = v107;
  v271 = *(v315 - 8);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_30();
  v270 = (v109 - v110);
  MEMORY[0x1EEE9AC00](v111);
  v269 = &v268 - v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  OUTLINED_FUNCTION_15(v113);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_34();
  v294 = v115;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  v116 = sub_1C1263190();
  OUTLINED_FUNCTION_22_2(255, v309, &type metadata for PhotosLegibilityGradient, v116);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_32();
  sub_1C12655C0();
  sub_1C1263190();
  OUTLINED_FUNCTION_26();
  sub_1C1263190();
  OUTLINED_FUNCTION_29_10();
  v117 = sub_1C1263190();
  v381 = swift_getWitnessTable();
  v382 = v82;
  v379 = swift_getWitnessTable();
  v118 = v87;
  v380 = v87;
  v377 = swift_getWitnessTable();
  v119 = v295;
  v378 = v295;
  swift_getWitnessTable();
  v120 = OUTLINED_FUNCTION_11_0();
  v299 = type metadata accessor for PhotosDetailsPresentationSourceView(v120, v117, v121, v122);
  sub_1C1263190();
  OUTLINED_FUNCTION_26();
  sub_1C1263190();
  OUTLINED_FUNCTION_29_10();
  v123 = sub_1C1263190();
  v375 = v313;
  v376 = v82;
  v373 = swift_getWitnessTable();
  v374 = v118;
  v371 = swift_getWitnessTable();
  v372 = v119;
  swift_getWitnessTable();
  v124 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v124, v123, v125, v126);
  sub_1C1263190();
  v127 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4(v127, v128, v129);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655C0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_4_3();
  v130 = swift_getWitnessTable();
  v131 = swift_getWitnessTable();
  v369 = v130;
  v370 = v131;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  v132 = OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_22_2(v132, v133, v300, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  v134 = v315;
  v135 = v301;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_32();
  v136 = sub_1C12654C0();
  OUTLINED_FUNCTION_26();
  v137 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91190, &unk_1C12A8368);
  v312 = v137;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v300 = v138;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v139);
  v141 = &v268 - v140;
  v313 = v142;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v299 = v143;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_34();
  v146 = v145;
  v148 = v147;
  v149 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v151 = v150;
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_30();
  v307 = v153 - v154;
  MEMORY[0x1EEE9AC00](v155);
  v157 = &v268 - v156;
  sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v309 = v159;
  v310 = v158;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_34();
  v308 = v161;
  v162 = sub_1C11B2F00(v134);
  v311 = v136;
  if (v162)
  {
    sub_1C11B2F40(v134, v141);
    v361 = v305;
    v362 = v304;
    __swift_allocate_boxed_opaque_existential_1(&v358);
    OUTLINED_FUNCTION_15_1();
    (*(v163 + 16))();
    OUTLINED_FUNCTION_1_11();
    v324 = swift_getWitnessTable();
    v325 = MEMORY[0x1E697EBF8];
    v164 = swift_getWitnessTable();
    OUTLINED_FUNCTION_8_3();
    v169 = sub_1C10239B0(v165, v166, v167, v168);
    v322 = v164;
    v323 = v169;
    *&v298 = v157;
    v170 = v151;
    v171 = v313;
    v172 = swift_getWitnessTable();
    View.selectionStyle(for:)(&v358, v171, v172);
    (*(v300 + 8))(v141, v171);
    __swift_destroy_boxed_opaque_existential_0Tm(&v358);
    v173 = sub_1C100D614();
    v174 = v299;
    *&v315 = v173;
    v320 = v172;
    v321 = v173;
    v175 = swift_getWitnessTable();
    View.dropTargetStyle()(v148, v175);
    (*(v174 + 8))(v146, v148);
    v176 = sub_1C10A04F0();
    v318 = v175;
    v319 = v176;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_37_5();
    sub_1C0FDBA4C();
    v177 = *(v170 + 8);
    v178 = OUTLINED_FUNCTION_37_5();
    v177(v178);
    sub_1C0FDBA4C();
    OUTLINED_FUNCTION_4_3();
    v316 = swift_getWitnessTable();
    v317 = v315;
    swift_getWitnessTable();
    v179 = v308;
    OUTLINED_FUNCTION_37_5();
    sub_1C1112D68();
    v180 = OUTLINED_FUNCTION_37_5();
    v177(v180);
    (v177)(v298, v149);
    v181 = MEMORY[0x1E697EBF8];
  }

  else
  {
    v300 = v149;
    v307 = v148;
    v182 = swift_getWitnessTable();
    v183 = v294;
    View.photosTrace.getter();
    v184 = sub_1C1262680();
    v185 = v134;
    if (__swift_getEnumTagSinglePayload(v183, 1, v184) == 1)
    {
      sub_1C0F9E27C(v183, &qword_1EBE919B0);
      v186 = v289;
    }

    else
    {
      v299 = v184;
      v187 = v271;
      v188 = *(v271 + 16);
      v189 = v269;
      v188(v269, v135, v185);
      v190 = v270;
      v188(v270, v135, v185);
      v191 = v274;
      sub_1C1262640();
      v192 = sub_1C1262670();
      LODWORD(v297) = sub_1C1266520();
      *&v298 = v192;
      if (sub_1C1266730())
      {
        v193 = swift_slowAlloc();
        v296 = swift_slowAlloc();
        v358 = v296;
        *v193 = 136446466;
        v194 = (*(v304 + 16))(v305);
        v196 = v195;
        v197 = *(v187 + 8);
        v197(v189, v315);
        v198 = sub_1C0FA0E80(v194, v196, &v358);

        *(v193 + 4) = v198;
        *(v193 + 12) = 2082;
        v199 = View.photosChangedProperties.getter(v315, v182);
        v201 = v200;
        v197(v190, v315);
        v202 = sub_1C0FA0E80(v199, v201, &v358);

        *(v193 + 14) = v202;
        v203 = v274;
        v204 = sub_1C1262630();
        v205 = v298;
        _os_signpost_emit_with_name_impl(&dword_1C0F96000, v298, v297, v204, "PhotosAlbumCell", "PhotosAlbumCell %{public}s %{public}s", v193, 0x16u);
        v206 = v296;
        swift_arrayDestroy();
        v185 = v315;
        MEMORY[0x1C68F1630](v206, -1, -1);
        v207 = v193;
        v183 = v294;
        MEMORY[0x1C68F1630](v207, -1, -1);

        (*(v272 + 8))(v203, v273);
      }

      else
      {

        (*(v272 + 8))(v191, v273);
        v208 = *(v187 + 8);
        v208(v190, v185);
        v208(v189, v185);
      }

      v186 = v289;
      OUTLINED_FUNCTION_15_1();
      (*(v209 + 8))(v183);
    }

    v210 = v275;
    v211 = OUTLINED_FUNCTION_38_8();
    sub_1C11AFD4C(v211, v212);
    v213 = v368;
    sub_1C11AFF68(v185, v210);
    v214 = sub_1C11B04CC(v185);
    v215 = v214;
    if (v213 & 1) != 0 || (v214)
    {
      v357[0] = v366;
      v357[1] = v367;
      sub_1C1012620(v366, *(&v366 + 1), v367, *(&v367 + 1));
      sub_1C10C37D8(v210, v215 & 1);
      v216 = v218;
      v217.n128_f64[0] = sub_1C1001C84(*&v357[0], *(&v357[0] + 1), *&v357[1], *(&v357[1] + 1));
    }

    else
    {
      v216 = sub_1C1265170();
    }

    (*(v276 + 8))(v210, v277, v217);
    sub_1C100C7D0(&v358);
    v219 = v284;
    v220 = OUTLINED_FUNCTION_38_8();
    sub_1C11B3824(v220, v221);
    *&v357[0] = v216;
    v222 = v287;
    v223 = OUTLINED_FUNCTION_34_9();
    sub_1C100C6E8(v223);
    sub_1C1264960();
    (*(v285 + 8))(v219, v222);
    v224 = OUTLINED_FUNCTION_38_8();
    sub_1C11AFD4C(v224, v225);
    memcpy(v353, v355, sizeof(v353));
    v226 = v186;
    sub_1C100D690(v354, v357);
    if (qword_1EDE82B00 != -1)
    {
      swift_once();
    }

    v227 = qword_1EDE82B08;
    v228 = qword_1EDE82B10;
    v298 = xmmword_1EDE82B18;
    v229 = qword_1EDE82B28;

    sub_1C100C7D0(v354);

    *&v357[0] = v227;
    *(&v357[0] + 1) = v228;
    v357[1] = v298;
    *&v357[2] = v229;
    memcpy(&v357[2] + 8, v353, 0xA8uLL);
    v230 = v288;
    v231 = v293;
    View.cellStyle(for:)(v357, v280, v288);
    memcpy(v356, v357, sizeof(v356));
    sub_1C100C7D0(v356);
    (*(v291 + 8))(v226, v231);
    v352 = 2;
    v351 = 2;
    v232 = OUTLINED_FUNCTION_38_8();
    sub_1C11AFD4C(v232, v233);
    v234 = v357[0];
    v315 = v357[1];
    v235 = *&v357[2];

    sub_1C100C7D0(v357);
    v348 = v234;
    v349 = v315;
    v350 = v235;
    v299 = v216;

    v236 = v281;
    v237 = v292;
    View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v352, v216, 0, v292, v279, v281);

    (*(v290 + 8))(v230, v237);
    *(&v349 + 1) = v305;
    v350 = v304;
    __swift_allocate_boxed_opaque_existential_1(&v348);
    OUTLINED_FUNCTION_15_1();
    (*(v238 + 16))();
    OUTLINED_FUNCTION_4_3();
    v239 = v306;
    v240 = swift_getWitnessTable();
    v241 = v283;
    View.selectionStyle(for:)(&v348, v239, v240);
    (*(v282 + 8))(v236, v239);
    __swift_destroy_boxed_opaque_existential_0Tm(&v348);
    v242 = sub_1C100D614();
    v346 = v240;
    v347 = v242;
    OUTLINED_FUNCTION_9_4();
    v243 = v314;
    swift_getWitnessTable();
    sub_1C0FDBA4C();
    v244 = *(v286 + 8);
    v244(v241, v243);
    sub_1C0FDBA4C();
    OUTLINED_FUNCTION_1_11();
    v344 = swift_getWitnessTable();
    v181 = MEMORY[0x1E697EBF8];
    v345 = MEMORY[0x1E697EBF8];
    v245 = swift_getWitnessTable();
    OUTLINED_FUNCTION_8_3();
    v250 = sub_1C10239B0(v246, v247, v248, v249);
    v342 = v245;
    v343 = v250;
    v340 = swift_getWitnessTable();
    v341 = v242;
    v251 = swift_getWitnessTable();
    v252 = sub_1C10A04F0();
    v338 = v251;
    v339 = v252;
    swift_getWitnessTable();
    v253 = v308;
    OUTLINED_FUNCTION_34_9();
    sub_1C1112E18();

    v244(v241, v243);
    v244(v302, v243);
    v179 = v253;
  }

  OUTLINED_FUNCTION_1_11();
  v336 = swift_getWitnessTable();
  v337 = v181;
  OUTLINED_FUNCTION_9_4();
  v254 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  v259 = sub_1C10239B0(v255, v256, v257, v258);
  v334 = v254;
  v335 = v259;
  v260 = swift_getWitnessTable();
  v261 = sub_1C100D614();
  v332 = v260;
  v333 = v261;
  v262 = swift_getWitnessTable();
  v263 = sub_1C10A04F0();
  v330 = v262;
  v331 = v263;
  v264 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_3();
  v328 = swift_getWitnessTable();
  v329 = v261;
  v265 = swift_getWitnessTable();
  v326 = v264;
  v327 = v265;
  OUTLINED_FUNCTION_19_0();
  v266 = v310;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v309 + 8))(v179, v266);
}

unint64_t sub_1C11B248C()
{
  result = qword_1EDE7BD38;
  if (!qword_1EDE7BD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A8, &qword_1C12C1608);
    sub_1C11B2518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD38);
  }

  return result;
}

unint64_t sub_1C11B2518()
{
  result = qword_1EDE7BD90;
  if (!qword_1EDE7BD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967C0, &qword_1C12C1620);
    sub_1C11B25D0();
    sub_1C10239B0(&qword_1EDE7BA60, &qword_1EBE91888, &unk_1C12AA3B0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD90);
  }

  return result;
}

unint64_t sub_1C11B25D0()
{
  result = qword_1EDE7BE58;
  if (!qword_1EDE7BE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967C8, &qword_1C12C1628);
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE58);
  }

  return result;
}

unint64_t sub_1C11B26B8()
{
  result = qword_1EBE967D0;
  if (!qword_1EBE967D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B0, &qword_1C12C1610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967D8, &qword_1C12C1630);
    sub_1C11B2780();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE967D0);
  }

  return result;
}

unint64_t sub_1C11B2780()
{
  result = qword_1EBE967E0;
  if (!qword_1EBE967E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967D8, &qword_1C12C1630);
    sub_1C11B2838();
    sub_1C10239B0(&qword_1EDE7BA60, &qword_1EBE91888, &unk_1C12AA3B0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE967E0);
  }

  return result;
}

unint64_t sub_1C11B2838()
{
  result = qword_1EBE967E8;
  if (!qword_1EBE967E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967F0, &qword_1C12C1638);
    sub_1C11B28F0();
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE967E8);
  }

  return result;
}

unint64_t sub_1C11B28F0()
{
  result = qword_1EBE967F8;
  if (!qword_1EBE967F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96800, &qword_1C12C1640);
    sub_1C11B2974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE967F8);
  }

  return result;
}

unint64_t sub_1C11B2974()
{
  result = qword_1EBE96808;
  if (!qword_1EBE96808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96810, &qword_1C12C1648);
    sub_1C11B2A00();
    sub_1C11B2AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96808);
  }

  return result;
}

unint64_t sub_1C11B2A00()
{
  result = qword_1EBE96818;
  if (!qword_1EBE96818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96820, &qword_1C12C1650);
    sub_1C11B2E94(&qword_1EDE7BEB8, &qword_1EBE96828);
    sub_1C10239B0(&qword_1EBE96830, &qword_1EBE96838, &qword_1C12C1660, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96818);
  }

  return result;
}

unint64_t sub_1C11B2AD8()
{
  result = qword_1EBE96840;
  if (!qword_1EBE96840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90878, &qword_1C12A4768);
    sub_1C11BF2B8(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96840);
  }

  return result;
}

unint64_t sub_1C11B2B94()
{
  result = qword_1EDE77028;
  if (!qword_1EDE77028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B8, &qword_1C12C1618);
    sub_1C11B2C4C();
    sub_1C10239B0(&unk_1EDE7B920, &qword_1EBE93130, &qword_1C12AEDC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77028);
  }

  return result;
}

unint64_t sub_1C11B2C4C()
{
  result = qword_1EDE77088;
  if (!qword_1EDE77088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96848, &qword_1C12C1668);
    sub_1C11B2D04();
    sub_1C10239B0(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77088);
  }

  return result;
}

unint64_t sub_1C11B2D04()
{
  result = qword_1EDE77120;
  if (!qword_1EDE77120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96850, &qword_1C12C1670);
    sub_1C11B2DBC();
    sub_1C10239B0(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77120);
  }

  return result;
}

unint64_t sub_1C11B2DBC()
{
  result = qword_1EDE77220;
  if (!qword_1EDE77220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96858, &qword_1C12C1678);
    sub_1C11B2E94(&qword_1EDE773D8, &unk_1EBE96860);
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77220);
  }

  return result;
}

uint64_t sub_1C11B2E94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_41(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C11B2F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1C1263130();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v46 - v6;
  v49 = a1;
  v52 = *(a1 + 48);
  v53 = (a1 + 40);
  v60 = *(a1 + 16);
  type metadata accessor for PhotosCellBadgeView(255, v60, v52, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  sub_1C1263190();
  sub_1C1263190();
  v51 = *(&v60 + 1);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  v50 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v8 = sub_1C1263190();
  v48 = MEMORY[0x1E6981880];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v82 = WitnessTable;
  v83 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v80 = v11;
  v81 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_1C10239B0(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v78 = v13;
  v79 = v14;
  v15 = swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView(255, v8, v15, v16);
  sub_1C1263190();
  sub_1C1263190();
  v17 = sub_1C1263190();
  v18 = v49;
  v51 = *(v49 + 56);
  v76 = v51;
  v77 = v10;
  v74 = swift_getWitnessTable();
  v75 = v12;
  v72 = swift_getWitnessTable();
  v73 = v14;
  v19 = swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView(255, v17, v19, v20);
  v21 = *(v18 + 32);
  v22 = v18;
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  sub_1C1263C30();
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v70 = v23;
  v71 = v24;
  v25 = v59;
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A0, &qword_1C12C1600);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v26 = sub_1C12654C0();
  v47 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v46 - v27;
  v29 = sub_1C1263190();
  v50 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v48 = &v46 - v30;
  sub_1C12638E0();
  *&v31 = v21;
  *(&v31 + 1) = *v53;
  v61 = v60;
  v62 = v31;
  v63 = v52;
  v64 = v51;
  v65 = *(v22 + 64);
  v66 = v25;
  *&v60 = v28;
  v32 = v22;
  sub_1C12654B0();
  v33 = v54;
  sub_1C11B016C(v22, v54);
  v34 = v55;
  v35 = v56;
  v36 = v57;
  (*(v56 + 104))(v55, *MEMORY[0x1E697E6E8], v57);
  sub_1C11BF2B8(&qword_1EDE7BF98, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  LOBYTE(v22) = sub_1C1265D90();
  v37 = *(v35 + 8);
  v37(v34, v36);
  v37(v33, v36);
  if ((v22 & 1) == 0)
  {
    sub_1C11B0914(v32, v69);
    sub_1C100C7D0(v69);
  }

  v45 = swift_getWitnessTable();
  sub_1C10A0734(v26, v45, v38, v39, v40, v41);
  v42 = v48;
  v43 = v60;
  sub_1C1264EA0();
  (*(v47 + 8))(v43, v26);
  v67 = v45;
  v68 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1C100C6E8(v29);
  sub_1C1264960();
  return (*(v50 + 8))(v42, v29);
}

uint64_t sub_1C11B3824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a2;
  v142 = *(a1 + 24);
  sub_1C1263190();
  v139 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96868, &unk_1C12C1690);
  v135 = *(a1 + 32);
  v3 = *(a1 + 16);
  type metadata accessor for PhotosCellBadgeView(255, v3, *(a1 + 48), v4);
  v137 = sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v5 = sub_1C12655A0();
  v126 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v125 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v124 = &v117 - v8;
  type metadata accessor for PhotosFavoriteBadge(255, v3, *(*(*(a1 + 40) + 8) + 8), v9);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v10 = sub_1C12655C0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A8, &qword_1C12C1608);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B0, &qword_1C12C1610);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B8, &qword_1C12C1618);
  v14 = sub_1C11B248C();
  v15 = sub_1C11B26B8();
  v16 = sub_1C11B2B94();
  v17 = *(a1 + 64);
  v182 = v11;
  v183 = v12;
  v184 = v13;
  v185 = v135;
  v186 = v14;
  v187 = v15;
  v188 = v16;
  v189 = v17;
  v18 = type metadata accessor for PhotosTitleAccessoryStack(255, &v182);
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v182 = v10;
  v183 = v18;
  v184 = WitnessTable;
  v185 = v20;
  v21 = type metadata accessor for PhotosContentTitleCard(255, &v182);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93660, &qword_1C12B42E8);
  v141 = v21;
  v22 = sub_1C1263190();
  v120 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v118 = &v117 - v25;
  v138 = v26;
  v143 = v5;
  v27 = sub_1C1263C30();
  v127 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v121 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v128 = (&v117 - v30);
  v123 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v122 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v129 = &v117 - v34;
  v140 = *(a1 + 56);
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A0, &qword_1C12C1600);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v35 = v142;
  v137 = sub_1C12654C0();
  v36 = sub_1C1263190();
  v37 = sub_1C1263C30();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v117 - v39;
  v139 = v36;
  v41 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v117 - v46;
  v130 = v48;
  v135 = v27;
  v49 = v131;
  v50 = sub_1C1263C30();
  v133 = *(v50 - 8);
  v134 = v50;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v117 - v51;
  v53 = v49[*(a1 + 76)];
  v54 = MEMORY[0x1E697EBF8];
  v132 = v52;
  if (v53)
  {
    v128 = v38;
    v55 = MEMORY[0x1E697EBF8];
    v117 = v40;
    if (v53 == 1)
    {
      v129 = v41;
      sub_1C11B4B9C(a1, v44);
      v150 = swift_getWitnessTable();
      v151 = v54;
      v127 = MEMORY[0x1E697E858];
      v56 = v139;
      v57 = swift_getWitnessTable();
      sub_1C0FDBA4C();
      v131 = *(v129 + 1);
      v129 += 8;
      (v131)(v44, v56);
      sub_1C0FDBA4C();
      v58 = v140;
      sub_1C1112D68();
      v148 = v57;
      v149 = v58;
      v59 = v130;
      v142 = swift_getWitnessTable();
      v60 = swift_getWitnessTable();
      v61 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660, &qword_1C12B42E8, MEMORY[0x1E6980A18]);
      v146 = v60;
      v147 = v61;
      v62 = swift_getWitnessTable();
      v63 = swift_getWitnessTable();
      v144 = v62;
      v145 = v63;
      swift_getWitnessTable();
      v64 = v132;
      v65 = v117;
      sub_1C1112D68();
      v128[1](v65, v59);
      v66 = v131;
      (v131)(v44, v56);
      (v66)(v47, v56);
    }

    else
    {
      v80 = *(a1 + 80);
      v81 = *&v49[*(a1 + 84)];
      v82 = *&v49[v80 + 8];
      v83 = *&v49[v80 + 16];
      v84 = *&v49[v80 + 24];
      v182 = *&v49[v80];
      v183 = v82;
      v184 = v83;
      v185 = v84;
      sub_1C11BF430(v182, v82, v83, v84);
      v85 = v122;
      v81(&v182);
      sub_1C11BF3E4(v182, v183, v184, v185);
      v86 = v140;
      sub_1C0FDBA4C();
      v131 = *(v123 + 8);
      (v131)(v85, v35);
      sub_1C0FDBA4C();
      v158 = swift_getWitnessTable();
      v159 = v55;
      v87 = swift_getWitnessTable();
      sub_1C1112E18();
      v156 = v87;
      v157 = v86;
      v88 = v130;
      v127 = swift_getWitnessTable();
      v89 = swift_getWitnessTable();
      v90 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660, &qword_1C12B42E8, MEMORY[0x1E6980A18]);
      v154 = v89;
      v155 = v90;
      v91 = swift_getWitnessTable();
      v92 = swift_getWitnessTable();
      v152 = v91;
      v153 = v92;
      swift_getWitnessTable();
      v64 = v132;
      v93 = v117;
      sub_1C1112D68();
      v128[1](v93, v88);
      v94 = v142;
      v95 = v131;
      (v131)(v85, v142);
      (v95)(v129, v94);
    }

    v67 = v140;
  }

  else
  {
    v68 = v118;
    v69 = v119;
    v70 = v120;
    v71 = v124;
    v72 = v125;
    v73 = v126;
    if (sub_1C11B0688(a1))
    {
      sub_1C11B50B0(a1, v74, v69);
      v75 = swift_getWitnessTable();
      v76 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660, &qword_1C12B42E8, MEMORY[0x1E6980A18]);
      v160 = v75;
      v161 = v76;
      v77 = v138;
      swift_getWitnessTable();
      sub_1C0FDBA4C();
      v78 = *(v70 + 8);
      v78(v69, v77);
      sub_1C0FDBA4C();
      swift_getWitnessTable();
      sub_1C1112D68();
      v78(v69, v77);
      v78(v68, v77);
    }

    else
    {
      sub_1C11B5538(a1, v72);
      v96 = v143;
      swift_getWitnessTable();
      v97 = v71;
      sub_1C0FDBA4C();
      v98 = *(v73 + 8);
      v98(v72, v96);
      sub_1C0FDBA4C();
      v99 = swift_getWitnessTable();
      v100 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660, &qword_1C12B42E8, MEMORY[0x1E6980A18]);
      v180 = v99;
      v181 = v100;
      swift_getWitnessTable();
      sub_1C1112E18();
      v98(v72, v96);
      v98(v97, v96);
    }

    v79 = v140;
    v101 = swift_getWitnessTable();
    v102 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660, &qword_1C12B42E8, MEMORY[0x1E6980A18]);
    v178 = v101;
    v179 = v102;
    v103 = swift_getWitnessTable();
    v104 = swift_getWitnessTable();
    v176 = v103;
    v177 = v104;
    v105 = v135;
    swift_getWitnessTable();
    v106 = v121;
    sub_1C0FDBA4C();
    v174 = swift_getWitnessTable();
    v175 = MEMORY[0x1E697EBF8];
    v172 = swift_getWitnessTable();
    v173 = v79;
    v107 = v79;
    swift_getWitnessTable();
    v64 = v132;
    sub_1C1112E18();
    v108 = *(v127 + 8);
    v108(v106, v105);
    v108(v128, v105);
    v67 = v107;
  }

  v170 = swift_getWitnessTable();
  v171 = MEMORY[0x1E697EBF8];
  v168 = swift_getWitnessTable();
  v169 = v67;
  v109 = swift_getWitnessTable();
  v110 = swift_getWitnessTable();
  v111 = sub_1C10239B0(&qword_1EDE7B988, &qword_1EBE93660, &qword_1C12B42E8, MEMORY[0x1E6980A18]);
  v166 = v110;
  v167 = v111;
  v112 = swift_getWitnessTable();
  v113 = swift_getWitnessTable();
  v164 = v112;
  v165 = v113;
  v114 = swift_getWitnessTable();
  v162 = v109;
  v163 = v114;
  v115 = v134;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v133 + 8))(v64, v115);
}