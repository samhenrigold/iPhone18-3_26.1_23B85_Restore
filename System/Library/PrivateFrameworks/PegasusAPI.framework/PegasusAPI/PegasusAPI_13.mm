uint64_t sub_1B8DFFB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C1C0();
  sub_1B8E0070C(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10], MEMORY[0x1E69AAB08]);
  return sub_1B964C570();
}

uint64_t Debuglevelspb_AnyArray.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_0_12();
  if (!v1 || (sub_1B964C1C0(), sub_1B8E0070C(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10], MEMORY[0x1E69AAB08]), result = sub_1B964C730(), !v0))
  {
    type metadata accessor for Debuglevelspb_AnyArray(0);
    return OUTLINED_FUNCTION_2_7();
  }

  return result;
}

uint64_t sub_1B8DFFDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E0070C(&qword_1EBABAE60, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DFFE24(uint64_t a1)
{
  v2 = sub_1B8E0070C(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DFFE94(uint64_t a1, uint64_t a2)
{
  sub_1B8E0070C(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DFFF50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1B964C780();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B964D050;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  (*(v15 + 104))(v13, v14);
  return sub_1B964C760();
}

uint64_t sub_1B8E00108(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B8E00180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C280();
  type metadata accessor for Debuglevelspb_AnyArray(0);
  sub_1B8E0070C(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
  sub_1B8E0070C(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
  return sub_1B964C3A0();
}

uint64_t Debuglevelspb_AnyMap.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_0_12();
  if (!v1 || (sub_1B964C280(), type metadata accessor for Debuglevelspb_AnyArray(0), sub_1B8E0070C(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray), sub_1B8E0070C(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray), result = sub_1B964C5E0(), !v0))
  {
    type metadata accessor for Debuglevelspb_AnyMap(0);
    return OUTLINED_FUNCTION_2_7();
  }

  return result;
}

uint64_t sub_1B8E003B8(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1B964C2B0();
  sub_1B8E0070C(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8E004B8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8E0070C(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E0059C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E0070C(&qword_1EBABAE58, type metadata accessor for Debuglevelspb_AnyMap, protocol conformance descriptor for Debuglevelspb_AnyMap);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E0061C(uint64_t a1)
{
  v2 = sub_1B8E0070C(&qword_1EBABAE38, type metadata accessor for Debuglevelspb_AnyMap, protocol conformance descriptor for Debuglevelspb_AnyMap);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E0068C(uint64_t a1, uint64_t a2)
{
  sub_1B8E0070C(&qword_1EBABAE38, type metadata accessor for Debuglevelspb_AnyMap, protocol conformance descriptor for Debuglevelspb_AnyMap);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E0070C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_1B8E009D4(uint64_t a1)
{
  if (!qword_1ED9D3970)
  {
    sub_1B964C1C0();
    v1 = sub_1B964C910();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9D3970);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8E00B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8E00BFC(uint64_t a1)
{
  if (!qword_1ED9D3A88[0])
  {
    type metadata accessor for Debuglevelspb_AnyArray(255);
    v1 = sub_1B964C7C0();
    if (!v2)
    {
      atomic_store(v1, qword_1ED9D3A88);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return sub_1B964C290();
}

uint64_t Domainresultpb_DomainResult.snippet.getter()
{
  OUTLINED_FUNCTION_5_6();
  v0 = OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_521(v0, v1);
  return sub_1B8D92024();
}

uint64_t sub_1B8E00D34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B8D92024();
  return Domainresultpb_DomainResult.snippet.setter();
}

uint64_t Domainresultpb_DomainResult.snippet.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Domainresultpb_DomainResult(v1) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v3 = OUTLINED_FUNCTION_40_0();
    *(v0 + v2) = sub_1B8E05D2C(v3);
  }

  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void (*Domainresultpb_DomainResult.snippet.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  *(v1 + 56) = __swift_coroFrameAllocStub(v7);
  *(v1 + 64) = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_12_7();
  *(v1 + 72) = v8;
  OUTLINED_FUNCTION_62_0(*(v0 + v8) + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet);
  sub_1B8D92024();
  return sub_1B8E00F70;
}

void sub_1B8E00F70(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_466();
    sub_1B8D92024();
    Domainresultpb_DomainResult.snippet.setter();
    v5 = OUTLINED_FUNCTION_236();
    sub_1B8D9207C(v5, v6, &qword_1B96566D0);
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = *(v2 + 72);
      v8 = *(v2 + 48);
      OUTLINED_FUNCTION_31_6();
      v9 = OUTLINED_FUNCTION_40_0();
      *(v8 + v7) = sub_1B8E05D2C(v9);
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_131();
    swift_beginAccess();
    sub_1B8DAA170();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Domainresultpb_DomainResult.kg.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_23_4();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(type metadata accessor for Kgqsapipb_KGDBResponse(0) + 20);
  if (qword_1EBAB6250 != -1)
  {
    OUTLINED_FUNCTION_58_1(&qword_1EBAB6250);
  }

  *(a1 + v10) = qword_1EBABBB70;
}

void Domainresultpb_DomainResult.kg.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Kgqsapipb_KGDBResponse(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (!OUTLINED_FUNCTION_74_2())
    {
      OUTLINED_FUNCTION_23_4();
      OUTLINED_FUNCTION_177_1();
      sub_1B8E0D924();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB6250 != -1)
  {
    OUTLINED_FUNCTION_58_1(&qword_1EBAB6250);
  }

  *&v12[v15] = qword_1EBABBB70;

LABEL_9:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.maps.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_19_3();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Mapspb_LocalSearchBusiness(0) + 20);
  if (qword_1EBAB6460 != -1)
  {
    OUTLINED_FUNCTION_56_1(&qword_1EBAB6460);
  }

  *(a1 + v11) = qword_1EBABCD98;
}

uint64_t sub_1B8E01470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  OUTLINED_FUNCTION_177_1();
  sub_1B8E0D97C();
  return a7(v11);
}

void Domainresultpb_DomainResult.maps.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Mapspb_LocalSearchBusiness(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_74_2();
    if (v14 == 1)
    {
      OUTLINED_FUNCTION_19_3();
      OUTLINED_FUNCTION_177_1();
      sub_1B8E0D924();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB6460 != -1)
  {
    OUTLINED_FUNCTION_56_1(&qword_1EBAB6460);
  }

  *&v12[v15] = qword_1EBABCD98;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

void sub_1B8E016BC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8E0D97C();
    a3(v5);
    sub_1B8E0D8D0();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v7);

  free(v4);
}

uint64_t Domainresultpb_DomainResult.webImages.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_18_4();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20);
  if (qword_1EBAB65A0 != -1)
  {
    OUTLINED_FUNCTION_54_1(&qword_1EBAB65A0);
  }

  *(a1 + v11) = qword_1EBABD8D8;
}

void Domainresultpb_DomainResult.webImages.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Snippetpb_WebImagesSnippet(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_74_2();
    if (v14 == 2)
    {
      OUTLINED_FUNCTION_18_4();
      OUTLINED_FUNCTION_177_1();
      sub_1B8E0D924();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB65A0 != -1)
  {
    OUTLINED_FUNCTION_54_1(&qword_1EBAB65A0);
  }

  *&v12[v15] = qword_1EBABD8D8;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.movies.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_17_4();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Snippetpb_MoviesSnippet(0) + 20);
  if (qword_1EBAB6560 != -1)
  {
    OUTLINED_FUNCTION_53_1(&qword_1EBAB6560);
  }

  *(a1 + v11) = qword_1EBABD698;
}

void Domainresultpb_DomainResult.movies.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Snippetpb_MoviesSnippet(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_74_2();
    if (v14 == 3)
    {
      OUTLINED_FUNCTION_17_4();
      OUTLINED_FUNCTION_177_1();
      sub_1B8E0D924();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB6560 != -1)
  {
    OUTLINED_FUNCTION_53_1(&qword_1EBAB6560);
  }

  *&v12[v15] = qword_1EBABD698;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.tvShow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_16_7();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20);
  if (qword_1EBAB6580 != -1)
  {
    OUTLINED_FUNCTION_51_3(&qword_1EBAB6580);
  }

  *(a1 + v11) = qword_1EBABD7B0;
}

void Domainresultpb_DomainResult.tvShow.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Snippetpb_TvShowSnippet(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_74_2();
    if (v14 == 4)
    {
      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_177_1();
      sub_1B8E0D924();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB6580 != -1)
  {
    OUTLINED_FUNCTION_51_3(&qword_1EBAB6580);
  }

  *&v12[v15] = qword_1EBABD7B0;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.media.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_15_5();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Snippetpb_MediaSnippet(0) + 20);
  if (qword_1EBAB6550 != -1)
  {
    OUTLINED_FUNCTION_49_2(&qword_1EBAB6550);
  }

  *(a1 + v11) = qword_1EBABD650;
}

void Domainresultpb_DomainResult.media.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Snippetpb_MediaSnippet(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_74_2();
    if (v14 == 5)
    {
      OUTLINED_FUNCTION_15_5();
      OUTLINED_FUNCTION_177_1();
      sub_1B8E0D924();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB6550 != -1)
  {
    OUTLINED_FUNCTION_49_2(&qword_1EBAB6550);
  }

  *&v12[v15] = qword_1EBABD650;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.shopping.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_24_4();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  return Snippetpb_ShoppingSnippet.init()(a1);
}

void Domainresultpb_DomainResult.shopping.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Snippetpb_ShoppingSnippet(v7);
  OUTLINED_FUNCTION_59_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v12[16] = 0;
    *(v12 + 48) = 1;
    v15 = MEMORY[0x1E69E7CC0];
    *(v12 + 5) = 0;
    *(v12 + 7) = v15;
    *(v12 + 8) = v15;
    *(v12 + 9) = v15;
    *(v12 + 10) = v15;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v8 + 56);
    v17 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
    __swift_storeEnumTagSinglePayload(v12 + v16, 1, 1, v17);
    goto LABEL_8;
  }

  v14 = OUTLINED_FUNCTION_74_2();
  if (v14 != 6)
  {
    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_177_1();
  sub_1B8E0D924();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.visual3P.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_22_4();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = xmmword_1B9652FE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
  *(a1 + 72) = v11;
  type metadata accessor for Snippetpb_Visual3PSnippet(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Domainresultpb_DomainResult.visual3P.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Snippetpb_Visual3PSnippet(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v11[2] = xmmword_1B9652FE0;
    *(v11 + 6) = 0;
    *(v11 + 7) = v14;
    *(v11 + 8) = 0;
    *(v11 + 9) = v14;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_74_2();
  if (v13 != 7)
  {
    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_22_4();
  OUTLINED_FUNCTION_177_1();
  sub_1B8E0D924();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.experimentalVisual.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_21_3();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1B9652FE0;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Domainresultpb_DomainResult.experimentalVisual.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Snippetpb_ExperimentalVisualSnippet(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
LABEL_7:
    *v11 = 0;
    v11[8] = 1;
    *(v11 + 1) = xmmword_1B9652FE0;
    *(v11 + 4) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_74_2();
  if (v13 != 8)
  {
    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_177_1();
  sub_1B8E0D924();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.food.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_20_1();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  type metadata accessor for Snippetpb_FoodSnippet(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E02C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(OUTLINED_FUNCTION_68_2() + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v5 = OUTLINED_FUNCTION_40_0();
    *(v1 + v4) = sub_1B8E05D2C(v5);
  }

  sub_1B8E0D924();
  v6 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  swift_storeEnumTagMultiPayload();
  v7 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Domainresultpb_DomainResult.food.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  type metadata accessor for Snippetpb_FoodSnippet(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v11[4] = 0;
    v11[5] = v14;
    v11[6] = 0;
    v11[7] = v14;
    v11[8] = 0;
    *(v11 + 18) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_74_2();
  if (v13 != 9)
  {
    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_177_1();
  sub_1B8E0D924();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.tophit.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Tophitpb_TopHit(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 9) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v7, &qword_1EBABAEC0, &qword_1B96566D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_6();
    return OUTLINED_FUNCTION_70_1();
  }

  return result;
}

uint64_t Domainresultpb_DomainResult.tophit.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEC0, &qword_1B96566D8);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(OUTLINED_FUNCTION_68_2() + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v5 = OUTLINED_FUNCTION_40_0();
    *(v1 + v4) = sub_1B8E05D2C(v5);
  }

  OUTLINED_FUNCTION_9_6();
  sub_1B8E0D924();
  type metadata accessor for Tophitpb_TopHit(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Domainresultpb_DomainResult.tophit.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v0[4] = v5;
  v6 = type metadata accessor for Tophitpb_TopHit(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v0[6] = v9;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v10 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v10, v11, v6);
  if (v12)
  {
    *v9 = 0;
    v9[8] = 1;
    *(v9 + 9) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v13, v14, v6);
    if (!v12)
    {
      sub_1B8D9207C(v5, &qword_1EBABAEC0, &qword_1B96566D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_6();
    sub_1B8E0D924();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E03274(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Domainresultpb_DomainResult.canonicalID.setter(v1, v2);
}

void (*Domainresultpb_DomainResult.canonicalID.modify())(uint64_t *a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_12_7();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  OUTLINED_FUNCTION_62_0(v4);
  v5 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v5;

  return sub_1B8E03348;
}

uint64_t Domainresultpb_DomainResult.resultEntities.getter()
{
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_521(*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities, v3);
}

uint64_t Domainresultpb_DomainResult.resultEntities.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Domainresultpb_DomainResult(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v7 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E05D2C(v7);
    *(v2 + v4) = v6;
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
  v9 = OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_18(v9, v10);
  *(v6 + v8) = v0;
}

void (*Domainresultpb_DomainResult.resultEntities.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_12_7();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities);
  *(v1 + 48) = *(v4 + v5);

  return sub_1B8E034DC;
}

void sub_1B8E034DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Domainresultpb_DomainResult.resultEntities.setter();
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
      OUTLINED_FUNCTION_31_6();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B8E05D2C(v10);
      *(v9 + v8) = v7;
    }

    v11 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
    OUTLINED_FUNCTION_18(v7 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities, v2 + 24);
    *(v7 + v11) = v3;
  }

  free(v2);
}

uint64_t Domainresultpb_DomainResult.alternativeResult.getter()
{
  OUTLINED_FUNCTION_12_7();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  OUTLINED_FUNCTION_521(v2 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult, v5);
  return *(v2 + v3);
}

uint64_t Domainresultpb_DomainResult.alternativeResult.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Domainresultpb_DomainResult(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v7 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E05D2C(v7);
    *(v2 + v4) = v6;
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  v9 = OUTLINED_FUNCTION_93_2();
  result = OUTLINED_FUNCTION_18(v9, v10);
  *(v6 + v8) = a1 & 1;
  return result;
}

uint64_t Domainresultpb_DomainResult.alternativeResult.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_12_7();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  OUTLINED_FUNCTION_62_0(v4 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult);
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E036D0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 72);
    OUTLINED_FUNCTION_31_6();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E05D2C(v11);
    *(v10 + v9) = v8;
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  v13 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  OUTLINED_FUNCTION_18(v8 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult, v3 + v12);
  *(v8 + v13) = v6;

  free(v3);
}

float Domainresultpb_DomainResult.score.getter()
{
  OUTLINED_FUNCTION_12_7();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score;
  OUTLINED_FUNCTION_521(v2, v4);
  return *v2;
}

uint64_t Domainresultpb_DomainResult.score.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Domainresultpb_DomainResult(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v7 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E05D2C(v7);
    *(v2 + v4) = v6;
  }

  v8 = (v6 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  result = OUTLINED_FUNCTION_18(v6 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score, v10);
  *v8 = a1;
  return result;
}

uint64_t Domainresultpb_DomainResult.score.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_12_7();
  *(v1 + 84) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  OUTLINED_FUNCTION_62_0(v4);
  *(v1 + 80) = *v4;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E038C4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 84);
  v6 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 84);
    v10 = *(v3 + 72);
    OUTLINED_FUNCTION_31_6();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E05D2C(v11);
    *(v10 + v9) = v8;
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  v13 = (v8 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  OUTLINED_FUNCTION_18(v13, v3 + v12);
  *v13 = v4;

  free(v3);
}

uint64_t Domainresultpb_DomainResult.layoutInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Domainresultpb_LayoutInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = MEMORY[0x1E69E7CC0];
    *(a1 + 16) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v7, &qword_1EBABAED0, &qword_1B96566E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_8();
    return OUTLINED_FUNCTION_70_1();
  }

  return result;
}

uint64_t Domainresultpb_DomainResult.layoutInfo.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAED0, &qword_1B96566E0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(OUTLINED_FUNCTION_68_2() + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v5 = OUTLINED_FUNCTION_40_0();
    *(v1 + v4) = sub_1B8E05D2C(v5);
  }

  OUTLINED_FUNCTION_8_8();
  sub_1B8E0D924();
  type metadata accessor for Domainresultpb_LayoutInfo(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

uint64_t Domainresultpb_LayoutInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  type metadata accessor for Domainresultpb_LayoutInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Domainresultpb_DomainResult.layoutInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v0[4] = v5;
  v6 = type metadata accessor for Domainresultpb_LayoutInfo(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v0[6] = v9;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v10 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v10, v11, v6);
  if (v12)
  {
    *v9 = 0;
    v9[1] = MEMORY[0x1E69E7CC0];
    *(v9 + 16) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v13, v14, v6);
    if (!v12)
    {
      sub_1B8D9207C(v5, &qword_1EBABAED0, &qword_1B96566E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_8();
    sub_1B8E0D924();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E03D68(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-v13 - 8];
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_521(v5 + *a3, v20);
  sub_1B8D92024();
  v15 = (a4)(0);
  OUTLINED_FUNCTION_178(v14, 1, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_1B8D9207C(v14, v6, v4);
  return v17;
}

uint64_t sub_1B8E03E68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_16();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(type metadata accessor for Domainresultpb_DomainResult(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v10 = OUTLINED_FUNCTION_40_0();
    *(v3 + v9) = sub_1B8E05D2C(v10);
  }

  a3(0);
  v11 = OUTLINED_FUNCTION_207();
  __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E03F70(void *a1)
{
  OUTLINED_FUNCTION_12_7();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521(v4, v7);
  v5 = *v4;

  return v5;
}

uint64_t sub_1B8E03FC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Domainresultpb_DomainResult.entityType.setter(v1, v2);
}

uint64_t sub_1B8E04014(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_16();
  v8 = *(type metadata accessor for Domainresultpb_DomainResult(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E05D2C(v11);
    *(v7 + v8) = v10;
  }

  v12 = (v10 + *a3);
  OUTLINED_FUNCTION_18(v12, v14);
  *v12 = v5;
  v12[1] = v3;
}

void (*Domainresultpb_DomainResult.entityType.modify())(uint64_t *a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_12_7();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
  OUTLINED_FUNCTION_62_0(v4);
  v5 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v5;

  return sub_1B8E0412C;
}

void sub_1B8E0414C(uint64_t *a1, char a2, void *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {

    v8 = OUTLINED_FUNCTION_461();
    a4(v8);
  }

  else
  {
    v10 = *(v4 + 72);
    v11 = *(v4 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v4 + 72);
      v15 = *(v4 + 64);
      OUTLINED_FUNCTION_31_6();
      v16 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8E05D2C(v16);
      *(v15 + v14) = v13;
    }

    v17 = (v13 + *a3);
    OUTLINED_FUNCTION_18(v17, v4 + 24);
    *v17 = v5;
    v17[1] = v6;
  }

  free(v4);
}

uint64_t Domainresultpb_DomainResult.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Domainresultpb_DomainResult.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

void static Domainresultpb_DomainResult.OneOf_Snippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v115 = v0;
  v116 = v1;
  v2 = type metadata accessor for Snippetpb_FoodSnippet(0);
  v3 = OUTLINED_FUNCTION_183(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21();
  v109 = v4;
  v5 = OUTLINED_FUNCTION_201();
  v94 = type metadata accessor for Snippetpb_ExperimentalVisualSnippet(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v110 = v7;
  v8 = OUTLINED_FUNCTION_201();
  v9 = type metadata accessor for Snippetpb_Visual3PSnippet(v8);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21();
  v106 = v11;
  v12 = OUTLINED_FUNCTION_201();
  v13 = type metadata accessor for Snippetpb_ShoppingSnippet(v12);
  v14 = OUTLINED_FUNCTION_183(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v104 = v15;
  v16 = OUTLINED_FUNCTION_201();
  v103 = type metadata accessor for Snippetpb_MediaSnippet(v16);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21();
  v108 = v18;
  v19 = OUTLINED_FUNCTION_201();
  v101 = type metadata accessor for Snippetpb_TvShowSnippet(v19);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  v107 = v21;
  v22 = OUTLINED_FUNCTION_201();
  v99 = type metadata accessor for Snippetpb_MoviesSnippet(v22);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_21();
  v105 = v24;
  v25 = OUTLINED_FUNCTION_201();
  v98 = type metadata accessor for Snippetpb_WebImagesSnippet(v25);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_21();
  v102 = v27;
  v28 = OUTLINED_FUNCTION_201();
  v97 = type metadata accessor for Mapspb_LocalSearchBusiness(v28);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_21();
  v100 = v30;
  v31 = OUTLINED_FUNCTION_201();
  v95 = type metadata accessor for Kgqsapipb_KGDBResponse(v31);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_21();
  v96 = v33;
  v34 = OUTLINED_FUNCTION_201();
  type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(v34);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_66();
  v38 = (v36 - v37);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_682();
  v114 = v40;
  OUTLINED_FUNCTION_230();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = (&v94 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v94 - v46;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_682();
  v113 = v48;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_682();
  v112 = v50;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_682();
  v111 = v52;
  OUTLINED_FUNCTION_230();
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = &v94 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54);
  v59 = &v94 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v94 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAED8, &qword_1B96566E8);
  OUTLINED_FUNCTION_183(v62);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v94 - v64;
  sub_1B8E0D97C();
  sub_1B8E0D97C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 1)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_19_3();
      v78 = v100;
      sub_1B8E0D924();
      if (*&v59[*(v97 + 20)] == *(v78 + *(v97 + 20)) || (, , v79 = OUTLINED_FUNCTION_432(), sub_1B8E9C91C(v79, v80), OUTLINED_FUNCTION_87_1(), , (v44 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_8();
        sub_1B8CD1B50(v81, v82, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_44_1();
      sub_1B8E0D8D0();
      goto LABEL_48;
    case 2u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 2)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_18_4();
      v70 = v102;
      sub_1B8E0D924();
      if (*&v56[*(v98 + 20)] == *(v70 + *(v98 + 20)) || (, , OUTLINED_FUNCTION_432(), sub_1B8ED6DA4(), OUTLINED_FUNCTION_87_1(), , (v44 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_8();
        sub_1B8CD1B50(v71, v72, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_45_0();
      sub_1B8E0D8D0();
      goto LABEL_48;
    case 3u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 3)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_17_4();
      sub_1B8E0D924();
      OUTLINED_FUNCTION_50_2();
      if (v66)
      {
        goto LABEL_18;
      }

      v73 = OUTLINED_FUNCTION_432();
      sub_1B8EC2CC0(v73, v74);
      OUTLINED_FUNCTION_87_1();

      if (v44)
      {
        goto LABEL_18;
      }

      goto LABEL_47;
    case 4u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 4)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_16_7();
      sub_1B8E0D924();
      OUTLINED_FUNCTION_50_2();
      if (v66)
      {
        goto LABEL_18;
      }

      v67 = OUTLINED_FUNCTION_432();
      sub_1B8ECE508(v67, v68);
      OUTLINED_FUNCTION_87_1();

      if (v44)
      {
        goto LABEL_18;
      }

      goto LABEL_47;
    case 5u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 5)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_15_5();
      sub_1B8E0D924();
      OUTLINED_FUNCTION_50_2();
      if (v66 || (, , OUTLINED_FUNCTION_432(), sub_1B8EB9A38(), OUTLINED_FUNCTION_87_1(), , (v44 & 1) != 0))
      {
LABEL_18:
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_8();
        sub_1B8CD1B50(v75, v76, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_67_2();
      }

      goto LABEL_47;
    case 6u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 6)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_24_4();
      v83 = v104;
      sub_1B8E0D924();
      static Snippetpb_ShoppingSnippet.== infix(_:_:)(v47, v83);
      sub_1B8E0D8D0();
      goto LABEL_48;
    case 7u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 7)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_22_4();
      v77 = v106;
      sub_1B8E0D924();
      static Snippetpb_Visual3PSnippet.== infix(_:_:)(v44, v77);
      sub_1B8E0D8D0();
      goto LABEL_48;
    case 8u:
      OUTLINED_FUNCTION_1_11();
      v84 = v114;
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 8)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_21_3();
      v85 = v110;
      sub_1B8E0D924();
      if (sub_1B8D57FD0(*v84, *(v84 + 8), *v85, *(v85 + 8)) && (MEMORY[0x1BFADC060](*(v84 + 16), *(v84 + 24), *(v85 + 16), *(v85 + 24)) & 1) != 0)
      {
        sub_1B8D7B19C(*(v84 + 32), *(v85 + 32));
        if (v86)
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_2_8();
          sub_1B8CD1B50(v87, v88, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
        }
      }

LABEL_47:
      sub_1B8E0D8D0();
      goto LABEL_48;
    case 9u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 9)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_20_1();
      v69 = v109;
      sub_1B8E0D924();
      static Snippetpb_FoodSnippet.== infix(_:_:)(v38, v69);
      sub_1B8E0D8D0();
      OUTLINED_FUNCTION_543();
      goto LABEL_48;
    default:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1())
      {
LABEL_37:
        sub_1B8E0D8D0();
        sub_1B8D9207C(v65, &qword_1EBABAED8, &qword_1B96566E8);
      }

      else
      {
        OUTLINED_FUNCTION_23_4();
        v89 = v96;
        sub_1B8E0D924();
        if (*&v61[*(v95 + 20)] == *(v89 + *(v95 + 20)) || (, , OUTLINED_FUNCTION_543(), sub_1B8E44E08(), v91 = v90, , , (v91 & 1) != 0))
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_2_8();
          sub_1B8CD1B50(v92, v93, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
        }

        OUTLINED_FUNCTION_41_1();
        sub_1B8E0D8D0();
        OUTLINED_FUNCTION_432();
LABEL_48:
        sub_1B8E0D8D0();
        OUTLINED_FUNCTION_0_13();
        sub_1B8E0D8D0();
      }

      OUTLINED_FUNCTION_283();
      return;
  }
}

uint64_t Domainresultpb_DomainResult.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Domainresultpb_DomainResult(0) + 20);
  if (qword_1EBAB60F0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBABAE80;
}

uint64_t Domainresultpb_SiribaseEntity.id.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Domainresultpb_SiribaseEntity.primaryName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Domainresultpb_SiribaseEntity.description_p.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Domainresultpb_SiribaseEntity.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Domainresultpb_SiribaseEntity(0) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Domainresultpb_SiribaseEntity.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Domainresultpb_SiribaseEntity(v2) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Domainresultpb_SiribaseEntity.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Domainresultpb_SiribaseEntity(v0);
  return nullsub_1;
}

uint64_t Domainresultpb_SiribaseEntity.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  type metadata accessor for Domainresultpb_SiribaseEntity(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Domainresultpb_LayoutInfo.rankedExperienceSections.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Domainresultpb_LayoutInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Domainresultpb_LayoutInfo(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Domainresultpb_LayoutInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Domainresultpb_LayoutInfo(v2) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Domainresultpb_LayoutInfo.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Domainresultpb_LayoutInfo(v0);
  return nullsub_1;
}

uint64_t sub_1B8E0566C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABAE68);
  __swift_project_value_buffer(v0, qword_1EBABAE68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1B96566C0;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 2;
  *v4 = "kg";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 7;
  *v8 = "maps";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 9;
  *v10 = "web_images";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 13;
  *v12 = "movies";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 14;
  *v14 = "tv_show";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 16;
  *v16 = "media";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 21;
  *v18 = "shopping";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 26;
  *v20 = "visual3p";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 42;
  *v22 = "experimental_visual";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 49;
  *v24 = "food";
  *(v24 + 1) = 4;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 51;
  *v26 = "tophit";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 52;
  *v28 = "canonical_id";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 53;
  *v30 = "result_entities";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 54;
  *v32 = "alternative_result";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 57;
  *v34 = "score";
  *(v34 + 1) = 5;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 101;
  *v36 = "layout_info";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 102;
  *v38 = "entity_type";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E05C08()
{
  type metadata accessor for Domainresultpb_DomainResult._StorageClass(0);
  swift_allocObject();
  result = sub_1B8E05C48();
  qword_1EBABAE80 = result;
  return result;
}

uint64_t sub_1B8E05C48()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  v2 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__tophit;
  v4 = type metadata accessor for Tophitpb_TopHit(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score) = 0;
  v6 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__layoutInfo;
  v7 = type metadata accessor for Domainresultpb_LayoutInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B8E05D2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAED0, &qword_1B96566E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEC0, &qword_1B96566D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32[1] = v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  v9 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__tophit;
  v11 = type metadata accessor for Tophitpb_TopHit(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities) = MEMORY[0x1E69E7CC0];
  v33 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult) = 0;
  v34 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score) = 0;
  v14 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__layoutInfo;
  v35 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__layoutInfo;
  v15 = type metadata accessor for Domainresultpb_LayoutInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
  v32[0] = v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType;
  *v16 = 0;
  v16[1] = 0xE000000000000000;
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
  v17 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  swift_beginAccess();
  v19 = *v17;
  v18 = v17[1];
  swift_beginAccess();
  *v12 = v19;
  v12[1] = v18;

  v20 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
  swift_beginAccess();
  v21 = *(a1 + v20);
  swift_beginAccess();
  *(v1 + v13) = v21;

  v22 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + v22);
  v23 = v33;
  swift_beginAccess();
  *(v1 + v23) = v22;
  v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  swift_beginAccess();
  v25 = *v24;
  v26 = v34;
  swift_beginAccess();
  *v26 = v25;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v27 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];

  v30 = v32[0];
  swift_beginAccess();
  *v30 = v29;
  v30[1] = v28;

  return v1;
}

uint64_t sub_1B8E0622C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet, &qword_1EBABAEB8, &qword_1B96566D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__tophit, &qword_1EBABAEC0, &qword_1B96566D8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__layoutInfo, &qword_1EBABAED0, &qword_1B96566E0);

  return v0;
}

uint64_t sub_1B8E062DC()
{
  v0 = sub_1B8E0622C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Domainresultpb_DomainResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Domainresultpb_DomainResult(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Domainresultpb_DomainResult._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E05D2C(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B8E063D0(v10, a1, a2, a3);
}

uint64_t sub_1B8E063D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v12 & 1) != 0)
    {
      return result;
    }

    if (!(!v10 & v9))
    {
      switch(result)
      {
        case '*':
          sub_1B8E091E4(a1, a2, a3, a4);
          continue;
        case '+':
        case ',':
        case '-':
        case '.':
        case '/':
        case '0':
        case '2':
        case '7':
        case '8':
          continue;
        case '1':
          sub_1B8E09754(a1, a2, a3, a4);
          continue;
        case '3':
          sub_1B8E09CC4(a2, a1, a3, a4);
          continue;
        case '4':
          goto LABEL_24;
        case '5':
          sub_1B8E09DA0(a2, a1, a3, a4);
          continue;
        case '6':
          sub_1B8E09E7C(a2, a1, a3, a4);
          continue;
        case '9':
          sub_1B8E09F08(a2, a1, a3, a4);
          continue;
        default:
          JUMPOUT(0);
      }
    }

    switch(result)
    {
      case 7:
        sub_1B8E06BD4(a1, a2, a3, a4);
        break;
      case 8:
      case 10:
      case 11:
      case 12:
      case 15:
      case 17:
      case 18:
      case 19:
      case 20:
        continue;
      case 9:
        sub_1B8E07144(a1, a2, a3, a4);
        break;
      case 13:
        sub_1B8E076B4(a1, a2, a3, a4);
        break;
      case 14:
        sub_1B8E07C24(a1, a2, a3, a4);
        break;
      case 16:
        sub_1B8E08194(a1, a2, a3, a4);
        break;
      case 21:
        sub_1B8E08704(a1, a2, a3, a4);
        break;
      default:
        switch(result)
        {
          case 102:
LABEL_24:
            sub_1B8DAB218();
            break;
          case 26:
            sub_1B8E08C74(a1, a2, a3, a4);
            break;
          case 101:
            sub_1B8E09F94(a2, a1, a3, a4);
            break;
          case 2:
            sub_1B8E06680(a1, a2, a3, a4);
            break;
        }

        break;
    }
  }
}

uint64_t sub_1B8E06680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v36 = a3;
  v35 = a2;
  v5 = type metadata accessor for Kgqsapipb_KGDBResponse(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAFE8, &unk_1B9656C90);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  __swift_storeEnumTagSinglePayload(&v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v30 = a1;
  v28 = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B8E0D8D0();
    }

    else
    {
      sub_1B8D9207C(v21, &qword_1EBABAFE8, &unk_1B9656C90);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFD0, type metadata accessor for Kgqsapipb_KGDBResponse, protocol conformance descriptor for Kgqsapipb_KGDBResponse);
  v24 = v33;
  sub_1B964C580();
  if (v24)
  {
    v25 = v21;
    return sub_1B8D9207C(v25, &qword_1EBABAFE8, &unk_1B9656C90);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBABAFE8, &unk_1B9656C90);
    v25 = v19;
    return sub_1B8D9207C(v25, &qword_1EBABAFE8, &unk_1B9656C90);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v21, &qword_1EBABAFE8, &unk_1B9656C90);
  v27 = v29;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v14);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E06BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Mapspb_LocalSearchBusiness(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAFF0, &qword_1B96607C0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v28[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v21, &qword_1EBABAFF0, &qword_1B96607C0);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFC8, type metadata accessor for Mapspb_LocalSearchBusiness, protocol conformance descriptor for Mapspb_LocalSearchBusiness);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBABAFF0, &qword_1B96607C0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBABAFF0, &qword_1B96607C0);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBABAFF0, &qword_1B96607C0);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBABAFF0, &qword_1B96607C0);
  v27 = v29;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E07144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Snippetpb_WebImagesSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAFF8, &qword_1B9656CA0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v28[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v21, &qword_1EBABAFF8, &qword_1B9656CA0);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFC0, type metadata accessor for Snippetpb_WebImagesSnippet, protocol conformance descriptor for Snippetpb_WebImagesSnippet);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBABAFF8, &qword_1B9656CA0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBABAFF8, &qword_1B9656CA0);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBABAFF8, &qword_1B9656CA0);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBABAFF8, &qword_1B9656CA0);
  v27 = v29;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E076B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Snippetpb_MoviesSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB000, &qword_1B9656CA8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v28[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v21, &qword_1EBABB000, &qword_1B9656CA8);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFD8, type metadata accessor for Snippetpb_MoviesSnippet, protocol conformance descriptor for Snippetpb_MoviesSnippet);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBABB000, &qword_1B9656CA8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBABB000, &qword_1B9656CA8);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBABB000, &qword_1B9656CA8);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBABB000, &qword_1B9656CA8);
  v27 = v29;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E07C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Snippetpb_TvShowSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB008, &qword_1B9656CB0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v28[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v21, &qword_1EBABB008, &qword_1B9656CB0);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFE0, type metadata accessor for Snippetpb_TvShowSnippet, protocol conformance descriptor for Snippetpb_TvShowSnippet);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBABB008, &qword_1B9656CB0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBABB008, &qword_1B9656CB0);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBABB008, &qword_1B9656CB0);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBABB008, &qword_1B9656CB0);
  v27 = v29;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E08194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Snippetpb_MediaSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB010, &qword_1B9656CB8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v28[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v21, &qword_1EBABB010, &qword_1B9656CB8);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFB8, type metadata accessor for Snippetpb_MediaSnippet, protocol conformance descriptor for Snippetpb_MediaSnippet);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBABB010, &qword_1B9656CB8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBABB010, &qword_1B9656CB8);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBABB010, &qword_1B9656CB8);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBABB010, &qword_1B9656CB8);
  v27 = v29;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E08704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Snippetpb_ShoppingSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB018, &qword_1B9656CC0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v28[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v21, &qword_1EBABB018, &qword_1B9656CC0);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFB0, type metadata accessor for Snippetpb_ShoppingSnippet, protocol conformance descriptor for Snippetpb_ShoppingSnippet);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBABB018, &qword_1B9656CC0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBABB018, &qword_1B9656CC0);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBABB018, &qword_1B9656CC0);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBABB018, &qword_1B9656CC0);
  v27 = v29;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E08C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Snippetpb_Visual3PSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB020, &qword_1B9656CC8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v28[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8D9207C(v21, &qword_1EBABB020, &qword_1B9656CC8);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFA8, type metadata accessor for Snippetpb_Visual3PSnippet, protocol conformance descriptor for Snippetpb_Visual3PSnippet);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBABB020, &qword_1B9656CC8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBABB020, &qword_1B9656CC8);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBABB020, &qword_1B9656CC8);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBABB020, &qword_1B9656CC8);
  v27 = v29;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E091E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB028, &qword_1B9656CD0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v28[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8D9207C(v21, &qword_1EBABB028, &qword_1B9656CD0);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFA0, type metadata accessor for Snippetpb_ExperimentalVisualSnippet, protocol conformance descriptor for Snippetpb_ExperimentalVisualSnippet);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBABB028, &qword_1B9656CD0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBABB028, &qword_1B9656CD0);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBABB028, &qword_1B9656CD0);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBABB028, &qword_1B9656CD0);
  v27 = v29;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E09754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Snippetpb_FoodSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB030, &qword_1B9656CD8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v28[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B8D9207C(v21, &qword_1EBABB030, &qword_1B9656CD8);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAF98, type metadata accessor for Snippetpb_FoodSnippet, protocol conformance descriptor for Snippetpb_FoodSnippet);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBABB030, &qword_1B9656CD8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBABB030, &qword_1B9656CD8);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBABB030, &qword_1B9656CD8);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBABB030, &qword_1B9656CD8);
  v27 = v29;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E09CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Tophitpb_TopHit(0);
  sub_1B8CD1B50(&qword_1EBABAF90, type metadata accessor for Tophitpb_TopHit, protocol conformance descriptor for Tophitpb_TopHit);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E09DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Domainresultpb_SiribaseEntity(0);
  sub_1B8CD1B50(&qword_1EBABAF18, type metadata accessor for Domainresultpb_SiribaseEntity, protocol conformance descriptor for Domainresultpb_SiribaseEntity);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E09E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E09F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8E09F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Domainresultpb_LayoutInfo(0);
  sub_1B8CD1B50(&qword_1EBABAF30, type metadata accessor for Domainresultpb_LayoutInfo, protocol conformance descriptor for Domainresultpb_LayoutInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Domainresultpb_DomainResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Domainresultpb_DomainResult(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B8E0A0D4(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8E0A0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a4;
  v100 = a3;
  v105 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAED0, &qword_1B96566E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = v75 - v6;
  v76 = type metadata accessor for Domainresultpb_LayoutInfo(0);
  MEMORY[0x1EEE9AC00](v76);
  v75[1] = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEC0, &qword_1B96566D8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = v75 - v9;
  v92 = type metadata accessor for Tophitpb_TopHit(0);
  MEMORY[0x1EEE9AC00](v92);
  v83 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Snippetpb_FoodSnippet(0);
  MEMORY[0x1EEE9AC00](v77);
  v78 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0);
  MEMORY[0x1EEE9AC00](v79);
  v80 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Snippetpb_Visual3PSnippet(0);
  MEMORY[0x1EEE9AC00](v81);
  v98 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Snippetpb_ShoppingSnippet(0);
  MEMORY[0x1EEE9AC00](v82);
  v104 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Snippetpb_MediaSnippet(0);
  MEMORY[0x1EEE9AC00](v84);
  v85 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Snippetpb_WebImagesSnippet(0);
  MEMORY[0x1EEE9AC00](v86);
  v87 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Mapspb_LocalSearchBusiness(0);
  MEMORY[0x1EEE9AC00](v89);
  v90 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v91 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v94 = v75 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v95 = v75 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v96 = v75 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v97 = v75 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v99 = v75 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v103 = v75 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = v75 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = v75 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = v75 - v39;
  v41 = type metadata accessor for Kgqsapipb_KGDBResponse(0);
  MEMORY[0x1EEE9AC00](v41);
  v42 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v106 = a1;
  v107 = v42;
  sub_1B8D92024();
  v43 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v40, 1, v43) == 1)
  {
    sub_1B8D9207C(v40, &qword_1EBABAEB8, &qword_1B96566D0);
    v44 = v102;
    v45 = v101;
    v46 = v100;
  }

  else if (swift_getEnumCaseMultiPayload())
  {
    sub_1B8E0D8D0();
    v44 = v102;
    v45 = v101;
    v46 = v100;
  }

  else
  {
    sub_1B8E0D924();
    sub_1B8CD1B50(&qword_1EBABAFD0, type metadata accessor for Kgqsapipb_KGDBResponse, protocol conformance descriptor for Kgqsapipb_KGDBResponse);
    v48 = v102;
    v46 = v100;
    v45 = v101;
    sub_1B964C740();
    v44 = v48;
    if (v48)
    {
      return sub_1B8E0D8D0();
    }

    sub_1B8E0D8D0();
  }

  v47 = v106;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v38, 1, v43) == 1)
  {
    sub_1B8D9207C(v38, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFC8, type metadata accessor for Mapspb_LocalSearchBusiness, protocol conformance descriptor for Mapspb_LocalSearchBusiness);
      sub_1B964C740();
      if (v44)
      {
        return sub_1B8E0D8D0();
      }
    }

    sub_1B8E0D8D0();
  }

  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v43);
  v50 = v103;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v35, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFC0, type metadata accessor for Snippetpb_WebImagesSnippet, protocol conformance descriptor for Snippetpb_WebImagesSnippet);
      sub_1B964C740();
      if (v44)
      {
        return sub_1B8E0D8D0();
      }
    }

    sub_1B8E0D8D0();
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v50, 1, v43) != 1)
  {
    sub_1B8D92024();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      v52 = v44;
      sub_1B8E0B9D4(v47, v105, v46, v45);
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
LABEL_29:
        sub_1B8E0D8D0();
        goto LABEL_30;
      }

      v52 = v44;
      sub_1B8E0B7A0(v47, v105, v46, v45);
    }

    v44 = v52;
    if (v52)
    {
      sub_1B8E0D8D0();
      return sub_1B8D9207C(v50, &qword_1EBABAEB8, &qword_1B96566D0);
    }

    goto LABEL_29;
  }

LABEL_30:
  sub_1B8D9207C(v103, &qword_1EBABAEB8, &qword_1B96566D0);
  v54 = v97;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v54, 1, v43) == 1)
  {
    sub_1B8D9207C(v54, &qword_1EBABAEB8, &qword_1B96566D0);
    v55 = v106;
  }

  else
  {
    v56 = swift_getEnumCaseMultiPayload();
    v55 = v106;
    if (v56 == 5)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFB8, type metadata accessor for Snippetpb_MediaSnippet, protocol conformance descriptor for Snippetpb_MediaSnippet);
      sub_1B964C740();
      if (v44)
      {
        return sub_1B8E0D8D0();
      }
    }

    sub_1B8E0D8D0();
  }

  v57 = v96;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v57, 1, v43) == 1)
  {
    sub_1B8D9207C(v57, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFB0, type metadata accessor for Snippetpb_ShoppingSnippet, protocol conformance descriptor for Snippetpb_ShoppingSnippet);
      sub_1B964C740();
      if (v44)
      {
        return sub_1B8E0D8D0();
      }
    }

    sub_1B8E0D8D0();
  }

  v58 = v95;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v58, 1, v43) == 1)
  {
    sub_1B8D9207C(v58, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFA8, type metadata accessor for Snippetpb_Visual3PSnippet, protocol conformance descriptor for Snippetpb_Visual3PSnippet);
      sub_1B964C740();
      if (v44)
      {
        return sub_1B8E0D8D0();
      }
    }

    sub_1B8E0D8D0();
  }

  v59 = v94;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v59, 1, v43) == 1)
  {
    sub_1B8D9207C(v59, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFA0, type metadata accessor for Snippetpb_ExperimentalVisualSnippet, protocol conformance descriptor for Snippetpb_ExperimentalVisualSnippet);
      sub_1B964C740();
      if (v44)
      {
        return sub_1B8E0D8D0();
      }
    }

    sub_1B8E0D8D0();
  }

  v60 = v91;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v60, 1, v43) == 1)
  {
    sub_1B8D9207C(v60, &qword_1EBABAEB8, &qword_1B96566D0);
LABEL_56:
    v61 = v93;
    v62 = v92;
    goto LABEL_57;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1B8E0D8D0();
    goto LABEL_56;
  }

  sub_1B8E0D924();
  sub_1B8CD1B50(&qword_1EBABAF98, type metadata accessor for Snippetpb_FoodSnippet, protocol conformance descriptor for Snippetpb_FoodSnippet);
  sub_1B964C740();
  v61 = v93;
  v62 = v92;
  if (v44)
  {
    return sub_1B8E0D8D0();
  }

  sub_1B8E0D8D0();
LABEL_57:
  swift_beginAccess();
  v63 = v88;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v63, 1, v62) == 1)
  {
    sub_1B8D9207C(v63, &qword_1EBABAEC0, &qword_1B96566D8);
    goto LABEL_63;
  }

  sub_1B8E0D924();
  sub_1B8CD1B50(&qword_1EBABAF90, type metadata accessor for Tophitpb_TopHit, protocol conformance descriptor for Tophitpb_TopHit);
  sub_1B964C740();
  if (v44)
  {
    return sub_1B8E0D8D0();
  }

  sub_1B8E0D8D0();
LABEL_63:
  v64 = (v55 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  swift_beginAccess();
  v66 = *v64;
  v65 = v64[1];
  v67 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v67 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (!v67 || (, sub_1B964C700(), result = , !v44))
  {
    v68 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
    swift_beginAccess();
    if (!*(*(v55 + v68) + 16) || (type metadata accessor for Domainresultpb_SiribaseEntity(0), sub_1B8CD1B50(&qword_1EBABAF18, type metadata accessor for Domainresultpb_SiribaseEntity, protocol conformance descriptor for Domainresultpb_SiribaseEntity), , sub_1B964C730(), result = , !v44))
    {
      v69 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
      swift_beginAccess();
      if (*(v55 + v69) != 1 || (result = sub_1B964C670(), !v44))
      {
        v70 = (v55 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
        swift_beginAccess();
        if (*v70 == 0.0 || (result = sub_1B964C6B0(), !v44))
        {
          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v61, 1, v76) == 1)
          {
            sub_1B8D9207C(v61, &qword_1EBABAED0, &qword_1B96566E0);
          }

          else
          {
            sub_1B8E0D924();
            sub_1B8CD1B50(&qword_1EBABAF30, type metadata accessor for Domainresultpb_LayoutInfo, protocol conformance descriptor for Domainresultpb_LayoutInfo);
            sub_1B964C740();
            result = sub_1B8E0D8D0();
            if (v44)
            {
              return result;
            }
          }

          v71 = (v55 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
          result = swift_beginAccess();
          v73 = *v71;
          v72 = v71[1];
          v74 = HIBYTE(v72) & 0xF;
          if ((v72 & 0x2000000000000000) == 0)
          {
            v74 = v73 & 0xFFFFFFFFFFFFLL;
          }

          if (v74)
          {

            sub_1B964C700();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B8E0B7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Snippetpb_MoviesSnippet(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFD8, type metadata accessor for Snippetpb_MoviesSnippet, protocol conformance descriptor for Snippetpb_MoviesSnippet);
      sub_1B964C740();
      return sub_1B8E0D8D0();
    }

    result = sub_1B8E0D8D0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8E0B9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Snippetpb_TvShowSnippet(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFE0, type metadata accessor for Snippetpb_TvShowSnippet, protocol conformance descriptor for Snippetpb_TvShowSnippet);
      sub_1B964C740();
      return sub_1B8E0D8D0();
    }

    result = sub_1B8E0D8D0();
  }

  __break(1u);
  return result;
}

uint64_t static Domainresultpb_DomainResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_12_7();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B8E0BCD4(v3, v4);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_8();
  sub_1B8CD1B50(v6, v7, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8E0BCD4(uint64_t a1, uint64_t a2)
{
  v107 = a2;
  v96 = type metadata accessor for Domainresultpb_LayoutInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21();
  v93 = v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAF78, &qword_1B9656C78);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v97 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAED0, &qword_1B96566E0);
  v8 = OUTLINED_FUNCTION_183(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_66();
  v94 = (v9 - v10);
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v93 - v12;
  v13 = OUTLINED_FUNCTION_201();
  v102 = type metadata accessor for Tophitpb_TopHit(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v98 = v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAF80, &qword_1B9656C80);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v103 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEC0, &qword_1B96566D8);
  v19 = OUTLINED_FUNCTION_183(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_66();
  v99 = (v20 - v21);
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v93 - v23;
  v24 = OUTLINED_FUNCTION_201();
  type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(v24);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_21();
  v100 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAF88, &qword_1B9656C88) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v93 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v32 = OUTLINED_FUNCTION_183(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_66();
  v105 = v33 - v34;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v93 - v36;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet, v123);
  sub_1B8D92024();
  v38 = v107;
  OUTLINED_FUNCTION_521(v107 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet, v122);
  v39 = *(v27 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v30);
  if (v40)
  {

    sub_1B8D9207C(v37, &qword_1EBABAEB8, &qword_1B96566D0);
    OUTLINED_FUNCTION_37_0(&v30[v39]);
    if (v40)
    {
      sub_1B8D9207C(v30, &qword_1EBABAEB8, &qword_1B96566D0);
      goto LABEL_11;
    }

LABEL_9:
    v41 = &qword_1EBABAF88;
    v42 = &qword_1B9656C88;
    v43 = v30;
LABEL_21:
    sub_1B8D9207C(v43, v41, v42);
LABEL_22:

    return 0;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v30[v39]);
  if (v40)
  {

    sub_1B8D9207C(v37, &qword_1EBABAEB8, &qword_1B96566D0);
    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_11();
  sub_1B8E0D924();

  OUTLINED_FUNCTION_461();
  static Domainresultpb_DomainResult.OneOf_Snippet.== infix(_:_:)();
  v45 = v44;
  sub_1B8E0D8D0();
  sub_1B8D9207C(v37, &qword_1EBABAEB8, &qword_1B96566D0);
  OUTLINED_FUNCTION_236();
  sub_1B8E0D8D0();
  sub_1B8D9207C(v30, &qword_1EBABAEB8, &qword_1B96566D0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__tophit, v121);
  v46 = v106;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521(v38 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__tophit, v120);
  v47 = *(v101 + 48);
  v48 = v103;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_178(v48, 1, v102);
  if (v40)
  {
    sub_1B8D9207C(v46, &qword_1EBABAEC0, &qword_1B96566D8);
    OUTLINED_FUNCTION_37_0(v48 + v47);
    v49 = v104;
    if (v40)
    {
      sub_1B8D9207C(v48, &qword_1EBABAEC0, &qword_1B96566D8);
      goto LABEL_25;
    }

LABEL_19:
    v41 = &qword_1EBABAF80;
    v42 = &qword_1B9656C80;
LABEL_20:
    v43 = v48;
    goto LABEL_21;
  }

  v50 = v99;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v48 + v47);
  v49 = v104;
  if (v51)
  {
    sub_1B8D9207C(v106, &qword_1EBABAEC0, &qword_1B96566D8);
    sub_1B8E0D8D0();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_9_6();
  v53 = v98;
  sub_1B8E0D924();
  v54 = static Tophitpb_TopHit.== infix(_:_:)(v50, v53);
  sub_1B8E0D8D0();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v55, v56, v57);
  sub_1B8E0D8D0();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v58, v59, v60);
  if ((v54 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v61 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID, v119);
  v62 = *v61;
  v63 = v61[1];
  v64 = (v38 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  OUTLINED_FUNCTION_521(v38 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID, v118);
  if (v62 != *v64 || v63 != v64[1])
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities, &v117);
  OUTLINED_FUNCTION_521(v38 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities, &v116);

  v66 = OUTLINED_FUNCTION_543();
  sub_1B8D884A0(v66, v67);
  v69 = v68;

  if ((v69 & 1) == 0)
  {
    goto LABEL_22;
  }

  v70 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult, &v115);
  LODWORD(v70) = *(a1 + v70);
  v71 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  OUTLINED_FUNCTION_521(v38 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult, &v114);
  if (v70 != *(v38 + v71))
  {
    goto LABEL_22;
  }

  v72 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score, &v113);
  v73 = *v72;
  v74 = (v38 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  OUTLINED_FUNCTION_521(v38 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score, &v112);
  if (v73 != *v74)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__layoutInfo, &v111);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521(v38 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__layoutInfo, &v110);
  v75 = *(v95 + 48);
  v48 = v97;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  v76 = v96;
  OUTLINED_FUNCTION_178(v48, 1, v96);
  if (v40)
  {
    sub_1B8D9207C(v49, &qword_1EBABAED0, &qword_1B96566E0);
    OUTLINED_FUNCTION_178(v48 + v75, 1, v76);
    if (v40)
    {
      sub_1B8D9207C(v48, &qword_1EBABAED0, &qword_1B96566E0);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v77 = v94;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v48 + v75, 1, v76);
  if (v78)
  {
    sub_1B8D9207C(v49, &qword_1EBABAED0, &qword_1B96566E0);
    sub_1B8E0D8D0();
LABEL_41:
    v41 = &qword_1EBABAF78;
    v42 = &qword_1B9656C78;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_8_8();
  v79 = v93;
  sub_1B8E0D924();
  v80 = static Domainresultpb_LayoutInfo.== infix(_:_:)(v77, v79);
  sub_1B8E0D8D0();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v81, v82, v83);
  sub_1B8E0D8D0();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v84, v85, v86);
  if ((v80 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_43:
  v87 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType, &v109);
  v88 = *v87;
  v89 = v87[1];
  v90 = (v38 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
  OUTLINED_FUNCTION_521(v38 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType, &v108);
  if (v88 == *v90 && v89 == v90[1])
  {

    return 1;
  }

  OUTLINED_FUNCTION_543();
  v92 = sub_1B964C9F0();

  result = 0;
  if (v92)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B8E0C78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B50(&qword_1EBABAF70, type metadata accessor for Domainresultpb_DomainResult, protocol conformance descriptor for Domainresultpb_DomainResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E0C80C(uint64_t a1)
{
  v2 = sub_1B8CD1B50(&qword_1EBABAF00, type metadata accessor for Domainresultpb_DomainResult, protocol conformance descriptor for Domainresultpb_DomainResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E0C87C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1B50(&qword_1EBABAF00, type metadata accessor for Domainresultpb_DomainResult, protocol conformance descriptor for Domainresultpb_DomainResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E0C914()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABAE88);
  __swift_project_value_buffer(v0, qword_1EBABAE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "primary_name";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "score";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "is_redirect_match";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "is_title_match";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "max_popularity_score";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Domainresultpb_SiribaseEntity.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Domainresultpb_SiribaseEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v0))
      {
        if (*(v1 + 48) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
        {
          if (*(v1 + 52) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
          {
            if (*(v1 + 53) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
            {
              if (*(v1 + 56) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
              {
                type metadata accessor for Domainresultpb_SiribaseEntity(0);
                OUTLINED_FUNCTION_12();
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Domainresultpb_SiribaseEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 48) != *(v0 + 48) || *(v1 + 52) != *(v0 + 52) || *(v1 + 53) != *(v0 + 53) || *(v1 + 56) != *(v0 + 56))
  {
    return 0;
  }

  type metadata accessor for Domainresultpb_SiribaseEntity(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_8();
  v8 = sub_1B8CD1B50(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8E0D018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B50(&qword_1EBABAF68, type metadata accessor for Domainresultpb_SiribaseEntity, protocol conformance descriptor for Domainresultpb_SiribaseEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E0D098(uint64_t a1)
{
  v2 = sub_1B8CD1B50(&qword_1EBABAF18, type metadata accessor for Domainresultpb_SiribaseEntity, protocol conformance descriptor for Domainresultpb_SiribaseEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E0D108(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1B50(&qword_1EBABAF18, type metadata accessor for Domainresultpb_SiribaseEntity, protocol conformance descriptor for Domainresultpb_SiribaseEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E0D1A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABAEA0);
  __swift_project_value_buffer(v0, qword_1EBABAEA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inline_card_eligible";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inline_rerank_eligible";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ranked_experience_sections";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "kg_intent_eligible";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Domainresultpb_LayoutInfo.decodeMessage<A>(decoder:)()
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
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Domainresultpb_LayoutInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
  {
    if (*(v2 + 1) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
    {
      if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
      {
        if (*(v2 + 16) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
        {
          type metadata accessor for Domainresultpb_LayoutInfo(0);
          OUTLINED_FUNCTION_12();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Domainresultpb_LayoutInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 1) != *(v5 + 1) || (sub_1B8D6123C(*(v3 + 8), *(v2 + 8)) & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  type metadata accessor for Domainresultpb_LayoutInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_8();
  v9 = sub_1B8CD1B50(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8E0D680(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD1B50(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E0D760(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B50(&qword_1EBABAF60, type metadata accessor for Domainresultpb_LayoutInfo, protocol conformance descriptor for Domainresultpb_LayoutInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E0D7E0(uint64_t a1)
{
  v2 = sub_1B8CD1B50(&qword_1EBABAF30, type metadata accessor for Domainresultpb_LayoutInfo, protocol conformance descriptor for Domainresultpb_LayoutInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E0D850(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1B50(&qword_1EBABAF30, type metadata accessor for Domainresultpb_LayoutInfo, protocol conformance descriptor for Domainresultpb_LayoutInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E0D8D0()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B8E0D924()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8E0D97C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8E0DD9C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Domainresultpb_DomainResult._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8E0DE28(uint64_t a1)
{
  result = type metadata accessor for Kgqsapipb_KGDBResponse(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Mapspb_LocalSearchBusiness(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Snippetpb_WebImagesSnippet(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Snippetpb_MoviesSnippet(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Snippetpb_TvShowSnippet(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Snippetpb_MediaSnippet(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Snippetpb_ShoppingSnippet(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Snippetpb_Visual3PSnippet(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Snippetpb_ExperimentalVisualSnippet(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Snippetpb_FoodSnippet(319);
                    if (v11 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      return 0;
                    }
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

uint64_t sub_1B8E0DF64(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E0E02C(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E0E0C8(uint64_t a1)
{
  sub_1B8E0E250(319, &qword_1ED9CCB18, type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet);
  if (v1 <= 0x3F)
  {
    sub_1B8E0E250(319, &qword_1ED9CD8F8, type metadata accessor for Tophitpb_TopHit);
    if (v2 <= 0x3F)
    {
      sub_1B8E0E250(319, &qword_1ED9CCC58, type metadata accessor for Domainresultpb_LayoutInfo);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8E0E250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_30_7()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_31_6()
{
  type metadata accessor for Domainresultpb_DomainResult._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_68_2()
{

  return type metadata accessor for Domainresultpb_DomainResult(0);
}

uint64_t OUTLINED_FUNCTION_70_1()
{

  return sub_1B8E0D924();
}

uint64_t OUTLINED_FUNCTION_73_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return swift_getEnumCaseMultiPayload();
}

void OUTLINED_FUNCTION_77_2()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_87_1()
{
}

uint64_t sub_1B8E0E750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E1F75C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Electionspb_Status.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8E0E83C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Electionspb_Status.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8E0E88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E1E03C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Electionspb_DialogID.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B8E0E978@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Electionspb_DialogID.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8E0E9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E1E090();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Electionspb_ElectionResultUseCase.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B8E0EAB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Electionspb_ElectionResultUseCase.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Electionspb_ElectionRace.siribaseID.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4(v0 + 16, v1);

  return OUTLINED_FUNCTION_432();
}

void Electionspb_ElectionRace.siribaseID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.siribaseID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0EC60()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.siribaseID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E156D8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Electionspb_ElectionRace.name.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4(v0 + 32, v1);

  return OUTLINED_FUNCTION_432();
}

void Electionspb_ElectionRace.name.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.name.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0EE38()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.name.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E156D8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 32);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t Electionspb_ElectionRace.politicalPartyID.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4(v0 + 48, v1);

  return OUTLINED_FUNCTION_432();
}

void Electionspb_ElectionRace.politicalPartyID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 48, v5);
  *(v6 + 48) = v2;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.politicalPartyID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 48);
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0F010()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.politicalPartyID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E156D8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 48);
    *(v7 + 48) = v3;
    *(v7 + 56) = v2;
  }

  free(v0);
}

uint64_t Electionspb_ElectionRace.politicalParty.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4(v0 + 64, v1);

  return OUTLINED_FUNCTION_432();
}

void Electionspb_ElectionRace.politicalParty.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.politicalParty.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 64);
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0F1E8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.politicalParty.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E156D8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Electionspb_ElectionRace.jurisdiction.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4(v0 + 80, v1);

  return OUTLINED_FUNCTION_432();
}

void Electionspb_ElectionRace.jurisdiction.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 80, v5);
  *(v6 + 80) = v2;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.jurisdiction.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 80);
  v6 = *(v5 + 88);
  *(v1 + 48) = *(v5 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0F3C0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.jurisdiction.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E156D8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 80);
    *(v7 + 80) = v3;
    *(v7 + 88) = v2;
  }

  free(v0);
}

uint64_t Electionspb_ElectionRace.raceDate.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4(v0 + 96, v1);

  return OUTLINED_FUNCTION_432();
}

void Electionspb_ElectionRace.raceDate.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 96, v5);
  *(v6 + 96) = v2;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.raceDate.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 96);
  v6 = *(v5 + 104);
  *(v1 + 48) = *(v5 + 96);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0F598()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.raceDate.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E156D8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 96);
    *(v7 + 96) = v3;
    *(v7 + 104) = v2;
  }

  free(v0);
}

uint64_t Electionspb_ElectionRace.raceType.getter()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 112, v2);
}

uint64_t Electionspb_ElectionRace.raceType.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Electionspb_ElectionRace(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 112, v5);
  *(v6 + 112) = v0;
}

uint64_t Electionspb_ElectionRace.raceType.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_123_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 112);
  *(v1 + 48) = *(v0 + 112);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0F774()
{
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 48);
  if (v3)
  {

    Electionspb_ElectionRace.raceType.setter();
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_16_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E156D8(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 112);
    *(v7 + 112) = v2;
  }

  free(v0);
}

uint64_t Electionspb_ElectionRace.officeContested.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4(v0 + 120, v1);

  return OUTLINED_FUNCTION_432();
}

void Electionspb_ElectionRace.officeContested.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 120, v5);
  *(v6 + 120) = v2;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.officeContested.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 120);
  v6 = *(v5 + 128);
  *(v1 + 48) = *(v5 + 120);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0F960()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.officeContested.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E156D8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 120);
    *(v7 + 120) = v3;
    *(v7 + 128) = v2;
  }

  free(v0);
}

uint64_t Electionspb_ElectionRace.delegateCount.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 136, v3);
  return *(v2 + 136);
}

uint64_t Electionspb_ElectionRace.delegateCount.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 136, v4);
  *(v5 + 136) = v0;
  return result;
}

uint64_t Electionspb_ElectionRace.delegateCount.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 136);
  *(v1 + 80) = *(v5 + 136);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E0FAE4(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v6 = OUTLINED_FUNCTION_135_3();
  v7 = *(v5 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E156D8(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 136) = v4;

  free(v2);
}

float Electionspb_ElectionRace.precinctReported.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 140, v3);
  return *(v2 + 140);
}

uint64_t Electionspb_ElectionRace.precinctReported.setter()
{
  v4 = OUTLINED_FUNCTION_141_2();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E156D8(v7);
    *(v0 + v2) = v6;
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 140, v5);
  *(v6 + 140) = v3;
  return result;
}

uint64_t Electionspb_ElectionRace.precinctReported.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 140);
  *(v1 + 80) = *(v5 + 140);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E0FC68(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v6 = OUTLINED_FUNCTION_134_1();
  v7 = *(v4 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E156D8(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 140) = v5;

  free(v2);
}

uint64_t Electionspb_ElectionRace.candidateInfo.getter()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 144, v2);
}

uint64_t Electionspb_ElectionRace.candidateInfo.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Electionspb_ElectionRace(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 144, v5);
  *(v6 + 144) = v0;
}

uint64_t Electionspb_ElectionRace.candidateInfo.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_123_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  *(v1 + 48) = *(v0 + 144);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0FE40()
{
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 48);
  if (v3)
  {

    Electionspb_ElectionRace.candidateInfo.setter();
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_16_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E156D8(v8);
      OUTLINED_FUNCTION_15(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 144);
    *(v7 + 144) = v2;
  }

  free(v0);
}

uint64_t Electionspb_ElectionRace.isSuperTuesday.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 152, v3);
  return *(v2 + 152);
}

uint64_t Electionspb_ElectionRace.isSuperTuesday.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 152, v4);
  *(v5 + 152) = v0 & 1;
  return result;
}

uint64_t Electionspb_ElectionRace.isSuperTuesday.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 152);
  *(v1 + 84) = *(v0 + 152);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E0FFD8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 152) = v3;

  free(v1);
}

uint64_t Electionspb_ElectionRace.isFirstRace.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 153, v3);
  return *(v2 + 153);
}

uint64_t Electionspb_ElectionRace.isFirstRace.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 153, v4);
  *(v5 + 153) = v0 & 1;
  return result;
}

uint64_t Electionspb_ElectionRace.isFirstRace.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 153);
  *(v1 + 84) = *(v0 + 153);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E10148(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 153) = v3;

  free(v1);
}

uint64_t Electionspb_ElectionRace.isToday.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 154, v3);
  return *(v2 + 154);
}

uint64_t Electionspb_ElectionRace.isToday.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 154, v4);
  *(v5 + 154) = v0 & 1;
  return result;
}

uint64_t Electionspb_ElectionRace.isToday.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 154);
  *(v1 + 84) = *(v0 + 154);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E102B8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 154) = v3;

  free(v1);
}

uint64_t Electionspb_ElectionRace.isCancelled.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 155, v3);
  return *(v2 + 155);
}

uint64_t Electionspb_ElectionRace.isCancelled.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 155, v4);
  *(v5 + 155) = v0 & 1;
  return result;
}

uint64_t Electionspb_ElectionRace.isCancelled.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 155);
  *(v1 + 84) = *(v0 + 155);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E10428(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 155) = v3;

  free(v1);
}

uint64_t Electionspb_ElectionRace.isInFuture.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 156, v3);
  return *(v2 + 156);
}

uint64_t Electionspb_ElectionRace.isInFuture.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 156, v4);
  *(v5 + 156) = v0 & 1;
  return result;
}

uint64_t Electionspb_ElectionRace.isInFuture.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 156);
  *(v1 + 84) = *(v0 + 156);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E10598(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 156) = v3;

  free(v1);
}

uint64_t Electionspb_ElectionRace.lastUpdated.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4(v0 + 160, v1);

  return OUTLINED_FUNCTION_432();
}

void Electionspb_ElectionRace.lastUpdated.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 160, v5);
  *(v6 + 160) = v2;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.lastUpdated.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 160);
  v6 = *(v5 + 168);
  *(v1 + 48) = *(v5 + 160);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E1075C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.lastUpdated.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E156D8(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 160);
    *(v7 + 160) = v3;
    *(v7 + 168) = v2;
  }

  free(v0);
}

uint64_t Electionspb_ElectionRace.winnerDeclared.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 176, v3);
  return *(v2 + 176);
}

uint64_t Electionspb_ElectionRace.winnerDeclared.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 176, v4);
  *(v5 + 176) = v0 & 1;
  return result;
}

uint64_t Electionspb_ElectionRace.winnerDeclared.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 176);
  *(v1 + 84) = *(v0 + 176);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E108E0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 176) = v3;

  free(v1);
}

uint64_t Electionspb_VoteInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for Electionspb_VoteInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Electionspb_ElectionRace.totalVoteInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Electionspb_VoteInfo(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_133_2(v11);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABB160, &qword_1B9656D10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_137_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E10B54(void *a1)
{
  v4 = OUTLINED_FUNCTION_690();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_521(v1 + *a1, v11);
  sub_1B8D92024();
  type metadata accessor for Electionspb_VoteInfo(0);
  v8 = OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_132_1(v8);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v2, &qword_1EBABB160, &qword_1B9656D10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B8E1632C();
  }

  return result;
}

uint64_t sub_1B8E10C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  sub_1B8E16384();
  return a7(v7);
}

uint64_t sub_1B8E10CF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = *(type metadata accessor for Electionspb_ElectionRace(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v4 = OUTLINED_FUNCTION_40_0();
    *(v0 + v3) = sub_1B8E156D8(v4);
  }

  OUTLINED_FUNCTION_461();
  sub_1B8E1632C();
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Electionspb_ElectionRace.neededVoteInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Electionspb_VoteInfo(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v11 = OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_133_2(v11);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABB160, &qword_1B9656D10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_137_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8E10F3C()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8E16384();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B8E163DC();
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

uint64_t sub_1B8E1100C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_521(v5 + *a3, v18);
  sub_1B8D92024();
  v14 = (a4)(0);
  OUTLINED_FUNCTION_178(v7, 1, v14);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  sub_1B8D9207C(v7, v6, v4);
  return v16;
}

void sub_1B8E11104()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = *(type metadata accessor for Electionspb_ElectionRace(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v8 = OUTLINED_FUNCTION_40_0();
    *(v0 + v7) = sub_1B8E156D8(v8);
  }

  v2(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Electionspb_ElectionRace.electionFlags.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_123_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags);
  *(v1 + 48) = *(v0 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t Electionspb_ElectionRace.status.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_7();
  v4 = *(v1 + v3) + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  result = OUTLINED_FUNCTION_521(v4, v7);
  v6 = *(v4 + 8);
  *a1 = *v4;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B8E11324@<X0>(uint64_t a1@<X8>)
{
  result = Electionspb_ElectionRace.status.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void Electionspb_ElectionRace.status.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = OUTLINED_FUNCTION_35_2();
  v29 = *(v20 + v21);
  if ((v28 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v30 = OUTLINED_FUNCTION_40_0();
    v29 = sub_1B8E156D8(v30);
    *(v24 + v21) = v29;
  }

  v31 = v29 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  OUTLINED_FUNCTION_18(v29 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status, &a10);
  *v31 = v26;
  *(v31 + 8) = v27;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.status.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_11_7();
  *(v1 + 84) = v3;
  OUTLINED_FUNCTION_41();
  v4 = *(v0 + 8);
  *(v1 + 72) = *v0;
  *(v1 + 80) = v4;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E1149C()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 72);
  v5 = *(v0 + 84);
  v6 = *(v0 + 88);
  v7 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 88);
    OUTLINED_FUNCTION_16_8();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E156D8(v12);
    *(v11 + v10) = v9;
  }

  v13 = 48;
  if (v2)
  {
    v13 = 24;
  }

  v14 = v9 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  OUTLINED_FUNCTION_18(v14, v0 + v13);
  *v14 = v4;
  *(v14 + 8) = v7;
  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t Electionspb_ElectionRace.runoffInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__runoffInfo, v10);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Electionspb_RunOffInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v2, &qword_1EBABB168, &qword_1B9656D18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_182();
    return sub_1B8E1632C();
  }

  return result;
}

uint64_t Electionspb_ElectionRace.runoffInfo.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB168, &qword_1B9656D18);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_35_2() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E156D8(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_25_5();
  sub_1B8E1632C();
  type metadata accessor for Electionspb_RunOffInfo(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Electionspb_RunOffInfo.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Electionspb_RunOffInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Electionspb_ElectionRace.runoffInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Electionspb_RunOffInfo(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    v11[4] = MEMORY[0x1E69E7CC0];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABB168, &qword_1B9656D18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_137_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Electionspb_ElectionRace.pollTiming.getter()
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__pollTiming, v8);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Electionspb_PollTiming(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_92_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v1, &qword_1EBABB170, &unk_1B9656D20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_182();
    return sub_1B8E1632C();
  }

  return result;
}

uint64_t Electionspb_ElectionRace.pollTiming.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB170, &unk_1B9656D20);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_35_2() & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8E156D8(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_8_9();
  sub_1B8E1632C();
  type metadata accessor for Electionspb_PollTiming(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Electionspb_PollTiming.init()()
{
  OUTLINED_FUNCTION_92_0();
  type metadata accessor for Electionspb_PollTiming(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Electionspb_ElectionRace.pollTiming.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Electionspb_PollTiming(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABB170, &unk_1B9656D20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_137_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

float Electionspb_ElectionRace.eevp.getter()
{
  v1 = OUTLINED_FUNCTION_11_7();
  v3 = *(v0 + v2) + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp;
  OUTLINED_FUNCTION_6_2(v1);
  return *v3;
}

uint64_t Electionspb_ElectionRace.eevp.setter()
{
  v4 = OUTLINED_FUNCTION_141_2();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8E156D8(v6);
    *(v0 + v2) = v5;
  }

  v7 = (v5 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
  result = OUTLINED_FUNCTION_18(v5 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp, v9);
  *v7 = v3;
  return result;
}

uint64_t Electionspb_ElectionRace.eevp.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  *(v1 + 84) = v4;
  OUTLINED_FUNCTION_41();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E11E1C(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v7 = OUTLINED_FUNCTION_134_1();
  v8 = *(v4 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E156D8(v9);
    OUTLINED_FUNCTION_15(v10);
  }

  v11 = 48;
  if (a2)
  {
    v11 = 24;
  }

  v12 = (v8 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
  OUTLINED_FUNCTION_18(v12, v2 + v11);
  *v12 = v5;

  free(v2);
}

uint64_t Electionspb_ElectionRace.district.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  OUTLINED_FUNCTION_41();
  v4 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8E11FAC(void *a1)
{
  v1 = OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_6_2(v1);

  return OUTLINED_FUNCTION_288();
}

void sub_1B8E12044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = v21;
  OUTLINED_FUNCTION_16();
  v28 = *(type metadata accessor for Electionspb_ElectionRace(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v21 + v28);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v31 = OUTLINED_FUNCTION_40_0();
    v30 = sub_1B8E156D8(v31);
    *(v27 + v28) = v30;
  }

  v32 = (v30 + *v26);
  OUTLINED_FUNCTION_18(v32, &a10);
  *v32 = v22;
  v32[1] = v20;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.imageURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  OUTLINED_FUNCTION_41();
  v4 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

uint64_t Electionspb_ElectionRace.newsURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  OUTLINED_FUNCTION_41();
  v4 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E1223C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    v6 = v4;
    OUTLINED_FUNCTION_191();
    v7 = OUTLINED_FUNCTION_461();
    v6(v7);
  }

  else
  {
    v8 = v3;
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      OUTLINED_FUNCTION_16_8();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8E156D8(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + *v8);
    OUTLINED_FUNCTION_18(v16, v0 + 24);
    *v16 = v2;
    v16[1] = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v17);
}

uint64_t Electionspb_ElectionRace.numberOfSeats.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
  OUTLINED_FUNCTION_10_4(v2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats, v4);
  return *(v2 + v3);
}

uint64_t Electionspb_ElectionRace.numberOfSeats.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
  result = OUTLINED_FUNCTION_9_3(v5 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats, v4);
  *(v5 + v8) = v0;
  return result;
}

uint64_t Electionspb_ElectionRace.numberOfSeats.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
  OUTLINED_FUNCTION_62_0(v5 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats);
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E12400(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v6 = OUTLINED_FUNCTION_135_3();
  v7 = *(v5 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E156D8(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  v10 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
  OUTLINED_FUNCTION_11_4();
  *(v7 + v10) = v4;

  free(v2);
}

uint64_t sub_1B8E1249C(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4(v1 + *a1, v3);
}

void sub_1B8E12514()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_35_2();
  v8 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E156D8(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  v11 = *v3;
  OUTLINED_FUNCTION_9_3(v8 + v11, v7);
  *(v8 + v11) = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.partyResults.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_123_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults);
  *(v1 + 48) = *(v0 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E12618()
{
  OUTLINED_FUNCTION_238();
  v4 = *(v3 + 48);
  if (v5)
  {
    v6 = v2;

    v6(v7);
  }

  else
  {
    v8 = v1;
    v9 = *(v0 + 64);
    v10 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_16_8();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B8E156D8(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    v15 = *v8;
    OUTLINED_FUNCTION_59_3(v12 + v15);
    *(v12 + v15) = v4;
  }

  free(v0);
}

uint64_t Electionspb_ElectionRace.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Electionspb_ElectionRace.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t Electionspb_ElectionRace.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Electionspb_ElectionRace(0) + 20);
  if (qword_1EBAB6128 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBABB0B0;
}

uint64_t Electionspb_Candidate.siribaseID.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Electionspb_Candidate.name.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Electionspb_Candidate.voteInfo.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Electionspb_Candidate(v5);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Electionspb_VoteInfo(0);
  v6 = OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_132_1(v6);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBABB160, &qword_1B9656D10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_182();
    return sub_1B8E1632C();
  }

  return result;
}

uint64_t Electionspb_Candidate.voteInfo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Electionspb_Candidate(v1);
  sub_1B8D9207C(v0 + *(v2 + 72), &qword_1EBABB160, &qword_1B9656D10);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_122_0();
  sub_1B8E1632C();
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Electionspb_Candidate.voteInfo.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Electionspb_VoteInfo(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for Electionspb_Candidate(0) + 72);
  *(v3 + 10) = v10;
  OUTLINED_FUNCTION_115(v10);
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v6);
  if (v11)
  {
    *v9 = 0;
    v9[2] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v6);
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBABB160, &qword_1B9656D10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_461();
    sub_1B8E1632C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Electionspb_Candidate.hasVoteInfo.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Electionspb_Candidate(v5);
  OUTLINED_FUNCTION_115(*(v6 + 72));
  sub_1B8D92024();
  v7 = type metadata accessor for Electionspb_VoteInfo(0);
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
  sub_1B8D9207C(v10, v11, &qword_1B9656D10);
  return v9;
}

Swift::Void __swiftcall Electionspb_Candidate.clearVoteInfo()()
{
  v1 = type metadata accessor for Electionspb_Candidate(0);
  sub_1B8D9207C(v0 + *(v1 + 72), &qword_1EBABB160, &qword_1B9656D10);
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Electionspb_Candidate.runningMate.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Electionspb_Candidate.politicalParty.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Electionspb_Candidate.statesWon.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Electionspb_Candidate.imageURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Electionspb_Candidate.politicalPartyName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Electionspb_Candidate.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Electionspb_Candidate(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Electionspb_Candidate.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Electionspb_Candidate(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Electionspb_Candidate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Electionspb_Candidate(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Electionspb_Candidate.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 68) = 0;
  *(a1 + 80) = MEMORY[0x1E69E7CC0];
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v2;
  *(a1 + 112) = 0;
  *(a1 + 120) = v2;
  *(a1 + 128) = 0;
  type metadata accessor for Electionspb_Candidate(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Electionspb_PoliticalParty.congressInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Electionspb_PoliticalParty(v7);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Electionspb_CongressInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9250, &qword_1B964DA38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_182();
    return sub_1B8E1632C();
  }

  return result;
}

uint64_t Electionspb_PoliticalParty.congressInfo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Electionspb_PoliticalParty(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB9250, &qword_1B964DA38);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_122_0();
  sub_1B8E1632C();
  type metadata accessor for Electionspb_CongressInfo(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Electionspb_CongressInfo.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Electionspb_CongressInfo(v1);
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Electionspb_PoliticalParty.congressInfo.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9250, &qword_1B964DA38);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Electionspb_CongressInfo(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for Electionspb_PoliticalParty(0) + 36);
  *(v3 + 10) = v10;
  OUTLINED_FUNCTION_115(v10);
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v6);
  if (v11)
  {
    *v9 = 0;
    v9[1] = 0;
    *(v9 + 8) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v6);
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9250, &qword_1B964DA38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_461();
    sub_1B8E1632C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8E13560()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    sub_1B8E16384();
    sub_1B8D9207C(v10 + v5, v3, v2);
    sub_1B8E1632C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    sub_1B8E163DC();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v0, v1);
    sub_1B8E1632C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v18);
}

uint64_t Electionspb_PoliticalParty.hasCongressInfo.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Electionspb_PoliticalParty(v5);
  OUTLINED_FUNCTION_115(*(v6 + 36));
  sub_1B8D92024();
  v7 = type metadata accessor for Electionspb_CongressInfo(0);
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
  sub_1B8D9207C(v10, v11, &qword_1B964DA38);
  return v9;
}

Swift::Void __swiftcall Electionspb_PoliticalParty.clearCongressInfo()()
{
  v1 = type metadata accessor for Electionspb_PoliticalParty(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAB9250, &qword_1B964DA38);
  type metadata accessor for Electionspb_CongressInfo(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Electionspb_PoliticalParty.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Electionspb_PoliticalParty(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Electionspb_PoliticalParty.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Electionspb_PoliticalParty(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Electionspb_PoliticalParty.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Electionspb_PoliticalParty(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Electionspb_PoliticalParty.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  type metadata accessor for Electionspb_PoliticalParty(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Electionspb_CongressInfo(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Electionspb_ElectionsResponse.electionRaces.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Electionspb_ElectionsResponse.politicalParties.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Electionspb_ElectionsResponse.dialogID.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Electionspb_ElectionsResponse.resultUseCase.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Electionspb_ElectionsResponse.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Electionspb_ElectionsResponse(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Electionspb_ElectionsResponse.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Electionspb_ElectionsResponse(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Electionspb_ElectionsResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Electionspb_ElectionsResponse(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Electionspb_ElectionsResponse.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  type metadata accessor for Electionspb_ElectionsResponse(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Electionspb_CongressInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Electionspb_CongressInfo(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Electionspb_CongressInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Electionspb_CongressInfo(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Electionspb_CongressInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Electionspb_CongressInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Electionspb_VoteInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Electionspb_VoteInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Electionspb_RunOffInfo.candidatesInfo.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1B8E13F04()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8E13F8C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Electionspb_RunOffInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Electionspb_RunOffInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Electionspb_PollTiming.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Electionspb_PollTiming(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Electionspb_PollTiming.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Electionspb_PollTiming(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Electionspb_PollTiming.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Electionspb_PollTiming(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E14188()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB050);
  __swift_project_value_buffer(v0, qword_1EBABB050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "STATUS_UNKNOWN";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STATUS_SCHEDULED";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "STATUS_RUNOFF";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "STATUS_CANCELLED";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "STATUS_IN_PROGRESS";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "STATUS_VOTES_FINALIZED";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "STATUS_CLOSE_TO_CALL";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E144A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB068);
  __swift_project_value_buffer(v0, qword_1EBABB068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "US_ELECTION_POLL_APPLE_NEWS";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WHO_WON_PRESIDENT";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "WHO_WON_STATE_PRESIDENT";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "WHO_WON_STATE_SENATE";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "WHO_WON_STATE_GOVERNOR";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "WHO_WON_OFFICE_CANDIDATE";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "WHO_WON_OFFICE";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "WHEN_IS_GENERAL_ELECTION";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "WHO_WON_DISTRICT_HOUSE";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E14888()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB080);
  __swift_project_value_buffer(v0, qword_1EBABB080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GENERIC_RESULT_PRESIDENTIAL";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GENERIC_RESULT_MIDTERM";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BOP_SENATE_RESULT";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BOP_HOUSE_RESULT";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "STATE_RESULT_PRESIDENTIAL";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "STATE_RESULT_GOVERNOR";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "STATE_RESULT_SENATE";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "STATE_RESULT_HOUSE";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "CANDIDATE_RESULT";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E14C40()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB098);
  __swift_project_value_buffer(v0, qword_1EBABB098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1B9656CF0;
  v4 = v66 + v3 + v1[14];
  *(v66 + v3) = 1;
  *v4 = "siribaseId";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v66 + v3 + v2 + v1[14];
  *(v66 + v3 + v2) = 2;
  *v8 = "Name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v66 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "politicalPartyId";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v66 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "politicalParty";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v66 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "jurisdiction";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v66 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "raceDate";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v66 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "raceType";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v66 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "officeContested";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v7();
  v21 = (v66 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "delegateCount";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v66 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "precinctReported";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v66 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "candidateInfo";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v66 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "isSuperTuesday";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v66 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "isFirstRace";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v7();
  v31 = (v66 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "isToday";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v7();
  v33 = (v66 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isCancelled";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  v35 = (v66 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isInFuture";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v7();
  v37 = (v66 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "lastUpdated";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  v39 = (v66 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "winnerDeclared";
  *(v40 + 1) = 14;
  v40[16] = 2;
  v7();
  v41 = (v66 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "total_vote_info";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v7();
  v43 = (v66 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "needed_vote_info";
  *(v44 + 1) = 16;
  v44[16] = 2;
  v7();
  v45 = (v66 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "election_flags";
  *(v46 + 1) = 14;
  v46[16] = 2;
  v7();
  v47 = (v66 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "status";
  *(v48 + 1) = 6;
  v48[16] = 2;
  v7();
  v49 = (v66 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "runoff_info";
  *(v50 + 1) = 11;
  v50[16] = 2;
  v7();
  v51 = (v66 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "poll_timing";
  *(v52 + 1) = 11;
  v52[16] = 2;
  v7();
  v53 = (v66 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "eevp";
  *(v54 + 1) = 4;
  v54[16] = 2;
  v7();
  v55 = (v66 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "district";
  *(v56 + 1) = 8;
  v56[16] = 2;
  v7();
  v57 = (v66 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "image_url";
  *(v58 + 1) = 9;
  v58[16] = 2;
  v7();
  v59 = (v66 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "news_url";
  *(v60 + 1) = 8;
  v60[16] = 2;
  v7();
  v61 = (v66 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "number_of_seats";
  *(v62 + 1) = 15;
  v62[16] = 2;
  v7();
  v63 = (v66 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "party_results";
  *(v64 + 1) = 13;
  v64[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E15504()
{
  type metadata accessor for Electionspb_ElectionRace._StorageClass(0);
  swift_allocObject();
  result = sub_1B8E15544();
  qword_1EBABB0B0 = result;
  return result;
}

uint64_t sub_1B8E15544()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 112) = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  *(v0 + 136) = 0;
  *(v0 + 144) = v1;
  *(v0 + 156) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  *(v0 + 176) = 0;
  v2 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__totalVoteInfo;
  v3 = type metadata accessor for Electionspb_VoteInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__neededVoteInfo, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
  *(v0 + v4) = sub_1B964C7B0();
  v5 = v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__runoffInfo;
  v7 = type metadata accessor for Electionspb_RunOffInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__pollTiming;
  v9 = type metadata accessor for Electionspb_PollTiming(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp) = 0;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults) = v1;
  return v0;
}

uint64_t sub_1B8E156D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB170, &unk_1B9656D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v101 = &v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB168, &qword_1B9656D18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v78 - v8;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  v78 = (v1 + 80);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v79 = (v1 + 96);
  *(v1 + 104) = 0xE000000000000000;
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + 112) = MEMORY[0x1E69E7CC0];
  v80 = (v1 + 112);
  *(v1 + 120) = 0;
  v81 = (v1 + 120);
  *(v1 + 128) = 0xE000000000000000;
  *(v1 + 136) = 0;
  v82 = (v1 + 136);
  *(v1 + 144) = v9;
  v83 = (v1 + 144);
  *(v1 + 160) = 0;
  v86 = (v1 + 160);
  *(v1 + 156) = 0;
  v85 = (v1 + 156);
  *(v1 + 152) = 0;
  v84 = (v1 + 152);
  *(v1 + 168) = 0xE000000000000000;
  *(v1 + 176) = 0;
  v87 = (v1 + 176);
  v10 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__totalVoteInfo;
  v88 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__totalVoteInfo;
  v11 = type metadata accessor for Electionspb_VoteInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v89 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__neededVoteInfo;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__neededVoteInfo, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
  v90 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
  v13 = MEMORY[0x1E69E7CC0];
  *(v1 + v12) = sub_1B964C7B0();
  v14 = v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  v92 = v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__runoffInfo;
  v93 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__runoffInfo;
  v16 = type metadata accessor for Electionspb_RunOffInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__pollTiming;
  v94 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__pollTiming;
  v18 = type metadata accessor for Electionspb_PollTiming(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v95 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp) = 0;
  v19 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
  v96 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
  v97 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
  v99 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v100 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats) = 0;
  v102 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults) = v13;
  swift_beginAccess();
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v23;
  *(v1 + 24) = v22;

  swift_beginAccess();
  v25 = *(a1 + 32);
  v24 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v25;
  *(v1 + 40) = v24;

  swift_beginAccess();
  v27 = *(a1 + 48);
  v26 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v27;
  *(v1 + 56) = v26;

  swift_beginAccess();
  v29 = *(a1 + 64);
  v28 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v29;
  *(v1 + 72) = v28;

  swift_beginAccess();
  v31 = *(a1 + 80);
  v30 = *(a1 + 88);
  v32 = v78;
  swift_beginAccess();
  *v32 = v31;
  *(v1 + 88) = v30;

  swift_beginAccess();
  v34 = *(a1 + 96);
  v33 = *(a1 + 104);
  v35 = v79;
  swift_beginAccess();
  *v35 = v34;
  *(v1 + 104) = v33;

  swift_beginAccess();
  v36 = *(a1 + 112);
  v37 = v80;
  swift_beginAccess();
  *v37 = v36;

  swift_beginAccess();
  v39 = *(a1 + 120);
  v38 = *(a1 + 128);
  v40 = v81;
  swift_beginAccess();
  *v40 = v39;
  *(v1 + 128) = v38;

  swift_beginAccess();
  LODWORD(v38) = *(a1 + 136);
  v41 = v82;
  swift_beginAccess();
  *v41 = v38;
  swift_beginAccess();
  v42 = *(a1 + 140);
  swift_beginAccess();
  *(v1 + 140) = v42;
  swift_beginAccess();
  v43 = *(a1 + 144);
  v44 = v83;
  swift_beginAccess();
  *v44 = v43;

  swift_beginAccess();
  LOBYTE(v43) = *(a1 + 152);
  v45 = v84;
  swift_beginAccess();
  *v45 = v43;
  swift_beginAccess();
  LOBYTE(v43) = *(a1 + 153);
  swift_beginAccess();
  *(v1 + 153) = v43;
  swift_beginAccess();
  LOBYTE(v43) = *(a1 + 154);
  swift_beginAccess();
  *(v1 + 154) = v43;
  swift_beginAccess();
  LOBYTE(v43) = *(a1 + 155);
  swift_beginAccess();
  *(v1 + 155) = v43;
  swift_beginAccess();
  LOBYTE(v43) = *(a1 + 156);
  v46 = v85;
  swift_beginAccess();
  *v46 = v43;
  swift_beginAccess();
  v48 = *(a1 + 160);
  v47 = *(a1 + 168);
  v49 = v86;
  swift_beginAccess();
  *v49 = v48;
  *(v1 + 168) = v47;

  swift_beginAccess();
  LOBYTE(v47) = *(a1 + 176);
  v50 = v87;
  swift_beginAccess();
  *v50 = v47;
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
  v51 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
  swift_beginAccess();
  v52 = *(a1 + v51);
  v53 = v90;
  swift_beginAccess();
  *(v1 + v53) = v52;

  v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status);
  swift_beginAccess();
  v55 = *v54;
  LOBYTE(v54) = *(v54 + 8);
  v56 = v92;
  swift_beginAccess();
  *v56 = v55;
  *(v56 + 8) = v54;
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
  v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
  swift_beginAccess();
  v58 = *v57;
  v59 = v95;
  swift_beginAccess();
  *v59 = v58;
  v60 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
  swift_beginAccess();
  v62 = *v60;
  v61 = v60[1];
  v63 = v96;
  swift_beginAccess();
  *v63 = v62;
  v63[1] = v61;

  v64 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
  swift_beginAccess();
  v66 = *v64;
  v65 = v64[1];
  v67 = v97;
  swift_beginAccess();
  *v67 = v66;
  v67[1] = v65;

  v68 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
  swift_beginAccess();
  v70 = *v68;
  v69 = v68[1];
  v71 = v99;
  swift_beginAccess();
  *v71 = v70;
  v71[1] = v69;

  v72 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
  swift_beginAccess();
  LODWORD(v72) = *(a1 + v72);
  v73 = v100;
  swift_beginAccess();
  *(v1 + v73) = v72;
  v74 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults;
  swift_beginAccess();
  v75 = *(a1 + v74);

  v76 = v102;
  swift_beginAccess();
  *(v1 + v76) = v75;

  return v1;
}

uint64_t sub_1B8E1632C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8E16384()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8E163DC()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

void *sub_1B8E164D0()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__totalVoteInfo, &qword_1EBABB160, &qword_1B9656D10);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__neededVoteInfo, &qword_1EBABB160, &qword_1B9656D10);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__runoffInfo, &qword_1EBABB168, &qword_1B9656D18);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__pollTiming, &qword_1EBABB170, &unk_1B9656D20);

  return v0;
}

uint64_t sub_1B8E16624()
{
  v0 = sub_1B8E164D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Electionspb_ElectionRace.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Electionspb_ElectionRace(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Electionspb_ElectionRace._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E156D8(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B8E16718(v10, a1, a2, a3);
}

uint64_t sub_1B8E16718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8DAA85C(a2, a1);
        break;
      case 2:
        sub_1B8DC46F4(a2, a1);
        break;
      case 3:
        sub_1B8DC4778(a2, a1);
        break;
      case 4:
        sub_1B8E16ACC(a2, a1);
        break;
      case 5:
        sub_1B8E16B50(a2, a1);
        break;
      case 6:
        sub_1B8E16BD4(a2, a1);
        break;
      case 7:
        sub_1B8E16C58(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B8E16CDC(a2, a1);
        break;
      case 9:
        sub_1B8E16D60(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B8E16DE4(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B8E16E68(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B8E16F34(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B8E16FB8(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B8E1703C(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B8E170C0(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B8E17144(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B8E171C8(a2, a1);
        break;
      case 18:
        sub_1B8E1724C(a2, a1, a3, a4);
        break;
      case 19:
      case 20:
        sub_1B8E172D0();
        break;
      case 21:
        sub_1B8E1737C(a2, a1, a3, a4);
        break;
      case 22:
        sub_1B8E1743C(a2, a1, a3, a4);
        break;
      case 23:
        sub_1B8E174D8(a2, a1, a3, a4);
        break;
      case 24:
        sub_1B8E175B4(a2, a1, a3, a4);
        break;
      case 25:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp;
        v12 = MEMORY[0x1E69AAC88];
        goto LABEL_29;
      case 26:
      case 27:
      case 28:
        sub_1B8E17690();
        break;
      case 29:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
        v12 = MEMORY[0x1E69AAC98];
LABEL_29:
        sub_1B8E17700(a2, a1, a3, a4, v11, v12);
        break;
      case 30:
        sub_1B8E17794(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E16ACC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E16B50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E16BD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E16C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E16CDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E16D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8E16DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8E16E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Electionspb_Candidate(0);
  sub_1B8CD1B98(&qword_1EBABB198, type metadata accessor for Electionspb_Candidate, protocol conformance descriptor for Electionspb_Candidate);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E16F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E16FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E1703C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E170C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E17144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E171C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E1724C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E172D0()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Electionspb_VoteInfo(0);
  OUTLINED_FUNCTION_71_1();
  sub_1B8CD1B98(v0, v1, protocol conformance descriptor for Electionspb_VoteInfo);
  OUTLINED_FUNCTION_49_1();
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E1737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  sub_1B964C230();
  sub_1B964C3B0();
  return swift_endAccess();
}

uint64_t sub_1B8E1743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8E1F75C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8E174D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Electionspb_RunOffInfo(0);
  sub_1B8CD1B98(&qword_1EBABB2E0, type metadata accessor for Electionspb_RunOffInfo, protocol conformance descriptor for Electionspb_RunOffInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E175B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Electionspb_PollTiming(0);
  sub_1B8CD1B98(&qword_1EBABB2F8, type metadata accessor for Electionspb_PollTiming, protocol conformance descriptor for Electionspb_PollTiming);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E17690()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_12();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E17700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1B8E17794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Electionspb_PoliticalParty(0);
  sub_1B8CD1B98(&qword_1EBABB1B8, type metadata accessor for Electionspb_PoliticalParty, protocol conformance descriptor for Electionspb_PoliticalParty);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t Electionspb_ElectionRace.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Electionspb_ElectionRace(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B8E178D4(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8E178D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB170, &unk_1B9656D20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = v62 - v9;
  v65 = type metadata accessor for Electionspb_PollTiming(0);
  MEMORY[0x1EEE9AC00](v65);
  v62[1] = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB168, &qword_1B9656D18);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = v62 - v12;
  v67 = type metadata accessor for Electionspb_RunOffInfo(0);
  MEMORY[0x1EEE9AC00](v67);
  v64 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v69 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v62 - v17;
  v72 = type metadata accessor for Electionspb_VoteInfo(0);
  v19 = MEMORY[0x1EEE9AC00](v72);
  v68 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  swift_beginAccess();
  v21 = *(a1 + 24);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v23 = *(a1 + 40);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 56);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v27 = *(a1 + 72);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 88);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 104);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 112) + 16))
  {
    goto LABEL_34;
  }

  sub_1B964C6E0();
  if (v4)
  {
  }

LABEL_34:
  swift_beginAccess();
  v33 = *(a1 + 128);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(a1 + 120) & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 136) || (result = sub_1B964C6C0(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 140) == 0.0 || (result = sub_1B964C6B0(), !v4))
    {
      v62[0] = a4;
      swift_beginAccess();
      if (*(*(a1 + 144) + 16))
      {
        type metadata accessor for Electionspb_Candidate(0);
        sub_1B8CD1B98(&qword_1EBABB198, type metadata accessor for Electionspb_Candidate, protocol conformance descriptor for Electionspb_Candidate);

        v36 = v62[0];
        sub_1B964C730();
        if (v4)
        {
        }
      }

      else
      {
        v36 = v62[0];
      }

      swift_beginAccess();
      if (*(a1 + 152) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 153) != 1 || (result = sub_1B964C670(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 154) != 1 || (result = sub_1B964C670(), !v4))
          {
            swift_beginAccess();
            if (*(a1 + 155) != 1 || (result = sub_1B964C670(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 156) != 1 || (result = sub_1B964C670(), !v4))
              {
                v37 = v36;
                swift_beginAccess();
                v38 = *(a1 + 168);
                v39 = HIBYTE(v38) & 0xF;
                if ((v38 & 0x2000000000000000) == 0)
                {
                  v39 = *(a1 + 160) & 0xFFFFFFFFFFFFLL;
                }

                if (v39)
                {

                  sub_1B964C700();
                  if (v4)
                  {
                  }
                }

                swift_beginAccess();
                if (*(a1 + 176) == 1)
                {
                  result = sub_1B964C670();
                  if (v4)
                  {
                    return result;
                  }

                  v62[0] = v37;
                }

                else
                {
                  v62[0] = v37;
                }

                swift_beginAccess();
                sub_1B8D92024();
                v40 = v72;
                if (__swift_getEnumTagSinglePayload(v18, 1, v72) == 1)
                {
                  sub_1B8D9207C(v18, &qword_1EBABB160, &qword_1B9656D10);
                }

                else
                {
                  sub_1B8E1632C();
                  sub_1B8CD1B98(&qword_1EBABB180, type metadata accessor for Electionspb_VoteInfo, protocol conformance descriptor for Electionspb_VoteInfo);
                  sub_1B964C740();
                  if (v4)
                  {
                    return sub_1B8E163DC();
                  }

                  sub_1B8E163DC();
                }

                swift_beginAccess();
                v41 = v69;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v41, 1, v40) == 1)
                {
                  sub_1B8D9207C(v41, &qword_1EBABB160, &qword_1B9656D10);
                }

                else
                {
                  sub_1B8E1632C();
                  sub_1B8CD1B98(&qword_1EBABB180, type metadata accessor for Electionspb_VoteInfo, protocol conformance descriptor for Electionspb_VoteInfo);
                  sub_1B964C740();
                  if (v4)
                  {
                    return sub_1B8E163DC();
                  }

                  sub_1B8E163DC();
                }

                v42 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
                swift_beginAccess();
                if (*(*(a1 + v42) + 16))
                {
                  sub_1B964C280();
                  sub_1B964C230();

                  sub_1B964C5F0();
                  if (v4)
                  {
                  }
                }

                v43 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status);
                swift_beginAccess();
                if (!*v43 || (v44 = *(v43 + 8), v70 = *v43, v71 = v44, sub_1B8E1F75C(), result = sub_1B964C680(), !v4))
                {
                  swift_beginAccess();
                  v45 = v63;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v45, 1, v67) == 1)
                  {
                    sub_1B8D9207C(v45, &qword_1EBABB168, &qword_1B9656D18);
                  }

                  else
                  {
                    sub_1B8E1632C();
                    sub_1B8CD1B98(&qword_1EBABB2E0, type metadata accessor for Electionspb_RunOffInfo, protocol conformance descriptor for Electionspb_RunOffInfo);
                    sub_1B964C740();
                    if (v4)
                    {
                      return sub_1B8E163DC();
                    }

                    sub_1B8E163DC();
                  }

                  swift_beginAccess();
                  v46 = v66;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v46, 1, v65) == 1)
                  {
                    sub_1B8D9207C(v66, &qword_1EBABB170, &unk_1B9656D20);
                    goto LABEL_91;
                  }

                  sub_1B8E1632C();
                  sub_1B8CD1B98(&qword_1EBABB2F8, type metadata accessor for Electionspb_PollTiming, protocol conformance descriptor for Electionspb_PollTiming);
                  sub_1B964C740();
                  if (!v4)
                  {
                    sub_1B8E163DC();
LABEL_91:
                    v47 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
                    swift_beginAccess();
                    if (*v47 == 0.0 || (result = sub_1B964C6B0(), !v4))
                    {
                      v48 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
                      swift_beginAccess();
                      v49 = *v48;
                      v50 = v48[1];
                      v51 = HIBYTE(v50) & 0xF;
                      if ((v50 & 0x2000000000000000) == 0)
                      {
                        v51 = v49 & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v51 || (, sub_1B964C700(), result = , !v5))
                      {
                        v52 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
                        swift_beginAccess();
                        v53 = *v52;
                        v54 = v52[1];
                        v55 = HIBYTE(v54) & 0xF;
                        if ((v54 & 0x2000000000000000) == 0)
                        {
                          v55 = v53 & 0xFFFFFFFFFFFFLL;
                        }

                        if (!v55 || (, sub_1B964C700(), result = , !v5))
                        {
                          v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
                          swift_beginAccess();
                          v57 = *v56;
                          v58 = v56[1];
                          v59 = HIBYTE(v58) & 0xF;
                          if ((v58 & 0x2000000000000000) == 0)
                          {
                            v59 = v57 & 0xFFFFFFFFFFFFLL;
                          }

                          if (!v59 || (, sub_1B964C700(), result = , !v5))
                          {
                            v60 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
                            swift_beginAccess();
                            if (!*(a1 + v60) || (result = sub_1B964C6C0(), !v5))
                            {
                              v61 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults;
                              result = swift_beginAccess();
                              if (*(*(a1 + v61) + 16))
                              {
                                type metadata accessor for Electionspb_PoliticalParty(0);
                                sub_1B8CD1B98(&qword_1EBABB1B8, type metadata accessor for Electionspb_PoliticalParty, protocol conformance descriptor for Electionspb_PoliticalParty);

                                sub_1B964C730();
                              }
                            }
                          }
                        }
                      }
                    }

                    return result;
                  }

                  return sub_1B8E163DC();
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

uint64_t static Electionspb_ElectionRace.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_11_7();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1B8E18A30(v3, v4);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v6, v7, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8E18A30(uint64_t a1, uint64_t a2)
{
  v159 = type metadata accessor for Electionspb_PollTiming(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v155 = (v6 - v5);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB3B0, &qword_1B9658010);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v162 = &v152 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB170, &unk_1B9656D20);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  v157 = v11;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v12);
  v158 = &v152 - v13;
  v163 = type metadata accessor for Electionspb_RunOffInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v154 = v16 - v15;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB3B8, &qword_1B9658018);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v165 = &v152 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB168, &qword_1B9656D18);
  v20 = OUTLINED_FUNCTION_183(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  v161 = v21;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v22);
  v164 = &v152 - v23;
  v170 = type metadata accessor for Electionspb_VoteInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44_0();
  v166 = v25;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v152 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB188, &unk_1B9656D30);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44_0();
  v169 = v31;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v152 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  v36 = OUTLINED_FUNCTION_183(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44_0();
  v167 = v37;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v38);
  v168 = &v152 - v39;
  OUTLINED_FUNCTION_230();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = (&v152 - v42);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v152 - v44;
  OUTLINED_FUNCTION_521(a1 + 16, v230);
  v46 = *(a1 + 16);
  v47 = *(a1 + 24);
  OUTLINED_FUNCTION_521(a2 + 16, v229);
  v48 = v46 == *(a2 + 16) && v47 == *(a2 + 24);
  if (!v48 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521(a1 + 32, v228);
  v49 = *(a1 + 32);
  v50 = *(a1 + 40);
  OUTLINED_FUNCTION_521(a2 + 32, v227);
  v51 = v49 == *(a2 + 32) && v50 == *(a2 + 40);
  if (!v51 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521(a1 + 48, v226);
  v52 = *(a1 + 48);
  v53 = *(a1 + 56);
  OUTLINED_FUNCTION_521(a2 + 48, v225);
  v54 = v52 == *(a2 + 48) && v53 == *(a2 + 56);
  if (!v54 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521(a1 + 64, &v224);
  v55 = *(a1 + 64);
  v56 = *(a1 + 72);
  OUTLINED_FUNCTION_521(a2 + 64, &v223);
  v57 = v55 == *(a2 + 64) && v56 == *(a2 + 72);
  if (!v57 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521(a1 + 80, &v222);
  v58 = *(a1 + 80);
  v59 = *(a1 + 88);
  OUTLINED_FUNCTION_521(a2 + 80, &v221);
  v60 = v58 == *(a2 + 80) && v59 == *(a2 + 88);
  if (!v60 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521(a1 + 96, &v220);
  v61 = *(a1 + 96);
  v62 = *(a1 + 104);
  OUTLINED_FUNCTION_521(a2 + 96, &v219);
  v63 = v61 == *(a2 + 96) && v62 == *(a2 + 104);
  if (!v63 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521(a1 + 112, &v218);
  v64 = *(a1 + 112);
  OUTLINED_FUNCTION_521(a2 + 112, &v217);
  if ((sub_1B8D6123C(v64, *(a2 + 112)) & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521(a1 + 120, &v216);
  v65 = *(a1 + 120);
  v66 = *(a1 + 128);
  OUTLINED_FUNCTION_521(a2 + 120, &v215);
  v67 = v65 == *(a2 + 120) && v66 == *(a2 + 128);
  if (!v67 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521(a1 + 136, &v214);
  v68 = *(a1 + 136);
  OUTLINED_FUNCTION_521(a2 + 136, &v213);
  if (v68 != *(a2 + 136))
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521(a1 + 140, &v212);
  v69 = *(a1 + 140);
  OUTLINED_FUNCTION_521(a2 + 140, &v211);
  if (v69 != *(a2 + 140))
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521(a1 + 144, &v210);
  v70 = *(a1 + 144);
  OUTLINED_FUNCTION_521(a2 + 144, &v209);
  v71 = *(a2 + 144);

  sub_1B8D7BBCC(v70, v71);
  LODWORD(v153) = v72;

  if ((v153 & 1) == 0)
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521(a1 + 152, &v208);
  v73 = *(a1 + 152);
  OUTLINED_FUNCTION_521(a2 + 152, &v207);
  if (v73 != *(a2 + 152))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521(a1 + 153, &v206);
  v74 = *(a1 + 153);
  OUTLINED_FUNCTION_521(a2 + 153, &v205);
  if (v74 != *(a2 + 153))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521(a1 + 154, &v204);
  v75 = *(a1 + 154);
  OUTLINED_FUNCTION_521(a2 + 154, &v203);
  if (v75 != *(a2 + 154))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521(a1 + 155, &v202);
  v76 = *(a1 + 155);
  OUTLINED_FUNCTION_521(a2 + 155, &v201);
  if (v76 != *(a2 + 155))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521(a1 + 156, &v200);
  v77 = *(a1 + 156);
  OUTLINED_FUNCTION_521(a2 + 156, &v199);
  if (v77 != *(a2 + 156))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521(a1 + 160, &v198);
  v78 = *(a1 + 160);
  v79 = *(a1 + 168);
  OUTLINED_FUNCTION_521(a2 + 160, &v197);
  v80 = v78 == *(a2 + 160) && v79 == *(a2 + 168);
  if (!v80 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521(a1 + 176, &v196);
  v81 = *(a1 + 176);
  OUTLINED_FUNCTION_521(a2 + 176, &v195);
  if (v81 != *(a2 + 176))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__totalVoteInfo, &v194);
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__totalVoteInfo, &v193);
  v82 = *(v29 + 48);
  sub_1B8D92024();
  v153 = v82;
  sub_1B8D92024();
  v83 = v170;
  OUTLINED_FUNCTION_178(v34, 1, v170);
  if (v48)
  {
    sub_1B8D9207C(v45, &qword_1EBABB160, &qword_1B9656D10);
    OUTLINED_FUNCTION_178(&v34[v153], 1, v83);
    if (v48)
    {
      sub_1B8D9207C(v34, &qword_1EBABB160, &qword_1B9656D10);
      goto LABEL_56;
    }

    goto LABEL_71;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v34[v153], 1, v83);
  if (v96)
  {
    sub_1B8D9207C(v45, &qword_1EBABB160, &qword_1B9656D10);
    OUTLINED_FUNCTION_2_9();
    sub_1B8E163DC();
LABEL_71:
    v97 = &qword_1EBABB188;
    v98 = &unk_1B9656D30;
    v99 = v34;
LABEL_89:
    sub_1B8D9207C(v99, v97, v98);
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_1_12();
  sub_1B8E1632C();
  if (*v43 != *v28 || v43[1] != v28[1] || v43[2] != v28[2])
  {
    OUTLINED_FUNCTION_70_2();
    sub_1B8E163DC();
    sub_1B8D9207C(v45, &qword_1EBABB160, &qword_1B9656D10);
    sub_1B8E163DC();
    v99 = OUTLINED_FUNCTION_690();
    v98 = &qword_1B9656D10;
    goto LABEL_89;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v100, v101, MEMORY[0x1E69AAC10]);
  LODWORD(v153) = sub_1B964C850();
  sub_1B8E163DC();
  sub_1B8D9207C(v45, &qword_1EBABB160, &qword_1B9656D10);
  sub_1B8E163DC();
  v102 = OUTLINED_FUNCTION_690();
  sub_1B8D9207C(v102, v103, &qword_1B9656D10);
  if ((v153 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_56:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__neededVoteInfo, &v192);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__neededVoteInfo, &v191);
  v84 = *(v29 + 48);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v85 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v85, v86, v170);
  if (v48)
  {
    sub_1B8D9207C(v168, &qword_1EBABB160, &qword_1B9656D10);
    OUTLINED_FUNCTION_178(v169 + v84, 1, v170);
    if (v48)
    {
      sub_1B8D9207C(v169, &qword_1EBABB160, &qword_1B9656D10);
      goto LABEL_61;
    }

    goto LABEL_81;
  }

  v104 = v169;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v104 + v84, 1, v170);
  if (v105)
  {
    sub_1B8D9207C(v168, &qword_1EBABB160, &qword_1B9656D10);
    OUTLINED_FUNCTION_2_9();
    sub_1B8E163DC();
LABEL_81:
    v97 = &qword_1EBABB188;
    v98 = &unk_1B9656D30;
    v99 = v169;
    goto LABEL_89;
  }

  OUTLINED_FUNCTION_1_12();
  v106 = v166;
  sub_1B8E1632C();
  if (*v167 != *v106 || v167[1] != v166[1] || v167[2] != v166[2])
  {
    OUTLINED_FUNCTION_70_2();
    sub_1B8E163DC();
    v110 = &qword_1EBABB160;
    v111 = &qword_1B9656D10;
    sub_1B8D9207C(v168, &qword_1EBABB160, &qword_1B9656D10);
    sub_1B8E163DC();
    v99 = v169;
LABEL_88:
    v97 = v110;
    v98 = v111;
    goto LABEL_89;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v107, v108, MEMORY[0x1E69AAC10]);
  v109 = sub_1B964C850();
  sub_1B8E163DC();
  OUTLINED_FUNCTION_189(v168);
  sub_1B8E163DC();
  OUTLINED_FUNCTION_189(v169);
  if ((v109 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_61:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags, &v190);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags, &v189);

  sub_1B8DB5418();
  v88 = v87;

  if ((v88 & 1) == 0)
  {
    goto LABEL_90;
  }

  v89 = a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status, &v188);
  v90 = *v89;
  v91 = *(v89 + 8);
  v92 = (a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status, &v187);
  if (!sub_1B8D92198(v90, v91, *v92))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__runoffInfo, &v186);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__runoffInfo, &v185);
  v93 = *(v160 + 48);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v94 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v94, v95, v163);
  if (v48)
  {
    sub_1B8D9207C(v164, &qword_1EBABB168, &qword_1B9656D18);
    OUTLINED_FUNCTION_178(v165 + v93, 1, v163);
    if (v48)
    {
      sub_1B8D9207C(v165, &qword_1EBABB168, &qword_1B9656D18);
      goto LABEL_98;
    }

LABEL_96:
    v97 = &qword_1EBABB3B8;
    v98 = &qword_1B9658018;
    v99 = v165;
    goto LABEL_89;
  }

  v114 = v165;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v114 + v93, 1, v163);
  if (v115)
  {
    sub_1B8D9207C(v164, &qword_1EBABB168, &qword_1B9656D18);
    sub_1B8E163DC();
    goto LABEL_96;
  }

  v116 = v165;
  sub_1B8E1632C();
  v117 = static Electionspb_RunOffInfo.== infix(_:_:)();
  sub_1B8E163DC();
  OUTLINED_FUNCTION_189(v164);
  sub_1B8E163DC();
  OUTLINED_FUNCTION_189(v116);
  if ((v117 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_98:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__pollTiming, &v184);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__pollTiming, &v183);
  v118 = *(v156 + 48);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v119 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v119, v120, v159);
  if (v48)
  {
    sub_1B8D9207C(v158, &qword_1EBABB170, &unk_1B9656D20);
    OUTLINED_FUNCTION_178(v162 + v118, 1, v159);
    if (v48)
    {
      sub_1B8D9207C(v162, &qword_1EBABB170, &unk_1B9656D20);
LABEL_118:
      v129 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
      OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp, &v182);
      v130 = *v129;
      v131 = (a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
      OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp, &v181);
      if (v130 == *v131)
      {
        v132 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
        OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district, &v180);
        v133 = *v132;
        v134 = v132[1];
        v135 = (a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
        OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district, &v179);
        v136 = v133 == *v135 && v134 == v135[1];
        if (v136 || (OUTLINED_FUNCTION_120_0() & 1) != 0)
        {
          v137 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
          OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL, &v178);
          v138 = *v137;
          v139 = v137[1];
          v140 = (a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
          OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL, &v177);
          v141 = v138 == *v140 && v139 == v140[1];
          if (v141 || (OUTLINED_FUNCTION_120_0() & 1) != 0)
          {
            v142 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
            OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL, &v176);
            v143 = *v142;
            v144 = v142[1];
            v145 = (a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
            OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL, &v175);
            v146 = v143 == *v145 && v144 == v145[1];
            if (v146 || (OUTLINED_FUNCTION_120_0() & 1) != 0)
            {
              v147 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
              OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats, &v174);
              LODWORD(v147) = *(a1 + v147);
              v148 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
              OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats, &v173);
              if (v147 == *(a2 + v148))
              {
                OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults, &v172);
                OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults, &v171);

                v149 = OUTLINED_FUNCTION_690();
                sub_1B8D79C8C(v149, v150);
                v112 = v151;

                return v112 & 1;
              }
            }
          }
        }
      }

      goto LABEL_90;
    }

    goto LABEL_106;
  }

  v121 = v162;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v121 + v118, 1, v159);
  if (v122)
  {
    sub_1B8D9207C(v158, &qword_1EBABB170, &unk_1B9656D20);
    sub_1B8E163DC();
LABEL_106:
    v97 = &qword_1EBABB3B0;
    v98 = &qword_1B9658010;
    v99 = v162;
    goto LABEL_89;
  }

  OUTLINED_FUNCTION_8_9();
  v123 = v155;
  sub_1B8E1632C();
  v124 = *v157 == *v123 && v157[1] == v123[1];
  if (!v124 && (sub_1B964C9F0() & 1) == 0 || (v157[2] == v155[2] ? (v125 = v157[3] == v155[3]) : (v125 = 0), !v125 && (sub_1B964C9F0() & 1) == 0))
  {
    sub_1B8E163DC();
    v110 = &qword_1EBABB170;
    v111 = &unk_1B9656D20;
    sub_1B8D9207C(v158, &qword_1EBABB170, &unk_1B9656D20);
    sub_1B8E163DC();
    v99 = v162;
    goto LABEL_88;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v126, v127, MEMORY[0x1E69AAC10]);
  v128 = sub_1B964C850();
  sub_1B8E163DC();
  OUTLINED_FUNCTION_189(v158);
  sub_1B8E163DC();
  OUTLINED_FUNCTION_189(v162);
  if (v128)
  {
    goto LABEL_118;
  }

LABEL_90:

LABEL_91:
  v112 = 0;
  return v112 & 1;
}