uint64_t sub_1B9495798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9495808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_Person(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B949586C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Person(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9495BB8(a1, v4);
  return Searchfoundation_FindMyCardSection.person.setter(v4);
}

uint64_t Searchfoundation_FindMyCardSection.person.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_FindMyCardSection(0) + 20);
  sub_1B8D9207C(v1 + v3, &qword_1EBACC5A8, &unk_1B96CD450);
  sub_1B9495808(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Person(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_FindMyCardSection.person.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Searchfoundation_Person(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for Searchfoundation_FindMyCardSection(0) + 20);
  *(v3 + 10) = v10;
  sub_1B9495798(v1 + v10, v6);
  OUTLINED_FUNCTION_117(v6);
  if (v11)
  {
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0;
    v9[3] = 0xE000000000000000;
    v12 = MEMORY[0x1E69E7CC0];
    v9[4] = 0;
    v9[5] = 0xE000000000000000;
    v9[6] = v12;
    v9[7] = v12;
    v9[8] = 0;
    v9[9] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_117(v6);
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBACC5A8, &unk_1B96CD450);
    }
  }

  else
  {
    sub_1B9495808(v6, v9);
  }

  return sub_1B9495AD8;
}

void sub_1B9495AD8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1B9495BB8((*a1)[4], v4);
    sub_1B8D9207C(v7 + v3, &qword_1EBACC5A8, &unk_1B96CD450);
    sub_1B9495808(v4, v7 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B9495C1C(v5);
  }

  else
  {
    sub_1B8D9207C(v7 + v3, &qword_1EBACC5A8, &unk_1B96CD450);
    sub_1B9495808(v5, v7 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B9495BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_Person(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9495C1C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Person(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Searchfoundation_FindMyCardSection.hasPerson.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_5_40();
  sub_1B9495798(v0 + *(v4 + 20), v1);
  v5 = type metadata accessor for Searchfoundation_Person(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  sub_1B8D9207C(v1, &qword_1EBACC5A8, &unk_1B96CD450);
  return v6;
}

Swift::Void __swiftcall Searchfoundation_FindMyCardSection.clearPerson()()
{
  v1 = *(type metadata accessor for Searchfoundation_FindMyCardSection(0) + 20);
  sub_1B8D9207C(v0 + v1, &qword_1EBACC5A8, &unk_1B96CD450);
  v2 = type metadata accessor for Searchfoundation_Person(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_FindMyCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Searchfoundation_FindMyCardSection.unknownFields.setter(uint64_t a1)
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_1B9495E8C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEDB8);
  __swift_project_value_buffer(v0, qword_1EBACEDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 51;
  *v4 = "person";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t static Searchfoundation_FindMyCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB83B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACEDB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_FindMyCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 51)
    {
      sub_1B9496108(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B9496108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_FindMyCardSection(0);
  type metadata accessor for Searchfoundation_Person(0);
  sub_1B9496A38(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person);
  return sub_1B964C580();
}

uint64_t Searchfoundation_FindMyCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Searchfoundation_Person(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyCardSection = type metadata accessor for Searchfoundation_FindMyCardSection(0);
  sub_1B9495798(v2 + *(MyCardSection + 20), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBACC5A8, &unk_1B96CD450);
  }

  else
  {
    sub_1B9495808(v7, v11);
    sub_1B9496A38(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person, protocol conformance descriptor for Searchfoundation_Person);
    sub_1B964C740();
    result = sub_1B9495C1C(v11);
    if (v3)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t static Searchfoundation_FindMyCardSection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Searchfoundation_Person(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5B0, &qword_1B96B9920) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = *(type metadata accessor for Searchfoundation_FindMyCardSection(0) + 20);
  v16 = *(v11 + 56);
  sub_1B9495798(a1 + v15, v14);
  sub_1B9495798(a2 + v15, &v14[v16]);
  OUTLINED_FUNCTION_117(v14);
  if (v17)
  {
    OUTLINED_FUNCTION_117(&v14[v16]);
    if (v17)
    {
      sub_1B8D9207C(v14, &qword_1EBACC5A8, &unk_1B96CD450);
LABEL_12:
      sub_1B964C2B0();
      sub_1B9496A38(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = sub_1B964C850();
      return v18 & 1;
    }

    goto LABEL_9;
  }

  sub_1B9495798(v14, v10);
  OUTLINED_FUNCTION_117(&v14[v16]);
  if (v17)
  {
    sub_1B9495C1C(v10);
LABEL_9:
    sub_1B8D9207C(v14, &qword_1EBACC5B0, &qword_1B96B9920);
    goto LABEL_10;
  }

  sub_1B9495808(&v14[v16], v6);
  v19 = static Searchfoundation_Person.== infix(_:_:)(v10, v6);
  sub_1B9495C1C(v6);
  sub_1B9495C1C(v10);
  sub_1B8D9207C(v14, &qword_1EBACC5A8, &unk_1B96CD450);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
  return v18 & 1;
}

uint64_t Searchfoundation_FindMyCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_FindMyCardSection(0);
  sub_1B9496A38(&qword_1EBACEDD0, type metadata accessor for Searchfoundation_FindMyCardSection, "ٷ|505\a");
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94966A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9496A38(&qword_1EBACEDE8, type metadata accessor for Searchfoundation_FindMyCardSection, protocol conformance descriptor for Searchfoundation_FindMyCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9496724(uint64_t a1)
{
  v2 = sub_1B9496A38(&qword_1EBACE680, type metadata accessor for Searchfoundation_FindMyCardSection, protocol conformance descriptor for Searchfoundation_FindMyCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9496794(uint64_t a1, uint64_t a2)
{
  sub_1B9496A38(&qword_1EBACE680, type metadata accessor for Searchfoundation_FindMyCardSection, protocol conformance descriptor for Searchfoundation_FindMyCardSection);

  return sub_1B964C5D0();
}

void sub_1B949695C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B94969E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B94969E0(uint64_t a1)
{
  if (!qword_1ED9F9708)
  {
    type metadata accessor for Searchfoundation_Person(255);
    v1 = sub_1B964C930();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9F9708);
    }
  }
}

uint64_t sub_1B9496A38(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t OUTLINED_FUNCTION_5_40()
{

  return type metadata accessor for Searchfoundation_FindMyCardSection(0);
}

uint64_t Searchfoundation_FlightCardSection.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_FlightCardSection(0) + 20);
  if (qword_1EBAB83C8 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBACEE08;
}

uint64_t Searchfoundation_FlightCardSection.punchoutOptions.getter()
{
  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);
}

uint64_t Searchfoundation_FlightCardSection.punchoutOptions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_FlightCardSection(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9498DD8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v0;
}

uint64_t Searchfoundation_FlightCardSection.punchoutOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 16);
  *(v1 + 48) = *(v4 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9496C8C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Searchfoundation_FlightCardSection.punchoutOptions.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      OUTLINED_FUNCTION_4_52();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B9498DD8(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_18(v7 + 16, v2 + 24);
    *(v7 + 16) = v3;
  }

  free(v2);
}

uint64_t Searchfoundation_FlightCardSection.punchoutPickerTitle.getter()
{
  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 24, v2);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_FlightCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_11_38();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9498DD8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 24, v5);
  *(v6 + 24) = v2;
  *(v6 + 32) = v0;
}

uint64_t Searchfoundation_FlightCardSection.punchoutPickerTitle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 24);
  v5 = *(v4 + 32);
  *(v1 + 48) = *(v4 + 24);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9496EA8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {

    Searchfoundation_FlightCardSection.punchoutPickerTitle.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_52();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B9498DD8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 24, v0 + 24);
    *(v7 + 24) = v3;
    *(v7 + 32) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_FlightCardSection.punchoutPickerDismissText.getter()
{
  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 40, v2);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_FlightCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_11_38();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9498DD8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 40, v5);
  *(v6 + 40) = v2;
  *(v6 + 48) = v0;
}

uint64_t Searchfoundation_FlightCardSection.punchoutPickerDismissText.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 40);
  v5 = *(v4 + 48);
  *(v1 + 48) = *(v4 + 40);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B94970B4()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {

    Searchfoundation_FlightCardSection.punchoutPickerDismissText.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_52();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B9498DD8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 40, v0 + 24);
    *(v7 + 40) = v3;
    *(v7 + 48) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_FlightCardSection.canBeHidden.getter()
{
  OUTLINED_FUNCTION_3_63();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 56, v3);
  return *(v2 + 56);
}

uint64_t Searchfoundation_FlightCardSection.canBeHidden.setter()
{
  v3 = OUTLINED_FUNCTION_6_37();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9498DD8(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 56, v4);
  *(v5 + 56) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_FlightCardSection.canBeHidden.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 56);
  *(v1 + 84) = *(v5 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9497254(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9498DD8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 56) = v3;

  free(v1);
}

uint64_t Searchfoundation_FlightCardSection.hasTopPadding_p.getter()
{
  OUTLINED_FUNCTION_3_63();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 57, v3);
  return *(v2 + 57);
}

uint64_t Searchfoundation_FlightCardSection.hasTopPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_6_37();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9498DD8(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 57, v4);
  *(v5 + 57) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_FlightCardSection.hasTopPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 57);
  *(v1 + 84) = *(v5 + 57);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94973D0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9498DD8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 57) = v3;

  free(v1);
}

uint64_t Searchfoundation_FlightCardSection.hasBottomPadding_p.getter()
{
  OUTLINED_FUNCTION_3_63();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 58, v3);
  return *(v2 + 58);
}

uint64_t Searchfoundation_FlightCardSection.hasBottomPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_6_37();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9498DD8(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 58, v4);
  *(v5 + 58) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_FlightCardSection.hasBottomPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 58);
  *(v1 + 84) = *(v5 + 58);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B949754C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9498DD8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 58) = v3;

  free(v1);
}

uint64_t Searchfoundation_FlightCardSection.type.getter()
{
  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 64, v2);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_FlightCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_11_38();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9498DD8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;
}

uint64_t Searchfoundation_FlightCardSection.type.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 64);
  v5 = *(v4 + 72);
  *(v1 + 48) = *(v4 + 64);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9497734()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {

    Searchfoundation_FlightCardSection.type.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_52();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B9498DD8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_18(v7 + 64, v0 + 24);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_FlightCardSection.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_63();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_10_4(v4 + 80, v5);
  v7 = *(v4 + 88);
  *a1 = *(v4 + 80);
  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_1B9497820@<X0>(uint64_t a1@<X8>)
{
  result = Searchfoundation_FlightCardSection.separatorStyle.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B9497864(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Searchfoundation_FlightCardSection.separatorStyle.setter(&v3);
}

uint64_t Searchfoundation_FlightCardSection.separatorStyle.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_11_38();
  v8 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9498DD8(v9);
    *(v3 + v2) = v8;
  }

  result = OUTLINED_FUNCTION_9_3(v8 + 80, v7);
  *(v8 + 80) = v4;
  *(v8 + 88) = v5;
  return result;
}

uint64_t Searchfoundation_FlightCardSection.separatorStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 80);
  v5 = *(v4 + 88);
  *(v1 + 72) = *(v4 + 80);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B949798C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    OUTLINED_FUNCTION_4_52();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9498DD8(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 80) = v3;
  *(v8 + 88) = v6;

  free(v2);
}

uint64_t Searchfoundation_FlightCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-v5 - 8];
  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_521(*(v1 + v7) + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__backgroundColor, v13);
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_Color(0);
  if (OUTLINED_FUNCTION_64_5() == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v9 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *(a1 + v9) = qword_1ED9CD1C8;
    v10 = OUTLINED_FUNCTION_64_5();

    if (v10 != 1)
    {
      return sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_75();
    return sub_1B949928C();
  }

  return result;
}

uint64_t Searchfoundation_FlightCardSection.backgroundColor.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_11_38() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B9498DD8(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_1_75();
  sub_1B949928C();
  v5 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_FlightCardSection.backgroundColor.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_521(*(v1 + v11) + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__backgroundColor, v3);
  OUTLINED_FUNCTION_82();
  if (OUTLINED_FUNCTION_50_1() == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    *&v10[v12] = qword_1ED9CD1C8;
    v13 = OUTLINED_FUNCTION_50_1();

    if (v13 != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_75();
    sub_1B949928C();
  }

  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_FlightCardSection.flight.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE10, &qword_1B96CD608);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5 - 8];
  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_521(*(v1 + v7) + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__flight, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Flight(0);
  if (OUTLINED_FUNCTION_64_5() == 1)
  {
    Searchfoundation_Flight.init()(a1);
    result = OUTLINED_FUNCTION_64_5();
    if (result != 1)
    {
      return sub_1B8D9207C(v6, &qword_1EBACEE10, &qword_1B96CD608);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_61();
    return sub_1B949928C();
  }

  return result;
}

uint64_t sub_1B9497F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B94992E4();
  return a7(v11);
}

uint64_t Searchfoundation_FlightCardSection.flight.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE10, &qword_1B96CD608);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_11_38() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B9498DD8(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_2_61();
  sub_1B949928C();
  v5 = type metadata accessor for Searchfoundation_Flight(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_FlightCardSection.flight.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE10, &qword_1B96CD608);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  type metadata accessor for Searchfoundation_Flight(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_521(*(v1 + v10) + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__flight, v3);
  OUTLINED_FUNCTION_82();
  if (OUTLINED_FUNCTION_50_1() == 1)
  {
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0;
    v9[3] = 0xE000000000000000;
    v9[4] = 0;
    v9[5] = 0xE000000000000000;
    v9[6] = 0;
    v9[7] = 0xE000000000000000;
    v9[8] = MEMORY[0x1E69E7CC0];
    v9[9] = 0;
    v9[10] = 0xE000000000000000;
    v9[11] = 0;
    v9[12] = 0xE000000000000000;
    v9[13] = 0;
    v9[14] = 0xE000000000000000;
    v9[15] = 0;
    v9[16] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (OUTLINED_FUNCTION_50_1() != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACEE10, &qword_1B96CD608);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_61();
    sub_1B949928C();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94982B4(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_1B94992E4();
    a3(v6);
    sub_1B949933C();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

BOOL sub_1B9498394(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-v13 - 8];
  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_521(*(v5 + v15) + *a3, v20);
  sub_1B8D92024();
  v16 = a4(0);
  v17 = __swift_getEnumTagSinglePayload(v14, 1, v16) != 1;
  sub_1B8D9207C(v14, v6, v4);
  return v17;
}

uint64_t sub_1B949849C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  OUTLINED_FUNCTION_16();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = *(type metadata accessor for Searchfoundation_FlightCardSection(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v13 = OUTLINED_FUNCTION_40_0();
    *(v4 + v12) = sub_1B9498DD8(v13);
  }

  v14 = a3(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_FlightCardSection.selectedLegIndex.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_63();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
  OUTLINED_FUNCTION_10_4(v3 + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex, v5);
  return *(v3 + v4);
}

uint64_t Searchfoundation_FlightCardSection.selectedLegIndex.setter()
{
  v3 = OUTLINED_FUNCTION_6_37();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9498DD8(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
  result = OUTLINED_FUNCTION_9_3(v5 + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex, v4);
  *(v5 + v8) = v0;
  return result;
}

uint64_t Searchfoundation_FlightCardSection.selectedLegIndex.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
  OUTLINED_FUNCTION_62_0(v5 + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex);
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94986B0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9498DD8(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  v10 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
  OUTLINED_FUNCTION_11_4();
  *(v7 + v10) = v3;

  free(v2);
}

uint64_t Searchfoundation_FlightCardSection.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_FlightCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_1B9498848()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEDF0);
  __swift_project_value_buffer(v0, qword_1EBACEDF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "flight";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "selectedLegIndex";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_FlightCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB83C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACEDF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B9498CE4()
{
  OUTLINED_FUNCTION_4_52();
  result = sub_1B9498D34();
  qword_1EBACEE08 = result;
  return result;
}

uint64_t sub_1B9498D34()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__flight;
  v4 = type metadata accessor for Searchfoundation_Flight(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex) = 0;
  return v0;
}

uint64_t sub_1B9498DD8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE10, &qword_1B96CD608);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28 = &v24 - v6;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v24 = (v1 + 64);
  v25 = (v1 + 80);
  *(v1 + 88) = 1;
  v7 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__backgroundColor;
  v26 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__backgroundColor;
  v8 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__flight;
  v27 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__flight;
  v10 = type metadata accessor for Searchfoundation_Flight(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v29 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex) = 0;
  swift_beginAccess();
  v11 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v11;
  swift_beginAccess();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v12;
  *(v1 + 32) = v13;

  swift_beginAccess();
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v14;
  *(v1 + 48) = v15;

  swift_beginAccess();
  LOBYTE(v14) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v14;
  swift_beginAccess();
  LOBYTE(v14) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v14;
  swift_beginAccess();
  LOBYTE(v14) = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v14;
  swift_beginAccess();
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v18 = v24;
  swift_beginAccess();
  *v18 = v16;
  *(v1 + 72) = v17;

  swift_beginAccess();
  v19 = *(a1 + 80);
  LOBYTE(v17) = *(a1 + 88);
  v20 = v25;
  swift_beginAccess();
  *v20 = v19;
  *(v1 + 88) = v17;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
  swift_beginAccess();
  LODWORD(v21) = *(a1 + v21);

  v22 = v29;
  swift_beginAccess();
  *(v1 + v22) = v21;
  return v1;
}

uint64_t sub_1B949928C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B94992E4()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B949933C()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

void *sub_1B9499390()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__backgroundColor[0], &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__flight, &qword_1EBACEE10, &qword_1B96CD608);
  return v0;
}

uint64_t sub_1B9499408()
{
  v0 = sub_1B9499390();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_FlightCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_FlightCardSection(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_FlightCardSection._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9498DD8(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B94994FC(v10, a1, a2, a3);
}

uint64_t sub_1B94994FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1B94996B0(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B8FD77E8(a2, a1);
        break;
      case 3:
        sub_1B8FD786C(a2, a1);
        break;
      case 4:
        sub_1B92D3D10(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B92D3D94(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B92D3E18(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B8E16ACC(a2, a1);
        break;
      case 8:
        sub_1B92D3E9C(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B949977C(a2, a1, a3, a4);
        break;
      default:
        if (result == 51)
        {
          sub_1B9499858(a2, a1, a3, a4);
        }

        else if (result == 52)
        {
          sub_1B9499934(a2, a1, a3, a4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B94996B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout(0);
  sub_1B8CD32A8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B949977C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD32A8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9499858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Flight(0);
  sub_1B8CD32A8(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight, protocol conformance descriptor for Searchfoundation_Flight);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9499934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t Searchfoundation_FlightCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Searchfoundation_FlightCardSection(0);
  result = sub_1B9499A2C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9499A2C(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE10, &qword_1B96CD608);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v24 = v23 - v7;
  v8 = type metadata accessor for Searchfoundation_Flight(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v25 = v23 - v10;
  v28 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v28);
  v23[1] = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 2) + 16))
  {
    v23[0] = a1;
    type metadata accessor for Searchfoundation_Punchout(0);
    sub_1B8CD32A8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout, protocol conformance descriptor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    a1 = v23[0];
  }

  swift_beginAccess();
  v13 = *(a1 + 4);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *(a1 + 3) & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (, sub_1B964C700(), result = , !v4))
  {
    swift_beginAccess();
    v15 = *(a1 + 6);
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = *(a1 + 5) & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (, sub_1B964C700(), result = , !v4))
    {
      swift_beginAccess();
      if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v4))
          {
            swift_beginAccess();
            v17 = *(a1 + 9);
            v18 = HIBYTE(v17) & 0xF;
            if ((v17 & 0x2000000000000000) == 0)
            {
              v18 = *(a1 + 8) & 0xFFFFFFFFFFFFLL;
            }

            if (!v18 || (, sub_1B964C700(), result = , !v4))
            {
              swift_beginAccess();
              if (!*(a1 + 10) || (v19 = *(a1 + 88), v26 = *(a1 + 10), v27 = v19, sub_1B92C8A2C(), result = sub_1B964C680(), !v4))
              {
                swift_beginAccess();
                v20 = v25;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v20, 1, v28) == 1)
                {
                  sub_1B8D9207C(v20, &qword_1EBACB050, &unk_1B96B7BD0);
                }

                else
                {
                  v23[0] = type metadata accessor for Searchfoundation_Color;
                  sub_1B949928C();
                  sub_1B8CD32A8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color, protocol conformance descriptor for Searchfoundation_Color);
                  sub_1B964C740();
                  result = sub_1B949933C();
                  if (v4)
                  {
                    return result;
                  }
                }

                swift_beginAccess();
                v21 = v24;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v21, 1, v8) == 1)
                {
                  sub_1B8D9207C(v21, &qword_1EBACEE10, &qword_1B96CD608);
                }

                else
                {
                  sub_1B949928C();
                  sub_1B8CD32A8(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight, protocol conformance descriptor for Searchfoundation_Flight);
                  sub_1B964C740();
                  result = sub_1B949933C();
                  if (v4)
                  {
                    return result;
                  }
                }

                v22 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
                swift_beginAccess();
                result = *(a1 + v22);
                if (result)
                {
                  return sub_1B964C710();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_FlightCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_3_63();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B949A1DC(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD32A8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

BOOL sub_1B949A1DC(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for Searchfoundation_Flight(0);
  MEMORY[0x1EEE9AC00](v58);
  v55[1] = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE38, &qword_1B96CD850);
  MEMORY[0x1EEE9AC00](v57);
  v59 = v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE10, &qword_1B96CD608);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v55[2] = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = v55 - v9;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  MEMORY[0x1EEE9AC00](v12);
  v61 = v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v55 - v18;
  swift_beginAccess();
  v20 = *(a1 + 16);
  swift_beginAccess();
  v21 = *(a2 + 16);

  sub_1B8D67B1C(v20, v21);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v25 = *(a1 + 24);
  v24 = *(a1 + 32);
  swift_beginAccess();
  v26 = v25 == *(a2 + 24) && v24 == *(a2 + 32);
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v27 = *(a1 + 40);
  v28 = *(a1 + 48);
  swift_beginAccess();
  v29 = v27 == *(a2 + 40) && v28 == *(a2 + 48);
  if (!v29 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v30 = *(a1 + 56);
  swift_beginAccess();
  if (v30 != *(a2 + 56))
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v31 = *(a1 + 57);
  swift_beginAccess();
  if (v31 != *(a2 + 57))
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v32 = *(a1 + 58);
  swift_beginAccess();
  if (v32 != *(a2 + 58))
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v33 = *(a1 + 64);
  v34 = *(a1 + 72);
  swift_beginAccess();
  v35 = v33 == *(a2 + 64) && v34 == *(a2 + 72);
  if (!v35 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v36 = *(a1 + 80);
  v37 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v36, v37, *(a2 + 80)))
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v38 = *(v12 + 48);
  v39 = v61;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v39, 1, v10) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v39 + v38, 1, v10) != 1)
    {
      v43 = v56;
      sub_1B949928C();
      if (*&v17[*(v10 + 20)] != *&v43[*(v10 + 20)])
      {

        sub_1B947FDE4();
        v45 = v44;

        if ((v45 & 1) == 0)
        {
          sub_1B949933C();
          sub_1B8D9207C(v19, &qword_1EBACB050, &unk_1B96B7BD0);
          sub_1B949933C();
          v42 = v39;
          v40 = &qword_1EBACB050;
          v41 = &unk_1B96B7BD0;
          goto LABEL_39;
        }
      }

      sub_1B964C2B0();
      sub_1B8CD32A8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v46 = sub_1B964C850();
      sub_1B949933C();
      sub_1B8D9207C(v19, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B949933C();
      sub_1B8D9207C(v39, &qword_1EBACB050, &unk_1B96B7BD0);
      if ((v46 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_30;
    }

    sub_1B8D9207C(v19, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B949933C();
LABEL_26:
    v40 = &qword_1EBACB058;
    v41 = &unk_1B96CA9D0;
    v42 = v39;
LABEL_39:
    sub_1B8D9207C(v42, v40, v41);
    goto LABEL_40;
  }

  sub_1B8D9207C(v19, &qword_1EBACB050, &unk_1B96B7BD0);
  if (__swift_getEnumTagSinglePayload(v39 + v38, 1, v10) != 1)
  {
    goto LABEL_26;
  }

  sub_1B8D9207C(v39, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_30:
  swift_beginAccess();
  v47 = v60;
  sub_1B8D92024();
  swift_beginAccess();
  v48 = *(v57 + 48);
  v49 = v59;
  sub_1B8D92024();
  sub_1B8D92024();
  v50 = v58;
  if (__swift_getEnumTagSinglePayload(v49, 1, v58) == 1)
  {
    sub_1B8D9207C(v47, &qword_1EBACEE10, &qword_1B96CD608);
    if (__swift_getEnumTagSinglePayload(v49 + v48, 1, v50) == 1)
    {
      sub_1B8D9207C(v49, &qword_1EBACEE10, &qword_1B96CD608);
LABEL_37:
      v52 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
      swift_beginAccess();
      LODWORD(v52) = *(a1 + v52);

      v53 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
      swift_beginAccess();
      LODWORD(v53) = *(a2 + v53);

      return v52 == v53;
    }

    goto LABEL_35;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v49 + v48, 1, v50) == 1)
  {
    sub_1B8D9207C(v60, &qword_1EBACEE10, &qword_1B96CD608);
    sub_1B949933C();
LABEL_35:
    v40 = &qword_1EBACEE38;
    v41 = &qword_1B96CD850;
    v42 = v49;
    goto LABEL_39;
  }

  sub_1B949928C();
  v51 = static Searchfoundation_Flight.== infix(_:_:)();
  sub_1B949933C();
  sub_1B8D9207C(v60, &qword_1EBACEE10, &qword_1B96CD608);
  sub_1B949933C();
  sub_1B8D9207C(v49, &qword_1EBACEE10, &qword_1B96CD608);
  if (v51)
  {
    goto LABEL_37;
  }

LABEL_40:

  return 0;
}

uint64_t Searchfoundation_FlightCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_FlightCardSection(0);
  sub_1B8CD32A8(&qword_1EBACEE18, type metadata accessor for Searchfoundation_FlightCardSection, protocol conformance descriptor for Searchfoundation_FlightCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B949ACFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD32A8(&qword_1EBACEE30, type metadata accessor for Searchfoundation_FlightCardSection, protocol conformance descriptor for Searchfoundation_FlightCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B949AD7C(uint64_t a1)
{
  v2 = sub_1B8CD32A8(&qword_1EBACE710, type metadata accessor for Searchfoundation_FlightCardSection, protocol conformance descriptor for Searchfoundation_FlightCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B949ADEC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD32A8(&qword_1EBACE710, type metadata accessor for Searchfoundation_FlightCardSection, protocol conformance descriptor for Searchfoundation_FlightCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B949AFB4(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_FlightCardSection._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B949B040(uint64_t a1)
{
  sub_1B949B180(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    sub_1B949B180(319, &qword_1ED9F2E90, type metadata accessor for Searchfoundation_Flight);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B949B180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_52()
{
  type metadata accessor for Searchfoundation_FlightCardSection._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_37()
{
  type metadata accessor for Searchfoundation_FlightCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_11_38()
{
  type metadata accessor for Searchfoundation_FlightCardSection(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Searchfoundation_Flight.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_148_5(a1);
  v1[8] = MEMORY[0x1E69E7CC0];
  v1[9] = 0;
  v1[10] = v2;
  v1[11] = 0;
  v1[12] = v2;
  v1[13] = 0;
  v1[14] = v2;
  v1[15] = 0;
  v1[16] = v2;
  type metadata accessor for Searchfoundation_Flight(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B949B334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AF82C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_FlightStatus.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B949B41C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_FlightStatus.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B949B478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AF7D8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_PegasusFlightState.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B949B560@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_PegasusFlightState.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Searchfoundation_ApiResultType.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B949B5C4@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_ApiResultType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B949B5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE3E8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_ApiResultType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B949B6E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_ApiResultType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B949B730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE394();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_ApiStatus.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B949B818@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_ApiStatus.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Searchfoundation_Flight.carrierCode.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.carrierName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.flightNumber.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.legs.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Searchfoundation_Flight.operatorCarrierCode.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.operatorFlightNumber.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.carrierPhoneNumber.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.carrierWebsite.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_Flight(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_FlightLeg.status.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_15_25();
  result = OUTLINED_FUNCTION_521(v1 + 16, v5);
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t Searchfoundation_FlightLeg.status.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = type metadata accessor for Searchfoundation_FlightLeg(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v1 + v2);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94A38C0(v9);
    *(v3 + v2) = v8;
  }

  result = OUTLINED_FUNCTION_18(v8 + 16, v11);
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  return result;
}

uint64_t Searchfoundation_FlightLeg.status.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_33_14();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_521(v5 + 16, v3);
  v6 = *(v5 + 24);
  v3[9] = *(v5 + 16);
  *(v3 + 80) = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B949BE08()
{
  OUTLINED_FUNCTION_243();
  v7 = OUTLINED_FUNCTION_4_15(v6);
  v8 = *(v5 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = *(v0 + 84);
    v10 = *(v0 + 88);
    OUTLINED_FUNCTION_47_14();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94A38C0(v11);
    *(v10 + v9) = v8;
  }

  v12 = 48;
  if (v2)
  {
    v12 = 24;
  }

  OUTLINED_FUNCTION_18(v8 + 16, v0 + v12);
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Searchfoundation_FlightLeg.departurePublishedTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.departurePublishedTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_8_40(v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v10 = OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9(v10);
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B949C110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B94A474C();
  return a7(v11);
}

uint64_t Searchfoundation_FlightLeg.departureActualTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.departureActualTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_8_40(v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v10 = OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9(v10);
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B949C3B0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B94A474C();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B94A47A4();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B949C480(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21[-v12 - 8];
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_521(v5 + *a3, v21);
  sub_1B8D92024();
  v14 = (a4)(0);
  OUTLINED_FUNCTION_178(v13, 1, v14);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = OUTLINED_FUNCTION_196();
  sub_1B8D9207C(v17, v18, v4);
  return v16;
}

void sub_1B949C57C()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_35();
  v8 = *(type metadata accessor for Searchfoundation_FlightLeg(v7) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v0 + v8) = sub_1B94A38C0(v9);
  }

  v2(0);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B949C66C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightLeg.departureTerminal.setter(v1, v2);
}

uint64_t Searchfoundation_FlightLeg.departureTerminal.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_26_23(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B949C748(void *a1)
{
  v1 = OUTLINED_FUNCTION_33_14();
  OUTLINED_FUNCTION_6_2(v1);

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B949C794(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightLeg.departureGate.setter(v1, v2);
}

uint64_t sub_1B949C7E0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_16();
  v8 = *(type metadata accessor for Searchfoundation_FlightLeg(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v11);
    *(v7 + v8) = v10;
  }

  v12 = (v10 + *a3);
  OUTLINED_FUNCTION_18(v12, v14);
  *v12 = v5;
  v12[1] = v3;
}

uint64_t Searchfoundation_FlightLeg.departureGate.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_26_23(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_FlightLeg.departureAirport.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF58, &qword_1B96CD858);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_Airport(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_Airport.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_148_5(a1);
  v1[8] = 0;
  v1[9] = v2;
  v1[10] = 0;
  v1[11] = v2;
  v1[12] = 0;
  v1[13] = v2;
  v1[14] = 0;
  v1[15] = v2;
  v1[16] = 0;
  v1[17] = v2;
  type metadata accessor for Searchfoundation_Airport(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_TimeZone(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Searchfoundation_FlightLeg.departureAirport.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  type metadata accessor for Searchfoundation_Airport(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_53_16(v11);
    type metadata accessor for Searchfoundation_TimeZone(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    type metadata accessor for Searchfoundation_LatLng(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF58, &qword_1B96CD858);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_32();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.arrivalPublishedTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.arrivalPublishedTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_8_40(v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v10 = OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9(v10);
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.arrivalActualTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.arrivalActualTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_8_40(v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v10 = OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9(v10);
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B949D11C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightLeg.arrivalTerminal.setter(v1, v2);
}

uint64_t Searchfoundation_FlightLeg.arrivalTerminal.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_26_23(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B949D1F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightLeg.arrivalGate.setter(v1, v2);
}

uint64_t Searchfoundation_FlightLeg.arrivalGate.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_26_23(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_FlightLeg.arrivalAirport.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF58, &qword_1B96CD858);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_Airport(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.arrivalAirport.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  type metadata accessor for Searchfoundation_Airport(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_53_16(v11);
    type metadata accessor for Searchfoundation_TimeZone(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    type metadata accessor for Searchfoundation_LatLng(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF58, &qword_1B96CD858);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_32();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B949D578()
{
  OUTLINED_FUNCTION_79_4();
  v1 = OUTLINED_FUNCTION_690();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Airport(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    Searchfoundation_Airport.init()(v0);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v6, &qword_1EBACEF58, &qword_1B96CD858);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t Searchfoundation_FlightLeg.divertedAirport.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF58, &qword_1B96CD858);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_Airport(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.divertedAirport.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  type metadata accessor for Searchfoundation_Airport(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_53_16(v11);
    type metadata accessor for Searchfoundation_TimeZone(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    type metadata accessor for Searchfoundation_LatLng(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF58, &qword_1B96CD858);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_32();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B949D910(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightLeg.title.setter(v1, v2);
}

uint64_t Searchfoundation_FlightLeg.title.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_26_23(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B949D9EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightLeg.baggageClaim.setter(v1, v2);
}

uint64_t Searchfoundation_FlightLeg.baggageClaim.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_26_23(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B949DABC()
{
  OUTLINED_FUNCTION_243();
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 56);
  if (v6)
  {
    v7 = v1;

    v8 = OUTLINED_FUNCTION_461();
    v7(v8);
  }

  else
  {
    v9 = v0;
    v10 = *(v3 + 72);
    v11 = *(v3 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v3 + 72);
      v15 = *(v3 + 64);
      OUTLINED_FUNCTION_47_14();
      v16 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B94A38C0(v16);
      *(v15 + v14) = v13;
    }

    v17 = (v13 + *v9);
    OUTLINED_FUNCTION_18(v17, v3 + 24);
    *v17 = v4;
    v17[1] = v5;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

uint64_t Searchfoundation_FlightLeg.departureGateClosedTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.departureGateClosedTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_8_40(v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v10 = OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9(v10);
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.departureRunwayTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.departureRunwayTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_8_40(v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v10 = OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9(v10);
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.arrivalRunwayTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.arrivalRunwayTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_8_40(v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v10 = OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9(v10);
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.arrivalGateTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.arrivalGateTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_8_40(v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v10 = OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9(v10);
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B949E558()
{
  OUTLINED_FUNCTION_79_4();
  v0 = OUTLINED_FUNCTION_690();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_157_10();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v5, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t Searchfoundation_FlightLeg.lastUpdatedTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.lastUpdatedTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_8_40(v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  v10 = OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9(v10);
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.pegasusDisplayFields.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF60, &qword_1B96CD860);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17[-v5 - 8];
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDisplayFields, v17);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  OUTLINED_FUNCTION_57(v6);
  if (v7)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v8 = type metadata accessor for Searchfoundation_Date(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
    result = OUTLINED_FUNCTION_57(v6);
    if (!v7)
    {
      return sub_1B8D9207C(v6, &qword_1EBACEF60, &qword_1B96CD860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_15();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t Searchfoundation_FlightLeg.pegasusDisplayFields.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF60, &qword_1B96CD860);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_PegasusDisplayFields.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v1 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
}

void Searchfoundation_FlightLeg.pegasusDisplayFields.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  type metadata accessor for Searchfoundation_PegasusDisplayFields(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_8_40(v11);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = OUTLINED_FUNCTION_167_8();
    OUTLINED_FUNCTION_11_39(v13);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF60, &qword_1B96CD860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_15();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.pegasusDefinedState.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_33_14();
  v4 = *(v1 + v3) + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
  result = OUTLINED_FUNCTION_521(v4, v7);
  v6 = *(v4 + 8);
  *a1 = *v4;
  *(a1 + 8) = v6;
  return result;
}

void *sub_1B949ED48@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B949ED90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t Searchfoundation_FlightLeg.pegasusDefinedState.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = type metadata accessor for Searchfoundation_FlightLeg(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v1 + v2);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94A38C0(v9);
    *(v3 + v2) = v8;
  }

  v10 = v8 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
  result = OUTLINED_FUNCTION_18(v8 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState, v12);
  *v10 = v4;
  *(v10 + 8) = v5;
  return result;
}

uint64_t Searchfoundation_FlightLeg.pegasusDefinedState.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_33_14();
  *(v3 + 21) = v4;
  OUTLINED_FUNCTION_41();
  v5 = *(v1 + 8);
  v3[9] = *v1;
  *(v3 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B949EEDC()
{
  OUTLINED_FUNCTION_243();
  v7 = OUTLINED_FUNCTION_4_15(v6);
  v8 = *(v5 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = *(v0 + 84);
    v10 = *(v0 + 88);
    OUTLINED_FUNCTION_47_14();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94A38C0(v11);
    *(v10 + v9) = v8;
  }

  v12 = 48;
  if (v2)
  {
    v12 = 24;
  }

  v13 = v8 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
  OUTLINED_FUNCTION_18(v13, v0 + v12);
  *v13 = v3;
  *(v13 + 8) = v4;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Searchfoundation_FlightLeg.gateArrivalTimes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_FlightDateDescriptor.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v1 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
}

void Searchfoundation_FlightLeg.gateArrivalTimes.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  type metadata accessor for Searchfoundation_FlightDateDescriptor(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_145_8(v11);
    v13 = OUTLINED_FUNCTION_167_8();
    OUTLINED_FUNCTION_11_39(v13);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF68, &qword_1B96CD868);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.runwayArrivalTimes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.runwayArrivalTimes.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  type metadata accessor for Searchfoundation_FlightDateDescriptor(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_145_8(v11);
    v13 = OUTLINED_FUNCTION_167_8();
    OUTLINED_FUNCTION_11_39(v13);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF68, &qword_1B96CD868);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.gateDepartureTimes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.gateDepartureTimes.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  type metadata accessor for Searchfoundation_FlightDateDescriptor(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_145_8(v11);
    v13 = OUTLINED_FUNCTION_167_8();
    OUTLINED_FUNCTION_11_39(v13);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF68, &qword_1B96CD868);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B949F754@<X0>(_DWORD *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_209();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  OUTLINED_FUNCTION_57(v7);
  if (!v8)
  {
    return sub_1B94A46F4();
  }

  *a1 = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v9 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  result = OUTLINED_FUNCTION_57(v7);
  if (!v8)
  {
    return sub_1B8D9207C(v7, &qword_1EBACEF68, &qword_1B96CD868);
  }

  return result;
}

uint64_t Searchfoundation_FlightLeg.runwayDepartureTimes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_41_23();
  if ((OUTLINED_FUNCTION_47(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B94A38C0(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_135_7();
  v5 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.runwayDepartureTimes.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  type metadata accessor for Searchfoundation_FlightDateDescriptor(v6);
  OUTLINED_FUNCTION_59_1();
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_145_8(v11);
    v13 = OUTLINED_FUNCTION_167_8();
    OUTLINED_FUNCTION_11_39(v13);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF68, &qword_1B96CD868);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Searchfoundation_FlightLeg.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t Searchfoundation_FlightLeg.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Searchfoundation_FlightLeg(0) + 20);
  if (qword_1EBAB8400 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBACEEF0;
}

uint64_t Searchfoundation_Airport.timezone.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC690, &qword_1B96B9A00);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_Airport(v5);
  OUTLINED_FUNCTION_115(*(v6 + 56));
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_TimeZone(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC690, &qword_1B96B9A00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_21();
    OUTLINED_FUNCTION_182();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t Searchfoundation_Airport.timezone.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_Airport(v1);
  sub_1B8D9207C(v0 + *(v2 + 56), &qword_1EBACC690, &qword_1B96B9A00);
  OUTLINED_FUNCTION_23_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B94A46F4();
  type metadata accessor for Searchfoundation_TimeZone(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_Airport.timezone.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_TimeZone(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Searchfoundation_Airport(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 56));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACC690, &qword_1B96B9A00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_21();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_Airport.hasTimezone.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_Airport(v5);
  OUTLINED_FUNCTION_115(*(v6 + 56));
  sub_1B8D92024();
  v7 = type metadata accessor for Searchfoundation_TimeZone(0);
  OUTLINED_FUNCTION_178(v0, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v10, v11, &qword_1B96B9A00);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_Airport.clearTimezone()()
{
  v1 = type metadata accessor for Searchfoundation_Airport(0);
  sub_1B8D9207C(v0 + *(v1 + 56), &qword_1EBACC690, &qword_1B96B9A00);
  type metadata accessor for Searchfoundation_TimeZone(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_Airport.location.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_Airport(v5);
  OUTLINED_FUNCTION_115(*(v6 + 60));
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0;
    a1[1] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_24();
    OUTLINED_FUNCTION_182();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t Searchfoundation_Airport.location.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_Airport(v1);
  sub_1B8D9207C(v0 + *(v2 + 60), &qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_122_0();
  sub_1B94A46F4();
  type metadata accessor for Searchfoundation_LatLng(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_Airport.location.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_LatLng(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Searchfoundation_Airport(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 60));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    *v9 = 0;
    v9[1] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_24();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_Airport.hasLocation.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_Airport(v5);
  OUTLINED_FUNCTION_115(*(v6 + 60));
  sub_1B8D92024();
  v7 = type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_178(v0, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v10, v11, &unk_1B96CB440);
  return v9;
}

Swift::Void __swiftcall Searchfoundation_Airport.clearLocation()()
{
  v1 = type metadata accessor for Searchfoundation_Airport(0);
  sub_1B8D9207C(v0 + *(v1 + 60), &qword_1EBACAFA0, &unk_1B96CB440);
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_Airport.state.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Searchfoundation_Airport.postalCode.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_Airport.countryCode.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Searchfoundation_Airport.country.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Searchfoundation_Airport.name.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t sub_1B94A067C()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B94A0704()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_Airport.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_Airport(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ApiResults.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Searchfoundation_ApiResults.resultType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Searchfoundation_ApiResults.flights.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Searchfoundation_ApiResults.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_ApiResults(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Searchfoundation_ApiResults.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ApiResults(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Searchfoundation_ApiResults.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ApiResults(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ApiResults.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Searchfoundation_ApiResults(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Searchfoundation_FlightDateDescriptor.scheduled.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_Date(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_FlightDateDescriptor(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 24));
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_84_9(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_FlightDateDescriptor.current.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_Date(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_FlightDateDescriptor(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 28));
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_84_9(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_FlightDateDescriptor.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_FlightDateDescriptor(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_PegasusDisplayFields.displayStatus.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1B94A0DE0()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v0(v6);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_157_10();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t sub_1B94A0EE0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_122_0();
  sub_1B94A46F4();
  type metadata accessor for Searchfoundation_Date(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Searchfoundation_PegasusDisplayFields.departureTime.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_Date(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_PegasusDisplayFields(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 24));
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_84_9(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B94A1070(void (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_303();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_35();
  a1(v7);
  OUTLINED_FUNCTION_78_4();
  v8 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_178(v1, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  OUTLINED_FUNCTION_176_2();
  sub_1B8D9207C(v11, v12, v13);
  return v10;
}

uint64_t sub_1B94A1138(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 24), &qword_1EBAB8E30, &qword_1B964D630);
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B94A11BC()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v0(v6);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_157_10();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t sub_1B94A12BC()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 28), &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_122_0();
  sub_1B94A46F4();
  type metadata accessor for Searchfoundation_Date(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Searchfoundation_PegasusDisplayFields.arrivalTime.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  *(v1 + 16) = type metadata accessor for Searchfoundation_Date(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Searchfoundation_PegasusDisplayFields(v12);
  OUTLINED_FUNCTION_64_0(*(v13 + 28));
  v14 = OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_84_9(v14);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B94A145C()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = **v4;
  if (v10)
  {
    OUTLINED_FUNCTION_128();
    sub_1B94A474C();
    sub_1B8D9207C(v9 + v5, v3, v2);
    sub_1B94A46F4();
    OUTLINED_FUNCTION_187_1();
    sub_1B94A47A4();
  }

  else
  {
    sub_1B8D9207C(v9 + v5, v0, v1);
    sub_1B94A46F4();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v11);
}

uint64_t sub_1B94A1554(void (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_303();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_35();
  a1(v7);
  OUTLINED_FUNCTION_78_4();
  v8 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_178(v1, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  OUTLINED_FUNCTION_176_2();
  sub_1B8D9207C(v11, v12, v13);
  return v10;
}

uint64_t sub_1B94A161C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 28), &qword_1EBAB8E30, &qword_1B964D630);
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B94A16A0()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B94A1728()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_PegasusDisplayFields.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_PegasusDisplayFields(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B94A17D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEE60);
  __swift_project_value_buffer(v0, qword_1EBACEE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FlightStatusUnknown";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FlightStatusActive";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FlightStatusCanceled";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FlightStatusDiverted";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "FlightStatusDataSourceNeeded";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "FlightStatusLanded";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "FlightStatusNotOperational";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "FlightStatusRedirected";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "FlightStatusScheduled";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "FlightStatusDelayed";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94A1BB8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEE78);
  __swift_project_value_buffer(v0, qword_1EBACEE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PegasusFlightStateUnknown";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PegasusFlightStateScheduled";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PegasusFlightStateDeparted";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PegasusFlightStateEnRoute";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PegasusFlightStateLanded";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PegasusFlightStateArrived";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PegasusFlightStateCancelled";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "PegasusFlightStateRedirected";
  *(v22 + 1) = 28;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "PegasusFlightStateDiverted";
  *(v24 + 1) = 26;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "PegasusFlightStateNotOperational";
  *(v26 + 1) = 32;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94A1F98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEE90);
  __swift_project_value_buffer(v0, qword_1EBACEE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ApiResultTypeUnknown";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ApiResultTypeFlights";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94A2188()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEEA8);
  __swift_project_value_buffer(v0, qword_1EBACEEA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ApiStatusOk";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ApiStatusNoResults";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ApiStatusError";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94A23CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEEC0);
  __swift_project_value_buffer(v0, qword_1EBACEEC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "flightID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "carrierCode";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "carrierName";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "flightNumber";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "legs";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "operatorCarrierCode";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "operatorFlightNumber";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "carrierPhoneNumber";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "carrierWebsite";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_Flight.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B94A2824(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B94A2824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_FlightLeg(0);
  sub_1B94AE34C(&qword_1EBACEF70, type metadata accessor for Searchfoundation_FlightLeg, protocol conformance descriptor for Searchfoundation_FlightLeg);
  return sub_1B964C570();
}

uint64_t Searchfoundation_Flight.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
        {
          if (!*(*(v1 + 64) + 16) || (type metadata accessor for Searchfoundation_FlightLeg(0), sub_1B94AE34C(&qword_1EBACEF70, type metadata accessor for Searchfoundation_FlightLeg, protocol conformance descriptor for Searchfoundation_FlightLeg), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v7 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
            {
              OUTLINED_FUNCTION_1();
              if (!v8 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
              {
                OUTLINED_FUNCTION_1();
                if (!v9 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
                {
                  OUTLINED_FUNCTION_1();
                  if (!v10 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
                  {
                    type metadata accessor for Searchfoundation_Flight(0);
                    OUTLINED_FUNCTION_12();
                    return sub_1B964C290();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_Flight.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7C720(v1[8], v0[8]);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v1[9] == v0[9] && v1[10] == v0[10];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v1[11] == v0[11] && v1[12] == v0[12];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v1[13] == v0[13] && v1[14] == v0[14];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v1[15] == v0[15] && v1[16] == v0[16];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_Flight(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  v14 = sub_1B94AE34C(v12, v13, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v14) & 1;
}

uint64_t sub_1B94A2CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE34C(&qword_1EBACF110, type metadata accessor for Searchfoundation_Flight, protocol conformance descriptor for Searchfoundation_Flight);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94A2D64(uint64_t a1)
{
  v2 = sub_1B94AE34C(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight, protocol conformance descriptor for Searchfoundation_Flight);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94A2DD4(uint64_t a1, uint64_t a2)
{
  sub_1B94AE34C(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight, protocol conformance descriptor for Searchfoundation_Flight);

  return sub_1B964C5D0();
}

uint64_t sub_1B94A2E6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEED8);
  __swift_project_value_buffer(v0, qword_1EBACEED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1B966D600;
  v4 = v56 + v3 + v1[14];
  *(v56 + v3) = 1;
  *v4 = "status";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v56 + v3 + v2 + v1[14];
  *(v56 + v3 + v2) = 2;
  *v8 = "departurePublishedTime";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v56 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "departureActualTime";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v56 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "departureTerminal";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v56 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "departureGate";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v56 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "departureAirport";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v56 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "arrivalPublishedTime";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v56 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "arrivalActualTime";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v56 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "arrivalTerminal";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v56 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "arrivalGate";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v56 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "arrivalAirport";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v56 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "divertedAirport";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  v29 = (v56 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "title";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v7();
  v31 = (v56 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "baggageClaim";
  *(v32 + 1) = 12;
  v32[16] = 2;
  v7();
  v33 = (v56 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "departureGateClosedTime";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v7();
  v35 = (v56 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "departureRunwayTime";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v7();
  v37 = (v56 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "arrivalRunwayTime";
  *(v38 + 1) = 17;
  v38[16] = 2;
  v7();
  v39 = (v56 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "arrivalGateTime";
  *(v40 + 1) = 15;
  v40[16] = 2;
  v7();
  v41 = (v56 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "lastUpdatedTime";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v7();
  v43 = (v56 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "pegasusDisplayFields";
  *(v44 + 1) = 20;
  v44[16] = 2;
  v7();
  v45 = (v56 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "pegasusDefinedState";
  *(v46 + 1) = 19;
  v46[16] = 2;
  v7();
  v47 = (v56 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "gateArrivalTimes";
  *(v48 + 1) = 16;
  v48[16] = 2;
  v7();
  v49 = (v56 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "runwayArrivalTimes";
  *(v50 + 1) = 18;
  v50[16] = 2;
  v7();
  v51 = (v56 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "gateDepartureTimes";
  *(v52 + 1) = 18;
  v52[16] = 2;
  v7();
  v53 = (v56 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "runwayDepartureTimes";
  *(v54 + 1) = 20;
  v54[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B94A35C4()
{
  type metadata accessor for Searchfoundation_FlightLeg._StorageClass(0);
  swift_allocObject();
  result = sub_1B94A3604();
  qword_1EBACEEF0 = result;
  return result;
}

uint64_t sub_1B94A3604()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departurePublishedTime;
  v2 = type metadata accessor for Searchfoundation_Date(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureActualTime, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureTerminal);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGate);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureAirport;
  v6 = type metadata accessor for Searchfoundation_Airport(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalPublishedTime, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalActualTime, 1, 1, v2);
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate[0]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalAirport, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__divertedAirport, 1, 1, v6);
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGateClosedTime, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureRunwayTime, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalRunwayTime, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGateTime, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__lastUpdatedTime, 1, 1, v2);
  v11 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDisplayFields;
  v12 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  v13 = v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateArrivalTimes;
  v15 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  __swift_storeEnumTagSinglePayload(v0 + v14, 1, 1, v15);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayArrivalTimes, 1, 1, v15);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes, 1, 1, v15);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayDepartureTimes, 1, 1, v15);
  return v0;
}

uint64_t sub_1B94A38C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v78 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF60, &qword_1B96CD860);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF58, &qword_1B96CD858);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v79 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  MEMORY[0x1EEE9AC00](v9 - 8);
  *(v1 + 16) = 0;
  v54 = (v1 + 16);
  *(v1 + 24) = 1;
  v10 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departurePublishedTime;
  v55 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departurePublishedTime;
  v11 = type metadata accessor for Searchfoundation_Date(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v56 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureActualTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureActualTime, 1, 1, v11);
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureTerminal);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGate);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureAirport;
  v57 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureAirport;
  v15 = type metadata accessor for Searchfoundation_Airport(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v58 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalPublishedTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalPublishedTime, 1, 1, v11);
  v59 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalActualTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalActualTime, 1, 1, v11);
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal);
  v60 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate[0]);
  v61 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate[0]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v62 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalAirport;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalAirport, 1, 1, v15);
  v63 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__divertedAirport;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__divertedAirport, 1, 1, v15);
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title);
  v64 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim);
  v65 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v66 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGateClosedTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGateClosedTime, 1, 1, v11);
  v67 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureRunwayTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureRunwayTime, 1, 1, v11);
  v68 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalRunwayTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalRunwayTime, 1, 1, v11);
  v70 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGateTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGateTime, 1, 1, v11);
  v71 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__lastUpdatedTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__lastUpdatedTime, 1, 1, v11);
  v20 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDisplayFields;
  v69 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDisplayFields;
  v21 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v22 = v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
  v72 = v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateArrivalTimes;
  v73 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateArrivalTimes;
  v24 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  v74 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayArrivalTimes;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayArrivalTimes, 1, 1, v24);
  v75 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes, 1, 1, v24);
  v76 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayDepartureTimes;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayDepartureTimes, 1, 1, v24);
  swift_beginAccess();
  v25 = *(a1 + 16);
  LOBYTE(v23) = *(a1 + 24);
  v26 = v54;
  swift_beginAccess();
  *v26 = v25;
  *(v1 + 24) = v23;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v27 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureTerminal);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  swift_beginAccess();
  *v12 = v29;
  v12[1] = v28;

  v30 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGate);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  swift_beginAccess();
  *v13 = v32;
  v13[1] = v31;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v33 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  v36 = v60;
  swift_beginAccess();
  *v36 = v35;
  v36[1] = v34;

  v37 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate[0]);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  v40 = v61;
  swift_beginAccess();
  *v40 = v39;
  v40[1] = v38;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v41 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  v44 = v64;
  swift_beginAccess();
  *v44 = v43;
  v44[1] = v42;

  v45 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim);
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];
  v48 = v65;
  swift_beginAccess();
  *v48 = v47;
  v48[1] = v46;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState);
  swift_beginAccess();
  v50 = *v49;
  LOBYTE(v49) = *(v49 + 8);
  v51 = v72;
  swift_beginAccess();
  *v51 = v50;
  *(v51 + 8) = v49;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B94A46F4()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B94A474C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B94A47A4()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B94A4858()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departurePublishedTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureActualTime, &qword_1EBAB8E30, &qword_1B964D630);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureAirport, &qword_1EBACEF58, &qword_1B96CD858);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalPublishedTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalActualTime, &qword_1EBAB8E30, &qword_1B964D630);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalAirport, &qword_1EBACEF58, &qword_1B96CD858);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__divertedAirport, &qword_1EBACEF58, &qword_1B96CD858);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGateClosedTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureRunwayTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalRunwayTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGateTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__lastUpdatedTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDisplayFields, &qword_1EBACEF60, &qword_1B96CD860);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateArrivalTimes, &qword_1EBACEF68, &qword_1B96CD868);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayArrivalTimes, &qword_1EBACEF68, &qword_1B96CD868);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes, &qword_1EBACEF68, &qword_1B96CD868);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayDepartureTimes, &qword_1EBACEF68, &qword_1B96CD868);
  return v0;
}

uint64_t sub_1B94A4AD0()
{
  v0 = sub_1B94A4858();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_FlightLeg.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_FlightLeg(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Searchfoundation_FlightLeg._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B94A4BC4(v10, a1, a2, a3);
}

uint64_t sub_1B94A4BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B94A4EA8(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B94A4F3C(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B94A5018(a2, a1, a3, a4);
        break;
      case 4:
      case 5:
      case 9:
      case 10:
      case 13:
      case 14:
        sub_1B8E17690();
        break;
      case 6:
        sub_1B94A50F4(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B94A51D0(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B94A52AC(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B94A5388(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B94A5464(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B94A5540(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B94A561C(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B94A56F8(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B94A57D4(a2, a1, a3, a4);
        break;
      case 19:
        sub_1B94A58B0(a2, a1, a3, a4);
        break;
      case 20:
        sub_1B94A598C(a2, a1, a3, a4);
        break;
      case 21:
        sub_1B94A5A68(a2, a1, a3, a4);
        break;
      case 22:
        sub_1B94A5B04(a2, a1, a3, a4);
        break;
      case 23:
        sub_1B94A5BE0(a2, a1, a3, a4);
        break;
      case 24:
        sub_1B94A5CBC(a2, a1, a3, a4);
        break;
      case 25:
        sub_1B94A5D98(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B94A4EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B94AF82C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B94A4F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A50F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Airport(0);
  sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport, protocol conformance descriptor for Searchfoundation_Airport);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A51D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A52AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Airport(0);
  sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport, protocol conformance descriptor for Searchfoundation_Airport);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Airport(0);
  sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport, protocol conformance descriptor for Searchfoundation_Airport);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A561C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A56F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A57D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A58B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A598C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  sub_1B94AE34C(&qword_1EBACF0C8, type metadata accessor for Searchfoundation_PegasusDisplayFields, protocol conformance descriptor for Searchfoundation_PegasusDisplayFields);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B94AF7D8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B94A5B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor, protocol conformance descriptor for Searchfoundation_FlightDateDescriptor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor, protocol conformance descriptor for Searchfoundation_FlightDateDescriptor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor, protocol conformance descriptor for Searchfoundation_FlightDateDescriptor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor, protocol conformance descriptor for Searchfoundation_FlightDateDescriptor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Searchfoundation_FlightLeg.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Searchfoundation_FlightLeg(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B94A5ED8(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B94A5ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v134 = v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v132 = v131 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v135 = v131 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v136 = v131 - v14;
  v144 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  v15 = MEMORY[0x1EEE9AC00](v144);
  v131[0] = v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v131[1] = v131 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v131[2] = v131 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v133 = v131 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF60, &qword_1B96CD860);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v139 = v131 - v23;
  v140 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  MEMORY[0x1EEE9AC00](v140);
  v137 = v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF58, &qword_1B96CD858);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v153 = v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v156 = v131 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v161 = v131 - v30;
  v160 = type metadata accessor for Searchfoundation_Airport(0);
  v31 = MEMORY[0x1EEE9AC00](v160);
  v150 = v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v152 = v131 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v159 = v131 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v142 = v131 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v147 = v131 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v146 = v131 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v149 = v131 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v151 = v131 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v155 = v131 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v158 = v131 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = v131 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v55 = v131 - v54;
  v164 = type metadata accessor for Searchfoundation_Date(0);
  v56 = MEMORY[0x1EEE9AC00](v164);
  v138 = v131 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v141 = v131 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v143 = v131 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v145 = v131 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v148 = v131 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v154 = v131 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v157 = v131 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  MEMORY[0x1EEE9AC00](v70);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v71 = *(a1 + 24);
    v167 = *(a1 + 16);
    v168 = v71;
    sub_1B94AF82C();
    v72 = v169;
    result = sub_1B964C680();
    if (v72)
    {
      return result;
    }

    v74 = a1;
    v162 = a3;
    v163 = a4;
    v75 = 0;
  }

  else
  {
    v74 = a1;
    v162 = a3;
    v163 = a4;
    v75 = v169;
  }

  v76 = v74;
  swift_beginAccess();
  v169 = v76;
  sub_1B8D92024();
  v77 = v164;
  if (__swift_getEnumTagSinglePayload(v55, 1, v164) == 1)
  {
    sub_1B8D9207C(v55, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
    sub_1B964C740();
    if (v75)
    {
      return sub_1B94A47A4();
    }

    v75 = 0;
    sub_1B94A47A4();
  }

  v78 = v169;
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v53, 1, v77) == 1)
  {
    sub_1B8D9207C(v53, &qword_1EBAB8E30, &qword_1B964D630);
    v79 = v75;
    v80 = v163;
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
    v81 = v75;
    v80 = v163;
    sub_1B964C740();
    v79 = v81;
    if (v81)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  v82 = (v78 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureTerminal);
  swift_beginAccess();
  v83 = *v82;
  v84 = v82[1];
  v85 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v85 = v83 & 0xFFFFFFFFFFFFLL;
  }

  v86 = v161;
  if (v85)
  {

    sub_1B964C700();
    if (v79)
    {
    }
  }

  v87 = (v78 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGate);
  swift_beginAccess();
  v88 = *v87;
  v89 = v87[1];
  v90 = HIBYTE(v89) & 0xF;
  if ((v89 & 0x2000000000000000) == 0)
  {
    v90 = v88 & 0xFFFFFFFFFFFFLL;
  }

  if (v90)
  {

    sub_1B964C700();
    if (v79)
    {
    }

    v91 = v80;
    v92 = 0;
  }

  else
  {
    v91 = v80;
    v92 = v79;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v86, 1, v160) == 1)
  {
    sub_1B8D9207C(v86, &qword_1EBACEF58, &qword_1B96CD858);
    v93 = v92;
    v94 = v91;
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport, protocol conformance descriptor for Searchfoundation_Airport);
    v94 = v91;
    sub_1B964C740();
    v93 = v92;
    if (v92)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  swift_beginAccess();
  v95 = v158;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v95, 1, v164) == 1)
  {
    v96 = v93;
    v163 = v94;
    sub_1B8D9207C(v95, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
    sub_1B964C740();
    if (v93)
    {
      return sub_1B94A47A4();
    }

    v96 = 0;
    v163 = v94;
    sub_1B94A47A4();
  }

  swift_beginAccess();
  v97 = v155;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, 1, v164);
  v99 = v156;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v97, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
    sub_1B964C740();
    if (v96)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  v100 = (v78 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal);
  swift_beginAccess();
  v101 = *v100;
  v102 = v100[1];
  v103 = HIBYTE(v102) & 0xF;
  if ((v102 & 0x2000000000000000) == 0)
  {
    v103 = v101 & 0xFFFFFFFFFFFFLL;
  }

  if (v103)
  {

    sub_1B964C700();
    if (v96)
    {
    }
  }

  v104 = (v78 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate[0]);
  swift_beginAccess();
  v105 = *v104;
  v106 = v104[1];
  v107 = HIBYTE(v106) & 0xF;
  if ((v106 & 0x2000000000000000) == 0)
  {
    v107 = v105 & 0xFFFFFFFFFFFFLL;
  }

  if (v107)
  {

    sub_1B964C700();
    if (v96)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v99, 1, v160) == 1)
  {
    sub_1B8D9207C(v99, &qword_1EBACEF58, &qword_1B96CD858);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport, protocol conformance descriptor for Searchfoundation_Airport);
    sub_1B964C740();
    if (v96)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  swift_beginAccess();
  v108 = v153;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v108, 1, v160) == 1)
  {
    sub_1B8D9207C(v108, &qword_1EBACEF58, &qword_1B96CD858);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport, protocol conformance descriptor for Searchfoundation_Airport);
    sub_1B964C740();
    if (v96)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  v109 = (v78 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title);
  swift_beginAccess();
  v110 = *v109;
  v111 = v109[1];
  v112 = HIBYTE(v111) & 0xF;
  if ((v111 & 0x2000000000000000) == 0)
  {
    v112 = v110 & 0xFFFFFFFFFFFFLL;
  }

  v113 = v151;
  if (v112)
  {

    sub_1B964C700();
    if (v96)
    {
    }
  }

  v114 = (v78 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim);
  swift_beginAccess();
  v115 = *v114;
  v116 = v114[1];
  v117 = HIBYTE(v116) & 0xF;
  if ((v116 & 0x2000000000000000) == 0)
  {
    v117 = v115 & 0xFFFFFFFFFFFFLL;
  }

  if (v117)
  {

    sub_1B964C700();
    if (v96)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v113, 1, v164) == 1)
  {
    sub_1B8D9207C(v113, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
    sub_1B964C740();
    if (v96)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  swift_beginAccess();
  v118 = v149;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v118, 1, v164) == 1)
  {
    sub_1B8D9207C(v118, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
    sub_1B964C740();
    if (v96)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  swift_beginAccess();
  v119 = v146;
  sub_1B8D92024();
  v120 = __swift_getEnumTagSinglePayload(v119, 1, v164);
  v121 = v147;
  if (v120 == 1)
  {
    sub_1B8D9207C(v119, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
    sub_1B964C740();
    if (v96)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v121, 1, v164) == 1)
  {
    sub_1B8D9207C(v121, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
    sub_1B964C740();
    if (v96)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  swift_beginAccess();
  v122 = v142;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v122, 1, v164) == 1)
  {
    sub_1B8D9207C(v122, &qword_1EBAB8E30, &qword_1B964D630);
    goto LABEL_91;
  }

  sub_1B94A46F4();
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date, protocol conformance descriptor for Searchfoundation_Date);
  sub_1B964C740();
  if (v96)
  {
    return sub_1B94A47A4();
  }

  sub_1B94A47A4();
LABEL_91:
  swift_beginAccess();
  v123 = v139;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v123, 1, v140) != 1)
  {
    sub_1B94A46F4();
    sub_1B94AE34C(&qword_1EBACF0C8, type metadata accessor for Searchfoundation_PegasusDisplayFields, protocol conformance descriptor for Searchfoundation_PegasusDisplayFields);
    sub_1B964C740();
    v124 = v96;
    if (!v96)
    {
      sub_1B94A47A4();
      goto LABEL_95;
    }

    return sub_1B94A47A4();
  }

  sub_1B8D9207C(v123, &qword_1EBACEF60, &qword_1B96CD860);
  v124 = v96;
LABEL_95:
  v125 = (v78 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState);
  swift_beginAccess();
  if (!*v125 || (v126 = *(v125 + 8), v165 = *v125, v166 = v126, sub_1B94AF7D8(), result = sub_1B964C680(), !v124))
  {
    v127 = v136;
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v127, 1, v144) == 1)
    {
      sub_1B8D9207C(v127, &qword_1EBACEF68, &qword_1B96CD868);
    }

    else
    {
      sub_1B94A46F4();
      sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor, protocol conformance descriptor for Searchfoundation_FlightDateDescriptor);
      sub_1B964C740();
      result = sub_1B94A47A4();
      if (v124)
      {
        return result;
      }
    }

    swift_beginAccess();
    v128 = v135;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v128, 1, v144) == 1)
    {
      sub_1B8D9207C(v128, &qword_1EBACEF68, &qword_1B96CD868);
    }

    else
    {
      sub_1B94A46F4();
      sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor, protocol conformance descriptor for Searchfoundation_FlightDateDescriptor);
      sub_1B964C740();
      result = sub_1B94A47A4();
      if (v124)
      {
        return result;
      }
    }

    swift_beginAccess();
    v129 = v132;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v129, 1, v144) == 1)
    {
      sub_1B8D9207C(v129, &qword_1EBACEF68, &qword_1B96CD868);
    }

    else
    {
      sub_1B94A46F4();
      sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor, protocol conformance descriptor for Searchfoundation_FlightDateDescriptor);
      sub_1B964C740();
      result = sub_1B94A47A4();
      if (v124)
      {
        return result;
      }
    }

    swift_beginAccess();
    v130 = v134;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v130, 1, v144) == 1)
    {
      return sub_1B8D9207C(v134, &qword_1EBACEF68, &qword_1B96CD868);
    }

    else
    {
      sub_1B94A46F4();
      sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor, protocol conformance descriptor for Searchfoundation_FlightDateDescriptor);
      sub_1B964C740();
      return sub_1B94A47A4();
    }
  }

  return result;
}

uint64_t static Searchfoundation_FlightLeg.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_33_14();
  if (*(v1 + v2) != *(v0 + v2))
  {

    OUTLINED_FUNCTION_303();
    sub_1B94A7CF0();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v5, v6, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B94A7CF0()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v471 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = v6 - v5;
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACF128, &qword_1B96CE8E0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_66();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_682();
  v467 = v13;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_682();
  v464 = v15;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_266_0();
  v461 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  v19 = OUTLINED_FUNCTION_183(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44_0();
  v470 = v20;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_682();
  v469 = v22;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_682();
  v466 = v24;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_682();
  v465 = v26;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_682();
  v463 = v28;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_682();
  v462 = v30;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_682();
  v460 = v32;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_266_0();
  v459 = v34;
  v476 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_62();
  v458 = v37 - v36;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACF130, &qword_1B96CE8E8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v38);
  v477 = &v453[-v39];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF60, &qword_1B96CD860);
  v41 = OUTLINED_FUNCTION_183(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44_0();
  v472 = v42;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_266_0();
  v475 = v44;
  v513 = type metadata accessor for Searchfoundation_Airport(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_62();
  v507 = v47 - v46;
  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACF138, &unk_1B96CE8F0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44_0();
  v498 = v49;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_682();
  v500 = v51;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_266_0();
  v511 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF58, &qword_1B96CD858);
  v55 = OUTLINED_FUNCTION_183(v54);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_44_0();
  v496 = v56;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_682();
  v516 = v58;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_682();
  v499 = v60;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_682();
  v505 = v62;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_682();
  v509 = v64;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_266_0();
  v519 = v66;
  v522 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_44_0();
  v473 = v68;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_682();
  v479 = v70;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_682();
  v483 = v72;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_682();
  v487 = v74;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_682();
  v491 = v76;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_682();
  v501 = v78;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_682();
  v503 = v80;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_682();
  v514 = v82;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_266_0();
  v520 = v84;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_44_0();
  v481 = v86;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_682();
  v485 = v88;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_682();
  v489 = v90;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_682();
  v493 = v92;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_682();
  v497 = v94;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_682();
  v504 = v96;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_682();
  v508 = v98;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_682();
  v518 = v100;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v453[-v102];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v105 = OUTLINED_FUNCTION_183(v104);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_44_0();
  v478 = v106;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_682();
  v480 = v108;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_682();
  v482 = v110;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_682();
  v484 = v112;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_682();
  v486 = v114;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_682();
  v488 = v116;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_682();
  v490 = v118;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_682();
  v492 = v120;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_682();
  v494 = v122;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_682();
  v495 = v124;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_682();
  v502 = v126;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_682();
  v517 = v128;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_682();
  v506 = v130;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_682();
  v510 = v132;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_682();
  v515 = v134;
  OUTLINED_FUNCTION_230();
  v136 = MEMORY[0x1EEE9AC00](v135);
  v138 = &v453[-v137];
  v139 = MEMORY[0x1EEE9AC00](v136);
  v141 = &v453[-v140];
  MEMORY[0x1EEE9AC00](v139);
  v143 = &v453[-v142];
  OUTLINED_FUNCTION_521(v3 + 16, &v573);
  v144 = *(v3 + 16);
  OUTLINED_FUNCTION_521(v1 + 16, &v572);
  v145 = *(v1 + 16);
  if (*(v1 + 24) != 1)
  {
    if (v144 != v145)
    {
      goto LABEL_17;
    }

LABEL_6:
    v456 = v7;
    v457 = v11;
    v523 = v1;
    OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departurePublishedTime, &v571);
    sub_1B8D92024();
    v146 = OUTLINED_FUNCTION_126_5();
    OUTLINED_FUNCTION_521(v146, &v570);
    v147 = *(v521 + 48);
    sub_1B8D92024();
    OUTLINED_FUNCTION_114_10();
    sub_1B8D92024();
    OUTLINED_FUNCTION_81(v103, 1);
    if (v148)
    {

      sub_1B8D9207C(v143, &qword_1EBAB8E30, &qword_1B964D630);
      OUTLINED_FUNCTION_37_0(&v103[v147]);
      if (v148)
      {
        sub_1B8D9207C(v103, &qword_1EBAB8E30, &qword_1B964D630);
        goto LABEL_20;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_37_0(&v103[v147]);
      if (!v148)
      {
        OUTLINED_FUNCTION_0_91();
        v152 = v520;
        sub_1B94A46F4();
        if (*v141 != *v152)
        {

          OUTLINED_FUNCTION_4_53();
          sub_1B94A47A4();
          OUTLINED_FUNCTION_176_2();
          sub_1B8D9207C(v172, v173, v174);
          sub_1B94A47A4();
LABEL_49:
          OUTLINED_FUNCTION_176_2();
          goto LABEL_15;
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_76();
        sub_1B94AE34C(v153, v154, MEMORY[0x1E69AAC10]);
        v455 = v3;

        OUTLINED_FUNCTION_141_11();
        v454 = sub_1B964C850();
        OUTLINED_FUNCTION_20_15();
        sub_1B94A47A4();
        v155 = OUTLINED_FUNCTION_502();
        sub_1B8D9207C(v155, v156, &qword_1B964D630);
        v3 = v455;
        sub_1B94A47A4();
        sub_1B8D9207C(v103, &qword_1EBAB8E30, &qword_1B964D630);
        if ((v454 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_20:
        OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureActualTime, &v569);
        v455 = v3;
        OUTLINED_FUNCTION_141_11();
        sub_1B8D92024();
        v157 = OUTLINED_FUNCTION_126_5();
        OUTLINED_FUNCTION_521(v157, &v568);
        v158 = *(v521 + 48);
        v159 = v518;
        OUTLINED_FUNCTION_141_11();
        sub_1B8D92024();
        OUTLINED_FUNCTION_114_10();
        OUTLINED_FUNCTION_141_11();
        v160 = v159;
        sub_1B8D92024();
        v161 = OUTLINED_FUNCTION_538();
        OUTLINED_FUNCTION_81(v161, v162);
        if (v148)
        {
          sub_1B8D9207C(v138, &qword_1EBAB8E30, &qword_1B964D630);
          OUTLINED_FUNCTION_37_0(v159 + v158);
          v164 = v516;
          v163 = v517;
          v165 = v519;
          if (v148)
          {
            v166 = sub_1B8D9207C(v160, &qword_1EBAB8E30, &qword_1B964D630);
            v167 = v455;
            goto LABEL_52;
          }
        }

        else
        {
          v168 = v515;
          sub_1B8D92024();
          OUTLINED_FUNCTION_37_0(v159 + v158);
          v165 = v519;
          if (!v169)
          {
            OUTLINED_FUNCTION_0_91();
            v175 = v514;
            sub_1B94A46F4();
            if (*v168 != *v175)
            {
              OUTLINED_FUNCTION_4_53();
              sub_1B94A47A4();
              sub_1B8D9207C(v138, &qword_1EBAB8E30, &qword_1B964D630);
              sub_1B94A47A4();
              sub_1B8D9207C(v160, &qword_1EBAB8E30, &qword_1B964D630);
              goto LABEL_16;
            }

            v176 = sub_1B964C2B0();
            OUTLINED_FUNCTION_1_76();
            sub_1B94AE34C(v177, v178, MEMORY[0x1E69AAC10]);
            sub_1B964C850();
            OUTLINED_FUNCTION_5_41();
            sub_1B94A47A4();
            sub_1B8D9207C(v138, &qword_1EBAB8E30, &qword_1B964D630);
            sub_1B94A47A4();
            v163 = v517;
            v166 = sub_1B8D9207C(v160, &qword_1EBAB8E30, &qword_1B964D630);
            v167 = v455;
            v164 = v516;
            if ((v176 & 1) == 0)
            {
              goto LABEL_16;
            }

LABEL_52:
            v179 = v167 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureTerminal;
            v180 = OUTLINED_FUNCTION_26_6(v166, &v567);
            v181 = *(v179 + 8);
            OUTLINED_FUNCTION_505_0(v180, &v566);
            OUTLINED_FUNCTION_714_0();
            if (v148)
            {
              v184 = v181 == v183;
            }

            else
            {
              v184 = 0;
            }

            if (!v184)
            {
              OUTLINED_FUNCTION_543();
              v182 = sub_1B964C9F0();
              if ((v182 & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            v185 = v167 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGate;
            v186 = OUTLINED_FUNCTION_26_6(v182, &v565);
            v187 = *(v185 + 8);
            OUTLINED_FUNCTION_505_0(v186, &v564);
            OUTLINED_FUNCTION_714_0();
            if (!v148 || v187 != v188)
            {
              OUTLINED_FUNCTION_543();
              if ((sub_1B964C9F0() & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            OUTLINED_FUNCTION_521(v167 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureAirport, &v563);
            OUTLINED_FUNCTION_33_4();
            sub_1B8D92024();
            v190 = OUTLINED_FUNCTION_126_5();
            OUTLINED_FUNCTION_521(v190, &v562);
            v191 = *(v512 + 48);
            v192 = v165;
            v193 = v511;
            OUTLINED_FUNCTION_33_4();
            sub_1B8D92024();
            OUTLINED_FUNCTION_114_10();
            OUTLINED_FUNCTION_33_4();
            v194 = v193;
            sub_1B8D92024();
            OUTLINED_FUNCTION_81(v193, 1);
            if (v148)
            {
              sub_1B8D9207C(v192, &qword_1EBACEF58, &qword_1B96CD858);
              OUTLINED_FUNCTION_37_0(v193 + v191);
              if (!v148)
              {
                goto LABEL_72;
              }

              sub_1B8D9207C(v193, &qword_1EBACEF58, &qword_1B96CD858);
            }

            else
            {
              sub_1B8D92024();
              OUTLINED_FUNCTION_37_0(v193 + v191);
              if (v195)
              {
                sub_1B8D9207C(v519, &qword_1EBACEF58, &qword_1B96CD858);
                OUTLINED_FUNCTION_46_14();
LABEL_71:
                sub_1B94A47A4();
LABEL_72:
                v149 = &qword_1EBACF138;
                v150 = &unk_1B96CE8F0;
LABEL_73:
                v151 = v194;
                goto LABEL_15;
              }

              OUTLINED_FUNCTION_45_16();
              sub_1B94A46F4();
              static Searchfoundation_Airport.== infix(_:_:)();
              v197 = v196;
              OUTLINED_FUNCTION_128();
              sub_1B94A47A4();
              OUTLINED_FUNCTION_466();
              sub_1B8D9207C(v198, v199, v200);
              sub_1B94A47A4();
              OUTLINED_FUNCTION_466();
              sub_1B8D9207C(v201, v202, v203);
              if ((v197 & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            OUTLINED_FUNCTION_521(v167 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalPublishedTime, &v561);
            v204 = v510;
            OUTLINED_FUNCTION_33_4();
            sub_1B8D92024();
            v205 = OUTLINED_FUNCTION_99_11();
            OUTLINED_FUNCTION_521(v205, &v560);
            v206 = *(v521 + 48);
            v207 = v508;
            OUTLINED_FUNCTION_33_4();
            sub_1B8D92024();
            OUTLINED_FUNCTION_33_4();
            sub_1B8D92024();
            v208 = v522;
            OUTLINED_FUNCTION_81(v207, 1);
            if (v148)
            {
              sub_1B8D9207C(v204, &qword_1EBAB8E30, &qword_1B964D630);
              OUTLINED_FUNCTION_37_0(v207 + v206);
              v209 = v455;
              if (v148)
              {
                sub_1B8D9207C(v207, &qword_1EBAB8E30, &qword_1B964D630);
                goto LABEL_86;
              }
            }

            else
            {
              v210 = v506;
              sub_1B8D92024();
              OUTLINED_FUNCTION_37_0(v207 + v206);
              v209 = v455;
              if (!v211)
              {
                OUTLINED_FUNCTION_0_91();
                v212 = v503;
                sub_1B94A46F4();
                if (*v210 != *v212)
                {
                  OUTLINED_FUNCTION_4_53();
                  sub_1B94A47A4();
                  OUTLINED_FUNCTION_176_2();
                  sub_1B8D9207C(v234, v235, v236);
                  sub_1B94A47A4();
                  OUTLINED_FUNCTION_176_2();
                  sub_1B8D9207C(v237, v238, v239);
                  goto LABEL_16;
                }

                v213 = *(v208 + 20);
                v214 = sub_1B964C2B0();
                OUTLINED_FUNCTION_1_76();
                sub_1B94AE34C(v215, v216, MEMORY[0x1E69AAC10]);
                OUTLINED_FUNCTION_731(v210 + v213);
                OUTLINED_FUNCTION_5_41();
                sub_1B94A47A4();
                OUTLINED_FUNCTION_466();
                sub_1B8D9207C(v217, v218, v219);
                sub_1B94A47A4();
                OUTLINED_FUNCTION_466();
                sub_1B8D9207C(v220, v221, v222);
                if (v214)
                {
LABEL_86:
                  OUTLINED_FUNCTION_521(v209 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalActualTime, &v559);
                  OUTLINED_FUNCTION_33_4();
                  sub_1B8D92024();
                  v223 = OUTLINED_FUNCTION_99_11();
                  OUTLINED_FUNCTION_521(v223, &v558);
                  OUTLINED_FUNCTION_72_8();
                  v224 = v163;
                  v225 = v504;
                  OUTLINED_FUNCTION_33_4();
                  sub_1B8D92024();
                  OUTLINED_FUNCTION_40_14();
                  v194 = v225;
                  sub_1B8D92024();
                  v226 = OUTLINED_FUNCTION_538();
                  v227 = v522;
                  OUTLINED_FUNCTION_81(v226, v228);
                  if (v148)
                  {
                    sub_1B8D9207C(v224, &qword_1EBAB8E30, &qword_1B964D630);
                    OUTLINED_FUNCTION_37_0(&unk_1ED9E3000 + v225);
                    v229 = v455;
                    v230 = v505;
                    if (v148)
                    {
                      v231 = sub_1B8D9207C(v225, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_99:
                      v251 = v229 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal;
                      v252 = OUTLINED_FUNCTION_26_6(v231, &v557);
                      v253 = *(v251 + 8);
                      OUTLINED_FUNCTION_505_0(v252, &v556);
                      OUTLINED_FUNCTION_714_0();
                      if (v148)
                      {
                        v256 = v253 == v255;
                      }

                      else
                      {
                        v256 = 0;
                      }

                      if (!v256)
                      {
                        OUTLINED_FUNCTION_543();
                        v254 = sub_1B964C9F0();
                        if ((v254 & 1) == 0)
                        {
                          goto LABEL_16;
                        }
                      }

                      v257 = v229 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate[0];
                      v258 = OUTLINED_FUNCTION_26_6(v254, &v555);
                      v259 = *(v257 + 8);
                      OUTLINED_FUNCTION_505_0(v258, &v554);
                      OUTLINED_FUNCTION_714_0();
                      if (!v148 || v259 != v260)
                      {
                        OUTLINED_FUNCTION_543();
                        if ((sub_1B964C9F0() & 1) == 0)
                        {
                          goto LABEL_16;
                        }
                      }

                      OUTLINED_FUNCTION_521(v229 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalAirport, &v553);
                      OUTLINED_FUNCTION_33_4();
                      sub_1B8D92024();
                      v262 = OUTLINED_FUNCTION_126_5();
                      OUTLINED_FUNCTION_521(v262, &v552);
                      v263 = *(v512 + 48);
                      v264 = v500;
                      OUTLINED_FUNCTION_33_4();
                      sub_1B8D92024();
                      OUTLINED_FUNCTION_114_10();
                      OUTLINED_FUNCTION_40_14();
                      v194 = v264;
                      sub_1B8D92024();
                      v265 = OUTLINED_FUNCTION_538();
                      OUTLINED_FUNCTION_81(v265, v266);
                      if (v148)
                      {
                        sub_1B8D9207C(v230, &qword_1EBACEF58, &qword_1B96CD858);
                        OUTLINED_FUNCTION_37_0(v264 + v263);
                        if (v148)
                        {
                          sub_1B8D9207C(v264, &qword_1EBACEF58, &qword_1B96CD858);
LABEL_119:
                          OUTLINED_FUNCTION_521(v229 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__divertedAirport, &v551);
                          OUTLINED_FUNCTION_33_4();
                          sub_1B8D92024();
                          v277 = OUTLINED_FUNCTION_99_11();
                          OUTLINED_FUNCTION_521(v277, &v550);
                          v278 = *(v512 + 48);
                          v279 = v498;
                          OUTLINED_FUNCTION_33_4();
                          sub_1B8D92024();
                          v160 = v279;
                          OUTLINED_FUNCTION_40_14();
                          sub_1B8D92024();
                          v280 = OUTLINED_FUNCTION_538();
                          OUTLINED_FUNCTION_81(v280, v281);
                          if (v148)
                          {
                            sub_1B8D9207C(v164, &qword_1EBACEF58, &qword_1B96CD858);
                            OUTLINED_FUNCTION_37_0(v279 + v278);
                            if (v148)
                            {
                              v282 = sub_1B8D9207C(v279, &qword_1EBACEF58, &qword_1B96CD858);
                              v283 = v455;
                              goto LABEL_129;
                            }
                          }

                          else
                          {
                            sub_1B8D92024();
                            OUTLINED_FUNCTION_37_0(v279 + v278);
                            if (!v284)
                            {
                              OUTLINED_FUNCTION_45_16();
                              sub_1B94A46F4();
                              OUTLINED_FUNCTION_275();
                              static Searchfoundation_Airport.== infix(_:_:)();
                              v286 = v285;
                              OUTLINED_FUNCTION_128();
                              sub_1B94A47A4();
                              OUTLINED_FUNCTION_466();
                              sub_1B8D9207C(v287, v288, v289);
                              OUTLINED_FUNCTION_152_4();
                              OUTLINED_FUNCTION_466();
                              v282 = sub_1B8D9207C(v290, v291, v292);
                              v283 = v455;
                              if ((v286 & 1) == 0)
                              {
                                goto LABEL_16;
                              }

LABEL_129:
                              v293 = v283 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title;
                              v294 = OUTLINED_FUNCTION_26_6(v282, &v549);
                              v295 = *(v293 + 8);
                              OUTLINED_FUNCTION_505_0(v294, &v548);
                              OUTLINED_FUNCTION_714_0();
                              if (v148)
                              {
                                v298 = v295 == v297;
                              }

                              else
                              {
                                v298 = 0;
                              }

                              if (!v298)
                              {
                                OUTLINED_FUNCTION_543();
                                v296 = sub_1B964C9F0();
                                if ((v296 & 1) == 0)
                                {
                                  goto LABEL_16;
                                }
                              }

                              v299 = v283 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim;
                              v300 = OUTLINED_FUNCTION_26_6(v296, &v547);
                              v301 = *(v299 + 8);
                              OUTLINED_FUNCTION_505_0(v300, &v546);
                              OUTLINED_FUNCTION_714_0();
                              if (!v148 || v301 != v302)
                              {
                                OUTLINED_FUNCTION_543();
                                if ((sub_1B964C9F0() & 1) == 0)
                                {
                                  goto LABEL_16;
                                }
                              }

                              OUTLINED_FUNCTION_521(v283 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGateClosedTime, &v545);
                              OUTLINED_FUNCTION_33_4();
                              sub_1B8D92024();
                              v304 = OUTLINED_FUNCTION_99_11();
                              OUTLINED_FUNCTION_521(v304, &v544);
                              OUTLINED_FUNCTION_72_8();
                              v305 = v497;
                              OUTLINED_FUNCTION_33_4();
                              sub_1B8D92024();
                              OUTLINED_FUNCTION_40_14();
                              sub_1B8D92024();
                              OUTLINED_FUNCTION_29_28(v305);
                              if (v148)
                              {
                                sub_1B8D9207C(v495, &qword_1EBAB8E30, &qword_1B964D630);
                                OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v497);
                                if (v148)
                                {
                                  sub_1B8D9207C(v497, &qword_1EBAB8E30, &qword_1B964D630);
                                  goto LABEL_151;
                                }
                              }

                              else
                              {
                                v306 = v497;
                                sub_1B8D92024();
                                OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v306);
                                if (!v307)
                                {
                                  OUTLINED_FUNCTION_0_91();
                                  sub_1B94A46F4();
                                  OUTLINED_FUNCTION_96_6(v494);
                                  if (!v311)
                                  {
                                    goto LABEL_197;
                                  }

                                  v312 = OUTLINED_FUNCTION_130_5();
                                  OUTLINED_FUNCTION_1_76();
                                  sub_1B94AE34C(v313, v314, MEMORY[0x1E69AAC10]);
                                  OUTLINED_FUNCTION_731(&qword_1B964D630 + v494);
                                  OUTLINED_FUNCTION_5_41();
                                  sub_1B94A47A4();
                                  OUTLINED_FUNCTION_466();
                                  sub_1B8D9207C(v315, v316, v317);
                                  OUTLINED_FUNCTION_196();
                                  sub_1B94A47A4();
                                  OUTLINED_FUNCTION_466();
                                  sub_1B8D9207C(v318, v319, v320);
                                  if ((v312 & 1) == 0)
                                  {
                                    goto LABEL_16;
                                  }

LABEL_151:
                                  v321 = OUTLINED_FUNCTION_226_1();
                                  OUTLINED_FUNCTION_521(v321, &v543);
                                  OUTLINED_FUNCTION_33_4();
                                  sub_1B8D92024();
                                  v322 = OUTLINED_FUNCTION_99_11();
                                  OUTLINED_FUNCTION_521(v322, &v542);
                                  OUTLINED_FUNCTION_72_8();
                                  v323 = v493;
                                  OUTLINED_FUNCTION_33_4();
                                  sub_1B8D92024();
                                  OUTLINED_FUNCTION_40_14();
                                  sub_1B8D92024();
                                  OUTLINED_FUNCTION_29_28(v323);
                                  if (v148)
                                  {
                                    sub_1B8D9207C(v492, &qword_1EBAB8E30, &qword_1B964D630);
                                    OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v493);
                                    if (v148)
                                    {
                                      sub_1B8D9207C(v493, &qword_1EBAB8E30, &qword_1B964D630);
                                      goto LABEL_163;
                                    }
                                  }

                                  else
                                  {
                                    v324 = v493;
                                    sub_1B8D92024();
                                    OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v324);
                                    if (!v325)
                                    {
                                      OUTLINED_FUNCTION_0_91();
                                      sub_1B94A46F4();
                                      OUTLINED_FUNCTION_96_6(v490);
                                      if (!v326)
                                      {
                                        goto LABEL_197;
                                      }

                                      v327 = OUTLINED_FUNCTION_130_5();
                                      OUTLINED_FUNCTION_1_76();
                                      sub_1B94AE34C(v328, v329, MEMORY[0x1E69AAC10]);
                                      OUTLINED_FUNCTION_731(&qword_1B964D630 + v490);
                                      OUTLINED_FUNCTION_5_41();
                                      sub_1B94A47A4();
                                      OUTLINED_FUNCTION_466();
                                      sub_1B8D9207C(v330, v331, v332);
                                      OUTLINED_FUNCTION_196();
                                      sub_1B94A47A4();
                                      OUTLINED_FUNCTION_466();
                                      sub_1B8D9207C(v333, v334, v335);
                                      if ((v327 & 1) == 0)
                                      {
                                        goto LABEL_16;
                                      }

LABEL_163:
                                      v336 = OUTLINED_FUNCTION_226_1();
                                      OUTLINED_FUNCTION_521(v336, &v541);
                                      OUTLINED_FUNCTION_33_4();
                                      sub_1B8D92024();
                                      v337 = OUTLINED_FUNCTION_99_11();
                                      OUTLINED_FUNCTION_521(v337, &v540);
                                      OUTLINED_FUNCTION_72_8();
                                      v338 = v489;
                                      OUTLINED_FUNCTION_33_4();
                                      sub_1B8D92024();
                                      OUTLINED_FUNCTION_40_14();
                                      sub_1B8D92024();
                                      OUTLINED_FUNCTION_29_28(v338);
                                      if (v148)
                                      {
                                        sub_1B8D9207C(v488, &qword_1EBAB8E30, &qword_1B964D630);
                                        OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v489);
                                        if (v148)
                                        {
                                          sub_1B8D9207C(v489, &qword_1EBAB8E30, &qword_1B964D630);
                                          goto LABEL_175;
                                        }
                                      }

                                      else
                                      {
                                        v339 = v489;
                                        sub_1B8D92024();
                                        OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v339);
                                        if (!v340)
                                        {
                                          OUTLINED_FUNCTION_0_91();
                                          sub_1B94A46F4();
                                          OUTLINED_FUNCTION_96_6(v486);
                                          if (!v341)
                                          {
                                            goto LABEL_197;
                                          }

                                          v342 = OUTLINED_FUNCTION_130_5();
                                          OUTLINED_FUNCTION_1_76();
                                          sub_1B94AE34C(v343, v344, MEMORY[0x1E69AAC10]);
                                          OUTLINED_FUNCTION_731(&qword_1B964D630 + v486);
                                          OUTLINED_FUNCTION_5_41();
                                          sub_1B94A47A4();
                                          OUTLINED_FUNCTION_466();
                                          sub_1B8D9207C(v345, v346, v347);
                                          OUTLINED_FUNCTION_196();
                                          sub_1B94A47A4();
                                          OUTLINED_FUNCTION_466();
                                          sub_1B8D9207C(v348, v349, v350);
                                          if ((v342 & 1) == 0)
                                          {
                                            goto LABEL_16;
                                          }

LABEL_175:
                                          v351 = OUTLINED_FUNCTION_226_1();
                                          OUTLINED_FUNCTION_521(v351, &v539);
                                          OUTLINED_FUNCTION_33_4();
                                          sub_1B8D92024();
                                          v352 = OUTLINED_FUNCTION_99_11();
                                          OUTLINED_FUNCTION_521(v352, &v538);
                                          OUTLINED_FUNCTION_72_8();
                                          v353 = v485;
                                          OUTLINED_FUNCTION_33_4();
                                          sub_1B8D92024();
                                          OUTLINED_FUNCTION_40_14();
                                          sub_1B8D92024();
                                          OUTLINED_FUNCTION_29_28(v353);
                                          if (v148)
                                          {
                                            sub_1B8D9207C(v484, &qword_1EBAB8E30, &qword_1B964D630);
                                            OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v485);
                                            if (v148)
                                            {
                                              sub_1B8D9207C(v485, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_187:
                                              v366 = OUTLINED_FUNCTION_226_1();
                                              OUTLINED_FUNCTION_521(v366, &v537);
                                              OUTLINED_FUNCTION_33_4();
                                              sub_1B8D92024();
                                              v367 = OUTLINED_FUNCTION_99_11();
                                              OUTLINED_FUNCTION_521(v367, &v536);
                                              OUTLINED_FUNCTION_72_8();
                                              v368 = v481;
                                              OUTLINED_FUNCTION_33_4();
                                              sub_1B8D92024();
                                              OUTLINED_FUNCTION_40_14();
                                              sub_1B8D92024();
                                              OUTLINED_FUNCTION_29_28(v368);
                                              if (v148)
                                              {
                                                sub_1B8D9207C(v480, &qword_1EBAB8E30, &qword_1B964D630);
                                                OUTLINED_FUNCTION_29_28(&OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes + v481);
                                                if (v148)
                                                {
                                                  sub_1B8D9207C(v481, &qword_1EBAB8E30, &qword_1B964D630);
                                                  goto LABEL_199;
                                                }
                                              }

                                              else
                                              {
                                                v369 = v481;
                                                sub_1B8D92024();
                                                OUTLINED_FUNCTION_29_28(&OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes + v369);
                                                if (!v370)
                                                {
                                                  OUTLINED_FUNCTION_0_91();
                                                  sub_1B94A46F4();
                                                  OUTLINED_FUNCTION_96_6(v478);
                                                  if (!v371)
                                                  {
LABEL_197:
                                                    OUTLINED_FUNCTION_4_53();
                                                    sub_1B94A47A4();
                                                    OUTLINED_FUNCTION_176_2();
                                                    sub_1B8D9207C(v387, v388, v389);
                                                    sub_1B94A47A4();
                                                    OUTLINED_FUNCTION_176_2();
                                                    goto LABEL_208;
                                                  }

                                                  v372 = OUTLINED_FUNCTION_130_5();
                                                  OUTLINED_FUNCTION_1_76();
                                                  sub_1B94AE34C(v373, v374, MEMORY[0x1E69AAC10]);
                                                  OUTLINED_FUNCTION_731(&qword_1B964D630 + v478);
                                                  OUTLINED_FUNCTION_5_41();
                                                  sub_1B94A47A4();
                                                  OUTLINED_FUNCTION_466();
                                                  sub_1B8D9207C(v375, v376, v377);
                                                  OUTLINED_FUNCTION_196();
                                                  sub_1B94A47A4();
                                                  OUTLINED_FUNCTION_466();
                                                  sub_1B8D9207C(v378, v379, v380);
                                                  if (v372)
                                                  {
LABEL_199:
                                                    v381 = OUTLINED_FUNCTION_226_1();
                                                    OUTLINED_FUNCTION_521(v381, &v535);
                                                    OUTLINED_FUNCTION_33_4();
                                                    sub_1B8D92024();
                                                    v382 = OUTLINED_FUNCTION_99_11();
                                                    OUTLINED_FUNCTION_521(v382, &v534);
                                                    OUTLINED_FUNCTION_224_1();
                                                    OUTLINED_FUNCTION_33_4();
                                                    sub_1B8D92024();
                                                    OUTLINED_FUNCTION_40_14();
                                                    sub_1B8D92024();
                                                    v383 = OUTLINED_FUNCTION_538();
                                                    OUTLINED_FUNCTION_178(v383, v384, v476);
                                                    if (v148)
                                                    {
                                                      sub_1B8D9207C(v475, &qword_1EBACEF60, &qword_1B96CD860);
                                                      OUTLINED_FUNCTION_178(&unk_1ED9D2000 + v477, 1, v476);
                                                      if (v148)
                                                      {
                                                        sub_1B8D9207C(v477, &qword_1EBACEF60, &qword_1B96CD860);
                                                        goto LABEL_211;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v385 = v477;
                                                      sub_1B8D92024();
                                                      OUTLINED_FUNCTION_178(&unk_1ED9D2000 + v385, 1, v476);
                                                      if (!v386)
                                                      {
                                                        sub_1B94A46F4();
                                                        OUTLINED_FUNCTION_275();
                                                        static Searchfoundation_PegasusDisplayFields.== infix(_:_:)();
                                                        v391 = v390;
                                                        OUTLINED_FUNCTION_128();
                                                        sub_1B94A47A4();
                                                        OUTLINED_FUNCTION_466();
                                                        sub_1B8D9207C(v392, v393, v394);
                                                        OUTLINED_FUNCTION_152_4();
                                                        OUTLINED_FUNCTION_466();
                                                        sub_1B8D9207C(v395, v396, v397);
                                                        if ((v391 & 1) == 0)
                                                        {
                                                          goto LABEL_16;
                                                        }

LABEL_211:
                                                        v398 = v455 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
                                                        v399 = OUTLINED_FUNCTION_521(v455 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState, &v533);
                                                        v400 = *v398;
                                                        v401 = *(v398 + 8);
                                                        v402 = (v523 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState);
                                                        OUTLINED_FUNCTION_505_0(v399, &v532);
                                                        if (!sub_1B8D92198(v400, v401, *v402))
                                                        {
                                                          goto LABEL_16;
                                                        }

                                                        v403 = OUTLINED_FUNCTION_226_1();
                                                        OUTLINED_FUNCTION_521(v403, &v531);
                                                        OUTLINED_FUNCTION_33_4();
                                                        sub_1B8D92024();
                                                        v404 = OUTLINED_FUNCTION_99_11();
                                                        OUTLINED_FUNCTION_521(v404, &v530);
                                                        OUTLINED_FUNCTION_224_1();
                                                        v405 = v461;
                                                        OUTLINED_FUNCTION_33_4();
                                                        sub_1B8D92024();
                                                        OUTLINED_FUNCTION_40_14();
                                                        sub_1B8D92024();
                                                        OUTLINED_FUNCTION_37_13(v405);
                                                        if (v148)
                                                        {
                                                          sub_1B8D9207C(v459, &qword_1EBACEF68, &qword_1B96CD868);
                                                          OUTLINED_FUNCTION_37_13(&OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes + v461);
                                                          if (v148)
                                                          {
                                                            sub_1B8D9207C(v461, &qword_1EBACEF68, &qword_1B96CD868);
                                                            goto LABEL_222;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v406 = v461;
                                                          sub_1B8D92024();
                                                          OUTLINED_FUNCTION_37_13(&OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes + v406);
                                                          if (!v407)
                                                          {
                                                            OUTLINED_FUNCTION_24_26();
                                                            sub_1B94A46F4();
                                                            OUTLINED_FUNCTION_275();
                                                            static Searchfoundation_FlightDateDescriptor.== infix(_:_:)();
                                                            v409 = v408;
                                                            OUTLINED_FUNCTION_128();
                                                            sub_1B94A47A4();
                                                            OUTLINED_FUNCTION_466();
                                                            sub_1B8D9207C(v410, v411, v412);
                                                            OUTLINED_FUNCTION_152_4();
                                                            OUTLINED_FUNCTION_466();
                                                            sub_1B8D9207C(v413, v414, v415);
                                                            if ((v409 & 1) == 0)
                                                            {
                                                              goto LABEL_16;
                                                            }

LABEL_222:
                                                            v416 = OUTLINED_FUNCTION_226_1();
                                                            OUTLINED_FUNCTION_521(v416, &v529);
                                                            OUTLINED_FUNCTION_33_4();
                                                            sub_1B8D92024();
                                                            v417 = OUTLINED_FUNCTION_99_11();
                                                            OUTLINED_FUNCTION_521(v417, &v528);
                                                            OUTLINED_FUNCTION_224_1();
                                                            v418 = v464;
                                                            OUTLINED_FUNCTION_33_4();
                                                            sub_1B8D92024();
                                                            OUTLINED_FUNCTION_40_14();
                                                            sub_1B8D92024();
                                                            OUTLINED_FUNCTION_37_13(v418);
                                                            if (v148)
                                                            {
                                                              sub_1B8D9207C(v462, &qword_1EBACEF68, &qword_1B96CD868);
                                                              OUTLINED_FUNCTION_37_13(&unk_1ED9D2000 + v464);
                                                              if (v148)
                                                              {
                                                                sub_1B8D9207C(v464, &qword_1EBACEF68, &qword_1B96CD868);
                                                                goto LABEL_232;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v419 = v464;
                                                              sub_1B8D92024();
                                                              OUTLINED_FUNCTION_37_13(&unk_1ED9D2000 + v419);
                                                              if (!v420)
                                                              {
                                                                OUTLINED_FUNCTION_24_26();
                                                                sub_1B94A46F4();
                                                                OUTLINED_FUNCTION_275();
                                                                static Searchfoundation_FlightDateDescriptor.== infix(_:_:)();
                                                                v422 = v421;
                                                                OUTLINED_FUNCTION_128();
                                                                sub_1B94A47A4();
                                                                OUTLINED_FUNCTION_466();
                                                                sub_1B8D9207C(v423, v424, v425);
                                                                OUTLINED_FUNCTION_152_4();
                                                                OUTLINED_FUNCTION_466();
                                                                sub_1B8D9207C(v426, v427, v428);
                                                                if ((v422 & 1) == 0)
                                                                {
                                                                  goto LABEL_16;
                                                                }

LABEL_232:
                                                                v429 = OUTLINED_FUNCTION_226_1();
                                                                OUTLINED_FUNCTION_521(v429, &v527);
                                                                OUTLINED_FUNCTION_33_4();
                                                                sub_1B8D92024();
                                                                v430 = OUTLINED_FUNCTION_99_11();
                                                                OUTLINED_FUNCTION_521(v430, &v526);
                                                                OUTLINED_FUNCTION_224_1();
                                                                v431 = v467;
                                                                OUTLINED_FUNCTION_33_4();
                                                                sub_1B8D92024();
                                                                OUTLINED_FUNCTION_40_14();
                                                                sub_1B8D92024();
                                                                OUTLINED_FUNCTION_37_13(v431);
                                                                if (v148)
                                                                {
                                                                  sub_1B8D9207C(v465, &qword_1EBACEF68, &qword_1B96CD868);
                                                                  OUTLINED_FUNCTION_37_13(&OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes + v467);
                                                                  if (v148)
                                                                  {
                                                                    sub_1B8D9207C(v467, &qword_1EBACEF68, &qword_1B96CD868);
                                                                    goto LABEL_242;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v432 = v467;
                                                                  sub_1B8D92024();
                                                                  OUTLINED_FUNCTION_37_13(&OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes + v432);
                                                                  if (!v433)
                                                                  {
                                                                    OUTLINED_FUNCTION_24_26();
                                                                    sub_1B94A46F4();
                                                                    OUTLINED_FUNCTION_275();
                                                                    static Searchfoundation_FlightDateDescriptor.== infix(_:_:)();
                                                                    v435 = v434;
                                                                    OUTLINED_FUNCTION_128();
                                                                    sub_1B94A47A4();
                                                                    OUTLINED_FUNCTION_466();
                                                                    sub_1B8D9207C(v436, v437, v438);
                                                                    OUTLINED_FUNCTION_152_4();
                                                                    OUTLINED_FUNCTION_466();
                                                                    sub_1B8D9207C(v439, v440, v441);
                                                                    if ((v435 & 1) == 0)
                                                                    {
                                                                      goto LABEL_16;
                                                                    }

LABEL_242:
                                                                    v442 = OUTLINED_FUNCTION_226_1();
                                                                    OUTLINED_FUNCTION_521(v442, &v525);
                                                                    OUTLINED_FUNCTION_33_4();
                                                                    sub_1B8D92024();
                                                                    v443 = OUTLINED_FUNCTION_99_11();
                                                                    OUTLINED_FUNCTION_521(v443, &v524);
                                                                    OUTLINED_FUNCTION_224_1();
                                                                    v444 = v457;
                                                                    OUTLINED_FUNCTION_33_4();
                                                                    sub_1B8D92024();
                                                                    OUTLINED_FUNCTION_40_14();
                                                                    sub_1B8D92024();
                                                                    OUTLINED_FUNCTION_37_13(v444);
                                                                    if (v148)
                                                                    {

                                                                      sub_1B8D9207C(v469, &qword_1EBACEF68, &qword_1B96CD868);
                                                                      OUTLINED_FUNCTION_37_13(&unk_1ED9D2000 + v457);
                                                                      if (v148)
                                                                      {
                                                                        sub_1B8D9207C(v457, &qword_1EBACEF68, &qword_1B96CD868);
                                                                        goto LABEL_17;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v445 = v457;
                                                                      sub_1B8D92024();
                                                                      OUTLINED_FUNCTION_37_13(&unk_1ED9D2000 + v445);
                                                                      if (!v446)
                                                                      {
                                                                        OUTLINED_FUNCTION_24_26();
                                                                        sub_1B94A46F4();
                                                                        OUTLINED_FUNCTION_275();
                                                                        static Searchfoundation_FlightDateDescriptor.== infix(_:_:)();

                                                                        OUTLINED_FUNCTION_128();
                                                                        sub_1B94A47A4();
                                                                        OUTLINED_FUNCTION_466();
                                                                        sub_1B8D9207C(v447, v448, v449);
                                                                        OUTLINED_FUNCTION_152_4();
                                                                        OUTLINED_FUNCTION_466();
                                                                        sub_1B8D9207C(v450, v451, v452);
                                                                        goto LABEL_17;
                                                                      }

                                                                      sub_1B8D9207C(v469, &qword_1EBACEF68, &qword_1B96CD868);
                                                                      OUTLINED_FUNCTION_25_20();
                                                                      sub_1B94A47A4();
                                                                    }

                                                                    sub_1B8D9207C(v457, &qword_1EBACF128, &qword_1B96CE8E0);
                                                                    goto LABEL_17;
                                                                  }

                                                                  sub_1B8D9207C(v465, &qword_1EBACEF68, &qword_1B96CD868);
                                                                  OUTLINED_FUNCTION_25_20();
                                                                  sub_1B94A47A4();
                                                                }

                                                                v308 = &qword_1EBACF128;
                                                                v309 = &qword_1B96CE8E0;
                                                                v310 = v467;
                                                                goto LABEL_208;
                                                              }

                                                              sub_1B8D9207C(v462, &qword_1EBACEF68, &qword_1B96CD868);
                                                              OUTLINED_FUNCTION_25_20();
                                                              sub_1B94A47A4();
                                                            }

                                                            v308 = &qword_1EBACF128;
                                                            v309 = &qword_1B96CE8E0;
                                                            v310 = v464;
                                                            goto LABEL_208;
                                                          }

                                                          sub_1B8D9207C(v459, &qword_1EBACEF68, &qword_1B96CD868);
                                                          OUTLINED_FUNCTION_25_20();
                                                          sub_1B94A47A4();
                                                        }

                                                        v308 = &qword_1EBACF128;
                                                        v309 = &qword_1B96CE8E0;
                                                        v310 = v461;
                                                        goto LABEL_208;
                                                      }

                                                      sub_1B8D9207C(v475, &qword_1EBACEF60, &qword_1B96CD860);
                                                      sub_1B94A47A4();
                                                    }

                                                    v308 = &qword_1EBACF130;
                                                    v309 = &qword_1B96CE8E8;
                                                    v310 = v477;
                                                    goto LABEL_208;
                                                  }

                                                  goto LABEL_16;
                                                }

                                                sub_1B8D9207C(v480, &qword_1EBAB8E30, &qword_1B964D630);
                                                OUTLINED_FUNCTION_2_62();
                                                sub_1B94A47A4();
                                              }

                                              v308 = &qword_1EBAB8E38;
                                              v309 = &qword_1B96CD870;
                                              v310 = v481;
LABEL_208:
                                              sub_1B8D9207C(v310, v308, v309);
                                              goto LABEL_16;
                                            }
                                          }

                                          else
                                          {
                                            v354 = v485;
                                            sub_1B8D92024();
                                            OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v354);
                                            if (!v355)
                                            {
                                              OUTLINED_FUNCTION_0_91();
                                              sub_1B94A46F4();
                                              OUTLINED_FUNCTION_96_6(v482);
                                              if (!v356)
                                              {
                                                goto LABEL_197;
                                              }

                                              v357 = OUTLINED_FUNCTION_130_5();
                                              OUTLINED_FUNCTION_1_76();
                                              sub_1B94AE34C(v358, v359, MEMORY[0x1E69AAC10]);
                                              OUTLINED_FUNCTION_731(&qword_1B964D630 + v482);
                                              OUTLINED_FUNCTION_5_41();
                                              sub_1B94A47A4();
                                              OUTLINED_FUNCTION_466();
                                              sub_1B8D9207C(v360, v361, v362);
                                              OUTLINED_FUNCTION_196();
                                              sub_1B94A47A4();
                                              OUTLINED_FUNCTION_466();
                                              sub_1B8D9207C(v363, v364, v365);
                                              if ((v357 & 1) == 0)
                                              {
                                                goto LABEL_16;
                                              }

                                              goto LABEL_187;
                                            }

                                            sub_1B8D9207C(v484, &qword_1EBAB8E30, &qword_1B964D630);
                                            OUTLINED_FUNCTION_2_62();
                                            sub_1B94A47A4();
                                          }

                                          v308 = &qword_1EBAB8E38;
                                          v309 = &qword_1B96CD870;
                                          v310 = v485;
                                          goto LABEL_208;
                                        }

                                        sub_1B8D9207C(v488, &qword_1EBAB8E30, &qword_1B964D630);
                                        OUTLINED_FUNCTION_2_62();
                                        sub_1B94A47A4();
                                      }

                                      v308 = &qword_1EBAB8E38;
                                      v309 = &qword_1B96CD870;
                                      v310 = v489;
                                      goto LABEL_208;
                                    }

                                    sub_1B8D9207C(v492, &qword_1EBAB8E30, &qword_1B964D630);
                                    OUTLINED_FUNCTION_2_62();
                                    sub_1B94A47A4();
                                  }

                                  v308 = &qword_1EBAB8E38;
                                  v309 = &qword_1B96CD870;
                                  v310 = v493;
                                  goto LABEL_208;
                                }

                                sub_1B8D9207C(v495, &qword_1EBAB8E30, &qword_1B964D630);
                                OUTLINED_FUNCTION_2_62();
                                sub_1B94A47A4();
                              }

                              v308 = &qword_1EBAB8E38;
                              v309 = &qword_1B96CD870;
                              v310 = v497;
                              goto LABEL_208;
                            }

                            sub_1B8D9207C(v164, &qword_1EBACEF58, &qword_1B96CD858);
                            OUTLINED_FUNCTION_46_14();
                            sub_1B94A47A4();
                          }

                          v170 = &qword_1EBACF138;
                          v171 = &unk_1B96CE8F0;
LABEL_29:
                          sub_1B8D9207C(v160, v170, v171);
                          goto LABEL_16;
                        }

                        goto LABEL_72;
                      }

                      sub_1B8D92024();
                      OUTLINED_FUNCTION_37_0(v264 + v263);
                      if (!v270)
                      {
                        OUTLINED_FUNCTION_45_16();
                        sub_1B94A46F4();
                        OUTLINED_FUNCTION_275();
                        static Searchfoundation_Airport.== infix(_:_:)();
                        v272 = v271;
                        OUTLINED_FUNCTION_128();
                        sub_1B94A47A4();
                        v273 = OUTLINED_FUNCTION_502();
                        sub_1B8D9207C(v273, v274, &qword_1B96CD858);
                        OUTLINED_FUNCTION_152_4();
                        v275 = OUTLINED_FUNCTION_303();
                        sub_1B8D9207C(v275, v276, &qword_1B96CD858);
                        if ((v272 & 1) == 0)
                        {
                          goto LABEL_16;
                        }

                        goto LABEL_119;
                      }

                      sub_1B8D9207C(v230, &qword_1EBACEF58, &qword_1B96CD858);
                      OUTLINED_FUNCTION_46_14();
                      goto LABEL_71;
                    }
                  }

                  else
                  {
                    v232 = v502;
                    sub_1B8D92024();
                    OUTLINED_FUNCTION_37_0(&unk_1ED9E3000 + v194);
                    v229 = v455;
                    v230 = v505;
                    if (!v233)
                    {
                      OUTLINED_FUNCTION_0_91();
                      v240 = v501;
                      sub_1B94A46F4();
                      if (*v232 == *v240)
                      {
                        v241 = *(v227 + 20);
                        v242 = sub_1B964C2B0();
                        OUTLINED_FUNCTION_1_76();
                        sub_1B94AE34C(v243, v244, MEMORY[0x1E69AAC10]);
                        OUTLINED_FUNCTION_731(v232 + v241);
                        OUTLINED_FUNCTION_5_41();
                        sub_1B94A47A4();
                        OUTLINED_FUNCTION_466();
                        sub_1B8D9207C(v245, v246, v247);
                        sub_1B94A47A4();
                        OUTLINED_FUNCTION_466();
                        v231 = sub_1B8D9207C(v248, v249, v250);
                        if ((v242 & 1) == 0)
                        {
                          goto LABEL_16;
                        }

                        goto LABEL_99;
                      }

                      OUTLINED_FUNCTION_4_53();
                      sub_1B94A47A4();
                      OUTLINED_FUNCTION_176_2();
                      sub_1B8D9207C(v267, v268, v269);
                      OUTLINED_FUNCTION_152_4();
                      goto LABEL_49;
                    }

                    sub_1B8D9207C(v517, &qword_1EBAB8E30, &qword_1B964D630);
                    OUTLINED_FUNCTION_2_62();
                    sub_1B94A47A4();
                  }

                  v149 = &qword_1EBAB8E38;
                  v150 = &qword_1B96CD870;
                  goto LABEL_73;
                }

LABEL_16:

                goto LABEL_17;
              }

              sub_1B8D9207C(v510, &qword_1EBAB8E30, &qword_1B964D630);
              OUTLINED_FUNCTION_2_62();
              sub_1B94A47A4();
            }

            v149 = &qword_1EBAB8E38;
            v150 = &qword_1B96CD870;
            v151 = v207;
            goto LABEL_15;
          }

          sub_1B8D9207C(v138, &qword_1EBAB8E30, &qword_1B964D630);
          OUTLINED_FUNCTION_2_62();
          sub_1B94A47A4();
        }

        v170 = &qword_1EBAB8E38;
        v171 = &qword_1B96CD870;
        goto LABEL_29;
      }

      sub_1B8D9207C(v143, &qword_1EBAB8E30, &qword_1B964D630);
      OUTLINED_FUNCTION_2_62();
      sub_1B94A47A4();
    }

    v149 = &qword_1EBAB8E38;
    v150 = &qword_1B96CD870;
    v151 = v103;
LABEL_15:
    sub_1B8D9207C(v151, v149, v150);
    goto LABEL_16;
  }

  switch(v145)
  {
    case 1:
      if (v144 == 1)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      if (v144 == 2)
      {
        goto LABEL_6;
      }

      break;
    case 3:
      if (v144 == 3)
      {
        goto LABEL_6;
      }

      break;
    case 4:
      if (v144 == 4)
      {
        goto LABEL_6;
      }

      break;
    case 5:
      if (v144 == 5)
      {
        goto LABEL_6;
      }

      break;
    case 6:
      if (v144 == 6)
      {
        goto LABEL_6;
      }

      break;
    case 7:
      if (v144 == 7)
      {
        goto LABEL_6;
      }

      break;
    case 8:
      if (v144 == 8)
      {
        goto LABEL_6;
      }

      break;
    case 9:
      if (v144 == 9)
      {
        goto LABEL_6;
      }

      break;
    default:
      if (!v144)
      {
        goto LABEL_6;
      }

      break;
  }

LABEL_17:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94AA9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE34C(&qword_1EBACF108, type metadata accessor for Searchfoundation_FlightLeg, protocol conformance descriptor for Searchfoundation_FlightLeg);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94AAA38(uint64_t a1)
{
  v2 = sub_1B94AE34C(&qword_1EBACEF70, type metadata accessor for Searchfoundation_FlightLeg, protocol conformance descriptor for Searchfoundation_FlightLeg);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94AAAA8(uint64_t a1, uint64_t a2)
{
  sub_1B94AE34C(&qword_1EBACEF70, type metadata accessor for Searchfoundation_FlightLeg, protocol conformance descriptor for Searchfoundation_FlightLeg);

  return sub_1B964C5D0();
}

uint64_t sub_1B94AAB40()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEEF8);
  __swift_project_value_buffer(v0, qword_1EBACEEF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "code";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "timezone";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "location";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "city";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "street";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "district";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "state";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "postalCode";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "countryCode";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "country";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "name";
  *(v26 + 1) = 4;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Searchfoundation_Airport.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
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
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B94AB01C(v7, v8, v9, v10);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B94AB0D0(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B94AB01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Airport(0);
  type metadata accessor for Searchfoundation_TimeZone(0);
  sub_1B94AE34C(&qword_1EBACCA00, type metadata accessor for Searchfoundation_TimeZone, protocol conformance descriptor for Searchfoundation_TimeZone);
  return sub_1B964C580();
}

uint64_t sub_1B94AB0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Airport(0);
  type metadata accessor for Searchfoundation_LatLng(0);
  sub_1B94AE34C(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);
  return sub_1B964C580();
}

uint64_t Searchfoundation_Airport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v52 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v50 - v9;
  v51 = type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v50[3] = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC690, &qword_1B96B9A00);
  OUTLINED_FUNCTION_183(v14);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v50 - v16;
  v18 = type metadata accessor for Searchfoundation_TimeZone(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v20 || (result = sub_1B964C700(), !v4))
  {
    v50[4] = a2;
    v22 = type metadata accessor for Searchfoundation_Airport(0);
    sub_1B8D92024();
    v23 = OUTLINED_FUNCTION_538();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, v24, v18);
    v50[2] = v22;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v17, &qword_1EBACC690, &qword_1B96B9A00);
    }

    else
    {
      v50[1] = v5;
      OUTLINED_FUNCTION_105_8();
      sub_1B94A46F4();
      sub_1B94AE34C(&qword_1EBACCA00, type metadata accessor for Searchfoundation_TimeZone, protocol conformance descriptor for Searchfoundation_TimeZone);
      OUTLINED_FUNCTION_257_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_690();
      result = sub_1B94A47A4();
      if (v4)
      {
        return result;
      }
    }

    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v10, 1, v51) == 1)
    {
      sub_1B8D9207C(v10, &qword_1EBACAFA0, &unk_1B96CB440);
    }

    else
    {
      sub_1B94A46F4();
      sub_1B94AE34C(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng, protocol conformance descriptor for Searchfoundation_LatLng);
      sub_1B964C740();
      OUTLINED_FUNCTION_502();
      result = sub_1B94A47A4();
      if (v4)
      {
        return result;
      }
    }

    OUTLINED_FUNCTION_1();
    if (!v28 || (result = OUTLINED_FUNCTION_62_9(v26, v27, 4), !v4))
    {
      OUTLINED_FUNCTION_1();
      if (!v31 || (result = OUTLINED_FUNCTION_62_9(v29, v30, 5), !v4))
      {
        OUTLINED_FUNCTION_1();
        if (!v34 || (result = OUTLINED_FUNCTION_62_9(v32, v33, 6), !v4))
        {
          OUTLINED_FUNCTION_1();
          if (!v37 || (result = OUTLINED_FUNCTION_62_9(v35, v36, 7), !v4))
          {
            OUTLINED_FUNCTION_1();
            if (!v40 || (result = OUTLINED_FUNCTION_62_9(v38, v39, 8), !v4))
            {
              OUTLINED_FUNCTION_1();
              if (!v43 || (result = OUTLINED_FUNCTION_62_9(v41, v42, 9), !v4))
              {
                OUTLINED_FUNCTION_1();
                if (!v46 || (result = OUTLINED_FUNCTION_62_9(v44, v45, 10), !v4))
                {
                  OUTLINED_FUNCTION_1();
                  if (!v49)
                  {
                    return sub_1B964C290();
                  }

                  result = OUTLINED_FUNCTION_62_9(v47, v48, 11);
                  if (!v4)
                  {
                    return sub_1B964C290();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void static Searchfoundation_Airport.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v59 = type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v55 - v9);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB018, &unk_1B96B9910);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_35();
  type metadata accessor for Searchfoundation_TimeZone(v12);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v16 = (v15 - v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC690, &qword_1B96B9A00);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v55 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCA08, &qword_1B96B9AA8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - v23;
  v25 = *v1;
  v26 = v1[1];
  v60 = v1;
  v27 = v25 == *v0 && v26 == v0[1];
  if (!v27 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_80;
  }

  v55 = v6;
  v56 = v10;
  v28 = v0;
  v57 = type metadata accessor for Searchfoundation_Airport(0);
  v29 = *(v21 + 48);
  OUTLINED_FUNCTION_168_5();
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v24);
  if (v27)
  {
    OUTLINED_FUNCTION_37_0(&v24[v29]);
    if (v27)
    {
      sub_1B8D9207C(v24, &qword_1EBACC690, &qword_1B96B9A00);
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v24[v29]);
  if (v30)
  {
    sub_1B94A47A4();
LABEL_14:
    v31 = &qword_1EBACCA08;
    v32 = &qword_1B96B9AA8;
LABEL_15:
    v33 = v24;
LABEL_79:
    sub_1B8D9207C(v33, v31, v32);
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_23_21();
  sub_1B94A46F4();
  v34 = *v20 == *v16 && v20[1] == v16[1];
  if (!v34 && (sub_1B964C9F0() & 1) == 0)
  {
    sub_1B94A47A4();
    sub_1B94A47A4();
    v31 = &qword_1EBACC690;
    v32 = &qword_1B96B9A00;
    goto LABEL_15;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v35, v36, MEMORY[0x1E69AAC10]);
  v37 = sub_1B964C850();
  OUTLINED_FUNCTION_105_8();
  sub_1B94A47A4();
  sub_1B94A47A4();
  sub_1B8D9207C(v24, &qword_1EBACC690, &qword_1B96B9A00);
  if ((v37 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_22:
  v38 = *(v58 + 48);
  OUTLINED_FUNCTION_168_5();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_81(v2, 1);
  if (v27)
  {
    OUTLINED_FUNCTION_37_0(v2 + v38);
    if (v27)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

  v49 = v56;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v38);
  if (v50)
  {
    OUTLINED_FUNCTION_12_32();
    sub_1B94A47A4();
LABEL_70:
    v31 = &qword_1EBACB018;
    v32 = &unk_1B96B9910;
LABEL_78:
    v33 = v2;
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_22_24();
  v51 = v55;
  sub_1B94A46F4();
  if (*v49 != *v51 || v49[1] != v51[1])
  {
    OUTLINED_FUNCTION_12_32();
    sub_1B94A47A4();
    goto LABEL_77;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v52, v53, MEMORY[0x1E69AAC10]);
  v54 = sub_1B964C850();
  OUTLINED_FUNCTION_12_32();
  sub_1B94A47A4();
  if ((v54 & 1) == 0)
  {
LABEL_77:
    OUTLINED_FUNCTION_12_32();
    sub_1B94A47A4();
    v31 = &qword_1EBACAFA0;
    v32 = &unk_1B96CB440;
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_12_32();
  sub_1B94A47A4();
LABEL_26:
  sub_1B8D9207C(v2, &qword_1EBACAFA0, &unk_1B96CB440);
  v39 = v60[2] == v28[2] && v60[3] == v28[3];
  if (v39 || (sub_1B964C9F0() & 1) != 0)
  {
    v40 = v60[4] == v28[4] && v60[5] == v28[5];
    if (v40 || (sub_1B964C9F0() & 1) != 0)
    {
      v41 = v60[6] == v28[6] && v60[7] == v28[7];
      if (v41 || (sub_1B964C9F0() & 1) != 0)
      {
        v42 = v60[8] == v28[8] && v60[9] == v28[9];
        if (v42 || (sub_1B964C9F0() & 1) != 0)
        {
          v43 = v60[10] == v28[10] && v60[11] == v28[11];
          if (v43 || (sub_1B964C9F0() & 1) != 0)
          {
            v44 = v60[12] == v28[12] && v60[13] == v28[13];
            if (v44 || (sub_1B964C9F0() & 1) != 0)
            {
              v45 = v60[14] == v28[14] && v60[15] == v28[15];
              if (v45 || (sub_1B964C9F0() & 1) != 0)
              {
                v46 = v60[16] == v28[16] && v60[17] == v28[17];
                if (v46 || (sub_1B964C9F0() & 1) != 0)
                {
                  sub_1B964C2B0();
                  OUTLINED_FUNCTION_1_76();
                  sub_1B94AE34C(v47, v48, MEMORY[0x1E69AAC10]);
                  sub_1B964C850();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_80:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94ABD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE34C(&qword_1EBACF100, type metadata accessor for Searchfoundation_Airport, protocol conformance descriptor for Searchfoundation_Airport);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94ABDC8(uint64_t a1)
{
  v2 = sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport, protocol conformance descriptor for Searchfoundation_Airport);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94ABE38(uint64_t a1, uint64_t a2)
{
  sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport, protocol conformance descriptor for Searchfoundation_Airport);

  return sub_1B964C5D0();
}

uint64_t sub_1B94ABED0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEF10);
  __swift_project_value_buffer(v0, qword_1EBACEF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resultType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "flights";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ApiResults.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B94AC248(v11, v12, v13, v14);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B94AC1E0(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B94AC178(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B94AC248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Searchfoundation_Flight(0);
  sub_1B94AE34C(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight, protocol conformance descriptor for Searchfoundation_Flight);
  return sub_1B964C570();
}

uint64_t Searchfoundation_ApiResults.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_64_2();
  if (!*v0 || (sub_1B94AE394(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (!*(v2 + 16) || (sub_1B94AE3E8(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      if (!*(*(v2 + 32) + 16) || (type metadata accessor for Searchfoundation_Flight(0), sub_1B94AE34C(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight, protocol conformance descriptor for Searchfoundation_Flight), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        type metadata accessor for Searchfoundation_ApiResults(0);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_ApiResults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  else if (v3 != v5)
  {
    return 0;
  }

  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  if (*(v1 + 24))
  {
    v6 = v6 != 0;
  }

  if (*(v0 + 24) == 1)
  {
    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  sub_1B8D64C24(*(v1 + 32), *(v0 + 32));
  if (v8)
  {
    type metadata accessor for Searchfoundation_ApiResults(0);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_1_76();
    v11 = sub_1B94AE34C(v9, v10, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_634(v11) & 1;
  }

  return 0;
}

uint64_t sub_1B94AC5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE34C(&qword_1EBACF0F8, type metadata accessor for Searchfoundation_ApiResults, protocol conformance descriptor for Searchfoundation_ApiResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94AC674(uint64_t a1)
{
  v2 = sub_1B94AE34C(&qword_1EBACF098, type metadata accessor for Searchfoundation_ApiResults, protocol conformance descriptor for Searchfoundation_ApiResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94AC6E4(uint64_t a1, uint64_t a2)
{
  sub_1B94AE34C(&qword_1EBACF098, type metadata accessor for Searchfoundation_ApiResults, protocol conformance descriptor for Searchfoundation_ApiResults);

  return sub_1B964C5D0();
}

uint64_t sub_1B94AC77C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEF28);
  __swift_project_value_buffer(v0, qword_1EBACEF28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "scheduled";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "current";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bufferMinutes";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_FlightDateDescriptor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94AD7FC();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B94AD76C();
        break;
    }
  }

  return result;
}

uint64_t Searchfoundation_FlightDateDescriptor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v23[1] = a2;
  v23[2] = a3;
  v23[5] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v7 = OUTLINED_FUNCTION_183(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  v14 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v16);
  v23[3] = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  v23[0] = v5;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    OUTLINED_FUNCTION_20_15();
    sub_1B94A46F4();
    OUTLINED_FUNCTION_10_37();
    sub_1B94AE34C(v17, v18, protocol conformance descriptor for Searchfoundation_Date);
    OUTLINED_FUNCTION_257_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_690();
    result = sub_1B94A47A4();
    if (v4)
    {
      return result;
    }
  }

  v20 = v23[0];
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    OUTLINED_FUNCTION_10_37();
    sub_1B94AE34C(v21, v22, protocol conformance descriptor for Searchfoundation_Date);
    sub_1B964C740();
    result = sub_1B94A47A4();
    if (v4)
    {
      return result;
    }
  }

  if (*v20 == 0.0)
  {
    return sub_1B964C290();
  }

  result = sub_1B964C6B0();
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

void static Searchfoundation_FlightDateDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44_0();
  v40 = v5;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_266_0();
  v42 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_0();
  v41 = v10;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v40 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44_0();
  v44 = v16;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v43 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  v20 = *(v14 + 48);
  v45 = v3;
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_99_0(v19);
  if (v21)
  {
    OUTLINED_FUNCTION_99_0(&v19[v20]);
    if (v21)
    {
      sub_1B8D9207C(v19, &qword_1EBAB8E30, &qword_1B964D630);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_514();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(&v19[v20]);
  if (v21)
  {
    OUTLINED_FUNCTION_2_62();
    sub_1B94A47A4();
LABEL_9:
    v22 = &qword_1EBAB8E38;
    v23 = &qword_1B96CD870;
LABEL_10:
    v24 = v19;
LABEL_23:
    sub_1B8D9207C(v24, v22, v23);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_0_91();
  v25 = v42;
  sub_1B94A46F4();
  if (*v13 != *v25)
  {
    OUTLINED_FUNCTION_4_53();
    sub_1B94A47A4();
    sub_1B94A47A4();
    v22 = &qword_1EBAB8E30;
    v23 = &qword_1B964D630;
    goto LABEL_10;
  }

  v26 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v27, v28, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_5_41();
  sub_1B94A47A4();
  OUTLINED_FUNCTION_303();
  sub_1B94A47A4();
  sub_1B8D9207C(v19, &qword_1EBAB8E30, &qword_1B964D630);
  if ((v26 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  v29 = v44;
  v30 = *(v14 + 48);
  v31 = v45;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v29);
  if (!v21)
  {
    v32 = v41;
    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v29 + v30);
    if (!v33)
    {
      OUTLINED_FUNCTION_0_91();
      v34 = v40;
      sub_1B94A46F4();
      if (*v32 == *v34)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_76();
        sub_1B94AE34C(v35, v36, MEMORY[0x1E69AAC10]);
        v37 = sub_1B964C850();
        OUTLINED_FUNCTION_4_53();
        sub_1B94A47A4();
        OUTLINED_FUNCTION_128();
        sub_1B94A47A4();
        sub_1B8D9207C(v29, &qword_1EBAB8E30, &qword_1B964D630);
        if ((v37 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_28;
      }

      OUTLINED_FUNCTION_42_15();
      sub_1B94A47A4();
      OUTLINED_FUNCTION_182();
      sub_1B94A47A4();
      v22 = &qword_1EBAB8E30;
      v23 = &qword_1B964D630;
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_2_62();
    sub_1B94A47A4();
LABEL_21:
    v22 = &qword_1EBAB8E38;
    v23 = &qword_1B96CD870;
LABEL_22:
    v24 = v29;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_99_0(v29 + v30);
  if (!v21)
  {
    goto LABEL_21;
  }

  sub_1B8D9207C(v29, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_28:
  if (*v31 == *v1)
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_1_76();
    sub_1B94AE34C(v38, v39, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
  }

LABEL_24:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94AD310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE34C(&qword_1EBACF0F0, type metadata accessor for Searchfoundation_FlightDateDescriptor, protocol conformance descriptor for Searchfoundation_FlightDateDescriptor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94AD390(uint64_t a1)
{
  v2 = sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor, protocol conformance descriptor for Searchfoundation_FlightDateDescriptor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94AD400(uint64_t a1, uint64_t a2)
{
  sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor, protocol conformance descriptor for Searchfoundation_FlightDateDescriptor);

  return sub_1B964C5D0();
}

uint64_t sub_1B94AD498()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEF40);
  __swift_project_value_buffer(v0, qword_1EBACEF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "displayStatus";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "departureTime";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "arrivalTime";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_PegasusDisplayFields.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B94AD7FC();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94AD76C();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B94AD76C()
{
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_10_37();
  sub_1B94AE34C(v1, v2, protocol conformance descriptor for Searchfoundation_Date);
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C580();
}

uint64_t sub_1B94AD7FC()
{
  OUTLINED_FUNCTION_147_1();
  v0(0);
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_10_37();
  sub_1B94AE34C(v1, v2, protocol conformance descriptor for Searchfoundation_Date);
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C580();
}

uint64_t Searchfoundation_PegasusDisplayFields.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_64_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v3 = OUTLINED_FUNCTION_183(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_66();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - v8;
  v10 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44_0();
  v22[1] = v12;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  if (!v14 || (result = sub_1B964C700(), !v0))
  {
    v22[3] = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
    sub_1B8D92024();
    v16 = OUTLINED_FUNCTION_538();
    if (__swift_getEnumTagSinglePayload(v16, v17, v10) == 1)
    {
      sub_1B8D9207C(v9, &qword_1EBAB8E30, &qword_1B964D630);
    }

    else
    {
      v22[0] = v1;
      sub_1B94A46F4();
      OUTLINED_FUNCTION_10_37();
      sub_1B94AE34C(v18, v19, protocol conformance descriptor for Searchfoundation_Date);
      OUTLINED_FUNCTION_257_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_186();
      result = sub_1B94A47A4();
      if (v0)
      {
        return result;
      }
    }

    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8E30, &qword_1B964D630);
    }

    else
    {
      sub_1B94A46F4();
      OUTLINED_FUNCTION_10_37();
      sub_1B94AE34C(v20, v21, protocol conformance descriptor for Searchfoundation_Date);
      sub_1B964C740();
      result = sub_1B94A47A4();
      if (v0)
      {
        return result;
      }
    }

    return sub_1B964C290();
  }

  return result;
}

void static Searchfoundation_PegasusDisplayFields.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_66();
  v5 = (v3 - v4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v44 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  v48 = v11;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v44 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_66();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = *v1;
  v24 = v1[1];
  v49 = v1;
  v25 = v23 == *v0 && v24 == v0[1];
  if (!v25 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v47 = v19;
  v45 = v5;
  v46 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  v26 = *(v15 + 48);
  OUTLINED_FUNCTION_168_5();
  OUTLINED_FUNCTION_141_11();
  sub_1B8D92024();
  OUTLINED_FUNCTION_141_11();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v22);
  if (v25)
  {
    OUTLINED_FUNCTION_99_0(&v22[v26]);
    if (v25)
    {
      sub_1B8D9207C(v22, &qword_1EBAB8E30, &qword_1B964D630);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_502();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(&v22[v26]);
  if (v27)
  {
    OUTLINED_FUNCTION_2_62();
    sub_1B94A47A4();
LABEL_14:
    v28 = &qword_1EBAB8E38;
    v29 = &qword_1B96CD870;
LABEL_15:
    v30 = v22;
LABEL_28:
    sub_1B8D9207C(v30, v28, v29);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_0_91();
  sub_1B94A46F4();
  if (*v14 != *v8)
  {
    OUTLINED_FUNCTION_42_15();
    sub_1B94A47A4();
    OUTLINED_FUNCTION_182();
    sub_1B94A47A4();
    v28 = &qword_1EBAB8E30;
    v29 = &qword_1B964D630;
    goto LABEL_15;
  }

  v31 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v32, v33, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_5_41();
  sub_1B94A47A4();
  sub_1B94A47A4();
  sub_1B8D9207C(v22, &qword_1EBAB8E30, &qword_1B964D630);
  if ((v31 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v34 = v47;
  v35 = *(v15 + 48);
  OUTLINED_FUNCTION_168_5();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_99_0(v34);
  if (v25)
  {
    OUTLINED_FUNCTION_99_0(v34 + v35);
    if (v25)
    {
      sub_1B8D9207C(v34, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_33:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_76();
      sub_1B94AE34C(v42, v43, MEMORY[0x1E69AAC10]);
      sub_1B964C850();
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v36 = v48;
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v34 + v35);
  if (v37)
  {
    OUTLINED_FUNCTION_2_62();
    sub_1B94A47A4();
LABEL_26:
    v28 = &qword_1EBAB8E38;
    v29 = &qword_1B96CD870;
LABEL_27:
    v30 = v34;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_0_91();
  v38 = v45;
  sub_1B94A46F4();
  if (*v36 != *v38)
  {
    OUTLINED_FUNCTION_42_15();
    sub_1B94A47A4();
    sub_1B94A47A4();
    v28 = &qword_1EBAB8E30;
    v29 = &qword_1B964D630;
    goto LABEL_27;
  }

  v39 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v40, v41, MEMORY[0x1E69AAC10]);
  sub_1B964C850();
  OUTLINED_FUNCTION_5_41();
  sub_1B94A47A4();
  OUTLINED_FUNCTION_502();
  sub_1B94A47A4();
  sub_1B8D9207C(v34, &qword_1EBAB8E30, &qword_1B964D630);
  if (v39)
  {
    goto LABEL_33;
  }

LABEL_29:
  OUTLINED_FUNCTION_283();
}